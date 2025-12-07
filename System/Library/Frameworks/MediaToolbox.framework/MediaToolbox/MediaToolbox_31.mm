uint64_t FigAlternateMeasuredBitrateCapFilterCreate(const __CFAllocator *a1, uint64_t a2, unsigned int a3, CFTypeRef *a4, double a5, double a6)
{
  *&v13[1] = a5;
  *&v13[2] = a6;
  v13[0] = a2;
  v8 = fabs(a6);
  if (v8 <= 1.0)
  {
    v8 = 1.0;
  }

  v13[3] = (a2 / a5 / ceil(v8));
  v13[4] = a3;
  v9 = CFDataCreate(a1, v13, 40);
  if (v9)
  {
    v10 = v9;
    v11 = FigSimpleAlternateFilterCreate(a1, @"MeasuredBitrateCap", 550, &unk_1F0AE0B50, v9, a4);
    CFRelease(v10);
  }

  else
  {
    FigAlternateMeasuredBitrateCapFilterCreate_cold_1(&v14);
    return v14;
  }

  return v11;
}

BOOL faf_measuredBitrateFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*(BytePtr + 8))
  {
    ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(a1);
  }

  else
  {
    ExpectedAverageBitrate = FigAlternateGetPeakBitRate(a1);
  }

  return *(BytePtr + 3) >= ExpectedAverageBitrate;
}

uint64_t faf_measuredBitrateCapComparatorFn(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*(BytePtr + 8))
  {
    ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(a1);
  }

  else
  {
    ExpectedAverageBitrate = FigAlternateGetPeakBitRate(a1);
  }

  v7 = ExpectedAverageBitrate;
  if (*(BytePtr + 8))
  {
    PeakBitRate = FigAlternateGetExpectedAverageBitrate(a2);
  }

  else
  {
    PeakBitRate = FigAlternateGetPeakBitRate(a2);
  }

  if (v7 >= PeakBitRate)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 > PeakBitRate)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

CFStringRef faf_copyMeasuredBitrateCapDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*(BytePtr + 8))
  {
    v3 = "Average";
  }

  else
  {
    v3 = "Peak";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"MeasuredBitrate:%lld bps handicap:%.2f rate:%.2f Cap:%lld bps bitrateMeasure:%s", *BytePtr, *(BytePtr + 1), *(BytePtr + 2), *(BytePtr + 3), v3);
}

uint64_t faf_lowestVideoThenAudioComparatorFn(uint64_t a1, uint64_t a2)
{
  HasVideo = FigAlternateHasVideo(a1);
  v5 = FigAlternateHasVideo(a2);
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  v7 = FigAlternateGetNormalizedPeakBitrate(a2);
  if (HasVideo && !v5)
  {
    return -1;
  }

  if (!HasVideo && v5)
  {
    return 1;
  }

  if (NormalizedPeakBitrate >= v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (NormalizedPeakBitrate > v7)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

uint64_t faf_lowestPeakBitRateComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  if (!PeakBitRate)
  {
    return 1;
  }

  if (PeakBitRate < v4)
  {
    return -1;
  }

  return PeakBitRate != v4;
}

uint64_t FigAlternateMinimumRequiredBitrateFilterCreate(const __CFAllocator *a1, int a2, CFTypeRef *a3)
{
  *&bytes[4] = 0;
  v10 = 0;
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 16);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"MinimumRequiredBitrate", 600, &off_1F0AE0BA0, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateMinimumRequiredBitrateFilterCreate_cold_1(&v11);
    return v11;
  }

  return v7;
}

const UInt8 *faf_minimumRequiredBitrateFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 1) = 0;
  return result;
}

uint64_t faf_minimumRequiredBitrateFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateGetPeakBitRate(a1);
  if (result >= *BytePtr)
  {
    v5 = result;
    result = *(BytePtr + 1);
    if (!result || (result = FigAlternateGetPeakBitRate(result), v5 < result))
    {
      *(BytePtr + 1) = a1;
    }
  }

  return result;
}

uint64_t FigAlternateMinimumRequiredBitrateForHEVCFilterCreate(const __CFAllocator *a1, int a2, CFTypeRef *a3)
{
  *&bytes[4] = 0;
  v10 = 0;
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 16);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"MinimumRequiredBitrateForHEVC", 640, &off_1F0AE0BC8, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateMinimumRequiredBitrateForHEVCFilterCreate_cold_1(&v11);
    return v11;
  }

  return v7;
}

uint64_t faf_minimumRequiredBitrateForHEVCFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  result = FigAlternateHasVideoFormat(a1, 7);
  if (result || (result = FigAlternateHasVideoFormat(a1, 4), result))
  {
    if (PeakBitRate >= *BytePtr)
    {
      result = *(BytePtr + 1);
      if (!result || (result = FigAlternateGetPeakBitRate(result), PeakBitRate < result))
      {
        *(BytePtr + 1) = a1;
      }
    }
  }

  return result;
}

uint64_t faf_highestPeakBitRateComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  if (v4 >= PeakBitRate)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 > PeakBitRate)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t FigAlternateAllowListWithURLFilterCreate(uint64_t a1, const void *a2, int a3, char a4, CFTypeRef *a5)
{
  v6 = FigSimpleAlternateFilterCreate(a1, @"AllowListURLFilter", a3, &unk_1F0AE0C18, a2, a5);
  *(CMBaseObjectGetDerivedStorage() + 64) = a4;
  return v6;
}

uint64_t faf_alternateWithURLFilterFn(uint64_t a1, uint64_t a2)
{
  FigAlternateGetPlaylistAlternateURL(a1);

  return FigCFEqual();
}

CFStringRef faf_alternateWithURLFilterDescAddendum(uint64_t a1, __CFString *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    v3 = a2;
  }

  else
  {
    v3 = @"<redacted>";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"alternateURL: %@", v3);
}

uint64_t FigAlternateDenyListFilterCreate(uint64_t a1, const void *a2, const void *a3, unsigned int a4, int a5, CFTypeRef *a6)
{
  v6 = faf_lowestBitrateComparatorFn;
  if (!a5)
  {
    v6 = faf_denylistComparatorFn;
  }

  if (a4 >= 0x372)
  {
    v6 = 0;
  }

  v8 = 0uLL;
  v9 = faf_denyListFilterFn;
  v10 = v6;
  v11 = 0;
  return FigSimpleAlternateFilterCreate(a1, a3, a4, &v8, a2, a6);
}

uint64_t faf_lowestBitrateComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v5 = FigAlternateGetPeakBitRate(a2);
  if (PeakBitRate >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (PeakBitRate > v5)
  {
    result = 1;
  }

  else
  {
    result = v6;
  }

  if (!result)
  {

    return faf_sameBitrateComparatorFn(a1, a2);
  }

  return result;
}

uint64_t faf_denylistComparatorFn(const void *a1, const void *a2, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v7 = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
    v7 = 0;
  }

  v10 = v7;
  v11 = Count;
  faf_isAlternateInDenyList(a1, theArray, &v11);
  faf_isAlternateInDenyList(a2, theArray, &v10);
  if (v10 >= v11)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v10 > v11)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t FigAlternateHighestRankingScoreFilterCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  *bytes = 0;
  v9 = 0;
  v4 = CFDataCreate(a1, bytes, 16);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"HighestRankingScore", 460, &off_1F0AE0C40, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateHighestRankingScoreFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

UInt8 *faf_rankingScoreFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 1) = 0xBFF0000000000000;
  *result = 1;
  return result;
}

void faf_rankingScoreFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*BytePtr)
  {
    v4 = BytePtr;
    if (FigAlternateHasRankingScore(a1))
    {
      v5 = *(v4 + 1);
      if (v5 <= FigAlternateGetRankingScore(a1))
      {
        RankingScore = FigAlternateGetRankingScore(a1);
      }

      else
      {
        RankingScore = *(v4 + 1);
      }

      *(v4 + 1) = RankingScore;
    }

    else
    {
      *v4 = 0;
    }
  }
}

uint64_t FigAlternateFrameRateSwitchCapFilterCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  v9 = 0;
  v8 = 0;
  v4 = CFDataCreate(a1, &v8, 12);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"FrameRateSwitchCap", 450, &off_1F0AE0C68, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateFrameRateSwitchCapFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

void faf_frameRateSwitchCapFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);

  memset_pattern16(BytePtr, &unk_196E76620, 0xCuLL);
}

uint64_t faf_frameRateSwitchCapFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FrameRateBucket = FigAlternateGetFrameRateBucket(a1);
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  result = FigAlternateIsAudioOnly(a1);
  if (!result)
  {
    v7 = *&BytePtr[4 * FrameRateBucket];
    if (v7 >= NormalizedPeakBitrate)
    {
      v7 = NormalizedPeakBitrate;
    }

    *&BytePtr[4 * FrameRateBucket] = v7;
  }

  return result;
}

BOOL faf_frameRateSwitchCapFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FrameRateBucket = FigAlternateGetFrameRateBucket(a1);
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  return FigAlternateIsAudioOnly(a1) || (FrameRateBucket + 1) > 2 || *&BytePtr[4 * (FrameRateBucket + 1)] >= NormalizedPeakBitrate;
}

uint64_t FigAlternatePlaybackScoreAndBitRateFilterCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  *bytes = 0;
  v9 = 0;
  v4 = CFDataCreate(a1, bytes, 16);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"PlaybackScoreAndBitRate", 400, &off_1F0AE0C90, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternatePlaybackScoreAndBitRateFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

const UInt8 *faf_playbackScoreFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *result = 0;
  *(result + 1) = 0xBFF0000000000000;
  return result;
}

void faf_playbackScoreFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  if (!FigAlternateIsAudioOnly(a1) && BestVideoFormat)
  {
    v8 = 0;
    v5 = *(BytePtr + 1);
    FigAlternateGetRankingScoreOrPeakBWWithVideoCodecScore(a1, 0, &v8);
    if (v5 < v6)
    {
      *BytePtr = a1;
      FigAlternateGetRankingScoreOrPeakBWWithVideoCodecScore(a1, 0, &v8);
      *(BytePtr + 1) = v7;
    }
  }
}

BOOL faf_playbackScoreFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  result = 1;
  if (!IsAudioOnly)
  {
    if (BestVideoFormat)
    {
      PeakBitRate = FigAlternateGetPeakBitRate(a1);
      return PeakBitRate <= FigAlternateGetPeakBitRate(*BytePtr);
    }
  }

  return result;
}

uint64_t faf_highestBitrateComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v5 = FigAlternateGetPeakBitRate(a2);
  if (v5 >= PeakBitRate)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 > PeakBitRate)
  {
    result = 1;
  }

  else
  {
    result = v6;
  }

  if (!result)
  {

    return faf_sameBitrateComparatorFn(a1, a2);
  }

  return result;
}

uint64_t faf_lowestIndexFilterComparatorFn(uint64_t a1, uint64_t a2)
{
  AlternateIndex = FigAlternateGetAlternateIndex(a1);
  v4 = FigAlternateGetAlternateIndex(a2);
  if (AlternateIndex >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (AlternateIndex > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t FigAlternateSingleAlternateFilterCreate(uint64_t a1, const void *a2, int a3, const void *a4, int a5, CFTypeRef *a6)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = faf_allEqualMinSortingFn;
  }

  v8 = 0uLL;
  v9 = faf_singleAlternateFilterFn;
  v10 = v6;
  v11 = faf_singleAlternateFilterDescAddendum;
  return FigSimpleAlternateFilterCreate(a1, a4, a5, &v8, a2, a6);
}

uint64_t FigAlternateStartupScoreFilterCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = CFDataCreate(a1, v8, 40);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"StartupScore", 555, &off_1F0AE0D08, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateStartupScoreFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

UInt8 *faf_startupScoreFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *result = 257;
  result[2] = 0;
  *(result + 1) = 0xFFEFFFFFFFFFFFFFLL;
  result[16] = 0;
  *(result + 3) = 0xFFEFFFFFFFFFFFFFLL;
  *(result + 4) = 0;
  return result;
}

uint64_t faf_startupScoreFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  IsIFrameOnly = FigAlternateIsIFrameOnly(a1);
  StartupScore = FigAlternateGetStartupScore(a1);
  result = FigAlternateGetPeakBitRate(a1);
  if (!IsIFrameOnly)
  {
    *BytePtr = 0;
    if (IsAudioOnly)
    {
      if (StartupScore > *(BytePtr + 3))
      {
        *(BytePtr + 16) = 1;
        *(BytePtr + 3) = StartupScore;
        *(BytePtr + 9) = result;
      }
    }

    else
    {
      *(BytePtr + 1) = 0;
      if (StartupScore > *(BytePtr + 1))
      {
        *(BytePtr + 2) = 1;
        *(BytePtr + 1) = StartupScore;
        *(BytePtr + 8) = result;
      }
    }
  }

  return result;
}

uint64_t faf_startupScoreFilterComparatorFn(uint64_t a1, uint64_t a2)
{
  ZeroIndexedAlternateIndex = FigAlternateGetZeroIndexedAlternateIndex(a1);
  v4 = FigAlternateGetZeroIndexedAlternateIndex(a2);
  if (ZeroIndexedAlternateIndex >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (ZeroIndexedAlternateIndex > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t FigAlternatePassthroughFilterCreate(uint64_t a1, const __CFString *a2, int a3, CFTypeRef *a4)
{
  if (!a2)
  {
    FigAlternatePassthroughFilterCreate_cold_5(&v14);
    return v14;
  }

  if (!a4)
  {
    FigAlternatePassthroughFilterCreate_cold_4(&v14);
    return v14;
  }

  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigReentrantMutexCreate();
  *DerivedStorage = v9;
  if (!v9)
  {
    FigAlternatePassthroughFilterCreate_cold_3(&v14);
    return v14;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  *(DerivedStorage + 16) = Copy;
  if (!Copy)
  {
    FigAlternatePassthroughFilterCreate_cold_2(&v14);
    return v14;
  }

  v11 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 24) = v11;
  if (!v11)
  {
    FigAlternatePassthroughFilterCreate_cold_1(&v14);
    return v14;
  }

  v12 = 0;
  *(DerivedStorage + 8) = a3;
  *a4 = 0;
  return v12;
}

uint64_t FigAlternateTransitionBiasFilterCreate(void *a1, CFTypeRef cf, const void *a3, CFTypeRef *a4)
{
  if (cf)
  {
    v7 = CFRetain(cf);
  }

  else
  {
    v7 = 0;
  }

  __src[0] = v7;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  __src[1] = v8;
  return fsaf_createWithBytes(a1, @"TransitionBias", 570, faf_TransitionBiasFilterFn, 0, 0, 0, faf_TransitionBiasFilterAddendum, __src, 16, faf_TransitionBiasDeallocateCallback, a4);
}

uint64_t faf_TransitionBiasFilterFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (!*BytePtr)
  {
    return 0;
  }

  v4 = BytePtr;
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  result = FigAlternateHasAudioFormatID(a1, 0);
  if (!result)
  {
    return result;
  }

  if (FigAlternateGetAudioChannelCounts(a1, *v4, 0, 0))
  {
    return 0;
  }

  if (CFDictionaryContainsKey(*(v4 + 1), @"bitdepth"))
  {
    FigCFDictionaryGetInt32IfPresent();
    if (FigAlternateGetAudioBitDepth(a1, *v4))
    {
      return 0;
    }
  }

  if (!CFDictionaryContainsKey(*(v4 + 1), @"samplerate"))
  {
    return 1;
  }

  FigCFDictionaryGetDoubleIfPresent();
  return FigAlternateGetAudioSampleRate(a1, *v4) == 0.0;
}

CFStringRef faf_TransitionBiasFilterAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (CFDictionaryContainsKey(*(BytePtr + 1), @"bitdepth"))
  {
    Value = CFDictionaryGetValue(*(BytePtr + 1), @"bitdepth");
    CFStringAppendFormat(Mutable, 0, @" Bitdepth: %@", Value);
  }

  if (CFDictionaryContainsKey(*(BytePtr + 1), @"samplerate"))
  {
    v6 = CFDictionaryGetValue(*(BytePtr + 1), @"samplerate");
    CFStringAppendFormat(Mutable, 0, @" SampleRate: %@", v6);
  }

  v7 = CFDictionaryGetValue(*(BytePtr + 1), @"channels");
  v8 = CFStringCreateWithFormat(v3, 0, @"channels: %@%@", v7, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

void faf_TransitionBiasDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateHighestAtmosBitrateFilterCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  *bytes = 0;
  v9 = 0;
  v4 = CFDataCreate(a1, bytes, 16);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"HighestAtmosBitrateFilter", 635, off_1F0AE0D48, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateHighestAtmosBitrateFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

const UInt8 *faf_HighestAtmosBitrateFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *result = 0;
  *(result + 1) = 0;
  return result;
}

BOOL faf_HighestAtmosBitrateFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*BytePtr)
  {
    return 1;
  }

  v5 = *(BytePtr + 1);
  return !v5 || v5 == a1;
}

uint64_t FigAlternatePreferExclusiveAudioPassthroughFilterCreate(const __CFAllocator *a1, int a2, CFTypeRef *a3)
{
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 4);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"PreferExclusiveAudioPassthrough", 639, &unk_1F0AE0D70, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternatePreferExclusiveAudioPassthroughFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t faf_PreferExclusiveAudioPassthroughFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (FigAlternateHasAudioFormat(a1, 7) && BytePtr[2] || FigAlternateHasAudioFormat(a1, 6) && BytePtr[1])
  {
    return 1;
  }

  result = FigAlternateHasAudioFormat(a1, 5);
  if (result)
  {
    return *BytePtr != 0;
  }

  return result;
}

CFStringRef fivc_copyDescAddendum(int a1, CFDataRef theData)
{
  Count = *CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return CFStringCreateWithFormat(v3, 0, @"Channels:%ld", Count);
}

void fivc_deallocateContext(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t fivp_createFilter(void *a1, CFTypeRef cf, int a3, CFTypeRef *a4)
{
  __src[1] = 0;
  __src[2] = 0;
  if (cf)
  {
    v7 = CFRetain(cf);
  }

  else
  {
    v7 = 0;
  }

  __src[0] = v7;
  __src[3] = a3 == 0;
  if (a3)
  {
    v8 = @"VideoLayoutPreferenceMain";
  }

  else
  {
    v8 = @"VideoLayoutPreferenceDisc";
  }

  return fsaf_createWithBytes(a1, v8, 880, fivp_filterFn, 0, fivp_firstPassFn, fivp_filterInitFn, fivp_copyDescAddendum, __src, 32, fivp_deallocateContext, a4);
}

uint64_t FigAlternateVideoLayoutPinningFilterCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (a3)
  {

    return FigSimpleAlternateFilterCreate(a1, @"VideoLayoutPinning", 883, &unk_1F0AE0D98, a2, a3);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    FigAlternateVideoLayoutPinningFilterCreate_cold_1(&v6);
    return v6;
  }
}

CFStringRef fvlp_desc(uint64_t a1, const __CFArray *a2)
{
  VideoLayoutLoggingStringFromCollectionArray = FigAlternateCreateVideoLayoutLoggingStringFromCollectionArray(a2);
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"collection %@", VideoLayoutLoggingStringFromCollectionArray);
  if (VideoLayoutLoggingStringFromCollectionArray)
  {
    CFRelease(VideoLayoutLoggingStringFromCollectionArray);
  }

  return v3;
}

uint64_t FigAlternateSuppressDoVi5StereoFilterCreate(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {

    return FigSimpleAlternateFilterCreate(a1, @"SuppressDoVi5Stereo", 1000, &unk_1F0AE0DC0, 0, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigAlternateSuppressDoVi5StereoFilterCreate_cold_1(&v5);
    return v5;
  }
}

uint64_t FigAlternateSuppressDoVi20MonoFilterCreate(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {

    return FigSimpleAlternateFilterCreate(a1, @"SuppressDoVi20Mono", 1000, &unk_1F0AE0DE8, 0, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigAlternateSuppressDoVi20MonoFilterCreate_cold_1(&v5);
    return v5;
  }
}

BOOL fsdm_filterFn(__CFArray *a1)
{
  if (!FigAlternateHasVideoDolbyVisionHEVCProfile(a1, 20))
  {
    return 1;
  }

  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  v3 = 0;
  v4 = *MEMORY[0x1E69631B0];
  v5 = *(MEMORY[0x1E69631B0] + 8);
  do
  {
    if (VideoLayoutTags)
    {
      Count = CFArrayGetCount(VideoLayoutTags);
    }

    else
    {
      Count = 0;
    }

    v7 = v3 < Count;
    if (v3 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v3);
    *&tagBuffer.category = 0;
    tagBuffer.value = 0;
    numberOfTagsCopied = 0;
    CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_StereoView, &tagBuffer, 1, &numberOfTagsCopied);
    *&v12.category = v4;
    v12.value = v5;
    ++v3;
  }

  while (CMTagEqualToTag(tagBuffer, v12));
  return v7;
}

uint64_t FigAlternateMediaValidationForStereoVideoFilterCreate(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {

    return FigSimpleAlternateFilterCreate(a1, @"MediaValidationForStereoVideo", 1000, &unk_1F0AE0E10, 0, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigAlternateMediaValidationForStereoVideoFilterCreate_cold_1(&v5);
    return v5;
  }
}

BOOL fmvsv_filterFn(__CFArray *a1)
{
  if (!faf_alternateHasOnlyStereoVideo(a1))
  {
    return 1;
  }

  if (FigAlternateHasVideoFormat(a1, 4))
  {
    v2 = FigAlternateGetVideoRange(a1) == 1;
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
    v4 = 0;
    v5 = *MEMORY[0x1E6960668];
    v6 = *(MEMORY[0x1E6960668] + 8);
    while (1)
    {
      v7 = VideoLayoutTags ? CFArrayGetCount(VideoLayoutTags) : 0;
      if (v4 >= v7)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v4);
      *&tagBuffer.category = 0;
      tagBuffer.value = 0;
      numberOfTagsCopied = 0;
      CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_ProjectionType, &tagBuffer, 1, &numberOfTagsCopied);
      *&v12.category = v5;
      v12.value = v6;
      ++v4;
      if (CMTagEqualToTag(tagBuffer, v12))
      {
        return 1;
      }
    }
  }

  else if (FigAlternateHasVideoFormat(a1, 5))
  {
    return FigAlternateGetVideoRange(a1) == 1;
  }

  else
  {
    return FigAlternateHasVideoFormat(a1, 7) != 0;
  }

  return v2;
}

uint64_t FigAlternateAmbisonicOrderFilterCreate(const __CFAllocator *a1, int a2, int a3, CFNumberRef number, int a5, CFTypeRef *a6)
{
  valuePtr = 0;
  v20 = 0;
  if (a5)
  {
    v10 = 0;
  }

  else
  {
    v10 = faf_AmbisonicOrderFilterMinSortingFn;
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    LODWORD(valuePtr) = -1;
  }

  HIDWORD(valuePtr) = a2;
  LODWORD(v20) = a3;
  v11 = CFDataCreate(a1, &valuePtr, 16);
  if (v11)
  {
    v12 = v11;
    *&v15 = faf_AmbisonicOrderFilterInit;
    *(&v15 + 1) = faf_AmbisonicOrderFilterFirstPassFn;
    v16 = faf_AmbisonicOrderFilterFilterFn;
    v17 = v10;
    v18 = faf_AmbisonicOrderFilterAddendum;
    v13 = FigSimpleAlternateFilterCreate(a1, @"AmbisonicOrderAudio", 770, &v15, v11, a6);
    CFRelease(v12);
  }

  else
  {
    FigAlternateAmbisonicOrderFilterCreate_cold_1(&v15);
    return v15;
  }

  return v13;
}

const UInt8 *faf_AmbisonicOrderFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 3) = -1;
  return result;
}

void faf_AmbisonicOrderFilterFirstPassFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
  }

  AmbisonicsOrder = FigAlternateGetAmbisonicsOrder(a1, v10, v3, v4, v5, v6, v7, v8);
  if (AmbisonicsOrder > *(BytePtr + 3) && *(BytePtr + 1) <= AmbisonicsOrder && AmbisonicsOrder <= *(BytePtr + 2))
  {
    *(BytePtr + 3) = AmbisonicsOrder;
  }

  if (v10)
  {

    CFRelease(v10);
  }
}

BOOL faf_AmbisonicOrderFilterFilterFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    AmbisonicsOrder = FigAlternateGetAmbisonicsOrder(a1, 0, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
    AmbisonicsOrder = FigAlternateGetAmbisonicsOrder(a1, v10, v11, v12, v13, v14, v15, v16);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  return AmbisonicsOrder == *(BytePtr + 3);
}

uint64_t faf_AmbisonicOrderFilterMinSortingFn(const void *a1, const void *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
  }

  AmbisonicsOrder = FigAlternateGetAmbisonicsOrder(a1, v12, v6, v7, v8, v9, v10, v11);
  v20 = FigAlternateGetAmbisonicsOrder(a2, v12, v14, v15, v16, v17, v18, v19);
  if (v12)
  {
    CFRelease(v12);
  }

  if (AmbisonicsOrder >= v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  if (AmbisonicsOrder > v20)
  {
    return 1;
  }

  else
  {
    return v21;
  }
}

uint64_t FigAlternateStereoCapForMultichannelFilterCreate(void *a1, CFTypeRef cf, CFTypeRef *a3)
{
  __src[1] = 0;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  __src[0] = v5;
  return fsaf_createWithBytes(a1, @"StereoCapForMultichannel", 750, faf_stereoCapForMultichannelFilterFn, 0, faf_stereoCapForMultichannelFirstPassFn, faf_stereoCapForMultichannelFilterInit, 0, __src, 16, faf_stereoCapForMultichannelDeallocateContext, a3);
}

BOOL faf_stereoCapForMultichannelFilterFn(const void *a1, CFDataRef theData)
{
  v6 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, *BytePtr, &v6, 0);
  return AudioChannelCounts - v6 > 2 || FigAlternateGetExpectedAverageBitrate(a1) < *(BytePtr + 2);
}

const UInt8 *faf_stereoCapForMultichannelFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 2) = 0x7FFFFFFF;
  return result;
}

void faf_stereoCapForMultichannelDeallocateContext(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateMinimumRequiredPixelCountFilterCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  *bytes = a2;
  v10 = 0;
  v5 = CFDataCreate(a1, bytes, 16);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"MinimumRequiredPixelCount", 530, &off_1F0AE0E38, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateMinimumRequiredPixelCountFilterCreate_cold_1(&v11);
    return v11;
  }

  return v7;
}

const UInt8 *faf_preferPixelCountFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 1) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t faf_preferPixelCountFilterFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateGetPixelCount(a1);
  if (*BytePtr)
  {
    v5 = result < *BytePtr;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(BytePtr + 1);
    if (v6 >= result)
    {
      v6 = result;
    }

    *(BytePtr + 1) = v6;
  }

  return result;
}

uint64_t FigAlternateAggressiveWalkBackFilterCreate(const __CFAllocator *a1, int a2, int a3, CFTypeRef *a4)
{
  *bytes = a3;
  v11 = a2;
  v6 = CFDataCreate(a1, bytes, 8);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"AggressiveWalkBack", 530, &unk_1F0AE0E60, v6, a4);
    CFRelease(v7);
  }

  else
  {
    FigAlternateAggressiveWalkBackFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

BOOL faf_aggressiveWalkBackFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*BytePtr * 1.01 >= FigAlternateGetPeakBitRate(a1))
  {
    return 0;
  }

  v4 = BytePtr[1];
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  return FigMediaPlaylistUtilityDoesBandwidthAllowAggressiveWalkback(v4, PeakBitRate);
}

CFStringRef FigAlternateFilterCopyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v4 = v3(a1);
  }

  else
  {
    v4 = &stru_1F0B1AFB8;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    v6 = v5(a1);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(v2, 0, @"[FigAlternateFilter <%@:%p> priority:%d]", v4, a1, v6);
}

uint64_t faf_equal(__CFString *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4)
    {
      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    v4(a1);
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_5:
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    v5(a2);
  }

LABEL_8:

  return FigCFEqual();
}

uint64_t fsaf_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 72);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 72) = 0;
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fsaf_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(v3 + 48);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = v4(a1, v5);
LABEL_3:
    v7 = v6;
    FigSimpleMutexUnlock();
    v8 = *MEMORY[0x1E695E480];
    goto LABEL_4;
  }

  if (!v5)
  {
    v6 = CFRetain(&stru_1F0B1AFB8);
    goto LABEL_3;
  }

  v13 = FigCFCopyCompactDescription();
  v8 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"context:%@", v13);
  FigSimpleMutexUnlock();
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_4:
  Length = CFStringGetLength(v7);
  v10 = " ";
  if (!Length)
  {
    v10 = "";
  }

  v11 = CFStringCreateWithFormat(v8, 0, @"[FigSimpleAlternateFilter <%@:%p> priority:%d%s%@]", *DerivedStorage, a1, *(DerivedStorage + 8), v10, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}

uint64_t fsaf_apply(const void *a1, const __CFArray *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0u;
  v16 = 0u;
  if (!a2)
  {
    fsaf_apply_cold_3(&v17);
    Mutable = 0;
    goto LABEL_23;
  }

  v7 = DerivedStorage;
  v8 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fsaf_apply_cold_2(&v17);
LABEL_23:
    v11 = v17;
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (CFArrayGetCount(a2) < 1)
  {
    goto LABEL_15;
  }

  FigSimpleMutexLock();
  v10 = v7[2];
  if (v10)
  {
    v10(v7[9]);
  }

  *&v15 = a1;
  *&v16 = Mutable;
  if (!v7[3] || (v18.length = CFArrayGetCount(a2), v18.location = 0, CFArrayApplyFunction(a2, v18, fsaf_firstPassCFArrayApplierFn, &v15), v11 = DWORD2(v16), !DWORD2(v16)))
  {
    if (!v7[4] || (v19.length = CFArrayGetCount(a2), v19.location = 0, CFArrayApplyFunction(a2, v19, fsaf_applyCFArrayApplierFn, &v15), v11 = DWORD2(v16), !DWORD2(v16)))
    {
      if (CFArrayGetCount(Mutable) || !v7[5] || (CFRelease(Mutable), v12 = CFGetAllocator(a1), (Mutable = faf_copyMinimumAlternatesFromArray(v12, a2, v7[5], v7[9])) != 0))
      {
        v11 = 0;
      }

      else
      {
        fsaf_apply_cold_1(&v17);
        v11 = v17;
      }
    }
  }

  FigSimpleMutexUnlock();
  if (!v11)
  {
LABEL_15:
    if (*a3)
    {
      CFRelease(*a3);
    }

    v13 = CFGetAllocator(a1);
    v11 = 0;
    *a3 = CFArrayCreateCopy(v13, Mutable);
  }

LABEL_18:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

CFArrayRef faf_copyMinimumAlternatesFromArray(const __CFAllocator *a1, const __CFArray *a2, uint64_t a3, uint64_t a4)
{
  v12 = 0u;
  *theArray = 0u;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v9 = Mutable;
  if (a2 && Mutable)
  {
    theArray[1] = Mutable;
    *&v12 = a3;
    *(&v12 + 1) = a4;
    v14.length = CFArrayGetCount(a2);
    v14.location = 0;
    CFArrayApplyFunction(a2, v14, faf_minimumCFArrayApplierFn, &v12);
    Copy = CFArrayCreateCopy(a1, theArray[1]);
LABEL_4:
    CFRelease(v9);
    return Copy;
  }

  Copy = 0;
  result = 0;
  if (v9)
  {
    goto LABEL_4;
  }

  return result;
}

void faf_minimumCFArrayApplierFn(const void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (*a2)(a1, v4, *(a2 + 8));
    if (v5 == 1)
    {
      return;
    }

    if (v5 == -1)
    {
      *(a2 + 16) = a1;
      CFArrayRemoveAllValues(*(a2 + 24));
    }
  }

  else
  {
    *(a2 + 16) = a1;
  }

  v6 = *(a2 + 24);

  CFArrayAppendValue(v6, a1);
}

void faf_mergeFilterFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
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
}

uint64_t faf_mergeFilterCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  if (!a2)
  {
    faf_mergeFilterCopyProperty_cold_3(&v9);
    return v9;
  }

  if (!a4)
  {
    faf_mergeFilterCopyProperty_cold_2(&v9);
    return v9;
  }

  result = CFEqual(@"FAFProperty_CountOfChildFilters", a2);
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = faf_mergeFilterCountFilterAndItsChildren(*(DerivedStorage + 16));
    v9 = faf_mergeFilterCountFilterAndItsChildren(*(DerivedStorage + 24)) + v7;
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &v9);
    *a4 = v8;
    if (v8)
    {
      return 0;
    }

    else
    {
      faf_mergeFilterCopyProperty_cold_1(&v10);
      return v10;
    }
  }

  return result;
}

uint64_t faf_mergeFilterCountFilterAndItsChildren(uint64_t a1)
{
  v7 = 0;
  number = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 1;
  }

  v3 = v2(a1, @"FAFProperty_CountOfChildFilters", *MEMORY[0x1E695E480], &number);
  v4 = number;
  if (v3)
  {
    v5 = 1;
    if (!number)
    {
      return v5;
    }

    goto LABEL_4;
  }

  CFNumberGetValue(number, kCFNumberLongType, &v7);
  v4 = number;
  v5 = v7 + 1;
  if (number)
  {
LABEL_4:
    CFRelease(v4);
  }

  return v5;
}

uint64_t fhaf_finalize(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    CFRelease(v1);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fhaf_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *MEMORY[0x1E695E480];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v6)
  {
    v7 = v6(a1);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  StringFromHDCPState = FigAlternateGetStringFromHDCPState(*(DerivedStorage + 24));
  v9 = FigAlternateGetStringFromHDCPState(*(DerivedStorage + 28));
  v10 = CFStringCreateWithFormat(v3, 0, @"[FigHDCPAlternateFilter <%@: %p> priority: %d hdcp0:%@ hdcp1:%@]", v5, a1, v7, StringFromHDCPState, v9);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t faf_HDCPAlternateFilterApply(const void *a1, const __CFArray *a2, CFTypeRef *a3)
{
  CMBaseObjectGetDerivedStorage();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!a2)
  {
    faf_HDCPAlternateFilterApply_cold_2(&v30);
    v26 = v30;
    goto LABEL_61;
  }

  v7 = CFGetAllocator(a1);
  MutableCopy = CFArrayCreateMutableCopy(v7, 0, a2);
  if (!MutableCopy)
  {
    faf_HDCPAlternateFilterApply_cold_1(&v29);
    v26 = v29;
LABEL_61:
    if (!v26)
    {
      v9 = 0;
      goto LABEL_47;
    }

    goto LABEL_56;
  }

  v9 = MutableCopy;
  if (CFArrayGetCount(a2) < 1)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
      HDCPLevel = FigAlternateGetHDCPLevel(ValueAtIndex);
      if (!HDCPLevel)
      {
        v11 = 1;
      }

      if (HDCPLevel == 1)
      {
        v12 = 1;
      }

      if (v11)
      {
        v15 = v12 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        break;
      }

      ++v10;
    }

    while (v10 < CFArrayGetCount(a2));
  }

  if (v11 | v12)
  {
    v16 = v6 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = -1;
    if (v12)
    {
      if (faf_getHDCPState(a1, 1) > 1)
      {
        v17 = -1;
      }

      else
      {
        v17 = 1;
      }
    }

    if (v11 && v17 < 0)
    {
      if (faf_getHDCPState(a1, 0) <= 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = -1;
      }
    }

    if (v11)
    {
      v18 = v17 < 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = v17 >= 1 || v12 == 0;
    if (!v20 || v19)
    {
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v22 = Count + 1;
        do
        {
          v23 = CFArrayGetValueAtIndex(a2, v22 - 2);
          if (FigAlternateGetHDCPLevel(v23) > v17)
          {
            CFArrayRemoveValueAtIndex(v9, v22 - 2);
          }

          --v22;
        }

        while (v22 > 1);
      }
    }
  }

  while (1)
  {
LABEL_47:
    if (v9)
    {
      if (CFArrayGetCount(v9))
      {
        break;
      }

      CFRelease(v9);
    }

    v24 = CFGetAllocator(a1);
    v9 = faf_copyMinimumAlternatesFromArray(v24, a2, faf_HDCPAlternateMinSortingFn, 0);
    if (v9)
    {
      break;
    }

    v25 = faf_HDCPAlternateFilterApply_cold_3(&v31);
    v26 = v31;
    if (!v25)
    {
      goto LABEL_56;
    }
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v27 = CFGetAllocator(a1);
  *a3 = CFArrayCreateCopy(v27, v9);
  CFRelease(v9);
  v26 = 0;
LABEL_56:
  if (v6)
  {
    CFRelease(v6);
  }

  return v26;
}

uint64_t faf_getHDCPState(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2 == 1)
  {
    v4 = *(DerivedStorage + 28);
    if (v4 == -2)
    {
      v5 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v5)
      {
        v6 = v5;
        v4 = (*(DerivedStorage + 16))(1, v5);
        *(DerivedStorage + 28) = v4;
LABEL_8:
        CFRelease(v6);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(DerivedStorage + 24);
    if (v4 == -2)
    {
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        v6 = v7;
        v4 = (*(DerivedStorage + 8))(0, v7);
        *(DerivedStorage + 24) = v4;
        goto LABEL_8;
      }

LABEL_9:
      v4 = 4294967294;
    }
  }

LABEL_10:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t faf_HDCPAlternateMinSortingFn(uint64_t a1, uint64_t a2)
{
  HDCPLevel = FigAlternateGetHDCPLevel(a1);
  v4 = FigAlternateGetHDCPLevel(a2);
  if (HDCPLevel >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (HDCPLevel > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void fmsaaf_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef fmsaaf_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = 0;
  Mutable = 0;
  v4 = *MEMORY[0x1E695E480];
  while (1)
  {
    Count = *DerivedStorage;
    if (*DerivedStorage)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*DerivedStorage, v2);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
    Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
    FigGetCFStringForOSTypeValue();
    if (FigCFEqual())
    {
      v8 = Value == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (Mutable)
      {
        CFStringAppend(Mutable, @",");
      }

      else
      {
        Mutable = CFStringCreateMutable(v4, 0);
      }

      CFStringAppendFormat(Mutable, 0, @"%@", Value);
    }

    ++v2;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    v10 = v9(a1);
  }

  else
  {
    v10 = &stru_1F0B1AFB8;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v11)
  {
    v12 = v11(a1);
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  v13 = @"NULL";
  if (Mutable)
  {
    v13 = Mutable;
  }

  v14 = CFStringCreateWithFormat(v4, 0, @"[FigMediaSelectionAudibleAlternateFilter <%@: %p> priority: %d persistentIDs: %@]", v10, a1, v12, v13);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t faf_mediaSelectionAudibleAlternateFilterApply(const void *a1, const __CFArray *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    v8 = CFGetAllocator(a1);
    MutableCopy = CFArrayCreateMutableCopy(v8, 0, a2);
    if (MutableCopy)
    {
      v10 = MutableCopy;
      v22 = a1;
      v23 = a3;
      for (i = 0; ; ++i)
      {
        Count = *v7;
        if (*v7)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*v7, i);
        CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
        Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
        FigGetCFStringForOSTypeValue();
        if (FigCFEqual())
        {
          v15 = Value == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = CFArrayGetCount(a2);
          if (v16 >= 1)
          {
            v17 = v16 + 1;
            do
            {
              v18 = CFArrayGetValueAtIndex(a2, v17 - 2);
              AudioGroupLocatorMap = FigAlternateGetAudioGroupLocatorMap(v18);
              if (!FigAlternateIsIFrameOnly(v18) && AudioGroupLocatorMap && !CFDictionaryContainsKey(AudioGroupLocatorMap, Value))
              {
                CFArrayRemoveValueAtIndex(v10, v17 - 2);
              }

              --v17;
            }

            while (v17 > 1);
          }
        }
      }

      a1 = v22;
      a3 = v23;
      goto LABEL_20;
    }

    faf_mediaSelectionAudibleAlternateFilterApply_cold_1(&v24);
    result = v24;
  }

  else
  {
    faf_mediaSelectionAudibleAlternateFilterApply_cold_2(&v25);
    result = v25;
  }

  if (result)
  {
    return result;
  }

  v10 = 0;
LABEL_20:
  if (*a3)
  {
    CFRelease(*a3);
  }

  v20 = CFGetAllocator(a1);
  *a3 = CFArrayCreateCopy(v20, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  return 0;
}

uint64_t fsaf_filterFnNoContext(uint64_t a1, CFDataRef theData)
{
  v3 = *CFDataGetBytePtr(theData);

  return v3(a1);
}

uint64_t fsaf_ComparatorFnNoContext(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  v5 = *(CFDataGetBytePtr(theData) + 1);

  return v5(a1, a2, 0);
}

const __CFArray *faf_isMediaSelectionOptionOfflinePlayable(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  value = 0;
  FigAlternateGetRenditionInfoForMediaType(a2, a3, *(a1 + 16), *(a1 + 24), *(a1 + 32), 1, &value, 0, &v11);
  URLForCacheLookup = v11;
  if (!v11)
  {
    URLForCacheLookup = FigAlternateGetURLForCacheLookup(a2);
    v11 = URLForCacheLookup;
  }

  v6 = FigCFHTTPCreateURLString(URLForCacheLookup);
  v7 = v6;
  if (!value)
  {
    v8 = 0;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_9;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v13.length = CFArrayGetCount(*(a1 + 8));
    v13.location = 0;
    v8 = CFArrayContainsValue(v8, v13, value);
  }

  if (v7)
  {
LABEL_9:
    v9 = *a1;
    if (v9)
    {
      v14.length = CFArrayGetCount(v9);
      v14.location = 0;
      v8 = (CFArrayContainsValue(v9, v14, v7) | v8);
    }

    CFRelease(v7);
  }

  return v8;
}

uint64_t faf_videoRangePreferenceComparator(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (a1 > a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t faf_videoFormatPreferenceExactMatchComparator(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (a1 > a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t faf_videoFormatPreferenceFilterMinSortingFn(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v6 = *BytePtr;
  v7 = BytePtr[1];
  VideoRange = FigAlternateGetVideoRange(a1);
  v9 = FigAlternateGetVideoRange(a2);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  v11 = FigAlternateGetBestVideoFormat(a2);
  v12 = VideoRange;
  v13 = v9;
  v14 = faf_videoRangePreferenceComparator(v12, v9);
  if (v14)
  {
    v15 = v14;
    if (faf_videoRangePreferenceComparator(v6, v12) == -1)
    {
      v16 = -v15;
    }

    else if (faf_videoRangePreferenceComparator(v6, v13) == -1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0;
    if (v7)
    {
      if (v7 == v11 || v7 == BestVideoFormat)
      {
        v18 = faf_videoFormatPreferenceExactMatchComparator;
        v19 = (faf_videoFormatPreferenceExactMatchComparator)(BestVideoFormat, v11, 0);
      }

      else
      {
        v18 = faf_videoFormatPreferenceMixableMatchComparator;
        v19 = (faf_videoFormatPreferenceMixableMatchComparator)(BestVideoFormat, v11, 0);
      }

      if (v19)
      {
        v20 = v19;
        if ((v18)(v7, BestVideoFormat, 0) == -1)
        {
          v16 = -v20;
        }

        else if ((v18)(v7, v11, 0) == -1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v20;
        }
      }

      else
      {
        BestSupplementalVideoFormat = FigAlternateGetBestSupplementalVideoFormat(a1);
        v22 = FigAlternateGetBestSupplementalVideoFormat(a2);
        v23 = 1;
        if (BestSupplementalVideoFormat <= v22)
        {
          v23 = -1;
        }

        if (BestSupplementalVideoFormat == v22 || v6 != 3 || BestVideoFormat - 3 >= 3)
        {
          v16 = 0;
        }

        else
        {
          v16 = v23;
        }
      }
    }
  }

  return -v16;
}

uint64_t faf_videoFormatPreferenceMixableMatchComparator(unsigned int a1, unsigned int a2)
{
  if (a1 - 6 >= 0xFFFFFFFB)
  {
    v2 = 6;
  }

  else
  {
    v2 = a1;
  }

  if (v2 >= a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v2 > a2)
  {
    v3 = 1;
  }

  if (v2 == 6 && a2 - 6 >= 0xFFFFFFFB)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t faf_videoRangeMinSortingFn(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  VideoRange = FigAlternateGetVideoRange(a1);
  v6 = FigAlternateGetVideoRange(a2);
  v7 = *a3;
  v8 = faf_videoRangePreferenceComparator(VideoRange, v6);
  if (v8)
  {
    if (faf_videoRangePreferenceComparator(v7, VideoRange) == -1)
    {
      v8 = -v8;
    }

    else if (faf_videoRangePreferenceComparator(v7, v6) == -1)
    {
      v8 = 1;
    }
  }

  return -v8;
}

uint64_t faf_populateAudioFormatAlternateComparatorRec(const void *a1, uint64_t a2, uint64_t a3)
{
  faf_getAlternateAudioFormatInfo(a1, a2, a3, (a3 + 4), (a3 + 8), (a3 + 16));
  *(a3 + 12) = FigAlternateHasLosslessAudio(a1) == 0;
  result = FigAlternateGetAlternateIndex(a1);
  *(a3 + 24) = result;
  return result;
}

uint64_t faf_audioFormatPreferenceComparator(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a1;
  if (*a1 <= 1u)
  {
    v4 = 1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a2;
  if (*a2 <= 1u)
  {
    v6 = 1;
  }

  else
  {
    v6 = *a2;
  }

  v7 = a3[3];
  switch(v4)
  {
    case 7:
      v8 = BYTE2(v7);
      break;
    case 6:
      v8 = BYTE1(v7);
      break;
    case 5:
      v8 = a3[3];
      break;
    default:
      v8 = 0;
      break;
  }

  if (v6 == 5)
  {
    v9 = a3[3];
  }

  else
  {
    v9 = 0;
  }

  if (v6 == 6)
  {
    v9 = BYTE1(v7);
  }

  if (v6 == 7)
  {
    v9 = BYTE2(v7);
  }

  if (v4 != v6)
  {
    v10 = *a3;
    if (*a3 <= 8)
    {
      if (v10 == v4)
      {
        return 1;
      }

      if (v10 == v6)
      {
        return -1;
      }
    }
  }

  if (v8 | v9)
  {
    if (!v8 || v9)
    {
      if (v8 || !v9)
      {
        if (v8 && v9)
        {
          if (a3[3])
          {
            v11 = 6;
          }

          else
          {
            v11 = 0;
          }

          if (BYTE1(v7))
          {
            v12 = 8;
          }

          else
          {
            v12 = v11;
          }

          if (BYTE2(v7))
          {
            v13 = 16;
          }

          else
          {
            v13 = v12;
          }

          v14 = *(a1 + 4);
          v15 = *(a2 + 4);
          if (v14 > v15)
          {
            v16 = v15 < v13;
LABEL_55:
            v19 = 1;
            goto LABEL_71;
          }

          if (v14 < v15)
          {
            v16 = v14 < v13;
            goto LABEL_70;
          }

          if (v4 == v6)
          {
            return 0;
          }

          if (v3 == 7)
          {
            return 1;
          }

          if (v5 == 7)
          {
            return -1;
          }

          if (v3 == 6)
          {
            return 1;
          }

          if (v5 == 6)
          {
            return -1;
          }

          goto LABEL_97;
        }
      }

      else if (HIBYTE(v7) || *(a2 + 4) > a3[1])
      {
        return -1;
      }
    }

    else if (HIBYTE(v7) || *(a1 + 4) > a3[1])
    {
      return 1;
    }
  }

  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  if (v17 < v18)
  {
    return 1;
  }

  if (v17 > v18)
  {
    return -1;
  }

  v20 = *(a1 + 4);
  v21 = *(a2 + 4);
  if (v20 > v21)
  {
    v16 = v21 < a3[1];
    goto LABEL_55;
  }

  if (v20 < v21)
  {
    v16 = v20 < a3[1];
LABEL_70:
    v19 = -1;
LABEL_71:
    if (!v16)
    {
      return -v19;
    }

    return v19;
  }

  if (*(a3 + 16) && *(a1 + 12) != *(a2 + 12))
  {
    v19 = -1;
    if (*(a1 + 12))
    {
      return 1;
    }
  }

  else
  {
    v22 = *(a3 + 5);
    if (v22 < 1 || (v23 = *(a1 + 16), v24 = *(a2 + 16), v23 == v24))
    {
LABEL_86:
      if (v4 == v6)
      {
        return 0;
      }

      goto LABEL_97;
    }

    v25 = &a3[4 * v22];
    v26 = *(v25 + 5);
    if (v22 != 1)
    {
      v27 = (v25 + 10);
      while (v20 > *(v27 - 2))
      {
        v27 -= 2;
        v16 = v22-- <= 1;
        if (v16)
        {
          goto LABEL_84;
        }
      }

      v26 = *v27;
    }

LABEL_84:
    if (v23 <= v26 != v24 > v26)
    {
      if (v23 <= v26)
      {
        goto LABEL_86;
      }

      if (v23 < v24)
      {
        return 1;
      }

      if (v23 <= v24)
      {
        v19 = 0;
      }

      else
      {
        v19 = -1;
      }

      if (v4 != v6 && v23 <= v24)
      {
LABEL_97:
        v29 = *(a1 + 24);
        v30 = *(a2 + 24);
        v16 = v29 <= v30;
        v19 = v29 < v30;
        if (!v16)
        {
          return -1;
        }
      }
    }

    else
    {
      v19 = -1;
      if (v23 <= v26)
      {
        return 1;
      }
    }
  }

  return v19;
}

uint64_t faf_audioFormatPreferenceFilterMinSortingFn(const void *a1, const void *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  faf_populateAudioFormatAlternateComparatorRec(a1, *(BytePtr + 2), v8);
  faf_populateAudioFormatAlternateComparatorRec(a2, *(BytePtr + 2), v7);
  return -faf_audioFormatPreferenceComparator(v8, v7, BytePtr);
}

void faf_getAlternateAudioFormatInfo(const void *a1, int a2, int *a3, _DWORD *a4, _DWORD *a5, double *a6)
{
  valuePtr = a2;
  if (a2 < 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  BestAudioFormat = FigAlternateGetBestAudioFormat(a1);
  v13 = (BestAudioFormat - 1) < 4 || BestAudioFormat;
  *a3 = v13;
  *a4 = FigAlternateGetAudioChannelCounts(a1, v11, a5, 0);
  if (a6)
  {
    *a6 = FigAlternateGetAudioSampleRate(a1, v11);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t faf_GetSpecializedChannelUsage(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {

    return FigAlternateGetSpecializedAudioChannelUsage(a1, 0);
  }

  else
  {
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
    SpecializedAudioChannelUsage = FigAlternateGetSpecializedAudioChannelUsage(a1, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    return SpecializedAudioChannelUsage;
  }
}

uint64_t faf_ImmersiveAudioComparator(const void *a1, const void *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  SpecializedChannelUsage = faf_GetSpecializedChannelUsage(a1, theData);
  v8 = faf_GetSpecializedChannelUsage(a2, theData);
  if (SpecializedChannelUsage >= v8)
  {
    if (SpecializedChannelUsage <= v8)
    {
      return 0;
    }

    v9 = SpecializedChannelUsage <= *(BytePtr + 6);
    v10 = -1;
  }

  else
  {
    v9 = v8 <= *(BytePtr + 6);
    v10 = 1;
  }

  if (v9)
  {
    return -v10;
  }

  else
  {
    return v10;
  }
}

void faf_defaultAudioPreferenceFinalize(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  if (v1)
  {

    CFRelease(v1);
  }
}

CFStringRef faf_defaultAudioPreferenceCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v4 = v3(a1);
  }

  else
  {
    v4 = &stru_1F0B1AFB8;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    v6 = v5(a1);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(v2, 0, @"[FigAlternateFilter <%@: %p> priority: %d]", v4, a1, v6);
}

uint64_t faf_willRequire4K60Decode(uint64_t a1)
{
  if (FigAlternateIsIFrameOnly(a1) || FigAlternateIsAudioOnly(a1))
  {
    return 0;
  }

  result = FigAlternateIs4k(a1);
  if (result)
  {
    FrameRate = FigAlternateGetFrameRate(a1);
    result = FigFrameRateToFrameRateBucket(FrameRate);
    if (result)
    {
      if (FigAlternateHasVideoFormat(a1, 4))
      {
        v4 = 1;
      }

      else
      {
        v4 = FigAlternateHasVideoFormat(a1, 7) != 0;
      }

      if (FigAlternateHasVideoFormat(a1, 5))
      {
        v5 = 1;
      }

      else
      {
        v5 = FigAlternateHasVideoFormat(a1, 8) != 0;
      }

      return v5 | v4;
    }
  }

  return result;
}

BOOL faf_peakBitRateCapFilterFn(uint64_t a1, const __CFNumber *a2)
{
  valuePtr = 0;
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
  return PeakBitRate <= valuePtr;
}

uint64_t faf_peakBitRateCapComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  if (PeakBitRate >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (PeakBitRate > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

CFStringRef faf_copyPeakBitRateCapDescAddendum(int a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d bps", valuePtr);
}

CFIndex faf_isAlternateInDenyList(const void *a1, const __CFArray *a2, CFIndex *a3)
{
  result = FigCFArrayContainsValue();
  if (a3)
  {
    if (result)
    {
      v7.length = CFArrayGetCount(a2);
      v7.location = 0;
      result = CFArrayGetLastIndexOfValue(a2, v7, a1);
      *a3 = result;
    }
  }

  return result;
}

uint64_t faf_sameBitrateComparatorFn(uint64_t a1, uint64_t a2)
{
  RankingScore = FigAlternateGetRankingScore(a1);
  v5 = FigAlternateGetRankingScore(a2);
  v6 = RankingScore == -1.0 || v5 == -1.0;
  if (v6 || (RankingScore > v5 ? (result = -1) : (result = RankingScore < v5), !result))
  {
    AlternateIndex = FigAlternateGetAlternateIndex(a1);
    v9 = FigAlternateGetAlternateIndex(a2);
    if (AlternateIndex >= v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }

    if (AlternateIndex > v9)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

void faf_passthroughFilterFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexDestroy();
  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[3];
  if (v4)
  {

    dispatch_release(v4);
  }
}

CFStringRef faf_passthroughFilterCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  FigSimpleMutexUnlock();
  v5 = *MEMORY[0x1E695E480];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(a1);
  }

  else
  {
    v7 = &stru_1F0B1AFB8;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    v9 = v8(a1);
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(v5, 0, @"[PassthroughFilter <%@: %p> priority: %d Total Alternate %ld]", v7, a1, v9, Count);
}

uint64_t faf_passthroughFilterCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    faf_passthroughFilterCopyProperty_cold_3(&v14);
    return v14;
  }

  if (!a4)
  {
    faf_passthroughFilterCopyProperty_cold_2(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    v10 = 4294954512;
    goto LABEL_10;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    Copy = 0;
    goto LABEL_9;
  }

  Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v8);
  if (Copy)
  {
LABEL_9:
    v10 = 0;
    *a4 = Copy;
    goto LABEL_10;
  }

  faf_passthroughFilterCopyProperty_cold_1(&v12);
  v10 = v12;
LABEL_10:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t faf_passthroughFilterApply(uint64_t a1, const __CFArray *a2, CFArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = MEMORY[0x1E695E480];
  if (a2)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
    if (!Copy)
    {
      faf_passthroughFilterApply_cold_1(&v12);
      v8 = v12;
      goto LABEL_12;
    }
  }

  else
  {
    Copy = 0;
  }

  v9 = FigCFEqual();
  v10 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = Copy;
  if (Copy)
  {
    CFRetain(Copy);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (!v9)
  {
    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v8 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  if (a3)
  {
    *a3 = CFArrayCreateCopy(*v6, a2);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return v8;
}

__n128 fivp_filterInitFn(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *(BytePtr + 8) = result;
  return result;
}

CFStringRef fivp_copyDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *(BytePtr + 1);
  if (v3 == 0xFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  v4 = BytePtr;
  Count = *BytePtr;
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (v3 >= Count)
  {
LABEL_7:
    VideoLayoutLoggingStringFromCollection = @"Passthru";
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"lowestplayable:%@", @"Passthru");
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*v4, *(v4 + 1));
    VideoLayoutLoggingStringFromCollection = FigAlternateCreateVideoLayoutLoggingStringFromCollection(ValueAtIndex);
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"lowestplayable:%@", VideoLayoutLoggingStringFromCollection);
    if (!VideoLayoutLoggingStringFromCollection)
    {
      return v8;
    }
  }

  CFRelease(VideoLayoutLoggingStringFromCollection);
  return v8;
}

void fivp_deallocateContext(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

CFIndex fiv_getAlternatePlayableAtPreferenceForChannelCapability(__CFArray *a1, const __CFArray *a2, CFIndex a3)
{
  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  if (VideoLayoutTags)
  {
    v6 = VideoLayoutTags;
    if (CFArrayGetCount(VideoLayoutTags))
    {
      Count = CFArrayGetCount(v6);
      if (Count <= a3)
      {
        v8 = Count - 1;
      }

      else
      {
        v8 = a3;
      }

      CFArrayGetValueAtIndex(v6, v8);
      v9 = 0;
      if (!a2)
      {
        goto LABEL_8;
      }

LABEL_7:
      for (i = CFArrayGetCount(a2); v9 < i; i = 0)
      {
        CFArrayGetValueAtIndex(a2, v9);
        if (FigCFEqual())
        {
          return v9;
        }

        ++v9;
        if (a2)
        {
          goto LABEL_7;
        }

LABEL_8:
        ;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL faf_alternateHasOnlyStereoVideo(__CFArray *a1)
{
  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  v2 = 0;
  v3 = VideoLayoutTags != 0;
  v4 = *MEMORY[0x1E69631A0];
  v5 = *(MEMORY[0x1E69631A0] + 8);
  while (1)
  {
    v6 = VideoLayoutTags ? CFArrayGetCount(VideoLayoutTags) : 0;
    if (v2 >= v6)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v2);
    *&tagBuffer.category = 0;
    tagBuffer.value = 0;
    numberOfTagsCopied = 0;
    CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_StereoView, &tagBuffer, 1, &numberOfTagsCopied);
    *&v11.category = v4;
    v11.value = v5;
    ++v2;
    if (!CMTagEqualToTag(tagBuffer, v11))
    {
      return 0;
    }
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_3_39(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, const __CFDictionary *a15, int a16, char a17)
{

  return FigAlternatePreferredAudioFormatFilterCreate(v17, a12, 2u, a15, a17, v18, a16, (v19 - 128));
}

void OUTLINED_FUNCTION_5_37()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 128) = 0;
}

const UInt8 *OUTLINED_FUNCTION_7_23(int a1, CFDataRef theData)
{

  return CFDataGetBytePtr(theData);
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return FigAlternateFilterTreeCreate(v0, (v1 - 112));
}

uint64_t OUTLINED_FUNCTION_12_18(const __CFAllocator *a1, const __CFNumber *a2, int a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{

  return FigAlternateImmersiveAudioPreferenceFilterCreate(a1, a2, a3, -1, 1, a6);
}

uint64_t OUTLINED_FUNCTION_23_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{

  return FigAlternateEligibleLosslessAudioFilterCreate(v13, a13, (v14 - 176));
}

uint64_t OUTLINED_FUNCTION_24_8(const __CFAllocator *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{

  return FigAlternatePreferredAudioFormatFilterCreate(a1, a2, a3, v8, v9, v10, v11, a8);
}

const UInt8 *OUTLINED_FUNCTION_25_11(int a1, CFDataRef theData)
{

  return CFDataGetBytePtr(theData);
}

uint64_t FigDataQueueRemoteSetupRemoteXPCClientIfNecessary(const __CFAllocator *a1, int a2, uint64_t (*a3)(uint64_t, CFTypeRef *), uint64_t a4)
{
  v12[4] = a1;
  cf = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_block_invoke;
  v12[3] = &__block_descriptor_tmp_32;
  if (FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_sFigDataQueueRemoteXPCRemoteClientByPIDMutexRegisterOnce != -1)
  {
    dispatch_once(&FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_sFigDataQueueRemoteXPCRemoteClientByPIDMutexRegisterOnce, v12);
  }

  if (!gFigDataQueueRemoteXPCRemoteClientByPIDTable)
  {
    FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_cold_3(&value);
    return value;
  }

  FigSimpleMutexLock();
  value = CFDictionaryGetValue(gFigDataQueueRemoteXPCRemoteClientByPIDTable, a2);
  if (value)
  {
    v8 = 0;
LABEL_6:
    Mutable = 0;
    goto LABEL_13;
  }

  v10 = a3(a4, &cf);
  if (v10)
  {
    v8 = v10;
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(a1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetInt32();
    if (!FigXPCRemoteClientCreateWithXPCEndpoint())
    {
      CFDictionarySetValue(gFigDataQueueRemoteXPCRemoteClientByPIDTable, a2, value);
      if (value)
      {
        CFRelease(value);
      }

      v8 = 0;
      goto LABEL_13;
    }

    FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_cold_1(&v15);
  }

  else
  {
    FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_cold_2(&v15);
  }

  v8 = v15;
LABEL_13:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

CFMutableDictionaryRef __FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_block_invoke(uint64_t a1)
{
  gFigDataQueueRemoteXPCRemoteClientByPIDMutex = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*(a1 + 32), 0, 0, MEMORY[0x1E695E9E8]);
  gFigDataQueueRemoteXPCRemoteClientByPIDTable = result;
  return result;
}

uint64_t FigDataQueueRemoteCreateWithObjectID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, CFTypeRef *a7)
{
  v10 = a1;
  cf = 0;
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a7)
  {
    FigDataQueueRemoteCreateWithObjectID_cold_4(&time1);
    goto LABEL_15;
  }

  FigDataQueueGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
LABEL_18:
    value_low = v11;
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = FigReentrantMutexCreate();
  *(DerivedStorage + 24) = v13;
  if (!v13)
  {
    FigDataQueueRemoteCreateWithObjectID_cold_3(&time1);
    goto LABEL_15;
  }

  v14 = FigSimpleMutexCreate();
  *(DerivedStorage + 64) = v14;
  if (!v14)
  {
    FigDataQueueRemoteCreateWithObjectID_cold_2(&time1);
    goto LABEL_15;
  }

  if ((a6->flags & 0x1D) == 1 && (a5->flags & 0x1D) == 1)
  {
    time1 = *a6;
    time2 = *a5;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      FigDataQueueRemoteCreateWithObjectID_cold_1(&time1);
      goto LABEL_15;
    }
  }

  v15 = *&a5->value;
  *(DerivedStorage + 88) = a5->epoch;
  *(DerivedStorage + 72) = v15;
  v16 = *&a6->value;
  *(DerivedStorage + 112) = a6->epoch;
  *(DerivedStorage + 96) = v16;
  v17 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 160) = v17;
  if (!v17)
  {
    value_low = 4294951505;
    goto LABEL_16;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(gFigDataQueueRemoteXPCRemoteClientByPIDTable, v10);
  if (!Value)
  {
    FigDataQueueRemoteCreateWithObjectID_cold_5(DerivedStorage, v10, &time1);
LABEL_15:
    value_low = LODWORD(time1.value);
    goto LABEL_16;
  }

  *DerivedStorage = CFRetain(Value);
  *(DerivedStorage + 8) = v10;
  FigSimpleMutexUnlock();
  v11 = FigXPCRemoteClientAssociateObject();
  if (v11)
  {
    goto LABEL_18;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  *(DerivedStorage + 16) = a2;
  value_low = FigXPCRemoteClientCopyMemoryOrigin();
  if (!value_low)
  {
    *a7 = cf;
    return value_low;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t dqr_HandleDeadServerConnection(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 176) = 1;
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFDictionaryRemoveValue(gFigDataQueueRemoteXPCRemoteClientByPIDTable, v3);
    *(DerivedStorage + 8) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigDataQueueRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = 0;
      *a2 = *(DerivedStorage + 16);
    }

    else
    {
      FigDataQueueRemoteGetObjectID_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigDataQueueRemoteGetObjectID_cold_2(&v6);
    return v6;
  }

  return result;
}

__CFString *dqr_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 176))
  {
    v4 = "SERVER DIED";
  }

  else
  {
    v4 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<DataQueueRemote %p>, remoteClient %p, ObjectID: %016llx %s", a1, *DerivedStorage, *(DerivedStorage + 16), v4);
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t dqr_copyProperty(const void *a1, uint64_t a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = DerivedStorage;
    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v16 = FigXPCSendStdCopyPropertyMessage();
      FigSimpleMutexUnlock();
      return v16;
    }

    cf = 0;
    if (*(v9 + 168) && (v10 = FigCFWeakReferenceHolderCopyReferencedObject(), (cf = v10) != 0))
    {
      v11 = 0;
    }

    else
    {
      v11 = CFDictionaryCreate(a3, &kFigSampleBufferConsumerForDataQueueOption_ConsumeAsynchronously, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = FigSampleBufferConsumerForDataQueueCreate(a1, a3, v11, &cf);
      if (v12)
      {
        v15 = v12;
LABEL_15:
        FigSimpleMutexUnlock();
        if (v11)
        {
          CFRelease(v11);
        }

        return v15;
      }

      v13 = *(v9 + 168);
      if (v13)
      {
        CFRelease(v13);
        *(v9 + 168) = 0;
      }

      v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v9 + 168) = v14;
      v10 = cf;
      if (!v14)
      {
        if (cf)
        {
          CFRelease(cf);
        }

        v15 = 4294951505;
        goto LABEL_15;
      }
    }

    v15 = 0;
    *a4 = v10;
    goto LABEL_15;
  }

  dqr_copyProperty_cold_1(&v19);
  return v19;
}

double dqr_setProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    if (FigCFEqual())
    {
      if (!a3 || (TypeID = CMTimebaseGetTypeID(), TypeID == CFGetTypeID(a3)))
      {
        FigSimpleMutexLock();
        if (*(v7 + 176))
        {
          dqr_setProperty_cold_1(v20);
LABEL_20:
          FigSimpleMutexUnlock();
          return result;
        }

        cf = 0;
        v9 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        v10 = 0;
        if (FigCFEqual())
        {
          goto LABEL_18;
        }

        v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
        if (v10)
        {
          v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *v10 = v11;
          if (v11)
          {
            *(v10 + 8) = 1;
LABEL_10:
            v12 = v9[20];
            if (!a3)
            {
              v20[0] = MEMORY[0x1E69E9820];
              v20[1] = 0x40000000;
              v20[2] = __dqr_RebuildTimebaseSync_block_invoke;
              v20[3] = &__block_descriptor_tmp_16_0;
              v20[4] = v10;
              dispatch_sync(v12, v20);
              v13 = v9[18];
              v9[18] = 0;
              if (!v13)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

            if (!FigSyncMomentSourceCreateWithDispatchQueueAndDestructor2(dqr_SyncServerTimebaseToMoment, v10, dqr_DestroyTimebaseSyncState, a3, v12, &cf))
            {
              v13 = v9[18];
              v9[18] = a3;
              CFRetain(a3);
              v10 = 0;
              if (!v13)
              {
LABEL_14:
                v14 = v9[19];
                v15 = cf;
                v9[19] = cf;
                if (v15)
                {
                  CFRetain(v15);
                }

                if (v14)
                {
                  CFRelease(v14);
                }

                goto LABEL_18;
              }

LABEL_13:
              CFRelease(v13);
              goto LABEL_14;
            }

LABEL_18:
            FigSimpleMutexUnlock();
            dqr_DestroyTimebaseSyncState(v10);
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_20;
          }

          v18 = 348;
        }

        else
        {
          v18 = 345;
        }

        v19 = dqr_setProperty_cold_2(v18, v10);
        v10 = 0;
        if (!v19)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      v17 = qword_1EAF177C8;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294951506, "<<<< DQ-Remote >>>>", 529, v3);
    }

    else
    {

      FigXPCSendStdSetPropertyMessage();
    }
  }

  else
  {
    dqr_setProperty_cold_3(v20);
  }

  return result;
}

void dqr_DestroyTimebaseSyncState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t dqr_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, const void *a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    dqr_InstallLowWaterTrigger_cold_4(&v12);
    v10 = v12;
    goto LABEL_14;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    dqr_InstallLowWaterTrigger_cold_1(&v12);
  }

  else if ((*(DerivedStorage + 108) & 0x1D) == 1)
  {
    if (!*(DerivedStorage + 176))
    {
      *(DerivedStorage + 120) = a2;
      if (a3)
      {
        v8 = CFRetain(a3);
      }

      else
      {
        v8 = 0;
      }

      *(DerivedStorage + 128) = v8;
      if (a4)
      {
        dispatch_retain(a4);
      }

      *(DerivedStorage + 136) = a4;
      v9 = FigXPCCreateBasicMessage();
      if (!v9)
      {
        v9 = FigXPCRemoteClientSendSyncMessage();
      }

      v10 = v9;
      goto LABEL_13;
    }

    dqr_InstallLowWaterTrigger_cold_3(&v12);
  }

  else
  {
    dqr_InstallLowWaterTrigger_cold_2(&v12);
  }

  v10 = v12;
LABEL_13:
  FigSimpleMutexUnlock();
LABEL_14:
  FigXPCRemoteClientKillServerOnTimeout();
  return v10;
}

uint64_t FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_40 != -1)
  {
    FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey_cold_1();
  }

  return FigCFDictionaryGetValueIfPresent();
}

CFDictionaryRef rvt_initVideoTargetToReceiverPropertyMapping(CFDictionaryRef *a1)
{
  v2 = 0;
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  *keys = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  v3 = off_1E7483310;
  do
  {
    v4 = *v3;
    keys[v2] = **(v3 - 1);
    *(v6 + v2 * 8) = *v4;
    ++v2;
    v3 += 2;
  }

  while (v2 != 8);
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v6, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a1 = result;
  return result;
}

uint64_t videoTarget_getInstanceTypeFromCreationOptions(uint64_t a1, __CFString **a2)
{
  if (a2)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetValueIfPresent();
    result = 0;
    *a2 = @"Remote";
  }

  else
  {
    videoTarget_getInstanceTypeFromCreationOptions_cold_1(&v4);
    return v4;
  }

  return result;
}

uint64_t FigVTTCaptionWriterCreateForDocument(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigVTTCaptionWriterCreateForDocument_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigVTTCaptionWriterCreateForDocument_cold_1(&v8);
    return v8;
  }

  FigVTTCaptionWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigBytePumpGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figVTTCaptionWriterForDocument_Finalize()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

void fcwvtt_initCaptionStylePropertyToVTTAttributesMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614E8], FigVTTDocumentWriterMapPropertyToAttribute_TextColor);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961458], FigVTTDocumentWriterMapPropertyToAttribute_BackgroundColor);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614A0], FigVTTDocumentWriterMapPropertyToAttribute_FontWeight);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961480], FigVTTDocumentWriterMapPropertyToAttribute_FontStyle);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961460], FigVTTDocumentWriterMapPropertyToAttribute_Decoration);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961470], FigVTTDocumentWriterMapPropertyToAttribute_FontFamily);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961478], FigVTTDocumentWriterMapPropertyToAttribute_FontSize);
  sCaptionStylePropertyToVTTAttributesMapping = Mutable;
}

uint64_t OUTLINED_FUNCTION_3_40(uint64_t a1, const void *a2)
{

  return FigVTTNodeSetAttribute(v3, a2, v2);
}

void OUTLINED_FUNCTION_6_33(uint64_t a1, uint64_t a2, const void *a3)
{

  CFArrayInsertValueAtIndex(v4, v3, a3);
}

uint64_t FigCFHTTPReadWithAdditionalHeaders(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, uint64_t a8, void *a9)
{
  if (a6)
  {
    FigByteFlumeGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      HTTPRequest = 4294954511;
      goto LABEL_10;
    }

    v17 = *(DerivedStorage + 72);
    if (v17 == 1)
    {
      if (*(DerivedStorage + 216) <= a3)
      {
        FigCFHTTPReadWithAdditionalHeaders_cold_1(&v40);
        HTTPRequest = v40;
        goto LABEL_10;
      }
    }

    else if (v17 == 2)
    {
LABEL_9:
      HTTPRequest = 4294954361;
LABEL_10:
      FigRetainProxyUnlockMutex();
      return HTTPRequest;
    }

    if (!*(DerivedStorage + 392))
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (*(DerivedStorage + 72) == 1)
      {
        v21 = *(DerivedStorage + 216);
        if (a4 + a3 > v21)
        {
          a4 = v21 - a3;
        }
      }

      v22 = *(DerivedStorage + 224);
      v23 = *MEMORY[0x1E695E480];
      if (v22)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v23, 0, v22);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v25 = MutableCopy;
      if (MutableCopy)
      {
        if (!*(DerivedStorage + 72))
        {
          fbf_ApplyCacheHeaders(DerivedStorage, MutableCopy);
        }

        if (a2)
        {
          CFDictionaryApplyFunction(a2, FigCFHTTPAddHeader, v25);
        }

        v26 = malloc_type_calloc(1uLL, 0x90uLL, 0x10E0040FE5446C7uLL);
        if (v26)
        {
          v27 = v26;
          v26[27] = 1;
          *v26 = a3;
          *(v26 + 1) = a4;
          if (a7)
          {
            v28 = CFRetain(a7);
          }

          else
          {
            v28 = 0;
          }

          *(v27 + 40) = v28;
          *(v27 + 48) = a8;
          *(v27 + 16) = a6;
          *(v27 + 56) = FigRetainProxyRetain();
          Allocator = CMMemoryPoolGetAllocator(*(DerivedStorage + 368));
          if (Allocator)
          {
            Allocator = CFRetain(Allocator);
          }

          *(v27 + 72) = Allocator;
          *(v27 + 88) = CFRetain(v25);
          if (a5)
          {
            v30 = CFRetain(a5);
          }

          else
          {
            v30 = 0;
          }

          *(v27 + 96) = v30;
          v31 = *(DerivedStorage + 80);
          *(DerivedStorage + 80) = v31 + 1;
          *(v27 + 64) = v31;
          if (!*(DerivedStorage + 56))
          {
            *(DerivedStorage + 448) = 1;
            fbf_SetInactivityMonitorTimer(DerivedStorage, *(DerivedStorage + 464));
          }

          *(v27 + 128) = 0;
          v32 = *(DerivedStorage + 64);
          *(v27 + 136) = v32;
          *v32 = v27;
          *(DerivedStorage + 64) = v27 + 128;
          *(v27 + 126) = 1;
          if (a9)
          {
            *a9 = *(v27 + 64);
          }

          if (*(DerivedStorage + 576) == 0.0)
          {
            *(DerivedStorage + 576) = Current;
          }

          if (*(DerivedStorage + 584) == 0.0)
          {
            *(DerivedStorage + 584) = CFAbsoluteTimeGetCurrent();
          }

          *(v27 + 36) = fbf_CreateHTTPRequestFlags(DerivedStorage);
          HTTPRequest = fbf_CreateHTTPRequest(DerivedStorage, v27, *v27, *(v27 + 8));
          *(DerivedStorage + 284) = 0;
          *(DerivedStorage + 320) = FigGetUpTimeNanoseconds();
          if (HTTPRequest)
          {
            if (!*(DerivedStorage + 72))
            {
              *(DerivedStorage + 72) = 2;
            }

            v33 = *(DerivedStorage + 44);
            if (*(DerivedStorage + 40))
            {
              v34 = v33 == 1;
            }

            else
            {
              v34 = 0;
            }

            v36 = v34 || v33 == 2;
            FigNetworkInterfaceReporterSamplePhysicalStatistics(*(DerivedStorage + 592), *(v27 + 24), *(DerivedStorage + 32), 0x1F0B645B8, v36);
            v37 = *(v27 + 24);
            if (v37)
            {
              v38 = *(*(CMBaseObjectGetVTable() + 8) + 24);
              if (v38)
              {
                v38(v37);
              }
            }

            ReadRequestRelease(v27);
          }

          else
          {
            ++*(DerivedStorage + 352);
            if (!*(DerivedStorage + 88))
            {
              v39 = *(v27 + 24);
              if (v39)
              {
                v39 = CFRetain(v39);
              }

              *(DerivedStorage + 88) = v39;
              *(DerivedStorage + 96) = *(v27 + 32);
            }

            HTTPRequest = 0;
            if (*(DerivedStorage + 378))
            {
              *(DerivedStorage + 378) = 0;
            }
          }
        }

        else
        {
          FigCFHTTPReadWithAdditionalHeaders_cold_2(&v41);
          HTTPRequest = v41;
        }

        CFRelease(v25);
      }

      else
      {
        FigCFHTTPReadWithAdditionalHeaders_cold_3(&v42);
        HTTPRequest = v42;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return 4294954365;
}

__CFString *FigCFHTTPCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigHTTPSession <%p>\n", DerivedStorage);
  if (FigRetainProxyIsInvalidated())
  {
    CFStringAppend(Mutable, @" Invalidated\n");
  }

  else
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 264), @"MIME Type");
    CFStringAppend(Mutable, @" URL      : ");
    CFStringAppend(Mutable, *(DerivedStorage + 192));
    if (*(DerivedStorage + 176))
    {
      CFStringAppend(Mutable, @"\n redirect : ");
      v4 = CFURLGetString(*(DerivedStorage + 176));
      CFStringAppend(Mutable, v4);
    }

    CFStringAppend(Mutable, @"\n MIME     : ");
    CFStringAppend(Mutable, Value);
    CFStringAppendFormat(Mutable, 0, @"\n fileSize : %lld bytes\n", *(DerivedStorage + 216));
  }

  return Mutable;
}

void fbf_CancelReconnect(uint64_t a1)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    nw_connection_cancel(v2);
    nw_release(*(a1 + 488));
    *(a1 + 488) = 0;
  }
}

void RemoveReadRequestFromQueue(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 128);
  v3 = *(a2 + 136);
  v4 = (a1 + 64);
  if (v2)
  {
    v4 = (v2 + 136);
  }

  *v4 = v3;
  *v3 = v2;
  *(a2 + 126) = 0;
  if (!*(a1 + 56))
  {
    *(a1 + 448) = 0;
    FigHTTPRescheduleTimer(8073216000.0, *(a1 + 48), *(a1 + 456));
    if (*(a1 + 392) == 1)
    {
      if (!dword_1EAF16F58)
      {
        return;
      }
    }

    else
    {
      if (*(a1 + 18) == 1)
      {
        if (dword_1EAF16F58)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(a1 + 512) = 0;
        return;
      }

      if (*(a1 + 17) != 1)
      {
        return;
      }

      if (*(a1 + 512))
      {
        if (dword_1EAF16F58)
        {
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fbf_ResumeRetryAttempt(a1, 0);
        return;
      }

      if (!dword_1EAF16F58)
      {
        return;
      }
    }

    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void fbf_ResumeRetryAttempt(uint64_t result, uint64_t a2)
{
  if (*(result + 488))
  {
    return;
  }

  if (*(result + 392) == 1)
  {
    return;
  }

  if (*(result + 448) == 1)
  {
    return;
  }

  if (*(result + 18) == 1)
  {
    return;
  }

  if (!*(result + 17))
  {
    return;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v5 = *(result + 512);
  if (!v5)
  {
    return;
  }

  if (a2 >= 1 && UpTimeNanoseconds + a2 > v5)
  {
    v6 = a2;
LABEL_13:
    v9 = v6 / 1000000000.0;
    v10 = *(result + 48);
    v11 = *(result + 456);

    FigHTTPRescheduleTimer(v9, v10, v11);
    return;
  }

  v7 = v5 <= UpTimeNanoseconds;
  v8 = v5 - UpTimeNanoseconds;
  if (!v7)
  {
    v6 = v8;
    goto LABEL_13;
  }

  fbf_TryReconnect(result);
}

void fbf_TryReconnect(uint64_t a1)
{
  v34 = 0;
  v2 = *(a1 + 176);
  if (v2 || (v2 = *(a1 + 168)) != 0)
  {
    v3 = CFURLCopyHostName(v2);
    if (v3)
    {
      if (CFURLGetPortNumber(v2) == -1)
      {
        v10 = CFURLCopyScheme(v2);
        if (!v10)
        {
          fbf_TryReconnect_cold_5(buffer);
          goto LABEL_48;
        }

        v11 = v10;
        if (CFStringCompare(v10, @"http", 1uLL))
        {
          v12 = CFStringCompare(v11, @"https", 1uLL);
          CFRelease(v11);
          if (v12)
          {
            v13 = -12931;
            goto LABEL_32;
          }
        }

        else
        {
          CFRelease(v11);
        }
      }

      if (FigCFStringGetCStringPtrAndBufferToFree())
      {
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (host_with_numeric_port)
        {
          v5 = host_with_numeric_port;
          secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
          if (!secure_tcp)
          {
            fbf_TryReconnect_cold_2(buffer);
            v13 = *buffer;
            goto LABEL_31;
          }

          v7 = secure_tcp;
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v9 = UpTimeNanoseconds;
          if (!*(a1 + 496))
          {
            *(a1 + 504) = UpTimeNanoseconds;
            *(a1 + 440) = 0;
            *(a1 + 520) = UpTimeNanoseconds + 300000000000;
          }

          if (*(a1 + 552))
          {
            *buffer = 0;
            FigCFStringGetCStringPtrAndBufferToFree();
            nw_parameters_set_source_application_by_bundle_id();
            free(0);
          }

          else
          {
            v14 = *(a1 + 544);
            if (v14)
            {
              *buffer = 0u;
              v33 = 0u;
              if (CFDataGetLength(v14) != 32)
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, handler, v26);
                v13 = v23;
LABEL_30:
                nw_release(v7);
LABEL_31:
                nw_release(v5);
                goto LABEL_32;
              }

              v15 = *(a1 + 544);
              v35.length = CFDataGetLength(v15);
              v35.location = 0;
              CFDataGetBytes(v15, v35, buffer);
              v30 = *buffer;
              v31 = v33;
              nw_parameters_set_source_application();
            }
          }

          if (*(a1 + 152))
          {
            v16 = *(a1 + 160);
            if (!v16 || *(a1 + 216) > v16)
            {
              nw_parameters_prohibit_interface_type(v7, nw_interface_type_cellular);
            }
          }

          v17 = *(a1 + 520);
          v18 = v17 - 60000000000;
          v19 = v17 - v9;
          if (v18 >= v9)
          {
            v20 = v19;
          }

          else
          {
            v20 = 60000000000;
          }

          v21 = nw_connection_create(v5, v7);
          *(a1 + 488) = v21;
          if (v21)
          {
            v22 = *a1;
            if (*a1)
            {
              v22 = CFRetain(*a1);
              v21 = *(a1 + 488);
            }

            handler = MEMORY[0x1E69E9820];
            v26 = 0x40000000;
            v27 = __fbf_TryReconnect_block_invoke;
            v28 = &unk_1E7483390;
            v29 = v22;
            nw_connection_set_state_changed_handler(v21, &handler);
            FigHTTPRescheduleTimer(v20 / 1000000000.0, *(a1 + 48), *(a1 + 456));
            nw_connection_set_queue(*(a1 + 488), *(a1 + 48));
            nw_connection_start(*(a1 + 488));
            v13 = 0;
          }

          else
          {
            fbf_TryReconnect_cold_1(buffer);
            v13 = *buffer;
          }

          goto LABEL_30;
        }

        fbf_TryReconnect_cold_3(buffer);
      }

      else
      {
        fbf_TryReconnect_cold_4(buffer);
      }
    }

    else
    {
      fbf_TryReconnect_cold_6(buffer);
    }
  }

  else
  {
    fbf_TryReconnect_cold_7(buffer);
    v3 = 0;
  }

LABEL_48:
  v13 = *buffer;
LABEL_32:
  if (v34)
  {
    free(v34);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v13)
  {
    *(a1 + 512) = FigGetUpTimeNanoseconds() + 30000000000;
    FigHTTPRescheduleTimer(30.0, *(a1 + 48), *(a1 + 456));
  }
}

void fbf_postConnectionToHostLostNotification(uint64_t a1)
{
  if (FigByteFlumePostConnectionToHostLostNotification(a1))
  {

    fbf_ReportingAgentReportErrorEvent(a1, @"CoreMediaErrorDomain", @"Connection to host lost", 2u, -12661);
  }
}

uint64_t FigCFHTTPCopyBandwidthInfo(void *a1, double *a2, double *a3, double *a4)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (!a1 || (v9 = UpTimeNanoseconds, !a2) && !a3 && !a4)
  {
    FigCFHTTPCopyBandwidthInfo_cold_1(&v13);
    return LODWORD(v13);
  }

  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    if (a1[7] && *(a1 + 71) && (v9 - a1[40]) >= 0xEE6B2801)
    {
      FigByteRateHistoryClear(a1[43]);
      if (a2)
      {
        *a2 = 0.0;
      }

      if (a3)
      {
        *a3 = 0.0;
      }

      if (a4)
      {
        v10 = 0;
LABEL_24:
        *a4 = 0.0;
        goto LABEL_27;
      }
    }

    else
    {
      if (!FigByteRateHistoryHasCompleteSample(a1[43]) && a1[36] < a1[27] >> 2)
      {
        v12 = 0;
        v13 = 0.0;
        FigByteRateHistoryReportAverage(a1[43], &v13, &v12);
        if (v13 <= 0.0)
        {
          v10 = 4294954513;
          goto LABEL_27;
        }

        if (a2)
        {
          *a2 = v13;
        }

        if (a3)
        {
          *a3 = v12;
        }

        v10 = 0;
        if (!a4)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      FigByteRateHistoryReportAverage(a1[43], a2, a3);
      FigByteRateHistoryReportMovingAverage(a1[43], a4);
    }

    v10 = 0;
    goto LABEL_27;
  }

  v10 = 4294954511;
LABEL_27:
  FigRetainProxyUnlockMutex();
  return v10;
}

__CFString *fbf_GetInterfaceType(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      cf = 0;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v4)
      {
        v5 = v4(v3, @"FHRP_CFNetworkTimingData", *MEMORY[0x1E695E480], &cf);
        v6 = cf;
        if (v5)
        {
          InterfaceTypeFromCFNStats = 0;
          if (!cf)
          {
            goto LABEL_7;
          }
        }

        else
        {
          InterfaceTypeFromCFNStats = FigNetworkInterfaceGetInterfaceTypeFromCFNStats(cf);
          v6 = cf;
          if (!cf)
          {
LABEL_7:
            if (InterfaceTypeFromCFNStats)
            {
              return FigErrorLogGetStringFromInterfaceType(InterfaceTypeFromCFNStats);
            }

            goto LABEL_8;
          }
        }

        CFRelease(v6);
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  InterfaceTypeFromCFNStats = FigNetworkInterfaceReporterGetInterfaceType(a1[74]);
  if (!InterfaceTypeFromCFNStats)
  {
    v8 = a1[51];
    if (v8)
    {
      InterfaceTypeFromCFNStats = FigNetworkPathInformationGetInterfaceType(v8);
    }

    else
    {
      InterfaceTypeFromCFNStats = 0;
    }
  }

  return FigErrorLogGetStringFromInterfaceType(InterfaceTypeFromCFNStats);
}

void fbf_releaseInteractivePlaybackAssertion(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    if (dword_1EAF16F58)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(DerivedStorage + 380) - 1;
    *(DerivedStorage + 380) = v4;
    if (!v4 && (*(DerivedStorage + 17) || *(DerivedStorage + 392)))
    {
      if (dword_1EAF16F58)
      {
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fbf_FailImmediately(DerivedStorage);
    }
  }

  FigRetainProxyUnlockMutex();
  if (a1)
  {
    CFRelease(a1);
  }
}

void fbf_FailImmediately(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 448))
  {
    FigHTTPRescheduleTimer(8073216000.0, *(a1 + 48), *(a1 + 456));
  }

  fbf_CancelReconnect(a1);
  *(a1 + 512) = 0;
  if (!*(a1 + 17))
  {
    if (dword_1EAF16F58)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a1 + 17) = 1;
    FigByteFlumePostHostUnavailableNotification(a1);
  }

  if (!*(a1 + 18))
  {
    if (dword_1EAF16F58)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fbf_postConnectionToHostLostNotification(a1);
  }
}

uint64_t FigCFHTTPOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    FigCFHTTPOpen_cold_2(v26);
    return LODWORD(v26[0]);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v23 = 4294954511;
  }

  else
  {
    if (!*(DerivedStorage + 72))
    {
      *(DerivedStorage + 104) = a2;
      *(DerivedStorage + 120) = a3;
      v6 = *(DerivedStorage + 112);
      v7 = CMBaseObjectGetDerivedStorage();
      Current = CFAbsoluteTimeGetCurrent();
      v9 = *(v7 + 224);
      v10 = *MEMORY[0x1E695E480];
      if (v9)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v9);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v12 = MutableCopy;
      if (!MutableCopy)
      {
        *(v7 + 72) = 2;
        *(v7 + 384) = 0;
        *(v7 + 104) = 0;
        *(v7 + 120) = 0;
        v23 = 4294954363;
LABEL_33:
        v24 = *(DerivedStorage + 112);
        if (v24)
        {
          CFRelease(v24);
          *(DerivedStorage + 112) = 0;
        }

        goto LABEL_35;
      }

      fbf_ApplyCacheHeaders(v7, MutableCopy);
      if (v6)
      {
        CFDictionaryApplyFunction(v6, FigCFHTTPAddHeader, v12);
      }

      if (*(v7 + 532))
      {
        v13 = 17;
      }

      else
      {
        v13 = 1;
      }

      if (!*(v7 + 248))
      {
        v13 |= 0x40u;
      }

      if (*(v7 + 632))
      {
        v13 |= 0x8000u;
      }

      if (*(v7 + 633))
      {
        v14 = v13 | 0x10000;
      }

      else
      {
        v14 = v13;
      }

      if (*(v7 + 576) == 0.0)
      {
        *(v7 + 576) = Current;
      }

      if (*(v7 + 584) == 0.0)
      {
        *(v7 + 584) = CFAbsoluteTimeGetCurrent();
      }

      OptionsAndSetNWActivity = fbf_CopyHttpRequestCreateOptionsAndSetNWActivity(v7, 2);
      *(v7 + 384) = 1;
      v16 = *(v7 + 240);
      v17 = *(v7 + 168);
      v18 = *(v7 + 200);
      v19 = *v7;
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v20)
      {
        memset(v26, 0, 112);
        v21 = v20(v16, v10, 0, v17, v18, v12, OptionsAndSetNWActivity, v14, v26, 0, 2, 0, FigCFHTTPOpenResponse, v19, v7 + 88, v7 + 96);
        if (!v21)
        {
          FigNetworkUrgencyMonitorAddHTTPRequest(*(v7 + 624));
          if (dword_1EAF16F58)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v23 = 0;
          goto LABEL_31;
        }

        v23 = v21;
      }

      else
      {
        v23 = 4294954514;
      }

      *(v7 + 72) = 2;
      *(v7 + 384) = 0;
      *(v7 + 104) = 0;
      *(v7 + 120) = 0;
LABEL_31:
      CFRelease(v12);
      if (OptionsAndSetNWActivity)
      {
        CFRelease(OptionsAndSetNWActivity);
      }

      goto LABEL_33;
    }

    FigCFHTTPOpen_cold_1(v26);
    v23 = LODWORD(v26[0]);
  }

LABEL_35:
  FigRetainProxyUnlockMutex();
  return v23;
}

void fbf_ApplyCacheHeaders(uint64_t a1, __CFDictionary *a2)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, @"ETag");
    if (Value)
    {
      v6 = Value;
      v7 = CFDictionaryGetValue(*(a1 + 272), @"ETag weak");
      if (v7)
      {
        v8 = CFBooleanGetValue(v7);
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        v10 = Mutable;
        if (v8)
        {
          CFStringAppend(Mutable, @"W/");
        }
      }

      else
      {
        v10 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      }

      CFStringAppend(v10, v6);
      CFDictionaryAddValue(a2, @"If-None-Match", v10);
      CFRelease(v10);
    }

    v11 = CFDictionaryGetValue(*(a1 + 272), @"Last-Modified");
    if (v11)
    {

      CFDictionaryAddValue(a2, @"If-Modified-Since", v11);
    }
  }
}

uint64_t fbf_CopyHttpRequestCreateOptionsAndSetNWActivity(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if ((v2 - 2) <= 2)
  {
    v5 = nw_activity_create();
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 600))
      {
        nw_activity_set_parent_activity();
      }

      FigCFDictionarySetValue();
      CFRelease(v6);
    }
  }

  v7 = FigNetworkUrgencyMonitorCopyExpectedProgressTarget(*(a1 + 624));
  if (v7)
  {
    v8 = v7;
    valuePtr = 0;
    CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr);
    FigGetContinuousUpTimeNanoseconds();
    FigCFDictionarySetValue();
    CFRelease(v8);
  }

  return MutableCopy;
}

void fbf_GetResponseProperties(uint64_t a1, void *a2)
{
  v4 = a2[32];
  if (v4)
  {
    a2[32] = 0;
    CFRelease(v4);
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(a1, @"FHRP_HTTPResponseHeaders", v5, a2 + 32);
  }

  v7 = a2[22];
  if (v7)
  {
    a2[22] = 0;
    CFRelease(v7);
  }

  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(a1, @"FHRP_HTTPFinalURL", v5, a2 + 22);
  }

  v9 = a2[17];
  if (v9)
  {
    a2[17] = 0;
    CFRelease(v9);
  }

  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(a1, @"FHRP_RemoteIPAddress", v5, a2 + 17);
  }

  fbf_ReportingAgentSetServerAddress(a2);
}

BOOL fbf_httpRequestHandlesNetworkTransitions(uint64_t a1)
{
  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"FHRP_HandlesNetworkTransitions", *MEMORY[0x1E695E480], &cf);
    v3 = cf;
    v4 = *MEMORY[0x1E695E4D0];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695E4D0];
  }

  return v4 == v3;
}

uint64_t fbf_postHostAvailableOnBetterInterfaceNotification(uint64_t a1)
{
  result = FigByteFlumePostHostAvailableOnBetterInterfaceNotification(a1);
  if (result)
  {

    return fbf_ReportingAgentResetErrorStats(a1);
  }

  return result;
}

double fbf_checkAndPostHostAvailableOnBetterInterfaceNotificationIfNeeded(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(a1 + 432) + 1000000000 >= UpTimeNanoseconds)
  {
    if (dword_1EAF16F58)
    {
      v12 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *(a1 + 432) = UpTimeNanoseconds;
    if (dword_1EAF16F58)
    {
      v12 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRetainProxyRetain();
    v8 = dispatch_time(0, 1000000000);
    v9 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbf_checkAndPostHostAvailableOnBetterInterfaceNotificationIfNeeded_block_invoke;
    block[3] = &unk_1E74833B8;
    block[4] = a2;
    dispatch_after(v8, v9, block);
  }

  return result;
}

void fbf_SetInactivityMonitorTimer(void *a1, uint64_t a2)
{
  fbf_CancelReconnect(a1);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v5 = a1[40];
  a1[59] = UpTimeNanoseconds + a2;
  a1[60] = v5;
  v6 = a1[6];
  v7 = a1[57];

  FigHTTPRescheduleTimer(a2 / 1000000000.0, v6, v7);
}

uint64_t fbf_CreateHTTPRequestFlags(uint64_t a1)
{
  if (*(a1 + 532))
  {
    v1 = 17;
  }

  else
  {
    v1 = 1;
  }

  if (!*(a1 + 248))
  {
    v1 |= 0x40u;
  }

  if (*(a1 + 152))
  {
    v2 = *(a1 + 160);
    if (!v2 || (v3 = *(a1 + 216), v3 > v2))
    {
      v1 |= 0x180u;
      goto LABEL_14;
    }
  }

  else
  {
    v3 = *(a1 + 216);
  }

  if (v3 > 10485760 && *(a1 + 288) > 10240)
  {
    v1 |= 0x100u;
  }

LABEL_14:
  if (*(a1 + 153))
  {
    v1 |= 0x800u;
  }

  if (*(a1 + 154))
  {
    return v1 | 0x1000;
  }

  else
  {
    return v1;
  }
}

uint64_t OUTLINED_FUNCTION_5_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_13_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

BOOL OUTLINED_FUNCTION_15_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, os_log_type_t type, int a27, int a28)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, char a28)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_27_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, v9, a8);
}

const __CFString *OUTLINED_FUNCTION_35_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v17 = *(v15 + 256);

  return FigCFHTTPGetContentRangeFromHTTPResponse(v17, 0, 0, &a15, &a14);
}

void OUTLINED_FUNCTION_36_6(uint64_t a1, const void *a2)
{

  CFDictionaryAddValue(v2, a2, v3);
}

CFNumberRef OUTLINED_FUNCTION_39_7(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt64Type, a3);
}

uint64_t FigPlayerStartupTaskGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigPlayerStartupTaskGetTypeID_sRegisterFigPlayerStartupTaskTypeOnce != -1)
  {
    FigPlayerStartupTaskGetTypeID_cold_1();
  }

  return sFigPlayerStartupTaskID;
}

uint64_t registerFigPlayerStartupTaskType()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerStartupTaskID = result;
  return result;
}

BOOL FigPlayerStartupTaskDoesAllowStartup(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 40) == 1;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigPlayerStartupTaskNotifyOfEvents(uint64_t a1, int a2, uint64_t a3, BOOL *a4)
{
  FigSimpleMutexLock();
  if ((*(a1 + 20) & a2) == 0)
  {
    if (a4)
    {
      *a4 = *(a1 + 40) == 1;
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  *(a1 + 40) = 0;
  ++*(a1 + 32);
  *(a1 + 36) = 1;
  FigSimpleMutexUnlock();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = v8;
    CFRetain(a1);
    (*(a1 + 64))(v9, *(a1 + 32), a3, a1, figPlayerStartupTask_completion);
    FigSimpleMutexLock();
    *(a1 + 36) = 0;
    if (a4)
    {
      *a4 = *(a1 + 40) == 1;
    }

    FigSimpleMutexUnlock();
    CFRelease(v9);
    return 0;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
  v10 = v12;
  figPlayerStartupTask_completionInternal(a1, *(a1 + 32), 1);
  if (a4)
  {
    *a4 = 1;
  }

  return v10;
}

void figPlayerStartupTask_completionInternal(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  FigSimpleMutexLock();
  if (*(a1 + 32) != v4)
  {
LABEL_7:

    FigSimpleMutexUnlock();
    return;
  }

  if (!a3)
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (*(a1 + 36))
  {
    v6 = 1;
LABEL_6:
    *(a1 + 40) = v6;
    goto LABEL_7;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  *(a1 + 40) = 1;
  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void figPlayerStartupTask_completion(const void *a1, uint64_t a2, int a3)
{
  figPlayerStartupTask_completionInternal(a1, a2, a3);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigPlayerStartupTaskCopyRequiredParameters(uint64_t a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    v4 = Mutable;
    CFArrayAppendValue(Mutable, @"CurrentRate");
    CFArrayAppendValue(v4, @"PlayImmediately");
    CFArrayAppendValue(v4, @"CoordinationIdentifier");
    CFArrayAppendValue(v4, @"SeekID");
    CFArrayAppendValue(v4, @"SeekTime");
    CFArrayAppendValue(v4, @"CurrentTime");
    result = 0;
    *a2 = v4;
  }

  else
  {
    FigPlayerStartupTaskCopyRequiredParameters_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerStartupTaskCreateWithCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  if (!a5)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_7(&v14);
    return v14;
  }

  if (!a4)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_6(&v14);
    return v14;
  }

  if (!a3)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_5(&v14);
    return v14;
  }

  if (FigPlayerStartupTaskGetTypeID_sRegisterFigPlayerStartupTaskTypeOnce != -1)
  {
    FigPlayerStartupTaskGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_4(&v14);
    return v14;
  }

  v8 = Instance;
  if (!a4[1])
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_3(&v14);
LABEL_14:
    v12 = v14;
    CFRelease(v8);
    return v12;
  }

  *(Instance + 48) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v8 + 40) = 1;
  FigCFDictionaryGetInt32IfPresent();
  Value = FigCFDictionaryGetValue();
  *(v8 + 72) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  *(v8 + 20) = 7;
  FigCFDictionaryGetInt32IfPresent();
  v10 = FigSimpleMutexCreate();
  *(v8 + 24) = v10;
  if (!v10)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_2(&v14);
    goto LABEL_14;
  }

  *(v8 + 56) = *a4;
  v11 = a4[1];
  v12 = 0;
  *(v8 + 64) = v11;
  *a5 = v8;
  return v12;
}

double FigPlayerStartupTask_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigPlayerStartupTask_Finalize(void *a1)
{
  if (a1[3])
  {
    FigSimpleMutexDestroy();
  }

  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
    a1[9] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }
}

__CFString *FigPlayerStartupTask_CopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlayerStartupTask %p - %@>", a1, a1[9]);
  return Mutable;
}

uint64_t RegisterFigCachedFileByteStreamClass(uint64_t a1)
{
  CMByteStreamGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t CMByteStreamCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t FigCachedFileByteStreamReadAndCreateBlockBuffer(uint64_t a1, unint64_t a2, uint64_t a3, CMBlockBufferRef *a4, size_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 < 0)
  {
    FigCachedFileByteStreamReadAndCreateBlockBuffer_cold_2(&theBuffer);
    return theBuffer;
  }

  if (!a4)
  {
    FigCachedFileByteStreamReadAndCreateBlockBuffer_cold_1(&theBuffer);
    return theBuffer;
  }

  v10 = DerivedStorage;
  if (*(DerivedStorage + 120))
  {
    theBuffer = 0;
    v11 = *(DerivedStorage + 40);
    if (a2 && v11 <= a3)
    {
      DataLength = 0;
      v13 = 4294954423;
      if (!a5)
      {
        return v13;
      }
    }

    else
    {
      if (a3 + a2 > v11)
      {
        a2 = v11 - a3;
      }

      FigGetUpTimeNanoseconds();
      v13 = FigReadCacheContainerReadBBuf(*(v10 + 24), a3, (a2 + a3), *(v10 + 32), &theBuffer);
      if (theBuffer)
      {
        DataLength = CMBlockBufferGetDataLength(theBuffer);
      }

      else
      {
        DataLength = 0;
      }

      FigGetUpTimeNanoseconds();
      FigByteStreamStatsLogOneRead();
      *a4 = theBuffer;
      if (!a5)
      {
        return v13;
      }
    }

    *a5 = DataLength;
    return v13;
  }

  v14 = *(DerivedStorage + 8);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    return 4294954514;
  }

  return v15(v14, a2, a3, a4, a5);
}

uint64_t PurgeableVMAllocatorDeallocateCallBack(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x19A8D6C70);
  }

  return result;
}

uint64_t FigReadCacheCopyContainer(const void *a1, const void *a2, void *a3, void *a4)
{
  *a4 = 0;
  if (!gFigReadCache)
  {
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
  v9 = v8;
  if (a2)
  {
    v8[4] = 8;
    *(v8 + 3) = 0;
    v10 = CFRetain(a2);
    v11 = 1;
  }

  else
  {
    v8[4] = 2;
    v13 = CFRetain(a1);
    v10 = 0;
    v11 = 0;
    *(v9 + 3) = v13;
  }

  *(v9 + 4) = v10;
  *(v9 + 40) = v11;
  *(v9 + 6) = a3;
  FigSimpleMutexLock();
  IssueFigReadCacheRequest(v9);
  FigSemaphoreWaitRelative();
  FigSimpleMutexUnlock();
  v14 = *(v9 + 7);
  if (v14)
  {
    v12 = 0;
    *a4 = v14;
  }

  else
  {
    v12 = 4294955044;
  }

  v15 = *(v9 + 3);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(v9 + 4);
  if (v16)
  {
    CFRelease(v16);
  }

  free(v9);
  return v12;
}

uint64_t FigReadCacheContainerShowInterestInCaching(uint64_t a1)
{
  if (a1)
  {
    if (FigAtomicIncrement32() == 1)
    {
      result = 0;
      *(a1 + 153) = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigReadCacheContainerShowInterestInCaching_cold_1(&v3);
    return v3;
  }

  return result;
}

uint64_t FigReadCacheContainerShowDisinterestInCaching(uint64_t a1)
{
  if (a1)
  {
    result = FigAtomicDecrement32();
    if (result)
    {
      return 0;
    }

    else
    {
      *(a1 + 153) = 1;
    }
  }

  else
  {
    FigReadCacheContainerShowDisinterestInCaching_cold_1(&v3);
    return v3;
  }

  return result;
}

void IssueCacheMissRequest(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
  v6[4] = 3;
  *(v6 + 3) = a1;
  *(v6 + 4) = a3;
  *(v6 + 5) = a2;
  FigSimpleMutexLock();
  IssueFigReadCacheRequest(v6);
  FigSemaphoreWaitRelative();
  FigSimpleMutexUnlock();

  free(v6);
}

uint64_t CMByteStreamReadAndCreateBlockBuffer_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t CMByteStreamRead_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FRCContainerFinalize(uint64_t a1)
{
  *(a1 + 152) = 0;
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    os_release(v3);
    *(a1 + 144) = 0;
    --*(gFigReadCache + 164);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  if (*(a1 + 16))
  {
    FigSimpleMutexDestroy();
    *(a1 + 16) = 0;
  }

  result = *(a1 + 24);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
  }

  return result;
}

void LoadOneByteStreamForOpenFile(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  cf = 0;
  v4 = *(gFigReadCache + 120);
  if (v4)
  {
    while (!*(v4 + 96) || *(v4 + 88) != a1)
    {
      v4 = *(v4 + 136);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    LoadContainerInCache(v4);
  }

  else
  {
LABEL_5:
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &cf);
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }

    CFNumberGetValue(v7, kCFNumberSInt64Type, v8);
    CreateAndLoadNewContainerInCacheAndReturnContainer(0, a1, v8, v2, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t LoadContainerInCache(uint64_t a1)
{
  result = UnlinkContainer(gFigReadCache + 120, a1);
  v3 = gFigReadCache;
  *(a1 + 32) = *(gFigReadCache + 96);
  v4 = *(v3 + 128);
  if (v4)
  {
    *(v4 + 136) = a1;
    *(a1 + 128) = v4;
  }

  else
  {
    *(v3 + 120) = a1;
  }

  *(v3 + 128) = a1;
  ++*(v3 + 136);
  return result;
}

uint64_t CreateAndLoadNewContainerInCacheAndReturnContainer(unint64_t a1, unint64_t a2, __int128 *a3, char a4, uint64_t *a5)
{
  MEMORY[0x19A8D3660](&sRegisterFigReadCacheContainerTypeOnce, RegisterFigReadCacheContainerType);
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (!Instance)
  {
    if (!CreateAndLoadNewContainerInCacheAndReturnContainer_cold_2())
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!(a1 | a2))
  {
    if (CreateAndLoadNewContainerInCacheAndReturnContainer_cold_1())
    {
      v11 = 0;
      goto LABEL_11;
    }

LABEL_21:
    CFRelease(v11);
    v11 = 0;
    goto LABEL_22;
  }

  if (a2)
  {
    *(Instance + 40) = 0;
    v12 = CFRetain(a2);
    v13 = 1;
  }

  else
  {
    v14 = CFRetain(a1);
    v12 = 0;
    v13 = 0;
    *(v11 + 40) = v14;
  }

  *(v11 + 88) = v12;
  v15 = *a3;
  v16 = a3[1];
  *(v11 + 80) = *(a3 + 4);
  *(v11 + 48) = v15;
  *(v11 + 64) = v16;
  *(v11 + 96) = v13;
  *(v11 + 144) = 0;
  *(v11 + 16) = FigSimpleMutexCreate();
  *(v11 + 24) = FigSimpleMutexCreate();
  *(v11 + 152) = 1;
  if (AssureContainerFileIsOpen(v11))
  {
    goto LABEL_21;
  }

  v17 = gFigReadCache;
  v18 = *(gFigReadCache + 128);
  if (v18)
  {
    *(v18 + 136) = v11;
    *(v11 + 128) = v18;
  }

  else
  {
    *(gFigReadCache + 120) = v11;
  }

  *(v17 + 128) = v11;
  ++*(v17 + 136);
  *(v11 + 32) = *(v17 + 96);
LABEL_11:
  *(v11 + 153) = a4;
  v19 = gFigReadCache;
  if (!*(gFigReadCache + 144))
  {
    *(gFigReadCache + 144) = v11;
  }

  if (*(v19 + 304))
  {
    PopulateCacheContainer(v11, 0);
    result = 1;
    if (!a5)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_22:
  result = 0;
  if (!a5)
  {
    return result;
  }

LABEL_15:
  *a5 = v11;
  return result;
}

uint64_t FreeEntriesInGroup(unsigned int a1, _DWORD *a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(gFigReadCache + 24 * a1 + 192);
  if (v4)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = 0;
    do
    {
      v8 = *(v4 + 8);
      v9 = *(v4 + 88);
      if (v8 != a2)
      {
        if (v8 != v7)
        {
          if (v7)
          {
            FigSimpleMutexUnlock();
          }

          FigSimpleMutexLock();
          v7 = v8;
        }

        CFGetRetainCount(*(v4 + 48));
        v10 = v8 + 26;
        v11 = *(v4 + 56);
        v12 = *(v4 + 64);
        if (v11)
        {
          v10 = (v11 + 64);
        }

        *v10 = v12;
        v13 = (v12 + 56);
        if (!v12)
        {
          v13 = v8 + 28;
        }

        *v13 = v11;
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
        v14 = v8[30] - 1;
        v8[30] = v14;
        if (!v14 && CFGetRetainCount(v8) <= 1)
        {
          FigSimpleMutexUnlock();
          DeleteCacheContainer(v8);
          v7 = 0;
        }

        RecycleCacheEntry(v4);
        --v3;
      }

      if (v9)
      {
        v15 = v3 == 0;
      }

      else
      {
        v15 = 1;
      }

      v4 = v9;
    }

    while (!v15);
    if (v7)
    {
      FigSimpleMutexUnlock();
    }
  }

  return v3;
}

void DeleteCacheContainer(CFTypeRef cf)
{
  v1 = gFigReadCache;
  v2 = *(cf + 16);
  if (*(gFigReadCache + 144) == cf)
  {
    v3 = *(cf + 16);
    if (!v2)
    {
      v2 = *(cf + 17);
    }

    *(gFigReadCache + 144) = v2;
    v2 = v3;
  }

  v4 = (v1 + 120);
  v5 = *(cf + 17);
  if (v2)
  {
    v4 = (v2 + 136);
  }

  *v4 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v1;
  }

  *(v6 + 128) = v2;
  *(cf + 16) = 0;
  *(cf + 17) = 0;
  --*(v1 + 136);
  CFRelease(cf);
}

double RecycleCacheEntry(uint64_t a1)
{
  if (*a1 == 1)
  {
    FigAtomicDecrement32();
  }

  MoveToVGroup(a1, 4u, 1);
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void ScanForAbandonedEntries()
{
  if (gFigReadCache)
  {
    if (*(gFigReadCache + 176))
    {
      for (i = *(gFigReadCache + 120); i; i = i[17])
      {
        FigSimpleMutexLock();
        if (CFGetRetainCount(i) <= 1)
        {
          for (j = i[13]; j; j = *(j + 64))
          {
            if (*(j + 72) && CFGetRetainCount(*(j + 48)) == 1 && *(j + 72) != 3)
            {
              MoveToVGroup(j, 3u, 1);
              if (*(j + 96))
              {
                *(j + 96) = 0;
                FigAtomicDecrement32();
              }
            }
          }
        }

        FigSimpleMutexUnlock();
      }
    }
  }
}

void *OUTLINED_FUNCTION_1_52()
{

  return malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
}

size_t OUTLINED_FUNCTION_2_52(uint64_t a1)
{

  return FigReadCacheInitialize(a1, 64, 0x40000u);
}

uint64_t figXMLEnsureLibraryIsInitialized()
{
  MEMORY[0x19A8D3660](&figXMLEnsureLibraryIsInitialized_sFigLibXMLLoadOnce, initLibXMLLibrary);
  if (off_1ED4CA830)
  {
    v0 = s_ps_xmlBufferContent == 0;
  }

  else
  {
    v0 = 1;
  }

  v22 = v0 || s_ps_xmlBufferCreate == 0 || s_ps_xmlBufferFree == 0 || s_ps_xmlBufferLength == 0 || off_1ED4CA838 == 0 || _MergedGlobals_41 == 0 || s_ps_xmlFreeNode == 0 || off_1ED4CA840 == 0 || off_1ED4CA848 == 0 || off_1ED4CA850 == 0 || s_ps_xmlNodeAddContent == 0 || s_ps_xmlNodeGetContent == 0 || off_1ED4CA858 == 0 || s_ps_xmlReadFile == 0 || off_1ED4CA818 == 0 || qword_1ED4CA828 == 0 || off_1ED4CA820 == 0 || s_ps_xmlReadMemory == 0 || s_ps_xmlSaveClose == 0 || s_ps_xmlSaveDoc == 0 || s_ps_xmlSaveToBuffer == 0 || s_ps_xmlStrEqual == 0;
  return (v22 << 31 >> 31);
}

uint64_t ps_writeXMLDocToFileAtomically(const __CFURL *a1, const __CFString *a2, uint64_t a3)
{
  v16 = 0;
  if (figXMLEnsureLibraryIsInitialized())
  {
    v6 = 0;
    v12 = 0xFFFFFFFFLL;
LABEL_30:
    FigFileForkClose();
    goto LABEL_16;
  }

  if (!a1)
  {
    ps_writeXMLDocToFileAtomically_cold_10(&v17);
LABEL_22:
    v6 = 0;
LABEL_29:
    v12 = v17;
    goto LABEL_30;
  }

  if (!a2)
  {
    ps_writeXMLDocToFileAtomically_cold_9(&v17);
    goto LABEL_22;
  }

  v6 = s_ps_xmlBufferCreate();
  if (!v6)
  {
    ps_writeXMLDocToFileAtomically_cold_8(&v17);
    goto LABEL_29;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    ps_writeXMLDocToFileAtomically_cold_7(&v17);
    goto LABEL_29;
  }

  v8 = s_ps_xmlSaveToBuffer(v6, CStringPtrAndBufferToFree, 33);
  if (!v8)
  {
    ps_writeXMLDocToFileAtomically_cold_6(&v17);
    goto LABEL_29;
  }

  v9 = v8;
  if (s_ps_xmlSaveDoc(v8, a3) == -1)
  {
    ps_writeXMLDocToFileAtomically_cold_5(&v17);
    goto LABEL_29;
  }

  if (s_ps_xmlSaveClose(v9) == -1)
  {
    ps_writeXMLDocToFileAtomically_cold_4(&v17);
    goto LABEL_29;
  }

  s_ps_xmlBufferLength(v6);
  if (!s_ps_xmlBufferContent(v6))
  {
    ps_writeXMLDocToFileAtomically_cold_3(&v17);
    goto LABEL_29;
  }

  if (FigFileCreateTempFileAtURL())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0, 0);
    v12 = v14;
    goto LABEL_30;
  }

  if (FigFileForkWrite())
  {
    ps_writeXMLDocToFileAtomically_cold_1();
    v11 = 0;
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v11 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, a1, a2, 0);
    if (v11)
    {
      FigFileRename();
    }

    else
    {
      ps_writeXMLDocToFileAtomically_cold_2();
    }
  }

  FigFileForkClose();
  v12 = FigFileDeleteFile();
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_16:
  free(v16);
  if (v6)
  {
    s_ps_xmlBufferFree(v6);
  }

  return v12;
}

double FigXMLNodeWriteXMLFileFromBlockBufferAtURL(OpaqueCMBlockBuffer *a1, uint64_t a2, const __CFURL *a3)
{
  if (_os_feature_enabled_impl())
  {
    cf = 0;
    PathComponent = CFURLCopyLastPathComponent(a3);
    if (PathComponent)
    {
      v6 = PathComponent;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v8 = CFURLCreateCopyDeletingLastPathComponent(AllocatorForMedia, a3);
      if (v8)
      {
        v9 = v8;
        if (!FigXMLServiceReadFromMemoryAndCopyParsedXML(v8, v6, a1, &cf))
        {
          FigXMLNodeWriteToFilePath(cf, a3);
        }

        CFRelease(v6);
        CFRelease(v9);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        FigXMLNodeWriteXMLFileFromBlockBufferAtURL_cold_1(v6, &v12);
      }
    }

    else
    {
      FigXMLNodeWriteXMLFileFromBlockBufferAtURL_cold_2(&v12);
    }
  }

  else
  {

    return FigXMLWriteFileDirectlyFromBlockBufferAtURL(a1, a3);
  }

  return result;
}

uint64_t FigXMLNodeCreateNode(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a2)
  {
    FigXMLNodeCreateNode_cold_1(&v10);
    return v10;
  }

  v5 = figXMLNodeCreateNode(a1, &cf);
  if (v5)
  {
    v7 = cf;
    if (!cf)
    {
      return v5;
    }

LABEL_7:
    CFRelease(v7);
    return v5;
  }

  v6 = CFRetain(a2);
  v7 = cf;
  *(cf + 2) = v6;
  if (!a3)
  {
    goto LABEL_7;
  }

  v5 = 0;
  *a3 = v7;
  return v5;
}

uint64_t figXMLNodeCreateNode(uint64_t a1, void *a2)
{
  if (FigXMLNodeGetTypeID_once != -1)
  {
    figXMLNodeCreateNode_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[1] = 0u;
    Instance[2] = 0u;
    if (a2)
    {
      v4 = 0;
      *a2 = Instance;
    }

    else
    {
      CFRelease(Instance);
      return 0;
    }
  }

  else
  {
    figXMLNodeCreateNode_cold_2(&v6);
    return v6;
  }

  return v4;
}

uint64_t FigXMLNodeCreateChildNode(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a3)
  {
    FigXMLNodeCreateChildNode_cold_1(&v14);
    return v14;
  }

  v7 = figXMLNodeCreateNode(a1, &cf);
  if (v7)
  {
    v10 = v7;
    v11 = cf;
  }

  else
  {
    v8 = CFRetain(a3);
    v9 = cf;
    *(cf + 2) = v8;
    v10 = figXMLNodeAddChild(a2, v9);
    v11 = cf;
    if (a4 && !v10)
    {
      *a4 = cf;
      return v10;
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v10;
}

uint64_t figXMLNodeAddChild(uint64_t a1, void *value)
{
  if (a1)
  {
    if (value)
    {
      Mutable = *(a1 + 40);
      if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 40) = Mutable) != 0))
      {
        CFArrayAppendValue(Mutable, value);
        return 0;
      }

      else
      {
        figXMLNodeAddChild_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      figXMLNodeAddChild_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    figXMLNodeAddChild_cold_3(&v9);
    return v9;
  }
}

uint64_t FigXMLNodeGetTag(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

CFStringRef *FigXMLNodeGetChild(uint64_t a1, const __CFString *a2)
{
  v4 = 0;
  while (1)
  {
    Count = *(a1 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v4++);
    if (CFStringCompare(a2, ValueAtIndex[2], 0) == kCFCompareEqualTo)
    {
      return ValueAtIndex;
    }
  }

  return 0;
}

const __CFArray *FigXMLNodeGetCountOfChildren(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t FigXMLNodeGetAllAttributes(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t FigXMLNodeCopyAttributeAsCFString(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  Value = FigCFDictionaryGetValue();
  if (a3 && Value)
  {
    *a3 = CFRetain(Value);
  }

  return 0;
}

uint64_t FigXMLNodeContentSetCFString(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v2 = *(a1 + 24);
      *(a1 + 24) = cf;
      CFRetain(cf);
      if (v2)
      {
        CFRelease(v2);
      }

      return 0;
    }

    else
    {
      FigXMLNodeContentSetCFString_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigXMLNodeContentSetCFString_cold_2(&v5);
    return v5;
  }
}

uint64_t FigXMLNodeContentSetInt64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v5 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%lld", a2);
    if (v5)
    {
      v6 = v5;
      v7 = FigXMLNodeContentSetCFString(a1, v5);
      CFRelease(v6);
      return v7;
    }

    else
    {
      FigXMLNodeContentSetInt64_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigXMLNodeContentSetInt64_cold_2(&v10);
    return v10;
  }
}

uint64_t FigXMLNodeGetContentAsCFString(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t FigXMLNodeGetContentAsInt64(uint64_t a1, void *a2)
{
  if (a1)
  {
    IntValue = CFStringGetIntValue(*(a1 + 24));
    if (a2)
    {
      v4 = IntValue;
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigXMLNodeGetContentAsInt64_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigXMLNodeCopyContentAsCFString(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigXMLNodeCopyContentAsCFString_cold_1(&v7);
    return v7;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = CFRetain(v3);
    v5 = v4;
    if (!a2)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      return 0;
    }

LABEL_8:
    result = 0;
    *a2 = v5;
    return result;
  }

  if (a2)
  {
    v5 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t FigXMLNodeSetAttributes(uint64_t a1, const __CFDictionary *a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Count = CFDictionaryGetCount(a2);
  MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, Count, a2);
  if (MutableCopy)
  {
    v7 = MutableCopy;
    *(a1 + 32) = CFRetain(MutableCopy);
    CFRelease(v7);
    return 0;
  }

  else
  {
    FigXMLNodeSetAttributes_cold_1(&v9);
    return v9;
  }
}

uint64_t FigXMLNodeAttributeSetCFString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    FigXMLNodeAttributeSetCFString_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigXMLNodeAttributeSetCFString_cold_3(&v7);
    return v7;
  }

  if (!a3)
  {
    FigXMLNodeAttributeSetCFString_cold_2(&v7);
    return v7;
  }

  if (!*(a1 + 32))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 32) = Mutable;
    if (!Mutable)
    {
      FigXMLNodeAttributeSetCFString_cold_1(&v7);
      return v7;
    }
  }

  FigCFDictionarySetValue();
  return 0;
}

uint64_t FigXMLNodeAttributeSetInt64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v7 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%lld", a3);
      if (v7)
      {
        v8 = v7;
        v9 = FigXMLNodeAttributeSetCFString(a1, a2, v7);
        CFRelease(v8);
        return v9;
      }

      else
      {
        FigXMLNodeAttributeSetInt64_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      FigXMLNodeAttributeSetInt64_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    FigXMLNodeAttributeSetInt64_cold_3(&v13);
    return v13;
  }
}

uint64_t FigXMLNodeAttributeSetDouble(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a2)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v7 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%f", *&a3);
      if (v7)
      {
        v8 = v7;
        v9 = FigXMLNodeAttributeSetCFString(a1, a2, v7);
        CFRelease(v8);
        return v9;
      }

      else
      {
        FigXMLNodeAttributeSetDouble_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      FigXMLNodeAttributeSetDouble_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    FigXMLNodeAttributeSetDouble_cold_3(&v13);
    return v13;
  }
}

void *initLibXMLLibrary()
{
  result = dlopen("/usr/lib/libxml2.dylib", 6);
  if (result)
  {
    v1 = result;
    off_1ED4CA830 = dlsym(result, "xmlAddChild");
    s_ps_xmlBufferContent = dlsym(v1, "xmlBufferContent");
    s_ps_xmlBufferCreate = dlsym(v1, "xmlBufferCreate");
    s_ps_xmlBufferFree = dlsym(v1, "xmlBufferFree");
    s_ps_xmlBufferLength = dlsym(v1, "xmlBufferLength");
    s_ps_xmlFreeFunc = dlsym(v1, "xmlFree");
    off_1ED4CA838 = *s_ps_xmlFreeFunc;
    _MergedGlobals_41 = dlsym(v1, "xmlFreeDoc");
    s_ps_xmlFreeNode = dlsym(v1, "xmlFreeNode");
    off_1ED4CA840 = dlsym(v1, "xmlGetProp");
    off_1ED4CA848 = dlsym(v1, "xmlNewNode");
    off_1ED4CA850 = dlsym(v1, "xmlNewProp");
    s_ps_xmlNodeAddContent = dlsym(v1, "xmlNodeAddContent");
    s_ps_xmlNodeGetContent = dlsym(v1, "xmlNodeGetContent");
    off_1ED4CA858 = dlsym(v1, "xmlNodeSetContent");
    s_ps_xmlReadFile = dlsym(v1, "xmlReadFile");
    off_1ED4CA818 = dlsym(v1, "xmlNewDoc");
    qword_1ED4CA828 = dlsym(v1, "xmlDocDumpFormatMemory");
    off_1ED4CA820 = dlsym(v1, "xmlDocSetRootElement");
    s_ps_xmlReadMemory = dlsym(v1, "xmlReadMemory");
    s_ps_xmlSaveClose = dlsym(v1, "xmlSaveClose");
    s_ps_xmlSaveDoc = dlsym(v1, "xmlSaveDoc");
    s_ps_xmlSaveToBuffer = dlsym(v1, "xmlSaveToBuffer");
    s_ps_xmlStrEqual = dlsym(v1, "xmlStrEqual");
    result = dlsym(v1, "xmlEncodeEntitiesReentrant");
    off_1ED4CA860 = result;
  }

  return result;
}

uint64_t ps_xmlNodeCopyContentAsCFString(uint64_t a1, CFStringRef *a2)
{
  Content = s_ps_xmlNodeGetContent(a1);
  v4 = Content;
  if (a2)
  {
    if (!Content)
    {
      ps_xmlNodeCopyContentAsCFString_cold_2(&v11);
      return v11;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = CFStringCreateWithCString(AllocatorForMedia, v4, 0x8000100u);
    if (v6)
    {
      v7 = 0;
      *a2 = v6;
    }

    else
    {
      ps_xmlNodeCopyContentAsCFString_cold_1(&v10);
      v7 = v10;
    }
  }

  else
  {
    v9 = ps_xmlNodeCopyContentAsCFString_cold_3(Content, &v12);
    v7 = v12;
    if (v9)
    {
      return v7;
    }
  }

  off_1ED4CA838(v4);
  return v7;
}

uint64_t xmlnode_registerClass()
{
  result = _CFRuntimeRegisterClass();
  gFigXMLNodeTypeID = result;
  return result;
}

void xmlNode_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    CFRelease(v5);
  }
}

void OUTLINED_FUNCTION_3_42()
{
  v3 = MEMORY[0x1E695D7F0];
  v4.location = 0;
  v4.length = v1;

  CFArraySortValues(v0, v4, v3, 0);
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

uint64_t OUTLINED_FUNCTION_10_20(OpaqueCMBlockBuffer *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, size_t lengthAtOffsetOut, size_t totalLengthOut, char *dataPointerOut)
{

  return CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
}

void FigCEA608Parser::~FigCEA608Parser(FigCEA608Parser *this)
{
  CEA608Parser::~CEA608Parser(this);

  JUMPOUT(0x19A8D5150);
}

uint64_t FigCEA608CaptionDecoderCreate(uint64_t a1, CMFormatDescriptionRef desc, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  cf = 0;
  if (a4)
  {
    v6 = a3 != 0;
  }

  else
  {
    v6 = 0;
  }

  if ((a3 != 0) != (a4 != 0))
  {
    FigCEA608CaptionDecoderCreate_cold_7(&v16);
    return v16;
  }

  if (!a6)
  {
    FigCEA608CaptionDecoderCreate_cold_6(&v16);
    return v16;
  }

  if (!desc)
  {
    FigCEA608CaptionDecoderCreate_cold_5(&v16);
    return v16;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (MediaSubType > 1664561207)
  {
    if (MediaSubType == 1664561208)
    {
      goto LABEL_13;
    }

    v9 = 1882599480;
  }

  else
  {
    if (MediaSubType == 1635017571)
    {
      goto LABEL_13;
    }

    v9 = 1664495672;
  }

  if (MediaSubType == v9 || (fig_log_get_emitter(), FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18), v14 = v13, !v13))
  {
LABEL_13:
    FigCaptionDecoderGetClassID();
    if (CMDerivedObjectCreate())
    {
      FigCEA608CaptionDecoderCreate_cold_1(&v16);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v11 = DerivedStorage;
      if (!v6 || (*(DerivedStorage + 16) = a3, v12 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v11 + 24) = v12) != 0))
      {
        *bytes = cea608dec_rendererCallback;
        v20 = cf;
        operator new();
      }

      FigCEA608CaptionDecoderCreate_cold_4(&v16);
    }

    return v16;
  }

  return v14;
}

void FigCEA608DecoderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[10];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[10] = 0;
  }

  *DerivedStorage = 0;
  v3 = DerivedStorage[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  DerivedStorage[1] = 0;
  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[4] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *FigCEA608DecoderCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CEA608CaptionDecoder %p>", a1);
  return Mutable;
}

double FigCEA608DecoderCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = DerivedStorage;
    if (FigCFEqual())
    {
      *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (v8 + 120));
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "<<<< CEA608Decoder >>>>", 1175, v4);
    }
  }

  else
  {
    FigCEA608DecoderCopyProperty(&v11);
  }

  return result;
}

double FigCEA608DecoderSetProperty(uint64_t a1, uint64_t a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    if (FigCFEqual())
    {
      valuePtr = 0;
      if (a3 && (v8 = CFGetTypeID(a3), v8 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        v10 = valuePtr;
        if ((valuePtr - 5) <= 0xFFFFFFFB)
        {
          FigCEA608DecoderSetProperty(&v16);
        }

        else if (v7[30] != valuePtr)
        {
          v7[30] = valuePtr;
          v11 = v10 & 5;
          v12 = 2 * (((v10 - 2) & 0xFFFFFFFD) == 0);
          if (v11 == 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = v12;
          }

          (*(**v7 + 72))(*v7, v13);
        }
      }

      else
      {
        FigCEA608DecoderSetProperty(&v16);
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "<<<< CEA608Decoder >>>>", 1212, v3);
    }
  }

  else
  {
    FigCEA608DecoderSetProperty(&v16);
  }

  return result;
}

uint64_t FigCEA608RenderToTime(uint64_t a1, CMTime *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 32);
  if (!v6)
  {
    return 0;
  }

  dataPointerOut = 0;
  totalLengthOut = 0;
  v7 = *(MEMORY[0x1E695F058] + 16);
  v32[0] = *MEMORY[0x1E695F058];
  v32[1] = v7;
  v31[0] = v32[0];
  v31[1] = v7;
  v8 = MEMORY[0x1E6960C70];
  v30 = **&MEMORY[0x1E6960C70];
  v9 = *(DerivedStorage + 120) - 1;
  if (v9 > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_196E76680[v9];
  }

  CMBlockBufferGetDataPointer(v6, 0, 0, &totalLengthOut, &dataPointerOut);
  if ((*(DerivedStorage + 60) & 0x1D) != 1)
  {
    v12 = *MEMORY[0x1E6960C88];
    a2->epoch = *(MEMORY[0x1E6960C88] + 16);
    *&a2->value = v12;
  }

  if ((~a2->flags & 5) != 0)
  {
    v15 = *(DerivedStorage + 100) / *(DerivedStorage + 92);
    lhs = *a2;
    v27 = *(DerivedStorage + 48);
    CMTimeSubtract(&time, &lhs, &v27);
    v16 = CMTimeGetSeconds(&time) * v15;
    v17 = 2 * v16 + 2;
    if (v16 <= 0.0)
    {
      v17 = 2;
    }

    v14 = *(DerivedStorage + 40);
    if (v17 <= v14 + 2)
    {
      v17 = v14 + 2;
    }

    if (v17 >= totalLengthOut)
    {
      v13 = totalLengthOut;
    }

    else
    {
      v13 = v17;
    }
  }

  else
  {
    v13 = totalLengthOut;
    v14 = *(DerivedStorage + 40);
  }

  if (v14 >= v13)
  {
    v11 = 0;
    v21 = 1;
  }

  else
  {
    do
    {
      time = *(DerivedStorage + 92);
      lhs = *(DerivedStorage + 48);
      currentTimeFromBytePositionFrameRateAndStartTime(&v30, &time, &lhs, v14);
      v18 = CEA608Parser::ProcessCodePair(*(DerivedStorage + 8), dataPointerOut, (DerivedStorage + 40), v13, v10);
      v11 = v19;
      if ((*(**DerivedStorage + 56))(v18) && !*(DerivedStorage + 72) && !*(DerivedStorage + 73) && !v11)
      {
        v20 = *DerivedStorage;
        time = v30;
        (*(*v20 + 216))(v20, 0, &time, v32, v31);
      }

      v14 = *(DerivedStorage + 40);
      v21 = v11 == 0;
    }

    while (v14 < v13 && !v11);
  }

  if ((*(**DerivedStorage + 56))() && *(DerivedStorage + 72) != 0 && v21)
  {
    v22 = *DerivedStorage;
    time = v30;
    (*(*v22 + 216))(v22, 0, &time, v32, v31);
    v11 = 0;
    v23 = totalLengthOut;
  }

  else
  {
    v23 = totalLengthOut;
    if (v11 == -12560)
    {
      v11 = 0;
      if (v13 == totalLengthOut)
      {
        *(DerivedStorage + 40) = v13;
        v23 = v13;
      }
    }
  }

  v24 = *(DerivedStorage + 40);
  if (v24 == v23)
  {
    CFRelease(*(DerivedStorage + 32));
    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 40) = 0;
    *(DerivedStorage + 48) = *v8;
    *(DerivedStorage + 64) = *(v8 + 2);
    *(DerivedStorage + 72) = 0;
    if (a3)
    {
      v25 = *v8;
      *(a3 + 16) = *(v8 + 2);
      *a3 = v25;
    }
  }

  else if (a3)
  {
    lhs = *(DerivedStorage + 92);
    v27 = *(DerivedStorage + 48);
    currentTimeFromBytePositionFrameRateAndStartTime(&time, &lhs, &v27, v24);
    *a3 = time;
  }

  return v11;
}

uint64_t FigCEA608ResetAtTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(MEMORY[0x1E695F058] + 16);
  v12[0] = *MEMORY[0x1E695F058];
  v12[1] = v4;
  v11[0] = v12[0];
  v11[1] = v4;
  CEA608Parser::Reset(DerivedStorage[1]);
  (*(**DerivedStorage + 208))();
  if ((*(**DerivedStorage + 56))())
  {
    v5 = *DerivedStorage;
    v9 = *a2;
    v10 = *(a2 + 2);
    (*(*v5 + 216))(v5, 0, &v9, v12, v11);
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
    v7 = MEMORY[0x1E6960C70];
    DerivedStorage[4] = 0;
    DerivedStorage[5] = 0;
    *(DerivedStorage + 3) = *v7;
    DerivedStorage[8] = *(v7 + 16);
    *(DerivedStorage + 36) = 0;
  }

  return 0;
}

double currentTimeFromBytePositionFrameRateAndStartTime@<D0>(CMTime *__return_ptr a1@<X8>, CMTime *a2@<X1>, CMTime *a3@<X2>, uint64_t a4@<X0>)
{
  v10 = **&MEMORY[0x1E6960C70];
  epoch = v10.epoch;
  *&a1->value = *&v10.value;
  a1->epoch = epoch;
  if ((a4 - 0x100000000) <= 0xFFFFFFFEFFFFFFFELL)
  {
    return currentTimeFromBytePositionFrameRateAndStartTime();
  }

  time = *a2;
  CMTimeMultiply(&v10, &time, a4 / 2);
  time = *a3;
  v8 = v10;
  CMTimeAdd(a1, &time, &v8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_53(CFAllocatorRef blockAllocator, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{

  return CMBlockBufferCreateContiguous(blockAllocator, a2, blockAllocator, 0, 0, 0, 0, a8);
}

uint64_t FigDiskCacheRepositoryGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigDiskCacheRepositoryTypeOnce != -1)
  {
    FigDiskCacheRepositoryGetTypeID_cold_1();
  }

  return sFigDiskCacheRepositoryID;
}

uint64_t RegisterFigDiskCacheRepositoryType()
{
  result = _CFRuntimeRegisterClass();
  sFigDiskCacheRepositoryID = result;
  return result;
}

void fdcr_ReadRepositoryPlist(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695E480];
  v4 = FigCFPropertyListCreateFromFigFileFork();
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      if (*(a1 + 128) || *(a1 + 120) != 0.0)
      {
        CFDictionaryRemoveAllValues(*(a1 + 72));
        CFDictionaryRemoveAllValues(*(a1 + 80));
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        FigCFDictionaryGetInt64IfPresent();
        FigCFDictionaryGetInt64IfPresent();
        FigCFDictionaryGetInt64IfPresent();
        *(a1 + 56) = 0;
        Value = CFDictionaryGetValue(v5, @"checkedinlist");
        if (Value)
        {
          CFDictionaryApplyFunction(Value, fdcr_ConvertValueFromCFStringToCFURLApplierFunction, *(a1 + 72));
        }

        if (*(a1 + 112))
        {
          v8 = CFDictionaryGetValue(v5, @"checkedoutlist");
          if (v8)
          {
            CFDictionaryApplyFunction(v8, fdcr_ConvertValueFromCFStringToCFURLApplierFunction, *(a1 + 80));
          }
        }

        *(a1 + 64) = 0;
        if (CFDictionaryGetCount(*(a1 + 104)) < 1)
        {
          CFDictionaryRemoveAllValues(*(a1 + 96));
        }

        else
        {
          Copy = CFDictionaryCreateCopy(v3, *(a1 + 96));
          CFDictionaryApplyFunction(Copy, fdcr_CleanupCacheSizeListApplierFunction, a1);
          if (Copy)
          {
            CFRelease(Copy);
          }
        }

        CFDictionaryApplyFunction(*(a1 + 72), fdcr_UpdateCacheSizeApplierFunction, a1);
        CFDictionaryApplyFunction(*(a1 + 80), fdcr_UpdateCacheSizeApplierFunction, a1);
      }
    }

    CFRelease(v5);
  }
}

uint64_t FigDiskCacheRepositoryExists(void *a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (FigCFURLDoesDirectoryExist())
    {
      FigCFURLGetFileStats();
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigDiskCacheRepositoryExists_cold_1();
  }

  return 0;
}

uint64_t fdcr_CheckInResource(uint64_t a1, const __CFString *a2, const void *a3, void *a4)
{
  v8 = CFDictionaryContainsKey(*(a1 + 80), a2);
  if (v8)
  {
    v11 = fdcr_CopyCheckInIDFromCheckOutID(a2);
    if (!v11)
    {
      fdcr_CheckInResource_cold_1(&v20);
      return v20;
    }

    v9 = v11;
    Value = CFDictionaryGetValue(*(a1 + 80), a2);
    if (CFEqual(a3, Value))
    {
      v10 = 0;
    }

    else
    {
      v10 = Value;
    }
  }

  else
  {
    v9 = CFRetain(a2);
    v10 = 0;
  }

  v13 = CFDictionaryGetValue(*(a1 + 72), v9);
  if (v13)
  {
    v15 = v13;
    if (CFEqual(a3, v13))
    {
      v14 = 0;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v14 = 0;
  }

  Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
  fdcr_UpdateCacheSize(a1, v9, a3);
  v18 = v17;
  if (v17)
  {
    goto LABEL_25;
  }

  if (Int64IfPresent)
  {
    *(a1 + 64) = *(a1 + 64);
  }

  if (v10)
  {
    fdcr_DeleteResource(v10);
  }

  if (v14)
  {
    fdcr_DeleteResource(v14);
  }

  if (v8)
  {
    if (FigCFDictionaryGetInt64IfPresent())
    {
      CFDictionaryRemoveValue(*(a1 + 96), a2);
      *(a1 + 64) = *(a1 + 64);
    }

    CFDictionaryRemoveValue(*(a1 + 80), a2);
    CFDictionaryRemoveValue(*(a1 + 104), a2);
  }

  CFDictionarySetValue(*(a1 + 72), v9, a3);
  if (!a4)
  {
LABEL_25:
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v18 = 0;
    *a4 = v9;
  }

  return v18;
}

uint64_t fdcr_CheckOutResource(CFDictionaryRef *a1, const void *a2, CFTypeRef *a3, const void **a4)
{
  v14 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1[9], a2);
  if (!Value)
  {
    return 4294954671;
  }

  v9 = Value;
  if (a3)
  {
    *a3 = CFRetain(Value);
  }

  memset(out, 0, sizeof(out));
  memset(v12, 0, 37);
  uuid_generate_random(out);
  uuid_unparse_upper(out, v12);
  v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s=%@", v12, a2);
  *a4 = v10;
  CFDictionaryAddValue(a1[10], v10, v9);
  CFDictionaryAddValue(a1[13], *a4, v9);
  CFDictionaryRemoveValue(a1[9], a2);
  result = FigCFDictionaryGetInt64IfPresent();
  if (result)
  {
    CFDictionaryRemoveValue(a1[12], a2);
    return FigCFDictionarySetInt64();
  }

  return result;
}

void FigDiskCacheRepositoryCheckInAndOut(CFDictionaryRef *a1, const __CFString *a2, const void *a3, const void **a4)
{
  cf = 0;
  v13 = 0;
  if (a1 && a2 && a3 && a4)
  {
    FigSimpleMutexLock();
    if (!FigCFURLCreateDirectory() && !FigFileForkOpenMainByCFURL())
    {
      fdcr_ReadRepositoryPlist(a1, v13);
      if (!fdcr_CheckInResource(a1, a2, a3, &cf))
      {
        fdcr_CheckOutResource(a1, cf, 0, a4);
      }

      v10 = v13;
      v11 = CFDictionaryGetCount(a1[10]) == 0;
      fdcr_WriteRepositoryPlist(a1, v10, 1, v11);
      FigFileForkClose();
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 973, v4);
  }
}

void FigDiskCacheRepositoryDelete(CFDictionaryRef *a1, const __CFString *a2)
{
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    if (!FigFileForkOpenMainByCFURL())
    {
      fdcr_ReadRepositoryPlist(a1, 0);
      Value = CFDictionaryGetValue(a1[9], a2);
      if (Value)
      {
        fdcr_DeleteCacheEntry(a1, a2, Value);
        fdcr_WriteRepositoryPlist(a1, 0, 1, 0);
      }

      else if (CFDictionaryGetCount(a1[10]) >= 1)
      {
        CFDictionaryAddValue(a1[11], a2, *MEMORY[0x1E695E4D0]);
      }

      FigFileForkClose();
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 1014, v2);
  }
}

uint64_t fdcr_DeleteCacheEntry(uint64_t a1, const __CFString *a2, const __CFURL *a3)
{
  result = CFDictionaryGetValue(*(a1 + 72), a2);
  if (result)
  {
    fdcr_RemoveFromCacheFileSizeList(a1, a2);
    fdcr_DeleteResource(a3);
    CFDictionaryRemoveValue(*(a1 + 88), a2);
    CFDictionaryRemoveValue(*(a1 + 72), a2);
    return 1;
  }

  return result;
}

uint64_t FigDiskCacheRepositoryReserveBacking(uint64_t a1, const void *a2, uint64_t a3)
{
  theArray = 0;
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    if (CFDictionaryGetValue(*(a1 + 104), a2))
    {
      if (*(a1 + 48) >= a3)
      {
        FigCFDictionaryGetInt64IfPresent();
        v9 = a3 + *(a1 + 64);
        if (v9 > *(a1 + 40) && !FigFileForkOpenMainByCFURL())
        {
          fdcr_ReadRepositoryPlist(a1, 0);
          v11 = fdcr_CopySortedCacheFileListCheckedIn(a1, &theArray);
          if (v11)
          {
            v6 = v11;
            FigFileForkClose();
            goto LABEL_12;
          }

          v12 = *(a1 + 40);
          v13 = v9 - v12;
          if (v13 < 1)
          {
            v14 = 0;
LABEL_23:
            v9 = a3 + *(a1 + 64);
            if (v9 <= v12)
            {
              v6 = 0;
            }

            else
            {
              v6 = 4294954667;
            }
          }

          else
          {
            v14 = 0;
            v15 = 0;
            while (CFArrayGetCount(theArray))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
              if (fdcr_DeleteCacheEntry(a1, *ValueAtIndex, *(ValueAtIndex + 1)))
              {
                v14 = 1;
              }

              v15 += *(ValueAtIndex + 2);
              CFArrayRemoveValueAtIndex(theArray, 0);
              free(ValueAtIndex);
              if (v15 >= v13)
              {
                v12 = *(a1 + 40);
                goto LABEL_23;
              }
            }

            v9 = *(a1 + 64);
            v6 = 4294954667;
          }

          if (v14)
          {
            fdcr_WriteRepositoryPlist(a1, 0, 0, 0);
          }

          FigFileForkClose();
          if (v6)
          {
            goto LABEL_12;
          }
        }

        v6 = FigCFDictionarySetInt64();
        if (!v6)
        {
          *(a1 + 64) = v9;
        }

        goto LABEL_12;
      }

      v6 = 4294954668;
    }

    else
    {
      v6 = 4294954671;
    }

LABEL_12:
    FigSimpleMutexUnlock();
    v8 = theArray;
    goto LABEL_13;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, 0);
  v6 = v7;
  v8 = 0;
LABEL_13:
  fdcr_PurgeFileInfoList(v8);
  return v6;
}

uint64_t fdcr_CopySortedCacheFileListCheckedIn(uint64_t a1, const __CFArray **a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionaryApplyFunction(*(a1 + 72), fdcr_CreateFileInfoFromDictionaryApplierFunction, Mutable);
      v10.length = CFArrayGetCount(v5);
      v10.location = 0;
      CFArraySortValues(v5, v10, fdcr_OlderEntryFirstComparator, 0);
      v6 = 0;
      *a2 = v5;
    }

    else
    {
      fdcr_CopySortedCacheFileListCheckedIn_cold_1(&v8);
      v6 = v8;
    }
  }

  else
  {
    fdcr_CopySortedCacheFileListCheckedIn_cold_2(&v9);
    v6 = v9;
  }

  fdcr_PurgeFileInfoList(0);
  return v6;
}

void fdcr_PurgeFileInfoList(const __CFArray *a1)
{
  if (a1)
  {
    if (CFArrayGetCount(a1) >= 1)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
        CFArrayRemoveValueAtIndex(a1, 0);
        free(ValueAtIndex);
      }

      while (CFArrayGetCount(a1) > 0);
    }

    CFRelease(a1);
  }
}

void FigDiskCacheRepositoryCopyCheckedInIDs(uint64_t a1, CFMutableArrayRef *a2)
{
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    if (FigFileForkOpenMainByCFURL())
    {
      Mutable = 0;
    }

    else
    {
      fdcr_ReadRepositoryPlist(a1, 0);
      v7 = *(a1 + 72);
      if (v7 && CFDictionaryGetCount(v7))
      {
        v8 = *MEMORY[0x1E695E480];
        Count = CFDictionaryGetCount(*(a1 + 72));
        Mutable = CFArrayCreateMutable(v8, Count, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          CFDictionaryApplyFunction(*(a1 + 72), fdcr_CopyKeyIntoArray, Mutable);
        }

        else
        {
          FigDiskCacheRepositoryCopyCheckedInIDs_cold_1(&v10);
        }
      }

      else
      {
        Mutable = 0;
      }

      FigFileForkClose();
    }

    FigSimpleMutexUnlock();
    *a2 = Mutable;
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 1173, v2);
  }
}

void fdcr_CopyKeyIntoArray(const void *a1, uint64_t a2, __CFArray *a3)
{
  if (a1)
  {
    if (a3)
    {
      v5 = CFGetTypeID(a1);
      if (v5 == CFStringGetTypeID())
      {

        CFArrayAppendValue(a3, a1);
      }
    }
  }
}

void FigDiskCacheRepositoryGetFileSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    FigSimpleMutexLock();
    if (!FigCFDictionaryGetInt64IfPresent())
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 1210, v3);
  }
}

void FigDiskCacheRepositoryCopyProperty(uint64_t a1, const void *a2, const void *a3, const __CFAllocator *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a3 && a5)
  {
    FigSimpleMutexLock();
    if (CFEqual(a3, @"FigDiskCacheRepository_Size"))
    {
      v14 = 0;
      if (FigCFDictionaryGetInt64IfPresent())
      {
        *a5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v14);
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
      }

      goto LABEL_21;
    }

    if (!CFEqual(a3, @"FigDiskCacheRepository_LastModifiedDate"))
    {
LABEL_21:
      FigSimpleMutexUnlock();
      return;
    }

    v15 = 0;
    v16 = 0;
    v14 = 0;
    if (!FigFileForkOpenMainByCFURL())
    {
      fdcr_ReadRepositoryPlist(a1, v16);
      if (!CFDictionaryGetValue(*(a1 + 72), a2) || FigCFURLGetFileStats())
      {
        FigFileForkClose();
        goto LABEL_21;
      }

      v13 = CFDateCreate(a4, v15 / 1000000000.0 + v14 - *MEMORY[0x1E695E468]);
      if (v13)
      {
        v12 = v13;
        FigFileForkClose();
        goto LABEL_20;
      }

      if (!FigDiskCacheRepositoryCopyProperty_cold_1(&v16, &v14, &v17))
      {
        goto LABEL_21;
      }
    }

    v12 = 0;
LABEL_20:
    *a5 = v12;
    goto LABEL_21;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 1235, v5);
}

uint64_t FigDiskCacheRepositoryMakeRoom(uint64_t a1, int a2, void *a3)
{
  theArray = 0;
  v12 = 0;
  if (!a1)
  {
    FigDiskCacheRepositoryMakeRoom_cold_1(&v13);
    v7 = 0;
    v6 = v13;
    if (!a3)
    {
      return v6;
    }

    goto LABEL_16;
  }

  FigSimpleMutexLock();
  if (FigFileForkOpenMainByCFURL())
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    fdcr_ReadRepositoryPlist(a1, v12);
    v6 = fdcr_CopySortedCacheFileListCheckedIn(a1, &theArray);
    if (v6 || !CFArrayGetCount(theArray))
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (fdcr_DeleteCacheEntry(a1, *ValueAtIndex, *(ValueAtIndex + 1)))
        {
          v7 += *(ValueAtIndex + 2);
          v8 = 1;
        }

        CFArrayRemoveValueAtIndex(theArray, 0);
        free(ValueAtIndex);
      }

      while (a2 && CFArrayGetCount(theArray) > 0);
      if (v8)
      {
        fdcr_WriteRepositoryPlist(a1, v12, 0, 0);
      }
    }

    FigFileForkClose();
  }

  FigSimpleMutexUnlock();
  fdcr_PurgeFileInfoList(theArray);
  if (a3)
  {
LABEL_16:
    *a3 = v7;
  }

  return v6;
}

double fdcr_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t fdcr_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
    a1[9] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
    a1[10] = 0;
  }

  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
    a1[11] = 0;
  }

  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
    a1[12] = 0;
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
    a1[13] = 0;
  }

  result = a1[2];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    a1[2] = 0;
  }

  return result;
}

__CFString *fdcr_CopyDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigDiskCacheRepository %p repository %@ sizeLimit %llu fileSizeLimit %llu currentSize %llu>", a1, a1[3], a1[5], a1[6], a1[8]);
  return Mutable;
}

const __CFString *fdcr_CopyCheckInIDFromCheckOutID(const __CFString *result)
{
  range.location = 0;
  range.length = 0;
  if (result)
  {
    v1 = result;
    v4.length = CFStringGetLength(result);
    v4.location = 0;
    if (CFStringFindWithOptions(v1, @"=", v4, 0, &range))
    {
      ++range.location;
      Length = CFStringGetLength(v1);
      v5.location = range.location;
      v5.length = Length - range.location;
      range.length = Length - range.location;
      return CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v1, v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double fdcr_DeleteResource(const __CFURL *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      if (removefile(buffer, 0, 1u))
      {
        __error();
      }
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, buffer[0], buffer[2]);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 1978, v1);
  }

  return result;
}

void fdcr_GetDirectoryStats(const __CFURL *a1, unint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v18[0] = buffer;
  v18[1] = 0;
  memset(&v16, 0, sizeof(v16));
  if (a1 && a2 | a3)
  {
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      if (stat(buffer, &v16) == -1)
      {
        __error();
      }

      else
      {
        v6 = fts_open(v18, 4, 0);
        if (v6)
        {
          v7 = v6;
          v8 = 0;
          v9 = 0;
          while (1)
          {
            v10 = fts_read(v7);
            if (!v10)
            {
              break;
            }

            v11 = v10;
            if (v10->fts_info == 8)
            {
              fts_namelen = v10->fts_namelen;
              if (fts_namelen < 7 || strncmp(&v10->fts_statp + fts_namelen + 2, ".plist", 6uLL))
              {
                fts_statp = v11->fts_statp;
                v9 += fts_statp->st_size;
                v8 += fts_statp->st_blocks;
              }
            }
          }

          if (a2)
          {
            *a2 = v9;
          }

          if (a3)
          {
            *a3 = v8 << 9;
          }

          fts_close(v7);
        }

        else
        {
          fdcr_GetDirectoryStats_cold_1(&v17);
        }
      }
    }

    else
    {
      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 2475, v3);
    }
  }

  else
  {
    v14 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294954670, "<<< FigDiskCacheRepository >>>", 2469, v3);
  }
}

void fdcr_CreateFileInfoFromDictionaryApplierFunction(uint64_t a1, uint64_t a2, __CFArray *a3)
{
  if (a3)
  {
    v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10600403247B118uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = a1;
      v6[1] = a2;
      if (fdcr_FigCFURLGetFileStats(a2, (v6 + 2), (v6 + 3)))
      {

        free(v7);
      }

      else
      {

        CFArrayAppendValue(a3, v7);
      }
    }
  }
}

uint64_t fdcr_OlderEntryFirstComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 < v3)
  {
    return -1;
  }

  if (v2 != v3)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = v5 < v6;
  v8 = v5 != v6;
  if (v7)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

uint64_t fdcr_FigCFURLGetFileStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (fdcr_FigCFURLGetFileStats_sLastStatUptimeNanoseconds + 60000000000 > UpTimeNanoseconds)
  {
    v7 = fdcr_FigCFURLGetFileStats_sNumRecentStatCalls + 1;
  }

  else
  {
    v7 = 0;
  }

  fdcr_FigCFURLGetFileStats_sNumRecentStatCalls = v7;
  fdcr_FigCFURLGetFileStats_sLastStatUptimeNanoseconds = UpTimeNanoseconds;
  if (v7 == 1)
  {
  }

  else if (v7)
  {
    if (v7 > 9)
    {
      if (v7 > 0x63)
      {
        if (v7 > 0x3E7)
        {
        }
      }
    }
  }

  return fdcr_FigCFURLGetFileStats_0_recent_stat_calls(a1, a2, a3);
}

void fdcr_RemoveFromCacheFileSizeList(uint64_t a1, const __CFString *a2)
{
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    v5 = fdcr_CopyCheckInIDFromCheckOutID(a2);
    if (!v5)
    {
      return;
    }

    v4 = v5;
    if (!FigCFDictionaryGetInt64IfPresent())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a2)
  {
    v4 = CFRetain(a2);
    if (v4)
    {
LABEL_7:
      *(a1 + 64) = *(a1 + 64);
      CFDictionaryRemoveValue(*(a1 + 96), v4);
LABEL_8:
      CFRelease(v4);
    }
  }
}

void fdcr_ConvertValueFromCFStringToCFURLApplierFunction(const void *a1, const __CFString *a2, __CFDictionary *a3)
{
  v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
  CFDictionaryAddValue(a3, a1, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

void fdcr_CleanupCacheSizeListApplierFunction(void *key, const __CFNumber *a2, uint64_t a3)
{
  valuePtr = 0;
  if (CFDictionaryGetValue(*(a3 + 104), key))
  {
    CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
    *(a3 + 64) += valuePtr;
  }

  else
  {
    v6 = *(a3 + 96);

    CFDictionaryRemoveValue(v6, key);
  }
}

void fdcr_UpdateCacheSizeApplierFunction(void *key, const __CFURL *a2, uint64_t a3)
{
  if (!CFDictionaryGetValue(*(a3 + 104), key))
  {

    fdcr_UpdateCacheSize(a3, key, a2);
  }
}

void fdcr_ConvertValueFromCFURLToCFStringApplierFunction(const void *a1, CFURLRef anURL, __CFDictionary *a3)
{
  v5 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  CFDictionaryAddValue(a3, a1, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

double fdcr_CleanCacheFileList(uint64_t a1, const __CFDictionary *a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionaryApplyFunction(a2, fdcr_CopyNonExistentFileApplierFunction, Mutable);
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
          CFDictionaryRemoveValue(a2, ValueAtIndex);
          fdcr_RemoveFromCacheFileSizeList(a1, ValueAtIndex);
        }
      }

      CFRelease(v6);
    }

    else
    {
      fdcr_CleanCacheFileList_cold_1(&v13);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 2422, v2);
  }

  return result;
}

void fdcr_IsResourceInUse(const __CFURL *a1, char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  p_buffer = &buffer;
  v7 = 0;
  if (a1 && a2)
  {
    FigCFURLGetFileStats();
    if (FigFileForkOpenMainByCFURL())
    {
      v5 = 1;
    }

    else
    {
      FigFileForkClose();
      v5 = 0;
    }

    *a2 = v5;
  }

  else
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954670, "<<< FigDiskCacheRepository >>>", 2533, v2);
  }
}

void fdcr_CopyFilenameFromPathDictionaryApplierFunction(int a1, CFURLRef url, __CFSet *a3)
{
  if (a3)
  {
    PathComponent = CFURLCopyLastPathComponent(url);
    if (PathComponent)
    {
      v5 = PathComponent;
      CFSetSetValue(a3, PathComponent);

      CFRelease(v5);
    }
  }
}

void fdcr_CopyNonExistentFileApplierFunction(const void *a1, uint64_t a2, __CFArray *a3)
{
  if (!FigFileDoesFileExist())
  {

    CFArrayAppendValue(a3, a1);
  }
}

uint64_t CreateServedCPEProtectorState(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v3)
  {
    v4 = FigOSTransactionCreate();
    *v3 = v4;
    if (v4)
    {
      v5 = 0;
      *a2 = v3;
      v3 = 0;
    }

    else
    {
      CreateServedCPEProtectorState_cold_1(&v7);
      v5 = v7;
    }
  }

  else
  {
    CreateServedCPEProtectorState_cold_2(&v8);
    v5 = v8;
  }

  free(v3);
  return v5;
}

void DisposeServedCPEProtectorState(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      os_release(v2);
    }

    free(a1);
  }
}

void FigCPEProtectorServerStart(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, HandleCPEProtectorMessage, 0);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    FigXPCServerStart();
  }
}

uint64_t OUTLINED_FUNCTION_4_44(xpc_connection_t connection)
{

  return xpc_connection_get_pid(connection);
}

uint64_t FigSamplingEventIdentifierGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigSamplingEventIdentifierGetTypeID_sRegisterSamplingEventIdentifierTypeOnce != -1)
  {
    FigSamplingEventIdentifierGetTypeID_cold_1();
  }

  return FigSamplingEventIdentifierGetTypeID_sSamplingEventIdentifierTypeID;
}

uint64_t __FigSamplingEventIdentifierGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigSamplingEventIdentifierGetTypeID_sSamplingEventIdentifierTypeID = result;
  return result;
}

double samplingEventIdentifier_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void samplingEventIdentifier_finalize(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

BOOL samplingEventIdentifier_equal(CMTime *a1, uint64_t a2)
{
  time1 = a1[1];
  v3 = *(a2 + 24);
  return !CMTimeCompare(&time1, &v3) && FigCFEqual() != 0;
}

CFStringRef samplingEventIdentifier_copyDebugDesc(CMTime *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  time = a1[1];
  Seconds = CMTimeGetSeconds(&time);
  return CFStringCreateWithFormat(v2, 0, @"<FigSamplingEventIdentifier %p retainCount: %d> pts: %.3f, samples: %@", a1, v3, *&Seconds, a1->epoch);
}

uint64_t FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_sRegisterReceiverPlaybackStartupPreventionAssertionTypeOnceToken != -1)
  {
    FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_cold_1();
  }

  return FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_sReceiverPlaybackStartupPreventionAssertionTypeID;
}

uint64_t __FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_sReceiverPlaybackStartupPreventionAssertionTypeID = result;
  return result;
}

void *receiverPlaybackStartupPreventionAssertion_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void receiverPlaybackStartupPreventionAssertion_finalize(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __receiverPlaybackStartupPreventionAssertion_finalize_block_invoke;
  block[3] = &__block_descriptor_tmp_21_0;
  block[4] = a1;
  dispatch_sync(v3, block);
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  _Block_release(*(a1 + 32));
  *(a1 + 32) = 0;
}

CFStringRef receiverPlaybackStartupPreventionAssertion_copyDebugDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVideoReceiverPlaybackStartupPreventionAssertion %p> retainCount: %d, desc: %@", a1, v3, a1[2]);
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v5 = FigKTraceInit();
  FigVideoReceiverGetClassID(v5);
  IsReadyToActivateCallack = CMDerivedObjectCreate();
  if (IsReadyToActivateCallack)
  {
    goto LABEL_40;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 64) = Mutable;
  if (!Mutable)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_14(&timebaseTime);
    goto LABEL_57;
  }

  v9 = dispatch_queue_create("com.apple.coremedia.videoreceiver.callbackQ", 0);
  *(DerivedStorage + 264) = v9;
  if (!v9)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_13(&timebaseTime);
    goto LABEL_57;
  }

  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 632) = v10;
  if (!v10)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_12(&timebaseTime);
    goto LABEL_57;
  }

  *(DerivedStorage + 624) = 0;
  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 304) = v11;
  if (!v11)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_11(&timebaseTime);
    goto LABEL_57;
  }

  v12 = FigSimpleMutexCreate();
  *(DerivedStorage + 336) = v12;
  if (!v12)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_10(&timebaseTime);
    goto LABEL_57;
  }

  v13 = FigSimpleMutexCreate();
  *(DerivedStorage + 440) = v13;
  if (!v13)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_9(&timebaseTime);
    goto LABEL_57;
  }

  if (vr_copyGlobalNotificationQueue_sCommonVideoReceiverNotificationQueueInitOnce != -1)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_1();
  }

  v14 = vr_copyGlobalNotificationQueue_sCommonVideoReceiverForBufferDeliveryNotificationQueue;
  if (vr_copyGlobalNotificationQueue_sCommonVideoReceiverForBufferDeliveryNotificationQueue)
  {
    *(DerivedStorage + 600) = vr_copyGlobalNotificationQueue_sCommonVideoReceiverForBufferDeliveryNotificationQueue;
    dispatch_retain(v14);
  }

  else if (!FigVideoReceiverForBufferDeliveryCreateLocal_cold_2())
  {
    goto LABEL_57;
  }

  values = 0;
  IsReadyToActivateCallack = FigDataChannelGroupCreateForUseCase(a1, 0, &values);
  if (IsReadyToActivateCallack)
  {
    goto LABEL_40;
  }

  v15 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 288) = v15;
  if (values)
  {
    CFRelease(values);
    v15 = *(DerivedStorage + 288);
  }

  if (!v15)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_8(&timebaseTime);
    goto LABEL_57;
  }

  IsReadyToActivateCallack = FigImageQueueDisplayCountHistory_Create((DerivedStorage + 344), v16);
  if (IsReadyToActivateCallack)
  {
    goto LABEL_40;
  }

  FigImageQueueDisplayCountHistory_StartTracingDisplayCount(*(DerivedStorage + 344), 0, "fvr");
  v17 = CMBaseObjectGetDerivedStorage();
  v18 = *MEMORY[0x1E695E480];
  LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
  if (!LoggingIdentifierOfLength)
  {
    value_low = 4294951726;
    goto LABEL_34;
  }

  v20 = LoggingIdentifierOfLength;
  v21 = CFStringCreateWithFormat(v18, 0, @"B/%@", LoggingIdentifierOfLength);
  if (!v21)
  {
    value_low = 4294951726;
    goto LABEL_33;
  }

  v22 = v21;
  CString = CFStringGetCString(v21, (v17 + 228), 16, 0x600u);
  CFRelease(v20);
  if (!CString)
  {
    value_low = 4294951720;
    v20 = v22;
LABEL_33:
    CFRelease(v20);
    goto LABEL_34;
  }

  CFRelease(v22);
  v24 = MEMORY[0x1E6960C70];
  v42 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 360) = *MEMORY[0x1E6960C70];
  v25 = *(v24 + 16);
  *(DerivedStorage + 376) = v25;
  v26 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 16) = v26;
  if (v26)
  {
    v27 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 24) = v27;
    if (v27)
    {
      v28 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]);
      *(DerivedStorage + 32) = v28;
      if (v28)
      {
        *(DerivedStorage + 40) = 1;
        *(DerivedStorage + 88) = 0;
        *(DerivedStorage + 92) = v42;
        *(DerivedStorage + 108) = v25;
        *(DerivedStorage + 116) = v42;
        *(DerivedStorage + 132) = v25;
        v29 = dispatch_queue_create("com.apple.coremedia.videoreceiver", 0);
        *(DerivedStorage + 144) = v29;
        if (v29)
        {
          HostTimeClock = CMClockGetHostTimeClock();
          IsReadyToActivateCallack = CMTimebaseCreateWithSourceClock(v18, HostTimeClock, (DerivedStorage + 56));
          if (!IsReadyToActivateCallack)
          {
            v31 = *(DerivedStorage + 56);
            *&timebaseTime.value = *MEMORY[0x1E6960CC0];
            v32 = *(MEMORY[0x1E6960CC0] + 16);
            timebaseTime.epoch = v32;
            v41 = *&timebaseTime.value;
            *&immediateSourceTime.value = *&timebaseTime.value;
            immediateSourceTime.epoch = v32;
            IsReadyToActivateCallack = CMTimebaseSetRateAndAnchorTime(v31, 1.0, &timebaseTime, &immediateSourceTime);
            if (!IsReadyToActivateCallack)
            {
              v33 = FigCFWeakReferenceHolderCreateWithReferencedObject();
              *DerivedStorage = v33;
              if (v33)
              {
                IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerCreate(a1, *(DerivedStorage + 144), *(DerivedStorage + 56), 0, (DerivedStorage + 48), v34, v35, v36);
                if (!IsReadyToActivateCallack)
                {
                  v37 = *(DerivedStorage + 48);
                  *&timebaseTime.value = v41;
                  timebaseTime.epoch = v32;
                  IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(v37, &timebaseTime, videoReceiver_schedulerDidRequestConfigurationActivation, cf);
                  if (!IsReadyToActivateCallack)
                  {
                    IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(*(DerivedStorage + 48), videoReceiver_schedulerDidRemoveConfigurationCallback, cf);
                    if (!IsReadyToActivateCallack)
                    {
                      if (dword_1ED4CBE90)
                      {
                        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      *(DerivedStorage + 152) = 0;
                      *(DerivedStorage + 156) = v42;
                      *(DerivedStorage + 172) = v25;
                      *(DerivedStorage + 180) = v42;
                      *(DerivedStorage + 196) = v25;
                      *(DerivedStorage + 204) = v42;
                      *(DerivedStorage + 220) = v25;
                      *(DerivedStorage + 480) = 1;
                      *(DerivedStorage + 500) = 0;
                      *(DerivedStorage + 484) = 0u;
                      *(DerivedStorage + 504) = 1000000000;
                      *(DerivedStorage + 512) = 0;
                      *(DerivedStorage + 520) = 1;
                      *(DerivedStorage + 540) = 0;
                      *(DerivedStorage + 524) = 0u;
                      *(DerivedStorage + 544) = 1000000000;
                      *(DerivedStorage + 552) = 0;
                      *(DerivedStorage + 560) = 1;
                      *(DerivedStorage + 580) = 0;
                      *(DerivedStorage + 564) = 0u;
                      *(DerivedStorage + 584) = 1000000000;
                      *(DerivedStorage + 592) = 3;
                      if (*MEMORY[0x1E695FF58] == 1)
                      {
                        strncpy(&timebaseTime, (DerivedStorage + 228), 8uLL);
                        kdebug_trace();
                      }

                      value_low = 0;
                      *a3 = cf;
                      return value_low;
                    }
                  }
                }

                goto LABEL_40;
              }

              FigVideoReceiverForBufferDeliveryCreateLocal_cold_3(&timebaseTime);
              goto LABEL_57;
            }
          }

LABEL_40:
          value_low = IsReadyToActivateCallack;
          goto LABEL_34;
        }

        FigVideoReceiverForBufferDeliveryCreateLocal_cold_4(&timebaseTime);
      }

      else
      {
        FigVideoReceiverForBufferDeliveryCreateLocal_cold_5(&timebaseTime);
      }
    }

    else
    {
      FigVideoReceiverForBufferDeliveryCreateLocal_cold_6(&timebaseTime);
    }
  }

  else
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_7(&timebaseTime);
  }

LABEL_57:
  value_low = LODWORD(timebaseTime.value);
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void videoReceiver_schedulerDidRequestConfigurationActivation(uint64_t a1, uint64_t a2, CFTypeRef cf, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (cf && (v9 = CFGetTypeID(cf), a1 = FigVideoReceiverGetTypeID(v9), v9 == a1))
  {
    CMBaseObjectGetDerivedStorage();

    videoReceiver_activateReceiverConfigurationOnSyncQueue(cf);
  }

  else
  {
    videoReceiver_schedulerDidRequestConfigurationActivation_cold_1(a1, a2, cf, a4, a5, a6, a7, a8, v10, v11, SHIDWORD(v11), vars0);
  }
}

double videoReceiver_schedulerDidRemoveConfigurationCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual() && !FigCFEqual())
  {

    return videoReceiver_announceRemovalOfConfiguration(a3, a2);
  }

  return result;
}

double FigVideoReceiverForBufferDeliveryCopyTaggedBufferGroupForHostTime(const void *a1, __int128 *a2, uint64_t a3, void *a4, CFTypeRef *a5, uint64_t a6, uint64_t *a7, CFTypeRef *a8)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v19 = *a2;
    v20 = *(a2 + 2);
    videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(a1, &v19, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v18 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5316, v8);
  }

  return result;
}

uint64_t FigVideoReceiverIsForBufferDelivery(uint64_t result)
{
  if (result)
  {
    FigVideoReceiverGetClassID(result);
    result = CMBaseObjectIsMemberOfClass();
    if (result)
    {
      return CMBaseObjectGetVTable() == &kFigVideoReceiverForBufferDeliveryVTable;
    }
  }

  return result;
}

uint64_t videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(const void *a1, uint64_t a2, uint64_t a3, void *a4, CFTypeRef *a5, uint64_t a6, uint64_t *a7, CFTypeRef *a8)
{
  v131 = *MEMORY[0x1E69E9840];
  memset(cf, 0, sizeof(cf));
  v84 = *MEMORY[0x1E6960C70];
  v94 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v95 = v8;
  v92 = 0;
  v93 = 0;
  if (!a1 || (v15 = CFGetTypeID(a1), v15 != FigVideoReceiverGetTypeID(v15)))
  {
    videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_4(time1);
LABEL_3:
    v9 = *time1;
    goto LABEL_70;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_3(time1);
    goto LABEL_3;
  }

  if (!a4)
  {
    videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_2(time1);
    goto LABEL_3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LOBYTE(v105) = 0;
  LOBYTE(v101) = 0;
  LOBYTE(v97) = 0;
  v113 = v84;
  v114 = v8;
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v80 = a4;
  v81 = a6;
  v16 = 0;
  v17 = 0;
  *&time1[1] = v84;
  *&time1[17] = v8;
  *&cf[8] = *time1;
  *&cf[17] = *&time1[9];
  v79 = v8;
  if (dword_1ED4CBE90 >= 3)
  {
    LODWORD(v113) = 0;
    v109[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v17 = v97;
    v16 = v101;
  }

  v19 = a8;
  time2 = *a2;
  time1[0] = v105;
  time1[1] = v16;
  time1[2] = v17;
  *&time1[3] = *&cf[8];
  *&time1[12] = *&cf[17];
  v20 = a7;
  v21 = a7;
  v22 = v17;
  v23 = v16;
  v24 = videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForHostTimeInternal(a1, &time2, time1, cf, &v94, &v93, v20);
  if (!v24)
  {
    v53 = DerivedStorage;
    v31 = &_MergedGlobals_89;
    v36 = v19;
    v38 = a1;
    if (*(DerivedStorage + 480) && fvr_isAllowedToLog(DerivedStorage + 480, 0) && dword_1ED4CBE90)
    {
      LODWORD(v113) = 0;
      v109[0] = OS_LOG_TYPE_DEFAULT;
      v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v55 = v113;
      v56 = v109[0];
      if (os_log_type_enabled(v54, v109[0]))
      {
        v57 = v55;
      }

      else
      {
        v57 = v55 & 0xFFFFFFFE;
      }

      if (v57)
      {
        v58 = CMBaseObjectGetDerivedStorage() + 228;
        *time1 = *a2;
        *&time1[16] = *(a2 + 16);
        Seconds = CMTimeGetSeconds(time1);
        v60 = *(DerivedStorage + 500);
        LODWORD(time2.value) = 136316162;
        *(&time2.value + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v38;
        HIWORD(time2.epoch) = 2082;
        *v117 = v58;
        *&v117[8] = 2048;
        *&v117[10] = Seconds;
        v31 = &_MergedGlobals_89;
        *&v117[18] = 1024;
        *&v117[20] = v60;
        _os_log_send_and_compose_impl(v57, 0, time1, 128, &dword_1962D5000, v54, v56, "<<<< FigVideoReceiverForBufferDelivery >>>> %s: [%p|%{public}s]: Sampling for time %1.3f succeeded. %d error logs skipped before", &time2, 48);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v53 = DerivedStorage;
    }

    v70 = *(v53 + 144);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_block_invoke;
    block[3] = &__block_descriptor_tmp_88;
    v87 = 0;
    v88 = v23;
    v89 = v22;
    *v90 = *&cf[8];
    *&v90[9] = *&cf[17];
    *&v90[25] = v94;
    v91 = v95;
    block[4] = v53;
    block[5] = *cf;
    block[6] = v93;
    block[7] = v92;
    dispatch_sync(v70, block);
    v30 = a6;
    goto LABEL_56;
  }

  v9 = v24;
  if (v19)
  {
    v25 = &v92;
  }

  else
  {
    v25 = 0;
  }

  v26 = CMBaseObjectGetDerivedStorage();
  *&v113 = 0;
  *(&v113 + 1) = &v113;
  v114 = 0x2000000000;
  v115 = 0;
  *v109 = 0;
  v110 = v109;
  v111 = 0x2000000000;
  v112 = 0;
  time2.value = 0;
  *&time2.timescale = &time2;
  time2.epoch = 0x3000000000;
  *v117 = v84;
  *&v117[16] = v79;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2000000000;
  v108 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2000000000;
  v104 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2000000000;
  v100 = 0;
  v27 = *(v26 + 144);
  *time1 = MEMORY[0x1E69E9820];
  *&time1[8] = 0x40000000;
  *&time1[16] = __videoReceiver_copyCachedTaggedBufferGroupAndRelatedObjectsIfAvailable_block_invoke;
  *&time1[24] = &unk_1E7483A08;
  v121 = &v113;
  v122 = v109;
  p_time2 = &time2;
  v124 = &v105;
  v127 = v26;
  v128 = v21;
  v28 = a1;
  v129 = a1;
  v130 = v25;
  v125 = &v101;
  v126 = &v97;
  dispatch_sync(v27, time1);
  v29 = v110;
  v30 = v81;
  v31 = &_MergedGlobals_89;
  if (*(*(&v113 + 1) + 24))
  {
    v32 = *(v110 + 3);
    *(v110 + 3) = 0;
    v94 = *(*&time2.timescale + 24);
    v95 = *(*&time2.timescale + 40);
    *cf = v32;
    v93 = v106[3];
    v106[3] = 0;
    if (v21)
    {
      v33 = v102;
      *v21 = v102[3];
      v33[3] = 0;
    }

    if (v19)
    {
      v92 = v98[3];
      v98[3] = 0;
    }
  }

  v34 = *(v29 + 3);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = v106[3];
  v36 = v19;
  if (v35)
  {
    CFRelease(v35);
  }

  v37 = v102[3];
  v38 = v28;
  if (v37)
  {
    CFRelease(v37);
  }

  v39 = v98[3];
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(*(&v113 + 1) + 24);
  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(&time2, 8);
  _Block_object_dispose(v109, 8);
  _Block_object_dispose(&v113, 8);
  if (v40)
  {
    isAllowedToLog = fvr_isAllowedToLog(DerivedStorage + 480, 1);
    v42 = dword_1ED4CBE90;
    if (!isAllowedToLog || !dword_1ED4CBE90)
    {
      goto LABEL_57;
    }

    v43 = v36;
    LODWORD(v113) = 0;
    v109[0] = OS_LOG_TYPE_DEFAULT;
    v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v45 = v113;
    v46 = v109[0];
    if (os_log_type_enabled(v44, v109[0]))
    {
      v47 = v45;
    }

    else
    {
      v47 = v45 & 0xFFFFFFFE;
    }

    if (v47)
    {
      v48 = CMBaseObjectGetDerivedStorage() + 228;
      *time1 = *a2;
      *&time1[16] = *(a2 + 16);
      v49 = CMTimeGetSeconds(time1);
      *time1 = v94;
      *&time1[16] = v95;
      v50 = CMTimeGetSeconds(time1);
      v51 = *(DerivedStorage + 496);
      v52 = "logs skipped ";
      LODWORD(time2.value) = 136316930;
      *(&time2.value + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample";
      LOWORD(time2.flags) = 2048;
      if (!v51)
      {
        v52 = "";
      }

      *(&time2.flags + 2) = v38;
      HIWORD(time2.epoch) = 2082;
      *v117 = v48;
      *&v117[8] = 2048;
      *&v117[10] = v49;
      *&v117[18] = 1024;
      *&v117[20] = v9;
      *&v117[24] = 2048;
      *&v117[26] = v50;
      *&v117[34] = 2080;
      *&v117[36] = v52;
      v118 = 1024;
      v119 = v51;
      v31 = &_MergedGlobals_89;
      _os_log_send_and_compose_impl(v47, 0, time1, 128, &dword_1962D5000, v44, v46, "<<<< FigVideoReceiverForBufferDelivery >>>> %s: [%p|%{public}s]: Sampling for time %1.3f failed with error %d, returning cached buffer group w/ PTS %1.6f. (%s%d)", &time2, 74);
    }

    v36 = v43;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v30 = v81;
LABEL_56:
    v42 = *(v31 + 932);
LABEL_57:
    if (v42 >= 3)
    {
      LODWORD(v113) = 0;
      v109[0] = OS_LOG_TYPE_DEFAULT;
      v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v72 = v113;
      v73 = v109[0];
      if (os_log_type_enabled(v71, v109[0]))
      {
        v74 = v72;
      }

      else
      {
        v74 = v72 & 0xFFFFFFFE;
      }

      if (v74)
      {
        v75 = CMBaseObjectGetDerivedStorage() + 228;
        *time1 = v94;
        *&time1[16] = v95;
        v76 = CMTimeGetSeconds(time1);
        LODWORD(time2.value) = 136316418;
        *(&time2.value + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v38;
        HIWORD(time2.epoch) = 2082;
        *v117 = v75;
        *&v117[8] = 2048;
        *&v117[10] = v76;
        *&v117[18] = 2114;
        *&v117[20] = *cf;
        *&v117[28] = 2114;
        *&v117[30] = v93;
        LODWORD(v78) = 62;
        _os_log_send_and_compose_impl(v74, 0, time1, 128, &dword_1962D5000, v71, v73, "<<<< FigVideoReceiverForBufferDelivery >>>> %s: [%p|%{public}s]: returning buffer group w/ PTS %1.6f %{public}@ DependentResources %{public}@", &time2, v78);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *v80 = *cf;
    *cf = 0;
    if (a5)
    {
      *a5 = v93;
      v93 = 0;
    }

    if (v30)
    {
      *v30 = v94;
      *(v30 + 16) = v95;
    }

    v9 = 0;
    if (v36)
    {
      *v36 = v92;
      v92 = 0;
    }

    goto LABEL_70;
  }

  if (fvr_isAllowedToLog(DerivedStorage + 480, 2) && dword_1ED4CBE90)
  {
    v61 = v28;
    LODWORD(v113) = 0;
    v109[0] = OS_LOG_TYPE_DEFAULT;
    v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v63 = v113;
    v64 = v109[0];
    if (os_log_type_enabled(v62, v109[0]))
    {
      v65 = v63;
    }

    else
    {
      v65 = v63 & 0xFFFFFFFE;
    }

    if (v65)
    {
      v66 = CMBaseObjectGetDerivedStorage() + 228;
      *time1 = *a2;
      *&time1[16] = *(a2 + 16);
      v67 = CMTimeGetSeconds(time1);
      v68 = *(DerivedStorage + 496);
      v69 = "logs skipped ";
      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample";
      if (!v68)
      {
        v69 = "";
      }

      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v61;
      HIWORD(time2.epoch) = 2082;
      *v117 = v66;
      *&v117[8] = 2048;
      *&v117[10] = v67;
      *&v117[18] = 1024;
      *&v117[20] = v9;
      *&v117[24] = 2080;
      *&v117[26] = v69;
      *&v117[34] = 1024;
      *&v117[36] = v68;
      _os_log_send_and_compose_impl(v65, 0, time1, 128, &dword_1962D5000, v62, v64, "<<<< FigVideoReceiverForBufferDelivery >>>> %s: [%p|%{public}s]: Sampling for time %1.3f failed with error %d and cached sample was unavailable, returning NULL buffer group. (%s%d)", &time2, 64);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_70:
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  return v9;
}