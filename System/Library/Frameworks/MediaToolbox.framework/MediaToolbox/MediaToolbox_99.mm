double FigWireDictionarySetCFString(int a1, int a2, const void *a3)
{
  if (a3)
  {
    v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
    if (v3 == CFStringGetTypeID())
    {
      OUTLINED_FUNCTION_17_1();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double FigWireDictionarySetCFDictionary(int a1, int a2, const void *a3)
{
  if (a3)
  {
    v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
    if (v3 == CFDictionaryGetTypeID())
    {
      OUTLINED_FUNCTION_17_1();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double FigWireDictionarySetCFDate(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDateGetTypeID())
    {
      MEMORY[0x19A8CCD90](cf);

      FigCFDictionarySetDouble();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double FigWireDictionarySetCFData(int a1, int a2, const void *a3)
{
  if (a3)
  {
    v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
    if (v3 == CFDataGetTypeID())
    {
      OUTLINED_FUNCTION_17_1();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void FigWireDictionaryCopyCFDate(uint64_t a1, uint64_t a2, CFDateRef *a3)
{
  if (a3 && FigCFDictionaryGetDoubleIfPresent())
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v5 = CFDateCreate(AllocatorForMedia, 0.0);
    *a3 = v5;
    if (!v5)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, v7);
    }
  }
}

double FigWireDictionarySetCFURL(int a1, int a2, const void *a3)
{
  if (a3)
  {
    v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
    if (v3 == CFURLGetTypeID())
    {
      OUTLINED_FUNCTION_17_1();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void streamPlaylistParser_serializeAlternateApplier(__CFArray *a1, CFMutableArrayRef *a2)
{
  v3 = FigAlternateCopyAsSerializedRepresentation(a1, 0);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*a2, v3);

    CFRelease(v4);
  }
}

CFMutableArrayRef streamPlaylistParser_copySerializedRepresentationForMediaGroups(const __CFDictionary *a1)
{
  if (FigCFDictionaryGetCount() < 1)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    CFDictionaryApplyFunction(a1, streamPlaylistParser_copySerializedRepresentationForMediaGroupsApplier, Mutable);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  }

  return Mutable;
}

void streamPlaylistParser_copySerializedRepresentationForMediaGroupsApplier(uint64_t a1, const __CFDictionary *a2, __CFArray *a3)
{
  v4 = FigStreamPlaylistParserCopySerializedRepresentationForMediaGroup(a1, a2);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(a3, v4);

    CFRelease(v5);
  }
}

uint64_t streamPlaylistParser_serializeMediaSegmentSpecifier(uint64_t a1, const void *a2, uint64_t a3, __CFArray **a4)
{
  value = 0;
  if (!a2)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v9 = 21;
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 21, MEMORY[0x1E695E9C0]);
  v11 = *MEMORY[0x1E695E738];
  do
  {
    CFArrayAppendValue(Mutable, v11);
    --v9;
  }

  while (v9);
  if (Mutable)
  {
    if (FigMediaSegmentSpecifierGetURLString(a2) && FigMediaSegmentSpecifierGetURLString(a2))
    {
      v12 = OUTLINED_FUNCTION_14_0();
      CFArraySetValueAtIndex(v12, 0, v13);
    }

    if (FigMediaSegmentSpecifierGetContentKeySpecifier(a2))
    {
      ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
      FigContentKeySpecifierGetCryptKeyParsedIndex(ContentKeySpecifier);
      v15 = OUTLINED_FUNCTION_14_0();
      FigWireArraySetUInt64AtIndex(v15, 1, v16);
    }

    if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(a2))
    {
      MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(a2);
      FigMediaSegmentSpecifierGetMediaParsedIndex(MapSegmentSpecifier);
      v18 = OUTLINED_FUNCTION_14_0();
      FigWireArraySetUInt64AtIndex(v18, 2, v19);
    }

    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a2);
    if (PartialSegments && CFArrayGetCount(PartialSegments) >= 1 && (v51 = OUTLINED_FUNCTION_182_1(), v54 = streamPlaylistParser_serializeMediaSegmentSpecifiers(v51, v52, a3, v53), v54))
    {
      v50 = v54;
    }

    else
    {
      FigMediaSegmentSpecifierGetMediaSequence(a2);
      v21 = OUTLINED_FUNCTION_14_0();
      FigWireArraySetUInt64AtIndex(v21, 4, v22);
      FigMediaSegmentSpecifierGetDiscontinuityDomain(a2);
      v23 = OUTLINED_FUNCTION_14_0();
      FigWireArraySetInt64AtIndex(v23, 5, v24);
      FigMediaSegmentSpecifierGetStartOffset(a2);
      v25 = OUTLINED_FUNCTION_14_0();
      FigWireArraySetInt64AtIndex(v25, 6, v26);
      FigMediaSegmentSpecifierGetBytesToRead(a2);
      v27 = OUTLINED_FUNCTION_14_0();
      FigWireArraySetInt64AtIndex(v27, 7, v28);
      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a2);
      FigWireArraySetDoubleAtIndex(Mutable, 8, TimeInSeconds);
      TimeOffsetInSeconds = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(a2);
      FigWireArraySetDoubleAtIndex(Mutable, 9, TimeOffsetInSeconds);
      BitRate = FigMediaSegmentSpecifierGetBitRate(a2);
      FigWireArraySetDoubleAtIndex(Mutable, 10, BitRate);
      if (FigMediaSegmentSpecifierGetIV(a2))
      {
        v32 = OUTLINED_FUNCTION_14_0();
        CFArraySetValueAtIndex(v32, 14, v33);
      }

      if (FigMediaSegmentSpecifierGetDateStamp(a2))
      {
        v34 = MEMORY[0x19A8CCD90]();
        FigWireArraySetDoubleAtIndex(Mutable, 20, v34);
      }

      ImputedDate = FigMediaSegmentSpecifierGetImputedDate(a2);
      FigWireArraySetDoubleAtIndex(Mutable, 11, ImputedDate);
      Type = FigMediaSegmentSpecifierGetType(a2);
      FigWireArraySetUInt64AtIndex(Mutable, 12, Type);
      FigMediaSegmentSpecifierIsMarkedIndependent(a2);
      v37 = OUTLINED_FUNCTION_10_2();
      CFArraySetValueAtIndex(v37, 15, v38);
      FigMediaSegmentSpecifierIsDiscontinuity(a2);
      v39 = OUTLINED_FUNCTION_10_2();
      CFArraySetValueAtIndex(v39, 16, v40);
      FigMediaSegmentSpecifierIsMarkedAsGap(a2);
      v41 = OUTLINED_FUNCTION_10_2();
      CFArraySetValueAtIndex(v41, 17, v42);
      FigMediaSegmentSpecifierIsFragment(a2);
      v43 = OUTLINED_FUNCTION_10_2();
      CFArraySetValueAtIndex(v43, 18, v44);
      FigMediaSegmentSpecifierAreFragmentsExpired(a2);
      v45 = OUTLINED_FUNCTION_10_2();
      CFArraySetValueAtIndex(v45, 19, v46);
      FigMediaSegmentSpecifierGetMediaParsedIndex(a2);
      v47 = OUTLINED_FUNCTION_14_0();
      FigWireArraySetUInt64AtIndex(v47, 13, v48);
      if (FigMediaSegmentSpecifierGetMediaParsedIndex(a2))
      {
        MediaParsedIndex = FigMediaSegmentSpecifierGetMediaParsedIndex(a2);
        FigMediaPlaylistAddToMediaParsedIndexToEntryMap(a1, MediaParsedIndex, a2);
      }

      v50 = 0;
      if (a4)
      {
        *a4 = Mutable;
        goto LABEL_28;
      }
    }

    CFRelease(Mutable);
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, 0, v59);
    v50 = v55;
  }

LABEL_28:
  if (value)
  {
    CFRelease(value);
  }

  return v50;
}

double streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(const __CFArray *a1, __CFDictionary **a2)
{
  key = 0;
  value = 0;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (a2)
    {
      if (Count >= 1)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v10 = Mutable;
          if (CFArrayGetCount(a1) < 1)
          {
            *a2 = v10;
          }

          else
          {
            OUTLINED_FUNCTION_417_0();
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a1, v2);
              FigStreamPlaylistParserCreateMediaGroup(ValueAtIndex, &key, &value);
              v12 = value;
              if (value && key)
              {
                CFDictionarySetValue(v10, key, value);
                v12 = value;
              }

              if (v12)
              {
                CFRelease(v12);
                value = 0;
              }

              if (key)
              {
                CFRelease(key);
                key = 0;
              }

              OUTLINED_FUNCTION_377_0();
            }

            while (!v13);
            v14 = value;
            *a2 = v10;
            if (v14)
            {
              CFRelease(v14);
              if (key)
              {
                CFRelease(key);
              }
            }
          }
        }

        else
        {
          emitter = fig_log_get_emitter();

          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294948096, "streamplaylistparser_common", 1687, v3);
        }
      }
    }
  }

  return result;
}

uint64_t streamPlaylistParser_deserializeContentKeySpecifier(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  cf = 0;
  if (a2 && a3)
  {
    v12 = OUTLINED_FUNCTION_26_2(a1, *MEMORY[0x1E6962F78], a3, a4, a5, a6, a7, a8, cf, v35);
    v13 = v35;
    OUTLINED_FUNCTION_26_2(v12, *MEMORY[0x1E6962EF8], v14, v15, v16, v17, v18, v19, cf, v35);
    v20 = v35;
    Value = CFDictionaryGetValue(a2, *MEMORY[0x1E6962EC8]);
    v22 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    v23 = CFDictionaryGetValue(a2, *MEMORY[0x1E69630C0]);
    v24 = v23;
    if (v23)
    {
      CFRetain(v23);
    }

    LOBYTE(v35) = 0;
    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
    OUTLINED_FUNCTION_26_2(BooleanIfPresent, *MEMORY[0x1E6962EB8], v26, v27, v28, v29, v30, v31, cf, v35);
    v32 = v35;
    v8 = FigContentKeySpecifierCreate(v13, v22, v20, v24, &cf);
    if (v8)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      FigContentKeySpecifierSetIsReadInCurrent(cf, 1);
      FigContentKeySpecifierSetIsChangedInCurrent(cf, 0);
      FigContentKeySpecifierSetCryptKeyParsedIndex(cf, v32);
      FigContentKeySpecifierSetIsPrefetchKey(cf, 0);
      if (a1 && v32)
      {
        FigMediaPlaylistAddToCryptKeyParsedIndexToEntryMap(a1, v32, cf);
      }

      *a3 = cf;
      cf = 0;
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  return v8;
}

uint64_t streamPlaylistParser_deserializeMediaFileEntry(uint64_t a1, const __CFArray *a2, CFTypeRef *a3)
{
  v4 = 0;
  v77 = 0;
  if (!a2 || !a3)
  {
    return v4;
  }

  v6 = v3;
  v9 = *a3;
  if (*a3)
  {
    v77 = *a3;
    FigMediaSegmentSpecifierSetURLString(v9, 0);
    FigMediaSegmentSpecifierSetIV(v9, 0);
    FigMediaSegmentSpecifierSetDateStamp(v9, 0);
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Empty = FigMediaSegmentSpecifierCreateEmpty(AllocatorForMedia, &v77);
    if (Empty)
    {
      v4 = Empty;
      goto LABEL_37;
    }
  }

  v76 = FigWireArrayCopyCFTypeAtIndex(a2, 0);
  FigMediaSegmentSpecifierSetURLString(v77, v76);
  UInt64AtIndex = FigWireArrayGetUInt64AtIndex(a2, 1);
  v13 = FigWireArrayGetUInt64AtIndex(a2, 2);
  CryptKeyParsedIndexToEntryMap = FigMediaPlaylistGetCryptKeyParsedIndexToEntryMap(a1);
  Value = CFDictionaryGetValue(CryptKeyParsedIndexToEntryMap, UInt64AtIndex);
  if (Value)
  {
    FigMediaSegmentSpecifierSetContentKeySpecifier(v77, Value);
  }

  MediaParsedIndexToEntryMap = FigMediaPlaylistGetMediaParsedIndexToEntryMap(a1);
  v17 = CFDictionaryGetValue(MediaParsedIndexToEntryMap, v13);
  if (v17)
  {
    FigMediaSegmentSpecifierSetMapSegmentSpecifier(v77, v17);
  }

  v18 = FigWireArrayCopyCFTypeAtIndex(a2, 3);
  v19 = v18;
  if (!v18 || (v20 = v77, cf = 0, (Count = CFArrayGetCount(v18)) == 0))
  {
LABEL_21:
    v30 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v30, 4);
    v31 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetMediaSequence(v31, v32);
    v33 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v33, 5);
    v34 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsDiscontinuityDomain(v34, v35);
    v36 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v36, 6);
    v37 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetStartOffset(v37, v38);
    v39 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v39, 7);
    v40 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetBytesToRead(v40, v41);
    v42 = OUTLINED_FUNCTION_13_1();
    DoubleAtIndex = FigWireArrayGetDoubleAtIndex(v42, 8);
    FigMediaSegmentSpecifierSetTimeInSeconds(v6, DoubleAtIndex);
    v44 = OUTLINED_FUNCTION_13_1();
    v45 = FigWireArrayGetDoubleAtIndex(v44, 9);
    FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v6, v45);
    v46 = OUTLINED_FUNCTION_13_1();
    v47 = FigWireArrayGetDoubleAtIndex(v46, 10);
    FigMediaSegmentSpecifierSetBitRate(v6, v47);
    v48 = FigWireArrayCopyCFTypeAtIndex(a2, 14);
    FigMediaSegmentSpecifierSetIV(v77, v48);
    v49 = FigWireArrayGetDoubleAtIndex(a2, 20);
    if (v49 == 0.0)
    {
      v52 = 0;
      v53 = v76;
    }

    else
    {
      v50 = v49;
      v51 = FigGetAllocatorForMedia();
      v52 = CFDateCreate(v51, v50);
      v53 = v76;
      if (!v52)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_3();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v76, v77);
      }
    }

    FigMediaSegmentSpecifierSetDateStamp(v77, v52);
    v54 = OUTLINED_FUNCTION_13_1();
    v55 = FigWireArrayGetDoubleAtIndex(v54, 11);
    FigMediaSegmentSpecifierSetImputedDate(v6, v55);
    v56 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v56, 12);
    v57 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetType(v57, v58);
    v59 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v59, 15);
    v60 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsIndependent(v60, v61);
    v62 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v62, 16);
    v63 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsDiscontinuity(v63, v64);
    v65 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v65, 17);
    v66 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsMarkedAsGap(v66, v67);
    v68 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v68, 18);
    v69 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsFragment(v69, v70);
    v71 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v71, 19);
    v72 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetAreFragmentsExpired(v72, v73);
    FigMediaSegmentSpecifierSetIsReadInCurrent(v77, 1);
    v74 = FigWireArrayGetUInt64AtIndex(a2, 13);
    FigMediaSegmentSpecifierSetMediaParsedIndex(v77, v74);
    if (v74)
    {
      FigMediaPlaylistAddToMediaParsedIndexToEntryMap(a1, v74, v77);
    }

    *a3 = v77;
    v77 = 0;
    if (v48)
    {
      CFRelease(v48);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    v4 = 0;
    goto LABEL_32;
  }

  v22 = Count;
  v23 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v23);
    v6 = FigWireArrayGetUInt64AtIndex(ValueAtIndex, 13);
    v25 = FigMediaPlaylistGetMediaParsedIndexToEntryMap(a1);
    v26 = CFDictionaryGetValue(v25, v6);
    cf = v26;
    if (v26)
    {
      CFRetain(v26);
      if (cf)
      {
        break;
      }
    }

    v27 = streamPlaylistParser_deserializeMediaFileEntry(a1, ValueAtIndex, &cf);
    v28 = cf;
    if (v27)
    {
      v4 = v27;
      goto LABEL_43;
    }

    FigMediaSegmentSpecifierAddPartialSegment(v20, cf);
LABEL_18:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v22 == ++v23)
    {
      goto LABEL_21;
    }
  }

  v29 = streamPlaylistParser_deserializeMediaFileEntry(a1, ValueAtIndex, &cf);
  if (!v29)
  {
    goto LABEL_18;
  }

  v4 = v29;
  v28 = cf;
LABEL_43:
  v53 = v76;
  if (v28)
  {
    CFRelease(v28);
  }

LABEL_32:
  if (v53)
  {
    CFRelease(v53);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (!v9)
  {
LABEL_37:
    if (v77)
    {
      CFRelease(v77);
    }
  }

  return v4;
}

void FigStreamPlaylistParserCreateMediaGroupFromXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double streamPlaylistParser_copySerializedRepresentationForMediaGroupApplier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double streamPlaylistParser_copySerializedRepresentationForMediaGroupApplier_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigWireArraySetUInt64AtIndex_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigWireArraySetInt64AtIndex_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigWireArraySetDoubleAtIndex_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigImageQueueGaugeCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigCPEOctaviaPKDMovieIDCreateCommon(uint64_t a1, unint64_t a2, unint64_t a3, const void *a4, void *a5)
{
  if (!(a2 | a3))
  {
    emitter = fig_log_get_emitter();
    v21 = v5;
    v22 = 508;
LABEL_26:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294955146, "<<<< FigCPEPKDOctavia >>>>", v22, v21);
  }

  if (!a5)
  {
    emitter = fig_log_get_emitter();
    v21 = v5;
    v22 = 509;
    goto LABEL_26;
  }

  v8 = a3;
  *a5 = 0;
  if (_MergedGlobals_14 != -1)
  {
    dispatch_once(&_MergedGlobals_14, &__block_literal_global_0);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v12 = Instance;
    v13 = dispatch_queue_create("com.apple.FigCPEOctaviaPKDMovieID", 0);
    v12[2] = v13;
    if (!v13)
    {
      CFRelease(v12);
      return result;
    }

    if (v8)
    {
      v14 = Qt84D4aopGP;
    }

    else
    {
      v14 = pduR7VAgOpwwTZi6E;
    }

    v15 = f5dnLMQHpqo6KM9x;
    if (v8)
    {
      v15 = at7Z1NwMd;
    }

    v12[8] = v14;
    v12[9] = v15;
    v16 = n2qn70S3cN6uyWbw;
    if (v8)
    {
      v16 = mfGhVpprP0qip8G;
    }

    v12[10] = v16;
    if (v8)
    {
      v17 = 7;
    }

    else
    {
      v17 = 3;
      if (!a2)
      {
        v18 = 0;
        goto LABEL_19;
      }

      v8 = a2;
    }

    v18 = CFRetain(v8);
LABEL_19:
    v12[v17] = v18;
    if (a4)
    {
      v19 = CFRetain(a4);
    }

    else
    {
      v19 = 0;
    }

    v12[11] = v19;
    NeroTransportRegisterObjectWithFlags();
    *a5 = v12;
  }

  return result;
}

void __FigCPEOctaviaPKDMovieIDGetValue_block_invoke(uint64_t a1)
{
  v34 = 0;
  v2 = *(a1 + 40);
  if (!v2[5])
  {
    v11 = 0;
    OUTLINED_FUNCTION_2_4();
    v32 = -12158;
LABEL_29:
    *(v31 + 24) = v32;
    goto LABEL_21;
  }

  v3 = v2[7];
  if (v3)
  {
    MovieID = PKDKeyManagerGetMovieID(v3, *(a1 + 48), &v34);
    OUTLINED_FUNCTION_0_5(MovieID);
    if (v5)
    {
      goto LABEL_26;
    }

    v6 = *(a1 + 48);
  }

  else
  {
    v7 = PKDMovieIDGetValue(v2[3], *(a1 + 48), &v34);
    OUTLINED_FUNCTION_0_5(v7);
    if (v8)
    {
      goto LABEL_26;
    }

    v6 = PKDMovieIDGetInfo(*(*(a1 + 40) + 24));
  }

  v9 = *(a1 + 40);
  *(v9 + 32) = v34;
  if (*(v9 + 48))
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  v12 = (*(v9 + 64))();
  OUTLINED_FUNCTION_0_5(v12);
  if (v13)
  {
LABEL_26:
    v11 = 0;
    goto LABEL_21;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], 0, 0, *MEMORY[0x1E695E498]);
  if (!v15)
  {
    v11 = 0;
    OUTLINED_FUNCTION_2_4();
    v32 = -12151;
    goto LABEL_29;
  }

  v10 = v15;
  MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, v6);
  v11 = MutableCopy;
  if (!MutableCopy)
  {
    OUTLINED_FUNCTION_2_4();
    *(v33 + 24) = -12151;
LABEL_20:
    CFRelease(v10);
    goto LABEL_21;
  }

  CFDictionarySetValue(MutableCopy, @"DIM", v10);
  SerializedAtomDataBlockBufferForCFType = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
  OUTLINED_FUNCTION_0_5(SerializedAtomDataBlockBufferForCFType);
  if (v18)
  {
    goto LABEL_20;
  }

  v19 = NeroTransportSendSyncMessageCreatingReply();
  OUTLINED_FUNCTION_0_5(v19);
  if (v20)
  {
    goto LABEL_20;
  }

  CFTypeFromSerializedAtomDataBlockBuffer = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
  OUTLINED_FUNCTION_0_5(CFTypeFromSerializedAtomDataBlockBuffer);
  if (v22)
  {
    goto LABEL_20;
  }

  v23 = *(*(a1 + 40) + 72);
  v24 = v34;
  BytePtr = CFDataGetBytePtr(0);
  Length = CFDataGetLength(0);
  v27 = v23(v24, BytePtr, Length);
  OUTLINED_FUNCTION_0_5(v27);
  if (v28)
  {
    goto LABEL_20;
  }

  *(*(a1 + 40) + 48) = 1;
LABEL_17:
  v29 = *(a1 + 56);
  if (v29)
  {
    *v29 = v34;
  }

  if (v10)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v11)
  {
    CFRelease(v11);
  }

  OUTLINED_FUNCTION_2_4();
  if (*(v30 + 24))
  {
    (*(*(a1 + 40) + 80))(v34);
    *(*(a1 + 40) + 48) = 0;
  }
}

uint64_t FigCPEOctaviaPKDCryptorCreate(const void *a1, unint64_t *a2, void *a3, const __CFDictionary *a4, const void *a5, const void *a6, CFTypeRef *a7)
{
  v8 = 0;
  v37 = 0;
  cf = 0;
  values = 0;
  v9 = 4294955146;
  if (!a4 || !a6 || !a1 || !a2 || !a3 || !a7)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_5_3();
  CFNumberFromRemoteObjectRef = CMDerivedObjectCreate();
  if (CFNumberFromRemoteObjectRef)
  {
    goto LABEL_43;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v19 = DerivedStorage, v20 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v19 + 40) = v20) == 0) || (v21 = FigSimpleMutexCreate(), (*(v19 + 32) = v21) == 0))
  {
    v8 = 0;
    goto LABEL_42;
  }

  v35 = a7;
  *v19 = CFRetain(a1);
  *(v19 + 96) = 1;
  *(v19 + 104) = CFRetain(@"com.apple.pkd");
  *(v19 + 112) = CFRetain(a3);
  v22 = a5 ? CFRetain(a5) : 0;
  *(v19 + 120) = v22;
  *(v19 + 48) = CFRetain(a2);
  CFNumberFromRemoteObjectRef = FigCPEOctaviaPKDMovieIDGetSerializationToken(a2, &v37);
  if (CFNumberFromRemoteObjectRef || (CFNumberFromRemoteObjectRef = FigTransportCreateCFNumberFromRemoteObjectRef(), CFNumberFromRemoteObjectRef))
  {
LABEL_43:
    v9 = CFNumberFromRemoteObjectRef;
    v8 = 0;
    goto LABEL_34;
  }

  v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigCPENeroKey_MovieIDSerializationToken, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v8)
  {
LABEL_42:
    v9 = 4294955145;
    goto LABEL_34;
  }

  v23 = FigPKDCPECryptorCreate(a1, a2[3], 0, a3, a5, a4, (v19 + 16));
  if (v23)
  {
    goto LABEL_33;
  }

  v23 = FigPKDOctaviaCPECryptorAddListenerOnLocalCryptor(cf);
  if (v23)
  {
    goto LABEL_33;
  }

  v23 = FigOctaviaCPECryptorCreate(a1, @"com.apple.pkd", a3, v8, a5, a6, (v19 + 8));
  if (v23)
  {
    goto LABEL_33;
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  v23 = OUTLINED_FUNCTION_4_4(DefaultLocalCenter, cf, v25, *MEMORY[0x1E6961150]);
  if (v23)
  {
    goto LABEL_33;
  }

  Value = CFDictionaryGetValue(a4, @"AuditToken");
  if (Value)
  {
    v27 = Value;
    v28 = CFGetTypeID(Value);
    if (v28 == CFDataGetTypeID())
    {
      *(v19 + 64) = CFRetain(v27);
    }
  }

  v29 = CFDictionaryGetValue(a4, @"CryptKeyAttributes");
  if (!v29)
  {
    *(v19 + 152) = 0;
    goto LABEL_32;
  }

  v30 = CFRetain(v29);
  *(v19 + 152) = v30;
  if (!v30)
  {
LABEL_32:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v7, v35);
LABEL_33:
    v9 = v23;
    goto LABEL_34;
  }

  v31 = CFDictionaryGetValue(a4, @"iTunesRentalID");
  if (v31)
  {
    v31 = CFRetain(v31);
  }

  *(v19 + 80) = v31;
  v32 = CFDictionaryGetValue(a4, @"iTunesAccountID");
  if (v32)
  {
    v32 = CFRetain(v32);
  }

  v9 = 0;
  *(v19 + 88) = v32;
  *v35 = cf;
  cf = 0;
LABEL_34:
  if (values)
  {
    CFRelease(values);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigCPEOctaviaPKDCryptorCreateForMSE(const void *a1, const void *a2, void *a3, void *a4, const __CFDictionary *a5, const void *a6, const void *a7, CFTypeRef *a8)
{
  v9 = 0;
  v36 = 0;
  cf = 0;
  values = 0;
  v10 = 4294955146;
  if (!a5 || !a7 || !a4 || !a2 || !a1 || !a3 || !a8)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_5_3();
  CFNumberFromRemoteObjectRef = CMDerivedObjectCreate();
  if (CFNumberFromRemoteObjectRef)
  {
    goto LABEL_43;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v20 = DerivedStorage, v21 = FigSimpleMutexCreate(), (*(v20 + 32) = v21) == 0) || (v22 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v20 + 40) = v22) == 0))
  {
    v9 = 0;
    goto LABEL_42;
  }

  *v20 = CFRetain(a1);
  *(v20 + 96) = 1;
  v23 = @"com.apple.pkdmse" ? CFRetain(@"com.apple.pkdmse") : 0;
  *(v20 + 104) = v23;
  *(v20 + 112) = CFRetain(a4);
  v24 = a6 ? CFRetain(a6) : 0;
  *(v20 + 120) = v24;
  *(v20 + 56) = CFRetain(a3);
  *(v20 + 48) = CFRetain(a2);
  CFNumberFromRemoteObjectRef = FigCPEOctaviaPKDMovieIDGetSerializationToken(a2, &v36);
  if (CFNumberFromRemoteObjectRef || (CFNumberFromRemoteObjectRef = FigTransportCreateCFNumberFromRemoteObjectRef(), CFNumberFromRemoteObjectRef))
  {
LABEL_43:
    v10 = CFNumberFromRemoteObjectRef;
    v9 = 0;
    goto LABEL_34;
  }

  v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigCPENeroKey_MovieIDSerializationToken, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
LABEL_42:
    v10 = 4294955145;
    goto LABEL_34;
  }

  v25 = FigPKDMSECPECryptorCreate(a1, a3, a4, a6, a5, (v20 + 16));
  if (!v25)
  {
    v25 = FigPKDOctaviaCPECryptorAddListenerOnLocalCryptor(cf);
    if (!v25)
    {
      v25 = FigOctaviaCPECryptorCreate(a1, @"com.apple.pkdmse", a4, v9, a6, a7, (v20 + 8));
      if (!v25)
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        v25 = OUTLINED_FUNCTION_4_4(DefaultLocalCenter, cf, v27, *MEMORY[0x1E6961150]);
        if (!v25)
        {
          Value = CFDictionaryGetValue(a5, @"AuditToken");
          if (Value)
          {
            v29 = Value;
            v30 = CFGetTypeID(Value);
            if (v30 == CFDataGetTypeID())
            {
              *(v20 + 64) = CFRetain(v29);
            }
          }

          v31 = CFDictionaryGetValue(a5, @"CryptKeyAttributes");
          if (v31)
          {
            v32 = CFRetain(v31);
            *(v20 + 152) = v32;
            if (v32)
            {
              v10 = 0;
              *a8 = cf;
              cf = 0;
              goto LABEL_34;
            }
          }

          else
          {
            *(v20 + 152) = 0;
          }

          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, a8, a7);
        }
      }
    }
  }

  v10 = v25;
LABEL_34:
  if (values)
  {
    CFRelease(values);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t FigPKDOctaviaCPECryptorCopyProperty(const void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 4294955146;
  if (a2 && a4)
  {
    OUTLINED_FUNCTION_11_3(DerivedStorage);
    if (*(v4 + 24))
    {
      OUTLINED_FUNCTION_6_4();
      if (v12)
      {
        v10 = 4294954511;
      }

      else
      {
        v10 = v11;
      }

      goto LABEL_18;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961098]))
    {
      v10 = 4294951076;
LABEL_18:
      FigSimpleMutexUnlock();
      return v10;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610E8]))
    {
      SInt32 = FigCFNumberCreateSInt32();
LABEL_11:
      v10 = 0;
      *a4 = SInt32;
      goto LABEL_18;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610F0]) || CFEqual(a2, *MEMORY[0x1E6961138]))
    {
      v14 = *(v4 + 16);
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v15)
      {
        v10 = 4294954514;
        goto LABEL_18;
      }

      v16 = v15(v14, a2, a3, a4);
      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961130]))
    {
      EnsureUUID(a1);
      if (v16)
      {
        goto LABEL_16;
      }

      SInt32 = *(v4 + 144);
      if (!SInt32)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x1E69610B0]))
      {
        v16 = CopyCurrentRequestID(v4, a4);
LABEL_16:
        v10 = v16;
        goto LABEL_18;
      }

      if (!CFEqual(a2, *MEMORY[0x1E69610A8]))
      {
        v16 = CMBaseObjectCopyProperty(*(v4 + 8), a2, a3, a4);
        goto LABEL_16;
      }

      SInt32 = *(v4 + 152);
      if (!SInt32)
      {
        goto LABEL_11;
      }
    }

    SInt32 = CFRetain(SInt32);
    goto LABEL_11;
  }

  return v10;
}

uint64_t FigPKDOctaviaCPECryptorSetProperty(const void *a1, const void *a2, void *a3)
{
  v4 = a3;
  values = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_11_3(DerivedStorage);
  if (*(v3 + 24))
  {
    OUTLINED_FUNCTION_6_4();
    if (v9)
    {
      v10 = 4294954511;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_21;
  }

  v11 = *MEMORY[0x1E6961108];
  if (!CFEqual(a2, *MEMORY[0x1E6961108]))
  {
    v17 = CFEqual(a2, *MEMORY[0x1E69610E0]);
    v18 = MEMORY[0x1E695E480];
    if (v17)
    {
      if (v4)
      {
        v19 = CFGetTypeID(v4);
        if (v19 == CFErrorGetTypeID())
        {
          *(v3 + 96) = 1;
          v20 = *(v3 + 16);
          v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v21)
          {
            v14 = v21(v20, a2, v4);
            if (v14)
            {
              goto LABEL_53;
            }

            v22 = *(v3 + 8);
            v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v23)
            {
              v14 = v23(v22, a2, v4);
              if (!v14)
              {
                v24 = CFDictionaryCreate(*v18, MEMORY[0x1E6961018], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v24)
                {
                  v25 = v24;
                  OUTLINED_FUNCTION_12_2();
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigDispatchAsyncPostNotification();
                  CFRelease(v25);
                  v10 = 0;
                }

                else
                {
                  v10 = 4294955145;
                }

                goto LABEL_21;
              }

              goto LABEL_53;
            }
          }

          goto LABEL_20;
        }
      }

LABEL_102:
      v10 = 4294955136;
      goto LABEL_21;
    }

    v27 = *MEMORY[0x1E69610F0];
    if (!CFEqual(a2, *MEMORY[0x1E69610F0]))
    {
      if (CFEqual(a2, *MEMORY[0x1E6961138]))
      {
        if (!v4)
        {
          goto LABEL_102;
        }

        v39 = CFGetTypeID(v4);
        if (v39 != CFBooleanGetTypeID())
        {
          goto LABEL_102;
        }

        *(v3 + 72) = CFBooleanGetValue(v4);
        v40 = *(v3 + 16);
      }

      else
      {
        v40 = *(v3 + 8);
      }

      v14 = CMBaseObjectSetProperty(v40, a2, v4);
      goto LABEL_53;
    }

    v88 = 0;
    cf = 0;
    v28 = CMBaseObjectGetDerivedStorage();
    if (!*(v28 + 48))
    {
      goto LABEL_107;
    }

    if (!v4)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v78, v80, v82);
      goto LABEL_105;
    }

    v29 = v28;
    v30 = CFGetTypeID(v4);
    if (v30 != CFDataGetTypeID())
    {
LABEL_107:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_108;
    }

    v31 = *(v29[6] + 56);
    v32 = v29[2];
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v33)
    {
      v34 = v33(v32, v27, v4);
      if (v34)
      {
        goto LABEL_108;
      }

      v27 = v29[2];
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v35)
      {
        v36 = *v18;
        v79 = *MEMORY[0x1E69610F8];
        v34 = v35(v27);
        if (!v34)
        {
          if (v31)
          {
            v37 = CFPropertyListCreateWithData(v36, v4, 0, 0, 0);
            if (v37)
            {
              v4 = v37;
              v27 = CFGetTypeID(v37);
              if (v27 == CFDictionaryGetTypeID())
              {
                goto LABEL_55;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v80, v82);
              v10 = v38;
              CFRelease(v4);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v80, v82);
              v10 = v75;
            }

            v4 = 0;
            OUTLINED_FUNCTION_189_0();
            if (v10)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v4 = 0;
          }

LABEL_55:
          v41 = FigCPEOctaviaPKDMovieIDGetValue(v29[6], v4, &v88);
          if (!v41)
          {
            v18 = cf;
            v85 = CMBaseObjectGetDerivedStorage();
            v90 = 0;
            v81 = v31;
            if (v31)
            {
              v42 = uZOxRFTqHPWsyRz;
            }

            else
            {
              v42 = kNsH5DWSn1J;
            }

            v43 = OUTLINED_FUNCTION_9_2();
            Mutable = CFDictionaryCreateMutable(v43, v44, v45, v46);
            if (Mutable)
            {
              v48 = Mutable;
              v49 = OUTLINED_FUNCTION_9_2();
              v86 = CFDictionaryCreateMutable(v49, v50, v51, v52);
              if (v86)
              {
                allocator = v36;
                UInt64 = FigCFNumberCreateUInt64();
                if (UInt64)
                {
                  CFDictionarySetValue(v48, @"aMII4QYJ", UInt64);
                  CFDictionarySetValue(v48, @"igoeg", v18);
                  CFDictionarySetValue(v48, @"lGxB4ky", *(v85 + 64));
                  FigCFDictionarySetInt32();
                  v54 = v42(v48, v86);
                  if (!v54)
                  {
                    Value = CFDictionaryGetValue(v86, @"CBQGVxY");
                    if (Value)
                    {
                      v18 = CFRetain(Value);
                    }

                    else
                    {
                      v18 = 0;
                    }

                    v56 = CFDictionaryGetValue(v86, @"igoeg");
                    if (!v56 || (v57 = CFRetain(v56)) == 0)
                    {
                      v83 = 0;
                      v42 = 0;
                      goto LABEL_74;
                    }

                    v83 = v57;
                    v42 = *(v85 + 16);
                    v58 = *(CMBaseObjectGetVTable() + 16);
                    if (*v58 >= 6uLL && (v59 = v58[21]) != 0)
                    {
                      v60 = v59(v42, v83, &v90);
                      if (!v60)
                      {
                        v61 = CFDictionaryCreate(allocator, MEMORY[0x1E6961080], &v90, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (v61)
                        {
                          v42 = v61;
                          OUTLINED_FUNCTION_12_2();
                          CMNotificationCenterGetDefaultLocalCenter();
                          FigDispatchAsyncPostNotification();
LABEL_74:
                          v10 = 0;
                          goto LABEL_75;
                        }

                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_1_4();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v81, v83);
                      }

                      v10 = v60;
                      if (!v18)
                      {
LABEL_79:
                        CFRelease(v48);
                        CFRelease(v86);
                        OUTLINED_FUNCTION_189_0();
                        goto LABEL_80;
                      }
                    }

                    else
                    {
                      v10 = 4294954514;
                      if (!v18)
                      {
                        goto LABEL_79;
                      }
                    }

                    CFRelease(v18);
                    goto LABEL_79;
                  }
                }

                else
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1_4();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v81, v82);
                }

                v10 = v54;
                v18 = 0;
                v83 = 0;
                v42 = 0;
LABEL_75:
                CFRelease(v48);
                CFRelease(v86);
                if (!UInt64)
                {
LABEL_81:
                  v36 = allocator;
                  v62 = v81;
                  if (v83)
                  {
                    CFRelease(v83);
                  }

LABEL_83:
                  if (v90)
                  {
                    CFRelease(v90);
                  }

                  if (v42)
                  {
                    CFRelease(v42);
                  }

                  if (!v10)
                  {
                    if (!v62)
                    {
                      v27 = 0;
LABEL_90:
                      v63 = v29[1];
                      v64 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v64)
                      {
                        v65 = v64(v63, v79, v18);
LABEL_92:
                        v10 = v65;
                        goto LABEL_37;
                      }

LABEL_36:
                      v10 = 4294954514;
LABEL_37:
                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      if (v18)
                      {
                        CFRelease(v18);
                      }

                      if (v4)
                      {
                        CFRelease(v4);
                      }

                      if (v27)
                      {
                        CFRelease(v27);
                      }

                      if (!v10)
                      {
                        *(v3 + 72) = 1;
                      }

                      goto LABEL_21;
                    }

                    v66 = CMBaseObjectGetDerivedStorage();
                    EnsureUUID(a1);
                    if (!v67)
                    {
                      BytesFromCFString = FigCreateBytesFromCFString();
                      if (BytesFromCFString)
                      {
                        v69 = BytesFromCFString;
                        Length = CFStringGetLength(*(v66 + 144));
                        v27 = CFDataCreate(v36, v69, Length);
                        if (v27)
                        {
                          v10 = 0;
                        }

                        else
                        {
                          fig_log_get_emitter();
                          OUTLINED_FUNCTION_1_4();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v81, v83);
                          v10 = v77;
                        }

                        CFAllocatorDeallocate(v36, v69);
                        if (v10)
                        {
                          goto LABEL_37;
                        }
                      }

                      else
                      {
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_1_4();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v81, v83);
                        v10 = v76;
                        v27 = 0;
                        if (v76)
                        {
                          goto LABEL_37;
                        }
                      }

                      v71 = v29[1];
                      v72 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (!v72)
                      {
                        goto LABEL_36;
                      }

                      v65 = v72(v71, *MEMORY[0x1E6961088], v27);
                      if (v65)
                      {
                        goto LABEL_92;
                      }

                      goto LABEL_90;
                    }

                    v10 = v67;
                  }

LABEL_106:
                  v27 = 0;
                  goto LABEL_37;
                }

LABEL_80:
                CFRelease(UInt64);
                goto LABEL_81;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v81, v82);
              v10 = v74;
              CFRelease(v48);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v31, v82);
              v10 = v73;
            }

            OUTLINED_FUNCTION_189_0();
            v62 = v81;
            goto LABEL_83;
          }

LABEL_105:
          v10 = v41;
          v18 = 0;
          goto LABEL_106;
        }

LABEL_108:
        v10 = v34;
        OUTLINED_FUNCTION_189_0();
        v4 = 0;
        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_189_0();
    v4 = 0;
    goto LABEL_36;
  }

  v12 = *(v3 + 16);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v14 = v13(v12, v11, v4);
    if (v14)
    {
LABEL_53:
      v10 = v14;
      goto LABEL_21;
    }

    v15 = *(v3 + 8);
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v16)
    {
      v14 = v16(v15, v11, v4);
      goto LABEL_53;
    }
  }

LABEL_20:
  v10 = 4294954514;
LABEL_21:
  FigSimpleMutexUnlock();
  return v10;
}

double EnsureUUID(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 144))
  {
    v4 = DerivedStorage;
    v5 = CFGetAllocator(a1);
    v6 = CFUUIDCreate(v5);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetAllocator(a1);
      v9 = CFUUIDCreateString(v8, v7);
      *(v4 + 144) = v9;
      if (!v9)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
      }

      CFRelease(v7);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t FigPKDOctaviaCPECryptorGetExternalProtectionMethods(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_11_3(DerivedStorage);
  if (*(v2 + 24))
  {
    OUTLINED_FUNCTION_6_4();
    if (v6)
    {
      v7 = 4294954511;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v8 = *(v2 + 8);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v9(v8, a2);
    }

    v7 = 0;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigPKDOctaviaCPECryptorGetAggregateExternalProtectionStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_11_3(DerivedStorage);
  if (*(v3 + 24))
  {
    OUTLINED_FUNCTION_6_4();
    if (v8)
    {
      v9 = 4294954511;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v10 = *(v3 + 8);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v11)
    {
      v11(v10, a2, a3);
    }

    v9 = 0;
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigPKDOctaviaCPECryptorCreateKeyRequest(uint64_t a1, const __CFDictionary *a2, const void *Value, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 4294955146;
  if (!a2 || !a4)
  {
    return v9;
  }

  OUTLINED_FUNCTION_11_3(DerivedStorage);
  if (*(v4 + 24))
  {
    v9 = 4294954511;
LABEL_5:
    FigSimpleMutexUnlock();
    return v9;
  }

  if (!PKDKeyRequestIDsMatch(a2, *(v4 + 136)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v51, v53);
    v9 = v45;
    goto LABEL_5;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = OUTLINED_FUNCTION_9_2();
  MutableCopy = CFDictionaryCreateMutableCopy(v11, v12, a2);
  if (!MutableCopy)
  {
LABEL_48:
    v9 = 4294955145;
    goto LABEL_5;
  }

  v14 = MutableCopy;
  v15 = *MEMORY[0x1E6962AE8];
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6962AE8]);
  v16 = OUTLINED_FUNCTION_9_2();
  v18 = CFDictionaryCreateMutableCopy(v16, v17, a2);
  if (!v18)
  {
    CFRelease(v14);
    goto LABEL_48;
  }

  v19 = v18;
  CFDictionaryRemoveValue(v18, v15);
  if (*(v4 + 72))
  {
    v20 = *(v4 + 16);
    v21 = *(CMBaseObjectGetVTable() + 16);
    if (*v21 >= 4uLL && (v22 = v21[11]) != 0)
    {
      v9 = v22(v20, v14, Value, a4);
      OUTLINED_FUNCTION_13_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
      v9 = 4294954514;
    }

    goto LABEL_40;
  }

  v54 = Value;
  v52 = dispatch_group_create();
  v62 = 0;
  v63 = &v62;
  v64 = 0x2000000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  Value = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AC0]);
  if (!Value)
  {
    LODWORD(v10) = 0;
    goto LABEL_50;
  }

  v50 = v14;
  v23 = *(v4 + 80);
  v24 = *(v4 + 88);
  v66 = 0;
  v25 = OUTLINED_FUNCTION_9_2();
  Mutable = CFDictionaryCreateMutable(v25, v26, v27, v28);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v52, v54);
    v9 = v46;
LABEL_53:
    OUTLINED_FUNCTION_13_2();
    goto LABEL_27;
  }

  v30 = Mutable;
  v31 = OUTLINED_FUNCTION_9_2();
  v35 = CFDictionaryCreateMutable(v31, v32, v33, v34);
  if (!v35)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v52, v54);
    v9 = v47;
    CFRelease(v30);
    goto LABEL_53;
  }

  v36 = v35;
  FigCFDictionarySetInt32();
  if (v23)
  {
    CFDictionarySetValue(v30, @"lK1", v23);
  }

  if (v24)
  {
    CFDictionarySetValue(v30, @"DhpWkh3rnR", v24);
  }

  CFDictionarySetValue(v30, @"Y7bdIsnh7", Value);
  if (nS1Q9ljw9esy9(v30, v36))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v52, v54);
    v9 = v48;
    OUTLINED_FUNCTION_13_2();
  }

  else
  {
    FigCFDictionaryGetInt64IfPresent();
    LODWORD(v10) = v66;
    v37 = CFDictionaryGetValue(v36, @"xNJu5eepP");
    if (v37 && (v38 = CFRetain(v37)) != 0)
    {
      Value = v38;
      v9 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_3();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v52, v54);
      v9 = v39;
      Value = 0;
    }
  }

  CFRelease(v30);
  CFRelease(v36);
LABEL_27:
  v14 = v50;
  if (v9)
  {
LABEL_50:
    v43 = 0;
    goto LABEL_39;
  }

  CFDictionaryAddValue(v19, *MEMORY[0x1E6962B10], Value);
  v40 = OUTLINED_FUNCTION_12_2();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigPKDOctaviaCPECryptorCreateKeyRequest_block_invoke;
  block[3] = &unk_1E7476E90;
  block[6] = v4;
  block[7] = v19;
  block[8] = v54;
  block[4] = &v62;
  block[5] = &v58;
  v57 = v10;
  dispatch_group_async(v52, v40, block);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 0x40000000;
  v55[2] = __FigPKDOctaviaCPECryptorCreateKeyRequest_block_invoke_2;
  v55[3] = &__block_descriptor_tmp_33;
  v55[4] = v4;
  v55[5] = v50;
  v55[6] = v54;
  dispatch_group_async(v52, v40, v55);
  dispatch_group_wait(v52, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v4 + 76))
  {
    v41 = v59;
  }

  else
  {
    v41 = v59;
    if (!*(v63 + 6))
    {
      *a4 = v59[3];
      v41[3] = 0;
    }
  }

  v42 = v41[3];
  if (v42)
  {
    CFRelease(v42);
  }

  if (v52)
  {
    dispatch_release(v52);
  }

  v9 = *(v63 + 6);
  if (!v9)
  {
    v9 = *(v4 + 76);
  }

  v43 = 1;
LABEL_39:
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  if (v43)
  {
LABEL_40:
    FigSimpleMutexUnlock();
  }

  CFRelease(v14);
  CFRelease(v19);
  if (Value)
  {
    CFRelease(Value);
  }

  if (v10)
  {
    qo0PLbO2vEnVix1GkQeB8LR(v10);
  }

  return v9;
}

uint64_t FigPKDOctaviaCPECryptorSetKeyRequestResponse(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 4294955146;
    goto LABEL_8;
  }

  v7 = DerivedStorage;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B28]);
    v9 = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B30]) == *MEMORY[0x1E695E4D0];
  }

  else
  {
    Value = 0;
    v9 = 0;
  }

  FigSimpleMutexLock();
  v10 = *(v7 + 136);
  if (*(v7 + 24))
  {
    v11 = 4294954511;
  }

  else
  {
    if (*(v7 + 72))
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    v14 = *(CMBaseObjectGetVTable() + 16);
    if (*v14 >= 4uLL && (v15 = v14[12]) != 0)
    {
      v11 = v15(v13, a2, a3);
      if (!Value)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 4294954514;
      if (!Value)
      {
        goto LABEL_7;
      }
    }

    v16 = *MEMORY[0x1E695E480];
    Current = CFAbsoluteTimeGetCurrent();
    v18 = CFDateCreate(v16, Current);
    TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(Value, v18);
    if (TimeIntervalSinceDate > 0.0 && (v20 = TimeIntervalSinceDate, StopAndReleaseTimer((v7 + 128)), v21 = OUTLINED_FUNCTION_12_2(), v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v21), (*(v7 + 128) = v22) != 0))
    {
      if (*(v7 + 40))
      {
        CFRetain(*(v7 + 40));
        v22 = *(v7 + 128);
        v23 = *(v7 + 40);
      }

      else
      {
        v23 = 0;
      }

      dispatch_set_context(v22, v23);
      v24 = *(v7 + 128);
      v25 = dispatch_time(0, (v20 * 1000000000.0));
      dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      dispatch_source_set_event_handler_f(*(v7 + 128), RenewalTimerCallback);
      dispatch_source_set_cancel_handler_f(*(v7 + 128), FigCFRelease_0);
      dispatch_resume(*(v7 + 128));
      v11 = 0;
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v11 = v26;
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    CFRelease(v18);
  }

LABEL_7:
  FigSimpleMutexUnlock();
LABEL_8:
  PKDDispatchKeyResponseNotification(a1, v11, v10, v9);
  return v11;
}

uint64_t FigPKDOctaviaCPECryptorGetSerializationToken(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_11_3(DerivedStorage);
  if (*(v2 + 24))
  {
    v5 = 4294954511;
  }

  else
  {
    v6 = *(v2 + 8);
    v7 = *(CMBaseObjectGetVTable() + 16);
    if (*v7 >= 4uLL && (v8 = v7[13]) != 0)
    {
      v5 = v8(v6, a2);
    }

    else
    {
      v5 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigPKDOctaviaCPECryptorTestAndSetKeyRequestState(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v29 = 0;
  v12 = 4294955136;
  if (a2 && a3)
  {
    v13 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v13 + 24))
    {
      v11 = 0;
      v12 = 4294954511;
      goto LABEL_35;
    }

    if (*(v13 + 72))
    {
      v14 = *(v13 + 16);
      v15 = *(CMBaseObjectGetVTable() + 16);
      if (*v15 < 6uLL || (v16 = v15[20]) == 0)
      {
        v11 = 0;
        v12 = 4294954514;
        goto LABEL_35;
      }

      v17 = v16(v14, a2, a3, &v29, 0);
    }

    else
    {
      v18 = *(v13 + 8);
      v19 = *(CMBaseObjectGetVTable() + 16);
      if (*v19 < 6uLL || (v20 = v19[20]) == 0 || ((v17 = v20(v18, a2, a3, &v29, 0), v17 != -12036) ? (v21 = v17 == -12782) : (v21 = 1), v21))
      {
        if (*(v13 + 96) == a2)
        {
          *(v13 + 96) = a3;
          v29 = 1;
        }

        if (a3 >= a2)
        {
          goto LABEL_31;
        }

        cf = 0;
        v22 = *(v13 + 8);
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v23)
        {
          v24 = v23(v22, *MEMORY[0x1E6961110], *MEMORY[0x1E695E480], &cf);
          v25 = cf;
          if (v24)
          {
            v26 = 0;
          }

          else
          {
            v26 = cf == *MEMORY[0x1E695E4C0];
          }

          if (v26)
          {
            v12 = ResetRemoteCryptor(a1);
            v25 = cf;
          }

          else
          {
            v12 = 0;
          }

          if (v25)
          {
            CFRelease(v25);
          }
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_30;
      }
    }

    v12 = v17;
LABEL_30:
    if (!v12)
    {
LABEL_31:
      if (v29)
      {
        *(v13 + 96) = a3;
        if (a3 == 2)
        {
          *(v13 + 136) = PKDGetNewRequestID();
          StopAndReleaseTimer((v13 + 128));
        }
      }

      v12 = 0;
      v11 = *(v13 + 136);
      goto LABEL_35;
    }

    v11 = 0;
LABEL_35:
    FigSimpleMutexUnlock();
  }

  if (a4)
  {
    *a4 = v29;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return v12;
}

void __FigPKDOctaviaCPECryptorCreateKeyRequest_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (*v6 >= 4uLL && (v7 = v6[11]) != 0)
  {
    v8 = v7(v2, v3, v4, v5 + 24);
  }

  else
  {
    v8 = 4294954514;
  }

  OUTLINED_FUNCTION_0_5(v8);
  if (v9)
  {
    return;
  }

  v10 = *(a1 + 72);
  v11 = *(*(*(a1 + 40) + 8) + 24);
  length_4 = 0;
  HIDWORD(v19) = 0;
  if (v10 && v11)
  {
    BytePtr = CFDataGetBytePtr(v11);
    Length = CFDataGetLength(v11);
    if (!f5zGmdURga6BZ(v10, BytePtr, Length, &length_4, &v19 + 4))
    {
      v14 = CFDataCreate(*MEMORY[0x1E695E480], length_4, HIDWORD(v19));
      Ud5PNQt99i(length_4);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, length_4, v21);
      }

      goto LABEL_11;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v14 = 0;
LABEL_11:
  OUTLINED_FUNCTION_0_5(v15);
  if (!v16)
  {
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 24);
    *(v17 + 24) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void RenewalTimerCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 24))
    {
      StopAndReleaseTimer((DerivedStorage + 128));
      OUTLINED_FUNCTION_12_2();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    FigSimpleMutexUnlock();

    CFRelease(v2);
  }
}

double __FigCPEOctaviaPKDMovieIDCreateCommon_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void CopyCurrentRequestID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigReportingSessionStatsCreate(CFTypeRef *a1)
{
  OUTLINED_FUNCTION_4_5();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_4_5();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    return 4294955296;
  }

  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigReportingSessionStatsGetClassID_sRegisterFigReportingSessionStatsOnce, RegisterFigReportingSessionStatsBaseType);
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955295;
  }

  v5 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], 0);
  *v5 = Mutable;
  if (!Mutable)
  {
    return 4294955295;
  }

  v3 = FigReportingStatsCreate(v5 + 2);
  if (v3)
  {
    return v3;
  }

  v7 = FigReportingStatsCreate(v5 + 1);
  if (!v7)
  {
    *a1 = 0;
  }

  return v7;
}

void sessionStatsFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    v3 = *DerivedStorage;
    if (v3)
    {
      CFDictionaryApplyFunction(v3, fss_releaseStatDictionaryApplier, 0);
      CFRelease(*v2);
    }

    FigReportingStatsDestroy(v2[2]);
    v4 = v2[1];

    FigReportingStatsDestroy(v4);
  }
}

uint64_t sessionStatsCopyPeriodicStatsValuesForKeys()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (v0 && v1)
  {
    if (DerivedStorage)
    {
      OUTLINED_FUNCTION_0_6();
      fss_copyAggregatedStats(v4, v5, v6);
      return 0;
    }
  }

  return result;
}

uint64_t sessionStatsCopySessionAggregateStatsValuesForKeys()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (v0 && v1)
  {
    if (DerivedStorage)
    {
      OUTLINED_FUNCTION_0_6();
      fss_copyAggregatedStats(v4, v5, v6);
      return 0;
    }
  }

  return result;
}

uint64_t sessionStatsCopySessionArraysForKeys()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (v0 && v1 && DerivedStorage)
  {
    if (CFArrayGetCount(v1) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        if (ValueAtIndex)
        {
          FigReportingStatsCopyArrayAndSetInDictionary(*(DerivedStorage + 8), *ValueAtIndex, v0);
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(v1));
    }

    return 0;
  }

  return result;
}

uint64_t sessionStatsCopyValuesForKeys()
{
  OUTLINED_FUNCTION_2_5();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (v0 && v3 && DerivedStorage)
  {
    v12[0] = v3;
    v12[1] = v0;
    CFDictionaryApplyFunction(*DerivedStorage, fss_fetchEventStatsAndSetInDictionary, v12);
    if (v1 && CFArrayGetCount(v3) >= 1)
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          if (!CFDictionaryContainsKey(v0, *ValueAtIndex))
          {
            v9 = *v8;
            if (CFArrayGetCount(v1) >= 1)
            {
              v10 = 0;
              while (1)
              {
                v11 = CFArrayGetValueAtIndex(v1, v10);
                if (v11)
                {
                  if (CFStringCompare(*v11, v9, 0) == kCFCompareEqualTo)
                  {
                    break;
                  }
                }

                if (++v10 >= CFArrayGetCount(v1))
                {
                  goto LABEL_9;
                }
              }

              result = FigReportingStatsCopyAsCFTypeAndSetInDictionary(*(DerivedStorage + 8), *v8, v0);
              if (result)
              {
                if (result != -12005)
                {
                  break;
                }
              }
            }
          }
        }

LABEL_9:
        if (++v6 >= CFArrayGetCount(v3))
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sessionStatsGetAggregatedIntValue()
{
  OUTLINED_FUNCTION_2_5();
  v1 = v0;
  if (!CMBaseObjectGetDerivedStorage() || v1 >= 2)
  {
    return 4294955296;
  }

  OUTLINED_FUNCTION_0_6();

  return FigReportingStatsGetIntValue(v3, v4, v5);
}

uint64_t sessionStatsGetAggregatedCountValue()
{
  OUTLINED_FUNCTION_2_5();
  v1 = v0;
  if (!CMBaseObjectGetDerivedStorage() || v1 >= 2)
  {
    return 4294955296;
  }

  OUTLINED_FUNCTION_0_6();

  return FigReportingStatsGetCountValue(v3, v4, v5);
}

uint64_t sessionStatsCopyAggregatedCFTypeValue()
{
  OUTLINED_FUNCTION_2_5();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  result = 4294955296;
  if (v0 && DerivedStorage)
  {
    if (v3 == 1)
    {
      v6 = 8;
    }

    else
    {
      if (v3)
      {
        return result;
      }

      v6 = 16;
    }

    result = FigReportingStatsGetCFTypeValue(*(DerivedStorage + v6), v1, &cf);
    if (!result)
    {
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *v0 = v7;
    }
  }

  return result;
}

uint64_t sessionStatsAddToCountValue()
{
  OUTLINED_FUNCTION_2_5();
  v2 = v1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v14 = 0;
  if (v0)
  {
    if (DerivedStorage)
    {
      result = fss_getOrCreateNewReportingStatsForReportingStatsKey(DerivedStorage, v2, &v14);
      if (!result)
      {
        OUTLINED_FUNCTION_0_6();
        result = FigReportingStatsAddToCountValue(v5, v6, v7);
        if (!result)
        {
          OUTLINED_FUNCTION_0_6();
          result = FigReportingStatsAddToCountValue(v8, v9, v10);
          if (!result)
          {
            OUTLINED_FUNCTION_0_6();

            return FigReportingStatsAddToCountValue(v11, v12, v13);
          }
        }
      }
    }
  }

  return result;
}

CFDictionaryRef *sessionStatsUpdateSampleValue()
{
  OUTLINED_FUNCTION_2_5();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    result = OUTLINED_FUNCTION_6_5(result, v1, v2, v3, v4, v5, v6, v7, v17);
    if (!result)
    {
      OUTLINED_FUNCTION_0_6();
      result = FigReportingStatsUpdateSampleValue(v8, v9, v10);
      if (!result)
      {
        OUTLINED_FUNCTION_0_6();
        result = FigReportingStatsUpdateSampleValue(v11, v12, v13);
        if (!result)
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsUpdateSampleValue(v14, v15, v16);
        }
      }
    }
  }

  return result;
}

CFDictionaryRef *sessionStatsSetCFTypeValue()
{
  OUTLINED_FUNCTION_2_5();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    result = OUTLINED_FUNCTION_6_5(result, v1, v2, v3, v4, v5, v6, v7, v11);
    if (!result)
    {
      OUTLINED_FUNCTION_0_6();
      result = FigReportingStatsSetCFTypeValue(v8, v9, v10);
      if (!result)
      {
        OUTLINED_FUNCTION_0_6();

        return fss_updateAggregatedCFTypeStat();
      }
    }
  }

  return result;
}

CFDictionaryRef *sessionStatsSetIntValue()
{
  OUTLINED_FUNCTION_2_5();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    result = OUTLINED_FUNCTION_6_5(result, v1, v2, v3, v4, v5, v6, v7, v17);
    if (!result)
    {
      OUTLINED_FUNCTION_0_6();
      result = FigReportingStatsSetValue(v8, v9, v10);
      if (!result)
      {
        OUTLINED_FUNCTION_0_6();
        result = FigReportingStatsSetValue(v11, v12, v13);
        if (!result)
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsSetValue(v14, v15, v16);
        }
      }
    }
  }

  return result;
}

uint64_t sessionStatsAppendValuesToArrays(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (a2 && DerivedStorage)
  {
    if (CFArrayGetCount(a2) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
        if (ValueAtIndex)
        {
          FigReportingStatsCopyAsCFTypeAndAppendToArray(*(DerivedStorage + 8), *ValueAtIndex);
        }

        ++v5;
      }

      while (v5 < CFArrayGetCount(a2));
    }

    return 0;
  }

  return result;
}

uint64_t sessionStatsResetValue()
{
  OUTLINED_FUNCTION_471();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (v1 && (v3 = *result) != 0)
    {
      Value = CFDictionaryGetValue(v3, v1);
      if (Value)
      {
        FigReportingStatsResetValue(Value, v0);
        return 0;
      }

      else
      {
        return 4294955291;
      }
    }

    else
    {
      return 4294955296;
    }
  }

  return result;
}

uint64_t sessionStatsResetArray(uint64_t a1, const __CFString *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = *(result + 8);

    return FigReportingStatsResetArray(v4, a2);
  }

  return result;
}

uint64_t sessionStatsGetArrayCount()
{
  OUTLINED_FUNCTION_471();
  result = CMBaseObjectGetDerivedStorage();
  v3 = 0;
  *v0 = 0;
  if (result)
  {
    result = FigReportingStatsGetArrayCount(*(result + 8), v1, &v3);
    if (!result)
    {
      *v0 = v3;
    }
  }

  return result;
}

uint64_t sessionStatsPeriodicStatsResetValue(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955296;
  }

  FigReportingStatsResetValue(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t sessionStatsPeriodicStatsResetValuesForKeys(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (a2 && DerivedStorage)
  {
    v5 = *(DerivedStorage + 16);
    if (CFArrayGetCount(a2) >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        if (ValueAtIndex)
        {
          FigReportingStatsResetValue(v5, *ValueAtIndex);
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(a2));
    }

    return 0;
  }

  return result;
}

uint64_t sessionStatsGetIntValue(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_5(a1);
  result = 0;
  if (v1 && v3)
  {
    v5 = *v3;
    if (v2)
    {
      if (v5)
      {
        if (CFDictionaryGetValue(v5, v2))
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsGetIntValue(v6, v7, v8);
        }

        else
        {
          return 4294955291;
        }
      }

      else
      {
        return 4294955296;
      }
    }

    else
    {
      CFDictionaryApplyFunction(v5, fss_getIntValueDictApplier, context);
      return v10;
    }
  }

  return result;
}

uint64_t sessionStatsGetCFTypeValue(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_5(a1);
  result = 0;
  if (v1 && v3)
  {
    v5 = *v3;
    if (v2)
    {
      if (v5)
      {
        if (CFDictionaryGetValue(v5, v2))
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsGetCFTypeValue(v6, v7, v8);
        }

        else
        {
          return 4294955291;
        }
      }

      else
      {
        return 4294955296;
      }
    }

    else
    {
      CFDictionaryApplyFunction(v5, fss_getCFTypeValueDictApplier, context);
      return v10;
    }
  }

  return result;
}

uint64_t sessionStatsGetCountValue(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_5(a1);
  result = 0;
  if (v1 && v3)
  {
    v5 = *v3;
    if (v2)
    {
      if (v5)
      {
        if (CFDictionaryGetValue(v5, v2))
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsGetCountValue(v6, v7, v8);
        }

        else
        {
          return 4294955291;
        }
      }

      else
      {
        return 4294955296;
      }
    }

    else
    {
      CFDictionaryApplyFunction(v5, fss_getCountValueDictApplier, context);
      return v10;
    }
  }

  return result;
}

uint64_t sessionStatsResetAll(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (a2 && (v4 = *result) != 0)
    {
      Value = CFDictionaryGetValue(v4, a2);
      if (Value)
      {
        FigReportingStatsResetAll(Value);
        return 0;
      }

      else
      {
        return 4294955291;
      }
    }

    else
    {
      return 4294955296;
    }
  }

  return result;
}

uint64_t sessionStatsAggregateStatsResetValue(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955296;
  }

  FigReportingStatsResetValue(*(DerivedStorage + 8), a2);
  return 0;
}

uint64_t sessionStatsCopy(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  result = 4294955296;
  if (a3 && DerivedStorage && v5)
  {
    if (!*v5)
    {
      return 4294955296;
    }

    Value = CFDictionaryGetValue(*v5, a3);
    if (Value)
    {
      v9 = Value;
    }

    else
    {
      result = fss_getOrCreateNewReportingStatsForReportingStatsKey(v5, a3, &v9);
      if (result)
      {
        return result;
      }
    }

    if (*DerivedStorage)
    {
      v8 = CFDictionaryGetValue(*DerivedStorage, a3);
    }

    else
    {
      v8 = 0;
    }

    FigReportingStatsCopy(v9, v8);
    FigReportingStatsCopy(*(v5 + 8), *(DerivedStorage + 8));
    FigReportingStatsCopy(*(v5 + 16), *(DerivedStorage + 16));
    return 0;
  }

  return result;
}

uint64_t sessionStatsAppendValueToArray(uint64_t a1, void *a2, void *a3, const void *a4, unsigned int a5)
{
  theArray = 0;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955296;
  }

  v10 = fss_getOrCreateNewReportingStatsForReportingStatsKey(DerivedStorage, a2, &v21);
  if (v10)
  {
    return v10;
  }

  v11 = v21;
  CFTypeValue = FigReportingStatsGetCFTypeValue(v21, a3, &theArray);
  v13 = theArray;
  if (a5 >= 1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    if (Count >= a5)
    {
      return CFTypeValue;
    }

    v13 = theArray;
  }

  v15 = *MEMORY[0x1E695E480];
  if (v13)
  {
    MutableCopy = CFArrayCreateMutableCopy(v15, 0, v13);
    if (!MutableCopy)
    {
      return CFTypeValue;
    }
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
    if (!MutableCopy)
    {
      return CFTypeValue;
    }
  }

  v17 = MutableCopy;
  CFArrayAppendValue(MutableCopy, a4);
  updated = FigReportingStatsSetCFTypeValue(v11, a3, v17);
  if (!updated)
  {
    updated = fss_updateAggregatedCFTypeStat();
  }

  CFTypeValue = updated;
  CFRelease(v17);
  return CFTypeValue;
}

uint64_t sessionStatsFreezeKeys()
{
  OUTLINED_FUNCTION_471();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (v1 && (v3 = *result) != 0)
    {
      Value = CFDictionaryGetValue(v3, v1);
      if (Value)
      {

        return FigReportingStatsFreezeKeys(Value, v0);
      }

      else
      {
        return 4294955291;
      }
    }

    else
    {
      return 4294955296;
    }
  }

  return result;
}

uint64_t fss_getOrCreateNewReportingStatsForReportingStatsKey(CFDictionaryRef *a1, void *key, void *a3)
{
  value = 0;
  result = 4294955296;
  if (a1 && key)
  {
    if (!*a1)
    {
      return 4294955296;
    }

    v7 = CFDictionaryGetValue(*a1, key);
    if (v7)
    {
LABEL_5:
      result = 0;
      *a3 = v7;
      return result;
    }

    result = FigReportingStatsCreate(&value);
    if (!result)
    {
      if (!value)
      {
        return 4294955294;
      }

      CFDictionarySetValue(*a1, key, value);
      v7 = value;
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t fss_updateAggregatedCFTypeStat()
{
  OUTLINED_FUNCTION_471();
  result = FigReportingStatsSetCFTypeValue(*(v0 + 16), v1, v2);
  if (!result)
  {
    OUTLINED_FUNCTION_0_6();

    return FigReportingStatsSetCFTypeValue(v4, v5, v6);
  }

  return result;
}

uint64_t fss_getIntValueDictApplier(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 && !*(a3 + 16))
  {
    v4 = OUTLINED_FUNCTION_5_4(result, a2);
    result = FigReportingStatsGetIntValue(v4, v5, v6);
    *(a3 + 20) = result;
    if (!result)
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

uint64_t fss_getCFTypeValueDictApplier(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 && !*(a3 + 16))
  {
    v4 = OUTLINED_FUNCTION_5_4(result, a2);
    result = FigReportingStatsGetCFTypeValue(v4, v5, v6);
    *(a3 + 20) = result;
    if (!result)
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

uint64_t fss_getCountValueDictApplier(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 && !*(a3 + 16))
  {
    v4 = OUTLINED_FUNCTION_5_4(result, a2);
    result = FigReportingStatsGetCountValue(v4, v5, v6);
    *(a3 + 20) = result;
    if (!result)
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

void BVCUtilityGetVectorsFromTransform_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_7();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void BVCUtilityGetVectorsFromTransform_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_7();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void BVCUtilityGetVectorsFromTransform_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_7();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void BVCUtilityGetVectorsFromTransform_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_7();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

BOOL BVCUtilityCreateEdgeLists_cold_1(uint64_t a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

void FigEndpointStreamAudioEngineSbufTracerDebugPrint(CMAttachmentBearerRef target)
{
  if (FigEndpointStreamAudioEngineSbufTracerDebugPrint_sSetupLoggingOnce == -1)
  {
    if (!target)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&FigEndpointStreamAudioEngineSbufTracerDebugPrint_sSetupLoggingOnce, &__block_literal_global_1);
    if (!target)
    {
      return;
    }
  }

  v2 = CMGetAttachment(target, @"SbufTracer", 0);
  if (v2)
  {
    v3 = v2;
    CFDictionaryGetValue(v2, @"SbufTracerOption_UniqueID");

    CFDictionaryGetValue(v3, @"SbufTracerOption_SourceID");
  }
}

uint64_t FigTimedMetadataRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    FigSimpleMutexLock();
    if (!*v2)
    {
      *v2 = 1;
      if (*(v2 + 24))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CFRelease(*(v2 + 24));
        *(v2 + 24) = 0;
      }

      if (*(v2 + 16))
      {
        FigRenderPipelineGetFigBaseObject();
        if (v3)
        {
          v4 = v3;
          v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v5)
          {
            v5(v4);
          }
        }

        CFRelease(*(v2 + 16));
        *(v2 + 16) = 0;
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t FigTimedMetadataRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTimedMetadataRenderPipelineInvalidate(a1);
  result = *(DerivedStorage + 8);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 8) = 0;
  }

  return result;
}

void tdrp_ParseID3(const void *a1, CMSampleBufferRef sbuf)
{
  blockBufferOut = 0;
  theDict = 0;
  dataPointerOut = 0;
  outPropertyData = 0;
  memset(&v55, 0, sizeof(v55));
  CMSampleBufferGetOutputPresentationTimeStamp(&v55, sbuf);
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  if (!CMBlockBufferCreateContiguous(0, DataBuffer, 0, 0, 0, 0, 0, &blockBufferOut))
  {
    DataLength = CMBlockBufferGetDataLength(blockBufferOut);
    if (DataLength >= 0xB)
    {
      v6 = DataLength;
      if (!CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut))
      {
        LODWORD(outPropertyData) = 4;
        if (!AudioFormatGetProperty(0x69643373u, 0xAu, dataPointerOut, &outPropertyData, &outPropertyData + 4) && v6 >= HIDWORD(outPropertyData))
        {
          LODWORD(outPropertyData) = 8;
          if (!AudioFormatGetProperty(0x69643364u, HIDWORD(outPropertyData), dataPointerOut, &outPropertyData, &theDict))
          {
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            Count = CFDictionaryGetCount(theDict);
            v9 = malloc_type_calloc(2 * Count, 8uLL, 0xC0040B8AA526DuLL);
            if (v9)
            {
              v10 = v9;
              v11 = &v9[Count];
              CFDictionaryGetKeysAndValues(theDict, v9, v11);
              if (Count >= 1)
              {
                v12 = 0;
                value = 0;
                v50 = *&Count;
                do
                {
                  TypeID = CFDictionaryGetTypeID();
                  if (TypeID == CFGetTypeID(v11[v12]))
                  {
                    v14 = CFDictionaryGetCount(v11[v12]);
                    v15 = malloc_type_calloc(2 * v14, 8uLL, 0xC0040B8AA526DuLL);
                    if (v15)
                    {
                      v16 = v15;
                      v17 = &v15[v14];
                      CFDictionaryGetKeysAndValues(v11[v12], v16, &v16[v14]);
                      if (v14 >= 1)
                      {
                        do
                        {
                          v18 = v10[v12];
                          v19 = *v17;
                          CFGetAllocator(a1);
                          OUTLINED_FUNCTION_1_6(v20, v21, v22, v23, v24, v25, v26, v27, v49, v50, v51, v52, v53, v54, *&v55.value);
                          if (!tdrp_BuildID3Dictionary(v18, v19, v28, v29, v30))
                          {
                            v31 = value;
                            CFArrayAppendValue(Mutable, value);
                            CFRelease(v31);
                          }

                          ++v17;
                          --v14;
                        }

                        while (v14);
                      }

                      free(v16);
                      Count = *&v50;
                    }
                  }

                  else
                  {
                    v32 = v10[v12];
                    v33 = v11[v12];
                    CFGetAllocator(a1);
                    OUTLINED_FUNCTION_1_6(v34, v35, v36, v37, v38, v39, v40, v41, v49, v50, v51, v52, v53, v54, *&v55.value);
                    if (!tdrp_BuildID3Dictionary(v32, v33, v42, v43, v44))
                    {
                      v45 = value;
                      CFArrayAppendValue(Mutable, value);
                      CFRelease(v45);
                    }
                  }

                  ++v12;
                }

                while (v12 != Count);
              }

              free(v10);
              if (CFArrayGetCount(Mutable) >= 1)
              {
                DerivedStorage = CMBaseObjectGetDerivedStorage();
                FigSimpleMutexLock();
                if (*DerivedStorage)
                {
                  FigSimpleMutexUnlock();
                }

                else
                {
                  v48 = *(DerivedStorage + 32);
                  v47 = *(DerivedStorage + 40);
                  FigSimpleMutexUnlock();
                  if (v48 && CFArrayGetCount(Mutable) >= 1)
                  {
                    v48(Mutable, v47);
                  }
                }
              }
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }
        }
      }
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }
}

void FigTimedMetadataRenderPipelineCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTimedMetadataRenderPipelineCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTimedMetadataRenderPipelineCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void tdrp_pipelineCallback_cold_1(const __CFString *a1, CFStringRef *a2, const void *a3, opaqueCMSampleBuffer *a4)
{
  if (CFStringCompare(a1, @"https://developer.apple.com/streaming/emsg-id3", 0) == kCFCompareEqualTo || CFStringCompare(*a2, @"https://aomedia.org/emsg/ID3", 0) == kCFCompareEqualTo)
  {
    tdrp_ParseID3(a3, a4);
  }
}

void tdrp_pipelineCallback_cold_2(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!FigMetadataCreateMetadataItemsFromFigMetadataPropertyListSampleBuffer(a2, &cf))
  {
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      v5 = *(DerivedStorage + 32);
      v4 = *(DerivedStorage + 40);
      FigSimpleMutexUnlock();
      if (v5)
      {
        v5(cf, v4);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

double tdrp_pipelineCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

CFIndex tdrp_pipelineCallback_cold_4(const __CFArray *a1, uint64_t a2, void *a3, CFArrayRef *a4)
{
  result = CFArrayGetCount(a1);
  if (result > 0)
  {
    result = FigCFDictionaryGetCount();
    if (result >= 1)
    {
      v7 = *MEMORY[0x1E695E480];
      if (*a4)
      {
        Count = CFArrayGetCount(*a4);
      }

      else
      {
        Count = 0;
      }

      a3[1] = CFArrayCreateMutable(v7, Count, MEMORY[0x1E695E9C0]);
      FigCFArrayApplyFunction();
      result = a3[1];
      if (result)
      {
        result = CFArrayGetCount(result);
        if (result >= 1)
        {
          v9 = a3[1];
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*DerivedStorage)
          {
            return FigSimpleMutexUnlock();
          }

          else
          {
            v12 = *(DerivedStorage + 32);
            v11 = *(DerivedStorage + 40);
            result = FigSimpleMutexUnlock();
            if (v12)
            {
              return v12(v9, v11);
            }
          }
        }
      }
    }
  }

  return result;
}

void tdrp_BuildID3Dictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
  CFRelease(a1);
}

void tdrp_BuildID3Dictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double dataChannelResource_SetProcessingState(uint64_t a1, uint32_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16AB0)
  {
    OUTLINED_FUNCTION_147();
    v12 = OUTLINED_FUNCTION_126(qword_1EAF16AA8, v5, v6, v7, v8, v9, v10, v11, v30, v32, v34, v36, SBYTE2(v36), SBYTE3(v36), SBYTE4(v36));
    if (os_log_type_enabled(v12, BYTE3(v36)))
    {
      v13 = HIDWORD(v36);
    }

    else
    {
      v13 = HIDWORD(v36) & 0xFFFFFFFE;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_39();
      _os_log_send_and_compose_impl(v14, 0, v39, 128, &dword_1962D5000, v12, BYTE3(v36), "<< FigDataChannelResource >> %s: [%p] called", v30, v32);
    }

    OUTLINED_FUNCTION_0_9();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16AA8, 4294948216, "<< FigDataChannelResource >>", 409, v2);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock(DerivedStorage + 8);
  if (a2 >= 3)
  {
    os_unfair_lock_unlock(DerivedStorage + 8);
  }

  else
  {
    os_unfair_lock_opaque = DerivedStorage[7]._os_unfair_lock_opaque;
    if (dword_1EAF16AB0)
    {
      OUTLINED_FUNCTION_147();
      v24 = OUTLINED_FUNCTION_126(qword_1EAF16AA8, v17, v18, v19, v20, v21, v22, v23, v30, v32, v34, v36, SBYTE2(v36), SBYTE3(v36), SBYTE4(v36));
      if (os_log_type_enabled(v24, HIBYTE(v37)))
      {
        v25 = v38;
      }

      else
      {
        v25 = v38 & 0xFFFFFFFE;
      }

      if (v25)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_6_6();
        OUTLINED_FUNCTION_39();
        _os_log_send_and_compose_impl(v26, 0, v39, 128, &dword_1962D5000, v24, HIBYTE(v37), "<< FigDataChannelResource >> %s: Resource %p changing processing state from %d to %d", v31, v33, v35, v37);
      }

      OUTLINED_FUNCTION_0_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage[7]._os_unfair_lock_opaque = a2;
    os_unfair_lock_unlock(DerivedStorage + 8);
    if (os_unfair_lock_opaque != a2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v29 = Mutable;
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v29);
      }

      else
      {
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16AA8, 4294948215, "<< FigDataChannelResource >>", 242, v2);
      }
    }
  }

  return result;
}

uint64_t dataChannelResource_setResourceStateAndPostNotification(uint64_t a1, uint32_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock(DerivedStorage + 8);
  os_unfair_lock_opaque = DerivedStorage[6]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v7 = -19082;
  }

  else
  {
    v7 = 0;
  }

  if (os_unfair_lock_opaque >= 2)
  {
    v8 = -19082;
  }

  else
  {
    v8 = 0;
  }

  if (a2 == 3)
  {
    v9 = os_unfair_lock_opaque < 2;
  }

  else
  {
    v9 = os_unfair_lock_opaque == 0;
  }

  if (a2 == 3)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (os_unfair_lock_opaque == a2 && dword_1EAF16AB0 != 0)
  {
    OUTLINED_FUNCTION_147();
    v19 = OUTLINED_FUNCTION_126(qword_1EAF16AA8, v12, v13, v14, v15, v16, v17, v18, v60, v63, v66, v69, SBYTE2(v69), SBYTE3(v69), SBYTE4(v69));
    if (OUTLINED_FUNCTION_431_1(v19, v20, v21, v22, v23, v24, v25, v26, v61, v64, v67, v70, v73, v75, v77))
    {
      v27 = v2;
    }

    else
    {
      v27 = v2 & 0xFFFFFFFE;
    }

    if (v27)
    {
      LODWORD(v79) = 136315650;
      OUTLINED_FUNCTION_2_6();
      *(&v80 + 6) = a1;
      HIWORD(v80) = 1024;
      LODWORD(v81) = a2;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_4_6(v28, v29, v30, v31, &dword_1962D5000, v32, v33, "<< FigDataChannelResource >> %s: Resource %p. New state is same as current state %d", v60, v63, v66, v69, v79, v80, *(&v80 + 1), v81, *(&v81 + 1), v82);
      v2 = HIDWORD(v69);
    }

    OUTLINED_FUNCTION_0_9();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v9)
  {
    if (dword_1EAF16AB0)
    {
      OUTLINED_FUNCTION_147();
      v41 = OUTLINED_FUNCTION_126(qword_1EAF16AA8, v34, v35, v36, v37, v38, v39, v40, v60, v63, v66, v69, SBYTE2(v69), SBYTE3(v69), SBYTE4(v69));
      if (OUTLINED_FUNCTION_431_1(v41, v42, v43, v44, v45, v46, v47, v48, v62, v65, v68, v71, v74, v76, v78))
      {
        v49 = v2;
      }

      else
      {
        v49 = v2 & 0xFFFFFFFE;
      }

      if (v49)
      {
        LODWORD(v79) = 136315906;
        OUTLINED_FUNCTION_2_6();
        *(&v80 + 6) = a1;
        OUTLINED_FUNCTION_6_6();
        *(&v81 + 6) = a2;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_4_6(v50, v51, v52, v53, &dword_1962D5000, v54, v55, "<< FigDataChannelResource >> %s: Resource %p changing state from %d to %d", v60, v63, v66, v72, v79, v80, *(&v80 + 1), v81, *(&v81 + 1), v82);
      }

      OUTLINED_FUNCTION_0_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage[6]._os_unfair_lock_opaque = a2;
    os_unfair_lock_unlock(DerivedStorage + 8);
    if (os_unfair_lock_opaque != a2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v57 = Mutable;
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v57);
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v63, v66);
        return v59;
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(DerivedStorage + 8);
  }

  return v10;
}

void FigSessionDataSpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigSessionDataSpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigRenditionReportSpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigRenditionReportSpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigDateRangeSpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigDateRangeSpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigContentKeySpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigContentKeySpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaSegmentSpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaSegmentSpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigMediaSegmentSpecifierAddPartialSegment_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t fbapop_notificationHandler(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = *MEMORY[0x1E6960C70];
  v30 = *(MEMORY[0x1E6960C70] + 16);
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 104))
  {
    OUTLINED_FUNCTION_48_1();
    if (!v10)
    {
      dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
    }

    if ((!_MergedGlobals_16 || FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual()) && FigCFEqual())
    {
      if (CFEqual(a3, @"GoActive"))
      {
        if (!a5)
        {
          return FigSimpleMutexUnlock();
        }

        v11 = CFGetTypeID(a5);
        if (v11 != CFDictionaryGetTypeID())
        {
          return FigSimpleMutexUnlock();
        }

        FigCFDictionaryGetBooleanIfPresent();
        v12 = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_2_7(v12);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_48_1();
      if (!v10)
      {
        dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
      }

      if (_MergedGlobals_16)
      {
        if (CFEqual(a3, @"bufferingPriorityChanged"))
        {
          CFDictionaryGetValue(a5, @"bufferingPriority");
          CMBaseObjectGetDerivedStorage();
          if (FigCFEqual() || FigCFEqual() || FigCFEqual())
          {
            FigCFNumberCreateUInt32();
            FigCFDictionaryApplyBlock();
          }

LABEL_49:
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_48_1();
        if (!v10)
        {
          dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
        }
      }

      if (_MergedGlobals_16)
      {
        if (CFEqual(a3, @"PlayResourceReleased"))
        {
          v16 = CMBaseObjectGetDerivedStorage();
          if (!a4)
          {
            OUTLINED_FUNCTION_429();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, DWORD2(v29), v30);
LABEL_18:
            v13 = *(DerivedStorage + 96);
            v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v14)
            {
              v14(v13);
            }

            return FigSimpleMutexUnlock();
          }

          OUTLINED_FUNCTION_2_7(v16);
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_48_1();
        if (!v10)
        {
          dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
        }
      }

      if (_MergedGlobals_16)
      {
        if (CFEqual(a3, @"OverlapStartTimeReached"))
        {
          v17 = OUTLINED_FUNCTION_618();
          MixEventIDForSubPipeManager = fbapop_getMixEventIDForSubPipeManager(v17, v18);
          fbapop_startSubPipeManagersForMixEventID(a2, MixEventIDForSubPipeManager);
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_48_1();
        if (!v10)
        {
          dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
        }
      }

      if (!_MergedGlobals_16 || !CFEqual(a3, @"OverlapOutroEndTimeProcessed"))
      {
        if (CFEqual(a3, @"OverlapDeadlineReached"))
        {
          v23 = OUTLINED_FUNCTION_618();
          v25 = fbapop_getMixEventIDForSubPipeManager(v23, v24);
          fbapop_requestRetransmitForRPWithMixEventID(a2, v25);
          goto LABEL_18;
        }

        if (CFEqual(a3, @"RequestForRetransmission"))
        {
          if (FigCFDictionaryGetCMTimeIfPresent())
          {
            v26 = OUTLINED_FUNCTION_618();
            fbapop_requestForRetransmissionToRenderPipeline(v26, v27, v28);
          }

          goto LABEL_18;
        }

        goto LABEL_49;
      }

      v20 = OUTLINED_FUNCTION_618();
      fbapop_getMixEventIDForSubPipeManager(v20, v21);
      v22 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_2_7(v22);
LABEL_17:
      FigCFDictionaryApplyBlock();
      goto LABEL_18;
    }
  }

  return FigSimpleMutexUnlock();
}

void fbapop_debugPrintTimeIntervalReachedCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    if (fbapop_debugPrintTimeIntervalReachedCallback_onceToken != -1)
    {
      dispatch_once(&fbapop_debugPrintTimeIntervalReachedCallback_onceToken, &__block_literal_global_180);
    }

    if (fbapop_debugPrintTimeIntervalReachedCallback_sDebugEnabled)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (!*(DerivedStorage + 104))
      {
        v4 = *(DerivedStorage + 96);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v5)
        {
          v5(v4);
        }
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v2);
  }
}

uint64_t fbapop_setRenderPipelineState(uint64_t a1, unsigned int *a2, const void *a3, const __CFBoolean *a4)
{
  v153 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v139 = 0;
  v140 = &v139;
  v141 = 0x2000000000;
  v142 = 0;
  FigSimpleMutexLock();
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_75;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), *a2);
  if (!Value)
  {
LABEL_75:
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_20;
  }

  v12 = Value;
  if (CFEqual(@"RenderPipelineStateAllowsPrebuffering", a3))
  {
    CFBooleanGetTypeID();
    if (a3 != OUTLINED_FUNCTION_56_1())
    {
      goto LABEL_31;
    }

    FigCFDictionaryApplyBlock();
    if (*(v140 + 24))
    {
      goto LABEL_31;
    }

    *(v12 + 44) = *MEMORY[0x1E695E4D0] == a4;
    if (!dword_1EAF16AD0)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_61_2();
    v20 = OUTLINED_FUNCTION_42_2(qword_1EAF16AC8, v13, v14, v15, v16, v17, v18, v19, v115, v118, v121, v124, *v127, v127[2], v127[3], v127[4]);
    OUTLINED_FUNCTION_68_1(v20, v21, v22, v23, v24, v25, v26, v27, v116, v119, v122, v125, v128, v130, typea, v136);
    OUTLINED_FUNCTION_46();
    if (v5)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      fbapop_getRPType(v12);
      v32 = *(v12 + 44) == 0;
      v144 = "fbapop_setRenderPipelineState";
      v143 = 136316418;
      if (v32)
      {
        v33 = 70;
      }

      else
      {
        v33 = 84;
      }

      OUTLINED_FUNCTION_17_2(v33);
      OUTLINED_FUNCTION_10_3(v34, v35, &v152, v36, &dword_1962D5000, v37, v38, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s allowsPrebuffering = %c");
    }

    goto LABEL_30;
  }

  if (!CFEqual(@"RenderPipelineStateIsTimebaseStarter", a3))
  {
    if (CFEqual(@"RenderPipelineStateEndOfTrackReached", a3))
    {
      CFBooleanGetTypeID();
      if (a3 != OUTLINED_FUNCTION_56_1())
      {
        goto LABEL_31;
      }

      *(v12 + 46) = *MEMORY[0x1E695E4D0] == a4;
      SynchronizedToTimebaseRenderPipeline = fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline(a1);
LABEL_20:
      v29 = SynchronizedToTimebaseRenderPipeline;
      goto LABEL_32;
    }

    if (CFEqual(@"RenderPipelineStateSynchronizeToTimebase", a3))
    {
      CFBooleanGetTypeID();
      if (a3 != OUTLINED_FUNCTION_56_1())
      {
        goto LABEL_31;
      }

      if (CFBooleanGetValue(a4) == 1)
      {
        v31 = fbapop_setRenderPipelineState_sCurrentSynchronizeToTimebaseOrderIndex++;
        *(v12 + 104) = v31;
      }

      else
      {
        fbapoprp_clearRenderPipelineSynchronizeToTimebaseContext(v12);
      }

      if (!dword_1EAF16AD0)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_61_2();
      v57 = OUTLINED_FUNCTION_49_1();
      v65 = OUTLINED_FUNCTION_42_2(v57, v58, v59, v60, v61, v62, v63, v64, v115, v118, v121, v124, *v127, v127[2], v127[3], v127[4]);
      os_log_type_enabled(v65, typec);
      OUTLINED_FUNCTION_28();
      if (v4)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v76 = *(v12 + 32);
        RPType = fbapop_getRPType(v12);
        v78 = *(v12 + 104);
        CFBooleanGetValue(a4);
        v143 = 136316674;
        v144 = "fbapop_setRenderPipelineState";
        OUTLINED_FUNCTION_32_3();
        v145 = v76;
        v146 = 2080;
        v147 = RPType;
        v148 = v79;
        v149 = v78;
        v150 = 1024;
        LODWORD(v151) = v80;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_4_7(v81, v82, &v152, v83, &dword_1962D5000, v84, v85, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s synchronizeToTimebaseContext.order = %ld. synchronizeToTimebase order set? %c ");
      }

LABEL_30:
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_31;
    }

    if (CFEqual(@"RenderPipelineStateOverlapOutroStartTimeReached", a3))
    {
      CFBooleanGetTypeID();
      if (a3 == OUTLINED_FUNCTION_56_1())
      {
        v40 = *MEMORY[0x1E695E4D0];
        *(v12 + 47) = *MEMORY[0x1E695E4D0] == a4;
        if (dword_1EAF16AD0)
        {
          OUTLINED_FUNCTION_61_2();
          v41 = OUTLINED_FUNCTION_49_1();
          v49 = OUTLINED_FUNCTION_42_2(v41, v42, v43, v44, v45, v46, v47, v48, v115, v118, v121, v124, *v127, v127[2], v127[3], v127[4]);
          OUTLINED_FUNCTION_68_1(v49, v50, v51, v52, v53, v54, v55, v56, v117, v120, v123, v126, v129, v131, typeb, v137);
          OUTLINED_FUNCTION_46();
          if (v5)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            fbapop_getRPType(v12);
            v32 = *(v12 + 47) == 0;
            v144 = "fbapop_setRenderPipelineState";
            v143 = 136316418;
            if (v32)
            {
              v87 = 70;
            }

            else
            {
              v87 = 84;
            }

            OUTLINED_FUNCTION_17_2(v87);
            OUTLINED_FUNCTION_10_3(v88, v89, &v152, v90, &dword_1962D5000, v91, v92, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s OverlapOutroStartTimeReached = %c");
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0(v93, v94, v95, v96, v97);
        }

        if (*(v12 + 68) && FigCFDictionaryGetBooleanValue() == v40)
        {
          NumberValue = FigCFDictionaryGetNumberValue();
          fbapop_notifySetRateAndAnchorTimeCompletionForMixEventID(a1, NumberValue);
        }
      }

      goto LABEL_31;
    }

    if (!CFEqual(@"RenderPipelineStateTimebase", a3))
    {
      if (CFEqual(@"RenderPipelineStateTimebaseStartOutputTime", a3))
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(a4))
        {
          CMTimeMakeFromDictionary(&v152, a4);
          v29 = 0;
          *(v12 + 80) = v152;
          goto LABEL_32;
        }
      }

      else if (CFEqual(@"RenderPipelineStateTimebaseInitiated", a3))
      {
        v99 = CFBooleanGetTypeID();
        if (v99 == CFGetTypeID(a4))
        {
          v29 = 0;
          *(v12 + 64) = CFBooleanGetValue(a4);
          goto LABEL_32;
        }
      }

      goto LABEL_31;
    }

    if (!a4 || (v66 = CMTimebaseGetTypeID(), v66 == CFGetTypeID(a4)))
    {
      if (dword_1EAF16AD0)
      {
        OUTLINED_FUNCTION_61_2();
        v74 = OUTLINED_FUNCTION_42_2(qword_1EAF16AC8, v67, v68, v69, v70, v71, v72, v73, v115, v118, v121, v124, *v127, v127[2], v127[3], v127[4]);
        if (os_log_type_enabled(v74, type))
        {
          v75 = v138;
        }

        else
        {
          v75 = v138 & 0xFFFFFFFE;
        }

        if (v75)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          v100 = *(v12 + 32);
          fbapop_getRPType(v12);
          v143 = 136316674;
          v144 = "fbapop_setRenderPipelineState";
          OUTLINED_FUNCTION_32_3();
          v145 = v100;
          v146 = 2080;
          v147 = v101;
          v148 = v102;
          v149 = v103;
          v150 = v102;
          v151 = a3;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v104, v105, v106, v107, v108, v74, type, v109);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449(v110, v111, v112, v113, v114);
      }

      SynchronizedToTimebaseRenderPipeline = fbapop_setTimebaseToRenderPipelineState(a1, v12, a4);
      goto LABEL_20;
    }

LABEL_31:
    v29 = 0;
    goto LABEL_32;
  }

  CFBooleanGetTypeID();
  if (a3 != OUTLINED_FUNCTION_56_1())
  {
    goto LABEL_31;
  }

  v28 = CFBooleanGetValue(a4);
  CMBaseObjectGetDerivedStorage();
  if (v28 && *(v12 + 68))
  {
    FigCFDictionaryApplyBlock();
  }

  v29 = 0;
  *(v12 + 45) = v28;
LABEL_32:
  FigSimpleMutexUnlock();
  _Block_object_dispose(&v139, 8);
  return v29;
}

uint64_t fbapop_setRateAndAnchorTime(const void *a1, unsigned int *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v61 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_48;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  v48 = a7;
  v46 = a5;
  v47 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), *a2);
  if (!Value)
  {
LABEL_48:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_46;
  }

  v20 = Value;
  if (dword_1EAF16AD0)
  {
    v21 = a6;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a6 = v21;
  }

  v23 = *(v20 + 104);
  if (a9 == 0.0 || v23 == 0xFFFFFFF || *(v20 + 45) == 0)
  {
    if (v23 != 0xFFFFFFF)
    {
      goto LABEL_35;
    }

    IsConsumerConnected = fbapop_ruleIsConsumerConnected(v20);
    if (a9 <= 0.0 && IsConsumerConnected && !*(v20 + 45))
    {
      goto LABEL_35;
    }
  }

  v51 = *a3;
  v52 = *(a3 + 2);
  v49 = *a4;
  v50 = *(a4 + 2);
  v27 = *(v20 + 68);
  if (qword_1ED4CA428 != -1)
  {
    dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
  }

  OUTLINED_FUNCTION_47_1();
  if (!v28)
  {
    goto LABEL_45;
  }

  if (!v27)
  {
    if (a9 == 0.0 && fbapop_ruleIsOnlyThisConsumerConnected(a1, v20))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v36 = OUTLINED_FUNCTION_3_4();
        if (!v37(v36))
        {
          goto LABEL_35;
        }
      }
    }

    goto LABEL_45;
  }

  if (a9 != 0.0)
  {
    CMBaseObjectGetDerivedStorage();
    *&v53 = 0;
    *(&v53 + 1) = &v53;
    v54 = 0x2000000000;
    LOBYTE(v55) = 0;
    *&v56 = MEMORY[0x1E69E9820];
    *(&v56 + 1) = 0x40000000;
    v57 = __fbapop_ruleIsAnotherRPConnected_and_NotReachedEndOfTrack_and_HasOverlapRangeOutro_block_invoke;
    v58 = &unk_1E7477520;
    v59 = &v53;
    v60 = v20;
    FigCFDictionaryApplyBlock();
    v29 = *(*(&v53 + 1) + 24);
    _Block_object_dispose(&v53, 8);
    if (v29)
    {
      *(v20 + 184) = a9;
      *(v20 + 192) = v51;
      *(v20 + 208) = v52;
      *(v20 + 216) = v49;
      *(v20 + 232) = v50;
      *(v20 + 240) = a6;
      *(v20 + 248) = v48;
      v30 = *(v20 + 176);
      if (!v30)
      {
LABEL_28:
        if (*(*(CMBaseObjectGetVTable() + 16) + 8))
        {
          v34 = OUTLINED_FUNCTION_3_4();
          if (!v35(v34))
          {
            fbapop_connectRenderPipelineToBAO(a1, v20, 0);
          }
        }

        goto LABEL_35;
      }

      v31 = *(v20 + 48);
      v32 = *v30;
      v33 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v33 && !v33(v31, v32))
      {
        fbapoprp_renderPipelineStateReleaseDeferResetContext(v20);
        goto LABEL_28;
      }

LABEL_35:
      v38 = 0;
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  v40 = *(v20 + 64);
  Rate = CMTimebaseGetRate(*(v20 + 56));
  v42 = *(v20 + 47);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    goto LABEL_45;
  }

  v43 = OUTLINED_FUNCTION_3_4();
  if (v44(v43))
  {
    goto LABEL_45;
  }

  if (*(v20 + 68) && FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0] && !v40)
  {
    fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError(a1, v20, -17326);
    goto LABEL_35;
  }

  v38 = 0;
  if (v40)
  {
    if (Rate == 0.0 && !v42)
    {
LABEL_45:
      v56 = *a3;
      v57 = *(a3 + 2);
      v53 = *a4;
      v54 = *(a4 + 2);
      fbapop_callSetRateOnBAO(a1, a2, a9, &v56, &v53, v46, a6, v48, v47);
LABEL_46:
      v38 = v45;
    }
  }

LABEL_36:
  FigSimpleMutexUnlock();
  return v38;
}

uint64_t fbapop_flush(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2(DerivedStorage);
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_21;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = OUTLINED_FUNCTION_57_1(v7);
  if (!v8)
  {
LABEL_21:
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    a2 = v40;
    goto LABEL_20;
  }

  v16 = v8;
  if (dword_1EAF16AD0)
  {
    v17 = OUTLINED_FUNCTION_18_2(v8, v9, v10, v11, v12, v13, v14, v15, v41, v43, v45, v47, SBYTE2(v47), SBYTE3(v47), SHIDWORD(v47));
    OUTLINED_FUNCTION_304(v17, v18, v19, v20, v21, v22, v23, v24, v42, v44, v46, v48, v49, v50, v51);
    OUTLINED_FUNCTION_46();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      if (*(v16 + 68))
      {
        FigCFDictionaryGetBooleanValue();
        OUTLINED_FUNCTION_23_2();
      }

      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_30_3();
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_10_3(v25, v26, v52, v27, &dword_1962D5000, v28, v29, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s (block)");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v30, v31, v32, v33, v34);
  }

  if (fbapop_ruleIsConsumerConnected(v16))
  {
    goto LABEL_14;
  }

  v35 = *(v2 + 24);
  v36 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v36)
  {
    a2 = 4294954514;
    goto LABEL_20;
  }

  a2 = v36(v35);
  if (!a2)
  {
    v37 = *(v2 + 96);
    v38 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v38)
    {
      v38(v37);
    }

LABEL_14:
    a2 = 0;
  }

LABEL_20:
  FigSimpleMutexUnlock();
  return a2;
}

uint64_t fbapop_flushWithinTimeRange(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v360 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2(DerivedStorage);
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_64;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = OUTLINED_FUNCTION_57_1(v9);
  if (!v10)
  {
LABEL_64:
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v31 = v110;
    goto LABEL_19;
  }

  v11 = v10;
  if (dword_1EAF16AD0)
  {
    v343.n128_u32[0] = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_28();
    if (v4)
    {
      if (a1)
      {
        v13 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v13 = "";
      }

      v14 = *(v11 + 32);
      if (*(v11 + 68))
      {
        FigCFDictionaryGetBooleanValue();
      }

      v15 = OUTLINED_FUNCTION_55_2(*(a3 + 16), sampleTimingArray, v240, sampleSizeArray, v254, v261, v270, v277, v284, v291, v300, v306, v315, v323, v330, v333, type.value, *&type.timescale, type.epoch, v339, dictionaryRepresentation, v341, target, v343.n128_i64[0], v343.n128_i64[1], v344, v345, v346, v347, time2.value, *&time2.timescale, time2.epoch, v349, *v350, *&v350[8], *&v350[16], *&v350[24], v351, v352, *a3, *(a3 + 8), cf.epoch);
      OUTLINED_FUNCTION_55_2(*(a3 + 40), sampleTimingArrayd, v241, sampleSizeArrayd, v255, v262, v271, v278, v285, v292, v301, v307, v316, v324, v331, v334, type.value, *&type.timescale, type.epoch, v339, dictionaryRepresentation, v341, target, v343.n128_i64[0], v343.n128_i64[1], v344, v345, v346, v347, time2.value, *&time2.timescale, time2.epoch, v349, *v350, *&v350[8], *&v350[16], *&v350[24], v351, v352, *(a3 + 24), *(a3 + 32), cf.epoch);
      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "fbapop_flushWithinTimeRange";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2082;
      v349 = v13;
      *v350 = 2112;
      *&v350[2] = v14;
      OUTLINED_FUNCTION_59_1();
      *&v350[22] = v15;
      *&v350[30] = v16;
      v351 = v17;
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_4_7(v18, v19, &cf, v20, &dword_1962D5000, v21, v22, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s start: %1.3f dur: %1.3f");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v23, v24, v25, v26, v27);
  }

  cf.value = 0;
  v28 = *(v11 + 24);
  v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = *MEMORY[0x1E695E480];
  if (v29(v28, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf))
  {
    if (cf.value)
    {
      CFRelease(cf.value);
    }

    goto LABEL_18;
  }

  if (cf.value)
  {
    CFRelease(cf.value);
    goto LABEL_23;
  }

  if (!*(v11 + 77))
  {
LABEL_18:
    v31 = 0;
    goto LABEL_19;
  }

LABEL_23:
  v346 = *a3;
  v33 = *(a3 + 12);
  LODWORD(v347) = *(a3 + 8);
  v34 = *(a3 + 16);
  v325 = *(a3 + 24);
  v335 = *(a3 + 40);
  v35 = CMBaseObjectGetDerivedStorage();
  v345 = 0;
  v358 = *MEMORY[0x1E6960C70];
  v359 = *(MEMORY[0x1E6960C70] + 8);
  v343 = *(MEMORY[0x1E6960C98] + 24);
  v344 = *(MEMORY[0x1E6960C98] + 40);
  v341 = 0;
  target = 0;
  dictionaryRepresentation = 0;
  if (qword_1ED4CA428 != -1)
  {
    dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
  }

  OUTLINED_FUNCTION_47_1();
  if (v36)
  {
    HIDWORD(v315) = v33;
    FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
    v38 = v37;
    v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v39)
    {
      goto LABEL_101;
    }

    v40 = v39(v38, @"LastProcessedOPTS", v30, &dictionaryRepresentation);
    if (!v40)
    {
      v41 = CMTimeMakeFromDictionary(&cf, dictionaryRepresentation);
      value = cf.value;
      timescale = cf.timescale;
      if (!*(v11 + 77))
      {
        if ((cf.flags & 1) == 0 || (OUTLINED_FUNCTION_15_2(), cf.flags = HIDWORD(v315), cf.epoch = v34, time2.value = value, time2.timescale = timescale, time2.flags = v87, time2.epoch = v88, v41 = CMTimeCompare(&cf, &time2), (v41 & 0x80000000) == 0))
        {
          if (dword_1EAF16AD0)
          {
            v89 = OUTLINED_FUNCTION_7_3(v41, v42, v43, v44, v45, v46, v47, v48, sampleTimingArray, v240, sampleSizeArray, v254, v261, v270, v277, v284, v291, v300, v34, v315, v325.n128_i64[0], v325.n128_i64[1], v335, type.value, *&type.timescale, type.epoch, v339, SWORD2(v339), SBYTE6(v339), SHIBYTE(v339));
            os_log_type_enabled(v89, HIBYTE(v339));
            OUTLINED_FUNCTION_28();
            if (v38)
            {
              if (a1)
              {
                v90 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v90 = "";
              }

              v91 = *(v11 + 32);
              if (*(v11 + 68))
              {
                BooleanValue = FigCFDictionaryGetBooleanValue();
                v93 = " (Outro)";
                if (BooleanValue == *MEMORY[0x1E695E4D0])
                {
                  v93 = " (Intro)";
                }
              }

              else
              {
                v93 = "";
              }

              v94 = *(v11 + 48);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "fbapop_processFlushWithinTimeRange";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2082;
              v349 = v90;
              *v350 = 2112;
              *&v350[2] = v91;
              *&v350[10] = 2080;
              *&v350[12] = v93;
              *&v350[20] = 2048;
              *&v350[22] = v94;
              OUTLINED_FUNCTION_117();
              OUTLINED_FUNCTION_4_7(v95, v96, &cf, v97, &dword_1962D5000, v98, v99, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s SubPipeManager %p has not processed any data from the flush range - not forwarding FlushWithinTimeRange to BAO");
              OUTLINED_FUNCTION_66_1();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417(v100, v101, v102, v103, v104);
            v34 = v310;
          }

          v105 = *(v11 + 48);
          v106 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v106)
          {
            cf.value = v346;
            cf.timescale = v347;
            cf.flags = HIDWORD(v315);
            v354 = *MEMORY[0x1E6960C88];
            v107 = *(MEMORY[0x1E6960C88] + 16);
            cf.epoch = v34;
            v355 = v107;
            v40 = v106(v105, &cf);
            if (!v40)
            {
LABEL_61:
              v108 = *(v35 + 96);
              v109 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              if (v109)
              {
                v109(v108);
              }

              v31 = 0;
              goto LABEL_102;
            }

            goto LABEL_39;
          }

LABEL_101:
          v31 = 4294954514;
          goto LABEL_102;
        }
      }

      v343 = v325;
      v344 = v335;
      FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
      v50 = v49;
      v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v51)
      {
        goto LABEL_101;
      }

      v40 = v51(v50, @"MixStartMediaTime", v30, &v345);
      if (!v40)
      {
        v52 = CMTimeMakeFromDictionary(&cf, v345);
        v358 = cf.value;
        flags = cf.flags;
        v359 = cf.timescale;
        epoch = cf.epoch;
        v308 = v34;
        if (dword_1EAF16AD0)
        {
          v61 = OUTLINED_FUNCTION_7_3(v52, v53, v54, v55, v56, v57, v58, v59, sampleTimingArray, v240, sampleSizeArray, v254, v261, v270, v277, v284, cf.epoch, v300, v34, v315, v325.n128_i64[0], v325.n128_i64[1], v335, type.value, *&type.timescale, type.epoch, v339, SWORD2(v339), SBYTE6(v339), SHIBYTE(v339));
          value_low = LODWORD(type.value);
          v284 = v61;
          LODWORD(v277) = HIBYTE(v339);
          v63 = os_log_type_enabled(v61, HIBYTE(v339));
          v64 = type.value & 0xFFFFFFFE;
          if (v63)
          {
            v64 = type.value;
          }

          if (v64)
          {
            HIDWORD(v270) = v64;
            if (a1)
            {
              v263 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v263 = "";
            }

            if (OUTLINED_FUNCTION_65_2())
            {
              FigCFDictionaryGetBooleanValue();
            }

            OUTLINED_FUNCTION_55_2(epoch, sampleTimingArray, v240, sampleSizeArray, v254, v263, v270, v277, v284, epoch, v3, v308, v315, v325.n128_i64[0], v325.n128_i64[1], v335, type.value, *&type.timescale, type.epoch, v339, dictionaryRepresentation, v341, target, v343.n128_i64[0], v343.n128_i64[1], v344, v345, v346, v347, time2.value, *&time2.timescale, time2.epoch, v349, *v350, *&v350[8], *&v350[16], *&v350[24], v351, v352, v358, __SPAIR64__(flags, v359), cf.epoch);
            LODWORD(time2.value) = 136316418;
            *(&time2.value + 4) = "fbapop_processFlushWithinTimeRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = a1;
            OUTLINED_FUNCTION_40_1();
            *&v350[2] = value_low;
            OUTLINED_FUNCTION_59_1();
            *&v350[22] = v111;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v112, v113, v114, v115, v116, v284, v117, v118);
            OUTLINED_FUNCTION_66_1();
            v3 = v300;
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v119, v120, v121, v122, v123);
          v34 = v308;
        }

        if (flags)
        {
          time2.value = v358;
          time2.timescale = v359;
          time2.flags = flags;
          time2.epoch = epoch;
          type.value = v346;
          type.timescale = v347;
          type.flags = HIDWORD(v315);
          type.epoch = v34;
          v52 = CMTimeAdd(&cf, &time2, &type);
          v358 = cf.value;
          LODWORD(v284) = cf.flags;
          v359 = cf.timescale;
          v295 = cf.epoch;
        }

        else
        {
          v358 = v346;
          v359 = v347;
          v295 = v34;
          LODWORD(v284) = HIDWORD(v315);
        }

        if (dword_1EAF16AD0)
        {
          v124 = OUTLINED_FUNCTION_7_3(v52, v53, v54, v55, v56, v57, v58, v59, sampleTimingArray, v240, sampleSizeArray, v254, v261, v270, v277, v284, v295, v300, v308, v315, v325.n128_i64[0], v325.n128_i64[1], v335, type.value, *&type.timescale, type.epoch, v339, SWORD2(v339), SBYTE6(v339), SHIBYTE(v339));
          v125 = LODWORD(type.value);
          v277 = v124;
          HIDWORD(v270) = HIBYTE(v339);
          os_log_type_enabled(v124, HIBYTE(v339));
          OUTLINED_FUNCTION_28();
          if (flags)
          {
            if (a1)
            {
              v265 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v265 = "";
            }

            if (OUTLINED_FUNCTION_65_2())
            {
              if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
              {
                v126 = " (Intro)";
              }

              else
              {
                v126 = " (Outro)";
              }
            }

            else
            {
              v126 = "";
            }

            OUTLINED_FUNCTION_16_3();
            cf.flags = HIDWORD(v315);
            v127 = OUTLINED_FUNCTION_55_2(v308, sampleTimingArray, v240, sampleSizeArray, v254, v265, v270, v277, v284, v295, v300, v308, v315, v325.n128_i64[0], v325.n128_i64[1], v335, type.value, *&type.timescale, type.epoch, v339, dictionaryRepresentation, v341, target, v343.n128_i64[0], v343.n128_i64[1], v344, v345, v346, v347, time2.value, *&time2.timescale, time2.epoch, v349, *v350, *&v350[8], *&v350[16], *&v350[24], v351, v352, cf.value, *&cf.timescale, cf.epoch);
            OUTLINED_FUNCTION_14_1();
            OUTLINED_FUNCTION_55_2(v296, sampleTimingArraye, v243, sampleSizeArraye, v257, v266, v273, v280, v287, v296, v303, v311, v318, v328, v332, v336, type.value, *&type.timescale, type.epoch, v339, dictionaryRepresentation, v341, target, v343.n128_i64[0], v343.n128_i64[1], v344, v345, v346, v347, time2.value, *&time2.timescale, time2.epoch, v349, *v350, *&v350[8], *&v350[16], *&v350[24], v351, v352, cf.value, *&cf.timescale, cf.epoch);
            LODWORD(time2.value) = 136316674;
            *(&time2.value + 4) = "fbapop_processFlushWithinTimeRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = a1;
            OUTLINED_FUNCTION_40_1();
            *(v128 + 34) = v125;
            *&v350[10] = 2080;
            *(v128 + 44) = v126;
            *&v350[20] = v129;
            *&v350[22] = v127;
            *&v350[30] = v129;
            v351 = v130;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v131, v132, v133, v134, v135, v277, HIDWORD(v270), v136);
            OUTLINED_FUNCTION_66_1();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v137, v138, v139, v140, v141);
          v34 = v308;
        }

        v142 = *(v11 + 24);
        v143 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v143)
        {
          goto LABEL_101;
        }

        v40 = v143(v142, @"DownstreamConsumer", v30, &v341);
        if (!v40)
        {
          if (v341 || !*(v11 + 77))
          {
            OUTLINED_FUNCTION_14_1();
            v40 = OUTLINED_FUNCTION_45_2(v144, v343, v145, v146, v147, v148, v149, v150, v151, sampleTimingArray, v240, sampleSizeArray, v254, v261, v270, v277, v284, v295, v300, v308, v315, v325.n128_i64[0], v325.n128_i64[1], v335, type.value, *&type.timescale, type.epoch, v339, dictionaryRepresentation, v341, target, v343.n128_i64[0], v343.n128_i64[1], v344, v345, v346, v347, time2.value, *&time2.timescale, time2.epoch, v349, *v350, *&v350[8], *&v350[16], *&v350[24], v351, v352, *&cf.value, cf.epoch, v354, *(&v354 + 1), v355);
            if (!v40)
            {
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_41_1(v152, v153, v154, v155, v156, v157, v158, v159, v160, sampleTimingArrayb, v244, sampleSizeArrayb, v258, v267, v274, v281, v288, v297, v304, v312, v319, v161);
              FigBufferedAirPlayOverlapLinearTimeMapperRecordFlushWithinTimeRange(v162, v11, &cf);
              v163 = v11;
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_41_1(v164, v165, v166, v167, v168, v169, v170, v171, v172, sampleTimingArrayf, v245, sampleSizeArrayf, v259, v268, v275, v282, v289, v298, v305, v313, v320, v173);
              v40 = FigBufferedAirPlaySubPipeManagerFlushFromTime(v174, &cf);
              if (!v40)
              {
LABEL_92:
                *(v163 + 77) = 0;
                if (!*(v163 + 68))
                {
                  goto LABEL_61;
                }

                v176 = v163;
                if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
                {
                  NumberValue = FigCFDictionaryGetNumberValue();
                  RenderPipelineStateForMixEventIDWithOverlapRangeType = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(a1, NumberValue, @"Outro");
                  if (!RenderPipelineStateForMixEventIDWithOverlapRangeType)
                  {
                    goto LABEL_61;
                  }

                  v186 = RenderPipelineStateForMixEventIDWithOverlapRangeType;
                  if (!dword_1EAF16AD0)
                  {
                    goto LABEL_131;
                  }

                  v207 = OUTLINED_FUNCTION_7_3(RenderPipelineStateForMixEventIDWithOverlapRangeType, v200, v201, v202, v203, v204, v205, v206, sampleTimingArrayc, v246, sampleSizeArrayc, v260, v269, v276, v283, v290, v299, v3, v314, v321, v329, *(&v329 + 1), v337, type.value, *&type.timescale, type.epoch, v339, SWORD2(v339), SBYTE6(v339), SHIBYTE(v339));
                  v208 = type.value;
                  v209 = HIBYTE(v339);
                  v210 = os_log_type_enabled(v207, HIBYTE(v339));
                  v211 = v208 & 0xFFFFFFFE;
                  if (v210)
                  {
                    v211 = v208;
                  }

                  if (v211)
                  {
                    if (a1)
                    {
                      CMBaseObjectGetDerivedStorage();
                    }

                    v212 = *(v176 + 32);
                    if (*(v176 + 68))
                    {
                      FigCFDictionaryGetBooleanValue();
                    }

                    LODWORD(time2.value) = 136316418;
                    OUTLINED_FUNCTION_28_2();
                    *(v213 + 34) = v212;
                    *&v350[10] = 2080;
                    *(v213 + 44) = v214;
                    *&v350[20] = v215;
                    *(v213 + 54) = v216;
                    OUTLINED_FUNCTION_117();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl(v217, v218, v219, v220, v221, v207, v209, v222);
                  }
                }

                else
                {
                  if (!*(v163 + 68))
                  {
                    goto LABEL_61;
                  }

                  v175 = *MEMORY[0x1E695E4D0];
                  if (FigCFDictionaryGetBooleanValue() != v175)
                  {
                    goto LABEL_61;
                  }

                  v177 = FigCFDictionaryGetNumberValue();
                  v178 = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(a1, v177, @"Intro");
                  if (!v178)
                  {
                    goto LABEL_61;
                  }

                  v186 = v178;
                  if (!dword_1EAF16AD0)
                  {
LABEL_131:
                    v40 = FigBufferedAirPlaySubPipeManagerRequestRetransmitAtDeadline(*(v186 + 48), 0);
                    if (!v40)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_39;
                  }

                  v187 = OUTLINED_FUNCTION_7_3(v178, v179, v180, v181, v182, v183, v184, v185, sampleTimingArrayc, v246, sampleSizeArrayc, v260, v269, v276, v283, v290, v299, v3, v314, v321, v329, *(&v329 + 1), v337, type.value, *&type.timescale, type.epoch, v339, SWORD2(v339), SBYTE6(v339), SHIBYTE(v339));
                  v188 = LODWORD(type.value);
                  v322 = HIBYTE(v339);
                  os_log_type_enabled(v187, HIBYTE(v339));
                  OUTLINED_FUNCTION_28();
                  if (v142)
                  {
                    if (a1)
                    {
                      CMBaseObjectGetDerivedStorage();
                    }

                    if (OUTLINED_FUNCTION_65_2())
                    {
                      FigCFDictionaryGetBooleanValue();
                    }

                    LODWORD(time2.value) = 136316418;
                    OUTLINED_FUNCTION_28_2();
                    *(v223 + 34) = v188;
                    *&v350[10] = 2080;
                    *(v223 + 44) = v224;
                    *&v350[20] = v225;
                    *(v223 + 54) = v226;
                    OUTLINED_FUNCTION_117();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl(v227, v228, v229, v230, v231, v187, v322, v232);
                    OUTLINED_FUNCTION_66_1();
                  }
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                goto LABEL_131;
              }
            }
          }

          else
          {
            v163 = v11;
            OUTLINED_FUNCTION_14_1();
            v40 = OUTLINED_FUNCTION_45_2(v189, v343, v190, v191, v192, v193, v194, v195, v196, sampleTimingArray, v240, sampleSizeArray, v254, v261, v270, v277, v284, v295, v300, v308, v315, v325.n128_i64[0], v325.n128_i64[1], v335, type.value, *&type.timescale, type.epoch, v339, dictionaryRepresentation, v341, target, v343.n128_i64[0], v343.n128_i64[1], v344, v345, v346, v347, time2.value, *&time2.timescale, time2.epoch, v349, *v350, *&v350[8], *&v350[16], *&v350[24], v351, v352, *&cf.value, cf.epoch, v354, *(&v354 + 1), v355);
            if (!v40)
            {
              OUTLINED_FUNCTION_16_3();
              cf.flags = HIDWORD(v321);
              v354 = v329;
              cf.epoch = v34;
              v355 = v337;
              FigBufferedAirPlayOverlapLinearTimeMapperRecordFlushWithinTimeRange(v197, v11, &cf);
              v40 = CMSampleBufferCreate(v30, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
              if (!v40)
              {
                CMSetAttachment(target, @"FlushRangeEnd", *MEMORY[0x1E695E4D0], 1u);
                v40 = FigSampleBufferConsumerSendSampleBuffer(*(v35 + 88), target);
                if (!v40)
                {
                  FigSampleBufferConsumerFlush(*(v11 + 24));
                  goto LABEL_92;
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
    if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_15_2();
    cf.flags = v33;
    v73 = OUTLINED_FUNCTION_36_2(v65, v66, v67, v68, v69, v70, v71, v72, sampleTimingArray, v240, sampleSizeArray, v254, v261, v270, v277, v284, v291, v300, v306, v315, *&v325);
    v40 = v74(v73);
    if (!v40)
    {
      if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        goto LABEL_101;
      }

      OUTLINED_FUNCTION_15_2();
      cf.flags = v33;
      v83 = OUTLINED_FUNCTION_36_2(v75, v76, v77, v78, v79, v80, v81, v82, sampleTimingArraya, v242, sampleSizeArraya, v256, v264, v272, v279, v286, v294, v302, v309, v317, v326);
      v40 = v84(v83);
      if (!v40)
      {
        v85 = *(v35 + 96);
        if (*(*(CMBaseObjectGetVTable() + 16) + 32))
        {
          OUTLINED_FUNCTION_15_2();
          cf.flags = v33;
          v354 = v327;
          cf.epoch = v34;
          v355 = v335;
          v86(v85, v11, &cf);
        }

        goto LABEL_61;
      }
    }
  }

LABEL_39:
  v31 = v40;
LABEL_102:
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (v341)
  {
    CFRelease(v341);
  }

  if (v345)
  {
    CFRelease(v345);
  }

  if (target)
  {
    CFRelease(target);
  }

LABEL_19:
  FigSimpleMutexUnlock();
  return v31;
}

uint64_t fbapop_reset(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2(DerivedStorage);
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_27;
  }

  if (!a2)
  {
LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  if (!OUTLINED_FUNCTION_70_2(v8))
  {
LABEL_27:
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v20 = v22;
    goto LABEL_25;
  }

  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryApplyBlock();
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = OUTLINED_FUNCTION_70_2(v9);
  if (qword_1ED4CA428 != -1)
  {
    dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
  }

  OUTLINED_FUNCTION_47_1();
  v11 = MEMORY[0x1E695E480];
  if (!v12)
  {
    goto LABEL_20;
  }

  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(v10 + 68))
  {
    goto LABEL_20;
  }

  v13 = v10[3];
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14(v13, @"DownstreamConsumer", *v11, &cf);
  v16 = 0;
  v17 = cf;
  if (!v15 && cf)
  {
    if (*(v10 + 68))
    {
      if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0] || *(v10 + 68) && (v18 = *MEMORY[0x1E695E4D0], FigCFDictionaryGetBooleanValue() == v18))
      {
        v16 = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v16 = 0;
LABEL_16:
    v17 = cf;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!fbapop_ruleIsOnlyThisConsumerConnected(a1, v10))
  {
LABEL_23:
    fbapop_renderPipelineHandleReset(a1, v10, a4);
    goto LABEL_24;
  }

  fbapoprp_renderPipelineStateReleaseDeferResetContext(v10);
  v19 = MEMORY[0x19A8CC720](*v11, 1, 0x100004077774924, 0);
  v10[22] = v19;
  if (v19)
  {
    v20 = 0;
    *v19 = a4;
  }

  else
  {
    v20 = 4294954510;
  }

LABEL_25:
  FigSimpleMutexUnlock();
  return v20;
}

uint64_t fbapop_stopForReconfiguration(uint64_t a1, unsigned int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2(DerivedStorage);
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_23;
  }

  if (!a2)
  {
    v32 = 0;
    goto LABEL_20;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  v7 = OUTLINED_FUNCTION_70_2(v6);
  if (v7)
  {
    if (dword_1EAF16AD0)
    {
      v15 = v7;
      v16 = OUTLINED_FUNCTION_18_2(v7, v8, v9, v10, v11, v12, v13, v14, v34, v35, v36, v37, SBYTE2(v37), SBYTE3(v37), SHIDWORD(v37));
      if (os_log_type_enabled(v16, type))
      {
        v17 = v39;
      }

      else
      {
        v17 = v39 & 0xFFFFFFFE;
      }

      if (v17)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (*(v15 + 68))
        {
          FigCFDictionaryGetBooleanValue();
          OUTLINED_FUNCTION_23_2();
        }

        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_30_3();
        OUTLINED_FUNCTION_1_8();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v18, v19, v20, v21, v22, v16, type, v23);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v24, v25, v26, v27, v28);
    }

    v29 = *(v2 + 24);
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v30)
    {
      v32 = 4294954514;
      goto LABEL_20;
    }

    v31 = v30(v29);
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v32 = v31;
LABEL_20:
  FigSimpleMutexUnlock();
  return v32;
}

uint64_t fbapop_prepareForSynchronizeToTimebase(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, const void *a5, double a6)
{
  v75 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2(DerivedStorage);
  if (!a2)
  {
    goto LABEL_27;
  }

  v14 = CMBaseObjectGetDerivedStorage();
  if (!OUTLINED_FUNCTION_57_1(v14))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16AC8, 4294947885, "<<<< FigBufferedAirPlayOutputProxy >>>>", 3429, v6);
    goto LABEL_29;
  }

  v71 = v6;
  v15 = CMBaseObjectGetDerivedStorage();
  v16 = OUTLINED_FUNCTION_57_1(v15);
  v24 = v16;
  if (dword_1EAF16AD0)
  {
    v25 = OUTLINED_FUNCTION_46_1(v16, v17, v18, v19, v20, v21, v22, v23, v67, v68, v69, v70, v6, v72, SBYTE2(v72), SBYTE3(v72), SHIDWORD(v72));
    if (os_log_type_enabled(v25, BYTE3(v72)))
    {
      v26 = HIDWORD(v72);
    }

    else
    {
      v26 = HIDWORD(v72) & 0xFFFFFFFE;
    }

    if (v26)
    {
      v70 = a3;
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      fbapop_getRPType(v24);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v27, v28, v29, v30, v31, v25, BYTE3(v72), v32);
    }

    OUTLINED_FUNCTION_49_1();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v33, v34, v35, v36, v37);
  }

  if (!a5)
  {
    OUTLINED_FUNCTION_33_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, 4294947886, "<<<< FigBufferedAirPlayOutputProxy >>>>", 3435, v62);
    goto LABEL_29;
  }

  if (!v24)
  {
    OUTLINED_FUNCTION_33_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, 4294947878, "<<<< FigBufferedAirPlayOutputProxy >>>>", 3436, v64);
    goto LABEL_29;
  }

  if (*(v24 + 104) == 0xFFFFFFFLL)
  {
    OUTLINED_FUNCTION_33_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, 4294947884, "<<<< FigBufferedAirPlayOutputProxy >>>>", 3440, v66);
    goto LABEL_29;
  }

  fbapop_getConnectedRenderPipelineID(a1);
  v38 = FigCFEqual();
  if (!v38)
  {
    *(v24 + 112) = a6;
    v58 = *a3;
    *(v24 + 136) = *(a3 + 2);
    *(v24 + 120) = v58;
    v59 = *a4;
    *(v24 + 160) = *(a4 + 2);
    *(v24 + 144) = v59;
    *(v24 + 168) = CFRetain(a5);
    SynchronizedToTimebaseRenderPipeline = fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline(a1);
LABEL_29:
    a2 = SynchronizedToTimebaseRenderPipeline;
    goto LABEL_27;
  }

  if (dword_1EAF16AD0)
  {
    v46 = OUTLINED_FUNCTION_46_1(v38, v39, v40, v41, v42, v43, v44, v45, v67, v68, v69, v70, v71, v72, SBYTE2(v72), SBYTE3(v72), SHIDWORD(v72));
    os_log_type_enabled(v46, type);
    OUTLINED_FUNCTION_46();
    if (a4)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      if (OUTLINED_FUNCTION_65_2())
      {
        FigCFDictionaryGetBooleanValue();
        OUTLINED_FUNCTION_23_2();
      }

      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_10_3(v47, v48, v74, v49, &dword_1962D5000, v50, v51, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s PrepareForSynchronizeToTimebase but RP already connected.  Clearing synchronizeToTimebaseContext");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v52, v53, v54, v55, v56);
  }

  fbapoprp_clearRenderPipelineSynchronizeToTimebaseContext(v24);
  a2 = 0;
LABEL_27:
  FigSimpleMutexUnlock();
  return a2;
}

BOOL fbapop_tokenIsValid(uint64_t a1, unsigned int *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFDictionaryGetValue(*(DerivedStorage + 32), *a2) != 0;
}

uint64_t fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2000000000;
  v27[3] = 0xFFFFFFFLL;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 0x40000000;
  v20 = __fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline_block_invoke;
  v21 = &unk_1E74773B0;
  v22 = &v23;
  FigCFDictionaryApplyBlock();
  if (!*(v24 + 24) && (v12 = MEMORY[0x1E69E9820], v13 = 0x40000000, v14 = __fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline_block_invoke_2, v15 = &unk_1E74773D8, v16 = v27, v17 = &v28, FigCFDictionaryApplyBlock(), (v2 = v29[3]) != 0))
  {
    v5 = *(v2 + 112);
    v10 = *(v2 + 120);
    v11 = *(v2 + 136);
    v8 = *(v2 + 144);
    v6 = *(v2 + 168);
    v9 = *(v2 + 160);
    fbapop_callSetRateOnBAO(a1, v2 + 40, v5, &v10, &v8, v6, 0, 0, 0);
    v3 = v7;
    fbapoprp_clearRenderPipelineSynchronizeToTimebaseContext(v29[3]);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v28, 8);
  return v3;
}

void __fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(OUTLINED_FUNCTION_52_1(a1, a2, a3) + 8) + 48);
  if (v6)
  {
    v6(v5, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    v7 = cf;
    if (cf)
    {
      if (!*(v4 + 46))
      {
        *(*(*(v3 + 32) + 8) + 24) = 1;
      }

      CFRelease(v7);
    }
  }
}

double fbapop_callSetRateOnBAO(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a9;
  v65[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v18 = DerivedStorage;
    v54 = a6;
    v56 = a7;
    v19 = CMBaseObjectGetDerivedStorage();
    v20 = OUTLINED_FUNCTION_57_1(v19);
    if (v20)
    {
      v21 = v20;
      if (dword_1EAF16AD0)
      {
        LOBYTE(type) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fbapop_renderPipelineHandleDeferResetIfNeeded(a1, v21);
      if (*(v21 + 46))
      {
        v23 = 0;
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
        v61 = 0;
        v62 = &v61;
        v63 = 0x2000000000;
        LOBYTE(v64) = 0;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 0x40000000;
        v65[2] = __fbapop_ruleIsAnotherRPConnected_and_HasSameMixEventID_block_invoke;
        v65[3] = &unk_1E7477488;
        v65[4] = &v61;
        v65[5] = v21;
        FigCFDictionaryApplyBlock();
        v49 = *(v62 + 24);
        _Block_object_dispose(&v61, 8);
        if (v49)
        {
          fbapop_connectRenderPipelineToBAO(a1, v21, 0);
        }

        else if (fbapop_connectRenderPipelineToBAO(a1, v21, 1))
        {
          return result;
        }

        fbapoprp_renderPipelineStateReleaseDeferResetContext(v21);
        v23 = 1;
      }

      if (qword_1ED4CA428 != -1)
      {
        dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
      }

      OUTLINED_FUNCTION_47_1();
      if (!v24 || (v25 = *(v21 + 48), v26 = OUTLINED_FUNCTION_35_2(), v35 = *(v26 + 16), v34 = v26 + 16, *(v35 + 8)) && (OUTLINED_FUNCTION_34_2(v34, v27, v28, v29, v30, v31, v32, v33, v51, v52, v53, v54, a7, v58, type), !v36(v25, v65, &v61, a3)))
      {
        v37 = *(v18 + 24);
        v38 = OUTLINED_FUNCTION_35_2();
        v47 = *(v38 + 16);
        v46 = v38 + 16;
        if (*(v47 + 8))
        {
          OUTLINED_FUNCTION_34_2(v46, v39, v40, v41, v42, v43, v44, v45, v51, v52, v53, v54, v56, v58, type);
          v48(v37, v23, v65, &v61, v55, v57, a8, v59, a3);
        }
      }
    }

    else
    {
      v50 = qword_1EAF16AC8;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 4294947885, "<<<< FigBufferedAirPlayOutputProxy >>>>", 2677, v9);
    }
  }

  return result;
}

uint64_t fbapop_connectRenderPipelineToBAO(uint64_t a1, void *a2, int a3)
{
  v108[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v92 = 0;
  cf = 0;
  v7 = a2[3];
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = v8(v7, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
  v11 = cf;
  if (!v10 && !cf)
  {
    if (a3)
    {
      fbapop_disconnectAllRPConsumer(a1);
    }

    if (qword_1ED4CA428 != -1)
    {
      dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
    }

    OUTLINED_FUNCTION_47_1();
    if (v12)
    {
      if (!a2[6])
      {
        OUTLINED_FUNCTION_147();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v86)))
        {
          v70 = HIDWORD(v86);
        }

        else
        {
          v70 = HIDWORD(v86) & 0xFFFFFFFE;
        }

        if (v70)
        {
          if (a1)
          {
            v71 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v71 = "";
          }

          v72 = a2[4];
          RPType = fbapop_getRPType(a2);
          v94 = 136316162;
          v95 = "fbapop_connectRenderPipelineToBAO";
          v96 = 2048;
          v97 = a1;
          v98 = 2082;
          v99 = v71;
          v100 = 2112;
          v101 = v72;
          v102 = 2080;
          v103 = RPType;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v74, v75, v76, v77, v78, os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v86), v79);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v10 = 4294947886;
        goto LABEL_29;
      }

      FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
      v14 = v13;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v16 = v15(v14, @"SourceSampleBufferConsumer", v9, &v92);
        if (!v16)
        {
          if (dword_1EAF16AD0)
          {
            v24 = OUTLINED_FUNCTION_18_2(v16, v17, v18, v19, v20, v21, v22, v23, v80, v82, v84, v86, SBYTE2(v86), SBYTE3(v86), SHIDWORD(v86));
            OUTLINED_FUNCTION_304(v24, v25, v26, v27, v28, v29, v30, v31, v81, v83, v85, v87, v88, type, v91);
            OUTLINED_FUNCTION_46();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0(v60, v61, v62, v63, v64);
          }

          v65 = a2[3];
          v66 = v92;
          v67 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v67)
          {
            v10 = v67(v65, @"DownstreamConsumer", v66);
            if (!v10)
            {
              v108[0] = 0;
              FigCFDictionaryGetValueIfPresent();
              fbapop_startSubPipeManagersForMixEventID(a1, v108[0]);
            }

            goto LABEL_29;
          }

          goto LABEL_28;
        }

LABEL_24:
        v10 = v16;
LABEL_29:
        v11 = cf;
        goto LABEL_30;
      }
    }

    else
    {
      if (dword_1EAF16AD0)
      {
        OUTLINED_FUNCTION_147();
        v32 = OUTLINED_FUNCTION_49_1();
        v40 = OUTLINED_FUNCTION_126(v32, v33, v34, v35, v36, v37, v38, v39, v80, v82, v84, v86, SBYTE2(v86), SBYTE3(v86), SBYTE4(v86));
        os_log_type_enabled(v40, typea);
        OUTLINED_FUNCTION_28();
        if (a3)
        {
          if (a1)
          {
            v41 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v41 = "";
          }

          v42 = a2[4];
          fbapop_getRPType(a2);
          OUTLINED_FUNCTION_37_1();
          v99 = v41;
          v100 = 2112;
          v101 = v42;
          v102 = 2080;
          v103 = v43;
          v104 = v44;
          v105 = v45;
          v106 = v44;
          v107 = v46;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_7(v47, v48, v108, v49, &dword_1962D5000, v50, v51, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s CONNECTING RP_SBC[%p] => BAO_SBC[%p]");
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v52, v53, v54, v55, v56);
      }

      v57 = a2[3];
      v58 = *(DerivedStorage + 40);
      v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v59)
      {
        v16 = v59(v57, @"DownstreamConsumer", v58);
        goto LABEL_24;
      }
    }

LABEL_28:
    v10 = 4294954514;
    goto LABEL_29;
  }

LABEL_30:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  return v10;
}

void fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError(const void *a1, void *a2, int a3)
{
  v53 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  v33 = &v32;
  v34 = 0x6000000000;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  if (a2)
  {
    if (CFDictionaryContainsValue(*(DerivedStorage + 32), a2))
    {
      if (a2[30])
      {
        memcpy(v33 + 3, a2 + 23, 0x48uLL);
        fbapoprp_clearRenderPipelineSetRateAndAnchorTimeContext(a2);
        if (v33[10])
        {
          if (dword_1EAF16AD0)
          {
            v31 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_28();
            if (v3)
            {
              if (a1)
              {
                v13 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v13 = "";
              }

              v14 = a2[4];
              v15 = *(a2 + 68);
              if (v15)
              {
                FigCFDictionaryGetBooleanValue();
                OUTLINED_FUNCTION_23_2();
              }

              else
              {
                v16 = "";
              }

              v40 = 136316418;
              v41 = "fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError";
              v42 = 2048;
              v43 = a1;
              v44 = 2082;
              v45 = v13;
              v46 = 2112;
              v47 = v14;
              v48 = 2080;
              v49 = v16;
              v50 = 1024;
              v51 = a3;
              OUTLINED_FUNCTION_4_7(v15, v9, v52, v10, &dword_1962D5000, v11, v12, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s calling SetRateAndAnchorTime completion callback with error=%d");
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417(v17, v18, v19, v20, v21);
          }

          if (a1)
          {
            CFRetain(a1);
          }

          OUTLINED_FUNCTION_25_1();
          v24 = 0x40000000;
          v25 = __fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError_block_invoke;
          v26 = &unk_1E74774F8;
          v29 = a3;
          v27 = &v32;
          v28 = a1;
          dispatch_async(v22, block);
        }
      }
    }
  }

  _Block_object_dispose(&v32, 8);
}

void __fbapop_deRegisterRenderPipeline_block_invoke(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFTypeRef cf, int a16, int a17, __int128 a18, const char *a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  OUTLINED_FUNCTION_415();
  a50 = v51;
  a51 = v52;
  v54 = v53;
  a39 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!CFEqual(*(v55 + 32), v53))
  {
    FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
    v57 = v56;
    v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v58 && !v58(v57, @"ProcessingState", *MEMORY[0x1E695E480], &cf) && FigCFEqual())
    {
      if (dword_1EAF16AD0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v60 = v54[6];
      v61 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v61)
      {
        v61(v60);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  OUTLINED_FUNCTION_355();
}

void __fbapop_setGoActiveOnConnectedRP_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(OUTLINED_FUNCTION_52_1(a1, a2, a3) + 8) + 48);
  if (v5)
  {
    v5(v4, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      v6 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v6)
      {
        v7 = *(v3 + 40);
        CMBaseObjectGetDerivedStorage();
        CFRetain(v6);
        OUTLINED_FUNCTION_25_1();
        v11 = 0x40000000;
        v12 = __fbapop_setGoActiveOnRPAsync_block_invoke;
        v13 = &__block_descriptor_tmp_167;
        v14 = v6;
        v15 = v7;
        dispatch_async(v8, block);
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
  }
}

uint64_t fbapop_deRegisterRenderPipeline_cold_3(uint64_t *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;

  return FigSimpleMutexUnlock();
}

double FigContentKeySessionRemoteCreateSessionForID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a2 && a3)
  {
    *a3 = 0;
    if (!fcks_remote_ensureClientEstablished())
    {
      FigContentKeySessionGetClassID();
      v4 = CMDerivedObjectCreate();
      v5 = 0;
      if (!v4)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, v8);
        v5 = cf;
      }

      if (v5)
      {
        CFRelease(v5);
      }
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

uint64_t FigContentKeySessionRemoteCreateSession(uint64_t a1, const __CFDictionary *a2, uint64_t a3, NSObject *a4, uint64_t a5, void *a6)
{
  xdict = 0;
  v25 = 0;
  cf = 0;
  v23 = 0;
  if (!a6)
  {
    goto LABEL_19;
  }

  *a6 = 0;
  v12 = fcks_remote_ensureClientEstablished();
  if (v12)
  {
    goto LABEL_20;
  }

  v12 = FigXPCCreateBasicMessage();
  if (v12)
  {
    goto LABEL_20;
  }

  if (a2)
  {
    if (CFDictionaryGetValue(a2, *MEMORY[0x1E6960F18]))
    {
      v12 = FigSandboxRegisterURLWithProcessAndCopyRegistration();
      if (v12)
      {
        goto LABEL_20;
      }
    }
  }

  v12 = FigXPCMessageSetCFDictionary();
  if (v12)
  {
    goto LABEL_20;
  }

  v12 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v12)
  {
    goto LABEL_20;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_20:
    v15 = v12;
    goto LABEL_16;
  }

  FigContentKeySessionRemoteCreateSessionForID(a1, uint64, &v23);
  v15 = v14;
  v16 = v23;
  if (!v15)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!a3 || !a4 || !a5 || (dispatch_retain(a4), DerivedStorage[2] = a4, __copy_assignment_8_8_t0w4_pa0_52572_8_pa0_57120_16_pa0_14239_24_pa0_30190_32_pa0_41757_40((DerivedStorage + 3), a5), v18 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (DerivedStorage[9] = v18) != 0))
    {
      v15 = 0;
      v19 = v23;
      DerivedStorage[10] = 0;
      cf = 0;
      v23 = 0;
      *a6 = v19;
      goto LABEL_16;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v23, xdict);
    v15 = v21;
    v16 = v23;
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_16:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t fcks_remote_handleServerMessage(uint64_t a1, void *a2)
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

uint64_t fcks_remote_invalidate(uint64_t a1)
{
  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ObjectID = fcks_remote_getObjectID(a1, &v6);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v4 = ObjectID;
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage();
    if (!v4)
    {
      *DerivedStorage = 1;
    }
  }

  FigXPCRelease();
  return v4;
}

uint64_t fcks_remote_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 1) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigXPCRelease();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(DerivedStorage + 72);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 72) = 0;
  }

  v4 = *(DerivedStorage + 80);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 80) = 0;
  }

  return FigXPCRemoteClientKillServerOnTimeout();
}

double fcks_remote_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = 0;
  if (a2)
  {
    if (a4)
    {
      *a4 = 0;
      if (!fcks_remote_getObjectID(a1, &v9))
      {
        FigXPCSendStdCopyPropertyMessage();
      }

      return result;
    }

    emitter = fig_log_get_emitter();
    v7 = v4;
    v8 = 640;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v7 = v4;
    v8 = 639;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950006, "<<< FigContentKeySessionRemote >>>", v8, v7);
}

double fcks_remote_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 && a3)
  {
    if (!fcks_remote_getObjectID(a1, &v4))
    {
      FigXPCSendStdSetPropertyMessage();
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

uint64_t fcks_remote_copyCryptor(uint64_t a1, const __CFAllocator *a2, const __CFDictionary *a3, int a4, void *a5)
{
  v16 = 0;
  xdict = 0;
  if (!a3 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_21;
  }

  *a5 = 0;
  ObjectID = fcks_remote_getObjectID(a1, &v16);
  if (ObjectID)
  {
    goto LABEL_21;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_21;
  }

  v8 = *MEMORY[0x1E6960F48];
  CFDictionaryGetValue(a3, *MEMORY[0x1E6960F48]);
  FigXPCMessageSetFormatDescription();
  if (!CFDictionaryGetValue(a3, v8))
  {
    v10 = CFRetain(a3);
    goto LABEL_9;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(a2, 0, a3);
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0, 0);
    if (!ObjectID)
    {
      v10 = 0;
      goto LABEL_9;
    }

LABEL_21:
    v12 = ObjectID;
    goto LABEL_18;
  }

  v10 = MutableCopy;
  CFDictionaryRemoveValue(MutableCopy, v8);
LABEL_9:
  v11 = FigXPCMessageSetCFDictionary();
  if (v11 || (v11 = FigXPCMessageSetCFBoolean(), v11) || (v11 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v11))
  {
LABEL_14:
    v12 = v11;
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (xpc_dictionary_get_uint64(xdict, "CryptorID"))
  {
    v11 = FigCPECryptorRemoteRetainCopiedCryptor();
    goto LABEL_14;
  }

  v12 = 0;
  if (v10)
  {
LABEL_17:
    CFRelease(v10);
  }

LABEL_18:
  FigXPCRelease();
  FigXPCRelease();
  return v12;
}

uint64_t fcks_remote_setAuthorizationToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  ObjectID = fcks_remote_getObjectID(a1, &v7);
  if (ObjectID)
  {
LABEL_11:
    v5 = ObjectID;
    goto LABEL_8;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4 || (v4 = FigXPCMessageSetCFString(), v4) || (v4 = FigXPCMessageSetCFData(), v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_8:
  FigXPCRelease();
  return v5;
}

uint64_t fcsk_remote_externalProtectionStatusForCryptor(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_13:
    v6 = ObjectID;
    goto LABEL_11;
  }

  ObjectID = fcks_remote_getObjectID(a1, &v8);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigCPECryptorRemoteGetID();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(0, "CryptorID", 0);
  ObjectID = FigXPCMessageSetCFArray();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v6)
  {
    *a4 = FigXPCMessageGetUInt32();
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

void __fcks_remote_ensureClientEstablished_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void fcks_remote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcks_remote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcks_remote_getObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcks_remote_addChildSession_cold_1(void *a1, const void *a2, _DWORD *a3)
{
  v5 = FigXPCMessageSetCFNumber();
  if (!v5)
  {
    v5 = FigXPCRemoteClientSendSyncMessage();
  }

  *a3 = v5;
  FigXPCRelease();
  CFRelease(a2);
}

void fcks_remote_addChildSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcks_remote_addChildSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigCaptionRendererCellStackLayoutRegionCreate(void *a1)
{
  *a1 = 0;
  *&v8 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererCellStackLayoutRegionGetClassID_sRegisterFigCaptionRendererCellStackLayoutRegionBaseTypeOnce, RegisterFigCaptionRendererCellStackLayoutRegionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    v3 = v8;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigGeometryDimensionMake();
    FigGeometryDimensionMake();
    FigGeometryPointMake();
    v5 = v8;
    *(DerivedStorage + 24) = v9;
    *(DerivedStorage + 8) = v5;
    v7 = 0;
    FigCaptionRendererStackLayoutRegionCreate(&v7);
    *DerivedStorage = v7;
    *a1 = v3;
  }

  return v2;
}

double figClosedCaptionRenderPipelineSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, int a10, int a11, int a12)
{
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a9, a10, a12);
}

{
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a9, a10, a12);
}

{
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a9, a10, a12);
}

uint64_t FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(const __CFDictionary *a1, __CFDictionary **a2, _BYTE *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  theDict = 0;
  v21 = 0;
  v13 = *(MEMORY[0x1E695F050] + 16);
  v20.origin = *MEMORY[0x1E695F050];
  v20.size = v13;
  FigSubtitleSampleCreateFromPropertyList(a1, &theDict, &v21 + 1, &v21, &v20);
  if (v14)
  {
    v18 = v14;
    v16 = 0;
    goto LABEL_9;
  }

  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    v16 = MutableCopy;
    if (MutableCopy)
    {
      inserted = FigSubtitleSampleInsertInfoForRenderer(MutableCopy, v20.origin.x, v20.origin.y, v20.size.width, v20.size.height, a4, a5, a6, a7, 0, v21);
      if (!inserted)
      {
        if (!a2)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v20.origin.x, LODWORD(v20.origin.y), LODWORD(v20.size.width));
    }

    v18 = inserted;
    goto LABEL_9;
  }

  v16 = 0;
  if (a2)
  {
LABEL_6:
    *a2 = v16;
    v16 = 0;
  }

LABEL_7:
  v18 = 0;
  if (a3)
  {
    *a3 = HIBYTE(v21);
  }

LABEL_9:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v18;
}

void FigSubtitleSampleCreatePropertyList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleSampleCreateFromPropertyList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleSampleCreateFromPropertyList_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleSampleInsertInfoForRenderer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSubtitleSampleInsertInfoForRenderer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void digestSubtitleSampleDo(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  theDict = 0;
  v87 = 0;
  cf = 0;
  if (FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(v2, &theDict, &v87, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
  {
    goto LABEL_87;
  }

  if (!theDict)
  {
    goto LABEL_86;
  }

  value = 0;
  v3 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
  if (CFDictionaryGetValueIfPresent(theDict, @"SubtitleSerializedCaptionGroup", &value))
  {
    if (FigCaptionSerializerCreateCaptionGroupFromCFData())
    {
      goto LABEL_87;
    }

    if (cf)
    {
      v4 = theDict;
      v97 = 0;
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v7 = Mutable;
        v80 = v2;
        v82 = v1;
        memset(&v96, 0, sizeof(v96));
        CMTimeMake(&v96, 0, 0);
        memset(&v95, 0, sizeof(v95));
        CMTimeMake(&v95, 0, 0);
        v8 = CFDictionaryGetValue(v4, @"SubtitleTimeRange");
        if (v8)
        {
          v9 = v8;
          ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
          v11 = CFArrayGetValueAtIndex(v9, 1);
          memset(&v94, 0, sizeof(v94));
          CMTimeMakeFromDictionary(&v94, ValueAtIndex);
          memset(&v93, 0, sizeof(v93));
          CMTimeMakeFromDictionary(&v93, v11);
          v96 = v94;
          v95 = v93;
        }

        SliceCount = FigCaptionGroupGetSliceCount();
        v13 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v13 && (v14 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
        {
          v15 = v14;
          if (SliceCount >= 1)
          {
            for (i = 0; i != SliceCount; ++i)
            {
              CaptionData = FigCaptionGroupGetCaptionData();
              if (CaptionData)
              {
                v18 = CaptionData;
                if (v97)
                {
                  CFRelease(v97);
                  v97 = 0;
                }

                memset(&v94, 0, sizeof(v94));
                FigCaptionGroupGetDurationBeforeSlice();
                memset(&v93, 0, sizeof(v93));
                FigCaptionGroupGetDurationAfterSlice();
                v92 = v96;
                v91 = v95;
                valuePtr = v94;
                v89 = v93;
                FigCaptionDataToMarkupBasedAttributedString(v5, v18, &v92, &v91, &valuePtr, &v89, &v97, v13, v15);
                CFArrayAppendValue(v7, v97);
              }
            }
          }

          CFDictionarySetValue(v4, @"SubtitleContent", v7);
        }

        else
        {
          v15 = 0;
        }

        v2 = v80;
        if (v13)
        {
          CFRelease(v13);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        v1 = v82;
        if (v97)
        {
          CFRelease(v97);
        }

        CFRelease(v7);
        v3 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
      }
    }
  }

  v19 = *(v1 + 56);
  if (v19)
  {
    FigCaptionRendererLayoutContextSetSubtitleSample(v19, theDict);
  }

  v20 = CFDictionaryGetValue(theDict, @"SubtitleContentMetadata");
  if (v20)
  {
    v21 = CFDictionaryGetValue(v20, *MEMORY[0x1E6960A90]);
    Count = CFDictionaryGetCount(v21);
    if (Count >= 1)
    {
      v23 = Count;
      v81 = v2;
      v83 = v1;
      v24 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      v25 = malloc_type_calloc(v23, 8uLL, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(v21, v24, v25);
      v26 = 0;
      v78 = *MEMORY[0x1E6960B18];
      key = *MEMORY[0x1E6960B00];
      v77 = *MEMORY[0x1E6960B08];
      do
      {
        v27 = v25[v26];
        if (v27)
        {
          v28 = CFGetTypeID(v27);
          if (v28 == CFDictionaryGetTypeID())
          {
            v29 = v24[v26];
            if (v29)
            {
              v30 = CFGetTypeID(v29);
              if (v30 == CFStringGetTypeID())
              {
                v31 = v24[v26];
                v32 = v25[v26];
                v96.value = 0;
                FigCaptionRendererStackLayoutRegionCreate(&v96);
                v95.value = 0;
                LODWORD(valuePtr.value) = 0;
                v94.value = 0;
                v93.value = 0;
                v92.value = 0;
                v91.value = 0;
                v33 = v96.value;
                ProtocolID = FigCaptionRendererRegionProtocolGetProtocolID();
                v35 = OUTLINED_FUNCTION_2_9(ProtocolID);
                if (v35)
                {
                  v36 = *(v35 + 16);
                  if (v36)
                  {
                    v37 = *(v36 + 8);
                    if (v37)
                    {
                      v37(v33, v31);
                    }
                  }
                }

                if (FigCFDictionaryGetCGFloatIfPresent())
                {
                  v38 = v96.value;
                  v39 = *&v95.value;
                  v40 = FigCaptionRendererRegionProtocolGetProtocolID();
                  v41 = OUTLINED_FUNCTION_2_9(v40);
                  if (v41)
                  {
                    v42 = *(v41 + 16);
                    if (v42)
                    {
                      v43 = *(v42 + 24);
                      if (v43)
                      {
                        v43(v38, v39);
                      }
                    }
                  }

                  v44 = CFDictionaryGetValue(v32, key);
                  if (v44)
                  {
                    CFNumberGetValue(v44, kCFNumberIntType, &valuePtr);
                    v45 = v96.value;
                    value_low = LODWORD(valuePtr.value);
                    v47 = FigCaptionRendererRegionProtocolGetProtocolID();
                    v48 = OUTLINED_FUNCTION_2_9(v47);
                    if (v48)
                    {
                      v49 = *(v48 + 16);
                      if (v49)
                      {
                        v50 = *(v49 + 40);
                        if (v50)
                        {
                          v50(v45, value_low);
                        }
                      }
                    }

                    if (CFDictionaryGetValue(v32, v78) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
                    {
                      v51 = v96.value;
                      v52 = *&v94.value;
                      v53 = *&v93.value;
                      v54 = FigCaptionRendererRegionProtocolGetProtocolID();
                      v55 = OUTLINED_FUNCTION_2_9(v54);
                      if (v55)
                      {
                        v56 = *(v55 + 16);
                        if (v56)
                        {
                          v57 = *(v56 + 72);
                          if (v57)
                          {
                            v57(v51, v52, 100.0 - v53);
                          }
                        }
                      }

                      if (CFDictionaryGetValue(v32, v77) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
                      {
                        v58 = v96.value;
                        v59 = *&v92.value;
                        v60 = *&v91.value;
                        v61 = FigCaptionRendererRegionProtocolGetProtocolID();
                        v62 = OUTLINED_FUNCTION_2_9(v61);
                        if (v62)
                        {
                          v63 = *(v62 + 16);
                          if (v63)
                          {
                            v64 = *(v63 + 56);
                            if (v64)
                            {
                              v64(v58, v59, v60);
                            }
                          }
                        }

                        v65 = *(v83 + 56);
                        if (v65)
                        {
                          FigCaptionRendererLayoutContextSetMapping(v65, v96.value, v32);
                        }

                        (*(v83 + 24))(v96.value, *(v83 + 32));
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v26;
      }

      while (v23 != v26);
      free(v24);
      free(v25);
      v2 = v81;
      v1 = v83;
      v3 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
    }
  }

  v84 = 0;
  v66 = CFDictionaryGetValue(theDict, @"SubtitleFormat");
  CFNumberGetValue(v66, kCFNumberSInt32Type, &v84);
  if (v84 == 1937142900 || v84 == 2004251764 || v84 == 2021028980)
  {
    v69 = 4;
  }

  else
  {
    v69 = 3;
  }

  v70 = CFDictionaryGetValue(theDict, v3[443]);
  if (v70)
  {
    v71 = v70;
    v72 = CFArrayGetCount(v70);
    if (v72)
    {
      v73 = v72;
      if (v72 >= 1)
      {
        for (j = 0; j != v73; ++j)
        {
          v75 = CFArrayGetValueAtIndex(v71, j);
          if (v75)
          {
            v76 = v75;
            if (CFAttributedStringGetLength(v75))
            {
              outputCueAsFigCaptionRendererCaption(v1, v69, v76, theDict);
            }
          }
        }
      }

      goto LABEL_87;
    }

LABEL_86:
    outputCueAsFigCaptionRendererCaption(v1, 5, 0, 0);
  }

LABEL_87:
  if (v2)
  {
    CFRelease(v2);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void outputCueAsFigCaptionRendererCaption(uint64_t a1, uint64_t a2, const void *a3, CFDictionaryRef theDict)
{
  cf[0] = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kFigSubtitleRenderer_TextBox");
    v9 = CFDictionaryGetValue(theDict, @"SubtitleExtendedLanguageTag");
    CFDictionaryGetValue(theDict, @"kFigSubtitleRenderer_ObeySubtitleFormatting");
  }

  else
  {
    Value = 0;
    v9 = 0;
  }

  cf[1] = 0;
  cf[2] = 0;
  FigCaptionRendererCaptionCreate(cf);
  v10 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v12 = *(ProtocolVTable + 16);
    if (v12)
    {
      v13 = *(v12 + 40);
      if (v13)
      {
        v13(v10, a2);
      }
    }
  }

  if (a2 == 5)
  {
    (*(a1 + 16))(cf[0], *(a1 + 32));
LABEL_10:
    Mutable = 0;
    goto LABEL_44;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v15 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v16 = CMBaseObjectGetProtocolVTable();
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v17 + 56);
      if (v18)
      {
        v18(v15, v9);
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v19 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v20 = CMBaseObjectGetProtocolVTable();
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v21 + 8);
      if (v22)
      {
        v22(v19, Mutable);
      }
    }
  }

  v23 = OUTLINED_FUNCTION_0_11();
  Attribute = CFAttributedStringGetAttribute(v23, v24, v25, v26);
  if (Attribute)
  {
    CFDictionarySetValue(Mutable, @"region", Attribute);
  }

  if (Value)
  {
    CFDictionarySetValue(Mutable, @"textbox", Value);
  }

  if (a2 == 4)
  {
    v28 = *MEMORY[0x1E6960998];
    v29 = OUTLINED_FUNCTION_0_11();
    v32 = CFAttributedStringGetAttribute(v29, v30, v28, v31);
    if (v32)
    {
      OUTLINED_FUNCTION_1_10(v32);
    }

    v33 = *MEMORY[0x1E6960978];
    v34 = OUTLINED_FUNCTION_0_11();
    v37 = CFAttributedStringGetAttribute(v34, v35, v33, v36);
    if (v37)
    {
      OUTLINED_FUNCTION_1_10(v37);
    }

    v38 = *MEMORY[0x1E69608E0];
    v39 = OUTLINED_FUNCTION_0_11();
    v42 = CFAttributedStringGetAttribute(v39, v40, v38, v41);
    if (v42)
    {
      OUTLINED_FUNCTION_1_10(v42);
    }

    v43 = *MEMORY[0x1E69608D8];
    v44 = OUTLINED_FUNCTION_0_11();
    v47 = CFAttributedStringGetAttribute(v44, v45, v43, v46);
    if (v47)
    {
      OUTLINED_FUNCTION_1_10(v47);
    }

    v48 = *MEMORY[0x1E6960830];
    v49 = OUTLINED_FUNCTION_0_11();
    v52 = CFAttributedStringGetAttribute(v49, v50, v48, v51);
    if (v52)
    {
      OUTLINED_FUNCTION_1_10(v52);
    }

    v53 = *MEMORY[0x1E6960838];
    v54 = OUTLINED_FUNCTION_0_11();
    v57 = CFAttributedStringGetAttribute(v54, v55, v53, v56);
    if (v57)
    {
      OUTLINED_FUNCTION_1_10(v57);
    }
  }

  v58 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v59 = CMBaseObjectGetProtocolVTable();
  if (v59)
  {
    v60 = *(v59 + 16);
    if (v60)
    {
      v61 = *(v60 + 24);
      if (v61)
      {
        v61(v58, a3);
      }
    }
  }

  v62 = *(a1 + 56);
  if (v62)
  {
    FigCaptionRendererLayoutContextSetMapping(v62, cf[0], a3);
  }

  (*(a1 + 16))(cf[0], *(a1 + 32));
LABEL_44:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void FigCaptionRendererBasicInputCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererBasicInputCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigIFFPictureCollectionWriterCreateWithByteStream(const void *a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  v40 = 0;
  if (a1 && a2 && a5)
  {
    HIBYTE(v39) = 0;
    iffpcwGetWriteFileTypeOptions(a3, &v39 + 7, 0);
    if (!v12)
    {
      v13 = MovieSampleDataWriterCreate(a4, a2, 0, 0, HIBYTE(v39) != 0, 3u, &v40);
      v21 = OUTLINED_FUNCTION_6_7(v13, v14, v15, v16, v17, v18, v19, v20, v39, v40);
      if (!v5)
      {
        v22 = MovieSampleDataWriterSetDefaultByteStream(v21, a1);
        v30 = OUTLINED_FUNCTION_6_7(v22, v23, v24, v25, v26, v27, v28, v29, v39, v40);
        v31 = FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter(v30, a2, a3, a4, a5);
        v21 = OUTLINED_FUNCTION_6_7(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t iffpcw_AppendHeader(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v2 = IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer(*(DerivedStorage + 32), *DerivedStorage, *(DerivedStorage + 16), &cf);
  if (v2)
  {
    appended = v2;
  }

  else
  {
    appended = MovieSampleDataWriterAppendHeader(*(DerivedStorage + 8), cf, 0);
    if (!appended)
    {
      MovieSampleDataWriterSynchronizeDefaultByteStream(*(DerivedStorage + 8), 0, 0);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return appended;
}

uint64_t iffpcw_WriteHeaderToByteStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v18 = 0;
  blockBufferOut = 0;
  v17 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  appended = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(DerivedStorage + 8));
  if (!appended)
  {
    appended = CMBlockBufferCreateEmpty(*DerivedStorage, 0, 0, &blockBufferOut);
    if (!appended)
    {
      if (!*(DerivedStorage + 40) || (appended = MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(*(DerivedStorage + 8), *DerivedStorage, &v18), !appended) && (OUTLINED_FUNCTION_496(), appended = CMBlockBufferAppendBufferReference(v5, v6, v7, v8, 0), !appended))
      {
        appended = IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer(*(DerivedStorage + 32), *DerivedStorage, *(DerivedStorage + 16), &v17);
        if (!appended)
        {
          OUTLINED_FUNCTION_496();
          appended = CMBlockBufferAppendBufferReference(v9, v10, v11, v12, 0);
          if (!appended)
          {
            DataLength = CMBlockBufferGetDataLength(blockBufferOut);
            appended = CMByteStreamWriteBlockBuffer();
            if (!appended)
            {
              if (DataLength)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_4();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0, v17);
              }

              else
              {
                appended = IFFItemHeaderMakerSetByteCountToAddToItemLocationExtentOffsets(*(DerivedStorage + 32), 0);
              }
            }
          }
        }
      }
    }
  }

  v14 = appended;
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v14;
}

double iffpcw_SetPictureProperty(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v6 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    IFFInformationGetPictureByID(*(DerivedStorage + 24), v6);
    if (!v9 && FigCFEqual())
    {
      if (a4 && (v10 = CFGetTypeID(a4), v10 == CFDictionaryGetTypeID()))
      {
        return IFFPictureSetStereoMetadataProperties(0, a4);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0, v12);
      }
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

double iffpcw_AddSampleBufferToPicture(uint64_t a1, uint64_t a2, const __CFDictionary *a3, opaqueCMSampleBuffer *a4)
{
  v7 = a2;
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v29 = 0;
  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v20 = v4;
    v21 = emitter;
    v22 = 717;
LABEL_21:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 4294954516, "< IFFPictureCollectionWriter >", v22, v20);
  }

  v9 = DerivedStorage;
  DataBuffer = CMSampleBufferGetDataBuffer(a4);
  if (!DataBuffer)
  {
    v23 = fig_log_get_emitter();
    v20 = v4;
    v21 = v23;
    v22 = 720;
    goto LABEL_21;
  }

  v11 = DataBuffer;
  point = *MEMORY[0x1E695EFF8];
  v27 = 0;
  v26 = point;
  if (a3)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"TileGridPosition", &value))
    {
      v12 = CGPointMakeWithDictionaryRepresentation(value, &point);
    }

    else
    {
      v12 = 0;
    }

    if (FigCFDictionaryGetInt16IfPresent() && (dict = 0, CFDictionaryGetValueIfPresent(a3, @"OverlayItemOffset", &dict)))
    {
      v13 = CGPointMakeWithDictionaryRepresentation(dict, &v26);
      LODWORD(a3) = v13;
      if (v12 && v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      LODWORD(a3) = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a4);
  result = IFFInformationAddAndGetPictureItemFromPicture(*(v9 + 24), v7, v12, a3, v27, FormatDescription, v29, point.x, point.y, v26.x, v26.y);
  if (!v16)
  {
    *sizeArrayOut = 0u;
    v31 = 0u;
    NumSamples = CMSampleBufferGetNumSamples(a4);
    if (NumSamples >= 5)
    {
LABEL_24:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v18 = NumSamples;
    if (!CMSampleBufferGetSampleSizeArray(a4, NumSamples, sizeArrayOut, 0))
    {
      iffpcwAppendPictureDataBlockBuffer(v9, *v29, v11, v18, sizeArrayOut);
    }
  }

  return result;
}

uint64_t iffpcw_AddItemReference(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v6 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3 || (v8 = DerivedStorage, v9 = CFGetTypeID(a3), v9 != CFArrayGetTypeID()))
  {
    v17 = 0;
LABEL_32:
    v16 = 4294949526;
    goto LABEL_30;
  }

  Count = CFArrayGetCount(a3);
  if (Count < 1)
  {
LABEL_20:
    v17 = 0;
    v16 = 0;
    goto LABEL_30;
  }

  v11 = Count;
  v25 = 0;
  ItemByID = IFFInformationGetItemByID(*(v8 + 24), v6);
  if (!ItemByID)
  {
    if (a4 == 1635088492)
    {
      if (*(v25 + 64) != 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (a4 != 1953000802)
      {
        if (a4 != 1684630887)
        {
          if (a4 == 1667527523)
          {
            v13 = 0;
            for (i = 0; ; ++i)
            {
              v15 = *(v25 + 520);
              if (v15)
              {
                v15 = CFArrayGetCount(v15);
              }

              if (i >= v15 || v13)
              {
                break;
              }

              v13 = *FigCFArrayGetValueAtIndex() != 1667527523;
            }

            if (v13)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v24);
              goto LABEL_20;
            }
          }

          goto LABEL_22;
        }

        goto LABEL_16;
      }

      if (*(v25 + 64) != 1)
      {
LABEL_16:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_17;
      }
    }

LABEL_22:
    v17 = malloc_type_calloc(v11, 8uLL, 0x2004093837F09uLL);
    if (!v17)
    {
      v16 = 4294954450;
      goto LABEL_30;
    }

    v18 = 0;
    while (1)
    {
      v24 = 0;
      v23 = 0;
      if (!FigCFArrayGetInt32AtIndex())
      {
        goto LABEL_32;
      }

      IFFInformationGetPictureByID(*(v8 + 24), v23);
      if (PictureItem)
      {
        goto LABEL_29;
      }

      v21 = 0;
      PictureItem = IFFInformationGetPictureItem(v24, &v21);
      if (PictureItem)
      {
        goto LABEL_29;
      }

      v17[v18++] = v21;
      if (v11 == v18)
      {
        PictureItem = IFFInformationAddItemReference(*(v8 + 24), v25, a4, v11, v17);
LABEL_29:
        v16 = PictureItem;
        goto LABEL_30;
      }
    }
  }

LABEL_17:
  v16 = ItemByID;
  v17 = 0;
LABEL_30:
  free(v17);
  return v16;
}

uint64_t iffpcw_AddExifToPictureWithIDOut(uint64_t a1, uint64_t a2, const __CFData *a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  sourceBytes = a4;
  v13 = *CMBaseObjectGetDerivedStorage();
  destinationBuffer = 0;
  if (a5 || !a3 || CFDataGetLength(a3) <= a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    BlockBufferWithCFDataNoCopy = CMBlockBufferCreateWithMemoryBlock(v13, 0, 4uLL, v13, 0, 0, 4uLL, 1u, &destinationBuffer);
    if (!BlockBufferWithCFDataNoCopy)
    {
      sourceBytes = bswap32(a4);
      BlockBufferWithCFDataNoCopy = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL);
      if (!BlockBufferWithCFDataNoCopy)
      {
        OUTLINED_FUNCTION_496();
        BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
        if (!BlockBufferWithCFDataNoCopy)
        {
          OUTLINED_FUNCTION_496();
          BlockBufferWithCFDataNoCopy = CMBlockBufferAppendBufferReference(v22, v23, v24, v25, 0);
          if (!BlockBufferWithCFDataNoCopy)
          {
            BlockBufferWithCFDataNoCopy = iffpcwAddGenericMetadataToPicture(a1, a2, 0, 0, destinationBuffer, 0, 0, 0, a6);
          }
        }
      }
    }
  }

  v26 = OUTLINED_FUNCTION_6_7(BlockBufferWithCFDataNoCopy, v15, v16, v17, v18, v19, v20, v21, blockBufferOut, 0);
  if (v26)
  {
    CFRelease(v26);
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v6;
}

void iffpcwAppendPictureDataBlockBuffer(uint64_t a1, uint64_t a2, CMBlockBufferRef theBuffer, unint64_t a4, size_t *a5)
{
  HIDWORD(v45) = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v18 = DataLength;
  v39 = DataLength;
  if (a4 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a4;
  }

  if (!a4)
  {
    a5 = &v39;
  }

  if (!OUTLINED_FUNCTION_5_6(DataLength, v11, v12, v13, v14, v15, v16, v17, v36, v39, v40, v41, v42, v43, v44, v45, SHIDWORD(v45)))
  {
    v21 = v42;
    if (!v42)
    {
      IFFInformationReserveItemExtentTable(*(a2 + 24), *(a2 + 40), 0, 0, v19, 0, 0, v20, v37, v39, v40, v41, 0, v43, v44, v45, v46, v47, v48, v49);
      if (v22 || OUTLINED_FUNCTION_5_6(v22, v23, v24, v25, v26, v27, v28, v29, v38, v39, v40, v41, v42, v43, v44, v45, SHIDWORD(v45)))
      {
        return;
      }

      v21 = v42;
    }

    if (v21 != v19 || HIDWORD(v45) || v44)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v39, v40);
    }

    else
    {
      v30 = a4 - 1;
      if ((a4 > 1 || v18 == *a5) && !MovieSampleDataWriterAppendBlockBuffer(*(a1 + 8), theBuffer, &v40))
      {
        v31 = v41;
        v32 = *a5;
        *v41 = v40;
        v31[1] = v32;
        if (a4 >= 2)
        {
          v33 = v31 + 2;
          v34 = (a5 + 1);
          do
          {
            v35 = *v34++;
            *v33 = *(v33 - 1) + *(v33 - 2);
            v33[1] = v35;
            v33 += 2;
            --v30;
          }

          while (v30);
        }
      }
    }
  }
}

uint64_t iffpcwAddGenericMetadataToPicture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const __CFString *a6, const __CFString *a7, const __CFString *a8, _DWORD *a9)
{
  v14 = a3;
  v15 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  *v24 = 0;
  if (!(a4 | a5) || (v17 = DerivedStorage, a4) && a5 || v14 == 3 && (!a6 || !CFStringHasPrefix(a6, @"http:") && !CFStringHasPrefix(a6, @"https:") && !CFStringHasPrefix(a6, @"urn:") && !CFStringHasPrefix(a6, @"tag:")))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_27;
  }

  IFFInformationAddAndGetMetadataItemFromPicture(*(v17 + 24), v15, v14, a6, a8, v24);
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_27;
  }

  if (a7)
  {
    IFFInformationSetItemName(*v24, 0, a7);
    if (BlockBufferWithCFDataNoCopy)
    {
      goto LABEL_27;
    }
  }

  if (a4)
  {
    OUTLINED_FUNCTION_496();
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (!BlockBufferWithCFDataNoCopy)
    {
      v19 = 0;
      goto LABEL_16;
    }

LABEL_27:
    v21 = BlockBufferWithCFDataNoCopy;
    goto LABEL_19;
  }

  if (a5)
  {
    v19 = CFRetain(a5);
  }

  else
  {
    v19 = 0;
  }

  cf = v19;
LABEL_16:
  iffpcwAppendPictureDataBlockBuffer(v17, *v24, v19, 0, 0);
  v21 = v20;
  if (a9 && !v20)
  {
    *a9 = *(*v24 + 40);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

double FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcwGetWriteFileTypeOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddPicture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddPicture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddPicture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddPicture_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddPicture_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddPicture_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddPicture_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_CopyPictureProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void iffpcw_AddThumbnailToPicture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddThumbnailToPicture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddThumbnailToPicture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddAuxiliaryImageToPicture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddAuxiliaryImageToPicture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddAuxiliaryImageToPicture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddAuxiliaryImageToPicture_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddAuxiliaryImageToPicture_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddAuxiliaryImageToPicture_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void iffpcw_AddGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXPCPlaybackCoordinatorServerHandleMessage(const void *a1, const void *a2, void *a3, void *a4, uint64_t a5)
{
  if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(a1))
  {
    if (a1 && (v8 = CFGetTypeID(a1), v8 == FigPlaybackCoordinatorGetTypeID(v8, v9)))
    {
      if (a2)
      {
        v10 = CFGetTypeID(a2);
        if (_MergedGlobals_17 != -1)
        {
          dispatch_once(&_MergedGlobals_17, &__block_literal_global_4);
        }

        if (v10 == qword_1ED4CA440)
        {
          FigXPCMessageGetOpCode();
          return;
        }
      }

      v11 = qword_1ED4CBE68;
      v12 = v5;
      v13 = 4294951145;
      v14 = 847;
    }

    else
    {
      v11 = qword_1ED4CBE68;
      v12 = v5;
      v13 = 4294951575;
      v14 = 851;
    }
  }

  else
  {
    v11 = qword_1ED4CBE68;
    v12 = v5;
    v13 = 4294951575;
    v14 = 843;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v13, "<<<< FigPlaybackCoordinator_Server >>>>", v14, v12);
}

uint64_t serverXPCCoordinator_handleCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  cf = 0;
  v3 = FigXPCMessageCopyCFString();
  if (!v3)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, cf, v8);
  }

  v5 = v3;
  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t serverXPCCoordinator_handleSetProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  cf = 0;
  v2 = FigXPCMessageCopyCFString();
  if (!v2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v7);
  }

  v3 = v2;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

uint64_t serverXPCCoordinator_handleBeginSuspension(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2_11(a3);
  v7 = FigXPCMessageCopyTimelineCoordinatorSuspension();
  if (v7)
  {
    return v7;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = v8(a1, 0);
  if (!v9)
  {
    v11 = *(a2 + 32);
    v10 = *(a2 + 40);
    *(a2 + 32) = v11 + 1;
    CFDictionarySetValue(v10, v11, 0);
    xpc_dictionary_set_int64(a4, "SuspensionID", v11);
  }

  return v9;
}

uint64_t serverXPCCoordinator_handleEndSuspensionWithReason()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFString();
  if (v1)
  {
    goto LABEL_5;
  }

  if (!cf)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, v8);
    goto LABEL_5;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_5:
    v4 = v1;
    goto LABEL_7;
  }

  v4 = 4294954514;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleHandleAssignmentOfUUIDToLocalParticipantByMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFObject();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 48))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleCopyParticipantSnapshotForUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  cf = 0;
  OUTLINED_FUNCTION_2_11(a2);
  v4 = FigXPCMessageCopyCFObject();
  if (v4)
  {
LABEL_5:
    v6 = v4;
    goto LABEL_7;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v5)
  {
    v4 = v5(a1, cf, &v8);
    if (!v4)
    {
      v4 = FigXPCMessageSetTimelineCoordinatorParticipantSnapshot();
    }

    goto LABEL_5;
  }

  v6 = 4294954514;
LABEL_7:
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

uint64_t serverXPCCoordinator_handleHandleRemovalOfParticipantStateFromMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFObject();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 72))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleGetExpectedTimeAtHostTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v6 = v8;
  v7 = v9;
  result = FigXPCMessageGetCMTime();
  if (!result)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v5)
    {
      v10 = v8;
      v11 = v9;
      result = v5(a1, &v10, &v6);
      if (!result)
      {
        v10 = v6;
        v11 = v7;
        return FigXPCMessageSetCMTime();
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t serverXPCCoordinator_handleHandleUpdatedTimelineStateFromMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFDictionary();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 88))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleHandleReplacementOfAllParticipantStatesFromMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFArray();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 96))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleHandleUpdatedParticipantStateFromMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFDictionary();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 104))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleResetGroupTimelineExpectationsForIdentifier()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFString();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 128))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void FigXPCPlaybackCoordinatorServerHandleNoReplyMessage(const void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(a1) && a1 && (v5 = CFGetTypeID(a1), v5 == FigPlaybackCoordinatorGetTypeID(v5, v6)))
  {
    FigXPCMessageGetOpCode();
  }

  else
  {
    OUTLINED_FUNCTION_239();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

uint64_t coordinatorServerMedium_broadcastTimelineState()
{
  OUTLINED_FUNCTION_4_8();
  if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary())
  {
    xpc_connection_send_message(*(v0 + 16), message);
  }

  return FigXPCRelease();
}

uint64_t coordinatorServerMedium_broadcastParticipantState()
{
  OUTLINED_FUNCTION_4_8();
  if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary())
  {
    xpc_connection_send_message(*(v0 + 16), message);
  }

  return FigXPCRelease();
}

uint64_t coordinatorServerMedium_asynchronouslyReloadTimelineState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  message = 0;
  if (!FigXPCCreateBasicMessage())
  {
    coordinatorServerMedium_cancelOutstandingFetchAndRecordNewCallback(a1, a3, a4, &v8);
    xpc_dictionary_set_int64(message, "FetchID", v8);
    FigXPCMessageSetCFString();
    xpc_connection_send_message(*(a1 + 16), message);
  }

  return FigXPCRelease();
}

BOOL FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

CFMutableDictionaryRef FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_3(uint64_t a1, CFAllocatorRef allocator)
{
  *(a1 + 32) = 1;
  result = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x1E695E9E8]);
  *(a1 + 40) = result;
  return result;
}

BOOL serverXPCCoordinator_handleSetWeakMediumAndCallbacks_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t cea708_PushSample(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  totalLengthOut = 0;
  blockBufferOut = 0;
  dataPointerOut = 0;
  DataPointer = cea708_RenderToTime(a1, MEMORY[0x1E6960C88], 0);
  if (DataPointer)
  {
    goto LABEL_66;
  }

  if (!a2)
  {
    goto LABEL_60;
  }

  if (!CMSampleBufferGetNumSamples(a2))
  {
    goto LABEL_60;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  if (!FormatDescription)
  {
    goto LABEL_60;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  if (*DerivedStorage != MediaSubType)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", allocator, LODWORD(v41.value), v41.timescale);
    goto LABEL_66;
  }

  v8 = MediaSubType;
  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  v10 = DataBuffer;
  if (!DataBuffer)
  {
    goto LABEL_61;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0);
  v12 = MEMORY[0x1E695E480];
  if (!IsRangeContiguous)
  {
    DataPointer = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v10, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut);
    if (DataPointer)
    {
      goto LABEL_66;
    }

    v10 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(v10, 0, 0, &totalLengthOut, &dataPointerOut);
  if (!DataPointer)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v41, a2);
    *(DerivedStorage + 40) = v41;
    if (v8 != 1664561208)
    {
      if (v8 == 1635017571)
      {
        v13 = dataPointerOut;
        v14 = totalLengthOut;
        v41.value = 0;
        if (totalLengthOut >= 8)
        {
          v45 = 0;
          v15 = *v12;
          v16 = MEMORY[0x1E695E9C0];
          while (1)
          {
            if (*v13 == 71 && v13[1] == 65 && v13[2] == 57 && v13[3] == 52 && v13[4] == 3)
            {
              v17 = v13 + 5;
              v18 = v14 - 5;
              DataPointer = cea708CreateDTVCCDataPacketBBufArray(DerivedStorage, v13 + 5, v14 - 5, &v41, &v45);
              if (DataPointer)
              {
                goto LABEL_66;
              }

              value = v41.value;
              if (v41.value)
              {
                Mutable = *(DerivedStorage + 72);
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(v15, 0, v16);
                  *(DerivedStorage + 72) = Mutable;
                }

                CFArrayAppendValue(Mutable, value);
                CFRelease(value);
                v41.value = 0;
              }

              v13 = &v17[v45];
              v14 = v18 - v45;
            }

            else
            {
              ++v13;
              --v14;
            }

            if (v14 <= 7)
            {
              goto LABEL_60;
            }
          }
        }
      }

      goto LABEL_60;
    }

    v21 = totalLengthOut;
    if (totalLengthOut >= 9)
    {
      v10 = 0;
      v22 = dataPointerOut;
      allocatora = *v12;
      while (1)
      {
        v23 = bswap32(*v22);
        v25 = v21 >= v23;
        v21 -= v23;
        if (!v25)
        {
LABEL_64:
          v10 = 4294950853;
          goto LABEL_61;
        }

        v24 = v23 - 8;
        v25 = v22[1] == 1885627235 && v24 >= 0xC;
        if (v25)
        {
          break;
        }

LABEL_37:
        v22 = (v22 + v23);
        if (v21 <= 8)
        {
          goto LABEL_61;
        }
      }

      v26 = (v22 + 2);
      while (1)
      {
        if (*v26 != 150)
        {
          goto LABEL_64;
        }

        if (v26[1] != 105)
        {
          goto LABEL_64;
        }

        v27 = v26[2];
        v28 = v24 - v27;
        if (v24 < v27)
        {
          goto LABEL_64;
        }

        v29 = v26[3];
        v30 = v26[4];
        if (*(DerivedStorage + 80) == v29 >> 4)
        {
          goto LABEL_46;
        }

        v31 = v29 >> 4;
        if (v31 - 1 <= 7)
        {
          break;
        }

        v10 = 4294950853;
        if ((v26[4] & 0x40) == 0)
        {
          goto LABEL_47;
        }

LABEL_50:
        v41.value = 0;
        v33 = v30 < 0;
        v34 = 12;
        if (!v33)
        {
          v34 = 7;
        }

        v35 = -12;
        if (!v33)
        {
          v35 = -7;
        }

        DataPointer = cea708CreateDTVCCDataPacketBBufArray(DerivedStorage, &v26[v34], v35 + v24, &v41, 0);
        if (DataPointer)
        {
          goto LABEL_66;
        }

        v36 = v41.value;
        if (v41.value)
        {
          v37 = *(DerivedStorage + 72);
          if (!v37)
          {
            v37 = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
            *(DerivedStorage + 72) = v37;
          }

          CFArrayAppendValue(v37, v36);
          CFRelease(v36);
        }

        v10 = 0;
LABEL_47:
        v26 += v27;
        v24 = v28;
        if (v28 <= 0xB)
        {
          goto LABEL_37;
        }
      }

      v10 = 0;
      v32 = dword_196E72C30[v31 - 1];
      *(DerivedStorage + 80) = v31;
      *(DerivedStorage + 84) = v32;
LABEL_46:
      if ((v30 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_50;
    }

LABEL_60:
    v10 = 0;
    goto LABEL_61;
  }

LABEL_66:
  v10 = DataPointer;
LABEL_61:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v10;
}

uint64_t cea708CreateDTVCCDataPacketBBufArray(uint64_t a1, char *a2, uint64_t a3, __CFArray **a4, void *a5)
{
  v5 = *a2;
  v6 = *a2 & 0x1F;
  v7 = 3 * (*a2 & 0x1F);
  if (a3 - 2 < v7)
  {
    return 4294950853;
  }

  if (a5)
  {
    *a5 = (v7 + 2);
    v5 = *a2;
  }

  if ((v5 & 0x40) == 0)
  {
    return 0;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!v6)
  {
LABEL_35:
    v25 = 0;
    *a4 = Mutable;
    return v25;
  }

  v12 = 0;
  v13 = (a1 + 104);
  v14 = a2 + 4;
  while (1)
  {
    v15 = *(v14 - 2);
    v16 = v15 & 3;
    if (v15 < 0xFC || v16 < 2)
    {
      goto LABEL_34;
    }

    if (v16 == 3)
    {
      break;
    }

    if (!*v13)
    {
      *(a1 + 88) = -1;
      goto LABEL_33;
    }

    v22 = CMBlockBufferReplaceDataBytes(v14 - 1, *v13, *(a1 + 96), 2uLL);
    if (v22)
    {
      goto LABEL_37;
    }

    v23 = *(a1 + 96) + 2;
LABEL_28:
    *(a1 + 96) = v23;
    v24 = *(a1 + 104);
    if (!v24 || CMBlockBufferGetDataLength(v24) != *(a1 + 96))
    {
      goto LABEL_34;
    }

    CFArrayAppendValue(Mutable, *v13);
    if (*v13)
    {
      CFRelease(*v13);
      *v13 = 0;
    }

LABEL_33:
    *(a1 + 96) = 0;
LABEL_34:
    ++v12;
    v14 += 3;
    if (v12 >= v6)
    {
      goto LABEL_35;
    }
  }

  v18 = *(v14 - 1);
  v19 = v18 >> 6;
  v20 = *(a1 + 88);
  if (v20 == 255)
  {
    v21 = *v13;
  }

  else
  {
    if (v20 == 3)
    {
      LOBYTE(v20) = -1;
    }

    v21 = *v13;
    if (v20 + 1 != v19)
    {
      *(a1 + 88) = -1;
      *(a1 + 96) = 0;
      if (!v21)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  if (v21)
  {
    *(a1 + 88) = -1;
    *(a1 + 96) = 0;
LABEL_25:
    CFRelease(v21);
    *v13 = 0;
  }

LABEL_26:
  *(a1 + 88) = v19;
  v22 = CMBlockBufferCreateWithMemoryBlock(v10, 0, 2 * (v18 & 0x3F) - 1, v10, 0, 0, 2 * (v18 & 0x3F) - 1, 1u, (a1 + 104));
  if (!v22)
  {
    v22 = CMBlockBufferReplaceDataBytes(v14, *v13, 0, 1uLL);
    v23 = 1;
    if (!v22)
    {
      goto LABEL_28;
    }
  }

LABEL_37:
  v25 = v22;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v25;
}

uint64_t cea708ProcessCharacters(uint64_t result, unsigned int a2, unsigned __int8 *a3, int a4, int a5, _DWORD *a6)
{
  if (a4 >= 1)
  {
    v6 = result + 121800 * a2;
    if (*(v6 + 113) != -1)
    {
      v7 = v6 + 120 + 15224 * *(v6 + 113);
      if (*(v7 + 69) <= *(v7 + 8))
      {
        v8 = *(v7 + 68);
        v9 = v7 + 72 + 1010 * *(v7 + 68) + 24 * (v8 >> 8);
        v10 = *a3;
        *(v9 + 2) = 1;
        v11 = v9 + 2;
        if (a5)
        {
          v12 = 95;
          switch(v10)
          {
            case ' ':
              v12 = 32;
              break;
            case '!':
              v12 = 160;
              break;
            case '""':
            case '#':
            case '$':
            case '&':
            case '\'':
            case '(':
            case ')':
            case '+':
            case '-':
            case '.':
            case '/':
            case '6':
            case '7':
            case '8':
            case ';':
            case '>':
              break;
            case '%':
              v12 = 8230;
              break;
            case '*':
              v12 = 352;
              break;
            case ',':
              v12 = 338;
              break;
            case '0':
              v12 = 9608;
              break;
            case '1':
              v12 = 8216;
              break;
            case '2':
              v12 = 8217;
              break;
            case '3':
              v12 = 8220;
              break;
            case '4':
              v12 = 8221;
              break;
            case '5':
              v12 = 8226;
              break;
            case '9':
              v12 = 8482;
              break;
            case ':':
              v12 = 353;
              break;
            case '<':
              v12 = 339;
              break;
            case '=':
              v12 = 8480;
              break;
            case '?':
              v12 = 376;
              break;
            default:
              switch(v10)
              {
                case 'v':
                  v12 = 8539;
                  break;
                case 'w':
                  v12 = 8540;
                  break;
                case 'x':
                  v12 = 8541;
                  break;
                case 'y':
                  v12 = 8542;
                  break;
                case 'z':
                  v12 = 9474;
                  break;
                case '{':
                  v12 = 9488;
                  break;
                case '|':
                  v12 = 9492;
                  break;
                case '}':
                  v12 = 9472;
                  break;
                case '~':
                  v12 = 9496;
                  break;
                case '\x7F':
                  v12 = 9484;
                  break;
                default:
                  goto LABEL_10;
              }

              break;
          }
        }

        else if (v10 == 127)
        {
          v12 = 9834;
        }

        else
        {
          v12 = v10;
        }

LABEL_10:
        *(v11 + 2) = v12;
        v13 = *(v7 + 48);
        *(v11 + 20) = *(v7 + 63);
        *(v11 + 5) = v13;
        if (*(v7 + 67) || *(v7 + 70))
        {
          *(v11 + 4) = 1;
        }

        ++*(v7 + 69);
        *(v7 + 67) = 0;
        *(v7 + 70) = 0;
        *(v7 + 72 + 1010 * v8) = 1;
        *(v6 + 112) = 1;
        *a6 = 0;
      }
    }
  }

  return result;
}

void FigCEA708CaptionDecoderCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA708CaptionDecoderCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCEA708CaptionDecoderCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cea708_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cea708_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cea708_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigReportingModeratorCreateForStreamingAssetDownloader(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  OUTLINED_FUNCTION_1_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_1_12();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    return 4294949785;
  }

  FigReportingModeratorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *DerivedStorage = v7;
    v5 = 0;
    *(DerivedStorage + 8) = FigGetUpTimeNanoseconds();
    *(DerivedStorage + 40) = 0;
    *a3 = 0;
  }

  return v5;
}

void downloaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = *DerivedStorage;
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t downloaderModeratorProcessEventAndCopyKeyArray(uint64_t a1, int a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294949785;
  if (a3 && DerivedStorage)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v8 = UpTimeNanoseconds;
    switch(a2)
    {
      case 701:
        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v15 = OUTLINED_FUNCTION_3_6();
          v16(v15);
        }

        break;
      case 704:
        *(DerivedStorage + 41) = 1;
        *(DerivedStorage + 16) = UpTimeNanoseconds;
        break;
      case 705:
        if ((*(DerivedStorage + 40) & 1) == 0)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 88))
          {
            v9 = OUTLINED_FUNCTION_3_6();
            v10(v9);
          }

          *(DerivedStorage + 40) = 1;
          *(DerivedStorage + 24) = v8;
        }

        if (*(DerivedStorage + 41) == 1)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 88))
          {
            v11 = OUTLINED_FUNCTION_2_12();
            v12(v11);
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 64))
          {
            v13 = OUTLINED_FUNCTION_2_12();
            v14(v13);
          }

          *(DerivedStorage + 41) = 0;
        }

        else
        {
          *(DerivedStorage + 32) = v8;
        }

        v18 = *DerivedStorage;
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v19)
        {
          v19(v18, 0x1F0B645F8, 0x1F0B39F98);
        }

        v17 = &_MergedGlobals_18;
LABEL_26:
        OUTLINED_FUNCTION_0_13();
        MEMORY[0x19A8D3660]();
        goto LABEL_27;
      default:
        OUTLINED_FUNCTION_0_13();
        MEMORY[0x19A8D3660]();
        if (a2 != 707)
        {
          goto LABEL_29;
        }

        v17 = &qword_1ED4CA458;
LABEL_27:
        if (*v17)
        {
          v20 = CFRetain(*v17);
LABEL_30:
          result = 0;
          *a3 = v20;
          return result;
        }

LABEL_29:
        v20 = 0;
        goto LABEL_30;
    }

    v17 = &qword_1ED4CA450;
    goto LABEL_26;
  }

  return result;
}