uint64_t figHTTPRequestNSURLSessionSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v16 = 4294954511;
    goto LABEL_22;
  }

  v8 = CFEqual(a2, @"FHRP_ExpectedProgressTarget");
  if (v8)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_2_117(v8, v9, v10, v11, v12, v13, v14, v15, v38);
      a3 = FigNanosecondsToHostTime();
      FigGetContinuousUpTimeNanoseconds();
    }

    [*(v3 + 504) set_expectedProgressTarget:a3];
    goto LABEL_6;
  }

  if (CFEqual(a2, @"FHRP_DefaultLatency"))
  {
    if (a3)
    {
      v17 = CFGetTypeID(a3);
      TypeID = CFNumberGetTypeID();
      if (v17 == TypeID)
      {
        OUTLINED_FUNCTION_2_117(TypeID, v19, v20, v21, v22, v23, v24, v25, v38);
        v16 = 0;
        *(v3 + 248) = 0;
        goto LABEL_22;
      }
    }

LABEL_21:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v16 = v36;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"FHRP_NWActivityCompletionReason"))
  {
    if (a3)
    {
      v26 = CFGetTypeID(a3);
      v27 = CFNumberGetTypeID();
      if (v26 == v27)
      {
        OUTLINED_FUNCTION_2_117(v27, v28, v29, v30, v31, v32, v33, v34, v38);
        v16 = 0;
        *(v3 + 552) = 0;
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (!CFEqual(a2, @"FHRP_IsDormant"))
  {
    v16 = 4294954512;
    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  v35 = CFGetTypeID(a3);
  if (v35 != CFBooleanGetTypeID())
  {
    goto LABEL_21;
  }

  figHTTPSetIsDormant(a1, *MEMORY[0x1E695E4D0] == a3);
LABEL_6:
  v16 = 0;
LABEL_22:
  FigRetainProxyUnlockMutex();
  return v16;
}

uint64_t figHTTPRequestNSURLSessionCopyTaskMetrics(uint64_t a1, void *a2)
{
  result = 4294954516;
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage && (v6 = DerivedStorage, *DerivedStorage))
    {
      FigRetainProxyLockMutex();
      *a2 = v6[32];
      FigRetainProxyUnlockMutex();
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

double figHTTPRequestNSURLSessionCopyByteRangeAsCFDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        if (*DerivedStorage)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v6 = Mutable;
            FigRetainProxyLockMutex();
            FigCFDictionarySetInt64();
            FigCFDictionarySetInt64();
            FigRetainProxyUnlockMutex();
            *a2 = v6;
          }

          else
          {
            OUTLINED_FUNCTION_239();

            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }
  }

  return result;
}

uint64_t figHTTPRequestNSURLSessionPause(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_172(DerivedStorage);
  if (result)
  {
    FigRetainProxyLockMutex();
    if (!*(v1 + 8))
    {
      [*(v1 + 504) suspend];
    }

    return FigRetainProxyUnlockMutex();
  }

  return result;
}

uint64_t figHTTPRequestNSURLSessionResume(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_172(DerivedStorage);
  if (result)
  {
    FigRetainProxyLockMutex();
    if (!*(v1 + 8))
    {
      [*(v1 + 504) resume];
    }

    return FigRetainProxyUnlockMutex();
  }

  return result;
}

uint64_t figHTTPRequestNSURLSessionGetBandwidthInfo(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954516;
  }

  v8 = DerivedStorage;
  if (!*DerivedStorage)
  {
    return 4294954516;
  }

  FigRetainProxyLockMutex();
  if (a2)
  {
    v9 = v8[53];
    if (*(v8 + 432) != 1)
    {
      v9 = v8[50] + v9 - v8[49];
    }

    *a2 = v9;
  }

  if (a3)
  {
    if (!*(v8 + 173) && !*(v8 + 174) || (v10 = v8[31], v10 <= 0))
    {
      v11 = v8[27];
      v12 = v8[25];
      v13 = v11 < v12;
      v10 = v11 - v12;
      if (v13)
      {
        v10 = 0;
      }
    }

    *a3 = v10;
  }

  if (a4)
  {
    v15 = v8[27];
    v14 = v8[28];
    v13 = v14 < v15;
    v16 = v14 - v15;
    if (v13)
    {
      if (v15 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = FigGetUpTimeNanoseconds() - v8[27];
      }
    }

    *a4 = v16;
  }

  FigRetainProxyUnlockMutex();
  return 0;
}

uint64_t figHTTPRequestNSURLSessionGetBufferFilledOffset(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 4294954516;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (DerivedStorage)
        {
          v7 = DerivedStorage;
          if (*DerivedStorage)
          {
            FigRetainProxyLockMutex();
            if (v7[48] == a2)
            {
              v3 = 0;
              *a3 = v7[50];
            }

            FigRetainProxyUnlockMutex();
          }
        }
      }
    }
  }

  return v3;
}

uint64_t figHTTPRequestNSURLSessionCopyTransactionMetrics(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, _BYTE *a9, void *a10, _DWORD *a11, void *a12, void *a13)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !OUTLINED_FUNCTION_172(DerivedStorage))
  {
    return 4294954516;
  }

  FigRetainProxyLockMutex();
  if (a2)
  {
    *a2 = *(v13 + 264);
  }

  if (a3)
  {
    *a3 = *(v13 + 272);
  }

  if (a4)
  {
    *a4 = *(v13 + 280);
  }

  if (a5)
  {
    *a5 = *(v13 + 288);
  }

  if (a6)
  {
    *a6 = *(v13 + 296);
  }

  if (a7)
  {
    *a7 = *(v13 + 304);
  }

  if (a8)
  {
    *a8 = *(v13 + 312);
  }

  if (a9)
  {
    *a9 = *(v13 + 320);
  }

  if (a10)
  {
    *a10 = *(v13 + 328);
  }

  if (a11)
  {
    *a11 = *(v13 + 336);
  }

  if (a12)
  {
    v22 = *(v13 + 352);
    if (v22)
    {
      nw_retain(v22);
      v23 = *(v13 + 352);
    }

    else
    {
      v23 = 0;
    }

    *a12 = v23;
  }

  if (a13)
  {
    v24 = *(v13 + 344);
    if (v24)
    {
      nw_retain(v24);
      v25 = *(v13 + 344);
    }

    else
    {
      v25 = 0;
    }

    *a13 = v25;
  }

  FigRetainProxyUnlockMutex();
  return 0;
}

BOOL _FigHTTPRequestCreateWithNSURLSession_cold_21(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void inEndpointStreamUtil_createSyncContext_cold_1(void *a1, uint64_t a2, void *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  if (v5)
  {
    free(a1);
    a1 = 0;
  }

  *a3 = a1;
}

const void *MTSidebandVideoPropertiesGetValueForKey(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    return CFDictionaryGetValue(*(a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

void MTSidebandVideoPropertiesCreateMutable_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v4);
  *a2 = v5;

  CFRelease(a1);
}

void MTSidebandVideoPropertiesCreateMutable_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesCreateMutable_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesCopyAsDictionary_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesCopyAsDictionary_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesCopyAsDictionary_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesCreateFromDictionary_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesCreateFromDictionary_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesSetValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesSetValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesSetValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesSetValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesRemoveValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesRemoveValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void MTSidebandVideoPropertiesRemoveValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntryInProcess(const void *a1, const void *Value, const __CFURL *a3, uint64_t a4, __CFArray **a5, void *a6, double a7)
{
  v90 = 0;
  v91 = 0;
  v89[0] = a3;
  v89[1] = a4;
  if (!CFEqual(a1, @"com.apple.hls.chapters"))
  {
    return 0;
  }

  if (!Value)
  {
    createErrorLogEntry(v89, "chapter data contains no data");
    v56 = v61;
    v15 = 0;
LABEL_97:
    v16 = 0;
LABEL_105:
    OUTLINED_FUNCTION_3_94();
    Mutable = 0;
    goto LABEL_65;
  }

  v7 = *MEMORY[0x1E695E480];
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], a3);
  v15 = PathComponent;
  if (!PathComponent)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v68, v70);
    v56 = v62;
    goto LABEL_97;
  }

  v16 = FigCFHTTPCreateURLString(PathComponent);
  if (!v16)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v68, v70);
LABEL_104:
    v56 = v63;
    goto LABEL_105;
  }

  v17 = CFGetTypeID(Value);
  if (v17 != CFDictionaryGetTypeID())
  {
    v63 = FigSessionDataParseJSONChapter(v89, Value, v16, a5, a7);
    goto LABEL_104;
  }

  if (CFDictionaryContainsKey(Value, @"chapters"))
  {
    Value = CFDictionaryGetValue(Value, @"chapters");
  }

  v18 = CFDictionaryGetValue(Value, @"chapter-list");
  if (!v18)
  {
    v64 = "Chapter array missing";
LABEL_103:
    createErrorLogEntry(v89, v64);
    goto LABEL_104;
  }

  v19 = v18;
  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(v19))
  {
    v64 = "Chapter array is not an array";
    goto LABEL_103;
  }

  v67 = v8;
  v69 = a5;
  v21 = CFDictionaryGetValue(Value, @"locales");
  if (v21)
  {
    v22 = CFArrayGetTypeID();
    if (v22 != CFGetTypeID(v21))
    {
      v64 = "locale array is not an array";
      goto LABEL_103;
    }
  }

  v84 = v16;
  v23 = CFDictionaryGetValue(Value, @"nominal-image-resolutions");
  if (v23)
  {
    v24 = CFArrayGetTypeID();
    if (v24 != CFGetTypeID(v23))
    {
      createErrorLogEntry(v89, "image resolution array is not an array");
      v56 = v65;
      OUTLINED_FUNCTION_3_94();
      Mutable = 0;
      goto LABEL_87;
    }
  }

  v71 = v15;
  v73 = a6;
  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(v19);
  if (Count < 1)
  {
LABEL_62:
    v16 = v84;
    OUTLINED_FUNCTION_3_94();
    v56 = 0;
    if (v69)
    {
      *v55 = Mutable;
      Mutable = 0;
    }

    v15 = v71;
    a6 = v73;
    goto LABEL_65;
  }

  v26 = 0;
  v27 = 0;
  key = @"ChapterTime";
  v78 = @"ChapterDuration";
  v82 = @"comn";
  v83 = @"title";
  v74 = @"ChapterMetadataItems";
  v75 = v19;
  v28 = 0.0;
  theArray = Mutable;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v26);
    memset(&v88, 0, sizeof(v88));
    memset(&v87, 0, sizeof(v87));
    valuePtr = 0.0;
    if (ValueAtIndex)
    {
      break;
    }

    ++v26;
LABEL_61:
    if (v26 == Count)
    {
      goto LABEL_62;
    }
  }

  v30 = ValueAtIndex;
  a5 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v69, v71);
    v56 = v60;
    v7 = 0;
    v15 = v72;
    a6 = v73;
LABEL_87:
    v16 = v84;
    goto LABEL_65;
  }

  v31 = CFDictionaryGetValue(v30, @"start");
  if (!v31)
  {
    v58 = "Missing start time for chapter metadata";
    goto LABEL_83;
  }

  v32 = v31;
  v33 = CFStringGetTypeID();
  if (v33 == CFGetTypeID(v32))
  {
    DoubleValue = CFStringGetDoubleValue(v32);
    valuePtr = DoubleValue;
  }

  else
  {
    v35 = CFNumberGetTypeID();
    if (v35 != CFGetTypeID(v32))
    {
      v58 = "illegal type for start time for chapter metadata";
      goto LABEL_83;
    }

    if (!CFNumberGetValue(v32, kCFNumberDoubleType, &valuePtr))
    {
      v58 = "illegal number for start time for chapter metadata";
      goto LABEL_83;
    }

    DoubleValue = valuePtr;
  }

  if (DoubleValue < 0.0)
  {
    v58 = "Negative start time not allowed.";
    goto LABEL_83;
  }

  CMTimeMakeWithSeconds(&v87, DoubleValue, 100000);
  v36 = OUTLINED_FUNCTION_1_120(v87.epoch, v67, v69, v71, v73, v74, v75, key, theArray, v78, theDict, Count, v82, v83, v84, v87.value, *&v87.timescale, v85.epoch);
  CFDictionaryAddValue(a5, key, v36);
  if (v36)
  {
    CFRelease(v36);
  }

  if (v27)
  {
    if (valuePtr > v28)
    {
      CMTimeMakeWithSeconds(&v88, valuePtr - v28, 100000);
      v37 = OUTLINED_FUNCTION_1_120(v88.epoch, v67, v69, v71, v73, v74, v75, key, theArray, v78, theDicta, Count, v82, v83, v84, v88.value, *&v88.timescale, v85.epoch);
      CFDictionaryAddValue(v27, v78, v37);
      if (v37)
      {
        CFRelease(v37);
      }

      goto LABEL_32;
    }

    v58 = "Chapter starts before previous chapter";
LABEL_83:
    createErrorLogEntry(v89, v58);
    v56 = v59;
    v7 = 0;
    v15 = v71;
    a6 = v73;
    v16 = v84;
    Mutable = theArray;
    goto LABEL_65;
  }

LABEL_32:
  v28 = valuePtr;
  if (++v26 != Count)
  {
    goto LABEL_36;
  }

  if (valuePtr >= a7)
  {
    v58 = "last chapter start time exceeds playlist duration";
    goto LABEL_83;
  }

  CMTimeMakeWithSeconds(&v85, a7 - valuePtr, 1000000);
  v88 = v85;
  v38 = OUTLINED_FUNCTION_1_120(v85.epoch, v67, v69, v71, v73, v74, v75, key, theArray, v78, theDicta, Count, v82, v83, v84, v85.value, *&v85.timescale, v85.epoch);
  CFDictionaryAddValue(a5, v78, v38);
  if (v38)
  {
    CFRelease(v38);
  }

LABEL_36:
  theDict = a5;
  v39 = CFDictionaryGetValue(v30, @"titles");
  a5 = v7;
  v7 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (v7)
  {
    if (v21 && v39 && CFArrayGetCount(v21) >= 1)
    {
      v40 = 0;
      do
      {
        v41 = CFArrayGetValueAtIndex(v21, v40);
        if (v41)
        {
          v42 = v41;
          v43 = CFDictionaryGetValue(v39, v41);
          if (v43)
          {
            ChapterMetadataArtworkItem = createMetadataItem(v83, v43, v42, v82, &v91);
            if (ChapterMetadataArtworkItem)
            {
              goto LABEL_85;
            }

            v45 = v91;
            CFArrayAppendValue(v7, v91);
            if (v45)
            {
              CFRelease(v45);
              v91 = 0;
            }
          }
        }

        ++v40;
      }

      while (v40 < CFArrayGetCount(v21));
    }

    v46 = CFDictionaryGetValue(v30, @"images");
    if (v23)
    {
      v47 = v46;
      if (v46)
      {
        if (CFArrayGetCount(v23) >= 1)
        {
          for (i = 0; i < CFArrayGetCount(v23); ++i)
          {
            v49 = CFArrayGetValueAtIndex(v23, i);
            if (v49)
            {
              v50 = v49;
              v85.value = 0;
              v51 = CFDictionaryGetValue(v47, v49);
              if (!v51 || (v52 = v51, v53 = CFGetTypeID(v51), v53 != CFDictionaryGetTypeID()))
              {
                createErrorLogEntry(v89, "images entry is not a dictionary");
                goto LABEL_85;
              }

              ChapterMetadataArtworkItem = createChapterMetadataArtworkItem(v89, v50, v52, v84, &v85);
              if (ChapterMetadataArtworkItem)
              {
                goto LABEL_85;
              }

              v54 = v85.value;
              CFArrayAppendValue(v7, v85.value);
              if (v54)
              {
                CFRelease(v54);
              }
            }
          }
        }
      }
    }

    v27 = theDict;
    if (CFArrayGetCount(v7) >= 1)
    {
      CFDictionaryAddValue(theDict, v74, v7);
    }

    CFRelease(v7);
    Mutable = theArray;
    CFArrayAppendValue(theArray, theDict);
    CFRelease(theDict);
    v7 = a5;
    v19 = v75;
    goto LABEL_61;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_3();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v69, v71);
LABEL_85:
  v56 = ChapterMetadataArtworkItem;
  v15 = v71;
  a6 = v73;
  v16 = v84;
  Mutable = theArray;
  a5 = theDict;
LABEL_65:
  if (v91)
  {
    CFRelease(v91);
  }

  if (a5)
  {
    CFRelease(a5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (a6)
  {
    *a6 = v90;
  }

  else if (v90)
  {
    CFRelease(v90);
  }

  return v56;
}

void FigSessionDataParseJSONChapter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSessionDataParseJSONChapter_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void createMetadataItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void createChapterMetadataArtworkItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigHLSSessionDataCopyMetadataEntryInProcess_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sdpp_AddMetadataItemToChapterDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigDCP_FindAtomData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a4 | a5)
  {
    if (FigAtomStreamInitWithByteStream())
    {
      return result;
    }

    while (1)
    {
      if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
      {
        return result;
      }

      if (!a3)
      {
        break;
      }

      if (FigAtomStreamAdvanceToNextAtom())
      {
        return result;
      }
    }

    if (a4)
    {
      CurrentAtomDataGlobalOffset = FigAtomStreamGetCurrentAtomDataGlobalOffset();
      if (!a5 || CurrentAtomDataGlobalOffset)
      {
        return result;
      }
    }

    else if (!a5)
    {
      return result;
    }

    *a5 = 0;
    return result;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954424, "<<<< FDCP_Limited >>>>", 353, v5);
}

uint64_t FigDCP_CopyAtomDataFromCacheFile(uint64_t a1, uint64_t a2, int a3, __CFData **a4)
{
  capacity = 0;
  v16 = 0;
  FigDCP_FindAtomData(a1, a2, a3, &v16, &capacity);
  if (v6)
  {
    return v6;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
  if (!Mutable)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", capacity, v16, v17);
    return v6;
  }

  v8 = Mutable;
  CFDataSetLength(Mutable, capacity);
  v9 = capacity;
  v10 = v16;
  MutableBytePtr = CFDataGetMutableBytePtr(v8);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_7;
  }

  v13 = v12(a1, v9, v10, MutableBytePtr, 0);
  if (v13)
  {
LABEL_7:
    CFRelease(v8);
    return v13;
  }

  *a4 = v8;
  return v13;
}

uint64_t FigDCP_CopyIDFromCacheFile(uint64_t a1, uint64_t a2, void *a3)
{
  data = 0;
  v4 = FigDCP_CopyAtomDataFromCacheFile(a1, a2, 1937008996, &data);
  if (v4)
  {
    return v4;
  }

  v5 = data;
  v6 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], data, 0, 0, 0);
  *a3 = v6;
  if (v6)
  {
    v7 = 0;
    if (!v5)
    {
      return v7;
    }

    goto LABEL_6;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, data, v12);
  v7 = v8;
  if (v5)
  {
LABEL_6:
    CFRelease(v5);
  }

  return v7;
}

double FigDCP_GetCacheFileVersion(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_4_96(a1, a2, a3, a4, a5, a6, a7, a8, v14, v16, v17, v18);
  if (!v11)
  {
    if (v17 == 4)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v12)
      {
        v13 = v12(a1, 4, v18, &v16 + 4, 0);
        if (a3)
        {
          if (!v13)
          {
            *a3 = bswap32(HIDWORD(v16));
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
    }
  }

  return result;
}

uint64_t FigDCP_InitializeDiskCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v34 = *MEMORY[0x1E69E9840];
  cf = 0;
  v32 = 0;
  v5 = (v3 + 40);
  if (*(v3 + 40))
  {
LABEL_46:
    v12 = 0;
    goto LABEL_43;
  }

  v6 = v4;
  v7 = v3;
  *(v3 + 90) = 1;
  v8 = FigShared_CopyDiskCacheParams(*(v3 + 8));
  if (v8)
  {
LABEL_52:
    v12 = v8;
    goto LABEL_43;
  }

  v10 = (v7 + 32);
  v9 = *(v7 + 32);
  if (v9)
  {
    CFRelease(v9);
    *v10 = 0;
  }

  v11 = FigShared_CheckOutOfDiskCache(*(v7 + 8));
  v12 = v11;
  if (v6 || !v11)
  {
    if (v11)
    {
LABEL_11:
      if (*v10 && cf)
      {
        FigShared_CheckIntoDiskCache(*(v7 + 8));
      }

      v19 = *(v7 + 64);
      if (v19)
      {
        CFRelease(v19);
        *(v7 + 64) = 0;
      }

      if (*v10)
      {
        CFRelease(*v10);
        *v10 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
LABEL_20:
        cf = 0;
      }

LABEL_21:
      if (*(v7 + 64))
      {
        goto LABEL_43;
      }

      bzero(v33, 0x2000uLL);
      *(v7 + 72) = 0x200000000002;
      if (*(v7 + 40))
      {
        if (*(v7 + 48))
        {
          CFRelease(*(v7 + 48));
          *(v7 + 48) = 0;
        }

        FigFileForkClose();
        *v5 = 0;
      }

      if (*v10)
      {
        CFRelease(*v10);
        *v10 = 0;
      }

      FigDCP_NewDiskCacheFile(v32, *(v7 + 90), (v7 + 32), v5);
      v12 = v20;
      if (v20)
      {
        if (v20 == 69 || v20 == 28)
        {
          FigShared_MakeRoomInDiskCache(*(v7 + 8));
        }

        goto LABEL_43;
      }

      v8 = FigByteStreamCreateFromOpenFile();
      if (!v8)
      {
        v22 = *(v7 + 48);
        v23 = *(v7 + 76);
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v24)
        {
          v12 = 4294954514;
          goto LABEL_43;
        }

        v8 = v24(v22, v23, 0, v33, 0);
        if (!v8)
        {
          v8 = FigShared_CheckIntoAndOutOfDiskCache(*(v7 + 8));
          if (!v8)
          {
            v25 = *v7;
            *v7 = cf;
            if (v25)
            {
              CFRelease(v25);
            }

            goto LABEL_46;
          }
        }
      }

      goto LABEL_52;
    }

    v13 = FigFileForkOpenMainByCFURL();
    if (v13)
    {
      goto LABEL_10;
    }

    v13 = FigByteStreamCreateFromOpenFile();
    if (v13)
    {
      goto LABEL_10;
    }

    FigDCP_GetCacheFileVersion(*(v7 + 48), 0, (v7 + 72), v14, v15, v16, v17, v18);
    if (v13)
    {
      goto LABEL_10;
    }

    v27 = *(v7 + 72);
    if (v27 == 1)
    {
      v28 = 4096;
    }

    else
    {
      if (v27 != 2)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 0, 0);
        if (!v13)
        {
          goto LABEL_56;
        }

LABEL_10:
        v12 = v13;
        goto LABEL_11;
      }

      v28 = 0x2000;
    }

    *(v7 + 76) = v28;
LABEL_56:
    v13 = FigDCP_CopyIDFromCacheFile(*(v7 + 48), 0, (v7 + 64));
    if (!v13)
    {
      FigDCP_FindAtomData(*(v7 + 48), 0, 1937007475, 0, v7 + 24);
      if (!v13)
      {
        v29 = *v7;
        *v7 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        if (cf)
        {
          CFRelease(cf);
          v12 = 0;
          goto LABEL_20;
        }

        v12 = 0;
        goto LABEL_21;
      }
    }

    goto LABEL_10;
  }

LABEL_43:
  if (v32)
  {
    CFRelease(v32);
  }

  return v12;
}

void FigLimitedDiskCacheProvider_SetProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_16;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 88))
  {
    goto LABEL_16;
  }

  if (CFEqual(a2, @"CacheIdentifier"))
  {
    v11 = CFGetAllocator(a1);
    if (FigDCP_InitializeDiskCache(v7, v11, 1))
    {
      return;
    }

    if (*(v7 + 40))
    {
      v12 = *(v7 + 64);
      if (v12)
      {
        CFRelease(v12);
      }

      if (a3)
      {
        v13 = CFRetain(a3);
      }

      else
      {
        v13 = 0;
      }

      *(v7 + 64) = v13;
      return;
    }

LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return;
  }

  if (!CFEqual(a2, @"CacheMap"))
  {
    if (CFEqual(a2, @"CacheBlockSize"))
    {
      if (a3)
      {
        v8 = CFGetTypeID(a3);
        if (v8 == CFNumberGetTypeID())
        {
          v9 = (v7 + 80);
LABEL_14:
          CFNumberGetValue(a3, kCFNumberSInt32Type, v9);
          return;
        }
      }
    }

    else if (CFEqual(a2, @"CacheMapEntrySize"))
    {
      if (a3)
      {
        v10 = CFGetTypeID(a3);
        if (v10 == CFNumberGetTypeID())
        {
          v9 = (v7 + 84);
          goto LABEL_14;
        }
      }
    }

    else
    {
      if (CFEqual(a2, @"CacheSize") || !CFEqual(a2, @"NoPersistentCache"))
      {
        return;
      }

      if (a3)
      {
        v31 = CFGetTypeID(a3);
        if (v31 == CFBooleanGetTypeID())
        {
          *(v7 + 91) = CFBooleanGetValue(a3);
          return;
        }
      }
    }

    goto LABEL_16;
  }

  v14 = CFGetAllocator(a1);
  if (FigDCP_InitializeDiskCache(v7, v14, 1))
  {
    return;
  }

  v15 = *(v7 + 40);
  if (!v15)
  {
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_65:
    FigDCP_TruncateFile(v15, 0);
    *(v7 + 24) = 0;
    return;
  }

  v16 = CFGetTypeID(a3);
  if (v16 != CFDataGetTypeID())
  {
    goto LABEL_16;
  }

  v47 = 0;
  cf = 0;
  v17 = bswap32(*(v7 + 72));
  v45 = 0;
  v46 = 0;
  v44 = v17;
  v18 = *(v7 + 24);
  err = 0;
  v19 = *MEMORY[0x1E695E480];
  v20 = FigByteStreamCreateFromOpenFile();
  if (v20)
  {
    goto LABEL_78;
  }

  v21 = v18 - 4294967288;
  if (v21 >= 0xFFFFFFFF00000000)
  {
    v22 = -8;
  }

  else
  {
    v22 = -16;
  }

  v47 = bswap32(*(v7 + 76) + v22) | 0x6965726600000000;
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v23)
  {
    goto LABEL_58;
  }

  v20 = v23(cf, 8, 0, &v47, 0);
  if (v20)
  {
    goto LABEL_78;
  }

  if (v21 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v45 = 0x7363747301000000;
    v46 = bswap64(*(v7 + 24) + 16);
    v24 = cf;
    v25 = *(v7 + 76);
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v26)
    {
      v27 = v25 - 16;
      v28 = &v45;
      v29 = v24;
      v30 = 16;
      goto LABEL_51;
    }

LABEL_58:
    Code = -12782;
    goto LABEL_59;
  }

  v47 = bswap32(*(v7 + 24) + 8) | 0x7363747300000000;
  v32 = cf;
  v33 = *(v7 + 76);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v26)
  {
    goto LABEL_58;
  }

  v27 = v33 - 8;
  v28 = &v47;
  v29 = v32;
  v30 = 8;
LABEL_51:
  Code = v26(v29, v30, v27, v28, 0);
  if (Code)
  {
    goto LABEL_59;
  }

  FigDCP_TruncateFile(*(v7 + 40), *(v7 + 24) + *(v7 + 76));
  if (v20)
  {
    goto LABEL_78;
  }

  v35 = CFPropertyListCreateData(v19, *(v7 + 64), kCFPropertyListXMLFormat_v1_0, 0, &err);
  if (!err)
  {
    if (v35)
    {
      HIDWORD(v47) = 1684632691;
      LODWORD(v47) = CFDataGetLength(v35) + 8;
      v37 = cf;
      BytePtr = CFDataGetBytePtr(v35);
      FigDCP_WriteAtomToFile(v37, &v47, BytePtr);
      if (!v39)
      {
        HIDWORD(v47) = 1953723507;
        LODWORD(v47) = CFDataGetLength(a3) + 8;
        v40 = cf;
        v41 = CFDataGetBytePtr(a3);
        FigDCP_WriteAtomToFile(v40, &v47, v41);
        if (!v39)
        {
          v47 = 0x7A7265760000000CLL;
          FigDCP_WriteAtomToFile(cf, &v47, &v44);
        }
      }

      Code = v39;
      goto LABEL_72;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", err, v43, v45);
LABEL_78:
    Code = v20;
    goto LABEL_59;
  }

  v36 = CFErrorCopyFailureReason(err);
  Code = CFErrorGetCode(err);
  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
LABEL_72:
    CFRelease(v35);
  }

LABEL_59:
  if (cf)
  {
    CFRelease(cf);
  }

  if (err)
  {
    CFRelease(err);
  }

  if (Code)
  {
    v15 = *(v7 + 40);
    goto LABEL_65;
  }
}

double FigDCP_GetCacheSizeLimit(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  theArray = 0;
  if (a2)
  {
    if (!FigShared_CopyDiskCacheParams(*(a1 + 8)) && !FigShared_GetCacheFileSize(*(a1 + 8)))
    {
      v6 = FigShared_CopyDiskCacheCheckedInIDs(*(a1 + 8), &theArray);
      v7 = theArray;
      if (!v6)
      {
        if (theArray && CFArrayGetCount(theArray) >= 1)
        {
          v8 = 0;
          do
          {
            CFArrayGetValueAtIndex(theArray, v8);
            if (!FigShared_GetCacheFileSize(*(a1 + 8)))
            {
              v18 -= v15;
            }

            ++v8;
          }

          while (v8 < CFArrayGetCount(theArray));
        }

        v9 = v18;
        if (v18 < 0)
        {
          v9 = 0;
          v18 = 0;
        }

        v10 = ((v17 - v9) & ~((v17 - v9) >> 63)) + v14;
        if (v10 >= v16)
        {
          v10 = v16;
        }

        *a2 = v10;
        v7 = theArray;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954424, "<<<< FDCP_Limited >>>>", 734, v2);
  }

  return result;
}

double FigDCP_WriteAtomToFile(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v24 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v6 = 0;
    do
    {
      v7 = OUTLINED_FUNCTION_3_95();
      if (v8(v7))
      {
        break;
      }

      v9 = v24;
      v10 = bswap32(v24);
      LODWORD(v24) = v10;
      if (v9 != 0x1000000 && v10 <= 7)
      {
        goto LABEL_28;
      }

      if (HIDWORD(v24) == 1768256102)
      {
        v12 = *a2;
        if (v10 == v12)
        {
          break;
        }

        if (v12 + 8 <= v10)
        {
          v18 = v10 - v12;
          LODWORD(v24) = bswap32(v10 - v12);
          VTable = CMBaseObjectGetVTable();
          if (*(*(VTable + 16) + 16))
          {
            v21 = OUTLINED_FUNCTION_3_95();
            if (!v22(v21))
            {
              v6 += v18;
              break;
            }
          }

          return result;
        }
      }

      else if (v9 == 0x1000000)
      {
        v23 = 0;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v13 || v13(a1, 8, v6 + 8, &v23, 0))
        {
          return result;
        }

        v10 = bswap64(v23);
        v23 = v10;
        if (v10 <= 0xF)
        {
LABEL_28:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_4();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }

      v6 += v10;
    }

    while (*(*(CMBaseObjectGetVTable() + 16) + 8));
  }

  else
  {
    v6 = 0;
  }

  v14 = *a2;
  *a2 = bswap32(v14);
  if (*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v15 = OUTLINED_FUNCTION_3_95();
    if (!v16(v15))
    {
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v17)
      {
        v17(a1, v14 - 8, v6 + 8, a3, 0);
      }
    }
  }

  return result;
}

uint64_t FigLimitedDiskCacheProvider_GetBacking(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88) || !(a4 | a5))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return 0;
  }

  v10 = DerivedStorage;
  v11 = CFGetAllocator(a1);
  if (FigDCP_InitializeDiskCache(v10, v11, 1) || !*(v10 + 40) || *(v10 + 89))
  {
    return 0;
  }

  v12 = *(v10 + 24) + a2;
  v13 = *(v10 + 80);
  v14 = v12 + *(v10 + 76);
  if (v13)
  {
    v15 = *(v10 + 84);
    if (v15)
    {
      v14 += (v12 + v13 - 1) / v13 * v15;
    }
  }

  if (FigShared_ReserveDiskCacheBacking(*(v10 + 8), *v10, v14))
  {
    return 0;
  }

  v17 = *(v10 + 56);
  v18 = *(v10 + 24) + a2;
  v19 = v18 + *(v10 + 76);
  v20 = v17 - 0x100000;
  v21 = (v18 + *(v10 + 80) - 1) / *(v10 + 80);
  do
  {
    v22 = *(v10 + 84);
    v23 = v19;
    if (v22)
    {
      v23 = v19 + v21 * v22;
    }

    v20 += 0x100000;
  }

  while (v23 > v20);
  if (v20 > v17)
  {
    *(v10 + 56) = v20;
    FigDCP_TruncateFile(*(v10 + 40), v20);
    if (v24 == 69 || v24 == 28)
    {
      result = 0;
      *(v10 + 89) = 1;
      return result;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (a4)
  {
    *a4 = *(v10 + 40);
  }

  v26 = *(v10 + 24);
  if (a5)
  {
    *a5 = v26 + *(v10 + 76);
    v26 = *(v10 + 24);
  }

  *(v10 + 24) = v26 + a2;
  return 1;
}

uint64_t FigLimitedDiskCacheProvider_GetBackingFile(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  FigDCP_InitializeDiskCache(DerivedStorage, v3, 1);
  return *(DerivedStorage + 40);
}

void FigLimitedDiskCacheProviderCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigLimitedDiskCacheProviderCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigLimitedDiskCacheProvider_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigLimitedDiskCacheProvider_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDCP_NewDiskCacheFile_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDCP_NewDiskCacheFile_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void serializeOneAttributeToCSSProperty(void *key, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) || !*a3)
  {
    return;
  }

  Value = CFDictionaryGetValue(*a3, key);
  if (!Value)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    Mutable = 0;
    goto LABEL_16;
  }

  v6 = Value;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949414, "(Fig)", 161);
    goto LABEL_16;
  }

  v8 = v6(a2, Mutable);
  if (v8)
  {
LABEL_17:
    *(a3 + 16) = v8;
LABEL_18:
    if (!Mutable)
    {
      return;
    }

    goto LABEL_9;
  }

  v9 = CFDictionaryGetValue(Mutable, @"name");
  v10 = CFDictionaryGetValue(Mutable, @"value");
  if (!v9)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949403, "(Fig)", 169);
    goto LABEL_16;
  }

  if (!v10)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949403, "(Fig)", 170);
LABEL_16:
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  CFStringAppendFormat(*(a3 + 8), 0, @"%@:%@;\n", v9, v10);
LABEL_9:

  CFRelease(Mutable);
}

double FigDCP_CheckCacheFileVersion(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = FigDCP_FindAtomData(a1, a2, 1986359930, &v11, &v10);
  if (!v4)
  {
    if (v10 != 4 || (v5 = v11, (v6 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0) && !v6(a1, 4, v5, &v9, 0) && v9 != 0x1000000)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v10);
    }
  }

  return result;
}

BOOL FigDCP_IsFileEmpty(uint64_t a1, void *a2)
{
  number = 0;
  cf = 0;
  valuePtr = 0;
  v3 = *MEMORY[0x1E695E480];
  if (FigByteStreamCreateFromOpenFile() || (CMBaseObject = CMByteStreamGetCMBaseObject(), (v5 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v5(CMBaseObject, *MEMORY[0x1E695FF78], v3, &number))
  {
    v6 = 0;
  }

  else
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    v6 = valuePtr == 0;
    if (a2)
    {
      *a2 = valuePtr;
    }
  }

  if (number)
  {
    CFRelease(number);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void FigDCP_RemoveCacheMap(uint64_t a1, off_t a2)
{
  FigSimpleMutexLock();
  v4 = CFDictionaryContainsKey(_MergedGlobals_86, *(a1 + 8));
  FigSimpleMutexUnlock();
  if (!v4 && *(a1 + 24))
  {
    DarwinFileDesc = FigFileGetDarwinFileDesc();
    fremovexattr(DarwinFileDesc, "com.apple.coremedia.cachemap.offset", 0);
    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 32) = 0;
    }

    v7 = *(a1 + 24);

    FigDCP_TruncateFile(v7, a2);
  }
}

void FigFullDownloadDiskCacheProviderCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFullDownloadDiskCacheProviderCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFullDownloadDiskCacheProviderCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFullDownloadDiskCacheProviderCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFullDownloadDiskCacheProviderCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFullDownloadDiskCacheProviderCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFullDownloadDiskCacheProvider_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFullDownloadDiskCacheProvider_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigFullDownloadDiskCacheProvider_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigFullDownloadDiskCacheProvider_SetProperty_cold_2(uint64_t a1, CFNumberRef number)
{
  CFNumberGetValue(number, kCFNumberSInt64Type, (a1 + 16));
  bzero(&v7, 0x90uLL);
  DarwinFileDesc = FigFileGetDarwinFileDesc();
  v4 = *(a1 + 16);
  result = fstat(DarwinFileDesc, &v7);
  if (!result)
  {
    v4 = *(a1 + 16) - (v7.st_blocks << 9);
  }

  if (v4 >= 1 && v4 <= *(a1 + 16))
  {
    v6[0] = 0x300000008;
    v6[1] = 0;
    v6[2] = v4;
    v6[3] = 0;
    return fcntl(DarwinFileDesc, 42, v6);
  }

  return result;
}

void FigFullDownloadDiskCacheProvider_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDCP_WriteOutCacheFile_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigFullDownloadDiskCacheProvider_GetBacking_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigFullDownloadDiskCacheProvider_GetBacking_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t FigByteStreamFactoryCreateStreamFromURLWithOptions(const __CFURL *a1, unsigned int a2, const __CFDictionary *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  cf = 0;
  if (_MergedGlobals_87 != -1)
  {
    dispatch_once_f(&_MergedGlobals_87, 0, fbsfCompletionRegisterClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, a8);
    v26 = v28;
    v17 = 0;
    goto LABEL_33;
  }

  v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v17 || (v18 = FigSemaphoreCreate(), (*(Instance + 40) = v18) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_45:
    v26 = v29;
    goto LABEL_33;
  }

  cf = CFRetain(v17);
  *(Instance + 64) = a7 != 0;
  if (FigThreadRegisterAbortAction())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_45;
  }

  CFRetain(v17);
  StreamFromURLWithOptionsAsync = FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync(a1, a2, a3, fbsf_createStreamFromURL_callback, v17);
  if (StreamFromURLWithOptionsAsync)
  {
    v26 = StreamFromURLWithOptionsAsync;
    CFRelease(v17);
LABEL_48:
    FigThreadUnregisterAbortAction();
    goto LABEL_33;
  }

  v20 = FigSemaphoreWaitRelative();
  if (v20)
  {
    v26 = v20;
    goto LABEL_48;
  }

  FigThreadUnregisterAbortAction();
  if (((a2 >> 5) & 0x1E) != 0 && *(Instance + 48) && !FigIsReferenceAllowedBySecurityPolicy())
  {
    v26 = 4294955014;
    *(Instance + 24) = -12282;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v8, a8);
  }

  else
  {
    if (a4)
    {
      v21 = *(Instance + 16);
      if (v21)
      {
        v21 = CFRetain(v21);
      }

      *a4 = v21;
    }

    if (a8)
    {
      v22 = *(Instance + 32);
      if (v22)
      {
        v22 = CFRetain(v22);
      }

      *a8 = v22;
    }

    if (a5)
    {
      v23 = *(Instance + 48);
      if (v23)
      {
        v23 = CFRetain(v23);
      }

      *a5 = v23;
    }

    if (a6)
    {
      v24 = *(Instance + 56);
      if (v24)
      {
        v24 = CFRetain(v24);
      }

      *a6 = v24;
    }

    if (a7)
    {
      v25 = *(Instance + 72);
      if (v25)
      {
        v25 = CFRetain(v25);
      }

      *a7 = v25;
    }

    v26 = *(Instance + 24);
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v26;
}

void fbsfCreateStreamAbortHandler(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    *(a1 + 8) = -12785;
    FigSemaphoreSignal();

    CFRelease(v3);
  }
}

void fbsf_createStreamFromURL_callback(const void *a1, const void *a2, int Code, const void *a4, const void *a5, const void *a6)
{
  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  if (a2)
  {
    CFRetain(a2);
    *(v13 + 16) = a2;
    if (Code)
    {
      if (!a4)
      {
LABEL_27:
        CMBaseObject = CMByteStreamGetCMBaseObject();
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          v20(CMBaseObject, *MEMORY[0x1E6960DD8], *MEMORY[0x1E695E480], v13 + 32);
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }

    cf = 0;
    if (*(v13 + 64))
    {
      v14 = CMByteStreamGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, @"CRABS_ReadAheadAssertion", 0, v13 + 72);
      }
    }

    v16 = CMByteStreamGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      Code = v17(v16, *MEMORY[0x1E695FF78], 0, &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      Code = -12782;
    }
  }

  if (Code)
  {
    if (a4)
    {
LABEL_15:
      *(v13 + 32) = CFRetain(a4);
      goto LABEL_16;
    }

    if (a2)
    {
      goto LABEL_27;
    }
  }

LABEL_16:
  v18 = *(v13 + 32);
  if (v18)
  {
    Code = CFErrorGetCode(v18);
  }

  *(v13 + 24) = Code;
  if (a5)
  {
    *(v13 + 48) = CFRetain(a5);
  }

  if (a6)
  {
    *(v13 + 56) = CFRetain(a6);
  }

  FigSemaphoreSignal();
  CFRelease(v13);
LABEL_23:
  if (a1)
  {
    CFRelease(a1);
  }
}

void fbfs_FigHTTPOpenCallback(uint64_t a1, uint64_t a2, int a3)
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  FigThreadUnregisterAbortAction();
  if (*(a1 + 48))
  {
    v5 = *MEMORY[0x1E695E480];
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v6 = OUTLINED_FUNCTION_188();
      v7(v6);
    }

    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v8 = OUTLINED_FUNCTION_188();
      v9(v8);
    }

    if (!a3)
    {
      goto LABEL_12;
    }

    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v10 = OUTLINED_FUNCTION_188();
      v11(v10);
    }

    if (*(a1 + 92))
    {
      a3 = *(a1 + 96);
    }

    if (!a3)
    {
LABEL_12:
      v12 = *(a1 + 48);
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(v12, @"FBF_EntireLengthAvailableOnDemand", v5, &v27);
      }

      v14 = *MEMORY[0x1E695E4D0];
      if (v27 == *MEMORY[0x1E695E4D0])
      {
        Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v23 = Mutable;
        if ((*(a1 + 72) & 0x10) != 0)
        {
          CFDictionarySetValue(Mutable, @"DoNotLogURLs", v14);
        }

        LOWORD(a3) = FigByteStreamCreateForByteFlume(*(a1 + 48), v5, v23, &v28);
        if (v23)
        {
          CFRelease(v23);
        }
      }

      else
      {
        if ((*(a1 + 72) & 4) != 0)
        {
          if (*(a1 + 32))
          {
            FigDiskCacheProviderGetFigBaseObject();
            v16 = v15;
            v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v17)
            {
              v17(v16, @"NoPersistentCache", v14);
            }
          }
        }

        FigCRABSCreate(*(a1 + 48), 0, *(a1 + 56), *(a1 + 32), *(a1 + 72), &v29);
        LOWORD(a3) = v18;
        if (!v18)
        {
          FigCRABSGetByteStream();
          if (v19)
          {
            v19 = CFRetain(v19);
          }

          v28 = v19;
          CMByteStreamGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v20 = OUTLINED_FUNCTION_188();
            v21(v20);
          }
        }
      }
    }

    (*a1)(*(a1 + 8), v28, a3, 0, 0, 0);
    if (a3)
    {
      FigByteFlumeGetFigBaseObject();
      if (v24)
      {
        v25 = v24;
        v26 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v26)
        {
          v26(v25);
        }
      }
    }

    fbfs_FreeFigHTTPOpenCompletion(a1);
    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }
}

void FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamFactoryCreateStreamFromURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamFactoryCreateStreamFromURLAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fbfs_CreateFlumeAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigSteeringManifestCreateRemote(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, int a5, __CFArray *a6, CFDictionaryRef *a7)
{
  theArray = 0;
  theDict = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigSteeringManifest_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E748F230;
  block[4] = &v14;
  if (qword_1ED4CAFF8 != -1)
  {
    dispatch_once(&qword_1ED4CAFF8, block);
  }

  v7 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  if (!v7)
  {
    FigXPCCreateBasicMessage();
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0, 0);
    v7 = v9;
  }

  FigXPCRelease();
  FigXPCRelease();
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

double FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(CFTypeRef cf, int a2, void *__dst)
{
  v4 = *MEMORY[0x1E6960CC0];
  *&__src[0].value = v4;
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  __src[0].epoch = v5;
  *&__src[1].value = v4;
  __src[1].epoch = v5;
  *&__src[2].value = v4;
  __src[2].epoch = v5;
  *&__src[3].value = v4;
  __src[3].epoch = v5;
  if (__dst)
  {
    if (!cf)
    {
LABEL_37:
      memcpy(__dst, __src, 0x60uLL);
      return *&v4;
    }

    v29 = v4;
    v9 = CFGetTypeID(cf);
    if (v9 == CFArrayGetTypeID())
    {
      LODWORD(v28) = v3;
      Count = CFArrayGetCount(cf);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, v12);
          v33 = 0;
          if (!ValueAtIndex)
          {
            goto LABEL_12;
          }

          v14 = CFGetTypeID(ValueAtIndex);
          if (v14 != CFDictionaryGetTypeID() || !FigCFDictionaryGetInt32IfPresent())
          {
            goto LABEL_12;
          }

          if (v33 == a2)
          {
            break;
          }

          if (v11 == ++v12)
          {
            goto LABEL_37;
          }
        }

        Value = FigCFDictionaryGetValue();
        if (Value)
        {
          v16 = CFGetTypeID(Value);
          if (v16 != CFDictionaryGetTypeID())
          {
            goto LABEL_12;
          }
        }

        v17 = FigCFDictionaryGetValue();
        if (v17)
        {
          v18 = CFGetTypeID(v17);
          if (v18 != CFDictionaryGetTypeID())
          {
            goto LABEL_12;
          }
        }

        v19 = FigCFDictionaryGetValue();
        if (v19)
        {
          v20 = CFGetTypeID(v19);
          if (v20 != CFDictionaryGetTypeID())
          {
            goto LABEL_12;
          }
        }

        v21 = FigCFDictionaryGetValue();
        if (v21)
        {
          v22 = CFGetTypeID(v21);
          if (v22 != CFDictionaryGetTypeID())
          {
            goto LABEL_12;
          }
        }

        FigCFDictionaryGetCMTimeIfPresent();
        FigCFDictionaryGetCMTimeIfPresent();
        FigCFDictionaryGetCMTimeIfPresent();
        FigCFDictionaryGetCMTimeIfPresent();
        if ((__src[0].flags & 1) == 0)
        {
          *&__src[0].value = v29;
          __src[0].epoch = v5;
        }

        if ((__src[1].flags & 1) == 0)
        {
          *&__src[1].value = v29;
          __src[1].epoch = v5;
        }

        if ((__src[2].flags & 1) == 0)
        {
          *&__src[2].value = v29;
          __src[2].epoch = v5;
        }

        if ((__src[3].flags & 1) == 0)
        {
          *&__src[3].value = v29;
          __src[3].epoch = v5;
        }

        if ((__src[0].flags & 0x1D) != 1 || (__src[1].flags & 0x1D) != 1 || (__src[2].flags & 0x1D) != 1 || (__src[3].flags & 0x1D) != 1 || (time1 = __src[0], *&time2.value = v29, time2.epoch = v5, CMTimeCompare(&time1, &time2) < 0) || (OUTLINED_FUNCTION_0_135(v23, __src[1].epoch, v27, v3, v29, *&time2.value, time2.epoch, v31, __src[1].value, *&__src[1].timescale, time1.epoch) & 0x80000000) != 0 || (OUTLINED_FUNCTION_0_135(v24, __src[2].epoch, v27, v28, v29, *&time2.value, time2.epoch, v31, __src[2].value, *&__src[2].timescale, time1.epoch) & 0x80000000) != 0 || (OUTLINED_FUNCTION_0_135(v25, __src[3].epoch, v27, v28, v29, *&time2.value, time2.epoch, v31, __src[3].value, *&__src[3].timescale, time1.epoch) & 0x80000000) != 0)
        {
LABEL_12:
          *&v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
          return *&v4;
        }
      }

      goto LABEL_37;
    }

    *&v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294947896, "(Fig)", 93, v3);
  }

  return *&v4;
}

__n128 fbapoprp_clearRenderPipelineSetRateAndAnchorTimeContext(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 184) = 0;
    v1 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *(a1 + 192) = *MEMORY[0x1E6960C70];
    v3 = *(v1 + 16);
    *(a1 + 208) = v3;
    *(a1 + 216) = result;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = v3;
  }

  return result;
}

void fbapoprp_clearRenderPipelineSynchronizeToTimebaseContext(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 104) = 0xFFFFFFFLL;
    *(a1 + 112) = 0;
    v2 = MEMORY[0x1E6960C70];
    v3 = *MEMORY[0x1E6960C70];
    *(a1 + 120) = *MEMORY[0x1E6960C70];
    v4 = *(v2 + 16);
    *(a1 + 136) = v4;
    *(a1 + 144) = v3;
    *(a1 + 160) = v4;
    v5 = *(a1 + 168);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 168) = 0;
    }
  }
}

void fbapoprp_renderPipelineStateReleaseDeferResetContext(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      CFAllocatorDeallocate(*MEMORY[0x1E695E480], v2);
      *(a1 + 176) = 0;
    }
  }
}

void fampb_submitNetworkHistory(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  if (*(DerivedStorage + 112))
  {
    v2 = DerivedStorage;
    if (*(DerivedStorage + 200) || (v3 = CMBaseObjectGetDerivedStorage(), FigRCLGetDoubleWithDefault(*(v3 + 752), @"ABRHistoryNonStallSampleRate", 0.0), FigGetCFPreferenceDoubleWithDefault(), v4 > 0.0) && (bytes = 0.0, v5 = vcvtd_n_u64_f64(v4, 0x3FuLL), SecRandomCopyBytes(*MEMORY[0x1E697B308], 8uLL, &bytes), (*&bytes & 0x7FFFFFFFFFFFFFFFuLL) <= v5))
    {
      v6 = *MEMORY[0x1E695E480];
      v7 = OUTLINED_FUNCTION_298();
      if (!FigAlternatePlaybackBitrateMonitorCopySerializedRecordData(v7, v8, v9))
      {
        Length = CFDataGetLength(cf);
        v11 = [MEMORY[0x1E695DEF0] dataWithBytes:CFDataGetBytePtr(cf) length:Length];
        v12 = [v11 compressedDataUsingAlgorithm:3 error:&v24];
        v13 = v12;
        if (v24)
        {
          v14 = 0;
        }

        else
        {
          v15 = [v12 length];
          v14 = v15 < [v11 length];
        }

        v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:8];
        [v16 setObject:@"ABRTrace" forKeyedSubscript:@"type"];
        [v16 setObject:@"3" forKeyedSubscript:@"version"];
        [v16 setObject:@"CM-HLS" forKeyedSubscript:@"sender"];
        [v16 setObject:*(v2 + 80) forKeyedSubscript:@"sessionID"];
        [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", *(v2 + 200)), @"stalls"}];
        [v16 setObject:*(v2 + 96) forKeyedSubscript:@"clientName"];
        v17 = *(v2 + 88);
        if (v17)
        {
          [v16 setObject:v17 forKeyedSubscript:@"serviceName"];
        }

        if (v14)
        {
          v18 = @"zlib";
        }

        else
        {
          v18 = @"none";
        }

        [v16 setObject:v18 forKeyedSubscript:@"compression"];
        v19 = MEMORY[0x1E69B7C00];
        v28 = *MEMORY[0x1E69B7C60];
        v29[0] = &unk_1F0B6F400;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __fampb_submitNetworkHistory_block_invoke;
        v22[3] = &unk_1E748F3F8;
        v23 = v14;
        v22[4] = v13;
        v22[5] = v11;
        if ([v19 createForSubmission:@"241" metadata:v16 options:v20 error:&v26 writing:v22])
        {
          bytes = CFAbsoluteTimeGetCurrent();
          v21 = CFNumberCreate(v6, kCFNumberDoubleType, &bytes);
          CFPreferencesSetValue(@"ABRHistoryLastSubmissionTime", v21, @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
          if (v21)
          {
            CFRelease(v21);
          }
        }
      }
    }
  }
}

void fampb_networkHistoryObserverCallbackUnlocked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    MainSegmentBytesInTransitUnlocked = fampb_getMainSegmentBytesInTransitUnlocked(v5);
    FigSimpleMutexLock();
    *(DerivedStorage + 392) = MainSegmentBytesInTransitUnlocked;
    if (*(DerivedStorage + 740))
    {
      v8 = *(DerivedStorage + 728);
    }

    else
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
    }

    if ((BYTE12(v8) & 1) != 0 && (*(DerivedStorage + 1232) == a3 || *(DerivedStorage + 344)))
    {
      fampb_attemptToSwitch(v5, *(DerivedStorage + 1224) == a3, 0);
    }

    FigSimpleMutexUnlock();
    CFRelease(v5);
  }
}

uint64_t fampb_getMainSegmentBytesInTransitUnlocked(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  number = 0;
  if (*(DerivedStorage + 344))
  {
    v2 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v2 + 344) && *(v2 + 40))
    {
      v3 = FigCFWeakReferenceHolderCopyReferencedObject();
      FigSimpleMutexUnlock();
      if (v3)
      {
        FigBytePumpGetFigBaseObject();
        v5 = v4;
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v6)
        {
          v7 = v6(v5, 0x1F0B1F798, *MEMORY[0x1E695E480], &number);
          v8 = number;
          if (!v7)
          {
            CFNumberGetValue(number, kCFNumberSInt64Type, &v10);
            v8 = number;
          }

          if (v8)
          {
            CFRelease(v8);
          }
        }

        CFRelease(v3);
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }
  }

  return v10;
}

void fampb_attemptToSwitch(const void *a1, int a2, char *a3)
{
  v477 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v468, 0, sizeof(v468));
  fampb_calculateDuration(DerivedStorage, &v468);
  PeakBitRate = FigAlternateGetPeakBitRate(*(DerivedStorage + 272));
  FigAlternateGetExpectedAverageBitrate(*(DerivedStorage + 272));
  v467 = 0;
  if (*(DerivedStorage + 1248) <= 0)
  {
    v8 = 100000;
  }

  else
  {
    v8 = *(DerivedStorage + 1248);
  }

  v9 = *(DerivedStorage + 767);
  if (!v9)
  {
    goto LABEL_9;
  }

  if ((v468.flags & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(DerivedStorage + 432);
  v11 = CMBaseObjectGetDerivedStorage();
  if (*(v11 + 768) >= 1 && *(v11 + 420) == 0.0)
  {
    goto LABEL_8;
  }

  if (fampb_getPredictionBandwidth(DerivedStorage, &v467, (DerivedStorage + 408)))
  {
    goto LABEL_8;
  }

  v19 = v10 * PeakBitRate;
  v20 = v467;
  *(DerivedStorage + 400) = v467;
  v21 = v20;
  v22 = fabsf(*(DerivedStorage + 420));
  if (v22 <= 1.0)
  {
    v22 = 1.0;
  }

  v23 = ceilf(v22);
  shouldSwitchUpConcurrently = *(DerivedStorage + 592);
  if (shouldSwitchUpConcurrently)
  {
    Rate = CMTimebaseGetRate(shouldSwitchUpConcurrently);
  }

  else
  {
    Rate = 0.0;
  }

  v26 = v19;
  *(DerivedStorage + 424) = Rate;
  v27 = v21 / v23;
  if (*(DerivedStorage + 344) && *(DerivedStorage + 345))
  {
    OUTLINED_FUNCTION_4_97(shouldSwitchUpConcurrently, v467, v13, v14, v15, v16, v17, v18, v300, v321, v342, v364, v383, v400, v419, v442, v467, *&v468.value);
    shouldSwitchUpConcurrently = fampb_shouldSwitchUpConcurrently(DerivedStorage + 264, v117, v8, &time);
    v28 = shouldSwitchUpConcurrently == 0;
  }

  else
  {
    v28 = 0;
  }

  v29 = v27;
  if (a2)
  {
    if (*(DerivedStorage + 344))
    {
      if (dword_1EAF17490)
      {
        OUTLINED_FUNCTION_21_21();
        v37 = OUTLINED_FUNCTION_26_21(qword_1EAF17488, v30, v31, v32, v33, v34, v35, v36, v300, v321, v342, v364, v383, v400, v419, v442, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value);
        value = v473.value;
        v420 = v37;
        LODWORD(v401) = LOBYTE(type.value);
        if (os_log_type_enabled(v37, type.value))
        {
          v39 = value;
        }

        else
        {
          v39 = value & 0xFFFFFFFE;
        }

        if (v39)
        {
          OUTLINED_FUNCTION_49_8();
          OUTLINED_FUNCTION_4_97(v40, v41, v42, v43, v44, v45, v46, v47, v301, v322, v49, v48, *(DerivedStorage + 432), v401, v420, v443, v467, *&v468.value);
          CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_5_82(v50, v51, v52, v53, v54, v55, v56, v57, v302, v323, v343, v365, v384, v402, v421, v444, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, *&time.value, time.epoch);
          OUTLINED_FUNCTION_25_21(v58, v59, v60, v61, v62, v63, v64, v65, v303, v324, v344, v366, v385, v403, v422, v445, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, time.value);
          CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_56_11();
          v66 = *(DerivedStorage + 764);
          OUTLINED_FUNCTION_11_46(v67, v68, v69, v70, v71, v72, v73, v74, v304, v325, v345, v367, v386, v404, v423, v446, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, *&time.value, time.epoch);
          OUTLINED_FUNCTION_48_13();
          LODWORD(time.value) = 136319490;
          OUTLINED_FUNCTION_3_96();
          OUTLINED_FUNCTION_47_11();
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_0_136(v75, v76, v77, v78, v79, v80, v81, v82, v305, v326, v346, v368, v387, v405, v424, v447, v463);
          *(v83 + 118) = v66;
          OUTLINED_FUNCTION_1_121(v84, v85);
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v86, v87, v88, v89, v90, v425, v406, v91, &time);
          OUTLINED_FUNCTION_45_12();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_454(v111, v112, v113, v114, v115);
      }

      if (!v28 && fampb_ConcurrentSwitchUpValidForLongEnough(DerivedStorage + 264))
      {
        v116 = v467;
LABEL_64:
        v246 = a1;
        v247 = 1;
LABEL_65:
        v9 = fampb_configurePlaybackFilterAsync(v246, v116, v247) == 0;
        goto LABEL_9;
      }
    }

    else if (v29 > v26)
    {
      v9 = *(DerivedStorage + 764);
      if (!v9)
      {
        goto LABEL_9;
      }

      if (dword_1EAF17490)
      {
        OUTLINED_FUNCTION_21_21();
        v109 = OUTLINED_FUNCTION_26_21(qword_1EAF17488, v102, v103, v104, v105, v106, v107, v108, v300, v321, v342, v364, v383, v400, v419, v442, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value);
        value_low = LOBYTE(type.value);
        os_log_type_enabled(v109, type.value);
        OUTLINED_FUNCTION_70();
        if (v28)
        {
          OUTLINED_FUNCTION_49_8();
          OUTLINED_FUNCTION_4_97(v188, v189, v190, v191, v192, v193, v194, v195, v308, v329, v349, v370, v197, v196, *(DerivedStorage + 432), v450, v467, *&v468.value);
          CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_5_82(v198, v199, v200, v201, v202, v203, v204, v205, v314, v335, v356, v375, v393, v412, v434, v456, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, *&time.value, time.epoch);
          OUTLINED_FUNCTION_25_21(v206, v207, v208, v209, v210, v211, v212, v213, v315, v336, v357, v376, v394, v413, v435, v457, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, time.value);
          CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_56_11();
          OUTLINED_FUNCTION_30_16();
          LODWORD(v377) = v214;
          OUTLINED_FUNCTION_11_46(v215, v216, v217, v218, v219, v220, v221, v222, v316, v337, v358, v377, v395, v414, v436, v458, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, *&time.value, time.epoch);
          OUTLINED_FUNCTION_48_13();
          LODWORD(time.value) = 136319490;
          OUTLINED_FUNCTION_3_96();
          OUTLINED_FUNCTION_47_11();
          OUTLINED_FUNCTION_46_10();
          OUTLINED_FUNCTION_0_136(v223, v224, v225, v226, v227, v228, v229, v230, v317, v338, v359, v378, v396, v415, v437, v459, v465);
          *(v231 + 118) = v379;
          OUTLINED_FUNCTION_1_121(v232, v233);
          v234 = OUTLINED_FUNCTION_19_29();
          _os_log_send_and_compose_impl(v234, v235, v236, v237, v238, v109, value_low, v239, &time);
          OUTLINED_FUNCTION_45_12();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_454(v240, v241, v242, v243, v244);
      }

      time.value = 0;
      fampb_createRecordABREventEntryForNowAndInsertQ(a1, &time);
      v245 = time.value;
      if (time.value)
      {
        *(time.value + 16) = 1;
        *(v245 + 8) = 7;
      }

      v116 = (v467 / 1.1);
      v467 = v116;
      goto LABEL_64;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (!*(DerivedStorage + 344))
  {
    if (v29 < v26 && !*(DerivedStorage + 766))
    {
      OUTLINED_FUNCTION_4_97(shouldSwitchUpConcurrently, v12, v13, v14, v15, v16, v17, v18, v300, v321, v342, v364, v383, v400, v419, v442, v467, *&v468.value);
      v476 = *(DerivedStorage + 364);
      Seconds = CMTimeGetSeconds(&time);
      time = v476;
      if (Seconds <= CMTimeGetSeconds(&time))
      {
        if (dword_1EAF17490)
        {
          OUTLINED_FUNCTION_21_21();
          v100 = OUTLINED_FUNCTION_26_21(qword_1EAF17488, v93, v94, v95, v96, v97, v98, v99, v306, v327, v347, v369, v388, v407, v426, v448, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value);
          v101 = LOBYTE(type.value);
          v427 = v100;
          os_log_type_enabled(v100, type.value);
          OUTLINED_FUNCTION_70();
          if (v28)
          {
            OUTLINED_FUNCTION_49_8();
            OUTLINED_FUNCTION_4_97(v250, v251, v252, v253, v254, v255, v256, v257, v307, v328, v348, v259, v258, *(DerivedStorage + 432), v427, v449, v467, *&v468.value);
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_5_82(v260, v261, v262, v263, v264, v265, v266, v267, v318, v339, v360, v380, v397, v416, v438, v460, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, *&time.value, time.epoch);
            OUTLINED_FUNCTION_25_21(v268, v269, v270, v271, v272, v273, v274, v275, v319, v340, v361, v381, v398, v417, v439, v461, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, time.value);
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_56_11();
            OUTLINED_FUNCTION_30_16();
            LODWORD(v362) = v276;
            time = *(DerivedStorage + 364);
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_48_13();
            LODWORD(time.value) = 136319490;
            OUTLINED_FUNCTION_3_96();
            OUTLINED_FUNCTION_47_11();
            OUTLINED_FUNCTION_46_10();
            OUTLINED_FUNCTION_0_136(v277, v278, v279, v280, v281, v282, v283, v284, v320, v341, v362, v382, v399, v418, v440, v462, v466);
            *(v285 + 118) = v363;
            OUTLINED_FUNCTION_1_121(v286, v287);
            v288 = OUTLINED_FUNCTION_19_29();
            _os_log_send_and_compose_impl(v288, v289, v290, v291, v292, v441, v101, v293, &time);
            OUTLINED_FUNCTION_45_12();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454(v294, v295, v296, v297, v298);
        }

        time.value = 0;
        fampb_createRecordABREventEntryForNowAndInsertQ(a1, &time);
        v299 = time.value;
        if (time.value)
        {
          *(time.value + 16) = 0;
          *(v299 + 8) = 7;
        }

        v116 = v467;
        v246 = a1;
        v247 = 0;
        goto LABEL_65;
      }
    }

    goto LABEL_8;
  }

  if (dword_1EAF17490)
  {
    OUTLINED_FUNCTION_21_21();
    v125 = OUTLINED_FUNCTION_26_21(qword_1EAF17488, v118, v119, v120, v121, v122, v123, v124, v300, v321, v342, v364, v383, v400, v419, v442, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value);
    v126 = LOBYTE(type.value);
    v428 = v125;
    os_log_type_enabled(v125, type.value);
    OUTLINED_FUNCTION_70();
    if (v28)
    {
      OUTLINED_FUNCTION_49_8();
      OUTLINED_FUNCTION_4_97(v127, v128, v129, v130, v131, v132, v133, v134, v309, v330, v350, v136, v135, *(DerivedStorage + 432), v428, v451, v467, *&v468.value);
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_5_82(v137, v138, v139, v140, v141, v142, v143, v144, v310, v331, v351, v371, v389, v408, v429, v452, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, *&time.value, time.epoch);
      OUTLINED_FUNCTION_25_21(v145, v146, v147, v148, v149, v150, v151, v152, v311, v332, v352, v372, v390, v409, v430, v453, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, time.value);
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_56_11();
      OUTLINED_FUNCTION_30_16();
      LODWORD(v353) = v153;
      OUTLINED_FUNCTION_11_46(v154, v155, v156, v157, v158, v159, v160, v161, v312, v333, v353, v373, v391, v410, v431, v454, v467, v468.value, *&v468.timescale, v468.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v470, lhs.value, *&lhs.timescale, lhs.epoch, type.value, *&type.timescale, type.epoch, v473.value, *&v473.timescale, v473.epoch, v474, *&time.value, time.epoch);
      OUTLINED_FUNCTION_48_13();
      LODWORD(time.value) = 136319490;
      OUTLINED_FUNCTION_3_96();
      OUTLINED_FUNCTION_47_11();
      OUTLINED_FUNCTION_46_10();
      OUTLINED_FUNCTION_0_136(v162, v163, v164, v165, v166, v167, v168, v169, v313, v334, v354, v374, v392, v411, v432, v455, v464);
      *(v170 + 118) = v355;
      OUTLINED_FUNCTION_1_121(v171, v172);
      v173 = OUTLINED_FUNCTION_19_29();
      _os_log_send_and_compose_impl(v173, v174, v175, v176, v177, v433, v126, v178, &time);
      OUTLINED_FUNCTION_45_12();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454(v179, v180, v181, v182, v183);
  }

  v184 = v467;
  v185 = CMBaseObjectGetDerivedStorage();
  v186 = v185;
  if (*(v185 + 1248) <= 0)
  {
    v187 = 100000;
  }

  else
  {
    v187 = *(v185 + 1248);
  }

  memset(&time, 0, sizeof(time));
  fampb_calculateDuration(v185, &time);
  v476 = **&MEMORY[0x1E6960C70];
  v473 = time;
  if (!fampb_shouldSwitchDownConcurrently(v186 + 264, v184, v187, &v473, &v476))
  {
    if (v476.flags)
    {
      memset(&v473, 0, sizeof(v473));
      if (*(v186 + 740))
      {
        v473 = *(v186 + 728);
      }

      else
      {
        CMTimebaseGetTimeClampedAboveAnchorTime();
      }

      lhs = v473;
      rhs = v476;
      CMTimeAdd(&type, &lhs, &rhs);
      fampb_primeTimeTillDryTimer(a1, &type);
    }

    goto LABEL_8;
  }

  v248 = *(v186 + 280);
  if (v248)
  {
    CFRelease(v248);
    *(v186 + 280) = 0;
    if (fampb_setBandwidthConditions(a1))
    {
      goto LABEL_8;
    }

    v249 = 2;
  }

  else
  {
    v249 = 0;
  }

  fampb_configurePlaybackFilterAsync(a1, v184, v249);
  v9 = 1;
LABEL_9:
  if (a3)
  {
    *a3 = v9;
  }
}

uint64_t FigAlternatePlaybackBitrateMonitorSetPumpOffset(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v4 = *(a2 + 16);
    *(DerivedStorage + 704) = *a2;
    *(DerivedStorage + 720) = v4;
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t FigAlternateFilterMonitorForPlaybackBitrateStartup(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(DerivedStorage + 24);
  v5 = *(DerivedStorage + 264);
  v6 = *(DerivedStorage + 296);
  v7 = *(DerivedStorage + 304);
  v8 = *(DerivedStorage + 346);
  v9 = *(DerivedStorage + 416);
  v34 = 0;
  fampb_createRecordABREventEntryForNowAndInsertQ(a1, &v34);
  if (v34)
  {
    *(v34 + 2) = 20;
  }

  FigSimpleMutexUnlock();
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  inserted = FigAlternateFilterTreeCreate(AllocatorForMedia, &v24);
  if (inserted)
  {
    goto LABEL_75;
  }

  v12 = v24;
  if (!v24)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
    goto LABEL_75;
  }

  if (!v5)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_51;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(v24, v5, 500);
  if (inserted)
  {
    goto LABEL_75;
  }

  v13 = MEMORY[0x1E695E480];
  if (v9 != 0x7FFFFFFF)
  {
    inserted = FigAlternatePeakBitRateCapFilterCreate(*MEMORY[0x1E695E480], v9, &v26);
    if (inserted)
    {
      goto LABEL_75;
    }

    inserted = FigAlternateFilterTreeInsertLeaf(v24, v26, 460);
    if (inserted)
    {
      goto LABEL_75;
    }
  }

  if (v8)
  {
    if (v4 && v3)
    {
      v4(v3);
    }

    v14 = *v13;
    inserted = FigAlternateStartupScoreFilterCreate(*v13, &v27);
    if (inserted)
    {
      goto LABEL_75;
    }

    inserted = FigAlternateFilterTreeInsertLeaf(v24, v27, 420);
    if (inserted)
    {
      goto LABEL_75;
    }

    inserted = FigAlternateHighestRankingScoreFilterCreate(v14, &v29);
    if (inserted)
    {
      goto LABEL_75;
    }

    v15 = v24;
    v16 = v29;
    v17 = 310;
  }

  else
  {
    v14 = *v13;
    inserted = FigAlternateLowestIndexAlternateFilterCreate(*v13, &v25);
    if (inserted)
    {
      goto LABEL_75;
    }

    v15 = v24;
    v16 = v25;
    v17 = 430;
  }

  v18 = FigAlternateFilterTreeInsertLeaf(v15, v16, v17);
  if (v18)
  {
    goto LABEL_76;
  }

  inserted = FigAlternateFinalSelectionHighestPeakBitRateFilterCreate(v14, &v28);
  if (inserted || (inserted = FigAlternateFilterTreeInsertLeaf(v24, v28, 100), inserted) || (inserted = FigAlternateFilterTreeCreateFilter(v24, @"BitrateFilterTree", 600, &v30), inserted))
  {
LABEL_75:
    v18 = inserted;
    goto LABEL_76;
  }

  v19 = v30;
  if (!v7)
  {
LABEL_49:
    v18 = 0;
    v30 = 0;
    goto LABEL_50;
  }

  cf = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v20 = FigGetAllocatorForMedia();
  v21 = FigAlternateFilterTreeCreate(v20, &cf);
  if (v21 || (v21 = FigAlternateFilterTreeInsertLeaf(cf, v5, 500), v21) || (v21 = FigAlternateTransitionBiasFilterCreate(v14, v6, v7, &v31), v21) || (v21 = FigAlternateFilterTreeInsertLeaf(cf, v31, 320), v21) || (v21 = FigAlternateFinalSelectionHighestPeakBitRateFilterCreate(v14, &v32), v21) || (v21 = FigAlternateFilterTreeInsertLeaf(cf, v32, 100), v21) || (v21 = FigAlternateFilterTreeSetFallbackBranch(cf, v19), v21))
  {
    v18 = v21;
  }

  else
  {
    v18 = FigAlternateFilterTreeCreateFilter(cf, @"GaplessItemTransitionTree", 600, &v34);
    if (!v18)
    {
      v19 = v34;
      v34 = 0;
      goto LABEL_38;
    }
  }

  v19 = 0;
LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (!v18)
  {
    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_49;
  }

LABEL_76:
  v19 = 0;
LABEL_50:
  v12 = v24;
  if (v24)
  {
LABEL_51:
    CFRelease(v12);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (!v18)
  {
    v18 = fampb_notifyFilterChangeAndRecordStallRiskListUnlocked(a1, v19, 0);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v18;
}

const void *fampb_notifyFilterChangeAndRecordStallRiskListUnlocked(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return a2;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  v8 = v7[8];
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v9(v8);
    }

    if (FigCFEqual())
    {
      goto LABEL_11;
    }

    v10 = v7[8];
    v11 = v7[9];
    v7[9] = v10;
    if (v10)
    {
      CFRetain(v10);
    }
  }

  else
  {
    v11 = v7[9];
    v7[9] = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_11:
  v12 = v7[8];
  v7[8] = CFRetain(a2);
  v13 = v7[13];
  v7[13] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  FigSimpleMutexUnlock();
  a2 = FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewFilterIfNecessary(a1, v12, a2, 0, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  return a2;
}

uint64_t fampb_getPredictionBandwidth(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (*(a1 + 344))
  {
    v17 = *(a1 + 1000);
    memcpy(v16, (a1 + 1024), sizeof(v16));
    v6 = *(a1 + 1168);
    OUTLINED_FUNCTION_43_12(a1 + 1176);
    v7 = *(a1 + 1240);
  }

  else
  {
    v17 = *(a1 + 776);
    v7 = *(a1 + 792);
    memcpy(v16, (a1 + 800), sizeof(v16));
    v6 = *(a1 + 944);
    OUTLINED_FUNCTION_43_12(a1 + 952);
  }

  OUTLINED_FUNCTION_28_18();
  if (v10 ^ v11 | v9)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  }

  else
  {
    UpTimeNanoseconds = ((*(a1 + 472) - v8) * 1000000000.0);
  }

  v13 = *(a1 + 48);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    return 4294954514;
  }

  v24 = v17;
  v25 = v7;
  memcpy(v26, v16, sizeof(v26));
  v27 = v6 | 0x18;
  v28 = v31;
  v29 = v32;
  v30 = v33;
  result = v14(v13, UpTimeNanoseconds, &v24, &v18);
  if (!result)
  {
    if (a2)
    {
      *a2 = (*(&v19 + 1) * v18);
    }

    result = 0;
    if (a3)
    {
      *a3 = v20;
    }
  }

  return result;
}

CFTypeRef fampb_copyLowerSwitchCandidate(uint64_t *a1, uint64_t a2, int a3)
{
  v23 = 0;
  v21 = 0;
  v22 = 0;
  cf = 0;
  theArray = 0;
  v17 = 0;
  v18 = 0;
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a2);
  if (a3)
  {
    v6 = NormalizedPeakBitrate - 1;
  }

  else
  {
    v6 = 19 * NormalizedPeakBitrate / 20;
  }

  fampb_copyValidAlternateList(*a1, &v21);
  if (!v21)
  {
    goto LABEL_23;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  if (FigAlternateFilterTreeCreate(AllocatorForMedia, &v22))
  {
    goto LABEL_23;
  }

  v8 = *MEMORY[0x1E695E480];
  if (FigAlternateNormalizedPeakBitRateCapFilterCreate(*MEMORY[0x1E695E480], v6, 1, &cf) || FigAlternateFilterTreeInsertLeaf(v22, cf, 240))
  {
    goto LABEL_23;
  }

  if (a3)
  {
    if (FigAlternateLowestVideoThenAudioFilterCreate(v8, &v17))
    {
      goto LABEL_23;
    }

    v9 = v22;
    v10 = v17;
    v11 = 230;
  }

  else
  {
    if (FigAlternatePlaybackScoreAndBitRateFilterCreate(v8, &v18) || FigAlternateFilterTreeInsertLeaf(v22, v18, 200) || FigAlternateFinalSelectionHighestPeakBitRateFilterCreate(v8, &v17))
    {
      goto LABEL_23;
    }

    v9 = v22;
    v10 = v17;
    v11 = 100;
  }

  if (!FigAlternateFilterTreeInsertLeaf(v9, v10, v11) && !FigAlternateFilterTreeCreateFilter(v22, @"selectSwitchCandidate", 100, &v23))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v12 = OUTLINED_FUNCTION_298();
      if (!v13(v12))
      {
        if (theArray)
        {
          if (CFArrayGetCount(theArray) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            if (ValueAtIndex)
            {
              v15 = CFRetain(ValueAtIndex);
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

LABEL_23:
  v15 = 0;
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (theArray)
  {
    CFRelease(theArray);
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

  return v15;
}

uint64_t FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(uint64_t a1, uint64_t a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    fampb_copyValidAlternateList(*(v4 + 264), &cf);
    a2 = FigCFArrayContainsValue();
    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return a2;
}

uint64_t FigAlternateFilterMonitorPrimeForSwitch(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = 0;
  FigSimpleMutexLock();
  PredictionBandwidth = fampb_getPredictionBandwidth(DerivedStorage, &v7, (DerivedStorage + 408));
  if (PredictionBandwidth)
  {
    v4 = PredictionBandwidth;
    FigSimpleMutexUnlock();
  }

  else
  {
    fampb_createPlaybackFilterConfigurationRec(a1, v7, 0, &v8);
    v4 = v6;
    FigSimpleMutexUnlock();
    if (!v4)
    {
      fampb_configurePlaybackFilterUnlocked(v8);
    }
  }

  return v4;
}

double fampb_createPlaybackFilterConfigurationRec(const void *a1, uint64_t a2, int a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v11 = DerivedStorage;
    v12 = malloc_type_calloc(1uLL, 0x178uLL, 0x10E00409B9F9786uLL);
    if (v12)
    {
      v13 = v12;
      v14 = v11[42];
      if (v14)
      {
        CFRetain(v14);
      }

      v15 = v11[39];
      if (v15)
      {
        CFRetain(v15);
      }

      v16 = v11[34];
      if (v16)
      {
        CFRetain(v16);
      }

      v17 = v11[35];
      if (v17)
      {
        CFRetain(v17);
      }

      v18 = v11[36];
      if (v18)
      {
        CFRetain(v18);
      }

      v19 = v11[37];
      if (v19)
      {
        CFRetain(v19);
      }

      v20 = v11[38];
      if (v20)
      {
        CFRetain(v20);
      }

      v21 = v11[33];
      if (v21)
      {
        CFRetain(v21);
      }

      memcpy(v13 + 32, v11 + 33, 0x100uLL);
      if (a1)
      {
        v29 = CFRetain(a1);
      }

      else
      {
        v29 = 0;
      }

      *v13 = v29;
      TimeClampedAboveAnchorTime = v11[1];
      if (TimeClampedAboveAnchorTime)
      {
        TimeClampedAboveAnchorTime = FigCFWeakReferenceHolderCopyReferencedObject();
      }

      *(v13 + 1) = TimeClampedAboveAnchorTime;
      *(v13 + 2) = v11[2];
      if (*(v11 + 740))
      {
        theArray = *(v11 + 91);
      }

      else
      {
        TimeClampedAboveAnchorTime = CMTimebaseGetTimeClampedAboveAnchorTime();
      }

      v31 = OUTLINED_FUNCTION_281(TimeClampedAboveAnchorTime, v22, v23, v24, v25, v26, v27, v28, v41, v42, v44, v45, v11[88], v11[89], v11[90], v47, theArray.value);
      CMTimeAdd(v33, v31, v32);
      *(v13 + 296) = v43;
      *(v13 + 39) = v46;
      *(v13 + 80) = a3;
      *(v13 + 41) = a2;
      v34 = v11[156];
      if (v34 <= 0)
      {
        v34 = 100000;
      }

      *(v13 + 46) = v34;
      fampb_calculateDuration(v11, &theArray);
      result = *&theArray.value;
      *(v13 + 14) = theArray;
      *(v13 + 36) = 0;
      v13[360] = *(v11 + 765);
      if (*(v11 + 767))
      {
        v35 = *(v11 + 347);
      }

      else
      {
        v35 = 1;
      }

      v13[115] = v35;
      v36 = *(v11 + 190);
      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      theArray.value = 0;
      if (fampb_copyAlternateListSortedByQuality(v11 + 33, *MEMORY[0x1E695E480], 0, &theArray))
      {
        goto LABEL_46;
      }

      if (!theArray.value)
      {
LABEL_33:
        *(v11 + 190) = -1;
        *(v11 + 347) = 0;
        *a4 = v13;
        return result;
      }

      if (CFArrayGetCount(theArray.value) < 1)
      {
LABEL_46:
        if (theArray.value)
        {
          CFRelease(theArray.value);
        }

        goto LABEL_33;
      }

      value = theArray.value;
      if (theArray.value)
      {
        Count = CFArrayGetCount(theArray.value);
        value = theArray.value;
        if (Count > v36)
        {
LABEL_43:
          ValueAtIndex = CFArrayGetValueAtIndex(value, v36);
          if (ValueAtIndex)
          {
            ValueAtIndex = CFRetain(ValueAtIndex);
          }

          *(v13 + 36) = ValueAtIndex;
          goto LABEL_46;
        }

        if (theArray.value)
        {
          v36 = CFArrayGetCount(theArray.value) - 1;
          value = theArray.value;
          goto LABEL_43;
        }
      }

      v36 = -1;
      goto LABEL_43;
    }

    v40 = qword_1EAF17488;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 4294951682, "<<<< FigAlternateFilterMonitorForPlaybackBitrate >>>>", 2301, v4);
  }

  return result;
}

void fampb_configurePlaybackFilterUnlocked(uint64_t a1)
{
  v107 = 0;
  if (!*a1)
  {
    goto LABEL_248;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_248;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  if (FigAlternateFilterTreeCreate(AllocatorForMedia, &v107))
  {
    goto LABEL_248;
  }

  if (!v107)
  {
    OUTLINED_FUNCTION_29_17();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v103, v104, v106);
LABEL_248:
    v93 = 0;
    Mutable = 0;
    goto LABEL_223;
  }

  v3 = *(a1 + 32);
  if (!v3 || FigAlternateFilterTreeInsertLeaf(v107, v3, 500))
  {
    goto LABEL_248;
  }

  v4 = MEMORY[0x1E695E480];
  if (!*(a1 + 112))
  {
    v32 = *(a1 + 320);
    if (v32 == 1)
    {
      v33 = *(a1 + 128);
      if ((v33 & 1) == 0)
      {
        if ((v33 & 6) != 0)
        {
          goto LABEL_89;
        }

LABEL_88:
        if ((v33 & 8) != 0)
        {
          goto LABEL_89;
        }

LABEL_85:
        Mutable = 0;
        goto LABEL_178;
      }

      if ((v33 & 6) == 0 && !*(a1 + 360))
      {
        goto LABEL_88;
      }
    }

    else if (v32 || *(a1 + 192) == 0.0)
    {
      goto LABEL_85;
    }

LABEL_89:
    Mutable = v107;
    HIDWORD(v106) = *(a1 + 192) != 0.0;
    v113 = 0;
    theArray = 0;
    ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*(a1 + 40));
    v105 = Mutable;
    if (Mutable)
    {
      if (*(a1 + 40))
      {
        if (!*(a1 + 115))
        {
          v37 = ExpectedAverageBitrate;
          fampb_copyValidAlternateList(*(a1 + 32), &v113);
          if (v113)
          {
            v115 = 0;
            PixelCount = FigAlternateGetPixelCount(*(a1 + 40));
            v39 = *(a1 + 128);
            if ((v39 & 4) != 0)
            {
              if (FigAlternateIsAudioOnly(*(a1 + 40)))
              {
                v40 = 1;
              }

              else
              {
                v40 = !FigAlternateHasHDVideoResolution(*(a1 + 40));
              }
            }

            else
            {
              v40 = 0;
            }

            if (*(a1 + 320) == 1)
            {
              if (((PixelCount != 0) & (v39 >> 3)) != 0)
              {
                v43 = *v4;
                v44 = *(a1 + 328);
                PeakBitRate = FigAlternateGetPeakBitRate(*(a1 + 40));
                OUTLINED_FUNCTION_39_15();
                v46 = FigAlternateFilterTreeCreate(v43, &v111);
                if (v46 || (v47 = (PixelCount + PixelCount), (v46 = FigAlternateMinimumRequiredPixelCountFilterCreate(v43, (v47 + v47), &v110)) != 0) || (v46 = FigAlternateAggressiveWalkBackFilterCreate(v43, v44, PeakBitRate, cf)) != 0)
                {
                  Filter = v46;
                }

                else
                {
                  inserted = FigAlternatePassthroughFilterCreate(v43, @"ProgressiveFallbackFilter", 601, &v116);
                  if (inserted || (inserted = FigAlternateFilterTreeInsertLeaf(v111.value, cf[0], 306)) != 0 || (inserted = FigAlternateFilterTreeInsertLeaf(v111.value, v110.value, 305)) != 0 || (inserted = FigAlternateFilterTreeSetFallbackBranch(v111.value, v116)) != 0)
                  {
                    Filter = inserted;
                    v50 = 0;
                    goto LABEL_113;
                  }

                  Filter = FigAlternateFilterTreeCreateFilter(v111.value, @"ProgressiveSwitchUpTree", 530, v117);
                  v50 = v117[0];
                  if (!Filter)
                  {
                    v117[0] = 0;
                    goto LABEL_113;
                  }

                  if (!v117[0])
                  {
LABEL_113:
                    if (v110.value)
                    {
                      CFRelease(v110.value);
                    }

                    if (v111.value)
                    {
                      CFRelease(v111.value);
                    }

                    if (v116)
                    {
                      CFRelease(v116);
                    }

                    if (cf[0])
                    {
                      CFRelease(cf[0]);
                    }

                    if (Filter)
                    {
                      goto LABEL_129;
                    }

                    v51 = FigAlternateFilterTreeInsertLeaf(v105, v50, 305);
                    if (v51 != 0 || !v40)
                    {
LABEL_128:
                      Filter = v51;
LABEL_129:
                      if (v50)
                      {
                        CFRelease(v50);
                      }

                      goto LABEL_132;
                    }

LABEL_126:
                    v52 = *(a1 + 120);
                    v53 = FigAlternateGetPeakBitRate(*(a1 + 40));
                    v51 = FigAlternateMinimumRequiredBitrateFilterCreate(v43, (v52 * v53 / *(a1 + 200)), &v115);
                    if (!v51)
                    {
                      v51 = FigAlternateFilterTreeInsertLeaf(v105, v115, 349);
                    }

                    goto LABEL_128;
                  }

                  CFRelease(v117[0]);
                }

                v50 = 0;
                goto LABEL_113;
              }

              if (v40)
              {
                v50 = 0;
                v43 = *v4;
                goto LABEL_126;
              }
            }

            Filter = 0;
LABEL_132:
            if (v115)
            {
              CFRelease(v115);
            }

            if (Filter)
            {
LABEL_170:
              Mutable = 0;
              v92 = 0;
              goto LABEL_172;
            }

            v54 = *MEMORY[0x1E695E480];
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            if (!Mutable)
            {
              OUTLINED_FUNCTION_29_17();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v103, v105, v106);
              v92 = v102 == 0;
              goto LABEL_172;
            }

            v55 = 0;
            for (i = 0; ; ++i)
            {
              Count = v113;
              if (v113)
              {
                Count = CFArrayGetCount(v113);
              }

              if (i >= Count)
              {
                v88 = v37 != FigAlternateGetExpectedAverageBitrate(*(a1 + 40)) || v55 == 0;
                if (!v88 && *(a1 + 320) == 1)
                {
                  goto LABEL_169;
                }

                v89 = CFArrayGetCount(Mutable) + 1;
                v90 = v113;
                if (v113)
                {
                  v90 = CFArrayGetCount(v113);
                }

                if (v89 == v90)
                {
                  if (v55)
                  {
                    if (!*(a1 + 320))
                    {
                      OUTLINED_FUNCTION_16_30();
                      v110 = *(a1 + 132);
                      Seconds = CMTimeGetSeconds(&v111);
                      v111 = v110;
                      if (Seconds <= CMTimeGetSeconds(&v111))
                      {
                        CFArrayAppendValue(Mutable, *(a1 + 40));
                      }
                    }
                  }
                }

                if (CFArrayGetCount(Mutable) >= 1 && (FigAlternateDenyListFilterCreate(v54, Mutable, @"MonitorStallListFilter", 0x257u, 1, &theArray) || FigAlternateFilterTreeInsertLeaf(v105, theArray, 345)))
                {
LABEL_169:
                  CFRelease(Mutable);
                  goto LABEL_170;
                }

                v92 = 1;
LABEL_172:
                v4 = MEMORY[0x1E695E480];
LABEL_173:
                if (theArray)
                {
                  CFRelease(theArray);
                }

                if (v113)
                {
                  CFRelease(v113);
                }

                if (!v92)
                {
                  goto LABEL_222;
                }

LABEL_178:
                v93 = v107;
                OUTLINED_FUNCTION_39_15();
                v115 = 0;
                v113 = 0;
                theArray = 0;
                v112 = 0;
                if (v93)
                {
                  v94 = *(a1 + 288);
                  v95 = *v4;
                  if ((!v94 || !FigAlternateSingleAlternateFilterCreate(*v4, v94, 0, @"GearIndexAlternateFilter", 590, &v110) && !FigAlternateFilterTreeInsertLeaf(v93, v110.value, 410)) && !FigAlternateMeasuredBitrateCapFilterCreate(v95, *(a1 + 328), 0, &v116, *(a1 + 200), *(a1 + 192)) && !FigAlternateFilterTreeInsertLeaf(v93, v116, 350))
                  {
                    v96 = *(a1 + 184);
                    if ((v96 == 0x7FFFFFFF || !FigAlternatePeakBitRateCapFilterCreate(v95, v96, &v115) && !FigAlternateFilterTreeInsertLeaf(v93, v115, 460)) && (!CelestialShouldLimitConcurrent4K60HEVCDecoding() || !FigAlternateLimitConcurrent4K60HEVCDecodeFilterCreate(v95, *(a1 + 40), &v111) && !FigAlternateFilterTreeInsertLeaf(v93, v111.value, 340)) && !FigAlternateHighestRankingScoreFilterCreate(v95, &v112) && !FigAlternateFilterTreeInsertLeaf(v93, v112, 310) && !FigAlternateFrameRateSwitchCapFilterCreate(v95, cf) && !FigAlternateFilterTreeInsertLeaf(v93, cf[0], 300) && !FigAlternatePlaybackScoreAndBitRateFilterCreate(v95, v117) && !FigAlternateFilterTreeInsertLeaf(v93, v117[0], 200) && !FigAlternateFinalSelectionHighestPeakBitRateFilterCreate(v95, &theArray) && !FigAlternateFilterTreeInsertLeaf(v93, theArray, 100) && !FigAlternateFilterTreeCreateFilter(v93, @"BitrateFilterTree", 600, &v113))
                    {
                      v93 = v113;
                      v113 = 0;
                      goto LABEL_200;
                    }
                  }

                  v93 = 0;
                  v97 = 0;
                }

                else
                {
LABEL_200:
                  v97 = 1;
                }

                if (v111.value)
                {
                  CFRelease(v111.value);
                }

                if (v110.value)
                {
                  CFRelease(v110.value);
                }

                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

                if (v117[0])
                {
                  CFRelease(v117[0]);
                }

                if (v116)
                {
                  CFRelease(v116);
                }

                if (v115)
                {
                  CFRelease(v115);
                }

                if (theArray)
                {
                  CFRelease(theArray);
                }

                if (v113)
                {
                  CFRelease(v113);
                }

                if (v112)
                {
                  CFRelease(v112);
                }

                if (v97 && v93)
                {
                  fampb_notifyFilterChangeAndRecordStallRiskListUnlocked(*a1, v93, Mutable);
                }

                goto LABEL_223;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(v113, i);
              if (FigCFEqual())
              {
                v55 = 1;
              }

              else
              {
                FigAlternateScaleBitrateFractionToNewAlternate(*(a1 + 40), ValueAtIndex);
                if (v59 * FigAlternateGetPeakBitRate(ValueAtIndex) > *(a1 + 328))
                {
                  goto LABEL_145;
                }

                if (!FigCFEqual())
                {
                  v60 = *(a1 + 16);
                  if (v60 && (v61 = *(a1 + 8)) != 0)
                  {
                    OUTLINED_FUNCTION_9_43();
                    v70 = OUTLINED_FUNCTION_281(v62, v63, v64, v65, v66, v67, v68, v69, v103, v105, v106, v107, kStallCheckMargin, *(&kStallCheckMargin + 1), 0, v109, v110.value);
                    CMTimeSubtract(v72, v70, v71);
                    v73 = OUTLINED_FUNCTION_15_34();
                    *&v110.value = v74;
                    v110.epoch = *(a1 + 312);
                    if (v60(v61, ValueAtIndex, &v110, &v111, HIDWORD(v106), v73))
                    {
                      goto LABEL_145;
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_9_43();
                    v83 = OUTLINED_FUNCTION_281(v75, v76, v77, v78, v79, v80, v81, v82, v103, v105, v106, v107, kStallCheckMargin, *(&kStallCheckMargin + 1), 0, v109, v110.value);
                    CMTimeSubtract(v85, v83, v84);
                    v86 = OUTLINED_FUNCTION_15_34();
                    *&v110.value = v87;
                    v110.epoch = *(a1 + 312);
                    if (fampb_rejectSwitchDueToStallRisk(a1 + 32, ValueAtIndex, &v110, &v111, v86))
                    {
LABEL_145:
                      CFArrayAppendValue(Mutable, ValueAtIndex);
                      continue;
                    }
                  }
                }
              }

              if (v37 < FigAlternateGetExpectedAverageBitrate(ValueAtIndex))
              {
                v37 = FigAlternateGetExpectedAverageBitrate(ValueAtIndex);
              }
            }
          }
        }
      }

      Mutable = 0;
    }

    v92 = 1;
    goto LABEL_173;
  }

  v5 = v107;
  cf[0] = 0;
  v116 = 0;
  v117[0] = 0;
  v115 = 0;
  theArray = 0;
  if (!v107 || !*(a1 + 40))
  {
    Mutable = 0;
    v10 = 0;
    v8 = 0;
LABEL_55:
    v7 = 1;
    goto LABEL_66;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = 1;
  v8 = fampb_copyAlternateListSortedByQuality((a1 + 32), *MEMORY[0x1E695E480], 1, &theArray);
  Mutable = 0;
  if (v8)
  {
    v10 = 0;
    goto LABEL_66;
  }

  v10 = 0;
  if (!theArray)
  {
    goto LABEL_66;
  }

  v10 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (!v10)
  {
    OUTLINED_FUNCTION_29_17();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v103, v104, v106);
    goto LABEL_250;
  }

  v11 = *(a1 + 328);
  if (*(a1 + 113))
  {
    memset(&v111, 0, sizeof(v111));
    OUTLINED_FUNCTION_9_43();
    shouldSwitchUpConcurrently = fampb_shouldSwitchUpConcurrently(a1 + 32, v11, v41, &v110);
    if (*(a1 + 48))
    {
      Mutable = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_66;
    }

    v100 = shouldSwitchUpConcurrently;
    if (fampb_trialSwitchDownInProgress(a1 + 32) || (OUTLINED_FUNCTION_9_43(), fampb_shouldSwitchDownConcurrently(a1 + 32, v11, v101, &v110, &v111)))
    {
      v12 = 0;
    }

    else if (v100)
    {
      if (fampb_ConcurrentSwitchUpValidForLongEnough(a1 + 32))
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = 2;
    }

    if (*(a1 + 113))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = *(a1 + 320);
  }

  if (v12 == 1)
  {
    v11 -= FigAlternateGetExpectedAverageBitrate(*(a1 + 40));
  }

LABEL_17:
  for (j = 0; ; ++j)
  {
    v14 = theArray;
    if (theArray)
    {
      v14 = CFArrayGetCount(theArray);
    }

    if (j >= v14)
    {
      break;
    }

    v15 = CFArrayGetValueAtIndex(theArray, j);
    if (FigCFEqual())
    {
      if (!v12 && *(a1 + 113) && j)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (*(a1 + 115) || *(a1 + 113) && !j)
      {
        v16 = 0;
      }

      else if (*(a1 + 16) && *(a1 + 8))
      {
        v21 = OUTLINED_FUNCTION_15_34();
        *&v111.value = v22;
        v111.epoch = *(a1 + 312);
        v110 = *(a1 + 336);
        v16 = v23(v21);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_15_34();
        *&v111.value = v26;
        v111.epoch = *(a1 + 312);
        v110 = *(a1 + 336);
        v16 = fampb_rejectSwitchDueToStallRisk(a1 + 32, v15, &v111, &v110, v25);
      }

      if (!v16 && v12 == 1)
      {
        OUTLINED_FUNCTION_16_30();
        canSwitchDownConcurrentlyWithoutStall = fampb_canSwitchDownConcurrentlyWithoutStall(a1 + 32, 0.75, &v111, v24, v11, v15, 0);
LABEL_42:
        v16 = canSwitchDownConcurrentlyWithoutStall ^ 1;
LABEL_43:
        if (!v16)
        {
          continue;
        }

LABEL_44:
        CFArrayAppendValue(v10, v15);
        continue;
      }

      if (v16 | v12)
      {
        goto LABEL_43;
      }

      if (*(a1 + 113) && j)
      {
        if (v11 >= fampb_getRequiredBWForLowLatencyAlternate(a1 + 32, v15))
        {
          v17 = FigAlternateGetPeakBitRate(v15);
          if (v17 >= FigAlternateGetPeakBitRate(*(a1 + 40)))
          {
            continue;
          }

          OUTLINED_FUNCTION_16_30();
          canSwitchDownConcurrentlyWithoutStall = fampb_canSwitchDownConcurrentlyToAlternateWithoutStall(v15, a1 + 32, &v111.value, v18, v11, v19, 0, 1.0);
          goto LABEL_42;
        }

        goto LABEL_44;
      }
    }
  }

  if (CFArrayGetCount(v10) > 0)
  {
    v7 = 1;
    v27 = FigAlternateDenyListFilterCreate(v6, v10, @"ConcurrentDenyListFilter", 0x257u, 1, &v116);
    if (v27 || (v27 = FigAlternateFilterTreeInsertLeaf(v5, v116, 345)) != 0)
    {
LABEL_250:
      v8 = v27;
      Mutable = 0;
      goto LABEL_66;
    }
  }

  if (v12 == 1)
  {
    v28 = FigAlternateNextHighestPeakBitRateFilterCreate(v6, *(a1 + 40), &v115, 1.1);
    if (!v28)
    {
      v29 = v115;
      v30 = v5;
      v31 = 250;
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  if ((v12 | 2) == 2)
  {
    v34 = FigAlternateGetPeakBitRate(*(a1 + 40));
    v28 = FigAlternatePeakBitRateCapFilterCreate(v6, v34, cf);
    if (v28)
    {
      goto LABEL_54;
    }

    v28 = FigAlternateFilterTreeInsertLeaf(v5, cf[0], 460);
    if (v28)
    {
      goto LABEL_54;
    }

    if (!v12 && !*(a1 + 113))
    {
      v28 = FigAlternateLowestVideoThenAudioFilterCreate(v6, v117);
      if (v28)
      {
        goto LABEL_54;
      }

      v29 = v117[0];
      v30 = v5;
      v31 = 230;
LABEL_53:
      v28 = FigAlternateFilterTreeInsertLeaf(v30, v29, v31);
      if (v28)
      {
LABEL_54:
        v8 = v28;
        Mutable = 0;
        goto LABEL_55;
      }
    }
  }

  v8 = 0;
  v7 = 1;
  Mutable = v10;
  v10 = 0;
LABEL_66:
  if (v116)
  {
    CFRelease(v116);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v117[0])
  {
    CFRelease(v117[0]);
  }

  if (v115)
  {
    CFRelease(v115);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v8)
  {
    v35 = 0;
  }

  else
  {
    v35 = v7;
  }

  if (v35)
  {
    v4 = MEMORY[0x1E695E480];
    goto LABEL_178;
  }

LABEL_222:
  v93 = 0;
LABEL_223:
  fampb_releaseAndClearPlaybackFilterConfig(a1 + 32);
  v98 = *(a1 + 8);
  if (v98)
  {
    CFRelease(v98);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v99 = *(a1 + 288);
  if (v99)
  {
    CFRelease(v99);
  }

  free(a1);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  if (v93)
  {
    CFRelease(v93);
  }
}

uint64_t FigAlternatePlaybackBitrateMonitorGetAlternateRank(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  IsAlternateStillValid = FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(a1, a2);
  v6 = 0;
  if (IsAlternateStillValid && DerivedStorage)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(a2);
    FigSimpleMutexLock();
    if (fampb_copyAlternateListSortedByQuality((DerivedStorage + 264), *MEMORY[0x1E695E480], 0, &theArray) || !theArray || CFArrayGetCount(theArray) < 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        Count = theArray;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        if (v10 >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
        v14 = FigAlternateGetPeakBitRate(ValueAtIndex);
        v15 = v14 != v9;
        if (v14 != v9)
        {
          ++v11;
        }

        if (v14 <= PeakBitRate)
        {
          v15 = 0;
        }

        v8 += v15;
        ++v10;
        v9 = v14;
      }

      v6 = 100;
      if (v11 >= 2)
      {
        v6 = (100 - 100 * v8 / (v11 - 1));
      }
    }

    FigSimpleMutexUnlock();
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  return v6;
}

uint64_t fampb_copyAlternateListSortedByQuality(uint64_t *a1, const __CFAllocator *a2, int a3, const __CFArray **a4)
{
  theArray = 0;
  if (!a4)
  {
    return 0;
  }

  valid = fampb_copyValidAlternateList(*a1, &theArray);
  if (valid)
  {
LABEL_17:
    v11 = valid;
    goto LABEL_13;
  }

  if (!theArray)
  {
    return 0;
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    MutableCopy = CFArrayCreateMutableCopy(a2, 0, theArray);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      if (a3)
      {
        v10 = fampb_AlternatePeakBitrateComparator;
      }

      else if (FigAlternatesCarryRankingScore(MutableCopy))
      {
        v10 = fampb_AlternateRankingScoreComparator;
      }

      else
      {
        v10 = fampb_AlternatePeakBitrateComparator;
      }

      v16.length = CFArrayGetCount(v9);
      v16.location = 0;
      CFArraySortValues(v9, v16, v10, 0);
      v11 = 0;
      *a4 = v9;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, theArray, v15);
    goto LABEL_17;
  }

  v11 = 0;
LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v11;
}

uint64_t FigAlternatePlaybackBitrateMonitorGetMaxResolutionAndBitrate(uint64_t a1, double *a2, int *a3, _DWORD *a4, double a5, double a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valid = 0;
  theArray = 0;
  if (a2)
  {
    v13 = DerivedStorage;
    if (DerivedStorage)
    {
      if (a3)
      {
        FigSimpleMutexLock();
        valid = fampb_copyValidAlternateList(*(v13 + 264), &theArray);
        if (!valid && theArray && CFArrayGetCount(theArray) >= 1)
        {
          v15 = 0;
          v16 = 0;
          NormalizedPeakBitrate = 0;
          v18 = a6 * a5;
          v19 = 0.0;
          v20 = 0.0;
          while (1)
          {
            Count = theArray;
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
            }

            if (v16 >= Count)
            {
              break;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
            Resolution = FigAlternateGetResolution(ValueAtIndex);
            if (v24 > 0.0 && Resolution > 0.0 && Resolution * v24 > v18)
            {
              v15 = ValueAtIndex;
              v19 = Resolution;
              v20 = v24;
              v18 = Resolution * v24;
            }

            if (NormalizedPeakBitrate <= FigAlternateGetNormalizedPeakBitrate(ValueAtIndex))
            {
              NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(ValueAtIndex);
            }

            ++v16;
          }

          *a2 = v19;
          a2[1] = v20;
          *a3 = NormalizedPeakBitrate;
          if (a4 && v15)
          {
            *a4 = FigAlternateGetVideoQualityIndex(v15, v14);
          }
        }

        FigSimpleMutexUnlock();
        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }
  }

  return valid;
}

const void *FigAlternatePlaybackBitrateMonitorRejectSwitch(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v18 = 0;
  v16 = 0;
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 112))
  {
    v19 = 0;
    v20 = 0;
    fampb_createRecordABREventEntryForNowAndInsertQ(a1, &v20);
    v5 = v20;
    if (v20)
    {
      if (a2)
      {
        v6 = CFRetain(a2);
        v5 = v20;
      }

      else
      {
        v6 = 0;
      }

      v5[2] = v6;
      *(v5 + 2) = 14;
      fampb_createRecordingDecisionAlternateEntryAndInsertQ(a1, &v19);
      if (!v7)
      {
        v8 = v19;
        if (v19)
        {
          *v19 = *v20;
          v8[1] = 0;
        }
      }
    }
  }

  v9 = *(DerivedStorage + 64);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v10(v9);
  }

  if (!FigCFEqual())
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (!FigAlternateFilterTreeCreate(AllocatorForMedia, &v18) && !FigAlternateFilterTreeInsertLeaf(v18, *(DerivedStorage + 264), 500))
    {
      v12 = CFGetAllocator(a1);
      if (!FigAlternateSingleAlternateFilterCreate(v12, a2, 1, @"RejectedSwitch", 490, &cf) && !FigAlternateFilterTreeInsertLeaf(v18, cf, 500))
      {
        v13 = *(DerivedStorage + 72);
        if (!v13 || !FigAlternateFilterTreeSetFallbackBranch(v18, v13))
        {
          FigAlternateFilterTreeCreateFilter(v18, @"RejectedSwitchFilterTree", 600, &v16);
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  v14 = fampb_notifyFilterChangeAndRecordStallRiskListUnlocked(a1, v16, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t FigAlternatePlaybackBitrateMonitorTryToSwitchUp(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  FigSimpleMutexLock();
  *(DerivedStorage + 392) = 0;
  v3 = FigNetworkHistoryObserverTestCondition();
  fampb_attemptToSwitch(a1, v3, &v5);
  FigSimpleMutexUnlock();
  if (!v5)
  {
    return 0;
  }

  dispatch_sync_f(*(DerivedStorage + 32), 0, fampb_noop);
  return v5;
}

uint64_t FigAlternatePlaybackBitrateMonitorCopySerializedRecordData(const void *a1, const __CFAllocator *a2, __CFData **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(v16, 0x800uLL);
  *a3 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 113))
  {
    v15 = 4294949563;
    goto LABEL_9;
  }

  if (!*(DerivedStorage + 112))
  {
    v15 = 0;
    goto LABEL_9;
  }

  v6 = *(DerivedStorage + 148);
  if (v6 != fampb_recordDataGetTotalBitrateCurvePointCount(DerivedStorage))
  {
    OUTLINED_FUNCTION_3_12();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_13:
    v15 = v13;
    goto LABEL_9;
  }

  time.value = 0;
  v7 = CMBaseObjectGetDerivedStorage();
  if (*(v7 + 112))
  {
    v8 = v7;
    v9 = CFGetAllocator(a1);
    if (!fampb_createRecordABREventEntry(v9, &time.value))
    {
      value = time.value;
      v11 = time.value;
      *(time.value + 40) = 0;
      v12 = *(v8 + 192);
      *(value + 48) = v12;
      *v12 = value;
      *(v8 + 192) = v11 + 40;
      ++*(v8 + 176);
      *value = FigGetUpTimeNanoseconds();
      *(value + 8) = 22;
    }
  }

  v13 = FigNetworkHistoryCopySerializedRecordData();
  if (v13)
  {
    goto LABEL_13;
  }

  v15 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t fampb_setProperty(const void *a1, const void *a2, const void *a3)
{
  v182 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"AfmfpbProperty_Timebase"))
  {
    if (a3)
    {
      CMTimebaseGetTypeID();
      if (a2 == OUTLINED_FUNCTION_27_18())
      {
        v7 = *(DerivedStorage + 592);
        if (v7 == a3)
        {
          goto LABEL_44;
        }

        if (v7)
        {
          fampb_removeTimebaseListeners(a1);
          v8 = *(DerivedStorage + 592);
          *(DerivedStorage + 592) = a3;
          CFRetain(a3);
          if (v8)
          {
            CFRelease(v8);
          }
        }

        else
        {
          *(DerivedStorage + 592) = a3;
          CFRetain(a3);
        }

        if (*(DerivedStorage + 592))
        {
          CMBaseObjectGetDerivedStorage();
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          Time = CMTimebaseGetTime(&v179, *(DerivedStorage + 592));
          value = v179.value;
          flags = v179.flags;
          timescale = v179.timescale;
          if ((v179.flags & 0x1D) == 1)
          {
            epoch = v179.epoch;
            if ((*(DerivedStorage + 228) & 0x1D) != 1 || (OUTLINED_FUNCTION_37_17(), v41 = OUTLINED_FUNCTION_281(v33, v34, v35, v36, v37, v38, v39, v40, v175.value, *&v175.timescale, v175.epoch, valuePtr, *(DerivedStorage + 216), *(DerivedStorage + 224), *(DerivedStorage + 232), v178, v179.value), Time = CMTimeCompare(v41, v42), (Time & 0x80000000) != 0))
            {
              *(DerivedStorage + 216) = value;
              *(DerivedStorage + 224) = timescale;
              *(DerivedStorage + 228) = flags;
              *(DerivedStorage + 232) = epoch;
            }

            if ((*(DerivedStorage + 252) & 0x1D) != 1 || (OUTLINED_FUNCTION_37_17(), v51 = OUTLINED_FUNCTION_281(v43, v44, v45, v46, v47, v48, v49, v50, v175.value, *&v175.timescale, v175.epoch, valuePtr, *(DerivedStorage + 240), *(DerivedStorage + 248), *(DerivedStorage + 256), v178, v179.value), Time = CMTimeCompare(v51, v52), Time >= 1))
            {
              *(DerivedStorage + 240) = value;
              *(DerivedStorage + 248) = timescale;
              *(DerivedStorage + 252) = flags;
              *(DerivedStorage + 256) = epoch;
            }

            OUTLINED_FUNCTION_12_40(Time, v20, v21, v22, v23, v24, v25, v26, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
            v53 = v179.value;
            if (v179.value)
            {
              *(v179.value + 16) = value;
              *(v53 + 24) = timescale;
              *(v53 + 28) = flags;
              *(v53 + 32) = epoch;
              *(v53 + 8) = 1;
            }
          }
        }

        fampb_setupDryTimer(a1);
        if (!*(DerivedStorage + 272))
        {
          goto LABEL_44;
        }

        v30 = *(DerivedStorage + 764) != 0;
        goto LABEL_57;
      }
    }

    goto LABEL_8;
  }

  if (FigCFEqual())
  {
    v11 = *(DerivedStorage + 336);
    *(DerivedStorage + 336) = a3;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = CFEqual(a2, @"AfmfpbProperty_CurrentAlternate");
  if (!v12)
  {
    if (CFEqual(a2, @"AfmfpbProperty_TrialAlternate"))
    {
      if (a3)
      {
        v16 = CFGetTypeID(a3);
        if (v16 != FigAlternateGetTypeID(v16, v17))
        {
          goto LABEL_8;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_44;
      }

      v18 = *(DerivedStorage + 280);
      *(DerivedStorage + 280) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v18)
      {
        CFRelease(v18);
      }

LABEL_39:
      v9 = fampb_setBandwidthConditions(a1);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"AfmfpbProperty_StartsOnFirstEligibleVariant"))
    {
      if (a3)
      {
        CFBooleanGetTypeID();
        if (a2 == OUTLINED_FUNCTION_27_18())
        {
          v76 = CFBooleanGetValue(a3);
          fampb_setStartsOnFirstEligibleVariant(a1, v76);
          goto LABEL_44;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PrefersConcurrentSwitch"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      CFBooleanGetTypeID();
      if (a2 != OUTLINED_FUNCTION_27_18())
      {
        goto LABEL_8;
      }

      v29 = *(DerivedStorage + 344);
      if (v29 == CFBooleanGetValue(a3))
      {
        goto LABEL_44;
      }

      *(DerivedStorage + 344) = CFBooleanGetValue(a3);
      goto LABEL_39;
    }

    if (CFEqual(a2, @"AfmfpbProperty_BandwidthCap"))
    {
      if (a3)
      {
        CFNumberGetTypeID();
        if (a2 == OUTLINED_FUNCTION_27_18())
        {
          v54 = CFNumberGetValue(a3, kCFNumberSInt32Type, (DerivedStorage + 416));
          v62 = *(DerivedStorage + 416);
          if (!v62)
          {
            v62 = 0x7FFFFFFF;
            *(DerivedStorage + 416) = 0x7FFFFFFF;
          }

          if (!*(DerivedStorage + 272))
          {
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_12_40(v54, v55, v56, v57, v58, v59, v60, v61, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
          v63 = v179.value;
          if (v179.value)
          {
            *(v179.value + 16) = v62;
            *(v63 + 8) = 16;
          }

          v64 = *(DerivedStorage + 416);
          v30 = v64 >= FigAlternateGetPeakBitRate(*(DerivedStorage + 272));
LABEL_57:
          v31 = a1;
LABEL_58:
          v9 = fampb_configurePlaybackFilterForUpdatedProperties(v31, v30);
          goto LABEL_9;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_OkayToAttemptSwitchUp"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      CFBooleanGetTypeID();
      if (a2 != OUTLINED_FUNCTION_27_18())
      {
        goto LABEL_8;
      }

      v65 = CFBooleanGetValue(a3);
      if (*(DerivedStorage + 764) == v65)
      {
        goto LABEL_44;
      }

      v73 = v65;
      *(DerivedStorage + 764) = v65;
      OUTLINED_FUNCTION_12_40(v65, v66, v67, v68, v69, v70, v71, v72, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
      v74 = v179.value;
      if (!v179.value)
      {
        goto LABEL_44;
      }

      *(v179.value + 16) = v73;
      v75 = 8;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_SwitchMinDuration"))
    {
      if (a3)
      {
        CFNumberGetTypeID();
        if (a2 == OUTLINED_FUNCTION_27_18())
        {
          valuePtr = 0;
          CFNumberGetValue(a3, kCFNumberDoubleType, &valuePtr);
          CMTimeMakeWithSeconds(&v179, *&valuePtr, 1000);
          time1 = *(DerivedStorage + 364);
          v175 = v179;
          if (CMTimeCompare(&time1, &v175))
          {
            *(DerivedStorage + 364) = v179;
            v96 = valuePtr;
            time1.value = 0;
            fampb_createRecordABREventEntryForNowAndInsertQ(a1, &time1);
            v97 = time1.value;
            if (time1.value)
            {
              *(time1.value + 16) = v96;
              *(v97 + 8) = 5;
            }
          }

          fampb_setupDryTimer(a1);
          goto LABEL_44;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_QualityGear"))
    {
      if (a3)
      {
        CFNumberGetTypeID();
        if (a2 == OUTLINED_FUNCTION_27_18())
        {
          CFNumberGetValue(a3, kCFNumberSInt32Type, (DerivedStorage + 760));
          *(DerivedStorage + 767) = 0;
          v31 = a1;
          v30 = 0;
          goto LABEL_58;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PlayerRate"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v77 = CFGetTypeID(a3);
      if (v77 != CFNumberGetTypeID())
      {
        goto LABEL_8;
      }

      LODWORD(time1.value) = 0;
      v78 = CFNumberGetValue(a3, kCFNumberFloat32Type, &time1);
      v86 = time1.value;
      if (*(DerivedStorage + 420) == *&time1.value)
      {
        goto LABEL_44;
      }

      *(DerivedStorage + 420) = time1.value;
      OUTLINED_FUNCTION_12_40(v78, v79, v80, v81, v82, v83, v84, v85, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
      v74 = v179.value;
      if (!v179.value)
      {
        goto LABEL_44;
      }

      *(v179.value + 16) = v86;
      v75 = 6;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_RTT"))
    {
      if (!a3)
      {
        v10 = 0;
        *(DerivedStorage + 1256) = 0;
        goto LABEL_45;
      }

      CFNumberGetTypeID();
      if (a2 != OUTLINED_FUNCTION_27_18())
      {
        goto LABEL_8;
      }

      time1.value = 0;
      CFNumberGetValue(a3, kCFNumberSInt64Type, &time1);
      updated = fampb_updateSmoothRTT(a1, time1.value);
      v117 = time1.value;
      OUTLINED_FUNCTION_12_40(updated, v118, v119, v120, v121, v122, v123, v124, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
      v74 = v179.value;
      if (!v179.value)
      {
        goto LABEL_44;
      }

      *(v179.value + 16) = v117;
      v75 = 17;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_BytesRequiredForNetworkPrediction"))
    {
      if (*(DerivedStorage + 344))
      {
        goto LABEL_44;
      }

      if (!a3)
      {
        v10 = 0;
        *(DerivedStorage + 832) = 0;
        goto LABEL_45;
      }

      CFNumberGetTypeID();
      if (a2 != OUTLINED_FUNCTION_27_18())
      {
        goto LABEL_8;
      }

      SInt64 = FigCFNumberGetSInt64();
      if (*(DerivedStorage + 832) == SInt64)
      {
        goto LABEL_44;
      }

      v95 = SInt64;
      *(DerivedStorage + 832) = SInt64;
      OUTLINED_FUNCTION_12_40(SInt64, v88, v89, v90, v91, v92, v93, v94, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
      v74 = v179.value;
      if (!v179.value)
      {
        goto LABEL_44;
      }

      *(v179.value + 16) = v95;
      v75 = 18;
LABEL_84:
      *(v74 + 8) = v75;
      goto LABEL_44;
    }

    if (CFEqual(a2, @"AfmfpbProperty_EstimatedGOPInterval"))
    {
      if (a3)
      {
        v98 = CFGetTypeID(a3);
        TypeID = CFNumberGetTypeID();
        if (v98 == TypeID)
        {
          OUTLINED_FUNCTION_53_12(TypeID, v100, v101, v102, v103, v104, v105, v106, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
          v10 = 0;
          *(DerivedStorage + 440) = v179.value;
          goto LABEL_45;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PartTargetDuration"))
    {
      if (a3)
      {
        v107 = CFGetTypeID(a3);
        v108 = CFNumberGetTypeID();
        if (v107 == v108)
        {
          OUTLINED_FUNCTION_53_12(v108, v109, v110, v111, v112, v113, v114, v115, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
          v10 = 0;
          *(DerivedStorage + 448) = v179.value;
          goto LABEL_45;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_SwitchesQualityGearAutomatically"))
    {
      if (a3)
      {
        v125 = CFBooleanGetTypeID();
        if (v125 == CFGetTypeID(a3))
        {
          v10 = 0;
          *(DerivedStorage + 767) = CFBooleanGetValue(a3);
          goto LABEL_45;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_TransitionAttributes"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v126 = CFGetTypeID(a3);
      if (v126 != CFDictionaryGetTypeID())
      {
        goto LABEL_8;
      }

      v11 = *(DerivedStorage + 304);
      *(DerivedStorage + 304) = a3;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"AfmfpbProperty_AudibleMediaSelectionOptionPersistentID"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v127 = CFGetTypeID(a3);
      if (v127 != CFNumberGetTypeID())
      {
        goto LABEL_8;
      }

      v11 = *(DerivedStorage + 296);
      *(DerivedStorage + 296) = a3;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PredictedBitrate"))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v128 = CFGetTypeID(a3);
      if (v128 != CFNumberGetTypeID())
      {
        goto LABEL_8;
      }

      v129 = FigCFNumberGetSInt64();
      if (v129 == *(DerivedStorage + 400))
      {
        goto LABEL_44;
      }

      v137 = v129;
      *(DerivedStorage + 400) = v129;
      OUTLINED_FUNCTION_12_40(v129, v130, v131, v132, v133, v134, v135, v136, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
      v74 = v179.value;
      if (!v179.value)
      {
        goto LABEL_44;
      }

      *(v179.value + 16) = v137;
      v75 = 19;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_PendingSeekTime"))
    {
      if (a3)
      {
        v138 = CFGetTypeID(a3);
        if (v138 != CFDictionaryGetTypeID())
        {
          goto LABEL_8;
        }
      }

      CMTimeMakeFromDictionary(&v179, a3);
      *(DerivedStorage + 728) = v179;
      if ((*(DerivedStorage + 740) & 0x1D) == 1)
      {
        if ((*(DerivedStorage + 252) & 0x1D) != 1 || (OUTLINED_FUNCTION_40_14(), v160 = OUTLINED_FUNCTION_281(v152, v153, v154, v155, v156, v157, v158, v159, v175.value, *&v175.timescale, v175.epoch, valuePtr, *(DerivedStorage + 240), *(DerivedStorage + 248), *(DerivedStorage + 256), v178, v179.value), CMTimeCompare(v160, v161) >= 1))
        {
          *(DerivedStorage + 240) = *(DerivedStorage + 728);
          *(DerivedStorage + 256) = *(DerivedStorage + 744);
        }
      }

      OUTLINED_FUNCTION_40_14();
      time1.value = 0;
      fampb_createRecordABREventEntryForNowAndInsertQ(a1, &time1);
      v74 = time1.value;
      if (!time1.value)
      {
        goto LABEL_44;
      }

      *(time1.value + 16) = *&v179.value;
      *(v74 + 32) = v179.epoch;
      v75 = 3;
      goto LABEL_84;
    }

    v139 = CFEqual(a2, @"AfmfpbProperty_RecoveryAlternate");
    if (v139)
    {
      if (a3)
      {
        FigAlternateGetTypeID(v139, v140);
        if (a2 != OUTLINED_FUNCTION_27_18())
        {
          goto LABEL_8;
        }

        v164 = (DerivedStorage + 288);
        v165 = *(DerivedStorage + 288);
        *(DerivedStorage + 288) = a3;
        CFRetain(a3);
      }

      else
      {
        v164 = (DerivedStorage + 288);
        v165 = *(DerivedStorage + 288);
        *(DerivedStorage + 288) = 0;
      }

      if (v165)
      {
        CFRelease(v165);
      }

      fampb_recordRecoveryAlternate(a1, *v164);
      goto LABEL_44;
    }

    if (CFEqual(a2, @"AfmfpbProperty_IsBufferFull"))
    {
      v148 = *MEMORY[0x1E695E4D0];
      v149 = *MEMORY[0x1E695E4D0] == a3;
      if (*(DerivedStorage + 765) == v149)
      {
        goto LABEL_44;
      }

      *(DerivedStorage + 765) = v149;
      if (v148 == a3)
      {
        UpTimeNanoseconds = 0;
        v151 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_28_18();
        if (v170 ^ v171 | v169)
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v151 = *(DerivedStorage + 765);
        }

        else
        {
          v151 = 0;
          UpTimeNanoseconds = ((*(DerivedStorage + 472) - v168) * 1000000000.0);
        }
      }

      *(DerivedStorage + 696) = UpTimeNanoseconds;
      OUTLINED_FUNCTION_12_40(UpTimeNanoseconds, v141, v142, v143, v144, v145, v146, v147, v175.value, *&v175.timescale, v175.epoch, valuePtr, time1.value, *&time1.timescale, time1.epoch, v178, v179.value);
      v74 = v179.value;
      if (!v179.value)
      {
        goto LABEL_44;
      }

      *(v179.value + 16) = v151;
      v75 = 10;
      goto LABEL_84;
    }

    if (CFEqual(a2, @"AfmfpbProperty_ResourceConservationLevelWhenPaused"))
    {
      if (a3)
      {
        v162 = CFGetTypeID(a3);
        if (v162 == CFNumberGetTypeID())
        {
          v10 = 0;
          *(DerivedStorage + 768) = FigCFNumberGetSInt32();
          goto LABEL_45;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"AfmfpbProperty_MainPlaylistExpectedUpdateTime"))
    {
      v163 = FigCFNumberGetSInt64();
      *(DerivedStorage + 456) = v163;
      if (v163 >= 1 && FigGetUpTimeNanoseconds() > *(DerivedStorage + 456))
      {
        fampb_configurePlaybackFilterForUpdatedProperties(a1, 0);
      }

      goto LABEL_44;
    }

    if (CFEqual(a2, @"AfmfpbProperty_DisableTrialSwitchUpTimer"))
    {
      v10 = 0;
      OUTLINED_FUNCTION_52_12();
      *(DerivedStorage + 348) = v166;
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_HasUnmuxedVideo"))
    {
      v10 = 0;
      OUTLINED_FUNCTION_52_12();
      *(DerivedStorage + 350) = v167;
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_AllActiveStreamHadMediaFiles"))
    {
      v10 = 0;
      OUTLINED_FUNCTION_52_12();
      *(DerivedStorage + 349) = v172;
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_MainStreamDiscontinuityDomain"))
    {
      v10 = 0;
      *(DerivedStorage + 320) = FigCFNumberGetCFIndex();
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_MainStreamDiscoDomainOffset"))
    {
      v10 = 0;
      *(DerivedStorage + 328) = FigCFNumberGetCFIndex();
      goto LABEL_45;
    }

    if (CFEqual(a2, @"AfmfpbProperty_MainStreamPlaylist"))
    {
      *(DerivedStorage + 148) = fampb_recordDataGetTotalBitrateCurvePointCount(DerivedStorage);
      v11 = *(DerivedStorage + 312);
      *(DerivedStorage + 312) = a3;
      if (a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (CFEqual(a2, @"AfmfpbProperty_AudioStreamPlaylist"))
      {
        v10 = 0;
        *(DerivedStorage + 148) = fampb_recordDataGetTotalBitrateCurvePointCount(DerivedStorage);
        goto LABEL_45;
      }

      if (CFEqual(a2, @"AfmfpbProperty_ConnectedInterfaceIsWWAN"))
      {
        v10 = 0;
        OUTLINED_FUNCTION_52_12();
        *(DerivedStorage + 517) = v173;
        goto LABEL_45;
      }

      if (FigCFEqual())
      {
        v11 = *(DerivedStorage + 80);
        *(DerivedStorage + 80) = a3;
        if (a3)
        {
          goto LABEL_12;
        }
      }

      else if (FigCFEqual())
      {
        v11 = *(DerivedStorage + 88);
        *(DerivedStorage + 88) = a3;
        if (a3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (!FigCFEqual())
        {
          if (CFEqual(a2, @"AfmfpbProperty_ResourceArbiterConsumerID"))
          {
            UInt64 = FigCFNumberGetUInt64();
            if (UInt64)
            {
              if (!*(DerivedStorage + 520))
              {
                *(DerivedStorage + 520) = UInt64;
                fampb_setupResourceArbiter(a1);
                goto LABEL_44;
              }
            }
          }

          goto LABEL_8;
        }

        v11 = *(DerivedStorage + 96);
        *(DerivedStorage + 96) = a3;
        if (a3)
        {
LABEL_12:
          CFRetain(a3);
        }
      }
    }

LABEL_13:
    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_44;
  }

  if (a3)
  {
    FigAlternateGetTypeID(v12, v13);
    if (a2 == OUTLINED_FUNCTION_27_18())
    {
      if (!FigCFEqual())
      {
        v14 = *(DerivedStorage + 280);
        if (v14)
        {
          CFRelease(v14);
          *(DerivedStorage + 280) = 0;
        }

        v15 = *(DerivedStorage + 272);
        *(DerivedStorage + 272) = a3;
        CFRetain(a3);
        if (v15)
        {
          CFRelease(v15);
        }

        if (FigAlternateIsIFrameOnly(*(DerivedStorage + 272)) || FigAlternateIsAudioOnly(*(DerivedStorage + 272)))
        {
          *(DerivedStorage + 432) = 0x3FF0000000000000;
        }

        if (*(DerivedStorage + 464))
        {
          *(DerivedStorage + 464) = 0;
        }

        fampb_recordCurrentAlternate(a1, *(DerivedStorage + 272), *(DerivedStorage + 104));
        v9 = fampb_updateNetworkSpecifierOnArbiter(a1);
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_39;
      }

LABEL_44:
      v10 = 0;
      goto LABEL_45;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_243();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_9:
  v10 = v9;
LABEL_45:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fampb_setBandwidthConditions(uint64_t a1)
{
  v135 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!*(DerivedStorage + 272))
  {
    return 0;
  }

  v4 = DerivedStorage;
  valid = fampb_copyValidAlternateList(*(DerivedStorage + 264), &theArray);
  if (valid)
  {
    v23 = valid;
    goto LABEL_65;
  }

  if (!theArray)
  {
    return 0;
  }

  v104 = v1;
  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_64:
    v23 = 0;
    goto LABEL_65;
  }

  ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*(v4 + 272));
  PeakBitRate = FigAlternateGetPeakBitRate(*(v4 + 272));
  LODWORD(v106) = (*(v4 + 432) * PeakBitRate);
  HIDWORD(v106) = PeakBitRate;
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = v8;
  if (*(v8 + 344))
  {
    v44 = *(v8 + 272);
    if (*(v8 + 345))
    {
      RequiredBWForLowLatencyAlternate = fampb_getRequiredBWForLowLatencyAlternate(v8 + 264, v44);
      v19 = RequiredBWForLowLatencyAlternate;
      if (RequiredBWForLowLatencyAlternate > 0)
      {
        goto LABEL_8;
      }

LABEL_27:
      if (dword_1EAF17490)
      {
        v47 = OUTLINED_FUNCTION_6_76(RequiredBWForLowLatencyAlternate, v11, v12, v13, v14, v15, v16, v17, v100, v102, v1, v106, v108, SBYTE2(v108), SBYTE3(v108), SHIDWORD(v108));
        if (os_log_type_enabled(v47, BYTE3(v108)))
        {
          v48 = HIDWORD(v108);
        }

        else
        {
          v48 = HIDWORD(v108) & 0xFFFFFFFE;
        }

        if (v48)
        {
          if (theArray)
          {
            CFArrayGetCount(theArray);
          }

          valuePtr[0] = 136316162;
          OUTLINED_FUNCTION_18_26("fampb_setBandwidthConditions");
          v119 = ExpectedAverageBitrate;
          OUTLINED_FUNCTION_23_28(v49, v50);
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v51, v52, v53, v54, v55, v47, BYTE3(v108), v56);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(v4 + 1232))
      {
        FigNetworkHistoryObserverRemoveCondition();
        *(v4 + 1232) = 0;
      }

      goto LABEL_38;
    }

    RequiredBWForLowLatencyAlternate = fampb_copyLowerSwitchCandidate((v8 + 264), v44, 1);
    if (!RequiredBWForLowLatencyAlternate)
    {
      goto LABEL_27;
    }

    v45 = RequiredBWForLowLatencyAlternate;
    v46 = FigAlternateGetExpectedAverageBitrate(RequiredBWForLowLatencyAlternate);
    v18 = v46 + FigAlternateGetExpectedAverageBitrate(*(v9 + 272)) * 1.1;
    CFRelease(v45);
  }

  else
  {
    RequiredBWForLowLatencyAlternate = FigAlternateGetPeakBitRate(*(v8 + 272));
    v18 = *(v9 + 432) * (RequiredBWForLowLatencyAlternate - 1);
  }

  v19 = v18;
  if (v18 == -1)
  {
    goto LABEL_27;
  }

LABEL_8:
  OUTLINED_FUNCTION_13_34(v19);
  if (v20)
  {
    v115 = *(v4 + 1000);
    memcpy(__dst, (v4 + 1024), sizeof(__dst));
    v21 = *(v4 + 1168);
    OUTLINED_FUNCTION_44_14(v4 + 1176);
    v22 = *(v4 + 1240);
  }

  else
  {
    v115 = *(v4 + 776);
    v22 = *(v4 + 792);
    memcpy(__dst, (v4 + 800), sizeof(__dst));
    v21 = *(v4 + 944);
    OUTLINED_FUNCTION_44_14(v4 + 952);
  }

  v24 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v24)
  {
    v25 = v24;
    if (*(v4 + 1232))
    {
      FigNetworkHistoryObserverRemoveCondition();
      *(v4 + 1232) = 0;
    }

    v123 = v25;
    v124 = 6;
    v125 = v115;
    v126 = v22;
    memcpy(v127, __dst, sizeof(v127));
    v128 = v21 | 0x18;
    v129 = v120;
    v130 = v121;
    v131 = v122;
    v23 = FigNetworkHistoryObserverAddCondition();
    CFRelease(v25);
    if (v23)
    {
      goto LABEL_65;
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_14();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v100, v102, v1);
    v23 = v26;
    if (v26)
    {
      goto LABEL_65;
    }
  }

  if (dword_1EAF17490)
  {
    v34 = OUTLINED_FUNCTION_6_76(v26, v27, v28, v29, v30, v31, v32, v33, v100, v102, v104, v106, v108, SBYTE2(v108), SBYTE3(v108), SHIDWORD(v108));
    if (os_log_type_enabled(v34, BYTE3(v108)))
    {
      v35 = HIDWORD(v108);
    }

    else
    {
      v35 = HIDWORD(v108) & 0xFFFFFFFE;
    }

    if (v35)
    {
      v36 = *(v4 + 336);
      valuePtr[0] = 136316930;
      OUTLINED_FUNCTION_20_21(v36);
      v119 = v19;
      OUTLINED_FUNCTION_10_43(v37, v100, v102, v104, v106, SHIDWORD(v106));
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v38, v39, v40, v41, v42, v34, BYTE3(v108), v43);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_38:
  v57 = fampb_minimumBandwidthRequiredToSwitchUp(a1, theArray);
  if (v57 == -1)
  {
    if (dword_1EAF17490)
    {
      v68 = ExpectedAverageBitrate;
      v69 = OUTLINED_FUNCTION_6_76(v57, v58, v59, v60, v61, v62, v63, v64, v100, v102, v104, v106, v108, SBYTE2(v108), SBYTE3(v108), SHIDWORD(v108));
      if (os_log_type_enabled(v69, type))
      {
        v70 = v111;
      }

      else
      {
        v70 = v111 & 0xFFFFFFFE;
      }

      if (v70)
      {
        if (theArray)
        {
          CFArrayGetCount(theArray);
        }

        valuePtr[0] = 136316162;
        OUTLINED_FUNCTION_18_26("fampb_setBandwidthConditions");
        v119 = v68;
        OUTLINED_FUNCTION_23_28(v71, v72);
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v73, v74, v75, v76, v77, v69, type, v78);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v4 + 1224))
    {
      FigNetworkHistoryObserverRemoveCondition();
      v23 = 0;
      *(v4 + 1224) = 0;
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  HIDWORD(v102) = v57;
  OUTLINED_FUNCTION_13_34(v57);
  if (v65)
  {
    v117 = *(v4 + 1000);
    memcpy(__src, (v4 + 1024), sizeof(__src));
    v66 = *(v4 + 1168);
    OUTLINED_FUNCTION_42_13(v4 + 1176);
    v67 = *(v4 + 1240);
  }

  else
  {
    v117 = *(v4 + 776);
    v67 = *(v4 + 792);
    memcpy(__src, (v4 + 800), sizeof(__src));
    v66 = *(v4 + 944);
    OUTLINED_FUNCTION_42_13(v4 + 952);
  }

  v79 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v79)
  {
    v80 = v79;
    if (*(v4 + 1224))
    {
      FigNetworkHistoryObserverRemoveCondition();
      *(v4 + 1224) = 0;
    }

    v123 = v80;
    v124 = 5;
    v125 = v117;
    v126 = v67;
    memcpy(v127, __src, sizeof(v127));
    v128 = v66 | 0x18;
    v129 = v132;
    v130 = v133;
    v131 = v134;
    v23 = FigNetworkHistoryObserverAddCondition();
    CFRelease(v80);
    if (v23)
    {
      goto LABEL_65;
    }

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_41_14();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v100, v102, v104);
  v23 = v81;
  if (!v81)
  {
LABEL_54:
    if (!dword_1EAF17490)
    {
      goto LABEL_65;
    }

    v89 = OUTLINED_FUNCTION_6_76(v81, v82, v83, v84, v85, v86, v87, v88, v100, v102, v104, v106, v108, SBYTE2(v108), SBYTE3(v108), SHIDWORD(v108));
    if (os_log_type_enabled(v89, typea))
    {
      v90 = v112;
    }

    else
    {
      v90 = v112 & 0xFFFFFFFE;
    }

    if (v90)
    {
      v91 = *(v4 + 336);
      valuePtr[0] = 136316930;
      OUTLINED_FUNCTION_20_21(v91);
      v119 = HIDWORD(v103);
      OUTLINED_FUNCTION_10_43(v92, v101, v103, v105, v107, SHIDWORD(v107));
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v93, v94, v95, v96, v97, v89, typea, v98);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_64;
  }

LABEL_65:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v23;
}

void fampb_TimebaseTimerListener(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    fampb_UpdateLocalBitrate(v1);

    CFRelease(v2);
  }
}

double fampb_createRecordABREventEntryForNowAndInsertQ(const void *a1, uint64_t **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (*(DerivedStorage + 112))
  {
    if (a2)
    {
      v6 = DerivedStorage;
      MonitorDataSize = fampb_serializedRecordDataGetMonitorDataSize(a1);
      if (*(v6 + 116) < FigNetworkHistoryGetSerializedRecordByteDataSize() + MonitorDataSize)
      {
        fampb_submitNetworkHistory(a1);
        fampb_releaseRecordingData(a1);
        *(v6 + 113) = 1;
      }

      else
      {
        v8 = CFGetAllocator(a1);
        RecordABREventEntry = fampb_createRecordABREventEntry(v8, &v13);
        v10 = v13;
        if (RecordABREventEntry)
        {
          if (v13)
          {
            v12 = CFGetAllocator(a1);
            CFAllocatorDeallocate(v12, v10);
          }
        }

        else
        {
          v13[5] = 0;
          v11 = *(v6 + 192);
          v10[6] = v11;
          *v11 = v10;
          *(v6 + 192) = v10 + 5;
          ++*(v6 + 176);
          *v10 = FigGetUpTimeNanoseconds();
          *a2 = v10;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_243();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t fampb_getRequiredBWForLowLatencyAlternate(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 80))
  {
    return 0;
  }

  if (*(a1 + 81))
  {
    v4 = fampb_copyLowerSwitchCandidate(a1, a2, 0);
    if (v4)
    {
      v5 = v4;
      ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(a2);
      v7 = FigAlternateGetPeakBitRate(v5) + ExpectedAverageBitrate;
      CFRelease(v5);
      return v7;
    }

    return 0;
  }

  return FigAlternateGetExpectedAverageBitrate(a2);
}

BOOL fampb_updateGroupBandwidthWeightOnPredictor(uint64_t a1)
{
  v14 = 0.0;
  v12 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = 0.0;
  if (FigPlayerResourceArbiterGetGlobalSingleton(&v12) || (v3 = *(DerivedStorage + 48), AllocatorForMedia = FigGetAllocatorForMedia(), (v5 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v5(v3, 0x1F0B63678, AllocatorForMedia, &cf))
  {
    Float32 = 0;
  }

  else
  {
    FigCFNumberGetFloat32();
    v2 = v6;
    FigPlayerResourceArbiterGetNetworkBudgetForConsumer(v12, *(DerivedStorage + 520), &v14);
    FigGetAllocatorForMedia();
    Float32 = FigCFNumberCreateFloat32();
    if (Float32)
    {
      v8 = *(DerivedStorage + 48);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(v8, 0x1F0B63678, Float32);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, cf);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Float32)
  {
    CFRelease(Float32);
  }

  return v14 > v2;
}

double fampb_highestValidDeclaredSampleRate(uint64_t a1)
{
  theArray = 0;
  if (fampb_copyValidAlternateList(*(a1 + 264), &theArray))
  {
    MaxAudioSampleRate = 0.0;
  }

  else
  {
    v1 = 0;
    MaxAudioSampleRate = 0.0;
    while (1)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (v1 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v1);
      if (FigAlternateGetMaxAudioSampleRate(ValueAtIndex) > MaxAudioSampleRate)
      {
        v5 = CFArrayGetValueAtIndex(theArray, v1);
        MaxAudioSampleRate = FigAlternateGetMaxAudioSampleRate(v5);
      }

      ++v1;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return MaxAudioSampleRate;
}

uint64_t fampb_configurePlaybackFilterForUpdatedProperties(const void *a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v9 = 0;
  if (*(DerivedStorage + 767))
  {
    v6 = DerivedStorage;
    if (fampb_getPredictionBandwidth(DerivedStorage, &v9, (DerivedStorage + 408)))
    {
      return 0;
    }

    if (*(v6 + 272))
    {
      v7 = &v9;
    }

    else
    {
      v7 = (v6 + 400);
    }

    v5 = *v7;
    v9 = *v7;
  }

  return fampb_configurePlaybackFilterAsync(a1, v5, v2);
}

void fampb_recordCurrentAlternate(const void *a1, const void *a2, const void *a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 112))
  {
    v12 = 0;
    v13 = 0;
    fampb_createRecordABREventEntryForNowAndInsertQ(a1, &v13);
    v6 = v13;
    if (v13)
    {
      if (a2)
      {
        v7 = CFRetain(a2);
        v6 = v13;
      }

      else
      {
        v7 = 0;
      }

      v6[2] = v7;
      *(v6 + 2) = 13;
      fampb_createRecordingDecisionAlternateEntryAndInsertQ(a1, &v12);
      if (!v8)
      {
        v9 = v12;
        if (v12)
        {
          *v12 = *v13;
          if (a2)
          {
            v10 = CFRetain(a2);
            v9 = v12;
          }

          else
          {
            v10 = 0;
          }

          v9[1] = v10;
          if (a3)
          {
            v11 = CFRetain(a3);
            v9 = v12;
          }

          else
          {
            v11 = 0;
          }

          v9[2] = v11;
        }
      }
    }
  }
}

uint64_t fampb_updateNetworkSpecifierOnArbiter(uint64_t a1)
{
  v21 = 0;
  v22 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v21);
  if (GlobalSingleton)
  {
    goto LABEL_19;
  }

  GlobalSingleton = FigPlayerResourceArbiterNetworkSpecifierCreate(&cf);
  if (GlobalSingleton)
  {
    goto LABEL_19;
  }

  v3 = DerivedStorage[34];
  if (v3)
  {
    v4 = cf;
    PeakBitRate = FigAlternateGetPeakBitRate(v3);
    FigPlayerResourceArbiterNetworkSpecifierSetCurrentBitrate(v4, PeakBitRate);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  GlobalSingleton = fampb_copyAlternateListSortedByQuality(DerivedStorage + 33, AllocatorForMedia, 1, &v22);
  if (GlobalSingleton)
  {
LABEL_19:
    v18 = GlobalSingleton;
  }

  else
  {
    LastValue = FigCFArrayGetLastValue();
    FirstValue = FigCFArrayGetFirstValue();
    FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    if (LastValue)
    {
      v10 = cf;
      v11 = FigAlternateGetPeakBitRate(LastValue);
      FigPlayerResourceArbiterNetworkSpecifierSetHighestBitrate(v10, v11);
    }

    if (FirstValue)
    {
      v12 = cf;
      v13 = FigAlternateGetPeakBitRate(FirstValue);
      FigPlayerResourceArbiterNetworkSpecifierSetLowestBitrate(v12, v13);
    }

    if (FirstIndexOfValue < 1)
    {
      v17 = cf;
      v16 = 0;
    }

    else
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      v15 = cf;
      v16 = FigAlternateGetPeakBitRate(ValueAtIndex);
      v17 = v15;
    }

    FigPlayerResourceArbiterNetworkSpecifierSetPriorBitrate(v17, v16);
    FigPlayerResourceArbiterSetNetworkSpecifierForConsumer(v21, cf, DerivedStorage[65]);
    v18 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v18;
}

void fampb_setStartsOnFirstEligibleVariant(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 346) = a2 == 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 346) = CFPreferenceNumberWithDefault;
  OUTLINED_FUNCTION_30_11();
  fampb_createRecordABREventEntryForNowAndInsertQ(a1, v6);
  if (v7)
  {
    *(v7 + 16) = CFPreferenceNumberWithDefault;
    *(v7 + 8) = 11;
  }
}

void fampb_recordRecoveryAlternate(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_30_11();
  fampb_createRecordABREventEntryForNowAndInsertQ(v3, v4);
  v5 = v7;
  if (v7)
  {
    if (a2)
    {
      v6 = CFRetain(a2);
      v5 = v7;
    }

    else
    {
      v6 = 0;
    }

    *(v5 + 16) = v6;
    *(v5 + 8) = 15;
  }
}

void fampb_setupResourceArbiter(uint64_t a1)
{
  v12 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigPlayerResourceArbiterGetGlobalSingleton(&v12))
  {
    v3 = FigRCLCopyCFType(*(DerivedStorage + 752), @"enableNetworkArbitration");
    v4 = v3;
    if (v3)
    {
      v5 = v12;
      v6 = *(DerivedStorage + 520);
      Value = CFBooleanGetValue(v3);
      FigPlayerResourceArbiterSetSupportsNetworkArbitration(v5, v6, 1, Value);
    }

    if (!FigPlayerResourceArbiterSetStorebagForConsumer(v12, *(DerivedStorage + 520), *(DerivedStorage + 752)))
    {
      FigPlayerResourceArbiterCopyNetworkHistoryForConsumer(v12, *(DerivedStorage + 520), &cf);
      if (!v8)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        v9 = *(DerivedStorage + 48);
        v10 = cf;
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v11(v9, 0x1F0B63658, v10);
        }

        if (!fampb_updateNetworkSpecifierOnArbiter(a1))
        {
          fampb_updateGroupBandwidthWeightOnPredictor(a1);
        }
      }
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fampb_configurePlaybackFilterAsync(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context = 0;
  fampb_createPlaybackFilterConfigurationRec(a1, a2, a3, &context);
  v8 = v7;
  if (!v7)
  {
    dispatch_async_f(*(DerivedStorage + 32), context, fampb_configurePlaybackFilterUnlocked);
  }

  return v8;
}

double fampb_createRecordingDecisionAlternateEntryAndInsertQ(const void *a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 112))
  {
    if (a2)
    {
      v6 = DerivedStorage;
      v7 = CFGetAllocator(a1);
      v8 = MEMORY[0x19A8CC720](v7, 40, 0x10E0040ED536471, 0);
      v9 = v8;
      if (v8)
      {
        *(v8 + 32) = 0;
        result = 0.0;
        *v8 = 0u;
        *(v8 + 16) = 0u;
LABEL_5:
        *(v9 + 24) = 0;
        v10 = *(v6 + 168);
        *(v9 + 32) = v10;
        *v10 = v9;
        *(v6 + 168) = v9 + 24;
        ++*(v6 + 152);
        *a2 = v9;
        return result;
      }

      OUTLINED_FUNCTION_243();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    else
    {
      OUTLINED_FUNCTION_243();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void fampb_recordAddNewAlternates(const void *a1, CFArrayRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v7.length = CFArrayGetCount(*a2);
    v7.location = 0;
    if (!CFArrayContainsValue(v2, v7, a1))
    {
      v5 = *a2;

      CFArrayAppendValue(v5, a1);
    }
  }
}

void fampb_switchLowTimerProcUnlocked(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    MainSegmentBytesInTransitUnlocked = fampb_getMainSegmentBytesInTransitUnlocked(v2);
    FigSimpleMutexLock();
    *(DerivedStorage + 392) = MainSegmentBytesInTransitUnlocked;
    TimeClampedAboveAnchorTime = CMBaseObjectGetDerivedStorage();
    v13 = TimeClampedAboveAnchorTime;
    if ((*(TimeClampedAboveAnchorTime + 572) & 1) == 0)
    {
      goto LABEL_20;
    }

    v48 = 0uLL;
    v49 = 0;
    if (*(TimeClampedAboveAnchorTime + 740))
    {
      v49 = *(TimeClampedAboveAnchorTime + 744);
      v48 = *(TimeClampedAboveAnchorTime + 728);
    }

    else
    {
      TimeClampedAboveAnchorTime = CMTimebaseGetTimeClampedAboveAnchorTime();
    }

    v14 = (v13 + 560);
    v15 = *(v13 + 420);
    if (v15 >= 0.0)
    {
      v16 = OUTLINED_FUNCTION_14_37(TimeClampedAboveAnchorTime, v6, v7, v8, v9, v10, v11, v12, v44, *(&v44 + 1), v45, time2.value, *&time2.timescale, time2.epoch, v48, v49);
      CMTimeAdd(v18, v16, v17);
      OUTLINED_FUNCTION_8_44();
      TimeClampedAboveAnchorTime = CMTimeCompare(&time1, &time2);
      if (TimeClampedAboveAnchorTime >= 1)
      {
        OUTLINED_FUNCTION_8_44();
        CMTimebaseSetTimerDispatchSourceNextFireTime(v19, v20, &time1, 1u);
        if (*(v13 + 740))
        {
          OUTLINED_FUNCTION_33_17();
        }

        else
        {
          v21 = CMTimebaseGetTimeClampedAboveAnchorTime();
        }

        if (OUTLINED_FUNCTION_32_16(v21, v22, v23, v24, v25, v26, v27, v28, v44, *(&v44 + 1), v45, time2.value, *&time2.timescale, time2.epoch, v48, *(&v48 + 1), v49, v50, v51, v52) > 0)
        {
LABEL_17:
          *(v13 + 536) = *v14;
          *(v13 + 552) = *(v13 + 576);
          v42 = MEMORY[0x1E6960C70];
          *v14 = *MEMORY[0x1E6960C70];
          *(v13 + 576) = *(v42 + 16);
LABEL_26:
          FigSimpleMutexUnlock();
          CFRelease(v2);
          return;
        }

LABEL_20:
        v43 = MEMORY[0x1E6960C70];
        *(v13 + 536) = *MEMORY[0x1E6960C70];
        *(v13 + 552) = *(v43 + 16);
        if (*(DerivedStorage + 272))
        {
          if (*(DerivedStorage + 740))
          {
            v44 = *(DerivedStorage + 728);
          }

          else
          {
            CMTimebaseGetTimeClampedAboveAnchorTime();
          }

          if (BYTE12(v44))
          {
            fampb_attemptToSwitch(v2, 0, 0);
          }
        }

        goto LABEL_26;
      }

      v15 = *(v13 + 420);
    }

    if (v15 < 0.0)
    {
      v29 = OUTLINED_FUNCTION_14_37(TimeClampedAboveAnchorTime, v6, v7, v8, v9, v10, v11, v12, v44, *(&v44 + 1), v45, time2.value, *&time2.timescale, time2.epoch, v48, v49);
      CMTimeSubtract(v31, v29, v30);
      OUTLINED_FUNCTION_8_44();
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        OUTLINED_FUNCTION_8_44();
        CMTimebaseSetTimerDispatchSourceNextFireTime(v32, v33, &time1, 1u);
        if (*(v13 + 740))
        {
          OUTLINED_FUNCTION_33_17();
        }

        else
        {
          v34 = CMTimebaseGetTimeClampedAboveAnchorTime();
        }

        if (OUTLINED_FUNCTION_32_16(v34, v35, v36, v37, v38, v39, v40, v41, v44, *(&v44 + 1), v46, time2.value, *&time2.timescale, time2.epoch, v48, *(&v48 + 1), v49, v50, v51, v52) < 0)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_20;
  }
}

uint64_t fampb_shouldSwitchUpConcurrently(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  cf = *a4;
  if (fampb_proportionOfFullBufferForConcurrentSwitching(a1, &cf) < 0.5 || *(a1 + 16))
  {
    return 0;
  }

  if (!*(a1 + 81))
  {
    goto LABEL_4;
  }

  cf.value = 0;
  if (fampb_copyAlternateListSortedByQuality(a1, *MEMORY[0x1E695E480], 0, &cf))
  {
    goto LABEL_26;
  }

  if (!cf.value)
  {
LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  Count = CFArrayGetCount(cf.value);
  if (Count < 2)
  {
LABEL_26:
    v8 = 0;
  }

  else
  {
    v24 = Count;
    v25 = 1;
    while (CFArrayGetValueAtIndex(cf.value, v25 - 1) != *(a1 + 8))
    {
      if (v24 == ++v25)
      {
        goto LABEL_26;
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(cf.value, v25);
    v8 = CFRetain(ValueAtIndex);
  }

  if (cf.value)
  {
    CFRelease(cf.value);
  }

LABEL_5:
  ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*(a1 + 8));
  if (!*(a1 + 81))
  {
    if (a2 - ExpectedAverageBitrate <= ExpectedAverageBitrate)
    {
      goto LABEL_19;
    }

LABEL_17:
    v17 = (a1 + 200);
    if (*(a1 + 200))
    {
      v18 = 1;
      goto LABEL_22;
    }

LABEL_39:
    OUTLINED_FUNCTION_28_18();
    if (v29 ^ v30 | v28)
    {
      v18 = 1;
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    }

    else
    {
      UpTimeNanoseconds = ((*(a1 + 208) - v27) * 1000000000.0);
      v18 = 1;
    }

    goto LABEL_21;
  }

  if (!v8)
  {
    goto LABEL_19;
  }

  v10 = OUTLINED_FUNCTION_298();
  if (fampb_getRequiredBWForLowLatencyAlternate(v10, v11) * 1.1 >= a2)
  {
    goto LABEL_19;
  }

  if (!*(a1 + 81))
  {
    goto LABEL_17;
  }

  if (*(a1 + 192) < 1 || FigGetUpTimeNanoseconds() <= *(a1 + 192))
  {
    v12 = OUTLINED_FUNCTION_298();
    v14 = fampb_copyLowerSwitchCandidate(v12, v13, 1);
    cf = *a4;
    v15 = fampb_concurrentSwitchDownSafetyFactor(a1, v14, v8, &cf, a3, a2, 0, 0);
    if (v14)
    {
      CFRelease(v14);
    }

    v17 = (a1 + 200);
    v16 = *(a1 + 200);
    if (v15 < 1.1)
    {
      v18 = 0;
      if (!v16)
      {
LABEL_23:
        CFRelease(v8);
        return v18;
      }

      UpTimeNanoseconds = 0;
      goto LABEL_21;
    }

    if (v16)
    {
      v18 = 1;
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_19:
  v18 = 0;
  v21 = *(a1 + 200);
  v20 = (a1 + 200);
  if (!v21)
  {
    goto LABEL_22;
  }

  UpTimeNanoseconds = 0;
  v17 = v20;
LABEL_21:
  *v17 = UpTimeNanoseconds;
LABEL_22:
  if (v8)
  {
    goto LABEL_23;
  }

  return v18;
}

float fampb_concurrentSwitchDownSafetyFactor(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4, uint64_t a5, uint64_t a6, CMTime *a7, CMTime *a8)
{
  lhs = *a4;
  *&v25.value = kStallThreshold;
  v25.epoch = 0;
  CMTimeSubtract(&time, &lhs, &v25);
  Seconds = CMTimeGetSeconds(&time);
  lhs = **&MEMORY[0x1E6960C70];
  v16 = *(a1 + 184);
  if (v16 <= 0.0)
  {
    time = *(a1 + 100);
    v16 = CMTimeGetSeconds(&time) * 0.5;
  }

  v17 = *(a1 + 176);
  v18 = 0.0;
  v19 = NAN;
  if (v17 > 0.0 && a3 != a2 && a3 && a6)
  {
    v20 = v16 + v17;
    PeakBitRate = FigAlternateGetPeakBitRate(a2);
    v22 = *(a1 + 128);
    if (v22 <= 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = 8 * v22;
    }

    v19 = a5 / 1000000000.0 + a5 / 1000000000.0 + (v23 + (v20 * PeakBitRate)) / a6;
    CMTimeMakeWithSeconds(&lhs, fmax(v16 + Seconds - v19, 0.0), 1000000);
    time = lhs;
    v18 = fampb_proportionOfFullBufferForConcurrentSwitching(a1, &time);
  }

  if (a7)
  {
    CMTimeMakeWithSeconds(&time, v19, 1000000);
    *a7 = time;
  }

  if (a8)
  {
    *a8 = lhs;
  }

  return v18;
}

uint64_t fampb_shouldSwitchDownConcurrently(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  *a5 = *MEMORY[0x1E6960C70];
  v7 = *(v5 + 16);
  *(a5 + 16) = v7;
  if (!*(a1 + 80) || *(a1 + 160) == 0.0)
  {
    goto LABEL_3;
  }

  v39 = v6;
  *&v40.value = *a4;
  v40.epoch = *(a4 + 16);
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v14)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(v14);
    v20 = FigAlternateGetPeakBitRate(*(a1 + 8));
    v16 = PeakBitRate > v20;
    v17 = PeakBitRate <= v20;
    v18 = v16;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  if (*(a1 + 81) && (v16 || v17))
  {
    v15 = *(a1 + 16);
  }

  if (fampb_getRequiredBWForLowLatencyAlternate(a1, v15) >= a2)
  {
    if (!*(a1 + 81) || *(a1 + 128) < 1)
    {
      goto LABEL_30;
    }

    v23 = FigAlternateGetPeakBitRate(v15) > a2 || v16;
    v21 = v17 | v23;
    v22 = (v17 | v23) ^ 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

  if ((v18 & v22) != 1 || (v43 = v40, fampb_proportionOfFullBufferForConcurrentSwitching(a1, &v43) >= 1.0))
  {
    if (((v18 ^ 1 | v21) & 1) == 0)
    {
      if (*(a1 + 192) < 1)
      {
        goto LABEL_3;
      }

      if (FigGetUpTimeNanoseconds() <= *(a1 + 192))
      {
        goto LABEL_3;
      }

      if (!*(a1 + 81))
      {
        goto LABEL_3;
      }

      v24 = fampb_copyLowerSwitchCandidate(a1, *(a1 + 8), 0);
      if (!v24)
      {
        goto LABEL_3;
      }

      v25 = v24;
      *&v43.value = v39;
      v43.epoch = v7;
      v26 = *(a1 + 8);
      v42 = v40;
      v27 = fampb_concurrentSwitchDownSafetyFactor(a1, v24, v26, &v42, a3, a2, 0, &v43);
      v28 = v27 <= 1.0;
      if (v27 > 1.0)
      {
        v41 = v43;
        fampb_nextTimeToCheckConcurrentSwitchDown(&v41, &v42, v27, 1.0);
        *a5 = v42;
      }

      CFRelease(v25);
      v21 = v28;
    }

    if (v21)
    {
      goto LABEL_30;
    }

LABEL_3:
    v9 = 1;
    return v9 ^ 1u;
  }

LABEL_30:
  if (*(a1 + 16))
  {
    if (fampb_trialSwitchDownInProgress(a1))
    {
      v9 = *(a1 + 81) == 0;
    }

    else
    {
      OUTLINED_FUNCTION_36_16();
      v9 = OUTLINED_FUNCTION_54_13(v29, v30, v31, v32, v33, 0.25);
      if (v9)
      {
        v9 = FigAlternateGetPeakBitRate(*(a1 + 16)) < a2;
      }
    }
  }

  else if (*(a1 + 81))
  {
    v9 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_36_16();
    v9 = OUTLINED_FUNCTION_54_13(v34, v35, v36, v37, v38, 0.75);
  }

  return v9 ^ 1u;
}

uint64_t fampb_canSwitchDownConcurrentlyWithoutStall(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *a7)
{
  v13 = *(a1 + 81);
  v14 = fampb_copyLowerSwitchCandidate(a1, a6, *(a1 + 81) == 0);
  if (v14)
  {
    v15 = v14;
    OUTLINED_FUNCTION_35_12();
    canSwitchDownConcurrentlyToAlternateWithoutStall = fampb_canSwitchDownConcurrentlyToAlternateWithoutStall(v16, a1, v17, a4, a5, a6, a7, a2);
    v19 = canSwitchDownConcurrentlyToAlternateWithoutStall;
    if (v13)
    {
      v20 = canSwitchDownConcurrentlyToAlternateWithoutStall == 0;
    }

    else
    {
      v20 = 0;
    }

    v21 = !v20;
    if (v20)
    {
      v30 = a5;
      while (1)
      {
        v24 = fampb_copyLowerSwitchCandidate(a1, v15, 0);
        v22 = v24;
        if (!v24)
        {
          break;
        }

        CFRetain(v24);
        CFRelease(v15);
        CFRelease(v22);
        OUTLINED_FUNCTION_35_12();
        v26 = fampb_canSwitchDownConcurrentlyToAlternateWithoutStall(v22, a1, v25, a4, v30, a6, a7, a2);
        v19 = v26;
        if (v13)
        {
          v27 = v26 == 0;
        }

        else
        {
          v27 = 0;
        }

        v21 = !v27;
        v15 = v22;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      CFRelease(v15);
    }

    else
    {
      v22 = v15;
    }

LABEL_21:
    v23 = v21 ^ 1;
    if (a7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = 0;
    v23 = 1;
    v19 = 1;
    if (a7)
    {
LABEL_22:
      v28 = MEMORY[0x1E6960C70];
      *&a7->value = *MEMORY[0x1E6960C70];
      a7->epoch = *(v28 + 16);
    }
  }

  if ((v23 & 1) == 0)
  {
    CFRelease(v22);
  }

  return v19;
}

BOOL fampb_rejectSwitchDueToStallRisk(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4, double a5)
{
  v19 = 0u;
  v18 = 0u;
  v6 = *(a1 + 48);
  if (!v6)
  {
    return 0;
  }

  *(&v18 + 4) = *(a1 + 224);
  *&v19 = *(a1 + 240);
  v7 = *(a1 + 160);
  v17 = *(a1 + 156);
  v15 = *(a1 + 56);
  v13 = *(a1 + 8);
  BYTE12(v19) = *(a1 + 252);
  *(&v19 + 13) = *(a1 + 253);
  BYTE1(v18) = *(a1 + 85);
  v8 = *(a1 + 232);
  v14 = *(a1 + 72);
  v16 = *(a1 + 144);
  v9 = *(a1 + 248);
  HIDWORD(v18) = v8;
  DWORD2(v19) = v9;
  LOBYTE(v18) = v7 != 0.0;
  v12 = *a3;
  v11 = *a4;
  return FigAlternateRejectSwitchDueToStallRisk(&v13, v6, a2, &v12, &v11, a5);
}

void FigAlternatePlaybackBitrateMonitorReportStall_cold_1(uint64_t a1)
{
  v1 = *(a1 + 200) + 1;
  *(a1 + 200) = v1;
  OUTLINED_FUNCTION_30_11();
  fampb_createRecordABREventEntryForNowAndInsertQ(v3, v2);
  if (v4)
  {
    *(v4 + 16) = v1;
    *(v4 + 8) = 23;
  }
}

uint64_t fampb_UpdateLocalBitrate_cold_1(double *a1, const void *a2, double a3)
{
  *a1 = a3;
  OUTLINED_FUNCTION_30_11();
  fampb_createRecordABREventEntryForNowAndInsertQ(a2, v5);
  if (v7)
  {
    *(v7 + 16) = a3;
    *(v7 + 8) = 4;
  }

  return fampb_setBandwidthConditions(a2);
}

void MTAudioProcessingTapRemoteGetServerObjectToken(uint64_t a1, void *a2)
{
  v4 = 0;
  MTAudioProcessingTapXPCRemoteGetObjectID(a1, &v4);
  if (!v3)
  {
    *a2 = v4;
  }
}

OSStatus MTAudioProcessingTapCreate(CFAllocatorRef allocator, const MTAudioProcessingTapCallbacks *callbacks, MTAudioProcessingTapCreationFlags flags, MTAudioProcessingTapRef *tapOut)
{
  cf = 0;
  if (callbacks->version || !callbacks->process || (flags & 3) == 0 || (flags & 3) == 3)
  {
    goto LABEL_16;
  }

  MTAudioProcessingTapGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
LABEL_17:
    v23 = v7;
    goto LABEL_13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(&callbacks->init + 4);
  v9 = *(&callbacks->prepare + 4);
  process_high = HIDWORD(callbacks->process);
  *(DerivedStorage + 32) = *&callbacks->version;
  *(DerivedStorage + 48) = v10;
  *(DerivedStorage + 80) = process_high;
  *(DerivedStorage + 64) = v9;
  *(DerivedStorage + 112) = flags;
  *(DerivedStorage + 128) = 0;
  v12 = *(DerivedStorage + 44);
  if (v12)
  {
    v12(0, *(DerivedStorage + 36), DerivedStorage + 120);
  }

  *(DerivedStorage + 16) = FigSimpleMutexCreate();
  *(DerivedStorage + 24) = 0;
  v13 = aptapR_EnsureClientEstablished(*(DerivedStorage + 112));
  *(DerivedStorage + 136) = v13;
  if (!v13)
  {
LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_17;
  }

  v7 = OUTLINED_FUNCTION_3_97(v13, v14);
  if (v7)
  {
    goto LABEL_17;
  }

  xpc_dictionary_set_uint64(0, "Flags", flags);
  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
    goto LABEL_17;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  v23 = OUTLINED_FUNCTION_2_118(uint64, v16, v17, v18, v19, v20, v21, v22, v25, 0, 0, 0);
  if (!v23)
  {
    *tapOut = cf;
    cf = 0;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t aptapR_GetSourceAudio(uint64_t a1, uint64_t a2, uint64_t a3, AudioBufferList *a4, AudioQueueProcessingTapFlags *a5, _OWORD *a6, void *a7)
{
  v11 = a3;
  outFlags = 0;
  outNumberFrames = 0;
  if ((*(CMBaseObjectGetDerivedStorage() + 112) & 4) != 0)
  {
    return 4294954516;
  }

  if (*(a2 + 96))
  {
    result = ATSubmixTapGetSourceAudio();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = AudioQueueProcessingTapGetSourceAudio(*(a2 + 8), v11, *(a2 + 104), &outFlags, &outNumberFrames, a4);
    if (result)
    {
      return result;
    }
  }

  if (a5)
  {
    *a5 = outFlags;
  }

  if (a7)
  {
    *a7 = outNumberFrames;
  }

  if (!a6)
  {
    return 0;
  }

  aptapR_GetMediaTimeRange(a2, v15);
  result = 0;
  v14 = v15[1];
  *a6 = v15[0];
  a6[1] = v14;
  a6[2] = v15[2];
  return result;
}

uint64_t MTMultitrackAudioProcessingTapCreate(uint64_t a1, void *a2, unsigned int a3, CFTypeRef *a4)
{
  cf = 0;
  if (*a2 >= 2uLL)
  {
    goto LABEL_18;
  }

  if (*a2)
  {
    if (!a2[9])
    {
      goto LABEL_18;
    }
  }

  else if (!a2[6])
  {
    goto LABEL_18;
  }

  if ((a3 & 3) == 0 || (a3 & 3) == 3)
  {
    goto LABEL_18;
  }

  MTAudioProcessingTapGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
LABEL_19:
    v20 = v7;
    goto LABEL_14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memcpy((DerivedStorage + 32), a2, 0x50uLL);
  *(DerivedStorage + 112) = a3;
  *(DerivedStorage + 128) = 1;
  v9 = *(DerivedStorage + 48);
  if (v9)
  {
    v9(0, *(DerivedStorage + 40), DerivedStorage + 120);
  }

  *(DerivedStorage + 16) = FigSimpleMutexCreate();
  *(DerivedStorage + 24) = 0;
  v10 = aptapR_EnsureClientEstablished(*(DerivedStorage + 112));
  *(DerivedStorage + 136) = v10;
  if (!v10)
  {
LABEL_18:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_19;
  }

  v7 = OUTLINED_FUNCTION_3_97(v10, v11);
  if (v7)
  {
    goto LABEL_19;
  }

  xpc_dictionary_set_uint64(0, "Flags", a3 | 0x100000000);
  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
    goto LABEL_19;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  v20 = OUTLINED_FUNCTION_2_118(uint64, v13, v14, v15, v16, v17, v18, v19, v22, 0, 0, 0);
  if (!v20)
  {
    *a4 = cf;
    cf = 0;
  }

LABEL_14:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t aptapR_BaseClass_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 1) && (FigXPCCreateBasicMessage() || FigXPCRemoteClientSendSyncMessage()))
  {
    return FigXPCRelease();
  }

  for (i = *(DerivedStorage + 24); i; i = *i)
  {
    aptapR_UnprepareTapIfPrepared(a1, i);
  }

  if (*(DerivedStorage + 128))
  {
    v4 = *(DerivedStorage + 56);
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = *(DerivedStorage + 52);
  if (v4)
  {
LABEL_10:
    v4(a1);
  }

LABEL_16:
  while (1)
  {
    v6 = *(DerivedStorage + 24);
    if (!v6)
    {
      break;
    }

    v5 = *(v6 + 1);
    *(DerivedStorage + 24) = *v6;
    if (v5)
    {
      if (*(v6 + 96))
      {
        ATSubmixTapDispose();
      }

      else
      {
        AudioQueueProcessingTapDispose(v5);
      }
    }

    free(v6);
  }

  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexDestroy();
  }

  return FigXPCRelease();
}

void MTAudioProcessingTapXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetSourceAudio_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetSourceAudio_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetMediaTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetMediaTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetTrackSourceAudio_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetTrackSourceAudio_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetTrackSourceAudio_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetStreamSourceAudio_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetStreamSourceAudio_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetStreamSourceAudio_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetTrackMediaTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetTrackMediaTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetTrackMediaTimeRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetStreamMediaTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetStreamMediaTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MTAudioProcessingTapGetStreamMediaTimeRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigMediaProcessorCreateForMakingDataReady(uint64_t a1, const void *a2, const void *a3, NSObject *a4, uint64_t a5, uint64_t *a6)
{
  v17 = 0;
  v18 = 0;
  cf = 0;
  v11 = FigSampleBufferProcessorCreateForMakingDataReady(a1, &v18);
  if (v11 || (FigSampleBufferProviderCreateForBufferQueue(*MEMORY[0x1E695E480], a2, &v17), v11))
  {
    v14 = v11;
  }

  else
  {
    v12 = FigActivitySchedulerCreateForExistingDispatchQueue(a1, a4, &cf);
    v13 = cf;
    if (!v12)
    {
      v14 = FigMediaProcessorCreate(a1, v18, v17, a3, cf, a6);
      v13 = cf;
      if (!cf)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v14 = v12;
    if (cf)
    {
LABEL_5:
      CFRelease(v13);
    }
  }

LABEL_6:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v14;
}

double FigPathwayCloningApplyURIReplacement(const __CFURL *a1, int a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  if (a5)
  {
    v6 = a5;
    v7 = a1;
    *a5 = 0;
    if (!a1)
    {
      return result;
    }

    v10 = MEMORY[0x1E695E480];
    if (!a3)
    {
LABEL_11:
      URIReplacementHost = FigPathwayCloneGetURIReplacementHost(a4);
      if (URIReplacementHost)
      {
        cf = 0;
        result = FigCFHTTPCreateURLWithHostReplacement(v7, URIReplacementHost, &cf);
        if (v22)
        {
          return result;
        }

        v13 = cf;
        if (cf)
        {
          CFRetain(cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      else
      {
        v13 = 0;
      }

      URIReplacementParams = FigPathwayCloneGetURIReplacementParams(a4);
      if (!URIReplacementParams)
      {
        goto LABEL_46;
      }

      v24 = URIReplacementParams;
      v44 = v6;
      if (v13)
      {
        v25 = v13;
      }

      else
      {
        v25 = v7;
      }

      v26 = CFRetain(v25);
      Count = CFDictionaryGetCount(v24);
      v43 = v7;
      v45 = v13;
      if (Count < 1)
      {
        Mutable = 0;
        v33 = 0;
        v29 = 0;
        v39 = 0;
      }

      else
      {
        v28 = Count;
        v29 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(v24, v29, 0);
        v30 = *v10;
        Mutable = CFArrayCreateMutable(*v10, 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          for (i = 0; i != v28; ++i)
          {
            CFArrayAppendValue(Mutable, v29[i]);
          }

          v48.location = 0;
          v48.length = v28;
          CFArraySortValues(Mutable, v48, MEMORY[0x1E695D7F0], 0);
          v33 = 0;
          for (j = 0; j != v28; ++j)
          {
            cf = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
            Value = CFDictionaryGetValue(v24, ValueAtIndex);
            if (v33)
            {
              CFRelease(v33);
            }

            v33 = CFStringCreateWithFormat(v30, 0, @"%@=", ValueAtIndex);
            if (!v33)
            {
              OUTLINED_FUNCTION_0_137();
              FigSignalErrorAtGM(v40);
LABEL_53:
              v39 = Param;
              goto LABEL_54;
            }

            Param = FigCFHTTPCreateURLWithQueryParam(v26, v33, Value, &cf);
            if (Param)
            {
              goto LABEL_53;
            }

            v38 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            if (v26)
            {
              CFRelease(v26);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            v26 = v38;
          }

          if (v38)
          {
            v45 = CFRetain(v38);
            free(v29);
            v39 = 0;
            v6 = v44;
            goto LABEL_39;
          }

          free(v29);
          v39 = 0;
          v45 = 0;
          v6 = v44;
LABEL_41:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v7 = v43;
          if (v33)
          {
            CFRelease(v33);
          }

          v13 = v45;
          if (v39)
          {
            goto LABEL_49;
          }

LABEL_46:
          if (!v13)
          {
LABEL_48:
            *v6 = CFRetain(v7);
LABEL_49:
            if (v13)
            {
              CFRelease(v13);
            }

            return result;
          }

LABEL_47:
          v7 = v13;
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_0_137();
        FigSignalErrorAtGM(v41);
        v39 = v42;
        v33 = 0;
      }

LABEL_54:
      v6 = v44;
      free(v29);
      v38 = v26;
      if (v26)
      {
LABEL_39:
        CFRelease(v38);
      }

      goto LABEL_41;
    }

    if (a2)
    {
      URIReplacementPerRenditionURIs = FigPathwayCloneGetURIReplacementPerRenditionURIs(a4);
      if (!URIReplacementPerRenditionURIs)
      {
        goto LABEL_11;
      }
    }

    else
    {
      URIReplacementPerRenditionURIs = FigPathwayCloneGetURIReplacementPerVariantURIs(a4);
      if (!URIReplacementPerRenditionURIs)
      {
        goto LABEL_11;
      }
    }

    v12 = CFDictionaryGetValue(URIReplacementPerRenditionURIs, a3);
    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = CFURLCreateWithString(*v10, v12, 0);
    if (v13)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_0_137();
    v19 = 144;
  }

  else
  {
    v18 = v5;
    v14 = "%s signalled err=%d at <>:%d";
    v17 = "(Fig)";
    v15 = 0;
    v16 = 4294951405;
    v19 = 129;
  }

  return FigSignalErrorAtGM(v14, v15, v16, v17, v19, v18);
}

uint64_t FigSteeringCloneAlternateWithPathwayClone(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, void *a4)
{
  v25 = 0;
  v26 = 0;
  ID = FigPathwayCloneGetID(a1);
  v23 = 0;
  v24 = 0;
  cf = 0;
  PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(a2);
  StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(a2);
  FigPathwayCloningApplyURIReplacement(PlaylistAlternateURL, 0, StableStreamIdentifier, a1, &v25);
  if (v11 || (AudioGroupIDString = FigAlternateGetAudioGroupIDString(a2), figSteeringCreateIndependentMediaGroupLocatorMap(a2, 1936684398, AudioGroupIDString, a3, @"FACCP_AudioGroups", a1, &v24), v11) || (VideoGroupIDString = FigAlternateGetVideoGroupIDString(a2), figSteeringCreateIndependentMediaGroupLocatorMap(a2, 1986618469, VideoGroupIDString, a3, @"FACCP_VideoGroups", a1, &v23), v11) || (SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(a2), figSteeringCreateIndependentMediaGroupLocatorMap(a2, 1935832172, SubtitleGroupIDString, a3, @"FACCP_SubtitleGroups", a1, &cf), v11))
  {
    v18 = v11;
  }

  else
  {
    v15 = v25;
    UniqueAlternateIndex = FigStreamingPlaylistMakeUniqueAlternateIndex();
    v17 = FigAlternateCopy(a2, 0, v15, v15, 0, 0, 0, 0, 0, 0, 0, 0, ID, 1, UniqueAlternateIndex, v24, v23, cf, 0, &v26);
    v18 = v17;
    v19 = v26;
    if (v26)
    {
      if (!v17)
      {
        StartupScore = FigAlternateGetStartupScore(a2);
        v18 = FigAlternateSetStartupScore(v19, StartupScore);
        if (!v18)
        {
          *a4 = v26;
          v26 = 0;
        }
      }
    }
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v18;
}

void figSteeringCreateIndependentMediaGroupLocatorMap(uint64_t a1, int a2, const void *a3, CFMutableDictionaryRef *a4, void *a5, uint64_t a6, void *a7)
{
  cf = 0;
  MediaGroupLocatorMap = FigAlternateGetMediaGroupLocatorMap(a1, a2);
  if (MediaGroupLocatorMap)
  {
    v13 = MediaGroupLocatorMap;
    v19 = FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID(a4, a5, a3, &cf);
    v14 = cf;
    if (!v19)
    {
      if (cf)
      {
LABEL_4:
        *a7 = v14;
        return;
      }

      cf = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!cf)
      {
        OUTLINED_FUNCTION_0_137();
        FigSignalErrorAtGM(v15);
        v19 = v16;
        v14 = cf;
        if (!cf)
        {
          return;
        }

LABEL_9:
        CFRelease(v14);
        return;
      }

      context[0] = &v19;
      context[1] = a6;
      context[2] = &cf;
      CFDictionaryApplyFunction(v13, figSteeringClonePathwayMediaGroup, context);
      v19 = FigAlternateCreationContextSetMediaGroupLocatorMapForMediaGroupID(a4, a5, a3, cf);
      v14 = cf;
      if (!v19)
      {
        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_9;
    }
  }
}

BOOL FigPathwayValidateStableVariantAndRenditionIDs_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_137();
  FigSignalErrorAtGM(v3);
  *a2 = v4;
  return v4 == 0;
}

void FigPathwayValidateStableVariantAndRenditionIDs_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_137();
  FigSignalErrorAtGM(v3);
  *a2 = v4;
}

void FigPathwayValidateStableVariantAndRenditionIDs_cold_3(void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  free(a1);
}

void FigPathwayValidateStableVariantAndRenditionIDs_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_137();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figSteering_addRenditionIDsFromMediaGroupLocatorMapToSet_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_137();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figSteeringClonePathwayMediaGroup_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_137();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

double FigCaptionRendererSRTRegionCreate(void *a1)
{
  if (a1)
  {
    v16 = 0;
    MEMORY[0x19A8D3660](&FigCaptionRendererSRTRegionGetClassID_sRegisterFigCaptionRendererSRTRegionBaseTypeOnce, RegisterFigCaptionRendererSRTRegionBaseType);
    if (!CMDerivedObjectCreate())
    {
      v4 = v16;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 56) = 0;
      *(DerivedStorage + 64) = 0;
      v15 = 0;
      FigCaptionRendererNodeCreate(&v15);
      v6 = v15;
      *DerivedStorage = v15;
      FigCaptionRendererNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 216);
          if (v9)
          {
            v9(v6, 1);
          }
        }
      }

      v10 = *DerivedStorage;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v11 = CMBaseObjectGetProtocolVTable();
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = *(v12 + 232);
          if (v13)
          {
            v13(v10, 1);
          }
        }
      }

      *a1 = v4;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950096, "<<<< FigCaptionRendererSRTRegion >>>>", 1052, v1);
  }

  return result;
}

double FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_HasChildNode_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigMetricItemRateChangeEventDeserializeAndCopy(void *a1, CFTypeRef *a2)
{
  v42 = *MEMORY[0x1E6960C70];
  v43 = *(MEMORY[0x1E6960C70] + 16);
  v40 = 0;
  cf = 0;
  v39 = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17528, 4294947836, "metricevent", 257, v2);
LABEL_12:
    v37 = CMTime;
    goto LABEL_13;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17528, 4294947836, "metricevent", 258, v2);
    goto LABEL_12;
  }

  int64 = xpc_dictionary_get_int64(a1, "EventID");
  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_12;
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_12;
  }

  value = xpc_dictionary_get_value(a1, "Variant");
  CMTime = FigAlternateCreateWithXPCObject(value, 0, &v39);
  if (CMTime)
  {
    goto LABEL_12;
  }

  xpc_dictionary_get_double(a1, "Rate");
  xpc_dictionary_get_double(a1, "PreviousRate");
  switch(int64)
  {
    case 9:
      FigGetAllocatorForMedia();
      v8 = OUTLINED_FUNCTION_0_138();
      CMTime = FigMetricItemStallEventCreateInternal(v9, v10, v11, v12, v13, a2, v8, v14);
      goto LABEL_12;
    case 10:
      FigGetAllocatorForMedia();
      v30 = OUTLINED_FUNCTION_0_138();
      CMTime = FigMetricItemRateChangeEventCreateInternal(v31, v32, v33, v34, v35, a2, v30, v36);
      goto LABEL_12;
    case 11:
      FigGetAllocatorForMedia();
      v15 = OUTLINED_FUNCTION_0_138();
      CMTime = FigMetricItemSeekEventCreateInternal(v16, v17, v18, v19, v20, a2, v15, v21);
      goto LABEL_12;
    case 12:
      v22 = xpc_dictionary_get_BOOL(a1, "DidSeekInBuffer");
      FigGetAllocatorForMedia();
      v23 = OUTLINED_FUNCTION_0_138();
      CMTime = FigMetricItemSeekDidCompleteEventCreateInternal(v24, v25, v26, v27, v28, v22, a2, v23, v29);
      goto LABEL_12;
    default:
      v37 = 0;
      break;
  }

LABEL_13:
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

  return v37;
}

uint64_t meirc_serialize(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17528, 4294947835, "metricevent", 208, v2);
LABEL_38:
    v16 = v9;
    goto LABEL_35;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17528, 4294947835, "metricevent", 209, v2);
    goto LABEL_38;
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

  v7 = *(*(CMBaseObjectGetVTable() + 48) + 8);
  if (v7)
  {
    v8 = v7(a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = FigAlternateCopyAsXPCObject(v8, &value);
  if (v9)
  {
    goto LABEL_38;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v11 = v10 ? v10(a1) : -12782;
  xpc_dictionary_set_int64(a2, "EventID", v11);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v12)
  {
    v12(&v24, a1);
  }

  else
  {
    v24 = *MEMORY[0x1E6960C70];
    v25 = *(MEMORY[0x1E6960C70] + 16);
  }

  v9 = FigXPCMessageSetCMTime();
  if (v9)
  {
    goto LABEL_38;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v13)
  {
    v13(a1);
  }

  v9 = FigXPCMessageSetCFDate();
  if (v9)
  {
    goto LABEL_38;
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
  if (!v16)
  {
    xpc_dictionary_set_int64(a2, "EventID", v6);
    v17 = *(*(CMBaseObjectGetVTable() + 48) + 16);
    v18 = 0.0;
    v19.n128_u64[0] = 0;
    if (v17)
    {
      v19.n128_f64[0] = v17(a1, v19);
    }

    xpc_dictionary_set_double(a2, "Rate", v19.n128_f64[0]);
    v20 = *(*(CMBaseObjectGetVTable() + 48) + 24);
    if (v20)
    {
      v18 = v20(a1);
    }

    xpc_dictionary_set_double(a2, "PreviousRate", v18);
    xpc_dictionary_set_value(a2, "Variant", value);
    if (v6 == 12)
    {
      v21 = *(*(CMBaseObjectGetVTable() + 48) + 32);
      if (v21)
      {
        v22 = v21(a1) != 0;
      }

      else
      {
        v22 = 0;
      }

      xpc_dictionary_set_BOOL(a2, "DidSeekInBuffer", v22);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_35:
  FigXPCRelease();
  return v16;
}

uint64_t FigRemakerCreateQueuedWithAsset(const __CFAllocator *a1, const void *a2, const __CFURL *a3, const __CFDictionary *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v22 = 0;
  cf = 0;
  FigKTraceInit();
  FigCFDictionaryGetBooleanIfPresent();
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_28;
  }

  FigAssetGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v20 = 4294954514;
    goto LABEL_16;
  }

  v15 = v14(v13, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &v22);
  if (v15)
  {
    goto LABEL_28;
  }

  if (v22 && !FigCFURLIsLocalResource() || !a3 || !remakerFamily_CFURLSchemeIsFile(a3) || !a6)
  {
    goto LABEL_27;
  }

  FigRemakerGetClassID();
  v15 = CMDerivedObjectCreate();
  if (v15)
  {
LABEL_28:
    v20 = v15;
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 32) = 12301;
  v17 = FigReentrantMutexCreate();
  *(DerivedStorage + 8) = v17;
  if (!v17)
  {
LABEL_27:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_28;
  }

  v18 = CFGetAllocator(cf);
  Mutable = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 24) = Mutable;
  if (!Mutable)
  {
    v20 = 4294955196;
    goto LABEL_16;
  }

  v15 = FigRemakerCreateWithAsset(a1, a2, a3, a4, a5, (DerivedStorage + 16));
  if (v15)
  {
    goto LABEL_28;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v20 = CMNotificationCenterAddListener();
  if (!v20)
  {
    *a6 = cf;
    cf = 0;
  }

LABEL_16:
  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t queuedRemaker_AddAudioTrack(__CFDictionary *a1, uint64_t a2, UInt8 *a3, CFIndex a4, UInt8 *a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v16 = a2;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v9)
  {
    FigSimpleMutexLock();
  }

  if (!*v8 && v16 && a3)
  {
    v18 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    a1 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_AudioTrack");
      FigCFDictionarySetInt32();
      queuedRemaker_dictionarySetData(a1, @"Audio_DestinationASBD", a3, 40);
      valuePtr = a4;
      v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      CFDictionarySetValue(a1, @"Audio_DestinationChannelLayoutSize", v20);
      CFRelease(v20);
      if (a4 && a5)
      {
        queuedRemaker_dictionarySetData(a1, @"Audio_DestinationChannelLayout", a5, a4);
      }

      if (a6)
      {
        CFDictionarySetValue(a1, @"Audio_AudioOptions", a6);
      }

      if (a7)
      {
        v21 = OUTLINED_FUNCTION_39_9();
        CFDictionarySetValue(v21, v22, v23);
      }

      FigCFDictionarySetInt32();
      v24 = *(v8 + 32);
      if (a8)
      {
        *a8 = v24;
      }

      v25 = OUTLINED_FUNCTION_3_98(v24);
      CFArrayAppendValue(v25, a1);
      a8 = 0;
    }

    else
    {
      a8 = 4294955196;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    OUTLINED_FUNCTION_18_17();
  }

  if (v9)
  {
    FigSimpleMutexUnlock();
  }

  if (a1)
  {
    CFRelease(a1);
  }

  return a8;
}

uint64_t queuedRemaker_AddVideoTrack(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, void *value, uint64_t a10, __int128 *a11, int *a12)
{
  v15 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = *(DerivedStorage + 8);
  if (v18)
  {
    FigSimpleMutexLock();
  }

  v31 = v18;
  if (*DerivedStorage || !v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v28 = v30;
    v21 = 0;
  }

  else
  {
    v19 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v21 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_VideoTrack");
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (a5)
      {
        v22 = OUTLINED_FUNCTION_796();
        CFDictionarySetValue(v22, v23, v24);
      }

      v25 = FigCFDictionarySetInt32();
      if (a7)
      {
        CFDictionarySetValue(v21, @"Video_VideoEncoderSpecification", a7);
      }

      if (a8)
      {
        OUTLINED_FUNCTION_8_45(v25, @"Video_VideoDecompressionProperties");
      }

      if (value)
      {
        CFDictionarySetValue(v21, @"Video_VideoCompressionProperties", value);
      }

      if (a10)
      {
        OUTLINED_FUNCTION_8_45(v25, @"Video_VideoProcessingOptions");
      }

      FigCFDictionarySetCMTime();
      FigCFDictionarySetInt32();
      v26 = *(DerivedStorage + 32);
      if (a12)
      {
        *a12 = v26;
      }

      v27 = OUTLINED_FUNCTION_3_98(v26);
      CFArrayAppendValue(v27, v21);
      v28 = 0;
      if (v31)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v28 = 4294955196;
  }

  if (v31)
  {
LABEL_19:
    FigSimpleMutexUnlock();
  }

LABEL_20:
  if (v21)
  {
    CFRelease(v21);
  }

  return v28;
}

uint64_t queuedRemaker_AddPassthroughTrack(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = v5;
  v8 = a2;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v4)
  {
    FigSimpleMutexLock();
  }

  if (*v3 || !v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v10 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_Passthrough");
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      v12 = *(v3 + 32);
      if (a3)
      {
        *a3 = v12;
      }

      v13 = OUTLINED_FUNCTION_3_98(v12);
      CFArrayAppendValue(v13, v6);
      a3 = 0;
    }

    else
    {
      a3 = 4294955196;
    }
  }

  if (v4)
  {
    FigSimpleMutexUnlock();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return a3;
}

uint64_t queuedRemaker_AddAudioTrackWithPreset(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v8 = v7;
  v12 = a2;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*v5 || !v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v14 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_AudioTrackWithPreset");
      FigCFDictionarySetInt32();
      if (a3)
      {
        CFDictionaryAddValue(v8, @"Audio_AudioPresetName", a3);
      }

      if (a4)
      {
        v16 = OUTLINED_FUNCTION_39_9();
        CFDictionaryAddValue(v16, v17, v18);
      }

      FigCFDictionarySetInt32();
      v19 = *(v5 + 32);
      if (a5)
      {
        *a5 = v19;
      }

      v20 = OUTLINED_FUNCTION_3_98(v19);
      CFArrayAppendValue(v20, v8);
      a5 = 0;
    }

    else
    {
      a5 = 4294955196;
    }
  }

  if (v6)
  {
    FigSimpleMutexUnlock();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return a5;
}

uint64_t queuedRemaker_AddAudioMixdownTrackWithPreset(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v8 = v7;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*v5 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v14 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_AudioMixdownTrackWithPreset");
      CFDictionaryAddValue(v8, @"Audio_SourceAudioTrackArray", a2);
      if (a3)
      {
        CFDictionaryAddValue(v8, @"Audio_AudioPresetName", a3);
      }

      if (a4)
      {
        v16 = OUTLINED_FUNCTION_39_9();
        CFDictionaryAddValue(v16, v17, v18);
      }

      FigCFDictionarySetInt32();
      v19 = *(v5 + 32);
      if (a5)
      {
        *a5 = v19;
      }

      v20 = OUTLINED_FUNCTION_3_98(v19);
      CFArrayAppendValue(v20, v8);
      a5 = 0;
    }

    else
    {
      a5 = 4294955196;
    }
  }

  if (v6)
  {
    FigSimpleMutexUnlock();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return a5;
}

uint64_t queuedRemaker_AddVideoCompositionTrack(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const void *a7, uint64_t a8, unsigned int a9, const void *a10, uint64_t a11, uint64_t a12, __int128 *a13, unsigned int a14, unsigned int a15, unsigned int a16, unsigned int a17, unsigned int a18, const void *a19, unsigned int a20, uint64_t a21, const void *a22, uint64_t a23, const void *a24, int *a25)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_83();
  if (v26)
  {
    FigSimpleMutexLock();
  }

  v49 = v26;
  if (*v25 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v46 = v48;
    v34 = 0;
  }

  else
  {
    v32 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v32, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v34 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_VideoCompositionTrack");
      CFDictionarySetValue(v34, @"Video_SourceVideoTrackArray", a2);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      OUTLINED_FUNCTION_796();
      v35 = FigCFDictionarySetValue();
      if (a6)
      {
        CFDictionarySetValue(v34, @"Video_VideoCompositor", a6);
      }

      if (a7)
      {
        CFDictionarySetValue(v34, @"Video_VideoCompositionInstructionArray", a7);
      }

      if (a8)
      {
        OUTLINED_FUNCTION_8_45(v35, @"Video_AnimationRootLayer");
      }

      v36 = FigCFDictionarySetInt32();
      if (a10)
      {
        CFDictionarySetValue(v34, @"Video_AnimationVideoLayers", a10);
      }

      if (a11)
      {
        OUTLINED_FUNCTION_8_45(v36, @"Video_AnimationVideoTrackIDs");
      }

      if (a12)
      {
        v37 = OUTLINED_FUNCTION_796();
        CFDictionarySetValue(v37, v38, v39);
      }

      FigCFDictionarySetCMTime();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (a19)
      {
        CFDictionarySetValue(v34, @"Video_VideoScalingProperties", a19);
      }

      v40 = FigCFDictionarySetInt32();
      if (a21)
      {
        v41 = OUTLINED_FUNCTION_796();
        CFDictionarySetValue(v41, v42, v43);
      }

      if (a22)
      {
        CFDictionarySetValue(v34, @"Video_VideoCompressionProperties", a22);
      }

      if (a23)
      {
        OUTLINED_FUNCTION_8_45(v40, @"Video_VideoProcessingOptions");
      }

      if (a24)
      {
        CFDictionarySetValue(v34, @"Video_VideoCompositionProcessorProperties", a24);
      }

      FigCFDictionarySetInt32();
      v44 = *(v25 + 32);
      if (a25)
      {
        *a25 = v44;
      }

      v45 = OUTLINED_FUNCTION_3_98(v44);
      CFArrayAppendValue(v45, v34);
      v46 = 0;
      if (v49)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v46 = 4294955196;
  }

  if (v49)
  {
LABEL_31:
    FigSimpleMutexUnlock();
  }

LABEL_32:
  if (v34)
  {
    CFRelease(v34);
  }

  return v46;
}

uint64_t queuedRemaker_AddPassthroughTrackWithOptions(uint64_t a1)
{
  v8 = v7;
  OUTLINED_FUNCTION_10_44(a1);
  OUTLINED_FUNCTION_5_83();
  if (v2)
  {
    FigSimpleMutexLock();
  }

  if (*v1 || !v5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v9 = CFGetAllocator(v6);
    Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_Passthrough");
      FigCFDictionarySetInt32();
      if (v4)
      {
        v11 = OUTLINED_FUNCTION_39_9();
        CFDictionarySetValue(v11, v12, v13);
      }

      FigCFDictionarySetInt32();
      v14 = *(v1 + 32);
      if (v3)
      {
        *v3 = v14;
      }

      v15 = OUTLINED_FUNCTION_3_98(v14);
      CFArrayAppendValue(v15, v8);
      v3 = 0;
    }

    else
    {
      v3 = 4294955196;
    }
  }

  if (v2)
  {
    FigSimpleMutexUnlock();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v3;
}

uint64_t queuedRemaker_AddTemporaMetadataTrackWithOptions(uint64_t a1)
{
  v8 = v7;
  OUTLINED_FUNCTION_10_44(a1);
  OUTLINED_FUNCTION_5_83();
  if (v2)
  {
    FigSimpleMutexLock();
  }

  if (*v1 || !v5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v9 = CFGetAllocator(v6);
    Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Common_TrackType", @"TrackType_TemporalMetadata");
      FigCFDictionarySetInt32();
      if (v4)
      {
        v11 = OUTLINED_FUNCTION_39_9();
        CFDictionarySetValue(v11, v12, v13);
      }

      FigCFDictionarySetInt32();
      v14 = *(v1 + 32);
      if (v3)
      {
        *v3 = v14;
      }

      v15 = OUTLINED_FUNCTION_3_98(v14);
      CFArrayAppendValue(v15, v8);
      v3 = 0;
    }

    else
    {
      v3 = 4294955196;
    }
  }

  if (v2)
  {
    FigSimpleMutexUnlock();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v3;
}