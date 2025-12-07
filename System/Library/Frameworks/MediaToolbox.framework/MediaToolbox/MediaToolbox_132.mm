uint64_t appendSampleGroupDescriptionAtoms(void *a1, uint64_t (*a2)(void, CFDictionaryRef *), uint64_t a3)
{
  v42 = a3;
  v5 = a1;
  theDict = 0;
  v6 = a2(*a1, &theDict);
  if (v6)
  {
    v11 = v6;
    v12 = 0;
    v9 = 0;
  }

  else
  {
    Count = FigCFDictionaryGetCount();
    if (Count)
    {
      v8 = Count;
      if (Count >> 61)
      {
        v9 = 0;
LABEL_5:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v40, v42);
        v11 = v10;
        v12 = 0;
        goto LABEL_57;
      }

      v9 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
      if (!v9)
      {
        goto LABEL_5;
      }

      v13 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
      if (!v13)
      {
        goto LABEL_5;
      }

      v12 = v13;
      v41 = v4;
      CFDictionaryGetKeysAndValues(theDict, v9, v13);
      v14 = 0;
      OUTLINED_FUNCTION_25_29();
      v45 = v5;
      allocator = *v15;
      v43 = v8;
      v44 = v12;
      while (1)
      {
        v16 = v9[v14];
        if (*(v5 + 36))
        {
          v17 = 0;
        }

        else
        {
          v17 = v16 == v3;
        }

        if (v17)
        {
          goto LABEL_46;
        }

        v18 = v12[v14];
        v49 = 0;
        theArray = 0;
        HIDWORD(v48) = 0;
        v19 = MovieSampleGroupDescriptionArrayCopyInfo(v18, 0, &theArray, 0, &v49, &v48 + 1);
        if (v19)
        {
          v11 = v19;
        }

        else
        {
          v20 = theArray;
          if (theArray)
          {
            v3 = v49;
            v21 = CFArrayGetCount(theArray);
            Mutable = CFDataCreateMutable(allocator, 0);
            if (Mutable)
            {
              v23 = Mutable;
              v24 = v9;
              if (v21 >= 1)
              {
                for (i = 0; i != v21; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
                  BytePtr = CFDataGetBytePtr(ValueAtIndex);
                  Length = CFDataGetLength(ValueAtIndex);
                  v29 = Length;
                  if (!v3)
                  {
                    *bytes = bswap32(Length);
                    CFDataAppendBytes(v23, bytes, 4);
                  }

                  CFDataAppendBytes(v23, BytePtr, v29);
                }
              }

              v30 = v49;
              v31 = HIDWORD(v48);
              v53[0] = v16;
              OUTLINED_FUNCTION_16_43();
              if (v21)
              {
                if (v31)
                {
                  LODWORD(v3) = 2;
                }

                else
                {
                  LODWORD(v3) = 1;
                }

                v32 = FigAtomWriterInitWithParent();
                if (v32)
                {
                  v11 = v32;
                  v9 = v24;
                  v5 = v45;
                  v8 = v43;
                }

                else
                {
                  v33 = FigAtomWriterBeginAtom();
                  v8 = v43;
                  if (v33 || (v33 = FigAtomWriterAppendVersionAndFlags(), v33) || (v53[0] = bswap32(v16), v33 = FigAtomWriterAppendData(), v33) || (HIDWORD(v51) = bswap32(v30), v33 = FigAtomWriterAppendData(), v33))
                  {
                    v11 = v33;
                    v9 = v24;
LABEL_33:
                    v5 = v45;
                  }

                  else
                  {
                    v9 = v24;
                    if (v31)
                    {
                      v34 = OUTLINED_FUNCTION_37_24(bswap32(v31), v39, v41, v42, v43, v44, v45, allocator, theDict, v48, v49, theArray, v51);
                      if (v34)
                      {
                        v11 = v34;
                        goto LABEL_33;
                      }
                    }

                    appended = OUTLINED_FUNCTION_37_24(bswap32(v21), v39, v41, v42, v43, v44, v45, allocator, theDict, v48, v49, theArray, v51);
                    v5 = v45;
                    if (!appended)
                    {
                      CFDataGetBytePtr(v23);
                      CFDataGetLength(v23);
                      appended = FigAtomWriterAppendData();
                    }

                    v11 = appended;
                  }
                }

                OUTLINED_FUNCTION_25_29();
                v12 = v44;
              }

              else
              {
                v11 = 0;
                v9 = v24;
                v12 = v44;
                v5 = v45;
                v8 = v43;
                OUTLINED_FUNCTION_25_29();
              }

              FigAtomWriterEndAtom();
              goto LABEL_42;
            }
          }

          else
          {
            v35 = CFDataCreateMutable(allocator, 0);
            if (v35)
            {
              v23 = v35;
              OUTLINED_FUNCTION_16_43();
              FigAtomWriterEndAtom();
              v11 = 0;
              OUTLINED_FUNCTION_25_29();
LABEL_42:
              CFRelease(v23);
              goto LABEL_43;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v41, v42);
          v11 = v37;
          if (!v37)
          {
            OUTLINED_FUNCTION_16_43();
            FigAtomWriterEndAtom();
          }

          OUTLINED_FUNCTION_25_29();
        }

LABEL_43:
        if (theArray)
        {
          CFRelease(theArray);
        }

        if (v11)
        {
          goto LABEL_57;
        }

LABEL_46:
        if (++v14 == v8)
        {
          goto LABEL_56;
        }
      }
    }

    v12 = 0;
    v9 = 0;
LABEL_56:
    v11 = 0;
  }

LABEL_57:
  free(v12);
  free(v9);
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v11;
}

uint64_t appendMetadataFromMetadataSerializerDictionary(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  value = 0;
  v6 = *MEMORY[0x1E695E480];
  Count = CFDictionaryGetCount(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(v6, Count, a1);
  v9 = CFDictionaryGetValue(MutableCopy, @"com.apple.itunes");
  if (!v9)
  {
LABEL_34:
    if (FigFileTypeIsQTMovieFileType(a2))
    {
      v25 = CFDictionaryGetValue(MutableCopy, @"com.apple.quicktime.mdta");
      if (v25)
      {
        appended = appendMetadataToAtomWriter(v25, a3);
        if (appended)
        {
          goto LABEL_46;
        }
      }

      v26 = @"com.apple.quicktime.udta";
    }

    else
    {
      v26 = @"org.mp4ra";
    }

    v27 = CFDictionaryGetValue(MutableCopy, v26);
    if (!v27)
    {
      v24 = 0;
      goto LABEL_40;
    }

    appended = appendMetadataToAtomWriter(v27, a3);
    goto LABEL_46;
  }

  v10 = v9;
  if (FigFileTypeIsQTMovieFileType(a2))
  {
    v11 = &kFigMetadataFormat_QuickTimeUserData;
  }

  else
  {
    v11 = &kFigMetadataFormat_ISOUserData;
  }

  v12 = *v11;
  v13 = CFDictionaryGetValue(MutableCopy, *v11);
  value = v13;
  if (v13)
  {
    value = CFRetain(v13);
  }

  else
  {
    createMetadataSerializerForFormat(v12, v6, &value);
    if (appended)
    {
LABEL_46:
      v24 = appended;
      goto LABEL_40;
    }

    CFDictionaryAddValue(MutableCopy, v12, value);
  }

  cf = 0;
  theBuffer = 0;
  v15 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v15)
  {
LABEL_27:
    v24 = 4294954514;
    goto LABEL_28;
  }

  CFDataWithBlockBufferNoCopy = v15(v10, &theBuffer);
  if (CFDataWithBlockBufferNoCopy)
  {
    goto LABEL_26;
  }

  if (theBuffer)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength))
    {
      blockBufferOut = 0;
      CFDataWithBlockBufferNoCopy = CMBlockBufferCreateContiguous(v6, theBuffer, v6, 0, 0, DataLength, 0, &blockBufferOut);
      if (CFDataWithBlockBufferNoCopy)
      {
        goto LABEL_26;
      }

      v18 = theBuffer;
      theBuffer = blockBufferOut;
      if (blockBufferOut)
      {
        CFRetain(blockBufferOut);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }
    }

    CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
    if (!CFDataWithBlockBufferNoCopy)
    {
      if (FigFileTypeIsQTMovieFileType(a2))
      {
        v19 = kFigUserDataKeyspace;
      }

      else
      {
        v19 = kFigISOUserDataKeyspace;
      }

      FigMetadataSerializerGetFigMetadataWriter();
      v21 = v20;
      v22 = cf;
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v23)
      {
        CFDataWithBlockBufferNoCopy = v23(v21, *v19, @"meta", v22, 0);
        goto LABEL_26;
      }

      goto LABEL_27;
    }

LABEL_26:
    v24 = CFDataWithBlockBufferNoCopy;
    goto LABEL_28;
  }

  v24 = 0;
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (!v24)
  {
    CFDictionaryRemoveValue(MutableCopy, @"com.apple.itunes");
    goto LABEL_34;
  }

LABEL_40:
  if (value)
  {
    CFRelease(value);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v24;
}

uint64_t appendMetadataToAtomWriter(uint64_t a1, uint64_t a2)
{
  theBuffer = 0;
  v3 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v3)
  {
    return 4294954514;
  }

  v4 = v3(a1, &theBuffer);
  v5 = theBuffer;
  if (v4)
  {
    appended = v4;
    if (!theBuffer)
    {
      return appended;
    }

LABEL_5:
    CFRelease(v5);
    return appended;
  }

  if (!theBuffer)
  {
    return 0;
  }

  CMBlockBufferGetDataLength(theBuffer);
  appended = FigAtomWriterAppendBlockBufferData();
  v5 = theBuffer;
  if (theBuffer)
  {
    goto LABEL_5;
  }

  return appended;
}

void MovieHeaderMakerAddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerAddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerAddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerSetShouldWriteMovieExtendsAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerSetShouldAllow64BitDataOffsetInTrackRunAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerSetMovieMetadataBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetTrackMetadataBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetTrackMetadataBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetSampleReferenceBaseURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetSampleReferenceBaseURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerAddByteCountToTrackRunDataOffsets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteEditAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerSetShouldWriteBaseMediaDecodeTimeAtomInTrackFragment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerSetShouldWriteBaseDataOffsetIsMovieFragmentAtomFlagInTrackFragment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerAddByteCountToChunkOffsets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackDidWriteEditAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackDidWriteEditAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerTrackDidWriteEditAtom_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeMajorBrand_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeMajorBrand_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeMinorVersion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeMinorVersion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void createMetadataSerializerDictionaryWithMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void createMetadataSerializerDictionaryWithMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigGetMatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility(const void *a1, uint64_t a2)
{
  if (_MergedGlobals_103 == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_14:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, cf, v12);
    return 0;
  }

  OUTLINED_FUNCTION_0_162();
  dispatch_once_f(v7, v8, v9);
  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!qword_1ED4CB680)
  {
    return 0;
  }

  FigCFDictionaryGetValue();
  if (!FigCFArrayContainsAnyValueInArray() || (Value = FigCFDictionaryGetValue()) == 0)
  {
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    FigCFDictionaryGetValue();
    FigCFEqual();
    FigCFArrayApplyFunction();
    if (v5)
    {
      CFRelease(v5);
    }

    FigCFArrayApplyFunction();
    return 0;
  }

  return Value;
}

void CopyOptionWithMatchingLanguageTag(const void *a1, uint64_t a2)
{
  Value = FigCFDictionaryGetValue();
  if (*(a2 + 8) && !*(a2 + 16))
  {
    if (!FigCFEqual())
    {
      return;
    }
  }

  else if (Value && !FigCFEqual())
  {
    return;
  }

  Mutable = *a2;
  if (*a2 || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*a2 = Mutable) != 0))
  {

    CFArrayAppendValue(Mutable, a1);
  }
}

CFMutableArrayRef MatchEveryCharacteristic(uint64_t a1, CFMutableArrayRef *a2)
{
  FigCFDictionaryGetValue();
  result = FigCFArrayContainsEachValueInArray();
  if (result)
  {
    if (*a2 || (result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*a2 = result) != 0))
    {

      return FigCFArrayAppendValue();
    }
  }

  return result;
}

void FigCFAppendStringWithSmartComma_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCFAppendStringWithSmartComma_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t pwdKeyExchangeReceiverAOCP_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294947742;
  if (a2 && a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    if (CFEqual(a2, @"PWDReceiverCryptor"))
    {
      v10 = 0;
      v7 = pwdKeyExchangeReceiverAOCP_EnsureAndCopyCryptorWrappingDecryptor(v8, &v10);
      if (!v7)
      {
        *a4 = v10;
      }
    }

    else
    {
      v7 = 0;
    }

    FigSimpleMutexUnlock();
  }

  return v7;
}

uint64_t pwdKeyExchangeReceiverAOCP_EnsureAndCopyCryptorWrappingDecryptor(uint64_t a1, void *a2)
{
  v14 = 0;
  cf = 0;
  if (!a1)
  {
    return 4294947742;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v6 || v6(v5, &v14))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17648, 4294947741, "<<<< FigPWDKeyExchangeReceiver_AOCP >>>>", 202, v2);
LABEL_17:
      v11 = v12;
      goto LABEL_18;
    }

    if (*(a1 + 80) && v14 == *(a1 + 88))
    {
LABEL_13:
      v10 = *(a1 + 80);
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      v11 = 0;
      *a2 = v10;
      goto LABEL_18;
    }
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    if (!FigPKDCPELimitedCryptorCreateWithExternalProtectionMethods(v7, *(a1 + 112), *MEMORY[0x1E695E480], &cf))
    {
      v8 = *(a1 + 80);
      v9 = cf;
      *(a1 + 80) = cf;
      if (v9)
      {
        CFRetain(v9);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_13;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17648, 4294947741, "<<<< FigPWDKeyExchangeReceiver_AOCP >>>>", 214, v2);
    goto LABEL_17;
  }

  v11 = 4294947742;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_8(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

uint64_t FigTTMLCGColorCreateWithColorSyntax(const __CFString *a1)
{
  v5 = 0;
  v4 = 0;
  v3 = 0;
  FigTTMLParseColor(a1, &v5, &v4, &v3 + 1, &v3);
  if (v1)
  {
    return 0;
  }

  else
  {
    return FigCreateCGColorSRGB();
  }
}

uint64_t FigTTMLParseLengthSyntax(const __CFString *a1)
{
  v1 = *MEMORY[0x1E6962808];
  v3 = 0;
  if (!FigTTMLParseLength(a1, &v3 + 1, &v3) && v3 <= 5)
  {
    return FigGeometryDimensionMake();
  }

  return v1;
}

uint64_t videoReceiverCommon_receiveCAXPCImageQueueMessage(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  Identifier = CAImageQueueGetIdentifier();
  v7 = CAXPCImageQueueCommandForMessage();
  if (v7 == 4)
  {
    if (a3)
    {
      CFRelease(a3);
    }

    if (v5)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 24) + 24);
      if (v8)
      {
        v8(v5, Identifier);
      }
    }
  }

  else if (v5)
  {
    v9 = v7;
    v10 = *(CMBaseObjectGetVTable() + 24);
    if (v9 == 1)
    {
      v11 = *(v10 + 16);
      if (v11)
      {
        v11(v5, Identifier, 0, a2);
      }
    }

    else
    {
      v12 = *(v10 + 32);
      if (v12)
      {
        v12(v5, Identifier, a2);
      }
    }
  }

  return FigDeferCFRelease();
}

uint64_t FigVideoReceiverCommonCreateEndpointID(uint64_t a1, void *a2)
{
  cf = 0;
  value = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || (v5(a1, @"ConnectionHelper", v4, &cf), (v6 = cf) == 0))
  {
    v7 = FigVideoReceiverConnectionHelperCreate(v4, a1, &cf);
    if (v7)
    {
      goto LABEL_13;
    }

    v8 = cf;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v9)
    {
      v10 = 4294954514;
      goto LABEL_10;
    }

    v7 = v9(a1, @"ConnectionHelper", v8);
    if (v7)
    {
LABEL_13:
      v10 = v7;
      goto LABEL_10;
    }

    v6 = cf;
  }

  v10 = FigVideoReceiverConnectionHelperCopyBootstrapEndpoint(v6, &value);
  if (!v10)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v11, kFigVideoReceiverEndpoint, value);
    *a2 = v11;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_1(const void *a1, const void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a3 = v6;
  CFRelease(a1);
  CFRelease(a2);
}

uint64_t aqOfflineMixer_processUntilHighWaterMet(uint64_t a1)
{
  v425 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6960C70];
  dictionaryRepresentation.value = 0;
  v334 = *MEMORY[0x1E6960C70];
  v422.value = *MEMORY[0x1E6960C70];
  HIDWORD(v332) = *(MEMORY[0x1E6960C70] + 8);
  v422.timescale = HIDWORD(v332);
  FigSimpleMutexLock();
  v357 = (a1 + 432);
  if ((*(a1 + 444) & 1) != 0 || CFArrayGetCount(*(a1 + 296)) != 1)
  {
    FigSimpleMutexUnlock();
    value_low = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 296), 0);
    if (ValueAtIndex)
    {
      value_low = CFRetain(ValueAtIndex);
    }

    else
    {
      value_low = 0;
    }

    FigSimpleMutexUnlock();
    v5 = CFGetAllocator(value_low);
    if (!FigAudioQueueCopyProperty(value_low, @"DynamicLatency", v5, &dictionaryRepresentation))
    {
      CMTimeMakeFromDictionary(&time.duration, dictionaryRepresentation.value);
      v422.value = time.duration.value;
      flags = time.duration.flags;
      v422.timescale = time.duration.timescale;
      if (time.duration.flags)
      {
        epoch = time.duration.epoch;
        v357->value = v422.value;
        *(a1 + 440) = v422.timescale;
        *(a1 + 444) = flags;
        *(a1 + 448) = epoch;
        if (*(a1 + 216) == 1819304813)
        {
          *(a1 + 408) = v422.value;
          *(a1 + 416) = v422.timescale;
          *(a1 + 420) = flags;
          *(a1 + 424) = epoch;
        }

        else if (!*(a1 + 350))
        {
          OUTLINED_FUNCTION_26_31((a1 + 356));
          *&rhs.duration.value = *&v357->value;
          rhs.duration.epoch = *(a1 + 448);
          CMTimeAdd(&time.duration, &lhs, &rhs.duration);
          *(a1 + 380) = *&time.duration.value;
          *(a1 + 396) = time.duration.epoch;
        }
      }
    }
  }

  if (dictionaryRepresentation.value)
  {
    CFRelease(dictionaryRepresentation.value);
  }

  v326 = (a1 + 408);
  if (value_low)
  {
    CFRelease(value_low);
  }

  FigSimpleMutexLock();
  v359 = a1 + 324;
  v409 = *(a1 + 324);
  v410 = *(a1 + 332);
  v380 = a1 + 340;
  v366 = *(a1 + 340);
  LODWORD(v368) = *(a1 + 336);
  HIDWORD(v368) = v368 & 0x1D;
  v8 = HIDWORD(v368) == 1;
  FigSimpleMutexUnlock();
  v9 = FigSimpleMutexLock();
  if (dword_1EAF17670)
  {
    HIDWORD(v372) = (v368 & 0x1D) == 1;
    v18 = OUTLINED_FUNCTION_6_88(v9, v10, v11, v12, v13, v14, v15, v16, blockBufferOut, v292, sampleSizeArray, v296, v298, v300, v302, v304, v306, v310, v313, v315, v319, v323, v326, v328, v332, v334, v336, v340, v344, *(&v344 + 1), v347, allocator, key, v357, v359, v361, v366, v368, v370, v372, v373, v375, v376, v378, v379, v380, v381, v384, v385, *(&v385 + 1), v386.value, *&v386.timescale, v386.epoch, v387.value, *&v387.timescale, v387.epoch, v388.value, *&v388.timescale, v388.epoch, timingArrayEntriesNeededOut, rhs.duration.value);
    value_low = LODWORD(rhs.duration.value);
    v19 = LOBYTE(v422.value);
    if (os_log_type_enabled(v18, v422.value))
    {
      v20 = value_low;
    }

    else
    {
      v20 = value_low & 0xFFFFFFFE;
    }

    if (v20)
    {
      v21 = *(a1 + 75);
      v22 = *(a1 + 321);
      v23 = *(*(OUTLINED_FUNCTION_35_21() + 16) + 16);
      LODWORD(v385) = v22;
      if (v23)
      {
        v382 = v23(value_low);
      }

      else
      {
        v382 = 0;
      }

      v24 = *(a1 + 32);
      VTable = CMBaseObjectGetVTable();
      v34 = *(VTable + 16);
      v33 = VTable + 16;
      v35 = *(v34 + 24);
      v36 = v21;
      if (v35)
      {
        v33 = v35(v24);
        v37 = v33;
      }

      else
      {
        v37 = 0;
      }

      v38 = *(a1 + 322);
      v39 = *(a1 + 74);
      OUTLINED_FUNCTION_2_146(v33, v26, v27, v28, v29, v30, v31, v32, blockBufferOut, v292, sampleSizeArray, v296, v298, v300, v302, v304, v307, v311, v313, v316, v320, v324, v326, v329, v332, v334, v337, v341, v344, *(&v344 + 1), v347, allocatora, keya, v357, v359, v362, v366, v368);
      Seconds = CMTimeGetSeconds(&time.duration);
      LODWORD(lhs.value) = 136317954;
      v41 = "No (";
      if (HIDWORD(v368) == 1)
      {
        v41 = "Until ";
      }

      *(&lhs.value + 4) = "aqOfflineMixer_processUntilHighWaterMet";
      v42 = ")";
      LOWORD(lhs.flags) = 2048;
      if (HIDWORD(v368) == 1)
      {
        v42 = "";
      }

      *(&lhs.flags + 2) = a1;
      HIWORD(lhs.epoch) = 2082;
      v404 = a1 + 456;
      v405 = 1024;
      *v406 = v36;
      *&v406[4] = 1024;
      *&v406[6] = v385;
      *&v406[10] = 1024;
      *&v406[12] = v382;
      *&v406[16] = 1024;
      *&v406[18] = v37;
      *&v406[22] = 1024;
      *&v406[24] = v38;
      *&v406[28] = 1024;
      *&v406[30] = v39;
      *&v406[34] = 2082;
      *&v406[36] = v41;
      *&v406[44] = 2048;
      *&v406[46] = Seconds;
      *&v406[54] = 2082;
      *&v406[56] = v42;
      OUTLINED_FUNCTION_9_58();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v43, v44, v45, v46, v47, v18, v19, v48);
      value_low = LODWORD(rhs.duration.value);
      v2 = MEMORY[0x1E6960C70];
    }

    OUTLINED_FUNCTION_7();
    v9 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = HIDWORD(v372);
  }

  v363 = a1 + 456;
  v342 = a1 + 504;
  v338 = (a1 + 528);
  allocatorb = *MEMORY[0x1E695E480];
  keyb = *MEMORY[0x1E6960560];
  v49 = v2[1].n128_i64[0];
  LODWORD(v317) = *(MEMORY[0x1E6960CC0] + 12);
  HIDWORD(v317) = v2->n128_u32[3];
  v371 = *(MEMORY[0x1E6960CC0] + 16);
  v330 = *MEMORY[0x1E6960558];
  *&v17 = 136317442;
  v321 = v17;
  *&v17 = 136316674;
  v308 = v17;
  v377 = xmmword_196E73080;
  v374 = xmmword_196E73090;
  v50 = vdupq_n_s64(4uLL);
  for (i = v50; ; v50 = i)
  {
    if (!*(a1 + 75) || !*(a1 + 321) || (v51 = OUTLINED_FUNCTION_35_21(), v50 = i, v52 = *(v51 + 16), v9 = v51 + 16, (v53 = *(v52 + 16)) != 0) && (v9 = v53(value_low), v50 = i, v9))
    {
      if (!(*(a1 + 322) | v8))
      {
        v8 = 0;
        goto LABEL_233;
      }
    }

    if (*(a1 + 74))
    {
      goto LABEL_233;
    }

    v395 = 0;
    *&v394.value = *v2;
    v394.epoch = v49;
    *&v393.value = *&v394.value;
    v393.epoch = v49;
    v385 = *&v394.value;
    *&v392.value = *&v394.value;
    v392.epoch = v49;
    v391 = 0;
    memset(&rhs, 0, sizeof(rhs));
    timingArrayEntriesNeededOut = 0;
    v54 = *(a1 + 280);
    v55 = *v54;
    if (v55)
    {
      v56 = *(a1 + 276);
      v57 = (v55 + 3) & 0x1FFFFFFFCLL;
      v58 = vdupq_n_s64(v55 - 1);
      v59 = v54 + 11;
      v60 = xmmword_196E73090;
      v61 = xmmword_196E73080;
      do
      {
        v62 = vmovn_s64(vcgeq_u64(v58, v60));
        if (vuzp1_s16(v62, *v58.i8).u8[0])
        {
          *(v59 - 8) = v56;
        }

        if (vuzp1_s16(v62, *&v58).i8[2])
        {
          *(v59 - 4) = v56;
        }

        if (vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v61))).i32[1])
        {
          *v59 = v56;
          v59[4] = v56;
        }

        v61 = vaddq_s64(v61, v50);
        v60 = vaddq_s64(v60, v50);
        v59 += 16;
        v57 -= 4;
      }

      while (v57);
    }

    v9 = AQOfflineMixerRender();
    if (v9)
    {
      v63 = v9;
      goto LABEL_65;
    }

    *(a1 + 320) = v391;
    v64 = v395;
    if (!v395 || *(a1 + 322))
    {
      v65 = 0;
      v66 = 0;
LABEL_54:
      OUTLINED_FUNCTION_1_152();
      lhs = *(a1 + 124);
      v67 = OUTLINED_FUNCTION_17_39();
      v9 = CMTimeCompare(v67, v68);
      if ((v9 & 0x80000000) == 0)
      {
        *(a1 + 322) = 1;
      }

      if (*(a1 + 320) || *(a1 + 322))
      {
        if (!*(a1 + 348))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v9 = CMNotificationCenterPostNotification();
          *(a1 + 348) = 1;
        }

        v63 = 0;
        *(a1 + 75) = 0;
      }

      else
      {
        v63 = 0;
      }

      goto LABEL_61;
    }

    theBuffer.value = 0;
    sbuf.value = 0;
    dataPointerOut = 0;
    OUTLINED_FUNCTION_24_28();
    if (v70)
    {
      v71 = (*(a1 + 220) >> 5) & 1;
    }

    else
    {
      LOBYTE(v71) = 0;
    }

    v72 = *(a1 + 228);
    HIDWORD(v372) = v8;
    if (v72)
    {
      v73 = (v72 * v64);
      v74 = *(a1 + 256);
      *(v74 + 48) = v385;
      *(v74 + 64) = v49;
      v75 = *(a1 + 256);
      v76 = *(a1 + 116);
      *(v75 + 24) = *(a1 + 100);
      *(v75 + 40) = v76;
      v77 = *(a1 + 256);
      CMTimeMake(&time.duration, *(a1 + 228), *(a1 + 96));
      v78 = *&time.duration.value;
      *(v77 + 16) = time.duration.epoch;
      *v77 = v78;
      v79 = 1;
    }

    else
    {
      v80 = 0;
      v73 = 0;
      OUTLINED_FUNCTION_1_152();
      v81 = 8;
      v82 = v64;
      do
      {
        v73 += *(*(a1 + 248) + v81);
        v83 = *(a1 + 256) + v80;
        *(v83 + 48) = v385;
        *(v83 + 64) = v49;
        v84 = *(a1 + 256) + v80;
        v85 = time.duration.epoch;
        *(v84 + 24) = *&time.duration.value;
        *(v84 + 40) = v85;
        v86 = *(a1 + 256) + v80;
        CMTimeMake(&lhs, *(*(a1 + 248) + v81), *(a1 + 96));
        v87 = *&lhs.value;
        *(v86 + 16) = lhs.epoch;
        *v86 = v87;
        v88 = (*(a1 + 256) + v80);
        lhs = time.duration;
        v89 = *v88;
        v422.epoch = *(v88 + 2);
        *&v422.value = v89;
        v90 = OUTLINED_FUNCTION_5_101();
        CMTimeAdd(v92, v90, v91);
        v80 += 72;
        v81 += 16;
        --v82;
      }

      while (v82);
      v79 = v64;
      v2 = MEMORY[0x1E6960C70];
    }

    v93 = *(a1 + 224);
    if (v93)
    {
      value_low = (v93 * v64);
      if (v71)
      {
        v94 = 0;
      }

      else
      {
        **(a1 + 264) = v93;
        v94 = 1;
      }
    }

    else
    {
      value_low = 0;
      v95 = *(a1 + 264);
      v96 = (*(a1 + 248) + 12);
      v97 = v64;
      do
      {
        v98 = *v96;
        v96 += 4;
        value_low += v98;
        *v95++ = v98;
        --v97;
      }

      while (v97);
      v94 = v64;
    }

    v99 = **(a1 + 280);
    DataPointer = CMBlockBufferCreateWithMemoryBlock(*(a1 + 40), 0, value_low * v99, *(a1 + 40), 0, 0, value_low * v99, 0, &theBuffer);
    if (DataPointer || (DataPointer = CMBlockBufferAssureBlockMemory(theBuffer.value)) != 0 || (DataPointer = CMBlockBufferGetDataPointer(theBuffer.value, 0, 0, 0, &dataPointerOut)) != 0)
    {
      v63 = DataPointer;
      v69 = 0;
      v73 = 0;
      v8 = HIDWORD(v372);
      goto LABEL_132;
    }

    if (v99 >= 1)
    {
      v101 = dataPointerOut;
      v102 = 16;
      do
      {
        memcpy(v101, *(*(a1 + 280) + v102), value_low);
        v101 = &dataPointerOut[value_low];
        dataPointerOut += value_low;
        v102 += 16;
        --v99;
      }

      while (v99);
    }

    v103 = CMSampleBufferCreate(*(a1 + 40), theBuffer.value, 1u, 0, 0, *(a1 + 200), v64, v79, *(a1 + 256), v94, *(a1 + 264), &sbuf);
    v8 = HIDWORD(v372);
    if (v103)
    {
      v63 = v103;
      v69 = 0;
      v73 = 0;
      v2 = MEMORY[0x1E6960C70];
      goto LABEL_132;
    }

    v2 = MEMORY[0x1E6960C70];
    if (*(a1 + 404))
    {
      sampleBufferOut = 0;
      value_low = CMSampleBufferGetNumSamples(sbuf.value);
      *&lhs.value = v385;
      lhs.epoch = v49;
      memset(&v422, 0, sizeof(v422));
      CMSampleBufferGetOutputDuration(&v422, sbuf.value);
      memcpy(&time, MEMORY[0x1E6960CF0], sizeof(time));
      *&dictionaryRepresentation.value = *MEMORY[0x1E6960CC0];
      dictionaryRepresentation.epoch = v371;
      v344 = *&dictionaryRepresentation.value;
      if (value_low >= 1)
      {
        v104 = 0;
        while (1)
        {
          SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(sbuf.value, v104, &time);
          if (SampleTimingInfo)
          {
            break;
          }

          duration = dictionaryRepresentation;
          *&v398.value = *&time.duration.value;
          OUTLINED_FUNCTION_22_32(time.duration.epoch);
          CMTimeAdd(v108, v106, v107);
          duration = *(v380 + 40);
          v109 = OUTLINED_FUNCTION_15_46();
          if (CMTimeCompare(v109, v110) > 0)
          {
            goto LABEL_99;
          }

          OUTLINED_FUNCTION_8_62();
          duration = time.duration;
          v111 = OUTLINED_FUNCTION_15_46();
          CMTimeAdd(v113, v111, v112);
          if (value_low == ++v104)
          {
            v104 = value_low;
LABEL_99:
            value_low = v104;
            goto LABEL_101;
          }
        }

LABEL_223:
        v63 = SampleTimingInfo;
LABEL_109:
        v69 = 0;
        v73 = 0;
        goto LABEL_132;
      }

      LODWORD(v104) = 0;
      value_low = 0;
LABEL_101:
      OUTLINED_FUNCTION_8_62();
      *&duration.value = v114;
      duration.epoch = v115;
      v116 = OUTLINED_FUNCTION_15_46();
      v118 = v117;
      if (CMTimeCompare(v116, v119) < 1)
      {
        *(v380 + 40) = v344;
        *(v380 + 56) = v118;
        *(a1 + 404) = 0;
      }

      else
      {
        duration = *(v380 + 40);
        *&v398.value = *&dictionaryRepresentation.value;
        OUTLINED_FUNCTION_22_32(dictionaryRepresentation.epoch);
        CMTimeSubtract(v122, v120, v121);
        *(v380 + 40) = outputPresentationTimeStamp;
        OUTLINED_FUNCTION_8_62();
        duration = v422;
        v123 = OUTLINED_FUNCTION_15_46();
        if (!CMTimeCompare(v123, v124))
        {
          v63 = 0;
          goto LABEL_109;
        }

        v426.length = CMSampleBufferGetNumSamples(sbuf.value) - value_low;
        v426.location = value_low;
        SampleTimingInfo = CMSampleBufferCopySampleBufferForRange(*(a1 + 40), sbuf.value, v426, &sampleBufferOut);
        if (SampleTimingInfo)
        {
          goto LABEL_223;
        }

        CMSampleBufferGetOutputPresentationTimeStamp(&lhs, sbuf.value);
        outputPresentationTimeStamp = lhs;
        SampleTimingInfo = CMSampleBufferSetOutputPresentationTimeStamp(sampleBufferOut, &outputPresentationTimeStamp);
        if (SampleTimingInfo)
        {
          goto LABEL_223;
        }

        *(v380 + 40) = v344;
        *(v380 + 56) = v371;
        *(a1 + 404) = 0;
        v125 = *(a1 + 228);
        if (v125)
        {
          v73 -= (v125 * v104);
        }

        else if (v104)
        {
          v126 = v104;
          v127 = (*(a1 + 248) + 8);
          do
          {
            v128 = *v127;
            v127 += 4;
            v73 -= v128;
            --v126;
          }

          while (v126);
        }

        value_low = sbuf.value;
        sbuf.value = sampleBufferOut;
        if (sampleBufferOut)
        {
          CFRetain(sampleBufferOut);
        }

        if (value_low)
        {
          CFRelease(value_low);
        }

        if (sampleBufferOut)
        {
          CFRelease(sampleBufferOut);
        }
      }
    }

    v129 = v73 / *(a1 + 96);
    v130 = *(a1 + 468);
    *(a1 + 468) = v130 + 1;
    if (v130 < 10)
    {
      goto LABEL_123;
    }

    v131 = v129 + *(a1 + 472);
    *(a1 + 472) = v131;
    if (v131 >= 1.0)
    {
      *(a1 + 472) = v131 + -1.0;
LABEL_123:
      v132 = 1;
      goto LABEL_124;
    }

    v132 = 3;
LABEL_124:
    if (v132 <= dword_1EAF17670)
    {
      value_low = OUTLINED_FUNCTION_14_50();
      value = v422.value;
      v134 = LOBYTE(dictionaryRepresentation.value);
      if (os_log_type_enabled(value_low, dictionaryRepresentation.value))
      {
        v135 = value;
      }

      else
      {
        v135 = value & 0xFFFFFFFE;
      }

      if (v135)
      {
        v136 = *(a1 + 468);
        v137 = sbuf.value;
        v138 = v129;
        OUTLINED_FUNCTION_1_152();
        v139 = CMTimeGetSeconds(&time.duration);
        OUTLINED_FUNCTION_1_152();
        v140 = CMTimeGetSeconds(&time.duration);
        LODWORD(lhs.value) = v321;
        *(&lhs.value + 4) = "aqOfflineMixer_createSampleBuffer";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = a1;
        HIWORD(lhs.epoch) = 2082;
        v404 = v363;
        v405 = 1024;
        *v406 = v136;
        *&v406[4] = 2048;
        *&v406[6] = v137;
        *&v406[14] = 2048;
        *&v406[16] = v138;
        *&v406[24] = 2048;
        *&v406[26] = v139;
        *&v406[34] = 2048;
        *&v406[36] = v140 + v138;
        *&v406[44] = 1024;
        *&v406[46] = v64;
        *&v406[50] = 1024;
        *&v406[52] = v73;
        OUTLINED_FUNCTION_9_58();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v141, v142, v143, v144, &dword_1962D5000, value_low, v134, "<<<< FAQ Offline Mixer >>>> %s: [%p] %{public}s received #%d from AQOfflineMixer sampleBuffer: %p duration: %.3f [%.3f:%.3f] (%d packets, %d samples)");
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = HIDWORD(v372);
    }

    v63 = 0;
    v69 = sbuf.value;
    sbuf.value = 0;
LABEL_132:
    if (theBuffer.value)
    {
      CFRelease(theBuffer.value);
    }

    v9 = sbuf.value;
    if (sbuf.value)
    {
      CFRelease(sbuf.value);
    }

    v66 = 0;
    if (v63 || !v69)
    {
      goto LABEL_228;
    }

    CMTimeMake(&v394, v73, *(a1 + 96));
    OUTLINED_FUNCTION_28_28();
    v422 = v394;
    v145 = OUTLINED_FUNCTION_5_101();
    CMTimeAdd(v147, v145, v146);
    *(a1 + 100) = *&time.duration.value;
    *(a1 + 116) = time.duration.epoch;
    if (v8)
    {
      OUTLINED_FUNCTION_1_152();
      lhs.value = v409;
      lhs.timescale = v410;
      lhs.flags = v368;
      lhs.epoch = v366;
      v148 = OUTLINED_FUNCTION_17_39();
      value_low = CMTimeCompare(v148, v149);
      if (dword_1EAF17670)
      {
        v150 = OUTLINED_FUNCTION_14_50();
        v151 = v422.value;
        v152 = LOBYTE(dictionaryRepresentation.value);
        if (os_log_type_enabled(v150, dictionaryRepresentation.value))
        {
          v153 = v151;
        }

        else
        {
          v153 = v151 & 0xFFFFFFFE;
        }

        if (v153)
        {
          OUTLINED_FUNCTION_1_152();
          v154 = CMTimeGetSeconds(&time.duration);
          OUTLINED_FUNCTION_2_146(v155, v156, v157, v158, v159, v160, v161, v162, blockBufferOut, v292, sampleSizeArray, v296, v298, v300, v302, v304, v308, *(&v308 + 1), v313, v317, v321, *(&v321 + 1), v326, v330, v332, v334, v338, v342, v344, *(&v344 + 1), v347, allocatorb, keyb, v357, v359, v363, v366, v368);
          v163 = CMTimeGetSeconds(&time.duration);
          LODWORD(lhs.value) = v308;
          v164 = ">=";
          if (value_low < 0)
          {
            v164 = "<";
          }

          *(&lhs.value + 4) = "aqOfflineMixer_processUntilHighWaterMet";
          v165 = "drain completed";
          if (value_low < 0)
          {
            v165 = "continue draining";
          }

          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = a1;
          HIWORD(lhs.epoch) = 2082;
          v404 = v363;
          v405 = 2048;
          *v406 = v154;
          *&v406[8] = 2082;
          *&v406[10] = v164;
          *&v406[18] = 2048;
          *&v406[20] = v163;
          *&v406[28] = 2082;
          *&v406[30] = v165;
          LODWORD(v292) = 72;
          blockBufferOut = &lhs;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v166, v167, v168, v169, &dword_1962D5000, v150, v152, "<<<< FAQ Offline Mixer >>>> %s: [%p] %{public}s currentTime %1.3f %{public}s drainTime %1.2f => %{public}s");
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v8 = value_low >> 31;
    }

    else
    {
      v8 = 0;
    }

    OUTLINED_FUNCTION_24_28();
    v170 = v385;
    if (!v70)
    {
      goto LABEL_172;
    }

    if ((*(a1 + 420) & 1) == 0 || (value_low = v326, v326->value < 1))
    {
      v65 = v69;
      goto LABEL_159;
    }

    v171 = v8;
    dictionaryRepresentation.value = 0;
    *&time.duration.value = *&v326->value;
    OUTLINED_FUNCTION_18_40(v326->epoch);
    v172 = OUTLINED_FUNCTION_17_39();
    CMTimeMinimum(v174, v172, v173);
    lhs = *v326;
    v422 = v393;
    v175 = OUTLINED_FUNCTION_5_101();
    CMTimeSubtract(v177, v175, v176);
    OUTLINED_FUNCTION_25_30();
    CMSampleBufferGetNumSamples(v69);
    OUTLINED_FUNCTION_30_25();
    CMSampleBufferGetOutputDuration(v178, v69);
    v179 = *(a1 + 208);
    lhs = v393;
    CMTimeConvertScale(&v388, &lhs, v179, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value_low = v388.value;
    NumSamples = CMSampleBufferGetNumSamples(v69);
    v181 = NumSamples - value_low;
    if (NumSamples != value_low)
    {
      v187 = CFGetAllocator(v69);
      v427.location = value_low;
      v427.length = v181;
      v63 = CMSampleBufferCopySampleBufferForRange(v187, v69, v427, &dictionaryRepresentation);
      v8 = v171;
      if (v63)
      {
        goto LABEL_164;
      }

      v65 = dictionaryRepresentation.value;
      if (dictionaryRepresentation.value)
      {
        CFRetain(dictionaryRepresentation.value);
      }

      CFRelease(v69);
      if (dictionaryRepresentation.value)
      {
        CFRelease(dictionaryRepresentation.value);
      }

      v170 = v385;
LABEL_159:
      if (*(a1 + 444))
      {
        OUTLINED_FUNCTION_30_25();
        CMSampleBufferGetOutputPresentationTimeStamp(v182, v65);
        memset(&lhs, 0, sizeof(lhs));
        CMSampleBufferGetPresentationTimeStamp(&lhs, v65);
        memset(&v422, 0, sizeof(v422));
        CMTimeMake(&v422, *(a1 + 228), *(a1 + 96));
        CMSampleBufferGetPresentationTimeStamp(&outputPresentationTimeStamp, v65);
        duration = *v357;
        v183 = OUTLINED_FUNCTION_15_46();
        CMTimeSubtract(v185, v183, v184);
        rhs.presentationTimeStamp = dictionaryRepresentation;
        *&rhs.decodeTimeStamp.value = v385;
        rhs.decodeTimeStamp.epoch = v49;
        rhs.duration = v422;
        dictionaryRepresentation.value = 0;
        v186 = CFGetAllocator(v65);
        v9 = CMSampleBufferCreateCopyWithNewTiming(v186, v65, 1, &rhs, &dictionaryRepresentation);
        if (v9)
        {
          v63 = v9;
          v66 = 0;
          goto LABEL_61;
        }

        v69 = dictionaryRepresentation.value;
        if (dictionaryRepresentation.value)
        {
          CFRetain(dictionaryRepresentation.value);
        }

        if (v65)
        {
          CFRelease(v65);
        }

        if (dictionaryRepresentation.value)
        {
          CFRelease(dictionaryRepresentation.value);
        }

        CMSampleBufferGetOutputSampleTimingInfoArray(v69, 1, &rhs, &timingArrayEntriesNeededOut);
        v170 = v385;
      }

      else
      {
        v69 = v65;
      }

LABEL_172:
      HIDWORD(v372) = v8;
      if ((*(a1 + 420) & 1) != 0 && v326->value || (value_low = v380, *(v380 + 40) < 1))
      {
        v66 = 0;
      }

      else
      {
        *&time.duration.value = *(v380 + 40);
        OUTLINED_FUNCTION_18_40(*(v380 + 56));
        v188 = OUTLINED_FUNCTION_17_39();
        CMTimeMinimum(v190, v188, v189);
        lhs = *(v380 + 40);
        v422 = v392;
        v191 = OUTLINED_FUNCTION_5_101();
        CMTimeSubtract(v193, v191, v192);
        *(v380 + 40) = *&time.duration.value;
        *(v380 + 56) = time.duration.epoch;
        *&time.duration.value = *&v392.value;
        OUTLINED_FUNCTION_11_59(v392.epoch);
        v66 = CMTimeCopyAsDictionary(v194, allocatorb);
        if (!v66)
        {
          OUTLINED_FUNCTION_3_122();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v292, sampleSizeArray);
          v63 = v9;
LABEL_228:
          v65 = v69;
LABEL_61:
          v69 = v65;
          if (!v65)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        CMSetAttachment(v69, keyb, v66, 1u);
        v170 = v385;
      }

      *&time.duration.value = v170;
      time.duration.epoch = v49;
      *&lhs.value = v170;
      lhs.epoch = v49;
      v422.epoch = v49;
      dataPointerOut = v334;
      timescale = HIDWORD(v332);
      *&v422.value = v170;
      *&dictionaryRepresentation.value = v170;
      dictionaryRepresentation.epoch = v49;
      v414 = v334;
      v415 = HIDWORD(v332);
      v401 = 0;
      FigSimpleMutexLock();
      v412 = *(a1 + 172);
      v195 = *(a1 + 184);
      v413 = *(a1 + 180);
      v196 = *(a1 + 188);
      FigSimpleMutexUnlock();
      if ((v195 & 0x1D) != 1)
      {
        goto LABEL_203;
      }

      if (!v69)
      {
        OUTLINED_FUNCTION_3_122();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v292, sampleSizeArray);
        v65 = v401;
        goto LABEL_205;
      }

      CMSampleBufferGetDuration(&outputPresentationTimeStamp, v69);
      OUTLINED_FUNCTION_29();
      if (!v70 || (CMSampleBufferGetPresentationTimeStamp(&duration, v69), OUTLINED_FUNCTION_29(), !v70) || (CMSampleBufferGetOutputPresentationTimeStamp(&time.duration, v69), CMSampleBufferGetDuration(&v398, v69), dataPointerOut = v398.value, value_low = v398.flags, timescale = v398.timescale, v197 = v398.epoch, CMSampleBufferGetOutputDuration(&v422, v69), *&v398.value = *&time.duration.value, OUTLINED_FUNCTION_16_44(time.duration.epoch), v198 = OUTLINED_FUNCTION_20_33(), CMTimeAdd(v200, v198, v199), OUTLINED_FUNCTION_19_38(), v398.epoch = v196, theBuffer = lhs, v201 = OUTLINED_FUNCTION_20_33(), (CMTimeCompare(v201, v202) & 0x80000000) == 0) || (v203 = CFGetAllocator(v69), CMSampleBufferCreateCopy(v203, v69, &v401)))
      {
LABEL_203:
        v65 = v401;
        if (v401)
        {
          v8 = HIDWORD(v372);
          if (v69)
          {
            CFRelease(v69);
          }

          goto LABEL_208;
        }

        v65 = v69;
LABEL_205:
        v8 = HIDWORD(v372);
LABEL_208:
        v223 = *(*(OUTLINED_FUNCTION_35_21() + 16) + 8);
        if (v223)
        {
          v223(value_low, v65);
        }

        ++*(a1 + 476);
        CMSampleBufferGetPresentationTimeStamp(&v387, v65);
        if (v387.flags)
        {
          CMSampleBufferGetDuration(&v386, v65);
          if (v386.flags)
          {
            if ((*(a1 + 492) & 1) == 0)
            {
              CMSampleBufferGetPresentationTimeStamp(&time.duration, v65);
              *(a1 + 480) = *&time.duration.value;
              *(a1 + 496) = time.duration.epoch;
            }

            CMSampleBufferGetPresentationTimeStamp(&lhs, v65);
            CMSampleBufferGetDuration(&v422, v65);
            v224 = OUTLINED_FUNCTION_5_101();
            CMTimeAdd(v226, v224, v225);
            *v342 = *&time.duration.value;
            *(v342 + 16) = time.duration.epoch;
            CMSampleBufferGetDuration(&lhs, v65);
            value_low = v338;
            v422 = *v338;
            CMTimeAdd(&time.duration, &v422, &lhs);
            OUTLINED_FUNCTION_25_30();
          }
        }

        *(a1 + 350) = 1;
        *&time.duration.value = *(a1 + 148);
        time.duration.epoch = *(a1 + 164);
        OUTLINED_FUNCTION_28_28();
        if (aqOfflineMixer_passedTimelineMilestone(a1, &time, &lhs))
        {
          aqOfflineMixer_postMilestoneNotification(a1);
        }

        goto LABEL_54;
      }

      v302 = v197;
      v204 = CMGetAttachment(v69, keyb, 0);
      CMTimeMakeFromDictionary(&v398, v204);
      sampleBufferOut = v398.value;
      v205 = v398.flags;
      v421 = v398.timescale;
      if (v398.flags)
      {
        v206 = v398.epoch;
      }

      else
      {
        sampleBufferOut = *MEMORY[0x1E6960CC0];
        v421 = *(MEMORY[0x1E6960CC0] + 8);
        v205 = v317;
        v206 = v371;
      }

      *&v385 = v196;
      LODWORD(v344) = value_low;
      v207 = CMGetAttachment(v69, v330, 0);
      CMTimeMakeFromDictionary(&v398, v207);
      v418 = v398.value;
      v208 = v398.flags;
      v419 = v398.timescale;
      if (v398.flags)
      {
        v300 = v398.epoch;
        value_low = MEMORY[0x1E6960CC0];
        v209 = v371;
      }

      else
      {
        value_low = MEMORY[0x1E6960CC0];
        v418 = *MEMORY[0x1E6960CC0];
        v419 = *(MEMORY[0x1E6960CC0] + 8);
        v208 = v317;
        v209 = v371;
        v300 = v371;
      }

      OUTLINED_FUNCTION_19_38();
      v398.epoch = v385;
      theBuffer = time.duration;
      v210 = OUTLINED_FUNCTION_20_33();
      CMTimeSubtract(v212, v210, v211);
      theBuffer = dictionaryRepresentation;
      sbuf.value = sampleBufferOut;
      *&sbuf.timescale = __PAIR64__(v205, v421);
      sbuf.epoch = v206;
      OUTLINED_FUNCTION_21_33();
      dictionaryRepresentation = v398;
      *&theBuffer.value = *value_low;
      theBuffer.epoch = v209;
      v213 = OUTLINED_FUNCTION_20_33();
      if (CMTimeCompare(v213, v214) > 0)
      {
        *&v398.value = *&dictionaryRepresentation.value;
        OUTLINED_FUNCTION_16_44(dictionaryRepresentation.epoch);
        v218 = OUTLINED_FUNCTION_20_33();
        v220 = CMTimeCompare(v218, v219);
        v2 = MEMORY[0x1E6960C70];
        value_low = v344;
        if (v220 < 1)
        {
          theBuffer.value = v412;
          *&theBuffer.timescale = __PAIR64__(v195, v413);
          theBuffer.epoch = v385;
          sbuf = time.duration;
          OUTLINED_FUNCTION_21_33();
          v416 = v398.value;
          v417 = v398.timescale;
          theBuffer.value = dataPointerOut;
          *&theBuffer.timescale = __PAIR64__(v344, timescale);
          theBuffer.epoch = v302;
          sbuf = v398;
          OUTLINED_FUNCTION_21_33();
          v416 = v398.value;
          v208 = v398.flags;
          v417 = v398.timescale;
          v215 = v398.epoch;
          v216 = HIDWORD(v317);
          v217 = v49;
        }

        else
        {
          v416 = v418;
          v417 = v419;
          v216 = HIDWORD(v317);
          v217 = v49;
          v215 = v300;
        }
      }

      else
      {
        v416 = v334;
        v417 = HIDWORD(v332);
        v414 = dataPointerOut;
        v415 = timescale;
        v208 = HIDWORD(v317);
        v215 = v49;
        v2 = MEMORY[0x1E6960C70];
        v216 = v344;
        v217 = v302;
      }

      if ((v216 & 0x1D) == 1)
      {
        v398.value = v414;
        v398.timescale = v415;
        v398.flags = v216;
        v398.epoch = v217;
        v221 = CMTimeCopyAsDictionary(&v398, allocatorb);
        if (!v221)
        {
          goto LABEL_229;
        }

        value_low = v221;
        CMSetAttachment(v401, keyb, v221, 1u);
        CFRelease(value_low);
      }

      if ((v208 & 0x1D) != 1)
      {
        CMRemoveAttachment(v401, v330);
        goto LABEL_203;
      }

      v398.value = v416;
      v398.timescale = v417;
      v398.flags = v208;
      v398.epoch = v215;
      v222 = CMTimeCopyAsDictionary(&v398, allocatorb);
      if (v222)
      {
        value_low = v222;
        CMSetAttachment(v401, v330, v222, 1u);
        CFRelease(value_low);
        goto LABEL_203;
      }

LABEL_229:
      OUTLINED_FUNCTION_3_122();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_203;
    }

    v63 = 0;
    v8 = v171;
LABEL_164:
    v66 = 0;
LABEL_62:
    CFRelease(v69);
LABEL_63:
    if (v66)
    {
      CFRelease(v66);
    }

LABEL_65:
    if (!v395)
    {
      break;
    }

    if (v63)
    {
      FigSimpleMutexUnlock();
      v9 = FigSimpleMutexLock();
    }
  }

  if (!v63)
  {
    v227 = *(a1 + 320) != 0;
    goto LABEL_234;
  }

LABEL_233:
  v227 = 1;
LABEL_234:
  if (dword_1EAF17670)
  {
    HIDWORD(v372) = v8;
    v228 = OUTLINED_FUNCTION_6_88(v9, v10, v11, v12, v13, v14, v15, v16, blockBufferOut, v292, sampleSizeArray, v296, v298, v300, v302, v304, v308, *(&v308 + 1), v313, v317, v321, *(&v321 + 1), v326, v330, v332, v334, v338, v342, v344, *(&v344 + 1), v347, allocatorb, keyb, v357, v359, v363, v366, v368, v371, v372, 0, 1, 2, 3, v379, v380, i.i64[0], i.i64[1], v385, *(&v385 + 1), v386.value, *&v386.timescale, v386.epoch, v387.value, *&v387.timescale, v387.epoch, v388.value, *&v388.timescale, v388.epoch, timingArrayEntriesNeededOut, rhs.duration.value);
    v229 = rhs.duration.value;
    v230 = LOBYTE(v422.value);
    if (os_log_type_enabled(v228, v422.value))
    {
      v231 = v229;
    }

    else
    {
      v231 = v229 & 0xFFFFFFFE;
    }

    if (v231)
    {
      if (a1)
      {
        v232 = v363;
      }

      else
      {
        v232 = "";
      }

      v233 = *(a1 + 75);
      v234 = *(a1 + 321);
      v235 = *(a1 + 32);
      v236 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      i.i32[0] = v234;
      if (v236)
      {
        LODWORD(v377) = v236(v235);
      }

      else
      {
        LODWORD(v377) = 0;
      }

      v237 = *(a1 + 32);
      v238 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      LODWORD(v385) = v227;
      v380 = v228;
      v239 = v232;
      v240 = v233;
      if (v238)
      {
        v241 = v238(v237);
      }

      else
      {
        v241 = 0;
      }

      v242 = *(a1 + 322);
      v243 = *(a1 + 74);
      *&time.duration.value = *&v338->value;
      OUTLINED_FUNCTION_11_59(v338->epoch);
      v245 = CMTimeGetSeconds(v244);
      *&time.duration.value = *(a1 + 480);
      OUTLINED_FUNCTION_11_59(*(a1 + 496));
      v247 = CMTimeGetSeconds(v246);
      *&time.duration.value = *v342;
      OUTLINED_FUNCTION_11_59(*(v342 + 16));
      v249 = CMTimeGetSeconds(v248);
      v250 = *(a1 + 476);
      LODWORD(lhs.value) = 136318466;
      *(&lhs.value + 4) = "aqOfflineMixer_processUntilHighWaterMet";
      LOWORD(lhs.flags) = 2048;
      *(&lhs.flags + 2) = a1;
      HIWORD(lhs.epoch) = 2082;
      v404 = v239;
      v405 = 1024;
      *v406 = v240;
      *&v406[4] = 1024;
      *&v406[6] = i.i32[0];
      *&v406[10] = 1024;
      *&v406[12] = v377;
      *&v406[16] = 1024;
      *&v406[18] = v241;
      *&v406[22] = 1024;
      *&v406[24] = v242;
      *&v406[28] = 1024;
      *&v406[30] = v243;
      *&v406[34] = 1024;
      *&v406[36] = BYTE4(v372);
      *&v406[40] = 2048;
      *&v406[42] = v245;
      *&v406[50] = 2048;
      *&v406[52] = v247;
      *&v406[60] = 2048;
      *&v406[62] = v249;
      v407 = 1024;
      v408 = v250;
      OUTLINED_FUNCTION_9_58();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v251, v252, v253, v254, v255, v380, v230, v256);
      v2 = MEMORY[0x1E6960C70];
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOBYTE(v8) = BYTE4(v372);
  }

  FigSimpleMutexUnlock();
  v257 = FigSimpleMutexLock();
  if (HIDWORD(v368) == 1 && !v8)
  {
    OUTLINED_FUNCTION_2_146(v257, v258, v259, v260, v261, v262, v263, v264, blockBufferOut, v292, sampleSizeArray, v296, v298, v300, v302, v304, v308, *(&v308 + 1), v313, v317, v321, *(&v321 + 1), v326, v330, v332, v334, v338, v342, v344, *(&v344 + 1), v347, allocatorb, keyb, v357, v359, v363, v366, v368);
    OUTLINED_FUNCTION_26_31(v360);
    v265 = OUTLINED_FUNCTION_17_39();
    v267 = CMTimeCompare(v265, v266);
    if (!v267)
    {
      *v360 = *v2;
      v360[1].n128_u64[0] = v49;
      if (dword_1EAF17670)
      {
        v275 = OUTLINED_FUNCTION_6_88(v267, v268, v269, v270, v271, v272, v273, v274, blockBufferOuta, v293, sampleSizeArraya, v297, v299, v301, v303, v305, v309, v312, v314, v318, v322, v325, v327, v331, v333, v335, v339, v343, v345, v346, v348, allocatorc, keyc, v358, v360, v364, v367, v369, v371, v372, v374, *(&v374 + 1), v377, *(&v377 + 1), v379, v380, i.i64[0], i.i64[1], v385, *(&v385 + 1), v386.value, *&v386.timescale, v386.epoch, v387.value, *&v387.timescale, v387.epoch, v388.value, *&v388.timescale, v388.epoch, timingArrayEntriesNeededOut, rhs.duration.value);
        v276 = rhs.duration.value;
        v277 = LOBYTE(v422.value);
        if (os_log_type_enabled(v275, v422.value))
        {
          v278 = v276;
        }

        else
        {
          v278 = v276 & 0xFFFFFFFE;
        }

        if (v278)
        {
          LODWORD(lhs.value) = 136315650;
          *(&lhs.value + 4) = "aqOfflineMixer_processUntilHighWaterMet";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = a1;
          HIWORD(lhs.epoch) = 2082;
          v404 = v365;
          OUTLINED_FUNCTION_9_58();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v279, v280, v281, v282, v283, v275, v277, v284);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  result = FigSimpleMutexUnlock();
  if (!v227)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      return FigSimpleMutexUnlock();
    }

    v286 = *(a1 + 312);
    if (v286 && CFArrayGetCount(v286))
    {
      return FigSimpleMutexUnlock();
    }

    else
    {
      v287 = *(a1 + 296);
      if (v287)
      {
        v288.length = CFArrayGetCount(v287);
        v289 = *(a1 + 296);
      }

      else
      {
        v289 = 0;
        v288.length = 0;
      }

      v288.location = 0;
      CFArrayAppendArray(*(a1 + 312), v289, v288);
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

BOOL aqOfflineMixer_passedTimelineMilestone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = **&MEMORY[0x1E6960CC0];
  v7 = v8;
  if ((*(a2 + 12) & 1) == 0 || (*(a3 + 12) & 1) == 0)
  {
    return 0;
  }

  lhs = *a3;
  v5 = *a2;
  CMTimeSubtract(&v8, &lhs, &v5);
  CMTimeMake(&v7, *(a1 + 352), 1000);
  lhs = v8;
  v5 = v7;
  return CMTimeCompare(&lhs, &v5) >= 0;
}

uint64_t FigAudioQueueOfflineMixerConnectAudioQueue(uint64_t a1, const void *a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v36, v38);
    goto LABEL_13;
  }

  v8 = AQOfflineMixerConnectAudioQueue();
  if (v8)
  {
LABEL_13:
    v32 = v8;
    goto LABEL_11;
  }

  CFArrayAppendValue(*(a1 + 296), a2);
  CFArrayAppendValue(*(a1 + 304), a2);
  *(a1 + 321) = 0;
  if (dword_1EAF17670)
  {
    v17 = OUTLINED_FUNCTION_13_42(v9, v10, v11, v12, v13, v14, v15, v16, v34, v36, v38, v40, SBYTE2(v40), SBYTE3(v40), SHIDWORD(v40));
    if (OUTLINED_FUNCTION_304(v17, v18, v19, v20, v21, v22, v23, v24, v35, v37, v39, v41, v42, v43, v44))
    {
      v25 = v4;
    }

    else
    {
      v25 = v4 & 0xFFFFFFFE;
    }

    if (v25)
    {
      CFArrayGetCount(*(a1 + 296));
      OUTLINED_FUNCTION_4_117();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v5, v3, v31);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListeners();
  v32 = 0;
LABEL_11:
  FigSimpleMutexUnlock();
  return v32;
}

uint64_t FigAudioQueueOfflineMixerDisconnectAudioQueue(uint64_t a1, const void *a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (*(a1 + 16) || (v7 = *(a1 + 296), v55.length = CFArrayGetCount(v7), v55.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v55, a2), FirstIndexOfValue == -1))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  v9 = FirstIndexOfValue;
  v10 = AQOfflineMixerDisconnectAudioQueue();
  if (v10)
  {
LABEL_11:
    v34 = v10;
    goto LABEL_20;
  }

  CFArrayRemoveValueAtIndex(*(a1 + 296), v9);
  if (dword_1EAF17670)
  {
    v19 = OUTLINED_FUNCTION_13_42(v11, v12, v13, v14, v15, v16, v17, v18, v44, v46, v48, v50, SBYTE2(v50), SBYTE3(v50), SHIDWORD(v50));
    if (OUTLINED_FUNCTION_304(v19, v20, v21, v22, v23, v24, v25, v26, v45, v47, v49, v51, v52, v53, v54))
    {
      v27 = v3;
    }

    else
    {
      v27 = v3 & 0xFFFFFFFE;
    }

    if (v27)
    {
      CFArrayGetCount(*(a1 + 296));
      OUTLINED_FUNCTION_4_117();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v28, v29, v30, v31, v32, v4, v9, v33);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFArrayGetCount(*(a1 + 296));
  v35 = OUTLINED_FUNCTION_10_56();
  if (!CFArrayContainsValue(v35, v56, v36))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
  }

  CFArrayGetCount(*(a1 + 304));
  v37 = OUTLINED_FUNCTION_10_56();
  v39 = CFArrayGetFirstIndexOfValue(v37, v57, v38);
  if (v39 != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 304), v39);
    *(a1 + 321) = CFArrayGetCount(*(a1 + 304)) == 0;
  }

  CFArrayGetCount(*(a1 + 312));
  v40 = OUTLINED_FUNCTION_10_56();
  v42 = CFArrayGetFirstIndexOfValue(v40, v58, v41);
  if (v42 != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 312), v42);
  }

  v34 = 0;
LABEL_20:
  FigSimpleMutexUnlock();
  return v34;
}

uint64_t FigAudioQueueOfflineMixerStartRenderingForTimeRange(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  value = 0;
  FigSimpleMutexLock();
  if (!*(a1 + 16) && (OUTLINED_FUNCTION_29(), v5))
  {
    OUTLINED_FUNCTION_33_25();
    OUTLINED_FUNCTION_3_51();
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      if (dword_1EAF17670)
      {
        LODWORD(rhs.value) = 0;
        HIBYTE(v38) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      OUTLINED_FUNCTION_3_51();
      v8 = CMTimeConvertScale(&time1, &time2, v7, kCMTimeRoundingMethod_RoundTowardZero);
      OUTLINED_FUNCTION_29_26(v8, v9, v10, v11, v12, v13, v14, v15, v29, v31, v33, v35.value, *&v35.timescale, v35.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v37, v38, value, time2.value, *&time2.timescale, time2.epoch, v41, v42, v43, v44, v45, time1.value, *&time1.timescale, time1.epoch);
      v16 = *(a1 + 96);
      time2 = *a3;
      CMTimeConvertScale(&time1, &time2, v16, kCMTimeRoundingMethod_RoundAwayFromZero);
      *(a1 + 124) = time1;
      *(a1 + 322) = 0;
      if (!*(a1 + 404) && *(a1 + 380) >= 1)
      {
        time2 = *(a1 + 100);
        rhs = *(a1 + 380);
        v17 = CMTimeSubtract(&time1, &time2, &rhs);
        OUTLINED_FUNCTION_29_26(v17, v18, v19, v20, v21, v22, v23, v24, v30, v32, v34, v35.value, *&v35.timescale, v35.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v37, v38, value, time2.value, *&time2.timescale, time2.epoch, v41, v42, v43, v44, v45, time1.value, *&time1.timescale, time1.epoch);
      }

      OUTLINED_FUNCTION_29();
      if (v5)
      {
        OUTLINED_FUNCTION_32_26();
        CMTimeConvertScale(&v35, &time1, v25, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        value = v35.value;
        v28 = AQOfflineMixerSetProperty();
        if (!v28)
        {
          v28 = FigAudioQueueOfflineMixerGo(a1);
        }
      }

      else
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v26 = v28;
  FigSimpleMutexUnlock();
  return v26;
}

uint64_t FigAudioQueueOfflineMixerReset(uint64_t a1, uint64_t a2, char a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    goto LABEL_17;
  }

  v7 = AQOfflineMixerReset();
  if (v7)
  {
    goto LABEL_17;
  }

  *(a1 + 380) = *(a1 + 356);
  *(a1 + 396) = *(a1 + 372);
  v8 = MEMORY[0x1E6960C70];
  v9 = *MEMORY[0x1E6960C70];
  *(a1 + 432) = *MEMORY[0x1E6960C70];
  v10 = *(v8 + 16);
  *(a1 + 448) = v10;
  v23 = v9;
  *(a1 + 408) = v9;
  *(a1 + 424) = v10;
  *(a1 + 404) = a3;
  v11 = *(a1 + 296);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 296), i);
        FigAudioQueueRestoreParameters(ValueAtIndex);
      }
    }
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  v16 = *(*(OUTLINED_FUNCTION_35_21() + 16) + 72);
  if (!v16)
  {
    v18 = 4294954514;
    goto LABEL_15;
  }

  v7 = v16(a2);
  if (v7)
  {
LABEL_17:
    v18 = v7;
    goto LABEL_15;
  }

  *(a1 + 476) = 0;
  *(a1 + 480) = v23;
  *(a1 + 496) = v10;
  *(a1 + 504) = v23;
  *(a1 + 520) = v10;
  v17 = MEMORY[0x1E6960CC0];
  *(a1 + 528) = *MEMORY[0x1E6960CC0];
  *(a1 + 544) = *(v17 + 16);
LABEL_13:
  v18 = 0;
  *(a1 + 320) = 0;
  *(a1 + 75) = 0;
  *(a1 + 348) = 0;
  *(a1 + 322) = 0;
  *(a1 + 100) = v23;
  *(a1 + 116) = v10;
  *(a1 + 124) = v23;
  *(a1 + 140) = v10;
  *(a1 + 148) = v23;
  *(a1 + 164) = v10;
  *(a1 + 188) = v10;
  *(a1 + 172) = v23;
  *(a1 + 321) = 0;
LABEL_15:
  FigSimpleMutexUnlock();
  FigSimpleMutexUnlock();
  return v18;
}

void FigCoreAnimationRendererCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_8(_DWORD *a1)
{
  [MEMORY[0x1E6979518] commit];
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_9(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void FigCoreAnimationRendererCreate_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCreate_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcar_ensureBufferAttributesCompatibleWithHWProcessing_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCopyPixelBufferAtTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL FigCoreAnimationRendererCopyPixelBufferAtTime_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v3;
  return v3 == 0;
}

void FigCoreAnimationRendererCopyPixelBufferAtTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCopyPixelBufferAtTime_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCoreAnimationRendererCopyPixelBufferAtTime_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreatePixelBufferAndPoolAttributesDictionary_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigFairPlaySharedContextLoad(const void *a1, CFTypeRef cf, const __CFDictionary *a3)
{
  if (_MergedGlobals_104 == -1)
  {
    if (cf)
    {
LABEL_3:
      v6 = CFRetain(cf);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_163(&_MergedGlobals_104);
    if (cf)
    {
      goto LABEL_3;
    }
  }

  v6 = FigFairPlayCopyDefaultKeybagFolderURL();
LABEL_6:
  v7 = v6;
  if (!v6)
  {
    return 4294955146;
  }

  FigSimpleMutexLock();
  v8 = FigFairPlayCopyAbsolutePathFromURL(v7);
  if (!CFDictionaryContainsKey(qword_1ED4CB6A0, v8))
  {
    MEMORY[0x19A8D3660](&FigFairPlaySharedContextGetClassID_sRegisterFigFairPlaySharedContextTypeOnce, RegisterFigFairPlaySharedContextType);
    v9 = CMDerivedObjectCreate();
    if (v9)
    {
      goto LABEL_32;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    *DerivedStorage = v11;
    *(DerivedStorage + 8) = FigSimpleMutexCreate();
    *(DerivedStorage + 16) = CFSetCreateMutable(a1, 0, 0);
    if (v8)
    {
      v12 = CFRetain(v8);
    }

    else
    {
      v12 = 0;
    }

    *(DerivedStorage + 24) = v12;
    *(DerivedStorage + 32) = dispatch_queue_create("FigFPSharedContextFPInitializationQueue", 0);
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"InitializeForInspection");
      v16 = Value && (v14 = Value, v15 = CFGetTypeID(Value), v15 == CFBooleanGetTypeID()) && CFBooleanGetValue(v14) != 0;
      v17 = CFDictionaryGetValue(a3, @"InitializeForAudioPlayback");
      if (v17)
      {
        v18 = v17;
        v19 = CFGetTypeID(v17);
        if (v19 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v18))
          {
            v16 = 1;
          }
        }
      }

      v20 = CFDictionaryGetValue(a3, @"InitializeForVideoPlayback");
      if (v20)
      {
        v21 = v20;
        v22 = CFGetTypeID(v20);
        if (v22 == CFBooleanGetTypeID())
        {
          if (!(CFBooleanGetValue(v21) | v16))
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      if (v16)
      {
LABEL_30:
        dispatch_async_f(*(DerivedStorage + 32), 0, FigFairPlaySharedContextLoad_EnsureFairPlayContext);
      }
    }

LABEL_31:
    CFDictionaryAddValue(qword_1ED4CB6A0, v8, 0);
    goto LABEL_32;
  }

  v9 = 0;
LABEL_32:
  if (v8)
  {
    CFRelease(v8);
  }

  FigSimpleMutexUnlock();
  CFRelease(v7);
  return v9;
}

uint64_t FigFairPlaySharedContextUnload(CFTypeRef cf)
{
  if (_MergedGlobals_104 == -1)
  {
    if (cf)
    {
LABEL_3:
      v2 = CFRetain(cf);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_163(&_MergedGlobals_104);
    if (cf)
    {
      goto LABEL_3;
    }
  }

  v2 = FigFairPlayCopyDefaultKeybagFolderURL();
LABEL_6:
  v3 = v2;
  if (!v2)
  {
    return 4294955146;
  }

  FigSimpleMutexLock();
  v4 = FigFairPlayCopyAbsolutePathFromURL(v3);
  Value = CFDictionaryGetValue(qword_1ED4CB6A0, v4);
  if (Value)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    Count = CFSetGetCount(*(DerivedStorage + 16));
    FigSimpleMutexUnlock();
    if (Count <= 0)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        Value = v8(Value);
        if (!Value)
        {
          CFDictionaryRemoveValue(qword_1ED4CB6A0, v4);
        }
      }

      else
      {
        Value = 4294954514;
      }
    }

    else
    {
      Value = 4294955138;
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  CFRelease(v3);
  return Value;
}

uint64_t FigFairPlaySharedContextCopyForKeybagURLAndClient(const void *a1, const void *a2, const void *a3, void *a4)
{
  v4 = 4294955146;
  if (a2 && a3 && a4)
  {
    v8 = FigFairPlaySharedContextLoad(a1, a2, 0);
    if (v8)
    {
      return v8;
    }

    FigSimpleMutexLock();
    v9 = FigFairPlayCopyAbsolutePathFromURL(a2);
    Value = CFDictionaryGetValue(qword_1ED4CB6A0, v9);
    if (Value)
    {
      v11 = Value;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      CFSetAddValue(*(DerivedStorage + 16), a3);
      FigSimpleMutexUnlock();
      v13 = CFRetain(v11);
      v4 = 0;
      *a4 = v13;
      if (!v9)
      {
LABEL_8:
        FigSimpleMutexUnlock();
        return v4;
      }
    }

    else
    {
      v4 = 4294955138;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    CFRelease(v9);
    goto LABEL_8;
  }

  return v4;
}

uint64_t FigFairPlaySharedContextCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a4 && a2 && DerivedStorage)
  {
    if (CFEqual(a2, @"3721370B-B25B-4EED-A8C8-F27CAA873C75"))
    {
      dispatch_sync_f(*(DerivedStorage + 32), DerivedStorage, EnsureFairPlayContext);
      v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 44));
    }

    else
    {
      if (!CFEqual(a2, @"ED1C2894-E22E-4BCB-9D7F-BE48EF1B699E"))
      {
        return 4294955144;
      }

      v8 = CFRetain(*(DerivedStorage + 24));
    }

    v9 = v8;
    result = 0;
    *a4 = v9;
  }

  return result;
}

uint64_t RemoveClient(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      CFSetRemoveValue(*(DerivedStorage + 16), a2);
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  return result;
}

uint64_t figTTMLBodyConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  FigBytePumpGetFigBaseObject();
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
      v8 = FigTTMLDivCreate(v9, a1, a2, &value);
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

uint64_t FigCPEFairPlayProtectorCreateForFormatDescriptions(const void *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v76 = 0;
  cf = 0;
  context = 0;
  if (!a4)
  {
    return 4294955146;
  }

  v4 = a4;
  MEMORY[0x19A8D3660](&FigFairPlayCPEProtectorGetClassID_sRegisterFigFairPlayCPEProtectorTypeOnce, RegisterFigFairPlayCPEProtectorType);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v16 = v8;
    goto LABEL_121;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_120;
  }

  v10 = DerivedStorage;
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  *v10 = v11;
  *&v79 = 0;
  FigBytePumpGetFigBaseObject();
  if (!a3 || (Value = CFDictionaryGetValue(a3, @"StorageURL")) == 0 || (v13 = Value, v14 = CFGetTypeID(Value), v14 != CFURLGetTypeID()) || (v15 = CFRetain(v13)) == 0)
  {
    v15 = FigFairPlayCopyDefaultKeybagFolderURL();
  }

  v16 = FigFairPlaySharedContextCopyForKeybagURLAndClient(a1, v15, cf, &v79);
  if (!v16)
  {
    *(v10 + 8) = v79;
    *&v79 = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v16)
  {
    goto LABEL_121;
  }

  if (a3)
  {
    v17 = CFDictionaryGetValue(a3, @"AE50A074-4909-4EBC-8ADF-C8DDD5F591AA");
    *(v10 + 48) = v17;
    if (v17)
    {
      v18 = CFGetTypeID(v17);
      if (v18 != CFDictionaryGetTypeID())
      {
        goto LABEL_79;
      }

      v19 = *(v10 + 48);
      if (v19)
      {
        CFRetain(v19);
      }
    }

    v20 = CFDictionaryGetValue(a3, @"9692C034-625A-4B20-9D38-D1E9CF40B67F");
    *(v10 + 40) = v20;
    if (v20)
    {
      v21 = CFGetTypeID(v20);
      if (v21 != CFDictionaryGetTypeID())
      {
        goto LABEL_79;
      }

      v22 = *(v10 + 40);
      if (v22)
      {
        CFRetain(v22);
      }
    }

    v23 = CFDictionaryGetValue(a3, @"MonitorExternalProtectionState");
    if (v23)
    {
      v24 = v23;
      v25 = CFGetTypeID(v23);
      if (v25 == CFBooleanGetTypeID())
      {
        *(v10 + 73) = CFBooleanGetValue(v24);
        goto LABEL_31;
      }

LABEL_79:
      v16 = 4294955136;
      goto LABEL_121;
    }
  }

LABEL_31:
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    context = Mutable;
    *(v10 + 16) = Mutable;
    if (Mutable)
    {
      CFDictionaryApplyFunction(a2, FormatDescriptionFilter, &context);
      *(v10 + 24) = v76;
      if (CFDictionaryGetCount(*(v10 + 16)) < 1)
      {
        v16 = 4294955141;
        goto LABEL_121;
      }

LABEL_37:
      v27 = CMBaseObjectGetDerivedStorage();
      v79 = xmmword_196E73090;
      v28 = *(v27 + 48);
      v29 = MEMORY[0x1E695E480];
      if (v28)
      {
        v30 = CFDictionaryGetValue(v28, @"sinfs");
        if (!v30)
        {
          goto LABEL_79;
        }

        v31 = v30;
        v32 = CFGetTypeID(v30);
        if (v32 != CFArrayGetTypeID())
        {
          goto LABEL_79;
        }

        Count = CFArrayGetCount(v31);
        if (Count < 1)
        {
          goto LABEL_79;
        }

        v34 = Count;
        v73 = v27;
        v71 = v10;
        v72 = v4;
        v35 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
        v36 = OUTLINED_FUNCTION_3_123();
        v37 = 0;
        allocator = *v29;
        v38 = v35;
        v39 = v34;
        while (1)
        {
          LODWORD(valuePtr) = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v31, v37);
          if (!ValueAtIndex)
          {
            break;
          }

          v41 = ValueAtIndex;
          v42 = CFGetTypeID(ValueAtIndex);
          if (v42 != CFDictionaryGetTypeID())
          {
            break;
          }

          v43 = CFDictionaryGetValue(v41, @"id");
          if (!v43)
          {
            break;
          }

          v44 = v43;
          v45 = CFGetTypeID(v43);
          if (v45 != CFNumberGetTypeID() || !CFNumberGetValue(v44, kCFNumberSInt32Type, &valuePtr) || (valuePtr & 0x80000000) != 0)
          {
            break;
          }

          if (valuePtr)
          {
            *v38 = FigCPECreateFormatDescriptionIdentifierForTrackIDAndIndex(allocator, valuePtr, 0);
          }

          else
          {
            if (CFDictionaryGetCount(*(v73 + 16)) != 1)
            {
              goto LABEL_68;
            }

            CFDictionaryGetKeysAndValues(*(v73 + 16), v38, 0);
            if (*v38)
            {
              CFRetain(*v38);
            }
          }

          CFDictionaryGetValue(v41, @"sinf");
          CFDictionaryGetValue(v41, @"sinf2");
          SinfExtensionsFromSinfData = FigFairPlayCreateSinfExtensionsFromSinfData();
          v36[v37] = SinfExtensionsFromSinfData;
          if (SinfExtensionsFromSinfData)
          {
            if (!*v38)
            {
              goto LABEL_68;
            }
          }

          else
          {
            CFDictionaryGetValue(v41, @"pinf");
            CFDictionaryGetValue(v41, @"dpInfo");
            SinfExtensionsFromPinfData = FigFairPlayCreateSinfExtensionsFromPinfData();
            v36[v37] = SinfExtensionsFromPinfData;
            if (!*v38 || !SinfExtensionsFromPinfData)
            {
LABEL_68:
              v54 = 0;
              goto LABEL_69;
            }
          }

          ++v37;
          ++v38;
          if (!--v39)
          {
            v54 = CFDictionaryCreate(allocator, v35, v36, v34, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_69:
            v16 = 0;
            v55 = 1;
            goto LABEL_71;
          }
        }

        v54 = 0;
        v55 = 0;
        v16 = 4294955136;
LABEL_71:
        v56 = 0;
        v10 = v71;
        v4 = v72;
        do
        {
          v57 = v35[v56];
          if (v57)
          {
            CFRelease(v57);
          }

          v58 = v36[v56];
          if (v58)
          {
            CFRelease(v58);
          }

          ++v56;
        }

        while (v34 != v56);
        free(v35);
        free(v36);
        if (!v55)
        {
LABEL_112:
          if (!v54)
          {
LABEL_114:
            if (v16)
            {
              goto LABEL_121;
            }

            v67 = FigSimpleMutexCreate();
            *(v10 + 96) = v67;
            if (v67)
            {
              v68 = dispatch_queue_create("com.apple.fpcpefp.persistentrepo", 0);
              *(v10 + 128) = v68;
              if (v68)
              {
                v69 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(v10 + 120) = v69;
                if (v69)
                {
                  v16 = 0;
                  *v4 = cf;
                  return v16;
                }
              }
            }

            goto LABEL_120;
          }

LABEL_113:
          CFRelease(v54);
          goto LABEL_114;
        }

        v27 = v73;
        if (!v54)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v48 = CFDictionaryGetCount(*(v27 + 16));
        if (v48 <= 0)
        {
          allocator = *v29;
          v54 = CFDictionaryCreate(*v29, 0, 0, v48, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v50 = 0;
          v49 = 0;
        }

        else
        {
          v49 = OUTLINED_FUNCTION_3_123();
          v50 = OUTLINED_FUNCTION_3_123();
          CFDictionaryGetKeysAndValues(*(v27 + 16), v49, v50);
          for (i = 0; i != v48; ++i)
          {
            v50[i] = FigFairPlayCopySinfExtensionsFromFormatDescription(v50[i]);
          }

          allocator = *v29;
          v54 = CFDictionaryCreate(*v29, v49, v50, v48, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          for (j = 0; j != v48; ++j)
          {
            v53 = v50[j];
            if (v53)
            {
              CFRelease(v53);
            }
          }
        }

        free(v49);
        free(v50);
      }

      if (CFDictionaryGetCount(*(v27 + 16)) < 1)
      {
        BYTE9(v79) = 1;
      }

      else
      {
        *&v79 = v54;
        CFDictionaryApplyFunction(*(v27 + 16), SetProtectionInfoValidateEntry, &v79);
        if (!BYTE8(v79))
        {
          v16 = 4294955136;
          if (!v54)
          {
            goto LABEL_114;
          }

          goto LABEL_113;
        }
      }

      v59 = *(v27 + 32);
      *(v27 + 32) = v54;
      if (v54)
      {
        CFRetain(v54);
      }

      if (v59)
      {
        CFRelease(v59);
      }

      v61 = (v27 + 64);
      v60 = *(v27 + 64);
      *(v27 + 80) = 0;
      if (BYTE9(v79))
      {
        if (v60)
        {
          if (FigCPEExternalProtectionMonitorGetMethods(v60))
          {
            goto LABEL_111;
          }

          v62 = *v61;
        }

        else
        {
          v62 = 0;
        }

        valuePtr = 0;
        v63 = FigCPEExternalProtectionMonitorCreateForMethods(*v27, 5u, 0, v62, &valuePtr);
        if (v63)
        {
          goto LABEL_123;
        }

        v64 = *v61;
        v65 = valuePtr;
        *v61 = valuePtr;
        if (v65)
        {
          CFRetain(v65);
        }

        if (v64)
        {
          CFRelease(v64);
        }

        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_153();
        v63 = FigNotificationCenterAddWeakListener();
        if (v63)
        {
          goto LABEL_123;
        }

        if (*(v27 + 73))
        {
LABEL_110:
          FigCPEExternalProtectionMonitorBeginMonitoring(*(v27 + 64));
          *(v27 + 72) = 1;
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_0_164();
          v63 = FigNotificationCenterAddWeakListener();
          if (!v63)
          {
            goto LABEL_111;
          }

LABEL_123:
          v16 = v63;
          if (!v54)
          {
            goto LABEL_114;
          }

          goto LABEL_113;
        }
      }

      else if (!v60)
      {
        v63 = FigCPEExternalProtectionMonitorCreateForMethods(*v27, 4u, 0, 0, (v27 + 64));
        if (v63)
        {
          goto LABEL_123;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_153();
        v63 = FigNotificationCenterAddWeakListener();
        if (v63)
        {
          goto LABEL_123;
        }

        if (*(v27 + 73))
        {
          goto LABEL_110;
        }
      }

LABEL_111:
      v66 = CFDictionaryGetValue(*(v27 + 32), *(v27 + 24));
      FigFairPlayGetSinfExtensionType(v66, (v27 + 56));
      v16 = 0;
      goto LABEL_112;
    }

LABEL_120:
    v16 = 4294955145;
    goto LABEL_121;
  }

  if (*(v10 + 73))
  {
    *(v10 + 16) = CFDictionaryCreate(a1, 0, 0, 0, 0, 0);
    goto LABEL_37;
  }

  v16 = 4294955146;
LABEL_121:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t FigCPEFairPlayProtectorCreateForFormatReader(const void *a1, uint64_t a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  cf = 0;
  v29 = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = Mutable;
  if (!a2)
  {
    v23 = 4294955146;
    if (!Mutable)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(v10);
    goto LABEL_26;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    goto LABEL_24;
  }

  v25 = a4;
  v12 = v11(a2, &v29);
  if (!v12)
  {
    if (v29 >= 1)
    {
      v13 = 0;
      while (1)
      {
        v27 = 0;
        theArray = 0;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v14)
        {
          break;
        }

        v12 = v14(a2, v13, &cf, 0, &v27);
        if (v12)
        {
          goto LABEL_22;
        }

        FigTrackReaderGetFigBaseObject();
        v16 = v15;
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v17)
        {
          break;
        }

        v12 = v17(v16, @"TrackFormatDescriptionArray", v8, &theArray);
        if (v12)
        {
          goto LABEL_22;
        }

        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v19 = Count;
            for (i = 0; i != v19; ++i)
            {
              v21 = FigCPECreateFormatDescriptionIdentifierForTrackIDAndIndex(v8, v27, i);
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
              CFDictionarySetValue(v10, v21, ValueAtIndex);
              if (v21)
              {
                CFRelease(v21);
              }
            }
          }

          if (theArray)
          {
            CFRelease(theArray);
          }
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (++v13 >= v29)
        {
          goto LABEL_21;
        }
      }

LABEL_24:
      v23 = 4294954514;
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_21:
    v12 = FigCPEFairPlayProtectorCreateForFormatDescriptions(a1, v10, a3, v25);
  }

LABEL_22:
  v23 = v12;
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t FigCPEFairPlayProtectorCreate(const void *a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  if (!theDict)
  {
    return 4294955146;
  }

  if (CFDictionaryContainsKey(theDict, @"6519D6C3-E423-4DEA-811B-AA98B31B3180"))
  {

    return FigCPEFairPlayCloudProtectorCreate(a1, theDict, a3);
  }

  else
  {

    return FigCPEFairPlayProtectorCreateForFormatDescriptions(a1, 0, theDict, a3);
  }
}

uint64_t FigFairPlayCPEProtectorCopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFString **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 4294955146;
  if (!a2 || !a4)
  {
    return v8;
  }

  v9 = DerivedStorage;
  if (CFEqual(a2, @"DisplayList"))
  {
    v10 = *(v9 + 64);

    return FigCPEExternalProtectionMonitorCopyProperty(v10, @"DisplayList", a3, a4);
  }

  if (CFEqual(a2, @"ExternalProtectionRequiredForPlayback"))
  {
    if (FigCPEExternalProtectionMonitorGetMethods(*(v9 + 64)))
    {
LABEL_9:
      v12 = MEMORY[0x1E695E4D0];
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (CFEqual(a2, @"ApplicationAuthorizationChallengeProvider"))
  {
    v13 = @"ApplicationAuthorizationChallengeProviderNone";
    goto LABEL_58;
  }

  if (CFEqual(a2, @"IsRental"))
  {
    v8 = IsRental(v9, 0);
    if (v8)
    {
      return v8;
    }

    v13 = *(v9 + 104);
    if (!v13)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (CFEqual(a2, @"IsRentalPlaybackStarted"))
  {
    v14 = *MEMORY[0x1E695E4C0];
    v15 = IsRental(v9, 0);
    if (v15)
    {
      v8 = v15;
    }

    else if (CFBooleanGetValue(*(v9 + 104)))
    {
      theDict = 0;
      v8 = CopyRentalInfo(v9, &theDict);
      if (!v8)
      {
        if (CFDictionaryContainsKey(theDict, @"RentalPlaybackPeriodStartDate"))
        {
          v14 = *MEMORY[0x1E695E4D0];
        }

        if (theDict)
        {
          CFRelease(theDict);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if (v14)
    {
      v13 = CFRetain(v14);
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_60;
  }

  if (CFEqual(a2, @"RentalPeriodStartDate") || CFEqual(a2, @"RentalPeriodEndDate") || CFEqual(a2, @"RentalPlaybackPeriodStartDate") || CFEqual(a2, @"RentalPlaybackPeriodEndDate"))
  {
    theDict = 0;
    v8 = CopyRentalInfo(v9, &theDict);
    if (!v8)
    {
      Value = CFDictionaryGetValue(theDict, a2);
      if (Value)
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294955137;
      }

      if (Value)
      {
        Value = CFRetain(Value);
      }

      *a4 = Value;
      if (theDict)
      {
        CFRelease(theDict);
      }
    }

    return v8;
  }

  if (CFEqual(a2, @"ContentKind"))
  {
    v17 = (v9 + 80);
    v16 = *(v9 + 80);
    if (!v16)
    {
      v21 = CFDictionaryGetValue(*(v9 + 32), *(v9 + 24));
      if (FigFairPlayGetMediaKindFromSinf(v21, (v9 + 80)))
      {
        *v17 = 0;
LABEL_50:
        v12 = kFigCPEContentKind_Unknown;
        goto LABEL_57;
      }

      v16 = *v17;
    }

    switch(v16)
    {
      case 1:
        v12 = kFigCPEContentKind_Song;
        break;
      case 2:
        v12 = kFigCPEContentKind_Movie;
        break;
      case 3:
      case 5:
      case 6:
      case 7:
        goto LABEL_50;
      case 4:
        v12 = kFigCPEContentKind_Podcast;
        break;
      case 8:
        v12 = kFigCPEContentKind_AudioBook;
        break;
      default:
        switch(v16)
        {
          case 16:
            v12 = kFigCPEContentKind_Booklet;
            break;
          case 32:
            v12 = kFigCPEContentKind_MusicVideo;
            break;
          case 64:
            v12 = kFigCPEContentKind_TVShow;
            break;
          default:
            goto LABEL_50;
        }

        break;
    }

LABEL_57:
    v13 = *v12;
    if (!*v12)
    {
LABEL_59:
      v8 = 0;
LABEL_60:
      *a4 = v13;
      return v8;
    }

LABEL_58:
    v13 = CFRetain(v13);
    goto LABEL_59;
  }

  if (CFEqual(a2, @"AllowsImageGeneration"))
  {
    v19 = (v9 + 80);
    v18 = *(v9 + 80);
    if (v18)
    {
      goto LABEL_34;
    }

    v22 = CFDictionaryGetValue(*(v9 + 32), *(v9 + 24));
    if (!FigFairPlayGetMediaKindFromSinf(v22, (v9 + 80)))
    {
      v18 = *v19;
LABEL_34:
      if (v18 == 32)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }

    *v19 = 0;
LABEL_56:
    v12 = MEMORY[0x1E695E4C0];
    goto LABEL_57;
  }

  if (CFEqual(a2, @"IsAirPlayPossible"))
  {
    if (*(v9 + 56) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

  v23 = *(v9 + 8);

  return CMBaseObjectCopyProperty(v23, a2, a3, a4);
}

uint64_t FigFairPlayCPEProtectorSetProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"DisplayList"))
  {
    v7 = *(v6 + 64);

    return FigCPEExternalProtectionMonitorSetProperty(v7, @"DisplayList", a3);
  }

  else if (CFEqual(a2, @"NeroTransport"))
  {
    v9 = *(v6 + 136);
    *(v6 + 136) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    return 0;
  }

  else
  {
    return 4294955144;
  }
}

uint64_t CopyRentalInfo(uint64_t a1, void *a2)
{
  v27 = 0;
  v4 = IsRental(a1, &v27);
  if (v4 | v27)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4294955144;
  }

  if (!v5)
  {
    FigSimpleMutexLock();
    if (!*(a1 + 112))
    {
      Value = CFDictionaryGetValue(*(a1 + 32), *(a1 + 24));
      BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(Value);
      v25 = 0;
      v26 = 0;
      FairPlayContext = GetFairPlayContext(a1);
      BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
      Length = CFDataGetLength(BestSinfFromSinfExtensions);
      RbFpir(FairPlayContext, BytePtr, Length, &v25);
      v14 = FAIRPLAY_CALL_LOG(v13);
      if (v14)
      {
        v5 = v14;
LABEL_11:
        FigSimpleMutexUnlock();
        return v5;
      }

      *(a1 + 112) = CFDictionaryCreateMutable(*a1, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      LODWORD(v15) = v25;
      v16 = *MEMORY[0x1E695E468];
      CFDateCreate(*a1, v15 - *MEMORY[0x1E695E468]);
      v17 = OUTLINED_FUNCTION_4_118();
      CFDictionaryAddValue(v17, @"RentalPeriodStartDate", BestSinfFromSinfExtensions);
      if (BestSinfFromSinfExtensions)
      {
        CFRelease(BestSinfFromSinfExtensions);
      }

      LODWORD(v19) = HIDWORD(v25);
      LODWORD(v18) = v25;
      OUTLINED_FUNCTION_5_102(*a1, v18, v19);
      v20 = OUTLINED_FUNCTION_4_118();
      CFDictionaryAddValue(v20, @"RentalPeriodEndDate", BestSinfFromSinfExtensions);
      if (BestSinfFromSinfExtensions)
      {
        CFRelease(BestSinfFromSinfExtensions);
      }

      if (v26 != -1)
      {
        CFDateCreate(*a1, v26 - v16);
        v21 = OUTLINED_FUNCTION_4_118();
        CFDictionaryAddValue(v21, @"RentalPlaybackPeriodStartDate", BestSinfFromSinfExtensions);
        if (BestSinfFromSinfExtensions)
        {
          CFRelease(BestSinfFromSinfExtensions);
        }

        LODWORD(v23) = HIDWORD(v26);
        LODWORD(v22) = v26;
        OUTLINED_FUNCTION_5_102(*a1, v22, v23);
        v24 = OUTLINED_FUNCTION_4_118();
        CFDictionaryAddValue(v24, @"RentalPlaybackPeriodEndDate", BestSinfFromSinfExtensions);
        if (BestSinfFromSinfExtensions)
        {
          CFRelease(BestSinfFromSinfExtensions);
        }
      }
    }

    if (a2)
    {
      v6 = *(a1 + 112);
      if (v6)
      {
        v6 = CFRetain(v6);
      }

      v5 = 0;
      *a2 = v6;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_11;
  }

  return v5;
}

uint64_t GetFairPlayContext(uint64_t *a1)
{
  number = 0;
  valuePtr = 0;
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    if (!v3(v2, 0x1F0B529B8, v1, &number))
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  return valuePtr;
}

uint64_t FigFairPlayCPEProtectorCreateCryptorForFormatDescriptionIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const void *a5)
{
  v7 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (!a5 || !DerivedStorage)
  {
    return result;
  }

  if (!CFDictionaryContainsKey(*(DerivedStorage + 16), a5))
  {
    return 4294955132;
  }

  v31 = 0;
  v11 = a4 ? CFDictionaryGetValue(a4, @"ClientSecTask") : 0;
  IsApplicationAuthorizedWithEntitlement = FigFairPlayCPEProtectorIsApplicationAuthorizedWithEntitlement(a1, v11, v7, &v31);
  result = 4294955135;
  if (IsApplicationAuthorizedWithEntitlement || v31 != v7)
  {
    return result;
  }

  if (!a4)
  {
    CFDictionaryGetValue(*(DerivedStorage + 32), a5);
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(a4, @"Destination");
  CFDictionaryGetValue(*(DerivedStorage + 32), a5);
  if (!Value || CFEqual(Value, @"DestinationLocal"))
  {
LABEL_16:
    CFDictionaryGetValue(*(DerivedStorage + 16), a5);
    v22 = OUTLINED_FUNCTION_2_147();
    result = FigFairPlayCPECryptorCreate(v22, v23, v24, v25, v26, v27, v28, v29);
    if (result)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!CFEqual(Value, @"DestinationNero"))
  {
    return 4294955136;
  }

  CFDictionaryGetValue(*(DerivedStorage + 16), a5);
  v14 = OUTLINED_FUNCTION_2_147();
  result = FigFairPlayOctaviaCPECryptorCreate(v14, v15, v16, v17, v18, v19, v20, v21);
  if (!result)
  {
LABEL_17:
    FigSimpleMutexLock();
    v30 = *(DerivedStorage + 112);
    if (v30)
    {
      CFRelease(v30);
      *(DerivedStorage + 112) = 0;
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  return result;
}

CFIndex FigFairPlayCPEProtectorIsApplicationAuthorizedWithEntitlement(uint64_t a1, __SecTask *a2, int a3, int *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  error = 0;
  v18 = 1;
  Code = 4294955146;
  if (!a4)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v9 = DerivedStorage;
  if (!DerivedStorage)
  {
    goto LABEL_19;
  }

  v11 = (DerivedStorage + 80);
  v10 = *(DerivedStorage + 80);
  if (v10)
  {
    if ((v10 & 0x1000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 32), *(DerivedStorage + 24));
    if (FigFairPlayGetMediaKindFromSinf(Value, (v9 + 80)))
    {
      *v11 = 0;
    }

    else if ((*v11 & 0x1000) != 0)
    {
LABEL_6:
      v12 = CFDictionaryGetValue(*(v9 + 32), *(v9 + 24));
      FigFairPlayIsPreviewEncrypted(v12, &v18);
      if (v18)
      {
        v13 = @"com.apple.coremedia.allow-preview-encrypted-tone-playback";
      }

      else
      {
        v13 = @"com.apple.coremedia.allow-protected-content-playback";
      }

      goto LABEL_13;
    }
  }

  v18 = 0;
  v13 = @"com.apple.coremedia.allow-protected-content-playback";
LABEL_13:
  v15 = SecTaskCopyValueForEntitlement(a2, v13, &error);
  if (!error)
  {
    Code = 0;
    if (v15 == *MEMORY[0x1E695E4D0])
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    *a4 = v16 & a3;
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  Code = CFErrorGetCode(error);
  if (v15)
  {
LABEL_18:
    CFRelease(v15);
  }

LABEL_19:
  if (error)
  {
    CFRelease(error);
  }

  return Code;
}

uint64_t FigFairPlayCPEProtectorIsContentAuthorized(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a3)
  {
    if (DerivedStorage)
    {
      *a3 = 0;
      result = CFDictionaryGetValue(*(DerivedStorage + 32), *(DerivedStorage + 24));
      if (result)
      {
        if (*(DerivedStorage + 56) == 2)
        {
          *(DerivedStorage + 60) = 1;
        }

        else
        {
          v7 = result;
          v15 = 0u;
          v16 = 0u;
          LegacySinfFromSinfExtensions = FigFairPlayGetLegacySinfFromSinfExtensions(result);
          if (LegacySinfFromSinfExtensions)
          {
            v9 = LegacySinfFromSinfExtensions;
            *(&v15 + 1) = CFDataGetBytePtr(LegacySinfFromSinfExtensions);
            LODWORD(v15) = CFDataGetLength(v9);
          }

          ExtendedSinfFromSinfExtensions = FigFairPlayGetExtendedSinfFromSinfExtensions(v7);
          if (ExtendedSinfFromSinfExtensions)
          {
            v11 = ExtendedSinfFromSinfExtensions;
            *(&v16 + 1) = CFDataGetBytePtr(ExtendedSinfFromSinfExtensions);
            LODWORD(v16) = CFDataGetLength(v11);
          }

          FairPlayContext = GetFairPlayContext(DerivedStorage);
          HN0R(FairPlayContext, &v15);
          v14 = FAIRPLAY_CALL_LOG(v13);
          if (v14 == -42072)
          {
            result = 0;
            *(DerivedStorage + 60) = 257;
            return result;
          }

          *(DerivedStorage + 60) = 1;
          if (v14)
          {
            return 0;
          }
        }

        result = 0;
        *a3 = a2;
      }
    }
  }

  return result;
}

uint64_t FigFairPlayCPEProtectorGetAggregateExternalProtectionStatus(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2)
  {
    if (DerivedStorage)
    {
      Status = FigCPEExternalProtectionMonitorGetStatus(*(DerivedStorage + 64));
      result = 0;
      *a2 = Status;
    }
  }

  return result;
}

uint64_t FigFairPlayCPEProtectorGetAggregateExternalProtectionState(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && DerivedStorage)
  {
    if (*(DerivedStorage + 73))
    {
      State = FigCPEExternalProtectionMonitorGetState(*(DerivedStorage + 64), 7);
      result = 0;
      *a2 = State;
    }

    else
    {
      return 4294955137;
    }
  }

  return result;
}

uint64_t FigFairPlayCPEProtectorEndAirPlaySession(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955146;
  }

  v2 = DerivedStorage;
  result = *(DerivedStorage + 88);
  if (result)
  {
    FigFairPlayAirPlaySessionDestroy(result);
    result = 0;
    *(v2 + 88) = 0;
  }

  return result;
}

uint64_t FigFairPlayCPEProtectorCopyPropertyForFormatDescriptionIdentifierAndRights(uint64_t a1, const void *a2, char a3, const void *a4, uint64_t a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && DerivedStorage && a4 && a6)
  {
    if (CFDictionaryContainsKey(*(DerivedStorage + 32), a2))
    {
      if (CFEqual(a4, *MEMORY[0x1E6961098]))
      {
        Value = CFDictionaryGetValue(*(DerivedStorage + 32), a2);
        v21 = 0;
        LegacySinfFromSinfExtensions = FigFairPlayGetLegacySinfFromSinfExtensions(Value);
        if (LegacySinfFromSinfExtensions)
        {
          v14 = LegacySinfFromSinfExtensions;
          CFDataGetBytePtr(LegacySinfFromSinfExtensions);
          CFDataGetLength(v14);
        }

        ExtendedSinfFromSinfExtensions = FigFairPlayGetExtendedSinfFromSinfExtensions(Value);
        if (ExtendedSinfFromSinfExtensions)
        {
          v16 = ExtendedSinfFromSinfExtensions;
          CFDataGetBytePtr(ExtendedSinfFromSinfExtensions);
          CFDataGetLength(v16);
        }

        IsLowValueSinf = FigFairPlayIsLowValueSinf(Value, &v21);
        if (v21)
        {
          v18 = IsLowValueSinf;
        }

        else
        {
          v18 = -42042;
        }

        v19 = v18 == -42407 || v18 == -42403;
        if ((v19 || !v18 || v18 == -42031) && (a3 & 5) != 0)
        {
          v20 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v20 = MEMORY[0x1E695E4C0];
        }

        result = 0;
        *a6 = *v20;
      }

      else
      {
        return 4294954509;
      }
    }

    else
    {
      return 4294955132;
    }
  }

  return result;
}

double FigCSSStyleDeclarationCopyPropertyValue(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a1)
  {
LABEL_11:
    OUTLINED_FUNCTION_0_23();
    goto LABEL_12;
  }

  if (a2)
  {
    if (a3)
    {
      v4 = *(a1 + 24);
      if (v4)
      {
        Value = CFDictionaryGetValue(v4, a2);
        if (Value)
        {
          v7 = CFDictionaryGetValue(Value, @"value");
          if (v7)
          {
            *a3 = CFRetain(v7);
          }
        }
      }

      return result;
    }

    goto LABEL_11;
  }

  v8 = "%s signalled err=%d at <>:%d";
LABEL_12:

  return FigSignalErrorAtGM(v8);
}

void FigCSSStyleSheetCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleSheetCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleSheetCopyRuleList_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleSheetCopyRuleList_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleSheetSetRuleList_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleSheetSetRuleList_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSRuleListCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSRuleListCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSRuleListCopyRuleAtIndex_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSRuleListAppendRule_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSRuleListAppendRule_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSRuleCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSRuleCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleCopySelector_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_148();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleCopySelector_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleCopySelector_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleCopyDeclaration_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_148();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleCopyDeclaration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleCopyDeclaration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleSetSelector_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_148();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleSetSelector_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleSetSelector_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleSetDeclaration_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_148();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleSetDeclaration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleRuleSetDeclaration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleDeclarationCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleDeclarationCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleDeclarationSetPropertyInfo_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleDeclarationSetPropertyInfo_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleDeclarationSetPropertyInfo_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleDeclarationSetPropertyInfo_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStyleDeclarationSetPropertyInfo_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t pwdKeyExchangeSenderAOCP_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294947752;
  if (a2 && a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    if (CFEqual(a2, @"PWDEncryptor"))
    {
      if (*(v8 + 80))
      {
        UInt64 = FigCFNumberCreateUInt64();
        *a4 = UInt64;
        if (UInt64)
        {
          v7 = 0;
        }

        else
        {
          v7 = 4294947756;
        }
      }
    }

    else if (CFEqual(a2, @"PWDKeyID"))
    {
      v10 = *(v8 + 96);
      if (v10)
      {
        v7 = 0;
        *a4 = CFRetain(v10);
      }
    }

    else
    {
      v7 = 0;
    }

    FigSimpleMutexUnlock();
  }

  return v7;
}

void __getAMSBagClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAMSBagClass(void)_block_invoke") description:{@"FigPWDKeyExchangeSender_AOCP.m", 140, @"Unable to find class %s", "AMSBag"}];
  __break(1u);
}

void AppleMediaServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *AppleMediaServicesLibrary(void)") description:{@"FigPWDKeyExchangeSender_AOCP.m", 139, @"%s", *a1}];
  __break(1u);
}

void __getAMSFairPlayDeviceIdentityProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAMSFairPlayDeviceIdentityProviderClass(void)_block_invoke") description:{@"FigPWDKeyExchangeSender_AOCP.m", 148, @"Unable to find class %s", "AMSFairPlayDeviceIdentityProvider"}];
  __break(1u);
}

void __getAMSURLSessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAMSURLSessionClass(void)_block_invoke") description:{@"FigPWDKeyExchangeSender_AOCP.m", 146, @"Unable to find class %s", "AMSURLSession"}];
  __break(1u);
}

void __getAMSURLRequestEncoderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAMSURLRequestEncoderClass(void)_block_invoke") description:{@"FigPWDKeyExchangeSender_AOCP.m", 147, @"Unable to find class %s", "AMSURLRequestEncoder"}];
  __break(1u);
}

void pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_11(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;
  CFRelease(a1);
}

uint64_t FigFairPlayCPECryptorCopyProperty(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_15_47(a1);
  if (!v4)
  {
    return 4294955146;
  }

  v5 = v4;
  if (CFEqual(v3, *MEMORY[0x1E6961098]))
  {
    v18 = 0;
    IsLowValueSinf = FigFairPlayIsLowValueSinf(*(v5 + 24), &v18);
    if (v18)
    {
      v7 = IsLowValueSinf;
    }

    else
    {
      v7 = -42042;
    }

    v10 = v7 == -42407 || v7 == -42403 || v7 == 0 || v7 == -42031;
    if (v10 && (*(v5 + 16) & 5) != 0)
    {
      v11 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v11 = MEMORY[0x1E695E4C0];
    }

    result = 0;
    v14 = *v11;
    goto LABEL_26;
  }

  if (CFEqual(v3, *MEMORY[0x1E6961118]))
  {
    v12 = CFRetain(*MEMORY[0x1E695E4D0]);
LABEL_25:
    v14 = v12;
    result = 0;
LABEL_26:
    *v1 = v14;
    return result;
  }

  if (CFEqual(v3, *MEMORY[0x1E69610C0]))
  {
    Methods = FigCPEExternalProtectionMonitorGetMethods(*(v5 + 80));
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &Methods);
    goto LABEL_25;
  }

  v15 = *(v5 + 8);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v15, v3, v2, v1);
}

uint64_t FigFairPlayCPECryptorSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  v6 = DerivedStorage;
  if (!CFEqual(a2, *MEMORY[0x1E69610C0]))
  {
    return 4294955144;
  }

  Methods = FigCPEExternalProtectionMonitorGetMethods(*(v6 + 80));
  valuePtr = 0;
  if (!a3)
  {
    return 4294955136;
  }

  v8 = Methods;
  v9 = CFGetTypeID(a3);
  if (v9 != CFNumberGetTypeID())
  {
    return 4294955136;
  }

  CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr & ~v8) == 0)
  {
    return 0;
  }

  cf = 0;
  result = FigCPEExternalProtectionMonitorCreateForMethods(*MEMORY[0x1E695E480], valuePtr & ~v8, 0, *(v6 + 80), &cf);
  if (!result)
  {
    v11 = *(v6 + 80);
    v12 = cf;
    *(v6 + 80) = cf;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  return result;
}

uint64_t FigFairPlayCPECryptorGetNativeSession(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2 && v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      AudioQueue = FigAudioQueueTimingShimGetAudioQueue(v5);
    }

    else
    {
      AudioQueue = 0;
    }

    return OUTLINED_FUNCTION_16_45(AudioQueue);
  }

  return result;
}

uint64_t FigFairPlayCPECryptorGetExternalProtectionMethods(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2)
  {
    if (v4)
    {
      Methods = FigCPEExternalProtectionMonitorGetMethods(*(v4 + 80));
      return OUTLINED_FUNCTION_9_59(Methods);
    }
  }

  return result;
}

uint64_t FigFairPlayCPECryptorGetAggregateExternalProtectionStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  Status = FigCPEExternalProtectionMonitorGetStatus(*(DerivedStorage + 80));
  return OUTLINED_FUNCTION_9_59(Status);
}

uint64_t FigFairPlayCPECryptorScrambleDecryptedSample(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  DataLength = CMBlockBufferGetDataLength(a2);
  v8 = OUTLINED_FUNCTION_2_149(a2, v5, v6, v7, &v20);
  result = 4294955146;
  if (DataLength && !v8 && v20)
  {
    if (!CMBlockBufferIsRangeContiguous(a2, 0, DataLength))
    {
      return 4294955140;
    }

    if (*(DerivedStorage + 49))
    {
      v10 = *(DerivedStorage + 52);
      if (DataLength <= v10)
      {
        return 0;
      }

      v12 = *(DerivedStorage + 56);
      v11 = *(DerivedStorage + 60);
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v12 = 512;
    }

    result = 0;
    v13 = v12 + v11;
    if (v13 && v10 < DataLength)
    {
      do
      {
        v14 = DataLength - v10;
        if (DataLength - v10 >= v12)
        {
          v14 = v12;
        }

        v15 = v14 & 0xFFFFFFF0;
        v16 = __CFADD__(v15, v10);
        v17 = v15 + v10;
        if (v16)
        {
          v18 = FigFairPlayCPECryptorScrambleDecryptedSample_sbCounter;
          v19 = v10;
          do
          {
            v20[v19++] = ((v18 ^ 0x4C) * (32 - v18)) ^ &FigFairPlayCPECryptorScrambleDecryptedSample_sbCounter;
            v18 = ++FigFairPlayCPECryptorScrambleDecryptedSample_sbCounter;
          }

          while (v19 > v17);
        }

        v10 += v13;
      }

      while (v10 < DataLength);
      return 0;
    }
  }

  return result;
}

uint64_t FigFairPlayCPECryptorPairForReEncryption(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2 && v7)
  {
    if ((*(v7 + 16) & 5) == 1)
    {
      if (a4)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (DerivedStorage)
        {
          if ((*(DerivedStorage + 16) & 5) == 1)
          {
            return 4294955136;
          }

          else
          {
            return 4294955143;
          }
        }

        else
        {
          return 4294955146;
        }
      }
    }

    else
    {
      return 4294955143;
    }
  }

  return result;
}

uint64_t FigFairPlayCPECryptorIsCompatibleWithFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v10 = 0;
  if (a2)
  {
    if (a1)
    {
      v6 = DerivedStorage;
      if (DerivedStorage)
      {
        v7 = FigFairPlayCopySinfExtensionsFromFormatDescription(a2);
        v8 = v7;
        if (v7 && CFEqual(v7, *(v6 + 24)))
        {
          v5 = 1;
          goto LABEL_13;
        }

        if (FigFairPlayGetDPInfoFromSinfExtensions(*(v6 + 24)) && !FigFairPlayIsPlaceholder(v8, &v10) && v10)
        {
          v5 = 1;
          if (!v8)
          {
            return v5;
          }

          goto LABEL_13;
        }

        v5 = 0;
        if (v8)
        {
LABEL_13:
          CFRelease(v8);
        }
      }
    }
  }

  return v5;
}

uint64_t FigFairPlayCPECryptorGetMaximumRequiredOutputBufferSizeForSampleWithFormat(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && a4)
  {
    if (!*(DerivedStorage + 72))
    {
      result = FigFairPlayGetMaximumReEncryptionPaddingByteCount(*(DerivedStorage + 24), (DerivedStorage + 64));
      if (result)
      {
        return result;
      }

      *(DerivedStorage + 72) = 1;
    }

    DataLength = CMBlockBufferGetDataLength(a2);
    result = 0;
    *a4 = *(DerivedStorage + 64) + DataLength;
  }

  return result;
}

uint64_t FigFairPlayCPECryptorReEncryptSample(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_15_47(a1);
  if (!v3)
  {
    return 4294955146;
  }

  return DecryptCommon(v4, v2, v1);
}

uint64_t FigFairPlayCPECryptorReEncryptSampleWithFormat(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_15_47(a1);
  if (!v3)
  {
    return 4294955146;
  }

  return DecryptCommon(v4, v2, v1);
}

uint64_t FigFairPlayCPECryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions()
{
  OUTLINED_FUNCTION_5_103();
  v119 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_124(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v76, v83, v90, v97, v98, v99, v100, cf, v102, theData, v104, v105, v106, v107, v108, v109, BytePtr, v111, v112, v113);
  FormatDescription = CMSampleBufferGetFormatDescription(v2);
  if (CMFormatDescriptionGetMediaSubType(FormatDescription) != 1685220713)
  {
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_42:
    v4 = v47;
    goto LABEL_35;
  }

  if (FigCFEqual())
  {
LABEL_24:
    DataBuffer = CMSampleBufferGetDataBuffer(v2);
    v47 = OUTLINED_FUNCTION_7_77(DataBuffer, v40, v41, v42, v43, v44, v45, v46, v77, v84, v91, v97, v98, v99, v100, cf);
    if (!v47)
    {
      v47 = OUTLINED_FUNCTION_14_51(0, v48, v49, v50, v51, v52, v53, v54, v78, v85, v92, v97, v98, v99, v100, cf);
      if (!v47)
      {
        v47 = OUTLINED_FUNCTION_4_119(0, v55, v56, v57, v58, v59, v60, v61, v79, v86, v93, v97, v98, v99);
        if (!v47)
        {
          v47 = OUTLINED_FUNCTION_2_149(v98, v62, v63, v64, &v97);
          if (!v47)
          {
            AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(v1 + 40));
            v116 = 0;
            v65 = (v0 & 1) != 0 ? 5 : 1;
            OUTLINED_FUNCTION_1_156(v65, v80, v87, v94, v97, v98, v99, v100, cf, v102, theData, v104, v105, v106, v107, v108, v109, BytePtr, v111, v112, v113, v114);
            v47 = FAIRPLAY_CALL_LOG(v66);
            if (!v47)
            {
              if (v117 == v99 && v118 < 0x11)
              {
                v67 = OUTLINED_FUNCTION_10_57(v118, v81, v88, v95, v97, v98, v99, v100, cf, v102, theData, v104, v105, v106, v107, v108, v109, BytePtr, v111, v112, v113);
                OUTLINED_FUNCTION_11_60(v67, v68, v69, v70, v71, v72, v73, v74, v82, v89, v96, v97, v98);
                goto LABEL_35;
              }

              OUTLINED_FUNCTION_49_0();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }
          }
        }
      }
    }

    goto LABEL_42;
  }

  v84 = v3;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_89();
  Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x1E69600A0]);
  if (!Extension)
  {
    goto LABEL_43;
  }

  v15 = Extension;
  v16 = CFGetTypeID(Extension);
  if (v16 != CFDictionaryGetTypeID())
  {
    goto LABEL_43;
  }

  Value = CFDictionaryGetValue(v15, @"avcC");
  if (!Value)
  {
    goto LABEL_43;
  }

  v18 = Value;
  v19 = CFGetTypeID(Value);
  if (v19 != CFDataGetTypeID())
  {
    goto LABEL_43;
  }

  SPSAndPPSCountFromAVCC = FigH264Bridge_GetSPSAndPPSCountFromAVCC();
  if (SPSAndPPSCountFromAVCC)
  {
    goto LABEL_15;
  }

  if (v109 == 1 && v108 == 1)
  {
    CFDataGetBytePtr(v18);
    v21 = OUTLINED_FUNCTION_17_40();
    SPSAndPPSCountFromAVCC = OUTLINED_FUNCTION_12_55(v21, v22, v23, v24, v25, v26, v27, v28, v77, v3, v91, v97);
    if (!SPSAndPPSCountFromAVCC)
    {
      CFDataGetBytePtr(v18);
      v29 = OUTLINED_FUNCTION_17_40();
      SPSAndPPSCountFromAVCC = OUTLINED_FUNCTION_13_43(v29, v30, v31, v32, v33, v34, v35, v36, v77, v84, v91, v97, v98, v99, v100, cf, v102, theData);
      if (!SPSAndPPSCountFromAVCC)
      {
        SPSAndPPSCountFromAVCC = FigH264Bridge_CopyStandaloneSPSData();
        if (!SPSAndPPSCountFromAVCC)
        {
          SPSAndPPSCountFromAVCC = FigH264Bridge_CopyStandalonePPSData();
          if (!SPSAndPPSCountFromAVCC)
          {
            BytePtr = CFDataGetBytePtr(theData);
            LODWORD(v111) = CFDataGetLength(theData);
            v112 = CFDataGetBytePtr(v102);
            LODWORD(v113) = CFDataGetLength(v102);
            FigAudioQueueTimingShimGetAudioQueue(*(v3 + 40));
            CdfajkOy32ff();
            SPSAndPPSCountFromAVCC = FAIRPLAY_CALL_LOG(v37);
          }
        }
      }
    }
  }

  else
  {
LABEL_43:
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_15:
  v4 = SPSAndPPSCountFromAVCC;
  if (theData)
  {
    CFRelease(theData);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (!v4)
  {
    v38 = *(v1 + 88);
    *(v1 + 88) = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    goto LABEL_24;
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  return v4;
}

uint64_t FigFairPlayCPECryptorGetAggregateExternalProtectionStatusIgnoringDisplays(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  StatusIgnoringDisplays = FigCPEExternalProtectionMonitorGetStatusIgnoringDisplays(*(DerivedStorage + 80));
  return OUTLINED_FUNCTION_9_59(StatusIgnoringDisplays);
}

uint64_t FigFairPlayCPECryptorCopySerializedCryptorRecipe(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(a1, &v7);
    if (result)
    {
      return result;
    }

    *bytes = v7;
    Methods = FigCPEExternalProtectionMonitorGetMethods(*(v3 + 80));
    v10 = 1;
    v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    if (!v6)
    {
      return 4294955145;
    }
  }

  else
  {
    v6 = 0;
  }

  return OUTLINED_FUNCTION_16_45(v6);
}

uint64_t FigFairPlayCPECryptorGetCryptorType(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  result = 0;
  *a2 = 1;
  return result;
}

uint64_t DecryptCommon(uint64_t a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  v20 = 0;
  v21 = 0;
  v3 = 4294955146;
  if (a1 && a2 && a3 && *a3)
  {
    v7 = CFRetain(*a3);
    DataLength = CMBlockBufferGetDataLength(a2);
    v9 = CMBlockBufferGetDataLength(v7);
    if (CMBlockBufferIsRangeContiguous(a2, 0, DataLength) && CMBlockBufferIsRangeContiguous(v7, 0, v9))
    {
      if (*(a1 + 40))
      {
        v13 = OUTLINED_FUNCTION_2_149(a2, v10, v11, v12, &v21);
        if (v13 || (v13 = OUTLINED_FUNCTION_2_149(v7, v14, v15, v16, &v20), v13) || (FigAudioQueueTimingShimGetAudioQueue(*(a1 + 40)), YHrWZQ6wU(), v13 = FAIRPLAY_CALL_LOG(v17), v13))
        {
          v3 = v13;
        }

        else
        {
          v18 = *a3;
          *a3 = v7;
          if (v7)
          {
            CFRetain(v7);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          v3 = 0;
        }
      }

      else
      {
        v3 = 4294955138;
      }
    }

    else
    {
      v3 = 4294955140;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v3;
}

uint64_t FigFairPlayCPELimitedCryptorGetNativeSession(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2 && v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      AudioQueue = FigAudioQueueTimingShimGetAudioQueue(v5);
    }

    else
    {
      AudioQueue = 0;
    }

    return OUTLINED_FUNCTION_16_45(AudioQueue);
  }

  return result;
}

uint64_t FigFairPlayCPELimitedCryptorGetExternalProtectionMethods(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2)
  {
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 24);
    }
  }

  return result;
}

uint64_t FigFairPlayCPELimitedCryptorDecryptSampleWithFormat(uint64_t a1, OpaqueCMBlockBuffer *a2, OpaqueCMBlockBuffer *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v19 = 0;
  result = 4294955146;
  if (a1 && a2 && a3)
  {
    DataLength = CMBlockBufferGetDataLength(a2);
    v9 = CMBlockBufferGetDataLength(a3);
    if (v9 < DataLength)
    {
      return 4294955136;
    }

    else
    {
      v10 = v9;
      if (CMBlockBufferIsRangeContiguous(a2, 0, DataLength) && CMBlockBufferIsRangeContiguous(a3, 0, v10))
      {
        if (*(DerivedStorage + 8))
        {
          result = OUTLINED_FUNCTION_2_149(a2, v11, v12, v13, &v19);
          if (!result)
          {
            result = OUTLINED_FUNCTION_2_149(a3, v14, v15, v16, &v18);
            if (!result)
            {
              FigAudioQueueTimingShimGetAudioQueue(*(DerivedStorage + 8));
              YHrWZQ6wU();
              return FAIRPLAY_CALL_LOG(v17);
            }
          }
        }

        else
        {
          return 4294955138;
        }
      }

      else
      {
        return 4294955140;
      }
    }
  }

  return result;
}

uint64_t FigFairPlayCPELimitedCryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions()
{
  OUTLINED_FUNCTION_5_103();
  v119 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_124(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v76, v83, v90, v97, v98, v99, v100, cf, v102, theData, v104, v105, v106, v107, v108, v109, BytePtr, v111, v112, v113);
  FormatDescription = CMSampleBufferGetFormatDescription(v2);
  if (CMFormatDescriptionGetMediaSubType(FormatDescription) != 1685220713)
  {
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_42:
    v4 = v47;
    goto LABEL_35;
  }

  if (FigCFEqual())
  {
LABEL_24:
    DataBuffer = CMSampleBufferGetDataBuffer(v2);
    v47 = OUTLINED_FUNCTION_7_77(DataBuffer, v40, v41, v42, v43, v44, v45, v46, v77, v84, v91, v97, v98, v99, v100, cf);
    if (!v47)
    {
      v47 = OUTLINED_FUNCTION_14_51(0, v48, v49, v50, v51, v52, v53, v54, v78, v85, v92, v97, v98, v99, v100, cf);
      if (!v47)
      {
        v47 = OUTLINED_FUNCTION_4_119(0, v55, v56, v57, v58, v59, v60, v61, v79, v86, v93, v97, v98, v99);
        if (!v47)
        {
          v47 = OUTLINED_FUNCTION_2_149(v98, v62, v63, v64, &v97);
          if (!v47)
          {
            AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(v1 + 8));
            v116 = 0;
            v65 = (v0 & 1) != 0 ? 5 : 1;
            OUTLINED_FUNCTION_1_156(v65, v80, v87, v94, v97, v98, v99, v100, cf, v102, theData, v104, v105, v106, v107, v108, v109, BytePtr, v111, v112, v113, v114);
            v47 = FAIRPLAY_CALL_LOG(v66);
            if (!v47)
            {
              if (v117 == v99 && v118 < 0x11)
              {
                v67 = OUTLINED_FUNCTION_10_57(v118, v81, v88, v95, v97, v98, v99, v100, cf, v102, theData, v104, v105, v106, v107, v108, v109, BytePtr, v111, v112, v113);
                OUTLINED_FUNCTION_11_60(v67, v68, v69, v70, v71, v72, v73, v74, v82, v89, v96, v97, v98);
                goto LABEL_35;
              }

              OUTLINED_FUNCTION_49_0();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }
          }
        }
      }
    }

    goto LABEL_42;
  }

  v84 = v3;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_89();
  Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x1E69600A0]);
  if (!Extension)
  {
    goto LABEL_43;
  }

  v15 = Extension;
  v16 = CFGetTypeID(Extension);
  if (v16 != CFDictionaryGetTypeID())
  {
    goto LABEL_43;
  }

  Value = CFDictionaryGetValue(v15, @"avcC");
  if (!Value)
  {
    goto LABEL_43;
  }

  v18 = Value;
  v19 = CFGetTypeID(Value);
  if (v19 != CFDataGetTypeID())
  {
    goto LABEL_43;
  }

  SPSAndPPSCountFromAVCC = FigH264Bridge_GetSPSAndPPSCountFromAVCC();
  if (SPSAndPPSCountFromAVCC)
  {
    goto LABEL_15;
  }

  if (v109 == 1 && v108 == 1)
  {
    CFDataGetBytePtr(v18);
    v21 = OUTLINED_FUNCTION_17_40();
    SPSAndPPSCountFromAVCC = OUTLINED_FUNCTION_12_55(v21, v22, v23, v24, v25, v26, v27, v28, v77, v3, v91, v97);
    if (!SPSAndPPSCountFromAVCC)
    {
      CFDataGetBytePtr(v18);
      v29 = OUTLINED_FUNCTION_17_40();
      SPSAndPPSCountFromAVCC = OUTLINED_FUNCTION_13_43(v29, v30, v31, v32, v33, v34, v35, v36, v77, v84, v91, v97, v98, v99, v100, cf, v102, theData);
      if (!SPSAndPPSCountFromAVCC)
      {
        SPSAndPPSCountFromAVCC = FigH264Bridge_CopyStandaloneSPSData();
        if (!SPSAndPPSCountFromAVCC)
        {
          SPSAndPPSCountFromAVCC = FigH264Bridge_CopyStandalonePPSData();
          if (!SPSAndPPSCountFromAVCC)
          {
            BytePtr = CFDataGetBytePtr(theData);
            LODWORD(v111) = CFDataGetLength(theData);
            v112 = CFDataGetBytePtr(v102);
            LODWORD(v113) = CFDataGetLength(v102);
            FigAudioQueueTimingShimGetAudioQueue(*(v3 + 8));
            CdfajkOy32ff();
            SPSAndPPSCountFromAVCC = FAIRPLAY_CALL_LOG(v37);
          }
        }
      }
    }
  }

  else
  {
LABEL_43:
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_15:
  v4 = SPSAndPPSCountFromAVCC;
  if (theData)
  {
    CFRelease(theData);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (!v4)
  {
    v38 = *(v1 + 16);
    *(v1 + 16) = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    goto LABEL_24;
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  return v4;
}

uint64_t FigFairPlayCPELimitedCryptorCopySerializedCryptorRecipe(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(a1, &v8);
    if (result)
    {
      return result;
    }

    v6 = *(v3 + 24);
    *bytes = v8;
    v10 = v6;
    v11 = 2;
    v7 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    if (!v7)
    {
      return 4294955145;
    }
  }

  else
  {
    v7 = 0;
  }

  return OUTLINED_FUNCTION_16_45(v7);
}

uint64_t FigFairPlayCPELimitedCryptorIsCompatibleWithSerializedCryptorRecipe(uint64_t a1, const __CFData *a2, BOOL *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(a2);
  if (CFDataGetLength(a2) != 24)
  {
    return 4294949724;
  }

  v8 = *BytePtr;
  v9 = *(BytePtr + 2);
  v10 = *(BytePtr + 4);
  v15 = 0;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    return 4294954514;
  }

  result = v11(a1, &v15);
  if (!result)
  {
    v14 = 0;
    if (v15 == v8 && *(DerivedStorage + 24) == v9 && v10 == 1)
    {
      v14 = 1;
    }

    result = 0;
    *a3 = v14;
  }

  return result;
}

uint64_t FigFairPlayCPELimitedCryptorGetCryptorType(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2)
  {
    if (v4)
    {
      result = 0;
      *a2 = 1;
    }
  }

  return result;
}

void audioSessionMXSession_forwardMXSessionNotification(int a1, uint64_t a2, void *key)
{
  if (key)
  {
    if (!FigAudioSessionGetNotificationNameForMXSessionNotificationNameInternal(key, a2))
    {
      FigSimpleMutexLock();
      v4 = OUTLINED_FUNCTION_1_157();
      Value = CFDictionaryGetValue(v4, v5);
      FigSimpleMutexUnlock();
      if (!Value)
      {
        v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigAudioSessionMXSessionNotification_%@", key);
        if (!v7)
        {
          return;
        }

        v8 = v7;
        FigSimpleMutexLock();
        v9 = OUTLINED_FUNCTION_1_157();
        CFDictionarySetValue(v9, v10, v8);
        FigSimpleMutexUnlock();
        CFRelease(v8);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_150();

    CMNotificationCenterPostNotification();
  }
}

void audioSessionMXSession_forwardCMSessionNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    FigSimpleMutexLock();
    v4 = OUTLINED_FUNCTION_1_157();
    Value = CFDictionaryGetValue(v4, v5);
    FigSimpleMutexUnlock();
    if (!Value)
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigAudioSessionCMSessionNotification_%@", a3);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      FigSimpleMutexLock();
      v9 = OUTLINED_FUNCTION_1_157();
      CFDictionarySetValue(v9, v10, v8);
      FigSimpleMutexUnlock();
      CFRelease(v8);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_150();

    CMNotificationCenterPostNotification();
  }
}

uint64_t FigAudioSessionCreateWithCMSession(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  result = MXSessionCreate();
  if (!result)
  {
    return FigAudioSessionCreateWithCMSessionAndMXSession(a1, a2, 0, a3);
  }

  return result;
}

uint64_t audioSessionMXSession_RequestConfigurationForProperty(uint64_t a1, void *a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForRequestedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(a2);
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForRequestedFigAudioSessionPropertyInternal)
  {
    v6 = MXSessionSetProperty();
  }

  else
  {
    v6 = 4294948074;
  }

  if (*v5 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v6;
}

BOOL audioSessionMXSession_IsRelatedSessionID(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v2 = AudioSessionCopyCMSessionForSessionID();
  v3 = v2 && !MXSessionCopyProperty() && !CMSessionCopyProperty() && CFNumberCompare(0, 0, 0) == kCFCompareEqualTo;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t audioSessionMXSession_SetMXSessionPropertiesAndCopyErrors(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  CMBaseObjectGetDerivedStorage();
  Count = FigCFDictionaryGetCount();
  v6 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(a2, v6, 0);
  if (Count < 1)
  {
    v10 = 1;
  }

  else
  {
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      if (*v6)
      {
        CFHash(*v6);
      }

      if (Count != 1)
      {
        v8 = v6[1];
        if (v8)
        {
          CFHash(v8);
        }

        if (Count >= 3)
        {
          v9 = v6[2];
          if (v9)
          {
            CFHash(v9);
          }
        }
      }

      kdebug_trace();
    }

    v10 = MXSessionSetProperties() == 0;
    if (*v7 == 1)
    {
      if (Count >= 4)
      {
        v11 = v6[3];
        if (v11)
        {
          CFHash(v11);
        }

        if (Count != 4)
        {
          v12 = v6[4];
          if (v12)
          {
            CFHash(v12);
          }

          if (Count >= 6)
          {
            v13 = v6[5];
            if (v13)
            {
              CFHash(v13);
            }
          }
        }
      }

      kdebug_trace();
    }

    if (a3)
    {
      *a3 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v10 = v10;
    }
  }

  free(v6);
  return v10;
}

uint64_t audioSessionMXSession_CopySpatializationCapabilities(uint64_t a1, const __CFAllocator *a2, uint64_t a3, __CFDictionary **a4)
{
  cf = 0;
  v10 = 0;
  v11 = 0;
  v13 = 0;
  v12 = 0;
  CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    SessionSpatialPreferencesForContentType = CMSessionCopyProperty();
    if (!SessionSpatialPreferencesForContentType)
    {
      FigCFNumberGetSInt32();
      SessionSpatialPreferencesForContentType = AudioGetSessionSpatialPreferencesForContentType();
      if (!SessionSpatialPreferencesForContentType)
      {
        SessionSpatialPreferencesForContentType = FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences(&v10, a2, a4);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  }

  v7 = SessionSpatialPreferencesForContentType;
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t audioSessionMXSession_copyAudioDeviceIsAvailable(uint64_t a1, CFTypeRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  v14 = 0;
  theArray = 0;
  v12 = 0;
  v13 = 0;
  cf = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, cf, v12);
    goto LABEL_28;
  }

  v3 = MXSessionCopyProperty();
  if (v3)
  {
LABEL_28:
    v6 = v3;
    goto LABEL_18;
  }

  if (FigCFNumberGetSInt32() == 12)
  {
    v3 = MXSessionCopyProperty();
    if (!v3)
    {
      v4 = v14;
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 144);
      if (!v5)
      {
        v6 = 4294954514;
        goto LABEL_18;
      }

      v6 = v5(v4, v12, &cf);
      v7 = cf;
      if (v6)
      {
        goto LABEL_15;
      }

      if (!cf)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_28;
  }

  v3 = MXSessionCopyProperty();
  if (v3)
  {
    goto LABEL_28;
  }

  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
LABEL_13:
    v8 = MEMORY[0x1E695E4C0];
    goto LABEL_14;
  }

LABEL_12:
  v8 = MEMORY[0x1E695E4D0];
LABEL_14:
  v6 = 0;
  *a2 = CFRetain(*v8);
  v7 = cf;
LABEL_15:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_18:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v6;
}

void FigAudioSessionCreateWithCMSessionAndMXSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAudioSessionCreateWithCMSessionAndMXSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAudioSessionCreateWithCMSessionAndMXSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAudioSessionCreateWithCMSessionAndMXSession_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAudioSessionCreateWithCMSessionAndMXSession_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAudioSessionCreateWithMXSessionSiblingForFigAudioSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void audioSessionMXSession_copyNeroInformationDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigRCLCreateConfiguration(const void *a1, CFTypeRef cf1, const __CFDictionary *a3, CFMutableDictionaryRef *a4)
{
  if (qword_1ED4CB6E8 == -1)
  {
    if (!cf1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    dispatch_once(&qword_1ED4CB6E8, &__block_literal_global_84);
    if (!cf1)
    {
      goto LABEL_39;
    }
  }

  if (!a4)
  {
    goto LABEL_39;
  }

  if (qword_1ED4CB6F0 != -1)
  {
    OUTLINED_FUNCTION_1_158(&qword_1ED4CB6F0);
  }

  v8 = qword_1ED4CB6F8;
  if (!qword_1ED4CB6F8)
  {
    goto LABEL_39;
  }

  if (!CFEqual(cf1, @"kFigRemoteConfigurationLoaderStoreBagType_Pump"))
  {
    if (CFEqual(cf1, @"kFigRemoteConfigurationLoaderStoreBagType_CRABS"))
    {
      v9 = 1;
      goto LABEL_13;
    }

    if (CFEqual(cf1, @"kFigRemoteConfigurationLoaderStoreBagType_AirPlay"))
    {
      v9 = 2;
      goto LABEL_13;
    }

LABEL_39:
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v9 = 0;
LABEL_13:
  v25 = 0;
  result = 0.0;
  memset(context, 0, sizeof(context));
  v11 = &v8[3 * v9];
  v13 = v11[5];
  v12 = v11 + 5;
  if (v13 && v12[1])
  {
    if (a3)
    {
      v14 = CFDictionaryGetValue(a3, @"ServiceIdentifier");
      v15 = CFDictionaryGetValue(a3, @"configurationGroup");
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = a1;
    }

    v25 = 0;
    *(&context[1] + 8) = 0u;
    *&context[0] = v8;
    *(&context[0] + 1) = v16;
    *&context[1] = v15;
    *(&context[2] + 1) = v12;
    dispatch_sync_f(*v8, context, rcl_FigRCLCreateConfiguration_dispatcher);
    if (!*(&context[1] + 1))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(&context[1] + 1) = Mutable;
      if (!Mutable)
      {
        OUTLINED_FUNCTION_239();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, value, LODWORD(context[0]));
      }

      goto LABEL_38;
    }

    value = 0;
    if (FigCFEqual())
    {
      v17 = 0;
    }

    else if (FigCFEqual())
    {
      v17 = 1;
    }

    else
    {
      if (!FigCFEqual())
      {
LABEL_37:
        Mutable = *(&context[1] + 1);
LABEL_38:
        *a4 = Mutable;
        return result;
      }

      v17 = 2;
    }

    result = FigTrialCreate(a1, v17, &value);
    if (value)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v20 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"figTrial", value);
        v21 = *(&context[1] + 1);
        *(&context[1] + 1) = v20;
        CFRetain(v20);
        if (v21)
        {
          CFRelease(v21);
        }

        CFRelease(v20);
      }

      if (value)
      {
        CFRelease(value);
      }
    }

    goto LABEL_37;
  }

  return result;
}

void rcl_FigRCLCreateConfiguration_dispatcher(uint64_t a1)
{
  v124[16] = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0;
  *(a1 + 33) = 1;
  v2 = *(a1 + 40);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  valuePtr = 0;
  v6 = *(v2 + 16) + 21600.0;
  *(a1 + 33) = v6 < CFAbsoluteTimeGetCurrent();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = Mutable;
    CFArrayAppendValue(Mutable, @"storeBagVersion");
    CFArrayAppendValue(v8, @"versionConfiguration");
    CFArrayAppendValue(v8, @"configurationGroupMap");
    CFArrayAppendValue(v8, @"expires");
    CFArrayAppendValue(v8, @"OSVersion");
    v9 = CFPreferencesCopyMultiple(v8, *(v2 + 8), *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    if (!v9)
    {
      v12 = 0;
      v10 = v8;
      goto LABEL_48;
    }

    v10 = v9;
    Value = CFDictionaryGetValue(v9, @"storeBagVersion");
    v12 = Value;
    if (Value)
    {
      v13 = CFGetTypeID(Value);
      if (v13 != CFNumberGetTypeID() || (CFNumberGetValue(v12, kCFNumberCFIndexType, &valuePtr), valuePtr != 2) || (v14 = CFDictionaryGetValue(v10, @"versionConfiguration")) == 0 || (v15 = v14, v16 = CFGetTypeID(v14), v16 != CFDictionaryGetTypeID()))
      {
LABEL_46:
        v12 = 0;
        goto LABEL_47;
      }

      v17 = CFDictionaryGetValue(v10, @"configurationGroupMap");
      v12 = v17;
      if (v17)
      {
        v18 = CFGetTypeID(v17);
        if (v18 == CFDictionaryGetTypeID())
        {
          if (v5 && (v19 = CFDictionaryGetValue(v12, v5)) != 0)
          {
            v20 = v19;
LABEL_29:
            v49 = CFGetTypeID(v20);
            if (v49 == CFDictionaryGetTypeID())
            {
              v12 = CFRetain(v20);
              v124[0] = 0;
              v120 = 0;
              v50 = CFDictionaryGetValue(v10, @"expires");
              v57 = 1;
              if (v50)
              {
                v51 = v50;
                v52 = CFGetTypeID(v50);
                if (v52 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v51, kCFNumberDoubleType, v124);
                  v53 = CFDictionaryGetValue(v10, @"OSVersion");
                  if (v53)
                  {
                    v54 = v53;
                    v55 = CFGetTypeID(v53);
                    if (v55 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v54, kCFNumberSInt32Type, &v120);
                      if (_MergedGlobals_107 >= v120)
                      {
                        v56 = *v124;
                        if (v56 > CFAbsoluteTimeGetCurrent())
                        {
                          v57 = 0;
                        }
                      }
                    }
                  }
                }
              }

              *(a1 + 33) = v57;
              goto LABEL_47;
            }
          }

          else if (v3 && (v21 = CFDictionaryGetValue(v15, v3)) != 0 || (v22 = CFDictionaryGetValue(v15, @"defaultBundleID")) != 0 && (v21 = v22, v23 = CFGetTypeID(v22), v23 == CFArrayGetTypeID()))
          {
            v105 = v10;
            v24 = arc4random_uniform(0x64u);
            if (CFArrayGetCount(v21) >= 1)
            {
              v25 = 0;
              HIDWORD(v99) = v24;
              v26 = v24;
              v27 = 0.0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, v25);
                v119 = 0.0;
                if (!ValueAtIndex || (v36 = ValueAtIndex, v24 = CFGetTypeID(ValueAtIndex), ValueAtIndex = CFDictionaryGetTypeID(), v24 != ValueAtIndex))
                {
                  v71 = OUTLINED_FUNCTION_3_125(ValueAtIndex, v29, v30, v31, v32, v33, v34, v35, v96, v99, v4, v105, block, v110, v111, v112, v113, valuePtr, v115, v116, v117, *type);
                  v79 = OUTLINED_FUNCTION_10_58(v71, v72, v73, v74, v75, v76, v77, v78, v97, v100, v102, v106, block, v110, v111, v112, v113, valuePtr, v115, v116, v117, *type);
                  if (OUTLINED_FUNCTION_115_1(v79))
                  {
LABEL_55:
                    v120 = 136315138;
                    v121 = "rcl_GetConfigurationGroupNameFromPercentArray";
                    OUTLINED_FUNCTION_62();
                    OUTLINED_FUNCTION_36();
                    _os_log_send_and_compose_impl(v89, v90, v91, v92, v93, v94, v24, v95);
                  }

LABEL_56:
                  v4 = v103;
                  v10 = v107;
                  OUTLINED_FUNCTION_16();
                  goto LABEL_45;
                }

                TypeID = CFDictionaryGetValue(v36, @"percentage");
                if (!TypeID || (v24 = TypeID, v45 = CFGetTypeID(TypeID), TypeID = CFNumberGetTypeID(), v45 != TypeID))
                {
                  v80 = OUTLINED_FUNCTION_3_125(TypeID, v38, v39, v40, v41, v42, v43, v44, v96, v99, v4, v105, block, v110, v111, v112, v113, valuePtr, v115, v116, v117, *type);
                  v88 = OUTLINED_FUNCTION_10_58(v80, v81, v82, v83, v84, v85, v86, v87, v98, v101, v104, v108, block, v110, v111, v112, v113, valuePtr, v115, v116, v117, *type);
                  if (OUTLINED_FUNCTION_115_1(v88))
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_56;
                }

                CFNumberGetValue(v24, kCFNumberFloat64Type, &v119);
                v27 = v27 + v119;
                v46 = CFDictionaryGetValue(v36, @"configurationGroup");
                if (v27 >= v26)
                {
                  break;
                }

                ++v25;
              }

              while (v25 < CFArrayGetCount(v21));
              LODWORD(v24) = HIDWORD(v99);
              if (v46)
              {
                v47 = CFGetTypeID(v46);
                if (v47 == CFStringGetTypeID())
                {
                  v48 = CFDictionaryGetValue(v12, v46);
                  if (v48)
                  {
                    v20 = v48;
                    v10 = v105;
                    goto LABEL_29;
                  }

                  v12 = 0;
                  v10 = v105;
                  goto LABEL_47;
                }
              }
            }

            LODWORD(v119) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v59 = LODWORD(v119);
            v60 = type[0];
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
            {
              v61 = v59;
            }

            else
            {
              v61 = v59 & 0xFFFFFFFE;
            }

            if (v61)
            {
              v120 = 136315394;
              v121 = "rcl_GetConfigurationGroupNameFromPercentArray";
              v122 = 1024;
              v123 = v24;
              OUTLINED_FUNCTION_62();
              OUTLINED_FUNCTION_36();
              _os_log_send_and_compose_impl(v62, v63, v64, v65, v66, v67, v60, v68);
            }

            v10 = v105;
            OUTLINED_FUNCTION_16();
LABEL_45:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        goto LABEL_46;
      }
    }

LABEL_47:
    CFRelease(v8);
LABEL_48:
    CFRelease(v10);
    goto LABEL_49;
  }

  v12 = 0;
LABEL_49:
  *(a1 + 24) = v12;
  if (*(a1 + 33))
  {
    v69 = *(a1 + 40);
    v70 = *v4;
    block = MEMORY[0x1E69E9820];
    v110 = 3221225472;
    v111 = __rcl_FigRCLCreateConfiguration_dispatcher_block_invoke;
    v112 = &__block_descriptor_40_e5_v8__0l;
    v113 = v69;
    dispatch_async(v70, &block);
  }
}

void rcl_HTTPReadCallback(uint64_t a1, int a2, int a3, CMBlockBufferRef targetBBuf, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v106 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CB6F0 != -1)
  {
    OUTLINED_FUNCTION_1_158(&qword_1ED4CB6F0);
  }

  blockBufferOut = 0;
  if (!qword_1ED4CB6F8)
  {
    return;
  }

  v13 = qword_1ED4CB6F8 + 8;
  v14 = qword_1ED4CB6F8 + 8;
  do
  {
    v14 = *v14;
    if (!v14)
    {
      v17 = 0;
      goto LABEL_97;
    }
  }

  while (*(v14 + 24) != a1);
  if (a8)
  {
    goto LABEL_102;
  }

  if (!targetBBuf)
  {
    appended = 0;
    if ((a7 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v15 = *(v14 + 40);
  if (!v15)
  {
    v18 = CFRetain(targetBBuf);
    appended = 0;
    *(v14 + 40) = v18;
    if ((a7 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    v19 = *(v14 + 16);
    *(v14 + 48) = appended;
    if (!appended)
    {
      *(v19 + 16) = CFAbsoluteTimeGetCurrent();
      v20 = *MEMORY[0x1E695E480];
      if (!CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], *(v14 + 40), *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut) && !FigCreateCFDataWithBlockBufferNoCopy())
      {
        v21 = CFPropertyListCreateWithData(v20, 0, 1uLL, 0, 0);
        v17 = v21;
        if (v21)
        {
          v22 = *(v19 + 8);
          v23 = CFDictionaryGetValue(v21, @"signature");
          v97 = 0;
          valuePtr = 21600;
          if (!v23 || (v24 = v23, v25 = CFGetTypeID(v23), v25 != CFStringGetTypeID()) || (v26 = CFDataCreate(v20, FigRCLPublicKey, 270)) == 0)
          {
            OUTLINED_FUNCTION_7_78();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            LOWORD(v38) = v76;
            goto LABEL_92;
          }

          v27 = v26;
          applicationID = v22;
          *v100 = 0;
          v28 = SecKeyCreateFromPublicData();
          if (v28)
          {
            v29 = v28;
            allocator = v20;
            v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v24 options:1];
            v88 = v29;
            v89 = v27;
            v87 = v30;
            if (v30)
            {
              v31 = CFDictionaryGetValue(v17, @"bag");
              if (v31)
              {
                v32 = v31;
                v33 = CFGetTypeID(v31);
                if (v33 == CFStringGetTypeID())
                {
                  v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v32 options:1];
                  if (v34)
                  {
                    v35 = v34;
                    BytePtr = CFDataGetBytePtr(v34);
                    Length = CFDataGetLength(v35);
                    CC_SHA1(BytePtr, Length, md);
                    v38 = CFDataGetBytePtr(v30);
                    v39 = CFDataGetLength(v30);
                    v90 = v35;
                    if (SecKeyRawVerify(v29, 0x8002u, md, 0x14uLL, v38, v39))
                    {
                      OUTLINED_FUNCTION_0_166();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v82, v83);
                      OUTLINED_FUNCTION_6_90();
                      v86 = 0;
                    }

                    else
                    {
                      v40 = CFPropertyListCreateWithData(v20, v35, 1uLL, 0, 0);
                      v86 = v40;
                      if (v40)
                      {
                        v41 = v40;
                        v38 = CFGetTypeID(v40);
                        if (v38 == CFDictionaryGetTypeID())
                        {
                          v42 = CFDictionaryGetValue(v41, @"refreshCycle");
                          if (v42)
                          {
                            v38 = v42;
                            v43 = CFGetTypeID(v42);
                            if (v43 == CFNumberGetTypeID())
                            {
                              CFNumberGetValue(v38, kCFNumberIntType, &valuePtr);
                            }
                          }

                          v44 = CFDictionaryGetValue(v41, @"storeBagVersion");
                          if (v44)
                          {
                            number = v44;
                            v38 = CFGetTypeID(v44);
                            if (v38 == CFNumberGetTypeID())
                            {
                              CFNumberGetValue(number, kCFNumberSInt32Type, &v97);
                              if (v97 == 2)
                              {
                                v45 = CFDictionaryGetValue(v41, @"configurationGroupMap");
                                if (v45)
                                {
                                  v84 = v45;
                                  v38 = CFGetTypeID(v45);
                                  if (v38 == CFDictionaryGetTypeID())
                                  {
                                    *v100 = CFAbsoluteTimeGetCurrent() + valuePtr;
                                    value = CFNumberCreate(allocator, kCFNumberDoubleType, v100);
                                    if (value)
                                    {
                                      v46 = CFDictionaryGetValue(v41, @"versionBagArray");
                                      if (!v46)
                                      {
                                        goto LABEL_69;
                                      }

                                      v30 = v46;
                                      v47 = CFGetTypeID(v46);
                                      if (v47 != CFArrayGetTypeID() || CFArrayGetCount(v30) < 1)
                                      {
                                        goto LABEL_69;
                                      }

                                      v83 = v17;
                                      cf = 0;
                                      v92 = 0;
                                      v48 = 0;
                                      while (1)
                                      {
                                        ValueAtIndex = CFArrayGetValueAtIndex(v30, v48);
                                        if (ValueAtIndex)
                                        {
                                          v50 = ValueAtIndex;
                                          v51 = CFGetTypeID(ValueAtIndex);
                                          if (v51 == CFDictionaryGetTypeID())
                                          {
                                            v52 = CFDictionaryGetValue(v50, @"deviceList");
                                            v53 = CFDictionaryGetValue(v50, @"productType");
                                            if (!qword_1ED4CB708 || (v54 = v53) == 0 || (v55 = CFGetTypeID(v53), v55 != CFArrayGetTypeID()) || CFArrayGetCount(v54) < 1 || (*md = MEMORY[0x1E69E9820], v102 = 3221225472, v103 = __rcl_CopyVersionBag_block_invoke, v104 = &unk_1E7492450, v105 = qword_1ED4CB708, [(__CFArray *)v54 indexOfObjectPassingTest:md]!= 0x7FFFFFFFFFFFFFFFLL))
                                            {
                                              if (!v52)
                                              {
                                                goto LABEL_59;
                                              }

                                              v56 = CFGetTypeID(v52);
                                              if (v56 != CFArrayGetTypeID() || CFArrayGetCount(v52) < 1)
                                              {
                                                goto LABEL_59;
                                              }

                                              if (CFArrayGetCount(v52) >= 1)
                                              {
                                                break;
                                              }
                                            }
                                          }
                                        }

LABEL_63:
                                        if (++v48 >= CFArrayGetCount(v30))
                                        {
                                          v27 = cf;
                                          if (cf)
                                          {
                                            v61 = CFGetTypeID(cf);
                                            v62 = allocator;
                                            if (v61 == CFDictionaryGetTypeID())
                                            {
                                              if (v92)
                                              {
                                                v63 = CFGetTypeID(v92);
                                                if (v63 == CFNumberGetTypeID())
                                                {
                                                  v30 = CFRetain(cf);
                                                  v27 = CFRetain(v92);
LABEL_71:
                                                  v38 = v84;
                                                  Mutable = CFDictionaryCreateMutable(v62, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                                  v66 = Mutable;
                                                  if (Mutable)
                                                  {
                                                    CFDictionarySetValue(Mutable, @"expires", value);
                                                    CFDictionarySetValue(v66, @"storeBagVersion", number);
                                                    CFDictionarySetValue(v66, @"OSVersion", v27);
                                                    CFDictionarySetValue(v66, @"versionConfiguration", v30);
                                                    v67 = CFDictionaryCreateMutable(v62, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                                    if (v67)
                                                    {
                                                      CFDictionaryApplyFunction(v30, rcl_VersionConfigurationDictApplierFunc, v67);
                                                      CFDictionaryApplyFunction(v84, rcl_ConfigurationGroupMapDictApplierFunc, v67);
                                                      v38 = v67;
                                                    }

                                                    CFDictionarySetValue(v66, @"configurationGroupMap", v38);
                                                    CFPreferencesSetMultiple(v66, 0, applicationID, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
                                                    LOWORD(v38) = 0;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_0_166();
                                                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v82, v83);
                                                    LOWORD(v38) = v80;
                                                    v67 = 0;
                                                  }

LABEL_75:
                                                  CFRelease(v89);
                                                  CFRelease(v88);
                                                  if (v87)
                                                  {
                                                    CFRelease(v87);
                                                  }

                                                  if (v86)
                                                  {
                                                    CFRelease(v86);
                                                  }

                                                  if (v90)
                                                  {
                                                    CFRelease(v90);
                                                  }

                                                  if (value)
                                                  {
                                                    CFRelease(value);
                                                  }

                                                  if (v27)
                                                  {
                                                    CFRelease(v27);
                                                  }

                                                  if (v30)
                                                  {
                                                    CFRelease(v30);
                                                  }

                                                  if (v67)
                                                  {
                                                    CFRelease(v67);
                                                  }

                                                  if (v66)
                                                  {
                                                    v68 = v66;
                                                    goto LABEL_91;
                                                  }

                                                  goto LABEL_92;
                                                }
                                              }
                                            }
                                          }

LABEL_69:
                                          LOWORD(v38) = v8;
                                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v82, v83);
                                          if (!v64)
                                          {
                                            v27 = 0;
                                            v30 = 0;
                                            v62 = allocator;
                                            goto LABEL_71;
                                          }

                                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v82, v83);
                                          OUTLINED_FUNCTION_6_90();
LABEL_123:
                                          v67 = 0;
                                          v66 = 0;
                                          goto LABEL_75;
                                        }
                                      }

                                      v57 = 0;
                                      while (1)
                                      {
                                        CFArrayGetValueAtIndex(v52, v57);
                                        if (FigCFEqual())
                                        {
                                          break;
                                        }

                                        if (++v57 >= CFArrayGetCount(v52))
                                        {
                                          goto LABEL_63;
                                        }
                                      }

LABEL_59:
                                      v58 = CFDictionaryGetValue(v50, @"OSVersion");
                                      v99 = 0;
                                      if (v58)
                                      {
                                        v59 = v58;
                                        v60 = CFGetTypeID(v58);
                                        if (v60 == CFNumberGetTypeID())
                                        {
                                          CFNumberGetValue(v59, kCFNumberSInt32Type, &v99);
                                          if (_MergedGlobals_107 >= v99)
                                          {
                                            cf = CFDictionaryGetValue(v50, @"versionConfiguration");
                                            v92 = v59;
                                          }
                                        }
                                      }

                                      goto LABEL_63;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      OUTLINED_FUNCTION_0_166();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                      OUTLINED_FUNCTION_6_90();
                    }

LABEL_122:
                    value = 0;
                    goto LABEL_123;
                  }
                }
              }

              OUTLINED_FUNCTION_0_166();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              LOWORD(v38) = v79;
              v30 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_0_166();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v82, v83);
              LOWORD(v38) = v78;
            }

            v27 = 0;
            v86 = 0;
            v90 = 0;
            goto LABEL_122;
          }

          OUTLINED_FUNCTION_7_78();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v82, v83);
          LOWORD(v38) = v77;
          v68 = v27;
LABEL_91:
          CFRelease(v68);
LABEL_92:
          if (v38)
          {
            v99 = 0;
            LOBYTE(valuePtr) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v73 = v99;
            v74 = valuePtr;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, valuePtr))
            {
              v75 = v73;
            }

            else
            {
              v75 = v73 & 0xFFFFFFFE;
            }

            if (v75)
            {
              *v100 = 136315138;
              *&v100[4] = "rcl_HTTPReadCallback";
              _os_log_send_and_compose_impl(v75, 0, md, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v74, "<<< FigRemoteConfig >>> %s: Failed to verify storebag, will not use the storebag.", v100);
            }

            OUTLINED_FUNCTION_16();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

LABEL_93:
        v69 = *v14;
        v70 = *(v14 + 8);
        if (*v14)
        {
          v71 = *v14;
        }

        else
        {
          v71 = v13;
        }

        *(v71 + 8) = v70;
        *v70 = v69;
        goto LABEL_97;
      }
    }

LABEL_102:
    v17 = 0;
    goto LABEL_93;
  }

  appended = CMBlockBufferAppendBufferReference(v15, targetBBuf, 0, 0, 0);
  if ((a7 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v17 = 0;
  v14 = 0;
LABEL_97:
  rcl_ReleaseConnectionData(v14);
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void rcl_InitializeLoader_cold_1(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CFRelease(*(a1 + 32));
    a1 = qword_1ED4CB6F8;
    *(qword_1ED4CB6F8 + 32) = 0;
  }

  if (*(a1 + 24))
  {
    CFRelease(*(a1 + 24));
    a1 = qword_1ED4CB6F8;
    *(qword_1ED4CB6F8 + 24) = 0;
  }

  if (*a1)
  {
    dispatch_release(*a1);
    a1 = qword_1ED4CB6F8;
  }

  rcl_ReleaseConnectionDataList((a1 + 8));
  v1 = qword_1ED4CB6F8;

  free(v1);
}

uint64_t FigAlternateCreationContextSetMediaGroupLocatorMapForMediaGroupID(CFMutableDictionaryRef *a1, void *a2, const void *a3, const void *a4)
{
  theDict = 0;
  v6 = faiu_ensureAlternateCreationContextAndCopyMediaGroupCache(a1, a2, &theDict);
  v7 = theDict;
  if (!v6)
  {
    CFDictionarySetValue(theDict, a3, a4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

const void *FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID_cold_1(const __CFDictionary *a1, const void *a2, void *a3)
{
  if (CFDictionaryContainsKey(a1, a2))
  {
    result = CFDictionaryGetValue(a1, a2);
    if (result)
    {
      result = CFRetain(result);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

double FigDeferredTransactionCommit(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v8 = qword_1ED4CBEA8;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954516, "<<<< FigDeferredTransaction >>>>", 560, v2);
    }

    else
    {
      v4 = *(a1 + 56);
      if (v4 && CFArrayGetCount(v4) >= 1)
      {
        *(a1 + 24) = FigGetUpTimeNanoseconds();
        *(a1 + 76) = a2;
        if (*(a1 + 72))
        {
          CFRetain(a1);
          dispatch_async_f(MEMORY[0x1E69E96A0], a1, fdt_commitTransactionOnMainQueue);
        }

        else
        {
          v7 = objc_autoreleasePoolPush();
          fdt_commitTransactionChanges(a1);
          fdt_performPostCommitChanges(a1);
          objc_autoreleasePoolPop(v7);
        }
      }

      *(a1 + 16) = 1;
    }
  }

  return result;
}

uint64_t FigDeferredTransactionAppendChangeWithCallback(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  cf = 0;
  value = 0;
  v12 = a1;
  if (!a1)
  {
    v13 = FigDeferredTransactionCreate(0, &cf);
    if (v13)
    {
LABEL_6:
      v14 = v13;
      goto LABEL_12;
    }

    v12 = cf;
  }

  if (*(v12 + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, value, v18);
    goto LABEL_6;
  }

  v13 = fdr_createChange(a7, a4, a5, &value);
  if (v13)
  {
    goto LABEL_6;
  }

  CFArrayAppendValue(*(v12 + 7), value);
  if (a2)
  {
    *(v12 + 72) = 1;
  }

  if (!a1)
  {
    FigDeferredTransactionCommit(v12, 0);
    goto LABEL_6;
  }

  v14 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v14;
}

uint64_t FigDeferredTransactionAppendPostCommitChangeWithCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  value = 0;
  if (a1)
  {
    if (*(a1 + 16))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0, v12);
      v8 = v7;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_1_159(a3, a6, a4, v10);
      if (!v8)
      {
        CFArrayAppendValue(*(a1 + 64), 0);
      }
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_159(a3, a6, a4, v10);
    if (!v8)
    {
      fdt_performTransactionChange(0);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  return v8;
}

void FigVTTStyleBlockCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTStyleBlock_GetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTStyleBlock_copyChildNodeArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTStyleBlock_copyNodeDocumentSerialization_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMultivariantPlaylistCreateEmpty_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v5);
  *a3 = v6;

  CFRelease(a2);
}

void FigMultivariantPlaylistCreateEmpty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMultivariantPlaylistAddAlternate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMultivariantPlaylistAddMediaSelection_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMultivariantPlaylistAddSessionDataSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMultivariantPlaylistAddContentKeySpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaPlaylistCreateEmpty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaPlaylistAddRenditionReportSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaPlaylistAddDateRangeSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaPlaylistAddContentKeySpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaPlaylistAddMediaSegmentSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaPlaylistAddMapSegmentSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaPlaylistAddDateEntryArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigVirtualDisplaySinkConduitCreate(uint64_t a1, __int128 *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  if (!a4)
  {
    return 4294954516;
  }

  FigVirtualDisplaySinkGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 88) = xmmword_196E73240;
    *(DerivedStorage + 112) = 256;
    *(DerivedStorage + 116) = 60;
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"displayInfo");
      FigCFDictionaryGetInt32IfPresent();
      if (Value && (v10 = CFGetTypeID(Value), v10 == CFDictionaryGetTypeID()) || (Value = CFDictionaryGetValue(a3, @"deviceInfo")) != 0)
      {
        v11 = CFGetTypeID(Value);
        if (v11 == CFDictionaryGetTypeID())
        {
          v12 = CFDictionaryGetValue(Value, @"displaySizeInPixels");
          if (v12)
          {
            v13 = MEMORY[0x1E695F060];
            size = *MEMORY[0x1E695F060];
            CGSizeMakeWithDictionaryRepresentation(v12, &size);
            if (size.width != *v13 || size.height != v13[1])
            {
              *(DerivedStorage + 88) = size;
            }
          }

          v15 = CFDictionaryGetValue(Value, @"displayUUID");
          *(DerivedStorage + 64) = v15;
          if (v15)
          {
            CFRetain(v15);
          }

          v16 = CFDictionaryGetValue(Value, @"displayName");
          *(DerivedStorage + 72) = v16;
          if (v16)
          {
            CFRetain(v16);
          }

          v17 = CFDictionaryGetValue(Value, @"displayEDID");
          *(DerivedStorage + 80) = v17;
          if (v17)
          {
            CFRetain(v17);
          }

          FigCFDictionaryGetBooleanIfPresent();
          FigCFDictionaryGetBooleanIfPresent();
          v18 = CFDictionaryGetValue(Value, @"HDRInfo");
          *(DerivedStorage + 104) = v18;
          if (v18)
          {
            CFRetain(v18);
          }

          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
        }
      }

      if (!*(DerivedStorage + 104))
      {
        v19 = CFDictionaryGetValue(a3, @"HDRInfo");
        *(DerivedStorage + 104) = v19;
        if (v19)
        {
          CFRetain(v19);
        }
      }
    }

    if (!*(DerivedStorage + 64))
    {
      *(DerivedStorage + 64) = FVDUtilsCreateDisplayUUID();
    }

    global_queue = dispatch_get_global_queue(0, 0);
    *(DerivedStorage + 56) = global_queue;
    dispatch_retain(global_queue);
    if (a2)
    {
      v21 = *a2;
      v22 = a2[1];
      v23 = a2[2];
      *(DerivedStorage + 48) = *(a2 + 6);
      *(DerivedStorage + 16) = v22;
      *(DerivedStorage + 32) = v23;
      *DerivedStorage = v21;
    }

    v7 = 0;
    *a4 = 0;
  }

  return v7;
}

uint64_t CreateSampleGeneratorForClosedCaptions(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[10] = 0;
  a1[11] = v3;
  a1[6] = CCPushForType;
  a1[8] = CCResyncForType;
  a1[7] = CCFlushForType;
  a1[9] = CCDestroyForType;
  return result;
}

double CCPushForType(CMFormatDescriptionRef *formatDescriptionOut, OpaqueCMBlockBuffer *a2, CMTime *a3, CMTime *a4, uint64_t a5, uint64_t a6)
{
  memset(&sampleTimingArray, 0, 24);
  cf = 0;
  v14 = formatDescriptionOut + 5;
  v13 = formatDescriptionOut[5];
  v15 = v14[6];
  if (v13)
  {
    if (*v15 == 1635017571)
    {
LABEL_7:
      sampleTimingArray.decodeTimeStamp = *a4;
      sampleTimingArray.presentationTimeStamp = *a3;
      CMTimeMake(&sampleTimingArray.duration, 1, 90000);
      sampleSizeArray = CMBlockBufferGetDataLength(a2);
      if (!CMSampleBufferCreate(formatDescriptionOut[1], a2, 1u, 0, 0, formatDescriptionOut[5], 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &cf))
      {
        (formatDescriptionOut[3])(formatDescriptionOut, formatDescriptionOut[4], cf, a6, a5);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      return result;
    }

    CFRelease(v13);
    *v14 = 0;
  }

  *v15 = 1635017571;
  if (CMFormatDescriptionCreate(formatDescriptionOut[1], 0x636C6370u, 0x61746363u, 0, v14) || (formatDescriptionOut[2])(formatDescriptionOut, formatDescriptionOut[4], formatDescriptionOut[5]))
  {
    return result;
  }

  if (*v14)
  {
    goto LABEL_7;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954324, "mpeg2parser", 78, v6);
}

uint64_t FigRemoteStreamingAssetDownloaderCreateWithAsset(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  xdict = 0;
  v25 = 0;
  cf = 0;
  v23 = 0;
  v10 = rad_ensureClientEstablished();
  if (v10 || (v10 = FigXPCCreateBasicMessage(), v10) || (v10 = rad_fillInCreationDictionary(v25, a2, a3, 0, 0, a4, 0), v10) || (v10 = OUTLINED_FUNCTION_12_56(v10, v11, v12, v13, v14, v15, v16, v17, 0), v10) || (v10 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v10))
  {
    v19 = v10;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
    v19 = rad_createInternal(a1, uint64, 0, 0, 0, &v23);
    if (!v19)
    {
      v20 = v23;
      *(CMBaseObjectGetDerivedStorage() + 128) = cf;
      cf = 0;
      *a5 = v20;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v19;
}

uint64_t rad_createInternal(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void *a5, void *a6)
{
  cf = 0;
  FigAssetDownloaderGetClassID();
  v11 = CMDerivedObjectCreate();
  if (!v11)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 128) = 0;
    if (a3 && a4 && a5 && (v13 = DerivedStorage, dispatch_retain(a4), v13[2] = a4, __copy_assignment_8_8_t0w8_pa0_62591_8_pa0_48202_16_pa0_13082_24_pa0_11046_32_pa0_49729_40_pa0_62126_48_pa0_6100_56_pa0_11999_64_pa0_10804_72_pa0_24756_80_pa0_9655_88(v13 + 3, a5), v14 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (v13[15] = v14) == 0))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0, v19);
    }

    else
    {
      v11 = FigXPCRemoteClientAssociateObject();
      if (!v11)
      {
        FigMetricInstallAllDownloadDeserializationHandlers();
        v15 = 0;
        *a6 = 0;
        goto LABEL_8;
      }
    }
  }

  v15 = v11;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t FigRemoteStreamingAssetDownloadOrchestratorCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7, uint64_t a8, NSObject *a9, void *a10, void *a11)
{
  xdict = 0;
  v34 = 0;
  cf = 0;
  v32 = 0;
  v19 = rad_ensureClientEstablished();
  if (v19 || (v19 = FigXPCCreateBasicMessage(), v19) || (v19 = rad_fillInCreationDictionary(v34, a2, a3, a4, a5, a6, a7), v19) || (v19 = OUTLINED_FUNCTION_12_56(v19, v20, v21, v22, v23, v24, v25, v26, 0), v19) || cf && (v19 = FigXPCMessageSetSandboxRegistration(), v19) || (v19 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v19))
  {
    v28 = v19;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
    v28 = rad_createInternal(a1, uint64, a8, a9, a10, &v32);
    if (!v28)
    {
      v29 = v32;
      *(CMBaseObjectGetDerivedStorage() + 128) = cf;
      cf = 0;
      *a11 = v29;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v28;
}

uint64_t rad_handleServerMessage(const void *a1, void *a2)
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

uint64_t rad_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_8;
  }

  v2 = DerivedStorage;
  *DerivedStorage = 1;
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(v2 + 120);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = FigXPCRemoteClientDisassociateObject();
  if (v5)
  {
    v6 = v5;
    goto LABEL_11;
  }

  if (*(v2 + 1))
  {
LABEL_8:
    v6 = 0;
  }

  else
  {
    v7 = FigXPCCreateBasicMessage();
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = FigXPCRemoteClientSendSyncMessage();
    }
  }

LABEL_11:
  FigXPCRelease();
  return v6;
}

void rad_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  rad_invalidate(a1);
  v3 = *(DerivedStorage + 128);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t rad_copyProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  ObjectID = rad_getObjectID(a1, &v5);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_9_60();
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  v3 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t rad_setProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  ObjectID = rad_getObjectID(a1, &v5);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_9_60();
    ObjectID = FigXPCSendStdSetPropertyMessage();
  }

  v3 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t rad_start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_44(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_7_79();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_64();
    }
  }

  FigXPCRelease();
  return v8;
}

uint64_t rad_pause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_44(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_7_79();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_64();
    }
  }

  FigXPCRelease();
  return v8;
}

uint64_t rad_stop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_44(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_7_79();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_64();
    }
  }

  FigXPCRelease();
  return v8;
}

uint64_t rad_loadMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_44(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_7_79();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_64();
    }
  }

  FigXPCRelease();
  return v8;
}

void __rad_ensureClientEstablished_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void rad_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void rad_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigCPEIsSupportedFormatDescription(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      dispatch_once_f(&qword_1ED4CB738, &_MergedGlobals_108, v10);
    }

    v2 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v11 = OUTLINED_FUNCTION_1_160(v2, &qword_1ED4CB740);
      dispatch_once_f(v11, v12, v13);
    }

    v3 = qword_1ED4CB740;
    Count = CFDictionaryGetCount(qword_1ED4CB740);
    if (Count < 1)
    {
      v6 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_63_12();
      v6 = malloc_type_calloc(Count, 8uLL, v5);
      CFDictionaryGetKeysAndValues(v3, 0, v6);
    }

    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      dispatch_once_f(&qword_1ED4CB738, &_MergedGlobals_108, v14);
    }

    FigSimpleMutexUnlock();
    if (Count < 1)
    {
LABEL_16:
      v1 = 0;
    }

    else
    {
      v7 = 0;
      while (1)
      {
        v8 = *v6[v7];
        if (v8)
        {
          if (v8(v1))
          {
            break;
          }
        }

        if (Count == ++v7)
        {
          goto LABEL_16;
        }
      }

      v1 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  free(v6);
  return v1;
}

uint64_t FigCPEProtectorCreateForScheme(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  result = 4294955146;
  if (a2 && a4)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      dispatch_once_f(&qword_1ED4CB738, &_MergedGlobals_108, v12);
    }

    v9 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v13 = OUTLINED_FUNCTION_1_160(v9, &qword_1ED4CB740);
      dispatch_once_f(v13, v14, v15);
    }

    Value = CFDictionaryGetValue(qword_1ED4CB740, a2);
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      dispatch_once_f(&qword_1ED4CB738, &_MergedGlobals_108, v16);
    }

    FigSimpleMutexUnlock();
    if (Value && (v11 = Value[1]) != 0)
    {

      return v11(a1, a3, a4);
    }

    else
    {
      return 4294955141;
    }
  }

  return result;
}

uint64_t FigCPEProtectorCreateForFormatReader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  cf = 0;
  v42 = 0;
  theArray = 0;
  v5 = 4294955146;
  if (a2 && a4)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_7_80(v28, v29, v30);
    }

    v10 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v31 = OUTLINED_FUNCTION_1_160(v10, &qword_1ED4CB740);
      dispatch_once_f(v31, v32, v33);
    }

    v11 = qword_1ED4CB740;
    Count = CFDictionaryGetCount(qword_1ED4CB740);
    if (Count < 1)
    {
      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_63_12();
      v4 = malloc_type_calloc(Count, 8uLL, v13);
      CFDictionaryGetKeysAndValues(v11, 0, v4);
    }

    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_7_80(v34, v35, v36);
    }

    FigSimpleMutexUnlock();
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v14)
    {
      goto LABEL_47;
    }

    v15 = v14(a2, &v42);
    if (v15)
    {
LABEL_58:
      v5 = v15;
    }

    else
    {
      if (v42 >= 1)
      {
        v16 = 0;
        v38 = *MEMORY[0x1E695E480];
        while (1)
        {
          v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v17)
          {
            break;
          }

          v15 = v17(a2, v16, &cf, 0, 0);
          if (v15)
          {
            goto LABEL_58;
          }

          FigTrackReaderGetFigBaseObject();
          v19 = v18;
          v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v20)
          {
            break;
          }

          v15 = v20(v19, @"TrackFormatDescriptionArray", v38, &theArray);
          if (v15)
          {
            goto LABEL_58;
          }

          if (theArray)
          {
            v37 = v16;
            v39 = CFArrayGetCount(theArray);
            if (v39 < 1)
            {
              v22 = 0;
              LODWORD(v24) = 0;
            }

            else
            {
              v21 = 0;
              v22 = 0;
              do
              {
                if (Count >= 1)
                {
                  v23 = 0;
                  while (1)
                  {
                    v24 = *v4[v23];
                    if (v24)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
                      if (v24(ValueAtIndex))
                      {
                        v26 = *(v4[v23] + 3);
                        if (!v26)
                        {
                          v5 = 4294955141;
                          goto LABEL_48;
                        }

                        v22 = v26(a1, a2, a3, a4);
                        LODWORD(v24) = v22 == 0;
                      }

                      else
                      {
                        LODWORD(v24) = 0;
                      }
                    }

                    if (++v23 >= Count || v24)
                    {
                      goto LABEL_34;
                    }
                  }
                }

                LODWORD(v24) = 0;
LABEL_34:
                ++v21;
              }

              while (v21 < v39 && !v24);
            }

            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            v16 = v37;
          }

          else
          {
            v22 = 0;
            LODWORD(v24) = 0;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (++v16 >= v42 || v24)
          {
            goto LABEL_54;
          }
        }

LABEL_47:
        v5 = 4294954514;
        goto LABEL_48;
      }

      v22 = 0;
      LOBYTE(v24) = 0;
LABEL_54:
      if ((v22 != 0) | v24 & 1)
      {
        v5 = v22;
      }

      else
      {
        v5 = 4294955131;
      }
    }
  }

LABEL_48:
  free(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v5;
}

uint64_t FigCPESetSessionRecordStorageURLForAppIdentifierInternal(const void *a1, const void *a2)
{
  if (qword_1ED4CB750 != -1)
  {
    OUTLINED_FUNCTION_4_121(&qword_1ED4CB750);
  }

  result = 4294955146;
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(qword_1ED4CB760, a1);
    if (Value == a2)
    {
LABEL_16:
      FigSimpleMutexUnlock();
      return 0;
    }

    if (!Value)
    {
LABEL_15:
      CFDictionarySetValue(qword_1ED4CB760, a1, a2);
      goto LABEL_16;
    }

    v6 = FigCFURLCreateCacheKey();
    v7 = FigCFURLCreateCacheKey();
    v8 = v7;
    if (v6 && v7)
    {
      v9 = CFStringCompare(v6, v7, 0) != kCFCompareEqualTo;
    }

    else
    {
      v9 = 1;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    CFRelease(v6);
LABEL_12:
    if (v8)
    {
      CFRelease(v8);
    }

    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t FigCPECopySessionRecordStorageURLForAppIdentifier(const void *a1, void *a2)
{
  if (qword_1ED4CB750 != -1)
  {
    OUTLINED_FUNCTION_4_121(&qword_1ED4CB750);
  }

  result = 4294955146;
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(qword_1ED4CB760, a1);
    if (Value)
    {
      v6 = CFRetain(Value);
    }

    else
    {
      v6 = 0;
    }

    FigSimpleMutexUnlock();
    result = 0;
    *a2 = v6;
  }

  return result;
}

uint64_t FigCPECopySessionRecordsForAppIdentifierInternal(uint64_t a1, uint64_t a2)
{
  v3 = 4294955146;
  if (a1 && a2)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_6_92(v13, v14, v15);
    }

    v6 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v16 = OUTLINED_FUNCTION_1_160(v6, &qword_1ED4CB740);
      dispatch_once_f(v16, v17, v18);
    }

    Count = CFDictionaryGetCount(qword_1ED4CB740);
    if (Count < 1)
    {
      v2 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_63_12();
      v9 = malloc_type_calloc(Count, 8uLL, v8);
      OUTLINED_FUNCTION_5_104(v9);
    }

    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_6_92(v19, v20, v21);
    }

    FigSimpleMutexUnlock();
    if (Count < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v10 = v2;
      do
      {
        v11 = *(*v10 + 48);
        if (v11)
        {
          v3 = v11(a1, a2);
          if (!v3)
          {
            break;
          }
        }

        v10 += 8;
        --Count;
      }

      while (Count);
    }

    free(v2);
  }

  return v3;
}

uint64_t FigCPERemoveSessionRecordsForAppIdentifierInternal(uint64_t a1, uint64_t a2)
{
  v3 = 4294955146;
  if (a1 && a2)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_6_92(v13, v14, v15);
    }

    v6 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v16 = OUTLINED_FUNCTION_1_160(v6, &qword_1ED4CB740);
      dispatch_once_f(v16, v17, v18);
    }

    Count = CFDictionaryGetCount(qword_1ED4CB740);
    if (Count < 1)
    {
      v2 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_63_12();
      v9 = malloc_type_calloc(Count, 8uLL, v8);
      OUTLINED_FUNCTION_5_104(v9);
    }

    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_6_92(v19, v20, v21);
    }

    FigSimpleMutexUnlock();
    if (Count < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v10 = v2;
      do
      {
        v11 = *(*v10 + 56);
        if (v11)
        {
          v3 = v11(a1, a2);
          if (!v3)
          {
            break;
          }
        }

        v10 += 8;
        --Count;
      }

      while (Count);
    }

    free(v2);
  }

  return v3;
}

uint64_t FigExportSettings_CopyEncoderIDForProfile(CMVideoCodecType a1, const void *a2, const void **a3)
{
  cf = 0;
  listOfVideoEncodersOut = 0;
  v5 = VTCopyVideoEncoderList(0, &listOfVideoEncodersOut);
  if (v5)
  {
    Mutable = 0;
  }

  else
  {
    v26 = a3;
    v6 = 0;
    Mutable = 0;
    v8 = *MEMORY[0x1E6984240];
    v9 = *MEMORY[0x1E695E480];
    v10 = *MEMORY[0x1E6984280];
    key = *MEMORY[0x1E69837D0];
    v28 = *MEMORY[0x1E6983FD0];
    while (1)
    {
      Count = listOfVideoEncodersOut;
      if (listOfVideoEncodersOut)
      {
        Count = CFArrayGetCount(listOfVideoEncodersOut);
      }

      if (v6 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(listOfVideoEncodersOut, v6);
      if (FigCFDictionaryGetInt32IfPresent())
      {
        v13 = a1 == 0;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v14 = CFDictionaryGetValue(ValueAtIndex, v8);
        if (v14)
        {
          v15 = v14;
          v16 = CFGetTypeID(v14);
          if (v16 == CFStringGetTypeID())
          {
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            Mutable = CFDictionaryCreateMutable(v9, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFDictionarySetValue(Mutable, v10, v15);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (!VTCopySupportedPropertyDictionaryForEncoder(1920, 1080, a1, Mutable, 0, &cf))
            {
              if (cf)
              {
                v17 = CFGetTypeID(cf);
                if (v17 == CFDictionaryGetTypeID())
                {
                  v18 = CFDictionaryGetValue(cf, key);
                  if (v18)
                  {
                    v19 = v18;
                    v29 = v5;
                    v20 = CFGetTypeID(v18);
                    if (v20 == CFDictionaryGetTypeID() && (v21 = CFDictionaryGetValue(v19, v28)) != 0 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFArrayGetTypeID()))
                    {
                      v33.length = CFArrayGetCount(v22);
                      v33.location = 0;
                      v5 = v29;
                      if (CFArrayContainsValue(v22, v33, a2))
                      {
                        v24 = *v26;
                        *v26 = v15;
                        CFRetain(v15);
                        if (v24)
                        {
                          CFRelease(v24);
                        }

                        v5 = v29;
                        break;
                      }
                    }

                    else
                    {
                      v5 = v29;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v6;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (listOfVideoEncodersOut)
  {
    CFRelease(listOfVideoEncodersOut);
  }

  return v5;
}

uint64_t FigMetricItemVariantChangeStartEventDeserializeAndCopy(void *a1, CFTypeRef *a2)
{
  v24 = *MEMORY[0x1E6960C70];
  v25 = *(MEMORY[0x1E6960C70] + 16);
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  cf = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  if (a1)
  {
    if (a2)
    {
      CMTime = FigXPCMessageGetCMTime();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFDate();
        if (!CMTime)
        {
          CMTime = FigXPCMessageCopyCFString();
          if (!CMTime)
          {
            CMTime = FigXPCMessageCopyCFArray();
            if (!CMTime)
            {
              CMTime = FigXPCMessageCopyCFString();
              if (!CMTime)
              {
                CMTime = FigXPCMessageCopyCFURL();
                if (!CMTime)
                {
                  CMTime = FigXPCMessageCopyCFString();
                  if (!CMTime)
                  {
                    CMTime = FigXPCMessageCopyCFURL();
                    if (!CMTime)
                    {
                      CMTime = FigXPCMessageCopyCFString();
                      if (!CMTime)
                      {
                        CMTime = FigXPCMessageCopyCFURL();
                        if (!CMTime)
                        {
                          value = xpc_dictionary_get_value(a1, "FromVariant");
                          CMTime = FigAlternateCreateWithXPCObject(value, 0, &v21);
                          if (!CMTime)
                          {
                            v7 = xpc_dictionary_get_value(a1, "ToVariant");
                            CMTime = FigAlternateCreateWithXPCObject(v7, 0, &v20);
                            if (!CMTime)
                            {
                              AllocatorForMedia = FigGetAllocatorForMedia();
                              v11 = v24;
                              v12 = v25;
                              CMTime = FigMetricItemVariantChangeStartEventCreateInternal(AllocatorForMedia, &v11, v23, v22, v20, v21, cf, v18, v15, v16, v13, v14, v19, a2);
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
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF176E8, 4294947836, "metricevent", 278, v2);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF176E8, 4294947836, "metricevent", 277, v2);
  }

  v9 = CMTime;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v9;
}

uint64_t meivcs_serialize(uint64_t a1, void *a2)
{
  v25 = 0;
  value = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF176E8, 4294947835, "metricevent", 214, v2);
LABEL_47:
    v21 = v7;
    v15 = 0;
    goto LABEL_41;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF176E8, 4294947835, "metricevent", 215, v2);
    goto LABEL_47;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 80) + 8);
  if (v5)
  {
    v6 = v5(a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = FigAlternateCopyAsXPCObject(v6, &value);
  if (v7)
  {
    goto LABEL_47;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 80) + 16);
  v9 = v8 ? v8(a1) : 0;
  v7 = FigAlternateCopyAsXPCObject(v9, &v25);
  if (v7)
  {
    goto LABEL_47;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v11 = v10 ? v10(a1) : -12782;
  xpc_dictionary_set_int64(a2, "EventID", v11);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v12)
  {
    v12(&v23, a1);
  }

  else
  {
    v23 = *MEMORY[0x1E6960C70];
    v24 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = FigXPCMessageSetCMTime();
  if (v7)
  {
    goto LABEL_47;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v13)
  {
    v13(a1);
  }

  v7 = FigXPCMessageSetCFDate();
  if (v7)
  {
    goto LABEL_47;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v14)
  {
    v15 = v14(a1);
  }

  else
  {
    v15 = 0;
  }

  v16 = FigXPCMessageSetCFString();
  if (v16)
  {
    goto LABEL_44;
  }

  v17 = *(*(CMBaseObjectGetVTable() + 80) + 24);
  if (v17)
  {
    v17(a1);
  }

  v16 = FigXPCMessageSetCFArray();
  if (v16)
  {
    goto LABEL_44;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 80) + 32);
  if (v18)
  {
    v18(a1);
  }

  v16 = FigXPCMessageSetCFString();
  if (v16)
  {
    goto LABEL_44;
  }

  v16 = FigXPCMessageSetCFURL();
  if (v16)
  {
    goto LABEL_44;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 80) + 40);
  if (v19)
  {
    v19(a1);
  }

  v16 = FigXPCMessageSetCFString();
  if (v16)
  {
    goto LABEL_44;
  }

  v16 = FigXPCMessageSetCFURL();
  if (v16)
  {
    goto LABEL_44;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 80) + 48);
  if (v20)
  {
    v20(a1);
  }

  v16 = FigXPCMessageSetCFString();
  if (v16)
  {
LABEL_44:
    v21 = v16;
  }

  else
  {
    v21 = FigXPCMessageSetCFURL();
    if (!v21)
    {
      xpc_dictionary_set_value(a2, "ToVariant", value);
      xpc_dictionary_set_value(a2, "FromVariant", v25);
    }
  }

LABEL_41:
  FigXPCRelease();
  FigXPCRelease();
  if (v15)
  {
    CFRelease(v15);
  }

  return v21;
}

uint64_t manifoldRemote_manifoldCreateGuts(uint64_t a1, unsigned int a2, OpaqueCMBlockBuffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, void *a9)
{
  v31 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mr_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E7492A30;
  block[4] = &v33;
  if (qword_1ED4CB790 != -1)
  {
    dispatch_once(&qword_1ED4CB790, block);
  }

  v16 = *(v34 + 6);
  _Block_object_dispose(&v33, 8);
  if (v16)
  {
    goto LABEL_37;
  }

  ServerPID = FigXPCCreateBasicMessage();
  if (ServerPID)
  {
    goto LABEL_44;
  }

  v30 = a7;
  xpc_dictionary_set_uint64(0, "manifoldType", a2);
  ServerPID = FigXPCRemoteClientCopyMemoryRecipient();
  if (ServerPID)
  {
    goto LABEL_44;
  }

  ServerPID = FigXPCRemoteClientCopyMemoryOrigin();
  if (ServerPID)
  {
    goto LABEL_44;
  }

  if (a3 && CMBlockBufferIsEmpty(a3))
  {
    v18 = FigXPCMessageSetCFBoolean();
  }

  else
  {
    v18 = FigXPCMessageSetBlockBufferUsingMemoryOrigin();
  }

  v16 = v18;
  if (v18)
  {
    goto LABEL_37;
  }

  if (CMGetAttachment(a3, @"FMFD_BufferDecryptor", 0))
  {
    ServerPID = FigXPCRemoteClientGetServerPID();
    if (ServerPID)
    {
      goto LABEL_44;
    }

    ServerPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID();
    if (ServerPID)
    {
      goto LABEL_44;
    }

    xpc_dictionary_set_uint64(0, "cryptorObjectID", 0);
  }

  if (a4)
  {
    xpc_dictionary_set_BOOL(0, "installNewTrackCallback", 1);
  }

  if (a6)
  {
    xpc_dictionary_set_BOOL(0, "installAllNewTracksReadyCallback", 1);
  }

  if (a5)
  {
    xpc_dictionary_set_BOOL(0, "installErrorCallback", 1);
  }

  xpc_dictionary_set_uint64(0, "movieManifoldStreamFlags", a8);
  ServerPID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ServerPID)
  {
    goto LABEL_44;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, a7, 0);
LABEL_44:
    v16 = ServerPID;
LABEL_37:
    v24 = 0;
    goto LABEL_38;
  }

  v20 = uint64;
  block[0] = 0;
  FigManifoldGetClassID();
  v16 = CMDerivedObjectCreate();
  v21 = block[0];
  if (v16)
  {
    goto LABEL_47;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = v20;
  DerivedStorage[9] = 0;
  DerivedStorage[11] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  DerivedStorage[2] = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, a7, 0);
    v16 = v28;
    v21 = block[0];
LABEL_47:
    if (v21)
    {
      CFRelease(v21);
    }

    v24 = 0;
    if (v16)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  v24 = block[0];
LABEL_27:
  v25 = FigXPCRemoteClientAssociateObject();
  if (!v25)
  {
    v26 = CMBaseObjectGetDerivedStorage();
    if (v30)
    {
      v26[6] = v30;
    }

    if (a4)
    {
      v26[3] = a4;
    }

    if (a6)
    {
      v26[4] = a6;
    }

    if (a5)
    {
      v26[5] = a5;
    }

    v16 = 0;
    *a9 = v24;
    goto LABEL_37;
  }

  v16 = v25;
LABEL_38:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v16;
}