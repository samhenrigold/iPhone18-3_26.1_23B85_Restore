uint64_t ffw_ttml_WriteFigCaption(const __CFArray *a1, CMTime *a2, uint64_t a3)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E6960C98];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    v27 = 0u;
    v28 = 0u;
    *values = 0u;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v12)
    {
      v12(values, ValueAtIndex);
    }

    else
    {
      v13 = v10[1];
      *values = *v10;
      v27 = v13;
      v28 = v10[2];
    }

    v22 = *values;
    *&v23 = v27;
    time2 = *a2;
    if (!CMTimeCompare(&v22, &time2))
    {
      if (v29)
      {
        CFRelease(v29);
        v29 = 0;
      }

      FigCaptionGetCMBaseObject();
      v15 = v14;
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v16)
      {
        v19 = 4294954514;
        LODWORD(v22) = -12782;
        goto LABEL_16;
      }

      v17 = v16(v15, @"CaptionData", v9, &v29);
      if (v17)
      {
        break;
      }

      v18 = *DerivedStorage;
      v22 = *values;
      v23 = v27;
      v24 = v28;
      v17 = FigTTMLCaptionWriterAddCaption(v18, v29, &v22);
      if (v17)
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      v19 = 0;
      goto LABEL_23;
    }
  }

  v19 = v17;
  LODWORD(v22) = v17;
  if (v17 == -16577)
  {
    LODWORD(v22) = -17540;
    v19 = 4294950719;
  }

LABEL_16:
  values[0] = CFNumberCreate(v9, kCFNumberSInt32Type, &v22);
  if (values[0])
  {
    v20 = CFDictionaryCreate(v9, kFigFormatWriterNotificationParameter_OSStatus, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v20 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v20)
  {
    CFRelease(v20);
  }

  if (values[0])
  {
    CFRelease(values[0]);
  }

LABEL_23:
  if (v29)
  {
    CFRelease(v29);
  }

  return v19;
}

uint64_t ffw_ttml_Invalidate()
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLCaptionWriterInvalidate(*DerivedStorage);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[1]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[2]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[3]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[4]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[5]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[6]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[7]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[8]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[9]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[10]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[11]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[12]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[13]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[14]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[15]);
  FigTTMLDocumentWriterInvalidate(DerivedStorage[16]);
  FigTTMLSerializerInvalidate(DerivedStorage[17]);
  FigTTMLSerializerInvalidate(DerivedStorage[18]);
  return 0;
}

void ffw_ttml_Finalize()
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 56);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 64);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(DerivedStorage + 72);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 80);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 88);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 96);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 104);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 112);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 120);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 128);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 136);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 144);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 152);
  if (v19)
  {

    CFRelease(v19);
  }
}

uint64_t ffw_ttml_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954666;
    }

    v7 = 570;
  }

  else
  {
    v7 = 569;
  }

  v9 = v4;
  v10 = v5;
  ffw_ttml_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t ffw_ttml_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294954666;
  }

  v6 = v2;
  v7 = v3;
  ffw_ttml_SetProperty_cold_1(&v5);
  return v5;
}

uint64_t ffw_ttml_AddTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1952807028)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (*(DerivedStorage + 160))
      {
        ffw_ttml_AddTrack_cold_2(&v10);
        return v10;
      }

      else
      {
        result = 0;
        *(v7 + 160) = 1;
        *a4 = 1;
      }
    }

    else
    {
      ffw_ttml_AddTrack_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    ffw_ttml_AddTrack_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t ffw_ttml_CopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v10 = DerivedStorage;
      if (*(DerivedStorage + 160) == a2)
      {
        if (CFEqual(@"LanguageTag", a3) || CFEqual(@"ExtendedLanguageTag", a3))
        {
          v11 = *(v10 + 16);

          return FigTTMLDocumentWriterCopyProperty(v11, @"languageIdentifier", a4, a5);
        }

        else
        {
          return 4294954512;
        }
      }

      else
      {
        ffw_ttml_CopyTrackProperty_cold_1(&v13);
        return v13;
      }
    }

    else
    {
      ffw_ttml_CopyTrackProperty_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    ffw_ttml_CopyTrackProperty_cold_3(&v15);
    return v15;
  }
}

uint64_t ffw_ttml_SetTrackProperty(uint64_t a1, int a2, const void *a3, const void *a4)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 160) != a2)
  {
    ffw_ttml_SetTrackProperty_cold_1(&v14);
    return v14;
  }

  if (!a3)
  {
    ffw_ttml_SetTrackProperty_cold_5(&v14);
    return v14;
  }

  if (!a4)
  {
    ffw_ttml_SetTrackProperty_cold_4(&v14);
    return v14;
  }

  v8 = DerivedStorage;
  if (!CFEqual(@"LanguageTag", a3) && !CFEqual(@"ExtendedLanguageTag", a3))
  {
    if (CFEqual(@"CaptionTimeCodeFrameDuration", a3))
    {
      v12 = CFGetTypeID(a4);
      if (v12 == CFDictionaryGetTypeID())
      {
        v9 = *(v8 + 32);
        v10 = @"timeCodeFrameDuration";
        goto LABEL_7;
      }

      ffw_ttml_SetTrackProperty_cold_2(&v14);
    }

    else
    {
      if (!CFEqual(@"UseDropFrameTimeCode", a3))
      {
        return 4294954512;
      }

      v13 = CFGetTypeID(a4);
      if (v13 == CFBooleanGetTypeID())
      {
        v9 = *(v8 + 32);
        v10 = @"useDropFrame";
        goto LABEL_7;
      }

      ffw_ttml_SetTrackProperty_cold_3(&v14);
    }

    return v14;
  }

  v9 = *(v8 + 16);
  v10 = @"languageIdentifier";
LABEL_7:

  return FigTTMLDocumentWriterSetProperty(v9, v10, a4);
}

uint64_t ffw_ttml_AddSampleBufferToTrack(uint64_t a1, int a2, opaqueCMSampleBuffer *a3)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 160) != a2)
  {
    ffw_ttml_AddSampleBufferToTrack_cold_1(&v9);
    return v9;
  }

  if (!a3)
  {
    ffw_ttml_AddSampleBufferToTrack_cold_4(&v9);
    return v9;
  }

  v6 = DerivedStorage;
  if (!FigSampleBufferGetCaptionGroup())
  {
    ffw_ttml_AddSampleBufferToTrack_cold_3(&v9);
    return v9;
  }

  if (*(v6 + 164))
  {
    ffw_ttml_AddSampleBufferToTrack_cold_2(&v9);
    return v9;
  }

  v7 = *(v6 + 152);

  return FigCaptionTimelineGeneratorAddSampleBuffer(v7, a3);
}

uint64_t FigMutableCompositionCreateRemote(uint64_t a1, uint64_t a2, void *a3)
{
  xdict = 0;
  cf = 0;
  v10 = 0;
  if (remoteXPCMutableCompositionClient_EnsureClientEstablished_gMutableCompositionRemoteClientSetupOnce != -1)
  {
    FigMutableCompositionCreateRemote_cold_1();
  }

  v5 = remoteXPCMutableCompositionClient_EnsureClientEstablished_err;
  if (remoteXPCMutableCompositionClient_EnsureClientEstablished_err)
  {
    goto LABEL_16;
  }

  Object = remoteXPCMutableComposition_CreateObject(a1, &v10);
  if (Object || (Object = FigXPCCreateBasicMessage(), Object) || (Object = FigXPCMessageSetCFDictionary(), Object) || (Object = FigXPCRemoteClientSendSyncMessageCreatingReply(), Object))
  {
    v5 = Object;
LABEL_16:
    v8 = v10;
    goto LABEL_17;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v8 = v10;
  v5 = remoteXPCMutableComposition_CompleteObjectSetup(v10, uint64);
  if (!v5)
  {
    *a3 = v8;
    goto LABEL_10;
  }

LABEL_17:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (xdict)
  {
    CFRelease(xdict);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteXPCMutableComposition_CreateObject(uint64_t a1, CFTypeRef *a2)
{
  FigMutableCompositionGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    *a2 = 0;
  }

  return v3;
}

uint64_t remoteXPCMutableComposition_CompleteObjectSetup(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[2] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);

  return FigXPCRemoteClientAssociateObject();
}

uint64_t remoteXPCMutableCompositionClient_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 9) = 1;
  return result;
}

__CFString *remoteXPCMutableComposition_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 9))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigMutableCompositionRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

void remoteXPCMutableComposition_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    emitter = fig_log_get_emitter();
    v6 = v2;
    v7 = 4294954511;
    v8 = 133;
  }

  else
  {
    if (!*(DerivedStorage + 9))
    {
      *a2 = *DerivedStorage;
      return;
    }

    emitter = fig_log_get_emitter();
    v6 = v2;
    v7 = 4294951142;
    v8 = 139;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v7, "<< FigMutableCompositionRemoteXPC >>", v8, v6);
}

uint64_t remoteXPCMutableComposition_InsertSegmentArrayIntoTrack(uint64_t a1, int a2, CFArrayRef theArray, uint64_t a4, const __CFArray *a5, const __CFArray *a6, __int128 *a7)
{
  v36 = 0;
  xdict = 0;
  value = 0;
  if (!theArray)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_9(&v33);
LABEL_44:
    v27 = v33;
    goto LABEL_35;
  }

  v8 = a4;
  if (!a4)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_8(&v33);
    goto LABEL_44;
  }

  if (!a5)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_7(&v33);
    goto LABEL_44;
  }

  if (!a6)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_6(&v33);
    goto LABEL_44;
  }

  if (*(a7 + 2))
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_1(&v33);
    goto LABEL_44;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(theArray) != Count)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_2(&v33);
    goto LABEL_48;
  }

  if (CFArrayGetCount(a5) != Count)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_3(&v33);
    goto LABEL_48;
  }

  if (CFArrayGetCount(a6) != Count)
  {
    remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_4(&v33);
LABEL_48:
    v27 = v33;
    if (Mutable)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  remoteXPCMutableComposition_GetObjectID(a1, &v36);
  if (v16)
  {
    goto LABEL_29;
  }

  v31 = a7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = FigXPCCreateBasicMessage();
  if (v16)
  {
    goto LABEL_29;
  }

  v30 = v8;
  if (Count < 1)
  {
LABEL_24:
    xpc_dictionary_set_int64(xdict, "DestTrackID", a2);
    v33 = *v31;
    v34 = *(v31 + 2);
    FigXPCMessageSetCMTime();
    appended = FigXPCMessageSetCFArray();
    if (appended)
    {
LABEL_32:
      v27 = appended;
      goto LABEL_33;
    }

    v16 = FigXPCMessageSetCFArray();
    if (!v16)
    {
      v16 = FigXPCMessageSetCFArray();
      if (!v16)
      {
        v16 = FigXPCMessageSetCFArray();
        if (!v16)
        {
          v16 = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

LABEL_29:
    v27 = v16;
    if (Mutable)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v18 = 0;
  v19 = *MEMORY[0x1E695E738];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v18);
    v21 = CFGetTypeID(ValueAtIndex);
    TypeID = CFNullGetTypeID();
    v23 = v19;
    if (v21 == TypeID)
    {
      goto LABEL_18;
    }

    v24 = CFURLGetTypeID();
    if (v24 == CFGetTypeID(ValueAtIndex))
    {
      FigSandboxRegisterURLWithProcessAndCopyRegistration();
      if (value)
      {
        CFSetAddValue(*(DerivedStorage + 16), value);
      }

      v23 = ValueAtIndex;
LABEL_18:
      CFArrayAppendValue(Mutable, v23);
      goto LABEL_23;
    }

    v25 = FigMutableCompositionGetTypeID();
    if (v25 != CFGetTypeID(ValueAtIndex))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v7, v30);
      goto LABEL_32;
    }

    *&v33 = 0;
    if (CMBaseObjectGetVTable() != &kFigMutableCompositionRemoteXPC_MutableCompositionVTable)
    {
      break;
    }

    remoteXPCMutableComposition_GetObjectID(ValueAtIndex, &v33);
    if (appended)
    {
      goto LABEL_32;
    }

    appended = FigCFArrayAppendInt64();
    if (appended)
    {
      goto LABEL_32;
    }

LABEL_23:
    if (Count == ++v18)
    {
      goto LABEL_24;
    }
  }

  remoteXPCMutableComposition_InsertSegmentArrayIntoTrack_cold_5(&v38);
  v27 = v38;
LABEL_33:
  if (Mutable)
  {
LABEL_34:
    CFRelease(Mutable);
  }

LABEL_35:
  FigXPCRelease();
  if (value)
  {
    CFRelease(value);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v27;
}

uint64_t OUTLINED_FUNCTION_2_142(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_3_118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_7_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_18_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigSandboxRegisterURLWithProcessAndCopyRegistration();
}

void OUTLINED_FUNCTION_24_27(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  remoteXPCMutableComposition_GetObjectID(a1, va);
}

uint64_t IFFItemHeaderMakerCreateWithIFFItemInformation(const void *a1, const void *a2, void *a3)
{
  if (a2)
  {
    if (a3)
    {
      v6 = MEMORY[0x19A8CC720](a1, 24, 0x106004078230D8ELL, 0);
      if (v6)
      {
        v7 = v6;
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
        if (a1)
        {
          v8 = CFRetain(a1);
        }

        else
        {
          v8 = 0;
        }

        *v7 = v8;
        v9 = CFRetain(a2);
        result = 0;
        v7[1] = v9;
        *a3 = v7;
      }

      else
      {
        IFFItemHeaderMakerCreateWithIFFItemInformation_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      IFFItemHeaderMakerCreateWithIFFItemInformation_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    IFFItemHeaderMakerCreateWithIFFItemInformation_cold_3(&v13);
    return v13;
  }

  return result;
}

uint64_t IFFItemHeaderMakerSetByteCountToAddToItemLocationExtentOffsets(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 16) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    IFFItemHeaderMakerSetByteCountToAddToItemLocationExtentOffsets_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer(uint64_t a1, const __CFAllocator *a2, uint64_t a3, CMBlockBufferRef *a4)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  blockBufferOut = 0;
  if (!a1)
  {
    IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer_cold_3(&v14);
    return v14;
  }

  if (!FigCFEqual())
  {
    IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer_cold_2(&v14);
    return v14;
  }

  if (!a4)
  {
    IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer_cold_1(&v14);
    return v14;
  }

  appended = CMBlockBufferCreateEmpty(a2, 0x20u, 0, &blockBufferOut);
  v8 = blockBufferOut;
  if (!appended)
  {
    v9 = FigAtomWriterInitWithBlockBuffer();
    if (v9)
    {
      appended = v9;
      v8 = blockBufferOut;
    }

    else
    {
      appended = appendGlobalMetadataAtom(a1, v12);
      v8 = blockBufferOut;
      if (!appended)
      {
        *a4 = blockBufferOut;
        return appended;
      }
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return appended;
}

uint64_t appendGlobalMetadataAtom(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v230 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v201 = 0;
  PictureCount = IFFInformationGetPictureCount(v3, 0, &v201);
  if (PictureCount || (PictureCount = FigAtomWriterBeginAtom(), PictureCount))
  {
    appended = PictureCount;
    goto LABEL_551;
  }

  appended = FigAtomWriterAppendData();
  if (!appended && v201 >= 1)
  {
    memset(v216, 0, 24);
    memset(v215, 0, sizeof(v215));
    v6 = *(v2 + 8);
    v226 = 0uLL;
    WORD4(v227) = 0;
    *&v227 = 0;
    LODWORD(v222) = 0;
    ItemHandler = FigAtomWriterInitWithParent();
    if (ItemHandler)
    {
      goto LABEL_562;
    }

    ItemHandler = FigAtomWriterBeginAtom();
    if (ItemHandler)
    {
      goto LABEL_562;
    }

    ItemHandler = IFFInformationGetItemHandler(v6, &v222);
    if (ItemHandler)
    {
      goto LABEL_562;
    }

    LODWORD(v226) = 0;
    DWORD2(v226) = bswap32(v222);
    appended = FigAtomWriterAppendData();
    FigAtomWriterEndAtom();
    if (appended)
    {
      goto LABEL_551;
    }

    memset(v216, 0, 24);
    memset(v215, 0, sizeof(v215));
    v229 = 0;
    v227 = 0u;
    v228 = 0u;
    v226 = 0u;
    v225 = 0;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v8 = FigAtomWriterInitWithParent();
    if (!v8)
    {
      v8 = FigAtomWriterBeginAtom();
      if (!v8)
      {
        v211[0] = 0x100000000000000;
        v8 = FigAtomWriterInitWithParent();
        if (!v8)
        {
          v8 = FigAtomWriterBeginAtom();
          if (!v8)
          {
            v8 = FigAtomWriterAppendData();
            if (!v8)
            {
              *v214 = 0x1000000;
              v8 = FigAtomWriterInitWithParent();
              if (!v8)
              {
                v8 = FigAtomWriterBeginAtom();
                if (!v8)
                {
                  v8 = FigAtomWriterAppendData();
                }
              }
            }
          }
        }
      }
    }

    appended = v8;
    FigAtomWriterEndAtom();
    FigAtomWriterEndAtom();
    FigAtomWriterEndAtom();
    if (appended)
    {
      goto LABEL_551;
    }

    memset(v216, 0, 24);
    memset(v215, 0, sizeof(v215));
    v9 = *(v2 + 8);
    LOBYTE(v211[0]) = 0;
    LODWORD(v222) = 0;
    IFFInformationGetPrimaryPicture(v9, 0, &v222, v211);
    if (ItemHandler)
    {
      goto LABEL_562;
    }

    if (LOBYTE(v211[0]))
    {
      ItemHandler = FigAtomWriterInitWithParent();
      if (ItemHandler)
      {
        goto LABEL_562;
      }

      ItemHandler = FigAtomWriterBeginAtom();
      if (ItemHandler)
      {
        goto LABEL_562;
      }

      if (WORD1(v222))
      {
        LODWORD(v226) = 1;
        DWORD1(v226) = bswap32(v222);
      }

      else
      {
        LODWORD(v226) = 0;
        WORD2(v226) = bswap32(v222) >> 16;
      }

      appended = FigAtomWriterAppendData();
      FigAtomWriterEndAtom();
      if (appended)
      {
        goto LABEL_551;
      }
    }

    else
    {
      FigAtomWriterEndAtom();
    }

    memset(v216, 0, 24);
    memset(v215, 0, sizeof(v215));
    v229 = 0;
    v227 = 0u;
    v228 = 0u;
    v226 = 0u;
    v10 = *(v2 + 8);
    ItemAtIndex = FigAtomWriterInitWithParent();
    if (ItemAtIndex)
    {
      goto LABEL_37;
    }

    ItemAtIndex = FigAtomWriterBeginAtom();
    if (ItemAtIndex)
    {
      goto LABEL_37;
    }

    ItemCount = IFFInformationGetItemCount(v10);
    if (ItemCount < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      for (i = 0; i != ItemCount; ++i)
      {
        *&v222 = 0;
        LODWORD(v211[0]) = 0;
        v214[0] = 0;
        ItemAtIndex = FigAtomWriterInitWithParent();
        if (ItemAtIndex)
        {
          goto LABEL_37;
        }

        ItemAtIndex = IFFInformationGetItemAtIndex(v10, i, &v222, v211, v214);
        if (ItemAtIndex)
        {
          goto LABEL_37;
        }

        if (v214[0])
        {
          ++v13;
        }
      }

      if (HIWORD(v13))
      {
        LODWORD(v222) = 1;
        DWORD1(v222) = bswap32(v13);
        ItemAtIndex = FigAtomWriterAppendData();
        if (ItemAtIndex)
        {
LABEL_37:
          appended = ItemAtIndex;
          goto LABEL_68;
        }

        goto LABEL_41;
      }
    }

    LODWORD(v222) = 0;
    WORD2(v222) = bswap32(v13) >> 16;
    v15 = FigAtomWriterAppendData();
    appended = v15;
    if (ItemCount >= 1 && !v15)
    {
LABEL_41:
      v16 = 0;
      while (1)
      {
        *v214 = 0;
        LODWORD(v218) = 0;
        LOBYTE(v207) = 0;
        LOWORD(v208) = 0;
        LODWORD(v217) = 0;
        __s = 0;
        ItemProtectionIndex = FigAtomWriterInitWithParent();
        if (ItemProtectionIndex || (ItemProtectionIndex = IFFInformationGetItemAtIndex(v10, v16, v214, &v218, &v207), ItemProtectionIndex))
        {
LABEL_369:
          appended = ItemProtectionIndex;
          goto LABEL_68;
        }

        if (v207)
        {
          break;
        }

LABEL_66:
        if (ItemCount == ++v16)
        {
          appended = 0;
          goto LABEL_68;
        }
      }

      ItemProtectionIndex = FigAtomWriterBeginAtom();
      if (ItemProtectionIndex)
      {
        goto LABEL_369;
      }

      ItemProtectionIndex = IFFInformationGetItemProtectionIndex(*v214, &v208);
      if (ItemProtectionIndex)
      {
        goto LABEL_369;
      }

      ItemProtectionIndex = IFFInformationGetItemType(*v214, &v217);
      if (ItemProtectionIndex)
      {
        goto LABEL_369;
      }

      ItemProtectionIndex = IFFInformationGetItemName(*v214, &__s);
      if (ItemProtectionIndex)
      {
        goto LABEL_369;
      }

      v18 = strlen(__s);
      v19 = IFFInformationIsItemDisplayable(*v214) == 0;
      *(v211 + 5) = 0;
      v211[0] = 0;
      *(&v222 + 7) = 0;
      *&v222 = 0;
      v20 = bswap32(v218);
      if (v218 >> 16)
      {
        *&v222 = __PAIR64__(v20, bswap32(v19 | 0x3000000));
        WORD4(v222) = bswap32(v208) >> 16;
        *(&v222 + 10) = bswap32(v217);
      }

      else
      {
        LODWORD(v211[0]) = bswap32(v19 | 0x2000000);
        WORD2(v211[0]) = HIWORD(v20);
        HIWORD(v211[0]) = bswap32(v208) >> 16;
        LODWORD(v211[1]) = bswap32(v217);
        BYTE4(v211[1]) = 0;
      }

      ItemProtectionIndex = FigAtomWriterAppendData();
      if (ItemProtectionIndex)
      {
        goto LABEL_369;
      }

      if (v18)
      {
        ItemProtectionIndex = FigAtomWriterAppendData();
        if (ItemProtectionIndex)
        {
          goto LABEL_369;
        }
      }

      if (v217 == 1970432288)
      {
        v220 = 0;
        ItemProtectionIndex = IFFInformationGetItemURIType(*v214, &v220);
        if (ItemProtectionIndex)
        {
          goto LABEL_369;
        }

        strlen(v220);
      }

      else
      {
        if (v217 != 1835625829)
        {
          goto LABEL_65;
        }

        v219 = 0;
        v220 = 0;
        ItemProtectionIndex = IFFInformationGetItemMIMETypeAndEncoding(*v214, &v220, &v219);
        if (ItemProtectionIndex)
        {
          goto LABEL_369;
        }

        strlen(v220);
        ItemProtectionIndex = FigAtomWriterAppendData();
        if (ItemProtectionIndex)
        {
          goto LABEL_369;
        }

        if (!v219 || strlen(v219) + 1 < 2)
        {
          goto LABEL_65;
        }
      }

      ItemProtectionIndex = FigAtomWriterAppendData();
      if (ItemProtectionIndex)
      {
        goto LABEL_369;
      }

LABEL_65:
      FigAtomWriterEndAtom();
      goto LABEL_66;
    }

LABEL_68:
    FigAtomWriterEndAtom();
    FigAtomWriterEndAtom();
    if (appended)
    {
      goto LABEL_551;
    }

    memset(v216, 0, 24);
    memset(v215, 0, sizeof(v215));
    v229 = 0;
    v227 = 0u;
    v228 = 0u;
    v226 = 0u;
    v21 = *(v2 + 8);
    LODWORD(v218) = 0;
    v200 = v2;
    if (!IFFInformationHasItemReferences(v21))
    {
      v27 = 0;
      v26 = 0;
      appended = 0;
      goto LABEL_113;
    }

    v22 = FigAtomWriterInitWithParent();
    if (v22 || (v22 = FigAtomWriterBeginAtom(), v22) || (LODWORD(v218) = 0, v22 = FigAtomWriterAppendData(), v22))
    {
      appended = v22;
      v27 = 0;
      v26 = 0;
      goto LABEL_113;
    }

    v23 = IFFInformationGetItemCount(v21);
    HasLargeItemReferenceIDs = IFFInformationHasLargeItemReferenceIDs(v21);
    if (v23 < 1)
    {
      v27 = 0;
      v26 = 0;
      appended = 0;
      goto LABEL_112;
    }

    v25 = HasLargeItemReferenceIDs;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v211[0] = 0;
      LODWORD(v217) = 0;
      LOBYTE(v207) = 0;
      ItemReferencesAtIndex = IFFInformationGetItemAtIndex(v21, v28, v211, &v217, &v207);
      if (ItemReferencesAtIndex)
      {
LABEL_111:
        appended = ItemReferencesAtIndex;
        goto LABEL_112;
      }

      if (v207 && IFFInformationGetItemReferenceCount(v211[0]) >= 1)
      {
        break;
      }

LABEL_108:
      if (++v28 == v23)
      {
        appended = 0;
        goto LABEL_112;
      }
    }

    v30 = 0;
    while (1)
    {
      LODWORD(v208) = 0;
      *v214 = 0;
      __s = 0;
      ItemReferencesAtIndex = IFFInformationGetItemReferencesAtIndex(v211[0], v30, &v208, v214, &__s, 0);
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (*&v214[2])
      {
        appendGlobalMetadataAtom_cold_1(&v220);
        goto LABEL_555;
      }

      ItemReferencesAtIndex = FigAtomWriterInitWithParent();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      ItemReferencesAtIndex = FigAtomWriterBeginAtom();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (!v25)
      {
        break;
      }

      LODWORD(v220) = bswap32(v217);
      WORD2(v220) = bswap32(*v214) >> 16;
      ItemReferencesAtIndex = FigAtomWriterAppendData();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      v31 = *v214;
      if (*v214 < 5)
      {
        v27 = &v222;
        v32 = *v214;
      }

      else
      {
        v27 = malloc_type_malloc(4 * *v214, 0x100004052888210uLL);
        if (!v27)
        {
          appendGlobalMetadataAtom_cold_2(&v219);
          appended = v219;
          goto LABEL_112;
        }

        v32 = *v214;
      }

      if (v32 >= 1)
      {
        v35 = __s;
        v36 = v27;
        v37 = v32;
        do
        {
          v38 = *v35;
          v35 += 4;
          *v36 = bswap32(v38);
          v36 = (v36 + 4);
          --v37;
        }

        while (v37);
      }

      ItemReferencesAtIndex = FigAtomWriterAppendData();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (v31 >= 5)
      {
        free(v27);
        v27 = 0;
      }

LABEL_106:
      ItemReferencesAtIndex = FigAtomWriterEndAtom();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (++v30 >= IFFInformationGetItemReferenceCount(v211[0]))
      {
        goto LABEL_108;
      }
    }

    LOWORD(v219) = bswap32(v217) >> 16;
    WORD1(v219) = bswap32(*v214) >> 16;
    ItemReferencesAtIndex = FigAtomWriterAppendData();
    if (ItemReferencesAtIndex)
    {
      goto LABEL_111;
    }

    v33 = *v214;
    if (*v214 < 9)
    {
      v26 = &v222;
      v34 = *v214;
      goto LABEL_100;
    }

    v26 = malloc_type_malloc(2 * *v214, 0x1000040BDFB0063uLL);
    if (v26)
    {
      v34 = *v214;
LABEL_100:
      if (v34 >= 1)
      {
        v39 = __s;
        v40 = v26;
        v41 = v34;
        do
        {
          v42 = *v39;
          v39 += 4;
          *v40 = bswap32(v42) >> 16;
          v40 = (v40 + 2);
          --v41;
        }

        while (v41);
      }

      ItemReferencesAtIndex = FigAtomWriterAppendData();
      if (ItemReferencesAtIndex)
      {
        goto LABEL_111;
      }

      if (v33 >= 9)
      {
        free(v26);
        v26 = 0;
      }

      goto LABEL_106;
    }

    appendGlobalMetadataAtom_cold_3(&v220);
LABEL_555:
    appended = v220;
LABEL_112:
    v2 = v200;
LABEL_113:
    FigAtomWriterEndAtom();
    FigAtomWriterEndAtom();
    if (v26 != &v222 && v26)
    {
      free(v26);
    }

    if (v27 != &v222 && v27)
    {
      free(v27);
    }

    if (appended)
    {
      goto LABEL_551;
    }

    v225 = 0;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v43 = FigAtomWriterInitWithParent();
    if (v43 || (v43 = FigAtomWriterBeginAtom(), v43))
    {
      appended = v43;
      goto LABEL_550;
    }

    v229 = 0;
    v227 = 0u;
    v228 = 0u;
    v226 = 0u;
    v44 = *(v2 + 8);
    SharedItemPropertyAtIndex = FigAtomWriterInitWithParent();
    if (SharedItemPropertyAtIndex || (SharedItemPropertyAtIndex = FigAtomWriterBeginAtom(), SharedItemPropertyAtIndex))
    {
LABEL_561:
      appended = SharedItemPropertyAtIndex;
      goto LABEL_549;
    }

    SharedItemPropertyCount = IFFInformationGetSharedItemPropertyCount(v44);
    if (SharedItemPropertyCount >= 1)
    {
      v47 = SharedItemPropertyCount;
      v48 = 0;
      while (2)
      {
        LODWORD(v217) = 0;
        v218 = 0;
        SharedItemPropertyAtIndex = IFFInformationGetSharedItemPropertyAtIndex(v44, v48, &v217, &v218);
        if (SharedItemPropertyAtIndex)
        {
          goto LABEL_561;
        }

        switch(v217)
        {
          case 1:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            LODWORD(__s) = 0;
            v211[0] = 0;
            *v214 = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyCodecConfiguration(v218, &__s, v211, v214);
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
              if (!ItemPropertyCodecConfiguration)
              {
                ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
                if (!ItemPropertyCodecConfiguration)
                {
                  goto LABEL_299;
                }
              }
            }

            goto LABEL_547;
          case 2:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            LODWORD(v211[1]) = 0;
            v211[0] = 0;
            *v214 = 0;
            LODWORD(__s) = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertySpatialExtents(v218, v214, &__s);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            LODWORD(v211[0]) = 0;
            HIDWORD(v211[0]) = bswap32(*v214);
            LODWORD(v211[1]) = bswap32(__s);
            goto LABEL_299;
          case 3:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            v211[0] = 0;
            *v214 = 0;
            LODWORD(__s) = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertySpatialExtents(v218, v214, &__s);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            v211[0] = _byteswap_uint64(__PAIR64__(*v214, __s));
            goto LABEL_299;
          case 4:
            v103 = v218;
            v104 = 1852009592;
            goto LABEL_309;
          case 5:
            v103 = v218;
            v104 = 1886547814;
LABEL_309:
            SharedItemPropertyAtIndex = appendItemPropertyColorInformationAtom(v103, v104, &v226);
            if (SharedItemPropertyAtIndex)
            {
              goto LABEL_561;
            }

            goto LABEL_303;
          case 6:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_299;
              }
            }

            goto LABEL_547;
          case 7:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_299;
              }
            }

            goto LABEL_547;
          case 8:
            v60 = v218;
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                v61 = v60[5].i8[0];
                LOBYTE(v211[0]) = 0;
                IFFItemPropertyGetCCLVDataLength(v61, v211);
                if (!ItemPropertyCodecConfiguration)
                {
                  goto LABEL_299;
                }
              }
            }

            goto LABEL_547;
          case 9:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_299;
              }
            }

            goto LABEL_547;
          case 10:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            *v211 = 0u;
            v212 = 0u;
            *v214 = 0;
            __s = 0;
            v219 = 0;
            v220 = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyCleanAperture(v218, v214, &__s, &v220, &v219);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            v72 = HIDWORD(*v214);
            v73 = bswap32(*v214);
            *v214 = __rev32(*v214);
            v74 = bswap32(__s);
            v75 = bswap32(HIDWORD(__s));
            __s = __rev32(__s);
            v76 = bswap32(v220);
            v77 = bswap32(HIDWORD(v220));
            v78 = HIDWORD(v219);
            v79 = bswap32(v219);
            v219 = __rev32(v219);
            v220 = __rev32(v220);
            v211[0] = __PAIR64__(bswap32(v72), v73);
            v211[1] = __PAIR64__(v75, v74);
            v212.i64[0] = __PAIR64__(v77, v76);
            v212.i64[1] = __PAIR64__(bswap32(v78), v79);
            goto LABEL_299;
          case 11:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            LOBYTE(__s) = 0;
            *v214 = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyRotationDegreesCCW(v218, v214);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            v58 = *v214;
            if ((*v214 & 0x80000000) != 0)
            {
              v58 = *v214 + 360 * vcvtps_s32_f32(*v214 / -360.0);
            }

            *v214 = v58 % 360;
            if ((((20389 * (v58 % 360) + 728) << 15) | ((20389 * (v58 % 360) + 728) >> 1)) < 0x2D9u)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_547;
              }

              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_547;
              }

              v59 = (v214[0] / 90) & 3;
LABEL_215:
              LOBYTE(__s) = v59;
LABEL_299:
              v54 = FigAtomWriterAppendData();
LABEL_300:
              appended = v54;
LABEL_301:
              FigAtomWriterEndAtom();
LABEL_302:
              if (appended)
              {
                goto LABEL_549;
              }

LABEL_303:
              if (++v48 == v47)
              {
                break;
              }

              continue;
            }

            appendGlobalMetadataAtom_cold_6(v211);
            goto LABEL_316;
          case 12:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            LOBYTE(__s) = 0;
            *v214 = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyRotationDegreesCCW(v218, v214);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            if (*v214 < 2u)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_547;
              }

              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_547;
              }

              v59 = v214[0] & 1;
              goto LABEL_215;
            }

            appendGlobalMetadataAtom_cold_5(v211);
LABEL_316:
            appended = LODWORD(v211[0]);
            goto LABEL_301;
          case 13:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            v211[0] = 0;
            *v214 = 0;
            __s = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyAuxiliaryType(v218, v211, v214, &__s);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            if (!v211[0])
            {
              appendGlobalMetadataAtom_cold_4(&v220);
              appended = v220;
              goto LABEL_301;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            LODWORD(v219) = 0;
            ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            strlen(v211[0]);
            ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            if (!*v214 || !__s)
            {
              FigAtomWriterEndAtom();
              goto LABEL_303;
            }

            goto LABEL_299;
          case 14:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            LOBYTE(__s) = 0;
            v211[0] = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetItemPropertyPixelInformation(v218, &__s, v211);
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
              if (!ItemPropertyCodecConfiguration)
              {
                ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
                if (!ItemPropertyCodecConfiguration)
                {
                  *v214 = 0;
                  ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
                  if (!ItemPropertyCodecConfiguration)
                  {
                    ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
                    if (!ItemPropertyCodecConfiguration)
                    {
                      goto LABEL_299;
                    }
                  }
                }
              }
            }

            goto LABEL_547;
          case 15:
          case 16:
            v215[0].i32[0] = bswap32(v218[5].u32[0]);
            SharedItemPropertyAtIndex = _appendUUIDItemPropertyHelper(v218, &v226, v215);
            if (SharedItemPropertyAtIndex)
            {
              goto LABEL_561;
            }

            goto LABEL_303;
          case 17:
            v50 = v218;
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            if (v50[9].i8[1])
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_547;
              }
            }

            else
            {
              v211[0] = 0;
              v211[1] = 0;
              ItemPropertyCodecConfiguration = IFFInformationGetCFUUIDBytesForItemPropertyType(v50[1].i32[0], v211);
              if (ItemPropertyCodecConfiguration || (ItemPropertyCodecConfiguration = FigAtomWriterBeginUUIDAtom(), ItemPropertyCodecConfiguration))
              {
LABEL_547:
                appended = ItemPropertyCodecConfiguration;
LABEL_548:
                FigAtomWriterEndAtom();
LABEL_549:
                FigAtomWriterEndAtom();
                goto LABEL_550;
              }
            }

            if (v50[5].i32[0])
            {
              v87 = 1;
            }

            else
            {
              v87 = v50[9].i8[0] != 0;
            }

            if (v50[5].i32[1])
            {
              v88 = 1;
            }

            else
            {
              v88 = v50[9].i8[0] != 0;
            }

            if (v50[6].i32[0])
            {
              v89 = 1;
            }

            else
            {
              v89 = v50[9].i8[0] != 0;
            }

            v90 = v50[6].i32[1] || v50[7].i32[0] || v50[7].i32[1] || v50[9].i8[0] != 0;
            v91 = v50[8].i8[0] != 0;
            if (!v50[8].i8[0] && v90)
            {
              v91 = v50[9].i8[0] != 0;
            }

            v199 = v47;
            if (v50[8].i32[1])
            {
              if (v88)
              {
                v92 = 2;
              }

              else
              {
                v92 = 0;
              }

              if (v89)
              {
                v93 = 4;
              }

              else
              {
                v93 = 0;
              }

              if (v90)
              {
                v94 = 8;
              }

              else
              {
                v94 = 0;
              }

              if (v91)
              {
                v95 = 16;
              }

              else
              {
                v95 = 0;
              }
            }

            else
            {
              v96 = v50[9].u8[0];
              if (v88)
              {
                v92 = 2;
              }

              else
              {
                v92 = 0;
              }

              if (v89)
              {
                v93 = 4;
              }

              else
              {
                v93 = 0;
              }

              if (v90)
              {
                v94 = 8;
              }

              else
              {
                v94 = 0;
              }

              if (v91)
              {
                v95 = 16;
              }

              else
              {
                v95 = 0;
              }

              if (!v50[9].i8[0])
              {
                v97 = 0;
LABEL_272:
                LODWORD(__s) = (v94 + v93 + v92 + v87 + v96 + v95) << 24;
                v98 = FigAtomWriterAppendData();
                if (v98 || v87 && (LODWORD(v211[0]) = bswap32(v50[5].u32[0]), v98 = FigAtomWriterAppendData(), v98) || v88 && (LODWORD(v211[0]) = bswap32(v50[5].u32[1]), v98 = FigAtomWriterAppendData(), v98) || v89 && (LODWORD(v211[0]) = bswap32(v50[6].u32[0]), v98 = FigAtomWriterAppendData(), v98))
                {
                  appended = v98;
                  goto LABEL_548;
                }

                if (v90)
                {
                  *&v214[4] = 0;
                  *v214 = 0;
                  LODWORD(v211[1]) = 0;
                  v211[0] = 0;
                  v2 = v200;
                  v99 = bswap32(v50[6].u32[1]);
                  if (v91)
                  {
                    LODWORD(v211[0]) = v99;
                    *(v211 + 4) = vrev32_s8(v50[7]);
                  }

                  else
                  {
                    *v214 = HIWORD(v99);
                    *&v214[2] = bswap32(v50[7].u16[0]) >> 16;
                    *&v214[4] = bswap32(v50[7].u16[2]) >> 16;
                  }

                  appended = FigAtomWriterAppendData();
                  if (appended)
                  {
                    v100 = 0;
                  }

                  else
                  {
                    v100 = v97;
                  }

                  if ((v100 & 1) == 0)
                  {
                    goto LABEL_290;
                  }
                }

                else
                {
                  v2 = v200;
                  if ((v97 & 1) == 0)
                  {
                    FigAtomWriterEndAtom();
                    v47 = v199;
                    goto LABEL_303;
                  }
                }

                LODWORD(v211[0]) = bswap32(v50[8].u32[1]);
                appended = FigAtomWriterAppendData();
LABEL_290:
                FigAtomWriterEndAtom();
                v47 = v199;
                goto LABEL_302;
              }
            }

            v96 = 32;
            v97 = 1;
            goto LABEL_272;
          case 18:
            v80 = v218;
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            v54 = FigAtomWriterInitWithParent();
            if (v54)
            {
              goto LABEL_300;
            }

            v81 = v80[7].u8[5];
            if (v81 >= 0x20)
            {
              emitter = fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950965, "< IFFItemHeaderMaker >", 2354);
LABEL_225:
              appended = v83;
              goto LABEL_302;
            }

            v84 = (v80[7].i8[4] != 0) | (v81 << 8);
            if (v80[7].i8[4])
            {
              v85 = v80[7].u8[6];
              if (v85 >= 0x20)
              {
                v86 = fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, 4294950965, "< IFFItemHeaderMaker >", 2361);
                goto LABEL_225;
              }

              v84 |= v85 << 16;
            }

            v101.i32[0] = v84;
            v101.i32[1] = v80[5].i32[0];
            v101.u64[1] = v80[6];
            *v211 = vrev32q_s8(v101);
            v212.i64[0] = __PAIR64__(bswap32(v80[7].u32[0]), bswap32(v80[5].u32[1]));
            if (v80[7].i8[7])
            {
              v54 = FigAtomWriterBeginAtom();
              if (v54)
              {
                goto LABEL_300;
              }
            }

            else
            {
              *&v214[8] = 0;
              *v214 = 0;
              CFUUIDBytesForItemPropertyType = IFFInformationGetCFUUIDBytesForItemPropertyType(v80[1].i32[0], v214);
              if (CFUUIDBytesForItemPropertyType || (CFUUIDBytesForItemPropertyType = FigAtomWriterBeginUUIDAtom(), CFUUIDBytesForItemPropertyType))
              {
                appended = CFUUIDBytesForItemPropertyType;
                v2 = v200;
                goto LABEL_301;
              }
            }

            goto LABEL_299;
          case 19:
            v51 = v218;
            IsDisplayModeSwitchInProgress = FPSupport_IsDisplayModeSwitchInProgress();
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            v53 = bswap32(v51[5].u32[0]);
            *v214 = v53;
            if (!IsDisplayModeSwitchInProgress)
            {
              v54 = _appendUUIDItemPropertyHelper(v51, &v226, v214);
              goto LABEL_300;
            }

            LODWORD(v211[0]) = 0;
            HIDWORD(v211[0]) = v53;
            v54 = FigAtomWriterInitWithParent();
            if (v54)
            {
              goto LABEL_300;
            }

            v54 = FigAtomWriterBeginAtom();
            if (v54)
            {
              goto LABEL_300;
            }

            goto LABEL_299;
          case 20:
            v62 = v218;
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            v211[0] = 0;
            v211[1] = 0;
            ItemPropertyCodecConfiguration = IFFInformationGetCFUUIDBytesForItemPropertyType(v62[1].i32[0], v211);
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            ItemPropertyCodecConfiguration = FigAtomWriterBeginUUIDAtom();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            *v214 = 0;
            ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            LOBYTE(v220) = v62[5].i8[0] - 1;
            ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
            if (ItemPropertyCodecConfiguration)
            {
              goto LABEL_547;
            }

            v198 = v44;
            v63 = v47;
            v64 = 0;
            v65 = -1;
            do
            {
              LOWORD(__s) = 0;
              v66 = *&v62[6] + v64;
              LOBYTE(__s) = *v66;
              v67 = *(v66 + 1);
              BYTE1(__s) = v67;
              if (*(v66 + 8))
              {
                Length = CFStringGetLength(*(v66 + 8));
                v69 = Length > 0;
                if (Length <= 0)
                {
                  v70 = 0;
                }

                else
                {
                  v70 = 0x80;
                }

                v67 = BYTE1(__s);
              }

              else
              {
                v69 = 0;
                v70 = 0;
              }

              BYTE1(__s) = v70 | v67;
              ItemPropertyCodecConfiguration = FigAtomWriterAppendData();
              if (ItemPropertyCodecConfiguration)
              {
                goto LABEL_547;
              }

              if (v69)
              {
                v211[0] = 0;
                CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
                strlen(CStringPtrAndBufferToFree);
                appended = FigAtomWriterAppendData();
                free(v211[0]);
                if (appended)
                {
                  goto LABEL_548;
                }
              }

              ++v65;
              v64 += 16;
            }

            while (v65 < v220);
            FigAtomWriterEndAtom();
            v2 = v200;
            v47 = v63;
            v44 = v198;
            goto LABEL_303;
          case 21:
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            LOWORD(v211[0]) = bswap32(v218[5].u16[0]) >> 16;
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_299;
              }
            }

            goto LABEL_547;
          case 23:
            v55 = 0;
            memset(v216, 0, 24);
            memset(v215, 0, sizeof(v215));
            *(&v211[1] + 1) = 0;
            *(v211 + 1) = 0;
            *&v214[5] = 0;
            *&v214[1] = 0;
            LOBYTE(v211[0]) = 1;
            v56 = v218 + 5;
            v214[0] = 0;
            do
            {
              v57 = bswap32(v56->u32[v55]);
              *(v211 + 4 * v55 + 1) = v57;
              *&v214[2 * v55++ + 1] = HIWORD(v57);
            }

            while (v55 != 3);
            ItemPropertyCodecConfiguration = FigAtomWriterInitWithParent();
            if (!ItemPropertyCodecConfiguration)
            {
              ItemPropertyCodecConfiguration = FigAtomWriterBeginAtom();
              if (!ItemPropertyCodecConfiguration)
              {
                goto LABEL_299;
              }
            }

            goto LABEL_547;
          default:
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v194, v195, v196);
            appended = v192;
            FigAtomWriterEndAtom();
            if (appended)
            {
              goto LABEL_550;
            }

            goto LABEL_319;
        }

        break;
      }
    }

    FigAtomWriterEndAtom();
LABEL_319:
    memset(v216, 0, 24);
    memset(v215, 0, sizeof(v215));
    v211[0] = 0;
    v105 = *(v2 + 8);
    v106 = IFFInformationGetItemCount(v105);
    if (v106 < 1)
    {
      v113 = 0;
      v114 = 0;
      appended = 0;
LABEL_373:
      FigAtomWriterEndAtom();
      if (v114 != &v226 && v114)
      {
        free(v114);
      }

      if (v113 != &v226 && v113)
      {
        free(v113);
      }

      FigAtomWriterEndAtom();
      v123 = v200;
      if (appended)
      {
        goto LABEL_551;
      }

      memset(v216, 0, 24);
      memset(v215, 0, sizeof(v215));
      *&v226 = 0;
      IFFInformationGetGroupsList();
      if (ItemHandler)
      {
        goto LABEL_562;
      }

      if (v226)
      {
        Count = CFArrayGetCount(v226);
        if (Count >= 1)
        {
          v125 = Count;
          ItemHandler = FigAtomWriterInitWithParent();
          if (!ItemHandler)
          {
            ItemHandler = FigAtomWriterBeginAtom();
            if (!ItemHandler)
            {
              v126 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v226, v126);
                v225 = 0;
                v224 = 0u;
                v223 = 0u;
                v222 = 0u;
                v203 = 0;
                __s = 0;
                v128 = *(ValueAtIndex + 6);
                if (!v128 || (v129 = CFArrayGetCount(v128), v130 = v129, (v131 = v129) == 0))
                {
LABEL_401:
                  FigAtomWriterEndAtom();
                  v123 = v200;
                  goto LABEL_402;
                }

                if (*(ValueAtIndex + 6) != 1937007986)
                {
                  goto LABEL_394;
                }

                if ((v129 & 0xFFFFFFFE) == 2)
                {
                  break;
                }

                v135 = 1700;
LABEL_406:
                v123 = v200;
                if (!appendGlobalMetadataAtom_cold_10(v135, &v222, &__s, v211))
                {
                  appended = LODWORD(v211[0]);
LABEL_550:
                  FigAtomWriterEndAtom();
                  goto LABEL_551;
                }

LABEL_402:
                if (++v126 == v125)
                {
                  goto LABEL_409;
                }
              }

              if (v129 == 3)
              {
                v132 = *(ValueAtIndex + 8);
                v133 = FigAtomWriterInitWithParent();
                if (!v133)
                {
                  v133 = FigAtomWriterBeginUUIDAtom();
                  if (!v133)
                  {
LABEL_397:
                    __s = __PAIR64__(bswap32(*(ValueAtIndex + 4)), bswap32(v132 & 0xFFFFFF));
                    v203 = bswap32(v130);
                    v133 = FigAtomWriterAppendData();
                    if (!v133)
                    {
                      v134 = 0;
                      while (1)
                      {
                        LODWORD(v211[0]) = bswap32(*(CFArrayGetValueAtIndex(*(ValueAtIndex + 6), v134) + 10));
                        v133 = FigAtomWriterAppendData();
                        if (v133)
                        {
                          break;
                        }

                        if (v131 == ++v134)
                        {
                          goto LABEL_401;
                        }
                      }
                    }
                  }
                }

LABEL_408:
                appended = v133;
                FigAtomWriterEndAtom();
                goto LABEL_550;
              }

LABEL_394:
              if (!(v129 >> 31))
              {
                v133 = FigAtomWriterInitWithParent();
                if (!v133)
                {
                  v133 = FigAtomWriterBeginAtom();
                  v132 = 0;
                  if (!v133)
                  {
                    goto LABEL_397;
                  }
                }

                goto LABEL_408;
              }

              v135 = 1706;
              goto LABEL_406;
            }
          }

LABEL_562:
          appended = ItemHandler;
          goto LABEL_550;
        }
      }

LABEL_409:
      FigAtomWriterEndAtom();
      v229 = 0;
      v227 = 0u;
      v228 = 0u;
      v226 = 0u;
      v136 = *(v123 + 8);
      if (!IFFInformationUsesItemExtentConstructionMethod(v136))
      {
        goto LABEL_494;
      }

      ItemType = FigAtomWriterInitWithParent();
      if (ItemType || (ItemType = FigAtomWriterBeginAtom(), ItemType))
      {
LABEL_556:
        appended = ItemType;
        goto LABEL_550;
      }

      v138 = IFFInformationGetItemCount(v136);
      if (v138 < 1)
      {
LABEL_494:
        FigAtomWriterEndAtom();
        v170 = v200;
LABEL_495:
        memset(v216, 0, 24);
        memset(v215, 0, sizeof(v215));
        v171 = *(v170 + 8);
        v172 = IFFInformationGetItemCount(v171);
        if (v172 < 1)
        {
LABEL_543:
          v181 = 0;
          appended = 0;
          goto LABEL_544;
        }

        v173 = v172;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        while (1)
        {
          *&v226 = 0;
          LODWORD(v219) = 0;
          LOBYTE(v218) = 0;
          v211[0] = 0;
          *v214 = 0;
          ItemExtents = IFFInformationGetItemAtIndex(v171, v176, &v226, &v219, &v218);
          if (ItemExtents)
          {
            goto LABEL_513;
          }

          if (v218)
          {
            ItemExtents = IFFInformationGetItemExtents(v226, 0, v211, 0, v214, 0);
            if (ItemExtents)
            {
              goto LABEL_513;
            }

            if (v211[0])
            {
              appendGlobalMetadataAtom_cold_17(&v220);
              appended = v220;
LABEL_514:
              v181 = 0;
LABEL_544:
              FigAtomWriterEndAtom();
              if (v181 != &v226 && v181)
              {
                free(v181);
              }

              goto LABEL_551;
            }

            if (*v214 >= 1)
            {
              ++v175;
              v174 = (v174 | WORD1(v219)) != 0;
            }
          }

          if (v173 == ++v176)
          {
            if (!v175)
            {
              goto LABEL_543;
            }

            ItemExtents = FigAtomWriterInitWithParent();
            if (!ItemExtents)
            {
              ItemExtents = FigAtomWriterBeginAtom();
              if (!ItemExtents)
              {
                v178 = IFFInformationUsesItemExtentConstructionMethod(v171);
                v179 = bswap32(v175);
                if (v174 || HIWORD(v175))
                {
                  v180 = 2;
                  LODWORD(v226) = 2;
                  WORD2(v226) = 68;
                  *(&v226 + 6) = v179;
                }

                else
                {
                  v180 = v178 != 0;
                  LODWORD(v226) = v180;
                  WORD2(v226) = 68;
                  WORD3(v226) = HIWORD(v179);
                }

                ItemExtents = FigAtomWriterAppendData();
                if (!ItemExtents)
                {
                  v182 = 0;
                  while (1)
                  {
                    *v214 = 0;
                    LOBYTE(v208) = 0;
                    LODWORD(v218) = 0;
                    LODWORD(v217) = 0;
                    v219 = 0;
                    v220 = 0;
                    ItemExtents = IFFInformationGetItemAtIndex(v171, v182, v214, &v217, &v208);
                    if (ItemExtents)
                    {
                      break;
                    }

                    if (v208)
                    {
                      ItemExtents = IFFInformationGetItemExtents(*v214, &v218, 0, 0, &v220, &v219);
                      if (ItemExtents)
                      {
                        break;
                      }

                      if (v220)
                      {
                        if (v180 == 2)
                        {
                          LODWORD(v211[0]) = bswap32(v217);
                          HIDWORD(v211[0]) = (v218 & 0xF) << 8;
                          LOWORD(v211[1]) = bswap32(v220) >> 16;
                        }

                        else if (v180 == 1)
                        {
                          LOWORD(v211[0]) = bswap32(v217) >> 16;
                          *(v211 + 2) = (v218 & 0xF) << 8;
                          HIWORD(v211[0]) = bswap32(v220) >> 16;
                        }

                        else
                        {
                          LODWORD(v211[0]) = bswap32(v217) >> 16;
                          WORD2(v211[0]) = bswap32(v220) >> 16;
                        }

                        ItemExtents = FigAtomWriterAppendData();
                        if (ItemExtents)
                        {
                          break;
                        }

                        v183 = v220;
                        if (v220 >= 5)
                        {
                          v181 = malloc_type_malloc(8 * v220, 0x923BCD4AuLL);
                          if (!v181)
                          {
                            appendGlobalMetadataAtom_cold_18(v211);
LABEL_565:
                            appended = LODWORD(v211[0]);
                            goto LABEL_544;
                          }

                          v184 = v220;
                        }

                        else
                        {
                          v181 = &v226;
                          v184 = v220;
                        }

                        if (v184 >= 1)
                        {
                          v185 = v181 + 1;
                          v186 = (v219 + 8);
                          while (1)
                          {
                            if (v218)
                            {
                              v187 = 0;
                            }

                            else
                            {
                              v187 = *(v170 + 16);
                            }

                            v188 = *(v186 - 1) + v187;
                            if (HIDWORD(v188))
                            {
                              appendGlobalMetadataAtom_cold_20(v211);
                              goto LABEL_565;
                            }

                            v189 = *v186;
                            if (HIDWORD(*v186))
                            {
                              break;
                            }

                            *(v185 - 1) = bswap32(v188);
                            *v185 = bswap32(v189);
                            v185 += 2;
                            v186 += 16;
                            if (!--v184)
                            {
                              goto LABEL_538;
                            }
                          }

                          appendGlobalMetadataAtom_cold_19(v211);
                          goto LABEL_565;
                        }

LABEL_538:
                        v190 = FigAtomWriterAppendData();
                        appended = v190;
                        if (v183 < 5 || v190)
                        {
                          if (v190)
                          {
                            goto LABEL_544;
                          }
                        }

                        else
                        {
                          free(v181);
                        }
                      }
                    }

                    if (++v182 == v173)
                    {
                      goto LABEL_543;
                    }
                  }
                }
              }
            }

LABEL_513:
            appended = ItemExtents;
            goto LABEL_514;
          }
        }
      }

      v139 = v138;
      v140 = 0;
      while (1)
      {
        v206 = 0;
        v207 = 0;
        v205 = 0;
        v204 = 0;
        ItemType = IFFInformationGetItemAtIndex(v136, v140, &v207, 0, &v205);
        if (ItemType)
        {
          goto LABEL_556;
        }

        if (v205)
        {
          ItemType = IFFInformationGetItemExtents(v207, &v206 + 1, &v204, 0, 0, 0);
          if (ItemType)
          {
            goto LABEL_556;
          }

          if (v204)
          {
LABEL_559:
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v194, v195, v196);
            appended = v193;
            FigAtomWriterEndAtom();
            v170 = v200;
            if (appended)
            {
              goto LABEL_551;
            }

            goto LABEL_495;
          }

          if (HIDWORD(v206) == 1)
          {
            ItemType = IFFInformationGetItemType(v207, &v206);
            if (ItemType)
            {
              goto LABEL_556;
            }

            switch(v206)
            {
              case 0x746D6170:
                v156 = v207;
                LODWORD(v208) = 0;
                v219 = 0;
                v220 = 0;
                v217 = 0;
                v218 = 0;
                ItemType = IFFInformationGetItemExtents(v207, &v208, &v220, 0, &v219, &v218);
                if (ItemType)
                {
                  goto LABEL_556;
                }

                if (v219 < 1 || v220)
                {
                  goto LABEL_487;
                }

                ItemType = FigAtomWriterGetAtomDataSize();
                if (ItemType)
                {
                  goto LABEL_556;
                }

                memset(v216, 0, sizeof(v216));
                memset(v215, 0, sizeof(v215));
                ItemType = IFFInformationGetItemBodyImageDerivationTonemap(v156, v215);
                if (ItemType)
                {
                  goto LABEL_556;
                }

                v157 = v215[0].u8[4];
                *v214 = 0;
                v214[4] = 0;
                v214[5] = ((v215[0].i8[4] != 0) << 7) | ((v215[0].i8[5] != 0) << 6);
                *&v214[6] = vrev32q_s8(*(v215 + 8));
                v158 = FigAtomWriterAppendData();
                if (v158)
                {
LABEL_510:
                  appended = v158;
                  goto LABEL_550;
                }

                v159 = 0;
                v160 = 0;
                do
                {
                  v161 = vrev32q_s8(*(v216 + v159 + 8));
                  *v211 = vrev32q_s8(*(&v215[1] + v159 + 8));
                  v212 = v161;
                  v213 = vrev32_s8(*(&v216[1] + v159 + 8));
                  v158 = FigAtomWriterAppendData();
                  if (v158)
                  {
                    goto LABEL_510;
                  }

                  v159 += 40;
                  if (!v157)
                  {
                    break;
                  }
                }

                while (v160++ < 2);
                v163 = v218;
                *v218 = v217;
                v163[1] = (v159 + 22);
                break;
              case 0x696F766C:
                v144 = v207;
                v215[0].i64[0] = 0;
                v210 = 0;
                v211[0] = 0;
                v209 = 0;
                *v214 = 0;
                v219 = 0;
                v220 = 0;
                v217 = 0;
                v218 = 0;
                v145 = IFFInformationGetItemExtents(v207, &v209, v214, 0, &v220, &v219);
                if (v145)
                {
                  appended = v145;
                  goto LABEL_558;
                }

                if (v220 <= 0)
                {
                  appendGlobalMetadataAtom_cold_16(&v221);
                  appended = v221;
                }

                else
                {
                  if (*v214)
                  {
                    appendGlobalMetadataAtom_cold_11(&v221);
                  }

                  else
                  {
                    AtomDataSize = FigAtomWriterGetAtomDataSize();
                    if (AtomDataSize || (AtomDataSize = IFFInformationGetItemBodyImageDerivationOverlay(v144, v215, &v210 + 1, &v210, v211), AtomDataSize))
                    {
LABEL_557:
                      appended = AtomDataSize;
LABEL_558:
                      free(v217);
                      goto LABEL_550;
                    }

                    if (v215[0].i64[0])
                    {
                      if (v211[0])
                      {
                        v208 = 0;
                        AtomDataSize = IFFInformationGetItemReferencesOfType(v144, 1684630887, &v208, 0, 0);
                        if (AtomDataSize)
                        {
                          goto LABEL_557;
                        }

                        if (HIWORD(v210) || WORD1(v210))
                        {
                          v147 = 8 * v208 + 18;
                          v164 = malloc_type_calloc(1uLL, v147, 0x722DA814uLL);
                          v217 = v164;
                          if (v164)
                          {
                            v165 = 0;
                            *v164 = 256;
                            v166 = v215[0].i64[0];
                            do
                            {
                              v164[v165 + 1] = bswap32(*(v166 + v165 * 2)) >> 16;
                              ++v165;
                            }

                            while (v165 != 4);
                            *(v164 + 5) = bswap32(HIDWORD(v210));
                            *(v164 + 7) = bswap32(v210);
                            if (v208 > 0)
                            {
                              v167 = 0;
                              do
                              {
                                *&v164[2 * v167 + 9] = bswap32(*&v211[0][4 * v167]);
                                ++v167;
                              }

                              while (v167 < 2 * v208);
                            }

                            goto LABEL_472;
                          }

                          appendGlobalMetadataAtom_cold_13(&v221);
                        }

                        else
                        {
                          v147 = 4 * v208 + 14;
                          v148 = malloc_type_calloc(1uLL, v147, 0xEB9A93DAuLL);
                          v217 = v148;
                          if (v148)
                          {
                            *v148 = 0;
                            v149 = v215[0].i64[0];
                            for (j = 1; j != 5; ++j)
                            {
                              v151 = *v149++;
                              v148[j] = bswap32(v151) >> 16;
                            }

                            v148[5] = bswap32(WORD2(v210)) >> 16;
                            v148[6] = bswap32(v210) >> 16;
                            if (v208 > 0)
                            {
                              v152 = v148 + 7;
                              v153 = 2 * v208;
                              v154 = v211[0];
                              if (2 * v208 <= 1)
                              {
                                v153 = 1;
                              }

                              do
                              {
                                v155 = *v154;
                                v154 += 4;
                                *v152++ = bswap32(v155) >> 16;
                                --v153;
                              }

                              while (v153);
                            }

LABEL_472:
                            AtomDataSize = FigAtomWriterAppendData();
                            if (AtomDataSize)
                            {
                              goto LABEL_557;
                            }

                            v168 = v219;
                            *v219 = v218;
                            *(v168 + 8) = v147;
                            free(v217);
                            break;
                          }

                          appendGlobalMetadataAtom_cold_12(&v221);
                        }
                      }

                      else
                      {
                        appendGlobalMetadataAtom_cold_14(&v221);
                      }
                    }

                    else
                    {
                      appendGlobalMetadataAtom_cold_15(&v221);
                    }
                  }

                  appended = v221;
                }

                free(v217);
                if (appended)
                {
                  goto LABEL_550;
                }

                break;
              case 0x67726964:
                v141 = v207;
                LOWORD(v221) = 0;
                WORD2(v210) = 0;
                LODWORD(v218) = 0;
                LODWORD(v217) = 0;
                LODWORD(v208) = 0;
                v211[0] = 0;
                *v214 = 0;
                v219 = 0;
                v220 = 0;
                ItemType = IFFInformationGetItemExtents(v207, &v208, v211, 0, v214, &v220);
                if (ItemType)
                {
                  goto LABEL_556;
                }

                if (*v214 >= 1 && !v211[0])
                {
                  ItemType = FigAtomWriterGetAtomDataSize();
                  if (ItemType)
                  {
                    goto LABEL_556;
                  }

                  ItemType = IFFInformationGetItemBodyImageDerivationGrid(v141, &v210 + 2, &v221, &v218, &v217);
                  if (ItemType)
                  {
                    goto LABEL_556;
                  }

                  if (v221 && WORD2(v210) && v221 <= 0x100u && WORD2(v210) <= 0x100u)
                  {
                    v142 = bswap32(v218);
                    if (v218 >> 16 || v217 >> 16)
                    {
                      v215[0].i16[0] = 256;
                      v215[0].i8[2] = v221 - 1;
                      v215[0].i8[3] = BYTE4(v210) - 1;
                      *(v215[0].i64 + 4) = __PAIR64__(bswap32(v217), v142);
                      ItemType = FigAtomWriterAppendData();
                      v143 = 12;
                      if (ItemType)
                      {
                        goto LABEL_556;
                      }
                    }

                    else
                    {
                      v215[0].i16[0] = 0;
                      v215[0].i8[2] = v221 - 1;
                      v215[0].i8[3] = BYTE4(v210) - 1;
                      v215[0].i16[2] = HIWORD(v142);
                      v215[0].i16[3] = bswap32(v217) >> 16;
                      ItemType = FigAtomWriterAppendData();
                      v143 = 8;
                      if (ItemType)
                      {
                        goto LABEL_556;
                      }
                    }

                    v169 = v220;
                    *v220 = v219;
                    *(v169 + 8) = v143;
                    break;
                  }
                }

LABEL_487:
                fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v194, v195, v196);
                if (ItemType)
                {
                  goto LABEL_556;
                }

                break;
              default:
                goto LABEL_559;
            }
          }
        }

        if (++v140 == v139)
        {
          goto LABEL_494;
        }
      }
    }

    v107 = v106;
    v108 = 0;
    v109 = 0;
    for (k = 0; k != v107; ++k)
    {
      *&v226 = 0;
      LOBYTE(__s) = 0;
      *v214 = 0;
      v111 = IFFInformationGetItemAtIndex(v105, k, &v226, v214, &__s);
      if (v111)
      {
        goto LABEL_333;
      }

      if (__s || *(v226 + 17))
      {
        if (*&v214[2])
        {
          v108 = 1;
        }

        if (IFFInformationGetItemPropertyCount(v226) > 0)
        {
          ++v109;
        }
      }
    }

    if (v109 < 1)
    {
      v113 = 0;
      v114 = 0;
LABEL_366:
      appended = 0;
      goto LABEL_373;
    }

    v112 = IFFInformationGetSharedItemPropertyCount(v105);
    v111 = FigAtomWriterInitWithParent();
    if (v111 || (v111 = FigAtomWriterBeginAtom(), v111) || (v211[0] = _byteswap_uint64(__PAIR64__((v112 > 128) | ((v108 != 0) << 24), v109)), v111 = FigAtomWriterAppendData(), v111))
    {
LABEL_333:
      appended = v111;
      v113 = 0;
      v114 = 0;
      goto LABEL_373;
    }

    v114 = 0;
    v113 = 0;
    v115 = 0;
    v195 = v105;
    v196 = v112 > 128;
    v116 = 0x10000;
    if (v112 > 128)
    {
      v116 = 256;
    }

    v197 = v116;
    while (1)
    {
      *v214 = 0;
      LOBYTE(v218) = 0;
      LODWORD(v219) = 0;
      v117 = IFFInformationGetItemAtIndex(v105, v115, v214, &v219, &v218);
      if (v117)
      {
LABEL_367:
        appended = v117;
        goto LABEL_373;
      }

      if (!v218 && !*(*v214 + 17))
      {
        goto LABEL_365;
      }

      ItemPropertyCount = IFFInformationGetItemPropertyCount(*v214);
      if (!ItemPropertyCount)
      {
        goto LABEL_365;
      }

      v119 = ItemPropertyCount;
      if (ItemPropertyCount >= v197)
      {
        appendGlobalMetadataAtom_cold_7(&__s);
        goto LABEL_574;
      }

      if (v108)
      {
        LODWORD(__s) = bswap32(v219);
        BYTE4(__s) = ItemPropertyCount;
      }

      else
      {
        LOWORD(__s) = bswap32(v219) >> 16;
        BYTE2(__s) = ItemPropertyCount;
      }

      v117 = FigAtomWriterAppendData();
      if (v117)
      {
        goto LABEL_367;
      }

      if (v112 <= 128)
      {
        if (v119 < 17)
        {
          v114 = &v226;
LABEL_356:
          if (v119 < 1)
          {
            goto LABEL_364;
          }

          goto LABEL_357;
        }

        v114 = malloc_type_malloc(v119 << v196, 0x6283915AuLL);
        if (!v114)
        {
          appendGlobalMetadataAtom_cold_8(&__s);
          goto LABEL_574;
        }
      }

      else
      {
        if (v119 < 9)
        {
          v113 = &v226;
          goto LABEL_356;
        }

        v113 = malloc_type_malloc(v119 << v196, 0x17025EE8uLL);
        if (!v113)
        {
          appendGlobalMetadataAtom_cold_9(&__s);
LABEL_574:
          appended = __s;
          goto LABEL_373;
        }
      }

LABEL_357:
      for (m = 0; m != v119; ++m)
      {
        __s = 0;
        v220 = 0;
        LOBYTE(v217) = 0;
        ItemPropertyByIndex = IFFInformationGetItemPropertyByIndex(*v214, m, &__s, &v217, &v220);
        if (ItemPropertyByIndex)
        {
          appended = ItemPropertyByIndex;
          goto LABEL_373;
        }

        v122 = v220 + 1;
        if (v112 <= 128)
        {
          *(v114 + m) = v122 & 0x7F | ((v217 != 0) << 7);
        }

        else
        {
          *(v113 + m) = __rev16(v122 & 0x7FFF | ((v217 != 0) << 15));
        }
      }

      v105 = v195;
LABEL_364:
      v117 = FigAtomWriterAppendData();
      if (v117)
      {
        goto LABEL_367;
      }

LABEL_365:
      if (++v115 == v107)
      {
        goto LABEL_366;
      }
    }
  }

LABEL_551:
  FigAtomWriterEndAtom();
  return appended;
}

uint64_t FigSampleBufferProcessorCreateForMakingDataReady(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigSampleBufferProcessorGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      *a2 = 0;
    }
  }

  else
  {
    FigSampleBufferProcessorCreateForMakingDataReady_cold_1(&v5);
    return v5;
  }

  return v3;
}

uint64_t sbufmakeready_Finalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

__CFString *sbufmakeready_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_MakeDataReady %p>", a1);
  return Mutable;
}

uint64_t sbufmakeready_CopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (cf1)
    {
      if (CFEqual(cf1, @"CanProcessUnreadySampleBuffers"))
      {
        if (*MEMORY[0x1E695E4D0])
        {
          v5 = CFRetain(*MEMORY[0x1E695E4D0]);
        }

        else
        {
          v5 = 0;
        }

        result = 0;
        *a4 = v5;
      }

      else
      {
        return 4294954509;
      }
    }

    else
    {
      sbufmakeready_CopyProperty_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    sbufmakeready_CopyProperty_cold_2(&v8);
    return v8;
  }

  return result;
}

uint64_t sbufmakeready_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[1] = a3;
  return 0;
}

uint64_t sbufmakeready_ProcessSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  statusOut = 0;
  CMSampleBufferMakeDataReady(a2);
  CMSampleBufferHasDataFailed(a2, &statusOut);
  if (*DerivedStorage)
  {
    (*DerivedStorage)(*(DerivedStorage + 8), statusOut, a2);
  }

  return statusOut;
}

dispatch_queue_t aig_createNotificationQueueOnce()
{
  result = dispatch_queue_create("com.apple.coremedia.assetimagegenerator.notifications", 0);
  sAIGNotificationQueue = result;
  return result;
}

uint64_t aig_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    v3 = CMBaseObjectGetDerivedStorage();
    v4 = MEMORY[0x19A8D0E00](v3 + 112);
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00406B48E91AuLL);
      if (@"AssetImageGenerator_ServerObjectInvalidated")
      {
        v7 = CFRetain(@"AssetImageGenerator_ServerObjectInvalidated");
      }

      else
      {
        v7 = 0;
      }

      v6[1] = v7;
      v6[2] = 0;
      *v6 = v5;
      dispatch_async_f(sAIGNotificationQueue, v6, aig_postNotificationAsynchronously);
    }

    FigCFWeakReferenceStore();
    if (v2[7])
    {
      FigSimpleMutexLock();
      for (i = v2[8]; i; i = *i)
      {
        *(i + 8) = 1;
      }

      FigSimpleMutexUnlock();
    }

    if (v2[11])
    {
      FigSemaphoreSignal();
      FigThreadAbort();
      FigThreadJoin();
      v2[11] = 0;
    }
  }

  return 0;
}

void aig_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  aig_Invalidate(a1);
  if (DerivedStorage[7])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[7] = 0;
  }

  if (DerivedStorage[10])
  {
    FigSemaphoreDestroy();
    DerivedStorage[10] = 0;
  }

  v3 = DerivedStorage[15];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[15] = 0;
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[3] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[2] = 0;
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[4] = 0;
  }

  v7 = DerivedStorage[5];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[5] = 0;
  }

  v8 = DerivedStorage[1];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[1] = 0;
  }
}

__CFString *aig_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigAssetImageGenerator %p url: ", a1);
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    v5 = CFURLGetString(v4);
  }

  else
  {
    v5 = @"NULL";
  }

  CFStringAppend(Mutable, v5);
  CFStringAppend(Mutable, @">");
  return Mutable;
}

void aig_postNotificationAsynchronously(CFTypeRef *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void aig_CopyCGImageAtTime(const void *a1, uint64_t a2, const void *a3, const void *a4, void *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FigAssetImageGenerator >>>>", 1751, v6);
  }

  else
  {
    v15 = DerivedStorage;
    v16 = *(DerivedStorage + 24);
    if (v16)
    {
      v17 = CFRetain(v16);
      if (v17)
      {
        v18 = v17;
        FigAssetGetCMBaseObject();
        v20 = v19;
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v21 || v21(v20, @"assetProperty_CPEProtector", *MEMORY[0x1E695E480], &v25[1] + 8))
        {
          CFRelease(v18);
        }

        else
        {
          CFRelease(v18);
          v22 = *(v15 + 100) + 1;
          *(v15 + 100) = v22;
          v23 = *a2;
          v24 = *(a2 + 16);
          if (!FAIGCommon_createImageRequest(&v23, a3, a4, v22, &v26))
          {
            aig_createImageAtTimeInternal(v25, a1, 0, v26, a5, a6);
          }
        }
      }
    }

    aig_cleanupImageRetrievalObjects(v25);
    FAIGCommon_releaseImageRequest(v26);
  }
}

void aig_CancelAllCGImageAsyncRequests(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FigAssetImageGenerator >>>>", 1862, v1);
  }

  else
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    for (i = *(v4 + 8); i; i = *i)
    {
      *(i + 8) = 1;
    }

    FigSimpleMutexUnlock();
    FigSemaphoreSignal();
  }
}

void aig_cleanupImageRetrievalObjects(CFTypeRef *a1)
{
  aig_cleanupVideoRenderPipelineAndMentorsForImageRetrieval(a1);
  v2 = a1[21];
  if (v2)
  {
    CFRelease(v2);
    a1[21] = 0;
  }

  v3 = a1[20];
  if (v3)
  {
    CFRelease(v3);
    a1[20] = 0;
  }

  v4 = a1[18];
  if (v4)
  {
    CFRelease(v4);
    a1[18] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v5);
    }

    v7 = a1[6];
    if (v7)
    {
      CFRelease(v7);
      a1[6] = 0;
    }
  }

  if (a1[11])
  {
    a1[11] = 0;
  }

  v8 = a1[16];
  if (v8)
  {
    CFRelease(v8);
    a1[16] = 0;
  }

  v9 = a1[2];
  if (v9)
  {
    CFRelease(v9);
    a1[2] = 0;
  }

  v10 = a1[3];
  if (v10)
  {
    CFRelease(v10);
    a1[3] = 0;
  }

  v11 = a1[24];
  if (v11)
  {
    CFRelease(v11);
    a1[24] = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v12 = a1[27];
  if (v12)
  {
    CFRelease(v12);
    a1[27] = 0;
  }

  v13 = a1[10];
  if (v13)
  {
    CFRelease(v13);
    a1[10] = 0;
  }
}

void aig_cleanupVideoRenderPipelineAndMentorsForImageRetrieval(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  v3 = a1[25];
  if (v3)
  {
    VideoMentorInvalidate(v3);
  }

  v4 = a1[26];
  if (v4)
  {
    EditMentorDispose(v4);
  }

  if (a1[25])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    VideoMentorDispose(a1[25]);
  }

  v5 = a1[23];
  if (v5)
  {
    CFRelease(v5);
    a1[23] = 0;
  }

  v6 = a1[22];
  if (v6)
  {
    CFRelease(v6);
    a1[22] = 0;
  }

  if (a1[19])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    FigRenderPipelineGetFigBaseObject();
    v8 = v7;
    v9 = *(CMBaseObjectGetVTable() + 8);
    if (*v9 >= 2uLL)
    {
      v10 = v9[8];
      if (v10)
      {
        v10(v8);
      }
    }

    v11 = a1[19];
    if (v11)
    {
      CFRelease(v11);
      a1[19] = 0;
    }
  }

  v12 = a1[17];
  if (v12)
  {
    CFRelease(v12);
    a1[17] = 0;
  }

  v13 = a1[5];
  if (v13)
  {
    CFRelease(v13);
    a1[5] = 0;
  }
}

uint64_t aig_handleMentorStoppingDueToErrorNotification(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FAIGCommon_handleRenderPipelineDecodeErrorNotification(a1, a2, a3, a4, a5);

  return FigSemaphoreSignal();
}

uint64_t aig_processImageRequestThread(const void *a1)
{
  v48[2] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v42, 0, sizeof(v42));
  cf = 0;
  v41 = -1;
  v35 = *MEMORY[0x1E6960C70];
  v38 = *MEMORY[0x1E6960C70];
  v34 = *(MEMORY[0x1E6960C70] + 16);
  v39 = v34;
  v2 = *(DerivedStorage + 24);
  v3 = MEMORY[0x1E695E480];
  if (v2)
  {
    v4 = CFRetain(v2);
    v5 = *v3;
    if (v4)
    {
      v6 = v4;
      FigAssetGetCMBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(v8, @"assetProperty_CPEProtector", v5, &v42[1] + 8);
      }

      CFRelease(v6);
    }
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
  }

  while (1)
  {
    FigSimpleMutexLock();
    v10 = *(DerivedStorage + 64);
    if (!v10)
    {
      break;
    }

    FigSimpleMutexUnlock();
    if (*(v10 + 8) || *DerivedStorage)
    {
      v11 = -12432;
    }

    else
    {
      v32 = aig_createImageAtTimeInternal(v42, a1, &v41, v10, &cf, &v38);
      if (*DerivedStorage)
      {
        v11 = -12785;
      }

      else if (*(v10 + 8))
      {
        v11 = -12432;
      }

      else
      {
        v11 = v32;
      }
    }

    v12 = *(v10 + 40);
    if (v12)
    {
      Value = CFDictionaryGetValue(v12, @"RequestID");
      v14 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    else
    {
      v14 = 0;
    }

    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 64);
    v16 = *v15;
    *(DerivedStorage + 64) = *v15;
    if (!v16)
    {
      *(DerivedStorage + 72) = DerivedStorage + 64;
      *(DerivedStorage + 96) = 0;
    }

    FigSimpleMutexUnlock();
    FAIGCommon_releaseImageRequest(v10);
    v17 = cf;
    *&v37.value = v38;
    v37.epoch = v39;
    valuePtr = v11;
    keys = 0;
    v48[0] = 0;
    v48[1] = 0;
    values = 0;
    v46[0] = 0;
    v46[1] = 0;
    v18 = CMBaseObjectGetDerivedStorage();
    if (v11)
    {
      keys = @"Result";
      values = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      v19 = 1;
      v20 = kFigAssetImageGeneratorNotification_FailedToGenerateCGImage;
    }

    else
    {
      if (v17)
      {
        keys = @"CGImage";
        values = CFRetain(v17);
        p_keys = v48;
        p_values = v46;
        v19 = 2;
      }

      else
      {
        p_keys = &keys;
        p_values = &values;
        v19 = 1;
      }

      *p_keys = @"FigTime";
      time = v37;
      *p_values = CMTimeCopyAsDictionary(&time, v5);
      v20 = kFigAssetImageGeneratorNotification_DidGenerateCGImage;
    }

    v23 = *v20;
    if (v14)
    {
      v48[v19 - 1] = @"RequestID";
      v46[v19++ - 1] = CFRetain(v14);
    }

    v24 = CFDictionaryCreate(v5, &keys, &values, v19, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v25 = MEMORY[0x19A8D0E00](v18 + 112);
    if (v25)
    {
      v26 = v25;
      v27 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00406B48E91AuLL);
      if (v23)
      {
        v28 = CFRetain(v23);
      }

      else
      {
        v28 = 0;
      }

      v27[1] = v28;
      if (v24)
      {
        v29 = CFRetain(v24);
      }

      else
      {
        v29 = 0;
      }

      v27[2] = v29;
      *v27 = v26;
      dispatch_async_f(sAIGNotificationQueue, v27, aig_postNotificationAsynchronously);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    v30 = 0;
    do
    {
      v31 = v46[v30 - 1];
      if (v31)
      {
        CFRelease(v31);
        v46[v30 - 1] = 0;
      }

      ++v30;
    }

    while (v19 != v30);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v38 = v35;
    v39 = v34;
    if (!v16)
    {
      goto LABEL_51;
    }
  }

  *(DerivedStorage + 96) = 0;
  FigSimpleMutexUnlock();
LABEL_51:
  aig_cleanupImageRetrievalObjects(v42);
  return 0;
}

uint64_t OUTLINED_FUNCTION_2_143(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return CMNotificationCenterAddListener();
}

void TrackFragmentBuilderRelease(const __CFAllocator **ptr)
{
  if (ptr)
  {
    v2 = *ptr;
    v3 = ptr[11];
    if (v3)
    {
      tfbTrackFragmentRelease(*ptr, v3);
      ptr[11] = 0;
    }

    v4 = ptr[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = ptr[3];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = ptr[4];
    if (v6)
    {
      CFRelease(v6);
    }

    CFAllocatorDeallocate(v2, ptr);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void TrackFragmentBuilderSampleTableRelease(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 88);
    if (v2)
    {
      tfbTrackFragmentRelease(*result, v2);
      *(result + 88) = 0;
    }
  }
}

uint64_t TrackFragmentBuilderGetMinDecodeToDisplay(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 84);
    }

    else
    {
      TrackFragmentBuilderGetMinDecodeToDisplay_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    TrackFragmentBuilderGetMinDecodeToDisplay_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t TrackFragmentBuilderGetMaxDecodeToDisplay(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 80);
    }

    else
    {
      TrackFragmentBuilderGetMaxDecodeToDisplay_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    TrackFragmentBuilderGetMaxDecodeToDisplay_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_1(&v8);
    return v8;
  }

  v5 = *(a1 + 88);
  v8 = 0;
  if (v5)
  {
    LOBYTE(v5) = FigCFDictionaryGetInt32IfPresent();
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_1(&v8);
    return v8;
  }

  v5 = *(a1 + 88);
  v8 = 0;
  if (v5)
  {
    LOBYTE(v5) = FigCFDictionaryGetInt32IfPresent();
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_1(&v8);
    return v8;
  }

  v5 = *(a1 + 88);
  v8 = 0;
  if (v5)
  {
    LOBYTE(v5) = FigCFDictionaryGetInt32IfPresent();
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_1(&v8);
    return v8;
  }

  v5 = *(a1 + 88);
  v8 = 0;
  if (v5)
  {
    LOBYTE(v5) = FigCFDictionaryGetInt32IfPresent();
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  *a3 = v5;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleAuxInformation(uint64_t a1, _BYTE *a2, _DWORD *a3, CMBlockBufferRef *a4, CMBlockBufferRef *a5, _BYTE *a6)
{
  if (!a1)
  {
    TrackFragmentBuilderGetSampleAuxInformation_cold_1(&v18);
    return v18;
  }

  v11 = *(a1 + 88);
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = *(v11 + 48);
  if (!v12 || !CMBlockBufferGetDataLength(v12[3]))
  {
    LODWORD(v11) = 0;
LABEL_7:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v13 = *v12;
  LODWORD(v11) = *(v12 + 1);
  v14 = v12[1];
  v15 = v12[3];
  v16 = *(v12 + 41);
LABEL_8:
  result = 0;
  *a2 = v13;
  *a3 = v11;
  *a4 = v14;
  *a5 = v15;
  *a6 = v16;
  return result;
}

uint64_t TrackFragmentBuilderCopySampleGroupDescriptionArrays(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        v4 = v3[8];
        if (v4)
        {
          v3 = CFRetain(v4);
        }

        else
        {
          v3 = 0;
        }
      }

      result = 0;
      *a2 = v3;
    }

    else
    {
      TrackFragmentBuilderCopySampleGroupDescriptionArrays_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderCopySampleGroupDescriptionArrays_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t TrackFragmentBuilderCopySampleGroupArray(const __CFAllocator **a1, CFArrayRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = a1[11];
      if (v3)
      {
        v4 = *(v3 + 7);
        if (v4)
        {
          v3 = MovieSampleGroupCollectionCopySampleGroupArray(*a1, v4);
        }

        else
        {
          v3 = 0;
        }
      }

      result = 0;
      *a2 = v3;
    }

    else
    {
      TrackFragmentBuilderCopySampleGroupArray_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderCopySampleGroupArray_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  if (!a1)
  {
    TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue_cold_2(&v8);
    return v8;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v7);
  if (!v3)
  {
    TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue_cold_1(&v8);
    return v8;
  }

  v4 = v3;
  v5 = *(a1 + 24);
  *(a1 + 24) = v3;
  CFRetain(v3);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v4);
  return 0;
}

uint64_t TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue(void *a1, void *a2, char *a3)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_3(&valuePtr);
    return valuePtr;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_2(&valuePtr);
    return valuePtr;
  }

  if (!a3)
  {
    TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_1(&valuePtr);
    return valuePtr;
  }

  v6 = a1[11];
  if (v6)
  {
    v7 = a1[3];
    if (v7)
    {
      valuePtr = 0;
      CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr);
      v8 = *(v6 + 16) - a1[5] + valuePtr;
    }

    else
    {
      v8 = *(v6 + 16);
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  result = 0;
  *a2 = v8;
  *a3 = v9;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue(void *a1, void *a2)
{
  if (!a1)
  {
    TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue_cold_2(&valuePtr);
    return valuePtr;
  }

  if (!a2)
  {
    TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue_cold_1(&valuePtr);
    return valuePtr;
  }

  v4 = a1[11];
  if (v4)
  {
    v5 = a1[3];
    if (v5)
    {
      valuePtr = 0;
      CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
      v6 = *(v4 + 32) - a1[5] + valuePtr;
    }

    else
    {
      v6 = *(v4 + 32);
    }
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 88);
      if (v2)
      {
        v2 = *(v2 + 24);
      }

      result = 0;
      *a2 = v2;
    }

    else
    {
      TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t TrackFragmentBuilderNumTrackRuns(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        v4 = *(v3 + 40);
        if (v4)
        {
          LODWORD(v3) = CFArrayGetCount(v4);
        }

        else
        {
          LODWORD(v3) = 0;
        }
      }

      result = 0;
      *a2 = v3;
    }

    else
    {
      TrackFragmentBuilderNumTrackRuns_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderNumTrackRuns_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t tfbGetTrackRunAtIndex(uint64_t a1, CFIndex idx, void *a3)
{
  v4 = idx;
  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      LODWORD(v7) = CFArrayGetCount(v7);
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v4 < 0 || v7 <= v4)
  {
    tfbGetTrackRunAtIndex_cold_1(&v10);
    return v10;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 88) + 40), v4);
    result = 0;
    *a3 = ValueAtIndex;
  }

  return result;
}

uint64_t TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        tfbGetSampleValueArrayBbufAtTrackRunIndex(a1, a2, @"SampleDurationKey", a3, a4);
        return 0;
      }

      else
      {
        TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_3(&v7);
    return v7;
  }
}

uint64_t TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        tfbGetSampleValueArrayBbufAtTrackRunIndex(a1, a2, @"SampleSizeKey", a3, a4);
        return 0;
      }

      else
      {
        TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_3(&v7);
    return v7;
  }
}

uint64_t TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        tfbGetSampleValueArrayBbufAtTrackRunIndex(a1, a2, @"SampleFlagsKey", a3, a4);
        return 0;
      }

      else
      {
        TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_3(&v7);
    return v7;
  }
}

uint64_t TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        tfbGetSampleValueArrayBbufAtTrackRunIndex(a1, a2, @"SampleCompositionTimeOffsetKey", a3, a4);
        return 0;
      }

      else
      {
        TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_3(&v7);
    return v7;
  }
}

uint64_t tfbGetSampleDurationAtIndexFunc(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    tfbGetSampleDurationAtIndexFunc_cold_2();
    return 0;
  }

  if (a1 == 1)
  {
    return *a2;
  }

  if (a3 >= a1)
  {
    tfbGetSampleDurationAtIndexFunc_cold_1();
    return 0;
  }

  return *(a2 + 72 * a3);
}

uint64_t tfbGetSampleSizeAtIndexFunc(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    tfbGetSampleSizeAtIndexFunc_cold_2();
    return 0;
  }

  if (a1 == 1)
  {
    return *a2;
  }

  if (a3 >= a1)
  {
    tfbGetSampleSizeAtIndexFunc_cold_1();
    return 0;
  }

  return *(a2 + 8 * a3);
}

const void *tfbGetSampleFlagsAtIndexFunc(uint64_t a1, CFArrayRef theArray, int a3)
{
  if (!theArray)
  {
    return 0;
  }

  if (a3 >= a1)
  {
    tfbGetSampleFlagsAtIndexFunc_cold_1();
    return 0;
  }

  else
  {
    result = CFArrayGetValueAtIndex(theArray, a3);
    if (result)
    {
      v4 = 0;
      FigMovieGetSampleDependencyFlagsFromSampleAttachments(result, &v4 + 1, &v4, 0);
      return ((HIBYTE(v4) << 20) | ((v4 != 0) << 16));
    }
  }

  return result;
}

uint64_t tfbGetSampleCompositionTimeOffsetAtIndexFunc(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    tfbGetSampleCompositionTimeOffsetAtIndexFunc_cold_2();
    return 0;
  }

  if (a1 != 1)
  {
    if (a3 < a1)
    {
      a2 += 72 * a3;
      return (*(a2 + 24) - *(a2 + 48));
    }

    tfbGetSampleCompositionTimeOffsetAtIndexFunc_cold_1();
    return 0;
  }

  return (*(a2 + 24) - *(a2 + 48));
}

void tfbTrackFragmentRelease(CFAllocatorRef allocator, void *ptr)
{
  if (ptr)
  {
    v4 = *(ptr + 5);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(ptr + 5), i);
          tfbTrackRunRelease(allocator, ValueAtIndex);
        }
      }
    }

    v9 = *(ptr + 6);
    if (v9)
    {
      v10 = v9[1];
      if (v10)
      {
        CFRelease(v10);
        v9 = *(ptr + 6);
      }

      v11 = v9[2];
      if (v11)
      {
        CFRelease(v11);
        v9 = *(ptr + 6);
      }

      v12 = v9[3];
      if (v12)
      {
        CFRelease(v12);
        v9 = *(ptr + 6);
      }

      v13 = v9[4];
      if (v13)
      {
        CFRelease(v13);
        v9 = *(ptr + 6);
      }

      CFAllocatorDeallocate(allocator, v9);
    }

    v14 = *(ptr + 5);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(ptr + 1);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(ptr + 7);
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = *(ptr + 8);
    if (v17)
    {
      CFRelease(v17);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

uint64_t tfbSetTrackFragmentHeaderDefaultValueIfNeeded(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  if (FigCFEqual())
  {
    return 0;
  }

  CFDictionaryRemoveValue(*(*(a1 + 88) + 8), a2);
  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  result = 0;
  if (Int32IfPresent)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    if (*(a1 + 88))
    {
      return FigCFDictionarySetInt32();
    }

    else
    {
      tfbSetTrackFragmentHeaderDefaultValueIfNeeded_cold_1(&v9);
      return v9;
    }
  }

  return result;
}

void tfbTrackRunRelease(const __CFAllocator *a1, CFDictionaryRef *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  Count = CFDictionaryGetCount(a2[3]);
  v11 = 0u;
  v12 = 0u;
  if (Count >= 5)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, DWORD2(v11), v12);
    CFDictionaryGetKeysAndValues(a2[3], 0, &v11);
    goto LABEL_5;
  }

  CFDictionaryGetKeysAndValues(a2[3], 0, &v11);
  if (Count >= 1)
  {
LABEL_5:
    v5 = &v11;
    do
    {
      v6 = *v5;
      v7 = **v5;
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = v6[2];
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = v6[3];
      if (v9)
      {
        CFRelease(v9);
      }

      CFAllocatorDeallocate(a1, v6);
      ++v5;
      --Count;
    }

    while (Count);
  }

  v10 = a2[3];
  if (v10)
  {
    CFRelease(v10);
  }

  CFAllocatorDeallocate(a1, a2);
}

uint64_t tfbGetCurrentTrackRun(uint64_t a1, void *a2)
{
  v4 = *(a1 + 88);
  if (v4 && (v5 = *(v4 + 40)) != 0)
  {
    v6 = CFArrayGetCount(v5) - 1;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return tfbGetTrackRunAtIndex(a1, v6, a2);
}

uint64_t tfbGetTrackFragmentGlobalDefaultValue(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 88))
  {
    if (!FigCFEqual() && !FigCFDictionaryGetInt32IfPresent())
    {
      FigCFDictionaryGetInt32IfPresent();
    }

    result = 0;
    *a3 = 0;
  }

  else
  {
    tfbGetTrackFragmentGlobalDefaultValue_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t tfbCreateBlockBufferByteStream(const __CFAllocator *a1, CMBlockBufferRef *a2, void *a3)
{
  blockBufferOut = 0;
  v5 = CMBlockBufferCreateEmpty(a1, 0x10u, 0, &blockBufferOut);
  if (v5)
  {
    WritableForBlockBuffer = v5;
  }

  else
  {
    WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
    if (!WritableForBlockBuffer)
    {
      *a2 = blockBufferOut;
      *a3 = 0;
      return WritableForBlockBuffer;
    }
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return WritableForBlockBuffer;
}

uint64_t OUTLINED_FUNCTION_4_115(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  return tfbAddSampleGroupForGroupType(a1, a2, a3, a4, v4, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_11_57(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return tfbAddSampleGroupForGroupType(a1, a2, a3, 1, 1, a6, 0, 0);
}

uint64_t FigTTMLStyleCreate(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v7 = CMDerivedObjectCreate();
    if (!v7)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
      if (v9)
      {
        return v9;
      }

      else
      {
        v7 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
        if (!v7)
        {
          *a3 = 0;
          *(a3 + 8) = 0;
          FigTTMLParseNode(a2, figTTMLStyle_ConsumeChildNode, a3);
          v7 = v10;
          if (!v10)
          {
            *a4 = 0;
          }
        }
      }
    }
  }

  else
  {
    FigTTMLStyleCreate_cold_1(&v12);
    return v12;
  }

  return v7;
}

uint64_t figTTMLStyle_ConsumeChildNode(uint64_t a1, uint64_t *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (a3)
  {
    if (!result)
    {
      *a3 = 0;
    }
  }

  return result;
}

void figTTMLStyle_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLStyle_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"style: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLStyle_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = CFGetAllocator(a1);
    *a2 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    figTTMLStyle_CopyChildNodeArray_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12), vars0);
  }

  return 0;
}

uint64_t figTTMLStyle_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 13;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLExtension_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

void MovieHeaderMakerRelease(const __CFAllocator **ptr)
{
  if (ptr)
  {
    v2 = *ptr;
    v3 = ptr[11];
    if (v3)
    {
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ptr[11], i);
          releaseTrack_0(v2, ValueAtIndex);
        }
      }

      v8 = ptr[11];
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v9 = ptr[1];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = ptr[3];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = ptr[4];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = ptr[5];
    if (v12)
    {
      CFRelease(v12);
    }

    CFAllocatorDeallocate(v2, ptr);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void releaseTrack_0(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

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

  v6 = ptr[3];
  if (v6)
  {
    CFRelease(v6);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

void MovieHeaderMakerAddTrack(uint64_t a1, const void *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v7 = *(a1 + 88);
      if (v7 && (Count = CFArrayGetCount(v7), Count >= 1))
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(*(a1 + 88), v10);
          if (FigCFEqual())
          {
            break;
          }

          if (v9 == ++v10)
          {
            goto LABEL_8;
          }
        }

        emitter = fig_log_get_emitter();

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950965, "< MovieHeaderMaker >", 1536, v3);
      }

      else
      {
LABEL_8:
        if ((*(a1 + 16) & 2) != 0)
        {
          MovieHeaderMakerAddTrack_cold_1(&v12);
        }

        else
        {

          addTrack(a1, a2, a3);
        }
      }
    }

    else
    {
      MovieHeaderMakerAddTrack_cold_2(&v13);
    }
  }

  else
  {
    MovieHeaderMakerAddTrack_cold_3(&v14);
  }
}

uint64_t isMovieHeaderMakerSupportedFileType(uint64_t a1)
{
  if (FigFileTypeIsQTMovieFileType(a1))
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  result = FigCFEqual();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t MovieHeaderMakerSetShouldWriteMovieExtendsAtom(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 48) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerSetShouldWriteMovieExtendsAtom_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerSetShouldAllow64BitDataOffsetInTrackRunAtom(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 49) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerSetShouldAllow64BitDataOffsetInTrackRunAtom_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerSetMovieMetadataBlockBuffer(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    *(a1 + 40) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  else
  {
    MovieHeaderMakerSetMovieMetadataBlockBuffer_cold_1(&v4);
    return v4;
  }
}

uint64_t MovieHeaderMakerTrackSetTrackMetadataBlockBuffer(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 16);
      *(a2 + 16) = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      return 0;
    }

    else
    {
      MovieHeaderMakerTrackSetTrackMetadataBlockBuffer_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetTrackMetadataBlockBuffer_cold_2(&v6);
    return v6;
  }
}

uint64_t MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 32) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 33) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 34) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetSampleReferenceBaseURL(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 24);
      *(a2 + 24) = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      return 0;
    }

    else
    {
      MovieHeaderMakerTrackSetSampleReferenceBaseURL_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetSampleReferenceBaseURL_cold_2(&v6);
    return v6;
  }
}

uint64_t MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 35) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 36) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 44) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        *a3 = *(a2 + 44);
      }

      else
      {
        MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 40) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerAddByteCountToTrackRunDataOffsets(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 128) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerAddByteCountToTrackRunDataOffsets_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEditAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    result = 0;
    *(a2 + 37) = a3;
  }

  else
  {
    v7 = v3;
    v8 = v4;
    MovieHeaderMakerTrackSetShouldWriteEditAtom_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 38) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 39) = a3;
    }

    else
    {
      MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t MovieHeaderMakerSetShouldWriteBaseMediaDecodeTimeAtomInTrackFragment(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 136) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerSetShouldWriteBaseMediaDecodeTimeAtomInTrackFragment_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerSetShouldWriteBaseDataOffsetIsMovieFragmentAtomFlagInTrackFragment(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 137) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerSetShouldWriteBaseDataOffsetIsMovieFragmentAtomFlagInTrackFragment_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerAddByteCountToChunkOffsets(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 80) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    MovieHeaderMakerAddByteCountToChunkOffsets_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerTrackDidWriteEditAtom(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        *a3 = *(a2 + 41);
      }

      else
      {
        MovieHeaderMakerTrackDidWriteEditAtom_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MovieHeaderMakerTrackDidWriteEditAtom_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MovieHeaderMakerTrackDidWriteEditAtom_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration(uint64_t a1, CMTime *a2)
{
  if (!a1)
  {
    MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration_cold_2(&time1);
    return LODWORD(time1.value);
  }

  if (a2->flags)
  {
    if ((a2->flags & 0x1D) != 1 || (time1 = **&MEMORY[0x1E6960CC0], v6 = *a2, CMTimeCompare(&time1, &v6) >= 1))
    {
      MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration_cold_1(&time1);
      return LODWORD(time1.value);
    }
  }

  result = 0;
  v5 = *&a2->value;
  *(a1 + 68) = a2->epoch;
  *(a1 + 52) = v5;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeMajorBrand(uint64_t a1, uint64_t a2, uint64_t a3, char a4, CFNumberRef *a5)
{
  if (!isMovieHeaderMakerSupportedFileType(a2))
  {
    MovieHeaderMakerCopyFileTypeMajorBrand_cold_2(&v13);
    return v13;
  }

  if (!a5)
  {
    MovieHeaderMakerCopyFileTypeMajorBrand_cold_1(&v12);
    return v12;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v7 = 1769172789;
    }

    else
    {
      v7 = 1836069938;
    }
  }

  else
  {
    if (FigCFEqual())
    {
      v8 = 22048;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (FigCFEqual())
        {
          v7 = 862416949;
          if (a4)
          {
            v7 = 862416950;
          }
        }

        else if (FigCFEqual())
        {
          v7 = 1835623985;
        }

        else if (FigCFEqual())
        {
          v7 = 1768780148;
        }

        else
        {
          v7 = 1903435808;
        }

        goto LABEL_12;
      }

      v8 = 16672;
    }

    v7 = v8 | 0x4D340000;
  }

LABEL_12:
  valuePtr = v7;
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  result = 0;
  *a5 = v9;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeMinorVersion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFNumberRef *a5)
{
  if (!isMovieHeaderMakerSupportedFileType(a2))
  {
    MovieHeaderMakerCopyFileTypeMinorVersion_cold_2(&v11);
    return v11;
  }

  if (!a5)
  {
    MovieHeaderMakerCopyFileTypeMinorVersion_cold_1(&v10);
    return v10;
  }

  if (!FigCFEqual() && !FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v6 = 256;
        goto LABEL_6;
      }

      FigCFEqual();
    }

    valuePtr = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_6:
  valuePtr = v6;
LABEL_7:
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  result = 0;
  *a5 = v7;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeCompatibleBrands(const __CFAllocator *a1, uint64_t a2, uint64_t a3, char a4, CFMutableArrayRef *a5)
{
  if (!isMovieHeaderMakerSupportedFileType(a2))
  {
    MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_3(&v13);
    return v13;
  }

  if (!a5)
  {
    MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_2(&v12);
    return v12;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_1(&v11);
    return v11;
  }

  v9 = Mutable;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      FigCFArrayAppendInt32();
    }

    else if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        FigCFArrayAppendInt32();
        if (a4)
        {
          goto LABEL_13;
        }
      }

      else if (FigCFEqual() || !FigCFEqual())
      {
        goto LABEL_13;
      }

      goto LABEL_6;
    }

    FigCFArrayAppendInt32();
    FigCFArrayAppendInt32();
    goto LABEL_13;
  }

  FigCFArrayAppendInt32();
  if ((a4 & 1) == 0)
  {
LABEL_6:
    FigCFArrayAppendInt32();
LABEL_13:
    FigCFArrayAppendInt32();
    goto LABEL_14;
  }

  FigCFArrayAppendInt32();
  FigCFArrayAppendInt32();
  if (FigCFEqual())
  {
    goto LABEL_13;
  }

LABEL_14:
  result = 0;
  *a5 = v9;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer(const __CFAllocator *a1, const __CFNumber *a2, const __CFNumber *a3, CFArrayRef theArray, CMBlockBufferRef *a5)
{
  valuePtr = 0;
  v20 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  dataPointerOut = 0;
  theBuffer = 0;
  if (!a2)
  {
    MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_4(&v22);
    return v22;
  }

  if (!a3)
  {
    MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_3(&v22);
    return v22;
  }

  if (!theArray)
  {
    MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_2(&v22);
    return v22;
  }

  if (!a5)
  {
    MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_1(&v22);
    return v22;
  }

  v11 = CMBlockBufferCreateWithMemoryBlock(a1, 0, 4 * Count + 16, a1, 0, 0, 4 * Count + 16, 1u, &theBuffer);
  v12 = theBuffer;
  if (!v11)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (!DataPointer)
    {
      *dataPointerOut = bswap32(4 * Count + 16);
      v14 = dataPointerOut;
      dataPointerOut += 4;
      *(v14 + 1) = 1887007846;
      dataPointerOut += 4;
      CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
      valuePtr = bswap32(valuePtr);
      *dataPointerOut = valuePtr;
      dataPointerOut += 4;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &v20 + 4);
      HIDWORD(v20) = bswap32(HIDWORD(v20));
      *dataPointerOut = HIDWORD(v20);
      dataPointerOut += 4;
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &v20);
          LODWORD(v20) = bswap32(v20);
          *dataPointerOut = v20;
          dataPointerOut += 4;
        }
      }

      v11 = 0;
      *a5 = theBuffer;
      return v11;
    }

    v11 = DataPointer;
    v12 = theBuffer;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer(CFAllocatorRef blockAllocator, int a2, unint64_t a3, CMBlockBufferRef *a4)
{
  destinationBuffer = 0;
  sourceBytes = 0;
  if (a2)
  {
    v5 = 16;
  }

  else
  {
    v5 = 8;
  }

  if (a4)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_2(&v15);
    }

    else
    {
      v8 = CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, v5, blockAllocator, 0, 0, v5, 1u, &destinationBuffer);
      if (v8)
      {
        goto LABEL_18;
      }

      if (!HIDWORD(a3))
      {
        if (a2)
        {
          sourceBytes = 0x6564697708000000;
          v9 = 8;
          v8 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 8uLL);
          if (v8)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v9 = 0;
        }

        sourceBytes = bswap32(a3) | 0x7461646D00000000;
        v10 = destinationBuffer;
        p_sourceBytes = &sourceBytes;
        v12 = v9;
LABEL_16:
        v8 = CMBlockBufferReplaceDataBytes(p_sourceBytes, v10, v12, 8uLL);
        if (!v8)
        {
          v13 = 0;
          *a4 = destinationBuffer;
          return v13;
        }

        goto LABEL_18;
      }

      if (a2 == 1)
      {
        sourceBytes = 0x7461646D01000000;
        v8 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 8uLL);
        if (!v8)
        {
          v15 = bswap64(a3 + 8);
          v10 = destinationBuffer;
          p_sourceBytes = &v15;
          v12 = 8;
          goto LABEL_16;
        }

LABEL_18:
        v13 = v8;
        goto LABEL_19;
      }

      MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_1(&v15);
    }
  }

  else
  {
    MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_3(&v15);
  }

  v13 = v15;
LABEL_19:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v13;
}

uint64_t MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer(uint64_t a1, const __CFAllocator *a2, uint64_t a3, int a4, CMBlockBufferRef *a5)
{
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  blockBufferOut = 0;
  *(a1 + 124) = a4;
  *(a1 + 112) = a3;
  *(a1 + 120) = FigFileTypeIsISOFileType(a3);
  v8 = CMBlockBufferCreateEmpty(a2, 0x40u, 0, &blockBufferOut);
  if (v8 || (v8 = FigAtomWriterInitWithBlockBuffer(), v8))
  {
    appended = v8;
  }

  else
  {
    v62 = a5;
    v9 = *(a1 + 88);
    if (!v9 || (Count = CFArrayGetCount(v9), Count < 1))
    {
LABEL_204:
      FigAtomWriterEndAtom();
      appended = 0;
      *v62 = blockBufferOut;
      *(a1 + 124) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      return appended;
    }

    v11 = Count;
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v12);
      LODWORD(v79) = 0;
      v14 = MovieTrackFragmentNumTrackRuns(*ValueAtIndex, &v79);
      if (v14)
      {
        goto LABEL_212;
      }

      v15 = *(ValueAtIndex + 37);
      if (v15)
      {
        v15 = *(ValueAtIndex + 38) != 0;
      }

      if (v79 || (v15 & 1) != 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_204;
      }
    }

    v16 = *(a1 + 88);
    if (v16)
    {
      v17 = CFArrayGetCount(v16);
    }

    else
    {
      v17 = 0;
    }

    v14 = FigAtomWriterBeginAtom();
    if (v14)
    {
LABEL_212:
      appended = v14;
    }

    else
    {
      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      LODWORD(v71[0]) = bswap32(*(a1 + 124));
      v18 = FigAtomWriterInitWithParent();
      if (v18 || (v18 = FigAtomWriterBeginAtom(), v18) || (v18 = FigAtomWriterAppendVersionAndFlags(), v18))
      {
        appended = v18;
LABEL_208:
        FigAtomWriterEndAtom();
      }

      else
      {
        appended = FigAtomWriterAppendData();
        FigAtomWriterEndAtom();
        if (!appended)
        {
          if (v17 >= 1)
          {
            v20 = 0;
            structureAllocator = *MEMORY[0x1E695E480];
            while (1)
            {
              v21 = CFArrayGetValueAtIndex(*(a1 + 88), v20);
              v22 = v21;
              v72 = 0;
              memset(v71, 0, sizeof(v71));
              v70 = 0;
              v23 = v21[37] && v21[38] && FigCFEqual() == 0;
              v24 = MovieTrackFragmentNumTrackRuns(*v22, &v70);
              if (v24)
              {
LABEL_213:
                appended = v24;
                goto LABEL_208;
              }

              v64 = v20;
              if (v70 != 0 || v23)
              {
                v24 = FigAtomWriterInitWithParent();
                if (v24)
                {
                  goto LABEL_213;
                }

                v24 = FigAtomWriterBeginAtom();
                if (v24)
                {
                  goto LABEL_213;
                }

                v82 = 0;
                v80 = 0u;
                v81 = 0u;
                v79 = 0u;
                v25 = *v22;
                LODWORD(v92) = 0;
                LODWORD(v88) = 0;
                BYTE4(v91) = 0;
                LODWORD(v87) = 0;
                LODWORD(v86) = 0;
                LODWORD(v85) = 0;
                LODWORD(v84) = 0;
                BasicInfo = MovieTrackGetBasicInfo(v25, 0, &v92);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v27 = *(a1 + 137);
                BasicInfo = MovieTrackFragmentGetTrackFragmentHeaderSampleDescriptionIndex(v25, &v87, &v91 + 4);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v28 = BYTE4(v91);
                BasicInfo = MovieTrackFragmentGetTrackFragmentHeaderDefaultSampleDuration(v25, &v86, &v91 + 4);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v29 = BYTE4(v91);
                BasicInfo = MovieTrackFragmentGetTrackFragmentHeaderDefaultSampleSize(v25, &v85, &v91 + 4);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v30 = v17;
                v31 = BYTE4(v91);
                BasicInfo = MovieTrackFragmentGetTrackFragmentHeaderDefaultSampleFlags(v25, &v84, &v91 + 4);
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v32 = v27 == 0;
                if (v28)
                {
                  v32 |= 2u;
                }

                if (v29)
                {
                  v32 |= 8u;
                }

                if (v31)
                {
                  v32 |= 0x10u;
                }

                v33 = BYTE4(v91) ? v32 | 0x20 : v32;
                BasicInfo = FigAtomWriterInitWithParent();
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                BasicInfo = FigAtomWriterBeginAtom();
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                BasicInfo = FigAtomWriterAppendVersionAndFlags();
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                LODWORD(v88) = bswap32(v92);
                BasicInfo = FigAtomWriterAppendData();
                if (BasicInfo)
                {
                  goto LABEL_206;
                }

                v17 = v30;
                if (v33)
                {
                  LODWORD(v77) = 0;
                  v93[0] = 0;
                  BasicInfo = MovieTrackFragmentNumTrackRuns(v25, &v77);
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  if (v77)
                  {
                    MovieTrackFragmentGetDataOffsetAtTrackRunIndex(v25, 0, (v22 + 80));
                    if (BasicInfo)
                    {
                      goto LABEL_206;
                    }

                    v34 = *(v22 + 80);
                  }

                  else
                  {
                    v34 = 0;
                    *(v22 + 80) = 0;
                  }

                  v93[0] = bswap64(v34);
                  BasicInfo = FigAtomWriterAppendData();
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }
                }

                if ((v33 & 2) != 0 && (LODWORD(v93[0]) = bswap32(v87), BasicInfo = FigAtomWriterAppendData(), BasicInfo) || (v33 & 8) != 0 && (LODWORD(v93[0]) = bswap32(v86), BasicInfo = FigAtomWriterAppendData(), BasicInfo) || (v33 & 0x10) != 0 && (LODWORD(v93[0]) = bswap32(v85), BasicInfo = FigAtomWriterAppendData(), BasicInfo))
                {
LABEL_206:
                  appended = BasicInfo;
LABEL_207:
                  FigAtomWriterEndAtom();
                  goto LABEL_208;
                }

                if ((v33 & 0x20) != 0)
                {
                  LODWORD(v93[0]) = bswap32(v84);
                  appended = FigAtomWriterAppendData();
                  FigAtomWriterEndAtom();
                  if (appended)
                  {
                    goto LABEL_208;
                  }
                }

                else
                {
                  FigAtomWriterEndAtom();
                }

                if (v23)
                {
                  appended = appendEditAtom(a1, v22, 0, v71);
                  if (appended || !v70)
                  {
                    FigAtomWriterEndAtom();
                    if (appended)
                    {
                      goto LABEL_209;
                    }

                    goto LABEL_200;
                  }
                }

                else if (!v70)
                {
                  goto LABEL_199;
                }

                if (*(a1 + 136))
                {
                  v82 = 0;
                  v80 = 0u;
                  v81 = 0u;
                  v79 = 0u;
                  LOBYTE(v88) = 0;
                  v92 = 0;
                  v93[0] = 0;
                  BasicInfo = MovieTrackFragmentGetTrackFragmentBaseMediaDecodeTimeValue(*v22, v93, &v88);
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  if (v88 != 1)
                  {
                    appended = 4294950954;
                    goto LABEL_207;
                  }

                  BasicInfo = FigAtomWriterInitWithParent();
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  BasicInfo = FigAtomWriterBeginAtom();
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  BasicInfo = FigAtomWriterAppendVersionAndFlags();
                  if (BasicInfo)
                  {
                    goto LABEL_206;
                  }

                  v92 = bswap64(v93[0]);
                  appended = FigAtomWriterAppendData();
                  FigAtomWriterEndAtom();
                  if (appended)
                  {
                    goto LABEL_208;
                  }
                }

                if (*(v22 + 40))
                {
                  LOBYTE(v85) = 0;
                  LODWORD(v86) = 0;
                  v92 = 0;
                  v88 = 0;
                  LOBYTE(v84) = 0;
                  if (*(a1 + 137) == 1)
                  {
                    appended = MovieTrackFragmentGetSampleAuxInformation(*v22, &v85, &v86, &v92, &v88, &v84);
                    if (!appended)
                    {
                      v35 = v86;
                      if (v86)
                      {
                        v36 = v88;
                        LODWORD(v87) = v86;
                        v82 = 0;
                        v80 = 0u;
                        v81 = 0u;
                        v79 = 0u;
                        v93[0] = 0;
                        BasicInfo = FigAtomWriterInitWithParent();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterBeginAtom();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterAppendVersionAndFlags();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        LODWORD(v87) = bswap32(v35);
                        BasicInfo = FigAtomWriterAppendData();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        CMBlockBufferGetDataLength(v36);
                        BasicInfo = FigAtomWriterAppendBlockBufferData();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterGetAtomGlobalDataOffset();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        v37 = v93[0];
                        FigAtomWriterEndAtom();
                        v38 = v86;
                        v39 = v92;
                        LOBYTE(v87) = v85;
                        v82 = 0;
                        v80 = 0u;
                        v81 = 0u;
                        v79 = 0u;
                        BasicInfo = FigAtomWriterInitWithParent();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterBeginAtom();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterAppendVersionAndFlags();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        BasicInfo = FigAtomWriterAppendData();
                        if (BasicInfo)
                        {
                          goto LABEL_206;
                        }

                        LODWORD(v93[0]) = bswap32(v38);
                        v40 = FigAtomWriterAppendData();
                        appended = v40;
                        if (v39 && !v40)
                        {
                          CMBlockBufferGetDataLength(v39);
                          appended = FigAtomWriterAppendBlockBufferData();
                        }

                        FigAtomWriterEndAtom();
                        if (appended)
                        {
                          goto LABEL_208;
                        }

                        v41 = v37 + 4;
                        v82 = 0;
                        v80 = 0u;
                        v81 = 0u;
                        v79 = 0u;
                        LODWORD(v87) = 1;
                        v42 = FigAtomWriterInitWithParent();
                        if (!v42)
                        {
                          v42 = FigAtomWriterBeginAtom();
                          if (!v42)
                          {
                            v42 = FigAtomWriterAppendVersionAndFlags();
                            if (!v42)
                            {
                              LODWORD(v87) = 0x1000000;
                              v42 = FigAtomWriterAppendData();
                              if (!v42)
                              {
                                if (v41 <= 0xFFFFFFFFLL)
                                {
                                  LODWORD(v93[0]) = bswap32(v41);
                                }

                                else
                                {
                                  v93[0] = bswap64(v41);
                                }

                                v42 = FigAtomWriterAppendData();
                              }
                            }
                          }
                        }

                        appended = v42;
                        FigAtomWriterEndAtom();
                      }
                    }

                    if (appended)
                    {
                      goto LABEL_208;
                    }
                  }

                  else
                  {
                    MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_1(&v79);
                    appended = v79;
                    if (v79)
                    {
                      goto LABEL_208;
                    }
                  }
                }

                v24 = appendSampleGroupDescriptionAtoms(v22, MovieTrackFragmentCopySampleGroupDescriptionArrays, v71);
                if (v24)
                {
                  goto LABEL_213;
                }

                v24 = appendSampleToGroupAtoms(a1, v22, MovieTrackFragmentCopySampleGroupArray, v71);
                if (v24)
                {
                  goto LABEL_213;
                }

                if (v70 >= 1)
                {
                  v43 = 0;
                  do
                  {
                    v82 = 0;
                    v80 = 0u;
                    v81 = 0u;
                    v79 = 0u;
                    v44 = *v22;
                    v77 = 0;
                    v78 = 0;
                    v76 = 0;
                    v75 = 0;
                    v74 = 0;
                    v73 = 0;
                    MovieTrackFragmentNumSamplesAtTrackRunIndex(v44, v43, &v78 + 1);
                    if (v45 || (MovieTrackFragmentGetDataOffsetAtTrackRunIndex(v44, v43, &v77), v45) || (MovieTrackFragmentGetFirstSampleFlagsAtTrackRunIndex(v44, v43, &v76, &v75), v45) || (getTimeValueToAddToCompositionOffsets(a1, v22, 0, &v74, &v73, &v73 + 1), v45))
                    {
                      appended = v45;
                      goto LABEL_195;
                    }

                    if (HIBYTE(v73))
                    {
                      MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_3(v93);
                      appended = LODWORD(v93[0]);
                      goto LABEL_195;
                    }

                    v46 = v74;
                    v92 = 0;
                    v93[0] = 0;
                    v90 = 0;
                    v91 = 0;
                    v89 = 0;
                    v87 = 0;
                    v88 = 0;
                    v85 = 0;
                    v86 = 0;
                    MovieTrackFragmentNumSamplesAtTrackRunIndex(v44, v43, &v91 + 1);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    SampleDurationArrayBbufAtTrackRunIndex = MovieTrackFragmentGetSampleDurationArrayBbufAtTrackRunIndex(v44, v43, &v91, &v88);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    SampleDurationArrayBbufAtTrackRunIndex = MovieTrackFragmentGetSampleSizeArrayBbufAtTrackRunIndex(v44, v43, &v90 + 1, &v87);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    SampleDurationArrayBbufAtTrackRunIndex = MovieTrackFragmentGetSampleFlagsArrayBbufAtTrackRunIndex(v44, v43, &v90, &v86);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    SampleDurationArrayBbufAtTrackRunIndex = MovieTrackFragmentGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex(v44, v43, &v89, &v85);
                    if (SampleDurationArrayBbufAtTrackRunIndex)
                    {
                      goto LABEL_190;
                    }

                    v48 = v91 != 0;
                    v49 = v88;
                    if (!v91)
                    {
                      v49 = 0;
                    }

                    v50 = v48 << 8;
                    if (v91)
                    {
                      v51 = 2;
                    }

                    else
                    {
                      v51 = 1;
                    }

                    if (HIDWORD(v90))
                    {
                      v49 = v87;
                      v50 = ((v91 != 0) << 8) | 0x200;
                      v48 = v51;
                    }

                    if (v90)
                    {
                      v49 = v86;
                      v50 |= 0x400u;
                      ++v48;
                    }

                    if (v89)
                    {
                      v52 = v85;
                    }

                    else
                    {
                      v52 = v49;
                    }

                    if (v89)
                    {
                      v53 = v50 | 0x800;
                    }

                    else
                    {
                      v53 = v50;
                    }

                    if (v89)
                    {
                      ++v48;
                    }

                    if (v48)
                    {
                      if (v48 == 1)
                      {
                        if (v52)
                        {
                          v52 = CFRetain(v52);
                        }

                        v93[0] = v52;
                      }

                      else
                      {
                        SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCreateEmpty(structureAllocator, 0x10u, 0, v93);
                        if (SampleDurationArrayBbufAtTrackRunIndex)
                        {
                          goto LABEL_190;
                        }

                        SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamCreateWritableForBlockBuffer();
                        if (SampleDurationArrayBbufAtTrackRunIndex)
                        {
                          goto LABEL_190;
                        }

                        if (HIDWORD(v91))
                        {
                          v54 = 0;
                          v55 = 0;
                          while (1)
                          {
                            v84 = 0;
                            if ((v53 & 0x100) != 0)
                            {
                              destination = 0;
                              SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCopyDataBytes(v88, v54, 4uLL, &destination);
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }

                              SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamAppend();
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }
                            }

                            if ((v53 & 0x200) != 0)
                            {
                              destination = 0;
                              SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCopyDataBytes(v87, v54, 4uLL, &destination);
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }

                              SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamAppend();
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }
                            }

                            if ((v53 & 0x400) != 0)
                            {
                              destination = 0;
                              SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCopyDataBytes(v86, v54, 4uLL, &destination);
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }

                              SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamAppend();
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }
                            }

                            if ((v53 & 0x800) != 0)
                            {
                              destination = 0;
                              SampleDurationArrayBbufAtTrackRunIndex = CMBlockBufferCopyDataBytes(v85, v54, 4uLL, &destination);
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }

                              destination = bswap32(bswap32(destination) + v46);
                              SampleDurationArrayBbufAtTrackRunIndex = CMByteStreamAppend();
                              if (SampleDurationArrayBbufAtTrackRunIndex)
                              {
                                break;
                              }
                            }

                            ++v55;
                            v54 += 4;
                            if (v55 >= HIDWORD(v91))
                            {
                              goto LABEL_159;
                            }
                          }

LABEL_190:
                          appended = SampleDurationArrayBbufAtTrackRunIndex;
                          if (v93[0])
                          {
                            CFRelease(v93[0]);
                          }

                          v53 = 0;
                          v56 = 0;
                          goto LABEL_160;
                        }
                      }
                    }

LABEL_159:
                    appended = 0;
                    v56 = v93[0];
                    v93[0] = 0;
LABEL_160:
                    if (v92)
                    {
                      CFRelease(v92);
                    }

                    if (appended)
                    {
                      goto LABEL_180;
                    }

                    if (v75)
                    {
                      v57 = 5;
                    }

                    else
                    {
                      v57 = 1;
                    }

                    v77 = *(a1 + 128) + v77 - *(v22 + 80);
                    if (v77 == v77)
                    {
                      if ((v53 & 0x800) == 0)
                      {
                        LOBYTE(v73) = 0;
                      }
                    }

                    else
                    {
                      if (!*(a1 + 49))
                      {
                        MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_2(v93);
                        appended = LODWORD(v93[0]);
LABEL_180:
                        FigAtomWriterEndAtom();
                        if (v56)
                        {
LABEL_186:
                          CFRelease(v56);
                        }

                        if (appended)
                        {
                          goto LABEL_208;
                        }

                        goto LABEL_188;
                      }

                      LOBYTE(v73) = 2;
                    }

                    v58 = FigAtomWriterInitWithParent();
                    if (v58 || (v58 = FigAtomWriterBeginAtom(), v58) || (v59 = v57 | v53, v58 = FigAtomWriterAppendVersionAndFlags(), v58) || (LODWORD(v78) = bswap32(HIDWORD(v78)), v58 = FigAtomWriterAppendData(), v58) || (v73 > 1u ? (v93[0] = bswap64(v77)) : (LODWORD(v93[0]) = bswap32(v77)), (v58 = FigAtomWriterAppendData(), v58) || (v59 & 4) != 0 && (LODWORD(v93[0]) = bswap32(v76), v58 = FigAtomWriterAppendData(), v58)))
                    {
                      appended = v58;
                      goto LABEL_180;
                    }

                    if (v56)
                    {
                      CMBlockBufferGetDataLength(v56);
                      appended = FigAtomWriterAppendBlockBufferData();
                      FigAtomWriterEndAtom();
                      goto LABEL_186;
                    }

                    appended = 0;
LABEL_195:
                    FigAtomWriterEndAtom();
                    if (appended)
                    {
                      goto LABEL_208;
                    }

LABEL_188:
                    v43 = (v43 + 1);
                  }

                  while (v43 < v70);
                }
              }

LABEL_199:
              FigAtomWriterEndAtom();
LABEL_200:
              v20 = v64 + 1;
              if (v64 + 1 == v17)
              {
                goto LABEL_204;
              }
            }
          }

          goto LABEL_204;
        }
      }
    }

LABEL_209:
    FigAtomWriterEndAtom();
  }

  v61 = blockBufferOut;
  *(a1 + 124) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (v61)
  {
    CFRelease(v61);
  }

  return appended;
}

const __CFArray *hasFormatDescriptionAndNonZeroMediaTimeScale(uint64_t a1)
{
  result = MovieTrackGetNumFormatDescriptions(a1);
  if (result)
  {
    return (MovieTrackGetMediaTimeScale(a1) != 0);
  }

  return result;
}

uint64_t appendSampleToGroupAtoms(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, CFArrayRef *), uint64_t a4)
{
  v29 = a4;
  theArray = 0;
  Info = a3(*a2, &theArray);
  if (Info)
  {
LABEL_74:
    appended = Info;
  }

  else
  {
    if (!theArray)
    {
      return 0;
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v9 = Count;
      v28 = v4;
      v10 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
        v33 = 0;
        v32 = 0;
        v31 = 0;
        Info = MovieSampleGroupGetInfo(ValueAtIndex, &v32, 0, 0, &v31);
        if (Info)
        {
          goto LABEL_74;
        }

        if (*(a2 + 36) || v32 != 1919904876)
        {
          break;
        }

LABEL_64:
        if (v9 == ++v10)
        {
          goto LABEL_69;
        }
      }

      v13 = *(a1 + 120);
      v14 = v32;
      v15 = v33;
      cf = 0;
      v36 = 0;
      if (v31 && v13)
      {
        v16 = MovieSampleGroupCreateNonCompactCopy(ValueAtIndex, &v36);
        if (!v16)
        {
          ValueAtIndex = v36;
          goto LABEL_24;
        }

        goto LABEL_67;
      }

      if (!v31)
      {
LABEL_24:
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        NumSampleToGroupTableEntries = MovieSampleGroupGetNumSampleToGroupTableEntries(ValueAtIndex);
        LODWORD(theBuffer) = 0;
        if (NumSampleToGroupTableEntries)
        {
          v22 = NumSampleToGroupTableEntries;
          v23 = FigAtomWriterInitWithParent();
          if (v23 || (v23 = FigAtomWriterBeginAtom(), v23) || (v23 = FigAtomWriterAppendVersionAndFlags(), v23) || (LODWORD(theBuffer) = bswap32(v14), v23 = FigAtomWriterAppendData(), v23) || v15 && (LODWORD(v41) = bswap32(HIDWORD(v14)), v23 = FigAtomWriterAppendData(), v23) || (LODWORD(v41) = bswap32(v22), v23 = FigAtomWriterAppendData(), v23))
          {
            appended = v23;
          }

          else
          {
            SampleToGroupTable = MovieSampleGroupGetSampleToGroupTable(ValueAtIndex);
            appended = SampleToGroupTable;
            if (SampleToGroupTable)
            {
              CMBlockBufferGetDataLength(SampleToGroupTable);
              appended = FigAtomWriterAppendBlockBufferData();
            }
          }
        }

        else
        {
          appended = 0;
        }

LABEL_58:
        FigAtomWriterEndAtom();
        goto LABEL_59;
      }

      v16 = MovieSampleGroupCreateOptimizedCopy(ValueAtIndex, &cf);
      if (v16)
      {
LABEL_67:
        appended = v16;
LABEL_59:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v36)
        {
          CFRelease(v36);
        }

        if (appended)
        {
          goto LABEL_70;
        }

        goto LABEL_64;
      }

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v39 = 0;
      theBuffer = 0;
      v38 = 0;
      appended = MovieSampleGroupCopyCompactAtomComponents(cf, &v41, &theBuffer, &v39);
      if (appended || !HIDWORD(v41))
      {
LABEL_54:
        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        goto LABEL_58;
      }

      v18 = FigAtomWriterInitWithParent();
      if (!v18)
      {
        v18 = FigAtomWriterBeginAtom();
        if (!v18)
        {
          HIDWORD(v20) = HIDWORD(v42) - 4;
          LODWORD(v20) = HIDWORD(v42) - 4;
          v19 = v20 >> 2;
          if (v19 <= 7 && ((1 << v19) & 0x8B) != 0)
          {
            if (v13)
            {
              v25 = FigAtomWriterAppendVersionAndFlags();
              if (v25)
              {
                goto LABEL_68;
              }

              v38 = bswap32(v14);
              v25 = FigAtomWriterAppendData();
              if (v25)
              {
                goto LABEL_68;
              }

              if (!v15)
              {
LABEL_47:
                v44 = bswap32(v41);
                v18 = FigAtomWriterAppendData();
                if (!v18)
                {
                  if (!theBuffer || (CMBlockBufferGetDataLength(theBuffer), v18 = FigAtomWriterAppendBlockBufferData(), !v18))
                  {
                    if (!v39)
                    {
                      appended = 0;
                      goto LABEL_54;
                    }

                    CMBlockBufferGetDataLength(v39);
                    v18 = FigAtomWriterAppendBlockBufferData();
                  }
                }

                goto LABEL_53;
              }

              v44 = bswap32(HIDWORD(v14));
            }

            else
            {
              v25 = FigAtomWriterAppendVersionAndFlags();
              if (v25)
              {
                goto LABEL_68;
              }

              v38 = bswap32(v14);
              v25 = FigAtomWriterAppendData();
              if (v25)
              {
                goto LABEL_68;
              }

              v26 = bswap32(HIDWORD(v14));
              if (!v15)
              {
                v26 = 0;
              }

              v44 = v26;
              v25 = FigAtomWriterAppendData();
              if (v25)
              {
                goto LABEL_68;
              }

              v37 = bswap32(BYTE4(v42) | ((v43 != 0) << 8));
            }

            v25 = FigAtomWriterAppendData();
            if (!v25)
            {
              goto LABEL_47;
            }

LABEL_68:
            appended = v25;
            goto LABEL_54;
          }

          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v29, v30);
        }
      }

LABEL_53:
      appended = v18;
      goto LABEL_54;
    }

LABEL_69:
    appended = 0;
  }

LABEL_70:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return appended;
}

uint64_t createMetadataSerializerDictionaryWithMetadata(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, const __CFDictionary *a7, CFAllocatorRef allocator, CFMutableDictionaryRef *a9)
{
  v94 = *MEMORY[0x1E69E9840];
  value = 0;
  v81 = 0;
  v13 = *(MEMORY[0x1E695E9F8] + 16);
  *&callBacks.version = *MEMORY[0x1E695E9F8];
  *&callBacks.release = v13;
  *&callBacks.equal = *(MEMORY[0x1E695E9F8] + 32);
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    createMetadataSerializerDictionaryWithMetadata_cold_2(bytes);
LABEL_125:
    v32 = 0;
    v24 = *bytes;
    goto LABEL_113;
  }

  callBacks.equal = 0;
  alloc = *MEMORY[0x1E695E480];
  theSet = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
  if (!theSet)
  {
    createMetadataSerializerDictionaryWithMetadata_cold_1(bytes);
    goto LABEL_125;
  }

  v70 = a4;
  theDict = Mutable;
  if (a6)
  {
    keys[0] = @"dataType";
    keys[1] = @"dataTypeNamespace";
    values[0] = 0;
    values[1] = @"com.apple.itunes";
    valuePtr = 1;
    cf = 0;
    v84 = 0;
    v85 = 0;
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt64IfPresent();
    *&v15 = 0x3030303030303030;
    *(&v15 + 1) = 0x3030303030303030;
    *&bytes[1] = v15;
    *&bytes[17] = v15;
    v89 = v15;
    v90 = v15;
    v91 = v15;
    v92 = v15;
    *v93 = v15;
    *&v93[15] = 808464432;
    bytes[0] = 32;
    snprintf(&bytes[9], 0x24uLL, " %08X %08X %016llX", HIDWORD(v85), v85, v84);
    v16 = 44;
    do
    {
      bytes[v16] = 32;
      v16 += 9;
    }

    while (v16 != 116);
    v17 = CFStringCreateWithBytes(alloc, bytes, 116, 0x600u, 0);
    v18 = CFNumberCreate(alloc, kCFNumberSInt32Type, &valuePtr);
    values[0] = v18;
    v19 = CFDictionaryCreate(alloc, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    createMetadataSerializerForFormat(@"com.apple.itunes", allocator, &cf);
    if (v20)
    {
      v24 = v20;
    }

    else
    {
      FigMetadataSerializerGetFigMetadataWriter();
      v22 = v21;
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v23)
      {
        v24 = v23(v22, @"itlk", @"com.apple.iTunes.iTunSMPB", v17, v19);
        if (!v24)
        {
          v25 = cf;
          cf = 0;
          if (!v19)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v24 = 4294954514;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v25 = 0;
    if (!v19)
    {
      goto LABEL_16;
    }

LABEL_15:
    CFRelease(v19);
LABEL_16:
    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v24)
    {
      v32 = 0;
      goto LABEL_112;
    }

    CFDictionaryAddValue(Mutable, @"com.apple.itunes", v25);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (a1 < 1)
  {
LABEL_111:
    v32 = 0;
    v24 = 0;
    *a9 = theDict;
    Mutable = 0;
    goto LABEL_112;
  }

  v26 = 0;
  v64 = a1;
  while (1)
  {
    v27 = *(a2 + 8 * v26);
    v28 = *(a3 + 8 * v26);
    memset(bytes, 0, 24);
    if (FigCFEqual() || FigCFEqual())
    {
      if (a5)
      {
        v29 = 0;
      }

      else
      {
        *bytes = @"com.apple.itunes";
        v29 = 1;
      }

      v30 = v29 + 1;
      *&bytes[8 * v29] = @"org.mp4ra";
    }

    else
    {
      if (FigCFEqual() || FigCFEqual())
      {
        *bytes = @"org.mp4ra";
LABEL_98:
        v30 = 1;
        goto LABEL_31;
      }

      if (!FigFileTypeIsQTMovieFileType(v70))
      {
        goto LABEL_108;
      }

      if (FigCFEqual() || FigCFEqual())
      {
        *bytes = v27;
        goto LABEL_98;
      }

      if (!FigCFEqual())
      {
        if (FigCFEqual())
        {
          *bytes = @"com.apple.quicktime.mdta";
          *&bytes[8] = @"com.apple.quicktime.udta";
          v30 = 2;
          goto LABEL_31;
        }

LABEL_108:
        v30 = 0;
        goto LABEL_31;
      }

      if (a5)
      {
        v60 = 0;
      }

      else
      {
        *bytes = @"com.apple.itunes";
        v60 = 1;
      }

      v61 = &bytes[8 * v60];
      v30 = v60 | 2;
      *v61 = @"com.apple.quicktime.mdta";
      *(v61 + 1) = @"com.apple.quicktime.udta";
    }

LABEL_31:
    v31 = CFArrayCreate(alloc, bytes, v30, MEMORY[0x1E695E9C0]);
    if (v31)
    {
      break;
    }

LABEL_93:
    if (++v26 == v64)
    {
      goto LABEL_111;
    }
  }

  v32 = v31;
  v67 = v26;
  Count = CFArrayGetCount(v31);
  Mutable = theDict;
  if (Count < 1)
  {
LABEL_92:
    CFRelease(v32);
    v26 = v67;
    goto LABEL_93;
  }

  v33 = 0;
  v68 = v32;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v32, v33);
    if (FigCFEqual())
    {
      break;
    }

    v36 = FigCFEqual();
    v37 = kFigMetadataConverterDestFileFormat_ISO_3GP;
    if (v36 || (v38 = FigCFEqual(), v37 = kFigMetadataConverterDestFileFormat_ISO_MP4, v38))
    {
      v39 = CFDictionaryCreate(alloc, kFigMetadataConverterCreateOption_DestFileFormat, v37, 1, 0, 0);
      FigMetadataCreateConverter(v27, ValueAtIndex, v39, alloc, &v81);
      v41 = v40;
      if (v39)
      {
        CFRelease(v39);
      }

      if (v41)
      {
        goto LABEL_87;
      }

      break;
    }

    FigMetadataCreateConverter(v27, ValueAtIndex, 0, alloc, &v81);
    if (!v59)
    {
      break;
    }

LABEL_87:
    if (++v33 == Count)
    {
      goto LABEL_92;
    }
  }

  v35 = CFDictionaryGetValue(Mutable, ValueAtIndex);
  value = v35;
  if (v35)
  {
    value = CFRetain(v35);
LABEL_45:
    FigMetadataSerializerGetFigMetadataWriter();
    v75 = v43;
    v44 = (FigCFEqual() || FigCFEqual()) && FigCFEqual() != 0;
    v45 = FigCFEqual();
    v78 = v81;
    if (a7)
    {
      v73 = CFDictionaryContainsKey(a7, @"comn");
      if (!v28)
      {
        goto LABEL_83;
      }

LABEL_52:
      v46 = CFArrayGetCount(v28);
      if (v46 >= 1)
      {
        v47 = v46;
        v48 = 0;
        v77 = v45 != 0 || v44;
        do
        {
          v49 = CFArrayGetValueAtIndex(v28, v48);
          v50 = CFDictionaryGetValue(v49, @"keyspace");
          v51 = CFDictionaryGetValue(v49, @"key");
          v52 = CFDictionaryGetValue(v49, @"value");
          *bytes = 0;
          if (!v51)
          {
            goto LABEL_80;
          }

          if (!v50)
          {
            goto LABEL_80;
          }

          v53 = v52;
          if (!v52)
          {
            goto LABEL_80;
          }

          if (!FigCFEqual() && !FigCFEqual())
          {
            goto LABEL_64;
          }

          if (FigCFEqual())
          {
            if (FigCFEqual())
            {
              FigCFEqual();
            }

            goto LABEL_80;
          }

          v54 = CFGetTypeID(v51);
          if (v54 == CFNumberGetTypeID())
          {
            LODWORD(keys[0]) = 0;
            CFNumberGetValue(v51, kCFNumberSInt32Type, keys);
            v55 = LODWORD(keys[0]) != 1835365473;
          }

          else
          {
LABEL_64:
            v55 = 1;
          }

          if (FigCFEqual())
          {
            if (FigCFEqual() != 0 || !v55)
            {
              goto LABEL_80;
            }
          }

          else if (!v55)
          {
            goto LABEL_80;
          }

          if (v77 || !CFSetContainsValue(theSet, v49))
          {
            v56 = v49;
            if (!v78)
            {
              goto LABEL_75;
            }

            v57 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v57)
            {
              if (!v57(v78, v49, alloc, bytes))
              {
                v51 = CFDictionaryGetValue(*bytes, @"key");
                v50 = CFDictionaryGetValue(*bytes, @"keyspace");
                v53 = CFDictionaryGetValue(*bytes, @"value");
                v56 = *bytes;
LABEL_75:
                if (!a7 || doesAllowListContainKeyspaceAndKey(a7, v73, v50, v51))
                {
                  v58 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (v58)
                  {
                    if (!v58(v75, v50, v51, v53, v56))
                    {
                      CFSetAddValue(theSet, v49);
                    }
                  }
                }
              }
            }
          }

LABEL_80:
          if (*bytes)
          {
            CFRelease(*bytes);
          }

          ++v48;
        }

        while (v47 != v48);
      }
    }

    else
    {
      v73 = 0;
      if (v28)
      {
        goto LABEL_52;
      }
    }

LABEL_83:
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    v32 = v68;
    Mutable = theDict;
    if (v81)
    {
      CFRelease(v81);
      v81 = 0;
    }

    goto LABEL_87;
  }

  createMetadataSerializerForFormat(ValueAtIndex, alloc, &value);
  if (!v42)
  {
    CFDictionaryAddValue(Mutable, ValueAtIndex, value);
    goto LABEL_45;
  }

  v24 = v42;
LABEL_112:
  CFRelease(theSet);
LABEL_113:
  if (value)
  {
    CFRelease(value);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v24;
}

double createMetadataSerializerForFormat(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (FigCFEqual())
  {

    return FigMetadataSerializerCreateForQuickTimeMetadata(a2, a3);
  }

  else if (FigCFEqual())
  {

    return FigMetadataSerializerCreateForQuickTimeUserData(a2, a3);
  }

  else if (FigCFEqual())
  {

    return FigMetadataSerializerCreateForISOUserData(a2, a3);
  }

  else if (FigCFEqual())
  {

    return FigMetadataSerializerCreateForiTunes(a2, a3);
  }

  return result;
}

uint64_t doesAllowListContainKeyspaceAndKey(const __CFDictionary *a1, uint64_t a2, const void *a3, const __CFNumber *a4)
{
  Value = CFDictionaryGetValue(a1, a3);
  if (Value)
  {
    v9 = Value;
    if (a4 && (v10 = CFGetTypeID(a4), v10 == CFNumberGetTypeID()))
    {
      v11 = *MEMORY[0x1E695E480];
      valuePtr = 0;
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      valuePtr = bswap32(valuePtr);
      *cStr = valuePtr;
      v16 = 0;
      v12 = CFStringCreateWithCString(v11, cStr, 0);
      a4 = v12;
    }

    else
    {
      v12 = 0;
    }

    v18.length = CFArrayGetCount(v9);
    v18.location = 0;
    if (CFArrayContainsValue(v9, v18, a4))
    {
      a2 = 1;
      if (!v12)
      {
        return a2;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    if (!FigCFEqual())
    {
      CommonKey = FigMetadataGetCommonKey(a3, a4);
      if (CommonKey)
      {
        a2 = doesAllowListContainKeyspaceAndKey(a1, a2, @"comn", CommonKey);
        if (!v12)
        {
          return a2;
        }

        goto LABEL_14;
      }
    }

    a2 = 0;
  }

  if (v12)
  {
LABEL_14:
    CFRelease(v12);
  }

  return a2;
}

double OUTLINED_FUNCTION_2_145()
{
  STACK[0x350] = 0;
  result = 0.0;
  *&STACK[0x330] = 0u;
  *&STACK[0x340] = 0u;
  *&STACK[0x320] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_100()
{
  v1.i32[0] = STACK[0x240];
  v1.i32[1] = STACK[0x220];
  STACK[0x2E0] = vrev32_s8(vmovn_s64(vcvtq_n_s64_f64(vcvtq_f64_f32(v1), 0x10uLL)));

  return FigAtomWriterInitWithParent();
}

uint64_t OUTLINED_FUNCTION_6_87(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_7_76(int a1, int a2, size_t dataLength, int a4, int a5, int a6, int a7, int a8, CMBlockBufferRef *blockBufferOut, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, CFAllocatorRef blockAllocator, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMBlockBufferRef a43)
{

  return CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, dataLength, blockAllocator, 0, 0, dataLength, 1u, &a43);
}

double OUTLINED_FUNCTION_9_57()
{
  STACK[0x2A0] = 0;
  result = 0.0;
  *&STACK[0x280] = 0u;
  *&STACK[0x290] = 0u;
  *&STACK[0x270] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_54()
{
  LODWORD(STACK[0x240]) = 0;
  LODWORD(STACK[0x220]) = 0;
  return *v0;
}

double OUTLINED_FUNCTION_17_38()
{
  STACK[0x310] = 0;
  result = 0.0;
  *&STACK[0x2F0] = 0u;
  *&STACK[0x300] = 0u;
  *&STACK[0x2E0] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_37(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char *returnedPointerOut, uint64_t a60, uint64_t a61, ...)
{
  va_start(va, a61);

  return CMBlockBufferAccessDataBytes(v61, v62, 4uLL, va, &returnedPointerOut);
}

uint64_t OUTLINED_FUNCTION_27_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char *returnedPointerOut)
{

  return CMBlockBufferAccessDataBytes(v60, v61, v59, v62, &returnedPointerOut);
}

uint64_t OUTLINED_FUNCTION_28_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char *returnedPointerOut)
{

  return CMBlockBufferAccessDataBytes(v60, v62, v59, v61, &returnedPointerOut);
}

int16x4_t OUTLINED_FUNCTION_31_26(int8x8_t a1, int8x8_t a2)
{
  v2 = vand_s8(a1, a2);
  v3 = vuzp1_s16(v2, v2);
  return vzip1_s16(v3, vdup_lane_s16(v3, 1));
}

uint64_t OUTLINED_FUNCTION_37_24@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  *(v13 - 92) = a1;

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_38_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59)
{

  return __memcpy_chk();
}

uint64_t OUTLINED_FUNCTION_39_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{

  return __memcpy_chk();
}

void OUTLINED_FUNCTION_40_20()
{

  JUMPOUT(0x19A8CC720);
}

uint64_t OUTLINED_FUNCTION_41_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{

  return FigCFEqual();
}

uint64_t FigCFAppendStringWithSmartComma(CFTypeRef *a1, const __CFString *a2)
{
  if (a2)
  {
    if (a1)
    {
      v3 = *MEMORY[0x1E695E480];
      if (*a1)
      {
        v4 = CFStringCreateWithFormat(v3, 0, @"%@, %@", *a1, a2);
        CFRelease(*a1);
        result = 0;
        *a1 = v4;
      }

      else
      {
        Copy = CFStringCreateCopy(v3, a2);
        result = 0;
        *a1 = Copy;
      }
    }

    else
    {
      FigCFAppendStringWithSmartComma_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigCFAppendStringWithSmartComma_cold_2(&v8);
    return v8;
  }

  return result;
}

CFStringRef FigCopyGMLoggingDescriptionForOption(const __CFDictionary *a1)
{
  if (!a1)
  {
    return CFRetain(@"NULL");
  }

  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    Value = FigCFDictionaryGetValue();
  }

  if (Value)
  {
    v3 = Value;
  }

  else
  {
    v3 = @"unspecified";
  }

  v4 = FigCFDictionaryGetValue();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"none";
  }

  cf = 0;
  v6 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsTaggedMediaCharacteristics");
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  if (CFArrayGetCount(v6) < 1)
  {
    goto LABEL_15;
  }

  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
    FigCFAppendStringWithSmartComma(&cf, ValueAtIndex);
    ++v8;
  }

  while (v8 < CFArrayGetCount(v7));
  v10 = cf;
  if (!cf)
  {
LABEL_15:
    v10 = CFRetain(&stru_1F0B1AFB8);
    cf = v10;
  }

  v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Option: ID=%@, Language=%@, Characteristics=%@", v5, v3, v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v11)
  {
    return CFRetain(@"NULL");
  }

  return v11;
}

uint64_t FigMediaCharacteristicsGetTaggedMediaCharacteristicsForEnhancedSpeechIntelligibility(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_103 != -1)
  {
    FigMediaCharacteristicsGetTaggedMediaCharacteristicsForEnhancedSpeechIntelligibility_cold_1();
  }

  return qword_1ED4CB680;
}

CFArrayRef figMediaCharacteristicsCreateTaggedMediaCharacteristicsForEnhancedSpeechIntelligibilityOnce(CFArrayRef *a1)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"com.apple.amp.fitness.trainer.focus";
  values[1] = @"public.accessibility.enhances-speech-intelligibility";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

void MatchAnyCharacteristic(uint64_t result, void *a2)
{
  if (!a2[1])
  {
    FigCFDictionaryGetValue();
    if (FigCFArrayContainsAnyValueInArray())
    {
      a2[1] = FigCFDictionaryGetValue();
    }
  }
}

uint64_t FigPWDKeyExchangeReceiverCreateForAOCP(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (FigPWDKeyExchangeReceiverAOCP_initOnce_initOnce != -1)
  {
    FigPWDKeyExchangeReceiverCreateForAOCP_cold_1();
  }

  if (a3)
  {
    FigPWDKeyExchangeReceiverGetClassID(a1, a2);
    v4 = CMDerivedObjectCreate();
    if (!v4)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        *(DerivedStorage + 24) = 0;
        *(DerivedStorage + 32) = 0;
        *(DerivedStorage + 104) = 0;
        *(DerivedStorage + 112) = 0;
        *(DerivedStorage + 64) = kFigPWDKeyExchangeAOCP_AssetID_None;
        *(DerivedStorage + 40) = 0x100000004;
        v4 = 0;
        *(DerivedStorage + 16) = FigSimpleMutexCreate();
        *a3 = 0;
      }

      else
      {
        return 4294947746;
      }
    }
  }

  else
  {
    FigPWDKeyExchangeReceiverCreateForAOCP_cold_2(&v7);
    return v7;
  }

  return v4;
}

uint64_t pwdKeyExchangeReceiverAOCP_Finalize(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v2 = result;
    if (*(result + 32))
    {
      MzdSdcDIXg8COV();
      *(v2 + 32) = 0;
    }

    if (*(v2 + 96))
    {
      JE2f6WCx();
      *(v2 + 96) = 0;
    }

    if (*(v2 + 88))
    {
      N8pdwAfn();
      *(v2 + 88) = 0;
    }

    v3 = *(v2 + 80);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }

      v5 = *(v2 + 80);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 80) = 0;
      }
    }

    v6 = *(v2 + 72);
    if (v6)
    {
      CFRelease(v6);
      *(v2 + 72) = 0;
    }

    *(v2 + 24) = 0;
    *(v2 + 112) = 0;

    return FigSimpleMutexDestroy();
  }

  return result;
}

__CFString *pwdKeyExchangeReceiverAOCP_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPWDKeyExchangeReceiverAOCP %p>", a1);
  return Mutable;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply(uint64_t a1, const __CFData *a2, CFDataRef *a3, _BYTE *a4)
{
  if (!a1)
  {
    pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_17(&v8);
    return v8;
  }

  if (!a2)
  {
    pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_16(&v8);
    return v8;
  }

  v4 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 0, 0, 0);
  if (!v4)
  {
    pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_15(&v8);
    return v8;
  }

  v5 = v4;
  FigCFDictionaryGetInt32IfPresent();
  pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_14(&v8);
  v7 = v8;
  CFRelease(v5);
  return v7;
}

uint64_t pwdKeyExchangeReceiverAOCP_SetCryptorOnSampleBuffer(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    FigPWDKeyExchangeReceiverGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v3 = pwdKeyExchangeReceiverAOCP_EnsureAndCopyCryptorWrappingDecryptor(DerivedStorage, &v6);
    v4 = v6;
    if (!v3)
    {
      FigSampleBufferSetDecryptor();
    }

    FigSimpleMutexUnlock();
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    pwdKeyExchangeReceiverAOCP_SetCryptorOnSampleBuffer_cold_1(&v7);
    return v7;
  }

  return v3;
}

uint64_t pwdKeyExchangeReceiverAOCP_SetExternalProtectionMethods(uint64_t a1, char a2)
{
  FigPWDKeyExchangeReceiverGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = a2 & 7;
  v5 = v4 - 3;
  if ((v4 - 3) > 4)
  {
    v6 = 0;
    v8 = 1;
    v7 = &kFigPWDKeyExchangeAOCP_AssetID_None;
  }

  else
  {
    v6 = dword_196E78CE8[v5];
    v7 = off_1E74915D8[v5];
    v8 = dword_196E78CFC[v5];
  }

  *(DerivedStorage + 112) = v6;
  *(DerivedStorage + 64) = *v7;
  *(DerivedStorage + 40) = 4;
  *(DerivedStorage + 44) = v8;
  *(DerivedStorage + 104) = v4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigTTMLParseFontFamilySyntaxAndCreateFontFamilyNameList(const __CFString *a1)
{
  v2 = 0;
  FigTTMLParseFontFamilyAndCreateFontFamilyNameList(a1, &v2);
  return v2;
}

void figTTML_initInheritableStyleAttributeNames()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling color");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling direction");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontFamily");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontSize");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontStyle");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling fontWeight");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling lineHeight");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling shear");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textAlign");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textCombine");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textDecoration");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textEmphasis");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textOutline");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling textShadow");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling visibility");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling wrapOption");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby internalRubyID");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling ruby");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling internalRubyID");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical combine");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby position");
  CFArrayAppendValue(Mutable, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby align");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling rubyAlign");
  CFArrayAppendValue(Mutable, @"http://www.w3.org/ns/ttml#styling position");
  sInheritableStyleAttributeNames = Mutable;
}

uint64_t FigVideoReceiverDataChannelSettingsCopySerializable(const __CFArray *a1, CFMutableArrayRef *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigVideoReceiverDataChannelSettingsCopySerializable_cold_5(&v23);
    return v23;
  }

  v6 = Mutable;
  v22 = a2;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; v8 != i; ++i)
      {
        CFArrayGetValueAtIndex(a1, i);
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          FigVideoReceiverDataChannelSettingsCopySerializable_cold_4(&v23);
          v19 = v23;
          goto LABEL_16;
        }

        v11 = MutableCopy;
        Value = CFDictionaryGetValue(MutableCopy, @"ChannelDescription");
        if (!Value)
        {
          FigVideoReceiverDataChannelSettingsCopySerializable_cold_3(&v23);
          v13 = 0;
          goto LABEL_23;
        }

        v13 = MEMORY[0x19A8D3280](Value, v4);
        if (!v13)
        {
          FigVideoReceiverDataChannelSettingsCopySerializable_cold_2(&v23);
          goto LABEL_23;
        }

        CFDictionarySetValue(v11, @"ChannelDescriptionDict", v13);
        CFDictionaryRemoveValue(v11, @"ChannelDescription");
        v14 = CFDictionaryGetValue(v11, @"ChannelSpecificSettings");
        if (v14)
        {
          v15 = v14;
          if (CFDictionaryContainsKey(v14, @"VideoColorProperties"))
          {
            v16 = CFDictionaryGetCount(v15);
            v17 = CFDictionaryCreateMutableCopy(v4, v16, v15);
            if (!v17)
            {
              FigVideoReceiverDataChannelSettingsCopySerializable_cold_1(&v23);
LABEL_23:
              v19 = v23;
              CFRelease(v11);
              CFRelease(v6);
              if (v13)
              {
                v20 = v13;
                goto LABEL_17;
              }

              return v19;
            }

            v18 = v17;
            CFDictionaryRemoveValue(v17, @"DestinationPixelBufferAttributes");
            CFDictionaryRemoveValue(v18, @"VideoColorProperties");
            CFDictionaryRemoveValue(v18, @"AllowWideColor");
            CFDictionarySetValue(v11, @"ChannelSpecificSettings", v18);
            CFRelease(v18);
          }
        }

        CFRelease(v13);
        CFArrayAppendValue(v6, v11);
        CFRelease(v11);
      }
    }
  }

  if (v22)
  {
    v19 = 0;
    *v22 = v6;
  }

  else
  {
    v19 = 0;
LABEL_16:
    v20 = v6;
LABEL_17:
    CFRelease(v20);
  }

  return v19;
}

uint64_t FigVideoReceiverDataChannelSettingsCopyDeserialized(const __CFArray *a1, __CFArray **a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigVideoReceiverDataChannelSettingsCopyDeserialized_cold_3(&value);
    return value;
  }

  v6 = Mutable;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(a1, v9);
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          FigVideoReceiverDataChannelSettingsCopyDeserialized_cold_2(&value);
          v14 = value;
          goto LABEL_17;
        }

        v11 = MutableCopy;
        v12 = CFDictionaryGetValue(MutableCopy, @"ChannelDescriptionDict");
        if (!v12)
        {
          FigVideoReceiverDataChannelSettingsCopyDeserialized_cold_1(&value);
          v14 = value;
          goto LABEL_16;
        }

        value = 0;
        v13 = MEMORY[0x19A8D32E0](v12, v4, &value);
        if (v13)
        {
          break;
        }

        CFDictionarySetValue(v11, @"ChannelDescription", value);
        CFDictionaryRemoveValue(v11, @"ChannelDescriptionDict");
        if (value)
        {
          CFRelease(value);
        }

        CFArrayAppendValue(v6, v11);
        CFRelease(v11);
        if (v8 == ++v9)
        {
          goto LABEL_11;
        }
      }

      v14 = v13;
LABEL_16:
      CFRelease(v11);
      goto LABEL_17;
    }
  }

LABEL_11:
  v14 = 0;
  if (!a2)
  {
LABEL_17:
    CFRelease(v6);
    return v14;
  }

  *a2 = v6;
  return v14;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue(const void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_5(&v14);
    return v14;
  }

  if (!a3)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_4(&v14);
    return v14;
  }

  FigCFDictionaryGetInt32IfPresent();
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    atomic_fetch_add(&FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_sUniqueCounter, 1uLL);
  }

  v5 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v5, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_3(&v14);
    return v14;
  }

  v7 = Mutable;
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v8)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_2(&v14);
    v12 = v14;
    goto LABEL_9;
  }

  v9 = v8;
  v10 = CAXPCImageQueueCreate();
  if (!v10)
  {
    FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_1(v7, v9, &v14);
    return v14;
  }

  v11 = v10;
  CAImageQueueSetFlags();
  v12 = 0;
  *a3 = v11;
LABEL_9:
  CFRelease(v7);
  return v12;
}

uint64_t FigVideoReceiverCommonCopyImageQueuesFromConfiguration(uint64_t a1, __CFArray **a2)
{
  if (a2)
  {
    ChannelCount = FigDataChannelConfigurationGetChannelCount(a1);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], ChannelCount, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      if (ChannelCount >= 1)
      {
        for (i = 0; i != ChannelCount; ++i)
        {
          if (FigDataChannelConfigurationGetOutputQueueTypeAtIndex(a1, i) == 1)
          {
            FigImageQueueAtIndex = FigDataChannelConfigurationGetFigImageQueueAtIndex(a1, i);
            if (FigImageQueueAtIndex)
            {
              CFArrayAppendValue(v6, FigImageQueueAtIndex);
            }
          }
        }
      }

      result = 0;
      *a2 = v6;
    }

    else
    {
      FigVideoReceiverCommonCopyImageQueuesFromConfiguration_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    FigVideoReceiverCommonCopyImageQueuesFromConfiguration_cold_2(&v11);
    return v11;
  }

  return result;
}

uint64_t FigVideoReceiverCommonCopyLastSampledPixelBufferFromConfiguration(uint64_t a1, const __CFAllocator *a2, CVPixelBufferRef *a3)
{
  pixelBufferOut = 0;
  cf = 0;
  ChannelCount = FigDataChannelConfigurationGetChannelCount(a1);
  if (ChannelCount < 1)
  {
    return 0;
  }

  v7 = ChannelCount;
  v8 = 0;
  while (FigDataChannelConfigurationGetOutputQueueTypeAtIndex(a1, v8) != 1)
  {
LABEL_10:
    if (v7 == ++v8)
    {
      v14 = 0;
LABEL_12:
      v15 = 0;
      goto LABEL_18;
    }
  }

  if (!FigDataChannelConfigurationGetFigImageQueueAtIndex(a1, v8))
  {
    FigVideoReceiverCommonCopyLastSampledPixelBufferFromConfiguration_cold_1(&v19);
    v15 = 0;
    v14 = v19;
    goto LABEL_18;
  }

  FigImageQueueGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v15 = 0;
    v14 = 4294954514;
    goto LABEL_18;
  }

  v12 = v11(v10, @"CAImageQueue", a2, &cf);
  if (v12)
  {
    v14 = v12;
    goto LABEL_12;
  }

  v13 = CAImageQueueCopyDisplayedIOSurface();
  if (!v13)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_10;
  }

  v15 = v13;
  if (IOSurfaceGetProtectionOptions())
  {
    v14 = 0;
  }

  else
  {
    v14 = CVPixelBufferCreateWithIOSurface(a2, v15, 0, &pixelBufferOut);
    if (v14)
    {
      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
      }
    }

    else
    {
      *a3 = pixelBufferOut;
      pixelBufferOut = 0;
    }
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v14;
}

uint64_t FigVideoReceiverGetClassID(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigVideoReceiverGetClassID_sRegisterFigVideoReceiverTypeOnce, RegisterFigVideoReceiverTypeOnce);
  return sFigVideoReceiverClassID;
}

uint64_t RegisterFigVideoReceiverTypeOnce()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVideoReceiverGetTypeID(uint64_t a1)
{
  FigVideoReceiverGetClassID(a1);

  return CMBaseClassGetCFTypeID();
}

void FigAudioQueueOfflineMixerInvalidate(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EAF17670)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      FigAudioQueueOfflineMixerStop(a1);
      FigAudioQueueOfflineMixerWaitUntilCompletelyStopped(a1);
      v3 = *(a1 + 32);
      if (v3 && *(a1 + 56))
      {
        v4 = *(a1 + 48);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v5)
        {
          v5(v3, v4);
        }

        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
      }

      v6 = *(a1 + 296);
      if (v6)
      {
        Count = CFArrayGetCount(v6);
        if (Count >= 1)
        {
          v8 = 0;
          v9 = Count & 0x7FFFFFFF;
          do
          {
            CFArrayGetValueAtIndex(*(a1 + 296), v8);
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListeners();
            ++v8;
          }

          while (v9 != v8);
        }

        v10 = *(a1 + 296);
        if (v10)
        {
          v11 = CFArrayGetCount(v10);
          do
          {
            if (v11 < 1)
            {
              break;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 296), 0);
            FigAudioQueueSetProperty(ValueAtIndex, @"OfflineMixer", 0);
            v13 = CFArrayGetCount(*(a1 + 296));
            v14 = v13 < v11;
            v11 = v13;
          }

          while (v14);
        }
      }

      *(a1 + 16) = 1;
      FigSimpleMutexUnlock();
      v15 = *(a1 + 64);
      if (v15)
      {
        if (!*(a1 + 72))
        {
          goto LABEL_23;
        }

        v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v16)
        {
          v16(v15, 0, 0);
        }

        *(a1 + 72) = 0;
        if (*(a1 + 64))
        {
LABEL_23:
          FigActivitySchedulerGetFigBaseObject();
          if (v17)
          {
            v18 = v17;
            v19 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v19)
            {
              v19(v18);
            }
          }
        }
      }
    }
  }
}

uint64_t FigAudioQueueOfflineMixerStop(_BYTE *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (a1[16])
  {
    FigAudioQueueOfflineMixerStop_cold_1(v5);
    v3 = v5[0];
  }

  else
  {
    FigSimpleMutexLock();
    a1[75] = 0;
    a1[322] = 0;
    FigSimpleMutexUnlock();
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigAudioQueueOfflineMixerWaitUntilCompletelyStopped(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueOfflineMixerWaitUntilCompletelyStopped_cold_1(v5);
    v3 = v5[0];
  }

  else
  {
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t RegisterFigAudioQueueOfflineMixerType()
{
  result = _CFRuntimeRegisterClass();
  sFigAudioQueueOfflineMixerTypeID = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate(const __CFAllocator *a1, __int128 *a2, size_t a3, const AudioChannelLayout *a4, const __CFDictionary *a5, const void *a6, const void *a7, uint64_t *a8)
{
  v81 = *MEMORY[0x1E69E9840];
  size = 0;
  valuePtr = 0;
  theString = 0;
  v75 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigAudioQueueOfflineMixerCreate_cold_11(&v80);
LABEL_96:
    v51 = 0;
    value_low = LODWORD(v80.value);
LABEL_88:
    free(v51);
    return value_low;
  }

  if (!a6)
  {
    FigAudioQueueOfflineMixerCreate_cold_10(&v80);
    goto LABEL_96;
  }

  if (!a7)
  {
    FigAudioQueueOfflineMixerCreate_cold_9(&v80);
    goto LABEL_96;
  }

  if (!a8)
  {
    FigAudioQueueOfflineMixerCreate_cold_8(&v80);
    goto LABEL_96;
  }

  MEMORY[0x19A8D3660](&sRegisterAudioQueueOfflineMixerTypeOnce, RegisterFigAudioQueueOfflineMixerType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigAudioQueueOfflineMixerCreate_cold_7(&v80);
    goto LABEL_96;
  }

  v14 = Instance;
  *(Instance + 456) = 0;
  v15 = FigReentrantMutexCreate();
  *(v14 + 24) = v15;
  if (!v15)
  {
    FigAudioQueueOfflineMixerCreate_cold_6(&v80);
LABEL_103:
    v51 = 0;
    value_low = LODWORD(v80.value);
    goto LABEL_85;
  }

  v16 = FigSimpleMutexCreate();
  *(v14 + 88) = v16;
  if (!v16)
  {
    FigAudioQueueOfflineMixerCreate_cold_5(&v80);
    goto LABEL_103;
  }

  v17 = FigSimpleMutexCreate();
  *(v14 + 80) = v17;
  if (!v17)
  {
    FigAudioQueueOfflineMixerCreate_cold_4(&v80);
    goto LABEL_103;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v14 + 296) = Mutable;
  if (!Mutable)
  {
    FigAudioQueueOfflineMixerCreate_cold_3(&v80);
    goto LABEL_103;
  }

  v19 = CFArrayCreateMutable(a1, 0, 0);
  *(v14 + 304) = v19;
  if (!v19)
  {
    FigAudioQueueOfflineMixerCreate_cold_2(&v80);
    goto LABEL_103;
  }

  v20 = CFArrayCreateMutable(a1, 0, 0);
  *(v14 + 312) = v20;
  if (!v20)
  {
    FigAudioQueueOfflineMixerCreate_cold_1(&v80);
    goto LABEL_103;
  }

  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"AudioQueueOfflineMixer_MaxPacketsPerRender");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
    }

    v22 = *(a2 + 2);
    if (v22 == 1634754915 || v22 == 1902211171 || v22 == 1667330147)
    {
      v23 = CFDictionaryGetValue(a5, @"AudioQueueOfflineMixer_DynamicRangeControlConfig");
      if (v23)
      {
        CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
        v24 = 1;
      }

      else
      {
        v24 = 0;
      }

      v26 = CFDictionaryGetValue(a5, @"AudioQueueOfflineMixerOption_SceneDescriptionPreset");
      if (v26)
      {
        CFNumberGetValue(v26, kCFNumberIntType, &v75);
        v25 = 1;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    if (FigCFDictionaryGetValueIfPresent())
    {
      CFStringGetCString(theString, (v14 + 456), 10, 0x600u);
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  if (*(a2 + 2) == 1819304813)
  {
    v27 = (*(a2 + 12) >> 5) & 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = HIDWORD(valuePtr);
  LODWORD(v80.value) = 0;
  Property = AQOfflineMixerNew();
  if (Property)
  {
    goto LABEL_89;
  }

  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0x2000;
  }

  v31 = *a2;
  v32 = a2[1];
  *(v14 + 240) = *(a2 + 4);
  *(v14 + 208) = v31;
  *(v14 + 224) = v32;
  v33 = *(v14 + 224);
  if (v33 <= 1)
  {
    v33 = 1;
  }

  *(v14 + 276) = v33 * v30;
  size_4 = 4;
  Property = AQOfflineMixerGetProperty();
  if (Property)
  {
    goto LABEL_89;
  }

  v34 = *(v14 + 276);
  if (v34 >= LODWORD(v80.value))
  {
    v35 = v34 / LODWORD(v80.value);
  }

  else
  {
    *(v14 + 276) = v80.value;
    v35 = 1;
  }

  *(v14 + 272) = v35;
  if (v27)
  {
    v36 = *(v14 + 236);
  }

  else
  {
    v36 = 1;
  }

  v37 = malloc_type_malloc(16 * (v36 - 1) + 24, 0x10800404ACF7207uLL);
  *(v14 + 280) = v37;
  *v37 = v36;
  if (v36)
  {
    v38 = 0;
    v39 = 16 * v36;
    do
    {
      if (v27)
      {
        v40 = 1;
      }

      else
      {
        v40 = *(v14 + 236);
      }

      v41 = &v37[v38 / 4];
      v41[2] = v40;
      v42 = *(v14 + 276);
      v41[3] = v42;
      v43 = malloc_type_malloc(v42, 0xD69FE707uLL);
      v37 = *(v14 + 280);
      *&v37[v38 / 4 + 4] = v43;
      v38 += 16;
    }

    while (v39 != v38);
  }

  v44 = *(v14 + 228);
  if (v44)
  {
    v45 = 72;
  }

  else
  {
    v45 = 72 * *(v14 + 272);
  }

  *(v14 + 256) = malloc_type_malloc(v45, 0x1000040FF89C88EuLL);
  if (!*(v14 + 224))
  {
    *(v14 + 264) = malloc_type_malloc(8 * *(v14 + 272), 0x100004000313F17uLL);
LABEL_59:
    v46 = malloc_type_malloc(16 * *(v14 + 272), 0x1000040451B5BE8uLL);
    goto LABEL_60;
  }

  if ((v27 & 1) == 0)
  {
    *(v14 + 264) = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  }

  if (!v44)
  {
    goto LABEL_59;
  }

  v46 = 0;
LABEL_60:
  *(v14 + 248) = v46;
  *(v14 + 96) = (*(v14 + 208) + 0.5);
  size = 8;
  v47 = (v14 + 356);
  if (AQOfflineMixerGetProperty() || !size)
  {
    v48 = MEMORY[0x1E6960CC0];
    v49 = *MEMORY[0x1E6960CC0];
    *v47 = *MEMORY[0x1E6960CC0];
    v50 = *(v48 + 16);
    *(v14 + 372) = v50;
    *(v14 + 380) = v49;
    *(v14 + 396) = v50;
    if (!v24)
    {
      goto LABEL_66;
    }
  }

  else
  {
    CMTimeMake(&v80, 0, *(v14 + 96));
    *v47 = *&v80.value;
    *(v14 + 372) = v80.epoch;
    *(v14 + 380) = *v47;
    *(v14 + 396) = *(v14 + 372);
    if (!v24)
    {
      goto LABEL_66;
    }
  }

  Property = AQOfflineMixerSetProperty();
  if (Property)
  {
LABEL_89:
    value_low = Property;
    v51 = 0;
    goto LABEL_85;
  }

LABEL_66:
  if (v25)
  {
    Property = AQOfflineMixerSetProperty();
    if (Property)
    {
      goto LABEL_89;
    }
  }

  v51 = 0;
  if (AQOfflineMixerGetPropertySize())
  {
    v52 = 0;
  }

  else
  {
    v52 = 0;
    if (size)
    {
      v51 = malloc_type_calloc(1uLL, size, 0x723CE7C3uLL);
      v53 = AQOfflineMixerGetProperty();
      if (v53)
      {
        goto LABEL_90;
      }

      v52 = size;
    }
  }

  v53 = CMAudioFormatDescriptionCreate(a1, a2, a3, a4, v52, v51, 0, (v14 + 200));
  if (v53)
  {
    goto LABEL_90;
  }

  *(v14 + 64) = a7;
  CFRetain(a7);
  v54 = *(v14 + 64);
  v55 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v55)
  {
    v53 = v55(v54, aqOfflineMixer_processUntilHighWaterMet, v14);
    if (!v53)
    {
      *(v14 + 72) = 1;
      LODWORD(v80.value) = 0;
      v56 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v80);
      FigActivitySchedulerGetFigBaseObject();
      v58 = v57;
      v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v59)
      {
        v59(v58, @"ClientPID", v56);
      }

      CFRelease(v56);
      FigActivitySchedulerGetFigBaseObject();
      v61 = v60;
      v62 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v62)
      {
        v62(v61, @"ThrottleForBackground", *MEMORY[0x1E695E4C0]);
      }

      v63 = MEMORY[0x1E6960C70];
      v74 = *MEMORY[0x1E6960C70];
      *(v14 + 324) = *MEMORY[0x1E6960C70];
      v64 = *(v63 + 16);
      *(v14 + 340) = v64;
      *(v14 + 32) = a6;
      CFRetain(a6);
      v65 = *(v14 + 32);
      v66 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v66)
      {
        v53 = v66(v65, aqOfflineMixer_outputBelowLowWater, v14, v14 + 48);
        if (!v53)
        {
          *(v14 + 56) = 1;
          *(v14 + 148) = v74;
          *(v14 + 164) = v64;
          *(v14 + 352) = -50;
          *(v14 + 476) = 0;
          *(v14 + 480) = v74;
          *(v14 + 496) = v64;
          *(v14 + 504) = v74;
          *(v14 + 520) = v64;
          v67 = MEMORY[0x1E6960CC0];
          *(v14 + 544) = *(MEMORY[0x1E6960CC0] + 16);
          *(v14 + 528) = *v67;
          *(v14 + 448) = v64;
          *(v14 + 432) = v74;
          *(v14 + 408) = v74;
          *(v14 + 424) = v64;
          *(v14 + 172) = v74;
          *(v14 + 188) = v64;
          if (dword_1EAF17670)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          value_low = 0;
          *a8 = v14;
          goto LABEL_88;
        }

        goto LABEL_90;
      }

      goto LABEL_84;
    }

LABEL_90:
    value_low = v53;
    goto LABEL_85;
  }

LABEL_84:
  value_low = 4294954514;
LABEL_85:
  free(v51);
  CFRelease(v14);
  return value_low;
}