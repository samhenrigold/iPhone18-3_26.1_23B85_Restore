uint64_t ParseSampleEncryptionAtomInTraf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    MovieTrackNoteSampleEncryptionAtomPresent(v2);
    return 0;
  }

  else
  {
    ParseSampleEncryptionAtomInTraf_cold_1();
    return v4;
  }
}

uint64_t FragmentInfoAddAndRetainSampleGroupDescriptionArray(const void *a1, uint64_t a2, int a3, void *a4)
{
  Mutable = *(a2 + 112);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    *(a2 + 112) = Mutable;
    if (!Mutable)
    {
      FragmentInfoAddAndRetainSampleGroupDescriptionArray_cold_1();
      return 0;
    }
  }

  v9 = CFDictionaryGetValue(Mutable, a3);
  value = v9;
  if (v9)
  {
    v10 = v9;
    CFRetain(v9);
LABEL_7:
    v13 = 0;
    *a4 = v10;
    return v13;
  }

  v11 = CFGetAllocator(a1);
  v12 = MovieSampleGroupDescriptionArrayCreate(v11, a3, &value);
  if (!v12)
  {
    CFDictionarySetValue(*(a2 + 112), a3, value);
    v10 = value;
    goto LABEL_7;
  }

  v13 = v12;
  if (value)
  {
    CFRelease(value);
  }

  return v13;
}

void MovieAtomReportChildAtomParsingFailureMessage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[8])
  {
    v6 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = CFGetAllocator(a1);
      v10 = CFStringCreateMutable(v9, 0);
      if (v10)
      {
        v11 = v10;
        CFStringAppendFormat(v10, 0, @"%s.", a4);
        CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
        FigAtomStreamGetCurrentAtomGlobalOffset();
        CFStringAppendFormat(v11, 0, @" Atom: '%@' Offset: %lld", CFStringForOSTypeValue, 0);
        FigCFDictionarySetInt64();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt64();
        CFDictionarySetValue(v8, *MEMORY[0x1E6960D58], v11);
        FigCFDictionarySetInt32();
        FigAssetAnalysisReporterAddMessage();
        CFRelease(v11);
      }

      CFRelease(v8);
    }
  }
}

void OUTLINED_FUNCTION_15_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(v5, v4, 0, a4, 2u);
}

void OUTLINED_FUNCTION_22_24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(a1, v4, v5, a4, 2u);
}

uint64_t OUTLINED_FUNCTION_25_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return FigAtomStreamReadCurrentAtomData();
}

uint64_t OUTLINED_FUNCTION_31_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigAtomStreamReadCurrentAtomData();
}

uint64_t OUTLINED_FUNCTION_36_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a9 = 0;
  a10 = 0;

  return ParseDiscoveredUUIDBoxLocation(a1, &a9, &a12, &a11);
}

uint64_t OUTLINED_FUNCTION_37_20(uint64_t a1)
{
  *(v1 - 20) = 0;

  return FigAtomStreamGetCurrentAtomTypeAndDataLength();
}

void OUTLINED_FUNCTION_40_16(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(a1, v4, v5, a4, 2u);
}

void OUTLINED_FUNCTION_42_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(v6, v5, v4, a4, 5u);
}

void OUTLINED_FUNCTION_44_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(v5, v4, 0, a4, 2u);
}

void OUTLINED_FUNCTION_45_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  _MovieAtomReportParsingMessage(a10, v10, 0, a4, 2u);
}

void OUTLINED_FUNCTION_50_10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(a1, a2, v4, a4, 2u);
}

void OUTLINED_FUNCTION_52_15(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(a1, a2, 0, a4, 2u);
}

void OUTLINED_FUNCTION_55_15(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(a1, a2, v4, a4, 2u);
}

uint64_t OUTLINED_FUNCTION_57_9(uint64_t a1)
{

  return FigAtomStreamGetCurrentAtomTypeAndDataLength();
}

uint64_t OUTLINED_FUNCTION_59_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigAtomStreamReadCurrentAtomData();
}

void OUTLINED_FUNCTION_67_11(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(a1, 0, a3, a4, 3u);
}

double OUTLINED_FUNCTION_69_6(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigSignalErrorAtGM(a1, a2, 4294954448, a4, v4);
}

uint64_t OUTLINED_FUNCTION_82_6(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  v19 = vcvts_n_f32_s32(bswap32(v16), 0x10uLL);

  return MovieTrackSetSpatialInformation(v17, &v21, a1.n128_f32[0], v19);
}

double OUTLINED_FUNCTION_83_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return ParseChildAtoms(v9, &a9, 1, a4, v10);
}

uint64_t OUTLINED_FUNCTION_84_4(uint64_t a1)
{

  return FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
}

void OUTLINED_FUNCTION_85_4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(a1, a2, v4, a4, 3u);
}

void OUTLINED_FUNCTION_86_6(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _MovieAtomReportParsingMessage(a1, a2, v4, a4, 2u);
}

const __CFArray *MovieTrackGetNumDataSources(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const void *MovieTrackSetDataSourceAtIndex(void *a1, uint64_t a2, CFIndex idx, int a4, const void *a5)
{
  if (idx < 0)
  {
    goto LABEL_15;
  }

  Count = *(a2 + 64);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_15:
    MovieTrackSetDataSourceAtIndex_cold_1(a1, a2, &v16);
    return v16;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 64), idx);
    v12 = ValueAtIndex;
    if (a4)
    {
      v13 = 0;
    }

    else
    {
      v13 = 1970433056;
    }

    *ValueAtIndex = v13;
    v14 = ValueAtIndex[2];
    ValueAtIndex[2] = a5;
    if (a5)
    {
      CFRetain(a5);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    result = v12[1];
    if (result)
    {
      CFRelease(result);
      result = 0;
      v12[1] = 0;
    }
  }

  return result;
}

void SampleGroupDescCollectingApplierFunction(unsigned int a1, uint64_t a2, void *a3)
{
  theArray = 0;
  MovieSampleGroupDescriptionArrayCopyInfo(a2, 0, &theArray, 0, 0, 0);
  if (!theArray)
  {
    return;
  }

  if (!CFArrayGetCount(theArray))
  {
    goto LABEL_13;
  }

  v5 = CFGetAllocator(a3);
  Copy = CFArrayCreateCopy(v5, theArray);
  if (!Copy)
  {
    SampleGroupDescCollectingApplierFunction_cold_2();
LABEL_13:
    v9 = 0;
    goto LABEL_7;
  }

  v7 = Copy;
  v8 = CFGetAllocator(a3);
  v9 = CFStringCreateWithFormat(v8, 0, @"%c%c%c%c", HIBYTE(a1), BYTE2(a1), BYTE1(a1), a1);
  if (v9)
  {
    CFDictionarySetValue(a3, v9, v7);
  }

  else
  {
    SampleGroupDescCollectingApplierFunction_cold_1();
  }

  CFRelease(v7);
LABEL_7:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t MovieTrackCopySampleGroupDescriptionArrays(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *a2 = v3;
  return 0;
}

uint64_t MovieTrackAddAndRetainSampleGroupDescriptionArray(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  cf = 0;
  MovieTrackCopySampleGroupDescriptionArray(a1, a2, &cf);
  v6 = cf;
  if (cf)
  {
    if (!a3)
    {
      v7 = 0;
LABEL_11:
      CFRelease(v6);
      return v7;
    }

    goto LABEL_8;
  }

  v8 = CFGetAllocator(a1);
  v9 = MovieSampleGroupDescriptionArrayCreate(v8, v4, &cf);
  v6 = cf;
  if (v9)
  {
    v7 = v9;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_11;
  }

  MovieTrackAddSampleGroupDescriptionArray(a1, cf);
  v7 = v10;
  v6 = cf;
  if (a3 && !v10)
  {
    if (!cf)
    {
      v11 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v11 = CFRetain(v6);
    v6 = cf;
LABEL_9:
    v7 = 0;
    *a3 = v11;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  return v7;
}

uint64_t MovieTrackGetSampleDescriptionInformationAtIndex(uint64_t a1, CFIndex a2, void *a3, void *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    if (a2 < 0 || CFArrayGetCount(v5) <= a2)
    {
      MovieTrackGetSampleDescriptionInformationAtIndex_cold_1(&v12);
      return v12;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), a2);
      v10 = ValueAtIndex;
      if (a3)
      {
        *a3 = *ValueAtIndex;
      }

      result = 0;
      if (a4)
      {
        *a4 = v10[1];
      }
    }
  }

  else
  {
    MovieTrackGetSampleDescriptionInformationAtIndex_cold_2(&v13);
    return v13;
  }

  return result;
}

uint64_t MovieTrackAddParsedDataReference(uint64_t a1, int a2, int a3, const void *a4)
{
  if (a3 == 1)
  {
    v6 = 0;
  }

  else
  {
    if (a3)
    {
      MovieTrackAddParsedDataReference_cold_4(a1, &v12);
      return v12;
    }

    v6 = a2;
    if (!a4)
    {
      MovieTrackAddParsedDataReference_cold_1(a1, &v12);
      return v12;
    }
  }

  if (!*(a1 + 64))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(a1 + 64) = Mutable;
    if (!Mutable)
    {
      MovieTrackAddParsedDataReference_cold_3(&v12);
      return v12;
    }
  }

  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040ABACF81FuLL);
  if (!v8)
  {
    MovieTrackAddParsedDataReference_cold_2(&v12);
    return v12;
  }

  v9 = v8;
  *v8 = v6;
  if (a4)
  {
    v10 = CFRetain(a4);
  }

  else
  {
    v10 = 0;
  }

  v9[1] = v10;
  CFArrayAppendValue(*(a1 + 64), v9);
  return 0;
}

uint64_t TotalRunDataSize(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 52);
  if ((v2 & 2) == 0)
  {
    return (*(a1 + 64) * *(a2 + 40));
  }

  v4 = *(a2 + 40);
  if (v4 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = kPerSampleInfo_SizeInInt32s[v2];
  v6 = (a2 + 4 * kPerSampleInfo_SizeIndex[v2] + 56);
  v7 = 4 * v5;
  do
  {
    result += bswap32(*v6);
    v6 = (v6 + v7);
    --v4;
  }

  while (v4);
  return result;
}

CMTime *GetRevisedTrackDuration@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  value = result[34].value;
  v3 = (value - 1);
  if (value < 1)
  {
LABEL_5:
    *a2 = **&MEMORY[0x1E6960CC0];
  }

  else
  {
    v4 = v3 + 1;
    v5 = (result[33].epoch + 96 * v3 + 48);
    while ((*(v5 - 36) & 1) == 0)
    {
      --v4;
      v5 -= 6;
      if (v4 < 1)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    v7 = v5[2];
    *&v8.start.epoch = v5[1];
    *&v8.duration.timescale = v7;
    *&v8.start.value = v6;
    return CMTimeRangeGetEnd(a2, &v8);
  }

  return result;
}

uint64_t MovieDurationWithFragmentContribution@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (*(result + 155))
  {
    *a2 = *(result + 160);
    epoch = *(result + 176);
  }

  else
  {
    v9 = **&MEMORY[0x1E6960CC0];
    memset(&v8, 0, sizeof(v8));
    if (*(result + 304) >= 1)
    {
      v5 = 0;
      do
      {
        GetRevisedTrackDuration(*(*(v2 + 320) + 8 * v5), &v8);
        time1 = v8;
        v6 = v9;
        result = CMTimeCompare(&time1, &v6);
        if (result >= 1)
        {
          v9 = v8;
        }

        ++v5;
      }

      while (v5 < *(v2 + 304));
    }

    *a2 = *&v9.value;
    epoch = v9.epoch;
  }

  *(a2 + 16) = epoch;
  return result;
}

void FreeSampleAuxInfo(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      if (v2[2])
      {
        CFRelease(v2[2]);
        v2 = *(a1 + 88);
      }

      if (v2[3])
      {
        CFRelease(v2[3]);
        v2 = *(a1 + 88);
      }

      if (v2[4])
      {
        CFRelease(v2[4]);
        v2 = *(a1 + 88);
      }

      free(v2);
      *(a1 + 88) = 0;
    }
  }
}

void MovieTrackDisposeFragments(uint64_t a1)
{
  v2 = *(a1 + 728);
  if (v2)
  {
    FreeFragmentInfos(v2);
    v3 = *(a1 + 728);
    *(v3 + 56) = 0;
    *(v3 + 8) = 0;
    *v3 = 0;
  }
}

void FreeFragmentInfos(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    do
    {
      v2 = *v1;
      v3 = v1[9];
      if (v3)
      {
        do
        {
          v4 = *v3;
          free(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v1[12];
      if (v5)
      {
        CFRelease(v5);
        v1[12] = 0;
      }

      v6 = v1[13];
      if (v6)
      {
        CFRelease(v6);
        v1[13] = 0;
      }

      v7 = v1[14];
      if (v7)
      {
        CFRelease(v7);
        v1[14] = 0;
      }

      v8 = v1[15];
      if (v8)
      {
        CFRelease(v8);
        v1[15] = 0;
      }

      v9 = v1[16];
      if (v9)
      {
        CFRelease(v9);
        v1[16] = 0;
      }

      v10 = v1[17];
      if (v10)
      {
        CFRelease(v10);
        v1[17] = 0;
      }

      v11 = v1[18];
      if (v11)
      {
        CFRelease(v11);
        v1[18] = 0;
      }

      v12 = v1[19];
      if (v12)
      {
        CFRelease(v12);
        v1[19] = 0;
      }

      v13 = v1[20];
      if (v13)
      {
        CFRelease(v13);
        v1[20] = 0;
      }

      v14 = v1[21];
      if (v14)
      {
        CFRelease(v14);
        v1[21] = 0;
      }

      FreeSampleAuxInfo(v1);
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t MovieSampleAccessorStepCursor(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 80);
  if (a3)
  {
    *a3 = 0;
  }

  v7 = v6 + a2;
  v8 = *(a1 + 8);
  if (a2 >= 1)
  {
    if (v7 >= 0x100000000)
    {
      MovieSampleAccessorStepCursor_cold_3(&v24);
      return v24;
    }

    LODWORD(v9) = *(v8 + 288);
    v10 = *(v8 + 728);
    if (v10)
    {
      if (*(v10 + 56) && v6 > v9)
      {
        goto LABEL_42;
      }
    }

    if (*(v8 + 240))
    {
      LODWORD(v9) = v9 / *(v8 + 244);
    }

    v12 = v9 < v7;
    if (v9 >= v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v9;
    }

    if (v10)
    {
      v14 = v9 >= v7;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      LODWORD(v9) = v13;
      goto LABEL_45;
    }

    v20 = *(v10 + 56);
    if (v20)
    {
      *(a1 + 192) = v10;
      *(a1 + 200) = v20;
      v21 = *(v20 + 72);
      *(a1 + 208) = v21;
      *(a1 + 184) = v6;
      *(a1 + 80) = *(v21 + 16);
LABEL_42:
      result = StepFragmentCursorTo(a1, v7);
      if (a3)
      {
        *a3 = (*(a1 + 80) - v6);
      }

      return result;
    }

    v12 = 1;
LABEL_45:
    while (*(a1 + 112) + *(a1 + 116) <= v9)
    {
      result = stepDownEntry(a1);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_53;
  }

  v15 = *(v8 + 728);
  if (!v15 || (v16 = *(v15 + 56)) == 0 || v6 <= *(v8 + 288))
  {
    v19 = -a2;
    v12 = v6 <= v19;
    if (v6 <= v19)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    if (HIDWORD(v9))
    {
      MovieSampleAccessorStepCursor_cold_2(&v23);
      return v23;
    }

    while (*(a1 + 116) > v9)
    {
      result = stepUpEntry(a1);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_53;
  }

  v12 = v7 < 1;
  if (v7 >= 0x100000000)
  {
    MovieSampleAccessorStepCursor_cold_1(&v22);
    return v22;
  }

  if (v7 <= 1)
  {
    LODWORD(v9) = 1;
  }

  else
  {
    LODWORD(v9) = v7;
  }

  if (*(v16 + 32) > v9)
  {
    v17 = *(a1 + 184);
    *(a1 + 80) = v17;
    if (v17 >= v9)
    {
      if (v17 > v9)
      {
        while (*(a1 + 116) > v9)
        {
          result = stepUpEntry(a1);
          if (result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      while (*(a1 + 112) + *(a1 + 116) <= v9)
      {
        result = stepDownEntry(a1);
        if (result)
        {
          return result;
        }
      }
    }

LABEL_53:
    LODWORD(result) = 0;
    goto LABEL_54;
  }

  LODWORD(result) = StepFragmentCursorTo(a1, v9);
LABEL_54:
  if (a3)
  {
    *a3 = v9 - v6;
  }

  *(a1 + 80) = v9;
  if (v12)
  {
    return 4294954456;
  }

  else
  {
    return result;
  }
}

uint64_t StepFragmentCursorTo(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 208);
  v3 = *(v2 + 4);
  v4 = *(v2 + 10);
  if (v4 + v3 <= a2)
  {
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        v6 = **(a1 + 200);
        if (!v6)
        {
          a2 = v3 + v4 - 1;
LABEL_13:
          v7 = 4294954456;
          goto LABEL_14;
        }

        *(a1 + 200) = v6;
        v2 = *(v6 + 72);
      }

      *(a1 + 208) = v2;
      v3 = *(v2 + 4);
      v4 = *(v2 + 10);
      if (v4 + v3 > a2)
      {
        goto LABEL_11;
      }
    }
  }

  while (v3 > a2)
  {
    v2 = v2[1];
    if (!v2)
    {
      v5 = *(*(a1 + 200) + 8);
      if (!v5)
      {
        goto LABEL_13;
      }

      *(a1 + 200) = v5;
      v2 = *(v5 + 80);
    }

    *(a1 + 208) = v2;
    v3 = *(v2 + 4);
  }

LABEL_11:
  v7 = 0;
LABEL_14:
  *(a1 + 80) = a2;
  return v7;
}

uint64_t AssureTrackFragmentFixups(uint64_t result)
{
  v1 = *(result + 728);
  if (!*(v1 + 12))
  {
    v2 = *(v1 + 56);
    if (v2)
    {
      v3 = *(result + 288);
      do
      {
        *(v2 + 8) += v3;
        for (i = v2[9]; i; i = *i)
        {
          *(i + 4) += v3;
        }

        v2 = *v2;
      }

      while (v2);
    }

    *(v1 + 12) = 1;
  }

  return result;
}

uint64_t MovieTrackGetSampleCount(uint64_t a1)
{
  result = *(a1 + 288);
  v3 = *(a1 + 728);
  if (v3)
  {
    return (*(v3 + 8) + result);
  }

  return result;
}

void MovieSampleAccessorMoveToSampleForDTS(uint64_t a1, CMTime *a2, char *a3, char *a4)
{
  memset(&v50, 0, sizeof(v50));
  v8 = *(*(a1 + 8) + 232);
  v49 = *a2;
  CMTimeConvertScale(&v50, &v49, v8, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  v9 = a2->flags & 9;
  v10 = (~a2->flags & 5) == 0 || v9 == 9;
  if (v10)
  {
    v10 = v9 == 9;
    v11 = 0x8000000000000000;
    if (!v10)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v50.value = v11;
  }

  v12 = *(a1 + 8);
  v13 = *(v12 + 728);
  if (!v13 || (v14 = *(v13 + 56)) == 0)
  {
    value = v50.value;
LABEL_24:
    if (value >= *(a1 + 96))
    {
      while (1)
      {
        while (1)
        {
          v24 = *(a1 + 96);
          v25 = *(a1 + 104);
          v29 = *(a1 + 112) * v25;
          v30 = (*(a1 + 112) * v25) >> 64 != v29 >> 63;
          v31 = v24 + v29;
          v32 = __OFADD__(v24, v29);
          if (!v30 && !v32)
          {
            break;
          }

          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49.value, v49.timescale, LODWORD(v49.epoch));
          if (v33)
          {
            goto LABEL_38;
          }
        }

        v23 = v50.value;
        if (v50.value < v31)
        {
          break;
        }

        if (stepDownEntry(a1))
        {
          goto LABEL_38;
        }
      }

LABEL_28:
      v26 = 0;
      v27 = 0;
      v28 = *(a1 + 116) + (v23 - v24) / v25;
    }

    else
    {
      while (!stepUpEntry(a1))
      {
        v23 = v50.value;
        v24 = *(a1 + 96);
        if (v50.value >= v24)
        {
          v25 = *(a1 + 104);
          goto LABEL_28;
        }
      }

LABEL_38:
      if (v50.value >= *(a1 + 96))
      {
        v26 = 0;
        v28 = *(*(a1 + 8) + 288);
        v27 = 1;
      }

      else
      {
        v27 = 0;
        v28 = 1;
        v26 = 1;
      }
    }

    *(a1 + 80) = v28;
    *a3 = v26;
    *a4 = v27;
    return;
  }

  if (*(a1 + 80) <= *(v12 + 288))
  {
    value = v50.value;
    if (v50.value < *(v12 + 224))
    {
      goto LABEL_24;
    }
  }

  v16 = *(a1 + 80);
  if (v16 <= *(v12 + 288))
  {
    v17 = *(v14 + 32);
    *(a1 + 192) = v13;
    *(a1 + 200) = v14;
    v18 = *(v14 + 72);
    *(a1 + 208) = v18;
    *(a1 + 184) = v16;
    *(a1 + 80) = *(v18 + 16);
    StepFragmentCursorTo(a1, v17);
  }

  value = v50.value;
  *a4 = 0;
  v19 = *(a1 + 200);
  v20 = v19[2];
  if (value >= v20)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    v21 = *(a1 + 208);
    do
    {
      v21 = *(v21 + 8);
      if (!v21)
      {
        v22 = v19[1];
        if (!v22)
        {
          goto LABEL_22;
        }

        *(a1 + 200) = v22;
        v21 = v22[10];
        v19 = v22;
      }

      *(a1 + 208) = v21;
    }

    while (value < *(v21 + 24));
    LOBYTE(v22) = 1;
LABEL_22:
    v20 = v19[2];
  }

  if (value >= v20)
  {
    while (value >= v19[2] + v19[3])
    {
      v35 = *v19;
      if (!*v19)
      {
        v41 = v19[9];
        do
        {
          v42 = v41;
          if (!v41)
          {
            break;
          }

          v41 = *v41;
        }

        while (*v42);
        v34 = 0;
        *(a1 + 208) = v42;
        *(a1 + 80) = *(v42 + 4) + *(v42 + 10) - 1;
        *a4 = 1;
        if (a3)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v36 = v35[9];
      *(a1 + 200) = v35;
      *(a1 + 208) = v36;
      v19 = v35;
      if ((v22 & 1) == 0)
      {
        v34 = 0;
        if (a3)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      }
    }

    v37 = v19[9];
    if (v37 && value >= v37[3])
    {
      do
      {
        v39 = v37;
        v37 = *v37;
      }

      while (v37 && value >= v37[3]);
      *(a1 + 208) = v39;
      v40 = *(v39 + 13);
      if (v40)
      {
        v43 = *(v39 + 10);
        if (v43 < 1)
        {
          v44 = 0;
        }

        else
        {
          v44 = 0;
          v45 = kPerSampleInfo_SizeInInt32s[v40];
          v46 = (v39 + 7);
          v47 = v39[3];
          v48 = 4 * v45;
          while (1)
          {
            v47 += bswap32(*v46);
            if (v47 > value)
            {
              break;
            }

            ++v44;
            v46 = (v46 + v48);
            if (v43 == v44)
            {
              v44 = *(v39 + 10);
              break;
            }
          }
        }

        v34 = 0;
        v38 = *(v39 + 4) + v44;
      }

      else
      {
        v34 = 0;
        v38 = *(v39 + 4) + (value - v39[3]) / *(v19 + 15);
      }
    }

    else
    {
      v34 = 0;
      *(a1 + 208) = v37;
      v38 = *(v37 + 4);
    }

    *(a1 + 80) = v38;
    if (a3)
    {
      goto LABEL_46;
    }
  }

  else
  {
    *(a1 + 80) = *(*(a1 + 208) + 16);
    v34 = 1;
    if (a3)
    {
LABEL_46:
      *a3 = v34;
    }
  }

LABEL_47:
  if (value < v20 && *(*(a1 + 8) + 288))
  {
    *(a1 + 80) = *(a1 + 184);
    goto LABEL_24;
  }
}

uint64_t MovieSampleAccessorMoveToLastSampleInDecodeOrder(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 728);
  if (v3 && (v4 = *(v3 + 56)) != 0)
  {
    v5 = *(v4 + 32) + *(v3 + 8) - 1;
    v6 = *(a1 + 80);
    if (v6 <= *(v2 + 288))
    {
      *(a1 + 192) = v3;
      *(a1 + 200) = v4;
      v7 = *(v4 + 72);
      *(a1 + 208) = v7;
      *(a1 + 184) = v6;
      *(a1 + 80) = *(v7 + 16);
    }

    StepFragmentCursorTo(a1, v5);
  }

  else
  {
      ;
    }

    v8 = *(a1 + 116) + *(a1 + 112) - 1;
    *(a1 + 80) = v8;
    v9 = *(a1 + 8);
    v10 = *(v9 + 244);
    v11 = *(v9 + 288);
    if (v10)
    {
      v11 /= v10;
    }

    if (v8 != v11)
    {
      MovieSampleAccessorMoveToLastSampleInDecodeOrder_cold_1(&v13);
      return v13;
    }
  }

  return 0;
}

uint64_t MovieSampleAccessorCreate(const void *a1, uint64_t a2, const void ***a3)
{
  v6 = *(a2 + 288);
  v7 = *(a2 + 728);
  if (v7 && *(v7 + 56))
  {
    v6 += *(v7 + 8);
  }

  if (!v6)
  {
    v8 = 0;
    v10 = 4294954454;
    goto LABEL_10;
  }

  v8 = malloc_type_calloc(1uLL, 0xD8uLL, 0x106004069928606uLL);
  if (!v8)
  {
    MovieSampleAccessorCreate_cold_1(&v12);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  *v8 = v9;
  v8[1] = CFRetain(a2);
  v10 = resetTrackCursor(v8);
  if (v10)
  {
LABEL_10:
    MovieSampleAccessorDispose(v8);
    v8 = 0;
  }

LABEL_11:
  *a3 = v8;
  return v10;
}

void MovieSampleAccessorDispose(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
      a1[1] = 0;
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
      a1[2] = 0;
    }

    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
      a1[3] = 0;
    }

    v6 = a1[4];
    if (v6)
    {
      CFRelease(v6);
      a1[4] = 0;
    }

    v7 = a1[5];
    if (v7)
    {
      CFRelease(v7);
      a1[5] = 0;
    }

    v8 = a1[6];
    if (v8)
    {
      CFRelease(v8);
      a1[6] = 0;
    }

    v9 = a1[7];
    if (v9)
    {
      CFRelease(v9);
      a1[7] = 0;
    }

    v10 = a1[8];
    if (v10)
    {
      CFRelease(v10);
      a1[8] = 0;
    }

    v11 = a1[9];
    if (v11)
    {
      CFRelease(v11);
    }

    free(a1);
  }
}

void CopyMovieSampleGroupAccessorIntoNewDictionary(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  value = 0;
  MovieSampleGroupAccessorCopy(a2, &value);
  if (value)
  {
    CFDictionarySetValue(a3, a1, value);
    CFRelease(value);
  }
}

uint64_t MovieSampleAccessorGetDTSTimeValue(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 728);
  if (v2 && *(v2 + 56) && *(a1 + 80) > *(v1 + 288))
  {
    return FragmentCursorGetDTSTimeValue(a1);
  }

  else
  {
    return *(a1 + 96) + *(a1 + 104) * (*(a1 + 80) - *(a1 + 116));
  }
}

uint64_t FragmentCursorGetDTSTimeValue(uint64_t a1)
{
  v1 = *(a1 + 208);
  v2 = *(v1 + 24);
  v3 = *(a1 + 80);
  v4 = *(v1 + 16);
  LODWORD(v5) = v3 - v4;
  if (v3 < v4)
  {
    FragmentCursorGetDTSTimeValue_cold_2();
  }

  else if (v3 >= *(v1 + 40) + v4)
  {
    FragmentCursorGetDTSTimeValue_cold_1();
  }

  else
  {
    v6 = *(v1 + 52);
    if (v6)
    {
      if (v5 >= 1)
      {
        v5 = v5;
        v7 = (v1 + 56);
        v8 = 4 * kPerSampleInfo_SizeInInt32s[v6];
        do
        {
          v2 += bswap32(*v7);
          v7 = (v7 + v8);
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      v2 += *(*(a1 + 200) + 60) * v5;
    }
  }

  return v2;
}

uint64_t MovieSampleAccessorGetPTSTimeValue(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 132);
  v4 = *(a1 + 8);
  v5 = *(v4 + 728);
  if (v5 && *(v5 + 56) && v2 > *(v4 + 288))
  {
    DTSTimeValue = FragmentCursorGetDTSTimeValue(a1);
    v7 = *(a1 + 208);
    v8 = v7[13];
    if ((v8 & 8) != 0)
    {
      v24 = *(a1 + 80);
      v25 = v7[4];
      if (v24 < v25)
      {
        v26 = DTSTimeValue;
        MovieSampleAccessorGetPTSTimeValue_cold_2();
      }

      else
      {
        if (v24 < v7[10] + v25)
        {
          v9 = bswap32(v7[kPerSampleInfo_SizeInInt32s[v8] * (v24 - v25) + 14 + kPerSampleInfo_CompTimeOffIndex[v8]]);
          return DTSTimeValue + v9;
        }

        v26 = DTSTimeValue;
        MovieSampleAccessorGetPTSTimeValue_cold_1();
      }

      DTSTimeValue = v26;
    }

    v9 = 0;
    return DTSTimeValue + v9;
  }

  v10 = *(v4 + 464);
  if (v10)
  {
    while (1)
    {
      v11 = *(a1 + 128);
      destination = 0;
      CMBlockBufferCopyDataBytes(v10, 8 * v11, 8uLL, &destination);
      v12 = *(a1 + 132);
      v13 = v12 + bswap32(destination);
      if (v12 <= v2 && v2 < v13)
      {
        break;
      }

      v15 = *(a1 + 128);
      if (v2 >= v3)
      {
        v19 = v15 + 1;
        v18 = *(a1 + 8);
        if (v19 >= *(v18 + 456))
        {
          goto LABEL_18;
        }

        *(a1 + 128) = v19;
      }

      else
      {
        v16 = v15 - 1;
        if (v15 < 1)
        {
          goto LABEL_18;
        }

        *(a1 + 128) = v16;
        v17 = *(a1 + 8);
        destination = 0;
        CMBlockBufferCopyDataBytes(*(v17 + 464), 8 * v16, 8uLL, &destination);
        v13 = *(a1 + 132) - bswap32(destination);
        v18 = *(a1 + 8);
      }

      *(a1 + 132) = v13;
      v10 = *(v18 + 464);
    }

    v20 = *(a1 + 8);
    v21 = *(a1 + 128);
    destination = 0;
    CMBlockBufferCopyDataBytes(*(v20 + 464), 8 * v21, 8uLL, &destination);
    v22 = bswap32(HIDWORD(destination));
  }

  else
  {
LABEL_18:
    v22 = 0;
  }

  return MovieSampleAccessorGetDTSTimeValue(a1) + v22;
}

uint64_t MovieSampleTableGetCompositionOffsetDisplayOffset(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 464), 8 * a2, 8uLL, &destination);
  return bswap32(HIDWORD(destination));
}

uint64_t MovieSampleAccessorGetSampleDuration(uint64_t a1, CMTime *a2)
{
  v4 = *(a1 + 176);
  v25[10] = *(a1 + 160);
  v25[11] = v4;
  v25[12] = *(a1 + 192);
  v26 = *(a1 + 208);
  v5 = *(a1 + 112);
  v25[6] = *(a1 + 96);
  v25[7] = v5;
  v6 = *(a1 + 144);
  v25[8] = *(a1 + 128);
  v25[9] = v6;
  v7 = *(a1 + 48);
  v25[2] = *(a1 + 32);
  v25[3] = v7;
  v8 = *(a1 + 80);
  v25[4] = *(a1 + 64);
  v25[5] = v8;
  v9 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v9;
  MovieSampleAccessorStepFwdPTS(v25);
  if (v10 == -12840)
  {
    v11 = *(a1 + 8);
    v12 = *(v11 + 728);
    if (!v12 || !*(v12 + 56) || (v13 = *(a1 + 80), v13 <= *(v11 + 288)))
    {
      v19 = *(a1 + 104);
LABEL_9:
      CMTimeMake(&v24, v19, *(v11 + 232));
      goto LABEL_10;
    }

    v14 = *(a1 + 208);
    v15 = v14[13];
    if ((v15 & 1) == 0)
    {
      v16 = *(*(a1 + 200) + 60);
LABEL_14:
      v19 = v16;
      v11 = *(a1 + 8);
      goto LABEL_9;
    }

    v21 = v14[4];
    if (v13 < v21)
    {
      MovieSampleAccessorGetSampleDuration_cold_2();
    }

    else
    {
      if (v13 < v14[10] + v21)
      {
        v16 = bswap32(v14[kPerSampleInfo_SizeInInt32s[v15] * (v13 - v21) + 14]);
        goto LABEL_14;
      }

      MovieSampleAccessorGetSampleDuration_cold_1();
    }

    v16 = 0;
    goto LABEL_14;
  }

  PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(v25);
  CMTimeMake(&lhs, PTSTimeValue, *(*(&v25[0] + 1) + 232));
  v18 = MovieSampleAccessorGetPTSTimeValue(a1);
  CMTimeMake(&rhs, v18, *(*(a1 + 8) + 232));
  CMTimeSubtract(&v24, &lhs, &rhs);
LABEL_10:
  *a2 = v24;
  return 0;
}

__n128 MovieSampleAccessorStepFwdPTS(uint64_t a1)
{
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(a1);
  v3 = PTSTimeValue;
  v4 = *(a1 + 8);
  v5 = *(v4 + 728);
  if (v5 && *(v5 + 56) && *(a1 + 80) > *(v4 + 288))
  {
    if (!*(v5 + 13))
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_8;
    }

    v6 = (v5 + 32);
    v7 = (v5 + 36);
  }

  else
  {
    v6 = (v4 + 112);
    v7 = (v4 + 116);
  }

  v8 = *v6;
  v9 = *v7;
LABEL_8:
  v10 = *(a1 + 160);
  v11 = *(a1 + 192);
  v34 = *(a1 + 176);
  v35 = v11;
  v12 = *(a1 + 96);
  v13 = *(a1 + 128);
  v14 = *(a1 + 144);
  v30 = *(a1 + 112);
  v31 = v13;
  v38 = 0;
  v36 = *(a1 + 208);
  v32 = v14;
  v33 = v10;
  v15 = *(a1 + 48);
  v27[2] = *(a1 + 32);
  v27[3] = v15;
  v16 = *(a1 + 80);
  v27[4] = *(a1 + 64);
  v28 = v16;
  v29 = v12;
  v17 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v17;
  CMTimeMake(&v26, (PTSTimeValue - v8) & ~((PTSTimeValue - v8) >> 63), *(*(&v27[0] + 1) + 232));
  MovieSampleAccessorMoveToSampleForDTS(v27, &v26, &v38, &v37);
  v18 = 0;
  v19 = 0;
  v20 = 1;
  do
  {
    while (1)
    {
      v21 = MovieSampleAccessorGetPTSTimeValue(v27);
      if (v21 <= v3)
      {
        break;
      }

      if (v20 & 1 | (v21 < v19))
      {
        v45 = v34;
        v46 = v35;
        v47 = v36;
        v41 = v30;
        v42 = v31;
        v43 = v32;
        v44 = v33;
        v18 = v21 - v9;
        v19 = v21;
        v39 = v28;
        v40 = v29;
      }

      if (MovieSampleAccessorGetDTSTimeValue(v27) <= v18)
      {
        v20 = 0;
        if (!MovieSampleAccessorStepCursor(v27, 1, 0))
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (!MovieSampleAccessorStepCursor(v27, 1, 0));
  if (v20)
  {
    return result;
  }

LABEL_18:
  *(a1 + 208) = v47;
  v23 = v46;
  *(a1 + 176) = v45;
  *(a1 + 192) = v23;
  v24 = v42;
  *(a1 + 112) = v41;
  *(a1 + 128) = v24;
  v25 = v44;
  *(a1 + 144) = v43;
  *(a1 + 160) = v25;
  result = v40;
  *(a1 + 80) = v39;
  *(a1 + 96) = result;
  return result;
}

CMTime *MovieSampleAccessorGetPTS@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(a1);
  v5 = *(*(a1 + 8) + 232);

  return CMTimeMake(a2, PTSTimeValue, v5);
}

CMTime *MovieSampleAccessorGetDTS@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  DTSTimeValue = MovieSampleAccessorGetDTSTimeValue(a1);
  v5 = *(*(a1 + 8) + 232);

  return CMTimeMake(a2, DTSTimeValue, v5);
}

__n128 MovieSampleAccessorMoveToSampleAtPTS(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  memset(&v48, 0, sizeof(v48));
  v8 = *(*(a1 + 8) + 232);
  *time = *a2;
  *&time[16] = *(a2 + 16);
  CMTimeConvertScale(&v48, time, v8, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  v9 = *(a2 + 12) & 9;
  if ((~*(a2 + 12) & 5) == 0 || v9 == 9)
  {
    v10 = v9 == 9;
    v11 = 0x8000000000000000;
    if (!v10)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v48.value = v11;
  }

  v47 = 0;
  *time = v48;
  MovieSampleAccessorMoveToSampleForDTS(a1, time, &v47 + 1, &v47);
  v13 = *(a1 + 8);
  v14 = *(v13 + 728);
  if (v14)
  {
    LODWORD(v14) = *(v14 + 13) != 0;
  }

  if (*(v13 + 720) || v14)
  {
    v16 = *(v13 + 112);
    v15 = *(v13 + 116);
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    if (v48.value <= 0)
    {
      v17 = 0x8000000000000000;
    }

    v18 = __OFSUB__(v48.value, v15);
    v19 = v48.value - v15;
    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    v21 = 0;
    do
    {
      if (MovieSampleAccessorStepCursor(a1, 1, 0))
      {
        break;
      }

      PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(a1);
      if (PTSTimeValue == v48.value)
      {
        return result;
      }

      if (PTSTimeValue > v48.value)
      {
        v21 = 1;
      }
    }

    while (MovieSampleAccessorGetDTSTimeValue(a1) <= v20);
    v55 = 0uLL;
    v56 = 0;
    memset(time, 0, sizeof(time));
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
    v23 = *(a1 + 8);
    v24 = *(v23 + 288);
    v25 = *(v23 + 728);
    v46 = a4;
    if (v25)
    {
      v24 += *(v25 + 8);
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (*(a1 + 80) + 1 <= v24)
    {
      v29 = 1;
    }

    else
    {
      v29 = v21;
    }

    v30 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v31 = MovieSampleAccessorGetPTSTimeValue(a1);
      v32 = v31;
      if (v48.value == v31)
      {
        break;
      }

      if ((v31 & 0x8000000000000000) == 0 && v48.value > v31 && v48.value - v31 < v30)
      {
        v26 = *(a1 + 80);
        v55 = *(a1 + 84);
        v56 = *(a1 + 100);
        v27 = *(a1 + 104);
        v33 = *(a1 + 192);
        v52 = *(a1 + 176);
        v53 = v33;
        v54 = *(a1 + 208);
        v34 = *(a1 + 128);
        *time = *(a1 + 112);
        *&time[16] = v34;
        v35 = *(a1 + 160);
        v30 = v48.value - v31;
        v28 = v31;
        v50 = *(a1 + 144);
        v51 = v35;
      }

      if (v48.value < v31)
      {
        v29 = 1;
      }
    }

    while ((!v26 || MovieSampleAccessorGetDTSTimeValue(a1) + v16 > v28) && !MovieSampleAccessorStepCursor(a1, -1, 0));
    if (v32 != v48.value)
    {
      if (v26 && (v29 || v28 + v27 > v48.value))
      {
        *(a1 + 80) = v26;
        *(a1 + 84) = v55;
        *(a1 + 100) = v56;
        *(a1 + 104) = v27;
        v44 = v53;
        *(a1 + 176) = v52;
        *(a1 + 192) = v44;
        *(a1 + 208) = v54;
        v45 = *&time[16];
        *(a1 + 112) = *time;
        *(a1 + 128) = v45;
        result = v51;
        *(a1 + 144) = v50;
        *(a1 + 160) = result;
      }

      else if (v48.value >= v32)
      {
        v37 = 0x8000000000000000;
        do
        {
          v38 = MovieSampleAccessorGetPTSTimeValue(a1);
          if (v37 < v38)
          {
            v26 = *(a1 + 80);
            v55 = *(a1 + 84);
            v56 = *(a1 + 100);
            v27 = *(a1 + 104);
            v39 = *(a1 + 192);
            v52 = *(a1 + 176);
            v53 = v39;
            v54 = *(a1 + 208);
            v40 = *(a1 + 128);
            *time = *(a1 + 112);
            *&time[16] = v40;
            v41 = *(a1 + 160);
            v37 = v38;
            v50 = *(a1 + 144);
            v51 = v41;
          }
        }

        while (!MovieSampleAccessorStepCursor(a1, 1, 0));
        *(a1 + 80) = v26;
        *(a1 + 84) = v55;
        *(a1 + 100) = v56;
        *(a1 + 104) = v27;
        v42 = v53;
        *(a1 + 176) = v52;
        *(a1 + 192) = v42;
        *(a1 + 208) = v54;
        v43 = *&time[16];
        *(a1 + 112) = *time;
        *(a1 + 128) = v43;
        result = v51;
        *(a1 + 144) = v50;
        *(a1 + 160) = result;
        if (v46)
        {
          *v46 = 1;
        }
      }

      else
      {
        v36 = resetTrackCursor(a1);
        if (a3 && !v36)
        {
          *a3 = 1;
        }
      }
    }
  }

  else
  {
    if (a3)
    {
      *a3 = HIBYTE(v47);
    }

    if (a4)
    {
      *a4 = v47;
    }
  }

  return result;
}

void MovieSampleAccessorStepBackPTS(uint64_t a1)
{
  PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(a1);
  v3 = PTSTimeValue < 1;
  v4 = PTSTimeValue - 1;
  if (!v3)
  {
    v6 = 0;
    CMTimeMake(&v5, v4, *(*(a1 + 8) + 232));
    MovieSampleAccessorMoveToSampleAtPTS(a1, &v5, &v6 + 1, &v6);
  }
}

uint64_t MovieSampleAccessorComputePlayableHorizon(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 11);
  v99 = *(a1 + 10);
  v100 = v10;
  v101 = *(a1 + 12);
  v102 = a1[26];
  v11 = *(a1 + 7);
  v95 = *(a1 + 6);
  v96 = v11;
  v12 = *(a1 + 9);
  v97 = *(a1 + 8);
  v98 = v12;
  v13 = *(a1 + 3);
  v94[2] = *(a1 + 2);
  v94[3] = v13;
  v14 = *(a1 + 5);
  v94[4] = *(a1 + 4);
  v94[5] = v14;
  v15 = *(a1 + 1);
  v94[0] = *a1;
  v94[1] = v15;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v90 = **&MEMORY[0x1E6960C70];
  v89 = v90;
  v16 = a1 + 1;
  v17 = *(a1[1] + 728);
  if (v17 && *(v17 + 56))
  {
    MovieSampleAccessorComputePlayableHorizon_cold_1(a1, (a1 + 1), &v89, &v90);
    v28 = 0;
    goto LABEL_60;
  }

  MovieSampleAccessorGetSampleLocation(a1, &v92, &v93, 0, a5, a6, a7, a8, v72, v74, SHIDWORD(v74), v77, v80, v82, v84, rhs.value, *&rhs.timescale, rhs.epoch, v87, lhs.value, *&lhs.timescale);
  if (v18)
  {
    goto LABEL_64;
  }

  v19 = v92;
  if ((v93 | v92) < 0 || (v20 = *a1, v21 = *(*a1 + 72), v21 <= v92) || v93 + v92 > v21)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v75, v78);
    if (v18)
    {
LABEL_64:
      v28 = v18;
      goto LABEL_60;
    }

    v20 = *a1;
    v19 = v92;
  }

  v22 = *(v20 + 48);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v23)
  {
    v28 = 4294954514;
    goto LABEL_60;
  }

  v18 = v23(v22, v19, &v91);
  if (v18)
  {
    goto LABEL_64;
  }

  if (!v91)
  {
    v28 = 0;
    v29 = MEMORY[0x1E6960CC0];
    *a2 = *MEMORY[0x1E6960CC0];
    v30 = *(v29 + 16);
    goto LABEL_61;
  }

  v24 = v92 + v91;
  v25 = *(a1 + 20);
  v26 = *(a1 + 34);
  v81 = a2;
  if (*(a1[1] + 432) == 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = *(a1 + 35);
  }

  v31 = 0;
  lhs.value = 0;
  rhs.value = 0;
  v32 = *(a1 + 36);
  v33 = *(a1 + 37);
  LODWORD(v83) = v25;
  v34 = v27 + (v25 - v27) / v33 * v33;
  v35 = 1;
  while (2)
  {
    while (2)
    {
      HIDWORD(v83) = v35;
      v85 = __PAIR64__(v34, v31);
      v79 = v24;
      v36 = 12 * v26;
      v37 = 12 * (v26 + 1);
      while (1)
      {
        v38 = v27 + v32 * v33;
        v39 = v34 - v27;
        if (v34 < v27)
        {
          v40 = *v16;
          goto LABEL_23;
        }

        v40 = *v16;
        if (v34 < v38)
        {
          break;
        }

LABEL_23:
        v41 = *(v40 + 432);
        if (v26 + 1 >= v41)
        {
          goto LABEL_52;
        }

        if (v41 != 1)
        {
          DWORD2(destination) = 0;
          *&destination = 0;
          CMBlockBufferCopyDataBytes(*(v40 + 440), v37, 0xCuLL, &destination);
          v33 = bswap32(DWORD1(destination));
          v40 = *v16;
        }

        v33 /= *(v40 + 244);
        if (v26 + 2 == *(v40 + 432))
        {
          v42 = (*(v40 + 624))() + 1;
        }

        else
        {
          DWORD2(destination) = 0;
          *&destination = 0;
          CMBlockBufferCopyDataBytes(*(v40 + 440), 12 * (v26 + 2), 0xCuLL, &destination);
          v42 = bswap32(destination);
        }

        v43 = *v16;
        DWORD2(destination) = 0;
        *&destination = 0;
        CMBlockBufferCopyDataBytes(*(v43 + 440), v37, 0xCuLL, &destination);
        v32 = v42 - bswap32(destination);
        v36 += 12;
        v37 += 12;
        ++v26;
        v27 = v38;
        v34 = HIDWORD(v85);
      }

      DWORD2(destination) = 0;
      *&destination = 0;
      CMBlockBufferCopyDataBytes(*(v40 + 440), v36, 0xCuLL, &destination);
      v76 = bswap32(destination);
      CheckChunkNumber(*v16, v76 - 1);
      if (v44)
      {
        goto LABEL_67;
      }

      v45 = v39 / v33;
      v46 = CheckChunkNumber(*v16, v39 / v33 + v76 - 1);
      if (v44)
      {
        goto LABEL_67;
      }

      v47 = (*(*v16 + 616))(v46);
      v24 = v79;
      if (v47 >= v79)
      {
        v48 = *(*a1 + 48);
        v49 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v49)
        {
          v44 = v49(v48, v47, &rhs);
          if (!v44)
          {
            if (rhs.value)
            {
              v24 = rhs.value + v47;
              goto LABEL_37;
            }

LABEL_52:
            v31 = v85;
            if ((v83 & 0x100000000) != 0)
            {
              v31 = v83;
            }

            goto LABEL_54;
          }

LABEL_67:
          v28 = v44;
        }

        else
        {
          v28 = 4294954514;
        }

        a2 = v81;
        goto LABEL_60;
      }

LABEL_37:
      if (v45 + v76 < (*(*v16 + 624))())
      {
        v50 = (*(*v16 + 616))();
        if (v47 < v50 && v50 <= v24)
        {
          v35 = 0;
          v31 = HIDWORD(v85) + v33;
          v34 = HIDWORD(v85) + v33;
          continue;
        }
      }

      break;
    }

    v117 = 0;
    v52 = *(a1 + 11);
    v113 = *(a1 + 10);
    v114 = v52;
    v115 = *(a1 + 12);
    v116 = a1[26];
    v53 = *(a1 + 7);
    v109 = *(a1 + 6);
    v110 = v53;
    v54 = *(a1 + 9);
    v111 = *(a1 + 8);
    v112 = v54;
    v55 = *(a1 + 3);
    v105 = *(a1 + 2);
    v106 = v55;
    v56 = *(a1 + 5);
    v107 = *(a1 + 4);
    v108 = v56;
    v57 = *(a1 + 1);
    v31 = HIDWORD(v85);
    v58 = HIDWORD(v85) + v33;
    destination = *a1;
    v104 = v57;
    MovieSampleAccessorStepCursor(&destination, (HIDWORD(v85) + v33 + ~v108), 0);
    MovieSampleAccessorGetSampleLocation(&destination, &lhs, &v117, 0, v59, v60, v61, v62, v73, v75, v76, v79, v81, v83, v85, rhs.value, *&rhs.timescale, rhs.epoch, v87, lhs.value, *&lhs.timescale);
    if (!v63)
    {
      v35 = 0;
      if (v117 + lhs.value <= v24)
      {
        v64 = v58;
      }

      else
      {
        v64 = v31;
      }

      if (v64 <= v83)
      {
        v31 = v83;
      }

      else
      {
        v31 = v64;
      }

      v34 = v58;
      if (v117 + lhs.value > v24)
      {
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  if (v31 <= v83)
  {
    v31 = v83;
  }

LABEL_54:
  PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(a1);
  CMTimeMake(&v89, PTSTimeValue, *(a1[1] + 232));
  v66 = MovieSampleAccessorStepCursor(v94, (v31 - *(a1 + 20)), 0);
  if (v66 == -12840)
  {
    MovieSampleAccessorMoveToSampleAtPTS(v94, MEMORY[0x1E6960C88], 0, 0);
    v28 = v69;
    a2 = v81;
    if (v69)
    {
      goto LABEL_60;
    }

    v70 = MovieSampleAccessorGetPTSTimeValue(v94);
    v68 = *(*(&v94[0] + 1) + 232);
    v67 = *(&v95 + 1) + v70;
  }

  else
  {
    v28 = v66;
    a2 = v81;
    if (v66)
    {
      goto LABEL_60;
    }

    v67 = MovieSampleAccessorGetPTSTimeValue(v94);
    v68 = *(*v16 + 232);
  }

  CMTimeMake(&v90, v67, v68);
LABEL_60:
  lhs = v90;
  rhs = v89;
  CMTimeSubtract(&destination, &lhs, &rhs);
  *a2 = destination;
  v30 = v104;
LABEL_61:
  *(a2 + 16) = v30;
  return v28;
}

double MovieTrackGetMediaDuration@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  CMTimeMake(a2, *(a1 + 224), *(a1 + 232));
  v5 = *(a1 + 728);
  if (v5)
  {
    if (v5[7])
    {
      CMTimeMake(&rhs, *v5, *(a1 + 232));
      v6 = *a2;
      CMTimeAdd(&v8, &v6, &rhs);
      result = *&v8.value;
      *a2 = v8;
    }
  }

  return result;
}

uint64_t MovieSampleAccessorGetDependencyInfo(uint64_t a1, BOOL *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _DWORD *a6, BOOL *a7)
{
  v14 = *(a1 + 8);
  v15 = *(v14 + 728);
  if (v15 && *(v15 + 56) && *(a1 + 80) > *(v14 + 288))
  {
    SampleFlags = FragmentCursorGetSampleFlags(a1);
    if (a2)
    {
      *a2 = (SampleFlags & 0x10000) == 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    if (a6)
    {
      *a6 = 2;
    }

    if (a7)
    {
      *a7 = (SampleFlags & 0xC00000) == 0x800000;
    }

    v17 = FragmentCursorGetSampleFlags(a1);
    if (a4 && a5)
    {
      v18 = v17;
      v19 = *(a1 + 200);
      v20 = *(v19 + 96);
      if (!v20 || CMBlockBufferCopyDataBytes(v20, (*(a1 + 80) - *(v19 + 32)), 1uLL, a5))
      {
        *a5 = (v18 >> 20) & 0x7F;
      }

      *a4 = 1;
    }
  }

  else
  {
    if (a2)
    {
      if (*(v14 + 488))
      {
        v21 = *(v14 + 480);
        if (v21)
        {
          SampleInTable = NEW_findSampleInTable(v14, MovieSampleTableGetSyncSampleNumber, v21, *(a1 + 80), (a1 + 152));
        }

        else
        {
          SampleInTable = 0;
        }
      }

      else
      {
        SampleInTable = 1;
      }

      *a2 = SampleInTable;
    }

    if (a3)
    {
      v23 = *(a1 + 8);
      if (*(v23 + 512) && (v24 = *(v23 + 504), v24))
      {
        v25 = NEW_findSampleInTable(v23, MovieSampleTableGetPartialSyncSampleNumber, v24, *(a1 + 80), (a1 + 156));
      }

      else
      {
        v25 = 0;
      }

      *a3 = v25;
    }

    if (a4 && a5)
    {
      v26 = *(a1 + 8);
      v27 = *(v26 + 536);
      if (v27)
      {
        *a5 = MovieSampleTableGetSampleDependencyFlags(v26, *(a1 + 80) - 1);
        LOBYTE(v27) = 1;
      }

      *a4 = v27;
    }

    if (a6)
    {
      *a6 = 2;
    }

    if (a7)
    {
      v28 = *(a1 + 8);
      if (*(v28 + 536))
      {
        *a7 = (MovieSampleTableGetSampleDependencyFlags(v28, *(a1 + 80) - 1) & 8) != 0;
      }

      else
      {
        *a7 = 0;
      }
    }
  }

  return 0;
}

uint64_t FragmentCursorGetSampleFlags(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 208);
  v3 = *(v2 + 16);
  if (v1 != v3 || !*(v2 + 44))
  {
    v5 = *(v2 + 52);
    if ((v5 & 4) == 0)
    {
      return *(*(a1 + 200) + 68);
    }

    if (v1 < v3)
    {
      FragmentCursorGetSampleFlags_cold_2();
    }

    else
    {
      if (v1 < *(v2 + 40) + v3)
      {
        v4 = *(v2 + 4 * kPerSampleInfo_SizeInInt32s[v5] * (v1 - v3) + 4 * kPerSampleInfo_FlagsIndex[v5] + 56);
        return bswap32(v4);
      }

      FragmentCursorGetSampleFlags_cold_1();
    }

    return 0;
  }

  v4 = *(v2 + 48);
  return bswap32(v4);
}

uint64_t MovieSampleTableGetSampleDependencyFlags(uint64_t a1, int a2)
{
  result = 0;
  destination = 0;
  if (*(a1 + 528) > a2)
  {
    CMBlockBufferCopyDataBytes(*(a1 + 536), a2, 1uLL, &destination);
    return destination;
  }

  return result;
}

const __CFArray *MovieTrackGetNumSampleDescriptions(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void *MovieInformationClearChangeBits(void *result, int a2)
{
  result[5] = 0;
  if (a2)
  {
    v2 = result[38];
    if (v2 >= 1)
    {
      v3 = result[40];
      do
      {
        v4 = *v3++;
        *(v4 + 16) = 0;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t MovieInformationFindTrackForTrackIndex(uint64_t a1, uint64_t a2)
{
  if (a2 < 0 || *(a1 + 304) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 320) + 8 * a2);
  }
}

uint64_t MovieTrackFindOrAddSampleDescription(uint64_t a1, const void *a2, const void *a3, _DWORD *a4)
{
  if (!*(a1 + 56))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(a1 + 56) = Mutable;
    if (!Mutable)
    {
      MovieTrackFindOrAddSampleDescription_cold_5(&v25);
      return v25;
    }
  }

  if (!*(a1 + 64))
  {
    v9 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(a1 + 64) = v9;
    if (!v9)
    {
      MovieTrackFindOrAddSampleDescription_cold_4(&v25);
      return v25;
    }
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    v10 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(a1 + 48) = v10;
    if (!v10)
    {
      MovieTrackFindOrAddSampleDescription_cold_3(&v25);
      return v25;
    }
  }

  v26.length = CFArrayGetCount(v10);
  v26.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v10, v26, a2);
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 64);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 64), i);
    if (FigCFEqual())
    {
      if (FirstIndexOfValue != -1)
      {
        v18 = CFArrayGetCount(*(a1 + 56));
        while (v18-- >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v18);
          if (*ValueAtIndex == FirstIndexOfValue && ValueAtIndex[1] == i)
          {
            v22 = v18 + 1;
            goto LABEL_31;
          }
        }
      }

      goto LABEL_27;
    }
  }

  v14 = malloc_type_malloc(0x18uLL, 0x1060040ABACF81FuLL);
  if (!v14)
  {
    MovieTrackFindOrAddSampleDescription_cold_1(&v25);
    return v25;
  }

  v15 = v14;
  v14[1] = 0;
  if (a3)
  {
    v16 = CFRetain(a3);
    v17 = 1970433056;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v15[2] = v16;
  *v15 = v17;
  CFArrayAppendValue(*(a1 + 64), v15);
  i = CFArrayGetCount(*(a1 + 64)) - 1;
LABEL_27:
  if (FirstIndexOfValue == -1)
  {
    CFArrayAppendValue(*(a1 + 48), a2);
    FirstIndexOfValue = CFArrayGetCount(*(a1 + 48)) - 1;
    *(a1 + 16) |= 4uLL;
  }

  v23 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  if (!v23)
  {
    MovieTrackFindOrAddSampleDescription_cold_2(&v25);
    return v25;
  }

  *v23 = FirstIndexOfValue;
  v23[1] = i;
  CFArrayAppendValue(*(a1 + 56), v23);
  v22 = CFArrayGetCount(*(a1 + 56));
LABEL_31:
  result = 0;
  if (a4)
  {
    *a4 = v22;
  }

  return result;
}

void AllSampleGroupCollectionApplierFunction(void *a1, __CFDictionary *a2)
{
  key = 0;
  value = 0;
  MovieSampleGroupAccessorCreate(a1, &value);
  if (value)
  {
    MovieSampleGroupCopyGroupTypeKeyString(a1, &key);
    if (key)
    {
      CFDictionarySetValue(a2, key, value);
    }

    else
    {
      AllSampleGroupCollectionApplierFunction_cold_1();
    }
  }

  if (key)
  {
    CFRelease(key);
  }

  if (value)
  {
    CFRelease(value);
  }
}

void CopySampleGroupAccessorDataApplierFunction(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  value = 0;
  MovieSampleGroupAccessorCopyDescriptionForSample(a2, *a3, &value);
  if (value)
  {
    CFDictionarySetValue(a3[1], a1, value);
    CFRelease(value);
  }
}

uint64_t MovieSampleAccessorCreateSampleDependencyAttributeDictionary(CFAllocatorRef allocator, uint64_t a2, __CFDictionary **a3)
{
  v6 = *(a2 + 8);
  if (*(v6 + 24) != 1936684398 || *(v6 + 536))
  {
    HIWORD(v27[0]) = 0;
    LODWORD(v27[0]) = 0;
    HIDWORD(v26) = 0;
    *&v22[4] = 0;
    *v22 = 0;
    BYTE3(v26) = 0;
    BYTE6(v25) = 0;
    Mutable = CFDictionaryCreateMutable(allocator, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      WORD2(v27[0]) = 0;
      MovieSampleAccessorGetDependencyInfo(a2, v27 + 5, v27 + 4, v27 + 6, v27 + 7, 0, 0);
      v10 = MEMORY[0x1E695E4D0];
      if (!BYTE5(v27[0]))
      {
        CFDictionarySetValue(v9, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
      }

      if (BYTE4(v27[0]))
      {
        CFDictionarySetValue(v9, *MEMORY[0x1E6960460], *v10);
      }

      if (BYTE6(v27[0]))
      {
        v11 = HIBYTE(v27[0]);
        v12 = MEMORY[0x1E695E4C0];
        if ((v27[0] & 0xC00000000000000) != 0 && (HIBYTE(v27[0]) & 0xC) != 0xC)
        {
          if ((v27[0] & 0x400000000000000) != 0)
          {
            v13 = v10;
          }

          else
          {
            v13 = MEMORY[0x1E695E4C0];
          }

          CFDictionarySetValue(v9, *MEMORY[0x1E6960450], *v13);
          v11 = HIBYTE(v27[0]);
        }

        if ((v11 & 0x30) != 0 && (v11 & 0x30) != 0x30)
        {
          if ((v11 & 0x10) != 0)
          {
            v14 = v10;
          }

          else
          {
            v14 = v12;
          }

          CFDictionarySetValue(v9, *MEMORY[0x1E6960400], *v14);
          v11 = HIBYTE(v27[0]);
        }

        if ((v11 & 3) != 0 && (v11 & 3) != 3)
        {
          if (v11)
          {
            v15 = v10;
          }

          else
          {
            v15 = v12;
          }

          CFDictionarySetValue(v9, *MEMORY[0x1E6960448], *v15);
          v11 = HIBYTE(v27[0]);
        }

        if ((v11 & 0x40) != 0)
        {
          v16 = v10;
        }

        else
        {
          v16 = v12;
        }

        CFDictionarySetValue(v9, *MEMORY[0x1E6960418], *v16);
      }

      desc = 0;
      MovieSampleAccessorGetFormatDescription(a2, &desc);
      MovieSampleAccessorGetTsclValues(a2, v27 + 3, v27 + 2, v27 + 1, v27, &v26 + 4, v22, &v26 + 3, &v26 + 2, &v26 + 1, &v26, (&v25 + 7), *v22, v23, desc, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10]);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      if (v20)
      {
        v17 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v18 = CFDataCreate(allocator, &v26 + 4, 4);
        v19 = CFDataCreate(allocator, v22, 6);
        FigCFDictionarySetInt();
        FigCFDictionarySetInt();
        FigCFDictionarySetInt();
        FigCFDictionarySetInt();
        CFDictionarySetValue(v17, *MEMORY[0x1E69601A0], v18);
        CFDictionarySetValue(v17, *MEMORY[0x1E6960190], v19);
        FigCFDictionarySetInt();
        CFDictionarySetValue(v9, *MEMORY[0x1E6960438], v17);
      }

      if (MovieSampleAccessorGetSyncValues())
      {
        FigCFDictionarySetInt();
      }

      if (MovieSampleAccessorIsInTsas())
      {
        CFDictionarySetValue(v9, *MEMORY[0x1E6960440], *v10);
      }

      if (MovieSampleAccessorIsInStsa())
      {
        CFDictionarySetValue(v9, *MEMORY[0x1E6960428], *v10);
      }

      if (desc)
      {
        if (CMFormatDescriptionGetMediaType(desc) == 1936684398)
        {
          if (FigAudioFormatDescriptionEmploysDependentPackets())
          {
            HIWORD(v23) = 0;
            if (BYTE5(v27[0]) || MovieSampleAccessorGetIndependentFramePrerollPacketCount())
            {
              FigCFDictionarySetInt();
            }
          }
        }
      }

      if (!CFDictionaryGetCount(v9))
      {
        CFRelease(v9);
        v9 = 0;
      }

      *a3 = v9;
      if (v17)
      {
        CFRelease(v17);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      return 0;
    }

    else
    {
      MovieSampleAccessorCreateSampleDependencyAttributeDictionary_cold_1(&desc);
      return desc;
    }
  }

  else
  {
    desc = 0;
    MovieSampleAccessorGetFormatDescription(a2, &desc);
    if (FigAudioFormatDescriptionEmploysDependentPackets() || (v21 = *(a2 + 8), *(v21 + 24) == 1936684398) && (*(v21 + 488) || MovieTrackHasIndependentFramePrerollPacketCount(v21)))
    {
      *v22 = 0;
      WORD2(v26) = 0;
      BYTE6(v23) = 0;
      MovieSampleAccessorGetDependencyInfo(a2, &v23 + 6, 0, 0, 0, 0, 0);
      if (!BYTE6(v23))
      {
        MovieSampleAccessorGetIndependentFramePrerollPacketCount();
      }

      result = FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary();
      *a3 = *v22;
    }

    else
    {
      result = 0;
      *a3 = 0;
    }
  }

  return result;
}

uint64_t MovieTrackCopySampleGroupDescriptionArray(uint64_t a1, int a2, const __CFDictionary **a3)
{
  Value = *(a1 + 80);
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, a2);
    if (Value)
    {
      Value = CFRetain(Value);
    }
  }

  *a3 = Value;
  return 0;
}

uint64_t MovieTrackRemoveSampleGroupInfoForGroupingType(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    MovieSampleGroupCollectionRemoveAllGroupsWithGroupingType(v4, a2);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    CFDictionaryRemoveValue(v5, a2);
  }

  return 0;
}

uint64_t MovieTrackRemoveAllSampleGroups(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }

  return 0;
}

uint64_t MovieTrackCopySampleGroupArray(uint64_t a1, CFArrayRef *a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = MovieSampleGroupCollectionCopySampleGroupArray(*MEMORY[0x1E695E480], v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 0;
}

uint64_t MovieTrackSetSampleOverrides(uint64_t a1, int a2, int a3)
{
  *(a1 + 244) = a3;
  *(a1 + 248) = a2;
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  *(a1 + 240) = v4;
  return 0;
}

uint64_t MovieTrackGetSampleOverrides(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 248);
  }

  if (a3)
  {
    *a3 = *(a1 + 244);
  }

  return *(a1 + 240);
}

uint64_t MovieTrackSetCleanApertureDimensions(uint64_t a1, float a2, float a3)
{
  *(a1 + 252) = 1;
  *(a1 + 256) = a2;
  *(a1 + 260) = a3;
  *(a1 + 16) |= 0x200uLL;
  return 0;
}

uint64_t MovieTrackSetProductionApertureDimensions(uint64_t a1, float a2, float a3)
{
  *(a1 + 264) = 1;
  *(a1 + 268) = a2;
  *(a1 + 272) = a3;
  *(a1 + 16) |= 0x4000uLL;
  return 0;
}

uint64_t MovieTrackSetEncodedPixelsDimensions(uint64_t a1, float a2, float a3)
{
  *(a1 + 276) = 1;
  *(a1 + 280) = a2;
  *(a1 + 284) = a3;
  *(a1 + 16) |= 0x8000uLL;
  return 0;
}

uint64_t MovieTrackGetLoadSettings(uint64_t a1, _OWORD *a2)
{
  result = *(a1 + 880);
  if (a2)
  {
    if (result)
    {
      *a2 = *(a1 + 864);
      return *(a1 + 880);
    }
  }

  return result;
}

uint64_t MovieTrackSetLoadSettings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 880) = 1;
  *(a1 + 864) = a2;
  *(a1 + 872) = a3;
  *(a1 + 16) |= 0x40000uLL;
  return 0;
}

uint64_t MovieTrackSetExtendedLanguageTagString(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 848);
  *(a1 + 848) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 16) |= 0x100uLL;
  return 0;
}

uint64_t MovieTrackSetExcludeFromAutoSelection(uint64_t a1, char a2)
{
  *(a1 + 883) = a2;
  *(a1 + 16) |= 0x800uLL;
  return 0;
}

uint64_t MovieTrackSetEnabled(uint64_t a1, char a2)
{
  *(a1 + 200) = a2;
  *(a1 + 16) |= 0x40uLL;
  return 0;
}

uint64_t MovieTrackUsesAudibleDRM(uint64_t a1)
{
  v1 = MovieTrackCopyFormatDescriptionArray(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
LABEL_6:
    v6 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v2, v5);
      if (FigAudioFormatDescriptionUsesAudibleDRM())
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }

    v6 = 1;
  }

  CFRelease(v2);
  return v6;
}

CFArrayRef MovieTrackCopyFormatDescriptionArray(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    v3 = CFGetAllocator(result);
    v4 = *(a1 + 48);

    return CFArrayCreateCopy(v3, v4);
  }

  return result;
}

uint64_t MovieTrackAudibleContentIsAuthorized(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 296))
  {
    return 0;
  }

  v2 = MovieTrackCopyFormatDescriptionArray(a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_7:
    v7 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v3, v6);
      if (FigAudioFormatDescriptionAudibleContentIsAuthorized())
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    v7 = 1;
  }

  CFRelease(v3);
  return v7;
}

uint64_t MovieTrackEstablishFirstFragmentBaseDecodeTime(int a1, uint64_t a2, int64_t value)
{
  if ((*(a2 + 756) & 1) == 0)
  {
    v3 = (a2 + 744);
    CMTimeMake(&v5, value, *(a2 + 232));
    *v3 = v5;
  }

  return 0;
}

uint64_t MovieTrackFragmentGetCompositionOffsetRange(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (a3)
  {
    result = TrackFragmentBuilderGetMinDecodeToDisplay(*(a2 + 768), a3);
    if (!a4 || result)
    {
      return result;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  v7 = *(a2 + 768);

  return TrackFragmentBuilderGetMaxDecodeToDisplay(v7, a4);
}

const __CFArray *MovieTrackGetNumFormatDescriptions(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t MovieTrackReplaceFormatDescriptionArray(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = *(a1 + 48);
    if (v5)
    {
      v5 = CFArrayGetCount(v5);
    }

    if (Count == v5)
    {
      v6 = CFArrayGetCount(theArray);
      if (v6 >= 1)
      {
        v7 = v6;
        for (i = 0; v7 != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          MediaType = CMFormatDescriptionGetMediaType(ValueAtIndex);
          v11 = *(a1 + 24);
          if (MediaType != v11)
          {
            if (v11 != 1885954932 && MediaType == 1986618469)
            {
              if (v11 != 1635088502)
              {
                goto LABEL_24;
              }
            }

            else if (MediaType != 1986618469 || v11 != 1885954932)
            {
LABEL_24:
              MovieTrackReplaceFormatDescriptionArray_cold_2(&v19);
              return v19;
            }
          }
        }
      }

      v13 = CFGetAllocator(a1);
      MutableCopy = CFArrayCreateMutableCopy(v13, 0, theArray);
      v15 = MutableCopy;
      v16 = *(a1 + 48);
      *(a1 + 48) = MutableCopy;
      if (MutableCopy)
      {
        CFRetain(MutableCopy);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      *(a1 + 16) |= 4uLL;
      if (v15)
      {
        CFRelease(v15);
      }

      return 0;
    }

    else
    {
      MovieTrackReplaceFormatDescriptionArray_cold_1(&v18);
      return v18;
    }
  }

  else
  {
    MovieTrackReplaceFormatDescriptionArray_cold_3(&v20);
    return v20;
  }
}

uint64_t MovieTrackSetMediaTimeScale(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 288);
    v3 = *(a1 + 728);
    if (v3)
    {
      v2 = (*(v3 + 8) + v2);
    }

    if (v2)
    {
      MovieTrackSetMediaTimeScale_cold_1(&v5);
      return v5;
    }

    else
    {
      *(a1 + 232) = a2;
    }
  }

  else
  {
    MovieTrackSetMediaTimeScale_cold_2(&v6);
    return v6;
  }

  return v2;
}

uint64_t FigPersistentTrackIDToTrackIndex(uint64_t a1, int a2)
{
  v2 = *(a1 + 304);
  if (v2 < 1)
  {
    return -1;
  }

  result = 0;
  v5 = *(a1 + 320);
  while (*(*(v5 + 8 * result) + 144) != a2)
  {
    if (v2 == ++result)
    {
      return -1;
    }
  }

  return result;
}

uint64_t MovieInformationFindTrackForTrackID(uint64_t a1, int a2)
{
  v2 = *(a1 + 304);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 320); ; i += 8)
  {
    result = *i;
    if (*(*i + 144) == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MovieInformationFindNthTrackOfType(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 304);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 320);
    do
    {
      result = *v5;
      if (*(*v5 + 24) == a3)
      {
        if (v4 == a2)
        {
          return result;
        }

        ++v4;
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t MovieTrackGetBasicInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 24);
    }

    result = 0;
    if (a3)
    {
      *a3 = *(a1 + 144);
    }
  }

  else
  {
    v8 = v3;
    v9 = v4;
    MovieTrackGetBasicInfo_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t MovieTrackGetTrackTimeInfo(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 120);
  }

  if (a3)
  {
    *a3 = *(a1 + 128);
  }

  return 0;
}

uint64_t MovieTrackGetMediaTimeInfo(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 208);
  }

  if (a3)
  {
    *a3 = *(a1 + 216);
  }

  return 0;
}

uint64_t MovieTrackSetParsedTrackCreateAndModTimes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
  return 0;
}

uint64_t MovieTrackSetParsedMediaCreateAndModTimes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 208) = a2;
  *(a1 + 216) = a3;
  return 0;
}

uint64_t MovieTrackSetVolume(uint64_t a1, float a2)
{
  *(a1 + 196) = a2;
  *(a1 + 16) |= 0x10000uLL;
  return 0;
}

__n128 MovieTrackGetSpatialInformation(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a2)
  {
    result.n128_u32[0] = *(a1 + 188);
    *a2 = result.n128_u32[0];
  }

  if (a3)
  {
    result.n128_u32[0] = *(a1 + 192);
    *a3 = result.n128_u32[0];
  }

  if (a4)
  {
    result = *(a1 + 152);
    v5 = *(a1 + 168);
    *(a4 + 32) = *(a1 + 184);
    *a4 = result;
    *(a4 + 16) = v5;
  }

  return result;
}

uint64_t MovieTrackSetSpatialInformation(uint64_t a1, __int128 *a2, float a3, float a4)
{
  *(a1 + 188) = a3;
  *(a1 + 192) = a4;
  v4 = *(a1 + 16);
  *(a1 + 16) = v4 | 0x400;
  if (a2)
  {
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 184) = *(a2 + 8);
    *(a1 + 168) = v6;
    *(a1 + 152) = v5;
  }

  else
  {
    *(a1 + 184) = 1065353216;
    *(a1 + 152) = kIdentityMatrix_0;
    *(a1 + 168) = unk_196E788D0;
  }

  *(a1 + 16) = v4 | 0x80400;
  return 0;
}

uint64_t MovieTrackSetTrackDimensions(uint64_t a1, float a2, float a3)
{
  *(a1 + 188) = a2;
  *(a1 + 192) = a3;
  *(a1 + 16) |= 0x400uLL;
  return 0;
}

uint64_t MovieTrackSetTrackMatrix(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v2 = *a2;
    v3 = a2[1];
    *(a1 + 184) = *(a2 + 8);
    *(a1 + 168) = v3;
    *(a1 + 152) = v2;
  }

  else
  {
    *(a1 + 184) = 1065353216;
    *(a1 + 152) = kIdentityMatrix_0;
    *(a1 + 168) = unk_196E788D0;
  }

  *(a1 + 16) |= 0x80000uLL;
  return 0;
}

float MovieTrackGetCleanApertureDimensions(uint64_t a1, float *a2, float *a3)
{
  if (*(a1 + 252))
  {
    if (a2)
    {
      result = *(a1 + 256);
      *a2 = result;
    }

    if (a3)
    {
      result = *(a1 + 260);
      *a3 = result;
    }
  }

  return result;
}

float MovieTrackGetProductionApertureDimensions(uint64_t a1, float *a2, float *a3)
{
  if (*(a1 + 264))
  {
    if (a2)
    {
      result = *(a1 + 268);
      *a2 = result;
    }

    if (a3)
    {
      result = *(a1 + 272);
      *a3 = result;
    }
  }

  return result;
}

float MovieTrackGetEncodedPixelsDimensions(uint64_t a1, float *a2, float *a3)
{
  if (*(a1 + 276))
  {
    if (a2)
    {
      result = *(a1 + 280);
      *a2 = result;
    }

    if (a3)
    {
      result = *(a1 + 284);
      *a3 = result;
    }
  }

  return result;
}

uint64_t MovieTrackGetLanguageInformation(uint64_t result, _WORD *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = *(result + 236);
  }

  if (a3)
  {
    *a3 = *(result + 856);
  }

  if (a4)
  {
    *a4 = *(result + 848);
  }

  return result;
}

uint64_t MovieTrackSetLanguageCodeString(uint64_t a1, const __CFString *cf)
{
  if (cf)
  {
    v4 = *(a1 + 856);
    *(a1 + 856) = cf;
    CFRetain(cf);
    if (v4)
    {
      CFRelease(v4);
    }

    ISOLanguageCodeForString = FigGetISOLanguageCodeForString(cf);
    result = 0;
    *(a1 + 236) = ISOLanguageCodeForString;
    *(a1 + 16) |= 0x80uLL;
  }

  else
  {
    MovieTrackSetLanguageCodeString_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t MovieTrackSetDefaultAlternateGroupID(uint64_t a1, __int16 a2)
{
  *(a1 + 150) = a2;
  *(a1 + 16) |= 0x800000uLL;
  return 0;
}

uint64_t MovieTrackGetProvisionalAlternateGroupID(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 738);
  }

  return *(a1 + 740);
}

uint64_t MovieTrackSetProvisionalAlternateGroupID(uint64_t a1, int a2)
{
  *(a1 + 740) = a2 != 0;
  *(a1 + 738) = a2;
  *(a1 + 16) |= 0x400000uLL;
  return 0;
}

uint64_t MovieTrackClearProvisionalAlternateGroupID(uint64_t a1)
{
  *(a1 + 740) = 0;
  *(a1 + 738) = 0;
  *(a1 + 16) |= 0x400000uLL;
  return 0;
}

uint64_t MovieTrackSetLayer(uint64_t a1, __int16 a2)
{
  *(a1 + 148) = a2;
  *(a1 + 16) |= 0x20000uLL;
  return 0;
}

double MovieTrackGetTimecodeMustBeShown(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 24) == 1953325924)
  {
    if (*(a1 + 881))
    {
      *a2 = *(a1 + 882);
      return result;
    }

    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954513;
    v6 = 5999;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954452;
    v6 = 6001;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v5, "<<< FFR_Movie >>>", v6, v4);
}

uint64_t MovieTrackSetTimecodeSpecifics(uint64_t a1, char a2)
{
  *(a1 + 881) = 1;
  *(a1 + 882) = a2;
  return 0;
}

uint64_t MovieTrackGetTrackType(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2 || !CFArrayGetCount(v2))
  {
    return *(a1 + 24);
  }

  result = *(a1 + 24);
  if (result != 1635088502 && result != 1885954932)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), 0);
    result = CMFormatDescriptionGetMediaType(ValueAtIndex);
    if (result == 1953325924)
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
      if (MediaSubType == 1668167220 || MediaSubType == 1952658996)
      {
        return 1952658996;
      }

      else
      {
        return 1953325924;
      }
    }
  }

  return result;
}

uint64_t MovieTrackSetParsedTrackType(uint64_t a1, int a2)
{
  if (a2 == 1953325924 || a2 == 1952658996)
  {
    v3 = 1953325924;
  }

  else
  {
    v3 = a2;
  }

  *(a1 + 24) = v3;
  return 0;
}

uint64_t MovieTrackSetTrackExtendsDefaultValues(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  a1[231] = a2;
  a1[232] = a3;
  a1[233] = a4;
  a1[234] = a5;
  return 0;
}

uint64_t MovieTrackGetTrackExtendsDefaultValues(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = a1[231];
  }

  if (a3)
  {
    *a3 = a1[232];
  }

  if (a4)
  {
    *a4 = a1[233];
  }

  if (a5)
  {
    *a5 = a1[234];
  }

  return 0;
}

uint64_t MovieTrackSetParsedMediaDuration(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 224) = a2;
  *(a1 + 232) = a3;
  return 0;
}

CFDictionaryRef MovieTrackCreateAdvanceDecodeDeltaDictionary(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  if (MoovAssureSampleTableParsed(a2))
  {
    return 0;
  }

  CMTimeMake(&time, -*(a3 + 116) & (*(a3 + 116) >> 31), *(a3 + 232));
  return CMTimeCopyAsDictionary(&time, a1);
}

uint64_t MovieTrackCreateSampleDescriptionAtomLocationDictionary(uint64_t a1, __CFDictionary **a2)
{
  if (*(a1 + 648) && *(a1 + 656))
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (a1 + 648));
    if (v5)
    {
      v6 = v5;
      v7 = CFNumberCreate(v4, kCFNumberSInt64Type, (a1 + 656));
      if (v7)
      {
        v8 = v7;
        Mutable = CFDictionaryCreateMutable(v4, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v10 = Mutable;
          CFDictionarySetValue(Mutable, @"Offset", v6);
          CFDictionarySetValue(v10, @"Length", v8);
          *a2 = v10;
        }

        else
        {
          MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_1();
        }

        CFRelease(v6);
        CFRelease(v8);
      }

      else
      {
        MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_2(v6);
      }
    }

    else
    {
      MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_3();
    }
  }

  else
  {
    MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_4();
  }

  return 0;
}

uint64_t MovieTrackHasRollInformation(uint64_t a1)
{
  Basic = MovieSampleGroupTypeSpecMakeBasic(1919904876);
  result = *(a1 + 72);
  if (result)
  {

    return MovieSampleGroupCollectionHasSampleGroup(result, Basic, v2);
  }

  return result;
}

uint64_t MovieTrackHasIndependentFramePrerollPacketCount(uint64_t a1)
{
  Basic = MovieSampleGroupTypeSpecMakeBasic(1886547820);
  result = *(a1 + 72);
  if (result)
  {

    return MovieSampleGroupCollectionHasSampleGroup(result, Basic, v2);
  }

  return result;
}

uint64_t MovieTrackHasSeamSamples(uint64_t a1)
{
  Basic = MovieSampleGroupTypeSpecMakeBasic(1936023917);
  result = *(a1 + 72);
  if (result)
  {

    return MovieSampleGroupCollectionHasSampleGroup(result, Basic, v2);
  }

  return result;
}

BOOL MovieTrackHasAudioDependencyInformation(uint64_t a1)
{
  if (*(a1 + 24) != 1936684398)
  {
    return 0;
  }

  if (*(a1 + 488))
  {
    return 1;
  }

  return MovieTrackHasIndependentFramePrerollPacketCount(a1) != 0;
}

BOOL MovieTrackEditsExcludeAudioPrimingAndRemainderDuration(uint64_t a1)
{
  if (*(a1 + 24) != 1936684398 || !*(a1 + 722) || *(a1 + 824) == 1)
  {
    return 0;
  }

  if (MovieTrackHasRollInformation(a1))
  {
    return 1;
  }

  if (*(a1 + 24) != 1936684398)
  {
    return 0;
  }

  return *(a1 + 488) || MovieTrackHasIndependentFramePrerollPacketCount(a1) != 0;
}

void MovieTrackCreateEditSegmentArray(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  if (!*(a2 + 722))
  {
    memset(&v54, 0, sizeof(v54));
    v25 = a2;
    CMTimeMake(&v54, *(a2 + 136), *(a1 + 240));
    memset(&v53, 0, sizeof(v53));
    CMTimeMake(&v53, *(v25 + 224), *(v25 + 232));
    v52 = v53;
    *(v25 + 824) = 0;
    v26 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
    if (!v26)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, v44, v46);
      return;
    }

    v3 = v26;
    v27 = MEMORY[0x1E6960CC0];
    v28 = *MEMORY[0x1E6960CC0];
    v26[3] = *MEMORY[0x1E6960CC0];
    v29 = *(v27 + 16);
    *(v26 + 8) = v29;
    *(v26 + 2) = v29;
    v50 = v28;
    *v26 = v28;
    *(v26 + 3) = v54;
    *(v26 + 1) = v53;
    v30 = *(a1 + 240);
    v31 = *(v25 + 232);
    if (v30 != v31)
    {
      if (v30 >= v31)
      {
        v32 = *(v25 + 232);
      }

      else
      {
        v32 = *(a1 + 240);
      }

      CMTimeMake(&rhs, 1, v32);
      time = v53;
      CMTimeAdd(&v52, &time, &rhs);
    }

    rhs = v52;
    time = v54;
    if (CMTimeCompare(&rhs, &time) < 0)
    {
      v60 = 0;
      *&rhs.value = v50;
      rhs.epoch = v29;
      time = **&MEMORY[0x1E6960C70];
      time2 = time;
      if (MoovAssureSampleTableParsed(a1))
      {
        v36 = 0;
      }

      else
      {
        v35 = MovieSampleAccessorCreate(a1, v51, &v60);
        v36 = v60;
        if (!v35 && !MovieSampleAccessorMoveToLastSampleInDecodeOrder(v60))
        {
          DTSTimeValue = MovieSampleAccessorGetDTSTimeValue(v36);
          CMTimeMake(&time, DTSTimeValue, *(v36[1] + 58));
          MovieSampleAccessorGetSampleDuration(v36, &time2);
          lhs = time;
          v55 = time2;
          CMTimeAdd(&rhs, &lhs, &v55);
          lhs = rhs;
          MovieSampleAccessorDispose(v36);
          rhs = lhs;
          time = v53;
          if (CMTimeCompare(&rhs, &time) >= 1)
          {
            v38 = *(v51 + 232);
            time = lhs;
            CMTimeConvertScale(&rhs, &time, v38, kCMTimeRoundingMethod_QuickTime);
            v53 = rhs;
            epoch = rhs.epoch;
            v40 = *&rhs.value;
            timescale = rhs.timescale;
            *(v51 + 224) = rhs.value;
            *(v51 + 232) = timescale;
            *(v3 + 5) = epoch;
            *(v3 + 24) = v40;
          }

          goto LABEL_39;
        }
      }

      MovieSampleAccessorDispose(v36);
    }

    else if (*(a1 + 83))
    {
      if (*(v51 + 232) == *(a1 + 240))
      {
        rhs = v53;
        time = v54;
        if (CMTimeCompare(&rhs, &time) >= 1)
        {
          value = v53.value;
          *(a1 + 232) = v53.value;
          *(v51 + 136) = value;
          *(v3 + 3) = v53;
        }
      }
    }

LABEL_39:
    time = *(v3 + 1);
    time2 = *(v3 + 3);
    CMTimeMinimum(&rhs, &time, &time2);
    a2 = v51;
    *(v3 + 24) = *&rhs.value;
    v42 = rhs.epoch;
    *(v3 + 5) = rhs.epoch;
    *(v3 + 72) = *(v3 + 24);
    *(v3 + 11) = v42;
    LODWORD(v4) = 1;
    v24 = 1;
    goto LABEL_40;
  }

  v3 = *(a2 + 704);
  if (!v3)
  {
    LODWORD(v4) = 0;
    v24 = 0;
    v34 = 1;
LABEL_33:
    *(a2 + 824) = v34;
    goto LABEL_40;
  }

  v4 = bswap32(*(v3 + 1));
  if (v4 < 1)
  {
    v24 = 0;
    v3 = 0;
    v34 = 2;
    goto LABEL_33;
  }

  *(a2 + 824) = 3;
  if (v4 <= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v48 = v5;
  v6 = malloc_type_calloc(v5, 0x60uLL, 0x1000040565EDBD2uLL);
  if (!v6)
  {
    MovieTrackCreateEditSegmentArray_cold_1(&rhs);
    return;
  }

  v7 = 0;
  v8 = 0;
  v49 = v3 + 8;
  v9 = v3 + 6;
  v10 = v3 + 3;
  v45 = v4;
  v47 = v6;
  v11 = v6 + 72;
  a2 = v51;
  do
  {
    if (**(a2 + 704))
    {
      v12 = bswap64(*(v9 - 1));
      v13 = bswap64(*(v9 - 2));
      v14 = v9;
    }

    else
    {
      v12 = bswap32(*v10);
      v13 = bswap32(*(v10 - 1));
      v14 = &v49[12 * v7 + 8];
    }

    v15 = *v14;
    v16 = v11 - 72;
    if (v12 == -1)
    {
      v18 = MEMORY[0x1E6960C70];
      *v16 = *MEMORY[0x1E6960C70];
      *(v11 - 7) = *(v18 + 16);
    }

    else
    {
      CMTimeMake(&rhs, v12, *(a2 + 232));
      v17 = *&rhs.value;
      *(v11 - 7) = rhs.epoch;
      *v16 = v17;
    }

    CMTimeMake(&rhs, v13, *(a1 + 240));
    v19 = *&rhs.value;
    *(v11 + 2) = rhs.epoch;
    *v11 = v19;
    CMTimeMake(&rhs, v8, *(a1 + 240));
    v20 = *&rhs.value;
    *(v11 - 1) = rhs.epoch;
    *(v11 - 24) = v20;
    v21 = v11 - 48;
    if (v15 == 256)
    {
      *v21 = *v11;
      *(v11 - 4) = *(v11 + 2);
    }

    else
    {
      v22 = *v11;
      time.epoch = *(v11 + 2);
      *&time.value = v22;
      CMTimeMultiplyByFloat64(&rhs, &time, vcvtd_n_f64_u32(bswap32(v15), 0x10uLL));
      v23 = *&rhs.value;
      *(v11 - 4) = rhs.epoch;
      *v21 = v23;
    }

    a2 = v51;
    v8 += v13;
    ++v7;
    v9 += 5;
    v10 += 3;
    v11 += 96;
    --v4;
  }

  while (v4);
  LODWORD(v4) = v45;
  v3 = v47;
  v24 = v48;
LABEL_40:
  *(a2 + 808) = v3;
  *(a2 + 820) = v24;
  *(a2 + 816) = v4;
}

uint64_t MovieTrackAddRunContributionToEditSegmentArray(uint64_t a1, uint64_t a2, int64_t a3, int64_t value)
{
  result = 0;
  memset(&v52, 0, sizeof(v52));
  memset(&v51, 0, sizeof(v51));
  memset(&v50, 0, sizeof(v50));
  v9 = *(a2 + 824);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v25 = *(a2 + 816);
      v26 = v25;
      v27 = *(a2 + 808);
      if (v27[96 * v25 - 84])
      {
        CMTimeMake(&lhs, value, *(a2 + 232));
        v38 = *(a2 + 808) + 96 * (v25 - 1);
        v39 = *v38;
        rhs.epoch = *(v38 + 16);
        *&rhs.value = v39;
        CMTimeSubtract(&v51, &lhs, &rhs);
        v40 = *(a2 + 808) + 96 * (v25 - 1);
        lhs = v51;
        v41 = *(v40 + 24);
        rhs.epoch = *(v40 + 40);
        *&rhs.value = v41;
        CMTimeSubtract(&v50, &lhs, &rhs);
        v42 = *(a2 + 808) + 96 * (v25 - 1);
        v43 = *(v42 + 72);
        rhs.epoch = *(v42 + 88);
        *&rhs.value = v43;
        v47 = v50;
        CMTimeAdd(&lhs, &rhs, &v47);
        v44 = *&lhs.value;
        *(v42 + 88) = lhs.epoch;
        *(v42 + 72) = v44;
        v45 = *(a2 + 808) + 96 * (v25 - 1);
        v46 = *&v51.value;
        *(v45 + 40) = v51.epoch;
        *(v45 + 24) = v46;
      }

      else
      {
        if (*(a2 + 820) <= v25)
        {
          v28 = v25 + 1;
          v29 = malloc_type_realloc(v27, 96 * (v26 + 1), 0x1000040565EDBD2uLL);
          if (!v29)
          {
            MovieTrackAddRunContributionToEditSegmentArray_cold_1(&lhs);
            return LODWORD(lhs.value);
          }

          *(a2 + 808) = v29;
          *(a2 + 820) = v28;
          v25 = *(a2 + 816);
        }

        CMTimeMake(&lhs, value, *(a2 + 232));
        CMTimeMake(&rhs, a3, *(a2 + 232));
        CMTimeSubtract(&v52, &lhs, &rhs);
        v30 = *(a2 + 808) + 96 * v25;
        CMTimeMake(&lhs, 0, *(a1 + 240));
        v31 = *&lhs.value;
        *(v30 + 64) = lhs.epoch;
        *(v30 + 48) = v31;
        v32 = *(a2 + 808) + 96 * v25;
        v33 = *&v52.value;
        *(v32 + 88) = v52.epoch;
        *(v32 + 72) = v33;
        v34 = *(a2 + 808) + 96 * v25;
        CMTimeMake(&lhs, a3, *(a2 + 232));
        v35 = *&lhs.value;
        *(v34 + 16) = lhs.epoch;
        *v34 = v35;
        v36 = *(a2 + 808) + 96 * v25;
        v37 = *&v52.value;
        *(v36 + 40) = v52.epoch;
        *(v36 + 24) = v37;
        ++*(a2 + 816);
      }

      *(a2 + 824) = 4;
    }

    else
    {
      if (v9 != 4)
      {
        return result;
      }

      v13 = 96 * *(a2 + 816);
      CMTimeMake(&lhs, value, *(a2 + 232));
      v13 -= 96;
      v14 = *(a2 + 808) + v13;
      v15 = *v14;
      rhs.epoch = *(v14 + 16);
      *&rhs.value = v15;
      CMTimeSubtract(&v51, &lhs, &rhs);
      v16 = *(a2 + 808) + v13;
      lhs = v51;
      v17 = *(v16 + 24);
      rhs.epoch = *(v16 + 40);
      *&rhs.value = v17;
      CMTimeSubtract(&v50, &lhs, &rhs);
      v18 = *(a2 + 808) + v13;
      v19 = *(v18 + 72);
      rhs.epoch = *(v18 + 88);
      *&rhs.value = v19;
      v47 = v50;
      CMTimeAdd(&lhs, &rhs, &v47);
      v20 = *&lhs.value;
      *(v18 + 88) = lhs.epoch;
      *(v18 + 72) = v20;
      v21 = *(a2 + 808) + v13;
      v22 = *&v51.value;
      *(v21 + 40) = v51.epoch;
      *(v21 + 24) = v22;
    }
  }

  else if (v9)
  {
    if (v9 != 2)
    {
      return result;
    }

    *(a2 + 820) = 4;
    *(a2 + 808) = malloc_type_calloc(4uLL, 0x60uLL, 0x1000040565EDBD2uLL);
    *(a2 + 816) = 1;
    CMTimeMake(&lhs, value, *(a2 + 232));
    CMTimeMake(&rhs, a3, *(a2 + 232));
    CMTimeSubtract(&v52, &lhs, &rhs);
    v10 = *(a2 + 808);
    CMTimeMake(&lhs, 0, *(a1 + 240));
    v10[2] = lhs;
    *(*(a2 + 808) + 72) = v52;
    v11 = *(a2 + 808);
    CMTimeMake(&lhs, a3, *(a2 + 232));
    v12 = *&lhs.value;
    *(v11 + 16) = lhs.epoch;
    *v11 = v12;
    *(*(a2 + 808) + 24) = v52;
    *(a2 + 824) = 4;
  }

  else
  {
    v23 = *(a2 + 808);
    CMTimeMake(&lhs, value, *(a2 + 232));
    v23[1] = lhs;
    v24 = *(a2 + 808);
    *(v24 + 72) = *(v24 + 24);
    *(v24 + 88) = *(v24 + 40);
  }

  result = 0;
  *(a2 + 16) |= 2uLL;
  return result;
}

void NoteEditSegmentModification(uint64_t a1, uint64_t a2, CMTime *a3, int a4)
{
  v4 = *(a2 + 16);
  *(a2 + 16) = v4 | 2;
  if (*(a2 + 922))
  {
    *(a2 + 16) = v4 | 0x200002;
  }

  if (!a4 && *(a1 + 32))
  {
    cf = *a3;
    v5 = *MEMORY[0x1E695E480];
    cf.value = CMTimeCopyAsDictionary(&cf, *MEMORY[0x1E695E480]);
    if (cf.value)
    {
      v6 = CFDictionaryCreate(v5, kMovieInformationPayloadKey_AffectedTrackTime, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v6 = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDeferNotificationToDispatchQueue();
    if (v6)
    {
      CFRelease(v6);
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }
  }
}

CMTime *UpdateDurationsForEditSegmentChange(CMTime *result, uint64_t a2)
{
  v3 = result;
  start = **&MEMORY[0x1E6960CC0];
  v4 = *(a2 + 816);
  v5 = (v4 - 1);
  if (v4 >= 1)
  {
    v6 = (*(a2 + 808) + 96 * v5 + 48);
    v7 = v5 + 1;
    while ((*(v6 - 36) & 1) == 0)
    {
      v6 -= 6;
      if (v7-- <= 1)
      {
        goto LABEL_8;
      }
    }

    v9 = *v6;
    v10 = v6[2];
    *&range.start.epoch = v6[1];
    *&range.duration.timescale = v10;
    *&range.start.value = v9;
    CMTimeRangeGetEnd(&start, &range);
    value = v3[10].value;
    time = start;
    result = CMTimeConvertScale(&range.start, &time, value, kCMTimeRoundingMethod_QuickTime);
    start = range.start;
  }

LABEL_8:
  if (start.value != *(a2 + 136))
  {
    *(a2 + 136) = start.value;
    epoch = v3[12].epoch;
    if (epoch < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = *&v3[13].timescale;
      do
      {
        v15 = *v14++;
        v16 = *(v15 + 136);
        if (v16 > v13)
        {
          v13 = v16;
        }

        --epoch;
      }

      while (epoch);
    }

    if (v3[9].epoch != v13)
    {
      v3[9].epoch = v13;
      v3[1].epoch |= 1uLL;
    }
  }

  return result;
}

uint64_t MovieTrackIntegrateFragmentSampleGroups(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MovieSampleGroupCollectionApplyFunction(a2, IntegrateFragmentSampleGroupCollectionApplier, a1);
  }

  return 0;
}

uint64_t MovieTrackInitializeLowestDisplayStartTimeAndHighestDisplayEndTime(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 576))
  {
    v2 = bswap32(*(a2 + 572));
    *(a2 + 88) = bswap32(*(a2 + 568));
    *(a2 + 96) = 0xFFFFFFFF80000000;
    *(a2 + 104) = v2;
  }

  else if (*(a2 + 416))
  {
    v3 = *(a2 + 288);
    v4 = *(a2 + 728);
    if (v4)
    {
      v3 += *(v4 + 8);
    }

    if (v3)
    {
      MovieTrackInitializeLowestDisplayStartTimeAndHighestDisplayEndTime_cold_1(a1, a2);
    }
  }

  return 0;
}

uint64_t MovieTrackReviseSampleDependencyTable(uint64_t a1, int a2)
{
  blockBufferOut = 0;
  v4 = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], *(a1 + 536), 0, a2, 0, &blockBufferOut);
  v5 = blockBufferOut;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = blockBufferOut == 0;
  }

  if (!v6)
  {
    v7 = *(a1 + 536);
    *(a1 + 536) = blockBufferOut;
    CFRetain(v5);
    if (v7)
    {
      CFRelease(v7);
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    *(a1 + 528) = a2;
  }

  return v4;
}

uint64_t MovieSampleTableGetSyncSampleNumber(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 488), 4 * a2, 4uLL, &destination);
  return bswap32(destination);
}

uint64_t MovieSampleTableGetPartialSyncSampleNumber(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 512), 4 * a2, 4uLL, &destination);
  return bswap32(destination);
}

uint64_t MovieTrackCopyLatentBaseDecodeTimeStampOfFirstTrackFragmentDictionary(CFAllocatorRef allocator, uint64_t a2, CFDictionaryRef *a3)
{
  if (*(a2 + 756))
  {
    v6 = *(a2 + 744);
    v4 = CMTimeCopyAsDictionary(&v6, allocator);
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 0;
}

double UpdateMinSampleDuration(uint64_t a1, CMTime *a2)
{
  memset(&v6, 0, sizeof(v6));
  MovieSampleAccessorGetSampleDuration(a1, &v6);
  time1 = v6;
  v4 = *a2;
  if (CMTimeCompare(&time1, &v4) < 0)
  {
    result = *&v6.value;
    *a2 = v6;
  }

  return result;
}

uint64_t MovieTrackAddParsedSampleDescriptionAndDataRefIndex(uint64_t a1, OpaqueCMBlockBuffer *a2, int a3)
{
  if (!*(a1 + 40))
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(a1 + 40) = Mutable;
    if (!Mutable)
    {
      MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_3(&dataPointerOut);
      return dataPointerOut;
    }

    v8 = CFArrayCreateMutable(v6, 0, 0);
    *(a1 + 56) = v8;
    if (!v8)
    {
      MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_2(&dataPointerOut);
      return dataPointerOut;
    }
  }

  for (i = 0; ; ++i)
  {
    v10 = *(a1 + 40);
    v11 = v10 ? CFArrayGetCount(v10) : 0;
    v12 = *(a1 + 40);
    if (i >= v11)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
    v23 = 0;
    dataPointerOut = 0;
    v21 = 0;
    lengthAtOffsetOut = 0;
    v19 = 0;
    totalLengthOut = 0;
    if (!CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut) && lengthAtOffsetOut == totalLengthOut && !CMBlockBufferGetDataPointer(ValueAtIndex, 0, &v21, &v19, &v23) && v21 == v19 && totalLengthOut == v21 && totalLengthOut >= 0x10)
    {
      v14 = bswap64(*dataPointerOut);
      v15 = bswap64(*v23);
      if (v14 == v15 && (v14 = bswap64(*(dataPointerOut + 6)), v15 = bswap64(*(v23 + 6)), v14 == v15))
      {
        v16 = 0;
      }

      else
      {
        v16 = v14 < v15 ? -1 : 1;
      }

      if (v21 != 16 && !v16)
      {
        v16 = memcmp(dataPointerOut + 16, v23 + 16, v21 - 16);
      }

      if (!v16)
      {
        goto LABEL_27;
      }
    }
  }

  CFArrayAppendValue(v12, a2);
  i = CFArrayGetCount(*(a1 + 40)) - 1;
LABEL_27:
  v17 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  if (!v17)
  {
    MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_1(&dataPointerOut);
    return dataPointerOut;
  }

  *v17 = i;
  v17[1] = a3 - 1;
  CFArrayAppendValue(*(a1 + 56), v17);
  return 0;
}

void MovieTrackRemoveAllSampleDescriptions(uint64_t a1)
{
  ReleaseSampleDescriptionInfoArray(a1);
  ReleaseDataReferenceInfoArray(a1);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }
}

uint64_t MovieTrackIsSelfContained(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    FigSimpleMutexLock();
    if (Count < 1)
    {
LABEL_6:
      v5 = 1;
    }

    else
    {
      v4 = 0;
      while (!*CFArrayGetValueAtIndex(*(a1 + 64), v4))
      {
        if (Count == ++v4)
        {
          goto LABEL_6;
        }
      }

      v5 = 0;
    }
  }

  else
  {
    FigSimpleMutexLock();
    v5 = 1;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t MovieTrackContainsUnsupportedDataReferences(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    FigSimpleMutexLock();
    if (Count < 1)
    {
LABEL_10:
      v8 = 0;
    }

    else
    {
      v5 = 0;
      while (1)
      {
        v6 = *CFArrayGetValueAtIndex(*(a2 + 64), v5);
        if (v6 != 1970433056 && v6 != 0)
        {
          break;
        }

        if (++v5 >= Count)
        {
          goto LABEL_10;
        }
      }

      v8 = 1;
    }
  }

  else
  {
    FigSimpleMutexLock();
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t MovieTrackIsFrameReorderingRequired(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 720) || MoovAssureSampleTableParsed(a1) || (v3 = *(a2 + 456), v3 < 2))
  {
LABEL_7:
    result = 0;
  }

  else
  {
    destination = 0;
    v4 = 8;
    CMBlockBufferCopyDataBytes(*(a2 + 464), 0, 8uLL, &destination);
    v5 = HIDWORD(destination);
    v6 = 8 * v3;
    while (1)
    {
      destination = 0;
      CMBlockBufferCopyDataBytes(*(a2 + 464), v4, 8uLL, &destination);
      if (HIDWORD(destination) != v5)
      {
        break;
      }

      v4 += 8;
      if (v6 == v4)
      {
        goto LABEL_7;
      }
    }

    result = 1;
  }

  v8 = *(a2 + 728);
  if (v8 && *(v8 + 56))
  {
    if (*(v8 + 13))
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t MovieTrackIsChapterTrack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 328);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = (*(a1 + 344) + 8); *(i - 2) != 1667785072 || *i != *(a2 + 144); i += 3)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MovieInformationContainsChapters(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *(a1 + 344);
  while (1)
  {
    v3 = *v2;
    v2 += 3;
    if (v3 == 1667785072)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MovieInformationSetAudibleGroupID(uint64_t a1, int a2)
{
  *(a1 + 296) = 1;
  *(a1 + 300) = a2;
  return 0;
}

uint64_t MovieInformationRemoveOneTrackReference(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[41];
  if (v4 >= 1)
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v9 = a1[43];
    v10 = 12 * v4 - 12;
    v11 = v4;
    while (*v9 != __PAIR64__(v6, a2) || *(v9 + 8) != a4)
    {
      v10 -= 12;
      v9 += 12;
      if (!--v11)
      {
        return 0;
      }
    }

    if (v11 != 1)
    {
      memmove(v9, (v9 + 12), v10);
      v4 = a1[41];
    }

    a1[41] = v4 - 1;
    NoteTrackReferenceChange(a1, v7, v6, v5);
  }

  return 0;
}

uint64_t *NoteTrackReferenceChange(uint64_t *result, int a2, int a3, int a4)
{
  v4 = result[38];
  if (v4 <= 0)
  {
    goto LABEL_14;
  }

  v5 = result[40];
  v6 = v5;
  v7 = result[38];
  do
  {
    v8 = *v6;
    if (*(*v6 + 144) == a3)
    {
      goto LABEL_6;
    }

    v6 += 8;
    --v7;
  }

  while (v7);
  v8 = 0;
LABEL_6:
  while (1)
  {
    v9 = *v5;
    if (*(*v5 + 144) == a4)
    {
      break;
    }

    v5 += 8;
    if (!--v4)
    {
      v9 = 0;
      break;
    }
  }

  if (v8)
  {
    *(v8 + 16) |= 0x100000uLL;
  }

  if (!v9)
  {
LABEL_14:
    v13 = result[5];
    result += 5;
    v12 = v13 | 0x100;
    *result = v13 | 0x100;
    if (a2 != 1667785072)
    {
      return result;
    }

    goto LABEL_15;
  }

  v10 = *(v9 + 16);
  *(v9 + 16) = v10 | 0x100000;
  if (a2 == 1667785072)
  {
    *(v9 + 16) = v10 | 0x300000;
    *(v9 + 922) = 1;
    v11 = result[5];
    result += 5;
    v12 = v11 | 0x100;
LABEL_15:
    *result = v12 | 0x4000;
    return result;
  }

  result[5] |= 0x100uLL;
  return result;
}

uint64_t MovieInformationRemoveAllTrackReferences(uint64_t *a1)
{
  v1 = a1[41];
  if (v1)
  {
    if (v1 >= 1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        NoteTrackReferenceChange(a1, *(a1[43] + v3), *(a1[43] + v3 + 4), *(a1[43] + v3 + 8));
        ++v4;
        v3 += 12;
      }

      while (v4 < a1[41]);
    }

    a1[41] = 0;
  }

  return 0;
}

uint64_t EnsureTrackReferenceArrayCapacityForAddition(void *a1)
{
  v3 = a1[41];
  if (v3 != a1[42])
  {
    return 0;
  }

  v13 = v1;
  v14 = v2;
  v5 = a1[43];
  if (v5)
  {
    v6 = v3 + 4;
    v7 = malloc_type_realloc(v5, 12 * (v3 + 4), 0x10000403E1C8BA9uLL);
    if (v7)
    {
      v8 = v7;
      result = 0;
      a1[42] = v6;
      a1[43] = v8;
    }

    else
    {
      EnsureTrackReferenceArrayCapacityForAddition_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    *(a1 + 41) = xmmword_196E78890;
    v10 = malloc_type_malloc(0x60uLL, 0x10000403E1C8BA9uLL);
    a1[43] = v10;
    if (v10)
    {
      return 0;
    }

    else
    {
      EnsureTrackReferenceArrayCapacityForAddition_cold_2(&v12);
      return v12;
    }
  }

  return result;
}

uint64_t NewTrackAlternateGroupAssignment(void *a1, void *a2)
{
  v4 = a1[44];
  if (v4 != a1[45])
  {
    goto LABEL_6;
  }

  v5 = a1[46];
  if (v5)
  {
    v6 = v4 + 5;
    v7 = malloc_type_realloc(v5, 8 * (v4 + 5), 0x1000040789AEA99uLL);
    if (v7)
    {
      a1[45] = v6;
      a1[46] = v7;
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 22) = xmmword_196E77360;
    v8 = malloc_type_malloc(0x50uLL, 0x1000040789AEA99uLL);
    a1[46] = v8;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  if (!NewTrackAlternateGroupAssignment_cold_1())
  {
    return v11;
  }

LABEL_6:
  result = 0;
  *(a1[46] + 8 * a1[44]) = 0;
  v10 = a1[44];
  *a2 = a1[46] + 8 * v10;
  a1[44] = v10 + 1;
  return result;
}

uint64_t MovieInformationRemoveOneAlternateGroupAssignment(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 352);
  if (v2 >= 1)
  {
    v4 = *(a1 + 368);
    v5 = 8 * v2 - 8;
    v6 = v2;
    while (*v4 != *(a2 + 144))
    {
      v5 -= 8;
      v4 += 2;
      if (!--v6)
      {
        return 0;
      }
    }

    if (v6 != 1)
    {
      memmove(v4, v4 + 2, v5);
      v2 = *(a1 + 352);
    }

    *(a1 + 352) = v2 - 1;
  }

  return 0;
}

uint64_t MovieInformationGetTrackAlternateGroupID(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 352);
  if (v2 < 1)
  {
    LOWORD(v2) = 0;
  }

  else
  {
    for (i = (*(a1 + 368) + 4); *(a2 + 144) != *(i - 1); i += 4)
    {
      if (!--v2)
      {
        return v2;
      }
    }

    LOWORD(v2) = *i;
  }

  return v2;
}

uint64_t MovieInformationSetTrackAlternateGroupID(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  *(a2 + 150) = a3;
  v4 = *(a2 + 16);
  *(a2 + 740) = 0;
  *(a2 + 738) = 0;
  *(a2 + 16) = v4 | 0xC00000;
  MovieInformationEffectTrackAlternateGroupAssignment(a1, a2, a3);
  *(a2 + 16) |= 0x1000uLL;
  return 0;
}

uint64_t MovieInformationEffectTrackAlternateGroupAssignment(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v3 = *(a1 + 352);
  if (v3 >= 1)
  {
    for (i = (*(a1 + 368) + 4); *(i - 1) != *(a2 + 144); i += 4)
    {
      if (!--v3)
      {
        return 0;
      }
    }

    if (*i != a3)
    {
      *i = a3;
      *(a2 + 16) |= 0x1000uLL;
    }
  }

  return 0;
}

void MovieInformationEvaluateTrackAlternateGroupAssignment(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 352);
  if (v4 < 1)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v5 = (*(a1 + 368) + 4);
    while (*(a2 + 144) != *(v5 - 1))
    {
      v5 += 4;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
  }

  v7 = *(a2 + 150);
  if (*(a2 + 740))
  {
    v8 = *(a2 + 738);
    v9 = MovieTrackCopyFormatDescriptionArray(a2);
    if (v9)
    {
      v10 = v9;
      Count = CFArrayGetCount(v9);
      v12 = v8;
      if (Count >= 1)
      {
        v13 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
        v12 = v7;
        if (CMFormatDescriptionGetMediaType(ValueAtIndex) == 1952807028)
        {
          v15 = 1;
          v16 = 1;
          do
          {
            MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
            if (MediaSubType != 1937142900 && MediaSubType != 2021028980 && MediaSubType != 2004251764)
            {
              break;
            }

            if (!FigValidateRequiredFeaturesOfFormatDescription(ValueAtIndex))
            {
              break;
            }

            v16 = v15 < v13;
            if (v13 == v15)
            {
              break;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(v10, v15++);
          }

          while (CMFormatDescriptionGetMediaType(ValueAtIndex) == 1952807028);
          if (v16)
          {
            v12 = v7;
          }

          else
          {
            v12 = v8;
          }
        }
      }

      CFRelease(v10);
      v7 = v12;
    }

    else
    {
      v7 = v8;
    }
  }

  if (v7 != v6)
  {
    MovieInformationEffectTrackAlternateGroupAssignment(a1, a2, v7);
    *(a2 + 16) |= 0x1000uLL;
  }
}

uint64_t MovieInformationAddNewPerTrackInfo(void *a1, _BYTE *cf)
{
  if (cf[920])
  {
    MovieInformationAddNewPerTrackInfo_cold_1(&v13);
    return v13;
  }

  v4 = a1[38];
  if (v4 == a1[39])
  {
    v5 = a1[40];
    if (v5)
    {
      v6 = v4 + 4;
      v7 = malloc_type_realloc(v5, 8 * (v4 + 4), 0x2004093837F09uLL);
      if (!v7)
      {
        MovieInformationAddNewPerTrackInfo_cold_2(&v14);
        return v14;
      }

      a1[39] = v6;
      a1[40] = v7;
    }

    else
    {
      *(a1 + 19) = xmmword_196E78890;
      v8 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
      a1[40] = v8;
      if (!v8)
      {
        MovieInformationAddNewPerTrackInfo_cold_3(&v15);
        return v15;
      }
    }
  }

  v9 = CFRetain(cf);
  v10 = a1[38];
  *(a1[40] + 8 * v10) = v9;
  a1[38] = v10 + 1;
  v11 = a1[8];
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  *(cf + 80) = v11;
  if (!a1[4])
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRegisterForBarrierSupport();
  result = 0;
  cf[921] = 1;
  return result;
}

void MovieTrackEvaluateParsedLanguageCode(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695E480];
  StringForLanguageCode = FigCreateStringForLanguageCode(*MEMORY[0x1E695E480], *(a1 + 716), a2);
  MovieTrackSetLanguageCodeString(a1, StringForLanguageCode);
  if (StringForLanguageCode)
  {
    CFRelease(StringForLanguageCode);
  }

  if (!*(a1 + 848))
  {
    v5 = *(a1 + 716);
    if (v5 <= 0x38)
    {
      if (*(a1 + 716) > 0x30u)
      {
        if (v5 == 49)
        {
          v6 = "az-Cyrl";
        }

        else
        {
          if (v5 != 50)
          {
            return;
          }

          v6 = "az-Arab";
        }
      }

      else if (v5 == 19)
      {
        v6 = "zh-Hant";
      }

      else
      {
        if (v5 != 33)
        {
          return;
        }

        v6 = "zh-Hans";
      }
    }

    else if (*(a1 + 716) <= 0x53u)
    {
      if (v5 == 57)
      {
        v6 = "mn-Mong";
      }

      else
      {
        if (v5 != 58)
        {
          return;
        }

        v6 = "mn";
      }
    }

    else
    {
      switch(v5)
      {
        case 0x54u:
          v6 = "ms-Arab";
          break;
        case 0x92u:
          v6 = "ga-Latg";
          break;
        case 0x96u:
          v6 = "az";
          break;
        default:
          return;
      }
    }

    v7 = CFStringCreateWithCStringNoCopy(v3, v6, 0x600u, *MEMORY[0x1E695E498]);
    if (v7)
    {
      *(a1 + 848) = v7;
    }
  }
}

void MovieInformationCreateiTunesMetadataReader(void *a1, CFTypeRef *a2)
{
  v4 = a1[47];
  if (v4 && (Value = CFDictionaryGetValue(v4, @"com.apple.itunes")) != 0)
  {
    v6 = Value;
    v7 = *MEMORY[0x1E695E480];

    FigMetadataReaderCreateForiTunesMetadataArray(v7, v6, a2);
  }

  else
  {

    MovieInformationCreateiTunesMetadataReaderFromByteStream(a1, a2);
  }
}

uint64_t MovieTrackInvalidateEnhancedGaplessInfo(uint64_t result)
{
  if (*(result + 24) == 1936684398)
  {
    v2 = result;
    FigSimpleMutexLock();
    v3 = *(v2 + 832);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 832) = 0;
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t MovieTrackCreate(uint64_t *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (sRegisterMoviePerTrackInfoTypeOnce != -1)
  {
    MovieTrackCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = FigReentrantMutexCreate();
    *(Instance + 32) = v4;
    if (v4)
    {
      v5 = (Current + *MEMORY[0x1E695E460]);
      *(Instance + 200) = 1;
      *(Instance + 184) = 1065353216;
      *(Instance + 152) = kIdentityMatrix_0;
      *(Instance + 168) = unk_196E788D0;
      *(Instance + 120) = v5;
      *(Instance + 128) = v5;
      *(Instance + 196) = 1065353216;
      *(Instance + 232) = 0;
      *(Instance + 208) = v5;
      *(Instance + 216) = v5;
      *(Instance + 88) = xmmword_196E788A0;
      *(Instance + 104) = 0x8000000000000000;
      *(Instance + 112) = 0;
      *(Instance + 296) = 0x80000000;
      *(Instance + 304) = 0x8000000000000000;
      v6 = CFRetain(@"und");
      *(Instance + 856) = v6;
      v7 = 0;
      *(Instance + 236) = FigGetISOLanguageCodeForString(v6);
      *(Instance + 584) = GetNumSamples_stsz;
      *(Instance + 592) = GetSampleSize_stsz;
      *(Instance + 600) = GetSampleSizeFieldSize_stsz;
      *(Instance + 608) = GetSizeTable_stsz;
      *(Instance + 616) = GetChunkOffset_stco;
      *(Instance + 624) = GetChunkCount_stco;
      *(Instance + 632) = GetChunkTable_stco;
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12[1]);
      v7 = v9;
      if (v9)
      {
        CFRelease(Instance);
        Instance = 0;
      }
    }
  }

  else
  {
    MovieTrackCreate_cold_2(v12);
    v7 = v12[0];
  }

  *a1 = Instance;
  return v7;
}

uint64_t MovieInformationGetBasicMetrics(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  if (a2)
  {
    *a2 = *(a1 + 244);
  }

  if (a3)
  {
    *a3 = *(a1 + 248);
  }

  if (a4)
  {
    *a4 = *(a1 + 240);
  }

  if (a5)
  {
    v5 = *(a1 + 256);
    v6 = *(a1 + 272);
    *(a5 + 32) = *(a1 + 288);
    *a5 = v5;
    *(a5 + 16) = v6;
  }

  return 0;
}

uint64_t MovieInformationGetTimeInfo(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 216);
  }

  if (a3)
  {
    *a3 = *(a1 + 224);
  }

  return 0;
}

uint64_t MovieInformationGetMoovLocation(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 96);
  }

  if (a3)
  {
    *a3 = *(a1 + 104);
  }

  return 0;
}

double MovieInformationGetMovieDuration@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  CMTimeMake(a2, *(a1 + 232), *(a1 + 240));
  if (*(a1 + 157))
  {
    MovieDurationWithFragmentContribution(a1, &v5);
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t MovieInformationMetadataFormatIsAvailable(void *a1, CFTypeRef cf1)
{
  v4 = @"com.apple.quicktime.udta";
  if (CFEqual(cf1, @"com.apple.quicktime.udta"))
  {
    v5 = a1[14];
  }

  else
  {
    v4 = @"org.mp4ra";
    if (CFEqual(cf1, @"org.mp4ra"))
    {
      v5 = a1[15];
    }

    else
    {
      v4 = @"com.apple.quicktime.mdta";
      if (CFEqual(cf1, @"com.apple.quicktime.mdta"))
      {
        v5 = a1[16];
      }

      else
      {
        v4 = @"com.apple.itunes";
        result = CFEqual(cf1, @"com.apple.itunes");
        if (!result)
        {
          return result;
        }

        v5 = a1[17];
      }
    }
  }

  if (v5 > 0)
  {
    return 1;
  }

  result = a1[47];
  if (result)
  {
    return CFDictionaryGetValue(result, v4) != 0;
  }

  return result;
}

const __CFDictionary *MovieInformationGetMovieMetadataItemArray(uint64_t a1, const void *a2)
{
  result = *(a1 + 376);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

void MovieInformationCreateQuickTimeUserDataReader(void *a1, CFTypeRef *a2)
{
  v4 = a1[47];
  if (v4 && (Value = CFDictionaryGetValue(v4, @"com.apple.quicktime.udta")) != 0)
  {
    v6 = Value;
    v7 = *MEMORY[0x1E695E480];

    FigMetadataReaderCreateForQuickTimeUserDataArray(v7, v6, a2);
  }

  else
  {

    MovieInformationCreateQuickTimeUserDataReaderFromByteStream(a1, a2);
  }
}

void MovieInformationCreateQuickTimeUserDataReaderFromByteStream(void *a1, void *a2)
{
  if (a1[14] < 1)
  {
    *a2 = 0;
  }

  else
  {
    v4 = CFGetAllocator(a1);
    v5 = a1[7];
    v6 = a1[14];

    FigMetadataReaderCreateForQuickTimeUserData(v4, v5, v6, a2);
  }
}

void MovieInformationCreateISOUserDataReader(uint64_t *a1, CFTypeRef *a2)
{
  v4 = a1[47];
  if (v4 && (Value = CFDictionaryGetValue(v4, @"org.mp4ra")) != 0)
  {
    v6 = Value;
    v7 = *MEMORY[0x1E695E480];

    FigMetadataReaderCreateForISOUserDataArray(v7, v6, a2);
  }

  else
  {

    MovieInformationCreateISOUserDataReaderFromByteStream(a1, a2);
  }
}

void MovieInformationCreateISOUserDataReaderFromByteStream(uint64_t *a1, void *a2)
{
  if (a1[15] < 1)
  {
    *a2 = 0;
  }

  else
  {
    v4 = CFGetAllocator(a1);
    v5 = a1[7];
    v6 = a1[15];

    FigMetadataReaderCreateForISOUserData(v4, v5, v6, a2);
  }
}

void MovieInformationCreateQuickTimeMetadataReader(void *a1, CFTypeRef *a2)
{
  v4 = a1[47];
  if (v4 && (Value = CFDictionaryGetValue(v4, @"com.apple.quicktime.mdta")) != 0)
  {
    v6 = Value;
    v7 = *MEMORY[0x1E695E480];

    FigMetadataReaderCreateForQuickTimeMetadataArray(v7, v6, a2);
  }

  else
  {

    MovieInformationCreateQuickTimeMetadataReaderFromByteStream(a1, a2);
  }
}

void MovieInformationCreateQuickTimeMetadataReaderFromByteStream(void *a1, CFTypeRef *a2)
{
  if (a1[16] < 1)
  {
    *a2 = 0;
  }

  else
  {
    v4 = CFGetAllocator(a1);
    v5 = a1[7];
    v6 = a1[16];

    FigMetadataReaderCreateForQuickTimeMetadata(v4, v5, v6, a2);
  }
}

void MovieInformationCreateiTunesMetadataReaderFromByteStream(void *a1, CFTypeRef *a2)
{
  if (a1[17] < 1)
  {
    *a2 = 0;
  }

  else
  {
    v4 = CFGetAllocator(a1);
    v5 = a1[7];
    v6 = a1[17];

    FigMetadataReaderCreateForiTunes(v4, v5, v6, a2);
  }
}

void MovieTrackCreateQuickTimeUserDataReader(uint64_t a1, uint64_t *cf, CFTypeRef *a3)
{
  v6 = cf[111];
  if (v6 && (Value = CFDictionaryGetValue(v6, @"com.apple.quicktime.udta")) != 0)
  {
    v8 = Value;
    v9 = *MEMORY[0x1E695E480];

    FigMetadataReaderCreateForQuickTimeUserDataArray(v9, v8, a3);
  }

  else
  {

    MovieTrackCreateQuickTimeUserDataReaderFromByteStream(a1, cf, a3);
  }
}

uint64_t MovieTrackSetTrackMetadataItemArray(int a1, uint64_t a2, void *key, void *value)
{
  Mutable = *(a2 + 888);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a2 + 888) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
  result = FigCFEqual();
  if (result)
  {
    v9 = 8;
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      v9 = 32;
    }

    else
    {
      result = FigCFEqual();
      v9 = 16 * (result != 0);
    }
  }

  *(a2 + 16) |= v9;
  return result;
}

void MovieTrackCreateISOUserDataReader(uint64_t a1, uint64_t *cf, CFTypeRef *a3)
{
  v6 = cf[111];
  if (v6 && (Value = CFDictionaryGetValue(v6, @"org.mp4ra")) != 0)
  {
    v8 = Value;
    v9 = *MEMORY[0x1E695E480];

    FigMetadataReaderCreateForISOUserDataArray(v9, v8, a3);
  }

  else
  {

    MovieTrackCreateISOUserDataReaderFromByteStream(a1, cf, a3);
  }
}

void AddOneDiscoveredUUIDBox(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *&v22 = a2;
  *(&v22 + 1) = a3;
  if (!a5)
  {
    return;
  }

  v11 = *a1;
  if (*a1 < 1)
  {
LABEL_10:
    if (v11 == a1[1])
    {
      v15 = a1[2];
      if (v15)
      {
        v16 = v11 + 4;
        v17 = malloc_type_realloc(v15, 40 * (v11 + 4), 0x10000407A37F5ACuLL);
        if (v17)
        {
          a1[1] = v16;
          a1[2] = v17;
          goto LABEL_19;
        }
      }

      else
      {
        *a1 = xmmword_196E788B0;
        v19 = malloc_type_malloc(0xA0uLL, 0x10000407A37F5ACuLL);
        a1[2] = v19;
        if (v19)
        {
          goto LABEL_19;
        }
      }

      if (!NewTrackAlternateGroupAssignment_cold_1())
      {
        return;
      }
    }

LABEL_19:
    v20 = 5 * *a1;
    *(a1[2] + 40 * *a1) = v22;
    v21 = a1[2] + 8 * v20;
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    *(v21 + 32) = a6;
    ++*a1;
    return;
  }

  v12 = a1[2];
  v13 = *a1;
  while (*(v12 + 32) != a6 || *v12 != a2 || *(v12 + 8) != a3)
  {
    v12 += 40;
    if (!--v13)
    {
      goto LABEL_10;
    }
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFR_Movie >>>", 9290, v6);
}

uint64_t MovieTrackMetadataFormatIsAvailable(int a1, void *a2, CFTypeRef cf1)
{
  v5 = @"com.apple.quicktime.udta";
  if (CFEqual(cf1, @"com.apple.quicktime.udta"))
  {
    v6 = a2[84];
  }

  else
  {
    v5 = @"org.mp4ra";
    if (CFEqual(cf1, @"org.mp4ra"))
    {
      v6 = a2[85];
    }

    else
    {
      v5 = @"com.apple.quicktime.mdta";
      result = CFEqual(cf1, @"com.apple.quicktime.mdta");
      if (!result)
      {
        return result;
      }

      v6 = a2[86];
    }
  }

  if (v6 > 0)
  {
    return 1;
  }

  result = a2[111];
  if (result)
  {
    return CFDictionaryGetValue(result, v5) != 0;
  }

  return result;
}

const __CFDictionary *MovieTrackGetTrackMetadataItemArray(uint64_t a1, const void *a2)
{
  result = *(a1 + 888);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

void MovieTrackCreateQuickTimeUserDataReaderFromByteStream(uint64_t a1, uint64_t *cf, void *a3)
{
  if (cf[84] < 1)
  {
    *a3 = 0;
  }

  else
  {
    v6 = CFGetAllocator(cf);
    v7 = *(a1 + 56);
    v8 = cf[84];

    FigMetadataReaderCreateForQuickTimeUserData(v6, v7, v8, a3);
  }
}

void MovieTrackCreateISOUserDataReaderFromByteStream(uint64_t a1, uint64_t *cf, void *a3)
{
  if (cf[85] < 1)
  {
    *a3 = 0;
  }

  else
  {
    v6 = CFGetAllocator(cf);
    v7 = *(a1 + 56);
    v8 = cf[85];

    FigMetadataReaderCreateForISOUserData(v6, v7, v8, a3);
  }
}

void MovieTrackCreateQuickTimeMetadataReader(uint64_t a1, unint64_t *cf, CFTypeRef *a3)
{
  v6 = cf[111];
  if (v6 && (Value = CFDictionaryGetValue(v6, @"com.apple.quicktime.mdta")) != 0)
  {
    v8 = Value;
    v9 = *MEMORY[0x1E695E480];

    FigMetadataReaderCreateForQuickTimeMetadataArray(v9, v8, a3);
  }

  else
  {

    MovieTrackCreateQuickTimeMetadataReaderFromByteStream(a1, cf, a3);
  }
}

void MovieTrackCreateQuickTimeMetadataReaderFromByteStream(uint64_t a1, unint64_t *cf, CFTypeRef *a3)
{
  if (cf[86] < 1)
  {
    *a3 = 0;
  }

  else
  {
    v6 = CFGetAllocator(cf);
    v7 = *(a1 + 56);
    v8 = cf[86];

    FigMetadataReaderCreateForQuickTimeMetadata(v6, v7, v8, a3);
  }
}

uint64_t MovieInformationCreateTrackReferenceDictionary(const __CFAllocator *a1, uint64_t a2, CFDictionaryRef *a3)
{
  v4 = *(a2 + 328);
  if (v4)
  {
    valuePtr = 0;
    v6 = malloc_type_malloc(8 * v4, 0x6004044C4A2DFuLL);
    if (v6)
    {
      v7 = malloc_type_malloc(8 * *(a2 + 328), 0x6004044C4A2DFuLL);
      if (v7)
      {
        v8 = malloc_type_malloc(16 * *(a2 + 328), 0x6004044C4A2DFuLL);
        if (v8)
        {
          v9 = v8;
          if (*(a2 + 328) >= 1)
          {
            valuesa = v7;
            v35 = v6;
            v32 = a3;
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = *MEMORY[0x1E695E480];
            do
            {
              v16 = *(a2 + 344);
              if (*(v16 + 12 * v14) != v13)
              {
                if (v10)
                {
                  v35[v12] = CopyKeyStringForTrackReferenceOSType(a1, v13);
                  valuesa[v12++] = CFArrayCreate(a1, v9, v11, MEMORY[0x1E695E9C0]);
                  if (v11 < 1)
                  {
                    v11 = 0;
                  }

                  else
                  {
                    v17 = v9;
                    do
                    {
                      if (*v17)
                      {
                        CFRelease(*v17);
                      }

                      ++v17;
                      --v11;
                    }

                    while (v11);
                  }
                }

                v10 = 0;
                v16 = *(a2 + 344);
                v13 = *(v16 + 12 * v14);
              }

              v18 = v16 + 12 * v14;
              HIDWORD(valuePtr) = *(v18 + 4);
              v19 = *(v18 + 8);
              LODWORD(valuePtr) = v19;
              if (HIDWORD(valuePtr))
              {
                v20 = v19 == 0;
              }

              else
              {
                v20 = 1;
              }

              if (!v20)
              {
                v21 = &v9[v11];
                *v21 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr + 4);
                v11 += 2;
                v21[1] = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
                ++v10;
              }

              ++v14;
            }

            while (v14 < *(a2 + 328));
            if (!v10)
            {
              a3 = v32;
              v7 = valuesa;
              v6 = v35;
              goto LABEL_32;
            }

            v6 = v35;
            v35[v12] = CopyKeyStringForTrackReferenceOSType(a1, v13);
            v7 = valuesa;
            valuesa[v12++] = CFArrayCreate(a1, v9, v11, MEMORY[0x1E695E9C0]);
            if (v11 >= 1)
            {
              v22 = v9;
              a3 = v32;
              do
              {
                if (*v22)
                {
                  CFRelease(*v22);
                }

                ++v22;
                --v11;
              }

              while (v11);
LABEL_32:
              if (v12)
              {
LABEL_33:
                v24 = CFDictionaryCreate(a1, v6, v7, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v12 >= 1)
                {
                  for (i = 0; i != v12; ++i)
                  {
                    v26 = v6[i];
                    if (v26)
                    {
                      CFRelease(v26);
                    }

                    v27 = v7[i];
                    if (v27)
                    {
                      CFRelease(v27);
                    }
                  }
                }

                v23 = 0;
                goto LABEL_43;
              }

              goto LABEL_42;
            }

            a3 = v32;
            if (v12)
            {
              goto LABEL_33;
            }
          }

LABEL_42:
          v23 = 0;
          v24 = 0;
LABEL_43:
          free(v6);
          free(v7);
          free(v9);
          goto LABEL_44;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, values);
    v23 = v29;
    v24 = 0;
    v9 = 0;
    goto LABEL_43;
  }

  v23 = 0;
  v24 = 0;
LABEL_44:
  *a3 = v24;
  return v23;
}

CFDictionaryRef MovieInformationCreateQTLoadSettingsDictionary(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  keys[0] = @"DefaultHints";
  keys[1] = @"PreloadFlags";
  keys[2] = @"PreloadStart";
  keys[3] = @"PreloadDuration";
  if (!*(a3 + 880))
  {
    return 0;
  }

  v6 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a3 + 876));
  if (values)
  {
    v16 = CFNumberCreate(v6, kCFNumberSInt32Type, (a3 + 872));
    if (v16)
    {
      v7 = *(a3 + 864);
      if (v7 == -1)
      {
        v8 = 2;
        goto LABEL_10;
      }

      CMTimeMake(&v13, v7, *(a2 + 240));
      v17 = CMTimeCopyAsDictionary(&v13, a1);
      if (v17)
      {
        CMTimeMake(&v13, *(a3 + 868), *(a2 + 240));
        v18 = CMTimeCopyAsDictionary(&v13, a1);
        if (v18)
        {
          v8 = 4;
LABEL_10:
          v9 = CFDictionaryCreate(a1, keys, &values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          goto LABEL_11;
        }

        MovieInformationCreateQTLoadSettingsDictionary_cold_1();
      }

      else
      {
        MovieInformationCreateQTLoadSettingsDictionary_cold_2();
      }
    }

    else
    {
      MovieInformationCreateQTLoadSettingsDictionary_cold_3();
    }
  }

  else
  {
    MovieInformationCreateQTLoadSettingsDictionary_cold_4();
  }

  v9 = 0;
LABEL_11:
  for (i = 0; i != 32; i += 8)
  {
    v11 = *(&values + i);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  return v9;
}

__CFArray *MovieInformationCreateAlternateGroupArray(const __CFAllocator *a1, void *a2, int a3)
{
  v3 = a2[44];
  if (v3 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = (a2[46] + 4);
  v9 = a2[44];
  do
  {
    v10 = *v8;
    v8 += 4;
    if (v10)
    {
      v7 = 1;
    }

    --v9;
  }

  while (v9);
  if (!v7)
  {
    return 0;
  }

  v11 = malloc_type_malloc(16 * v3, 0x10200400CC4F872uLL);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  valuePtr = 0;
  v13 = a2[44];
  if (v13 <= 0)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_32;
  }

  v14 = 0;
  v15 = 0;
  v16 = *MEMORY[0x1E695E480];
  v17 = MEMORY[0x1E695E9C0];
  do
  {
    v18 = a2[46];
    v19 = (v18 + 8 * v15);
    v20 = *(v19 + 2);
    if (!*(v19 + 2))
    {
      goto LABEL_25;
    }

    if (a3)
    {
      v21 = a2[38];
      if (v21 < 1)
      {
        goto LABEL_25;
      }

      v22 = *v19;
      v23 = a2[40];
      while (*(*v23 + 144) != v22)
      {
        v23 += 8;
        if (!--v21)
        {
          goto LABEL_25;
        }
      }
    }

    if (v14 < 1)
    {
      v24 = 0;
LABEL_23:
      ++v14;
      v27 = &v12[2 * v24];
      *v27 = v20;
      *(v27 + 1) = CFArrayCreateMutable(a1, 0, v17);
      v18 = a2[46];
    }

    else
    {
      v24 = 0;
      v25 = v12;
      while (1)
      {
        v26 = *v25;
        v25 += 2;
        if (v26 == v20)
        {
          break;
        }

        if (v14 == ++v24)
        {
          v24 = v14;
          goto LABEL_23;
        }
      }
    }

    valuePtr = *(v18 + 8 * v15);
    v28 = CFNumberCreate(v16, kCFNumberSInt32Type, &valuePtr);
    CFArrayAppendValue(v12[2 * v24 + 1], v28);
    CFRelease(v28);
    v13 = a2[44];
LABEL_25:
    ++v15;
  }

  while (v15 < v13);
  Mutable = CFArrayCreateMutable(a1, v14, MEMORY[0x1E695E9C0]);
  if (v14 >= 1)
  {
    v30 = v12 + 1;
    do
    {
      CFArrayAppendValue(Mutable, *v30);
      v31 = *v30;
      v30 += 2;
      CFRelease(v31);
      --v14;
    }

    while (v14);
  }

LABEL_32:
  free(v12);
  return Mutable;
}

uint64_t MovieInformationSetByteStream(uint64_t a1, const void *a2)
{
  number = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *MEMORY[0x1E695FF78];
  v16 = 0;
  result = v5(CMBaseObject, v6, 0, &number);
  if (!result)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &v16);
    CFRelease(number);
    v8 = *(a1 + 48);
    *(a1 + 48) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    *(a1 + 72) = v16;
    number = 0;
    v9 = CMByteStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v11 = v10(v9, *MEMORY[0x1E695FFA0], 0, &number);
      v12 = number;
      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = number == 0;
      }

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = CFURLCopyPathExtension(number);
        IsISOExtension = FigCFStringIsISOExtension(v14);
        *(a1 + 84) = IsISOExtension;
        if (v14 && CFStringCompare(@"aax", v14, 1uLL) == kCFCompareEqualTo)
        {
          *(a1 + 152) = 1;
        }

        *(a1 + 208) = FigCFStringIsHEIFExtension(v14);
        v12 = number;
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    return 0;
  }

  return result;
}

uint64_t MovieInformationCheckForMovieTimescaleAnomaly_7135294(uint64_t result)
{
  v1 = *(result + 320);
  if (!v1)
  {
    return result;
  }

  v2 = *(result + 304);
  if (v2 < 1)
  {
    return result;
  }

  v3 = *v1;
  if (*(result + 81))
  {
    if (v2 != 1 || *(result + 82) != 0)
    {
      return result;
    }
  }

  else if (v2 != 1 || *(result + 84) == 0)
  {
    return result;
  }

  if (*(v3 + 24) == 1936684398 && !*(v3 + 722))
  {
    v6 = *(v3 + 728);
    if ((!v6 || !*(v6 + 56)) && *(result + 240) == 600)
    {
      v7 = *(v3 + 232);
      if (v7 != 600)
      {
        v8 = *(v3 + 136);
        if (v8 == *(v3 + 224) && v8 == *(result + 232))
        {
          *(result + 240) = v7;
        }
      }
    }
  }

  return result;
}

uint64_t MovieInformationSetParsedCreateAndModTimes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 216) = a2;
  *(a1 + 224) = a3;
  return 0;
}

uint64_t MovieInformationSetParsedMovieDuration(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 232) = a2;
  *(a1 + 240) = a3;
  return 0;
}

uint64_t MovieInformationSetMovieTimeScale(uint64_t a1, int a2)
{
  if (*(a1 + 232))
  {
    v7 = v2;
    v8 = v3;
    MovieInformationSetMovieTimeScale_cold_1(&v6);
    return v6;
  }

  else
  {
    result = 0;
    *(a1 + 240) = a2;
    *(a1 + 40) |= 0x8000uLL;
  }

  return result;
}

uint64_t MovieInformationSetPreferredRate(uint64_t a1, float a2)
{
  *(a1 + 244) = a2;
  *(a1 + 40) |= 0x200uLL;
  return 0;
}

uint64_t MovieInformationSetPreferredVolume(uint64_t a1, float a2)
{
  *(a1 + 248) = a2;
  *(a1 + 40) |= 0x400uLL;
  return 0;
}

uint64_t MovieInformationSetMovieMatrix(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    v3 = *(a2 + 16);
    *(a1 + 288) = *(a2 + 32);
  }

  else
  {
    *(a1 + 288) = 1065353216;
    v2 = kIdentityMatrix_0;
    v3 = unk_196E788D0;
  }

  *(a1 + 256) = v2;
  *(a1 + 272) = v3;
  *(a1 + 40) |= 0x800uLL;
  return 0;
}

uint64_t MovieInformationSetPSSHDataEntries(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 384);
  *(a1 + 384) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 40) |= 0x20000uLL;
  return 0;
}

uint64_t MovieInformationAllTracksAreSelfContained(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1 < 1)
  {
    return 1;
  }

  for (i = 0; i < v1; ++i)
  {
    if (*(a1 + 304) <= i)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(*(a1 + 320) + 8 * i);
    }

    result = MovieTrackIsSelfContained(v4);
    if (!result)
    {
      break;
    }
  }

  return result;
}

uint64_t MovieInformationCreateTrack(uint64_t a1, int a2, int a3, int *a4, void *a5)
{
  cf = 0;
  if (*(a1 + 252) <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = *(a1 + 252);
  }

  *(a1 + 252) = v9 + 1;
  v10 = MovieTrackCreate(&cf);
  if (v10)
  {
    v16 = v10;
    v11 = cf;
    if (!cf)
    {
      return v16;
    }

LABEL_17:
    CFRelease(v11);
    return v16;
  }

  v11 = cf;
  v12 = 0.0;
  if (a2 == 1936684398)
  {
    v12 = 1.0;
  }

  *(cf + 49) = v12;
  v11[6] = a2;
  v11[36] = v9;
  v13 = MovieInformationAddNewPerTrackInfo(a1, v11);
  if (v13 || (v13 = MovieInformationAddOneAlternateGroupAssignment(a1, v11, 0), v13))
  {
    v16 = v13;
    goto LABEL_17;
  }

  v14 = *(a1 + 32);
  *(a1 + 40) |= 0x2002uLL;
  if (v14)
  {
    values = v11;
    v15 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kMovieInformationPayloadKey_TrackInfo, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDeferNotificationToDispatchQueue();
    if (v15)
    {
      CFRelease(v15);
    }
  }

  *a5 = v11;
  v16 = 0;
  if (a4)
  {
    *a4 = v9;
  }

  return v16;
}

void MovieInformationRemoveTrack(uint64_t *a1, uint64_t a2)
{
  v27 = 0;
  v3 = a1[38];
  v4 = v3 - 1;
  if (v3 < 1)
  {
LABEL_5:
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFR_Movie >>>", 10165, v2);
  }

  else
  {
    v7 = a1[40];
    v8 = 8 * v3 - 8;
    while (*v7 != a2)
    {
      v8 -= 8;
      ++v7;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    if (v3 != 1)
    {
      memmove(v7, v7 + 1, v8);
      v4 = a1[38] - 1;
    }

    a1[38] = v4;
    if (!MovieTrackGetBasicInfo(a2, 0, &v27))
    {
      v10 = a1[44];
      if (v10 < 1)
      {
        goto LABEL_18;
      }

      v11 = (a1[46] + 4);
      while (*(a2 + 144) != *(v11 - 1))
      {
        v11 += 4;
        if (!--v10)
        {
          goto LABEL_18;
        }
      }

      if (*v11)
      {
        v12 = 132;
      }

      else
      {
LABEL_18:
        v12 = 4;
      }

      MovieInformationRemoveOneAlternateGroupAssignment(a1, a2);
      if (*(a2 + 200))
      {
        v12 |= 0x2000uLL;
      }

      v13 = a1[41];
      if (v13 >= 1)
      {
        for (i = 0; i < v13; ++i)
        {
          v15 = (a1[43] + 12 * i);
          v16 = v15[1];
          v17 = v15[2];
          if (v16 != v27)
          {
            v18 = v17 == v27;
            v17 = v27;
            if (!v18)
            {
              continue;
            }
          }

          NoteTrackReferenceChange(a1, *v15, v16, v17);
          v19 = a1[41];
          if (v19 + ~i)
          {
            memmove((a1[43] + 12 * i), (a1[43] + 12 * i + 12), 12 * (v19 + ~i));
            v19 = a1[41];
          }

          v13 = v19 - 1;
          a1[41] = v13;
          --i;
        }
      }

      v20 = a1[38];
      if (v20 < 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        v22 = a1[40];
        do
        {
          v23 = *v22++;
          v24 = *(v23 + 136);
          if (v24 > v21)
          {
            v21 = v24;
          }

          --v20;
        }

        while (v20);
      }

      if (a1[29] == v21)
      {
        v25 = a1[5];
      }

      else
      {
        a1[29] = v21;
        v25 = a1[5] | 1;
      }

      *(a2 + 920) = 1;
      a1[5] = v25 | v12;
      if (a1[4])
      {
        values = a2;
        v26 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kMovieInformationPayloadKey_TrackInfo, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CMNotificationCenterGetDefaultLocalCenter();
        FigDeferNotificationToDispatchQueue();
        if (v26)
        {
          CFRelease(v26);
        }
      }
    }

    CFRelease(a2);
  }
}

uint64_t MovieSampleTableGetSampleCountAtIndex(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 416), 8 * a2, 8uLL, &destination);
  return bswap32(destination);
}

uint64_t MovieSampleTableGetSampleToChunkFirstChunk(uint64_t a1, int a2)
{
  v4 = 0;
  v3 = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 440), 12 * a2, 0xCuLL, &v3);
  return bswap32(v3);
}

uint64_t MovieSampleTableGetSampleToChunkSamplesPerChunk(uint64_t a1, int a2)
{
  v4 = 0;
  v3 = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 440), 12 * a2, 0xCuLL, &v3);
  return bswap32(HIDWORD(v3));
}

uint64_t MovieSampleTableGetSampleToChunkSampleDescriptionID(uint64_t a1, int a2)
{
  v4 = 0;
  v3 = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 440), 12 * a2, 0xCuLL, &v3);
  return bswap32(v4);
}

uint64_t MovieSampleTableSet_stsz(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  *(a1 + 312) = a2;
  *(a1 + 316) = a3;
  v7 = *(a1 + 320);
  *(a1 + 320) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 584) = GetNumSamples_stsz;
  *(a1 + 600) = GetSampleSizeFieldSize_stsz;
  *(a1 + 608) = GetSizeTable_stsz;
  *(a1 + 592) = GetSampleSize_stsz;
  *(a1 + 292) = a3;
  *(a1 + 288) = a2;
  return 0;
}

uint64_t GetSampleSize_stsz(uint64_t a1, int a2)
{
  result = *(a1 + 316);
  destination = result;
  if (!result)
  {
    CMBlockBufferCopyDataBytes(*(a1 + 320), 4 * a2, 4uLL, &destination);
    return bswap32(destination);
  }

  return result;
}

uint64_t MovieSampleTableSet_stz2(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  *(a1 + 288) = a2;
  *(a1 + 340) = a2;
  *(a1 + 336) = a3;
  v6 = *(a1 + 344);
  *(a1 + 344) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 584) = GetNumSamples_stz2;
  *(a1 + 600) = GetSampleSizeFieldSize_stz2;
  *(a1 + 608) = GetSizeTable_stz2;
  switch(a3)
  {
    case 16:
      result = 0;
      v8 = GetSampleSize_stz2_16;
      break;
    case 8:
      result = 0;
      v8 = GetSampleSize_stz2_8;
      break;
    case 4:
      result = 0;
      v8 = GetSampleSize_stz2_4;
      break;
    default:
      MovieSampleTableSet_stz2_cold_1(a1, &v9);
      return v9;
  }

  *(a1 + 592) = v8;
  return result;
}

uint64_t GetSampleSize_stz2_4(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 344), (a2 + (a2 >> 31)) >> 1, 1uLL, &destination);
  if (v2)
  {
    return destination & 0xF;
  }

  else
  {
    return destination >> 4;
  }
}

uint64_t GetSampleSize_stz2_8(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 344), a2, 1uLL, &destination);
  return destination;
}

uint64_t GetSampleSize_stz2_16(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 344), 2 * a2, 2uLL, &destination);
  return bswap32(destination) >> 16;
}

uint64_t MovieSampleTableSet_stco(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 360) = a2;
  v4 = *(a1 + 368);
  *(a1 + 368) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 616) = GetChunkOffset_stco;
  *(a1 + 624) = GetChunkCount_stco;
  *(a1 + 632) = GetChunkTable_stco;
  return 0;
}

uint64_t GetChunkOffset_stco(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 368), 4 * a2, 4uLL, &destination);
  return bswap32(destination);
}

uint64_t MovieSampleTableSet_co64(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 384) = a2;
  v4 = *(a1 + 392);
  *(a1 + 392) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 616) = GetChunkOffset_co64;
  *(a1 + 624) = GetChunkCount_co64;
  *(a1 + 632) = GetChunkTable_co64;
  return 0;
}

unint64_t GetChunkOffset_co64(uint64_t a1, int a2)
{
  destination = 0;
  CMBlockBufferCopyDataBytes(*(a1 + 392), 8 * a2, 8uLL, &destination);
  return bswap64(destination);
}

uint64_t MovieSampleTableSet_stts(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 408) = a2;
  v3 = *(a1 + 416);
  *(a1 + 416) = cf;
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

uint64_t MovieSampleTableSet_stsc(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 432) = a2;
  v3 = *(a1 + 440);
  *(a1 + 440) = cf;
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

uint64_t MovieSampleTableSet_ctts(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 456) = a2;
  v5 = *(a1 + 464);
  *(a1 + 464) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 720) = a2 > 0;
  return 0;
}

uint64_t MovieSampleTableSet_stss(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 480) = a2;
  v3 = *(a1 + 488);
  *(a1 + 488) = cf;
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

uint64_t MovieSampleTableSet_stps(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 504) = a2;
  v3 = *(a1 + 512);
  *(a1 + 512) = cf;
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

uint64_t MovieSampleTableSet_sdtp(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 528) = a2;
  v3 = *(a1 + 536);
  *(a1 + 536) = cf;
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

uint64_t MovieInformationLockForRead(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return FigReadWriteLockLockForRead();
  }

  return result;
}

uint64_t MovieInformationUnlockForRead(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return FigReadWriteLockUnlockForRead();
  }

  return result;
}

uint64_t MovieInformationLockForWrite(uint64_t a1)
{
  if (*(a1 + 24))
  {

    return FigReadWriteLockLockForWrite();
  }

  else
  {
    v5 = v1;
    v6 = v2;
    MovieInformationLockForWrite_cold_1(&v4);
    return v4;
  }
}

uint64_t MovieInformationUnlockForWrite(void *a1)
{
  if (a1[3])
  {
    if (a1[4])
    {
      v2 = a1[38];
      if (v2 >= 1)
      {
        v3 = 0;
        v4 = *MEMORY[0x1E695E480];
        v5 = MEMORY[0x1E695E9D8];
        v6 = MEMORY[0x1E695E9E8];
        do
        {
          if (a1[38] <= v3)
          {
            v7 = 0;
          }

          else
          {
            v7 = *(a1[40] + 8 * v3);
          }

          if (*(v7 + 922) && (a1[5] & 1) != 0)
          {
            *(v7 + 16) |= 0x200000uLL;
          }

          v8 = *(v7 + 16);
          if ((v8 & 0x1000) != 0)
          {
            a1[5] |= 0x80uLL;
            if ((v8 & 0x400000) == 0)
            {
LABEL_13:
              if ((v8 & 0x800000) == 0)
              {
                goto LABEL_14;
              }

              goto LABEL_21;
            }
          }

          else if ((v8 & 0x400000) == 0)
          {
            goto LABEL_13;
          }

          a1[5] |= 0x80uLL;
          if ((v8 & 0x800000) == 0)
          {
LABEL_14:
            if ((v8 & 4) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_22;
          }

LABEL_21:
          a1[5] |= 0x80uLL;
          if ((v8 & 4) == 0)
          {
LABEL_15:
            if ((v8 & 0x40) == 0)
            {
              goto LABEL_16;
            }

            goto LABEL_23;
          }

LABEL_22:
          a1[5] |= 0x1000uLL;
          if ((v8 & 0x40) == 0)
          {
LABEL_16:
            if ((v8 & 0x200000) != 0)
            {
              goto LABEL_24;
            }

            goto LABEL_17;
          }

LABEL_23:
          a1[5] |= 0x2000uLL;
          if ((v8 & 0x200000) != 0)
          {
LABEL_24:
            a1[5] |= 0x4000uLL;
LABEL_25:
            values = CFNumberCreate(v4, kCFNumberSInt64Type, (v7 + 16));
            if (values)
            {
              v9 = CFDictionaryCreate(v4, &kMovieInformationPayloadKey_ChangeBits, &values, 1, v5, v6);
            }

            else
            {
              v9 = 0;
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDeferNotificationToDispatchQueue();
            if (v9)
            {
              CFRelease(v9);
            }

            if (values)
            {
              CFRelease(values);
            }

            goto LABEL_32;
          }

LABEL_17:
          if (v8)
          {
            goto LABEL_25;
          }

LABEL_32:
          ++v3;
        }

        while (v2 != v3);
      }

      if (a1[5])
      {
        v10 = *MEMORY[0x1E695E480];
        values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a1 + 5);
        if (values)
        {
          v11 = CFDictionaryCreate(v10, &kMovieInformationPayloadKey_ChangeBits, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        else
        {
          v11 = 0;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDeferNotificationToDispatchQueue();
        if (v11)
        {
          CFRelease(v11);
        }

        if (values)
        {
          CFRelease(values);
        }
      }

      a1[5] = 0;
      v12 = a1[38];
      if (v12 >= 1)
      {
        v13 = a1[40];
        do
        {
          v14 = *v13++;
          *(v14 + 16) = 0;
          --v12;
        }

        while (v12);
      }
    }

    v15 = FigReadWriteLockUnlockForWrite();
    v16 = a1[4];
    if (v16)
    {
      dispatch_sync_f(v16, 0, WaitingNoOp);
    }
  }

  else
  {
    MovieInformationUnlockForWrite_cold_1(&values);
    return values;
  }

  return v15;
}

uint64_t MovieInformationGetLastMovieFragmentInformation(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 184))
  {
    return 0;
  }

  if (a2)
  {
    *a2 = *(a1 + 188);
  }

  return 1;
}

__n128 MovieInformationGetMovieExtendsDuration@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v2 + 16);
  if (a1[9].n128_u8[11])
  {
    result = a1[10];
    *a2 = result;
    *(a2 + 16) = a1[11].n128_u64[0];
  }

  return result;
}

uint64_t MovieInformationEstablishFirstParsedFragmentSequenceNumber(uint64_t a1, int a2)
{
  *(a1 + 184) = 1;
  *(a1 + 188) = a2;
  *(a1 + 192) = a2;
  *(a1 + 40) |= 0x10000uLL;
  return 0;
}

uint64_t MovieInformationUpdateLastParsedFragmentSequenceNumber(uint64_t a1, int a2)
{
  *(a1 + 188) = a2;
  *(a1 + 40) |= 0x10000uLL;
  return 0;
}

uint64_t MovieInformationGetFirstFragmentSequenceNumber(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 184) != 1)
  {
    return 0;
  }

  *a2 = *(a1 + 192);
  return 1;
}

uint64_t MovieInformationGetParsedFragmentCount(_DWORD *a1, _DWORD *a2)
{
  if (a1[46] != 1)
  {
    return 0;
  }

  *a2 = a1[47] - a1[48] + 1;
  return 1;
}

uint64_t MovieInformationEnsureMutationsWillNotify(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v7 = v1;
  v8 = v2;
  v5 = dispatch_queue_create("MovieInformationNotifications", 0);
  *(a1 + 32) = v5;
  if (v5)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRegisterForBarrierSupport();
    return 0;
  }

  else
  {
    MovieInformationEnsureMutationsWillNotify_cold_1(&v6);
    return v6;
  }
}

uint64_t MovieInformationCreate(uint64_t a1, int a2, uint64_t *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (sRegisterMovieInformationTypeOnce != -1)
  {
    MovieInformationCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    if ((a2 & 1) != 0 && (*(Instance + 24) = FigReadWriteLockCreate(), (a2 & 2) != 0) && (v8 = MovieInformationEnsureMutationsWillNotify(v7), v8))
    {
      v16 = v8;
      CFRelease(v7);
      return v16;
    }

    else
    {
      result = 0;
      v10 = (Current + *MEMORY[0x1E695E460]);
      *(v7 + 16) = a2;
      *(v7 + 252) = 1;
      *(v7 + 240) = 600;
      *(v7 + 288) = 1065353216;
      *(v7 + 256) = kIdentityMatrix_0;
      *(v7 + 272) = unk_196E788D0;
      __asm { FMOV            V0.2S, #1.0 }

      *(v7 + 244) = _D0;
      *(v7 + 216) = v10;
      *(v7 + 224) = v10;
      *a3 = v7;
    }
  }

  else
  {
    MovieInformationCreate_cold_2(&v17);
    return v17;
  }

  return result;
}

void MovieTrackSetLastSampleDecodeDuration(uint64_t a1, CMTime *a2)
{
  if ((a2->flags & 0x1D) == 1)
  {
    v4 = *(a1 + 232);
    v5 = *(a1 + 408);
    time1 = **&MEMORY[0x1E6960CC0];
    v7 = *a2;
    if (CMTimeCompare(&time1, &v7) < 0)
    {
      if (v5)
      {
        time1.value = 0;
        CMBlockBufferCopyDataBytes(*(a1 + 416), 8 * v5 - 8, 8uLL, &time1);
        v6 = bswap32(HIDWORD(time1.value));
        v7 = *a2;
        CMTimeConvertScale(&time1, &v7, v4, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        *a2 = time1;
        if (a2->value != v6)
        {
          MovieHeaderExtendLastSampleDecodeDuration(a1);
        }
      }

      else
      {
        MovieTrackSetLastSampleDecodeDuration_cold_2(&time1);
      }
    }

    else
    {
      MovieTrackSetLastSampleDecodeDuration_cold_3(&time1);
    }
  }

  else
  {
    MovieTrackSetLastSampleDecodeDuration_cold_1(&time1);
  }
}

uint64_t MovieInformationBeginBuildingMovieFragment(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 304);
  if (v3 < 1)
  {
    return 0;
  }

  v6 = 0;
  if (a3)
  {
    v7 = &v23;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E695E480];
  while (1)
  {
    if (*(a1 + 304) <= v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(*(a1 + 320) + 8 * v6);
    }

    v23 = 0;
    v24 = 0uLL;
    v21 = 0;
    v22 = 0;
    if (*(v9 + 768))
    {
      MovieInformationBeginBuildingMovieFragment_cold_1(&v25);
      return v25;
    }

    v10 = *(v9 + 224);
    BasicInfo = MovieTrackGetBasicInfo(v9, &v22 + 1, &v22);
    if (BasicInfo)
    {
      return BasicInfo;
    }

    if (a3)
    {
      v24 = *(v9 + 924);
      HIDWORD(v23) = v22;
    }

    v12 = *(v9 + 80);
    if (v12)
    {
      Count = FigCFDictionaryGetCount();
      v14 = CFGetAllocator(v12);
      Mutable = CFDictionaryCreateMutable(v14, Count, 0, MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v16 = Mutable;
        CFDictionaryApplyFunction(v12, DeepCopySampleGroupDescriptionArraysApplierFunction, Mutable);
        goto LABEL_18;
      }

      if (!MovieInformationBeginBuildingMovieFragment_cold_2())
      {
        return v25;
      }
    }

    v16 = 0;
LABEL_18:
    v17 = TrackFragmentBuilderCreate(SHIDWORD(v22), v16, v10, v7, v8, &v21);
    if (v17)
    {
      break;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    *(v9 + 768) = v21;
    *(v9 + 776) = a2;
    if (v3 == ++v6)
    {
      return 0;
    }
  }

  v18 = v17;
  if (v16)
  {
    CFRelease(v16);
  }

  return v18;
}

void MovieInformationReleaseMovieHeaderSampleTables(uint64_t result)
{
  v1 = *(result + 304);
  if (v1 >= 1)
  {
    for (i = 0; i != v1; ++i)
    {
      if (*(result + 304) <= i)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(*(result + 320) + 8 * i);
      }

      FreeAllSampleTables(v4);
    }
  }
}

void FreeAllSampleTables(void *a1)
{
  v2 = a1[40];
  if (v2)
  {
    CFRelease(v2);
    a1[40] = 0;
  }

  v3 = a1[43];
  if (v3)
  {
    CFRelease(v3);
    a1[43] = 0;
  }

  v4 = a1[46];
  if (v4)
  {
    CFRelease(v4);
    a1[46] = 0;
  }

  v5 = a1[49];
  if (v5)
  {
    CFRelease(v5);
    a1[49] = 0;
  }

  v6 = a1[52];
  if (v6)
  {
    CFRelease(v6);
    a1[52] = 0;
  }

  v7 = a1[55];
  if (v7)
  {
    CFRelease(v7);
    a1[55] = 0;
  }

  v8 = a1[58];
  if (v8)
  {
    CFRelease(v8);
    a1[58] = 0;
  }

  v9 = a1[61];
  if (v9)
  {
    CFRelease(v9);
    a1[61] = 0;
  }

  v10 = a1[64];
  if (v10)
  {
    CFRelease(v10);
    a1[64] = 0;
  }

  v11 = a1[67];
  if (v11)
  {
    CFRelease(v11);
    a1[67] = 0;
  }

  v12 = a1[41];
  if (v12)
  {
    CFRelease(v12);
    a1[41] = 0;
  }

  v13 = a1[44];
  if (v13)
  {
    CFRelease(v13);
    a1[44] = 0;
  }

  v14 = a1[47];
  if (v14)
  {
    CFRelease(v14);
    a1[47] = 0;
  }

  v15 = a1[50];
  if (v15)
  {
    CFRelease(v15);
    a1[50] = 0;
  }

  v16 = a1[53];
  if (v16)
  {
    CFRelease(v16);
    a1[53] = 0;
  }

  v17 = a1[56];
  if (v17)
  {
    CFRelease(v17);
    a1[56] = 0;
  }

  v18 = a1[59];
  if (v18)
  {
    CFRelease(v18);
    a1[59] = 0;
  }

  v19 = a1[62];
  if (v19)
  {
    CFRelease(v19);
    a1[62] = 0;
  }

  v20 = a1[65];
  if (v20)
  {
    CFRelease(v20);
    a1[65] = 0;
  }

  v21 = a1[68];
  if (v21)
  {
    CFRelease(v21);
    a1[68] = 0;
  }
}

void MovieInformationReleaseMovieFragmentSampleTables(uint64_t result)
{
  v1 = *(result + 304);
  if (v1 >= 1)
  {
    for (i = 0; i != v1; ++i)
    {
      v4 = *(*(*(result + 320) + 8 * i) + 768);
      if (v4)
      {
        TrackFragmentBuilderSampleTableRelease(v4);
      }
    }
  }
}

uint64_t UpgradeTo32BitSampleSizes(uint64_t a1)
{
  theBuffer = 0;
  if (!(*(a1 + 584))() || (*(a1 + 600))(a1) > 31)
  {
    return 0;
  }

  dataPointerOut = 0;
  v2 = *(a1 + 340);
  v3 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 4 * v2, *MEMORY[0x1E695E480], 0, 0, 4 * v2, 1u, &theBuffer);
  v4 = theBuffer;
  if (!v3)
  {
    CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (v2 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = (*(a1 + 592))(a1, v5);
        v7 = dataPointerOut;
        *dataPointerOut = bswap32(v6);
        dataPointerOut = v7 + 4;
        v5 = (v5 + 1);
      }

      while (v2 != v5);
    }

    *(a1 + 312) = v2;
    v8 = theBuffer;
    if (theBuffer)
    {
      v8 = CFRetain(theBuffer);
    }

    *(a1 + 320) = v8;
    *(a1 + 316) = 0;
    *(a1 + 292) = 0;
    *(a1 + 340) = 0;
    v9 = *(a1 + 344);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 344) = 0;
    }

    v10 = *(a1 + 352);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 352) = 0;
    }

    v3 = 0;
    *(a1 + 584) = GetNumSamples_stsz;
    *(a1 + 592) = GetSampleSize_stsz;
    *(a1 + 600) = GetSampleSizeFieldSize_stsz;
    *(a1 + 608) = GetSizeTable_stsz;
    v4 = theBuffer;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

void MakeTableReadyToWrite(CMBlockBufferRef *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 0;
  if (!v3)
  {
    MakeTableReadyToWrite_cold_1(&v4, a2, a1, v2);
  }
}

uint64_t MovieInformationSetMovieMetadataItemArray(uint64_t a1, void *key, void *value)
{
  Mutable = *(a1 + 376);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 376) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
  result = FigCFEqual();
  if (result)
  {
    v8 = 8;
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      v8 = 64;
    }

    else
    {
      result = FigCFEqual();
      if (result)
      {
        v8 = 32;
      }

      else
      {
        result = FigCFEqual();
        v8 = 16 * (result != 0);
      }
    }
  }

  *(a1 + 40) |= v8;
  return result;
}

uint64_t MovieTrackScaleSegment(CMTime *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v35 = *a3;
  v36 = *(a3 + 2);
  *&v34.value = *(a3 + 24);
  v34.epoch = *(a3 + 5);
  *&v33.value = *a4;
  v33.epoch = *(a4 + 16);
  v31 = *MEMORY[0x1E6960CC0];
  *&v40.value = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v40.epoch = v7;
  memset(&v39, 0, sizeof(v39));
  *&lhs.start.value = *a3;
  lhs.start.epoch = *(a3 + 2);
  rhs = *(a3 + 1);
  CMTimeAdd(&v39, &lhs.start, &rhs);
  *&lhs.start.value = *&v33.value;
  lhs.start.epoch = v33.epoch;
  Seconds = CMTimeGetSeconds(&lhs.start);
  *&lhs.start.value = *&v34.value;
  lhs.start.epoch = v34.epoch;
  v9 = CMTimeGetSeconds(&lhs.start);
  *&lhs.start.value = *&v34.value;
  lhs.start.epoch = v34.epoch;
  rhs = v33;
  if (!CMTimeCompare(&lhs.start, &rhs))
  {
    goto LABEL_32;
  }

  *&lhs.start.value = *&v34.value;
  lhs.start.epoch = v34.epoch;
  *&rhs.value = v31;
  rhs.epoch = v7;
  if (CMTimeCompare(&lhs.start, &rhs) < 1)
  {
    return 4294954516;
  }

  *&lhs.start.value = *&v33.value;
  lhs.start.epoch = v33.epoch;
  *&rhs.value = v31;
  rhs.epoch = v7;
  if (CMTimeCompare(&lhs.start, &rhs) < 1)
  {
    return 4294954516;
  }

  *&lhs.start.value = v35;
  lhs.start.epoch = v36;
  *&rhs.value = v31;
  rhs.epoch = v7;
  if (CMTimeCompare(&lhs.start, &rhs) < 0)
  {
    return 4294954516;
  }

  v10 = *(a2 + 816);
  if (v10 < 1)
  {
    return 4294954516;
  }

  v11 = (a2 + 808);
  v12 = *(a2 + 808) + 96 * v10;
  v13 = *(v12 - 48);
  v14 = *(v12 - 16);
  *&lhs.start.epoch = *(v12 - 32);
  *&lhs.duration.timescale = v14;
  *&lhs.start.value = v13;
  CMTimeRangeGetEnd(&v40, &lhs);
  *&lhs.start.value = v35;
  lhs.start.epoch = v36;
  rhs = v40;
  if ((CMTimeCompare(&lhs.start, &rhs) & 0x80000000) == 0)
  {
LABEL_32:
    MovieTrackInvalidateEnhancedGaplessInfo(a2);
    *&lhs.start.value = *a3;
    lhs.start.epoch = *(a3 + 2);
    NoteEditSegmentModification(a1, a2, &lhs.start, 0);
    UpdateDurationsForEditSegmentChange(a1, a2);
    return 0;
  }

  *&lhs.start.value = v35;
  lhs.start.epoch = v36;
  EditIndexStartingAtTimeInTrackSplitEditIfNecessary = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(a2 + 808, &lhs.start);
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary < 0)
  {
    return 4294954516;
  }

  v16 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary >= *(a2 + 816))
  {
    return 4294954516;
  }

  lhs.start = v39;
  rhs = v40;
  if ((CMTimeCompare(&lhs.start, &rhs) & 0x80000000) == 0)
  {
    v18 = *(a2 + 816);
    goto LABEL_12;
  }

  lhs.start = v39;
  v17 = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(a2 + 808, &lhs.start);
  if (v17 < 0)
  {
    return 4294954516;
  }

  v18 = v17;
  if (v17 >= *(a2 + 816))
  {
    return 4294954516;
  }

LABEL_12:
  if (v16 == v18 - 1)
  {
    v19 = v16;
    v20 = *v11 + 96 * v16;
    v21 = *(v20 + 72);
    lhs.start.epoch = *(v20 + 88);
    *&lhs.start.value = v21;
    rhs = v34;
    if (!CMTimeCompare(&lhs.start, &rhs))
    {
      v22 = *v11 + 96 * v16;
      *(v22 + 72) = *&v33.value;
      *(v22 + 88) = v33.epoch;
      goto LABEL_20;
    }
  }

  else
  {
    v19 = v16;
  }

  if (v16 < v18)
  {
    v32 = a1;
    v23 = 96 * v19 + 72;
    v24 = v19;
    v25 = Seconds / v9;
    do
    {
      v26 = *v11 + v23;
      v27 = *v26;
      rhs.epoch = *(v26 + 16);
      *&rhs.value = v27;
      CMTimeMultiplyByFloat64(&lhs.start, &rhs, v25);
      v28 = *&lhs.start.value;
      *(v26 + 16) = lhs.start.epoch;
      *v26 = v28;
      ++v24;
      v23 += 96;
    }

    while (v18 > v24);
    a1 = v32;
  }

LABEL_20:
  *&lhs.start.value = v35;
  lhs.start.epoch = v36;
  UpdateTrackStartTimes(a2 + 808, v19, &lhs.start.value);
  if (!v16 || v16 >= *(a2 + 816) || !CombineEditSegmentsIfPossible(*v11 + 96 * v19 - 96, *v11 + 96 * v19, *v11 + 96 * v19 - 96) || (result = DeleteEditsFromTrack(a2 + 808, v19, 1), --v18, !result))
  {
    if (v18 < 1 || v18 >= *(a2 + 816) || !CombineEditSegmentsIfPossible(*v11 + 96 * v18 - 96, *v11 + 96 * v18, *v11 + 96 * v18 - 96) || (result = DeleteEditsFromTrack(a2 + 808, v18, 1), !result))
    {
      if (v16)
      {
        v30 = v16 - 1;
      }

      else
      {
        v30 = 0;
      }

      DeleteEditsWithZeroDuration(a2 + 808, v30);
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t MovieInformationSetParsedIFFItemInformation(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    if (*(a1 + 200))
    {
      MovieInformationSetParsedIFFItemInformation_cold_1(&v5);
      return v5;
    }

    else
    {
      v3 = CFRetain(cf);
      result = 0;
      *(a1 + 200) = v3;
    }
  }

  else
  {
    MovieInformationSetParsedIFFItemInformation_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieInformationCopyIFFItemInformation(uint64_t a1, void *a2)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *a2 = v3;
  return 0;
}

void MovieInformationSetAssetAnalysisReporter(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t NEW_findSampleInTable(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, _DWORD *a5)
{
  v10 = (a2)(a1, *a5);
  result = 1;
  if (v10 < a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  if (v10 != a4)
  {
    v13 = v10;
    do
    {
      v14 = *a5;
      if (v10 >= a4)
      {
        result = 0;
        if (v13 < a4 || !v14)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v13 > a4 || v14 + 1 == a3)
        {
          return result;
        }
      }

      *a5 = v14 + v12;
      v13 = a2(a1);
    }

    while (v13 != a4);
    return 1;
  }

  return result;
}

uint64_t RegisterMoviePerTrackInfoType()
{
  result = _CFRuntimeRegisterClass();
  sMoviePerTrackInfoID = result;
  return result;
}

void FinalizeMoviePerTrackInfo(uint64_t a1)
{
  ReleaseSampleDescriptionInfoArray(a1);
  ReleaseDataReferenceInfoArray(a1);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 856);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 856) = 0;
  }

  v4 = *(a1 + 848);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 848) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 728);
  if (v7)
  {
    FreeFragmentInfos(v7);
    free(*(a1 + 728));
    *(a1 + 728) = 0;
  }

  FreeAllSampleTables(a1);
  v8 = *(a1 + 696);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 640);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 640) = 0;
  }

  free(*(a1 + 808));
  *(a1 + 808) = 0;
  v10 = *(a1 + 832);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 832) = 0;
  }

  v11 = *(a1 + 912);
  if (v11)
  {
    *(a1 + 912) = 0;
    free(v11);
  }

  v12 = *(a1 + 888);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 888) = 0;
  }

  if (*(a1 + 32))
  {
    FigSimpleMutexDestroy();
    *(a1 + 32) = 0;
  }

  if (*(a1 + 921))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterUnregisterForBarrierSupport();
    *(a1 + 921) = 0;
  }

  TrackFragmentBuilderRelease(*(a1 + 768));
  *(a1 + 768) = 0;
  free(*(a1 + 784));
  *(a1 + 784) = 0;
}

uint64_t RegisterMovieInformationType()
{
  result = _CFRuntimeRegisterClass();
  sMovieInformationID = result;
  return result;
}

double InitMovieInformation(_OWORD *a1)
{
  result = 0.0;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t FinalizeMovieInformation(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 304);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 320) + 8 * i);
      if (v5)
      {
        CFRelease(v5);
        *(*(a1 + 320) + 8 * i) = 0;
        v3 = *(a1 + 304);
      }
    }
  }

  free(*(a1 + 320));
  free(*(a1 + 344));
  free(*(a1 + 368));
  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 64) = 0;
  }

  v8 = *(a1 + 376);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 376) = 0;
  }

  v9 = *(a1 + 408);
  if (v9)
  {
    *(a1 + 408) = 0;
    free(v9);
  }

  v10 = *(a1 + 384);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 384) = 0;
  }

  v11 = *(a1 + 200);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 200) = 0;
  }

  if (*(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterUnregisterForBarrierSupport();
    v12 = *(a1 + 32);
    if (v12)
    {
      dispatch_release(v12);
      *(a1 + 32) = 0;
    }
  }

  return FigReadWriteLockDestroy();
}

void MakeReadyToWrite_stts(uint64_t a1)
{
  blockBufferOut = 0;
  if (!*(a1 + 424))
  {
    if (!CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x10u, 0, &blockBufferOut))
    {
      v2 = *(a1 + 416);
      if (v2)
      {
        destination = 0;
        v3 = 8 * *(a1 + 408) - 8;
        CMBlockBufferCopyDataBytes(v2, v3, 8uLL, &destination);
        if (*(a1 + 408) >= 2)
        {
          CMBlockBufferAppendBufferReference(blockBufferOut, *(a1 + 416), 0, v3, 0);
        }

        if (CMByteStreamCreateWritableForBlockBuffer())
        {
          goto LABEL_13;
        }

        CMByteStreamAppend();
        goto LABEL_9;
      }

      if (!CMByteStreamCreateWritableForBlockBuffer())
      {
LABEL_9:
        v4 = *(a1 + 416);
        v5 = blockBufferOut;
        *(a1 + 416) = blockBufferOut;
        if (v5)
        {
          CFRetain(v5);
        }

        if (v4)
        {
          CFRelease(v4);
        }
      }
    }

LABEL_13:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }
}

void MakeReadyToWrite_ctts(uint64_t a1)
{
  blockBufferOut = 0;
  if (!*(a1 + 472))
  {
    if (!CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x10u, 0, &blockBufferOut))
    {
      v2 = *(a1 + 464);
      if (v2)
      {
        destination = 0;
        v3 = 8 * *(a1 + 456) - 8;
        CMBlockBufferCopyDataBytes(v2, v3, 8uLL, &destination);
        if (*(a1 + 456) >= 2)
        {
          CMBlockBufferAppendBufferReference(blockBufferOut, *(a1 + 464), 0, v3, 0);
        }

        if (CMByteStreamCreateWritableForBlockBuffer())
        {
          goto LABEL_14;
        }

        CMByteStreamAppend();
        goto LABEL_9;
      }

      if (!CMByteStreamCreateWritableForBlockBuffer())
      {
LABEL_9:
        v4 = *(a1 + 464);
        v5 = blockBufferOut;
        *(a1 + 464) = blockBufferOut;
        if (v5)
        {
          CFRetain(v5);
        }

        if (v4)
        {
          CFRelease(v4);
        }

        *(a1 + 720) = 1;
      }
    }

LABEL_14:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }
}

void DeepCopySampleGroupDescriptionArraysApplierFunction(const void *a1, uint64_t a2, void *cf)
{
  value = 0;
  v6 = CFGetAllocator(cf);
  if (MovieSampleGroupCreateDescriptionArrayDeepCopy(v6, a2, &value))
  {
    DeepCopySampleGroupDescriptionArraysApplierFunction_cold_1();
  }

  else
  {
    CFDictionaryAddValue(cf, a1, value);
  }

  if (value)
  {
    CFRelease(value);
  }
}

uint64_t CombineEditSegmentsIfPossible(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *(a1 + 72);
  v37 = *(a1 + 88);
  v35 = *(a2 + 72);
  v33 = *(a1 + 24);
  v34 = *(a1 + 40);
  v32 = *(a2 + 24);
  *&time1.start.value = *(a1 + 72);
  time1.start.epoch = *(a1 + 88);
  time2 = *(a1 + 24);
  v6 = CMTimeCompare(&time1.start, &time2);
  time1.start = v35;
  time2 = v32;
  v7 = CMTimeCompare(&time1.start, &time2);
  time2 = **&MEMORY[0x1E6960CC0];
  v30 = time2;
  v8 = *(a1 + 64);
  *&time1.start.value = *(a1 + 48);
  *&time1.start.epoch = v8;
  *&time1.duration.timescale = *(a1 + 80);
  CMTimeRangeGetEnd(&v26, &time1);
  *&time1.start.value = *(a2 + 48);
  time1.start.epoch = *(a2 + 64);
  if (CMTimeCompare(&v26, &time1.start))
  {
    return 0;
  }

  if ((*(a1 + 12) & 1) == 0 && (*(a2 + 12) & 1) == 0)
  {
    *&time1.start.value = v36;
    time1.start.epoch = v37;
    v26 = v35;
    CMTimeAdd(&time2, &time1.start, &v26);
    *a3 = *a1;
    v10 = *(a1 + 16);
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    *(a3 + 64) = *(a1 + 64);
    *(a3 + 32) = v11;
    *(a3 + 48) = v12;
    *(a3 + 16) = v10;
    *(a3 + 72) = time2;
    return 1;
  }

  v13 = *(a1 + 16);
  *&time1.start.value = *a1;
  *&time1.start.epoch = v13;
  *&time1.duration.timescale = *(a1 + 32);
  CMTimeRangeGetEnd(&v26, &time1);
  *&time1.start.value = *a2;
  time1.start.epoch = *(a2 + 16);
  v14 = CMTimeCompare(&v26, &time1.start);
  result = 0;
  if (!v14 && (v6 != 0) == (v7 != 0))
  {
    if (!v6 || !v7 || (*&time1.start.value = v36, time1.start.epoch = v37, Seconds = CMTimeGetSeconds(&time1.start), time1.start = v32, v16 = Seconds * CMTimeGetSeconds(&time1.start), time1.start = v35, v17 = CMTimeGetSeconds(&time1.start), *&time1.start.value = v33, time1.start.epoch = v34, v16 == v17 * CMTimeGetSeconds(&time1.start)))
    {
      *&time1.start.value = v36;
      time1.start.epoch = v37;
      v26 = v35;
      CMTimeAdd(&time2, &time1.start, &v26);
      *&time1.start.value = v33;
      time1.start.epoch = v34;
      v26 = v32;
      CMTimeAdd(&v30, &time1.start, &v26);
      v18 = *(a1 + 48);
      *&time1.duration.timescale = *(a1 + 32);
      v28 = v18;
      v19 = *(a1 + 64);
      v20 = *(a1 + 16);
      *&time1.start.value = *a1;
      time1.start.epoch = v20;
      *&v29[8] = time2;
      *v29 = v19;
      time1.duration = v30;
      v21 = *MEMORY[0x1E6960C70];
      v22 = *(MEMORY[0x1E6960C70] + 16);
      *(a1 + 16) = v22;
      *a1 = v21;
      *(a2 + 16) = v22;
      *a2 = v21;
      v23 = *&time1.start.epoch;
      *a3 = *&time1.start.value;
      *(a3 + 16) = v23;
      v24 = *&v29[16];
      *(a3 + 64) = *v29;
      *(a3 + 80) = v24;
      v25 = v28;
      result = 1;
      *(a3 + 32) = *&time1.duration.timescale;
      *(a3 + 48) = v25;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(uint64_t a1, CMTime *a2)
{
  v34 = *a2;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 < 2)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v5 = 0;
  v6 = v2 - 1;
  while (1)
  {
    v7 = (v5 + v6) >> 1;
    v8 = *a1 + 96 * v7;
    *&v32.start.value = *(v8 + 48);
    v32.start.epoch = *(v8 + 64);
    memset(&v37, 0, sizeof(v37));
    v9 = *(v8 + 48);
    v10 = *(v8 + 80);
    *&range.start.epoch = *(v8 + 64);
    *&range.duration.timescale = v10;
    *&range.start.value = v9;
    CMTimeRangeGetEnd(&v37, &range);
    range.start = v34;
    time2 = v37;
    if (CMTimeCompare(&range.start, &time2) < 1)
    {
      break;
    }

    v5 = v7 + 1;
LABEL_9:
    if (v5 >= v6)
    {
      goto LABEL_12;
    }
  }

  range.start = v34;
  time2 = v37;
  if (!CMTimeCompare(&range.start, &time2))
  {
    v5 = v7 + 1;
    goto LABEL_12;
  }

  range.start = v34;
  time2 = v32.start;
  if (CMTimeCompare(&range.start, &time2) < 0)
  {
    v6 = v7 - 1;
    goto LABEL_9;
  }

  v5 = (v5 + v6) >> 1;
LABEL_12:
  v11 = *a1 + 96 * v5;
  v12 = *(v11 + 48);
  range.start.epoch = *(v11 + 64);
  *&range.start.value = v12;
  *&v32.start.value = *&a2->value;
  v32.start.epoch = a2->epoch;
  if (CMTimeCompare(&range.start, &v32.start))
  {
    v13 = v5;
    v14 = (*a1 + 96 * v5);
    v37 = **&MEMORY[0x1E6960CC0];
    time2 = v37;
    v34 = v37;
    rhs = *a2;
    v15 = v14[3];
    v16 = v14[5];
    *&range.start.epoch = v14[4];
    *&range.duration.timescale = v16;
    *&range.start.value = v15;
    v17 = *v14;
    v18 = v14[2];
    *&v32.start.epoch = v14[1];
    *&v32.duration.timescale = v18;
    *&v32.start.value = v17;
    CMTimeMapTimeFromRangeToRange(&v37, &rhs, &range, &v32);
    v5 = (v5 + 1);
    InsertUninitializedEditsIntoTrack(a1, v5, 1);
    if (!v19)
    {
      v20 = *a1 + 96 * v13;
      *&range.start.value = *&a2->value;
      range.start.epoch = a2->epoch;
      v21 = *(v20 + 48);
      v32.start.epoch = *(v20 + 64);
      *&v32.start.value = v21;
      CMTimeSubtract(&time2, &range.start, &v32.start);
      range.start = v37;
      v22 = *v20;
      v32.start.epoch = *(v20 + 16);
      *&v32.start.value = v22;
      CMTimeSubtract(&v34, &range.start, &v32.start);
      v23 = *&a2->value;
      *(v20 + 160) = a2->epoch;
      *(v20 + 144) = v23;
      v24 = *(v20 + 72);
      v32.start.epoch = *(v20 + 88);
      *&v32.start.value = v24;
      rhs = time2;
      CMTimeSubtract(&range.start, &v32.start, &rhs);
      v25 = *&range.start.value;
      *(v20 + 184) = range.start.epoch;
      *(v20 + 168) = v25;
      v26 = *&v37.value;
      *(v20 + 112) = v37.epoch;
      *(v20 + 96) = v26;
      v27 = *(v20 + 24);
      v32.start.epoch = *(v20 + 40);
      *&v32.start.value = v27;
      rhs = v34;
      CMTimeSubtract(&range.start, &v32.start, &rhs);
      v28 = *&range.start.value;
      *(v20 + 136) = range.start.epoch;
      *(v20 + 120) = v28;
      v29 = *&time2.value;
      *(v20 + 88) = time2.epoch;
      *(v20 + 72) = v29;
      v30 = *&v34.value;
      *(v20 + 40) = v34.epoch;
      *(v20 + 24) = v30;
      return v5;
    }

    return 0xFFFFFFFFLL;
  }

  return v5;
}

double UpdateTrackStartTimes(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 8) > a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = a2;
    v8 = 96 * a2 + 48;
    do
    {
      v9 = *a1 + v8;
      v10 = *a3;
      *(v9 + 16) = *(a3 + 2);
      *v9 = v10;
      v11 = (*a1 + v8);
      v12 = *v11;
      v13 = v11[2];
      *&v15.start.epoch = v11[1];
      *&v15.duration.timescale = v13;
      *&v15.start.value = v12;
      CMTimeRangeGetEnd(&v16, &v15);
      result = *&v16.value;
      *a3 = v16;
      ++v6;
      v8 += 96;
    }

    while (v6 < *(a1 + 8));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_130(int a1, OpaqueCMBlockBuffer *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateContiguous(v18, a2, v18, 0, 0, 0, 2u, &blockBufferOut);
}

uint64_t OUTLINED_FUNCTION_3_103(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{

  return CMBlockBufferCreateContiguous(v8, a2, v8, 0, 0, 0, 2u, a8);
}

uint64_t OUTLINED_FUNCTION_4_101(int a1, OpaqueCMBlockBuffer *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateWithBufferReference(v18, a2, 0, 0, 0, &blockBufferOut);
}

__n128 OUTLINED_FUNCTION_7_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  *(v12 + 44) = *(v12 + 172);
  result = a12;
  *(v12 + 72) = a12;
  return result;
}

void OUTLINED_FUNCTION_16_33(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, _DWORD *a14, int32x2_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, _BYTE *a29)
{

  AddSampleGroupForGroupType(a1, a2, a3, a4, v29, 0, 0, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t OUTLINED_FUNCTION_19_33()
{
  v4 = *(v0 + 440);

  return CMBlockBufferCopyDataBytes(v4, v1, 0xCuLL, (v2 - 128));
}

__n128 OUTLINED_FUNCTION_22_25@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5)
{
  *a1 = *(v8 - 192);
  *(a1 + 16) = *(v8 - 176);
  *(a1 + 32) = *(v8 - 160);
  *(a1 + 44) = *(v5 + 172);
  *(a1 + 60) = v7;
  *(a1 + 64) = v6;
  result = a4;
  *(a1 + 72) = a4;
  *(a1 + 88) = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_33@<X0>(__int128 a1@<0:X0, 8:X1>, uint64_t a2@<X8>, __int128 a3, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a7, uint64_t a8, uint64_t a9, __int128 time2a, uint64_t time2_16)
{
  time1_16 = a2;
  time2a = a3;
  time2_16 = v11;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_26_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v12 = *(v9 + 416);

  return CMBlockBufferCopyDataBytes(v12, v10, 8uLL, va);
}

uint64_t OUTLINED_FUNCTION_33_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *time2, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 time2a, uint64_t time2_16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, CMTime *time1, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t time1a, int time1_8, int time1_12, uint64_t time1_16)
{
  time1a = *(v41 - 120);
  time1_8 = *(v41 - 112);
  time1_12 = v40;
  time1_16 = v39;
  time2a = *(v41 - 224);
  time2_16 = *(v41 - 208);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_34_19(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, int a9)
{

  return CMByteStreamAppend();
}

uint64_t OUTLINED_FUNCTION_41_17(uint64_t a1)
{

  return CMByteStreamAppend();
}

uint64_t OUTLINED_FUNCTION_62_11@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t destination, int a7)
{
  a7 = 0;
  destination = 0;
  v9 = *(v7 + 440);

  return CMBlockBufferCopyDataBytes(v9, a1 - 12, 0xCuLL, &destination);
}

uint64_t OUTLINED_FUNCTION_63_11(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9)
{

  return CMByteStreamAppend();
}

CFTypeRef OUTLINED_FUNCTION_69_7(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{

  return MovieSampleGroupCollectionLookupAndRetainSampleGroup(a1, a4, a2);
}

uint64_t OUTLINED_FUNCTION_70_9(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef a9)
{

  return CMBlockBufferCreateWithBufferReference(a1, a2, 0, a4, 0, &a9);
}

uint64_t OUTLINED_FUNCTION_71_8(OpaqueCMBlockBuffer *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return CMBlockBufferCopyDataBytes(a1, v9, 8uLL, va);
}

uint64_t OUTLINED_FUNCTION_91_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v17 = *(v15 + 440);

  return CMBlockBufferCopyDataBytes(v17, v14, 0xCuLL, va);
}

uint64_t OUTLINED_FUNCTION_92_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateEmpty(v18, 0, 0, &blockBufferOut);
}

void OUTLINED_FUNCTION_93_4()
{

  JUMPOUT(0x19A8CC720);
}

uint64_t OUTLINED_FUNCTION_94_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  v15 = *(v12 + 464);

  return CMBlockBufferCopyDataBytes(v15, v13, 8uLL, va);
}

uint64_t OUTLINED_FUNCTION_95_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v12 = *(v9 + 464);

  return CMBlockBufferCopyDataBytes(v12, v10, 8uLL, va);
}

uint64_t OUTLINED_FUNCTION_96_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  v15 = *(v12 + 416);

  return CMBlockBufferCopyDataBytes(v15, v13, 8uLL, va);
}

void *OUTLINED_FUNCTION_97_7@<X0>(void *__dst@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a3 + 96 * a2);

  return memcpy(__dst, v4, 0x60uLL);
}

void OUTLINED_FUNCTION_98_3()
{

  MakeTableReadyToWrite((v0 + 320), (v0 + 328));
}

uint64_t OUTLINED_FUNCTION_99_4()
{

  return MovieSampleGroupTypeSpecMakeBasic(1937011553);
}

uint64_t OUTLINED_FUNCTION_100_5()
{

  return MovieSampleGroupTypeSpecMakeBasic(1953718643);
}

uint64_t OUTLINED_FUNCTION_101_3()
{

  return MovieSampleGroupTypeSpecMakeBasic(1937337955);
}

uint64_t OUTLINED_FUNCTION_102_3()
{

  return MovieSampleGroupTypeSpecMakeBasic(1936023917);
}

uint64_t OUTLINED_FUNCTION_103_3()
{

  return MovieSampleGroupTypeSpecMakeBasic(1886547820);
}

uint64_t OUTLINED_FUNCTION_104_3(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 80);

  return MovieSampleGroupAccessorCopyDescriptionForSample(a1, v5, va);
}

uint64_t OUTLINED_FUNCTION_105_4()
{

  return MovieSampleGroupAccessorCreate(v0, v1);
}

const void *OUTLINED_FUNCTION_106_2()
{

  return CFArrayGetValueAtIndex(v0, v1);
}

void OUTLINED_FUNCTION_107_3()
{

  MakeTableReadyToWrite((v0 + 488), (v0 + 496));
}

uint64_t RegisterFigMutableCompositionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMutableCompositionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigMutableCompositionGetClassID_sRegisterFigMutableCompositionBaseTypeOnce, RegisterFigMutableCompositionBaseType);

  return CMBaseClassGetCFTypeID();
}

void compositionSharedCache_releaseAndClear(void **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1 && !FigAtomicDecrement32())
  {
    v2 = v1[1];
    if (v2)
    {
      CFRelease(v2);
      v1[1] = 0;
    }

    v1[2] = 0;
    v3 = v1[3];
    if (v3)
    {
      CFRelease(v3);
      v1[3] = 0;
    }

    if (v1[4])
    {
      FigSimpleMutexDestroy();
      v1[4] = 0;
    }

    v4 = v1[5];
    if (v4)
    {
      CFDictionaryRemoveAllValues(v4);
      v5 = v1[5];
      if (v5)
      {
        CFRelease(v5);
      }
    }

    free(v1);
  }
}

void mutableComposition_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  compositionTable_releaseAndClear((DerivedStorage + 8));
}

__CFString *mutableComposition_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(DerivedStorage + 8);
  v4 = *(v3 + 32);
  CFStringAppend(Mutable, @"[FigMutableComposition]{\n");
  if (*(v3 + 16) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = compositionTableTrack_CopyDebugDescription(v4);
      if (v5)
      {
        CFStringAppend(Mutable, @",\n");
      }

      CFStringAppend(Mutable, @"  ");
      CFStringAppend(Mutable, v6);
      if (v6)
      {
        CFRelease(v6);
      }

      ++v5;
      v4 += 168;
    }

    while (v5 < *(v3 + 16));
  }

  CFStringAppend(Mutable, @"\n}");
  return Mutable;
}

void mutableComposition_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = DerivedStorage;
    v10 = *(DerivedStorage + 8);
    if (CFEqual(a2, @"MutableComposition_ByteStreamProvider"))
    {
      v11 = *(*(*(v9 + 8) + 160) + 8);
      if (v11)
      {
LABEL_4:
        v12 = CFRetain(v11);
LABEL_10:
        v14 = v12;
LABEL_14:
        *a4 = v14;
        return;
      }

LABEL_13:
      v14 = 0;
      goto LABEL_14;
    }

    if (CFEqual(a2, @"MutableComposition_AssetCreationFlags"))
    {
      v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (*(*(v9 + 8) + 160) + 16));
      goto LABEL_10;
    }

    if (CFEqual(a2, @"MutableComposition_AssetCreationOptions"))
    {
      v11 = *(*(*(v9 + 8) + 160) + 24);
      if (v11)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (CFEqual(a2, @"MutableComposition_Metadata"))
    {
      FigSimpleMutexLock();
      *a4 = CFDictionaryCreateCopy(a3, *(*(v9 + 8) + 80));
LABEL_21:
      FigSimpleMutexUnlock();
      return;
    }

    if (CFEqual(a2, @"MutableComposition_TrackReferenceDictionary"))
    {
      FigSimpleMutexLock();
      MutableCopy = *(v10 + 48);
      if (MutableCopy)
      {
        Count = CFDictionaryGetCount(MutableCopy);
        MutableCopy = CFDictionaryCreateMutableCopy(a3, Count, *(v10 + 48));
      }

      *a4 = MutableCopy;
      goto LABEL_21;
    }

    if (CFEqual(a2, @"MediaSelectionArray"))
    {
      v17 = *v9;

      FigCreateMediaSelectionArrayFromFormatReaderProperties(v17, 1, 0, a4);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< CompositeReader >>>>", 6520, v4);
  }
}