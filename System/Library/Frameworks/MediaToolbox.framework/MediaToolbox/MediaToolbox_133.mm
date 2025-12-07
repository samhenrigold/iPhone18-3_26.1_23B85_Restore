uint64_t manifoldRemote_invalidate(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0, v6);
    v2 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v1 = FigXPCCreateBasicMessage();
    if (v1)
    {
      v2 = v1;
    }

    else
    {
      v2 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v2;
}

uint64_t manifoldRemote_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigXPCRemoteClientDisassociateObject() && !*(DerivedStorage + 8) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 56) = 0;
  }

  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 64) = 0;
  }

  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 72) = 0;
  }

  v6 = *(DerivedStorage + 80);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 80) = 0;
  }

  v7 = *(DerivedStorage + 88);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 88) = 0;
  }

  v8 = *(DerivedStorage + 96);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 96) = 0;
  }

  v9 = *(DerivedStorage + 104);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 104) = 0;
  }

  v10 = *(DerivedStorage + 112);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 112) = 0;
  }

  v11 = *(DerivedStorage + 120);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 120) = 0;
  }

  v12 = *(DerivedStorage + 128);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 128) = 0;
  }

  return FigXPCRelease();
}

uint64_t manifoldRemote_injectData(const void *a1, int64_t a2, unsigned int a3, void *a4)
{
  v31 = 0;
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v29 = 0;
  if (a1)
  {
    CFRetain(a1);
  }

  v26 = 0;
  cf = 0;
  if (*(DerivedStorage + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, cf, v28);
    goto LABEL_48;
  }

  ServerPID = FigXPCCreateBasicMessage();
  if (ServerPID)
  {
    goto LABEL_48;
  }

  xpc_dictionary_set_int64(xdict, "dataStartReference", a2);
  xpc_dictionary_set_uint64(xdict, "injectFlags", a3);
  v10 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
  v11 = CMGetAttachment(a4, @"FMFD_BufferAudioDecryptor", 0);
  if (!v10)
  {
    goto LABEL_37;
  }

  v12 = v11;
  FigBasicAESCPECryptorGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    ServerPID = FigXPCRemoteClientGetServerPID();
    if (!ServerPID)
    {
      ServerPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID();
      if (!ServerPID)
      {
        xpc_dictionary_set_uint64(xdict, "cryptorObjectID", value);
        if (!v12)
        {
          goto LABEL_37;
        }

        ServerPID = FigXPCRemoteClientGetServerPID();
        if (!ServerPID)
        {
          ServerPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID();
          if (!ServerPID)
          {
            xpc_dictionary_set_uint64(xdict, "audioCryptorObjectID", value);
            goto LABEL_37;
          }
        }
      }
    }

    goto LABEL_48;
  }

  xpc_dictionary_set_BOOL(xdict, "UseAESCryptor", 1);
  if (FigCFEqual())
  {
    xpc_dictionary_set_BOOL(xdict, "UseExistingAESCryptor", 1);
  }

  else
  {
    v13 = *(DerivedStorage + 96);
    *(DerivedStorage + 96) = v10;
    CFRetain(v10);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(DerivedStorage + 104);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 104) = 0;
    }

    v15 = *(DerivedStorage + 112);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 112) = 0;
    }
  }

  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    goto LABEL_49;
  }

  v17 = *MEMORY[0x1E695E480];
  ServerPID = v16(v10, *MEMORY[0x1E69610D8], *MEMORY[0x1E695E480], &cf);
  if (ServerPID)
  {
    goto LABEL_48;
  }

  if (!FigCFEqual())
  {
    ServerPID = FigXPCMessageSetCFData();
    if (ServerPID)
    {
      goto LABEL_48;
    }

    v18 = *(DerivedStorage + 104);
    v19 = cf;
    *(DerivedStorage + 104) = cf;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
LABEL_49:
    v24 = 4294954514;
    goto LABEL_50;
  }

  ServerPID = v20(v10, *MEMORY[0x1E69610C8], v17, &v26);
  if (ServerPID)
  {
    goto LABEL_48;
  }

  if (FigCFEqual())
  {
    goto LABEL_37;
  }

  ServerPID = FigXPCMessageSetCFData();
  if (ServerPID)
  {
LABEL_48:
    v24 = ServerPID;
    goto LABEL_50;
  }

  v21 = *(DerivedStorage + 112);
  v22 = v26;
  *(DerivedStorage + 112) = v26;
  if (v22)
  {
    CFRetain(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_37:
  if (CMGetAttachment(a4, @"FBPAKey_TimedData", 0))
  {
    xpc_dictionary_set_BOOL(xdict, "timedMetadata", 1);
  }

  if (a4 && CMBlockBufferIsEmpty(a4))
  {
    v23 = FigXPCMessageSetCFBoolean();
  }

  else
  {
    v23 = FigXPCMessageSetBlockBufferUsingMemoryOrigin();
  }

  v24 = v23;
  if (!v23)
  {
    ServerPID = FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage();
    if (!ServerPID)
    {
      ServerPID = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!ServerPID)
      {
        ServerPID = FigMemoryOriginUpdateRecipientStateFromXPCMessage();
        if (!ServerPID)
        {
          ServerPID = manifoldRemote_processPendingCallbacks(a1, v31);
        }
      }
    }

    goto LABEL_48;
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v24;
}

uint64_t manifoldRemote_noteStreamEnd(uint64_t a1)
{
  if (*(OUTLINED_FUNCTION_8_65(a1) + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v1 = FigXPCCreateBasicMessage();
    if (!v1)
    {
      FigXPCMessageSetOSStatus();
      v1 = OUTLINED_FUNCTION_9_9(_MergedGlobals_110);
      if (!v1)
      {
        v1 = OUTLINED_FUNCTION_7_81(0, v2, v3, v4, v5, v6, v7, v8, v11);
      }
    }
  }

  v9 = v1;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t manifoldRemote_copyCurrentFormatDescriptionForTrack(uint64_t a1)
{
  if (*(OUTLINED_FUNCTION_8_65(a1) + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v1 = FigXPCCreateBasicMessage();
    if (!v1)
    {
      FigXPCMessageSetInt32();
      v1 = OUTLINED_FUNCTION_9_9(_MergedGlobals_110);
      if (!v1)
      {
        FigGetAllocatorForMedia();
        v1 = FigXPCMessageCopyFormatDescription2();
        if (!v1)
        {
          v1 = OUTLINED_FUNCTION_7_81(0, v2, v3, v4, v5, v6, v7, v8, v11);
        }
      }
    }
  }

  v9 = v1;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t manifoldRemote_installCallbacksForTrack(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  v24 = 0;
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (*(DerivedStorage + 8))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
    goto LABEL_21;
  }

  v9 = DerivedStorage;
  v10 = FigXPCCreateBasicMessage();
  if (v10)
  {
LABEL_21:
    v16 = v10;
    goto LABEL_18;
  }

  FigXPCMessageSetInt32();
  if (a3)
  {
    if (*a3)
    {
      xpc_dictionary_set_BOOL(xdict, "installFormatDescriptionOrDecryptorChangedCallback", 1);
      v21 = *a3;
    }

    if (a3[1])
    {
      xpc_dictionary_set_BOOL(xdict, "installPushSampleBufferCallback", 1);
      v22 = a3[1];
    }

    v12 = a3[2];
    v11 = a3 + 2;
    if (v12)
    {
      xpc_dictionary_set_BOOL(xdict, "installTrackEndedCallback", 1);
      v23 = *v11;
    }
  }

  __copy_constructor_8_8_pa0_6124_0_pa0_43336_8_pa0_40812_16(&v18, &v21);
  if (qword_1ED4CB798 != -1)
  {
    dispatch_once(&qword_1ED4CB798, &__block_literal_global_86);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (!Instance)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  __copy_constructor_8_8_pa0_6124_0_pa0_43336_8_pa0_40812_16((Instance + 16), &v18);
  v14[5] = a4;
LABEL_14:
  CFDictionarySetValue(*(v9 + 16), a2, v14);
  v15 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v15)
  {
    v15 = manifoldRemote_processPendingCallbacks(a1, v24);
  }

  v16 = v15;
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_18:
  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

uint64_t manifoldRemote_flush(uint64_t a1)
{
  if (*(OUTLINED_FUNCTION_8_65(a1) + 8))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v1 = FigXPCCreateBasicMessage();
    if (!v1)
    {
      v1 = OUTLINED_FUNCTION_9_9(_MergedGlobals_110);
      if (!v1)
      {
        v1 = OUTLINED_FUNCTION_7_81(0, v2, v3, v4, v5, v6, v7, v8, v11);
      }
    }
  }

  v9 = v1;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t manifoldRemote_copyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8) || !a3 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_12:
    v10 = v8;
    goto LABEL_10;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    goto LABEL_12;
  }

  FigXPCMessageSetInt32();
  v8 = FigXPCMessageSetCFString();
  if (v8)
  {
    goto LABEL_12;
  }

  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v8)
  {
    goto LABEL_12;
  }

  v9 = FigXPCMessageCopyCFObject();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = manifoldRemote_processPendingCallbacks(a1, 0);
    if (!v10)
    {
      *a5 = 0;
    }
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t manifoldRemote_reannounceUnregisteredTracks(uint64_t a1)
{
  if (*(OUTLINED_FUNCTION_8_65(a1) + 8))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v1 = FigXPCCreateBasicMessage();
    if (!v1)
    {
      v1 = OUTLINED_FUNCTION_9_9(_MergedGlobals_110);
      if (!v1)
      {
        v1 = OUTLINED_FUNCTION_7_81(0, v2, v3, v4, v5, v6, v7, v8, v11);
      }
    }
  }

  v9 = v1;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t manifoldRemote_processPendingCallbacks(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "pendingCallbacks");
  if (!value)
  {
    return 0;
  }

  v5 = value;
  count = xpc_array_get_count(value);
  if (!count)
  {
    return 0;
  }

  v7 = count;
  v94 = v2;
  v8 = 0;
  v9 = "callbackType";
  v109 = "trackID";
  key = "pushSampleFlags";
  v100 = "trackEndResult";
  v98 = "dataStartReference";
  v102 = "cryptorObjectID";
  v103 = "formatDescription";
  v101 = "useDummyAESCryptor";
  v97 = *MEMORY[0x1E695E480];
  v96 = @"com.apple.basicAES";
  v95 = *MEMORY[0x1E69610D8];
  v105 = "errorLogEntry";
  v106 = "error";
  v104 = "mediaType";
  v107 = count;
  v108 = "callbackType";
  while (2)
  {
    v10 = xpc_array_get_value(v5, v8);
    if (v10)
    {
      v11 = v10;
      switch(xpc_dictionary_get_uint64(v10, v9))
      {
        case 0u:
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v13 = *(DerivedStorage + 32);
          if (v13)
          {
            v13(a1, *(DerivedStorage + 48));
          }

          goto LABEL_35;
        case 1u:
          v57 = CMBaseObjectGetDerivedStorage();
          Int32 = FigXPCMessageGetInt32();
          v66 = OUTLINED_FUNCTION_6_93(Int32, v59, v60, v61, v62, v63, v64, v65, v94, v95, v96, v97, v98, key, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
          v67 = *(v57 + 24);
          if (v67)
          {
            v68 = v67(a1, *(v57 + 48), Int32, v66);
            if (v68)
            {
              return v68;
            }
          }

          goto LABEL_35;
        case 2u:
          v31 = CMBaseObjectGetDerivedStorage();
          v112 = 0;
          v39 = OUTLINED_FUNCTION_6_93(v31, v32, v33, v34, v35, v36, v37, v38, v94, v95, v96, v97, v98, key, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
          OSStatus = FigXPCMessageGetOSStatus();
          v41 = FigXPCMessageCopyCFDictionary();
          if (v41)
          {
            goto LABEL_17;
          }

          v42 = *(v31 + 40);
          if (v42)
          {
            v41 = v42(a1, v39, *(v31 + 48), OSStatus, v112);
LABEL_17:
            v29 = v41;
          }

          else
          {
            v29 = 0;
          }

          v9 = v108;
          v30 = v112;
          if (v112)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        case 3u:
          v43 = CMBaseObjectGetDerivedStorage();
          v111 = 0;
          v112 = 0;
          *bytes = 0;
          v51 = OUTLINED_FUNCTION_6_93(v43, v44, v45, v46, v47, v48, v49, v50, v94, v95, v96, v97, v98, key, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
          v52 = CFDictionaryGetValue(*(v43 + 16), v51);
          if (!v52)
          {
            goto LABEL_62;
          }

          v53 = v52;
          FigGetAllocatorForMedia();
          v54 = FigXPCMessageCopyFormatDescription2();
          if (v54)
          {
            goto LABEL_63;
          }

          uint64 = xpc_dictionary_get_uint64(v11, v102);
          v56 = xpc_dictionary_get_BOOL(v11, v101);
          if (uint64)
          {
            v54 = FigCPECryptorServerCopyCryptorForID();
            if (v54)
            {
              goto LABEL_63;
            }
          }

          else if (v56)
          {
            v82 = (v43 + 128);
            if (!*(v43 + 128))
            {
              v54 = FigCPEProtectorCreateForScheme(v97, v96, 0, v43 + 128);
              if (v54)
              {
                goto LABEL_63;
              }
            }

            v85 = *(v43 + 120);
            v84 = (v43 + 120);
            v83 = v85;
            if (v85)
            {
              goto LABEL_41;
            }

            v87 = *v82;
            v88 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (!v88)
            {
              goto LABEL_60;
            }

            v54 = v88(v87, v97, 1, 0, v84);
            if (v54)
            {
              goto LABEL_63;
            }

            v89 = CFDataCreate(v97, bytes, 1);
            *bytes = v89;
            if (!v89)
            {
LABEL_62:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_63:
              v29 = v54;
              goto LABEL_46;
            }

            v90 = v89;
            v91 = *v84;
            v92 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v92)
            {
LABEL_60:
              v29 = 4294954514;
              goto LABEL_46;
            }

            v54 = v92(v91, v95, v90);
            if (v54)
            {
              goto LABEL_63;
            }

            v83 = *v84;
            if (*v84)
            {
LABEL_41:
              v83 = CFRetain(v83);
            }

            v111 = v83;
          }

          v86 = v53[2];
          if (v86)
          {
            v9 = v108;
            v29 = v86(a1, v51, v53[5], v112, v111);
            goto LABEL_47;
          }

          v29 = 0;
LABEL_46:
          v9 = v108;
LABEL_47:
          v7 = v107;
          if (*bytes)
          {
            CFRelease(*bytes);
          }

          if (v112)
          {
            CFRelease(v112);
          }

          v30 = v111;
          if (v111)
          {
LABEL_33:
            CFRelease(v30);
          }

LABEL_34:
          if (v29)
          {
            return v29;
          }

LABEL_35:
          if (v7 == ++v8)
          {
            return 0;
          }

          continue;
        case 4u:
          v14 = CMBaseObjectGetDerivedStorage();
          v112 = 0;
          v22 = OUTLINED_FUNCTION_6_93(v14, v15, v16, v17, v18, v19, v20, v21, v94, v95, v96, v97, v98, key, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
          v23 = CFDictionaryGetValue(*(v14 + 16), v22);
          if (!v23)
          {
            goto LABEL_64;
          }

          v24 = v23;
          if (!v23[3])
          {
            v9 = v108;
            goto LABEL_35;
          }

          v25 = xpc_dictionary_get_uint64(v11, key);
          int64 = xpc_dictionary_get_int64(v11, v98);
          FigGetAllocatorForMedia();
          v27 = FigXPCMessageCopyCMSampleBuffer();
          v28 = v112;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = (v24[3])(a1, v22, v24[5], v25, int64, v112);
            v28 = v112;
          }

          v7 = v107;
          v9 = v108;
          if (v28)
          {
            v30 = v28;
            goto LABEL_33;
          }

          goto LABEL_34;
        case 5u:
          v69 = CMBaseObjectGetDerivedStorage();
          v77 = OUTLINED_FUNCTION_6_93(v69, v70, v71, v72, v73, v74, v75, v76, v94, v95, v96, v97, v98, key, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
          v78 = CFDictionaryGetValue(*(v69 + 16), v77);
          if (v78)
          {
            v79 = v78;
            if (!v78[4])
            {
              goto LABEL_35;
            }

            v80 = FigXPCMessageGetOSStatus();
            v81 = (v79[4])(a1, v77, v79[5], v80);
          }

          else
          {
LABEL_64:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_6_3();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          v29 = v81;
          goto LABEL_34;
        default:
          return 4294951256;
      }
    }

    break;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_3();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, v95, v96);
  return v68;
}

void manifoldRemote_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void manifoldRemote_setProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t figTTMLRegionConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  value = 0;
  cf = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, cf, v16);
    goto LABEL_24;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v16, &cf);
    if (v8)
    {
      goto LABEL_24;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLStyleCreate(v9, a1, a2, &value);
      if (!v8)
      {
        v10 = *(DerivedStorage + 136);
LABEL_12:
        CFArrayAppendValue(v10, value);
        goto LABEL_14;
      }

      goto LABEL_24;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v11 = CFGetAllocator(*a2);
      v8 = FigTTMLSetCreate(v11, a1, a2, &value);
      if (!v8)
      {
        v10 = *(DerivedStorage + 144);
        goto LABEL_12;
      }

LABEL_24:
      v12 = v8;
      goto LABEL_16;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_24;
  }

LABEL_14:
  v12 = 0;
  if (a3)
  {
    *a3 = value;
    value = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v12;
}

double FigByteFlumeCustomURLCreateWithURL(uint64_t a1, const __CFURL *a2, const void *a3, const void *a4, const void *a5, NSObject *a6, int a7, const void *a8, const void *a9, CFTypeRef *a10)
{
  if (a2 && a10)
  {
    FigByteFlumeGetClassID();
    if (CMDerivedObjectCreate())
    {
      return result;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigByteFlumeBaseInitialize(a1, DerivedStorage, 0);
    if (!v20)
    {
      v21 = FigCFHTTPCreateURLString(a2);
      *(DerivedStorage + 88) = v21;
      if (v21)
      {
        *(DerivedStorage + 144) = 0;
        *(DerivedStorage + 216) = 0;
        *(DerivedStorage + 152) = DerivedStorage + 144;
        *(DerivedStorage + 80) = CFRetain(a2);
        if (a5)
        {
          v23 = CFRetain(a5);
        }

        else
        {
          v23 = 0;
        }

        *(DerivedStorage + 96) = v23;
        if (a8)
        {
          v24 = CFRetain(a8);
        }

        else
        {
          v24 = 0;
        }

        *(DerivedStorage + 48) = v24;
        if (a3)
        {
          v25 = CFRetain(a3);
        }

        else
        {
          v25 = 0;
        }

        *(DerivedStorage + 104) = v25;
        if (a4)
        {
          v26 = CFRetain(a4);
        }

        else
        {
          v26 = 0;
        }

        *(DerivedStorage + 112) = v26;
        *(DerivedStorage + 128) = FigHTTPSchedulerRetain(a6, v22);
        if (a9)
        {
          v27 = CFRetain(a9);
        }

        else
        {
          v27 = 0;
        }

        *(DerivedStorage + 240) = v27;
        *(DerivedStorage + 136) = a7;
        *(DerivedStorage + 120) = 0;
        FigCFDictionaryGetBooleanIfPresent();
        if (a9)
        {
          *(DerivedStorage + 201) = CFDictionaryGetValue(a9, @"FBFCreateOption_DisableNativeHTTPReads") == *MEMORY[0x1E695E4D0];
          Value = CFDictionaryGetValue(a9, @"FBFCreateOption_HTTPRequestOptions");
          v29 = Value;
          if (Value)
          {
            v30 = CFDictionaryGetValue(Value, @"FHRP_ClientBundleIdentifier");
            if (v30)
            {
              v30 = CFRetain(v30);
            }

            *(DerivedStorage + 208) = v30;
            v31 = CFDictionaryGetValue(v29, @"FHRP_ClientAuditToken");
            v29 = FigCFHTTPCopyClientProcessName(v31);
          }

          v32 = CFDictionaryGetValue(a9, @"FBFCreateOption_AlternativeConfigurationOptions");
        }

        else
        {
          v32 = 0;
          v29 = 0;
        }

        FigByteFlumeCreateReportingAgent(DerivedStorage, v32, *(DerivedStorage + 96), v29, *(DerivedStorage + 208), *(DerivedStorage + 290), 0);
        v33 = *(DerivedStorage + 32);
        if (v33)
        {
          v34 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v34)
          {
            v34(v33, 0x1F0B645B8, 0x1F0B3F2B8, 1, 0);
          }
        }

        if (v29)
        {
          CFRelease(v29);
        }

        *a10 = 0;
        return result;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, a10, v35);
    }

    CFRelease(0);
    return result;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t FigByteFlumeCustomURLInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v2 = DerivedStorage;
    FigRetainProxyLockMutex();
    FigRetainProxyInvalidate();
    *(v2 + 216) = 3;
    v3 = *(v2 + 56);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 272);
    if (v5)
    {
      figByteFlumeCancelCustomURLRequest(v2, v5);
    }

    v6 = *(v2 + 144);
    if (v6)
    {
      do
      {
        v8 = v6[11];
        v7 = v6[12];
        v9 = v8 + 12;
        if (!v8)
        {
          v9 = (v2 + 152);
        }

        *v9 = v7;
        *v7 = v8;
        figByteFlumeCancelCustomURLRequest(v2, v6[8]);
        fbfcu_ReleaseReadRequest(v6);
        v6 = v8;
      }

      while (v8);
    }

    v11 = *(v2 + 248);
    v10 = *(v2 + 256);
    *(v2 + 248) = 0;
    FigByteFlumeBaseInvalidate(v2);
    FigRetainProxyUnlockMutex();
    if (v4)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v12)
      {
        v12(v4);
      }

      CFRelease(v4);
    }

    if (v11)
    {
      v11(v10, 0, 4294954364);
    }
  }

  return 0;
}

void FigByteFlumeCustomURLFinalize(uint64_t a1)
{
  FigByteFlumeCustomURLInvalidate(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 48) = 0;
  }

  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 80) = 0;
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 88) = 0;
  }

  v5 = *(DerivedStorage + 104);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 104) = 0;
  }

  v6 = *(DerivedStorage + 112);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 112) = 0;
  }

  v7 = *(DerivedStorage + 120);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 120) = 0;
  }

  FigHTTPSchedulerRelease(*(DerivedStorage + 128));
  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  v9 = *(DerivedStorage + 160);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 160) = 0;
  }

  v10 = *(DerivedStorage + 168);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 168) = 0;
  }

  v11 = *(DerivedStorage + 96);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 96) = 0;
  }

  v12 = *(DerivedStorage + 240);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 240) = 0;
  }

  v13 = *(DerivedStorage + 184);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 184) = 0;
  }

  v14 = *(DerivedStorage + 280);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 280) = 0;
  }

  v15 = *(DerivedStorage + 208);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 208) = 0;
  }

  v16 = *(DerivedStorage + 224);
  if (v16)
  {
    FigByteRateHistoryDispose(v16);
    *(DerivedStorage + 224) = 0;
  }

  v17 = *(DerivedStorage + 64);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 72);
  if (v18)
  {
    CFRelease(v18);
  }

  FigByteFlumeBaseDispose(DerivedStorage);
}

uint64_t FigByteFlumeCustomURLCancel(uint64_t a1, uint64_t a2)
{
  FigByteFlumeGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
LABEL_20:
    v6 = v7;
    goto LABEL_11;
  }

  v4 = *(DerivedStorage + 144);
  if (!v4)
  {
LABEL_5:
    v5 = 0;
    v6 = 4294954362;
    goto LABEL_14;
  }

  while (*(v4 + 64) != a2)
  {
    v4 = *(v4 + 88);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v7 = figByteFlumeCancelCustomURLRequest(DerivedStorage, a2);
  if (v7)
  {
    goto LABEL_20;
  }

  if (!*(v4 + 80))
  {
    OUTLINED_FUNCTION_1_161(*(v4 + 88));
    (*(v4 + 32))(*(v4 + 40), *(v4 + 48), *(v4 + 64), 0, 0, 1, 4294954364);
    fbfcu_ReleaseReadRequest(v4);
    v6 = 0;
LABEL_11:
    v5 = 0;
    v4 = 0;
    goto LABEL_14;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    v5 = CFRetain(v8);
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v4 = *(v4 + 72);
LABEL_14:
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  if (v5)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v9(v5, v4);
    }

    CFRelease(v5);
  }

  return v6;
}

const void *FigByteFlumeCustomURLMatchesIdentifier(uint64_t a1, const void *a2)
{
  if (!a1 || (FigByteFlumeGetFigBaseObject(), (DerivedStorage = CMBaseObjectGetDerivedStorage()) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return 0;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {

      return v6(v5, a2);
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFDictionaryGetTypeID() || !*(v4 + 200))
  {
    return 0;
  }

  v9 = *(v4 + 192);
  v10 = *(v4 + 88);
  v11 = *(v4 + 136);
  v12 = *(v4 + 120);

  return FigCFHTTPMatchCacheHeaders(a2, v9, v10, v11, v12);
}

uint64_t fbfcu_AskForResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v16 = 0;
  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable)
  {
    goto LABEL_16;
  }

  Mutable = FigCustomURLRequestInfoSetHTTPHeaders();
  if (Mutable)
  {
    goto LABEL_16;
  }

  if (FigCustomURLRequestInfoCopyUserAgent())
  {
    if (!DerivedStorage[13])
    {
      v7 = FigCFHTTPCreateUserAgent();
      DerivedStorage[13] = v7;
      if (!v7)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0, v15);
        goto LABEL_16;
      }
    }

    Mutable = FigCustomURLRequestInfoSetUserAgent();
    if (Mutable)
    {
      goto LABEL_16;
    }
  }

  Mutable = FigCustomURLRequestInfoSetByteRange();
  if (Mutable)
  {
LABEL_16:
    v12 = Mutable;
    goto LABEL_12;
  }

  v8 = DerivedStorage[6];
  v9 = *DerivedStorage;
  v10 = DerivedStorage[16];
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v11)
  {
    v12 = v11(v8, v16, v9, v10, fbfcu_customURLLoaderDataCallback, &v15);
    if (!v12)
    {
      *a4 = v15;
    }
  }

  else
  {
    v12 = 4294954514;
  }

LABEL_12:
  if (v16)
  {
    CFRelease(v16);
  }

  return v12;
}

uint64_t fbfcu_customURLLoaderDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, char a5, __CFError *a6)
{
  v70 = *MEMORY[0x1E69E9840];
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    FigByteFlumeGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFRetain(Owner);
    if (*(DerivedStorage + 216) == 3)
    {
LABEL_25:
      CFRelease(Owner);
      goto LABEL_26;
    }

    if (*(DerivedStorage + 272) == a2)
    {
      v12 = *(DerivedStorage + 248);
      v66 = 0;
      v67 = 0;
      blockBufferOut = 0;
      if (a6)
      {
        Code = CFErrorGetCode(a6);
        if (Code)
        {
LABEL_6:
          v14 = 0;
LABEL_102:
          *(DerivedStorage + 248) = 0;
          v12(*(DerivedStorage + 256), 0, Code);
LABEL_103:
          if (v14)
          {
            CFRelease(v14);
          }

LABEL_105:
          if (v66)
          {
            CFRelease(v66);
          }

          v20 = v67;
          if (!v67)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_9();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v60, v62);
        if (v22)
        {
          goto LABEL_132;
        }
      }

      if (FigCustomURLResponseInfoCopyRedirectLocation())
      {
        if (*(DerivedStorage + 176))
        {
          Code = 0;
LABEL_90:
          if (a4)
          {
            v44 = *(DerivedStorage + 264) + CMBlockBufferGetDataLength(a4);
            *(DerivedStorage + 264) = v44;
            if (v44 >= 3)
            {
              *(DerivedStorage + 200) = 0;
              Code = 4294954357;
            }
          }

          if ((a5 & 3) != 0)
          {
            if (!*(DerivedStorage + 64))
            {
              Value = *(DerivedStorage + 240);
              if (Value)
              {
                Value = CFDictionaryGetValue(Value, @"FBFCreateOption_HTTPRequestOptions");
              }

              OptionsFromHTTPRequestOptions = FigByteFlumeCreateNetworkPathEvaluatorCreateOptionsFromHTTPRequestOptions(Value);
              FigNetworkPathEvaluatorCreate();
              if (OptionsFromHTTPRequestOptions)
              {
                CFRelease(OptionsFromHTTPRequestOptions);
              }
            }

            *(DerivedStorage + 272) = 0;
            *(DerivedStorage + 216) = 2;
            *(DerivedStorage + 248) = 0;
            v12(*(DerivedStorage + 256), 0, 0);
          }

          v14 = 0;
          goto LABEL_101;
        }

        inUTI = 0;
        statusCode = -1;
        v23 = *(DerivedStorage + 168);
        if (v23)
        {
          CFRelease(v23);
          *(DerivedStorage + 168) = 0;
        }

        if (FigCustomURLResponseInfoGetHTTPStatusCode() == -17360)
        {
          v24 = 206;
          statusCode = 206;
        }

        else
        {
          v24 = statusCode;
        }

        Response = CFHTTPMessageCreateResponse(*MEMORY[0x1E695E480], v24, 0, *MEMORY[0x1E695ADB8]);
        *(DerivedStorage + 168) = Response;
        if (Response)
        {
          cf = 0;
          FigCustomURLResponseInfoCopyHTTPHeaders();
        }

        if (*(DerivedStorage + 201))
        {
          v27 = *(DerivedStorage + 280);
          if (v27)
          {
            CFRelease(v27);
            *(DerivedStorage + 280) = 0;
          }

          v28 = FigCustomURLResponseInfoCopyFinalURL();
          if (v28)
          {
            Code = v28;
            if (v28 != -17360)
            {
              goto LABEL_6;
            }
          }
        }

        if (FigCustomURLResponseInfoCopyUniversalTypeIdentifier())
        {
          v62 = v12;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          statusCode = 0;
          if (FigCustomURLResponseInfoCopyHTTPHeaders())
          {
            goto LABEL_79;
          }

          v41 = CFDictionaryGetValue(statusCode, @"Content-Type");
          if (v41)
          {
            v41 = CFRetain(v41);
          }

          *(DerivedStorage + 184) = v41;
          v30 = statusCode;
          if (!statusCode)
          {
            goto LABEL_79;
          }
        }

        else
        {
          *(DerivedStorage + 184) = UTTypeCopyPreferredTagWithClass(inUTI, *MEMORY[0x1E6963718]);
          v30 = inUTI;
          if (!inUTI)
          {
            goto LABEL_79;
          }
        }

        CFRelease(v30);
LABEL_79:
        if (!FigCustomURLResponseInfoGetIsCachingDisabled())
        {
          *(DerivedStorage + 288) = 0;
        }

        if (!FigCustomURLResponseInfoGetEntireLengthAvailableOnDemand())
        {
          *(DerivedStorage + 289) = 0;
        }

        Code = FigCustomURLResponseInfoGetResourceSize();
        if (Code == -17360)
        {
          *(DerivedStorage + 200) = 0;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_6_9();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v60, v62);
          Code = v42;
        }

        if (Code)
        {
          goto LABEL_6;
        }

        *(DerivedStorage + 192) = 0;
        *(DerivedStorage + 200) = 1;
        v43 = *(DerivedStorage + 168);
        if (v43)
        {
          Code = FigCFHTTPCreateCacheHeaders(*(DerivedStorage + 88), 0, v43, 0, (DerivedStorage + 120));
        }

        else
        {
          Code = 0;
        }

        *(DerivedStorage + 176) = 1;
        goto LABEL_90;
      }

      if (*(DerivedStorage + 201))
      {
        v14 = 0;
        Code = 4294954361;
        goto LABEL_102;
      }

      if (*(DerivedStorage + 176))
      {
        goto LABEL_105;
      }

      *(DerivedStorage + 176) = 1;
      *(DerivedStorage + 216) = 2;
      v22 = FigByteFlumeCreateWithHTTP(*MEMORY[0x1E695E480], v66, *(DerivedStorage + 104), *(DerivedStorage + 112), *(DerivedStorage + 96), *(DerivedStorage + 128), *(DerivedStorage + 136), *(DerivedStorage + 240), (DerivedStorage + 56));
      if (v22)
      {
LABEL_132:
        Code = v22;
        goto LABEL_6;
      }

      if (FigCustomURLResponseInfoCopyRedirectRequestHeaders())
      {
        v14 = 0;
      }

      else
      {
        v31 = fbfcu_copyAllowedHTTPHeaders(v67, &blockBufferOut);
        v14 = blockBufferOut;
        if (v31)
        {
          goto LABEL_131;
        }
      }

      v31 = FigByteFlumeSetAdditionalOpenRequestHeaders(*(DerivedStorage + 56), v14);
      if (!v31)
      {
        v32 = *(DerivedStorage + 56);
        v33 = *DerivedStorage;
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v34)
        {
          Code = 4294954514;
          goto LABEL_102;
        }

        Code = v34(v32, fbfcu_OpenCallback, v33);
LABEL_101:
        if (!Code)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

LABEL_131:
      Code = v31;
      goto LABEL_102;
    }

    statusCode = 0;
    v67 = 0;
    cf = 0;
    blockBufferOut = 0;
    v66 = 0;
    v15 = *(DerivedStorage + 144);
    if (!v15)
    {
      goto LABEL_19;
    }

    while (*(v15 + 64) != a2)
    {
      v15 = *(v15 + 88);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    v61 = (a5 & 3) != 0;
    v63 = a5 & 3;
    v16 = *(v15 + 24);
    if (!*(v15 + 24))
    {
      FigCustomURLResponseInfoCopyRedirectLocation();
      *(v15 + 25) = v66 != 0;
      *(v15 + 24) = 1;
    }

    v17 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a6;
    if (a6)
    {
      CFRetain(a6);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (a6)
    {
      CFErrorGetCode(a6);
      FigByteFlumePostHostUnavailableNotification(DerivedStorage);
      OUTLINED_FUNCTION_1_161(*(v15 + 88));
      v18 = OUTLINED_FUNCTION_2_152();
      v19(v18);
      fbfcu_ReleaseReadRequest(v15);
      goto LABEL_19;
    }

    if (!v66)
    {
      if (*(v15 + 25))
      {
        goto LABEL_19;
      }

      if (a4)
      {
        DataLength = CMBlockBufferGetDataLength(a4);
        fbfcu_doByteRateMeasurement(DerivedStorage, DataLength);
        FigByteFlumePostHostAvailableNotification(DerivedStorage);
        v52 = *(v15 + 8);
        v51 = *(v15 + 16);
        if (v51 + DataLength <= v52)
        {
          v55 = 0;
          v56 = v61;
        }

        else
        {
          v53 = *MEMORY[0x1E695E480];
          DataLength = v52 - v51;
          if (v52 == v51)
          {
            v54 = CMBlockBufferCreateEmpty(v53, 0, 0, &blockBufferOut);
          }

          else
          {
            v54 = CMBlockBufferCreateWithBufferReference(v53, a4, 0, v52 - v51, 0, &blockBufferOut);
          }

          v55 = v54;
          v56 = 1;
          a4 = blockBufferOut;
        }

        ++*(v15 + 56);
        v57 = *(v15 + 40);
        if (v57)
        {
          CFRetain(v57);
        }

        if (v56)
        {
          v58 = *(v15 + 16);
          *(v15 + 16) = v58 + DataLength;
          fbfcu_FinishRequest(DerivedStorage, v15, v58, a4, 0, v55);
        }

        else
        {
          (*(v15 + 32))(*(v15 + 40), *(v15 + 48), *(v15 + 64), *(v15 + 16), a4, 0, 0);
          *(v15 + 16) += DataLength;
        }

        fbfcu_ReleaseReadRequest(v15);
        v49 = blockBufferOut;
        if (blockBufferOut)
        {
          goto LABEL_116;
        }
      }

      else if (v63)
      {
        fbfcu_FinishRequest(DerivedStorage, v15, *(v15 + 16), 0, 0, 0);
      }

      goto LABEL_19;
    }

    inUTI = 0;
    if (!v16)
    {
      if (*(DerivedStorage + 56))
      {
        if (!FigCustomURLResponseInfoCopyHTTPHeaders())
        {
          if (FigCustomURLResponseInfoCopyRedirectRequestHeaders())
          {
            v25 = 0;
LABEL_69:
            v35 = *v15;
            v36 = *(v15 + 8);
            v37 = *(v15 + 48);
            v38 = CFRetain(*(DerivedStorage + 56));
            FigRetainProxyUnlockMutex();
            v39 = FigCFHTTPResetURLAndRead(*(DerivedStorage + 56), v66, v25, v35, v36, fbfcu_ReadCallback, *DerivedStorage, v37, &inUTI);
            FigRetainProxyLockMutex();
            if (!FigRetainProxyIsInvalidated())
            {
              v40 = *(DerivedStorage + 144);
              if (v40)
              {
                while (v37 != *(v40 + 48))
                {
                  v40 = *(v40 + 88);
                  if (!v40)
                  {
                    goto LABEL_112;
                  }
                }

                *(v15 + 72) = inUTI;
                if (v39)
                {
                  OUTLINED_FUNCTION_1_161(*(v15 + 88));
                  v47 = OUTLINED_FUNCTION_2_152();
                  v48(v47);
                  fbfcu_ReleaseReadRequest(v15);
                }

                else
                {
                  *(v15 + 80) = 1;
                }
              }
            }

LABEL_112:
            if (statusCode)
            {
              CFRelease(statusCode);
            }

            if (v38)
            {
              v49 = v38;
LABEL_116:
              CFRelease(v49);
            }

LABEL_19:
            if (cf)
            {
              CFRelease(cf);
            }

            if (v67)
            {
              CFRelease(v67);
            }

            v20 = v66;
            if (!v66)
            {
              goto LABEL_25;
            }

LABEL_24:
            CFRelease(v20);
            goto LABEL_25;
          }

          if (!fbfcu_copyAllowedHTTPHeaders(cf, &v67))
          {
            v25 = v67;
            goto LABEL_69;
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_9();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v60, v63);
      }
    }

    v38 = 0;
    goto LABEL_112;
  }

LABEL_26:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t fbfcu_OpenCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    FigByteFlumeGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[34] = 0;
    v7 = DerivedStorage[31];
    v6 = DerivedStorage[32];
    DerivedStorage[31] = 0;
    v7(v6, a2, a3);
  }

  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

uint64_t fbfcu_networkMonitorCallback(uint64_t a1, const void *a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    FigByteFlumeGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 24) && FigNetworkPathInformationIsHostReachable(a2, 0))
    {
      FigByteFlumePostHostAvailableNotification(DerivedStorage);
    }

    v4 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fbfcu_ReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    FigRetainProxyGetOwner();
    FigByteFlumeGetFigBaseObject();
    v13 = *(CMBaseObjectGetDerivedStorage() + 144);
    if (v13)
    {
      while (*(v13 + 72) != a3)
      {
        v13 = *(v13 + 88);
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      if (a6 & 1 | a7)
      {
        OUTLINED_FUNCTION_1_161(*(v13 + 88));
        (*(v13 + 32))(*(v13 + 40), *(v13 + 48), *(v13 + 64), a4, a5, a6 | 1, a7);
      }

      else
      {
        ++*(v13 + 56);
        v14 = *(v13 + 40);
        if (v14)
        {
          CFRetain(v14);
          v14 = *(v13 + 40);
        }

        (*(v13 + 32))(v14, a2, *(v13 + 64), a4, a5, a6, 0);
      }

      fbfcu_ReleaseReadRequest(v13);
    }
  }

LABEL_12:
  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

void fbfcu_doByteRateMeasurement(void *a1, unsigned int a2)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v6 = (a1 + 28);
  v5 = a1[28];
  if (v5)
  {
LABEL_8:
    v8[0] = UpTimeNanoseconds - a1[29];
    v8[1] = a2;
    FigByteRateHistoryAddToSample(v5, v8);
    if (FigByteRateHistoryGetCurrentSampleDuration(a1[28]) >= 100000000)
    {
      FigByteRateHistoryNextSample(*v6);
    }

    a1[29] = UpTimeNanoseconds;
    return;
  }

  if (!FigByteRateHistoryCreate(a1 + 28))
  {
    v7 = a1[20] ? FigCFNumberGetUInt64() : 64;
    if (!FigByteRateHistoryAllocSampleArray(*v6, v7))
    {
      v5 = *v6;
      goto LABEL_8;
    }
  }
}

void FigByteFlumeCustomURLSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLSetProperty_cold_2(const void *a1, uint64_t a2, const void *a3, _DWORD *a4)
{
  if (CFEqual(a1, @"FBF_BandwidthSampleCount"))
  {
    v7 = *(a2 + 160);
    *(a2 + 160) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (*(a2 + 224))
    {
      UInt64 = FigCFNumberGetUInt64();
      FigByteRateHistoryAllocSampleArray(*(a2 + 224), UInt64);
    }
  }

  *a4 = 0;
}

void FigByteFlumeCustomURLRead_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLCopyIdentifier_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLCopyIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLCopyIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLCopyIdentifier_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLCopyIdentifier_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLCopyIdentifier_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLOpen_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLOpen_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteFlumeCustomURLOpen_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fbfcu_copyAllowedHTTPHeaders_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArray(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6, void *a7, char *a8)
{
  v172 = a4;
  v202 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 20))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_170();
    v114 = v113;
    v115 = 4294950934;
    v116 = 363;
LABEL_54:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v114, v115, "<<<< MediaSampleTimingGenerator >>>>", v116);
  }

  v8 = a2;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_170();
    v114 = v117;
    v115 = 4294950935;
    v116 = 364;
    goto LABEL_54;
  }

  v9 = a3;
  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_170();
    v114 = v118;
    v115 = 4294950935;
    v116 = 365;
    goto LABEL_54;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v15 = 48;
    if ((*(a4 + 60) & 1) == 0)
    {
      v15 = 24;
    }

    v16 = (a4 + v15);
    v17 = *v16;
    *(a1 + 40) = *(v16 + 2);
    *(a1 + 24) = v17;
  }

  if (*(a1 + 12) != 1)
  {
    OUTLINED_FUNCTION_6_94();
    if (v8 > v53)
    {
      return result;
    }

    v54 = *(a1 + 104);
    v129 = *(a1 + 96);
    v55 = *(a1 + 112);
    v56 = OUTLINED_FUNCTION_3_126(9 * v8);
    if (!v56)
    {
      return result;
    }

    v144 = a5;
    v149 = a8;
    v154 = a6;
    v134 = a7;
    v57 = 0;
    v124 = v54;
    v159 = (v55 + 72 * v54 - 72);
    v164 = v55;
    v177 = *MEMORY[0x1E6960C70];
    v58 = *(MEMORY[0x1E6960C70] + 16);
    v139 = v56;
    v59 = v56;
    while (1)
    {
      memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
      *&v190.value = v177;
      v190.epoch = v58;
      *&v188.value = v177;
      v188.epoch = v58;
      *&v186.value = v177;
      v186.epoch = v58;
      *&v184.value = v177;
      v184.epoch = v58;
      v60 = *(a1 + 72);
      v61 = *(a1 + 84);
      v201 = *(a1 + 80);
      v200 = v60;
      v62 = *(a1 + 88);
      SampleTimingAtIndex = getSampleTimingAtIndex(v8, v57, v9, v172, __dst, 0);
      if (SampleTimingAtIndex)
      {
LABEL_47:
        free(v139);
        return result;
      }

      if (v61)
      {
        break;
      }

      CMTimeMake(&v190, 0, *(a1 + 20));
LABEL_40:
      lhs = v190;
      time1 = **&MEMORY[0x1E6960CC0];
      time2 = __dst[1];
      time = __dst[2];
      if (CMTimeCompare(&time2, &time))
      {
        memset(&time2, 0, sizeof(time2));
        time = __dst[1];
        rhs = *(a1 + 24);
        CMTimeSubtract(&time2, &time, &rhs);
        OUTLINED_FUNCTION_4_123();
        rhs = lhs;
        CMTimeSubtract(&time1, &time, &rhs);
      }

      v109 = *(a1 + 20);
      time2 = time1;
      CMTimeConvertScale(&v184, &time2, v109, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      time1 = v190;
      time2 = v184;
      CMTimeAdd(&v188, &time1, &time2);
      *v59 = v177;
      *(v59 + 2) = v58;
      epoch = v188.epoch;
      *(v59 + 24) = *&v188.value;
      *(v59 + 5) = epoch;
      v111 = v190.epoch;
      *(v59 + 3) = *&v190.value;
      *(v59 + 8) = v111;
      memcpy((a1 + 120), __dst, 0x48uLL);
      result = *&v190.value;
      *(a1 + 72) = v190;
      ++v57;
      v59 += 72;
      if (v8 == v57)
      {
        *(a1 + 96) = v8;
        *(a1 + 104) = v8;
        v52 = 1;
        a7 = v134;
        *(a1 + 112) = v139;
        a8 = v149;
        a6 = v154;
        a5 = v144;
        v21 = v164;
        v9 = v124;
        v8 = v129;
        goto LABEL_45;
      }
    }

    *&time1.value = v177;
    time1.epoch = v58;
    *&time2.value = v177;
    time2.epoch = v58;
    *&time.value = v177;
    time.epoch = v58;
    rhs = __dst[2];
    v71 = OUTLINED_FUNCTION_2_153(SampleTimingAtIndex, v64, v65, v66, v67, v68, v69, v70, v119, v124, v129, v134, v139, v144, v149, v154, v159, v164, v168, v172, v177, *(&v177 + 1), v184.value, *&v184.timescale, v184.epoch, v185, v186.value, *&v186.timescale, v186.epoch, v187, v188.value, *&v188.timescale, v188.epoch, v189, v190.value, *&v190.timescale, v190.epoch, v191, *(a1 + 24), *(a1 + 32), *(a1 + 40), v193, __dst[2].value);
    v74 = CMTimeSubtract(v73, v71, v72);
    rhs.timescale = v201;
    rhs.flags = v61;
    rhs.epoch = v62;
    v82 = OUTLINED_FUNCTION_2_153(v74, v75, v76, v77, v78, v79, v80, v81, v120, v125, v130, v135, v140, v145, v150, v155, v160, v165, v169, v173, v178, v181, v184.value, *&v184.timescale, v184.epoch, v185, v186.value, *&v186.timescale, v186.epoch, v187, v188.value, *&v188.timescale, v188.epoch, v189, v190.value, *&v190.timescale, v190.epoch, v191, time1.value, *&time1.timescale, time1.epoch, v193, v200);
    v84 = CMTimeCompare(v82, v83);
    if ((v84 & 0x80000000) != 0)
    {
      *&rhs.timescale = *&time1.timescale;
      rhs.epoch = time1.epoch;
      v95 = OUTLINED_FUNCTION_2_153(v84, v85, v86, v87, v88, v89, v90, v91, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v170, v174, v179, v182, v184.value, *&v184.timescale, v184.epoch, v185, v186.value, *&v186.timescale, v186.epoch, v187, v188.value, *&v188.timescale, v188.epoch, v189, v190.value, *&v190.timescale, v190.epoch, v191, v200, __SPAIR64__(v61, v201), v62, v193, time1.value);
      CMTimeSubtract(v97, v95, v96);
      v98 = *(a1 + 20);
      rhs = time2;
      v99 = CMTimeConvertScale(&time, &rhs, v98, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      rhs = **&MEMORY[0x1E6960CC0];
      v107 = OUTLINED_FUNCTION_2_153(v99, v100, v101, v102, v103, v104, v105, v106, v122, v127, v132, v137, v142, v147, v152, v157, v162, v167, v171, v175, v180, v183, v184.value, *&v184.timescale, v184.epoch, v185, v186.value, *&v186.timescale, v186.epoch, v187, v188.value, *&v188.timescale, v188.epoch, v189, v190.value, *&v190.timescale, v190.epoch, v191, time.value, *&time.timescale, time.epoch, v193, rhs.value);
      if (!CMTimeCompare(v107, v108))
      {
        CMTimeMake(&rhs, 1, *(a1 + 20));
        time = rhs;
      }
    }

    else
    {
      rhs = *(a1 + 168);
      v92 = OUTLINED_FUNCTION_2_153(v84, v85, v86, v87, v88, v89, v90, v91, v121, v126, v131, v136, v141, v146, v151, v156, v161, v166, v170, v174, v179, v182, v184.value, *&v184.timescale, v184.epoch, v185, v186.value, *&v186.timescale, v186.epoch, v187, v188.value, *&v188.timescale, v188.epoch, v189, v190.value, *&v190.timescale, v190.epoch, v191, __dst[2].value, *&__dst[2].timescale, __dst[2].epoch, v193, rhs.value);
      if ((CMTimeCompare(v92, v93) & 0x80000000) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_170();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v124, v129);
        if (v94)
        {
          goto LABEL_47;
        }

        if (v57)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      CMTimeMake(&time, 1, *(a1 + 20));
    }

    v186 = time;
    if (v57)
    {
LABEL_30:
      *(v59 - 3) = v186;
LABEL_39:
      time2.value = v200;
      time2.timescale = v201;
      time2.flags = v61;
      time2.epoch = v62;
      time = v186;
      CMTimeAdd(&time1, &time2, &time);
      v190 = time1;
      *(a1 + 192) = v186;
      goto LABEL_40;
    }

LABEL_35:
    if (v164)
    {
      *v159 = v186;
    }

    else
    {
      time1 = *(a1 + 192);
      time2 = v186;
      if (CMTimeCompare(&time1, &time2))
      {
        v186 = *(a1 + 192);
      }
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_6_94();
  if (v9 <= v19)
  {
    v20 = OUTLINED_FUNCTION_3_126(9 * v9);
    if (v20)
    {
      v21 = v20;
      if (v8 < 1)
      {
        v52 = 0;
LABEL_45:
        *a8 = v52;
        *a5 = v8;
        *a6 = v9;
        *a7 = v21;
        *(a1 + 16) = 1;
        return result;
      }

      v143 = a5;
      v148 = a8;
      v153 = a6;
      v22 = 0;
      v23 = MEMORY[0x1E6960CF0];
      v176 = *MEMORY[0x1E6960C70];
      v24 = *(MEMORY[0x1E6960C70] + 16);
      while (1)
      {
        memcpy(__dst, v23, sizeof(__dst));
        v190.value = 0;
        *&time2.value = v176;
        time2.epoch = v24;
        if ((*(a1 + 60) & 1) == 0)
        {
          v25 = CMTimeMake(&time, 0, *(a1 + 20));
          OUTLINED_FUNCTION_5_105(v25, v26, v27, v28, v29, v30, v31, v32, v33, v119, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v172, v176, *(&v176 + 1), v184.value, *&v184.timescale, v184.epoch, v185, v186.value, *&v186.timescale, v186.epoch, v187, v188.value, *&v188.timescale, v188.epoch, v189, v190.value, *&v190.timescale, v190.epoch, v191, lhs.value, *&lhs.timescale, lhs.epoch, v193, rhs.value, *&rhs.timescale, rhs.epoch, v195, v34, time.value);
        }

        v35 = getSampleTimingAtIndex(v8, v22, v9, v172, __dst, &v190.value);
        if (v35)
        {
          break;
        }

        if ((__dst[0].flags & 1) == 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_170();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v123, v128);
          break;
        }

        v36 = *(a1 + 20);
        time = __dst[0];
        CMTimeConvertScale(&time2, &time, v36, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        time1 = *(a1 + 48);
        v37 = *&time1.value;
        v38 = time1.epoch;
        v39 = &v21[72 * v22];
        v40 = time2.epoch;
        *v39 = *&time2.value;
        *(v39 + 2) = v40;
        *(v39 + 24) = v37;
        *(v39 + 5) = v38;
        *(v39 + 3) = v37;
        *(v39 + 8) = v38;
        OUTLINED_FUNCTION_4_123();
        CMTimeMultiply(&rhs, &time, v41);
        lhs = *(a1 + 48);
        v42 = CMTimeAdd(&time, &lhs, &rhs);
        *&result = OUTLINED_FUNCTION_5_105(v42, v43, v44, v45, v46, v47, v48, v49, v50, v119, v123, v128, v133, v138, v143, v148, v153, v158, v163, v168, v172, v176, *(&v176 + 1), v184.value, *&v184.timescale, v184.epoch, v185, v186.value, *&v186.timescale, v186.epoch, v187, v188.value, *&v188.timescale, v188.epoch, v189, v190.value, *&v190.timescale, v190.epoch, v191, lhs.value, *&lhs.timescale, lhs.epoch, v193, rhs.value, *&rhs.timescale, rhs.epoch, v195, v51, time.value).n128_u64[0];
        v22 += v190.value;
        if (v22 >= v8)
        {
          v52 = 0;
          a8 = v148;
          a6 = v153;
          a5 = v143;
          goto LABEL_45;
        }
      }

      v112 = v35;
      free(v21);
      a8 = v148;
      a6 = v153;
      a5 = v143;
      if (!v112)
      {
        v52 = 0;
        v9 = 0;
        v21 = 0;
        goto LABEL_45;
      }
    }
  }

  return result;
}

uint64_t MediaSampleTimingGeneratorCreate(const void *a1, int a2, int a3, void *a4)
{
  if ((a3 - 3) < 0xFFFFFFFE)
  {
    return 4294950935;
  }

  v8 = MEMORY[0x19A8CC720](a1, 216, 0x1060040CAF4618ALL, 0);
  if (!v8)
  {
    return 4294950936;
  }

  v9 = v8;
  bzero(v8, 0xD8uLL);
  if (a1)
  {
    v10 = CFRetain(a1);
  }

  else
  {
    v10 = 0;
  }

  result = 0;
  *v9 = v10;
  v9[2] = a2;
  v9[3] = a3;
  *a4 = v9;
  return result;
}

void MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArrayWithDefaultLastSampleDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaSampleTimingGeneratorSetMediaTimeScale_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaSampleTimingGeneratorSetMediaTimeScale_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void setDefaultFontSizeDo(void *a1)
{
  v1 = *(*a1 + 56);
  if (v1)
  {
    valuePtr = a1[1];
    v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
    if (v2)
    {
      v3 = v2;
      v5.length = CFAttributedStringGetLength(v1);
      v5.location = 0;
      CFAttributedStringSetAttribute(v1, v5, *MEMORY[0x1E69631D8], v3);
      CFRelease(v3);
    }
  }
}

uint64_t figTTMLStyling_ConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  value = 0;
  cf = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, cf, v14);
    goto LABEL_19;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v14, &cf);
    if (v8)
    {
      goto LABEL_19;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLStyleCreate(v9, a1, a2, &value);
      if (!v8)
      {
        CFArrayAppendValue(*(DerivedStorage + 136), value);
        goto LABEL_9;
      }

LABEL_19:
      v10 = v8;
      goto LABEL_11;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_9:
  v10 = 0;
  if (a3)
  {
    *a3 = value;
    value = 0;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v10;
}

uint64_t FigAlternateMultipleNSPredicateFilterCreate()
{
  OUTLINED_FUNCTION_349();
  v39[17] = *MEMORY[0x1E69E9840];
  cf = 0;
  v39[0] = 0;
  inserted = FigAlternateFilterTreeCreate(v4, v39);
  if (!inserted)
  {
    v13 = OUTLINED_FUNCTION_2_154(inserted, v6, v7, v8, v9, v10, v11, v12, 0, 0, 0, 0, 0, 0, 0, 0, v36, cf, v39[0]);
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      v16 = 0x7FFFFFFF;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v2);
        }

        inserted = FigAlternateNSPredicateFilterCreate(v3, *(v29 + 8 * v17), v1, &cf);
        if (inserted)
        {
          break;
        }

        inserted = FigAlternateFilterTreeInsertLeaf(v39[0], cf, v16);
        if (inserted)
        {
          break;
        }

        v25 = cf;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v17;
        --v16;
        if (v14 == v17)
        {
          v14 = OUTLINED_FUNCTION_2_154(v25, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31, v32, v33, v34, v35, v37, cf, v39[0]);
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      inserted = FigAlternateFilterTreeCreateFilter(v39[0], @"MultipleNSPredicateTreeFilter", 872, v0);
    }
  }

  v26 = inserted;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v39[0])
  {
    CFRelease(v39[0]);
  }

  return v26;
}

uint64_t FigAlternateMultipleAlternateQualifierFilterCreate()
{
  OUTLINED_FUNCTION_349();
  v50 = *MEMORY[0x1E69E9840];
  cf = 0;
  v45 = 0;
  inserted = FigAlternateFilterTreeCreate(v4, &v45);
  if (!inserted)
  {
    v13 = OUTLINED_FUNCTION_1_162(inserted, v6, v7, v8, v9, v10, v11, v12, v31, v0, 0, 0, 0, 0, 0, 0, 0, 0, v42, cf, v45, v46, *(&v46 + 1), v47, v48, v49);
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = v13;
    v15 = *v36;
    v16 = 0x7FFFFFFF;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v2);
        }

        v18 = *(v35 + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          inserted = FigAlternateNSPredicateFilterCreate(v3, [v18 _predicate], v1, &cf);
          if (inserted)
          {
            goto LABEL_21;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v18 _keyPath];
            v46 = 0uLL;
            v47 = 0;
            v20 = faf_lowestInKeyPathComparatorFn;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_15;
            }

            v19 = [v18 _keyPath];
            v46 = 0uLL;
            v47 = 0;
            v20 = faf_highestInKeyPathComparatorFn;
          }

          v48 = v20;
          v49 = 0;
          inserted = FigSimpleAlternateFilterCreate(v3, @"MinOrMaxInKeyPathFilter", 595, &v46, v19, &cf);
          if (inserted)
          {
            goto LABEL_21;
          }
        }

LABEL_15:
        inserted = FigAlternateFilterTreeInsertLeaf(v45, cf, v16);
        if (inserted)
        {
          goto LABEL_21;
        }

        v28 = cf;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        --v16;
      }

      v14 = OUTLINED_FUNCTION_1_162(v28, v21, v22, v23, v24, v25, v26, v27, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v43, cf, v45, v46, *(&v46 + 1), v47, v48, v49);
      if (!v14)
      {
LABEL_20:
        inserted = FigAlternateFilterTreeCreateFilter(v45, @"MultipleAlternateQualifierTreeFilter", 872, v33);
        break;
      }
    }
  }

LABEL_21:
  v29 = inserted;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  return v29;
}

uint64_t FigCoreTextSubtitleRendererCreate(uint64_t a1, const void **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_21;
  }

  FigSubtitleRendererGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    goto LABEL_6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 28) = 0;
  *(DerivedStorage + 360) = 256;
  v3 = FigCaptionRendererSessionCreate(0, 0, *a2, (DerivedStorage + 368));
  if (v3)
  {
    goto LABEL_6;
  }

  v5 = *(DerivedStorage + 368);
  if (!v5)
  {
    return 0;
  }

  v3 = FigCaptionRendererSessionSetCGContextDevice(v5);
  if (!v3)
  {
    snprintf(__str, 0x100uLL, "com.apple.coremedia.subtitlerenderer.notificationqueue<%p>", *a2);
    v7 = dispatch_queue_create(__str, 0);
    *(DerivedStorage + 16) = v7;
    if (!v7 || (snprintf(label, 0x100uLL, "com.apple.coremedia.subtitlerenderer.messagequeue<%p>", *a2), v8 = dispatch_queue_create(label, 0), (*(DerivedStorage + 8) = v8) == 0))
    {
LABEL_20:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_21:
      v6 = v15;
      if (!v15)
      {
        return v6;
      }

      goto LABEL_7;
    }

    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForMediaAccessibilityChanged(DefaultLocalCenter, v10);
    FigNotificationCenterAddWeakListener();
    clearMediaAccessibilityParams(DerivedStorage + 88);
    *DerivedStorage = 1;
    if (*(DerivedStorage + 8))
    {
      v11 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
      if (v11)
      {
        v12 = v11;
        if (*a2)
        {
          CFRetain(*a2);
          v13 = *a2;
        }

        else
        {
          v13 = 0;
        }

        *v12 = v13;
        dispatch_async_f(*(DerivedStorage + 8), v12, mediaAccessibilityDidChangeDoAsync_0);
        return 0;
      }

      goto LABEL_20;
    }

    return 0;
  }

LABEL_6:
  v6 = v3;
LABEL_7:
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v6;
}

NSObject *FigSubtitleRendererDrawSubtitleAttributedStringDirect(uint64_t a1, CGContext *a2, const void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  if (!a1 || !a2 || CGRectEqualToRect(*&a4, *MEMORY[0x1E695F050]) || (a6 > 1.0 ? (v14 = a7 <= 1.0) : (v14 = 1), v14))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v18 = v20;
    SubtitleSampleFromAttributedString = 0;
  }

  else
  {
    SubtitleSampleFromAttributedString = FigSubtitleRendererCreateSubtitleSampleFromAttributedString(a3);
    if (SubtitleSampleFromAttributedString)
    {
      transform.a = a4;
      transform.b = a5;
      transform.c = a6;
      transform.d = a7;
      transform.tx = a6;
      transform.ty = a7;
      v16 = *(MEMORY[0x1E695EFD0] + 16);
      v25 = *MEMORY[0x1E695EFD0];
      v26 = v16;
      v27 = *(MEMORY[0x1E695EFD0] + 32);
      v28 = 0;
      v29 = 0xBFF0000000000000;
      v30 = 1;
      v17 = subtitleRendererLayout(a1, SubtitleSampleFromAttributedString, &transform, v32, &v31);
      if (!v17)
      {
        transform.b = 0.0;
        transform.c = 0.0;
        transform.a = 1.0;
        *&transform.d = xmmword_196E77200;
        transform.ty = a7;
        CGContextConcatCTM(a2, &transform);
        *&transform.a = a2;
        transform.b = 1.0;
        transform.c = 0.0;
        transform.d = 0.0;
        *&transform.tx = xmmword_196E77200;
        *&v25 = a7;
        v17 = subtitleRendererDrawSubtitleText(a1, v31, &transform);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
    }

    v18 = v17;
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (SubtitleSampleFromAttributedString)
  {
    CFRelease(SubtitleSampleFromAttributedString);
  }

  return v18;
}

double FigSubtitleRendererDetachRegionInfo(const __CFDictionary *a1, CFDictionaryRef *a2, BOOL *a3)
{
  *a2 = 0;
  if (!a1 || (Value = CFDictionaryGetValue(a1, @"SubtitleContent")) == 0)
  {
    Count = 0;
    goto LABEL_18;
  }

  Count = CFArrayGetCount(Value);
  v10 = CFDictionaryGetValue(a1, @"SubtitleContentMetadata");
  if (!v10 || (allocator = *MEMORY[0x1E695E480], MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v10), (*a2 = MutableCopy) == 0))
  {
LABEL_18:
    if (a3)
    {
      goto LABEL_19;
    }

    return result;
  }

  CFDictionaryRemoveValue(a1, @"SubtitleContentMetadata");
  if (Count < 1)
  {
LABEL_15:
    if (a3)
    {
      goto LABEL_19;
    }

    return result;
  }

  v12 = 0;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  v13 = *MEMORY[0x1E6960908];
  v14 = *MEMORY[0x1E6960968];
  while (1)
  {
    v15 = OUTLINED_FUNCTION_195_0();
    ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
    if (!ValueAtIndex)
    {
      goto LABEL_14;
    }

    v18 = ValueAtIndex;
    if (!CFAttributedStringGetLength(ValueAtIndex) || !CFAttributedStringGetAttribute(v18, 0, v13, &effectiveRange))
    {
      goto LABEL_14;
    }

    v19 = CFDictionaryGetValue(*a2, @"kFigSubtitleRenderer_RegionCues");
    if (!v19)
    {
      break;
    }

LABEL_13:
    Attribute = CFAttributedStringGetAttribute(v18, 0, v14, &effectiveRange);
    CFDictionaryAddValue(v19, Attribute, v18);
    v22 = OUTLINED_FUNCTION_195_0();
    CFArrayRemoveValueAtIndex(v22, v23);
    --Count;
    --v12;
LABEL_14:
    if (++v12 >= Count)
    {
      goto LABEL_15;
    }
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v19 = Mutable;
    CFDictionaryAddValue(*a2, @"kFigSubtitleRenderer_RegionCues", Mutable);
    CFRelease(v19);
    goto LABEL_13;
  }

  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, allocator, LODWORD(effectiveRange.location));
  if (!a3)
  {
    return result;
  }

LABEL_19:
  *a3 = Count > 0;
  return result;
}

uint64_t FigSubtitleRendererPatchRegionInfo(int a1, CFDictionaryRef theDict)
{
  v2 = theDict;
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960A90]);
  v4 = OUTLINED_FUNCTION_195_0();
  v6 = CFDictionaryGetValue(v4, v5);
  if (!v6)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v59, v60);
      v63 = v57;
      goto LABEL_55;
    }

    v6 = Mutable;
    v8 = OUTLINED_FUNCTION_195_0();
    CFDictionaryAddValue(v8, v9, v6);
    CFRelease(v6);
  }

  OUTLINED_FUNCTION_5_106();
  Count = FigCFDictionaryGetCount();
  if (!Count)
  {
    v63 = 0;
    goto LABEL_19;
  }

  v11 = Count;
  key = v2;
  v12 = OUTLINED_FUNCTION_7_82(Count);
  v13 = OUTLINED_FUNCTION_7_82(v11);
  CFDictionaryGetKeysAndValues(Value, v12, v13);
  if (v11 < 1)
  {
LABEL_14:
    v21 = 0;
    v22 = 0;
    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = v13;
  v16 = v12;
  while (1)
  {
    if (!*v15)
    {
      goto LABEL_13;
    }

    v17 = CFGetTypeID(*v15);
    if (v17 != CFDictionaryGetTypeID())
    {
      goto LABEL_13;
    }

    if (!*v16)
    {
      goto LABEL_13;
    }

    v18 = CFGetTypeID(*v16);
    if (v18 != CFStringGetTypeID())
    {
      goto LABEL_13;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, *v15);
    if (!MutableCopy)
    {
      break;
    }

    v20 = MutableCopy;
    CFDictionaryAddValue(v6, *v16, MutableCopy);
    CFRelease(v20);
LABEL_13:
    ++v16;
    ++v15;
    if (!--v11)
    {
      goto LABEL_14;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v59, v60);
  v21 = v56;
LABEL_15:
  free(v12);
  v22 = v21;
LABEL_16:
  v63 = v22;
  v2 = key;
  if (v13)
  {
    free(v13);
  }

  OUTLINED_FUNCTION_5_106();
LABEL_19:
  v23 = CFDictionaryGetValue(v2, @"kFigSubtitleRenderer_RegionCues");
  v24 = OUTLINED_FUNCTION_195_0();
  v26 = CFDictionaryGetValue(v24, v25);
  v27 = CFDictionaryGetCount(v26);
  if (!v27)
  {
    goto LABEL_59;
  }

  v28 = v27;
  Attribute = OUTLINED_FUNCTION_7_82(v27);
  v30 = OUTLINED_FUNCTION_7_82(v28);
  theDicta = v26;
  v61 = Attribute;
  CFDictionaryGetKeysAndValues(v26, Attribute, v30);
  if (v28 >= 1)
  {
    v31 = 0;
    allocator = *MEMORY[0x1E695E480];
    v32 = *MEMORY[0x1E6960968];
    v66 = v30;
    do
    {
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      v33 = CFDictionaryGetValue(v30[v31], @"kFigSubtitleRenderer_RegionCues");
      if (!v33)
      {
        v34 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v34)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v59, v61);
          v63 = v55;
          v27 = v62;
          goto LABEL_56;
        }

        v33 = v34;
        CFDictionaryAddValue(v30[v31], @"kFigSubtitleRenderer_RegionCues", v34);
        CFRelease(v33);
      }

      v35 = v28;
      v36 = CFDictionaryGetCount(v33);
      OUTLINED_FUNCTION_6_95();
      v39 = malloc_type_calloc(v37, v38, Attribute);
      v40 = malloc_type_calloc(v36, 8uLL, Attribute);
      CFDictionaryGetKeysAndValues(v33, v39, v40);
      if (v36 >= 1)
      {
        v41 = v40;
        do
        {
          Attribute = CFAttributedStringGetAttribute(*v41, 0, v32, &effectiveRange);
          v42 = v33;
          if (v23)
          {
            if (CFDictionaryGetValue(v23, Attribute))
            {
              v42 = v23;
            }

            else
            {
              v42 = v33;
            }
          }

          CFDictionaryRemoveValue(v42, Attribute);
          ++v41;
          --v36;
        }

        while (v36);
      }

      v28 = v35;
      if (v39)
      {
        free(v39);
      }

      v30 = v66;
      if (v40)
      {
        free(v40);
      }

      ++v31;
    }

    while (v31 != v28);
  }

  if (v61)
  {
    free(v61);
  }

  if (v30)
  {
    free(v30);
  }

  OUTLINED_FUNCTION_6_95();
  if (v23)
  {
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    v27 = CFDictionaryGetCount(v23);
    if (v27)
    {
      v43 = v27;
      v44 = malloc_type_calloc(v27, 8uLL, Attribute);
      v45 = malloc_type_calloc(v43, 8uLL, Attribute);
      CFDictionaryGetKeysAndValues(v23, v44, v45);
      if (v43 >= 1)
      {
        v46 = *MEMORY[0x1E6960908];
        v47 = *MEMORY[0x1E6960968];
        v48 = v45;
        do
        {
          v49 = CFAttributedStringGetAttribute(*v48, 0, v46, &effectiveRange);
          if (v49)
          {
            v50 = CFDictionaryGetValue(theDicta, v49);
            if (v50)
            {
              v51 = CFDictionaryGetValue(v50, @"kFigSubtitleRenderer_RegionCues");
              if (v51)
              {
                v52 = v51;
                v53 = CFAttributedStringGetAttribute(*v48, 0, v47, &effectiveRange);
                if (v53)
                {
                  CFDictionaryAddValue(v52, v53, *v48);
                }
              }
            }
          }

          ++v48;
          --v43;
        }

        while (v43);
      }

      if (v44)
      {
        free(v44);
      }

      if (v45)
      {
        free(v45);
      }

      goto LABEL_55;
    }

LABEL_59:
    v30 = 0;
    goto LABEL_56;
  }

LABEL_55:
  v30 = 0;
  v27 = 0;
LABEL_56:
  free(v27);
  free(v30);
  return v63;
}

double FigSubtitleRendererGetRegionBounds(const __CFDictionary *a1, int a2, double a3, double a4, double a5)
{
  v8 = *MEMORY[0x1E695F058];
  v14 = 0.0;
  valuePtr = 0;
  if (FigCFDictionaryGetCGFloatIfPresent())
  {
    v9 = a5 * v14 / 100.0;
    Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6960B00]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (CFDictionaryGetValue(a1, *MEMORY[0x1E6960B18]))
      {
        if (FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent() && CFDictionaryGetValue(a1, *MEMORY[0x1E6960B08]) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
        {
          v11 = a3 + a5 * 0.0 / 100.0 - v9 * 0.0 / 100.0;
          if (v11 < a3)
          {
            v11 = a3;
          }

          if (v9 + v11 <= a3 + a5)
          {
            return v11;
          }

          else
          {
            return a3 + a5 - v9;
          }
        }
      }
    }
  }

  return v8;
}

void calculateStrokeAttributes(uint64_t a1, CGColorRef *a2, CFNumberRef *a3, double a4)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4 > 0.0)
  {
    v8 = DerivedStorage;
    components[0] = *(DerivedStorage + 152);
    CopyWithAlpha = MACaptionAppearanceCopyStrokeColor();
    if (!CopyWithAlpha)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      if (DeviceRGB)
      {
        v11 = DeviceRGB;
        *components = xmmword_196E78F38;
        v19 = unk_196E78F48;
        v12 = CGColorCreate(DeviceRGB, components);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(v12, *(v8 + 248));
        CGColorRelease(v12);
        CGColorSpaceRelease(v11);
      }

      else
      {
        CopyWithAlpha = 0;
      }
    }

    MACaptionAppearanceGetStrokeWidth();
    v14 = v13 + v13;
    if (*(v8 + 361))
    {
      v14 = v14 * 100.0 / a4;
    }

    components[0] = v14;
    v15 = *MEMORY[0x1E695E480];
    v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, components);
    if (v16)
    {
      if (a2)
      {
LABEL_10:
        *a2 = CopyWithAlpha;
LABEL_16:
        if (a3)
        {
          *a3 = v16;
        }

        else if (v16)
        {
          CFRelease(v16);
        }

        return;
      }
    }

    else
    {
      v17 = a4 * 0.147058824;
      if (a4 > 60.0)
      {
        v17 = a4 * 0.147058824 * 0.5;
      }

      components[0] = v17;
      v16 = CFNumberCreate(v15, kCFNumberCGFloatType, components);
      if (a2)
      {
        goto LABEL_10;
      }
    }

    if (CopyWithAlpha)
    {
      CFRelease(CopyWithAlpha);
    }

    goto LABEL_16;
  }
}

void resetOverlaps(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v13 = _Q0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          v12 = ValueAtIndex[4];
          if (v12)
          {
            CFArrayRemoveAllValues(v12);
          }

          *(v11 + 5) = v13;
          *(v11 + 7) = v13;
          v11[22] = 0;
          v11[23] = 0;
          v11[21] = 0;
          *(v11 + 9) = 0u;
          *(v11 + 11) = 0u;
          *(v11 + 13) = 0u;
          *(v11 + 15) = 0u;
          *(v11 + 17) = 0u;
          *(v11 + 19) = 0u;
        }

        ++v4;
      }

      while (v3 != v4);
    }
  }
}

uint64_t surveyOverlaps(const __CFArray *a1)
{
  if (a1 && (Count = CFArrayGetCount(a1), v3 = Count - 2, Count >= 2))
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      if (ValueAtIndex)
      {
        v8 = ValueAtIndex;
        v9 = v6 + 1;
        do
        {
          v10 = CFArrayGetValueAtIndex(a1, v9);
          if (v10)
          {
            v11 = v10;
            if (vabdd_f64(*v8 + v8[2] * 0.5, *v10 + v10[2] * 0.5) < v8[2] * 0.5 + v10[2] * 0.5 + -3.0 && vabdd_f64(v8[1] + v8[3] * 0.5, v10[1] + v10[3] * 0.5) < v10[3] * 0.5 + v8[3] * 0.5 + -3.0)
            {
              CFArrayAppendValue(*(v8 + 4), v10);
              CFArrayAppendValue(*(v11 + 4), v8);
              v5 = 1;
            }
          }

          ++v9;
        }

        while (v4 != v9);
      }
    }

    while (v6++ != v3);
  }

  else
  {
    return 0;
  }

  return v5;
}

double mediaAccessibilityDidChange_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double mediaAccessibilityDidChangeDoAsync_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigSubtitleRendererDrawSubtitleTextDirect_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleRendererDrawSubtitleTextDirect_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleRendererDrawSubtitleTextDirect_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleRendererDrawSubtitleTextDirect_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleRendererDrawSubtitleTextDirect_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleRendererDrawSubtitleTextDirect_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleRendererDrawSubtitleTextDirect_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleRendererDrawSubtitleTextDirect_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigSubtitleRendererGetAttributedStringFromSubtitleSample_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigSubtitleRendererGetAttributedStringFromSubtitleSample_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double CreateSubtitleSample_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double CreateSubtitleSample_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void CreateSubtitleSample_cold_3(const void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  CFRelease(a1);
}

double CreateSubtitleSample_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double CreateSubtitleSample_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void subtitleRendererDrawSubtitleTextDo_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void subtitleRendererSetupText_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double setupRubyAnnotation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t subtitleRendererLayoutDo_cold_1(const __CFArray *a1, CFIndex a2, const __CFData *a3, uint64_t a4, void *a5)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (ValueAtIndex)
  {
    *ValueAtIndex = vaddq_f64(*(ValueAtIndex + 168), *ValueAtIndex);
    ++*(ValueAtIndex + 48);
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    goto LABEL_19;
  }

  v11 = Count;
  v22 = a4;
  v23 = a5;
  v12 = CFDataGetLength(a3) / (200 * Count);
  if (v12 < 1)
  {
LABEL_16:
    a4 = v22;
    a5 = v23;
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v20 = CFArrayGetValueAtIndex(a1, i);
        CFDataAppendBytes(a3, v20, 200);
      }
    }

LABEL_19:
    *a5 = a4;
    return 1;
  }

  BytePtr = CFDataGetBytePtr(a3);
  v14 = 0;
  while (1)
  {
    if (v11 < 1)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      LODWORD(v16) = 0;
      v17 = BytePtr;
      do
      {
        v18 = CFArrayGetValueAtIndex(a1, v15);
        if (!memcmp(v17, v18, 0xC8uLL))
        {
          v16 = (v16 + 1);
        }

        else
        {
          v16 = v16;
        }

        ++v15;
        v17 += 200;
      }

      while (v11 != v15);
    }

    if (v11 == v16)
    {
      return 0;
    }

    ++v14;
    BytePtr += 200 * v11;
    if (v14 >= v12)
    {
      goto LABEL_16;
    }
  }
}

void subtitleRendererLayoutDo_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void subtitleRendererLayoutDo_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL subtitleRendererLayoutDo_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t FigCaptionRendererAVFLayoutRegionCreate(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (!a2)
  {
    return 4294950096;
  }

  v18 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererAVFLayoutRegionGetClassID_sRegisterFigCaptionRendererAVFLayoutRegionBaseTypeOnce, RegisterFigCaptionRendererAVFLayoutRegionBaseType);
  result = CMDerivedObjectCreate();
  if (!result)
  {
    v7 = v18;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a1;
    *(DerivedStorage + 40) = 1;
    v17 = 0;
    FigCaptionRendererFreeLayoutRegionCreate(a1, a2, &v17);
    v9 = v17;
    *DerivedStorage = v17;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v11 = *(ProtocolVTable + 16);
      if (v11)
      {
        v12 = *(v11 + 216);
        if (v12)
        {
          v12(v9, 1);
        }
      }
    }

    v13 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v14 = CMBaseObjectGetProtocolVTable();
    if (v14)
    {
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = *(v15 + 232);
        if (v16)
        {
          v16(v13, 1);
        }
      }
    }

    result = 0;
    *a3 = v7;
  }

  return result;
}

double FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigCreateCaptionRenderPipeline(const opaqueCMFormatDescription *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, __int128 *a9, uint64_t a10, CFTypeRef *a11)
{
  v56 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  *__str = 0u;
  v49 = 0u;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_4_124();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_4_124();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    v16 = a2 != 0;
  }

  else
  {
    v16 = 0;
  }

  if ((a2 != 0) != (a3 != 0) || (a5 ? (v17 = a4 != 0) : (v17 = 0), (a4 != 0) != (a5 != 0) || (a7 ? (v18 = a6 != 0) : (v18 = 0), (a6 != 0) != (a7 != 0))))
  {
    OUTLINED_FUNCTION_43_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_33:
    v23 = v20;
    goto LABEL_34;
  }

  v19 = *MEMORY[0x1E695E480];
  FigRenderPipelineGetClassID();
  v20 = CMDerivedObjectCreate();
  if (v20)
  {
    goto LABEL_33;
  }

  v39 = v18;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2) = 1;
  *(DerivedStorage + 1) = FigSubtitleRendererUseCoreTextRendererByDefault() == 0;
  v20 = FigCaptionSerializerCreate();
  if (v20)
  {
    goto LABEL_33;
  }

  *(DerivedStorage + 256) = 0;
  *(DerivedStorage + 264) = v19;
  *&v46 = caprp_FigCaptionGroupConverterOutputCallbackTX3G;
  *(&v46 + 1) = DerivedStorage + 256;
  if (_os_feature_enabled_impl())
  {
    v22 = FigTX3GCaptionGroupConverterFromSampleBufferCreateRemote(&v46, v19, (DerivedStorage + 288));
  }

  else
  {
    v22 = FigTX3GCaptionGroupConverterFromSampleBufferCreate(&v46, v19, (DerivedStorage + 288));
  }

  v23 = v22;
  if (v22)
  {
    goto LABEL_34;
  }

  *(DerivedStorage + 272) = 0;
  *(DerivedStorage + 280) = v19;
  *&v45 = caprp_FigCaptionGroupConverterOutputCallbackWebVTT;
  *(&v45 + 1) = DerivedStorage + 272;
  v24 = _os_feature_enabled_impl() ? FigWebVTTCaptionGroupConverterFromSampleBufferCreateRemote(&v45, v19, (DerivedStorage + 296)) : FigWebVTTCaptionGroupConverterFromSampleBufferCreate(&v45, v19, (DerivedStorage + 296));
  v23 = v24;
  if (v24)
  {
    goto LABEL_34;
  }

  *(DerivedStorage + 16) = FigSimpleMutexCreate();
  *(DerivedStorage + 128) = FigSimpleMutexCreate();
  snprintf(__str, 0x80uLL, "com.apple.coremedia.figcaptionrenderpipeline(%p).refcon(%p).callbackqueue", v47, a3);
  v25 = dispatch_queue_create(__str, 0);
  *(DerivedStorage + 8) = v25;
  if (!v25 || v16 && (*(DerivedStorage + 152) = a2, v26 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 160) = v26) == 0) || v17 && (*(DerivedStorage + 168) = a4, v27 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 176) = v27) == 0) || v39 && (*(DerivedStorage + 200) = a6, v28 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 208) = v28) == 0))
  {
    OUTLINED_FUNCTION_43_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_33;
  }

  v29 = a8;
  if (a8)
  {
    v29 = CFRetain(a8);
  }

  *(DerivedStorage + 184) = v29;
  *(DerivedStorage + 192) = 0;
  v20 = FigTextSampleBufferSetUpState(DerivedStorage + 40, v19, a1);
  if (v20)
  {
    goto LABEL_33;
  }

  Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v32 = Mutable;
    CFDictionarySetValue(Mutable, @"AllowCaptionGroupSampleBuffers", *MEMORY[0x1E695E4D0]);
    v43 = *a9;
    v44 = *(a9 + 2);
    FigSimpleRenderPipelineCreateWithCallback(v19, caprp_sendSubtitleSampleForSampleBuffer, 0, v47, &v43, v32, (DerivedStorage + 24));
    if (!v33)
    {
      FigRenderPipelineGetFigBaseObject();
      v35 = v34;
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v36)
      {
        v23 = 4294954514;
        goto LABEL_46;
      }

      v33 = v36(v35, @"SourceSampleBufferQueue", v19, DerivedStorage + 32);
      if (!v33)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        v33 = CMBufferQueueCreate(v19, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 224));
        if (!v33)
        {
          v38 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
          v23 = CMBufferQueueCreate(v19, 0, v38, (DerivedStorage + 240));
          if (!v23)
          {
            *a11 = v47;
            v47 = 0;
          }

          goto LABEL_46;
        }
      }
    }

    v23 = v33;
LABEL_46:
    CFRelease(v32);
    goto LABEL_34;
  }

  v23 = 4294954510;
LABEL_34:
  if (v47)
  {
    CFRelease(v47);
  }

  return v23;
}

uint64_t caprp_createSubtitleSampleForCaptionGroupSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, const void *a3, void *a4, void *a5)
{
  v64 = 0;
  v65 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!subrp_SampleBufferShouldBeDisplayed(a2))
  {
    v25 = 0;
    Mutable = 0;
    v28 = 0;
    v33 = 0;
    v26 = 0;
    goto LABEL_43;
  }

  v52 = DerivedStorage;
  v50 = a4;
  CaptionGroup = FigSampleBufferGetCaptionGroup();
  v11 = MEMORY[0x1E695E480];
  v51 = a1;
  if (!CaptionGroup)
  {
    v28 = 0;
    Mutable = 0;
    v25 = 0;
    v15 = *MEMORY[0x1E695E480];
    goto LABEL_18;
  }

  SliceCount = FigCaptionGroupGetSliceCount();
  v13 = OUTLINED_FUNCTION_5_107();
  CMSampleBufferGetPresentationTimeStamp(v14, v13);
  OUTLINED_FUNCTION_6_96();
  v15 = *v11;
  v16 = OUTLINED_FUNCTION_2_155();
  Mutable = CFDictionaryCreateMutable(v16, v17, v18, v19);
  if (!Mutable)
  {
    v25 = 0;
    goto LABEL_59;
  }

  v21 = OUTLINED_FUNCTION_2_155();
  v25 = CFDictionaryCreateMutable(v21, v22, v23, v24);
  if (!v25)
  {
LABEL_59:
    v28 = 0;
    v33 = 0;
    goto LABEL_60;
  }

  if (SliceCount < 1)
  {
    v28 = 0;
  }

  else
  {
    v49 = a5;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      CaptionData = FigCaptionGroupGetCaptionData();
      if (CaptionData)
      {
        v30 = CaptionData;
        memset(&time, 0, sizeof(time));
        FigCaptionGroupGetDurationBeforeSlice();
        v59 = 0uLL;
        v60 = 0;
        FigCaptionGroupGetDurationAfterSlice();
        v58 = v63;
        v57 = v62;
        v56 = time;
        v54 = v59;
        v55 = v60;
        v26 = FigCaptionDataToMarkupBasedAttributedString(v15, v30, &v58, &v57, &v56, &v54, &v65, Mutable, v25);
        if (!v28)
        {
          v31 = OUTLINED_FUNCTION_2_155();
          v28 = CFArrayCreateMutable(v31, v32, MEMORY[0x1E695E9C0]);
          if (!v28)
          {
            goto LABEL_59;
          }
        }

        CFArrayAppendValue(v28, v65);
        if (v65)
        {
          CFRelease(v65);
          v65 = 0;
        }
      }

      ++v27;
    }

    while (SliceCount != v27);
    if (v26)
    {
      v33 = 0;
      v34 = 0;
      a5 = v49;
LABEL_42:
      *a5 = v34;
      goto LABEL_43;
    }

    a5 = v49;
  }

LABEL_18:
  v35 = OUTLINED_FUNCTION_2_155();
  v33 = CFDictionaryCreateMutable(v35, v36, v37, v38);
  if (!v33)
  {
LABEL_60:
    v26 = 4294954510;
    goto LABEL_43;
  }

  CFDataFromCaptionGroup = FigCFDictionarySetInt32();
  if (!CFDataFromCaptionGroup)
  {
    CFDataFromCaptionGroup = FigCFDictionarySetInt32();
    if (!CFDataFromCaptionGroup)
    {
      v40 = OUTLINED_FUNCTION_5_107();
      CMSampleBufferGetOutputPresentationTimeStamp(v41, v40);
      OUTLINED_FUNCTION_6_96();
      time = v63;
      v42 = CMTimeCopyAsDictionary(&time, v15);
      time = v62;
      v43 = CMTimeCopyAsDictionary(&time, v15);
      v44 = CFArrayCreateMutable(v15, 2, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v44, v42);
      CFArrayAppendValue(v44, v43);
      CFDictionarySetValue(v33, @"SubtitleTimeRange", v44);
      if (v42)
      {
        CFRelease(v42);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      if (v44)
      {
        CFRelease(v44);
      }

      if (a3)
      {
        CFDictionarySetValue(v33, @"SubtitleExtendedLanguageTag", a3);
      }

      if (caprp_isSubtitleOverHDRVideo(v51))
      {
        CFDictionarySetValue(v33, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
      }

      if (!v28)
      {
        v45 = OUTLINED_FUNCTION_2_155();
        v28 = CFArrayCreateMutable(v45, v46, v47);
      }

      CFDictionarySetValue(v33, @"SubtitleContent", v28);
      if (!CaptionGroup || !*(v52 + 1))
      {
        goto LABEL_37;
      }

      CFDataFromCaptionGroup = FigCaptionSerializerCreateCFDataFromCaptionGroup();
      if (!CFDataFromCaptionGroup)
      {
        CFDictionarySetValue(v33, @"SubtitleSerializedCaptionGroup", v64);
LABEL_37:
        if (v50)
        {
          CFDictionarySetValue(v33, @"SubtitleContentMetadata", v50);
        }

        if (Mutable)
        {
          CFDictionarySetValue(v33, @"SubtitleContentMetadata", Mutable);
        }

        v34 = CFRetain(v33);
        v26 = 0;
        goto LABEL_42;
      }
    }
  }

  v26 = CFDataFromCaptionGroup;
LABEL_43:
  if (v65)
  {
    CFRelease(v65);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  return v26;
}

uint64_t caprp_createSubtitleSampleForMPEG4Part30SampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, const void *a3, void *a4, void *a5)
{
  theDict = 0;
  v29 = **&MEMORY[0x1E6960C70];
  if (!subrp_SampleBufferShouldBeDisplayed(a2))
  {
    return 0;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v12 = Mutable;
    CMSampleBufferGetPresentationTimeStamp(&v29, a2);
    v27 = v29;
    v13 = CMTimeCopyDescription(v10, &v27);
    cf[1] = v10;
    v31 = 0;
    cf[0] = 0;
    v27.value = caprp_FigCaptionGroupConverterOutputCallbackMPEG4Part30;
    *&v27.timescale = cf;
    v14 = FigTTMLCaptionGroupConverterFromSampleBufferCreate(&v27, v10, &v31);
    if (!v14)
    {
      v15 = v31;
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v16)
      {
        goto LABEL_10;
      }

      v14 = v16(v15, a2);
      if (v14)
      {
        goto LABEL_40;
      }

      v17 = v31;
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v18)
      {
LABEL_10:
        v19 = 0;
        v20 = 4294954514;
        goto LABEL_11;
      }

      v14 = v18(v17);
      if (!v14)
      {
        if (!cf[0])
        {
          v20 = 0;
          v19 = 0;
          goto LABEL_13;
        }

        v19 = CFRetain(cf[0]);
        v20 = 0;
LABEL_11:
        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }

LABEL_13:
        if (v31)
        {
          CFRelease(v31);
        }

        if (v20)
        {
          v21 = 0;
        }

        else
        {
          if (v19)
          {
            if (CFArrayGetCount(v19) >= 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
              v26 = caprp_createSubtitleSampleForCaptionGroupSampleBuffer(a1, ValueAtIndex, a3, a4, &theDict);
              if (v26)
              {
                v21 = 0;
                v20 = v26;
                if (!v13)
                {
LABEL_27:
                  CFRelease(v12);
                  if (v21)
                  {
                    CFRelease(v21);
                  }

                  goto LABEL_29;
                }

LABEL_26:
                CFRelease(v13);
                goto LABEL_27;
              }
            }
          }

          if (theDict)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, theDict);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          v21 = MutableCopy;
          if (MutableCopy)
          {
            v22 = CFRetain(MutableCopy);
LABEL_25:
            *a5 = v22;
            if (!v13)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        v22 = 0;
        goto LABEL_25;
      }
    }

LABEL_40:
    v20 = v14;
    v19 = 0;
    goto LABEL_11;
  }

  v19 = 0;
  v20 = 4294954510;
LABEL_29:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v20;
}

uint64_t caprp_createSubtitleSampleForWebVTTSampleBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, const __CFArray *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v56 = 0;
  v57 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!subrp_SampleBufferShouldBeDisplayed(a3))
  {
    Mutable = 0;
    CFDataFromCaptionGroup = 0;
    goto LABEL_41;
  }

  v44 = a2;
  v14 = *MEMORY[0x1E695E480];
  v15 = OUTLINED_FUNCTION_165_0();
  Mutable = CFDictionaryCreateMutable(v15, v16, v17, v18);
  if (!Mutable)
  {
    CFDataFromCaptionGroup = 4294954510;
    goto LABEL_39;
  }

  v20 = FigCFDictionarySetInt32();
  if (!v20)
  {
    memset(&v55, 0, sizeof(v55));
    CMSampleBufferGetOutputPresentationTimeStamp(&v55, a3);
    memset(&v54, 0, sizeof(v54));
    CMSampleBufferGetOutputDuration(&v54, a3);
    v21 = OUTLINED_FUNCTION_1_163(v55.epoch, v42, v44, a7, a6, v55.value, *&v55.timescale, v52);
    v22 = OUTLINED_FUNCTION_1_163(v54.epoch, v43, v45, v47, v50, v54.value, *&v54.timescale, v53);
    v23 = CFArrayCreateMutable(v14, 2, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v23, v21);
    CFArrayAppendValue(v23, v22);
    CFDictionarySetValue(Mutable, @"SubtitleTimeRange", v23);
    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (a5)
    {
      CFDictionarySetValue(Mutable, @"SubtitleExtendedLanguageTag", a5);
    }

    if (caprp_isSubtitleOverHDRVideo(a1))
    {
      CFDictionarySetValue(Mutable, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
    }

    if (!*(DerivedStorage + 1))
    {
      CFDataFromCaptionGroup = WebVTTCreateAttributedStringArrayFromSampleBuffer(v46, a3, a4, &v57);
      v35 = v57;
      v36 = v51;
      if (!v57)
      {
        v37 = OUTLINED_FUNCTION_165_0();
        v35 = CFArrayCreate(v37, v38, v39, v40);
        v57 = v35;
      }

      CFDictionarySetValue(Mutable, @"SubtitleContent", v35);
      v32 = 0;
      if (!v51)
      {
LABEL_37:
        *v48 = CFRetain(Mutable);
        if (!v32)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_36:
      CFDictionarySetValue(Mutable, @"SubtitleContentMetadata", v36);
      goto LABEL_37;
    }

    if (!CMSampleBufferGetDataBuffer(a3) || !CMSampleBufferGetNumSamples(a3))
    {
      goto LABEL_46;
    }

    FigCaptionGroupConverterFromSampleBufferGetCMBaseObject();
    v25 = v24;
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v26)
    {
      goto LABEL_32;
    }

    v20 = v26(v25, 0x1F0B3C618, a4);
    if (!v20)
    {
      v27 = *(DerivedStorage + 296);
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v28)
      {
        goto LABEL_32;
      }

      v20 = v28(v27, a3);
      if (!v20)
      {
        if (!_os_feature_enabled_impl())
        {
          goto LABEL_24;
        }

        v29 = *(DerivedStorage + 296);
        v30 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v30)
        {
          v20 = v30(v29);
          if (!v20)
          {
LABEL_24:
            v31 = *(DerivedStorage + 272);
            if (v31)
            {
              v32 = CFRetain(v31);
              v33 = *(DerivedStorage + 272);
              if (v33)
              {
                CFRelease(v33);
                *(DerivedStorage + 272) = 0;
              }

              if (v32)
              {
                if (CFArrayGetCount(v32) >= 1)
                {
                  CFArrayGetValueAtIndex(v32, 0);
                  if (FigSampleBufferGetCaptionGroup())
                  {
                    CFDataFromCaptionGroup = FigCaptionSerializerCreateCFDataFromCaptionGroup();
                    if (CFDataFromCaptionGroup)
                    {
LABEL_38:
                      CFRelease(v32);
                      goto LABEL_39;
                    }

                    CFDictionarySetValue(Mutable, @"SubtitleSerializedCaptionGroup", v56);
LABEL_48:
                    v36 = v51;
                    if (!v51)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_36;
                  }
                }
              }

LABEL_47:
              CFDataFromCaptionGroup = 0;
              goto LABEL_48;
            }

LABEL_46:
            v32 = 0;
            goto LABEL_47;
          }

          goto LABEL_52;
        }

LABEL_32:
        CFDataFromCaptionGroup = 4294954514;
        goto LABEL_39;
      }
    }
  }

LABEL_52:
  CFDataFromCaptionGroup = v20;
LABEL_39:
  if (v56)
  {
    CFRelease(v56);
  }

LABEL_41:
  if (v57)
  {
    CFRelease(v57);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return CFDataFromCaptionGroup;
}

uint64_t caprp_createSubtitleSampleForTX3GSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v64[0] = 0;
  v15 = *(MEMORY[0x1E695F050] + 16);
  v62 = *MEMORY[0x1E695F050];
  v63 = v15;
  aStr = 0;
  value = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = *MEMORY[0x1E695E480];
  v18 = OUTLINED_FUNCTION_165_0();
  Mutable = CFDictionaryCreateMutable(v18, v19, v20, v21);
  if (Mutable)
  {
    v23 = FigCFDictionarySetInt32();
    if (v23)
    {
      goto LABEL_59;
    }

    memset(&v58, 0, sizeof(v58));
    CMSampleBufferGetOutputPresentationTimeStamp(&v58, a2);
    memset(&v57, 0, sizeof(v57));
    CMSampleBufferGetOutputDuration(&v57, a2);
    v24 = OUTLINED_FUNCTION_1_163(v58.epoch, a6, a7, a5, a4, v58.value, *&v58.timescale, v55);
    v25 = OUTLINED_FUNCTION_1_163(v57.epoch, v46, v48, v50, v53, v57.value, *&v57.timescale, v56);
    v26 = CFArrayCreateMutable(v17, 2, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v26, v24);
    CFArrayAppendValue(v26, v25);
    CFDictionarySetValue(Mutable, @"SubtitleTimeRange", v26);
    if (v24)
    {
      CFRelease(v24);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (a3)
    {
      CFDictionarySetValue(Mutable, @"SubtitleExtendedLanguageTag", a3);
    }

    if (caprp_isSubtitleOverHDRVideo(a1))
    {
      CFDictionarySetValue(Mutable, @"SubtitleOverHDRVideo", *MEMORY[0x1E695E4D0]);
    }

    v23 = FigTextSampleBufferDecryptSample(DerivedStorage + 40, a2, &cf);
    if (v23)
    {
      goto LABEL_59;
    }

    v27 = cf ? cf : a2;
    v23 = FigTextSampleBufferCopyAttributedString(DerivedStorage + 40, v17, v27, &aStr, v64 + 1, v64, &v62);
    if (v23)
    {
      goto LABEL_59;
    }

    if (*(DerivedStorage + 1))
    {
      if (!CMSampleBufferGetDataBuffer(v27) || !CMSampleBufferGetNumSamples(v27))
      {
        goto LABEL_44;
      }

      v28 = *(DerivedStorage + 288);
      v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v29)
      {
        goto LABEL_35;
      }

      v23 = v29(v28, v27);
      if (!v23)
      {
        if (!_os_feature_enabled_impl())
        {
          goto LABEL_26;
        }

        v30 = *(DerivedStorage + 288);
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v31)
        {
          v23 = v31(v30);
          if (!v23)
          {
LABEL_26:
            v32 = *(DerivedStorage + 256);
            if (v32)
            {
              v33 = CFRetain(v32);
              v34 = *(DerivedStorage + 256);
              if (v34)
              {
                CFRelease(v34);
                *(DerivedStorage + 256) = 0;
              }

              if (v33 && CFArrayGetCount(v33) >= 1)
              {
                CFArrayGetValueAtIndex(v33, 0);
                if (FigSampleBufferGetCaptionGroup())
                {
                  CFDataFromCaptionGroup = FigCaptionSerializerCreateCFDataFromCaptionGroup();
                  if (CFDataFromCaptionGroup)
                  {
                    v43 = CFDataFromCaptionGroup;
                    v36 = 0;
LABEL_47:
                    CFRelease(v33);
                    v38 = v43;
                    goto LABEL_48;
                  }

                  CFDictionarySetValue(Mutable, @"SubtitleSerializedCaptionGroup", value);
                }

                v36 = 0;
                v37 = FigCaptionGroupGetSliceCount() == 0;
LABEL_46:
                v43 = 0;
                v38 = 0;
                *v54 = CFRetain(Mutable);
                *v51 = v37;
                *v47 = HIBYTE(v64[0]);
                *v49 = v64[0];
                v44 = v63;
                *a8 = v62;
                a8[1] = v44;
                if (!v33)
                {
                  goto LABEL_48;
                }

                goto LABEL_47;
              }

LABEL_45:
              v36 = 0;
              v37 = 0;
              goto LABEL_46;
            }

LABEL_44:
            v33 = 0;
            goto LABEL_45;
          }

          goto LABEL_59;
        }

LABEL_35:
        v36 = 0;
        v38 = 4294954514;
        goto LABEL_48;
      }

LABEL_59:
      v38 = v23;
      v36 = 0;
      goto LABEL_48;
    }

    v39 = OUTLINED_FUNCTION_165_0();
    v36 = CFArrayCreateMutable(v39, v40, v41);
    if (v36)
    {
      if (aStr)
      {
        String = CFAttributedStringGetString(aStr);
        if (CFStringGetLength(String))
        {
          if (aStr)
          {
            CFArrayAppendValue(v36, aStr);
            v37 = aStr == 0;
LABEL_43:
            CFDictionarySetValue(Mutable, @"SubtitleContent", v36);
            v33 = 0;
            goto LABEL_46;
          }
        }

        else
        {
          CFRelease(aStr);
          aStr = 0;
        }
      }

      v37 = 1;
      goto LABEL_43;
    }
  }

  else
  {
    v36 = 0;
  }

  v38 = 4294954510;
LABEL_48:
  if (value)
  {
    CFRelease(value);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (aStr)
  {
    CFRelease(aStr);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v38;
}

uint64_t caprp_FigCaptionGroupConverterOutputCallbackMPEG4Part30(uint64_t a1, __int128 *a2, CFMutableArrayRef *a3)
{
  if (!*a3)
  {
    Mutable = CFArrayCreateMutable(a3[1], 0, MEMORY[0x1E695E9C0]);
    *a3 = Mutable;
    if (!Mutable)
    {
      return 4294954516;
    }
  }

  if (!FigCaptionGroupGetSliceCount())
  {
    return 0;
  }

  v5 = FigSampleBufferCreateForCaptionGroup();
  if (!v5)
  {
    CFArrayAppendValue(*a3, 0);
  }

  return v5;
}

uint64_t CreateSampleGeneratorForLPCM(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x10200406925D324uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = LPCMPushForType;
  a1[8] = LPCMResyncForType;
  a1[7] = LPCMFlushForType;
  a1[9] = LPCMDestroyForType;
  a1[10] = LPCMReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t LPCMPushForType(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *(a1 + 88);
  v44 = 0;
  v43 = 0;
  returnedPointerOut = 0;
  if (*a1 == 1886612592)
  {
    v12 = 7;
  }

  else
  {
    v12 = 4;
  }

  if (a5)
  {
    appended = LPCMFlushForType(a1);
    if (appended)
    {
      goto LABEL_60;
    }
  }

  appended = CMBlockBufferAccessDataBytes(theBuffer, 0, v12, temporaryBlock, &returnedPointerOut);
  if (appended)
  {
    goto LABEL_60;
  }

  v39 = a3;
  v40 = a6;
  if (*a1 == 1886612592)
  {
    PSLPCMGetSampleFrequency(returnedPointerOut, &v43);
    if (appended)
    {
      goto LABEL_60;
    }

    v14 = PSLPCMGetChannelLayout(returnedPointerOut);
    v15 = PSLPCMGetQuantization(returnedPointerOut);
    PSLPCMGetSamplesPerFrame(returnedPointerOut, &v44);
    if (appended)
    {
      goto LABEL_60;
    }

    v16 = v44;
    v17 = PSLPCMGetFrameCountOfPacket(returnedPointerOut) * v16;
  }

  else
  {
    v43 = LPCMGetSampleFrequency(returnedPointerOut);
    if (!v43)
    {
      v23 = 0;
      goto LABEL_61;
    }

    v14 = LPCMGetChannelLayout(returnedPointerOut);
    v15 = LPCMGetBitsPerChannelSample(returnedPointerOut);
    v17 = LPCMGetSamplesPerFrame(returnedPointerOut);
  }

  v18 = (a1 + 40);
  if (*(a1 + 40) && *(v11 + 16) == v14 && v17 == *(v11 + 4) && v43 == *v11)
  {
    goto LABEL_16;
  }

  LPCMFlushForType(a1);
  v38 = v43;
  memset(&asbd.mFormatID, 0, 32);
  v25 = malloc_type_calloc(1uLL, 20 * v14 + 12, 0xE7EF478BuLL);
  if (!v25)
  {
    return 12;
  }

  v26 = v25;
  v27 = v14;
  if (v14 == 720904)
  {
    goto LABEL_40;
  }

  if (v14 != 262148 && v14 != 327684)
  {
    switch(v14)
    {
      case 393220:
        v33 = 7536644;
        break;
      case 458756:
        v33 = 8650756;
        break;
      case 524294:
      case 589830:
        OUTLINED_FUNCTION_0_172();
        LODWORD(v26[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
        v26[2].mNumberChannelDescriptions = 5;
        LODWORD(v26[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
        v26[3].mChannelDescriptions[0].mChannelFlags = 4 * (v14 != v30);
        goto LABEL_50;
      case 655368:
LABEL_40:
        v25->mChannelLayoutTag = 0;
        v25->mNumberChannelDescriptions = v14;
        v25->mChannelDescriptions[0].mChannelLabel = 1;
        v25[1].mChannelLayoutTag = 2;
        LODWORD(v25[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
        v25[2].mNumberChannelDescriptions = 5;
        LODWORD(v25[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
        v25[3].mChannelDescriptions[0].mChannelFlags = 34;
        v25[4].mChannelBitmap = 6;
        LODWORD(v25[4].mChannelDescriptions[0].mCoordinates[1]) = 4 * (v14 != 655368);
        goto LABEL_50;
      case 65538:
        v25->mChannelLayoutTag = 0;
        v25->mNumberChannelDescriptions = v14;
        v25->mChannelDescriptions[0].mChannelLabel = 42;
        v25[1].mChannelLayoutTag = 0;
        goto LABEL_50;
      default:
        v33 = 6619138;
        break;
    }

    v25->mChannelLayoutTag = v33;
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_0_172();
  if (v14 == v31)
  {
    v32 = 3;
  }

  else
  {
    v32 = 9;
  }

  LODWORD(v26[1].mChannelDescriptions[0].mCoordinates[0]) = v32;
  v26[2].mNumberChannelDescriptions = 0;
LABEL_50:
  asbd.mSampleRate = v38;
  asbd.mFormatID = 1819304813;
  asbd.mFramesPerPacket = v17;
  asbd.mChannelsPerFrame = v27;
  asbd.mBitsPerChannel = v15;
  if ((v15 & 0xFFFFFFF7) == 0x10)
  {
    asbd.mFormatFlags = 14;
    asbd.mFramesPerPacket = 1;
    v34 = (v15 >> 3) * v27;
  }

  else
  {
    if (v15 != 20)
    {
      goto LABEL_55;
    }

    asbd.mFormatFlags = 22;
    asbd.mFramesPerPacket = 1;
    v34 = 3 * v27;
  }

  asbd.mBytesPerFrame = v34;
  asbd.mBytesPerPacket = v34;
LABEL_55:
  if (*v18)
  {
    CFRelease(*v18);
    *v18 = 0;
  }

  v23 = CMAudioFormatDescriptionCreate(*(a1 + 8), &asbd, 0x20uLL, v26, 0, 0, 0, (a1 + 40));
  free(v26);
  if (!v23)
  {
    *(v11 + 16) = v14;
    *v11 = v43;
    *(v11 + 4) = v17;
    *(v11 + 8) = v15;
    v35 = *(a1 + 16);
    if (!v35 || (appended = v35(a1, *(a1 + 32), *(a1 + 40)), !appended))
    {
LABEL_16:
      v19 = CMBlockBufferGetDataLength(theBuffer) - v12;
      v20 = *(v11 + 24);
      if (!v20)
      {
        Empty = CMBlockBufferCreateEmpty(*(a1 + 8), 1u, 0, (v11 + 24));
        if (Empty)
        {
          return Empty;
        }

        *(v11 + 32) = v17;
        *(v11 + 40) = v19;
        v22 = *(v39 + 16);
        *(v11 + 48) = *v39;
        *(v11 + 20) = a5;
        *(v11 + 64) = v22;
        *(v11 + 72) = v40;
        v20 = *(v11 + 24);
      }

      appended = CMBlockBufferAppendBufferReference(v20, theBuffer, v12, v19, 0);
      if (!appended)
      {
        *(v11 + 32) = v17;
        *(v11 + 40) = v19;
        return LPCMFlushForType(a1);
      }
    }

LABEL_60:
    v23 = appended;
LABEL_61:
    v36 = *(a1 + 88);
    v37 = *(v36 + 24);
    if (v37)
    {
      CFRelease(v37);
    }

    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    *(v36 + 40) = 0;
  }

  return v23;
}

uint64_t LPCMFlushForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(v1 + 32);
  presentationTimeStamp = *(v1 + 48);
  target = 0;
  v7 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, v2, 1u, 0, 0, v5, v6, &presentationTimeStamp, 0, &target);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = *(v1 + 20);
    if (v8)
    {
      CMSetAttachment(target, *MEMORY[0x1E69604D0], *MEMORY[0x1E695E4D0], 1u);
      v8 = *(v1 + 20);
    }

    v9 = (*(a1 + 24))(a1, *(a1 + 32), target, *(v1 + 72), v8);
    if (target)
    {
      CFRelease(target);
    }
  }

  v10 = *(v1 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v1 + 40) = 0;
  *(v1 + 28) = 0;
  *(v1 + 20) = 0;
  return v9;
}

void PSLPCMGetSamplesPerFrame(uint64_t a1, void *a2)
{
  v4 = 0;
  *a2 = 0;
  PSLPCMGetSampleFrequency(a1, &v4);
  if (!v3)
  {
    *a2 = v4 / 0x258;
  }
}

uint64_t FigCaptionRendererNodeCreate(void *a1)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererNodeGetClassID_sRegisterFigCaptionRendererNodeBaseTypeOnce, RegisterFigCaptionRendererNodeBaseType);
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = MEMORY[0x1E695E9C0];
    *(DerivedStorage + 8) = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
    *(DerivedStorage + 320) = CFArrayCreateMutable(v2, 0, v5);
    *(DerivedStorage + 312) = 257;
    *(DerivedStorage + 48) = FCRRectNull;
    *(DerivedStorage + 64) = *&byte_196E76830;
    *(DerivedStorage + 80) = xmmword_196E76840;
    *(DerivedStorage + 96) = *&byte_196E76850;
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 16);
    *(DerivedStorage + 112) = *MEMORY[0x1E695F050];
    *(DerivedStorage + 128) = v7;
    *(DerivedStorage + 16) = v6;
    *(DerivedStorage + 32) = v7;
    __asm { FMOV            V0.2D, #-1.0 }

    v13 = *MEMORY[0x1E695F060];
    *(DerivedStorage + 240) = _Q0;
    *(DerivedStorage + 256) = v13;
    *(DerivedStorage + 272) = 0;
    *(DerivedStorage + 280) = 0;
    *(DerivedStorage + 288) = 0;
    *(DerivedStorage + 296) = 0;
    *a1 = 0;
  }

  return v3;
}

uint64_t FigCaptionRendererNode_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 8));
    if (Count >= 1)
    {
      v5 = Count;
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v3);
      if (MutableCopy)
      {
        v7 = MutableCopy;
        v9.location = 0;
        v9.length = v5;
        CFArraySortValues(MutableCopy, v9, nodeComparatorZIndex, 0);
        FigCFArrayApplyFunction();
        CFRelease(v7);
      }
    }
  }

  return 0;
}

void FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererNode_FigCaptionRendererNodeProtocol_AllocateImageBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigHLSSessionDataCopyMetadataEntryRemote(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = fsd_ensureClientEstablished();
  if (!v5)
  {
    v5 = FigXPCCreateBasicMessage();
    if (!v5)
    {
      v5 = FigXPCMessageSetCFString();
      if (!v5)
      {
        v5 = FigXPCMessageSetCFObject();
        if (!v5)
        {
          v5 = FigXPCMessageSetCFString();
          if (!v5)
          {
            v5 = FigXPCMessageSetCFURL();
            if (!v5)
            {
              v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
              if (!v5)
              {
                v5 = FigXPCMessageCopyCFDictionary();
              }
            }
          }
        }
      }
    }
  }

  v6 = v5;
  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

void FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntryRemote_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t MediaDataChunkWriterCreate(const void *a1, uint64_t *a2)
{
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
    DataBuffer = v15;
    goto LABEL_11;
  }

  v4 = MEMORY[0x19A8CC720](a1, 80, 0x10700402A6EFBECLL, 0);
  v5 = v4;
  if (!v4)
  {
    DataBuffer = 4294949686;
    goto LABEL_12;
  }

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

  *v5 = v6;
  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v7, v8, v9);
  *(v5 + 8) = Mutable;
  if (!Mutable)
  {
    goto LABEL_15;
  }

  Empty = CMBlockBufferCreateEmpty(a1, 0x40u, 0, (v5 + 24));
  if (Empty)
  {
LABEL_16:
    DataBuffer = Empty;
    goto LABEL_12;
  }

  *(v5 + 36) = 10;
  v12 = CMMemoryPoolCreate(0);
  *(v5 + 40) = v12;
  if (!v12)
  {
LABEL_15:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_16;
  }

  DataBuffer = allocateDataBuffer(v5);
  if (!DataBuffer)
  {
    *a2 = v5;
LABEL_11:
    v5 = 0;
  }

LABEL_12:
  MediaDataChunkWriterRelease(v5);
  return DataBuffer;
}

uint64_t allocateDataBuffer(uint64_t a1)
{
  result = FigMemoryPoolCreateBlockBuffer();
  if (!result)
  {
    result = CMBlockBufferGetDataPointer(*(a1 + 48), 0, (a1 + 64), 0, (a1 + 56));
    if (!result)
    {
      *(a1 + 72) = 0;
    }
  }

  return result;
}

uint64_t appendSampleDataOrSampleReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, size_t *a11, const __CFArray *a12, uint64_t a13)
{
  v14 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v18 = v17;
  v20 = v19;
  v300 = v21;
  v23 = v22;
  v24 = v15;
  v26 = v25;
  v27 = v14;
  v417 = *MEMORY[0x1E69E9840];
  v400 = 0;
  if (v15)
  {
    EndOffset = getEndOffset(v14, v15, &v400);
    if (EndOffset)
    {
      return EndOffset;
    }

    v16 = v400;
  }

  else
  {
    v400 = v16;
  }

  if (v16 == *(v26 + 32) && *(v26 + 24) == v300 && !*(v26 + 105))
  {
    v28 = 0;
  }

  else
  {
    *(v26 + 105) = 0;
    v28 = 1;
  }

  if (v20 < 1)
  {
    return 0;
  }

  v361 = v16;
  v337 = v27;
  cf = v23;
  v284 = v13;
  v29 = 0;
  v30 = 0;
  v292 = a13;
  v324 = v300;
  v31 = a11;
  theArray = a12;
  v357 = a9;
  v365 = a10;
  v308 = *MEMORY[0x1E6960CC0];
  HIDWORD(v296) = *(MEMORY[0x1E6960CC0] + 8);
  v288 = *MEMORY[0x1E695E480];
  v353 = *(MEMORY[0x1E6960CC0] + 12);
  HIDWORD(v349) = *(MEMORY[0x1E6960CC0] + 20);
  v316 = a11;
  v320 = v18;
  otherRange_8 = v20;
  v341 = v26;
  v345 = v24;
  while (1)
  {
    offset = v30;
    v409 = v353;
    LODWORD(v410) = HIDWORD(v349);
    v407 = v353;
    LODWORD(v408) = HIDWORD(v349);
    otherRange = v29;
    LODWORD(v374) = v28;
    if (v28)
    {
      if (v24)
      {
        v32 = *(v26 + 100);
        if (v32 < 2)
        {
          v35 = 0;
        }

        else
        {
          v33 = v361 % v32;
          v34 = v32 - v361 % v32;
          if (v33)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          if (v35)
          {
            bzero(&customBlockSource, 0x4000uLL);
            v36 = v35;
            while (v36 > 0)
            {
              if (v36 >= 0x4000)
              {
                v37 = 0x4000;
              }

              else
              {
                v37 = v36;
              }

              EndOffset = appendDataViaDataBuffer(v337, v24, v37);
              v36 -= v37;
              if (EndOffset)
              {
                return EndOffset;
              }
            }

            v29 = otherRange;
          }
        }

        v361 += v35;
        v400 = v361;
      }

      v39 = 0;
      *(v26 + 24) = v324;
      *(v26 + 40) = 0;
      v40 = MEMORY[0x1E6960CC0];
      *(v26 + 48) = *MEMORY[0x1E6960CC0];
      *(v26 + 64) = *(v40 + 16);
      v337[2] = v26;
    }

    else
    {
      v39 = *(v26 + 40);
    }

    v41 = *(v26 + 72);
    v42 = v41 >= v39;
    v43 = v41 - v39;
    if (v42)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    v45 = v20 - v29;
    OUTLINED_FUNCTION_3_127(MEMORY[0x1E6960C70]);
    LODWORD(v349) = v54;
    if (v365 != 1)
    {
      v55 = 0;
      v58 = v31[v29];
      v59 = v29 + 1;
      v60 = 1;
      do
      {
        v57 = v60;
        v55 += v58;
        if (v59 >= v20)
        {
          break;
        }

        v58 = v31[v59++];
        ++v60;
      }

      while (v58 + v55 < v44);
      goto LABEL_48;
    }

    v55 = *v31;
    if (*v31 <= v44 && v45 != 1)
    {
      break;
    }

    if (v18 == 1)
    {
      v57 = 1;
LABEL_49:
      *memoryBlock = *v357;
      *&memoryBlock[16] = *(v357 + 16);
      v61 = OUTLINED_FUNCTION_4_125(v46, v47, v48, v49, v50, v51, v52, v53, blockBufferOut, v265, v270, v275, v280, v284, v288, v292, v296, v300, cf, v308, theArray, v316, v320, v324, v328, v332, v337, v341, v345, v349, v353, v357, v361, v365, offset, v374, otherRange, otherRange_8, v389, v393, v396, v400, memoryBlock[0]);
      CMTimeMultiply(v62, v61, v57);
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_3_127(MEMORY[0x1E6960CC0]);
    v63 = v29;
    v64 = v29 + 1;
    v57 = 1;
LABEL_53:
    v65 = v357 + 72 * v63;
    do
    {
      *memoryBlock = *&customBlockSource.version;
      *&memoryBlock[16] = *(&customBlockSource.FreeBlock + 4);
      *&rhs.value = *v65;
      OUTLINED_FUNCTION_1_164(*(v65 + 16));
      CMTimeAdd(v68, v66, v67);
      ++v63;
      v65 += 72;
    }

    while (v63 < v64);
    v26 = v341;
    v24 = v345;
    v29 = otherRange;
LABEL_56:
    v69 = *&customBlockSource.version;
    AllocateBlock_high = HIDWORD(customBlockSource.AllocateBlock);
    FreeBlock = customBlockSource.FreeBlock;
    LODWORD(v412) = customBlockSource.refCon;
    if (v374 || v44 >= v55)
    {
      goto LABEL_62;
    }

    v28 = 1;
LABEL_84:
    v30 = offset;
LABEL_165:
    if (v29 >= v20)
    {
      return 0;
    }
  }

  if (v55)
  {
    if (v45 >= (v44 / v55))
    {
      v57 = v44 / v55;
    }

    else
    {
      v57 = v20 - v29;
    }

    v55 *= v57;
LABEL_48:
    if (v18 == 1)
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_3_127(MEMORY[0x1E6960CC0]);
    if (v57 < 1)
    {
      goto LABEL_56;
    }

    v63 = v29;
    v64 = v57 + v29;
    goto LABEL_53;
  }

  if (v18 == 1)
  {
    v57 = 0;
    v55 = 0;
    goto LABEL_49;
  }

  v55 = 0;
  v57 = 0;
  *&customBlockSource.version = *MEMORY[0x1E6960CC0];
  v69 = *&customBlockSource.version;
  AllocateBlock_high = HIDWORD(customBlockSource.AllocateBlock);
  FreeBlock = v353;
  LODWORD(v412) = HIDWORD(v349);
LABEL_62:
  LODWORD(v328) = AllocateBlock_high;
  v333 = v69;
  *&customBlockSource.version = *(v26 + 76);
  *(&customBlockSource.FreeBlock + 4) = *(v26 + 92);
  OUTLINED_FUNCTION_8_66();
  if ((OUTLINED_FUNCTION_12_57(v71, v72, v73, v74, v75, v76, v77, v78, blockBufferOut, v265, v270, v275, v280, v284, v288, v292, v296, v300, cf, v308, theArray, v316, v320, v324, v328, v333, v337, v341, v345, v349, v353, v357, v361, v365, offset, v374, otherRange, otherRange_8, v389, v393, v396, v400, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v402, v403, v404, v405, v406, v407, v408, v409, v410, FreeBlock, v412, *&customBlockSource.version) & 0x80000000) != 0)
  {
    v390 = *(MEMORY[0x1E6960CC0] + 8);
    v82 = v309;
  }

  else
  {
    *memoryBlock = *(v26 + 76);
    *&memoryBlock[16] = *(v26 + 92);
    *&rhs.value = *(v26 + 48);
    OUTLINED_FUNCTION_1_164(*(v26 + 64));
    CMTimeSubtract(v81, v79, v80);
    v82 = *&customBlockSource.version;
    v390 = *(&customBlockSource.AllocateBlock + 4);
  }

  if (v18 == 1)
  {
    v83 = *v358;
    v84 = *(v358 + 8);
    rhs.value = *(v358 + 12);
    rhs.timescale = *(v358 + 20);
    *&customBlockSource.version = v82;
    *(&customBlockSource.AllocateBlock + 4) = v390;
    OUTLINED_FUNCTION_7_83();
    *&memoryBlock[12] = *(v85 + 12);
    *&memoryBlock[20] = *(v85 + 20);
    v94 = OUTLINED_FUNCTION_12_57(v86, v87, v88, v89, v90, v91, v92, v93, blockBufferOuta, v266, v271, v276, v281, v285, v289, v293, v297, v301, cfa, v309, theArraya, v317, v321, v325, v329, v334, v338, v342, v346, v350, v354, v358, v362, v366, offseta, v375, otherRangea, otherRange_8a, v390, *(&v390 + 1), v397, v400, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v402, v403, v404, v405, v406, v407, v408, v409, v410, FreeBlock, v412, *&customBlockSource.version);
    if ((v94 & 0x80000000) != 0 || v45 == 1)
    {
      value = rhs.value;
      timescale = rhs.timescale;
      v45 = 1;
    }

    else
    {
      *&memoryBlock[8] = v390;
      v102 = OUTLINED_FUNCTION_4_125(v94, v95, v96, v97, v98, v99, v100, v101, blockBufferOuta, v266, v271, v276, v281, v285, v289, v293, v297, v301, cfa, v309, theArraya, v317, v321, v325, v329, v334, v338, v342, v346, v350, v354, v358, v362, v366, offseta, v375, otherRangea, otherRange_8a, v390, *(&v390 + 1), v397, v400, v82);
      CMTimeConvertScale(v103, v102, v84, kCMTimeRoundingMethod_RoundTowardZero);
      if (v45 >= *&customBlockSource.version / v83)
      {
        v45 = *&customBlockSource.version / v83;
      }

      OUTLINED_FUNCTION_7_83();
      *&memoryBlock[12] = rhs.value;
      *&memoryBlock[20] = rhs.timescale;
      v112 = OUTLINED_FUNCTION_4_125(v104, v105, v106, v107, v108, v109, v110, v111, blockBufferOutb, v267, v272, v277, v282, v286, v290, v294, v298, v302, cfb, v310, theArrayb, v318, v322, v326, v330, v335, v339, v343, v347, v351, v355, v359, v363, v367, offsetb, v376, otherRangeb, otherRange_8b, v391, v394, v398, v400, memoryBlock[0]);
      v114 = CMTimeMultiply(v113, v112, v45);
      OUTLINED_FUNCTION_5_108(v114, v115, v116, v117, v118, v119, v120, v121, blockBufferOutf, v268, v273, v278, v283, v287, v291, v295, v299, v303, cfc, v311, theArrayc, v319, v323, v327, v331, v336, v340, v344, v348, v352, v356, v360, v364, v368, offsetc, v377, otherRanged, otherRange_8c, v392, v395, v399, v400, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v402, v403, v404, v405, v406, v407, v408, v409, v410, FreeBlock, v412, *&customBlockSource.version, *(&customBlockSource.AllocateBlock + 4));
    }
  }

  else
  {
    v122 = v358 + 72 * otherRangea;
    value = v354;
    timescale = HIDWORD(v350);
    v123 = otherRangea + 1;
    v124 = 1;
    v83 = v309;
    v84 = HIDWORD(v297);
    do
    {
      v45 = v124;
      OUTLINED_FUNCTION_7_83();
      *&memoryBlock[12] = value;
      *&memoryBlock[20] = timescale;
      *&rhs.value = *v122;
      OUTLINED_FUNCTION_1_164(*(v122 + 16));
      v128 = CMTimeAdd(v127, v125, v126);
      OUTLINED_FUNCTION_5_108(v128, v129, v130, v131, v132, v133, v134, v135, blockBufferOuta, v266, v271, v276, v281, v285, v289, v293, v297, v301, cfa, v309, theArraya, v317, v321, v325, v329, v334, v338, v342, v346, v350, v354, v358, v362, v366, offseta, v375, otherRangea, otherRange_8a, v390, *(&v390 + 1), v397, v400, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v402, v403, v404, v405, v406, v407, v408, v409, v410, FreeBlock, v412, *&customBlockSource.version, *(&customBlockSource.AllocateBlock + 4));
      if (v123 >= otherRange_8a)
      {
        break;
      }

      OUTLINED_FUNCTION_7_83();
      *&memoryBlock[12] = value;
      *&memoryBlock[20] = *(v136 + 32);
      *&rhs.value = *(v122 + 72);
      OUTLINED_FUNCTION_1_164(*(v122 + 88));
      v140 = CMTimeAdd(v139, v137, v138);
      v148 = OUTLINED_FUNCTION_12_57(v140, v141, v142, v143, v144, v145, v146, v147, blockBufferOuta, v266, v271, v276, v281, v285, v289, v293, v297, v301, cfa, v309, theArraya, v317, v321, v325, v329, v334, v338, v342, v346, v350, v354, v358, v362, v366, offseta, v375, otherRangea, otherRange_8a, v390, *(&v390 + 1), v397, v400, v82, v390, *(&v390 + 1), v402, v403, v404, v405, v406, v407, v408, v409, v410, FreeBlock, v412, *&customBlockSource.version);
      ++v123;
      v124 = v45 + 1;
      v122 += 72;
    }

    while (v148 < 0);
  }

  if (v366 == 1)
  {
    v31 = v317;
    v18 = v321;
    v149 = *v317 * v45;
    v20 = otherRange_8a;
  }

  else
  {
    v31 = v317;
    v18 = v321;
    v20 = otherRange_8a;
    v149 = 0;
    if (v45 >= 1)
    {
      v150 = otherRangea;
      do
      {
        v149 += v317[v150++];
      }

      while (v150 < v45 + otherRangea);
    }
  }

  v409 = value;
  LODWORD(v410) = timescale;
  *&customBlockSource.version = v82;
  *(&customBlockSource.AllocateBlock + 4) = v390;
  OUTLINED_FUNCTION_7_83();
  *&memoryBlock[12] = v151;
  *&memoryBlock[20] = v152;
  v161 = OUTLINED_FUNCTION_12_57(v153, v154, v155, v156, v157, v158, v159, v160, blockBufferOuta, v266, v271, v276, v281, v285, v289, v293, v297, v301, cfa, v309, theArraya, v317, v321, v325, v329, v334, v338, v342, v346, v350, v354, v358, v362, v366, offseta, v375, otherRangea, otherRange_8a, v390, *(&v390 + 1), v397, v400, *memoryBlock, *&memoryBlock[8], *&memoryBlock[16], v402, v403, v404, v405, v406, v407, v408, v409, v410, FreeBlock, v412, *&customBlockSource.version);
  if (!v374 && v161 < 0)
  {
    v28 = 1;
    v26 = v341;
    v24 = v345;
    v29 = otherRangec;
    goto LABEL_84;
  }

  p_FreeBlock = &FreeBlock;
  if (v45 < v57)
  {
    p_FreeBlock = &v409;
  }

  v163 = v332;
  if (v45 < v57)
  {
    v163 = v83;
  }

  v378 = v163;
  v164 = v328;
  if (v45 < v57)
  {
    v164 = v84;
  }

  LODWORD(v332) = v164;
  if (v45 >= v57)
  {
    v165 = v57;
  }

  else
  {
    v165 = v45;
  }

  if (v45 >= v57)
  {
    v166 = v55;
  }

  else
  {
    v166 = v149;
  }

  v407 = *p_FreeBlock;
  LODWORD(v408) = *(p_FreeBlock + 2);
  v167 = otherRangec;
  if (!v345)
  {
    goto LABEL_143;
  }

  v168 = CFGetTypeID(cf);
  if (*(v341 + 104))
  {
    v169 = 0;
  }

  else
  {
    v170 = *v341;
    v169 = 0;
    if (*v341 != 1986618469)
    {
      v171 = v170 == 1668047728 || v170 == 1835365473;
      v172 = v171 || v170 == 1935832172;
      v173 = v172 || v170 == 1936684398;
      v174 = v173 || v170 == 1952807028;
      if (v174 || v170 == 1953325924)
      {
        v169 = 1;
      }
    }
  }

  if (CMBlockBufferGetTypeID() != v168)
  {
    if (CVPixelBufferGetTypeID() == v168)
    {
      EndOffset = CVPixelBufferLockBaseAddress(cf, 0);
      if (EndOffset)
      {
        return EndOffset;
      }

      CVPixelBufferGetBaseAddress(cf);
      if (v169)
      {
        appended = appendDataViaDataBuffer(v337, v345, v166);
      }

      else
      {
        appended = appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(v337, v345, 0);
        if (!appended)
        {
          appended = appendAggregateBBufToByteStream(v337, v345);
          if (!appended)
          {
            appended = CMByteStreamAppend();
          }
        }
      }

      v202 = appended;
      CVPixelBufferUnlockBaseAddress(cf, 0);
      goto LABEL_141;
    }

    goto LABEL_143;
  }

  v176 = cf;
  IsMemoryPoolBlockBuffer = FigIsMemoryPoolBlockBuffer();
  if (!IsMemoryPoolBlockBuffer || (OUTLINED_FUNCTION_613(), IsMemoryPoolBlockBuffer = CMBlockBufferIsRangeContiguous(v185, v186, v187), !IsMemoryPoolBlockBuffer))
  {
    v204 = OUTLINED_FUNCTION_2_156(IsMemoryPoolBlockBuffer, v178, v179, v180, v181, v182, v183, v184, blockBufferOut, v265, v270, v275, v280, v284, v288, v292, v296, v300, cf, v308, theArray, v316, v320, v324, v328, v332, v337);
    v207 = v176;
    v208 = offset;
    v209 = v166;
    goto LABEL_135;
  }

  DataLength = CMBlockBufferGetDataLength(cf);
  v404 = 0;
  v405 = 0;
  v403 = 0;
  v189 = *(v341 + 100);
  v190 = FigMemoryPoolBlockBufferGetPaddedWriteInfo();
  if (v190)
  {
    goto LABEL_129;
  }

  if (v189 < 2 || (offset + v166) != DataLength)
  {
    v198 = OUTLINED_FUNCTION_2_156(v190, v191, v192, v193, offset, v194, v195, v196, blockBufferOut, v265, v270, v275, v280, v284, v288, v292, v296, v300, cf, v308, theArray, v316, v320, v324, v328, v332, v337);
    v190 = appendBlockBufferToSampleDataDestination(v198, v199, v200, cf, v201, v166);
    goto LABEL_129;
  }

  v328 = v403;
  v233 = *v337;
  *memoryBlock = 0;
  rhs.value = 0;
  value = 0;
  v406 = 0;
  OUTLINED_FUNCTION_613();
  if (CMBlockBufferIsRangeContiguous(v234, v235, v236) != 1)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v265, v270);
    v167 = otherRangec;
    if (v210)
    {
      goto LABEL_136;
    }

    v204 = OUTLINED_FUNCTION_2_156(v210, v251, v252, v253, v254, v328 + v166, v255, v256, blockBufferOute, v269, v274, v275, v280, v284, v288, v292, v296, v300, cf, v308, theArray, v316, v320, v324, v328, v332, v337);
    v207 = 0;
    v208 = offset;
LABEL_135:
    v210 = appendBlockBufferToSampleDataDestination(v204, v205, v206, v207, v208, v209);
LABEL_136:
    v202 = v210;
    goto LABEL_142;
  }

  v190 = FigMemoryPoolBlockBufferGetPaddedWriteInfo();
  if (v190)
  {
LABEL_129:
    v202 = v190;
  }

  else
  {
    customBlockSource.version = 0;
    if (cf)
    {
      v237 = CFRetain(cf);
    }

    else
    {
      v237 = 0;
    }

    customBlockSource.refCon = v237;
    customBlockSource.AllocateBlock = 0;
    customBlockSource.FreeBlock = mdcwMemPoolBBufSourceRelease;
    v238 = CMBlockBufferCreateWithMemoryBlock(v233, *memoryBlock, rhs.value, 0, &customBlockSource, 0, rhs.value, 0, &v406);
    v245 = v406;
    if (v238)
    {
      v202 = v238;
      if (v406)
      {
        CFRelease(v406);
      }

      if (cf)
      {
        v250 = cf;
LABEL_175:
        CFRelease(v250);
      }
    }

    else
    {
      v246 = OUTLINED_FUNCTION_2_156(v238, v239, v240, v241, v242, v328 + v166, v243, v244, blockBufferOutd, v265, v270, v275, v280, v284, v288, v292, v296, v300, cf, v308, theArray, v316, v320, v324, v328, v332, v337);
      v202 = appendBlockBufferToSampleDataDestination(v246, v247, v248, v245, offset, v249);
      if (v245)
      {
        v250 = v245;
        goto LABEL_175;
      }
    }
  }

LABEL_141:
  v167 = otherRangec;
LABEL_142:
  if (v202)
  {
    return v202;
  }

LABEL_143:
  if (v18 == 1)
  {
    v211 = 1;
  }

  else
  {
    v211 = v165;
  }

  if (v18 == 1)
  {
    v212 = 0;
  }

  else
  {
    v212 = v167;
  }

  if (v365 == 1)
  {
    v213 = 1;
  }

  else
  {
    v213 = v165;
  }

  if (v365 == 1)
  {
    v214 = 0;
  }

  else
  {
    v214 = v167;
  }

  if (theArray)
  {
    if (v167 || CFArrayGetCount(theArray) != v165)
    {
      OUTLINED_FUNCTION_613();
      Mutable = CFArrayCreateMutable(v216, v217, v218);
      v418.location = otherRangec;
      v418.length = v165;
      CFArrayAppendArray(Mutable, theArray, v418);
    }

    else
    {
      Mutable = CFRetain(theArray);
    }
  }

  else
  {
    Mutable = 0;
  }

  v219 = &v31[v214];
  v26 = v341;
  v279 = *(v341 + 16);
  blockBufferOutc = v219;
  v220 = (*(v341 + 8))(v349, v361, v166, v300, v165, v211, v357 + 72 * v212, v213);
  if (!v220)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v221 = v361 + v166;
    v222 = *(v341 + 40) + v166;
    *(v341 + 32) = v361 + v166;
    *(v341 + 40) = v222;
    OUTLINED_FUNCTION_8_66();
    rhs.value = v378;
    rhs.timescale = v332;
    *&rhs.flags = v407;
    HIDWORD(rhs.epoch) = v408;
    v231 = OUTLINED_FUNCTION_4_125(v223, v224, v225, v226, v227, v228, v229, v230, blockBufferOutc, Mutable, v292, v279, v280, v284, v288, v292, v296, v300, cf, v308, theArray, v316, v320, v324, v328, v332, v337, v341, v345, v349, v353, v357, v361, v365, offset, v378, otherRangec, otherRange_8, v389, v393, v396, v400, memoryBlock[0]);
    CMTimeAdd(v232, v231, &rhs);
    v28 = 0;
    *(v26 + 48) = *&customBlockSource.version;
    *(v26 + 64) = *(&customBlockSource.FreeBlock + 4);
    v361 = v221;
    v400 = v221;
    v30 = (v166 + offsetd);
    v29 = v165 + otherRangee;
    v24 = v345;
    goto LABEL_165;
  }

  v202 = v220;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v202;
}

double MediaDataChunkWriterFlush(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 16);
      if (v5 && *(v5 + 100) == 0x4000)
      {
        v6 = *(a1 + 72) % 0x4000;
        if (v6)
        {
          v7 = 0x4000 - v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      if (!appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(a1, a2, v7) && !appendAggregateBBufToByteStream(a1, a2))
      {
        *(a1 + 16) = 0;
      }

      return result;
    }

    emitter = fig_log_get_emitter();
    v10 = v2;
    v11 = 1304;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v10 = v2;
    v11 = 1303;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949685, "< MediaDataChunkWriter >", v11, v10);
}

uint64_t appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(uint64_t a1, uint64_t a2, size_t a3)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  if (a3)
  {
    if (*(a1 + 64) - v3 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = *(a1 + 64) - v3;
    }

    bzero((*(a1 + 56) + v3), v6);
    v3 = *(a1 + 72) + v6;
    *(a1 + 72) = v3;
  }

  result = appendBlockBufferReferenceToAggregateBBuf(a1, a2, *(a1 + 48), 0, v3);
  if (!result)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 48) = 0;
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;

    return allocateDataBuffer(a1);
  }

  return result;
}

uint64_t appendAggregateBBufToByteStream(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 24);
  result = CMBlockBufferGetDataLength(*(a1 + 24));
  if (result)
  {
    result = appendBlockBufferToByteStream();
    if (!result)
    {
      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }

      result = CMBlockBufferCreateEmpty(*a1, 0x40u, 0, v3);
      if (!result)
      {
        *(a1 + 32) = 0;
      }
    }
  }

  return result;
}

uint64_t getEndOffset(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  result = v6(a2, 0, &v9);
  if (!result)
  {
    DataLength = CMBlockBufferGetDataLength(*(a1 + 24));
    result = 0;
    *a3 = *(a1 + 72) + v9 + DataLength;
  }

  return result;
}

uint64_t appendDataViaDataBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_349();
  while (1)
  {
    v7 = v6[9];
    v8 = v4 >= v6[8] - v7 ? v6[8] - v7 : v4;
    memcpy((v6[7] + v7), v3, v8);
    v9 = v6[8];
    v10 = v6[9] + v8;
    v6[9] = v10;
    if (v10 == v9)
    {
      result = appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(v6, v5, 0);
      if (result)
      {
        break;
      }
    }

    v3 += v8;
    v4 -= v8;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t appendBlockBufferToByteStream()
{
  OUTLINED_FUNCTION_349();
  v6 = 0;
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v1)
  {
    return 4294954514;
  }

  result = v1(v0, 0, &v6);
  if (!result)
  {
    v3 = *(CMBaseObjectGetVTable() + 16);
    if (*v3 < 4uLL || !v3[7] || (v4 = OUTLINED_FUNCTION_1_49(), result = v5(v4), result == -12782))
    {
      OUTLINED_FUNCTION_1_49();
      return CMByteStreamAppendBlockBuffer();
    }
  }

  return result;
}

uint64_t appendBlockBufferReferenceToAggregateBBuf(uint64_t a1, uint64_t a2, CMBlockBufferRef targetBBuf, size_t offsetToData, size_t dataLength)
{
  result = CMBlockBufferAppendBufferReference(*(a1 + 24), targetBBuf, offsetToData, dataLength, 0);
  if (!result)
  {
    v8 = *(a1 + 36);
    v9 = *(a1 + 32) + 1;
    *(a1 + 32) = v9;
    if (v9 == v8)
    {

      return appendAggregateBBufToByteStream(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MediaDataChunkWriterAddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterAddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterAddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterAddTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleData_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleData_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleReference_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleReference_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleReference_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleReference_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleReference_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleReference_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackAppendSampleReference_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackStartNewChunk_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackStartNewChunk_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterGetEntireLength_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterGetEntireLength_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterGetEntireLength_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackGetPreferredChunkSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackGetPreferredChunkSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackGetPreferredChunkSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkDuration_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererTimerCreate_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
  CFRelease(a1);
}

uint64_t HandleSampleGeneratorMessage(_xpc_connection_s *a1, void *a2, char *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v7 = 0;
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

uint64_t HandleNoReplyFigSampleGeneratorMessage(uint64_t a1, void *a2)
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

void __sampleBufferGenerator_bufferQueue_dataReadyCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  value = 0;
  if (v1)
  {
    v2 = CMBufferQueueDequeueIfDataReadyAndRetain(*v1);
    if (v2)
    {
      v3 = v2;
      while (1)
      {
        FigSimpleMutexLock();
        v4 = v1[2];
        if (!v4)
        {
          break;
        }

        if (CFDictionaryGetValueIfPresent(v4, v3, &value))
        {
          v7 = 0;
          CFNumberGetValue(value, kCFNumberSInt64Type, &v7);
          v5 = v1[5];
          v6 = v7;
          cf = 0;
          xdict = 0;
          if (!FigXPCCreateBasicMessage())
          {
            xpc_dictionary_set_int64(xdict, "RequestID", v6);
            xpc_dictionary_set_int64(xdict, "SampleBufferErrorReturn", 0);
            if (!FigXPCServerCopyMemoryOrigin() && !FigXPCMessageAddDataBufferFromCMSampleBuffer())
            {
              xpc_connection_send_message(v5, xdict);
            }
          }

          FigXPCRelease();
          if (cf)
          {
            CFRelease(cf);
          }

          CFDictionaryRemoveValue(v1[2], v3);
        }

        FigSimpleMutexUnlock();
        CFRelease(v3);
        v3 = CMBufferQueueDequeueIfDataReadyAndRetain(*v1);
        if (!v3)
        {
          return;
        }
      }

      FigSimpleMutexUnlock();
      CFRelease(v3);
    }
  }
}

uint64_t sampleBufferGeneratorServer_createSampleBufferAtCursor(CFTypeRef cf, int a2, uint64_t a3, void *a4, void *a5)
{
  v9 = cf;
  v42 = 0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  if (a2)
  {
    if (cf)
    {
      v10 = CFGetTypeID(cf);
      if (v10 == FigSampleGeneratorBatchGetTypeID())
      {
        v11 = v9;
        v9 = 0;
        if (a3)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_31:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_32;
  }

  if (!cf)
  {
    goto LABEL_31;
  }

  v26 = CFGetTypeID(cf);
  if (v26 != FigSampleGeneratorGetTypeID())
  {
    goto LABEL_31;
  }

  v11 = 0;
  if (!a3)
  {
    goto LABEL_31;
  }

LABEL_5:
  length = 0;
  data = xpc_dictionary_get_data(a4, "SampleBufferGenerationRequest", &length);
  if (!data || length != 48 || (v13 = *(a3 + 32)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_32:
    v35 = v38;
    CallbackParameters = 0;
    goto LABEL_25;
  }

  v14 = data;
  CallbackParameters = sampleBufferGeneratorServer_createCallbackParameters(*(a3 + 32), 1, v11);
  if (!CallbackParameters)
  {
    goto LABEL_33;
  }

  v16 = (*(a3 + 40) + 1);
  *(a3 + 40) = v16;
  SampleBufferGeneratorRequestFromXPCMessage = sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage(v16 << 32, v14, a3, v40);
  if (!SampleBufferGeneratorRequestFromXPCMessage)
  {
    if (a2)
    {
      v18 = v40[0];
      v19 = *&v40[1];
      v20 = DWORD2(v40[1]);
      v21 = *(&v40[1] + 12);
      v23 = DWORD1(v40[2]);
      v22 = DWORD2(v40[2]);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v24)
      {
        v25 = v24(v11, v18, *(&v18 + 1), v19, v20, v21, v23, v22, 0, 0, 0, &v42);
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    v27 = *(v13 + 48);
    if (!v27 || !CFArrayGetCount(v27))
    {
      v28 = v40[0];
      v29 = *&v40[1];
      v30 = DWORD2(v40[1]);
      v31 = *(&v40[1] + 12);
      v32 = DWORD1(v40[2]);
      v33 = DWORD2(v40[2]);
      v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v34)
      {
        v25 = v34(v9, v28, *(&v28 + 1), v29, v30, v31, v32, v33, 0, 0, 0, &v42);
LABEL_21:
        v35 = v25;
        if (v25)
        {
          goto LABEL_25;
        }

        sampleBufferGeneratorServer_requestCallback(CallbackParameters, v40, 0, v42);
        if (xpc_array_get_count(CallbackParameters[2]) == 1)
        {
          dictionary = xpc_array_get_dictionary(CallbackParameters[2], 0);
          xpc_dictionary_set_value(a5, "SampleBufferResponse", dictionary);
          v35 = 0;
          goto LABEL_25;
        }

        goto LABEL_33;
      }

LABEL_24:
      v35 = 4294954514;
      goto LABEL_25;
    }

LABEL_33:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v35 = SampleBufferGeneratorRequestFromXPCMessage;
LABEL_25:
  if (v42)
  {
    CFRelease(v42);
  }

  sampleBufferGeneratorServer_destroySampleBufferGeneratorRequest(v40);
  sampleBufferGeneratorServer_destroyCallbackParameters(CallbackParameters);
  return v35;
}

void *sampleBufferGeneratorServer_createCallbackParameters(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040C95B7C1FuLL);
  if (v6 && a1)
  {
    v7 = xpc_array_create(0, 0);
    v6[2] = v7;
    if (v7)
    {
      v6[3] = a1;
      *v6 = a2;
      if (a3)
      {
        v8 = CFRetain(a3);
      }

      else
      {
        v8 = 0;
      }

      v6[1] = v8;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    if (v10)
    {
      sampleBufferGeneratorServer_destroyCallbackParameters(v6);
      return 0;
    }
  }

  return v6;
}

double sampleBufferGeneratorServer_requestCallback(uint64_t *a1, uint64_t a2, int a3, opaqueCMSampleBuffer *a4)
{
  if (!a1)
  {
    return result;
  }

  v5 = a1[3];
  if (!v5)
  {
    return result;
  }

  v6 = *(a2 + 60);
  if (v6)
  {
    v16 = 0;
    CFNumberGetValue(v6, kCFNumberSInt64Type, &v16);
    if (v16 < *a1)
    {
      if (!a4 || CMSampleBufferDataIsReady(a4))
      {
        v9 = 1;
LABEL_13:
        v11 = v16;
        v12 = a1[2];
        cf = 0;
        v13 = xpc_dictionary_create(0, 0, 0);
        v14 = v13;
        if (v13)
        {
          xpc_dictionary_set_int64(v13, "SampleBufferErrorReturn", a3);
          xpc_dictionary_set_int64(v14, "RequestID", v11);
          xpc_dictionary_set_BOOL(v14, "SampleBufferDataReady", v9);
          if (!a4 || !FigXPCServerCopyMemoryOrigin() && !FigXPCMessageAddCMSampleBuffer())
          {
            xpc_array_append_value(v12, v14);
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, cf, v18);
        }

        FigXPCRelease();
        if (cf)
        {
          CFRelease(cf);
        }

        return result;
      }

      FigSimpleMutexLock();
      CFDictionarySetValue(*(v5 + 16), a4, v6);
      FigSimpleMutexUnlock();
      cf = 0;
      if (!a1[1])
      {
        v10 = *(v5 + 48);
        cf = v10;
        goto LABEL_12;
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        v10 = cf;
LABEL_12:
        CFArrayAppendValue(v10, a4);
        v9 = 0;
        goto LABEL_13;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void sampleBufferGenerator_sendDataFailedMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sampleBufferGenerator_sendDataFailedMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double sampleBufferGenerator_bufferQueue_dataReadyCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sampleBufferGeneratorServer_enqueuePendingSampleBuffers_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void *FigCFCaptionRendererProcessCaptionCommandData(uint64_t a1, int a2, const __CFDictionary *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v6 = result;
    switch(a2)
    {
      case 1:
        goto LABEL_23;
      case 6:
        FigSimpleMutexLock();
        FigCFDictionaryGetBooleanIfPresent();
        Value = CFDictionaryGetValue(a3, @"W");
        v8 = v6[38];
        v6[38] = Value;
        if (!Value)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      case 7:
        FigSimpleMutexLock();
        Value = CFDictionaryGetValue(a3, @"C");
        v8 = v6[37];
        v6[37] = Value;
        if (Value)
        {
LABEL_7:
          CFRetain(Value);
        }

LABEL_8:
        if (v8)
        {
          CFRelease(v8);
        }

        return FigSimpleMutexUnlock();
      case 8:
        FigSimpleMutexLock();
        if (a3)
        {
          v9 = CFDictionaryGetValue(a3, @"V");
          a3 = v9;
          v10 = v6[41];
          v6[41] = v9;
          if (v9)
          {
            CFRetain(v9);
            v11 = 0;
            if (!v10)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v10 = v6[41];
          v6[41] = 0;
        }

        v11 = 1;
        if (!v10)
        {
          goto LABEL_20;
        }

LABEL_19:
        CFRelease(v10);
LABEL_20:
        if ((v11 & 1) == 0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
          CFDictionaryGetValue(ValueAtIndex, @"CMTextHighlightAttributeKey_StringToHighlight");
        }

        FigSimpleMutexUnlock();
LABEL_23:
        CMNotificationCenterGetDefaultLocalCenter();

        result = CMNotificationCenterPostNotification();
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t FigCFCaptionRendererResetCaptions(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v2 = result;
    FigSimpleMutexLock();
    v3 = *(v2 + 296);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 296) = 0;
    }

    v4 = *(v2 + 304);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 304) = 0;
    }

    FigCaptionLayoutReleaseCaptionElementArray(*(v2 + 312));
    *(v2 + 312) = 0;

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigCFCaptionRendererSetFontName(uint64_t a1, const __CFString *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = result;
    FigSimpleMutexLock();
    v5 = *(v4 + 24);
    if (v5)
    {
      CFRelease(v5);
    }

    *(v4 + 24) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);

    return FigSimpleMutexUnlock();
  }

  return result;
}

double FigCFCaptionRendererSetStyleOptions(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    v7 = *(v6 + 344);
    if (v7)
    {
      CFRelease(v7);
      *(v6 + 344) = 0;
    }

    if (a2 && (Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2), (*(v6 + 344) = Copy) == 0))
    {
      v9 = qword_1EAF17748;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954510, "<<<< FigCFCaptionRenderer >>>>", 891, v2);
    }

    else
    {

      FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t FigSteeringManifest_replyingMessageHandler(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t FPSupport_SetMetadataOutputCallbacks(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    *(result + 24) = a2;
    *(result + 32) = a3;
    result = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v4 + 40) = result;
  }

  return result;
}

double fpsupport_forEachMetadataOutput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    context[0] = a2;
    context[1] = a3;
    v3 = *(a1 + 48);
    if (v3)
    {
      context[2] = 0;
      v7.length = CFArrayGetCount(v3);
      v7.location = 0;
      CFArrayApplyFunction(v3, v7, fpsupport_forEachMetadataOutputApplierFn, context);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t fpsupport_addRenderPipelineToMetadataOutputApplierFn(uint64_t a1, CFMutableArrayRef *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = Mutable;
  cf = 0;
  key = 0;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"MetadataOutput", *(a1 + 16));
    FigCFDictionarySetInt32();
    CMTimeMakeWithSeconds(&v15, *(a1 + 40), 1000000000);
    FigSimpleRenderPipelineCreateWithCallback(v4, fpsupport_simpleRenderPipelineCallback, 0, v6, &v15, 0, &key);
    if (!v7)
    {
      FigRenderPipelineGetFigBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v10)
      {
        v12 = 0;
        v11 = 4294954514;
        goto LABEL_8;
      }

      v7 = v10(v9, @"SourceSampleBufferQueue", v4, &cf);
      if (!v7)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v11 = FigNotificationCenterAddWeakListener();
        if (!v11)
        {
          CFDictionarySetValue(*(a1 + 56), key, v6);
          v12 = key;
          goto LABEL_8;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, LODWORD(v15.value), v15.timescale);
  }

  v11 = v7;
LABEL_19:
  v12 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (key)
  {
    CFRelease(key);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (!v11)
  {
    CFArrayAppendValue(a2[1], v12);
  }

  return v11;
}

void FigMetadataOutputReactToNewBufferFromTemporalMetadataFilter(uint64_t a1, void *target, uint64_t a3)
{
  values = target;
  if (target && !CMGetAttachment(target, *MEMORY[0x1E69604B0], 0))
  {
    v5 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    v9 = v8;
    v10 = *(v7 + 24);
    if (v10 && v8)
    {
      v10(v6, a3, v5, v8);
    }

    else if (!v8)
    {
      goto LABEL_8;
    }

    CFRelease(v9);
LABEL_8:
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void FigMetadataStorageCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataStorageCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataStorageCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataStorageCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL FPSupport_UpdateMetadataOutputs_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

void FPSupport_UpdateMetadataOutputs_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FPSupport_UpdateMetadataOutputs_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FPSupport_UpdateMetadataOutputs_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fpsupport_simpleRenderPipelineCallback_cold_2(BOOL *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2 == 0;
}

uint64_t HandleAudioEngineRemoteMessage(void *a1, void *a2, void *a3)
{
  HIDWORD(v94) = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v7 = MEMORY[0x1E695E480];
  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  value[0] = 0;
  v8 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v8)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v93, v94, v95);
  }

  v42 = v8;
  if (v8)
  {
    return v42;
  }

  switch(HIDWORD(v94))
  {
    case 0x2E637079:
      return FigXPCHandleStdCopyPropertyMessage();
    case 0x2E736574:
      return FigXPCHandleStdSetPropertyMessage();
    case 0x61707666:
      OUTLINED_FUNCTION_167(MEMORY[0x1E6960C70]);
      uint64 = xpc_dictionary_get_uint64(a2, "VolumeFadeType");
      OUTLINED_FUNCTION_5_110();
      CMTime = FigXPCMessageGetCMTime();
      if (CMTime)
      {
        return CMTime;
      }

      v68 = OUTLINED_FUNCTION_6_98();
      v77 = *(v68 + 16);
      v76 = v68 + 16;
      if (*(v77 + 64))
      {
        v78 = OUTLINED_FUNCTION_7_84(v76, v69, v70, v71, v72, v73, v74, v75, v93, v94, v95);
        return v79(0, uint64, value, v78);
      }

      return 4294954514;
    case 0x63736263:
      OUTLINED_FUNCTION_3_128();
      FigEndpointStreamAudioEngineGetCMBaseObject();
      v24 = v23;
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v25)
      {
        v42 = 4294954514;
        goto LABEL_129;
      }

      v26 = v25(v24, @"inputSampleBufferConsumer", *v7, cf);
      if (!v26)
      {
        if (!cf[0])
        {
          v27 = 0;
          goto LABEL_128;
        }

        FigXPCSampleBufferConsumerServerAssociateCopiedNeighborFigSampleBufferConsumer(a1, cf[0]);
        if (!v26)
        {
          v27 = value[0];
LABEL_128:
          xpc_dictionary_set_uint64(a3, "SampleBufferConsumerObjectID", v27);
          v42 = 0;
          goto LABEL_129;
        }
      }

      v42 = v26;
LABEL_129:
      v89 = cf[0];
      if (!cf[0])
      {
        return v42;
      }

      goto LABEL_20;
    case 0x6373746D:
      OUTLINED_FUNCTION_3_128();
      FigEndpointStreamAudioEngineGetCMBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v12)
      {
LABEL_102:
        v42 = 4294954514;
        goto LABEL_125;
      }

      v13 = v12(v11, @"endpointStream", *v7, value);
      if (!v13)
      {
        if (value[0])
        {
          v13 = FigXPCEndpointStreamServerAssociateCopiedNeighborFigEndpointStream();
          if (v13)
          {
            goto LABEL_101;
          }

          v14 = cf[0];
        }

        else
        {
          v14 = 0;
        }

        xpc_dictionary_set_uint64(a3, "StreamObjectID", v14);
        v42 = 0;
LABEL_125:
        v89 = value[0];
        if (!value[0])
        {
          return v42;
        }

        goto LABEL_20;
      }

LABEL_101:
      v42 = v13;
      goto LABEL_125;
    case 0x74616664:
      value[0] = 0;
      FigEndpointStreamAudioEngineGetCMBaseObject();
      v87 = v86;
      v88 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v88)
      {
        return 4294954514;
      }

      v83 = v88(v87, @"transportAudioFormatDescription", *v7, value);
      v84 = value[0];
      if (!v83)
      {
        v85 = FigXPCMessageSetFigEndpointStreamAudioFormatDescription();
LABEL_95:
        v42 = v85;
        v84 = value[0];
        if (!value[0])
        {
          return v42;
        }

        goto LABEL_96;
      }

LABEL_146:
      v42 = v83;
      if (!v84)
      {
        return v42;
      }

LABEL_96:
      v89 = v84;
      goto LABEL_20;
    case 0x666C7372:
      v28 = *(MEMORY[0x1E6960C98] + 16);
      *cf = *MEMORY[0x1E6960C98];
      v100 = v28;
      v101 = *(MEMORY[0x1E6960C98] + 32);
      OUTLINED_FUNCTION_5_110();
      CMTime = FigXPCMessageGetCMTimeRange();
      if (CMTime)
      {
        return CMTime;
      }

      v29 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v29)
      {
        *value = *cf;
        v103 = v100;
        v104 = v101;
        return v29(0, value);
      }

      return 4294954514;
    case 0x666C7573:
      value[0] = 0;
      v13 = FigXPCMessageCopyCFDictionary();
      if (!v13)
      {
        v90 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v90)
        {
          v13 = v90(0, value[0]);
          goto LABEL_101;
        }

        goto LABEL_102;
      }

      goto LABEL_101;
    case 0x7273756D:
      OUTLINED_FUNCTION_3_128();
      v97 = 0;
      *&v111 = 0;
      *&v107 = 0;
      *&v105 = 0;
      v43 = xpc_dictionary_get_BOOL(a2, "HasAudioSourceOption");
      if (FigXPCMessageCopyCFDictionary())
      {
        OUTLINED_FUNCTION_9_61();
        MutableCopy = 0;
        goto LABEL_106;
      }

      v44 = *v7;
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (v43)
      {
        if (qword_1ED4CB7D8 != -1)
        {
          dispatch_once(&qword_1ED4CB7D8, &__block_literal_global_90);
        }

        v46 = off_1ED4CB7E0;
        if (!off_1ED4CB7E0)
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v93, v94, 0);
          if (v92)
          {
            goto LABEL_144;
          }
        }

        if (v46(v44, a2, cf))
        {
          goto LABEL_144;
        }

        CFDictionaryAddValue(MutableCopy, @"audioSourceOption", cf[0]);
      }

      if (!xpc_dictionary_get_uint64(a2, "EndpointStreamHintObjectID"))
      {
        goto LABEL_68;
      }

      if (!FigXPCEndpointStreamServerRetainEndpointStreamForID())
      {
        CFDictionaryAddValue(MutableCopy, @"endpointStreamHint", v97);
LABEL_68:
        if (!FigXPCMessageCopyFigEndpointStreamAudioFormatDescription() && v107)
        {
          CFDictionaryAddValue(MutableCopy, @"initialTransportAudioFormatDescriptionHint", v107);
        }

        if (!FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray() && v105)
        {
          CFDictionaryAddValue(MutableCopy, @"supportedAudioFormatDescriptions", v105);
        }

        v47 = CreateCompletionCallbackParametersFromMessageAndConnection(a2, a1, &v111);
        a1 = v111;
        if (!v47)
        {
          OUTLINED_FUNCTION_1_165();
          if (v49)
          {
            v50 = 0;
          }

          else
          {
            v50 = v48;
          }

          VTable = CMBaseObjectGetVTable();
          v53 = *(VTable + 16);
          v52 = VTable + 16;
          v54 = *(v53 + 8);
          if (v54)
          {
            v54(0, MutableCopy, v50, a1);
          }

          else
          {
            if (!a1)
            {
              goto LABEL_105;
            }

            SimpleCompletionCallback(v52, -12782, a1);
          }

          a1 = 0;
LABEL_105:
          v42 = 0;
          goto LABEL_106;
        }

        v42 = v47;
LABEL_106:
        DestroyCompletionCallbackParameters(a1);
        if (value[0])
        {
          CFRelease(value[0]);
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v97)
        {
          CFRelease(v97);
        }

        if (v107)
        {
          CFRelease(v107);
        }

        v89 = v105;
        if (!v105)
        {
          return v42;
        }

LABEL_20:
        CFRelease(v89);
        return v42;
      }

LABEL_144:
      OUTLINED_FUNCTION_9_61();
      goto LABEL_106;
    case 0x73616664:
      value[0] = 0;
      FigEndpointStreamAudioEngineGetCMBaseObject();
      v81 = v80;
      v82 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v82)
      {
        return 4294954514;
      }

      v83 = v82(v81, @"supportedAudioFormatDescriptions", *v7, value);
      v84 = value[0];
      if (!v83)
      {
        v85 = FigXPCMessageSetFigEndpointStreamAudioFormatDescriptionArray();
        goto LABEL_95;
      }

      goto LABEL_146;
    case 0x73657375:
      OUTLINED_FUNCTION_167(MEMORY[0x1E6960C70]);
      OUTLINED_FUNCTION_5_110();
      CMTime = FigXPCMessageGetCMTime();
      if (CMTime)
      {
        return CMTime;
      }

      v55 = OUTLINED_FUNCTION_6_98();
      v64 = *(v55 + 16);
      v63 = v55 + 16;
      if (*(v64 + 56))
      {
        v65 = OUTLINED_FUNCTION_7_84(v63, v56, v57, v58, v59, v60, v61, v62, v93, v94, v95);
        return v66(0, value, v65);
      }

      return 4294954514;
    case 0x73726174:
      *v96 = *MEMORY[0x1E6960C70];
      v98 = *(MEMORY[0x1E6960C70] + 16);
      v111 = *MEMORY[0x1E6960C70];
      v112 = v98;
      v109 = 0;
      v110 = 0;
      v15 = xpc_dictionary_get_double(a2, "Rate");
      if (FigXPCMessageGetCMTime() || FigXPCMessageGetCMTime())
      {
        OUTLINED_FUNCTION_9_61();
      }

      else
      {
        v16 = CreateCompletionCallbackParametersFromMessageAndConnection(a2, a1, &v110);
        if (v16)
        {
          v42 = v16;
          a1 = v110;
        }

        else
        {
          v17 = FigXPCMessageCopyCFDictionary();
          a1 = v110;
          if (v17)
          {
            v42 = v17;
          }

          else
          {
            if (v110)
            {
              v18 = SetRateAndAnchorTimeCallback;
            }

            else
            {
              v18 = 0;
            }

            v107 = *v96;
            v108 = v98;
            v105 = v111;
            v106 = v112;
            v19 = CMBaseObjectGetVTable();
            v21 = *(v19 + 16);
            v20 = v19 + 16;
            v22 = *(v21 + 48);
            if (v22)
            {
              *value = v107;
              *&v103 = v108;
              *cf = v105;
              *&v100 = v106;
              v22(0, value, cf, v18, a1, v109, v15);
            }

            else if (a1)
            {
              SetRateAndAnchorTimeCallback(0.0, v20, -12782, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0, a1);
            }

            a1 = 0;
            v42 = 0;
          }
        }
      }

      DestroyCompletionCallbackParameters(a1);
      v89 = v109;
      if (!v109)
      {
        return v42;
      }

      goto LABEL_20;
    case 0x73737064:
      OUTLINED_FUNCTION_3_128();
      if (!FigXPCMessageCopyCFDictionary())
      {
        v36 = OUTLINED_FUNCTION_5_110();
        CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v36, a1, v37);
        a1 = cf[0];
        if (!CompletionCallbackParametersFromMessageAndConnection)
        {
          OUTLINED_FUNCTION_1_165();
          v38 = CMBaseObjectGetVTable();
          v39 = *(v38 + 16);
          v34 = v38 + 16;
          if (*(v39 + 16))
          {
LABEL_53:
            v40 = OUTLINED_FUNCTION_8_67();
            v41(v40);
            goto LABEL_54;
          }

LABEL_55:
          if (!a1)
          {
            goto LABEL_56;
          }

          SimpleCompletionCallback(v34, -12782, a1);
LABEL_54:
          a1 = 0;
LABEL_56:
          v42 = 0;
LABEL_57:
          DestroyCompletionCallbackParameters(a1);
          goto LABEL_125;
        }

LABEL_137:
        v42 = CompletionCallbackParametersFromMessageAndConnection;
        goto LABEL_57;
      }

LABEL_138:
      OUTLINED_FUNCTION_9_61();
      goto LABEL_57;
    case 0x7373746D:
      OUTLINED_FUNCTION_3_128();
      if (!xpc_dictionary_get_uint64(a2, "StreamObjectID") || !FigXPCEndpointStreamServerRetainEndpointStreamForID())
      {
        v30 = OUTLINED_FUNCTION_5_110();
        CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v30, a1, v31);
        a1 = cf[0];
        if (!CompletionCallbackParametersFromMessageAndConnection)
        {
          OUTLINED_FUNCTION_1_165();
          v33 = CMBaseObjectGetVTable();
          v35 = *(v33 + 16);
          v34 = v33 + 16;
          if (*(v35 + 24))
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }

        goto LABEL_137;
      }

      goto LABEL_138;
    case 0x646F6F6D:
      return FigXPCServerDisassociateObjectWithConnection();
  }

  return 4294951815;
}

uint64_t SimpleCompletionCallback(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 && !FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(0, "CompletionID", *a3);
    xpc_dictionary_set_int64(0, "CompletionStatus", a2);
    xpc_connection_send_message(*(a3 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a3);
  return FigXPCRelease();
}

uint64_t SetRateAndAnchorTimeCallback(double a1, uint64_t a2, int a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  if (a7 && !FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(0, "CompletionID", *a7);
    xpc_dictionary_set_int64(0, "CompletionStatus", a3);
    xpc_dictionary_set_double(0, "Rate", a1);
    FigXPCMessageSetCMTime();
    FigXPCMessageSetCMTime();
    FigXPCMessageSetCFDictionary();
    xpc_connection_send_message(*(a7 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a7);
  return FigXPCRelease();
}

void CreateCompletionCallbackParametersFromMessageAndConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigSampleBufferConsumerInputForBufferedAirPlayOutputCreate(const __CFAllocator *a1, const void *a2, const char *a3, CFTypeRef *a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  v8 = 4294954535;
  if (a2)
  {
    if (a4)
    {
      FigSampleBufferConsumerGetClassID();
      v8 = CMDerivedObjectCreate();
      if (!v8)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v10 = FigReentrantMutexCreate();
        *DerivedStorage = v10;
        if (v10)
        {
          *(DerivedStorage + 8) = CFRetain(a2);
          *(DerivedStorage + 16) = FigDispatchQueueCreateWithPriority();
          v11 = MEMORY[0x1E6960C70];
          v12 = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
          v13 = *(v11 + 16);
          *(DerivedStorage + 40) = v13;
          *(DerivedStorage + 48) = 0;
          *(DerivedStorage + 56) = v12;
          *(DerivedStorage + 72) = v13;
          *(DerivedStorage + 80) = 0;
          if (a3)
          {
            v14 = a3;
          }

          else
          {
            v14 = "-";
          }

          v8 = 0;
          *(DerivedStorage + 88) = CFStringCreateWithCString(a1, v14, 0x8000100u);
          *a4 = 0;
        }

        else
        {
          return 4294954536;
        }
      }
    }
  }

  return v8;
}

void FigVirtualDisplayScreenRecordingPostState()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CB810 != -1)
  {
    dispatch_once(&qword_1ED4CB810, &__block_literal_global_91);
  }

  OUTLINED_FUNCTION_11_61();
  if (v0)
  {
    FigSimpleMutexLock();
    Count = CFSetGetCount(qword_1ED4CB7F8);
    v6 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigVirtualDisplayScreenRecordingPostState_block_invoke;
    block[3] = &__block_descriptor_tmp_105;
    v4 = Count > 0;
    dispatch_async(qword_1ED4CB808, block);
    FigSimpleMutexUnlock();
  }
}

double recordingSessionRegister(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (qword_1ED4CB810 != -1)
  {
    dispatch_once(&qword_1ED4CB810, &__block_literal_global_91);
  }

  OUTLINED_FUNCTION_11_61();
  if (v4)
  {
    if (*(DerivedStorage + 101))
    {
      if (*(DerivedStorage + 102))
      {
        if (*DerivedStorage == 2)
        {
          FigSimpleMutexLock();
          Count = CFSetGetCount(qword_1ED4CB7F8);
          CFSetAddValue(qword_1ED4CB7F8, a1);
          if (!Count)
          {
            OUTLINED_FUNCTION_0_174();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v14 = OUTLINED_FUNCTION_88_4(os_log_and_send_and_compose_flags_and_os_log_type, v7, v8, v9, v10, v11, v12, v13, v54, v57, v60, v63, SBYTE2(v63), BYTE3(v63), SHIDWORD(v63));
            if (OUTLINED_FUNCTION_77_0(v14))
            {
              OUTLINED_FUNCTION_9_62();
              OUTLINED_FUNCTION_26_22();
              WORD2(v67) = v15;
              *(&v67 + 6) = "recordingSessionRegister";
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_2_157(v16, v17, v18, v19, &dword_1962D5000, v20, v21, "<<<< FigVirtualDisplaySession >>>>%@ %s: screen recording probably started", v55, v58, v61, v64, v66, v67, *(&v67 + 1), v68, v69);
              OUTLINED_FUNCTION_10_59();
            }

            v22 = OUTLINED_FUNCTION_1_166();
            OUTLINED_FUNCTION_8_68(v22, 1, v23, v24, v25);
            dispatch_async(qword_1ED4CB808, &__block_literal_global_80);
          }

          FigSimpleMutexUnlock();
        }

        return result;
      }

      OUTLINED_FUNCTION_0_174();
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v49 = OUTLINED_FUNCTION_88_4(v41, v42, v43, v44, v45, v46, v47, v48, v54, v57, v60, v63, SBYTE2(v63), BYTE3(v63), SHIDWORD(v63));
      if (OUTLINED_FUNCTION_77_0(v49))
      {
        OUTLINED_FUNCTION_9_62();
        OUTLINED_FUNCTION_26_22();
        OUTLINED_FUNCTION_23_29();
        LODWORD(v68) = 415;
        OUTLINED_FUNCTION_39();
        goto LABEL_17;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_174();
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v34 = OUTLINED_FUNCTION_88_4(v26, v27, v28, v29, v30, v31, v32, v33, v54, v57, v60, v63, SBYTE2(v63), BYTE3(v63), SHIDWORD(v63));
      if (OUTLINED_FUNCTION_77_0(v34))
      {
        OUTLINED_FUNCTION_9_62();
        OUTLINED_FUNCTION_26_22();
        OUTLINED_FUNCTION_23_29();
        LODWORD(v68) = 414;
        OUTLINED_FUNCTION_39();
LABEL_17:
        OUTLINED_FUNCTION_2_157(v35, v36, v37, v38, &dword_1962D5000, v39, v40, "<<<< FigVirtualDisplaySession >>>>%@ %s: %d: false condition", v56, v59, v62, v65, v66, v67, *(&v67 + 1), v68, v69);
        OUTLINED_FUNCTION_10_59();
      }
    }

    v50 = OUTLINED_FUNCTION_1_166();
    return OUTLINED_FUNCTION_8_68(v50, 0, v51, v52, v53);
  }

  return result;
}

double recordingSessionUnregister(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (qword_1ED4CB810 != -1)
  {
    dispatch_once(&qword_1ED4CB810, &__block_literal_global_91);
  }

  OUTLINED_FUNCTION_11_61();
  if (v4)
  {
    if (*(DerivedStorage + 101))
    {
      FigSimpleMutexLock();
      Count = CFSetGetCount(qword_1ED4CB7F8);
      CFSetRemoveValue(qword_1ED4CB7F8, a1);
      if (Count >= 1 && !CFSetGetCount(qword_1ED4CB7F8))
      {
        OUTLINED_FUNCTION_0_174();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v14 = OUTLINED_FUNCTION_88_4(os_log_and_send_and_compose_flags_and_os_log_type, v7, v8, v9, v10, v11, v12, v13, v45, v48, v51, v54, SBYTE2(v54), BYTE3(v54), SHIDWORD(v54));
        if (OUTLINED_FUNCTION_77_0(v14))
        {
          OUTLINED_FUNCTION_9_62();
          OUTLINED_FUNCTION_26_22();
          WORD2(v58) = v15;
          *(&v58 + 6) = "recordingSessionUnregister";
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_2_157(v16, v17, v18, v19, &dword_1962D5000, v20, v21, "<<<< FigVirtualDisplaySession >>>>%@ %s: screen recording probably stopped", v46, v49, v52, v55, v57, v58, *(&v58 + 1), v59, v60);
          OUTLINED_FUNCTION_10_59();
        }

        v22 = OUTLINED_FUNCTION_1_166();
        OUTLINED_FUNCTION_8_68(v22, 1, v23, v24, v25);
        dispatch_async(qword_1ED4CB808, &__block_literal_global_83_0);
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      OUTLINED_FUNCTION_0_174();
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v34 = OUTLINED_FUNCTION_88_4(v26, v27, v28, v29, v30, v31, v32, v33, v45, v48, v51, v54, SBYTE2(v54), BYTE3(v54), SHIDWORD(v54));
      if (OUTLINED_FUNCTION_77_0(v34))
      {
        OUTLINED_FUNCTION_9_62();
        OUTLINED_FUNCTION_26_22();
        OUTLINED_FUNCTION_23_29();
        LODWORD(v59) = 445;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_2_157(v35, v36, v37, v38, &dword_1962D5000, v39, v40, "<<<< FigVirtualDisplaySession >>>>%@ %s: %d: false condition", v47, v50, v53, v56, v57, v58, *(&v58 + 1), v59, v60);
        OUTLINED_FUNCTION_10_59();
      }

      v41 = OUTLINED_FUNCTION_1_166();
      return OUTLINED_FUNCTION_8_68(v41, 0, v42, v43, v44);
    }
  }

  return result;
}

double fvds_stop(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 100))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 100) = 0;
  }

  switch(*(DerivedStorage + 4))
  {
    case 1:
      goto LABEL_14;
    case 2:
      goto LABEL_10;
    case 3:
      goto LABEL_8;
    case 4:
      goto LABEL_6;
    case 5:
      v4 = *(DerivedStorage + 32);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v5)
      {
        v5(v4);
      }

LABEL_6:
      v6 = *(DerivedStorage + 40);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v7)
      {
        v7(v6);
      }

LABEL_8:
      v8 = *(DerivedStorage + 48);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v9)
      {
        v9(v8, 0);
      }

LABEL_10:
      v10 = *(DerivedStorage + 48);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v11)
      {
        v11(v10, 0);
      }

      v12 = *(DerivedStorage + 40);
      v13 = *(DerivedStorage + 48);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v14)
      {
        v14(v12, v13);
      }

LABEL_14:
      v15 = *(DerivedStorage + 32);
      v16 = *(DerivedStorage + 40);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v17)
      {
        v17(v15, v16);
      }

      break;
    default:
      break;
  }

  *DerivedStorage = 0;
  if (*(DerivedStorage + 101))
  {
    if (qword_1ED4CB830 != -1)
    {
      dispatch_once(&qword_1ED4CB830, &__block_literal_global_88);
    }

    if (byte_1ED4CB7F0)
    {
      FigSimpleMutexLock();
      if (qword_1ED4CB818 == a1)
      {
        qword_1ED4CB818 = 0;
      }

      CFSetRemoveValue(qword_1ED4CB820, a1);
      FigSimpleMutexUnlock();
    }
  }

  if (*(DerivedStorage + 102))
  {

    return recordingSessionUnregister(a1);
  }

  return result;
}

uint64_t figTTMLDocumentWriterRegionBuilder_EndElement()
{
  v32 = *MEMORY[0x1E69E9840];
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2 != *(DerivedStorage + 8))
  {
LABEL_36:
    timescale = 0;
    *(DerivedStorage + 16) = FigTTMLDocumentWriterElementGetParentElement(v2);
    return timescale;
  }

  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v22 = Mutable;
  v6 = *(MEMORY[0x1E6960C98] + 16);
  v23 = *MEMORY[0x1E6960C98];
  v24 = v6;
  v25 = *(MEMORY[0x1E6960C98] + 32);
  FigTTMLDocumentWriterElementWalkTree(*(v3 + 8), updateContextTimeRange, 0, addExplicitCaptionRegionToDictionary, &v22);
  if (!FigCFDictionaryGetCount() || (v31 = 9, v29 = 0, v30 = 0x800000007, FigTTMLDocumentWriterElementInsertBeforeIfNotExist(*(v3 + 8), &v30, 3, &v29), !v29))
  {
    timescale = 0;
    if (!Mutable)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *&context.value = v29;
  CFDictionaryApplyFunction(Mutable, addRegionElement, &context);
  timescale = context.timescale;
  if (Mutable)
  {
LABEL_7:
    CFRelease(Mutable);
  }

LABEL_8:
  if (timescale)
  {
    return timescale;
  }

  FigTTMLDocumentWriterGetCMBaseObject();
  v8 = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  cf = 0;
  FigTTMLDocumentWriterElementWalkTree(*(v8 + 8), 0, 0, copyRootContainerRegion, &v30);
  if (!v30)
  {
    timescale = 0;
    goto LABEL_24;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v11 = v10(CMBaseObject, *MEMORY[0x1E6961398], v4, &v29);
    if (v11)
    {
LABEL_23:
      timescale = v11;
      goto LABEL_24;
    }

    v12 = v29;
    v13 = *(v8 + 8);
    v22 = v30;
    v23 = v13;
    v33.length = CFArrayGetCount(v29);
    v33.location = 0;
    CFArrayApplyFunction(v12, v33, mapAndAddRootContainerRegionAttribute, &v22);
    timescale = DWORD2(v23);
    if (!DWORD2(v23))
    {
      v14 = FigCaptionRegionGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, *MEMORY[0x1E69613B0], v4, &v28);
      }

      v16 = FigCaptionRegionGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, *MEMORY[0x1E6961328], v4, &cf);
        v18 = cf;
      }

      else
      {
        v18 = 0;
      }

      if (!(v28 | v18))
      {
        timescale = 0;
        goto LABEL_29;
      }

      if (v28)
      {
        if (v18)
        {
          v19 = *(v8 + 8);
          context = **&MEMORY[0x1E6960C70];
          v11 = FigTTMLDocumentWriterMapWidthAndHeightPropertiesToExtentAttributeAndSet(v28, v18, &context, v19);
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950721, "(Fig)", 421, v0);
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950721, "(Fig)", 420, v0);
      }

      goto LABEL_23;
    }
  }

  else
  {
    timescale = 4294954514;
  }

LABEL_24:
  if (v28)
  {
    CFRelease(v28);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_29:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (!timescale)
  {
    v20 = FigTTMLDocumentWriterElementWriteTree(*(DerivedStorage + 8), *DerivedStorage);
    if (v20)
    {
      return v20;
    }

    v2 = *(DerivedStorage + 16);
    goto LABEL_36;
  }

  return timescale;
}

uint64_t updateContextTimeRange(uint64_t a1, uint64_t a2)
{
  Attribute = FigTTMLDocumentWriterElementGetAttribute(a1, @"begin");
  v5 = FigTTMLDocumentWriterElementGetAttribute(a1, @"end");
  if (Attribute)
  {
    v6 = v5;
    v7 = CFGetTypeID(Attribute);
    if (v7 == CFDictionaryGetTypeID() && v6 != 0)
    {
      v9 = CFGetTypeID(v6);
      if (v9 == CFDictionaryGetTypeID())
      {
        memset(&v16, 0, sizeof(v16));
        CMTimeMakeFromDictionary(&v16, Attribute);
        memset(&v15, 0, sizeof(v15));
        CMTimeMakeFromDictionary(&v15, v6);
        if ((v16.flags & 0x1D) == 1 && (v15.flags & 0x1D) == 1)
        {
          memset(&v14, 0, sizeof(v14));
          start = v16;
          v12 = v15;
          CMTimeRangeFromTimeToTime(&v14, &start, &v12);
          v10 = *&v14.start.epoch;
          *(a2 + 8) = *&v14.start.value;
          *(a2 + 24) = v10;
          *(a2 + 40) = *&v14.duration.timescale;
        }
      }
    }
  }

  return 0;
}

uint64_t addExplicitCaptionRegionToDictionary(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  cf = 0;
  v21 = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = *MEMORY[0x1E695E480];
    v4(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v23);
    if (v23)
    {
      v6 = *MEMORY[0x1E6961318];
      v7 = *MEMORY[0x1E6961338];
      v8 = *MEMORY[0x1E6961300];
      while (1)
      {
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v9 = FigCaptionRegionGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(v9, v6, v5, &cf);
        }

        if (FigCFEqual())
        {
          if (v22)
          {
            CFRelease(v22);
            v22 = 0;
          }

          v11 = FigCaptionRegionGetCMBaseObject();
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v12)
          {
            v12(v11, v7, v5, &v22);
          }

          if (v22)
          {
            break;
          }
        }

        *&v19[0] = 0;
        v13 = FigCaptionRegionGetCMBaseObject();
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14)
        {
          v14(v13, v8, v5, v19);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        v23 = *&v19[0];
        if (!*&v19[0])
        {
          goto LABEL_28;
        }
      }

      if (v23)
      {
        Value = CFDictionaryGetValue(*a2, v22);
        if (Value)
        {
          v16 = CFRetain(Value);
          v21 = v16;
          if (v16)
          {
LABEL_27:
            v17 = *(a2 + 24);
            v19[0] = *(a2 + 8);
            v19[1] = v17;
            v19[2] = *(a2 + 40);
            FigTTMLDocumentWriterRegionTimelineAddRegionSlice(v16, v19, v23);
            goto LABEL_28;
          }
        }

        else
        {
          v21 = 0;
        }

        if (FigTTMLDocumentWriterRegionTimelineCreate(&v21))
        {
          goto LABEL_28;
        }

        CFDictionarySetValue(*a2, v22, v21);
        v16 = v21;
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return 0;
}

void mapAndAddRootContainerRegionAttribute(const void *a1, uint64_t a2)
{
  cf = 0;
  if (!*(a2 + 16))
  {
    CMBaseObject = FigCaptionRegionGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = *MEMORY[0x1E695E480];
      v7 = v5(CMBaseObject, a1, *MEMORY[0x1E695E480], &cf);
      v8 = cf;
      if (v7 || !cf)
      {
        if (!v7)
        {
LABEL_13:
          if (v8)
          {
            CFRelease(v8);
          }

          return;
        }

        Mutable = 0;
      }

      else
      {
        MEMORY[0x19A8D3660](&initRegionPropertyToAttributeMapOnce, initRegionPropertyToAttributeMap);
        Value = CFDictionaryGetValue(sRootContainerRegionPropertyToAttributeMap, a1);
        if (!Value)
        {
          goto LABEL_12;
        }

        v10 = Value;
        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v7 = v10(cf, Mutable);
        if (!v7)
        {
          CFDictionaryApplyFunction(Mutable, setAttributeToElement, *(a2 + 8));
          if (!Mutable)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
      Mutable = 0;
      v7 = -12782;
    }

    *(a2 + 16) = v7;
    if (Mutable)
    {
LABEL_11:
      CFRelease(Mutable);
    }

LABEL_12:
    v8 = cf;
    goto LABEL_13;
  }
}

const void *PerformInitializeProperty(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_158(a1);
  result = AccessPropertyInfo(v2, *(v1 + 8), &v7);
  v4 = result;
  if (!result)
  {
    v5 = v7;
    *v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v6)
    {
      v6 = CFRetain(v6);
      v5 = v7;
    }

    v5[1] = v6;
    result = *(v1 + 32);
    if (result)
    {
      result = CFRetain(result);
      v5 = v7;
    }

    v5[2] = result;
  }

  *(v1 + 40) = v4;
  return result;
}

const void *PerformQueryProperty(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_158(a1);
  result = AccessPropertyInfo(v2, *(v1 + 8), &v7);
  v4 = result;
  if (!result)
  {
    v5 = v7;
    *(v1 + 20) = v7[1];
    v6 = *(v5 + 1);
    if (v6)
    {
      v6 = CFRetain(v6);
      v5 = v7;
    }

    *(v1 + 24) = v6;
    *(v1 + 16) = *v5;
    result = *(v5 + 2);
    if (result)
    {
      result = CFRetain(result);
      v5 = v7;
    }

    *(v1 + 32) = result;
    *(v1 + 40) = *(v5 + 32);
  }

  *(v1 + 44) = v4;
  return result;
}

uint64_t ObtainPropertySync(uint64_t a1, uint64_t a2, void *a3, CFStringRef *a4)
{
  *cf = 0u;
  context[0] = a1;
  context[1] = a2;
  group[0] = 0;
  v15 = 0u;
  LOBYTE(cf[1]) = 0;
  group[1] = 1;
  v8 = OUTLINED_FUNCTION_1_167(a1);
  dispatch_sync_f(v8, context, v9);
  v10 = HIDWORD(cf[1]);
  if (!HIDWORD(cf[1]))
  {
    v11 = v15;
    if (v15 == 1)
    {
      if (a4 && *(a1 + 136))
      {
        *a4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Potential blockage due to synchronous property query on not-yet-loaded property (%@) for HTTP(S) asset. This could have been a problem if this asset were being read from a slow network.", a2);
      }

      dispatch_group_wait(group[0], 0xFFFFFFFFFFFFFFFFLL);
      dispatch_sync_f(*(a1 + 16), context, PerformQueryProperty);
      if (HIDWORD(cf[1]))
      {
        v10 = 0;
        goto LABEL_12;
      }

      v11 = v15;
    }

    v10 = DWORD1(v15);
    if (v11 == 2)
    {
      v12 = cf[0];
      if (cf[0])
      {
        v12 = CFRetain(cf[0]);
      }

      *a3 = v12;
    }
  }

LABEL_12:
  TearDownFetchPropertyContext(context);
  return v10;
}

uint64_t PerformObtainProperty(uint64_t a1)
{
  v14 = 0;
  result = AccessPropertyInfo(*a1, *(a1 + 8), &v14);
  if (result)
  {
    goto LABEL_20;
  }

  v3 = v14;
  if (v14[32])
  {
    if (*(a1 + 56) == 1)
    {
      result = 4294951201;
      goto LABEL_20;
    }

    if (*v14)
    {
      goto LABEL_11;
    }

    v5 = *a1;
    v4 = *(a1 + 8);
    v15[2] = 0;
    v16 = 0;
    v17 = 0;
    Value = CFDictionaryGetValue(v5[15], v4);
    if (CFArrayGetCount(Value))
    {
      *v3 = 1;
      v16 = 0;
      v15[0] = v5;
      v15[1] = Value;
      PerformMultiplePropertyRequest(v15);
      goto LABEL_11;
    }

    v3 = v14;
  }

  else if (*v14)
  {
    goto LABEL_11;
  }

  *v3 = 1;
  v7 = dispatch_group_create();
  *(v14 + 3) = v7;
  dispatch_group_enter(v7);
  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040CC7F86E7uLL);
  *v8 = CFRetain(*a1);
  v8[1] = CFRetain(*(a1 + 8));
  v8[5] = CFRetain(*(*a1 + 112));
  *(v8 + 48) = v14[32];
  dispatch_group_async_f(*(*a1 + 96), *(*a1 + 88), v8, *(*a1 + 104));
LABEL_11:
  v9 = v14;
  if (*v14 == 1 && *(a1 + 56) == 1)
  {
    v10 = *(v14 + 3);
    *(a1 + 48) = v10;
    dispatch_retain(v10);
    v9 = v14;
  }

  *(a1 + 20) = *(v9 + 1);
  v11 = *(v9 + 1);
  if (v11)
  {
    v11 = CFRetain(v11);
    v9 = v14;
  }

  *(a1 + 24) = v11;
  *(a1 + 16) = *v9;
  v12 = *(v9 + 2);
  if (v12)
  {
    v13 = CFRetain(v12);
    v9 = v14;
  }

  else
  {
    v13 = 0;
  }

  result = 0;
  *(a1 + 32) = v13;
  *(a1 + 40) = v9[32];
LABEL_20:
  *(a1 + 44) = result;
  return result;
}

uint64_t RequestPropertyAsync(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v9 = 0u;
  v10[8] = 0;
  v11 = 0;
  v4 = OUTLINED_FUNCTION_1_167(a1);
  dispatch_sync_f(v4, v8, v5);
  v6 = *&v10[12];
  if (!*&v10[12])
  {
    *a3 = v9;
  }

  TearDownFetchPropertyContext(v8);
  return v6;
}

void PerformReviseProperty(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_158(a1);
  v3 = (v1 + 8);
  if (!AccessPropertyInfo(v2, *(v1 + 8), &v8) && *v8 == 2)
  {
    v4 = v8[2];
    v5 = *(v1 + 32);
    v8[2] = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigAssetPayloadKey_Property, (v1 + 8), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v6);
  }

  if (*v3)
  {
    CFRelease(*v3);
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v1);
}

uint64_t RequestValidationAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  context[0] = a1;
  context[1] = a2;
  v9 = 0;
  v10 = 0;
  context[2] = a3;
  dispatch_sync_f(*(a1 + 16), context, PerformRequestValidation);
  result = HIDWORD(v10);
  if (!HIDWORD(v10))
  {
    *a4 = v9;
    if (a5)
    {
      *a5 = v10;
    }
  }

  return result;
}

void PerformRequestValidation(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_158(a1);
  v3 = AccessValidationInfo(v2, *(v1 + 8), *(v1 + 16), &v9);
  if (!v3)
  {
    v4 = v9;
    v5 = *v9;
    if (!*v9)
    {
      *v9 = 1;
      v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E004058B5FA3BuLL);
      *v6 = CFRetain(*v1);
      v7 = *(v1 + 8);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      v6[1] = v7;
      v8 = *(v1 + 16);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      v6[2] = v8;
      v6[4] = CFRetain(*(*v1 + 72));
      dispatch_group_async_f(*(*v1 + 56), *(*v1 + 48), v6, *(*v1 + 64));
      v4 = v9;
      v5 = *v9;
    }

    *(v1 + 32) = *(v4 + 2);
    *(v1 + 24) = v5;
  }

  *(v1 + 36) = v3;
}

void PerformValidationJobCompletion(void *a1)
{
  keys[3] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_126();
  if (!AccessValidationInfo(*v2, a1[1], a1[2], &v14))
  {
    v3 = *(a1 + 6);
    v4 = v14;
    v5 = 2;
    if (v3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    *v14 = v6;
    *(v4 + 2) = v3;
    v7 = *MEMORY[0x1E695E480];
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v4 + 1);
    keys[0] = @"assetPayload_ValidationCriteria";
    keys[1] = @"assetPayload_Result";
    v9 = a1[2];
    values[0] = *(a1 + 1);
    values[1] = v8;
    if (v9)
    {
      keys[2] = @"assetPayload_CustomPlist";
      values[2] = v9;
      v5 = 3;
    }

    v10 = CFDictionaryCreate(v7, keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v10);
    CFRelease(v8);
  }

  v11 = a1[1];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[2];
  if (v12)
  {
    CFRelease(v12);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v13 = a1[4];
  if (v13)
  {
    CFRelease(v13);
  }

  free(a1);
}

void StoreProperty(uint64_t a1, void *a2, int a3, const void *a4, const void *a5)
{
  keys[3] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_126();
  if (!AccessPropertyInfo(v10, v11, &v40))
  {
    v12 = v40;
    if (*v40 <= 1u)
    {
      *(v40 + 1) = a3;
      v13 = MEMORY[0x1E695E480];
      if (a3)
      {
        *v12 = 3;
        v14 = *(v12 + 1);
        *(v12 + 1) = a4;
        if (a4)
        {
          CFRetain(a4);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        v15 = *v13;
        v16 = CFNumberCreate(*v13, kCFNumberSInt32Type, v40 + 4);
        keys[0] = @"assetPayload_Property";
        keys[1] = @"assetPayload_Result";
        values[0] = a2;
        values[1] = v16;
        if (a4)
        {
          keys[2] = @"assetPayload_CFError";
          values[2] = a4;
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v18 = CFDictionaryCreate(v15, keys, values, v17, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v18);
      }

      else
      {
        *v12 = 2;
        *(v12 + 2) = a5;
        if (a5)
        {
          CFRetain(a5);
        }

        keys[0] = @"assetPayload_Property";
        values[0] = a2;
        v15 = *v13;
        v16 = CFDictionaryCreate(*v13, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      CFRelease(v16);
      v19 = *(v40 + 3);
      if (v19)
      {
        dispatch_group_leave(v19);
        dispatch_release(*(v40 + 3));
        *(v40 + 3) = 0;
      }

      Count = CFArrayGetCount(*(a1 + 80));
      if (Count >= 1)
      {
        v21 = Count;
        for (i = 0; i < v21; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
          if (CFSetContainsValue(ValueAtIndex[1], a2))
          {
            CFSetRemoveValue(ValueAtIndex[1], a2);
            if (!CFSetGetCount(ValueAtIndex[1]))
            {
              v24 = *ValueAtIndex;
              CFArrayRemoveValueAtIndex(*(a1 + 80), i);
              v25 = ValueAtIndex[1];
              if (v25)
              {
                CFRelease(v25);
              }

              --v21;
              --i;
              free(ValueAtIndex);
              NotifyCompletedBatch(a1, v24);
            }
          }
        }
      }

      v26 = *(a1 + 128);
      if (v26)
      {
        v27 = v40;
        v28 = CFArrayGetCount(v26);
        if (v28 >= 1)
        {
          v29 = v28;
          v30 = 0;
          Mutable = 0;
          v32 = MEMORY[0x1E695E9C0];
          do
          {
            v33 = CFArrayGetValueAtIndex(*(a1 + 128), v30);
            if (CFSetContainsValue(*(v33 + 1), a2))
            {
              v34 = *(v33 + 1);
              if (*v27 == 2)
              {
                CFSetRemoveValue(v34, a2);
              }

              else
              {
                CFSetRemoveAllValues(v34);
              }

              if (!CFSetGetCount(*(v33 + 1)))
              {
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(v15, 0, v32);
                }

                CFArrayAppendValue(Mutable, *v33);
                CFArrayRemoveValueAtIndex(*(a1 + 128), v30);
                v35 = *(v33 + 1);
                if (v35)
                {
                  CFRelease(v35);
                  *(v33 + 1) = 0;
                }

                if (*v33)
                {
                  CFRelease(*v33);
                }

                --v29;
                --v30;
                free(v33);
              }
            }

            ++v30;
          }

          while (v30 < v29);
          if (Mutable)
          {
            v36 = CFArrayGetCount(Mutable);
            if (v36)
            {
              v37 = v36;
              if (v36 >= 1)
              {
                for (j = 0; j != v37; ++j)
                {
                  v39 = CFArrayGetValueAtIndex(Mutable, j);
                  StoreProperty(a1, v39, *(v27 + 1), *(v27 + 1), 0);
                }
              }

              CFRelease(Mutable);
            }
          }
        }
      }
    }
  }
}