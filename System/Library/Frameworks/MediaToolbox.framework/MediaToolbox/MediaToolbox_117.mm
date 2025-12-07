CFNumberRef xmlCopyStreamBandwidth(uint64_t a1, const __CFString *a2)
{
  valuePtr = 0;
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (!v3 || !v4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, valuePtr, v11);
    return 0;
  }

  Child = FigXMLNodeGetChild(v3, a2);
  if (Child)
  {
    v6 = Child;
    if (FigXMLNodeGetCountOfChildren(Child))
    {
      ChildAtIndex = FigXMLNodeGetChildAtIndex(v6, 0);
      if (FigXMLNodeGetContentAsInt64(ChildAtIndex, &valuePtr))
      {
        return 0;
      }
    }
  }

  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
}

uint64_t xmlSetUniqueIdentifier(uint64_t a1, const void *a2)
{
  cf = 0;
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3 && v4)
  {
    cf = FigXMLNodeGetChild(v3, @"UniqueIdentifier");
    if (cf)
    {
      FigXMLNodeRemoveAndClearChild(v3, &cf);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = FigXMLNodeCreateChildNode(AllocatorForMedia, v3, @"UniqueIdentifier", &cf);
    if (!v6)
    {
      Child = FigXMLNodeGetChild(v3, @"UniqueIdentifier");
      v6 = FigXMLNodeContentSetCFString(Child, a2);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, cf, v12);
  }

  v8 = v6;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t xmlSetMediaPlaylist(uint64_t a1, const void *a2, const __CFString *a3)
{
  v16 = 0;
  FigXMLNodeGetTag(a1);
  v6 = FigCFEqual();
  if (!a1 || !v6)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, cf, v18);
    goto LABEL_11;
  }

  Child = FigXMLNodeGetChild(a1, @"MediaPlaylist");
  if (Child)
  {
    v8 = CFRetain(Child);
    v16 = v8;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v10 = FigXMLNodeCreateChildNode(AllocatorForMedia, a1, @"MediaPlaylist", &v16);
  if (v10)
  {
LABEL_11:
    v12 = v10;
    goto LABEL_16;
  }

  v8 = v16;
LABEL_9:
  v11 = FigXMLNodeGetChild(v8, a3);
  if (v11)
  {
    v10 = FigXMLNodeContentSetCFString(v11, a2);
    goto LABEL_11;
  }

  v13 = v16;
  cf = 0;
  v14 = FigGetAllocatorForMedia();
  v12 = FigXMLNodeCreateChildNode(v14, v13, a3, &cf);
  if (!v12)
  {
    FigXMLNodeContentSetCFString(cf, a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  if (v16)
  {
    CFRelease(v16);
  }

  return v12;
}

uint64_t HLSPersistentStreamInfo_setMediaPlaylist(uint64_t a1, uint64_t a2, const __CFString *a3, OpaqueCMBlockBuffer *a4)
{
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFEqual();
  v9 = FigCFEqual();
  if (!DerivedStorage || !a2)
  {
    goto LABEL_40;
  }

  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
    a2 = v19;
    goto LABEL_19;
  }

  if (a3 && (v10 = v9, v8 | v9))
  {
    v11 = FigReadWriteLockLockForWrite();
    if (!v11)
    {
      if (*(DerivedStorage + 8) || (OUTLINED_FUNCTION_2_85(), !v12))
      {
LABEL_42:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_43;
      }

      if (FigFileCreateTempFileAtURL())
      {
        OUTLINED_FUNCTION_4_70();
        if (!v12)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      a2 = 0;
      FigGetAllocatorForMedia();
      if (FigByteStreamCreateFromOpenFile())
      {
        OUTLINED_FUNCTION_4_70();
        if (!v12)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      CMBlockBufferGetDataLength(a4);
      v13 = CMByteStreamWriteBlockBuffer();
      if (v13)
      {
LABEL_43:
        a2 = v13;
LABEL_44:
        a4 = 0;
        goto LABEL_18;
      }

      FigFileForkClose();
      AllocatorForMedia = FigGetAllocatorForMedia();
      a4 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 24), a3, 0);
      if (a4)
      {
        if (!FigFileRename())
        {
          if (v10)
          {
            v16 = *(DerivedStorage + 80);
            v17 = @"PathToLocalCopy";
          }

          else
          {
            if (!v8)
            {
LABEL_17:
              a2 = 0;
              OUTLINED_FUNCTION_6_57();
LABEL_18:
              FigReadWriteLockUnlockForWrite();
              goto LABEL_19;
            }

            v16 = *(DerivedStorage + 80);
            v17 = @"PathToOffline";
          }

          v18 = xmlSetMediaPlaylist(v16, a3, v17);
          if (!v18)
          {
            goto LABEL_17;
          }

LABEL_46:
          a2 = v18;
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_4_70();
        if (!v12)
        {
          goto LABEL_18;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_46;
    }
  }

  else
  {
LABEL_40:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  a2 = v11;
  a4 = 0;
LABEL_19:
  FigFileForkClose();
  if (a4)
  {
    CFRelease(a4);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return a2;
}

double HLSPersistentStreamInfo_writeMediaSegment(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, double a7, double a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!OUTLINED_FUNCTION_5_61(DerivedStorage))
    {
      if (!*(v8 + 8) && (OUTLINED_FUNCTION_2_85(), v18))
      {
        writeMediaSegment(v8, a2, a3, a4, a5, 1, a6, a7, a8);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      FigReadWriteLockUnlockForWrite();
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

double HLSPersistentStreamInfo_writeMediaInitializationSegment(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!OUTLINED_FUNCTION_5_61(DerivedStorage))
    {
      OUTLINED_FUNCTION_2_85();
      if (!v14 || *(v6 + 8))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
        writeMediaSegment(v6, a2, a3, a4, a5, 0, a6, 0.0, 0.0);
      }

      FigReadWriteLockUnlockForWrite();
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

double HLSPersistentStreamInfo_removeMediaInitializationSegment(uint64_t a1, const void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!OUTLINED_FUNCTION_5_61(DerivedStorage))
    {
      if (a2 && !*(v2 + 8) && (Value = CFDictionaryGetValue(*(v2 + 64), a2)) != 0 && (v8 = CFDictionaryGetValue(Value, @"PATH")) != 0)
      {
        v9 = v8;
        AllocatorForMedia = FigGetAllocatorForMedia();
        v11 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(v2 + 24), v9, 0);
        CFURLGetFileSystemRepresentation(v11, 0, buffer, 1023);
        CFDictionaryRemoveValue(*(v2 + 64), a2);
        if (!xmlSetMediaInitializationSegmentArray(*(v2 + 80), *(v2 + 64)))
        {
          OUTLINED_FUNCTION_6_57();
          if (!commitStreamInfo(v2))
          {
            removefile(buffer, 0, 0);
          }
        }

        FigReadWriteLockUnlockForWrite();
        if (v11)
        {
          CFRelease(v11);
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        FigReadWriteLockUnlockForWrite();
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< HLSPersistentStreamInfoReader >>>>", 2058, v3);
  }

  return result;
}

double HLSPersistentStreamInfo_removeMediaSegment(uint64_t a1, const void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (OUTLINED_FUNCTION_5_61(DerivedStorage))
    {
      return result;
    }

    OUTLINED_FUNCTION_2_85();
    if (!v7 || *(v2 + 8) || !a2 || (Value = CFDictionaryGetValue(*(v2 + 48), a2)) == 0 || (v9 = CFDictionaryGetValue(Value, @"PATH")) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      FigReadWriteLockUnlockForWrite();
      return result;
    }

    v10 = v9;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v12 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(v2 + 24), v10, 0);
    CFURLGetFileSystemRepresentation(v12, 0, buffer, 1023);
    CFDictionaryRemoveValue(*(v2 + 48), a2);
    v13 = *(v2 + 56);
    v35.length = CFArrayGetCount(v13);
    v35.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v13, v35, a2);
    CFArrayRemoveValueAtIndex(*(v2 + 56), FirstIndexOfValue);
    v15 = *(v2 + 80);
    v16 = *(v2 + 48);
    v17 = *(v2 + 56);
    cf = xmlGetMediaSegments(v15);
    if (cf)
    {
      FigXMLNodeRemoveAndClearChild(v15, &cf);
    }

    v18 = FigGetAllocatorForMedia();
    FigXMLNodeGetTag(v15);
    if (FigCFEqual())
    {
      v19 = v15;
    }

    else
    {
      v19 = 0;
    }

    v20 = FigXMLNodeCreateChildNode(v18, v19, @"MediaSegments", &cf);
    if (!v20)
    {
      if (!v17 || (Count = CFArrayGetCount(v17), Count < 1))
      {
LABEL_21:
        v26 = 0;
LABEL_22:
        if (cf)
        {
          CFRelease(cf);
        }

        if (!v26)
        {
          OUTLINED_FUNCTION_6_57();
          if (!commitStreamInfo(v2) && !FigCFURLGetFileStats() && !removefile(buffer, 0, 0))
          {
            v27 = *(v2 + 192);
            *(v2 + 192) = v27;
            xmlSetMediaBytesStored(*(v2 + 80), v27);
          }
        }

        FigReadWriteLockUnlockForWrite();
        if (v12)
        {
          CFRelease(v12);
        }

        return result;
      }

      v22 = Count;
      v23 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v17, v23);
        v25 = CFDictionaryGetValue(v16, ValueAtIndex);
        if (!v25)
        {
          break;
        }

        v20 = addNodeToMediaSegmentList(v25, cf);
        if (v20)
        {
          goto LABEL_33;
        }

        if (v22 == ++v23)
        {
          goto LABEL_21;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, 0);
    }

LABEL_33:
    v26 = v20;
    goto LABEL_22;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< HLSPersistentStreamInfoReader >>>>", 2115, v3);
}

double HLSPersistentStreamInfo_upgradeForWriting(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = 6;
  }

  else
  {
    v5 = 2;
  }

  if (DerivedStorage)
  {
    if (!OUTLINED_FUNCTION_5_61(DerivedStorage))
    {
      if (*(v2 + 8))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
      }

      else if (!*(v2 + 112))
      {
        lockLockFile(v2, v5);
        if (!v7)
        {
          *(v2 + 112) = 1;
        }
      }

      FigReadWriteLockUnlockForWrite();
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

double HLSPersistentStreamInfo_downgradeForReading(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = 5;
  }

  else
  {
    v5 = 1;
  }

  if (DerivedStorage)
  {
    if (!OUTLINED_FUNCTION_5_61(DerivedStorage))
    {
      if (*(v2 + 8))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
      }

      else
      {
        OUTLINED_FUNCTION_2_85();
        if (v7)
        {
          *(v2 + 112) = 0;
          lockLockFile(v2, v5);
        }
      }

      FigReadWriteLockUnlockForWrite();
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

double HLSPersistentStreamInfo_commitStreamInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!OUTLINED_FUNCTION_5_61(DerivedStorage))
    {
      if (*(v1 + 72) == 1)
      {
        OUTLINED_FUNCTION_2_85();
        if (!v4 || *(v1 + 8))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        else
        {
          commitStreamInfo(v1);
        }
      }

      FigReadWriteLockUnlockForWrite();
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

uint64_t xmlSetMediaInitializationSegmentArray(uint64_t a1, const __CFDictionary *a2)
{
  MediaInitializationSegments = xmlGetMediaInitializationSegments(a1);
  context = MediaInitializationSegments;
  FigXMLNodeGetTag(a1);
  v5 = FigCFEqual();
  if (!a1 || !v5)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, context, v12);
    ChildNode = v9;
    if (!MediaInitializationSegments)
    {
      return ChildNode;
    }

    goto LABEL_8;
  }

  if (MediaInitializationSegments)
  {
    FigXMLNodeRemoveAndClearChild(a1, &context);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  ChildNode = FigXMLNodeCreateChildNode(AllocatorForMedia, a1, @"MediaInitializationSegments", &context);
  MediaInitializationSegments = context;
  if (!ChildNode)
  {
    CFDictionaryApplyFunction(a2, applierAddNodeToMediaInitializationSegmentList, context);
    MediaInitializationSegments = context;
  }

  if (MediaInitializationSegments)
  {
LABEL_8:
    CFRelease(MediaInitializationSegments);
  }

  return ChildNode;
}

uint64_t addNodeToMediaSegmentList(const __CFDictionary *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0.0;
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigXMLNodeCreateChildNode(AllocatorForMedia, a2, @"SEG", &cf);
  if (!v5)
  {
    Value = CFDictionaryGetValue(a1, @"URL");
    if (!Value || (v5 = FigXMLNodeAttributeSetCFString(cf, @"URL", Value), !v5))
    {
      v7 = CFDictionaryGetValue(a1, @"PATH");
      if (!v7 || (v5 = FigXMLNodeAttributeSetCFString(cf, @"PATH", v7), !v5))
      {
        if (!FigCFDictionaryGetInt64IfPresent() || (v5 = FigXMLNodeAttributeSetInt64(cf, @"SeqNum", v11), !v5))
        {
          OUTLINED_FUNCTION_298();
          FigCFDictionaryGetDoubleIfPresent();
          v5 = FigXMLNodeAttributeSetDouble(cf, @"Tim", v12);
          if (!v5)
          {
            OUTLINED_FUNCTION_298();
            FigCFDictionaryGetDoubleIfPresent();
            v5 = FigXMLNodeAttributeSetDouble(cf, @"Dur", v12);
            if (!v5)
            {
              OUTLINED_FUNCTION_298();
              FigCFDictionaryGetInt64IfPresent();
              v5 = FigXMLNodeAttributeSetInt64(cf, @"Off", v11);
              if (!v5)
              {
                OUTLINED_FUNCTION_298();
                FigCFDictionaryGetInt64IfPresent();
                v5 = FigXMLNodeAttributeSetInt64(cf, @"Len", v11);
              }
            }
          }
        }
      }
    }
  }

  v8 = v5;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void applierAddNodeToMediaInitializationSegmentList(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  cf = 0;
  v9 = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (!FigXMLNodeCreateChildNode(AllocatorForMedia, a3, @"ISEG", &cf))
  {
    Value = CFDictionaryGetValue(a2, @"URL");
    if (!Value || !FigXMLNodeAttributeSetCFString(cf, @"URL", Value))
    {
      v7 = CFDictionaryGetValue(a2, @"PATH");
      if ((!v7 || !FigXMLNodeAttributeSetCFString(cf, @"PATH", v7)) && (!FigCFDictionaryGetInt64IfPresent() || !FigXMLNodeAttributeSetInt64(cf, @"SeqNum", v9)))
      {
        OUTLINED_FUNCTION_298();
        FigCFDictionaryGetInt64IfPresent();
        if (!FigXMLNodeAttributeSetInt64(cf, @"Off", v9))
        {
          OUTLINED_FUNCTION_298();
          FigCFDictionaryGetInt64IfPresent();
          FigXMLNodeAttributeSetInt64(cf, @"Len", v9);
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t copyMediaSegment(uint64_t a1, CFDictionaryRef theDict, void *key, CMBlockBufferRef *a4)
{
  v4 = 0;
  dataPointerOut = 0;
  cf = 0;
  totalLengthOut = 0;
  theBuffer = 0;
  lengthAtOffsetOut = 0;
  if (!key || !a4)
  {
    goto LABEL_27;
  }

  if (*(a1 + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v33, v34);
    v4 = v26;
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(theDict, key);
  v8 = Value;
  if (!Value)
  {
    v24 = 0;
    goto LABEL_24;
  }

  v33 = 0;
  v34 = 0;
  v9 = CFDictionaryGetValue(Value, @"PATH");
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v33, v34);
    v4 = v27;
    v8 = 0;
    goto LABEL_25;
  }

  v10 = v9;
  FigCFDictionaryGetInt64IfPresent();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v8 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(a1 + 24), v10, 0);
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_41;
  }

  FigGetAllocatorForMedia();
  BlockBuffer = CMByteStreamCreateForFileURL();
  if (BlockBuffer)
  {
LABEL_41:
    v4 = BlockBuffer;
    goto LABEL_25;
  }

  if (*(a1 + 200))
  {
    goto LABEL_15;
  }

  v13 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v15 = Mutable;
    v16 = FigGetAllocatorForMedia();
    v17 = CFStringCreateWithFormat(v16, 0, @"[FigHLSPersistentInfoStore %p]", a1);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(v15, *MEMORY[0x1E69628C8], v17);
      v19 = CMMemoryPoolCreate(v15);
      *(a1 + 200) = v19;
      if (v19)
      {
        v4 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
        v4 = v30;
      }

      CFRelease(v15);
      v20 = v18;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
      v4 = v29;
      v20 = v15;
    }

    CFRelease(v20);
    if (!v4)
    {
LABEL_15:
      BlockBuffer = FigMemoryPoolCreateBlockBuffer();
      if (!BlockBuffer)
      {
        BlockBuffer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
        if (!BlockBuffer)
        {
          if (lengthAtOffsetOut == totalLengthOut)
          {
            v21 = dataPointerOut;
            v22 = cf;
            v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v23)
            {
              v4 = 4294954514;
              goto LABEL_25;
            }

            BlockBuffer = v23(v22, v34, 0, v21, &v33);
            if (!BlockBuffer)
            {
              if (v34 == v33)
              {
                v24 = theBuffer;
LABEL_24:
                v4 = 0;
                *a4 = v24;
                theBuffer = 0;
                goto LABEL_25;
              }

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
        }
      }

      goto LABEL_41;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v33, v34);
    v4 = v28;
    if (!v28)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v4;
}

double xmlCopyMediaPlaylistPath_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigHLSPersistentStreamInfoCreate_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void FigHLSPersistentStreamInfoCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_22(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_23(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_24(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigHLSPersistentStreamInfoCreate_cold_25()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigHLSPersistentStreamInfoCreate_cold_26(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  str = 0;
  Child = FigXMLNodeGetChild(a1, @"MediaBytesStored");
  if (!Child)
  {
    IntValue = 0;
    goto LABEL_5;
  }

  v6 = FigXMLNodeCopyContentAsCFString(Child, &str);
  Child = str;
  if (!v6)
  {
    IntValue = CFStringGetIntValue(str);
    Child = str;
LABEL_5:
    v6 = 0;
    v8 = IntValue & ~(IntValue >> 63);
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:
  *a3 = v6;
  if (Child)
  {
    CFRelease(Child);
  }

  if (v6)
  {
    return 1;
  }

  result = 0;
  *(a2 + 192) = v8;
  return result;
}

BOOL FigHLSPersistentStreamInfoCreate_cold_27(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  return v3 == 0;
}

void FigHLSPersistentStreamInfoCreate_cold_28(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_29(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_30(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_31(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_32(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_33(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_34(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_35(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_36(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_37(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_38(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_39(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSPersistentStreamInfoCreate_cold_40(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_Invalidate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double HLSPersistentStreamInfo_Finalize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void HLSPersistentStreamInfo_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double xmlCopyMediaPlaylistURL_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ps_xmlCopyMediaTypeList_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double xmlCopyStreamType_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double xmlCopyStreamInfoVersion_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double xmlCopyEvictionPolicy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double xmlIsCompressible_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ps_xmlIsComplete_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double xmlCopyUniqueIdentifier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void xmlSetStreamType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void xmlSetEvictionPolicy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void xmlSetStreamBandwidth_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyMediaPlaylist_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyMediaPlaylist_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyMediaPlaylist_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyMediaPlaylist_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyMediaPlaylist_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyMediaSegment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HLSPersistentStreamInfo_CopyMediaInitializationSegment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writeMediaSegment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writeMediaSegment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writeMediaSegment_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writeMediaSegment_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writeMediaSegment_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writeMediaSegment_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writeMediaSegment_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double xmlSetMediaBytesStored_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double xmlGetMediaSegments_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double xmlGetMediaInitializationSegments_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void commitStreamInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigPlayerAirPlayCreateCoordinatedWithOptions(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  theString = 0;
  v26 = 0;
  cf = 0;
  v24 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__str = 0u;
  if (qword_1ED4CABF8 == -1)
  {
    if (!a4)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&qword_1ED4CABF8, &__block_literal_global_38);
    if (!a4)
    {
      goto LABEL_45;
    }
  }

  if (!a2)
  {
    goto LABEL_45;
  }

  if (_MergedGlobals_62 != -1)
  {
    dispatch_once(&_MergedGlobals_62, &__block_literal_global_12);
  }

  FigPlayerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    goto LABEL_46;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = FigSimpleMutexCreate();
  v9 = FigReadWriteLockCreate();
  *(DerivedStorage + 16) = v9;
  if (!v9)
  {
    v21 = 0;
LABEL_47:
    v11 = 0;
LABEL_51:
    MutableCopy = 0;
    goto LABEL_30;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (DerivedStorage + 144), 10, 0x8000100u);
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
LABEL_45:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_46:
    v21 = v7;
    goto LABEL_47;
  }

  v11 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValueFromKeyInDict();
  if (FigAirPlayRouteCreate(a1, v11, (DerivedStorage + 40)))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_50;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_5_62();
  v12 = FigNotificationCenterAddWeakListener();
  if (v12)
  {
LABEL_50:
    v21 = v12;
    goto LABEL_51;
  }

  if (FigAirPlayRoutePuppetCreate(a1, v26, *(DerivedStorage + 40), v11, &v24))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_284();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  FigCFDictionarySetValue();
  MockWithOptions = FigPlayerAirPlayCreateNonCoordinatedWithOptions(a1, a2, MutableCopy, &cf);
  if (MockWithOptions)
  {
    goto LABEL_53;
  }

  MockWithOptions = FigPlayerAirPlayCreateMockWithOptions(a1, cf, MutableCopy, (DerivedStorage + 32));
  if (MockWithOptions)
  {
    goto LABEL_53;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_4_71();
  MockWithOptions = FigNotificationCenterAddWeakListener();
  if (MockWithOptions)
  {
    goto LABEL_53;
  }

  if (v26)
  {
    v15 = (CMBaseObjectGetDerivedStorage() + 144);
  }

  else
  {
    v15 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.papc_notification.%s", v15);
  v16 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 48) = v16;
  if (!v16 || (!v26 ? (v17 = "") : (v17 = (CMBaseObjectGetDerivedStorage() + 144)), snprintf(__str, 0x50uLL, "com.apple.coremedia.papc_routingserialization.%s", v17), v18 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 56) = v18) == 0))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_53;
  }

  *(DerivedStorage + 82) = 0;
  *(DerivedStorage + 80) = 257;
  *(DerivedStorage + 76) = 65793;
  MockWithOptions = FigTimelineCoordinatorSuspensionCreate();
  if (MockWithOptions)
  {
LABEL_53:
    v21 = MockWithOptions;
    goto LABEL_30;
  }

  if (*(DerivedStorage + 136))
  {
    v19 = *(DerivedStorage + 40);
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v20)
    {
      v20(v19);
    }

    v21 = 0;
    *a4 = v26;
    v26 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v21;
}

uint64_t papc_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    return 0;
  }

  v2 = DerivedStorage;
  *(DerivedStorage + 24) = 1;
  FigReadWriteLockLockForWrite();
  FigReadWriteLockUnlockForWrite();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_4_71();
  FigNotificationCenterRemoveWeakListener();
  FigSimpleMutexLock();
  if (v2[1])
  {
    v3 = FigCFDictionaryCopyArrayOfValues();
    FigCFDictionaryRemoveAllValues();
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  FigCFArrayApplyBlock();
  if (v2[5])
  {
    FigBytePumpGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(v5, 0x1F0B22118, 0);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_5_62();
    FigNotificationCenterRemoveWeakListener();
    FigBytePumpGetFigBaseObject();
    if (v7)
    {
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }
  }

  v10 = v2[14];
  if (v10)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v11)
    {
      v11(v10);
    }

    v12 = v2[14];
    if (v12)
    {
      CFRelease(v12);
      v2[14] = 0;
    }
  }

  v13 = v2[15];
  if (v13)
  {
    CFRelease(v13);
    v2[15] = 0;
  }

  FigPlayerGetFigBaseObject();
  if (v14)
  {
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v16)
    {
      v17 = v16(v15);
      if (!v3)
      {
        return v17;
      }
    }

    else
    {
      v17 = 4294954514;
      if (!v3)
      {
        return v17;
      }
    }

    goto LABEL_25;
  }

  v17 = 4294954516;
  if (v3)
  {
LABEL_25:
    CFRelease(v3);
  }

  return v17;
}

uint64_t papc_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  papc_Invalidate(a1);
  v3 = DerivedStorage[6];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = DerivedStorage[7];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = DerivedStorage[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[1];
  if (v6)
  {
    CFRelease(v6);
  }

  FigSimpleMutexDestroy();
  v7 = DerivedStorage[5];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[17];
  if (v8)
  {
    CFRelease(v8);
  }

  return FigReadWriteLockDestroy();
}

void iapc_sendUnhandledURLResponse(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = CMBaseObjectGetDerivedStorage();
  if (v9 && !*(v9 + 24))
  {
    FigReadWriteLockLockForRead();
    if (!*(DerivedStorage + 16))
    {
      if (a2)
      {
        CFRetain(a2);
      }

      if (v8)
      {
        CFRetain(v8);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      OUTLINED_FUNCTION_0_52();
      v11[1] = 3221225472;
      v11[2] = __iapc_sendUnhandledURLResponse_block_invoke;
      v11[3] = &__block_descriptor_64_e5_v8__0l;
      v11[4] = a5;
      v11[5] = DerivedStorage;
      v11[6] = v8;
      v11[7] = a2;
      dispatch_async(v10, v11);
    }

    FigReadWriteLockUnlockForRead();
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void iapc_handleStreamingKeyRequest(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = CMBaseObjectGetDerivedStorage();
  if (v9 && !*(v9 + 24))
  {
    FigReadWriteLockLockForRead();
    if (!*(DerivedStorage + 16))
    {
      if (a2)
      {
        CFRetain(a2);
      }

      if (v8)
      {
        CFRetain(v8);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      OUTLINED_FUNCTION_0_52();
      v11[1] = 3221225472;
      v11[2] = __iapc_handleStreamingKeyRequest_block_invoke;
      v11[3] = &__block_descriptor_64_e5_v8__0l;
      v11[4] = DerivedStorage;
      v11[5] = a5;
      v11[6] = v8;
      v11[7] = a2;
      dispatch_async(v10, v11);
    }

    FigReadWriteLockUnlockForRead();
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void iapc_handleURLProcessorFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*(DerivedStorage + 24))
  {
    if (a5)
    {
      CFRetain(a5);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    OUTLINED_FUNCTION_2_49();
    v11 = 3221225472;
    v12 = __iapc_handleURLProcessorFailed_block_invoke;
    v13 = &__block_descriptor_56_e5_v8__0l;
    v14 = a5;
    v15 = v7;
    v16 = a2;
    dispatch_async(v9, block);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t papc_playbackSessionPerformRemoteAction(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_27_14();
    CMBaseObjectGetDerivedStorage();
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 16);
    result = VTable + 16;
    if (*(v2 + 112))
    {
      OUTLINED_FUNCTION_7_45();

      return v3();
    }
  }

  return result;
}

void __iapc_handleStreamingKeyRequest_block_invoke(void *a1)
{
  FigReadWriteLockLockForRead();
  if (*(a1[4] + 16))
  {
    CopyRemovingKeys = 0;
    v3 = 0;
  }

  else
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 32);
    v3 = Mutable;
    if (Mutable && (CFDataSetLength(Mutable, 32), (MutableBytePtr = CFDataGetMutableBytePtr(v3)) != 0))
    {
      v5 = MutableBytePtr;
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetInt64IfPresent();
      v5[24] = 0;
      *(v5 + 2) = 0;
      v6 = a1[6];
      *v5 = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      v7 = a1[7];
      *(v5 + 1) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      CFRetain(v3);
      CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys();
      papc_playbackSessionPerformRemoteAction(a1[6]);
    }

    else
    {
      CopyRemovingKeys = 0;
    }
  }

  FigReadWriteLockUnlockForRead();
  if (v3)
  {
    CFRelease(v3);
  }

  if (CopyRemovingKeys)
  {
    CFRelease(CopyRemovingKeys);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[5];
  if (v11)
  {
    CFRelease(v11);
  }
}

void papc_playbackSessionRequestForStreamingKeyCompletion(int a1, const void *a2, CFMutableDataRef theData)
{
  MutableBytePtr = CFDataGetMutableBytePtr(theData);
  if (MutableBytePtr)
  {
    v7 = MutableBytePtr;
    CMBaseObjectGetDerivedStorage();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      CFRetain(a2);
    }

    OUTLINED_FUNCTION_2_49();
    v11 = 3221225472;
    v12 = __papc_playbackSessionRequestForStreamingKeyCompletion_block_invoke;
    v13 = &__block_descriptor_68_e5_v8__0l;
    v18 = a1;
    v14 = a2;
    v15 = v7;
    v16 = DerivedStorage;
    v17 = theData;
    dispatch_async(v9, block);
  }
}

void papc_setupOrResetAirPlayMockPlaybackIfNeeded(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 129) != a2)
  {
    v12 = DerivedStorage;
    if (dword_1EAF17268)
    {
      v13 = OUTLINED_FUNCTION_13_25(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v54, v55, v56, v57, SBYTE2(v57), SBYTE3(v57), SHIDWORD(v57));
      if (os_log_type_enabled(v13, BYTE3(v57)))
      {
        v14 = HIDWORD(v57);
      }

      else
      {
        v14 = HIDWORD(v57) & 0xFFFFFFFE;
      }

      if (v14)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v15, v16, v17, v18, v19, v13, BYTE3(v57), v20);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v12 + 129) = a2;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_15_29();
    if (v22)
    {
      v23 = v21;
      v24 = papc_copyCurrentItem(a1);
      v32 = v24;
      if (dword_1EAF17268)
      {
        v33 = OUTLINED_FUNCTION_13_25(v24, v25, v26, v27, v28, v29, v30, v31, v54, v55, v56, v57, SBYTE2(v57), SBYTE3(v57), SHIDWORD(v57));
        if (os_log_type_enabled(v33, type))
        {
          v34 = v59;
        }

        else
        {
          v34 = v59 & 0xFFFFFFFE;
        }

        if (v34)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v35, v36, v37, v38, v39, v33, type, v40);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!*(v23 + 112) || *(*(CMBaseObjectGetVTable() + 16) + 8) && (v41 = OUTLINED_FUNCTION_284(), !v42(v41)))
      {
        v43 = *MEMORY[0x1E695E4D0];
        v44 = *MEMORY[0x1E695E4C0];
        if (a2)
        {
          v45 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v45 = *MEMORY[0x1E695E4C0];
        }

        FigPlayerGetFigBaseObject();
        v47 = v46;
        v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v48)
        {
          v48(v47, 0x1F0B3D138, v45);
        }

        if (!*(v23 + 112) || *(*(CMBaseObjectGetVTable() + 16) + 16) && (v49 = OUTLINED_FUNCTION_284(), !v50(v49)))
        {
          v51 = *(v23 + 104);
          if (v51)
          {
            if (*(v23 + 128))
            {
              if (a2)
              {
                v52 = v44;
              }

              else
              {
                v52 = v43;
              }

              v53 = *(*(CMBaseObjectGetVTable() + 16) + 96);
              if (v53)
              {
                v53(v51, *MEMORY[0x1E6961EA8], 0, v52);
              }
            }
          }
        }
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }
  }
}

void papc_switchFromAirPlayVideoToLocal(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_15_29();
  if (v3)
  {
    v4 = v2;
    if (dword_1EAF17268)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_15_29();
    if (v3)
    {
      if (*(v6 + 128))
      {
        v7 = 1;
      }

      else
      {
        v7 = *(v6 + 129) != 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (*(v4 + 129))
    {
      papc_setupOrResetAirPlayMockPlaybackIfNeeded(a1, 0);
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = *(DerivedStorage + 112);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v10)
      {
        v10(v9);
      }

      v11 = *(DerivedStorage + 112);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v12)
      {
        v12(v11);
      }

      v13 = *(DerivedStorage + 112);
      if (v13)
      {
        CFRelease(v13);
        *(DerivedStorage + 112) = 0;
      }
    }

    v14 = *(DerivedStorage + 120);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 120) = 0;
    }

    v15 = CMBaseObjectGetDerivedStorage();
    v16 = *(v15 + 104);
    if (v16)
    {
      v17 = v15;
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v18)
      {
        v18(v16, 0, 0, 0);
      }

      CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
      if (CMBaseObject)
      {
        v20 = CMBaseObject;
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v21)
        {
          v21(v20);
        }
      }

      v22 = *(v17 + 104);
      if (v22)
      {
        CFRelease(v22);
        *(v17 + 104) = 0;
      }
    }

    *(v4 + 72) = 0;
    if (*(v4 + 83))
    {
      v23 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v23 = MEMORY[0x1E695E4C0];
    }

    FigPlayerGetFigBaseObject();
    v25 = v24;
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v26)
    {
      v26(v25, @"ParticipatingInCoordinatedPlayback", *v23);
    }

    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v27 = FigCFDictionaryCopyArrayOfValues();
    FigCFArrayApplyBlock();
    FigSimpleMutexUnlock();
    if (v27)
    {
      CFRelease(v27);
    }

    papc_updateIsAirPlayVideoActiveIfNeeded(a1, v7);
  }
}

void papc_handlePlaybackSessionEvent(CFTypeRef cf, const void *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (a2 && a4)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigReadWriteLockLockForRead();
      if (*(DerivedStorage + 24))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
      }

      else
      {
        CFRetain(v5);
        CFRetain(a2);
        if (cf)
        {
          CFRetain(cf);
        }

        OUTLINED_FUNCTION_0_52();
        v10 = 3221225472;
        v11 = __papc_handlePlaybackSessionEvent_block_invoke;
        v12 = &__block_descriptor_64_e5_v8__0l;
        v13 = DerivedStorage;
        v14 = cf;
        v15 = v5;
        v16 = a2;
        dispatch_async(v8, &v9);
      }

      FigReadWriteLockUnlockForRead();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void __papc_handlePlaybackSessionEvent_block_invoke(void *a1)
{
  v74[16] = *MEMORY[0x1E69E9840];
  FigReadWriteLockLockForRead();
  v2 = a1[4];
  if (*(v2 + 24))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v61, v62);
    goto LABEL_36;
  }

  if (*(v2 + 104) == a1[5])
  {
    v3 = a1[6];
    v4 = a1[7];
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_15_29();
    if (v5)
    {
      Value = CFDictionaryGetValue(v4, *MEMORY[0x1E6961AB8]);
      v7 = CFDictionaryGetValue(v4, *MEMORY[0x1E6961AB0]);
      if (!CFDictionaryGetValue(v4, *MEMORY[0x1E6961A90]) || FigCFEqual())
      {
        v8 = CFDictionaryGetValue(v4, *MEMORY[0x1E6961A98]);
        v9 = MEMORY[0x1E6961D40];
        if (!v8)
        {
          CFDictionaryGetValue(v4, *MEMORY[0x1E6961D40]);
          goto LABEL_9;
        }

        v16 = v8;
        v65 = CFDictionaryGetValue(v8, *MEMORY[0x1E6961A80]);
        cf = CFDictionaryGetValue(v16, *MEMORY[0x1E6961A78]);
        v17 = CFDictionaryGetValue(v4, *v9);
        if (v17)
        {
          v18 = papc_copyItemForUUID(v3, v17);
          v26 = v18;
          if (!v18)
          {
            if (dword_1EAF17268)
            {
              v51 = OUTLINED_FUNCTION_14_30(0, v19, v20, v21, v22, v23, v24, v25, v60, v61, v62, v63, v64, v65, cf, v69, SBYTE2(v69), SBYTE3(v69), SHIDWORD(v69));
              v52 = os_log_type_enabled(v51, typea);
              v53 = v73 & 0xFFFFFFFE;
              if (v52)
              {
                v53 = v73;
              }

              if (v53)
              {
                if (v3)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_19_26();
                OUTLINED_FUNCTION_16_26();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v54, v55, v56, v57, v58, v51, typea, v59);
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

LABEL_9:
            if (!Value)
            {
LABEL_27:
              v12 = 0;
LABEL_28:
              if (v7 && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
              {
                FigCFEqual();
              }

              if (v12)
              {
                CFRelease(v12);
              }

              goto LABEL_36;
            }

            if (!FigCFEqual())
            {
              if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && FigCFEqual())
              {
                v10 = OUTLINED_FUNCTION_284();
                papc_mediaControlHandleTypePlaybackCoordinationMedium(v10, v11);
              }

              goto LABEL_27;
            }

            v27 = *MEMORY[0x1E695E480];
            v28 = OUTLINED_FUNCTION_23_24();
            v66 = CFDictionaryGetValue(v4, *MEMORY[0x1E6961F40]);
            v12 = papc_copyCurrentItem(v3);
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            v30 = OUTLINED_FUNCTION_23_24();
            v31 = CFStringCreateWithCString(v27, (DerivedStorage + 56), 0x8000100u);
            v74[0] = 0;
            cfa = FigCFWeakReferenceHolderCopyReferencedObject();
            v32 = (DerivedStorage + 40);
            if (!*(DerivedStorage + 40))
            {
              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
              v33 = *(DerivedStorage + 24);
              v34 = *(*(CMBaseObjectGetVTable() + 16) + 152);
              if (v34)
              {
                if (!v34(v33, v74) && !FigAirPlayURLProcessorCreate(v27, v74[0], v30, v32))
                {
                  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_9_36(DefaultLocalCenter);
                  v36 = CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_9_36(v36);
                  v37 = CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_9_36(v37);
                }
              }
            }

            if (v74[0])
            {
              CFRelease(v74[0]);
              if (!v30)
              {
LABEL_52:
                if (!v31)
                {
LABEL_54:
                  if (cfa)
                  {
                    CFRelease(cfa);
                  }

                  v38 = CMBaseObjectGetDerivedStorage();
                  if (v12 && (v39 = *(v38 + 40)) != 0)
                  {
                    v40 = CFRetain(v39);
                  }

                  else
                  {
                    v40 = 0;
                  }

                  iapc_CopyAsset(v12);
                  FigCFDictionarySetBoolean();
                  FigCFDictionarySetBoolean();
                  v43 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (v43)
                  {
                    v43(v40, 0, v66, v28);
                  }

                  if (v28)
                  {
                    CFRelease(v28);
                  }

                  if (v40)
                  {
                    CFRelease(v40);
                  }

                  goto LABEL_28;
                }

LABEL_53:
                CFRelease(v31);
                goto LABEL_54;
              }
            }

            else if (!v30)
            {
              goto LABEL_52;
            }

            CFRelease(v30);
            if (!v31)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v18 = papc_copyCurrentItem(v3);
          v26 = v18;
        }

        if (dword_1EAF17268)
        {
          v41 = OUTLINED_FUNCTION_14_30(v18, v19, v20, v21, v22, v23, v24, v25, v60, v61, v62, v63, v64, v65, cf, v69, SBYTE2(v69), SBYTE3(v69), SHIDWORD(v69));
          if (os_log_type_enabled(v41, type))
          {
            v42 = v72;
          }

          else
          {
            v42 = v72 & 0xFFFFFFFE;
          }

          if (v42)
          {
            if (v3)
            {
              CMBaseObjectGetDerivedStorage();
            }

            CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_19_26();
            OUTLINED_FUNCTION_16_26();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v44, v45, v46, v47, v48, v49, type, v50);
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v26)
        {
          CFRelease(v26);
        }

        goto LABEL_9;
      }
    }
  }

LABEL_36:
  FigReadWriteLockUnlockForRead();
  v13 = a1[5];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[7];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[6];
  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t papc_copyCurrentItem(uint64_t a1)
{
  cf = 0;
  v12 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 32);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v3 || v3(v2, 0, &v12))
  {
    goto LABEL_9;
  }

  if (!v12)
  {
    return 0;
  }

  FigPlaybackItemGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v7 = v6(v5, 0x1F0B3D158, *MEMORY[0x1E695E480], &cf);
  v8 = cf;
  if (!v7)
  {
    if (cf)
    {
      v9 = papc_copyItemForUUID(a1, cf);
      v8 = cf;
      if (!cf)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = 0;
  if (cf)
  {
LABEL_8:
    CFRelease(v8);
  }

LABEL_10:
  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t iapc_CopyAsset(uint64_t a1)
{
  v1 = iapc_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 152))
  {
    v3 = OUTLINED_FUNCTION_298();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t papc_copyItemForUUID(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    if (FigCFDictionaryGetValue())
    {
      a2 = FigCFWeakReferenceHolderCopyReferencedObject();
    }

    else
    {
      a2 = 0;
    }

    FigSimpleMutexUnlock();
  }

  return a2;
}

CFTypeRef iapc_copySubItem(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    }

    else
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = CFRetain(v4);
LABEL_8:
        FigSimpleMutexUnlock();
        return v5;
      }
    }

    v5 = 0;
    goto LABEL_8;
  }

  return 0;
}

void papc_insertSubItemToReceiver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v29 = 0;
  v30 = 0;
  OUTLINED_FUNCTION_15_29();
  if (!v5)
  {
    Mutable = 0;
    goto LABEL_28;
  }

  v6 = v4;
  if (!*(v4 + 104))
  {
    goto LABEL_25;
  }

  if (!a3)
  {
    cf = 0;
    v21 = *(v4 + 32);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v22 || v22(v21, 0, &cf))
    {
      goto LABEL_25;
    }

    Mutable = 0;
    while (1)
    {
      v23 = cf;
      if (!cf)
      {
        break;
      }

      CFRetain(cf);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v24 = *(v6 + 32);
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v25)
      {
        v26 = v25(v24, v23, &cf);
        Mutable = v23;
        if (!v26)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    if (!Mutable)
    {
      v10 = *MEMORY[0x1E695E480];
      v13 = kFigPlaybackItemProperty_AirPlay_FirstPlayQueueItemParams;
      v12 = 1;
      goto LABEL_9;
    }

    CFRetain(Mutable);
    CFRelease(Mutable);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  FigPlaybackItemGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
LABEL_25:
    Mutable = 0;
    goto LABEL_26;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = v9(v8, 0x1F0B3D158, *MEMORY[0x1E695E480], &v30);
  Mutable = 0;
  if (v11 || !v30)
  {
    goto LABEL_26;
  }

  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v12 = 0;
  v13 = kFigPlaybackItemProperty_AirPlay_NextPlayQueueItemParams;
LABEL_9:
  v14 = *v13;
  FigPlaybackItemGetFigBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17 && !v17(v16, v14, v10, &v29))
  {
    if (!v29)
    {
      goto LABEL_28;
    }

    v18 = *(CMBaseObjectGetVTable() + 16);
    if (v12)
    {
      if (!*(v18 + 24))
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (*(v18 + 32))
    {
LABEL_14:
      v19 = OUTLINED_FUNCTION_298();
      v20(v19);
    }
  }

LABEL_26:
  if (v29)
  {
    CFRelease(v29);
  }

LABEL_28:
  if (v30)
  {
    CFRelease(v30);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t papc_CopyPlayQueueItem(uint64_t a1, CFTypeRef a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v19 = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v19, v20);
    v14 = v16;
    a2 = 0;
    goto LABEL_14;
  }

  if (a2)
  {
    a2 = iapc_copySubItem(a2);
    if (!a2)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v19, v20);
      goto LABEL_23;
    }
  }

  v6 = *(DerivedStorage + 32);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7(v6, a2, &v19);
  if (v8)
  {
LABEL_23:
    v14 = v8;
    goto LABEL_14;
  }

  if (!v19)
  {
    v13 = 0;
    goto LABEL_12;
  }

  FigPlaybackItemGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
LABEL_13:
    v14 = 4294954514;
    goto LABEL_14;
  }

  v8 = v11(v10, 0x1F0B3D158, *MEMORY[0x1E695E480], &cf);
  if (v8)
  {
    goto LABEL_23;
  }

  if (cf)
  {
    FigSimpleMutexLock();
    if (FigCFDictionaryGetValue())
    {
      v12 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v12)
      {
        v13 = v12;
        FigSimpleMutexUnlock();
LABEL_12:
        v14 = 0;
        *a3 = v13;
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v19, v20);
    v14 = v17;
    FigSimpleMutexUnlock();
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  FigReadWriteLockUnlockForRead();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v14;
}

uint64_t iapc_CopyProperty()
{
  OUTLINED_FUNCTION_27_14();
  v1 = iapc_copySubItem(v0);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  FigPlaybackItemGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    OUTLINED_FUNCTION_7_45();
    v4 = v3();
  }

  else
  {
    v4 = 4294954514;
  }

  CFRelease(v2);
  return v4;
}

uint64_t iapc_SetProperty()
{
  OUTLINED_FUNCTION_216_0();
  v2 = v1;
  v3 = iapc_copySubItem(v1);
  if (!v3)
  {
    return 4294954511;
  }

  v4 = v3;
  v5 = FPSupport_HandlePlaybackItemSetPropertyAndForwardToSubItem(v2, v3, v0);
  CFRelease(v4);
  return v5;
}

uint64_t iapc_GetDimensions()
{
  OUTLINED_FUNCTION_216_0();
  v3 = iapc_copySubItem(v2);
  if (!v3)
  {
    return 4294954511;
  }

  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    v6 = v5(v4, v1, v0);
  }

  else
  {
    v6 = 4294954514;
  }

  CFRelease(v4);
  return v6;
}

uint64_t iapc_GetDuration(uint64_t a1)
{
  v1 = iapc_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v3 = OUTLINED_FUNCTION_298();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t iapc_SetCurrentTime(uint64_t a1)
{
  v1 = iapc_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(OUTLINED_FUNCTION_10_35(v1) + 16) + 24))
  {
    v3 = OUTLINED_FUNCTION_2_86();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t iapc_GetCurrentTime(uint64_t a1)
{
  v1 = iapc_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v3 = OUTLINED_FUNCTION_298();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t iapc_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = iapc_copySubItem(a1);
  if (!v9)
  {
    return 4294954511;
  }

  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v11)
  {
    v12 = v11(v10, a2, a3, a4, a5);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v10);
  return v12;
}

uint64_t iapc_MakeReadyForInspection()
{
  OUTLINED_FUNCTION_216_0();
  v3 = iapc_copySubItem(v2);
  if (!v3)
  {
    return 4294954511;
  }

  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v5)
  {
    v6 = v5(v4, v1, v0);
  }

  else
  {
    v6 = 4294954514;
  }

  CFRelease(v4);
  return v6;
}

uint64_t iapc_CopyCommonMetadata()
{
  OUTLINED_FUNCTION_27_14();
  v1 = iapc_copySubItem(v0);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    OUTLINED_FUNCTION_7_45();
    v4 = v3();
  }

  else
  {
    v4 = 4294954514;
  }

  CFRelease(v2);
  return v4;
}

uint64_t iapc_CopyChapterImageData()
{
  OUTLINED_FUNCTION_27_14();
  v1 = iapc_copySubItem(v0);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    OUTLINED_FUNCTION_7_45();
    v4 = v3();
  }

  else
  {
    v4 = 4294954514;
  }

  CFRelease(v2);
  return v4;
}

uint64_t iapc_GetNextThumbnailTime(uint64_t a1)
{
  v1 = iapc_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(OUTLINED_FUNCTION_24_17(v1) + 16) + 80))
  {
    v3 = OUTLINED_FUNCTION_2_86();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t iapc_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v7 = iapc_copySubItem(a1);
  if (!v7)
  {
    return 4294954511;
  }

  v8 = v7;
  v26 = *a2;
  v27 = *(a2 + 2);
  v24 = *a4;
  v25 = *(a4 + 2);
  v9 = OUTLINED_FUNCTION_10_35(v7);
  v18 = *(v9 + 16);
  v17 = v9 + 16;
  if (*(v18 + 104))
  {
    v31 = v26;
    v32 = v27;
    v29 = v24;
    v30 = v25;
    v19 = OUTLINED_FUNCTION_20_17(v17, v10, v11, v12, v13, v14, v15, v16, v23);
    v21 = v20(v8, &v31, a3, &v29, v28, v19);
  }

  else
  {
    v21 = 4294954514;
  }

  CFRelease(v8);
  return v21;
}

uint64_t iapc_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = iapc_copySubItem(a1);
  if (!v7)
  {
    return 4294954511;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v9)
  {
    v10 = v9(v8, a2, a3, a4);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t iapc_CopyFormatReader(uint64_t a1)
{
  v1 = iapc_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 120))
  {
    v3 = OUTLINED_FUNCTION_298();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t iapc_SeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = iapc_copySubItem(a1);
  if (!v5)
  {
    return 4294954511;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t iapc_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v10 = iapc_copySubItem(a1);
  if (!v10)
  {
    return 4294954511;
  }

  v11 = v10;
  v29 = *a2;
  v30 = *(a2 + 2);
  v27 = *a4;
  v28 = *(a4 + 2);
  v12 = OUTLINED_FUNCTION_24_17(v10);
  v21 = *(v12 + 16);
  v20 = v12 + 16;
  if (*(v21 + 144))
  {
    v34 = v29;
    v35 = v30;
    v32 = v27;
    v33 = v28;
    v22 = OUTLINED_FUNCTION_20_17(v20, v13, v14, v15, v16, v17, v18, v19, v26);
    v24 = v23(v11, &v34, a3, &v32, v31, a6, v22);
  }

  else
  {
    v24 = 4294954514;
  }

  CFRelease(v11);
  return v24;
}

uint64_t iapc_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = iapc_copySubItem(a1);
  if (!v6)
  {
    return 4294954511;
  }

  v7 = v6;
  v8 = FPSupport_HandlePlaybackItemSetPropertiesAndForwardToSubItem(a1, v6, 0, iapc_handleSetProperty, a2, a3);
  CFRelease(v7);
  return v8;
}

uint64_t iapc_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = iapc_copySubItem(a1);
  if (!v7)
  {
    return 4294954511;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v9)
  {
    v10 = v9(v8, a2, a3, a4);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t iapc_SetCurrentTimeWithOptions()
{
  OUTLINED_FUNCTION_216_0();
  v1 = iapc_copySubItem(v0);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(OUTLINED_FUNCTION_10_35(v1) + 16) + 176))
  {
    v3 = OUTLINED_FUNCTION_2_86();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t papc_SetConnectionActive(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(CMBaseObjectGetVTable() + 24);
    if (v5 && (v6 = *(v5 + 24)) != 0)
    {
      v7 = v6(v4, a2);
      if (!v7)
      {
        *(DerivedStorage + 81) = a2;
      }
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t iapc_Invalidate_cold_1(uint64_t *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  return FigSimpleMutexUnlock();
}

uint64_t iapc_reflectSubItemNotification_cold_1(uint64_t *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  return FigSimpleMutexUnlock();
}

void iapc_createErrorPayload_cold_1(const __CFAllocator *a1, const void *a2, char a3, __CFDictionary **a4)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a4 = Mutable;
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionarySetValue(Mutable, @"Result", a2);
    if (a3)
    {
      CFDictionarySetValue(v8, @"ResultIsFatal", *MEMORY[0x1E695E4D0]);
    }
  }

  CFRelease(a2);
}

void papc_checkStartStopAirPlay_cold_1(uint64_t *a1, uint64_t *a2, const void *a3)
{
  v6 = *a1;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v7 && !v7(v6, papc_handlePlaybackSessionEvent, 0, a3) && *a1)
  {
    *a2 = *a1;
    *a1 = 0;
  }

  CFRelease(a3);
}

void papc_checkStartStopAirPlay_cold_2()
{
  OUTLINED_FUNCTION_216_0();
  v3 = CFUUIDCreate(v2);
  v4 = *v1;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v5 && !v5(v4, v3))
  {
    v6 = *(v0 + 112);
    v7 = *v1;
    *(v0 + 112) = *v1;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v8 = *(v0 + 120);
    *(v0 + 120) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t papc_AddToPlayQueue_cold_1(uint64_t *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;

  return FigReadWriteLockUnlockForRead();
}

uint64_t papc_CreatePlaybackItemFromAsset_cold_2(void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return FigSimpleMutexUnlock();
}

uint64_t __papc_handleRouteNotification_block_invoke_43_cold_2(const void *a1, const void **a2, uint64_t a3)
{
  papc_switchFromAirPlayVideoToLocal(a1);
  papc_resetAirPlayRouteInformation(*a2);

  return FigReadWriteLockUnlockForRead();
}

uint64_t papm_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    return 0;
  }

  v2 = DerivedStorage;
  *(DerivedStorage + 48) = 1;
  FigReadWriteLockLockForWrite();
  FigReadWriteLockUnlockForWrite();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigSimpleMutexLock();
  if (*(v2 + 8))
  {
    v3 = FigCFDictionaryCopyArrayOfValues();
    FigCFDictionaryRemoveAllValues();
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  FigCFArrayApplyBlock();
  FigSimpleMutexLock();
  FigCFArrayApplyBlock();
  FigCFArrayRemoveAllValues();
  FigCFArrayRemoveAllValues();
  FigSimpleMutexUnlock();
  FigPlayerGetFigBaseObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v7 = v6(v5);
      if (!v3)
      {
        return v7;
      }
    }

    else
    {
      v7 = 4294954514;
      if (!v3)
      {
        return v7;
      }
    }

    goto LABEL_12;
  }

  v7 = 4294954516;
  if (v3)
  {
LABEL_12:
    CFRelease(v3);
  }

  return v7;
}

uint64_t papm_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  papm_Invalidate(a1);
  v3 = DerivedStorage[7];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
  }

  FigSimpleMutexDestroy();

  return FigReadWriteLockDestroy();
}

uint64_t papm_getMockPlaybackState(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 16);
  v6 = *(DerivedStorage + 20);
  FigSimpleMutexUnlock();
  if (!v5)
  {
    return v5;
  }

  v7 = papm_copyCurrentItem(a1);
  if (!v7)
  {
    WaitingState = 3;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6 != 0.0)
  {
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    FirstValue = FigCFArrayGetFirstValue();
    if (FirstValue)
    {
      WaitingState = FigPlayerStartupTaskGetWaitingState(FirstValue);
    }

    else
    {
      WaitingState = 4;
    }

    FigSimpleMutexUnlock();
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  WaitingState = 0;
  if (a2)
  {
LABEL_7:
    *a2 = WaitingState;
  }

LABEL_8:
  if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

uint64_t papm_copyCurrentItem(uint64_t a1)
{
  cf = 0;
  v11 = 0;
  v1 = *(CMBaseObjectGetDerivedStorage() + 56);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v2 || v2(v1, 0, &v11))
  {
    goto LABEL_11;
  }

  if (!v11)
  {
    return 0;
  }

  FigPlaybackItemGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v6 = v5(v4, 0x1F0B3D158, *MEMORY[0x1E695E480], &cf);
  v7 = cf;
  if (!v6)
  {
    if (cf)
    {
      CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (FigCFDictionaryGetValue())
      {
        v8 = FigCFWeakReferenceHolderCopyReferencedObject();
      }

      else
      {
        v8 = 0;
      }

      FigSimpleMutexUnlock();
      v7 = cf;
      if (!cf)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v8 = 0;
  if (cf)
  {
LABEL_10:
    CFRelease(v7);
  }

LABEL_12:
  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

void *iapm_setMockPlaybackRateAndTime(uint64_t a1, uint64_t a2, float a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return result;
  }

  v7 = result;
  FigSimpleMutexLock();
  if (*(v7 + 8))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9.value, v9.timescale, LODWORD(v9.epoch));
  }

  else if (*(v7 + 40))
  {
    if (CMTimebaseGetRate(v7[3]) != a3)
    {
      CMTimebaseSetRate(v7[3], a3);
    }

    if (*(a2 + 12))
    {
      v8 = v7[3];
      v9 = *a2;
      CMTimebaseSetTime(v8, &v9);
    }

    return FigSimpleMutexUnlock();
  }

  return FigSimpleMutexUnlock();
}

uint64_t papm_CopyPlayQueueItem(uint64_t a1, CFTypeRef a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v19 = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v19, v20);
    v14 = v16;
    a2 = 0;
    goto LABEL_14;
  }

  if (a2)
  {
    a2 = iapm_copySubItem(a2);
    if (!a2)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v19, v20);
      goto LABEL_23;
    }
  }

  v6 = *(DerivedStorage + 56);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7(v6, a2, &v19);
  if (v8)
  {
LABEL_23:
    v14 = v8;
    goto LABEL_14;
  }

  if (!v19)
  {
    v13 = 0;
    goto LABEL_12;
  }

  FigPlaybackItemGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
LABEL_13:
    v14 = 4294954514;
    goto LABEL_14;
  }

  v8 = v11(v10, 0x1F0B3D158, *MEMORY[0x1E695E480], &cf);
  if (v8)
  {
    goto LABEL_23;
  }

  if (cf)
  {
    FigSimpleMutexLock();
    if (FigCFDictionaryGetValue())
    {
      v12 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v12)
      {
        v13 = v12;
        FigSimpleMutexUnlock();
LABEL_12:
        v14 = 0;
        *a3 = v13;
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v19, v20);
    v14 = v17;
    FigSimpleMutexUnlock();
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  FigReadWriteLockUnlockForRead();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v14;
}

CFTypeRef iapm_copySubItem(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v3 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v3 + 8))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
    FigSimpleMutexUnlock();
    return 0;
  }

  FigSimpleMutexUnlock();
  v4 = *(v3 + 56);
  if (!v4)
  {
    return 0;
  }

  return CFRetain(v4);
}

void papm_setMockRate(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v23 = 0;
  v24 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v6 = papm_copyCurrentItem(a1);
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 20);
  FigSimpleMutexUnlock();
  papm_getMockPlaybackState(a1, &v24);
  if (v7 == 0.0)
  {
    v8 = HIBYTE(v25);
    if (a3 == 0.0 && !HIBYTE(v25))
    {
LABEL_4:
      v8 = 0;
      v9 = 0;
      if (!v25)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = HIBYTE(v25);
    if (!HIBYTE(v25))
    {
      goto LABEL_4;
    }
  }

  LOBYTE(v25) = 1;
LABEL_8:
  v9 = 0;
  if (a3 != 0.0)
  {
    if (v6)
    {
      papm_notifyExternalStartupTasksOfEvents(a1, 5, v8, 0, MEMORY[0x1E6960C70], a3);
      v10 = papm_areAllExternalStartupTasksCompleted(a1);
      v9 = v10 == 0;
      if (!v10 && v7 != 0.0)
      {
        iapm_setMockPlaybackRateAndTime(v6, MEMORY[0x1E6960C70], 0.0);
        v9 = 1;
      }
    }
  }

LABEL_13:
  FigSimpleMutexLock();
  v11 = MEMORY[0x1E695E480];
  if (*(DerivedStorage + 20) == a3)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    *(DerivedStorage + 20) = a3;
    FigSimpleMutexUnlock();
    Mutable = CFDictionaryCreateMutable(*v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = FigCFDictionarySetFloat32();
    v15 = OUTLINED_FUNCTION_17_25(v13, @"ReasonForRateChange", v14, @"RateChangeReason");
    v17 = OUTLINED_FUNCTION_17_25(v15, @"RateChangeIdentifier", v16, @"RateChangeIdentifier");
    v19 = OUTLINED_FUNCTION_17_25(v17, @"CoordinatedPlaybackOriginator", v18, @"CoordinatedPlaybackOriginator");
    OUTLINED_FUNCTION_17_25(v19, @"PauseAffectsCoordinatedPlayback", v20, @"PauseAffectsCoordinatedPlayback");
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v6)
  {
    v21 = v9;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    iapm_setMockPlaybackRateAndTime(v6, MEMORY[0x1E6960C70], a3);
  }

  papm_getMockPlaybackState(a1, &v23);
  if (v24 != v23)
  {
    v22 = CFDictionaryCreateMutable(*v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v22)
    {
      CFRelease(v22);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void papm_notifyExternalStartupTasksOfEvents(uint64_t a1, int a2, int a3, uint64_t a4, __n128 *a5, float a6)
{
  v6 = a4;
  v72 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v61 = papm_copyCurrentItem(a1);
  if (!v61)
  {
    return;
  }

  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      Copy = FigCFArrayCreateCopy();
      v11 = 1;
      goto LABEL_8;
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
    Count = 0;
  }

  Copy = 0;
LABEL_8:
  FigSimpleMutexUnlock();
  if (v11 && Copy && Count >= 1)
  {
    v12 = 0;
    v59 = Copy;
    v56 = v6;
    v55 = DerivedStorage;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Copy, v12);
      v65 = 0;
      cf = 0;
      if (FigPlayerStartupTaskCopyRequiredParameters(ValueAtIndex, &cf))
      {
        break;
      }

      NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(a1, v61, cf);
      v15 = FigCFArrayContainsValue();
      if (v6 && v15)
      {
        FigCFDictionarySetInt32();
      }

      if (FigCFArrayContainsValue() && (a5->n128_u8[12] & 1) != 0)
      {
        OUTLINED_FUNCTION_40_3(a5);
        FigCFDictionarySetCMTime();
      }

      if (FigCFArrayContainsValue())
      {
        FigCFDictionarySetFloat32();
      }

      if (FigCFArrayContainsValue())
      {
        FigCFDictionarySetValue();
      }

      if (FigCFArrayContainsValue())
      {
        OUTLINED_FUNCTION_40_3(MEMORY[0x1E6960C70]);
        if (iapm_getMockPlaybackCurrentTime(v61, &v71))
        {
          v66 = v71;
          FigCFDictionarySetCMTime();
        }
      }

      v16 = FigPlayerStartupTaskNotifyOfEvents(ValueAtIndex, a2, NotificationPayloadForProperties, &v65);
      if (v16)
      {
        v17 = v16;
        OUTLINED_FUNCTION_0_95();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v19 = v63;
        }

        else
        {
          v19 = v63 & 0xFFFFFFFE;
        }

        if (v19)
        {
          if (a1)
          {
            v20 = (CMBaseObjectGetDerivedStorage() + 64);
          }

          else
          {
            v20 = "";
          }

          FigPlayerStartupTaskGetTaskDescription(ValueAtIndex);
          LODWORD(v66.value) = 136316418;
          *(&v66.value + 4) = "papm_notifyExternalStartupTasksOfEvents";
          LOWORD(v66.flags) = 2048;
          *(&v66.flags + 2) = a1;
          HIWORD(v66.epoch) = 2082;
          v67 = v20;
          OUTLINED_FUNCTION_5_63();
          v68 = v21;
          v69 = 1024;
          LODWORD(v70) = v17;
          OUTLINED_FUNCTION_4_72();
          v22 = OUTLINED_FUNCTION_25();
          _os_log_send_and_compose_impl(v22, v23, v24, v25, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, type, "<<<< FigPlayer_AP_Mock >>>> %s: [%p] %{public}s Startup task %p [%{public}@] failed with err %d.");
          DerivedStorage = v55;
        }

        v26 = OUTLINED_FUNCTION_1_89();
        OUTLINED_FUNCTION_13_26(v26, 0, v27, v28, v29);
        v65 = 1;
        v6 = v56;
        Copy = v59;
      }

      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      FigSimpleMutexLock();
      FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
      if (!v65 || FirstIndexOfValue == -1)
      {
        if (!v65 && FirstIndexOfValue == -1)
        {
          CFArrayAppendValue(*(DerivedStorage + 32), ValueAtIndex);
          if (dword_1EAF17288)
          {
            OUTLINED_FUNCTION_0_95();
            v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (os_log_type_enabled(v34, type))
            {
              v35 = v63;
            }

            else
            {
              v35 = v63 & 0xFFFFFFFE;
            }

            if (v35)
            {
              if (a1)
              {
                v36 = (CMBaseObjectGetDerivedStorage() + 64);
              }

              else
              {
                v36 = "";
              }

              TaskDescription = FigPlayerStartupTaskGetTaskDescription(ValueAtIndex);
              WaitingState = FigPlayerStartupTaskGetWaitingState(ValueAtIndex);
              FigPlayerPlaybackStateGetDescription(WaitingState);
              LODWORD(v66.value) = 136316418;
              OUTLINED_FUNCTION_7_46();
              v67 = v36;
              OUTLINED_FUNCTION_5_63();
              v68 = TaskDescription;
              v69 = v48;
              v70 = v49;
              OUTLINED_FUNCTION_4_72();
              _os_log_send_and_compose_impl(v35, 0, v50, 128, &dword_1962D5000, v34, type, "<<<< FigPlayer_AP_Mock >>>> %s: [%p] %{public}s Task %p [%{public}@] is pending. State while waiting: %{public}s");
              Copy = v59;
            }

            v51 = OUTLINED_FUNCTION_1_89();
            OUTLINED_FUNCTION_13_26(v51, 1, v52, v53, v54);
          }
        }
      }

      else
      {
        CFArrayRemoveValueAtIndex(*(DerivedStorage + 32), FirstIndexOfValue);
        if (dword_1EAF17288)
        {
          OUTLINED_FUNCTION_0_95();
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(v31, type))
          {
            v32 = v63;
          }

          else
          {
            v32 = v63 & 0xFFFFFFFE;
          }

          if (v32)
          {
            if (a1)
            {
              v33 = (CMBaseObjectGetDerivedStorage() + 64);
            }

            else
            {
              v33 = "";
            }

            FigPlayerStartupTaskGetTaskDescription(ValueAtIndex);
            LODWORD(v66.value) = 136316162;
            OUTLINED_FUNCTION_7_46();
            v67 = v33;
            OUTLINED_FUNCTION_5_63();
            v68 = v37;
            OUTLINED_FUNCTION_4_72();
            v38 = OUTLINED_FUNCTION_25();
            _os_log_send_and_compose_impl(v38, v39, v40, v41, &dword_1962D5000, v31, type, "<<<< FigPlayer_AP_Mock >>>> %s: [%p] %{public}s Handled and completed startup task %p [%{public}@]");
          }

          v42 = OUTLINED_FUNCTION_1_89();
          OUTLINED_FUNCTION_13_26(v42, 1, v43, v44, v45);
          Copy = v59;
        }
      }

      FigSimpleMutexUnlock();
      ++v12;
    }

    while (Count != v12);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  CFRelease(v61);
}

uint64_t iapm_getMockPlaybackCurrentTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, LODWORD(v10.value), v10.timescale);
    FigSimpleMutexUnlock();
    return 0;
  }

  if (*(v5 + 40) && (v6 = *(v5 + 16)) != 0)
  {
    CMTimebaseGetTime(&v10, v6);
    *a2 = v10;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t iapm_CopyProperty()
{
  OUTLINED_FUNCTION_27_14();
  v2 = v1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = iapm_copySubItem(v2);
  if (!v4)
  {
    return 4294954511;
  }

  v5 = v4;
  if (FigCFEqual())
  {
    v6 = *(DerivedStorage + 16);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    v7 = 0;
    *v0 = v6;
  }

  else
  {
    FigPlaybackItemGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      OUTLINED_FUNCTION_7_45();
      v7 = v8();
    }

    else
    {
      v7 = 4294954514;
    }
  }

  CFRelease(v5);
  return v7;
}

uint64_t iapm_SetProperty(uint64_t a1, uint64_t a2)
{
  v4 = iapm_copySubItem(a1);
  if (!v4)
  {
    return 4294954511;
  }

  v5 = v4;
  v6 = FPSupport_HandlePlaybackItemSetPropertyAndForwardToSubItem(a1, v4, a2);
  CFRelease(v5);
  return v6;
}

uint64_t iapm_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = iapm_copySubItem(a1);
  if (!v5)
  {
    return 4294954511;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t iapm_GetDuration(uint64_t a1)
{
  v1 = iapm_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v3 = OUTLINED_FUNCTION_298();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t iapm_SetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v6 + 8))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v43, v45);
    FigSimpleMutexUnlock();
    return 0;
  }

  v7 = *(v6 + 40);
  FigSimpleMutexUnlock();
  if (!v7)
  {
    v8 = iapm_copySubItem(a1);
    if (!v8)
    {
      return 4294954511;
    }

    v9 = v8;
    v41 = *a2;
    VTable = CMBaseObjectGetVTable();
    v19 = *(VTable + 16);
    v18 = VTable + 16;
    if (*(v19 + 24))
    {
      v20 = OUTLINED_FUNCTION_2_87(v18, v11, v12, v13, v14, v15, v16, v17, v41);
      v22 = v21(v9, v20);
    }

    else
    {
      v22 = 4294954514;
    }

    v38 = v9;
    goto LABEL_11;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v24 = FigCFDictionarySetInt32();
  v31 = OUTLINED_FUNCTION_11_37(v24, @"MinSnapTime", v25, v26, v27, v28, v29, v30, v40, v43, v45, v47, *&v49.value, v49.epoch);
  OUTLINED_FUNCTION_11_37(v31, @"MaxSnapTime", v32, v33, v34, v35, v36, v37, v42, v44, v46, v48, *&v49.value, v49.epoch);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v49 = *a2;
  v22 = iapm_setMockCurrentTime(a1, &v49, Mutable);
  if (Mutable)
  {
    v38 = Mutable;
LABEL_11:
    CFRelease(v38);
  }

  return v22;
}

uint64_t iapm_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  v4 = iapm_copySubItem(a1);
  if (!v4)
  {
    return 4294954511;
  }

  v5 = v4;
  if (a2)
  {
    if (iapm_getMockPlaybackCurrentTime(a1, a2))
    {
      a2 = 0;
    }

    else if (*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v6 = OUTLINED_FUNCTION_298();
      a2 = v7(v6);
    }

    else
    {
      a2 = 4294954514;
    }
  }

  CFRelease(v5);
  return a2;
}

uint64_t iapm_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = iapm_copySubItem(a1);
  if (!v9)
  {
    return 4294954511;
  }

  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v11)
  {
    v12 = v11(v10, a2, a3, a4, a5);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v10);
  return v12;
}

uint64_t iapm_MakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = iapm_copySubItem(a1);
  if (!v5)
  {
    return 4294954511;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t iapm_CopyCommonMetadata()
{
  OUTLINED_FUNCTION_27_14();
  v1 = iapm_copySubItem(v0);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    OUTLINED_FUNCTION_7_45();
    v4 = v3();
  }

  else
  {
    v4 = 4294954514;
  }

  CFRelease(v2);
  return v4;
}

uint64_t iapm_CopyChapterImageData()
{
  OUTLINED_FUNCTION_27_14();
  v1 = iapm_copySubItem(v0);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    OUTLINED_FUNCTION_7_45();
    v4 = v3();
  }

  else
  {
    v4 = 4294954514;
  }

  CFRelease(v2);
  return v4;
}

uint64_t iapm_GetNextThumbnailTime(uint64_t a1)
{
  v1 = iapm_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  v3 = OUTLINED_FUNCTION_24_17(v1);
  v12 = *(v3 + 16);
  v11 = v3 + 16;
  if (*(v12 + 80))
  {
    v13 = OUTLINED_FUNCTION_2_87(v11, v4, v5, v6, v7, v8, v9, v10, v17);
    v15 = v14(v2, v13);
  }

  else
  {
    v15 = 4294954514;
  }

  CFRelease(v2);
  return v15;
}

uint64_t iapm_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v11 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v11 + 8))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, DWORD2(v31), v32);
    FigSimpleMutexUnlock();
    return 0;
  }

  v12 = *(v11 + 40);
  FigSimpleMutexUnlock();
  if (!v12)
  {
    v13 = iapm_copySubItem(a1);
    if (!v13)
    {
      return 4294954511;
    }

    v14 = v13;
    *&v33.value = *a2;
    v33.epoch = *(a2 + 2);
    v15 = OUTLINED_FUNCTION_24_17(v13);
    v24 = *(v15 + 16);
    v23 = v15 + 16;
    if (*(v24 + 104))
    {
      v36 = v33;
      v25 = OUTLINED_FUNCTION_6_58(v23, v16, v17, v18, v19, v20, v21, v22, v31);
      v27 = v26(v14, &v36, a3, v35, v34, v25);
    }

    else
    {
      v27 = 4294954514;
    }

    v29 = v14;
    goto LABEL_11;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v36 = *a4;
  FigCFDictionarySetCMTime();
  v36 = *a5;
  FigCFDictionarySetCMTime();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v36 = *a2;
  v27 = iapm_setMockCurrentTime(a1, &v36, Mutable);
  if (Mutable)
  {
    v29 = Mutable;
LABEL_11:
    CFRelease(v29);
  }

  return v27;
}

uint64_t iapm_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = iapm_copySubItem(a1);
  if (!v7)
  {
    return 4294954511;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v9)
  {
    v10 = v9(v8, a2, a3, a4);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t iapm_CopyFormatReader(uint64_t a1)
{
  v1 = iapm_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 120))
  {
    v3 = OUTLINED_FUNCTION_298();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t iapm_SeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = iapm_copySubItem(a1);
  if (!v5)
  {
    return 4294954511;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t iapm_SetCurrentTimeWithRangeAndID(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4, __int128 *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v13 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v13 + 8))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v35, v36);
    FigSimpleMutexUnlock();
    return 0;
  }

  v14 = *(v13 + 40);
  FigSimpleMutexUnlock();
  if (!v14)
  {
    v15 = iapm_copySubItem(a1);
    if (!v15)
    {
      return 4294954511;
    }

    v16 = v15;
    *&v37.value = *a2;
    v37.epoch = *(a2 + 16);
    v34 = *a5;
    VTable = CMBaseObjectGetVTable();
    v26 = *(VTable + 16);
    v25 = VTable + 16;
    if (*(v26 + 144))
    {
      v40 = v37;
      v27 = OUTLINED_FUNCTION_6_58(v25, v18, v19, v20, v21, v22, v23, v24, v34);
      v29 = v28(v16, &v40, a3, v39, v38, a6, v27);
    }

    else
    {
      v29 = 4294954514;
    }

    v31 = v16;
    goto LABEL_11;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v40 = *a4;
  FigCFDictionarySetCMTime();
  v40 = *a5;
  FigCFDictionarySetCMTime();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v40 = *a2;
  v29 = iapm_setMockCurrentTime(a1, &v40, Mutable);
  if (Mutable)
  {
    v31 = Mutable;
LABEL_11:
    CFRelease(v31);
  }

  return v29;
}

uint64_t iapm_CopyAsset(uint64_t a1)
{
  v1 = iapm_copySubItem(a1);
  if (!v1)
  {
    return 4294954511;
  }

  v2 = v1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 152))
  {
    v3 = OUTLINED_FUNCTION_298();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  CFRelease(v2);
  return v5;
}

uint64_t iapm_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = iapm_copySubItem(a1);
  if (!v6)
  {
    return 4294954511;
  }

  v7 = v6;
  v8 = FPSupport_HandlePlaybackItemSetPropertiesAndForwardToSubItem(a1, v6, 0, iapm_handleSetProperty, a2, a3);
  CFRelease(v7);
  return v8;
}

uint64_t iapm_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = iapm_copySubItem(a1);
  if (!v7)
  {
    return 4294954511;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v9)
  {
    v10 = v9(v8, a2, a3, a4);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t iapm_SetCurrentTimeWithOptions(uint64_t a1, CMTime *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return 0;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v7 + 8))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v27, v28);
    FigSimpleMutexUnlock();
    return 0;
  }

  v8 = *(v7 + 40);
  FigSimpleMutexUnlock();
  if (v8)
  {
    v29 = *a2;
    return iapm_setMockCurrentTime(a1, &v29, a3);
  }

  else
  {
    v9 = iapm_copySubItem(a1);
    if (v9)
    {
      v10 = v9;
      v26 = *&a2->value;
      VTable = CMBaseObjectGetVTable();
      v20 = *(VTable + 16);
      v19 = VTable + 16;
      if (*(v20 + 176))
      {
        v21 = OUTLINED_FUNCTION_2_87(v19, v12, v13, v14, v15, v16, v17, v18, v26);
        v23 = v22(v10, v21);
      }

      else
      {
        v23 = 4294954514;
      }

      CFRelease(v10);
    }

    else
    {
      return 4294954511;
    }
  }

  return v23;
}

uint64_t iapm_setMockCurrentTime(uint64_t a1, CMTime *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v13 = 0;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    return 4294954511;
  }

  v6 = v5;
  FigCFDictionaryGetInt32IfPresent();
  papm_getMockPlaybackState(v6, &v14);
  v12[1] = 0.0;
  FigCFDictionaryGetInt32IfPresent();
  v12[0] = 0.0;
  papm_GetRate(v6, v12);
  FigCFDictionaryGetInt32IfPresent();
  time = *a2;
  papm_notifyExternalStartupTasksOfEvents(v6, 2, 0, HIDWORD(v14), &time, v12[0]);
  if (!papm_areAllExternalStartupTasksCompleted(v6))
  {
    if (dword_1EAF17288)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    iapm_setMockPlaybackRateAndTime(a1, MEMORY[0x1E6960C70], 0.0);
  }

  OUTLINED_FUNCTION_3_51();
  iapm_setMockPlaybackRateAndTime(a1, &time, NAN);
  v8 = MEMORY[0x1E695E480];
  if (HIDWORD(v14))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_3_51();
    FigCFDictionarySetCMTime();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  papm_getMockPlaybackState(v6, &v13);
  if (v14 != v13)
  {
    v10 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v10)
    {
      CFRelease(v10);
    }
  }

  CFRelease(v6);
  return 0;
}

uint64_t iapm_Invalidate_cold_1(uint64_t *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  return FigSimpleMutexUnlock();
}

uint64_t iapm_reflectSubItemNotification_cold_1(uint64_t *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  return FigSimpleMutexUnlock();
}

void papm_handleSetProperty_cold_1(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 40))
  {
    *(DerivedStorage + 40) = 0;
    FigPlaybackItemGetFigBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      if (!v5(v4, @"Timebase", *MEMORY[0x1E695E480], &cf))
      {
        if (cf)
        {
          if (!FigReadOnlyTimebaseSetTargetTimebase())
          {
            v6 = *(DerivedStorage + 24);
            if (v6)
            {
              CFRelease(v6);
              *(DerivedStorage + 24) = 0;
            }
          }
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(a1);
}

uint64_t papm_AddToPlayQueue_cold_1(uint64_t *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;

  return FigReadWriteLockUnlockForRead();
}

uint64_t papm_CreatePlaybackItemFromAsset_cold_3(void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return FigSimpleMutexUnlock();
}

uint64_t H264ProcessData(uint64_t a1, CMBlockBufferRef theBuffer, size_t offset, char *a4, unint64_t a5, uint64_t a6)
{
  if (a4)
  {

    return H264ProcessDataMemory(a1, a4, a5, a6);
  }

  else
  {
    v10 = 0;
    if (theBuffer && a5)
    {
      v11 = offset;
      v12 = a5 + offset;
      if (*(a6 + 24))
      {
        v13 = *(a1 + 48);
        v14 = *a6;
        *(v13 + 56) = *(a6 + 16);
        *(v13 + 40) = v14;
      }

      if (v12 <= offset)
      {
        return 0;
      }

      else
      {
        dataPointerOut = 0;
        while (1)
        {
          v17 = 0;
          DataPointer = CMBlockBufferGetDataPointer(theBuffer, v11, &v17, 0, &dataPointerOut);
          if (DataPointer)
          {
            break;
          }

          v16 = v17;
          if (v12 < v17 + v11)
          {
            v16 = v12 - v11;
            v17 = v12 - v11;
          }

          DataPointer = H264ProcessDataMemory(a1, dataPointerOut, v16, a6);
          if (DataPointer)
          {
            break;
          }

          v11 += v17;
          if (v11 >= v12)
          {
            return 0;
          }
        }

        v10 = DataPointer;
        PesErrorHandling(a1, DataPointer);
      }
    }

    return v10;
  }
}

uint64_t H264EmitBuffer(uint64_t a1)
{
  v141 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v4 = *(v3 + 344);
  if (v4 < 1)
  {
    goto LABEL_184;
  }

  v129 = (a1 + 512);
  Empty = CMBlockBufferCreateEmpty(*(*(a1 + 8) + 40), v4, 0, (a1 + 512));
  if (Empty)
  {
    goto LABEL_213;
  }

  if (*(v3 + 344) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v3 + 336);
    do
    {
      Empty = CMBlockBufferAppendMemoryBlock(*(a1 + 512), *(v8 + v6), *(v8 + v6 + 16), *(*(a1 + 8) + 40), 0, 0, *(v8 + v6 + 8), 0);
      if (Empty)
      {
        goto LABEL_213;
      }

      v8 = *(v3 + 336);
      *(v8 + v6) = 0;
      ++v7;
      v6 += 24;
    }

    while (v7 < *(v3 + 344));
  }

  *(v3 + 344) = 0;
  *(v3 + 352) = 0;
  *(a1 + 616) = CMBlockBufferGetDataLength(*(a1 + 512));
  Empty = PesFrameHeaderFinalizeFrame(a1, 1);
  if (Empty || (Empty = PesCreateBlockBufferFromFrameMemory(a1), Empty))
  {
LABEL_213:
    v109 = Empty;
    goto LABEL_209;
  }

  if (!*(a1 + 504))
  {
    *(a1 + 505) = 0;
  }

  if (!*(a1 + 544))
  {
    v127 = 0;
    BYTE4(v128) = 0;
    HIDWORD(v126) = -1;
    goto LABEL_178;
  }

  v121 = v1;
  v127 = 0;
  v128 = 0;
  v16 = 0;
  v123 = (a1 + 72);
  blockAllocator = *MEMORY[0x1E695E488];
  structureAllocator = *MEMORY[0x1E695E480];
  HIDWORD(v126) = -1;
  while (2)
  {
    v17 = *(*(a1 + 576) + v16);
    v18 = *(*(a1 + 560) + 8 * v16);
    v19 = *(*(a1 + 568) + 8 * v16);
    v20 = v19 - 4;
    v21 = 1;
    switch(*(*(a1 + 576) + v16))
    {
      case 1:
        goto LABEL_15;
      case 5:
        v21 = 0;
LABEL_15:
        returnedPointerOut = 0;
        if (v20 >= 0x20)
        {
          v20 = 32;
        }

        v134 = 0;
        if (v17 == 1 && v128 == 0)
        {
          v23 = 1;
        }

        else
        {
          v23 = HIDWORD(v128);
        }

        if (!v128 && *(v3 + 232))
        {
          v133 = 0;
          v132 = 0;
          v131 = 0;
          v130 = 0;
          v24 = OUTLINED_FUNCTION_0_96(Empty, v9, v10, v11, v12, v13, v14, v15, blockBufferOut, v111, v112, v113, __src, v115, v116, v117, v118, v119, v120, v121, structureAllocator, v123, blockAllocator, v125, v126, v127, v128, v129);
          Empty = CMBlockBufferAccessDataBytes(v24, v25, v20, &temporaryBlock, &returnedPointerOut);
          if (Empty)
          {
            goto LABEL_213;
          }

          Empty = FigH264Bridge_GetPPSSequenceIDFromSlice();
          if (Empty)
          {
            goto LABEL_213;
          }

          Empty = H264GetSPSFromPPSId(v3, SHIDWORD(v133), &v130, 0);
          if (Empty)
          {
            goto LABEL_213;
          }

          Empty = FigH264Bridge_GetInterlaceTypeFromSlice();
          if (Empty)
          {
            goto LABEL_213;
          }

          v26 = v133;
          if (v133 == 3)
          {
LABEL_212:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_92();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_213;
          }

          v27 = v132;
          *(a1 + 592) = v132;
          *(a1 + 588) = v26;
          v28 = v131;
          *(a1 + 596) = v131;
          v29 = *(a1 + 536) & 0xFFFFF9FF;
          *(a1 + 536) = v29;
          switch(v26)
          {
            case 0:
              if (*(v3 + 136))
              {
                FrameQueueEntryClean(v3 + 80);
              }

              goto LABEL_161;
            case 1:
              v30 = 512;
              goto LABEL_152;
            case 2:
              v30 = 1024;
LABEL_152:
              *(a1 + 536) = v29 | v30;
              break;
          }

          if (*(v3 + 136))
          {
            if (*(v3 + 220) == v28 && *(v3 + 216) == v27 && *(v3 + 212) != v26)
            {
              LODWORD(v127) = 1;
              goto LABEL_161;
            }

            FrameQueueEntryClean(v3 + 80);
          }

          v92 = HIDWORD(v127);
          if (!v127)
          {
            v92 = 1;
          }

          HIDWORD(v127) = v92;
LABEL_161:
          if (v17 == 1)
          {
            goto LABEL_162;
          }

LABEL_164:
          if (!v21)
          {
            goto LABEL_178;
          }

          LODWORD(v128) = 1;
LABEL_175:
          if (++v16 >= *(a1 + 544))
          {
            goto LABEL_178;
          }

          continue;
        }

        if (v17 != 1)
        {
          goto LABEL_164;
        }

        v38 = OUTLINED_FUNCTION_0_96(Empty, v9, v10, v11, v12, v13, v14, v15, blockBufferOut, v111, v112, v113, __src, v115, v116, v117, v118, v119, v120, v121, structureAllocator, v123, blockAllocator, v125, v126, v127, v128, v129);
        Empty = CMBlockBufferAccessDataBytes(v38, v39, v20, &temporaryBlock, &returnedPointerOut);
        if (Empty)
        {
          goto LABEL_213;
        }

        Empty = FigH264Bridge_GetPPSSequenceIDFromSlice();
        if (Empty)
        {
          goto LABEL_213;
        }

LABEL_162:
        if (v134 == 2)
        {
          HIDWORD(v128) = v23;
          goto LABEL_164;
        }

        BYTE4(v128) = v134 == 7 && v128 == 0;
LABEL_178:
        if (BYTE4(v128))
        {
          *(a1 + 536) |= 8u;
        }

        if (v127)
        {
          FigMPEG2VideoCombineFields(a1, v3 + 80, a1 + 456);
          H264CalculateFrameRate(a1, v3, v3 + 80);
          FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(a1, v3 + 80);
          v109 = v99;
          FrameQueueEntryClean(v3 + 80);
          goto LABEL_209;
        }

        if (BYTE4(v127))
        {
          FrameQueueMove(v3 + 80, a1 + 456);
LABEL_184:
          v109 = 0;
          goto LABEL_209;
        }

        v100 = *(*(a1 + 8) + 48) == 192 && HIDWORD(v126) == 2;
        if (v100 && (*(a1 + 507) || !*(a1 + 506)) && *(v3 + 248))
        {
          memset(&temporaryBlock, 0, sizeof(temporaryBlock));
          CMTimeMakeWithSeconds(&temporaryBlock, *(v3 + 244) / *(v3 + 236), 90000);
          v101 = *(v3 + 248);
          value = temporaryBlock.value;
          v103 = temporaryBlock.value + v101;
          *(a1 + 488) = temporaryBlock.value + v101;
          *(a1 + 506) = 1;
          if (!*(a1 + 505) || (v104 = *(a1 + 480), v103 == v104) || ((v105 = v104 - value, v101 < v104) ? (v106 = v103 <= v105) : (v106 = 1), v106))
          {
            *(a1 + 504) = 0;
          }

          else
          {
            *(a1 + 488) = v104;
          }
        }

        H264CalculateFrameRate(a1, v3, a1 + 456);
        *(a1 + 600) = 0;
        FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(a1, a1 + 456);
        v109 = v107;
        *(v3 + 248) = *(a1 + 488);
LABEL_209:
        PesCleanAfterFrameEmit(a1);
        return v109;
      case 6:
        v31 = v136;
        v32 = v135;
        v33 = *(a1 + 48);
        v34 = v19 - 5;
        temporaryBlock.value = v19 - 5;
        if ((v19 - 5) < 2)
        {
          goto LABEL_185;
        }

        LODWORD(v126) = v137;
        if (v34 <= *(v33 + 392))
        {
          v37 = *(v33 + 384);
        }

        else
        {
          if (v34 <= 0x200)
          {
            v35 = 512;
          }

          else
          {
            v35 = v19 - 5;
          }

          *(v33 + 392) = v35;
          v36 = malloc_type_zone_realloc(gFigMPEG2ParserZone, *(v33 + 384), v35, 0x100004077774924uLL);
          v37 = v36;
          *(v33 + 384) = v36;
          if (!v36)
          {
            v109 = 4294954510;
            goto LABEL_186;
          }
        }

        v59 = CMBlockBufferCopyDataBytes(*v129, v18 + 5, v34, v37);
        if (v59)
        {
LABEL_210:
          v109 = v59;
          v36 = 0;
          goto LABEL_186;
        }

        v125 = v33;
        H264RemoveEmulation3Byte(*(v33 + 384), &temporaryBlock);
        v60 = temporaryBlock.value;
        v61 = v123;
        Empty = blockAllocator;
        v62 = v126;
        if (temporaryBlock.value < 3uLL)
        {
          goto LABEL_175;
        }

        v63 = 0;
        v64 = 255 * LODWORD(temporaryBlock.value);
        v65 = 255 * LODWORD(temporaryBlock.value) - 255;
        v66 = temporaryBlock.value - 1;
        if (v31)
        {
          v9 = (v32 % 8);
        }

        else
        {
          v9 = 0;
        }

        if (v31)
        {
          v10 = v32 / 8;
        }

        else
        {
          v10 = 0;
        }

        v67 = *(v125 + 384);
        v68 = 8 - v9;
        v69 = temporaryBlock.value - 2;
        v11 = v67 + 24;
        while (2)
        {
          if (v63 >= v60)
          {
            v71 = 0;
          }

          else
          {
            v70 = 0;
            v71 = -255 * v63 + v64;
            while (1)
            {
              v72 = *(v67 + v63);
              if (v72 != 255)
              {
                break;
              }

              ++v63;
              v70 -= 255;
              if (v60 == v63)
              {
                v63 = v60;
                goto LABEL_78;
              }
            }

            v71 = v72 - v70;
          }

LABEL_78:
          if (v63 + 1 >= v60)
          {
            v75 = 0;
          }

          else
          {
            v73 = *(v67 + v63 + 1);
            if (v73 == 255)
            {
              v74 = 0;
              v75 = v65 - 255 * v63;
              while (v69 != v63)
              {
                v74 += 255;
                v73 = *(v67 + 2 + v63++);
                if (v73 != 255)
                {
                  goto LABEL_86;
                }
              }

              v63 = v66;
            }

            else
            {
              v74 = 0;
LABEL_86:
              v75 = v74 + v73;
            }
          }

          v76 = v63 + 2;
          v77 = v63 + 2 + v75;
          if (v77 >= v60)
          {
LABEL_185:
            v36 = 0;
            v109 = 4294954325;
            goto LABEL_186;
          }

          if (v71 == 1)
          {
            if (v62 && v76 + v10 + 3 <= v60)
            {
              v90 = ((*(v67 + v76 + v10 + 2) >> v9) | (*(v67 + v76 + v10 + 1) << v68)) & 0xF;
              if (v90 == 8)
              {
                v91 = 1077936128;
              }

              else
              {
                if (v90 != 7)
                {
                  goto LABEL_148;
                }

                v91 = 0x40000000;
              }

              *(v125 + 244) = v91;
            }
          }

          else if (v71 == 5)
          {
            if (v75 >= 0x15 && *(v67 + v76) == 23)
            {
              v86 = (v67 + v63);
              if (*(v67 + v63 + 3) == 238 && v86[4] == 140 && v86[5] == 96 && v86[6] == 248 && v86[7] == 77 && v86[8] == 17 && v86[9] == 217 && v86[10] == 140 && v86[11] == 214 && v86[12] == 8 && !v86[13] && v86[14] == 32 && v86[15] == 12 && v86[16] == 154 && v86[17] == 102 && v86[18] == 77 && v86[19] == 68 && v86[20] == 80 && v86[21] == 77)
              {
                v87 = v86[22];
                if (v87)
                {
                  v88 = (v11 + v63);
                  v89 = v63 + 28;
                  while (1)
                  {
                    if (v89 > v60)
                    {
                      goto LABEL_175;
                    }

                    if (*(v88 - 1) == 19)
                    {
                      break;
                    }

                    v88 = (v88 + 5);
                    v89 += 5;
                    --v87;
                    v61 = v123;
                    Empty = blockAllocator;
                    v62 = v126;
                    if (!v87)
                    {
                      goto LABEL_148;
                    }
                  }

                  *(a1 + 604) = bswap32(*v88);
                  *(a1 + 536) |= 0x2000u;
                  v61 = v123;
                  Empty = blockAllocator;
                  v62 = v126;
                }
              }
            }
          }

          else if (v71 == 4 && v75 >= 0xA && *(v67 + v76) == 181)
          {
            v79 = (v67 + v63);
            if (!v79[3] && v79[4] == 49)
            {
              v80 = v79 + 5;
              if (v79[5] == 71 && v79[6] == 65 && v79[7] == 57 && v79[8] == 52 && v79[9] == 3)
              {
                v81 = *v61;
                v120 = __PAIR64__(v64, v65);
                v119 = v66;
                HIDWORD(v118) = v9;
                v117 = v10;
                HIDWORD(v116) = v68;
                __src = v80;
                v115 = v11;
                if (*v61)
                {
                  goto LABEL_220;
                }

                v59 = AddPes(*(a1 + 8), *a1, 0, 1635017571, 0, 0, *(a1 + 64) << 8, 0xFFFF, 1, v61);
                if (v59)
                {
                  goto LABEL_210;
                }

                v61 = v123;
                Empty = blockAllocator;
                v81 = *v123;
                v62 = v126;
                v65 = v120;
                v64 = HIDWORD(v120);
                v66 = v119;
                v9 = HIDWORD(v118);
                v10 = v117;
                v68 = HIDWORD(v116);
                v11 = v115;
                if (*v123)
                {
LABEL_220:
                  if (*(v81 + 84))
                  {
                    returnedPointerOut = 0;
                    v82 = v75 - 3;
                    v83 = MEMORY[0x19A8CC720](Empty, v82, 0x100004077774924, 0);
                    v113 = v83;
                    if (!v83)
                    {
                      v109 = 4294954510;
                      goto LABEL_217;
                    }

                    v84 = v83;
                    memcpy(v83, __src, v82);
                    v85 = CMBlockBufferCreateWithMemoryBlock(structureAllocator, v84, v82, blockAllocator, 0, 0, v82, 0, &returnedPointerOut);
                    if (v85)
                    {
                      v109 = v85;
LABEL_217:
                      v36 = v113;
LABEL_186:
                      free(v36);
                      goto LABEL_209;
                    }

                    v109 = CloseCaptionQueueAdd(a1 + 520, returnedPointerOut);
                    if (returnedPointerOut)
                    {
                      CFRelease(returnedPointerOut);
                    }

                    if (v109)
                    {
                      goto LABEL_217;
                    }

                    v61 = v123;
                    Empty = blockAllocator;
                    v62 = v126;
                    v65 = v120;
                    v64 = HIDWORD(v120);
                    v66 = v119;
                    v9 = HIDWORD(v118);
                    v10 = v117;
                    v68 = HIDWORD(v116);
                    v11 = v115;
                  }
                }
              }
            }
          }

LABEL_148:
          v63 = v77;
          if (v60 <= v77 + 2)
          {
            goto LABEL_175;
          }

          continue;
        }

      case 7:
        if (*(v3 + 232))
        {
          goto LABEL_174;
        }

        LOBYTE(v130) = 0;
        returnedPointerOut = 0;
        temporaryBlock.value = 0;
        v40 = OUTLINED_FUNCTION_0_96(Empty, v9, v10, v11, v12, v13, v14, v15, blockBufferOut, v111, v112, v113, __src, v115, v116, v117, v118, v119, v120, v121, structureAllocator, v123, blockAllocator, v125, v126, v127, v128, v129);
        Empty = CMBlockBufferGetDataPointer(v40, v41, &returnedPointerOut, 0, &temporaryBlock);
        if (Empty)
        {
          goto LABEL_213;
        }

        v42 = returnedPointerOut;
        if (returnedPointerOut >= v20)
        {
          goto LABEL_53;
        }

        v43 = malloc_type_malloc(v20, 0x100004077774924uLL);
        temporaryBlock.value = v43;
        if (!v43)
        {
          goto LABEL_212;
        }

        v50 = OUTLINED_FUNCTION_0_96(v43, v44, v45, v43, v46, v47, v48, v49, blockBufferOut, v111, v112, v113, __src, v115, v116, v117, v118, v119, v120, v121, structureAllocator, v123, blockAllocator, v125, v126, v127, v128, v129);
        v53 = CMBlockBufferCopyDataBytes(v50, v51, v20, v52);
        if (v53)
        {
          v109 = v53;
          v36 = temporaryBlock.value;
          goto LABEL_186;
        }

LABEL_53:
        Empty = FigH264Bridge_GetSPSIsInterlaced();
        v109 = Empty;
        if (!Empty)
        {
          Empty = FigH264Bridge_GetSPS_VUI_Framerate();
          if (Empty)
          {
            if (Empty == -12712)
            {
              v109 = 0;
            }

            else
            {
              v109 = Empty;
            }
          }

          else
          {
            v109 = 0;
            *(v3 + 236) = v138;
            *(v3 + 240) = HIBYTE(v137);
          }
        }

        if (v42 < v20)
        {
          free(temporaryBlock.value);
        }

        if (v109)
        {
          goto LABEL_209;
        }

        v93 = v130;
        *(v3 + 232) = v130;
        if (!v93)
        {
          goto LABEL_175;
        }

LABEL_174:
        v94 = OUTLINED_FUNCTION_1_90();
        Empty = H264ParamSetAddSPS(v94, v95, v96, v97, v98, 0);
        if (!Empty)
        {
          goto LABEL_175;
        }

        goto LABEL_213;
      case 8:
        if (*(v3 + 232))
        {
          v54 = OUTLINED_FUNCTION_1_90();
          Empty = H264ParamSetAddPPS(v54, v55, v56, v57, v58);
          if (Empty)
          {
            goto LABEL_213;
          }
        }

        goto LABEL_175;
      case 9:
        LOBYTE(temporaryBlock.value) = 0;
        if (v20 < 2)
        {
          v109 = 4294954320;
          goto LABEL_209;
        }

        Empty = CMBlockBufferCopyDataBytes(*v129, v18 + 5, 1uLL, &temporaryBlock);
        if (Empty)
        {
          goto LABEL_213;
        }

        HIDWORD(v126) = LOBYTE(temporaryBlock.value) >> 5;
        goto LABEL_175;
      default:
        goto LABEL_175;
    }
  }
}

void VendNewBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigImageQueueTableRemoveAllValues(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_0_97(a1);
  CFDictionaryRemoveAllValues(*(v1 + 24));
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigImageQueueTableSetTimebase(uint64_t result, void *a2)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_0_97(result);
    if (!result)
    {
      CFDictionaryApplyFunction(*(v2 + 24), figImageQueueTable_setTimebaseApply, a2);
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  return result;
}

uint64_t FigImageQueueTableSetFlagsAndMask(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_97(a1);
    *(v3 + 32) = a2;
    *(v3 + 36) = a3;
    CFDictionaryApplyFunction(*(v3 + 24), figImageQueueTable_setImageQueueFlagsAndMaskApply, (v3 + 32));
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t FigImageQueueTableSetPropertyOnImageQueues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_97(a1);
    v7[0] = a2;
    v7[1] = a3;
    CFDictionaryApplyFunction(*(v3 + 24), figImageQueueTable_setImageQueueProperty, v7);
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t FigImageQueueTableRespondToTimebaseRateChange(uint64_t a1, OpaqueCMTimebase *a2)
{
  if (a1 && !OUTLINED_FUNCTION_0_97(a1))
  {
    Rate = CMTimebaseGetRate(a2);
    context = Rate;
    CFDictionaryApplyFunction(*(v2 + 24), figImageQueueTable_respondToTimebaseRateChangeApply, &context);
    FigSimpleMutexUnlock();
  }

  return 0;
}

void FigImageQueueTableCreateWithOptions_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  FigSimpleMutexDestroy();

  CFRelease(a1);
}

uint64_t FigImageQueueTableCreateWithOptions_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;

  return FigSimpleMutexDestroy();
}

double MovieSampleGroupSet_csgp(CMBlockBufferRef *blockBufferOut, _DWORD *a2, CMBlockBufferRef theBuffer, OpaqueCMBlockBuffer *a4)
{
  if (!blockBufferOut)
  {
    goto LABEL_22;
  }

  if (blockBufferOut[4])
  {
    goto LABEL_22;
  }

  v5 = blockBufferOut + 9;
  if (blockBufferOut[9])
  {
    goto LABEL_22;
  }

  if (*a2)
  {
    if (theBuffer && a4)
    {
      *v5 = CFRetain(theBuffer);
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v9 = MEMORY[0x1E695E480];
  if (theBuffer)
  {
    if (CMBlockBufferGetDataLength(theBuffer))
    {
      goto LABEL_22;
    }

    *v5 = CFRetain(theBuffer);
  }

  else if (CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 4u, 0, blockBufferOut + 9))
  {
    return *&v10;
  }

  if (!a4)
  {
    if (CMBlockBufferCreateEmpty(*v9, 4u, 0, blockBufferOut + 10))
    {
      return *&v10;
    }

    goto LABEL_15;
  }

  if (CMBlockBufferGetDataLength(a4))
  {
LABEL_22:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    *&v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return *&v10;
  }

LABEL_14:
  blockBufferOut[10] = CFRetain(a4);
LABEL_15:
  v10 = *a2;
  *(blockBufferOut + 16) = a2[4];
  *(blockBufferOut + 3) = v10;
  HIDWORD(v11) = *(blockBufferOut + 15) - 4;
  LODWORD(v11) = HIDWORD(v11);
  switch((v11 >> 2))
  {
    case 0u:
      v12 = GetDescriptionIndex_csgp_4;
      break;
    case 1u:
      v12 = GetDescriptionIndex_csgp_8;
      break;
    case 3u:
      v12 = GetDescriptionIndex_csgp_16;
      break;
    case 7u:
      v12 = GetDescriptionIndex_csgp_32;
      break;
    default:
      goto LABEL_22;
  }

  blockBufferOut[11] = v12;
  return *&v10;
}

uint64_t MovieSampleGroupCreateDeepCopy(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  v30 = 0;
  v31 = 0;
  cf = 0;
  blockBufferOut = 0;
  if (!a2 || !a3 || *(a2 + 140))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_32;
  }

  v6 = MovieSampleGroupCreate(a1, *(a2 + 128), *(a2 + 136), &v31);
  if (v6)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 32);
  if (!v12)
  {
    v13 = *(a2 + 72);
    if (!v13)
    {
      goto LABEL_19;
    }

    IsEmpty = CMBlockBufferIsEmpty(v13);
    if (IsEmpty)
    {
      v6 = CMBlockBufferCreateEmpty(a1, 0, 0, &blockBufferOut);
      if (v6)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v6 = OUTLINED_FUNCTION_2_88(IsEmpty, *(a2 + 72), v15, v16, v17, v18, v19, &blockBufferOut);
      if (v6)
      {
        goto LABEL_32;
      }
    }

    v20 = CMBlockBufferIsEmpty(*(a2 + 80));
    if (v20)
    {
      v6 = CMBlockBufferCreateEmpty(a1, 0, 0, &v30);
      if (v6)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v6 = OUTLINED_FUNCTION_2_88(v20, *(a2 + 80), v21, v22, v23, v24, v25, &v30);
      if (v6)
      {
        goto LABEL_32;
      }
    }

    MovieSampleGroupSet_csgp(v31, (a2 + 48), blockBufferOut, v30);
    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_32:
    v26 = v6;
    goto LABEL_22;
  }

  v6 = OUTLINED_FUNCTION_2_88(v6, v12, v7, v8, v9, v10, v11, &v30);
  if (v6)
  {
    goto LABEL_32;
  }

  MovieSampleGroupSet_sbgp(v31, *(a2 + 28), v30);
  if (v6)
  {
    goto LABEL_32;
  }

LABEL_19:
  v6 = MovieSampleGroupCreateDescriptionArrayDeepCopy(a1, *(a2 + 16), &cf);
  if (v6)
  {
    goto LABEL_32;
  }

  v26 = MovieSampleGroupSetDescriptionArray(v31, cf);
  if (!v26)
  {
    *a3 = v31;
    v31 = 0;
  }

LABEL_22:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

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

  return v26;
}

uint64_t GetDescriptionIndex_csgp_4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = a2;
  if (OUTLINED_FUNCTION_6_59(a1, a2 / 2, a3, a4, a5, a6, a7, a8, v16, v17, SWORD2(v17), SBYTE6(v17), SHIBYTE(v17)))
  {
    return 0;
  }

  LODWORD(v10) = v18 >> 4;
  if (v8)
  {
    LODWORD(v10) = v18 & 0xF;
  }

  if (*(a1 + 64))
  {
    v11 = v10 >= 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = !v11;
  v13 = v12 == 0;
  if (v12)
  {
    v10 = v10;
  }

  else
  {
    v10 &= 7u;
  }

  v14 = 0x100000000;
  if (!v13)
  {
    v14 = 0;
  }

  return v14 | v10;
}

unint64_t GetDescriptionIndex_csgp_8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (OUTLINED_FUNCTION_6_59(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14)))
  {
    return 0;
  }

  v9 = v15;
  if (*(a1 + 64))
  {
    v9 = v15 & 0x7F;
  }

  if (v15 > -1 || *(a1 + 64) == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x100000000;
  }

  return v11 & 0xFFFFFFFFFFFFFF00 | v9;
}

uint64_t GetDescriptionIndex_csgp_16(uint64_t a1, int a2)
{
  destination = 0;
  if (CMBlockBufferCopyDataBytes(*(a1 + 80), 2 * a2, 2uLL, &destination))
  {
    return 0;
  }

  v3 = bswap32(destination);
  v4 = v3 >> 16;
  v5 = HIWORD(v3);
  LODWORD(v6) = HIWORD(v3) & 0x7FFF;
  if (*(a1 + 64))
  {
    v6 = v6;
  }

  else
  {
    v6 = v5;
  }

  v7 = v4 > -1 || *(a1 + 64) == 0;
  v8 = 0x100000000;
  if (v7)
  {
    v8 = 0;
  }

  return v8 | v6;
}

uint64_t GetDescriptionIndex_csgp_32(uint64_t a1, int a2)
{
  destination = 0;
  if (CMBlockBufferCopyDataBytes(*(a1 + 80), 4 * a2, 4uLL, &destination))
  {
    return 0;
  }

  v3 = bswap32(destination);
  LODWORD(v4) = v3 & 0x7FFFFFFF;
  if (*(a1 + 64))
  {
    v4 = v4;
  }

  else
  {
    v4 = v3;
  }

  v5 = v3 > -1 || *(a1 + 64) == 0;
  v6 = 0x100000000;
  if (v5)
  {
    v6 = 0;
  }

  return v6 | v4;
}

double MovieSampleGroupAddDescription(uint64_t a1, size_t a2, const void *a3, uint64_t a4, char *a5)
{
  if (a1)
  {
    if ((a2 == 0) == (a3 == 0))
    {
      if (*(a1 + 140) && (v11 = *(a1 + 112)) != 0 && (MatchingDescriptionIndexValue = FindMatchingDescriptionIndexValue(*(v11 + 16), a2, a3), MatchingDescriptionIndexValue != -1))
      {
        v13 = 0;
        v14 = 0;
        if (!a4)
        {
LABEL_14:
          if (a5)
          {
            *a5 = v14;
          }

          return result;
        }
      }

      else
      {
        MatchingDescriptionIndexValue = FindMatchingDescriptionIndexValue(*(a1 + 16), a2, a3);
        if (MatchingDescriptionIndexValue == -1)
        {
          if (MovieSampleGroupDescriptionArrayAppendNewDescription(*(a1 + 16), a2, a3, &MatchingDescriptionIndexValue))
          {
            return result;
          }

          v14 = 1;
        }

        else
        {
          v14 = 0;
        }

        v13 = *(a1 + 140) != 0;
        if (!a4)
        {
          goto LABEL_14;
        }
      }

      *a4 = MatchingDescriptionIndexValue;
      *(a4 + 4) = v13;
      goto LABEL_14;
    }

    emitter = fig_log_get_emitter();
    v16 = v5;
    v17 = 2535;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v16 = v5;
    v17 = 2534;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949985, "<< MovieSampleGroups >>", v17, v16);
}

uint64_t UpgradeCompactSampleGroupFieldSize(uint64_t a1, int a2)
{
  blockBufferOut = 0;
  WritableForBlockBuffer = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 8u, 0, &blockBufferOut);
  if (WritableForBlockBuffer || (WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer(), WritableForBlockBuffer))
  {
LABEL_20:
    v10 = WritableForBlockBuffer;
    goto LABEL_24;
  }

  if (*(a1 + 56))
  {
    v5 = 0;
    do
    {
      (*(a1 + 88))(a1, v5);
      if (a2 == 32 || a2 == 16 || a2 == 8)
      {
        WritableForBlockBuffer = CMByteStreamAppend();
        if (WritableForBlockBuffer)
        {
          goto LABEL_20;
        }
      }

      v5 = (v5 + 1);
    }

    while (v5 < *(a1 + 56));
  }

  v6 = *(a1 + 80);
  v7 = blockBufferOut;
  *(a1 + 80) = blockBufferOut;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v8 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 60) = a2;
  v9 = GetDescriptionIndex_csgp_8;
  switch(a2)
  {
    case 8:
      goto LABEL_22;
    case 32:
      v9 = GetDescriptionIndex_csgp_32;
      goto LABEL_22;
    case 16:
      v9 = GetDescriptionIndex_csgp_16;
LABEL_22:
      v10 = 0;
      *(a1 + 88) = v9;
      goto LABEL_24;
  }

  v10 = 0;
LABEL_24:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v10;
}

uint64_t AppendSamplesWithDescriptionIndexToRegularGroup(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  HIDWORD(v41) = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  cf = 0;
  blockBufferOut = 0;
  if (*(a1 + 40))
  {
    goto LABEL_17;
  }

  v7 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x10u, 0, &blockBufferOut);
  if (!v7)
  {
    v15 = *(a1 + 32);
    if (v15 && (v16 = *(a1 + 28)) != 0)
    {
      v42 = 0;
      destination = 0;
      v17 = 8 * v16 - 8;
      appended = CMBlockBufferCopyDataBytes(v15, v17, 8uLL, &destination);
      if (*(a1 + 28) >= 2)
      {
        appended = CMBlockBufferAppendBufferReference(blockBufferOut, *(a1 + 32), 0, v17, 0);
      }

      v7 = OUTLINED_FUNCTION_4_73(appended, v19, v20, v21, v22, v23, v24, v25, v38, v39, v40, v41, v42, destination, cf, blockBufferOut);
      if (!v7)
      {
        CMByteStreamAppend();
LABEL_10:
        v26 = *(a1 + 32);
        v27 = blockBufferOut;
        *(a1 + 32) = blockBufferOut;
        if (v27)
        {
          CFRetain(v27);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        v6 = 0;
        *(a1 + 40) = CFRetain(cf);
        goto LABEL_15;
      }
    }

    else
    {
      v7 = OUTLINED_FUNCTION_4_73(v15, v8, v9, v10, v11, v12, v13, v14, v38, v39, v40, v41, v42, destination, cf, blockBufferOut);
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  v6 = v7;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_17:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v6)
  {
    return v6;
  }

  v28 = *(a1 + 28);
  if (!v28)
  {
    v29 = 0;
    goto LABEL_30;
  }

  v29 = v28 - 1;
  MovieSampleGroupGetEntry(a1, v28 - 1, &v41 + 1, &v38);
  if (!*(a1 + 28))
  {
LABEL_30:
    HIDWORD(v41) = a2;
    LODWORD(v38) = a3;
    BYTE4(v38) = BYTE4(a3);
    *(&v38 + 5) = HIDWORD(a3) >> 8;
    v32 = HIBYTE(a3);
    goto LABEL_31;
  }

  v30 = HIDWORD(v41);
  if (v38 != a3 || BYTE4(v38) != BYTE4(a3))
  {
    HIDWORD(v41) = a2;
    if (v30)
    {
      v29 = v28;
    }

    LODWORD(v38) = a3;
    BYTE4(v38) = BYTE4(a3);
    *(&v38 + 5) = HIDWORD(a3) >> 8;
    v32 = HIBYTE(a3);
LABEL_31:
    HIBYTE(v38) = v32;
    v33 = a2;
    if (a2)
    {
      goto LABEL_32;
    }

LABEL_39:
    v6 = 0;
    *(a1 + 24) += a2;
    *(a1 + 28) = v29 + 1;
    return v6;
  }

  v33 = HIDWORD(v41) + a2;
  HIDWORD(v41) = v33;
  if (!v33)
  {
    goto LABEL_39;
  }

LABEL_32:
  v34 = a3 | 0x10000;
  if (!BYTE4(a3))
  {
    v34 = a3;
  }

  v39 = _byteswap_uint64(__PAIR64__(v33, v34));
  v35 = *(a1 + 40);
  v36 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v36)
  {
    return 4294954514;
  }

  v6 = v36(v35, 8, 8 * v29, &v39, &v40);
  if (!v6)
  {
    goto LABEL_39;
  }

  return v6;
}

void OutputTrailingPatternRunThroughSampleNumber(uint64_t a1, int a2)
{
  v3 = a2 - *(a1 + 24) + 1;
  v4.n128_u64[0] = AppendNewPattern(*(a1 + 32), *(a1 + 44), v3);
  if (!v5)
  {
    if (*(a1 + 44) < 1)
    {
LABEL_7:
      *(a1 + 24) += v3;
    }

    else
    {
      v6 = 0;
      while (!(*(*(a1 + 16) + 48))(v4) && !AppendDescriptionIndexToCompactGroup(*(a1 + 32), 0))
      {
        if (++v6 >= *(a1 + 44))
        {
          goto LABEL_7;
        }
      }
    }
  }
}

void OutputTrailingNonPatternRunThroughSampleNumber(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (v4 < 0 == v3)
  {
    v8.n128_u64[0] = AppendNewPattern(*(a1 + 32), v4 + 1, v4 + 1);
    if (!v7 && *(a1 + 24) <= a2)
    {
      do
      {
        if ((*(*(a1 + 16) + 48))(v8))
        {
          break;
        }

        if (AppendDescriptionIndexToCompactGroup(*(a1 + 32), 0))
        {
          break;
        }

        v9 = *(a1 + 24);
        *(a1 + 24) = v9 + 1;
      }

      while (v9 < a2);
    }
  }
}

int32x2_t AppendNewPattern(int32x2_t *a1, unsigned int a2, __int32 a3)
{
  if (!CMByteStreamAppend())
  {
    v6.i32[0] = 1;
    v6.i32[1] = a3;
    result = vadd_s32(a1[6], v6);
    a1[6] = result;
  }

  return result;
}

uint64_t AppendDescriptionIndexToCompactGroup(uint64_t a1, uint64_t a2)
{
  if (a2 >= 0x10000)
  {
    v3 = 32;
  }

  else
  {
    v3 = 16;
  }

  if (a2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8;
  }

  if (a2 >= 16)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  if (a2 >= 0x8000)
  {
    v6 = 32;
  }

  else
  {
    v6 = 16;
  }

  if (a2 < 0x80)
  {
    v6 = 8;
  }

  if (a2 >= 8)
  {
    v7 = v6;
  }

  else
  {
    v7 = 4;
  }

  if (*(a1 + 64))
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(a1 + 60);
  if (v8 > v9)
  {
    result = UpgradeCompactSampleGroupFieldSize(a1, v8);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 60);
  }

  HIDWORD(v10) = v9 - 4;
  LODWORD(v10) = v9 - 4;
  switch((v10 >> 2))
  {
    case 0u:
      if ((*(a1 + 56) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        return 4294954514;
      }

      v12 = OUTLINED_FUNCTION_5_64();
      result = v13(v12);
      if (!result)
      {
        if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          return 4294954514;
        }

        v14 = OUTLINED_FUNCTION_5_64();
        result = v15(v14);
        if (!result)
        {
          goto LABEL_25;
        }
      }

      break;
    case 1u:
    case 3u:
    case 7u:
LABEL_24:
      result = CMByteStreamAppend();
      if (!result)
      {
        goto LABEL_25;
      }

      return result;
    default:
LABEL_25:
      result = 0;
      ++*(a1 + 56);
      return result;
  }

  return result;
}

void MovieSampleGroupCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCreateForFragment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCreateForFragment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCreateForFragment_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCreateForFragment_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSetDescriptionArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSetDescriptionArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSetDescriptionArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSetDescriptionArray_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSet_sbgp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSet_sbgp_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSet_sbgp_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSet_sbgp_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSet_sbgp_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSet_sbgp_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupSet_sbgp_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCreateDescriptionArrayDeepCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupGetEntry_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupGetEntry_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupGetEntry_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCollectionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCollectionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCollectionAddSampleGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCollectionAddSampleGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCollectionAddSampleGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupGetInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MovieSampleGroupCollectionHasSampleGroup_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieSampleGroupCollectionRemoveAllGroupsWithGroupingType_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieSampleGroupCollectionLookupAndRetainSampleGroup_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieSampleGroupCollectionCopySampleGroupArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieSampleGroupCollectionApplyFunction_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieSampleGroupCollectionApplyFunction_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void MovieSampleGroupDescriptionArrayAppendNewDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArrayAppendParsedDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArrayAppendParsedDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArraySetDefaultDescriptionIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArrayCopyInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArrayCopyDescriptionForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArrayCopyDescriptionForIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArrayCopyDescriptionForIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArrayCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArrayCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupDescriptionArrayCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupGetPatternEntry_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupGetPatternEntry_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupGetPatternEntry_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCopyCompactAtomComponents_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCopyCompactAtomComponents_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCopyDescriptionForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCopyDescriptionForIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCopyDescriptionForIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCopyGroupTypeKeyString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCopyGroupTypeKeyString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupAccessorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupAccessorCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupAccessorCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupAppendSamplesWithDescriptionIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupAppendSamplesWithDescriptionIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupIntegrateSampleGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupIntegrateSampleGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupIntegrateSampleGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupIntegrateSampleGroup_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupIntegrateSampleGroup_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupIntegrateSampleGroup_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCreateOptimizedCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleGroupCreateOptimizedCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void RegularSampleGroupAccessorGetDescriptionIndexForSample_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigAssetCacheInspectorCreate(const void *a1, CFTypeRef cf, CFTypeRef *a3)
{
  url = 0;
  if (!cf || (v7 = CFGetTypeID(cf), v7 != FigAssetGetTypeID()))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950034, "(Fig)", 76, v3);
LABEL_21:
    v13 = v11;
    goto LABEL_16;
  }

  if (!a3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950034, "(Fig)", 77, v3);
    goto LABEL_21;
  }

  FigAssetGetCMBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v13 = 4294954514;
    goto LABEL_16;
  }

  v11 = v10(v9, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &url);
  if (v11)
  {
    goto LABEL_21;
  }

  if (url)
  {
    v12 = CFURLCopyPathExtension(url);
  }

  else
  {
    v12 = 0;
  }

  if (FigCFURLIsLocalResource() && !FigCFEqual())
  {
    File = FigAssetCacheInspectorCreate_File(a1, cf, a3);
  }

  else
  {
    File = FigAssetCacheInspectorCreate_Streaming(a1, cf, a3);
  }

  v13 = File;
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_16:
  if (url)
  {
    CFRelease(url);
  }

  return v13;
}

void __fssa_copyArchivistGuts_block_invoke(uint64_t a1)
{
  if (CFDictionaryGetValue(sArchivistSingletonContext_0, *(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v2 = sArchivistSingletonContext_0;
      v3 = *(a1 + 40);

      CFDictionaryRemoveValue(v2, v3);
    }
  }
}

uint64_t fssa_fbo_copyRecords(uint64_t a1, void *a2)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
    v4 = *DerivedStorage;
    block = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = __fssa_fbo_copyRecords_block_invoke;
    v15 = &unk_1E748B4D8;
    v16 = &v19;
    v17 = &v23;
    v18 = DerivedStorage;
    dispatch_sync(v4, &block);
    v5 = v24;
    v6 = v20;
    if (!*(v24 + 6))
    {
      *a2 = v20[3];
      v6[3] = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, block, v13);
    v5 = v24;
    *(v24 + 6) = v10;
    v6 = v20;
  }

  v7 = v6[3];
  if (v7)
  {
    CFRelease(v7);
    v5 = v24;
  }

  v8 = *(v5 + 6);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v8;
}

uint64_t fssa_fbo_updateRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!(a3 | a4))
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949556, "<<<< FigSecureStopArchivist >>>>", 612, v8);
LABEL_8:
    *(v42 + 6) = v17;
    goto LABEL_5;
  }

  if (!a8)
  {
    v28 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 4294949556, "<<<< FigSecureStopArchivist >>>>", 613, v8);
    goto LABEL_8;
  }

  v16 = DerivedStorage;
  v17 = FigCFEqual();
  if (v17)
  {
    v25 = *v16;
    v29 = MEMORY[0x1E69E9820];
    v30 = 0x40000000;
    v31 = __fssa_fbo_updateRecord_block_invoke;
    v32 = &unk_1E748B528;
    v33 = &v41;
    v34 = v16;
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v40 = a8;
    dispatch_sync(v25, &v29);
  }

LABEL_5:
  OUTLINED_FUNCTION_3_66(v17, v18, v19, v20, v21, v22, v23, v24, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  return a8;
}

uint64_t fssa_fbo_finalizeRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 | a4 && a6 && a4 | a7)
  {
    v13 = DerivedStorage;
    v14 = FigCFEqual();
    if (v14)
    {
      v22 = *v13;
      v26 = MEMORY[0x1E69E9820];
      if (a4)
      {
        v23 = a7 == 0;
      }

      else
      {
        v23 = 0;
      }

      v27 = 0x40000000;
      v28 = __fssa_fbo_finalizeRecord_block_invoke;
      v29 = &unk_1E748B560;
      v24 = v23;
      v30 = &v38;
      v31 = v13;
      v32 = a3;
      v33 = a4;
      v34 = a5;
      v35 = a6;
      v36 = a7;
      LOBYTE(v37) = v24;
      dispatch_sync(v22, &v26);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    *(v39 + 6) = v14;
  }

  OUTLINED_FUNCTION_3_66(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  return a7;
}

void fssa_serializeRecordAndAddToOutputDictionary(const void *a1, void *a2, __CFDictionary *a3)
{
  if (!a2[3])
  {
    return;
  }

  err = 0;
  propertyList = 0;
  DictionaryFromSecureStopRecord = fssr_createDictionaryFromSecureStopRecord(a2, 1, &propertyList);
  v6 = propertyList;
  if (DictionaryFromSecureStopRecord)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v7 = CFPropertyListCreateData(*MEMORY[0x1E695E480], propertyList, kCFPropertyListXMLFormat_v1_0, 0, &err);
    if (err && CFErrorGetCode(err))
    {
      v9 = 0;
      v8 = 0;
      goto LABEL_8;
    }

    if (!v7)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", err, propertyList, v13);
      v9 = 0;
      v8 = v10 == 0;
      goto LABEL_8;
    }

    v8 = 1;
    v9 = v7;
  }

  v7 = 0;
LABEL_8:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (err)
  {
    CFRelease(err);
  }

  if (v8)
  {
    CFDictionarySetValue(a3, a1, v9);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void fssa_createRecordDictionaryAndAddToOutputDictionary(const void *a1, void *a2, __CFDictionary *a3)
{
  value = 0;
  DictionaryFromSecureStopRecord = fssr_createDictionaryFromSecureStopRecord(a2, 0, &value);
  v6 = value;
  if (!DictionaryFromSecureStopRecord)
  {
    CFDictionarySetValue(a3, a1, value);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t fssr_createSecureStopRecord(uint64_t a1, uint64_t *a2)
{
  v6 = xmmword_1E748B548;
  if (_MergedGlobals_64 != -1)
  {
    dispatch_once_f(&_MergedGlobals_64, &v6, FigSecureStopRecordClassRegisterOnce);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294949555;
  }

  v4 = Instance;
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t fssr_createSecureStopRecordFromDictionary(const __CFDictionary *a1, void *a2)
{
  cf = 0;
  SecureStopRecord = fssr_createSecureStopRecord(*MEMORY[0x1E695E480], &cf);
  v5 = cf;
  if (SecureStopRecord)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    Value = CFDictionaryGetValue(a1, @"SessionLifespanSPC");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    v5[2] = Value;
    v7 = CFDictionaryGetValue(a1, @"SecureStopSPC");
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    v5[3] = v7;
    v8 = CFDictionaryGetValue(a1, @"ModifiedDate");
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    v5[4] = v8;
    v9 = CFDictionaryGetValue(a1, @"VersionList");
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    v5[5] = v9;
    v10 = CFDictionaryGetValue(a1, @"PlaybackSessionID");
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    v5[6] = v10;
    v11 = CFDictionaryGetValue(a1, @"AirPlayPlaybackSessionID");
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    v5[7] = v11;
    v12 = CFDictionaryGetValue(a1, @"APIProviderID");
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    v5[8] = v12;
    v13 = CFDictionaryGetValue(a1, @"AssetID");
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    v5[9] = v13;
    v14 = CFDictionaryGetValue(a1, @"AbnormallyTerminated");
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    v5[10] = v14;
    *a2 = v5;
  }

  return SecureStopRecord;
}

void FigSecureStopArchivistCopyInstance_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSecureStopArchivistCopyInstance_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSecureStopArchivistCopyInstance_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSecureStopArchivistCopyInstance_cold_4()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  *v0 = v1;
}

BOOL FigSecureStopArchivistCopyInstance_cold_5()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *v0 = v2;
  return v1 == 0;
}

void FigSecureStopArchivistCopyInstance_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fssr_createRecordFromSerializedData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fssr_createRecordFromSerializedData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fssa_createKey_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  *v0 = v2;

  CFRelease(v1);
}

void fssa_createKey_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double __fssa_ensureArchivistSingletonContext_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void fssa_fbo_removeRecords_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  *v0 = v2;
  *(*v1 + 24) = v2;
}

void __fssa_fbo_copyRecords_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void fssr_createDictionaryFromSecureStopRecord_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t fssa_synchronizeInMemoryDatabaseToDisk_cold_1(void *a1, const __CFData *a2, _DWORD *a3)
{
  DarwinFileDesc = FigFileGetDarwinFileDesc();
  flock(DarwinFileDesc, 2);
  CFDataGetBytePtr(a2);
  CFDataGetLength(a2);
  v6 = FigFileForkWrite();
  if (!v6)
  {
    CFDataGetLength(a2);
    v6 = FigFileForkTruncate();
    if (!v6)
    {
      v7 = FigFileGetDarwinFileDesc();
      flock(v7, 8);
      v6 = 0;
    }
  }

  *a3 = v6;
  return FigFileForkClose();
}

void fssa_synchronizeInMemoryDatabaseToDisk_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fssa_synchronizeInMemoryDatabaseToDisk_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fssa_updateRecordGuts_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fssa_updateRecordGuts_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL fssa_createRecordAndAddToInMemoryDatabase_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return v0 == 0;
}

uint64_t boxedreader_CopyValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v27 = 0;
  cf = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954696, "<<<< Fig Boxed Metadata Reader >>>>", 100, v7);
LABEL_32:
    v23 = v20;
    goto LABEL_25;
  }

  if (!a3)
  {
    v26 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 4294954696, "<<<< Fig Boxed Metadata Reader >>>>", 101, v7);
    goto LABEL_32;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v15 && (v16 = v15(a1, a2, a3), v16 >= 1))
  {
    v17 = v16;
    v18 = 0;
    while (1)
    {
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v19)
      {
        break;
      }

      v20 = v19(a1, a2, a3, v18, a5, &cf, &v27);
      if (v20)
      {
        goto LABEL_32;
      }

      if (a4 && CFGetTypeID(cf) != a4)
      {
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v27)
        {
          CFRelease(v27);
          v27 = 0;
        }

        if (v17 != ++v18)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v23 = 4294954514;
  }

  else
  {
LABEL_15:
    if (a6)
    {
      v21 = cf;
      if (cf)
      {
        v21 = CFRetain(cf);
      }

      *a6 = v21;
    }

    if (a7)
    {
      v22 = v27;
      if (v27)
      {
        v22 = CFRetain(v27);
      }

      v23 = 0;
      *a7 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v23;
}

uint64_t boxedreader_HasKey(uint64_t a1, const __CFString *a2, const void *a3)
{
  Identifiers = boxedreader_getIdentifiers(a1);
  identifierOut = 0;
  if (a2 && a3)
  {
    v6 = Identifiers;
    if (!CMMetadataCreateIdentifierForKeyAndKeySpace(*MEMORY[0x1E695E480], a3, a2, &identifierOut))
    {
      v10.length = CFArrayGetCount(v6);
      v10.location = 0;
      v7 = CFArrayContainsValue(v6, v10, identifierOut);
      goto LABEL_5;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v7 = 0;
LABEL_5:
  if (identifierOut)
  {
    CFRelease(identifierOut);
  }

  return v7;
}

void FigMetadataReaderCreateForBoxedMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataReaderCreateForBoxedMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double boxedreader_GetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void boxedReader_CopyKeyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void boxedReader_CopyKeyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void boxedReader_CopyKeyAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void boxedReader_CopyKeyAtIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double boxedreader_GetItemCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double boxedreader_GetItemCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void boxedreader_CopyItemWithKeyAndIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void boxedreader_CopyItemWithKeyAndIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void boxedreader_CopyItemWithKeyAndIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void boxedreader_CopyItemWithKeyAndIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double boxedreader_createItemIndexesMatchingKeyAndKeySpace_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void fvt_playbackStartupPreventionAssertionStateChangedWhileHoldingMutex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetBoolean();
    FigCFDictionarySetValue();
    FigImageQueueGetFigBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(v6, @"RendererPreparationInfo", v4);
    }

    CFRelease(v4);
  }
}

uint64_t MPEG2VideoSniff(OpaqueCMBlockBuffer *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  DataLength = CMBlockBufferGetDataLength(a1);
  v3 = 1;
  v4 = DataLength - 4;
  if (DataLength == 4)
  {
    v18 = 1;
    v17 = 1;
LABEL_36:
    result = 4294954325;
    if (!v18 || (v17 & 1) == 0)
    {
      if (v3 | v17)
      {
        return 4294954325;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v19 = 0;
    while (1)
    {
      result = CMBlockBufferAccessDataBytes(a1, v10, 4uLL, temporaryBlock, &v19);
      if (result)
      {
        break;
      }

      if (*v19 || v19[1] || v19[2] != 1)
      {
        v14 = 1;
      }

      else
      {
        if (!v10)
        {
          v8 = 1;
        }

        v12 = v19[3];
        v13 = v12 - 176 > 6 || ((1 << (v12 + 80)) & 0x43) == 0;
        if (!v13 || v12 > 0xB8)
        {
          return 4294954325;
        }

        ++v9;
        if (v12 == 184)
        {
          v7 = 1;
        }

        else if (v12 == 179)
        {
          v6 = 1;
        }

        else if (!v19[3])
        {
          v5 = 1;
        }

        v14 = 4;
      }

      v10 += v14;
      if (v10 >= v4)
      {
        if (v6)
        {
          v15 = v7 == 0;
        }

        else
        {
          v15 = 1;
        }

        v17 = v15 || v5 == 0;
        v18 = v8 == 0;
        v3 = v9 < 5;
        goto LABEL_36;
      }
    }
  }

  return result;
}

uint64_t MPEG2VideoEmitBuffer(uint64_t a1, uint64_t a2)
{
  v52 = 0;
  destination = 0;
  v50 = 0;
  BlockBufferFromFrameMemory = PesFrameHeaderFinalizeFrame(a1, 0);
  if (BlockBufferFromFrameMemory)
  {
    goto LABEL_81;
  }

  BlockBufferFromFrameMemory = PesCreateBlockBufferFromFrameMemory(a1);
  if (BlockBufferFromFrameMemory)
  {
    goto LABEL_81;
  }

  if (CMBlockBufferGetDataLength(*(a1 + 512)) < 8)
  {
    v6 = 4294954320;
    goto LABEL_82;
  }

  if ((*(a1 + 536) & 2) == 0 && !*(a2 + 114) && !*(a2 + 115) || !*(a1 + 544))
  {
    v7 = 0;
    goto LABEL_53;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v43 = (a1 + 72);
  do
  {
    while (1)
    {
      v12 = *(*(a1 + 576) + v11);
      if (v12 != 179)
      {
        break;
      }

      if (v9)
      {
        goto LABEL_40;
      }

      BlockBufferFromFrameMemory = CMBlockBufferCopyDataBytes(*(a1 + 512), *(*(a1 + 560) + 8 * v11) + 7, 1uLL, &destination);
      if (BlockBufferFromFrameMemory)
      {
        goto LABEL_81;
      }

      destination &= 0xFu;
      ++v11;
      v9 = 1;
      if (v11 >= *(a1 + 544))
      {
        goto LABEL_48;
      }
    }

    if (v12 == 178)
    {
      if (*(*(a1 + 568) + 8 * v11) < 0xBuLL)
      {
LABEL_38:
        if (!*(*(a1 + 576) + v11))
        {
          v8 = 1;
        }

        goto LABEL_40;
      }

      returnedPointerOut = 0;
      v16 = OUTLINED_FUNCTION_1_91();
      BlockBufferFromFrameMemory = CMBlockBufferAccessDataBytes(v16, v17, 5uLL, temporaryBlock, &returnedPointerOut);
      if (BlockBufferFromFrameMemory)
      {
        goto LABEL_81;
      }

      if (*returnedPointerOut == 71 && returnedPointerOut[1] == 65 && returnedPointerOut[2] == 57 && returnedPointerOut[3] == 52 && returnedPointerOut[4] == 3)
      {
        v18 = *v43;
        if (*v43)
        {
          goto LABEL_122;
        }

        BlockBufferFromFrameMemory = AddPes(*(a1 + 8), *a1, 0, 1635017571, 0, 0, *(a1 + 64) << 8, 0xFFFF, 1, v43);
        if (BlockBufferFromFrameMemory)
        {
          goto LABEL_81;
        }

        v18 = *v43;
        if (*v43)
        {
LABEL_122:
          if (*(v18 + 84))
          {
            blockBufferOut = 0;
            BlockBufferFromFrameMemory = CMBlockBufferCreateWithBufferReference(*(*(a1 + 8) + 40), *(a1 + 512), v2 + 4, *(*(a1 + 568) + 8 * v11) - 4, 0, &blockBufferOut);
            if (BlockBufferFromFrameMemory)
            {
              goto LABEL_81;
            }

            v6 = CloseCaptionQueueAdd(a1 + 520, blockBufferOut);
            if (blockBufferOut)
            {
              CFRelease(blockBufferOut);
            }

            if (v6)
            {
              goto LABEL_82;
            }
          }
        }
      }
    }

    else
    {
      if (v12 != 181)
      {
        goto LABEL_38;
      }

      v13 = OUTLINED_FUNCTION_1_91();
      BlockBufferFromFrameMemory = CMBlockBufferCopyDataBytes(v13, v14, 1uLL, &v52 + 1);
      if (BlockBufferFromFrameMemory)
      {
        goto LABEL_81;
      }

      v15 = HIBYTE(v52) & 0xF0;
      if (v8)
      {
        if (v15 == 128)
        {
          BlockBufferFromFrameMemory = CMBlockBufferCopyDataBytes(*(a1 + 512), v2 + 6, 3uLL, &v47);
          if (BlockBufferFromFrameMemory)
          {
            goto LABEL_81;
          }

          v7 = 1;
        }
      }

      else
      {
        if (v15 == 16)
        {
          BlockBufferFromFrameMemory = CMBlockBufferCopyDataBytes(*(a1 + 512), v2 + 6, 1uLL, &v52 + 1);
          if (BlockBufferFromFrameMemory)
          {
            goto LABEL_81;
          }

          v10 = 1;
          *(a2 + 115) = ((HIBYTE(v52) >> 3) & 1) == 0;
          BlockBufferFromFrameMemory = CMBlockBufferCopyDataBytes(*(a1 + 512), v2 + 8, 1uLL, &v52);
          if (BlockBufferFromFrameMemory)
          {
            goto LABEL_81;
          }
        }

        v8 = 0;
      }
    }

LABEL_40:
    ++v11;
  }

  while (v11 < *(a1 + 544));
  if (!v9)
  {
    goto LABEL_53;
  }

LABEL_48:
  v19 = destination;
  if (destination >= 9uLL)
  {
    goto LABEL_118;
  }

  v20 = mpeg2FrameRatesNum[destination];
  *(a1 + 804) = v20;
  v21 = mpeg2FrameRatesDen[v19];
  *(a1 + 808) = v21;
  if (v10 && (v52 & 0x7F) != 0)
  {
    v22 = HIBYTE(v52);
    v20 *= (HIBYTE(v52) >> 5) & 4;
    *(a1 + 804) = v20;
    *(a1 + 808) = v21 + v21 * (v22 & 0x1F);
  }

  if (!v20)
  {
    goto LABEL_118;
  }

LABEL_53:
  if (!*(a1 + 808))
  {
    *(a1 + 505) = 0;
  }

  BlockBufferFromFrameMemory = CMBlockBufferCopyDataBytes(*(a1 + 512), *(a2 + 120) + 4, 2uLL, &v50);
  if (BlockBufferFromFrameMemory)
  {
    goto LABEL_81;
  }

  v23 = bswap32(v50);
  v24 = HIWORD(v23);
  v50 = HIWORD(v23);
  v25 = (v23 >> 19) & 7;
  *(a1 + 590) = v25;
  *(a1 + 600) = v25 == 3;
  if (v25 == 3)
  {
    v26 = 4;
    goto LABEL_66;
  }

  if (*(a1 + 506) && *(a1 + 505) && *(a1 + 480) == *(a1 + 488))
  {
    *(a1 + 506) = 0;
  }

  if (v25 == 1)
  {
    v26 = 16;
LABEL_66:
    *(a1 + 536) |= v26;
  }

  else if (v25 == 2)
  {
    v26 = 8;
    goto LABEL_66;
  }

  if (*(a2 + 113))
  {
    *(a1 + 536) |= 0x20u;
  }

  if (!*(a2 + 115))
  {
LABEL_80:
    FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(a1, a1 + 456);
    goto LABEL_81;
  }

  if (!v7)
  {
LABEL_118:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_81;
  }

  v27 = v47 & 3;
  if (v27 == 3 || (v47 & 3) == 0)
  {
    *(a2 + 296) = 0;
    if (*(a2 + 200))
    {
      FrameQueueEntryClean(a2 + 144);
    }

    FrameQueueClean((a2 + 128));
    if ((v49 & 0x80000000) == 0)
    {
      v28 = v48;
      *(a1 + 591) = v48 >> 7;
      *(a1 + 588) = v50 >> 6;
      if (v28 >= 0)
      {
        v29 = 1024;
      }

      else
      {
        v29 = 512;
      }

      *(a1 + 536) = *(a1 + 536) & 0xFFFFF9FF | v29;
    }

    goto LABEL_80;
  }

  v36 = v27 == 1;
  v31 = v27 == 1;
  *(a1 + 591) = v31;
  *(a1 + 588) = v24 >> 6;
  if (v36)
  {
    v32 = 512;
  }

  else
  {
    v32 = 1024;
  }

  *(a1 + 536) = *(a1 + 536) & 0xFFFFF9FF | v32;
  if (*(a2 + 296))
  {
    if (!*(a2 + 200))
    {
      goto LABEL_116;
    }

    if (*(a2 + 279) == v31 || (v38 = *(a2 + 278), v38 != v25) && (v38 == 1 ? (v39 = v25 == 2) : (v39 = 0), !v39))
    {
      FrameQueueEntryClean(a2 + 144);
      *(a2 + 296) = 0;
      goto LABEL_116;
    }

    MPEG2VideoCombine2Fields(a1, a2 + 144, a1 + 456);
    v6 = v40;
    FrameQueueEntryClean(a2 + 144);
    goto LABEL_82;
  }

  v33 = v25 | (16 * *(a2 + 300));
  *(a2 + 300) = v33;
  if (*(a2 + 200) && *(a2 + 276) == *(a1 + 588) && *(a2 + 279) != *(a1 + 591) && ((v34 = *(a2 + 278), v35 = *(a1 + 590), v34 == v35) || (v34 == 1 ? (v36 = v35 == 2) : (v36 = 0), v36)) || (v33 & 0xFF7u) - 529 <= 1)
  {
    v37 = 1;
    BlockBufferFromFrameMemory = MPEG2VideoCombineFieldQueue(a1, a2, 1);
    if (!BlockBufferFromFrameMemory)
    {
      goto LABEL_111;
    }

LABEL_81:
    v6 = BlockBufferFromFrameMemory;
    goto LABEL_82;
  }

  v37 = 0;
  if (v33 <= 0x32u && ((1 << v33) & 0x6000800080000) != 0)
  {
    BlockBufferFromFrameMemory = MPEG2VideoCombineFieldQueue(a1, a2, 0);
    v37 = 0;
    if (BlockBufferFromFrameMemory)
    {
      goto LABEL_81;
    }

LABEL_111:
    *(a2 + 296) = 1;
  }

  if (*(a2 + 200))
  {
    Retainable = FrameQueueEntryMakeRetainable(a1, a2 + 144);
    if (!Retainable)
    {
      v6 = 12;
      goto LABEL_82;
    }

    v42 = *(a2 + 136);
    *Retainable = 0;
    Retainable[1] = v42;
    *v42 = Retainable;
    *(a2 + 136) = Retainable;
  }

  if ((v37 & 1) == 0)
  {
LABEL_116:
    FrameQueueMove(a2 + 144, a1 + 456);
  }

  v6 = 0;
LABEL_82:
  PesCleanAfterFrameEmit(a1);
  *(a2 + 113) = 0;
  return v6;
}

uint64_t MPEG2VideoCombineFieldQueue(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a2 + 128);
  v7 = -1;
  v8 = (a2 + 128);
  do
  {
    v8 = *v8;
    ++v7;
  }

  while (v8);
  if (v7)
  {
    if ((a3 == 0) != (v7 & 1))
    {
      v9 = *(a2 + 128);
      v10 = *v9;
      v11 = v9[1];
      v12 = (a2 + 136);
      if (*v9)
      {
        v12 = (*v9 + 8);
      }

      *v12 = v11;
      *v11 = v10;
      FrameQueueEntryDestroy(v9);
    }

    while (1)
    {
      v13 = *v6;
      if (!*v6)
      {
        break;
      }

      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = (*v13 + 8);
      if (!*v13)
      {
        v16 = (a2 + 136);
      }

      *v16 = v15;
      *v15 = v14;
      v17 = *v6;
      if (!*v6)
      {
        if (a3)
        {
          return 4294954325;
        }

        v23 = a2 + 144;
        v25 = a1;
        v24 = v23;
        goto LABEL_23;
      }

      if (*(v13 + 135) == *(v17 + 135))
      {
        return 4294954325;
      }

      v18 = *(v13 + 134);
      v19 = *(v17 + 134);
      if (v18 != v19 && (v18 != 1 || v19 != 2))
      {
        return 4294954325;
      }

      MPEG2VideoCombine2Fields(a1, v13, v17);
      if (v21)
      {
        return v21;
      }
    }
  }

  if (!a3)
  {
    return 0;
  }

  v23 = a2 + 144;
  v24 = a1 + 456;
  v25 = a1;
  v13 = v23;
LABEL_23:
  MPEG2VideoCombine2Fields(v25, v13, v24);
  v22 = v26;
  FrameQueueEntryClean(v23);
  return v22;
}

uint64_t PesPriProcessData(uint64_t *a1, CMBlockBufferRef theBuffer, size_t offset, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = a1[6];
  if (!*(a6 + 24))
  {
    v16 = v7[1];
    if (v16)
    {
      v17 = v16 >= a5 ? a5 : v7[1];
      v7[1] = v16 - v17;
      if (v16 > a5)
      {
        return 0;
      }
    }

LABEL_31:
    v21 = *(*v7 + 840);
    if (v21)
    {
      return v21();
    }

    return 0;
  }

  temporaryBlock = 0;
  returnedPointerOut = 0;
  v9 = CMBlockBufferAccessDataBytes(theBuffer, offset, 1uLL, &temporaryBlock, &returnedPointerOut);
  if (!v9)
  {
    v10 = *returnedPointerOut;
    PesFromStreamID = FindPesFromStreamID(a1[1], v10 | 0xBD00);
    if (PesFromStreamID)
    {
      *v7 = PesFromStreamID;
    }

    else
    {
      v18 = v10 & 0xF8;
      if (v18 == 128)
      {
        v20 = 1633891104;
      }

      else if (v18 == 160)
      {
        v23 = *(a1[1] + 48);
        if ((v23 - 2) < 2)
        {
          v20 = 1886612592;
        }

        else
        {
          v20 = 1819304813;
          if (v23 != 1 && v23 != 192)
          {
            v20 = 1970170734;
          }
        }
      }

      else
      {
        if (v10 >= 0x20)
        {
          v19 = 1937072720;
        }

        else
        {
          v19 = 1970170734;
        }

        if (v18 == 136)
        {
          v20 = 1685353248;
        }

        else
        {
          v20 = v19;
        }
      }

      v22 = AddPes(a1[1], *a1, 0, v20, 1, v10 | 0xBD00, v10 | 0xBD00, 0xFFFF, 1, v7);
      if (v22)
      {
        return v22;
      }

      PesFromStreamID = *v7;
    }

    v12 = *(PesFromStreamID + 60) & 0xFFFF00F8;
    v13 = 4;
    if (v12 != 128 && v12 != 136)
    {
      if (v12 != 160)
      {
        goto LABEL_30;
      }

      v14 = *(a1[1] + 48);
      if (v14 != 192 && v14 != 1)
      {
        goto LABEL_30;
      }

      v13 = 7;
    }

    if (v13 <= a5)
    {
LABEL_30:
      v7[1] = 0;
      goto LABEL_31;
    }

    v7[1] = v13 - a5;
  }

  return v9;
}

uint64_t PesRawEmitData(uint64_t a1, uint64_t a2)
{
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  BlockBufferFromFrameMemory = PesCreateBlockBufferFromFrameMemory(a1);
  if (BlockBufferFromFrameMemory)
  {
    return BlockBufferFromFrameMemory;
  }

  if (!*(a1 + 512))
  {
    goto LABEL_11;
  }

  v5 = MEMORY[0x1E6960C70];
  if (*(a2 + 25))
  {
    CMTimeMake(&v17, *a2, 90000);
  }

  else
  {
    v17 = **&MEMORY[0x1E6960C70];
  }

  if (*(a2 + 26))
  {
    CMTimeMake(&v16, *(a2 + 8), 90000);
  }

  else
  {
    v16 = *v5;
  }

  v6 = *(a1 + 84);
  if (v6)
  {
    v7 = **(a1 + 8);
    v8 = *(a1 + 60);
    v9 = *(a1 + 104);
    v10 = *(a1 + 512);
    v11 = *(a2 + 16);
    v15 = v17;
    v14 = v16;
    v12 = v6(v7, v8, v9, v10, &v15, &v14, 0, v11, 0, 0, 0, 0);
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

  PesCleanAfterFrameEmit(a1);
  return v12;
}

uint64_t FigSecureStopManagerServerHandleMessage(uint64_t a1, uint64_t a2, void *a3)
{
  HIDWORD(v36) = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  OUTLINED_FUNCTION_2_89();
  if (v4)
  {
    v41 = 0;
    cf = 0;
    v38 = 0;
    v40 = 0;
    v14 = FigXPCMessageCopyCFData();
    if (!v14)
    {
      v14 = FigXPCMessageCopyCFURL();
      if (!v14)
      {
        v14 = FigXPCMessageCopySandboxRegistration();
        if (!v14)
        {
          v14 = OUTLINED_FUNCTION_1_92(0, v15, v16, v17, v18, v19, v20, v21, v35, v36, 0, 0, v41);
          if (!v14)
          {
            v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v22)
            {
              v13 = 4294954514;
LABEL_19:
              if (v41)
              {
                CFRelease(v41);
              }

              if (v40)
              {
                CFRelease(v40);
              }

              v32 = v38;
              if (v38)
              {
                goto LABEL_33;
              }

              return v13;
            }

            v14 = v22(cf, v41, v40);
          }
        }
      }
    }

    v13 = v14;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_2_89();
  if (v4)
  {
    v41 = 0;
    cf = 0;
    v23 = FigXPCMessageCopyCFArray();
    if (!v23)
    {
      v23 = OUTLINED_FUNCTION_1_92(0, v24, v25, v26, v27, v28, v29, v30, v35, v36, v37, v39, v41);
      if (!v23)
      {
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v31)
        {
          goto LABEL_29;
        }

        v23 = v31(cf, v41);
      }
    }

LABEL_17:
    v13 = v23;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_2_89();
  if (!v4)
  {
    return 4294949552;
  }

  cf = 0;
  v23 = OUTLINED_FUNCTION_1_92(v5, v6, v7, v8, v9, v10, v11, v12, v35, v36, v37, v39, 0);
  if (v23)
  {
    goto LABEL_17;
  }

  v33 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v33)
  {
    v23 = v33(cf, &v41);
    if (!v23)
    {
      v23 = FigXPCMessageSetCFDictionary();
    }

    goto LABEL_17;
  }

LABEL_29:
  v13 = 4294954514;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  v32 = v41;
  if (v41)
  {
LABEL_33:
    CFRelease(v32);
  }

  return v13;
}

uint64_t FigSecureStopManagerServerHandleNoReplyMessage(uint64_t a1, void *a2)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    OUTLINED_FUNCTION_2_89();
    if (v4)
    {
      if (xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]))
      {
        return FigXPCServerDisassociateObjectWithConnection();
      }

      else
      {
        return 4294949556;
      }
    }

    else
    {
      return 4294949552;
    }
  }

  return result;
}

uint64_t fssm_server_copyManagerByObjectIDForConnection(uint64_t a1, xpc_object_t xdict, CFTypeRef *a3)
{
  if (!xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]))
  {
    return 4294949556;
  }

  v4 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v4)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951144, "<<< FigSecureStopManagerServer >>>", 128, v3);
  }

  return v4;
}

void figCreateCFError()
{
  v14[6] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_90();
  if (!v0)
  {
    return;
  }

  v7 = v5;
  if (!v2)
  {
    v10 = 0;
    p_userInfoKeys = &userInfoKeys;
    v8 = &v11;
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = &v12;
  p_userInfoKeys = v14;
  userInfoKeys = *MEMORY[0x1E695E620];
  v11 = v2;
  v10 = 1;
  if (v3)
  {
LABEL_4:
    *p_userInfoKeys = *MEMORY[0x1E695E658];
    *v8 = v3;
    ++v10;
  }

LABEL_5:
  if (v4)
  {
    v14[v10 - 1] = *MEMORY[0x1E695E660];
    *(&v11 + v10++) = v4;
  }

  if (v7)
  {
    v14[v10 - 1] = *MEMORY[0x1E695E668];
    *(&v11 + v10++) = v7;
  }

  if (v6)
  {
    v14[v10 - 1] = *MEMORY[0x1E695E670];
    *(&v11 + v10++) = v6;
  }

  CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], v0, v1, &userInfoKeys, &v11, v10);
}

double FigCreateErrorForOSStatus(int a1, CFErrorRef *a2)
{
  userInfoKeys[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_2_90();
    v4 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], @"CoreMediaErrorDomain", v3, userInfoKeys, &v6, 0);
    if (v4)
    {
      *a2 = v4;
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
    }
  }

  return result;
}

__CFDictionary *FigErrorLogCreateEntry(const __CFAllocator *a1, uint64_t a2, const __CFURL *a3, const void *a4, uint64_t a5, const void *a6, const void *a7, const void *a8, void *value, uint64_t a10, int a11, int a12, void *a13)
{
  v73 = 0;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v22 = CFDateCreate(a1, Current);
    if (v22)
    {
      v23 = v22;
      CFDictionarySetValue(Mutable, @"date", v22);
      CFRelease(v23);
    }

    if (a3)
    {
      v24 = FigCFHTTPCreateURLString(a3);
      if (v24)
      {
        v25 = v24;
        CFDictionarySetValue(Mutable, @"uri", v24);
        CFRelease(v25);
      }
    }

    if (a2)
    {
      cf = 0;
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26)
      {
        if (!v26(a2, @"FHRP_RemoteIPAddress", a1, &cf))
        {
          v27 = FigCFHTTPCreateAddressString(cf);
          if (v27)
          {
            v28 = v27;
            CFDictionarySetValue(Mutable, @"s-ip", v27);
            CFRelease(v28);
          }

          CFRelease(cf);
        }
      }
    }

    if (a4)
    {
      CFDictionarySetValue(Mutable, @"cs-guid", a4);
    }

    v29 = FigCFDictionarySetInt32();
    if (a6)
    {
      CFDictionarySetValue(Mutable, @"domain", a6);
    }

    if (a7)
    {
      CFDictionarySetValue(Mutable, @"comment", a7);
    }

    if (value)
    {
      CFDictionarySetValue(Mutable, @"cs-iftype", value);
    }

    if (a10)
    {
      v36 = OUTLINED_FUNCTION_1_93(v29, @"freq", v30, v31, v32, v33, v34, v35, cf, v73);
      if (v36)
      {
        OUTLINED_FUNCTION_0_100(v36, @"c-iffreq", v37, v38, v39, v40, v41, v42, cf, v73);
      }

      v43 = OUTLINED_FUNCTION_1_93(v36, @"rssi", v37, v38, v39, v40, v41, v42, cf, v73);
      if (v43)
      {
        OUTLINED_FUNCTION_0_100(v43, @"c-rssi", v44, v45, v46, v47, v48, v49, cf, v73);
      }

      v50 = OUTLINED_FUNCTION_1_93(v43, @"rsmn", v44, v45, v46, v47, v48, v49, cf, v73);
      if (v50)
      {
        OUTLINED_FUNCTION_0_100(v50, @"c-rssi-min", v51, v52, v53, v54, v55, v56, cf, v73);
      }

      v57 = OUTLINED_FUNCTION_1_93(v50, @"rsmx", v51, v52, v53, v54, v55, v56, cf, v73);
      if (v57)
      {
        OUTLINED_FUNCTION_0_100(v57, @"c-rssi-max", v58, v59, v60, v61, v62, v63, cf, v73);
      }

      v64 = OUTLINED_FUNCTION_1_93(v57, @"rsav", v58, v59, v60, v61, v62, v63, cf, v73);
      if (v64)
      {
        OUTLINED_FUNCTION_0_100(v64, @"c-rssi-avg", v65, v66, v67, v68, v69, v70, cf, v73);
      }
    }

    if (a11)
    {
      FigCFDictionarySetInt32();
    }

    if (a12)
    {
      FigCFDictionarySetInt32();
    }

    if (a13)
    {
      CFDictionarySetValue(Mutable, @"http-response-headers", a13);
    }

    if (a8)
    {
      CFDictionarySetValue(Mutable, @"c-user-info", a8);
    }
  }

  return Mutable;
}