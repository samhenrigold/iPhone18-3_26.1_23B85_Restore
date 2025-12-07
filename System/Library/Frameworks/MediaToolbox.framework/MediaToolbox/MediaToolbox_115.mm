uint64_t remoteXPCVideoTarget_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || !a3)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 80) || (v18 = 0, !*(CMBaseObjectGetDerivedStorage() + 80)) || !FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey(a2, &v18) || (v7 = v18, FigVideoReceiverGetCMBaseObject(), v9 = v8, (v10 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v10(v9, v7, a3))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      CFDictionarySetValue(*(v11 + 72), a2, a3);
      FigSimpleMutexUnlock();
    }

    if (remoteXPCVideoTarget_isFullySetupWithServer(a1))
    {
      ObjectID = remoteXPCVideoTarget_GetObjectID(a1, &v17);
      if (!ObjectID)
      {
        if (_MergedGlobals_57 != -1)
        {
          OUTLINED_FUNCTION_0_84();
          dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v16);
        }

        ObjectID = FigXPCSendStdSetPropertyMessage();
      }

      goto LABEL_15;
    }

    if (!FigCFEqual())
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_15:
      v13 = ObjectID;
      goto LABEL_18;
    }
  }

  v13 = 0;
LABEL_18:
  if (_MergedGlobals_57 != -1)
  {
    OUTLINED_FUNCTION_0_84();
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, v15);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v13;
}

uint64_t figTTMLDocumentWriterStyleOptimizer_EndElement()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[2];
  v2 = DerivedStorage[1];
  if (v1 != v2)
  {
    goto LABEL_12;
  }

  ChildrenCount = FigTTMLDocumentWriterElementGetChildrenCount(DerivedStorage[1]);
  if (ChildrenCount >= 1)
  {
    v4 = ChildrenCount;
    v5 = 0;
    while (1)
    {
      ChildAtIndex = FigTTMLDocumentWriterElementGetChildAtIndex(v2, v5);
      if (ChildAtIndex)
      {
        v7 = ChildAtIndex;
        v8 = CFGetTypeID(ChildAtIndex);
        if (v8 == FigTTMLDocumentWriterElementGetTypeID() && FigTTMLDocumentWriterElementGetElementType(v7) == 2)
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        goto LABEL_10;
      }
    }

    v9 = FigTTMLGetInheritableStyleAttributeNames();
    v12.length = CFArrayGetCount(v9);
    v12.location = 0;
    CFArrayApplyFunction(v9, v12, optimizeStyleAttributesAux, v7);
  }

LABEL_10:
  result = FigTTMLDocumentWriterElementWriteTree(DerivedStorage[1], *DerivedStorage);
  if (!result)
  {
    v1 = DerivedStorage[2];
LABEL_12:
    ParentElement = FigTTMLDocumentWriterElementGetParentElement(v1);
    result = 0;
    DerivedStorage[2] = ParentElement;
  }

  return result;
}

uint64_t calculateHeaderByteCount(uint64_t a1, unint64_t *a2)
{
  Count = CFArrayGetCount(*(a1 + 488));
  v5 = CFArrayGetCount(*(a1 + 488));
  if (v5 < 1)
  {
    v8 = 1;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    LODWORD(v8) = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v7);
      LODWORD(theBuffer) = 0;
      PreferredChunkAlignment = MovieSampleDataWriterTrackGetPreferredChunkAlignment(*(a1 + 752), ValueAtIndex[95], &theBuffer);
      if (theBuffer)
      {
        v11 = PreferredChunkAlignment == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = theBuffer;
      }

      else
      {
        v12 = 1;
      }

      v13 = v12;
      if (v12 != v8)
      {
        v14 = v12;
        if (v8)
        {
          v15 = v8;
          do
          {
            v16 = v12;
            v12 = v15;
            v15 = v16 % v15;
          }

          while (v15);
          v14 = v12;
        }

        v13 *= v8 / v14;
      }

      if (v13 > 0x7FFFFFFF)
      {
        LODWORD(v8) = 1;
      }

      else
      {
        LODWORD(v8) = v13;
      }

      ++v7;
    }

    while (v7 != v6);
    v8 = v8;
  }

  v17 = 0;
  v18 = *MEMORY[0x1E695E480];
  if (Count + 2 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = Count + 2;
  }

  do
  {
    v29 = 0;
    theBuffer = 0;
    if (*(a1 + 320) == 3)
    {
      v20 = MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(*(a1 + 752), v18, &theBuffer);
      if (v20)
      {
        MovieAtomBBuf = v20;
        v24 = 0;
        goto LABEL_30;
      }

      DataLength = CMBlockBufferGetDataLength(theBuffer);
    }

    else
    {
      DataLength = 0;
    }

    MovieAtomBBuf = createMovieAtomBBuf(a1, 0, 0, &v29);
    v23 = v29;
    if (!MovieAtomBBuf)
    {
      v24 = CMBlockBufferGetDataLength(v29) + DataLength;
      if (!v23)
      {
        goto LABEL_30;
      }

LABEL_29:
      CFRelease(v23);
      goto LABEL_30;
    }

    v24 = 0;
    if (v29)
    {
      goto LABEL_29;
    }

LABEL_30:
    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

    if (MovieAtomBBuf)
    {
      return MovieAtomBBuf;
    }

    if (v24 % v8)
    {
      v25 = v8 - v24 % v8;
    }

    else
    {
      v25 = 0;
    }

    if (v25 - 1 <= 6)
    {
      v25 += (v8 - v25 + 7) / v8 * v8;
    }

    v26 = v25 + v24;
    if (v26 == v17)
    {
      MovieAtomBBuf = 0;
      *a2 = v26;
      return MovieAtomBBuf;
    }

    v27 = MovieHeaderMakerAddByteCountToChunkOffsets(*(a1 + 744), v26);
    if (v27)
    {
      return v27;
    }

    v17 = v26;
    --v19;
  }

  while (v19);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, theBuffer, v31);
  return v27;
}

uint64_t createMediaDataLocation(const __CFAllocator *a1, uint64_t a2, CFMutableArrayRef *a3)
{
  v12 = 0;
  v13 = 0;
  FirstMediaDataAtomOffset = MovieSampleDataWriterGetFirstMediaDataAtomOffset(*(a2 + 752), 1, &v13);
  if (FirstMediaDataAtomOffset)
  {
    return FirstMediaDataAtomOffset;
  }

  FirstMediaDataAtomOffset = MovieSampleDataWriterGetLengthOfDefaultByteStream(*(a2 + 752), &v12);
  if (FirstMediaDataAtomOffset)
  {
    return FirstMediaDataAtomOffset;
  }

  Mutable = CFArrayCreateMutable(a1, 2, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    return FirstMediaDataAtomOffset;
  }

  v8 = Mutable;
  appended = FigCFArrayAppendInt64();
  if (appended)
  {
    v10 = appended;
    goto LABEL_11;
  }

  v10 = FigCFArrayAppendInt64();
  if (v10)
  {
LABEL_11:
    CFRelease(v8);
    return v10;
  }

  *a3 = v8;
  return v10;
}

uint64_t estimateResultFileSize(uint64_t a1, void *a2)
{
  v2 = a1;
  v41 = 0;
  Count = CFArrayGetCount(*(a1 + 488));
  v4 = MEMORY[0x1E695FF58];
  if (Count < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 488), v5);
      TotalSize = CMBufferQueueGetTotalSize(ValueAtIndex[77]);
      v9 = CMBufferQueueGetTotalSize(ValueAtIndex[76]);
      if (ValueAtIndex[41])
      {
        v10 = ValueAtIndex[87];
      }

      else
      {
        v10 = 0;
      }

      v11 = v9 + TotalSize;
      if (*v4 == 1)
      {
        kdebug_trace();
      }

      v6 += v10 + v11;
      ++v5;
    }

    while (Count != v5);
  }

  if (*v4 == 1)
  {
    kdebug_trace();
  }

  v36 = *(v2 + 704);
  v37 = v6;
  if (*(v2 + 329))
  {
    v12 = *(v2 + 712);
    if (!*(v2 + 531))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = CFArrayGetCount(*(v2 + 488));
  if (v13 >= 1)
  {
    v14 = 0;
    v39 = v13;
    v40 = v2;
    do
    {
      v15 = CFArrayGetValueAtIndex(*(v2 + 488), v14);
      v16 = v15[92];
      TimeToSampleTable = MovieSampleTableGetTimeToSampleTable(v16);
      DataLength = CMBlockBufferGetDataLength(TimeToSampleTable);
      CompositionOffsetTable = MovieSampleTableGetCompositionOffsetTable(v16);
      v20 = CMBlockBufferGetDataLength(CompositionOffsetTable);
      SyncSampleTable = MovieSampleTableGetSyncSampleTable(v16);
      v22 = CMBlockBufferGetDataLength(SyncSampleTable);
      SampleDependencyTable = MovieSampleTableGetSampleDependencyTable(v16);
      v24 = CMBlockBufferGetDataLength(SampleDependencyTable);
      PartialSyncSampleTable = MovieSampleTableGetPartialSyncSampleTable(v16);
      v26 = CMBlockBufferGetDataLength(PartialSyncSampleTable);
      SampleToChunkTable = MovieSampleTableGetSampleToChunkTable(v16);
      v28 = CMBlockBufferGetDataLength(SampleToChunkTable);
      SampleSizeTable = MovieSampleTableGetSampleSizeTable(v16);
      v30 = CMBlockBufferGetDataLength(SampleSizeTable);
      v31 = DataLength + v12 + v20 + v22 + v24 + v26 + v28;
      v2 = v40;
      v12 = v31 + v30 + v15[74];
      ++v14;
    }

    while (v39 != v14);
  }

LABEL_20:
  if (*(v2 + 384))
  {
    v32 = 0;
LABEL_22:
    result = 0;
    *a2 = v36 + v37 + v32 + v12;
    return result;
  }

  v34 = *(v2 + 8);
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v35)
  {
    return 4294954514;
  }

  result = v35(v34, 0, &v41);
  if (!result)
  {
    v32 = v41;
    goto LABEL_22;
  }

  return result;
}

uint64_t createMovieAtomBBuf(uint64_t a1, int a2, const __CFURL *a3, CFTypeRef *a4)
{
  v182 = *MEMORY[0x1E69E9840];
  v163 = 0;
  InsertMediaSegments(a1, 1);
  if (v8)
  {
    return v8;
  }

  v9 = *(a1 + 744);
  v10 = FigCFEqual();
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  v12 = v11;
  v13 = *(a1 + 488);
  if (v13)
  {
    Count = CFArrayGetCount(v13);
  }

  else
  {
    Count = 0;
  }

  Settings = MovieHeaderMakerSetShouldWriteMovieExtendsAtom(v9, a2);
  if (Settings)
  {
    goto LABEL_213;
  }

  keys = *(a1 + 244);
  Settings = MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration(v9, &keys);
  if (Settings)
  {
    goto LABEL_213;
  }

  v156 = a4;
  v169 = 0;
  v170 = 0;
  v168 = 0;
  v15 = *(a1 + 692);
  if (v15)
  {
    v16 = &kFigMetadataFormat_ISOUserData;
  }

  else
  {
    v16 = &kFigMetadataFormat_QuickTimeUserData;
  }

  if (v15)
  {
    v17 = kFigISOUserDataKeyspace;
  }

  else
  {
    v17 = kFigUserDataKeyspace;
  }

  v166 = 0;
  cf = 0;
  blockBufferOut = 0;
  v165 = 0;
  v18 = *MEMORY[0x1E695E480];
  v19 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 2u, 0, &blockBufferOut);
  blockAllocator = v18;
  v157 = a3;
  if (v19)
  {
    v44 = v19;
    goto LABEL_221;
  }

  if ((v12 & 1) == 0)
  {
    v33 = *(a1 + 696);
    if (v33)
    {
      v20 = createiTunesGaplessInfoString(v33);
      if (!v20)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }

    v110 = *(a1 + 488);
    if (!v110)
    {
      goto LABEL_21;
    }

    v111 = CFArrayGetCount(v110);
    if (v111 < 1)
    {
      goto LABEL_21;
    }

    v112 = v111;
    v113 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v113);
      if (*ValueAtIndex == 1936684398)
      {
        break;
      }

      if (v112 == ++v113)
      {
        goto LABEL_21;
      }
    }

    v141 = ValueAtIndex;
    if (*(ValueAtIndex + 192) != 2 || !*(ValueAtIndex + 87))
    {
      goto LABEL_21;
    }

    FirstEditBuilder = getFirstEditBuilder(ValueAtIndex);
    v143 = v141[45];
    v144 = CFArrayGetCount(*(FirstEditBuilder + 24));
    if (v144 + editMediaTimeIsValid(*(FirstEditBuilder + 16)) != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_58();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, a4);
      v45 = 0;
      if (v151)
      {
        v44 = v151;
        v20 = 0;
        v21 = 0;
        goto LABEL_47;
      }

      v20 = 0;
      v21 = 0;
      goto LABEL_23;
    }

    EditMediaTimeAtIndex = editBuilderGetEditMediaTimeAtIndex(FirstEditBuilder, 0);
    memset(&values, 0, sizeof(values));
    memset(&valuePtr, 0, sizeof(valuePtr));
    memset(&v174, 0, sizeof(v174));
    v178 = 0;
    v179 = 0;
    v176[0] = @"EncodingDelayInFrame";
    v176[1] = @"EncodingDrainInFrames";
    v176[2] = @"DurationInFrames";
    keys = *(EditMediaTimeAtIndex + 60);
    CMTimeConvertScale(&values, &keys, v143, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    keys = *(EditMediaTimeAtIndex + 84);
    CMTimeConvertScale(&v174, &keys, v143, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    lhs = *(EditMediaTimeAtIndex + 36);
    v146 = *(EditMediaTimeAtIndex + 12);
    rhs.epoch = *(EditMediaTimeAtIndex + 28);
    *&rhs.value = v146;
    CMTimeSubtract(&keys, &lhs, &rhs);
    OUTLINED_FUNCTION_53_8();
    CMTimeConvertScale(&lhs, &rhs, v143, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    keys = lhs;
    rhs = values;
    v171 = v174;
    CMTimeAdd(&lhs, &rhs, &v171);
    OUTLINED_FUNCTION_53_8();
    CMTimeSubtract(&valuePtr, &rhs, &lhs);
    v177 = CFNumberCreate(v18, kCFNumberSInt64Type, &values);
    if (v177 && (v178 = CFNumberCreate(v18, kCFNumberSInt64Type, &v174)) != 0 && (v179 = CFNumberCreate(v18, kCFNumberSInt64Type, &valuePtr)) != 0 && (v147 = CFDictionaryCreate(v18, v176, &v177, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
    {
      v148 = v147;
      v44 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_58();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, a4);
      v44 = v152;
      v148 = 0;
    }

    for (i = 0; i != 24; i += 8)
    {
      v150 = *(&v177 + i);
      if (v150)
      {
        CFRelease(v150);
      }
    }

    if (!v44)
    {
      if (!v148)
      {
        goto LABEL_21;
      }

      v20 = createiTunesGaplessInfoString(v148);
      CFRelease(v148);
      if (!v20)
      {
        goto LABEL_22;
      }

LABEL_33:
      keys.value = @"dataType";
      *&keys.timescale = @"dataTypeNamespace";
      values.value = 0;
      *&values.timescale = @"com.apple.itunes";
      LODWORD(valuePtr.value) = 1;
      v34 = CFNumberCreate(v18, kCFNumberSInt32Type, &valuePtr);
      values.value = v34;
      v35 = v18;
      v21 = CFDictionaryCreate(v18, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(v34);
      copyMetadataSerializer(v35, a1, @"com.apple.itunes", &v165);
      if (!v36)
      {
        FigMetadataSerializerGetFigMetadataWriter();
        v38 = v37;
        v39 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v39)
        {
          v44 = 4294954514;
          goto LABEL_44;
        }

        Contiguous = v39(v38, @"itlk", @"com.apple.iTunes.iTunSMPB", v20, v21);
        if (Contiguous)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_23;
    }

LABEL_221:
    v45 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_47;
  }

LABEL_21:
  v20 = 0;
LABEL_22:
  v21 = 0;
LABEL_23:
  v22 = *(a1 + 296);
  if (!v22)
  {
    v22 = *(a1 + 304);
    if (!v22)
    {
      goto LABEL_38;
    }
  }

  v23 = CFGetTypeID(v22);
  if (v23 == CFDictionaryGetTypeID())
  {
    v137 = OUTLINED_FUNCTION_57_5();
    transferMovieMetadata(v137, v22, v138, v139, v140);
    goto LABEL_38;
  }

  v24 = CFGetTypeID(v22);
  if (v24 == CFArrayGetTypeID())
  {
    v25 = CFArrayGetCount(v22);
    if (v25 >= 1)
    {
      v26 = v25;
      for (j = 0; j != v26; ++j)
      {
        CFArrayGetValueAtIndex(v22, j);
        v28 = OUTLINED_FUNCTION_57_5();
        transferMovieMetadata(v28, v29, v30, v31, v32);
      }
    }

LABEL_38:
    v41 = v165;
    if (!v165)
    {
      v42 = *(a1 + 288);
      if (!v42)
      {
        goto LABEL_177;
      }

      v41 = FigMetadataSerializerRetain(v42);
      v165 = v41;
    }

    v43 = *(*(CMBaseObjectGetVTable() + 24) + 8);
    if (!v43)
    {
      v45 = 0;
      goto LABEL_46;
    }

    Contiguous = v43(v41, &v168);
    if (Contiguous)
    {
      goto LABEL_43;
    }

    if (v168)
    {
      keys.value = CMBlockBufferGetDataLength(v168);
      values.value = 0;
      IsRangeContiguous = CMBlockBufferIsRangeContiguous(v168, 0, keys.value);
      value = v168;
      if (!IsRangeContiguous)
      {
        valuePtr.value = 0;
        Contiguous = CMBlockBufferCreateContiguous(blockAllocator, v168, blockAllocator, 0, 0, keys.value, 0, &valuePtr);
        if (Contiguous)
        {
          goto LABEL_43;
        }

        if (v168)
        {
          CFRelease(v168);
        }

        value = valuePtr.value;
        v168 = valuePtr.value;
      }

      Contiguous = CMBlockBufferGetDataPointer(value, 8uLL, &keys, 0, &values);
      if (Contiguous)
      {
        goto LABEL_43;
      }

      v45 = CFDataCreateWithBytesNoCopy(blockAllocator, values.value, keys.value, *MEMORY[0x1E695E498]);
      if (!v45)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_58();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, v156);
LABEL_223:
        v44 = v121;
        goto LABEL_47;
      }

      if (!cf)
      {
        copyMetadataSerializer(blockAllocator, a1, *v16, &cf);
        if (v117 || !cf)
        {
LABEL_178:
          v122 = cf;
          if (!cf)
          {
            v123 = *(a1 + 280);
            if (!v123)
            {
              goto LABEL_185;
            }

            v122 = FigMetadataSerializerRetain(v123);
            cf = v122;
          }

          v124 = *(*(CMBaseObjectGetVTable() + 24) + 8);
          if (!v124)
          {
            goto LABEL_194;
          }

          appended = v124(v122, &v169);
          if (appended)
          {
            goto LABEL_193;
          }

          if (v169)
          {
            OUTLINED_FUNCTION_496();
            appended = CMBlockBufferAppendBufferReference(v126, v127, v128, v129, 0);
            if (appended)
            {
              goto LABEL_193;
            }
          }

LABEL_185:
          v130 = v166;
          if (!v166)
          {
            v131 = *(a1 + 272);
            if (!v131)
            {
LABEL_192:
              appended = MovieHeaderMakerSetMovieMetadataBlockBuffer(*(a1 + 744), blockBufferOut);
LABEL_193:
              v44 = appended;
              goto LABEL_47;
            }

            v130 = FigMetadataSerializerRetain(v131);
            v166 = v130;
          }

          v132 = *(*(CMBaseObjectGetVTable() + 24) + 8);
          if (v132)
          {
            appended = v132(v130, &v170);
            if (appended)
            {
              goto LABEL_193;
            }

            if (v170)
            {
              OUTLINED_FUNCTION_496();
              appended = CMBlockBufferAppendBufferReference(v133, v134, v135, v136, 0);
              if (appended)
              {
                goto LABEL_193;
              }
            }

            goto LABEL_192;
          }

LABEL_194:
          v44 = 4294954514;
          goto LABEL_47;
        }
      }

      FigMetadataSerializerGetFigMetadataWriter();
      v119 = v118;
      v120 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v120)
      {
        v121 = v120(v119, *v17, @"meta", v45, 0);
        if (v121)
        {
          goto LABEL_223;
        }

        goto LABEL_178;
      }

LABEL_46:
      v44 = 4294954514;
      goto LABEL_47;
    }

LABEL_177:
    v45 = 0;
    goto LABEL_178;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_58();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v154, v156);
  if (!Contiguous)
  {
    goto LABEL_38;
  }

LABEL_43:
  v44 = Contiguous;
LABEL_44:
  v45 = 0;
LABEL_47:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (v165)
  {
    CFRelease(v165);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  v46 = blockAllocator;
  if (v168)
  {
    CFRelease(v168);
  }

  if (v169)
  {
    CFRelease(v169);
  }

  if (v170)
  {
    CFRelease(v170);
  }

  if (v44)
  {
    goto LABEL_214;
  }

  if (Count >= 1)
  {
    v47 = 0;
    v155 = @"MPEG4CMAFCompliant";
    do
    {
      v48 = CFArrayGetValueAtIndex(*(a1 + 488), v47);
      OUTLINED_FUNCTION_63();
      v160 = v49;
      v50 = v11 && FigCFEqual() != 0;
      if (*(a1 + 384))
      {
        v158 = v48[492] != 0 && v50;
        v159 = v158;
      }

      else
      {
        v158 = 0;
        v159 = 1;
      }

      Settings = setTrackExtendsDefaultValuesIfNeeded(v48);
      if (Settings)
      {
        goto LABEL_213;
      }

      v51 = *(v48 + 2);
      keys.value = 0;
      values.value = 0;
      valuePtr.value = 0;
      Empty = CMBlockBufferCreateEmpty(v46, 2u, 0, &valuePtr);
      if (Empty)
      {
        goto LABEL_102;
      }

      if ((*(*(v48 + 2) + 692) & 3) != 0)
      {
        v53 = OUTLINED_FUNCTION_60_7();
        Mutable = CFSetCreateMutable(v53, v54, MEMORY[0x1E695E9F8]);
      }

      else
      {
        Mutable = 0;
      }

      v56 = *(v48 + 70);
      if (v56 || (v56 = *(v48 + 71)) != 0)
      {
        v57 = CFGetTypeID(v56);
        if (v57 == CFDictionaryGetTypeID())
        {
          transferTrackMetadata(v48, v56, &keys, &values);
        }

        else
        {
          v58 = CFGetTypeID(v56);
          if (v58 != CFArrayGetTypeID())
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_58();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v153, v155, v156);
            v44 = v63;
            goto LABEL_90;
          }

          v59 = CFArrayGetCount(v56);
          if (v59 >= 1)
          {
            v60 = v59;
            for (k = 0; k != v60; ++k)
            {
              v62 = CFArrayGetValueAtIndex(v56, k);
              transferTrackMetadata(v48, v62, &keys, &values);
              v44 = 0;
            }

LABEL_90:
            if (!Mutable)
            {
              goto LABEL_92;
            }

LABEL_91:
            CFRelease(Mutable);
            goto LABEL_92;
          }
        }
      }

      v44 = 0;
      if (Mutable)
      {
        goto LABEL_91;
      }

LABEL_92:
      v46 = blockAllocator;
      if (v44)
      {
        goto LABEL_103;
      }

      v64 = keys.value;
      if (keys.value)
      {
        goto LABEL_96;
      }

      v65 = *(v48 + 69);
      if (v65)
      {
        v64 = FigMetadataSerializerRetain(v65);
        keys.value = v64;
LABEL_96:
        Empty = appendBBufFromMetadataSerializerToBlockBuffer(v64, valuePtr.value);
        if (Empty)
        {
          goto LABEL_102;
        }
      }

      v66 = values.value;
      if (!values.value)
      {
        v67 = *(v48 + 68);
        if (!v67)
        {
          goto LABEL_101;
        }

        v66 = FigMetadataSerializerRetain(v67);
        values.value = v66;
      }

      Empty = appendBBufFromMetadataSerializerToBlockBuffer(v66, valuePtr.value);
      if (!Empty)
      {
LABEL_101:
        Empty = MovieHeaderMakerTrackSetTrackMetadataBlockBuffer(*(v51 + 744), *(v48 + 93), valuePtr.value);
      }

LABEL_102:
      v44 = Empty;
LABEL_103:
      if (keys.value)
      {
        CFRelease(keys.value);
      }

      if (values.value)
      {
        CFRelease(values.value);
      }

      if (valuePtr.value)
      {
        CFRelease(valuePtr.value);
      }

      if (v44)
      {
        goto LABEL_214;
      }

      v68 = *(v48 + 92);
      v69 = *(v48 + 51);
      if (v69 || (v69 = *(v48 + 52)) != 0)
      {
        PackedISO639_2TFromLocaleIdentifier = FigMetadataGetPackedISO639_2TFromLocaleIdentifier(v69);
        StringForLanguageCode = FigCreateStringForLanguageCode(v46, PackedISO639_2TFromLocaleIdentifier, 1);
        v72 = MovieTrackSetLanguageCodeString(v68, StringForLanguageCode);
        if (v72)
        {
          goto LABEL_119;
        }

        v73 = *(v48 + 52);
        if (v73)
        {
LABEL_118:
          v72 = MovieTrackSetExtendedLanguageTagString(v68, v73);
LABEL_119:
          v44 = v72;
          if (!StringForLanguageCode)
          {
            goto LABEL_121;
          }

LABEL_120:
          CFRelease(StringForLanguageCode);
          goto LABEL_121;
        }
      }

      else
      {
        StringForLanguageCode = 0;
      }

      if (*(*(v48 + 2) + 328))
      {
        v73 = *(v48 + 51);
        if (v73)
        {
          goto LABEL_118;
        }
      }

      v44 = 0;
      if (StringForLanguageCode)
      {
        goto LABEL_120;
      }

LABEL_121:
      if (v44)
      {
        goto LABEL_214;
      }

      if (v48[40])
      {
        if (v48[56])
        {
          OUTLINED_FUNCTION_51_10();
          values = *(v48 + 44);
          CMTimeConvertScale(&keys, &values, v75, kCMTimeRoundingMethod_QuickTime);
          value_low = LODWORD(keys.value);
        }

        else
        {
          value_low = 0xFFFFFFFFLL;
        }

        if (v48[80])
        {
          OUTLINED_FUNCTION_51_10();
          values = *(v48 + 68);
          CMTimeConvertScale(&valuePtr, &values, v77, kCMTimeRoundingMethod_QuickTime);
          v76 = valuePtr.value << 32;
        }

        else
        {
          v76 = 0;
        }

        Settings = MovieTrackSetLoadSettings(*(v48 + 92), v76 | value_low, *(v48 + 92));
        if (Settings)
        {
          goto LABEL_213;
        }
      }

      v78 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible(v78, v79, v80);
      if (Settings)
      {
        goto LABEL_213;
      }

      v81 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom(v81, v82, v83);
      if (Settings)
      {
        goto LABEL_213;
      }

      v84 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom(v84, v85, v86);
      if (Settings)
      {
        goto LABEL_213;
      }

      v87 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom(v87, v88, v89);
      if (Settings)
      {
        goto LABEL_213;
      }

      v90 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetSampleReferenceBaseURL(v90, v91, v92);
      if (Settings)
      {
        goto LABEL_213;
      }

      v93 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms(v93, v94, v160);
      if (Settings)
      {
        goto LABEL_213;
      }

      v95 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms(v95, v96, v97);
      if (Settings)
      {
        goto LABEL_213;
      }

      v98 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldWriteEditAtom(v98, v99, v159);
      if (Settings)
      {
        goto LABEL_213;
      }

      v100 = OUTLINED_FUNCTION_27_16();
      Settings = MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom(v100, v101, v158);
      if (Settings)
      {
        goto LABEL_213;
      }

      ++v47;
    }

    while (v47 != Count);
  }

  Settings = MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(*(a1 + 744), v46, *(a1 + 720), v157, &v163);
  if (!Settings)
  {
    if (!*(a1 + 329) || (v102 = *(a1 + 488)) == 0 || (v103 = *(a1 + 744), v104 = CFArrayGetCount(v102), v104 < 1))
    {
LABEL_155:
      v44 = 0;
      *v156 = v163;
      return v44;
    }

    v105 = v104;
    v106 = 0;
    while (1)
    {
      v107 = CFArrayGetValueAtIndex(*(a1 + 488), v106);
      v108 = v107[93];
      LOBYTE(keys.value) = 0;
      Settings = MovieHeaderMakerTrackDidWriteEditAtom(v103, v108, &keys);
      if (Settings)
      {
        break;
      }

      if (!LOBYTE(keys.value))
      {
        *(v107 + 353) = 1;
      }

      if (v105 == ++v106)
      {
        goto LABEL_155;
      }
    }
  }

LABEL_213:
  v44 = Settings;
LABEL_214:
  if (v163)
  {
    CFRelease(v163);
  }

  return v44;
}

void InsertMediaSegments(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = *(a1 + 736);
  v50 = 0;
  v5 = *(a1 + 488);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  v49 = 0;
  OUTLINED_FUNCTION_613();
  if (MovieInformationGetBasicMetrics(v7, v8, v9, v10, 0) || Count < 1)
  {
    goto LABEL_35;
  }

  v11 = 0;
  allocator = *MEMORY[0x1E695E480];
  v12 = MEMORY[0x1E6960CC0];
  v35 = v3;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 488), v11);
    v14 = *(ValueAtIndex + 92);
    OUTLINED_FUNCTION_33_13(MEMORY[0x1E6960C88], allocator, v35, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, duration.value, *&duration.timescale, duration.epoch, v41, v42, v43, *&start.start.value, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, *v12, v12[1], v12[2], v45.duration.value, *&v45.duration.timescale, v45.duration.epoch, v46[0].value);
    if (a2 ? MovieTrackDeleteSegment(v4, v14, &v46[0].value) : MovieTrackFragmentDeleteSegment(v14, &v46[0].value))
    {
      break;
    }

    v16 = *(ValueAtIndex + 50);
    if (v16 && CFArrayGetCount(v16))
    {
      v17 = *(ValueAtIndex + 50);
      if (v17)
      {
        v18 = CFRetain(v17);
      }

      else
      {
        v18 = 0;
      }

      v49 = v18;
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (createDefaultTrackEditSegmentArray(allocator, ValueAtIndex, &v49))
      {
        break;
      }

      v18 = v49;
      if (!v49)
      {
        goto LABEL_27;
      }
    }

    v19 = Count;
    v20 = CFArrayGetCount(v18);
    if (v20 >= 1)
    {
      v21 = v20;
      v22 = 0;
      do
      {
        v23 = CFArrayGetValueAtIndex(v18, v22);
        memset(v48, 0, sizeof(v48));
        v47 = 0u;
        memset(v46, 0, sizeof(v46));
        getFigTimeMappingFromDictionary(v23, v46);
        if (v24)
        {
          goto LABEL_33;
        }

        if (v46[0].flags)
        {
          memset(&v45, 0, sizeof(v45));
          *&start.start.value = v47;
          start.start.epoch = *&v48[0];
          duration = *(v48 + 8);
          CMTimeRangeMake(&v45, &start.start, &duration);
          memset(&start, 0, sizeof(start));
          duration = v46[0];
          v36 = v46[1];
          v25 = CMTimeRangeMake(&start, &duration, &v36);
          OUTLINED_FUNCTION_29_16(v25, v26, v27, v28, v29, v30, v31, v32, allocator, v35, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, duration.value, *&duration.timescale, duration.epoch, v41, v42, v43, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale);
          if (a2)
          {
            MovieTrackInsertMediaSegment(v4, v14, &duration, &v36);
          }

          else
          {
            MovieTrackFragmentInsertMediaSegment(v14, &duration, &v36);
          }

          if (v33)
          {
            goto LABEL_33;
          }
        }
      }

      while (v21 != ++v22);
    }

    CFRelease(v18);
    v49 = 0;
    Count = v19;
    v3 = v35;
    v12 = MEMORY[0x1E6960CC0];
LABEL_27:
    ++v11;
  }

  while (v11 != Count);
LABEL_33:
  if (v49)
  {
    CFRelease(v49);
  }

LABEL_35:
  OUTLINED_FUNCTION_66_5();
}

uint64_t setTrackExtendsDefaultValuesIfNeeded(uint64_t a1)
{
  if (*(a1 + 728))
  {
    return 0;
  }

  result = MovieTrackSetTrackExtendsDefaultValues(*(a1 + 736), 1, 0, 0, 0);
  if (!result)
  {
    *(a1 + 728) = 1;
  }

  return result;
}

void transferMovieMetadata(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3, CFTypeRef *a4, const char *a5)
{
  v40 = a4;
  v5 = theDict;
  theArray = 0;
  cf1 = 0;
  cf = 0;
  if (!theDict)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v38, v40);
    goto LABEL_62;
  }

  if (!a3 || !a4 || !a5)
  {
    goto LABEL_60;
  }

  if (CFDictionaryGetValue(theDict, @"items"))
  {
    Value = CFDictionaryGetValue(v5, @"format");
    if (Value)
    {
      v10 = CFRetain(Value);
    }

    else
    {
      v10 = 0;
    }

    cf1 = v10;
    copyMetadataDestinationFormat(a1, v10, &theArray);
    goto LABEL_13;
  }

  v11 = CFDictionaryGetValue(v5, @"MetadataReader");
  if (!v11)
  {
LABEL_60:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_61;
  }

  if (OUTLINED_FUNCTION_67_8(v11, v12, v13, v14, v15, v16, v17, v18, v36, v38, v40, cf2, v42, v43, v44, cf))
  {
    goto LABEL_61;
  }

LABEL_13:
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_61:
    v5 = 0;
LABEL_62:
    Mutable = 0;
    goto LABEL_63;
  }

  v20 = Count;
  v45 = v5;
  v37 = a5;
  Mutable = 0;
  v22 = 0;
  v5 = 0;
  v39 = @"com.apple.quicktime.mdta";
  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v22);
    if (cf1 && !CFEqual(cf1, ValueAtIndex) && createMetadataConverter(a1, cf1, ValueAtIndex, &cf))
    {
LABEL_57:
      v5 = 0;
      goto LABEL_54;
    }

    if (CFEqual(ValueAtIndex, @"com.apple.quicktime.udta"))
    {
      if (*(a1 + 692))
      {
        goto LABEL_26;
      }

LABEL_28:
      if (*a3)
      {
        goto LABEL_38;
      }

      v25 = OUTLINED_FUNCTION_37_13();
      v28 = a3;
      goto LABEL_30;
    }

    if (CFEqual(ValueAtIndex, @"org.mp4ra"))
    {
      if ((*(a1 + 692) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    if (CFEqual(ValueAtIndex, v39))
    {
      if (*v40)
      {
        goto LABEL_38;
      }

      v25 = OUTLINED_FUNCTION_37_13();
      v28 = v40;
    }

    else
    {
      if (!CFEqual(ValueAtIndex, @"com.apple.itunes"))
      {
        goto LABEL_26;
      }

      if (*v37)
      {
        goto LABEL_38;
      }

      v25 = OUTLINED_FUNCTION_37_13();
      v28 = v37;
    }

LABEL_30:
    copyMetadataSerializer(v25, v26, v27, v28);
    if (v29)
    {
      goto LABEL_57;
    }

    if (*v28)
    {
LABEL_38:
      FigMetadataSerializerGetFigMetadataWriter();
      if (v30)
      {
        v5 = CFRetain(v30);
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_41;
    }

LABEL_26:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v39, v40);
    v5 = 0;
    if (v24)
    {
      goto LABEL_54;
    }

LABEL_41:
    v32 = (*(a1 + 692) & 4) == 0 || ValueAtIndex != @"com.apple.itunes";
    if (cf1 && CFEqual(cf1, ValueAtIndex))
    {
      v32 = 0;
    }

    if (!Mutable)
    {
      v33 = OUTLINED_FUNCTION_265();
      Mutable = CFSetCreateMutable(v33, v34, MEMORY[0x1E695E9F8]);
      if (!Mutable)
      {
        break;
      }
    }

    transferMetadata(a1, v45, cf, v5, *(a1 + 312), Mutable, v32);
    if (v35 && v35 != -12583)
    {
      goto LABEL_63;
    }

LABEL_54:
    if (v20 == ++v22)
    {
      goto LABEL_63;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_58();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v39, v40);
LABEL_63:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t createMetadataConverter(uint64_t a1, CFTypeRef cf1, const void *a3, void *a4)
{
  v14 = 0;
  v7 = *(a1 + 692);
  if ((v7 & 2) != 0)
  {
    v8 = *MEMORY[0x1E695E480];
    v10 = kFigMetadataConverterDestFileFormat_ISO_3GP;
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];
    if ((v7 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v10 = kFigMetadataConverterDestFileFormat_ISO_MP4;
  }

  v9 = CFDictionaryCreate(v8, kFigMetadataConverterCreateOption_DestFileFormat, v10, 1, 0, 0);
LABEL_7:
  FigMetadataCreateConverter(cf1, a3, v9, v8, &v14);
  v12 = v11;
  if (!v11)
  {
    *a4 = v14;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

double transferMetadata(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, const __CFDictionary *a5, const __CFSet *a6, int a7)
{
  v10 = v9;
  v150 = a1;
  if (!theDict || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_66_5();

    return FigSignalErrorAtGM(v116);
  }

  v149 = a4;
  Value = CFDictionaryGetValue(theDict, @"MetadataReader");
  if (!Value)
  {
    goto LABEL_146;
  }

  v14 = CFDictionaryGetValue(theDict, @"MetadataKeysToTransfer");
  v156 = CFDictionaryGetValue(theDict, @"MetadataKeysToIgnore");
  v157 = 0;
  v159 = 0;
  v160 = 0;
  v158 = 0;
  FigMetadataReaderGetFigBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    OUTLINED_FUNCTION_35_10();
    v19 = -12782;
    goto LABEL_133;
  }

  v7 = *MEMORY[0x1E695E480];
  v18 = v17(v16, @"format", *MEMORY[0x1E695E480], &v158);
  if (v18)
  {
    v19 = v18;
    OUTLINED_FUNCTION_35_10();
    goto LABEL_133;
  }

  if (v14)
  {
    range = CFArrayGetCount(v14);
  }

  else
  {
    range = 0;
  }

  if (!v156)
  {
    Count = 0;
    if (a5)
    {
      goto LABEL_12;
    }

LABEL_14:
    LODWORD(v133) = 0;
    goto LABEL_15;
  }

  Count = CFArrayGetCount(v156);
  if (!a5)
  {
    goto LABEL_14;
  }

LABEL_12:
  LODWORD(v133) = CFDictionaryContainsKey(a5, @"comn");
LABEL_15:
  if (!*(*(CMBaseObjectGetVTable() + 16) + 40) || (OUTLINED_FUNCTION_613(), v155 = v20(), v155 < 1))
  {
    OUTLINED_FUNCTION_35_10();
    v19 = 0;
    goto LABEL_133;
  }

  v147 = a5;
  v139 = v9;
  v21 = 0;
  v132 = @"org.mp4ra";
  v143 = @"meta";
  v145 = @"itlk";
  v130 = @"value";
  v131 = @"com.apple.quicktime.aime-data";
  v129 = @"com.apple.immersive-video";
  v128 = @"com.apple.quicktime-movie";
  v126 = @"selfReferenceFileOffset";
  v127 = @"containerByteStream";
  v125 = @"dataSize";
  while (1)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_35_10();
      v19 = -12782;
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_613();
    v23 = v22();
    if (v23)
    {
      v19 = v23;
      OUTLINED_FUNCTION_35_10();
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_15_27();
    MEMORY[0x19A8D3660](&sourceIndexPairGetTypeID_sRegisterSourceIndexPairOnce);
    v24 = v7;
    Instance = _CFRuntimeCreateInstance();
    Instance[2] = Value;
    Instance[3] = v21;
    v25 = CFDictionaryGetValue(v159, @"keyspace");
    v26 = CFDictionaryGetValue(v159, @"key");
    v7 = 0;
    if (v26)
    {
      if (v25 && v160 && v159)
      {
        break;
      }
    }

LABEL_54:
    if (v157)
    {
      CFRelease(v157);
      v157 = 0;
    }

    if (v160)
    {
      CFRelease(v160);
      v160 = 0;
    }

    if (v159)
    {
      CFRelease(v159);
      v159 = 0;
    }

    CFRelease(Instance);
    if (v7)
    {
      CFRelease(v7);
    }

    ++v21;
    v7 = v24;
    if (v155 == v21)
    {
      OUTLINED_FUNCTION_35_10();
      v19 = 0;
LABEL_131:
      v10 = v139;
      goto LABEL_132;
    }
  }

  v27 = v26;
  v28 = v158;
  if (!CFEqual(v158, @"com.apple.quicktime.udta") && !CFEqual(v28, v132))
  {
    goto LABEL_31;
  }

  if (CFEqual(v27, v143))
  {
    if (CFEqual(v25, v145))
    {
      CFEqual(v27, @"com.apple.iTunes.iTunSMPB");
    }

    goto LABEL_53;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v27))
  {
    LODWORD(valuePtr[0]) = 0;
    CFNumberGetValue(v27, kCFNumberSInt32Type, valuePtr);
    v30 = LODWORD(valuePtr[0]) != 1835365473;
  }

  else
  {
LABEL_31:
    v30 = 1;
  }

  if (CFEqual(v25, v145))
  {
    if (CFEqual(v27, @"com.apple.iTunes.iTunSMPB") != 0 || !v30)
    {
      goto LABEL_53;
    }
  }

  else if (!v30)
  {
LABEL_53:
    v7 = 0;
    goto LABEL_54;
  }

  if (v14)
  {
    v168.location = 0;
    v168.length = range;
    v31 = CFArrayContainsValue(v14, v168, v27) != 0;
  }

  else
  {
    if (!v156)
    {
      if (!a7)
      {
        goto LABEL_48;
      }

      LOBYTE(v31) = 1;
      goto LABEL_41;
    }

    v169.location = 0;
    v169.length = Count;
    v31 = CFArrayContainsValue(v156, v169, v27) == 0;
  }

  if (a7)
  {
LABEL_41:
    v7 = 0;
    if (CFSetContainsValue(a6, Instance) || !v31)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

  if (!v31)
  {
    goto LABEL_53;
  }

LABEL_48:
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v24, 0, v159);
    if (MutableCopy)
    {
      v33 = MutableCopy;
      CFDictionaryAddValue(MutableCopy, v130, v160);
      v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v34 || v34(a3, v33, v24, &v157))
      {
        CFRelease(v33);
        goto LABEL_53;
      }

      CFRelease(v33);
      if (v160)
      {
        CFRelease(v160);
        v160 = 0;
      }

      if (v159)
      {
        CFRelease(v159);
        v159 = 0;
      }

      v27 = CFDictionaryGetValue(v157, @"key");
      v25 = CFDictionaryGetValue(v157, @"keyspace");
      v35 = CFDictionaryGetValue(v157, v130);
      if (v35)
      {
        v35 = CFRetain(v35);
      }

      v159 = v157;
      v160 = v35;
      v157 = 0;
    }
  }

  if (v147 && !doesAllowListContainKeyspaceAndKey_0(v147, v133, v25, v27))
  {
    goto LABEL_53;
  }

  v36 = CFEqual(v27, v131);
  v137 = Value;
  if (!v36)
  {
    v7 = 0;
    goto LABEL_120;
  }

  v44 = OUTLINED_FUNCTION_52_8(v36, v37, v38, v39, v40, v41, v42, v43, v118, v119, v121, cf, v125, v126, v127, v128, v129, v130, v131, v132, v133, Count, Value, v139, range, v143, v145, v147, v149, v150);
  v45 = CFEqual(v44, v129);
  if (!v45)
  {
    v53 = OUTLINED_FUNCTION_52_8(v45, v46, v47, v48, v49, v50, v51, v52, v118, v120, v121, cfa, v125, v126, v127, v128, v129, v130, v131, v132, v133, Count, v137, v139, range, v143, v145, v147, v149, v150);
    if (!CFEqual(v53, v128))
    {
      goto LABEL_53;
    }
  }

  v54 = HIDWORD(v159);
  cfb = v160;
  v166 = 0;
  valuePtr[0] = 0;
  v164 = 0;
  v165 = 0;
  v162 = 0;
  v163 = 0;
  v161 = 0;
  FigMetadataReaderGetFigBaseObject();
  v56 = v55;
  v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v119 = v25;
  if (!v57)
  {
    goto LABEL_99;
  }

  HIDWORD(v121) = v54;
  v19 = v57(v56, v127, v24, valuePtr);
  v7 = 0;
  v58 = valuePtr[0];
  if (v19 || !valuePtr[0])
  {
    LODWORD(v121) = 0;
    v59 = 0;
    cf = 0;
    if (valuePtr[0])
    {
      goto LABEL_101;
    }

    goto LABEL_102;
  }

  v57 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v57)
  {
    goto LABEL_99;
  }

  v19 = (v57)(v58, 0, &v162);
  LODWORD(v57) = 0;
  v7 = 0;
  if (!cfb)
  {
    v59 = 0;
    v60 = 0;
    goto LABEL_100;
  }

  v59 = 0;
  v60 = 0;
  if (v19)
  {
    goto LABEL_100;
  }

  v61 = CFGetTypeID(cfb);
  if (v61 != CFDictionaryGetTypeID() || ((FigCFDictionaryGetInt64IfPresent(), FigCFDictionaryGetInt64IfPresent(), v63 = v163, v62 = v164, v164 >= 1) ? (v64 = v163 < 1) : (v64 = 1), v64 || v163 + v164 > v162))
  {
    OUTLINED_FUNCTION_43_10();
    v19 = 0;
    goto LABEL_88;
  }

  v7 = valuePtr[0];
  v57 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v57)
  {
LABEL_99:
    v7 = 0;
    v59 = 0;
    v60 = 0;
    v19 = -12782;
    goto LABEL_100;
  }

  DataPointer = (v57)(v7, v63, v62, &v165, 0);
  if (DataPointer || (OUTLINED_FUNCTION_613(), (DataPointer = CMBlockBufferGetDataPointer(v66, v67, v68, 0, v69)) != 0))
  {
    v19 = DataPointer;
    OUTLINED_FUNCTION_43_10();
LABEL_88:
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v60 = CFDataCreate(v24, v161, v163);
    if (v60 && (v70 = FigCFDictionaryCreateMutableCopy()) != 0)
    {
      v59 = v70;
      FigCFDictionarySetValue();
      v19 = writeReferencedDataAndCopyUpdatedMetadataItem(v150, v59, &v166);
      if (v19)
      {
        OUTLINED_FUNCTION_43_10();
      }

      else
      {
        v7 = v166;
        v166 = 0;
        LODWORD(v57) = 1;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v19 = v78;
      OUTLINED_FUNCTION_43_10();
      v59 = 0;
    }
  }

LABEL_100:
  cf = v60;
  LODWORD(v121) = v57;
  v58 = valuePtr[0];
  if (valuePtr[0])
  {
LABEL_101:
    CFRelease(v58);
  }

LABEL_102:
  if (v59)
  {
    CFRelease(v59);
  }

  Value = v137;
  if (v165)
  {
    CFRelease(v165);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (v19)
  {
    goto LABEL_131;
  }

  if (!v121)
  {
    goto LABEL_54;
  }

  v71 = v159;
  v159 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v25 = v119;
  if (v71)
  {
    CFRelease(v71);
  }

  v72 = v160;
  v73 = CFDictionaryGetValue(v159, v130);
  v160 = v73;
  if (v73)
  {
    CFRetain(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

LABEL_120:
  v75 = v159;
  v74 = v160;
  v76 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v76)
  {
    v19 = -12782;
    goto LABEL_201;
  }

  v77 = v76(v149, v25, v27, v74, v75);
  if (!v77)
  {
    CFSetAddValue(a6, Instance);
    Value = v137;
    goto LABEL_54;
  }

  v19 = v77;
LABEL_201:
  Value = v137;
  v10 = v139;
LABEL_132:
  a5 = v147;
LABEL_133:
  if (v158)
  {
    CFRelease(v158);
  }

  if (v160)
  {
    CFRelease(v160);
  }

  if (v159)
  {
    CFRelease(v159);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v19)
  {
    goto LABEL_198;
  }

LABEL_146:
  v154 = CFDictionaryGetValue(theDict, @"format");
  v79 = CFDictionaryGetValue(theDict, @"items");
  if (!v79)
  {
    goto LABEL_196;
  }

  v166 = 0;
  valuePtr[0] = 0;
  if (a5)
  {
    v80 = CFDictionaryContainsKey(a5, @"comn");
  }

  else
  {
    v80 = 0;
  }

  v81 = CFArrayGetCount(v79);
  if (v81 < 1)
  {
    v114 = 0;
    goto LABEL_193;
  }

  v82 = v81;
  LODWORD(v132) = v80;
  v148 = a5;
  v138 = Value;
  v140 = v10;
  v83 = 0;
  v84 = *MEMORY[0x1E695E480];
  v146 = @"preferredStorageLocation";
  v144 = @"forDeferredLoading";
  rangea = @"com.apple.quicktime.aime-data";
  v136 = @"com.apple.immersive-video";
  v134 = @"com.apple.quicktime-movie";
  while (2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v79, v83);
    OUTLINED_FUNCTION_15_27();
    MEMORY[0x19A8D3660](&sourceIndexPairGetTypeID_sRegisterSourceIndexPairOnce);
    v86 = _CFRuntimeCreateInstance();
    v86[2] = v79;
    v86[3] = v83;
    v87 = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
    v88 = CFDictionaryGetValue(ValueAtIndex, @"key");
    v89 = CFDictionaryGetValue(ValueAtIndex, @"value");
    if (!v88)
    {
      goto LABEL_178;
    }

    if (!v87)
    {
      goto LABEL_178;
    }

    v90 = v89;
    if (!v89 || !v154 && !CFEqual(v87, @"comn"))
    {
      goto LABEL_178;
    }

    if (CFEqual(v87, @"itlk") && CFEqual(v88, @"com.apple.iTunes.iTunSMPB") || a7 && CFSetContainsValue(a6, v86))
    {
      goto LABEL_178;
    }

    if (a3)
    {
      v91 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v91 && !v91(a3, ValueAtIndex, v84, valuePtr))
      {
        v88 = CFDictionaryGetValue(valuePtr[0], @"key");
        v87 = CFDictionaryGetValue(valuePtr[0], @"keyspace");
        v90 = CFDictionaryGetValue(valuePtr[0], @"value");
        ValueAtIndex = valuePtr[0];
        break;
      }

LABEL_178:
      if (valuePtr[0])
      {
        CFRelease(valuePtr[0]);
        valuePtr[0] = 0;
      }

      CFRelease(v86);
      if (v166)
      {
        CFRelease(v166);
        v166 = 0;
      }

      if (v82 == ++v83)
      {
        v86 = 0;
        v114 = 0;
        goto LABEL_188;
      }

      continue;
    }

    break;
  }

  if (v148 && !doesAllowListContainKeyspaceAndKey_0(v148, v132, v87, v88))
  {
    goto LABEL_178;
  }

  FigCFDictionaryGetStringValue();
  if (!FigCFEqual())
  {
LABEL_172:
    v111 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v111)
    {
      v114 = -12782;
      goto LABEL_188;
    }

    v112 = v111(v149, v87, v88, v90, ValueAtIndex);
    if (v112 != -12588 && v112 != -12583)
    {
      v114 = v112;
      if (v112)
      {
        goto LABEL_188;
      }

      CFSetAddValue(a6, v86);
    }

    goto LABEL_178;
  }

  v92 = CFEqual(v88, rangea);
  if (!v92)
  {
    goto LABEL_178;
  }

  v100 = OUTLINED_FUNCTION_52_8(v92, v93, v94, v95, v96, v97, v98, v99, v118, v119, v121, cf, v125, v126, v127, v128, v129, v130, v131, v132, v134, v136, v138, v140, rangea, v144, v146, v148, v149, v150);
  v101 = CFEqual(v100, v136);
  if (!v101)
  {
    v109 = OUTLINED_FUNCTION_52_8(v101, v102, v103, v104, v105, v106, v107, v108, v118, v119, v121, cf, v125, v126, v127, v128, v129, v130, v131, v132, v134, v136, v138, v140, rangea, v144, v146, v148, v149, v150);
    if (!CFEqual(v109, v134))
    {
      goto LABEL_178;
    }
  }

  v110 = writeReferencedDataAndCopyUpdatedMetadataItem(v150, ValueAtIndex, &v166);
  if (!v110)
  {
    ValueAtIndex = v166;
    if (!v166)
    {
      goto LABEL_178;
    }

    goto LABEL_172;
  }

  v114 = v110;
LABEL_188:
  Value = v138;
  if (valuePtr[0])
  {
    CFRelease(valuePtr[0]);
  }

  if (v86)
  {
    CFRelease(v86);
  }

LABEL_193:
  if (v166)
  {
    CFRelease(v166);
  }

  if (!v114)
  {
LABEL_196:
    if (!(Value | v79))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v118, v119, v121);
    }
  }

LABEL_198:
  OUTLINED_FUNCTION_66_5();
  return result;
}

uint64_t doesAllowListContainKeyspaceAndKey_0(const __CFDictionary *a1, uint64_t a2, const void *a3, const __CFNumber *a4)
{
  Value = CFDictionaryGetValue(a1, a3);
  if (Value)
  {
    v9 = Value;
    v10 = CFGetTypeID(Value);
    if (v10 != CFArrayGetTypeID())
    {
      return 0;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      valuePtr = 0;
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      *cStr = bswap32(valuePtr);
      v16 = 0;
      v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
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

      goto LABEL_15;
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
        a2 = doesAllowListContainKeyspaceAndKey_0(a1, a2, @"comn", CommonKey);
        if (!v12)
        {
          return a2;
        }

        goto LABEL_15;
      }
    }

    a2 = 0;
  }

  if (v12)
  {
LABEL_15:
    CFRelease(v12);
  }

  return a2;
}

uint64_t writeReferencedDataAndCopyUpdatedMetadataItem(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  cf = 0;
  values = 0;
  v15 = 0;
  DataValue = FigCFDictionaryGetDataValue();
  if (!DataValue)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, cf);
LABEL_16:
    v11 = BlockBufferWithCFDataNoCopy;
    MutableCopy = 0;
    goto LABEL_8;
  }

  v6 = *MEMORY[0x1E695E480];
  CFDataGetLength(DataValue);
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_16;
  }

  BlockBufferWithCFDataNoCopy = MovieSampleDataWriterAppendBlockBuffer(*(a1 + 752), cf, &v15);
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_16;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy && (values = FigCFNumberCreateUInt64()) != 0 && (v9 = CFDictionaryCreate(v6, &kFigMetadataItemStorageLocationKey_ReferenceByteOffset, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
  {
    v10 = v9;
    CFDictionarySetValue(MutableCopy, @"storageLocation", v9);
    *a3 = MutableCopy;
    CFRelease(v10);
    MutableCopy = 0;
    v11 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v11 = v13;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (values)
  {
    CFRelease(values);
  }

  return v11;
}

void transferTrackMetadata(uint64_t a1, CFDictionaryRef theDict, void *a3, void *a4)
{
  v38 = a4;
  v4 = *(a1 + 16);
  theArray = 0;
  cf1 = 0;
  cf = 0;
  if (!theDict)
  {
    goto LABEL_55;
  }

  v5 = a3;
  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v38, cf2);
    goto LABEL_57;
  }

  if (!a4)
  {
    goto LABEL_55;
  }

  if (CFDictionaryGetValue(theDict, @"items"))
  {
    Value = CFDictionaryGetValue(theDict, @"format");
    if (Value)
    {
      v9 = CFRetain(Value);
    }

    else
    {
      v9 = 0;
    }

    cf1 = v9;
    copyMetadataDestinationFormat(v4, v9, &theArray);
    goto LABEL_12;
  }

  v10 = CFDictionaryGetValue(theDict, @"MetadataReader");
  if (!v10)
  {
LABEL_55:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_56;
  }

  if (OUTLINED_FUNCTION_67_8(v10, v11, v12, v13, v14, v15, v16, v17, v36, v38, cf2, v41, v42, theDicta, v46, cf))
  {
    goto LABEL_56;
  }

LABEL_12:
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_56:
    v5 = 0;
LABEL_57:
    Mutable = 0;
    goto LABEL_58;
  }

  v19 = Count;
  v43 = v5;
  theDictb = theDict;
  Mutable = 0;
  v21 = 0;
  v5 = 0;
  v22 = *MEMORY[0x1E695E480];
  cf2a = @"org.mp4ra";
  v37 = @"com.apple.quicktime.mdta";
  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
    if (cf1 && !CFEqual(cf1, ValueAtIndex) && createMetadataConverter(v4, cf1, ValueAtIndex, &cf))
    {
LABEL_53:
      v5 = 0;
      goto LABEL_49;
    }

    if (CFEqual(ValueAtIndex, @"com.apple.quicktime.udta"))
    {
      if (*(*(a1 + 16) + 692))
      {
        goto LABEL_25;
      }

LABEL_27:
      if (*v43)
      {
        break;
      }

      v25 = v22;
      v26 = a1;
      v27 = ValueAtIndex;
      v28 = v43;
      goto LABEL_29;
    }

    if (CFEqual(ValueAtIndex, cf2a))
    {
      if ((*(*(a1 + 16) + 692) & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if (!CFEqual(ValueAtIndex, v37))
    {
      goto LABEL_25;
    }

    if (*v38)
    {
      break;
    }

    v25 = v22;
    v26 = a1;
    v27 = ValueAtIndex;
    v28 = v38;
LABEL_29:
    copyTrackMetadataSerializer(v25, v26, v27, v28);
    if (v29)
    {
      goto LABEL_53;
    }

    if (*v28)
    {
      break;
    }

LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, cf2a);
    v5 = 0;
    if (!v24)
    {
      goto LABEL_37;
    }

LABEL_49:
    if (v19 == ++v21)
    {
      goto LABEL_58;
    }
  }

  FigMetadataSerializerGetFigMetadataWriter();
  if (v30)
  {
    v5 = CFRetain(v30);
  }

  else
  {
    v5 = 0;
  }

LABEL_37:
  v32 = (*(v4 + 692) & 4) == 0 || ValueAtIndex != @"com.apple.itunes";
  if (cf1 && CFEqual(cf1, ValueAtIndex))
  {
    v32 = 0;
  }

  if (Mutable || (v33 = OUTLINED_FUNCTION_265(), (Mutable = CFSetCreateMutable(v33, v34, MEMORY[0x1E695E9F8])) != 0))
  {
    transferMetadata(v4, theDictb, cf, v5, *(a1 + 576), Mutable, v32);
    if (v35)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_63();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v38, cf2a);
LABEL_58:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

double setPredeterminedSizes(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (FigCFDictionaryGetInt64IfPresent() != 1 || FigCFDictionaryGetInt64IfPresent() != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    a2 = 8;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if (!MovieSampleDataWriterSetPredeterminedMediaDataAtomSize(*(a1 + 752), a2))
  {
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
    *(a1 + 448) = v3;
  }

  return result;
}

uint64_t setPSSHDataEntries(uint64_t a1, CFTypeRef cf)
{
  cfa = 0;
  v15 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == EncryptionConfigGetTypeID(v4, v5))
    {
      v6 = CFRetain(cf);
      v15 = v6;
      goto LABEL_10;
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFDictionaryGetTypeID())
    {
      if (!FigCFDictionaryGetNumberValue())
      {
        goto LABEL_22;
      }

      SInt32 = FigCFNumberGetSInt32();
      if (SInt32 == 1667591779)
      {
        v9 = 3;
      }

      else
      {
        if (SInt32 != 1667392371)
        {
          goto LABEL_22;
        }

        v9 = 2;
      }

      DataValue = FigCFDictionaryGetDataValue();
      if (DataValue)
      {
        v10 = EncryptionConfigCreateFromDictionary(DataValue, v9, &v15);
        if (v10)
        {
          goto LABEL_13;
        }

        v6 = v15;
        goto LABEL_10;
      }

LABEL_22:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_13;
    }
  }

  v6 = 0;
LABEL_10:
  MoviePSSHData_CreatePSSHDataEntries(v6, &cfa);
  if (!v10)
  {
    if (cfa)
    {
      v10 = MovieInformationSetPSSHDataEntries(*(a1 + 736), cfa);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

LABEL_13:
  v11 = v10;
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v11;
}

uint64_t figMovieWriter_WriteHeaderToByteStream(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HIDWORD(v44) = 0;
  theBuffer = 0;
  v43 = 0;
  v41 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, theBuffer);
    goto LABEL_9;
  }

  v6 = DerivedStorage;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"ByteOffsetToAddToAllSampleOffsets");
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v8, kCFNumberSInt32Type, &v44 + 4);
        v10 = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(v6 + 752));
        if (!v10)
        {
          v11 = (v6 + 752);
          v12 = HIDWORD(v44);
          goto LABEL_11;
        }

LABEL_9:
        v13 = v10;
        goto LABEL_24;
      }
    }
  }

  v10 = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(v6 + 752));
  if (v10)
  {
    goto LABEL_9;
  }

  v11 = (v6 + 752);
  v45 = 0;
  v10 = calculateHeaderByteCount(v6, &v45);
  if (v10)
  {
    goto LABEL_9;
  }

  v12 = v45;
  HIDWORD(v44) = v45;
LABEL_11:
  v10 = MovieHeaderMakerAddByteCountToChunkOffsets(*(v6 + 744), v12);
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(v6 + 320) == 3)
  {
    v10 = MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(*v11, *MEMORY[0x1E695E480], &theBuffer);
    if (v10)
    {
      goto LABEL_9;
    }

    DataLength = CMBlockBufferGetDataLength(theBuffer);
    v10 = OUTLINED_FUNCTION_41_11(DataLength, v15, v16, v17, v18, v19, v20, v21, v40, v41, theBuffer, v43, v44, v45);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  MovieAtomBBuf = createMovieAtomBBuf(v6, 0, 0, &v41);
  v23 = v41;
  if (!MovieAtomBBuf)
  {
    v24 = CMBlockBufferGetDataLength(v41);
    MovieAtomBBuf = OUTLINED_FUNCTION_41_11(v24, v25, v26, v27, v28, v29, v30, v31, v40, v41, theBuffer, v43, v44, v45);
    if (!MovieAtomBBuf)
    {
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v32)
      {
        v13 = 4294954514;
        if (!v23)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      MovieAtomBBuf = v32(a2, 0, &v43);
      if (!MovieAtomBBuf)
      {
        v33 = v43;
        v34 = SHIDWORD(v44) - v43;
        if (SHIDWORD(v44) == v43)
        {
          goto LABEL_20;
        }

        if (v34 <= 7)
        {
          goto LABEL_28;
        }

        v45 = bswap32(v34) | 0x6565726600000000;
        MovieAtomBBuf = writeData(a2, v43, &v45, 8);
        if (!MovieAtomBBuf)
        {
          if (!*(v6 + 472))
          {
            v36 = malloc_type_calloc(1uLL, 0x1000uLL, 0x2D5A05FEuLL);
            *(v6 + 472) = v36;
            if (!v36)
            {
LABEL_28:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              goto LABEL_39;
            }

            *(v6 + 480) = 4096;
          }

          v37 = v33 + 8;
          v38 = v34 - 8;
          while (v38)
          {
            if (v38 >= *(v6 + 480))
            {
              v39 = *(v6 + 480);
            }

            else
            {
              v39 = v38;
            }

            MovieAtomBBuf = writeData(a2, v37, *(v6 + 472), v39);
            v38 -= v39;
            v37 += v39;
            if (MovieAtomBBuf)
            {
              goto LABEL_39;
            }
          }

LABEL_20:
          v13 = 0;
          if (!v23)
          {
            goto LABEL_24;
          }

LABEL_23:
          CFRelease(v23);
          goto LABEL_24;
        }
      }
    }
  }

LABEL_39:
  v13 = MovieAtomBBuf;
  if (v23)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v13;
}

uint64_t figMovieWriter_CopyMovieHeaderAsBlockBuffer(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  cf = 0;
  if (*(DerivedStorage + 384) != 1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_13;
  }

  v5 = DerivedStorage;
  v6 = MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(*(DerivedStorage + 752), *MEMORY[0x1E695E480], &cf);
  if (v6)
  {
LABEL_13:
    appended = v6;
    goto LABEL_9;
  }

  v7 = createMovieAtomBBuf(v5, 1, 0, &v15);
  v8 = v15;
  if (v7)
  {
    appended = v7;
    if (v15)
    {
LABEL_8:
      CFRelease(v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_496();
    appended = CMBlockBufferAppendBufferReference(v9, v10, v11, v12, 0);
    if (!appended)
    {
      *a3 = cf;
      cf = 0;
    }

    if (v8)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return appended;
}

uint64_t editBuilderCreate(const void *a1, void *a2)
{
  v4 = MEMORY[0x19A8CC720](a1, 32, 0x600405399E965, 0);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  *v4 = 0u;
  v4[1] = 0u;
  if (a1)
  {
    v6 = CFRetain(a1);
  }

  else
  {
    v6 = 0;
  }

  *v5 = v6;
  v7 = editMediaTimeCreate(a1, v5 + 2);
  if (v7)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v8, v9, v10);
  v5[3] = Mutable;
  if (!Mutable || (v12 = editBoundaryDetectorCreate(a1, v5 + 1), !v5[1]))
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_11:
    v13 = v7;
    goto LABEL_9;
  }

  v13 = v12;
  *a2 = v5;
  v5 = 0;
LABEL_9:
  editBuilderRelease(v5);
  return v13;
}

double chunkCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, unint64_t *a9, const __CFArray *a10, const char *a11, uint64_t a12)
{
  v13 = a6;
  v15 = a4;
  v18 = *(a12 + 16);
  v38 = **&MEMORY[0x1E6960C70];
  v37 = v38;
  v19 = *(v18 + 760) + a2;
  if (!*(v18 + 384) && !*(v18 + 329))
  {
    goto LABEL_4;
  }

  if (*(a12 + 905))
  {
    goto LABEL_4;
  }

  v33 = a4;
  v32 = a8;
  memcpy((a12 + 816), a7, 0x48uLL);
  *(a12 + 888) = v19;
  *(a12 + 896) = a3;
  SampleAttachmentSync = isFirstSampleAttachmentSync(a10);
  a8 = v32;
  v15 = v33;
  v13 = a6;
  *(a12 + 904) = SampleAttachmentSync;
  *(a12 + 905) = 1;
  if (!*(v18 + 384))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_33();
  if (v24)
  {
    *(v18 + 432) = v19 + a3;
    v25 = *(a7 + 24);
    *(v18 + 424) = *(a7 + 40);
    *(v18 + 408) = v25;
  }

  if (!FigCFEqual() && !FigCFEqual() || *(v18 + 534) || *(a12 + 904) == 1)
  {
    v13 = a6;
    v15 = v33;
    a8 = v32;
    if (*(a12 + 912))
    {
      time1 = *(a12 + 840);
      time2 = *(a12 + 864);
      v26 = CMTimeCompare(&time1, &time2);
      a8 = v32;
      v15 = v33;
      v13 = a6;
      if (v26)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
LABEL_6:
        OUTLINED_FUNCTION_426_1();
        return result;
      }
    }

LABEL_4:
    MovieTrackAppendSampleInformation(*(v18 + 736), *(a12 + 736), a1, v19, v15, a5, v13, a7, a8, a9, a10, a11, &v38, &v37);
    if (!v20)
    {
      *(a12 + 348) += a5;
      ChunkOffsetTable = MovieSampleTableGetChunkOffsetTable(*(a12 + 736));
      *(a12 + 592) = CMBlockBufferGetDataLength(ChunkOffsetTable);
    }

    goto LABEL_6;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_426_1();

  return FigSignalErrorAtGM(v27);
}

void setWritingThreadErrorAndPostErrorOccurredNotification(uint64_t *a1, uint64_t a2)
{
  if (!*(a1 + 172))
  {
    if (a2 == -16359)
    {
      LODWORD(a2) = -12638;
    }

    *(a1 + 172) = a2;
    v2 = *MEMORY[0x1E695E480];
    values = FigCFNumberCreateSInt32();
    if (values)
    {
      v3 = CFDictionaryCreate(v2, kFigFormatWriterNotificationParameter_OSStatus, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v3)
      {
        v4 = v3;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v4);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    if (values)
    {
      CFRelease(values);
    }
  }
}

uint64_t setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 600);
  *(a1 + 600) = 1;
  if (v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(v1 + 488));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    while (*(CFArrayGetValueAtIndex(*(v1 + 488), v6) + 600))
    {
      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (*(v1 + 330))
  {
    lhs.value = 0;
    result = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(v1 + 752));
    if (!result)
    {
      CMBlockBufferGetDataLength(*(v1 + 440));
      v14.value = 0;
      result = CMByteStreamAppendBlockBuffer();
      if (!result)
      {
        v7 = *(v1 + 440);
        if (v7)
        {
          CFRelease(v7);
        }

        result = createBlockBufferByteStreamForMovieSampleDataWriter(v1);
        if (!result)
        {
          if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
          {
            return 4294954514;
          }

          v8 = OUTLINED_FUNCTION_16_23();
          result = v9(v8, 0);
          if (!result)
          {
            *(v1 + 760) = lhs.value;
LABEL_23:
            clearAllTracksHeaderDataCompleteFlag(v1);
            return 0;
          }
        }
      }
    }
  }

  else if (*(v1 + 168))
  {
    result = callFragmentCallback(v1);
    if (!result)
    {
      lhs = *(v1 + 220);
      v12 = *(v1 + 196);
      CMTimeAdd(&v14, &lhs, &v12);
      *(v1 + 220) = v14;
      goto LABEL_23;
    }
  }

  else
  {
    if (*(v1 + 331))
    {
      v10 = 1;
      MovieSampleDataWriterSynchronizeDefaultByteStream(*(v1 + 752), 1, 1);
      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    result = writeMovieHeader(v1, v10, v11);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t addSampleBufferToTrack_0(uint64_t a1, CMSampleBufferRef sbuf)
{
  v4 = v3;
  v5 = sbuf;
  v156 = *MEMORY[0x1E69E9840];
  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  v148 = 0;
  v149 = NumSamples;
  v146 = 0;
  cf = 0;
  OUTLINED_FUNCTION_23_22();
  v9 = MEMORY[0x1E6960CC0];
  if (v10 && (*(a1 + 244) & 1) == 0)
  {
    timingArrayEntries.value = 0;
    v11 = OUTLINED_FUNCTION_265();
    OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(v11, v12, 0, v13);
    if (OutputSampleTimingInfoArray == -12736)
    {
      v14 = 0;
    }

    else
    {
      v14 = OutputSampleTimingInfoArray;
      if (!OutputSampleTimingInfoArray)
      {
        v15 = OUTLINED_FUNCTION_32_12(0);
        if (v15)
        {
          v135 = NumSamples;
          v136 = v3;
          v134 = v15;
          v16 = CMSampleBufferGetOutputSampleTimingInfoArray(v5, timingArrayEntries.value, v15, 0);
          if (v16)
          {
            v14 = v16;
            v4 = v3;
            OUTLINED_FUNCTION_23_22();
          }

          else
          {
            v14 = 0;
            v4 = v3;
            OUTLINED_FUNCTION_23_22();
            v17 = v134;
          }

          free(v17);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_3();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v133, v134, v135);
          v14 = OutputSampleTimingInfoArray;
        }
      }
    }

    if (v14)
    {
      goto LABEL_147;
    }
  }

  v18 = MEMORY[0x1E6960C70];
  if (!NumSamples)
  {
    v22 = *MEMORY[0x1E695E4D0];
    v23 = OUTLINED_FUNCTION_45_10(OutputSampleTimingInfoArray, *MEMORY[0x1E69604A8]);
    v24 = OUTLINED_FUNCTION_45_10(v23, *MEMORY[0x1E69604B0]);
    v25 = OUTLINED_FUNCTION_45_10(v24, *MEMORY[0x1E69604F8]);
    v26 = OUTLINED_FUNCTION_45_10(v25, *MEMORY[0x1E69604C8]);
    v27 = OUTLINED_FUNCTION_45_10(v26, *MEMORY[0x1E6960490]);
    v28 = *v18;
    *&v152.value = *v18;
    v29 = *(v18 + 2);
    v152.epoch = v29;
    v30 = v22 == v23 || v22 == v24;
    if (v30 || v22 == v25)
    {
      v138 = v28;
      v32 = OUTLINED_FUNCTION_50_6();
      CMSampleBufferGetOutputPresentationTimeStamp(v33, v32);
      if (v22 == v23)
      {
        v14 = 0;
        *(a1 + 704) = time1;
      }

      else
      {
        *&time2.value = *&time1.value;
        v109 = OUTLINED_FUNCTION_38_11(time1.epoch);
        beginTrackSessionWithEditBoundaryTime(v109, v110, v111);
        v14 = v112;
        if (!v112)
        {
          *(a1 + 704) = v138;
          *(a1 + 720) = v29;
        }
      }

      goto LABEL_147;
    }

    if (v22 == v26)
    {
      v113 = OUTLINED_FUNCTION_50_6();
      CMSampleBufferGetOutputDecodeTimeStamp(v114, v113);
      if ((time1.flags & 1) == 0)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&time2, v5);
        OUTLINED_FUNCTION_62_6();
      }

      if (*(a1 + 912))
      {
        rhs = time1;
        *&time.value = *(a1 + 916);
        v115 = OUTLINED_FUNCTION_47_8(*(a1 + 932));
        CMTimeAdd(v117, v115, v116);
        OUTLINED_FUNCTION_62_6();
      }

      rhs = time1;
      *&time.value = *(a1 + 232);
      v118 = OUTLINED_FUNCTION_47_8(*(a1 + 248));
      CMTimeSubtract(v120, v118, v119);
      time1 = time2;
      rhs = *(a1 + 256);
      CMTimeSubtract(&v152, &time2, &rhs);
      *&time2.value = *&v152.value;
      v121 = OUTLINED_FUNCTION_38_11(v152.epoch);
      v41 = flushSampleBufferToTrack(v121, v122);
    }

    else
    {
      if (v22 != v27 || *(a1 + 768) != 1 || (OUTLINED_FUNCTION_63(), !v30))
      {
        v14 = 0;
LABEL_147:
        v2 = 0;
        goto LABEL_148;
      }

      v41 = editBuilderResetCurrentEditMediaTime(*(a1 + 496));
      if (!v41)
      {
        *(a1 + 504) = 0;
        FigCEA608DataInspectorRelease(*(*(a1 + 496) + 8));
        v41 = editBoundaryDetectorCreate(**(a1 + 496), (*(a1 + 496) + 8));
      }
    }

LABEL_146:
    v14 = v41;
    goto LABEL_147;
  }

  *&v152.value = *v9;
  v19 = *(v9 + 16);
  v152.epoch = v19;
  v137 = *&v152.value;
  *&time1.value = *&v152.value;
  time1.epoch = v19;
  HIBYTE(v145) = 0;
  v144 = 0;
  *&v145 = 0x3FF0000000000000;
  v143 = 0;
  HIBYTE(v142) = 0;
  if (!*(*(a1 + 16) + 768))
  {
    FigPowerReduceUtilitySFI();
  }

  if (*(a1 + 716))
  {
    *&time2.value = *(a1 + 704);
    v79 = OUTLINED_FUNCTION_38_11(*(a1 + 720));
    beginTrackSessionWithEditBoundaryTime(v79, v80, 3);
    if (v60)
    {
      goto LABEL_78;
    }

    *(a1 + 704) = *v18;
    *(a1 + 720) = *(v18 + 2);
  }

  getTrimDurationsAndSpeedMultiplierFromSbuf(v5, &v152, &time1, &v145 + 15, &v145);
  if (!*(a1 + 348))
  {
    OUTLINED_FUNCTION_63();
    if (v30)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(v5);
      time2.value = 0;
      *&time2.timescale = 0;
      rhs.value = 0;
      *&rhs.timescale = 0;
      v35 = CMSampleBufferGetFormatDescription(v5);
      MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(v35);
      if (MostCompatibleFormat)
      {
        *&time2.value = *&MostCompatibleFormat->mASBD.mSampleRate;
        mBytesPerPacket = MostCompatibleFormat->mASBD.mBytesPerPacket;
        mFramesPerPacket = MostCompatibleFormat->mASBD.mFramesPerPacket;
        *&rhs.value = *&MostCompatibleFormat->mASBD.mBytesPerFrame;
      }

      else
      {
        v128 = v4;
        v129 = NumSamples;
        fig_log_get_emitter();
        v130 = v128;
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v133, v134, v135);
        v14 = v131;
        if (v131)
        {
          goto LABEL_79;
        }

        mFramesPerPacket = 0;
        mBytesPerPacket = 0;
        v132 = v130;
        NumSamples = v129;
        v4 = v132;
      }

      *(a1 + 360) = *&time2.value;
      *(a1 + 376) = mBytesPerPacket;
      *(a1 + 380) = mFramesPerPacket;
      *(a1 + 384) = *&rhs.value;
      v39 = *(a1 + 16);
      if ((v39[692] & 1) == 0)
      {
        v135 = NumSamples;
        time.value = 0;
        if (v39[329])
        {
          v40 = 1;
        }

        else
        {
          v40 = v39[384] != 0;
        }

        v60 = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(0, FormatDescription, 0, &time);
        if (v60)
        {
          goto LABEL_78;
        }

        v98 = CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(time.value, 0);
        if (time.value)
        {
          CFRelease(time.value);
        }

        if (v98)
        {
          v99 = *(a1 + 585) == 0;
        }

        else
        {
          v99 = 1;
        }

        v100 = v99;
        if (((v100 | v40) & 1) == 0 && mBytesPerPacket && mFramesPerPacket)
        {
          MovieTrackSetSampleOverrides(*(a1 + 736), mBytesPerPacket, mFramesPerPacket);
          v101 = *(a1 + 360);
          *(a1 + 104) = v101;
          v60 = MediaSampleTimingGeneratorSetMediaTimeScale(*(a1 + 752), v101);
          NumSamples = v135;
          if (v60)
          {
            goto LABEL_78;
          }

          v60 = MovieTrackSetMediaTimeScale(*(a1 + 736), *(a1 + 104));
          if (v60)
          {
            goto LABEL_78;
          }

          goto LABEL_126;
        }

        NumSamples = v135;
      }
    }

    if (*(a1 + 104))
    {
      goto LABEL_126;
    }

    OUTLINED_FUNCTION_33();
    if (v30)
    {
      timescale = 600;
    }

    else
    {
      OUTLINED_FUNCTION_63();
      if (!v30 || (timescale = *(a1 + 360), timescale <= 599))
      {
        OUTLINED_FUNCTION_59_5();
        CMSampleBufferGetPresentationTimeStamp(&time2, v5);
        if (time2.timescale <= 600)
        {
          timescale = 600;
        }

        else
        {
          timescale = time2.timescale;
        }
      }
    }

    *(a1 + 104) = timescale;
    v60 = MediaSampleTimingGeneratorSetMediaTimeScale(*(a1 + 752), timescale);
    if (v60)
    {
      goto LABEL_78;
    }

    v41 = MovieTrackSetMediaTimeScale(*(a1 + 736), *(a1 + 104));
    if (!v41)
    {
LABEL_126:
      if (!MovieTrackGetNumFormatDescriptions(*(a1 + 736)))
      {
        v102 = CMSampleBufferGetFormatDescription(v5);
        if (v102)
        {
          v103 = v102;
          v104 = OUTLINED_FUNCTION_45_10(v102, *MEMORY[0x1E6960528]);
          if (v104)
          {
            v105 = OUTLINED_FUNCTION_45_10(v104, *MEMORY[0x1E6960530]);
          }

          else
          {
            v105 = 0;
          }

          v60 = MovieTrackFindOrAddSampleDescription(*(a1 + 736), v103, v105, 0);
          if (v60)
          {
            goto LABEL_78;
          }

          v107 = setDefaultTrackDimensionsIfNecessary(a1);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_3();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v133, v134, v135);
        }

        v14 = v107;
        if (v107)
        {
          goto LABEL_79;
        }
      }

      if ((*(a1 + 480) & 1) == 0)
      {
        *(a1 + 468) = v137;
        *(a1 + 484) = v19;
      }

      goto LABEL_18;
    }

    goto LABEL_146;
  }

LABEL_18:
  v20 = *(a1 + 768);
  if (v20 == 5)
  {
    v21 = *(a1 + 16);
    CMSampleBufferGetFormatDescription(v5);
    if (FigAudioFormatDescriptionEmploysDependentPackets())
    {
      v20 = 3;
LABEL_56:
      *(a1 + 768) = v20;
      goto LABEL_57;
    }

    v136 = v4;
    LOWORD(time2.value) = 0;
    LOBYTE(rhs.value) = 0;
    LOBYTE(time.value) = 0;
    v42 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v5, 1u);
    if (v42)
    {
      v43 = v42;
      v44 = NumSamples;
      v45 = v2;
      AudioRollRecoveryValueFromSampleBufferAttachment = FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment(v42, &time2, &rhs, &time);
      if (AudioRollRecoveryValueFromSampleBufferAttachment)
      {
        v14 = AudioRollRecoveryValueFromSampleBufferAttachment;
        CFRelease(v43);
        goto LABEL_79;
      }

      value_low = LOBYTE(rhs.value);
      v48 = LOBYTE(time.value);
      CFRelease(v43);
      if (value_low && v48)
      {
        v20 = 3;
LABEL_55:
        v2 = v45;
        NumSamples = v44;
        goto LABEL_56;
      }
    }

    else
    {
      v44 = NumSamples;
      v45 = v2;
    }

    if (*(v21 + 384))
    {
      v20 = 4;
    }

    else
    {
      v20 = 1;
    }

    goto LABEL_55;
  }

LABEL_57:
  if (v20 == 1)
  {
    OUTLINED_FUNCTION_63();
    if (v30 && !*(a1 + 504))
    {
      OUTLINED_FUNCTION_59_5();
      v66 = CMSampleBufferGetFormatDescription(v5);
      FigGaplessInfoGetDefaultAudioPrimingDuration(v66, &time2);
      *&rhs.value = v137;
      rhs.epoch = v19;
      time = time2;
      v67 = CMTimeCompare(&rhs, &time);
      if (v67)
      {
        if (HIBYTE(v145))
        {
          OUTLINED_FUNCTION_17_23(v67, v68, v69, v70, v71, v72, v73, v74, v133, v134, v135, v136, v137, *(&v137 + 1), v139.value, *&v139.timescale, v139.epoch, v140, *&timingArrayEntries.value, timingArrayEntries.epoch, v142, v143, v144, v145, v146, cf, v148, v149, time1.value, *&time1.timescale, time1.epoch, v151, *&v152.value, v152.epoch);
          *NumSamples = rhs;
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
          OUTLINED_FUNCTION_17_23(v67, v68, v69, v70, v71, v72, v73, v74, v133, v134, v135, v136, v137, *(&v137 + 1), v139.value, *&v139.timescale, v139.epoch, v140, *&timingArrayEntries.value, timingArrayEntries.epoch, v142, v143, v144, v145, v146, cf, v148, v149, time1.value, *&time1.timescale, time1.epoch, v151, *&v152.value, v152.epoch);
          *&time.value = *&rhs.value;
          OUTLINED_FUNCTION_42_9(rhs.epoch);
          if (CMTimeCompare(&time, &timingArrayEntries) < 0)
          {
            *&time.value = *&NumSamples->value;
            OUTLINED_FUNCTION_42_9(NumSamples->epoch);
            v139 = v152;
            v60 = createSynthesizedAudioPrimingSampleBuffer(&time, &timingArrayEntries, v5, a1 + 360, NumSamples, &v139, &cf, &v149, &v152);
            if (v60)
            {
              goto LABEL_78;
            }

            v5 = cf;
          }

          *(*(*(a1 + 496) + 16) + 120) = time2;
          *(a1 + 504) = 1;
        }
      }
    }
  }

  if (*(a1 + 492))
  {
    v49 = OUTLINED_FUNCTION_265();
    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v49, v50, 0, v51);
    if (SampleTimingInfoArray != -12736)
    {
      v14 = SampleTimingInfoArray;
      if (!SampleTimingInfoArray)
      {
        if (v144)
        {
          if ((v144 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          if (v144 > v2)
          {
            goto LABEL_77;
          }

          v53 = 72 * v144;
          if (!(72 * v144))
          {
            goto LABEL_77;
          }
        }

        else
        {
          v53 = 0;
        }

        if (OUTLINED_FUNCTION_32_12(v53))
        {
          v61 = OUTLINED_FUNCTION_44_11();
          v65 = CMSampleBufferGetSampleTimingInfoArray(v61, v62, v63, v64);
          if (!v65)
          {
            goto LABEL_104;
          }

LABEL_90:
          v14 = v65;
          goto LABEL_91;
        }

LABEL_77:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_3();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_78:
        v14 = v60;
      }

LABEL_79:
      v2 = 0;
LABEL_91:
      v58 = 0;
      goto LABEL_92;
    }

LABEL_70:
    v2 = 0;
    v58 = 0;
    goto LABEL_71;
  }

  v54 = OUTLINED_FUNCTION_265();
  v57 = CMSampleBufferGetOutputSampleTimingInfoArray(v54, v55, 0, v56);
  if (v57 == -12736)
  {
    goto LABEL_70;
  }

  v14 = v57;
  if (v57)
  {
    goto LABEL_79;
  }

  if (v144)
  {
    if ((v144 & 0x8000000000000000) != 0)
    {
      goto LABEL_77;
    }

    if (v144 > v2)
    {
      goto LABEL_77;
    }

    v59 = 72 * v144;
    if (!(72 * v144))
    {
      goto LABEL_77;
    }
  }

  else
  {
    v59 = 0;
  }

  if (!OUTLINED_FUNCTION_32_12(v59))
  {
    goto LABEL_77;
  }

  v75 = OUTLINED_FUNCTION_44_11();
  v65 = CMSampleBufferGetOutputSampleTimingInfoArray(v75, v76, v77, v78);
  if (v65)
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_59_5();
  getTrimDurationFromSampleBuffer(v5, *MEMORY[0x1E6960560], &time2);
  memset(&rhs, 0, sizeof(rhs));
  time = time2;
  CMTimeMultiplyByFloat64(&rhs, &time, 1.0 / *&v145);
  timingArrayEntries = *(v2 + 1);
  *&v139.value = *&rhs.value;
  OUTLINED_FUNCTION_11_32();
  CMTimeSubtract(v83, v81, v82);
  *(v2 + 1) = time;
  timingArrayEntries = *(v2 + 2);
  *&v139.value = *&rhs.value;
  OUTLINED_FUNCTION_11_32();
  CMTimeSubtract(v86, v84, v85);
  *(v2 + 2) = time;
  if (*(a1 + 912))
  {
    if ((v2[60] & 1) == 0)
    {
      *(v2 + 3) = *(v2 + 24);
      *(v2 + 8) = *(v2 + 5);
    }

    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v5, 0);
    if (isFirstSampleAttachmentSync(SampleAttachmentsArray))
    {
      timingArrayEntries = *(v2 + 1);
      *&v139.value = *(v2 + 3);
      OUTLINED_FUNCTION_11_32();
      CMTimeSubtract(v90, v88, v89);
      *(a1 + 916) = time;
    }

    timingArrayEntries = *(v2 + 2);
    *&v139.value = *(a1 + 916);
    OUTLINED_FUNCTION_11_32();
    CMTimeAdd(v93, v91, v92);
    *(v2 + 2) = time;
  }

LABEL_104:
  if (!*(a1 + 492) && (*(a1 + 244) & 1) == 0)
  {
    time2.value = *(v2 + 3);
    v94 = *(v2 + 9);
    time2.timescale = *(v2 + 8);
    v95 = *(v2 + 5);
    rhs.value = *(v2 + 6);
    v96 = *(v2 + 15);
    rhs.timescale = *(v2 + 14);
    if (v96)
    {
      v97 = *(v2 + 8);
    }

    else
    {
      rhs.value = *(v2 + 3);
      rhs.timescale = *(v2 + 8);
      v96 = v94;
      v97 = v95;
    }

    v123 = *(v2 + 2);
    *(a1 + 184) = *v2;
    value = time2.value;
    *(a1 + 200) = v123;
    *(a1 + 208) = value;
    *(a1 + 216) = time2.timescale;
    *(a1 + 220) = v94;
    v125 = rhs.value;
    *(a1 + 224) = v95;
    *(a1 + 232) = v125;
    *(a1 + 240) = rhs.timescale;
    *(a1 + 244) = v96;
    *(a1 + 248) = v97;
  }

  MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArray(*(a1 + 752), v149, v144, v2, &v146, &v143, &v148, &v142 + 7);
  if (v65)
  {
    goto LABEL_90;
  }

  if (HIBYTE(v142))
  {
    v58 = *(a1 + 328);
    if (v5)
    {
      v126 = CFRetain(v5);
    }

    else
    {
      v126 = 0;
    }

    *(a1 + 328) = v126;
    v5 = v58;
    if (v58)
    {
LABEL_168:
      time2 = v152;
      rhs = time1;
      v127 = addSampleBufferWithSampleMediaTimingToTrack(a1, v5, v143, v148, &time2, &rhs, HIBYTE(v145), *&v145);
      if (v127)
      {
        v14 = v127;
        goto LABEL_92;
      }
    }
  }

  else
  {
    v58 = 0;
    if (v5)
    {
      goto LABEL_168;
    }
  }

LABEL_71:
  v14 = 0;
LABEL_92:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v58)
  {
    CFRelease(v58);
  }

LABEL_148:
  MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v148);
  free(v2);
  return v14;
}

uint64_t flushSampleBufferToTrack(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v11 = 0;
  v12 = 0;
  if (*(a1 + 328) && (*(a2 + 12) & 0x1D) == 1)
  {
    v3 = *(a1 + 752);
    v9 = *a2;
    v10 = *(a2 + 16);
    v4 = MediaSampleTimingGeneratorCreateLastMediaSampleTimingInfoArray(v3, &v9, &v13, &v12, &v11);
    v5 = v11;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = addSampleBufferWithSampleMediaTimingToTrack(a1, *(a1 + 328), v12, v11, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, 1.0);
      v5 = v11;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v5);
  v7 = *(a1 + 328);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 328) = 0;
  }

  return v6;
}

uint64_t callFragmentCallback(uint64_t a1)
{
  theBuffer = 0;
  if (!CMBlockBufferGetDataLength(*(a1 + 440)))
  {
    return 0;
  }

  v3 = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(a1 + 752));
  if (v3)
  {
    return v3;
  }

  createMovieFragmentAtomBBuf(a1, &theBuffer);
  v5 = theBuffer;
  if (appended || (DataLength = CMBlockBufferGetDataLength(theBuffer), OUTLINED_FUNCTION_496(), appended = CMBlockBufferAppendBufferReference(v7, v8, v9, v10, 0), appended))
  {
    v15 = appended;
    goto LABEL_51;
  }

  v11 = *(a1 + 432);
  if (v11)
  {
    v12 = v11 + DataLength;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 488);
  if (v13)
  {
    Count = CFArrayGetCount(v13);
  }

  else
  {
    Count = 0;
  }

  v16 = *MEMORY[0x1E695E480];
  v17 = OUTLINED_FUNCTION_60_7();
  Mutable = CFDictionaryCreateMutable(v17, v18, v19, v20);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, theDict);
    v15 = v48;
    if (!v48)
    {
      goto LABEL_58;
    }

    goto LABEL_51;
  }

  v22 = Mutable;
  v23 = FigCFDictionarySetInt32();
  if (v23)
  {
LABEL_65:
    v15 = v23;
    goto LABEL_57;
  }

  cf = CFArrayCreateMutable(v16, Count, MEMORY[0x1E695E9C0]);
  if (!cf)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, theDict);
    goto LABEL_65;
  }

  v51 = v1;
  theDicta = v22;
  v55 = v12;
  v59 = Count;
  v24 = cf;
  if (Count < 1)
  {
LABEL_44:
    v40 = theDicta;
    CFDictionarySetValue(theDicta, @"SegmentReportKey_TrackReports", v24);
    CFRelease(v24);
    v12 = v55;
    goto LABEL_45;
  }

  v25 = 0;
  v57 = *MEMORY[0x1E695E4D0];
  v56 = *MEMORY[0x1E695E4C0];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v25);
    v63 = 0;
    value = 0;
    v27 = OUTLINED_FUNCTION_60_7();
    v29 = CFDictionaryCreateMutable(v27, v28, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v29)
    {
      break;
    }

    v30 = v29;
    TrackFragmentMediaDecodeDuration = FigCFDictionarySetInt32();
    if (TrackFragmentMediaDecodeDuration || (TrackFragmentMediaDecodeDuration = FigCFDictionarySetInt32(), TrackFragmentMediaDecodeDuration) || (TrackFragmentMediaDecodeDuration = MovieTrackFragmentGetTrackFragmentMediaDecodeDuration(*(ValueAtIndex + 92), &value), TrackFragmentMediaDecodeDuration) || (memset(&v62, 0, sizeof(v62)), CMTimeMake(&v62, value, *(ValueAtIndex + 26)), v69 = v62, TrackFragmentMediaDecodeDuration = FigCFDictionarySetCMTime(), TrackFragmentMediaDecodeDuration) || (TrackFragmentMediaDecodeDuration = MovieTrackFragmentGetTrackFragmentLowestDisplayStartTimeValue(*(ValueAtIndex + 92), &v63), TrackFragmentMediaDecodeDuration) || (memset(&v61, 0, sizeof(v61)), CMTimeMake(&v61, v63, *(ValueAtIndex + 26)), v69 = v61, TrackFragmentMediaDecodeDuration = FigCFDictionarySetCMTime(), TrackFragmentMediaDecodeDuration))
    {
      v15 = TrackFragmentMediaDecodeDuration;
LABEL_55:
      v12 = v55;
      v22 = theDicta;
      CFRelease(v30);
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_33();
    if (v32 && *(ValueAtIndex + 905))
    {
      v71[0] = 0;
      v70 = 0;
      v33 = OUTLINED_FUNCTION_60_7();
      v35 = CFDictionaryCreateMutable(v33, v34, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v35)
      {
        v36 = v35;
        TrackFragmentBaseMediaDecodeTimeValue = MovieTrackFragmentGetTrackFragmentBaseMediaDecodeTimeValue(*(ValueAtIndex + 92), v71, &v70);
        if (!TrackFragmentBaseMediaDecodeTimeValue)
        {
          if (v70 == 1)
          {
            memset(&v69, 0, sizeof(v69));
            lhs = *(ValueAtIndex + 35);
            rhs = *(ValueAtIndex + 36);
            CMTimeSubtract(&v69, &lhs, &rhs);
            memset(&v66, 0, sizeof(v66));
            CMTimeMake(&v66, v71[0], *(ValueAtIndex + 26));
            memset(&v65, 0, sizeof(v65));
            lhs = v66;
            rhs = v69;
            CMTimeAdd(&v65, &lhs, &rhs);
            lhs = v65;
            TrackFragmentBaseMediaDecodeTimeValue = FigCFDictionarySetCMTime();
            if (!TrackFragmentBaseMediaDecodeTimeValue)
            {
              TrackFragmentBaseMediaDecodeTimeValue = FigCFDictionarySetInt32();
              if (!TrackFragmentBaseMediaDecodeTimeValue)
              {
                TrackFragmentBaseMediaDecodeTimeValue = FigCFDictionarySetInt32();
                if (!TrackFragmentBaseMediaDecodeTimeValue)
                {
                  if (*(ValueAtIndex + 904))
                  {
                    v38 = v57;
                  }

                  else
                  {
                    v38 = v56;
                  }

                  CFDictionarySetValue(v36, @"SegmentReportSampleInformationKey_IsSyncSample", v38);
                  CFDictionarySetValue(v30, @"SegmentTrackReportKey_FirstVideoSampleInformation", v36);
                  CFRelease(v36);
                  v24 = cf;
                  goto LABEL_37;
                }
              }
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_120();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v51, theDicta);
          }
        }

        v15 = TrackFragmentBaseMediaDecodeTimeValue;
        CFRelease(v36);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v51, theDicta);
        v15 = v39;
      }

      v24 = cf;
      if (v15)
      {
        goto LABEL_55;
      }

      CFDictionarySetValue(v30, @"SegmentTrackReportKey_FirstVideoSampleInformation", 0);
    }

LABEL_37:
    CFArrayAppendValue(v24, v30);
    CFRelease(v30);
    if (v59 == ++v25)
    {
      goto LABEL_44;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_120();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v51, theDicta);
  v15 = v47;
  v12 = v55;
  v22 = theDictb;
LABEL_56:
  CFRelease(cf);
LABEL_57:
  CFRelease(v22);
  if (!v15)
  {
LABEL_58:
    v40 = 0;
LABEL_45:
    v42 = *(a1 + 392);
    v41 = *(a1 + 400);
    v69 = *(a1 + 408);
    BlockBufferByteStreamForMovieSampleDataWriter = v42(v41, v5, &v69, v12, v40);
    if (!BlockBufferByteStreamForMovieSampleDataWriter)
    {
      MovieInformationReleaseMovieFragmentSampleTables(*(a1 + 736));
      v44 = MEMORY[0x1E6960C70];
      *(a1 + 408) = *MEMORY[0x1E6960C70];
      *(a1 + 424) = *(v44 + 16);
      *(a1 + 432) = 0;
      v45 = *(a1 + 440);
      if (v45)
      {
        CFRelease(v45);
      }

      clearAllTracksFirstSampleInfoInFragment(a1);
      BlockBufferByteStreamForMovieSampleDataWriter = createBlockBufferByteStreamForMovieSampleDataWriter(a1);
    }

    v15 = BlockBufferByteStreamForMovieSampleDataWriter;
    if (v40)
    {
      CFRelease(v40);
    }
  }

LABEL_51:
  if (v5)
  {
    CFRelease(v5);
  }

  return v15;
}

void createMovieFragmentAtomBBuf(uint64_t a1, OpaqueCMBlockBuffer **a2)
{
  v4 = *(a1 + 744);
  theBuffer = 0;
  InsertMediaSegments(a1, 0);
  if (v5)
  {
    goto LABEL_35;
  }

  if (*(a1 + 384) && !*(a1 + 769))
  {
    v69 = a2;
    Count = CFArrayGetCount(*(a1 + 488));
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v77 = *MEMORY[0x1E6960C70];
      v9 = *(MEMORY[0x1E6960C70] + 16);
      v74 = *MEMORY[0x1E6960C88];
      v10 = *(MEMORY[0x1E6960C88] + 16);
      v71 = *MEMORY[0x1E6960CC0];
      v11 = *(MEMORY[0x1E6960CC0] + 16);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v8);
        memset(&v83, 0, sizeof(v83));
        v13 = CFArrayGetCount(*(ValueAtIndex[2] + 488));
        *&v83.value = v77;
        v83.epoch = v9;
        *&v86.value = v74;
        v86.epoch = v10;
        if (v13 >= 1)
        {
          v14 = v13;
          for (i = 0; i != v14; ++i)
          {
            v16 = CFArrayGetValueAtIndex(*(ValueAtIndex[2] + 488), i);
            getDecodeTimeForTrackFragmentInitialBaseMediaDecodeTime(v16, &v83);
            OUTLINED_FUNCTION_61_8();
            OUTLINED_FUNCTION_25_18(v17, v18, v19, v20, v21, v22, v23, v24, v67, v69, v71, *(&v71 + 1), v74, *(&v74 + 1), v77, *(&v77 + 1), v80, theBuffer, *&v83.value);
            CMTimeMinimum(&v86, &time1, &time2);
          }
        }

        getDecodeTimeForTrackFragmentInitialBaseMediaDecodeTime(ValueAtIndex, &v83);
        OUTLINED_FUNCTION_61_8();
        *&time2.value = v71;
        time2.epoch = v11;
        v25 = CMTimeCompare(&time1, &time2);
        if ((v25 & 0x80000000) != 0)
        {
          time2 = v86;
          v32 = CMTimeAbsoluteValue(&time1, &time2);
          OUTLINED_FUNCTION_25_18(v32, v33, v34, v35, v36, v37, v38, v39, v67, v69, v71, *(&v71 + 1), v74, *(&v74 + 1), v77, *(&v77 + 1), v80, theBuffer, *&v83.value);
          v25 = CMTimeAdd(&v83, &time2, &time1);
        }

        OUTLINED_FUNCTION_25_18(v25, *(ValueAtIndex + 26), v26, v27, v28, v29, v30, v31, v67, v69, v71, *(&v71 + 1), v74, *(&v74 + 1), v77, *(&v77 + 1), v80, theBuffer, *&v83.value);
        CMTimeConvertScale(&time1, &time2, v40, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v83 = time1;
        if (MovieTrackFragmentSetInitialBaseMediaDecodeTimeValue(ValueAtIndex[92], time1.value))
        {
          goto LABEL_36;
        }
      }

      while (++v8 != v7);
    }

    *(a1 + 769) = 1;
    a2 = v69;
  }

  v41 = *(a1 + 744);
  v42 = CFArrayGetCount(*(a1 + 488));
  if (!MovieHeaderMakerSetShouldWriteBaseDataOffsetIsMovieFragmentAtomFlagInTrackFragment(v41, *(a1 + 384)) && !MovieHeaderMakerSetShouldWriteBaseMediaDecodeTimeAtomInTrackFragment(v41, *(a1 + 333)))
  {
    ShouldAllow64BitDataOffsetInTrackRunAtom = MovieHeaderMakerSetShouldAllow64BitDataOffsetInTrackRunAtom(v41, *(a1 + 540));
    if (!ShouldAllow64BitDataOffsetInTrackRunAtom)
    {
      if (v42 >= 1)
      {
        v51 = 0;
        do
        {
          v52 = CFArrayGetValueAtIndex(*(a1 + 488), v51);
          v53 = v52;
          v54 = *(v52 + 353) && *(a1 + 384) == 0;
          v55 = v52[93];
          v56 = *(v52 + 192);
          if (MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment(v41, v55, v54))
          {
            goto LABEL_36;
          }

          if (MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms(v41, v55, v56 == 3))
          {
            goto LABEL_36;
          }

          ShouldAllow64BitDataOffsetInTrackRunAtom = MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms(v41, v55, *(v53 + 729));
          if (ShouldAllow64BitDataOffsetInTrackRunAtom)
          {
            goto LABEL_36;
          }
        }

        while (v42 != ++v51);
      }

      if (!OUTLINED_FUNCTION_46_7(ShouldAllow64BitDataOffsetInTrackRunAtom, v44, v45, v46, v47, v48, v49, v50, v67, v69, v71, *(&v71 + 1), v74, *(&v74 + 1), v77, *(&v77 + 1), v80))
      {
        DataLength = CMBlockBufferGetDataLength(theBuffer);
        if (!DataLength)
        {
LABEL_34:
          *a2 = theBuffer;
          goto LABEL_35;
        }

        if (!*(a1 + 384))
        {
          goto LABEL_33;
        }

        v58 = DataLength;
        if (theBuffer)
        {
          CFRelease(theBuffer);
          theBuffer = 0;
        }

        v59 = MovieHeaderMakerAddByteCountToTrackRunDataOffsets(v4, v58);
        if (!v59 && !OUTLINED_FUNCTION_46_7(v59, v60, v61, v62, v63, v64, v65, v66, v68, v70, v72, v73, v75, v76, v78, v79, v81))
        {
LABEL_33:
          ++*(a1 + 376);
          goto LABEL_34;
        }
      }
    }
  }

LABEL_36:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

LABEL_35:
  OUTLINED_FUNCTION_426_1();
}

double beginTrackSessionWithEditBoundaryTime(uint64_t a1, CMTime *a2, int a3)
{
  v18 = **&MEMORY[0x1E6960C70];
  memset(&v17, 0, sizeof(v17));
  lhs = *a2;
  rhs = *(a1 + 232);
  CMTimeSubtract(&v17, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  rhs = v17;
  v14 = *(a1 + 256);
  CMTimeSubtract(&lhs, &rhs, &v14);
  MediaSampleTimingGeneratorGetDefaultLastSampleDuration(*(a1 + 752), &rhs);
  v14 = lhs;
  CMTimeMaximum(&v18, &v14, &rhs);
  rhs = v18;
  v6 = OUTLINED_FUNCTION_19_24();
  if (!flushSampleBufferToTrack(v6, v7))
  {
    rhs = *a2;
    v9 = OUTLINED_FUNCTION_19_24();
    trackEndSession(v9, v10, a3);
    if (!v11)
    {
      rhs = *a2;
      v12 = OUTLINED_FUNCTION_19_24();
      return trackBeginSession(v12, v13, a3);
    }
  }

  return result;
}

uint64_t setDefaultTrackDimensionsIfNecessary(uint64_t a1)
{
  v2 = MovieTrackCopyFormatDescriptionArray(*(a1 + 736));
  ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
  if (CMFormatDescriptionGetMediaType(ValueAtIndex) != 1986618469)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  IsISOFileType = FigFileTypeIsISOFileType(*(*(a1 + 16) + 720));
  if (IsISOFileType)
  {
    if (*(a1 + 32))
    {
      FigMovieGetVideoDefaultTrackDimensionsFromFormatDescription(ValueAtIndex, IsISOFileType);
      v5 = OUTLINED_FUNCTION_13_23();
      v8 = MovieTrackSetTrackDimensions(v5, v6, v7);
LABEL_7:
      v12 = v8;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(a1 + 32))
  {
    FigMovieGetVideoDefaultTrackDimensionsFromFormatDescription(ValueAtIndex, 0);
    v9 = OUTLINED_FUNCTION_13_23();
    v8 = MovieTrackSetTrackDimensions(v9, v10, v11);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 33))
  {
    FigMovieGetVideoDefaultCleanApertureDimensionsFromFormatDescription(ValueAtIndex);
    v13 = OUTLINED_FUNCTION_13_23();
    v8 = MovieTrackSetCleanApertureDimensions(v13, v14, v15);
    if (v8)
    {
      goto LABEL_7;
    }

    *(a1 + 34) = 1;
  }

  if (*(a1 + 35))
  {
    FigMovieGetVideoDefaultProductionApertureDimensionsFromFormatDescription(ValueAtIndex);
    v16 = OUTLINED_FUNCTION_13_23();
    v8 = MovieTrackSetProductionApertureDimensions(v16, v17, v18);
    if (v8)
    {
      goto LABEL_7;
    }

    *(a1 + 36) = 1;
  }

  if (!*(a1 + 37))
  {
    goto LABEL_17;
  }

  FigMovieGetVideoDefaultEncodedPixelsDimensionsFromFormatDescription(ValueAtIndex);
  v19 = OUTLINED_FUNCTION_13_23();
  v12 = MovieTrackSetEncodedPixelsDimensions(v19, v20, v21);
  if (!v12)
  {
    *(a1 + 38) = 1;
  }

LABEL_18:
  if (v2)
  {
    CFRelease(v2);
  }

  return v12;
}

uint64_t copyNegativeCompositionOffsetsInISOFilePolicy(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  NegativeCompositionOffsetsInISOFilePolicy = MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy(*(a1 + 744), *(a2 + 744), &v7);
  if (!NegativeCompositionOffsetsInISOFilePolicy)
  {
    if (v7 > 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = *off_1E7487078[v7];
      if (v5)
      {
        v5 = CFRetain(v5);
      }
    }

    *a3 = v5;
  }

  return NegativeCompositionOffsetsInISOFilePolicy;
}

double FigMovieFormatWriterCreateWithByteStream_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigMovieFormatWriterCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMovieFormatWriterCreateWithByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void createFigMovieFormatWriterObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMovieFormatWriterCreateForWritingMovieFragments_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMovieFormatWriterCreateForWritingMovieFragments_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t figMovieWriter_CopyProperty_cold_1()
{
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_613();
  result = MovieInformationGetBasicMetrics(v2, v3, v4, v5, 0);
  *v1 = result;
  if (!result)
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
    *v0 = result;
  }

  return result;
}

uint64_t figMovieWriter_CopyProperty_cold_2()
{
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_496();
  result = MovieInformationGetBasicMetrics(v2, v3, v4, v5, 0);
  *v1 = result;
  if (!result)
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
    *v0 = result;
  }

  return result;
}

uint64_t figMovieWriter_CopyProperty_cold_3()
{
  OUTLINED_FUNCTION_36_13();
  result = MovieInformationGetBasicMetrics(v2, 0, &valuePtr, 0, 0);
  *v1 = result;
  if (!result)
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    *v0 = result;
  }

  return result;
}

void figMovieWriter_CopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_CopyProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_22(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_23(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_24(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_25(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_26(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_27(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_SetProperty_cold_28(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyFigMatrixAsArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyFigMatrixAsArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void getMetadataSerializer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void getMetadataSerializer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void createMetadataWritersDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyPredeterminedSizesAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyMediaDataCheckpointIntervalAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyFigTimeMappingAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void editBuilderCreateTimeMappingArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void createTrackEditSegmentArrayFromSessionTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyMetadataSerializer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyMetadataSourceAndDestinationFormats_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyTrackMetadataSerializer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void getTrackMetadataSerializer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void getTrackMetadataSerializer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void setTrackReferences_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void setTrackReferences_cold_2(const __CFAllocator *a1, void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a3 = v6;

  CFAllocatorDeallocate(a1, a2);
}

void setTrackReferences_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void setMediaDataCheckpointInterval_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void setMediaDataCheckpointInterval_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void setMediaDataCheckpointInterval_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_AddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_AddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_WriteHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_EndSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figMovieWriter_EndSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void editBoundaryDetectorCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void validateSampleBufferForTrackCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void editMediaTimeCreate_cold_1(_BYTE *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writingThread_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writingThread_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void writingThread_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void trackBufferQueueDequeueAndRetain_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void trackEndSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyFigTrackLoadSettingsAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyFigTrackLoadSettingsAsDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyFigTrackLoadSettingsAsDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyFigTrackLoadSettingsAsDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyFigTrackLoadSettingsAsDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyDimensionsAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void copyDimensionsAsDictionary_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
  CFRelease(a1);
}

void copyDimensionsAsDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void createTrackMetadataWritersDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t figClusterSynchManager_ensureStarted()
{
  v49 = *MEMORY[0x1E69E9840];
  WORD2(v45) = 0;
  LODWORD(v45) = 0;
  if ((byte_1ED4CAAE1 & 1) == 0)
  {
    started = figClusterSynchManager_startBonjourAdvertiser();
    if (!started)
    {
      v1 = *MEMORY[0x1E695E480];
      v2 = CM8021ASClockCreate();
      if (v2)
      {
        v30 = v2;
        OUTLINED_FUNCTION_376();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v36, v39);
        goto LABEL_17;
      }

      started = off_1ED4CAB28();
      if (!started)
      {
        figClusterSynchManager_toggleRequisiteAWDLTrafficRegistration(started, &v45);
        qword_1ED4CAAF8 = CFSetCreateMutable(v1, 2, MEMORY[0x1E695E9F8]);
        if (!qword_1ED4CAAF8 || (qword_1ED4CAB18 = CFDictionaryCreateMutable(v1, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
        {
          OUTLINED_FUNCTION_376();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v36, v39);
          v30 = v32;
          if (!v32)
          {
            return v30;
          }

LABEL_17:
          figClusterSynchManager_ensureStopped();
          return v30;
        }

        started = figClusterSynchManager_startBonjourBrowser();
        if (!started)
        {
          byte_1ED4CAAE1 = 1;
          if (dword_1EAF17140)
          {
            v10 = OUTLINED_FUNCTION_10_33(started, v3, v4, v5, v6, v7, v8, v9, v33, v36, v39, SBYTE2(v39), SBYTE3(v39), SHIDWORD(v39));
            v18 = OUTLINED_FUNCTION_14_27(v10, v11, v12, v13, v14, v15, v16, v17, v34, v37, v40, v42, v43, v44);
            if (OUTLINED_FUNCTION_77_0(v18))
            {
              LODWORD(v46) = 136315138;
              OUTLINED_FUNCTION_1_82();
              OUTLINED_FUNCTION_2_79(v19, v20, v21, v22, &dword_1962D5000, v23, v24, "<<<< FigClusterSynchronizationManager >>>> %s: Cluster manager started", v35, v38, v41, v45, v46, v47, v48);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_420(v25, v26, v27, v28, v29);
          }

          return 0;
        }
      }
    }

    v30 = started;
    goto LABEL_17;
  }

  return 0;
}

uint64_t figClusterSynchManager_getPeerMACAddress_in6(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  size = 0;
  v4 = 100;
  while (1)
  {
    *v19 = xmmword_196E772D0;
    v20 = 0x4000000000ALL;
    v5 = sysctl(v19, 6u, 0, &size, 0, 0);
    if (v5)
    {
      return v5;
    }

    if (!size)
    {
      return 4294954510;
    }

    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v6)
    {
      return 4294954510;
    }

    v7 = v6;
    v8 = sysctl(v19, 6u, v6, &size, 0, 0);
    if (!v8)
    {
      break;
    }

    v9 = v8;
    free(v7);
    if (!--v4)
    {
      return v9;
    }
  }

  if (size < 1)
  {
LABEL_21:
    v9 = 4294954513;
  }

  else
  {
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 92);
      v12 = (v11 & 3) != 0 ? (v11 | 3) + 1 : *(v10 + 92);
      v13 = *(v10 + 92) ? v12 : 4;
      v14 = v10 + v13 + 92;
      if (v14[1] == 18 && v14[6] == 6 && *(v14 + 1) && *(v10 + 54) == *(a1 + 8))
      {
        break;
      }

      v10 = (v10 + *v10);
      if (v10 >= (v7 + size))
      {
        goto LABEL_21;
      }
    }

    v9 = 0;
    v16 = &v14[v14[5]];
    v17 = *(v16 + 2);
    *(a2 + 4) = *(v16 + 6);
    *a2 = v17;
  }

  free(v7);
  return v9;
}

double figClusterSynchManager_stopAndClearBonjourAdvertiser()
{
  if (byte_1ED4CAAE2 == 1)
  {
    if (qword_1ED4CAB08)
    {
      DNSServiceRefDeallocate(qword_1ED4CAB08);
      qword_1ED4CAB08 = 0;
      byte_1ED4CAAE2 = 0;
      if (dword_1EAF17140)
      {
        v9 = OUTLINED_FUNCTION_4_64(v0, v1, v2, v3, v4, v5, v6, v7, v29, v32, v35, v38, SBYTE2(v38), SBYTE3(v38), SHIDWORD(v38));
        v17 = OUTLINED_FUNCTION_88_4(v9, v10, v11, v12, v13, v14, v15, v16, v30, v33, v36, v39, v41, v42, v43);
        if (OUTLINED_FUNCTION_77_0(v17))
        {
          LODWORD(v44) = 136315138;
          OUTLINED_FUNCTION_1_82();
          OUTLINED_FUNCTION_2_79(v18, v19, v20, v21, &dword_1962D5000, v22, v23, "<<<< FigClusterSynchronizationManager >>>> %s: Bonjour advertiser stopped", v31, v34, v37, v40, v44, v45, v46);
        }

        OUTLINED_FUNCTION_7();
        return OUTLINED_FUNCTION_420(v24, v25, v26, v27, v28);
      }
    }
  }

  return result;
}

double figClusterSynchManager_stopAndClearBonjourBrowser()
{
  if (byte_1ED4CAAE3 == 1)
  {
    if (qword_1ED4CAB10)
    {
      DNSServiceRefDeallocate(qword_1ED4CAB10);
      qword_1ED4CAB10 = 0;
      byte_1ED4CAAE3 = 0;
      if (dword_1EAF17140)
      {
        v9 = OUTLINED_FUNCTION_4_64(v0, v1, v2, v3, v4, v5, v6, v7, v29, v32, v35, v38, SBYTE2(v38), SBYTE3(v38), SHIDWORD(v38));
        v17 = OUTLINED_FUNCTION_88_4(v9, v10, v11, v12, v13, v14, v15, v16, v30, v33, v36, v39, v41, v42, v43);
        if (OUTLINED_FUNCTION_77_0(v17))
        {
          LODWORD(v44) = 136315138;
          OUTLINED_FUNCTION_1_82();
          OUTLINED_FUNCTION_2_79(v18, v19, v20, v21, &dword_1962D5000, v22, v23, "<<<< FigClusterSynchronizationManager >>>> %s: Bonjour browser stopped", v31, v34, v37, v40, v44, v45, v46);
        }

        OUTLINED_FUNCTION_7();
        return OUTLINED_FUNCTION_420(v24, v25, v26, v27, v28);
      }
    }
  }

  return result;
}

uint64_t figClusterSynchManager_startBonjourAdvertiser()
{
  v41 = *MEMORY[0x1E69E9840];
  sdRef = 0;
  bzero(name, 0x100uLL);
  if (byte_1ED4CAAE2)
  {
    return 0;
  }

  txtRecord = 0uLL;
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  __s[0] = 0;
  v0 = *MEMORY[0x1E695E480];
  v1 = CFUUIDCreateString(*MEMORY[0x1E695E480], qword_1ED4CAB30);
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_11_33();
    if (CFStringGetCString(v3, v4, v5, v6))
    {
      v7 = strlen(__s);
      updated = TXTRecordSetValue(&txtRecord, "did", v7, __s);
      if (updated)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_11_33();
      if (CFStringGetCString(v9, v10, v11, v12) && strlen(name) < 0x40)
      {
        updated = figClusterSynchManager_updateMyClusterID();
        if (!updated)
        {
          __s[0] = 0;
          v13 = CFUUIDCreateString(v0, qword_1ED4CAB20);
          if (v13)
          {
            v14 = v13;
            OUTLINED_FUNCTION_11_33();
            if (CFStringGetCString(v15, v16, v17, v18))
            {
              v19 = strlen(__s);
              v20 = TXTRecordSetValue(&txtRecord, "tsid", v19, __s);
              if (!v20)
              {
                v21 = if_nametoindex("awdl0");
                Length = TXTRecordGetLength(&txtRecord);
                BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
                v20 = DNSServiceRegister(&sdRef, 0x100000u, v21, name, "_ieee1588._udp", 0, 0, 0x3F01u, Length, BytesPtr, figClusterSynchManager_registerServiceCallBack, 0);
                if (!v20)
                {
                  v24 = DNSServiceSetDispatchQueue(sdRef, qword_1ED4CAAE8);
                  if (v24)
                  {
                    v26 = v24;
                    OUTLINED_FUNCTION_239();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", txtLena, v33, callBacka);
                  }

                  else
                  {
                    qword_1ED4CAB08 = sdRef;
                    sdRef = 0;
                    byte_1ED4CAAE2 = 1;
                    if (dword_1EAF17140)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      OUTLINED_FUNCTION_7();
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    v26 = 0;
                  }

                  goto LABEL_16;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_239();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", txtLen, v32, callBack);
            }

            v26 = v20;
LABEL_16:
            CFRelease(v2);
            v27 = v14;
LABEL_17:
            CFRelease(v27);
            goto LABEL_18;
          }

          goto LABEL_23;
        }

LABEL_24:
        v26 = updated;
        v27 = v2;
        goto LABEL_17;
      }
    }

LABEL_23:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_239();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", txtLen, v32, callBack);
  v26 = v29;
LABEL_18:
  TXTRecordDeallocate(&txtRecord);
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  return v26;
}

uint64_t figClusterSynchManager_startBonjourBrowser()
{
  v49 = *MEMORY[0x1E69E9840];
  sdRef = 0;
  if (byte_1ED4CAAE3)
  {
    return 0;
  }

  v1 = if_nametoindex("awdl0");
  v2 = DNSServiceBrowse(&sdRef, 0x100000u, v1, "_ieee1588._udp", 0, figClusterSynchManager_handleBrowserReply, 0);
  if (v2)
  {
    v26 = v2;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17138, v2, "<<<< FigClusterSynchronizationManager >>>>", 834, v0);
  }

  else
  {
    v3 = DNSServiceSetDispatchQueue(sdRef, qword_1ED4CAAE8);
    if (!v3)
    {
      qword_1ED4CAB10 = sdRef;
      sdRef = 0;
      byte_1ED4CAAE3 = 1;
      if (dword_1EAF17140)
      {
        v11 = OUTLINED_FUNCTION_10_33(v3, v4, v5, v6, v7, v8, v9, v10, v33, v36, v39, SBYTE2(v39), SBYTE3(v39), SHIDWORD(v39));
        v19 = OUTLINED_FUNCTION_14_27(v11, v12, v13, v14, v15, v16, v17, v18, v34, v37, v40, v42, v43, v44);
        if (OUTLINED_FUNCTION_77_0(v19))
        {
          LODWORD(v46) = 136315138;
          OUTLINED_FUNCTION_1_82();
          OUTLINED_FUNCTION_2_79(v20, v21, v22, v23, &dword_1962D5000, v24, v25, "<<<< FigClusterSynchronizationManager >>>> %s: Bonjour browser started", v35, v38, v41, sdRef, v46, v47, v48);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420(v27, v28, v29, v30, v31);
        v26 = 0;
        goto LABEL_9;
      }

      return 0;
    }

    v26 = v3;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17138, v3, "<<<< FigClusterSynchronizationManager >>>>", 837, v0);
  }

LABEL_9:
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  return v26;
}

double figClusterSynchManager_restartBonjour()
{
  figClusterSynchManager_stopAndClearBonjourAdvertiser();
  figClusterSynchManager_stopAndClearBonjourBrowser();
  v0 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CAAE8);
  qword_1ED4CAB38 = v0;
  if (v0)
  {
    dispatch_source_set_event_handler_f(v0, figClusterSynchManager_restartBonjourTimerFired);
    v2 = qword_1ED4CAB38;
    v3 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v2, v3, 0x1DCD6500uLL, 0xF4240uLL);
    dispatch_resume(qword_1ED4CAB38);
    OUTLINED_FUNCTION_376();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double figClusterSynchManager_restartBonjourTimerFired()
{
  if (figClusterSynchManager_startBonjourAdvertiser() || figClusterSynchManager_startBonjourBrowser())
  {
    OUTLINED_FUNCTION_376();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    dispatch_source_cancel(qword_1ED4CAB38);
    if (qword_1ED4CAB38)
    {
      dispatch_release(qword_1ED4CAB38);
      qword_1ED4CAB38 = 0;
    }
  }

  return result;
}

void figClusterSynchManager_handleBrowserReply(int a1, char a2, int a3, int a4, char *cStr, const char *a6, const char *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  sdRef = 0;
  if (a4 == -65563)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v27, v29);
    OUTLINED_FUNCTION_651();

    figClusterSynchManager_restartBonjour();
    return;
  }

  if (a4 || byte_1ED4CAAE3 != 1)
  {
LABEL_24:
    OUTLINED_FUNCTION_651();
    return;
  }

  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v12)
  {
    v13 = v12;
    v14 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v12);
    if (v14)
    {
      v15 = v14;
      if ((a2 & 2) != 0 || !dword_1EAF17140)
      {
        if ((a2 & 2) != 0 && !FigCFEqual() && !DNSServiceConstructFullName(fullName, cStr, a6, a7))
        {
          if (qword_1ED4CAB40 != -1)
          {
            dispatch_once_f(&qword_1ED4CAB40, &qword_1ED4CAB48, _FigClusterSynchronizationManagerBonjourQueryRegisterClass);
          }

          Instance = _CFRuntimeCreateInstance();
          if (Instance || (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v27, v29), !v24))
          {
            *(Instance + 16) = 0;
            v18 = if_nametoindex("awdl0");
            v19 = CFRetain(Instance);
            if (DNSServiceQueryRecord(&sdRef, 0x100000u, v18, fullName, 0x10u, 1u, figClusterSynchManager_txtInfoCallBack, v19))
            {
              CFRelease(Instance);
              OUTLINED_FUNCTION_239();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }

            else if (DNSServiceSetDispatchQueue(sdRef, qword_1ED4CAAE8))
            {
              OUTLINED_FUNCTION_239();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }

            else
            {
              *(Instance + 48) = sdRef;
              sdRef = 0;
            }

            CFRelease(Instance);
          }

          else
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v28, v30);
          }
        }
      }

      else
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRelease(v13);
      CFRelease(v15);
      if (sdRef)
      {
        DNSServiceRefDeallocate(sdRef);
      }

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v27, v29);
    OUTLINED_FUNCTION_651();

    CFRelease(v22);
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_651();

    FigSignalErrorAtGM(v20);
  }
}

double figClusterSynchManager_txtInfoCallBack(int a1, int a2, int a3, int a4, const char *a5, int a6, int a7, uint16_t txtLen, void *txtRecord, uint64_t a10, void *cf)
{
  sdRef[16] = *MEMORY[0x1E69E9840];
  valueLen = 0;
  if (!a4)
  {
    if (!cf)
    {
      return result;
    }

    if (cf[3] || cf[5])
    {
      goto LABEL_35;
    }

    if (byte_1ED4CAAE3 != 1 || qword_1ED4CAB20 == 0)
    {
      goto LABEL_35;
    }

    ValuePtr = TXTRecordGetValuePtr(txtLen, txtRecord, "did", &valueLen);
    if (ValuePtr)
    {
      valueLen = strnlen(ValuePtr, valueLen);
      OUTLINED_FUNCTION_11_33();
      v19 = CFStringCreateWithBytes(v15, v16, v17, v18, 0);
      if (v19)
      {
        v20 = v19;
        v21 = *MEMORY[0x1E695E480];
        v22 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v19);
        if (!v22)
        {
          OUTLINED_FUNCTION_111();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v49, v50);
          v44 = 0;
          v43 = 0;
          goto LABEL_27;
        }

        v23 = v22;
        if (!FigCFEqual())
        {
          v24 = *(cf + 16);
          if (*(cf + 16) && dword_1EAF17140)
          {
            v51 = a5;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v26 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            if (OUTLINED_FUNCTION_77_0(v26))
            {
              v53 = 136315394;
              v54 = "figClusterSynchManager_txtInfoCallBack";
              v55 = 2048;
              v56 = cf;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v27, v28, v29, v30, v31, os_log_and_send_and_compose_flags_and_os_log_type, 0, v32, &v53, 22);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_420(v33, v34, v35, v36, v37);
            v24 = *(cf + 16);
            a5 = v51;
          }

          if (!v24)
          {
            v38 = TXTRecordGetValuePtr(txtLen, txtRecord, "tsid", &valueLen);
            if (v38)
            {
              valueLen = strnlen(v38, valueLen);
              OUTLINED_FUNCTION_11_33();
              v43 = CFStringCreateWithBytes(v39, v40, v41, v42, 0);
              if (v43)
              {
                v44 = CFUUIDCreateFromString(v21, v43);
                if (v44)
                {
                  if (FigCFEqual())
                  {
                    cf[3] = v23;
                    sdRef[0] = 0;
                    if (*a5)
                    {
                      v45 = if_nametoindex("awdl0");
                      v46 = CFRetain(cf);
                      if (DNSServiceQueryRecord(sdRef, 0x100000u, v45, a5, 0x21u, 1u, figClusterSynchManager_srvInfoCallBack, v46))
                      {
                        CFRelease(cf);
                        OUTLINED_FUNCTION_111();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                        goto LABEL_48;
                      }

                      if (!DNSServiceSetDispatchQueue(sdRef[0], qword_1ED4CAAE8))
                      {
                        cf[5] = sdRef[0];
LABEL_27:
                        v23 = v20;
LABEL_31:
                        CFRelease(v23);
                        if (v43)
                        {
                          CFRelease(v43);
                        }

                        if (v44)
                        {
                          CFRelease(v44);
                        }

                        goto LABEL_35;
                      }
                    }

                    OUTLINED_FUNCTION_111();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_48:
                    if (sdRef[0])
                    {
                      DNSServiceRefDeallocate(sdRef[0]);
                    }

                    goto LABEL_27;
                  }

                  if (CFDictionaryGetValueIfPresent(qword_1ED4CAB18, v23, 0))
                  {
                    figClusterSynchManager_removePeerEndpoint(v23);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_111();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v49, v50);
                }
              }

              else
              {
                OUTLINED_FUNCTION_111();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v49, v50);
                v44 = 0;
              }

LABEL_30:
              CFRelease(v20);
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_111();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v49, v50);
          }
        }

        v44 = 0;
        v43 = 0;
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_35:
    CFRelease(cf);
    return result;
  }

  OUTLINED_FUNCTION_111();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v49, v50);
  if (cf)
  {
    goto LABEL_35;
  }

  return result;
}

void figClusterSynchManager_removePeerEndpoint(void *key)
{
  v5 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(qword_1ED4CAB18, key);
  if (Value)
  {
    v3 = Value;
    CFDataGetBytePtr(Value);
    if (dword_1EAF17140)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CM8021ASClockRemoveIPv6Port();
    CFSetRemoveValue(qword_1ED4CAAF8, v3);
    CFDictionaryRemoveValue(qword_1ED4CAB18, key);
  }
}

double figClusterSynchManager_RemovePort_cold_2(uint64_t a1, unsigned __int8 *a2)
{
  PeerMACAddress_in6 = figClusterSynchManager_getPeerMACAddress_in6(a1, a2);
  if (PeerMACAddress_in6 || figClusterSynchManager_toggleRequisiteAWDLTrafficRegistration(PeerMACAddress_in6, a2))
  {
    OUTLINED_FUNCTION_376();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void figClusterSynchManager_updateMyClusterID_cold_2()
{
  if (qword_1ED4CAB20)
  {
    figClusterSynchManager_ensureStopped();

    sleep(2u);
  }
}

double figClusterSynchManager_srvInfoCallBack_cold_2(const void *a1)
{
  CFRelease(a1);
  OUTLINED_FUNCTION_376();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
}

void FigSCCFormatWriterCreateWithByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSCCFormatWriterCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_AddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_AddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_AddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_AddTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_AddTrack_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_CopyTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_SetTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_SetTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_SetTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_AddSampleBufferToTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_AddSampleBufferToTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_AddSampleBufferToTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_Flush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_WriteHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_BeginSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriter_EndSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriterEachSampleCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriterEachSampleCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL sccFormatWriterEachSampleCallback_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void sccFormatWriterEachSampleCallback_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriterEachSampleCallback_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriterEachSampleCallback_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriterEachSampleCallback_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatWriterEachSampleCallback_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigMetricDownloadSummaryEventDeserializeAndCopy(void *a1, CFTypeRef *a2)
{
  v16 = 0;
  v17 = 0;
  cf = 0;
  v15 = 0;
  if (a1)
  {
    if (a2)
    {
      int64 = xpc_dictionary_get_int64(a1, "RecoverableErrorCount");
      v6 = xpc_dictionary_get_int64(a1, "MediaResourceRequestCount");
      v7 = xpc_dictionary_get_int64(a1, "BytesDownloadedCount");
      v8 = xpc_dictionary_get_double(a1, "DownloadDuration");
      ArrayOfAlternatesFromXPCObject = FigXPCMessageCopyCFError();
      if (!ArrayOfAlternatesFromXPCObject)
      {
        ArrayOfAlternatesFromXPCObject = FigXPCMessageCopyCFDate();
        if (!ArrayOfAlternatesFromXPCObject)
        {
          ArrayOfAlternatesFromXPCObject = FigXPCMessageCopyCFString();
          if (!ArrayOfAlternatesFromXPCObject)
          {
            value = xpc_dictionary_get_value(a1, "VariantsArray");
            ArrayOfAlternatesFromXPCObject = FigAlternateCreateArrayOfAlternatesFromXPCObject(value, &cf);
            if (!ArrayOfAlternatesFromXPCObject)
            {
              AllocatorForMedia = FigGetAllocatorForMedia();
              ArrayOfAlternatesFromXPCObject = FigMetricDownloadSummaryEventCreate(AllocatorForMedia, v17, v16, v15, int64, v6, v7, cf, v8, a2);
            }
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17158, 4294947836, "metricevent", 190, v2);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17158, 4294947836, "metricevent", 189, v2);
  }

  v12 = ArrayOfAlternatesFromXPCObject;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v12;
}

uint64_t meds_serialize(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17158, 4294947835, "metricevent", 139, v2);
LABEL_45:
    v24 = v8;
    goto LABEL_38;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17158, 4294947835, "metricevent", 140, v2);
    goto LABEL_45;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v5)
  {
    v6 = v5(a1);
  }

  else
  {
    v6 = -12782;
  }

  xpc_dictionary_set_int64(a2, "EventID", v6);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v7(&v26, a1);
  }

  else
  {
    v26 = *MEMORY[0x1E6960C70];
    v27 = *(MEMORY[0x1E6960C70] + 16);
  }

  v8 = FigXPCMessageSetCMTime();
  if (v8)
  {
    goto LABEL_45;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v9)
  {
    v9(a1);
  }

  v8 = FigXPCMessageSetCFDate();
  if (v8)
  {
    goto LABEL_45;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v10)
  {
    v11 = v10(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = FigXPCMessageSetCFString();
  if (v12)
  {
    goto LABEL_41;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v13)
  {
    v14 = v13(a1);
  }

  else
  {
    v14 = 0;
  }

  xpc_dictionary_set_int64(a2, "RecoverableErrorCount", v14);
  v15 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (v15)
  {
    v16 = v15(a1);
  }

  else
  {
    v16 = 0;
  }

  xpc_dictionary_set_int64(a2, "MediaResourceRequestCount", v16);
  v17 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (v17)
  {
    v18 = v17(a1);
  }

  else
  {
    v18 = 0;
  }

  xpc_dictionary_set_int64(a2, "BytesDownloadedCount", v18);
  v19 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  v20.n128_u64[0] = 0;
  if (v19)
  {
    v20.n128_f64[0] = v19(a1, v20);
  }

  xpc_dictionary_set_double(a2, "DownloadDuration", v20.n128_f64[0]);
  v21 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (v21)
  {
    v21(a1);
  }

  v12 = FigXPCMessageSetCFError();
  if (v12)
  {
LABEL_41:
    v24 = v12;
    if (v11)
    {
LABEL_37:
      CFRelease(v11);
    }
  }

  else
  {
    v22 = *(*(CMBaseObjectGetVTable() + 24) + 48);
    if (v22)
    {
      v23 = v22(a1);
    }

    else
    {
      v23 = 0;
    }

    v24 = FigAlternateCopyArrayOfAlternatesAsXPCObject(v23, &value);
    if (!v24)
    {
      xpc_dictionary_set_value(a2, "VariantsArray", value);
    }

    if (v11)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  if (value)
  {
    CFRelease(value);
  }

  return v24;
}

void DolbyGetSampleInfo(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v132 = *MEMORY[0x1E69E9840];
  returnedPointerOut = 0;
  if (CMBlockBufferAccessDataBytes(theBuffer, 0, 0xAuLL, temporaryBlock, &returnedPointerOut))
  {
    return;
  }

  v4 = returnedPointerOut;
  v5 = returnedPointerOut[5] - 136;
  if (v5 >= 0xFFFFFFD0)
  {
    v6 = 1700998451;
  }

  else
  {
    v6 = 1633889587;
  }

  *a1 = v6;
  v7 = v4[4] >> 6;
  if (v7 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = DolbyAudioSampleFrequencies[v7];
  }

  *(a1 + 4) = v8;
  if (v5 <= 0xFFFFFFCF)
  {
    v9 = v4[4] & 0x3F;
    if (v9 <= 0x25)
    {
      v10 = 1000 * DolbyAudioBitRates[4 * v9];
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 8) = v10;
    v17 = v4[6];
    v18 = v17 >> 5;
    *(a1 + 15) = 0;
    if ((((v17 >> 5) != 1) & (v17 >> 5)) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = 4;
    }

    if ((v17 & 0x80u) == 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 - 2;
    }

    if (v18 == 2)
    {
      v20 -= 2;
    }

    if (v20 < 0)
    {
      v21 = v4[7];
      LOBYTE(v20) = v20 + 8;
    }

    else
    {
      v21 = v17;
    }

    v22 = (v21 >> v20) & 1;
    *(a1 + 15) = v22;
    *(a1 + 14) = v17 >> 5;
    *(a1 + 16) = 1;
    *(a1 + 12) = acmodToChannelMap[v18] | v22;
    *(a1 + 18) = 1;
    return;
  }

  v129 = 0u;
  v130 = 0u;
  v128 = 0u;
  v127 = 0;
  HIDWORD(v126) = 0;
  HIDWORD(v123) = 0;
  v121 = 0;
  v122 = 0;
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v12 = 0;
  do
  {
    if (v12 >= DataLength)
    {
      goto LABEL_115;
    }

    *&v128 = theBuffer;
    *&v129 = v12;
    if (CMBlockBufferGetDataPointer(theBuffer, v12, &v129 + 1, 0, &v128 + 1))
    {
      v13 = *(&v130 + 1) + 16;
    }

    else
    {
      *&v130 = 0;
      v13 = 16;
    }

    *(&v130 + 1) = v13;
    BitStreamFetch(&v128, 2, &v127 + 1);
    if (v14)
    {
      return;
    }

    BitStreamFetch(&v128, 3, &v127);
    if (v15)
    {
      return;
    }

    BitStreamFetch(&v128, 11, &v126 + 1);
    if (v16)
    {
      return;
    }

    v12 += (2 * HIDWORD(v126) + 2);
  }

  while (v127);
  LODWORD(v126) = 0;
  BitStreamFetch(&v128, 2, &v126);
  if (!v23)
  {
    HIDWORD(v125) = 0;
    BitStreamFetch(&v128, 2, &v125 + 1);
    if (!v24)
    {
      LODWORD(v125) = 0;
      BitStreamFetch(&v128, 3, &v125);
      if (!v25)
      {
        HIDWORD(v124) = 0;
        BitStreamFetch(&v128, 1, &v124 + 1);
        if (!v26)
        {
          LODWORD(v124) = 0;
          BitStreamFetch(&v128, 5, &v124);
          if (!v27 && (v124 - 17) >= 0xFFFFFFFA)
          {
            OUTLINED_FUNCTION_1_83();
            OUTLINED_FUNCTION_0_86(v28, v29, v30, v31, v32, v33, v34, v35, v110, returnedPointerOut, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
            if (!v36)
            {
              if (v116)
              {
                OUTLINED_FUNCTION_3_61();
              }

              v37 = v125;
              if (!v125)
              {
                OUTLINED_FUNCTION_1_83();
                OUTLINED_FUNCTION_0_86(v38, v39, v40, v41, v42, v43, v44, v45, v111, returnedPointerOut, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
                if (v46)
                {
                  return;
                }

                if (v116)
                {
                  OUTLINED_FUNCTION_3_61();
                }
              }

              LODWORD(v123) = 0;
              BitStreamFetch(&v128, 1, &v123);
              if (!v47)
              {
                if (!v123)
                {
                  goto LABEL_95;
                }

                if (v37 >= 3)
                {
                  v55 = *(&v130 + 1);
                  *(&v130 + 1) += 2;
                  if (v37)
                  {
                    *(&v130 + 1) = v55 + 8;
                  }
                }

                if ((v37 & 4) != 0)
                {
                  OUTLINED_FUNCTION_2_80();
                }

                if (HIDWORD(v124))
                {
                  OUTLINED_FUNCTION_0_86(v47, v48, v49, v50, v51, v52, v53, v54, v111, returnedPointerOut, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
                  if (v47)
                  {
                    return;
                  }

                  if (v116)
                  {
                    OUTLINED_FUNCTION_1_83();
                  }
                }

                OUTLINED_FUNCTION_0_86(v47, v48, v49, v50, v51, v52, v53, v54, v111, returnedPointerOut, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
                if (!v56)
                {
                  if (v116)
                  {
                    OUTLINED_FUNCTION_2_80();
                  }

                  if (!v37)
                  {
                    OUTLINED_FUNCTION_0_86(v56, v57, v58, v59, v60, v61, v62, v63, v112, returnedPointerOut, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
                    if (v56)
                    {
                      return;
                    }

                    if (v116)
                    {
                      OUTLINED_FUNCTION_2_80();
                    }
                  }

                  OUTLINED_FUNCTION_0_86(v56, v57, v58, v59, v60, v61, v62, v63, v112, returnedPointerOut, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
                  if (!v64)
                  {
                    if (v116)
                    {
                      OUTLINED_FUNCTION_2_80();
                    }

                    BitStreamFetch(&v128, 2, &v122 + 1);
                    if (!v65)
                    {
                      switch(HIDWORD(v122))
                      {
                        case 1:
                          v66 = 5;
                          break;
                        case 3:
                          BitStreamFetch(&v128, 5, &v121 + 1);
                          if (v67)
                          {
                            return;
                          }

                          v66 = (8 * HIDWORD(v121) + 16);
                          break;
                        case 2:
                          v66 = 12;
                          break;
                        default:
LABEL_77:
                          if (v37 <= 1)
                          {
                            BitStreamFetch(&v128, 1, &v122);
                            if (v68)
                            {
                              return;
                            }

                            if (v122)
                            {
                              *(&v130 + 1) += 14;
                            }

                            if (!v37)
                            {
                              BitStreamFetch(&v128, 1, &v121);
                              if (v69)
                              {
                                return;
                              }

                              if (v121)
                              {
                                *(&v130 + 1) += 14;
                              }
                            }
                          }

                          BitStreamFetch(&v128, 1, &v120 + 1);
                          if (!v70)
                          {
                            if (HIDWORD(v120))
                            {
                              if (HIDWORD(v125))
                              {
                                if (DDPNumberOfAudioBlocksPerSyncframe[HIDWORD(v125)] <= 1u)
                                {
                                  v78 = 1;
                                }

                                else
                                {
                                  v78 = DDPNumberOfAudioBlocksPerSyncframe[HIDWORD(v125)];
                                }

                                while (1)
                                {
                                  OUTLINED_FUNCTION_0_86(v70, v71, v72, v73, v74, v75, v76, v77, v113, returnedPointerOut, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
                                  if (v70)
                                  {
                                    return;
                                  }

                                  if (v116)
                                  {
                                    OUTLINED_FUNCTION_1_83();
                                  }

                                  if (!--v78)
                                  {
                                    goto LABEL_95;
                                  }
                                }
                              }

                              OUTLINED_FUNCTION_1_83();
                            }

LABEL_95:
                            BitStreamFetch(&v128, 1, &v120);
                            if (v79)
                            {
                              return;
                            }

                            if (!v120)
                            {
LABEL_111:
                              if (HIDWORD(v125) != 3)
                              {
                                ++*(&v130 + 1);
                              }

                              BitStreamFetch(&v128, 1, &v118 + 1);
                              if (v84)
                              {
                                return;
                              }

                              if (HIDWORD(v118) != 1)
                              {
                                goto LABEL_115;
                              }

                              BitStreamFetch(&v128, 6, &v118);
                              if (v106)
                              {
                                return;
                              }

                              if (v118 != 1)
                              {
                                goto LABEL_115;
                              }

                              BitStreamFetch(&v128, 7, &v117 + 1);
                              if (v107)
                              {
                                return;
                              }

                              if (HIDWORD(v117))
                              {
                                goto LABEL_115;
                              }

                              BitStreamFetch(&v128, 1, &v117);
                              if (v108)
                              {
                                return;
                              }

                              if (v117 == 1)
                              {
                                BitStreamFetch(&v128, 8, &v123 + 1);
                                if (v109)
                                {
                                  return;
                                }

                                v85 = BYTE4(v123);
                                if ((HIDWORD(v123) - 17) < 0xFFFFFFF0)
                                {
                                  return;
                                }
                              }

                              else
                              {
LABEL_115:
                                v85 = 0;
                              }

                              *(a1 + 17) = v85;
                              v86 = CMBlockBufferGetDataLength(theBuffer);
                              LODWORD(v87) = *(a1 + 4);
                              *(a1 + 8) = (v86 * 8.0 * (v87 / 1536.0));
                              *(a1 + 16) = 1;
                              if (!v86)
                              {
LABEL_145:
                                v105 = acmodToChannelMap[*(a1 + 14)];
                                *(a1 + 12) = v105;
                                if (*(a1 + 15))
                                {
                                  *(a1 + 12) = v105 | 1;
                                }

                                return;
                              }

                              v88 = v86;
                              v89 = 0;
                              v90 = 0;
                              v91 = 0;
                              v92 = a1 + 19;
                              while (1)
                              {
                                LOWORD(v128) = 0;
                                if (CMBlockBufferAccessDataBytes(theBuffer, v91, 0xAuLL, temporaryBlock, &returnedPointerOut))
                                {
                                  return;
                                }

                                v93 = returnedPointerOut;
                                v94 = returnedPointerOut[2];
                                v95 = returnedPointerOut[4];
                                v96 = (v95 >> 1) & 7;
                                v97 = v95 & 1;
                                if ((v94 & 0x40) != 0)
                                {
                                  if ((v94 & 0xC0) == 0x40)
                                  {
                                    v99 = *(v92 + v90);
                                    if (v99 <= 7)
                                    {
                                      *(v92 + v90) = v99 + 1;
                                      v100 = ddplusGetChanMapForDependentStream(v93, &v128) == 0;
                                      goto LABEL_129;
                                    }
                                  }
                                }

                                else
                                {
                                  v98 = *(a1 + 18);
                                  if (v98 == 8)
                                  {
                                    goto LABEL_144;
                                  }

                                  v90 = (v94 >> 3) & 7;
                                  *(a1 + 18) = v98 + 1;
                                  if (v89)
                                  {
                                    if (!v90)
                                    {
                                      goto LABEL_144;
                                    }
                                  }

                                  else
                                  {
                                    *(a1 + 14) = v96;
                                    *(a1 + 15) = v97;
                                    v89 = 1;
                                  }
                                }

                                v100 = 1;
LABEL_129:
                                if (*(a1 + 16))
                                {
                                  if (v100)
                                  {
                                    if (v96 == *(a1 + 14))
                                    {
                                      goto LABEL_143;
                                    }

                                    v101 = *(a1 + 15);
                                    if (v97 == v101)
                                    {
                                      goto LABEL_143;
                                    }

                                    v102 = acmodToChannelMap[*(a1 + 14)];
                                    if ((v102 | (v101 != 0)) == (acmodToChannelMap[v96] | v97 | v102 | (v101 != 0)))
                                    {
                                      goto LABEL_143;
                                    }
                                  }

                                  else
                                  {
                                    LOWORD(v102) = acmodToChannelMap[*(a1 + 14)];
                                    v101 = *(a1 + 15);
                                  }

                                  *(a1 + 16) = 0;
                                  *(a1 + 12) = v102;
                                  if (v101)
                                  {
                                    *(a1 + 12) = v102 | 1;
                                  }
                                }

                                if (!v100)
                                {
                                  v104 = *(a1 + 12) | v128;
                                  goto LABEL_142;
                                }

                                v103 = *(a1 + 12) | acmodToChannelMap[v96];
                                *(a1 + 12) = v103;
                                if (v97)
                                {
                                  v104 = v103 | 1;
LABEL_142:
                                  *(a1 + 12) = v104;
                                }

LABEL_143:
                                v91 += DolbyGetFrameSize(returnedPointerOut);
                                if (v91 >= v88)
                                {
LABEL_144:
                                  if (!*(a1 + 16))
                                  {
                                    return;
                                  }

                                  goto LABEL_145;
                                }
                              }
                            }

                            v80 = *(&v130 + 1);
                            *(&v130 + 1) += 5;
                            if (v37 == 2)
                            {
                              v81 = 9;
                            }

                            else
                            {
                              if (v37 < 6)
                              {
LABEL_102:
                                BitStreamFetch(&v128, 1, &v119 + 1);
                                if (v82)
                                {
                                  return;
                                }

                                if (HIDWORD(v119))
                                {
                                  OUTLINED_FUNCTION_3_61();
                                }

                                if (!v37)
                                {
                                  BitStreamFetch(&v128, 1, &v119);
                                  if (v83)
                                  {
                                    return;
                                  }

                                  if (v119)
                                  {
                                    OUTLINED_FUNCTION_3_61();
                                  }
                                }

                                if (v126 <= 2)
                                {
                                  ++*(&v130 + 1);
                                }

                                goto LABEL_111;
                              }

                              v81 = 7;
                            }

                            *(&v130 + 1) = v81 + v80;
                            goto LABEL_102;
                          }

                          return;
                      }

                      *(&v130 + 1) += v66;
                      goto LABEL_77;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void BitStreamFetch(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  *a3 = 0;
  if (a2 >= 1)
  {
    v19 = v5;
    v20 = v4;
    v21 = v3;
    v7 = a2;
    v9 = *(a1 + 32);
    for (i = *(a1 + 40); ; i = 8)
    {
      v9 += i >> 3;
      *(a1 + 32) = v9;
      *(a1 + 40) = i & 7;
      if (v9 >= *(a1 + 24))
      {
        v11 = *a1;
        if (*a1)
        {
          v12 = *(a1 + 16) + v9;
          *(a1 + 16) = v12;
          if (CMBlockBufferGetDataPointer(v11, v12, (a1 + 24), 0, (a1 + 8)))
          {
            return;
          }

          v9 = 0;
          *(a1 + 32) = 0;
        }

        else
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
          if (v13)
          {
            return;
          }

          v9 = *(a1 + 32);
        }
      }

      v14 = *(a1 + 40);
      v15 = 8 - v14;
      v16 = *(*(a1 + 8) + v9);
      v17 = v7 - (8 - v14);
      if (v7 <= 8 - v14)
      {
        break;
      }

      *a3 = (*a3 << v15) | bitMask[v15] & v16;
      *(a1 + 40) = 8;
      v7 = v17;
      if (v17 <= 0)
      {
        return;
      }
    }

    v18 = v16 >> (v15 - v7);
    if (v15 == v7)
    {
      LOBYTE(v18) = v16;
    }

    *a3 = (*a3 << v7) | bitMask[v7] & v18;
    *(a1 + 40) = v14 + v7;
  }
}

void DolbyCreateMagicCookie_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void DolbyCreateMagicCookie_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigCSSParseColor(const __CFString *a1, float *a2, float *a3, float *a4, float *a5)
{
  bzero(buffer, 0xB8uLL);
  Length = CFStringGetLength(a1);
  v251 = 0;
  v252 = 0;
  v249 = 0;
  v250 = 0;
  if (!a2 || !a3 || !a4 || !a5)
  {
    OUTLINED_FUNCTION_0_23();
    goto LABEL_34;
  }

  v14 = Length;
  v254 = a1;
  v257 = 0;
  v258 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v255 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v259 = 0;
  v260 = 0;
  v256 = CStringPtr;
  figCSSParseCharacter(35, buffer, 0, v14, &v252);
  if (!v17)
  {
    figCSSParseHexDigits(buffer, v252, v14, &v252, &v251 + 1);
    if (v18)
    {
      goto LABEL_32;
    }

    v26 = OUTLINED_FUNCTION_0_87(v18, v19, v20, v21, v22, v23, v24, v25, v217, v232, *&v247, v248, v249, v250, v251, v252, buffer[0]);
    figCSSParseHexDigits(v26, v27, v14, v28, &v251);
    if (v18)
    {
      goto LABEL_32;
    }

    v36 = OUTLINED_FUNCTION_0_87(v18, v29, v30, v31, v32, v33, v34, v35, v218, v233, *&v247, v248, v249, v250, v251, v252, buffer[0]);
    figCSSParseHexDigits(v36, v37, v14, v38, &v250 + 1);
    if (v18)
    {
      goto LABEL_32;
    }

    v46 = OUTLINED_FUNCTION_0_87(v18, v39, v40, v41, v42, v43, v44, v45, v219, v234, *&v247, v248, v249, v250, v251, v252, buffer[0]);
    figCSSParseHexDigits(v46, v47, v14, v48, &v250);
    if (v49)
    {
      LODWORD(v250) = 255;
    }

    OUTLINED_FUNCTION_4_65();
    v50 = v6;
    goto LABEL_28;
  }

  figCSSParseString("rgb", buffer, v252, v14, &v252);
  if (v51)
  {
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (CStringPtrAndBufferToFree)
    {
      v53 = *MEMORY[0x1E695E480];
      v54 = CFStringCreateWithCString(*MEMORY[0x1E695E480], CStringPtrAndBufferToFree, 0x8000100u);
      v55 = &unk_1E7487564;
      v56 = 149;
      while (1)
      {
        v57 = CFStringCreateWithCString(v53, *(v55 - 5), 0x8000100u);
        v58 = CFStringCompare(v57, v54, 1uLL);
        if (v58 == kCFCompareEqualTo)
        {
          break;
        }

        if (v57)
        {
          CFRelease(v57);
        }

        v55 += 14;
        if (!--v56)
        {
          v57 = 0;
          OUTLINED_FUNCTION_4_65();
          v50 = v6;
          goto LABEL_23;
        }
      }

      v6 = *(v55 - 3);
      v7 = *(v55 - 2);
      v5 = *(v55 - 1);
      v50 = *v55;
      v59 = *(v55 + 1);
      *&v251 = v55[2];
      HIDWORD(v251) = v59;
      v60 = *(v55 + 3);
      *&v250 = v55[4];
      HIDWORD(v250) = v60;
LABEL_23:
      if (v54)
      {
        CFRelease(v54);
      }

      if (v57)
      {
        CFRelease(v57);
      }

      if (v58 == kCFCompareEqualTo)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_33;
  }

  figCSSParseString("a(", buffer, v252, v14, &v252);
  v72 = v64;
  if (v64)
  {
    OUTLINED_FUNCTION_1_84();
    figCSSParseCharacter(40, v214, v215, v14, v216);
    if (v64)
    {
LABEL_33:
      OUTLINED_FUNCTION_6_53();
LABEL_34:
      FigSignalErrorAtGM(v63);
      goto LABEL_32;
    }
  }

  v73 = OUTLINED_FUNCTION_0_87(v64, v65, v66, v67, v68, v69, v70, v71, v217, v232, *&v247, v248, v249, v250, v251, v252, buffer[0]);
  figCSSParseLWSP(v73, v74, v14, v75);
  v84 = OUTLINED_FUNCTION_0_87(v76, v77, v78, v79, v80, v81, v82, v83, v220, v235, *&v247, v248, v249, v250, v251, v252, buffer[0]);
  figCSSParseOneOrMoreDigits(v84, v85, v14, v86, &v251 + 1);
  if (v18)
  {
    goto LABEL_32;
  }

  v94 = OUTLINED_FUNCTION_0_87(v18, v87, v88, v89, v90, v91, v92, v93, v221, v236, *&v247, v248, v249, v250, v251, v252, buffer[0]);
  figCSSParseLWSP(v94, v95, v14, v96);
  OUTLINED_FUNCTION_1_84();
  figCSSParseCharacter(44, v97, v98, v14, v99);
  if (v18)
  {
    goto LABEL_32;
  }

  v107 = OUTLINED_FUNCTION_0_87(v18, v100, v101, v102, v103, v104, v105, v106, v222, v237, *&v247, v248, v249, v250, v251, v252, buffer[0]);
  figCSSParseLWSP(v107, v108, v14, v109);
  v118 = OUTLINED_FUNCTION_0_87(v110, v111, v112, v113, v114, v115, v116, v117, v223, v238, *&v247, v248, v249, v250, v251, v252, buffer[0]);
  figCSSParseOneOrMoreDigits(v118, v119, v14, v120, &v251);
  if (v18)
  {
    goto LABEL_32;
  }

  v128 = OUTLINED_FUNCTION_0_87(v18, v121, v122, v123, v124, v125, v126, v127, v224, v239, *&v247, v248, v249, v250, v251, v252, buffer[0]);
  figCSSParseLWSP(v128, v129, v14, v130);
  OUTLINED_FUNCTION_1_84();
  figCSSParseCharacter(44, v131, v132, v14, v133);
  if (v18)
  {
    goto LABEL_32;
  }

  v141 = OUTLINED_FUNCTION_0_87(v18, v134, v135, v136, v137, v138, v139, v140, v225, v240, *&v247, v248, v249, v250, v251, v252, buffer[0]);
  figCSSParseLWSP(v141, v142, v14, v143);
  v152 = OUTLINED_FUNCTION_0_87(v144, v145, v146, v147, v148, v149, v150, v151, v226, v241, *&v247, v248, v249, v250, v251, v252, buffer[0]);
  figCSSParseOneOrMoreDigits(v152, v153, v14, v154, &v250 + 1);
  if (v18)
  {
    goto LABEL_32;
  }

  v162 = OUTLINED_FUNCTION_0_87(v18, v155, v156, v157, v158, v159, v160, v161, v227, v242, *&v247, v248, v249, v250, v251, v252, buffer[0]);
  figCSSParseLWSP(v162, v163, v14, v164);
  v50 = 1.0;
  if (!v72)
  {
    HIDWORD(v248) = 0;
    v247 = 0.0;
    OUTLINED_FUNCTION_1_84();
    figCSSParseCharacter(44, v165, v166, v14, v167);
    if (v18)
    {
      goto LABEL_32;
    }

    v175 = OUTLINED_FUNCTION_0_87(v18, v168, v169, v170, v171, v172, v173, v174, v228, v243, *&v247, v248, v249, v250, v251, v252, buffer[0]);
    figCSSParseLWSP(v175, v176, v14, v177);
    v186 = OUTLINED_FUNCTION_0_87(v178, v179, v180, v181, v182, v183, v184, v185, v229, v244, *&v247, v248, v249, v250, v251, v252, buffer[0]);
    figCSSParseOneOrMoreDigits(v186, v187, v14, v188, &v248 + 1);
    if (v18)
    {
      goto LABEL_32;
    }

    v196 = OUTLINED_FUNCTION_0_87(v18, v189, v190, v191, v192, v193, v194, v195, v230, v245, *&v247, v248, v249, v250, v251, v252, buffer[0]);
    figCSSParseFraction(v196, v197, v14, v198, &v247);
    v207 = OUTLINED_FUNCTION_0_87(v199, v200, v201, v202, v203, v204, v205, v206, v231, v246, *&v247, v248, v249, v250, v251, v252, buffer[0]);
    figCSSParseLWSP(v207, v208, v14, v209);
    LODWORD(v210) = HIDWORD(v248);
    v50 = v247 + v210;
  }

  OUTLINED_FUNCTION_1_84();
  figCSSParseCharacter(41, v211, v212, v14, v213);
  if (v18)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_65();
LABEL_28:
  v18 = figCSSCopyColorComponentWithRangeCheck(v6, HIDWORD(v251), a2);
  if (!v18)
  {
    v18 = figCSSCopyColorComponentWithRangeCheck(v7, v251, a3);
    if (!v18)
    {
      v18 = figCSSCopyColorComponentWithRangeCheck(v5, HIDWORD(v250), a4);
      if (!v18)
      {
        v18 = figCSSCopyColorComponentWithRangeCheck(v50, v250, a5);
      }
    }
  }

LABEL_32:
  v61 = v18;
  free(v249);
  return v61;
}

double figCSSParseCharacter(int a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    if (a4 > a3)
    {
      if (a3 < 0 || a2[20] <= a3)
      {
        v10 = 0;
      }

      else
      {
        v9 = a2[17];
        if (v9)
        {
          v10 = *(v9 + 2 * a2[19] + 2 * a3);
        }

        else
        {
          v11 = a2[18];
          if (v11)
          {
            v10 = *(v11 + a2[19] + a3);
          }

          else
          {
            if (a2[22] <= a3 || (v12 = a2[21], v12 > a3))
            {
              OUTLINED_FUNCTION_3_62();
              OUTLINED_FUNCTION_5_56(v13);
              v12 = a2[21];
            }

            v10 = *(a2 + a3 - v12);
          }
        }
      }

      if (a1 == v10)
      {
        *a5 = a3 + 1;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM(v15);
  }

  return result;
}

double figCSSParseHexDigits(UniChar *buffer, int64_t a2, uint64_t a3, int64_t *a4, unsigned int *a5)
{
  if (a4 && a5)
  {
    if (a3 - a2 >= 2)
    {
      v8 = 0;
      v9 = -a2;
      v10 = a2 + 64;
      v11 = 1;
      v12 = a2;
      while (1)
      {
        v13 = v11;
        if (v12 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v12;
        }

        if (a2 < 0)
        {
          return result;
        }

        v15 = *(buffer + 20);
        if (v15 <= v12)
        {
          return result;
        }

        v16 = *(buffer + 17);
        if (v16)
        {
          v17 = (v16 + 2 * *(buffer + 19));
        }

        else
        {
          v19 = *(buffer + 18);
          if (v19)
          {
            v18 = *(v19 + *(buffer + 19) + v12);
            goto LABEL_15;
          }

          if (*(buffer + 22) <= v12 || (v22 = *(buffer + 21), v22 > v12))
          {
            v23 = -v14;
            v24 = v14 + v9;
            v25 = v10 - v14;
            v26 = v12 + v23;
            v27 = v26 + 64;
            if (v26 + 64 >= v15)
            {
              v27 = *(buffer + 20);
            }

            *(buffer + 21) = v26;
            *(buffer + 22) = v27;
            if (v15 >= v25)
            {
              v15 = v25;
            }

            v32.location = v26 + *(buffer + 19);
            v32.length = v15 + v24;
            CFStringGetCharacters(*(buffer + 16), v32, buffer);
            v22 = *(buffer + 21);
          }

          v17 = &buffer[-v22];
        }

        v18 = v17[v12];
LABEL_15:
        v20 = v18;
        if ((v18 - 48) >= 0xAu)
        {
          if (v18 - 65 >= 6)
          {
            if (v18 - 97 > 5)
            {
              return result;
            }

            v21 = -87;
          }

          else
          {
            v21 = -55;
          }
        }

        else
        {
          v21 = -48;
        }

        if (v8 > 0xF0F0F0E)
        {
          return result;
        }

        v11 = 0;
        v8 = v21 + v20 + 16 * v8;
        ++v12;
        --v9;
        ++v10;
        if ((v13 & 1) == 0)
        {
          *a4 = v12;
          *a5 = v8;
          return result;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM(v29);
  }

  return result;
}

double figCSSParseString(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a5)
  {
    v6 = a3;
    v8 = *a1;
    if (*a1)
    {
      v10 = 0;
      if (a4 <= a3)
      {
        v11 = a3;
      }

      else
      {
        v11 = a4;
      }

      v12 = v11 - a3;
      while (v10 != v12)
      {
        if (v6 < 0 || *(a2 + 160) <= v6)
        {
          v14 = 0;
        }

        else
        {
          v13 = *(a2 + 136);
          if (v13)
          {
            v14 = *(v13 + 2 * *(a2 + 152) + 2 * v6);
          }

          else
          {
            v15 = *(a2 + 144);
            if (v15)
            {
              v14 = *(v15 + *(a2 + 152) + v6);
            }

            else
            {
              if (*(a2 + 176) <= v6 || (v16 = *(a2 + 168), v16 > v6))
              {
                OUTLINED_FUNCTION_3_62();
                *(a2 + 168) = v18;
                *(a2 + 176) = v17;
                v22.length = v17 - v18;
                v22.location = *(a2 + 152) + v18;
                CFStringGetCharacters(*(a2 + 128), v22, a2);
                v16 = *(a2 + 168);
              }

              v14 = *(a2 + 2 * (v6 - v16));
            }
          }
        }

        if (v8 != v14)
        {
          break;
        }

        ++v6;
        v8 = a1[++v10];
        if (!v8)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *a5 = v6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM(v20);
  }

  return result;
}

double figCSSParseOneOrMoreDigits(void *a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v25 = 0;
  v26 = a2;
  if (a4 && a5)
  {
    result = figCSSParseDigits(a1, a2, a3, &v26, &v25 + 1);
    if (!v7)
    {
      result = OUTLINED_FUNCTION_7_41(v7, v8, v9, v10, v11, v12, v13, v14, v25, v26);
      if (v16)
      {
LABEL_7:
        *a4 = v26;
        *a5 = HIDWORD(v25);
      }

      else
      {
        while (HIDWORD(v25) <= 0x1745D173)
        {
          HIDWORD(v25) = v25 + 10 * HIDWORD(v25);
          result = OUTLINED_FUNCTION_7_41(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
          if (v16)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM(v24);
  }

  return result;
}

double figCSSParseFraction(void *a1, uint64_t a2, uint64_t a3, void *a4, double *a5)
{
  v29 = a2;
  if (a4 && a5)
  {
    result = figCSSParseCharacter(46, a1, a2, a3, &v29);
    if (!v7)
    {
      result = OUTLINED_FUNCTION_8_29(v7, v8, v9, v10, v11, v12, v13, v14, v27, 0, v29);
      v24 = 0.0;
      if (!v16)
      {
        v25 = 10.0;
        do
        {
          LODWORD(result) = HIDWORD(v28);
          v24 = v24 + *&result / v25;
          v25 = v25 * 10.0;
          result = OUTLINED_FUNCTION_8_29(v16, v17, v18, v19, v20, v21, v22, v23, v28, SHIDWORD(v28), v29);
        }

        while (!v16);
      }

      *a4 = v29;
      *a5 = v24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM(v26);
  }

  return result;
}

double figCSSParseDigits(void *a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  if (a4 && a5)
  {
    if (a3 > a2 && (a2 & 0x8000000000000000) == 0 && a1[20] > a2)
    {
      v9 = a1[17];
      if (v9)
      {
        v10 = *(v9 + 2 * a1[19] + 2 * a2);
      }

      else
      {
        v11 = a1[18];
        if (v11)
        {
          v10 = *(v11 + a1[19] + a2);
        }

        else
        {
          if (a1[22] <= a2 || (v12 = a1[21], v12 > a2))
          {
            OUTLINED_FUNCTION_3_62();
            OUTLINED_FUNCTION_5_56(v13);
            v12 = a1[21];
          }

          v10 = *(a1 + a2 - v12);
        }
      }

      if ((v10 - 58) >= 0xFFF6u)
      {
        *a4 = a2 + 1;
        *a5 = v10 - 48;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM(v15);
  }

  return result;
}

void figCSSCopyColorComponentWithRangeCheck_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_53();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figCSSCopyColorComponentWithRangeCheck_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_53();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figCSSCopyColorComponentWithRangeCheck_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_53();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSParseDigitsAsUInt32_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSParseFontSize_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

double FigMPEG2ParserCreate(uint64_t a1, int a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (!a7 || !a6 || !a9)
  {
    goto LABEL_18;
  }

  if (qword_1EAF195B8 != -1)
  {
    dispatch_once(&qword_1EAF195B8, &__block_literal_global_35);
  }

  v16 = qword_1EAF195C0;
  if (!qword_1EAF195C0)
  {
    goto LABEL_18;
  }

  v17 = *(a3 + 12);
  if (a2 == 2)
  {
    if ((v17 & 1) == 0 || *a3 <= 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v17 & 1) != 0 && *a3)
  {
LABEL_18:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v24 = 0;
  *a9 = 0;
  MEMORY[0x19A8D3660](&_MergedGlobals_5, RegisterFigMPEG2ParserBaseType);
  if (!CMDerivedObjectCreate())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v24;
    *(DerivedStorage + 40) = CFRetain(v16);
    *(DerivedStorage + 100) = a2;
    *(DerivedStorage + 56) = a6;
    *(DerivedStorage + 64) = a7;
    *(DerivedStorage + 72) = a8;
    v20 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 112) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 128) = *(v20 + 16);
    v21 = *(a3 + 16);
    *(DerivedStorage + 136) = *a3;
    *(DerivedStorage + 152) = v21;
    *(DerivedStorage + 104) = 1000000;
    *(DerivedStorage + 48) = 0;
    *(DerivedStorage + 449) = a4 & 1;
    *(DerivedStorage + 96) = a5;
    *(DerivedStorage + 16) = 0;
    *(DerivedStorage + 24) = 0;
    *(DerivedStorage + 32) = DerivedStorage + 24;
    if (*(a3 + 12))
    {
      v22 = *a3;
      CMTimeConvertScale(&v23, &v22, 90000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      *(DerivedStorage + 160) = v23.value;
    }

    *&result = 0x100000001;
    *(DerivedStorage + 184) = 0x100000001;
    *a9 = v24;
  }

  return result;
}

void FigMPEG2ParserCopyAudioConfigurationForTrack(uint64_t a1, int a2, void *a3, void *a4)
{
  if (a1 && a3 && a4 && (DerivedStorage = CMBaseObjectGetDerivedStorage(), !*(DerivedStorage + 8)) && (*a3 = 0, *a4 = 0, (v8 = *(DerivedStorage + 24)) != 0))
  {
    while (*(v8 + 60) != a2)
    {
      v8 = *(v8 + 32);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    if (*(v8 + 824))
    {
      v9 = malloc_type_malloc(*(v8 + 832), 0x100004077774924uLL);
      *a3 = v9;
      if (v9)
      {
        memcpy(v9, *(v8 + 824), *(v8 + 832));
        *a4 = *(v8 + 832);
      }
    }
  }

  else
  {
LABEL_8:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

double FigMPEG2ParserCopyProgramList(uint64_t a1, CFArrayRef *a2)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    goto LABEL_21;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 16);
  if (!v6)
  {
    *a2 = 0;
    return result;
  }

  LODWORD(v7) = 0;
  do
  {
    v7 = (v7 + 1);
    v6 = *(v6 + 8);
  }

  while (v6);
  *a2 = 0;
  if (v7)
  {
    v8 = malloc_type_calloc(8uLL, v7, 0x3DFD88D8uLL);
    if (v8)
    {
      v9 = v8;
      v10 = *(v5 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = *MEMORY[0x1E695E480];
        while (1)
        {
          v13 = CFNumberCreate(v12, kCFNumberSInt32Type, (v10 + 40));
          v9[v11] = v13;
          if (!v13)
          {
            break;
          }

          ++v11;
          v10 = *(v10 + 8);
          if (!v10)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        *a2 = CFArrayCreate(*(v5 + 40), v9, v7, MEMORY[0x1E695E9C0]);
      }

      for (i = 0; i != v7; ++i)
      {
        v15 = v9[i];
        if (v15)
        {
          CFRelease(v15);
        }
      }

      free(v9);
      return result;
    }

LABEL_21:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FigMPEG2ParserCopyTrackList(uint64_t a1, int a2, CFArrayRef *a3, CFArrayRef *a4)
{
  if (a1 && a3 && a4 && (DerivedStorage = CMBaseObjectGetDerivedStorage(), !*(DerivedStorage + 8)))
  {
    v9 = DerivedStorage;
    Program = FindProgram(DerivedStorage, a2);
    if (Program)
    {
      v12 = Program;
      v13 = *(Program + 24);
      if (!v13)
      {
        *a4 = 0;
        *a3 = 0;
        return result;
      }

      LODWORD(v14) = 0;
      do
      {
        v14 = (v14 + 1);
        v13 = *(v13 + 16);
      }

      while (v13);
      *a4 = 0;
      *a3 = 0;
      if (v14)
      {
        v15 = malloc_type_calloc(8uLL, v14, 0x34914AD3uLL);
        v16 = malloc_type_calloc(8uLL, v14, 0x7B355725uLL);
        v17 = v16;
        if (v15 && v16)
        {
          v18 = *(v12 + 24);
          if (v18)
          {
            v19 = 0;
            v20 = *MEMORY[0x1E695E480];
            do
            {
              v15[v19] = CFNumberCreate(v20, kCFNumberSInt32Type, v18 + 60);
              v21 = CFNumberCreate(v20, kCFNumberSInt32Type, v18 + 7);
              v17[v19] = v21;
              if (!v15[v19] || !v21)
              {
                goto LABEL_23;
              }

              ++v19;
              v18 = v18[2];
            }

            while (v18);
          }

          v22 = CFArrayCreate(*(v9 + 40), v15, v14, MEMORY[0x1E695E9C0]);
          *a3 = v22;
          if (v22)
          {
            *a4 = CFArrayCreate(*(v9 + 40), v17, v14, MEMORY[0x1E695E9C0]);
            if (*a3)
            {
              goto LABEL_24;
            }

            CFRelease(0);
            *a3 = 0;
          }

LABEL_23:
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v4, v29);
          goto LABEL_24;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
        if (!v15)
        {
LABEL_29:
          if (v17)
          {
            for (i = 0; i != v14; ++i)
            {
              v26 = v17[i];
              if (v26)
              {
                CFRelease(v26);
              }
            }

            free(v17);
          }

          return result;
        }

LABEL_24:
        for (j = 0; j != v14; ++j)
        {
          v24 = v15[j];
          if (v24)
          {
            CFRelease(v24);
          }
        }

        free(v15);
        goto LABEL_29;
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

void FigMPEG2ParserInjectData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMPEG2ParserInjectData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigMPEG2ParserInjectData_cold_3(char a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a2 = v4;
  return a1 & 1;
}

void FigMPEG2ParserGetStreamType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMPEG2ParserGetStreamType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineInvalidate(uint64_t a1)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v42 = 0;
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37.value, v37.timescale, LODWORD(v37.epoch));
      FigSimpleMutexUnlock();
    }

    else
    {
      if (*(DerivedStorage + 56))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        FigMediaProcessorStop(*(DerivedStorage + 56));
        FigMediaProcessorWaitUntilCompletelyStopped(*(DerivedStorage + 56));
      }

      v3 = *(DerivedStorage + 128);
      if (v3)
      {
        CMBufferQueueReset(v3);
      }

      if (qword_1ED4CAB58 != -1)
      {
        dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
      }

      if (!_MergedGlobals_59)
      {
        FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject();
        if (v4)
        {
          v5 = v4;
          v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v6)
          {
            v6(v5);
          }
        }
      }

      if (*(DerivedStorage + 392))
      {
        if (qword_1ED4CAB58 != -1)
        {
          dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        if (*(*(CMBaseObjectGetVTable() + 16) + 104))
        {
          v7 = OUTLINED_FUNCTION_178();
          v8(v7);
        }

        v9 = *(DerivedStorage + 392);
        if (v9)
        {
          CFRelease(v9);
          *(DerivedStorage + 392) = 0;
        }
      }

      if (qword_1ED4CAB58 != -1)
      {
        dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
      }

      if (!_MergedGlobals_59)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
      }

      fbaprp_setTimebaseGuts(a1, 0);
      *DerivedStorage = 1;
      fbaprp_transitionRosterRemoveAll(a1);
      v10 = *(DerivedStorage + 64);
      if (v10)
      {
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v11(v10, @"DownstreamConsumer", 0);
        }
      }

      *(DerivedStorage + 144) = 0x3F80000000000000;
      *(DerivedStorage + 240) = 0;
      v12 = MEMORY[0x1E6960C70];
      v13 = *MEMORY[0x1E6960C70];
      *(DerivedStorage + 160) = *MEMORY[0x1E6960C70];
      v14 = *(v12 + 16);
      *(DerivedStorage + 176) = v14;
      *(DerivedStorage + 208) = v13;
      *(DerivedStorage + 224) = v14;
      v15 = MEMORY[0x1E6960CC0];
      *(DerivedStorage + 260) = *MEMORY[0x1E6960CC0];
      *(DerivedStorage + 276) = *(v15 + 16);
      *(DerivedStorage + 96) = 0;
      *(DerivedStorage + 233) = 0;
      *(DerivedStorage + 320) = 0;
      *(DerivedStorage + 232) = 0;
      v16 = *(DerivedStorage + 72);
      if (v16)
      {
        FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary(v16, &v42);
        memset(&v41, 0, sizeof(v41));
        Value = CFDictionaryGetValue(v42, @"FirstMediaSamplePts");
        CMTimeMakeFromDictionary(&v41, Value);
        memset(&v40, 0, sizeof(v40));
        v18 = CFDictionaryGetValue(v42, @"LastMediaSamplePts");
        CMTimeMakeFromDictionary(&v40, v18);
        memset(&v39, 0, sizeof(v39));
        v19 = CFDictionaryGetValue(v42, @"FirstContinuousSamplePts");
        CMTimeMakeFromDictionary(&v39, v19);
        memset(&v38, 0, sizeof(v38));
        v20 = CFDictionaryGetValue(v42, @"LastContinuousSamplePts");
        CMTimeMakeFromDictionary(&v38, v20);
        memset(&v37, 0, sizeof(v37));
        v21 = CFDictionaryGetValue(v42, @"DurationProcessed");
        CMTimeMakeFromDictionary(&v37, v21);
      }

      v22 = *(DerivedStorage + 304);
      if (v22)
      {
        CFRelease(v22);
        *(DerivedStorage + 304) = 0;
      }

      v23 = *(DerivedStorage + 72);
      if (v23)
      {
        CFRelease(v23);
        *(DerivedStorage + 72) = 0;
      }

      v24 = *(DerivedStorage + 128);
      if (v24)
      {
        CFRelease(v24);
        *(DerivedStorage + 128) = 0;
      }

      v25 = *(DerivedStorage + 136);
      if (v25)
      {
        CFRelease(v25);
        *(DerivedStorage + 136) = 0;
      }

      v26 = *(DerivedStorage + 328);
      if (v26)
      {
        CFRelease(v26);
        *(DerivedStorage + 328) = 0;
      }

      v27 = *(DerivedStorage + 88);
      if (v27)
      {
        CFRelease(v27);
        *(DerivedStorage + 88) = 0;
      }

      v28 = *(DerivedStorage + 360);
      if (v28)
      {
        CFRelease(v28);
        *(DerivedStorage + 360) = 0;
      }

      v29 = *(DerivedStorage + 368);
      if (v29)
      {
        CFRelease(v29);
        *(DerivedStorage + 368) = 0;
      }

      v30 = *(DerivedStorage + 80);
      if (v30)
      {
        CFRelease(v30);
        *(DerivedStorage + 80) = 0;
      }

      v31 = *(DerivedStorage + 120);
      if (v31)
      {
        CFRelease(v31);
        *(DerivedStorage + 120) = 0;
      }

      v32 = *(DerivedStorage + 104);
      if (v32)
      {
        CFRelease(v32);
        *(DerivedStorage + 104) = 0;
      }

      v33 = *(DerivedStorage + 64);
      if (v33)
      {
        CFRelease(v33);
        *(DerivedStorage + 64) = 0;
      }

      v34 = *(DerivedStorage + 416);
      if (v34)
      {
        CFRelease(v34);
        *(DerivedStorage + 416) = 0;
      }

      v35 = *(DerivedStorage + 56);
      *(DerivedStorage + 56) = 0;
      FigSimpleMutexUnlock();
      if (v35)
      {
        CFRelease(v35);
      }
    }

    if (v42)
    {
      CFRelease(v42);
    }
  }

  return 0;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17188)
  {
    OUTLINED_FUNCTION_147();
    v11 = OUTLINED_FUNCTION_126(qword_1EAF17180, v4, v5, v6, v7, v8, v9, v10, v30, v31, v32, *v33, v33[2], v33[3], v33[4]);
    os_log_type_enabled(v11, type);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_37_14();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v12, v13, v14, v15, v16, v11, type, v17);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v18, v19, v20, v21, v22);
  }

  FigBufferedAirPlayAudioRenderPipelineInvalidate(a1);
  v23 = *(DerivedStorage + 376);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 376) = 0;
  }

  v24 = *(DerivedStorage + 32);
  if (v24)
  {
    dispatch_release(v24);
    *(DerivedStorage + 32) = 0;
  }

  v25 = *(DerivedStorage + 16);
  if (v25)
  {
    dispatch_release(v25);
    *(DerivedStorage + 16) = 0;
  }

  v26 = *(DerivedStorage + 24);
  if (v26)
  {
    dispatch_release(v26);
    *(DerivedStorage + 24) = 0;
  }

  v27 = *(DerivedStorage + 40);
  if (v27)
  {
    dispatch_release(v27);
    *(DerivedStorage + 40) = 0;
  }

  v28 = *(DerivedStorage + 8);
  if (v28)
  {
    dispatch_sync_f(v28, 0, fbaprp_dispatchNoOp);
    dispatch_release(*(DerivedStorage + 8));
    *(DerivedStorage + 8) = 0;
  }

  result = *(DerivedStorage + 48);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 48) = 0;
  }

  return result;
}

uint64_t fbaprp_resumeOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v231 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v223 = **&MEMORY[0x1E6960C70];
  FigSimpleMutexLock();
  if (!a5)
  {
    return FigSimpleMutexUnlock();
  }

  if (*DerivedStorage)
  {
    return FigSimpleMutexUnlock();
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a5))
  {
    return FigSimpleMutexUnlock();
  }

  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  if (!CMTimeIfPresent)
  {
    return FigSimpleMutexUnlock();
  }

  if (*(DerivedStorage + 232))
  {
    OUTLINED_FUNCTION_59_6(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v18, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, v19, v223.value);
    return FigSimpleMutexUnlock();
  }

  if (*(DerivedStorage + 233))
  {
    OUTLINED_FUNCTION_59_6(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v18, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, v19, v223.value);
    v20 = *(DerivedStorage + 248);
    HostTimeClock = CMClockGetHostTimeClock();
    time = v223;
    CMSyncConvertTime(&v230, &time, v20, HostTimeClock);
    *(DerivedStorage + 208) = v230;
    Rate = CMTimebaseGetRate(*(DerivedStorage + 248));
    if (Rate == 0.0)
    {
      *(DerivedStorage + 232) = 1;
    }

    else
    {
      if (dword_1EAF17188)
      {
        v79 = OUTLINED_FUNCTION_25_19(v22, v23, v24, v25, v26, v27, v28, v29, v188, v205, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
        OUTLINED_FUNCTION_18_22(v79, v80, v81, v82, v83, v84, v85, v86, v192, v209, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
        OUTLINED_FUNCTION_40();
        if (v5)
        {
          if (a2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_48_10(*(DerivedStorage + 176), v193, v210, v221.value, *&v221.timescale, v221.epoch, type, v223.value, *&v223.timescale, v223.epoch, v224, time.value, *&time.timescale, time.epoch, v226, v227, *(&v227 + 1), v228, v229, *(DerivedStorage + 160), *(DerivedStorage + 168), v230.epoch);
          OUTLINED_FUNCTION_48_10(*(DerivedStorage + 224), v199, v216, v221.value, *&v221.timescale, v221.epoch, type, v223.value, *&v223.timescale, v223.epoch, v224, time.value, *&time.timescale, time.epoch, v226, v227, *(&v227 + 1), v228, v229, *(DerivedStorage + 208), *(DerivedStorage + 216), v230.epoch);
          LODWORD(time.value) = 136316162;
          OUTLINED_FUNCTION_2_81();
          OUTLINED_FUNCTION_6_54();
          OUTLINED_FUNCTION_5_57(v147, v148, v149, v150, &dword_1962D5000, v151, v152, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Trying to join audiochain with mediaTime %1.3f, hostTime %1.3f", v200, v217, v221.value, *&v221.timescale, v221.epoch, type, v223.value, *&v223.timescale, v223.epoch, v224, time.value, *&time.timescale, time.epoch, v226, v227, *(&v227 + 1), v228, v229);
          OUTLINED_FUNCTION_41_12();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v153, v154, v155, v156, v157);
      }

      fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts(a2, Rate);
    }

    return FigSimpleMutexUnlock();
  }

  if (*(DerivedStorage + 152) == 0.0)
  {
    if (*(DerivedStorage + 156) == 0.0)
    {
      if (dword_1EAF17188)
      {
        v63 = OUTLINED_FUNCTION_24_16(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
        OUTLINED_FUNCTION_18_22(v63, v64, v65, v66, v67, v68, v69, v70, v191, v208, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
        OUTLINED_FUNCTION_40();
        if (v5)
        {
          if (a2)
          {
            v71 = CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_21_19(v71, v72, v73, v74, v75, v76, v77, v78, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, *&v223.value);
          CMTimeGetSeconds(&v230);
          LODWORD(time.value) = 136315906;
          OUTLINED_FUNCTION_2_81();
          *(&v227 + 2) = v135;
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_5_57(v136, v137, v138, v139, &dword_1962D5000, v140, v141, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Trying to start audiochain with rate 0.0, mediaTime %1.3f", v198, v215, v221.value, *&v221.timescale, v221.epoch, type, v223.value, *&v223.timescale, v223.epoch, v224, time.value, *&time.timescale, time.epoch, v226, v227, *(&v227 + 1), v228, v229);
          OUTLINED_FUNCTION_41_12();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v142, v143, v144, v145, v146);
      }

      OUTLINED_FUNCTION_21_19(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, *&v223.value);
      v110 = MEMORY[0x1E6960C70];
      v98 = 0.0;
      v111 = a2;
      v112 = 0;
      goto LABEL_38;
    }

    if (dword_1EAF17188)
    {
      v47 = OUTLINED_FUNCTION_24_16(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
      OUTLINED_FUNCTION_18_22(v47, v48, v49, v50, v51, v52, v53, v54, v190, v207, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
      OUTLINED_FUNCTION_40();
      if (v5)
      {
        if (a2)
        {
          v55 = CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_21_19(v55, v56, v57, v58, v59, v60, v61, v62, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, *&v223.value);
        CMTimeGetSeconds(&v230);
        LODWORD(time.value) = 136316162;
        OUTLINED_FUNCTION_2_81();
        OUTLINED_FUNCTION_6_54();
        OUTLINED_FUNCTION_5_57(v99, v100, v101, v102, &dword_1962D5000, v103, v104, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Trying to start audiochain with pipelineRate %1.2f, mediaTime %1.3f", v195, v212, v221.value, *&v221.timescale, v221.epoch, type, v223.value, *&v223.timescale, v223.epoch, v224, time.value, *&time.timescale, time.epoch, v226, v227, *(&v227 + 1), v228, v229);
        OUTLINED_FUNCTION_41_12();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v105, v106, v107, v108, v109);
    }

    if (!*(DerivedStorage + 96))
    {
      v98 = *(DerivedStorage + 156);
      goto LABEL_37;
    }

    if (!dword_1EAF17188)
    {
      return FigSimpleMutexUnlock();
    }

    v167 = OUTLINED_FUNCTION_25_19(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
    OUTLINED_FUNCTION_18_22(v167, v168, v169, v170, v171, v172, v173, v174, v203, v220, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
    OUTLINED_FUNCTION_40();
    if (v5)
    {
      if (!a2)
      {
        v175 = "";
        goto LABEL_72;
      }

      goto LABEL_68;
    }

LABEL_73:
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v182, v183, v184, v185, v186);
    return FigSimpleMutexUnlock();
  }

  if (dword_1EAF17188)
  {
    v31 = OUTLINED_FUNCTION_24_16(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
    OUTLINED_FUNCTION_18_22(v31, v32, v33, v34, v35, v36, v37, v38, v189, v206, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
    OUTLINED_FUNCTION_40();
    if (v5)
    {
      if (a2)
      {
        v39 = CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_21_19(v39, v40, v41, v42, v43, v44, v45, v46, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, *&v223.value);
      CMTimeGetSeconds(&v230);
      LODWORD(time.value) = 136316162;
      OUTLINED_FUNCTION_2_81();
      OUTLINED_FUNCTION_6_54();
      OUTLINED_FUNCTION_5_57(v87, v88, v89, v90, &dword_1962D5000, v91, v92, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Trying to start audiochain with decodeForPrerollRate %1.2f, mediaTime %1.3f", v194, v211, v221.value, *&v221.timescale, v221.epoch, type, v223.value, *&v223.timescale, v223.epoch, v224, time.value, *&time.timescale, time.epoch, v226, v227, *(&v227 + 1), v228, v229);
      OUTLINED_FUNCTION_41_12();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v93, v94, v95, v96, v97);
  }

  if (*(DerivedStorage + 96))
  {
    if (!dword_1EAF17188)
    {
      return FigSimpleMutexUnlock();
    }

    v159 = OUTLINED_FUNCTION_25_19(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v187, v204, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
    OUTLINED_FUNCTION_18_22(v159, v160, v161, v162, v163, v164, v165, v166, v201, v218, v221.value, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
    OUTLINED_FUNCTION_40();
    if (v5)
    {
      if (!a2)
      {
        v175 = "";
        goto LABEL_72;
      }

LABEL_68:
      v175 = (CMBaseObjectGetDerivedStorage() + 424);
LABEL_72:
      LODWORD(time.value) = 136315650;
      *(&time.value + 4) = "fbaprp_resumeOutput";
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = a2;
      HIWORD(time.epoch) = 2082;
      v226 = v175;
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_5_57(v176, v177, v178, v179, &dword_1962D5000, v180, v181, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s FigBufferedAirPlayRenderPipeline already started", v202, v219, v221.value, *&v221.timescale, v221.epoch, type, v223.value, *&v223.timescale, v223.epoch, v224, time.value, *&time.timescale, time.epoch, v226, v227, *(&v227 + 1), v228, v229);
      OUTLINED_FUNCTION_41_12();
      goto LABEL_73;
    }

    goto LABEL_73;
  }

  v98 = *(DerivedStorage + 152);
LABEL_37:
  v230 = v223;
  v110 = MEMORY[0x1E6960C70];
  v111 = a2;
  v112 = 1;
LABEL_38:
  fbaprp_startAudioChainGuts(v111, v112, &v230.value, v110, v98);
  if (!v113)
  {
    if (v223.flags)
    {
      *(DerivedStorage + 184) = v223;
      if (dword_1EAF17188)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_18_22(os_log_and_send_and_compose_flags_and_os_log_type, v115, v116, v117, v118, v119, v120, v121, v187, v204, 0, *&v221.timescale, v221.epoch, type, SWORD2(type), SBYTE6(type), OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_40();
        if (v5)
        {
          if (a2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_48_10(*(DerivedStorage + 200), v196, v213, v221.value, *&v221.timescale, v221.epoch, type, v223.value, *&v223.timescale, v223.epoch, v224, time.value, *&time.timescale, time.epoch, v226, v227, *(&v227 + 1), v228, v229, *(DerivedStorage + 184), *(DerivedStorage + 192), v230.epoch);
          LODWORD(time.value) = 136315906;
          OUTLINED_FUNCTION_2_81();
          *(&v227 + 2) = v122;
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_5_57(v123, v124, v125, v126, &dword_1962D5000, v127, v128, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s Set baoTimelineOffset to %1.3f\n", v197, v214, v221.value, *&v221.timescale, v221.epoch, type, v223.value, *&v223.timescale, v223.epoch, v224, time.value, *&time.timescale, time.epoch, v226, v227, *(&v227 + 1), v228, v229);
          OUTLINED_FUNCTION_41_12();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v129, v130, v131, v132, v133);
      }
    }

    v134 = CMTimebaseGetRate(*(DerivedStorage + 248));
    if (v134 != 0.0 && *(DerivedStorage + 384))
    {
      v230 = *(DerivedStorage + 184);
      time = *(DerivedStorage + 184);
      v221 = *(DerivedStorage + 208);
      fbaprp_setRateOnAudioChainGuts(a2, v134, &v230, &time, &v221, 0);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t fbaprp_sbufProcessorFoundEndOfSiriTTSUtterance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *MEMORY[0x1E6960CC0];
  FigSimpleMutexLock();
  if (a5)
  {
    if (!*DerivedStorage)
    {
      v7 = CFGetTypeID(a5);
      if (v7 == CFDictionaryGetTypeID() && FigCFDictionaryGetCMTimeIfPresent() && (BYTE12(v11) & 1) != 0 && *(*(CMBaseObjectGetVTable() + 16) + 64))
      {
        v8 = OUTLINED_FUNCTION_266();
        v9(v8);
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void __fbaprp_transitionIDFound_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v29 = *MEMORY[0x1E69E9840];
  v24 = *MEMORY[0x1E6960C70];
  v25 = *(MEMORY[0x1E6960C70] + 16);
  v22 = *MEMORY[0x1E6960CC0];
  v23 = *(MEMORY[0x1E6960CC0] + 16);
  OUTLINED_FUNCTION_66_6(v0);
  if (*(*(v1 + 32) + 256))
  {
    if (*(v1 + 40))
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(*(v1 + 40)))
      {
        Value = CFDictionaryGetValue(*(v1 + 40), @"TransitionID");
        if (Value)
        {
          v4 = Value;
          if (FigCFDictionaryGetCMTimeIfPresent())
          {
            if (FigCFDictionaryGetCMTimeIfPresent() && FigCFDictionaryGetCMTimeIfPresent())
            {
              v5 = *(v1 + 48);
              DerivedStorage = CMBaseObjectGetDerivedStorage();
              if (dword_1EAF17188)
              {
                OUTLINED_FUNCTION_36_14();
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              Record = fbaprp_transitionRosterGetRecord(v5, v4);
              if (Record)
              {
                v9 = Record;
                v10 = Record[6];
                Record[15] = v23;
                *(Record + 13) = v22;
                *(Record + 3) = v24;
                Record[5] = v25;
                v11 = *(DerivedStorage + 304);
                if (v11)
                {
                  v9[2] = CFRetain(v11);
                  v13 = *(DerivedStorage + 304);
                }

                else
                {
                  v12 = *(DerivedStorage + 248);
                  if (v12)
                  {
                    v12 = CFRetain(v12);
                    v13 = *(DerivedStorage + 248);
                  }

                  else
                  {
                    v13 = 0;
                  }

                  v9[2] = v12;
                }

                CMTimebaseGetTime(v28, v13);
                v26 = v24;
                v27 = v25;
                v14 = OUTLINED_FUNCTION_178();
                fbaprp_scheduleItemTransitionOnTimebase(v14, v15, v16, v17, v10, v18, v19, v4);
              }
            }
          }
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  v20 = *(v1 + 48);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(v1 + 40);
  if (v21)
  {
    CFRelease(v21);
  }

  OUTLINED_FUNCTION_191();
}

void *fbaprp_transitionRosterGetRecord(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v4 = (DerivedStorage + 288);
  do
  {
    v4 = *v4;
  }

  while (v4 && !FigCFEqual());
  return v4;
}

void fbaprp_scheduleItemTransitionOnTimebase(uint64_t a1, void *a2, CMTime *a3, CMTime *a4, const void *a5, uint64_t a6, __int128 *a7, const void *a8)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v29, 0, sizeof(v29));
  CMTimeMake(&v29, 1, 1);
  memset(&v28, 0, sizeof(v28));
  lhs = *a4;
  rhs = v29;
  CMTimeSubtract(&v28, &lhs, &rhs);
  if (a2)
  {
    if (a5)
    {
      v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 32));
      if (v16)
      {
        v17 = v16;
        v18 = malloc_type_calloc(1uLL, 0x80uLL, 0x10E0040C66585F0uLL);
        if (v18)
        {
          v19 = v18;
          v27 = DerivedStorage;
          *(v18 + 2) = CFRetain(a2);
          *(v19 + 3) = CFRetain(a5);
          *v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *(v19 + 32) = v28;
          v20 = *(a6 + 16);
          *(v19 + 5) = *a6;
          *(v19 + 12) = v20;
          v21 = *a7;
          *(v19 + 15) = *(a7 + 2);
          *(v19 + 104) = v21;
          epoch = a4->epoch;
          *(v19 + 56) = *&a4->value;
          *(v19 + 9) = epoch;
          *(v19 + 1) = CFRetain(a8);
          if (dword_1EAF17188)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          dispatch_source_set_timer(v17, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
          dispatch_source_set_event_handler_f(v17, fbaprp_transitionToNextTimebaseNow);
          dispatch_source_set_cancel_handler_f(v17, fbaprp_cancelTimebaseTransition);
          dispatch_set_context(v17, v19);
          dispatch_resume(v17);
          if (a8)
          {
            Record = fbaprp_transitionRosterGetRecord(a1, a8);
            if (Record)
            {
              v25 = Record[12];
              Record[12] = v17;
              dispatch_retain(v17);
              if (v25)
              {
                dispatch_source_cancel(v25);
                dispatch_release(v25);
              }
            }
          }

          if (!CMTimebaseAddTimerDispatchSource(a2, v17))
          {
            lhs = v28;
            if (!CMTimebaseSetTimerDispatchSourceNextFireTime(a2, v17, &lhs, 1u))
            {
              v26 = *(v27 + 304);
              *(v27 + 304) = a5;
              CFRetain(a5);
              if (v26)
              {
                CFRelease(v26);
              }

              goto LABEL_15;
            }

            CMTimebaseRemoveTimerDispatchSource(a2, v17);
          }

          fbaprp_transitionRosterRemoveRecordByTimebase(a1, a5);
        }

LABEL_15:
        dispatch_release(v17);
      }
    }
  }
}

void fbaprp_itemTransitionContextRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts(uint64_t a1, double a2)
{
  v43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 392);
  v6 = *(DerivedStorage + 400);
  v7 = *(DerivedStorage + 80);
  v34 = *(DerivedStorage + 184);
  *type = *(DerivedStorage + 208);
  *&type[16] = *(DerivedStorage + 224);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v8)
  {
    return 4294954514;
  }

  v42[0] = v34;
  v36 = *type;
  result = v8(v5, v6, v42, &v36, v7, a2);
  if (!result)
  {
    if (dword_1EAF17188)
    {
      LODWORD(v34.value) = 0;
      type[0] = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40();
      if (v6)
      {
        if (a1)
        {
          v11 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v11 = "";
        }

        OUTLINED_FUNCTION_48_10(*(DerivedStorage + 176), v24, v26, *type, *&type[8], *&type[16], v32, v34.value, *&v34.timescale, v34.epoch, v35, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, v40, v41, *(DerivedStorage + 160), *(DerivedStorage + 168), v42[0].epoch);
        LODWORD(v36.value) = 136316162;
        *(&v36.value + 4) = "fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts";
        LOWORD(v36.flags) = 2048;
        *(&v36.flags + 2) = a1;
        HIWORD(v36.epoch) = 2082;
        v37 = v11;
        LOWORD(v38) = 2048;
        OUTLINED_FUNCTION_6_54();
        OUTLINED_FUNCTION_5_57(v12, v13, v14, v15, &dword_1962D5000, v16, v17, "<<<< FigBufferedAirPlayRP >>>> %s: [%p] %{public}s synchronizeToTimebaseSetRateOnAudioChainGuts with rate %1.2f startMediaTime %1.3f", v25, v27, typea, type_8, v31, v33, v34.value, *&v34.timescale, v34.epoch, v35, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, v40, v41);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v18, v19, v20, v21, v22);
    }

    result = 0;
    if (a2 != 0.0 && !*(DerivedStorage + 96))
    {
      v23 = a2;
      *(DerivedStorage + 148) = v23;
      *(DerivedStorage + 96) = 1;
      *(DerivedStorage + 240) = CMTimebaseGetRate(*(DerivedStorage + 248));
      v42[0] = *(DerivedStorage + 184);
      v36 = *(DerivedStorage + 184);
      v34 = *(DerivedStorage + 208);
      return fbaprp_setRateOnAudioChainGuts(a1, v23, v42, &v36, &v34, 0);
    }
  }

  return result;
}

uint64_t fbaprp_setRateOnAudioChainGuts(uint64_t a1, float a2, uint64_t a3, CMTime *a4, CMTime *a5, uint64_t a6)
{
  v237 = a6;
  v295 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LODWORD(v20) = -353275904;
  if (*DerivedStorage)
  {
    OUTLINED_FUNCTION_14_28();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v219, v225, v231);
    goto LABEL_49;
  }

  v21 = DerivedStorage;
  v22 = dword_1EAF17188;
  if (!DerivedStorage[256] && dword_1EAF17188)
  {
    v23 = OUTLINED_FUNCTION_12_31(DerivedStorage, v13, v14, v15, v16, v17, v18, v19, v219, v225, v231, v237, type, type_8, v260, v267, v274);
    OUTLINED_FUNCTION_38_12(v23, v24, v25, v26, v27, v28, v29, v30, v220, v226, v232, v238, typee, type_8b, v261, v268, v275);
    OUTLINED_FUNCTION_121();
    if (v32)
    {
      v33 = v31;
    }

    else
    {
      v33 = v6;
    }

    if (v33)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v289.value) = 136315650;
      OUTLINED_FUNCTION_58_4();
      HIWORD(v289.epoch) = 2082;
      v290 = v34;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v35, v36, v37, v38, v39, v7, 0x1EAF17000, v40);
      OUTLINED_FUNCTION_53_9();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v41, v42, v43, v44, v45);
    v22 = dword_1EAF17188;
    LODWORD(v20) = -353275904;
  }

  if (v22)
  {
    v46 = OUTLINED_FUNCTION_12_31(DerivedStorage, v13, v14, v15, v16, v17, v18, v19, v219, v225, v231, v237, type, type_8, v260, v267, v274);
    OUTLINED_FUNCTION_38_12(v46, v47, v48, v49, v50, v51, v52, v53, v221, v227, v233, v239, typef, type_8c, v262, v269, v276);
    OUTLINED_FUNCTION_121();
    if (v32)
    {
      v55 = v54;
    }

    else
    {
      v55 = v6;
    }

    if (v55)
    {
      if (a1)
      {
        v6 = (CMBaseObjectGetDerivedStorage() + 424);
      }

      else
      {
        v6 = "";
      }

      OUTLINED_FUNCTION_33_14();
      Seconds = CMTimeGetSeconds(&time);
      v65 = OUTLINED_FUNCTION_49_5(v57, v58, v59, v60, v61, v62, v63, v64, v219, v225, v231, v237, type, type_8, v260, v267, v274, *(&v274 + 1), v283, v286, v289.value, *&v289.timescale, v289.epoch, v290, *v291, *&v291[8], *&v291[16], *&v291[24], v292, v293, *&time.value, time.epoch);
      OUTLINED_FUNCTION_32_13(v66, v67, v68, v69, v70, v71, v72, v73, v222, v228, v234, v240, typeg, type_8d, v263, v270, v277, v281, v284, v287, v289.value, *&v289.timescale, v289.epoch, v290, *v291, *&v291[8], *&v291[16], *&v291[24], v292, v293, *&time.value, time.epoch);
      LODWORD(v289.value) = 136316674;
      OUTLINED_FUNCTION_42_10();
      v290 = v6;
      *v291 = v74;
      *&v291[2] = a2;
      *&v291[10] = v74;
      *&v291[12] = Seconds;
      *&v291[20] = v74;
      *&v291[22] = v65;
      *&v291[30] = v74;
      v292 = v75;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v76, v77, v78, v79, v80, v7, 0x1EAF17000, v81);
      OUTLINED_FUNCTION_53_9();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v82, v83, v84, v85, v86);
    v20 = &dword_1EAF17000;
    if (dword_1EAF17188)
    {
      v87 = OUTLINED_FUNCTION_12_31(DerivedStorage, v13, v14, v15, v16, v17, v18, v19, v219, v225, v231, v237, type, type_8, v260, v267, v274);
      OUTLINED_FUNCTION_38_12(v87, v88, v89, v90, v91, v92, v93, v94, v223, v229, v235, v241, typeh, type_8e, v264, v271, v278);
      OUTLINED_FUNCTION_121();
      if (v32)
      {
        v104 = v103;
      }

      else
      {
        v104 = v6;
      }

      if (v104)
      {
        if (a1)
        {
          v95 = CMBaseObjectGetDerivedStorage();
          v105 = (v95 + 424);
        }

        else
        {
          v105 = "";
        }

        v106 = *(v21 + 47);
        v107 = OUTLINED_FUNCTION_49_5(v95, v96, v97, v98, v99, v100, v101, v102, v219, v225, v231, v237, type, type_8, v260, v267, v274, *(&v274 + 1), v283, v286, v289.value, *&v289.timescale, v289.epoch, v290, *v291, *&v291[8], *&v291[16], *&v291[24], v292, v293, *&time.value, time.epoch);
        OUTLINED_FUNCTION_32_13(v108, v109, v110, v111, v112, v113, v114, v115, v224, v230, v236, v242, typei, type_8f, v265, v272, v279, v282, v285, v288, v289.value, *&v289.timescale, v289.epoch, v290, *v291, *&v291[8], *&v291[16], *&v291[24], v292, v293, *&time.value, time.epoch);
        LODWORD(v289.value) = 136316674;
        OUTLINED_FUNCTION_42_10();
        v290 = v105;
        *v291 = v116;
        *&v291[2] = v106;
        *&v291[10] = v116;
        *&v291[12] = a2;
        *&v291[20] = v116;
        *&v291[22] = v107;
        *&v291[30] = v116;
        v292 = v117;
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v118, v119, v120, v121, v122, v7, &dword_1EAF17000, v123);
        OUTLINED_FUNCTION_53_9();
      }

      OUTLINED_FUNCTION_36_14();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v124, v125, v126, v127, v128);
    }
  }

  if (qword_1ED4CAB58 != -1)
  {
    dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
  }

  if (!_MergedGlobals_59)
  {
    v143 = *(v21 + 47);
    v274 = *(v21 + 10);
    v283 = *(v21 + 22);
    typeb = *(v21 + 13);
    v260 = *(v21 + 28);
    VTable = CMBaseObjectGetVTable();
    v153 = *(VTable + 16);
    v152 = VTable + 16;
    if (!*(v153 + 8))
    {
      goto LABEL_81;
    }

    v129 = a2;
    OUTLINED_FUNCTION_35_11(v152, v145, v146, v147, v148, v149, v150, v151, v219, v225, v231, v237, typeb);
    DerivedStorage = v154(v143, &time, &v289, a2);
    if (!DerivedStorage)
    {
      goto LABEL_38;
    }

LABEL_49:
    v155 = DerivedStorage;
    v131 = 0;
    goto LABEL_82;
  }

  v129 = a2;
LABEL_38:
  if (a2 == 0.0)
  {
    if (dword_1EAF17188)
    {
      v156 = OUTLINED_FUNCTION_12_31(DerivedStorage, v13, v14, v15, v16, v17, v18, v19, v219, v225, v231, v237, type, type_8, v260, v267, v274);
      os_log_type_enabled(v156, typec);
      OUTLINED_FUNCTION_121();
      if (v32)
      {
        v158 = v157;
      }

      else
      {
        v158 = v280;
      }

      if (v158)
      {
        if (a1)
        {
          v159 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v159 = "";
        }

        v203 = *(v21 + 31);
        LODWORD(v289.value) = 136316162;
        *(&v289.value + 4) = "fbaprp_setRateOnAudioChainGuts";
        LOWORD(v289.flags) = 2048;
        *(&v289.flags + 2) = a1;
        HIWORD(v289.epoch) = 2082;
        v290 = v159;
        *v291 = 2048;
        *&v291[2] = v129;
        *&v291[10] = 2048;
        *&v291[12] = v203;
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl(v204, v205, v206, v207, v208, v209, typec, v210);
        OUTLINED_FUNCTION_53_9();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v211, v212, v213, v214, v215);
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      time = **&MEMORY[0x1E6960C70];
      v289 = time;
      v216 = OUTLINED_FUNCTION_266();
      v155 = v217(v216);
      v187 = 0;
      v185 = 0;
      v131 = 0;
      if (v155)
      {
        goto LABEL_82;
      }

LABEL_68:
      v155 = 0;
      *(v21 + 36) = a2;
      if (!v187)
      {
        goto LABEL_72;
      }

LABEL_71:
      CFRelease(v187);
      goto LABEL_72;
    }

LABEL_81:
    v131 = 0;
    v155 = 4294954514;
    goto LABEL_82;
  }

  v130 = *(v21 + 31);
  time = *a4;
  v289 = *a5;
  if (a1 && v130)
  {
    v131 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A004094F85FBAuLL);
    *v131 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v132 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v131 + 8) = v132;
    *(v131 + 2) = a2;
    *(v131 + 36) = v289;
    *(v131 + 12) = time;
    if (*v131 && v132)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_14_28();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v155 = v132;
  }

  else
  {
    OUTLINED_FUNCTION_14_28();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v155 = v132;
    v131 = 0;
  }

  if (v155)
  {
    goto LABEL_82;
  }

LABEL_43:
  if (dword_1EAF17188)
  {
    v140 = OUTLINED_FUNCTION_12_31(v132, v133, v134, v135, v136, v137, v138, v139, v219, v225, v231, v237, type, type_8, v260, v267, v274);
    v141 = typea;
    os_log_type_enabled(v140, typea);
    OUTLINED_FUNCTION_70();
    if (v20)
    {
      if (a1)
      {
        v142 = (CMBaseObjectGetDerivedStorage() + 424);
      }

      else
      {
        v142 = "";
      }

      OUTLINED_FUNCTION_33_14();
      v160 = CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_32_13(v161, v162, v163, v164, v165, v166, v167, v168, v219, v225, v231, v237, typea, type_8a, v266, v273, v274, *(&v274 + 1), v283, v286, v289.value, *&v289.timescale, v289.epoch, v290, *v291, *&v291[8], *&v291[16], *&v291[24], v292, v293, *&time.value, time.epoch);
      LODWORD(v289.value) = 136316674;
      OUTLINED_FUNCTION_58_4();
      HIWORD(v289.epoch) = 2082;
      v290 = v142;
      *v291 = v169;
      *&v291[2] = v129;
      *&v291[10] = v169;
      *&v291[12] = v160;
      *&v291[20] = v169;
      *&v291[22] = v170;
      *&v291[30] = v169;
      v292 = v171;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v172, v173, v174, v175, v176, v140, v141, v177);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454(v178, v179, v180, v181, v182);
  }

  if (v237)
  {
    v183 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      v155 = 4294954443;
      goto LABEL_82;
    }

    v185 = Mutable;
    v186 = CFDictionaryCreateMutable(v183, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v186)
    {
      v155 = 4294954443;
      goto LABEL_73;
    }

    v187 = v186;
    FigCFDictionarySetInt64();
    FigCFDictionarySetValue();
  }

  else
  {
    v187 = 0;
    v185 = 0;
  }

  v188 = *(v21 + 49);
  v189 = *(v21 + 50);
  v190 = *(v21 + 10);
  typed = *&a5->value;
  v191 = CMBaseObjectGetVTable();
  v200 = *(v191 + 16);
  v199 = v191 + 16;
  if (!*(v200 + 16))
  {
    v155 = 4294954514;
    if (!v187)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  OUTLINED_FUNCTION_35_11(v199, v192, v193, v194, v195, v196, v197, v198, v219, v225, v231, v237, typed);
  v202 = v201(v188, v189, &time, &v289, v190, fbaprp_bufferedAirPlayOutputStartedCallback, v131, v185, v129);
  if (!v202)
  {
    goto LABEL_68;
  }

  v155 = v202;
  if (v187)
  {
    goto LABEL_71;
  }

LABEL_72:
  v131 = 0;
  if (v185)
  {
LABEL_73:
    CFRelease(v185);
  }

LABEL_82:
  fbaprp_releaseSetRateContext(v131);
  return v155;
}