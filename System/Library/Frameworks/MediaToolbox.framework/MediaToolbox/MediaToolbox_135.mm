uint64_t aigXPCServer_setAudioSessionBehaviour(uint64_t a1, _OWORD *a2)
{
  cf = 0;
  if (in_audio_mx_server_process())
  {
    UsingPrimaryAVAudioSessionSiblingForAuditToken = CMSessionCreate();
    if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
    {
      UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateWithCMSession(*MEMORY[0x1E695E480], cf, (a1 + 16));
      if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
      {
        v5 = *(a1 + 16);
        if (v5)
        {
          v6 = *(CMBaseObjectGetVTable() + 16);
          if (v6)
          {
            v7 = *(v6 + 56);
            if (v7)
            {
              v7(v5, *MEMORY[0x1E69AFD90], @"FigAssetImageGeneratorServer");
            }
          }

          v8 = *(a1 + 16);
          if (v8)
          {
            v9 = *(CMBaseObjectGetVTable() + 16);
            if (v9)
            {
              v10 = *(v9 + 56);
              if (v10)
              {
                v10(v8, *MEMORY[0x1E69AFCC0], *MEMORY[0x1E69AF648]);
              }
            }
          }
        }

LABEL_13:
        if (!*(a1 + 24))
        {
LABEL_20:
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          FigStartForwardingMediaServicesProcessDeathNotification();
          v17 = 0;
          goto LABEL_21;
        }

        SInt32 = FigCFNumberCreateSInt32();
        FigAssetImageGeneratorGetFigBaseObject();
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v16)
        {
          v17 = v16(v15, @"ClientPID", SInt32);
          if (!SInt32)
          {
LABEL_19:
            if (v17)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v17 = 4294954514;
          if (!SInt32)
          {
            goto LABEL_19;
          }
        }

        CFRelease(SInt32);
        goto LABEL_19;
      }
    }
  }

  else
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = a2[1];
    v19[0] = *a2;
    v19[1] = v12;
    UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(v11, v19, @"FigAssetImageGenerator", (a1 + 16));
    if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
    {
      goto LABEL_13;
    }
  }

  v17 = UsingPrimaryAVAudioSessionSiblingForAuditToken;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t HandleAssetImageGeneratorMessage(uint64_t a1, void *a2, void *a3)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v38 = 0;
  v36 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  *(v40 + 6) = OpCode;
  if (OpCode)
  {
    goto LABEL_32;
  }

  if (v38 == 1668441441)
  {
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    memset(&v45, 0, sizeof(v45));
    v44 = 0;
    xpc_connection_get_audit_token();
    token = v45;
    ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
    uint64 = xpc_dictionary_get_uint64(a2, "Asset");
    v8 = FigXPCMessageCopyCFDictionary();
    if (v8 || (v8 = FigXPCAssetServerCopyAssetForID(uint64, &v49)) != 0)
    {
      v19 = v8;
      v12 = 0;
    }

    else
    {
      v9 = CreateServedAIGState(&v47);
      if (v9)
      {
        v19 = v9;
        v15 = 0;
        v12 = v47;
LABEL_18:
        DisposeServedAIGState(v12);
        if (v44)
        {
          CFRelease(v44);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        if (v48)
        {
          CFRelease(v48);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        *(v40 + 6) = v19;
        goto LABEL_32;
      }

      v10 = *MEMORY[0x1E695E480];
      FigSurrogateAssetImageGeneratorCreateFromAsset(*MEMORY[0x1E695E480], v49, v44, &v48);
      v12 = v47;
      if (!v11)
      {
        v11 = FigSandboxAssertionCreateForPID();
        if (!v11)
        {
          v13 = FigOSTransactionCreate();
          *(v12 + 48) = v13;
          if (v13)
          {
            v14 = v48;
            *(v12 + 8) = v48;
            if (v14)
            {
              CFRetain(v14);
            }

            *(v12 + 24) = ClientPIDFromAuditToken;
            token = v45;
            v11 = aigXPCServer_setAudioSessionBehaviour(v12, &token);
            if (!v11)
            {
              token = v45;
              v15 = SecTaskCreateWithAuditToken(v10, &token);
              if (v15)
              {
                if (VTIsSecTaskEntitledForVP9Decode())
                {
                  FigAssetImageGeneratorGetFigBaseObject();
                  v17 = v16;
                  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v18)
                  {
                    v18(v17, @"AllowAlternateDecoderSelection", *MEMORY[0x1E695E4D0]);
                  }
                }
              }

              v19 = FigXPCServerAssociateObjectWithConnection();
              if (!v19)
              {
                v20 = v46;
                *(v12 + 32) = v46;
                xpc_dictionary_set_uint64(a3, *MEMORY[0x1E69615A0], v20);
                v12 = 0;
              }

              goto LABEL_18;
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_10();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
          }
        }
      }

      v19 = v11;
    }

    v15 = 0;
    goto LABEL_18;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v21 = FigXPCServerLookupAndRetainAssociatedObject();
  *(v40 + 6) = v21;
  if (!v21)
  {
    if (cf && (v22 = CFGetTypeID(cf), v22 == FigAssetImageGeneratorGetTypeID()) && (v23 = *(v36 + 40)) != 0)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 0x40000000;
      v29 = __HandleAssetImageGeneratorMessage_block_invoke;
      v30 = &unk_1E7494568;
      v35 = v38;
      v31 = &v39;
      v32 = cf;
      v33 = a2;
      v34 = a3;
      dispatch_sync(v23, &v27);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      *(v40 + 6) = v26;
    }
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  v24 = *(v40 + 6);
  _Block_object_dispose(&v39, 8);
  return v24;
}

uint64_t HandleAssetImageGeneratorNoReplyMessage(uint64_t a1, void *a2)
{
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (!OpCode)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (!OpCode)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v7, v8);
    }
  }

  v4 = OpCode;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCAIG_AddCGImageToMessage(CGImage *a1, void *a2)
{
  v13 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v3 = FigRemote_CreateSerializedDataForCGImage(a1, &v13, &v12, &v9, &v10, &v9 + 1);
  if (v3)
  {
    goto LABEL_13;
  }

  if (v9)
  {
    FigMachPortReleaseSendRight_();
  }

  Property = CGImageGetProperty();
  if (Property)
  {
    XPCObject = IOSurfaceCreateXPCObject(Property);
    if (!XPCObject)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
      goto LABEL_13;
    }

    v6 = XPCObject;
    xpc_dictionary_set_value(a2, "IOSurface", XPCObject);
    xpc_release(v6);
  }

  if (v13)
  {
    if (v12)
    {
      v3 = FigXPCMessageSetAndConsumeVMData();
      if (v3)
      {
        goto LABEL_13;
      }
    }
  }

  v7 = 0;
  if (v10 && HIDWORD(v9))
  {
    v3 = FigXPCMessageSetAndConsumeVMData();
LABEL_13:
    v7 = v3;
  }

  FigXPCRelease();
  return v7;
}

void CreateServedAIGState_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void __HandleAssetImageGeneratorMessage_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigVideoQueueRemoteCallbackServer_NotificationIsPending()
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v0 = weakReferenceTable_CopyPointerFromKey();
  if (v0)
  {
    v1 = v0;
    v13 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v3 = DerivedStorage;
      if (*(DerivedStorage + 20))
      {
        v4 = *MEMORY[0x1E695E480];
        v5 = MEMORY[0x1E69E9A60];
        do
        {
          v12 = 0;
          v11 = 0;
          v14 = 0;
          if (!FigVideoQueueRemoteClient_GetNextPendingNotification(*(v3 + 20), &v14, &v13, cStr, &v12, &v11))
          {
            v6 = v12;
            v7 = v11;
            v8 = CMBaseObjectGetDerivedStorage();
            cf = 0;
            if (!*v8)
            {
              v9 = CFStringCreateWithCString(v4, cStr, 0);
              if (v9 && (!v6 || !v7 || !MEMORY[0x19A8D2B00](v6, v7, v4, &cf)))
              {
                CMNotificationCenterGetDefaultLocalCenter();
                CMNotificationCenterPostNotification();
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v9)
              {
                CFRelease(v9);
              }
            }

            MEMORY[0x19A8D6C70](*v5, v12, v11);
          }
        }

        while (v14);
      }
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t FigVideoQueueCreateRemoteWithOptions(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  theString = 0;
  cf = 0;
  v28 = 0;
  MEMORY[0x19A8D3660](&unk_1ED4CA2C8, videoQueueRemote_oneTimeInitializationWork);
  if (!_MergedGlobals_24)
  {
    goto LABEL_29;
  }

  v5 = *MEMORY[0x1E695E480];
  FigVideoQueueGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v9 = v6;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 208) = 0;
  MEMORY[0x19A8D3660](&_MergedGlobals_9, weakReferenceTable_OneTimeInitialization);
  if (qword_1EAF1A290)
  {
    Key = FigCFWeakReferenceTableAddValueAndGetKey();
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
  }

  v9 = Key;
  if (!Key)
  {
    *(DerivedStorage + 224) = 0;
    if (FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(theString, (DerivedStorage + 224), 16, 0x600u);
    }

    if (!FigCFDictionaryGetCount() || (v10 = MEMORY[0x19A8D2A70](a2, v5, &v28), !v10))
    {
      v10 = FigRPCCreateServerConnectionForObject();
      if (!v10)
      {
        v10 = FigRPCGetServerConnectionInfo();
        if (!v10)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          *(DerivedStorage + 104) = 1;
          v11 = FigSimpleMutexCreate();
          *(DerivedStorage + 160) = v11;
          if (v11)
          {
            memset(__str, 0, sizeof(__str));
            snprintf(__str, 0x50uLL, "com.apple.coremedia.vqr.timebasesync.%p", cf);
            v12 = dispatch_queue_create(__str, 0);
            *(DerivedStorage + 200) = v12;
            if (v12)
            {
              v13 = dispatch_queue_create("com.apple.coremedia.vqr.visualContextSyncQueue", 0);
              *(DerivedStorage + 112) = v13;
              if (v13)
              {
                v14 = dispatch_queue_create("com.apple.coremedia.vqr.videoTargetSyncQueue", 0);
                *(DerivedStorage + 128) = v14;
                if (v14)
                {
                  v15 = objc_autoreleasePoolPush();
                  v16 = [FigDisplayMirroringChangeObserver alloc];
                  *(DerivedStorage + 216) = [(FigDisplayMirroringChangeObserver *)v16 initWithCallback:videoQueueRemote_handleDisplayMirroringChanged context:cf];
                  objc_autoreleasePoolPop(v15);
                  MainBundle = CFBundleGetMainBundle();
                  Identifier = CFBundleGetIdentifier(MainBundle);
                  if (Identifier)
                  {
                    v19 = Identifier;
                    FigVideoQueueGetCMBaseObject();
                    v21 = v20;
                    v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v22)
                    {
                      v22(v21, @"ClientBundleIdentifier", v19);
                    }
                  }

                  if (dword_1EAF177B0)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  v9 = 0;
                  *a3 = cf;
                  cf = 0;
                  goto LABEL_22;
                }
              }
            }

LABEL_29:
            v9 = 4294955215;
            goto LABEL_22;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
        }
      }
    }

    v9 = v10;
  }

LABEL_22:
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v9;
}

void videoQueueRemote_removeHostLayer(uint64_t a1, CFTypeRef a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    v5 = DerivedStorage;
    if (!a2)
    {
      v6 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
      a2 = cf;
      if (v6)
      {
        goto LABEL_9;
      }

      v4 = *(v5 + 40);
    }

    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(a2, v4);
    v7 = *(v5 + 40);
    if (v7)
    {
      CFRelease(v7);
      *(v5 + 40) = 0;
    }

    if (cf)
    {
      FigDeferredTransactionCommit(cf, 0);
      a2 = cf;
LABEL_9:
      if (a2)
      {
        CFRelease(a2);
      }
    }
  }
}

void videoQueueRemote_syncServerTimebaseToMoment(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v4 = weakReferenceTable_CopyPointerFromKey();
  if (v4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = DerivedStorage;
    if (!*(DerivedStorage + 16) && !*DerivedStorage)
    {
      if (*(a1 + 8))
      {
        *(a2 + 4) |= 4u;
        *(a1 + 8) = 0;
      }

      if (*a2 == 120)
      {
        v7 = *(a2 + 4);
        v8 = *(a2 + 8);
        v9 = *(a2 + 64);
        v10 = *(DerivedStorage + 20);
        v11 = *(v6 + 184) != 0;
        LODWORD(v13[0]) = 120;
        DWORD1(v13[0]) = v7;
        *(&v13[0] + 1) = v8;
        v13[1] = *(a2 + 16);
        v14 = *(a2 + 32);
        v15 = *(a2 + 40);
        v16 = *(a2 + 56);
        v17 = v9;
        v18 = *(a2 + 72);
        v19 = *(a2 + 88);
        v21 = *(a2 + 112);
        v20 = *(a2 + 96);
        FigVideoQueueRemoteClient_SyncTimebaseToMoment(v10, v11, v13, &v12);
      }
    }
  }

  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void videoQueueRemote_SynchronizeLayerToMoment(uint64_t a1, uint64_t a2)
{
  v3 = weakReferenceTable_CopyPointerFromKey();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      v7 = *(v6 + 21);
      if (v7)
      {
        v8 = CFRetain(v7);
        FigSimpleMutexUnlock();
        if (v8)
        {
          FigLayerSynchronizerSynchronizeToMoment(v8, a2, 0);
          CFRelease(v8);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }
    }

    CFRelease(v4);
  }
}

uint64_t remoteXPCAsset_CreateInternal(const __CFAllocator *a1, const void *a2, uint64_t a3, const __CFData *a4, OpaqueCMBlockBuffer *a5, int a6, uint64_t a7, uint64_t a8, const __CFDictionary *a9, void *a10)
{
  value[128] = *MEMORY[0x1E69E9840];
  cf = 0;
  valuePtr = a8;
  v77 = 0;
  xdict = 0;
  blockBufferOut = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  token = 0;
  DataPointer = remoteXPCAsset_CreateAssetObject(a1, &cf);
  if (DataPointer)
  {
    goto LABEL_127;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v17 = CFGetTypeID(a2);
    if (v17 == CFURLGetTypeID())
    {
      DataPointer = FigXPCCreateBasicMessage();
      if (DataPointer)
      {
        goto LABEL_127;
      }

      DataPointer = FigXPCMessageSetCFURL();
      if (DataPointer)
      {
        goto LABEL_127;
      }

LABEL_26:
      v26 = a9;
      if (!a9)
      {
        v31 = MEMORY[0x19A8D50B0]();
        URLValue = 0;
        if (!v31)
        {
          v33 = 0;
          v28 = 0;
          v35 = 0;
          v30 = 0;
          goto LABEL_54;
        }

        v30 = v31;
        v32 = 0;
        v33 = 0;
        v28 = 0;
LABEL_31:
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
LABEL_106:
          CFRelease(v30);
          goto LABEL_107;
        }

        v35 = MutableCopy;
LABEL_53:
        CFDictionarySetValue(v35, @"assetOption_ApplicationTransportSecurityContext", v30);
        goto LABEL_54;
      }

      FigCFDictionaryGetURLValue();
      URLValue = FigCFDictionaryGetURLValue();
      FigCFDictionaryGetDictionaryValue();
      v28 = FigCFDictionaryGetURLValue();
      FigCFDictionaryGetBooleanIfPresent();
      DataValue = FigCFDictionaryGetDataValue();
      if (DataValue)
      {
        v30 = CFRetain(DataValue);
      }

      else
      {
        v30 = 0;
      }

      FigCFDictionaryGetBooleanIfPresent();
      StringValue = FigCFDictionaryGetStringValue();
      if (StringValue)
      {
        CFStringGetCString(StringValue, (DerivedStorage + 56), 10, 0x600u);
      }

      v33 = DerivedStorage;
      v37 = CFDictionaryGetValue(a9, @"assetOption_CustomURLLoader");
      if (v37)
      {
        v38 = v37;
        value[0] = 0;
        v39 = FigCFDictionaryCreateMutableCopy();
        if (!v39)
        {
          v32 = 0;
          goto LABEL_105;
        }

        v35 = v39;
        CFDictionaryRemoveValue(v39, @"assetOption_CustomURLLoader");
        v32 = MEMORY[0x19A8D1560](v38, value);
        if (!v32 && value[0])
        {
          xpc_dictionary_set_uint64(xdict, "CustomURLLoader", value[0]);
        }

        _os_feature_enabled_impl();
        OUTLINED_FUNCTION_6_101();
        if ((v40 & 1) == 0)
        {
          if (v30)
          {
            goto LABEL_54;
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (!_os_feature_enabled_impl())
        {
          v32 = 0;
          v35 = 0;
          OUTLINED_FUNCTION_6_101();
          if (v30)
          {
            goto LABEL_54;
          }

          goto LABEL_51;
        }

        v35 = FigCFDictionaryCreateMutableCopy();
        v32 = 0;
        OUTLINED_FUNCTION_6_101();
        if (!v41)
        {
          goto LABEL_105;
        }
      }

      FigCFDictionarySetBoolean();
      if (task_create_identity_token(*MEMORY[0x1E69E9A60], &token))
      {
        goto LABEL_104;
      }

      xpc_dictionary_set_mach_send();
      if (v30)
      {
LABEL_54:
        if (v35)
        {
          v26 = v35;
        }

        v42 = FigXPCMessageSetCFDictionary();
        if (v42)
        {
          goto LABEL_122;
        }

        xpc_dictionary_set_uint64(xdict, "AssetCreationFlags", valuePtr);
        if (!a2)
        {
LABEL_73:
          if (v28)
          {
            remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(0, v28, 0, xdict, 0x196EE97DALL, &v73);
          }

          if (URLValue)
          {
            remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(1, URLValue, 0, xdict, 0x196EE9807, &v72);
          }

          else if (!v75)
          {
            value[0] = 0;
            FigDiskCacheRepositoryCopyDefaultTmpDirURL(value);
            if (!v51)
            {
              FigSandboxRegisterDirectoryURLWithProcess();
              if (value[0])
              {
                CFRelease(value[0]);
              }
            }
          }

          if (v33)
          {
            remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(1, v33, 0, xdict, 0x196EE982DLL, &v71);
          }

          if (FigAssetAllowsSandboxedParsingOptIn())
          {
            FigCFDictionaryGetBooleanIfPresent();
          }

          v52 = xdict;
          v53 = dyld_program_sdk_at_least();
          xpc_dictionary_set_BOOL(v52, "ClientSDKVersion2025AndLater", v53);
          v42 = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (!v42)
          {
            uint64 = xpc_dictionary_get_uint64(v77, *MEMORY[0x1E69615A0]);
            v55 = cf;
            v42 = remoteXPCAsset_CompleteAssetObjectSetup(cf, uint64);
            if (!v42)
            {
              v56 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
              remoteXPCAsset_SetCachedAssetPropertyValue(v55, @"assetProperty_CreationOptionsDictionary", v26);
              v57 = cf;
              remoteXPCAsset_SetCachedAssetPropertyValue(cf, @"assetProperty_CreationFlags", v56);
              if (v56)
              {
                CFRelease(v56);
              }

              v32 = 0;
              if (!a2 || v70)
              {
LABEL_103:
                remoteXPCAsset_storeSandboxRegistration(v57, v74);
                remoteXPCAsset_storeSandboxRegistration(v57, v73);
                remoteXPCAsset_storeSandboxRegistration(v57, v72);
                remoteXPCAsset_storeSandboxRegistration(v57, v71);
                *a10 = v57;
                cf = 0;
                if (!v35)
                {
                  goto LABEL_105;
                }

                goto LABEL_104;
              }

              value[0] = 0;
              bytes[0] = 0;
              *theData = 0;
              if (!v26 || !CFDictionaryContainsKey(v26, @"assetOption_AdditionalHTTPCookies"))
              {
                ObjectID = FigRemote_SerializeCookiesForURL(a2, theData);
                if (ObjectID)
                {
LABEL_124:
                  v32 = ObjectID;
LABEL_100:
                  FigXPCRelease();
                  if (*theData)
                  {
                    CFRelease(*theData);
                  }

                  v57 = cf;
                  goto LABEL_103;
                }

                if (*theData)
                {
                  ObjectID = remoteXPCAsset_GetObjectID(v57, bytes);
                  if (!ObjectID)
                  {
                    v32 = FigXPCCreateBasicMessage();
                    v59 = value[0];
                    if (!v32)
                    {
                      FigXPCMessageSetCFURL();
                      v60 = value[0];
                      BytePtr = CFDataGetBytePtr(*theData);
                      Length = CFDataGetLength(*theData);
                      xpc_dictionary_set_data(v60, "CookieData", BytePtr, Length);
                      v32 = FigXPCRemoteClientSendSyncMessage();
                      v59 = value[0];
                    }

                    if (v59)
                    {
                      value[0] = 0;
                      xpc_release(v59);
                    }

                    goto LABEL_100;
                  }

                  goto LABEL_124;
                }
              }

              v32 = 0;
              goto LABEL_100;
            }
          }

LABEL_122:
          v32 = v42;
          if (!v35)
          {
LABEL_105:
            if (!v30)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          }

LABEL_104:
          CFRelease(v35);
          goto LABEL_105;
        }

        bzero(value, 0x400uLL);
        if (FigCFURLIsLocalResource())
        {
          v43 = 1;
          if (!CFURLGetFileSystemRepresentation(a2, 1u, value, 1024))
          {
LABEL_72:
            remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(0, a2, v43, xdict, 0x196EE97BALL, &v74);
            goto LABEL_73;
          }

          v44 = CFURLCopyPathExtension(a2);
          if (v44)
          {
            v45 = v44;
            v43 = 1;
            if (CFStringCompare(v44, @"movpkg", 1uLL) == kCFCompareEqualTo)
            {
              if (access(value, 2))
              {
                v82 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v47 = v82;
                v68 = os_log_and_send_and_compose_flags_and_os_log_type;
                HIDWORD(v66) = type;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v47 & 0xFFFFFFFE;
                }

                if (v48)
                {
                  v49 = __error();
                  v50 = strerror(*v49);
                  *theData = 136315651;
                  *&theData[4] = "remoteXPCAsset_shouldGrantWriteAccessToURL";
                  v84 = 2113;
                  v85 = a2;
                  v86 = 2080;
                  v87 = v50;
                  LODWORD(v66) = 32;
                  _os_log_send_and_compose_impl(v48, 0, bytes, 128, &dword_1962D5000, v68, HIDWORD(v66), "<< FigAssetRemoteXPC >> %s: Can't grant write access to URL %{private}@ (error = '%s'). Falling back to read-only access.", theData, v66);
                }

                v43 = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              else
              {
                v43 = 0;
              }
            }

            CFRelease(v45);
            goto LABEL_72;
          }
        }

        v43 = 1;
        goto LABEL_72;
      }

LABEL_51:
      v30 = MEMORY[0x19A8D50B0]();
      if (!v30)
      {
        goto LABEL_54;
      }

      if (v35)
      {
        goto LABEL_53;
      }

      goto LABEL_31;
    }

    goto LABEL_126;
  }

  if (a3)
  {
    value[0] = 0;
    DataPointer = FigFormatReaderXPCRemoteGetObjectID(a3, value);
    if (DataPointer)
    {
      goto LABEL_127;
    }

    DataPointer = FigXPCCreateBasicMessage();
    if (DataPointer)
    {
      goto LABEL_127;
    }

    xpc_dictionary_set_uint64(xdict, "FormatReader", value[0]);
    goto LABEL_26;
  }

  if (a4)
  {
    if (CFDataGetLength(a4))
    {
      DataPointer = FigXPCCreateBasicMessage();
      if (DataPointer)
      {
        goto LABEL_127;
      }

      DataPointer = FigXPCMessageSetCFData();
      if (DataPointer)
      {
        goto LABEL_127;
      }

      goto LABEL_26;
    }

    goto LABEL_126;
  }

  if (a5)
  {
    value[0] = 0;
    bytes[0] = 0;
    if (!CMBlockBufferGetDataLength(a5))
    {
LABEL_126:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_127;
    }

    DataPointer = FigXPCCreateBasicMessage();
    if (!DataPointer)
    {
      OUTLINED_FUNCTION_613();
      if (CMBlockBufferIsRangeContiguous(v18, v19, v20))
      {
        blockBufferOut = a5;
        CFRetain(a5);
LABEL_24:
        OUTLINED_FUNCTION_613();
        DataPointer = CMBlockBufferGetDataPointer(v21, v22, v23, v24, v25);
        if (DataPointer)
        {
          goto LABEL_127;
        }

        xpc_dictionary_set_data(xdict, "BlockBufferData", bytes[0], value[0]);
        xpc_dictionary_set_int64(xdict, "FormatIdentifierType", a6);
        DataPointer = FigXPCMessageSetCFObject();
        if (DataPointer)
        {
          goto LABEL_127;
        }

        goto LABEL_26;
      }

      DataPointer = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a5, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut);
      if (!DataPointer)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v65, v67);
    if (!DataPointer)
    {
      goto LABEL_26;
    }
  }

LABEL_127:
  v32 = DataPointer;
LABEL_107:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v74)
  {
    CFRelease(v74);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (token - 1 <= 0xFFFFFFFD)
  {
    OUTLINED_FUNCTION_613();
    FigMachPortReleaseSendRight_();
  }

  return v32;
}

uint64_t FigAssetRemoteCreateWithMovieProxyData(uint64_t a1, const __CFData *a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294955126, "<< FigAssetRemoteXPC >>", 2952, v5);
    goto LABEL_7;
  }

  if (!a5)
  {
    v17 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294955126, "<< FigAssetRemoteXPC >>", 2953, v5);
    goto LABEL_7;
  }

  if (qword_1ED4CB900 != -1)
  {
    dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
  }

  v10 = _MergedGlobals_120;
  if (!_MergedGlobals_120)
  {
    OUTLINED_FUNCTION_613();
    Internal = remoteXPCAsset_CreateInternal(v11, v12, v13, a2, 0, -1, 0, a3, a4, a5);
LABEL_7:
    v10 = Internal;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v10;
}

uint64_t FigAssetRemoteCreateWithBlockBuffer(int a1, CMBlockBufferRef theBuffer, int a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, void *a7)
{
  if (!theBuffer || a3 == -1 || !a4 || !a7 || !CMBlockBufferGetDataLength(theBuffer))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_10;
  }

  if (qword_1ED4CB900 != -1)
  {
    dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
  }

  v13 = _MergedGlobals_120;
  if (!_MergedGlobals_120)
  {
    OUTLINED_FUNCTION_613();
    Internal = remoteXPCAsset_CreateInternal(v14, v15, v16, 0, theBuffer, a3, a4, a5, a6, a7);
LABEL_10:
    v13 = Internal;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v13;
}

double FigAssetRemoteCreateForServerObject(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = 0;
  v7 = 0;
  if (qword_1ED4CB900 != -1)
  {
    dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
  }

  if (!_MergedGlobals_120 && !(*(a2 + 16))(a2, 0, 0, &v8, &v7, &v6))
  {
    return FigAssetXPCRemoteCreateWithObjectID(v7, a3);
  }

  return result;
}

double FigAssetXPCRemoteCreateWithObjectID(uint64_t a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    if (qword_1ED4CB900 != -1)
    {
      dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
    }

    if (!_MergedGlobals_120 && !remoteXPCAsset_CreateAssetObject(*MEMORY[0x1E695E480], a2))
    {
      v4 = *a2;

      remoteXPCAsset_CompleteAssetObjectSetup(v4, a1);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t remoteXPCAsset_CreateAssetObject(const __CFAllocator *a1, void *a2)
{
  FigAssetGetClassID();
  v4 = CMDerivedObjectCreate();
  if (!v4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigRemotePropertyCacheSetup(a1, (DerivedStorage + 8), "remoteFigAsset_cache");
    *(DerivedStorage + 56) = 0;
  }

  *a2 = 0;
  return v4;
}

uint64_t remoteXPCAsset_CompleteAssetObjectSetup(uint64_t a1, uint64_t a2)
{
  *CMBaseObjectGetDerivedStorage() = a2;
  result = FigXPCRemoteClientAssociateObject();
  if (!result)
  {

    return FigStartMonitoringMediaServicesProcessDeath();
  }

  return result;
}

double FigAssetXPCRemoteRetainCopiedAsset(uint64_t a1, void *a2)
{
  v24 = 0;
  if (a1 && a2)
  {
    if (qword_1ED4CB900 != -1)
    {
      dispatch_once(&qword_1ED4CB900, &__block_literal_global_98);
    }

    if (!_MergedGlobals_120)
    {
      v4 = FigXPCRemoteClientRetainCopiedObject();
      v12 = OUTLINED_FUNCTION_10_11(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24);
      if (v12)
      {
        FigAssetXPCRemoteGetObjectID(v12, &v23);
LABEL_8:
        *a2 = v24;
        return result;
      }

      result = FigAssetXPCRemoteCreateWithObjectID(a1, &v24);
      if (!v13)
      {
        goto LABEL_8;
      }

      v21 = OUTLINED_FUNCTION_10_11(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24);
      if (v21)
      {
        CFRelease(v21);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t remoteXPCAsset_ConvertMetadataBinaryPListDataToArray(uint64_t a1, uint64_t a2)
{
  v2 = FigXPCMessageCopyCFData();
  if (v2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t remoteXPCAssetTrack_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 48) && !*(DerivedStorage + 49) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigRemotePropertyCacheTeardown(DerivedStorage + 16);
  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t remoteXPCAssetTrack_CopyPropertyAndBlockageWarning(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4, CFTypeRef *a5)
{
  *v20 = 0;
  xdict = 0;
  cf = 0;
  v19 = 0;
  if (!a2 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_17;
  }

  *a4 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v10 = *(DerivedStorage + 16);
  block = MEMORY[0x1E69E9820];
  v23 = 0x40000000;
  v24 = __remoteXPCAssetTrack_CopyCachedAssetTrackPropertyValue_block_invoke;
  v25 = &unk_1E7494608;
  v28 = a2;
  p_cf = &cf;
  v26 = &v30;
  v27 = DerivedStorage;
  dispatch_sync(v10, &block);
  v11 = *(v31 + 24);
  _Block_object_dispose(&v30, 8);
  if (v11)
  {
    goto LABEL_11;
  }

  ObjectID = remoteXPCAssetTrack_GetObjectID(a1, &v19);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCMessageSetCFString(), ObjectID) || (xpc_dictionary_set_BOOL(xdict, "RequestBlockageWarning", 1), ObjectID = ASSETTRACK_CLIENT_SYNCHRONOUSLY_COPYING_A_PROPERTY(xdict, v20), ObjectID) || (ObjectID = remoteXPCAssetTrack_DeserializeAndCreateAssetTrackPropertyValueFromXPCDictionary(*v20, a2, &cf), ObjectID) || (ObjectID = FigXPCMessageCopyCFString(), ObjectID))
  {
LABEL_17:
    v16 = ObjectID;
    goto LABEL_13;
  }

  v13 = cf;
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = *(v14 + 16);
  block = MEMORY[0x1E69E9820];
  v23 = 0x40000000;
  v24 = __remoteXPCAssetTrack_SetCachedAssetTrackPropertyValue_block_invoke;
  v25 = &__block_descriptor_tmp_21_1;
  v26 = v14;
  v27 = a2;
  v28 = v13;
  dispatch_sync(v15, &block);
LABEL_11:
  *a4 = cf;
  cf = 0;
  v16 = 0;
  if (a5)
  {
    *a5 = 0;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v16;
}

void remoteXPCAssetTrack_GetStatusOfValueForProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t xdict, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_5_114();
  if (v26 && (v27 = v23) != 0)
  {
    v28 = v25;
    v29 = v24;
    if (!remoteXPCAssetTrack_GetObjectID(v22, &a10))
    {
      OUTLINED_FUNCTION_12_20();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFString() && !OUTLINED_FUNCTION_8_71())
      {
        *v27 = xpc_dictionary_get_uint64(xdict, "LoadStatus");
        if (v29)
        {
          *v29 = xpc_dictionary_get_int64(xdict, "LoadingError");
        }

        if (v28)
        {
          FigXPCMessageCopyCFError();
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

void remoteXPCAssetTrack_LoadValuesAsyncForProperties(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_5_114();
  if (v24 && (OUTLINED_FUNCTION_9_64(), v26 = v25, CFArrayGetCount(v27)))
  {
    if (!remoteXPCAssetTrack_GetObjectID(v26, &a10))
    {
      OUTLINED_FUNCTION_12_20();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFArray())
      {
        xpc_dictionary_set_BOOL(xdict, "isBatch", v20 != 0);
        if (!OUTLINED_FUNCTION_8_71())
        {
          if (v21)
          {
            *v21 = xpc_dictionary_get_BOOL(a11, "AlreadyLoaded");
          }

          if (v20)
          {
            *v20 = xpc_dictionary_get_uint64(a11, "BatchID");
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCAssetTrack_LoadValueAsyncForProperty(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  if (!a2)
  {
    v3 = v4;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
LABEL_10:
    OUTLINED_FUNCTION_16_15();
    goto LABEL_8;
  }

  if (remoteXPCAssetTrack_GetObjectID(a1, &v18))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_20();
  if (FigXPCCreateBasicMessage() || FigXPCMessageSetCFString())
  {
    goto LABEL_10;
  }

  v6 = OUTLINED_FUNCTION_6_78(qword_1ED4CB8F8);
  v14 = OUTLINED_FUNCTION_21_13(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19);
  if (a3 && !v3)
  {
    *a3 = xpc_dictionary_get_BOOL(v14, "AlreadyLoaded");
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45(qword_1ED4CB8F8, v15, "remoteXPCAssetTrack_LoadValueAsyncForProperty");
  return v3;
}

uint64_t remoteXPCAssetTrack_ValidateAsync(uint64_t a1, CFTypeRef cf1, uint64_t a3, int64_t *a4, _DWORD *a5)
{
  xdict = 0;
  v15 = 0;
  v13 = 0;
  if (!cf1 || !a4)
  {
    goto LABEL_18;
  }

  if (CFEqual(cf1, @"validationCriteria_Custom"))
  {
    if (!a3)
    {
LABEL_18:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_19:
      v11 = ObjectID;
      goto LABEL_17;
    }
  }

  else if (!CFEqual(cf1, @"validationCriteria_CameraRoll") && !CFEqual(cf1, @"validationCriteria_MediaPlayback") && !CFEqual(cf1, @"validationCriteria_MediaDecoding"))
  {
    goto LABEL_18;
  }

  ObjectID = remoteXPCAssetTrack_GetObjectID(a1, &v13);
  if (ObjectID)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_19;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (ObjectID)
    {
      goto LABEL_19;
    }
  }

  v11 = OUTLINED_FUNCTION_6_78(qword_1ED4CB8F8);
  if (!v11)
  {
    *a4 = xpc_dictionary_get_int64(xdict, "ValidationStatus");
    v11 = 0;
    if (a5)
    {
      *a5 = xpc_dictionary_get_int64(xdict, "ValidationResult");
    }
  }

LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

uint64_t remoteXPCAsset_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigStopMonitoringMediaServicesProcessDeath();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 40) && !*(DerivedStorage + 66) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 48) = 0;
  }

  FigRemotePropertyCacheTeardown(DerivedStorage + 8);
  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t remoteXPCAsset_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v6 = 0;
      if (!remoteXPCAsset_GetObjectID(a1, &v6))
      {
        FigXPCSendStdSetPropertyMessage();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  OUTLINED_FUNCTION_16_15();
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45(qword_1ED4CB8F8, v4, "remoteXPCAsset_SetProperty");
  return v3;
}

uint64_t remoteXPCAsset_CopyPropertyAndBlockageWarning(uint64_t a1, CFTypeRef cf1, uint64_t a3, CFTypeRef *a4, CFTypeRef *a5)
{
  xdict = 0;
  cf = 0;
  v15 = 0;
  *v16 = 0;
  if (!cf1 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_26;
  }

  *a4 = 0;
  if (CFEqual(cf1, @"assetProperty_ContentByteStream") || CFEqual(cf1, @"assetProperty_ByteStreamProvider"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v16[0], xdict);
    if (ObjectID)
    {
      goto LABEL_26;
    }
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v11 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCAsset_CopyCachedAssetPropertyValue_block_invoke;
  block[3] = &unk_1E74946D0;
  block[6] = cf1;
  block[7] = &cf;
  block[4] = &v20;
  block[5] = DerivedStorage;
  dispatch_sync(v11, block);
  v12 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  if (!v12)
  {
    block[0] = 0;
    ObjectID = remoteXPCAsset_GetObjectID(a1, block);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFString();
        if (!ObjectID)
        {
          xpc_dictionary_set_BOOL(xdict, "RequestBlockageWarning", 1);
          ObjectID = ASSETTRACK_CLIENT_SYNCHRONOUSLY_COPYING_A_PROPERTY(xdict, v16);
          if (!ObjectID)
          {
            ObjectID = remoteXPCAsset_DeserializeAndCreateAssetPropertyValueFromXPCDictionary(a1, *v16, cf1, &cf);
            if (!ObjectID)
            {
              ObjectID = FigXPCMessageCopyCFString();
              if (!ObjectID)
              {
                if (v15 && dword_1ED4CB8F0 <= 4)
                {
                  ++dword_1ED4CB8F0;
                }

                remoteXPCAsset_SetCachedAssetPropertyValue(a1, cf1, cf);
                goto LABEL_17;
              }
            }
          }
        }
      }
    }

LABEL_26:
    v13 = ObjectID;
    goto LABEL_20;
  }

LABEL_17:
  *a4 = cf;
  if (a5)
  {
    *a5 = v15;
    v15 = 0;
  }

  v13 = 0;
  cf = 0;
LABEL_20:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v13;
}

uint64_t remoteXPCAsset_GetStatusOfValueForProperty(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_15;
  }

  v11 = DerivedStorage;
  ObjectID = remoteXPCAsset_GetObjectID(a1, &v21);
  if (ObjectID)
  {
    goto LABEL_15;
  }

  v13 = *(v11 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCAsset_GetStatusOfValueForProperty_block_invoke;
  block[3] = &unk_1E74946F8;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  block[9] = a5;
  block[4] = &v17;
  block[5] = v11;
  dispatch_sync(v13, block);
  if (*(v18 + 24))
  {
    goto LABEL_5;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID || (ObjectID = FigXPCMessageSetCFString(), ObjectID))
  {
LABEL_15:
    v14 = ObjectID;
    goto LABEL_13;
  }

  v14 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v14)
  {
    goto LABEL_13;
  }

  *a3 = xpc_dictionary_get_uint64(v22, "LoadStatus");
  if (a4)
  {
    *a4 = xpc_dictionary_get_int64(v22, "LoadingError");
  }

  if (a5)
  {
    FigXPCMessageCopyCFError();
    v14 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v14 = 0;
LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  _Block_object_dispose(&v17, 8);
  return v14;
}

void remoteXPCAsset_LoadValuesAsyncForProperties(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_5_114();
  if (v24 && (OUTLINED_FUNCTION_9_64(), v26 = v25, CFArrayGetCount(v27)))
  {
    if (!remoteXPCAsset_GetObjectID(v26, &a10))
    {
      OUTLINED_FUNCTION_12_20();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFArray())
      {
        xpc_dictionary_set_BOOL(xdict, "isBatch", v20 != 0);
        if (!OUTLINED_FUNCTION_8_71())
        {
          if (v21)
          {
            *v21 = xpc_dictionary_get_BOOL(a11, "AlreadyLoaded");
          }

          if (v20)
          {
            *v20 = xpc_dictionary_get_uint64(a11, "BatchID");
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCAsset_LoadValueAsyncForProperty(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  if (!a2)
  {
    v3 = v4;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
LABEL_10:
    OUTLINED_FUNCTION_16_15();
    goto LABEL_8;
  }

  if (remoteXPCAsset_GetObjectID(a1, &v18))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_20();
  if (FigXPCCreateBasicMessage() || FigXPCMessageSetCFString())
  {
    goto LABEL_10;
  }

  v6 = OUTLINED_FUNCTION_6_78(qword_1ED4CB8F8);
  v14 = OUTLINED_FUNCTION_21_13(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19);
  if (a3 && !v3)
  {
    *a3 = xpc_dictionary_get_BOOL(v14, "AlreadyLoaded");
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45(qword_1ED4CB8F8, v15, "remoteXPCAsset_LoadValueAsyncForProperty");
  return v3;
}

void remoteXPCAsset_ValidateAsync(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t xdict, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_5_114();
  if (v26 && (v27 = v24) != 0)
  {
    v28 = v25;
    v29 = v23;
    if (!remoteXPCAsset_GetObjectID(v22, &a10))
    {
      OUTLINED_FUNCTION_12_20();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFString() && (!v29 || !FigXPCMessageSetCFDictionary()) && !OUTLINED_FUNCTION_8_71())
      {
        *v27 = xpc_dictionary_get_int64(xdict, "ValidationStatus");
        if (v28)
        {
          *v28 = xpc_dictionary_get_int64(xdict, "ValidationResult");
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCAsset_FetchChapterDataAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = 0;
  xdict = 0;
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, xdict, v30);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_64();
  ObjectID = remoteXPCAsset_GetObjectID(v8, &v28);
  if (ObjectID)
  {
LABEL_7:
    v6 = ObjectID;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_14();
  v10 = FigXPCCreateBasicMessage();
  v18 = OUTLINED_FUNCTION_10_11(v10, v11, v12, v13, v14, v15, v16, v17, v28, xdict);
  if (!v6)
  {
    xpc_dictionary_set_int64(v18, "ChapterGroupIndex", v7);
    xpc_dictionary_set_int64(xdict, "ChapterIndex", v5);
    xpc_dictionary_set_int64(xdict, "ChapterCount", v4);
    v19 = FigXPCRemoteClientSendAsyncMessage();
    OUTLINED_FUNCTION_10_11(v19, v20, v21, v22, v23, v24, v25, v26, v28, xdict);
  }

LABEL_5:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t remoteXPCAsset_LoadValuesAsyncForTrackProperties(uint64_t a1, const __CFArray *a2, CFArrayRef theArray, BOOL *a4, _DWORD *a5)
{
  v22 = 0;
  xdict = 0;
  v21 = 0;
  if (!theArray)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_24;
  }

  if (!CFArrayGetCount(theArray) || a2 && !CFArrayGetCount(a2))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_27;
  }

  ObjectID = remoteXPCAsset_GetObjectID(a1, &v21);
  if (ObjectID)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_27;
  }

  ObjectID = FigXPCMessageSetCFArray();
  if (ObjectID)
  {
    goto LABEL_27;
  }

  xpc_dictionary_set_BOOL(xdict, "isBatch", a5 != 0);
  if (a2)
  {
    v10 = xpc_array_create(0, 0);
    if (v10)
    {
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        while (1)
        {
          value = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v13);
          if (!ValueAtIndex)
          {
            break;
          }

          v15 = ValueAtIndex;
          v16 = CFGetTypeID(ValueAtIndex);
          if (v16 != FigAssetTrackGetTypeID())
          {
            break;
          }

          v17 = remoteXPCAssetTrack_GetObjectID(v15, &value);
          if (v17)
          {
            goto LABEL_24;
          }

          xpc_array_set_uint64(v10, 0xFFFFFFFFFFFFFFFFLL, value);
          if (v12 == ++v13)
          {
            goto LABEL_16;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_24;
      }

LABEL_16:
      xpc_dictionary_set_value(xdict, "Tracks", v10);
      xpc_release(v10);
      goto LABEL_17;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_24:
    v18 = v17;
    goto LABEL_22;
  }

LABEL_17:
  ObjectID = OUTLINED_FUNCTION_6_78(qword_1ED4CB8F8);
  if (ObjectID)
  {
LABEL_27:
    v18 = ObjectID;
    goto LABEL_22;
  }

  if (a5)
  {
    *a5 = xpc_dictionary_get_uint64(v22, "BatchID");
  }

  v18 = 0;
  if (a4)
  {
    *a4 = xpc_dictionary_get_BOOL(v22, "AlreadyLoaded");
  }

LABEL_22:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v18;
}

uint64_t remoteXPCAsset_DefineMacroProperty()
{
  OUTLINED_FUNCTION_10_63();
  if (!v3 || !v2 || (v4 = v1, !CFArrayGetCount(v2)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  ObjectID = remoteXPCAsset_GetObjectID(v4, &v10);
  if (ObjectID)
  {
LABEL_12:
    v7 = ObjectID;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_14();
  v6 = FigXPCCreateBasicMessage();
  if (v6 || (v6 = FigXPCMessageSetCFString(), v6) || (v6 = FigXPCMessageSetCFArray(), v6))
  {
    v7 = v6;
  }

  else
  {
    v7 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_9:
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45(*(v0 + 2296), v8, "remoteXPCAsset_DefineMacroProperty");
  return v7;
}

uint64_t remoteXPCAsset_DefineTrackMacroProperty()
{
  OUTLINED_FUNCTION_10_63();
  if (!v3 || !v2 || (v4 = v1, !CFArrayGetCount(v2)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  ObjectID = remoteXPCAsset_GetObjectID(v4, &v10);
  if (ObjectID)
  {
LABEL_12:
    v7 = ObjectID;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_14();
  v6 = FigXPCCreateBasicMessage();
  if (v6 || (v6 = FigXPCMessageSetCFString(), v6) || (v6 = FigXPCMessageSetCFArray(), v6))
  {
    v7 = v6;
  }

  else
  {
    v7 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_9:
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45(*(v0 + 2296), v8, "remoteXPCAsset_DefineTrackMacroProperty");
  return v7;
}

uint64_t remoteXPCAsset_DefineCrossTrackMacroProperty()
{
  OUTLINED_FUNCTION_10_63();
  if (!v3 || !v2 || (v4 = v1, !CFArrayGetCount(v2)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  ObjectID = remoteXPCAsset_GetObjectID(v4, &v10);
  if (ObjectID)
  {
LABEL_12:
    v7 = ObjectID;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_14();
  v6 = FigXPCCreateBasicMessage();
  if (v6 || (v6 = FigXPCMessageSetCFString(), v6) || (v6 = FigXPCMessageSetCFArray(), v6))
  {
    v7 = v6;
  }

  else
  {
    v7 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_9:
  FigXPCRelease();
  OUTLINED_FUNCTION_13_45(*(v0 + 2296), v8, "remoteXPCAsset_DefineCrossTrackMacroProperty");
  return v7;
}

void FigAssetRemoteCreateWithURLAndRetry_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetRemoteCreateWithFormatReader_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void FigAssetRemoteCopyAssetWithDownloadToken_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetXPCRemoteGetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetXPCRemoteGetObjectID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAsset_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAsset_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double remoteXPCAssetClient_NotificationFilter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double remoteXPCAssetClient_NotificationFilter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void remoteXPCAsset_DeserializeAndCreateHLSSessionKeysFromXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_2(uint64_t a1, __CFArray *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a3 = v5;
  if (v5)
  {
    return 1;
  }

  CFArrayAppendValue(a2, 0);
  return 0;
}

void remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAsset_DeserializeAndCreateHLSAlternatesFromXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAssetTrack_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAssetTrack_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAssetTrack_GetTrackInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double remoteXPCAsset_storeSandboxRegistration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void remoteXPCAsset_CopyTrackByID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAsset_CopyTrackByID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCAsset_CopyTracksWithMediaType_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void remoteXPCAsset_CopyTracksWithMediaType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

CMBlockBufferRef dq_EnqueueSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294951506;
  }

  v5 = DerivedStorage;
  result = CMSampleBufferGetDataBuffer(a2);
  if (result)
  {
    FigSimpleMutexLock();
    v7 = *(v5 + 24);
    if (_MergedGlobals_121 != -1)
    {
      dispatch_once(&_MergedGlobals_121, &__block_literal_global_99);
    }

    Instance = _CFRuntimeCreateInstance();
    Instance[2] = CFRetain(a2);
    Instance[3] = v7;
    v9 = *(v5 + 8);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      v9 = *(v5 + 8);
    }

    else
    {
      Count = 0;
    }

    v17.location = 0;
    v17.length = Count;
    v11 = CFArrayBSearchValues(v9, v17, Instance, FigDataQueueBufferInfo_compareOutputPTS, 0);
    v12 = v11;
    if (v11 >= Count)
    {
      v13 = Count;
    }

    else
    {
      v13 = v11;
    }

    CFArrayInsertValueAtIndex(*(v5 + 8), v13, Instance);
    if (v12 < Count)
    {
      CFArrayGetValueAtIndex(*(v5 + 8), v13 + 1);
      if (FigCFEqual())
      {
        CFArrayRemoveValueAtIndex(*(v5 + 8), v13 + 1);
      }
    }

    dq_Prune(a1);
    v14 = 0;
    memset(&timeOut, 0, sizeof(timeOut));
    CMTimebaseGetTimeAndRate(*(v5 + 16), &timeOut, &v14);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      time = timeOut;
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }

    CFRelease(Instance);
    FigSimpleMutexUnlock();
    return 0;
  }

  return result;
}

uint64_t dq_CopySampleBufferForTime(const void *a1, CMTime *a2, uint64_t a3, CMSampleBufferRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v218 = **&MEMORY[0x1E6960C70];
  v217 = v218;
  v216 = 0;
  v215 = v218;
  v8 = 4294951506;
  if (!a4 || (a2->flags & 1) == 0)
  {
    return v8;
  }

  v9 = DerivedStorage;
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  if (CMTimeIfPresent && (v215.flags & 1) != 0)
  {
    *time = v215;
    *&v214.value = *MEMORY[0x1E6960CC0];
    v18 = *(MEMORY[0x1E6960CC0] + 16);
    v214.epoch = v18;
    v19 = OUTLINED_FUNCTION_2_162(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v214.value, *&v214.timescale, v215.value);
    v21 = CMTimeCompare(v19, v20);
    if ((v21 & 0x80000000) != 0)
    {
      *&v215.value = v186;
      v215.epoch = v18;
    }

    else if (v215.flags)
    {
      *&time[16] = v215.epoch;
      *&time[8] = *&v215.timescale;
      *&v214.value = kDefaultNonAlignedSBuf;
      v214.epoch = 0;
      v29 = OUTLINED_FUNCTION_2_162(v21, v22, v23, v24, v25, v26, v27, v28, kDefaultNonAlignedSBuf, *(&kDefaultNonAlignedSBuf + 1), v215.value);
      if (CMTimeCompare(v29, v30) >= 1)
      {
        v215.epoch = 0;
        *&v215.value = v186;
      }
    }
  }

  FigSimpleMutexLock();
  if (!*(v9 + 16))
  {
    v218 = *a2;
    goto LABEL_12;
  }

  CMClockGetHostTimeClock();
  OUTLINED_FUNCTION_78_7();
  CMSyncConvertTime(&v218, time, v31, v32);
  v33 = *(v9 + 16);
  if (!v33)
  {
LABEL_12:
    Rate = 0.0;
    goto LABEL_15;
  }

  Rate = CMTimebaseGetRate(v33);
LABEL_15:
  v35 = 0;
  v36 = 0;
  while (1)
  {
    Count = *(v9 + 8);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v35 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 8), v35);
    v46 = OUTLINED_FUNCTION_4_128(ValueAtIndex, v39, v40, v41, v42, v43, v44, v45, v186, *(&v186 + 1), *time, *&time[8], *&time[16]);
    if (*(v9 + 24) == ValueAtIndex[3])
    {
      if (Rate >= 0.0)
      {
        *&v214.value = *&v218.value;
        OUTLINED_FUNCTION_0_178(v46, v47, v48, v49, v50, v51, v52, v53, v186, *(&v186 + 1), *time);
        v90 = OUTLINED_FUNCTION_17_5(v82, v83, v84, v85, v86, v87, v88, v89, v189, v197, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
        v92 = CMTimeCompare(v90, v91);
        if ((v92 & 0x80000000) == 0 || (*&v214.value = *&v218.value, OUTLINED_FUNCTION_0_178(v92, v93, v94, v95, v96, v97, v98, v99, v186, *(&v186 + 1), *time), v108 = OUTLINED_FUNCTION_17_5(v100, v101, v102, v103, v104, v105, v106, v107, v190, v198, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v215.value, *&v215.timescale, v215.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value), dq_BufferPTSIsWithinSamplingTimeWithPrecision(v108, v109, &lhs)))
        {
          v36 = ValueAtIndex;
        }
      }

      else
      {
        *&v214.value = *&v218.value;
        OUTLINED_FUNCTION_0_178(v46, v47, v48, v49, v50, v51, v52, v53, v186, *(&v186 + 1), *time);
        v62 = OUTLINED_FUNCTION_17_5(v54, v55, v56, v57, v58, v59, v60, v61, v187, v195, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
        v64 = CMTimeCompare(v62, v63);
        if (v64 < 1)
        {
          goto LABEL_29;
        }

        *&v214.value = *&v218.value;
        OUTLINED_FUNCTION_0_178(v64, v65, v66, v67, v68, v69, v70, v71, v186, *(&v186 + 1), *time);
        v80 = OUTLINED_FUNCTION_17_5(v72, v73, v74, v75, v76, v77, v78, v79, v188, v196, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, v215.value, *&v215.timescale, v215.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
        if (dq_BufferPTSIsWithinSamplingTimeWithPrecision(v80, v81, &lhs))
        {
          goto LABEL_29;
        }
      }
    }

    ++v35;
  }

  ValueAtIndex = v36;
LABEL_29:
  if (HIBYTE(v216))
  {
    if (ValueAtIndex)
    {
      v110 = ValueAtIndex[2];
      if (!v110)
      {
LABEL_33:
        v8 = 0;
        *a4 = v110;
        goto LABEL_59;
      }
    }

    else
    {
      v150 = *(v9 + 32);
      if (!v150)
      {
        goto LABEL_62;
      }

      v110 = *(v150 + 16);
      if (!v110)
      {
        goto LABEL_33;
      }
    }

    v110 = CFRetain(v110);
    goto LABEL_33;
  }

  v111 = *(v9 + 32);
  if (ValueAtIndex)
  {
    *(v9 + 32) = ValueAtIndex;
    CFRetain(ValueAtIndex);
    if (v111)
    {
      CFRelease(v111);
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&v217, ValueAtIndex[2]);
    for (i = 0; ; ++i)
    {
      v113 = *(v9 + 8);
      if (v113)
      {
        v113 = CFArrayGetCount(v113);
      }

      if (i >= v113)
      {
        if (*(v9 + 32))
        {
          goto LABEL_52;
        }

LABEL_62:
        v8 = 4294951503;
        goto LABEL_59;
      }

      v114 = CFArrayGetValueAtIndex(*(v9 + 8), i);
      v122 = OUTLINED_FUNCTION_4_128(v114, v115, v116, v117, v118, v119, v120, v121, v186, *(&v186 + 1), *time, *&time[8], *&time[16]);
      if (Rate <= 0.0)
      {
        if (Rate < 0.0)
        {
          *&v214.value = *&v217.value;
          OUTLINED_FUNCTION_0_178(v122, v123, v124, v125, v126, v127, v128, v129, v186, *(&v186 + 1), *time);
          v148 = OUTLINED_FUNCTION_17_5(v140, v141, v142, v143, v144, v145, v146, v147, v192, v200, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
          if (CMTimeCompare(v148, v149) <= 0)
          {
LABEL_46:
            v114[8] = 2;
            continue;
          }
        }
      }

      else
      {
        *&v214.value = *&v217.value;
        OUTLINED_FUNCTION_0_178(v122, v123, v124, v125, v126, v127, v128, v129, v186, *(&v186 + 1), *time);
        v138 = OUTLINED_FUNCTION_17_5(v130, v131, v132, v133, v134, v135, v136, v137, v191, v199, *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), v204, v205, v206, *(&v206 + 1), v207, *(&v207 + 1), v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, rhs.value, *&rhs.timescale, rhs.epoch, v213, v214.value);
        if ((CMTimeCompare(v138, v139) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }
      }
    }
  }

  ValueAtIndex = *(v9 + 32);
  if (!v111)
  {
    goto LABEL_62;
  }

LABEL_52:
  *(ValueAtIndex + 8) = 1;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_78_7();
    CMTimeGetSeconds(time);
    *time = v217;
    CMTimeGetSeconds(time);
    kdebug_trace();
  }

  v151 = ValueAtIndex[2];
  if (v151)
  {
    v151 = CFRetain(v151);
  }

  *a4 = v151;
  memset(&v209, 0, sizeof(v209));
  CMSampleBufferGetOutputPresentationTimeStamp(&v209, ValueAtIndex[2]);
  memset(&v208, 0, sizeof(v208));
  OutputDuration = CMSampleBufferGetOutputDuration(&v208, ValueAtIndex[2]);
  *&v214.timescale = *&v209.timescale;
  v214.epoch = v209.epoch;
  v160 = OUTLINED_FUNCTION_17_5(OutputDuration, v153, v154, v155, v156, v157, v158, v159, kDefaultNonAlignedSBuf, *(&kDefaultNonAlignedSBuf + 1), *time, *&time[8], *&time[16], *&time[24], v203, *(&v203 + 1), 0, 0, 0, 0, 0, 0, v208.value, *&v208.timescale, v208.epoch, v209.value, *&v209.timescale, v209.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v211, kDefaultNonAlignedSBuf, *(&kDefaultNonAlignedSBuf + 1), 0, v213, v209.value);
  CMTimeSubtract(v162, v160, v161);
  *&v214.value = v193;
  v214.epoch = 0;
  CMTimeMultiply(&rhs, &v214, 2);
  lhs = v208;
  v163 = CMTimeAdd(&v214, &lhs, &rhs);
  v171 = OUTLINED_FUNCTION_2_162(v163, v164, v165, v166, v167, v168, v169, v170, v193, *(&v193 + 1), time[0]);
  v174 = CMTimeRangeMake(v173, v171, v172);
  *&time[8] = v205;
  *&time[16] = v206;
  v203 = v207;
  v214 = v218;
  v182 = OUTLINED_FUNCTION_2_162(v174, v175, v176, v177, v178, v179, v180, v181, v194, v201, v204);
  if (!CMTimeRangeContainsTime(v182, v183))
  {
    v184 = FigCFCopyCompactDescription();
    CFRelease(v184);
  }

  dq_EvaluateAndFireLWMTriggerCallback(a1);
  v8 = 0;
LABEL_59:
  FigSimpleMutexUnlock();
  return v8;
}

BOOL FigStreamTrackAreTracksSyncPairs(uint64_t a1, uint64_t a2)
{
  DiscontinuityDomain = FigStreamTrackGetDiscontinuityDomain(a1);
  if (DiscontinuityDomain != FigStreamTrackGetDiscontinuityDomain(a2))
  {
    return 0;
  }

  return FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(a1, a2);
}

uint64_t lockRoot(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a1 + 128))
  {
    goto LABEL_7;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(a1 + 8), @"root.xml", 0);
  if (FigFileDoesFileExist() == 1)
  {
    v6 = FigFileForkOpenMainByCFURL();
    if (v6 != -17913)
    {
      if (!v5)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  OUTLINED_FUNCTION_5_115();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  v6 = v11;
  FigBytePumpGetFigBaseObject();
  if (v5)
  {
LABEL_5:
    CFRelease(v5);
  }

LABEL_6:
  if (v6)
  {
    return v6;
  }

LABEL_7:
  v6 = FigFileLock();
  if (v6 == -12206)
  {
    OUTLINED_FUNCTION_5_115();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    v6 = v7;
  }

  if (!v6)
  {
    *(a1 + 112) = (v2 & 2) != 0;
    *(a1 + 113) = 1;
    return v6;
  }

  if (v6 != -17913)
  {
    return v6;
  }

  OUTLINED_FUNCTION_5_115();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
  v10 = v9;
  FigBytePumpGetFigBaseObject();
  return v10;
}

uint64_t FigHLSPersistentStoreRemovePersistentStore(uint64_t a1, const __CFDictionary *a2)
{
  theArray = 0;
  cf = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", theArray, cf, v20);
    goto LABEL_15;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigHLSPersistentStoreCreateAtURL(AllocatorForMedia, a1, a2, 1, &cf);
  if (v5)
  {
    goto LABEL_15;
  }

  v6 = cf;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    goto LABEL_16;
  }

  v5 = v7(v6, &theArray);
  if (v5)
  {
LABEL_15:
    v16 = v5;
    goto LABEL_17;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
        v12 = cf;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (!v13)
        {
          goto LABEL_16;
        }

        v5 = v13(v12, ValueAtIndex);
        if (v5)
        {
          goto LABEL_15;
        }
      }

      while (v9 != ++v10);
    }
  }

  v14 = cf;
  if (!cf)
  {
    v16 = 4294954516;
    goto LABEL_17;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v15)
  {
LABEL_16:
    v16 = 4294954514;
    goto LABEL_17;
  }

  v5 = v15(v14);
  if (v5)
  {
    goto LABEL_15;
  }

  v5 = FigFileDeleteRecursive();
  if (v5 != -17913)
  {
    goto LABEL_15;
  }

  FigBytePumpGetFigBaseObject();
  v16 = 4294949383;
LABEL_17:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

double persistentStore_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (!FigReadWriteLockLockForWrite())
    {
      if (!a2)
      {
        goto LABEL_25;
      }

      if (*v3)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_2_85();
      if (!v9)
      {
        goto LABEL_25;
      }

      if (!CFEqual(a2, @"MasterPlaylistNetworkURL"))
      {
        goto LABEL_26;
      }

      if (!a3 || (v10 = CFGetTypeID(a3), v10 != CFStringGetTypeID()))
      {
LABEL_25:
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_26:
        FigReadWriteLockUnlockForWrite();
        return result;
      }

      v11 = *(v3 + 48);
      FigXMLNodeGetTag(v11);
      v12 = FigCFEqual();
      if (v11 && v12 && (v13 = FigXMLNodeGetChild(v11, @"MasterPlaylist")) != 0)
      {
        v14 = v13;
        Child = FigXMLNodeGetChild(v13, @"NetworkURL");
        if (Child)
        {
          v16 = FigXMLNodeContentSetCFString(Child, a3);
        }

        else
        {
          v16 = xmlAddTargetNode(v14, a3);
        }
      }

      else
      {
        cf = 0;
        FigXMLNodeGetTag(v11);
        v18 = FigCFEqual();
        if (v11 && v18)
        {
          AllocatorForMedia = FigGetAllocatorForMedia();
          v17 = FigXMLNodeCreateChildNode(AllocatorForMedia, v11, @"MasterPlaylist", &cf);
          v20 = cf;
          if (!v17)
          {
            v17 = xmlAddTargetNode(cf, a3);
            v20 = cf;
          }

          if (v20)
          {
            CFRelease(v20);
          }

          goto LABEL_23;
        }

        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, cf, v23);
      }

      v17 = v16;
LABEL_23:
      if (!v17)
      {
        writeBoot(a1);
      }

      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t persistentStore_Invalidate(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_3_130(a1);
    result = FigReadWriteLockLockForWrite();
    if (result)
    {
      return result;
    }

    if (!*v1)
    {
      *v1 = 1;
      if (*(v1 + 128))
      {
        v3 = unlockRoot(v1);
        FigFileForkClose();
        *(v1 + 128) = 0;
        if (v3 == -17913)
        {
          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
          FigBytePumpGetFigBaseObject();
        }
      }

      v4 = *(v1 + 8);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v1 + 24);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(v1 + 32);
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(v1 + 48);
      if (v7)
      {
        CFRelease(v7);
        *(v1 + 48) = 0;
      }

      v8 = *(v1 + 40);
      if (v8)
      {
        CFRelease(v8);
        *(v1 + 40) = 0;
      }

      v9 = *(v1 + 72);
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = *(v1 + 64);
      if (v10)
      {
        CFRelease(v10);
      }

      v11 = *(v1 + 80);
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = *(v1 + 16);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = *(v1 + 56);
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = *(v1 + 104);
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = *(v1 + 144);
      if (v15)
      {
        CFRelease(v15);
      }

      v16 = *(v1 + 152);
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = *(v1 + 96);
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = *(v1 + 88);
      if (v18)
      {
        CFRelease(v18);
      }

      v19 = *(v1 + 192);
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = *(v1 + 200);
      if (v20)
      {
        CFRelease(v20);
      }

      v21 = *(v1 + 208);
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = *(v1 + 216);
      if (v22)
      {
        CFRelease(v22);
      }
    }

    FigReadWriteLockUnlockForWrite();
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
  }

  return 0;
}

uint64_t xmlAddTargetNode(uint64_t a1, const void *a2)
{
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigXMLNodeCreateChildNode(AllocatorForMedia, a1, @"NetworkURL", &cf);
  if (!v5)
  {
    v5 = FigXMLNodeContentSetCFString(cf, a2);
  }

  v6 = v5;
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

double persistentStore_GetAccessLevel(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    v4 = DerivedStorage;
    *a2 = -1;
    if (!FigReadWriteLockLockForWrite())
    {
      if (*v4)
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
      }

      else if (v4[112])
      {
        *a2 = 1;
      }

      else if (v4[113])
      {
        *a2 = 0;
      }

      FigReadWriteLockUnlockForWrite();
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double persistentStore_SetAccessLevel(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (!FigReadWriteLockLockForWrite())
    {
      if (!*v3)
      {
        switch(a2)
        {
          case -1:
            unlockRoot(v3);
            goto LABEL_13;
          case 0:
            if (v3[112] != v3[113])
            {
              goto LABEL_13;
            }

LABEL_10:
            updateRootLockOptions(a1, (a2 == 0) | (2 * (a2 == 1)) | (4 * (a3 != 0)));
LABEL_13:
            FigReadWriteLockUnlockForWrite();
            return result;
          case 1:
            if (v3[112])
            {
              goto LABEL_13;
            }

            goto LABEL_10;
        }
      }

      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double persistentStore_GetAndRetainStreamInfoForStreamID(uint64_t a1, const void *a2, const __CFDictionary *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v27 = 0;
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (FigReadWriteLockLockForWrite())
    {
LABEL_17:
      OUTLINED_FUNCTION_843();
      return result;
    }

    if (!*v10)
    {
      v16 = *(v10 + 56);
      if (!v16)
      {
        goto LABEL_15;
      }

      if (a4 && a2)
      {
        Value = CFDictionaryGetValue(v16, a2);
        if (Value)
        {
          v18 = CFDictionaryGetValue(Value, @"StreamInformationRef");
          v27 = v18;
          if (v18)
          {
            CFRetain(v18);
LABEL_14:
            *a4 = v27;
            goto LABEL_15;
          }

          if (persistentStore_CreateStreamOptions(v10, &cf, a3))
          {
            goto LABEL_15;
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          if (FigHLSPersistentStreamInfoCreate(AllocatorForMedia, a2, a1, *(v10 + 8), cf, &v27))
          {
            goto LABEL_15;
          }

          v20 = v27;
          v21 = CFDictionaryGetValue(*(v10 + 56), a2);
          if (v21)
          {
            CFDictionarySetValue(v21, @"StreamInformationRef", v20);
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v27, v28);
          if (!v25)
          {
            goto LABEL_14;
          }
        }

        else
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

LABEL_15:
        FigReadWriteLockUnlockForWrite();
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_843();

  return FigSignalErrorAtGM(v23, a9, a10);
}

double persistentStore_SetMasterPlaylist(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFDictionaryRef theDict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_12_60();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theDict = 0;
  v35 = FigCFEqual();
  v36 = FigCFEqual();
  if (DerivedStorage && v25 && v29)
  {
    v37 = v36;
    if (!FigReadWriteLockLockForWrite())
    {
      if (!*DerivedStorage)
      {
        OUTLINED_FUNCTION_2_85();
        if (v38)
        {
          if (v31 && v35 | v37)
          {
            copyDataIDDictionaryFilteredByCategoryIndexedByAccessKeyWork(DerivedStorage, @"Playlist", @"DataItemDescriptorRole", &theDict);
            v39 = theDict;
            if (theDict)
            {
              if ((Value = CFDictionaryGetValue(theDict, @"Master"), v35) && Value && removeDataItem(v33, Value) || (v41 = CFDictionaryGetValue(v39, @"AvailableOfflineMaster")) != 0 && removeDataItem(v33, v41))
              {
                FigReadWriteLockUnlockForWrite();
                v45 = 0;
LABEL_21:
                CFRelease(v39);
LABEL_22:
                if (v45)
                {
                  CFRelease(v45);
                }

                goto LABEL_24;
              }
            }

            v42 = v25;
            AllocatorForMedia = FigGetAllocatorForMedia();
            Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v45 = Mutable;
            if (v27)
            {
              CFDictionarySetValue(Mutable, @"DataItemDescriptorPropertyListDescriptor", v27);
              if (!v35)
              {
LABEL_18:
                if (!v37)
                {
                  goto LABEL_20;
                }

                goto LABEL_19;
              }
            }

            else if (!v35)
            {
              goto LABEL_18;
            }

            CFDictionarySetValue(v45, @"DataItemDescriptorRole", @"Master");
            if (!v37)
            {
LABEL_20:
              CFDictionarySetValue(v45, @"DataItemDescriptorCategory", @"Playlist");
              CFDictionarySetValue(v45, @"DataItemDescriptorName", v29);
              CFDictionarySetValue(v45, @"DataItemDescriptorPlaylistType", v31);
              setDataItemWork(v33, v42, v45);
              FigReadWriteLockUnlockForWrite();
              if (!v39)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }

LABEL_19:
            CFDictionarySetValue(v45, @"DataItemDescriptorRole", @"AvailableOfflineMaster");
            goto LABEL_20;
          }
        }
      }

      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      FigReadWriteLockUnlockForWrite();
    }

LABEL_24:
    OUTLINED_FUNCTION_90_4();
    return result;
  }

  OUTLINED_FUNCTION_429();
  OUTLINED_FUNCTION_90_4();

  return FigSignalErrorAtGM(v47);
}

double persistentStore_SetStreamComplete(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (FigReadWriteLockLockForWrite())
    {
      goto LABEL_25;
    }

    if (*v3 || (OUTLINED_FUNCTION_2_85(), !v8) || (Value = CFDictionaryGetValue(*(v3 + 56), a2)) == 0 || (v10 = Value, AllocatorForMedia = FigGetAllocatorForMedia(), (MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, v10)) == 0))
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      FigReadWriteLockUnlockForWrite();
      goto LABEL_25;
    }

    v13 = MutableCopy;
    v14 = MEMORY[0x1E695E4D0];
    if (a3 != 1)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(MutableCopy, @"StreamInformationComplete", *v14);
    CFDictionarySetValue(*(v3 + 56), a2, v13);
    StreamNode = xmlFindStreamNode(*(v3 + 48), a2);
    if (!StreamNode)
    {
      OUTLINED_FUNCTION_111();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, cf, v28);
      if (v25)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v16 = StreamNode;
    Child = FigXMLNodeGetChild(StreamNode, @"Complete");
    if (Child)
    {
      v18 = CFRetain(Child);
      cf = v18;
      if (v18)
      {
LABEL_16:
        if (a3 == 1)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v20 = FigXMLNodeContentSetCFString(v18, v21);
        v18 = cf;
LABEL_20:
        if (v18)
        {
          CFRelease(v18);
        }

        if (v20)
        {
          goto LABEL_24;
        }

LABEL_23:
        writeBoot(a1);
LABEL_24:
        FigReadWriteLockUnlockForWrite();
        CFRelease(v13);
LABEL_25:
        OUTLINED_FUNCTION_843();
        return result;
      }
    }

    else
    {
      cf = 0;
    }

    v19 = FigGetAllocatorForMedia();
    v20 = FigXMLNodeCreateChildNode(v19, v16, @"Complete", &cf);
    v18 = cf;
    if (v20)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_843();

  return FigSignalErrorAtGM(v23);
}

double persistentStore_RemoveStreamInfoForStreamID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (!FigReadWriteLockLockForWrite())
    {
      if (*v2)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_2_85();
      if (!v7)
      {
        goto LABEL_23;
      }

      Value = CFDictionaryGetValue(*(v2 + 56), a2);
      if (!Value)
      {
        goto LABEL_23;
      }

      v9 = Value;
      if (CFDictionaryGetValue(Value, @"StreamInformationRef"))
      {
        FigHLSPersistentStreamInfoGetFigBaseObject();
        if (v10)
        {
          v11 = v10;
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v12)
          {
            v12(v11);
          }
        }
      }

      if (xmlRemoveStream(*(v2 + 48), a2) || writeBoot(a1))
      {
        goto LABEL_16;
      }

      if (CFDictionaryGetValue(v9, @"StreamInformationURL"))
      {
        v13 = FigFileDeleteRecursive();
        if (v13)
        {
          if (v13 == -17913)
          {
            OUTLINED_FUNCTION_303();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
            FigBytePumpGetFigBaseObject();
          }
        }

        else
        {
          CFDictionaryRemoveValue(*(v2 + 56), a2);
        }
      }

      else
      {
LABEL_23:
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

LABEL_16:
      FigReadWriteLockUnlockForWrite();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t persistentStore_AddStreamInfo(uint64_t a1, const __CFDictionary *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  v33 = 0;
  if (!DerivedStorage)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_3_130(DerivedStorage);
  v8 = FigReadWriteLockLockForWrite();
  if (v8)
  {
LABEL_57:
    v26 = v8;
    goto LABEL_42;
  }

  if (*v3)
  {
    goto LABEL_60;
  }

  if (!*(v3 + 56))
  {
    v26 = 0;
LABEL_61:
    FigReadWriteLockUnlockForWrite();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_2_85();
  if (!v10 || CFDictionaryContainsKey(v9, a3))
  {
LABEL_60:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v26 = v30;
    goto LABEL_61;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v12 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(v3 + 8), a3, 1u);
  if (FigCFURLDoesDirectoryExist())
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
  }

  else
  {
    DirectoryAtURL = makeDirectoryAtURL(v12);
    if (!DirectoryAtURL)
    {
      if (a2)
      {
        Value = CFDictionaryGetValue(a2, @"StreamInfoNetworkURL");
        a2 = CFDictionaryGetValue(a2, @"StreamInfoUniqueTag");
      }

      else
      {
        Value = 0;
      }

      v15 = *(v3 + 48);
      v34 = 0;
      v35 = 0;
      StreamList = xmlGetStreamList(v15);
      if (StreamList)
      {
        cf = CFRetain(StreamList);
        if (cf)
        {
          goto LABEL_20;
        }
      }

      else
      {
        cf = 0;
      }

      FigXMLNodeGetTag(v15);
      v17 = FigCFEqual();
      if (!v15 || !v17)
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
        goto LABEL_29;
      }

      v18 = FigGetAllocatorForMedia();
      v19 = FigXMLNodeCreateChildNode(v18, v15, @"Streams", &cf);
      if (v19)
      {
        goto LABEL_29;
      }

LABEL_20:
      v20 = FigGetAllocatorForMedia();
      v19 = FigXMLNodeCreateChildNode(v20, cf, @"Stream", &v35);
      if (!v19)
      {
        v19 = FigXMLNodeAttributeSetCFString(v35, @"ID", a3);
        if (!v19)
        {
          v19 = FigXMLNodeAttributeSetCFString(v35, @"Path", a3);
          if (!v19)
          {
            if (!Value || (v19 = FigXMLNodeAttributeSetCFString(v35, @"NetworkURL", Value), !v19))
            {
              if (!a2 || (v19 = FigXMLNodeAttributeSetCFString(v35, @"UniqueTag", a2), !v19))
              {
                v21 = FigGetAllocatorForMedia();
                v19 = FigXMLNodeCreateChildNode(v21, v35, @"Complete", &v34);
                if (!v19)
                {
                  v19 = FigXMLNodeContentSetCFString(v34, @"NO");
                }
              }
            }
          }
        }
      }

LABEL_29:
      v22 = v19;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (!v22)
      {
        StreamOptions = writeBoot(a1);
        if (StreamOptions || (StreamOptions = persistentStore_CreateStreamOptions(v3, &v32, 0), StreamOptions) || (v24 = FigGetAllocatorForMedia(), StreamOptions = FigHLSPersistentStreamInfoCreate(v24, a3, a1, *(v3 + 8), v32, &v33), StreamOptions))
        {
          v22 = StreamOptions;
        }

        else
        {
          v25 = addStreamToStreamList(v3, a3, v12, Value, a2, 0, v33);
          v26 = 0;
          if (!v25)
          {
            goto LABEL_40;
          }

          v22 = v25;
          if (v33)
          {
            CFRelease(v33);
            v33 = 0;
          }
        }

        if (xmlRemoveStream(*(v3 + 48), a3))
        {
          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
        }

        if (writeBoot(a1))
        {
          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
        }
      }

      v28 = FigFileDeleteRecursive();
      if (v28)
      {
        v29 = v28;
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
        if (v29 == -17913)
        {
          FigBytePumpGetFigBaseObject();
        }
      }

      v26 = v22;
      goto LABEL_40;
    }
  }

  v26 = DirectoryAtURL;
LABEL_40:
  FigReadWriteLockUnlockForWrite();
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_42:
  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return v26;
}

double persistentStore_SetDataItem(uint64_t a1, OpaqueCMBlockBuffer *a2, const __CFDictionary *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a3 && a2 && a4)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (!FigReadWriteLockLockForWrite())
    {
      if (!*v4 && (OUTLINED_FUNCTION_2_85(), v11))
      {
        setDataItemWork(a1, a2, a3);
      }

      else
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      FigReadWriteLockUnlockForWrite();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double persistentStore_RemoveDataItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (!FigReadWriteLockLockForWrite())
    {
      if (!*v2 && (OUTLINED_FUNCTION_2_85(), v7))
      {
        removeDataItem(a1, a2);
      }

      else
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      FigReadWriteLockUnlockForWrite();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double persistentStore_AddInterstitialAssetList(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_12_60();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && v26)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (FigReadWriteLockLockForWrite())
    {
      goto LABEL_28;
    }

    if (*v22 || (OUTLINED_FUNCTION_2_85(), !v32))
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      FigReadWriteLockUnlockForWrite();
LABEL_28:
      OUTLINED_FUNCTION_90_4();
      return result;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v34 = CFUUIDCreate(AllocatorForMedia);
    v35 = FigGetAllocatorForMedia();
    v36 = CFUUIDCreateString(v35, v34);
    if (!*(v22 + 200))
    {
      v37 = FigGetAllocatorForMedia();
      *(v22 + 200) = CFURLCreateCopyAppendingPathComponent(v37, *(v22 + 8), @"InterstitialAssets", 1u);
    }

    if (!FigCFURLDoesDirectoryExist() && makeDirectoryAtURL(*(v22 + 200)))
    {
      v41 = 0;
      v39 = 0;
LABEL_20:
      FigReadWriteLockUnlockForWrite();
      if (v34)
      {
        CFRelease(v34);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      if (v41)
      {
        CFRelease(v41);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      goto LABEL_28;
    }

    v38 = FigGetAllocatorForMedia();
    v39 = CFStringCreateWithFormat(v38, 0, @"%@.json");
    v40 = FigGetAllocatorForMedia();
    v41 = CFURLCreateCopyAppendingPathComponent(v40, *(v22 + 200), v39, 0);
    FigGetAllocatorForMedia();
    v42 = CMByteStreamCreateForFileURL();
    if (!v42)
    {
      CMBlockBufferGetDataLength(v28);
      v42 = CMByteStreamWriteBlockBuffer();
      if (!v42)
      {
        v43 = *(CMBaseObjectGetVTable() + 16);
        if (*v43 < 2uLL || (v44 = v43[5]) == 0)
        {
          v45 = -12782;
          goto LABEL_17;
        }

        v42 = v44(0, 1);
      }
    }

    v45 = v42;
LABEL_17:
    if (!v45)
    {
      addInterstitialAssetWork(v30, v26, v39, v41, 1);
      if (!v46)
      {
        *v24 = v36;
        v36 = 0;
      }
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_90_4();

  return FigSignalErrorAtGM(v48);
}

double persistentStore_CopyInterstitialAssets(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (!FigReadWriteLockLockForRead())
    {
      if (*v2)
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
      }

      else
      {
        v6 = *(v2 + 208);
        if (v6)
        {
          v6 = CFRetain(v6);
        }

        *a2 = v6;
      }

      FigReadWriteLockUnlockForRead();
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double persistentStore_CopyInterstitialAssetLists(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2)
  {
    OUTLINED_FUNCTION_3_130(DerivedStorage);
    if (!FigReadWriteLockLockForRead())
    {
      if (*v2)
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
      }

      else
      {
        v6 = *(v2 + 216);
        if (v6)
        {
          v6 = CFRetain(v6);
        }

        *a2 = v6;
      }

      FigReadWriteLockUnlockForRead();
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t updateRootLockOptions(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = lockRoot(DerivedStorage, a2);
  if (v5)
  {
    return v5;
  }

  BootFromFile = loadBootFromFile(a1);
  if (BootFromFile)
  {
    unlockRoot(DerivedStorage);
  }

  return BootFromFile;
}

double persistentStore_ensureMemoryPool(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = FigGetAllocatorForMedia();
      v6 = CFStringCreateWithFormat(v5, 0, @"[FigHLSPersistentStore %p]", a1);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(v4, *MEMORY[0x1E69628C8], v6);
        v8 = CMMemoryPoolCreate(v4);
        *(a1 + 192) = v8;
        if (!v8)
        {
          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
        }

        CFRelease(v4);
        v9 = v7;
      }

      else
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
        v9 = v4;
      }

      CFRelease(v9);
    }

    else
    {
      OUTLINED_FUNCTION_303();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void copyDataIDDictionaryFilteredByCategoryIndexedByAccessKeyWork(uint64_t a1, __CFString *a2, uint64_t a3, CFTypeRef *a4)
{
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = @"Default";
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Value = CFDictionaryGetValue(*(a1 + 96), v7);
  if (Value)
  {
    v11 = Mutable;
    v12 = a3;
    CFDictionaryApplyFunction(Value, retrieveDataIDsForKey, &v11);
  }

  if (Mutable)
  {
    *a4 = CFRetain(Mutable);
    CFRelease(Mutable);
  }

  else
  {
    *a4 = 0;
  }
}

double setDataItemWork(uint64_t a1, OpaqueCMBlockBuffer *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  cf = 0;
  v8 = CFDictionaryGetValue(a3, @"DataItemDescriptorCategory");
  if (v8)
  {
    v9 = v8;
    v10 = CFDictionaryGetValue(a3, @"DataItemDescriptorName");
    if (v10)
    {
      v11 = v10;
      if (!*(DerivedStorage + 32))
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        *(DerivedStorage + 32) = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 8), @"Data", 1u);
      }

      if (!FigCFURLDoesDirectoryExist() && makeDirectoryAtURL(*(DerivedStorage + 32)))
      {
        return result;
      }

      v13 = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v78 = a1;
      if (CFDictionaryGetValueIfPresent(a3, @"DataItemDescriptorID", &value))
      {
        if (removeDataItem(a1, value))
        {
          if (!Mutable)
          {
            return result;
          }

          goto LABEL_102;
        }

        v79 = 0;
        v80 = 0;
        v16 = value;
      }

      else
      {
        v17 = FigGetAllocatorForMedia();
        v18 = CFUUIDCreate(v17);
        v19 = FigGetAllocatorForMedia();
        v79 = v18;
        v16 = CFUUIDCreateString(v19, v18);
        v80 = v16;
      }

      CFDictionarySetValue(Mutable, @"DataItemDescriptorID", v16);
      CFDictionarySetValue(Mutable, @"DataItemDescriptorCategory", v9);
      CFDictionarySetValue(Mutable, @"DataItemDescriptorName", v11);
      v20 = CFDictionaryGetValue(a3, @"DataItemDescriptorPropertyListDescriptor");
      v21 = CFDictionaryGetValue(a3, @"DataItemDescriptorRole");
      if (v21)
      {
        CFDictionarySetValue(Mutable, @"DataItemDescriptorRole", v21);
      }

      v22 = CFDictionaryGetValue(a3, @"DataItemDescriptorNetworkURL");
      if (v22)
      {
        CFDictionarySetValue(Mutable, @"DataItemDescriptorNetworkURL", v22);
      }

      v23 = v80;
      if (!CFDictionaryGetValueIfPresent(*(DerivedStorage + 96), v9, &cf))
      {
        v24 = FigGetAllocatorForMedia();
        cf = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(*(DerivedStorage + 96), v9, cf);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (!v20)
      {
        goto LABEL_33;
      }

      v25 = *(DerivedStorage + 32);
      error[0] = 0;
      v26 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorName");
      v27 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorCategory");
      v28 = FigGetAllocatorForMedia();
      v29 = CFStringCreateWithFormat(v28, 0, @"%@-%@-%@.%@", v27, v26, v80, @"descriptor", v3, v78);
      v30 = FigGetAllocatorForMedia();
      v31 = CFURLCreateCopyAppendingPathComponent(v30, v25, v29, 0);
      CFDictionarySetValue(Mutable, @"DataItemDescriptorURL", v31);
      CFDictionarySetValue(Mutable, @"DataItemDescriptorFileName", v29);
      v32 = FigGetAllocatorForMedia();
      v33 = CFWriteStreamCreateWithFile(v32, v31);
      v34 = v33;
      if (v33 && CFWriteStreamOpen(v33) == 1)
      {
        CFPropertyListWrite(v20, v34, kCFPropertyListXMLFormat_v1_0, 0, error);
        v35 = reportIfError(error[0]);
        if (error[0])
        {
          CFRelease(error[0]);
          error[0] = 0;
        }

        if (!v35)
        {
          CFWriteStreamClose(v34);
        }

        if (v29)
        {
          goto LABEL_25;
        }
      }

      else
      {
        OUTLINED_FUNCTION_43_1();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        v35 = v73;
        if (v29)
        {
LABEL_25:
          CFRelease(v29);
        }
      }

      if (v31)
      {
        CFRelease(v31);
      }

      if (error[0])
      {
        CFRelease(error[0]);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (v35)
      {
        goto LABEL_97;
      }

LABEL_33:
      v36 = *(DerivedStorage + 32);
      error[0] = 0;
      v37 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorName");
      v38 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorCategory");
      v39 = FigCFEqual();
      v40 = FigGetAllocatorForMedia();
      if (v39)
      {
        v41 = CFStringCreateWithFormat(v40, 0, @"%@-%@-%@", v38, v80, v37, v77);
      }

      else
      {
        v41 = CFStringCreateWithFormat(v40, 0, @"%@-%@-%@.%@", v38, v80, v37, @"data");
      }

      v42 = v41;
      v43 = FigGetAllocatorForMedia();
      v44 = CFURLCreateCopyAppendingPathComponent(v43, v36, v42, 0);
      CFDictionarySetValue(Mutable, @"DataItemURL", v44);
      CFDictionarySetValue(Mutable, @"DataItemFileName", v42);
      FigGetAllocatorForMedia();
      v45 = CMByteStreamCreateForFileURL();
      if (!v45)
      {
        CMBlockBufferGetDataLength(a2);
        v45 = CMByteStreamWriteBlockBuffer();
        if (!v45)
        {
          v46 = error[0];
          v47 = *(CMBaseObjectGetVTable() + 16);
          if (*v47 < 2uLL || (v48 = v47[5]) == 0)
          {
            v49 = -12782;
LABEL_43:
            if (error[0])
            {
              CFRelease(error[0]);
            }

            if (v42)
            {
              CFRelease(v42);
            }

            if (v44)
            {
              CFRelease(v44);
            }

            if (!v49)
            {
              CFDictionarySetValue(cf, v80, Mutable);
              CFDictionarySetValue(*(DerivedStorage + 88), v80, Mutable);
              v50 = *(DerivedStorage + 48);
              v90 = 0;
              error[0] = 0;
              v89 = 0;
              v87 = 0;
              v88 = 0;
              v85 = 0;
              v86 = 0;
              v83 = 0;
              v84 = 0;
              FigXMLNodeGetTag(v50);
              v51 = FigCFEqual();
              v52 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorRole");
              v53 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorCategory");
              v54 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorID");
              v55 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorName");
              v56 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorNetworkURL");
              v57 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorFileName");
              v58 = CFDictionaryGetValue(Mutable, @"DataItemFileName");
              if (!v50 || !v51)
              {
                OUTLINED_FUNCTION_43_1();
                result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, v75, v76);
                goto LABEL_110;
              }

              v59 = v58;
              Child = FigXMLNodeGetChild(v50, @"DataItems");
              if (Child)
              {
                error[0] = CFRetain(Child);
                if (error[0])
                {
LABEL_58:
                  v63 = FigGetAllocatorForMedia();
                  ChildNode = FigXMLNodeCreateChildNode(v63, error[0], @"DataItem", &v90);
                  if (!ChildNode)
                  {
                    v64 = FigGetAllocatorForMedia();
                    ChildNode = FigXMLNodeCreateChildNode(v64, v90, @"ID", &v89);
                    if (!ChildNode)
                    {
                      ChildNode = FigXMLNodeContentSetCFString(v89, v54);
                      if (!ChildNode)
                      {
                        v65 = FigGetAllocatorForMedia();
                        ChildNode = FigXMLNodeCreateChildNode(v65, v90, @"Category", &v88);
                        if (!ChildNode)
                        {
                          ChildNode = FigXMLNodeContentSetCFString(v88, v53);
                          if (!ChildNode)
                          {
                            v66 = FigGetAllocatorForMedia();
                            ChildNode = FigXMLNodeCreateChildNode(v66, v90, @"Name", &v87);
                            if (!ChildNode)
                            {
                              ChildNode = FigXMLNodeContentSetCFString(v87, v55);
                              if (!ChildNode)
                              {
                                if (!v56 || (v67 = FigGetAllocatorForMedia(), (ChildNode = FigXMLNodeCreateChildNode(v67, v90, @"kDataItemNetworkURL", &v86)) == 0) && (ChildNode = FigXMLNodeContentSetCFString(v86, v56)) == 0)
                                {
                                  v23 = v80;
                                  if (!v57 || (v68 = FigGetAllocatorForMedia(), (v69 = FigXMLNodeCreateChildNode(v68, v90, @"DescriptorPath", &v85)) == 0) && (v69 = FigXMLNodeContentSetCFString(v85, v57)) == 0)
                                  {
                                    v70 = FigGetAllocatorForMedia();
                                    v69 = FigXMLNodeCreateChildNode(v70, v90, @"DataPath", &v84);
                                    if (!v69)
                                    {
                                      v71 = FigXMLNodeContentSetCFString(v84, v59);
                                      if (v71 || !v52)
                                      {
                                        goto LABEL_77;
                                      }

                                      v72 = FigGetAllocatorForMedia();
                                      v69 = FigXMLNodeCreateChildNode(v72, v90, @"Role", &v83);
                                      if (!v69)
                                      {
                                        v69 = FigXMLNodeContentSetCFString(v83, v52);
                                      }
                                    }
                                  }

                                  v71 = v69;
LABEL_77:
                                  if (v90)
                                  {
                                    CFRelease(v90);
                                  }

                                  if (error[0])
                                  {
                                    CFRelease(error[0]);
                                  }

                                  if (v89)
                                  {
                                    CFRelease(v89);
                                  }

                                  if (v86)
                                  {
                                    CFRelease(v86);
                                  }

                                  if (v84)
                                  {
                                    CFRelease(v84);
                                  }

                                  if (v83)
                                  {
                                    CFRelease(v83);
                                  }

                                  if (v87)
                                  {
                                    CFRelease(v87);
                                  }

                                  if (v88)
                                  {
                                    CFRelease(v88);
                                  }

                                  if (v85)
                                  {
                                    CFRelease(v85);
                                  }

                                  if (!v71)
                                  {
                                    writeBoot(v78);
                                  }

                                  goto LABEL_97;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_110:
                  v71 = ChildNode;
                  v23 = v80;
                  goto LABEL_77;
                }
              }

              else
              {
                error[0] = 0;
              }

              v61 = FigGetAllocatorForMedia();
              ChildNode = FigXMLNodeCreateChildNode(v61, v50, @"DataItems", error);
              if (ChildNode)
              {
                goto LABEL_110;
              }

              ChildNode = FigXMLNodeAttributeSetCFString(error[0], @"Directory", @"Data");
              if (ChildNode)
              {
                goto LABEL_110;
              }

              goto LABEL_58;
            }

LABEL_97:
            if (v79)
            {
              CFRelease(v79);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            if (!Mutable)
            {
              return result;
            }

LABEL_102:
            CFRelease(Mutable);
            return result;
          }

          v45 = v48(v46, 1);
        }
      }

      v49 = v45;
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t makeDirectoryAtURL(uint64_t a1)
{
  result = FigCFURLCreateDirectory();
  if (!result)
  {
    LODWORD(result) = FigDirectoryEnableDirStatsTracking();
    if (result == -17916)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

CFIndex copyDataItemWork(uint64_t a1, const void *a2, __CFDictionary **a3, CMBlockBufferRef *a4)
{
  cf = 0;
  error = 0;
  v44 = 0;
  valuePtr = 0;
  dataPointerOut = 0;
  number = 0;
  totalLengthOut = 0;
  theBuffer = 0;
  lengthAtOffsetOut = 0;
  Value = CFDictionaryGetValue(*(a1 + 88), a2);
  if (!Value)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, lengthAtOffsetOut, totalLengthOut);
    v21 = v35;
    FigBytePumpGetFigBaseObject();
    Mutable = 0;
    v17 = 0;
    goto LABEL_46;
  }

  v8 = Value;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = CFDictionaryGetValue(v8, @"DataItemDescriptorRole");
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorRole", v11);
  }

  v12 = CFDictionaryGetValue(v8, @"DataItemDescriptorCacheHeader");
  if (v12)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorCacheHeader", v12);
  }

  v13 = CFDictionaryGetValue(v8, @"DataItemDescriptorUniqueTag");
  if (v13)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorUniqueTag", v13);
  }

  v14 = CFDictionaryGetValue(v8, @"DataItemDescriptorCategory");
  if (v14)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorCategory", v14);
  }

  v15 = CFDictionaryGetValue(v8, @"DataItemDescriptorCacheHeader");
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorCacheHeader", v15);
  }

  v16 = CFDictionaryGetValue(v8, @"DataItemDescriptorName");
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"DataItemDescriptorName", v16);
  }

  if (!a3)
  {
    v17 = 0;
LABEL_27:
    v23 = 0;
    if (!a4)
    {
LABEL_25:
      v24 = CFDictionaryGetValue(v8, @"DataItemFileName");
      CFDictionarySetValue(Mutable, @"DataItemFileName", v24);
LABEL_40:
      theBuffer = 0;
      v21 = 0;
      if (a3)
      {
        *a3 = Mutable;
      }

      Mutable = 0;
      goto LABEL_44;
    }

LABEL_28:
    if (!CFDictionaryGetValue(v8, @"DataItemURL"))
    {
LABEL_39:
      v33 = CFDictionaryGetValue(v8, @"DataItemFileName");
      CFDictionarySetValue(Mutable, @"DataItemFileName", v33);
      *a4 = theBuffer;
      goto LABEL_40;
    }

    FigGetAllocatorForMedia();
    BlockBuffer = CMByteStreamCreateForFileURL();
    if (BlockBuffer)
    {
      goto LABEL_62;
    }

    v26 = FigGetAllocatorForMedia();
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      BlockBuffer = v28(CMBaseObject, *MEMORY[0x1E695FF78], v26, &number);
      if (BlockBuffer)
      {
        goto LABEL_62;
      }

      CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
      persistentStore_ensureMemoryPool(a1);
      if (BlockBuffer)
      {
        goto LABEL_62;
      }

      BlockBuffer = FigMemoryPoolCreateBlockBuffer();
      if (BlockBuffer)
      {
        goto LABEL_62;
      }

      BlockBuffer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
      if (BlockBuffer)
      {
        goto LABEL_62;
      }

      if (lengthAtOffsetOut != totalLengthOut)
      {
        OUTLINED_FUNCTION_111();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, lengthAtOffsetOut, totalLengthOut);
        goto LABEL_62;
      }

      v30 = valuePtr;
      v29 = cf;
      v31 = dataPointerOut;
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v32)
      {
        BlockBuffer = v32(v29, v30, 0, v31, &v44);
        if (!BlockBuffer)
        {
          if (v44 == valuePtr)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_111();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, lengthAtOffsetOut, totalLengthOut);
          v21 = v37;
          FigBytePumpGetFigBaseObject();
LABEL_44:
          if (v23)
          {
            CFRelease(v23);
          }

          goto LABEL_46;
        }

LABEL_62:
        v21 = BlockBuffer;
        goto LABEL_44;
      }
    }

    v21 = 4294954514;
    goto LABEL_44;
  }

  v17 = CFDictionaryGetValue(v8, @"DataItemDescriptorURL");
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = FigGetAllocatorForMedia();
  v19 = CFReadStreamCreateWithFile(v18, v17);
  v17 = v19;
  if (!v19)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, lengthAtOffsetOut, totalLengthOut);
    v21 = v36;
    goto LABEL_46;
  }

  if (CFReadStreamOpen(v19))
  {
    goto LABEL_21;
  }

  v20 = CFReadStreamCopyError(v17);
  v21 = reportIfError(v20);
  if (v20)
  {
    CFRelease(v20);
  }

  if (!v21)
  {
LABEL_21:
    v22 = FigGetAllocatorForMedia();
    v23 = CFPropertyListCreateWithStream(v22, v17, 0, 0, 0, &error);
    CFReadStreamClose(v17);
    v21 = reportIfError(error);
    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    if (v21)
    {
      goto LABEL_44;
    }

    CFDictionarySetValue(Mutable, @"DataItemDescriptorPropertyListDescriptor", v23);
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

LABEL_46:
  if (error)
  {
    CFRelease(error);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v21;
}

double addInterstitialAssetWork(uint64_t a1, const void *a2, const void *a3, __CFDictionary *a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a3)
  {
    v12 = DerivedStorage;
    if (primeInterstitialAssetFolder(a1))
    {
      return result;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v16 = Mutable;
      if (a5)
      {
        if (CFDictionaryContainsKey(*(v12 + 216), a2))
        {
          goto LABEL_55;
        }

        CFDictionarySetValue(v16, @"InterstitialAssetListFileName", a3);
        CFDictionarySetValue(v16, @"InterstitialAssetListNetworkURL", a2);
        OUTLINED_FUNCTION_13_46();
        v17 = FigCFEqual();
        if (v5 && v17)
        {
          Value = CFDictionaryGetValue(v16, @"InterstitialAssetListNetworkURL");
          v19 = CFDictionaryGetValue(v16, @"InterstitialAssetListFileName");
          Child = FigXMLNodeGetChild(v5, @"InterstitialAssets");
          if (Child)
          {
            cf = CFRetain(Child);
            if (cf)
            {
              goto LABEL_21;
            }
          }

          else
          {
            cf = 0;
          }

          v23 = FigGetAllocatorForMedia();
          v24 = FigXMLNodeCreateChildNode(v23, v5, @"InterstitialAssets", &cf);
          if (!v24)
          {
            v24 = FigXMLNodeAttributeSetCFString(cf, @"Directory", @"InterstitialAssets");
            if (!v24)
            {
LABEL_21:
              v25 = FigGetAllocatorForMedia();
              v24 = FigXMLNodeCreateChildNode(v25, cf, @"InterstitialAssetList", &v40);
              if (!v24)
              {
                v26 = FigGetAllocatorForMedia();
                v24 = FigXMLNodeCreateChildNode(v26, v40, @"NetworkURL", &v39);
                if (!v24)
                {
                  v27 = FigGetAllocatorForMedia();
                  v24 = FigXMLNodeCreateChildNode(v27, v40, @"PathToLocalCopy", &v38);
                  if (!v24)
                  {
                    v24 = FigXMLNodeContentSetCFString(v39, Value);
                    if (!v24)
                    {
                      v24 = FigXMLNodeContentSetCFString(v38, v19);
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_39_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
        }

        v28 = v24;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v40)
        {
          CFRelease(v40);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (v28)
        {
          goto LABEL_55;
        }

        v29 = *(v12 + 216);
        v30 = a2;
        v31 = v16;
        goto LABEL_54;
      }

      if (CFDictionaryContainsKey(*(v12 + 208), a2))
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_13_46();
      v21 = FigCFEqual();
      if (v5 && v21)
      {
        v22 = FigXMLNodeGetChild(v5, @"InterstitialAssets");
        if (v22)
        {
          cf = CFRetain(v22);
          if (cf)
          {
            goto LABEL_39;
          }
        }

        else
        {
          cf = 0;
        }

        v32 = FigGetAllocatorForMedia();
        v33 = FigXMLNodeCreateChildNode(v32, v5, @"InterstitialAssets", &cf);
        if (!v33)
        {
          v33 = FigXMLNodeAttributeSetCFString(cf, @"Directory", @"InterstitialAssets");
          if (!v33)
          {
LABEL_39:
            v34 = FigGetAllocatorForMedia();
            v33 = FigXMLNodeCreateChildNode(v34, cf, @"InterstitialAsset", &v40);
            if (!v33)
            {
              v35 = FigGetAllocatorForMedia();
              v33 = FigXMLNodeCreateChildNode(v35, v40, @"NetworkURL", &v38);
              if (!v33)
              {
                v36 = FigGetAllocatorForMedia();
                v33 = FigXMLNodeCreateChildNode(v36, v40, @"PathToLocalCopy", &v39);
                if (!v33)
                {
                  v33 = FigXMLNodeContentSetCFString(v38, a2);
                  if (!v33)
                  {
                    v33 = FigXMLNodeContentSetCFString(v39, a3);
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_39_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
      }

      v37 = v33;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v40)
      {
        CFRelease(v40);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if (v38)
      {
        CFRelease(v38);
      }

      if (v37)
      {
        goto LABEL_55;
      }

      v29 = *(v12 + 208);
      v30 = a2;
      v31 = a4;
LABEL_54:
      CFDictionarySetValue(v29, v30, v31);
      writeBoot(a1);
LABEL_55:
      CFRelease(v16);
      return result;
    }
  }

  OUTLINED_FUNCTION_39_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

const void *FigHLSPersistentStoreCreateAtURL_cold_4(const __CFDictionary *a1, uint64_t a2)
{
  result = CFDictionaryGetValue(a1, @"HLSStoreClientBundleIdentifier");
  if (result)
  {
    result = CFRetain(result);
  }

  *(a2 + 152) = result;
  return result;
}

void FigHLSPersistentStoreCreateAtURL_cold_7(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
  FigBytePumpGetFigBaseObject();
}

void FigHLSPersistentStoreCreateAtURL_cold_17(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
  FigBytePumpGetFigBaseObject();
}

BOOL loadBootFromFile_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void removeDataItem_cold_1(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;

  FigBytePumpGetFigBaseObject();
}

void FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_179();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

BOOL FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_2(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  v5 = v4;
  *a2 = v4;
  CFRelease(a1);
  return v5 == 0;
}

void FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_179();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_179();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_179();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void _FigHTTPRequestSessionCreateForNSURLSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _FigHTTPRequestSessionCreateForNSURLSession_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _FigHTTPRequestSessionCreateForNSURLSession_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _FigHTTPRequestSessionCreateForNSURLSession_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void _FigHTTPRequestSessionCreateForNSURLSession_cold_7(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void _FigHTTPRequestSessionCreateForNSURLSession_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figHTTPRequestSessionNSCreateHTTPRequest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigVideoQueueRemoteServer_Destroy(uint64_t a1)
{
  v1 = FigRPCLookupClientConnection();
  if (v1)
  {
    return v1;
  }

  v2 = FigRPCGetConnectionInfo();
  if (!v2)
  {
    FigRPCDisposeClientConnection();
  }

  return v2;
}

uint64_t FigVideoQueueRemoteServer_Create(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5, uint64_t a6, unsigned int a7, _DWORD *a8, void *a9, uint64_t *a10, _DWORD *a11, _OWORD *a12)
{
  v101 = *MEMORY[0x1E69E9840];
  v88 = 0;
  v18 = a12[1];
  *handler.val = *a12;
  *&handler.val[4] = v18;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  v86 = 0;
  v87 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  v20 = *MEMORY[0x1E695E480];
  if (a7)
  {
    v21 = MEMORY[0x19A8D2B00](a6, a7, *MEMORY[0x1E695E480], &v86);
    if (v21)
    {
LABEL_85:
      v55 = v21;
      v73 = 0;
      goto LABEL_72;
    }

    v22 = v86;
  }

  else
  {
    v22 = 0;
  }

  v21 = FigVideoQueueCreateLocalWithOptions(v20, v22, &v88);
  if (v21)
  {
    goto LABEL_85;
  }

  v83 = a4;
  if (a5)
  {
    v23 = CFStringCreateWithCString(v20, a5, 0x8000100u);
  }

  else
  {
    v23 = 0;
  }

  v84 = v23;
  FigProcessInfoCreateWithDetails();
  v25 = v87;
  v24 = v88;
  v26 = a12[1];
  v94 = *a12;
  v95 = v26;
  v90 = 0;
  cf = 0;
  SInt32 = FigCFNumberCreateSInt32();
  FigVideoQueueGetClassID();
  v27 = CMDerivedObjectCreate();
  if (!v27)
  {
    v82 = a7;
    if (dword_1EAF17830)
    {
      v28 = a6;
      LODWORD(v92) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = v92;
      v31 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v32 = v30;
      }

      else
      {
        v32 = v30 & 0xFFFFFFFE;
      }

      if (v32)
      {
        *v96 = 136315650;
        *&v96[4] = "videoQueueServer_makeWrapperForVideoQueueInternal";
        *&v96[12] = 2048;
        *&v96[14] = cf;
        *&v96[22] = 2048;
        v97 = v24;
        _os_log_send_and_compose_impl(v32, 0, &handler, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v31, "<<<< FigVideoQueueServer >>>> %s: created FVQ server %p subvideoqueue %p", v96, 32, v81);
      }

      OUTLINED_FUNCTION_7_86();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a6 = v28;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v24;
    CFRetain(v24);
    *(DerivedStorage + 80) = ClientPIDFromAuditToken;
    if (v25)
    {
      v34 = CFRetain(v25);
    }

    else
    {
      v34 = 0;
    }

    *(DerivedStorage + 88) = v34;
    v35 = FigSimpleMutexCreate();
    *(DerivedStorage + 64) = v35;
    if (!v35 || (v36 = FigOSTransactionCreate(), (*(DerivedStorage + 32) = v36) == 0) || (v37 = FigSimpleMutexCreate(), (*(DerivedStorage + 56) = v37) == 0))
    {
      OUTLINED_FUNCTION_49_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v55 = v76;
      v38 = 0;
      goto LABEL_89;
    }

    v38 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (!v38)
    {
      goto LABEL_88;
    }

    if (qword_1ED4CB928 != -1)
    {
      dispatch_once(&qword_1ED4CB928, &__block_literal_global_101);
    }

    v39 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CB920);
    if (!v39)
    {
LABEL_88:
      OUTLINED_FUNCTION_49_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v55 = v77;
      goto LABEL_89;
    }

    v40 = v39;
    dispatch_set_context(v39, v38);
    *handler.val = MEMORY[0x1E69E9820];
    *&handler.val[2] = 0x40000000;
    *&handler.val[4] = __videoQueueServer_makeWrapperForVideoQueueInternal_block_invoke;
    *&handler.val[6] = &__block_descriptor_tmp_114;
    v100 = v40;
    dispatch_source_set_cancel_handler(v40, &handler);
    *v96 = MEMORY[0x1E69E9820];
    *&v96[8] = 0x40000000;
    *&v96[16] = __videoQueueServer_makeWrapperForVideoQueueInternal_block_invoke_2;
    v97 = &__block_descriptor_tmp_12_5;
    v98 = v40;
    dispatch_source_set_event_handler(v40, v96);
    *(DerivedStorage + 96) = v40;
    dispatch_activate(v40);
    *(DerivedStorage + 72) = 0;
    v41 = FigRPCCreateClientConnectionWithNotifications();
    if (v41)
    {
      goto LABEL_83;
    }

    FigVideoQueueGetCMBaseObject();
    v43 = v42;
    v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v44)
    {
      v44(v43, @"ClientPID", SInt32);
    }

    FigVideoQueueGetCMBaseObject();
    v46 = v45;
    v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v47)
    {
      v47(v46, @"ResponsibleProcessID", SInt32);
    }

    v48 = cf;
    v49 = CMBaseObjectGetDerivedStorage();
    v50 = videoQueueServer_copySubVideoQueue(v48);
    if (!v50)
    {
      OUTLINED_FUNCTION_49_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v80, v81);
      v55 = v78;
      if (v78)
      {
        goto LABEL_84;
      }

LABEL_40:
      CMNotificationCenterGetDefaultLocalCenter();
      v41 = FigNotificationCenterAddWeakListener();
      if (!v41)
      {
        v55 = FigRPCGetConnectionInfo();
        a7 = v82;
        v38 = 0;
        a2 = 0;
        if (!v55)
        {
          *a9 = 0;
          v90 = 0;
        }

        goto LABEL_43;
      }

LABEL_83:
      v55 = v41;
      goto LABEL_84;
    }

    v51 = v50;
    if (in_audio_mx_server_process())
    {
      v92 = v94;
      v93 = v95;
      UsingPrimaryCMSessionForAuditToken = FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken(v20, &v92, (v49 + 24));
      if (UsingPrimaryCMSessionForAuditToken)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v92 = v94;
      v93 = v95;
      UsingPrimaryCMSessionForAuditToken = FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(v20, &v92, @"FigVideoQueue", (v49 + 24));
      if (UsingPrimaryCMSessionForAuditToken)
      {
        goto LABEL_93;
      }
    }

    if (*(v49 + 24))
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61(DefaultLocalCenter);
      v54 = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_61(v54);
      v55 = 0;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v80, v81);
LABEL_93:
    v55 = UsingPrimaryCMSessionForAuditToken;
LABEL_39:
    CFRelease(v51);
    if (v55)
    {
LABEL_84:
      v38 = 0;
      a2 = 0;
LABEL_89:
      a7 = v82;
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v55 = v27;
  v38 = 0;
LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  OUTLINED_FUNCTION_4_129(a2);
  if (v90)
  {
    FigRPCDisposeClientConnection();
  }

  if (!v55)
  {
    v56 = a12[1];
    *handler.val = *a12;
    *&handler.val[4] = v56;
    v57 = SecTaskCreateWithAuditToken(v20, &handler);
    v58 = MEMORY[0x1E695E4D0];
    if (v57)
    {
      v59 = v57;
      if (VTIsSecTaskEntitledForVP9Decode())
      {
        FigVideoQueueGetCMBaseObject();
        v61 = v60;
        v62 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v62)
        {
          v62(v61, @"AllowAlternateVideoDecoderSelection", *v58);
        }
      }

      CFRelease(v59);
    }

    if (!v83)
    {
      FigVideoQueueGetCMBaseObject();
      v71 = v70;
      v72 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v72)
      {
        v72(v71, @"EnableFlushCAToRemoveImage", *MEMORY[0x1E695E4C0]);
      }
    }

    if (FigVideoQueueUtilityIsProcessASecureCaptureExtension(ClientPIDFromAuditToken))
    {
      FigVideoQueueGetCMBaseObject();
      v64 = v63;
      v65 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v65)
      {
        v65(v64, 0x1F0B59498, *v58);
      }
    }

    *a10 = FigRemote_GetServerTimeoutToken();
    if (dword_1EAF17830)
    {
      LODWORD(v92) = 0;
      LOBYTE(cf) = 0;
      v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v67 = v92;
      v68 = cf;
      if (os_log_type_enabled(v66, cf))
      {
        v69 = v67;
      }

      else
      {
        v69 = v67 & 0xFFFFFFFE;
      }

      if (v69)
      {
        *v96 = 136315394;
        *&v96[4] = "FigVideoQueueRemoteServer_Create";
        *&v96[12] = 1024;
        *&v96[14] = ClientPIDFromAuditToken;
        _os_log_send_and_compose_impl(v69, 0, &handler, 128, &dword_1962D5000, v66, v68, "<<<< FigVideoQueueServer >>>> %s: client allocated for pid %d", v96, 18);
      }

      OUTLINED_FUNCTION_7_86();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v55 = 0;
  }

  a2 = 0;
  v73 = v84;
LABEL_72:
  if (v88)
  {
    v74 = v73;
    CFRelease(v88);
    v73 = v74;
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  OUTLINED_FUNCTION_4_129(a2);
  if (a7)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a6, a7);
  }

  *a11 = v55;
  return 0;
}

uint64_t videoQueueServerCopyClientFromCommandPort(uint64_t a1, void *a2, uint64_t a3)
{
  result = FigRPCLookupClientConnection();
  if (!result)
  {
    result = FigRPCGetConnectionInfo();
    if (a2)
    {
      if (!result)
      {
        *a2 = 0;
      }
    }
  }

  return result;
}

uint64_t FigVideoQueueRemoteServer_GetProperty(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_65(a1, a2, a3, a4, a5, a6, a7, a8, cf, v18);
  if (v9)
  {
    goto LABEL_15;
  }

  CMBaseObjectGetDerivedStorage();
  v10 = videoQueueServer_copySubVideoQueue(v18);
  if (!v10)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v18, v19);
LABEL_15:
    VMBufferFromPropertyList = v9;
    goto LABEL_9;
  }

  v11 = v10;
  v12 = *MEMORY[0x1E695E480];
  v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    VMBufferFromPropertyList = v14(v11, v13, v12, &cf);
    if (!VMBufferFromPropertyList)
    {
      VMBufferFromPropertyList = FigRemote_CreateVMBufferFromPropertyList();
    }
  }

  else
  {
    VMBufferFromPropertyList = 4294954514;
  }

  CFRelease(v11);
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return VMBufferFromPropertyList;
}

uint64_t FigVideoQueueRemoteServer_SetProperty(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v36 = 0;
  v7 = videoQueueServerCopyClientFromCommandPort(a1, 0, &v36);
  if (!v7)
  {
    CMBaseObjectGetDerivedStorage();
    v8 = videoQueueServer_copySubVideoQueue(v36);
    if (v8)
    {
      v9 = v8;
      v10 = *MEMORY[0x1E695E480];
      v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0);
      v12 = MEMORY[0x19A8D2B00](a3, a4, v10, &cf);
      if (v12)
      {
LABEL_50:
        v20 = v12;
        goto LABEL_52;
      }

      if (!FigCFEqual())
      {
LABEL_24:
        if (!FigCFEqual())
        {
          if (FigCFEqual())
          {
            v20 = 0;
LABEL_52:
            CFRelease(v9);
            goto LABEL_53;
          }

          goto LABEL_48;
        }

        v21 = cf;
        if (cf && (v22 = CFGetTypeID(cf), v22 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(v21), (Mutable = CFArrayCreateMutable(v10, Count, MEMORY[0x1E695E9C0])) != 0))
        {
          v25 = Mutable;
          if (Count < 1)
          {
LABEL_41:
            if (cf)
            {
              CFRelease(cf);
            }

            cf = v25;
            if (v11)
            {
              CFRelease(v11);
            }

            if (@"VideoTargetArray")
            {
              v11 = CFRetain(@"VideoTargetArray");
            }

            else
            {
              v11 = 0;
            }

LABEL_48:
            v28 = cf;
            v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v29)
            {
              v20 = 4294954514;
              goto LABEL_52;
            }

            v12 = v29(v9, v11, v28);
            goto LABEL_50;
          }

          v26 = 0;
          while (1)
          {
            v38 = 0;
            if (!FigCFArrayGetInt64AtIndex())
            {
              break;
            }

            value = 0;
            v27 = FigXPCVideoTargetServerCopyVideoTargetForID(v38, &value);
            if (v27)
            {
              goto LABEL_39;
            }

            CFArrayAppendValue(v25, value);
            if (value)
            {
              CFRelease(value);
            }

            if (Count == ++v26)
            {
              goto LABEL_41;
            }
          }

          OUTLINED_FUNCTION_40_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, cf);
LABEL_39:
          v20 = v27;
          CFRelease(v25);
          if (v20)
          {
            goto LABEL_52;
          }
        }

        else
        {
          OUTLINED_FUNCTION_40_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          v20 = v32;
          if (v32)
          {
            goto LABEL_52;
          }
        }

        v25 = 0;
        goto LABEL_41;
      }

      v13 = cf;
      if (cf && (v14 = CFGetTypeID(cf), v14 == CFArrayGetTypeID()) && (v15 = CFArrayGetCount(v13), (v16 = CFArrayCreateMutable(v10, v15, MEMORY[0x1E695E9C0])) != 0))
      {
        v17 = v16;
        if (v15 < 1)
        {
LABEL_17:
          if (cf)
          {
            CFRelease(cf);
          }

          cf = v17;
          if (v11)
          {
            CFRelease(v11);
          }

          if (@"VisualContextArray")
          {
            v11 = CFRetain(@"VisualContextArray");
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_24;
        }

        v18 = 0;
        while (1)
        {
          v38 = 0;
          if (!FigCFArrayGetInt64AtIndex())
          {
            break;
          }

          value = 0;
          v19 = FigVisualContextServerRetainVisualContextForID(v38, &value);
          if (v19)
          {
            goto LABEL_15;
          }

          CFArrayAppendValue(v17, value);
          CFRelease(value);
          if (v15 == ++v18)
          {
            goto LABEL_17;
          }
        }

        OUTLINED_FUNCTION_40_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, cf);
LABEL_15:
        v20 = v19;
        CFRelease(v17);
        if (v20)
        {
          goto LABEL_52;
        }
      }

      else
      {
        OUTLINED_FUNCTION_40_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        v20 = v31;
        if (v31)
        {
          goto LABEL_52;
        }
      }

      v17 = 0;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, cf);
  }

  v20 = v7;
  v11 = 0;
LABEL_53:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a3 && !v20)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a3, a4);
  }

  return v20;
}

uint64_t FigVideoQueueRemoteServer_Start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_8_72(a1, a2, a3, a4, a5, a6, a7, a8, v15, cf);
  if (!v9)
  {
    CMBaseObjectGetDerivedStorage();
    v10 = videoQueueServer_copySubVideoQueue(cfa);
    if (v10)
    {
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v12)
      {
        v13 = v12(v11, a2);
      }

      else
      {
        v13 = 4294954514;
      }

      CFRelease(v11);
      goto LABEL_7;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, cfa, v19);
  }

  v13 = v9;
LABEL_7:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v13;
}

uint64_t FigVideoQueueRemoteServer_EnqueueVideoSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int *a6)
{
  OUTLINED_FUNCTION_0_180();
  v10 = v9;
  v18 = OUTLINED_FUNCTION_9_65(v11, v9, v12, v13, v14, v15, v16, v17, cf, v28);
  if (v18)
  {
    v23 = v18;
    v19 = 0;
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    v19 = videoQueueServer_copySubVideoQueue(v29);
    if (v19)
    {
      SampleBufferFromSerializedAtomData = FigRemote_CreateSampleBufferFromSerializedAtomData();
      if (SampleBufferFromSerializedAtomData)
      {
LABEL_6:
        v23 = SampleBufferFromSerializedAtomData;
        a4 = 0;
        goto LABEL_8;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        v21 = OUTLINED_FUNCTION_1_168();
        SampleBufferFromSerializedAtomData = v22(v21);
        goto LABEL_6;
      }

      a4 = 0;
      v23 = -12782;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cfa, v29, v30);
      v23 = v25;
    }
  }

LABEL_8:
  if (v10)
  {
    OUTLINED_FUNCTION_4_129(v10);
  }

  if (a4)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (a6)
  {
    *a6 = v23;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_EnqueueTaggedBufferGroupBackedSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, int *a9)
{
  OUTLINED_FUNCTION_0_180();
  v12 = 0;
  v31 = *MEMORY[0x1E69E9840];
  cf = 0;
  v29 = 0;
  v30[0] = v13;
  v30[1] = v14;
  v30[2] = v15;
  v30[3] = v16;
  do
  {
    if (!v30[v12])
    {
      break;
    }

    ++v12;
  }

  while (v12 != 4);
  v17 = videoQueueServerCopyClientFromCommandPort(v11, 0, &v29);
  if (v17)
  {
    v22 = v17;
    v18 = 0;
    goto LABEL_11;
  }

  CMBaseObjectGetDerivedStorage();
  v18 = videoQueueServer_copySubVideoQueue(v29);
  if (!v18)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0, v29);
    v22 = v26;
    goto LABEL_11;
  }

  SampleBufferFromSerializedAtomDataAndIOSurfaceArray = FigRemote_CreateSampleBufferFromSerializedAtomDataAndIOSurfaceArray();
  if (!SampleBufferFromSerializedAtomDataAndIOSurfaceArray)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      a7 = 0;
      v22 = -12782;
      goto LABEL_11;
    }

    v20 = OUTLINED_FUNCTION_1_168();
    SampleBufferFromSerializedAtomDataAndIOSurfaceArray = v21(v20);
  }

  v22 = SampleBufferFromSerializedAtomDataAndIOSurfaceArray;
  a7 = 0;
LABEL_11:
  for (i = 0; i != 4; ++i)
  {
    v24 = v30[i];
    if (v24)
    {
      OUTLINED_FUNCTION_4_129(v24);
    }
  }

  if (a7)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a6, a7);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (a9)
  {
    *a9 = v22;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_EnqueueH264Frame(uint64_t a1, uint64_t a2, int a3, const UInt8 *a4, unsigned int a5, void *a6, unsigned int a7, uint64_t a8, uint64_t a9, int *a10)
{
  OUTLINED_FUNCTION_0_180();
  cf = 0;
  v41 = 0;
  v16 = videoQueueServerCopyClientFromCommandPort(v15, 0, &v41);
  v17 = MEMORY[0x1E69E9A60];
  if (v16)
  {
    v35 = v16;
    v21 = 0;
    v20 = 0;
  }

  else
  {
    v39 = a3;
    CMBaseObjectGetDerivedStorage();
    v20 = videoQueueServer_copySubVideoQueue(v41);
    if (v20)
    {
      v21 = 0;
      v22 = MEMORY[0x1E695E480];
      if (a4)
      {
        if (a5)
        {
          v23 = a5;
          v21 = CFDataCreate(*MEMORY[0x1E695E480], a4, a5);
          if (!v21)
          {
            v35 = -108;
            v17 = MEMORY[0x1E69E9A60];
            goto LABEL_14;
          }
        }
      }

      if (a6 && a7 && (OUTLINED_FUNCTION_6_102(*v22, v18, a7, v19, &sVMAllocatedDataBlockSource), (v31 = OUTLINED_FUNCTION_14_54(v24, a6, v25, v26, v27, v28, v29, v30, &cf)) != 0))
      {
        v35 = v31;
        v17 = MEMORY[0x1E69E9A60];
      }

      else
      {
        VTable = CMBaseObjectGetVTable();
        v17 = MEMORY[0x1E69E9A60];
        if (*(*(VTable + 16) + 24))
        {
          v33 = OUTLINED_FUNCTION_1_168();
          v35 = v34(v33);
          a7 = 0;
        }

        else
        {
          a7 = 0;
          v35 = -12782;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, cf);
      v35 = v37;
      v21 = 0;
    }
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  v23 = a5;
LABEL_14:
  MEMORY[0x19A8D6C70](*v17, a4, v23);
LABEL_15:
  if (a7)
  {
    MEMORY[0x19A8D6C70](*v17, a6, a7);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (a10)
  {
    *a10 = v35;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_SyncTimebaseToMoment(uint64_t a1, int a2, int *a3, int *a4)
{
  v41 = 0;
  v40 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v37 = 0u;
  sourceTimebase = 0;
  timebaseOut = 0;
  v7 = *a3;
  v6 = a3[1];
  v8 = *(a3 + 1);
  v9 = *(a3 + 1);
  v49 = *(a3 + 4);
  v50 = 0;
  v48 = v9;
  v10 = *(a3 + 10);
  v47 = *(a3 + 7);
  v46 = v10;
  v11 = *(a3 + 8);
  v12 = *(a3 + 18);
  v45 = *(a3 + 11);
  v44 = v12;
  v13 = *(a3 + 6);
  v43 = *(a3 + 14);
  v42 = v13;
  v14 = videoQueueServerCopyClientFromCommandPort(a1, 0, &v50);
  if (!v14)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v16 = DerivedStorage;
      v17 = videoQueueServer_copySubVideoQueue(v50);
      if (!v17)
      {
        v24 = -12785;
        goto LABEL_27;
      }

      v18 = v17;
      FigSimpleMutexLock();
      LODWORD(v37) = v7;
      if (v7 == 120)
      {
        DWORD1(v37) = v6;
        *(&v37 + 1) = v8;
        v38 = v48;
        *&v39[0] = v49;
        *(v39 + 8) = v46;
        *(&v39[1] + 1) = v47;
        *&v39[2] = v11;
        *(&v39[2] + 8) = v44;
        *(&v39[3] + 1) = v45;
        v41 = v43;
        v40 = v42;
        if (a2)
        {
          v19 = *(v16 + 40);
          if (v19)
          {
            goto LABEL_24;
          }

          v20 = *MEMORY[0x1E695E480];
          HostTimeClock = CMClockGetHostTimeClock();
          v22 = CMTimebaseCreateWithSourceClock(v20, HostTimeClock, &sourceTimebase);
          if (v22 || (v22 = CMTimebaseCreateWithSourceTimebase(v20, sourceTimebase, &timebaseOut)) != 0)
          {
            v24 = v22;
            goto LABEL_26;
          }

          if (timebaseOut)
          {
            v23 = CFRetain(timebaseOut);
          }

          else
          {
            v23 = 0;
          }

          *(v16 + 40) = v23;
          v30 = sourceTimebase;
          if (sourceTimebase)
          {
            v30 = CFRetain(sourceTimebase);
            v23 = *(v16 + 40);
          }

          *(v16 + 48) = v30;
          FigVideoQueueGetCMBaseObject();
          v32 = v31;
          v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v33)
          {
            v33(v32, @"VideoQueue_ControlTimebase", v23);
          }

          v19 = *(v16 + 40);
          if (v19)
          {
LABEL_24:
            FigTimebaseSynchronizeToMoment2(v19, *(v16 + 48), &v37);
          }
        }

        else
        {
          FigVideoQueueGetCMBaseObject();
          v26 = v25;
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v27)
          {
            v27(v26, @"VideoQueue_ControlTimebase", 0);
          }

          v28 = *(v16 + 40);
          if (v28)
          {
            CFRelease(v28);
            *(v16 + 40) = 0;
          }

          v29 = *(v16 + 48);
          if (v29)
          {
            CFRelease(v29);
            v24 = 0;
            *(v16 + 48) = 0;
LABEL_26:
            CFRelease(v18);
            FigSimpleMutexUnlock();
            goto LABEL_27;
          }
        }
      }

      v24 = 0;
      goto LABEL_26;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sourceTimebase, timebaseOut, v37);
  }

  v24 = v14;
LABEL_27:
  if (v50)
  {
    CFRelease(v50);
  }

  if (timebaseOut)
  {
    CFRelease(timebaseOut);
  }

  if (sourceTimebase)
  {
    CFRelease(sourceTimebase);
  }

  if (a4)
  {
    *a4 = v24;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_Flush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_8_72(a1, a2, a3, a4, a5, a6, a7, a8, v15, cf);
  if (!v9)
  {
    CMBaseObjectGetDerivedStorage();
    v10 = videoQueueServer_copySubVideoQueue(cfa);
    if (v10)
    {
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v12)
      {
        v13 = v12(v11, a2);
      }

      else
      {
        v13 = 4294954514;
      }

      CFRelease(v11);
      goto LABEL_7;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, cfa, v19);
  }

  v13 = v9;
LABEL_7:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v13;
}

uint64_t FigVideoQueueRemoteServer_IsAboveHighWaterLevel(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_8_72(a1, a2, a3, a4, a5, a6, a7, a8, v16, cf);
  if (!v9)
  {
    CMBaseObjectGetDerivedStorage();
    v10 = videoQueueServer_copySubVideoQueue(cfa);
    if (v10)
    {
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v12)
      {
        v13 = v12(v11);
      }

      else
      {
        v13 = 0;
      }

      *a2 = v13;
      CFRelease(v11);
      v14 = 0;
      goto LABEL_7;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, cfa, v20);
  }

  v14 = v9;
LABEL_7:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v14;
}

uint64_t FigVideoQueueRemoteServer_RequestDecodeForPreroll(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v11 = OUTLINED_FUNCTION_9_65(a1, a2, a3, a4, a5, a6, a7, a8, v19, cf);
  if (!v11)
  {
    CMBaseObjectGetDerivedStorage();
    v12 = videoQueueServer_copySubVideoQueue(cf);
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0x19A8D2B00](a2, v9, *MEMORY[0x1E695E480], &v19);
      if (!v14)
      {
        v15 = v19;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v16)
        {
          v17 = -12782;
          goto LABEL_8;
        }

        v14 = v16(v13, v15);
      }

      v17 = v14;
LABEL_8:
      CFRelease(v13);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, cf, v21);
  }

  v17 = v11;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v9)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], a2, v9);
  }

  if (a4)
  {
    *a4 = v17;
  }

  return 0;
}

uint64_t FigVideoQueueRemoteServer_CopyCurrentlyDisplayedCVPixelBuffer(uint64_t a1, unsigned int *a2, uint64_t *a3, _DWORD *a4, int *a5)
{
  cf = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v21 = 0;
  v9 = videoQueueServerCopyClientFromCommandPort(a1, 0, &cf);
  if (v9)
  {
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = videoQueueServer_copySubVideoQueue(cf);
  if (!v11)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
LABEL_22:
    SerializedAtomDataForPixelBuffer = v9;
    goto LABEL_9;
  }

  v12 = v11;
  FigVideoQueueGetCMBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v16 = v15(v14, @"CurrentlyDisplayedCVPixelBuffer", *MEMORY[0x1E695E480], &v21);
    if (v16)
    {
      SerializedAtomDataForPixelBuffer = v16;
    }

    else
    {
      SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
      if (SerializedAtomDataForPixelBuffer)
      {
        *(DerivedStorage + 72) = 0;
      }

      else
      {
        v19 = v22;
        *(DerivedStorage + 72) = (v22 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        *a2 = v24;
        v24 = 0;
        *a3 = v23;
        *a4 = v19;
        v22 = 0;
        v23 = 0;
      }
    }
  }

  else
  {
    SerializedAtomDataForPixelBuffer = -12782;
  }

  CFRelease(v12);
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v24)
  {
    OUTLINED_FUNCTION_4_129(v24);
  }

  if (v22)
  {
    MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], v23);
  }

  if (a5)
  {
    *a5 = SerializedAtomDataForPixelBuffer;
  }

  return 0;
}

__CFString *fastStartRemaker_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  cf = 0;
  if (!DerivedStorage)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FastStartRemaker %p>", a1);
  CFStringAppendFormat(Mutable, 0, @" { ftypAtomOffset: %llu ftypAtomLength: %llu moovAtomOffset: %llu moovAtomLength: %llu firstMdatAtomOffset: %llu wholeMdatAtomLength: %llu", v3[8], v3[11], v3[9], v3[12], v3[10], v3[13]);
  v6 = MEMORY[0x1E695FFA0];
  if (v3[3])
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *v6, v4, &cf);
    }
  }

  if (v3[4])
  {
    v9 = CMByteStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *v6, v4, &v12);
      v10 = v12;
    }
  }

  else
  {
    v10 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @" sourceByteStream: %@ sourceURL: %@ outputByteStream: %@ outputURL: %@ }", v3[3], cf, v3[4], v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return Mutable;
}

uint64_t fastStartRemaker_getMovieDataAtom()
{
  OUTLINED_FUNCTION_187();
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    if (*(v0 + 112))
    {
      result = 0;
      *(v0 + 104) = -*(v0 + 80);
    }

    else
    {
      *(v0 + 80) = 0;
      *(v0 + 112) = 1;
      result = FigAtomStreamGetCurrentAtomHeaderSize();
      if (!result)
      {
        return 4294955167;
      }
    }
  }

  return result;
}

double fastStartRemaker_parseChildAtoms(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v19 = 0;
  v9 = (a3 + 8);
  while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    if (a2 >= 1)
    {
      v11 = 0;
      v12 = v9;
      v13 = v9;
      while (*(v13 - 2))
      {
        ++v11;
        v13 += 2;
        v12 += 2;
        if (a2 == v11)
        {
          goto LABEL_12;
        }
      }

      v14 = 1 << v11;
      if ((*(v13 - 4) & 1) != 0 && (v14 & v8) != 0)
      {
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v20, v21);
      }

      v8 |= v14;
      v15 = (*v13)(a1, a4);
      if (v15 == 1937010544)
      {
LABEL_13:
        if (a2 >= 1)
        {
          v16 = 0;
          v17 = (a3 + 4);
          do
          {
            v18 = *v17;
            v17 += 16;
            if ((v18 & 2) != 0 && ((v8 >> v16) & 1) == 0)
            {
              result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
            }

            ++v16;
          }

          while (a2 != v16);
        }

        return result;
      }

      if (v15)
      {
        return result;
      }
    }

LABEL_12:
    if (FigAtomStreamAdvanceToNextAtom())
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t fastStartRemaker_getTrackAtom(uint64_t a1, void *cf)
{
  v3 = CFGetAllocator(cf);
  v4 = MEMORY[0x19A8CC720](v3, 112, 0x100004090191A6FLL, 0);
  if (!v4)
  {
    return 4294955196;
  }

  v5 = v4;
  *&v6 = OUTLINED_FUNCTION_0_15();
  v7[5] = v6;
  v7[6] = v6;
  v7[3] = v6;
  v7[4] = v6;
  *v7 = v6;
  v7[1] = v6;
  v7[2] = v6;
  CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (CurrentAtomGlobalOffset || (CurrentAtomGlobalOffset = FigAtomStreamInitWithParent(), CurrentAtomGlobalOffset))
  {
    v10 = CurrentAtomGlobalOffset;
    goto LABEL_8;
  }

  fastStartRemaker_parseChildAtoms(&v13, 1, &fastStartRemaker_getTrackAtom_atomDispatch, v5);
  v10 = v9;
  if (v9)
  {
LABEL_8:
    v12 = CFGetAllocator(cf);
    CFAllocatorDeallocate(v12, v5);
    return v10;
  }

  CFArrayAppendValue(cf, v5);
  return v10;
}

double fastStartRemaker_getMediaAtom()
{
  OUTLINED_FUNCTION_187();
  if (!FigAtomStreamGetCurrentAtomGlobalOffset())
  {
    OUTLINED_FUNCTION_0_15();
    if (!OUTLINED_FUNCTION_3_131(v2, v3, v4, v5, v6, v7, v8, v9, v10[0]))
    {
      return fastStartRemaker_parseChildAtoms(v10, 1, &fastStartRemaker_getMediaAtom_atomDispatch, v0);
    }
  }

  return result;
}

double fastStartRemaker_getMediaInfoAtom()
{
  OUTLINED_FUNCTION_187();
  if (!FigAtomStreamGetCurrentAtomGlobalOffset())
  {
    OUTLINED_FUNCTION_0_15();
    if (!OUTLINED_FUNCTION_3_131(v2, v3, v4, v5, v6, v7, v8, v9, v10[0]))
    {
      return fastStartRemaker_parseChildAtoms(v10, 1, &fastStartRemaker_getMediaInfoAtom_atomDispatch, v0);
    }
  }

  return result;
}

double fastStartRemaker_getSampleTableAtom()
{
  OUTLINED_FUNCTION_187();
  if (!FigAtomStreamGetCurrentAtomGlobalOffset())
  {
    OUTLINED_FUNCTION_0_15();
    if (!OUTLINED_FUNCTION_3_131(v2, v3, v4, v5, v6, v7, v8, v9, v10[0]))
    {
      return fastStartRemaker_parseChildAtoms(v10, 2, &fastStartRemaker_getSampleTableAtom_atomDispatch, v0);
    }
  }

  return result;
}

void FigFastStartRemakerCreateWithURLs_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigFastStartRemakerCreateWithURLs_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigFastStartRemakerCreateWithURLs_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fastStartRemaker_Invalidate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t fastStartRemaker_CopyProperty_cold_2(uint64_t result, float *a2)
{
  v2 = *(result + 104);
  v3 = 0.0;
  if (v2)
  {
    v4 = *(result + 48) / v2;
    if (v4 >= 0.0)
    {
      v3 = *(result + 48) / v2;
      if (v4 > 1.0)
      {
        v3 = 1.0;
      }
    }
  }

  *a2 = v3;
  return result;
}

void fastStartRemaker_CopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void fastStartRemaker_StartOutput_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

BOOL writeFirstStartMovieDispatchFunction_cold_3()
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v0);
  return OUTLINED_FUNCTION_290_1(v1);
}

void writeFirstStartMovieDispatchFunction_cold_4(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v3);
  *a2 = v4;
}

void writeFirstStartMovieDispatchFunction_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void writeFirstStartMovieDispatchFunction_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

BOOL writeFirstStartMovieDispatchFunction_cold_19()
{
  OUTLINED_FUNCTION_1_169();
  FigSignalErrorAtGM(v0);
  return OUTLINED_FUNCTION_290_1(v1);
}

int *fastStartRemaker_getChunkOffsetAtomInfo_cold_1(int *result, char a2, uint64_t a3, uint64_t *a4)
{
  v4 = *result;
  if (a2)
  {
    if (v4 > 0)
    {
      v5 = 0;
      v6 = *a4 + 4;
      v7 = -1;
      do
      {
        v8 = bswap32(*(v6 - 4));
        if (v7 >= v8)
        {
          v7 = v8;
        }

        if (v5 <= v8)
        {
          v5 = v8;
        }

        *a4 = v6;
        v6 += 4;
        --v4;
      }

      while (v4);
      goto LABEL_19;
    }

LABEL_18:
    v5 = 0;
    v7 = -1;
    goto LABEL_19;
  }

  if (v4 <= 0)
  {
    goto LABEL_18;
  }

  v5 = 0;
  v9 = *a4 + 8;
  v7 = -1;
  do
  {
    v10 = bswap64(*(v9 - 8));
    if (v7 >= v10)
    {
      v7 = v10;
    }

    if (v5 <= v10)
    {
      v5 = v10;
    }

    *a4 = v9;
    v9 += 8;
    --v4;
  }

  while (v4);
LABEL_19:
  *(a3 + 96) = v7;
  *(a3 + 104) = v5;
  return result;
}

uint64_t FigReportingAgentCreateFromAsset(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  v1 = @"com.apple.coremedia";
  OUTLINED_FUNCTION_10_65();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_10_65();
  fig_note_initialize_category_with_default_work_cf();
  FigAssetGetCMBaseObject();
  v3 = v2;
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = *MEMORY[0x1E695E480];
    v4 = OUTLINED_FUNCTION_8_73();
    v6 = v5(v4);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_189_0();
    v8 = 4294954514;
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v8;
}

const void *fra_setCFStringRefValueFromKeyInDict(const void *result, void *key, CFDictionaryRef theDict)
{
  if (result)
  {
    if (key)
    {
      result = CFDictionaryGetValue(theDict, key);
      if (result)
      {
        v3 = CFGetTypeID(result);
        result = CFStringGetTypeID();
        if (v3 == result)
        {

          return FigCFDictionarySetValueFromKeyInDict();
        }
      }
    }
  }

  return result;
}

uint64_t FigReportingAgentCreate(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, int a7, const __CFDictionary *a8, char a9, CFTypeRef *a10)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_12_61();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_12_61();
  fig_note_initialize_category_with_default_work_cf();
  if (!a10)
  {
    return 4294955296;
  }

  MEMORY[0x19A8D3660](&unk_1ED4CA2E8, fra_createStaticKeyArrayForTCPIStats);
  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  if (!GlobalNetworkBufferingQueue)
  {
    return 0;
  }

  v15 = GlobalNetworkBufferingQueue;
  v16 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&_MergedGlobals_10, RegisterFigReportingAgentBaseType);
  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    return v17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955295;
  }

  v19 = DerivedStorage;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"force_reporting", @"com.apple.coremedia", 0);
  v21 = 0;
  *(v19 + 132) = AppIntegerValue != 0;
  if (a3)
  {
    v21 = CFRetain(a3);
  }

  *(v19 + 16) = v21;
  v22 = a4 ? CFRetain(a4) : 0;
  *(v19 + 48) = v22;
  fra_setAdditionalReportingConfigParams(v19, a8);
  v23 = a1 ? CFRetain(a1) : 0;
  *(v19 + 24) = v23;
  v24 = a2 ? CFRetain(a2) : 0;
  *(v19 + 32) = v24;
  v25 = a5 ? CFRetain(a5) : 0;
  *(v19 + 56) = v25;
  v26 = a6 ? CFRetain(a6) : 0;
  *(v19 + 64) = v26;
  *(v19 + 112) = v15;
  dispatch_retain(v15);
  *(v19 + 104) = FigSimpleMutexCreate();
  *(v19 + 128) = a7;
  *(v19 + 144) = 0;
  FigCFDictionaryGetIntIfPresent();
  *(v19 + 148) = 0;
  *(v19 + 168) = a9;
  v17 = FigReportingSessionStatsCreate(v19);
  if (v17)
  {
    return v17;
  }

  if (!*v19)
  {
    return 4294955295;
  }

  Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = Mutable;
  if (a6 && Mutable)
  {
    CFDictionarySetValue(Mutable, @"FRM_BundleName", a6);
  }

  switch(a7)
  {
    case 1:
      v29 = OUTLINED_FUNCTION_13_47();
      v33 = FigReportingModeratorCreateForHLS(v29, v30, v31, v32);
      goto LABEL_32;
    case 2:
      goto LABEL_31;
    case 3:
      v33 = FigReportingModeratorCreateForStreamingAssetDownloader(v16, *v19, (v19 + 120));
      goto LABEL_32;
    case 4:
      *(v19 + 150) = 1;
LABEL_31:
      v34 = OUTLINED_FUNCTION_13_47();
      v33 = FigReportingModeratorCreateForCRABS(v34, v35, v36, v37);
LABEL_32:
      v38 = v33;
      if (v33)
      {
        goto LABEL_42;
      }

      if (*(v19 + 120))
      {
        *(v19 + 133) = 1;
        *(v19 + 40) = arc4random();
        *(v19 + 152) = arc4random() / 4294967300.0;
        if (*(v19 + 128) != 1)
        {
LABEL_40:
          v38 = 0;
          *a10 = 0;
          goto LABEL_42;
        }

        v39 = CMBaseObjectGetDerivedStorage();
        if (v39)
        {
          v40 = v39;
          if (*(v39 + 140))
          {
            v38 = 4294955290;
          }

          else
          {
            *(v39 + 88) = FigGetUpTimeNanoseconds();
            v41 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v40 + 112));
            *(v40 + 80) = v41;
            if (v41)
            {
              v42 = FigCFWeakReferenceHolderCreateWithReferencedObject();
              if (v42)
              {
                dispatch_set_context(*(v40 + 80), v42);
                v43 = *(v40 + 80);
                v44 = dispatch_walltime(0, 300000000000);
                dispatch_source_set_timer(v43, v44, 0x45D964B800uLL, 0xEE6B280uLL);
                dispatch_source_set_event_handler_f(*(v40 + 80), fra_handlePeriodicTimerCallback);
                dispatch_source_set_cancel_handler_f(*(v40 + 80), fra_handlePeriodicTimerCancelCallback);
                dispatch_resume(*(v40 + 80));
                goto LABEL_40;
              }
            }

            OUTLINED_FUNCTION_40_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            v38 = v47;
            if (!v47)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
LABEL_41:
          v38 = 4294955296;
        }
      }

      else
      {
        OUTLINED_FUNCTION_40_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v49, a10);
        v38 = v46;
      }

LABEL_42:
      if (v28)
      {
        CFRelease(v28);
      }

      break;
    default:
      goto LABEL_41;
  }

  return v38;
}

void fra_setAdditionalReportingConfigParams(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return;
  }

  v4 = *(a1 + 72);
  if (a2 && !v4)
  {
    v5 = *MEMORY[0x1E695E480];
    v4 = a2;
LABEL_8:
    MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, v4);
    goto LABEL_9;
  }

  if (!a2 && v4)
  {
    v5 = *MEMORY[0x1E695E480];
    goto LABEL_8;
  }

  v9 = *MEMORY[0x1E695E480];
  if (a2 | v4)
  {
    v10 = CFDictionaryCreateMutableCopy(v9, 0, v4);
    if (!v10)
    {
      return;
    }

    v7 = v10;
    OUTLINED_FUNCTION_0_181();
    CFDictionaryApplyFunction(a2, v11, v7);
    goto LABEL_10;
  }

  MutableCopy = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_9:
  v7 = MutableCopy;
  if (!MutableCopy)
  {
    return;
  }

LABEL_10:
  if (*(a1 + 132) == 1)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  FigCFDictionarySetInt();
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
  CFRetain(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v7);
}

void fra_handlePeriodicTimerCallback(uint64_t a1)
{
  if (a1)
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v1)
    {
      v2 = v1;
      if (CMBaseObjectGetDerivedStorage())
      {
        FigSimpleMutexLock();
        OUTLINED_FUNCTION_3_132();
        fra_issueAndCopyReportingEvent(v3, v4, v5, v6, 0, 0);
        FigSimpleMutexUnlock();
      }

      CFRelease(v2);
    }
  }
}

uint64_t FigReportingAgentStatsUpdateSampleValueWithBool(uint64_t a1)
{
  if (!a1)
  {
    return 4294955296;
  }

  OUTLINED_FUNCTION_471();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    return 4294954514;
  }

  OUTLINED_FUNCTION_0_6();

  return v1();
}

uint64_t reportingAgentSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955296;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v6 + 140))
  {
    v8 = 4294955290;
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"IssueEndEvents"))
  {
    if (CFEqual(a2, @"Timebase"))
    {
      if (!a3)
      {
        goto LABEL_15;
      }

      v9 = CFGetTypeID(a3);
      if (v9 != CMTimebaseGetTypeID())
      {
        goto LABEL_15;
      }

      v10 = *(v6 + 120);
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(v10, a2, a3);
      }
    }

    v8 = 0;
    goto LABEL_13;
  }

  if (!a3 || (v7 = CFGetTypeID(a3), v7 != CFBooleanGetTypeID()))
  {
LABEL_15:
    v8 = 4294955296;
    goto LABEL_13;
  }

  v8 = 0;
  *(v6 + 133) = *MEMORY[0x1E695E4D0] == a3;
LABEL_13:
  FigSimpleMutexUnlock();
  return v8;
}

void reportingAgentInvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 140))
  {
    return;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 133) == 1 && *(DerivedStorage + 128) != 3)
  {
    fra_ensureRTCReportingConnection(a1, 0);
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(v3 + 80));
  }

  fra_issueDeferredRTCReportingEvents(v3);
  if (*(v3 + 133) == 1)
  {
    v5 = *(v3 + 128);
    if ((v5 - 1) < 2 || v5 == 4)
    {
      fra_issueAndCopyReportingEvent(v3, 112, 0, 0, 1, 0);
      OUTLINED_FUNCTION_3_132();
      fra_issueAndCopyReportingEvent(v17, v18, v19, v20, 1, 0);
      v21 = v3;
      v22 = 101;
      v23 = 0;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_13;
      }

      v21 = v3;
      v22 = 701;
      v23 = 1;
    }

    fra_issueAndCopyReportingEvent(v21, v22, 0, v23, 1, 0);
  }

LABEL_13:
  if (*v3)
  {
    CFRelease(*v3);
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v3 + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v3 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(v3 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(v3 + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(v3 + 64);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(v3 + 72);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(v3 + 120);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(v3 + 160);
  if (v16)
  {
    CFRelease(v16);
  }

  *(v3 + 140) = 1;
}

uint64_t fra_ensureRTCReportingConnection(uint64_t a1, const __CFDictionary *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = result;
    if (!*(result + 150) && (*(result + 144) & 0xFFFFFFFD) == 0 && !*(result + 140) && !*(result + 8))
    {
      fra_setAdditionalReportingConfigParams(result, a2);
      if (*(v4 + 132))
      {
        v5 = @"com.apple.coremedia.apple_internal";
        v6 = @"CM_AppleInternal";
      }

      else
      {
        v6 = *(v4 + 16);
        v5 = *(v4 + 48);
      }

      result = FigRTCReportingCreate(*(v4 + 40), *(v4 + 24), *(v4 + 32), *(v4 + 128), v6, v5, *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 148), *(v4 + 168), (v4 + 8));
      if (!result)
      {
        *(v4 + 144) = 1;
      }
    }
  }

  return result;
}

void fra_issueDeferredRTCReportingEvents(uint64_t a1)
{
  v1 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (!*(a1 + 150))
  {
    FigCFArrayApplyFunction();
  }

  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t fra_issueRTCReportingEvent(uint64_t result, int a2, __CFDictionary *a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (*(result + 150))
  {
    return 0;
  }

  v7 = *(result + 8);
  if (!a4 && !v7)
  {
    return 4294955296;
  }

  if (*(v4 + 140))
  {
    return 4294955290;
  }

  ++*(v4 + 136);
  if (v7)
  {

    return FigRTCReportingSendMsgWithErrors(v7);
  }

  if (!a4)
  {
    return 0;
  }

  if (*(v4 + 132))
  {
    v8 = @"com.apple.coremedia.apple_internal";
    v9 = @"CM_AppleInternal";
  }

  else
  {
    v9 = *(v4 + 16);
    v8 = *(v4 + 48);
  }

  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (v4 + 136));
  if (!v10)
  {
    return 4294955295;
  }

  v11 = v10;
  CFDictionarySetValue(a3, @"EventNumber", v10);
  v12 = FigRTCReportingSendOneMessageWithDictionary(*(v4 + 40), *(v4 + 24), *(v4 + 32), *(v4 + 128), v9, v8, *(v4 + 56), *(v4 + 64), *(v4 + 72), a2, SHIWORD(a2), 0, 0, *(v4 + 168), a3);
  CFRelease(v11);
  return v12;
}

uint64_t fra_issueAndCopyReportingEvent(void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, int a5, CFDictionaryRef *a6)
{
  v58 = 0;
  cf = 0;
  v57 = 0;
  v56 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v13 = MEMORY[0x1E695E480];
  if (!a1)
  {
    Mutable = 0;
LABEL_63:
    v47 = 0;
    goto LABEL_65;
  }

  if (*(a1 + 140))
  {
    Mutable = 0;
    goto LABEL_86;
  }

  v14 = UpTimeNanoseconds;
  if (a6)
  {
    *a6 = 0;
  }

  v15 = *v13;
  Mutable = CFDictionaryCreateMutable(*v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v47 = 4294955295;
    goto LABEL_65;
  }

  v17 = a1[15];
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v18)
  {
    goto LABEL_64;
  }

  v19 = v18(v17, a2, &cf, &v58);
  if (v19)
  {
    goto LABEL_89;
  }

  if (a2 == 101)
  {
    v20 = *a1;
    v21 = cf;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v22)
    {
      goto LABEL_64;
    }

    v19 = v22(v20, v21, Mutable);
    if (v19)
    {
      goto LABEL_89;
    }

    v23 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v23)
    {
      v24 = v23;
      v25 = *a1;
      v26 = kFigReportingEventKeyArray_TCPInfoKeyForTimeWeightedStats;
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v27)
      {
        v28 = v27(v25, v26, v24);
        if (!v28)
        {
          v29 = OUTLINED_FUNCTION_15_48(v28, 0x1F0B65C78, 0x1F0B65C98, 0x1F0B65C18);
          v30 = OUTLINED_FUNCTION_15_48(v29, 0x1F0B65CB8, 0x1F0B65CD8, 0x1F0B65C58);
          v31 = OUTLINED_FUNCTION_15_48(v30, 0x1F0B65DF8, 0x1F0B65E18, 0x1F0B65D58);
          OUTLINED_FUNCTION_15_48(v31, 0x1F0B65E38, 0x1F0B65E58, 0x1F0B65D98);
        }
      }

      CFRelease(v24);
    }
  }

  else if ((a2 - 2001) >= 2 && a2 != 3001)
  {
    if (a2 == 112)
    {
      v35 = *a1;
      v36 = cf;
      v37 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v37)
      {
        goto LABEL_64;
      }

      v19 = v37(v35, v36, Mutable);
      if (v19)
      {
        goto LABEL_89;
      }
    }

    else if (a2 == 110)
    {
      v32 = *a1;
      v33 = cf;
      v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v34)
      {
        goto LABEL_64;
      }

      v19 = v34(v32, v33, Mutable);
      if (v19)
      {
        goto LABEL_89;
      }

      if (a5)
      {
        FigCFDictionarySetBoolean();
      }

      FigCFDictionarySetInt64();
      a1[11] = v14;
    }

    else
    {
      v38 = *a1;
      v40 = v58;
      v39 = cf;
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v41)
      {
        goto LABEL_64;
      }

      v19 = v41(v38, v39, v40, Mutable);
      if (v19)
      {
        goto LABEL_89;
      }
    }
  }

  v42 = a1[15];
  v43 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v43)
  {
    v43(v42, a2, Mutable);
  }

  if (a3)
  {
    OUTLINED_FUNCTION_0_181();
    CFDictionaryApplyFunction(a3, v44, Mutable);
  }

  if (*(a1 + 32) != 3 && (*(a1 + 36) | 2) == 2)
  {
    v48 = a1;
    v49 = a2;
LABEL_57:
    fra_storeDeferredReportingEvent(v48, v49, Mutable);
    goto LABEL_58;
  }

  if (a2 == 110)
  {
    fra_issueDeferredRTCReportingEvents(a1);
    v46 = fra_issueRTCReportingEventRealTime(a1);
    goto LABEL_42;
  }

  if ((a2 & 0xFFFFFFFE) == 0x320)
  {
    v45 = a2 == 800;
    if (!*(a1 + 140))
    {
      if (*(a1 + 150))
      {
        goto LABEL_58;
      }

      if (*(a1 + 149) == v45)
      {
        v47 = 4294955296;
        goto LABEL_65;
      }

      *(a1 + 149) = v45;
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigNetworkInterfaceReporterReportStreamingActivity(Mutable);
      goto LABEL_42;
    }

LABEL_86:
    v47 = 4294955290;
    goto LABEL_65;
  }

  if (a2 == 112)
  {
    if (CFDictionaryGetCount(Mutable))
    {
LABEL_47:
      v46 = fra_issueRTCReportingEvent(a1, a2, Mutable, a4);
LABEL_42:
      v47 = v46;
      goto LABEL_43;
    }

    goto LABEL_58;
  }

  if ((a2 - 2001) < 2)
  {
    goto LABEL_58;
  }

  if (a2 == 113 && !a4)
  {
    v55 = a1[20];
    if (v55 && CFArrayGetCount(v55) >= 10)
    {
      fra_issueDeferredRTCReportingEvents(a1);
    }

    v48 = a1;
    v49 = 113;
    goto LABEL_57;
  }

  if (a2 != 101)
  {
    if (a2 != 3001)
    {
      if (a2 != 901)
      {
        goto LABEL_47;
      }

      fra_issuePowerlogEvent(a1);
    }

LABEL_58:
    v50 = a1[15];
    v51 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v51)
    {
      v19 = v51(v50, a2);
      if (!v19)
      {
        v52 = a1[15];
        v53 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v53)
        {
          v53(v52, a2, &v57, &v56);
          if (v57)
          {
            fra_issueAndCopyReportingEvent(a1, v57, v56, a4, 0, 0);
          }
        }

        goto LABEL_63;
      }

LABEL_89:
      v47 = v19;
      goto LABEL_65;
    }

LABEL_64:
    v47 = 4294954514;
    goto LABEL_65;
  }

  fra_issueDeferredRTCReportingEvents(a1);
  v47 = fra_issueRTCReportingEventRealTime(a1);
  CFDictionaryGetValue(Mutable, @"PlayTimeWC");
  FigCFNumberGetFloat64();
  FigCAStatsReportingSubmitData();
LABEL_43:
  if (!v47)
  {
    goto LABEL_58;
  }

LABEL_65:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (!v47 && a6 && Mutable)
  {
    *a6 = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], Mutable);
    goto LABEL_75;
  }

  if (Mutable)
  {
LABEL_75:
    CFRelease(Mutable);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  return v47;
}

double fra_storeDeferredReportingEvent(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!*(a1 + 150))
  {
    if (*(a1 + 160) || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*(a1 + 160) = Mutable) != 0))
    {
      FigCFDictionarySetInt();
      v7 = *(a1 + 160);

      CFArrayAppendValue(v7, a3);
    }

    else
    {
      v9 = qword_1EAF17848;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294955295, "<<< FigReportingAgentRef >>>", 806, v3);
    }
  }

  return result;
}

uint64_t fra_issueRTCReportingEventRealTime(uint64_t result)
{
  if (result)
  {
    if (*(result + 150) || !*(result + 8))
    {
      return 0;
    }

    else if (*(result + 140))
    {
      return 4294955290;
    }

    else
    {
      return FigRTCReportingSendMsgRealTime(*(result + 8));
    }
  }

  return result;
}

uint64_t reportingAgentIssueAndCopyRTCReportingEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFDictionaryRef *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v9 = result;
    if (*(result + 140))
    {
      return 4294955290;
    }

    else
    {
      FigSimpleMutexLock();
      if (!*(v9 + 140))
      {
        fra_issueAndCopyReportingEvent(v9, a3, 0, a4, 0, a5);
      }

      FigSimpleMutexUnlock();
      return 0;
    }
  }

  return result;
}

uint64_t reportingAgentIssueAndCopyRTCReportingEventWithPayload(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, CFDictionaryRef *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_6_103(DerivedStorage);
    if (!*(v6 + 140))
    {
      fra_issueAndCopyReportingEvent(v6, a3, a4, a5, 0, a6);
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsCopy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (a3 && DerivedStorage && v5 && v5 != DerivedStorage)
  {
    FigSimpleMutexLock();
    if (*v5)
    {
      v7 = CFRetain(*v5);
    }

    else
    {
      v7 = 0;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    v8 = *DerivedStorage;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 184);
    if (v9)
    {
      v9(v8, v7, a3);
    }

    FigSimpleMutexUnlock();
    if (v7)
    {
      CFRelease(v7);
    }

    return 0;
  }

  return result;
}

uint64_t reportingAgentStatsAddToCountValue(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7_87(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_6_103(v2);
    if (!*(v1 + 140) && *(*(OUTLINED_FUNCTION_14_55() + 16) + 64))
    {
      v3 = OUTLINED_FUNCTION_0_159();
      v4(v3);
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsUpdateSampleValue(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7_87(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_6_103(v2);
    if (!*(v1 + 140) && *(*(OUTLINED_FUNCTION_14_55() + 16) + 72))
    {
      v3 = OUTLINED_FUNCTION_0_159();
      v4(v3);
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsSetCFTypeValueWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_6_103(DerivedStorage);
    if (!*(v5 + 140))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 80))
      {
        OUTLINED_FUNCTION_0_6();
        v9 = v8();
        if (a5)
        {
          if (!v9)
          {
            OUTLINED_FUNCTION_0_6();
            reportingAgentFreezeKey(v11, v12, v13);
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsSetIntValueWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_6_103(DerivedStorage);
    if (!*(v5 + 140))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 88))
      {
        OUTLINED_FUNCTION_0_6();
        v9 = v8();
        if (a5)
        {
          if (!v9)
          {
            OUTLINED_FUNCTION_0_6();
            reportingAgentFreezeKey(v11, v12, v13);
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentStatsResetValue()
{
  OUTLINED_FUNCTION_471();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v3 = result;
    result = 4294955296;
    if (v1)
    {
      if (v0)
      {
        FigSimpleMutexLock();
        if (!*(v3 + 140))
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 104))
          {
            OUTLINED_FUNCTION_0_6();
            v4();
          }
        }

        FigSimpleMutexUnlock();
        return 0;
      }
    }
  }

  return result;
}

uint64_t reportingAgentStatsResetAll(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = result;
    if (*(result + 140))
    {
      return 4294955290;
    }

    else if (a2)
    {
      FigSimpleMutexLock();
      if (!*(v4 + 140))
      {
        v5 = *v4;
        v6 = *(CMBaseObjectGetVTable() + 16);
        if (*(v6 + 160))
        {
          (*(v6 + 168))(v5, a2);
        }
      }

      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      return 4294955296;
    }
  }

  return result;
}

uint64_t reportingAgentPeriodicStatsResetValue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    if (!*(v4 + 140))
    {
      v5 = *v4;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v6)
      {
        v6(v5, a2);
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t reportingAgentUpdateUserInfo(uint64_t a1, const void *a2, const void *a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    if (!*(DerivedStorage + 150))
    {
      FigSimpleMutexLock();
      if (!*(v8 + 140))
      {
        if (a2)
        {
          v9 = *(v8 + 16);
          *(v8 + 16) = a2;
          CFRetain(a2);
          if (v9)
          {
            CFRelease(v9);
          }
        }

        if (a3 && !*(v8 + 48))
        {
          *(v8 + 48) = CFRetain(a3);
        }

        fra_setAdditionalReportingConfigParams(v8, a4);
        v10 = *(v8 + 8);
        if (v10)
        {
          if (*(v8 + 132))
          {
            v11 = @"com.apple.coremedia.apple_internal";
            v12 = @"CM_AppleInternal";
          }

          else
          {
            v12 = *(v8 + 16);
            v11 = *(v8 + 48);
          }

          FigRTCReportingSetUserInfo(v10, *(v8 + 24), *(v8 + 32), v12, *(v8 + 64), v11, *(v8 + 72), *(v8 + 168), *(v8 + 128));
        }
      }

      FigSimpleMutexUnlock();
    }
  }

  return 0;
}

uint64_t reportingAgentSetIntValueAndIssuePeriodicEvent(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_87(a1);
  if (result)
  {
    v3 = result;
    if (*(result + 140))
    {
      return 4294955290;
    }

    if (!*(result + 8) && !*(result + 150))
    {
      return 4294955296;
    }

    FigSimpleMutexLock();
    if (*(v3 + 140) || !*(*(OUTLINED_FUNCTION_14_55() + 16) + 144))
    {
      goto LABEL_19;
    }

    v4 = OUTLINED_FUNCTION_0_159();
    v6 = v5(v4);
    if (!v6)
    {
      if (!v1)
      {
LABEL_17:
        if (*(*(OUTLINED_FUNCTION_14_55() + 16) + 88))
        {
          v9 = OUTLINED_FUNCTION_0_159();
          v10(v9);
        }

LABEL_19:
        FigSimpleMutexUnlock();
        return 0;
      }

      OUTLINED_FUNCTION_3_132();
      v6 = fra_issueAndCopyReportingEvent(v11, v12, v13, v14, 0, 0);
    }

    if (v6 != -17513 && v6 != 0 && v6 != -12005)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t reportingAgentActivate(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955296;
  }

  OUTLINED_FUNCTION_6_103(DerivedStorage);
  if (!*(v2 + 140))
  {
    fra_ensureRTCReportingConnection(a1, a2);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t reportingAgentDeactivate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    if (!*(DerivedStorage + 150))
    {
      FigSimpleMutexLock();
      if (!*(v2 + 140))
      {
        v3 = *(v2 + 8);
        if (v3)
        {
          CFRelease(v3);
          *(v2 + 8) = 0;
        }

        *(v2 + 144) = 2;
      }

      FigSimpleMutexUnlock();
    }
  }

  return 0;
}

uint64_t reportingAgentStatsAppendCFTypeValueToArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v10 = DerivedStorage;
    FigSimpleMutexLock();
    if (!*(v10 + 140))
    {
      v11 = *v10;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 192);
      if (v12)
      {
        v12(v11, a2, a3, a4, a5);
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

void reportingAgentFreezeKey(uint64_t a1, uint64_t a2, const void *a3)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (Mutable)
  {
    v7 = Mutable;
    CFSetAddValue(Mutable, a3);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 200);
    if (v8)
    {
      v8(a1, a2, v7);
    }

    CFRelease(v7);
  }
}

uint64_t fra_issuePowerlogEvent_cold_1(uint64_t *a1, uint64_t *a2, __CFDictionary *a3, uint64_t a4)
{
  v7 = a1[15];
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 8);
  if (v11)
  {
    result = v11(v7, 900, a2, 0);
    if (!result)
    {
      v12 = *a2;
      if (v12)
      {
        v13 = *a1;
        v14 = CMBaseObjectGetVTable();
        v15 = *(v14 + 16);
        result = v14 + 16;
        v16 = *(v15 + 16);
        if (v16)
        {
          result = v16(v13, v12, a3);
          if (!result)
          {
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            CFDictionaryRemoveValue(a3, @"IBR");
            CFDictionaryRemoveValue(a3, @"PlayerTWIBR");
            CFDictionaryRemoveValue(a3, @"PlayerTWIABR");
            CFDictionaryRemoveValue(a3, @"PowerLogItemLoggingIdentifier");
            FigCFDictionarySetValue();
            v17 = *(a1 + 32);
            if (v17 == 1 || v17 == 2 || v17 == 4)
            {
              FigCFDictionarySetValue();
            }

            return FigLogPowerEvent();
          }
        }
      }
    }
  }

  return result;
}

uint64_t surrogatePlayer_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v19 = 0;
  v16 = 0;
  cf = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, cf, v18);
    goto LABEL_20;
  }

  v4 = FPSupport_HandlePlayerSetPropertyAndCopyModification(a1, a2, a3, 0, surrogatePlayer_handleSetProperty, &v19, &cf, &v16);
  if (v4)
  {
LABEL_20:
    v14 = v4;
    goto LABEL_14;
  }

  if (!v19)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v21 = 0;
    v22 = 0;
    context = a1;
    v6 = OUTLINED_FUNCTION_1_170(DerivedStorage);
    dispatch_sync_f(v6, &context, v7);
    v8 = v22;
    if (v21)
    {
      FigPlayerGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v9 = OUTLINED_FUNCTION_104_0();
        v10(v9);
      }
    }

    if (v8 && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      v12 = v16;
      v11 = cf;
      FigPlayerGetFigBaseObject();
      CMBaseObjectSetProperty(v13, v11, v12);
    }
  }

  v14 = 0;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

void surrogatePlayer_invalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 32))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_7_88();
      FigNotificationCenterRemoveWeakListener();
      FigPlayerGetFigBaseObject();
      if (v3)
      {
        v4 = v3;
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v5)
        {
          v5(v4);
        }
      }
    }

    if (v2[5])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_7_88();
      FigNotificationCenterRemoveWeakListener();
      FigPlayerGetFigBaseObject();
      if (v6)
      {
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v8(v7);
        }
      }
    }

    v9 = v2[18];
    if (v9)
    {
      CFRelease(v9);
      v2[18] = 0;
    }

    if (v2[6])
    {
      FigCFWeakReferenceTableApplyFunction();
    }

    v10 = v2[10];
    if (v10)
    {

      CFDictionaryRemoveAllValues(v10);
    }
  }
}

void surrogatePlayer_realPlayerNotificationWeakCallbackInternal(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 88);
  v8 = !v7 || v7 == v3;
  if (!v8 && !FigCFEqual())
  {
    return;
  }

  if (FigCFEqual())
  {
    cf[0] = 0;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(v3, 0, cf);
      v10 = cf[0];
      if (cf[0])
      {
        goto LABEL_15;
      }
    }

    v11 = CMBaseObjectGetDerivedStorage();
    if (CFArrayGetCount(*(v11 + 56)) >= 1)
    {
      CFArrayGetValueAtIndex(*(v11 + 56), 0);
      v12 = CMBaseObjectGetDerivedStorage();
      if (!*(v12 + 162) && !*(v12 + 160))
      {
        v28 = OUTLINED_FUNCTION_415_0();
        surrogatePlayer_initiateLoadingOfItemAssetTypeOnQ(v28, v29, 1);
      }
    }

    v10 = cf[0];
    if (cf[0])
    {
LABEL_15:
      CFRelease(v10);
    }

    v13 = CFDictionaryGetValue(v4, @"ReasonForCurrentItemDidChange");
    if (!*(v6 + 104) && !FigCFEqual())
    {
      v26 = CMBaseObjectGetDerivedStorage();
      if (CFArrayGetCount(*(v26 + 56)) >= 1)
      {
        CFArrayGetValueAtIndex(*(v26 + 56), 0);
      }

      v27 = CMBaseObjectGetDerivedStorage();
      if (v27 && !*(v27 + 170))
      {
        *(v26 + 112) = 1;
      }
    }

    v14 = *(v6 + 112);
    if (v14 == 2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v4);
      CFDictionarySetValue(MutableCopy, @"ReasonForCurrentItemDidChange", *(v6 + 120));
      v24 = *(v6 + 120);
      *(v6 + 112) = 0;
      if (v24)
      {
        CFRelease(v24);
        *(v6 + 120) = 0;
      }

      v16 = 1;
    }

    else if (v14 == 1)
    {
      replaceNextCurrentItemDidChangeNotification(*a1, v13);
      MutableCopy = 0;
      v16 = 0;
    }

    else
    {
      MutableCopy = 0;
      v16 = 1;
    }

    if (FigCFEqual())
    {
      v16 = *(v6 + 104);
      *(v6 + 104) = 0;
    }

    if (!v16)
    {
      if (!MutableCopy)
      {
        return;
      }

      goto LABEL_36;
    }

    goto LABEL_47;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      CMBaseObjectGetDerivedStorage();
      value = 0;
      if (v4)
      {
        v25 = CFGetTypeID(v4);
        if (v25 == CFDictionaryGetTypeID())
        {
          v30 = CFDictionaryGetValue(v4, @"Remote_NewRate");
          v31 = *MEMORY[0x1E695E480];
          FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 17, &value);
          Mutable = CFDictionaryCreateMutable(v31, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(Mutable, @"Rate", v30);
          CFDictionarySetValue(Mutable, @"SetRateOptions", value);
          cf[0] = v2;
          cf[1] = @"CurrentRate";
          cf[3] = 0;
          cf[4] = 0;
          cf[2] = Mutable;
          surrogatePlayer_setPropertyInCacheInternal(cf);
          if (value)
          {
            CFRelease(value);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }
      }
    }

    goto LABEL_41;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  v18 = *(v17 + 56);
  if (v18)
  {
    Count = CFArrayGetCount(v18);
    if (Count >= 1)
    {
      v20 = Count;
      v21 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v17 + 56), v21);
        v23 = CMBaseObjectGetDerivedStorage();
        if (!*(v23 + 162))
        {
          break;
        }

        if (v20 == ++v21)
        {
          goto LABEL_46;
        }
      }

      if (ValueAtIndex && !*(v23 + 160))
      {
        surrogatePlayer_initiateLoadingOfItemAssetTypeOnQ(v2, ValueAtIndex, 1);
LABEL_41:
        MutableCopy = 0;
        goto LABEL_47;
      }
    }
  }

LABEL_46:
  MutableCopy = 0;
  *(v17 + 96) = 1;
LABEL_47:
  surrogatePlayer_deferPostNotification(v2);
  if (MutableCopy)
  {
LABEL_36:
    CFRelease(MutableCopy);
  }
}

void surrogatePlayer_initiateLoadingOfItemAssetTypeOnQ(uint64_t a1, __CFString *a2, char a3)
{
  v122 = *MEMORY[0x1E69E9840];
  v98 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v16 = v8;
  v101 = 0;
  if (dword_1EAF17870)
  {
    v17 = OUTLINED_FUNCTION_33_27(v8, v9, v10, v11, v12, v13, v14, v15, v95, v96, v97, v98, v99, SWORD2(v99), SBYTE6(v99), SHIBYTE(v99), *v100);
    v3 = HIBYTE(v99);
    os_log_type_enabled(v17, HIBYTE(v99));
    OUTLINED_FUNCTION_37();
    if (v4)
    {
      if (a1)
      {
        v18 = a1;
        v19 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v18 = 0;
        v19 = "";
      }

      v20 = *(DerivedStorage + 64);
      if (v98)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v102) = 136316418;
      OUTLINED_FUNCTION_47();
      *(&v103 + 6) = v18;
      HIWORD(v103) = 2082;
      v104 = v19;
      *v105 = v21;
      *&v105[2] = v22;
      *&v105[10] = v21;
      *&v105[12] = v20;
      *&v105[20] = 2082;
      *&v105[22] = v23;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v24, v25, v26, v27, v28, v17, HIBYTE(v99), v29);
      a1 = v18;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449(v30, v31, v32, v33, v34);
  }

  if (!*v16 && !*DerivedStorage)
  {
    *(DerivedStorage + 160) = a3;
    VTable = CMBaseObjectGetVTable();
    v44 = *(VTable + 16);
    v43 = VTable + 16;
    if (*(v44 + 24))
    {
      v45 = OUTLINED_FUNCTION_502();
      v43 = v46(v45);
      if (!v43)
      {
        if (!v101)
        {
          return;
        }

        if (dword_1EAF17870)
        {
          v47 = OUTLINED_FUNCTION_33_27(v43, v36, v37, v38, v39, v40, v41, v42, v95, v96, v97, v98, v99, SWORD2(v99), SBYTE6(v99), SHIBYTE(v99), *v100);
          os_log_type_enabled(v47, HIBYTE(v99));
          OUTLINED_FUNCTION_28();
          if (v3)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v68 = *(DerivedStorage + 64);
            if (v98)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_47();
            *(&v103 + 6) = a1;
            OUTLINED_FUNCTION_39_21();
            *&v105[2] = v69;
            *&v105[10] = v70;
            *&v105[12] = v68;
            *&v105[20] = v71;
            *&v105[22] = v72;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl(v73, v74, v75, v76, v77, v78, HIBYTE(v99), v79);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v80, v81, v82, v83, v84);
        }

        *(DerivedStorage + 160) = 0;
        LODWORD(v106) = 0;
        LODWORD(v102) = 0;
        if (*(*(CMBaseObjectGetVTable() + 16) + 8))
        {
          v93 = OUTLINED_FUNCTION_178();
          if (!v94(v93))
          {
            surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ(a1, v98);
            return;
          }

          v67 = 0;
        }

        else
        {
          v67 = 0;
        }

        v66 = v98;
        goto LABEL_39;
      }

      v48 = v43;
    }

    else
    {
      v48 = 4294954514;
    }

    if (dword_1EAF17870)
    {
      v49 = OUTLINED_FUNCTION_33_27(v43, v36, v37, v38, v39, v40, v41, v42, v95, v96, v97, v98, v99, SWORD2(v99), SBYTE6(v99), SHIBYTE(v99), *v100);
      os_log_type_enabled(v49, HIBYTE(v99));
      OUTLINED_FUNCTION_28();
      if (v3)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v50 = *(DerivedStorage + 64);
        if (v98)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LODWORD(v102) = 136316418;
        OUTLINED_FUNCTION_47();
        *(&v103 + 6) = a1;
        OUTLINED_FUNCTION_39_21();
        *&v105[2] = v51;
        *&v105[10] = v52;
        *&v105[12] = v50;
        *&v105[20] = v53;
        *&v105[22] = v54;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v55, v56, v57, v58, v59, v49, HIBYTE(v99), v60);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417(v61, v62, v63, v64, v65);
    }

    *(DerivedStorage + 160) = 0;
    v66 = v98;
    v67 = v48;
LABEL_39:
    surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(v66, v67, 0, 0);
    v85 = OUTLINED_FUNCTION_177();
    surrogatePlayer_respondToFailedLoadingOfItemAssetTypeOnQ(v85, v86, v87, v88, v89, v90, v91, v92, v95, v96, v97, v98, SBYTE2(v98), BYTE3(v98), SHIDWORD(v98), v99, SHIDWORD(v99), *v100, *&v100[4], v102, v103, *(&v103 + 1), v104, *v105, *&v105[4], *&v105[8], *&v105[16], *&v105[24], v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
  }
}

uint64_t surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ(uint64_t a1, __CFString *a2)
{
  v403 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  v373 = 0;
  v339 = v2;
  if (dword_1EAF17870)
  {
    OUTLINED_FUNCTION_41_24();
    v15 = OUTLINED_FUNCTION_35_23(*(v7 + 2152), v8, v9, v10, v11, v12, v13, v14, v309, v314, v319, v324, v329, v334, v2, v344, v349[0], v349[1], v358, v363, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    os_log_type_enabled(v15, type[0]);
    OUTLINED_FUNCTION_46();
    if (v6)
    {
      if (a1)
      {
        v16 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v16 = "";
      }

      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v388 = 136316418;
      OUTLINED_FUNCTION_56_16();
      v389 = v16;
      OUTLINED_FUNCTION_83_8(v17);
      *&v390[20] = 1024;
      *(v19 + 54) = v18;
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v28, v29, v30, v31, v32);
  }

  FigSimpleMutexLock();
  if (*DerivedStorage || *v6)
  {
    v34 = 0;
    v38 = 0;
    RealItem = 4294954511;
    goto LABEL_189;
  }

  v6[160] = 0;
  *&v399 = 0;
  *v388 = 0;
  cf[0] = 0;
  v33 = surrogatePlaybackItem_copyAssetTypeAndRealPlayerAndRealItem(a2, cf, &v399, v388);
  v34 = v399;
  if (v33)
  {
    RealItem = v33;
    v36 = &dword_1EAF17000;
  }

  else
  {
    v35 = *v388;
    v36 = &dword_1EAF17000;
    if (v399 && *v388)
    {
      RealItem = 0;
    }

    else
    {
      if (v399)
      {
        CFRelease(v399);
        *&v399 = 0;
        v35 = *v388;
      }

      if (v35)
      {
        CFRelease(v35);
        *v388 = 0;
      }

      v130 = surrogatePlayer_createRealPlayerOnQ(a1, cf[0], &v399);
      v34 = v399;
      if (v130)
      {
        RealItem = v130;
      }

      else
      {
        OUTLINED_FUNCTION_627();
        RealItem = surrogatePlaybackItem_createRealItem();
        v34 = v399;
      }
    }
  }

  v363 = v6;
  *&v399 = 0;
  v38 = *v388;
  *v388 = 0;
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (RealItem)
  {
    goto LABEL_99;
  }

  v39 = OUTLINED_FUNCTION_177();
  RealItem = surrogatePlayer_updateItemsToPrebufferOnRealPlayers(v39, v40, v41, v42, v43, v44, v45, v46, v309, v314, v319, v324, SBYTE2(v324), BYTE3(v324), SHIDWORD(v324), v329, SHIDWORD(v329), v334, SWORD2(v334), v339, v344, v349[0], v349[1], v358, v6, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, *type, *&type[8], v383, v384, cf[0], cf[1], v386, v387, *v388, *&v388[8], *&v388[16], v389, *v390, *&v390[8], *&v390[16], *&v390[24], v391, *v392);
  IndexOfItem = surrogatePlayer_getIndexOfItem(DerivedStorage, a2);
  v55 = IndexOfItem;
  v368 = v34;
  if (dword_1EAF17870)
  {
    LODWORD(v344) = RealItem;
    v56 = OUTLINED_FUNCTION_20_34(IndexOfItem, v48, v49, v50, v51, v52, v53, v54, v309, v314, v319, v324, v329, v334, v339, v344, DerivedStorage, v349[1], v358, v363, v34, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    v57 = cf[0];
    v58 = type[0];
    os_log_type_enabled(v56, type[0]);
    OUTLINED_FUNCTION_53_17();
    if (v60)
    {
      v61 = v59;
    }

    else
    {
      v61 = v57;
    }

    if (v61)
    {
      if (a1)
      {
        v62 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v62 = "";
      }

      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_85_6();
      OUTLINED_FUNCTION_14_56();
      v389 = v62;
      *v390 = v63;
      *(v64 + 34) = a2;
      *&v390[10] = v65;
      *(v64 + 44) = v66;
      *&v390[20] = 1024;
      *(v64 + 54) = v55;
      *&v390[26] = v63;
      *(v64 + 60) = v368;
      WORD2(v391) = v63;
      *(v64 + 70) = v38;
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v67, v68, v69, v70, v71, v72, v58, v73);
      OUTLINED_FUNCTION_71_9();
      v36 = &dword_1EAF17000;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0(v74, v75, v76, v77, v78);
    v34 = v368;
    RealItem = v344;
    DerivedStorage = v349[0];
  }

  if (v55 == -1)
  {
    v94 = 1;
    v95 = 1;
LABEL_122:
    v6 = v363;
    goto LABEL_123;
  }

  IndexOfItem = CMBaseObjectGetDerivedStorage();
  if (*(IndexOfItem + 98) && !*(IndexOfItem + 100))
  {
    v6 = v363;
    v363[161] = 1;
    if (!dword_1EAF17870)
    {
      goto LABEL_189;
    }

    OUTLINED_FUNCTION_41_24();
    v114 = OUTLINED_FUNCTION_35_23(*(v36 + 269), v107, v108, v109, v110, v111, v112, v113, v309, v314, v319, v324, v329, v334, v339, v344, v349[0], v349[1], v358, v363, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    OUTLINED_FUNCTION_38_20(v114, v115, v116, v117, v118, v119, v120, v121, v311, v316, v321, v326, v331, v336, v341, v346, v351, v355, v360, v365, v370, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    OUTLINED_FUNCTION_53_17();
    if (v60)
    {
      v123 = v122;
    }

    else
    {
      v123 = v34;
    }

    if (!v123)
    {
      goto LABEL_98;
    }

    if (a1)
    {
      v124 = (CMBaseObjectGetDerivedStorage() + 128);
      if (!a2)
      {
LABEL_97:
        OUTLINED_FUNCTION_85_6();
        OUTLINED_FUNCTION_14_56();
        v389 = v124;
        *v390 = v145;
        *(v146 + 34) = a2;
        *&v390[10] = v147;
        *(v146 + 44) = v148;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v149, v150, v151, v152, v153, v154, v6, v155);
        OUTLINED_FUNCTION_71_9();
LABEL_98:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0(v156, v157, v158, v159, v160);
        v34 = v368;
        goto LABEL_99;
      }
    }

    else
    {
      v124 = "";
      if (!a2)
      {
        goto LABEL_97;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_97;
  }

  v344 = v38;
  if (!v55)
  {
    if (*(DerivedStorage + 88) == v34)
    {
LABEL_120:
      v94 = 0;
      v95 = 0;
      goto LABEL_121;
    }

    v349[0] = DerivedStorage;
    if (!dword_1EAF17870)
    {
LABEL_103:
      v177 = *(DerivedStorage + 32);
      if (v34 == v177)
      {
        v177 = *(DerivedStorage + 40);
      }

      if (v177)
      {
        v178 = *MEMORY[0x1E695E480];
        SInt32 = FigCFNumberCreateSInt32();
        FPSupport_CreateSetRateOptions(v178, 16, &v373);
        if (*(*(CMBaseObjectGetVTable() + 16) + 104))
        {
          v180 = OUTLINED_FUNCTION_151_1();
          v181(v180);
        }

        v334 = @"VideoLayerArray";
        FigPlayerGetFigBaseObject();
        v183 = v182;
        v184 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v184)
        {
          v184(v183, @"VideoLayerArray", 0);
        }

        FigPlayerGetFigBaseObject();
        v186 = v185;
        v187 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v187)
        {
          v187(v186, @"VideoTargetArray", 0);
        }

        FigPlayerGetFigBaseObject();
        v189 = v188;
        v190 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v190)
        {
          v190(v189, @"RequiresNumVideoSlots", SInt32);
        }

        FigPlayerGetFigBaseObject();
        v192 = v191;
        v193 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v193)
        {
          v193(v192, @"ClosedCaptionLayerArray", 0);
        }

        if (SInt32)
        {
          CFRelease(SInt32);
        }

        v34 = v368;
      }

      *(v349[0] + 88) = v34;
      *(v349[0] + 96) = 0;
      v194 = OUTLINED_FUNCTION_151_1();
      surrogatePlayer_setRealPlayerPropertyFromCache(v194, v195, v196);
      v197 = OUTLINED_FUNCTION_151_1();
      surrogatePlayer_setRealPlayerPropertyFromCache(v197, v198, @"VideoTargetArray");
      v199 = OUTLINED_FUNCTION_151_1();
      DerivedStorage = v349[0];
      surrogatePlayer_setRealPlayerPropertyFromCache(v199, v200, @"ClosedCaptionLayerArray");
      v201 = OUTLINED_FUNCTION_151_1();
      IndexOfItem = surrogatePlayer_setRealPlayerPropertyFromCache(v201, v202, @"RequiresNumVideoSlots");
      goto LABEL_120;
    }

    v96 = OUTLINED_FUNCTION_20_34(IndexOfItem, v48, v49, v50, v51, v52, v53, v54, v309, v314, v319, v324, v329, v334, v339, v38, DerivedStorage, v349[1], v358, v363, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    OUTLINED_FUNCTION_38_20(v96, v97, v98, v99, v100, v101, v102, v103, v310, v315, v320, v325, v330, v335, v340, v345, v350, v354, v359, v364, v369, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    OUTLINED_FUNCTION_53_17();
    if (v60)
    {
      v105 = v104;
    }

    else
    {
      v105 = v34;
    }

    if (!v105)
    {
LABEL_102:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_345_0(v172, v173, v174, v175, v176);
      v34 = v368;
      DerivedStorage = v349[0];
      goto LABEL_103;
    }

    if (a1)
    {
      v106 = (CMBaseObjectGetDerivedStorage() + 128);
      if (!a2)
      {
LABEL_101:
        *v388 = 136316674;
        OUTLINED_FUNCTION_56_16();
        v389 = v106;
        OUTLINED_FUNCTION_83_8(v161);
        *&v390[20] = v162;
        *(v164 + 54) = v163;
        *&v390[30] = v162;
        v391 = v368;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v165, v166, v167, v168, v169, v170, 0, v171);
        OUTLINED_FUNCTION_71_9();
        goto LABEL_102;
      }
    }

    else
    {
      v106 = "";
      if (!a2)
      {
        goto LABEL_101;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_101;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v55 - 1);
  IndexOfItem = CMBaseObjectGetDerivedStorage();
  v80 = IndexOfItem;
  if (!*(IndexOfItem + 162) || *(IndexOfItem + 72) != v34)
  {
    if (dword_1EAF17870)
    {
      v81 = DerivedStorage;
      OUTLINED_FUNCTION_41_24();
      v90 = OUTLINED_FUNCTION_35_23(*(v82 + 2152), v83, v84, v85, v86, v87, v88, v89, v309, v314, v319, v324, v329, a2, v339, v38, v349[0], v349[1], v358, v363, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
      v91 = cf[0];
      HIDWORD(v329) = type[0];
      if (os_log_type_enabled(v90, type[0]))
      {
        v92 = v91;
      }

      else
      {
        v92 = v91 & 0xFFFFFFFE;
      }

      if (v92)
      {
        if (a1)
        {
          v93 = (CMBaseObjectGetDerivedStorage() + 128);
        }

        else
        {
          v93 = "";
        }

        v324 = v93;
        if (v334)
        {
          v131 = (CMBaseObjectGetDerivedStorage() + 175);
        }

        else
        {
          v131 = "";
        }

        v132 = *(v80 + 72);
        if (ValueAtIndex)
        {
          v133 = (CMBaseObjectGetDerivedStorage() + 175);
        }

        else
        {
          v133 = "";
        }

        v134 = *(v80 + 162);
        v135 = *(v81 + 88);
        if (*(v80 + 72) == v368)
        {
          v136 = "MATCHES";
        }

        else
        {
          v136 = "does NOT match";
        }

        *v388 = 136317698;
        v137 = "previous item IS enqueued with real player";
        *&v388[4] = "surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ";
        *&v388[12] = 2048;
        *&v388[14] = a1;
        if (!v134)
        {
          v137 = "previous item is NOT enqueued with real player";
        }

        *&v388[22] = 2082;
        v389 = v324;
        *v390 = 2048;
        *&v390[2] = v334;
        *&v390[10] = 2082;
        *&v390[12] = v131;
        *&v390[20] = 2048;
        *&v390[22] = v132;
        v34 = v368;
        *&v390[30] = 2048;
        v391 = ValueAtIndex;
        *v392 = 2082;
        *&v392[2] = v133;
        v393 = 2082;
        v394 = v136;
        v395 = 2082;
        v396 = v137;
        v397 = 2048;
        v398 = v135;
        OUTLINED_FUNCTION_51();
        DerivedStorage = v81;
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v138, v139, v140, v141, v142, v143, type[0], v144);
      }

      else
      {
        DerivedStorage = v81;
      }

      v6 = v363;
      OUTLINED_FUNCTION_21_1();
      v94 = 1;
      IndexOfItem = fig_log_call_emit_and_clean_up_after_send_and_compose();
      v95 = 1;
      v38 = v344;
      a2 = v334;
      goto LABEL_123;
    }

    v94 = 1;
    v95 = 1;
    goto LABEL_121;
  }

  v95 = dword_1EAF17870;
  if (!dword_1EAF17870)
  {
    v94 = 1;
LABEL_121:
    v38 = v344;
    goto LABEL_122;
  }

  v125 = OUTLINED_FUNCTION_20_34(IndexOfItem, v48, v49, v50, v51, v52, v53, v54, v309, v314, v319, v324, v329, v334, v339, v38, DerivedStorage, v349[1], v358, v363, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
  v126 = cf[0];
  v127 = type[0];
  if (os_log_type_enabled(v125, type[0]))
  {
    v128 = v126;
  }

  else
  {
    v128 = v126 & 0xFFFFFFFE;
  }

  if (v128)
  {
    if (a1)
    {
      v129 = (CMBaseObjectGetDerivedStorage() + 128);
    }

    else
    {
      v129 = "";
    }

    v334 = v129;
    if (a2)
    {
      v261 = (CMBaseObjectGetDerivedStorage() + 175);
    }

    else
    {
      v261 = "";
    }

    if (ValueAtIndex)
    {
      CMBaseObjectGetDerivedStorage();
    }

    OUTLINED_FUNCTION_85_6();
    OUTLINED_FUNCTION_14_56();
    v389 = v334;
    *v390 = v262;
    *(v263 + 34) = a2;
    *&v390[10] = v264;
    *(v263 + 44) = v261;
    *&v390[20] = v262;
    *(v263 + 54) = ValueAtIndex;
    *&v390[30] = v264;
    v391 = v265;
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_38();
    _os_log_send_and_compose_impl(v266, v267, v268, v269, v270, v271, v127, v272);
  }

  v6 = v363;
  v34 = v368;
  OUTLINED_FUNCTION_21_1();
  v94 = 1;
  IndexOfItem = fig_log_call_emit_and_clean_up_after_send_and_compose();
  v95 = 0;
  v38 = v344;
  DerivedStorage = v349[0];
LABEL_123:
  if (v6[162])
  {
    if (!dword_1EAF17870)
    {
      goto LABEL_189;
    }

    v286 = OUTLINED_FUNCTION_20_34(IndexOfItem, v48, v49, v50, v51, v52, v53, v54, v309, v314, v319, v324, v329, v334, v339, v344, v349[0], v349[1], v358, v363, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    OUTLINED_FUNCTION_38_20(v286, v287, v288, v289, v290, v291, v292, v293, v313, v318, v323, v328, v333, v338, v343, v348, v353, v357, v362, v367, v372, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    OUTLINED_FUNCTION_53_17();
    if (v60)
    {
      v295 = v294;
    }

    else
    {
      v295 = v34;
    }

    if (v295)
    {
      *v388 = 136315138;
      *&v388[4] = "surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ";
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v296, v297, v298, v299, v300, v301, v6, v302);
      OUTLINED_FUNCTION_71_9();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0(v303, v304, v305, v306, v307);
    v34 = v368;
LABEL_99:
    v6 = v363;
    goto LABEL_189;
  }

  if (v95)
  {
    goto LABEL_140;
  }

  *(DerivedStorage + 96) = 0;
  if (dword_1EAF17870)
  {
    v203 = OUTLINED_FUNCTION_20_34(IndexOfItem, v48, v49, v50, v51, v52, v53, v54, v309, v314, v319, v324, v329, v334, v339, v344, v349[0], v349[1], v358, v363, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    OUTLINED_FUNCTION_38_20(v203, v204, v205, v206, v207, v208, v209, v210, v312, v317, v322, v327, v332, v337, v342, v347, v352, v356, v361, v366, v371, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, type[0], *&type[8], v383, v384, cf[0]);
    OUTLINED_FUNCTION_53_17();
    if (v60)
    {
      v212 = v211;
    }

    else
    {
      v212 = v34;
    }

    if (!v212)
    {
      goto LABEL_136;
    }

    if (a1)
    {
      v213 = (CMBaseObjectGetDerivedStorage() + 128);
      if (!a2)
      {
LABEL_135:
        OUTLINED_FUNCTION_85_6();
        OUTLINED_FUNCTION_14_56();
        v389 = v213;
        *v390 = v214;
        *(v215 + 34) = a2;
        *&v390[10] = v214;
        *(v215 + 44) = v38;
        *&v390[20] = v216;
        *(v215 + 54) = v217;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v218, v219, v220, v221, v222, v223, v6, v224);
        OUTLINED_FUNCTION_71_9();
LABEL_136:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0(v225, v226, v227, v228, v229);
        v6 = v363;
        v34 = v368;
        goto LABEL_137;
      }
    }

    else
    {
      v213 = "";
      if (!a2)
      {
        goto LABEL_135;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_135;
  }

LABEL_137:
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    RealItem = 4294954514;
    goto LABEL_189;
  }

  v230 = OUTLINED_FUNCTION_184();
  RealItem = v231(v230);
  if (RealItem)
  {
    goto LABEL_189;
  }

  v6[162] = 1;
LABEL_140:
  surrogatePlayer_setCachedActionAtEndOnRealPlayerOnQ(a1, v48, v49, v50, v51, v52, v53, v54, v309, v314, v319, v324, v329, SHIDWORD(v329), v334, SWORD2(v334), v339, v344, v349[0], v349[1], v358, v363, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, *type, *&type[8], v383, v384, cf[0], cf[1], v386, v387, *v388, *&v388[8], *&v388[16], v389, *v390, *&v390[8], *&v390[16], *&v390[24]);
  if (v94)
  {
    goto LABEL_189;
  }

  v232 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v232 + 80), @"CurrentRate");
  if (!Value)
  {
    goto LABEL_188;
  }

  v234 = Value;
  valuePtr = 0;
  v235 = CFDictionaryGetValue(Value, @"Rate");
  if (!v235)
  {
    OUTLINED_FUNCTION_79_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v309, v314, v319);
LABEL_208:
    RealItem = v308;
    goto LABEL_189;
  }

  CFNumberGetValue(v235, kCFNumberFloat32Type, &valuePtr + 4);
  HIDWORD(v374) = 0;
  v236 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v236)
  {
    v237 = v236(v34, &v374 + 4);
    if (!v237)
    {
      if (*(&v374 + 1) == *(&valuePtr + 1))
      {
LABEL_188:
        RealItem = 0;
        goto LABEL_189;
      }

      if (!CFDictionaryGetValue(v234, @"AnchorTime"))
      {
        v273 = CFDictionaryGetValue(v234, @"SetRateOptions");
        if (v273)
        {
          MutableCopy = v273;
          if (FigCFDictionaryGetInt32IfPresent() && valuePtr == 17)
          {
            CFRetain(MutableCopy);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
            FigCFDictionarySetInt32();
          }

          v34 = v368;
        }

        else
        {
          *&v399 = 0;
          FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 17, &v399);
          MutableCopy = v399;
        }

        v275 = *(&valuePtr + 1);
        v276 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v276)
        {
          v276(v34, MutableCopy, v275);
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_188;
      }

      v238 = CMBaseObjectGetDerivedStorage();
      v239 = CFDictionaryGetValue(*(v238 + 80), @"CurrentRate");
      if (v239)
      {
        v240 = v239;
        HIDWORD(v387) = 0;
        if (!FigCFDictionaryGetFloat32IfPresent())
        {
          v6 = v363;
LABEL_216:
          OUTLINED_FUNCTION_79_11();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v309, v314, v319);
          v34 = v368;
          if (!v308)
          {
            goto LABEL_188;
          }

          goto LABEL_208;
        }

        if (CFDictionaryGetValue(v240, @"AnchorTime"))
        {
          *v349 = *MEMORY[0x1E6960C70];
          *cf = *MEMORY[0x1E6960C70];
          v241 = *(MEMORY[0x1E6960C70] + 16);
          v386 = v241;
          if (FigCFDictionaryGetCMTimeIfPresent())
          {
            if ((BYTE4(cf[1]) & 1) != 0 && (BYTE4(cf[1]) & 0x1D) != 1)
            {
              v6 = v363;
            }

            else
            {
              *type = *v349;
              v383 = v241;
              if (FigCFDictionaryGetCMTimeIfPresent())
              {
                if ((type[12] & 1) != 0 && (type[12] & 0x1D) != 1)
                {
                  v6 = v363;
                }

                else
                {
                  HIDWORD(v381) = 0;
                  if (FigCFDictionaryGetInt32IfPresent())
                  {
                    v242 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v240);
                    CFDictionaryRemoveValue(v242, @"AnchorTime");
                    *&v399 = a1;
                    *(&v399 + 1) = @"CurrentRate";
                    v401 = 0;
                    v402 = 0;
                    v400 = v242;
                    surrogatePlayer_setPropertyInCacheInternal(&v399);
                    CFRelease(v242);
                    v243 = *(&v387 + 1);
                    v244 = HIDWORD(v381);
                    v379 = *cf;
                    v380 = v386;
                    v376 = *type;
                    v377 = v383;
                    v34 = v368;
                    v245 = *(*(CMBaseObjectGetVTable() + 16) + 88);
                    if (v245)
                    {
                      v399 = v379;
                      v400 = v380;
                      *v388 = v376;
                      *&v388[16] = v377;
                      v245(v368, &v399, v388, v244, v243);
                    }

                    goto LABEL_159;
                  }

                  v6 = v363;
                }
              }

              else
              {
                v6 = v363;
              }
            }
          }

          else
          {
            v6 = v363;
          }

          goto LABEL_216;
        }
      }

LABEL_159:
      v6 = v363;
      goto LABEL_188;
    }

    v246 = v237;
  }

  else
  {
    v246 = 4294954514;
  }

  OUTLINED_FUNCTION_41_24();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v248 = cf[0];
  v249 = type[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
  {
    v250 = v248;
  }

  else
  {
    v250 = v248 & 0xFFFFFFFE;
  }

  if (v250)
  {
    *v388 = 136315138;
    *&v388[4] = "surrogatePlayer_maybeSetRealPlayerRateFromCache";
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_23();
    _os_log_send_and_compose_impl(v251, v252, v253, v254, v255, v256, v249, v257);
  }

  v6 = v363;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_417(v258, 0, 1, v259, v260);
  RealItem = v246;
LABEL_189:
  FigSimpleMutexUnlock();
  if (v373)
  {
    CFRelease(v373);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (RealItem)
  {
    surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(a2, RealItem, 0, 0);
    v278 = OUTLINED_FUNCTION_177();
    surrogatePlayer_respondToFailedLoadingOfItemAssetTypeOnQ(v278, v279, v280, v281, v282, v283, v284, v285, v309, v314, v319, v324, SBYTE2(v324), BYTE3(v324), SHIDWORD(v324), v329, SHIDWORD(v329), v334, SWORD2(v334), v339, v344, v349[0], v349[1], v358, SWORD2(v358), v363, v368, v373, v374, valuePtr, v376, *(&v376 + 1), v377, v378, v379, *(&v379 + 1), v380, v381, *type, *&type[8], v383, v384, cf[0], cf[1], v386, v387, *v388, *&v388[8], *&v388[16], v389, *v390, *&v390[8], *&v390[16], *&v390[24], v391, *v392);
  }

  v6[160] = 0;
  return RealItem;
}