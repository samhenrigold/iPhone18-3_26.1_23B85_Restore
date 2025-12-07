uint64_t OUTLINED_FUNCTION_6_0(__int128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time2, uint64_t a7, __int128 time1, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 time2a, uint64_t time2_16, uint64_t a15, uint64_t time1a)
{
  time2a = time1;
  time2_16 = v16;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CFTypeRef a10)
{
  a10 = 0;

  return singletonVolumeController_copyRemoteVolumeController(a1, &a10);
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a12 = 0;

  return remoteXPCRoutingContext_GetObjectID(a1, &a12);
}

BOOL OUTLINED_FUNCTION_6_13(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type, int a19)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_6_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, int a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t routingContext_IsOperationOnSystemInputContextAllowedInternal(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (routingContext_IsOperationOnSystemInputContextAllowedInternal_onceToken != -1)
  {
    routingContext_IsOperationOnSystemInputContextAllowedInternal_cold_1();
  }

  CMBaseObjectGetDerivedStorage();
  result = FigCFEqual();
  if (!a2 && result)
  {
    goto LABEL_8;
  }

  if (!result)
  {
    return result;
  }

  if (MX_FeatureFlags_IsSystemInputPickerEnabled(result, v4))
  {
    return 0;
  }

LABEL_8:
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 4294954314;
}

const void *_routingContextUtilities_getLeaderWeakRef(uint64_t a1)
{
  if (!a1 || CFArrayGetCount(*(a1 + 80)) < 1)
  {
    return 0;
  }

  v2 = *(a1 + 80);

  return CFArrayGetValueAtIndex(v2, 0);
}

uint64_t FigRoutingManagerContextUtilities_CopyPickedEndpoints(uint64_t a1, uint64_t a2)
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
    v9[2] = __FigRoutingManagerContextUtilities_CopyPickedEndpoints_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyPickedEndpoints", "FigRoutingManagerContextUtilities.m", 2814, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B17B88AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _routingContextUtilities_copyPickedEndpoints(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  if (*a1 == 10)
  {
    _routingContextUtilities_pruneLeaders(*(a1 + 80));
    v4 = *(a1 + 80);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
          ContextFromWeakRef = _routingContextUtilities_getContextFromWeakRef(ValueAtIndex);
          if (ContextFromWeakRef)
          {
            v10 = *(ContextFromWeakRef + 9);
            if (v10)
            {
              break;
            }
          }

          if (v6 == ++v7)
          {
            return;
          }
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!_routingContextUtilities_getLeaderWeakRef(a1))
    {
      v10 = *(a1 + 72);
      if (!v10)
      {
LABEL_16:
        *a2 = v10;
        return;
      }

LABEL_15:
      v10 = CFRetain(v10);
      goto LABEL_16;
    }

    LeaderWeakRef = _routingContextUtilities_getLeaderWeakRef(a1);
    if (!LeaderWeakRef)
    {
      return;
    }

    v12 = _routingContextUtilities_getContextFromWeakRef(LeaderWeakRef);
    if (v12)
    {
      v10 = *(v12 + 9);
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    _routingContextUtilities_removeLeader(a1);
  }
}

uint64_t volumeControllerRemote_CanUseForRoutingContext()
{
  OUTLINED_FUNCTION_0_13();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, value, v36, xdict) || (OUTLINED_FUNCTION_8(), v5 = FigXPCCreateBasicMessage(), v5) || OUTLINED_FUNCTION_31(v5, v6, v7, v8, v9, v10, v11, v12, valuea))
    {
      OUTLINED_FUNCTION_21();
    }

    else
    {
      xpc_dictionary_set_uint64(xdicta, kFigVolumeControllerXPCMsgParam_RoutingContext, valueb);
      v13 = OUTLINED_FUNCTION_11_2();
      v21 = OUTLINED_FUNCTION_22(v13, v14, v15, v16, v17, v18, v19, v20, valueb, v37);
      if (!v0)
      {
        v22 = xpc_dictionary_get_BOOL(v21, kFigVolumeControllerXPCMsgParam_CanUseForRoutingContext);
        OUTLINED_FUNCTION_32(v22, v23, v24, v25, v26, v27, v28, v29, valuec, v38);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29(*(v1 + 3512), v30, "volumeControllerRemote_CanUseForRoutingContext");
  return v0;
}

uint64_t FigRoutingContextXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    return remoteXPCRoutingContext_GetObjectID(a1, a2);
  }

  else
  {
    return 4294955276;
  }
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_10(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

CFDictionaryRef OUTLINED_FUNCTION_1_12(uint64_t a1, const void **a2, const void **a3, uint64_t a4, const CFDictionaryKeyCallBacks *a5, const CFDictionaryValueCallBacks *a6)
{

  return CFDictionaryCreate(v6, a2, a3, 10, a5, a6);
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  v11 = *(*(a1 + 40) + 8);

  return FigRoutingManagerCopyPickedEndpointForRoutingContext(v11, &a10);
}

CFTypeRef OUTLINED_FUNCTION_1_17(CFTypeRef cf)
{

  return CFRetain(cf);
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return [v17 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_1_22(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteSystemController_getObjectID(a1, &a10);
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, int a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t volumeControllerServer_handleCanUseForRoutingContextMessage()
{
  OUTLINED_FUNCTION_5_4();
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    v5 = v2;
  }

  else if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v3 = OUTLINED_FUNCTION_14_3();
    v5 = v4(v3);
    if (!v5)
    {
      OUTLINED_FUNCTION_15_3(kFigVolumeControllerXPCMsgParam_CanUseForRoutingContext, 0);
    }
  }

  else
  {
    v5 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t volumeController_AreVolumeOperationsSupportedForRoutingContext(uint64_t a1, uint64_t a2, Boolean *a3)
{
  result = 4294949706;
  if (a2 && a3)
  {
    key = 0;
    FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &key);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v6 = CFDictionaryContainsKey(*(DerivedStorage + 16), key);
    FigSimpleMutexUnlock();
    *a3 = v6;
    if (key)
    {
      CFRelease(key);
    }

    return 0;
  }

  return result;
}

uint64_t vaeIsPortBluetoothShareable(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"usswbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      outData = 0;
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

uint64_t singletonVolumeController_GetMasterVolumeControlTypeOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(OUTLINED_FUNCTION_38(v5, v6, v7, v8, v9, v10, v11, v12, v17, cf) + 16) + 48))
    {
      v15 = 4294954514;
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_17_0();
    v5 = v14(v13);
  }

  v15 = v5;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t volumeControllerRemote_GetMasterVolumeControlTypeOfRoutingContext()
{
  OUTLINED_FUNCTION_0_13();
  if (v4)
  {
    v5 = v2;
    if (v2)
    {
      if (OUTLINED_FUNCTION_10_2(v3, value, v28, xdict) || (OUTLINED_FUNCTION_8(), v6 = FigXPCCreateBasicMessage(), v6) || OUTLINED_FUNCTION_31(v6, v7, v8, v9, v10, v11, v12, v13, valuea))
      {
        OUTLINED_FUNCTION_21();
      }

      else
      {
        xpc_dictionary_set_uint64(xdicta, kFigVolumeControllerXPCMsgParam_RoutingContext, valueb);
        v14 = OUTLINED_FUNCTION_11_2();
        v22 = OUTLINED_FUNCTION_22(v14, v15, v16, v17, v18, v19, v20, v21, valueb, v29);
        if (!v0)
        {
          *v5 = xpc_dictionary_get_uint64(v22, kFigVolumeControllerXPCMsgParam_GetMasterVolumeControlType);
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29(*(v1 + 3512), v23, "volumeControllerRemote_GetMasterVolumeControlTypeOfRoutingContext");
  return v0;
}

uint64_t volumeControllerServer_handleGetMasterVolumeControlTypeMessage()
{
  OUTLINED_FUNCTION_5_4();
  cf = 0;
  value = 0;
  uint64 = xpc_dictionary_get_uint64(v1, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v3 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v3)
  {
    v6 = v3;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 48))
  {
    v4 = OUTLINED_FUNCTION_14_3();
    v6 = v5(v4);
    if (!v6)
    {
      xpc_dictionary_set_uint64(v0, kFigVolumeControllerXPCMsgParam_GetMasterVolumeControlType, value);
    }
  }

  else
  {
    v6 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t routingContextResilientRemote_CopySelectedRouteDescriptors(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CopySelectedRouteDescriptors_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_cold_1();
  }

  return MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_relativeVoiceOverVolumeEnabled;
}

uint64_t HandleNoReplySystemControllerMessage(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v15 = 0;
  v14 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v12 = OpCode;
    goto LABEL_18;
  }

  uint64 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v7 = LookupSystemControllerByObjectIDForConnection(a1, uint64, &v14);
  if (v7)
  {
    v12 = v7;
    v8 = v14;
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = v14;
  if (v15 != 1634952564)
  {
    v12 = 4294951138;
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  cf = 0;
  v17 = 0;
  v9 = FigXPCMessageCopyCFString();
  if (v9)
  {
    goto LABEL_8;
  }

  v9 = FigXPCMessageCopyCFObject();
  if (v9)
  {
    goto LABEL_8;
  }

  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v10 = OUTLINED_FUNCTION_2_3();
    v9 = v11(v10);
LABEL_8:
    v12 = v9;
    goto LABEL_12;
  }

  v12 = 4294954514;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v8)
  {
LABEL_17:
    CFRelease(v8);
  }

LABEL_18:
  objc_autoreleasePoolPop(v4);
  return v12;
}

uint64_t singletonVolumeController_CanUseForRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(OUTLINED_FUNCTION_38(v5, v6, v7, v8, v9, v10, v11, v12, v17, cf) + 16) + 8))
    {
      v15 = 4294954514;
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_17_0();
    v5 = v14(v13);
  }

  v15 = v5;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return CMBaseObjectGetVTable();
}

const void *singletonVolumeController_copyRemoteRoutingContext(const void *a1)
{
  BOOLean = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2 && (v2(a1, 0x1F289A1F0, *MEMORY[0x1E695E480], &BOOLean), BOOLean) && CFBooleanGetValue(BOOLean))
  {
    v3 = FigRoutingContextResilientRemoteCopyRemoteContext(a1);
  }

  else
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    v3 = CFRetain(a1);
  }

  a1 = v3;
LABEL_8:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return a1;
}

CFTypeRef FigRoutingContextResilientRemoteCopyRemoteContext(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

void OUTLINED_FUNCTION_19_2(const void *a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, char *a12)
{

  routingSessionManager_updateCurrentSession(a1, a2, a3, a4, a5, 0, 0, 0, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

void OUTLINED_FUNCTION_23_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t value)
{
  v17 = *v15;

  xpc_dictionary_set_uint64(v14, v17, value);
}

uint64_t systemController_SetProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(gFigSystemControllerSetPropertyMapping, a2);
  if (Value)
  {
    v7 = Value;
    v8 = *DerivedStorage;

    return [v8 setAttributeForKey:v7 andValue:a3];
  }

  else if (FigCFEqual())
  {

    return HDMILatencyMgr_UpdateMeasuredHDMILatency(a3);
  }

  else
  {
    return 4294954512;
  }
}

uint64_t singletonVolumeController_CanSetMasterVolumeOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(OUTLINED_FUNCTION_38(v5, v6, v7, v8, v9, v10, v11, v12, v17, cf) + 16) + 40))
    {
      v15 = 4294954514;
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_17_0();
    v5 = v14(v13);
  }

  v15 = v5;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t remoteSystemController_SetProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
    goto LABEL_10;
  }

  if (remoteSystemController_getObjectID(a1, &v5))
  {
LABEL_10:
    OUTLINED_FUNCTION_10_8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_14();
  v3 = FigXPCCreateBasicMessage();
  if (v3 || (v3 = FigXPCMessageSetCFString(), v3) || (OUTLINED_FUNCTION_16_5(v6), v3 = FigXPCMessageSetCFObject(), v3))
  {
    v2 = v3;
  }

  else
  {
    FigXPCRemoteClientSendAsyncMessage();
    OUTLINED_FUNCTION_15_8();
  }

LABEL_7:
  FigXPCRelease();
  return v2;
}

void OUTLINED_FUNCTION_25_0(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{

  xpc_dictionary_set_double(v13, a2, *&a13);
}

NSString *CMSMUtility_CopyCurrentlyActiveCategory()
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
      for (i = 0; i != v1; i = (i + 1))
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if (objc_msgSend_isActive(v4) && !-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v4 audioCategory]))
        {
          v1 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory];
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

uint64_t CMSMVAUtility_GetVADModeFromFigModeName(uint64_t a1)
{
  v1 = 1768776806;
  if (a1 && [+[MXSessionManager figModeTypeToVADModeType] sharedInstance]
  {
    v3 = -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager figModeTypeToVADModeType], "objectForKey:", a1);
    if (v3)
    {
      return v3;
    }

    else
    {
      return 1768776806;
    }
  }

  return v1;
}

__CFDictionary *CMSMVAUtility_CreateRouteConfigurationDictionary(int a1, int a2, const void *a3, const void *a4, int a5)
{
  v19 = a2;
  valuePtr = a1;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = Mutable;
  if (a1)
  {
    Mutable = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
    v14 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(v13, @"category", Mutable);
    }

    if (a2)
    {
      Mutable = CFNumberCreate(v10, kCFNumberSInt32Type, &v19);
      if (Mutable)
      {
        v15 = Mutable;
        CFDictionarySetValue(v13, @"mode", Mutable);
        CFRelease(v15);
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (a3)
  {
    CFDictionarySetValue(v13, @"initiation context", a3);
  }

  if (a4)
  {
    CFDictionarySetValue(v13, @"allowed port types", a4);
  }

  IsAirPodsStudioVoiceMicEnabled = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(Mutable, v12);
  if (a5 && IsAirPodsStudioVoiceMicEnabled)
  {
    CFDictionarySetValue(v13, @"studio mic input", *MEMORY[0x1E695E4D0]);
  }

  if (CFDictionaryGetCount(v13))
  {
    v17 = 1;
  }

  else
  {
    v17 = v13 == 0;
  }

  if (!v17)
  {
    CFRelease(v13);
    return 0;
  }

  return v13;
}

uint64_t vaemShouldIncludePortTypeForRouteConfiguration(int a1, int a2, const void *a3, int a4, AudioObjectPropertyElement a5)
{
  *&inAddress.mSelector = 0x676C6F6270727370;
  inAddress.mElement = a5;
  outData = 0;
  ioDataSize = 4;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, 0, a3, a4);
  AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  return outData;
}

uint64_t MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_sIsAirPodsStudioVoiceMicEnabled;
}

CFMutableArrayRef cmsmCopyPickableRoutesForRouteConfiguration(NSDictionary *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  Mutable = 0;
  v152 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      v10 = a1;
      if ([a4 count])
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      v132 = a3;
      if (a3)
      {
        v13 = [v12 initWithFormat:@"%lu", objc_msgSend(objc_msgSend(a3, "description"), "hash")];
      }

      else
      {
        v13 = [v12 initWithUTF8String:"null"];
      }

      v14 = v13;
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v11)
      {
        v16 = [v15 initWithFormat:@"%lu", objc_msgSend(objc_msgSend(v11, "description"), "hash")];
      }

      else
      {
        v16 = [v15 initWithUTF8String:"null"];
      }

      v17 = v16;
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = [v18 initWithFormat:@"%@~%@~%@~%@~%@", v10, v6, v14, v17, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", a5)];
      -[NSRecursiveLock lock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "lock");
      if ([(NSMutableDictionary *)[+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions] count]
      {
        Mutable = -[NSMutableDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions], "objectForKey:", v19);
      }

      else
      {
        Mutable = 0;
      }

      -[NSRecursiveLock unlock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "unlock");
      if (Mutable)
      {
LABEL_16:

        return Mutable;
      }

      v120 = v19;
      v143 = 0;
      cmsmCopyVADPickedRouteDescriptionForRouteConfiguration(v10, v6, v132, v11, a5, &v143);
      v21 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v22 = v143;
      v23 = cmsmCopyWirelessPortsArrayForRouteConfiguration(v10, v6, v11, a5);
      theArray = 0;
      if (v23)
      {
        v24 = v23;
        if (CFArrayGetCount(v23))
        {
          theArray = cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(v10, v24, 1, v22);
        }

        else
        {
          theArray = 0;
        }

        CFRelease(v24);
      }

      v121 = v14;
      VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v10);
      VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v6);
      key = vaemShouldIncludePortTypeForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v11, 0, 0x70617061u);
      v134 = VADCategoryFromFigCategoryName;
      v133 = VADModeFromFigModeName;
      ShouldIncludePortTypeForRouteConfiguration = vaemShouldIncludePortTypeForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v11, 0, 0x70617073u);
      v28 = +[MXEndpointDescriptorCache sharedInstance];
      v29 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", [(MXEndpointDescriptorCache *)v28 getEndpointManagerForType:*MEMORY[0x1E69618D0]]];
      obj = Mutable;
      v126 = v6;
      v127 = v10;
      v125 = v11;
      v124 = a5;
      allocator = v21;
      v122 = v17;
      if (v29)
      {
        v30 = v29;
        Count = CFArrayGetCount(v29);
        if (theArray)
        {
          MutableCopy = CFArrayCreateMutableCopy(0, 0, theArray);
        }

        else
        {
          MutableCopy = CFArrayCreateMutable(v21, 0, MEMORY[0x1E695E9C0]);
        }

        v33 = MutableCopy;
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v30, i);
            if (!FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(ValueAtIndex))
            {
              SupportedFeatures = FigEndpointGetSupportedFeatures();
              if ((SupportedFeatures & 2) != 0 && key)
              {
                cmsmCreateAndInsertAirPlayRouteDescription(ValueAtIndex, 0x1F2897C90, v33);
              }

              if ((SupportedFeatures & 1) != 0 && ShouldIncludePortTypeForRouteConfiguration)
              {
                FigRoutingManagerGetMirroringModeFromEndpoint(ValueAtIndex);
                if (FigCFEqual())
                {
                  v37 = 0x1F288FA70;
                }

                else
                {
                  v37 = 0x1F2897CB0;
                }

                cmsmCreateAndInsertAirPlayRouteDescription(ValueAtIndex, v37, v33);
              }
            }
          }
        }

        v21 = allocator;
        v38 = CFArrayCreateMutableCopy(allocator, 0, v33);
        if (v33)
        {
          CFRelease(v33);
        }

        v123 = v38;
        CFRelease(v30);
        v6 = v126;
        v10 = v127;
        v11 = v125;
      }

      else
      {
        v123 = 0;
      }

      v39 = v134;
      v40 = MEMORY[0x1E695E9C0];
      v131 = CFArrayCreateMutable(v21, 0, MEMORY[0x1E695E9C0]);
      v135 = CFArrayCreateMutable(v21, 0, v40);
      keya = vaemShouldIncludePortTypeForRouteConfiguration(v39, v133, v11, a5, 0x70687062u);
      v41 = vaemShouldIncludePortTypeForRouteConfiguration(v39, v133, v11, a5, 0x70687042u);
      v42 = vaemShouldIncludePortTypeForRouteConfiguration(v39, v133, v11, a5, 0x706C656Fu);
      v43 = +[MXEndpointDescriptorCache sharedInstance];
      v44 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", [(MXEndpointDescriptorCache *)v43 getEndpointManagerForType:*MEMORY[0x1E69618D8]]];
      if (v44)
      {
        v45 = v44;
        if (keya || v41 || v42)
        {
          v46 = CFArrayGetCount(v44);
          if (v46 >= 1)
          {
            v47 = v46;
            v48 = 0;
            v49 = *MEMORY[0x1E6962130];
            v50 = *MEMORY[0x1E69620F8];
            do
            {
              v51 = CFArrayGetValueAtIndex(v45, v48);
              cf[0] = 0;
              CMBaseObject = FigEndpointGetCMBaseObject();
              v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v53)
              {
                v53(CMBaseObject, v49, v21, cf);
              }

              if (FigCFEqual())
              {
                NonConnectedBTRouteDescription = cmsmCreateNonConnectedBTRouteDescription(v51);
                if (NonConnectedBTRouteDescription)
                {
                  v55 = NonConnectedBTRouteDescription;
                  CFArrayAppendValue(v135, NonConnectedBTRouteDescription);
                  *&v149[0] = 0;
                  v56 = FigEndpointGetCMBaseObject();
                  v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v57)
                  {
                    v57(v56, v50, v21, v149);
                  }

                  if (*&v149[0])
                  {
                    CFRelease(*&v149[0]);
                  }

                  CFRelease(v55);
                }
              }

              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              ++v48;
            }

            while (v47 != v48);
          }
        }

        CFRelease(v45);
        Mutable = obj;
        v6 = v126;
        v10 = v127;
        v11 = v125;
        LODWORD(a5) = v124;
      }

      v58 = v131;
      v59 = v135;
      if (v135 && CFArrayGetCount(v135))
      {
        v153.length = CFArrayGetCount(v135);
        v153.location = 0;
        CFArrayAppendArray(v131, v135, v153);
      }

      v60 = v132;
      v61 = v123;
      if (v123 && CFArrayGetCount(v123))
      {
        v154.length = CFArrayGetCount(v123);
        v154.location = 0;
        CFArrayAppendArray(v131, v123, v154);
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if ((UpTimeNanoseconds - cmsmLogBluetoothDetails_availableRoutesLastLoggedTimestamp) >= 0x2540BE400)
      {
        v119 = UpTimeNanoseconds;
        if (v131)
        {
          v64 = CFArrayGetCount(v131);
          if (v64 >= 1)
          {
            v65 = v64;
            v66 = 0;
            v67 = *MEMORY[0x1E695E4D0];
            v129 = v64;
            do
            {
              v68 = CFArrayGetValueAtIndex(v58, v66);
              if (CFDictionaryGetValue(v68, @"IsBTRoute") == v67)
              {
                Value = CFDictionaryGetValue(v68, @"RouteName");
                v70 = CFDictionaryGetValue(v68, @"RouteUID");
                v71 = CFDictionaryGetValue(v68, @"BTDetails_ProductID");
                CFDictionaryGetValue(v68, @"BTDetails_IsHFPRoute");
                if (dword_1EB75DE40)
                {
                  inAddress.mSelector = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  mSelector = inAddress.mSelector;
                  v74 = type[0];
                  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
                  {
                    v75 = mSelector;
                  }

                  else
                  {
                    v75 = mSelector & 0xFFFFFFFE;
                  }

                  if (v75)
                  {
                    v76 = FigCFEqual();
                    LODWORD(v149[0]) = 136316163;
                    *(v149 + 4) = "cmsmLogBluetoothDetails";
                    WORD6(v149[0]) = 2113;
                    *(v149 + 14) = Value;
                    WORD3(v149[1]) = 2113;
                    *(&v149[1] + 1) = v70;
                    LOWORD(v150) = 2114;
                    *(&v150 + 2) = v71;
                    WORD5(v150) = 1024;
                    HIDWORD(v150) = v76;
                    LODWORD(v118) = 48;
                    _os_log_send_and_compose_impl(v75, 0, cf, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v74, "-CMSVARouting- %s: Bluetooth endpoint has route routeName=%{private}@, routeUID=%{private}@, modelID=%{public}@, isHFPRoute=%{BOOL}u ", v149, v118);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v21 = allocator;
                  v58 = v131;
                  v65 = v129;
                }
              }

              ++v66;
            }

            while (v65 != v66);
          }
        }

        cmsmLogBluetoothDetails_availableRoutesLastLoggedTimestamp = v119;
        Mutable = obj;
        v6 = v126;
        v10 = v127;
        v11 = v125;
        LODWORD(a5) = v124;
        v60 = v132;
        v61 = v123;
        v59 = v135;
      }

      v77 = theArray;
      if (theArray)
      {
        CFRelease(theArray);
        if (!v61)
        {
LABEL_85:
          if (!v59)
          {
            goto LABEL_86;
          }

          goto LABEL_90;
        }
      }

      else if (!v61)
      {
        goto LABEL_85;
      }

      CFRelease(v61);
      if (!v59)
      {
LABEL_86:
        if (!v58)
        {
          goto LABEL_95;
        }

LABEL_91:
        if (CFArrayGetCount(v58) && CFArrayGetCount(v58))
        {
          v155.length = CFArrayGetCount(v58);
          v155.location = 0;
          CFArrayAppendArray(Mutable, v58, v155);
        }

        CFRelease(v58);
LABEL_95:
        if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(v77, v63))
        {
          IsPersistentRouteActive = vaemIsPersistentRouteActive();
          if (!IsPersistentRouteActive)
          {
            v80 = v143;
            IsQuiesceableWiredConnectionEnabled = MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(IsPersistentRouteActive, v79);
            if (IsQuiesceableWiredConnectionEnabled)
            {
              v84 = cmsmCopyPickableQuiesceableWiredPortsForRouteConfiguration(IsQuiesceableWiredConnectionEnabled, v82);
              if ([v84 count])
              {
                RouteDescriptionArrayFromPortIDsForRouteConfiguration = cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(v10, v84, 1, v80);
              }

              else
              {
                RouteDescriptionArrayFromPortIDsForRouteConfiguration = 0;
              }

              if (![(__CFArray *)RouteDescriptionArrayFromPortIDsForRouteConfiguration count])
              {

                RouteDescriptionArrayFromPortIDsForRouteConfiguration = 0;
              }
            }

            else
            {
              RouteDescriptionArrayFromPortIDsForRouteConfiguration = 0;
            }

            if ([(__CFArray *)RouteDescriptionArrayFromPortIDsForRouteConfiguration count])
            {
              v156.length = [(__CFArray *)RouteDescriptionArrayFromPortIDsForRouteConfiguration count];
              v156.location = 0;
              CFArrayAppendArray(Mutable, RouteDescriptionArrayFromPortIDsForRouteConfiguration, v156);
            }
          }
        }

        if (!FigCFEqual() && !FigCFEqual() || !FigCFEqual())
        {
          goto LABEL_116;
        }

        *type = 0;
        ioDataSize = 8;
        *&inAddress.mSelector = *"strpptuo";
        inAddress.mElement = 0;
        if (!AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 0, 0, &ioDataSize, type) && *type)
        {
          v108 = CFGetTypeID(*type);
          if (v108 == CFArrayGetTypeID())
          {
            v109 = v60;
            v110 = objc_alloc_init(MEMORY[0x1E695DF70]);
            memset(v149, 0, sizeof(v149));
            v150 = 0u;
            v151 = 0u;
            v111 = *type;
            v112 = [*type countByEnumeratingWithState:v149 objects:cf count:16];
            if (v112)
            {
              v113 = v112;
              v114 = **&v149[1];
              do
              {
                for (j = 0; j != v113; ++j)
                {
                  if (**&v149[1] != v114)
                  {
                    objc_enumerationMutation(v111);
                  }

                  v116 = *(*(&v149[0] + 1) + 8 * j);
                  v117 = [v116 unsignedIntValue];
                  if (vaeGetPortTypeFromPortID(v117) == 1885892706 && !vaeIsAvailableForVoicePrompts(v117) && vaeGetVADEndpointTypeForPort(v117) == 1701869160)
                  {
                    [v110 addObject:v116];
                  }
                }

                v113 = [v111 countByEnumeratingWithState:v149 objects:cf count:16];
              }

              while (v113);
            }

            v60 = v109;
            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            v10 = v127;
            v85 = cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(v127, v110, 1, 0);
            v11 = v125;
            v6 = v126;
            LODWORD(a5) = v124;
            if (v110)
            {
              CFRelease(v110);
            }

            goto LABEL_114;
          }

          if (*type)
          {
            CFRelease(*type);
            *type = 0;
          }
        }

        v85 = CFArrayCreateMutable(v21, 0, MEMORY[0x1E695E9C0]);
LABEL_114:
        v157.length = CFArrayGetCount(v85);
        v157.location = 0;
        CFArrayAppendArray(Mutable, v85, v157);
        if (v85)
        {
          CFRelease(v85);
        }

LABEL_116:
        v86 = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v10);
        v87 = CMSMVAUtility_GetVADModeFromFigModeName(v6);
        v88 = CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration(0, v86, v87, v60, v11, a5);
        CFArrayAppendValue(Mutable, v88);
        LODWORD(cf[0]) = 0;
        FigCFDictionaryGetInt32IfPresent();
        v89 = cf[0];
        v90 = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v10);
        v91 = CMSMVAUtility_GetVADModeFromFigModeName(v6);
        v92 = cmsmCopyBuiltinPortsListForRouteConfigurationScopeAndDevice(v90, v91, v11);
        if ([v92 count] <= 1)
        {

          v17 = v122;
        }

        else
        {
          v93 = 1;
          if ([objc_msgSend(v92 objectAtIndex:{1), "unsignedIntValue"}] == v89)
          {
            v94 = 0;
          }

          else
          {
            v93 = [v92 count] - 1;
            v94 = 1;
          }

          v17 = v122;
          v95 = cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(v10, [v92 subarrayWithRange:{v94, v93}], 0, 0);

          if (v95)
          {
            if (CFArrayGetCount(v95))
            {
              v158.length = CFArrayGetCount(v95);
              v158.location = 0;
              CFArrayAppendArray(Mutable, v95, v158);
            }

            CFRelease(v95);
          }
        }

        if (CFArrayGetCount(Mutable) < 1)
        {
LABEL_129:
          v99 = 1;
        }

        else
        {
          v97 = 0;
          while (1)
          {
            v98 = CFArrayGetValueAtIndex(Mutable, v97);
            if (cmsmRouteDescriptionEqual(v143, v98))
            {
              break;
            }

            if (++v97 >= CFArrayGetCount(Mutable))
            {
              goto LABEL_129;
            }
          }

          CFDictionarySetValue(v98, @"RouteCurrentlyPicked", *MEMORY[0x1E695E4D0]);
          v99 = 0;
        }

        v100 = v143;
        if (v143)
        {
          CFRelease(v143);
          v143 = 0;
        }

        if (v99)
        {
          CFDictionarySetValue(v88, @"RouteCurrentlyPicked", *MEMORY[0x1E695E4D0]);
        }

        if (v88)
        {
          CFRelease(v88);
        }

        v101 = 0x1ED6D2000;
        if (Mutable)
        {
          if (vaemIsContinuityScreenOutputPortPresentInConnectedOutputPorts(v100, v96))
          {
            v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v139 = 0u;
            v140 = 0u;
            v141 = 0u;
            v142 = 0u;
            v103 = [(__CFArray *)Mutable countByEnumeratingWithState:&v139 objects:v147 count:16];
            if (v103)
            {
              v104 = v103;
              v105 = *v140;
              do
              {
                for (k = 0; k != v104; ++k)
                {
                  if (*v140 != v105)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v107 = [*(*(&v139 + 1) + 8 * k) mutableCopy];
                  if (vaeGetPortTypeFromPortID([objc_msgSend(v107 objectForKey:{@"PortNumber", "unsignedIntValue"}]) == 1885565807)
                  {
                    [v107 setObject:@"Speaker" forKey:@"RouteName"];
                    [v107 setObject:@"Speaker" forKey:@"RouteUID"];
                  }

                  [v102 addObject:v107];
                }

                v104 = [(__CFArray *)obj countByEnumeratingWithState:&v139 objects:v147 count:16];
              }

              while (v104);
            }

            Mutable = [v102 copy];
            v17 = v122;
            v101 = 0x1ED6D2000uLL;
          }

          [objc_msgSend(objc_msgSend((v101 + 2272) "sharedInstance")];
          v19 = v120;
          [objc_msgSend(objc_msgSend((v101 + 2272) "sharedInstance")];
          [objc_msgSend(objc_msgSend((v101 + 2272) "sharedInstance")];
          v14 = v121;
        }

        else
        {
          v19 = v120;
          v14 = v121;
        }

        goto LABEL_16;
      }

LABEL_90:
      CFRelease(v59);
      if (!v58)
      {
        goto LABEL_95;
      }

      goto LABEL_91;
    }
  }

  return Mutable;
}

__CFArray *vaemCopyAvailableEndpointsForRouteConfiguration(NSDictionary *a1, NSString *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a1;
  if (!a1)
  {
    v9 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_15:
    v8 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioMode];
    goto LABEL_3;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v10 = cmsmCopyPickableRoutesForRouteConfiguration(v9, v8, a3, a4, a5);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"PortNumber");
        if (Value)
        {
          CFArrayAppendValue(Mutable, Value);
        }
      }
    }
  }

  v17 = vaemCopyEndpointsForListOfPorts(Mutable, 1);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v17;
}

const __CFArray *__discoveryManager_iOSAppendAvailableEndpoints_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = *MEMORY[0x1E695E4D0];
  v53 = *MEMORY[0x1E69618B8];
  allocator = *MEMORY[0x1E695E480];
  v55 = *MEMORY[0x1E69618F8];
  v51 = *MEMORY[0x1E69618A8];
  v50 = *MEMORY[0x1E6961FB8];
  v54 = *MEMORY[0x1E695E4D0] != 0;
  v49 = *MEMORY[0x1E69620F8];
  v48 = *MEMORY[0x1E6962130];
  v52 = *MEMORY[0x1E695E4C0];
  v47 = 1;
  while (1)
  {
    result = *(*(a1 + 32) + 240);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (v2 >= result)
    {
      return result;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 240), v2);
    Value = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey");
    if (*(a1 + 40) == v3)
    {
      v60[0] = 0;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, v53, allocator, v60);
      }

      v9 = !FigCFEqual() && !FigCFEqual();
      if (v60[0])
      {
        CFRelease(v60[0]);
      }

      if (v9)
      {
        goto LABEL_35;
      }
    }

    v10 = *(a1 + 56);
    v11 = *(a1 + 60);
    v60[0] = 0;
    v12 = FigEndpointManagerGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, v53, allocator, v60);
    }

    if (FigCFEqual() || FigCFEqual())
    {
      v14 = v11 == 6;
LABEL_19:
      v15 = !v14;
      goto LABEL_22;
    }

    if (!FigCFEqual() || (v15 = 1, v47) && v11 != 8)
    {
      if (!FigCFEqual())
      {
        v45 = FigCFEqual();
        v14 = v11 != 8 || v45 == 0;
        goto LABEL_19;
      }

      if (v11 <= 8 && ((1 << v11) & 0x121) != 0)
      {
        v15 = 0;
      }

      else
      {
        v59 = v3;
        v46 = *(*(CMBaseObjectGetVTable() + 24) + 24);
        if (v46)
        {
          v46(Value, 0x1F289BAF0, allocator, v10, 0, &v59);
        }

        v15 = 0;
        v47 = v59 == v3;
      }
    }

LABEL_22:
    if (v60[0])
    {
      CFRelease(v60[0]);
    }

    if ((v15 & 1) == 0)
    {
      if (ValueAtIndex && (v16 = *(a1 + 56), v17 = *(a1 + 60), (v18 = discoveryManager_mapDiscovererTypeToEndpointFeatures(v17)) != 0) && ((v19 = v18, v17 != 8) ? (v20 = v51) : (v20 = 0x1F289BB30), CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_SupportedEndpointFeaturesKey"), (FigCFNumberGetUInt64() & v19) != 0))
      {
        v21 = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey");
        v59 = 0;
        if (v21)
        {
          v22 = FigEndpointManagerGetCMBaseObject();
          v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v23)
          {
            v23(v22, v53, allocator, &v59);
          }
        }

        v58 = 0;
        if (FigCFEqual())
        {
          v24 = *(*(CMBaseObjectGetVTable() + 24) + 24);
          if (v24)
          {
            v24(v21, v20, allocator, v16, 0, &v58);
          }
        }

        else
        {
          v58 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", v21];
        }

        Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        if (v58)
        {
          Count = CFArrayGetCount(v58);
          if (Count >= 1)
          {
            v27 = Count;
            for (i = 0; v27 != i; ++i)
            {
              v29 = CFArrayGetValueAtIndex(v58, i);
              if (!v29)
              {
                continue;
              }

              v30 = v29;
              if ((FigEndpointGetSupportedFeatures() & v19) == 0)
              {
                continue;
              }

              if ((v19 & 2) != 0)
              {
                v60[0] = 0;
                v31 = FigEndpointGetCMBaseObject();
                v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                v33 = v54;
                if (v32 && (v32(v31, v50, allocator, v60), v34 = v60[0], v33 = v60[0] != v3, v60[0]))
                {
                  CFRelease(v60[0]);
                  if (v34 == v3)
                  {
                    continue;
                  }
                }

                else if (!v33)
                {
                  continue;
                }
              }

              v35 = FigCFEqual();
              if (v17 != 6 && v35)
              {
                v60[0] = 0;
                v36 = FigEndpointGetCMBaseObject();
                v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v37)
                {
                  v37(v36, v48, allocator, v60);
                }

                if (v60[0] == v52)
                {
                  CFArrayAppendValue(Mutable, v30);
                }

                else
                {
                  v57 = 0;
                  v38 = FigEndpointGetCMBaseObject();
                  v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v39)
                  {
                    v39(v38, v49, allocator, &v57);
                  }

                  v40 = FigRoutingManagerCopyEndpointWithDeviceID(v57, 0, v55, 0);
                  if (v40)
                  {
                    CFRelease(v40);
                  }

                  else
                  {
                    CFArrayAppendValue(Mutable, v30);
                  }

                  if (v57)
                  {
                    CFRelease(v57);
                  }
                }

                v44 = v60[0];
                if (!v60[0])
                {
                  continue;
                }

                goto LABEL_84;
              }

              if (FigCFEqual() && FigCFEqual())
              {
                v60[0] = 0;
                v41 = FigEndpointGetCMBaseObject();
                v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v42)
                {
                  v42(v41, v49, allocator, v60);
                }

                v43 = FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager(v60[0]);
                if (v43)
                {
                  CFArrayAppendValue(Mutable, v30);
                }

                if (v60[0])
                {
                  CFRelease(v60[0]);
                  v60[0] = 0;
                }

                if (!v43)
                {
                  continue;
                }

                v44 = v43;
LABEL_84:
                CFRelease(v44);
                continue;
              }

              CFArrayAppendValue(Mutable, v30);
            }
          }

          if (v58)
          {
            CFRelease(v58);
            v58 = 0;
          }
        }

        if (v59)
        {
          CFRelease(v59);
        }

        FigCFArrayAppendArray();
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        FigCFArrayAppendArray();
      }
    }

LABEL_35:
    ++v2;
  }
}

uint64_t _VAEndpointManager_CopyPropertyForAudioSessionID(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFArray **a6)
{
  v89 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v9 = 4294950586;
  if (a2 && a6)
  {
    *a6 = 0;
    if (CFEqual(a2, *MEMORY[0x1E69618A8]))
    {
      v10 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithAudioSessionID:"copySessionWithAudioSessionID:", a4];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 audioCategory];
        v13 = [v11 audioMode];
        v14 = [v11 activationContext];
        v15 = [v11 allowedPortTypes];
      }

      else
      {
        v14 = 0;
        v12 = 0;
        v13 = 0;
        v15 = 0;
      }

      *a6 = vaemCopyAvailableEndpointsForRouteConfiguration(v12, v13, v14, v15, [v11 prefersBluetoothHighQualityContentCapture]);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"VAEM_AvailableInputEndpoints"))
    {
      v16 = +[MXSessionManager sharedInstance];
      if (a4)
      {
        v17 = [(MXSessionManager *)v16 copySessionWithAudioSessionID:a4];
      }

      else
      {
        v17 = [(MXSessionManager *)v16 copyActiveCoreSessionControllingRouting];
      }

      v19 = v17;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v28 = v20;
      *a6 = 0;
      if (v19)
      {
        CMSMVAUtility_GetVADCategoryFromFigCategoryName([v19 audioCategory]);
        CMSMVAUtility_GetVADModeFromFigModeName([v19 audioMode]);
        [v19 allowedPortTypes];
        v20 = OUTLINED_FUNCTION_15_1([v19 prefersBluetoothHighQualityContentCapture]);
        v29 = v20;
      }

      else
      {
        v29 = 0;
      }

      v30 = OUTLINED_FUNCTION_18(v20, v21, v22, v23, v24, v25, v26, v27, v66, v68, 0, 0, 0, 0, 0, 0, 0, 0, v79, v81, v83, *(&v83 + 1), v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1));
      if (v30)
      {
        v31 = v30;
        v32 = *v73;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v73 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = vaemCopyEndpointForPort([*(v72 + 8 * i) unsignedIntValue]);
            v35 = [v28 addObject:v34];
            if (v34)
            {
              CFRelease(v34);
            }
          }

          v31 = OUTLINED_FUNCTION_18(v35, v36, v37, v38, v39, v40, v41, v42, v67, v69, v71, v72, v73, v74, v75, v76, v77, v78, v80, v82, v83, *(&v83 + 1), v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1));
        }

        while (v31);
      }

      *a6 = v28;

      return 0;
    }

    if (!CFEqual(a2, @"VAEM_FallbackInputRouteEndpoint"))
    {
      if (!CFEqual(a2, @"VAEM_IsAirPlayIncluded"))
      {
        return 0;
      }

      v44 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithAudioSessionID:"copySessionWithAudioSessionID:", a4];
      v11 = v44;
      if (v44)
      {
        VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([v44 audioCategory]);
        VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([v11 audioMode]);
        v47 = [v11 allowedPortTypes];
      }

      else
      {
        VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(@"Audio/Video");
        VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(@"Default");
        v47 = 0;
      }

      ShouldIncludePortTypeForRouteConfiguration = vaemShouldIncludePortTypeForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v47, [v11 prefersBluetoothHighQualityContentCapture], 0x70617061u);
      if (v11)
      {
        v63 = [v11 allowedPortTypes];
      }

      else
      {
        v63 = 0;
      }

      if (ShouldIncludePortTypeForRouteConfiguration | vaemShouldIncludePortTypeForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v63, [v11 prefersBluetoothHighQualityContentCapture], 0x70617073u))
      {
        v64 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v64 = MEMORY[0x1E695E4C0];
      }

      v65 = *v64;
      *a6 = *v64;
      CFRetain(v65);
LABEL_11:

      return 0;
    }

    if (dword_1EB75DE40)
    {
      LODWORD(v83) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v48 = +[MXSessionManager sharedInstance];
    if (a4)
    {
      v49 = [(MXSessionManager *)v48 copySessionWithAudioSessionID:a4];
    }

    else
    {
      v49 = [(MXSessionManager *)v48 copyActiveCoreSessionControllingRouting];
    }

    v50 = v49;
    if (v49)
    {
      CMSMVAUtility_GetVADCategoryFromFigCategoryName([v49 audioCategory]);
      CMSMVAUtility_GetVADModeFromFigModeName([v50 audioMode]);
      [v50 allowedPortTypes];
      v51 = OUTLINED_FUNCTION_15_1([v50 prefersBluetoothHighQualityContentCapture]);
      v52 = v51;
      if (v51 && [v51 count])
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v53 = [objc_msgSend(v52 "reverseObjectEnumerator")];
        v54 = [v53 countByEnumeratingWithState:&v83 objects:v88 count:16];
        if (!v54)
        {
          goto LABEL_51;
        }

        v55 = v54;
        v56 = *v84;
        while (2)
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v84 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = [*(*(&v83 + 1) + 8 * j) unsignedIntValue];
            if (vaeIsPortRoutable(v58))
            {
              if (dword_1EB75DE40)
              {
                v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_0_0();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              goto LABEL_52;
            }
          }

          v55 = [v53 countByEnumeratingWithState:&v83 objects:v88 count:16];
          if (v55)
          {
            continue;
          }

          break;
        }

LABEL_52:
        if (!v58 || (v61 = vaemCopyEndpointForPort(v58)) == 0)
        {
LABEL_51:
          v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v68, v70);
          v60 = 0;
          goto LABEL_56;
        }

        v60 = v61;
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
      v52 = 0;
    }

    v9 = 0;
LABEL_56:

    if (v9)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v68, v70);
    }

    else
    {
      *a6 = v60;
    }
  }

  return v9;
}

NSDictionary *CMSMVAUtility_GetVADCategoryFromFigCategoryName(NSDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = [+[MXSessionManager sharedInstance](MXSessionManager figCategoryToVADCategoryDict];
    if (result)
    {
      return -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager figCategoryToVADCategoryDict], "objectForKey:", v1);
    }
  }

  return result;
}

uint64_t FigRouteDiscovererCreate(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v31[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  v3 = *MEMORY[0x1E695E480];
  valuePtr = 0;
  if (!theDict)
  {
    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(theDict, @"discovererType");
  v7 = CFDictionaryGetValue(theDict, @"discovererPID");
  if (!Value)
  {
    goto LABEL_31;
  }

  v8 = v7;
  v9 = CFGetTypeID(Value);
  if (v9 != CFNumberGetTypeID())
  {
    goto LABEL_31;
  }

  v10 = [Value intValue];
  if (v10 == 8 && !MX_FeatureFlags_IsSystemInputPickerEnabled(v10, v11))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v26 = 4294949955;
    goto LABEL_27;
  }

  v12 = CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr > 8)
  {
    goto LABEL_31;
  }

  FigRouteDiscovererGetClassID(v12, v13);
  v14 = CMDerivedObjectCreate();
  if (v14)
  {
    v26 = v14;
    goto LABEL_27;
  }

  v15 = CFDictionaryGetValue(theDict, @"audioSessionID");
  v16 = v15;
  if (v15)
  {
    v17 = CFGetTypeID(v15);
    if (v17 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v16, kCFNumberSInt32Type, 8);
      goto LABEL_11;
    }

LABEL_31:
    v26 = 4294949956;
    goto LABEL_27;
  }

LABEL_11:
  v18 = CFUUIDCreate(v3);
  v19 = CFUUIDCreateString(v3, v18);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(@"DiscoveryMode_None");
  v21 = *MEMORY[0x1E695E4C0];
  if (*MEMORY[0x1E695E4C0])
  {
    *(DerivedStorage + 24) = CFRetain(*MEMORY[0x1E695E4C0]);
    v22 = CFRetain(v21);
  }

  else
  {
    v22 = 0;
    *(DerivedStorage + 24) = 0;
  }

  *(DerivedStorage + 32) = v22;
  v23 = *MEMORY[0x1E695E4D0];
  if (*MEMORY[0x1E695E4D0])
  {
    v23 = CFRetain(v23);
  }

  *(DerivedStorage + 40) = v23;
  *(DerivedStorage + 56) = valuePtr;
  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 72) = CFRetain(v19);
  *(DerivedStorage + 80) = FigReentrantMutexCreate();
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 104) = objc_alloc_init(MEMORY[0x1E695DEC8]);
  *(DerivedStorage + 96) = objc_alloc_init(MEMORY[0x1E695DEC8]);
  *(DerivedStorage + 12) = 0;
  *(DerivedStorage + 16) = 0;
  v24 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v8)
  {
    CFRetain(v8);
  }

  if (v16)
  {
    CFRetain(v16);
  }

  DiscoveryQueue = FigRouteDiscoveryManagerGetDiscoveryQueue();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __FigRouteDiscoveryManagerStoreDiscoverer_block_invoke;
  v31[3] = &__block_descriptor_56_e5_v8__0l;
  v31[4] = v24;
  v31[5] = v8;
  v31[6] = v16;
  MXDispatchAsync("FigRouteDiscoveryManagerStoreDiscoverer", "FigRouteDiscoverer.m", 785, 0, 0, DiscoveryQueue, v31);
  *a3 = cf;
  cf = 0;
  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v26 = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

uint64_t FigRouteDiscoveryManagerGetDiscoveryQueue()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = &qword_1EB75D478;
  if (!qword_1EB75D478)
  {
    v0 = 8;
  }

  return *v0;
}

uint64_t discoveryManager_copyDiscovererFromWeakRef(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 != FigCFWeakReferenceHolderGetTypeID())
  {
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t discoverer_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v13 = 4294949956;
    goto LABEL_9;
  }

  v10 = DerivedStorage;
  if (CFEqual(a2, @"DiscoveryMode"))
  {
    v11 = *v10;
    if (!*v10)
    {
LABEL_8:
      v13 = 0;
      *a4 = v11;
      goto LABEL_9;
    }

LABEL_4:
    v11 = CFRetain(v11);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"clientPID"))
  {
    v12 = (v10 + 12);
LABEL_7:
    v11 = CFNumberCreate(a3, kCFNumberSInt32Type, v12);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"clientName"))
  {
    v11 = *(v10 + 16);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"BluetoothRoutesOnly"))
  {
    v11 = *(v10 + 24);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"CachedDiscovery"))
  {
    v11 = *(v10 + 32);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v16 = *(v10 + 40);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *a4 = v16;
    FigSimpleMutexUnlock();
    v13 = 0;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"audioSessionID"))
  {
    v12 = (v10 + 8);
    goto LABEL_7;
  }

  if (CFEqual(a2, @"discoversLocalRoute"))
  {
    v13 = 0;
    v17 = MEMORY[0x1E695E4C0];
    if ((*(v10 + 56) & 0xFFFFFFFA) != 0)
    {
      v17 = MEMORY[0x1E695E4D0];
    }

    v18 = *v17;
LABEL_29:
    *a4 = v18;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"discovererUUID"))
  {
    v11 = *(v10 + 72);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"OnBehalfOf"))
  {
    v11 = *(v10 + 48);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"routePresent"))
  {
    v13 = FigRouteDiscoveryManagerCopyRoutePresentForType(a3, *(v10 + 56), a4);
    goto LABEL_9;
  }

  if (!CFEqual(a2, @"userSelectionAvailable"))
  {
    if (FigCFEqual())
    {
      v20 = FigGetUpTimeNanoseconds();
      FigSimpleMutexLock();
      v21 = *(v10 + 104);
      cf[0] = v21;
      if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer(a1))
      {
        v13 = 0;
      }

      else
      {

        cf[0] = 0;
        OUTLINED_FUNCTION_0_7();
        v13 = FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(v31, v32, v33, v34, v35);
        v21 = 0;
      }

      FigRouteDiscovererCopyAvailableRoutes(*(v10 + 32), v21);
      OUTLINED_FUNCTION_1_6();
      if (!v37 & v36)
      {
        *(v10 + 64) = v20;
      }
    }

    else
    {
      if (!CFEqual(a2, @"availableRouteDescriptors"))
      {
        if (!CFEqual(a2, @"fallbackRouteDescriptor"))
        {
          v13 = 4294954512;
          goto LABEL_9;
        }

        cf[0] = 0;
        v13 = FigRouteDiscoveryManagerCopyFallbackRouteDescriptor(*(v10 + 56), *(v10 + 8), cf);
        if (v13)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v45, v46);
          goto LABEL_9;
        }

        v18 = cf[0];
        goto LABEL_29;
      }

      v29 = FigCFEqual();
      if (v29 && MX_FeatureFlags_IsCorianderEnabled(v29, v30))
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DEC8]);
        goto LABEL_8;
      }

      v38 = FigGetUpTimeNanoseconds();
      FigSimpleMutexLock();
      v21 = *(v10 + 96);
      cf[0] = v21;
      if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer(a1))
      {
        v13 = 0;
      }

      else
      {

        cf[0] = 0;
        OUTLINED_FUNCTION_0_7();
        v13 = FigRouteDiscoveryManagerCopyRouteDescriptorsForTypeAndAudioSessionID(v39, v40, v41, v42, v43);
        v21 = 0;
      }

      FigRouteDiscovererCopyAvailableRouteDescriptors(*(v10 + 32), v21);
      OUTLINED_FUNCTION_1_6();
      if (!v37 & v36)
      {
        *(v10 + 64) = v38;
        FigSimpleMutexUnlock();
        *a4 = v21;
        if (FigRouteDiscovererShouldLogForClient(*(v10 + 16)))
        {
          discoverer_logAvailableRouteDetails(*(v10 + 16), *(v10 + 56), v21);
        }

        goto LABEL_64;
      }
    }

    FigSimpleMutexUnlock();
    *a4 = v21;
LABEL_64:

    goto LABEL_9;
  }

  FigSimpleMutexLock();
  if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer(a1))
  {
    if (*(v10 + 88) == 1)
    {
      v19 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v19 = MEMORY[0x1E695E4C0];
    }

    v27 = *v19;
    if (*v19)
    {
      v27 = CFRetain(v27);
    }

    v13 = 0;
    *a4 = v27;
  }

  else
  {
    cf[0] = 0;
    OUTLINED_FUNCTION_0_7();
    v13 = FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(v22, v23, v24, v25, v26);
    *a4 = FigRouteDiscovererCopyUserSelectionAvailable(*(v10 + 56), 0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
LABEL_9:
  v14 = objc_autoreleasePoolPush();
  [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"discoverer_CopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  objc_autoreleasePoolPop(v14);
  return v13;
}

__CFString *discoverer_getTypeString(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7AEAD88[a1];
  }
}

id FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v0 = &qword_1EB75D580;
  }

  else
  {
    v0 = 272;
  }

  FigSimpleMutexLock();
  v1 = *v0;
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(uint64_t a1, int a2, int a3, uint64_t a4, CFMutableArrayRef *a5)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v9 = &discoverManager_getSharedManager_discoveryState;
  }

  else
  {
    v9 = 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v11 = Mutable;
  if (*v9)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __discoveryManager_appendAvailableEndpoints_block_invoke;
    v13[3] = &__block_descriptor_64_e5_v8__0l;
    v13[4] = v9;
    v13[5] = Mutable;
    v14 = a2;
    v15 = a3;
    v13[6] = a4;
    FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v13);
  }

  if (a5)
  {
    *a5 = v11;
  }

  else if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

void __discoveryManager_appendAvailableEndpoints_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    v3 = *(a1 + 56);
    if (v3 == 7)
    {
      v4 = *(a1 + 40);
      v5 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F0])];
      if (v5)
      {
        v6 = v5;
        if (CFArrayGetCount(v5) >= 1)
        {
          v16.length = CFArrayGetCount(v6);
          v16.location = 0;
          CFArrayAppendArray(v4, v6, v16);
        }

        CFRelease(v6);
      }
    }

    else
    {
      v7 = *(a1 + 32);
      AudioSessionIDForActiveCMSession = *(a1 + 60);
      v9 = *(a1 + 40);
      if (!AudioSessionIDForActiveCMSession)
      {
        v10 = *(a1 + 40);
        AudioSessionIDForActiveCMSession = CMSMUtility_GetAudioSessionIDForActiveCMSession();
        v9 = v10;
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __discoveryManager_iOSAppendAvailableEndpoints_block_invoke;
      v11[3] = &__block_descriptor_64_e5_v8__0l;
      v11[4] = v7;
      v13 = AudioSessionIDForActiveCMSession;
      v14 = v3;
      v12 = vextq_s8(v9, v9, 8uLL);
      FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v11);
    }
  }
}

uint64_t _VAEndpointManager_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (!a2 || !a4)
  {
    return result;
  }

  if (*(DerivedStorage + 8))
  {
    return 4294950584;
  }

  if (CFEqual(a2, *MEMORY[0x1E69618B8]))
  {
    v9 = MEMORY[0x1E69618F8];
LABEL_6:
    v10 = CFRetain(*v9);
    return OUTLINED_FUNCTION_6_3(v10);
  }

  if (!CFEqual(a2, *MEMORY[0x1E69618A8]))
  {
    if (CFEqual(a2, *MEMORY[0x1E69618B0]))
    {
LABEL_14:
      v9 = MEMORY[0x1E695E4D0];
      goto LABEL_6;
    }

    if (CFEqual(a2, *MEMORY[0x1E69618C8]) || CFEqual(a2, *MEMORY[0x1E69618C0]))
    {
      v22[0] = 2;
      v10 = CFNumberCreate(a3, kCFNumberSInt64Type, v22);
      return OUTLINED_FUNCTION_6_3(v10);
    }

    if (CFEqual(a2, @"VAEM_StarkIsAvailableForCurrentCategoryAndMode"))
    {
      PortOfTypeInConnectedPortsList = CMSMVAUtility_GetPortOfTypeInConnectedPortsList(1886614639);
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_StarkAudioPortIsCurrentlyActive"))
    {
      v13 = MEMORY[0x1E695E4C0];
      v14 = dword_1EB75E168;
      goto LABEL_25;
    }

    if (CFEqual(a2, @"VAEM_DeviceBufferSizeRange"))
    {
      vaemGetDeviceBufferNumPCMFramesRange([[MXSessionManager defaultVADID] sharedInstance:v22];
      v10 = MXCFArrayCreateFromCArrayOfSInt32(v22, 2u);
      return OUTLINED_FUNCTION_6_3(v10);
    }

    if (CFEqual(a2, @"VAEM_AllEndpoints"))
    {
      v10 = vaemCopyAllEndpoints();
      return OUTLINED_FUNCTION_6_3(v10);
    }

    if (CFEqual(a2, @"VAEM_BufferFrameSizeShouldBeRestricted"))
    {
      PortOfTypeInConnectedPortsList = vaemBufferFrameSizeShouldBeRestricted([+[MXSessionManager defaultVADID] sharedInstance];
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_SystemLocalVADExists"))
    {
      PortOfTypeInConnectedPortsList = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_SystemRemoteVADExists"))
    {
      PortOfTypeInConnectedPortsList = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundRemoteVADID];
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_AC3IsSupported"))
    {
      PortOfTypeInConnectedPortsList = vaemGetAC3IsSupported();
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_AC3EncodeIsSupported"))
    {
      goto LABEL_41;
    }

    if (CFEqual(a2, @"VAEM_VirtualFormatsSupported"))
    {
      v10 = vaemCopyVirtualFormatsSupported();
      return OUTLINED_FUNCTION_6_3(v10);
    }

    if (CFEqual(a2, @"VAEM_UplinkMute"))
    {
      PortOfTypeInConnectedPortsList = vaemGetUplinkMute();
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_DownlinkMute"))
    {
      LODWORD(v22[0]) = 0;
      if (qword_1EB75E070)
      {
        qword_1EB75E070(0, v22);
        if ((v22[0] & 2) != 0)
        {
          goto LABEL_14;
        }
      }

LABEL_41:
      v9 = MEMORY[0x1E695E4C0];
      goto LABEL_6;
    }

    if (CFEqual(a2, @"VAEM_DeviceSupportsMute"))
    {
      PortOfTypeInConnectedPortsList = vaemDeviceSupportsMute();
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_LineOutIsConnected"))
    {
      v17 = 1886154613;
    }

    else if (CFEqual(a2, @"VAEM_USBAudioOutputIsConnected"))
    {
      v17 = 1886745455;
    }

    else if (CFEqual(a2, @"VAEM_HDMIAudioOutputIsConnected"))
    {
      v17 = 1885889645;
    }

    else if (CFEqual(a2, @"VAEM_DisplayPortAudioOutputIsConnected"))
    {
      v17 = 1885631344;
    }

    else
    {
      if (!CFEqual(a2, @"VAEM_ThunderboltOutputIsConnected"))
      {
        if (CFEqual(a2, @"VAEM_HeadphoneJackIsConnected"))
        {
          v15 = objc_alloc(MEMORY[0x1E696AD98]);
          v16 = byte_1EB75D178;
LABEL_62:
          v10 = [v15 initWithBool:v16 != 0];
          return OUTLINED_FUNCTION_6_3(v10);
        }

        if (CFEqual(a2, @"VAEM_HeadphoneJackHasInput"))
        {
          v15 = objc_alloc(MEMORY[0x1E696AD98]);
          v16 = byte_1EB75D179;
          goto LABEL_62;
        }

        if (CFEqual(a2, @"VAEM_CurrentRouteHasVolumeControl"))
        {
          PortOfTypeInConnectedPortsList = vaemCurrentRouteHasVolumeControl();
          goto LABEL_20;
        }

        if (CFEqual(a2, @"VAEM_CurrentRouteHasMuteControl"))
        {
          PortOfTypeInConnectedPortsList = vaemCurrentRouteHasMuteControl();
          goto LABEL_20;
        }

        if (CFEqual(a2, @"VAEM_CurrentRouteHasInputGainControl"))
        {
          PortOfTypeInConnectedPortsList = vaemCurrentRouteHasInputGainControl();
          goto LABEL_20;
        }

        if (CFEqual(a2, @"VAEM_CurrentInputDataSource"))
        {
          v10 = vaemCopyCurrentInputDataSource();
          return OUTLINED_FUNCTION_6_3(v10);
        }

        if (CFEqual(a2, @"VAEM_CurrentOutputDataDestination"))
        {
          v10 = vaemCopyCurrentOutputDataDestination();
          return OUTLINED_FUNCTION_6_3(v10);
        }

        if (CFEqual(a2, @"VAEM_InputDataSources"))
        {
          v10 = vaemCopyInputDataSources();
          return OUTLINED_FUNCTION_6_3(v10);
        }

        if (CFEqual(a2, @"VAEM_OutputDataDestinations"))
        {
          v10 = vaemCopyOutputDataDestinations();
          return OUTLINED_FUNCTION_6_3(v10);
        }

        if (CFEqual(a2, @"VAEM_VirtualAudioCategory"))
        {
          VirtualAudioPlugInCategory = vaemGetVirtualAudioPlugInCategory();
LABEL_85:
          v10 = MXCFNumberCreateFromSInt64(VirtualAudioPlugInCategory);
          return OUTLINED_FUNCTION_6_3(v10);
        }

        if (CFEqual(a2, @"VAEM_VADInRecordingCategory"))
        {
          PortOfTypeInConnectedPortsList = vaemIsVADInRecordingCategory();
          goto LABEL_20;
        }

        if (CFEqual(a2, @"VAEM_VirtualAudioMode"))
        {
          VirtualAudioPlugInCategory = vaemGetVirtualAudioPlugInMode();
          goto LABEL_85;
        }

        if (CFEqual(a2, @"VAEM_DeviceInputGainScalar"))
        {
          LODWORD(v22[0]) = 0;
          DeviceInputGainScalar = vaemGetDeviceInputGainScalar(v22);
          if (!DeviceInputGainScalar)
          {
            v20 = *v22;
LABEL_96:
            *a4 = MXCFNumberCreateFromFloat32(v20);
          }
        }

        else
        {
          if (!CFEqual(a2, @"VAEM_RoundedDeviceInputGainScalar"))
          {
            if (CFEqual(a2, @"VAEM_ThermalGainAdjustment_Speaker"))
            {
              v21 = *&qword_1EB75D188;
            }

            else
            {
              if (!CFEqual(a2, @"VAEM_ThermalGainAdjustment_Haptics"))
              {
                if (CFEqual(a2, @"VAEM_AudioInputDeviceIsAvailable"))
                {
                  v13 = MEMORY[0x1E695E4C0];
                  v14 = byte_1EB75D159;
                }

                else if (CFEqual(a2, @"VAEM_AudioInputDeviceExcludingBluetoothIsAvailable"))
                {
                  v13 = MEMORY[0x1E695E4C0];
                  v14 = byte_1EB75D15A;
                }

                else if (CFEqual(a2, @"VAEM_DisallowAudioFormatChanges"))
                {
                  v13 = MEMORY[0x1E695E4C0];
                  v14 = byte_1EB75D184;
                }

                else
                {
                  if (!CFEqual(a2, @"VAEM_InLongPullMode"))
                  {
                    if (CFEqual(a2, @"VAEM_MATAtmosIsEnabled"))
                    {
                      PortOfTypeInConnectedPortsList = vaemIsMATAtmosEnabled();
                    }

                    else
                    {
                      result = CFEqual(a2, @"VAEM_MATAtmosIsAvailable");
                      if (!result)
                      {
                        return result;
                      }

                      PortOfTypeInConnectedPortsList = vaemIsMATAtmosAvailable();
                    }

LABEL_20:
                    v9 = MEMORY[0x1E695E4C0];
                    if (PortOfTypeInConnectedPortsList)
                    {
                      v9 = MEMORY[0x1E695E4D0];
                    }

                    goto LABEL_6;
                  }

                  v13 = MEMORY[0x1E695E4C0];
                  v14 = byte_1EB75D185;
                }

LABEL_25:
                if (v14)
                {
                  v9 = MEMORY[0x1E695E4D0];
                }

                else
                {
                  v9 = v13;
                }

                goto LABEL_6;
              }

              v21 = *(&qword_1EB75D188 + 1);
            }

            v10 = MXCFNumberCreateFromFloat32(v21);
            return OUTLINED_FUNCTION_6_3(v10);
          }

          LODWORD(v22[0]) = 0;
          DeviceInputGainScalar = vaemGetDeviceInputGainScalar(v22);
          if (!DeviceInputGainScalar)
          {
            v20 = roundf(*v22 * 1000.0) / 1000.0;
            *v22 = v20;
            goto LABEL_96;
          }
        }

        return DeviceInputGainScalar;
      }

      v17 = 1886675567;
    }

    PortOfTypeInConnectedPortsList = vaemGetVADPortIDFromVADPortType(v17);
    goto LABEL_20;
  }

  v11 = CMSMUtility_CopyCurrentAllowedPortTypes();
  *a4 = vaemCopyAvailableEndpointsForRouteConfiguration(0, 0, 0, v11, 0);
  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

__n128 OUTLINED_FUNCTION_12_1()
{
  v2 = *(v1 + 4040);
  result = *(v2 + 72);
  v0[1].n128_u64[0] = *(v2 + 88);
  *v0 = result;
  return result;
}

uint64_t HandleRouteDiscovererRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v17 = 0;
  v15 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  value = 0;
  v5 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v5)
  {
    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v16, valuePtr);
  }

  v7 = v5;
  if (!v5)
  {
    if (v17 != 778268793)
    {
      if (v17 == 779314548)
      {
        return FigXPCHandleStdSetPropertyMessage();
      }

      if (v17 != 1635148140)
      {
        if (v17 != 1685024621)
        {
          return 4294949956;
        }

        return FigXPCServerDisassociateObjectWithConnection();
      }

      v19 = 0;
      value = 0;
      if (*v15)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v9 = v8(0, @"availableRoutes", *MEMORY[0x1E695E480], &value);
          if (v9 || (v9 = FigEndpointRPCCacheComputeCacheDeltas(), v9))
          {
            v7 = v9;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 4294954514;
        }
      }

      else
      {
        v7 = 4294949953;
      }

      FigXPCRelease();
      FigXPCRelease();
      goto LABEL_28;
    }

    v19 = 0;
    value = 0;
    v10 = FigXPCMessageCopyCFString();
    if (v10)
    {
      v7 = v10;
    }

    else if (FigCFEqual() && !*v15)
    {
      v7 = 4294949953;
    }

    else
    {
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v12 = v11(0, value, *MEMORY[0x1E695E480], &v19);
        v13 = v19;
        if (!v12)
        {
          v7 = FigXPCMessageSetCFObject();
          v13 = v19;
          if (!v19)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v7 = v12;
        if (v19)
        {
LABEL_22:
          CFRelease(v13);
        }
      }

      else
      {
        v7 = 4294954514;
      }
    }

LABEL_28:
    if (value)
    {
      CFRelease(value);
    }
  }

  return v7;
}

uint64_t FigRouteDiscoveryManagerAddDiscoverer(uint64_t a1, unsigned int a2)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v3 = &unk_1EB75D488;
  v4 = qword_1EB75D478;
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v4)
  {
    v3 = 24;
  }

  if (a2 == 3)
  {
    v9 = &unk_1EB75D4B8;
    if (!v4)
    {
      v9 = 72;
    }

    v10 = *v9;
    v11 = 48;
    if (v4)
    {
      v11 = &unk_1EB75D4A0;
    }

    v12 = *v11;
    FigSimpleMutexLock();
    CFArrayAppendValue(v10, v5);
LABEL_21:
    CFArrayAppendValue(v12, v5);
    FigSimpleMutexUnlock();
    if (!v5)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (a2 != 6)
  {
    v12 = *(v3 + 24 * a2);
    FigSimpleMutexLock();
    goto LABEL_21;
  }

  for (i = 0; i != 9; ++i)
  {
    if (i != 3 && i != 6)
    {
      v7 = *v3;
      FigSimpleMutexLock();
      CFArrayAppendValue(v7, v5);
      FigSimpleMutexUnlock();
    }

    v3 += 24;
  }

  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

  return 0;
}

uint64_t FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(uint64_t a1)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  FigSimpleMutexLock();
  (*(a1 + 16))(a1);

  return FigSimpleMutexUnlock();
}

uint64_t CMSMUtility_GetAudioSessionIDForActiveCMSession()
{
  v12 = *MEMORY[0x1E69E9840];
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
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v8 != v3)
      {
        objc_enumerationMutation(v0);
      }

      v5 = *(*(&v7 + 1) + 8 * v4);
      if (objc_msgSend_isActive(v5))
      {
        if (([v5 currentlyControllingFlags] & 2) != 0)
        {
          break;
        }
      }

      if (v2 == ++v4)
      {
        v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (!v5)
    {
      return 0;
    }

    return [v5 audioSessionID];
  }

  else
  {
LABEL_10:

    return 0;
  }
}

uint64_t discoveryManager_mapDiscovererTypeToEndpointFeatures(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return qword_1B19D83E8[a1];
  }
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_21_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigRouteDiscovererXPCRemoteCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (dword_1ED6D31B0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (figRouteDiscovererRemoteXPC_EnsureClientEstablished_onceToken != -1)
    {
      FigRouteDiscovererXPCRemoteCreate_cold_1();
    }

    os_unfair_lock_lock(&figRouteDiscovererRemoteXPC_EnsureClientEstablished_lock);
    if (figRouteDiscovererRemoteXPC_EnsureClientEstablished_err || !gFigRouteDiscovererRemoteClient)
    {
      v7 = objc_alloc(MEMORY[0x1E695DF20]);
      v8 = [v7 initWithObjectsAndKeys:{@"RouteDiscoverer_ServerConnectionDied", *MEMORY[0x1E69633B0], 0}];
      figRouteDiscovererRemoteXPC_EnsureClientEstablished_err = FigXPCRemoteClientCreate();

      if (figRouteDiscovererRemoteXPC_EnsureClientEstablished_err)
      {
        if (gFigRouteDiscovererRemoteClient)
        {
          CFRelease(gFigRouteDiscovererRemoteClient);
          gFigRouteDiscovererRemoteClient = 0;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
      }
    }

    os_unfair_lock_unlock(&figRouteDiscovererRemoteXPC_EnsureClientEstablished_lock);
    Internal = figRouteDiscovererRemoteXPC_EnsureClientEstablished_err;
    if (!figRouteDiscovererRemoteXPC_EnsureClientEstablished_err)
    {
      v9 = FigXPCCreateBasicMessage();
      if (v9 || (v9 = FigXPCMessageSetCFDictionary(), v9) || (v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v9))
      {
        Internal = v9;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
LABEL_20:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
        FigXPCRelease();
        FigXPCRelease();
        return Internal;
      }

      uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
      if (!uint64)
      {
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        Internal = 0xFFFFFFFFLL;
        goto LABEL_21;
      }

      Internal = remoteXPCRouteDiscoverer_CreateInternal(uint64, a3);
      if (!Internal)
      {
        goto LABEL_21;
      }
    }

    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    goto LABEL_20;
  }

  v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 4294954516;
}

uint64_t FigRouteDiscovererGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigRouteDiscovererGetClassID_sRegisterFigRouteDiscovererTypeOnce != -1)
  {
    FigRouteDiscovererGetClassID_cold_1();
  }

  return sFigRouteDiscovererClassID;
}

uint64_t vaeIsPortAnInputPort(uint64_t a1)
{
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);
  result = 1;
  if (PortTypeFromPortID <= 1886222184)
  {
    if (PortTypeFromPortID > 1886216808)
    {
      if (PortTypeFromPortID == 1886216809)
      {
        return result;
      }

      v3 = 1886216820;
    }

    else
    {
      if (PortTypeFromPortID == 1885564781)
      {
        return result;
      }

      v3 = 1886152041;
    }

    goto LABEL_13;
  }

  if (PortTypeFromPortID <= 1886675560)
  {
    if (PortTypeFromPortID == 1886222185)
    {
      return result;
    }

    v3 = 1886614633;
    goto LABEL_13;
  }

  if (PortTypeFromPortID != 1886675561 && PortTypeFromPortID != 1886680169)
  {
    v3 = 1886745449;
LABEL_13:
    if (PortTypeFromPortID != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t remoteXPCRouteDiscoverer_CreateInternal(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  FigRouteDiscovererGetClassID(a1, a2);
  result = CMDerivedObjectCreate();
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.coremedia.remoteroutediscoverer.cache", v6);
    *(DerivedStorage + 16) = v7;
    if (v7)
    {
      result = FigEndpointRPCCacheCreate();
      if (!result)
      {
        *(DerivedStorage + 8) = a1;
        FigXPCRemoteClientAssociateObject();
        result = 0;
      }
    }

    else
    {
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0, v10);
    }
  }

  *a2 = v9;
  return result;
}

uint64_t FigRoutingManagerIsEndpointOfType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E69622F8], *MEMORY[0x1E695E480], &cf);
  }

  v4 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

const __CFArray *FigEndpointDescriptorUtility_CopyAndRemoveDuplicateRouteDescriptors(CFArrayRef theArray)
{
  v27 = *MEMORY[0x1E69E9840];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  v2 = 0;
  if (!MutableCopy)
  {
    goto LABEL_3;
  }

LABEL_2:
  v3 = CFArrayGetCount(MutableCopy) - 1;
LABEL_4:
  if (v2 < v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v2);
    if (ValueAtIndex)
    {
      v5 = CFRetain(ValueAtIndex);
    }

    else
    {
      v5 = 0;
    }

    Value = CFDictionaryGetValue(v5, @"RouteUID");
    if (Value)
    {
      v7 = CFRetain(Value);
    }

    else
    {
      v7 = 0;
    }

    v8 = CFDictionaryGetValue(v5, @"PortNumber");
    theDict = v5;
    if (v8)
    {
      cf = CFRetain(v8);
    }

    else
    {
      cf = 0;
    }

    v9 = v2 + 1;
    v24 = v2;
    while (1)
    {
      v10 = v9;
      if (MutableCopy)
      {
        Count = CFArrayGetCount(MutableCopy);
      }

      else
      {
        Count = 0;
      }

      if (v10 >= Count)
      {
LABEL_45:
        if (theDict)
        {
          CFRelease(theDict);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v2 = v2 - (v10 < Count) + 1;
        if (MutableCopy)
        {
          goto LABEL_2;
        }

LABEL_3:
        v3 = -1;
        goto LABEL_4;
      }

      v12 = CFArrayGetValueAtIndex(MutableCopy, v10);
      if (v12)
      {
        v13 = CFRetain(v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = CFDictionaryGetValue(v13, @"RouteUID");
      if (v14)
      {
        v15 = CFRetain(v14);
        v16 = v15;
        v17 = 1;
        if (!v7 || !v15)
        {
          goto LABEL_32;
        }

        location = CFStringFind(v15, v7, 0).location;
        v19 = CFStringFind(v7, v16, 0).location;
        if (FigCFEqual() || location != -1 || v19 != -1)
        {
          if (location == -1)
          {
            v20 = theDict;
            CFDictionarySetValue(theDict, @"RouteUID", v16);
          }

          else
          {
            CFDictionarySetValue(v13, @"RouteUID", v7);
            v20 = theDict;
          }

          if (cf)
          {
            CFDictionaryApplyFunction(v13, figEndpointDescriptorUtility_addMissingEntriesApplierFunction, v20);
            v21 = v10;
          }

          else
          {
            CFDictionaryApplyFunction(v20, figEndpointDescriptorUtility_addMissingEntriesApplierFunction, v13);
            v21 = v2;
          }

          CFArrayRemoveValueAtIndex(MutableCopy, v21);
          if (dword_1EB75DF60)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v17 = 0;
            v2 = v24;
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = 1;
LABEL_32:
      if (v13)
      {
        CFRelease(v13);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      v9 = v10 + 1;
      if ((v17 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  return MutableCopy;
}

uint64_t discoverer_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_36;
  }

  v7 = DerivedStorage;
  if (!DerivedStorage)
  {
    v20 = v31;
    v21 = -17346;
    goto LABEL_37;
  }

  if (!CFEqual(a2, @"clientPID"))
  {
    if (CFEqual(a2, @"clientName"))
    {
      if (a3)
      {
        v11 = CFGetTypeID(a3);
        if (v11 == CFStringGetTypeID())
        {
          v12 = v7[2];
          if (v12)
          {
            CFRelease(v12);
            v7[2] = 0;
          }

          v13 = CFRetain(a3);
          goto LABEL_23;
        }
      }
    }

    else if (CFEqual(a2, @"audioSessionID"))
    {
      if (!a3)
      {
        *(v7 + 2) = 0;
        goto LABEL_38;
      }

      v14 = CFGetTypeID(a3);
      if (v14 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, v7 + 1);
        goto LABEL_38;
      }
    }

    else if (CFEqual(a2, @"OnBehalfOf"))
    {
      if (a3)
      {
        v15 = CFGetTypeID(a3);
        if (v15 == CFDictionaryGetTypeID())
        {
          v16 = v7[6];
          v7[6] = a3;
          CFRetain(a3);
          if (v16)
          {
            CFRelease(v16);
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      if (!CFEqual(a2, @"BluetoothRoutesOnly"))
      {
        if (FigCFEqual())
        {
          FigSimpleMutexLock();
          v24 = v7[5];
          if (v24)
          {
            CFRelease(v24);
            v7[5] = 0;
          }

          if (a3)
          {
            v25 = CFRetain(a3);
          }

          else
          {
            v25 = 0;
          }

          v7[5] = v25;
          FigSimpleMutexUnlock();
        }

        else if (FigCFEqual())
        {
          v26 = v7[4];
          if (v26)
          {
            CFRelease(v26);
            v7[4] = 0;
          }

          if (a3)
          {
            v27 = CFRetain(a3);
          }

          else
          {
            v27 = 0;
          }

          v7[4] = v27;
        }

        else
        {
          DiscoveryQueue = FigRouteDiscoveryManagerGetDiscoveryQueue();
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __discoverer_SetProperty_block_invoke_2;
          v29[3] = &unk_1E7AE79A8;
          v29[6] = v7;
          v29[7] = a1;
          v29[8] = a3;
          v29[4] = &v30;
          v29[5] = a2;
          MXDispatchSync("discoverer_SetProperty", "FigRouteDiscoverer.m", 616, 0, 0, DiscoveryQueue, v29);
        }

        goto LABEL_38;
      }

      if (a3)
      {
        v17 = CFGetTypeID(a3);
        if (v17 == CFBooleanGetTypeID())
        {
          v18 = v7[3];
          if (v18)
          {
            CFRelease(v18);
            v7[3] = 0;
          }

          v7[3] = CFRetain(a3);
          v19 = FigRouteDiscoveryManagerGetDiscoveryQueue();
          MXDispatchAsync("discoverer_SetProperty", "FigRouteDiscoverer.m", 578, 0, 0, v19, &__block_literal_global_52);
          goto LABEL_38;
        }
      }
    }

    goto LABEL_36;
  }

  if (!a3)
  {
    goto LABEL_38;
  }

  v8 = CFGetTypeID(a3);
  if (v8 != CFNumberGetTypeID())
  {
LABEL_36:
    v20 = v31;
    v21 = -17340;
LABEL_37:
    *(v20 + 6) = v21;
    goto LABEL_38;
  }

  CFNumberGetValue(a3, kCFNumberSInt32Type, v7 + 12);
  memset(buffer, 0, sizeof(buffer));
  v9 = *(v7 + 3);
  if (v9 < 1)
  {
    v10 = 0;
    goto LABEL_20;
  }

  MX_RunningBoardServices_StartMonitoringForPID(v9);
  v10 = proc_name(*(v7 + 3), buffer, 0x20u);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_20:
    *(buffer + v10) = 0;
  }

  if (!v7[2])
  {
    v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], buffer, 0x8000100u);
LABEL_23:
    v7[2] = v13;
  }

LABEL_38:
  v22 = *(v31 + 6);
  _Block_object_dispose(&v30, 8);
  return v22;
}

void sub_1B17BF5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRouteDiscovererGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigRouteDiscovererGetClassID_sRegisterFigRouteDiscovererTypeOnce != -1)
  {
    FigRouteDiscovererGetClassID_cold_1();
  }

  v3 = sFigRouteDiscovererClassID;

  return MEMORY[0x1EEDBB488](v3);
}

__CFArray *MXEndpointDescriptorCopyAvailableRouteDescriptorsFromEndpoints(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v4 < i; i = 0)
  {
    CFArrayGetValueAtIndex(a1, v4);
    FigCFDictionaryGetValue();
    if (FigCFArrayContainsValue())
    {
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        MutableCopy = MXCFDictionaryCreateMutableCopy(Value);
        CFArrayAppendValue(Mutable, MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }
    }

    ++v4;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return Mutable;
}

uint64_t FigRouteDiscovererRemoteXPC_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  result = remoteXPCRouteDiscoverer_GetObjectID(a1, &v4);
  if (!result)
  {

    return FigXPCSendStdSetPropertyMessage();
  }

  return result;
}

uint64_t remoteXPCRouteDiscoverer_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteXPCRouteDiscoverer_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 1);
  }

  return result;
}

__CFArray *FigRoutingManagerCopyEndpointsWithType(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v5 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, a2))
    {
      v8 = CFArrayGetValueAtIndex(a1, v5);
      CFArrayAppendValue(Mutable, v8);
    }

    ++v5;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return Mutable;
}

const __CFArray *FigRouteDiscoveryManagerCopyRouteDescriptorsFromEndpointsAndAudioSessionID(const __CFArray *a1, uint64_t a2)
{
  v4 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyRouteDescriptorsForEndpoints:"copyRouteDescriptorsForEndpoints:", a1];
  v5 = FigRoutingManagerCopyEndpointsWithType(a1, *MEMORY[0x1E69626D8]);
  v6 = v5;
  if (v5 && CFArrayGetCount(v5) >= 1)
  {
    v7 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v6, a2);
  }

  else
  {
    v7 = 0;
  }

  cf = 0;
  MXCFArrayCopyAppendedArray(v7, v4, &cf);
  v8 = FigEndpointDescriptorUtility_CopyAndRemoveDuplicateRouteDescriptors(cf);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (!v8)
  {
    return MEMORY[0x1E695E0F0];
  }

  return v8;
}

void MXCFArrayCopyAppendedArray(const __CFArray *a1, const __CFArray *a2, __CFArray **a3)
{
  if (a3)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (a1 && CFArrayGetCount(a1))
    {
      v7.length = CFArrayGetCount(a1);
      v7.location = 0;
      CFArrayAppendArray(Mutable, a1, v7);
    }

    if (a2)
    {
      if (CFArrayGetCount(a2))
      {
        v8.length = CFArrayGetCount(a2);
        v8.location = 0;
        CFArrayAppendArray(Mutable, a2, v8);
      }
    }

    *a3 = Mutable;
  }
}

uint64_t CMSMVAUtility_GetPortAtIndex(const __CFArray *a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  valuePtr = 0;
  CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
  return valuePtr;
}

const __CFArray *FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count > 0)
    {
      FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints_cold_1(a1, a2, Count, Mutable);
    }
  }

  v6 = 0;
  if (Mutable)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = -1;
LABEL_7:
  if (v6 < v7)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v6);
    if (ValueAtIndex)
    {
      v9 = CFRetain(ValueAtIndex);
    }

    else
    {
      v9 = 0;
    }

    Value = CFDictionaryGetValue(v9, @"RouteUID");
    if (Value)
    {
      v11 = CFRetain(Value);
    }

    else
    {
      v11 = 0;
    }

    v12 = CFDictionaryGetValue(v9, @"PortNumber");
    if (v12)
    {
      cf = CFRetain(v12);
    }

    else
    {
      cf = 0;
    }

    idx = v6;
    v13 = v6 + 1;
    while (1)
    {
      v14 = v13;
      if (Mutable)
      {
        v15 = CFArrayGetCount(Mutable);
      }

      else
      {
        v15 = 0;
      }

      if (v14 >= v15)
      {
LABEL_47:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v6 = idx - (v14 < v15) + 1;
        if (!Mutable)
        {
          goto LABEL_6;
        }

LABEL_5:
        v7 = CFArrayGetCount(Mutable) - 1;
        goto LABEL_7;
      }

      v16 = CFArrayGetValueAtIndex(Mutable, v14);
      v17 = v16 ? CFRetain(v16) : 0;
      v18 = CFDictionaryGetValue(v17, @"RouteUID");
      if (!v18)
      {
        break;
      }

      v19 = CFRetain(v18);
      v20 = v19;
      v21 = 1;
      if (v11 && v19)
      {
        location = CFStringFind(v19, v11, 0).location;
        v23 = CFStringFind(v11, v20, 0).location;
        if (FigCFEqual() || location != -1 || v23 != -1)
        {
          if (location == -1)
          {
            v24 = v9;
            v25 = v20;
          }

          else
          {
            v24 = v17;
            v25 = v11;
          }

          CFDictionarySetValue(v24, @"RouteUID", v25);
          if (cf)
          {
            CFDictionaryApplyFunction(v17, figEndpointDescriptorUtility_addMissingEntriesApplierFunction, v9);
            v26 = v14;
          }

          else
          {
            CFDictionaryApplyFunction(v9, figEndpointDescriptorUtility_addMissingEntriesApplierFunction, v17);
            v26 = idx;
          }

          CFArrayRemoveValueAtIndex(Mutable, v26);
          v21 = 0;
          if (!v17)
          {
            goto LABEL_37;
          }

LABEL_36:
          CFRelease(v17);
          goto LABEL_37;
        }

        goto LABEL_34;
      }

LABEL_35:
      if (v17)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (v20)
      {
        CFRelease(v20);
      }

      v13 = v14 + 1;
      if ((v21 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v20 = 0;
LABEL_34:
    v21 = 1;
    goto LABEL_35;
  }

  return Mutable;
}

__CFArray *vaemCopyEndpointsForListOfPorts(const __CFArray *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      PortAtIndex = CMSMVAUtility_GetPortAtIndex(a1, i);
      v9 = vaeCopyNameForPort(PortAtIndex);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(PortAtIndex);
      if (!a2 || (v11 = PortTypeFromPortID, !FigCFEqual()) && v11 != 1885433975 && v11 != 1885433964)
      {
        v12 = vaemCopyEndpointForPort(PortAtIndex);
        if (v12)
        {
          v13 = v12;
          CFArrayAppendValue(Mutable, v12);
          CFRelease(v13);
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  if (Mutable && !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t vaeGetPortTypeFromPortID(uint64_t result)
{
  outData = 0;
  if (result)
  {
    *&inAddress.mSelector = 0x676C6F6270747970;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectGetPropertyData(result, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      return 0;
    }

    else
    {
      return outData;
    }
  }

  return result;
}

const void *vaemCopyEndpointForPort(unsigned int a1)
{
  valuePtr = a1;
  if (!a1)
  {
    return 0;
  }

  if (vaemInitializePortEndpointCache_onceToken != -1)
  {
    vaemCopyEndpointForPort_cold_1();
  }

  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(qword_1EB75D0D0, v1);
  if (Value)
  {
    v3 = Value;
  }

  else
  {
    vaemAddToPortEndpointCache(valuePtr);
    v3 = CFDictionaryGetValue(qword_1EB75D0D0, v1);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  CFRetain(v3);
LABEL_9:
  FigSimpleMutexUnlock();
  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

__CFArray *MXEndpointDescriptorCopyReducedForManager(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v6 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    FigCFDictionaryGetValue();
    if (FigCFEqual())
    {
      if (a2)
      {
        ValueAtIndex = FigCFDictionaryGetValue();
      }

      CFArrayAppendValue(Mutable, ValueAtIndex);
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

void FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints_cold_1(CFArrayRef theArray, uint64_t a2, uint64_t a3, __CFArray *a4)
{
  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    v10 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(ValueAtIndex, a2);
    if (v10)
    {
      v11 = v10;
      MutableCopy = MXCFDictionaryCreateMutableCopy(v10);
      CFArrayAppendValue(a4, MutableCopy);
      CFRelease(v11);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    ++v8;
  }

  while (a3 != v8);
}

__CFDictionary *FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(uint64_t a1, uint64_t a2)
{
  number[16] = *MEMORY[0x1E69E9840];
  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D8]))
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!a1)
    {
      return Mutable;
    }

    value = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E69621E8], v4, &value);
      if (value)
      {
        CFDictionarySetValue(Mutable, @"RouteName", value);
        CFRelease(value);
        value = 0;
      }
    }

    cf = 0;
    v8 = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(v8, *MEMORY[0x1E69620F8], v4, &cf);
    }

    if (cf)
    {
      CFDictionarySetValue(Mutable, @"RouteUID", cf);
      CFRelease(cf);
      cf = 0;
    }

    v151 = 0;
    v10 = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v13 = *(VTable + 8);
    v12 = VTable + 8;
    v14 = *(v13 + 48);
    if (v14)
    {
      v12 = v14(v10, *MEMORY[0x1E69621B0], v4, &v151);
    }

    if (v151)
    {
      CFDictionarySetValue(Mutable, @"MACAddress", v151);
      CFRelease(v151);
      v151 = 0;
    }

    v15 = &kMXSessionReporterIDLog_IsSideKickSession;
    if (!Mutable)
    {
      v42 = 0x1F289CEF0;
      goto LABEL_146;
    }

    v16 = *MEMORY[0x1E695E4D0];
    OUTLINED_FUNCTION_3_9(v12, @"RouteSupportsAudio");
    v154 = *MEMORY[0x1E695E4C0];
    v17 = v154;
    v18 = FigEndpointGetCMBaseObject();
    v19 = CMBaseObjectGetVTable();
    v22 = *(v19 + 8);
    v21 = v19 + 8;
    v23 = *(v22 + 48);
    v149 = v17;
    v24 = v17;
    if (v23)
    {
      v21 = v23(v18, 0x1F289D010, v4, &v154);
      v24 = v154;
    }

    v25 = &kFigVAEndpointProperty_FigOutputDeviceName;
    if (v24 == v16)
    {
      v25 = &kFigVAEndpointProperty_FigInputDeviceName;
    }

    OUTLINED_FUNCTION_0_23(v21, *v25, v20, @"AudioRouteName");
    v27 = v154;
    if (v154)
    {
      CFRelease(v154);
      v154 = 0;
    }

    OUTLINED_FUNCTION_0_23(v27, *MEMORY[0x1E6962190], v26, @"IsWHAGroupable");
    v160 = 0;
    v28 = FigEndpointGetCMBaseObject();
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29)
    {
      v29(v28, 0x1F289CDB0, v4, &v160);
      if (v160)
      {
        CFDictionarySetValue(Mutable, @"PortNumber", v160);
        if (v160)
        {
          CFRelease(v160);
          v160 = 0;
        }
      }
    }

    v158 = 0;
    *type = 0;
    v156 = 0;
    v157 = 0;
    if (a2)
    {
      v30 = [MXSessionManagerBase copySessionWithAudioSessionID:a2];
      v31 = [v30 isMemberOfClass:objc_opt_class()];
      if (v31)
      {
        v33 = OUTLINED_FUNCTION_8_5(v31, @"AudioCategory", v32, type);
        v35 = OUTLINED_FUNCTION_8_5(v33, @"AudioMode", v34, &v158);
        v37 = OUTLINED_FUNCTION_8_5(v35, @"AllowedRouteTypes", v36, &v157);
        OUTLINED_FUNCTION_8_5(v37, @"ActivationContext", v38, &v156);
        v39 = [v30 prefersBluetoothHighQualityContentCapture];
      }

      else
      {
        v39 = 0;
      }

      v43 = v157;
    }

    else
    {
      *type = CMSMUtility_CopyNonNullCurrentlyActiveCategory();
      v158 = CMSMUtility_CopyNonNullCurrentlyActiveMode();
      v43 = CMSMUtility_CopyCurrentAllowedPortTypes();
      v157 = v43;
      v44 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveCoreSessionControllingRouting];
      v39 = [v44 prefersBluetoothHighQualityContentCapture];
    }

    if (v43 || (v39 & 1) != 0)
    {
      v155 = 0;
      cmsmCopyVADPickedRouteDescriptionForRouteConfiguration(*type, v158, v156, v43, v39, &v155);
      v45 = 0;
      v52 = v155;
      if (v155)
      {
LABEL_53:
        v53 = [objc_msgSend(v52 objectForKey:{@"RouteUID", "isEqualToString:", -[__CFDictionary objectForKey:](Mutable, "objectForKey:", @"RouteUID"}];
        if (v53)
        {
          OUTLINED_FUNCTION_3_9(v53, @"RouteCurrentlyPicked");
        }
      }
    }

    else
    {
      v45 = cmsmCopyPickableRoutesForRouteConfiguration(*type, v158, v156, 0, 0);
      v155 = 0;
      memset(valuePtr, 0, sizeof(valuePtr));
      v46 = [(__CFArray *)v45 countByEnumeratingWithState:valuePtr objects:number count:16];
      if (v46)
      {
        v48 = v46;
        v49 = **&valuePtr[1];
LABEL_43:
        v50 = 0;
        while (1)
        {
          if (**&valuePtr[1] != v49)
          {
            objc_enumerationMutation(v45);
          }

          v51 = *(*(&valuePtr[0] + 1) + 8 * v50);
          if ([objc_msgSend(v51 objectForKey:{@"RouteCurrentlyPicked", "BOOLValue"}])
          {
            break;
          }

          if (v48 == ++v50)
          {
            v48 = [(__CFArray *)v45 countByEnumeratingWithState:valuePtr objects:number count:16];
            if (v48)
            {
              goto LABEL_43;
            }

            v15 = &kMXSessionReporterIDLog_IsSideKickSession;
            goto LABEL_55;
          }
        }

        v52 = v51;
        v155 = v52;
        v15 = &kMXSessionReporterIDLog_IsSideKickSession;
        if (!v52)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

LABEL_55:
    if (v45)
    {
      CFRelease(v45);
    }

    if (v155)
    {
      CFRelease(v155);
      v155 = 0;
    }

    if (*type)
    {
      CFRelease(*type);
      *type = 0;
    }

    if (v158)
    {
      CFRelease(v158);
      v158 = 0;
    }

    if (v157)
    {
      CFRelease(v157);
      v157 = 0;
    }

    v54 = v156;
    if (v156)
    {
      CFRelease(v156);
    }

    OUTLINED_FUNCTION_0_23(v54, 0x1F289CEB0, v47, @"RouteSubtype");
    v160 = 0;
    v42 = v15[467];
    v55 = FigEndpointGetCMBaseObject();
    v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v56)
    {
      v56(v55, v42, v4, &v160);
    }

    PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(v160);
    v59 = v160;
    if (v160)
    {
      CFRelease(v160);
      v160 = 0;
    }

    OUTLINED_FUNCTION_0_23(v59, 0x1F289D1B0, v57, @"SupportsSharePlay");
    OUTLINED_FUNCTION_0_23(v60, 0x1F289CE10, v61, @"SoftwareVolumeEnabled");
    OUTLINED_FUNCTION_5_8();
    v62 = v62 || PortFromCFNumber == 1885892706;
    if (!v62 && PortFromCFNumber != 1886152041 && PortFromCFNumber != 1886216820 && PortFromCFNumber != 1886152047)
    {
      CFDictionarySetValue(Mutable, @"IsBTRoute", v149);
      CFDictionarySetValue(Mutable, @"PreferredExternalRouteDetails_InEarDetectSupported", v149);
      if (PortFromCFNumber == 1885565807)
      {
        OUTLINED_FUNCTION_3_9(v144, @"IsContinuityScreenOutput");
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
        if (!v62)
        {
          if (PortFromCFNumber == 1886614639)
          {
            OUTLINED_FUNCTION_3_9(v145, @"PreferredExternalRouteDetails_IsActive");
            OUTLINED_FUNCTION_3_9(v147, @"IsPreferredExternalRoute");
          }

          goto LABEL_146;
        }
      }

      OUTLINED_FUNCTION_0_23(v145, 0x1F289D1D0, v146, @"RouteModel");
LABEL_146:
      v150 = 0;
      v134 = FigEndpointGetCMBaseObject();
      v135 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v135)
      {
        v135(v134, v42, v4, &v150);
        v136 = v150;
      }

      else
      {
        v136 = 0;
      }

      v137 = CMSMVAUtility_GetPortFromCFNumber(v136);
      if (v150)
      {
        CFRelease(v150);
        v150 = 0;
      }

      if (v137 == 1885433964)
      {
        v138 = FigRoutingManagerCopyLocalAirPlayEndpoint();
        if (v138)
        {
          v139 = v138;
          figEndpointDescriptorUtility_addAirPlayDetailsToDescriptor(v138, Mutable);
          CFRelease(v139);
        }

        else
        {
          OUTLINED_FUNCTION_2_14();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v141 = v160;
          v142 = type[0];
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
          {
            v143 = v141;
          }

          else
          {
            v143 = v141 & 0xFFFFFFFE;
          }

          if (v143)
          {
            LODWORD(valuePtr[0]) = 136315138;
            *(valuePtr + 4) = "figEndpointDescriptorUtility_addAirPlayDetailsForLowLatencyRoute";
            _os_log_send_and_compose_impl(v143, 0, number, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v142, "-FigEndpointDescriptorUtility- %s: AP endpoint manager didn't return any local endpoints.", valuePtr);
          }

          OUTLINED_FUNCTION_6_9();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      return Mutable;
    }

    CFDictionarySetValue(Mutable, @"IsBTRoute", v16);
    OUTLINED_FUNCTION_0_23(v66, 0x1F289CE30, v67, @"BTDetails_PartnerRoutePresent");
    OUTLINED_FUNCTION_0_23(v68, 0x1F289CE50, v69, @"BTDetails_PartnerRouteRoutable");
    if (PortFromCFNumber == 1886152047)
    {
      OUTLINED_FUNCTION_0_23(v70, 0x1F289CE70, v71, @"BTDetails_SiblingRoutePresent");
    }

    OUTLINED_FUNCTION_0_23(v70, *MEMORY[0x1E6962110], v71, @"IsBluetoothShareable");
    number[0] = 0;
    v72 = FigEndpointGetCMBaseObject();
    v73 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v73)
    {
      goto LABEL_97;
    }

    v73(v72, 0x1F289CFD0, v4, number);
    if (!number[0])
    {
      goto LABEL_97;
    }

    *&valuePtr[0] = 0;
    CFNumberGetValue(number[0], kCFNumberSInt64Type, valuePtr);
    OUTLINED_FUNCTION_1_16();
    if (v62)
    {
      v74 = kFigEndpointDescriptor_BTDetails_EndpointType_HearingAid;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v62)
    {
      v74 = kFigEndpointDescriptor_BTDetails_EndpointType_Headphones;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v62)
    {
      v74 = kFigEndpointDescriptor_BTDetails_EndpointType_Other;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v62)
    {
      v74 = kFigEndpointDescriptor_BTDetails_EndpointType_Speakers;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v62)
    {
      v74 = kFigEndpointDescriptor_BTDetails_EndpointType_TTY;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v62)
    {
      v74 = kFigEndpointDescriptor_BTDetails_EndpointType_Vehicle;
    }

    else
    {
LABEL_97:
      v74 = kFigEndpointDescriptor_BTDetails_EndpointType_Unspecified;
    }

LABEL_98:
    CFDictionarySetValue(Mutable, @"BTDetails_EndpointType", *v74);
    v76 = number[0];
    if (number[0])
    {
      CFRelease(number[0]);
    }

    OUTLINED_FUNCTION_0_23(v76, *MEMORY[0x1E6962288], v75, @"BTDetails_SupportedListeningModes");
    OUTLINED_FUNCTION_0_23(v77, *MEMORY[0x1E69621A8], v78, @"BTDetails_ListeningMode");
    OUTLINED_FUNCTION_0_23(v79, *MEMORY[0x1E69622B0], v80, @"SupportsHeadTrackedSpatialAudio");
    OUTLINED_FUNCTION_0_23(v81, *MEMORY[0x1E69620E0], v82, @"HeadTrackedSpatialAudioIsActive");
    OUTLINED_FUNCTION_0_23(v83, *MEMORY[0x1E6961FA8], v84, @"AllowsHeadTrackedSpatialAudio");
    OUTLINED_FUNCTION_0_23(v85, *MEMORY[0x1E69620E8], v86, @"HeadTrackedSpatialAudioMode");
    number[0] = 0;
    v87 = FigEndpointGetCMBaseObject();
    v88 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v88)
    {
      v88(v87, 0x1F289D090, v4, number);
      v89 = number[0];
    }

    else
    {
      v89 = 0;
    }

    if (v89 == v16)
    {
      OUTLINED_FUNCTION_3_9(v89, @"IsPreferredExternalRoute");
      OUTLINED_FUNCTION_0_23(v90, 0x1F289CE90, v91, @"BTDetails_IsBTManaged");
      if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote())
      {
        v92 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
        v93 = CMSM_IDSConnection_CopyNearbyPairedDeviceInfo();
        if (v93)
        {
          CFArrayAppendValue(v92, v93);
          CFDictionarySetValue(Mutable, @"OtherDevicesConnected", v92);
        }

        FakeSharedAudioRouteAsPicked = CMSM_GetFakeSharedAudioRouteAsPicked();
        if (FakeSharedAudioRouteAsPicked)
        {
          OUTLINED_FUNCTION_3_9(FakeSharedAudioRouteAsPicked, @"IsCurrentlyPickedOnPairedDevice");
        }

        if (v93)
        {
          CFRelease(v93);
        }

        if (v92)
        {
          CFRelease(v92);
        }
      }

      v89 = number[0];
    }

    if (v89)
    {
      CFRelease(v89);
    }

    number[0] = 0;
    v95 = FigEndpointGetCMBaseObject();
    v96 = CMBaseObjectGetVTable();
    v98 = *(v96 + 8);
    v97 = v96 + 8;
    v99 = *(v98 + 48);
    if (v99)
    {
      v97 = (v99)(v95, 0x1F289D0B0, v4, number);
      v99 = number[0];
    }

    if (v99 == v16)
    {
      OUTLINED_FUNCTION_3_9(v97, @"IsPreferredExternalRoute");
      figEndpointDescriptorUtility_setDescriptorKey(a1, 0x1F289D0B0, Mutable, @"PreferredExternalRouteDetails_InEarDetectSupported");
      OUTLINED_FUNCTION_0_23(v104, 0x1F289D0F0, v105, @"PreferredExternalRouteDetails_InEarDetectEnabled");
      OUTLINED_FUNCTION_0_23(v106, 0x1F289D0D0, v107, @"PreferredExternalRouteDetails_IsActive");
    }

    else
    {
      *&valuePtr[0] = 0;
      v100 = FigEndpointGetCMBaseObject();
      v102 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v102)
      {
        v102(v100, 0x1F289D090, v4, valuePtr);
        v103 = *&valuePtr[0];
      }

      else
      {
        v103 = 0;
      }

      if (v103 == v16)
      {
        CFDictionarySetValue(Mutable, @"PreferredExternalRouteDetails_InEarDetectSupported", v149);
        CFDictionarySetValue(Mutable, @"PreferredExternalRouteDetails_IsActive", v149);
        v103 = *&valuePtr[0];
      }

      if (v103)
      {
        CFRelease(v103);
      }
    }

    v108 = number[0];
    if (number[0])
    {
      CFRelease(number[0]);
    }

    OUTLINED_FUNCTION_0_23(v108, 0x1F289BA90, v101, @"BTDetails_AlternateTransport");
    if (PortFromCFNumber == 1886216820)
    {
      OUTLINED_FUNCTION_3_9(v109, @"BTDetails_IsHFPRoute");
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
      if (v62)
      {
        OUTLINED_FUNCTION_3_9(v110, @"BTDetails_IsHFPRoute");
        OUTLINED_FUNCTION_0_23(v116, 0x1F289D070, v117, @"BTDetails_SupportsLiveListen");
        OUTLINED_FUNCTION_0_23(v118, 0x1F289CF70, v119, @"BTDetails_IsAvailableForVoicePrompts");
        OUTLINED_FUNCTION_0_23(v120, 0x1F289D110, v121, @"BTDetails_SupportsStereoHFP");
        IsPersonalTranslatorEnabled = MX_FeatureFlags_IsPersonalTranslatorEnabled(v122, v123);
        if (IsPersonalTranslatorEnabled)
        {
          OUTLINED_FUNCTION_0_23(IsPersonalTranslatorEnabled, 0x1F289D1F0, v124, @"BTDetails_SupportsFarFieldCapture");
          OUTLINED_FUNCTION_0_23(v125, 0x1F289D210, v126, @"BTDetails_IsFarFieldCaptureEnabled");
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
        if (v62)
        {
          OUTLINED_FUNCTION_3_9(IsPersonalTranslatorEnabled, @"BTDetails_IsA2DPRoute");
          number[0] = v149;
          v113 = FigEndpointGetCMBaseObject();
          v114 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v114)
          {
            v114(v113, 0x1F289CDD0, v4, number);
            v149 = number[0];
          }

          CFDictionarySetValue(Mutable, @"BTDetails_SupportsDoAP", v149);
          IsPersonalTranslatorEnabled = number[0];
          if (number[0] == v16)
          {
            OUTLINED_FUNCTION_0_23(number[0], 0x1F289CDF0, v115, @"BTDetails_SupportsSoftwareVolume");
            IsPersonalTranslatorEnabled = number[0];
          }

          if (IsPersonalTranslatorEnabled)
          {
            CFRelease(IsPersonalTranslatorEnabled);
          }
        }
      }
    }

    IsAirPodsStudioVoiceMicEnabled = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(IsPersonalTranslatorEnabled, v112);
    if (IsAirPodsStudioVoiceMicEnabled)
    {
      OUTLINED_FUNCTION_0_23(IsAirPodsStudioVoiceMicEnabled, 0x1F289D130, v128, @"BTDetails_HighQualityContentCaptureSupported");
      OUTLINED_FUNCTION_0_23(v129, 0x1F289D150, v130, @"BTDetails_HighQualityContentCaptureEnabled");
    }

    v131 = CFDictionaryGetValue(Mutable, @"RouteUID");
    v132 = FigRoutingManagerCopyEndpointWithDeviceID(v131, 1, *MEMORY[0x1E69618D8], 0);
    if (v132)
    {
      v133 = v132;
      figEndpointDescriptorUtility_addBTDetailsToDescriptor(v132, Mutable);
      CFRelease(v133);
    }

    goto LABEL_146;
  }

  Mutable = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyRouteDescriptorForEndpoint:"copyRouteDescriptorForEndpoint:", a1];
  if (!Mutable)
  {
    if (dword_1EB75DF60)
    {
      OUTLINED_FUNCTION_2_14();
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v40, type[0]))
      {
        v41 = v160;
      }

      else
      {
        v41 = v160 & 0xFFFFFFFE;
      }

      if (v41)
      {
        LODWORD(valuePtr[0]) = 136315394;
        *(valuePtr + 4) = "FigEndpointDescriptorUtility_CopyDescriptorForEndpoint";
        WORD6(valuePtr[0]) = 2048;
        *(valuePtr + 14) = a1;
        _os_log_send_and_compose_impl(v41, 0, number, 128, &dword_1B17A2000, v40, type[0], "-FigEndpointDescriptorUtility- %s: The routeDescriptor requested for endpoint [%p] is likely not available via discovery. Building a new one.", valuePtr, 22);
      }

      OUTLINED_FUNCTION_6_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return FigEndpointDescriptorUtility_CopyDescriptorForNonVirtualAudioEndpoint(a1);
  }

  return Mutable;
}

uint64_t OUTLINED_FUNCTION_3_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

_xpc_connection_s *OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  a12 = 0;
  *v37 = 0u;
  v37[1] = 0u;
  v37[2] = 0u;
  v37[3] = 0u;
  v37[4] = 0u;
  v37[5] = 0u;
  v37[6] = 0u;
  v37[7] = 0u;

  return volumeControllerServer_getClientInfo(v36, &a12, &a36);
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_3_9(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_3_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return CMNotificationCenterPostNotification();
}

id CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(unsigned int a1)
{
  v1 = -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager vadOutputPortTypeToFigOutputDeviceNameDict], "objectForKey:", a1);
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

NSString *CMSMUtility_CopyNonNullCurrentlyActiveCategory()
{
  result = CMSMUtility_CopyCurrentlyActiveCategory();
  if (!result)
  {

    return CFRetain(@"Audio/Video");
  }

  return result;
}

NSString *CMSMUtility_CopyCurrentlyActiveMode()
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
      for (i = 0; i != v1; i = (i + 1))
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if (objc_msgSend_isActive(v4) && !-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v4 audioCategory]))
        {
          v1 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioMode];
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

NSString *CMSMUtility_CopyNonNullCurrentlyActiveMode()
{
  result = CMSMUtility_CopyCurrentlyActiveMode();
  if (!result)
  {

    return CFRetain(@"Default");
  }

  return result;
}

NSArray *CMSMUtility_CopyCurrentAllowedPortTypes()
{
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager currentAllowedPortTypes];

  return v0;
}

id vaeCopyFigOutputDeviceNameFromVADPort(uint64_t a1)
{
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);

  return CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
}

const __CFNumber *CMSMVAUtility_GetPortFromCFNumber(const __CFNumber *result)
{
  if (result)
  {
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

CFStringRef vaeCopyRouteSubtypeFromVADPort(AudioObjectID a1)
{
  outData = 0;
  if (!a1)
  {
    return 0;
  }

  *&inAddress.mSelector = 0x676C6F6270737562;
  inAddress.mElement = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData) || !outData)
  {
    return 0;
  }

  LOBYTE(inAddress.mSelector) = HIBYTE(outData);
  BYTE1(inAddress.mSelector) = BYTE2(outData);
  BYTE2(inAddress.mSelector) = BYTE1(outData);
  HIBYTE(inAddress.mSelector) = outData;
  LOBYTE(inAddress.mScope) = 0;
  return CFStringCreateWithCString(*MEMORY[0x1E695E480], &inAddress, 0);
}

BOOL vaeDoesPortSupportSharePlay(AudioObjectID a1)
{
  v2 = 1;
  ioDataSize = 4;
  outData = 1;
  *&inAddress.mSelector = 0x676C6F6270737073;
  inAddress.mElement = 0;
  if (AudioObjectHasProperty(a1, &inAddress) && !AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return outData != 0;
  }

  return v2;
}

uint64_t vaeDoesPortSupportSoftwareVolume(AudioObjectID a1)
{
  v7 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"newsbolg";
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
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

uint64_t OUTLINED_FUNCTION_7_3()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return [v16 countByEnumeratingWithState:va objects:v17 - 216 count:{16, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_7_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

id MXCFDictionaryCreateMutableCopy(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF90];
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF90]);

    return [v3 initWithDictionary:a1 copyItems:1];
  }

  else
  {

    return objc_alloc_init(v2);
  }
}

uint64_t volumeControllerRemote_CanSetMasterVolumeOfRoutingContext()
{
  OUTLINED_FUNCTION_0_13();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, value, v36, xdict) || (OUTLINED_FUNCTION_8(), v5 = FigXPCCreateBasicMessage(), v5) || OUTLINED_FUNCTION_31(v5, v6, v7, v8, v9, v10, v11, v12, valuea))
    {
      OUTLINED_FUNCTION_21();
    }

    else
    {
      xpc_dictionary_set_uint64(xdicta, kFigVolumeControllerXPCMsgParam_RoutingContext, valueb);
      v13 = OUTLINED_FUNCTION_11_2();
      v21 = OUTLINED_FUNCTION_22(v13, v14, v15, v16, v17, v18, v19, v20, valueb, v37);
      if (!v0)
      {
        v22 = xpc_dictionary_get_BOOL(v21, kFigVolumeControllerXPCMsgParam_CanSetMasterVolume);
        OUTLINED_FUNCTION_32(v22, v23, v24, v25, v26, v27, v28, v29, valuec, v38);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29(*(v1 + 3512), v30, "volumeControllerRemote_CanSetMasterVolumeOfRoutingContext");
  return v0;
}

uint64_t volumeControllerServer_handleCanSetMasterVolumeMessage()
{
  OUTLINED_FUNCTION_0_16();
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    v11 = v2;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 40))
  {
    v3 = OUTLINED_FUNCTION_9_4();
    v11 = v4(v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_CanSetMasterVolume, v5, v6, v7, v8, v9, v10, cf, v14, v15, v16, v17);
    }
  }

  else
  {
    v11 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t volumeController_GetMainVolumeControlTypeForRoutingContext(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 4294949706;
  if (a2 && a3)
  {
    v14 = 0;
    FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v14);
    theArray = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v14, &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) < 1)
      {
        v3 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, *MEMORY[0x1E69626B0]))
        {
          AirPlayMainVolumeControlType = volumeController_getAirPlayMainVolumeControlType(ValueAtIndex);
          v3 = 0;
        }

        else
        {
          cf = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v8)
          {
            v3 = v8(CMBaseObject, *MEMORY[0x1E6962348], *MEMORY[0x1E695E480], &cf);
            v9 = cf;
            if (v3)
            {
              v10 = 1;
            }

            else
            {
              v10 = cf == 0;
            }

            if (v10)
            {
              AirPlayMainVolumeControlType = 3;
            }

            else
            {
              AirPlayMainVolumeControlType = FigCFNumberGetSInt64();
              v9 = cf;
            }

            if (v9)
            {
              CFRelease(v9);
            }
          }

          else
          {
            v3 = 4294954514;
            AirPlayMainVolumeControlType = 3;
          }
        }

        *a3 = AirPlayMainVolumeControlType;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_10_0@<X0>(__int128 a1@<0:X6, 8:X7>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, __int128 time2a, uint64_t time2_16, uint64_t a7, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a11, __int128 a12, uint64_t a13)
{
  time1_16 = a2;
  time2a = a12;
  time2_16 = a13;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_10_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return volumeControllerRemote_getObjectID(a1, va);
}

BOOL OUTLINED_FUNCTION_35(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_14_0(void *value)
{

  CFArrayAppendValue(v1, value);
}

const void *OUTLINED_FUNCTION_14_2(uint64_t a1, const void *a2)
{

  return singletonVolumeController_copyRemoteRoutingContext(a2);
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteXPCRoutingContext_GetObjectID(a1, &a10);
}

BOOL OUTLINED_FUNCTION_4_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_14_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors(uint64_t a1, uint64_t a2)
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
  v9[2] = __FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  if (!byte_1EB75CFA8)
  {
    v4 = 0;
  }

  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors", "FigRoutingManagerContextUtilities.m", 5240, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_CopyRoutingContextUUID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954296;
  }

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
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingManagerContextUtilities_CopyRoutingContextUUID_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v4 = 0;
  }

  v8[4] = v4;
  v8[5] = a1;
  v8[6] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyRoutingContextUUID", "FigRoutingManagerContextUtilities.m", 2579, 0, 0, v6, v8);
  return 0;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return FigXPCMessageCopyCFString();
}

id OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return vaemCopyConnectedInputPortsForDefaultVADFromDeviceListWithRouteConfiguration(v1, v2, v3, a1);
}

const void *OUTLINED_FUNCTION_15_2(uint64_t a1, const void *a2)
{

  return singletonVolumeController_copyRemoteRoutingContext(a2);
}

void OUTLINED_FUNCTION_15_3(const char *a1@<X1>, int a2@<W8>)
{

  xpc_dictionary_set_BOOL(v2, a1, a2 != 0);
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{

  return MEMORY[0x1EEDBD0E8](a1, 0, v1);
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t volumeController_IsMainVolumeControlSupportedForRoutingContext(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v4 = 4294949706;
  if (!a2 || !a3)
  {
    return v4;
  }

  v20 = 0;
  v21 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v21);
  ContextType = FigRoutingManagerContextUtilities_GetContextType(v21);
  if (ContextType != 13)
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v21, theArray);
    if (theArray[0])
    {
      if (CFArrayGetCount(theArray[0]) < 1)
      {
        v4 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 0);
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, *MEMORY[0x1E69626B0]))
        {
          isAirPlayMainVolumeSupported = volumeController_isAirPlayMainVolumeSupported(ValueAtIndex);
          v4 = 0;
        }

        else
        {
          v16 = *MEMORY[0x1E695E4C0];
          *cf = *MEMORY[0x1E695E4C0];
          CMBaseObject = FigEndpointGetCMBaseObject();
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v18)
          {
            v4 = v18(CMBaseObject, *MEMORY[0x1E69621C8], *MEMORY[0x1E695E480], cf);
            v16 = *cf;
          }

          else
          {
            v4 = 4294954514;
          }

          isAirPlayMainVolumeSupported = v16 == *MEMORY[0x1E695E4D0];
          if (v16)
          {
            CFRelease(v16);
          }
        }

        *a3 = isAirPlayMainVolumeSupported;
      }

      if (theArray[0])
      {
        CFRelease(theArray[0]);
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (MX_FeatureFlags_IsSystemInputPickerEnabled(ContextType, v7))
  {
    if (!FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]))
    {
      volumeController_IsMainVolumeControlSupportedForRoutingContext_cold_1(theArray);
      v4 = LODWORD(theArray[0]);
      goto LABEL_28;
    }

    v8 = FigEndpointManagerGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(v8, 0x1F289B650, *MEMORY[0x1E695E480], &v20);
      if (!v10)
      {
        *a3 = [v20 BOOLValue];
        if (dword_1EB75DEA0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_27:
        v4 = 0;
        goto LABEL_28;
      }

      v14 = v10;
    }

    else
    {
      v14 = 4294954514;
    }

    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB75DE98, v14, "-FigVolumeController-", 3557, v3);
  }

  else
  {
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB75DE98, 4294954315, "-FigVolumeController-", 3564, v3);
  }

  v4 = v15;
LABEL_28:
  if (v21)
  {
    CFRelease(v21);
    v21 = 0;
  }

  return v4;
}

uint64_t routingContextRemoteXPC_CopySelectedRouteDescriptors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_14_4(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v22, v23);
  if (v9 || (OUTLINED_FUNCTION_9_0(), v9 = FigXPCCreateBasicMessage(), v9) || (OUTLINED_FUNCTION_8(), v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v9))
  {
    v8 = v9;
  }

  else
  {
    v10 = FigXPCMessageCopyCFArray();
    OUTLINED_FUNCTION_10_4(v10, v11, v12, v13, v14, v15, v16, v17, v20);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t FigRoutingContextXPCHandleCopySelectedRouteDescriptorsMessage(uint64_t a1)
{
  if (*(*(OUTLINED_FUNCTION_30_1(a1) + 16) + 64))
  {
    v2 = OUTLINED_FUNCTION_26_1();
    v4 = v3(v2);
    if (v4)
    {
      v12 = v4;
    }

    else
    {
      if (!*(v1 + 3))
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (cf)
        {
          Count = CFArrayGetCount(cf);
          if (Count >= 1)
          {
            v7 = Count;
            for (i = 0; i != v7; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
              v10 = frcXPCServer_copySanitizedRouteDescriptor(ValueAtIndex);
              CFArrayAppendValue(Mutable, v10);
              if (v10)
              {
                CFRelease(v10);
              }
            }
          }
        }

        v11 = cf;
        cf = Mutable;
        if (Mutable)
        {
          CFRetain(Mutable);
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

      FigXPCMessageSetCFArray();
      v12 = 0;
    }
  }

  else
  {
    v12 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t FigVolumeControllerGetTypeID()
{
  if (_MergedGlobals_9 != -1)
  {
    FigVolumeControllerGetClassID_cold_1();
  }

  v1 = qword_1ED6D2F88;

  return MEMORY[0x1EEDBB488](v1);
}

uint64_t routingContext_CopySelectedRouteDescriptors(uint64_t a1, CFTypeRef *a2)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (IsOperationOnSystemInputContextAllowedInternal)
  {
    return IsOperationOnSystemInputContextAllowedInternal;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    CFRetain(*(DerivedStorage + 8));
  }

  IsOperationOnSystemInputContextAllowedInternal = FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors(v6, &cf);
  if (IsOperationOnSystemInputContextAllowedInternal)
  {
    if (!cf)
    {
      goto LABEL_9;
    }

    CFRelease(cf);
  }

  else
  {
    *a2 = cf;
  }

  cf = 0;
LABEL_9:
  v7 = objc_autoreleasePoolPush();
  [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_CopySelectedRouteDescriptors" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    CFRelease(v6);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t vaeIsPortWHAGroupable(uint64_t a1)
{
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (CMSMDeviceState_ItsAHomePod() && PortTypeFromPortID == 1886613611)
  {
    return 1;
  }

  result = 0;
  if (CFPreferenceNumberWithDefault && PortTypeFromPortID == 1886613611)
  {
    result = 1;
    if ((vaeIsPortWHAGroupable_didLog & 1) == 0)
    {
      vaeIsPortWHAGroupable_didLog = 1;
    }
  }

  return result;
}

void figEndpointDescriptorUtility_setDescriptorKey(uint64_t a1, uint64_t a2, __CFDictionary *a3, const void *a4)
{
  if (a3)
  {
    value = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, a2, *MEMORY[0x1E695E480], &value);
      v9 = value;
      if (value && value != *MEMORY[0x1E695E738])
      {
        CFDictionarySetValue(a3, a4, value);
        v9 = value;
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

uint64_t __FigRouteDiscovererGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigRouteDiscovererClassDesc, ClassID, 1, &sFigRouteDiscovererClassID);
}

uint64_t volumeControllerRemote_GetVolumeControlTypeOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4)
  {
    v5 = v2;
    if (v2)
    {
      if (OUTLINED_FUNCTION_10_2(v3, v17, v19, v21) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
      {
        OUTLINED_FUNCTION_12_3();
      }

      else
      {
        v6 = OUTLINED_FUNCTION_11_2();
        v14 = OUTLINED_FUNCTION_16_2(v6, v7, v8, v9, v10, v11, v12, v13, v18, v20);
        if (!v0)
        {
          *v5 = xpc_dictionary_get_uint64(v14, kFigVolumeControllerXPCMsgParam_GetEndpointVolumeControlType);
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_23(*(v1 + 3512), v15, "volumeControllerRemote_GetVolumeControlTypeOfEndpointWithID");
  return v0;
}

uint64_t routingContextRemoteXPC_CopyPredictedSelectedRouteDescriptor(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, v13);
  if (ObjectID || (OUTLINED_FUNCTION_9_0(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID) || (OUTLINED_FUNCTION_8(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID))
  {
    v2 = ObjectID;
  }

  else
  {
    v4 = FigXPCMessageCopyCFDictionary();
    OUTLINED_FUNCTION_10_4(v4, v5, v6, v7, v8, v9, v10, v11, 0);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

void sub_1B17C33C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t singletonVolumeController_GetVolumeControlTypeOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cfa)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v9 = OUTLINED_FUNCTION_4();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v11;
}

uint64_t routingContextResilientRemote_CopyPredictedSelectedRouteDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CopyPredictedSelectedRouteDescriptor_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t FigPredictedRouting_IsSupported(uint64_t a1)
{
  if (predictedRouting_initialize_onceToken == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  FigPredictedRouting_IsSupported_cold_1();
  if (!a1)
  {
    return 1;
  }

LABEL_3:
  result = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (result != 1)
  {
    return result == 3 && FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(a1) == 0;
  }

  return result;
}

uint64_t FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = v2;
    v6[7] = v1;
    v6[4] = v11;
    v6[5] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent", "FigRoutingManagerContextUtilities.m", 4917, 0, 0, v4, v6);
    v1 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v11, 8);
  }

  return v1;
}

void sub_1B17C36E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

BOOL FigPredictedRouting_IsPreemptivePortLogicEnabled()
{
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  IsPreemptiveConnectedBannerEnabled = MX_FeatureFlags_IsPreemptiveConnectedBannerEnabled();
  v2 = IsPreemptiveConnectedBannerEnabled;
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  return (MX_FeatureFlags_IsCorianderEnabled(IsPreemptiveConnectedBannerEnabled, v1) | v2) != 0;
}

uint64_t FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  v6 = FigXPCMessageCopyCFDictionary();
  if (v6)
  {
    v12 = v6;
    FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage_cold_1();
    goto LABEL_12;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v7)
  {
    v12 = 4294954514;
LABEL_16:
    FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage_cold_2();
    goto LABEL_12;
  }

  v8 = v7(a1, 0, &cf);
  if (v8)
  {
    v12 = v8;
    goto LABEL_16;
  }

  if (!*(a2 + 3))
  {
    v9 = frcXPCServer_copySanitizedRouteDescriptor(cf);
    v10 = v9;
    v11 = cf;
    cf = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  FigXPCMessageSetCFDictionary();
  v12 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t routingContext_CopyPredictedSelectedRouteDescriptor(uint64_t a1, uint64_t a2, void *a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  if (IsOperationOnSystemInputContextAllowedInternal)
  {
    return IsOperationOnSystemInputContextAllowedInternal;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a1, cf);
  ContextType = FigRoutingManagerContextUtilities_GetContextType(*(DerivedStorage + 8));
  if (ContextType != 13)
  {
    if (!FigPredictedRouting_IsSupported(cf[0]) || ![+[MXAudioAccessoryServices isAnyManagedDeviceConnected]&& !FigPredictedRouting_IsPreemptivePortChanged() sharedInstance]
    {
      if (a3)
      {
        *a3 = 0;
      }

      goto LABEL_19;
    }

    v11 = FigPredictedRouting_CopySelectedRouteDescriptor(*(DerivedStorage + 8));
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (MX_FeatureFlags_IsSystemInputPickerEnabled(ContextType, v8))
  {
    Value = FigCFDictionaryGetValue();
    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = [+[MXUserPreferredInputRouteCache sharedInstance](MXUserPreferredInputRouteCache copyUserPreferredRoute:"copyUserPreferredRoute:", Value];
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_19;
  }

  if (!a3)
  {
    goto LABEL_19;
  }

  v11 = 0;
LABEL_16:
  *a3 = v11;
LABEL_19:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t FigRoutingManagerContextUtilities_GetContextType(uint64_t a1)
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
    v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v2 = 0;
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v3 = 504;
  }

  v4 = *v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FigRoutingManagerContextUtilities_GetContextType_block_invoke;
  v7[3] = &unk_1E7AE7A20;
  v7[6] = v2;
  v7[7] = a1;
  v7[4] = v12;
  v7[5] = &v8;
  MXDispatchSync("FigRoutingManagerContextUtilities_GetContextType", "FigRoutingManagerContextUtilities.m", 3992, 0, 0, v4, v7);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(v12, 8);
  return v5;
}

void sub_1B17C3C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t FigPredictedRouting_IsPreemptivePortChanged()
{
  if (!FigPredictedRouting_IsPreemptivePortLogicEnabled())
  {
    return 0;
  }

  FigSimpleMutexLock();
  v0 = gPRS_5;
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t MX_FeatureFlags_IsCorianderEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsCorianderEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsCorianderEnabled_cold_1();
  }

  return MX_FeatureFlags_IsCorianderEnabled_corianderEnabled;
}

uint64_t volumeControllerServer_handleGetEndpointVolumeControlTypeMessage()
{
  OUTLINED_FUNCTION_5_4();
  v1 = OUTLINED_FUNCTION_27_0();
  if (v1)
  {
    return v1;
  }

  if (!*(*(OUTLINED_FUNCTION_22_0() + 16) + 88))
  {
    return 4294954514;
  }

  v2 = OUTLINED_FUNCTION_14_3();
  v4 = v3(v2);
  if (!v4)
  {
    xpc_dictionary_set_uint64(v0, kFigVolumeControllerXPCMsgParam_GetEndpointVolumeControlType, 0);
  }

  return v4;
}

uint64_t volumeController_GetVolumeControlTypeForEndpointWithID(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 4294949706;
  }

  v11 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v11);
  cf = 0;
  if (!v11)
  {
    return 0;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, *MEMORY[0x1E6962348], *MEMORY[0x1E695E480], &cf);
    v7 = cf;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = cf == 0;
    }

    if (!v8)
    {
      *a3 = FigCFNumberGetUInt64();
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
      cf = 0;
    }
  }

  else
  {
    v6 = 4294954514;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v6;
}

void *volumeController_copyEndpointWithID(void *result, uint64_t a2, OpaqueFigEndpoint **a3)
{
  if (a3)
  {
    v43 = result;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    Count = CFDictionaryGetCount(*(DerivedStorage + 16));
    v6 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*(DerivedStorage + 16), v6, 0);
    if (Count >= 1)
    {
      v7 = 0;
      v8 = *MEMORY[0x1E69626B0];
      v42 = *MEMORY[0x1E6962270];
      v41 = *MEMORY[0x1E695E480];
      while (1)
      {
        v9 = v6[v7];
        theArray = 0;
        FigRoutingManagerContextUtilities_CopyPickedEndpoints(v9, &theArray);
        v10 = theArray;
        if (!theArray)
        {
          goto LABEL_39;
        }

        v11 = CFArrayGetCount(theArray);
        if (v11 < 1)
        {
          goto LABEL_20;
        }

        v12 = v11;
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
          if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, v8))
          {
            break;
          }

          if (v12 == ++v13)
          {
            goto LABEL_20;
          }
        }

        if (!ValueAtIndex || (v15 = CFRetain(ValueAtIndex)) == 0)
        {
LABEL_20:
          if (!theArray)
          {
            goto LABEL_39;
          }

          v23 = CFArrayGetCount(theArray);
          if (v23 < 1)
          {
            goto LABEL_28;
          }

          v24 = v23;
          v25 = 0;
          while (1)
          {
            v26 = CFArrayGetValueAtIndex(theArray, v25);
            if (volumeController_doesEndpointHaveSameID(v26, a2))
            {
              break;
            }

            if (v24 == ++v25)
            {
              goto LABEL_28;
            }
          }

          if (v26)
          {
            v27 = CFRetain(v26);
          }

          else
          {
LABEL_28:
            v27 = 0;
          }

          goto LABEL_36;
        }

        v16 = v15;
        if (FigRoutingManagerIsEndpointOfType(v15, v8))
        {
          v47 = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v18)
          {
            goto LABEL_32;
          }

          v18(CMBaseObject, v42, v41, &v47);
          if (v47)
          {
            break;
          }
        }

        v27 = 0;
LABEL_35:
        CFRelease(v16);
LABEL_36:
        if (theArray)
        {
          CFRelease(theArray);
        }

        if (v27)
        {
          goto LABEL_41;
        }

LABEL_39:
        if (++v7 == Count)
        {
          goto LABEL_40;
        }
      }

      v19 = CFArrayGetCount(v47);
      if (v19 < 1)
      {
        goto LABEL_32;
      }

      v20 = v19;
      v21 = 0;
      while (1)
      {
        v22 = CFArrayGetValueAtIndex(v47, v21);
        if (volumeController_doesEndpointHaveSameID(v22, a2))
        {
          break;
        }

        if (v20 == ++v21)
        {
          goto LABEL_32;
        }
      }

      if (v22)
      {
        v27 = CFRetain(v22);
      }

      else
      {
LABEL_32:
        v27 = 0;
      }

      if (v47)
      {
        CFRelease(v47);
      }

      goto LABEL_35;
    }

LABEL_40:
    v27 = 0;
LABEL_41:
    free(v6);
    *a3 = v27;
    FigSimpleMutexUnlock();
    result = v43;
    if (!*a3)
    {
      v28 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      v29 = CFDictionaryGetCount(*(v28 + 16));
      v44 = malloc_type_calloc(v29, 8uLL, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(v28 + 16), v44, 0);
      v30 = FigRoutingManagerCopyRegisteredEndpointManagers();
      v31 = v30;
      if (v30)
      {
        v32 = CFArrayGetCount(v30);
      }

      else
      {
        v32 = 0;
      }

      if (v29 < 1)
      {
LABEL_56:
        v40 = 0;
      }

      else
      {
        v33 = 0;
        v34 = *MEMORY[0x1E69618B8];
        v35 = *MEMORY[0x1E695E480];
        while (v32 < 1)
        {
LABEL_55:
          if (++v33 == v29)
          {
            goto LABEL_56;
          }
        }

        v36 = 0;
        v37 = v44[v33];
        while (1)
        {
          CFArrayGetValueAtIndex(v31, v36);
          v47 = 0;
          v38 = FigEndpointManagerGetCMBaseObject();
          v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v39)
          {
            v39(v38, v34, v35, &v47);
          }

          v40 = FigRoutingManagerCopyEndpointWithDeviceID(a2, 0, v47, v37);
          if (v47)
          {
            CFRelease(v47);
          }

          if (v40)
          {
            break;
          }

          if (v32 == ++v36)
          {
            goto LABEL_55;
          }
        }
      }

      *a3 = v40;
      if (v31)
      {
        CFRelease(v31);
      }

      free(v44);
      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

__CFArray *FigRoutingManagerCopyRegisteredEndpointManagers()
{
  v0 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v0 copyRegisteredEndpointMangers];
}

uint64_t MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_sIsDiscoveryEnhancementEnabled;
}

void FigRouteDiscovererRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 8);
  if (*(DerivedStorage + 16))
  {
    remoteXPCRouteDiscoverer_DisposeCaches(DerivedStorage);
  }

  FigXPCRemoteClientDisassociateObject();
  if (*v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4 && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendSyncMessage();
    FigXPCRelease();
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    dispatch_release(v5);
  }
}

void discoverer_Finalize(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MX_RunningBoardServices_StopMonitoringForPID(*(DerivedStorage + 12));
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 32) = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 72) = 0;
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 48) = 0;
  }

  FigSimpleMutexDestroy();

  DiscoveryQueue = FigRouteDiscoveryManagerGetDiscoveryQueue();
  MXDispatchAsync("discoverer_Finalize", "FigRouteDiscoverer.m", 192, 0, 0, DiscoveryQueue, &__block_literal_global_21);
}

CFTypeRef discoveryManager_copyHighestDiscoveryModeForDiscovererType(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 24 * a2 + 24);
  if (*MEMORY[0x1E6961878])
  {
    v6 = CFRetain(*MEMORY[0x1E6961878]);
  }

  else
  {
    v6 = 0;
  }

  Count = CFArrayGetCount(v5);
  if (Count >= 1)
  {
    v8 = Count;
    v24 = a3;
    v26 = 0;
    v9 = 0;
    v10 = *MEMORY[0x1E695E480];
    v11 = *MEMORY[0x1E695E4C0];
    v25 = *MEMORY[0x1E6961868];
    v23 = *MEMORY[0x1E6961880];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
      v13 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
      if (v13)
      {
        break;
      }

      v20 = v6;
LABEL_25:
      if (v8 == ++v9)
      {
        goto LABEL_53;
      }
    }

    v14 = v13;
    v28 = 0;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v16 = v15(v14, @"DiscoveryMode", v10, &v28) == 0;
    }

    else
    {
      v16 = 0;
    }

    cf = v11;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v14, @"BluetoothRoutesOnly", v10, &cf);
    }

    if (!v16 || !FigCFEqual())
    {
      goto LABEL_18;
    }

    if (FigCFEqual())
    {
      v20 = *MEMORY[0x1E6961870];
      if (*MEMORY[0x1E6961870])
      {
        CFRetain(*MEMORY[0x1E6961870]);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      if (ValueAtIndex)
      {
        v26 = CFRetain(ValueAtIndex);
      }

      else
      {
        v26 = 0;
      }

      if (v28)
      {
        CFRelease(v28);
        v28 = 0;
      }

      CFRelease(v14);
LABEL_53:
      a3 = v24;
      if (v24)
      {
        v21 = v26;
LABEL_55:
        *a3 = v21;
      }

      else if (v26)
      {
        CFRelease(v26);
      }

      return v20;
    }

    v18 = v28;
    DiscoveryModeAsInt = discovererManager_getDiscoveryModeAsInt(v6);
    if (DiscoveryModeAsInt >= discovererManager_getDiscoveryModeAsInt(v18))
    {
LABEL_18:
      v20 = v6;
LABEL_19:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v28)
      {
        CFRelease(v28);
      }

      CFRelease(v14);
      v6 = v20;
      goto LABEL_25;
    }

    if (FigCFEqual())
    {
      v20 = v25;
    }

    else
    {
      v20 = v23;
      if (!FigCFEqual())
      {
        v20 = v6;
LABEL_33:
        if (v26)
        {
          CFRelease(v26);
        }

        if (ValueAtIndex)
        {
          v26 = CFRetain(ValueAtIndex);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_19;
      }
    }

    if (v20)
    {
      CFRetain(v20);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v21 = 0;
    v20 = v6;
    goto LABEL_55;
  }

  return v6;
}

uint64_t discoveryManager_doesSwitchRequireDelay(const void *a1)
{
  if (CFEqual(a1, *MEMORY[0x1E6961870]))
  {
    return 1;
  }

  result = CFEqual(a1, *MEMORY[0x1E6961868]);
  if (result)
  {
    return 1;
  }

  return result;
}

const __CFArray *__discoveryManager_updateDiscoveryModeForType_block_invoke(uint64_t a1)
{
  v2 = 0;
  v58[16] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 48);
  v40 = (a1 + 64);
  v41 = (a1 + 56);
  v39 = (a1 + 72);
  allocator = *MEMORY[0x1E695E480];
  v36 = *MEMORY[0x1E69618B8];
  v37 = (a1 + 48);
  while (1)
  {
    result = *(*(a1 + 32) + 240);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (v2 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 240), v2);
    v6 = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey");
    v7 = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_TypeKey");
    CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_SupportedEndpointFeaturesKey");
    if ((*(a1 + 40) & FigCFNumberGetUInt64()) != 0)
    {
      v8 = FigCFEqual();
      v9 = v3;
      v10 = v41;
      if (v8)
      {
        v11 = *v40;
        DiscoveryModeAsInt = discovererManager_getDiscoveryModeAsInt(*v3);
        v13 = discovererManager_getDiscoveryModeAsInt(v11);
        v9 = v3;
        v10 = v41;
        if (DiscoveryModeAsInt < v13)
        {
          v14 = *(a1 + 32) + 24 * *(a1 + 80);
          v15 = *(v14 + 32);
          v16 = *(a1 + 64);
          *(v14 + 32) = v16;
          if (v16)
          {
            CFRetain(v16);
          }

          v10 = v39;
          v9 = v40;
          if (v15)
          {
            CFRelease(v15);
            v10 = v39;
            v9 = v40;
          }
        }
      }

      discoveryManager_saveRequestedDiscoveryModeForEndpointManager(ValueAtIndex, *(a1 + 40), *v9, *v10);
      v48 = 0;
      v17 = discoveryManager_copyHighestRequestedDiscoveryModeForEndpointManager(ValueAtIndex, &v48);
      CFDictionaryGetValue(ValueAtIndex, @"EndpointFeature_CurrentDiscoveryModeKey");
      if (!FigCFEqual())
      {
        value = 0;
        v47 = 0;
        v18 = discoveryManager_copyDiscovererFromWeakRef(v48);
        if (v18)
        {
          v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v19)
          {
            v19(v18, @"clientName", allocator, &v47);
          }

          v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v20)
          {
            v20(v18, @"discovererUUID", allocator, &value);
          }
        }

        if (dword_1EB75DF60)
        {
          v45 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v22 = v45;
          v23 = type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v24 = v22;
          }

          else
          {
            v24 = v22 & 0xFFFFFFFE;
          }

          if (v24)
          {
            *cf = 136316162;
            *&cf[4] = "discoveryManager_updateDiscoveryModeForType_block_invoke";
            v50 = 2114;
            v51 = v7;
            v52 = 2114;
            v53 = v17;
            v54 = 2114;
            v55 = value;
            v56 = 2114;
            v57 = v47;
            LODWORD(v35) = 52;
            _os_log_send_and_compose_impl(v24, 0, v58, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v23, "-FigRouteDiscoveryManager- %s: [%{public}@] Setting discovery mode to %{public}@ due to discovererUUID=%{public}@, discovererName=%{public}@", cf, v35);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v58[0] = 0;
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v26)
        {
          v26(CMBaseObject, v36, allocator, v58);
        }

        v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v27)
        {
          v28 = v27(v6, v17, 0);
          if (v28 == -16155)
          {
            if (v7)
            {
              v31 = CFRetain(v7);
            }

            else
            {
              v31 = 0;
            }

            v33 = dispatch_time(0, 1000000000);
            DiscoveryQueue = FigRouteDiscoveryManagerGetDiscoveryQueue();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __discoveryManager_updateDiscoveryModeForType_block_invoke_35;
            block[3] = &__block_descriptor_44_e5_v8__0l;
            v29 = -16155;
            v43 = -16155;
            block[4] = v31;
            dispatch_after(v33, DiscoveryQueue, block);
          }

          else
          {
            v29 = v28;
            if (!v28)
            {
              CFDictionarySetValue(ValueAtIndex, @"EndpointFeature_CurrentDiscoveryModeKey", v17);
            }
          }
        }

        else
        {
          v29 = -16155;
        }

        if (v58[0])
        {
          CFRelease(v58[0]);
          v58[0] = 0;
        }

        if (!v29 && v17 && FigCFEqual())
        {
          Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (FigCFEqual())
          {
            FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange(v17, Mutable);
          }

          else
          {
            *cf = 0;
            if (v18)
            {
              v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v32)
              {
                v32(v18, @"OnBehalfOf", allocator, cf);
              }
            }

            if (value)
            {
              CFDictionarySetValue(Mutable, @"ObjectHash", value);
            }

            if (v47)
            {
              CFDictionarySetValue(Mutable, @"Client", v47);
            }

            if (*cf)
            {
              CFDictionarySetValue(Mutable, @"OnBehalfOf", *cf);
            }

            FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange(v17, Mutable);
            if (*cf)
            {
              CFRelease(*cf);
            }
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

        if (v18)
        {
          CFRelease(v18);
        }

        if (v47)
        {
          CFRelease(v47);
          v47 = 0;
        }

        v3 = v37;
        if (value)
        {
          CFRelease(value);
        }
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (v48)
      {
        CFRelease(v48);
      }
    }

    ++v2;
  }

  return result;
}

void discoveryManager_saveRequestedDiscoveryModeForEndpointManager(const __CFDictionary *a1, uint64_t a2, const void *a3, const void *a4)
{
  CFDictionaryGetValue(a1, @"EndpointManager_SupportedEndpointFeaturesKey");
  UInt64 = FigCFNumberGetUInt64();
  Value = CFDictionaryGetValue(a1, @"EndpointManager_RequestedDiscoveryModesKey");
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  do
  {
    if (((1 << v10) & a2) != 0 && ((1 << v10) & UInt64) != 0)
    {
      Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"Requestor_DiscoveryMode", a3);
      if (a4)
      {
        CFDictionarySetValue(Mutable, @"Requestor_DiscovererWeakRef", a4);
      }

      CFArraySetValueAtIndex(Value, v10, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    ++v10;
  }

  while (v10 != 7);
}

id FigRouteDiscovererCopyAvailableRouteDescriptors(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled(a1, a2) && !FigCFEqual())
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          FigCFDictionaryGetBooleanIfPresent();
          [v3 addObject:v8];
        }

        v5 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    return v3;
  }

  else
  {

    return a2;
  }
}

uint64_t FigRouteDiscoveryManagerRemoveCachedDiscoverers(uint64_t a1)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v1 = 0;
  if (qword_1EB75D478)
  {
    v2 = &qword_1EB75D588;
  }

  else
  {
    v2 = 280;
  }

  while (1)
  {
    Count = *v2;
    if (*v2)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v1 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*v2, v1);
    v5 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
    if (FigCFEqual())
    {
      CFArrayRemoveValueAtIndex(*v2, v1);
      if (v5)
      {
        CFRelease(v5);
      }

      break;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    ++v1;
  }

  v6 = *v2;

  return discoveryManager_removeFreedWeakRefs(v6);
}

uint64_t discoveryManager_removeFreedWeakRefs(const __CFArray *a1)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  FigSimpleMutexLock();
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v6 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
      if (v6)
      {
        ++v4;
        CFRelease(v6);
      }

      else
      {
        CFArrayRemoveValueAtIndex(a1, v4);
        --v3;
      }
    }

    while (v4 < v3);
  }

  return FigSimpleMutexUnlock();
}

void remoteXPCRouteDiscoverer_DisposeCaches(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __remoteXPCRouteDiscoverer_DisposeCaches_block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = a1;
  MXDispatchSync("remoteXPCRouteDiscoverer_DisposeCaches", "FigRouteDiscovererRemoteXPC.m", 80, 0, 0, v1, v2);
}

void DisposeDiscovererServerState(void *a1)
{
  if (a1)
  {
    FigEndpointRPCCacheDispose();

    free(a1);
  }
}

uint64_t FigRouteDiscoveryManagerUpdateDiscoveryMode()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = 0;
  if (qword_1EB75D478)
  {
    v1 = &discoverManager_getSharedManager_discoveryState;
  }

  else
  {
    v1 = 0;
  }

  v2 = &unk_1EB75D488;
  if (!qword_1EB75D478)
  {
    v2 = 24;
  }

  v21 = *MEMORY[0x1E695E4C0];
  v3 = *MEMORY[0x1E695E4D0];
  if (qword_1EB75D478)
  {
    v4 = &qword_1EB75D478;
  }

  else
  {
    v4 = 8;
  }

  v20 = v4;
  v5 = (v2 + 16);
  do
  {
    if (v0 <= 8 && ((1 << v0) & 0x148) != 0)
    {
      goto LABEL_53;
    }

    v6 = *(v5 - 2);
    v22 = discoveryManager_mapDiscovererTypeToEndpointFeatures(v0);
    v26[0] = 0;
    v7 = discoveryManager_copyHighestDiscoveryModeForDiscovererType(v1, v0, v26, v21);
    cf = 0;
    v8 = discoveryManager_copyHighestDiscoveryModeForDiscovererType(v1, v0, &cf, v3);
    v9 = discoveryManager_copyHighestDiscoveryModeForDiscovererType(v1, v0, 0, v21);
    v10 = discoveryManager_copyHighestDiscoveryModeForDiscovererType(v1, v0, 0, v3);
    DiscoveryModeAsInt = discovererManager_getDiscoveryModeAsInt(v9);
    if (DiscoveryModeAsInt < discovererManager_getDiscoveryModeAsInt(v10))
    {
      if (!v9)
      {
        v12 = 0;
        goto LABEL_23;
      }

      v12 = CFRetain(v9);
LABEL_22:
      CFRelease(v9);
      goto LABEL_23;
    }

    if (!v10)
    {
      v12 = 0;
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v12 = CFRetain(v10);
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_23:
    if (v10)
    {
      CFRelease(v10);
    }

    if (discoveryManager_doesSwitchRequireDelay(*(v5 - 1)))
    {
      if (!discoveryManager_doesSwitchRequireDelay(v12))
      {
        v16 = mach_absolute_time();
        if (!*v5)
        {
          *v5 = FigNanosecondsToHostTime() + v16;
          v18 = dispatch_time(0, 5000000000);
          dispatch_after(v18, *v20, &__block_literal_global_39);
          goto LABEL_56;
        }

        if (v16 <= *v5)
        {
          goto LABEL_56;
        }

LABEL_35:
        *v5 = 0;
        goto LABEL_36;
      }

      v13 = FigCFEqual();
      v14 = *v5;
      if (v13)
      {
        if (v14)
        {
          v15 = 0;
          *v5 = 0;
          if (!v12)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

LABEL_56:
        v15 = 0;
        if (!v12)
        {
          goto LABEL_38;
        }

LABEL_37:
        CFRelease(v12);
        goto LABEL_38;
      }

      if (v14)
      {
        goto LABEL_35;
      }
    }

LABEL_36:
    v15 = 1;
    if (v12)
    {
      goto LABEL_37;
    }

LABEL_38:
    if (v15)
    {
      v17 = *(v5 - 1);
      *(v5 - 1) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __discoveryManager_updateDiscoveryModeForType_block_invoke;
      v23[3] = &__block_descriptor_84_e5_v8__0l;
      v23[4] = v1;
      v23[5] = v22;
      v23[6] = v7;
      v23[7] = v26[0];
      v24 = v0;
      v23[8] = v8;
      v23[9] = cf;
      FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v23);
    }

    if (v26[0])
    {
      CFRelease(v26[0]);
      v26[0] = 0;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v8)
    {
      CFRelease(v8);
    }

    discoveryManager_removeFreedWeakRefs(v6);
LABEL_53:
    ++v0;
    v5 += 3;
  }

  while (v0 != 9);
  return 0;
}

uint64_t discovererManager_getDiscoveryModeAsInt(uint64_t a1)
{
  if (FigCFEqual() || FigCFEqual())
  {
    return 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 10;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 20;
  }

  if (FigCFEqual())
  {
    return 30;
  }

  result = FigCFEqual();
  if (result)
  {
    return 30;
  }

  return result;
}

CFTypeRef discoveryManager_copyHighestRequestedDiscoveryModeForEndpointManager(const __CFDictionary *a1, void *a2)
{
  v3 = CFRetain(*MEMORY[0x1E6961878]);
  CFDictionaryGetValue(a1, @"EndpointManager_SupportedEndpointFeaturesKey");
  UInt64 = FigCFNumberGetUInt64();
  Value = CFDictionaryGetValue(a1, @"EndpointManager_RequestedDiscoveryModesKey");
  cf = 0;
  for (i = 0; i != 7; ++i)
  {
    if ((UInt64 >> i))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
      v8 = CFDictionaryGetValue(ValueAtIndex, @"Requestor_DiscoveryMode");
      DiscoveryModeAsInt = discovererManager_getDiscoveryModeAsInt(v3);
      if (DiscoveryModeAsInt < discovererManager_getDiscoveryModeAsInt(v8))
      {
        CFDictionaryGetValue(a1, @"EndpointManager_SupportedDiscoveryModesKey");
        v10 = FigCFNumberGetUInt64();
        if (FigCFEqual())
        {
          v11 = 4;
        }

        else if (FigCFEqual())
        {
          v11 = 2;
        }

        else
        {
          if (!FigCFEqual())
          {
            continue;
          }

          v11 = 1;
        }

        if ((v10 & v11) != 0)
        {
          if (v8)
          {
            CFRetain(v8);
          }

          if (v3)
          {
            CFRelease(v3);
          }

          cf = CFDictionaryGetValue(ValueAtIndex, @"Requestor_DiscovererWeakRef");
          v3 = v8;
        }
      }
    }
  }

  if (a2)
  {
    v12 = cf;
    if (cf)
    {
      v12 = CFRetain(cf);
    }

    *a2 = v12;
  }

  return v3;
}

uint64_t MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_isWHAInstantDiscoveryCachingEnabled;
}

void FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange(CFTypeRef cf, CFTypeRef a2)
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
  v5[2] = __FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = cf;
  v5[5] = a2;
  MXDispatchAsync("FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange", "FigRouteDiscoveryManager.m", 2641, 0, 0, global_queue, v5);
}

void __FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = discovererManager_getDiscoveryModeAsInt(*(a1 + 32));
  v4 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
  if (v4)
  {
    CFDictionarySetValue(Mutable, @"Level", v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (CFDictionaryContainsKey(v5, @"ObjectHash"))
    {
      Value = CFDictionaryGetValue(*(a1 + 40), @"ObjectHash");
      CFDictionarySetValue(Mutable, @"ObjectHash", Value);
    }

    if (CFDictionaryContainsKey(*(a1 + 40), @"Client"))
    {
      v7 = CFDictionaryGetValue(*(a1 + 40), @"Client");
      CFDictionarySetValue(Mutable, @"Client", v7);
    }

    if (CFDictionaryContainsKey(*(a1 + 40), @"OnBehalfOf"))
    {
      v8 = CFDictionaryGetValue(*(a1 + 40), @"OnBehalfOf");
      CFDictionarySetValue(Mutable, @"OnBehalfOf", v8);
    }
  }

  PLLogRegisteredEvent();
  if (v4)
  {
    CFRelease(v4);
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

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void MXEndpointDescriptorAvailableEndpointsDidChangeHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF00]);
    [a2 _getCacheMutex];
    FigSimpleMutexLock();
    cf = 0;
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], &cf);
    }

    if (!FigCFEqual())
    {
      [a2 _availableEndpointsDidChangeForEndpointManager:a4 atDate:v10];
    }

    [a2 _getCacheMutex];
    FigSimpleMutexUnlock();
    FigRouteDiscoveryManagerNotificationHandler(a1, a2, a3, a4, a5);

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t FigRouteDiscovererRemoteXPC_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = 0;
  v8 = 0;
  if (a4)
  {
    if (CFEqual(@"availableRoutes", a2))
    {
      result = remoteXPCRouteDiscoverer_CopyAvailableEndpoints(a1, &v7);
    }

    else
    {
      result = remoteXPCRouteDiscoverer_GetObjectID(a1, &v8);
      if (!result)
      {
        result = FigXPCSendStdCopyPropertyMessage();
      }
    }

    *a4 = v7;
  }

  else
  {
    FigRouteDiscovererRemoteXPC_CopyProperty_cold_1(&v9);
    return v9;
  }

  return result;
}

__CFString *CMSMUtility_GetDefaultBuiltInRouteSettingForMode(int a1)
{
  result = 0;
  if (a1 > 1768781425)
  {
    if (a1 > 1936749156)
    {
      if (a1 == 1936749157 || a1 == 1986884455)
      {
        return @"Speaker";
      }

      v3 = 1987208039;
    }

    else
    {
      if (a1 == 1768781426 || a1 == 1835229549)
      {
        return @"Speaker";
      }

      v3 = 1919776355;
    }

LABEL_17:
    if (a1 != v3)
    {
      return result;
    }

    return @"Receiver";
  }

  if (a1 <= 1768778863)
  {
    if (a1 != 1735222132 && a1 != 1751212899)
    {
      v3 = 1768057203;
      goto LABEL_17;
    }

    return @"Speaker";
  }

  if (a1 == 1768778864)
  {
    return @"Speaker";
  }

  if (a1 != 1768779619)
  {
    if (a1 != 1768781411)
    {
      return result;
    }

    return @"Speaker";
  }

  return @"Receiver";
}

BOOL CMSUtility_HasPhoneCallBehaviour(void *a1)
{
  if (CMSMUtility_DoCategoryAndModeHavePhoneCallBehaviour([a1 audioCategory], objc_msgSend(a1, "audioMode")))
  {
    return 1;
  }

  result = CMSMUtility_IsPlayAndRecordCategory([a1 audioCategory]);
  if (result)
  {
    return [a1 clientPriority] > 9;
  }

  return result;
}

uint64_t CMSMUtility_DoCategoryAndModeHavePhoneCallBehaviour(uint64_t a1, uint64_t a2)
{
  if (FigCFEqual() || FigCFEqual())
  {
    goto LABEL_3;
  }

  if (CMSMUtility_IsPlayAndRecordCategory(a1))
  {
    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
LABEL_3:
      LOBYTE(v3) = 1;
      return v3 & 1;
    }

    v5 = FigCFEqual() != 0;
  }

  else
  {
    v5 = 0;
  }

  v3 = v5 | ((dword_1EB75E11C & 2) >> 1);
  if ((dword_1EB75E11C & 2) != 0 && !v5)
  {
    LOBYTE(v3) = FigCFEqual() != 0;
  }

  return v3 & 1;
}

uint64_t MX_FeatureFlags_IsSessionBasedMutingEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSessionBasedMutingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSessionBasedMutingEnabled_isSessionBasedMutingEnabled;
}

void __cmsSetAudioCategory_block_invoke(uint64_t a1)
{
  CMSUtility_UpdateRoutingContextForSession(*(a1 + 32));
  v2 = *(a1 + 32);
}

uint64_t CMSMDeviceState_IsHomePodHub()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CMSMDeviceState_IsHomePodHub_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = 0;
  if (CMSMDeviceState_IsHomePodHub_sOnce != -1)
  {
    dispatch_once(&CMSMDeviceState_IsHomePodHub_sOnce, block);
  }

  return 0;
}

uint64_t CMSNP_IsCurrentNowPlayingSessionAirPlayingLongFormMedia()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
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
    v5 = *MEMORY[0x1E69626A8];
    v6 = *MEMORY[0x1E69626B0];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (objc_msgSend_isActive(v8) && ([v8 isPlaying] & 1) != 0)
        {
          v9 = 1;
        }

        else if (objc_msgSend_isActive(v8) && [v8 isActiveOverAirPlayVideo])
        {
          v9 = [v8 isAudioOnlyAirPlayVideoActive] ^ 1;
        }

        else
        {
          v9 = 0;
        }

        v10 = [objc_msgSend(v8 "clientPID")] != v0 || v9 == 0;
        if (!v10 && CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(v8))
        {
          cf = 0;
          FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex([v8 routingContextUUID], 0, &cf);
          if (FigRoutingManagerIsEndpointOfType(cf, v5) || FigRoutingManagerIsEndpointOfType(cf, v6))
          {
            if (cf)
            {
              CFRelease(cf);
            }

            v11 = 1;
            goto LABEL_28;
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_28:

  return v11;
}

void *CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(void *result)
{
  if (result)
  {
    v1 = result;
    result = [result isEligibleForNowPlayingAppConsideration];
    if (result)
    {
      result = [v1 allowedToBeNowPlayingApp];
      if (result)
      {
        return +[MXSystemController getCanBeNowPlayingAppForPID:](MXSystemController, "getCanBeNowPlayingAppForPID:", [objc_msgSend(v1 "clientPID")]);
      }
    }
  }

  return result;
}

uint64_t CMSUtility_UpdateRoutingContextForSession(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_IsHomePodHub())
  {
    return 0;
  }

  if ([a1 routeSharingPolicy])
  {
    return 0;
  }

  if ([a1 routingContextSetByClient])
  {
    [a1 routingContextUUID];
    if (FigCFEqual())
    {
      return 0;
    }
  }

  [a1 routingContextUUID];
  if (FigCFEqual())
  {
    if ([a1 isLongFormVideo])
    {
      return 0;
    }
  }

  if (!CMSNP_IsCurrentNowPlayingSessionAirPlayingLongFormMedia() || CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(a1))
  {
    if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
    {
      if (FigGetCFPreferenceNumberWithDefault())
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }

      [a1 routingContextUUID];
      if (!FigCFEqual())
      {
        [a1 setRoutingContextUUID:qword_1EB75E1A8];
        [a1 updateRouteSharingPolicy:1 setByClient:0];
        if (dword_1EB75DE40)
        {
          v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_25;
      }

      return 0;
    }

    [a1 routingContextUUID];
    if (FigCFEqual())
    {
      return 0;
    }

LABEL_24:
    [a1 setRoutingContextUUID:qword_1EB75E190];
    [a1 updateRouteSharingPolicy:0 setByClient:0];
LABEL_25:
    cmsutility_handleRoutingContextChanged(a1);
    return 1;
  }

  [a1 routingContextUUID];
  result = FigCFEqual();
  if (result)
  {
    if (CMSMDeviceState_ItsAHomePod())
    {
      return 0;
    }

    if (dword_1EB75DE40)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_24;
  }

  return result;
}

void MX_RunningBoardServices_StartMonitoringForPID(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    v2 = [MEMORY[0x1E69C75E0] identifierWithPid:a1];
    if (v2 && (v3 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:v2]) != 0)
    {
      v4 = v3;
      if (dword_1EB75DE60)
      {
        LODWORD(v22) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (mx_runningBoardServices_initializeMonitoring_onceToken != -1)
      {
        MX_RunningBoardServices_StartMonitoringForPID_cold_1();
      }

      [gProcessPredicatesSetLock lock];
      v7 = [gProcessPredicatesSet copy];
      [gProcessPredicatesSet addObject:v4];
      v8 = [gProcessPredicatesSet copy];
      [gProcessPredicatesSetLock unlock];
      if ([v7 isEqualToSet:v8])
      {
      }

      else
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __MX_RunningBoardServices_StartMonitoringForPID_block_invoke;
        v19[3] = &unk_1E7AEC550;
        v19[4] = v8;
        [gProcessMonitor updateConfiguration:v19];
        v9 = [MEMORY[0x1E696AD98] numberWithInt:a1];
        if ([v9 unsignedIntValue])
        {
          [gApplicationStateCacheLock lock];
          if (![gApplicationStateCache objectForKey:v9])
          {
            v22 = 0;
            v10 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E69C75E0] error:{"identifierWithPid:", objc_msgSend(v9, "unsignedIntValue")), &v22}];
            if (!v10 || v22)
            {
              *type = 0;
              v20 = OS_LOG_TYPE_DEFAULT;
              v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v16 = *type;
              v17 = v20;
              if (os_log_type_enabled(v15, v20))
              {
                v18 = v16;
              }

              else
              {
                v18 = v16 & 0xFFFFFFFE;
              }

              if (v18)
              {
                v23 = 136315394;
                v24 = "mx_runningBoardServices_addPIDToApplicationStateCache";
                v25 = 2114;
                v26 = v9;
                _os_log_send_and_compose_impl(v18, 0, v27, 128, &dword_1B17A2000, v15, v17, "-MX_RunningBoardServices- %s: Failed to create RBSProcessHandle for %{public}@", &v23, 22);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              [gApplicationStateCache setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", mx_runningBoardServices_getMXApplicationStateForProcessState(objc_msgSend(v10, "currentState"))), v9}];
            }
          }

          [gApplicationStateCacheLock unlock];
        }

        else
        {
          LODWORD(v22) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v22;
          v13 = type[0];
          if (os_log_type_enabled(v11, type[0]))
          {
            v14 = v12;
          }

          else
          {
            v14 = v12 & 0xFFFFFFFE;
          }

          if (v14)
          {
            v23 = 136315394;
            v24 = "mx_runningBoardServices_addPIDToApplicationStateCache";
            v25 = 2114;
            v26 = v9;
            _os_log_send_and_compose_impl(v14, 0, v27, 128, &dword_1B17A2000, v11, v13, "-MX_RunningBoardServices- %s: PID cannot be nil nor zero! pid=%{public}@", &v23, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_cold_1();
  }

  return MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_isInputAudioCoexistenceSupportEnabled;
}

uint64_t mx_runningBoardServices_getMXApplicationStateForProcessState(void *a1)
{
  v2 = [a1 taskState];
  result = 0;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return 2;
    }

    else if (v2 == 4)
    {
      if ([objc_msgSend(a1 "endowmentNamespaces")])
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }
  }

  else if (v2 == 1)
  {
    return 1;
  }

  else if (v2 == 2)
  {
    if ([objc_msgSend(a1 "endowmentNamespaces")])
    {
      return 8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MX_RunningBoardServices_CopyBundleExtensionPointID(void *a1)
{
  v1 = [objc_msgSend(mx_runningBoardServices_getProcessHandleForPID(objc_msgSend(objc_msgSend(a1 "clientPID")];

  return [v1 copy];
}

uint64_t cmsSetClientPID(void *a1, CFTypeRef cf)
{
  valuePtr = 0;
  if (!cf)
  {
    return 4294954316;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFNumberGetTypeID())
  {
    return 4294954315;
  }

  CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
  v5 = valuePtr;
  if (valuePtr < 1)
  {
    return 4294954315;
  }

  if (v5 == [objc_msgSend(a1 "clientPID")])
  {
    return 0;
  }

  [a1 setClientPID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", valuePtr)}];
  [a1 updateCameraExtensionFlagsIfNeeded];
  if ([a1 idleSleepPreventorAllocated])
  {
    PowerLogDataForSession = CMSMPowerLogCreatePowerLogDataForSession(a1, 0x1F2897D70);
    CMSMPowerLogPostPowerLogData(@"CoreMedia_AudioPlayback", PowerLogDataForSession);
    if (PowerLogDataForSession)
    {
      CFRelease(PowerLogDataForSession);
    }
  }

  MX_RunningBoardServices_StartMonitoringForPID(valuePtr);
  [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager refreshAssertions];
  [a1 setHasFetchedBackgroundPrivileges:0];
  [a1 updateApplicationStateAndPIDToInheritAppStateFrom];
  cmsUpdatePiPIsPossible(a1);
  v9 = [objc_msgSend(a1 "clientPID")];
  if (v9 == getpid() || (CMSessionMgrCopyDisplayIdentifierToSession(a1), !objc_msgSend_isActive(a1)))
  {
    v6 = 0;
  }

  else
  {
    v6 = [a1 sendSessionConfigurationInfoToVA];
  }

  if ([a1 hasEntitlementToShowMicrophoneIndicatorWhileNotRecording])
  {
    v10 = [a1 wantsToShowMicrophoneIndicatorWhenNotRecording];
    if (v10)
    {
      MX_SystemStatus_PublishRecordingClientsInfo(v10);
      [a1 setHasEntitlementToShowMicrophoneIndicatorWhileNotRecording:0];
      [a1 setWantsToShowMicrophoneIndicatorWhenNotRecording:0];
    }
  }

  return v6;
}

uint64_t MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  ProcessHandleForPID = mx_runningBoardServices_getProcessHandleForPID(a2);
  if (!ProcessHandleForPID)
  {
    return 0;
  }

  v4 = [ProcessHandleForPID bundle];
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 bundleInfoValueForKey:a1];

  return [v5 copy];
}

uint64_t MXSessionSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (a1 && a2)
  {
    v6 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __MXSessionSetProperty_block_invoke;
      v17 = &unk_1E7AE7A48;
      v18 = &v22;
      v19 = a1;
      v20 = a2;
      v21 = a3;
      MXDispatchAsyncAndWait("MXSessionSetProperty", "MXSession_CInterfaceCommon.m", 393, 0, 0, v7, &v14);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v9 = [a1 isMemberOfClass:objc_opt_class()];
      if (!v9 || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v9, v10))
      {
        v11 = [a1 setPropertyForKey:a2 value:a3];
        *(v23 + 6) = v11;
      }

      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionSetProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
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

void sub_1B17C8C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B17D9D98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x310]);
  _Unwind_Resume(a1);
}

void CMSessionMgrSystemSoundActivateForPID(int a1, char a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[MXInitialization waitUntilMXIsFullyInitialized];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v9 = MXGetSerialQueue(v7, v8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CMSessionMgrSystemSoundActivateForPID_block_invoke;
  v10[3] = &unk_1E7AECB50;
  v13 = a2;
  v10[4] = v14;
  v11 = a1;
  v12 = a3;
  MXDispatchAsyncAndWait("CMSessionMgrSystemSoundActivateForPID", "CMSessionManager_SystemSounds.m", 4657, 0, 0, v9, v10);
  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v6);
}

void sub_1B17D9EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t cmsmGetUpdatedSystemSoundPlayFlags(void *key, unsigned int a2, int a3, int a4, int a5, float *a6, int a7, unsigned int *a8, char a9)
{
  v10 = key;
  v239 = *MEMORY[0x1E69E9840];
  v11 = key;
  Value = CFDictionaryGetValue(gSystemSoundIDToCategory, key);
  if (Value)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 > 0x1000;
  }

  if (v13)
  {
    Value = @"ThirdPartySystemSound";
  }

  if (Value)
  {
    MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(Value);
    v15 = MappedBehaviorCategory;
    if (MappedBehaviorCategory)
    {
      v16 = CFStringHasSuffix(MappedBehaviorCategory, @"AlwaysHeard") != 0;
    }

    else
    {
      v16 = 0;
    }

    CurrentVADForSystemSoundAudioCategory = cmsmGetCurrentVADForSystemSoundAudioCategory(v15, a9);
  }

  else
  {
    v16 = 0;
    CurrentVADForSystemSoundAudioCategory = 0;
    v15 = 0;
  }

  v208 = 1;
  v209 = 1.0;
  if (FigCFEqual())
  {
    v18 = 0;
LABEL_14:
    v19 = CMSMDeviceState_VibrateOnRing(v18);
    v20 = CMSMDeviceState_VibrateOnSilent(1);
    goto LABEL_17;
  }

  if (!FigCFEqual())
  {
    v18 = 1;
    goto LABEL_14;
  }

  v20 = CMSMDeviceState_VibrateOnSilent(0);
  v19 = CMSMDeviceState_VibrateOnRing(1);
LABEL_17:
  v21 = FigCFEqual() == 0;
  v22 = CMSMDeviceState_RingerIsOn(v21);
  if (byte_1EB75E150 | HIBYTE(word_1EB75E0E0))
  {
    v23 = 1;
  }

  else
  {
    v23 = v22 == 0;
  }

  if (v23)
  {
    v24 = (2 * v20) | (4 * v19);
  }

  else
  {
    v24 = ((2 * v20) | (4 * v19)) + 1;
  }

  if (v15 && (v25 = CFDictionaryGetValue(gSystemSoundRingerSettings, v15)) != 0 || (v25 = CFDictionaryGetValue(gSystemSoundRingerSettings, @"Default")) != 0)
  {
    v26 = CFDataGetBytePtr(v25)[v24];
    v208 = v26;
  }

  else
  {
    v26 = 1;
  }

  active = cmsmCopyCurrentActiveRouteTypesForSystemSound();
  keya = v15;
  if (CMSMDeviceState_IsVibrationDisabled())
  {
    if ([gSystemSoundsDoNotObeyAccessibilityVibrationSetting containsObject:v15])
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v210) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v210) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v26 = v208;
      }

      v208 = v26 & 0xFFFFFFFD;
    }
  }

  if (!CMSystemSoundMgr_DeviceIsAllowedToVibrateIfConnectedToStark())
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v210) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v208 &= ~2u;
  }

  IsCameraBeingUsed = CMSMUtility_IsCameraBeingUsed();
  if (IsCameraBeingUsed)
  {
    IsCameraBeingUsed = cmsmVibrationForSystemSoundCanBeAlteredBasedOnSystemState(v10);
    if (IsCameraBeingUsed)
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v210) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        IsCameraBeingUsed = fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v208 &= ~2u;
    }
  }

  if (HIBYTE(word_1EB75E0E0))
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v210) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      IsCameraBeingUsed = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v208 &= ~1u;
  }

  if (v10 - 1200 <= 0xB)
  {
    IsCameraBeingUsed = CMSMUtility_IsPhoneCallActive();
    if (IsCameraBeingUsed)
    {
      v35 = v208;
      if ((v208 & 1) == 0)
      {
        if (dword_1EB75DE40)
        {
          LODWORD(v210) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          IsCameraBeingUsed = fig_log_call_emit_and_clean_up_after_send_and_compose();
          v35 = v208;
        }

        v208 = v35 | 1;
      }
    }
  }

  if (a3)
  {
    v37 = v208;
    if ((v208 & 1) == 0)
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v210) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
        IsCameraBeingUsed = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v37 = v208;
      }

      v208 = v37 | 1;
    }
  }

  if (active)
  {
    CFRelease(active);
  }

  if (a4 == 0 || v16)
  {
    v39 = v208;
    if ((v208 & 2) == 0)
    {
      goto LABEL_78;
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v210) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      IsCameraBeingUsed = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v39 = v208 & 0xFFFFFFFE;
    v208 = v39;
    if ((v39 & 2) == 0)
    {
      goto LABEL_78;
    }
  }

  if (a5)
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v210) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v39 = v208;
    }

LABEL_77:
    v39 &= ~2u;
    v208 = v39;
    goto LABEL_78;
  }

  IsOnenessEnabled = MX_FeatureFlags_IsOnenessEnabled(IsCameraBeingUsed, v32);
  LOBYTE(v39) = v208;
  if (!IsOnenessEnabled || a9 || (v208 & 1) == 0)
  {
LABEL_78:
    if ((v39 & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  if ([+[MXSessionManager isVADIDRoutedToOutputPortType:"isVADIDRoutedToOutputPortType:portType:"]
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v210) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v39 = v208;
    goto LABEL_77;
  }

  if (v208)
  {
LABEL_79:
    cmsmUpdateDuckVolume(v15, &v209, &v208, a9);
  }

LABEL_80:
  v191 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v192 = *MEMORY[0x1E69626C0];
  theArraya = Mutable;
  if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]))
  {
    v45 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(v15, a9);
    CurrentSystemSoundVADForAudioBehaviour = cmsGetCurrentSystemSoundVADForAudioBehaviour(v45);
    if (v45)
    {
      CFRelease(v45);
    }

    if (CurrentSystemSoundVADForAudioBehaviour == [+[MXSessionManager systemSoundRemoteVADID]&& qword_1EB75E170 && !CMSMUtility_IsPhoneCallActive() sharedInstance]
    {
      if (CMSMUtility_SomeClientIsPlaying() || !CMSMUtility_DoesiOSHaveCarPlayMainAudio())
      {
        CFArrayAppendValue(Mutable, qword_1EB75E170);
      }

      else if (dword_1EB75DE40)
      {
        LODWORD(v210) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v101 = v210;
        v102 = type[0];
        if (os_log_type_enabled(v100, type[0]))
        {
          v103 = v101;
        }

        else
        {
          v103 = v101 & 0xFFFFFFFE;
        }

        if (v103)
        {
          LODWORD(v221[0]) = 136315138;
          *(v221 + 4) = "cmsmSystemSoundCopySessionsToDuck";
          _os_log_send_and_compose_impl(v103, 0, &cf, 128, &dword_1B17A2000, v100, v102, "-MXSystemSounds- %s: Not sending duck command to HU, since no client is active playing and main audio is owned by iOS", v221);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  else
  {
    v47 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    memset(v221, 0, sizeof(v221));
    v222 = 0u;
    v223 = 0u;
    v48 = [v47 countByEnumeratingWithState:v221 objects:&cf count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v221[2];
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v221[2] != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(v221[1] + 8 * i);
          if (objc_msgSend_isActive(v52) && [v52 isPlaying] && !-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(v52, "audioCategory")))
          {
            CFArrayAppendValue(Mutable, v52);
          }
        }

        v49 = [v47 countByEnumeratingWithState:v221 objects:&cf count:16];
      }

      while (v49);
    }

    v15 = keya;
  }

  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
  }

  else
  {
    Count = 0;
  }

  v54 = v208;
  if ((v208 & 0x80) == 0 || !a7 && Count >= 1 && v209 != 1.0)
  {
    if (v16)
    {
      goto LABEL_108;
    }

LABEL_111:
    v203 = 1;
    if ((v54 & 0x80) == 0)
    {
      goto LABEL_134;
    }

    v55 = 0.5;
    if (v209 == 1.0)
    {
      goto LABEL_134;
    }

    goto LABEL_113;
  }

  v54 = v208 & 0xFFFFFF7F;
  v208 &= ~0x80u;
  if (!v16)
  {
    goto LABEL_111;
  }

LABEL_108:
  v208 = v54 & 0xFFFFFF77 | 8;
  v55 = 0.0;
  if (v209 == 1.0)
  {
    v203 = 0;
    goto LABEL_134;
  }

LABEL_113:
  v203 = !v16;
  cmsmGetSystemSoundMaxVolume(v15);
  if (v56 <= 0.0)
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v210) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v70 = v210;
      v71 = type[0];
      if (os_log_type_enabled(v69, type[0]))
      {
        v72 = v70;
      }

      else
      {
        v72 = v70 & 0xFFFFFFFE;
      }

      if (v72)
      {
        LODWORD(v221[0]) = 136315138;
        *(v221 + 4) = "cmsmGetUpdatedSystemSoundPlayFlags";
        _os_log_send_and_compose_impl(v72, 0, &cf, 128, &dword_1B17A2000, v69, v71, "-MXSystemSounds- %s: system sound max volume is 0, suppressing audio.", v221);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v208 &= ~1u;
  }

  else if (Count >= 1)
  {
    for (j = 0; j != Count; ++j)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
      ShouldSkipDuckingForSystemSounds = CMSUtility_ShouldSkipDuckingForSystemSounds(ValueAtIndex, CurrentVADForSystemSoundAudioCategory);
      if (v16 && (CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(ValueAtIndex), VADNameForVADID = CMSMUtility_GetVADNameForVADID(CurrentVADForSystemSoundAudioCategory), CMSMUtility_AreVADsRoutedToTheSamePhysicalDevice(CurrentAudioDestination, VADNameForVADID)) || !ShouldSkipDuckingForSystemSounds)
      {
        v62 = [ValueAtIndex isDucked];
        v63 = [MXDuckingSource alloc];
        *&v64 = v209;
        *&v65 = v55;
        v66 = [(MXDuckingSource *)v63 initWithType:0 ID:v11 duckVolume:v64 duckFadeDuration:v65];
        v67 = [+[MXSessionManager sharedInstance](MXSessionManager duckVolume:"duckVolume:duckerSession:duckingSource:" duckerSession:ValueAtIndex duckingSource:0, v66];
        if (MX_FeatureFlags_IsAsyncDuckingEnabled(v67, v68) && (v62 & 1) == 0 && [ValueAtIndex isPlayingOutput])
        {
          v208 |= 0x100u;
        }
      }
    }

    v15 = keya;
  }

LABEL_134:
  if ((v208 & 1) == 0)
  {
    LOBYTE(v73) = 0;
    v74 = a6;
    goto LABEL_254;
  }

  v75 = cmsmGetCurrentVADForSystemSoundAudioCategory(v15, a9);
  v202 = CMSMUtility_GetVADNameForVADID(v75);
  v200 = FigEndpointCentralEntityHoldsResource(qword_1EB75E178, 0x1F288E5F0, 0x1F2899C50);
  IsVoiceOverOn = CMSMDeviceState_IsVoiceOverOn();
  v77 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v78 = [v77 countByEnumeratingWithState:&v210 objects:&cf count:16];
  if (v78)
  {
    v79 = v78;
    HIDWORD(v190) = IsVoiceOverOn;
    v196 = 0;
    v80 = 0;
    v201 = 0;
    v81 = 0;
    v82 = 0;
    v205 = 0;
    v199 = 0;
    v83 = *v211;
    v84 = 1;
    while (1)
    {
      v85 = 0;
      do
      {
        if (*v211 != v83)
        {
          objc_enumerationMutation(v77);
        }

        v86 = *(*(&v210 + 1) + 8 * v85);
        if (objc_msgSend_isActive(v86))
        {
          v87 = -[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v86 audioCategory]);
          if ((v87 & 1) == 0 && (!CMSMVAUtility_IsAdditiveRoutingEnabled(v87, v88) || ([v86 isRoutedToOnDemandVAD] & 1) == 0))
          {
            if ([v86 prefersToTakeHWControlFlagsFromAnotherSession])
            {
              CMSUtility_GetCurrentAudioDestination(v86);
              v80 |= FigCFEqual();
              [v86 currentlyControllingFlags];
              if (v84)
              {
                if (([v86 isPlaying] & (v80 != 0)) != 0)
                {
                  v84 = 0;
                }
              }

              else
              {
                v84 = 0;
              }

              if (([v86 isPlaying] & 1) != 0 || objc_msgSend(v86, "isCarSession") && v200)
              {
                if (v205)
                {
                  v89 = 1;
                }

                else
                {
                  v89 = v203;
                }

                if ((v89 & 1) == 0)
                {
                  v205 = ([v86 currentlyControllingFlags] >> 1) & 1;
                }

                v201 = 1;
                goto LABEL_160;
              }

              if (v199)
              {
                v90 = 1;
              }

              else
              {
                v90 = v203;
              }

              if ((v90 & 1) == 0 && ([v86 currentlyControllingFlags] & 2) != 0)
              {
                v81 = 1;
                v199 = v86;
              }

              else
              {
                if (([v86 currentlyControllingFlags] & 2) != 0 && (objc_msgSend(v86, "applicationState") == 2 || objc_msgSend(v86, "applicationState") == 4))
                {
                  v196 = 1;
                }

LABEL_160:
                v81 = 1;
              }
            }

            v82 |= [v86 hasPhoneCallBehavior];
          }
        }

        ++v85;
      }

      while (v79 != v85);
      v91 = [v77 countByEnumeratingWithState:&v210 objects:&cf count:16];
      v79 = v91;
      if (!v91)
      {
        v92 = v82 == 0;
        v93 = v196 != 0;
        v94 = v80 == 0;
        IsVoiceOverOn = HIDWORD(v190);
        goto LABEL_177;
      }
    }
  }

  v93 = 0;
  v201 = 0;
  v81 = 0;
  v84 = 1;
  v94 = 1;
  v92 = 1;
LABEL_177:

  v74 = a6;
  if (!(FigCFEqual() | IsVoiceOverOn))
  {
    if (!v81)
    {
      goto LABEL_210;
    }

    if ((CMSMDeviceState_ItsAnAppleTV() || FigCFArrayContainsValue()) && CMSMUtility_SomeClientIsPlaying())
    {
      goto LABEL_193;
    }

    if (v201)
    {
      if (CMSMDeviceState_ItsAHomePod() && !CMSMUtility_IsAnyActiveSessionRoutedToDestination(v202))
      {
        v99 = 2;
        goto LABEL_211;
      }

LABEL_197:
      v99 = 2 * (v84 != 0);
      goto LABEL_211;
    }

    [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory];
    if (FigCFEqual() || ([+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory], FigCFEqual()) || ([+[MXSessionManager currentAudioCategory] sharedInstance])
    {
LABEL_210:
      v99 = 3;
      goto LABEL_211;
    }

    if (!CMSMUtility_ActiveVideoConferenceExists() && (v92 || !FigCFEqual() && !FigCFEqual()))
    {
      if (CMSMUtility_IsAnyVoicePromptSessionThatDoesNotControlHardwareActive())
      {
        v99 = v93;
      }

      else
      {
        v99 = v93 | 2;
      }

      goto LABEL_211;
    }

LABEL_193:
    v99 = 0;
    goto LABEL_211;
  }

  if (!IsVoiceOverOn)
  {
    goto LABEL_193;
  }

  v95 = FigCFEqual();
  if (v95)
  {
    CMSMUtility_GetCurrentAudioDestinationForVoiceOverSession();
    v95 = FigCFEqual();
    if (!v95)
    {
      goto LABEL_197;
    }
  }

  if (!CMSMVAUtility_IsAdditiveRoutingEnabled(v95, v96))
  {
    goto LABEL_193;
  }

  v97 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyActiveVoiceOverSessionPlayingToOnDemandVAD];
  if (v84)
  {
    v98 = v97 == 0;
  }

  else
  {
    v98 = 1;
  }

  if (v98)
  {
    v99 = 0;
  }

  else
  {
    v99 = 2;
  }

LABEL_211:
  v104 = vaemSystemSoundLocalVADExists();
  if (v104)
  {
    IsConnected = vaemContinuityScreenOutputIsConnected(v104, v105);
    if (a6 && IsConnected)
    {
      goto LABEL_214;
    }

LABEL_218:
    v107 = v99 & 1;
    goto LABEL_219;
  }

  if (!a6)
  {
    goto LABEL_218;
  }

LABEL_214:
  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    v107 = v99 & 1;
  }

  else
  {
    v107 = v99;
  }

LABEL_219:
  if (v203)
  {
    if (!v107)
    {
      LOBYTE(v73) = 0;
      v15 = keya;
      goto LABEL_254;
    }

    goto LABEL_225;
  }

  if (vaemSpeakerAlertVADExists() || vaemSystemSoundLocalVADExists())
  {
    v107 = 2;
LABEL_225:
    v108 = 1;
    goto LABEL_226;
  }

  v107 = 2;
  if (!FigCFArrayContainsValue())
  {
    if (FigCFArrayContainsValue())
    {
      v107 = 2;
    }

    else
    {
      v107 = 3;
    }
  }

  FigAtomicIncrement32();
  v108 = 0;
LABEL_226:
  v109 = FigCFEqual();
  if (v109 && !MX_FeatureFlags_IsKeyboardCHAudioEnabled(v109, v110) && !vaemSystemSoundLocalVADExists())
  {
    FigSimpleMutexLock();
    v137 = gCMSS_7;
    v138 = 0;
    if ([+[MXSessionManager defaultVADID]&& v137 sharedInstance]
    {
      v138 = [objc_msgSend(v137 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)), "countForObject:", keya}] != 0;
    }

    FigSimpleMutexUnlock();
    if (v201)
    {
      v73 = v107;
      goto LABEL_303;
    }

    if (v81 == 0 || v94 || v138)
    {
      v15 = keya;
      if (!v138)
      {
LABEL_413:
        v73 = v107;
        goto LABEL_230;
      }
    }

    else
    {
      v15 = keya;
      cmsmAddPrewarmedAudioCategoriesThatMixIn(a2, keya);
    }

    if (dword_1EB75DE40)
    {
      v215 = 0;
      v214 = OS_LOG_TYPE_DEFAULT;
      v139 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v140 = v215;
      v141 = v214;
      if (os_log_type_enabled(v139, v214))
      {
        v142 = v140;
      }

      else
      {
        v142 = v140 & 0xFFFFFFFE;
      }

      if (v142)
      {
        *type = 136315906;
        v217 = "cmsmGetAudioHardwareControlFlagsForSystemSound";
        v218 = 2114;
        *v219 = v202;
        *&v219[8] = 1024;
        v220[0] = 0;
        LOWORD(v220[1]) = 1024;
        *(&v220[1] + 2) = v81;
        LODWORD(v190) = 34;
        _os_log_send_and_compose_impl(v142, 0, v221, 128, &dword_1B17A2000, v139, v141, "-MXSystemSounds- %s: Suppressing volume flags for KeyPressed SSID playing to %{public}@ foundPlayingClient %{BOOL}u foundActiveClient %{BOOL}u", type, v190);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v15 = keya;
    }

    if (v107)
    {
      if (dword_1EB75DE40)
      {
        v215 = 0;
        v214 = OS_LOG_TYPE_DEFAULT;
        v175 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v176 = v215;
        v177 = v214;
        if (os_log_type_enabled(v175, v214))
        {
          v178 = v176;
        }

        else
        {
          v178 = v176 & 0xFFFFFFFE;
        }

        if (v178)
        {
          *type = 136315906;
          v217 = "cmsmGetAudioHardwareControlFlagsForSystemSound";
          v218 = 2114;
          *v219 = v202;
          *&v219[8] = 1024;
          v220[0] = 0;
          LOWORD(v220[1]) = 1024;
          *(&v220[1] + 2) = v81;
          LODWORD(v190) = 34;
          _os_log_send_and_compose_impl(v178, 0, v221, 128, &dword_1B17A2000, v175, v177, "-MXSystemSounds- %s: Suppressing routing flags for KeyPressed SSID playing to %{public}@ foundPlayingClient %{BOOL}u foundActiveClient %{BOOL}u", type, v190);
        }

        v138 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v73 = 0;
LABEL_303:
        v15 = keya;
        if (v81)
        {
          goto LABEL_230;
        }

LABEL_404:
        if (!v138)
        {
          goto LABEL_230;
        }

        VADIDForVADName = CMSMUtility_GetVADIDForVADName(v202);
        if (vaemGetDeviceVolume(VADIDForVADName, 0) != 0.0)
        {
          goto LABEL_230;
        }

        if (dword_1EB75DE40)
        {
          v215 = 0;
          v214 = OS_LOG_TYPE_DEFAULT;
          v186 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v187 = v215;
          v188 = v214;
          if (os_log_type_enabled(v186, v214))
          {
            v189 = v187;
          }

          else
          {
            v189 = v187 & 0xFFFFFFFE;
          }

          if (v189)
          {
            *type = 136315906;
            v217 = "cmsmGetAudioHardwareControlFlagsForSystemSound";
            v218 = 1024;
            *v219 = v201;
            *&v219[4] = 1024;
            *&v219[6] = 0;
            LOWORD(v220[0]) = 2114;
            *(v220 + 2) = v202;
            LODWORD(v190) = 34;
            _os_log_send_and_compose_impl(v189, 0, v221, 128, &dword_1B17A2000, v186, v188, "-MXSystemSounds- %s: Not suppressing any flags for KeyPressed SSID foundPlayingClient %{BOOL}u foundActiveClient %{BOOL}u as volume on %{public}@ is 0", type, v190);
          }

          v15 = keya;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_413;
      }

      v73 = 0;
    }

    else
    {
      v73 = v107 & 0xFFFFFFFD;
    }

    v138 = 1;
    if (v81)
    {
      goto LABEL_230;
    }

    goto LABEL_404;
  }

  v73 = v107;
  v15 = keya;
LABEL_230:
  if ((v108 & 1) == 0)
  {
    v208 |= 8u;
  }

  if (v73)
  {
    if (!a7)
    {
      if (v73)
      {
        v111 = -3;
      }

      else
      {
        v111 = -1;
      }

      if ((v73 & 2) != 0)
      {
        v112 = v111 & 0xFFFFFFEF;
      }

      else
      {
        v112 = v111;
      }

      v113 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      memset(v221, 0, sizeof(v221));
      v222 = 0u;
      v223 = 0u;
      v114 = [v113 countByEnumeratingWithState:v221 objects:&cf count:16];
      if (v114)
      {
        v115 = v114;
        v116 = *v221[2];
        do
        {
          for (k = 0; k != v115; ++k)
          {
            if (*v221[2] != v116)
            {
              objc_enumerationMutation(v113);
            }

            v118 = *(v221[1] + 8 * k);
            if (objc_msgSend_isActive(v118))
            {
              if (!-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v118 audioCategory]))
              {
                v119 = [v118 currentlyControllingFlags];
                [v118 setCurrentlyControllingFlags:{objc_msgSend(v118, "currentlyControllingFlags") & v112}];
                if (v119 != [v118 currentlyControllingFlags])
                {
                  [v118 setSystemSoundHasModifiedCurrentlyControllingFlags:1];
                }
              }
            }
          }

          v115 = [v113 countByEnumeratingWithState:v221 objects:&cf count:16];
        }

        while (v115);
      }

      v15 = keya;
    }

    if (a8)
    {
      *a8 = v73;
    }
  }

LABEL_254:
  if (a7)
  {
    goto LABEL_255;
  }

  if (dword_1EB75DE40)
  {
    LODWORD(v210) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v121 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v122 = v210;
    v123 = type[0];
    if (os_log_type_enabled(v121, type[0]))
    {
      v124 = v122;
    }

    else
    {
      v124 = v122 & 0xFFFFFFFE;
    }

    if (v124)
    {
      v125 = "YES";
      *(v221 + 4) = "cmsmApplyAudioHardwareControlFlagsForSystemSound";
      WORD2(v221[1]) = 2114;
      if (v73)
      {
        v126 = "YES";
      }

      else
      {
        v126 = "NO";
      }

      LODWORD(v221[0]) = 136315906;
      *(&v221[1] + 6) = v15;
      if ((v73 & 2) == 0)
      {
        v125 = "NO";
      }

      HIWORD(v221[2]) = 2082;
      v221[3] = v126;
      LOWORD(v222) = 2082;
      *(&v222 + 2) = v125;
      LODWORD(v190) = 42;
      _os_log_send_and_compose_impl(v124, 0, &cf, 128, &dword_1B17A2000, v121, v123, "-MXSystemSounds- %s: Applying audio hardware control flags for audioCategory = %{public}@; routeConfigurationCanBeSet = %{public}s volumeCanBeSet = %{public}s", COERCE_DOUBLE(136315906), v221, v190);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((v208 & 1) == 0)
  {
    if (v74)
    {
      cmsmGetSystemSoundMaxVolume(@"TouchTone");
      *v74 = v127;
    }

    goto LABEL_255;
  }

  if (v73)
  {
    if (v15 && (v128 = CFDictionaryGetValue(gSystemSoundRoutingForCategories, v15)) != 0)
    {
      v129 = v128;
      VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v128);
      *type = FigVAEndpointManagerGetPropertyUInt32(qword_1EB75E090);
      *&v210 = *MEMORY[0x1E695E4C0];
      v131 = qword_1EB75E090;
      v132 = *(*(CMBaseObjectGetVTable() + 24) + 8);
      if (v132)
      {
        v132(v131, 0x1F289B990, v191, type, &v210);
      }

      if (FigCFEqual() && (FigCFArrayContainsValue() || FigCFArrayContainsValue()) && v210 == *MEMORY[0x1E695E4D0])
      {
        PVMSetEnabled(0);
      }

      else if (dword_1EB75E09C != VADCategoryFromFigCategoryName || CFStringHasSuffix(v15, @"AlwaysHeard"))
      {
        [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioCategory:"setCurrentAudioCategory:", v129];
        [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioMode:"setCurrentAudioMode:", @"Default"];
        PVMSetEnabled(0);
        if (dword_1EB75DE40)
        {
          v215 = 0;
          v214 = OS_LOG_TYPE_DEFAULT;
          v133 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v134 = v215;
          v135 = v214;
          if (os_log_type_enabled(v133, v214))
          {
            v136 = v134;
          }

          else
          {
            v136 = v134 & 0xFFFFFFFE;
          }

          if (v136)
          {
            LODWORD(v221[0]) = 136315138;
            *(v221 + 4) = "cmsmSetRouteConfigurationForSystemSound";
            _os_log_send_and_compose_impl(v136, 0, &cf, 128, &dword_1B17A2000, v133, v135, "-MXSystemSounds- %s: Calling cmsmSetVADRouteConfiguration to set category and mode for system sound", v221);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v15 = keya;
        }

        cf = (VADCategoryFromFigCategoryName | 0x696D646600000000);
        v225 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        v232 = 0u;
        v233 = 0u;
        v234 = 0u;
        v235 = 0u;
        v236 = 0u;
        v237 = 0u;
        v238 = 0u;
        cmsmSetVADRouteConfiguration(&cf, 0, qword_1EB75E190);
      }
    }

    else
    {
      PVMSetEnabled(0);
      if (dword_1EB75E09C != 1667524212 && dword_1EB75E09C != 1668505974 && (!qword_1EB75E0B0 || FigCFArrayContainsValue() || FigCFArrayContainsValue() || FigCFArrayContainsValue()))
      {
        vaemResetVADCategoryToStandardAVAndDefaultMode();
      }
    }

    cmsmUpdateDuckVolume(v15, 0, &v208, a9);
    IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly(0);
    cmsSetDeviceSampleRateAndBufferSize(0, 0, IsCategoryInputOnly, 44100.0, 0.0);
  }

  else
  {
    cmsmUpdateDuckVolume(v15, 0, &v208, a9);
  }

  if (CMSMDeviceState_ItsAHomePod() && (v144 = cmsmGetCurrentVADForSystemSoundAudioCategory(v15, a9), v144 == [+[MXSessionManager systemSoundLocalVADID] sharedInstance])
  {
    if ((v73 & 2) == 0)
    {
      v145 = 0;
      goto LABEL_336;
    }
  }

  else
  {
    v146 = CMSMDeviceState_ItsAHomePod();
    v145 = 0;
    if ((v73 & 2) == 0 || v146)
    {
      goto LABEL_336;
    }
  }

  v147 = cmsmCopyCurrentActiveRouteTypesForSystemSound();
  if (FigCFArrayContainsValue())
  {
    v145 = 0;
    if (!v147)
    {
      goto LABEL_336;
    }

LABEL_335:
    CFRelease(v147);
    goto LABEL_336;
  }

  v159 = cmsmGetCurrentVADForSystemSoundAudioCategory(v15, a9);
  CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
  if (dword_1EB75DE40)
  {
    LODWORD(v210) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v161 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v162 = v210;
    v163 = type[0];
    if (os_log_type_enabled(v161, type[0]))
    {
      v164 = v162;
    }

    else
    {
      v164 = v162 & 0xFFFFFFFE;
    }

    if (v164)
    {
      v165 = CMSMUtility_GetVADNameForVADID(v159);
      LODWORD(v221[0]) = 136315906;
      *(v221 + 4) = "cmsmSetVolumeForSystemSound";
      WORD2(v221[1]) = 2114;
      *(&v221[1] + 6) = v165;
      HIWORD(v221[2]) = 2114;
      v221[3] = CurrentRouteTypeForSystemSoundAtIndex;
      LOWORD(v222) = 2114;
      *(&v222 + 2) = keya;
      LODWORD(v190) = 42;
      _os_log_send_and_compose_impl(v164, 0, &cf, 128, &dword_1B17A2000, v161, v163, "-MXSystemSounds- %s: Setting volume on VAD: %{public}@ route: %{public}@ for audio category %{public}@", v221, v190);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v15 = keya;
  }

  cmsmGetSystemSoundMaxVolume(v15);
  vaemSetDeviceVolumeIfNotSet(v159, 0, CurrentRouteTypeForSystemSoundAtIndex, 0, v174, 0.0, 0.0);
  v145 = 1;
  if (v147)
  {
    goto LABEL_335;
  }

LABEL_336:
  if (!v74)
  {
    goto LABEL_255;
  }

  *v74 = 1.0;
  if (v15)
  {
    v148 = CMSystemsoundMgr_GetMappedBehaviorCategory(v15);
    if (v148)
    {
      if (CFStringHasSuffix(v148, @"AlwaysHeard"))
      {
        goto LABEL_255;
      }
    }

    if (FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      goto LABEL_255;
    }
  }

  v149 = cmsmCopyCurrentActiveRouteTypesForSystemSound();
  v150 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(v15, a9);
  v151 = cmsGetCurrentSystemSoundVADForAudioBehaviour(v150);
  if (v150)
  {
    CFRelease(v150);
  }

  v152 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
  if (FigCFArrayContainsValue())
  {
    cmsmGetSystemSoundMaxVolume(v15);
LABEL_347:
    v154 = SystemSoundVolumeScalarForCurrentRoute;
    goto LABEL_348;
  }

  if (!FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, v192) || !FigCFEqual())
  {
    if (FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B410) && v151 == v152)
    {
      v166 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(keya, a9);
      v167 = cmsGetCurrentSystemSoundVADForAudioBehaviour(v166);
      if (v166)
      {
        CFRelease(v166);
      }

      v168 = 1.0;
      v169 = 1.0;
      if (FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B410))
      {
        v170 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
        cf = 0;
        v171 = qword_1EB75E090;
        v172 = *(*(CMBaseObjectGetVTable() + 24) + 40);
        if (v172)
        {
          v172(v171, 0x1F289BA30, v191, v170, 0, &cf);
          v173 = cf;
        }

        else
        {
          v173 = 0;
        }

        ValueFloat32 = MXCFNumberGetValueFloat32(v173);
        v169 = *&ValueFloat32;
        if (cf)
        {
          CFRelease(cf);
        }
      }

      cmsmGetSystemSoundVolumeScalarForRawVolume(keya, v167, v169);
      v154 = v180;
      if (keya)
      {
        if (CFStringHasPrefix(keya, @"JBL"))
        {
          goto LABEL_348;
        }

        if (!FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, v192))
        {
          if (gCMSS_4)
          {
            if (qword_1EB75E0B0)
            {
              LODWORD(cf) = 1065353216;
              v181 = CFDictionaryGetValue(gCMSS_4, keya);
              if (v181 || (v181 = CFDictionaryGetValue(gCMSS_4, @"Default")) != 0)
              {
                v182 = v181;
                v183 = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
                v184 = CFDictionaryGetValue(v182, v183);
                if (v184)
                {
                  CFNumberGetValue(v184, kCFNumberFloatType, &cf);
                  v168 = *&cf;
                }
              }
            }
          }
        }
      }

      v154 = v154 * v168;
LABEL_348:
      *v74 = v154;
      if (v154 == 0.0)
      {
        if (dword_1EB75DE40)
        {
          LODWORD(v210) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v155 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v156 = v210;
          v157 = type[0];
          if (os_log_type_enabled(v155, type[0]))
          {
            v158 = v156;
          }

          else
          {
            v158 = v156 & 0xFFFFFFFE;
          }

          if (v158)
          {
            LODWORD(v221[0]) = 136315138;
            *(v221 + 4) = "cmsmUpdateSystemSoundVolume";
            _os_log_send_and_compose_impl(v158, 0, &cf, 128, &dword_1B17A2000, v155, v157, "-MXSystemSounds- %s: software volume for system sound is 0; suppressing audio.", v221);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v208 &= ~1u;
      }

      goto LABEL_377;
    }

    if (!v145)
    {
      SystemSoundVolumeScalarForCurrentRoute = cmsmGetSystemSoundVolumeScalarForCurrentRoute(keya, a9);
      goto LABEL_347;
    }
  }

  *v74 = 1.0;
LABEL_377:
  if (v149)
  {
    CFRelease(v149);
  }

LABEL_255:
  if (theArraya)
  {
    CFRelease(theArraya);
  }

  return v208;
}