uint64_t HandleRemakerFamilyMessageNoReply()
{
  OUTLINED_FUNCTION_261();
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294966630;
  }
}

uint64_t FigRemakerFamilyServer_RemakerSetProperty()
{
  OUTLINED_FUNCTION_565();
  OUTLINED_FUNCTION_570();
  OUTLINED_FUNCTION_29_12();
  MetadataFromBinaryPListData = FigXPCMessageCopyCFString();
  if (MetadataFromBinaryPListData)
  {
    goto LABEL_13;
  }

  if (!cf1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, cf);
    goto LABEL_13;
  }

  MetadataFromBinaryPListData = FigXPCMessageCopyCFObject();
  if (MetadataFromBinaryPListData)
  {
    goto LABEL_13;
  }

  if (!CFEqual(cf1, @"AssetWriter_Metadata") && !CFEqual(cf1, @"Remaker_Metadata"))
  {
    goto LABEL_11;
  }

  MetadataFromBinaryPListData = FigRemote_CreateMetadataFromBinaryPListData(cf, *MEMORY[0x1E695E480], &v7);
  if (MetadataFromBinaryPListData)
  {
LABEL_13:
    v4 = MetadataFromBinaryPListData;
    goto LABEL_15;
  }

  v1 = cf;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v1)
  {
    CFRelease(v1);
  }

LABEL_11:
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v2 = OUTLINED_FUNCTION_69_0();
    MetadataFromBinaryPListData = v3(v2);
    goto LABEL_13;
  }

  v4 = 4294954514;
LABEL_15:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

uint64_t FigRemakerFamilyServer_RemakerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_570();
  MetadataBinaryPListData = FigXPCMessageCopyCFString();
  if (MetadataBinaryPListData)
  {
    goto LABEL_13;
  }

  if (!cf1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, cf);
    goto LABEL_13;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = *MEMORY[0x1E695E480];
    MetadataBinaryPListData = v5(a1, cf1, *MEMORY[0x1E695E480], &cf);
    if (!MetadataBinaryPListData)
    {
      if (!CFEqual(cf1, @"AssetWriter_Metadata") && !CFEqual(cf1, @"Remaker_Metadata"))
      {
LABEL_12:
        MetadataBinaryPListData = FigXPCMessageSetCFObject();
        goto LABEL_13;
      }

      MetadataBinaryPListData = FigRemote_CreateMetadataBinaryPListData(cf, v6, &v11);
      if (!MetadataBinaryPListData)
      {
        v7 = cf;
        cf = v11;
        if (v11)
        {
          CFRetain(v11);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        goto LABEL_12;
      }
    }

LABEL_13:
    v8 = MetadataBinaryPListData;
    goto LABEL_15;
  }

  v8 = 4294954514;
LABEL_15:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

uint64_t FigRemakerFamilyServer_RemakerSetFormatWriterProperty()
{
  OUTLINED_FUNCTION_565();
  v3 = 0;
  v0 = FigXPCMessageCopyCFString();
  if (!v0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v1 = v0;
  if (v3)
  {
    CFRelease(v3);
  }

  return v1;
}

void FigRemakerFamilyServer_RemakerSetFormatWriterTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, CFTypeRef cf, CFTypeRef cf1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  v23 = v22;
  OUTLINED_FUNCTION_570();
  if (!xpc_dictionary_get_int64(v21, "TrackID"))
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_34_15();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_20;
  }

  if (!cf1)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_60_9();
  if (FigXPCMessageCopyCFObject())
  {
    goto LABEL_20;
  }

  if (CFEqual(cf1, @"FormatDescriptionArray") || CFEqual(cf1, @"ReplacementFormatDescriptionArray"))
  {
    if (FigRemote_CreateFormatDescriptionCollectionFromPList())
    {
      goto LABEL_20;
    }

    v24 = cf;
    cf = a10;
    if (a10)
    {
      CFRetain(a10);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  if (!v23)
  {
    goto LABEL_19;
  }

  v25 = CFGetTypeID(v23);
  if (v25 == FigRemakerGetTypeID())
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v28 = CFGetTypeID(v23);
  if (v28 == FigAssetWriterGetTypeID())
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
    {
LABEL_15:
      v26 = OUTLINED_FUNCTION_69_0();
      v27(v26);
    }
  }

  else
  {
LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_20:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t FigRemakerFamilyServer_RemakerAddAudioTrack(const void *a1, void *a2, void *a3)
{
  v11 = 0;
  length = 0;
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != FigRemakerGetTypeID()) || !xpc_dictionary_get_int64(a2, "TrackID"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v6;
  }

  if (!xpc_dictionary_get_data(a2, "AudioDestASBD", &length) || length != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v6;
  }

  xpc_dictionary_get_data(a2, "AudioDestChannelLayout", &v11);
  v6 = FigXPCMessageCopyCFDictionary();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFDictionary();
  if (v6)
  {
    return v6;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    return 4294954514;
  }

  v7 = OUTLINED_FUNCTION_266();
  v9 = v8(v7);
  if (!v9)
  {
    xpc_dictionary_set_int64(a3, "TrackIDOut", 0);
  }

  return v9;
}

void FigRemakerFamilyServer_RemakerAddAudioTrackWithPreset(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int64_t value, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  if (v22 && (OUTLINED_FUNCTION_8_38(), v24 = CFGetTypeID(v23), v24 == FigRemakerGetTypeID()) && xpc_dictionary_get_int64(v21, "TrackID"))
  {
    OUTLINED_FUNCTION_34_15();
    if (!FigXPCMessageCopyCFString())
    {
      OUTLINED_FUNCTION_60_9();
      if (!FigXPCMessageCopyCFDictionary())
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v25 = OUTLINED_FUNCTION_266();
          if (!v26(v25))
          {
            xpc_dictionary_set_int64(v20, "TrackIDOut", 0);
          }
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

  OUTLINED_FUNCTION_860();
}

uint64_t FigRemakerFamilyServer_RemakerAddAudioMixdownTrack()
{
  length = 0;
  cf = 0;
  OUTLINED_FUNCTION_39_14();
  v16 = 0;
  if (!v3 || (v4 = OUTLINED_FUNCTION_48_12(v3), v4 != FigRemakerGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_24:
    v14 = v5;
    goto LABEL_13;
  }

  v5 = FigXPCMessageCopyCFArray();
  if (v5)
  {
    goto LABEL_24;
  }

  v5 = frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects(cf, @"RemakerAudioMixdown_AudioProcessingTap", &v16);
  if (v5)
  {
    goto LABEL_24;
  }

  data = xpc_dictionary_get_data(v2, "AudioDestASBD", &length);
  if (!data || length != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_24;
  }

  v7 = data;
  v8 = xpc_dictionary_get_data(v2, "AudioDestChannelLayout", &v19);
  OUTLINED_FUNCTION_41_13();
  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_24;
  }

  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_24;
  }

  v9 = v16;
  v10 = v18;
  v11 = v19;
  v12 = *&value[1];
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v13)
  {
    v14 = v13(v1, v9, v7, v11, v8, v10, v12, value);
    if (!v14)
    {
      xpc_dictionary_set_int64(v0, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v14 = 4294954514;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (*&value[1])
  {
    CFRelease(*&value[1]);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t FigRemakerFamilyServer_RemakerAddAudioMixdownTrackWithPreset()
{
  OUTLINED_FUNCTION_39_14();
  v9 = 0;
  if (!v1 || (v2 = OUTLINED_FUNCTION_24_18(v1), v2 != FigRemakerGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
LABEL_21:
    v6 = v3;
    goto LABEL_11;
  }

  v3 = FigXPCMessageCopyCFArray();
  if (v3)
  {
    goto LABEL_21;
  }

  v3 = frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects(cf, @"RemakerAudioMixdown_AudioProcessingTap", &v9);
  if (v3)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_53_11();
  v3 = FigXPCMessageCopyCFString();
  if (v3)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_29_12();
  v3 = FigXPCMessageCopyCFDictionary();
  if (v3)
  {
    goto LABEL_21;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 104))
  {
    v4 = OUTLINED_FUNCTION_266();
    v6 = v5(v4);
    if (!v6)
    {
      xpc_dictionary_set_int64(v0, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v6 = 4294954514;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (*&value[1])
  {
    CFRelease(*&value[1]);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t FigRemakerFamilyServer_RemakerAddVideoTrack(const void *a1, void *a2, uint64_t a3)
{
  value_4 = *MEMORY[0x1E6960C70];
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != FigRemakerGetTypeID()) || !xpc_dictionary_get_int64(a2, "TrackID"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return CMTime;
  }

  xpc_dictionary_get_int64(a2, "Width");
  xpc_dictionary_get_int64(a2, "Height");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  xpc_dictionary_get_uint64(a2, "VideoCodecType");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    return CMTime;
  }

  VTable = CMBaseObjectGetVTable();
  v18 = *(VTable + 16);
  v17 = VTable + 16;
  if (!*(v18 + 16))
  {
    return 4294954514;
  }

  OUTLINED_FUNCTION_61_10(v17, v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27, a3, v16, value_4);
  v19 = OUTLINED_FUNCTION_266();
  v21 = v20(v19);
  if (!v21)
  {
    xpc_dictionary_set_int64(xdict, "TrackIDOut", 0);
  }

  return v21;
}

uint64_t FigRemakerFamilyServer_RemakerPrepareToAddVideoCompositionTrack()
{
  OUTLINED_FUNCTION_56_10();
  int64 = xpc_dictionary_get_int64(v1, "AnimationVideoLayerCount");
  result = FigRemote_StartCARenderServerAndReturnPort(&v4);
  if (!result)
  {
    *(v0 + 88) = 1;
    result = FigRemote_CreateLocalCAContext((v0 + 96));
    if (!result)
    {
      if (int64 < 1 || (result = FigRemote_CreateCAImageQueuesAndSlotIDs(int64, *(v0 + 96), (v0 + 112), (v0 + 120)), !result))
      {
        xpc_dictionary_set_mach_send();
        return FigXPCMessageSetCFArray();
      }
    }
  }

  return result;
}

uint64_t FigRemakerFamilyServer_RemakerAddVideoCompositionTrack()
{
  OUTLINED_FUNCTION_36_15();
  v44 = 0;
  v43 = 0;
  *&value[1] = *MEMORY[0x1E6960C70];
  v42 = *(MEMORY[0x1E6960C70] + 16);
  value[0] = 0;
  if (!v0 || (v4 = v3, v5 = v2, v6 = v1, v7 = v0, v8 = CFGetTypeID(v0), v8 != FigRemakerGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    uint64 = xpc_dictionary_get_uint64(v5, "VideoCompositorObjectID");
    if (v54)
    {
      CFRelease(v54);
      v54 = 0;
    }

    CMTime = FigVideoCompositorServerRetainVideoCompositorForID(uint64, &v54);
    if (CMTime)
    {
      goto LABEL_12;
    }
  }

  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_12;
  }

  int64 = xpc_dictionary_get_int64(v5, "SourceTrackIDForFrameTiming");
  v13 = xpc_dictionary_get_int64(v5, "RenderWidth");
  v14 = xpc_dictionary_get_int64(v5, "RenderHeight");
  v15 = xpc_dictionary_get_int64(v5, "Width");
  v40 = xpc_dictionary_get_int64(v5, "Height");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  v39 = xpc_dictionary_get_uint64(v5, "VideoCodecType");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = frs_createVideoCompositionProcessorPropertiesFromSerializableProperties(v45, &v46);
  if (CMTime)
  {
    goto LABEL_12;
  }

  v38 = xpc_dictionary_get_int64(v5, "AnimationTrackID");
  CMTime = FigXPCMessageCopyCFArray();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_12;
  }

  if (*(v6 + 96))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v43 = Mutable;
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_12:
      v11 = CMTime;
      goto LABEL_32;
    }

    CFDictionarySetValue(Mutable, @"RenderCAContext", *(v6 + 96));
  }

  v16 = xpc_dictionary_get_uint64(v5, "AnimationRemoteContextID");
  if (v16)
  {
    CMTime = FigRemote_CreateLayerHostForRemoteContext(v16, (v6 + 104));
    if (CMTime)
    {
      goto LABEL_12;
    }
  }

  v17 = v14;
  v36 = v13;
  v37 = int64;
  v34 = v55;
  v35 = v56;
  v32 = v52;
  v33 = v53;
  v18 = v50;
  v30 = v51;
  v31 = v54;
  v28 = *(v6 + 112);
  v29 = *(v6 + 104);
  v19 = v7;
  v21 = v48;
  v20 = v49;
  v23 = v46;
  v22 = v47;
  v24 = v19;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v25)
  {
    v57 = *&value[1];
    v58 = v42;
    v11 = v25(v24, v35, v34, v33, v32, v31, v30, v29, v38, v28, v44, v43, &v57, __PAIR64__(v36, v37), __PAIR64__(v15, v17), v40, v18, v39, v20, v21, v22, v23, value);
    if (!v11)
    {
      xpc_dictionary_set_int64(v4, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v11 = 4294954514;
  }

LABEL_32:
  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return v11;
}

void FigRemakerFamilyServer_RemakerAddPassthroughTrackWithOptions(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigRemakerGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 120))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

void FigRemakerFamilyServer_RemakerAddTemporalMetadataTrackWithOptions(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigRemakerGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 136))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

double FigRemakerFamilyServer_RemakerEstimateMaxSegmentDurationForFileSize()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
  if (v1 && (v2 = OUTLINED_FUNCTION_24_18(v1), v2 == FigRemakerGetTypeID()))
  {
    xpc_dictionary_get_int64(v0, "TargetFileSize");
    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
    {
      v4 = OUTLINED_FUNCTION_266();
      v6 = v5(v4);
      if (!v6)
      {
        OUTLINED_FUNCTION_7_54(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
        FigXPCMessageSetCMTime();
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

double FigRemakerFamilyServer_RemakerSetTimeRange()
{
  OUTLINED_FUNCTION_50_7(MEMORY[0x1E6960C98]);
  if (v0 && (OUTLINED_FUNCTION_261(), v2 = CFGetTypeID(v1), v2 == FigRemakerGetTypeID()))
  {
    CMTimeRange = FigXPCMessageGetCMTimeRange();
    if (!CMTimeRange)
    {
      OUTLINED_FUNCTION_40_13(CMTimeRange, v4, v5, v6, v7, v8, v9, v10, v24, v27, v30, v33, v36, v39, v41, v43, v44, v46, v47, v48);
      v12 = OUTLINED_FUNCTION_46_9();
      v21 = *(v12 + 16);
      v20 = v12 + 16;
      if (*(v21 + 48))
      {
        v22 = OUTLINED_FUNCTION_20_19(v20, v13, v14, v15, v16, v17, v18, v19, v25, v26, v28, v29, v31, v32, v34, v35, v37, v38, v40, v42, v45);
        v23(v22);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigRemakerFamilyServer_RemakerCanPerformFastFrameRateConversion()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
  if (v2 && (OUTLINED_FUNCTION_565(), v4 = CFGetTypeID(v3), v4 == FigRemakerGetTypeID()) && (int64 = xpc_dictionary_get_int64(v1, "TrackID"), int64))
  {
    OUTLINED_FUNCTION_53_11();
    CMTime = FigXPCMessageGetCMTime();
    if (!CMTime)
    {
      OUTLINED_FUNCTION_7_54(CMTime, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
      VTable = CMBaseObjectGetVTable();
      v24 = *(VTable + 16);
      v23 = VTable + 16;
      if (*(v24 + 128))
      {
        v25 = OUTLINED_FUNCTION_10_40(v23, v16, v17, v18, v19, v20, v21, v22, v28);
        v26(v0, int64, v33, v25);
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

void FigRemakerFamilyServer_RemakerCopyTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (!v19 || (OUTLINED_FUNCTION_8_38(), v21 = CFGetTypeID(v20), v21 != FigRemakerGetTypeID()) || !xpc_dictionary_get_int64(v18, "TrackID") || (OUTLINED_FUNCTION_1_1(), !FigXPCMessageCopyCFString()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  OUTLINED_FUNCTION_652();
}

void FigRemakerFamilyServer_ReaderEnableOriginalSampleExtractionFromTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigAssetReaderGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 24))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

void FigRemakerFamilyServer_ReaderEnableOriginalSampleReferenceExtractionFromTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigAssetReaderGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 32))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t FigRemakerFamilyServer_ReaderEnableDecodedAudioExtractionFromTrackWithAudioOptions()
{
  v13 = 0;
  length = 0;
  OUTLINED_FUNCTION_39_14();
  if (!v2 || (v3 = OUTLINED_FUNCTION_24_18(v2), v3 != FigAssetReaderGetTypeID()) || !xpc_dictionary_get_int64(v1, "TrackID"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_22:
    v7 = v4;
    goto LABEL_13;
  }

  if (!xpc_dictionary_get_data(v1, "AudioDestASBD", &length) || length != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_22;
  }

  xpc_dictionary_get_data(v1, "AudioDestChannelLayout", &v13);
  v4 = FigXPCMessageCopyCFDictionary();
  if (v4)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_53_11();
  v4 = FigXPCMessageCopyCFDictionary();
  if (v4)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_29_12();
  v4 = FigXPCMessageCopyCFDictionary();
  if (v4)
  {
    goto LABEL_22;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 112))
  {
    v5 = OUTLINED_FUNCTION_266();
    v7 = v6(v5);
    if (!v7)
    {
      xpc_dictionary_set_int64(v0, "TrackIDOut", value);
    }
  }

  else
  {
    v7 = 4294954514;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (value_4)
  {
    CFRelease(value_4);
  }

  return v7;
}

uint64_t FigRemakerFamilyServer_ReaderEnableDecodedVideoExtractionFromTrack(const void *a1)
{
  if (!a1 || (v3 = OUTLINED_FUNCTION_24_18(a1), v3 != FigAssetReaderGetTypeID()) || !xpc_dictionary_get_int64(v2, "TrackID"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    return 4294954514;
  }

  v5 = OUTLINED_FUNCTION_266();
  v7 = v6(v5);
  if (!v7)
  {
    xpc_dictionary_set_int64(v1, "TrackIDOut", 0);
  }

  return v7;
}

uint64_t FigRemakerFamilyServer_ReaderEnableVideoCompositionExtraction()
{
  OUTLINED_FUNCTION_36_15();
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v53 = 0;
  *&value[1] = *MEMORY[0x1E6960C70];
  v52 = *(MEMORY[0x1E6960C70] + 16);
  value[0] = 0;
  if (!v1 || (v5 = v4, v6 = v3, v7 = v2, v8 = v1, v9 = CFGetTypeID(v1), v9 != FigAssetReaderGetTypeID()))
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< RemakerServer >>>>", 3489, v0);
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFString();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    uint64 = xpc_dictionary_get_uint64(v6, "VideoCompositorObjectID");
    if (v64)
    {
      CFRelease(v64);
      v64 = 0;
    }

    LayerHostForRemoteContext = FigVideoCompositorServerRetainVideoCompositorForID(uint64, &v64);
    if (LayerHostForRemoteContext)
    {
      goto LABEL_12;
    }
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  int64 = xpc_dictionary_get_int64(v6, "AnimationTrackID");
  LayerHostForRemoteContext = FigXPCMessageCopyCFArray();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  if (*(v7 + 96))
  {
    v14 = MutableCopy;
    v15 = *MEMORY[0x1E695E480];
    if (MutableCopy)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v15, 0, MutableCopy);
      CFRelease(v14);
      Mutable = MutableCopy;
      if (MutableCopy)
      {
LABEL_19:
        CFDictionarySetValue(Mutable, @"RenderCAContext", *(v7 + 96));
        goto LABEL_20;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      MutableCopy = Mutable;
      if (Mutable)
      {
        goto LABEL_19;
      }
    }

    v34 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 4294954510, "<<<< RemakerServer >>>>", 3551, v0);
LABEL_12:
    v12 = LayerHostForRemoteContext;
    goto LABEL_35;
  }

LABEL_20:
  v17 = xpc_dictionary_get_uint64(v6, "AnimationRemoteContextID");
  if (v17)
  {
    LayerHostForRemoteContext = FigRemote_CreateLayerHostForRemoteContext(v17, (v7 + 104));
    if (LayerHostForRemoteContext)
    {
      goto LABEL_12;
    }
  }

  LayerHostForRemoteContext = FigXPCMessageGetCMTime();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  v18 = xpc_dictionary_get_int64(v6, "SourceTrackIDForFrameTiming");
  v19 = xpc_dictionary_get_int64(v6, "RenderWidth");
  v20 = xpc_dictionary_get_int64(v6, "RenderHeight");
  v21 = xpc_dictionary_get_int64(v6, "Width");
  v50 = xpc_dictionary_get_int64(v6, "Height");
  v49 = xpc_dictionary_get_uint64(v6, "VideoCodecType");
  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = frs_createVideoCompositionProcessorPropertiesFromSerializableProperties(v54, &v55);
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  LayerHostForRemoteContext = FigXPCMessageCopyCFDictionary();
  if (LayerHostForRemoteContext)
  {
    goto LABEL_12;
  }

  v44 = v20;
  v45 = v19;
  v46 = v18;
  v47 = int64;
  xdict = v5;
  v42 = v67;
  v43 = v68;
  v40 = v65;
  v41 = v66;
  v38 = v63;
  v39 = v64;
  v36 = *(v7 + 112);
  v37 = *(v7 + 104);
  v22 = v8;
  v23 = MutableCopy;
  v24 = v62;
  v26 = v59;
  v25 = v60;
  v28 = v57;
  v27 = v58;
  v30 = v55;
  v29 = v56;
  v31 = v22;
  v32 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v32)
  {
    v69 = *&value[1];
    v70 = v52;
    v12 = v32(v31, v43, v42, v41, v40, v39, v38, v37, v47, v36, v24, v23, &v69, __PAIR64__(v45, v46), __PAIR64__(v21, v44), v50, v25, v26, v49, v27, v28, v29, v30, v53, value);
    if (!v12)
    {
      xpc_dictionary_set_int64(xdict, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v12 = 4294954514;
  }

LABEL_35:
  if (v68)
  {
    CFRelease(v68);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  return v12;
}

uint64_t FigRemakerFamilyServer_ReaderEnableAudioMixdownExtraction(const void *a1)
{
  length = 0;
  cf = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  memset(value, 0, sizeof(value));
  v17 = 0;
  if (!a1 || (v4 = OUTLINED_FUNCTION_48_12(a1), v4 != FigAssetReaderGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_27:
    v15 = v5;
    goto LABEL_14;
  }

  v5 = FigXPCMessageCopyCFArray();
  if (v5)
  {
    goto LABEL_27;
  }

  v5 = frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects(cf, @"AssetReaderSource_AudioProcessingTap", &v17);
  if (v5)
  {
    goto LABEL_27;
  }

  data = xpc_dictionary_get_data(v3, "AudioDestASBD", &length);
  if (!data || length != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_27;
  }

  v7 = data;
  v8 = xpc_dictionary_get_data(v3, "AudioDestChannelLayout", &v21);
  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_27;
  }

  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_41_13();
  v5 = FigXPCMessageCopyCFDictionary();
  if (v5)
  {
    goto LABEL_27;
  }

  v9 = v17;
  v10 = v20;
  v11 = v21;
  v13 = *&value[1];
  v12 = v19;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v14)
  {
    v15 = v14(v2, v9, v7, v11, v8, v10, v12, v13, value);
    if (!v15)
    {
      xpc_dictionary_set_int64(v1, "TrackIDOut", value[0]);
    }
  }

  else
  {
    v15 = 4294954514;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (*&value[1])
  {
    CFRelease(*&value[1]);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v15;
}

uint64_t FigRemakerFamilyServer_ReaderExtractAndRetainNextSampleBuffer(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v35 = 0;
  sbuf = 0;
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != FigAssetReaderGetTypeID()) || (int64 = xpc_dictionary_get_int64(a3, "TrackID"), !int64))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_38;
  }

  v10 = xpc_dictionary_get_BOOL(a3, "WaitForSampleBuffer");
  v11 = xpc_dictionary_get_BOOL(a3, "RequestedSampleBuffer");
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v12)
  {
    SerializedAtomDataAndSurfaceForSampleBuffer = 4294954514;
    goto LABEL_31;
  }

  v13 = v12(a1, int64, v10, &v35, &sbuf);
  if (v13)
  {
    goto LABEL_38;
  }

  xpc_dictionary_set_BOOL(a4, "ExtractionCompleteOut", v35 != 0);
  if (sbuf)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = CFDictionaryGetValue(*(a2 + 128), int64);
  value = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  CFDictionaryGetValue(*(a2 + 136), int64);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  SerializedAtomDataAndSurfaceForSampleBuffer = FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer();
  v19 = *(a2 + 128);
  if (value)
  {
    CFDictionarySetValue(v19, int64, value);
    CFRelease(value);
    if (SerializedAtomDataAndSurfaceForSampleBuffer)
    {
LABEL_14:
      CFDictionaryRemoveValue(*(a2 + 136), int64);
      goto LABEL_31;
    }
  }

  else
  {
    CFDictionaryRemoveValue(v19, int64);
    if (SerializedAtomDataAndSurfaceForSampleBuffer)
    {
      goto LABEL_14;
    }
  }

  CFDictionarySetValue(*(a2 + 136), int64, ((*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]));
  v13 = FigXPCMessageSetAndConsumeVMData();
  if (v13)
  {
LABEL_38:
    SerializedAtomDataAndSurfaceForSampleBuffer = v13;
    goto LABEL_31;
  }

  if (MediaType != 1952606066)
  {
    XPCObject = IOSurfaceCreateXPCObject(0);
    xpc_dictionary_set_value(a4, "IOSurface", XPCObject);
LABEL_16:
    SerializedAtomDataAndSurfaceForSampleBuffer = 0;
    goto LABEL_31;
  }

  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup();
  if (TaggedBufferGroup)
  {
    Count = CMTaggedBufferGroupGetCount(TaggedBufferGroup);
    if (Count > 0)
    {
      v22 = Count;
      v23 = xpc_array_create(0, 0);
      if (v23)
      {
        v24 = 0;
        while (1)
        {
          CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          if (!CVPixelBufferAtIndex)
          {
            break;
          }

          IOSurface = CVPixelBufferGetIOSurface(CVPixelBufferAtIndex);
          if (!IOSurface)
          {
            break;
          }

          v27 = IOSurfaceCreateXPCObject(IOSurface);
          if (!v27)
          {
            break;
          }

          v28 = v27;
          xpc_array_append_value(v23, v27);
          xpc_release(v28);
          if (v22 == ++v24)
          {
            SerializedAtomDataAndSurfaceForSampleBuffer = 0;
            v29 = v23;
            goto LABEL_29;
          }
        }
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  SerializedAtomDataAndSurfaceForSampleBuffer = v32;
  v29 = 0;
LABEL_29:
  FigXPCRelease();
  FigXPCRelease();
  if (!SerializedAtomDataAndSurfaceForSampleBuffer)
  {
    xpc_dictionary_set_value(a4, "IOSurfaceArray", v29);
  }

LABEL_31:
  FigXPCRelease();
  FigXPCRelease();
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return SerializedAtomDataAndSurfaceForSampleBuffer;
}

double FigRemakerFamilyServer_ReaderStartExtractionForTime()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if (v1 && (OUTLINED_FUNCTION_261(), v3 = CFGetTypeID(v2), v3 == FigAssetReaderGetTypeID()))
  {
    OUTLINED_FUNCTION_41_13();
    CMTime = FigXPCMessageGetCMTime();
    if (!CMTime)
    {
      OUTLINED_FUNCTION_7_54(CMTime, v5, v6, v7, v8, v9, v10, v11, v25, v27, v28, v29, v30);
      VTable = CMBaseObjectGetVTable();
      v22 = *(VTable + 16);
      v21 = VTable + 16;
      if (*(v22 + 144))
      {
        v23 = OUTLINED_FUNCTION_10_40(v21, v14, v15, v16, v17, v18, v19, v20, v26);
        v24(v0, v31, v23);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigRemakerFamilyServer_ReaderStartExtractionForTimeRange()
{
  OUTLINED_FUNCTION_50_7(MEMORY[0x1E6960C98]);
  if (v0 && (OUTLINED_FUNCTION_261(), v2 = CFGetTypeID(v1), v2 == FigAssetReaderGetTypeID()))
  {
    CMTimeRange = FigXPCMessageGetCMTimeRange();
    if (!CMTimeRange)
    {
      OUTLINED_FUNCTION_40_13(CMTimeRange, v4, v5, v6, v7, v8, v9, v10, v24, v27, v30, v33, v36, v39, v41, v43, v44, v46, v47, v48);
      v12 = OUTLINED_FUNCTION_46_9();
      v21 = *(v12 + 16);
      v20 = v12 + 16;
      if (*(v21 + 96))
      {
        v22 = OUTLINED_FUNCTION_20_19(v20, v13, v14, v15, v16, v17, v18, v19, v25, v26, v28, v29, v31, v32, v34, v35, v37, v38, v40, v42, v45);
        v23(v22);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void FigRemakerFamilyServer_ReaderEnableCaptionExtractionFromTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int valuea, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_572();
  if (v21 && (OUTLINED_FUNCTION_8_38(), v23 = CFGetTypeID(v22), v23 == FigAssetReaderGetTypeID()) && xpc_dictionary_get_int64(v20, "TrackID"))
  {
    OUTLINED_FUNCTION_1_1();
    if (!FigXPCMessageCopyCFDictionary())
    {
      if (*(*(OUTLINED_FUNCTION_49_7() + 16) + 136))
      {
        v24 = OUTLINED_FUNCTION_11_41();
        if (!v25(v24))
        {
          xpc_dictionary_set_int64(v19, "TrackIDOut", valuea);
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

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_652();
}

double FigRemakerFamilyServer_WriterAddNativeTrack(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int64_t value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (v20 && (v21 = OUTLINED_FUNCTION_24_18(v20), v21 == FigAssetWriterGetTypeID()) && xpc_dictionary_get_int64(v19, "MediaType"))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v22 = OUTLINED_FUNCTION_517();
      if (!v23(v22))
      {
        xpc_dictionary_set_int64(v18, "TrackIDOut", 0);
      }
    }

    OUTLINED_FUNCTION_652();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_652();

    return FigSignalErrorAtGM(v25);
  }

  return result;
}

uint64_t FigRemakerFamilyServer_WriterAddAudioTrackWithCompression(uint64_t a1)
{
  length[0] = 0;
  if (!a1 || (OUTLINED_FUNCTION_8_38(), v4 = CFGetTypeID(v3), v4 != FigAssetWriterGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v8;
  }

  if (!xpc_dictionary_get_data(v2, "AudioDestASBD", length) || length[0] != 40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v8;
  }

  v5 = OUTLINED_FUNCTION_34_15();
  xpc_dictionary_get_data(v5, v6, v7);
  OUTLINED_FUNCTION_60_9();
  v8 = FigXPCMessageCopyCFDictionary();
  if (v8)
  {
    return v8;
  }

  OUTLINED_FUNCTION_1_1();
  v8 = FigXPCMessageCopyCFDictionary();
  if (v8)
  {
    return v8;
  }

  length[1] = 0;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v9 = OUTLINED_FUNCTION_266();
  v11 = v10(v9);
  if (!v11)
  {
    xpc_dictionary_set_int64(v1, "TrackIDOut", 0);
  }

  return v11;
}

uint64_t FigRemakerFamilyServer_WriterAddVideoTrackWithCompression(uint64_t a1)
{
  v28 = *MEMORY[0x1E6960C70];
  if (!a1 || (OUTLINED_FUNCTION_8_38(), v4 = CFGetTypeID(v3), v4 != FigAssetWriterGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
    return CMTime;
  }

  xpc_dictionary_get_int64(v2, "Width");
  xpc_dictionary_get_int64(v2, "Height");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  xpc_dictionary_get_uint64(v2, "MediaType");
  xpc_dictionary_get_uint64(v2, "VideoCodecType");
  FigXPCMessageCopyCFDictionary();
  FigXPCMessageCopyCFDictionary();
  FigXPCMessageCopyCFDictionary();
  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    return CMTime;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    return CMTime;
  }

  VTable = CMBaseObjectGetVTable();
  v17 = *(VTable + 16);
  v16 = VTable + 16;
  if (!*(v17 + 184))
  {
    return 4294954514;
  }

  OUTLINED_FUNCTION_61_10(v16, v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24, v25, v26, v1, v15, v28);
  v18 = OUTLINED_FUNCTION_266();
  v20 = v19(v18);
  if (!v20)
  {
    xpc_dictionary_set_int64(xdict, "TrackIDOut", 0);
  }

  return v20;
}

void FigRemakerFamilyServer_WriterCopyTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CVPixelBufferPoolRef pool, CFTypeRef cf, CFTypeRef cf1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_570();
  if (!v22)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = v22;
  v26 = CFGetTypeID(v22);
  if (v26 != FigAssetWriterGetTypeID())
  {
    goto LABEL_22;
  }

  int64 = xpc_dictionary_get_int64(v24, "TrackID");
  if (!int64)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_34_15();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_15;
  }

  if (!cf1)
  {
    goto LABEL_22;
  }

  v28 = CFEqual(cf1, @"PixelBufferAndPoolAttributes");
  v29 = *MEMORY[0x1E695E480];
  if (v28)
  {
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v30 && !v30(v25, int64, @"AssetWriterTrack_PixelBufferPool", v29, &pool))
    {
      if (pool)
      {
        Attributes = CVPixelBufferPoolGetAttributes(pool);
        PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(pool);
        if (FigRemote_CreatePixelBufferAndPoolAttributesDictionary(v29, Attributes, PixelBufferAttributes, &cf))
        {
          goto LABEL_15;
        }

LABEL_14:
        FigXPCMessageSetCFObject();
        goto LABEL_15;
      }

LABEL_22:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    v33 = cf1;
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v34 && !v34(v25, int64, v33, v29, &cf))
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (pool)
  {
    CFRelease(pool);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

void FigRemakerFamilyServer_WriterSetTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, CFTypeRef a11, CFTypeRef cf1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_570();
  if (!v22)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = CFGetTypeID(v22);
  if (v25 != FigAssetWriterGetTypeID() || !xpc_dictionary_get_int64(v24, "TrackID"))
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_34_15();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_15;
  }

  if (cf1)
  {
    OUTLINED_FUNCTION_60_9();
    if (FigXPCMessageCopyCFObject())
    {
      goto LABEL_15;
    }

    if (CFEqual(cf1, @"AssetWriterTrack_Metadata"))
    {
      if (FigRemote_CreateMetadataFromBinaryPListData(a11, *MEMORY[0x1E695E480], &cf))
      {
        goto LABEL_15;
      }

      v26 = a11;
      a11 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v26)
      {
        CFRelease(v26);
      }
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v27 = OUTLINED_FUNCTION_69_0();
      v28(v27);
    }
  }

  else
  {
LABEL_22:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  OUTLINED_FUNCTION_860();
}

double FigRemakerFamilyServer_WriterBeginSession(const void *a1, uint64_t a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == FigAssetWriterGetTypeID()))
  {
    if (!FigXPCMessageGetCMTime())
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v5)
      {
        v6 = 0uLL;
        v7 = 0;
        v5(a1, &v6);
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

uint64_t FigRemakerFamilyServer_WriterAddSampleBuffer()
{
  OUTLINED_FUNCTION_570();
  if (!v0 || (v3 = v2, v4 = v1, v5 = CFGetTypeID(v0), v5 != FigAssetWriterGetTypeID()) || (int64 = xpc_dictionary_get_int64(v3, "TrackID")) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    SampleBufferFromSerializedAtomBlockBufferAndSurface = v17;
    v10 = 0;
    goto LABEL_18;
  }

  v7 = CFDictionaryGetValue(*(v4 + 128), int64);
  v8 = v7;
  value = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v9 = xpc_dictionary_get_value(v3, "IOSurface");
  v10 = IOSurfaceLookupFromXPCObject(v9);
  FigXPCMessageCreateBlockBufferData();
  if (!cf)
  {
    if (v8)
    {
      CFRelease(v8);
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, value, v20);
    goto LABEL_16;
  }

  SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
  v12 = *(v4 + 128);
  if (!value)
  {
    CFDictionaryRemoveValue(v12, int64);
    if (SampleBufferFromSerializedAtomBlockBufferAndSurface)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  CFDictionarySetValue(v12, int64, value);
  CFRelease(value);
  if (!SampleBufferFromSerializedAtomBlockBufferAndSurface)
  {
LABEL_14:
    if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      SampleBufferFromSerializedAtomBlockBufferAndSurface = 4294954514;
      goto LABEL_18;
    }

    v14 = OUTLINED_FUNCTION_266();
    v13 = v15(v14);
LABEL_16:
    SampleBufferFromSerializedAtomBlockBufferAndSurface = v13;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return SampleBufferFromSerializedAtomBlockBufferAndSurface;
}

uint64_t FigRemakerFamilyServer_WriterAddPixelBuffer(uint64_t a1, CFTypeRef cf, void *a3)
{
  v36 = *MEMORY[0x1E6960C70];
  v35 = 0;
  if (!cf || (v5 = CFGetTypeID(cf), v5 != FigAssetWriterGetTypeID()) || (int64 = xpc_dictionary_get_int64(a3, "TrackID"), !int64))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_53_11();
  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
LABEL_7:
    v15 = CMTime;
    goto LABEL_18;
  }

  if (xpc_dictionary_get_value(a3, "PixelBuffer"))
  {
    FigXPCServerGetConnectionRefcon();
    CMTime = FigPixelBufferRecipientCopyPixelBufferFromXPCMessage();
    if (CMTime)
    {
      goto LABEL_7;
    }

    v17 = 0;
  }

  else
  {
    value = xpc_dictionary_get_value(a3, "IOSurface");
    v17 = IOSurfaceLookupFromXPCObject(value);
    CMTime = FigXPCMessageCreateBlockBufferData();
    if (CMTime)
    {
      goto LABEL_14;
    }

    CMTime = FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface();
    if (CMTime)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_7_54(CMTime, v8, v9, v10, v11, v12, v13, v14, v31, v33, v34, 0, v36);
  VTable = CMBaseObjectGetVTable();
  v27 = *(VTable + 16);
  v26 = VTable + 16;
  if (!*(v27 + 88))
  {
    v15 = 4294954514;
    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v28 = OUTLINED_FUNCTION_10_40(v26, v19, v20, v21, v22, v23, v24, v25, v32);
  CMTime = v29(cf, int64, 0, v37, v28);
LABEL_14:
  v15 = CMTime;
  if (v17)
  {
LABEL_17:
    CFRelease(v17);
  }

LABEL_18:
  if (v35)
  {
    CFRelease(v35);
  }

  return v15;
}

double FigRemakerFamilyServer_WriterAddTaggedPixelBufferGroup()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if (v0 && (v2 = v1, v3 = CFGetTypeID(v0), v3 == FigAssetWriterGetTypeID()) && xpc_dictionary_get_int64(v2, "TrackID"))
  {
    OUTLINED_FUNCTION_41_13();
    if (!FigXPCMessageGetCMTime())
    {
      if (frs_shouldUseFigPixelBufferMemorySharing_onceToken != -1)
      {
        dispatch_once(&frs_shouldUseFigPixelBufferMemorySharing_onceToken, &__block_literal_global_147);
      }

      FigXPCServerGetConnectionRefcon();
      v5 = FigPixelBufferRecipientCopyTaggedBufferGroupFromXPCMessage();
      if (!v5)
      {
        OUTLINED_FUNCTION_7_54(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27, v28, 0, v30);
        VTable = CMBaseObjectGetVTable();
        v22 = *(VTable + 16);
        v21 = VTable + 16;
        if (*(v22 + 176))
        {
          OUTLINED_FUNCTION_10_40(v21, v14, v15, v16, v17, v18, v19, v20, v26);
          v23 = OUTLINED_FUNCTION_69_0();
          v24(v23);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigRemakerFamilyServer_EstablishPixelBufferRecipient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_565();
  if (FigXPCServerGetConnectionRefcon())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else if (!FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2())
  {
    FigXPCServerSetConnectionRefcon();
  }

  return result;
}

double FigRemakerFamilyServer_WriterEndSession()
{
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if (v1 && (OUTLINED_FUNCTION_261(), v3 = CFGetTypeID(v2), v3 == FigAssetWriterGetTypeID()))
  {
    OUTLINED_FUNCTION_41_13();
    CMTime = FigXPCMessageGetCMTime();
    if (!CMTime)
    {
      OUTLINED_FUNCTION_7_54(CMTime, v5, v6, v7, v8, v9, v10, v11, v25, v27, v28, v29, v30);
      VTable = CMBaseObjectGetVTable();
      v22 = *(VTable + 16);
      v21 = VTable + 16;
      if (*(v22 + 112))
      {
        v23 = OUTLINED_FUNCTION_10_40(v21, v14, v15, v16, v17, v18, v19, v20, v26);
        v24(v0, v31, v23);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t FigRemakerFamilyServer_WriterBeginPass(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_565(), v4 = CFGetTypeID(v3), v4 == FigAssetWriterGetTypeID()) && (int64 = xpc_dictionary_get_int64(v2, "TrackID"), int64))
  {
    v6 = FigXPCMessageCopyCFDictionary();
    if (!v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (!v7)
      {
        return 4294954514;
      }

      return v7(v1, int64, 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return v6;
}

void frs_FinalizeClient(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  *(a1 + 48) = 1;
  v2 = &qword_1ED4CAEF0;
  if (*(a1 + 32))
  {
    frs_runningStatsUpdateProgress(a1);
    FigSimpleMutexLock();
    v3 = &qword_1ED4CAEF0;
    do
    {
      v3 = *v3;
      if (!v3)
      {
        FigSimpleMutexUnlock();
        goto LABEL_8;
      }
    }

    while (*(v3 + 2) != *(a1 + 16));
    FigSimpleMutexUnlock();
    if (v3[2])
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
    }

LABEL_8:
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 32) = 0;
      }
    }
  }

  cf = 0;
  value = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v33 = value;
  v34 = timescale;
  FigApplicationStateMonitorCopyClientBundleIdentifierIfAvailable();
  epoch = v8;
  flags = v7;
  if (*(a1 + 166))
  {
    v11 = *(a1 + 184);
    epoch = v8;
    flags = v7;
    if (v11 >= 1)
    {
      epoch = v8;
      flags = v7;
      if (*(a1 + 168) >= 1)
      {
        OUTLINED_FUNCTION_63_7(v11, v30, time.value);
        value = time.value;
        flags = time.flags;
        timescale = time.timescale;
        epoch = time.epoch;
      }
    }
  }

  v12 = *(a1 + 192);
  if (v12 >= 1 && *(a1 + 184) >= 1)
  {
    OUTLINED_FUNCTION_63_7(v12, v30, time.value);
    v33 = time.value;
    v7 = time.flags;
    v34 = time.timescale;
    v8 = time.epoch;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v14 = Mutable;
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetFloat32();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    if (flags)
    {
      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      CMTimeGetSeconds(&time);
      FigCFDictionarySetFloat();
    }

    if (v7)
    {
      time.value = v33;
      time.timescale = v34;
      time.flags = v7;
      time.epoch = v8;
      CMTimeGetSeconds(&time);
      FigCFDictionarySetFloat();
    }

    FigCFDictionarySetValue();
    FigRemakerReportOneRTCMessage(*(a1 + 152), 2, v14);
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (*(a1 + 88))
  {
    FigRemote_RemoveReleaseAndClearLayerHost((a1 + 104));
    if (*(a1 + 120))
    {
      FigRemote_RemoveReleaseAndClearCAImageQueuesAndSlotIDs(*(a1 + 96), (a1 + 112), (a1 + 120));
    }

    FigRemote_ReleaseAndClearLocalCAContextAndShutDownCAServer((a1 + 96), MEMORY[0x1E69E96A0]);
  }

  v15 = &qword_1ED4CAEE8;
  FigSimpleMutexLock();
  v16 = &qword_1ED4CAEE8;
  do
  {
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_54;
    }
  }

  while (v16 != a1);
  if (*(a1 + 49))
  {
    v17 = *(a1 + 16);
  }

  else
  {
    v17 = 0;
  }

  for (i = qword_1ED4CAEE8; i != a1; i = *i)
  {
    v15 = i;
  }

  *v15 = *i;
  --_MergedGlobals_79;
  FigSimpleMutexUnlock();
  if (v17)
  {
    FigSimpleMutexLock();
    do
    {
      v2 = *v2;
      if (!v2)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, LODWORD(time.value), time.timescale);
        goto LABEL_54;
      }
    }

    while (*(v2 + 2) != v17);
    v19 = *(v2 + 3) - 1;
    *(v2 + 3) = v19;
    if (v19 || !v2[2])
    {
LABEL_54:
      FigSimpleMutexUnlock();
      goto LABEL_55;
    }

    v20 = &qword_1ED4CAEF0;
    v21 = &qword_1ED4CAEF0;
    while (1)
    {
      v21 = *v21;
      if (!v21)
      {
        break;
      }

      if (v2 == v21)
      {
        for (j = qword_1ED4CAEF0; j != v2; j = *j)
        {
          v20 = j;
        }

        *v20 = *j;
        --_MergedGlobals_79;
        break;
      }
    }

    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v29 = v2[2];
    if (v29)
    {
      CFRelease(v29);
      v2[2] = 0;
    }

    free(v2);
  }

LABEL_55:
  *(a1 + 8) = 0;
  v23 = *(a1 + 128);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 128) = 0;
  }

  v24 = *(a1 + 136);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 136) = 0;
  }

  v25 = *(a1 + 24);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 24) = 0;
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    os_release(v26);
    *(a1 + 40) = 0;
  }

  v27 = *(a1 + 144);
  if (v27)
  {
    v28 = *v27;
    if (!*v27 || (*v27 = 0, xpc_release(v28), (v27 = *(a1 + 144)) != 0))
    {
      *(a1 + 144) = 0;
      free(v27);
    }
  }

  bzero(a1, 0xD0uLL);
  free(a1);
}

uint64_t fragmentedHeaderDataCallback(uint64_t a1, xpc_connection_t *a2)
{
  v3 = FigXPCCreateBasicMessage();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = FigXPCMessageSetBlockBuffer();
    if (!v4)
    {
      xpc_connection_send_message(*a2, 0);
    }
  }

  FigXPCRelease();
  return v4;
}

uint64_t fragmentedMediaDataCallback(uint64_t a1, uint64_t a2, xpc_connection_t *a3)
{
  v4 = FigXPCCreateBasicMessage();
  if (v4 || (v4 = FigXPCMessageSetBlockBuffer(), v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = FigXPCMessageSetCFDictionary();
    if (!v5)
    {
      xpc_connection_send_message(*a3, 0);
    }
  }

  FigXPCRelease();
  return v5;
}

void FigRemakerServerStart_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_RemakerStartOutput_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_ReaderStartExtractionForTimeRanges_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_WriterMarkEndOfDataForTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_WriterMarkEndOfDataForTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_WriterFinish_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_WriterFinishAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_WriterEndPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_WriterEndPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemakerFamilyServer_WriterFlush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frs_MakeWrapperForRemakerFamilyInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frs_MakeWrapperForRemakerFamilyInternal_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  v5 = v4;
  if (v4)
  {
    FigRemakerFamilyServer_Destroy(a1, 0);
  }

  *a2 = v5;
}

void frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigBufferedAirPlaySubPipeManagerForRenderPipelineCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const __CFDictionary *a6, void *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  value = 0;
  v44 = 0;
  memset(&v42, 0, sizeof(v42));
  CMTimeMake(&v42, 0, 1000);
  memset(&v41, 0, sizeof(v41));
  CMTimeMake(&v41, 1, 1000);
  BOOLean = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v11 = a2;
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || !a4 || !a3 || !a7)
  {
    OUTLINED_FUNCTION_5_8();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_41;
  }

  v12 = a7;
  if (qword_1ED4CAF18 != -1)
  {
    dispatch_once(&qword_1ED4CAF18, &__block_literal_global_111);
  }

  if (qword_1ED4CAF08 != -1)
  {
    dispatch_once(&qword_1ED4CAF08, &__block_literal_global_56);
  }

  CMDerivedObjectCreate();
  if (!v44)
  {
    goto LABEL_39;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 144) = CFRetain(a4);
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 40) = CFRetain(a3);
  v14 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 72) = v14;
  if (!v14)
  {
    goto LABEL_39;
  }

  v15 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 32) = v15;
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = a5;
  if (a5)
  {
    v16 = CFRetain(a5);
  }

  *(DerivedStorage + 48) = v16;
  *(DerivedStorage + 56) = 0xC12E847FC0000000;
  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 168) = 0;
  *(DerivedStorage + 178) = 0;
  FigBufferedAirPlayOutputGetCMBaseObject();
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = *MEMORY[0x1E695E480];
  v21 = v19(v18, @"ALACIsAllowed", *MEMORY[0x1E695E480], &BOOLean);
  if (v21)
  {
LABEL_41:
    v32 = v21;
    goto LABEL_25;
  }

  v22 = BOOLean;
  if (BOOLean)
  {
    v22 = CFBooleanGetValue(BOOLean);
  }

  *(DerivedStorage + 177) = v22;
  v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 24) = v23;
  if (!v23)
  {
LABEL_39:
    v32 = 4294954510;
    goto LABEL_25;
  }

  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v24 = OUTLINED_FUNCTION_312();
  v21 = CMBufferQueueCreate(v24, v25, v26, v27);
  if (v21)
  {
    goto LABEL_41;
  }

  v28 = *(DerivedStorage + 112);
  v46 = v41;
  v45 = v42;
  FigSampleBufferConsumerCreateForBufferQueue(v28, &v46.value, &v45.value, (DerivedStorage + 80));
  if (v21)
  {
    goto LABEL_41;
  }

  v21 = CMBufferQueueInstallTriggerWithIntegerThreshold(*(DerivedStorage + 112), bapspManager_sourceDataBecameReady, *(DerivedStorage + 24), 11, 0, (DerivedStorage + 120));
  if (v21)
  {
    goto LABEL_41;
  }

  v21 = FigSampleBufferConsumerCreateForSampleBufferConsumer("sbcMediator", (DerivedStorage + 88));
  if (v21)
  {
    goto LABEL_41;
  }

  v29 = *(DerivedStorage + 88);
  v30 = *(DerivedStorage + 24);
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v31)
  {
LABEL_24:
    v32 = 4294954514;
    goto LABEL_25;
  }

  v21 = v31(v29, bapspManager_mediatorLowWaterTriggerCallback, v30, DerivedStorage + 128);
  if (v21)
  {
    goto LABEL_41;
  }

  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v21 = CMBufferQueueCreate(v20, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 160));
  if (v21)
  {
    goto LABEL_41;
  }

  *(DerivedStorage + 96) = CFRetain(v11);
  *(DerivedStorage + 136) = 0;
  *DerivedStorage = 0;
  if (a6 && CFDictionaryGetValueIfPresent(a6, @"LoggingID", &value))
  {
    CFStringGetCString(value, DerivedStorage, 20, 0x600u);
  }

  v35 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 180) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 196) = *(v35 + 16);
  v36 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 204) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 220) = *(v36 + 16);
  *(DerivedStorage + 228) = 1;
  if (dword_1ED4CAF04)
  {
    CMTimeMake(&v46, dword_1ED4CAF04, 1000);
    *(DerivedStorage + 204) = v46;
    if (_MergedGlobals_80)
    {
      *(DerivedStorage + 228) = 2;
    }
  }

  if (dword_1EAF17468)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v32 = 0;
  *v12 = v44;
  v44 = 0;
LABEL_25:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  bapspManager_releaseAsync(v44);
  return v32;
}

void bapspManager_sourceDataBecameReady(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    if (!*(CMBaseObjectGetDerivedStorage() + 178))
    {
      CFRetain(v2);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v5 = __bapspManager_sourceDataBecameReady_block_invoke;
      v6 = &__block_descriptor_tmp_143_0;
      v7 = v2;
      dispatch_async(v3, block);
    }

    CFRelease(v2);
  }
}

void bapspManager_mediatorLowWaterTriggerCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    if (!*(CMBaseObjectGetDerivedStorage() + 178))
    {
      CFRetain(v2);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v5 = __bapspManager_mediatorLowWaterTriggerCallback_block_invoke;
      v6 = &__block_descriptor_tmp_144;
      v7 = v2;
      dispatch_async(v3, block);
    }

    CFRelease(v2);
  }
}

void bapspManager_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    dispatch_get_global_queue(0, 0);
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    v4 = __bapspManager_releaseAsync_block_invoke;
    v5 = &__block_descriptor_tmp_145_0;
    v6 = a1;
    dispatch_async(v2, block);
  }
}

uint64_t bapspManager_invalidate(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = &v49;
  OUTLINED_FUNCTION_20_20();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (dword_1EAF17468)
  {
    v12 = OUTLINED_FUNCTION_16_29(qword_1EAF17460, v4, v5, v6, v7, v8, v9, v10, v39, v40, v41, block, v43, v44, v45, v46, v47, v48, SBYTE2(v48), 0, 0);
    os_log_type_enabled(v12, BYTE3(v48));
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v51 = 136315906;
      OUTLINED_FUNCTION_12_36();
      v52 = a1;
      v53 = 2082;
      v54 = v13;
      v55 = 1024;
      v56 = v14;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v15, v16, v17, v18, v19, v12, BYTE3(v48), v20);
    }

    OUTLINED_FUNCTION_7();
    DerivedStorage = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(v11 + 178))
  {
    *(v11 + 178) = 1;
    v21 = *(v11 + 9);
    if (v21)
    {
      dispatch_sync(v21, &__block_literal_global_126);
    }

    v22 = *(v11 + 11);
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v23)
    {
      v23(v22, @"DownstreamConsumer", 0);
    }

    *(v50 + 6) = 0;
    OUTLINED_FUNCTION_6_31();
    v43 = 0x40000000;
    v44 = __bapspManager_invalidate_block_invoke_2;
    v45 = &unk_1E748DE58;
    v46 = &v49;
    v47 = a1;
    dispatch_sync(v24, &block);
    v4 = *(v11 + 15);
    if (v4)
    {
      CMBufferQueueRemoveTrigger(*(v11 + 14), v4);
      *(v11 + 15) = 0;
    }

    v25 = *(v11 + 16);
    if (v25)
    {
      v26 = *(v11 + 11);
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v27)
      {
        v27(v26, v25);
      }

      *(v11 + 16) = 0;
    }

    v28 = *(v11 + 5);
    if (v28)
    {
      CFRelease(v28);
      *(v11 + 5) = 0;
    }

    v29 = *(v11 + 6);
    if (v29)
    {
      CFRelease(v29);
      *(v11 + 6) = 0;
    }

    v30 = *(v11 + 18);
    if (v30)
    {
      CFRelease(v30);
      *(v11 + 18) = 0;
    }

    v31 = *(v11 + 19);
    if (v31)
    {
      CFRelease(v31);
      *(v11 + 19) = 0;
    }

    v32 = *(v11 + 10);
    if (v32)
    {
      CFRelease(v32);
      *(v11 + 10) = 0;
    }

    v33 = *(v11 + 14);
    if (v33)
    {
      CFRelease(v33);
      *(v11 + 14) = 0;
    }

    v34 = *(v11 + 11);
    if (v34)
    {
      CFRelease(v34);
      *(v11 + 11) = 0;
    }

    v35 = *(v11 + 12);
    if (v35)
    {
      CFRelease(v35);
      *(v11 + 12) = 0;
    }

    v36 = *(v11 + 20);
    if (v36)
    {
      CFRelease(v36);
      *(v11 + 20) = 0;
    }

    v37 = *(v11 + 8);
    if (v37)
    {
      CFRelease(v37);
      *(v11 + 8) = 0;
    }

    DerivedStorage = *(v11 + 21);
    if (DerivedStorage)
    {
      CFRelease(DerivedStorage);
      *(v11 + 21) = 0;
    }
  }

  OUTLINED_FUNCTION_26_20(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v39, v40, v41, block, v43, v44, v45, v46, v47, v48);
  return 0;
}

void bapspManager_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = DerivedStorage;
  if (dword_1EAF17468)
  {
    v14 = OUTLINED_FUNCTION_9_41(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v31, v33, v35, v37, SBYTE2(v37), SBYTE3(v37), SHIDWORD(v37));
    OUTLINED_FUNCTION_311(v14, v15, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v39, v40, v41);
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v1, v2, v27);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  bapspManager_invalidate(a1);
  v28 = v13[9];
  if (v28)
  {
    dispatch_release(v28);
    v13[9] = 0;
  }

  v29 = v13[4];
  if (v29)
  {
    dispatch_release(v29);
    v13[4] = 0;
  }

  v30 = v13[3];
  if (v30)
  {
    CFRelease(v30);
  }
}

uint64_t bapspManager_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = 0;
  v29 = &v28;
  OUTLINED_FUNCTION_20_20();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 178))
  {
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    v21 = __bapspManager_copyProperty_block_invoke;
    v22 = &unk_1E748DF50;
    v23 = &v28;
    v24 = a1;
    v25 = a2;
    v26 = a3;
    v27 = a4;
    dispatch_sync(v16, block);
  }

  v17 = *(v29 + 6);
  OUTLINED_FUNCTION_26_20(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v19, block[0], block[1], v21, v22, v23, v24, v25, v26, v27);
  return v17;
}

uint64_t bapspManager_clearCurrentSubPipe(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 104))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_16_6();
  result = v5(v4);
  if (result)
  {
    return result;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    return 4294954514;
  }

  v7 = OUTLINED_FUNCTION_16_6();
  result = v8(v7);
  if (result)
  {
    return result;
  }

  result = bapspManager_removeListenersForSubPipe(a1, *(v3 + 104));
  if (result)
  {
    return result;
  }

  FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
  if (!v9)
  {
    return 4294954516;
  }

  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v11)
  {
    return 4294954514;
  }

  result = v11(v10);
  if (!result)
  {
    result = *(v3 + 104);
    if (result)
    {
      CFRelease(result);
      result = 0;
      *(v3 + 104) = 0;
    }
  }

  return result;
}

uint64_t bapspManager_removeListenersForSubPipe(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListeners();
}

void bapspManager_subPipeDecoderError(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v36[0] = 0;
  v36[1] = v36;
  OUTLINED_FUNCTION_20_20();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 178))
  {
    v14 = DerivedStorage;
    if (dword_1EAF17468)
    {
      v15 = OUTLINED_FUNCTION_16_29(qword_1EAF17460, v7, v8, v9, v10, v11, v12, v13, v26, v27, v28, block, v30, v31, v32, v33, v34, v35, SBYTE2(v35), 0, 0);
      if (os_log_type_enabled(v15, BYTE3(v35)))
      {
        v16 = HIDWORD(v35);
      }

      else
      {
        v16 = HIDWORD(v35) & 0xFFFFFFFE;
      }

      if (v16)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v37 = 136316162;
        OUTLINED_FUNCTION_12_36();
        v38 = a2;
        OUTLINED_FUNCTION_17_28();
        v39 = a4;
        v40 = v17;
        v41 = v18;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v15, BYTE3(v35), v24);
      }

      OUTLINED_FUNCTION_7();
      DerivedStorage = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v14 + 136))
    {
      if (a2)
      {
        CFRetain(a2);
      }

      OUTLINED_FUNCTION_6_31();
      v30 = 0x40000000;
      v31 = __bapspManager_subPipeDecoderError_block_invoke;
      v32 = &unk_1E748DE80;
      v33 = v36;
      v34 = a2;
      dispatch_async(v25, &block);
    }
  }

  OUTLINED_FUNCTION_26_20(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v26, v27, v28, block, v30, v31, v32, v33, v34, v35);
}

uint64_t bapspManager_notificationsFromSubPipe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = FigCFEqual();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

void bapspManager_subPipeFinishedProcessingData(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v37[0] = 0;
  v37[1] = v37;
  OUTLINED_FUNCTION_20_20();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 178))
  {
    v15 = DerivedStorage;
    if (dword_1EAF17468)
    {
      v16 = OUTLINED_FUNCTION_16_29(qword_1EAF17460, v8, v9, v10, v11, v12, v13, v14, v27, v28, block, v30, v31, v32, v33, v34, v35, v36, SBYTE2(v36), 0, 0);
      if (os_log_type_enabled(v16, BYTE3(v36)))
      {
        v17 = HIDWORD(v36);
      }

      else
      {
        v17 = HIDWORD(v36) & 0xFFFFFFFE;
      }

      if (v17)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v38 = 136316162;
        OUTLINED_FUNCTION_12_36();
        v39 = a2;
        OUTLINED_FUNCTION_17_28();
        v40 = a4;
        v41 = v18;
        v42 = v19;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v16, BYTE3(v36), v25);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a2)
    {
      CFRetain(a2);
    }

    v26 = *(v15 + 72);
    block = MEMORY[0x1E69E9820];
    v30 = 0x40000000;
    v31 = __bapspManager_subPipeFinishedProcessingData_block_invoke;
    v32 = &unk_1E748DF28;
    v34 = a3;
    v35 = a2;
    v33 = v37;
    dispatch_async(v26, &block);
  }

  OUTLINED_FUNCTION_26_20(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v27, v28, block, v30, v31, v32, v33, v34, v35, v36);
}

void __bapspManager_subPipeDecoderError_block_invoke(uint64_t a1)
{
  v2 = bapspManager_disconnectSbufBridge(*(a1 + 40));
  OUTLINED_FUNCTION_0_5(v2);
  if (!v3)
  {
    v4 = bapspManager_clearCurrentSubPipe(*(a1 + 40));
    OUTLINED_FUNCTION_0_5(v4);
    if (!v5)
    {
      bapspManager_setSubPipeTerminationInFlight(*(a1 + 40), 0);
      bapspManager_scheduleProcessingDataIfPossible(*(a1 + 40));
    }
  }

  v6 = *(a1 + 40);

  bapspManager_releaseAsync(v6);
}

uint64_t bapspManager_disconnectSbufBridge(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = DerivedStorage;
  if (dword_1EAF17468)
  {
    v14 = OUTLINED_FUNCTION_9_41(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v31, v33, v35, v37, SBYTE2(v37), SBYTE3(v37), SHIDWORD(v37));
    OUTLINED_FUNCTION_311(v14, v15, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v39, v40, v41);
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v1, v2, v27);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v13 + 178))
  {
    return 0;
  }

  v28 = *(v13 + 88);
  v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v29)
  {
    return v29(v28, @"DownstreamConsumer", 0);
  }

  else
  {
    return 4294954514;
  }
}

void __bapspManager_dequeueInspectSendSampleBuffer_block_invoke(uint64_t a1)
{
  v2 = a1;
  v174 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 178))
  {
    v3 = 0;
    allocator = *MEMORY[0x1E695E480];
    v4 = *MEMORY[0x1E6962DF8];
    v5 = *MEMORY[0x1E6962E00];
    value = *MEMORY[0x1E695E4D0];
    v151 = *MEMORY[0x1E6962E10];
    while (1)
    {
      v6 = CMBufferQueueCopyHead(*(*(v2 + 32) + 112));
      if (!v6)
      {
        goto LABEL_230;
      }

      v7 = v6;
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v6);
      v8 = *(v2 + 40);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v10 = *MEMORY[0x1E6960C70];
      *&v160.value = *MEMORY[0x1E6960C70];
      v11 = *(MEMORY[0x1E6960C70] + 16);
      v160.epoch = v11;
      v159 = 0;
      v157 = v3;
      v158 = 0;
      if (*(DerivedStorage + 178))
      {
        v2 = a1;
LABEL_173:
        v116 = *(*(v2 + 32) + 88);
        v117 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v117)
        {
          v117(v116, v7);
        }

        v118 = CMBufferQueueDequeueAndRetain(*(*(v2 + 32) + 112));
        if (v118)
        {
          CFRelease(v118);
        }

        goto LABEL_177;
      }

      v12 = DerivedStorage;
      if (*(DerivedStorage + 56) == -999999.875)
      {
        OUTLINED_FUNCTION_82();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v142, sampleSizeArray);
LABEL_70:
        v55 = 1;
        goto LABEL_71;
      }

      v154 = v10;
      CMSampleBufferGetOutputPresentationTimeStamp(&v160, v7);
      if (*(v12 + 104))
      {
        FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
        v14 = v13;
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v15 || v15(v14, @"SubPipeType", allocator, &v158))
        {
          goto LABEL_70;
        }
      }

      CMBaseObjectGetDerivedStorage();
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v7);
      CMGetAttachment(v7, v4, 0);
      v16 = OUTLINED_FUNCTION_23_27();
      if (epoch)
      {
        v17 = OUTLINED_FUNCTION_16_6();
        bapspManager_setSubPipeTerminationInFlight(v17, v18);
      }

      if (v16)
      {
        v19 = OUTLINED_FUNCTION_16_6();
        bapspManager_setSubPipeTerminationInFlight(v19, v20);
      }

      if (*(v12 + 216))
      {
        v21 = CMBaseObjectGetDerivedStorage();
        cf = 0;
        type = OS_LOG_TYPE_DEFAULT;
        if (*(v21 + 216))
        {
          v22 = v21;
          if (*(v21 + 104))
          {
            FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
            v24 = v23;
            v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v25)
            {
              v25(v24, @"SubPipeType", allocator, &cf);
            }
          }

          CMSampleBufferGetOutputDuration(&time1, v7);
          v164 = time1.value;
          flags = time1.flags;
          timescale = time1.timescale;
          if (time1.flags)
          {
            epoch = time1.epoch;
            time1.value = v164;
            time1.timescale = timescale;
            time2 = **&MEMORY[0x1E6960CC0];
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              time2 = *(v22 + 180);
              rhs.value = v164;
              rhs.timescale = timescale;
              rhs.flags = flags;
              rhs.epoch = epoch;
              CMTimeAdd(&time1, &time2, &rhs);
              *(v22 + 180) = time1;
            }
          }

          if (*(v22 + 104) && ((*(v22 + 192) & 1) == 0 || (time1 = *(v22 + 180), time2 = *(v22 + 204), CMTimeCompare(&time1, &time2) < 1)))
          {
            v29 = 0;
          }

          else
          {
            v27 = MEMORY[0x1E6960CC0];
            *(v22 + 180) = *MEMORY[0x1E6960CC0];
            *(v22 + 196) = *(v27 + 16);
            if (*(v22 + 228) == 2)
            {
              if (FigCFEqual())
              {
                v28 = 4;
              }

              else
              {
                v28 = 3;
              }

              *(v22 + 228) = v28;
            }

            v29 = 1;
          }

          v30 = *(v22 + 228);
          switch(v30)
          {
            case 3:
              v31 = 0;
              SubPipeTypeForSbuf = @"SubPipeTypeTranscode";
              break;
            case 4:
              v31 = 0;
              SubPipeTypeForSbuf = @"SubPipeTypePassthrough";
              break;
            case 1:
              SubPipeTypeForSbuf = bapspManager_findSubPipeTypeForSbuf(v8, v7, &type);
              v31 = type != OS_LOG_TYPE_DEFAULT;
              break;
            default:
              v31 = 0;
              SubPipeTypeForSbuf = 0;
              break;
          }

          v159 = (v29 | v31) & 1;
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          SubPipeTypeForSbuf = 0;
        }
      }

      else
      {
        SubPipeTypeForSbuf = bapspManager_findSubPipeTypeForSbuf(v8, v7, &v159);
      }

      if (v159)
      {
        break;
      }

LABEL_151:
      v105 = CMBaseObjectGetDerivedStorage();
      CMGetAttachment(v7, v4, 0);
      v106 = OUTLINED_FUNCTION_23_27();
      v107 = v106;
      if (epoch && !v105[13])
      {
        if (v8)
        {
          CFRetain(v8);
        }

        v109 = v105[4];
        time1.value = MEMORY[0x1E69E9820];
        *&time1.timescale = 0x40000000;
        time1.epoch = __bapspManager_PostInspectSampleBuffer_block_invoke;
        v172 = &__block_descriptor_tmp_133_1;
        v173 = v8;
        dispatch_async(v109, &time1);
        if (!v107)
        {
          goto LABEL_161;
        }

LABEL_154:
        if (!v105[13])
        {
          bapspManager_postNotification(v8, @"PlayResourceReleased", 0);
          if (v8)
          {
            CFRetain(v8);
          }

          v108 = v105[4];
          time2.value = MEMORY[0x1E69E9820];
          *&time2.timescale = 0x40000000;
          time2.epoch = __bapspManager_PostInspectSampleBuffer_block_invoke_2;
          v167 = &__block_descriptor_tmp_134_1;
          *v168 = v8;
          dispatch_async(v108, &time2);
        }

        goto LABEL_161;
      }

      if (v106)
      {
        goto LABEL_154;
      }

LABEL_161:
      v110 = CMBaseObjectGetDerivedStorage();
      isMarkerSbuf = fbapspManager_isMarkerSbuf(v7);
      v112 = *(v110 + 160);
      if (isMarkerSbuf)
      {
        CMBufferQueueEnqueue(v112, v7);
      }

      else
      {
        CMBufferQueueReset(v112);
      }

      v2 = a1;
      FormatDescription = CMSampleBufferGetFormatDescription(v7);
      if (FormatDescription)
      {
        v114 = FormatDescription;
        v115 = v105[18];
        if (v115)
        {
          if (!CMAudioFormatDescriptionEqual(FormatDescription, v115, 0xFu, 0))
          {
            epoch = v105[18];
            v105[18] = v114;
            CFRetain(v114);
            if (epoch)
            {
              CFRelease(epoch);
            }
          }
        }

        else
        {
          v105[18] = FormatDescription;
          CFRetain(FormatDescription);
        }
      }

      v55 = 1;
LABEL_170:
      if (v158)
      {
        CFRelease(v158);
      }

      if (v55)
      {
        goto LABEL_173;
      }

LABEL_177:
      CFRelease(v7);
      if (!bapspManager_dataFlowIsAllowed(*(v2 + 40)))
      {
        if (v157 != 5)
        {
          goto LABEL_230;
        }

LABEL_229:
        bapspManager_scheduleProcessingDataIfPossible(*(v2 + 40));
        goto LABEL_230;
      }

      v3 = v157 + 1;
      if (v157 == 4)
      {
        goto LABEL_229;
      }
    }

    v33 = *(v12 + 104);
    epoch = CMBaseObjectGetDerivedStorage();
    v34 = *(epoch + 104);
    if (v33)
    {
      if (!v34)
      {
        goto LABEL_72;
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time2, v7);
      rhs.value = 0;
      if ((time2.flags & 1) == 0)
      {
        v35 = 0;
        v36 = allocator;
LABEL_52:
        v45 = OUTLINED_FUNCTION_312();
        v48 = CMSampleBufferCreate(v45, v46, 1u, 0, 0, 0, 0, v47, v35, 0, 0, &rhs);
        if (v48)
        {
          goto LABEL_58;
        }

        if (v4)
        {
          CMSetAttachment(rhs.value, v4, value, 1u);
        }

        if (!rhs.value)
        {
LABEL_58:
          v49 = 0;
          if (!v35)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v49 = CFRetain(rhs.value);
          if (!v35)
          {
            goto LABEL_60;
          }
        }

        CFAllocatorDeallocate(v36, v35);
        goto LABEL_60;
      }

      v36 = allocator;
      v43 = MEMORY[0x19A8CC720](allocator, 72, 0x1000040FF89C88ELL, 0);
      if (v43)
      {
        v35 = v43;
        CMTimeMake(&time1, 0, 1);
        v44 = *&time1.value;
        *(v35 + 16) = time1.epoch;
        *v35 = v44;
        *(v35 + 24) = time2;
        *(v35 + 48) = v154;
        *(v35 + 64) = v11;
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_82();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v142, sampleSizeArray);
      v48 = v139;
      v49 = 0;
LABEL_60:
      if (rhs.value)
      {
        CFRelease(rhs.value);
      }

      if (v48 || (v50 = OUTLINED_FUNCTION_16_6(), bapspManager_setSubPipeTerminationInFlight(v50, v51), v52 = *(epoch + 88), (v53 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v53(v52, v49))
      {
        v54 = 0;
        if (!v49)
        {
          goto LABEL_69;
        }
      }

      else
      {
        bapspManager_postNotification(v8, @"FinishingSubPipe", 0);
        v54 = 1;
        if (!v49)
        {
LABEL_69:
          if (!v54)
          {
            goto LABEL_70;
          }

LABEL_72:
          v55 = 0;
LABEL_71:
          v2 = a1;
          goto LABEL_170;
        }
      }

      CFRelease(v49);
      goto LABEL_69;
    }

    if (v34)
    {
      OUTLINED_FUNCTION_82();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v142, sampleSizeArray);
      v81 = v138;
      v39 = v151;
      goto LABEL_123;
    }

    v37 = CFEqual(SubPipeTypeForSbuf, @"SubPipeTypePassthrough");
    v38 = CMBaseObjectGetDerivedStorage();
    v39 = v151;
    v150 = epoch;
    if (v37)
    {
      rhs.value = 0;
      v40 = CMSampleBufferGetFormatDescription(v7);
      if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
      {
        v76 = 0;
        MutableCopy = 0;
      }

      else
      {
        OUTLINED_FUNCTION_312();
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (MutableCopy)
        {
          if (v8)
          {
            v42 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v42 = "";
          }

          v155 = CFStringCreateWithCString(allocator, v42, 0x8000100u);
          CFDictionarySetValue(MutableCopy, @"LoggingID", v155);
          FigBufferedAirPlayAudioChainSubPipePassthroughCreate(allocator, *(v38 + 96), v40, MutableCopy, (v38 + 104));
          if (v62 || bapspManager_addListenersForSubPipe(v8, *(v38 + 104)))
          {
            v68 = 0;
          }

          else
          {
            v63 = *(v38 + 152);
            v64 = rhs.value;
            *(v38 + 152) = rhs.value;
            if (v64)
            {
              CFRetain(v64);
            }

            if (v63)
            {
              CFRelease(v63);
            }

            if (dword_1EAF17468)
            {
              LODWORD(v164) = 0;
              LOBYTE(cf) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v66 = v164;
              v147 = os_log_and_send_and_compose_flags_and_os_log_type;
              v145 = cf;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, cf))
              {
                v67 = v66;
              }

              else
              {
                v67 = v66 & 0xFFFFFFFE;
              }

              if (v67)
              {
                if (v8)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                LODWORD(time2.value) = 136315906;
                OUTLINED_FUNCTION_4_91();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v72, v73, v74, v75, &dword_1962D5000, v147, v145, "<<<< FigBufferedAirPlaySubPipeManagerForRenderPipeline >>>> %s: [%p] %{public}s subPipe PASSTHROUGH created %p \n");
              }

              v68 = 1;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              v68 = 1;
            }
          }

          v76 = v155;
LABEL_108:
          if (rhs.value)
          {
            CFRelease(rhs.value);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (v76)
          {
            CFRelease(v76);
          }

          v71 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProcessingMode_Passthrough;
          epoch = v150;
          if ((v68 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_115;
        }

        v76 = 0;
      }

      v68 = 0;
      goto LABEL_108;
    }

    rhs.value = 0;
    v164 = 0;
    v56 = FigCFDictionaryCreateMutableCopy();
    v57 = CMSampleBufferGetFormatDescription(v7);
    if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
    {
      v69 = 0;
      v70 = 0;
      v39 = v151;
      if (!v56)
      {
LABEL_96:
        if (v69)
        {
          CFRelease(v69);
        }

        if (rhs.value)
        {
          CFRelease(rhs.value);
        }

        if (v164)
        {
          CFRelease(v164);
        }

        v71 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProcessingMode_Transcode;
        if (!v70)
        {
          goto LABEL_70;
        }

LABEL_115:
        v77 = CFDictionaryCreate(allocator, kFigBufferedAirPlaySubPipeManagerForRenderPipelineProperty_ProcessingMode, v71, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        bapspManager_postNotification(v8, @"ProcessingModeChanged", v77);
        bapspManager_setLoudnessInfoOnSubPipe(v8);
        bapspManager_setAudioProcessingTapOnSubPipe(v8);
        v78 = *(epoch + 88);
        v79 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v79)
        {
          v80 = v79(v78);
          if (v80)
          {
            v81 = v80;
            if (!v77)
            {
              goto LABEL_123;
            }
          }

          else
          {
            if (*(epoch + 228) != 1)
            {
              *(epoch + 228) = 2;
            }

            v81 = 0;
            v82 = MEMORY[0x1E6960CC0];
            *(epoch + 180) = *MEMORY[0x1E6960CC0];
            *(epoch + 196) = *(v82 + 16);
            if (!v77)
            {
LABEL_123:
              if (v81)
              {
                goto LABEL_70;
              }

              v83 = CMBaseObjectGetDerivedStorage();
              rhs.value = 0;
              if (dword_1EAF17468)
              {
                LODWORD(v164) = 0;
                LOBYTE(cf) = 0;
                v84 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                epoch = v164;
                v85 = cf;
                if (os_log_type_enabled(v84, cf))
                {
                  v86 = epoch;
                }

                else
                {
                  v86 = epoch & 0xFFFFFFFE;
                }

                if (v86)
                {
                  if (v8)
                  {
                    v87 = CMBaseObjectGetDerivedStorage();
                  }

                  else
                  {
                    v87 = "";
                  }

                  v88 = *(v83 + 88);
                  v89 = *(v83 + 104);
                  LODWORD(time2.value) = 136316162;
                  *(&time2.value + 4) = "bapspManager_connectSbufBridge";
                  LOWORD(time2.flags) = 2048;
                  *(&time2.flags + 2) = v8;
                  HIWORD(time2.epoch) = 2082;
                  v167 = v87;
                  *v168 = 2048;
                  *&v168[2] = v88;
                  v169 = 2048;
                  v170 = v89;
                  v142 = 52;
                  sampleTimingArray = &time2;
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v90, v91, v92, v93, &dword_1962D5000, v84, v85, "<<<< FigBufferedAirPlaySubPipeManagerForRenderPipeline >>>> %s: [%p] %{public}s trying to CONNECT sbcMediator %p to subPipe %p");
                  epoch = v164;
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v39 = v151;
              }

              if (*(v83 + 178))
              {
                v100 = 0;
              }

              else
              {
                if (!*(v83 + 104))
                {
                  OUTLINED_FUNCTION_82();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v142, sampleSizeArray);
                  goto LABEL_141;
                }

                FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
                v95 = v94;
                v96 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v96)
                {
                  v97 = v96(v95, @"SourceSampleBufferConsumer", allocator, &rhs);
                  if (v97)
                  {
LABEL_141:
                    v100 = v97;
                    goto LABEL_143;
                  }

                  epoch = *(v83 + 88);
                  v98 = rhs.value;
                  v99 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v99)
                  {
                    v97 = v99(epoch, @"DownstreamConsumer", v98);
                    goto LABEL_141;
                  }
                }

                v100 = -12782;
              }

LABEL_143:
              if (rhs.value)
              {
                CFRelease(rhs.value);
              }

              if (v100)
              {
                goto LABEL_70;
              }

              v101 = CMBaseObjectGetDerivedStorage();
              if (*(v101 + 104))
              {
                v102 = v101;
                if (!CMBufferQueueIsEmpty(*(v101 + 160)))
                {
                  v103 = CMBufferQueueDequeueAndRetain(*(v102 + 160));
                  if (v103)
                  {
                    v119 = v103;
                    do
                    {
                      if (!CMGetAttachment(v119, v4, 0) && !CMGetAttachment(v119, v5, 0) && !CMGetAttachment(v119, v39, 0))
                      {
                        v120 = *(v102 + 88);
                        v121 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                        if (v121)
                        {
                          v121(v120, v119);
                        }
                      }

                      CFRelease(v119);
                      v119 = CMBufferQueueDequeueAndRetain(*(v102 + 160));
                    }

                    while (v119);
                  }

                  CMBufferQueueReset(*(v102 + 160));
                }
              }

              v104 = *(v12 + 56);
              time1 = v160;
              if (bapspManager_startAudioChainForSubPipe(v8, v104, &time1, MEMORY[0x1E6960C70]))
              {
                goto LABEL_70;
              }

              goto LABEL_151;
            }
          }
        }

        else
        {
          v81 = -12782;
          if (!v77)
          {
            goto LABEL_123;
          }
        }

        CFRelease(v77);
        goto LABEL_123;
      }
    }

    else
    {
      v58 = *(v38 + 40);
      v59 = rhs.value;
      v60 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v60 || v60(v58, v59, &v164))
      {
        v69 = 0;
        v70 = 0;
        epoch = v150;
        v39 = v151;
        if (!v56)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      if (v8)
      {
        v61 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v61 = "";
      }

      v148 = CFStringCreateWithCString(allocator, v61, 0x8000100u);
      CFDictionarySetValue(v56, @"LoggingID", v148);
      v144 = *(v38 + 96);
      v146 = v164;
      v156 = v56;
      v122 = *(v38 + 176);
      FigGetAllocatorForMedia();
      v123 = OUTLINED_FUNCTION_312();
      v124 = v122;
      v56 = v156;
      FigBufferedAirPlayAudioChainSubPipeTranscodeCreate(v123, v125, v144, v57, v146, v124, v126, v156, (v38 + 104));
      if (v127)
      {
        v70 = 0;
        epoch = v150;
        v39 = v151;
      }

      else
      {
        epoch = v150;
        v39 = v151;
        if (bapspManager_addListenersForSubPipe(v8, *(v38 + 104)))
        {
          v70 = 0;
        }

        else
        {
          v128 = *(v38 + 152);
          v129 = v164;
          *(v38 + 152) = v164;
          if (v129)
          {
            CFRetain(v129);
          }

          v69 = v148;
          if (v128)
          {
            CFRelease(v128);
          }

          if (!dword_1EAF17468)
          {
            v70 = 1;
            if (!v156)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          }

          LODWORD(cf) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v130 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v131 = cf;
          v132 = type;
          if (os_log_type_enabled(v130, type))
          {
            v133 = v131;
          }

          else
          {
            v133 = v131 & 0xFFFFFFFE;
          }

          if (v133)
          {
            if (v8)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LODWORD(time2.value) = 136315906;
            OUTLINED_FUNCTION_4_91();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v134, v135, v136, v137, &dword_1962D5000, v130, v132, "<<<< FigBufferedAirPlaySubPipeManagerForRenderPipeline >>>> %s: [%p] %{public}s subPipe TRANSCODE created %p \n");
          }

          v70 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          epoch = v150;
          v56 = v156;
        }
      }

      v69 = v148;
      if (!v56)
      {
        goto LABEL_96;
      }
    }

LABEL_95:
    CFRelease(v56);
    goto LABEL_96;
  }

LABEL_230:
  v140 = *(v2 + 40);
  if (v140)
  {
    CFRelease(v140);
  }
}

__CFString *bapspManager_findSubPipeTypeForSbuf(uint64_t a1, void *a2, _BYTE *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  formatDescription = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  BOOLean = 0;
  v6 = @"SubPipeTypeTranscode";
  HIBYTE(v60) = 0;
  if (!a3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v61, BOOLean);
    goto LABEL_104;
  }

  v7 = DerivedStorage;
  if (!fbapspManager_isMarkerSbuf(a2))
  {
    *a3 = 0;
    v8 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
    v9 = *MEMORY[0x1E695E4D0];
    if (v8 != *MEMORY[0x1E695E4D0])
    {
      v10 = CMSampleBufferGetFormatDescription(a2);
      v11 = *MEMORY[0x1E695E480];
      if (v10)
      {
        if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
        {
          goto LABEL_104;
        }

        v12 = *(v7 + 40);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (!v13)
        {
          goto LABEL_104;
        }

        if (v13(v12, v66, &v60 + 7))
        {
          goto LABEL_104;
        }

        ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
        if (!ASBD)
        {
          goto LABEL_104;
        }
      }

      else
      {
        ASBD = 0;
      }

      if (*(v7 + 104))
      {
        FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
        v16 = v15;
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17)
        {
          v17(v16, @"SubPipeType", v11, &v61);
        }

        FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
        v19 = v18;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          v20(v19, @"CurrentFormatDescription", v11, &formatDescription);
        }

        v21 = CMAudioFormatDescriptionEqual(formatDescription, v10, 7u, 0) == 0;
      }

      else
      {
        v21 = 0;
      }

      Decryptor = FigSampleBufferGetDecryptor();
      v25 = 1;
      if (Decryptor)
      {
        v23 = Decryptor;
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v24 || v24(v23, *MEMORY[0x1E6961128], v11, &v64) || v64 != v9)
        {
          v25 = 0;
        }
      }

      FigBufferedAirPlayOutputGetCMBaseObject();
      v27 = v26;
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        if (!v28(v27, @"ALACIsAllowed", v11, &BOOLean))
        {
          FigBufferedAirPlayOutputGetCMBaseObject();
          v30 = v29;
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v31)
          {
            if (!v31(v30, @"SupportsReceiverSideSoundCheck", v11, &v63))
            {
              v32 = *(v7 + 177);
              if (v32 == CFBooleanGetValue(BOOLean) || (*(v7 + 177) = CFBooleanGetValue(BOOLean), v34 = CMBaseObjectGetDerivedStorage(), cf = 0, !*(v34 + 104)))
              {
                LOBYTE(v33) = 0;
                goto LABEL_63;
              }

              v35 = v34;
              if (CMSampleBufferGetFormatDescription(a2) && !FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
              {
                v33 = FigEndpointStreamAudioFormatDescriptionGetASBD();
                if (!v33)
                {
                  goto LABEL_61;
                }

                v36 = FigEndpointStreamAudioFormatDescriptionGetASBD();
                if (v36)
                {
                  v37 = *(v35 + 177);
                  if (*(v35 + 177))
                  {
                    v38 = *(v33 + 8);
                    v37 = v38 == 1634492771 || v38 == 1668047203 || v38 == 1902928227 || v38 == 2053923171;
                  }

                  v42 = *(v36 + 8);
                  v59 = v42 == 1634492771 || v42 == 1668047203 || v42 == 1902928227 || v42 == 2053923171;
                  LOBYTE(v33) = v37 != v59;
                  goto LABEL_61;
                }
              }

              LOBYTE(v33) = 0;
LABEL_61:
              if (cf)
              {
                CFRelease(cf);
              }

LABEL_63:
              *(v7 + 176) = CFBooleanGetValue(v63);
              v46 = *(v7 + 56);
              Value = CFBooleanGetValue(BOOLean);
              v48 = 1;
              if (ASBD && !Value)
              {
                v49 = *(ASBD + 8);
                v48 = v49 != 1634492771 && v49 != 1668047203 && v49 != 1902928227 && v49 != 2053923171;
              }

              if (v46 == 1.0 && HIBYTE(v60) != 0 && v25)
              {
                if (*(v7 + 64))
                {
                  v55 = 0;
                }

                else
                {
                  v55 = v48;
                }

                if (!v61)
                {
                  goto LABEL_102;
                }

                if (v55)
                {
                  if (FigCFEqual())
                  {
                    v56 = 1;
                  }

                  else
                  {
                    v56 = v33;
                  }

                  v55 = 1;
                  if (v56)
                  {
                    *a3 = 1;
LABEL_103:
                    v6 = @"SubPipeTypePassthrough";
                    goto LABEL_104;
                  }

                  goto LABEL_101;
                }
              }

              else if (!v61)
              {
                goto LABEL_99;
              }

              if (FigCFEqual())
              {
                v57 = 1;
              }

              else
              {
                v57 = v33;
              }

              if ((v57 & 1) == 0)
              {
                v55 = 0;
LABEL_101:
                if (FigCFEqual() == 0 || !v21)
                {
                  goto LABEL_104;
                }

LABEL_102:
                *a3 = 1;
                if (!v55)
                {
                  goto LABEL_104;
                }

                goto LABEL_103;
              }

LABEL_99:
              *a3 = 1;
            }
          }
        }
      }
    }
  }

LABEL_104:
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v6;
}

uint64_t bapspManager_startAudioChainForSubPipe(uint64_t a1, double a2, uint64_t a3, __int128 *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isSubPipeStarted = bapspManager_isSubPipeStarted(a1);
  result = 0;
  v10 = *(DerivedStorage + 104);
  if (!v10 || isSubPipeStarted)
  {
    return result;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v11)
  {
    return 4294954514;
  }

  result = v11(v10);
  if (result)
  {
    return result;
  }

  v12 = *(DerivedStorage + 104);
  if (a2 == 0.0)
  {
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v13)
    {

      return v13(v12, 1);
    }

    return 4294954514;
  }

  OUTLINED_FUNCTION_18_25();
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v15 = a2;
    v22 = v18;
    v23 = v19;
    v20 = v16;
    v21 = v17;
    v14(v12, &v22, &v20, 0, 1, 1, v15);
  }

  return 0;
}

void __bapspManager_postNotification_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];

  bapspManager_releaseAsync(v3);
}

uint64_t bapspManager_setLoudnessInfoOnSubPipe(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 104);
  if (result)
  {
    v3 = *(DerivedStorage + 168);
    if (v3)
    {
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
      v5 = v4;
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 8);
      result = VTable + 8;
      v8 = *(v7 + 56);
      if (v8)
      {

        return v8(v5, @"LoudnessInfo", v3);
      }
    }
  }

  return result;
}

uint64_t bapspManager_setAudioProcessingTapOnSubPipe(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 104);
  if (result)
  {
    v3 = *(DerivedStorage + 64);
    FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
    v5 = v4;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = VTable + 8;
    v8 = *(v7 + 56);
    if (v8)
    {

      return v8(v5, @"AudioProcessingTap", v3);
    }
  }

  return result;
}

uint64_t bapspManager_addListenersForSubPipe(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterAddWeakListeners();
}

void __bapspManager_subPipeFinishedProcessingData_block_invoke(uint64_t a1)
{
  if (FigCFEqual())
  {
    bapspManager_postNotification(*(a1 + 48), @"PlayResourceReleased", 0);
  }

  v2 = bapspManager_disconnectSbufBridge(*(a1 + 48));
  OUTLINED_FUNCTION_0_5(v2);
  if (!v3)
  {
    v4 = bapspManager_clearCurrentSubPipe(*(a1 + 48));
    OUTLINED_FUNCTION_0_5(v4);
    if (!v5)
    {
      bapspManager_setSubPipeTerminationInFlight(*(a1 + 48), 0);
      bapspManager_scheduleProcessingDataIfPossible(*(a1 + 48));
    }
  }

  v6 = *(a1 + 48);

  bapspManager_releaseAsync(v6);
}

uint64_t __bapspManager_copyProperty_block_invoke(void *a1)
{
  v2 = a1[6];
  v1 = a1[7];
  v3 = a1[8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 178))
  {
LABEL_15:
    v9 = 0;
    return OUTLINED_FUNCTION_12_7(v9);
  }

  v5 = DerivedStorage;
  if (CFEqual(v2, @"SourceSampleBufferConsumer"))
  {
    v6 = *(v5 + 80);
    if (!v6)
    {
      v8 = 0;
      goto LABEL_9;
    }

    Float64 = CFRetain(v6);
LABEL_7:
    v8 = Float64;
LABEL_9:
    v9 = 0;
    *v3 = v8;
    return OUTLINED_FUNCTION_12_7(v9);
  }

  if (CFEqual(v2, @"CurrentRate"))
  {
    Float64 = FigCFNumberCreateFloat64();
    goto LABEL_7;
  }

  v11 = CFEqual(v2, @"CurrentSubpipeType");
  v9 = *(v5 + 104);
  if (v11)
  {
    if (!v9)
    {
      *v3 = 0;
      return OUTLINED_FUNCTION_12_7(v9);
    }

    FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, @"SubPipeType", v1, v3);
    }

    goto LABEL_15;
  }

  if (v9)
  {
    FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v9 = v17(v16, v2, v1, v3);
    }

    else
    {
      v9 = 4294954514;
    }
  }

  return OUTLINED_FUNCTION_12_7(v9);
}

void __bapspManager_setProperty_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 40) + 178))
  {
    if (CFEqual(@"ThreadPriority", *(a1 + 48)))
    {
      v2 = *(a1 + 56);
      if (v2)
      {
        v3 = CFGetTypeID(v2);
        if (v3 == CFNumberGetTypeID())
        {
          if (!*(*(a1 + 40) + 104))
          {
            return;
          }

          v4 = *(a1 + 56);
          FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
          v6 = v5;
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v7)
          {
            v8 = v7(v6, @"ThreadPriority", v4);
          }

          else
          {
            v8 = 4294954514;
          }

          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }

    if (CFEqual(@"DecodeForPrerollRate", *(a1 + 48)))
    {
      v9 = *(a1 + 56);
      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = CFGetTypeID(v9);
      if (v10 != CFNumberGetTypeID())
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_25_20();
      v11 = *(a1 + 64);

      bapspManager_startDataFlowIfRateIsValid(v11);
    }

    else if (CFEqual(@"PipelineRate", *(a1 + 48)))
    {
      v12 = *(a1 + 56);
      if (v12 && (v13 = CFGetTypeID(v12), v13 == CFNumberGetTypeID()))
      {
        OUTLINED_FUNCTION_25_20();
        if (dword_1EAF17468)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        bapspManager_startDataFlowIfRateIsValid(*(a1 + 64));
      }

      else if (!*(*(*(a1 + 32) + 8) + 24))
      {
        goto LABEL_15;
      }
    }

    else if (CFEqual(@"LoudnessInfo", *(a1 + 48)))
    {
      v15 = *(a1 + 56);
      if (!v15 || (v16 = CFGetTypeID(v15), v16 == CFDictionaryGetTypeID()) || !*(a1 + 56))
      {
        v17 = *(*(a1 + 40) + 168);
        if (v17)
        {
          CFRelease(v17);
          *(*(a1 + 40) + 168) = 0;
        }

        v18 = *(a1 + 56);
        if (v18)
        {
          *(*(a1 + 40) + 168) = CFRetain(v18);
        }

        else
        {
          *(*(a1 + 40) + 168) = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!*(*(a1 + 40) + 168))
          {
            goto LABEL_15;
          }
        }

        bapspManager_setLoudnessInfoOnSubPipe(*(a1 + 64));
        *(*(*(a1 + 32) + 8) + 24) = 0;
        return;
      }

      if (!*(*(*(a1 + 32) + 8) + 24))
      {
LABEL_15:
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_16:
        OUTLINED_FUNCTION_12_7(v8);
      }
    }

    else
    {
      if (!CFEqual(@"AudioProcessingTap", *(a1 + 48)))
      {
        return;
      }

      if (*(a1 + 56))
      {
        TypeID = MTAudioProcessingTapGetTypeID();
        if (TypeID != CFGetTypeID(*(a1 + 56)))
        {
          return;
        }

        v20 = *(a1 + 56);
        v21 = *(a1 + 40);
        v22 = *(v21 + 64);
        *(v21 + 64) = v20;
        if (v20)
        {
          CFRetain(v20);
        }
      }

      else
      {
        v23 = *(a1 + 40);
        v22 = *(v23 + 64);
        *(v23 + 64) = 0;
      }

      if (v22)
      {
        CFRelease(v22);
      }

      v24 = *(a1 + 64);

      bapspManager_setAudioProcessingTapOnSubPipe(v24);
    }
  }
}

uint64_t bapspManager_setRateAndAnchorTime(const void *a1, double a2, uint64_t a3, __int128 *a4)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 178))
  {
    OUTLINED_FUNCTION_18_25();
    v12 = *a4;
    v13 = *(a4 + 2);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 64, 0x1020040EB82741ALL, 0);
    if (v8)
    {
      v9 = v8;
      if (a1)
      {
        v10 = CFRetain(a1);
      }

      else
      {
        v10 = 0;
      }

      *v9 = v10;
      *(v9 + 7) = a2;
      *(v9 + 8) = v14;
      *(v9 + 3) = v15;
      *(v9 + 2) = v12;
      *(v9 + 6) = v13;
      dispatch_async_f(*(DerivedStorage + 72), v9, bapspManager_setRateAndAnchorTimeDispatch);
    }
  }

  return 0;
}

void bapspManager_setRateAndAnchorTimeDispatch(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 7);
  v16 = *(a1 + 1);
  v17 = a1[3];
  v14 = *(a1 + 2);
  v15 = a1[6];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 178))
  {
    if ((v5 = DerivedStorage, v6 = CMBaseObjectGetDerivedStorage(), v7 = v6, !*(v6 + 104)) && *(v6 + 56) != -999999.875 || !bapspManager_isSubPipeStarted(v2) && ((v8 = *(v7 + 56), v3 != 0.0) || v8 != -999999.875) && (v3 != 0.0 && v8 == -999999.875 || (v3 != 0.0 || v8 != 0.0) && ((v9 = v3 == 0.0, v8 != 0.0) ? (v10 = 1) : (v9 = 0, v10 = v3 == 0.0), v10 ? (v11 = !v9) : (v11 = 0), !v11)))
    {
      *(v5 + 56) = v3;
      bapspManager_startDataFlowIfRateIsValid(v2);
      v12 = *(v5 + 56);
      v20 = v16;
      v21 = v17;
      v18 = v14;
      v19 = v15;
      bapspManager_startAudioChainForSubPipe(v2, v12, &v20, &v18);
    }
  }

  bapspManager_releaseAsync(*a1);
  v13 = *MEMORY[0x1E695E480];

  CFAllocatorDeallocate(v13, a1);
}

uint64_t __bapspManager_reset_block_invoke(uint64_t result)
{
  if (!*(*(result + 40) + 178))
  {
    v2 = result;
    v3 = bapspManager_disconnectSbufBridge(*(result + 48));
    result = OUTLINED_FUNCTION_0_5(v3);
    if (!v4)
    {
      if (!*(v2 + 56) || (v17 = bapspManager_flushAllSampleBufferConsumers(*(v2 + 48)), result = OUTLINED_FUNCTION_0_5(v17), !v18) && (!*(v2 + 56) || (OUTLINED_FUNCTION_22_21(), !v1) || ((v19 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0 ? (v20 = 4294954514) : (v22 = *MEMORY[0x1E6960CC0], v23 = *(MEMORY[0x1E6960CC0] + 16), v20 = v19(v1, &v22)), result = OUTLINED_FUNCTION_0_5(v20), !v21)))
      {
        OUTLINED_FUNCTION_22_21();
        if (v1)
        {
          v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v5)
          {
            v6 = v5(v1, 1);
          }

          else
          {
            v6 = 4294954514;
          }

          result = OUTLINED_FUNCTION_0_5(v6);
          if (v7)
          {
            return result;
          }

          OUTLINED_FUNCTION_22_21();
          v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          v9 = v8 ? v8(v1, 1) : 4294954514;
          result = OUTLINED_FUNCTION_0_5(v9);
          if (v10)
          {
            return result;
          }

          v11 = bapspManager_removeListenersForSubPipe(*(v2 + 48), *(*(v2 + 40) + 104));
          result = OUTLINED_FUNCTION_0_5(v11);
          if (v12)
          {
            return result;
          }

          FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
          if (v13)
          {
            v14 = v13;
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v15)
            {
              v15(v14);
            }
          }

          v16 = *(*(v2 + 40) + 104);
          if (v16)
          {
            CFRelease(v16);
            *(*(v2 + 40) + 104) = 0;
          }
        }

        return bapspManager_setSubPipeTerminationInFlight(*(v2 + 48), 0);
      }
    }
  }

  return result;
}

uint64_t bapspManager_flushAllSampleBufferConsumers(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 178))
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 80);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(v3);
  if (result)
  {
    return result;
  }

  v6 = *(v2 + 88);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6);
}

void __bapspManager_flush_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 40) + 178))
  {
    v3 = bapspManager_flushAllSampleBufferConsumers(*(a1 + 48));
    OUTLINED_FUNCTION_0_5(v3);
    if (!v4)
    {
      OUTLINED_FUNCTION_22_21();
      if (v1)
      {
        v7 = *(a1 + 56);
        v8 = *(a1 + 72);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v5)
        {
          v9 = v7;
          v10 = v8;
          v6 = v5(v1, &v9);
        }

        else
        {
          v6 = 4294954514;
        }

        OUTLINED_FUNCTION_12_7(v6);
      }
    }
  }
}

void __bapspManager_sourceDataBecameReady_block_invoke(uint64_t a1)
{
  bapspManager_scheduleProcessingDataIfPossible(*(a1 + 32));
  v2 = *(a1 + 32);

  bapspManager_releaseAsync(v2);
}

void __bapspManager_mediatorLowWaterTriggerCallback_block_invoke(uint64_t a1)
{
  bapspManager_scheduleProcessingDataIfPossible(*(a1 + 32));
  v2 = *(a1 + 32);

  bapspManager_releaseAsync(v2);
}

uint64_t FigCPERemoteInitializeWithOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = remoteXPCCPEClient_EnsureClientEstablished();
  if (v3 || (v3 = FigXPCCreateBasicMessage(), v3) || (v3 = FigXPCMessageSetCFString(), v3) || (v3 = FigXPCMessageSetCFDictionary(), v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (!v4)
    {
      v4 = FigXPCMessageCopyCFString();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t FigCPERemoteUninitialize()
{
  v0 = remoteXPCCPEClient_EnsureClientEstablished();
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v1 = FigXPCCreateBasicMessage();
    if (v1 || (v1 = FigXPCMessageSetCFString(), v1) || (v1 = FigXPCMessageSetCFString(), v1))
    {
      v2 = v1;
    }

    else
    {
      v2 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t FigCPERemoteSetStorageLocation(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CAF28 != -1)
  {
    dispatch_once(&qword_1ED4CAF28, &__block_literal_global_57);
  }

  v2 = remoteXPCCPEClient_EnsureClientEstablished();
  if (v2 || (v2 = FigSandboxRegisterURLWithProcessAndCopyRegistration(), v2) || (v2 = FigXPCCreateBasicMessage(), v2) || (v2 = FigXPCMessageSetCFData(), v2) || (v2 = FigXPCMessageSetCFURL(), v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = FigXPCRemoteClientSendSyncMessage();
    if (!v3)
    {
      FigCFDictionarySetValue();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t FigCPERemoteCopySessionRecords(uint64_t a1, uint64_t a2)
{
  v2 = remoteXPCCPEClient_EnsureClientEstablished();
  if (!v2)
  {
    v2 = FigXPCCreateBasicMessage();
    if (!v2)
    {
      v2 = FigXPCMessageSetCFData();
      if (!v2)
      {
        v2 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v2)
        {
          v2 = FigXPCMessageCopyCFDictionary();
        }
      }
    }
  }

  v3 = v2;
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t FigCPERemoteRemoveSessionRecords()
{
  v0 = remoteXPCCPEClient_EnsureClientEstablished();
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v1 = FigXPCCreateBasicMessage();
    if (v1 || (v1 = FigXPCMessageSetCFData(), v1) || (v1 = FigXPCMessageSetCFArray(), v1))
    {
      v2 = v1;
    }

    else
    {
      v2 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t fasb_addFilterGuts()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v3(v1);
  }

  result = fasb_removeFilter();
  if (!result)
  {
    v5 = *(DerivedStorage + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    v7 = v6 ? v6(v1) : -1;
    result = FigAlternateFilterTreeInsertLeaf(v5, v1, v7);
    if (!result)
    {

      return fasb_rebuildFilterTree(v0);
    }
  }

  return result;
}

uint64_t fasb_removeFilter()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigAlternateFilterTreeRemoveLeaf(*(DerivedStorage + 48), v1);
  if (!result)
  {

    return fasb_rebuildFilterTree(v0);
  }

  return result;
}

uint64_t FigAlternateSelectionBossCopyProperty(uint64_t a1, __CFString *a2, uint64_t a3, const __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"AlternateList"))
  {
    v8 = *(DerivedStorage + 24);
    if (!v8)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17488, 4294951782, "<<HLS-FASB>>", 1042, v4);
LABEL_4:
      v10 = v9;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"FilteredAlternateList"))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    if (!*(v11 + 24))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17488, 4294951782, "<<HLS-FASB>>", 991, v4);
      goto LABEL_4;
    }

    v12 = v11;
    while (*(v12 + 80) && !*(v12 + 122))
    {
      v9 = FigConditionVariableWaitRelative();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    v8 = *(v12 + 32);
    if (v8)
    {
LABEL_13:
      v8 = CFRetain(v8);
    }

LABEL_14:
    v10 = 0;
    *a4 = v8;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"MediaSelectionArray"))
  {
    if (!*(DerivedStorage + 24))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17488, 4294951782, "<<HLS-FASB>>", 1053, v4);
      goto LABEL_4;
    }

    v8 = *(DerivedStorage + 16);
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"HasHDRAlternates") || CFEqual(a2, @"HasAtmosAlternates") || CFEqual(a2, @"HasMultiChannelAudio") || CFEqual(a2, @"HasPlayableMultiChannelAudio") || CFEqual(a2, @"HighestVideoResolutionAlternateWithMultiChannelAudio") || CFEqual(a2, @"HasLosslessAudio") || CFEqual(a2, @"HasBinauralAudio"))
  {
    fasb_copyInitialAlternateListProperty(*(DerivedStorage + 24), a2, a4);
    v10 = 0;
  }

  else if (CFEqual(a2, @"Paused"))
  {
    v10 = 0;
    if (*(DerivedStorage + 122))
    {
      v14 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    *a4 = *v14;
  }

  else
  {
    v10 = 4294954509;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fasb_monitorStateChangedNotificationHandler(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a5, @"AlternateFilterMonitorParameter_OldFilter");
  v8 = CFDictionaryGetValue(a5, @"AlternateFilterMonitorParameter_NewFilter");
  FigSimpleMutexLock();
  if (v8 != Value)
  {
    if (Value)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10)
      {
        v10(Value);
      }

      fasb_removeFilter();
      if (!v8)
      {
        goto LABEL_4;
      }
    }

    else if (!v8)
    {
LABEL_4:
      fasb_applyFiltersGuts(a2);
      goto LABEL_5;
    }

    fasb_addFilterGuts();
    goto LABEL_4;
  }

LABEL_5:

  return FigSimpleMutexUnlock();
}

void fasb_monitorExpandersAddedNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7 && !v7(a4, @"AlternateFilterMonitorProperty_Expanders", *MEMORY[0x1E695E480], &v13))
  {
    FigSimpleMutexLock();
    if (!fasb_applyExpandersGuts(a2, v13, &cf))
    {
      v10 = a2;
      v11 = cf;
      v8 = *(DerivedStorage + 8);
      if (v8)
      {
        v9.length = CFArrayGetCount(*(DerivedStorage + 8));
      }

      else
      {
        v9.length = 0;
      }

      v9.location = 0;
      CFArrayApplyFunction(v8, v9, fasb_dispatchAlternatesAddedDelegateFn, &v10);
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

uint64_t fasb_applyExpandersGuts(uint64_t a1, const __CFArray *a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theSet = 0;
  theArray = 0;
  if (!a3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, theArray, v26);
    v20 = v22;
    MutableCopy = 0;
LABEL_25:
    Mutable = 0;
    goto LABEL_27;
  }

  v6 = DerivedStorage;
  v7 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(DerivedStorage + 24));
  if (!MutableCopy)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, theArray, v26);
    v20 = v23;
    goto LABEL_25;
  }

  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = FigCFArrayCopyValuesAsCFSet();
    if (!v10)
    {
      v11 = 0;
      if (!a2)
      {
        goto LABEL_7;
      }

LABEL_6:
      for (i = CFArrayGetCount(a2); v11 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v11);
        if (!CFSetContainsValue(0, ValueAtIndex))
        {
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v14)
          {
            v20 = 4294954514;
            goto LABEL_27;
          }

          v10 = v14(ValueAtIndex, MutableCopy, &theArray);
          if (v10)
          {
            goto LABEL_39;
          }

          v15 = theArray;
          if (theArray)
          {
            v16.length = CFArrayGetCount(theArray);
          }

          else
          {
            v16.length = 0;
          }

          v16.location = 0;
          CFArrayAppendArray(MutableCopy, v15, v16);
          v17 = theArray;
          if (theArray)
          {
            v18.length = CFArrayGetCount(theArray);
          }

          else
          {
            v18.length = 0;
          }

          v18.location = 0;
          CFArrayAppendArray(Mutable, v17, v18);
          CFArrayAppendValue(*(v6 + 72), ValueAtIndex);
          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }
        }

        ++v11;
        if (a2)
        {
          goto LABEL_6;
        }

LABEL_7:
        ;
      }

      v19 = *(v6 + 24);
      *(v6 + 24) = MutableCopy;
      CFRetain(MutableCopy);
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = 0;
      *a3 = Mutable;
      goto LABEL_25;
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, theArray, v26);
  }

LABEL_39:
  v20 = v10;
LABEL_27:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (theSet)
  {
    CFRelease(theSet);
  }

  return v20;
}

void fasb_dispatchMediaSelectionArrayChangedDelegateFn()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(v0 + 16))
  {
    v3 = DerivedStorage;
    v4 = OUTLINED_FUNCTION_3_88();
    v6 = malloc_type_calloc(v4, 0x38uLL, v5);
    if (v6)
    {
      v7 = v6;
      OUTLINED_FUNCTION_1_115();
      __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v8, (v0 + 8));
      OUTLINED_FUNCTION_2_111();
      fasb_copyDelegateEntryValues(v9, v7 + 1);
      v10 = *(v3 + 16);
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      v7[6] = v10;
      if (v1)
      {
        v11 = CFRetain(v1);
      }

      else
      {
        v11 = 0;
      }

      *v7 = v11;
      dispatch_async_f(*(v0 + 32), v7, fasb_mediaSelectionArrayChangedDispatchFn);
    }
  }
}

uint64_t FigAlternateSelectionBossLockForConfiguration(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    FigSimpleMutexLock();
    ++*(v3 + 80);
    FigSimpleMutexUnlock();
  }

  return 0;
}

const void *FigAlternateSelectionBossUnlockForConfiguration(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    FigSimpleMutexLock();
    v4 = *(v3 + 80);
    if (v4 <= 0)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
    }

    else
    {
      v5 = v4 - 1;
      *(v3 + 80) = v5;
      if (v5)
      {
        a1 = 0;
LABEL_9:
        FigSimpleMutexUnlock();
        return a1;
      }

      if (!*(v3 + 96) || (*(v3 + 96) = 0, v6 = fasb_applyFiltersGuts(a1), !v6))
      {
        v6 = MEMORY[0x19A8D12E0](*(v3 + 88));
      }
    }

    a1 = v6;
    goto LABEL_9;
  }

  return a1;
}

uint64_t fasb_rebuildFilterTree(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 40);
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *v3 = 0;
  }

  result = FigAlternateFilterTreeCopyLeaves(*(DerivedStorage + 48), v3);
  if (!result)
  {
    v5 = *(DerivedStorage + 56);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 56) = 0;
    }

    v6 = *(DerivedStorage + 48);

    return FigAlternateFilterTreeCreateFilter(v6, @"FigAlternateSelectionBoss", -1, (DerivedStorage + 56));
  }

  return result;
}

BOOL FigAlternateSelectionUtility_AlternateListHasIFrameAlternate(_BOOL8 a1)
{
  v1 = a1;
  cf = 0;
  theArray = 0;
  if (!a1)
  {
    return v1;
  }

  if (FigAlternateIFramesOnlyFilterCreate(*MEMORY[0x1E695E480], &cf) || (v2 = cf, (v3 = *(*(CMBaseObjectGetVTable() + 16) + 24)) == 0))
  {
LABEL_8:
    v1 = 0;
    goto LABEL_9;
  }

  v4 = v3(v2, v1, &theArray);
  v5 = theArray;
  if (!v4)
  {
    if (theArray)
    {
      v1 = CFArrayGetCount(theArray) > 0;
      v5 = theArray;
      if (!theArray)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v1 = 0;
  if (theArray)
  {
LABEL_7:
    CFRelease(v5);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

void fasb_dispatchAlternatesAddedDelegateFn(uint64_t a1)
{
  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_369();
    v3 = OUTLINED_FUNCTION_3_88();
    v5 = malloc_type_calloc(v3, 0x38uLL, v4);
    if (v5)
    {
      v6 = v5;
      OUTLINED_FUNCTION_1_115();
      __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v7, (v1 + 8));
      OUTLINED_FUNCTION_2_111();
      fasb_copyDelegateEntryValues(v8, v6 + 1);
      v9 = *(v2 + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      v6[6] = v9;
      v10 = *v2;
      if (*v2)
      {
        v10 = CFRetain(v10);
      }

      *v6 = v10;
      dispatch_async_f(*(v1 + 32), v6, fasb_alternatesAddedDispatchFn);
    }
  }
}

void fasb_alternatesAddedDispatchFn(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5_76(a1);
  if (v3)
  {
    (*(v1 + 32))(*v1, v3, *(v1 + 48));
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  fasb_delegateEntryReleaseAndClearValues(v2);

  free(v1);
}

void fasb_dispatchAlternateChangedDelegateFn()
{
  OUTLINED_FUNCTION_369();
  v3 = *(v2 + 8);
  if (v3 && CFArrayGetCount(*(v2 + 8)))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 16);
    v18 = 0;
    if (v4)
    {
      if (CFEqual(v4, @"OfflinePlayable"))
      {
        v5 = -15515;
      }

      else if (CFEqual(v4, @"SupportedAudioFormat"))
      {
        v5 = -15516;
      }

      else if (CFEqual(v4, @"NeroSupportedVideoFormat") || CFEqual(v4, @"SupportedVideoRange") || CFEqual(v4, @"AdvisoryDeviceCapabilityFilterTree") || CFEqual(v4, @"VideoRangeAndFrameRateBucket"))
      {
        v5 = -17223;
      }

      else if (CFEqual(v4, @"AllowedCPC"))
      {
        v5 = -17228;
      }

      else if (CFEqual(v4, @"MediaValidation"))
      {
        v5 = -15517;
      }

      else if (CFEqual(v4, @"MediaSelectionAudible"))
      {
        v5 = -15518;
      }

      else if (CFEqual(v4, @"NetworkPermanentError") || CFEqual(v4, @"NetworkTemporaryError"))
      {
        v5 = -15519;
      }

      else if (CFEqual(v4, @"CombinedAudioPreference"))
      {
        v5 = -15810;
      }

      else if (CFEqual(v4, @"PreferBestFormatForVideoRange") || CFEqual(v4, @"DisplaySize") || CFEqual(v4, @"PreferredVideoFormat"))
      {
        v5 = -15811;
      }

      else
      {
        v5 = -15811;
        if (!CFEqual(v4, @"ResolutionCap"))
        {
          if (CFEqual(v4, @"ResolutionFloor"))
          {
            v5 = -15811;
          }

          else
          {
            v5 = -12925;
          }
        }
      }

      FigCreateErrorForOSStatus(v5, &v18);
      v4 = v18;
    }
  }

  if (*(v0 + 8) && (v6 = OUTLINED_FUNCTION_3_88(), (v8 = malloc_type_calloc(v6, 0x40uLL, v7)) != 0))
  {
    v9 = v8;
    OUTLINED_FUNCTION_1_115();
    __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v10, (v0 + 8));
    OUTLINED_FUNCTION_2_111();
    fasb_copyDelegateEntryValues(v11, v9 + 1);
    if (v3)
    {
      v12 = CFRetain(v3);
    }

    else
    {
      v12 = 0;
    }

    v9[6] = v12;
    v14 = *v1;
    if (*v1)
    {
      v14 = CFRetain(v14);
    }

    *v9 = v14;
    v15 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = Mutable;
    v17 = *(v1 + 16);
    if (v17)
    {
      CFDictionarySetValue(Mutable, @"FASBFIK_StoppedAtFilterName", v17);
    }

    if (v4)
    {
      CFDictionarySetValue(v13, @"FASBFIK_StoppedFilterError", v4);
    }

    v9[7] = CFDictionaryCreateCopy(v15, v13);
    dispatch_async_f(*(v0 + 32), v9, fasb_alternateChangedDispatchFn);
    if (v4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v13 = 0;
    if (v4)
    {
LABEL_29:
      CFRelease(v4);
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

CFStringRef fasb_copyNextLineFromString(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringGetLength(a1) - a2;
  if (v4 < 1)
  {
    return 0;
  }

  v7.location = 0;
  v7.length = 0;
  v8.location = a2;
  v8.length = v4;
  if (CFStringFindWithOptions(a1, @"\n", v8, 0, &v7))
  {
    v4 = v7.location - a2 + 1;
  }

  v5 = CFGetAllocator(a1);
  v9.location = a2;
  v9.length = v4;
  return CFStringCreateWithSubstring(v5, a1, v9);
}

void fasb_alternateChangedDispatchFn(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5_76(a1);
  if (v3)
  {
    (*(v1 + 16))(*v1, v3, *(v1 + 48), *(v1 + 56));
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  fasb_delegateEntryReleaseAndClearValues(v2);

  free(v1);
}

void fasb_mediaSelectionArrayChangedDispatchFn(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5_76(a1);
  if (v3)
  {
    (*(v1 + 24))(*v1, v3, *(v1 + 48));
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  fasb_delegateEntryReleaseAndClearValues(v2);

  free(v1);
}

void fasb_appendDescriptionApplierFn(CFTypeRef cf, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!cf || (v5 = *a2, v6 = CFGetTypeID(cf), v6 != FigAlternateFilterGetTypeID()))
  {
    MutableCopy = CFCopyDescription(cf);
    if (!MutableCopy)
    {
      return;
    }

    goto LABEL_14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v8 = CFCopyDescription(cf);
  if (v8)
  {
    v9 = v8;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
    if (MutableCopy)
    {
      v11 = *(DerivedStorage + 112);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v12)
      {
        v13 = v12(cf);
      }

      else
      {
        v13 = &stru_1F0B1AFB8;
      }

      Value = CFDictionaryGetValue(v11, v13);
      if (Value)
      {
        FigAlternateFilterApplyInfoGetStorage(Value, &v17);
      }

      v20[0] = v17;
      v20[1] = v18;
      v21 = v19;
      v22 = 0;
      fasb_insertFilteringInfoToDescriptionHelper(v5, MutableCopy, v20, &v22, (a2 + 16), (a2 + 24), 1);
    }

    CFRelease(v9);
    if (MutableCopy)
    {
LABEL_14:
      v15 = FigCFStringCopyWithIndent();
      if (v15)
      {
        v16 = v15;
        CFStringAppendFormat(v3, 0, @"\n%@", v15);
        CFRelease(v16);
      }

      CFRelease(MutableCopy);
    }
  }
}

double FigRemakerReportOneRTCMessage(int a1, int a2, uint64_t a3)
{
  v16 = 0;
  if ((a1 - 4) >= 0xFFFFFFFD && (a2 - 3) >= 0xFFFFFFFE)
  {
    v6 = a2;
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      _MergedGlobals_7[0]();
      FigCFDictionarySetValue();
      off_1ED4CA200[0]();
      FigCFDictionarySetValue();
      v10 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v10)
      {
        v11 = v10;
        off_1ED4CA208[0]();
        FigCFDictionarySetInt();
        off_1ED4CA210[0]();
        arc4random();
        FigCFDictionarySetInt();
        off_1ED4CA218[0]();
        FigCFDictionarySetInt();
        v12 = objc_autoreleasePoolPush();
        if (([(objc_class *)off_1ED4CA220() sendOneMessageWithSessionInfo:v11 userInfo:v9 category:v6 type:0 payload:a3 error:&v16]& 1) == 0)
        {
          [v16 code];
        }

        objc_autoreleasePoolPop(v12);
        CFRelease(v9);
        CFRelease(v11);
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
        CFRelease(v9);
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294955196, "<<<< FigRemakerRTCReporting >>>>", 90, v3);
    }
  }

  return result;
}

uint64_t sbp_vrot_processSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  pixelBufferOut = 0;
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  sampleBufferOut = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  if (!ImageBuffer)
  {
    goto LABEL_27;
  }

  v8 = PixelFormatType;
  OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(a2, 1, &timingArrayOut, 0);
  if (OutputSampleTimingInfoArray)
  {
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 16))
  {
    sbp_vrot_ensurePoolUpToDate(a1, v8);
  }

  v10 = CFGetAllocator(a1);
  OutputSampleTimingInfoArray = CVPixelBufferPoolCreatePixelBuffer(v10, *(DerivedStorage + 48), &pixelBufferOut);
  if (OutputSampleTimingInfoArray)
  {
    goto LABEL_15;
  }

  if (*(DerivedStorage + 16))
  {
    Width = CVPixelBufferGetWidth(pixelBufferOut);
    Height = CVPixelBufferGetHeight(pixelBufferOut);
    v14 = (DerivedStorage + 24);
    v13 = *(DerivedStorage + 24);
    if (!v13)
    {
LABEL_12:
      if (Width >> 31)
      {
        emitter = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954510, "<<< sbp_vrot >>>", 559, v2);
        goto LABEL_15;
      }

      if (Height >> 31)
      {
        v26 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 4294954510, "<<< sbp_vrot >>>", 561, v2);
        goto LABEL_15;
      }

      OutputSampleTimingInfoArray = FigCreateIOSurfaceBackedCVPixelBuffer();
      if (OutputSampleTimingInfoArray)
      {
LABEL_15:
        v16 = OutputSampleTimingInfoArray;
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v27 = CVPixelBufferGetIOSurface(v13) == 0;
    v15 = CVPixelBufferGetIOSurface(pixelBufferOut) == 0;
    if (CVPixelBufferGetPixelFormatType(*v14) != v8 || CVPixelBufferGetWidth(*v14) != Width || (CVPixelBufferGetHeight(*v14) != Height) | (v27 ^ v15) & 1)
    {
      CFRelease(*v14);
      *v14 = 0;
      goto LABEL_12;
    }

    if (!*v14)
    {
      goto LABEL_12;
    }
  }

LABEL_17:
  p_pixelBufferOut = &pixelBufferOut;
  if (*(DerivedStorage + 16))
  {
    p_pixelBufferOut = (DerivedStorage + 24);
  }

  OutputSampleTimingInfoArray = MEMORY[0x19A8D4E10](*(DerivedStorage + 8), ImageBuffer, *p_pixelBufferOut);
  if (OutputSampleTimingInfoArray)
  {
    goto LABEL_15;
  }

  v18 = *(DerivedStorage + 16);
  if (v18)
  {
    OutputSampleTimingInfoArray = VTPixelTransferSessionTransferImage(v18, *(DerivedStorage + 24), pixelBufferOut);
    if (OutputSampleTimingInfoArray)
    {
      goto LABEL_15;
    }
  }

  v20 = (DerivedStorage + 64);
  v19 = *(DerivedStorage + 64);
  if (!v19 || !CMVideoFormatDescriptionMatchesImageBuffer(v19, pixelBufferOut))
  {
    FigFormatDescriptionRelease();
    *v20 = 0;
    v21 = CFGetAllocator(a1);
    OutputSampleTimingInfoArray = CMVideoFormatDescriptionCreateForImageBuffer(v21, pixelBufferOut, (DerivedStorage + 64));
    if (OutputSampleTimingInfoArray)
    {
      goto LABEL_15;
    }
  }

  v22 = CFGetAllocator(a1);
  OutputSampleTimingInfoArray = CMSampleBufferCreateForImageBuffer(v22, pixelBufferOut, 1u, 0, 0, *v20, &timingArrayOut, &sampleBufferOut);
  if (OutputSampleTimingInfoArray)
  {
    goto LABEL_15;
  }

  CMPropagateAttachments(a2, sampleBufferOut);
LABEL_27:
  v23 = *(DerivedStorage + 72);
  if (v23)
  {
    v23(*(DerivedStorage + 80), 0, sampleBufferOut);
  }

  v16 = 0;
LABEL_30:
  CVPixelBufferRelease(pixelBufferOut);
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  return v16;
}

void FigSampleBufferProcessorCreateForVideoRotation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateForVideoRotation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateForVideoRotation_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateForVideoRotation_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateForVideoRotation_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateForVideoRotation_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateForVideoRotation_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateForVideoRotation_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigSCCParserCreate(const void *a1, _OWORD *a2, uint64_t a3, int a4, const void *a5, void *a6)
{
  if (!a1 || !a2 || !a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v16 = v18;
    goto LABEL_10;
  }

  v12 = MEMORY[0x19A8CC720](a5, 184, 0x10F00403C991150, 0);
  v13 = v12;
  if (!v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    v16 = v19;
    goto LABEL_11;
  }

  bzero(v12, 0xB8uLL);
  if (a5)
  {
    v14 = CFRetain(a5);
  }

  else
  {
    v14 = 0;
  }

  *v13 = v14;
  v13[2] = CFRetain(a1);
  v15 = a2[1];
  *(v13 + 9) = *a2;
  *(v13 + 10) = v15;
  v13[22] = a3;
  *(v13 + 2) = a4;
  v16 = FigCEA608DataInspectorCreate(a5, v13 + 14);
  if (!v16)
  {
    *a6 = v13;
LABEL_10:
    v13 = 0;
  }

LABEL_11:
  FigSCCParserRelease(v13);
  return v16;
}

void sccParserMalformedDataInfoRelease(CFAllocatorRef allocator, void *ptr)
{
  if (ptr)
  {
    v4 = ptr[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = ptr[2];
    if (v5)
    {
      CFRelease(v5);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

double FigSCCParserSetFrameDuration(uint64_t a1, __int128 *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a2 + 3) & 0x1D) == 1)
    {
      v4 = *a2;
      v5 = *(a2 + 2);
      v43 = *(a2 + 12);
      v44 = *(a2 + 5);
      v6 = CMTimeMake(&v42, 1001, 30000);
      if (OUTLINED_FUNCTION_5_77(v6, v7, v8, v9, v10, v11, v12, v13, v33, v36, v39, v42.value, *&v42.timescale, v42.epoch, v43, v44) && (v14 = CMTimeMake(&v42, 100, 2997), OUTLINED_FUNCTION_5_77(v14, v15, v16, v17, v18, v19, v20, v21, v34, v37, v40, v42.value, *&v42.timescale, v42.epoch, v43, v44)))
      {
        LODWORD(v42.value) = 0;
        v22 = modff(v5 / v4, &v42);
        v23 = *&v42.value;
        if (v22 != 0.0 || v23 == 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_239();
          *&v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v38, v41);
          if (v26)
          {
            return *&v25;
          }

LABEL_11:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_239();
          *&v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v38, v41);
          if (v27)
          {
            return *&v25;
          }

LABEL_15:
          v25 = *a2;
          *(a1 + 96) = *(a2 + 2);
          *(a1 + 80) = v25;
          return *&v25;
        }

        if (v23 > 0x1E || ((1 << v23) & 0x43000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v23 = 30;
      }

      *(a1 + 104) = v23;
      goto LABEL_15;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_239();
    v29 = v31;
    v30 = 1176;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_239();
    v29 = v28;
    v30 = 1175;
  }

  *&v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 4294950735, "< FigSCCParser >", v30);
  return *&v25;
}

uint64_t FigSCCParserParse(uint64_t a1)
{
  v163 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  number = 0;
  v148 = 0;
  if (!a1 || (v3 = a1, (*(a1 + 92) & 1) == 0) || *(a1 + 12))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_76();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_183:
    v26 = v6;
    v116 = 0;
    goto LABEL_178;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v116 = 0;
    v26 = 4294954514;
    goto LABEL_178;
  }

  v6 = v5(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number);
  if (v6)
  {
    goto LABEL_183;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr & 0x8000000000000000) != 0 || (v129 = malloc_type_malloc(valuePtr, 0x2C057407uLL)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_76();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_183;
  }

  v7 = *(v3 + 16);
  v8 = valuePtr;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9 || v9(v7, v8, 0, v129, &v148) || (v10 = v148, v148 != valuePtr))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_76();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v120, v125);
    goto LABEL_173;
  }

  v11 = 0;
  v12 = 0;
  *(v3 + 24) = v129;
  *(v3 + 72) = 0;
  v13 = &value + 2;
  v14 = MEMORY[0x1E695E4D0];
  v15 = MEMORY[0x1E695E4C0];
  *(v3 + 32) = v10;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v144 = v3 + 24;
  *(v3 + 64) = 0;
  v128 = *v14;
  v127 = *v15;
  v138 = &v160;
  v147 = v3;
  v130 = &value + 2;
LABEL_12:
  v16 = v10 - v11;
  if (v10 == v11)
  {
    v17 = 0;
    v20 = 0;
  }

  else
  {
    v17 = 0;
    v18 = *v144 + v11;
    while (1)
    {
      v19 = *(v18 + v17);
      if (v19 == 10)
      {
        break;
      }

      if (v19 == 13)
      {
        if (v16 - 1 != v17 && *(v18 + v17 + 1) == 10)
        {
          v20 = 2;
          goto LABEL_23;
        }

        break;
      }

      if (v16 == ++v17)
      {
        v20 = 0;
        v17 = v16;
        goto LABEL_23;
      }
    }

    v20 = 1;
  }

LABEL_23:
  *(v3 + 48) = v11;
  *(v3 + 56) = v11;
  *(v3 + 40) = v17;
  v21 = *(v3 + 64);
  *(v3 + 64) = v21 + 1;
  *(v3 + 72) = v17 + v11 + v20;
  if (v21 <= -2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_76();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v120, v125);
    if (v102)
    {
      goto LABEL_173;
    }

LABEL_26:
    if (!v12)
    {
      memset(&__s1, 0, 19);
      time.value = 0;
      sccLineStreamSkipSpaces(v144);
      sccLineStreamReadData(v144, 0x12uLL, &__s1, &time);
      if (time.value == 18 && !strcmp(&__s1, "Scenarist_SCC V1.0") && !sccLineStreamSkipSpaces(v144) || (fig_log_get_emitter(), OUTLINED_FUNCTION_4_76(), FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v120, v125), !v102))
      {
        v12 = 1;
        goto LABEL_129;
      }

      goto LABEL_173;
    }

    sccLineStreamSkipSpaces(v144);
    HIDWORD(v145) = *(v3 + 64);
    v23 = *(v3 + 48);
    v22 = *(v3 + 56);
    time.timescale = 0;
    time.value = 0;
    __s1.timescale = 0;
    __s1.value = 0;
    v156 = 0;
    sccLineStreamReadData(v144, 0xBuLL, &__s1, &v156);
    v24 = v156;
    if (v156 != 11)
    {
      v103 = 0;
      v29 = 82;
LABEL_163:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_76();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v120, v125);
      v26 = v105;
      if (v105)
      {
        v123 = v24;
        v106 = v147;
        v107 = OUTLINED_FUNCTION_415_0();
        v108 = HIDWORD(v145);
        sccParserMalformedDataInfoCreateIfNeeded(v107, v109, "The timecode is malformed.", v110, HIDWORD(v145), v23, v22, v111, v103, v123, 0);
        v45 = 0;
        goto LABEL_166;
      }

      OUTLINED_FUNCTION_8_39();
      v34 = *(v147 + 104);
LABEL_53:
      v35 = 60 * v34;
      v36 = v34 * v29 + v33 + (60 * v26 + flags) * 60 * v34;
      if (v2)
      {
        v37 = 600 * v34;
        v38 = v36 / (600 * v34);
        v39 = -18 * v38;
        v40 = v36 - v38 * v37;
        v41 = v40 / v35;
        if (v40 >= 2 && v41 >= 1)
        {
          v98 = v39 - 2 * v41 + 2;
          v99 = v40 % v35;
          if (v99 < 2)
          {
            v39 = v98 + ~v99;
          }

          else
          {
            v39 = v98 - 2;
          }
        }

        v36 += v39;
      }

      v43 = v147;
      v44 = v36;
      v45 = *(v147 + 132) - v36;
      if (v45 < 1)
      {
        goto LABEL_61;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_76();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v120, v125);
      v26 = v104;
      if (!v104)
      {
        v44 = 0;
        OUTLINED_FUNCTION_8_39();
        v43 = v147;
LABEL_61:
        v46 = *(v43 + 144);
        v47 = v43;
        if (v46)
        {
          v26 = v46(v26, flags, v29, v33, v2, *(v43 + 176));
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_64;
      }

      v106 = v147;
      v108 = HIDWORD(v145);
LABEL_166:
      v124 = strlen(&time);
      v112 = OUTLINED_FUNCTION_415_0();
      sccParserMalformedDataInfoCreateIfNeeded(v112, v113, "The timecode overlaps the previous closed caption data.", v114, v108, v23, v22, v115, 0, v124, v45);
      v44 = 0;
      v47 = v106;
LABEL_64:
      if (*(v47 + 136) && sccParserCallMalformedDataCallback(v47))
      {
        v44 = *(v47 + 132);
      }

      else if (v26)
      {
        goto LABEL_177;
      }

      HIDWORD(v131) = v12;
      v48 = 0;
      v139 = 0;
      v146 = 0;
      value = 0;
      HIDWORD(v143) = *(v47 + 8);
      p_value = &value;
      if ((v143 & 0x100000000) != 0)
      {
        p_value = 0;
      }

      v134 = p_value;
      v50 = 0xFFFFFFFFLL;
      v2 = 0xFFFFFFFFLL;
      for (i = v44; ; ++i)
      {
        HIWORD(v151) = 0;
        __s1 = **&MEMORY[0x1E6960C70];
        sccLineStreamSkipSpaces(v144);
        flags = *(v147 + 64);
        v53 = *(v147 + 48);
        v52 = *(v147 + 56);
        v155 = 0;
        v154 = 0;
        *__s = 0;
        time.value = 0;
        *&time.timescale = 0;
        v158 = 0;
        __dst = 0;
        v156 = 0;
        v54 = sccLineStreamReadData(v144, 4uLL, &__dst, &v156);
        v62 = v156;
        if (v156 == 2 || v156 == 4)
        {
          v160 = 0;
          v159 = 0;
          v64 = OUTLINED_FUNCTION_11_42(__dst);
          if (v138 == v159)
          {
            v65 = v64;
            if (v62 != 4)
            {
              v67 = 0;
              v68 = 1;
              goto LABEL_83;
            }

            v160 = 0;
            v159 = 0;
            v66 = OUTLINED_FUNCTION_11_42(SHIWORD(__dst));
            if (v138 == v159)
            {
              v67 = v66;
              v68 = 2;
LABEL_83:
              v155 = v65 | (v67 << 8);
              *__s = __dst;
              v154 = v158;
              goto LABEL_84;
            }

            v133 = 2;
          }

          else
          {
            v133 = 0;
          }

          v62 = 2;
        }

        else
        {
          if (!v156)
          {
            if (!v48)
            {
              v26 = 0;
LABEL_124:
              v3 = v147;
              goto LABEL_125;
            }

            OUTLINED_FUNCTION_9_42(v54, v55, v56, v57, v58, v59, v60, v61, v119, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v138, v139);
            v95 = v146;
            *(v48 + 15) = v146;
            v3 = v147;
            v96 = *(v147 + 152);
            v12 = HIDWORD(v131);
            if (v96)
            {
              v97 = v96(v48, *(v147 + 176));
              if (!v97)
              {
                v95 = *(v48 + 15);
                goto LABEL_121;
              }

              v26 = v97;
            }

            else
            {
LABEL_121:
              *(v147 + 132) = *(v48 + 8) + v95;
              sccParserCaptionDataInfoRelease(*v147, v48);
              v48 = 0;
              v26 = 0;
            }

            v13 = v130;
            goto LABEL_126;
          }

          v133 = 0;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_4_76();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v120, v125);
        if (v69)
        {
          v26 = v69;
          v121 = v62;
          v86 = OUTLINED_FUNCTION_415_0();
          v87 = v52;
          sccParserMalformedDataInfoCreateIfNeeded(v86, v88, "The byte characters are malformed.", v89, flags, v53, v52, v90, v133, v121, 0);
LABEL_112:
          v122 = strlen(__s);
          v91 = OUTLINED_FUNCTION_415_0();
          v52 = v87;
          sccParserMalformedDataInfoCreateIfNeeded(v91, v92, "The byte characters are not valid.", v93, flags, v53, v87, v94, 0, v122, 0);
          v68 = 0;
          value_high = 0;
          timescale = 0;
          flags = 0;
          goto LABEL_86;
        }

        v68 = 0;
LABEL_84:
        v70 = FigCEA608DataInspectorInspectBytePair(*(v147 + 112), &v155, v68, &time, v134);
        v26 = v70;
        if (v70)
        {
          v87 = v52;
          goto LABEL_112;
        }

        HIWORD(v151) = v155;
        value_high = HIDWORD(time.value);
        timescale = time.timescale;
        flags = time.flags;
LABEL_86:
        if (*(v147 + 136) && (v70 = sccParserCallMalformedDataCallback(v147), v70))
        {
          timescale = 0xFFFFFFFFLL;
          flags = 0xFFFFFFFFLL;
        }

        else
        {
          if (v26)
          {
            goto LABEL_124;
          }

          if (v50 == timescale && v2 == flags)
          {
            flags = v2;
            timescale = v50;
            v3 = v147;
            if (!v48)
            {
              goto LABEL_139;
            }
          }

          else
          {
            if (v48)
            {
              OUTLINED_FUNCTION_9_42(v70, v71, v72, v73, v74, v75, v76, v77, v119, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v138, v139);
              *(v48 + 15) = v146;
              v3 = v147;
              v81 = *(v147 + 152);
              if (v81)
              {
                v82 = v81(v48, *(v147 + 176));
                if (v82)
                {
                  v26 = v82;
                  goto LABEL_125;
                }
              }

              sccParserCaptionDataInfoRelease(*v147, v48);
              v146 = 0;
            }

            else
            {
              v3 = v147;
            }

            time = *(v144 + 56);
            CMTimeMultiply(&__s1, &time, i);
            v2 = *v3;
            time = __s1;
            v83 = MEMORY[0x19A8CC720](v2, 80, 0x1020040ABEC6194, 0);
            v48 = v83;
            if (!v83 || (v83[3] = 0u, v83[4] = 0u, v83[1] = 0u, v83[2] = 0u, *v83 = 0u, Mutable = CFDataCreateMutable(v2, 0), (*(v48 + 8) = Mutable) == 0) || (v143 & 0x100000000) == 0 && (v85 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]), (*(v48 + 9) = v85) == 0))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_4_76();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v120, v125);
              v26 = v100;
              sccParserCaptionDataInfoRelease(v2, v48);
              if (!v26)
              {
LABEL_139:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_4_76();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, v120, v125);
                v26 = v101;
              }

              v48 = 0;
LABEL_125:
              v13 = v130;
              v12 = HIDWORD(v131);
LABEL_126:
              sccParserCaptionDataInfoRelease(*v3, v48);
              if (value)
              {
                CFRelease(value);
              }

              if (v26)
              {
                goto LABEL_177;
              }

LABEL_129:
              v11 = *(v3 + 72);
              v10 = *(v3 + 32);
              goto LABEL_12;
            }

            *v48 = value_high;
            *(v48 + 1) = timescale;
            *(v48 + 2) = flags;
            *(v48 + 2) = v52;
            *(v48 + 8) = i;
            *(v48 + 36) = time;
          }

          CFDataAppendBytes(*(v48 + 8), &v151 + 6, v68);
          if ((v143 & 0x100000000) == 0)
          {
            CFArrayAppendValue(*(v48 + 9), value);
            if (value)
            {
              CFRelease(value);
              value = 0;
            }
          }

          v139 = *(v3 + 56);
          ++v146;
        }

        v50 = timescale;
        v2 = flags;
      }
    }

    OUTLINED_FUNCTION_7_55();
    v25 = OUTLINED_FUNCTION_2_112(__s1.value, v119, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v138, v139, v143, v144, v145, v147, v148, valuePtr, number, v151, value);
    if (v13 != v159)
    {
      v103 = 0;
      v29 = 87;
      goto LABEL_162;
    }

    LOBYTE(v26) = v25;
    if (v25 > 0x63u)
    {
      v103 = 0;
      v29 = 88;
      goto LABEL_162;
    }

    if (BYTE2(__s1.value) == 58)
    {
      OUTLINED_FUNCTION_7_55();
      v27 = OUTLINED_FUNCTION_2_112(*(&__s1.value + 3), v119, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v135, v138, v140, v143, v144, v145, v147, v148, valuePtr, number, v151, value);
      if (v13 == v159)
      {
        LOBYTE(flags) = v27;
        if (v27 <= 0x3Bu)
        {
          if (BYTE5(__s1.value) == 58)
          {
            OUTLINED_FUNCTION_7_55();
            v28 = OUTLINED_FUNCTION_2_112(SHIWORD(__s1.value), v119, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v136, v138, v141, v143, v144, v145, v147, v148, valuePtr, number, v151, value);
            if (v13 == v159)
            {
              v29 = v28;
              if (v28 <= 0x3Bu)
              {
                if (LOBYTE(__s1.timescale) - 60 < 0xFFFFFFFE)
                {
                  v29 = 117;
                  goto LABEL_157;
                }

                v2 = LOBYTE(__s1.timescale) == 59;
                v30 = *(v147 + 120);
                if (v30)
                {
                  if (CFBooleanGetValue(v30) != v2)
                  {
                    v29 = 122;
LABEL_157:
                    v103 = 8;
                    goto LABEL_158;
                  }
                }

                else
                {
                  if (LOBYTE(__s1.timescale) == 59)
                  {
                    v31 = v128;
                  }

                  else
                  {
                    v31 = v127;
                  }

                  if (v31)
                  {
                    v31 = CFRetain(v31);
                  }

                  *(v147 + 120) = v31;
                }

                OUTLINED_FUNCTION_7_55();
                v32 = OUTLINED_FUNCTION_2_112(*(&__s1.timescale + 1), v119, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v137, v138, v142, v143, v144, v145, v147, v148, valuePtr, number, v151, value);
                if (v13 == v159)
                {
                  v33 = v32;
                  v34 = *(v147 + 104);
                  if (v34 > v32)
                  {
                    time.value = __s1.value;
                    time.timescale = __s1.timescale;
                    goto LABEL_53;
                  }

                  v29 = -127;
                }

                else
                {
                  v29 = 0x80;
                }

                v103 = 9;
LABEL_162:
                v24 = 2;
                goto LABEL_163;
              }

              v29 = 112;
            }

            else
            {
              v29 = 111;
            }

            v103 = 6;
            goto LABEL_162;
          }

          v29 = 105;
          v103 = 5;
LABEL_158:
          v24 = 1;
          goto LABEL_163;
        }

        v29 = 100;
      }

      else
      {
        v29 = 99;
      }

      v103 = 3;
      goto LABEL_162;
    }

    v29 = 93;
    v103 = 2;
    goto LABEL_158;
  }

  if (v17 + v20)
  {
    if (!v17)
    {
      goto LABEL_129;
    }

    goto LABEL_26;
  }

  v117 = *(v3 + 160);
  if (!v117 || (v102 = v117(*(v3 + 176)), !v102))
  {
    v26 = 0;
    *(v3 + 12) = 1;
    goto LABEL_177;
  }

LABEL_173:
  v26 = v102;
LABEL_177:
  v116 = v129;
LABEL_178:
  free(v116);
  if (number)
  {
    CFRelease(number);
  }

  return v26;
}

uint64_t sccParserCallMalformedDataCallback(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    return 1;
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    v4 = v3(*v1, *(v1 + 1), *(v1 + 2), v1[6], *(v1 + 4), *(v1 + 5), *(v1 + 6), v1[14], *(a1 + 176));
    v1 = *(a1 + 136);
  }

  else
  {
    v4 = 1;
  }

  sccParserMalformedDataInfoRelease(*a1, v1);
  *(a1 + 136) = 0;
  return v4;
}

void sccParserMalformedDataInfoCreateIfNeeded(const __CFAllocator **a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CFIndex a10, int a11)
{
  if ((a2 + 16563) >= 0xFFFFFFFE && !a1[17])
  {
    v15 = a5;
    v17 = *a1;
    v18 = MEMORY[0x19A8CC720](*a1, 64, 0x106004080B652F1, 0, a5, a6, a7, a8);
    v19 = v18;
    if (v18 && (v18[2] = 0u, v18[3] = 0u, *v18 = 0u, v18[1] = 0u, v20 = CFStringCreateWithCString(v17, a3, 0x8000100u), (*(v19 + 1) = v20) != 0) && (v21 = CFStringCreateWithBytes(v17, (a4 + a9), a10, 0x8000100u, 0), (*(v19 + 2) = v21) != 0))
    {
      *v19 = a2;
      *(v19 + 6) = v15;
      *(v19 + 4) = a6;
      *(v19 + 5) = a9 + a7;
      *(v19 + 6) = a10;
      *(v19 + 14) = a11;
      a1[17] = v19;
      v19 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    sccParserMalformedDataInfoRelease(v17, v19);
  }
}

void FigSCCParserCaptionDataInfoGetChannel_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSCCParserCaptionDataInfoGetFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSCCParserCaptionDataInfoGetDTS_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSCCParserCaptionDataInfoGetCaptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSCCParserCaptionDataInfoGetCaptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vdms_finalize(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF174D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vdms_removeFVTNotificationListeners(*(DerivedStorage + 24), @"PreferredDataChannelGroupsChanged", a1);
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_0_127();
  if (!FigNotificationCenterRemoveWeakListener())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_0_127();
    FigNotificationCenterRemoveWeakListener();
  }

  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *(v4 + 48);
  if (v5)
  {
    v6 = (v4 + 56);
    do
    {
      v7 = *v5;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_113();
      FigNotificationCenterRemoveWeakListener();
      v8 = *v5;
      v9 = v5[1];
      v10 = (*v5 + 8);
      if (!*v5)
      {
        v10 = v6;
      }

      *v10 = v9;
      *v9 = v8;
      vdms_destroyResourceEntry(v5);
      v5 = v7;
    }

    while (v7);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
  v11 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v12 = v11;
    v13 = *(v11 + 80);
    if (v13)
    {
      CFRelease(v13);
      *(v12 + 80) = 0;
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v14 = *(DerivedStorage + 24);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 24) = 0;
  }

  v15 = *(DerivedStorage + 96);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 96) = 0;
  }

  v16 = *(DerivedStorage + 88);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 88) = 0;
  }

  FigBytePumpGetFigBaseObject();
  if (v17)
  {
    v18 = v17;
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v19)
    {
      v19(v18);
    }
  }

  FigBytePumpRelease(*(DerivedStorage + 64));
  FigRetainProxyRelease();
  *(DerivedStorage + 72) = 0;
  v20 = *(DerivedStorage + 8);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 8) = 0;
  }

  FigSimpleMutexDestroy();
  v21 = *(DerivedStorage + 40);
  if (v21)
  {
    dispatch_release(v21);
    *(DerivedStorage + 40) = 0;
  }
}

uint64_t vdms_setProperty(const void *a1, const void *a2, CFArrayRef Copy)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFEqual(@"SMS_VideoTargetArray", a2))
  {
    if (!CFEqual(@"SMS_ReportingAgent", a2))
    {
      v22 = 4294951446;
      goto LABEL_64;
    }

    if (Copy)
    {
      v12 = CMBaseObjectGetDerivedStorage();
      if (v12)
      {
        v13 = v12;
        if (!*(v12 + 80))
        {
          v14 = CFRetain(Copy);
          *(v13 + 80) = v14;
          if (!v14)
          {
            v22 = 4294955296;
            goto LABEL_64;
          }

          v15 = v14;
          v16 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (!v16)
          {
            v22 = 4294954514;
            goto LABEL_64;
          }

          v17 = v16(v15, 0);
LABEL_63:
          v22 = v17;
          goto LABEL_64;
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_73();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, v48, v49);
      }

      v22 = 0;
      goto LABEL_64;
    }

LABEL_62:
    OUTLINED_FUNCTION_6_73();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_63;
  }

  v8 = MEMORY[0x1E695E480];
  if (Copy)
  {
    v9 = CFGetTypeID(Copy);
    if (v9 == CFArrayGetTypeID())
    {
      v50 = DerivedStorage;
      v10 = CMBaseObjectGetDerivedStorage();
      v11 = *v8;
      Copy = CFArrayCreateCopy(*v8, Copy);
      goto LABEL_13;
    }

    goto LABEL_62;
  }

  v50 = DerivedStorage;
  v10 = CMBaseObjectGetDerivedStorage();
  v11 = *v8;
LABEL_13:
  v18 = *(v10 + 24);
  Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v20 = Mutable;
    v21 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    if (v21)
    {
      v22 = v21;
      if (!FigCFEqual())
      {
        v23 = 0;
        if (v18)
        {
          goto LABEL_21;
        }

LABEL_22:
        for (i = 0; v23 < i; i = CFArrayGetCount(v18))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, v23);
          if (!FigCFArrayContainsValue())
          {
            CFArrayAppendValue(v20, ValueAtIndex);
          }

          ++v23;
          if (!v18)
          {
            goto LABEL_22;
          }

LABEL_21:
          ;
        }

        v26 = 0;
        if (Copy)
        {
          goto LABEL_29;
        }

LABEL_30:
        for (j = 0; v26 < j; j = CFArrayGetCount(Copy))
        {
          v27 = CFArrayGetValueAtIndex(Copy, v26);
          if (!FigCFArrayContainsValue())
          {
            CFArrayAppendValue(v22, v27);
          }

          ++v26;
          if (!Copy)
          {
            goto LABEL_30;
          }

LABEL_29:
          ;
        }
      }

LABEL_32:
      vdms_removeFVTNotificationListeners(v20, @"PreferredDataChannelGroupsChanged", a1);
      if (!v22)
      {
        goto LABEL_46;
      }

      if (CFArrayGetCount(v22) >= 1)
      {
        v29 = 0;
        do
        {
          CFArrayGetValueAtIndex(v22, v29);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          ++v29;
        }

        while (v29 < CFArrayGetCount(v22));
      }

      if (!CFArrayGetCount(v22))
      {
        goto LABEL_46;
      }

      v30 = *(v10 + 96);
      if (v30)
      {
        CFRelease(v30);
        *(v10 + 96) = 0;
      }

      Current = CFAbsoluteTimeGetCurrent();
      *(v10 + 96) = CFDateCreate(v11, Current);
      v32 = CMBaseObjectGetDerivedStorage();
      if (a1)
      {
        v33 = v32;
        if (!*(v32 + 80))
        {
LABEL_46:
          v41 = *(v10 + 24);
          *(v10 + 24) = Copy;
          if (Copy)
          {
            CFRetain(Copy);
          }

          if (v41)
          {
            CFRelease(v41);
          }

          v42 = *(v10 + 16) == 6;
          if (a1)
          {
            CFRetain(a1);
          }

          v43 = *(v10 + 40);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __vdms_gracefullySetVideoTargetArray_block_invoke;
          block[3] = &__block_descriptor_tmp_73;
          block[4] = a1;
          block[5] = v10;
          v52 = v42;
          dispatch_async(v43, block);
          if (v20)
          {
            CFRelease(v20);
          }

          if (v22)
          {
            CFRelease(v22);
            v22 = 0;
          }

          goto LABEL_56;
        }

        v34 = CFAbsoluteTimeGetCurrent();
        v35 = CFDateCreate(v11, v34);
        if (v35)
        {
          v36 = v35;
          TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v35, *(v33 + 88));
          v38 = *(v33 + 80);
          if (v38)
          {
            v39 = TimeIntervalSinceDate;
            v40 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v40)
            {
              v40(v38, 0x1F0B646D8, 0x1F0B67038, (v39 * 1000.0), 0);
            }
          }

          CFRelease(v36);
          goto LABEL_46;
        }
      }

      OUTLINED_FUNCTION_40_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, v3, v50);
    v22 = v46;
    CFRelease(v20);
  }

  else
  {
    OUTLINED_FUNCTION_6_73();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, v3, v50);
    v22 = v45;
  }

  if (!v22)
  {
    v22 = 0;
    v20 = 0;
    goto LABEL_32;
  }

LABEL_56:
  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_64:
  FigSimpleMutexUnlock();
  return v22;
}

uint64_t vdms_deferredFVTPreferredDataChannelGroupsChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  result = FigCFArrayContainsValue();
  if (result)
  {
    vdms_reevaluateProcessingStateAndNotify(a2, *(DerivedStorage + 16) == 6);

    return FigSimpleMutexUnlock();
  }

  return result;
}

double vdms_RTCReportingUpdatePayloadTransferError(uint64_t a1, __CFError *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      if (*(DerivedStorage + 80))
      {
        Domain = CFErrorGetDomain(a2);
        v9 = CFErrorCopyDescription(a2);
        Code = CFErrorGetCode(a2);
        v11 = *(v7 + 80);
        if (v11)
        {
          v12 = Code;
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v13)
          {
            v13(v11, 0x1F0B646D8, 0x1F0B670B8, Domain, 0);
          }

          v14 = *(v7 + 80);
          if (v14)
          {
            v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v15)
            {
              v15(v14, 0x1F0B646D8, 0x1F0B670D8, v9, 0);
            }

            v16 = *(v7 + 80);
            if (v16)
            {
              v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v17)
              {
                v17(v16, 0x1F0B646D8, 0x1F0B670F8, v12, 0);
              }
            }
          }
        }

        if (v9)
        {

          CFRelease(v9);
        }
      }
    }
  }

  else
  {
    v18 = qword_1EAF174C8;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 4294951445, "<<<< FigVenueDescriptionMetadataSupplier >>>>", 1591, v2);
  }

  return result;
}

uint64_t vdms_updateResourcesAndTransferMetadata(uint64_t a1)
{
  v192 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = &dword_1EAF17000;
  if ((*(DerivedStorage + 16) - 7) <= 0xFFFFFFFC)
  {
    if (dword_1EAF174D0)
    {
      OUTLINED_FUNCTION_11_43();
      v133 = OUTLINED_FUNCTION_7_56(qword_1EAF174C8, v126, v127, v128, v129, v130, v131, v132, v142, v145, v148, v152, v156, v161, v164, SHIDWORD(v164), v171, SWORD2(v171), SBYTE6(v171), SHIBYTE(v171));
      if (os_log_type_enabled(v133, typea))
      {
        v134 = v168;
      }

      else
      {
        v134 = v168 & 0xFFFFFFFE;
      }

      if (v134)
      {
        CMBaseObjectGetDerivedStorage();
        *cf = 136315906;
        OUTLINED_FUNCTION_8_40();
        v187 = 1024;
        LODWORD(v188) = v135;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v136, v137, v138, v139, v140, v133, typea, v141);
      }

      OUTLINED_FUNCTION_1_116();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  v149 = v2;
  v6 = *(DerivedStorage + 24);
  v7 = *(CMBaseObjectGetDerivedStorage() + 48);
  v153 = @"FDCR_ProcessingStateDidChange";
  v9 = 0;
  if (v7)
  {
    *&v8 = 136316162;
    *v157 = v8;
    do
    {
      v10 = v7;
      v7 = *v7;
      if (!vdms_supportsVenueDescriptionDataDelivery(v10[2]) || !FigCFArrayContainsValue())
      {
        CMBaseObjectGetDerivedStorage();
        if (dword_1EAF174D0)
        {
          OUTLINED_FUNCTION_11_43();
          ValueAtIndex = OUTLINED_FUNCTION_7_56(qword_1EAF174C8, v11, v12, v13, v14, v15, v16, v17, v142, v145, v149, v153, v157[0], v157[1], v164, SHIDWORD(v164), v171, SWORD2(v171), SBYTE6(v171), SHIBYTE(v171));
          if (os_log_type_enabled(ValueAtIndex, HIBYTE(v171)))
          {
            v18 = v164;
          }

          else
          {
            v18 = v164 & 0xFFFFFFFE;
          }

          if (v18)
          {
            CMBaseObjectGetDerivedStorage();
            *cf = v157[0];
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v19, v20, v21, v22, &dword_1962D5000, ValueAtIndex, HIBYTE(v171), "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  removing dataChannelResourceEntry for videoTarget: %@ resource: %@");
          }

          OUTLINED_FUNCTION_1_116();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v5 = &dword_1EAF17000;
        }

        v23 = v10[3];
        if (!v23 || (v24 = *(*(CMBaseObjectGetVTable() + 16) + 48)) != 0 && !v24(v23))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_2_113();
          FigNotificationCenterRemoveWeakListener();
          OUTLINED_FUNCTION_12_37(*v10);
          vdms_destroyResourceEntry(v10);
        }

        v9 = 1;
      }
    }

    while (v7);
  }

  v25 = 0;
  v26 = *MEMORY[0x1E695E480];
  v27 = MEMORY[0x1E6963198];
  *&v8 = 136316162;
  *v158 = v8;
  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_20:
  for (i = CFArrayGetCount(v6); v25 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v25);
    if (!vdms_supportsVenueDescriptionDataDelivery(ValueAtIndex) || vdms_findDataChannelResourceEntryByTarget(a1, ValueAtIndex))
    {
      goto LABEL_51;
    }

    v29 = CMBaseObjectGetDerivedStorage();
    *cf = 0;
    v164 = 0;
    *theArray = *v27;
    v30 = FigTagCollectionCreate();
    if (v30)
    {
      goto LABEL_53;
    }

    v31 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v31)
    {
      v30 = v31(ValueAtIndex, 0, 0, cf);
      if (!v30)
      {
        v32 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004003E9C36BuLL);
        if (v32)
        {
          if (ValueAtIndex)
          {
            v33 = CFRetain(ValueAtIndex);
          }

          else
          {
            v33 = 0;
          }

          v32[2] = v33;
          v34 = *cf;
          if (*cf)
          {
            v34 = CFRetain(*cf);
          }

          v9 = 0;
          v32[3] = v34;
          *(v32 + 9) = 0;
        }

        else
        {
          v9 = 4294951444;
        }

        goto LABEL_36;
      }

LABEL_53:
      v9 = v30;
      v32 = 0;
      goto LABEL_36;
    }

    v32 = 0;
    v9 = 4294954514;
LABEL_36:
    if (*cf)
    {
      CFRelease(*cf);
    }

    if (v9)
    {
      if (!v32)
      {
        return v9;
      }

      goto LABEL_133;
    }

    if (v5[308])
    {
      OUTLINED_FUNCTION_11_43();
      v42 = OUTLINED_FUNCTION_7_56(qword_1EAF174C8, v35, v36, v37, v38, v39, v40, v41, v142, v145, v149, v153, v158[0], v158[1], 0, 0, v171, SWORD2(v171), SBYTE6(v171), SHIBYTE(v171));
      if (OUTLINED_FUNCTION_13_31(v42, v43, v44, v45, v46, v47, v48, v49, v143, v146, v150, v154, v159, v162, v165, v169, v172, v174, v176, typeb))
      {
        v50 = v5;
      }

      else
      {
        v50 = v5 & 0xFFFFFFFE;
      }

      if (v50)
      {
        CMBaseObjectGetDerivedStorage();
        *cf = v158[0];
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v51, v52, v53, v54, &dword_1962D5000, v9, ValueAtIndex, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  created new dataChannelResourceEntry for resource: %@ videoTarget: %@ ");
      }

      OUTLINED_FUNCTION_1_116();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v5 = &dword_1EAF17000;
    }

    *v32 = 0;
    v55 = *(v29 + 56);
    v32[1] = v55;
    *v55 = v32;
    *(v29 + 56) = v32;
    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_113();
    v56 = FigNotificationCenterAddWeakListener();
    if (v56)
    {
      v9 = v56;
LABEL_133:
      OUTLINED_FUNCTION_12_37(*v32);
      vdms_destroyResourceEntry(v32);
      return v9;
    }

    v57 = v32[3];
    v58 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v58)
    {
      v27 = MEMORY[0x1E6963198];
      if (v58(v57) == 2)
      {
        return 4294951440;
      }

      v9 = 1;
    }

    else
    {
      v9 = 1;
      v27 = MEMORY[0x1E6963198];
    }

LABEL_51:
    ++v25;
    if (v6)
    {
      goto LABEL_20;
    }

LABEL_21:
    ;
  }

  if (!v9)
  {
    return v9;
  }

  theArray[0] = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 64))
  {
    FigAssetGetCMBaseObject();
    v60 = v63;
    v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v61)
    {
      v62 = @"assetProperty_HLSMetadata";
      goto LABEL_61;
    }

    goto LABEL_69;
  }

  FigBytePumpGetFigBaseObject();
  v60 = v59;
  v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v61)
  {
LABEL_69:
    v69 = 0;
    v9 = 4294954514;
    goto LABEL_72;
  }

  v62 = @"FBSP_Metadata";
LABEL_61:
  v64 = v61(v60, v62, v26, theArray);
  if (v64)
  {
    v9 = v64;
    v69 = 0;
  }

  else
  {
    v65 = 0;
    while (1)
    {
      Count = theArray[0];
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
      }

      if (v65 >= Count)
      {
        break;
      }

      v67 = CFArrayGetValueAtIndex(theArray[0], v65);
      CFDictionaryGetValue(v67, @"key");
      ++v65;
      if (FigCFEqual())
      {
        Value = CFDictionaryGetValue(v67, @"value");
        if (Value)
        {
          v69 = CFRetain(Value);
          goto LABEL_71;
        }

        break;
      }
    }

    v69 = 0;
LABEL_71:
    v9 = 0;
  }

LABEL_72:
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  if (v9)
  {
    goto LABEL_112;
  }

  v70 = CMBaseObjectGetDerivedStorage();
  if (!v69)
  {
    goto LABEL_96;
  }

  v71 = v70;
  theArray[0] = 0;
  v72 = CFGetTypeID(v69);
  if (v72 != CFDataGetTypeID())
  {
    v9 = 4294951441;
    goto LABEL_113;
  }

  CFDataGetLength(v69);
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  v74 = theArray[0];
  if (BlockBufferWithCFDataNoCopy)
  {
    v9 = BlockBufferWithCFDataNoCopy;
    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }

    goto LABEL_113;
  }

  v75 = v26;
  v76 = *(v71 + 48);
  if (!v76)
  {
LABEL_92:
    v9 = 0;
    goto LABEL_93;
  }

  while (2)
  {
    v77 = v76[3];
    if (!v77 || *(v76 + 32))
    {
LABEL_91:
      v76 = *v76;
      if (!v76)
      {
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

  if (v5[308])
  {
    OUTLINED_FUNCTION_11_43();
    v85 = OUTLINED_FUNCTION_7_56(qword_1EAF174C8, v78, v79, v80, v81, v82, v83, v84, v142, v145, v149, v153, v158[0], v158[1], v164, SHIDWORD(v164), v171, SWORD2(v171), SBYTE6(v171), SHIBYTE(v171));
    if (OUTLINED_FUNCTION_13_31(v85, v86, v87, v88, v89, v90, v91, v92, v144, v147, v151, v155, v160, v163, v166, v170, v173, v175, v177, typec))
    {
      v93 = v5;
    }

    else
    {
      v93 = v5 & 0xFFFFFFFE;
    }

    if (v93)
    {
      CMBaseObjectGetDerivedStorage();
      *cf = v158[0];
      OUTLINED_FUNCTION_8_40();
      v187 = 2112;
      v188 = v94;
      v189 = 2112;
      v190 = v74;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v95, v96, v97, v98, &dword_1962D5000, v77, ValueAtIndex, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]: sending data to dataChannelResource: %@ with blockBuffer : %@");
    }

    OUTLINED_FUNCTION_1_116();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v77 = v76[3];
    v5 = &dword_1EAF17000;
  }

  v99 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v99)
  {
    v9 = 4294954514;
    goto LABEL_93;
  }

  v100 = v99(v77, v74);
  if (!v100)
  {
    *(v76 + 32) = 1;
    goto LABEL_91;
  }

  v9 = v100;
LABEL_93:
  v26 = v75;
  if (v74)
  {
    CFRelease(v74);
  }

  if (v9)
  {
LABEL_112:
    if (!v69)
    {
      return v9;
    }

LABEL_113:
    CFRelease(v69);
    return v9;
  }

LABEL_96:
  if (v5[308])
  {
    OUTLINED_FUNCTION_11_43();
    v108 = OUTLINED_FUNCTION_7_56(qword_1EAF174C8, v101, v102, v103, v104, v105, v106, v107, v142, v145, v149, v153, v158[0], v158[1], v164, SHIDWORD(v164), v171, SWORD2(v171), SBYTE6(v171), SHIBYTE(v171));
    if (os_log_type_enabled(v108, type))
    {
      v109 = v167;
    }

    else
    {
      v109 = v167 & 0xFFFFFFFE;
    }

    if (v109)
    {
      v110 = *(CMBaseObjectGetDerivedStorage() + 8);
      *cf = 136315650;
      *&cf[4] = "vdms_postTransferNotification";
      v183 = 2048;
      v184 = a1;
      v185 = 2114;
      v186 = v110;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v111, v112, v113, v114, v115, v108, type, v116);
    }

    OUTLINED_FUNCTION_1_116();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v117 = CMNotificationCenterPostNotification();
  if (!v117)
  {
    v118 = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      v119 = v118;
      if (*(v118 + 80))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v121 = CFDateCreate(v26, Current);
        if (v121)
        {
          v122 = v121;
          CFDateGetTimeIntervalSinceDate(v121, *(v119 + 96));
          if (*(v119 + 80) && *(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v123 = OUTLINED_FUNCTION_5_78();
            v124(v123);
          }

          CFRelease(v122);
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF174C8, 4294951445, "<<<< FigVenueDescriptionMetadataSupplier >>>>", 1551, v149);
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF174C8, 4294951445, "<<<< FigVenueDescriptionMetadataSupplier >>>>", 1547, v149);
    }

    v9 = 0;
    goto LABEL_112;
  }

  v9 = v117;
  if (v69)
  {
    goto LABEL_113;
  }

  return v9;
}

uint64_t vdms_supportsVenueDescriptionDataDelivery(uint64_t a1)
{
  theArray = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2 || v2(a1, *MEMORY[0x1E695E480], &theArray))
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = *MEMORY[0x1E6963198];
    v6 = *(MEMORY[0x1E6963198] + 8);
    while (1)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (v3 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      if (FigDataChannelGroupGetCountOfDataChannels(ValueAtIndex, v9) >= 1)
      {
        v10 = 0;
        while (1)
        {
          DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(ValueAtIndex, v10);
          *&v15.category = v5;
          v15.value = v6;
          if (CMTagCollectionContainsTag(DataChannelByIndex, v15))
          {
            break;
          }

          if (++v10 >= FigDataChannelGroupGetCountOfDataChannels(ValueAtIndex, v12))
          {
            goto LABEL_13;
          }
        }

        v4 = 1;
      }

LABEL_13:
      ++v3;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v4;
}

void FigVenueDescriptionMetadataSupplierCreate_cold_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 16) = 1;
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_0_127();
  if (!FigNotificationCenterAddWeakListener())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_0_127();
    FigNotificationCenterAddWeakListener();
  }

  vdms_reevaluateProcessingStateAndNotify(*a2, 0);
  *a3 = *a2;
  *a2 = 0;
}

void vdms_reevaluateProcessingStateAndNotify_cold_1(uint64_t a1, const __CFDate *a2)
{
  OUTLINED_FUNCTION_14_35(a1, a2);
  if (*v3 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v4 = OUTLINED_FUNCTION_5_78();
    v5(v4);
  }

  CFRelease(v2);
}

void vdms_deferredAssetPropertyLoadedCallback_cold_2(uint64_t a1, const __CFDate *a2)
{
  OUTLINED_FUNCTION_14_35(a1, a2);
  if (*v3 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v4 = OUTLINED_FUNCTION_5_78();
    v5(v4);
  }

  CFRelease(v2);
}

uint64_t FigMediaValidatorValidateByteStream(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_0_15();
  v6[2] = v3;
  v9 = v4;
  LODWORD(result) = mv_GetValidationType(v4, &v8);
  if (!result)
  {
    LODWORD(result) = mv_ValidateFileFromByteStream(v6, a2);
  }

  if (result | v7)
  {
    return result;
  }

  else
  {
    return 4294954346;
  }
}

uint64_t mv_ValidateFileFromByteStream(uint64_t a1, const void *a2)
{
  v2 = a2;
  v29 = 0;
  v4 = MEMORY[0x1E695E480];
  if (!a2)
  {
    v5 = FigFormatReaderCreateForStream(*(a1 + 16), *MEMORY[0x1E695E480], 0, &v29);
    if (v5)
    {
      goto LABEL_58;
    }

    v2 = v29;
  }

  v32 = 0;
  v33 = 0;
  v5 = mv_CheckIfFormatReaderIsSupported(a1);
  if (v5)
  {
    goto LABEL_58;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
LABEL_30:
    v14 = 4294954514;
    goto LABEL_31;
  }

  v7 = v6(v2, &v33);
  if (v7)
  {
    goto LABEL_60;
  }

  if (v33 <= 0)
  {
    v7 = OUTLINED_FUNCTION_15_4(4294954346);
LABEL_60:
    v14 = v7;
    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(*(a1 + 112), @"MaxMovieMatrixType");
  if (!Value)
  {
LABEL_18:
    v16 = CFDictionaryGetValue(*(a1 + 112), @"AllowMultipleEdits");
    if (v16)
    {
      v17 = CFEqual(v16, *MEMORY[0x1E695E4C0]) == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v33 < 1)
    {
LABEL_29:
      v14 = 0;
      goto LABEL_31;
    }

    v18 = 0;
    while (1)
    {
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v19)
      {
        goto LABEL_30;
      }

      v7 = v19(v2, v18, &v32, 0, 0);
      if (v7)
      {
        goto LABEL_60;
      }

      v7 = mv_ValidateTrackWithTrackReader(a1, v2, v32, v17, 0, 0);
      if (v7)
      {
        goto LABEL_60;
      }

      if (v32)
      {
        CFRelease(v32);
        v32 = 0;
      }

      if (++v18 >= v33)
      {
        goto LABEL_29;
      }
    }
  }

  v9 = Value;
  cf = 0;
  FigFormatReaderGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v13 = v12(v11, @"MovieMatrix", *v4, &cf);
  v14 = 0;
  v15 = cf;
  if (!v13 && cf)
  {
    v14 = mv_CheckIfMatrixIsSupported(v9, cf);
LABEL_14:
    v15 = cf;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_31:
  if (v32)
  {
    CFRelease(v32);
  }

  if (!v14)
  {
    if (!*(a1 + 41) || *(a1 + 104) != 1)
    {
LABEL_45:
      cf = 0;
      FigFormatReaderGetFigBaseObject();
      v24 = v23;
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25 && !v25(v24, @"ImportantResourceLocation", *v4, &cf) && cf)
      {
        valuePtr = 0;
        v26 = CFDictionaryGetValue(cf, @"LocationOffset");
        if (v26)
        {
          CFNumberGetValue(v26, kCFNumberSInt64Type, &valuePtr);
          *(a1 + 24) = valuePtr;
        }

        valuePtr = 0;
        v27 = CFDictionaryGetValue(cf, @"LocationSize");
        if (v27)
        {
          CFNumberGetValue(v27, kCFNumberSInt64Type, &valuePtr);
          *(a1 + 32) = valuePtr;
        }

        CFRelease(cf);
      }

      v14 = 0;
      goto LABEL_54;
    }

    v20 = *(a1 + 8);
    if (v20)
    {
      v21 = CFBooleanGetValue(v20);
      v22 = *(a1 + 48);
      if (v21 == 1)
      {
        if (!v22 || !*(a1 + 56))
        {
LABEL_42:
          v5 = OUTLINED_FUNCTION_15_4(4294954346);
          if (!v5)
          {
            goto LABEL_43;
          }

LABEL_58:
          v14 = v5;
          goto LABEL_54;
        }
      }

      else if (v22 >= 1)
      {
        goto LABEL_42;
      }
    }

LABEL_43:
    if (*(a1 + 48) >= 1 && !*(a1 + 56))
    {
      v5 = OUTLINED_FUNCTION_15_4(4294954346);
      if (v5)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_45;
  }

LABEL_54:
  if (v29)
  {
    CFRelease(v29);
  }

  return v14;
}

uint64_t mv_ValidateIndividualTrack(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int a4)
{
  OUTLINED_FUNCTION_0_15();
  v12[14] = v8;
  result = mv_CheckIfFormatReaderIsSupported(v12);
  if (!result)
  {
    Value = CFDictionaryGetValue(a3, @"AllowMultipleEdits");
    if (Value)
    {
      v11 = CFEqual(Value, *MEMORY[0x1E695E4C0]) == 0;
    }

    else
    {
      v11 = 1;
    }

    return mv_ValidateTrackWithTrackReader(v12, a1, a2, v11, 1, a4);
  }

  return result;
}

uint64_t mv_GetVideoProfileAndLevelConstraints(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  TypeID = CFArrayGetTypeID();
  OUTLINED_FUNCTION_7_57(TypeID, v15, @"VideoCodecProfiles", @"SupportedProfiles", TypeID, &v34);
  if (!v16)
  {
    if (v34 || (v17 = CFNumberGetTypeID(), OUTLINED_FUNCTION_7_57(v17, v18, @"VideoCodecProfiles", @"MaxProfile", v17, &v31), !v16))
    {
      v19 = CFDictionaryGetTypeID();
      OUTLINED_FUNCTION_7_57(v19, v20, @"VideoCodecProfiles", @"PerProfileConstraints", v19, &v32);
      if (!v16)
      {
        v21 = CFArrayGetTypeID();
        OUTLINED_FUNCTION_7_57(v21, v22, @"VideoCodecProfiles", @"SupportedLevels", v21, &v33);
        if (!v16)
        {
          if (v33 || (v23 = CFNumberGetTypeID(), OUTLINED_FUNCTION_7_57(v23, v24, @"VideoCodecProfiles", @"MaxLevel", v23, &v30), !v16))
          {
            v25 = CFNumberGetTypeID();
            OUTLINED_FUNCTION_7_57(v25, v26, @"VideoCodecProfiles", @"MaxTier", v25, &v29);
          }
        }
      }
    }
  }

  v27 = v16;
  if (!v16 && !v31 && !v34)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (a5)
  {
    *a5 = v32;
  }

  if (a3)
  {
    *a3 = v34;
  }

  if (a6)
  {
    *a6 = v31;
  }

  if (a4)
  {
    *a4 = v33;
  }

  if (a7)
  {
    *a7 = v30;
  }

  if (a8)
  {
    *a8 = v29;
  }

  return v27;
}

uint64_t mv_EvaluateProfileConstraints(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, double *a5)
{
  v9 = CFGetTypeID(cf);
  if (v9 != CFDictionaryGetTypeID())
  {
    return 1;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a1);
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  Value = CFDictionaryGetValue(cf, v11);
  if (Value && (v23 = 0, v14 = CFGetTypeID(Value), v14 == CFDictionaryGetTypeID()))
  {
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      goto LABEL_12;
    }

    number = 0;
    v15 = v23 * 1000000.0;
    if (a5)
    {
      *a5 = v15;
    }

    FigTrackReaderGetFigBaseObject();
    v17 = v16;
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18 && (v18(v17, @"EstimatedDataRate", v10, &number), number))
    {
      valuePtr = 0.0;
      CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
      v19 = (valuePtr * 8.0) <= v15;
      if (number)
      {
        CFRelease(number);
      }
    }

    else
    {
LABEL_12:
      v19 = 1;
    }

    if (a4)
    {
      FigCFDictionaryGetInt32IfPresent();
    }
  }

  else
  {
    v19 = 1;
  }

  CFRelease(v12);
  return v19;
}

uint64_t mv_ComputeDroppableFrameRate(uint64_t a1, CMTime *a2, int a3, double *a4, double *a5)
{
  v70 = 0;
  v71 = **&MEMORY[0x1E6960CC0];
  cf = 0;
  v69 = 0;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    goto LABEL_34;
  }

  IntIfPresent = v10(a1, &v70);
  if (IntIfPresent)
  {
    goto LABEL_46;
  }

  v12 = v70;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v13)
  {
LABEL_34:
    v49 = 4294954514;
    goto LABEL_35;
  }

  IntIfPresent = v13(v12, &v69);
  if (!IntIfPresent)
  {
    v14 = 0;
    v59 = 0;
    v15 = *MEMORY[0x1E695E480];
    v16 = *MEMORY[0x1E6960438];
    v57 = *MEMORY[0x1E69601B8];
    v55 = *MEMORY[0x1E6960450];
    v17 = 1;
    while (1)
    {
      v18 = v17;
      memset(&time1, 0, sizeof(time1));
      v66 = 0;
      HIBYTE(v65) = 0;
      value = 0;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      FigSampleCursorGetFigBaseObject();
      v20 = v19;
      VTable = CMBaseObjectGetVTable();
      v29 = *(VTable + 8);
      IntIfPresent = VTable + 8;
      v30 = *(v29 + 48);
      if (v30 && (IntIfPresent = v30(v20, @"SampleDependencyAttributes", v15, &cf), !IntIfPresent) && (IntIfPresent = cf) != 0 && (v20 = CFGetTypeID(cf), IntIfPresent = CFDictionaryGetTypeID(), v20 == IntIfPresent))
      {
        LODWORD(lhs.value) = -1;
        if (a3 == -1 || (IntIfPresent = CFDictionaryGetValueIfPresent(cf, v16, &value), !IntIfPresent))
        {
          v31 = HIBYTE(v65);
        }

        else
        {
          IntIfPresent = FigCFDictionaryGetIntIfPresent();
          v31 = SLODWORD(lhs.value) > 0;
          HIBYTE(v65) = SLODWORD(lhs.value) > 0;
        }

        if (!v31)
        {
          LOBYTE(rhs.value) = 1;
          IntIfPresent = FigCFDictionaryGetBooleanIfPresent();
          v31 = LOBYTE(rhs.value) == 0;
          HIBYTE(v65) = LOBYTE(rhs.value) == 0;
        }
      }

      else
      {
        v32 = *(*(OUTLINED_FUNCTION_8_41(IntIfPresent, v22, v23, v24, v25, v26, v27, v28, v53, v55, v57, v59, rhs.value, *&rhs.timescale, rhs.epoch, v62, lhs.value, *&lhs.timescale, lhs.epoch, value, v65, v66, time1.value, *&time1.timescale, time1.epoch, cf, v69) + 16) + 64);
        if (!v32)
        {
          goto LABEL_34;
        }

        IntIfPresent = v32(v20, 0, 0, 0, &v65 + 7);
        if (IntIfPresent)
        {
          break;
        }

        v31 = HIBYTE(v65);
      }

      if (v31)
      {
        ++v14;
      }

      else
      {
        lhs.value = 0;
        v44 = CMBaseObjectGetVTable();
        v45 = *(v44 + 16);
        IntIfPresent = v44 + 16;
        if (*(v45 + 144))
        {
          v46 = OUTLINED_FUNCTION_8_41(IntIfPresent, v22, v23, v24, v25, v26, v27, v28, v53, v55, v57, v59, rhs.value, *&rhs.timescale, rhs.epoch, v62, lhs.value, *&lhs.timescale, lhs.epoch, value, v65, v66, time1.value, *&time1.timescale, time1.epoch, cf, v69);
          v47 = *(v46 + 16);
          IntIfPresent = v46 + 16;
          v48 = *(v47 + 144);
          if (v48)
          {
            IntIfPresent = v48(v20, 0, &lhs, 0, 0);
            if (!IntIfPresent)
            {
              v59 += 8 * lhs.value;
            }
          }
        }
      }

      v33 = *(*(OUTLINED_FUNCTION_8_41(IntIfPresent, v22, v23, v24, v25, v26, v27, v28, v53, v55, v57, v59, rhs.value, *&rhs.timescale, rhs.epoch, v62, lhs.value, *&lhs.timescale, lhs.epoch, value, v65, v66, time1.value, *&time1.timescale, time1.epoch, cf, v69) + 16) + 56);
      if (!v33)
      {
        goto LABEL_34;
      }

      IntIfPresent = v33(v20, &time1);
      if (IntIfPresent)
      {
        break;
      }

      lhs = v71;
      rhs = time1;
      v34 = CMTimeAdd(&v71, &lhs, &rhs);
      v42 = *(*(OUTLINED_FUNCTION_8_41(v34, v35, v36, v37, v38, v39, v40, v41, v54, v56, v58, v60, rhs.value, *&rhs.timescale, rhs.epoch, v62, lhs.value, *&lhs.timescale, lhs.epoch, value, v65, v66, time1.value, *&time1.timescale, time1.epoch, cf, v69) + 16) + 168);
      if (!v42)
      {
        goto LABEL_34;
      }

      IntIfPresent = v42(v20, 1, &v66);
      if (IntIfPresent)
      {
        break;
      }

      if (v66 == 1)
      {
        OUTLINED_FUNCTION_5_79();
        lhs = *a2;
        v43 = CMTimeCompare(&time1, &lhs);
        v17 = v18 + 1;
        if (v43 < 0)
        {
          continue;
        }
      }

      OUTLINED_FUNCTION_5_79();
      Seconds = CMTimeGetSeconds(&time1);
      OUTLINED_FUNCTION_5_79();
      v52 = CMTimeGetSeconds(&time1);
      if (a4)
      {
        *a4 = (v18 - v14) / Seconds;
      }

      v49 = 0;
      if (a5)
      {
        *a5 = v59 / v52;
      }

      goto LABEL_35;
    }
  }

LABEL_46:
  v49 = IntIfPresent;
LABEL_35:
  if (v70)
  {
    CFRelease(v70);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v49;
}

uint64_t mv_LookupCodecSupport(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = 4294954344;
  if (a1)
  {
    if (a2)
    {
      result = OUTLINED_FUNCTION_3_90(4294954344, a2, @"vide");
      if (!result)
      {
        result = OUTLINED_FUNCTION_3_90(result, v4, @"VideoCodecs");
        if (!result)
        {
          result = OUTLINED_FUNCTION_3_90(result, v5, @"soun");
          if (!result)
          {
            result = OUTLINED_FUNCTION_3_90(result, v6, @"AudioCodecs");
            if (!result)
            {
              return 4294954344;
            }
          }
        }
      }
    }
  }

  return result;
}