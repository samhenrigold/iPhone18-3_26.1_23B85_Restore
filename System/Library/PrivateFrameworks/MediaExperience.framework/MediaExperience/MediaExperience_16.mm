uint64_t HDMILatencyMgr_UpdateMeasuredHDMILatency(CFDictionaryRef theDict)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!_MergedGlobals_8)
  {
    return 4294954510;
  }

  if (theDict)
  {
    if (CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAudioHDMILatency24Hz"))
    {
      if (CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAudioHDMILatency60Hz"))
      {
        if (CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredVideoHDMILatency24Hz"))
        {
          if (CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredVideoHDMILatency60Hz"))
          {
            v2 = CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency24Hz");
            if (v2 == CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency60Hz"))
            {
              v3 = CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency24Hz");
              if (v3 == CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency60Hz"))
              {
                if (CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency24Hz"))
                {
                  v4 = CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency60Hz") != 0;
                }

                else
                {
                  v4 = 0;
                }

                if (CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency24Hz"))
                {
                  v5 = CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency60Hz") != 0;
                  if (v4 && v5)
                  {
                    MutableCopy = CFRetain(theDict);
                    goto LABEL_19;
                  }
                }

                else
                {
                  LOBYTE(v5) = 0;
                }

                if (v4 && !v5)
                {
                  MutableCopy = FigCFDictionaryCreateMutableCopy();
                  FigCFDictionarySetValueFromKeyInDict();
                  FigCFDictionarySetValueFromKeyInDict();
LABEL_19:
                  if (MutableCopy)
                  {
                    v9[0] = MEMORY[0x1E69E9820];
                    v9[1] = 3221225472;
                    v9[2] = __HDMILatencyMgr_UpdateMeasuredHDMILatency_block_invoke;
                    v9[3] = &__block_descriptor_40_e5_v8__0l;
                    v9[4] = MutableCopy;
                    MXDispatchAsync("HDMILatencyMgr_UpdateMeasuredHDMILatency", "HDMILatencyManager.m", 380, 0, 0, _MergedGlobals_8, v9);
                    return 0;
                  }

                  return 4294954510;
                }

                if (!v4 && v5)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                return 4294954510;
              }
            }
          }
        }
      }
    }
  }

  return 4294954516;
}

uint64_t HDMILatencyMgr_UpdateCurrentRefreshRate()
{
  if (!_MergedGlobals_8)
  {
    return 4294954510;
  }

  OUTLINED_FUNCTION_0_18();
  v4 = 3221225472;
  v5 = __HDMILatencyMgr_UpdateCurrentRefreshRate_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v0;
  MXDispatchAsync("HDMILatencyMgr_UpdateCurrentRefreshRate", "HDMILatencyManager.m", 402, 0, 0, v1, v3);
  return 0;
}

void HDMILatencyMgr_SetIsPlayingAtmos()
{
  if (_MergedGlobals_8)
  {
    OUTLINED_FUNCTION_0_18();
    v3 = 3221225472;
    v4 = __HDMILatencyMgr_SetIsPlayingAtmos_block_invoke;
    v5 = &__block_descriptor_33_e5_v8__0l;
    v6 = v0;
    MXDispatchSync("HDMILatencyMgr_SetIsPlayingAtmos", "HDMILatencyManager.m", 450, 0, 0, v1, v2);
  }
}

uint64_t FigRoutingContextRemoteCreateVideoContext(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v4 = routingContext_create_0(5uLL, a2, 0, a3);
  if (!v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingContextRemoteCreateVideoContext_block_invoke;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = a3;
    MXDispatchSync("FigRoutingContextRemoteCreateVideoContext", "FigRoutingContextRemoteXPC.m", 2175, 0, 0, gFigRoutingContextRemoteObject_1, v6);
  }

  return v4;
}

uint64_t routingContextRemoteXPC_SetProperty()
{
  OUTLINED_FUNCTION_7_4();
  v2 = 0;
  result = remoteXPCRoutingContext_GetObjectID(v0, &v2);
  if (!result)
  {

    return FigXPCSendStdSetPropertyMessage();
  }

  return result;
}

uint64_t routingContextRemoteXPC_SelectRoute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_6();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v4, &v10);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      if (!v3)
      {
LABEL_6:
        FigXPCMessageSetCFDictionary();
        ObjectID = FigXPCRemoteClientSendSyncMessage();
        goto LABEL_7;
      }

      ObjectID = FigEndpointXPCRemoteGetObjectID();
      if (!ObjectID)
      {
        xpc_dictionary_set_uint64(v8, kFigRoutingContextXPCMsgParam_EndpointID, v9);
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v6 = ObjectID;
  FigXPCRelease();
  return v6;
}

uint64_t routingContextRemoteXPC_SelectRouteDescriptor()
{
  OUTLINED_FUNCTION_7_4();
  v21 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(v1, &v21);
  if (ObjectID)
  {
    v0 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v3 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_8_0(v3, v4, v5, v6, v7, v8, v9, v10, 0);
    if (!v0)
    {
      FigXPCMessageSetCFDictionary();
      FigXPCMessageSetCFDictionary();
      v11 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_0(v11, v12, v13, v14, v15, v16, v17, v18, v20);
    }
  }

  FigXPCRelease();
  return v0;
}

uint64_t routingContextRemoteXPC_CopyRoute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_7(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v14, v15);
  if (!v8)
  {
    OUTLINED_FUNCTION_8();
    v8 = FigXPCCreateBasicMessage();
    if (!v8)
    {
      OUTLINED_FUNCTION_12_4();
      v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v8)
      {
        v8 = OUTLINED_FUNCTION_15_4(v13);
      }
    }
  }

  v9 = v8;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t routingContextRemoteXPC_SelectRoutes()
{
  OUTLINED_FUNCTION_7_4();
  v3 = v2;
  v17 = 0;
  if (v4)
  {
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v7);
        if (!ValueAtIndex)
        {
          break;
        }

        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != FigEndpointGetTypeID())
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_7;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_12();
      ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0, v17);
      goto LABEL_20;
    }
  }

LABEL_7:
  ObjectID = remoteXPCRoutingContext_GetObjectID(v3, &v17);
  if (ObjectID || (OUTLINED_FUNCTION_12_4(), ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
LABEL_20:
    v14 = ObjectID;
    goto LABEL_24;
  }

  routes_logEndpoints(v1);
  if (v1 && CFArrayGetCount(v1))
  {
    value = 0;
    v11 = CFArrayGetCount(v1);
    v12 = xpc_array_create(0, 0);
    if (v12 && v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (!CFArrayGetValueAtIndex(v1, i))
        {
          break;
        }

        if (FigEndpointXPCRemoteGetObjectID())
        {
          break;
        }

        xpc_array_set_uint64(v12, 0xFFFFFFFFFFFFFFFFLL, value);
      }
    }

    if (v12)
    {
      xpc_dictionary_set_value(0, kFigRoutingContextXPCMsgParam_EndpointIDList, v12);
    }
  }

  if (v0)
  {
    FigXPCMessageSetCFDictionary();
  }

  v14 = FigXPCRemoteClientSendSyncMessage();
LABEL_24:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  return v14;
}

uint64_t routingContextRemoteXPC_SelectRouteDescriptors()
{
  OUTLINED_FUNCTION_7_4();
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(v2, &v12);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_25();
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      if (v0 && CFArrayGetCount(v0))
      {
        FigXPCMessageSetCFArray();
      }

      FigXPCMessageSetCFDictionary();
      ObjectID = FigXPCRemoteClientSendSyncMessage();
    }
  }

  OUTLINED_FUNCTION_8_0(ObjectID, v4, v5, v6, v7, v8, v9, v10, 0);
  FigXPCRelease();
  return v1;
}

uint64_t routingContextRemoteXPC_CopySelectedRouteForRemoteControl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_7(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v14, v15);
  if (!v8)
  {
    OUTLINED_FUNCTION_8();
    v8 = FigXPCCreateBasicMessage();
    if (!v8)
    {
      OUTLINED_FUNCTION_12_4();
      v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v8)
      {
        v8 = OUTLINED_FUNCTION_15_4(v13);
      }
    }
  }

  v9 = v8;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t routingContextRemoteXPC_AddToSelectedRoutes(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_7_4();
    ObjectID = remoteXPCRoutingContext_GetObjectID(v2, &v7);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigEndpointXPCRemoteGetObjectID();
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_EndpointID, 0);
          FigXPCMessageSetCFDictionary();
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, 0);
  }

  v4 = ObjectID;
  FigXPCRelease();
  return v4;
}

uint64_t routingContextRemoteXPC_AddToSelectedRouteDescriptors(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v23, v24);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_4();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v3, &v23);
  if (ObjectID)
  {
LABEL_7:
    v2 = ObjectID;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_25();
  v5 = FigXPCCreateBasicMessage();
  OUTLINED_FUNCTION_8_0(v5, v6, v7, v8, v9, v10, v11, v12, 0);
  if (!v2)
  {
    FigXPCMessageSetCFDictionary();
    FigXPCMessageSetCFDictionary();
    v13 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_8_0(v13, v14, v15, v16, v17, v18, v19, v20, v22);
  }

LABEL_5:
  FigXPCRelease();
  return v2;
}

uint64_t routingContextRemoteXPC_RemoveFromSelectedRoutes(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_7_4();
    ObjectID = remoteXPCRoutingContext_GetObjectID(v2, &v7);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigEndpointXPCRemoteGetObjectID();
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_EndpointID, 0);
          FigXPCMessageSetCFDictionary();
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, 0);
  }

  v4 = ObjectID;
  FigXPCRelease();
  return v4;
}

uint64_t routingContextRemoteXPC_RemoveFromSelectedRouteDescriptors(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v23, v24);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_4();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v3, &v23);
  if (ObjectID)
  {
LABEL_7:
    v2 = ObjectID;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_25();
  v5 = FigXPCCreateBasicMessage();
  OUTLINED_FUNCTION_8_0(v5, v6, v7, v8, v9, v10, v11, v12, 0);
  if (!v2)
  {
    FigXPCMessageSetCFDictionary();
    FigXPCMessageSetCFDictionary();
    v13 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_8_0(v13, v14, v15, v16, v17, v18, v19, v20, v22);
  }

LABEL_5:
  FigXPCRelease();
  return v2;
}

uint64_t routingContextRemoteXPC_CreateCommChannel(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  CMBaseObjectGetDerivedStorage();
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v11);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (FigXPCMessageSetCFDictionary(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID) || (ObjectID = FigXPCMessageCopyCFString(), ObjectID))
  {
    v6 = ObjectID;
  }

  else
  {
    v6 = 0;
    *a3 = v10;
  }

  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

uint64_t routingContextRemoteXPC_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
LABEL_8:
    v7 = ObjectID;
    goto LABEL_6;
  }

  v5 = DerivedStorage;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v17);
  if (ObjectID)
  {
    goto LABEL_8;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_8;
  }

  v7 = FigXPCRemoteClientSendSyncMessage();
  if (!v7)
  {
    v8 = *(v5 + 40);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __routingContextRemoteXPC_CloseCommChannel_block_invoke;
    v13 = &__block_descriptor_48_e5_v8__0l;
    v14 = v5;
    v15 = a2;
    MXDispatchSync("routingContextRemoteXPC_CloseCommChannel", "FigRoutingContextRemoteXPC.m", 841, 0, 0, v8, &v10);
  }

LABEL_6:
  FigXPCRelease();
  return v7;
}

uint64_t routingContextRemoteXPC_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  if (a2)
  {
    if (!remoteXPCRoutingContext_GetObjectID(a1, &v13) && !FigXPCCreateBasicMessage())
    {
      FigXPCMessageSetCFString();
      FigXPCMessageSetCFDictionary();
      if (a4)
      {
        v10 = a4;
        v11 = a5;
        *&v9 = 1668246893;
        *(&v9 + 1) = a1;
      }

      remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, v12, &v9);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, DWORD2(v9), v10);
  }

  FigXPCRelease();
  return 0;
}

uint64_t routingContextRemoteXPC_ResetPredictedSelectedRouteDescriptor()
{
  OUTLINED_FUNCTION_5_6();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v0, &v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    v2 = FigXPCCreateBasicMessage();
    if (v2 || (v2 = FigXPCMessageSetCFDictionary(), v2))
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

uint64_t routingContextRemoteXPC_CopySelectedBufferedEndpointForTesting()
{
  OUTLINED_FUNCTION_5_6();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v0, v4);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_9_0();
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      FigXPCMessageSetCFString();
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!ObjectID)
      {
        ObjectID = OUTLINED_FUNCTION_15_4(v4[1]);
      }
    }
  }

  v2 = ObjectID;
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t routingContextRemoteXPC_ReportModificationMetrics(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_6_7(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, v15, v16);
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v10 = FigXPCCreateBasicMessage();
    if (v10 || ([a2 dictionaryRepresentation], v10 = FigXPCMessageSetCFDictionary(), v10))
    {
      v11 = v10;
    }

    else
    {
      v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v11;
}

uint64_t remoteXPCRoutingContext_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void __FigRoutingContextRemoteCopyContextForUUID_block_invoke_cold_1(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 24) = routingContext_create_0(1uLL, *(a1 + 64), 1, a2);
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    if (*(*(*a3 + 8) + 24))
    {
      key = 0;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v6 = *(*(*a3 + 8) + 24);
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(v6, @"contextUUID", *MEMORY[0x1E695E480], &key);
        if (key)
        {
          v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          if (v8)
          {
            v9 = v8;
            CFDictionarySetValue(gFigRoutingContextRemoteObject_0, key, v8);
            CFRelease(v9);
          }

          v10 = *(DerivedStorage + 72);
          v11 = key;
          *(DerivedStorage + 72) = key;
          if (v11)
          {
            CFRetain(v11);
          }

          if (v10)
          {
            CFRelease(v10);
          }

          if (key)
          {
            CFRelease(key);
          }
        }
      }
    }
  }
}

uint64_t FigRoutingContextRemoteCopyAllAudioContexts_cold_1()
{
  OUTLINED_FUNCTION_7_4();
  v3 = v2;
  value = 0;
  result = FigXPCRemoteClientRetainCopiedObject();
  if (!result)
  {
    result = remoteXPCRoutingContext_CreateInternal(v3, &value);
    if (!result)
    {
      *(CMBaseObjectGetDerivedStorage() + 80) = 4;
      CFArrayAppendValue(v1, value);
      result = 0;
    }
  }

  *v0 = result;
  return result;
}

uint64_t remoteXPCRoutingContext_CreateInternal_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t routingContextRemoteXPC_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_SendData_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t routingContextRemoteXPC_CreateCommChannelForDeviceID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_SendDataForDeviceID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_SendDataForDeviceID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_SendDataForDeviceID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_CloseCommChannelForDeviceID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_CloseCommChannelForDeviceID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCopyContextForUUID(const __CFAllocator *a1, CFDictionaryRef theDict, void *a3)
{
  v23 = 0;
  valuePtr = 0;
  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  Value = CFDictionaryGetValue(MutableCopy, @"contextType");
  v22 = Value;
  if (Value)
  {
    v8 = Value;
    CFRetain(Value);
    goto LABEL_3;
  }

  v9 = [(FigRemoteRoutingContextFactory *)Current copyContextForUUIDWithAllocator:a1 options:MutableCopy context:&v23];
  if (v9)
  {
LABEL_9:
    v10 = v9;
    goto LABEL_16;
  }

  v10 = v23;
  if (v23)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v9 = v11(v10, @"contextType", *MEMORY[0x1E695E480], &v22);
      if (!v9)
      {
        CFDictionarySetValue(MutableCopy, @"contextType", v22);
        v8 = v22;
LABEL_3:
        if (CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
        {
          if (a1)
          {
            CFRetain(a1);
          }

          if (MutableCopy)
          {
            CFRetain(MutableCopy);
          }

          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __FigRoutingContextResilientRemoteCopyContextForUUID_block_invoke;
          v19[3] = &unk_1E7AEB9F0;
          v19[5] = a1;
          v19[6] = MutableCopy;
          v20 = valuePtr;
          v19[4] = Current;
          v13 = MEMORY[0x1E69E9820];
          v14 = 3221225472;
          v15 = __FigRoutingContextResilientRemoteCopyContextForUUID_block_invoke_2;
          v16 = &__block_descriptor_48_e5_v8__0l;
          v17 = a1;
          v18 = MutableCopy;
          v9 = FigRoutingContextResilientRemoteCreate(v19, &v13, a3);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_0();
          v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
        }

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v10 = 4294954514;
  }

LABEL_16:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v10;
}

void __routingContextResilientRemote_serverConnectionDied_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 48);
  if (v3 <= 4)
  {
    *(v2 + 48) = v3 + 1;
    if (!routingContextResilientRemote_replaceRemoteContext(a1[5]))
    {
      *(a1[4] + 48) = 0;
    }
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigRoutingContextResilientRemoteCopyDefaultContext_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextCreateSystemRemoteDisplayInternal(const void *a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    FigRoutingContextGetClassID(0);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v5 = CFRetain(a1);
      result = 0;
      *(DerivedStorage + 8) = v5;
      *DerivedStorage = 14;
    }
  }

  return result;
}

uint64_t routingContext_RemoveFromSelectedRoutes(const void *a1, const void *a2, const void *a3)
{
  result = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigRoutingManagerIsEndpointOfType(a2, *MEMORY[0x1E69626B0]))
    {
      return 4294955269;
    }

    else
    {
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

      SharedQueue = FigRoutingManagerGetSharedQueue();
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __routingContext_RemoveFromSelectedRoutes_block_invoke;
      v9[3] = &__block_descriptor_64_e5_v8__0l;
      v9[4] = DerivedStorage;
      v9[5] = a2;
      v9[6] = a3;
      v9[7] = a1;
      MXDispatchAsync("routingContext_RemoveFromSelectedRoutes", "FigRoutingContext.m", 2006, 0, 0, SharedQueue, v9);
      return 0;
    }
  }

  return result;
}

void routingContext_collectPickedEndpoints_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void routingContext_ReportModificationMetrics_cold_1(_DWORD *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MXGetAssertionLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "-FigRoutingContext-";
    v6 = 2082;
    v7 = "routingContext_ReportModificationMetrics";
    v8 = 1024;
    v9 = 2187;
    _os_log_impl(&dword_1B17A2000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalid modification metrics", &v4, 0x1Cu);
  }

  *a1 = -12020;
}

CFArrayRef FigEndpointDescriptorUtility_AreRouteIDsTheSame(CFArrayRef theArray, CFArrayRef a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!theArray || !CFArrayGetCount(theArray))
  {
    if (!a2)
    {
      return a2;
    }

    if (!CFArrayGetCount(a2))
    {
      return 0;
    }
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = OUTLINED_FUNCTION_7_6(v5, v6, v7, v8, v9, v10, v11, v12, v35, v36, v37, v38, v39, v40, v41, v42);
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(theArray);
        }

        v17 = [*(*(&v43 + 1) + 8 * i) objectForKey:@"RouteUID"];
        if (v17)
        {
          v17 = [v4 addObject:v17];
        }
      }

      v14 = OUTLINED_FUNCTION_7_6(v17, v18, v19, v20, v21, v22, v23, v24, v35, v36, v37, v38, v39, v40, v41, v42);
    }

    while (v14);
  }

  OUTLINED_FUNCTION_4_11();
  v28 = OUTLINED_FUNCTION_9_6(v25, v26, v27, v47);
  if (v28)
  {
    v29 = v28;
    v30 = *v37;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(a2);
        }

        v32 = [*(v36 + 8 * j) objectForKey:@"RouteUID"];
        if (v32)
        {
          v32 = [v5 addObject:v32];
        }
      }

      v29 = OUTLINED_FUNCTION_9_6(v32, v33, &v35, v47);
    }

    while (v29);
  }

  a2 = [v4 isEqualToSet:v5];

  return a2;
}

CFIndex FigEndpointDescriptorUtility_AreRouteDescriptorsOfTypeAirPlay(CFIndex result)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      OUTLINED_FUNCTION_4_11();
      v5 = OUTLINED_FUNCTION_9_6(v2, v3, v4, v12);
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
LABEL_5:
        v8 = 0;
        while (1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v1);
          }

          [*(v10[1] + 8 * v8) objectForKey:@"AudioRouteName"];
          result = FigCFEqual();
          if (!result)
          {
            break;
          }

          if (v6 == ++v8)
          {
            v6 = OUTLINED_FUNCTION_9_6(result, v9, v10, v12);
            result = 1;
            if (v6)
            {
              goto LABEL_5;
            }

            return result;
          }
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CMScreenSuspendStream(const void *a1)
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
  v7[2] = __CMScreenSuspendStream_block_invoke;
  v7[3] = &__block_descriptor_64_e5_v8__0l;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  v7[7] = v1;
  MXDispatchAsync("CMScreenSuspendStream", "CMSessionManager_Screen.m", 338, 0, 0, v5, v7);
  return 0;
}

uint64_t FigRoutingSessionManagerRemoteCopyLongFormVideoManager(const __CFAllocator *a1, void *a2)
{
  v15 = 0;
  v16 = 0;
  xdict = 0;
  if (qword_1ED6D2FA0 != -1)
  {
    dispatch_once(&qword_1ED6D2FA0, &__block_literal_global_71);
  }

  v4 = _MergedGlobals_10;
  if (!_MergedGlobals_10)
  {
    v5 = FigXPCCreateBasicMessage();
    if (v5)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_25();
    v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (v5)
    {
      goto LABEL_21;
    }

    uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
    if (!uint64)
    {
      v4 = 4294951905;
      goto LABEL_16;
    }

    v7 = uint64;
    v5 = FigXPCRemoteClientRetainCopiedObject();
    if (v5)
    {
      goto LABEL_21;
    }

    FigRoutingSessionManagerGetClassID(0, v8);
    v9 = CMDerivedObjectCreate();
    if (!v9)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = v7;
      v11 = FigSimpleMutexCreate();
      DerivedStorage[2] = v11;
      if (v11 && (Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (DerivedStorage[3] = Mutable) != 0))
      {
        DerivedStorage[4] = 1;
        v9 = FigXPCRemoteClientAssociateObject();
        if (!v9)
        {
          v4 = 0;
          v16 = 0;
LABEL_13:
          if (v4)
          {
            goto LABEL_16;
          }

          if (a2)
          {
            v4 = 0;
            *a2 = 0;
            goto LABEL_16;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_9();
          v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", xdict, v15, 0);
LABEL_21:
          v4 = v5;
          goto LABEL_16;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_9();
        v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    v4 = v9;
    goto LABEL_13;
  }

LABEL_16:
  FigXPCRelease();
  FigXPCRelease();
  if (v16)
  {
    CFRelease(v16);
  }

  return v4;
}

uint64_t routingSessionManagerRemote_HandleClientMessage(uint64_t a1, void *a2)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    return 4294951138;
  }

  return result;
}

void routingSessionManagerRemote_runOneCallback(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"Callback");
  v5 = CFDictionaryGetValue(a1, @"CallbackContext");
  v6 = CFDictionaryGetValue(a1, @"Manager");
  if (Value)
  {
    Value(v5, a2);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void routingSessionManagerRemote_dequeueAndInvokeCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UInt64 = FigCFNumberCreateUInt64();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 24), UInt64);
  if (Value)
  {
    v7 = CFRetain(Value);
  }

  else
  {
    v7 = 0;
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 24), UInt64);
  FigSimpleMutexUnlock();
  if (v7)
  {
    routingSessionManagerRemote_runOneCallback(v7, a3);
    CFRelease(v7);
  }

  if (UInt64)
  {

    CFRelease(UInt64);
  }
}

uint64_t routingSessionManagerRemote_CopyCurrentSession(uint64_t a1, const __CFDictionary **a2)
{
  v6 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
LABEL_9:
    v4 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v6);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  ObjectID = OUTLINED_FUNCTION_4_0(qword_1ED6D2F98);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  v4 = FigXPCMessageCopyCFDictionary();
  if (!v4)
  {
    *a2 = FigRoutingSessionCopyFromDictionary(0);
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t routingSessionManagerRemote_CopyLikelyDestinations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_0_25(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v13, v14);
  if (!v8)
  {
    OUTLINED_FUNCTION_8();
    v8 = FigXPCCreateBasicMessage();
    if (!v8)
    {
      v8 = OUTLINED_FUNCTION_4_0(qword_1ED6D2F98);
      if (!v8)
      {
        v8 = FigXPCMessageCopyCFArray();
      }
    }
  }

  v9 = v8;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t routingSessionManagerRemote_GetAirPlayVideoActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_0_25(a1, a2, a3, a4, a5, a6, a7, a8, v12, xdict, v15, v16);
  if (v9 || (OUTLINED_FUNCTION_8(), v9 = FigXPCCreateBasicMessage(), v9))
  {
    v10 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_0(qword_1ED6D2F98);
    if (!v10)
    {
      *v8 = xpc_dictionary_get_BOOL(xdicta, kFigRoutingSessionManagerXPCMsgParam_AirPlayVideoActive);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t routingSessionManagerRemote_GetAirPlayVideoPlaying(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_0_25(a1, a2, a3, a4, a5, a6, a7, a8, v12, xdict, v15, v16);
  if (v9 || (OUTLINED_FUNCTION_8(), v9 = FigXPCCreateBasicMessage(), v9))
  {
    v10 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_0(qword_1ED6D2F98);
    if (!v10)
    {
      *v8 = xpc_dictionary_get_BOOL(xdicta, kFigRoutingSessionManagerXPCMsgParam_AirPlayVideoPlaying);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t routingSessionManagerRemote_GetPrefersLikelyDestinationsOverCurrentSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_0_25(a1, a2, a3, a4, a5, a6, a7, a8, v12, xdict, v15, v16);
  if (v9 || (OUTLINED_FUNCTION_8(), v9 = FigXPCCreateBasicMessage(), v9))
  {
    v10 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_0(qword_1ED6D2F98);
    if (!v10)
    {
      *v8 = xpc_dictionary_get_BOOL(xdicta, kFigRoutingSessionManagerXPCMsgParam_PrefersLikelyDestinations);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t routingSessionManagerRemote_StartSessionWithRouteDescriptors(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v3 = FigXPCCreateBasicMessage();
    if (v3 || (v3 = FigXPCMessageSetCFArray(), v3))
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v4;
}

uint64_t routingSessionManagerRemote_StartSuppressingLikelyDestinations(uint64_t a1)
{
  v5 = 0;
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v3;
}

uint64_t routingSessionManagerRemote_StopSuppressingLikelyDestinations(uint64_t a1)
{
  v5 = 0;
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v3;
}

uint64_t routingSessionManagerRemote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingSessionManagerRemote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextXPCHandleCopySelectedRouteMessage(uint64_t a1, uint64_t a2)
{
  if (!*(*(OUTLINED_FUNCTION_24_1(a1, a2) + 16) + 24))
  {
    return 4294954514;
  }

  v3 = OUTLINED_FUNCTION_26_1();
  v5 = v4(v3);
  v6 = v8;
  if (v5)
  {
    v2 = v5;
    if (!v8)
    {
      return v2;
    }

LABEL_5:
    CFRelease(v6);
    return v2;
  }

  if (!v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_4();
  FigEndpointXPCServerWriteNeighborEndpointToReply();
  OUTLINED_FUNCTION_25_1();
  if (v6)
  {
    goto LABEL_5;
  }

  return v2;
}

uint64_t FigRoutingContextXPCHandleCopySelectedRouteForRemoteControlMessage(uint64_t a1, uint64_t a2)
{
  if (!*(*(OUTLINED_FUNCTION_24_1(a1, a2) + 16) + 72))
  {
    return 4294954514;
  }

  v3 = OUTLINED_FUNCTION_26_1();
  v5 = v4(v3);
  v6 = v8;
  if (v5)
  {
    v2 = v5;
    if (!v8)
    {
      return v2;
    }

LABEL_5:
    CFRelease(v6);
    return v2;
  }

  if (!v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_4();
  FigEndpointXPCServerWriteNeighborEndpointToReply();
  OUTLINED_FUNCTION_25_1();
  if (v6)
  {
    goto LABEL_5;
  }

  return v2;
}

uint64_t FigRoutingContextXPCHandleCreateCommChannelMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  FigXPCMessageCopyCFDictionary();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v4)
  {
    v5 = v4(a1, 0, &v7);
    if (!v5)
    {
      FigXPCMessageSetCFString();
    }
  }

  else
  {
    v5 = 4294954514;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

uint64_t FigRoutingContextXPCHandleCreateCommChannelForDeviceIDMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigXPCMessageCopyCFDictionary();
  FigXPCMessageCopyCFString();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 152))
  {
    return 4294954514;
  }

  v5 = OUTLINED_FUNCTION_10_5();
  v7 = v6(v5);
  if (v7)
  {
    return v7;
  }

  if (!a2)
  {
    return 4294955276;
  }

  Mutable = *(a2 + 16);
  v9 = MEMORY[0x1E695E480];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a2 + 16) = Mutable;
    if (!Mutable)
    {
      return 4294955275;
    }
  }

  Value = CFDictionaryGetValue(Mutable, 0);
  if (Value)
  {
    v11 = CFRetain(Value);
    if (v11)
    {
      goto LABEL_10;
    }
  }

  v12 = CFSetCreateMutable(*v9, 0, MEMORY[0x1E695E9F8]);
  if (!v12)
  {
    return 4294955275;
  }

  v11 = v12;
  CFDictionarySetValue(*(a2 + 16), 0, v12);
LABEL_10:
  v13 = OUTLINED_FUNCTION_4_9();
  CFSetAddValue(v13, v14);
  CFRelease(v11);
  FigXPCMessageSetCFString();
  return 0;
}

uint64_t FigRoutingContextXPCHandleSendDataMessage()
{
  OUTLINED_FUNCTION_27_1();
  v2 = FigXPCMessageCopyCFString();
  if (v2 || (v2 = FigXPCMessageCopyCFData(), v2) || (CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v0, v1), OUTLINED_FUNCTION_5_10(), *(*(CMBaseObjectGetVTable() + 16) + 120)) && (v4 = OUTLINED_FUNCTION_22_1(), v5(v4), OUTLINED_FUNCTION_18_2(), !v6))
  {
    v7 = v2;
    CompletionCallbackParametersFromMessageAndConnection = 0;
  }

  else
  {
    v7 = 4294954514;
  }

  DestroyCompletionCallbackParameters(CompletionCallbackParametersFromMessageAndConnection);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v7;
}

uint64_t FigRoutingContextXPCHandleSendDataForDeviceIDMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FigXPCMessageCopyCFString();
  if (v4 || (v4 = FigXPCMessageCopyCFData(), v4) || (v4 = FigXPCMessageCopyCFString(), v4) || ((v5 = OUTLINED_FUNCTION_10_5(), CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v5, v6), OUTLINED_FUNCTION_5_10(), !v9) ? (v10 = v8) : (v10 = 0), (v11 = *(*(CMBaseObjectGetVTable() + 16) + 160)) != 0 && (v11(a2, 0, 0, 0, v10, CompletionCallbackParametersFromMessageAndConnection), OUTLINED_FUNCTION_18_2(), !v9)))
  {
    v12 = v4;
    CompletionCallbackParametersFromMessageAndConnection = 0;
  }

  else
  {
    v12 = 4294954514;
  }

  DestroyCompletionCallbackParameters(CompletionCallbackParametersFromMessageAndConnection);
  return v12;
}

uint64_t FigRoutingContextXPCHandleCloseCommChannelMessage(uint64_t a1, uint64_t a2)
{
  v3 = FigXPCMessageCopyCFString();
  if (!v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (!v4)
    {
      return 4294954514;
    }

    return v4(a1, 0);
  }

  return v3;
}

uint64_t FigRoutingContextXPCHandleCloseCommChannelForDeviceIDMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = FigXPCMessageCopyCFString();
  if (v5)
  {
    return v5;
  }

  v5 = FigXPCMessageCopyCFString();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v6)
  {
    return 4294954514;
  }

  v5 = v6(a1, 0, 0);
  if (v5)
  {
    return v5;
  }

  if (!a2)
  {
    return 4294955276;
  }

  v7 = *(a2 + 16);
  if (!v7)
  {
    return 4294955276;
  }

  Value = CFDictionaryGetValue(v7, 0);
  if (!Value)
  {
    return 4294955272;
  }

  v9 = Value;
  CFSetRemoveValue(Value, 0);
  if (!CFSetGetCount(v9))
  {
    CFDictionaryRemoveValue(*(a2 + 16), 0);
  }

  return 0;
}

uint64_t FigRoutingContextXPCHandleSendCommandMessage()
{
  OUTLINED_FUNCTION_27_1();
  v2 = FigXPCMessageCopyCFString();
  if (v2 || (v2 = FigXPCMessageCopyCFDictionary(), v2) || (CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v0, v1), *(*(CMBaseObjectGetVTable() + 16) + 136)) && (v4 = OUTLINED_FUNCTION_22_1(), v5(v4), OUTLINED_FUNCTION_18_2(), !v6))
  {
    v7 = v2;
    CompletionCallbackParametersFromMessageAndConnection = 0;
  }

  else
  {
    v7 = 4294954514;
  }

  DestroyCompletionCallbackParameters(CompletionCallbackParametersFromMessageAndConnection);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v7;
}

uint64_t FigRoutingContextXPCHandleCopySelectedBufferedEndpointForTestingMessage()
{
  OUTLINED_FUNCTION_21_1();
  FigXPCMessageCopyCFString();
  if (*(*(CMBaseObjectGetVTable() + 16) + 192))
  {
    v1 = OUTLINED_FUNCTION_10_5();
    v3 = v2(v1);
    v4 = v7;
    if (v3)
    {
      v0 = v3;
      if (v7)
      {
LABEL_5:
        CFRelease(v4);
      }
    }

    else
    {
      if (v7)
      {
        OUTLINED_FUNCTION_13_4();
        FigEndpointXPCServerWriteNeighborEndpointToReply();
        OUTLINED_FUNCTION_25_1();
        if (!v4)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      v0 = 0;
    }
  }

  else
  {
    v0 = 4294954514;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v0;
}

void *CreateCompletionCallbackParametersFromMessageAndConnection(void *a1, uint64_t a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, kFigRoutingContextXPCMsgParam_CompletionID);
  if (!uint64)
  {
    return 0;
  }

  v4 = uint64;
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
  v6 = v5;
  if (v5)
  {
    *v5 = v4;
    v5[1] = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
    v6[2] = FigXPCRetain();
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  return v6;
}

uint64_t RoutingContextModificationCallback(uint64_t a1, void *a2)
{
  if (a1 && !OUTLINED_FUNCTION_9_7(a1))
  {
    xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_CompletionID, *a1);
    [a2 dictionaryRepresentation];
    OUTLINED_FUNCTION_10_5();
    FigXPCMessageSetCFDictionary();
    xpc_connection_send_message(*(a1 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a1);
  return FigXPCRelease();
}

uint64_t SendDataCompletionCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 && !OUTLINED_FUNCTION_9_7(a1))
  {
    xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_CompletionID, *a4);
    FigXPCMessageSetCFString();
    xpc_dictionary_set_int64(0, kFigRoutingContextXPCMsgParam_CompletionStatus, a3);
    xpc_connection_send_message(*(a4 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a4);
  return FigXPCRelease();
}

uint64_t SendCommandCompletionCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 && !OUTLINED_FUNCTION_9_7(a1))
  {
    xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_CompletionID, *a4);
    FigXPCMessageSetCFDictionary();
    xpc_dictionary_set_int64(0, kFigRoutingContextXPCMsgParam_CompletionStatus, a3);
    xpc_connection_send_message(*(a4 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a4);
  return FigXPCRelease();
}

uint64_t FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t CreateRoutingContextServerState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void DisposeRoutingContextServerState_cold_1(uint64_t a1, CFTypeRef *a2)
{
  if (FigCFEqual())
  {
    cf[0] = 0;
    v4 = *a2;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(v4, @"contextUUID", *MEMORY[0x1E695E480], cf);
      if (cf[0])
      {
        FigRoutingManager_CloseRelayCommChannels(cf[0]);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v6 = FigCFDictionaryCopyArrayOfKeys();
    if (v6)
    {
      v7 = v6;
      if (CFArrayGetCount(v6) >= 1)
      {
        v8 = 0;
        do
        {
          v9 = OUTLINED_FUNCTION_10_5();
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
          Value = CFDictionaryGetValue(*(a1 + 16), ValueAtIndex);
          cf[0] = *a2;
          cf[1] = ValueAtIndex;
          CFSetApplyFunction(Value, CloseCommChannelApplier, cf);
          ++v8;
        }

        while (v8 < CFArrayGetCount(v7));
      }

      CFDictionaryRemoveAllValues(*(a1 + 16));
      CFRelease(v7);
    }

    else
    {
      CFDictionaryRemoveAllValues(*(a1 + 16));
    }
  }
}

void __FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v18 = 0;
  FigRoutingSessionManagerGetClassID(a1, a2);
  started = CMDerivedObjectCreate();
  if (started)
  {
    goto LABEL_28;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = _Block_copy(&__block_literal_global_73);
  *DerivedStorage = v6;
  if (!v6 || (v7 = FigSimpleMutexCreate(), (DerivedStorage[1] = v7) == 0) || (v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v9 = dispatch_queue_create("com.apple.coremedia.routing-session-manager.remote-replacement", v8), (DerivedStorage[3] = v9) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
    started = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_28:
    v15 = started;
    goto LABEL_24;
  }

  v10 = 0;
  v11 = *DerivedStorage;
  cf = 0;
  do
  {
    v12 = (*(v11 + 16))(v11, v3, &cf);
  }

  while ((v12 == -16155 || v12 == -15394) && v10++ < 4);
  v15 = v12;
  v16 = cf;
  if (!v15)
  {
    if (cf)
    {
      v17 = CFRetain(cf);
      v16 = cf;
    }

    else
    {
      v17 = 0;
    }

    DerivedStorage[2] = v17;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (!v15)
  {
    started = routingSessionManagerResilientRemote_startObservingRemoteManager(0, DerivedStorage[2]);
    if (!started)
    {
      v15 = 0;
      FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_sLongFormManager = 0;
      goto LABEL_24;
    }

    goto LABEL_28;
  }

LABEL_24:
  if (v18)
  {
    CFRelease(v18);
  }

  *(*(*(a1 + 32) + 8) + 24) = v15;
}

void __routingSessionManagerResilientRemote_serverConnectionDied_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 32);
  if (v3 <= 4)
  {
    *(v2 + 32) = v3 + 1;
    if (!routingSessionManagerResilientRemote_replaceRemoteManager(a1[5]))
    {
      *(a1[4] + 32) = 0;
    }
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t routingSessionManagerResilientRemote_replaceRemoteManager(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v2 = (*(*DerivedStorage + 16))();
  if (!v2)
  {
    CMBaseObjectGetDerivedStorage();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
    v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0, v7);
  }

  v4 = v2;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t CMSMNP_NowPlayingAppIsPlayingDidChangeTimerDidFinish()
{
  if (qword_1EB75E120)
  {
    dispatch_source_cancel(qword_1EB75E120);
    if (qword_1EB75E120)
    {
      dispatch_release(qword_1EB75E120);
      qword_1EB75E120 = 0;
    }
  }

  IsPlaying = CMSMNP_GetNowPlayingAppIsPlaying();

  return CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChangeDelayed(IsPlaying);
}

void routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  v2 = *DerivedStorage;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v3 || v3(v2, &theArray))
  {
LABEL_13:
    DestinationWithRouteDescriptors = 0;
    goto LABEL_14;
  }

  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_3_0(v7))
    {
      v24 = 136315138;
      v25 = "routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession";
      v20 = 12;
      OUTLINED_FUNCTION_2();
      _os_log_send_and_compose_impl(v8, v9, v10, v11, v12, v13, 0, v14, &v24, v20);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_13;
  }

  if (*(DerivedStorage + 120))
  {
    DestinationWithRouteDescriptors = routingSessionManager_createDestinationWithRouteDescriptors(theArray);
    if (FigRoutingSessionCreateForActiveSharePlayCapableCallSession(*MEMORY[0x1E695E480], DestinationWithRouteDescriptors, &cf))
    {
      goto LABEL_14;
    }

    v5 = @"SharePlay-capable call session is active";
  }

  else
  {
    DestinationWithRouteDescriptors = 0;
    v5 = @"SharePlay-capable call session is not active";
  }

  v21 = v5;
  OUTLINED_FUNCTION_10_6();
  routingSessionManager_updateCurrentSession(v15, v16, v17, v18, v19, 0, 1, 0, 0, 0, v21, 0);
LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (DestinationWithRouteDescriptors)
  {
    CFRelease(DestinationWithRouteDescriptors);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t routingSessionManager_GetPrefersLikelyDestinationsOverCurrentSession(uint64_t a1, BOOL *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isVideoOnScreen = routingSessionManager_isVideoOnScreen(a1);
  FigSimpleMutexLock();
  cf = 0;
  v75 = 0;
  v13 = *(DerivedStorage + 72);
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    shouldUpdateCurrentSession = 0;
    v21 = 4294954514;
    goto LABEL_34;
  }

  v15 = v14(v13, &v75);
  if (v15)
  {
    v21 = v15;
    shouldUpdateCurrentSession = 0;
  }

  else
  {
LABEL_4:
    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 48);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        goto LABEL_16;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 48), i);
      Value = CFDictionaryGetValue(ValueAtIndex, @"routingSessionDestination_RouteDescriptors");
      if (!routingSessionManager_routeIsBuiltIn(Value))
      {
        Count = routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(Value);
        if (Count)
        {
          break;
        }
      }
    }

    if (ValueAtIndex)
    {
      v21 = FigRoutingSessionCreate(*MEMORY[0x1E695E480], 0, ValueAtIndex, &cf);
      v22 = cf;
      if (!v21)
      {
        shouldUpdateCurrentSession = routingSessionManager_shouldUpdateCurrentSession(*(DerivedStorage + 24), *(DerivedStorage + 72), *(DerivedStorage + 88), *(DerivedStorage + 96), cf, *(DerivedStorage + 56), 1, 0, 0, isVideoOnScreen);
        v22 = cf;
        if (!cf)
        {
          goto LABEL_34;
        }

        goto LABEL_15;
      }

      shouldUpdateCurrentSession = 0;
      if (cf)
      {
LABEL_15:
        CFRelease(v22);
      }
    }

    else
    {
LABEL_16:
      if (*(DerivedStorage + 72))
      {
        if (dword_1EB75DF00)
        {
          v23 = OUTLINED_FUNCTION_14_6(Count, v6, v7, v8, v9, v10, v11, v12, v54, v57, v60, v63, SBYTE2(v63), SBYTE3(v63), SHIDWORD(v63));
          if (OUTLINED_FUNCTION_21_2(v23, v24, v25, v26, v27, v28, v29, v30, v55, v58, v61, v64, v68, v70, v72))
          {
            v31 = @"routingSessionDestination_RouteDescriptors";
          }

          else
          {
            v31 = @"routingSessionDestination_RouteDescriptors" & 0xFFFFFFFE;
          }

          if (v31)
          {
            LODWORD(v76) = 136315138;
            OUTLINED_FUNCTION_0_29();
            OUTLINED_FUNCTION_17_5(v32, v33, v34, v35, &dword_1B17A2000, v36, v37, "-FigRoutingSessionManager- %s: Should not prefer predictions because there is no video-capable external route prediction", v54, v57, v60, v65, cf, v75, v76, v77, v78);
          }

          OUTLINED_FUNCTION_0_0();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        shouldUpdateCurrentSession = 0;
      }

      else
      {
        if (!dword_1EB75DF00)
        {
          v21 = 0;
          shouldUpdateCurrentSession = 1;
          goto LABEL_34;
        }

        v38 = OUTLINED_FUNCTION_14_6(Count, v6, v7, v8, v9, v10, v11, v12, v54, v57, v60, v63, SBYTE2(v63), SBYTE3(v63), SHIDWORD(v63));
        if (OUTLINED_FUNCTION_21_2(v38, v39, v40, v41, v42, v43, v44, v45, v56, v59, v62, v66, v69, v71, v73))
        {
          v46 = @"routingSessionDestination_RouteDescriptors";
        }

        else
        {
          v46 = @"routingSessionDestination_RouteDescriptors" & 0xFFFFFFFE;
        }

        if (v46)
        {
          LODWORD(v76) = 136315138;
          OUTLINED_FUNCTION_0_29();
          OUTLINED_FUNCTION_17_5(v47, v48, v49, v50, &dword_1B17A2000, v51, v52, "-FigRoutingSessionManager- %s: Should prefer predictions because there is no current session", v54, v57, v60, v67, cf, v75, v76, v77, v78);
        }

        shouldUpdateCurrentSession = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v21 = 0;
    }
  }

LABEL_34:
  if (v75)
  {
    CFRelease(v75);
  }

  FigSimpleMutexUnlock();
  if (!v21)
  {
    if (a2)
    {
      v21 = 0;
      *a2 = shouldUpdateCurrentSession;
    }

    else
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54, v57, v60);
    }
  }

  return v21;
}

uint64_t routingSessionManager_StartSessionWithRouteDescriptors(const void *a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  DestinationWithRouteDescriptors = routingSessionManager_createDestinationWithRouteDescriptors(a2);
  routingSessionManager_getConfiguration(&v36);
  FigGetCFPreferenceDoubleWithDefault();
  v7 = v6;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = *MEMORY[0x1E695E480];
  v10 = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(&v33);
  v11 = CFDateCreate(v9, v10 - v34);
  v12 = FigRoutingSessionCreate(v9, 0, DestinationWithRouteDescriptors, &v35);
  if (v12)
  {
    v19 = 0;
    if (v11)
    {
LABEL_12:
      CFRelease(v11);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_19_2(v13, v14, 0, 1, 0, v15, v16, v17, v23, v24, v25, v26);
    v18 = [FigRoutingSessionUpdateState alloc];
    v19 = [(FigRoutingSessionUpdateState *)v18 initWithNewSession:v35];
    if (a1)
    {
      CFRetain(a1);
    }

    routingSessionManager_getConfiguration(v31);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke;
    v30[3] = &unk_1E7AED040;
    v30[5] = a1;
    v30[6] = DerivedStorage;
    v30[4] = v19;
    routingSessionManager_waitForRecentPredictions(a1, v11, v30, v32);
    if (DestinationWithRouteDescriptors)
    {
      CFRetain(DestinationWithRouteDescriptors);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v20 = v7 + Current;
    if (v35)
    {
      CFRetain(v35);
      v21 = v35;
    }

    else
    {
      v21 = 0;
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_3;
    v28[3] = &unk_1E7AED090;
    v28[6] = a1;
    v28[7] = v21;
    v28[8] = DerivedStorage;
    v28[4] = v19;
    v28[5] = DestinationWithRouteDescriptors;
    v29 = 1;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_5;
    v27[3] = &__block_descriptor_56_e8_v12__0i8l;
    v27[4] = a1;
    v27[5] = v21;
    v27[6] = DestinationWithRouteDescriptors;
    routingSessionManager_discoverRoutes(v28, v27, v20);
    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (DestinationWithRouteDescriptors)
  {
    CFRelease(DestinationWithRouteDescriptors);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v12;
}

uint64_t FigRoutingSessionManagerInit_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingSessionManager_CopyLikelyDestinations_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingSessionManager_getAirPlayVideoActive_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingSessionManager_getAirPlayVideoPlaying_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigNotificationListenerStartNotifications_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __routingSessionManager_startSessionIfNecessary_block_invoke_cold_1()
{
  v13 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v1 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  if (OUTLINED_FUNCTION_3_0(v1))
  {
    v11 = 136315138;
    v12 = "routingSessionManager_startSessionIfNecessary_block_invoke";
    v10 = 12;
    OUTLINED_FUNCTION_2();
    _os_log_send_and_compose_impl(v2, v3, v4, v5, v6, v7, 0, v8, &v11, v10);
  }

  OUTLINED_FUNCTION_0_0();
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *(*(*(a2 + 32) + 8) + 24) = result;
  return result;
}

BOOL MXEndpointDescriptorCacheDoesEndpointIDMatchDeviceID(uint64_t a1, _BOOL8 a2)
{
  theString = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &theString);
    v5 = theString;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    if (!v5)
    {
      return 0;
    }

    location = CFStringFind(a2, v5, 0).location;
    v7 = CFStringFind(theString, a2, 0).location;
    if (FigCFEqual())
    {
      v8 = 0;
    }

    else
    {
      v8 = location == -1;
    }

    a2 = !v8 || v7 != -1;
    v5 = theString;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return a2;
}

const __CFDictionary *FigRoutingSessionCopyFromDictionary(const __CFDictionary *result)
{
  v3 = 0;
  if (result)
  {
    v1 = result;
    Value = CFDictionaryGetValue(result, @"EstablishedAutomaticallyFromLikelyDestination");
    result = CFDictionaryGetValue(v1, @"Destination");
    if (result)
    {
      FigRoutingSessionCreate(*MEMORY[0x1E695E480], Value == *MEMORY[0x1E695E4D0], result, &v3);
      return v3;
    }
  }

  return result;
}

uint64_t HandleRoutingSessionManagerRemoteMessageWithReply(uint64_t a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t HandleRoutingSessionManagerRemoteMessageWithNoReply(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    return v3;
  }

  else
  {
    return 4294951138;
  }
}

void *CreateCompletionCallbackParametersFromMessageAndConnection_0(void *a1, uint64_t a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, kFigRoutingSessionManagerXPCMsgParam_CompletionID);
  if (!uint64)
  {
    return 0;
  }

  v4 = uint64;
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
  if (!v5)
  {
    fig_log_get_emitter();
    if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10))
    {
      DestroyCompletionCallbackParameters(0);
    }

    return 0;
  }

  v6 = v5;
  *v5 = v4;
  v5[1] = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
  v6[2] = FigXPCRetain();
  return v6;
}

uint64_t StartHighConfidenceSessionCompletionCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_6_11();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, *a1);
      xpc_dictionary_set_int64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionStatus, v1);
      xpc_connection_send_message(*(a1 + 16), 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0, v5);
  }

  DestroyCompletionCallbackParameters(a1);
  return FigXPCRelease();
}

uint64_t PrepareForPlaybackCompletionCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_6_11();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, *a1);
      xpc_dictionary_set_int64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionStatus, v1);
      xpc_connection_send_message(*(a1 + 16), 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0, v5);
  }

  DestroyCompletionCallbackParameters(a1);
  return FigXPCRelease();
}

uint64_t MXAggregateEndpointCreateAggregateEndpoint(const void *a1, const void *a2, int a3, uint64_t *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (MXAggregateSetUpLoggingOnce_setUpLogging != -1)
  {
    dispatch_once(&MXAggregateSetUpLoggingOnce_setUpLogging, &__block_literal_global_81);
  }

  FigEndpointAggregateGetClassID();
  v8 = CMDerivedObjectCreate();
  if (!v8)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 56) = 0u;
    *(DerivedStorage + 72) = 0u;
    *(DerivedStorage + 88) = 0;
    *(DerivedStorage + 104) = 0u;
    *(DerivedStorage + 120) = 0u;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *(DerivedStorage + 32) = v10;
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    *(DerivedStorage + 16) = v11;
    *(DerivedStorage + 24) = a3;
    *(DerivedStorage + 48) = 0;
    *(DerivedStorage + 96) = 0;
    *(DerivedStorage + 136) = 0;
    *(DerivedStorage + 144) = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v12 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v13 = [v12 UUIDString];

    *DerivedStorage = v13;
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = *(DerivedStorage + 24);
    if (v15 > 3)
    {
      v16 = @"?";
    }

    else
    {
      v16 = off_1E7AED288[v15];
    }

    *(DerivedStorage + 8) = [v14 initWithFormat:@"MXEndpointAggregate-%@-[{%p}]", v16, 0];
    *(DerivedStorage + 40) = FigSimpleMutexCreate();
    *a4 = 0;
    if (dword_1EB75DDD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v8;
}

uint64_t MXAggregateEndpointRemoveAndDestroyRemoteAggregateEndpoint(uint64_t a1)
{
  if (!endpointAggregate_IsMXAggregateEndpoint(a1))
  {
    return 4294950576;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) && (FigEndpointAggregateGetClassID(), CMBaseObjectIsMemberOfClass()) && endpointAggregate_IsMXAggregateEndpoint(a1))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = FigNotificationCenterRemoveWeakListener();
  }

  else
  {
    v3 = 4294950576;
  }

  v4 = *(DerivedStorage + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v5(v4);
  }

  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 48) = 0;
  }

  *(DerivedStorage + 144) = objc_alloc_init(MEMORY[0x1E695DEC8]);
  return v3;
}

void MXAggregateEndpointUpdateSubEndpoints(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v2 = *(DerivedStorage + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v3 = CFRetain(v2);
  if (!v3)
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &v8);
  }

  v6 = 0;
LABEL_8:

  v7 = v8;
  if (!v8)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  *(DerivedStorage + 144) = v7;
  if ((v6 & 1) == 0)
  {
    CFRelease(v3);
  }
}

BOOL endpointAggregate_WithRemoteAggregateEndpoint_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = MXGetAssertionLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 136446722;
    *(&v11 + 4) = "-MXAggregateEndpoint-";
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_22(&dword_1B17A2000, v4, v5, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v6, v7, v8, v9, v11, DWORD2(v11));
  }

  return a1 == 0;
}

void endpointAggregate_WithRemoteAggregateEndpoint_cold_2(_DWORD *a1, uint64_t a2)
{
  v3 = MXGetAssertionLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10) = 136446722;
    *(&v10 + 4) = "-MXAggregateEndpoint-";
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_22(&dword_1B17A2000, v4, v5, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  *a1 = -16725;
}

void endpointAggregate_Deactivate_cold_1(_DWORD *a1, uint64_t a2)
{
  v3 = MXGetAssertionLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10) = 136446722;
    *(&v10 + 4) = "-MXAggregateEndpoint-";
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_22(&dword_1B17A2000, v4, v5, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  *a1 = 0;
}

void cmsmInitializeCMSessionManager()
{
  v31 = *MEMORY[0x1E69E9840];
  if (qword_1ED6D2FD0 != -1)
  {
    dispatch_once(&qword_1ED6D2FD0, &__block_literal_global_82);
  }

  CMSMDeviceState_UpdateDeviceClass();
  MXCFPreferencesMigrateUserPreferencesToMXDomain();
  MXCFPreferencesMigrateSilentModeUserPreferenceToMXDomain(v0, v1);
  +[MXAppProtectionManager sharedInstance];
  [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager loadMediaEndowments];
  +[MXSessionManager sharedInstance];
  qword_1ED6D2FF8 = 0;
  qword_1ED6D3000 = "CMSession";
  unk_1ED6D3008 = cmsInit;
  qword_1ED6D3010 = 0;
  unk_1ED6D3018 = CMSessionFinalize;
  qword_1ED6D3020 = 0;
  unk_1ED6D3028 = 0;
  qword_1ED6D3030 = 0;
  unk_1ED6D3038 = cmsCopyDebugDesc;
  v2 = _CFRuntimeRegisterClass();
  qword_1ED6D2FD8 = v2;
  if (qword_1ED6D2FE0 != -1)
  {
    dispatch_once(&qword_1ED6D2FE0, &__block_literal_global_249);
  }

  if (qword_1ED6D2FE8 != -1)
  {
    dispatch_once(&qword_1ED6D2FE8, &__block_literal_global_306);
  }

  IsAudiomxd = CMSMDeviceState_IsAudiomxd(v2, v3);
  v5 = IsAudiomxd;
  v7 = MXGetNotificationSenderQueue(IsAudiomxd, v6);
  if (v5)
  {
    CMSMDeviceState_AddQueueToWatchDogMonitoring(v7);
  }

  else
  {
    FigWatchdogMonitorDispatchQueue();
  }

  gCMSM = FigReentrantMutexCreate();
  qword_1EB75E1D0 = 0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v10 = OUTLINED_FUNCTION_3_0(v9);
    if (v10)
    {
      v28 = 136315138;
      v29 = "cmsmInitializeCMSessionManager";
      LODWORD(v27) = 12;
      v26 = &v28;
      OUTLINED_FUNCTION_2_18(v10, v11, valuePtr, v12, &dword_1B17A2000, v13, v14, "-CMSessionMgr- %s: Initializing FigRouteDiscoveryManager");
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRouteDiscoveryManagerInit();
  FigRouteDiscoveryManagerStart();
  FigRoutingManagerInit();
  CMScreenInitialize();
  +[MXFrontBoardServices sharedInstance];
  CMSM_IDS_Initialize();
  CMSM_IDSClient_Initialize();
  CMSM_IDSServer_Initialize();
  CMSM_IDSConnection_Initialize(v15);
  MX_CoreServices_Initialize();
  if (!qword_1ED6D2FF0)
  {
    CelestialGetModelSpecificName();
    v16 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v16)
    {
      v17 = v16;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v17))
      {
        Value = CFDictionaryGetValue(v17, @"Category");
        v20 = Value;
        if (Value)
        {
          CFRetain(Value);
        }
      }

      else
      {
        v20 = 0;
      }

      qword_1ED6D2FF0 = v20;
      CFRelease(v17);
    }

    else
    {
      qword_1ED6D2FF0 = 0;
    }
  }

  [MXSessionManager sharedInstance:v26];
  v21 = PVMInitialize();
  CMSystemSoundMgr_Initialize(v21, v22);
  v25 = MXGetNotificationSenderQueue(v23, v24);
  CMSMDeviceState_Initialize(v25);
  MX_IOKit_Initialize();
  dword_1EB75E11C = FigGetCFPreferenceNumberWithDefault();
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioCategory:"setCurrentAudioCategory:", @"Audio/Video"];
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioMode:"setCurrentAudioMode:", @"Default"];
  FigSimpleMutexLock();
  MXVW_CreateVectorCMSRouteInfo();
}

uint64_t MXCoreSessionAddResource(void *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v41[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = 4294954315;
    if (a2 && qword_1EB75E108)
    {
      FigSimpleMutexLock();
      if (dword_1EB75E100 < 1)
      {
        goto LABEL_29;
      }

      v8 = 0;
      v9 = 0;
      while (!FigCFEqual())
      {
        ++v9;
        v8 += 24;
        if (v9 >= dword_1EB75E100)
        {
          goto LABEL_29;
        }
      }

      if (!*(qword_1EB75E108 + v8 + 8))
      {
        goto LABEL_29;
      }

      v39 = 0;
      v41[0] = 0;
      *a4 = 0;
      cmsmGetCountAndResourceEntriesOfType(a2, &v39, v41);
      v24 = v41[0];
      if (!v41[0])
      {
        goto LABEL_29;
      }

      v25 = v39;
      if (v39 < 1)
      {
        LODWORD(v26) = 0;
        v29 = -1;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v28 = (v41[0] + 8);
        v29 = -1;
        while (*(v28 - 1))
        {
          v31 = *v28;
          v28 += 2;
          v30 = v31;
          if (v31 > v27)
          {
            v29 = v26;
            v27 = v30;
          }

          if (v39 == ++v26)
          {
            LODWORD(v26) = v39;
            goto LABEL_23;
          }
        }

        *(v28 - 1) = a1;
        *v28 = FigGetUpTimeNanoseconds();
        v29 = v26;
      }

LABEL_23:
      if (v29 >= v25)
      {
LABEL_29:
        v5 = 4294954315;
        goto LABEL_30;
      }

      v32 = (v24 + 16 * v29);
      if (v26 == v25)
      {
        v33 = *v32;
        if (*v32)
        {
          FigSimpleMutexUnlock();
          v5 = cmsBeginInterruptionGuts(a1, v33, 2);
          FigSimpleMutexLock();
          if (v5)
          {
LABEL_30:
            FigSimpleMutexUnlock();
            return v5;
          }

          *v32 = a1;
          v32[1] = FigGetUpTimeNanoseconds();
        }
      }

      v5 = 0;
      *a4 = v32;
      goto LABEL_30;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v18 = OUTLINED_FUNCTION_17(os_log_and_send_and_compose_flags_and_os_log_type, v11, v12, v13, v14, v15, v16, v17, v35, v36, v37, *v38, v38[2], OS_LOG_TYPE_DEFAULT, 0);
    if (OUTLINED_FUNCTION_3_0(v18))
    {
      v39 = 136315138;
      v40 = "MXCoreSessionAddResource";
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_2_18(v19, v20, v41, v21, &dword_1B17A2000, v22, v23, "-CMSessionMgr- %s: NULL session provided; returning kMXError_InvalidParameter");
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954315;
  }

  return v5;
}

uint64_t cmsSetClientPriority(void *a1, uint64_t a2)
{
  if (a2 <= 0x14 && ((1 << a2) & 0x100401) != 0)
  {
    CanClientsSetEmergencyAlertPriority = MX_FeatureFlags_CanClientsSetEmergencyAlertPriority();
    if (a2 != 20 || !CanClientsSetEmergencyAlertPriority)
    {
      if (!CanClientsSetEmergencyAlertPriority && ([a1 mustUseDefaultClientPriority] & 1) != 0)
      {
        return 4294954309;
      }

      isActive = objc_msgSend_isActive(a1);
      if (a2 == 10 && isActive && !CMSUtility_IsAudioCategoryRingtone(a1))
      {
        return 4294954309;
      }

      goto LABEL_12;
    }

    if ([a1 hasEntitlementToSetEmergencyAlertPriority])
    {
      objc_msgSend_isActive(a1);
LABEL_12:
      v7 = [a1 clientPriority];
      [a1 setClientPriority:a2];
      [a1 setHasPhoneCallBehavior:CMSUtility_HasPhoneCallBehaviour(a1)];
      [a1 setOptOutOfMutePriority:CMSUtility_HasPhoneCallBehaviour(a1)];
      if ([a1 clientPriority] <= v7 || !objc_msgSend_isActive(a1) || (result = cmsBeginInterruptionGuts(a1, 0, 2), !result) && (result = objc_msgSend(a1, "sendSessionConfigurationInfoToVA"), !result))
      {
        if ((v9 = CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded(), MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(v9, v10)) && (objc_msgSend_isActive(a1) & 1) != 0 || (result = [a1 isPlaying], result))
        {
          CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 12);
          CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded(v11, v12);
          return 0;
        }
      }

      return result;
    }

    v13 = qword_1EB75DE38;
    v14 = v2;
    v15 = 7113;
  }

  else
  {
    v13 = qword_1EB75DE38;
    v14 = v2;
    v15 = 7102;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294954309, "-CMSessionMgr-", v15, v14);
}

uint64_t cmsmActivateEndpointFromRouteDescription(const __CFDictionary *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  UIDFromRouteDescription = CMSMVAUtility_GetUIDFromRouteDescription(a1);
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  v4 = vaeCopyDeviceIdentifierFromVADPort(CurrentOutputPortAtIndex);
  v5 = FigCFEqual();
  if (!v5)
  {
    CFDictionaryGetValue(a1, @"AVAudioRouteName");
    v27 = vaeCopyNameForPort(CurrentOutputPortAtIndex);
    Value = CFDictionaryGetValue(a1, @"RouteName");
    if (dword_1EB75DE40)
    {
      v36 = OUTLINED_FUNCTION_2_13(Value, v29, v30, v31, v32, v33, v34, v35, v49, v51, v53, v55, SBYTE2(v55), SBYTE3(v55), SHIDWORD(v55));
      if (os_log_type_enabled(v36, type))
      {
        v37 = v61;
      }

      else
      {
        v37 = v61 & 0xFFFFFFFE;
      }

      if (v37)
      {
        OUTLINED_FUNCTION_1_5();
        _os_log_send_and_compose_impl(v38, 0, v62, 128, &dword_1B17A2000, v36, type, "-CMSessionMgr- %s: Route picked, Current = %{public}@ [%{public}@], Picked = %{public}@ [%{public}@], process: %{public}@");
      }

      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (!FigCFEqual())
    {
      goto LABEL_33;
    }

    v40 = FigRoutingManagerCopyEndpointWithDeviceID(UIDFromRouteDescription, 1, *MEMORY[0x1E69618D0], 0);
    if (UIDFromRouteDescription && CFStringHasSuffix(UIDFromRouteDescription, @"screen"))
    {
      v41 = qword_1EB75E1A0;
    }

    else
    {
      v41 = qword_1EB75E188;
    }

    v42 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v42)
    {
      v4 = v42(v41, v40, 0);
      if (!v40)
      {
LABEL_32:
        if (v4)
        {
          return v4;
        }

LABEL_33:
        if (FigCFEqual() || FigCFEqual())
        {
          if (CFDictionaryGetValue(a1, @"PortNumber"))
          {
            v43 = MEMORY[0x1E69618F8];
          }

          else
          {
            v43 = MEMORY[0x1E69618D8];
          }

          v44 = FigRoutingManagerCopyEndpointWithDeviceID(UIDFromRouteDescription, 0, *v43, 0);
          v45 = qword_1EB75E188;
          v46 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v46)
          {
            v4 = 4294954514;
            if (!v44)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          v47 = v46(v45, v44, 0);
        }

        else
        {
          if (!FigCFEqual())
          {
            v48 = FigRoutingManagerPickRouteDescriptorForContext(qword_1EB75E190, a1, 0, 0);
            if (v48)
            {
              return v48;
            }

LABEL_43:
            cmsmUpdateFakeSharedAudioRouteAsPicked(1, 0, 0, 0);
            cmsmUpdateEnableSharedAudioRouteSyntheticMute(0, 0, 1, 0, 0, 0);
            return 0;
          }

          v44 = FigRoutingManagerCopyEndpointWithDeviceID(UIDFromRouteDescription, 0, *MEMORY[0x1E69618F8], 0);
          v47 = FigRoutingContextSelectRoute(qword_1EB75E188, v44);
        }

        v4 = v47;
        if (!v44)
        {
LABEL_42:
          if (v4)
          {
            return v4;
          }

          goto LABEL_43;
        }

LABEL_41:
        CFRelease(v44);
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 4294954514;
      if (!v40)
      {
        goto LABEL_32;
      }
    }

    CFRelease(v40);
    goto LABEL_32;
  }

  if (dword_1EB75DE40)
  {
    v13 = OUTLINED_FUNCTION_2_13(v5, v6, v7, v8, v9, v10, v11, v12, v49, v51, v53, v55, SBYTE2(v55), SBYTE3(v55), SHIDWORD(v55));
    v21 = OUTLINED_FUNCTION_17(v13, v14, v15, v16, v17, v18, v19, v20, v50, v52, v54, v56, v57, typea, v60);
    if (OUTLINED_FUNCTION_3_0(v21))
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_2_18(v22, v23, v62, v24, &dword_1B17A2000, v25, v26, "-CMSessionMgr- %s: Current route already matches the picked route - do nothing");
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

uint64_t CMSessionMgrRegisterEndpointManager_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_17(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_19(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_20(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_21(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_22(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_23(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_24(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_25(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_26(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_27(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_28(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_29(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_30(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_31(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_32(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_33(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_34(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_35(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_36(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_37(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_38(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_39(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_40(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_41(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_42(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_43(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_44(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_45(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_46(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_47(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_48(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_49(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_50(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_51(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_52(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_53(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_54(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_55(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_56(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_57(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_58(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_59(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_60(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_61(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_62(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_63(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_64(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_65(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_66(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_67(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_68(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_69(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_70(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_71(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_72(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_73(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_74(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_75(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_76(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_77(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_78(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_79(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_80(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_81(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_82(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_83(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_84(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_85(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_86(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_87(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_88(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_89(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_90(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_91(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_92(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_93(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_94(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_95(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_96(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_97(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_98(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_99(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_100(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_101(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_102(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_103(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_104(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_105(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_106(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_107(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_108(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_109(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_110(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_111(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_112(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_113(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_114(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_115(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_116(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_117(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_118(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_119(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_120(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_121(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_122(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_123(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_124(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_125(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_126(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_127(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_128(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_129(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_130(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_131(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_132(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_133(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_134(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_135(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_136(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_137(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_138(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_139(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_140(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_141(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_142(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_143(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_144(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_145(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_146(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_147(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_148(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_149(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_150(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_151(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_152(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_153(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_154(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_155(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_156(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_157(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_158(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_159(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_160(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_161(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_162(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_163(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_164(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_165(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_166(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_167(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_168(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_169(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_170(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_171(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_172(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_173(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_174(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_175(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrHasRouteSharingPolicyLongFormVideo_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrShouldHijackAudioRoute_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrShouldHijackAudioRoute_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _CMSessionMgrCopyPortDescription_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigStarkModeControllerSetCurrentInternalMode(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 4294950566;
  }

  result = fsm_verifyResourceState(a2);
  if (!result)
  {
    result = fsm_verifyResourceState((a2 + 8));
    if (!result)
    {
      v4 = a2[17];
      if (a2[16])
      {
        if (!v4)
        {
          return 4294949811;
        }
      }

      else if (v4)
      {
        return 4294949810;
      }

      memcpy(v12, a2, sizeof(v12));
      OUTLINED_FUNCTION_15();
      MXDispatchSync(v5, v6, v7, v8, v9, v10, v11);
      return 0;
    }
  }

  return result;
}

void FigStarkModeControllerSetExecuteChangeHandler(const void *a1, const void *a2)
{
  if (a1)
  {
    CFRetain(a1);
    _Block_copy(a2);
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_15();
    MXDispatchAsync(v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t FigStarkModeControllerAddStateChangedHandler(const void *a1, NSObject *a2, const void *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (qword_1ED6D3070 != -1)
  {
    dispatch_once(&qword_1ED6D3070, &__block_literal_global_60_0);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!a2)
  {
    a2 = MEMORY[0x1E69E96A0];
  }

  *(Instance + 16) = FigAtomicIncrement32();
  *(Instance + 24) = a2;
  dispatch_retain(a2);
  *(Instance + 32) = _Block_copy(a3);
  CFRetain(a1);
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_15();
  MXDispatchAsync(v7, v8, v9, v10, v11, v12, v13);
  return Instance;
}

uint64_t mxFigStarkModeController_GetCurrentMode(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!a1)
  {
    return 4294950566;
  }

  v3 = CMSMUtility_CopyFigStarkModeController(&cf);
  if (v3)
  {
    CurrentMode = v3;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, cf, v8);
  }

  else
  {
    CurrentMode = fsmcontroller_GetCurrentMode(cf, a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return CurrentMode;
}

uint64_t mxFigStarkModeController_RequestModeChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  cf = 0;
  if (!a1)
  {
    return 4294950566;
  }

  v9 = CMSMUtility_CopyFigStarkModeController(&cf);
  if (v9)
  {
    v10 = v9;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, cf, v14);
  }

  else
  {
    v10 = fsmcontroller_RequestModeChange(cf, a2, a3, a4, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t mxFigStarkModeController_RequestInitialModeChange(uint64_t a1, unsigned int *a2, unsigned int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  if (!a1)
  {
    return 4294950566;
  }

  v11 = CMSMUtility_CopyFigStarkModeController(&cf);
  if (v11)
  {
    v12 = v11;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, cf, v16);
  }

  else
  {
    v12 = fsmcontroller_RequestInitialModeChange(cf, a2, a3, a4, a5, a6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void FigStarkModeCopyController_cold_1(int a1, CFTypeRef *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

uint64_t FigStarkModeCreateDictionaryRepresentation_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void FigRoutingManagerUtilities_RegisterAirPlayStreamCapabilitiesDidChangeListener(CFTypeRef a1, const void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  cf = 0;
  v75 = 0;
  if (!a2)
  {
    return;
  }

  if (!FigRoutingManagerIsEndpointOfType(a2, *MEMORY[0x1E69626C0]) && !FigRoutingManagerUtilities_IsEndpointTypeVehicle(a2))
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    FigEndpoint = FigEndpointAggregateGetFigEndpoint();
    if (!FigEndpoint)
    {
      a1 = 0;
      goto LABEL_6;
    }

    v10 = FigEndpoint;
    v11 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(CMBaseObject, *MEMORY[0x1E69620F8], v11, &cf);
    }

    a1 = CFRetain(v10);
    if (!a1)
    {
      goto LABEL_6;
    }

    v14 = FigCFEqual();
    if (v14)
    {
      if (!dword_1EB75DF20)
      {
        goto LABEL_6;
      }

      v22 = OUTLINED_FUNCTION_7_11(v14, v15, v16, v17, v18, v19, v20, v21, v56, v59, v62, v65, SBYTE2(v65), SBYTE3(v65), SHIDWORD(v65));
      v30 = OUTLINED_FUNCTION_35(v22, v23, v24, v25, v26, v27, v28, v29, v57, v60, v63, v66, v68, v70, v72);
      if (OUTLINED_FUNCTION_10(v30))
      {
        v76 = 136315138;
        OUTLINED_FUNCTION_0_29();
        v36 = "-FigRoutingManager-Utilities %s: Fake endpoint. Use case is not supported.";
LABEL_28:
        OUTLINED_FUNCTION_12(v31, v32, v77, v33, &dword_1B17A2000, v34, v35, v36);
      }
    }

    else
    {
      v37 = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v39 = *(VTable + 8);
      Count = VTable + 8;
      v40 = *(v39 + 48);
      if (!v40)
      {
        goto LABEL_5;
      }

      v40(v37, *MEMORY[0x1E6962270], v11, &v75);
      Count = v75;
      if (!v75)
      {
        goto LABEL_5;
      }

      Count = CFArrayGetCount(v75);
      if (Count < 2)
      {
        goto LABEL_5;
      }

      if (!dword_1EB75DF20)
      {
        goto LABEL_6;
      }

      v47 = OUTLINED_FUNCTION_7_11(Count, v5, v41, v42, v43, v44, v45, v46, v56, v59, v62, v65, SBYTE2(v65), SBYTE3(v65), SHIDWORD(v65));
      v55 = OUTLINED_FUNCTION_35(v47, v48, v49, v50, v51, v52, v53, v54, v58, v61, v64, v67, v69, v71, v73);
      if (OUTLINED_FUNCTION_10(v55))
      {
        v76 = 136315138;
        OUTLINED_FUNCTION_0_29();
        v36 = "-FigRoutingManager-Utilities %s: Already registered.";
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_4_1();
    goto LABEL_6;
  }

  Count = CFRetain(a2);
  a1 = Count;
  if (Count)
  {
LABEL_5:
    FigRoutingManagerGetSharedManager(Count, v5);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_19();
    v6 = CMNotificationCenterAddListener();
    routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification(v6, v7, v8, a1);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v75)
  {
    CFRelease(v75);
    v75 = 0;
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

void routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    FigRoutingManagerGetSharedManager(a1, a2);
    cf = 0;
    v48 = 0;
    v4 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E6961FF0], v4, &v48);
    }

    v7 = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v17 = *(VTable + 8);
    v16 = VTable + 8;
    v18 = *(v17 + 48);
    if (v18)
    {
      v16 = v18(v7, *MEMORY[0x1E69620F8], v4, &cf);
    }

    if (dword_1EB75DF20)
    {
      v19 = OUTLINED_FUNCTION_0_32(v16, v9, v10, v11, v12, v13, v14, v15, v34, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46);
      v27 = OUTLINED_FUNCTION_6_13(v19, v20, v21, v22, v23, v24, v25, v26, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
      if (OUTLINED_FUNCTION_10(v27))
      {
        v49 = 136315650;
        v50 = "routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification";
        v51 = 2114;
        v52 = cf;
        v53 = 2114;
        v54 = v48;
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_12(v28, v29, v55, v30, &dword_1B17A2000, v31, v32, "-FigRoutingManager-Utilities %s: EndpointID %{public}@ supportedCapabilities='%{public}@'");
      }

      OUTLINED_FUNCTION_4_1();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    OUTLINED_FUNCTION_4_15();
    v39 = 3221225472;
    v40 = __routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification_block_invoke;
    v41 = &__block_descriptor_40_e5_v8__0l;
    v42 = v48;
    MXDispatchAsync("routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification", "FigRoutingManager_Utilities_Embedded.m", 470, 0, 0, v33, &v38);
  }
}

void FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(uint64_t a1, const void *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  cf = 0;
  v71 = 0;
  if (!a2)
  {
    return;
  }

  if (!FigRoutingManagerIsEndpointOfType(a2, *MEMORY[0x1E69626C0]) && !FigRoutingManagerUtilities_IsEndpointTypeVehicle(a2))
  {
    if (!a1 || (FigEndpoint = FigEndpointAggregateGetFigEndpoint()) == 0)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v9 = FigEndpoint;
    v10 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69620F8], v10, &cf);
    }

    v6 = CFRetain(v9);
    if (!v6)
    {
      goto LABEL_6;
    }

    v13 = FigCFEqual();
    if (v13)
    {
      if (!dword_1EB75DF20)
      {
        goto LABEL_6;
      }

      v21 = OUTLINED_FUNCTION_0_32(v13, v14, v15, v16, v17, v18, v19, v20, v55, v58, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v29 = OUTLINED_FUNCTION_6_13(v21, v22, v23, v24, v25, v26, v27, v28, v56, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      if (OUTLINED_FUNCTION_10(v29))
      {
        v72 = 136315138;
        v73 = "FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener";
        OUTLINED_FUNCTION_8_10();
        v35 = "-FigRoutingManager-Utilities %s: Fake endpoint. Use case is not supported.";
LABEL_29:
        OUTLINED_FUNCTION_12(v30, v31, v74, v32, &dword_1B17A2000, v33, v34, v35);
      }
    }

    else
    {
      v36 = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v44 = *(VTable + 8);
      Count = VTable + 8;
      v45 = *(v44 + 48);
      if (v45)
      {
        v45(v36, *MEMORY[0x1E6962270], v10, &v71);
        Count = v71;
        if (v71)
        {
          Count = CFArrayGetCount(v71);
          if (Count == 1)
          {
            Count = FigRoutingManagerIsEndpointPresentInAggregate(a2, a1);
            if (Count)
            {
              goto LABEL_5;
            }
          }
        }
      }

      if (!dword_1EB75DF20)
      {
        goto LABEL_6;
      }

      v46 = OUTLINED_FUNCTION_0_32(Count, v5, v38, v39, v40, v41, v42, v43, v55, v58, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v54 = OUTLINED_FUNCTION_6_13(v46, v47, v48, v49, v50, v51, v52, v53, v57, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      if (OUTLINED_FUNCTION_10(v54))
      {
        v72 = 136315138;
        v73 = "FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener";
        OUTLINED_FUNCTION_8_10();
        v35 = "-FigRoutingManager-Utilities %s: Aggregate is not empty continue registration";
        goto LABEL_29;
      }
    }

    OUTLINED_FUNCTION_4_1();
    goto LABEL_6;
  }

  Count = CFRetain(a2);
  v6 = Count;
  if (Count)
  {
LABEL_5:
    FigRoutingManagerGetSharedManager(Count, v5);
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_19();
    CMNotificationCenterRemoveListener();
    OUTLINED_FUNCTION_4_15();
    v62 = 3221225472;
    v63 = __FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener_block_invoke;
    v64 = &__block_descriptor_40_e5_v8__0l;
    v65 = 0;
    MXDispatchAsync("FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener", "FigRoutingManager_Utilities_Embedded.m", 596, 0, 0, v7, &v61);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v71)
  {
    CFRelease(v71);
    v71 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t FigEndpointUIAgentXPCRemoteCreate(uint64_t a1, void *a2)
{
  if (!a2)
  {
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0, 0);
    goto LABEL_13;
  }

  if (qword_1ED6D3090 != -1)
  {
    dispatch_once(&qword_1ED6D3090, &__block_literal_global_84);
  }

  v3 = _MergedGlobals_15;
  if (!_MergedGlobals_15)
  {
    v4 = FigXPCCreateBasicMessage();
    if (!v4)
    {
      v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v4)
      {
        uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
        if (uint64)
        {
          v7 = uint64;
          FigEndpointUIAgentGetClassID(uint64, v6);
          v3 = CMDerivedObjectCreate();
          if (!v3)
          {
            *(CMBaseObjectGetDerivedStorage() + 8) = v7;
            FigXPCRemoteClientAssociateObject();
          }

          *a2 = 0;
        }

        else
        {
          v3 = 4294950515;
        }

        goto LABEL_11;
      }
    }

LABEL_13:
    v3 = v4;
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

uint64_t figEndpointUIAgentRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    v3 = *(DerivedStorage + 8);
    *DerivedStorage = 1;
    FigXPCRemoteClientDisassociateObject();
    if (!*(v2 + 1) && v3 && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  return FigXPCRelease();
}

uint64_t figEndpointUIAgentRemoteXPC_setAuthValue(uint64_t a1, uint64_t a2, int a3)
{
  v23 = 0;
  if (a2 || a3)
  {
    ObjectID = remoteXPCendpointAgent_GetObjectID(a1, &v23);
    if (ObjectID)
    {
      v3 = ObjectID;
    }

    else
    {
      OUTLINED_FUNCTION_25();
      v5 = FigXPCCreateBasicMessage();
      OUTLINED_FUNCTION_8_0(v5, v6, v7, v8, v9, v10, v11, v12, 0);
      if (!v3)
      {
        FigXPCMessageSetCFString();
        OUTLINED_FUNCTION_0_33();
        v13 = FigXPCRemoteClientSendSyncMessage();
        OUTLINED_FUNCTION_8_0(v13, v14, v15, v16, v17, v18, v19, v20, v22);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  FigXPCRelease();
  return v3;
}

uint64_t figEndpointUIAgentRemoteXPC_setIsCurrentUIAgent(uint64_t a1)
{
  v21 = 0;
  ObjectID = remoteXPCendpointAgent_GetObjectID(a1, &v21);
  if (ObjectID)
  {
    v1 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v3 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_1_24(v3, v4, v5, v6, v7, v8, v9, v10, 0);
    if (!v1)
    {
      OUTLINED_FUNCTION_0_33();
      v11 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_1_24(v11, v12, v13, v14, v15, v16, v17, v18, v20);
    }
  }

  FigXPCRelease();
  return v1;
}

uint64_t figEndpointUIAgentRemoteXPC_deviceWakeStatus(uint64_t a1)
{
  v21 = 0;
  ObjectID = remoteXPCendpointAgent_GetObjectID(a1, &v21);
  if (ObjectID)
  {
    v1 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v3 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_1_24(v3, v4, v5, v6, v7, v8, v9, v10, 0);
    if (!v1)
    {
      OUTLINED_FUNCTION_0_33();
      v11 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_1_24(v11, v12, v13, v14, v15, v16, v17, v18, v20);
    }
  }

  FigXPCRelease();
  return v1;
}

uint64_t figEndpointUIAgentRemoteXPC_setPasswordFromKeychain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  ObjectID = remoteXPCendpointAgent_GetObjectID(a1, &v23);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v5 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_8_0(v5, v6, v7, v8, v9, v10, v11, v12, 0);
    if (!v3)
    {
      FigXPCMessageSetCFString();
      FigXPCMessageSetCFObject();
      v13 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_0(v13, v14, v15, v16, v17, v18, v19, v20, v22);
    }
  }

  FigXPCRelease();
  return v3;
}

uint64_t remoteXPCendpointAgent_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t remoteXPCendpointAgent_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t remoteSystemController_HasRouteSharingPolicyLongFormVideo(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_25(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, xdict, v18);
  if (v9 || (OUTLINED_FUNCTION_9_0(), v9 = FigXPCCreateBasicMessage(), v9) || (v9 = FigXPCMessageSetCFString(), v9))
  {
    v11 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_6_1(qword_1ED6D30A0);
    v11 = v10;
    if (a3 && !v10)
    {
      *a3 = xpc_dictionary_get_BOOL(xdicta, kFigSystemControllerXPCMsgParam_HasRouteSharingPolicyLongFormVideo);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29(qword_1ED6D30A0, v12, "remoteSystemController_HasRouteSharingPolicyLongFormVideo");
  return v11;
}

uint64_t remoteSystemController_ToggleInputMute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_1_25(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, v15, v16);
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_23(qword_1ED6D30A0, v11, "remoteSystemController_ToggleInputMute");
  return v10;
}

uint64_t remoteSystemController_GetInputMute(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_4_16(a1, a2, a3, a4, a5, a6, a7, a8, cf, cf_8, v19, v20);
  if (v10 || (OUTLINED_FUNCTION_9_0(), v10 = FigXPCCreateBasicMessage(), v10))
  {
    v13 = v10;
  }

  else
  {
    v8 = CFDataCreate(*MEMORY[0x1E695E480], v8, 32);
    v11 = FigXPCMessageSetCFData();
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v12 = OUTLINED_FUNCTION_6_1(qword_1ED6D30A0);
      v13 = v12;
      if (a3)
      {
        if (!v12)
        {
          v13 = FigXPCMessageCopyCFBoolean();
          if (!v13)
          {
            *a3 = cfa == *MEMORY[0x1E695E4D0];
          }
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v8)
  {
    CFRelease(v8);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  OUTLINED_FUNCTION_14_7(qword_1ED6D30A0, v14, "remoteSystemController_GetInputMute");
  return v13;
}

uint64_t remoteSystemController_ClearUplinkMutedCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23(qword_1ED6D30A0, v11, "remoteSystemController_ClearUplinkMutedCache");
  return v10;
}

uint64_t remoteSystemController_allowAppToInitiateRecordingTemporarily(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13))
  {
    OUTLINED_FUNCTION_10_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v9 = FigXPCCreateBasicMessage();
    if (v9 || (OUTLINED_FUNCTION_16_5(v14), v9 = FigXPCMessageSetCFString(), v9))
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_15_8();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23(qword_1ED6D30A0, v10, "remoteSystemController_allowAppToInitiateRecordingTemporarily");
  return v8;
}

uint64_t remoteSystemController_createMediaEndowment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13))
  {
    OUTLINED_FUNCTION_10_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v9 = FigXPCCreateBasicMessage();
    if (v9 || (v9 = FigXPCMessageSetCFString(), v9) || (OUTLINED_FUNCTION_16_5(v14), v9 = FigXPCMessageSetCFDictionary(), v9))
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_15_8();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23(qword_1ED6D30A0, v10, "remoteSystemController_createMediaEndowment");
  return v8;
}

uint64_t remoteSystemController_invalidateMediaEndowment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13))
  {
    OUTLINED_FUNCTION_10_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v9 = FigXPCCreateBasicMessage();
    if (v9 || (OUTLINED_FUNCTION_16_5(v14), v9 = FigXPCMessageSetCFString(), v9))
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_15_8();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23(qword_1ED6D30A0, v10, "remoteSystemController_invalidateMediaEndowment");
  return v8;
}

uint64_t remoteSystemController_SetSilentMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v10 = OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v54, v60);
  if (v10)
  {
    v8 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v11 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_11_8(v11, v12, v13, v14, v15, v16, v17, v18, v55, v61);
    if (!v8)
    {
      v19 = FigXPCMessageSetCFBoolean();
      OUTLINED_FUNCTION_11_8(v19, v20, v21, v22, v23, v24, v25, v26, v56, v62);
      v27 = FigXPCMessageSetCFDate();
      OUTLINED_FUNCTION_11_8(v27, v28, v29, v30, v31, v32, v33, v34, v57, v63);
      v35 = FigXPCMessageSetCFString();
      v43 = OUTLINED_FUNCTION_11_8(v35, v36, v37, v38, v39, v40, v41, v42, v58, v64);
      xpc_dictionary_set_uint64(v43, kFigSystemControllerXPCMsgParam_ClientType, v9);
      v44 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_11_8(v44, v45, v46, v47, v48, v49, v50, v51, v59, v65);
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_14_7(qword_1ED6D30A0, v52, "remoteSystemController_SetSilentMode");
  return v8;
}

uint64_t remoteSystemController_RemoteDeviceControlIsAllowed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_4_16(a1, a2, a3, a4, a5, a6, a7, a8, v14, v16, v17, v18);
  if (v9 || (OUTLINED_FUNCTION_9_0(), v9 = FigXPCCreateBasicMessage(), v9) || (v9 = OUTLINED_FUNCTION_6_1(qword_1ED6D30A0), v9))
  {
    v11 = v9;
  }

  else
  {
    v10 = FigXPCMessageCopyCFNumber();
    v11 = v10;
    if (v8 && !v10)
    {
      *v8 = [v15 unsignedIntValue];
    }
  }

  FigXPCRelease();
  FigXPCRelease();

  OUTLINED_FUNCTION_29(qword_1ED6D30A0, v12, "remoteSystemController_RemoteDeviceControlIsAllowed");
  return v11;
}

uint64_t remoteSystemController_GetVolumeButtonDelta(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_25(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, xdict, v19);
  if (v9 || (OUTLINED_FUNCTION_9_0(), v9 = FigXPCCreateBasicMessage(), v9) || (v9 = FigXPCMessageSetCFString(), v9))
  {
    v11 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_6_1(qword_1ED6D30A0);
    v11 = v10;
    if (a3 && !v10)
    {
      v12 = xpc_dictionary_get_double(xdicta, kFigSystemControllerXPCMsgParam_VolumeDelta);
      *a3 = v12;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29(qword_1ED6D30A0, v13, "remoteSystemController_GetVolumeButtonDelta");
  return v11;
}

uint64_t remoteSystemController_getObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t remoteSystemController_SetInputMute_cold_1(UInt8 *bytes, void *a2, uint64_t a3, _DWORD *a4)
{
  v5 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 32);
  v6 = FigXPCMessageSetCFData();
  if (!v6)
  {
    v6 = FigXPCRemoteClientSendSyncMessage();
  }

  *a4 = v6;
  FigXPCRelease();
  if (v5)
  {
    CFRelease(v5);
  }

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t HandleEndpointUIAgentRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  HIDWORD(v45) = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  cf = 0;
  v5 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v5)
  {
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v43, v45);
  }

  v6 = v5;
  if (v5)
  {
    return v6;
  }

  switch(HIDWORD(v45))
  {
    case 0x61757468:
      cf = 0;
      *v49 = 0;
      v30 = FigXPCMessageCopyCFString();
      if (!v30)
      {
        v30 = FigXPCMessageCopyCFBoolean();
        if (!v30)
        {
          Value = CFBooleanGetValue(cf);
          v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v32)
          {
            return 4294954514;
          }

          return v32(0, *v49, Value);
        }
      }

      return v30;
    case 0x77616B65:
      cf = 0;
      v6 = FigXPCMessageCopyCFBoolean();
      if (!v6)
      {
        FigSimpleMutexLock();
        v7 = *MEMORY[0x1E695E4D0];
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        v9 = kFigEndpointUIAgentNotification_DeviceWillSleep;
        if (cf == v7)
        {
          v9 = kFigEndpointUIAgentNotification_DeviceAwake;
        }

        OUTLINED_FUNCTION_3_13(DefaultLocalCenter, *v9, *(gEndpointAgentServerState + 16));
        FigSimpleMutexUnlock();
      }

      return v6;
    case 0x69736361:
      v12 = FigXPCMessageCopyCFBoolean();
      v6 = v12;
      if (v12)
      {
        return v6;
      }

      v20 = MEMORY[0x1E695E4D0];
      if (dword_1EB75DF80)
      {
        v21 = OUTLINED_FUNCTION_1_26(v12, v13, v14, v15, v16, v17, v18, v19, v42, v43, v45, 0, v46, SBYTE2(v46), SBYTE3(v46), SHIDWORD(v46));
        if (os_log_type_enabled(v21, type))
        {
          v22 = v48;
        }

        else
        {
          v22 = v48 & 0xFFFFFFFE;
        }

        if (v22)
        {
          if (*v20)
          {
            v23 = "NO";
          }

          else
          {
            v23 = "YES";
          }

          *v49 = 136315650;
          *&v49[4] = "HandleSetCurrentUIAgent";
          v50 = 2048;
          v51 = 0;
          v52 = 2082;
          v53 = v23;
          LODWORD(v44) = 32;
          OUTLINED_FUNCTION_5();
          _os_log_send_and_compose_impl(v24, v25, v26, v27, v28, v21, type, v29, v49, v44);
        }

        OUTLINED_FUNCTION_0_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      v34 = gEndpointAgentServerState;
      v35 = *(gEndpointAgentServerState + 16);
      if (*v20)
      {
        if (v35)
        {
LABEL_46:
          v38 = *(v34 + 8);
          if (v38)
          {
            Count = CFArrayGetCount(v38);
          }

          else
          {
            Count = 0;
          }

          while (Count-- >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(gEndpointAgentServerState + 8), Count);
            CFDictionaryGetValue(ValueAtIndex, @"EndpointAgent");
            if (FigCFEqual())
            {
              FigCFDictionarySetInt();
              break;
            }
          }

          FigSimpleMutexUnlock();
          return v6;
        }

        *(gEndpointAgentServerState + 16) = 0;
        v36 = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_3_13(v36, @"FigEndpointUIAgentNotification_NoLongerCurrent", 0);
      }

      else
      {
        if (v35)
        {
          v37 = CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_3_13(v37, @"FigEndpointUIAgentNotification_NoLongerCurrent", *(gEndpointAgentServerState + 16));
          v34 = gEndpointAgentServerState;
        }

        *(v34 + 16) = 0;
      }

      FigEndpointUIAgentHelper_SetNewUIAgent(0);
      v34 = gEndpointAgentServerState;
      goto LABEL_46;
    case 0x70776B63:
      cf = 0;
      *v49 = 0;
      v10 = FigXPCMessageCopyCFString();
      if (!v10)
      {
        v10 = FigXPCMessageCopyCFObject();
        if (!v10)
        {
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (!v11)
          {
            return 4294954514;
          }

          return v11(0, cf, *v49);
        }
      }

      return v10;
    case 0x646F6F6D:
      MEMORY[8] = 1;
      return FigXPCServerDisassociateObjectWithConnection();
    default:
      return 4294954516;
  }
}

uint64_t FigEndpointUIAgentCopyCurrentEndpointUIAgent(void *a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!gEndpointAgentServerState)
  {
    return 4294954513;
  }

  FigSimpleMutexLock();
  if (!*(gEndpointAgentServerState + 16))
  {
    v4 = *(gEndpointAgentServerState + 8);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count + 1;
        do
        {
          CFArrayGetValueAtIndex(*(gEndpointAgentServerState + 8), v6 - 2);
          FigCFDictionaryGetIntIfPresent();
          --v6;
        }

        while (v6 > 1);
      }
    }
  }

  v2 = *(gEndpointAgentServerState + 16);
  if (v2)
  {
    v2 = CFRetain(v2);
  }

  *a1 = v2;
  FigSimpleMutexUnlock();
  return 0;
}

void RefconDestructor(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  v4 = *a1;
  if (v2)
  {
    OUTLINED_FUNCTION_3_13(DefaultLocalCenter, @"FigEndpointUIAgentNotification_UserLoggedOut", v4);
  }

  else
  {
    OUTLINED_FUNCTION_3_13(DefaultLocalCenter, @"FigEndpointUIAgentNotification_RemoteAgentCrashed", v4);
    v10 = *a1;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v11)
    {
      v11(v10, 0, 1);
    }
  }

  v5 = *a1;
  if (gEndpointAgentServerState)
  {
    FigSimpleMutexLock();
    v6 = *(gEndpointAgentServerState + 8);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        v9 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(*(gEndpointAgentServerState + 8), v9);
          FigCFDictionaryGetValue();
          if (FigCFEqual())
          {
            break;
          }

          if (v8 == ++v9)
          {
            goto LABEL_29;
          }
        }

        Value = FigCFDictionaryGetValue();
        if (Value)
        {
          if (dword_1EB75DF80)
          {
            v20 = OUTLINED_FUNCTION_2_20(Value, v13, v14, v15, v16, v17, v18, v19, v46, v47, v49, v50, SBYTE2(v50), SBYTE3(v50), SHIDWORD(v50));
            if (os_log_type_enabled(v20, BYTE3(v50)))
            {
              v21 = HIDWORD(v50);
            }

            else
            {
              v21 = HIDWORD(v50) & 0xFFFFFFFE;
            }

            if (v21)
            {
              v53 = 136315394;
              v54 = "RemoveEndpointAgentFromArray";
              v55 = 2048;
              v56 = v5;
              LODWORD(v47) = 22;
              v46 = &v53;
              OUTLINED_FUNCTION_5();
              _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v20, BYTE3(v50), v27);
            }

            OUTLINED_FUNCTION_0_0();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CFArrayRemoveValueAtIndex(*(gEndpointAgentServerState + 8), v9);
          v36 = gEndpointAgentServerState;
          if (*(gEndpointAgentServerState + 16) == v5)
          {
            if (dword_1EB75DF80)
            {
              v37 = OUTLINED_FUNCTION_2_20(v28, v29, v30, v31, v32, v33, v34, v35, v46, v47, v49, v50, SBYTE2(v50), SBYTE3(v50), SHIDWORD(v50));
              if (os_log_type_enabled(v37, type))
              {
                v38 = v52;
              }

              else
              {
                v38 = v52 & 0xFFFFFFFE;
              }

              if (v38)
              {
                v53 = 136315138;
                v54 = "RemoveEndpointAgentFromArray";
                LODWORD(v48) = 12;
                OUTLINED_FUNCTION_5();
                _os_log_send_and_compose_impl(v39, v40, v41, v42, v43, v37, type, v44, &v53, v48);
              }

              OUTLINED_FUNCTION_0_0();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v36 = gEndpointAgentServerState;
            }

            *(v36 + 16) = 0;
            FigEndpointUIAgentHelper_SetNewUIAgent(0);
          }
        }
      }
    }

LABEL_29:
    FigSimpleMutexUnlock();
    v5 = *a1;
  }

  if (v5)
  {
    v45 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v45)
    {
      v45(v5);
    }
  }

  DisposePerUIAgentState(a1);
}

uint64_t FigEndpointUIAgentStartServer_cold_1(CFTypeRef *a1, void *a2, _DWORD *a3)
{
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  *a3 = v6;
  if (!v6)
  {
    return 1;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  if (*a2)
  {
    FigSimpleMutexDestroy();
  }

  free(a2);
  return 0;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

double gotLoadHelper_x8__OBJC_CLASS___BTAudioRoutingRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AudioAccessoryServices))
  {
    return dlopenHelper_AudioAccessoryServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CRPairedVehicleManager(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CarKit))
  {
    return dlopenHelper_CarKit(result);
  }

  return result;
}

double dlopenHelper_AudioAccessoryServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AudioAccessoryServices.framework/AudioAccessoryServices", 0);
  atomic_store(1u, &dlopenHelperFlag_AudioAccessoryServices);
  return a1;
}

double dlopenHelper_CarKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CarKit.framework/CarKit", 0);
  atomic_store(1u, &dlopenHelperFlag_CarKit);
  return a1;
}