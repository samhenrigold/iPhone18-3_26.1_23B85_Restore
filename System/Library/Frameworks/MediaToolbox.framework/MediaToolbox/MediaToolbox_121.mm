double remaker_AddAudioTrackWithPreset(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, _DWORD *a5)
{
  v24[16] = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (*remakerFamily_getStorage(a1) >= 7u)
  {
    OUTLINED_FUNCTION_429();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    if (dword_1EAF173A8)
    {
      LODWORD(v21) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!a3)
    {
      goto LABEL_9;
    }

    if (CFEqual(a3, @"Preset_NoAudio"))
    {
      goto LABEL_6;
    }

    if (!CFEqual(a3, @"Preset_Passthru"))
    {
      v24[0] = 0;
      *v23 = 0;
      *type = 0;
      v21 = 0;
      result = FigAudioCompressionOptionsGetPreset(a3, v24, v23, &v21, type);
      if (!v14)
      {
        v15 = v24[0];
        v16 = *v23;
        v18 = *type;
        v17 = v21;
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v19)
        {
          if (!v19(a1, a2, v15, v16, v17, v18, a4, &v22))
          {
LABEL_6:
            if (!a5)
            {
              return result;
            }

LABEL_12:
            *a5 = v22;
          }
        }
      }
    }

    else
    {
LABEL_9:
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v12)
      {
        v13 = v12(a1, a2, &v22);
        if (a5)
        {
          if (!v13)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t remaker_AddAudioMixdownTrackWithPreset(const void *a1, const __CFArray *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v48 = 0;
  *v46 = 0u;
  v47 = 0u;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  cf = 0;
  if (*remakerFamily_getStorage(a1) >= 7u || !a3)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_26;
  }

  FigAudioCompressionOptionsGetPreset(a3, &v45, &v44, &v43, &v42);
  if (SanitizedDestinationASBDAndAudioOptions)
  {
LABEL_26:
    v18 = SanitizedDestinationASBDAndAudioOptions;
    goto LABEL_28;
  }

  if (OUTLINED_FUNCTION_13_30(0, v11, v12, v13, v14, v15, v16, v17, v39, cf, v42, v43, v44, v45, v46[0], v46[1], v47, *(&v47 + 1), v48, v49, v50, v51, v52) >= 1)
  {
    LODWORD(v18) = 0;
    v19 = 0;
    do
    {
      CFArrayGetValueAtIndex(a2, v19);
      HIDWORD(v49) = 0;
      LODWORD(Count) = FigCFDictionaryGetInt32IfPresent();
      if (!Count)
      {
        LODWORD(v18) = 0;
        goto LABEL_14;
      }

      SourceASBDForTrackID = remakerFamily_getSourceASBDForTrackID(a1, HIDWORD(v49), &v50);
      v29 = HIDWORD(v51);
      if (HIDWORD(v51) <= v18)
      {
        v29 = v18;
      }

      if (!SourceASBDForTrackID)
      {
        LODWORD(v18) = v29;
      }

      ++v19;
      Count = CFArrayGetCount(a2);
    }

    while (v19 < Count);
    if (v18 >= 1)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_429();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, cf, v42);
  v18 = Count;
  if (!Count)
  {
LABEL_14:
    v30 = OUTLINED_FUNCTION_13_30(Count, v21, v22, v23, v24, v25, v26, v27, v40, cf, v42, v43, v44, v45, v46[0], v46[1], v47, *(&v47 + 1), v48, v49, v50, v51, v52);
    if (v30 < 1)
    {
      v33 = 0.0;
    }

    else
    {
      v31 = v30;
      v32 = 0;
      v33 = 0.0;
      do
      {
        CFArrayGetValueAtIndex(a2, v32);
        HIDWORD(v49) = 0;
        if (!FigCFDictionaryGetInt32IfPresent() || remakerFamily_getSourceASBDForTrackID(a1, HIDWORD(v49), &v50))
        {
          break;
        }

        if (*&v50 > v33)
        {
          v33 = *&v50;
        }

        ++v32;
      }

      while (v31 != v32);
    }

    SanitizedDestinationASBDAndAudioOptions = remaker_createSanitizedDestinationASBDAndAudioOptions(v18, v45, v43 != 0, v42, v46, &cf, v33);
    if (SanitizedDestinationASBDAndAudioOptions)
    {
      goto LABEL_26;
    }

    v35 = v43;
    v34 = v44;
    v36 = cf;
    v37 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v37)
    {
      SanitizedDestinationASBDAndAudioOptions = v37(a1, a2, v46, v34, v35, v36, a4, a5);
      goto LABEL_26;
    }

    v18 = 4294954514;
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t remaker_AddPassthroughTrackWithOptions(const void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  cf = 0;
  v40 = 0;
  v38 = 0;
  desc = 0;
  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*Storage != 1)
  {
    OUTLINED_FUNCTION_5_71();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
    goto LABEL_50;
  }

  v11 = *(Storage + 72);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12(v11, a2, &cf);
  if (v13)
  {
LABEL_50:
    v26 = v13;
    Mutable = 0;
    goto LABEL_31;
  }

  v14 = cf;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    goto LABEL_30;
  }

  v13 = v15(v14, 0, &v38);
  if (v13)
  {
    goto LABEL_50;
  }

  v13 = remakerFamily_createChannel(a1, a2, v38, &v40);
  if (v13)
  {
    goto LABEL_50;
  }

  v16 = CFGetTypeID(a1);
  v13 = remakerFamily_copyFormatDescription(v16, cf, &desc);
  if (v13)
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_9_39();
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v18 = v38;
  if (v38 == 1986618469)
  {
    v36 = 629145600;
  }

  else if (v38 == v4)
  {
    v19 = desc;
    if (desc)
    {
      v19 = CFRetain(desc);
      v18 = v38;
    }

    else
    {
      v18 = 1936684398;
    }

    v36 = 0;
    *(v40 + 40) = v19;
  }

  else
  {
    v36 = 0;
  }

  v20 = v40;
  *(v40 + 48) = 1;
  v21 = *(Storage + 208) && v18 == v4;
  v22 = v21;
  *(v20 + 50) = v22;
  v23 = *(Storage + 184);
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v24)
  {
LABEL_30:
    Mutable = 0;
    v26 = 4294954514;
    goto LABEL_31;
  }

  v13 = v24(v23, v18, 0, v20 + 300);
  if (v13)
  {
    goto LABEL_50;
  }

  if (a3 && (LOBYTE(v42.value) = 0, FigCFDictionaryGetBooleanIfPresent()))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_14_33(@"InterleaveTrack", MEMORY[0x1E695E4D0]);
  }

  else
  {
    Mutable = 0;
  }

  v28 = remakerFamily_setFormatWriterTrackProperties(a1, *(v40 + 300), MediaSubType, Mutable);
  if (v28)
  {
    goto LABEL_52;
  }

  v28 = remakerFamily_setFormatWriterProperties(a1, MediaSubType);
  if (v28)
  {
    goto LABEL_52;
  }

  v28 = remaker_transferTrackSettingsForPassthrough(a1, v38, cf, *(Storage + 184), *(v40 + 300));
  if (v28)
  {
    goto LABEL_52;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (FigCFDictionaryGetCMTimeIfPresent())
  {
    if (v38 == 1986618469)
    {
      *(v40 + 49) = 1;
      goto LABEL_45;
    }

LABEL_51:
    OUTLINED_FUNCTION_5_71();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_52;
  }

LABEL_45:
  v29 = CFGetAllocator(a1);
  v30 = *(Storage + 184);
  v31 = *(v40 + 300);
  CMTimeMake(&v42, 2, 1);
  CMTimeMake(&v41, 1, 1);
  FigRenderPipelineCreateForWritingTrack(v29, v30, v31, &v42.value, v36, &v41.value, v36 >> 1, (v40 + 56));
  if (v28)
  {
LABEL_52:
    v26 = v28;
    goto LABEL_31;
  }

  v32 = v40;
  if (a4)
  {
    *a4 = *(v40 + 300);
  }

  remakerFamily_commitChannel(a1, v32);
  v26 = 0;
  v40 = 0;
LABEL_31:
  remakerFamily_discardChannel(a1, v40);
  if (desc)
  {
    CFRelease(desc);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v26;
}

uint64_t remaker_AddTemporalMetadataTrackWithOptions(const void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = a1;
  v95 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  v91 = 0;
  v92 = 0;
  v90 = 1835365473;
  cf = 0;
  desc = 0;
  v87 = 0;
  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*Storage != 1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF173A0, 4294955183, "<<<< Remaker >>>>", 3832, v4);
    goto LABEL_88;
  }

  v10 = *(Storage + 72);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v11)
  {
    goto LABEL_58;
  }

  v12 = v11(v10, a2, &v91);
  if (v12)
  {
    goto LABEL_88;
  }

  v13 = v91;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v14)
  {
LABEL_58:
    v51 = 0;
    v31 = 4294954514;
    goto LABEL_59;
  }

  v12 = v14(v13, 0, &v90);
  if (v12)
  {
    goto LABEL_88;
  }

  if (v90 != 1835365473)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF173A0, 4294955194, "<<<< Remaker >>>>", 3840, v4);
    goto LABEL_88;
  }

  v15 = CFGetTypeID(v7);
  v12 = remakerFamily_copyFormatDescription(v15, v91, &desc);
  if (v12)
  {
LABEL_88:
    v31 = v12;
LABEL_50:
    v51 = 0;
    goto LABEL_59;
  }

  v83 = a2;
  v84 = Storage;
  if (CMFormatDescriptionGetMediaSubType(desc) != 1835360888)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF173A0, 4294955194, "<<<< Remaker >>>>", 3845, v4);
    goto LABEL_88;
  }

  v16 = remakerFamily_getStorage(v7);
  theArray[0].value = 0;
  v17 = *(v16 + 416);
  if (v17)
  {
    CFRelease(v17);
    *(v16 + 416) = 0;
  }

  v18 = *(v16 + 408);
  v19 = MEMORY[0x1E695E480];
  if (!v18)
  {
    v30 = 0;
    v31 = 0;
    goto LABEL_47;
  }

  v81 = a4;
  v82 = v7;
  Count = CFDictionaryGetCount(v18);
  v21 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v22 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(*(v16 + 408), v21, v22);
  v23 = *v19;
  Mutable = CFArrayCreateMutable(*v19, 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v26 = CFArrayGetCount(v22[i]);
      if (v26 >= 1)
      {
        v27 = v26;
        for (j = 0; j != v27; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v22[i], j);
          identifierOut.value = 0;
          if (!CMMetadataCreateIdentifierForKeyAndKeySpace(v23, ValueAtIndex, v21[i], &identifierOut))
          {
            CFArrayAppendValue(Mutable, identifierOut.value);
            if (identifierOut.value)
            {
              CFRelease(identifierOut.value);
            }
          }
        }
      }
    }
  }

  free(v21);
  free(v22);
  if (Mutable)
  {
    *(v16 + 416) = CFRetain(Mutable);
    CFRelease(Mutable);
  }

  else
  {
    *(v16 + 416) = 0;
  }

  FigAssetTrackGetCMBaseObject();
  v33 = v32;
  v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v34)
  {
    v31 = 4294954514;
LABEL_45:
    v30 = 1;
LABEL_46:
    a4 = v81;
    v7 = v82;
    goto LABEL_47;
  }

  v35 = v34(v33, @"FormatDescriptionArray", v23, theArray);
  if (v35)
  {
    v31 = v35;
    goto LABEL_45;
  }

  if (!theArray[0].value)
  {
    v51 = 0;
    v31 = 4294955173;
    v7 = v82;
    goto LABEL_59;
  }

  v36 = CFArrayGetCount(theArray[0].value);
  a4 = v81;
  v7 = v82;
  if (v36)
  {
    v37 = v36;
    if (v36 >= 1)
    {
      v38 = 0;
      v80 = 0;
      v39 = *MEMORY[0x1E695FFE0];
      v85 = v36;
      do
      {
        v40 = CFArrayGetValueAtIndex(theArray[0].value, v38);
        Extensions = CMFormatDescriptionGetExtensions(v40);
        v42 = CFDictionaryGetValue(Extensions, v39);
        if (v42)
        {
          v43 = v42;
          v44 = CFDictionaryGetCount(v42);
          v45 = malloc_type_calloc(v44, 8uLL, 0x6004044C4A2DFuLL);
          v46 = malloc_type_calloc(v44, 8uLL, 0x6004044C4A2DFuLL);
          CFDictionaryGetKeysAndValues(v43, v45, v46);
          if (v44 >= 1)
          {
            v47 = v39;
            v48 = v46;
            while (1)
            {
              FigMetadataKeyGetLocalIDUInt32();
              IdentifierForLocalID = FigMetadataFormatDescriptionGetIdentifierForLocalID();
              v50 = *(v16 + 416);
              v96.length = CFArrayGetCount(v50);
              v96.location = 0;
              if (CFArrayContainsValue(v50, v96, IdentifierForLocalID))
              {
                break;
              }

              ++v48;
              if (!--v44)
              {
                goto LABEL_40;
              }
            }

            v80 = 1;
LABEL_40:
            v39 = v47;
            v37 = v85;
          }

          free(v45);
          free(v46);
        }

        ++v38;
      }

      while (v38 != v37);
      v31 = 0;
      v30 = v80 == 0;
      goto LABEL_46;
    }

    v31 = 0;
  }

  else
  {
    v31 = 4294955173;
  }

  v30 = 1;
LABEL_47:
  if (theArray[0].value)
  {
    CFRelease(theArray[0].value);
  }

  if (v31 != 0 || v30)
  {
    goto LABEL_50;
  }

  v12 = remakerFamily_createChannel(v7, v83, v90, &v92);
  if (v12)
  {
    goto LABEL_88;
  }

  v52 = v92;
  *(v92 + 48) = 0;
  *(v52 + 50) = 1;
  v53 = *(v84 + 184);
  v54 = v90;
  v55 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v55)
  {
    goto LABEL_58;
  }

  v12 = v55(v53, v54, 0, v52 + 300);
  if (v12)
  {
    goto LABEL_88;
  }

  v56 = MEMORY[0x1E695E480];
  if (a3 && (LOBYTE(theArray[0].value) = 0, FigCFDictionaryGetBooleanIfPresent()))
  {
    v51 = CFDictionaryCreateMutable(*v56, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v51)
    {
      OUTLINED_FUNCTION_2_40();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, value, v79);
LABEL_94:
      v31 = RenderPipelineOptions;
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_14_33(@"InterleaveTrack", MEMORY[0x1E695E4D0]);
  }

  else
  {
    v51 = 0;
  }

  v58 = *(v92 + 300);
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  RenderPipelineOptions = remakerFamily_setFormatWriterTrackProperties(v7, v58, MediaSubType, v51);
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v61 = CMFormatDescriptionGetMediaSubType(desc);
  RenderPipelineOptions = remakerFamily_setFormatWriterProperties(v7, v61);
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v62 = CFGetAllocator(v7);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  RenderPipelineOptions = CMBufferQueueCreate(v62, 0, CallbacksForUnsortedSampleBuffers, (v92 + 312));
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v64 = *(v84 + 184);
  v65 = *(v92 + 300);
  v66 = CFGetAllocator(v7);
  v67 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v67)
  {
    v67(v64, v65, @"SourceSampleBufferQueue", v66, &v87);
  }

  v68 = CFGetAllocator(v7);
  v69 = *(v92 + 312);
  v70 = v87;
  CMTimeMake(theArray, 1, 10);
  CMTimeMake(&identifierOut, 1, 30);
  v71 = *(v84 + 32) ? 0 : 31;
  FigMediaProcessorCreateForTemporalMetadataFilter(v68, v69, v70, theArray, &identifierOut, *(v84 + 416), 0, v71, (v92 + 288));
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  RenderPipelineOptions = FigNotificationCenterAddWeakListeners();
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v72 = CFGetAllocator(v7);
  v73 = desc;
  remakerFamily_getLowWaterLevel(*(v84 + 32), theArray);
  remakerFamily_getHighWaterLevel(*(v84 + 32), &identifierOut);
  RenderPipelineOptions = remakerFamily_createRenderPipelineOptions(v72, v73, &theArray[0].value, &identifierOut.value, 0, 0, *(v84 + 424), 0, 0, *(v84 + 32), 0, 0, 0, v84 + 41, v83, &cf);
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v74 = CFGetAllocator(v7);
  FigRenderPipelineCreateForBufferQueue(v74, *(v92 + 312), 0, (v92 + 56));
  if (RenderPipelineOptions)
  {
    goto LABEL_94;
  }

  v75 = *(v92 + 300);
  if (a4)
  {
    *a4 = v75;
  }

  v31 = remaker_transferTrackSettingsForPassthrough(v7, 1835365473, v91, *(v84 + 184), v75);
  if (!v31)
  {
    v76 = (v92 + 328);
    CMTimeMake(theArray, 1, 30);
    *v76 = theArray[0];
    remakerFamily_commitChannel(v7, v92);
    v92 = 0;
  }

LABEL_59:
  remakerFamily_discardChannel(v7, v92);
  if (desc)
  {
    CFRelease(desc);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  FigBufferQueueRelease();
  return v31;
}

uint64_t remaker_AddCaptionTrack(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  cf = 0;
  v38 = 0;
  v36 = 0;
  if (*Storage != 1)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
    goto LABEL_30;
  }

  v12 = Storage;
  v13 = *(Storage + 72);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14)
  {
LABEL_24:
    v31 = 4294954514;
    goto LABEL_25;
  }

  v15 = v14(v13, a2, &cf);
  if (v15)
  {
LABEL_30:
    v31 = v15;
    goto LABEL_25;
  }

  v16 = cf;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v17)
  {
    goto LABEL_24;
  }

  v15 = v17(v16, 0, &v36);
  if (v15)
  {
    goto LABEL_30;
  }

  v15 = remakerFamily_createChannel(a1, a2, a3, &v38);
  if (v15)
  {
    goto LABEL_30;
  }

  v18 = *(v12 + 184);
  v19 = v38;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v20)
  {
    goto LABEL_24;
  }

  v15 = v20(v18, a3, 0, v19 + 300);
  if (v15)
  {
    goto LABEL_30;
  }

  v15 = remakerFamily_setFormatWriterTrackProperties(a1, *(v38 + 300), a4, 0);
  if (v15)
  {
    goto LABEL_30;
  }

  v15 = remakerFamily_setFormatWriterProperties(a1, a4);
  if (v15)
  {
    goto LABEL_30;
  }

  v15 = remaker_transferTrackSettingsForPassthrough(a1, a3, cf, *(v12 + 184), *(v38 + 300));
  if (v15)
  {
    goto LABEL_30;
  }

  v21 = CFGetAllocator(a1);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v15 = CMBufferQueueCreate(v21, 0, CallbacksForUnsortedSampleBuffers, (v38 + 248));
  if (v15)
  {
    goto LABEL_30;
  }

  v23 = CFGetAllocator(a1);
  FigRenderPipelineCreateForBufferQueue(v23, *(v38 + 248), 0, (v38 + 56));
  if (v15)
  {
    goto LABEL_30;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v15 = FigNotificationCenterAddWeakListeners();
  if (v15)
  {
    goto LABEL_30;
  }

  v24 = *MEMORY[0x1E695E480];
  v25 = *(v38 + 248);
  v26 = *(v12 + 184);
  v27 = *(v38 + 300);
  CMTimeMake(&v40, 2, 1);
  CMTimeMake(&v39, 1, 1);
  v28 = *(v12 + 32) ? 0 : 31;
  v15 = FigMediaProcessorCreateForCaptionConversionWithFormatWriter(v24, a3, a4, v25, v26, v27, &v40.value, 0, &v39, 0, v28, (v38 + 288));
  if (v15)
  {
    goto LABEL_30;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v15 = FigNotificationCenterAddWeakListeners();
  if (v15)
  {
    goto LABEL_30;
  }

  v29 = v38;
  *(v38 + 52) = 1;
  if (a6)
  {
    *a6 = *(v29 + 300);
  }

  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v29 = v38;
  }

  remakerFamily_commitChannel(a1, v29);
  v31 = 0;
  v38 = 0;
LABEL_25:
  remakerFamily_discardChannel(a1, v38);
  if (cf)
  {
    CFRelease(cf);
  }

  return v31;
}

void spatialFormatDescriptionExtensionApplierFunction(const void *a1, const void *a2, __CFDictionary *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFStringGetTypeID())
    {
      v7 = &qword_1E748C768;
      v8 = 13;
      while (!CFEqual(a1, **(v7 - 1)))
      {
        v7 += 2;
        if (!--v8)
        {
          return;
        }
      }

      v9 = **v7;

      CFDictionarySetValue(a3, v9, a2);
    }
  }
}

void remaker_CanPerformFastFrameRateConversionWork(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(*(a1 + 32));
  v3 = MEMORY[0x1E6960C70];
  HIDWORD(v72) = -1;
  *v70 = *MEMORY[0x1E6960C70];
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v71 = epoch;
  *v61 = *MEMORY[0x1E6960CC0];
  *&v68.value = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  v68.epoch = v5;
  HIBYTE(v67) = 0;
  v65 = 0;
  sbuf = 0;
  v76 = *MEMORY[0x1E6960C70];
  LODWORD(v77) = *(MEMORY[0x1E6960C70] + 8);
  value = *MEMORY[0x1E695E4C0];
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (FigAssetReaderCreateWithAsset(v6, *(Storage + 72), 0, &v65))
  {
    v8 = 0;
LABEL_62:
    v49 = 0;
LABEL_63:
    CFDictionarySetValue(Mutable, @"Remaker_CFBoolean", value);
    goto LABEL_64;
  }

  v8 = CFDictionaryCreateMutable(v6, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  time1 = *a1;
  FigCFDictionarySetCMTime();
  v9 = v65;
  v10 = *(a1 + 24);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v11(v9, v10, v8, &v72 + 4))
  {
    goto LABEL_62;
  }

  v12 = v65;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v13)
  {
    goto LABEL_62;
  }

  *&time1.value = *v61;
  time1.epoch = v5;
  time = **&MEMORY[0x1E6960C88];
  if (v13(v12, &time1, &time))
  {
    goto LABEL_62;
  }

  cf = 0;
  v61[0] = 0;
  v14 = 0;
  v15 = 0;
  flags = *(v3 + 12);
  key = *MEMORY[0x1E6960450];
  v58 = 0xFFFFFFFFLL;
  v17 = sbuf;
  do
  {
    if (!v17 || CMSampleBufferGetNumSamples(v17) < 1)
    {
      v18 = v15;
      goto LABEL_44;
    }

    if (flags)
    {
      memset(&time1, 0, sizeof(time1));
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, sbuf);
      lhs = time1;
      rhs.value = v76;
      rhs.timescale = v77;
      rhs.flags = flags;
      rhs.epoch = epoch;
      CMTimeSubtract(&time, &lhs, &rhs);
      lhs = v68;
      CMTimeAdd(&v68, &lhs, &time);
    }

    else
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, sbuf);
    }

    v76 = time1.value;
    flags = time1.flags;
    LODWORD(v77) = time1.timescale;
    epoch = time1.epoch;
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
    if (!SampleAttachmentsArray)
    {
      goto LABEL_55;
    }

    v20 = SampleAttachmentsArray;
    if (CFArrayGetCount(SampleAttachmentsArray) < 1)
    {
      goto LABEL_55;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_55;
    }

    v18 = v15 + 1;
    v22 = CFDictionaryGetValue(ValueAtIndex, key);
    v23 = v22 == value;
    v24 = v14;
    v25 = v22 != value;
    v26 = v61[0];
    if (v22 == value)
    {
      v26 = v61[0] + 1;
    }

    v61[0] = v26;
    if (v24)
    {
      v14 = 1;
      goto LABEL_44;
    }

    v27 = v22;
    LODWORD(time.value) = 0;
    time1.value = 0;
    if (!CMSampleBufferGetDataBuffer(sbuf))
    {
      HIDWORD(v57) = v23;
      if (remakerFamily_resolveByteReferenceSampleBufferAndCopyByteStream(sbuf, cf, &time1))
      {
        goto LABEL_55;
      }

      v28 = time1.value;
      if (time1.value)
      {
        CFRetain(time1.value);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (time1.value)
      {
        CFRelease(time1.value);
      }

      cf = v28;
      v23 = HIDWORD(v57);
    }

    if (FigH264Bridge_GetSliceInformationFromSampleBuffer())
    {
LABEL_55:
      v49 = cf;
      goto LABEL_63;
    }

    if (v15 <= 0)
    {
      v14 = 0;
      v29 = time.value;
    }

    else
    {
      if (v27 == value && BYTE4(v58))
      {
        v29 = time.value;
LABEL_39:
        if (v58 != v29)
        {
          goto LABEL_55;
        }

        v14 = v61[0] > 10;
        goto LABEL_43;
      }

      if (BYTE4(v58))
      {
        v30 = v25;
      }

      else
      {
        v30 = 0;
      }

      v29 = time.value;
      if (v30)
      {
        goto LABEL_39;
      }

      v14 = 0;
    }

    LODWORD(v58) = v29;
LABEL_43:
    HIDWORD(v58) = v23;
LABEL_44:
    if (sbuf)
    {
      CFRelease(sbuf);
      sbuf = 0;
    }

    v31 = v65;
    v32 = HIDWORD(v72);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v33 || v33(v31, v32, 1, &v67 + 7, &sbuf))
    {
      goto LABEL_55;
    }

    if (HIBYTE(v67))
    {
      break;
    }

    v17 = sbuf;
    v15 = v18;
  }

  while (sbuf);
  FigAssetReaderGetFigBaseObject();
  if (v34)
  {
    v42 = v34;
    VTable = CMBaseObjectGetVTable();
    v44 = *(VTable + 8);
    v34 = VTable + 8;
    v45 = *(v44 + 24);
    if (v45)
    {
      v34 = v45(v42);
    }
  }

  *&time1.value = *&v68.value;
  v46 = OUTLINED_FUNCTION_10_39(v34, v35, v36, v37, v38, v39, v40, v41, v57, v58, cf, key, *v61, *&v61[2], value, rhs.value, *&rhs.timescale, rhs.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v65, sbuf, v67, v68.value, *&v68.timescale, v68.epoch);
  if (v18 > 0x7FFFFFFF)
  {
    CMTimeMultiplyByFloat64(v47, v46, v48);
  }

  else
  {
    CMTimeMultiplyByRatio(v47, v46, 1, v18);
  }

  time = v68;
  CMTimeMultiplyByRatio(&time1, &time, 9, 10);
  *a1 = time1;
  v49 = cf;
  if (!v14)
  {
    goto LABEL_63;
  }

  *&time1.value = *v70;
  time1.epoch = v71;
  time = *a1;
  v50 = CMTimeCompare(&time1, &time);
  v51 = value;
  if (v50 >= 0)
  {
    v51 = *MEMORY[0x1E695E4D0];
  }

  value = v51;
  CFDictionarySetValue(Mutable, @"Remaker_CFBoolean", v51);
LABEL_64:
  remakerFamily_safelyPostNotification(*(a1 + 32), 0, @"Remaker_CanPerformFastFrameRateConversion", Mutable, *(a1 + 32), v52, v53, v54, v57, v58, cf, key, SBYTE2(key), BYTE3(key), SHIDWORD(key), v61[0], v61[1], v61[2], v61[3], value, rhs.value, rhs.timescale, rhs.epoch, lhs.value, *&lhs.timescale, lhs.epoch, v65, sbuf, v67, v68.value, *&v68.timescale, v68.epoch, v69, v70[0], v70[1], v71, v72, time.value, *&time.timescale, time.epoch, v74, time1.value, *&time1.timescale, time1.epoch, v76, v77, v78, v79, v80, v81, v82);
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  v55 = *(a1 + 32);
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = *(a1 + 40);
  if (v56)
  {
    dispatch_release(v56);
  }

  free(a1);
}

void remaker_AddVideoCompositionTrack_cold_4(const __CFArray *a1, void *a2, void *a3)
{
  if (CFArrayGetCount(a1) >= 1)
  {
    FirstValue = FigCFArrayGetFirstValue();
    CFDictionaryApplyFunction(FirstValue, spatialFormatDescriptionExtensionApplierFunction, a3);
  }
}

uint64_t fbapOverlapMapper_invalidate(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF173C8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 32))
  {
    *(DerivedStorage + 32) = 1;
    v3 = *(DerivedStorage + 40);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 40) = 0;
    }

    v4 = *(DerivedStorage + 48);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 48) = 0;
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

double fbapOverlapMapper_finalize(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  fbapOverlapMapper_invalidate(a1);
  FigSimpleMutexDestroy();
  if (dword_1EAF173C8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t fbapOverlapMapper_recordflushWithinTimeRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (*(a3 + 12) & 1) != 0 && (*(a3 + 36) & 1) != 0 && !*(a3 + 40) && (*(a3 + 24) & 0x8000000000000000) == 0)
  {
    v7 = *(DerivedStorage + 56);
    if ((v7 + 1) <= 9u)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 0;
    }

    *(DerivedStorage + 56) = v8;
    fbapOverlapMapper_debugPrintWithFlushInfo(a1, a2);
  }

  return 0;
}

uint64_t fbapOverlapMapper_debugPrintWithFlushInfo(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  FigBufferedAirPlayOutputGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, @"LastSbufEndOPTS", *MEMORY[0x1E695E480], &dictionaryRepresentation);
    if (!v8)
    {
      CMTimeMakeFromDictionary(&time, dictionaryRepresentation);
      *(DerivedStorage + 60) = time;
      FigSimpleMutexLock();
      if (!*(DerivedStorage + 32))
      {
        v9 = CMBaseObjectGetDerivedStorage();
        v45 = 0;
        v46 = &v45;
        v47 = 0x3000000000;
        v49 = *(MEMORY[0x1E6960C70] + 16);
        v48 = *MEMORY[0x1E6960C70];
        v40 = MEMORY[0x1E69E9820];
        v41 = 0x40000000;
        v42 = __fbapOverlapMapper_debugPrintSystemTime_block_invoke;
        v43 = &unk_1E748C858;
        v44 = &v45;
        FigCFDictionaryApplyBlock();
        v10 = v46;
        if ((*(v46 + 36) & 1) == 0)
        {
          v11 = MEMORY[0x1E6960CC0];
          *(v46 + 3) = *MEMORY[0x1E6960CC0];
          *(v10 + 40) = *(v11 + 16);
        }

        if (dword_1EAF173C8)
        {
          v39 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v13 = v39;
          v14 = type;
          v36 = os_log_and_send_and_compose_flags_and_os_log_type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v15 = v13;
          }

          else
          {
            v15 = v13 & 0xFFFFFFFE;
          }

          if (v15)
          {
            if (a1)
            {
              v35 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v35 = "";
            }

            OUTLINED_FUNCTION_6_66(v46);
            Seconds = CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_6_66(v46);
            v50 = *(v9 + 60);
            v19 = fbapOverlapMapper_debugPrintTimeIntervalGraph(MEMORY[0x1E6960C70], &time, &v50, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v18, 2u);
            time = *(v9 + 60);
            v20 = CMTimeGetSeconds(&time);
            LODWORD(v50.value) = 136317186;
            *(&v50.value + 4) = "fbapOverlapMapper_debugPrintSystemTime";
            LOWORD(v50.flags) = 2048;
            *(&v50.flags + 2) = a1;
            HIWORD(v50.epoch) = 2082;
            v51 = v35;
            v52 = 1024;
            v53 = 25;
            v54 = 2080;
            v55 = "";
            v56 = 2048;
            v57 = Seconds;
            v58 = 1024;
            v59 = 70;
            v60 = 2080;
            v61 = v19;
            v62 = 2048;
            v63 = v20;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v36, v14, v26, &v50, 84);
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        _Block_object_dispose(&v45, 8);
        v27 = OUTLINED_FUNCTION_1_104();
        fbapOverlapMapper_debugPrintType(v27, v28, a2, v29);
        v30 = OUTLINED_FUNCTION_1_104();
        fbapOverlapMapper_debugPrintType(v30, v31, a2, v32);
        v33 = OUTLINED_FUNCTION_1_104();
        fbapOverlapMapper_debugPrintType(v33, 0, a2, v34);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 4294954514;
  }

  FigSimpleMutexUnlock();
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  return v8;
}

double __fbapOverlapMapper_debugPrintSystemTime_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v3 = *MEMORY[0x1E6960C70];
  v23 = **&MEMORY[0x1E6960C70];
  if (*(a3 + 56))
  {
    if (*(a3 + 64))
    {
      FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        if (!v7(v6, @"MixStartMediaTime", *MEMORY[0x1E695E480], &v24))
        {
          CMTimeMakeFromDictionary(&lhs, v24);
          value = lhs.value;
          flags = lhs.flags;
          timescale = lhs.timescale;
          epoch = lhs.epoch;
          if (v24)
          {
            CFRelease(v24);
            v24 = 0;
          }

          CMTimebaseGetTime(&v23, *(a3 + 56));
          if ((flags & 1) == 0)
          {
            value = *MEMORY[0x1E6960CC0];
            flags = *(MEMORY[0x1E6960CC0] + 12);
            timescale = *(MEMORY[0x1E6960CC0] + 8);
            epoch = *(MEMORY[0x1E6960CC0] + 16);
          }

          OUTLINED_FUNCTION_2_4();
          if (*(v10 + 36))
          {
            rhs = v23;
            v18.value = value;
            v18.timescale = timescale;
            v18.flags = flags;
            v18.epoch = epoch;
            CMTimeAdd(&lhs, &rhs, &v18);
            OUTLINED_FUNCTION_2_4();
            rhs = v12[1];
            v11 = &v19;
            CMTimeMinimum(&v19, &lhs, &rhs);
          }

          else
          {
            lhs = v23;
            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = flags;
            rhs.epoch = epoch;
            v11 = &v21;
            CMTimeAdd(&v21, &lhs, &rhs);
          }

          OUTLINED_FUNCTION_2_4();
          v3 = *&v11->value;
          *(v13 + 24) = *&v11->value;
          *(v13 + 40) = v11->epoch;
          if (*(a3 + 92))
          {
            OUTLINED_FUNCTION_2_4();
            lhs = v14[1];
            rhs = *(a3 + 80);
            CMTimeAdd(&v17, &lhs, &rhs);
            OUTLINED_FUNCTION_2_4();
            *&v3 = v17.value;
            v15[1] = v17;
          }
        }
      }
    }
  }

  return *&v3;
}

void __fbapOverlapMapper_debugPrintType_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = *MEMORY[0x1E69E9840];
  *&v93.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v93.epoch = v3;
  *&v91.value = *&v93.value;
  v91.epoch = v3;
  *&v89.value = *&v93.value;
  v89.epoch = v3;
  *&v87.value = *&v93.value;
  v87.epoch = v3;
  v96 = *MEMORY[0x1E6960C70];
  v97 = *(MEMORY[0x1E6960C70] + 8);
  v84 = *&v93.value;
  v85 = v3;
  *&v82.value = *&v93.value;
  v82.epoch = v3;
  v60 = *&v93.value;
  *&v80.value = *&v93.value;
  v80.epoch = v3;
  cf1 = 0;
  dictionaryRepresentation = 0;
  BOOLean = 0;
  if (!*(a3 + 48))
  {
    goto LABEL_62;
  }

  v6 = *(MEMORY[0x1E6960C70] + 12);
  if (*(a3 + 68))
  {
    BooleanValue = FigCFDictionaryGetBooleanValue();
    v8 = *(a3 + 68);
    if (BooleanValue)
    {
      if (v8)
      {
        FigCFDictionaryGetNumberValue();
        if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
        {
          DictionaryValue = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&v87, DictionaryValue);
        }

        else
        {
          v9 = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&lhs, v9);
          v87 = lhs;
        }

        v11 = FigCFDictionaryGetDictionaryValue();
        v12 = CMTimeMakeFromDictionary(&lhs, v11);
        OUTLINED_FUNCTION_4_82(v12, v13, v14, v15, v16, v17, v18, v19, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76.value, *&v76.timescale, v76.epoch, BOOLean, cf1, dictionaryRepresentation, v80.value, *&v80.timescale, v80.epoch, v81, v82.value, *&v82.timescale, v82.epoch, v83, v84, *(&v84 + 1), v85, v86, v87.value, *&v87.timescale, v87.epoch, v88, v89.value, *&v89.timescale, v89.epoch, v90, v91.value, *&v91.timescale, v91.epoch, v92, v93.value, *&v93.timescale, v93.epoch);
      }

      goto LABEL_12;
    }

    if (v8)
    {
      goto LABEL_62;
    }
  }

  if (*(a1 + 40))
  {
    goto LABEL_62;
  }

LABEL_12:
  v20 = *(a1 + 48);
  if (v20 && (*(a1 + 76) & 1) != 0 && (*(a1 + 100) & 1) != 0 && !*(a1 + 104) && (*(a1 + 88) & 0x8000000000000000) == 0 && CFEqual(v20, a3))
  {
    v84 = *(a1 + 64);
    v85 = *(a1 + 80);
    lhs = *(a1 + 64);
    rhs = *(a1 + 88);
    CMTimeAdd(&v82, &lhs, &rhs);
  }

  v21 = *MEMORY[0x1E695E480];
  FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
  v23 = v22;
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v24)
  {
    v25 = v24(v23, @"ProcessingState", v21, &cf1);
  }

  else
  {
    v25 = 4294954514;
  }

  OUTLINED_FUNCTION_0_115(v25);
  if (!v26)
  {
    if (!CFEqual(cf1, @"Idle") && !CFEqual(cf1, @"Processing") && !CFEqual(cf1, @"WaitingForMixStart") && !CFEqual(cf1, @"Mixing"))
    {
      CFEqual(cf1, @"StopMixing");
    }

    if ((v6 & 1) == 0)
    {
      FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v27 = OUTLINED_FUNCTION_3_77();
        v29 = v28(v27);
      }

      else
      {
        v29 = 4294954514;
      }

      OUTLINED_FUNCTION_0_115(v29);
      if (v30)
      {
        goto LABEL_62;
      }

      v31 = CMTimeMakeFromDictionary(&lhs, dictionaryRepresentation);
      OUTLINED_FUNCTION_4_82(v31, v32, v33, v34, v35, v36, v37, v38, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76.value, *&v76.timescale, v76.epoch, BOOLean, cf1, dictionaryRepresentation, v80.value, *&v80.timescale, v80.epoch, v81, v82.value, *&v82.timescale, v82.epoch, v83, v84, *(&v84 + 1), v85, v86, v87.value, *&v87.timescale, v87.epoch, v88, v89.value, *&v89.timescale, v89.epoch, v90, v91.value, *&v91.timescale, v91.epoch, v92, v93.value, *&v93.timescale, v93.epoch);
      if (dictionaryRepresentation)
      {
        CFRelease(dictionaryRepresentation);
        dictionaryRepresentation = 0;
      }
    }

    v39 = *(a3 + 56);
    if (v39)
    {
      CMTimebaseGetTime(&v93, v39);
    }

    else
    {
      *&v93.value = v60;
      v93.epoch = v3;
    }

    FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v40 = OUTLINED_FUNCTION_3_77();
      v42 = v41(v40);
    }

    else
    {
      v42 = 4294954514;
    }

    OUTLINED_FUNCTION_0_115(v42);
    if (!v43)
    {
      CMTimeMakeFromDictionary(&v91, dictionaryRepresentation);
      if (dictionaryRepresentation)
      {
        CFRelease(dictionaryRepresentation);
        dictionaryRepresentation = 0;
      }

      FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v44 = OUTLINED_FUNCTION_3_77();
        v46 = v45(v44);
      }

      else
      {
        v46 = 4294954514;
      }

      OUTLINED_FUNCTION_0_115(v46);
      if (!v47)
      {
        CMTimeMakeFromDictionary(&v89, dictionaryRepresentation);
        if (dictionaryRepresentation)
        {
          CFRelease(dictionaryRepresentation);
          dictionaryRepresentation = 0;
        }

        FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v48 = OUTLINED_FUNCTION_3_77();
          v50 = v49(v48);
        }

        else
        {
          v50 = 4294954514;
        }

        OUTLINED_FUNCTION_0_115(v50);
        if (!v51)
        {
          CMTimeMakeFromDictionary(&v80, dictionaryRepresentation);
          if (dictionaryRepresentation)
          {
            CFRelease(dictionaryRepresentation);
            dictionaryRepresentation = 0;
          }

          v52 = FigBufferedAirPlaySubPipeManagerCopyProperty(*(a3 + 48), @"MilestoneSet", v21, &BOOLean);
          OUTLINED_FUNCTION_0_115(v52);
          if (!v53)
          {
            if (*(a3 + 92))
            {
              v91 = *(a3 + 80);
              rhs = v93;
              v76 = *(a3 + 80);
              CMTimeAdd(&lhs, &rhs, &v76);
              v93 = lhs;
            }

            if (dword_1EAF173C8)
            {
              HIDWORD(v75) = 0;
              BYTE3(v75) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }
  }

LABEL_62:
  if (cf1)
  {
    CFRelease(cf1);
    cf1 = 0;
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
    dictionaryRepresentation = 0;
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

AssetPAAccessInterval *AssetPALoggingHelperCreateAccessInterval(uint64_t a1, _OWORD *a2)
{
  if (qword_1ED4CAD10 != -1)
  {
    dispatch_once(&qword_1ED4CAD10, &__block_literal_global_47);
  }

  if (!_MergedGlobals_72)
  {
    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [AssetPAAccessInterval alloc];
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = [(AssetPAAccessInterval *)v5 initWithClientPid:a1 auditToken:v9];
  objc_autoreleasePoolPop(v4);
  return v7;
}

void __getPAAccessLoggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPAAccessLoggerClass(void)_block_invoke") description:{@"AssetPALoggingHelper.m", 47, @"Unable to find class %s", "PAAccessLogger"}];
  __break(1u);
}

void PrivacyAccountingLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *PrivacyAccountingLibrary(void)") description:{@"AssetPALoggingHelper.m", 42, @"%s", *a1}];
  __break(1u);
}

void __getPATCCAccessClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPATCCAccessClass(void)_block_invoke") description:{@"AssetPALoggingHelper.m", 44, @"Unable to find class %s", "PATCCAccess"}];
  __break(1u);
}

void __getPAApplicationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPAApplicationClass(void)_block_invoke") description:{@"AssetPALoggingHelper.m", 50, @"Unable to find class %s", "PAApplication"}];
  __break(1u);
}

uint64_t getGDRCountForFormatID(OpaqueAudioConverter *a1, CMAudioFormatDescriptionRef desc, char *a3)
{
  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(desc);
  if (!MostCompatibleFormat)
  {
    goto LABEL_18;
  }

  v6 = MostCompatibleFormat;
  v28 = 2;
  v29 = 0;
  outPropertyData = 0;
  ioPropertyDataSize = 8;
  v7 = OUTLINED_FUNCTION_2_100();
  if (AudioConverterGetProperty(v7, v8, v9, v10) || (v11 = OUTLINED_FUNCTION_2_100(), AudioConverterSetProperty(v11, v12, v13, v14)) || AudioConverterGetProperty(a1, 0x7072696Du, &ioPropertyDataSize, &outPropertyData) || (v15 = OUTLINED_FUNCTION_2_100(), AudioConverterSetProperty(v15, v16, v17, v18)) || (mFramesPerPacket = v6->mASBD.mFramesPerPacket) == 0)
  {
    mFormatID = v6->mASBD.mFormatID;
    if (mFormatID - 1633772389 <= 0xE && ((1 << (mFormatID - 101)) & 0x4889) != 0 || mFormatID == 1633772320)
    {
      v20 = 0;
      LOWORD(v21) = 1;
      goto LABEL_8;
    }

LABEL_18:
    LOWORD(v21) = 0;
    v20 = 0;
    goto LABEL_8;
  }

  v20 = 1;
  v21 = outPropertyData / mFramesPerPacket;
LABEL_8:
  *a3 = v20;
  return v21;
}

double FigSampleBufferProcessorCreateWithAudioCompression_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigSampleBufferProcessorCreateWithAudioCompression_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigSampleBufferProcessorCreateWithAudioCompression_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_5()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_6()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_7()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_8()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_16()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_17()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_20()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

void FigSampleBufferProcessorCreateWithAudioCompression_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void facCopyMixMapForInputs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double RunConverter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double RunConverter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double RunConverter_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(uint64_t a1, CGRect *a2)
{
  v12 = 0u;
  v13 = 0;
  memset(&v11, 0, sizeof(v11));
  v3 = *(a1 + 32);
  SpecifiedCropRect = FigVCLayerDefinitionGetSpecifiedCropRect(a1, &v12);
  if (SpecifiedCropRect)
  {
    return SpecifiedCropRect;
  }

  v5 = CVBufferCopyAttachment(v3, *MEMORY[0x1E6965D70], 0);
  Width = CVPixelBufferGetWidth(v3);
  Height = CVPixelBufferGetHeight(v3);
  fvc_layerDefinition_getCleanAperture(v5, Width, Height, &v11.origin.x);
  v9 = v8;
  if (!v8)
  {
    v14.origin.x = *&v12 + v11.origin.x;
    v14.origin.y = *(&v12 + 1) + v11.origin.y;
    v14.size = v13;
    *a2 = CGRectIntersection(v11, v14);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

double FigVCLayerDefinitionGetAffineTransform(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    memset(&v30, 0, sizeof(v30));
    if (FigVCLayerDefinitionGetSpecifiedAffineTransform(a1, &v30))
    {
      return *&v5;
    }

    v6 = CVBufferCopyAttachment(v4, *MEMORY[0x1E6965D70], 0);
    memset(v29, 0, sizeof(v29));
    Width = CVPixelBufferGetWidth(v4);
    Height = CVPixelBufferGetHeight(v4);
    fvc_layerDefinition_getCleanAperture(v6, Width, Height, v29);
    if (v9)
    {
      v10 = 0;
      if (!v6)
      {
LABEL_6:
        if (v10)
        {
          CFRelease(v10);
        }

        return *&v5;
      }
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
      CGAffineTransformMakeTranslation(&v28, -*v29, -*(v29 + 1));
      v10 = CVBufferCopyAttachment(v4, *MEMORY[0x1E6965EF8], 0);
      v27 = 0;
      FigVideoCompositorUtilityGetPixelAspectRatio(v10, &v27 + 1, &v27);
      memset(&v26, 0, sizeof(v26));
      CGAffineTransformMakeScale(&v26, SHIDWORD(v27) / v27, 1.0);
      t1 = v28;
      v23 = v26;
      v11 = CGAffineTransformConcat(&v24, &t1, &v23);
      OUTLINED_FUNCTION_3_78(v11, v12, v13, v14, v15, v16, v17, v18, *&v30.tx, *&v30.c, *&v30.a, *&v30.b, *&v30.c, *&v30.d, v19, *&v23.tx, *&v23.ty, *&v24.a, *&v24.b, *&v24.c, *&v24.d, *&v24.tx);
      v20 = *&t1.c;
      v5 = *&t1.tx;
      v30 = t1;
      *a2 = *&t1.a;
      a2[1] = v20;
      a2[2] = v5;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    CFRelease(v6);
    goto LABEL_6;
  }

  emitter = fig_log_get_emitter();

  *&v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositorLayerDefinition >>>>", 340, v2);
  return *&v5;
}

uint64_t FigVCLayerDefinitionCreateLayerDefinitionArray(unsigned int a1, int *a2, const void **a3, const __CFDictionary *a4, __int128 *a5, __CFArray **a6, CGFloat a7, CGFloat a8)
{
  v36 = 0;
  cf = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  Value = CFDictionaryGetValue(a4, @"LayerStack");
  if (!Value)
  {
    goto LABEL_17;
  }

  v16 = Value;
  v17 = CFGetTypeID(Value);
  if (v17 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v16);
    if (Count >= 1)
    {
      v19 = Count;
      v20 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v20);
        if (!ValueAtIndex)
        {
          goto LABEL_19;
        }

        v22 = ValueAtIndex;
        v23 = CFGetTypeID(ValueAtIndex);
        if (v23 != CFDictionaryGetTypeID() || !FigCFDictionaryGetInt32IfPresent() || a1 < 1)
        {
          goto LABEL_19;
        }

        v24 = a1;
        v26 = a2;
        v25 = a3;
        while (*v26++)
        {
          ++v25;
          if (!--v24)
          {
            goto LABEL_19;
          }
        }

        v28 = *v25;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v29 = FigVCLayerDefinitionCreate(v13, v28, v22, v36, &cf, 0.0);
        if (v29)
        {
          goto LABEL_20;
        }

        CFArrayAppendValue(Mutable, cf);
      }

      while (++v20 != v19);
    }

LABEL_17:
    FigVCLayerDefinitionOptimizeLayerDefinitionArray(Mutable, a7, a8);
    v31 = v30;
    if (!v30)
    {
      *a6 = Mutable;
      Mutable = 0;
    }

    goto LABEL_21;
  }

LABEL_19:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_20:
  v31 = v29;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v31;
}

uint64_t FigVCLayerDefinitionCopyDestinationPixelBufferWithoutComposingIfPossible(CFArrayRef theArray, int *a2, __n128 *a3, const void *a4, const void *a5, void *a6)
{
  UInt32 = theArray;
  if (!theArray)
  {
    v18 = 0;
    goto LABEL_23;
  }

  if (CFArrayGetCount(theArray) != 1)
  {
    goto LABEL_36;
  }

  v12 = OUTLINED_FUNCTION_265();
  ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
  v52[0] = 1.0;
  Opacity = FigVCLayerDefinitionGetOpacity(ValueAtIndex, v52);
  if (Opacity)
  {
    return Opacity;
  }

  if (v52[0] <= 0.9999)
  {
LABEL_36:
    UInt32 = 0;
LABEL_37:
    v18 = 0;
    goto LABEL_38;
  }

  v16 = *(ValueAtIndex + 4);
  if (a5)
  {
    CVPixelBufferGetPixelFormatType(*(ValueAtIndex + 4));
    UInt32 = FigCFNumberCreateUInt32();
    v17 = CFGetTypeID(a5);
    if (v17 == CFNumberGetTypeID())
    {
      if (FigCFEqual())
      {
        goto LABEL_37;
      }
    }

    else
    {
      v19 = CFGetTypeID(a5);
      if (v19 != CFArrayGetTypeID())
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v40, v41);
        v35 = v37;
        v18 = 0;
        theArray = 0;
        if (a6)
        {
LABEL_25:
          *a6 = theArray;
          if (!UInt32)
          {
            goto LABEL_32;
          }

LABEL_31:
          CFRelease(UInt32);
          goto LABEL_32;
        }

        goto LABEL_28;
      }

      if (FigCFArrayContainsValue())
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    UInt32 = 0;
  }

  if (!FigVideoCompositorIsPixelBufferOpaque(v16))
  {
    goto LABEL_37;
  }

  Width = CVPixelBufferGetWidth(v16);
  Height = CVPixelBufferGetHeight(v16);
  if (*a2 != Width)
  {
    goto LABEL_37;
  }

  v22 = Height;
  if (a2[1] != Height)
  {
    goto LABEL_37;
  }

  v18 = CVBufferCopyAttachment(v16, *MEMORY[0x1E6965D70], 0);
  if (!FigVideoCompositorUtilityAreCleanAperturesEqual(v18, Width, v22, a4, *a2, a2[1]))
  {
LABEL_38:
    theArray = 0;
    goto LABEL_23;
  }

  v23 = *(MEMORY[0x1E695F040] + 16);
  v51.origin = *MEMORY[0x1E695F040];
  v51.size = v23;
  SpecifiedCropRect = FigVCLayerDefinitionGetSpecifiedCropRect(ValueAtIndex, &v51);
  if (!SpecifiedCropRect)
  {
    if (CGRectIsInfinite(v51))
    {
      v25 = *(MEMORY[0x1E695EFD0] + 16);
      v48 = *MEMORY[0x1E695EFD0];
      v49 = v25;
      v50 = *(MEMORY[0x1E695EFD0] + 32);
      FigVCLayerDefinitionGetAffineTransform(ValueAtIndex, &v48);
      v35 = v34;
      if (v34)
      {
        goto LABEL_30;
      }

      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      OUTLINED_FUNCTION_3_78(0, v26, v27, v28, v29, v30, v31, v32, a3[2], a3[1], a3->n128_u64[0], a3->n128_i64[1], a3[1].n128_i64[0], a3[1].n128_i64[1], v33, v42, v43, v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
      memset(&v44, 0, sizeof(v44));
      IsIdentity = CGAffineTransformIsIdentity(&v44);
      theArray = 0;
      if (!IsIdentity || !v16)
      {
        goto LABEL_24;
      }

      theArray = CFRetain(v16);
LABEL_23:
      v35 = 0;
LABEL_24:
      if (a6)
      {
        goto LABEL_25;
      }

LABEL_28:
      if (theArray)
      {
        CFRelease(theArray);
      }

LABEL_30:
      if (!UInt32)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_38;
  }

  v35 = SpecifiedCropRect;
  if (UInt32)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v18)
  {
    CFRelease(v18);
  }

  return v35;
}

CFMutableStringRef fvc_layerDefinition_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v37 = NAN;
  v3 = *(MEMORY[0x1E695F050] + 16);
  v36.origin = *MEMORY[0x1E695F050];
  v36.size = v3;
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v33 = *MEMORY[0x1E695EFD0];
  v34 = v4;
  v35 = *(MEMORY[0x1E695EFD0] + 32);
  FigVCLayerDefinitionGetOpacity(a1, &v37);
  FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(a1, &v36);
  FigVCLayerDefinitionGetAffineTransform(a1, &v33);
  v5 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v5, v6, v7, a1);
  v24 = *(a1 + 40);
  v8 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v8, v9, v10, *&v24);
  v25 = v37;
  v11 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v11, v12, v13, *&v25);
  width = v36.size.width;
  height = v36.size.height;
  x = v36.origin.x;
  y = v36.origin.y;
  v14 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v14, v15, v16, x, y, width, height);
  v32 = v35;
  v31 = v34;
  v27 = v33;
  v17 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v17, v18, v19, v27, 0, v31, 0, v32, 0x3FF0000000000000);
  v20 = OUTLINED_FUNCTION_265();
  CFStringAppendFormat(v20, v21, v22, a1);
  return Mutable;
}

void FigVCLayerDefinitionGetOpacity_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVCLayerDefinitionGetOpacity_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVCLayerDefinitionGetSpecifiedCropRect_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVCLayerDefinitionGetSpecifiedCropRect_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVCLayerDefinitionGetSpecifiedAffineTransform_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVCLayerDefinitionGetSpecifiedAffineTransform_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVCLayerDefinitionCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVCLayerDefinitionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVCLayerDefinitionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigPersonaCopyCurrentID(CFStringRef *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(&v4, 0x158uLL);
    voucher_get_current_persona();
    if (!kpersona_info())
    {
      *a1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294948186, "(Fig)", 26, v1);
  }

  return result;
}

uint64_t FigRTCReportingCreate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, const __CFDictionary *a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t *a12)
{
  v29 = 0;
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_2_102();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_2_102();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_0_117();
  if ((_MergedGlobals_73 & 1) == 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, a7);
    goto LABEL_19;
  }

  v17 = 4294955284;
  if (!a5 || !a12)
  {
    goto LABEL_13;
  }

  v18 = frr_createUserInfoDict(a5, a2, a3, a8, a6, a9, a11, &v29);
  if (v18)
  {
    goto LABEL_19;
  }

  if (!v29)
  {
    v17 = 4294955285;
    goto LABEL_13;
  }

  frr_createSessionDict(a4, a1, a7, a8, a10, a5, 0, a3, &cf);
  if (v18)
  {
LABEL_19:
    v17 = v18;
    goto LABEL_13;
  }

  if (!cf)
  {
    v17 = 4294955285;
    goto LABEL_15;
  }

  v19 = qword_1ED4CAD20(cf, v29, qword_1ED4CAD28, &__block_literal_global_48);
  off_1ED4CAD30(v19, &__block_literal_global_11_0);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __FigRTCReportingCreate_block_invoke_3;
  v27[3] = &__block_descriptor_33_e20_v16__0____CFArray__8l;
  v28 = a11;
  off_1ED4CAD38(v19, v27);
  *a12 = v19;
  frr_logRTCReportingSession(@"Create", a5, a2, a6, a4, v29, a11);
  if (off_1ED4CAD40)
  {
    if (FigCFEqual())
    {
      (off_1ED4CAD40)(7);
    }

    else
    {
      CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
      (off_1ED4CAD40)(CFPreferenceNumberWithDefault);
    }
  }

  v17 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_15:
  if (v29)
  {
    CFRelease(v29);
  }

  return v17;
}

uint64_t frr_createUserInfoDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, int a7, CFTypeRef *a8)
{
  if (!a8)
  {
    return 4294955284;
  }

  if (a6 && [MEMORY[0x1E696ACB0] isValidJSONObject:{a6, a4, a5}])
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a6);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v12 = MutableCopy;
  if (!MutableCopy)
  {
    return 4294955285;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  if (a7 && IsItOKToLogURLs)
  {
    v14 = CFPreferencesCopyAppValue(@"SessionTag", @"com.apple.coremedia");
    FigCFDictionarySetValue();
    if (v14)
    {
      CFRelease(v14);
    }
  }

  *a8 = CFRetain(v12);
  CFRelease(v12);
  return 0;
}

double frr_createSessionDict(int a1, uint64_t a2, const void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, CFTypeRef *a9)
{
  if (_MergedGlobals_73)
  {
    if (a9)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v15 = Mutable;
        switch(a1)
        {
          case 1:
          case 2:
          case 5:
            FigCFDictionarySetInt32();
            goto LABEL_7;
          case 3:
            FigCFDictionarySetInt32();
            FigCFDictionarySetDouble();
LABEL_7:
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetValue();
            if (!a5)
            {
              FigCFEqual();
            }

            FigCFDictionarySetInt32();
            FigCFDictionarySetValue();
            if (a3)
            {
              CFDictionarySetValue(v15, qword_1ED4CAD90, a3);
            }

            *a9 = CFRetain(v15);
            break;
          default:
            break;
        }

        CFRelease(v15);
      }
    }
  }

  else
  {
    v16 = qword_1EAF173E0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294955286, "<< FigRTCReporting >>", 455, v9, a7, a8);
  }

  return result;
}

uint64_t FigRTCReportingSetUserInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  cf = 0;
  OUTLINED_FUNCTION_1_105();
  if (!v17)
  {
    return 4294955286;
  }

  v18 = v9;
  if (!v9)
  {
    return 4294955283;
  }

  v19 = v16;
  v20 = v14;
  v21 = v12;
  v22 = v10;
  v24 = frr_createUserInfoDict(v12, v10, v11, v13, v14, v15, v16, &cf);
  if (!v24)
  {
    if (!cf)
    {
      return 4294955285;
    }

    off_1ED4CAD48(v18, cf, &__block_literal_global_23);
    frr_logRTCReportingSession(@"SetUserInfo", v21, v22, v20, a9, cf, v19);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

uint64_t FigRTCReportingSendOneMessageWithDictionary(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, const __CFDictionary *a9, unsigned __int16 a10, __int16 a11, unsigned __int16 a12, __int16 a13, unsigned __int8 a14, uint64_t a15)
{
  v27 = a1;
  v31 = 0;
  v32 = 0;
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_80();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_3_80();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_0_117();
  if ((_MergedGlobals_73 & 1) == 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
    goto LABEL_17;
  }

  v20 = frr_createUserInfoDict(a5, a2, a3, a8, a6, a9, a14, &v31);
  if (v20)
  {
    goto LABEL_17;
  }

  if (!v31)
  {
    v22 = 4294955285;
    goto LABEL_11;
  }

  frr_createSessionDict(a4, v27, a7, a8, 0, a5, 1, 0, &v32);
  if (v20)
  {
LABEL_17:
    v22 = v20;
    goto LABEL_11;
  }

  if (!v32)
  {
    v22 = 4294955285;
    goto LABEL_13;
  }

  v21 = frr_logRTCReportingSession(@"SendOneMessage", a5, a2, a6, a4, v31, a14);
  if (off_1ED4CAD50(v32, v31, a10, a12, a15, &cf, v21))
  {
    v22 = 0;
  }

  else
  {
    if (cf)
    {
      CFRelease(cf);
    }

    v22 = 4294955282;
  }

LABEL_11:
  if (v32)
  {
    CFRelease(v32);
  }

LABEL_13:
  if (v31)
  {
    CFRelease(v31);
  }

  return v22;
}

uint64_t FigRTCReportingSendMsgWithErrors(uint64_t a1)
{
  if (!a1)
  {
    return 4294955283;
  }

  OUTLINED_FUNCTION_1_105();
  if (!v2)
  {
    return 4294955286;
  }

  if (!v1)
  {
    return 4294955296;
  }

  if (off_1ED4CAD58())
  {
    return 0;
  }

  return 4294955282;
}

uint64_t FigRTCReportingSendMsgRealTime(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 4294955283;
  }

  OUTLINED_FUNCTION_1_105();
  if (!v3)
  {
    return 4294955286;
  }

  v4 = v2;
  if (!v2)
  {
    return 4294955296;
  }

  v5 = v1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294955295;
  }

  v7 = Mutable;
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  CFDictionarySetValue(v7, qword_1ED4CADD0, v4);
  if (off_1ED4CADE0(v5, v7, &cf))
  {
    v9 = 0;
  }

  else
  {
    if (cf)
    {
      CFRelease(cf);
    }

    v9 = 4294955282;
  }

  CFRelease(v7);
  return v9;
}

uint64_t FigImageQueueDisplayCountHistory_StartTracingDisplayCount(uint64_t a1, CFIndex a2, const char *a3)
{
  v91 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_106();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_1_106();
  fig_note_initialize_category_with_default_work_cf();
  v83 = 0;
  memset(&v82, 0, sizeof(v82));
  string = 0;
  time(&v83);
  localtime_r(&v83, &v82);
  if (!a2)
  {
    keyExistsAndHasValidFormat[0] = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"iq_trace_cadence", @"com.apple.coremedia", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      a2 = AppIntegerValue;
      if ((AppIntegerValue - 1) < 0xA)
      {
        goto LABEL_2;
      }

      v84[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = v84[0];
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
        v86 = 136315394;
        v87 = "FigImageQueueDisplayCountHistory_StartTracingDisplayCount";
        v88 = 1024;
        v89 = a2;
        _os_log_send_and_compose_impl(v24, 0, buffer, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v23, "<<<< IQ-cadence >>>> %s: Invalid cadence mode: %d requested", &v86, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = 0;
    goto LABEL_54;
  }

LABEL_2:
  v6 = CFPreferencesCopyAppValue(@"iq_trace_cadence_dir", @"com.apple.coremedia");
  v7 = MEMORY[0x1E695E480];
  if (v6)
  {
    v8 = v6;
    v9 = CFGetTypeID(v6);
    if (v9 == CFStringGetTypeID())
    {
      CFStringGetCString(v8, buffer, 1024, 0);
      CFRelease(v8);
LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }
  }

  v10 = getenv("CFFIXED_USER_HOME");
  if (v10)
  {
    snprintf(buffer, 0x400uLL, "%s/Library/Logs", v10);
    goto LABEL_7;
  }

  v11 = FigCFURLCreateFromSystemTemporaryDirectory();
  if (!v11 || FigCFURLCopyCanonicalPath() || !CFStringGetFileSystemRepresentation(string, buffer, 1024))
  {
LABEL_54:
    v54 = 0;
    goto LABEL_55;
  }

LABEL_8:
  v74 = a2;
  cf = v11;
  if (_MergedGlobals_74 != -1)
  {
    dispatch_once_f(&_MergedGlobals_74, 0, FigImageQueueDisplayCountHistory_initCadencePathMutexOnce);
  }

  *(a1 + 24) = 0;
  FigSimpleMutexLock();
  strcpy(&v86, "-A");
  HIDWORD(v73) = a2 & 0xFFFFFFFD;
  if ((a2 & 0xFFFFFFFD) == 8)
  {
    v12 = "csv";
  }

  else
  {
    v12 = "txt";
  }

  v13 = 65;
  BYTE1(v86) = 65;
  v14 = *v7;
  while (1)
  {
    if (v13 <= 65)
    {
      v15 = "";
    }

    else
    {
      v15 = &v86;
    }

    asprintf((a1 + 16), "%s/coremedia-%s-cadence-%04d-%02d-%02d-%02d-%02d-%02d%s.%s", buffer, a3, v82.tm_year + 1900, v82.tm_mon + 1, v82.tm_mday, v82.tm_hour, v82.tm_min, v82.tm_sec, v15, v12);
    v16 = strlen(*(a1 + 16));
    v17 = CFURLCreateFromFileSystemRepresentation(v14, *(a1 + 16), v16, 0);
    DoesFileExist = FigFileDoesFileExist();
    if (v17)
    {
      CFRelease(v17);
    }

    v19 = *(a1 + 16);
    if (!DoesFileExist)
    {
      break;
    }

    free(v19);
    *(a1 + 16) = 0;
    v13 = ++BYTE1(v86);
    if (SBYTE1(v86) >= 91)
    {
      goto LABEL_30;
    }
  }

  *(a1 + 24) = fopen(v19, "w");
LABEL_30:
  FigSimpleMutexUnlock();
  v32 = __error();
  v33 = *(a1 + 24);
  if (v33)
  {
    v34 = v74;
    if ((v74 & 2) != 0)
    {
      setvbuf(v33, 0, 1, 0);
      v34 = HIDWORD(v73);
    }

    if (v34 == 8)
    {
      fwrite("imageTime, localTime, renderCount, displayCount", 0x2FuLL, 1uLL, *(a1 + 24));
    }

    *(a1 + 32) = v34;
    bzero((a1 + 40), 0x780uLL);
    *(a1 + 36) = 1;
    *(a1 + 1960) = 0u;
    v43 = OUTLINED_FUNCTION_2_103(v35, v36, v37, v38, v39, v40, v41, v42, v56, v59, v62, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, cf, *keyExistsAndHasValidFormat, v78, v79, type);
    v44 = *keyExistsAndHasValidFormat;
    v45 = type;
    if (os_log_type_enabled(v43, type))
    {
      v46 = v44;
    }

    else
    {
      v46 = v44 & 0xFFFFFFFE;
    }

    if (v46)
    {
      v84[0] = 136315650;
      OUTLINED_FUNCTION_3_81();
      v85 = v34;
      OUTLINED_FUNCTION_4_84();
      _os_log_send_and_compose_impl(v47, 0, &v86, 128, &dword_1962D5000, v43, v45, "<<<< IQ-cadence >>>> %s: writing to %s -- thank you for using defaults write com.apple.coremedia iq_trace_cadence %d", v57, v60, v63);
    }

    OUTLINED_FUNCTION_5_72();
    v54 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(a1 + 2232) = 0;
    *(a1 + 2240) = 0;
  }

  else
  {
    v48 = *v32;
    v49 = OUTLINED_FUNCTION_2_103(0, v25, v26, v27, v28, v29, v30, v31, v56, v59, v62, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, cf, *keyExistsAndHasValidFormat, v78, v79, type);
    v50 = *keyExistsAndHasValidFormat;
    v51 = type;
    if (os_log_type_enabled(v49, type))
    {
      v52 = v50;
    }

    else
    {
      v52 = v50 & 0xFFFFFFFE;
    }

    if (v52)
    {
      v84[0] = 136315650;
      OUTLINED_FUNCTION_3_81();
      v85 = v48;
      OUTLINED_FUNCTION_4_84();
      _os_log_send_and_compose_impl(v53, 0, &v86, 128, &dword_1962D5000, v49, v51, "<<<< IQ-cadence >>>> %s: could not fopen %s, errno %d", v58, v61, v64);
    }

    OUTLINED_FUNCTION_5_72();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    free(*(a1 + 16));
    v54 = 0;
    *(a1 + 16) = 0;
  }

  v11 = cfa;
LABEL_55:
  if (string)
  {
    CFRelease(string);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v54;
}

__CFString *FigCSSTokenMapTokenTypeToName(int a1)
{
  cf = 0;
  MEMORY[0x19A8D3660](&_MergedGlobals_6, figcss_BuildCSSTokenInfo);
  if (_MergedGlobals_97 != 1)
  {
    return @"<invalid-token>";
  }

  v2 = (qword_1EAF19898 + 8);
  v3 = 33;
  v4 = @"<invalid-token>";
  while (*v2 != a1)
  {
    v2 += 6;
    if (!--v3)
    {
      return v4;
    }
  }

  valuePtr = *(v2 - 1);
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  if (!v5)
  {
    return @"<invalid-token>";
  }

  v6 = v5;
  OUTLINED_FUNCTION_0_119();
  if (qword_1EAF198A0)
  {
    v4 = @"<invalid-token>";
    if (CFDictionaryGetValueIfPresent(qword_1EAF198A0, v6, &cf))
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        v4 = cf;
      }
    }
  }

  else
  {
    v4 = @"<invalid-token>";
  }

  CFRelease(v6);
  return v4;
}

uint64_t FigCaptionRendererIntervalCreate(void *a1)
{
  *a1 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererIntervalGetClassID_sRegisterFigCaptionRendererIntervalBaseTypeOnce, RegisterFigCaptionRendererIntervalBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigBytePumpGetFigBaseObject();
    *DerivedStorage = v4;
    DerivedStorage[1] = v5;
    *a1 = 0;
  }

  return v2;
}

uint64_t FigCaptionRendererParentIntervalCreate(void *a1)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererParentIntervalGetClassID_sRegisterFigCaptionRendererParentIntervalBaseTypeOnce, RegisterFigCaptionRendererParentIntervalBaseType);
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  DerivedStorage[2] = 0;
  DerivedStorage[3] = 0x4018000000000000;
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage[2] = Mutable;
  if (Mutable)
  {
    FigCaptionRendererIntervalCreate(DerivedStorage);
    v6 = 0;
    *a1 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0, v10);
    return v8;
  }

  return v6;
}

void FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval_cold_1(const void *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  if (a1)
  {
    CFRelease(a1);
  }
}

double FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_RemoveChildInterval_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double findAndSaveCoveringIntervalsApplier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double findAndSaveOverlappingIntervalsApplier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t DeMoofMovieFile(const void *a1)
{
  v106[2] = *MEMORY[0x1E69E9840];
  HIWORD(v94) = 0;
  CurrentAtomGlobalOffset = MovieUsesFragments(a1, &v94 + 7, &v94 + 6);
  if (CurrentAtomGlobalOffset)
  {
    return CurrentAtomGlobalOffset;
  }

  if (!HIBYTE(v94))
  {
    if (!BYTE6(v94))
    {
      return 0;
    }

    OUTLINED_FUNCTION_4_85();
    v106[0] = 0x6D7665786D6F6F76;
    CurrentAtomGlobalOffset = OUTLINED_FUNCTION_8_36(v42, v43, v44, v45, v46, v47, v48, v49, v78, v81, theBuffer, v87, v89, v91, v92, v94, v95, v96, v97, v98, v99, valuePtr, number, v102, url, cf, v105[0]);
    if (!CurrentAtomGlobalOffset)
    {
      if (FigAtomStreamPositionViaAtomPath())
      {
        return 0;
      }

      url = 0;
      cf = 0;
      LODWORD(number) = 1701147238;
      CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
      if (!CurrentAtomGlobalOffset)
      {
        if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          return 4294954514;
        }

        v56 = OUTLINED_FUNCTION_2_104();
        CurrentAtomGlobalOffset = v57(v56, 4);
        if (!CurrentAtomGlobalOffset)
        {
          if (url == 4)
          {
            if (shouldSyncByteStreamWhenComplete(a1))
            {
              v58 = *(CMBaseObjectGetVTable() + 16);
              if (*v58 >= 2uLL)
              {
                v59 = v58[5];
                if (v59)
                {
                  v59(a1, 1);
                }
              }
            }

            return 0;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_6_9();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, v83, theBufferb);
        }
      }
    }

    return CurrentAtomGlobalOffset;
  }

  cf = 0;
  v105[0] = 0;
  v106[0] = 0;
  url = 0;
  v4 = *MEMORY[0x1E695E480];
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(CMBaseObject, *MEMORY[0x1E695FFA0], v4, &url);
    if (!v7)
    {
      if (url)
      {
        v8 = @"com.apple.quicktime-movie";
        v9 = CFURLCopyPathExtension(url);
        v10 = v9;
        if (v9)
        {
          FileTypeForMovieFamilyExtension = FigGetFileTypeForMovieFamilyExtension(v9);
          if (FileTypeForMovieFamilyExtension)
          {
            v8 = FileTypeForMovieFamilyExtension;
          }
        }

        v12 = MovieInformationCreate(v4, 0, v105);
        if (v12 || (MoovParseByteStream(v105[0], 10, a1, 0), v12) || (MovieHeaderMakerCreateWithMovieInformation(v4, v105[0], 2, v106), v12))
        {
          v13 = v12;
        }

        else
        {
          v13 = MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(v106[0], v4, v8, url, &cf);
          if (!v13)
          {
            v14 = cf;
            cf = 0;
            goto LABEL_14;
          }
        }

        v14 = 0;
LABEL_14:
        MovieHeaderMakerRelease(v106[0]);
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_18;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_9();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v78, v81, theBuffer);
    }

    v13 = v7;
  }

  else
  {
    v13 = 4294954514;
  }

  MovieHeaderMakerRelease(0);
  v14 = 0;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (url)
  {
    CFRelease(url);
  }

  if (v105[0])
  {
    CFRelease(v105[0]);
  }

  if (v13)
  {
LABEL_124:
    if (!v14)
    {
      return v13;
    }

LABEL_125:
    CFRelease(v14);
    return v13;
  }

  OUTLINED_FUNCTION_4_85();
  v15 = CMByteStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
LABEL_123:
    v13 = 4294954514;
    goto LABEL_124;
  }

  v17 = *MEMORY[0x1E695FF78];
  HIDWORD(v102) = 0;
  url = 0;
  cf = 0;
  valuePtr = 0;
  number = 0;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  appended = v16(v15, v17, v4, &number);
  if (appended)
  {
    goto LABEL_128;
  }

  if (!number)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_128;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  CFRelease(number);
  appended = OUTLINED_FUNCTION_8_36(v19, v20, v21, v22, v23, v24, v25, v26, v78, v1, theBuffer, v87, v89, v91, v92, v94, v95, v96, v97, v98, v99, valuePtr, 0, v102, url, cf, v105[0]);
  if (appended)
  {
    goto LABEL_128;
  }

  theBuffera = v14;
  v88 = 0;
  v93 = 0;
  v90 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  while (1)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_133;
    }

    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomGlobalOffset();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_133;
    }

    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomHeaderSize();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_133;
    }

    if (HIDWORD(v102) == 1835295092)
    {
      if (v27)
      {
        v27 = 1;
      }

      else
      {
        v27 = 1;
        v88 = cf;
        v90 = v99;
      }

      goto LABEL_48;
    }

    if (HIDWORD(v102) != 1836019574)
    {
      if (HIDWORD(v102) == 2003395685)
      {
        v31 = v93;
        if (!v29)
        {
          v31 = v99;
        }

        v93 = v31;
        v29 = 1;
      }

      goto LABEL_48;
    }

    if (!v28)
    {
      v28 = 1;
      goto LABEL_48;
    }

    LODWORD(v106[0]) = 1701147238;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      v13 = 4294954514;
      goto LABEL_105;
    }

    v32 = OUTLINED_FUNCTION_2_104();
    CurrentAtomTypeAndDataLength = v33(v32, 4);
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_133;
    }

    if (url != 4)
    {
      break;
    }

    v28 = 1;
LABEL_48:
    v34 = v98;
    v35 = v99;
    v36 = cf;
    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom)
    {
      if (Atom == -12890)
      {
        if (HIDWORD(v102) == 1835295092)
        {
          if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
          {
            goto LABEL_123;
          }

          v38 = OUTLINED_FUNCTION_5_73();
          appended = v39(v38);
          if (appended)
          {
            goto LABEL_128;
          }

          if (v97 != 8)
          {
            goto LABEL_127;
          }

          if (!v96)
          {
            if (!*(*(OUTLINED_FUNCTION_7_51() + 16) + 16))
            {
              goto LABEL_123;
            }

            v40 = OUTLINED_FUNCTION_1_107();
            appended = v41(v40);
            if (appended)
            {
              goto LABEL_128;
            }

            OUTLINED_FUNCTION_6_68();
            if (!v53)
            {
LABEL_127:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              goto LABEL_128;
            }
          }
        }

        goto LABEL_88;
      }

      v50 = &v36[v34 + v35];
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v51 = OUTLINED_FUNCTION_5_73();
        if (!v52(v51))
        {
          v53 = v97 == 8 && HIDWORD(v96) == 1952539757;
          if (v53)
          {
            if (!*(*(OUTLINED_FUNCTION_7_51() + 16) + 16))
            {
              goto LABEL_123;
            }

            v54 = OUTLINED_FUNCTION_1_107();
            appended = v55(v54);
            if (appended)
            {
              goto LABEL_128;
            }

            OUTLINED_FUNCTION_6_68();
            if (!v53)
            {
              goto LABEL_127;
            }

LABEL_88:
            CMBlockBufferGetDataLength(v14);
            OUTLINED_FUNCTION_2_104();
            appended = CMByteStreamAppendBlockBuffer();
            if (appended)
            {
              goto LABEL_128;
            }

            v63 = url;
            if (v63 != CMBlockBufferGetDataLength(v14))
            {
              goto LABEL_127;
            }

            v64 = *(CMBaseObjectGetVTable() + 16);
            if (*v64 >= 2uLL)
            {
              v65 = v64[5];
              if (v65)
              {
                v65(a1, 1);
              }
            }

            if (!v28)
            {
LABEL_121:
              v13 = 0;
              if (v14)
              {
                goto LABEL_125;
              }

              return v13;
            }

            if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
            {
              goto LABEL_123;
            }

            v66 = OUTLINED_FUNCTION_2_104();
            appended = v67(v66, 1);
            if (appended)
            {
              goto LABEL_128;
            }

            if (url != 1)
            {
              goto LABEL_127;
            }

            if (v27)
            {
              v68 = valuePtr - v90;
              if (valuePtr - v90 <= 0xFFFFFFFFLL)
              {
                LODWORD(v106[0]) = bswap32(v68);
                if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                {
                  goto LABEL_123;
                }

                v69 = OUTLINED_FUNCTION_2_104();
                appended = v70(v69, 4, v90);
                if (!appended)
                {
                  if (url != 4)
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_117;
                }

                goto LABEL_128;
              }

              if (v88 >= 0x100000000)
              {
                v95 = bswap64(v68);
                if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                {
                  goto LABEL_123;
                }

                v71 = OUTLINED_FUNCTION_2_104();
                appended = v72(v71, 8);
                if (!appended)
                {
                  OUTLINED_FUNCTION_6_68();
                  if (!v53)
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_117;
                }

LABEL_128:
                v13 = appended;
                if (!v14)
                {
                  return v13;
                }

                goto LABEL_125;
              }

              if (!v29 || v93 != v90 - 8)
              {
                goto LABEL_127;
              }

              v106[0] = 0x7461646D01000000;
              v106[1] = bswap64(v68 + 8);
              if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
              {
                goto LABEL_123;
              }

              v73 = OUTLINED_FUNCTION_2_104();
              appended = v74(v73, 16, v93);
              if (appended)
              {
                goto LABEL_128;
              }

              if (url != 16)
              {
                goto LABEL_127;
              }
            }

LABEL_117:
            if (shouldSyncByteStreamWhenComplete(a1))
            {
              v75 = *(CMBaseObjectGetVTable() + 16);
              if (*v75 >= 2uLL)
              {
                v76 = v75[5];
                if (v76)
                {
                  v76(a1, 1);
                }
              }
            }

            goto LABEL_121;
          }
        }
      }

      v60 = valuePtr - v50;
      if (((valuePtr - v50) & 0xFFFFFFF8) == 0)
      {
        v60 = 8;
      }

      v96 = bswap32(v60) | 0x6565726600000000;
      if (*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        v61 = OUTLINED_FUNCTION_1_107();
        appended = v62(v61);
        if (appended)
        {
          goto LABEL_128;
        }

        OUTLINED_FUNCTION_6_68();
        if (!v53)
        {
          goto LABEL_127;
        }

        goto LABEL_88;
      }

      goto LABEL_123;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v82, v14);
LABEL_133:
  v13 = CurrentAtomTypeAndDataLength;
LABEL_105:
  v14 = theBuffera;
  if (theBuffera)
  {
    goto LABEL_125;
  }

  return v13;
}

uint64_t MovieUsesFragments(uint64_t a1, _BYTE *a2, char *a3)
{
  *a2 = 0;
  result = FigAtomStreamInitWithByteStream();
  if (result || (result = FigAtomStreamGetCurrentAtomTypeAndDataLength(), result) || (result = FigAtomStreamAdvanceToNextAtomWithType(), result) || (result = FigAtomStreamInitWithParent(), result))
  {
LABEL_7:
    v6 = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (FigAtomStreamAdvanceToNextAtomWithType())
  {
    result = 0;
    goto LABEL_7;
  }

  result = FigAtomStreamAdvanceToNextAtomWithType();
  v6 = 1;
  if (result)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    *a2 = 1;
    if (!a3)
    {
      return result;
    }
  }

LABEL_11:
  *a3 = v6;
  return result;
}

BOOL shouldSyncByteStreamWhenComplete(uint64_t a1)
{
  relativeURL = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3 && !v3(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &relativeURL))
  {
    if (relativeURL)
    {
      v4 = CFURLCopyAbsoluteURL(relativeURL);
      if (v4)
      {
        v5 = v4;
        IsFileOnExternalStorageDevice = FigFileIsFileOnExternalStorageDevice();
        CFRelease(v5);
        v7 = IsFileOnExternalStorageDevice != 0;
        goto LABEL_9;
      }

      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< MoovProcessing >>>", 176, v1);
    }

    else
    {
      v8 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954516, "<<< MoovProcessing >>>", 173, v1);
    }
  }

  v7 = 0;
LABEL_9:
  if (relativeURL)
  {
    CFRelease(relativeURL);
  }

  return v7;
}

uint64_t figTTMLDocumentWriterDivBuilder_StartElement(uint64_t a1, int a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  cf = 0;
  v4 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], a2, *(DerivedStorage + 24), &cf);
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v5 = *(DerivedStorage + 24);
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

      *(DerivedStorage + 16) = v6;
    }

    if (a2 != 3)
    {
      v8 = 0;
LABEL_12:
      v9 = 0;
      *(DerivedStorage + 24) = cf;
      if (!v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v7 = FigTTMLDocumentWriterRegionTimelineCreate(&value);
    v8 = value;
    if (!v7)
    {
      CFDictionaryAddValue(*(DerivedStorage + 8), cf, value);
      v8 = value;
      goto LABEL_12;
    }

    v9 = v7;
    if (value)
    {
LABEL_13:
      CFRelease(v8);
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t figTTMLDocumentWriterDivBuilder_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 24);
  if (v3 != *(DerivedStorage + 16))
  {
    goto LABEL_5;
  }

  FigTTMLDocumentWriterGetCMBaseObject();
  v4 = CMBaseObjectGetDerivedStorage();
  v8 = a1;
  v9 = 0;
  CFDictionaryApplyFunction(*(v4 + 8), synthesizeDivAttributes, &v8);
  result = v9;
  if (!v9)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    v6 = CMBaseObjectGetDerivedStorage();
    FigTTMLDocumentWriterElementWalkTree(*(v6 + 16), removeUnnecessaryChildDivElements, 0, 0, 0);
    result = FigTTMLDocumentWriterElementWriteTree(*(DerivedStorage + 16), *DerivedStorage);
    if (!result)
    {
      v3 = *(DerivedStorage + 24);
LABEL_5:
      ParentElement = FigTTMLDocumentWriterElementGetParentElement(v3);
      result = 0;
      *(DerivedStorage + 24) = ParentElement;
    }
  }

  return result;
}

uint64_t figTTMLDocumentWriterDivBuilder_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterGetCMBaseObject();
  v4 = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = 0;
  cf = 0;
  ParentElement = *(v4 + 24);
  if (FigTTMLDocumentWriterElementGetElementType(ParentElement) != 4)
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_0_120();
LABEL_37:
    FigSignalErrorAtGM(v25);
LABEL_38:
    v16 = v21;
    goto LABEL_40;
  }

  v6 = *(MEMORY[0x1E6960C98] + 16);
  *&v28.start.value = *MEMORY[0x1E6960C98];
  *&v28.start.epoch = v6;
  *&v28.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  Attribute = FigTTMLDocumentWriterElementGetAttribute(ParentElement, @"begin");
  v8 = FigTTMLDocumentWriterElementGetAttribute(ParentElement, @"end");
  if (Attribute)
  {
    v9 = v8;
    v10 = CFGetTypeID(Attribute);
    if (v10 == CFDictionaryGetTypeID() && v9 != 0)
    {
      v12 = CFGetTypeID(v9);
      if (v12 == CFDictionaryGetTypeID())
      {
        memset(&v27, 0, 24);
        CMTimeMakeFromDictionary(&v27.start, Attribute);
        memset(&v34, 0, sizeof(v34));
        CMTimeMakeFromDictionary(&v34, v9);
        if ((v27.start.flags & 0x1D) == 1 && (v34.flags & 0x1D) == 1)
        {
          start = v27.start;
          end = v34;
          CMTimeRangeFromTimeToTime(&v28, &start, &end);
        }
      }
    }
  }

  if ((v28.start.flags & 1) == 0 || (v28.duration.flags & 1) == 0 || v28.duration.epoch || v28.duration.value < 0)
  {
LABEL_36:
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_0_120();
    goto LABEL_37;
  }

  for (; ParentElement; ParentElement = FigTTMLDocumentWriterElementGetParentElement(ParentElement))
  {
    if (FigTTMLDocumentWriterElementGetElementType(ParentElement) == 3)
    {
      break;
    }
  }

  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
LABEL_39:
    v16 = 4294954514;
    goto LABEL_40;
  }

  v15 = *MEMORY[0x1E695E480];
  v16 = v14(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v30);
  if (!v16 && v30)
  {
    v17 = *MEMORY[0x1E6961318];
    v18 = *MEMORY[0x1E6961300];
    while (ParentElement && FigTTMLDocumentWriterElementGetElementType(ParentElement) == 3)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v19 = FigCaptionRegionGetCMBaseObject();
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v20)
      {
        goto LABEL_39;
      }

      v21 = v20(v19, v17, v15, &cf);
      if (v21)
      {
        goto LABEL_38;
      }

      if (FigCFEqual())
      {
        v16 = 0;
        goto LABEL_40;
      }

      Value = CFDictionaryGetValue(*(v4 + 8), ParentElement);
      v27 = v28;
      v21 = FigTTMLDocumentWriterRegionTimelineAddRegionSlice(Value, &v27.start.value, v30);
      if (v21)
      {
        goto LABEL_38;
      }

      v23 = FigCaptionRegionGetCMBaseObject();
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v24)
      {
        goto LABEL_39;
      }

      v21 = v24(v23, v18, v15, &v31);
      if (v21)
      {
        goto LABEL_38;
      }

      if (v30)
      {
        CFRelease(v30);
      }

      v30 = v31;
      ParentElement = FigTTMLDocumentWriterElementGetParentElement(ParentElement);
      v16 = 0;
      if (!v30)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_36;
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (!v16)
  {
    FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 24), a2);
  }

  return v16;
}

uint64_t FigTTMLLayoutCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  value = 0;
  cf = 0;
  if (!a4)
  {
    OUTLINED_FUNCTION_1_19();
    v22 = 185;
LABEL_18:
    FigSignalErrorAtGM(v17, v18, v19, v20, v22, v21, value);
    goto LABEL_19;
  }

  FigTTMLNodeGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
  if (v9)
  {
    goto LABEL_19;
  }

  v9 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (v9)
  {
    goto LABEL_19;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v21 = v4;
    v17 = "%s signalled err=%d at <>:%d";
    v20 = "(Fig)";
    v18 = 0;
    v19 = 4294954510;
    v22 = 198;
    goto LABEL_18;
  }

  v12 = cf;
  *a3 = cf;
  *(a3 + 8) = v12;
  FigTTMLParseNode(a2, figTTMLLayoutConsumeChildNode, a3);
  if (v9)
  {
LABEL_19:
    v15 = v9;
    goto LABEL_13;
  }

  if (CFArrayGetCount(*(DerivedStorage + 136)))
  {
    v13 = 0;
    goto LABEL_11;
  }

  Default = FigTTMLRegionCreateDefault(a1, a3, &value);
  v13 = value;
  if (!Default)
  {
    CFArrayAppendValue(*(DerivedStorage + 136), value);
    v13 = value;
LABEL_11:
    v15 = 0;
    *a4 = cf;
    cf = 0;
    if (!v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = Default;
  if (value)
  {
LABEL_12:
    CFRelease(v13);
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t figTTMLLayoutConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
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
      v8 = FigTTMLRegionCreate(v9, a1, a2, &value);
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

uint64_t FigTTMLLayoutCreateDefault(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  value = 0;
  cf = 0;
  if (!a3)
  {
    OUTLINED_FUNCTION_1_19();
    v19 = 233;
LABEL_14:
    FigSignalErrorAtGM(v14, v15, v16, v17, v19, v18, value);
LABEL_15:
    Default = v7;
    goto LABEL_9;
  }

  FigTTMLNodeGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a2);
  if (v7)
  {
    goto LABEL_15;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v18 = v3;
    v14 = "%s signalled err=%d at <>:%d";
    v17 = "(Fig)";
    v15 = 0;
    v16 = 4294954510;
    v19 = 243;
    goto LABEL_14;
  }

  v10 = cf;
  *a2 = cf;
  *(a2 + 8) = v10;
  Default = FigTTMLRegionCreateDefault(a1, a2, &value);
  v12 = value;
  if (!Default)
  {
    CFArrayAppendValue(*(DerivedStorage + 136), value);
    v12 = value;
    *a3 = cf;
    cf = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return Default;
}

void figTTMLLayout_CopyChildNodeArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figTTMLLayout_GetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigMediaRequestSchedulerStart(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 144))
  {
    NextResource = 0;
  }

  else
  {
    *(a1 + 144) = 1;
    NextResource = mrs_readNextResource(a1, v2);
  }

  FigSimpleMutexUnlock();
  return NextResource;
}

uint64_t mrs_readNextResource(uint64_t a1, __n128 a2)
{
  if (!*(a1 + 72))
  {
    *(a1 + 72) = FigCopyCommonMemoryPool();
  }

  Count = *(a1 + 128);
  v4 = *(a1 + 136);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (v4 < Count)
  {
    v5 = *(a1 + 128);
    v6 = *(a1 + 136);
    *(a1 + 136) = v6 + 1;
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
    v8 = ValueAtIndex;
    v9 = *(a1 + 160);
    *(a1 + 160) = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v11 = (a1 + 152);
    v10 = *(a1 + 152);
    if (v10)
    {
      CFRelease(v10);
      *v11 = 0;
    }

    v12 = CFGetTypeID(v8);
    if (v12 == FigSessionDataSpecifierGetTypeID())
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      if (*(a1 + 120))
      {
        v14 = 0;
      }

      else
      {
        v14 = 3;
      }

      v15 = FigMediaRequestCreateForSessionData(AllocatorForMedia, v8, *(a1 + 80), v14, *(a1 + 24), *(a1 + 32), *(a1 + 40), 0, *(a1 + 48), *(a1 + 56), 0, *(a1 + 64), *(a1 + 72), a1, *(a1 + 112), mrs_readNextResource_outputCallbacks, *(a1 + 104), (a1 + 152));
      if (v15)
      {
        return v15;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
      v15 = v21;
    }

    v22 = *v11;
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v23)
    {
      v23(v22);
    }

    return v15;
  }

  if (!*(*(a1 + 96) + 16))
  {
    return 0;
  }

  v16 = FigCFWeakReferenceHolderCopyReferencedObject();
  MallocZoneForMedia = FigGetMallocZoneForMedia();
  v18 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 0x18uLL, 0xE004018F04884uLL);
  if (!v18)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
    v15 = v25;
    if (!v16)
    {
      return v15;
    }

    goto LABEL_28;
  }

  v19 = v18;
  v18[2] = *(a1 + 96);
  *v18 = CFRetain(a1);
  if (v16)
  {
    v20 = CFRetain(v16);
  }

  else
  {
    v20 = 0;
  }

  v19[1] = v20;
  dispatch_async_f(*(a1 + 104), v19, mrs_issueDidFinishReadQueueCallbackOnCallbackQueue);
  v15 = 0;
  if (v16)
  {
LABEL_28:
    CFRelease(v16);
  }

  return v15;
}

void FigMediaRequestSchedulerCreate_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a3 = v5;
  CFRelease(a2);
}

uint64_t mrs_resourceLoadDidProduceDataOutput_cold_1(uint64_t *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  return FigSimpleMutexUnlock();
}

void mrs_resourceLoadDidFail_cold_1(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  FigSimpleMutexUnlock();
  (*(*(a2 + 96) + 8))(a2, *(a2 + 160), a3, a4);
  FigSimpleMutexLock();
  mrs_readNextResource(a2, v7);
  FigSimpleMutexUnlock();

  CFRelease(a3);
}

uint64_t mrs_resourceLoadDidFail_cold_2(uint64_t *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  return FigSimpleMutexUnlock();
}

uint64_t FigMediaPlaylistRemoveContentKeySpecifierRemote(_BYTE *XPCClientObject)
{
  if (!XPCClientObject || (XPCClientObject = FigMediaPlaylistGetXPCClientObject(XPCClientObject)) == 0)
  {
    v11 = 0;
    goto LABEL_6;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v14);
    goto LABEL_9;
  }

  v1 = FigXPCCreateBasicMessage();
  if (v1)
  {
LABEL_9:
    v11 = v1;
    XPCClientObject = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_82(*MEMORY[0x1E6962EC0], v2, v3, v4, v5, v6, v7, v8, 0);
  v9 = OUTLINED_FUNCTION_2_105();
  CryptKeyParsedIndex = FigContentKeySpecifierGetCryptKeyParsedIndex(v9);
  OUTLINED_FUNCTION_4_86(CryptKeyParsedIndex);
  v11 = FigXPCRemoteClientSendSyncMessage();
  XPCClientObject = v13;
LABEL_6:
  free(XPCClientObject);
  FigXPCRelease();
  return v11;
}

uint64_t FigMediaPlaylistRemoveMediaSegmentSpecifierRemote(_BYTE *XPCClientObject)
{
  if (!XPCClientObject || (XPCClientObject = FigMediaPlaylistGetXPCClientObject(XPCClientObject)) == 0)
  {
    v11 = 0;
    goto LABEL_6;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v14);
    goto LABEL_9;
  }

  v1 = FigXPCCreateBasicMessage();
  if (v1)
  {
LABEL_9:
    v11 = v1;
    XPCClientObject = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_82(*MEMORY[0x1E6962FB8], v2, v3, v4, v5, v6, v7, v8, 0);
  v9 = OUTLINED_FUNCTION_2_105();
  MediaParsedIndex = FigMediaSegmentSpecifierGetMediaParsedIndex(v9);
  OUTLINED_FUNCTION_4_86(MediaParsedIndex);
  v11 = FigXPCRemoteClientSendSyncMessage();
  XPCClientObject = v13;
LABEL_6:
  free(XPCClientObject);
  FigXPCRelease();
  return v11;
}

uint64_t FigMediaPlaylistRemovePartSegmentSpecifierRemote(_BYTE *XPCClientObject, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  if (!XPCClientObject || (XPCClientObject = FigMediaPlaylistGetXPCClientObject(XPCClientObject)) == 0)
  {
    v10 = 0;
    goto LABEL_6;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0, 0);
    goto LABEL_9;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
LABEL_9:
    v10 = v5;
    XPCClientObject = 0;
    goto LABEL_6;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v7 = FigCFStringGetCStringPtrAndBufferToFree();
  MediaParsedIndex = FigMediaSegmentSpecifierGetMediaParsedIndex(a2);
  xpc_dictionary_set_uint64(0, CStringPtrAndBufferToFree, MediaParsedIndex);
  v9 = FigMediaSegmentSpecifierGetMediaParsedIndex(a3);
  xpc_dictionary_set_uint64(0, v7, v9);
  v10 = FigXPCRemoteClientSendSyncMessage();
  XPCClientObject = 0;
LABEL_6:
  free(XPCClientObject);
  free(v13);
  FigXPCRelease();
  return v10;
}

uint64_t FigMediaPlaylistRemoveMapSegmentSpecifierRemote(_BYTE *XPCClientObject)
{
  if (!XPCClientObject || (XPCClientObject = FigMediaPlaylistGetXPCClientObject(XPCClientObject)) == 0)
  {
    v11 = 0;
    goto LABEL_6;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v14);
    goto LABEL_9;
  }

  v1 = FigXPCCreateBasicMessage();
  if (v1)
  {
LABEL_9:
    v11 = v1;
    XPCClientObject = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_82(*MEMORY[0x1E6962FB8], v2, v3, v4, v5, v6, v7, v8, 0);
  v9 = OUTLINED_FUNCTION_2_105();
  MediaParsedIndex = FigMediaSegmentSpecifierGetMediaParsedIndex(v9);
  OUTLINED_FUNCTION_4_86(MediaParsedIndex);
  v11 = FigXPCRemoteClientSendSyncMessage();
  XPCClientObject = v13;
LABEL_6:
  free(XPCClientObject);
  FigXPCRelease();
  return v11;
}

uint64_t FigStreamPlaylistParseRemote(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5, int a6, int a7, int a8, CFMutableArrayRef *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, CFTypeRef *a14)
{
  v61 = a4;
  v66 = 0;
  xdict = 0;
  cf = 0;
  theArray = 0;
  v62 = 0;
  v63 = 0;
  if (!a14)
  {
    XPCClientObject = 0;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  XPCClientObject = *a14;
  if (!*a14)
  {
    goto LABEL_7;
  }

  v62 = CFRetain(XPCClientObject);
  XPCClientObject = FigMediaPlaylistGetXPCClientObject(v62);
  if (!XPCClientObject)
  {
    goto LABEL_7;
  }

  if (XPCClientObject[24])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_78;
  }

  v19 = 0;
LABEL_8:
  v69 = 0;
  v70 = &v69;
  v71 = 0x2000000000;
  v72 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __streamPlaylistParserRemote_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E748D118;
  block[4] = &v69;
  v58 = XPCClientObject;
  if (qword_1ED4CAE18 != -1)
  {
    dispatch_once(&qword_1ED4CAE18, block);
  }

  OSStatus = *(v70 + 6);
  _Block_object_dispose(&v69, 8);
  if (!OSStatus)
  {
    v21 = FigXPCCreateBasicMessage();
    if (v21)
    {
      goto LABEL_78;
    }

    v21 = FigXPCMessageSetBlockBuffer();
    if (v21)
    {
      goto LABEL_78;
    }

    v21 = FigXPCMessageSetCFURL();
    if (v21)
    {
      goto LABEL_78;
    }

    v21 = FigXPCMessageSetCFURL();
    if (v21)
    {
      goto LABEL_78;
    }

    xpc_dictionary_set_BOOL(xdict, "ContinueParsingAfterError", a5 != 0);
    xpc_dictionary_set_BOOL(xdict, "AddWarningsToErrorLog", a6 != 0);
    xpc_dictionary_set_BOOL(xdict, "AllowAverageBandwidth", a7 != 0);
    xpc_dictionary_set_BOOL(xdict, "OKToLogURLs", a8 != 0);
    v21 = FigXPCMessageSetCFArray();
    if (v21)
    {
      goto LABEL_78;
    }

    v21 = FigXPCMessageSetCFDictionary();
    if (v21)
    {
      goto LABEL_78;
    }

    v21 = FigXPCMessageSetCFDictionary();
    if (v21)
    {
      goto LABEL_78;
    }

    v22 = v62 ? v19 : 0;
    if (v22 == 1)
    {
      DateRangeSpecifiers = FigMediaPlaylistGetDateRangeSpecifiers(v62);
      if (DateRangeSpecifiers)
      {
        if (CFArrayGetCount(DateRangeSpecifiers) >= 1)
        {
          FigStreamPlaylistParserSerializeDateRangeSpecifiers(v62, &cf);
          if (v21)
          {
            goto LABEL_78;
          }

          v21 = FigXPCMessageSetCFArray();
          if (v21)
          {
            goto LABEL_78;
          }
        }
      }
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v21 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (v21)
    {
      goto LABEL_78;
    }

    v21 = FigXPCMessageCopyCFArray();
    if (v21)
    {
      goto LABEL_78;
    }

    OSStatus = FigXPCMessageGetOSStatus();
    if (OSStatus)
    {
      goto LABEL_51;
    }

    if (xpc_dictionary_get_BOOL(v66, "IsMultivariantPlaylist"))
    {
      v21 = FigStreamPlaylistParserDeserializeMultivariantPlaylist(v66, &v63);
      if (v21)
      {
        goto LABEL_78;
      }

LABEL_51:
      if (a13 && !*a13)
      {
        *a13 = v63;
        v63 = 0;
      }

      if (a14 && !*a14)
      {
        *a14 = v62;
        v62 = 0;
        if (a9)
        {
LABEL_57:
          v48 = theArray;
          if (theArray)
          {
            if (*a9 || (v49 = FigGetAllocatorForMedia(), *a9 = CFArrayCreateMutable(v49, 0, MEMORY[0x1E695E9C0]), (v48 = theArray) != 0))
            {
              Count = CFArrayGetCount(v48);
              if (Count >= 1)
              {
                v51 = Count;
                v52 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(theArray, v52);
                  AllocatorForMedia = FigGetAllocatorForMedia();
                  MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, ValueAtIndex);
                  if (!MutableCopy)
                  {
                    goto LABEL_77;
                  }

                  v56 = MutableCopy;
                  CFArrayAppendValue(*a9, MutableCopy);
                  CFRelease(v56);
                }

                while (v51 != ++v52);
              }
            }
          }
        }
      }

      else if (a9)
      {
        goto LABEL_57;
      }

      if (v61)
      {
        *v61 = FigXPCMessageGetInt32();
      }

      goto LABEL_66;
    }

    if (!v62)
    {
      v25 = FigGetAllocatorForMedia();
      v21 = FigMediaPlaylistCreateEmpty(v25, &v62);
      if (v21)
      {
        goto LABEL_78;
      }
    }

    if (a13 && *a13)
    {
      v26 = v62;
      FigMultivariantPlaylistHasIndependentSegments(*a13);
      v27 = OUTLINED_FUNCTION_201_0();
      FigMediaPlaylistSetHasIndependentSegments(v27, v28);
      v29 = OUTLINED_FUNCTION_6_69();
      StartTimeValue = FigMultivariantPlaylistGetStartTimeValue(v29);
      FigMediaPlaylistSetStartTimeValue(v26, StartTimeValue);
      v31 = OUTLINED_FUNCTION_6_69();
      FigMultivariantPlaylistIsStartTimePrecise(v31);
      v32 = OUTLINED_FUNCTION_201_0();
      FigMediaPlaylistSetIsStartTimePrecise(v32, v33);
      v34 = OUTLINED_FUNCTION_6_69();
      FigMultivariantPlaylistHasStartTime(v34);
      v35 = OUTLINED_FUNCTION_201_0();
      FigMediaPlaylistSetHasStartTime(v35, v36);
      v37 = OUTLINED_FUNCTION_6_69();
      FigMultivariantPlaylistGetVersion(v37);
      v38 = OUTLINED_FUNCTION_201_0();
      FigMediaPlaylistSetVersion(v38, v39);
    }

    v21 = FigStreamPlaylistParserDeserializeMediaPlaylist(v66, &v62);
    if (v21)
    {
      goto LABEL_78;
    }

    if (v19)
    {
      uint64 = xpc_dictionary_get_uint64(v66, *MEMORY[0x1E69615A0]);
      if (!uint64)
      {
LABEL_77:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_78:
        OSStatus = v21;
        goto LABEL_66;
      }

      v41 = uint64;
      FigGetAllocatorForMedia();
      if (qword_1ED4CAE20 != -1)
      {
        dispatch_once(&qword_1ED4CAE20, &__block_literal_global_49);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v43 = Instance;
        started = FigXPCRemoteClientAssociateObject();
        if (started || (v43[2] = v41, started = FigStartMonitoringMediaServicesProcessDeath(), started))
        {
          OSStatus = started;
          CFRelease(v43);
          goto LABEL_66;
        }

        FigMediaPlaylistSetXPCClientObject(v62, v43);
        v45 = v43;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v60, v61);
        if (v21)
        {
          goto LABEL_78;
        }

        FigMediaPlaylistSetXPCClientObject(v62, v59);
        v45 = v59;
        if (!v59)
        {
          goto LABEL_47;
        }
      }

      CFRelease(v45);
    }

LABEL_47:
    if (!FigStreamPlaylistParserHTTPServerMayMutatePlaylist(v62) || FigMediaPlaylistHasEndTag(v62))
    {
      FigMediaPlaylistSetXPCClientObject(v62, 0);
    }

    v46 = v62;
    int64 = xpc_dictionary_get_int64(v66, "ParserMessageReceiveTime");
    FigMediaPlaylistSetMessagingDelayTime(v46, int64 - UpTimeNanoseconds);
    goto LABEL_51;
  }

LABEL_66:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return OSStatus;
}

uint64_t streamPlaylistParserRemote_finalize(uint64_t a1)
{
  FigStopMonitoringMediaServicesProcessDeath();
  FigXPCRemoteClientDisassociateObject();
  if (!*(a1 + 24) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  return FigXPCRelease();
}

uint64_t fxs_replyingMessageHandler(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t fxs_serializeXMLNode(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (!v6)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
LABEL_20:
      v15 = v8;
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v6 = a2;
  }

  FigXMLNodeGetTag(a1);
  OUTLINED_FUNCTION_1_108();
  v8 = FigXPCMessageSetCFString();
  if (v8)
  {
    goto LABEL_20;
  }

  FigXMLNodeGetContentAsCFString(a1);
  OUTLINED_FUNCTION_1_108();
  v8 = FigXPCMessageSetCFString();
  if (v8)
  {
    goto LABEL_20;
  }

  FigXMLNodeGetAllAttributes(a1);
  OUTLINED_FUNCTION_1_108();
  v8 = FigXPCMessageSetCFDictionary();
  if (v8)
  {
    goto LABEL_20;
  }

  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    if (FigXMLNodeGetCountOfChildren(a1) < 1)
    {
LABEL_14:
      xpc_dictionary_set_value(v6, "children", v9);
      if (a3)
      {
        xpc_dictionary_set_value(a2, "root", v7);
      }

      v15 = 0;
      goto LABEL_17;
    }

    v10 = 0;
    while (1)
    {
      ChildAtIndex = FigXMLNodeGetChildAtIndex(a1, v10);
      v12 = xpc_dictionary_create(0, 0, 0);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = fxs_serializeXMLNode(ChildAtIndex, v12, 0);
      if (v14)
      {
        goto LABEL_19;
      }

      xpc_array_append_value(v9, v13);
      xpc_release(v13);
      if (++v10 >= FigXMLNodeGetCountOfChildren(a1))
      {
        goto LABEL_14;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_19:
  v15 = v14;
LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  return v15;
}

double FigAudioProcessingUnitPackedCurveCreate(uint64_t a1, const __CFArray *cf, void *a3)
{
  if (cf && (v5 = CFGetTypeID(cf), v5 == CFArrayGetTypeID()))
  {
    if (CFArrayGetCount(cf) >= 1)
    {
      cfa[0] = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
      if (ValueAtIndex)
      {
        v7 = CFGetTypeID(ValueAtIndex);
        if (v7 == CFDictionaryGetTypeID())
        {
          FigCFDictionaryGetValueIfPresent();
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_121();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = 265;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = 262;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294947516, "<<<< FigAudioProcessingUnitPackedCurve >>>>", v11, v10);
}

uint64_t fapu_sortParamIDArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = (v31 - v4);
  v6 = 0;
  *v5 = 0;
  v5[1] = v7 - 1;
  while (1)
  {
    v8 = &v5[2 * v6];
    v10 = *v8;
    v9 = v8[1];
    v11 = *v8 - 1;
    v12 = v9 - *v8;
    if (v9 > *v8)
    {
      break;
    }

LABEL_12:
    v23 = v3 + 12 + 12 * v11;
    v24 = *(v23 + 8);
    v25 = *v23;
    v26 = v3 + 12 * v9;
    v27 = *(v26 + 8);
    *v23 = *v26;
    *(v23 + 8) = v27;
    *v26 = v25;
    *(v26 + 8) = v24;
    if (v11 <= v10)
    {
      --v6;
    }

    else
    {
      v8[1] = v11;
    }

    v28 = v11 + 2;
    if (v28 < v9)
    {
      ++v6;
      v29 = &v5[2 * v6];
      *v29 = v28;
      v29[1] = v9;
    }

    if (v6 < 0)
    {
      return 0;
    }
  }

  v13 = v3 + 12 * v9;
  v14 = v3 + 12 * v10;
  while (1)
  {
    v15 = *(v14 + 8);
    v16 = *(v13 + 8);
    v17 = HIDWORD(*v14);
    v18 = *v14 - *v13;
    if (v15 != v16)
    {
      v18 = v15 - v16;
    }

    if (v17 != HIDWORD(*v13))
    {
      v18 = v17 - HIDWORD(*v13);
    }

    if (!v18)
    {
      return 4294947515;
    }

    if (v18 < 0)
    {
      ++v11;
      v19 = v3 + 12 * v11;
      v20 = *(v19 + 8);
      v21 = *v19;
      v22 = *(v14 + 8);
      *v19 = *v14;
      *(v19 + 8) = v22;
      *v14 = v21;
      *(v14 + 8) = v20;
    }

    v14 += 12;
    if (!--v12)
    {
      goto LABEL_12;
    }
  }
}

uint64_t fapupc_sortParamIndicesAndValuesArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v6 = &v24[-2 * v5];
  v7 = 0;
  *v6 = 0;
  v6[1] = v8 - 1;
  while (1)
  {
    v9 = &v6[2 * v7];
    v11 = *v9;
    v10 = v9[1];
    v12 = *v9 - 1;
    v13 = v10 - *v9;
    if (v10 > *v9)
    {
      break;
    }

LABEL_8:
    v19 = *(v3 + 8 * (v12 + 1));
    v20 = *(v4 + 4 * (v12 + 1));
    *(v3 + 8 * (v12 + 1)) = *(v3 + 8 * v10);
    *(v3 + 8 * v10) = v19;
    *(v4 + 4 * (v12 + 1)) = *(v4 + 4 * v10);
    *(v4 + 4 * v10) = v20;
    if (v12 <= v11)
    {
      --v7;
    }

    else
    {
      v9[1] = v12;
    }

    v21 = v12 + 2;
    if (v21 < v10)
    {
      ++v7;
      v22 = &v6[2 * v7];
      *v22 = v21;
      v22[1] = v10;
    }

    if (v7 < 0)
    {
      return 0;
    }
  }

  v14 = (v4 + 4 * v11);
  v15 = (v3 + 8 * v11);
  while (1)
  {
    v16 = *(v3 + 8 * v10);
    if (*v15 == v16)
    {
      return 4294947515;
    }

    if (*v15 < v16)
    {
      ++v12;
      v17 = *(v3 + 8 * v12);
      v18 = *(v4 + 4 * v12);
      *(v3 + 8 * v12) = *v15;
      *v15 = v17;
      *(v4 + 4 * v12) = *v14;
      *v14 = v18;
    }

    ++v14;
    ++v15;
    if (!--v13)
    {
      goto LABEL_8;
    }
  }
}

uint64_t FigAudioProcessingUnitPackedCurveIteratorSeekTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 12);
  if ((v8 & 0x1D) == 1)
  {
    v10 = a1;
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = v11 + 40;
      if (v11 + 40 >= (*(*(a1 + 16) + 48) + 40 * *(*(a1 + 16) + 16)))
      {
        v357 = *v11;
        v105 = *(v11 + 12);
        v361 = *(v11 + 8);
        v106 = *(v11 + 16);
        OUTLINED_FUNCTION_8_37();
        v107 = *(a2 + 16);
        if (v108 == 3 || (v105 & 0x1F) == 3)
        {
          OUTLINED_FUNCTION_5_74();
          LODWORD(v258) = *(a2 + 8);
          HIDWORD(v258) = v8;
          v118 = OUTLINED_FUNCTION_3_83(v110, v111, v112, v113, v114, v115, v116, v117, v199, v212, v226, *a2, v258, v107, v357, __SPAIR64__(v105, v361), v106, v315, v328);
          v126 = OUTLINED_FUNCTION_6_70(v118, v119, v120, v121, v122, v123, v124, v125, v206, v219, v231, v243, v259, v272, v285, v297, v309, v322, v335, v341, v346, v351);
          v134 = OUTLINED_FUNCTION_2_106(v126, v127, v128, v129, v130, v131, v132, v133, v207, v220, v232, v244, v260, v273, v286, v298, v310, v323, v336);
          if (OUTLINED_FUNCTION_1_109(v134, v135, v136, v137, v138, v139, v140, v141, v208, v221, v245, v261, v274, v287, v311, v324, v337, v344, v349, v351, v352) <= 0)
          {
            return 0;
          }
        }

        DWORD2(v351) = v361;
        HIDWORD(v351) = v105;
        v352 = v106;
        OUTLINED_FUNCTION_4_87();
        a1 = OUTLINED_FUNCTION_7_52(v142, v143, v144, v145, v146, v147, v148, v149, v199, v212, v226, v236, v249, v265, v278, v291, v302, v315, v328, __SPAIR64__(v8, v150), v107, v357);
        if (a1 < 1)
        {
          return 0;
        }
      }

      else
      {
        v355 = *v11;
        v13 = *(v11 + 12);
        v359 = *(v11 + 8);
        v14 = *(v11 + 16);
        OUTLINED_FUNCTION_8_37();
        v15 = *(a2 + 16);
        v17 = v16 == 3 || (v13 & 0x1F) == 3;
        if (v17 && (OUTLINED_FUNCTION_5_74(), LODWORD(v250) = *(a2 + 8), HIDWORD(v250) = v8, v26 = OUTLINED_FUNCTION_3_83(v18, v19, v20, v21, v22, v23, v24, v25, v199, v212, v226, *a2, v250, v15, v355, __SPAIR64__(v13, v359), v14, v315, v328), v34 = OUTLINED_FUNCTION_6_70(v26, v27, v28, v29, v30, v31, v32, v33, v200, v213, v227, v237, v251, v266, v279, v292, v303, v316, v329, v341, v346, v351), v42 = OUTLINED_FUNCTION_2_106(v34, v35, v36, v37, v38, v39, v40, v41, v201, v214, v228, v238, v252, v267, v280, v293, v304, v317, v330), OUTLINED_FUNCTION_1_109(v42, v43, v44, v45, v46, v47, v48, v49, v202, v215, v239, v253, v268, v281, v305, v318, v331, v342, v347, v351, v352) <= 0) || (DWORD2(v351) = v359, HIDWORD(v351) = v13, v352 = v14, OUTLINED_FUNCTION_4_87(), a1 = OUTLINED_FUNCTION_7_52(v50, v51, v52, v53, v54, v55, v56, v57, v199, v212, v226, v236, v249, v265, v278, v291, v302, v315, v328, __SPAIR64__(v8, v58), v15, v355), a1 <= 0))
        {
          v356 = *a2;
          v59 = *(a2 + 12);
          v360 = *(a2 + 8);
          v60 = *(a2 + 16);
          v61 = *(v11 + 52);
          v62 = *(v11 + 56);
          v63 = (v59 & 0x1F) == 3 || (v61 & 0x1F) == 3;
          if (!v63 || (OUTLINED_FUNCTION_5_74(), LODWORD(v294) = *(a2 + 8), HIDWORD(v294) = v59, LODWORD(v254) = *(v12 + 8), HIDWORD(v254) = v61, v72 = OUTLINED_FUNCTION_3_83(v64, v65, v66, v67, v68, v69, v70, v71, v199, v212, v226, *v12, v254, v62, *a2, v294, v60, v315, v328), v80 = OUTLINED_FUNCTION_6_70(v72, v73, v74, v75, v76, v77, v78, v79, v203, v216, v229, v240, v255, v269, v282, v295, v306, v319, v332, v341, v346, v351), v88 = OUTLINED_FUNCTION_2_106(v80, v81, v82, v83, v84, v85, v86, v87, v204, v217, v230, v241, v256, v270, v283, v296, v307, v320, v333), a1 = OUTLINED_FUNCTION_1_109(v88, v89, v90, v91, v92, v93, v94, v95, v205, v218, v242, v257, v271, v284, v308, v321, v334, v343, v348, v351, v352), a1 > 0))
          {
            DWORD2(v351) = v360;
            HIDWORD(v351) = v59;
            v352 = v60;
            OUTLINED_FUNCTION_4_87();
            a1 = OUTLINED_FUNCTION_7_52(v96, v97, v98, v99, v100, v101, v102, v103, v199, v212, v226, v236, v249, v265, v278, v291, v302, v315, v328, __SPAIR64__(v61, v104), v62, v356);
            if ((a1 & 0x80000000) != 0)
            {
              return 0;
            }
          }
        }
      }
    }

    v152 = *(v10 + 16);
    v233 = *(v152 + 48);
    v153 = *(v152 + 16);
    v353 = *a2;
    v154 = *(a2 + 12);
    v354 = *(a2 + 8);
    v155 = v153 - 1;
    if (v153 < 1 || (*(a2 + 12) & 0x1D) != 1)
    {
      return 4294947513;
    }

    v157 = 0;
    v222 = 0;
    v158 = *(a2 + 16);
    while (1)
    {
      v159 = (v155 - v157) / 2 + v157;
      v160 = v233 + 40 * v159;
      v358 = *v160;
      v161 = *(v160 + 3);
      v362 = *(v160 + 2);
      v162 = *(v160 + 2);
      if ((v161 & 0x1F) == 3 || (v154 & 3) == 3)
      {
        OUTLINED_FUNCTION_5_74();
        LODWORD(v299) = *(v160 + 2);
        HIDWORD(v299) = v161;
        v172 = OUTLINED_FUNCTION_3_83(v164, v165, v166, v167, v168, v169, v170, v171, v199, v222, v233, v353, __SPAIR64__(v154, v354), v158, *v160, v299, v162, v315, v328);
        v180 = OUTLINED_FUNCTION_6_70(v172, v173, v174, v175, v176, v177, v178, v179, v209, v223, v234, v246, v262, v275, v288, v300, v312, v325, v338, v341, v346, v351);
        v188 = OUTLINED_FUNCTION_2_106(v180, v181, v182, v183, v184, v185, v186, v187, v210, v224, v235, v247, v263, v276, v289, v301, v313, v326, v339);
        a1 = OUTLINED_FUNCTION_1_109(v188, v189, v190, v191, v192, v193, v194, v195, v211, v225, v248, v264, v277, v290, v314, v327, v340, v345, v350, v351, v352);
        if (a1 <= 0)
        {
          break;
        }
      }

      DWORD2(v351) = v362;
      HIDWORD(v351) = v161;
      v352 = v162;
      a1 = OUTLINED_FUNCTION_7_52(a1, a2, a3, a4, a5, a6, a7, a8, v199, v222, v233, v236, v249, v265, v278, v291, v302, v315, v353, __SPAIR64__(v154, v354), v158, v358);
      if ((a1 & 0x80000000) != 0)
      {
        v157 = v159 + 1;
        v222 = v160;
      }

      else
      {
        if (!a1)
        {
          break;
        }

        v155 = v159 - 1;
      }

      if (v157 > v155)
      {
        v160 = v222;
        if (!v222)
        {
          return 4294947513;
        }

        break;
      }
    }

    v196 = *(v10 + 24);
    if (!v196)
    {
      goto LABEL_48;
    }

    if (v196 < v160)
    {
      v198 = v196 + 40;
      v197 = *(*(v10 + 16) + 48);
      goto LABEL_50;
    }

    if (v196 != v160)
    {
LABEL_48:
      v197 = *(*(v10 + 16) + 48);
      v198 = v197;
LABEL_50:
      fapu_iteratorApplySchedulesToSnapshot(v10, (v198 - v197) / 40, (v160 - v198) / 40 + 1);
      result = 0;
      *(v10 + 24) = v160;
      return result;
    }

    return 0;
  }

  return 4294947516;
}

uint64_t fapu_iteratorApplySchedulesToSnapshot(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
  {
    v3 = a2 + a3;
    v4 = *(result + 16);
    if (a2 + a3 <= v4[2])
    {
      v5 = v4[7];
      v6 = v4[6] + 40 * a2;
      v7 = v4[8];
      do
      {
        v8 = *(v6 + 24);
        if (v8 >= 1)
        {
          v9 = *(v6 + 32);
          v10 = (v5 + 8 * v9);
          v11 = (v7 + 4 * v9);
          v12 = *(result + 32);
          do
          {
            v13 = *v11++;
            v14 = v13;
            v15 = *v10++;
            *(v12 + 4 * v15) = v14;
            --v8;
          }

          while (v8);
        }

        ++a2;
        v6 += 40;
      }

      while (a2 < v3);
    }
  }

  return result;
}

uint64_t FigAudioProcessingUnitPackedCurveIteratorNext(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, CMTime *a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  v9 = a1[3];
  v10 = (v9 + 40);
  v11 = (v9 + 40 - *(v8 + 48)) / 40;
  if (v11 >= *(v8 + 16))
  {
    return 4294947514;
  }

  v13 = a1;
  v64 = a5;
  v68 = a6;
  v112 = *v10;
  v15 = *(v9 + 52);
  v16 = *(v9 + 56);
  v110 = *a2;
  v17 = *(a2 + 12);
  v111 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = (v15 & 0x1F) == 3 || (*(a2 + 12) & 0x1F) == 3;
  if (!v19 || (OUTLINED_FUNCTION_5_74(), LODWORD(v89) = *(v9 + 48), HIDWORD(v89) = v15, LODWORD(v76) = *(v20 + 8), HIDWORD(v76) = v17, v28 = OUTLINED_FUNCTION_3_83(v21, v20, v22, v23, v24, v25, v26, v27, v60, v64, v68, *v20, v76, v18, *v10, v89, v16, v96, v100), v36 = OUTLINED_FUNCTION_6_70(v28, v29, v30, v31, v32, v33, v34, v35, v61, v65, v69, v72, v77, v81, v85, v90, v93, v97, v101, v104, v106, v108), v44 = OUTLINED_FUNCTION_2_106(v36, v37, v38, v39, v40, v41, v42, v43, v62, v66, v70, v73, v78, v82, v86, v91, v94, v98, v102), a1 = OUTLINED_FUNCTION_1_109(v44, v45, v46, v47, v48, v49, v50, v51, v63, v67, v74, v79, v83, v87, v95, v99, v103, v105, v107, v108, v109), a1 > 0))
  {
    if (OUTLINED_FUNCTION_7_52(a1, a2, a3, a4, a5, a6, a7, a8, v60, v64, v68, v71, v75, v80, v84, v88, v92, v96, v110, __SPAIR64__(v17, v111), v18, v112) > 0)
    {
      return 4294947514;
    }
  }

  fapu_iteratorApplySchedulesToSnapshot(v13, v11, 1);
  if (*(v9 + 64) >= 1)
  {
    v52 = 0;
    v53 = 0;
    v54 = *(v13[2] + 56) + 8 * *(v9 + 72);
    do
    {
      v55 = v13[5] + v52;
      v56 = *(v13[2] + 40) + 12 * *(v54 + 8 * v53);
      v57 = *v56;
      *(v55 + 8) = *(v56 + 8);
      *v55 = v57;
      ++v53;
      v52 += 12;
    }

    while (v53 < *(v9 + 64));
  }

  result = 0;
  v13[3] = v10;
  v59 = *v10;
  *(a3 + 16) = *(v9 + 56);
  *a3 = v59;
  *a4 = v13[5];
  *v64 = *(v13[2] + 64) + 4 * *(v9 + 72);
  v68->value = *(v9 + 64);
  return result;
}

uint64_t FigAudioProcessingUnitPackedCurveIteratorCreate(uint64_t a1, void *a2, __int128 *a3, void *a4)
{
  if (qword_1ED4CAE40 != -1)
  {
    dispatch_once(&qword_1ED4CAE40, &__block_literal_global_16_0);
  }

  Instance = _CFRuntimeCreateInstance();
  Instance[2] = CFRetain(a2);
  Instance[3] = 0;
  v8 = Instance + 4 * a2[3] + 48;
  Instance[4] = Instance + 6;
  Instance[5] = v8;
  v17 = *a3;
  v18 = *(a3 + 2);
  v15 = FigAudioProcessingUnitPackedCurveIteratorSeekTo(Instance, &v17, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    CFRelease(Instance);
  }

  else
  {
    *a4 = Instance;
  }

  return v15;
}

uint64_t frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    return 0;
  }

  if (CFURLHasDirectoryPath(a1))
  {
    v6 = FigSandboxRegisterDirectoryURLWithProcessAndCopyRegistration();
  }

  else
  {
    v6 = FigSandboxRegisterURLWithProcessAndCopyRegistration();
  }

  v7 = v6;
  if (!v6)
  {
    v7 = 0;
    *a5 = 0;
  }

  return v7;
}

uint64_t FigRemakerRemoteCreateWithAsset(uint64_t a1, const void *a2, const __CFURL *a3, uint64_t a4, const __CFDictionary *a5, void *a6)
{
  cf = 0;
  v28 = 0;
  value = 0;
  v25 = 0;
  v23 = 0;
  xdict = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  OUTLINED_FUNCTION_2_107();
  if (gRemakerRemoteClient)
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (a2)
    {
      FigAssetGetCMBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v12)
      {
        v16 = 0;
        EmptyWrapper = 4294954514;
        goto LABEL_23;
      }

      ObjectID = v12(v11, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &cf);
      if (ObjectID)
      {
        goto LABEL_35;
      }

      if ((!cf || FigCFURLIsLocalResource() | v25) && a3 && remakerFamily_CFURLSchemeIsFile(a3) && a6)
      {
        ObjectID = FigXPCCreateBasicMessage();
        if (!ObjectID)
        {
          ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value);
          if (!ObjectID)
          {
            xpc_dictionary_set_uint64(xdict, "AssetToken", value);
            ObjectID = FigXPCMessageSetCFURL();
            if (!ObjectID)
            {
              ObjectID = FigXPCMessageSetCFDictionary();
              if (!ObjectID)
              {
                ObjectID = FigXPCMessageSetCFDictionary();
                if (!ObjectID)
                {
                  FigSandboxRegisterURLWithProcessAndCopyRegistration();
                  ObjectID = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a3, 0, xdict, 0x196EFB1E5, &v22);
                  if (!ObjectID)
                  {
                    if (!CFDictionaryContainsKey(a5, @"Remaker_TemporaryDirectoryURL") || (v18 = CFDictionaryGetValue(a5, @"Remaker_TemporaryDirectoryURL"), ObjectID = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(v18, 0, xdict, 0x196EFB203, &v21), !ObjectID))
                    {
                      ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
                      if (!ObjectID)
                      {
                        uint64 = xpc_dictionary_get_uint64(v23, *MEMORY[0x1E69615A0]);
                        if (uint64)
                        {
                          EmptyWrapper = frr_CreateEmptyWrapper(1, uint64, &v28);
                          v16 = v28;
                          if (EmptyWrapper)
                          {
                            goto LABEL_23;
                          }

                          remoteRemakerFamily_storeSandboxRegistration(v28, 0);
                          remoteRemakerFamily_storeSandboxRegistration(v16, v22);
                          remoteRemakerFamily_storeSandboxRegistration(v16, v21);
                          *a6 = v16;
                          goto LABEL_21;
                        }

                        OUTLINED_FUNCTION_303();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0, v21);
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_35:
        EmptyWrapper = ObjectID;
LABEL_21:
        v16 = 0;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v16 = 0;
    EmptyWrapper = 0;
  }

  else
  {
    v16 = 0;
    EmptyWrapper = 4294955196;
  }

LABEL_23:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return EmptyWrapper;
}

uint64_t FigAssetReaderRemoteCreateWithAsset(const __CFAllocator *a1, const void *a2, uint64_t a3, void *a4)
{
  cf = 0;
  v22 = 0;
  value = 0;
  v19 = 0;
  OUTLINED_FUNCTION_2_107();
  if (!gRemakerRemoteClient)
  {
    v15 = 0;
    Mutable = 0;
    v14 = 4294955196;
    goto LABEL_18;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (!a2)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_31:
    v14 = ObjectID;
    v15 = 0;
LABEL_32:
    Mutable = 0;
    goto LABEL_18;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_31;
  }

  FigAssetGetCMBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v15 = 0;
    Mutable = 0;
    v14 = 4294954514;
    goto LABEL_18;
  }

  ObjectID = v10(v9, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &cf);
  if (ObjectID)
  {
    goto LABEL_31;
  }

  if (cf && !FigCFURLIsLocalResource())
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0, 0);
    v15 = 0;
    v14 = 0;
    goto LABEL_32;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_31;
  }

  ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value);
  if (ObjectID)
  {
    goto LABEL_31;
  }

  xpc_dictionary_set_uint64(0, "AssetToken", value);
  ObjectID = FigXPCMessageSetCFDictionary();
  if (ObjectID)
  {
    goto LABEL_31;
  }

  FigSandboxRegisterURLWithProcessAndCopyRegistration();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_31;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_31;
  }

  v12 = uint64;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v14 = frr_CreateEmptyWrapper(2, v12, &v22);
    v15 = v22;
    if (v14)
    {
      goto LABEL_18;
    }

    *(CMBaseObjectGetDerivedStorage() + 88) = Mutable;
    remoteRemakerFamily_storeSandboxRegistration(v15, 0);
    Mutable = 0;
    *a4 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0, 0);
    v14 = v17;
  }

  v15 = 0;
LABEL_18:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v14;
}

uint64_t frr_HandleServerMessage(uint64_t a1, uint64_t a2)
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

uint64_t remoteRemakerFamily_CreateXPCMessage(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  ObjectID = remoteRemakerFamily_GetObjectID(a1, &v7);
  if (ObjectID)
  {
    v5 = ObjectID;
  }

  else
  {
    v5 = FigXPCCreateBasicMessage();
    if (!v5)
    {
      *a3 = 0;
    }
  }

  FigXPCRelease();
  return v5;
}

double remoteRemakerFamily_copySerializableVideoCompositionProcessorProperties()
{
  OUTLINED_FUNCTION_257_0();
  v4 = CFGetAllocator(v3);
  if (v0)
  {
    v6 = v4;
    Value = CFDictionaryGetValue(v0, @"VideoCompositionProcessor_OutputBufferDescription");
    if (!Value)
    {
      v11 = CFRetain(v0);
      if (v1)
      {
        goto LABEL_10;
      }

LABEL_12:
      if (v11)
      {
        CFRelease(v11);
      }

      return result;
    }

    v8 = Value;
    Count = CFDictionaryGetCount(v0);
    MutableCopy = CFDictionaryCreateMutableCopy(v6, Count, v0);
    if (MutableCopy)
    {
      v11 = MutableCopy;
      v12 = CFArrayGetCount(v8);
      Mutable = CFArrayCreateMutable(v6, v12, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
        v19 = v11;
LABEL_16:
        CFRelease(v19);
        return result;
      }

      v14 = Mutable;
      if (v12 >= 1)
      {
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v15);
          v17 = CMTagCollectionCopyAsData(ValueAtIndex, v6);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          CFArrayAppendValue(v14, v17);
          CFRelease(v18);
          if (v12 == ++v15)
          {
            goto LABEL_9;
          }
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
        CFRelease(v11);
        v19 = v14;
        goto LABEL_16;
      }

LABEL_9:
      CFDictionarySetValue(v11, @"VideoCompositionProcessor_OutputBufferDescription", v14);
      CFRelease(v14);
      if (v1)
      {
LABEL_10:
        *v1 = v11;
        return result;
      }

      goto LABEL_12;
    }

    v20 = qword_1ED4CBE28;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 4294955196, "<<<< RemakerRemote >>>>", 2146, v2);
  }

  return result;
}

uint64_t remoteReader_EnableVideoCompositionExtraction3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, int a9, const __CFArray *a10, const __CFArray *a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, int a17, int a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const __CFDictionary *a26, _DWORD *a27)
{
  v46 = 0;
  v47[0] = 0;
  v35 = remoteRemakerFamily_CreateXPCMessage(a1, 1920361317, &v46);
  if (v35)
  {
    v40 = v35;
  }

  else
  {
    v42 = a2;
    v43 = a3;
    v36 = a8;
    if (a26)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(a26))
      {
        CFDictionaryGetValue(a26, @"AssetReader_CopyDataBuffers");
        FigCFEqual();
      }
    }

    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    v39 = v46;
    if (!PixelBufferAttributesWithIOSurfaceSupport)
    {
      PixelBufferAttributesWithIOSurfaceSupport = FigXPCMessageSetCFDictionary();
      if (!PixelBufferAttributesWithIOSurfaceSupport)
      {
        PixelBufferAttributesWithIOSurfaceSupport = FigXPCMessageSetCFDictionary();
        if (!PixelBufferAttributesWithIOSurfaceSupport)
        {
          v44 = *a13;
          v45 = *(a13 + 16);
          remoteRemakerFamily_AddVideoCompositionTrackCommon(a1, v39, v42, v43, a4, a5, a6, a7, v36, a9, a10, a11, a12, &v44, a14, a15, a16, a17, a18, a20, a21, a22, a23, a24, a25, a27);
        }
      }
    }

    v40 = PixelBufferAttributesWithIOSurfaceSupport;
  }

  FigXPCRelease();
  if (v47[0])
  {
    CFRelease(v47[0]);
  }

  return v40;
}

uint64_t remoteRemaker_StartOutput_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  remoteRemakerFamily_CreateXPCMessage(v1, 1836217199, v0);
  OUTLINED_FUNCTION_4_88();
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_5_75();
  }

  OUTLINED_FUNCTION_1_110(v2);
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

void remoteReader_ExtractAndRetainNextSampleBuffer_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

BOOL frr_CopyTrackInfo_cold_1(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t remoteWriter_AddAudioTrackWithCompression_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_257_0();
  v8 = v7;
  if (CFDictionaryGetValue(v7, @"AssetWriterAudioTrackProcessingOption_SourceAudioFormatDescriptionHint"))
  {
    v9 = *MEMORY[0x1E695E480];
    SerializableDictionaryForFormatDescription = FigRemote_CreateSerializableDictionaryForFormatDescription();
    if (!SerializableDictionaryForFormatDescription)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, v8);
      CFDictionarySetValue(MutableCopy, @"AssetWriterAudioTrackProcessingOption_SourceAudioFormatDescriptionHint", *v4);
      Copy = CFDictionaryCreateCopy(v9, MutableCopy);
      goto LABEL_6;
    }

    Copy = 0;
  }

  else
  {
    Copy = CFRetain(v8);
    SerializableDictionaryForFormatDescription = 0;
  }

  MutableCopy = 0;
LABEL_6:
  *a4 = SerializableDictionaryForFormatDescription;
  *v5 = Copy;
  if (*v4)
  {
    CFRelease(*v4);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (!SerializableDictionaryForFormatDescription)
  {
    return 1;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return 0;
}

uint64_t remoteWriter_MarkEndOfDataForTrack_cold_1(uint64_t a1, void **a2, int a3, _DWORD *a4)
{
  XPCMessage = remoteRemakerFamily_CreateXPCMessage(a1, 2003136356, a2);
  v8 = *a2;
  if (!XPCMessage)
  {
    xpc_dictionary_set_int64(v8, "TrackID", a3);
    XPCMessage = FigXPCRemoteClientSendSyncMessage();
  }

  *a4 = XPCMessage;
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteWriter_Finish_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  remoteRemakerFamily_CreateXPCMessage(v1, 2003986025, v0);
  OUTLINED_FUNCTION_4_88();
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_5_75();
  }

  OUTLINED_FUNCTION_1_110(v2);
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteWriter_FinishAsync_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  remoteRemakerFamily_CreateXPCMessage(v1, 2003986017, v0);
  OUTLINED_FUNCTION_4_88();
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_5_75();
  }

  OUTLINED_FUNCTION_1_110(v2);
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteWriter_EndPass_cold_1(uint64_t a1, void **a2, int a3, _DWORD *a4)
{
  XPCMessage = remoteRemakerFamily_CreateXPCMessage(a1, 2003985776, a2);
  v8 = *a2;
  if (!XPCMessage)
  {
    xpc_dictionary_set_int64(v8, "TrackID", a3);
    XPCMessage = FigXPCRemoteClientSendSyncMessage();
  }

  *a4 = XPCMessage;
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t remoteWriter_Flush_cold_1()
{
  OUTLINED_FUNCTION_257_0();
  remoteRemakerFamily_CreateXPCMessage(v1, 2003202920, v0);
  OUTLINED_FUNCTION_4_88();
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_5_75();
  }

  OUTLINED_FUNCTION_1_110(v2);
  FigXPCRemoteClientKillServerOnTimeout();

  return FigXPCRelease();
}

uint64_t keyManager_ensureAndCopyLowValueKeyAndIVForEntryInternal(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 104) != 0)
  {
    goto LABEL_9;
  }

  if (!*(a2 + 64))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17440, 4294955138, "<<<< FigPKDKeyManager >>>>", 1615, v4);
    goto LABEL_22;
  }

  if (!*(a2 + 56))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17440, 4294955138, "<<<< FigPKDKeyManager >>>>", 1616, v4);
    goto LABEL_22;
  }

  if (!*(a2 + 80))
  {
    v8 = keyManager_processOnlineKeyInternal(a1, a2, 3);
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_22:
    v10 = v8;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v8 = keyManager_processOfflineKeyInternal(a1, a2, 6);
  if (v8)
  {
    goto LABEL_22;
  }

LABEL_6:
  JE2f6WCx();
  *(a2 + 64) = 0;
  v9 = *(a2 + 56);
  if (v9)
  {
    CFRelease(v9);
    v10 = 0;
    *(a2 + 56) = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_9:
  v10 = 0;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_10:
  v11 = *(a2 + 104);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  *a3 = v11;
LABEL_13:
  if (a4)
  {
    v12 = *(a2 + 112);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a4 = v12;
  }

  return v10;
}

uint64_t KeyManagerCreateStopSPC(uint64_t a1, const __CFData *a2, const __CFArray *a3, const void *a4, CFStringRef theString, void *a6)
{
  v37[15] = *MEMORY[0x1E69E9840];
  *buffer = 0;
  v37[0] = 0;
  *(v37 + 5) = 0;
  v20 = 0;
  *usedBufLen = 0;
  if (theString && (v38.length = CFStringGetLength(theString), v38.location = 0, CFStringGetBytes(theString, v38, 0x600u, 0, 0, buffer, 21, usedBufLen) >= 1))
  {
    buffer[*usedBufLen] = 0;
    sscanf(buffer, "%llu", &v20);
    v12 = v20;
  }

  else
  {
    v12 = 0;
  }

  if (a1 && a2 && a3 && a6)
  {
    *a6 = 0;
    FigSimpleMutexLock();
    *(a1 + 24) = 1;
    *(a1 + 40) = v12;
    KeyRequestForEntryInternal = keyManager_createKeyRequestForEntryInternal(a1, 0, a2, a3, a4, 0, 0, 0, 0, 0, a6);
    FigSimpleMutexUnlock();
  }

  else
  {
    OUTLINED_FUNCTION_3_84();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    KeyRequestForEntryInternal = v19;
  }

  if (dword_1EAF17448)
  {
    LODWORD(v20) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v20;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      *usedBufLen = 136316930;
      *&usedBufLen[4] = "KeyManagerCreateStopSPC";
      v22 = 2048;
      v23 = a1;
      v24 = 2112;
      v25 = a2;
      v26 = 2112;
      v27 = a3;
      v28 = 2112;
      v29 = a4;
      v30 = 2112;
      v31 = theString;
      v32 = 2048;
      v33 = a6;
      v34 = 1024;
      v35 = KeyRequestForEntryInternal;
      OUTLINED_FUNCTION_32();
      _os_log_send_and_compose_impl(v17, 0, buffer, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigPKDKeyManager >>>> %s: %p cert:%@ versionList:%@ assetID:%@ playbackSessionID:%@ stopSPCOut:%p err:%d");
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return KeyRequestForEntryInternal;
}

uint64_t keyManager_invalidateInternal(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (*(a1 + 24))
  {
    return 0;
  }

  if (CFDictionaryGetCount(*(a1 + 88)))
  {
    v52 = 4294955138;
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      if (dword_1EAF17448)
      {
        v13 = OUTLINED_FUNCTION_7_53(v12, v5, v6, v7, v8, v9, v10, v11, v62, v66, v70, v74, v77, SBYTE2(v77), SBYTE3(v77), SHIDWORD(v77));
        if (OUTLINED_FUNCTION_9_40(v13, v14, v15, v16, v17, v18, v19, v20, v63, v67, v71, v75, v78, v80, v82, v84))
        {
          v21 = v3;
        }

        else
        {
          v21 = v3 & 0xFFFFFFFE;
        }

        if (v21)
        {
          v87 = 136315394;
          v88 = "keyManager_invalidateInternal";
          v89 = 2048;
          v90 = a1;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_9_13();
          _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v1, v2, v27);
          v3 = HIDWORD(v77);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v12 = *(a1 + 40);
      }

      v28 = **(a1 + 32);
      if (v28 == 3)
      {
        WuLaQ4nIoKwZC7KxU(v12);
      }

      else if (v28 == 2)
      {
        MzdSdcDIXg8COV();
      }
    }

    *(a1 + 24) = 1;
    if (!*(a1 + 112) || !*(a1 + 120))
    {
      v52 = 0;
      goto LABEL_30;
    }

    v29 = keyManager_createKeyRequestForEntryInternal(a1, 0, *(a1 + 48), *(a1 + 56), *(a1 + 64), 0, 0, 0, 0, 0, &cf);
    if (v29)
    {
      goto LABEL_28;
    }

    if (dword_1EAF17448)
    {
      v37 = OUTLINED_FUNCTION_7_53(v29, v30, v31, v32, v33, v34, v35, v36, v64, v68, v72, v74, v77, SBYTE2(v77), SBYTE3(v77), SHIDWORD(v77));
      if (OUTLINED_FUNCTION_9_40(v37, v38, v39, v40, v41, v42, v43, v44, v65, v69, v73, v76, v79, v81, v83, v85))
      {
        v45 = v3;
      }

      else
      {
        v45 = v3 & 0xFFFFFFFE;
      }

      if (v45)
      {
        v87 = 136315394;
        v88 = "keyManager_invalidateInternal";
        v89 = 2048;
        v90 = a1;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_9_13();
        _os_log_send_and_compose_impl(v46, v47, v48, v49, v50, v1, v2, v51);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v53 = *(a1 + 120);
    v54 = *(a1 + 48);
    v55 = *(a1 + 96);
    v56 = *(a1 + 80);
    ID = PKDAPIProviderGetID(*(a1 + 32));
    v58 = *(a1 + 72);
    v59 = cf;
    v60 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v60)
    {
      v29 = v60(v53, v54, v55, v56, ID, v58, v59);
LABEL_28:
      v52 = v29;
      goto LABEL_30;
    }

    v52 = 4294954514;
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  return v52;
}

uint64_t PKDKeyManagerCreateForPastis(uint64_t a1, const __CFDictionary *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v5 = keyManager_createInternal(a1, a2, &v38);
  if (!v5)
  {
    if (_MergedGlobals_77 != -1)
    {
      dispatch_once_f(&_MergedGlobals_77, &unk_1ED4CAE90, InitPKDAPIProviderForPastis);
    }

    *(v38 + 32) = &unk_1ED4CAE90;
  }

  if (dword_1EAF17448)
  {
    v13 = OUTLINED_FUNCTION_6_71(v5, v6, v7, v8, v9, v10, v11, v12, v29, v31, v33, SBYTE2(v33), SBYTE3(v33), SHIDWORD(v33));
    if (OUTLINED_FUNCTION_437_1(v13, v14, v15, v16, v17, v18, v19, v20, v30, v32, v34, v35, v36, v37))
    {
      v21 = v4;
    }

    else
    {
      v21 = v4 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v39 = 136315906;
      OUTLINED_FUNCTION_2_108();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v2, v3, v27);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v38;
}

uint64_t PKDKeyManagerCreateForMSE(uint64_t a1, const __CFDictionary *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v5 = keyManager_createInternal(a1, a2, &v38);
  if (!v5)
  {
    if (qword_1ED4CAE88 != -1)
    {
      dispatch_once_f(&qword_1ED4CAE88, &unk_1ED4CAEA0, InitPKDAPIProviderForMSECTR);
    }

    *(v38 + 32) = &unk_1ED4CAEA0;
  }

  if (dword_1EAF17448)
  {
    v13 = OUTLINED_FUNCTION_6_71(v5, v6, v7, v8, v9, v10, v11, v12, v29, v31, v33, SBYTE2(v33), SBYTE3(v33), SHIDWORD(v33));
    if (OUTLINED_FUNCTION_437_1(v13, v14, v15, v16, v17, v18, v19, v20, v30, v32, v34, v35, v36, v37))
    {
      v21 = v4;
    }

    else
    {
      v21 = v4 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v39 = 136315906;
      OUTLINED_FUNCTION_2_108();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v2, v3, v27);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v38;
}

uint64_t keyManager_processOfflineKeyInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!*(a1 + 40) || (v6 = a3, (a3 & 0xFFFFFFFD) != 4))
  {
    OUTLINED_FUNCTION_1_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v24 = v27;
    v9 = 0;
    Mutable = 0;
    goto LABEL_45;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_1_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
    v24 = v28;
    v9 = 0;
    goto LABEL_45;
  }

  v9 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    goto LABEL_60;
  }

  CFDictionarySetValue(Mutable, @"igoeg", *(a2 + 88));
  v10 = *(a1 + 104);
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"lGxB4ky", v10);
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  v11 = PKDAPIProviderProcessCKC(*(a1 + 32), Mutable, v9);
  if (v11)
  {
    PackagedPersistentKeyFromEntryInternal = keyManager_cleanFairPlayStateIfNecessary(a1, v11);
    if (PackagedPersistentKeyFromEntryInternal)
    {
      goto LABEL_61;
    }

    PackagedPersistentKeyFromEntryInternal = PKDAPIProviderProcessCKC(*(a1 + 32), Mutable, v9);
    if (PackagedPersistentKeyFromEntryInternal)
    {
      goto LABEL_61;
    }
  }

  if (v6 == 4)
  {
    v34 = 0;
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(a2 + 72) = v34;
    }

    else if (*(a2 + 72))
    {
      goto LABEL_25;
    }

LABEL_60:
    OUTLINED_FUNCTION_1_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_61:
    v24 = PackagedPersistentKeyFromEntryInternal;
    goto LABEL_45;
  }

  if (v6 == 6)
  {
    v13 = *(a2 + 104);
    Value = CFDictionaryGetValue(v9, @"sPJ8AGu5PT");
    *(a2 + 104) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (!*(a2 + 104))
    {
      goto LABEL_60;
    }

    v15 = *(a2 + 112);
    v16 = CFDictionaryGetValue(v9, @"o9YYYJ64ntzC");
    *(a2 + 112) = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (!*(a2 + 112))
    {
      goto LABEL_60;
    }
  }

LABEL_25:
  v17 = CFDictionaryGetValue(v9, @"igoeg");
  if (!v17)
  {
    v24 = 0;
    goto LABEL_45;
  }

  v18 = *(a2 + 88);
  *(a2 + 88) = v17;
  CFRetain(v17);
  if (v18)
  {
    CFRelease(v18);
  }

  PackagedPersistentKeyFromEntryInternal = keyManager_createPackagedPersistentKeyFromEntryInternal(a1, a2, &cf);
  if (PackagedPersistentKeyFromEntryInternal)
  {
    goto LABEL_61;
  }

  v32 = v3;
  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = cf;
    while (1)
    {
      v21 = *(v19 + 40);
      if (!*v19 || !*(v19 + 32) || !*(v19 + 16))
      {
        break;
      }

      v22 = 0;
      if (!v20)
      {
        goto LABEL_39;
      }

      v22 = malloc_type_calloc(1uLL, 0x30uLL, 0x10E0040DE8CDC7DuLL);
      if (!v22)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v32);
        goto LABEL_39;
      }

      v23 = FigCFWeakReferenceHolderCopyReferencedObject();
      *v22 = v23;
      if (!v23)
      {
        goto LABEL_39;
      }

      v22[6] = *(v19 + 8);
      *(v22 + 4) = *(v19 + 16);
      *(v22 + 5) = *(v19 + 24);
      *(v22 + 1) = CFRetain(v20);
      dispatch_async_f(*v19, v22, keyManager_dispatchPersistentKeyUpdatedCallback);
LABEL_40:
      v19 = v21;
      if (!v21)
      {
        goto LABEL_43;
      }
    }

    v22 = 0;
LABEL_39:
    keyManager_releaseCallbackContext(v22);
    goto LABEL_40;
  }

LABEL_43:
  v24 = 0;
  if (FigCFDictionaryGetInt64IfPresent())
  {
    *(a2 + 184) = 1;
  }

LABEL_45:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

double keyManager_ensureDecryptContextForEntryInternal(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 96))
  {
    return result;
  }

  v8 = *(a2 + 64);
  v7 = *(a2 + 72);
  if (!v7)
  {
    if (v8)
    {
      if (*(a2 + 56))
      {
        goto LABEL_7;
      }
    }

    else if (*(a2 + 88))
    {
      goto LABEL_11;
    }

    v14 = qword_1EAF17440;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294955138, "<<<< FigPKDKeyManager >>>>", 1489, v3);
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!*(a2 + 56))
  {
LABEL_11:
    if (!*(a2 + 80) || v7 || !*(a2 + 88))
    {
      if (a3)
      {
        goto LABEL_24;
      }

      return result;
    }

    goto LABEL_14;
  }

  if (!*(a2 + 80))
  {
    goto LABEL_15;
  }

LABEL_14:
  if (!*(a2 + 88))
  {
LABEL_15:
    v9 = keyManager_processOnlineKeyInternal(a1, a2, 1);
    goto LABEL_16;
  }

  v9 = keyManager_processOfflineKeyInternal(a1, a2, 4);
LABEL_16:
  v11 = v9;
  v12 = *(a2 + 64);
  if (v12)
  {
    PKDAPIProviderDestroyExchange(*(a1 + 32), v12);
    *(a2 + 64) = 0;
  }

  v13 = *(a2 + 56);
  if (v13)
  {
    CFRelease(v13);
    *(a2 + 56) = 0;
  }

  if (a3 && !v11)
  {
    v7 = *(a2 + 72);
LABEL_24:
    *a3 = v7;
  }

  return result;
}

uint64_t keyManager_finalize(void *a1)
{
  FigSimpleMutexLock();
  keyManager_invalidateInternal(a1);
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
    a1[9] = 0;
  }

  v6 = a1[10];
  if (v6)
  {
    CFRelease(v6);
    a1[10] = 0;
  }

  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
    a1[12] = 0;
  }

  v8 = a1[15];
  if (v8)
  {
    CFRelease(v8);
    a1[15] = 0;
  }

  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
    a1[13] = 0;
  }

  v10 = a1[11];
  if (v10)
  {
    CFRelease(v10);
    a1[11] = 0;
  }

  FigSimpleMutexUnlock();

  return FigSimpleMutexDestroy();
}

void keyManager_createInternal_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a3 = v5;
  CFRelease(a2);
}

void keyManager_processOnlineKeyInternal_cold_4(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

double FigXPCImageQueueGaugeServerHandleMessage(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (FigXPCImageQueueGaugeServerHandlesMessagesForObject(a1))
  {
    FigXPCMessageGetOpCode();
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951137, "<< FigImageQueueGaugeXPCServer >>", 110, v5);
  }

  return result;
}

double FigXPCImageQueueGaugeServerHandleNoReplyMessage(const void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (FigXPCImageQueueGaugeServerHandlesMessagesForObject(a1))
  {
    FigXPCMessageGetOpCode();
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951137, "<< FigImageQueueGaugeXPCServer >>", 145, v4);
  }

  return result;
}

void FigXPCImageQueueGaugeServerCopyImageQueueGaugeForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXPCImageQueueGaugeServerStartAsSubserver_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXPCImageQueueGaugeServerStartAsSubserver_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double dataChannelConfiguration_copySidebandVideoPropertiesArrayFromFormatDescriptionArray(const __CFAllocator *a1, CFArrayRef theArray, __CFArray **a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v10 = Mutable;
      if (Count < 1)
      {
LABEL_9:
        *a3 = v10;
      }

      else
      {
        v11 = 0;
        while (1)
        {
          value = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
          if (MTSidebandVideoPropertiesCreateFromFormatDescription(a1, ValueAtIndex, &value))
          {
            break;
          }

          CFArrayAppendValue(v10, value);
          if (value)
          {
            CFRelease(value);
          }

          if (Count == ++v11)
          {
            goto LABEL_9;
          }
        }

        CFRelease(v10);
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951525, "<< FigDataChannelConfiguration >>", 364, v3);
    }
  }

  return result;
}

const void *FigDataChannelConfigurationGetFigImageQueueAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"FigImageQueue");
}

const void *FigDataChannelConfigurationGetFigDataQueueAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"FigDataQueue");
}

const void *FigDataChannelConfigurationGetFigDataChannelResourceAtIndex(uint64_t a1, CFIndex idx)
{
  if (!a1 || idx < 0)
  {
    return 0;
  }

  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), idx);

  return CFDictionaryGetValue(ValueAtIndex, @"FigDataChannelResource");
}

uint64_t FigDataChannelConfigurationCopySidebandVideoPropertiesAtIndex(uint64_t a1, int a2, CFIndex idx, void *a4)
{
  if ((idx & 0x8000000000000000) == 0 && a1 && a4)
  {
    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count > idx)
    {
      CFArrayGetValueAtIndex(*(a1 + 16), idx);
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        Value = CFRetain(Value);
      }

      *a4 = Value;
    }
  }

  return 0;
}

const void *FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"DescriptionTags");
}

const void *FigDataChannelConfigurationGetChannelSettingsAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"Settings");
}

uint64_t FigDataChannelConfigurationGetOutputQueueTypeAtIndex(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= a2)
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_4_89();
      if (result)
      {
        v6 = result;
        if (CFDictionaryContainsKey(result, @"FigImageQueue") || CFDictionaryContainsKey(v6, @"CAImageQueueID") || CFDictionaryContainsKey(v6, @"CAImageQueueReceiver"))
        {
          return 1;
        }

        else
        {
          if (CFDictionaryContainsKey(v6, @"FigDataQueue"))
          {
            return 2;
          }

          result = CFDictionaryContainsKey(v6, @"FigDataQueueObjectID");
          if (result)
          {
            return 2;
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigDataChannelConfigurationGetCAImageQueueIDAtIndex()
{
  result = OUTLINED_FUNCTION_3_85();
  if (v0)
  {
    v3 = v2;
    if ((v2 & 0x8000000000000000) == 0)
    {
      Count = *(v0 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= v3)
      {
        return 0;
      }

      else
      {
        result = OUTLINED_FUNCTION_4_89();
        if (result)
        {
          FigCFDictionaryGetInt64IfPresent();
          return v5;
        }
      }
    }
  }

  return result;
}

double FigDataChannelConfigurationSetFigDataQueueObjectIDAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1 || a2 < 0)
  {
    goto LABEL_10;
  }

  Count = OUTLINED_FUNCTION_2_109(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else if (CFArrayGetValueAtIndex(*(v2 + 16), a2))
  {

    FigCFDictionarySetInt64();
  }

  return result;
}

double FigDataChannelConfigurationSetFigDataChannelResourceObjectIDAtIndex(uint64_t a1, CFIndex idx, uint64_t a3)
{
  if (!a1 || idx < 0)
  {
    goto LABEL_10;
  }

  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else if (CFArrayGetValueAtIndex(*(a1 + 24), idx))
  {

    FigCFDictionarySetInt64();
  }

  return result;
}

double FigDataChannelConfigurationCopyAsDictionaryWithoutOutputQueues(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  if (!a1 || !a3)
  {
    return result;
  }

  v6 = a1;
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = OUTLINED_FUNCTION_9_2();
    v12 = CFArrayCreateMutable(v9, v10, v11);
    if (v12 && (v13 = OUTLINED_FUNCTION_9_2(), (v16 = CFArrayCreateMutable(v13, v14, v15)) != 0))
    {
      v52 = a3;
      v53 = v16;
      theDict = v8;
      v17 = *(v6 + 16);
      cf = v12;
      if (v17 && (v18 = CFArrayGetCount(v17), v18 >= 1))
      {
        v19 = v18;
        v20 = 0;
        v21 = @"FigDataQueue";
        v56 = v18;
        v57 = v6;
        while (1)
        {
          CFArrayGetValueAtIndex(*(v6 + 16), v20);
          v22 = OUTLINED_FUNCTION_9_2();
          MutableCopy = CFDictionaryCreateMutableCopy(v22, v23, v24);
          if (!MutableCopy)
          {
            break;
          }

          v26 = MutableCopy;
          CFDictionaryRemoveValue(MutableCopy, @"FigImageQueue");
          CFDictionaryRemoveValue(v26, v21);
          if (CFDictionaryContainsKey(v26, @"DescriptionTags"))
          {
            v27 = CFDictionaryGetValue(v26, @"DescriptionTags");
            v28 = MEMORY[0x19A8D3280](v27, allocator);
            if (!v28)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v52, v53);
LABEL_37:
              CFRelease(theDict);
              CFRelease(v26);
              v41 = v53;
              goto LABEL_31;
            }

            v29 = v28;
            CFDictionarySetValue(v26, @"DescriptionTags_SerializedDictionary", v28);
            CFRelease(v29);
            CFDictionaryRemoveValue(v26, @"DescriptionTags");
          }

          if (CFDictionaryContainsKey(v26, @"SidebandVideoPropertiesArray"))
          {
            v30 = v12;
            v31 = CFDictionaryGetValue(v26, @"SidebandVideoPropertiesArray");
            if (v31)
            {
              v32 = v31;
              v33 = v21;
              Count = CFArrayGetCount(v31);
              v35 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
              if (Count >= 1)
              {
                v36 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v32, v36);
                  value = 0;
                  if (MTSidebandVideoPropertiesCopyAsDictionary(ValueAtIndex, allocator, &value))
                  {
                    break;
                  }

                  CFArrayAppendValue(v35, value);
                  CFRelease(value);
                  if (Count == ++v36)
                  {
                    v6 = v57;
                    v12 = cf;
                    v19 = v56;
                    v21 = v33;
                    goto LABEL_22;
                  }
                }

                v12 = cf;
                goto LABEL_37;
              }

              v21 = v33;
              v12 = v30;
            }

            else
            {
              v38 = OUTLINED_FUNCTION_9_2();
              v35 = CFArrayCreateMutable(v38, v39, MEMORY[0x1E695E9C0]);
            }

LABEL_22:
            CFDictionarySetValue(v26, @"SidebandVideoPropertiesArray_SerializedDictionary", v35);
            CFRelease(v35);
            CFDictionaryRemoveValue(v26, @"SidebandVideoPropertiesArray");
          }

          CFArrayAppendValue(v12, v26);
          CFRelease(v26);
          if (++v20 == v19)
          {
            goto LABEL_24;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_3();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v52, v53);
        v41 = v54;
        v8 = theDict;
      }

      else
      {
LABEL_24:
        v8 = theDict;
        CFDictionarySetValue(theDict, @"ChannelArray", v12);
        v40 = *(v6 + 24);
        v41 = v53;
        if (v40 && (v42 = CFArrayGetCount(v40), v42 >= 1))
        {
          v43 = v42;
          v44 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(*(v6 + 24), v44);
            v45 = OUTLINED_FUNCTION_9_2();
            v48 = CFDictionaryCreateMutableCopy(v45, v46, v47);
            if (!v48)
            {
              break;
            }

            v49 = v48;
            CFDictionaryRemoveValue(v48, @"FigDataChannelResource");
            CFArrayAppendValue(v53, v49);
            CFRelease(v49);
            if (v43 == ++v44)
            {
              goto LABEL_29;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_6_3();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v52, v53);
        }

        else
        {
LABEL_29:
          CFDictionarySetValue(theDict, @"ResourceArray", v53);
          if (!FigCFDictionarySetInt32())
          {
            FigCFDictionarySetInt32();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            *v52 = theDict;
            v12 = cf;
LABEL_31:
            if (v12)
            {
              CFRelease(v12);
            }

            if (v41)
            {
              CFRelease(v41);
            }

            return result;
          }
        }

        v12 = cf;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v41 = 0;
    }

    CFRelease(v8);
    goto LABEL_31;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951525, "<< FigDataChannelConfiguration >>", 958, v3);
}

uint64_t FigDataChannelConfigurationGetFigDataQueueObjectIDAtIndex()
{
  result = OUTLINED_FUNCTION_3_85();
  if (v0)
  {
    v3 = v2;
    if ((v2 & 0x8000000000000000) == 0)
    {
      Count = *(v0 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= v3)
      {
        return 0;
      }

      else
      {
        result = OUTLINED_FUNCTION_4_89();
        if (result)
        {
          FigCFDictionaryGetInt64IfPresent();
          return v5;
        }
      }
    }
  }

  return result;
}

double FigDataChannelConfigurationSetFigDataQueueAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1 || a2 < 0)
  {
    goto LABEL_10;
  }

  Count = OUTLINED_FUNCTION_2_109(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > a2 && v2)
  {
    if (CFArrayGetValueAtIndex(*(v3 + 16), a2))
    {
      FigCFDictionarySetValue();
    }
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

const void *FigDataChannelConfigurationGetCAImageQueueReceiverAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 || a2 < 0)
  {
    return 0;
  }

  Count = OUTLINED_FUNCTION_6_72(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_4_89();
  if (!v4)
  {
    return 0;
  }

  return CFDictionaryGetValue(v4, @"CAImageQueueReceiver");
}

double FigDataChannelConfigurationSetCAImageQueueReceiverAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1 || a2 < 0)
  {
    goto LABEL_10;
  }

  Count = OUTLINED_FUNCTION_2_109(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > a2 && v2)
  {
    if (CFArrayGetValueAtIndex(*(v3 + 16), a2))
    {
      FigCFDictionarySetValue();
    }
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t FigDataChannelConfigurationGetFigDataChannelResourceObjectIDAtIndex()
{
  result = OUTLINED_FUNCTION_3_85();
  if (v0)
  {
    v3 = v2;
    if ((v2 & 0x8000000000000000) == 0)
    {
      Count = *(v0 + 24);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= v3)
      {
        return 0;
      }

      else
      {
        result = CFArrayGetValueAtIndex(*(v0 + 24), v3);
        if (result)
        {
          FigCFDictionaryGetInt64IfPresent();
          return v5;
        }
      }
    }
  }

  return result;
}

double FigDataChannelConfigurationSetFigDataChannelResourceAtIndex(uint64_t a1, CFIndex idx, uint64_t a3)
{
  if (!a1 || idx < 0)
  {
    goto LABEL_10;
  }

  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > idx && a3)
  {
    if (CFArrayGetValueAtIndex(*(a1 + 24), idx))
    {
      FigCFDictionarySetValue();
    }
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void FigDataChannelConfigurationCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void dataChannelConfiguration_createDataChannelConfiguration_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v5;

  CFRelease(a2);
}

void dataChannelConfiguration_createDataChannelConfiguration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateCopy_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigImageQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigImageQueue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigImageQueue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void dataChannelConfiguration_addOutputQueueCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigDataQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigDataQueue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigDataQueue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddDataChannelResource_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddDataChannelResource_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationAddDataChannelResource_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationSetModificationID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateFromDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateFromDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateFromDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateFromDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateFromDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateFromDictionary_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCreateFromDictionary_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigDataChannelConfigurationCopyLoggingIdentifier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigDataChannelConfigurationCopyLoggingIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCopyLoggingIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D3660](&getCaptionPropertyToAttributeMappingArray_once, initMappingArray);
  v4 = sCaptionPropertyToAttributeMappingArray;
  v24 = 0u;
  v25 = 0u;
  v5 = *DerivedStorage;
  *context = a2;
  v23 = v5;
  lhs = *(DerivedStorage + 32);
  v6 = *(DerivedStorage + 8);
  v18.epoch = *(DerivedStorage + 24);
  *&v18.value = v6;
  CMTimeSubtract(&v24, &lhs, &v18);
  DWORD2(v25) = 0;
  v26.length = CFArrayGetCount(v4);
  OUTLINED_FUNCTION_1_112(v26.length, v26, v7, v8, v9, v10, v11, v18.value, *&v18.timescale, v18.epoch, v19, lhs.value, *&lhs.timescale, lhs.epoch, v21);
  result = DWORD2(v25);
  if (!DWORD2(v25))
  {
    v27.length = CFArrayGetCount(v4);
    OUTLINED_FUNCTION_1_112(v27.length, v27, v13, v14, v15, v16, v17, v18.value, *&v18.timescale, v18.epoch, v19, lhs.value, *&lhs.timescale, lhs.epoch, v21);
    result = DWORD2(v25);
    if (!DWORD2(v25))
    {
      return FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, a2);
    }
  }

  return result;
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_SetAttribute(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigTTMLDocumentWriterSetAttribute(*DerivedStorage, a2, a3);
  if (!v6)
  {
    if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      v7 = *&v9.value;
      *(DerivedStorage + 24) = v9.epoch;
      *(DerivedStorage + 8) = v7;
    }

    else if (FigCFEqual())
    {
      CMTimeMakeFromDictionary(&v9, a3);
      *(DerivedStorage + 32) = v9;
    }
  }

  return v6;
}

void insertAttribute(uint64_t *a1, uint64_t a2)
{
  cf = 0;
  v4 = *a1;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = *MEMORY[0x1E695E480];
    v6(CMBaseObject, v4, *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      TypeID = FigCaptionDynamicStyleGetTypeID();
      InitialValue = cf;
      if (v8 == TypeID)
      {
        InitialValue = FigCaptionDynamicStyleGetInitialValue();
      }

      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = (a1[1])(InitialValue, Mutable);
      if (v12 || (context = *(a2 + 8), v15 = 0, OUTLINED_FUNCTION_0_122(), CFDictionaryApplyFunction(Mutable, v13, &context), (v12 = v15) != 0))
      {
        *(a2 + 40) = v12;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

void insertSetElement(uint64_t *a1, uint64_t a2)
{
  v22 = 0;
  cf = 0;
  v4 = *a1;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && (v7 = *MEMORY[0x1E695E480], v6(CMBaseObject, v4, *MEMORY[0x1E695E480], &cf), cf) && (v8 = CFGetTypeID(cf), v8 == FigCaptionDynamicStyleGetTypeID()) && (KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(), KeyFrameCount >= 2))
  {
    v10 = KeyFrameCount;
    v11 = 0;
    Mutable = 0;
    v13 = 1;
    v14 = MEMORY[0x1E695E9D8];
    v15 = MEMORY[0x1E695E9E8];
    while (1)
    {
      if (v22)
      {
        CFRelease(v22);
        v22 = 0;
      }

      v21 = 0.0;
      started = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
      if (started)
      {
        break;
      }

      started = FigTTMLDocumentWriterStartElement(*(a2 + 8), 1);
      if (started)
      {
        break;
      }

      memset(&v20, 0, sizeof(v20));
      v19 = *(a2 + 16);
      Seconds = CMTimeGetSeconds(&v19);
      CMTimeMakeWithSeconds(&v20, Seconds * v21, 1000);
      if (v11)
      {
        CFRelease(v11);
      }

      v19 = v20;
      v11 = CMTimeCopyAsDictionary(&v19, v7);
      started = FigTTMLDocumentWriterSetAttribute(*(a2 + 8), @"begin", v11);
      if (started)
      {
        break;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      Mutable = CFDictionaryCreateMutable(v7, 0, v14, v15);
      started = (a1[1])(v22, Mutable);
      if (started)
      {
        break;
      }

      *&v19.value = *(a2 + 8);
      OUTLINED_FUNCTION_0_122();
      CFDictionaryApplyFunction(Mutable, v18, &v19);
      started = v19.timescale;
      if (v19.timescale)
      {
        break;
      }

      started = FigTTMLDocumentWriterEndElement(*(a2 + 8));
      if (started)
      {
        break;
      }

      if (v10 == ++v13)
      {
        goto LABEL_21;
      }
    }

    *(a2 + 40) = started;
  }

  else
  {
    v11 = 0;
    Mutable = 0;
  }

LABEL_21:
  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
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

uint64_t setEachAttributeToWriter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    result = FigTTMLDocumentWriterSetAttribute(*a3, result, a2);
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t FigStreamAlternateIsValidCodecString(CFStringRef theString, const __CFDictionary *a2, BOOL *a3, _BYTE *a4, _DWORD *a5, const __CFDictionary **a6)
{
  v13 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (qword_1ED4CAED8 != -1)
  {
    dispatch_once(&qword_1ED4CAED8, &__block_literal_global_54);
  }

  if (!_MergedGlobals_78 && FigCFStringFind() || FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(theString, a2, &v13, a6))
  {
    return 0;
  }

  if (a3)
  {
    *a3 = (v13 & 2) != 0;
  }

  if (a4)
  {
    *a4 = v13 & 1;
  }

  if (a5)
  {
    *a5 = v13;
  }

  return 1;
}

__CFString *FigAlternateCreateVideoLayoutLoggingStringFromCollection(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    OUTLINED_FUNCTION_0_123();
    FigTagCollectionGetTagsWithCategory();
    if (FigTagEqualToTag())
    {
      v2 = @"SIDE";
    }

    else if (FigTagEqualToTag())
    {
      v2 = @"OVER";
    }

    else if (FigTagEqualToTag())
    {
      v2 = @"NONE";
    }

    else
    {
      v2 = @"UNKNOWN";
    }

    OUTLINED_FUNCTION_0_123();
    FigTagCollectionGetTagsWithCategory();
    if (FigTagEqualToTag())
    {
      v3 = @"LEFT";
    }

    else if (FigTagEqualToTag())
    {
      v3 = @"RIGHT";
    }

    else if (FigTagEqualToTag())
    {
      v3 = @"STEREO";
    }

    else if (FigTagEqualToTag())
    {
      v3 = @"MONO";
    }

    else
    {
      v3 = @"UNKNOWN";
    }

    OUTLINED_FUNCTION_0_123();
    FigTagCollectionGetTagsWithCategory();
    if (FigTagEqualToTag())
    {
      v4 = @"RECT";
    }

    else if (FigTagEqualToTag())
    {
      v4 = @"EQUI";
    }

    else if (FigTagEqualToTag())
    {
      v4 = @"HEQU";
    }

    else if (FigTagEqualToTag())
    {
      v4 = @"FISH";
    }

    else
    {
      v5 = FigTagEqualToTag();
      v4 = @"PRIM";
      if (!v5)
      {
        v4 = @"UNKNOWN";
      }
    }

    CFStringAppendFormat(Mutable, 0, @"%@/%@/%@", v2, v3, v4);
  }

  return Mutable;
}

CFMutableStringRef FigAlternateCreateVideoLayoutLoggingStringFromCollectionArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable && CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      VideoLayoutLoggingStringFromCollection = FigAlternateCreateVideoLayoutLoggingStringFromCollection(ValueAtIndex);
      if (v3)
      {
        v6 = OUTLINED_FUNCTION_265();
        CFStringAppendFormat(v6, v7, @",");
      }

      v8 = OUTLINED_FUNCTION_265();
      CFStringAppendFormat(v8, v9, @"%@", VideoLayoutLoggingStringFromCollection);
      if (VideoLayoutLoggingStringFromCollection)
      {
        CFRelease(VideoLayoutLoggingStringFromCollection);
      }

      ++v3;
    }

    while (v3 < CFArrayGetCount(a1));
  }

  return Mutable;
}

CFMutableStringRef FigAlternateCreateVideoContentTypeStringFromCollectionArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable && CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      VideoContentTypeStringFromCollection = FigAlternateGetVideoContentTypeStringFromCollection(ValueAtIndex);
      if (v3)
      {
        v6 = OUTLINED_FUNCTION_265();
        CFStringAppendFormat(v6, v7, @",");
      }

      v8 = OUTLINED_FUNCTION_265();
      CFStringAppendFormat(v8, v9, @"%@", VideoContentTypeStringFromCollection);
      ++v3;
    }

    while (v3 < CFArrayGetCount(a1));
  }

  return Mutable;
}

__CFArray *FigAlternateCreateDefaultTagCollectionsArrayForVideo()
{
  value = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  DefaultTagCollectionForVideo = FPSupport_CreateDefaultTagCollectionForVideo(&value);
  v3 = value;
  if (DefaultTagCollectionForVideo)
  {
    v4 = 0;
    if (value)
    {
LABEL_5:
      CFRelease(v3);
    }
  }

  else
  {
    if (!value)
    {
      v4 = 0;
      goto LABEL_7;
    }

    CFArrayAppendValue(v1, value);
    v3 = value;
    v4 = v1;
    v1 = 0;
    if (value)
    {
      goto LABEL_5;
    }
  }

  if (v1)
  {
LABEL_7:
    CFRelease(v1);
  }

  return v4;
}

BOOL FigAlternateDoAllHostsHaveMatchingAlternates(const __CFArray *a1)
{
  if (!a1)
  {
    return 1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 2)
  {
    return 1;
  }

  v3 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  v5 = CFArrayGetCount(ValueAtIndex);
  if (v5 < 1)
  {
    return 1;
  }

  v6 = v5;
  v7 = 0;
  while (2)
  {
    v8 = CFArrayGetValueAtIndex(ValueAtIndex, v7);
    NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(v8);
    v10 = 1;
    do
    {
      v11 = CFArrayGetValueAtIndex(a1, v10);
      v12 = CFArrayGetCount(v11);
      if (v12 < 1)
      {
        return 0;
      }

      v13 = v12;
      v14 = 1;
      do
      {
        v15 = CFArrayGetValueAtIndex(v11, v14 - 1);
        v16 = FigAlternateGetNormalizedPeakBitrate(v15);
        v17 = v16 * 0.95 > NormalizedPeakBitrate;
        if (v16 * 1.05 < NormalizedPeakBitrate)
        {
          v17 = 1;
        }

        if (v14 >= v13)
        {
          break;
        }

        ++v14;
      }

      while (v17);
      ++v10;
    }

    while (v10 < v3 && !v17);
    if (++v7 < v6 && !v17)
    {
      continue;
    }

    break;
  }

  return !v17;
}

const void *FigStreamAlternateGetAudioMaximumDecodeChannelCount(unsigned int a1)
{
  if (!a1)
  {
    return 0;
  }

  MEMORY[0x19A8D3660](&gCreateAudioFormatLookupOnce, figStreamAlternate_FigCreateAudioFormatLookupOnce);
  if (!qword_1ED4CAEC8)
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (CFDictionaryContainsKey(qword_1ED4CAEC8, a1))
  {
    Value = CFDictionaryGetValue(qword_1ED4CAEC8, a1);
  }

  else
  {
    v3 = OUTLINED_FUNCTION_4_90();
    AudioFormatGetPropertyInfo(v3, v4, v5, v6);
    Value = 0;
    free(0);
    free(0);
  }

  FigSimpleMutexUnlock();
  return Value;
}

const __CFDictionary *FigStreamAlternateGetOptionDictionaryForMediaTypeAndPersistentID(const __CFArray *a1, int a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
        FigCFStringGetOSTypeValue();
        if (!a2)
        {
          break;
        }

        if (v4 == ++v5)
        {
          return 0;
        }
      }

      if (ValueAtIndex)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupOptions");
        for (i = 0; ; ++i)
        {
          v11 = Value ? CFArrayGetCount(Value) : 0;
          if (i >= v11)
          {
            break;
          }

          v7 = CFArrayGetValueAtIndex(Value, i);
          CFDictionaryGetValue(v7, @"MediaSelectionOptionsPersistentID");
          if (FigCFEqual())
          {
            return v7;
          }
        }
      }
    }
  }

  return 0;
}

BOOL figStreamAlternate_isSelectionClosedCaptionsMediaType(_BOOL8 result)
{
  if (result)
  {
    FigCFDictionaryGetValue();
    FigCFStringGetOSTypeValue();
    return 0;
  }

  return result;
}

uint64_t FigStreamAlternateSubstreamURLsMatchBetweenVariants(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4)
{
  v28 = 0uLL;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (a4 == 4)
  {
    v11 = &v25;
    v7 = 1935832172;
LABEL_9:
    PersistentIDForMediaTypeInMediaSelectionArray = FigStreamAlternateGetPersistentIDForMediaTypeInMediaSelectionArray(a3, v7, 0);
    *v11 = PersistentIDForMediaTypeInMediaSelectionArray;
    if (!PersistentIDForMediaTypeInMediaSelectionArray)
    {
      return 1;
    }

    OUTLINED_FUNCTION_1_113(a1, v13, v14, v15, v16, v17, v18, &v28 + 1, 0);
    OUTLINED_FUNCTION_1_113(a2, v19, v20, v21, v22, v23, v24, &v28, 0);
    if (v28 == 0)
    {
      return 1;
    }

    return FigCFHTTPCompareURLs(*(&v28 + 1), v28) != 0;
  }

  if (a4 == 2)
  {
    v11 = &v26;
    v7 = 1936684398;
    goto LABEL_9;
  }

  if (a4 != 1)
  {
    return 1;
  }

  v7 = 1986618469;
  PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(a1);
  *(&v28 + 1) = PlaylistAlternateURL;
  v9 = FigAlternateGetPlaylistAlternateURL(a2);
  *&v28 = v9;
  if (!(PlaylistAlternateURL | v9) || (result = FigCFHTTPCompareURLs(PlaylistAlternateURL, v9), result))
  {
    v11 = &v27;
    goto LABEL_9;
  }

  return result;
}

uint64_t FigStreamAlternateCopyAlternates(uint64_t a1)
{
  cf = 0;
  v7 = 0;
  if (FigAlternateContinuousFramesOnlyFilterCreate(*MEMORY[0x1E695E480], &cf) || (v2 = cf, (v3 = *(*(CMBaseObjectGetVTable() + 16) + 24)) == 0))
  {
    v4 = 0;
  }

  else if (v3(v2, a1, &v7))
  {
    v4 = 0;
  }

  else
  {
    v4 = v7;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

double FigStreamAlternateCopyAvailableVideoDynamicRanges_cold_1()
{
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954434, "<<<< FigStreamAlternateUtilities >>>>", 1221, v0);
}

void FigBandwidthPredictorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t HandleRemakerFamilyMessageWithReply(_xpc_connection_s *a1, void *a2, void *a3)
{
  HIDWORD(v859) = 0;
  v856 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
LABEL_295:
    v3 = OpCode;
    goto LABEL_200;
  }

  v9 = MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E4D0];
  OUTLINED_FUNCTION_59_8();
  if (v293)
  {
    OUTLINED_FUNCTION_12_35();
    v887 = 0;
    xpc_connection_get_pid(a1);
    v140 = OUTLINED_FUNCTION_15_32();
    v33 = OUTLINED_FUNCTION_16_28(v140, v141, v142, v143, v144, v145, v146, v147, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0, v859, *token.val, *&token.val[4]);
    uint64 = xpc_dictionary_get_uint64(a2, "AssetToken");
    v149 = FigXPCAssetServerCopyAssetForID(uint64, cf);
    if (v149)
    {
      goto LABEL_217;
    }

    v149 = FigXPCMessageCopyCFURL();
    if (v149)
    {
      goto LABEL_217;
    }

    v149 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForDestURL", v889[0]);
    if (v149)
    {
      goto LABEL_217;
    }

    OUTLINED_FUNCTION_18_24();
    if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
    {
      OUTLINED_FUNCTION_43_11();
      v149 = FigXPCMessageCopyCFDictionary();
      if (v149)
      {
        goto LABEL_217;
      }

      v149 = FigXPCMessageCopyCFDictionary();
      if (v149)
      {
        goto LABEL_217;
      }

      if (v887)
      {
        v10 = *v10;
        v150 = v10 != CFDictionaryGetValue(v887, @"Remaker_NoInterruptions");
        v3 = @"Remaker_TemporaryDirectoryURL";
        if (CFDictionaryContainsKey(v887, @"Remaker_TemporaryDirectoryURL"))
        {
          Value = CFDictionaryGetValue(v887, @"Remaker_TemporaryDirectoryURL");
          v149 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForTempDirURL", Value);
          if (v149)
          {
            goto LABEL_217;
          }
        }
      }

      else
      {
        v150 = 1;
      }

      if (FigOSTransactionCreate())
      {
        OUTLINED_FUNCTION_54_12();
        QueuedWithAsset = FigRemakerCreateQueuedWithAsset(v9, v153, v889[0], v888, v887, &v878);
        if (QueuedWithAsset || (OUTLINED_FUNCTION_1_114(), OUTLINED_FUNCTION_42_12(), QueuedWithAsset = frs_MakeWrapperForRemakerFamilyInternal(v155, v156, v157, v158, v159, v160, v150), QueuedWithAsset))
        {
          v3 = QueuedWithAsset;
        }

        else
        {
          OUTLINED_FUNCTION_32_15();
          xpc_dictionary_set_uint64(a3, v161, v162);
          OUTLINED_FUNCTION_17_27(v163, v164, v165, v166, v167, v168, v169, v170, v544, v572, v595, v618, v641, v663, v685, v707, v730, v753, v776, v789, v802, v810, v818, v826, v834, xdicte, v848, v854, v856, v864, token.val[0]);
          OUTLINED_FUNCTION_28_17();
          FigRemakerGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v171 = OUTLINED_FUNCTION_228();
            v172(v171);
            OUTLINED_FUNCTION_47_10();
            if (!v3)
            {
              FigRemakerGetFigBaseObject();
              v174 = v173;
              v175 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v175)
              {
                v175(v174, @"Remaker_ClientSecTask", v33);
              }

              v3 = 0;
            }
          }

          else
          {
            CFRelease(v10);
            v3 = 4294954514;
          }
        }

        os_release(a2);
LABEL_100:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v889[0])
        {
          CFRelease(v889[0]);
        }

        if (v888)
        {
          CFRelease(v888);
        }

        v176 = v887;
        if (!v887)
        {
          goto LABEL_154;
        }

        goto LABEL_153;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_125();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_217:
    v3 = v149;
    goto LABEL_100;
  }

  v3 = MEMORY[0x1E69615D0];
  v12 = MEMORY[0x1E695E4C0];
  switch(v11)
  {
    case 1836217461:
      OUTLINED_FUNCTION_12_35();
      v886 = 0;
      v887 = 0;
      xpc_connection_get_pid(a1);
      v122 = OUTLINED_FUNCTION_15_32();
      v833 = OUTLINED_FUNCTION_16_28(v122, v123, v124, v125, v126, v127, v128, v129, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, a3, v4, 0, 0, v859, *token.val, *&token.val[4]);
      OUTLINED_FUNCTION_51_12();
      FigXPCMessageCopyCFURL();
      v130 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForSourceURL", cf[0]);
      if (!v130)
      {
        v131 = xpc_dictionary_get_uint64(a2, "SourceFormatReaderToken");
        if (v131)
        {
          v132 = v131;
          v139 = FigFormatReaderServerIsObjectIDLocallyServed(v131) ? FigXPCFormatReaderServerCopyFormatReaderForID(v132, v889) : FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromOtherProcess(v132, v889, v133, v134, v135, v136, v137, v138);
          v3 = v139;
          if (v139)
          {
            goto LABEL_190;
          }
        }

        OUTLINED_FUNCTION_43_11();
        v130 = FigXPCMessageCopyCFURL();
        if (!v130)
        {
          v130 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForDestURL", v888);
          if (!v130)
          {
            OUTLINED_FUNCTION_18_24();
            if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
            {
              v130 = FigXPCMessageCopyCFDictionary();
              if (v130)
              {
                goto LABEL_219;
              }

              v130 = FigXPCMessageCopyCFDictionary();
              if (v130)
              {
                goto LABEL_219;
              }

              v3 = FigRemakerCreateQueuedBaseWithURLs;
              v242 = FigOSTransactionCreate();
              v243 = MEMORY[0x1E69615A0];
              if (v242)
              {
                OUTLINED_FUNCTION_54_12();
                WrapperForRemakerFamilyInternal = (FigRemakerCreateQueuedBaseWithURLs)(v9);
                if (WrapperForRemakerFamilyInternal || (OUTLINED_FUNCTION_1_114(), OUTLINED_FUNCTION_42_12(), WrapperForRemakerFamilyInternal = frs_MakeWrapperForRemakerFamilyInternal(v245, v246, v247, v248, v249, v250, 1), WrapperForRemakerFamilyInternal))
                {
                  v3 = WrapperForRemakerFamilyInternal;
                }

                else
                {
                  OUTLINED_FUNCTION_32_15();
                  xpc_dictionary_set_uint64(xdictd, v251, v252);
                  OUTLINED_FUNCTION_17_27(v253, v254, v255, v256, v257, v258, v259, v260, v543, v571, v594, v617, v640, v662, v684, v706, v729, v752, v775, v788, v801, v809, v817, v825, v833, xdictd, v847, v853, v856, v863, token.val[0]);
                  OUTLINED_FUNCTION_28_17();
                  FigRemakerGetFigBaseObject();
                  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                  {
                    v261 = OUTLINED_FUNCTION_228();
                    v262(v261);
                    OUTLINED_FUNCTION_47_10();
                    if (!FigRemakerCreateQueuedBaseWithURLs)
                    {
                      FigRemakerGetFigBaseObject();
                      v264 = v263;
                      v265 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v265)
                      {
                        v265(v264, @"Remaker_ClientSecTask", v833);
                      }

                      v3 = 0;
                    }
                  }

                  else
                  {
                    CFRelease(v243);
                    v3 = 4294954514;
                  }
                }

                os_release(a2);
LABEL_190:
                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

                if (v889[0])
                {
                  CFRelease(v889[0]);
                }

                if (v888)
                {
                  CFRelease(v888);
                }

                v152 = v833;
                if (!v833)
                {
LABEL_198:
                  v202 = v878;
                  if (!v878)
                  {
                    goto LABEL_200;
                  }

                  goto LABEL_199;
                }

LABEL_197:
                CFRelease(v152);
                goto LABEL_198;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_125();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }

LABEL_219:
      v3 = v130;
      goto LABEL_190;
    case 1920103521:
      OUTLINED_FUNCTION_12_35();
      xpc_connection_get_pid(a1);
      v25 = OUTLINED_FUNCTION_15_32();
      v33 = OUTLINED_FUNCTION_16_28(v25, v26, v27, v28, v29, v30, v31, v32, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0, v859, *token.val, *&token.val[4]);
      v34 = xpc_dictionary_get_uint64(a2, "AssetToken");
      v35 = FigXPCAssetServerCopyAssetForID(v34, cf);
      if (!v35)
      {
        FigAssetGetCMBaseObject();
        v3 = v36;
        v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v37)
        {
          v3 = 4294954514;
          goto LABEL_148;
        }

        v35 = v37(v3, @"assetProperty_CreationURL", v9, v889);
        if (!v35)
        {
          OUTLINED_FUNCTION_43_11();
          v35 = FigXPCMessageCopyCFDictionary();
          if (!v35)
          {
            if (FigOSTransactionCreate())
            {
              OUTLINED_FUNCTION_54_12();
              v39 = FigAssetReaderCreateWithAsset(v9, v38, v888, &v878);
              if (v39 || (OUTLINED_FUNCTION_1_114(), OUTLINED_FUNCTION_42_12(), v39 = frs_MakeWrapperForRemakerFamilyInternal(v40, v41, v42, v43, v44, v45, 1), v39))
              {
                v3 = v39;
              }

              else
              {
                OUTLINED_FUNCTION_32_15();
                xpc_dictionary_set_uint64(a3, v46, v47);
                v48 = OUTLINED_FUNCTION_23_26();
                Mutable = CFDictionaryCreateMutable(v48, v49, v50, v51);
                OUTLINED_FUNCTION_52_11(Mutable, v53, v54, v55, v56, v57, v58, v59, v540, v568, v591, v614, v637, v659, v681, v703, v726, v749, v772, v785, v798, v806, v814, v822, v830, xdictb, v844, v850, v856, v860, *token.val, *&token.val[2], *&token.val[4], *&token.val[6], v867, *(&v867 + 1), cf[0], cf[1], v869, v870, *v871.val);
                v60 = OUTLINED_FUNCTION_23_26();
                v63 = CFDictionaryCreateMutable(v60, v61, v62, 0);
                *(*v871.val + 136) = v63;
                OUTLINED_FUNCTION_17_27(v63, v64, v65, v66, v67, v68, v69, v70, v541, v569, v592, v615, v638, v660, v682, v704, v727, v750, v773, v786, v799, v807, v815, v823, v831, xdictf, v845, v851, v857, v861, token.val[0]);
                OUTLINED_FUNCTION_28_17();
                FigAssetReaderGetFigBaseObject();
                if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                {
                  v71 = OUTLINED_FUNCTION_228();
                  v72(v71);
                  OUTLINED_FUNCTION_47_10();
                  if (!v3)
                  {
                    FigAssetReaderGetFigBaseObject();
                    v74 = v73;
                    v75 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v75)
                    {
                      v75(v74, @"AssetReader_ClientSecTask", v33);
                    }

                    v3 = 0;
                  }
                }

                else
                {
                  CFRelease(a3);
                  v3 = 4294954514;
                }
              }

              os_release(a2);
LABEL_148:
              if (v889[0])
              {
                CFRelease(v889[0]);
              }

              v203 = cf[0];
              if (!cf[0])
              {
LABEL_152:
                v176 = v888;
                if (!v888)
                {
LABEL_154:
                  if (!v33)
                  {
                    goto LABEL_198;
                  }

                  v152 = v33;
                  goto LABEL_197;
                }

LABEL_153:
                CFRelease(v176);
                goto LABEL_154;
              }

LABEL_151:
              CFRelease(v203);
              goto LABEL_152;
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_125();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v540, v568, v591);
          }
        }
      }

      v3 = v35;
      goto LABEL_148;
    case 1920103541:
      OUTLINED_FUNCTION_12_35();
      xpc_connection_get_pid(a1);
      v103 = OUTLINED_FUNCTION_15_32();
      v33 = OUTLINED_FUNCTION_16_28(v103, v104, v105, v106, v107, v108, v109, v110, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0, v859, *token.val, *&token.val[4]);
      OUTLINED_FUNCTION_51_12();
      FigXPCMessageCopyCFURL();
      if (!cf[0] || (v111 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForSourceURL", cf[0]), !v111))
      {
        v112 = xpc_dictionary_get_uint64(a2, "SourceFormatReaderToken");
        if (v112)
        {
          v113 = v112;
          v120 = FigFormatReaderServerIsObjectIDLocallyServed(v112) ? FigXPCFormatReaderServerCopyFormatReaderForID(v113, v889) : FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromOtherProcess(v113, v889, v114, v115, v116, v117, v118, v119);
          v3 = v120;
          if (v120)
          {
            goto LABEL_169;
          }
        }

        OUTLINED_FUNCTION_43_11();
        v111 = FigXPCMessageCopyCFDictionary();
        if (!v111)
        {
          if (FigOSTransactionCreate())
          {
            OUTLINED_FUNCTION_54_12();
            v205 = FigAssetReaderCreateWithURLAndFormatReader(v9, v204, v889[0], 0, v888, &v878);
            if (v205 || (OUTLINED_FUNCTION_1_114(), OUTLINED_FUNCTION_42_12(), v205 = frs_MakeWrapperForRemakerFamilyInternal(v206, v207, v208, v209, v210, v211, 1), v205))
            {
              v3 = v205;
            }

            else
            {
              OUTLINED_FUNCTION_32_15();
              xpc_dictionary_set_uint64(a3, v212, v213);
              v214 = OUTLINED_FUNCTION_23_26();
              v218 = CFDictionaryCreateMutable(v214, v215, v216, v217);
              OUTLINED_FUNCTION_52_11(v218, v219, v220, v221, v222, v223, v224, v225, v542, v570, v593, v616, v639, v661, v683, v705, v728, v751, v774, v787, v800, v808, v816, v824, v832, xdictc, v846, v852, v856, v862, *token.val, *&token.val[2], *&token.val[4], *&token.val[6], v867, *(&v867 + 1), cf[0], cf[1], v869, v870, *v871.val);
              v226 = OUTLINED_FUNCTION_23_26();
              v229 = CFDictionaryCreateMutable(v226, v227, v228, 0);
              *(*v871.val + 136) = v229;
              OUTLINED_FUNCTION_17_27(v229, v230, v231, v232, v233, v234, v235, v236, v546, v574, v597, v620, v642, v664, v686, v709, v732, v755, v777, v790, v803, v811, v819, v827, v835, xdictg, v849, v855, v858, v865, token.val[0]);
              OUTLINED_FUNCTION_28_17();
              FigAssetReaderGetFigBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v237 = OUTLINED_FUNCTION_228();
                v238(v237);
                OUTLINED_FUNCTION_47_10();
                if (!v3)
                {
                  FigAssetReaderGetFigBaseObject();
                  v240 = v239;
                  v241 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v241)
                  {
                    v241(v240, @"AssetReader_ClientSecTask", v33);
                  }

                  v3 = 0;
                }
              }

              else
              {
                CFRelease(a3);
                v3 = 4294954514;
              }
            }

            os_release(a2);
LABEL_169:
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            v203 = v889[0];
            if (!v889[0])
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_125();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v542, v570, v593);
        }
      }

      v3 = v111;
      goto LABEL_169;
  }

  OUTLINED_FUNCTION_19_28();
  if (v293)
  {
    v76 = v13;
    OUTLINED_FUNCTION_12_35();
    pid = xpc_connection_get_pid(a1);
    OUTLINED_FUNCTION_15_32();
    OUTLINED_FUNCTION_51_12();
    v78 = FigXPCMessageCopyCFURL();
    if (!v78)
    {
      v78 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForDestURL", cf[0]);
      v79 = MEMORY[0x1E69615A0];
      if (!v78)
      {
        OUTLINED_FUNCTION_18_24();
        if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
        {
          v78 = FigXPCMessageCopyCFDictionary();
          if (v78)
          {
            goto LABEL_215;
          }

          if (v889[0])
          {
            v3 = *v76;
            if (CFDictionaryContainsKey(v889[0], *v76))
            {
              v80 = CFDictionaryGetValue(v889[0], v3);
              v78 = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForTempDirURL", v80);
              if (v78)
              {
                goto LABEL_215;
              }
            }
          }

          OUTLINED_FUNCTION_43_11();
          v78 = FigXPCMessageCopyCFDictionary();
          if (v78)
          {
            goto LABEL_215;
          }

          v81 = FigOSTransactionCreate();
          if (v81)
          {
            v82 = v81;
            v83 = *v9;
            v84 = FigAssetWriterCreateWithURL(*v9, cf[0], 0, v889[0], v888, &v878);
            if (v84 || (v85 = OUTLINED_FUNCTION_1_114(), v84 = frs_MakeWrapperForRemakerFamilyInternal(v85, v82, v86, v87, pid, v88, 1), v84))
            {
              v3 = v84;
            }

            else
            {
              OUTLINED_FUNCTION_32_15();
              xpc_dictionary_set_uint64(a3, v89, v90);
              v91 = CFDictionaryCreateMutable(v83, 0, 0, MEMORY[0x1E695E9E8]);
              OUTLINED_FUNCTION_52_11(v91, v92, v93, v94, v95, v96, v97, v98, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0, v859, *token.val, *&token.val[2], *&token.val[4], *&token.val[6], v867, *(&v867 + 1), cf[0], cf[1], v869, v870, *v871.val);
              token.val[0] = pid;
              CFNumberCreate(v83, kCFNumberSInt32Type, &token);
              OUTLINED_FUNCTION_28_17();
              FigAssetWriterGetFigBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v99 = OUTLINED_FUNCTION_228();
                v100(v99);
                OUTLINED_FUNCTION_47_10();
                if (!v3)
                {
                  OUTLINED_FUNCTION_18_24();
                  SecTaskCreateWithAuditToken(v83, &token);
                  OUTLINED_FUNCTION_28_17();
                  FigAssetWriterGetFigBaseObject();
                  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
                  {
                    v101 = OUTLINED_FUNCTION_228();
                    v102(v101);
                  }

                  os_release(v82);
                  if (v79)
                  {
                    CFRelease(v79);
                  }

                  v3 = 0;
LABEL_83:
                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }

                  if (v889[0])
                  {
                    CFRelease(v889[0]);
                  }

                  v152 = v888;
                  if (!v888)
                  {
                    goto LABEL_198;
                  }

                  goto LABEL_197;
                }
              }

              else
              {
                CFRelease(v79);
                v3 = 4294954514;
              }
            }

            os_release(v82);
            goto LABEL_83;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_125();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

LABEL_215:
    v3 = v78;
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_59_8();
  if (!v293)
  {
    FigSimpleMutexLock();
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    v121 = FigXPCServerLookupAndRetainAssociatedObject();
    v3 = v121;
    if (v121)
    {
      FigSimpleMutexUnlock();
      goto LABEL_200;
    }

    FigSimpleMutexUnlock();
    OUTLINED_FUNCTION_59_8();
    if (v293)
    {
      OpCode = FigRemakerFamilyServer_RemakerStartOutput(0);
    }

    else
    {
      OUTLINED_FUNCTION_33_16();
      if (v293)
      {
        v393 = OUTLINED_FUNCTION_14_34(v267, v268, v269, v270, v271, v272, v273, v274, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
        OpCode = FigRemakerFamilyServer_ReaderStartExtractionForTimeRanges(v393, v394);
      }

      else
      {
        OUTLINED_FUNCTION_33_16();
        if (v293)
        {
          v386 = OUTLINED_FUNCTION_14_34(v275, v276, v277, v278, v279, v280, v281, v282, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
          OpCode = FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack(v386, v387);
        }

        else if (v283 == 2003136356)
        {
          v395 = OUTLINED_FUNCTION_14_34(v275, v276, v277, v278, v279, v280, v281, v282, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
          OpCode = FigRemakerFamilyServer_WriterMarkEndOfDataForTrack(v395, v396);
        }

        else if (v283 == 2003202920)
        {
          OpCode = FigRemakerFamilyServer_WriterFlush(0);
        }

        else
        {
          OUTLINED_FUNCTION_19_28();
          if (v293)
          {
            v391 = OUTLINED_FUNCTION_14_34(v284, v285, v286, v287, v288, v289, v290, v291, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
            OpCode = FigRemakerFamilyServer_WriterEndPass(v391, v392);
          }

          else
          {
            OUTLINED_FUNCTION_19_28();
            if (v293)
            {
              OpCode = FigRemakerFamilyServer_WriterFinishAsync(0);
            }

            else
            {
              OUTLINED_FUNCTION_19_28();
              if (v293)
              {
                OpCode = FigRemakerFamilyServer_WriterFinish(0);
              }

              else
              {
                OUTLINED_FUNCTION_19_28();
                if (v293)
                {
                  v388 = OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                  OpCode = FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel(v388, v389, v390);
                }

                else
                {
                  v3 = 4294966630;
                  if (!(!v293 & v292))
                  {
                    switch(v302)
                    {
                      case 1836212589:
                        OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                        OpCode = FigRemakerFamilyServer_RemakerAddAudioMixdownTrack();
                        goto LABEL_295;
                      case 1836212590:
                      case 1836212591:
                      case 1836212593:
                      case 1836212594:
                      case 1836212595:
                      case 1836212597:
                        goto LABEL_200;
                      case 1836212592:
                        v397 = OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                        FigRemakerFamilyServer_RemakerAddAudioTrackWithPreset(v397, v398, v399, v400, v401, v402, v403, v404, v547, v575, v598, v621, v643, v665, v687, v710, v733, v756, v778, v791);
                        goto LABEL_295;
                      case 1836212596:
                        v408 = OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                        OpCode = FigRemakerFamilyServer_RemakerAddAudioTrack(v408, v409, v410);
                        goto LABEL_295;
                      case 1836212598:
                        v405 = OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                        OpCode = FigRemakerFamilyServer_RemakerAddVideoTrack(v405, v406, v407);
                        goto LABEL_295;
                      default:
                        JUMPOUT(0);
                    }
                  }

                  switch(v302)
                  {
                    case 778268793:
                      v535 = OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_RemakerCopyProperty(v535, v536, v537);
                      break;
                    case 2004251747:
                      v411 = OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_WriterAddVideoTrackWithCompression(v411);
                      break;
                    case 1717859188:
                      v479 = OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_GetDefaultSourceTrack(v479, v480, v481, v482, v483, v484, v485, v486, v556, v584, v607, v630, v652, v674, v696, v719, v742, v765);
                      break;
                    case 1717990512:
                      v527 = OUTLINED_FUNCTION_14_34(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      FigRemakerFamilyServer_RemakerSetFormatWriterTrackProperty(v527, v528, v529, v530, v531, v532, v533, v534, v561, v589, v612, v635, v657, v679, v701, v724, v747, v770, v783, v796);
                      break;
                    case 1717991280:
                      OUTLINED_FUNCTION_14_34(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_RemakerSetFormatWriterProperty();
                      break;
                    case 1719104624:
                      v471 = OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_RemakerCopyFormatWriterTrackProperty(v471, v472, v473, v474, v475, v476, v477, v478, v555, v583, v606, v629, v651, v673, v695, v718, v741, v764, v781, v794);
                      break;
                    case 1835103843:
                      OUTLINED_FUNCTION_37_16(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      OpCode = FigRemakerFamilyServer_RemakerAddVideoCompositionTrack();
                      break;
                    case 1835363699:
                      OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      FigRemakerFamilyServer_RemakerEstimateMaxSegmentDurationForFileSize();
                      break;
                    case 1835427427:
                      OUTLINED_FUNCTION_14_34(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      FigRemakerFamilyServer_RemakerCanPerformFastFrameRateConversion();
                      break;
                    case 1836081507:
                      OpCode = FigRemakerFamilyServer_RemakerPrepareToAddVideoCompositionTrack();
                      break;
                    case 1836086383:
                      v439 = OUTLINED_FUNCTION_3_87(v294, v295, v296, v297, v298, v299, v300, v301, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                      FigRemakerFamilyServer_RemakerAddPassthroughTrackWithOptions(v439, v440, v441, v442, v443, v444, v445, v446, v551, v562, v579, v602, v625, v647, v669, v691, v714, v737, v760);
                      break;
                    default:
                      OUTLINED_FUNCTION_59_8();
                      if (v293)
                      {
                        OUTLINED_FUNCTION_3_87(v303, v304, v305, v306, v307, v308, v309, v310, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                        OpCode = FigRemakerFamilyServer_RemakerAddAudioMixdownTrackWithPreset();
                      }

                      else
                      {
                        switch(v311)
                        {
                          case 1836282994:
                            OUTLINED_FUNCTION_14_34(v303, v304, v305, v306, v307, v308, v309, v310, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                            FigRemakerFamilyServer_RemakerSetTimeRange();
                            break;
                          case 1836346740:
                            v519 = OUTLINED_FUNCTION_3_87(v303, v304, v305, v306, v307, v308, v309, v310, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                            FigRemakerFamilyServer_RemakerAddTemporalMetadataTrackWithOptions(v519, v520, v521, v522, v523, v524, v525, v526, v560, v566, v588, v611, v634, v656, v678, v700, v723, v746, v769);
                            break;
                          case 1918987621:
                            v538 = OUTLINED_FUNCTION_3_87(v303, v304, v305, v306, v307, v308, v309, v310, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                            OpCode = FigRemakerFamilyServer_ReaderEnableAudioMixdownExtraction(v538);
                            break;
                          case 1919115640:
                            v463 = OUTLINED_FUNCTION_3_87(v303, v304, v305, v306, v307, v308, v309, v310, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                            FigRemakerFamilyServer_ReaderEnableCaptionExtractionFromTrack(v463, v464, v465, v466, v467, v468, v469, v470, v554, v564, v582, v605, v628, v650, v672, v694, v717, v740, v763);
                            break;
                          case 1919251298:
                            v506 = OUTLINED_FUNCTION_37_16(v303, v304, v305, v306, v307, v308, v309, v310, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                            OpCode = FigRemakerFamilyServer_ReaderExtractAndRetainNextSampleBuffer(v506, v507, v508, v509);
                            break;
                          case 1919251553:
                            OUTLINED_FUNCTION_3_87(v303, v304, v305, v306, v307, v308, v309, v310, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                            OpCode = FigRemakerFamilyServer_ReaderEnableDecodedAudioExtractionFromTrackWithAudioOptions();
                            break;
                          case 1920099184:
                            v412 = OUTLINED_FUNCTION_3_87(v303, v304, v305, v306, v307, v308, v309, v310, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                            FigRemakerFamilyServer_RemakerCopyTrackProperty(v412, v413, v414, v415, v416, v417, v418, v419, v548, v576, v599, v622, v644, v666, v688, v711, v734, v757);
                            break;
                          default:
                            OUTLINED_FUNCTION_33_16();
                            if (v293)
                            {
                              OUTLINED_FUNCTION_14_34(v312, v313, v314, v315, v316, v317, v318, v319, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                              FigRemakerFamilyServer_ReaderStartExtractionForTimeRange();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_33_16();
                              if (v293)
                              {
                                OUTLINED_FUNCTION_14_34(v320, v321, v322, v323, v324, v325, v326, v327, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                FigRemakerFamilyServer_ReaderStartExtractionForTime();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_33_16();
                                if (v293)
                                {
                                  v447 = OUTLINED_FUNCTION_3_87(v328, v329, v330, v331, v332, v333, v334, v335, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                  FigRemakerFamilyServer_ReaderEnableOriginalSampleReferenceExtractionFromTrack(v447, v448, v449, v450, v451, v452, v453, v454, v552, v563, v580, v603, v626, v648, v670, v692, v715, v738, v761);
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_33_16();
                                  if (v293)
                                  {
                                    v498 = OUTLINED_FUNCTION_3_87(v336, v337, v338, v339, v340, v341, v342, v343, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                    FigRemakerFamilyServer_ReaderEnableOriginalSampleExtractionFromTrack(v498, v499, v500, v501, v502, v503, v504, v505, v558, v565, v586, v609, v632, v654, v676, v698, v721, v744, v767);
                                  }

                                  else
                                  {
                                    switch(v344)
                                    {
                                      case 1920361317:
                                        OUTLINED_FUNCTION_37_16(v336, v337, v338, v339, v340, v341, v342, v343, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                        OpCode = FigRemakerFamilyServer_ReaderEnableVideoCompositionExtraction();
                                        break;
                                      case 1920361844:
                                        v510 = OUTLINED_FUNCTION_3_87(v336, v337, v338, v339, v340, v341, v342, v343, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                        OpCode = FigRemakerFamilyServer_ReaderEnableDecodedVideoExtractionFromTrack(v510);
                                        break;
                                      case 2002873972:
                                        v431 = OUTLINED_FUNCTION_3_87(v336, v337, v338, v339, v340, v341, v342, v343, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                        FigRemakerFamilyServer_WriterAddNativeTrack(v431, v432, v433, v434, v435, v436, v437, v438, v550, v578, v601, v624, v646, v668, v690, v713, v736, v759);
                                        break;
                                      case 2002875491:
                                        v428 = OUTLINED_FUNCTION_3_87(v336, v337, v338, v339, v340, v341, v342, v343, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                        OpCode = FigRemakerFamilyServer_WriterAddAudioTrackWithCompression(v428);
                                        break;
                                      case 2002875504:
                                        v420 = OUTLINED_FUNCTION_3_87(v336, v337, v338, v339, v340, v341, v342, v343, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                        OpCode = FigRemakerFamilyServer_WriterAddAudioTrackWithPresetCompression(v420, v421, v422, v423, v424, v425, v426, v427, v549, v577, v600, v623, v645, v667, v689, v712, v735, v758, v779, v792);
                                        break;
                                      case 2003001712:
                                        v511 = OUTLINED_FUNCTION_3_87(v336, v337, v338, v339, v340, v341, v342, v343, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                        OpCode = FigRemakerFamilyServer_WriterAddCaptionTrack(v511, v512, v513, v514, v515, v516, v517, v518, v559, v587, v610, v633, v655, v677, v699, v722, v745, v768);
                                        break;
                                      case 2003136610:
                                        v496 = OUTLINED_FUNCTION_266();
                                        FigRemakerFamilyServer_EstablishPixelBufferRecipient(v496, v497, a3);
                                        break;
                                      default:
                                        OUTLINED_FUNCTION_19_28();
                                        if (v293)
                                        {
                                          OpCode = FigRemakerFamilyServer_WriterAddPixelBuffer(a1, 0, a2);
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_19_28();
                                          if (v293)
                                          {
                                            OpCode = FigRemakerFamilyServer_WriterAddSampleBuffer();
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_19_28();
                                            if (v293)
                                            {
                                              v487 = OUTLINED_FUNCTION_14_34(v345, v346, v347, v348, v349, v350, v351, v352, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                              OpCode = FigRemakerFamilyServer_WriterBeginPass(v487);
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_19_28();
                                              if (v293)
                                              {
                                                v429 = OUTLINED_FUNCTION_14_34(v353, v354, v355, v356, v357, v358, v359, v360, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                                FigRemakerFamilyServer_WriterBeginSession(v429, v430);
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_19_28();
                                                if (v293)
                                                {
                                                  v488 = OUTLINED_FUNCTION_3_87(v361, v362, v363, v364, v365, v366, v367, v368, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                                  FigRemakerFamilyServer_WriterCopyTrackProperty(v488, v489, v490, v491, v492, v493, v494, v495, v557, v585, v608, v631, v653, v675, v697, v720, v743, v766, v782, v795);
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_19_28();
                                                  if (v293)
                                                  {
                                                    OUTLINED_FUNCTION_14_34(v369, v370, v371, v372, v373, v374, v375, v376, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                                    FigRemakerFamilyServer_WriterEndSession();
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_19_28();
                                                    if (v293)
                                                    {
                                                      FigRemakerFamilyServer_WriterAddTaggedPixelBufferGroup();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_19_28();
                                                      if (v293)
                                                      {
                                                        v455 = OUTLINED_FUNCTION_14_34(v377, v378, v379, v380, v381, v382, v383, v384, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                                        FigRemakerFamilyServer_WriterSetTrackProperty(v455, v456, v457, v458, v459, v460, v461, v462, v553, v581, v604, v627, v649, v671, v693, v716, v739, v762, v780, v793);
                                                      }

                                                      else
                                                      {
                                                        if (v385 != 779314548)
                                                        {
                                                          goto LABEL_200;
                                                        }

                                                        OUTLINED_FUNCTION_14_34(v377, v378, v379, v380, v381, v382, v383, v384, v539, v567, v590, v613, v636, v658, v680, v702, v725, v748, v771, v784, v797, v804, v812, v820, v828, xdict, v4, 0, 0);
                                                        OpCode = FigRemakerFamilyServer_RemakerSetProperty();
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }

                                        break;
                                    }
                                  }
                                }
                              }
                            }

                            break;
                        }
                      }

                      break;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_295;
  }

  xdicta = a3;
  v888 = 0;
  v889[0] = 0;
  v886 = 0;
  v887 = 0;
  v884 = 0;
  v885 = 0;
  v882 = 0;
  v883 = 0;
  v881 = 0;
  v880 = 0;
  v14 = *MEMORY[0x1E6960C70];
  v879 = *(MEMORY[0x1E6960C70] + 16);
  v15 = *(MEMORY[0x1E6960C98] + 16);
  *v876.val = *MEMORY[0x1E6960C98];
  *&v876.val[4] = v15;
  v877 = *(MEMORY[0x1E6960C98] + 32);
  v878 = v14;
  v874 = 0;
  v875 = 0;
  v872 = 0;
  theDict = 0;
  v16 = xpc_connection_get_pid(a1);
  memset(&v871, 0, sizeof(v871));
  xpc_connection_get_audit_token();
  v17 = *v9;
  memset(&token, 0, sizeof(token));
  v829 = SecTaskCreateWithAuditToken(v17, &token);
  FigXPCMessageCopyCFURL();
  if (v887)
  {
    CMTime = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForSourceURL", v887);
    if (CMTime)
    {
      goto LABEL_221;
    }
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  int64 = xpc_dictionary_get_int64(a2, "Width");
  v813 = xpc_dictionary_get_int64(a2, "Height");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  v805 = xpc_dictionary_get_uint64(a2, "VideoCodecType");
  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageGetCMTimeRange();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFURL();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForDestURL", v875);
  if (CMTime)
  {
    goto LABEL_221;
  }

  token = v871;
  if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() != 1)
  {
    goto LABEL_220;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  CMTime = FigXPCMessageCopyCFDictionary();
  if (CMTime)
  {
    goto LABEL_221;
  }

  if (!theDict)
  {
    v22 = 1;
    v20 = 1;
    goto LABEL_109;
  }

  v19 = *v10;
  v20 = v19 != CFDictionaryGetValue(theDict, @"Remaker_NoInterruptions");
  v21 = *v12;
  v22 = v21 != CFDictionaryGetValue(theDict, @"Remaker_UseRemakerQueue");
  v3 = @"Remaker_TemporaryDirectoryURL";
  if (!CFDictionaryContainsKey(theDict, @"Remaker_TemporaryDirectoryURL"))
  {
LABEL_109:
    v24 = MEMORY[0x1E69615A0];
    goto LABEL_110;
  }

  v23 = CFDictionaryGetValue(theDict, @"Remaker_TemporaryDirectoryURL");
  CMTime = frs_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForTempDirURL", v23);
  v24 = MEMORY[0x1E69615A0];
  if (CMTime)
  {
    goto LABEL_221;
  }

LABEL_110:
  v177 = FigOSTransactionCreate();
  if (v177)
  {
    v178 = v177;
    v179 = FigRemakerCreateWithURLs;
    v867 = v877;
    *cf = v878;
    token = v876;
    if (v22)
    {
      v179 = FigRemakerCreateQueuedWithURLs;
    }

    v869 = v879;
    v731 = v874;
    v754 = theDict;
    v708 = v875;
    v596 = v881;
    v619 = v880;
    v545 = v883;
    v573 = v882;
    v180 = v179(v17, v887, v886, v885, int64, v813, v884, v805);
    if (v180 || (token = v871, v181 = OUTLINED_FUNCTION_266(), v180 = frs_MakeWrapperForRemakerFamilyInternal(v181, v182, v183, v184, v16, v185, v20), v180))
    {
      v3 = v180;
    }

    else
    {
      xpc_dictionary_set_uint64(xdicta, *v24, *(v889[0] + 1));
      v194 = OUTLINED_FUNCTION_17_27(v186, v187, v188, v189, v190, v191, v192, v193, v545, v573, v596, v619, cf, &token, 0, v708, v731, v754, &v872 + 4, &v872, &v888, v805, v813, int64, v829, xdicta, v4, 0, 0, v859, token.val[0]);
      FigRemakerGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v195 = OUTLINED_FUNCTION_228();
        v196(v195);
        OUTLINED_FUNCTION_47_10();
        if (!v3)
        {
          FigRemakerGetFigBaseObject();
          v198 = v197;
          v199 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v199)
          {
            v200 = v198;
            v201 = v829;
            v199(v200, @"Remaker_ClientSecTask", v829);
            v3 = 0;
LABEL_121:
            os_release(v178);
            goto LABEL_122;
          }

          v3 = 0;
        }
      }

      else
      {
        CFRelease(v194);
        v3 = 4294954514;
      }
    }

    v201 = v829;
    goto LABEL_121;
  }

LABEL_220:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_125();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_221:
  v3 = CMTime;
  v201 = v829;
LABEL_122:
  if (v887)
  {
    CFRelease(v887);
  }

  if (v886)
  {
    CFRelease(v886);
  }

  if (v885)
  {
    CFRelease(v885);
  }

  if (v884)
  {
    CFRelease(v884);
  }

  if (v883)
  {
    CFRelease(v883);
  }

  if (v881)
  {
    CFRelease(v881);
  }

  if (v880)
  {
    CFRelease(v880);
  }

  if (v875)
  {
    CFRelease(v875);
  }

  if (v874)
  {
    CFRelease(v874);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v201)
  {
    CFRelease(v201);
  }

  v202 = v888;
  if (v888)
  {
LABEL_199:
    CFRelease(v202);
  }

LABEL_200:
  if (v856)
  {
    CFRelease(v856);
  }

  return v3;
}