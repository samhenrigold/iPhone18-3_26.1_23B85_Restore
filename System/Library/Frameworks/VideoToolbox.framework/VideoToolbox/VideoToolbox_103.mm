uint64_t __vtLoadParavirtualizedVideoDecoders_block_invoke_2(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v6 = xmmword_1ED6D4078;
  v3 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], xmmword_1ED6D4078);
  v5 = 0;
  if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v5, 0, 0))
  {
    if (v5 == 1383295341)
    {
      if (!vtUnregisterParavirtualizedVideoDecoders())
      {
        _MergedGlobals_6 = 1;
      }
    }

    else if (v5 == 1115252001 && !vtUnregisterParavirtualizedVideoDecoders())
    {
      _MergedGlobals_6 = 1;
      VTParavirtualizationGuestRemoveHandlerForUUID(&v6);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t vtFilterRegistryItemForParavirtualizedDecodersOnly(uint64_t a1, uint64_t a2)
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t vtFilterRegistryItemByCodecTypeAndVideoDecoderSpecification(void *a1, uint64_t a2)
{
  cf = 0;
  theDict = 0;
  context = a1[1];
  v47 = 1;
  HIWORD(v43) = 0;
  if (FigRegistryItemCopyMatchingInfo() || FigRegistryItemCopyDescription())
  {
    goto LABEL_51;
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = CFDictionaryGetValue(v3, @"DecoderID") == 0;
    FigCFDictionaryGetBooleanIfPresent();
  }

  else
  {
    v4 = 1;
  }

  Value = CFDictionaryGetValue(theDict, @"VTCodecType");
  v6 = Value;
  if (!Value)
  {
    goto LABEL_52;
  }

  v7 = CFGetTypeID(Value);
  if (v7 == CFStringGetTypeID())
  {
    if (!CFEqual(v6, *a1))
    {
LABEL_51:
      v6 = 0;
LABEL_52:
      v38 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v8 = CFGetTypeID(v6);
    if (v8 != CFArrayGetTypeID())
    {
      goto LABEL_51;
    }

    Count = CFArrayGetCount(v6);
    if (!OUTLINED_FUNCTION_4_4(Count))
    {
      goto LABEL_51;
    }
  }

  v10 = a1[1];
  v11 = MEMORY[0x1E695E4D0];
  if (v10)
  {
    v12 = *MEMORY[0x1E695E4C0];
    if (v12 == CFDictionaryGetValue(v10, @"AllowParavirtualizedDecoder"))
    {
      v13 = *v11;
      if (v13 == CFDictionaryGetValue(theDict, @"VTIsParavirtualized"))
      {
        goto LABEL_51;
      }
    }

    v14 = a1[1];
    if (v14)
    {
      v15 = *v11;
      if (v15 == CFDictionaryGetValue(v14, @"RequireParavirtualizedDecoder") && v12 == CFDictionaryGetValue(theDict, @"VTIsParavirtualized"))
      {
        goto LABEL_51;
      }
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (*(a1 + 17))
  {
    buffer = 0;
    FigCFDictionaryGetBooleanIfPresent();
  }

  v16 = VTGetAllowedDecoderList();
  if (v16)
  {
    v17 = CFArrayGetCount(v16);
    if (!OUTLINED_FUNCTION_4_4(v17))
    {
      goto LABEL_51;
    }
  }

  if (FigCFEqual())
  {
    v39 = a1[1];
    if (v39)
    {
      v40 = *v11;
      if (v40 != CFDictionaryGetValue(v39, @"EnableAppleOnlySWAV1"))
      {
        goto LABEL_51;
      }
    }
  }

  BYTE4(v43) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  VTAvoidHardwareDecoders();
  v18 = VTAvoidHardwareJPEGDecoders();
  if (v18)
  {
    v18 = OUTLINED_FUNCTION_8_2(v18, v19, v20, v21, v22, v23, v24, v25, v43, context, v47, cf, theDict, v50, v51, buffer);
    if (v18)
    {
      OUTLINED_FUNCTION_3_4();
      v28 = v26 | v27;
      v29 = (v28 - 1835692129) < 2 || v28 == 1635152416;
      v30 = v29 || v28 == 1684890161;
      v31 = v30 || v28 == 1785750887;
      if (v31 && HIBYTE(v43))
      {
        goto LABEL_51;
      }
    }
  }

  if (OUTLINED_FUNCTION_8_2(v18, v19, v20, v21, v22, v23, v24, v25, v43, context, v47, cf, theDict, v50, v51, buffer))
  {
    OUTLINED_FUNCTION_3_4();
    v34 = FigCodecTypeIsProtected(v32 | v33) != 0;
  }

  else
  {
    v34 = 0;
  }

  if (v44)
  {
    v35 = 0;
  }

  else
  {
    v35 = v4;
  }

  if (!v35)
  {
    v38 = 0;
    goto LABEL_61;
  }

  if (*(a1 + 16) && !v45)
  {
    goto LABEL_51;
  }

  v36 = CFDictionaryGetValue(theDict, @"VTRequiredSpecificationEntries");
  if (v45 != 0 && !v34)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v38 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"EnableHardwareAcceleratedVideoDecoder", *v11);
      v36 = v38;
      goto LABEL_63;
    }
  }

  v38 = 0;
  if (!v36)
  {
LABEL_61:
    v6 = 1;
    goto LABEL_53;
  }

LABEL_63:
  v42 = CFGetTypeID(v36);
  if (v42 != CFDictionaryGetTypeID())
  {
    goto LABEL_61;
  }

  CFDictionaryApplyFunction(v36, vtCheckRequiredSpecificationKey, &context);
  v6 = v47;
LABEL_53:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return v6;
}

uint64_t vtRegisterVideoDecoderInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCopyVideoDecoderRegistryMatchArrayForCodecType_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t VTCopyVideoDecoderRegistryMatchArrayForCodecType_cold_2(BOOL *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result != 0;
  return result;
}

uint64_t VTCompressionSessionRemoteCallbackServer_PrepareToEncodeFramesReturn(uint64_t a1, uint64_t a2, int a3)
{
  v4 = weakReferenceTable_CopyPointerFromKey();
  if (v4)
  {
    v5 = v4;
    *(v4 + 148) = a3;
    FigSemaphoreSignal();
    CFRelease(v5);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteCallbackServer_EncodeReturn(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v8 = weakReferenceTable_CopyPointerFromKey();
  if (v8)
  {
    v9 = v8;
    *(v8 + 144) = a3;
    *(v8 + 148) = a5;
    *(v8 + 152) = a4;
    FigSemaphoreSignal();
    CFRelease(v9);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteCallbackServer_CompleteFramesReturn(uint64_t a1, uint64_t a2, int a3)
{
  v4 = weakReferenceTable_CopyPointerFromKey();
  if (v4)
  {
    v5 = v4;
    *(v4 + 176) = a3;
    FigSemaphoreSignal();
    CFRelease(v5);
  }

  return 0;
}

CFStringRef VTMultiPassStorageRemote_CopyIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = VTCompressionSessionRemoteClient_MultiPassStorageCopyIdentifier(*(a1 + 24), cStr, a3);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
  }

  vtcsr_handleMachErrorsInternal(a1, v4, "VTMultiPassStorageRemote_CopyIdentifier", 0);
  return v5;
}

uint64_t VTCompressionSessionRemoteCallbackServer_PrepareToEncodeTilesReturn(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = weakReferenceTable_CopyPointerFromKey();
  if (v6)
  {
    v7 = v6;
    *(v6 + 156) = a3;
    *(v6 + 148) = a4;
    FigSemaphoreSignal();
    CFRelease(v7);
  }

  return 0;
}

uint64_t VTTemporalFilterRemote_CopyList(uint64_t a1, void *a2)
{
  v15 = 0;
  v16 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  CFDataFromCFPropertyList = vtcsr_oneTimeInitialization();
  if (CFDataFromCFPropertyList || a1 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCCreateServerConnectionForObject(), CFDataFromCFPropertyList) || *(v8 + 6) && (CFDataFromCFPropertyList = FigRemote_CopyArrayOfPropertyListFromData(), CFDataFromCFPropertyList))
  {
    v5 = CFDataFromCFPropertyList;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  if (v16)
  {
    FigRPCDisposeServerConnection();
  }

  if (*(v8 + 6))
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v12[3]);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t VTTemporalFilterSessionRemote_Create(uint64_t a1, uint64_t a2, uint64_t CStringPtrAndBufferToFree, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  OUTLINED_FUNCTION_1_4();
  v16 = vtcsr_oneTimeInitialization();
  if (v16)
  {
    v19 = v16;
LABEL_18:
    Instance = 0;
    goto LABEL_19;
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(Instance + 128) = a10;
    *(Instance + 184) = a11;
    *(Instance + 80) = dispatch_group_create();
    *(Instance + 88) = FigDispatchQueueCreateWithPriority();
    *(Instance + 72) = dispatch_queue_create("com.apple.coremedia.compressionsession.pendingframequeue", 0);
    *(Instance + 136) = FigSemaphoreCreate();
    *(Instance + 168) = FigSemaphoreCreate();
    *(Instance + 216) = 1;
    *(Instance + 48) = FigSemaphoreCreate();
    if (CStringPtrAndBufferToFree)
    {
      FigCFStringGetCStringPtrAndBufferToFree();
    }

    if (!a6 || (Key = FigCreateCFDataFromCFPropertyList(), !Key))
    {
      if (!a7 || (Key = FigCreateCFDataFromCFPropertyList(), !Key))
      {
        if (!a8 || (Key = FigCreateCFDataFromCFPropertyList(), !Key))
        {
          if (!a9 || (Key = FigCreateCFDataFromCFPropertyList(), !Key))
          {
            *(Instance + 240) = 0;
            Key = weakReferenceTable_AddPointerAndGetKey();
            if (!Key)
            {
              Key = FigRPCCreateServerConnectionForObject();
              if (!Key)
              {
                Key = FigRPCGetServerConnectionInfo();
                if (!Key)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListener();
                  v19 = 0;
                  if (!a12)
                  {
                    goto LABEL_19;
                  }

                  *a12 = Instance;
                  goto LABEL_18;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    Key = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
  }

  v19 = Key;
LABEL_19:
  v20 = vtcsr_handleMachErrorsInternal(Instance, v19, "VTTemporalFilterSessionRemote_Create", 0);
  free(0);
  if (Instance)
  {
    CFRelease(Instance);
  }

  return v20;
}

uint64_t VTCompressionSessionRemoteCallbackServer_NotificationIsPending()
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v0 = weakReferenceTable_CopyPointerFromKey();
  if (v0)
  {
    v1 = v0;
    v12 = 0;
    if (!*(v0 + 60))
    {
      v2 = *MEMORY[0x1E695E480];
      v3 = MEMORY[0x1E69E9A60];
      do
      {
        v11 = 0;
        v10 = 0;
        v13 = 0;
        if (!VTCompressionSessionRemoteClient_GetNextPendingNotification(*(v1 + 24), &v13, &v12, cStr, &v11, &v10))
        {
          v4 = v11;
          v5 = v10;
          cf = 0;
          if (!*(v1 + 60))
          {
            v6 = CFStringCreateWithCString(v2, cStr, 0);
            if (v6 && (!v4 || !v5 || !FigCreateCFPropertyListFromData()))
            {
              v7 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v7)
              {
                v8 = v7;
                CMNotificationCenterGetDefaultLocalCenter();
                CMNotificationCenterPostNotification();
                CFRelease(v8);
              }
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v6)
            {
              CFRelease(v6);
            }
          }

          MEMORY[0x193AE4440](*v3, v11, v10);
        }
      }

      while (v13);
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteCallbackServer_FrameIsPending()
{
  v0 = weakReferenceTable_CopyPointerFromKey();
  if (v0)
  {
    v1 = v0;
    if (!*(v0 + 60))
    {
      vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(v0, 0, 0);
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t VTCompressionSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_AddPointerAndGetKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_RemovePointer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTCompressionSessionRemote_SetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_GetPixelBufferPool_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_GetPixelBufferPool_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_PrepareToEncodeFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_CopyPointerFromKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_CompleteFrames_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  v9 = *a2;
  v10 = *(a2 + 16);
  v6 = VTCompressionSessionRemoteClient_CompleteFrames(v5, &v9);
  if (v6)
  {
    goto LABEL_6;
  }

  v6 = OUTLINED_FUNCTION_5_4();
  v7 = *(a1 + 176);
  if (!v7)
  {
    v6 = OUTLINED_FUNCTION_3_5(v6, 0);
    if (!v6)
    {
      OUTLINED_FUNCTION_2_4();
      v6 = FigSemaphoreSignal();
      v7 = 0;
      goto LABEL_5;
    }

LABEL_6:
    v7 = v6;
  }

LABEL_5:
  result = OUTLINED_FUNCTION_4_5(v6, v7, "VTCompressionSessionRemote_CompleteFrames");
  *a3 = result;
  return result;
}

uint64_t VTMultiPassStorageRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionRemote_PrepareToEncodeTiles_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionRemote_CompleteTiles_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  v3 = VTCompressionSessionRemoteClient_CompleteTiles(*(v2 + 24));
  if (v3)
  {
    goto LABEL_6;
  }

  v3 = OUTLINED_FUNCTION_5_4();
  v4 = *(v1 + 176);
  if (!v4)
  {
    v3 = OUTLINED_FUNCTION_3_5(v3, 0);
    if (!v3)
    {
      OUTLINED_FUNCTION_2_4();
      v3 = FigSemaphoreSignal();
      v4 = 0;
      goto LABEL_5;
    }

LABEL_6:
    v4 = v3;
  }

LABEL_5:
  result = OUTLINED_FUNCTION_4_5(v3, v4, "VTTileCompressionSessionRemote_CompleteTiles");
  *v0 = result;
  return result;
}

uint64_t VTMotionEstimationSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_CompleteMotionVectors_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  v3 = *(v2 + 232);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 232) = 0;
  }

  v4 = VTCompressionSessionRemoteClient_CompleteMotionEstimation(*(v1 + 24));
  if (v4)
  {
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_5_4();
  v5 = *(v1 + 176);
  if (!v5)
  {
    v4 = OUTLINED_FUNCTION_3_5(v4, 0);
    if (!v4)
    {
      OUTLINED_FUNCTION_2_4();
      v4 = FigSemaphoreSignal();
      v5 = 0;
      goto LABEL_7;
    }

LABEL_8:
    v5 = v4;
  }

LABEL_7:
  result = OUTLINED_FUNCTION_4_5(v4, v5, "VTCompressionSessionRemote_CompleteMotionVectors");
  *v0 = result;
  return result;
}

uint64_t VTTemporalFilterSessionRemote_CompleteFrames_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  v3 = VTCompressionSessionRemoteClient_CompleteTemporalFilterFrames(*(v2 + 24));
  if (v3)
  {
    goto LABEL_6;
  }

  v3 = OUTLINED_FUNCTION_5_4();
  v4 = *(v1 + 176);
  if (!v4)
  {
    v3 = OUTLINED_FUNCTION_3_5(v3, 0);
    if (!v3)
    {
      OUTLINED_FUNCTION_2_4();
      v3 = FigSemaphoreSignal();
      v4 = 0;
      goto LABEL_5;
    }

LABEL_6:
    v4 = v3;
  }

LABEL_5:
  result = OUTLINED_FUNCTION_4_5(v3, v4, "VTTemporalFilterSessionRemote_CompleteFrames");
  *v0 = result;
  return result;
}

uint64_t DepthWrapperEncoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerEncoderSpecification"))
  {
    v9 = *(DerivedStorage + 56);
    if (v9)
    {
      v10 = CFRetain(v9);
    }

    else
    {
      v10 = 0;
    }

    result = 0;
    *a4 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    if (v11 && CFEqual(a2, @"MinAndMaxDisparity") || (OUTLINED_FUNCTION_2_5(), v11) && CFEqual(a2, @"MinAndMaxDepth"))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v13 = Mutable;
        FigCFDictionarySetFloat();
        FigCFDictionarySetFloat();
        result = 0;
        *a4 = v13;
      }

      else
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "<<<< DepthWrapperEncoder >>>>", 395, v4);
      }
    }

    else
    {
      v15 = *(DerivedStorage + 72);
      if (v15)
      {

        return VTSessionCopyProperty(v15, a2, a3, a4);
      }

      else
      {
        return 4294954393;
      }
    }
  }

  return result;
}

uint64_t DepthWrapperEncoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ProfileLevel"))
  {
    if (FigCFEqual())
    {
      return 0;
    }
  }

  else
  {
    if (!CFEqual(a2, @"SublayerEncoderSpecification"))
    {
      if (CFEqual(a2, @"InputPixelFormat"))
      {
        if (!a3)
        {
          goto LABEL_40;
        }

        v9 = CFGetTypeID(a3);
        if (v9 != CFNumberGetTypeID())
        {
          goto LABEL_40;
        }

        if (*(DerivedStorage + 72))
        {
          LODWORD(v16.value) = 1278226736;
          v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v16);
          v6 = VTSessionSetProperty(*(DerivedStorage + 72), a2, v10);
          if (v10)
          {
            CFRelease(v10);
          }

          return v6;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_5();
        if (v11 && CFEqual(a2, @"MinAndMaxDisparity") || (OUTLINED_FUNCTION_2_5(), v11) && CFEqual(a2, @"MinAndMaxDepth"))
        {
          if (a3)
          {
            v12 = CFGetTypeID(a3);
            if (v12 == CFDictionaryGetTypeID())
            {
              v17 = 16.0;
              v18 = 0.0;
              if (FigCFDictionaryGetFloatIfPresent() && v18 >= 0.0 && v18 <= 32768.0 && FigCFDictionaryGetFloatIfPresent() && v17 > v18 && v18 <= 32768.0)
              {
                v13 = *(DerivedStorage + 72);
                v16 = **&MEMORY[0x1E6960C70];
                v6 = VTCompressionSessionCompleteFrames(v13, &v16);
                v14 = v17;
                *(DerivedStorage + 40) = v18;
                *(DerivedStorage + 44) = v14;
                *(DerivedStorage + 104) = 0;
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_2();
                return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              }

              return v6;
            }
          }

          goto LABEL_40;
        }

        v15 = *(DerivedStorage + 72);
        if (v15)
        {
          v6 = VTSessionSetProperty(v15, a2, a3);
          if (v6)
          {
            if (CFEqual(a2, @"SourceFrameCount"))
            {
              return 0;
            }

            else
            {
              return v6;
            }
          }

          return v6;
        }
      }

      return 4294954393;
    }

    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == CFDictionaryGetTypeID())
      {
        v6 = *(DerivedStorage + 56);
        *(DerivedStorage + 56) = a3;
        CFRetain(a3);
        if (!v6)
        {
          return v6;
        }

        CFRelease(v6);
        return 0;
      }
    }
  }

LABEL_40:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t DepthWrapperEncoder_StartSession(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v7 = HIDWORD(a3);
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  qmemcpy(v21, "010Lsidh", sizeof(v21));
  sourceImageBufferAttributes = 0;
  v20 = 0;
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 20) = a3;
  *(DerivedStorage + 24) = v7;
  if (*(DerivedStorage + 16) == 1684369512)
  {
    v21[1] = 1751410032;
  }

  v10 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(v9 + 48);
  if (v11)
  {
    CFRelease(v11);
    *(v9 + 48) = 0;
  }

  v12 = depthencoder_createPixelBufferAttributesDictionary(a3, v7, &v21[1], &v20);
  v13 = v20;
  if (v12 || (VTEncoderSessionSetPixelBufferAttributes(*(v9 + 8), v20), v12 = depthencoder_createPixelBufferAttributesDictionary(a3, v7, v21, &sourceImageBufferAttributes), v12) || (v14 = (v9 + 72), v12 = VTCompressionSessionCreate(*MEMORY[0x1E695E480], a3, v7, 0x68766331u, *(v9 + 56), sourceImageBufferAttributes, *MEMORY[0x1E695E480], 0, 0, (v9 + 72)), v12) || (v12 = VTSessionSetProperty(*v14, @"ProfileLevel", @"HEVC_Monochrome10_AutoLevel"), v12))
  {
    v17 = v12;
    if (v13)
    {
LABEL_19:
      CFRelease(v13);
    }
  }

  else
  {
    v15 = MEMORY[0x1E695E4D0];
    if (*(v9 + 16) == 1684369512)
    {
      VTSessionSetProperty(*(v9 + 72), @"EncodesDepth", *MEMORY[0x1E695E4D0]);
    }

    OUTLINED_FUNCTION_1_5();
    if (v16)
    {
      VTSessionSetProperty(*v14, @"EncodesDisparity", *v15);
    }

    v17 = 0;
    if (v13)
    {
      goto LABEL_19;
    }
  }

  if (sourceImageBufferAttributes)
  {
    CFRelease(sourceImageBufferAttributes);
  }

  return v17;
}

uint64_t DepthWrapperEncoder_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v10 = 0;
  v11 = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = VTSessionCopySupportedPropertyDictionary(*(DerivedStorage + 72), &cf);
  if (v5)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"SublayerEncoderSpecification", v4);
    CFDictionarySetValue(Mutable, @"SourceFrameCount", v4);
    OUTLINED_FUNCTION_1_5();
    if (v7)
    {
      CFDictionarySetValue(Mutable, @"MinAndMaxDisparity", v4);
    }

    OUTLINED_FUNCTION_2_5();
    if (v7)
    {
      CFDictionarySetValue(Mutable, @"MinAndMaxDepth", v4);
    }

    v10 = cf;
    v11 = Mutable;
    FigCFCreateCombinedDictionary();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t DepthWrapperEncoder_CreateInstance_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperEncoder_CreateInstance_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperEncoder_CreateInstance_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t DepthWrapperEncoder_CreateInstance_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void depthencoder_createPixelBufferAttributesDictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);

  CFRelease(a1);
}

uint64_t depthencoder_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostEncoderSessionCreate(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
    OUTLINED_FUNCTION_5_5();
LABEL_51:
    v17 = 0;
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
    OUTLINED_FUNCTION_5_5();
    a2 = 0;
    goto LABEL_51;
  }

  if (_MergedGlobals_8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    dispatch_once_f(v26, v27, v28);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (!Instance)
  {
    goto LABEL_52;
  }

  v33 = a4;
  *(Instance + 20) = 0;
  VTEncoderSessionCreateTimeStampQueue(Instance + 32);
  v14[9] = v14;
  v14[11] = v14;
  v14[12] = FigDispatchQueueCreateWithPriority();
  if (VTParavirtualizationReplyClerkCreate("host encoder session", v14 + 13))
  {
    goto LABEL_53;
  }

  a4 = 744712548;
  v14[14] = _Block_copy(a3);
  v14[18] = FigSimpleMutexCreate();
  v14[20] = dispatch_group_create();
  v14[21] = FigSimpleMutexCreate();
  v14[23] = dispatch_group_create();
  v14[25] = 0;
  VTParavirtualizationMessageGetSInt32();
  if (v15)
  {
    goto LABEL_53;
  }

  if (!v38)
  {
LABEL_52:
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_53:
    OUTLINED_FUNCTION_5_5();
    a2 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  VTParavirtualizationMessageGetUInt32();
  if (v16 || VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, 0, 0, v14 + 15))
  {
    goto LABEL_53;
  }

  v17 = CFDictionaryCreateMutable(v11, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v17, @"AllowParavirtualizedEncoder", *MEMORY[0x1E695E4C0]);
  if (VTParavirtualizationMessageCopyCFPropertyList(a2, 744712548, &v37))
  {
    goto LABEL_47;
  }

  v32 = a5;
  if (v37)
  {
    FigCFDictionarySetValue();
  }

  if (VTParavirtualizationMessageCopyCFDictionary(a2, 744974702, &cf))
  {
LABEL_47:
    OUTLINED_FUNCTION_5_5();
    goto LABEL_48;
  }

  a4 = FigCFCopyCompactDescription();
  VideoEncoderInstanceInternal = VTSelectAndCreateVideoEncoderInstanceInternal(v38, a1, 0, v17, 0, v14 + 3, 0, 0, 0);
  if (!VideoEncoderInstanceInternal)
  {
    if (v14[3])
    {
      VTVideoEncoderGetCMBaseObject();
      v23 = v22;
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v24)
      {
        v24(v23, @"Paravirtualized", *MEMORY[0x1E695E4D0]);
      }
    }
  }

  appended = VTParavirtualizationCreateReplyAndByteStream(a2, 4u, &v36, &v35);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt32(v35, 744845938, VideoEncoderInstanceInternal), appended) || (appended = VTParavirtualizationMessageAppendUInt32(v35, 745956722, 5u), appended))
  {
    v5 = appended;
LABEL_48:
    a2 = 0;
    goto LABEL_27;
  }

  a2 = MGCopyAnswer();
  FigCFDictionarySetValue();
  v20 = VTParavirtualizationMessageAppendCFDictionary(v35, 0x2C68696Eu, Mutable);
  if (!v20)
  {
    if (dword_1EAD321C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = 0;
    *v33 = v14;
    *v32 = v36;
    v36 = 0;
    goto LABEL_26;
  }

  v5 = v20;
LABEL_27:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v5;
}

uint64_t VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest(void *a1, OpaqueCMBlockBuffer *a2, NSObject **a3, NSObject **a4, size_t a5)
{
  v19 = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v19 + 1, &v19, 0);
  if (!result)
  {
    if ((v19 & 8) != 0)
    {
      v15 = 0;
      v16 = 0;
      if (a3 && a5 == 1)
      {
        v15 = *a3;
        v16 = *a4;
      }

      return VTParavirtualizationReplyClerkDeliverReply(a1[13], a2, v15, v16);
    }

    else
    {
      v11 = 0;
      if (a5 >= 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = a5;
      }

      v13 = 0;
      if (a3 && a5)
      {
        v11 = malloc_type_calloc(v12, 8uLL, 0x2004093837F09uLL);
        v13 = malloc_type_calloc(v12, 8uLL, 0x100004000313F17uLL);
        if (v11)
        {
          memcpy(v11, a3, 8 * v12);
        }

        if (v13)
        {
          memcpy(v13, a4, 8 * v12);
        }
      }

      CFRetain(a1);
      CFRetain(a2);
      v14 = a1[12];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke;
      block[3] = &__block_descriptor_tmp_7;
      v18 = HIDWORD(v19);
      block[4] = a1;
      block[5] = a2;
      block[6] = v11;
      block[7] = v13;
      block[8] = v12;
      dispatch_async(v14, block);
      return 0;
    }
  }

  return result;
}

uint64_t vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3, void *a4)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v14, &v16, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    if ((v16 & 2) != 0)
    {
      MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkPrepareForReply(*(a1 + 104), a2, &v15);
      if (!MessageTypeAndFlagsAndGuestUUID)
      {
        MessageTypeAndFlagsAndGuestUUID = vtParavirtualizationHostEncoderSession_callMessageToGuestHandler(a1, a2);
        if (!MessageTypeAndFlagsAndGuestUUID)
        {
          v9 = *(a1 + 104);
          v12 = *a3;
          v13 = *(a3 + 2);
          MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkWaitForReply(v9, v14, v15, &v12, a4, 0, 0);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_2();
      MessageTypeAndFlagsAndGuestUUID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, DWORD2(v12), v13);
    }
  }

  v10 = MessageTypeAndFlagsAndGuestUUID;
  VTParavirtualizationReplyClerkCleanUpReply(*(a1 + 104), v15);
  return v10;
}

uint64_t vtParavirtualizationHostEncoderSession_sendMessageToGuest(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v8, &v8 + 1, &v6);
  if (!result)
  {
    if ((v8 & 0x200000000) != 0)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
    }

    else
    {
      return vtParavirtualizationHostEncoderSession_callMessageToGuestHandler(a1, a2);
    }
  }

  return result;
}

void vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(uint64_t a1, CFArrayRef theArray)
{
  cf = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(theArray, 0, Count, &cf);
      v6 = cf;
      if (!MessageBoxToRelinquishSurfaceMappingIDs)
      {
        vtParavirtualizationHostEncoderSession_callMessageToGuestHandler(a1, cf);
        v6 = cf;
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_3(uint64_t a1, OpaqueCMBlockBuffer **a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_6_3(v8);
    *a5 = v9;
    if (v9)
    {
      return 0;
    }

    vtParavirtualizationHostEncoderSession_sendMessageToGuest(a3, *a2);
  }

  return 1;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_6(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v4;
  FigSimpleMutexUnlock();
  return v4 == 0;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_9(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v4;
  FigSimpleMutexUnlock();
  return v4 == 0;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtRegisterVideoEncoderInternal(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 4294954394;
  if (!a1 || !a2)
  {
    return result;
  }

  if (VTParavirtualizationIsRunningInGuest(4294954394, a2))
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
  }

  v14 = Mutable;
  CFDictionarySetValue(Mutable, @"CMClassID", @"com.apple.videotoolbox.videoencoder");
  CFDictionarySetValue(v14, @"CMClassImplementationName", a2);
  if (a3)
  {
    CFDictionarySetValue(v14, @"CMClassImplementationID", a3);
  }

  CFDictionarySetValue(v14, @"VTCodecName", a1);
  CFDictionarySetValue(v14, @"VTEncoderName", a2);
  FigCFDictionarySetInt32();
  FigCFDictionarySetValue();
  if (FigCFEqual())
  {
    v15 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v15, @"IORegistryRequiredKey", @"IOGVACodec");
    CFDictionarySetValue(v14, @"CMDependencies", v15);
    if (a5)
    {
LABEL_10:
      v16 = MEMORY[0x1E695E4C0];
LABEL_14:
      CFDictionarySetValue(v14, @"VTFactoryFunctionHasSpecificationArgument", *v16);
      FigRegistryAddItem();
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_10;
    }
  }

  if (a6)
  {
    v16 = MEMORY[0x1E695E4D0];
    goto LABEL_14;
  }

LABEL_15:
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v14);
  return 0;
}

uint64_t VTParavirtualizationHostCopyEncoderListReply(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  v14 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
  cf = 0;
  theArray = 0;
  v11 = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  if (appended)
  {
    goto LABEL_16;
  }

  vtPopulateVideoEncoderRegistry();
  appended = FigRegistryCopyFilteredItemList();
  if (appended)
  {
    goto LABEL_16;
  }

  v6 = VTParavirtualizationCreateReplyAndByteStream(a1, 4u, &cf, &v11);
  if (v6)
  {
    v9 = v6;
    goto LABEL_7;
  }

  appended = VTParavirtualizationMessageAppendCFPropertyList(v11, 0x2C656E63u, Mutable);
  if (appended)
  {
LABEL_16:
    v9 = appended;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_2();
  v9 = VTParavirtualizationMessageAppendUInt32(v7, v8, 5u);
  if (!v9)
  {
    *a2 = cf;
    cf = 0;
  }

LABEL_7:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

uint64_t vtFilterRegistryItemForHardwareAcceleratedEncodersOnly(uint64_t a1, uint64_t a2)
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t vtFilterRegistryItemByCodecTypeAndVideoEncoderSpecification(void *a1, uint64_t a2)
{
  cf = 0;
  theDict = 0;
  context = a1[1];
  v30 = 1;
  v28 = 0;
  if (FigRegistryItemCopyMatchingInfo() || FigRegistryItemCopyDescription())
  {
    goto LABEL_29;
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = CFDictionaryGetValue(v3, @"EncoderID") == 0;
    Value = CFDictionaryGetValue(a1[1], @"RequiredPropertySupport");
  }

  else
  {
    Value = 0;
    v4 = 1;
  }

  v6 = CFDictionaryGetValue(theDict, @"VTCodecType");
  v7 = v6;
  if (!v6)
  {
    goto LABEL_30;
  }

  if ((v8 = CFGetTypeID(v6), v8 != CFStringGetTypeID()) || !CFEqual(v7, *a1) || (v9 = a1[1], v10 = MEMORY[0x1E695E4D0], v9) && ((v11 = *MEMORY[0x1E695E4C0], v11 == CFDictionaryGetValue(v9, @"AllowParavirtualizedEncoder")) && (v12 = *v10, v12 == CFDictionaryGetValue(theDict, @"VTIsParavirtualized")) || (v13 = a1[1]) != 0 && (v14 = *v10, v14 == CFDictionaryGetValue(v13, @"RequireParavirtualizedEncoder")) && v11 == CFDictionaryGetValue(theDict, @"VTIsParavirtualized")))
  {
LABEL_29:
    v7 = 0;
LABEL_30:
    v18 = 0;
    Value = 0;
LABEL_31:
    v20 = 0;
    goto LABEL_32;
  }

  if (!v4)
  {
    goto LABEL_25;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (*(a1 + 18))
  {
    LOBYTE(valuePtr) = 0;
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (FigCFEqual())
  {
    v21 = *v10;
    if (v21 != FigCFDictionaryGetBooleanValue())
    {
      goto LABEL_29;
    }
  }

  v27 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  VTAvoidHardwareEncoders();
  if (*(a1 + 17))
  {
    v15 = *v10;
    if (v15 == CFDictionaryGetValue(theDict, @"VTIsWrapperEncoder"))
    {
LABEL_25:
      v7 = 0;
      v18 = 0;
      Value = 0;
      goto LABEL_26;
    }
  }

  v16 = MEMORY[0x1E695E480];
  if (!Value)
  {
    v18 = 0;
    goto LABEL_55;
  }

  v17 = CFDictionaryGetValue(theDict, @"VTSupportedProfileArray");
  v18 = v17;
  if (!v17)
  {
    goto LABEL_54;
  }

  CFRetain(v17);
  valuePtr = 0;
  CFDictionaryGetValue(Value, @"ProfileLevel");
  if (FigCFEqual())
  {
    v19 = 1;
    valuePtr = 1;
  }

  else
  {
    v19 = 0;
  }

  if (FigCFEqual())
  {
    v19 = 2;
    valuePtr = 2;
  }

  if (FigCFEqual())
  {
    v19 = 3;
    valuePtr = 3;
  }

  if (FigCFEqual())
  {
    valuePtr = 4;
    goto LABEL_52;
  }

  if (!v19)
  {
LABEL_54:
    Value = 0;
    goto LABEL_55;
  }

LABEL_52:
  Value = CFNumberCreate(*v16, kCFNumberSInt32Type, &valuePtr);
  v33.length = CFArrayGetCount(v18);
  v33.location = 0;
  if (!CFArrayContainsValue(v18, v33, Value))
  {
    v7 = 0;
    goto LABEL_31;
  }

LABEL_55:
  v23 = CFDictionaryGetValue(theDict, @"VTRequiredSpecificationEntries");
  if (v28)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v7 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"EnableHardwareAcceleratedVideoEncoder", *v10);
      v23 = v7;
      goto LABEL_59;
    }
  }

  v7 = 0;
  if (!v23)
  {
LABEL_26:
    v20 = 1;
    goto LABEL_32;
  }

LABEL_59:
  v25 = CFGetTypeID(v23);
  if (v25 != CFDictionaryGetTypeID())
  {
    goto LABEL_26;
  }

  CFDictionaryApplyFunction(v23, vtCheckRequiredVideoEncoderSpecificationKey, &context);
  v20 = v30;
LABEL_32:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Value)
  {
    CFRelease(Value);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v20;
}

uint64_t vtCopyExpandedEncoderListForWrappers(const __CFArray *a1, __int128 *a2, __CFArray **a3)
{
  v3 = 0;
  v4 = 0;
  if (a1)
  {
    Count = 0;
    Mutable = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

    Count = CFArrayGetCount(a1);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_20:
      v3 = v9;
      OUTLINED_FUNCTION_0_7();
      goto LABEL_13;
    }

    if (Count >= 1)
    {
      v3 = 0;
      v8 = 0;
      v4 = a1;
      while (!CFArrayGetValueAtIndex(a1, v8))
      {
        if (++v8 == Count)
        {
          goto LABEL_12;
        }
      }

      v9 = FigRegistryItemCopyMatchingInfo();
      if (!v9)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_7();
        v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      goto LABEL_20;
    }

    v3 = 0;
LABEL_12:
    OUTLINED_FUNCTION_0_7();
    *a3 = Mutable;
    Mutable = 0;
  }

  else
  {
    Count = 0;
    Mutable = 0;
  }

LABEL_13:
  if (Count)
  {
    CFRelease(Count);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t vtSortRegistryItemsByVideoEncoderRating(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  theDict = 0;
  v14 = 0;
  v15 = 0;
  valuePtr = 0;
  if (FigRegistryItemCopyMatchingInfo() || FigRegistryItemCopyMatchingInfo())
  {
    v11 = 0;
    goto LABEL_32;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  Value = CFDictionaryGetValue(theDict, @"VTRating");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
    v4 = CFGetTypeID(v3);
    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr + 4);
    }
  }

  v5 = CFDictionaryGetValue(v16, @"VTRating");
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
    v7 = CFGetTypeID(v6);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
    }
  }

  if (HIDWORD(valuePtr) != valuePtr)
  {
    if (SHIDWORD(valuePtr) > valuePtr)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    goto LABEL_28;
  }

  v8 = 0;
  if (!FigRegistryItemCopyDescription() && v15)
  {
    v8 = CFDictionaryGetValue(v15, @"CMClassImplementationID");
  }

  if (!FigRegistryItemCopyDescription() && v14)
  {
    v9 = CFDictionaryGetValue(v14, @"CMClassImplementationID");
    if (v8 | v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    if (v8 && v9)
    {
      v11 = CFStringCompare(v8, v9, 0);
      if (!v3)
      {
        goto LABEL_30;
      }

LABEL_29:
      CFRelease(v3);
      goto LABEL_30;
    }

LABEL_28:
    if (!v3)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v11 = v8 != 0;
  if (v3)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_32:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return -v11;
}

uint64_t VTCopySupportedPropertyForVideoEncoderID(uint64_t a1)
{
  theArray = 0;
  v6 = 0;
  cf = 0;
  if (!a1 || (vtPopulateVideoEncoderRegistry(), !sVideoEncoderRegistry))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v1 = FigRegistryCopyFilteredItemList();
  if (v1)
  {
    return v1;
  }

  return 4294954388;
}

BOOL vtFilterRegistryItemByEncoderID(uint64_t a1, uint64_t a2)
{
  if (FigRegistryItemCopyDescription() || FigRegistryItemCopyMatchingInfo())
  {
    return 0;
  }

  CFDictionaryGetValue(0, @"VTCodecType");
  FigCFDictionaryGetBooleanIfPresent();
  v4 = FigCFEqual();
  v3 = 0;
  if (a1 && !v4)
  {
    CFDictionaryGetValue(0, @"CMClassImplementationID");
    return FigCFEqual() != 0;
  }

  return v3;
}

uint64_t vtFilterRegistryItemWithPlatformRestrictions(uint64_t a1, uint64_t a2)
{
  if (FigRegistryItemCopyMatchingInfo())
  {
    return 1;
  }

  FigCFDictionaryGetBooleanIfPresent();
  CFDictionaryGetValue(0, @"VTCodecType");
  v3 = FigCFEqual();
  if (v3)
  {
    return 0;
  }

  if (!VTParavirtualizationIsRunningInGuest(v3, v4))
  {
    return 1;
  }

  FigCFDictionaryGetBooleanIfPresent();
  return 1;
}

__CFDictionary *createInferredPropertiesForCodec(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"VTCodecType");
  v3 = CFDictionaryGetValue(a1, @"VTSupportedProfileArray");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFRetain(v3);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  CFStringGetCString(Value, buffer, 5, 0x600u);
  v8 = bswap32(*buffer);
  if (v8 == 1667524657 || v8 == 1667790435 || v8 == 1684895096 || v8 == 1685481521 || v8 == 1685481573 || v8 == 1718908520 || v8 == 1718908528 || v8 == 1751479857 || v8 == 1752589105 || v8 == 1836415073 || v8 == 1869117027 || v8 == 1902405681 || v8 == 1902405733 || v8 == 1902407032 || v8 == 1902667126 || v8 == 1902998904 || v8 == 1902671459)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v26 = Count;
      for (i = 0; i != v26; ++i)
      {
        FigCFArrayGetIntAtIndex();
      }
    }

    CFDictionarySetValue(Mutable, @"ProfileLevel", v7);
  }

  CFRelease(v4);
  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

OSStatus VTCopySupportedPropertyDictionaryForEncoder(int32_t width, int32_t height, CMVideoCodecType codecType, CFDictionaryRef encoderSpecification, CFStringRef *encoderIDOut, CFDictionaryRef *supportedPropertiesOut)
{
  session = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = VTCompressionSessionCreate(*MEMORY[0x1E695E480], width, height, codecType, encoderSpecification, 0, 0, 0, 0, &session);
  if (v9)
  {
    goto LABEL_8;
  }

  if (!encoderIDOut)
  {
    if (!supportedPropertiesOut)
    {
      v11 = 0;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = VTSessionCopyProperty(session, @"EncoderID", v8, encoderIDOut);
  v11 = v10;
  if (supportedPropertiesOut && !v10)
  {
LABEL_7:
    v9 = VTSessionCopySupportedPropertyDictionary(session, supportedPropertiesOut);
LABEL_8:
    v11 = v9;
  }

LABEL_10:
  if (session)
  {
    CFRelease(session);
  }

  return v11;
}

void vtLoadParavirtualizedVideoEncoders()
{
  if (qword_1ED6D40D8 != -1)
  {
    dispatch_once(&qword_1ED6D40D8, &__block_literal_global_5);
  }

  if (VTParavirtualizationGuestInstallHandlerForUUID(&xmmword_1ED6D40E0, &__block_literal_global_85, 0))
  {
    return;
  }

  v31 = 0;
  v29 = 0;
  v30 = 0;
  cf = 0;
  v28 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x656E6373u, 1u, &xmmword_1ED6D40E0, 0, &v30, &v29);
  if (appended)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_6_2();
  appended = VTParavirtualizationMessageAppendUInt32(v1, v2, 5u);
  if (appended)
  {
    goto LABEL_39;
  }

  v25 = kVTParavirtualizationDefaultReplyTimeout;
  v26 = 0;
  appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v30, &v25, &v28);
  if (appended)
  {
    goto LABEL_39;
  }

  appended = VTParavirtualizationMessageCopyCFPropertyList(v28, 744844899, &cf);
  if (appended)
  {
    goto LABEL_39;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_7();
    appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
LABEL_39:
    v6 = appended;
    v4 = 0;
    goto LABEL_11;
  }

  v4 = cf;
  cf = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  v6 = v5;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v6)
  {
LABEL_34:
    if (!v4)
    {
      return;
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }

    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = 0;
      v23 = *MEMORY[0x1E695E4D0];
      v8 = *MEMORY[0x1E695E480];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        if (!ValueAtIndex)
        {
          break;
        }

        v10 = ValueAtIndex;
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 != CFDictionaryGetTypeID())
        {
          break;
        }

        LODWORD(v25) = 0;
        LODWORD(v30) = 0;
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        Value = CFDictionaryGetValue(v10, @"VTCodecName");
        v13 = CFDictionaryGetValue(v10, @"CMClassImplementationName");
        v14 = CFDictionaryGetValue(v10, @"CMClassImplementationID");
        if (v23 == CFDictionaryGetValue(v10, @"Hide"))
        {
          v15 = 518;
        }

        else
        {
          v15 = 514;
        }

        v16 = CFStringCreateWithFormat(v8, 0, @"paravirtualized:%@", v13, v21, v22);
        v17 = CFStringCreateWithFormat(v8, 0, @"paravirtualized:%@", v14);
        v21 = v14;
        v22 = 0;
        if (!vtRegisterVideoEncoderWithSpecificationArgumentWithInfoKeysAndValues(v25, v30, Value, v16, v17, v15, v18, v19, @"VTHostEncoderID"))
        {
          if (v16)
          {
            CFRelease(v16);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          if (Count != ++v7)
          {
            continue;
          }
        }

        goto LABEL_34;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_7();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    }
  }

  CFRelease(v4);
}

uint64_t __vtLoadParavirtualizedVideoEncoders_block_invoke_2(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v6 = xmmword_1ED6D40E0;
  v3 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], xmmword_1ED6D40E0);
  v5 = 0;
  if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v5, 0, 0))
  {
    if (v5 == 1383295341)
    {
      if (!vtUnregisterParavirtualizedVideoEncoders())
      {
        _MergedGlobals_9 = 1;
      }
    }

    else if (v5 == 1115252001 && !vtUnregisterParavirtualizedVideoEncoders())
    {
      _MergedGlobals_9 = 1;
      VTParavirtualizationGuestRemoveHandlerForUUID(&v6);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t vtFilterRegistryItemForParavirtualizedEncodersOnly(uint64_t a1, uint64_t a2)
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t VTSelectAndCreateVideoEncoderInstanceInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTSelectAndCreateVideoEncoderInstanceInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTSelectAndCreateVideoEncoderInstanceInternal_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCreateVideoEncoderInstanceFromEncoderID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostCopyDecoderCapabilitiesReply(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  v9 = 0;
  cf = 0;
  VTParavirtualizationMessageGetSInt32();
  if (v4)
  {
    appended = v4;
  }

  else
  {
    DecoderCapabilitiesDictionary = vtCreateDecoderCapabilitiesDictionary(0, 1);
    v6 = VTParavirtualizationCreateReplyAndByteStream(a1, 4u, &cf, &v9);
    if (v6 || (v6 = VTParavirtualizationMessageAppendCFDictionary(v9, 0x2C646361u, DecoderCapabilitiesDictionary), v6))
    {
      appended = v6;
      if (DecoderCapabilitiesDictionary)
      {
LABEL_7:
        CFRelease(DecoderCapabilitiesDictionary);
      }
    }

    else
    {
      appended = VTParavirtualizationMessageAppendUInt32(v9, 745956722, 5u);
      if (!appended)
      {
        *a2 = cf;
        cf = 0;
      }

      if (DecoderCapabilitiesDictionary)
      {
        goto LABEL_7;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return appended;
}

uint64_t vtGetHEVCDecoderCapabilitiesForFormatDescription(const opaqueCMFormatDescription *a1, const __CFDictionary *a2, _BYTE *a3, char *a4)
{
  v38 = 0;
  valuePtr = 0;
  v36 = 0;
  if (!a2 || (Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0])) == 0 || (v8 = Extension, v9 = CFGetTypeID(Extension), v9 != CFDictionaryGetTypeID()) || (Value = CFDictionaryGetValue(v8, @"hvcC")) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    HEVCParameterSetAtIndex = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_41;
  }

  v11 = Value;
  v12 = CFGetTypeID(Value);
  if (v12 == CFArrayGetTypeID())
  {
    CFArrayGetValueAtIndex(v11, 0);
  }

  else
  {
    CFGetTypeID(v11);
    CFDataGetTypeID();
  }

  v39 = 0;
  HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex();
  if (HEVCParameterSetAtIndex || (HEVCParameterSetAtIndex = FigHEVCBridge_GetSPSProfileTierLevel(), HEVCParameterSetAtIndex))
  {
LABEL_41:
    v27 = HEVCParameterSetAtIndex;
    LOBYTE(v18) = 0;
    v28 = 0;
    if (!a3)
    {
      goto LABEL_35;
    }

LABEL_34:
    *a3 = v18;
    goto LABEL_35;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr + 1);
  if (!v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    HEVCParameterSetAtIndex = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_41;
  }

  v16 = v15;
  v17 = CFDictionaryGetValue(a2, @"VTSupportedProfiles");
  v18 = v17;
  if (!v17)
  {
LABEL_19:
    v27 = 0;
    goto LABEL_21;
  }

  v40.length = CFArrayGetCount(v17);
  v40.location = 0;
  if (!CFArrayContainsValue(v18, v40, v16))
  {
    LOBYTE(v18) = 0;
    goto LABEL_19;
  }

  v19 = CFDictionaryGetValue(a2, @"VTPerProfileSupport");
  if (!v19)
  {
    v27 = 0;
    LOBYTE(v18) = 1;
    goto LABEL_21;
  }

  v20 = v19;
  v21 = CFStringCreateWithFormat(v14, 0, @"%d", HIBYTE(valuePtr));
  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v38);
    LOBYTE(v18) = 0;
LABEL_21:
    CFRelease(v16);
    v28 = v18;
    if (!a3)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v22 = v21;
  v23 = CFDictionaryGetValue(v20, v21);
  if (v23)
  {
    v24 = v23;
    v25 = CFDictionaryGetValue(v23, @"VTMaxDecodeLevel");
    v26 = CFDictionaryGetValue(v24, @"VTMaxPlaybackLevel");
    v35 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v34 = 0;
    if (v25)
    {
      CFNumberGetValue(v25, kCFNumberSInt32Type, &v34);
      LOBYTE(v18) = v34 >= v36;
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    v29 = v18;
    if (v26)
    {
      CFNumberGetValue(v26, kCFNumberSInt32Type, &v34);
      v29 = v34 >= v36;
    }

    v30 = CMVideoFormatDescriptionGetVideoDynamicRange() - 2;
    if (v35)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30 >= 9;
    }

    v28 = v31 && v29;
  }

  else
  {
    LOBYTE(v18) = 1;
    v28 = 1;
  }

  CFRelease(v16);
  CFRelease(v22);
  v27 = 0;
  if (a3)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (a4)
  {
    *a4 = v28;
  }

  return v27;
}

BOOL VTDecoderCapabilitiesDictionaryAllowsHDR(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"VTIsHDRAllowedOnDevice");
  }

  else
  {
    Value = *MEMORY[0x1E695E4C0];
  }

  return Value == *MEMORY[0x1E695E4D0];
}

const void *vtCreateH264OrHEVCDecoderCapabilitiesDictionaryInternal(unsigned int a1, const void *a2)
{
  matched = VTCopyVideoDecoderRegistryMatchArrayForCodecType(a1);
  theArray = 0;
  cf = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = OUTLINED_FUNCTION_3_7();
  v7 = vtCopyCodecProfilesArrayAndDictionaryForEmbedded(a2, &theArray, &cf);
  context = 0;
  v22 = 0;
  v23 = 0;
  v8 = OUTLINED_FUNCTION_3_7();
  v9 = v8;
  v10 = MEMORY[0x1E695E4D0];
  v11 = MEMORY[0x1E695E4C0];
  if (v6)
  {
    if (v7)
    {
      if (!v8)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_7();
        v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, context, v22);
LABEL_9:
        CFRelease(v6);
        v17 = v9;
        goto LABEL_10;
      }

      MutableCopy = CFArrayCreateMutableCopy(v5, 0, theArray);
      if (MutableCopy)
      {
        v13 = MutableCopy;
        if (FigIsHDRAllowedOnDevice())
        {
          v14 = v10;
        }

        else
        {
          v14 = v11;
        }

        CFDictionarySetValue(v9, @"VTIsHDRAllowedOnDevice", *v14);
        CFDictionarySetValue(v9, @"VTPerProfileSupport", v6);
        CFDictionarySetValue(v9, @"VTSupportedProfiles", v13);
        LOBYTE(v23) = vtIsHardwareCodecAvailable(a1, matched);
        v15 = theArray;
        context = cf;
        v22 = v6;
        v26.length = CFArrayGetCount(theArray);
        v26.location = 0;
        CFArrayApplyFunction(v15, v26, vtAddProfileToDict, &context);
        CFRelease(v6);
        v16 = 0;
        v6 = v13;
        goto LABEL_9;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_7();
      v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, context, v22);
      goto LABEL_31;
    }

    v16 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_7();
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, context, v22);
  }

  if (v9)
  {
LABEL_31:
    CFRelease(v9);
  }

  v9 = 0;
  v17 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (!v16)
  {
    v18 = FigCFDictionaryCreateMutableCopy();
    FigIsHDRAllowedOnDevice();
    FigCFDictionarySetValue();
    if (!matched)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v18 = 0;
  if (matched)
  {
LABEL_16:
    CFRelease(matched);
  }

LABEL_17:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v16 && v18)
  {
    CFRelease(v18);
    return 0;
  }

  return v18;
}

uint64_t vtCopyCodecProfilesArrayAndDictionaryForEmbedded(const void *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  if (!ModelSpecificPropertyList)
  {
    return 0;
  }

  v7 = ModelSpecificPropertyList;
  Value = CFDictionaryGetValue(ModelSpecificPropertyList, @"VideoCodecProfiles");
  if (Value && (v9 = CFDictionaryGetValue(Value, a1)) != 0 && (v10 = v9, (v11 = CFDictionaryGetValue(v9, @"SupportedProfiles")) != 0))
  {
    if (a2)
    {
      *a2 = CFRetain(v11);
    }

    if (a3)
    {
      *a3 = CFRetain(v10);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  CFRelease(v7);
  return v12;
}

void vtAddProfileToDict(const __CFNumber *a1, uint64_t a2)
{
  valuePtr = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = *a2;
      v3 = *(a2 + 8);
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      v5 = *MEMORY[0x1E695E480];
      v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", valuePtr);
      if (v6)
      {
        v7 = v6;
        Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v9 = Mutable;
          Value = CFDictionaryGetValue(v4, @"PerProfileConstraints");
          if (!Value || (v11 = CFDictionaryGetValue(Value, v7)) == 0 || (v12 = CFDictionaryGetValue(v11, @"MaxLevel")) == 0)
          {
            v12 = CFDictionaryGetValue(v4, @"MaxLevel");
          }

          if (*(a2 + 16))
          {
            CFDictionarySetValue(v9, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4D0]);
          }

          if (v12)
          {
            CFDictionarySetValue(v9, @"VTMaxDecodeLevel", v12);
          }

          CFDictionarySetValue(v3, v7, v9);
          CFRelease(v9);
        }

        CFRelease(v7);
      }
    }
  }
}

uint64_t vtCreateProfileSupportEntryDictionaryForVP9Embedded(__CFDictionary **a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954392;
  }

  v3 = Mutable;
  CFDictionarySetValue(Mutable, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4D0]);
  FigCFDictionarySetInt32();
  if (a1)
  {
    result = 0;
    *a1 = v3;
  }

  else
  {
    CFRelease(v3);
    return 0;
  }

  return result;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_2(CFUUIDBytes *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  return VTParavirtualizationGuestRemoveHandlerForUUID(a1);
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_6(BOOL *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result != 0;
  return result;
}

void vtCreateDecoderCapabilitiesDictionary_cold_7(__CFDictionary *a1, __CFDictionary **a2)
{
  matched = VTCopyVideoDecoderRegistryMatchArrayForCodecType(0x68766331u);
  value = 0;
  theDict = 0;
  if (vtCopyCodecProfilesArrayAndDictionaryForEmbedded(@"dvh1", &value, &theDict))
  {
    CFDictionarySetValue(a1, @"VTDoViSupportedProfiles", value);
    if (vtIsHardwareCodecAvailable(1752589105, matched))
    {
      CFDictionarySetValue(a1, @"VTDoViIsHardwareAccelerated", *MEMORY[0x1E695E4D0]);
    }

    v5 = CFDictionaryGetValue(theDict, @"SupportedLevels");
    if (v5)
    {
      CFDictionarySetValue(a1, @"VTDoViSupportedLevels", v5);
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (matched)
  {
    CFRelease(matched);
  }

  *a2 = a1;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_4(BOOL *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result != 0;
  return result;
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTGetHEVCCapabilitesForFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTGetHEVCCapabilitesForFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTGetHEVCCapabilitesForFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTGetHEVCCapabilitesForFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t SRSEnhancementFilter_CreateInstance(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294954394;
  }

  VTTemporalFilterPluginGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    return 4294954392;
  }

  return v3;
}

uint64_t SRSEnhancementFilter_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 82))
  {
    return 4294954393;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"FilterSourcePixelBufferAttributes"))
  {
    v8 = *(v7 + 56);
    if (v8)
    {
LABEL_4:
      DictionaryRepresentation = CFRetain(v8);
LABEL_5:
      v10 = DictionaryRepresentation;
LABEL_9:
      result = 0;
LABEL_10:
      *a4 = v10;
      return result;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"FilterDestinationPixelBufferAttributes"))
  {
    v8 = *(v7 + 64);
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"MaxLookBehind"))
  {
    v16 = 0;
    v12 = *MEMORY[0x1E695E480];
    p_valuePtr = &v16;
LABEL_15:
    DictionaryRepresentation = CFNumberCreate(v12, kCFNumberIntType, p_valuePtr);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"MaxLookAhead"))
  {
    valuePtr = 0;
    v12 = *MEMORY[0x1E695E480];
    p_valuePtr = &valuePtr;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"RealTime"))
  {
    result = 0;
    if (*(v7 + 80))
    {
      v14 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    v10 = *v14;
    goto LABEL_10;
  }

  if (CFEqual(a2, @"OutputDimensions"))
  {
    v17.width = *(v7 + 16);
    v17.height = *(v7 + 20);
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v17);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"FilterParameters"))
  {
    v8 = *(v7 + 120);
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  return 4294954396;
}

uint64_t SRSEnhancementFilter_SetProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 82))
  {
    return 4294954393;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"FilterSourcePixelBufferAttributes") || CFEqual(a2, @"FilterDestinationPixelBufferAttributes") || CFEqual(a2, @"MaxLookBehind") || CFEqual(a2, @"MaxLookAhead"))
  {
    return 4294954395;
  }

  if (CFEqual(a2, @"RealTime"))
  {
    result = 0;
    *(v6 + 80) = *MEMORY[0x1E695E4D0] == a3;
    return result;
  }

  if (!CFEqual(a2, @"FilterParameters"))
  {
    if (!CFEqual(a2, @"OutputDimensions"))
    {
      return 4294954396;
    }

    v14.width = 0.0;
    v14.height = 0.0;
    if (a3)
    {
      result = CGSizeMakeWithDictionaryRepresentation(a3, &v14);
      if (!result)
      {
        return result;
      }

      if (v14.width > 4096.0 || v14.height > 2160.0)
      {
        return 4294954394;
      }

      v8 = *(v6 + 8);
      width = v14.width;
      if (v8 != v14.width && 2 * v8 != width)
      {
        return 4294954394;
      }

      v11 = *(v6 + 12);
      height = v14.height;
      if (v11 != v14.height && 2 * v11 != height)
      {
        return 4294954394;
      }

      if (*(v6 + 16) != width || *(v6 + 20) != height)
      {
        *(v6 + 16) = width;
        *(v6 + 20) = height;
        srsFilter_calculateOutputDimensions(*(v6 + 8), *(v6 + 16), v6 + 24);
        result = *(v6 + 64);
        if (result)
        {
          CFRelease(result);
          result = 0;
          *(v6 + 64) = 0;
        }

        return result;
      }
    }

    return 0;
  }

  if (!a3)
  {
    result = 0;
    *(v6 + 120) = 0;
    return result;
  }

  result = CFRetain(a3);
  *(v6 + 120) = result;
  if (!result)
  {
    return result;
  }

  if (!*(v6 + 144))
  {
    return 0;
  }

  if (FigCFEqual())
  {
LABEL_17:
    CFDictionarySetValue(*(v6 + 144), *MEMORY[0x1E69A85A0], *MEMORY[0x1E69A85B0]);
    return 0;
  }

  result = FigCFEqual();
  if (result)
  {
    CFDictionarySetValue(*(v6 + 144), *MEMORY[0x1E69A8568], *MEMORY[0x1E69A8578]);
    goto LABEL_17;
  }

  return result;
}

uint64_t SRSEnhancementFilter_StartSession(uint64_t a1, __CFDictionary *a2, __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  v6 = 4294954394;
  if (a2 && (a3 - 32) <= 0xFE0 && (a3 & 1) == 0 && (BYTE4(a3) & 1) == 0 && (HIDWORD(a3) - 2161) >= 0xFFFFF7CF)
  {
    v7 = DerivedStorage;
    DerivedStorage[1] = a3;
    DerivedStorage[3] = a3;
    DerivedStorage[2] = a3;
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294954392;
    }

    v10 = Mutable;
    v11 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v11)
    {
      v6 = 4294954392;
LABEL_17:
      CFRelease(v10);
      return v6;
    }

    v12 = v11;
    CFDictionaryAddValue(v10, *MEMORY[0x1E69A8560], v11);
    if (IOSurfaceAcceleratorCreate())
    {
      v13 = 0;
      v6 = 4294954392;
    }

    else
    {
      v7[11] = dispatch_group_create();
      v7[12] = FigDispatchQueueCreateWithPriority();
      v13 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v14 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v6 = v14;
      if (v14)
      {
        addNumberToCFArray(v14, 875704950);
        addNumberToCFArray(v6, 875704934);
        addNumberToCFArray(v6, 875836534);
        addNumberToCFArray(v6, 875836518);
        addNumberToCFArray(v6, 2037741171);
        addNumberToCFArray(v6, 2037741158);
        addNumberToCFArray(v6, 2016686642);
        addNumberToCFArray(v6, 2019963442);
        addNumberToCFArray(v6, 2016687156);
        addNumberToCFArray(v6, 2019963956);
        addNumberToCFArray(v6, 1983131952);
        addNumberToCFArray(v6, 1882468914);
        addNumberToCFArray(v6, 1885745714);
        addNumberToCFArray(v6, 1882469428);
        addNumberToCFArray(v6, 1885746228);
        addNumberToCFArray(v6, 875704438);
        addNumberToCFArray(v6, 875704422);
        addNumberToCFArray(v6, 2016686640);
        addNumberToCFArray(v6, 2019963440);
        addNumberToCFArray(v6, 1882468912);
        addNumberToCFArray(v6, 1885745712);
        CFDictionaryAddValue(v13, *MEMORY[0x1E6966130], v6);
        CFRelease(v6);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport(v13, 0, v7 + 7);
        if (PixelBufferAttributesWithIOSurfaceSupport)
        {
          v6 = PixelBufferAttributesWithIOSurfaceSupport;
        }

        else
        {
          if (v13)
          {
            CFRelease(v13);
          }

          v16 = VTTemporalFilterPluginSessionSetInputPixelBufferAttributes(a2, v7[7]);
          if (!v16)
          {
            v16 = VTPixelTransferSessionCreate(v8, v7 + 6);
          }

          v6 = v16;
          v13 = 0;
        }
      }
    }

    CFRelease(v12);
    CFRelease(v10);
    v10 = v13;
    if (v13)
    {
      goto LABEL_17;
    }
  }

  return v6;
}

uint64_t ParavirtualizedMotionEstimationProcessor_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  v26 = 0;
  cf = 0;
  v25 = 0;
  HIDWORD(v22) = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D636F70u, 1u, (DerivedStorage + 8), 0, &v28, &cf);
  if (appended || (appended = VTParavirtualizationMessageAppendCFPropertyList(cf, 0x2C6B6579u, a2), appended) || (appended = OUTLINED_FUNCTION_0_9(v28, &kVTParavirtualizationDefaultReplyTimeout, v17, v20, v22, v25), appended) || (OUTLINED_FUNCTION_2_9(appended, v8, v9, v10, v11, v12, v13, v14, v18, v19, v21, *v23, v23[4], v25, v26), appended))
  {
    v15 = appended;
  }

  else
  {
    v15 = v24;
    if (!v24)
    {
      v15 = VTParavirtualizationMessageCopyCFPropertyList(v26, 745955692, &v25);
      if (!v15)
      {
        *a4 = v25;
        v25 = 0;
      }
    }
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v15;
}

uint64_t ParavirtualizedMotionEstimationProcessor_StartSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v28 = 0;
  cf = 0;
  HIDWORD(v23) = 0;
  *DerivedStorage = a3;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D657374u, 1u, DerivedStorage + 1, 0, &v28, &v27);
  if (appended || (appended = VTParavirtualizationMessageAppendCMVideoDimensions(), appended) || (appended = OUTLINED_FUNCTION_0_9(v28, &kVTParavirtualizationDefaultReplyTimeout, v16, v19, v21, v23), appended))
  {
    v14 = appended;
  }

  else
  {
    OUTLINED_FUNCTION_1_9(appended, v6, v7, v8, v9, v10, v11, v12, v17, v18, v20, v22, *v24, v24[4], 0);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v25;
    }
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t ParavirtualizedMotionEstimationProcessor_CompleteFrames(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v25 = 0;
  cf = 0;
  HIDWORD(v20) = 0;
  v2 = VTParavirtualizationCreateMessageAndByteStream(0x6D636672u, 1u, (DerivedStorage + 8), 0, &v25, &v24);
  if (v2 || (v2 = OUTLINED_FUNCTION_0_9(v25, &kVTParavirtualizationCodecOperationReplyTimeout, v13, v16, v18, v20), v2))
  {
    v11 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_1_9(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v17, v19, *v21, v21[4], 0);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v22;
    }
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t ParavirtualizedMotionEstimationProcessor_CopySerializableProperties(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  v27 = 0;
  v24 = 0;
  cf = 0;
  HIDWORD(v21) = 0;
  v5 = VTParavirtualizationCreateMessageAndByteStream(0x6D736176u, 1u, (DerivedStorage + 8), 0, &v27, &v26);
  if (v5 || (v5 = OUTLINED_FUNCTION_0_9(v27, &kVTParavirtualizationDefaultReplyTimeout, v16, v19, v21, v24), v5) || (OUTLINED_FUNCTION_2_9(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18, v20, *v22, v22[4], v24, cf), v5))
  {
    v13 = v5;
  }

  else
  {
    v13 = v23;
    if (!v23)
    {
      v14 = VTParavirtualizationMessageCopyCFDictionary(cf, 745566831, &v24);
      v13 = v14;
      if (a3)
      {
        if (!v14)
        {
          *a3 = v24;
          v24 = 0;
        }
      }
    }
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v13;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSerializedAtomDataBlockBufferForSampleBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, CFTypeRef *a4, CMBlockBufferRef *a5)
{
  if (a3)
  {
    v6 = a4;
    v75 = a5;
    if (a4)
    {
      v8 = *a4;
    }

    else
    {
      v8 = 0;
    }

    v11 = MEMORY[0x193AE3010](&sVTParavirtualizationInitIndexedKeysOnce, vtParavirtualizationInitializeIndexedKeys);
    if (v11)
    {
      return v11;
    }

    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    blockBufferOut = 0;
    FormatDescription = CMSampleBufferGetFormatDescription(a3);
    DataBuffer = CMSampleBufferGetDataBuffer(a3);
    v14 = *MEMORY[0x1E695E480];
    appended = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
    if (appended)
    {
      goto LABEL_98;
    }

    appended = FigAtomWriterInitWithBlockBuffer();
    if (appended)
    {
      goto LABEL_98;
    }

    appended = FigAtomWriterBeginAtom();
    if (appended)
    {
      goto LABEL_98;
    }

    memset(&v83, 0, 24);
    CMSampleBufferGetOutputPresentationTimeStamp(&v83.duration, a3);
    if (v83.duration.flags)
    {
      appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(&v83, 24, 1869640819);
      if (appended)
      {
        goto LABEL_98;
      }
    }

    timingArrayEntriesNeededOut = 0;
    memset(&v83, 0, sizeof(v83));
    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a3, 0, 0, &timingArrayEntriesNeededOut);
    if (SampleTimingInfoArray == -12736)
    {
LABEL_27:
      if (!DataBuffer)
      {
        v83.duration.value = 0;
        appended = vtParavirtualizationAtomWriterAppendNumSamples(a3, &v78);
        if (appended)
        {
LABEL_98:
          v17 = appended;
          goto LABEL_99;
        }

        v25 = &v83;
LABEL_41:
        appended = vtParavirtualizationAtomWriterAppendSampleSizeArray(a3, &v78, &v25->duration.value);
        if (appended)
        {
          goto LABEL_98;
        }

        if (!v8 || !FigCFEqual())
        {
          appended = vtParavirtualizationAtomWriterAppendCMFormatDescription(FormatDescription);
          if (appended)
          {
            goto LABEL_98;
          }
        }

        if (FormatDescription)
        {
          v27 = CFRetain(FormatDescription);
        }

        else
        {
          v27 = 0;
        }

        Decryptor = FigSampleBufferGetDecryptor();
        if (Decryptor)
        {
          v29 = Decryptor;
          HIDWORD(v76) = 0;
          VTable = CMBaseObjectGetVTable();
          v39 = *(VTable + 16);
          v38 = VTable + 16;
          v40 = *(v39 + 280);
          if (v40)
          {
            v38 = v40(v29, &v76 + 4);
            if (v38)
            {
              v17 = v38;
              if (v38 != -12782)
              {
                goto LABEL_86;
              }
            }
          }

          v41 = HIDWORD(v76);
          if (HIDWORD(v76))
          {
            v42 = OUTLINED_FUNCTION_1_10(v38, v31, v32, v33, v34, v35, v36, v37, v74, v75, v76, blockBufferOut, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *&v83.duration.value, *&v83.duration.epoch, *&v83.presentationTimeStamp.timescale, v83.decodeTimeStamp.value);
            if (v42)
            {
              goto LABEL_104;
            }

            v42 = FigAtomWriterBeginAtom();
            if (v42)
            {
              goto LABEL_104;
            }

            v88[0] = v41;
            timingArrayEntriesNeededOut = 0;
            v43 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v43)
            {
              (v43)(v29, &timingArrayEntriesNeededOut);
              v43 = timingArrayEntriesNeededOut;
            }

            v86 = v43;
            v42 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(&v86, 8, 1801741170);
            if (v42)
            {
              goto LABEL_104;
            }

            v85 = 0;
            v44 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v44)
            {
              v44(v29, &v85);
              LODWORD(v44) = v85;
            }

            v84 = v44;
            v42 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(&v84, 4, 1986359405);
            if (v42 || (v42 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(v88, 4, 1668577648), v42) || (v42 = FigAtomWriterEndAtom(), v42))
            {
LABEL_104:
              v17 = v42;
              goto LABEL_86;
            }
          }
        }

        v45 = CMCopyDictionaryOfAttachments(v14, a3, 1u);
        v53 = v45;
        if (v45 && ((v54 = OUTLINED_FUNCTION_1_10(v45, v46, v47, v48, v49, v50, v51, v52, v74, v75, v76, blockBufferOut, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *&v83.duration.value, *&v83.duration.epoch, *&v83.presentationTimeStamp.timescale, v83.decodeTimeStamp.value), v54) || (v54 = FigAtomWriterBeginAtom(), v54) || (v54 = vtParavirtualizationAtomWriterAppendCFDictionary(v53, 0, &v83), v54) || (v54 = FigAtomWriterEndAtom(), v54)))
        {
          v17 = v54;
          v63 = 0;
        }

        else
        {
          v55 = CMCopyDictionaryOfAttachments(v14, a3, 0);
          v63 = v55;
          if (v55 && ((v64 = OUTLINED_FUNCTION_1_10(v55, v56, v57, v58, v59, v60, v61, v62, v74, v75, v76, blockBufferOut, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *&v83.duration.value, *&v83.duration.epoch, *&v83.presentationTimeStamp.timescale, v83.decodeTimeStamp.value), v64) || (v64 = FigAtomWriterBeginAtom(), v64) || (v64 = vtParavirtualizationAtomWriterAppendCFDictionary(v63, 0, &v83), v64) || (v64 = FigAtomWriterEndAtom(), v64)) || (SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0)) != 0 && ((v64 = OUTLINED_FUNCTION_1_10(SampleAttachmentsArray, v66, v67, v68, v69, v70, v71, v72, v74, v75, v76, blockBufferOut, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *&v83.duration.value, *&v83.duration.epoch, *&v83.presentationTimeStamp.timescale, v83.decodeTimeStamp.value), v64) || (v64 = FigAtomWriterBeginAtom(), v64) || (vtParavirtualizationAtomWriterAppendCFArray(), v64) || (v64 = FigAtomWriterEndAtom(), v64)))
          {
            v17 = v64;
            if (!v53)
            {
LABEL_84:
              if (v63)
              {
                CFRelease(v63);
              }

              goto LABEL_86;
            }
          }

          else
          {
            v73 = FigAtomWriterEndAtom();
            v17 = v73;
            if (v75 && !v73)
            {
              *v75 = blockBufferOut;
              blockBufferOut = 0;
            }

            if (!v53)
            {
              goto LABEL_84;
            }
          }
        }

        CFRelease(v53);
        goto LABEL_84;
      }

      v86 = 0;
      v83.duration.value = 0;
      DataLength = CMBlockBufferGetDataLength(DataBuffer);
      timingArrayEntriesNeededOut = 0;
      if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, DataLength))
      {
        value = DataBuffer;
      }

      else
      {
        Contiguous = CMBlockBufferCreateContiguous(v14, DataBuffer, v14, 0, 0, DataLength, 1u, &v83);
        if (Contiguous)
        {
LABEL_36:
          v17 = Contiguous;
          if (v83.duration.value)
          {
            CFRelease(v83.duration.value);
          }

          if (v17)
          {
            goto LABEL_99;
          }

          appended = vtParavirtualizationAtomWriterAppendNumSamples(a3, &v78);
          if (appended)
          {
            goto LABEL_98;
          }

          v25 = &v86;
          goto LABEL_41;
        }

        value = v83.duration.value;
      }

      Contiguous = CMBlockBufferGetDataPointer(value, 0, 0, 0, &timingArrayEntriesNeededOut);
      if (!Contiguous)
      {
        Contiguous = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(timingArrayEntriesNeededOut, DataLength, 1935958388);
      }

      goto LABEL_36;
    }

    v17 = SampleTimingInfoArray;
    if (SampleTimingInfoArray)
    {
      v18 = v6;
      v21 = 0;
LABEL_108:
      free(v21);
      v27 = 0;
      v6 = v18;
      goto LABEL_86;
    }

    if (timingArrayEntriesNeededOut == 1)
    {
      v18 = v6;
      v19 = &v83;
      v20 = CMSampleBufferGetSampleTimingInfoArray(a3, 1, &v83, &timingArrayEntriesNeededOut);
      v21 = 0;
      if (v20)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v18 = v6;
      if (timingArrayEntriesNeededOut < 2)
      {
        v19 = 0;
        v21 = 0;
      }

      else
      {
        if (timingArrayEntriesNeededOut > 0x38E38E38E38E38ELL || !(72 * timingArrayEntriesNeededOut) || (v22 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL)) == 0)
        {
          v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, v75, v76);
          v21 = 0;
LABEL_26:
          free(v21);
          v6 = v18;
          if (v17)
          {
LABEL_99:
            v27 = 0;
LABEL_86:
            if (blockBufferOut)
            {
              CFRelease(blockBufferOut);
            }

            if (v6 && !v17 && v27)
            {
              if (*v6)
              {
                CFRelease(*v6);
              }

              v17 = 0;
              *v6 = v27;
            }

            else if (v27)
            {
              CFRelease(v27);
            }

            return v17;
          }

          goto LABEL_27;
        }

        v21 = v22;
        v20 = CMSampleBufferGetSampleTimingInfoArray(a3, timingArrayEntriesNeededOut, v22, &timingArrayEntriesNeededOut);
        if (v20)
        {
LABEL_107:
          v17 = v20;
          goto LABEL_108;
        }

        v19 = v21;
      }
    }

    v17 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(v19, 72 * timingArrayEntriesNeededOut, 1937008993);
    goto LABEL_26;
  }

  v9 = qword_1EAD321B8;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954516, "<<<< VTParavirtualizationSampleBufferSerialization >>>>", 1871, v5);
}

uint64_t vtParavirtualizationAtomWriterAppendSampleSizeArray(opaqueCMSampleBuffer *a1, uint64_t a2, CMItemCount *a3)
{
  v19 = 0;
  sizeArrayEntriesNeededOut = 0;
  SampleSizeArray = CMSampleBufferGetSampleSizeArray(a1, 0, 0, &sizeArrayEntriesNeededOut);
  if (SampleSizeArray == -12735)
  {
    appended = 0;
    goto LABEL_22;
  }

  appended = SampleSizeArray;
  v7 = sizeArrayEntriesNeededOut;
  if (a3)
  {
    *a3 = sizeArrayEntriesNeededOut;
  }

  if (v7 != 1)
  {
    if (v7 < 2)
    {
      if (!SampleSizeArray)
      {
        v10 = 0;
        v11 = 0;
        v15 = sizeArrayEntriesNeededOut;
        goto LABEL_29;
      }
    }

    else
    {
      if (!(v7 >> 61))
      {
        if (8 * v7)
        {
          v12 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
          if (v12)
          {
            v10 = v12;
            v13 = CMSampleBufferGetSampleSizeArray(a1, sizeArrayEntriesNeededOut, v12, &sizeArrayEntriesNeededOut);
            if (v13)
            {
LABEL_18:
              appended = v13;
LABEL_23:
              v11 = 0;
              goto LABEL_30;
            }

            v8 = v10;
            goto LABEL_13;
          }
        }
      }

      OUTLINED_FUNCTION_2_10();
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, sizeArrayEntriesNeededOut, v21);
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v8 = &v19;
  v9 = CMSampleBufferGetSampleSizeArray(a1, 1, &v19, &sizeArrayEntriesNeededOut);
  v10 = 0;
  if (!v9)
  {
LABEL_13:
    if (sizeArrayEntriesNeededOut)
    {
      if (sizeArrayEntriesNeededOut < 0)
      {
        goto LABEL_17;
      }

      if (sizeArrayEntriesNeededOut >> 62)
      {
        goto LABEL_17;
      }

      v14 = 4 * sizeArrayEntriesNeededOut;
      if (!(4 * sizeArrayEntriesNeededOut))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = malloc_type_malloc(v14, 0x100004052888210uLL);
    if (!v16)
    {
LABEL_17:
      OUTLINED_FUNCTION_2_10();
      v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, sizeArrayEntriesNeededOut, v21);
      goto LABEL_18;
    }

    v11 = v16;
    v15 = sizeArrayEntriesNeededOut;
    if (sizeArrayEntriesNeededOut >= 1)
    {
      v17 = 0;
      do
      {
        *(v16 + v17) = v8[v17];
        ++v17;
      }

      while (v15 != v17);
    }

LABEL_29:
    appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(v11, 4 * v15, 1936943482);
    goto LABEL_30;
  }

  appended = v9;
  v11 = 0;
LABEL_30:
  free(v10);
  free(v11);
  return appended;
}

uint64_t vtParavirtualizationAtomWriterAppendCMFormatDescription(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_0_10();
  appended = FigAtomWriterInitWithParent();
  if (appended)
  {
    return appended;
  }

  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    return appended;
  }

  MediaType = CMFormatDescriptionGetMediaType(a1);
  appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(&MediaType, 4, 1835297121);
  if (appended)
  {
    return appended;
  }

  if (MediaType == 1635088502 || MediaType == 1986618469 || MediaType == 1885954932)
  {
    *&v16[0] = CMVideoFormatDescriptionGetDimensions(a1);
    MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
    appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(v16, 8, 1986292077);
    if (appended)
    {
      return appended;
    }

    v5 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(&MediaSubType, 4, 1668244579);
    if (v5)
    {
      return v5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_10();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (Extensions)
  {
    v7 = Extensions;
    *&v8 = OUTLINED_FUNCTION_3_8();
    v16[0] = v8;
    v9 = FigAtomWriterInitWithParent();
    if (!v9)
    {
      v9 = FigAtomWriterBeginAtom();
      if (!v9)
      {
        v9 = vtParavirtualizationAtomWriterAppendCFDictionary(v7, 0, v16);
        if (!v9)
        {
          v9 = FigAtomWriterEndAtom();
        }
      }
    }

    v5 = v9;
  }

  if (!v5)
  {
    return FigAtomWriterEndAtom();
  }

  return v5;
}

uint64_t vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_10();
  result = FigAtomWriterInitWithParent();
  if (!result)
  {
    result = FigAtomWriterBeginAtom();
    if (!result)
    {
      result = FigAtomWriterAppendData();
      if (!result)
      {
        return FigAtomWriterEndAtom();
      }
    }
  }

  return result;
}

uint64_t vtParavirtualizationAtomWriterAppendCFDictionary(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_10();
  Count = FigCFDictionaryGetCount();
  v6 = Count;
  if (a2 || Count >= 1)
  {
    v10 = FigAtomWriterInitWithParent();
    if (!v10)
    {
      v10 = FigAtomWriterBeginAtom();
      if (!v10)
      {
        if (v6 < 1)
        {
          v7 = 0;
          v8 = 0;
LABEL_25:
          appended = FigAtomWriterEndAtom();
LABEL_26:
          v9 = appended;
          goto LABEL_29;
        }

        if (!(v6 >> 61))
        {
          if (8 * v6)
          {
            v11 = malloc_type_malloc(8 * v6, 0xC0040B8AA526DuLL);
            if (v11)
            {
              v7 = v11;
              v8 = malloc_type_malloc(8 * v6, 0xC0040B8AA526DuLL);
              if (v8)
              {
                CFDictionaryGetKeysAndValues(a1, v7, v8);
                v12 = 0;
                while (1)
                {
                  v13 = v7[v12];
                  if (!v13)
                  {
                    break;
                  }

                  v14 = CFGetTypeID(v7[v12]);
                  if (v14 != CFStringGetTypeID())
                  {
                    break;
                  }

                  v15 = v8[v12];
                  *&v16 = OUTLINED_FUNCTION_3_8();
                  v23[0] = v16;
                  appended = FigAtomWriterInitWithParent();
                  if (appended)
                  {
                    goto LABEL_26;
                  }

                  appended = FigAtomWriterBeginAtom();
                  if (appended)
                  {
                    goto LABEL_26;
                  }

                  value = 0;
                  if (CFDictionaryGetValueIfPresent(sVTParavirtualizationStringToKeyIndexDict, v13, &value))
                  {
                    v24 = value;
                    appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(&v24, 2, 1768192107);
                    if (appended)
                    {
                      goto LABEL_26;
                    }
                  }

                  else
                  {
                    appended = vtParavirtualizationAtomWriterAppendCFPropertyList(v13, 1937011307, v23);
                    if (appended)
                    {
                      goto LABEL_26;
                    }
                  }

                  vtParavirtualizationAtomWriterAppendCFType(v15, a2, v23);
                  if (appended)
                  {
                    goto LABEL_26;
                  }

                  appended = FigAtomWriterEndAtom();
                  if (appended)
                  {
                    goto LABEL_26;
                  }

                  if (v6 == ++v12)
                  {
                    goto LABEL_25;
                  }
                }

                OUTLINED_FUNCTION_2_10();
                appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              }

              else
              {
                OUTLINED_FUNCTION_2_10();
                appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              }

              goto LABEL_26;
            }
          }
        }

        OUTLINED_FUNCTION_2_10();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
      }
    }

    v9 = v10;
    v7 = 0;
    v8 = 0;
    goto LABEL_29;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_29:
  free(v7);
  free(v8);
  return v9;
}

uint64_t vtParavirtualizationAtomWriterAppendCFPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigAtomWriterInitWithParent();
  if (!result)
  {
    result = FigAtomWriterBeginAtom();
    if (!result)
    {
      result = FigCreateCFDataFromCFPropertyList();
      if (!result)
      {
        CFDataGetBytePtr(0);
        CFDataGetLength(0);
        result = FigAtomWriterAppendData();
        if (!result)
        {
          return FigAtomWriterEndAtom();
        }
      }
    }
  }

  return result;
}

void vtParavirtualizationAtomWriterAppendCFArray()
{
  OUTLINED_FUNCTION_0_10();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    if (Count >= 1)
    {
      v3 = Count;
      if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom())
      {
        v4 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
          if (vtParavirtualizationAtomWriterAppendCFType(ValueAtIndex, 1, &v6))
          {
            break;
          }

          if (v3 == ++v4)
          {
            FigAtomWriterEndAtom();
            return;
          }
        }
      }
    }
  }
}

uint64_t vtParavirtualizationAtomWriterAppendNULL()
{
  OUTLINED_FUNCTION_0_10();
  result = FigAtomWriterInitWithParent();
  if (!result)
  {
    result = FigAtomWriterBeginAtom();
    if (!result)
    {
      return FigAtomWriterEndAtom();
    }
  }

  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCMFormatDescription(uint64_t a1, CMVideoFormatDescriptionRef *a2)
{
  *&v2 = OUTLINED_FUNCTION_3_8();
  v9 = v2;
  v8 = v2;
  v3 = FigAtomStreamInitWithParent();
  if (v3)
  {
    return v3;
  }

  while (1)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      break;
    }

    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom == -12890)
    {
      OUTLINED_FUNCTION_2_10();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, DWORD2(v8), v9);
    }

    v6 = Atom;
    if (Atom)
    {
      return v6;
    }
  }

  return CurrentAtomTypeAndDataLength;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFPropertyList(uint64_t a1, CFTypeRef *a2)
{
  theSourceBuffer = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    CFPropertyListFromData = CurrentAtomTypeAndDataLength;
    v4 = 0;
    goto LABEL_8;
  }

  v4 = malloc_type_malloc(0, 0x6D49F62DuLL);
  if (!v4)
  {
    BBuf = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
LABEL_13:
    CFPropertyListFromData = BBuf;
    goto LABEL_8;
  }

  BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (BBuf)
  {
    goto LABEL_13;
  }

  BBuf = CMBlockBufferCopyDataBytes(0, 0, 0, v4);
  if (BBuf)
  {
    goto LABEL_13;
  }

  CFPropertyListFromData = FigCreateCFPropertyListFromData();
  if (a2 && !CFPropertyListFromData)
  {
    *a2 = 0;
  }

LABEL_8:
  if (theSourceBuffer)
  {
    CFRelease(theSourceBuffer);
  }

  free(v4);
  return CFPropertyListFromData;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_2()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  return VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_3(v1);
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_11(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_12(uint64_t a1, CFArrayRef theArray, const __CFArray *a3)
{
  if (a1 >= 1)
  {
    for (i = 0; i != a1; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v8 = CFArrayGetValueAtIndex(a3, i);
      CFDictionaryApplyFunction(ValueAtIndex, vtParavirtualizationCopyEachEntry, v8);
    }
  }
}

void VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_13(CFDictionaryRef theAttachments, CMAttachmentBearerRef target, CFDictionaryRef a3)
{
  if (theAttachments)
  {
    CMSetAttachments(target, theAttachments, 1u);
  }

  if (a3)
  {
    CMSetAttachments(target, a3, 0);
  }
}

uint64_t vtParavirtualizationAtomWriterAppendCFURL_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomWriterAppendCFURL_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void vtParavirtualizationAtomDataReaderCopyCFType_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_4_7(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  *v9 = v10;
  v11 = cfa;
  if (!v10 && cfa)
  {
    v12 = CFGetTypeID(cfa);
    if (v12 == CFStringGetTypeID())
    {
      *v8 = CFURLCreateWithString(*MEMORY[0x1E695E480], cfa, 0);
    }

    v11 = cfa;
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void vtParavirtualizationAtomDataReaderCopyCFType_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_4_7(a1, a2, a3, a4, a5, a6, a7, a8, v13, plist);
  *v9 = v10;
  v11 = plista;
  if (!v10)
  {
    if (plista)
    {
      v12 = CGColorSpaceCreateWithPropertyList(plista);
      v11 = plista;
    }

    else
    {
      v12 = 0;
    }

    *v8 = v12;
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTIsBackgroundRunningSupportedForClientPID_cold_2()
{
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-RBS >>>>", 41, v0);
}

uint64_t VTPixelTransferAppendSoftwareRotationNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = 0u;
  v20 = 0u;
  cf = 0;
  v9 = *(a6 + 26);
  v10 = *(a1 + 4);
  v11 = *(a2 + 4);
  v12 = *(a3 + 64);
  CurrentDimensions = VTPixelTransferGraphGetCurrentDimensions(a1, a2, a3, a6, 0, &v19);
  if (CurrentDimensions)
  {
    return CurrentDimensions;
  }

  PixelBufferPoolAttributes = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, (v9 & 3) != 0, *&v20, *(&v20 + 1), &cf);
  v15 = cf;
  if (PixelBufferPoolAttributes)
  {
    appended = PixelBufferPoolAttributes;
    if (!cf)
    {
      return appended;
    }

    goto LABEL_4;
  }

  appended = VTPixelTransferChainAppendRotationNode(*a6, *(a3 + 8), ((v11 ^ v10) << 29 >> 31) & 0x5A, v12 & ((v10 & 0x20) == 0), cf, *(a3 + 32));
  v15 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v15);
  }

  return appended;
}

uint64_t VTPixelTransferChainAppendRotationNode(uint64_t a1, uint64_t a2, int a3, char a4, const void *a5, const void *a6)
{
  v6 = 0;
  if (a1)
  {
    if (a2)
    {
      VTPixelTransferNodeGetClassID();
      v6 = CMDerivedObjectCreate();
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0, v10);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v6;
}

uint64_t VTPixelRotationSessionSetMetalProperty(uint64_t a1, __CFString *a2, const void *a3, const void *a4, __CFDictionary *a5)
{
  v11 = 0;
  propertyValue = a3;
  if (a3 && !FigCFEqual())
  {
    v9 = *MEMORY[0x1E695E480];
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
    VTMetalTransferSessionCopyDefaultProperty(a2, *MEMORY[0x1E695E480], &propertyValue);
  }

  VTPixelRotationSessionCopyMetalProperty(a2, v9, a4, a5, &v11);
  if (!*(a1 + 136) || (result = VTSessionSetProperty(a4, a2, propertyValue), !result))
  {
    VTPRS_AddOrRemoveFromDictionary(a5, a2, propertyValue);
    return 0;
  }

  return result;
}

uint64_t VTPixelRotationSessionRotateSubImage(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, double a4, double a5, double a6, double a7, float64_t a8, float64_t a9, float64_t a10, float64_t a11)
{
  v12 = 0;
  v28 = *MEMORY[0x1E69E9840];
  if (pixelBuffer && a3)
  {
    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetWidth(a3);
    CVPixelBufferGetHeight(pixelBuffer);
    CVPixelBufferGetHeight(a3);
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    printable4CC(PixelFormatType);
    v24 = CVPixelBufferGetPixelFormatType(a3);
    printable4CC(v24);
    if (a1 && FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      VTPixelTransferSessionThreadBearTrap();
    }

    v26 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v12 = _VTPixelRotationSessionRotateSubImage(a1, pixelBuffer, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    if (*v26 == 1)
    {
      kdebug_trace();
    }
  }

  if (a1)
  {
    FigAtomicDecrement32();
  }

  return v12;
}

uint64_t VTPixelRotationSessionFlush(uint64_t a1, CVOptionFlags a2)
{
  v4 = *(a1 + 40);
  if (!v4 || (result = VTPixelTransferChainFlush(v4, a2), !result))
  {
    result = *(a1 + 136);
    if (result)
    {

      return VTMetalTransferSessionFlush(result, a2);
    }
  }

  return result;
}

void VTPixelRotationSessionCopyMetalBooleanProperty(const __CFString *a1, VTSessionRef session, uint64_t a3, _BYTE *a4)
{
  cf = 0;
  if (a4)
  {
    VTPixelRotationSessionCopyMetalProperty(a1, *MEMORY[0x1E695E480], session, a3, &cf);
    *a4 = FigGetBooleanFromCFTypeWithDefault();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t VTPixelRotationSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void VTPixelRotationSessionCopySupportedPropertyDictionary_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  CFRelease(a1);
}

uint64_t VTPixelRotationSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTPixelRotationSessionSetProperty_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 0;
  if (a2)
  {
    result = 0;
    if (*MEMORY[0x1E695E738] != a2)
    {
      v5 = *(a1 + 52);
      if (FigCFEqual())
      {
        v5 = 0;
        result = 0;
      }

      else if (FigCFEqual())
      {
        result = 0;
        v5 = 90;
      }

      else if (FigCFEqual())
      {
        result = 0;
        v5 = 180;
      }

      else if (FigCFEqual())
      {
        result = 0;
        v5 = 270;
      }

      else
      {
        fig_log_get_emitter();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
      }
    }
  }

  else
  {
    result = 0;
  }

  if (v5 != *(a1 + 52))
  {
    *(a1 + 52) = v5;
    *(a1 + 32) = 0;
  }

  *a3 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_CreateInstanceWithSpecification(unsigned int a1, uint64_t a2, const __CFDictionary *a3, const void *a4, CFTypeRef *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  cf = 0;
  if (a5)
  {
    v13 = Mutable;
    FigNote_AllowInternalDefaultLogs();
    v5 = &gParavirtualizedVideoEncoder;
    v6 = @"pv_encoder_trace";
    OUTLINED_FUNCTION_5_6();
    fig_note_initialize_category_with_default_work_cf();
    OUTLINED_FUNCTION_5_6();
    fig_note_initialize_category_with_default_work_cf();
    VTVideoEncoderGetClassID();
    v14 = CMDerivedObjectCreate();
    if (v14)
    {
      v18 = v14;
      OUTLINED_FUNCTION_0_11();
      v12 = v13;
    }

    else
    {
      v12 = v13;
      OUTLINED_FUNCTION_3_9();
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
      OUTLINED_FUNCTION_0_11();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    v18 = 4294954394;
  }

  v15 = CFUUIDCreateString(v10, v5);
  if (dword_1EAD32120)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(v15);
  if (a3)
  {
    CFRelease(a3);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v18;
}

uint64_t ParavirtualizedVideoEncoder_Invalidate(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v8 = 0;
  cf = 0;
  MessageAndByteStream = VTParavirtualizationCreateMessageAndByteStream(0x65696E76u, 1u, (DerivedStorage + 64), 0, &cf, 0);
  if (MessageAndByteStream || (v11 = kVTParavirtualizationDefaultReplyTimeout, v12 = 0, MessageAndByteStream = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v11, &v8), MessageAndByteStream))
  {
    v5 = MessageAndByteStream;
  }

  else
  {
    OUTLINED_FUNCTION_4_8(v8, v3, &v10);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v10;
    }
  }

  os_unfair_lock_lock((DerivedStorage + 16));
  *DerivedStorage = 0;
  *(DerivedStorage + 8) = 0;
  os_unfair_lock_unlock((DerivedStorage + 16));
  if (v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

uint64_t ParavirtualizedVideoEncoder_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v16 = 0;
  cf = 0;
  v15 = 0;
  HIDWORD(v14) = 0;
  if (FigCFEqual())
  {
    v7 = *(DerivedStorage + 120);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    v8 = 0;
    *a4 = v7;
  }

  else
  {
    appended = VTParavirtualizationCreateMessageAndByteStream(0x65636F70u, 1u, (DerivedStorage + 64), 0, &v18, &cf);
    if (appended || (appended = VTParavirtualizationMessageAppendCFPropertyList(cf, 0x2C6B6579u, a2), appended) || (appended = OUTLINED_FUNCTION_0_9(v18, &kVTParavirtualizationDefaultReplyTimeout, v12, v13, v14, v15), appended) || (OUTLINED_FUNCTION_4_8(v16, v10, &v14 + 4), appended))
    {
      v8 = appended;
    }

    else
    {
      v8 = HIDWORD(v14);
      if (!HIDWORD(v14))
      {
        v8 = VTParavirtualizationMessageCopyCFPropertyList(v16, 745955692, &v15);
        if (!v8)
        {
          *a4 = v15;
          v15 = 0;
        }
      }
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v8;
}

uint64_t ParavirtualizedVideoEncoder_SetProperties(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24 = 0;
  v22 = 0;
  HIDWORD(v21) = 0;
  v4 = VTParavirtualizationCreateMessageAndByteStream(0x656D756Cu, 1u, (DerivedStorage + 64), 0, &v24, &v23);
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    VTVideoEncoderGetCMBaseObject();
    v6 = v5;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = FigCFDictionaryCopyArrayOfKeys();
    Count = FigCFDictionaryGetCount();
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
        Value = CFDictionaryGetValue(a2, ValueAtIndex);
        cf[0] = 0;
        v15 = paravirtualizedVideoEncoder_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(v6, ValueAtIndex, Value, cf);
        if (v15 == -19096)
        {
          if (v10 == 1)
          {
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            Mutable = 0;
            if (!v8)
            {
              goto LABEL_19;
            }

LABEL_18:
            CFRelease(v8);
            goto LABEL_19;
          }
        }

        else
        {
          if (v12)
          {
            v12 = v12;
          }

          else
          {
            v12 = v15;
          }

          if (!v15)
          {
            FigCFDictionarySetValue();
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        if (v10 == ++v11)
        {
          goto LABEL_17;
        }
      }
    }

    v12 = 0;
LABEL_17:
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_19:
    if (v12)
    {
LABEL_25:
      if (!Mutable)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    appended = VTParavirtualizationMessageAppendCFDictionary(v23, 0x2C70726Fu, Mutable);
    if (!appended)
    {
      appended = OUTLINED_FUNCTION_0_9(v24, &kVTParavirtualizationDefaultReplyTimeout, *cf, cf[2], cf[3], v21);
      if (!appended)
      {
        OUTLINED_FUNCTION_4_8(v22, v17, &v21 + 4);
        if (v18)
        {
          v12 = v18;
        }

        else
        {
          v12 = HIDWORD(v21);
        }

        goto LABEL_25;
      }
    }

    v12 = appended;
    if (Mutable)
    {
LABEL_26:
      CFRelease(Mutable);
    }
  }

LABEL_27:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v12;
}

uint64_t ParavirtualizedVideoEncoder_CopySerializableProperties(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v16 = 0;
  v13 = 0;
  cf = 0;
  HIDWORD(v12) = 0;
  v5 = VTParavirtualizationCreateMessageAndByteStream(0x65736176u, 1u, (DerivedStorage + 64), 0, &v16, &v15);
  if (v5 || (v5 = OUTLINED_FUNCTION_0_9(v16, &kVTParavirtualizationDefaultReplyTimeout, v10, v11, v12, v13), v5) || (OUTLINED_FUNCTION_4_8(cf, v6, &v12 + 4), v5))
  {
    v7 = v5;
  }

  else
  {
    v7 = HIDWORD(v12);
    if (!HIDWORD(v12))
    {
      v8 = VTParavirtualizationMessageCopyCFDictionary(cf, 745566831, &v13);
      v7 = v8;
      if (a3)
      {
        if (!v8)
        {
          *a3 = v13;
          v13 = 0;
        }
      }
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v7;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL paravirtualizedVideoEncoder_HandleMessageFromHost_cold_9(uint64_t a1, _DWORD *a2)
{
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

uint64_t paravirtualizedVideoEncoder_forgetPendingFramePixelBufferByUUID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_lookupRetainAndForgetPendingTilePixelBufferByUUID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_lookupRetainAndForgetPendingTilePixelBufferByUUID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeFrame_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeFrame_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeFrame_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeTile_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRPerFrameMetadataGenerationSessionCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRPerFrameMetadataGenerationSessionAttachMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTHDRPerFrameMetadataGenerationSessionAttachMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTHDRPerFrameMetadataGenerationSessionAttachMetadata_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTRestrictVideoDecoders(unsigned int a1, unsigned int *a2, CFIndex a3)
{
  if (VTHasVideoDecoderRegistryBeenCreated())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v17 = 388;
  }

  else if (a1)
  {
    if ((a1 & 2) != 0)
    {
      if ((a1 & 4) != 0)
      {
        if ((a1 & 8) != 0)
        {
          if (qword_1ED6D4150 || dword_1ED6D4148)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_2();
            v17 = 394;
          }

          else if ((byte_1ED6D4143 & 1) != 0 || (byte_1ED6D4142 & 1) != 0 || (byte_1ED6D4141 & 1) != 0 || (_MergedGlobals_10 & 1) != 0 || (byte_1ED6D4144 & 1) != 0 || byte_1ED6D4145 == 1)
          {
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v21);
            emitter = fig_log_get_emitter();
            v17 = 395;
            v16 = v3;
          }

          else
          {
            if ((a1 & 0x40) == 0 || a3)
            {
              if (a2)
              {
                v7 = *MEMORY[0x1E695E480];
                Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], a3, MEMORY[0x1E695E9C0]);
                if (!Mutable)
                {
                  return 0;
                }

                v9 = Mutable;
                if (a3 >= 1)
                {
                  do
                  {
                    v10 = *a2++;
                    *bytes = bswap32(v10);
                    v11 = CFStringCreateWithBytes(v7, bytes, 4, 0x600u, 0);
                    if (!v11)
                    {
                      return 0;
                    }

                    v12 = v11;
                    CFArrayAppendValue(v9, v11);
                    CFRelease(v12);
                  }

                  while (--a3);
                }

                qword_1ED6D4150 = v9;
                v13 = dword_1ED6D4148;
              }

              else
              {
                v13 = 0;
              }

              dword_1ED6D4148 = v13 | a1;
              VTSetVideoDecoderRestrictions(v13 | a1);
              return 0;
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_2();
            v17 = 398;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_2();
          v17 = 393;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        v17 = 392;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      v17 = 391;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v17 = 390;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-Restrictions >>>>", v17, v16);
}

uint64_t currentProcessHasTrueBooleanEntitlement_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTApplyRestrictions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTApplyRestrictions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dsrxpc_copyPixelBufferRecipient(CFTypeRef *a1)
{
  v2 = FigSimpleMutexLock();
  if (v2)
  {
    v4 = v2;
    goto LABEL_13;
  }

  v3 = qword_1ED6D4198;
  if (!qword_1ED6D4198)
  {
    updated = FigXPCCreateBasicMessage();
    if (updated || (updated = FigXPCRemoteClientSendSyncMessageCreatingReply(), updated) || (updated = FigXPCCreateBasicMessage(), updated) || (updated = FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2(), updated) || (updated = FigXPCRemoteClientSendSyncMessage(), updated))
    {
      v4 = updated;
      goto LABEL_12;
    }

    v3 = 0;
    qword_1ED6D4198 = 0;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = 0;
  *a1 = CFRetain(v3);
LABEL_12:
  FigSimpleMutexUnlock();
LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t dsrxpc_copyDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_9_3();
  v4 = FigXPCCreateBasicMessage();
  if (!v4)
  {
    v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (!v4)
    {
      v4 = FigXPCMessageCopyCFDictionary();
    }
  }

  v5 = v4;
  FigXPCRelease();
  FigXPCRelease();
  return v5;
}

uint64_t VTDecompressionSessionRemoteXPC_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (!a1 || *(a1 + 24) || *(a1 + 25) || *(a1 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (CFEqual(a2, @"PixelBufferPool"))
  {
    pixelBufferAttributes = 0;
    valuePtr = 0;
    FigSimpleMutexLock();
    v16 = VTDecompressionSessionRemoteXPC_CopyProperty(a1, @"PoolPixelBufferAttributesSeed", a3, &valuePtr);
    if (!v16)
    {
      if (FigCFEqual())
      {
LABEL_25:
        if (pixelBufferAttributes && !*(a1 + 152))
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v17 = Mutable;
          if (pixelBufferAttributes)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6966170], @"dsrxpc_cloned_pool");
            v19 = CVPixelBufferPoolCreate(a3, v17, pixelBufferAttributes, (a1 + 152));
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_19_0();
            v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixelBufferAttributes, valuePtr, v26);
          }

          v12 = v19;
        }

        else
        {
          v17 = 0;
          v12 = 0;
        }

        goto LABEL_31;
      }

      v20 = *(a1 + 144);
      if (v20)
      {
        CFRelease(v20);
        *(a1 + 144) = 0;
      }

      v16 = VTDecompressionSessionRemoteXPC_CopyProperty(a1, @"PoolPixelBufferAttributes", a3, &pixelBufferAttributes);
      if (!v16)
      {
        if (pixelBufferAttributes)
        {
          v21 = *(a1 + 152);
          if (v21)
          {
            CFRelease(v21);
            *(a1 + 152) = 0;
          }
        }

        v22 = *(a1 + 144);
        v23 = valuePtr;
        *(a1 + 144) = valuePtr;
        if (v23)
        {
          CFRetain(v23);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        goto LABEL_25;
      }
    }

    v12 = v16;
    v17 = 0;
LABEL_31:
    FigSimpleMutexUnlock();
    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (pixelBufferAttributes)
    {
      CFRelease(pixelBufferAttributes);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v12)
    {
      return v12;
    }

    v11 = *(a1 + 152);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    goto LABEL_18;
  }

  if (CFEqual(a2, @"NumberOfFramesBeingDecoded"))
  {
    if (*(a1 + 40))
    {
      FigSimpleMutexLock();
      v8 = *(a1 + 40);
      if (v8 && CFArrayGetCount(v8) >= 1)
      {
        OUTLINED_FUNCTION_13_2();
        v9 = 0;
        do
        {
          v9 += *(CFArrayGetValueAtIndex(*(a1 + 40), a3) + 4);
          OUTLINED_FUNCTION_12_2();
        }

        while (!v10);
      }

      else
      {
        LODWORD(v9) = 0;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      LODWORD(v9) = 0;
    }

    LODWORD(valuePtr) = v9;
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
LABEL_18:
    v12 = 0;
    *a4 = v11;
    return v12;
  }

  v14 = qword_1ED6D4188;
  v15 = *(a1 + 16);

  return MEMORY[0x1EEDBE768](v14, v15, a2, a4);
}

uint64_t VTDecompressionSessionRemoteXPC_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && !*(a1 + 24) && !*(a1 + 25) && !*(a1 + 28))
  {
    if (FigCFEqual())
    {
      v7 = (a1 + 208);
      v6 = *(a1 + 208);
      if (!v6)
      {
LABEL_23:
        v12 = qword_1ED6D4188;
        v13 = *(a1 + 16);

        return MEMORY[0x1EEDBE770](v12, v13, a2, a3);
      }

LABEL_7:
      CFRelease(v6);
      *v7 = 0;
      goto LABEL_23;
    }

    if (FigCFEqual())
    {
      if (a3)
      {
        SInt32 = FigCFNumberGetSInt32();
        if (*(a1 + 248))
        {
          result = FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority();
          if (result)
          {
            return result;
          }

          goto LABEL_23;
        }

        v11 = a1;
        UInt32 = 5;
LABEL_22:
        result = dsrxpc_prepareForCallsOfDecodeFrameFromConsistentThread(v11, UInt32, SInt32);
        if (result)
        {
          return result;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_23;
      }

      if (a3)
      {
        UInt32 = FigCFNumberGetUInt32();
        if (*(a1 + 248))
        {
          result = FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority();
          if (result)
          {
            return result;
          }

          goto LABEL_23;
        }

        v11 = a1;
        SInt32 = 0;
        goto LABEL_22;
      }
    }

    v7 = (a1 + 248);
    v6 = *(a1 + 248);
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_1();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t dsrxpc_prepareForCallsOfDecodeFrameFromConsistentThread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  cf = 0;
  if (*(a1 + 248))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v9);
LABEL_15:
    AssociatedEventLink = v4;
    goto LABEL_9;
  }

  if (qword_1ED6D41B0 != -1)
  {
    dispatch_once(&qword_1ED6D41B0, &__block_literal_global_34_0);
  }

  if (!_MergedGlobals_11)
  {
    AssociatedEventLink = 0;
    goto LABEL_9;
  }

  v4 = FigXPCRemoteClientCopyPrimaryConnection();
  if (v4)
  {
    goto LABEL_15;
  }

  AssociatedEventLink = FigXPCConnectionCreateAssociatedEventLink();
  if (!AssociatedEventLink)
  {
    *(a1 + 248) = 0;
    v7 = 0;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return AssociatedEventLink;
}

uint64_t VTDecompressionSessionRemoteXPC_SetProperties()
{
  OUTLINED_FUNCTION_14_2();
  if (v1 || *(v0 + 25) || *(v0 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
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

uint64_t VTDecompressionSessionRemoteXPC_FinishDelayedFrames(uint64_t a1)
{
  v3 = v2;
  if (*(a1 + 24) || *(a1 + 25) || *(a1 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_15:
    v6 = v5;
    goto LABEL_8;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_15;
  }

  v5 = FigXPCRemoteClientSendSyncMessage();
  if (v5)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 25))
  {
    OUTLINED_FUNCTION_8_3();
    do
    {
      if (*(a1 + 28))
      {
        break;
      }

      if (FigSemaphoreWaitRelative() != v1)
      {
        break;
      }

      v3 *= 2;
    }

    while (!*(a1 + 25));
  }

  v6 = *(a1 + 96);
  *(a1 + 96) = 0;
LABEL_8:
  FigXPCRelease();
  return v6;
}

uint64_t VTDecompressionSessionRemoteXPC_FlushPixelBufferPool(uint64_t a1)
{
  if (*(a1 + 24) || *(a1 + 25) || *(a1 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
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

BOOL VTDecompressionSessionRemoteXPC_CanAcceptFormatDescription()
{
  OUTLINED_FUNCTION_14_2();
  if (v1 || *(v0 + 25) || *(v0 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_10:
    v2 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_9_3();
  if (FigXPCCreateBasicMessage() || FigXPCMessageSetFormatDescription() || FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    goto LABEL_10;
  }

  v2 = xpc_dictionary_get_BOOL(xdict, "CanacceptFormat");
LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t dsrxpc_waitForAsynchronousFrames(uint64_t a1)
{
  v3 = v2;
  if (*(a1 + 24) || *(a1 + 25))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  if (*(a1 + 248) && MEMORY[0x193AE2FD0]() == *(a1 + 264))
  {
    OUTLINED_FUNCTION_7_3();
    v7 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
    v3 = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

    if (v7 == -19428)
    {
      FigOSEventLinkRemoteInvalidate();
      v3 = 4294947868;
      goto LABEL_9;
    }
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5 || (v5 = FigXPCRemoteClientSendSyncMessage(), v5))
  {
LABEL_19:
    v3 = v5;
    goto LABEL_9;
  }

  if (!*(a1 + 25))
  {
    OUTLINED_FUNCTION_8_3();
    do
    {
      if (*(a1 + 28))
      {
        break;
      }

      if (FigSemaphoreWaitRelative() != v1)
      {
        break;
      }

      v3 *= 2;
    }

    while (!*(a1 + 25));
  }

  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
LABEL_9:
  FigXPCRelease();
  return v3;
}

uint64_t VTDecompressionSessionRemoteXPC_CopyBlackPixelBuffer()
{
  v10 = 0;
  v11 = 0;
  OUTLINED_FUNCTION_14_2();
  if (v2 || *(v0 + 25) || *(v0 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_16:
    v6 = v4;
    goto LABEL_10;
  }

  v3 = v1;
  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_16;
  }

  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
    goto LABEL_16;
  }

  v4 = dsrxpc_copyPixelBufferRecipient(&v8);
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = FigPixelBufferRecipientCopyPixelBufferFromXPCMessage();
  v6 = v5;
  if (v3 && !v5)
  {
    *v3 = cf;
    cf = 0;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t VTDecompressionSessionRemoteXPC_GetMinOutputPresentationTimeStampOfFramesBeingDecoded@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  *a1 = *MEMORY[0x1E6960C70];
  *(a1 + 16) = *(v2 + 16);
  OUTLINED_FUNCTION_14_2();
  if (v4 || *(v3 + 25) || *(v3 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    if (!FigXPCCreateBasicMessage() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      FigXPCMessageGetCMTime();
    }
  }

  FigXPCRelease();
  return FigXPCRelease();
}

uint64_t VTDecompressionSessionRemoteXPC_Invalidate(uint64_t a1)
{
  v4[5] = 0;
  if (!*(a1 + 28))
  {
    dsrxpc_waitForAsynchronousFrames(a1);
  }

  if (FigAtomicCompareAndSwap32())
  {
    if (!*(a1 + 24) && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendAsyncMessage();
    }

    FigXPCRemoteClientDisassociateObject();
    if (!*(a1 + 224))
    {
      FigStopMonitoringMediaServicesProcessDeath();
    }

    if (*(a1 + 56))
    {
      FigSemaphoreSignal();
    }

    if (*(a1 + 72))
    {
      FigSemaphoreSignal();
    }

    if (*(a1 + 88))
    {
      FigSemaphoreSignal();
    }

    if (*(a1 + 104))
    {
      FigSemaphoreSignal();
    }

    if (*(a1 + 128) && *(a1 + 120))
    {
      OUTLINED_FUNCTION_7_3();
      v4[1] = 0x40000000;
      v4[2] = __VTDecompressionSessionRemoteXPC_Invalidate_block_invoke;
      v4[3] = &__block_descriptor_tmp_6_1;
      v4[4] = a1;
      dispatch_sync(v2, v4);
    }
  }

  return FigXPCRelease();
}

uint64_t VTDecompressionSessionRemoteXPC_FinishDelayedTiles(uint64_t a1)
{
  v3 = v2;
  if (*(a1 + 24) || *(a1 + 25) || *(a1 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_15:
    v6 = v5;
    goto LABEL_8;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_15;
  }

  v5 = FigXPCRemoteClientSendSyncMessage();
  if (v5)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 25))
  {
    OUTLINED_FUNCTION_8_3();
    do
    {
      if (*(a1 + 28))
      {
        break;
      }

      if (FigSemaphoreWaitRelative() != v1)
      {
        break;
      }

      v3 *= 2;
    }

    while (!*(a1 + 25));
  }

  v6 = *(a1 + 112);
  *(a1 + 112) = 0;
LABEL_8:
  FigXPCRelease();
  return v6;
}

uint64_t VTDecompressionSessionRemoteXPC_SetMultiImageCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && !*(a1 + 192))
  {
    *(a1 + 192) = a2;
    *(a1 + 200) = a3;
    OUTLINED_FUNCTION_9_3();
    v3 = FigXPCCreateBasicMessage();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v4 = 0;
  }

  FigXPCRelease();
  return v4;
}

uint64_t dsrxpc_xpcClient_DeadConnectionCallback(uint64_t result)
{
  if (result)
  {
    if (*(result + 24))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      *(result + 24) = 1;

      return dsrxpc_handleServerSessionIsGone(result);
    }
  }

  return result;
}

uint64_t dsrxpc_xpcClient_MessageHandler(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294954394;
  }
}

void __dsrxpc_handleServerSessionIsGone_block_invoke(uint64_t a1)
{
  dispatch_group_wait(*(*(a1 + 32) + 120), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(*(*(a1 + 32) + 120));
  v3 = *(a1 + 32);
  if (v3)
  {
    while (*(v3 + 40))
    {
      FigSimpleMutexLock();
      v4 = *(v3 + 40);
      if (!v4 || CFArrayGetCount(v4) < 1)
      {
LABEL_12:
        FigSimpleMutexUnlock();
        break;
      }

      OUTLINED_FUNCTION_13_2();
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 40), v1);
        if (ValueAtIndex[5])
        {
          break;
        }

        OUTLINED_FUNCTION_12_2();
        if (v6)
        {
          goto LABEL_12;
        }
      }

      v7 = CFRetain(ValueAtIndex);
      FigSimpleMutexUnlock();
      if (!v7)
      {
        break;
      }

      dsrxpc_emitPendingFramesForOneSampleWithError(v3, v7, 0xFFFFCD91);
      CFRelease(v7);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  }

  dispatch_group_leave(*(*(a1 + 32) + 120));
  v8 = *(a1 + 32);
  if (v8)
  {

    CFRelease(v8);
  }
}

CFTypeRef dsrxpc_copyPendingFrameInfoFromPendingList(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 40))
  {
    return 0;
  }

  FigSimpleMutexLock();
  v5 = *(a1 + 40);
  if (v5 && CFArrayGetCount(v5) >= 1)
  {
    OUTLINED_FUNCTION_13_2();
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v2);
      if (ValueAtIndex[2] == a2)
      {
        break;
      }

      OUTLINED_FUNCTION_12_2();
      if (v7)
      {
        goto LABEL_9;
      }
    }

    v8 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 40))
  {
    return 0;
  }

  FigSimpleMutexLock();
  v5 = *(a1 + 40);
  if (!v5 || CFArrayGetCount(v5) < 1)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_13_2();
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v2);
    if (ValueAtIndex[2] == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_12_2();
    if (v7)
    {
      goto LABEL_12;
    }
  }

  v8 = ValueAtIndex[5];
  if (v8)
  {
    ValueAtIndex[5] = v8 - 1;
    v9 = 1;
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t dsrxpc_decrementPendingFrameInfoOutstandingSampleCount(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 40))
    {
      FigSimpleMutexLock();
      v4 = *(v2 + 40);
      if (v4)
      {
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v6 = Count;
          v7 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 40), v7);
            if (ValueAtIndex[2] == a2)
            {
              break;
            }

            if (v6 == ++v7)
            {
              goto LABEL_11;
            }
          }

          v9 = ValueAtIndex[4] - 1;
          ValueAtIndex[4] = v9;
          if (!v9)
          {
            CFArrayRemoveValueAtIndex(*(v2 + 40), v7);
          }
        }
      }

LABEL_11:

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

void dsrxpc_handleEmitMultiImage(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v8 = a3;
  v11 = a1[24];
  if (v11)
  {
    v17 = a1[25];
    v18 = a2[3];
    v28 = *a6;
    v29 = *(a6 + 2);
    v26 = *a7;
    v27 = *(a7 + 2);
    v19 = a4;
    v20 = a5;
LABEL_13:
    v11(v17, v18, v19, v20, v8, &v28, &v26);
    goto LABEL_15;
  }

  v12 = a2[7];
  if (v12)
  {
    v21 = *(v12 + 16);
    v28 = *a6;
    v29 = *(a6 + 2);
    v26 = *a7;
    v27 = *(a7 + 2);
    v21(v12, a4, a5, 0, a3, &v28, &v26);
    goto LABEL_15;
  }

  v11 = a1[22];
  if (v11)
  {
    if (a4)
    {
      v25 = 1;
    }

    else
    {
      v25 = a3 == 0;
    }

    if (v25)
    {
      v19 = a4;
    }

    else
    {
      v19 = 4294949597;
    }

    v17 = a1[23];
    v18 = a2[3];
    v28 = *MEMORY[0x1E6960C70];
    v29 = *(MEMORY[0x1E6960C70] + 16);
    v26 = v28;
    v27 = v29;
    v20 = a5;
    v8 = 0;
    goto LABEL_13;
  }

  v13 = a2[6];
  if (v13)
  {
    if (a4)
    {
      v14 = 1;
    }

    else
    {
      v14 = a3 == 0;
    }

    if (v14)
    {
      v15 = a4;
    }

    else
    {
      v15 = 4294949597;
    }

    v16 = *(v13 + 16);
    v28 = *MEMORY[0x1E6960C70];
    v29 = *(MEMORY[0x1E6960C70] + 16);
    v26 = v28;
    v27 = v29;
    v16(v13, v15, a5, 0, &v28, &v26, a7);
  }

LABEL_15:
  dsrxpc_decrementPendingFrameInfoOutstandingSampleCount(a1, a2[2]);
  v22 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v22)
  {
    v23 = v22;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt64();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v23);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

uint64_t dsrxpc_eventLink_MessageHandler(int a1, int a2, CMBlockBufferRef theBuffer)
{
  lengthAtOffsetOut[0] = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    return DataPointer;
  }

  v4 = dataPointerOut;
  if ((dataPointerOut & 7) != 0)
  {
    return 4294949291;
  }

  v5 = lengthAtOffsetOut[0];
  if (lengthAtOffsetOut[0] <= 0xA7)
  {
    return 4294949290;
  }

  v6 = FigXPCRemoteClientLookupAndRetainAssociatedObject();
  if (v6)
  {
    return v6;
  }

  v7 = *(v4 + 2);
  if (v7 == 1701669236)
  {
    v28 = MEMORY[0xE0];
    v29 = MEMORY[0xE8];
    v30 = *(v4 + 3);
    v31 = *(v4 + 4);
    v32 = *(v4 + 5);
    v33 = dsrxpc_copyPendingFrameInfoFromPendingList(0, v30);
    if (v33)
    {
      v34 = v33;
      dispatch_group_enter(MEMORY[0x78]);
      if (dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(0, v34[2]))
      {
        if (v29)
        {
          v29(v28, v34[3], v34[12], v34[13], v34[11], v34[14], v31, v32);
        }

        dsrxpc_decrementPendingFrameInfoOutstandingSampleCount(0, v30);
      }

      dispatch_group_leave(MEMORY[0x78]);
      CFRelease(v34);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v52);
  }

  v8 = v5 - 168;
  if (v7 != 1701672297)
  {
    if (v7 != 1701672038)
    {
      return 4294954394;
    }

    v60 = 0;
    v61 = 0;
    if (*(v4 + 10) > v8)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      v35 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v52);
    }

    else
    {
      v35 = dsrxpc_copyPixelBufferRecipient(&v60);
      if (!v35)
      {
        if (!*(v4 + 10))
        {
          DataPointer = 0;
          goto LABEL_52;
        }

        v35 = FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData();
      }
    }

    DataPointer = v35;
LABEL_52:
    v36 = dsrxpc_copyPendingFrameInfoFromPendingList(0, *(v4 + 3));
    if (v36)
    {
      dispatch_group_enter(MEMORY[0x78]);
      if (dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(0, v36[2]))
      {
        if (DataPointer && v61)
        {
          CFRelease(v61);
          v61 = 0;
        }

        v37 = OUTLINED_FUNCTION_6_5();
        dsrxpc_handleEmitFrame(v37, v36, v38, v39, v40, v41, v42);
      }

      dispatch_group_leave(MEMORY[0x78]);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v52);
    }

    if (v61)
    {
      CFRelease(v61);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    v43 = v60;
    if (!v60)
    {
      return DataPointer;
    }

LABEL_94:
    CFRelease(v43);
    return DataPointer;
  }

  v10 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  value = 0;
  v58 = 0;
  v56 = 0;
  v11 = *(v4 + 4);
  v12 = *(v4 + 10);
  if (v12 > 5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v52);
    goto LABEL_49;
  }

  if (v12 < 1)
  {
    DataPointer = 0;
LABEL_49:
    Mutable = 0;
    v22 = 0;
    goto LABEL_69;
  }

  v53 = *(v4 + 4);
  v51 = 0;
  v13 = 0;
  v14 = (v4 + 128);
  v15 = (v4 + 128);
  v16 = *(v4 + 10);
  do
  {
    v17 = *(v15 - 5) + v13;
    v18 = *v15++;
    v13 = v17 + v18;
    --v16;
  }

  while (v16);
  if (v13 > v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 0, v52);
    goto LABEL_102;
  }

  if (v53)
  {
    DataPointer = 0;
LABEL_66:
    Mutable = 0;
    goto LABEL_67;
  }

  v19 = dsrxpc_copyPixelBufferRecipient(&v58);
  if (v19)
  {
LABEL_102:
    DataPointer = v19;
    goto LABEL_66;
  }

  v20 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v22 = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
    if (v22)
    {
      v23 = FigXPCRemoteClientCopyMemoryRecipient();
      if (!v23)
      {
        v24 = v4 + 168;
        while (1)
        {
          v23 = FigInMemoryDeserializerCopyCFData();
          if (v23)
          {
            break;
          }

          v25 = &v24[*(v14 - 5)];
          v23 = FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData();
          if (v23)
          {
            break;
          }

          v26 = *v14;
          v27 = v61;
          if (v61 && v60)
          {
            v23 = MEMORY[0x193AE2F20]();
            if (v23)
            {
              break;
            }

            CFArrayAppendValue(Mutable, value);
            CFArrayAppendValue(v22, v60);
            v27 = v61;
          }

          if (v27)
          {
            CFRelease(v27);
            v61 = 0;
          }

          if (v60)
          {
            CFRelease(v60);
            v60 = 0;
          }

          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          v24 = &v25[v26];
          ++v14;
          if (!--v12)
          {
            v23 = MEMORY[0x193AE2F70](v20, Mutable, v22, &v59);
            break;
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 0, v52);
    }

    DataPointer = v23;
    goto LABEL_68;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 0, v52);
LABEL_67:
  v22 = 0;
LABEL_68:
  v10 = v51;
  v11 = v53;
LABEL_69:
  v44 = dsrxpc_copyPendingFrameInfoFromPendingList(v10, *(v4 + 3));
  if (v44)
  {
    dispatch_group_enter(*(v10 + 120));
    if (dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(v10, v44[2]))
    {
      if (DataPointer)
      {
        if (v59)
        {
          CFRelease(v59);
          v59 = 0;
        }

        v11 = 4294954385;
      }

      v45 = OUTLINED_FUNCTION_6_5();
      dsrxpc_handleEmitMultiImage(v45, v44, v46, v11, v47, v48, v49);
    }

    dispatch_group_leave(*(v10 + 120));
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v52);
  }

  if (v61)
  {
    CFRelease(v61);
    v61 = 0;
  }

  if (v60)
  {
    CFRelease(v60);
    v60 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (value)
  {
    CFRelease(value);
  }

  v43 = v56;
  if (v56)
  {
    goto LABEL_94;
  }

  return DataPointer;
}

uint64_t VTDecompressionSessionRemoteXPC_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void dsrxpc_CreateNewSession_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);

  CFRelease(a1);
}

uint64_t dsrxpc_CreateNewSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dsrxpc_CreateNewSession_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dsrxpc_DecodeFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dsrxpc_DecodeFrameCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dsrxpc_DecodeFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeTile_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeTile_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeTile_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeTile_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySerializableProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_WaitForAsynchronousFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dsrxpc_handleServerSessionIsGone_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dsrxpc_handleServerSessionIsGone_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t dsrxpc_handleServerSessionIsGone_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

const char *ParavirtualizedVideoDecoder_CreateInstanceWithSpecification(unsigned int a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, CFTypeRef *a5)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_5_6();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_5_6();
  fig_note_initialize_category_with_default_work_cf();
  VTVideoDecoderGetClassID();
  if (!CMDerivedObjectCreate())
  {
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
  }

  OUTLINED_FUNCTION_7_4();
  v7 = CFUUIDCreateString(v6, 0);
  if (dword_1EAD32140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_11_3();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(v7);
  if (&gParavirtualizedVideoDecoder)
  {
    CFRelease(&gParavirtualizedVideoDecoder);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return "";
}

uint64_t ParavirtualizedVideoDecoder_Invalidate(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v8 = 0;
  cf = 0;
  MessageAndByteStream = VTParavirtualizationCreateMessageAndByteStream(0x64696E76u, 1u, (DerivedStorage + 32), 0, &cf, 0);
  if (MessageAndByteStream || (OUTLINED_FUNCTION_3_10(&kVTParavirtualizationDefaultReplyTimeout), MessageAndByteStream = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v3, v11, &v8), MessageAndByteStream))
  {
    v5 = MessageAndByteStream;
  }

  else
  {
    VTParavirtualizationMessageGetSInt32();
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v10;
    }
  }

  os_unfair_lock_lock((DerivedStorage + 16));
  *DerivedStorage = 0;
  *(DerivedStorage + 8) = 0;
  os_unfair_lock_unlock((DerivedStorage + 16));
  if (v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_11_3();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

BOOL ParavirtualizedVideoDecoder_CanAcceptFormatDescription(uint64_t a1, uint64_t a2)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = 0;
  cf = 0;
  v6 = 0;
  if (!VTParavirtualizationCreateMessageAndByteStream(0x6463616Eu, 1u, (DerivedStorage + 32), 0, &v9, &v8) && !VTParavirtualizationMessageAppendCMFormatDescription(v8, 0x2C666473u))
  {
    v4 = kVTParavirtualizationDefaultReplyTimeout;
    v5 = 0;
    if (!VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v9, &v4, &cf))
    {
      VTParavirtualizationMessageGetSInt32();
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6 != 0;
}

uint64_t ParavirtualizedVideoDecoder_DecodeFrameWithOptions(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3, int a4, uint64_t a5, uint64_t a6)
{
  HIDWORD(v109) = a4;
  v158 = *MEMORY[0x1E69E9840];
  v101 = a1;
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0;
  OUTLINED_FUNCTION_3_10(&kVTParavirtualizationDefaultReplyTimeout);
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  HIDWORD(v102) = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v11 = CMSampleBufferGetFormatDescription(a3);
  HIDWORD(v98) = CMFormatDescriptionGetMediaType(v11);
  MediaSubType = CMFormatDescriptionGetMediaSubType(v11);
  v130 = 0;
  Decryptor = FigSampleBufferGetDecryptor();
  *bytes = 0;
  cf = 0;
  timingArrayEntriesNeededOut = 0;
  value = 0;
  sbuf = 0;
  sizeArrayEntriesNeededOut = 0;
  v14 = MediaSubType == 1667331683 || MediaSubType == 2053207651;
  if (!v14 && MediaSubType != 1685220713)
  {
    MediaSubType = 0;
    v18 = 0;
LABEL_11:
    MutableCopy = 0;
    v11 = 0;
    v6 = 0;
    v19 = 0;
LABEL_12:
    v20 = 0;
    goto LABEL_34;
  }

  MutableCopy = Decryptor;
  if (dword_1EAD32140)
  {
    v123 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_11_3();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CMSampleBufferGetNumSamples(a3) != 1)
  {
    OUTLINED_FUNCTION_0_12();
    v19 = 0;
    v20 = 0;
    v18 = 4294954394;
    goto LABEL_34;
  }

  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a3, 0, 0, &timingArrayEntriesNeededOut);
  if (SampleTimingInfoArray)
  {
    v18 = SampleTimingInfoArray;
    MediaSubType = 0;
    goto LABEL_11;
  }

  if (timingArrayEntriesNeededOut < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = malloc_type_calloc(timingArrayEntriesNeededOut, 0x48uLL, 0x1000040FF89C88EuLL);
    if (!v19)
    {
      OUTLINED_FUNCTION_8_4();
      SampleSizeArray = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleBufferOut, v89, v92);
      goto LABEL_136;
    }

    SampleSizeArray = CMSampleBufferGetSampleTimingInfoArray(a3, timingArrayEntriesNeededOut, v19, 0);
    if (SampleSizeArray)
    {
      goto LABEL_136;
    }
  }

  SampleSizeArray = CMSampleBufferGetSampleSizeArray(a3, 0, 0, &sizeArrayEntriesNeededOut);
  if (SampleSizeArray)
  {
LABEL_136:
    v18 = SampleSizeArray;
    OUTLINED_FUNCTION_0_12();
    goto LABEL_12;
  }

  v20 = malloc_type_calloc(sizeArrayEntriesNeededOut, 8uLL, 0x100004000313F17uLL);
  if (!v20)
  {
    OUTLINED_FUNCTION_8_4();
    v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleBufferOut, v89, v92);
    goto LABEL_134;
  }

  v23 = CMSampleBufferGetSampleSizeArray(a3, sizeArrayEntriesNeededOut, v20, 0);
  if (v23)
  {
LABEL_134:
    v18 = v23;
    OUTLINED_FUNCTION_0_12();
    goto LABEL_34;
  }

  v24 = *(CMBaseObjectGetVTable() + 16);
  if (*v24 < 8uLL || (v25 = v24[30]) == 0)
  {
    OUTLINED_FUNCTION_0_12();
    v18 = 4294954514;
    goto LABEL_34;
  }

  v92 = a2;
  v26 = v25(MutableCopy, a3, 0, &cf, bytes, &value);
  if (v26)
  {
    v18 = v26;
    OUTLINED_FUNCTION_0_12();
    goto LABEL_32;
  }

  v27 = *MEMORY[0x1E695E480];
  CMFormatDescriptionGetExtensions(v11);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  FigCFDictionaryGetValue();
  v11 = FigCFDictionaryCreateMutableCopy();
  v6 = CFDataCreate(v27, bytes, 8);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v28 = FigDerivedFormatDescriptionCreate();
  if (v28)
  {
    v18 = v28;
    MediaSubType = 0;
LABEL_32:
    a2 = v92;
    goto LABEL_34;
  }

  v29 = CMSampleBufferCreateReady(v27, cf, v130, 1, timingArrayEntriesNeededOut, v19, sizeArrayEntriesNeededOut, v20, &sbuf);
  v30 = sbuf;
  if (v29)
  {
    v18 = v29;
  }

  else
  {
    CMPropagateAttachments(a3, sbuf);
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    v32 = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    if (v32)
    {
      v33 = v32;
      if (SampleAttachmentsArray)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
        v35 = CFArrayGetValueAtIndex(v33, 0);
        CFDictionaryApplyFunction(ValueAtIndex, paravirtualizedVideoDecoder_dictionarySetValue, v35);
      }

      v36 = CFArrayGetValueAtIndex(v33, 0);
      CFDictionarySetValue(v36, *MEMORY[0x1E69603F8], value);
      FigSampleBufferGetDecryptor();
      FigSampleBufferSetDecryptor();
      v18 = 0;
      MediaSubType = sbuf;
      sbuf = 0;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_8_4();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleBufferOut, v89, v92);
    v30 = sbuf;
  }

  a2 = v92;
  if (v30)
  {
    CFRelease(v30);
  }

  MediaSubType = 0;
LABEL_34:
  free(v19);
  free(v20);
  if (value)
  {
    CFRelease(value);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v44 = v130;
  v45 = HIDWORD(v109);
  v46 = a5;
  if (v130)
  {
    CFRelease(v130);
  }

  if (v18)
  {
    goto LABEL_128;
  }

  appended = OUTLINED_FUNCTION_6_6(v44, v37, v38, v39, v40, v41, v42, v43, sampleBufferOut, v89, v92, v95, v98, v101, v102, a6, a5, v109, v110, v112, v113, v114, 0, v117, v118, v119, v120, v121);
  if (appended)
  {
    goto LABEL_127;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_127;
  }

  appended = VTParavirtualizationMessageAppendUInt32(v120, 744777324, v45);
  if (appended)
  {
    goto LABEL_127;
  }

  if (v46)
  {
    if (*(DerivedStorage + 48) >= 4u)
    {
      appended = VTParavirtualizationMessageAppendCFDictionary(v120, 0x2C666F70u, v46);
      if (appended)
      {
        goto LABEL_127;
      }
    }
  }

  if (MediaSubType)
  {
    a3 = MediaSubType;
  }

  appended = VTParavirtualizationMessageAppendCMSampleBufferWithLimitAndCopyRemainingData(v120, 745759334, *(DerivedStorage + 48), 0x200000uLL, a3, (DerivedStorage + 96), &v118);
  if (appended)
  {
LABEL_127:
    v18 = appended;
LABEL_128:
    v105 = MediaSubType;
    v100 = 0;
    goto LABEL_77;
  }

  if (v118)
  {
    do
    {
      appended = VTParavirtualizationMessageChangeMessageFlags(v121, 16, 17);
      if (appended)
      {
        goto LABEL_127;
      }

      appended = VTParavirtualizationGuestSendMessageToHostAsync(v121);
      if (appended)
      {
        goto LABEL_127;
      }

      if (v121)
      {
        CFRelease(v121);
        v121 = 0;
      }

      v55 = v120;
      if (v120)
      {
        CFRelease(v120);
        v120 = 0;
      }

      appended = OUTLINED_FUNCTION_6_6(v55, v48, v49, v50, v51, v52, v53, v54, sampleBufferOuta, v90, v93, v96, v99, v101, v102, v104, v107, v109, *v111, *&v111[8], *&v111[16], v115, v116, v117, v118, v119, v120, v121);
      if (appended)
      {
        goto LABEL_127;
      }

      appended = VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(v120, 0x2C736266u, 0x200000uLL, v118, &v117);
      if (appended)
      {
        goto LABEL_127;
      }

      if (v118)
      {
        CFRelease(v118);
      }

      v56 = v117;
      v117 = 0;
      v118 = v56;
    }

    while (v56);
  }

  if ((v45 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_10(&kVTParavirtualizationCodecOperationReplyTimeout);
  }

  time = *v111;
  v57 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v121, &time.value, &v119);
  if (v57)
  {
    v85 = v57;
    v18 = 0;
LABEL_111:
    os_unfair_lock_lock((DerivedStorage + 16));
    if (*DerivedStorage)
    {
      VTDecoderSessionEmitDecodedFrame(*DerivedStorage, a2, v85, 0, 0);
    }

    os_unfair_lock_unlock((DerivedStorage + 16));
    goto LABEL_114;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v58 || (VTParavirtualizationMessageGetUInt32(), v58))
  {
    v18 = v58;
  }

  else
  {
    v18 = HIDWORD(v116);
    if (v104)
    {
      *v104 = v116;
    }

    if (!HIDWORD(v116))
    {
      goto LABEL_114;
    }
  }

  v105 = MediaSubType;
  v100 = 1;
LABEL_77:
  os_unfair_lock_lock((DerivedStorage + 16));
  v59 = *DerivedStorage;
  v60 = FigCFCopyCompactDescription();
  if (v59 && (v61 = v59[1]) != 0)
  {
    v108 = *v61;
  }

  else
  {
    v108 = 0;
  }

  os_unfair_lock_unlock((DerivedStorage + 16));
  LODWORD(v130) = 0;
  LOBYTE(cf) = 0;
  v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v63 = v130;
  v64 = cf;
  if (os_log_type_enabled(v62, cf))
  {
    v65 = v63;
  }

  else
  {
    v65 = v63 & 0xFFFFFFFE;
  }

  if (v65)
  {
    if (v102 < 0)
    {
      OUTLINED_FUNCTION_13_3();
    }

    else
    {
      OUTLINED_FUNCTION_2_12(MEMORY[0x1E69E9830]);
    }

    OUTLINED_FUNCTION_3_6();
    if (!v14)
    {
      v66 = HIBYTE(HIDWORD(v102));
    }

    v94 = v66;
    v68 = v67;
    if (v67 > 0x7Fu)
    {
      OUTLINED_FUNCTION_13_3();
    }

    else
    {
      OUTLINED_FUNCTION_2_12(MEMORY[0x1E69E9830]);
    }

    OUTLINED_FUNCTION_3_6();
    if (!v14)
    {
      v69 = v68;
    }

    HIDWORD(v91) = v69;
    v71 = v70;
    v97 = v60;
    if (v70 > 0x7Fu)
    {
      OUTLINED_FUNCTION_13_3();
    }

    else
    {
      OUTLINED_FUNCTION_2_12(MEMORY[0x1E69E9830]);
    }

    OUTLINED_FUNCTION_3_6();
    if (v14)
    {
      v74 = v72;
    }

    else
    {
      v74 = v71;
    }

    v75 = v73;
    if (v73 > 0x7Fu)
    {
      OUTLINED_FUNCTION_13_3();
    }

    else
    {
      OUTLINED_FUNCTION_2_12(MEMORY[0x1E69E9830]);
    }

    OUTLINED_FUNCTION_3_6();
    if (v14)
    {
      v75 = v76;
    }

    CMSampleBufferGetPresentationTimeStamp(&time, a3);
    Seconds = CMTimeGetSeconds(&time);
    SampleSize = CMSampleBufferGetSampleSize(a3, 0);
    v131 = 136318466;
    v132 = "ParavirtualizedVideoDecoder_DecodeFrameWithOptions";
    v133 = 2114;
    v134 = v101;
    v135 = 2048;
    v136 = v59;
    v137[0] = 2114;
    *&v137[1] = v108;
    v137[5] = 1024;
    v138 = v18;
    v139 = 2048;
    v140 = a2;
    v141 = 1024;
    v142 = v94;
    v143 = 1024;
    v144 = HIDWORD(v91);
    v145 = 1024;
    v146 = v74;
    v147 = 1024;
    v148 = v75;
    v149 = 2048;
    v150 = Seconds;
    v151 = 2048;
    v152 = SampleSize;
    v153 = 1024;
    v154 = HIDWORD(v109);
    v155 = 2114;
    v60 = v97;
    v156 = v97;
    LODWORD(v91) = 118;
    OUTLINED_FUNCTION_10_4();
    _os_log_send_and_compose_impl(v79, v80, v81, v82, v83, v62, v64, v84, &v131, v91);
  }

  OUTLINED_FUNCTION_11_3();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  MediaSubType = v105;
  if (v60)
  {
    CFRelease(v60);
  }

  v85 = v18;
  if ((v100 & 1) == 0)
  {
    goto LABEL_111;
  }

LABEL_114:
  if (MediaSubType)
  {
    CFRelease(MediaSubType);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v118)
  {
    CFRelease(v118);
  }

  if (v117)
  {
    CFRelease(v117);
  }

  return v18;
}

uint64_t paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

BOOL ParavirtualizedVideoDecoder_DecodeTile_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t VTParavirtualizationHostCopyMotionEstimationProcessorListReply(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  v16 = 0;
  v4 = OUTLINED_FUNCTION_3_11();
  Mutable = CFArrayCreateMutable(v4, v5, v6);
  v14 = 0;
  theArray = 0;
  v13 = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  if (v8 || (vtPopulateMotionEstimationRegistry(), v8 = FigRegistryCopyFilteredItemList(), v8) || (v8 = VTParavirtualizationCreateReplyAndByteStream(a1, 4u, &v14, &v13), v8) || (v8 = VTParavirtualizationMessageAppendCFPropertyList(v13, 0x2C6D6570u, Mutable), v8))
  {
    appended = v8;
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    appended = VTParavirtualizationMessageAppendUInt32(v9, v10, 5u);
    if (!appended)
    {
      *a2 = v14;
      v14 = 0;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return appended;
}

void vtPopulateMotionEstimationRegistry()
{
  MEMORY[0x193AE3010](&unk_1ED6D3BF8, vtCreateMotionEstimationProcessorRegistry);
  MEMORY[0x193AE3010](&unk_1ED6D3C08, vtInitializeMotionEstimationProcessorRegistry);
  if (qword_1EAD31D88 != -1)
  {
    dispatch_once(&qword_1EAD31D88, &__block_literal_global_13);
  }

  if (VTParavirtualizationGuestInstallHandlerForUUID(&xmmword_1EAD31D98, &__block_literal_global_31_0, 0))
  {
    return;
  }

  v35 = 0;
  v33 = 0;
  v34 = 0;
  cf = 0;
  v32 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D657073u, 1u, &xmmword_1EAD31D98, 0, &v34, &v33);
  if (appended)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_6_2();
  appended = VTParavirtualizationMessageAppendUInt32(v1, v2, 5u);
  if (appended)
  {
    goto LABEL_40;
  }

  v29 = kVTParavirtualizationDefaultReplyTimeout;
  v30 = 0;
  appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v34, &v29, &v32);
  if (appended)
  {
    goto LABEL_40;
  }

  appended = VTParavirtualizationMessageCopyCFPropertyList(v32, 745366896, &cf);
  if (appended)
  {
    goto LABEL_40;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    OUTLINED_FUNCTION_11_1();
    appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v26, v27);
LABEL_40:
    v6 = appended;
    v4 = 0;
    goto LABEL_11;
  }

  v4 = cf;
  cf = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  v6 = v5;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v6)
  {
LABEL_36:
    if (!v4)
    {
      return;
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }

    Count = CFArrayGetCount(v4);
    v28 = Count - 1;
    if (Count >= 1)
    {
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
        if (!ValueAtIndex)
        {
          break;
        }

        v10 = ValueAtIndex;
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 != CFDictionaryGetTypeID())
        {
          break;
        }

        v12 = OUTLINED_FUNCTION_3_11();
        MutableCopy = CFDictionaryCreateMutableCopy(v12, v13, v10);
        Value = CFDictionaryGetValue(v10, @"CMClassImplementationName");
        v15 = OUTLINED_FUNCTION_3_11();
        v17 = CFStringCreateWithFormat(v15, v16, @"paravirtualized:%@", Value);
        FigCFDictionarySetValue();
        v24 = CFDictionaryGetValue(v10, @"CMClassImplementationID");
        v18 = OUTLINED_FUNCTION_3_11();
        v20 = CFStringCreateWithFormat(v18, v19, @"paravirtualized:%@");
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        CFDictionaryGetValue(v10, @"CMMatchingInfo");
        v21 = FigCFDictionaryCreateMutableCopy();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        FigCFDictionarySetInt32();
        v22 = FigRegistryAddItem();
        if (v21)
        {
          CFRelease(v21);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (!v22 && v28 != v8++)
        {
          continue;
        }

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_11_1();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v26, @"VTIsParavirtualized");
    }
  }

  CFRelease(v4);
}

uint64_t vtFilterRegistryItemForHardwareAcceleratedMotionEstimationProcessorsOnly(uint64_t a1, uint64_t a2)
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

intptr_t vtMotionEstimationSessionCompleteFramesInternal(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    OUTLINED_FUNCTION_0_13();
    if (v2 == qword_1EAD31D80)
    {
      if (*(a1 + 16))
      {
        return 0;
      }

      v3 = *(a1 + 160);
      if (v3)
      {

        return VTCompressionSessionRemote_CompleteMotionVectors(v3);
      }

      v5 = *(a1 + 48);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v6)
        {
          return 4294954514;
        }

        result = v6(v5);
        if (result)
        {
          return result;
        }

        if (*(a1 + 128))
        {
          v7 = 5;
          do
          {
            v8 = *(a1 + 128);
            v9 = dispatch_time(0, 1000000000 * v7);
            result = dispatch_group_wait(v8, v9);
            v7 *= 2;
          }

          while (result);
          return result;
        }

        return 0;
      }
    }
  }

  OUTLINED_FUNCTION_3_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t vtMotionEstimationSessionGetProcessorCreateInstanceFunction(uint64_t a1)
{
  FigCFDictionaryGetValue();
  vtPopulateMotionEstimationRegistry();
  if (_MergedGlobals_56)
  {
    result = FigRegistryCopyFilteredItemList();
    if (!result)
    {
      OUTLINED_FUNCTION_3_0();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t VTMotionEstimationSessionCreate(uint64_t a1, const void *a2, int a3, uint64_t a4, uint64_t *a5)
{
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v10 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  cf = 0;
  if (!a5)
  {
    OUTLINED_FUNCTION_2_10();
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0, v35);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_13();
  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (!Instance)
  {
LABEL_45:
    v20 = 4294954392;
    goto LABEL_19;
  }

  if (a2)
  {
    v15 = CFGetTypeID(a2);
    if (v15 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetBooleanIfPresent();
    }

    v16 = CFGetTypeID(a2);
    Instance = CFDictionaryGetTypeID();
    if (v16 == Instance)
    {
      Instance = FigCFDictionaryGetBooleanIfPresent();
    }
  }

  if (qword_1EAD31D90 != -1)
  {
    dispatch_once(&qword_1EAD31D90, &__block_literal_global_49);
  }

  if (_MergedGlobals_0)
  {
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode(Instance, v13))
    {
      IsVideocodecd = FigServer_IsVideocodecd();
      if (IsVideocodecd)
      {
        goto LABEL_26;
      }
    }

    else
    {
      IsVideocodecd = FigServer_IsServerProcess();
      if (IsVideocodecd)
      {
        goto LABEL_26;
      }
    }

    if (!VTShouldRunVideoEncodersInProcess(IsVideocodecd, v18))
    {
      v19 = VTMotionEstimationSessionRemote_Create(v14, a1, a3, a4, MutableCopy, (v14 + 160));
      if (!v19)
      {
LABEL_17:
        v20 = 0;
        *a5 = v14;
LABEL_18:
        v14 = 0;
        goto LABEL_19;
      }

      goto LABEL_48;
    }
  }

LABEL_26:
  *(v14 + 40) = 16;
  *(v14 + 16) = 0;
  *(v14 + 32) = a3;
  *(v14 + 36) = a4;
  *(v14 + 46) = 0;
  *(v14 + 44) = 0;
  if (MutableCopy)
  {
    v22 = CFGetTypeID(MutableCopy);
    if (v22 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        v24 = Value;
        v25 = CFGetTypeID(Value);
        if (v25 == CFStringGetTypeID())
        {
          *(v14 + 24) = CFStringCreateCopy(v10, v24);
        }
      }

      FigCFDictionaryGetBooleanIfPresent();
      CFDictionaryRemoveValue(MutableCopy, @"AllowClientProcessEstimate");
    }
  }

  InstanceFunction = vtMotionEstimationSessionGetProcessorCreateInstanceFunction(MutableCopy);
  if (InstanceFunction)
  {
    v20 = InstanceFunction;
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  if (!v38)
  {
    OUTLINED_FUNCTION_11_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_52:
    v20 = 0;
    goto LABEL_19;
  }

  v27 = v38(a1, MutableCopy, v14 + 48);
  if (!v27)
  {
    v28 = *(v14 + 48);
    if (!v28)
    {
      OUTLINED_FUNCTION_2_10();
      v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_48:
      v20 = v19;
      goto LABEL_19;
    }

    if (!*(v14 + 45))
    {
      goto LABEL_40;
    }

    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v29)
    {
      v20 = 4294954514;
      goto LABEL_19;
    }

    v19 = v29(v28, @"IncludeMotionConfidence", *MEMORY[0x1E695E498], &v36);
    if (v19)
    {
      goto LABEL_48;
    }

    if (FigCFEqual())
    {
LABEL_40:
      *(v14 + 144) = FigSimpleMutexCreate();
      v30 = *(v14 + 48);
      v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v31 && !v31(v30, a3 | (a4 << 32), v14 + 64) && *(v14 + 72) && *(v14 + 104))
      {
        v32 = dispatch_group_create();
        *(v14 + 128) = v32;
        if (!v32)
        {
          goto LABEL_45;
        }

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_2_10();
      v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_52;
  }

  v20 = v27;
  OUTLINED_FUNCTION_11_1();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v20;
}

void vtInitializeMotionEstimationProcessorRegistry()
{
  if (access("/System/Library/Video/Plug-Ins/", 4) != -1)
  {
    v0 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/Video/Plug-Ins/", kCFURLPOSIXPathStyle, 1u);
    if (v0)
    {
      v1 = v0;
      if (!FigRegistryAddSearchPathWithOptions())
      {
        v2 = OUTLINED_FUNCTION_6_7();
        CFDictionarySetValue(v2, @"CMClassID", @"com.apple.videotoolbox.motionestimationprocessor");
        CFDictionarySetValue(v2, @"CMClassImplementationName", @"VTTestMotionEstimationProcessor");
        CFDictionarySetValue(v2, @"CMFactoryFunction", @"VTTestMotionEstimationProcessor_CreateInstance");
        FigCFDictionarySetInt32();
        v3 = OUTLINED_FUNCTION_6_7();
        CFDictionarySetValue(v3, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4C0]);
        CFDictionarySetValue(v3, @"TestProcessor", *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(v2, @"CMMatchingInfo", v3);
        FigRegistryAddItem();
        if (v2)
        {
          CFRelease(v2);
        }
      }

      CFRelease(v1);
    }
  }
}

uint64_t __vtLoadParavirtualizedMotionEstimationProcessors_block_invoke_2(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v6 = xmmword_1EAD31D98;
  v3 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], xmmword_1EAD31D98);
  v5 = 0;
  if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v5, 0, 0))
  {
    if (v5 == 1383295341)
    {
      vtUnregisterParavirtualizedMotionEstimationProcessors();
      if (!v3)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v5 == 1115252001 && !vtUnregisterParavirtualizedMotionEstimationProcessors())
    {
      VTParavirtualizationGuestRemoveHandlerForUUID(&v6);
    }
  }

  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }

  return 0;
}

uint64_t vtFilterRegistryItemForParavirtualizedMotionEstimationProcessorsOnly(uint64_t a1, uint64_t a2)
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t vtMotionEstimationSessionCopyDebugDesc(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    OUTLINED_FUNCTION_0_13();
    if (v2 == qword_1EAD31D80)
    {
      v3 = CFGetAllocator(a1);
      CFStringAppendFormat(0, 0, @"<VTMotionEstimationSession %p [%p]>{\n", a1, v3);
      v4 = CFGetAllocator(a1);
      CFStringAppendFormat(0, 0, @"}", a1, v4);
    }
  }

  return 0;
}

BOOL vtMotionEstimationSessionRegistryFilter(uint64_t a1, uint64_t a2)
{
  FigCFDictionaryGetValue();
  v5 = 0;
  if (!FigRegistryItemCopyDescription() && vtDoesKeyMatch(a1, 0, @"CMClassImplementationName", 0))
  {
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      v4 = Value;
      if (vtDoesKeyMatch(a1, Value, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4D0]))
      {
        if (FigCFEqual())
        {
          return 1;
        }

        CFDictionaryGetValue(v4, @"TestProcessor");
        if (!FigCFEqual())
        {
          return 1;
        }
      }
    }
  }

  return v5;
}

uint64_t VTMotionEstimationSessionCompleteFrames_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCompleteFrames_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCompleteFrames_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationProcessorSelectAndCreateInstance_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySourcePixelBufferAttributes_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySourcePixelBufferAttributes_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySourcePixelBufferAttributes_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationProcessorSessionEmitMotionVectors_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void vtMotionEstimationSessionFinalize_cold_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(v2);
    }
  }

  vtMotionEstimationSessionCompleteFramesInternal(a1);
  VTMotionEstimationSessionInvalidate(a1, v4, v5, v6, v7, v8, v9, v10);
  v11 = a1[3];
  if (v11)
  {
    CFRelease(v11);
    a1[3] = 0;
  }

  v12 = a1[6];
  if (v12)
  {
    CFRelease(v12);
    a1[6] = 0;
  }

  v13 = a1[8];
  if (v13)
  {
    CFRelease(v13);
    a1[8] = 0;
  }

  v14 = a1[9];
  if (v14)
  {
    CFRelease(v14);
    a1[9] = 0;
  }

  v15 = a1[11];
  if (v15)
  {
    CFRelease(v15);
    a1[11] = 0;
  }

  v16 = a1[12];
  if (v16)
  {
    CFRelease(v16);
    a1[12] = 0;
  }

  v17 = a1[13];
  if (v17)
  {
    CFRelease(v17);
    a1[13] = 0;
  }

  v18 = a1[15];
  if (v18)
  {
    CFRelease(v18);
    a1[15] = 0;
  }

  v19 = a1[16];
  if (v19)
  {
    dispatch_release(v19);
    a1[16] = 0;
  }

  v20 = a1[20];
  if (v20)
  {
    CFRelease(v20);
    a1[20] = 0;
  }

  if (a1[18])
  {
    FigSimpleMutexDestroy();
  }

  bzero(a1 + 2, 0xA0uLL);
}

uint64_t MuxedAlphaDecoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    v8 = *(DerivedStorage + 24);
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    *a4 = v9;
  }

  else
  {
    v10 = *(DerivedStorage + 40);
    if (v10)
    {

      return VTSessionCopyProperty(v10, a2, a3, a4);
    }

    else
    {
      return 4294954393;
    }
  }

  return result;
}

uint64_t MuxedAlphaDecoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  v4 = v3;
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    if (CFEqual(a2, @"RequestedMVHEVCVideoLayerIDs"))
    {
      v11 = _os_feature_enabled_impl();
      if ((v11 & 1) == 0 && !VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults(v11, v12))
      {
        emitter = fig_log_get_emitter();
        v17 = v3;
        v18 = emitter;
        v19 = 4294954514;
        v20 = 368;
        goto LABEL_24;
      }

      if (!FigVideoFormatDescriptionContainsStereoMultiviewVideo())
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
      }

      v4 = *(DerivedStorage + 56);
      *(DerivedStorage + 56) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      v13 = *(DerivedStorage + 40);
      if (v13 && *(DerivedStorage + 72))
      {
        VTSessionSetProperty(v13, a2, a3);
        OUTLINED_FUNCTION_6_8();
        *(DerivedStorage + 136) = 1;
        return v4;
      }
    }

    else
    {
      v14 = *(DerivedStorage + 40);
      if (v14 && *(DerivedStorage + 72))
      {
        VTSessionSetProperty(v14, a2, a3);
        OUTLINED_FUNCTION_6_8();
        return v4;
      }
    }

    return 4294954393;
  }

  if (a3)
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFDictionaryGetTypeID())
    {
      v9 = *(DerivedStorage + 24);
      *(DerivedStorage + 24) = a3;
      CFRetain(a3);
      if (v9)
      {
        CFRelease(v9);
      }

      return 0;
    }
  }

  v16 = fig_log_get_emitter();
  v17 = v3;
  v18 = v16;
  v19 = 4294954516;
  v20 = 363;
LABEL_24:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, "<<<< MuxedAlphaDecoder >>>>", v20, v17);
}

uint64_t MuxedAlphaDecoder_StartSession(uint64_t a1, uint64_t a2, const void *a3)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v77 = 0;
  cf = 0;
  v76 = 0;
  v7 = *(DerivedStorage + 16);
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v8 = OUTLINED_FUNCTION_3_11();
  Mutable = CFArrayCreateMutable(v8, v9, v10);
  *(DerivedStorage + 48) = Mutable;
  if (Mutable)
  {
    v12 = OUTLINED_FUNCTION_3_11();
    v15 = CFArrayCreateMutable(v12, v13, v14);
    *(DerivedStorage + 80) = v15;
    if (v15)
    {
      FigVideoFormatDescriptionDetermineCompatibilityWithCoreMediaRequirementsForHEVCWithAlpha();
      if (FigVideoFormatDescriptionContainsStereoMultiviewVideo())
      {
        v16 = _os_feature_enabled_impl();
        if ((v16 & 1) == 0 && !VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults(v16, v17))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_2();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        v81 = 0;
        VTVideoDecoderGetCMBaseObject();
        CMBaseObjectGetDerivedStorage();
        v18 = FigVideoFormatDescriptionCopyFigTagCollectionArrayWithExtraChannels();
        if (!v18)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_2();
          v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v75);
        }

        v25 = v18;
        if (v18)
        {
          return v25;
        }

        FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription();
        if (FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
        {
          return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
        }

        FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription();
        if (FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
        {
          return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
        }
      }

      else
      {
        LODWORD(numberOfTagsCopied) = 0;
        *&tagBuffer.category = 0;
        v81 = 0;
        VTVideoDecoderGetCMBaseObject();
        v19 = CMBaseObjectGetDerivedStorage();
        Extensions = CMFormatDescriptionGetExtensions(*(v19 + 16));
        if (Extensions && (Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0])) != 0 && (v22 = CFDictionaryGetValue(Value, @"hvcC")) != 0 && (v23 = CFGetTypeID(v22), v23 == CFDataGetTypeID()))
        {
          HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex();
          if (!HEVCParameterSetAtIndex)
          {
            HEVCParameterSetAtIndex = FigHEVCBridge_GetVPSAlphaChannelNuhLayerId();
          }

          v25 = HEVCParameterSetAtIndex;
        }

        else
        {
          v25 = 4294954586;
        }

        LODWORD(numberOfTagsCopied) = 1;
        if (v25)
        {
          return v25;
        }

        FigCFArrayAppendInt32();
        FigCFArrayAppendInt32();
        FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription();
        if (FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
        {
          return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
        }

        FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription();
        if (FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
        {
          return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
        }
      }

      v27 = *MEMORY[0x1E6960038];
      if (*MEMORY[0x1E695E4D0] == CMFormatDescriptionGetExtension(*(DerivedStorage + 32), *MEMORY[0x1E6960038]) || *MEMORY[0x1E695E4C0] == CMFormatDescriptionGetExtension(*(DerivedStorage + 64), v27))
      {
        v28 = 0;
      }

      else
      {
        CMFormatDescriptionGetExtension(*(DerivedStorage + 64), *MEMORY[0x1E6960000]);
        if (FigCFNumberGetSInt32() == 8)
        {
          v28 = &v76 + 1;
        }

        else
        {
          v28 = 0;
        }
      }

      FigCFArrayGetInt32AtIndex();
      FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = alphadecoder_createSubLayerVTDecompressionSession(a1, 0, *(DerivedStorage + 24), *(DerivedStorage + 32), kSupportedBaseLayerPixelFormats, 18, (DerivedStorage + 40), v28);
      if (!FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
      {
        v29 = *(DerivedStorage + 40);
        tagBuffer.category = kCMTagCategory_Undefined;
        v30 = alphadecoder_copyPixelBufferAttributesFromDecompressionSession(v29);
        if (v30)
        {
          v31 = v30;
          v32 = CFDictionaryGetValue(v30, *MEMORY[0x1E6966130]);
          if (v32 && ((ValueAtIndex = v32, v34 = CFGetTypeID(v32), v34 != CFArrayGetTypeID()) || CFArrayGetCount(ValueAtIndex) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0) && (v35 = CFGetTypeID(ValueAtIndex), v35 == CFNumberGetTypeID()) && (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &tagBuffer), (category = tagBuffer.category) != kCMTagCategory_Undefined))
          {
            v25 = 0;
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_2();
            v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v75);
            category = kCMTagCategory_Undefined;
          }

          CFRelease(v31);
          if (v25)
          {
            return v25;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_2();
          v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v75);
          category = kCMTagCategory_Undefined;
          if (v25)
          {
            return v25;
          }
        }

        if (category != 645279800 && category != 645280312 && category != 645280824 && category != 645410872 && category != 645411384 && category != 645411896 && category != 2016698680)
        {
          if (category == 875836534)
          {
            OUTLINED_FUNCTION_4_11();
            category = v72 + 0x40000;
LABEL_77:
            v77 = __PAIR64__(category, v47);
            if (HIBYTE(v76))
            {
              v48 = &v76;
            }

            else
            {
              v48 = 0;
            }

            FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = alphadecoder_createSubLayerVTDecompressionSession(a1, 1, *(DerivedStorage + 24), *(DerivedStorage + 64), &v77, 1, (DerivedStorage + 72), v48);
            if (!FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
            {
              Dimensions = CMVideoFormatDescriptionGetDimensions(*(DerivedStorage + 16));
              PixelBufferAttributesDictionary = alphadecoder_createPixelBufferAttributesDictionary(Dimensions, HIDWORD(Dimensions), &v77 + 1, 1, &cf);
              v51 = cf;
              if (!PixelBufferAttributesDictionary)
              {
                VTDecoderSessionSetPixelBufferAttributes(*(DerivedStorage + 8), cf);
                if (v76)
                {
                  v52 = HIBYTE(v76) == 0;
                }

                else
                {
                  v52 = 1;
                }

                v53 = !v52;
                *(DerivedStorage + 124) = v53;
                if (!v52)
                {
                  v57 = alphadecoder_copyPixelBufferAttributesFromDecompressionSession(*(DerivedStorage + 40));
                  v54 = v57;
                  if (v57)
                  {
                    VTDecoderSessionSetPixelBufferAttributes(*(DerivedStorage + 8), v57);
                  }

                  VTDecompressionSessionSetDecoderSessionAsPixelBufferSource(*(DerivedStorage + 40), a2);
                  VTDecompressionSessionSetDecoderSessionAsPixelBufferSource(*(DerivedStorage + 72), a2);
                  v58 = OUTLINED_FUNCTION_3_11();
                  v62 = CFDictionaryCreateMutable(v58, v59, v60, v61);
                  if (!v62)
                  {
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_2();
                    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v75);
                    goto LABEL_95;
                  }

                  v63 = v62;
                  FigCFDictionarySetBoolean();
                  v64 = OUTLINED_FUNCTION_3_11();
                  v67 = CFArrayCreateMutable(v64, v65, v66);
                  *(DerivedStorage + 128) = v67;
                  if (v67)
                  {
                    if (!FigVideoFormatDescriptionContainsStereoMultiviewVideo())
                    {
                      CFArrayAppendValue(*(DerivedStorage + 128), v63);
                      v25 = 0;
LABEL_118:
                      CFRelease(v63);
                      goto LABEL_95;
                    }

                    tagBuffer.category = kCMTagCategory_Undefined;
                    FigCFArrayGetInt32AtIndex();
                    FigCFDictionarySetInt32();
                    CFArrayAppendValue(*(DerivedStorage + 128), v63);
                    v68 = OUTLINED_FUNCTION_3_11();
                    MutableCopy = CFDictionaryCreateMutableCopy(v68, v69, v63);
                    if (MutableCopy)
                    {
                      v71 = MutableCopy;
                      FigCFArrayGetInt32AtIndex();
                      FigCFDictionarySetInt32();
                      CFArrayAppendValue(*(DerivedStorage + 128), v71);
                      CFRelease(v63);
                      CFRelease(v71);
                      v25 = 0;
                      goto LABEL_95;
                    }
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_2();
                  v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                  goto LABEL_118;
                }

                if (CMFormatDescriptionGetMediaSubType(*(DerivedStorage + 32)) == 1752589105)
                {
                  v25 = 0;
                  v54 = 0;
                  if (!HIBYTE(v76) || v76)
                  {
                    goto LABEL_95;
                  }
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_2();
                PixelBufferAttributesDictionary = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              }

              v25 = PixelBufferAttributesDictionary;
              v54 = 0;
LABEL_95:
              if (v51)
              {
                CFRelease(v51);
              }

              if (v54)
              {
                CFRelease(v54);
              }

              return v25;
            }

            return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
          }

          if (category != 1982882104 && category != 1983013176 && category != 1983144248 && category != 2016436536 && category != 2016567608)
          {
            switch(category)
            {
              case 0x78343230u:
                category = 2016436536;
                OUTLINED_FUNCTION_4_11();
                break;
              case 0x78343232u:
                OUTLINED_FUNCTION_4_11();
                category = 2016567608;
                break;
              case 0x78343434u:
                OUTLINED_FUNCTION_4_11();
                category = 2016698680;
                break;
              case 0x34323276u:
                OUTLINED_FUNCTION_4_11();
                category = v56 + 0x20000;
                break;
              default:
                v47 = 875704422;
                category = 1982882104;
                break;
            }

            goto LABEL_77;
          }
        }

        v47 = category;
        goto LABEL_77;
      }

      return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}