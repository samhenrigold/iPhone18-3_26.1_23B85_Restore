void fiit_postNotificationFromDispatch(void *a1)
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

  free(a1);
}

CFDateRef fiit_MakeCFDateFromTime(CMTime *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    return 0;
  }

  if (!*(a2 + 33))
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = *(a2 + 24);
  v8 = *a1;
  v5 = v4 + CMTimeGetSeconds(&v8);
  v8 = *a2;
  Seconds = CMTimeGetSeconds(&v8);
  return CFDateCreate(v3, v5 - Seconds);
}

CMTime *fiit_distanceFromRange@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  v6 = MEMORY[0x1E6960CC0];
  v11 = *MEMORY[0x1E6960CC0];
  *&a3->value = *MEMORY[0x1E6960CC0];
  v7 = *(v6 + 16);
  a3->epoch = v7;
  v8 = *(a1 + 16);
  *&range.start.value = *a1;
  *&range.start.epoch = v8;
  *&range.duration.timescale = *(a1 + 32);
  time = *a2;
  result = CMTimeRangeContainsTime(&range, &time);
  if (result)
  {
    *&a3->value = v11;
    a3->epoch = v7;
  }

  else
  {
    *&range.start.value = *&a2->value;
    range.start.epoch = a2->epoch;
    time = *a1;
    if (CMTimeCompare(&range.start, &time) <= 0)
    {
      *&range.start.value = *a1;
      range.start.epoch = *(a1 + 16);
      time = *a2;
    }

    else
    {
      v10 = *(a1 + 16);
      *&range.start.value = *a1;
      *&range.start.epoch = v10;
      *&range.duration.timescale = *(a1 + 32);
      CMTimeRangeGetEnd(&time, &range);
      *&range.start.value = *&a2->value;
      range.start.epoch = a2->epoch;
    }

    return CMTimeSubtract(a3, &range.start, &time);
  }

  return result;
}

uint64_t fiit_mapTimeToSegmentAndOffset(uint64_t a1, CMTime *a2, const __CFArray *a3, uint64_t *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v27, 0, sizeof(v27));
  if (!a4)
  {
    fiit_mapTimeToSegmentAndOffset_cold_2(&range);
    return LODWORD(range.start.value);
  }

  if (!a5)
  {
    fiit_mapTimeToSegmentAndOffset_cold_1(&range);
    return LODWORD(range.start.value);
  }

  v24 = a4;
  v10 = 0;
  ValueAtIndex = 0;
  v12 = 0;
  v13 = (DerivedStorage + 96);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = CFArrayGetCount(a3); v12 < i; i = 0)
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v10 = (*v13)();
    FigPlaybackItemSegmentGetTimeMapping(v10, v27);
    if ((~a2->flags & 5) != 0)
    {
      range = v27[1];
      time = *a2;
      if (CMTimeRangeContainsTime(&range, &time))
      {
        goto LABEL_17;
      }
    }

    else if (!FigPlaybackItemSegmentGetType(v10))
    {
      goto LABEL_17;
    }

    ++v12;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_5:
    ;
  }

  memset(&start, 0, sizeof(start));
  v25 = **&MEMORY[0x1E6960C70];
  v15 = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(a3) >= 1)
  {
    FirstValue = FigCFArrayGetFirstValue();
    LastValue = FigCFArrayGetLastValue();
    v18 = (*(v15 + 96))(FirstValue);
    v19 = (*(v15 + 96))(LastValue);
    FigPlaybackItemSegmentGetTimeMapping(v18, &range);
    start = v32.start;
    FigPlaybackItemSegmentGetTimeMapping(v19, &time);
    v30 = v29;
    CMTimeRangeGetEnd(&v25, &v30);
  }

  *&range.start.value = *&a2->value;
  range.start.epoch = a2->epoch;
  time = v25;
  if ((CMTimeCompare(&range.start, &time) & 0x80000000) == 0)
  {
    *a2 = v25;
LABEL_17:
    v20 = v24;
    goto LABEL_18;
  }

  *&range.start.value = *&a2->value;
  range.start.epoch = a2->epoch;
  time = start;
  v20 = v24;
  if (CMTimeCompare(&range.start, &time) < 0)
  {
    *a2 = start;
    ValueAtIndex = FigCFArrayGetFirstValue();
    (*v13)();
    FigPlaybackItemSegmentGetTimeMapping(v10, &range);
    v27[0] = range;
    v27[1] = v32;
  }

LABEL_18:
  *v20 = ValueAtIndex;
  if ((~a2->flags & 5) != 0)
  {
    time = *a2;
    *&v30.start.value = *&v27[1].start.value;
    v30.start.epoch = v27[1].start.epoch;
    CMTimeSubtract(&range.start, &time, &v30.start);
    result = 0;
    *a5 = *&range.start.value;
    epoch = range.start.epoch;
  }

  else
  {
    result = 0;
    v22 = MEMORY[0x1E6960C88];
    *a5 = *MEMORY[0x1E6960C88];
    epoch = *(v22 + 16);
  }

  *(a5 + 16) = epoch;
  return result;
}

BOOL fiit_AreSegmentWrappersDifferent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    return 0;
  }

  v7 = (*(DerivedStorage + 96))(a2);
  v8 = (*(DerivedStorage + 96))(a3);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 1;
  }

  v10 = v8;
  Type = FigPlaybackItemSegmentGetType(v7);
  if (Type != FigPlaybackItemSegmentGetType(v10))
  {
    return 1;
  }

  if (FigPlaybackItemSegmentGetType(v7))
  {
    v12 = *(DerivedStorage + 24);
    InterstitialEvent = FigPlaybackItemSegmentGetInterstitialEvent(v7);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v14)
    {
      v15 = v14(v12, InterstitialEvent);
    }

    else
    {
      v15 = 0;
    }

    v17 = *(DerivedStorage + 24);
    v18 = FigPlaybackItemSegmentGetInterstitialEvent(v10);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v19)
    {
      v20 = v19(v17, v18);
    }

    else
    {
      v20 = 0;
    }

    v21 = FigPlayerInterstitialEventCopyIdentifier(v15);
    v22 = FigPlayerInterstitialEventCopyIdentifier(v20);
    v6 = FigCFEqual() == 0;
    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(&v30, 0, sizeof(v30));
    FigPlaybackItemSegmentGetTimeMapping(v7, &v30);
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    FigPlaybackItemSegmentGetTimeMapping(v10, &v26);
    range = v30;
    memset(&v25, 0, sizeof(v25));
    v23 = v26;
    CMTimeRangeGetIntersection(&v25, &range, &v23);
    if ((v25.start.flags & 1) == 0)
    {
      return 0;
    }

    v6 = 0;
    if ((v25.duration.flags & 1) != 0 && !v25.duration.epoch && (v25.duration.value & 0x8000000000000000) == 0)
    {
      range.start = v25.duration;
      *&v23.start.value = *MEMORY[0x1E6960CC0];
      v23.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      return CMTimeCompare(&range.start, &v23.start) == 0;
    }
  }

  return v6;
}

uint64_t fiit_CopyEvent(uint64_t a1)
{
  v5 = 0;
  v2 = FigPlayerInterstitialEventCopyPrimaryItem(a1);
  v3 = FigPlayerInterstitialEventCopyAsDictionary(a1, 1);
  FigPlayerInterstitialEventCreateFromDictionary(v2, v3, &v5);
  FigPlayerInterstitialEventSetImmutable(v5);
  CFRelease(v2);
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

uint64_t fiit_CopySnapshot(const void *a1, uint64_t *a2, uint64_t a3, CMTime *a4, CFDateRef *a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fiit_CopySnapshot_cold_5(&v17);
    return LODWORD(v17.value);
  }

  if (!a3)
  {
    fiit_CopySnapshot_cold_4(&v17);
    return LODWORD(v17.value);
  }

  if (!a4)
  {
    fiit_CopySnapshot_cold_3(&v17);
    return LODWORD(v17.value);
  }

  if (!a5)
  {
    fiit_CopySnapshot_cold_2(&v17);
    return LODWORD(v17.value);
  }

  if (!a6)
  {
    fiit_CopySnapshot_cold_1(&v17);
    return LODWORD(v17.value);
  }

  v13 = DerivedStorage;
  FigSimpleMutexLock();
  fiit_currentTime(a1, a5, &v17);
  *a4 = v17;
  fiit_ensureSegmentListContainsCurrentTime(a1);
  *a2 = FigCFArrayCreateCopy();
  v14 = *(v13 + 224);
  *a3 = *(v13 + 208);
  *(a3 + 16) = v14;
  v15 = *(v13 + 48);
  if (v15)
  {
    v15 = CFRetain(v15);
  }

  *a6 = v15;
  fiit_unlockAndPostSnapshotOutOfSyncNotification(a1);
  return 0;
}

uint64_t fiit_GetCurrentTime(const void *a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    fiit_GetCurrentTime_cold_1(DerivedStorage, a1, a2);
    return 0;
  }

  else
  {
    fiit_GetCurrentTime_cold_2(&v6);
    return v6;
  }
}

uint64_t fiit_CopyCurrentDate(const void *a1, CFDateRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    fiit_currentTime(a1, a2, &v5);
    fiit_unlockAndPostSnapshotOutOfSyncNotification(a1);
    return 0;
  }

  else
  {
    fiit_CopyCurrentDate_cold_1(&v5);
    return LODWORD(v5.value);
  }
}

__CFArray *fiit_createLoadedTimeRangesForTimeMapping(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  Mutable = 0;
  v7 = 0;
  allocator = *MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E6960CC0];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    memset(&v23, 0, sizeof(v23));
    Value = CFDictionaryGetValue(ValueAtIndex, @"startTime");
    CMTimeMakeFromDictionary(&v23, Value);
    memset(&v22, 0, sizeof(v22));
    v11 = CFDictionaryGetValue(ValueAtIndex, @"endTime");
    CMTimeMakeFromDictionary(&v22, v11);
    memset(&v21, 0, sizeof(v21));
    start.start = v23;
    end.start = v22;
    CMTimeRangeFromTimeToTime(&v21, &start.start, &end.start);
    end = v21;
    memset(&start, 0, sizeof(start));
    v12 = *(a2 + 16);
    *&otherRange.start.value = *a2;
    *&otherRange.start.epoch = v12;
    *&otherRange.duration.timescale = *(a2 + 32);
    CMTimeRangeGetIntersection(&start, &end, &otherRange);
    if ((start.start.flags & 1) != 0 && (start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0)
    {
      end.start = start.duration;
      *&otherRange.start.value = *v8;
      otherRange.start.epoch = *(v8 + 16);
      if (CMTimeCompare(&end.start, &otherRange.start))
      {
        memset(&end, 0, sizeof(end));
        lhs = *(a2 + 48);
        rhs = *a2;
        CMTimeSubtract(&otherRange.start, &lhs, &rhs);
        lhs = start.start;
        CMTimeAdd(&end.start, &otherRange.start, &lhs);
        end.duration = start.duration;
        otherRange = end;
        v13 = CMTimeRangeCopyAsDictionary(&otherRange, allocator);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(allocator, v5, MEMORY[0x1E695E9C0]);
        }

        CFArrayAppendValue(Mutable, v13);
        if (v13)
        {
          CFRelease(v13);
        }
      }
    }

    ++v7;
  }

  while (v5 != v7);
  return Mutable;
}

__n128 OUTLINED_FUNCTION_7_104()
{
  result = *(v0 + 136);
  *&STACK[0x200] = result;
  return result;
}

void OUTLINED_FUNCTION_9_81(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v3 + 196) = a1;
  *(v4 - 164) = 2048;
  *(v3 + 206) = v2;
  *(v4 - 154) = 2048;
  *(v4 - 152) = v5;
  *(v4 - 144) = 2048;
  *(v3 + 226) = a2;
}

uint64_t OUTLINED_FUNCTION_14_67@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMTime *time1, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t time1a)
{
  *(v26 - 208) = a1;

  return CMTimeCompare(&time1a, (v26 - 224));
}

CMTime *OUTLINED_FUNCTION_18_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CMTime *rhs, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 rhsa, CMTime *lhs, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, __int128 lhsa, uint64_t lhs_16, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __int128 a55, CMTime *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  lhsa = *(v65 - 256);
  lhs_16 = *(v65 - 240);
  rhsa = a55;
  lhs = a56;

  return CMTimeSubtract(&a65, &lhsa, &rhsa);
}

__n128 OUTLINED_FUNCTION_19_47()
{
  result = *v0;
  *&STACK[0x270] = *v0;
  STACK[0x280] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_20_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a29, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a30)
{
  result = a30;
  v30[4] = a30;
  return result;
}

__n128 OUTLINED_FUNCTION_23_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26)
{
  result = a26;
  *v26 = a26;
  return result;
}

CMTime *OUTLINED_FUNCTION_25_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 + 120);
  a65 = *(v66 + 104);
  a66 = v68;
  *&STACK[0x200] = *(v66 + 136);

  return fiit_distanceFromRange(&a65, &a45, &a57);
}

void *OUTLINED_FUNCTION_26_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t __dst, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_30_29@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeCompare((v1 - 224), (v1 - 256));
}

Float64 OUTLINED_FUNCTION_35_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CMTime *time, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  *(v43 + 64) = *v44;
  time_16 = *(v44 + 16);

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_36_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11)
{
  *(v12 + 104) = a9;
  *(v12 + 120) = a10;
  *(v12 + 136) = a11;

  fiit_rebuildSegmentList(v11);
}

uint64_t OUTLINED_FUNCTION_38_24(__n128 a1)
{
  *(v1 - 240) = a1;
  *(v1 - 224) = 0;
  return v1 - 112;
}

void *OUTLINED_FUNCTION_41_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t __dst, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_42_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 time2a, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, CMTime *time2, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, __n128 time2_16, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, CMTime *time1, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, uint64_t _1A8)
{
  time2_16 = a9;
  a49 = a17;

  return CMTimeCompare(&time1a, &time2_16);
}

uint64_t OUTLINED_FUNCTION_44_26(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

__n128 OUTLINED_FUNCTION_45_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22, uint64_t a23)
{
  result = a22;
  *(v23 - 112) = a22;
  *(v23 - 96) = a23;
  return result;
}

__n128 OUTLINED_FUNCTION_47_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, unint64_t a27)
{
  result = a26;
  *&STACK[0x210] = a26;
  STACK[0x220] = a27;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_17()
{
  *(v1 - 256) = 0;
  *(v1 - 248) = 0;
  *(v1 - 240) = 0;
  return v0;
}

__n128 OUTLINED_FUNCTION_53_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a27, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a28, uint64_t a29)
{
  result = a28;
  *(v29 - 112) = a28;
  *(v29 - 96) = a29;
  return result;
}

__n128 OUTLINED_FUNCTION_55_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a65;
  *(v66 - 256) = a65;
  *(v66 - 240) = a66;
  return result;
}

__n128 OUTLINED_FUNCTION_57_16()
{
  v0 = *&STACK[0x280];
  *&STACK[0x210] = *&STACK[0x270];
  *&STACK[0x220] = v0;
  result = *&STACK[0x290];
  *&STACK[0x230] = *&STACK[0x290];
  return result;
}

double OUTLINED_FUNCTION_65_15()
{
  result = 0.0;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  return result;
}

double OUTLINED_FUNCTION_66_14()
{
  result = 0.0;
  *&STACK[0x220] = 0u;
  *&STACK[0x230] = 0u;
  *&STACK[0x200] = 0u;
  *&STACK[0x210] = 0u;
  return result;
}

double OUTLINED_FUNCTION_71_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void OUTLINED_FUNCTION_74_13()
{

  fiit_updateCurrentSegmentWrapper(v0, 0);
}

uint64_t RegisterFigCaptionFormatConformerBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionFormatConformerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCaptionFormatConformerGetClassID_sRegisterFigCaptionFormatConformerBaseTypeOnce, RegisterFigCaptionFormatConformerBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigNeroidCreateLocal(uint64_t a1, CFTypeRef *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  cf = 0;
  v18 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v5 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  FigNeroidGetClassID(v5, v6);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    goto LABEL_4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigNeroCreate(a1, (DerivedStorage + 32));
  if (v7)
  {
    goto LABEL_4;
  }

  v7 = FigNeroidLayerViewCreate(a1, (DerivedStorage + 40));
  if (v7)
  {
    goto LABEL_4;
  }

  FigLayerViewGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v7 = v13(v12, @"ImageQueue", a1, &cf);
    if (v7)
    {
LABEL_4:
      v9 = v7;
      goto LABEL_5;
    }

    v14 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    v15 = objc_alloc_init(MEMORY[0x1E6979398]);
    *(DerivedStorage + 24) = v15;
    [v15 setName:@"neroid-internal-videolayer"];
    [*(DerivedStorage + 24) setContents:cf];
    [*(DerivedStorage + 24) setContentsGravity:*MEMORY[0x1E6979DE8]];
    [*(DerivedStorage + 24) setEdgeAntialiasingMask:0];
    [*(DerivedStorage + 24) setAllowsDisplayCompositing:1];
    if (FigServer_IsMediaplaybackd() && (v16 = FigOSTransactionCreate(), (*(DerivedStorage + 48) = v16) == 0))
    {
      FigNeroidCreateLocal_cold_1(v14, v19);
      v9 = v19[0];
    }

    else
    {
      [MEMORY[0x1E6979518] commit];
      objc_autoreleasePoolPop(v14);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      v9 = 0;
      *a2 = v18;
      v18 = 0;
    }
  }

  else
  {
    v9 = 4294954514;
  }

LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v9;
}

uint64_t neroid_handleNeroNotification(int a1, uint64_t a2, CFTypeRef cf1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!CFEqual(cf1, @"Nero_Connected") && !CFEqual(cf1, @"Nero_Disconnected"))
  {
    result = CFEqual(cf1, @"Nero_FirstVideoFrameEnqueued");
    if (!result)
    {
      return result;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

__CFString *neroid_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroid %p>", a1);
  return Mutable;
}

uint64_t neroid_Start(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v4 = *MEMORY[0x1E695E480];
  if (CFPreferenceNumberWithDefault)
  {
    v5 = FigTransportConnectionTCPCreate();
    if (v5)
    {
LABEL_3:
      v6 = v5;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = FigTransportConnectionIDSCreate();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"RenderDestination", *(DerivedStorage + 40));
  CFDictionarySetValue(Mutable, @"TransportConnection", value);
  v8 = FigNeroSetup(*(DerivedStorage + 32), Mutable);
  if (v8)
  {
    v6 = v8;
  }

  else
  {
    FigLayerViewGetCMBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v6 = v11(v10, @"DisplayInfo", v4, &cf);
      if (!v6)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }
    }

    else
    {
      v6 = 4294954514;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t FigCPEProtectorXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteXPCCPEProtector_GetObjectID(a1, a2);
    }

    else
    {
      FigCPEProtectorXPCRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigCPEProtectorXPCRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t remoteXPCCPEProtector_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteXPCCPEProtector_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t remoteXPCCPEProtectorClient_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

__CFString *remoteXPCCPEProtector_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigCPEProtectorRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_2_189(uint64_t a1)
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t FigMetricEventInitialLikelyToKeepUpSubscriberCreate(const __CFAllocator *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    FigMetricEventInitialLikelyToKeepUpSubscriberCreate_cold_3(a1, 0, a3, a4, a5, a6, a7, a8, v26, SDWORD2(v26), SHIDWORD(v26), v27);
    return 0;
  }

  if (!a3)
  {
    FigMetricEventInitialLikelyToKeepUpSubscriberCreate_cold_2(a1, a2, 0, a4, a5, a6, a7, a8, v26, SDWORD2(v26), SHIDWORD(v26), v27);
    return 0;
  }

  v26 = xmmword_1E74978A8;
  if (ilktu_getTypeID_once != -1)
  {
    dispatch_once_f(&ilktu_getTypeID_once, &v26, subUtil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMetricEventInitialLikelyToKeepUpSubscriberCreate_cold_1(&v26);
    return v26;
  }

  v12 = Instance;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v12 + 16) = Mutable;
  if (!Mutable || (v14 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]), (*(v12 + 24) = v14) == 0) || (v15 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]), (*(v12 + 32) = v15) == 0) || (v16 = dispatch_queue_create("FigMetricIntialLTKUSubscriber.queue", 0), (*(v12 + 48) = v16) == 0))
  {
    v24 = 4294947525;
    goto LABEL_22;
  }

  v17 = v16;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v18)
  {
    v24 = 4294954514;
LABEL_22:
    CFRelease(v12);
    return v24;
  }

  v19 = v18(a2, v12, &FigMetricEventInitialLikelyToKeepUpSubscriberCreate_subscriberCallbacks, v17);
  if (v19)
  {
    v24 = v19;
    goto LABEL_22;
  }

  *(v12 + 40) = 0;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v20)
  {
    v20(a2, v12, 2);
  }

  v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v21)
  {
    v21(a2, v12, 3);
  }

  v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v22)
  {
    v22(a2, v12, 1);
  }

  v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v23)
  {
    v23(a2, v12, 4);
  }

  v24 = 0;
  *a3 = v12;
  return v24;
}

uint64_t FigMetricEventPlaybackSummarySubscriberCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = ensureMetricEventTrace();
  if (!a2)
  {
    FigMetricEventPlaybackSummarySubscriberCreate_cold_3(v5, v6, v7, v8, v9, v10, v11, v12, v22, SDWORD2(v22), SHIDWORD(v22), v23);
    return 0;
  }

  if (!a3)
  {
    FigMetricEventPlaybackSummarySubscriberCreate_cold_2(v5, v6, v7, v8, v9, v10, v11, v12, v22, SDWORD2(v22), SHIDWORD(v22), v23);
    return 0;
  }

  v22 = xmmword_1E74978B8;
  if (pss_getTypeID_once != -1)
  {
    dispatch_once_f(&pss_getTypeID_once, &v22, subUtil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMetricEventPlaybackSummarySubscriberCreate_cold_1(&v22);
    return v22;
  }

  v14 = Instance;
  v15 = dispatch_queue_create("FigMetricEventPlaybackSummarySubscriber.queue", 0);
  *(v14 + 152) = v15;
  if (!v15)
  {
    v20 = 4294947525;
    goto LABEL_13;
  }

  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    v20 = 4294954514;
LABEL_13:
    CFRelease(v14);
    return v20;
  }

  v18 = v17(a2, v14, &FigMetricEventPlaybackSummarySubscriberCreate_subscriberCallbacks, v16);
  if (v18)
  {
    v20 = v18;
    goto LABEL_13;
  }

  *(v14 + 160) = 0;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v19)
  {
    v19(a2, v14);
  }

  v20 = 0;
  *a3 = v14;
  return v20;
}

void pss_didReceiveEvent(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v56 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    goto LABEL_82;
  }

  v8 = v7(a4);
  if (v8 <= 6)
  {
    if (v8 < 4)
    {
      ++*(a1 + 56);
      goto LABEL_82;
    }

    if (v8 != 4)
    {
      if (v8 == 6)
      {
        v13 = *(a1 + 160);
        if (v13 == 1)
        {
          *(a1 + 80) = 0;
          v49 = *(*(CMBaseObjectGetVTable() + 40) + 48);
          v50.n128_u64[0] = 0;
          if (v49)
          {
            v50.n128_f64[0] = v49(a4, v50);
          }

          *(a1 + 64) = v50.n128_f64[0] + *(a1 + 64);
        }

        else if (!v13)
        {
          v14 = *(*(CMBaseObjectGetVTable() + 40) + 48);
          v15.n128_u64[0] = 0;
          if (v14)
          {
            v15.n128_f64[0] = v14(a4, v15);
          }

          *(a1 + 72) = v15.n128_u64[0];
        }

        *(a1 + 160) = 2;
      }

      goto LABEL_82;
    }

    v20 = *(*(CMBaseObjectGetVTable() + 40) + 48);
    v21.n128_u64[0] = 0;
    if (v20)
    {
      v21.n128_f64[0] = v20(a4, v21);
    }

    *(a1 + 72) = v21.n128_u64[0];
    VTable = CMBaseObjectGetVTable();
    v31 = *(VTable + 40);
    v30 = (VTable + 40);
    v32 = *(v31 + 8);
    if (!v32 || (v30 = v32(a4)) == 0)
    {
      pss_didReceiveEvent_cold_1(v30, v23, v24, v25, v26, v27, v28, v29, v51, v52, SHIDWORD(v52), v53);
      goto LABEL_82;
    }

    v33 = *(a1 + 128);
    *(a1 + 128) = v30;
    CFRetain(v30);
    if (!v33)
    {
      goto LABEL_82;
    }

    v34 = v33;
LABEL_77:
    CFRelease(v34);
    goto LABEL_82;
  }

  if (v8 <= 9)
  {
    if (v8 != 7)
    {
      if (v8 == 9)
      {
        ++*(a1 + 32);
        *(a1 + 160) = 1;
        *(a1 + 80) = CFAbsoluteTimeGetCurrent();
      }

      goto LABEL_82;
    }

    ++*(a1 + 48);
    v16 = *(*(CMBaseObjectGetVTable() + 56) + 8);
    if (v16)
    {
      a4 = v16(a4);
    }

    else
    {
      a4 = 0;
    }

    if (*(a1 + 128))
    {
      pss_updateStatsWithCurrentVariant(a1);
      *(a1 + 136) = CFAbsoluteTimeGetCurrent();
      v39 = *(a1 + 128);
    }

    else
    {
      v39 = 0;
    }

    *(a1 + 144) = 0;
    *(a1 + 128) = a4;
    if (!a4)
    {
LABEL_75:
      if (!v39)
      {
        goto LABEL_82;
      }

      v34 = v39;
      goto LABEL_77;
    }

LABEL_74:
    CFRetain(a4);
    goto LABEL_75;
  }

  switch(v8)
  {
    case 10:
      v18 = *(*(CMBaseObjectGetVTable() + 48) + 16);
      if (!v18 || v18(a4) == 0.0 || (v19 = *(*(CMBaseObjectGetVTable() + 48) + 24)) != 0 && v19(a4) != 0.0)
      {
        v35 = *(*(CMBaseObjectGetVTable() + 48) + 16);
        if (!v35 || v35(a4) == 0.0)
        {
          v36 = *(*(CMBaseObjectGetVTable() + 48) + 24);
          if (v36)
          {
            if (v36(a4) != 0.0)
            {
              *(a1 + 144) = *(a1 + 144) + CFAbsoluteTimeGetCurrent() - *(a1 + 136);
            }
          }
        }
      }

      else
      {
        *(a1 + 136) = CFAbsoluteTimeGetCurrent();
      }

      v37 = *(*(CMBaseObjectGetVTable() + 48) + 16);
      v38.n128_u64[0] = 0;
      if (v37)
      {
        v38.n128_f64[0] = v37(a4, v38);
      }

      *(a1 + 120) = v38.n128_u64[0];
      break;
    case 13:
      v17 = *(*(CMBaseObjectGetVTable() + 24) + 16);
      if (v17 && v17(a4))
      {
        ++*(a1 + 40);
        break;
      }

      v39 = *(a1 + 16);
      *(a1 + 16) = a4;
      if (!a4)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    case 14:
      pss_updateStatsWithCurrentVariant(a1);
      v9 = *(a1 + 24);
      if (*&v9 > 0.0)
      {
        v10 = vcvtq_s64_f64(vdivq_f64(vcvtq_f64_s64(*(a1 + 104)), vdupq_lane_s64(v9, 0)));
        *(a1 + 88) = vextq_s8(v10, v10, 8uLL);
      }

      if (*(a1 + 160) == 1 && *(a1 + 80) != 0.0)
      {
        *(a1 + 64) = CFAbsoluteTimeGetCurrent() - *(a1 + 80);
      }

      v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v11)
      {
        v12 = v11(a4);
      }

      else
      {
        v12 = 0;
      }

      v40 = *(*(CMBaseObjectGetVTable() + 64) + 8);
      if (v40)
      {
        v41 = v40(a4);
      }

      else
      {
        v41 = 0;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      v43 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v43)
      {
        v43(&v54, a4);
      }

      else
      {
        v54 = *MEMORY[0x1E6960C70];
        v55 = *(MEMORY[0x1E6960C70] + 16);
      }

      v44 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v44)
      {
        v45 = v44(a4);
      }

      else
      {
        v45 = 0;
      }

      v46 = v41;
      if (!v41)
      {
        v41 = *(a1 + 88);
        v46 = *(a1 + 96);
      }

      if (!FigMetricItemPlaybackSummaryEventCreate(AllocatorForMedia, &v54, v45, v12, *(a1 + 16), *(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 72), *(a1 + 24), *(a1 + 56), v41, v46, &v56))
      {
        v47 = v56;
        v48 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v48)
        {
          v48(a2, 0, v47);
        }
      }

      if (v12)
      {
        v34 = v12;
        goto LABEL_77;
      }

      break;
  }

LABEL_82:
  if (v56)
  {
    CFRelease(v56);
  }
}

uint64_t FigMetricEventDownloadSummarySubscriberGetRecoverableErrorCount(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 24);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigMetricEventDownloadSummarySubscriberGetMediaResourceRequestCount(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigMetricEventDownloadSummarySubscriberCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = ensureMetricEventTrace();
  if (!a2)
  {
    FigMetricEventDownloadSummarySubscriberCreate_cold_4(v5, v6, v7, v8, v9, v10, v11, v12, v25, SDWORD2(v25), SHIDWORD(v25), v26);
    return 0;
  }

  if (!a3)
  {
    FigMetricEventDownloadSummarySubscriberCreate_cold_3(v5, v6, v7, v8, v9, v10, v11, v12, v25, SDWORD2(v25), SHIDWORD(v25), v26);
    return 0;
  }

  v25 = xmmword_1E74978C8;
  if (dss_getTypeID_once != -1)
  {
    dispatch_once_f(&dss_getTypeID_once, &v25, subUtil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMetricEventDownloadSummarySubscriberCreate_cold_2(&v25);
    return v25;
  }

  v14 = Instance;
  v15 = FigSimpleMutexCreate();
  v14[2] = v15;
  if (!v15)
  {
    FigMetricEventDownloadSummarySubscriberCreate_cold_1(&v25);
    v23 = v25;
    goto LABEL_19;
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    v23 = 4294954514;
LABEL_19:
    CFRelease(v14);
    return v23;
  }

  v18 = v17(a2, v14, &FigMetricEventDownloadSummarySubscriberCreate_subscriberCallbacks, GlobalNetworkBufferingQueue);
  if (v18)
  {
    v23 = v18;
    goto LABEL_19;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v19)
  {
    v19(a2, v14, 1);
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v20)
  {
    v20(a2, v14, 2);
  }

  v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v21)
  {
    v21(a2, v14, 3);
  }

  v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v22)
  {
    v22(a2, v14, 13);
  }

  v23 = 0;
  *a3 = v14;
  return v23;
}

uint64_t dss_didReceiveEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v6)
  {
    v7 = v6(a4);
    if ((v7 - 1) < 3)
    {
      v8 = 32;
LABEL_4:
      ++*(a1 + v8);
      goto LABEL_9;
    }

    if (v7 == 13)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 24) + 16);
      if (v9)
      {
        if (v9(a4))
        {
          v8 = 24;
          goto LABEL_4;
        }
      }
    }
  }

LABEL_9:

  return FigSimpleMutexUnlock();
}

void ilktu_finalize(void *a1)
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

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    dispatch_release(v5);
  }
}

uint64_t subUtil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

double pss_updateStatsWithCurrentVariant(uint64_t a1)
{
  if (*(a1 + 120) != 0.0)
  {
    *(a1 + 144) = *(a1 + 144) + CFAbsoluteTimeGetCurrent() - *(a1 + 136);
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 104) = (*(a1 + 104) + FigAlternateGetPeakBitRate(v2) * *(a1 + 144));
    AverageBitRate = FigAlternateGetAverageBitRate(*(a1 + 128));
    v4 = *(a1 + 144);
    *(a1 + 112) = (*(a1 + 112) + AverageBitRate * v4);
  }

  else
  {
    v4 = *(a1 + 144);
  }

  result = v4 + *(a1 + 24);
  *(a1 + 24) = result;
  return result;
}

void pss_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[16];
  if (v3)
  {
    CFRelease(v3);
    a1[16] = 0;
  }

  v4 = a1[19];
  if (v4)
  {
    dispatch_release(v4);
    a1[19] = 0;
  }
}

uint64_t FigLoopingEditCursorServiceCreate(uint64_t a1, __int128 *a2, void *a3)
{
  v16 = 0;
  FigEditCursorServiceGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *a2;
    v8 = a2[2];
    *(DerivedStorage + 16) = a2[1];
    *(DerivedStorage + 32) = v8;
    *DerivedStorage = v7;
    if ((*(a2 + 3) & 0x1D) == 1 && (time1 = *a2, v13 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v9 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v9, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) && (*(a2 + 9) & 0x1D) == 1)
    {
      time1 = *(a2 + 1);
      *&time2.value = v13;
      time2.epoch = v9;
      v10 = CMTimeCompare(&time1, &time2);
      *(DerivedStorage + 48) = v10 > 0;
      if (v10 < 1)
      {
        v11 = 0;
      }

      else
      {
        time1 = *a2;
        *&time2.value = v13;
        time2.epoch = v9;
        v11 = CMTimeCompare(&time1, &time2) > 0;
      }
    }

    else
    {
      v11 = 0;
      *(DerivedStorage + 48) = 0;
    }

    *(DerivedStorage + 49) = v11;
    *a3 = v16;
  }

  return v5;
}

__CFString *loopingCursorService_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigLoopingEditCursorService %p>", a1);
  if (*(DerivedStorage + 48))
  {
    v4 = "looping";
  }

  else
  {
    v4 = "pass-through";
  }

  CFStringAppendFormat(Mutable, 0, @"{ %s", v4);
  if (*(DerivedStorage + 48))
  {
    v5 = *DerivedStorage;
    time.epoch = *(DerivedStorage + 16);
    *&time.value = v5;
    Seconds = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 24);
    v7 = CMTimeGetSeconds(&time);
    CFStringAppendFormat(Mutable, 0, @" time range [%1.3f,+%1.3f]", *&Seconds, *&v7);
  }

  CFStringAppendFormat(Mutable, 0, @" }");
  return Mutable;
}

uint64_t loopingCursorService_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v6 = DerivedStorage;
    if (FigCFEqual())
    {
      v7 = MEMORY[0x1E695E4D0];
      if (!*(v6 + 48))
      {
        v7 = MEMORY[0x1E695E4C0];
      }

      v8 = CFRetain(*v7);
      result = 0;
      *a4 = v8;
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    loopingCursorService_CopyProperty_cold_1(&v10);
    return v10;
  }

  return result;
}

__CFString *loopingCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigLoopingEditCursor %p>", a1);
  if (*(DerivedStorage + 48))
  {
    v4 = "looping";
  }

  else
  {
    v4 = "pass-through";
  }

  CFStringAppendFormat(Mutable, 0, @"{ %s", v4);
  if (*(DerivedStorage + 48))
  {
    v5 = *DerivedStorage;
    time.epoch = *(DerivedStorage + 16);
    *&time.value = v5;
    Seconds = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 24);
    v7 = CMTimeGetSeconds(&time);
    CFStringAppendFormat(Mutable, 0, @" time range [%1.3f,+%1.3f]", *&Seconds, *&v7);
  }

  CFStringAppendFormat(Mutable, 0, @", editIndex %d }", *(DerivedStorage + 56));
  return Mutable;
}

uint64_t loopingCursor_Step(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56) + a2;
  *(DerivedStorage + 56) = v4 & ~(v4 >> 63);
  return (v4 >> 63) & 0xFFFFCF18;
}

uint64_t loopingCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 56);
    if (v5)
    {
      if (*(DerivedStorage + 49))
      {
        v6 = -1;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      if (*(DerivedStorage + 49))
      {
        v17 = MEMORY[0x1E6960CC0];
        v18 = *MEMORY[0x1E6960CC0];
        *(a2 + 48) = *MEMORY[0x1E6960CC0];
        v19 = *(v17 + 16);
        *(a2 + 64) = v19;
        v20 = *(DerivedStorage + 16);
        *(a2 + 72) = *DerivedStorage;
        *(a2 + 88) = v20;
        *(a2 + 16) = v19;
        *a2 = v18;
        v21 = *(DerivedStorage + 16);
        *(a2 + 24) = *DerivedStorage;
        *(a2 + 40) = v21;
        return 0;
      }

      v6 = 0;
    }

    time = *(DerivedStorage + 24);
    CMTimeMultiply(&rhs, &time, v5 + v6);
    v7 = *v4;
    v23.epoch = *(v4 + 16);
    *&v23.value = v7;
    CMTimeAdd(&time, &v23, &rhs);
    *(a2 + 48) = time;
    v8 = *(v4 + 24);
    *(a2 + 88) = *(v4 + 40);
    *(a2 + 72) = v8;
    v9 = *v4;
    v10 = *(v4 + 32);
    *(a2 + 16) = *(v4 + 16);
    *(a2 + 32) = v10;
    *a2 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E6960CC0];
    v12 = *MEMORY[0x1E6960CC0];
    *(a2 + 48) = *MEMORY[0x1E6960CC0];
    v13 = *(v11 + 16);
    *(a2 + 64) = v13;
    v14 = MEMORY[0x1E6960C88];
    v15 = *MEMORY[0x1E6960C88];
    *(a2 + 72) = *MEMORY[0x1E6960C88];
    v16 = *(v14 + 16);
    *(a2 + 88) = v16;
    *a2 = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 40) = v16;
  }

  return 0;
}

__n128 OUTLINED_FUNCTION_0_210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a18, unint64_t a19)
{
  result = a18;
  *v19 = a18;
  v19[1].n128_u64[0] = a19;
  return result;
}

__CFString *FigGetNotifyingObjectForSelectionCriteriaChanged(uint64_t a1, uint64_t a2)
{
  if (_ensureAutomaticMediaSelectionInitialized_gSetupAutomaticMediaSelectionOnce != -1)
  {
    FigGetNotifyingObjectForSelectionCriteriaChanged_cold_1();
  }

  return @"AutomaticMediaSelectionNotification_DefaultsChanged";
}

__CFDictionary *FigAutomaticMediaSelectionCopyDefaultCriteria(uint64_t a1, uint64_t a2)
{
  if (_ensureAutomaticMediaSelectionInitialized_gSetupAutomaticMediaSelectionOnce != -1)
  {
    FigGetNotifyingObjectForSelectionCriteriaChanged_cold_1();
  }

  FigSimpleMutexLock();
  DefaultMediaSelectionCriteria = qword_1ED4CBB60;
  if (qword_1ED4CBB60 || (DefaultMediaSelectionCriteria = _createDefaultMediaSelectionCriteria(*MEMORY[0x1E695E480]), (qword_1ED4CBB60 = DefaultMediaSelectionCriteria) != 0))
  {
    CFRetain(DefaultMediaSelectionCriteria);
  }

  FigSimpleMutexUnlock();
  return DefaultMediaSelectionCriteria;
}

void _mergeMediaPresentationArray(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFDictionaryRef theDict)
{
  if (a3 && theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v9 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    v16 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    v17 = v9;
    CFDictionaryGetKeysAndValues(theDict, v9, v16);
    if (Count >= 1)
    {
      v10 = v16;
      do
      {
        v11 = *v9;
        MutableCopy = FigCFArrayCreateMutableCopy();
        if (MutableCopy)
        {
          v13 = MutableCopy;
          Value = FigCFDictionaryGetValue();
          if (Value)
          {
            Mutable = CFDictionaryCreateMutableCopy(a1, 0, Value);
            FigCFDictionaryGetValue();
          }

          else
          {
            Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          FigCFArrayAppendArray();
          if (Mutable)
          {
            CFDictionarySetValue(Mutable, a3, v13);
            CFDictionarySetValue(a2, v11, Mutable);
            CFRelease(Mutable);
          }

          CFRelease(v13);
        }

        ++v10;
        ++v9;
        --Count;
      }

      while (Count);
    }

    free(v17);

    free(v16);
  }
}

uint64_t FigAutomaticMediaSelectionGetMediaSelectionGroupsForMajorIntrinsicCharacteristics(uint64_t theArray, const __CFDictionary **a2, const __CFDictionary **a3, const __CFDictionary **a4)
{
  v7 = theArray;
  if (theArray)
  {
    theArray = CFArrayGetCount(theArray);
    v8 = theArray;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = 0;
  }

LABEL_4:
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
      theArray = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaCharacteristics");
      if (theArray)
      {
        v11 = theArray;
        theArray = CFArrayGetCount(theArray);
        v12 = theArray;
        if (a2)
        {
          if (!*a2)
          {
            v13.location = 0;
            v13.length = theArray;
            theArray = CFArrayContainsValue(v11, v13, @"public.visual");
            if (theArray)
            {
              *a2 = ValueAtIndex;
            }
          }
        }

        if (a3)
        {
          if (!*a3)
          {
            v14.location = 0;
            v14.length = v12;
            theArray = CFArrayContainsValue(v11, v14, @"public.audible");
            if (theArray)
            {
              *a3 = ValueAtIndex;
            }
          }
        }

        if (a4 && !*a4)
        {
          v15.location = 0;
          v15.length = v12;
          theArray = CFArrayContainsValue(v11, v15, @"public.legible");
          if (theArray)
          {
            *a4 = ValueAtIndex;
          }
        }
      }
    }
  }

  return theArray;
}

const __CFDictionary *FigAutomaticMediaSelectionGetOptionFromMediaSelectionGroupAssociatedWithOption(const __CFDictionary *a1, int a2, int a3, int a4, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"MediaSelectionGroupOptions");
  if (!a1)
  {
    return 0;
  }

  v7 = Value;
  v8 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsAssociatedPersistentIDs");
  v39 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsExtendedLanguageTag");
  if (!v8 || (v9 = CFArrayGetCount(v8), v9 < 1))
  {
LABEL_19:
    v16 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
    if (v16)
    {
      if (!v7)
      {
        return 0;
      }

      v17 = v16;
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v19 = Count;
        v43 = 0;
        v20 = 0;
        allocator = *MEMORY[0x1E695E480];
        theDicta = v17;
        v42 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v20);
          CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsMediaType");
          v50 = 0;
          v22 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
          FigCFStringGetOSTypeValue();
          if (!v22 || v50 == 1668047728)
          {
            goto LABEL_47;
          }

          if (v17 == v22)
          {
            v26 = 0;
            v27 = 0;
            v24 = 0;
            ComponentsFromLocaleIdentifier = 0;
            v31 = 0;
            goto LABEL_36;
          }

          ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(allocator, v17);
          if (!ComponentsFromLocaleIdentifier)
          {
            break;
          }

          v24 = CFLocaleCreateComponentsFromLocaleIdentifier(allocator, v22);
          if (!v24)
          {
            v26 = 0;
            v27 = 0;
            goto LABEL_51;
          }

          v25 = CFDictionaryGetCount(ComponentsFromLocaleIdentifier);
          v26 = malloc_type_calloc(v25, 8uLL, 0x80040B8603338uLL);
          v27 = malloc_type_calloc(v25, 8uLL, 0x80040B8603338uLL);
          CFDictionaryGetKeysAndValues(ComponentsFromLocaleIdentifier, v26, v27);
          if (v25 < 1)
          {
LABEL_33:
            v31 = 0;
          }

          else
          {
            v28 = 0;
            while (1)
            {
              v29 = v27[v28];
              v30 = CFDictionaryGetValue(v24, v26[v28]);
              if (!v30 || CFStringCompare(v30, v29, 0))
              {
                break;
              }

              if (v25 == ++v28)
              {
                goto LABEL_33;
              }
            }

            v31 = 1;
          }

LABEL_36:
          free(v26);
          free(v27);
          if (ComponentsFromLocaleIdentifier)
          {
            CFRelease(ComponentsFromLocaleIdentifier);
          }

          v19 = v42;
          if (v24)
          {
            CFRelease(v24);
          }

          if (v31)
          {
            v17 = theDicta;
          }

          else
          {
            if (v50 != 1952807028 && v50 != 1935832172)
            {
LABEL_69:
              v43 = ValueAtIndex;
              goto LABEL_53;
            }

            v49 = 0;
            v17 = theDicta;
            if (_legibleOptionMeetsMainProgramContentAndForcedOnlyCriteria(ValueAtIndex, a2, a3, a4, &v49))
            {
              if (v49)
              {
                goto LABEL_69;
              }

              v43 = ValueAtIndex;
            }
          }

LABEL_47:
          if (++v20 == v19)
          {
            goto LABEL_53;
          }
        }

        v26 = 0;
        v27 = 0;
        v24 = 0;
LABEL_51:
        v31 = 1;
        goto LABEL_36;
      }
    }

    v43 = 0;
LABEL_53:
    if (v43 || !v39)
    {
      return v43;
    }

    if (v7)
    {
      v32 = CFArrayGetCount(v7);
      if (v32 >= 1)
      {
        v33 = v32;
        v43 = 0;
        v34 = 0;
        while (1)
        {
          v35 = CFArrayGetValueAtIndex(v7, v34);
          CFDictionaryGetValue(v35, @"MediaSelectionOptionsAssociatedExtendedLanguageTag");
          CFDictionaryGetValue(v35, @"MediaSelectionOptionsMediaType");
          v48 = 0;
          FigCFStringGetOSTypeValue();
          if (v48 != 1668047728 && FigCFEqual())
          {
            if (v48 != 1952807028 && v48 != 1935832172)
            {
              return v35;
            }

            v47 = 0;
            if (_legibleOptionMeetsMainProgramContentAndForcedOnlyCriteria(v35, a2, a3, a4, &v47))
            {
              if (v47)
              {
                return v35;
              }

              v43 = v35;
            }
          }

          if (v33 == ++v34)
          {
            return v43;
          }
        }
      }
    }

    return 0;
  }

  v10 = v9;
  v11 = 0;
  v40 = v9;
  v41 = v8;
  while (2)
  {
    CFArrayGetValueAtIndex(v8, v11);
    if (!v7)
    {
      goto LABEL_18;
    }

    v12 = CFArrayGetCount(v7);
    if (v12 < 1)
    {
      goto LABEL_18;
    }

    v13 = v12;
    v43 = 0;
    v14 = 0;
    while (1)
    {
      v15 = CFArrayGetValueAtIndex(v7, v14);
      CFDictionaryGetValue(v15, @"MediaSelectionOptionsPersistentID");
      CFDictionaryGetValue(v15, @"MediaSelectionOptionsMediaType");
      v52 = 0;
      FigCFStringGetOSTypeValue();
      if (!FigCFEqual())
      {
        goto LABEL_14;
      }

      if (v52 != 1952807028 && v52 != 1935832172)
      {
        break;
      }

      v51 = 0;
      if (_legibleOptionMeetsMainProgramContentAndForcedOnlyCriteria(v15, a2, a3, a4, &v51))
      {
        if (v51)
        {
          break;
        }

        v43 = v15;
      }

LABEL_14:
      if (v13 == ++v14)
      {
        goto LABEL_17;
      }
    }

    v43 = v15;
LABEL_17:
    v8 = v41;
    v10 = v40;
    if (!v43)
    {
LABEL_18:
      if (++v11 == v10)
      {
        goto LABEL_19;
      }

      continue;
    }

    return v43;
  }
}

uint64_t _legibleOptionMeetsMainProgramContentAndForcedOnlyCriteria(const __CFDictionary *a1, int a2, int a3, int a4, BOOL *a5)
{
  Value = CFDictionaryGetValue(a1, @"MediaSelectionOptionsDisplaysForcedSubtitlesOnly");
  v11 = *MEMORY[0x1E695E4D0];
  if (a5)
  {
    *a5 = Value == v11;
  }

  if (a3 && Value != v11 || a2 && CFDictionaryGetValue(a1, @"MediaSelectionOptionsIsAuxiliaryContent") == v11)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  CFDictionaryGetValue(a1, @"MediaSelectionOptionsTaggedMediaCharacteristics");
  result = FigCFArrayContainsValue();
  if (result)
  {
    return 1;
  }

  return result;
}

CFTypeRef FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(CFArrayRef theArray, const __CFDictionary *a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (a2)
  {
    CFDictionaryGetValue(a2, @"MediaSelectionGroupID");
    CFDictionaryGetValue(a2, @"MediaSelectionGroupMediaType");
  }

  if (Count < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupID");
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
    if (FigCFEqual())
    {
      if (FigCFEqual())
      {
        break;
      }
    }

    if (Count == ++v5)
    {
      return 0;
    }
  }

  if (!ValueAtIndex)
  {
    return 0;
  }

  return CFRetain(ValueAtIndex);
}

uint64_t FigAutomaticMediaSelectionCreateSecondaryForcedSubtitlesSelectedMediaDictionary(const __CFArray *a1, const __CFDictionary *a2, const __CFDictionary *a3, unsigned int a4)
{
  v5 = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(a1, a2);
  OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles = _getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(a2, v5);
  if (OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles && CFDictionaryGetValue(OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles, @"MediaSelectionOptionsMediaType"))
  {
    FigCFStringGetOSTypeValue();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

const __CFDictionary *_getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(const __CFDictionary *a1, const __CFDictionary *a2)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"MediaSelectionGroupOptions");
    v4 = Value;
    if (Value)
    {
      Count = CFArrayGetCount(Value);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  Count = 0;
LABEL_6:
  v6 = MEMORY[0x1E695E4D0];
  if (a2)
  {
    CFDictionaryGetValue(a2, @"MediaSelectionOptionsPersistentID");
    v12 = *v6 == CFDictionaryGetValue(a2, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
  }

  else
  {
    v12 = 0;
  }

  if (Count < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *v6;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
    v10 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
    if (FigCFEqual())
    {
      if (v12 == (v8 == v10))
      {
        break;
      }
    }

    if (Count == ++v7)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

__CFDictionary *_createSelectedMediaDictionaryForOptionInGroup(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a2)
  {
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a2, @"MediaSelectionOptionsPersistentID");
  v7 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsUniqueOutOfBandID");
  if (Value)
  {
    v8 = Mutable;
    v9 = @"MediaSelectionOptionsPersistentID";
    v10 = Value;
LABEL_6:
    CFDictionarySetValue(v8, v9, v10);
    goto LABEL_7;
  }

  v10 = v7;
  if (v7)
  {
    v8 = Mutable;
    v9 = @"MediaSelectionOptionsUniqueOutOfBandID";
    goto LABEL_6;
  }

LABEL_7:
  v11 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"MediaSelectionOptionsDisplaysNonForcedSubtitles", v11);
  }

  v12 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsAudioCompositionPresetIndex");
  if (v12)
  {
    CFDictionarySetValue(Mutable, @"MediaSelectionOptionsAudioCompositionPresetIndex", v12);
  }

LABEL_11:
  v13 = CFDictionaryGetValue(a3, @"MediaSelectionGroupID");
  v14 = CFDictionaryGetValue(a3, @"MediaSelectionGroupMediaType");
  if (v13)
  {
    v15 = Mutable;
    v16 = @"MediaSelectionGroupID";
    v17 = v13;
LABEL_15:
    CFDictionarySetValue(v15, v16, v17);
    goto LABEL_16;
  }

  v17 = v14;
  if (v14)
  {
    v15 = Mutable;
    v16 = @"MediaSelectionGroupMediaType";
    goto LABEL_15;
  }

LABEL_16:
  CFDictionarySetValue(Mutable, @"AutomaticallySelected", *MEMORY[0x1E695E4D0]);
  return Mutable;
}

uint64_t FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteriaWithLegibleFallbackCriteria(uint64_t a1, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7, unsigned __int8 a8, unsigned __int8 a9, CFTypeRef *a10)
{
  cf = 0;
  *a10 = 0;
  v15 = *MEMORY[0x1E695E480];
  if (a2)
  {
    MutableCopy = FigCFArrayCreateMutableCopy();
    if (MutableCopy)
    {
      v18 = MutableCopy;
      AutomaticSelectedMediaArrayForCriteria = _createAutomaticSelectedMediaArrayForCriteria(v15, a1, a2, a3, a4, a5, a6, a7, a8, a9, &cf);
      if (AutomaticSelectedMediaArrayForCriteria)
      {
        v21 = AutomaticSelectedMediaArrayForCriteria;
      }

      else
      {
        FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(v18, cf, 0);
        v21 = v20;
        if (!v20)
        {
          *a10 = v18;
          goto LABEL_6;
        }
      }

      CFRelease(v18);
    }

    else
    {
      FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteriaWithLegibleFallbackCriteria_cold_1(&v26);
      v21 = v26;
    }
  }

  else
  {
    v21 = _createAutomaticSelectedMediaArrayForCriteria(v15, a1, 0, a3, a4, a5, a6, a7, a8, a9, &cf);
    if (!v21)
    {
      *a10 = cf;
      return v21;
    }
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

uint64_t _createAutomaticSelectedMediaArrayForCriteria(const __CFAllocator *a1, uint64_t a2, const __CFArray *a3, const __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7, const __CFDictionary *a8, unsigned __int8 a9, unsigned __int8 a10, __CFArray **a11)
{
  v120 = *MEMORY[0x1E69E9840];
  v116 = 0;
  v117[0] = 0;
  cf = 0;
  v115 = 0;
  SelectedMediaDictionaryForOptionInGroup = 0;
  theDict = 0;
  v111 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v16 = a1;
  fig_note_initialize_category_with_default_work_cf();
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v19 = Mutable;
  if (Mutable)
  {
    v20 = MEMORY[0x1E695E480];
    v21 = FigAutomaticMediaSelectionCopyDefaultCriteria(Mutable, v18);
    MergedCriteria = FigAutomaticMediaSelectionCreateMergedCriteria(v16, v21, a4, a5, a6, a8);
    if (v21)
    {
      CFRelease(v21);
    }

    v104 = *v20;
    allocator = v16;
    if (a10)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v105 = MergedCriteria;
        v117[3] = @"public.audible";
        v117[2] = @"public.legible";
        v24 = 1;
        do
        {
          v25 = v24;
          v117[1] = 0;
          v26 = MutableCopy;
          FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent();
          v27 = FigCFDictionaryCreateMutableCopy();
          v28 = CFArrayCreate(v16, kFigStdAssetMediaCharacteristic_HLSAvailableOffline, 1, MEMORY[0x1E695E9C0]);
          if (v28)
          {
            FigCFDictionarySetValue();
            CFRelease(v28);
          }

          MutableCopy = v26;
          FigCFDictionarySetValue();
          if (v27)
          {
            CFRelease(v27);
          }

          v24 = 0;
        }

        while ((v25 & 1) != 0);
        MergedCriteria = v105;
      }

      if (MergedCriteria)
      {
        CFRelease(MergedCriteria);
      }
    }

    else
    {
      MutableCopy = MergedCriteria;
    }

    FigAutomaticMediaSelectionGetMediaSelectionGroupsForMajorIntrinsicCharacteristics(a2, v117, &v115, &theDict);
    Value = CFDictionaryGetValue(MutableCopy, @"public.audible");
    v30 = Value;
    v31 = 0;
    if (v115 && theDict && Value)
    {
      v32 = CFDictionaryGetValue(Value, @"preferredLanguages");
      if (v32)
      {
        theArray = v32;
        v92 = MutableCopy;
        v94 = v30;
        if (!theDict)
        {
          goto LABEL_57;
        }

        v33 = v115;
        v34 = CFDictionaryGetValue(theDict, @"MediaSelectionGroupOptions");
        if (!v34)
        {
          goto LABEL_57;
        }

        v35 = v34;
        Count = CFArrayGetCount(v34);
        if (v33)
        {
          v37 = CFDictionaryGetValue(v33, @"MediaSelectionGroupOptions");
          v38 = v37;
          v33 = v37 ? CFArrayGetCount(v37) : 0;
        }

        else
        {
          v38 = 0;
        }

        if (Count < 1)
        {
          goto LABEL_57;
        }

        v106 = 0;
        v40 = 0;
        v98 = Count;
        v99 = v35;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v35, v40);
          v42 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
          if (v42)
          {
            if ((v43 = v42, v44 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID"), v106) && (v45 = CFDictionaryGetValue(v106, v43)) != 0 && (v46 = CFRetain(v45)) != 0 || (v46 = CFArrayCreateMutable(v104, 0, MEMORY[0x1E695E9C0])) != 0)
            {
              v47 = v46;
              _addToMutableArrayIfNotPresent(v43, v46);
              v48 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsAssociatedUnicodeLanguageIdentifier");
              if (v48)
              {
                _addToMutableArrayIfNotPresent(v48, v47);
              }

              if (v44 && v33 >= 1)
              {
                for (i = 0; i != v33; ++i)
                {
                  v50 = CFArrayGetValueAtIndex(v38, i);
                  if (v50)
                  {
                    v51 = v50;
                    v52 = CFDictionaryGetValue(v50, @"MediaSelectionOptionsAssociatedPersistentIDs");
                    if (v52)
                    {
                      v53 = v52;
                      v121.length = CFArrayGetCount(v52);
                      v121.location = 0;
                      if (CFArrayContainsValue(v53, v121, v44))
                      {
                        v54 = CFDictionaryGetValue(v51, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
                        if (v54)
                        {
                          _addToMutableArrayIfNotPresent(v54, v47);
                        }
                      }
                    }
                  }
                }
              }

              v55 = v106;
              if (v106 || (v55 = CFDictionaryCreateMutable(v104, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
              {
                v106 = v55;
                CFDictionarySetValue(v55, v43, v47);
              }

              else
              {
                v106 = 0;
              }

              Count = v98;
              v35 = v99;
              CFRelease(v47);
            }
          }

          ++v40;
        }

        while (v40 != Count);
        context = v106;
        v119 = 0;
        v16 = allocator;
        if (v106)
        {
          v119 = CFArrayCreateMutable(v104, 0, MEMORY[0x1E695E9C0]);
          v122.length = CFArrayGetCount(theArray);
          v122.location = 0;
          CFArrayApplyFunction(theArray, v122, _addToAssociatedLanguages, &context);
          v31 = v119;
          if (context)
          {
            CFRelease(context);
          }
        }

        else
        {
LABEL_57:
          v31 = CFRetain(theArray);
        }

        MutableCopy = v92;
        v30 = v94;
        if (v31)
        {
          v56 = FigCFDictionaryCreateMutableCopy();
          v39 = v56;
          if (!v56)
          {
            _createAutomaticSelectedMediaArrayForCriteria_cold_1(&context);
            SelectedMediaDictionaryForGroupUsingCriteria = context;
LABEL_72:
            CFRelease(v31);
            goto LABEL_73;
          }

          CFDictionarySetValue(v56, @"preferredLanguages", v31);
          v30 = v39;
LABEL_62:
          if (v117[0])
          {
            v116 = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(a3, v117[0]);
            if (!v116)
            {
              v81 = CFDictionaryGetValue(MutableCopy, @"public.visual");
              v82 = _createSelectedMediaDictionaryForGroupUsingCriteria(v16, v117[0], v81, 1, &v116, 0);
              if (v82)
              {
                goto LABEL_159;
              }

              if (v116)
              {
                CFArrayAppendValue(v19, v116);
              }
            }
          }

          if (!v115)
          {
            goto LABEL_66;
          }

          cf = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(a3, v115);
          if (cf)
          {
            goto LABEL_66;
          }

          v82 = _createSelectedMediaDictionaryForGroupUsingCriteria(v16, v115, v30, 1, &cf, &v111);
          if (!v82)
          {
            if (cf)
            {
              CFArrayAppendValue(v19, cf);
              v57 = 1;
              goto LABEL_67;
            }

LABEL_66:
            v57 = 0;
LABEL_67:
            if (!theDict)
            {
              goto LABEL_69;
            }

            SelectedMediaDictionaryForOptionInGroup = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(a3, theDict);
            if (SelectedMediaDictionaryForOptionInGroup)
            {
              goto LABEL_69;
            }

            v60 = CFDictionaryGetValue(MutableCopy, @"public.legible");
            SelectedMediaDictionaryForGroupUsingCriteria = cf;
            SelectedMediaDictionaryForOptionInGroup = 0;
            if (!theDict)
            {
              goto LABEL_69;
            }

            v61 = v60;
            v101 = v111;
            v103 = v115;
            v107 = theDict;
            keya = cf;
            if (v60)
            {
              v95 = v30;
              v62 = MutableCopy;
              v63 = CFDictionaryGetCount(v60);
              CountOfKey = CFDictionaryGetCountOfKey(v61, @"captionAppearanceDisplayType");
              v65 = CFDictionaryGetCountOfKey(v61, @"fallbackPreferredLanguages");
              v66 = CFDictionaryGetCountOfKey(v61, @"fallbackPreferredCharacteristics");
              v67 = v63 - (CountOfKey + v65 + v66 + CFDictionaryGetCountOfKey(v61, @"precludedMediaCharacteristics"));
              v68 = CFDictionaryGetValue(v61, @"requiredMediaCharacteristics");
              if (v68)
              {
                v69 = CFArrayGetCount(v68);
                v67 -= v69 == (FigCFArrayContainsValue() != 0);
              }

              v70 = v67 < 1;
              MutableCopy = v62;
              SelectedMediaDictionaryForGroupUsingCriteria = keya;
              v30 = v95;
              if (!v70)
              {
                SelectedMediaDictionaryForGroupUsingCriteria = _createSelectedMediaDictionaryForGroupUsingCriteria(allocator, v107, v61, 0, &SelectedMediaDictionaryForOptionInGroup, 0);
LABEL_120:
                v78 = 0;
                v79 = 0;
                MediaSelectionCriteria = 0;
                goto LABEL_121;
              }
            }

            if (!SelectedMediaDictionaryForGroupUsingCriteria)
            {
              goto LABEL_120;
            }

            if (v57 | a9 && _getCaptionAppearanceDisplayType(v61) == kMACaptionAppearanceDisplayTypeAutomatic)
            {
              OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles = _getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(v103, SelectedMediaDictionaryForGroupUsingCriteria);
              SelectedMediaDictionaryForGroupUsingCriteria = OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles;
              if (!OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles)
              {
                v78 = 0;
                v79 = 0;
                MediaSelectionCriteria = 0;
                goto LABEL_121;
              }

              v93 = MutableCopy;
              v96 = v30;
              v100 = CFDictionaryGetValue(OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles, @"MediaSelectionOptionsLanguageCode");
              v72 = CFLocaleCopyPreferredLanguages();
              v73 = SelectedMediaDictionaryForGroupUsingCriteria;
              v74 = CFArrayCreateMutable(v104, 0, MEMORY[0x1E695E9C0]);
              _appendOptionLanguages(SelectedMediaDictionaryForGroupUsingCriteria, v74);
              v75 = FigCopyRankedLanguagesAccordingToPreferredLanguages();
              v76 = v73;
              v77 = _optionLanguageMatchesLanguageList(v73, v75);
              if (v74)
              {
                CFRelease(v74);
              }

              if (v72)
              {
                CFRelease(v72);
              }

              v78 = v76;
              if (v75)
              {
                CFRelease(v75);
              }

              MutableCopy = v93;
              if (v101 | a9)
              {
                SelectedMediaDictionaryForGroupUsingCriteria = 0;
                v79 = 0;
                if (!a9 || v77 || !v100)
                {
                  MediaSelectionCriteria = 0;
LABEL_121:
                  if (!SelectedMediaDictionaryForOptionInGroup)
                  {
LABEL_126:
                    if (!v78)
                    {
                      v78 = _getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(v103, keya);
                    }

                    OptionFromMediaSelectionGroupAssociatedWithOption = FigAutomaticMediaSelectionGetOptionFromMediaSelectionGroupAssociatedWithOption(v78, 1, 1, a10, v107);
                    SelectedMediaDictionaryForOptionInGroup = _createSelectedMediaDictionaryForOptionInGroup(allocator, OptionFromMediaSelectionGroupAssociatedWithOption, v107);
                    if (!SelectedMediaDictionaryForOptionInGroup)
                    {
                      _createAutomaticSelectedMediaArrayForCriteria_cold_2(&context);
                      SelectedMediaDictionaryForGroupUsingCriteria = context;
                    }

                    goto LABEL_130;
                  }

                  if (!CFDictionaryContainsKey(SelectedMediaDictionaryForOptionInGroup, @"MediaSelectionOptionsPersistentID") && !CFDictionaryContainsKey(SelectedMediaDictionaryForOptionInGroup, @"MediaSelectionOptionsUniqueOutOfBandID"))
                  {
                    if (SelectedMediaDictionaryForOptionInGroup)
                    {
                      CFRelease(SelectedMediaDictionaryForOptionInGroup);
                      SelectedMediaDictionaryForOptionInGroup = 0;
                    }

                    goto LABEL_126;
                  }

LABEL_130:
                  if (v79)
                  {
                    CFRelease(v79);
                  }

                  if (MediaSelectionCriteria)
                  {
                    CFRelease(MediaSelectionCriteria);
                  }

                  if (SelectedMediaDictionaryForGroupUsingCriteria)
                  {
LABEL_71:
                    if (!v31)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_72;
                  }

                  if (SelectedMediaDictionaryForOptionInGroup)
                  {
                    CFArrayAppendValue(v19, SelectedMediaDictionaryForOptionInGroup);
                  }

LABEL_69:
                  SelectedMediaDictionaryForGroupUsingCriteria = 0;
                  if (a11)
                  {
                    *a11 = v19;
                    v19 = 0;
                  }

                  goto LABEL_71;
                }
              }

              else if (!v100)
              {
                goto LABEL_108;
              }

              if (!FigCFEqual())
              {
                if (v96)
                {
                  v83 = CFDictionaryGetValue(v96, @"preferredLanguages");
                }

                else
                {
                  v83 = 0;
                }

                context = @"public.auxiliary-content";
                v119 = @"public.subtitles.forced-only";
                v79 = CFArrayCreateMutable(v104, 0, MEMORY[0x1E695E9C0]);
                if (!v79)
                {
                  MediaSelectionCriteria = 0;
                  goto LABEL_161;
                }

                if (a7 && (v85 = CFDictionaryGetValue(a7, @"preferredLanguages")) != 0)
                {
                  v86 = v85;
                  v123.length = CFArrayGetCount(v85);
                  v123.location = 0;
                  CFArrayAppendArray(v79, v86, v123);
                  MutableCopy = v93;
                }

                else
                {
                  if (!a9 && v83)
                  {
                    v124.length = CFArrayGetCount(v83);
                    v124.location = 0;
                    CFArrayAppendArray(v79, v83, v124);
                  }

                  MutableCopy = v93;
                  if (v61)
                  {
                    v87 = CFDictionaryGetValue(v61, @"fallbackPreferredLanguages");
                    if (v87)
                    {
                      v88 = v87;
                      v125.length = CFArrayGetCount(v87);
                      v125.location = 0;
                      CFArrayAppendArray(v79, v88, v125);
                    }
                  }

                  if (!a7)
                  {
                    v89 = 0;
                    v90 = 0;
                    goto LABEL_151;
                  }
                }

                v89 = CFDictionaryGetValue(a7, @"requiredMediaCharacteristics");
                v90 = CFDictionaryGetValue(a7, @"preferredMediaCharacteristics");
LABEL_151:
                if (v61 && !v90)
                {
                  v90 = CFDictionaryGetValue(v61, @"fallbackPreferredCharacteristics");
                }

                MediaSelectionCriteria = _createMediaSelectionCriteria(allocator, 0, v79, v89, v90, &context, 2);
                if (MediaSelectionCriteria)
                {
                  SelectedMediaDictionaryForGroupUsingCriteria = _createSelectedMediaDictionaryForGroupUsingCriteria(allocator, v107, MediaSelectionCriteria, 0, &SelectedMediaDictionaryForOptionInGroup, 0);
                  if (!SelectedMediaDictionaryForGroupUsingCriteria)
                  {
                    goto LABEL_121;
                  }

LABEL_162:
                  MutableCopy = v93;
                  goto LABEL_130;
                }

LABEL_161:
                SelectedMediaDictionaryForGroupUsingCriteria = 0;
                goto LABEL_162;
              }
            }

            else
            {
              v78 = 0;
            }

LABEL_108:
            v79 = 0;
            MediaSelectionCriteria = 0;
            SelectedMediaDictionaryForGroupUsingCriteria = 0;
            goto LABEL_121;
          }

LABEL_159:
          SelectedMediaDictionaryForGroupUsingCriteria = v82;
          goto LABEL_71;
        }
      }

      else
      {
        v31 = 0;
      }

      v39 = 0;
      goto LABEL_62;
    }

    v39 = 0;
    goto LABEL_62;
  }

  _createAutomaticSelectedMediaArrayForCriteria_cold_3(&context);
  MutableCopy = 0;
  v39 = 0;
  SelectedMediaDictionaryForGroupUsingCriteria = context;
LABEL_73:
  if (v116)
  {
    CFRelease(v116);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SelectedMediaDictionaryForOptionInGroup)
  {
    CFRelease(SelectedMediaDictionaryForOptionInGroup);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return SelectedMediaDictionaryForGroupUsingCriteria;
}

double FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(const __CFArray *a1, CFArrayRef theArray, int a3)
{
  v3 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a1)
    {
LABEL_3:
      v7 = CFArrayGetCount(a1);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  if (Count >= 1)
  {
    v8 = 0;
    v19 = *MEMORY[0x1E695E4D0];
    v20 = Count;
    v21 = v3;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
      if (!ValueAtIndex || (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 != CFDictionaryGetTypeID()))
      {
        v17 = 2777;
        goto LABEL_26;
      }

      v23 = v8;
      CFDictionaryGetValue(v10, @"MediaSelectionGroupID");
      CFDictionaryGetValue(v10, @"MediaSelectionGroupMediaType");
      Value = CFDictionaryGetValue(v10, @"AutomaticSelection");
      if (v7 >= 1)
      {
        break;
      }

LABEL_21:
      if (Value != v19)
      {
        CFArrayAppendValue(a1, v10);
        ++v7;
      }

LABEL_23:
      ++v8;
      v3 = v21;
      if (v23 + 1 == v20)
      {
        return result;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = CFArrayGetValueAtIndex(a1, v12);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 != CFDictionaryGetTypeID())
      {
        break;
      }

      CFDictionaryGetValue(v14, @"MediaSelectionGroupID");
      CFDictionaryGetValue(v14, @"MediaSelectionGroupMediaType");
      v16 = FigCFEqual();
      if (a3)
      {
        if (v16 && FigCFEqual())
        {
          CFArrayRemoveValueAtIndex(a1, v12);
          --v7;
          --v12;
        }
      }

      else if (v16 && FigCFEqual())
      {
        goto LABEL_23;
      }

      if (++v12 >= v7)
      {
        goto LABEL_21;
      }
    }

    v17 = 2794;
LABEL_26:
    v18 = qword_1EAF17AD0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 4294954516, "<<<< Automatic Media Selection >>>>", v17);
  }

  return result;
}

__CFArray *FigCopyMediaSelectionArrayAndMarkOptionsAvailableOffline(const void *a1, const void *a2, uint64_t a3)
{
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_17;
  }

  v13 = 0;
  v4 = *MEMORY[0x1E695E480];
  FigAssetCacheInspectorCreate(*MEMORY[0x1E695E480], a2, &v13);
  if (!v13)
  {
    return CFRetain(a1);
  }

  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a1) >= 1)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, ValueAtIndex);
      CFArrayAppendValue(Mutable, MutableCopy);
      CFDictionaryGetValue(MutableCopy, @"MediaSelectionGroupOptions");
      cf = 0;
      v9 = v13;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10)
      {
        v10(v9, ValueAtIndex, 0, &cf);
      }

      FigCFArrayApplyFunction();
      if (cf)
      {
        CFRelease(cf);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      ++v6;
    }

    while (v6 < CFArrayGetCount(a1));
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (!Mutable)
  {
LABEL_17:
    if (!a1)
    {
      return 0;
    }

    return CFRetain(a1);
  }

  return Mutable;
}

void figAddOfflineCharacteristic(const __CFDictionary *a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"MediaSelectionGroupOptions");
      if (Value)
      {
        v5 = Value;
        v6 = *MEMORY[0x1E695E480];
        MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, Value);
        CFRetain(v5);
        CFDictionarySetValue(theDict, @"MediaSelectionGroupOptions", MutableCopy);
        OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles = _getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(theDict, a1);
        if (OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles)
        {
          v9 = OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles;
          v17.length = CFArrayGetCount(v5);
          v17.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v17, v9);
          if (FirstIndexOfValue != -1)
          {
            v11 = FirstIndexOfValue;
            v12 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsTaggedMediaCharacteristics");
            v13 = v12;
            if (!v12 || (v18.length = CFArrayGetCount(v12), v18.location = 0, !CFArrayContainsValue(v13, v18, @"com.apple.HLS.available-offline")))
            {
              v14 = CFDictionaryCreateMutableCopy(v6, 0, a1);
              v15 = FigCFArrayCreateMutableCopy();
              CFArrayAppendValue(v15, @"com.apple.HLS.available-offline");
              CFDictionarySetValue(v14, @"MediaSelectionOptionsTaggedMediaCharacteristics", v15);
              CFArraySetValueAtIndex(MutableCopy, v11, v14);
              if (v15)
              {
                CFRelease(v15);
              }

              if (v14)
              {
                CFRelease(v14);
              }
            }
          }
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        CFRelease(v5);
      }
    }
  }
}

uint64_t FigAutomaticMediaSelectionCopyMediaPresentationSettingsForSelectedMedia(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, const __CFArray *a4, CFTypeRef *a5, CFTypeRef *a6)
{
  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    FigAutomaticMediaSelectionCopyMediaPresentationSettingsForSelectedMedia_cold_3(&v12);
    return v12;
  }

  if (!a3 || CFArrayGetCount(a3) <= 0)
  {
    FigAutomaticMediaSelectionCopyMediaPresentationSettingsForSelectedMedia_cold_2(&v12);
    return v12;
  }

  if (!a4 || CFArrayGetCount(a4) <= 0)
  {
    FigAutomaticMediaSelectionCopyMediaPresentationSettingsForSelectedMedia_cold_1(&v12);
    return v12;
  }

  FigCFArrayApplyFunction();
  if (a5)
  {
    *a5 = 0;
  }

  v10 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  return v10;
}

void famsAddMediaPresentationSettings(const __CFDictionary *a1, uint64_t a2)
{
  theDict = 0;
  v3 = 0;
  Value = CFDictionaryGetValue(a1, @"MediaSelectionGroupMediaType");
  v5 = CFDictionaryGetValue(a1, @"CustomMediaSelectionSchemeGroupID");
  if (_getMajorCharacteristicForMediaSelectionGroup(a1))
  {
    FigCFArrayApplyFunction();
  }
}

uint64_t _deferredLocaleOrMediaAccessibilityDidChangeNotificationCallback(uint64_t a1)
{
  FigSimpleMutexLock();
  if (qword_1ED4CBB60)
  {
    CFRelease(qword_1ED4CBB60);
    qword_1ED4CBB60 = 0;
  }

  FigSimpleMutexUnlock();
  if (_ensureAutomaticMediaSelectionInitialized_gSetupAutomaticMediaSelectionOnce != -1)
  {
    FigGetNotifyingObjectForSelectionCriteriaChanged_cold_1();
  }

  return CMNotificationCenterPostNotification();
}

__CFDictionary *_createMediaSelectionCriteria(const __CFAllocator *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void **a6, CFIndex a7)
{
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v14 = MutableCopy;
  if (MutableCopy)
  {
    if (a3)
    {
      CFDictionarySetValue(MutableCopy, @"preferredLanguages", a3);
    }

    if (a4)
    {
      CFDictionarySetValue(v14, @"requiredMediaCharacteristics", a4);
    }

    if (a5)
    {
      CFDictionarySetValue(v14, @"preferredMediaCharacteristics", a5);
    }

    if (a6)
    {
      v15 = CFArrayCreate(a1, a6, a7, MEMORY[0x1E695E9C0]);
      if (v15)
      {
        v16 = v15;
        CFDictionarySetValue(v14, @"precludedMediaCharacteristics", v15);
        CFRelease(v16);
      }
    }
  }

  return v14;
}

MACaptionAppearanceDisplayType _getCaptionAppearanceDisplayType(uint64_t a1)
{
  if (FigCFDictionaryGetInt32IfPresent())
  {
    return 0;
  }

  else
  {
    return FigMediaAccessibilityCaptionsDisplayType();
  }
}

void _addToAssociatedLanguages(void *key, CFDictionaryRef *a2)
{
  Value = CFDictionaryGetValue(*a2, key);
  if (Value)
  {
    v5 = Value;
    v7.length = CFArrayGetCount(Value);
    v6 = a2[1];
    v7.location = 0;

    CFArrayApplyFunction(v5, v7, _addToMutableArrayIfNotPresent, v6);
  }

  else
  {
    v8 = a2[1];

    _addToMutableArrayIfNotPresent(key, v8);
  }
}

void _addToMutableArrayIfNotPresent(const void *a1, CFArrayRef theArray)
{
  v5.length = CFArrayGetCount(theArray);
  v5.location = 0;
  if (!CFArrayContainsValue(theArray, v5, a1))
  {

    CFArrayAppendValue(theArray, a1);
  }
}

__CFString *_getMajorCharacteristicForMediaSelectionGroup(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"MediaSelectionGroupMediaCharacteristics");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  v4 = @"public.visual";
  v6.location = 0;
  v6.length = Count;
  if (!CFArrayContainsValue(v2, v6, @"public.visual"))
  {
    v4 = @"public.audible";
    v7.location = 0;
    v7.length = Count;
    if (!CFArrayContainsValue(v2, v7, @"public.audible"))
    {
      v4 = @"public.legible";
      v8.location = 0;
      v8.length = Count;
      if (!CFArrayContainsValue(v2, v8, @"public.legible"))
      {
        return 0;
      }
    }
  }

  return v4;
}

void _appendOptionLanguages(const __CFDictionary *a1, const __CFArray *a2)
{
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
      if (Value || (Value = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageCode")) != 0)
      {
        v5 = Value;
        v7.length = CFArrayGetCount(a2);
        v7.location = 0;
        if (!CFArrayContainsValue(a2, v7, v5))
        {

          CFArrayAppendValue(a2, v5);
        }
      }
    }
  }
}

const void *_optionLanguageMatchesLanguageList(const __CFDictionary *a1, const __CFArray *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
  if (result || (result = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageCode")) != 0)
  {
    v5 = result;
    v6.length = CFArrayGetCount(a2);
    v6.location = 0;
    return (CFArrayContainsValue(a2, v6, v5) != 0);
  }

  return result;
}

const __CFDictionary *famsMatchCustomMediaSelectionScheme(const __CFDictionary *result, void *a2)
{
  if (!a2[2])
  {
    if ((v3 = result, CFDictionaryGetValue(result, @"CustomMediaSelectionSchemeGroupMediaType"), CFDictionaryGetValue(v3, @"CustomMediaSelectionSchemeGroupID"), *a2) && (result = FigCFEqual(), result) || (result = a2[1]) != 0 && (result = FigCFEqual(), result))
    {
      a2[2] = v3;
    }
  }

  return result;
}

const __CFDictionary *famsMatchSelectedMediaOption(const __CFDictionary *result, void *a2)
{
  if (!a2[2])
  {
    if ((v3 = result, CFDictionaryGetValue(result, @"MediaSelectionGroupMediaType"), CFDictionaryGetValue(v3, @"MediaSelectionGroupID"), *a2) && (result = FigCFEqual(), result) || (result = a2[1]) != 0 && (result = FigCFEqual(), result))
    {
      a2[2] = v3;
    }
  }

  return result;
}

const __CFDictionary *famsGetMatchingMediaCharacteristic(const __CFDictionary *result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    Value = CFDictionaryGetValue(result, @"CustomMediaSelectionSchemeSettingMediaCharacteristic");
    CFDictionaryGetValue(*a2, @"MediaSelectionOptionsTaggedMediaCharacteristics");
    result = FigCFArrayContainsValue();
    if (result)
    {
      *(a2 + 8) = Value;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_191(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_12_73(void *value)
{
  v4.location = 0;
  v4.length = v2;

  return CFArrayContainsValue(v1, v4, value);
}

BOOL OUTLINED_FUNCTION_13_58(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, os_log_type_t type, int a31)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_14_68(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, os_log_type_t type, int a31)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigHapticRenderPipelineCreate(const __CFAllocator *a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a4)
  {
    FigHapticRenderPipelineCreate_cold_1(&v13);
    return LODWORD(v13.value);
  }

  FigRenderPipelineGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = cf;
  if (v7 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), *(DerivedStorage + 8) = FigSimpleMutexCreate(), CMTimeMakeWithSeconds(&v13, 0.5, 100), *(DerivedStorage + 28) = v13, v7 = FigHapticQueueCreate(a1, a3, (DerivedStorage + 64)), v8 = cf, v7))
  {
    v11 = v7;
  }

  else
  {
    v13 = *(DerivedStorage + 28);
    FigSimpleRenderPipelineCreateWithCallback(a1, figHapticRenderPipelineOutputCallback, figHapticRenderPipelineResetOutputCallback, cf, &v13, 0, (DerivedStorage + 56));
    v11 = v10;
    v8 = cf;
    if (!v10)
    {
      *a4 = cf;
      return v11;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v11;
}

uint64_t figHapticRenderPipelineOutputCallback(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 64);

  return FigHapticQueueEnqueueSamples(v3, a2);
}

uint64_t figHapticRenderPipelineResetOutputCallback(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 64);

  return FigHapticQueueStop(v1);
}

__CFString *FigHapticRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigHapticRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t FigHapticRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigHapticRenderPipelineCopyProperty_cold_4(&v16);
    return LODWORD(v16.value);
  }

  v8 = DerivedStorage;
  if (*DerivedStorage)
  {
    FigHapticRenderPipelineCopyProperty_cold_1(&v16);
    return LODWORD(v16.value);
  }

  if (!a2)
  {
    FigHapticRenderPipelineCopyProperty_cold_3(&v16);
    return LODWORD(v16.value);
  }

  if (!a4)
  {
    FigHapticRenderPipelineCopyProperty_cold_2(&v16);
    return LODWORD(v16.value);
  }

  if (CFEqual(a2, @"Timebase"))
  {
    FigSimpleMutexLock();
    v9 = *(v8 + 2);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *a4 = v9;
    FigSimpleMutexUnlock();
    return 0;
  }

  else if (CFEqual(a2, @"PipelineLatency"))
  {
    v11 = *MEMORY[0x1E695E480];
    v16 = *(v8 + 28);
    v12 = CMTimeCopyAsDictionary(&v16, v11);
    result = 0;
    *a4 = v12;
  }

  else
  {
    FigRenderPipelineGetFigBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {

      return v15(v14, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t bufferQueueSource_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    bufferQueueSource_CopyProperty_cold_1(&v11);
    return v11;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"BufferQueue"))
  {
    if (!CFEqual(a2, *MEMORY[0x1E69616A0]))
    {
      return 4294954512;
    }

    v8 = *(v7 + 11);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = *(v7 + 15);
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = CFRetain(v8);
LABEL_8:
  result = 0;
  *a4 = v9;
  return result;
}

opaqueCMBufferQueue *bufferQueueSource_setupStats(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 128) = result;
  if (result)
  {
    result = *(DerivedStorage + 120);
    if (result)
    {

      return CMBufferQueueSetValidationCallback(result, bufferQueueSource_queueStats, a1);
    }
  }

  return result;
}

uint64_t bufferQueueSource_queueStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 128))
  {
    ++bufferQueueSource_queueStats_count;
  }

  return 0;
}

uint64_t bufferQueueSource_GetAudioFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    bufferQueueSource_GetAudioFormat_cold_1(&v8);
    return v8;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    v6 = *(v4 + 8);
    v7 = *(v4 + 24);
    *(a2 + 32) = *(v4 + 5);
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  return result;
}

__n128 OUTLINED_FUNCTION_0_213@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  *(a1 + 128) = 0;
  result = *a2;
  *(a1 + 140) = *a2;
  *(a1 + 156) = a2[1].n128_u64[0];
  *(a1 + 168) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_3_160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a33, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a34, uint64_t a35)
{
  result = a34;
  *(v35 - 240) = a34;
  *(v35 - 224) = a35;
  return result;
}

uint64_t virtualDisplayProcessorRegisterType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualDisplayProcessorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVirtualDisplayProcessorGetClassID_once, virtualDisplayProcessorRegisterType);

  return CMBaseClassGetCFTypeID();
}

CGColorRef figHUDCGColorCreateWithRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  DeviceRGB = figHUDCGColorSpaceGetRGB_sColorSpace;
  if (!figHUDCGColorSpaceGetRGB_sColorSpace)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    figHUDCGColorSpaceGetRGB_sColorSpace = DeviceRGB;
  }

  return CGColorCreate(DeviceRGB, components);
}

CGColorRef figHUDCGColorCreateWithIndex(int a1)
{
  DeviceRGB = figHUDCGColorSpaceGetRGB_sColorSpace;
  if (!figHUDCGColorSpaceGetRGB_sColorSpace)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    figHUDCGColorSpaceGetRGB_sColorSpace = DeviceRGB;
  }

  return CGColorCreate(DeviceRGB, &gHudColors[4 * a1]);
}

uint64_t RegisterFigSampleAttachmentCollectorBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleAttachmentCollectorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleAttachmentCollectorGetClassID_sRegisterFigSampleAttachmentCollectorBaseTypeOnce, RegisterFigSampleAttachmentCollectorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSampleAttachmentCollectorCreateSynchronous(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  if (a4)
  {
    MEMORY[0x19A8D3660](&FigSampleAttachmentCollectorGetClassID_sRegisterFigSampleAttachmentCollectorBaseTypeOnce, RegisterFigSampleAttachmentCollectorBaseType, a3);
    v6 = CMDerivedObjectCreate();
    if (!v6)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 72) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      v6 = 0;
      *(DerivedStorage + 8) = v8;
      *DerivedStorage = 0;
      *a4 = 0;
    }
  }

  else
  {
    FigSampleAttachmentCollectorCreateSynchronous_cold_1(&v10);
    return v10;
  }

  return v6;
}

uint64_t FigSampleAttachmentCollectorCreateAsynchronous(const __CFAllocator *a1, const void *a2, void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  refcon = 0;
  v48 = 0;
  if (!a9)
  {
    FigSampleAttachmentCollectorCreateAsynchronous_cold_4(&time);
LABEL_45:
    value_low = LODWORD(time.value);
    goto LABEL_37;
  }

  if (!a3)
  {
    FigSampleAttachmentCollectorCreateAsynchronous_cold_3(&time);
    goto LABEL_45;
  }

  if (!a5)
  {
    FigSampleAttachmentCollectorCreateAsynchronous_cold_2(&time);
    goto LABEL_45;
  }

  MEMORY[0x19A8D3660](&FigSampleAttachmentCollectorGetClassID_sRegisterFigSampleAttachmentCollectorBaseTypeOnce, RegisterFigSampleAttachmentCollectorBaseType);
  v16 = CMDerivedObjectCreate();
  if (v16)
  {
    goto LABEL_40;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = FigReentrantMutexCreate();
  *(DerivedStorage + 136) = v18;
  if (!v18)
  {
    FigSampleAttachmentCollectorCreateAsynchronous_cold_1(&time);
    goto LABEL_45;
  }

  if (a2)
  {
    v19 = CFRetain(a2);
  }

  else
  {
    v19 = 0;
  }

  *(DerivedStorage + 8) = v19;
  *DerivedStorage = 0;
  *(DerivedStorage + 48) = CFRetain(a3);
  FigSimpleMutexLock();
  if (a4)
  {
    v20 = CFRetain(a4);
  }

  else
  {
    v20 = 0;
  }

  *(DerivedStorage + 208) = v20;
  value_low = collector_createMetadataBufferProvidersAndInstallTriggers(refcon);
  FigSimpleMutexUnlock();
  if (value_low)
  {
    goto LABEL_37;
  }

  v22 = CFRetain(a5);
  *(DerivedStorage + 24) = v22;
  v23 = *(a6 + 16);
  *(DerivedStorage + 84) = *a6;
  *(DerivedStorage + 100) = v23;
  v24 = *a7;
  *(DerivedStorage + 124) = *(a7 + 16);
  *(DerivedStorage + 108) = v24;
  time = *(DerivedStorage + 84);
  v45 = *a7;
  v46 = *(a7 + 16);
  FigSampleBufferConsumerCreateForBufferQueue(v22, &time.value, &v45, (DerivedStorage + 32));
  if (v16)
  {
    goto LABEL_40;
  }

  v25 = *(DerivedStorage + 32);
  v26 = refcon;
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v27)
  {
LABEL_36:
    value_low = 4294954514;
    goto LABEL_37;
  }

  v16 = v27(v25, collector_handleOutputVideoQueueLowWaterTrigger, v26, DerivedStorage + 40);
  if (v16 || (FigSampleBufferProviderCreateForBufferQueue(a1, *(DerivedStorage + 48), (DerivedStorage + 64)), v16))
  {
LABEL_40:
    value_low = v16;
    goto LABEL_37;
  }

  time = **&MEMORY[0x1E6960CC0];
  CMBufferQueueInstallTrigger(a3, collector_handleInputQueueBecomesNonEmptyTrigger, refcon, 7, &time, (DerivedStorage + 56));
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (HIBYTE(v48))
  {
    v29 = 1;
  }

  else
  {
    v29 = BooleanIfPresent == 0;
  }

  if (v29)
  {
    LODWORD(v30) = 3;
  }

  else
  {
    LODWORD(v30) = 31;
  }

  v31 = FigCFDictionaryGetBooleanIfPresent();
  if (v48)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    v30 = v30;
  }

  else
  {
    v30 = 16;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v44 = 0;
  FigActivitySchedulerCreateForNewThread(a1, v30, @"com.apple.coremedia.figsampleattachmentcollector", &v44);
  *(DerivedStorage + 16) = v44;
  LODWORD(time.value) = 0;
  v33 = CFNumberCreate(a1, kCFNumberSInt32Type, &time);
  FigActivitySchedulerGetFigBaseObject();
  v35 = v34;
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v36)
  {
    v36(v35, @"ClientPID", v33);
  }

  CFRelease(v33);
  FigActivitySchedulerGetFigBaseObject();
  v38 = v37;
  v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v39)
  {
    v39(v38, @"ThrottleForBackground", *MEMORY[0x1E695E4C0]);
  }

  v40 = *(DerivedStorage + 16);
  v41 = refcon;
  v42 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v42)
  {
    goto LABEL_36;
  }

  value_low = v42(v40, collector_processAsynchronouslyUntilHighWaterMet, v41);
  if (!value_low)
  {
    *a9 = refcon;
    return value_low;
  }

LABEL_37:
  if (refcon)
  {
    CFRelease(refcon);
  }

  return value_low;
}

uint64_t collector_createMetadataBufferProvidersAndInstallTriggers(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 208);
  if (!v3)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
LABEL_22:
    value_low = 0;
    if (!Mutable)
    {
      return value_low;
    }

    goto LABEL_28;
  }

  Count = CFArrayGetCount(v3);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Count)
  {
    goto LABEL_22;
  }

  if (Count < 1)
  {
LABEL_9:
    v10 = *(DerivedStorage + 216);
    *(DerivedStorage + 216) = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFGetAllocator(a1);
    v12 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    if (v12)
    {
      v13 = v12;
      if (Count < 1)
      {
LABEL_18:
        v18 = *(DerivedStorage + 224);
        *(DerivedStorage + 224) = v13;
        CFRetain(v13);
        if (v18)
        {
          CFRelease(v18);
        }

        value_low = 0;
      }

      else
      {
        v14 = 0;
        v22 = *MEMORY[0x1E6960CC0];
        v15 = *(MEMORY[0x1E6960CC0] + 16);
        while (1)
        {
          ValueAtIndex = FigCFArrayGetValueAtIndex();
          value.epoch = v15;
          triggerTokenOut = 0;
          *&value.value = v22;
          v17 = CMBufferQueueInstallTrigger(ValueAtIndex, collector_handleInputQueueBecomesNonEmptyTrigger, a1, 7, &value, &triggerTokenOut);
          if (v17)
          {
            break;
          }

          FigCFArrayAppendInt64();
          if (Count == ++v14)
          {
            goto LABEL_18;
          }
        }

        value_low = v17;
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, DWORD2(v22), LODWORD(value.value));
      }

      CFRelease(v13);
      if (!Mutable)
      {
        return value_low;
      }
    }

    else
    {
      collector_createMetadataBufferProvidersAndInstallTriggers_cold_1(&value);
      value_low = LODWORD(value.value);
      if (!Mutable)
      {
        return value_low;
      }
    }

LABEL_28:
    CFRelease(Mutable);
    return value_low;
  }

  v7 = 0;
  while (1)
  {
    value.value = 0;
    v8 = CFArrayGetValueAtIndex(*(DerivedStorage + 208), v7);
    FigSampleBufferProviderCreateForBufferQueue(v5, v8, &value);
    if (v9)
    {
      break;
    }

    CFArrayAppendValue(Mutable, value.value);
    if (value.value)
    {
      CFRelease(value.value);
    }

    if (Count == ++v7)
    {
      goto LABEL_9;
    }
  }

  value_low = v9;
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v23, LODWORD(value.value));
  if (Mutable)
  {
    goto LABEL_28;
  }

  return value_low;
}

double collector_processAsynchronouslyUntilHighWaterMet(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return collector_processAsynchronouslyUntilHighWaterMet_cold_2();
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 136))
  {
    return collector_processAsynchronouslyUntilHighWaterMet_cold_1();
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 200);
  v77 = a1;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  if (!*(DerivedStorage + 80))
  {
    goto LABEL_124;
  }

  key = *MEMORY[0x1E6960518];
  v84 = *MEMORY[0x1E69604B0];
  v85 = *MEMORY[0x1E695E4D0];
  v78 = *MEMORY[0x1E69604F8];
  while (1)
  {
    memset(&v87, 0, sizeof(v87));
    CMBufferQueueGetDuration(&v87, *(DerivedStorage + 24));
    v97.value = v87.value;
    flags = v87.flags;
    v97.timescale = v87.timescale;
    epoch = v87.epoch;
    v96.value = *(DerivedStorage + 84);
    v6 = *(DerivedStorage + 96);
    v96.timescale = *(DerivedStorage + 92);
    v7 = *(DerivedStorage + 100);
    if ((v87.flags & 0x1F) == 3 || (v6 & 0x1F) == 3)
    {
      memset(&time1, 0, sizeof(time1));
      lhs = v87;
      rhs.value = *(DerivedStorage + 84);
      rhs.timescale = *(DerivedStorage + 92);
      rhs.flags = v6;
      rhs.epoch = v7;
      CMTimeSubtract(&time, &lhs, &rhs);
      CMTimeAbsoluteValue(&time1, &time);
      CMTimeMake(&time, 1, 1000000000);
      lhs = time1;
      if (CMTimeCompare(&lhs, &time) <= 0)
      {
        goto LABEL_124;
      }
    }

    time1.value = v97.value;
    time1.timescale = v97.timescale;
    time1.flags = flags;
    time1.epoch = epoch;
    time.value = v96.value;
    time.timescale = v96.timescale;
    time.flags = v6;
    time.epoch = v7;
    if ((CMTimeCompare(&time1, &time) & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    *(DerivedStorage + 144) = *(DerivedStorage + 232);
    v8 = *(DerivedStorage + 152);
    if (!v8 || !CFArrayGetCount(v8))
    {
      v9 = *(DerivedStorage + 344) == 0;
      v10 = *(DerivedStorage + 64);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v11)
      {
        v12 = v11(v10);
        if (v12)
        {
          v13 = v12;
          if (*(DerivedStorage + 160))
          {
            CMGetAttachment(v12, key, 0);
            if (FigCFEqual())
            {
              v14 = *(DerivedStorage + 160);
              if (v14)
              {
                CFRelease(v14);
                *(DerivedStorage + 160) = 0;
              }
            }
          }

          collectorPendingSampleArray_appendSampleBuffer(*(DerivedStorage + 152), v13, v9);
          v16 = v15;
          CFRelease(v13);
          if (v16)
          {
            goto LABEL_124;
          }
        }
      }
    }

    FirstValue = FigCFArrayGetFirstValue();
    if (!FirstValue)
    {
      goto LABEL_124;
    }

    v18 = FirstValue;
    if (!*(FirstValue + 58) && !*(DerivedStorage + 160) && !*(FirstValue + 56))
    {
      break;
    }

    v19 = *(DerivedStorage + 32);
    v20 = *FirstValue;
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v21)
    {
      v21(v19, v20);
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 152), 0);
LABEL_28:
    if (!*(DerivedStorage + 80))
    {
      goto LABEL_124;
    }
  }

  if (Count < 1)
  {
LABEL_84:
    if (CMSampleBufferGetSampleAttachmentsArray(*v18, 0))
    {
      FigCFArrayGetFirstValue();
      FigCFDictionaryGetValue();
    }

    v52 = *(DerivedStorage + 32);
    v53 = *v18;
    v54 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v54)
    {
      v54(v52, v53);
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 152), 0);
    if (Count >= 1)
    {
      v55 = 0;
      do
      {
        v82 = v55;
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        v80 = ValueAtIndex;
        v57 = *ValueAtIndex;
        if (*ValueAtIndex)
        {
          v58 = CFArrayGetCount(*ValueAtIndex);
        }

        else
        {
          v58 = 0;
        }

        v97 = **&MEMORY[0x1E6960C70];
        v96 = v97;
        v86 = 0;
        v59 = *(DerivedStorage + 64);
        v60 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v60)
        {
          v60(v59, &v86, &v97, &v96);
        }

        if ((v97.flags & 1) == 0)
        {
          v97 = **&MEMORY[0x1E6960C80];
        }

        if ((v96.flags & 1) == 0)
        {
          v96 = **&MEMORY[0x1E6960C88];
        }

        if (v58 >= 1)
        {
          do
          {
            v61 = v58 - 1;
            v62 = CFArrayGetValueAtIndex(v57, v58 - 1);
            v63 = v62;
            v64 = *(DerivedStorage + 144);
            if (v64 <= 1)
            {
              v94 = *(v62 + 1);
              v65 = *(v62 + 5);
              v95 = *(v62 + 4);
              v66 = *(v62 + 3);
              value = v97.value;
              v67 = v97.flags;
              timescale = v97.timescale;
              v68 = v97.epoch;
              v69 = (v65 & 0x1F) == 3 || (v97.flags & 0x1F) == 3;
              if (v69 && (memset(&time1, 0, sizeof(time1)), lhs.value = v94, lhs.timescale = v95, lhs.flags = v65, lhs.epoch = v66, rhs = v97, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) <= 0) || (time1.value = v94, time1.timescale = v95, time1.flags = v65, time1.epoch = v66, time.value = value, time.timescale = timescale, time.flags = v67, time.epoch = v68, CMTimeCompare(&time1, &time) < 1))
              {
LABEL_119:
                v75 = v58 - 2;
                if (v58 >= 2)
                {
                  do
                  {
                    CFArrayRemoveValueAtIndex(v57, v75--);
                  }

                  while (v75 != -1);
                }

                break;
              }

              v64 = *(DerivedStorage + 144);
            }

            if (v64 == -1)
            {
              v94 = *(v63 + 1);
              v70 = *(v63 + 5);
              v95 = *(v63 + 4);
              v71 = *(v63 + 3);
              value = v96.value;
              v72 = v96.flags;
              timescale = v96.timescale;
              v73 = v96.epoch;
              if ((v70 & 0x1F) == 3 || (v96.flags & 0x1F) == 3)
              {
                memset(&time1, 0, sizeof(time1));
                lhs.value = v94;
                lhs.timescale = v95;
                lhs.flags = v70;
                lhs.epoch = v71;
                rhs = v96;
                CMTimeSubtract(&time, &lhs, &rhs);
                CMTimeAbsoluteValue(&time1, &time);
                CMTimeMake(&time, 1, 1000000000);
                lhs = time1;
                if (CMTimeCompare(&lhs, &time) <= 0)
                {
                  goto LABEL_119;
                }
              }

              time1.value = v94;
              time1.timescale = v95;
              time1.flags = v70;
              time1.epoch = v71;
              time.value = value;
              time.timescale = timescale;
              time.flags = v72;
              time.epoch = v73;
              if ((CMTimeCompare(&time1, &time) & 0x80000000) == 0)
              {
                goto LABEL_119;
              }
            }

            --v58;
          }

          while ((v61 + 1) > 1);
        }

        v80[3] = 0;
        v80[4] = 0;
        *(v80 + 40) = 0;
        v55 = v82 + 1;
      }

      while (v82 + 1 != Count);
    }

    goto LABEL_28;
  }

  v22 = 0;
  v23 = 1;
  do
  {
    v24 = FigCFArrayGetValueAtIndex();
    v25 = FigCFArrayGetValueAtIndex();
    if (*(v24 + 40))
    {
      goto LABEL_73;
    }

    v26 = v25;
    v27 = *(DerivedStorage + 144);
    rhs = *(v18 + 8);
    for (i = *(*(CMBaseObjectGetVTable() + 16) + 24); i; i = *(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v29 = i(v26);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      memset(&time1, 0, sizeof(time1));
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v29);
      NumSamples = CMSampleBufferGetNumSamples(v30);
      if (*(v24 + 8))
      {
        CMGetAttachment(v30, key, 0);
        if (!FigCFEqual())
        {
          goto LABEL_44;
        }

        v32 = *(v24 + 8);
        if (v32)
        {
          CFRelease(v32);
          *(v24 + 8) = 0;
        }
      }

      if (NumSamples || CMGetAttachment(v30, v84, 0) == v85 && CMGetAttachment(v30, v78, 0) != v85 || CMGetAttachment(v30, v84, 0) == v85 && CMGetAttachment(v30, v78, 0) == v85)
      {
        collectorPendingSampleArray_appendSampleBuffer(*v24, v30, 0);
        if (v33)
        {
          CFRelease(v30);
          goto LABEL_124;
        }

        memset(&time1, 0, sizeof(time1));
        CMSampleBufferGetOutputPresentationTimeStamp(&time1, v30);
        switch(v27)
        {
          case -1:
            time = time1;
            lhs = rhs;
            if (CMTimeCompare(&time, &lhs) <= 0)
            {
LABEL_54:
              CFRelease(v30);
              goto LABEL_55;
            }

            break;
          case 1:
            time = time1;
            lhs = rhs;
            if ((CMTimeCompare(&time, &lhs) & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

            break;
          case 0:
            goto LABEL_54;
        }
      }

LABEL_44:
      CFRelease(v30);
    }

LABEL_55:
    if (!*v24 || !CFArrayGetCount(*v24))
    {
      v23 = 0;
      goto LABEL_73;
    }

    if (*(v24 + 16) != *(DerivedStorage + 168))
    {
      v23 = 0;
      *(v24 + 40) = 0;
      goto LABEL_73;
    }

    v34 = *v24;
    v35 = *(v24 + 24);
    v36 = *(DerivedStorage + 144);
    time1 = *(v18 + 8);
    time = *(v18 + 32);
    v37 = collectorPendingSampleArray_searchForPendingSampleAtPTSWithDuration(v34, &time1, &time, v35, v36);
    if (!v37)
    {
      LastValue = FigCFArrayGetLastValue();
      if (*(LastValue + 60))
      {
        goto LABEL_72;
      }

      v39 = LastValue;
      v40 = *(DerivedStorage + 144);
      if (v40 == 1)
      {
        v97.value = *(LastValue + 8);
        v41 = *(LastValue + 20);
        v97.timescale = *(LastValue + 16);
        v42 = *(LastValue + 24);
        v96.value = *(v18 + 8);
        v43 = *(v18 + 20);
        v96.timescale = *(v18 + 16);
        v44 = *(v18 + 24);
        if ((v41 & 0x1F) != 3 && (v43 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), lhs.value = v97.value, lhs.timescale = v97.timescale, lhs.flags = v41, lhs.epoch = v42, rhs.value = v96.value, rhs.timescale = v96.timescale, rhs.flags = v43, rhs.epoch = v44, v81 = v42, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, v45 = CMTimeCompare(&lhs, &time), v42 = v81, v45 > 0))
        {
          time1.value = v97.value;
          time1.timescale = v97.timescale;
          time1.flags = v41;
          time1.epoch = v42;
          time.value = v96.value;
          time.timescale = v96.timescale;
          time.flags = v43;
          time.epoch = v44;
          if (CMTimeCompare(&time1, &time) < 0)
          {
LABEL_79:
            if (*v24)
            {
              v50 = CFArrayGetCount(*v24);
              v51 = v50 - (v50 > 0);
            }

            else
            {
              v51 = 0;
            }

            v23 = 0;
            *(v24 + 24) = v51;
            goto LABEL_73;
          }
        }

        v40 = *(DerivedStorage + 144);
      }

      if (v40 != -1 || ((v97.value = *(v39 + 8), v46 = *(v39 + 20), v97.timescale = *(v39 + 16), v47 = *(v39 + 24), v96.value = *(v18 + 8), v48 = *(v18 + 20), v96.timescale = *(v18 + 16), v49 = *(v18 + 24), (v46 & 0x1F) == 3) || (v48 & 0x1F) == 3) && (memset(&time1, 0, sizeof(time1)), lhs.value = v97.value, lhs.timescale = v97.timescale, lhs.flags = v46, lhs.epoch = v47, rhs.value = v96.value, rhs.timescale = v96.timescale, rhs.flags = v48, rhs.epoch = v49, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) <= 0) || (time1.value = v97.value, time1.timescale = v97.timescale, time1.flags = v46, time1.epoch = v47, time.value = v96.value, time.timescale = v96.timescale, time.flags = v48, time.epoch = v49, CMTimeCompare(&time1, &time) < 1))
      {
LABEL_72:
        *(v24 + 40) = 1;
        goto LABEL_73;
      }

      goto LABEL_79;
    }

    *(v24 + 40) = 1;
    *(v24 + 32) = v37;
    if (!v37[59] && *(DerivedStorage + 8))
    {
      collector_updateVideoSampleAttachmentsWithMetadataSample(v77, *v18, *v37);
    }

LABEL_73:
    ++v22;
  }

  while (v22 != Count);
  if (v23)
  {
    goto LABEL_84;
  }

LABEL_124:
  FigSimpleMutexUnlock();
  return result;
}

CFTypeRef collector_CopyFormattingDesc(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    v1 = @"[FSAC (invalidated)]";
  }

  else
  {
    v1 = @"[FSAC]";
  }

  return CFRetain(v1);
}

uint64_t collector_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v3)
    {
      v3(a1);
    }

    if (*(DerivedStorage + 136))
    {
      FigSimpleMutexLock();
      collector_tearDownAsyncProcessState(a1);
      FigSimpleMutexUnlock();
    }

    collector_tearDownSyncProcessState(a1);
  }

  *DerivedStorage = 1;
  return 0;
}

void collector_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  collector_Invalidate(a1);
  v3 = DerivedStorage[4];
  if (v3)
  {
    v4 = DerivedStorage[5];
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v5)
      {
        v5(v3, v4);
      }
    }
  }

  v6 = DerivedStorage[6];
  if (v6)
  {
    v7 = DerivedStorage[7];
    if (v7)
    {
      CMBufferQueueRemoveTrigger(v6, v7);
    }
  }

  v8 = DerivedStorage[26];
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        FigCFArrayGetValueAtIndex();
        FigCFArrayGetInt64AtIndex();
      }
    }
  }

  v12 = DerivedStorage[2];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[2] = 0;
  }

  v13 = DerivedStorage[27];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[27] = 0;
  }

  v14 = DerivedStorage[8];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[8] = 0;
  }

  if (DerivedStorage[17])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[17] = 0;
  }

  v15 = DerivedStorage[9];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[9] = 0;
  }

  v16 = DerivedStorage[1];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[1] = 0;
  }

  v17 = DerivedStorage[26];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[26] = 0;
  }

  v18 = DerivedStorage[6];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[6] = 0;
  }

  v19 = DerivedStorage[3];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[3] = 0;
  }

  v20 = DerivedStorage[4];
  if (v20)
  {
    CFRelease(v20);
    DerivedStorage[4] = 0;
  }

  v21 = DerivedStorage[28];
  if (v21)
  {
    CFRelease(v21);
    DerivedStorage[28] = 0;
  }
}

__CFString *collector_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"FSAC %p retainCount: %d%s allocator: %p", a1, v5, v6, v7);
  return Mutable;
}

void collector_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return;
  }

  v8 = DerivedStorage;
  if (!*DerivedStorage)
  {
    if (!a4)
    {
      collector_CopyProperty_cold_1(v15);
      return;
    }

    v10 = *(DerivedStorage + 136);
    if (v10)
    {
      FigSimpleMutexLock();
    }

    if (CFEqual(@"MetadataSourceBuffersQueues", a2))
    {
      v11 = *(v8 + 208);
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else if (CFEqual(@"SampleAttachmentCollectionRules", a2))
    {
      v11 = *(v8 + 8);
      if (!v11)
      {
LABEL_21:
        *a4 = v11;
        if (!v10)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (!CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15[1]);
        if (!v10)
        {
          return;
        }

LABEL_22:
        FigSimpleMutexUnlock();
        return;
      }

      v12 = MEMORY[0x1E695E4C0];
      if (*(v8 + 1))
      {
        v12 = MEMORY[0x1E695E4D0];
      }

      v11 = *v12;
    }

    v11 = CFRetain(v11);
    goto LABEL_21;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FSAC >>>>", 247, v4);
}

void collector_SetProperty(void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return;
  }

  v8 = DerivedStorage;
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = 4294954511;
    v12 = 352;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v11, "<<<< FSAC >>>>", v12, v10);
    return;
  }

  if (CFEqual(@"MetadataSourceBuffersQueues", a2))
  {
    if (!a3)
    {
      return;
    }

    v13 = CFGetTypeID(a3);
    if (v13 != CFArrayGetTypeID())
    {
      return;
    }

    if (*(v8 + 17))
    {
      FigSimpleMutexLock();
      if (FigCFEqual())
      {
        goto LABEL_16;
      }

      collector_removeMetadataBufferQueueTriggers(a1);
      v14 = *(v8 + 26);
      *(v8 + 26) = a3;
      CFRetain(a3);
      if (v14)
      {
        CFRelease(v14);
      }

      if (collector_createMetadataBufferProvidersAndInstallTriggers(a1))
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    v18 = *(v8 + 26);
    *(v8 + 26) = a3;
LABEL_32:
    CFRetain(a3);
    if (v18)
    {
      CFRelease(v18);
    }

    return;
  }

  if (CFEqual(@"SampleAttachmentCollectionRules", a2))
  {
    if (!a3)
    {
      return;
    }

    v15 = CFGetTypeID(a3);
    if (v15 != FigSampleAttachmentCollectionRulesGetTypeID())
    {
      return;
    }

    if (*(v8 + 17))
    {
      FigSimpleMutexLock();
      v16 = *(v8 + 1);
      *(v8 + 1) = a3;
      CFRetain(a3);
      if (v16)
      {
        CFRelease(v16);
      }

LABEL_23:
      collector_tearDownAsyncProcessState(a1);
      collector_setUpAsyncProcessState(a1);
LABEL_16:
      FigSimpleMutexUnlock();
      return;
    }

    v18 = *(v8 + 1);
    *(v8 + 1) = a3;
    goto LABEL_32;
  }

  if (!CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
  {
    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = 4294954516;
    v12 = 403;
    goto LABEL_4;
  }

  if (a3)
  {
    v17 = CFGetTypeID(a3);
    if (v17 == CFBooleanGetTypeID())
    {
      v8[1] = FigCFEqual();
    }
  }
}

double collector_tearDownAsyncProcessState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 148))
  {
    v4 = DerivedStorage;
    v5 = CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v6 = *(v5 + 216);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          FigCFArrayGetValueAtIndex();
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListeners();
        }
      }
    }

    CFGetAllocator(a1);
    collectorSearchWindow_teardown(v4 + 152);
    v10 = *(v4 + 200);
    if (v10)
    {
      CFRelease(v10);
    }

    result = 0.0;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  return result;
}

double collector_tearDownSyncProcessState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage + 240;
  if (*(DerivedStorage + 240))
  {
    v5 = DerivedStorage;
    CFGetAllocator(a1);
    collectorSearchWindow_teardown(v5 + 248);
    CFGetAllocator(a1);
    collectorSearchWindow_teardown(v5 + 296);
    *(v4 + 96) = 0;
    result = 0.0;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return result;
}

void collectorSearchWindow_teardown(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    collectorSearchWindow_teardown_cold_1();
  }
}

void collector_handleVideoBufferQueueConduitNotifications(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (a5)
    {
      v9 = CFGetTypeID(a5);
      if (v9 == CFDictionaryGetTypeID())
      {
        Value = FigCFDictionaryGetValue();
        FigSimpleMutexLock();
        collectorSearchWindow_setInhibitOutputUntil(DerivedStorage + 152, Value);
        FigSimpleMutexUnlock();
      }
    }
  }

  else if (FigCFEqual() && FigCFDictionaryGetInt32IfPresent())
  {
    FigSimpleMutexLock();
    *(DerivedStorage + 168) = 0;
    FigSimpleMutexUnlock();
    collector_triggerAsyncProcessing(a2);
    return;
  }

  v11 = *(DerivedStorage + 32);
  if (v11)
  {
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v12)
    {
      v12(v11, a3, a5, 0);
    }
  }
}

void collectorSearchWindow_setInhibitOutputUntil(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

double collector_triggerAsyncProcessing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return collector_triggerAsyncProcessing_cold_1();
  }

  if (*(DerivedStorage + 80))
  {
    v3 = *(DerivedStorage + 16);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v4)
      {

        v4(v3);
      }
    }
  }

  return result;
}

uint64_t collector_handleMetadataBufferQueueConduitNotifications(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 136))
  {
    FigSimpleMutexLock();
  }

  v10 = *(DerivedStorage + 216);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      while (FigCFArrayGetValueAtIndex() != a4)
      {
        if (v12 == ++v13)
        {
          goto LABEL_16;
        }
      }

      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v15 = ValueAtIndex;
        if (*MEMORY[0x1E69605A0] == a3)
        {
          FigCFArrayRemoveAllValues();
          *(v15 + 24) = 0;
          *(v15 + 32) = 0;
          *(v15 + 40) = 0;
        }

        else if (*MEMORY[0x1E6960598] == a3)
        {
          if (a5)
          {
            v17 = CFGetTypeID(a5);
            if (v17 == CFDictionaryGetTypeID())
            {
              Value = FigCFDictionaryGetValue();
              collectorSearchWindow_setInhibitOutputUntil(v15, Value);
            }
          }
        }

        else if (FigCFEqual() && FigCFDictionaryGetInt32IfPresent())
        {
          *(v15 + 16) = 0;
          collector_triggerAsyncProcessing(a2);
        }
      }

      else
      {
        collector_handleMetadataBufferQueueConduitNotifications_cold_1();
      }
    }
  }

LABEL_16:
  result = *(DerivedStorage + 136);
  if (result)
  {
    return FigSimpleMutexUnlock();
  }

  return result;
}

void collector_removeMetadataBufferQueueTriggers(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 208);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        FigCFArrayGetValueAtIndex();
        FigCFArrayGetInt64AtIndex();
      }
    }
  }

  v6 = *(DerivedStorage + 224);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 224) = 0;
  }
}

double collector_setUpAsyncProcessState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 148);
  if (*(DerivedStorage + 148))
  {
    collector_tearDownAsyncProcessState(a1);
  }

  *(DerivedStorage + 176) = 0u;
  *(DerivedStorage + 192) = 0u;
  *(DerivedStorage + 144) = 0u;
  *(DerivedStorage + 160) = 0u;
  v4 = CFGetAllocator(a1);
  *(DerivedStorage + 152) = 0u;
  *(DerivedStorage + 168) = 0u;
  *(DerivedStorage + 184) = 0u;
  v18 = *byte_1F0AFAD68;
  *callBacks = *byte_1F0AFAD68;
  v17 = *&byte_1F0AFAD68[16];
  *&callBacks[16] = *&byte_1F0AFAD68[16];
  v5 = *&byte_1F0AFAD68[32];
  *&callBacks[32] = *&byte_1F0AFAD68[32];
  *(DerivedStorage + 152) = CFArrayCreateMutable(v4, 0, callBacks);
  v6 = *(DerivedStorage + 208);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
  }

  else
  {
    Count = 0;
  }

  v8 = CFGetAllocator(a1);
  v20 = *byte_1F0AFAD90;
  v9 = CFArrayCreateMutable(v8, Count, &v20);
  if (!v9)
  {
    return collector_setUpAsyncProcessState_cold_1(&v20, DerivedStorage, v3, a1);
  }

  v10 = v9;
  if (Count >= 1)
  {
    do
    {
      memset(callBacks, 0, sizeof(callBacks));
      *&v21.version = v18;
      *&v21.release = v17;
      v21.equal = v5;
      *callBacks = CFArrayCreateMutable(v8, 0, &v21);
      CFArrayAppendValue(v10, callBacks);
      collectorSearchWindow_teardown(callBacks);
      --Count;
    }

    while (Count);
  }

  *(DerivedStorage + 200) = v10;
  v11 = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListeners();
  v13 = *(v11 + 216);
  if (v13)
  {
    v14 = CFArrayGetCount(v13);
    if (v14 >= 1)
    {
      v15 = v14;
      for (i = 0; i != v15; ++i)
      {
        FigCFArrayGetValueAtIndex();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListeners();
      }
    }
  }

  *v3 = 1;
  return result;
}

void *pendingSampleArray_RetainCallBack(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 64, 0x1020040CD320FF7, 0);
  v4 = v3;
  if (v3)
  {
    v5 = a2[3];
    v7 = *a2;
    v6 = a2[1];
    v3[2] = a2[2];
    v3[3] = v5;
    *v3 = v7;
    v3[1] = v6;
    v8 = *v3;
    if (*v4)
    {
      CFRetain(v8);
    }
  }

  else
  {
    pendingSampleArray_RetainCallBack_cold_1();
  }

  return v4;
}

void pendingSampleArray_ReleaseCallBack(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (ptr)
  {
    if (*ptr)
    {
      CFRelease(*ptr);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }

  else
  {
    pendingSampleArray_ReleaseCallBack_cold_1();
  }
}

CFStringRef pendingSampleArray_CopyDescriptionCallBack(uint64_t a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  v2 = *MEMORY[0x1E6960520];
  CMGetAttachment(*a1, *MEMORY[0x1E6960520], 0);
  v3 = *MEMORY[0x1E695E480];
  time = *(a1 + 8);
  Seconds = CMTimeGetSeconds(&time);
  v5 = *a1;
  v10 = **&MEMORY[0x1E6960C70];
  if (v5)
  {
    v6 = *MEMORY[0x1E695E4D0];
    v7 = CMGetAttachment(v5, v2, 0);
    memset(&time, 0, sizeof(time));
    CMSampleBufferGetOutputPresentationTimeStamp(&time, v5);
    memset(&v13, 0, sizeof(v13));
    CMSampleBufferGetOutputDuration(&v13, v5);
    lhs = time;
    rhs = v13;
    if (v7 == v6)
    {
      CMTimeSubtract(&v10, &lhs, &rhs);
    }

    else
    {
      CMTimeAdd(&v10, &lhs, &rhs);
    }
  }

  v9 = CMTimeGetSeconds(&v10);
  return CFStringCreateWithFormat(v3, 0, @"[%1.3f - %1.3f "), *&Seconds, *&v9, v10.value, *&v10.timescale, v10.epoch);
}

BOOL pendingSampleArray_EqualCallBack(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v9 = v2;
  v10 = v3;
  result = 0;
  if (a1 && a2)
  {
    if (*a1 == *a2 && (time1 = *(a1 + 8), v7 = *(a2 + 8), !CMTimeCompare(&time1, &v7)))
    {
      time1 = *(a1 + 32);
      v7 = *(a2 + 32);
      return CMTimeCompare(&time1, &v7) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *collectorSearchWindowArray_RetainCallback(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 48, 0x1060040A8284B34, 0);
  v4 = v3;
  if (v3)
  {
    v5 = a2[2];
    v6 = *a2;
    v3[1] = a2[1];
    v3[2] = v5;
    *v3 = v6;
    v7 = *v3;
    if (*v4)
    {
      CFRetain(v7);
    }
  }

  else
  {
    collectorSearchWindowArray_RetainCallback_cold_1();
  }

  return v4;
}

void collectorSearchWindowArray_ReleaseCallback(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (ptr)
  {
    if (*ptr)
    {
      CFRelease(*ptr);
      *ptr = 0;
    }

    CFAllocatorDeallocate(allocator, ptr);
  }

  else
  {
    collectorSearchWindowArray_ReleaseCallback_cold_1();
  }
}

CFStringRef collectorSearchWindowArray_CopyDescriptionCallback(void *a1)
{
  if (a1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<FSAC_BufferQueueCache %p | searchStartIndex: %ld, matchedSampleInfo: %p, sampleInfoArray: %@ >", a1, a1[3], a1[4], *a1);
  }

  else
  {
    return @"NULL";
  }
}

uint64_t collector_AddMetadataToCollection(const void *a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 240))
  {
    v5 = CMBaseObjectGetDerivedStorage();
    if (*(v5 + 240))
    {
      collector_tearDownSyncProcessState(a1);
    }

    *(v5 + 336) = 0;
    *(v5 + 304) = 0u;
    *(v5 + 320) = 0u;
    *(v5 + 272) = 0u;
    *(v5 + 288) = 0u;
    *(v5 + 240) = 0u;
    *(v5 + 256) = 0u;
    v6 = CFGetAllocator(a1);
    *(v5 + 248) = 0u;
    v7 = v5 + 248;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    v11 = *&byte_1F0AFAD68[16];
    v12 = *byte_1F0AFAD68;
    callBacks = *byte_1F0AFAD68;
    v8 = *&byte_1F0AFAD68[32];
    *v7 = CFArrayCreateMutable(v6, 0, &callBacks);
    v9 = CFGetAllocator(a1);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *&callBacks.version = v12;
    *&callBacks.release = v11;
    callBacks.equal = v8;
    *(v7 + 48) = CFArrayCreateMutable(v9, 0, &callBacks);
    *(v7 - 8) = 1;
  }

  collectorPendingSampleArray_appendSampleBuffer(*(DerivedStorage + 296), a2, 0);
  return result;
}

uint64_t collector_SynchronousReset(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 72);
  if (v1)
  {
    CFArrayRemoveAllValues(v1);
  }

  return 0;
}

uint64_t collectorPendingSampleArray_appendSingleSampleSampleBuffer(opaqueCMSampleBuffer *a1, uint64_t a2, __CFArray *a3)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  value = a1;
  CMSampleBufferGetOutputPresentationTimeStamp(v13, a1);
  CMSampleBufferGetOutputDuration(&time1, a1);
  v13[1] = time1;
  v5 = *MEMORY[0x1E695E4D0];
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray)
  {
    CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    FigCFDictionaryGetValue();
  }

  LOBYTE(v14) = FigCFEqual();
  CMGetAttachment(a1, *MEMORY[0x1E6960520], 0);
  BYTE1(v14) = FigCFEqual();
  if (!CMSampleBufferGetNumSamples(a1))
  {
    BYTE2(v14) = 1;
    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_8:
    v8 = *MEMORY[0x1E69604B0];
    if (CMGetAttachment(a1, *MEMORY[0x1E69604B0], 0) == v5 && CMGetAttachment(a1, *MEMORY[0x1E69604F8], 0) == v5)
    {
      BYTE4(v14) = 1;
    }

    else if (CMGetAttachment(a1, v8, 0) != v5 || CMGetAttachment(a1, *MEMORY[0x1E69604F8], 0) == v5)
    {
      goto LABEL_15;
    }

    BYTE3(v14) = 1;
    goto LABEL_15;
  }

  time1 = v13[1];
  v10 = **&MEMORY[0x1E6960CC0];
  v7 = CMTimeCompare(&time1, &v10);
  BYTE2(v14) = v7 == 0;
  if (a1 && !v7)
  {
    goto LABEL_8;
  }

LABEL_15:
  CFArrayAppendValue(a3, &value);
  return 0;
}

char *collectorPendingSampleArray_searchForPendingSampleAtPTSWithDuration(CFArrayRef theArray, CMTime *a2, CMTime *a3, CFIndex a4, unsigned int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (Count > a4)
  {
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a4);
      v11 = ValueAtIndex;
      if (Count < 2 || a4 >= Count - 1)
      {
        if (a5 > 1)
        {
          v20 = *(ValueAtIndex + 8);
          lhs.epoch = *(ValueAtIndex + 3);
          *&lhs.value = v20;
          rhs = *(ValueAtIndex + 32);
          CMTimeSubtract(&time1, &lhs, &rhs);
          value = time1.value;
          flags = time1.flags;
          timescale = time1.timescale;
          epoch = time1.epoch;
LABEL_21:
          time1 = *a2;
          lhs = *a3;
          CMTimeSubtract(&v33, &time1, &lhs);
          v31 = *(v11 + 1);
          v21 = *(v11 + 5);
          v32 = *(v11 + 4);
          v22 = *(v11 + 3);
          if ((v21 & 0x1F) != 3 && (v33.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.value = v31, rhs.timescale = v32, rhs.flags = v21, rhs.epoch = v22, v27 = v33, CMTimeSubtract(&lhs, &rhs, &v27), CMTimeAbsoluteValue(&time1, &lhs), CMTimeMake(&lhs, 1, 1000000000), rhs = time1, CMTimeCompare(&rhs, &lhs) > 0))
          {
            time1.value = v31;
            time1.timescale = v32;
            time1.flags = v21;
            time1.epoch = v22;
            lhs = v33;
            if (CMTimeCompare(&time1, &lhs) >= 1)
            {
              if ((v33.value = a2->value, v23 = a2->flags, v33.timescale = a2->timescale, v24 = a2->epoch, (flags & 0x1F) != 3) && (v23 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.value = value, rhs.timescale = timescale, rhs.flags = flags, rhs.epoch = epoch, v27.value = a2->value, v27.timescale = a2->timescale, v27.flags = v23, v27.epoch = v24, CMTimeSubtract(&lhs, &rhs, &v27), CMTimeAbsoluteValue(&time1, &lhs), CMTimeMake(&lhs, 1, 1000000000), rhs = time1, CMTimeCompare(&rhs, &lhs) > 0))
              {
                time1.value = value;
                time1.timescale = timescale;
                time1.flags = flags;
                time1.epoch = epoch;
                lhs.value = v33.value;
                lhs.timescale = v33.timescale;
                lhs.flags = v23;
                lhs.epoch = v24;
                if (CMTimeCompare(&time1, &lhs) < 0)
                {
                  return v11;
                }
              }
            }
          }

          goto LABEL_29;
        }

        v15 = *(ValueAtIndex + 8);
        lhs.epoch = *(ValueAtIndex + 3);
        *&lhs.value = v15;
        rhs = *(ValueAtIndex + 32);
        CMTimeAdd(&time1, &lhs, &rhs);
        value = time1.value;
        flags = time1.flags;
        timescale = time1.timescale;
        epoch = time1.epoch;
      }

      else
      {
        v12 = CFArrayGetValueAtIndex(theArray, a4 + 1);
        value = *(v12 + 1);
        flags = *(v12 + 5);
        timescale = *(v12 + 4);
        epoch = *(v12 + 3);
        if (a5 > 1)
        {
          goto LABEL_21;
        }
      }

      time1 = *a2;
      lhs = *a3;
      CMTimeAdd(&v33, &time1, &lhs);
      v31 = *(v11 + 1);
      v16 = *(v11 + 5);
      v32 = *(v11 + 4);
      v17 = *(v11 + 3);
      if ((v16 & 0x1F) != 3 && (v33.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.value = v31, rhs.timescale = v32, rhs.flags = v16, rhs.epoch = v17, v27 = v33, CMTimeSubtract(&lhs, &rhs, &v27), CMTimeAbsoluteValue(&time1, &lhs), CMTimeMake(&lhs, 1, 1000000000), rhs = time1, CMTimeCompare(&rhs, &lhs) > 0))
      {
        time1.value = v31;
        time1.timescale = v32;
        time1.flags = v16;
        time1.epoch = v17;
        lhs = v33;
        if (CMTimeCompare(&time1, &lhs) < 0)
        {
          if ((v33.value = a2->value, v18 = a2->flags, v33.timescale = a2->timescale, v19 = a2->epoch, (flags & 0x1F) != 3) && (v18 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.value = value, rhs.timescale = timescale, rhs.flags = flags, rhs.epoch = epoch, v27.value = a2->value, v27.timescale = a2->timescale, v27.flags = v18, v27.epoch = v19, CMTimeSubtract(&lhs, &rhs, &v27), CMTimeAbsoluteValue(&time1, &lhs), CMTimeMake(&lhs, 1, 1000000000), rhs = time1, CMTimeCompare(&rhs, &lhs) > 0))
          {
            time1.value = value;
            time1.timescale = timescale;
            time1.flags = flags;
            time1.epoch = epoch;
            lhs.value = v33.value;
            lhs.timescale = v33.timescale;
            lhs.flags = v18;
            lhs.epoch = v19;
            if (CMTimeCompare(&time1, &lhs) > 0)
            {
              return v11;
            }
          }
        }
      }

LABEL_29:
      ++a4;
    }

    while (Count != a4);
  }

  return 0;
}

uint64_t collector_updateVideoSampleAttachmentsWithMetadataSample(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMSampleBufferGetSampleAttachmentsArray(a2, 1u);
  FigCFArrayGetValueAtIndex();
  v6 = *(DerivedStorage + 8);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = v7(v6, a3, 0, &cf);
  v9 = cf;
  if (!v8)
  {
    FigCFDictionarySetAllValuesFromDictionary();
    if (!cf)
    {
      return 0;
    }

    FigCFDictionaryApplyBlock();
    v9 = cf;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

void collector_Go(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FSAC >>>>", 1119, v1);
  }

  else
  {
    v5 = DerivedStorage;
    FigSimpleMutexLock();
    if (!v5[148])
    {
      collector_setUpAsyncProcessState(a1);
    }

    FigSimpleMutexUnlock();
    v5[80] = 1;
    FigMemoryBarrier();
    v6 = *(v5 + 2);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(v6);
    }
  }
}

void collector_Stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< FSAC >>>>", 1143, v1);
  }

  else
  {
    v4 = DerivedStorage;
    DerivedStorage[80] = 0;
    FigMemoryBarrier();
    if (*(v4 + 17))
    {
      FigSimpleMutexLock();
      FigSimpleMutexUnlock();
    }
  }
}

uint64_t collector_SetDirection(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2 < 1)
  {
    if ((a2 & 0x80000000) == 0)
    {
      *(DerivedStorage + 232) = 0;
      goto LABEL_6;
    }

    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  *(DerivedStorage + 232) = v4;
LABEL_6:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCPEExternalProtectionMonitorRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBB78 = result;
  return result;
}

CFTypeRef figCPEExternalProtectionMonitorCopyProperty_DisplayListFunc(void **a1)
{
  result = *((*a1)[18] + 40);
  if (result)
  {
    result = CFRetain(result);
  }

  *a1[1] = result;
  return result;
}

void figCPEExternalProtectionMonitorSetProperty_DisplayListFunc(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(*a1 + 144);
  v5 = *(v4 + 40);
  if (v5)
  {
    CFRetain(*(v4 + 40));
    v4 = *(v3 + 144);
    v6 = *(v4 + 40);
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 40) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  UpdateNonExclusiveDisplayList(*(v3 + 144));
  v7 = FigCFEqual();
  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
  *v8 = v3;
  v8[8] = v7 == 0;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async_f(global_queue, v8, figCPEExternalProtectionMonitorSetPropertyPostNotificationFunc);

  free(a1);
}

void figCPEExternalProtectionMonitorBeginMonitoringFunc(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(v1 + 32);
  *(v1 + 32) = v2 + 1;
  if (!v2)
  {
    CFSetApplyFunction(*(v1 + 24), BeginMonitoringSetApplier, 0);
  }
}

void figCPEExternalProtectionMonitorEndMonitoringFunc(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(v1 + 32) - 1;
  *(v1 + 32) = v2;
  if (!v2)
  {
    CFSetApplyFunction(*(v1 + 24), EndMonitoringSetApplier, 0);
  }
}

uint64_t FigCPEExternalProtectionMonitorGetMethods(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  dispatch_sync_f(*(a1 + 136), &v2, figCPEExternalProtectionMonitorGetMethodsFunc);
  return v3;
}

uint64_t FigCPEExternalProtectionMonitorGetStatus(uint64_t a1)
{
  v5 = 0;
  context = a1;
  v3 = 1;
  v4 = 1;
  dispatch_sync_f(*(a1 + 136), &context, figCPEExternalProtectionMonitorGetStatusFunc);
  return v3;
}

uint64_t FigCPEExternalProtectionMonitorGetAOCPStatus(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3010000000;
  v8 = "";
  v9 = 0x100000001;
  v10 = 0;
  v1 = *(a1 + 136);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigCPEExternalProtectionMonitorGetAOCPStatus_block_invoke;
  v4[3] = &unk_1E7482510;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 10);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void GetStatusSetApplier(void *key, int *a2)
{
  v27 = 0;
  if (!key[16])
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(*(key[18] + 56), key);
  if (Value)
  {
    MutableCopy = Value;
    CFRetain(Value);
    goto LABEL_20;
  }

  MutableCopy = FigCFArrayCreateMutableCopy();
  v8 = key[11];
  if (v8 && *(key[18] + 40))
  {
    v9 = v8(key[4]);
    context[0] = *(key[18] + 40);
    context[1] = MutableCopy;
    v28.length = CFArrayGetCount(v9);
    v28.location = 0;
    CFArrayApplyFunction(v9, v28, AddExclusiveDisplay, context);
  }

  if (MutableCopy && CFArrayGetCount(MutableCopy))
  {
    goto LABEL_74;
  }

  v10 = *(key[18] + 40);
  if (v10 && CFArrayGetCount(v10) >= 1)
  {
    if (!MutableCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (MutableCopy)
  {
LABEL_74:
    if (!CFArrayGetCount(MutableCopy) && !*(a2 + 5))
    {
LABEL_17:
      CFRelease(MutableCopy);
LABEL_18:
      MutableCopy = *MEMORY[0x1E695E738];
    }
  }

  else
  {
    if (!*(a2 + 5))
    {
      goto LABEL_18;
    }

    MutableCopy = 0;
  }

  CFDictionarySetValue(*(key[18] + 56), key, MutableCopy);
  if (!MutableCopy)
  {
    v12 = 1;
    goto LABEL_24;
  }

LABEL_20:
  v11 = CFGetTypeID(MutableCopy);
  if (v11 != CFNullGetTypeID())
  {
    v12 = 0;
LABEL_24:
    v7 = (key[16])(key[4], MutableCopy, &v27);
    goto LABEL_25;
  }

  v12 = 0;
  v27 = 0;
  v7 = 1;
LABEL_25:
  v13 = FigCFArrayContainsValue();
  v14 = v7 == 3;
  if (v7 == 4)
  {
    v14 = 2;
  }

  if (v13)
  {
    v6 = v14;
  }

  else
  {
    v6 = 0;
  }

  if ((v12 & 1) == 0)
  {
    CFRelease(MutableCopy);
  }

LABEL_32:
  v15 = *a2;
  if (*a2 == 4 || v7 == 4)
  {
    v17 = 4;
  }

  else
  {
    v17 = 1;
  }

  if (!v15)
  {
    v17 = 0;
  }

  if (!v7)
  {
    v17 = 0;
  }

  if (v15 == 2)
  {
    v17 = 2;
  }

  if (v7 == 2)
  {
    v17 = 2;
  }

  if (v15 == 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v17;
  }

  if (v7 == 3)
  {
    v18 = 3;
  }

  *a2 = v18;
  v19 = a2[2];
  if (v19 == 2 || v6 == 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (v19 == 1 || v6 == 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v21;
  }

  a2[2] = v23;
  if (v27)
  {
    v24 = *(a2 + 4) == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v24;
  *(a2 + 4) = v25;
}

uint64_t FigCPEExternalProtectionMonitorGetStatusIgnoringDisplays(uint64_t a1)
{
  v4 = 0;
  context = a1;
  v3 = 0x10100000001;
  dispatch_sync_f(*(a1 + 136), &context, figCPEExternalProtectionMonitorGetStatusFunc);
  return v3;
}

uint64_t FigCPEExternalProtectionMonitorStableStatusDetermined(uint64_t a1)
{
  v5 = 0;
  context = a1;
  v3 = 1;
  v4 = 1;
  dispatch_sync_f(*(a1 + 136), &context, figCPEExternalProtectionMonitorGetStatusFunc);
  return v4;
}

uint64_t FigCPEExternalProtectionMonitorStableStatusDeterminedIgnoringDisplays(uint64_t a1)
{
  v4 = 0;
  context = a1;
  v3 = 0x10100000001;
  dispatch_sync_f(*(a1 + 136), &context, figCPEExternalProtectionMonitorGetStatusFunc);
  return BYTE4(v3);
}

uint64_t FigCPEExternalProtectionMonitorGetState(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = -1;
  v5 = a2;
  dispatch_sync_f(*(a1 + 136), &v3, figCPEExternalProtectionMonitorGetStateFunc);
  return v4;
}

uint64_t HDCPAddWeakListener(uint64_t result)
{
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t HDCPRemoveWeakListener(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t HDCPBeginMonitoring(uint64_t result)
{
  if (result)
  {
    return FigUpstreamMonitor_BeginMonitoring(result);
  }

  return result;
}

uint64_t HDCPEndMonitoring(uint64_t result)
{
  if (result)
  {
    return FigUpstreamMonitor_EndMonitoring(result);
  }

  return result;
}

uint64_t AntiScreenCaptureGetStatus(void *a1, CFArrayRef theArray, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (AntiScreenCaptureGetStatus_once == -1)
  {
    if (!theArray)
    {
LABEL_4:
      v6 = AntiScreenCaptureGetStatus_wirelessDisplayList;

      return HDCPGetStatus(a1, v6, a3);
    }
  }

  else
  {
    AntiScreenCaptureGetStatus_cold_1();
    if (!theArray)
    {
      goto LABEL_4;
    }
  }

  v22.length = CFArrayGetCount(theArray);
  v22.location = 0;
  if (CFArrayContainsValue(theArray, v22, AntiScreenCaptureGetStatus_wirelessDisplayName))
  {
    goto LABEL_4;
  }

  v8 = 1;
  *a3 = 1;
  if (VTParavirtualizationIsRunningInGuest())
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [MEMORY[0x1E6979328] displays];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(v14 "availableModes")])
          {
            [v14 deviceName];
            if (!IOMobileFramebufferOpenByName() && !IOMobileFramebufferGetProtectionOptions())
            {
              return 3;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      return 1;
    }
  }

  return v8;
}

void HDCPDisposeRefcon(uint64_t result)
{
  if (result)
  {
    FigUpstreamMonitor_ReleaseSharedMonitor(result);
  }
}

void *__copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  result[11] = a2[11];
  result[12] = a2[12];
  return result;
}

uint64_t FigCPEExternalProtectionMonitorCreateForMethods(const __CFAllocator *Value, unsigned int a2, const __CFDictionary *a3, CFTypeRef cf, void *a5)
{
  if (cf)
  {
    v9 = CFRetain(cf);
    if (a3)
    {
LABEL_3:
      v10 = CFDictionaryGetValue(a3, @"InformationalMode") != *MEMORY[0x1E695E4D0];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 1;
LABEL_6:
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a2 > 7)
  {
    v13 = 4294955136;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    cfa[0] = 0;
    __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(&v20, sAggregateOnlyCallbacks);
LABEL_27:
    v17 = FigCPEExternalProtectionMonitorCreateWithCallbacks(Value, &v20, v9, cfa);
    if (!v17)
    {
      v12 = cfa[0];
      if (cfa[0])
      {
        CFRetain(cfa[0]);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (cfa[0])
      {
        CFRelease(cfa[0]);
      }

      goto LABEL_14;
    }

    v13 = v17;
LABEL_29:
    if (!v9)
    {
      return v13;
    }

LABEL_30:
    CFRelease(v9);
    return v13;
  }

  if (a2)
  {
    v19 = 0;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(&v20, sHDCPCallbacks);
    *&v20 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(v10);
    __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(cfa, &v20);
    v15 = FigCPEExternalProtectionMonitorCreateWithCallbacks(Value, cfa, v9, &v19);
    if (v15)
    {
      v13 = v15;
      if (v20)
      {
        FigUpstreamMonitor_ReleaseSharedMonitor(v20);
        if (!v9)
        {
          return v13;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v11 = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
    v11 = v9;
  }

  if ((a2 & 2) == 0)
  {
    v9 = v11;
LABEL_12:
    if (a2 < 4)
    {
      v12 = v9;
LABEL_14:
      v13 = 0;
      *a5 = v12;
      return v13;
    }

    cfa[0] = 0;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(&v20, FigCPEAntiScreenCaptureCreateCallbacks_callbacks);
    *&v20 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(v10);
    goto LABEL_27;
  }

  v19 = 0;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(&v20, sHDCPType1Callbacks);
  *&v20 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(v10);
  __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(cfa, &v20);
  v16 = FigCPEExternalProtectionMonitorCreateWithCallbacks(Value, cfa, v11, &v19);
  if (!v16)
  {
    v9 = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    goto LABEL_12;
  }

  v13 = v16;
  if (v20)
  {
    FigUpstreamMonitor_ReleaseSharedMonitor(v20);
  }

  v9 = v11;
  if (v11)
  {
    goto LABEL_30;
  }

  return v13;
}

void finalizePoolQueue(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void figCPEExternalProtectionMonitorCreateWithCallbacksFunc(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v2(a1[4], a1[18], FigCPEExternalProtectionMonitorNotificationCallback, 0);
  }

  FigNotificationCenterAddWeakListener();
  CFSetAddValue(*(a1[18] + 24), a1);
  UpdateNonExclusiveDisplayList(a1[18]);
  if (*(a1[18] + 32) >= 1)
  {
    v3 = a1[8];
    if (v3)
    {
      v3(a1[4]);
    }
  }

  CFRetain(a1);
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async_f(global_queue, a1, figCPEExternalProtectionMonitorCreateWithCallbacksPostNotificationFunc);
}

double FigCPEExternalProtectionMonitorInit(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t FigCPEExternalProtectionMonitorFinalize(uint64_t a1)
{
  v7 = a1;
  v8 = 0;
  v2 = *(a1 + 136);
  if (v2)
  {
    dispatch_sync_f(v2, &v7, figCPEExternalProtectionMonitorFinalizeFunc);
    dispatch_release(*(a1 + 136));
    *(a1 + 136) = 0;
    if (v8)
    {
      v3 = *(a1 + 72);
      if (v3)
      {
        v3(*(a1 + 32));
      }
    }
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    v4(*(a1 + 32));
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    return CMNotificationCenterUnregisterForBarrierSupport();
  }

  return result;
}

CFStringRef FigCPEExternalProtectionMonitorCopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"[FigCPEExternalProtectionMonitor %p retain count %d", a1, v3);
}

void figCPEExternalProtectionMonitorFinalizeFunc(_BYTE *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 144);
  a1[8] = *(v2 + 32) > 0;
  v3 = *(v2 + 24);
  if (v3 && CFSetContainsValue(v3, v1))
  {
    CFSetRemoveValue(*(v1[18] + 24), v1);
    CFDictionaryRemoveValue(*(v1[18] + 56), v1);
    if (*(v1[18] + 16))
    {
      FigNotificationCenterRemoveWeakListener();
    }

    v4 = v1[7];
    if (v4)
    {
      v4(v1[4], v1[18], FigCPEExternalProtectionMonitorNotificationCallback, 0);
    }

    v5 = v1[18];

    UpdateNonExclusiveDisplayList(v5);
  }
}

void FigCPEExternalProtectionMonitorNotificationCallback(uint64_t a1, uint64_t a2, CFStringRef theString2)
{
  if (CFStringCompare(*MEMORY[0x1E6961150], theString2, 0))
  {

    CMNotificationCenterPostNotification();
  }

  else
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!CFDictionaryContainsKey(MutableCopy, *MEMORY[0x1E6961158]))
    {
      FigCFDictionarySetInt32();
    }

    CMNotificationCenterPostNotification();
    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }
  }
}

void UpdateNonExclusiveDisplayList(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  CFDictionaryRemoveAllValues(*(a1 + 56));
  MutableCopy = FigCFArrayCreateMutableCopy();
  *(a1 + 48) = MutableCopy;
  v4 = *(a1 + 24);

  CFSetApplyFunction(v4, RemoveExclusiveDisplays, MutableCopy);
}

void RemoveExclusiveDisplays(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v4 = v2(*(a1 + 32));
    if (v4)
    {
      v5 = v4;
      v6.length = CFArrayGetCount(v4);
      v6.location = 0;

      CFArrayApplyFunction(v5, v6, RemoveExclusiveDisplay, a2);
    }
  }
}

CFIndex RemoveExclusiveDisplay(const void *a1, CFArrayRef theArray)
{
  v6.length = CFArrayGetCount(theArray);
  v6.location = 0;
  result = CFArrayGetFirstIndexOfValue(theArray, v6, a1);
  if (result != -1)
  {
    v5 = result;
    do
    {
      CFArrayRemoveValueAtIndex(theArray, v5);
      v7.length = CFArrayGetCount(theArray);
      v7.location = 0;
      result = CFArrayGetFirstIndexOfValue(theArray, v7, a1);
      v5 = result;
    }

    while (result != -1);
  }

  return result;
}

void figCPEExternalProtectionMonitorSetPropertyPostNotificationFunc(_BYTE *a1)
{
  v2 = *a1;
  if (a1[8])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  CFRelease(v2);

  free(a1);
}

uint64_t BeginMonitoringSetApplier(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    return v1(*(result + 32));
  }

  return result;
}

uint64_t EndMonitoringSetApplier(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    return v1(*(result + 32));
  }

  return result;
}

uint64_t GetMethodsSetApplier(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 80);
  if (v2)
  {
    result = v2(*(result + 32));
    *a2 |= result;
  }

  return result;
}

void AddExclusiveDisplay(const void *a1, const __CFArray **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v7.length = CFArrayGetCount(*a2);
    v7.location = 0;
    if (CFArrayGetFirstIndexOfValue(v2, v7, a1) != -1)
    {
      v5 = a2[1];

      CFArrayAppendValue(v5, a1);
    }
  }
}

uint64_t GetStateSetApplier(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 104);
  if (v4)
  {
    result = v4(*(result + 32), a2[1]);
    v5 = result;
  }

  else
  {
    v5 = -1;
  }

  if (a2[1] == 7)
  {
    v6 = 2;
    if (v5 != 2)
    {
      v7 = *a2;
      if (*a2 != 2)
      {
        if (v7 == 1 || v5 == 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = -1;
        }

        if (!v7)
        {
          v6 = 0;
        }

        if (!v5)
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    result = (*(v3 + 80))(*(v3 + 32));
    v6 = v5;
    if (result != a2[1])
    {
      return result;
    }
  }

  *a2 = v6;
  return result;
}

CFArrayRef __AntiScreenCaptureGetStatus_block_invoke()
{
  result = CFArrayCreate(*MEMORY[0x1E695E480], &AntiScreenCaptureGetStatus_wirelessDisplayName, 1, MEMORY[0x1E695E9C0]);
  AntiScreenCaptureGetStatus_wirelessDisplayList = result;
  return result;
}

uint64_t HDCPGetStatus(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  v4 = 0;
  if (a1)
  {
    FigUpstreamMonitor_GetStatus(a1, a2, &v5, &v4, a3);
    if ((v5 - 1) >= 4)
    {
      return 0;
    }

    else
    {
      return (5 - v5);
    }
  }

  else
  {
    *a3 = 0;
    return 1;
  }
}

uint64_t HDCPGetState(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    return FigUpstreamMonitor_GetExternalProtectionState(a1, a2);
  }

  return 0;
}

uint64_t HDCPGetAliasedStatus(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  v4 = 0;
  if (a1)
  {
    FigUpstreamMonitor_GetStatus(a1, a2, &v5, &v4, a3);
    if ((v5 - 1) > 3)
    {
      return 0;
    }

    else
    {
      return dword_196E7BEB0[v5 - 1];
    }
  }

  else
  {
    *a3 = 0;
    return 4;
  }
}

uint64_t HDCPType1AddWeakListener(uint64_t result)
{
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t HDCPType1RemoveWeakListener(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t HDCPType1BeginMonitoring(uint64_t result)
{
  if (result)
  {
    return FigUpstreamMonitor_BeginMonitoring(result);
  }

  return result;
}

uint64_t HDCPType1EndMonitoring(uint64_t result)
{
  if (result)
  {
    return FigUpstreamMonitor_EndMonitoring(result);
  }

  return result;
}

uint64_t HDCPType1GetStatus(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  v4 = 0;
  if (!a1)
  {
    *a3 = 0;
    return 1;
  }

  FigUpstreamMonitor_GetStatus(a1, a2, &v5, &v4, a3);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      return 2;
    }

    return v5 == 4;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      return 3;
    }

    return 0;
  }

  if (v4 == 2)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t HDCPType1GetState(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 2) != 0)
  {
    return FigUpstreamMonitor_GetExternalProtectionState(a1, a2);
  }

  return 0;
}

void HDCPType1DisposeRefcon(uint64_t result)
{
  if (result)
  {
    FigUpstreamMonitor_ReleaseSharedMonitor(result);
  }
}

uint64_t HDCPType1GetAliasedStatus(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = 0;
  v5 = 0;
  if (a1)
  {
    FigUpstreamMonitor_GetStatus(a1, a2, &v6, &v5, a3);
    if ((v6 - 2) < 2)
    {
      return 3;
    }

    if (v6 != 4 && v6 != 1)
    {
      return 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  if (v5 == 2)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t FigCPEExternalProtectionMonitorPoolDataRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBB88 = result;
  return result;
}

double FigCPEExternalProtectionMonitorPoolDataInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t FigCPEExternalProtectionMonitorPoolDataFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  result = a1[2];
  if (result)
  {

    return CMNotificationCenterUnregisterForBarrierSupport();
  }

  return result;
}

CFStringRef FigCPEExternalProtectionMonitorPoolDataCopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"[FigCPEExternalProtectionMonitorPoolData %p retain count %d", a1, v3);
}

void figCPEExternalProtectionMonitorCreateWithCallbacksPostNotificationFunc(void *a1)
{
  CMNotificationCenterPostNotification();

  CFRelease(a1);
}

uint64_t FigCPEOctaviaExternalProtectionMonitorCreate(uint64_t a1, void *a2, unsigned int a3, const void *a4, void *a5)
{
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  destination[0] = 0;
  destination[1] = OctaviaGetIdentifier;
  destination[2] = OctaviaAddListener;
  destination[3] = OctaviaRemoveListener;
  destination[4] = OctaviaBeginMonitoring;
  destination[5] = OctaviaEndMonitoring;
  destination[6] = OctaviaGetMethods;
  destination[7] = OctaviaGetExclusiveDisplayList;
  destination[8] = OctaviaGetStatus;
  destination[9] = OctaviaGetState;
  destination[10] = OctaviaGetSerializationToken;
  destination[11] = OctaviaDisposeRefCon;
  destination[12] = OctaviaGetAliasedStatus;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __InitializeIOAVProtectionTypeForNero_block_invoke;
  block[3] = &__block_descriptor_tmp_7_9;
  block[4] = a4;
  if (InitializeIOAVProtectionTypeForNero_dpProtectionTypeOnce != -1)
  {
    dispatch_once(&InitializeIOAVProtectionTypeForNero_dpProtectionTypeOnce, block);
  }

  SendIOAVProtectionTypeToNero(a4);
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_28;
  }

  BBufFromPointer = FigCFDictionarySetInt64();
  if (BBufFromPointer)
  {
LABEL_27:
    v18 = BBufFromPointer;
    goto LABEL_29;
  }

  v11 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004023CB03E4uLL);
  if (!v11 || (v12 = v11, v13 = dispatch_queue_create("com.apple.coremedia.fcpeo.transport", 0), (v12[1] = v13) == 0))
  {
LABEL_28:
    v18 = 4294955145;
    goto LABEL_29;
  }

  block[13] = MEMORY[0x1E69E9820];
  block[14] = 0x40000000;
  block[15] = __FigCPEOctaviaExternalProtectionMonitorCreate_block_invoke;
  block[16] = &__block_descriptor_tmp_148;
  block[17] = v12;
  BBufFromPointer = NeroTransportRegisterObjectWithFlags();
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  v14 = a4 ? CFRetain(a4) : 0;
  v12[2] = v14;
  destination[0] = v12;
  BBufFromPointer = FigTransportCreateBBufFromPointer();
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  BBufFromPointer = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  v16 = v24;
  v15 = v25;
  DataLength = CMBlockBufferGetDataLength(v24);
  BBufFromPointer = CMBlockBufferAppendBufferReference(v15, v16, 0, DataLength, 0);
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  FigTransportGetRemoteRootObject();
  BBufFromPointer = NeroTransportSendSyncMessageCreatingReply();
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  BBufFromPointer = CMBlockBufferCopyDataBytes(v23, 0, 8uLL, destination[0]);
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(block, destination);
  v18 = FigCPEExternalProtectionMonitorCreateWithCallbacks(v8, block, a2, &v22);
  if (!v18)
  {
    *a5 = v22;
    v22 = 0;
    destination[0] = 0;
    goto LABEL_18;
  }

LABEL_29:
  if (destination[0])
  {
    OctaviaDisposeRefCon(destination[0]);
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_18:
  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v18;
}

uint64_t OctaviaAddListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t OctaviaRemoveListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterRemoveListener();
}

CFTypeRef OctaviaGetMethods(void *a1)
{
  cf = 0;
  destination = 0;
  v1 = NeroTransportSendSyncMessageCreatingReply();
  result = 0;
  if (!v1)
  {
    v3 = CMBlockBufferCopyDataBytes(0, 0, 4uLL, &destination);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v3)
    {
      return 0;
    }

    else
    {
      return destination;
    }
  }

  return result;
}

uint64_t OctaviaGetExclusiveDisplayList(uint64_t a1, uint64_t a2)
{
  if (OctaviaGetExclusiveDisplayList_once != -1)
  {
    OctaviaGetExclusiveDisplayList_cold_1();
  }

  return OctaviaGetExclusiveDisplayList_exclusiveDisplayList;
}

uint64_t OctaviaGetState(void *a1)
{
  cf = 0;
  destination = 0;
  v1 = NeroTransportSendSyncMessageCreatingReply();
  if (v1 == -12031)
  {
    return 1;
  }

  if (v1)
  {
    return 0;
  }

  v3 = CMBlockBufferCopyDataBytes(0, 0, 4uLL, &destination);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return destination;
  }
}

void OctaviaDisposeRefCon(void *a1)
{
  if (a1)
  {
    NeroTransportUnregisterObject();
    NeroTransportSendAsyncMessage();
    dispatch_release(a1[1]);
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }
  }

  free(a1);
}

uint64_t __FigCPEOctaviaExternalProtectionMonitorCreate_block_invoke(uint64_t result, int a2)
{
  if (a2 == 1937006947 || a2 == 1937007971)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return v2;
}

CFArrayRef __OctaviaGetExclusiveDisplayList_block_invoke()
{
  result = CFArrayCreate(*MEMORY[0x1E695E480], &_block_invoke_kWirelessDisplayName, 1, MEMORY[0x1E695E9C0]);
  OctaviaGetExclusiveDisplayList_exclusiveDisplayList = result;
  return result;
}

void __InitializeIOAVProtectionTypeForNero_block_invoke(uint64_t a1)
{
  _block_invoke_2_source = dispatch_source_create(MEMORY[0x1E69E9700], 0x1EuLL, 0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __InitializeIOAVProtectionTypeForNero_block_invoke_2;
  handler[3] = &__block_descriptor_tmp_6_5;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(_block_invoke_2_source, handler);
  dispatch_resume(_block_invoke_2_source);
}

void SendIOAVProtectionTypeToNero(uint64_t a1)
{
  v1 = CFPreferencesCopyAppValue(@"IOAVProtectionType", @"com.apple.coremedia");
  v2 = v1;
  valuePtr = 1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      if (CFStringCompare(v2, @"hdcp", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_12;
      }

LABEL_11:
      valuePtr = 0;
      goto LABEL_12;
    }

    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr) || valuePtr >= 2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = CFGetTypeID(v2);
      if (v5 != CFBooleanGetTypeID() || !CFBooleanGetValue(v2))
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (!FigCreateBlockBufferCopyingMemoryBlock())
  {
    FigTransportGetRemoteRootObject();
    NeroTransportSendAsyncMessage();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t FigAssetExportSessionCreateWithAsset(const __CFAllocator *a1, uint64_t a2, int a3, const void *a4, void *a5, char a6, uint64_t a7, CFTypeRef *a8)
{
  v44 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v12 = FigKTraceInit();
  if (!a4)
  {
    FigAssetExportSessionCreateWithAsset_cold_8(v12, v13, v14, v15, v16, v17, v18, v19, v33, v34, SHIDWORD(v34), a8);
LABEL_17:
    value_low = 4294950325;
    goto LABEL_26;
  }

  if (!a5)
  {
    FigAssetExportSessionCreateWithAsset_cold_7(v12, v13, v14, v15, v16, v17, v18, v19, v33, v34, SHIDWORD(v34), a8);
    goto LABEL_17;
  }

  if (FigCFEqual() || FigExportSettingsForExportPreset(a5))
  {
    MEMORY[0x19A8D3660](&FigAssetExportSessionGetClassID_sRegisterFigAssetExportSessionOnce, RegisterFigAssetExportSessionClassOnce);
    v20 = CMDerivedObjectCreate();
    if (v20)
    {
      value_low = v20;
      goto LABEL_26;
    }

    if (dword_1EAF17B38)
    {
      LODWORD(duration.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 24) = a3;
    *(DerivedStorage + 16) = CFRetain(a4);
    v23 = FigReadWriteLockCreate();
    *(DerivedStorage + 32) = v23;
    if (v23)
    {
      start = **&MEMORY[0x1E6960CC0];
      duration = **&MEMORY[0x1E6960C88];
      CMTimeRangeMake(&v43, &start, &duration);
      v24 = *&v43.start.epoch;
      *(DerivedStorage + 240) = *&v43.start.value;
      *(DerivedStorage + 256) = v24;
      *(DerivedStorage + 272) = *&v43.duration.timescale;
      *(DerivedStorage + 72) = CFRetain(a5);
      *(DerivedStorage + 200) = @"Spectral";
      v25 = dispatch_queue_create("com.apple.coremedia.figassetexportsession.notifications", 0);
      *(DerivedStorage + 472) = v25;
      if (v25)
      {
        v26 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 288) = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 304) = *(v26 + 16);
        *(DerivedStorage + 312) = 0;
        *(DerivedStorage + 320) = @"kFigAssetExportSession_VideoFrameRateConversionAlgorithmPrecise";
        v27 = *MEMORY[0x1E695E4C0];
        *(DerivedStorage + 432) = *MEMORY[0x1E695E4C0];
        *(DerivedStorage + 440) = v27;
        *(DerivedStorage + 368) = v27;
        *(DerivedStorage + 344) = v27;
        *(DerivedStorage + 352) = 0;
        v28 = dispatch_semaphore_create(0);
        *(DerivedStorage + 336) = v28;
        if (v28)
        {
          FigDispatchOnceInitWithinObject();
          *(DerivedStorage + 28) = a6;
          *DerivedStorage = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *(DerivedStorage + 424) = a7;
          v29 = dispatch_queue_create("com.apple.coremedia.figassetexportsession.assetLoadValuesAsyncBatchID", 0);
          *(DerivedStorage + 480) = v29;
          if (v29)
          {
            Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(DerivedStorage + 400) = Mutable;
            if (Mutable)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              *(DerivedStorage + 384) = 0;
              *(DerivedStorage + 96) = 0;
              *(DerivedStorage + 128) = 0;
              *(DerivedStorage + 136) = 0;
              *(DerivedStorage + 144) = 0;
              *(DerivedStorage + 388) = 0;
              *(DerivedStorage + 104) = 0;
              *(DerivedStorage + 112) = 0;
              valuePtr = 0;
              value_low = 0;
              *(DerivedStorage + 64) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
              *a8 = cf;
              return value_low;
            }

            FigAssetExportSessionCreateWithAsset_cold_1(&v43);
          }

          else
          {
            FigAssetExportSessionCreateWithAsset_cold_2(&v43);
          }
        }

        else
        {
          FigAssetExportSessionCreateWithAsset_cold_3(&v43);
        }
      }

      else
      {
        FigAssetExportSessionCreateWithAsset_cold_4(&v43);
      }
    }

    else
    {
      FigAssetExportSessionCreateWithAsset_cold_5(&v43);
    }
  }

  else
  {
    FigAssetExportSessionCreateWithAsset_cold_6(&v43);
  }

  value_low = LODWORD(v43.start.value);
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void figAssetExportSession_figAssetNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v7 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16978, 0);
    *(DerivedStorage + 8) = 1;
    if (dword_1EAF17B38)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFDictionaryApplyFunction(*(DerivedStorage + 400), figAssetExportSession_completePendingTaskWithError, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    CFDictionaryRemoveAllValues(*(DerivedStorage + 400));
  }

  else
  {
    v9 = FigCFEqual();
    if (v9)
    {
      Value = CFDictionaryGetValue(a5, @"assetPayload_BatchID");
      if (Value)
      {
        v25 = Value;
        v26 = CFDictionaryGetValue(*(DerivedStorage + 400), Value);
        if (v26)
        {
          FigAssetExportSessionTaskExecuteAndComplete(v26);
          v27 = *(DerivedStorage + 400);

          CFDictionaryRemoveValue(v27, v25);
        }
      }

      else
      {
        figAssetExportSession_figAssetNotification_cold_1(0, v18, v19, v20, v21, v22, v23, v24, v28, v29, SHIDWORD(v29), v30);
      }
    }

    else
    {
      figAssetExportSession_figAssetNotification_cold_2(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29, SHIDWORD(v29), v30);
    }
  }
}

uint64_t FigAssetExportSessionVideoCompositionCreate(uint64_t a1, __int128 *a2, void *a3)
{
  if (a2)
  {
    if (a3)
    {
      *a3 = 0;
      MEMORY[0x19A8D3660](&FigAssetExportSessionVideoCompositionGetTypeID_sRegisterFigAssetExportSessionVideoCompositionOnce, registerFigAssetExportSessionVideoCompositionOnce);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v6 = Instance;
        v7 = *a2;
        v8 = a2[1];
        v9 = a2[3];
        *(Instance + 48) = a2[2];
        *(Instance + 64) = v9;
        *(Instance + 16) = v7;
        *(Instance + 32) = v8;
        v10 = a2[4];
        v11 = a2[5];
        v12 = a2[7];
        *(Instance + 112) = a2[6];
        *(Instance + 128) = v12;
        *(Instance + 80) = v10;
        *(Instance + 96) = v11;
        v13 = a2[8];
        v14 = a2[9];
        v15 = a2[11];
        *(Instance + 176) = a2[10];
        *(Instance + 192) = v15;
        *(Instance + 144) = v13;
        *(Instance + 160) = v14;
        v16 = *(Instance + 40);
        if (v16)
        {
          CFRetain(v16);
        }

        v17 = v6[7];
        if (v17)
        {
          CFRetain(v17);
        }

        v18 = v6[8];
        if (v18)
        {
          CFRetain(v18);
        }

        v19 = v6[10];
        if (v19)
        {
          CFRetain(v19);
        }

        v20 = v6[11];
        if (v20)
        {
          CFRetain(v20);
        }

        v21 = v6[14];
        if (v21)
        {
          CFRetain(v21);
        }

        v22 = v6[15];
        if (v22)
        {
          CFRetain(v22);
        }

        v23 = v6[16];
        if (v23)
        {
          CFRetain(v23);
        }

        v24 = v6[21];
        if (v24)
        {
          CFRetain(v24);
        }

        v25 = v6[22];
        if (v25)
        {
          CFRetain(v25);
        }

        v26 = v6[23];
        if (v26)
        {
          CFRetain(v26);
        }

        v27 = v6[24];
        if (v27)
        {
          CFRetain(v27);
        }

        v28 = v6[25];
        if (v28)
        {
          CFRetain(v28);
        }

        result = 0;
        *a3 = v6;
      }

      else
      {
        FigAssetExportSessionVideoCompositionCreate_cold_1(&v30);
        return v30;
      }
    }

    else
    {
      FigAssetExportSessionVideoCompositionCreate_cold_2(&v31);
      return v31;
    }
  }

  else
  {
    FigAssetExportSessionVideoCompositionCreate_cold_3(&v32);
    return v32;
  }

  return result;
}

uint64_t FigAssetExportSessionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetExportSessionGetClassID_sRegisterFigAssetExportSessionOnce, RegisterFigAssetExportSessionClassOnce);

  return CMBaseClassGetCFTypeID();
}

uint64_t registerFigAssetExportSessionVideoCompositionOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigAssetExportSessionVideoCompositionID = result;
  return result;
}

const __CFDictionary *FigAssetExportSessionGetSettingForFigRemaker(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v5 = *(DerivedStorage + 216);
  v6 = *(DerivedStorage + 72);
  v7 = *(DerivedStorage + 360);
  v8 = *(DerivedStorage + 256);
  v10[0] = *(DerivedStorage + 240);
  v10[1] = v8;
  v10[2] = *(DerivedStorage + 272);
  return figAssetExportSession_getSettingForFigRemaker(v4, a2, v10, v5, v6, v7, (DerivedStorage + 80));
}

const __CFDictionary *figAssetExportSession_getSettingForFigRemaker(uint64_t a1, uint64_t a2, __int128 *a3, CGSize *a4, __CFString *a5, uint64_t a6, __CFString **a7)
{
  UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(a1, a2, a4);
  v15 = UntransformedSourceDimension * 9.0;
  v19 = UntransformedSourceDimension * 9.0 == v16 * 16.0;
  v17 = UntransformedSourceDimension * 16.0;
  v18 = v16 * 9.0;
  v19 = v19 || v17 == v18;
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_16x9", v17, v18, 9.0, v15, a5);
  v21 = a3[1];
  v26 = *a3;
  v27 = v21;
  v28 = a3[2];
  v22 = FigAssetExportSession_actualSettingForPreset(a1, a2, &v26, a4, v20, a6);
  if (v22)
  {
    v23 = *a7;
    *a7 = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (!v22)
  {
LABEL_14:
    v24 = a3[1];
    v26 = *a3;
    v27 = v24;
    v28 = a3[2];
    return FigAssetExportSession_actualSettingForPreset(a1, a2, &v26, a4, a5, a6);
  }

  return v22;
}

void FigAssetExportSessionGetDestinationFrameDurationAndExpectedFrameRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 16);
  v11 = *(DerivedStorage + 216);
  v12 = *(DerivedStorage + 288);
  figAssetExportSession_getDestinationFrameDurationAndExpectedFrameRate(v10, a3, v11, a2, &v12, a4, a5);
}

void figAssetExportSession_getDestinationFrameDurationAndExpectedFrameRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, float *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  figAssetExportSession_getSourceVideoFrameRate();
  v15 = v14;
  v37 = 0;
  v36 = 0.0;
  FigCFDictionaryGetFloatIfPresent();
  FigCFDictionaryGetFloatIfPresent();
  FigCFDictionaryGetFloatIfPresent();
  v17 = v15 < 0.0 && *&v37 > 0.0;
  if (*(&v37 + 1) <= 0.0 || v15 <= *(&v37 + 1))
  {
    if ((a5->flags & 0x1D) == 1)
    {
      time = *a5;
      v19 = 1.0 / CMTimeGetSeconds(&time);
      if (v15 > v19 && v19 > 0.0)
      {
        v17 = 2;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  v21 = a3 != 0 && v17 == 0;
  if (v21)
  {
    v22 = 3;
  }

  else
  {
    v22 = v17;
  }

  v38 = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  v39 = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  if (v22)
  {
    if (v22 == 2)
    {
      v38 = a5->value;
      flags = a5->flags;
      v39 = a5->timescale;
      epoch = a5->epoch;
    }

    else if (v22 == 1)
    {
      v31.value = 0;
      timescale = 0;
      value = 0;
      v32 = 0;
      FigCFDictionaryGetInt64IfPresent();
      FigCFDictionaryGetIntIfPresent();
      FigCFDictionaryGetInt64IfPresent();
      FigCFDictionaryGetIntIfPresent();
      CMTimeMake(&time, 0, 0);
      v38 = time.value;
      flags = time.flags;
      v39 = time.timescale;
      epoch = time.epoch;
    }

    else if (v21)
    {
      v38 = *(a3 + 16);
      flags = *(a3 + 28);
      v39 = *(a3 + 24);
      epoch = *(a3 + 32);
    }
  }

  if ((flags & 0x1D) == 1)
  {
    time.value = v38;
    time.timescale = v39;
    time.flags = flags;
    time.epoch = epoch;
    v15 = 1.0 / CMTimeGetSeconds(&time);
  }

  if (v36 != 0.0)
  {
    UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(a1, a2, a3);
    v27 = FigExportSettingsCalculateOutputDimensions(a4, UntransformedSourceDimension, v26);
    v29 = v27 * v28;
    v30 = v36;
    if (v29 * v15 > v36)
    {
      do
      {
        if ((flags & 0x1D) == 1)
        {
          v31.value = v38;
          v31.timescale = v39;
          v31.flags = flags;
          v31.epoch = epoch;
          CMTimeMultiplyByRatio(&time, &v31, 2, 1);
          v38 = time.value;
          flags = time.flags;
          v39 = time.timescale;
          epoch = time.epoch;
          v15 = 1.0 / CMTimeGetSeconds(&time);
          v30 = v36;
        }

        else
        {
          v15 = v15 * 0.5;
        }
      }

      while (v29 * v15 > v30);
      CMTimeMakeWithSeconds(&time, 1.0 / v15, 600);
      v38 = time.value;
      flags = time.flags;
      v39 = time.timescale;
      epoch = time.epoch;
    }
  }

  if (a7)
  {
    *a7 = v15;
  }

  if (a6)
  {
    *a6 = v38;
    *(a6 + 8) = v39;
    *(a6 + 12) = flags;
    *(a6 + 16) = epoch;
  }
}

void FigAssetExportSessionGetAverageVideoBitRateForSourceAndPresetAndTransferFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, float a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = *(DerivedStorage + 72);
  v17 = *(DerivedStorage + 16);

  figAssetExportSession_getAverageVideoBitRateForSourceAndPreset(v17, a2, v16, a3, a4, a5, a6, a7, a8);
}

uint64_t FigAssetExportSessionExportGetPresetsCompatibleWithFigAsset(uint64_t a1)
{
  hasAudioTrack = figAssetExportSession_hasAudioTrack();
  cf[0] = 0;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v3)
  {
    v4 = v3(a1, 1986618469, cf);
    v5 = cf[0];
    if (!v4)
    {
      v6 = remakerFamily_GetEnabledTrackWithAllAlphaSegments(cf[0]) != 0;
      v5 = cf[0];
      if (!cf[0])
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }

    v6 = 0;
    if (cf[0])
    {
LABEL_4:
      CFRelease(v5);
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_6:
  cf[0] = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v7)
  {
    v8 = v7(a1, 1986618469, cf);
    v9 = cf[0];
    if (!v8)
    {
      v10 = remakerFamily_GetEnabledTrackWithHomogeneousStereoSegments(cf[0]) != 0;
      v9 = cf[0];
      if (!cf[0])
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v10 = 0;
    if (cf[0])
    {
LABEL_9:
      CFRelease(v9);
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  cf[0] = &figAssetExportSession_GetPresets_sCategorizedPresets[7];
  cf[1] = &figAssetExportSession_GetPresets_sCategorizedPresets[6];
  cf[2] = &figAssetExportSession_GetPresets_sCategorizedPresets[5];
  cf[3] = &figAssetExportSession_GetPresets_sCategorizedPresets[4];
  cf[4] = &figAssetExportSession_GetPresets_sCategorizedPresets[3];
  cf[5] = &figAssetExportSession_GetPresets_sCategorizedPresets[2];
  cf[6] = &figAssetExportSession_GetPresets_sCategorizedPresets[1];
  cf[7] = figAssetExportSession_GetPresets_sCategorizedPresets;
  if (figAssetExportSession_GetPresets_onceToken != -1)
  {
    dispatch_once_f(&figAssetExportSession_GetPresets_onceToken, cf, figAssetExportSession_CategorizePresetsOnce);
  }

  return figAssetExportSession_GetPresets_sCategorizedPresets[4 * hasAudioTrack + 2 * v6 + v10];
}

uint64_t figAssetExportSession_hasAudioTrack()
{
  theArray = 0;
  v0 = *MEMORY[0x1E695E4C0];
  v17 = *MEMORY[0x1E695E4C0];
  v16 = 0;
  FigAssetGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E480];
    if (!v3(v2, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray))
    {
      if (!theArray)
      {
        return 0;
      }

      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = *MEMORY[0x1E695E4D0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
          v17 = v0;
          v16 = 0;
          v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v10 || v10(ValueAtIndex, 0, &v16))
          {
            break;
          }

          if (v16 == 1936684398)
          {
            FigAssetTrackGetCMBaseObject();
            v12 = v11;
            v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v13 || v13(v12, @"IsEnabled", v4, &v17))
            {
              break;
            }

            if (v17 == v8)
            {
              v14 = 1;
              goto LABEL_14;
            }
          }

          ++v7;
        }

        while (v6 != v7);
      }
    }
  }

  v14 = 0;
LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v14;
}

void FigAssetExportSessionDetermineCompatibilityOfExportPreset(const void *a1, const void *a2, int a3, const void *a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v11 = malloc_type_malloc(0x30uLL, 0x10E0040BF5512D3uLL);
  if (v11)
  {
    v12 = v11;
    if (a1)
    {
      v13 = CFRetain(a1);
    }

    else
    {
      v13 = 0;
    }

    *v12 = v13;
    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    v12[1] = v14;
    if (a4)
    {
      v15 = CFRetain(a4);
    }

    else
    {
      v15 = 0;
    }

    v12[2] = v15;
    v12[3] = a5;
    v12[4] = a6;
    *(v12 + 10) = a3;
    if (qword_1EAF1AA50 != -1)
    {
      FigAssetExportSessionDetermineCompatibilityOfExportPreset_cold_1(a5);
    }

    v16 = qword_1EAF1AA48;

    dispatch_async_f(v16, v12, figAssetExportSession_IsExportPresetCompatibleWithAssetDeferred);
  }

  else
  {

    a5(a6, 0);
  }
}

void figAssetExportSession_IsExportPresetCompatibleWithAssetDeferred(uint64_t a1)
{
  IsExportPresetCompatibleWithAssetAndOutputFileType = figAssetExportSession_IsExportPresetCompatibleWithAssetAndOutputFileType(*a1, *(a1 + 8), *(a1 + 40), *(a1 + 16), 0);
  (*(a1 + 24))(*(a1 + 32), IsExportPresetCompatibleWithAssetAndOutputFileType);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t FigAssetExportSessionGetMaximumDuration(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    FigCFDictionaryGetInt64IfPresent();
    a2 = 0;
  }

  return figAssetExportSession_maximumDuration(a1, a2, a3);
}

uint64_t figAssetExportSession_maximumDuration(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  if (!a3)
  {
    figAssetExportSession_maximumDuration_cold_2(&v21);
    return LODWORD(v21.value);
  }

  v5 = FigExportSettingsForExportPreset(a1);
  if (!v5)
  {
    figAssetExportSession_maximumDuration_cold_1(&v21);
    return LODWORD(v21.value);
  }

  v6 = v5;
  v7 = MEMORY[0x1E6960C88];
  *a3 = *MEMORY[0x1E6960C88];
  *(a3 + 16) = *(v7 + 16);
  if (!a2)
  {
    FigCFDictionaryGetInt64IfPresent();
    if (!v22)
    {
      return 0;
    }
  }

  Value = CFDictionaryGetValue(v6, @"mediaTiers");
  v21.value = 0;
  v23 = 0;
  if (!Value)
  {
    figAssetExportSession_computeAudioVideoByteRate(v6, 1, &v21.value, &v23);
    v13 = v23 + v21.value;
    goto LABEL_18;
  }

  v9 = Value;
  Count = CFArrayGetCount(Value);
  if (Count > 0)
  {
    v11 = Count;
    v12 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
      v15 = CFDictionaryGetValue(ValueAtIndex, @"Video");
      v16 = CFDictionaryGetValue(ValueAtIndex, @"Audio");
      if (v15)
      {
        v15 = figAssetExportSession_computeVideoTrackByteRate(v15, 1);
      }

      if (v16)
      {
        v17 = figAssetExportSession_computeAudioTrackByteRate(v16, 1);
      }

      else
      {
        v17 = 0;
      }

      if (v17 + v15 < v13)
      {
        v13 = v17 + v15;
      }

      ++v12;
    }

    while (v11 != v12);
LABEL_18:
    if (v13 < 1)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
  if (v22 < 30721)
  {
    result = 0;
    v20 = MEMORY[0x1E6960CC0];
    *a3 = *MEMORY[0x1E6960CC0];
    epoch = *(v20 + 16);
  }

  else
  {
    CMTimeMakeWithSeconds(&v21, (((v22 - 30720) * 0.99) / v13), 1000000);
    result = 0;
    *a3 = *&v21.value;
    epoch = v21.epoch;
  }

  *(a3 + 16) = epoch;
  return result;
}

uint64_t FigAssetExportSessionEstimateMaximumDurationWithCompletionHandler(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    FigAssetExportSessionEstimateMaximumDurationWithCompletionHandler_cold_3(&v22);
    return v22;
  }

  if (!a2)
  {
    FigAssetExportSessionEstimateMaximumDurationWithCompletionHandler_cold_2(&v22);
    return v22;
  }

  v7 = DerivedStorage;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigAssetExportSessionEstimateMaximumDurationWithCompletionHandler_cold_1(&v22);
    return v22;
  }

  v9 = Mutable;
  CFArrayAppendValue(Mutable, @"assetProperty_Tracks");
  CFArrayAppendValue(v9, @"assetProperty_FormatReader");
  CFArrayAppendValue(v9, @"assetProperty_TrackReferences");
  v10 = FigAssetExportSessionTaskCreate(a1, v9, figAssetExportSession_estimateMaximumDurationDeferred, figAssetExportSession_completeEstimateMaximumDurationTask, 0xB0uLL, &v21);
  v11 = v21;
  if (v10)
  {
    CFRelease(v9);
    if (!v11)
    {
      return v10;
    }
  }

  else
  {
    v12 = v21[6];
    v13 = *(v7 + 16);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    *v12 = v13;
    v14 = *(v7 + 240);
    v15 = *(v7 + 256);
    *(v12 + 40) = *(v7 + 272);
    *(v12 + 24) = v15;
    *(v12 + 8) = v14;
    v16 = *(v7 + 216);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(v12 + 56) = v16;
    v17 = *(v7 + 72);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(v12 + 64) = v17;
    *(v12 + 72) = *(v7 + 360);
    *(v12 + 80) = *(v7 + 352);
    v18 = *(v7 + 304);
    *(v12 + 88) = *(v7 + 288);
    *(v12 + 104) = v18;
    *(v12 + 112) = v7 + 80;
    *(v12 + 124) = *(v7 + 384);
    *(v12 + 128) = *(v7 + 208) != 0;
    *(v12 + 120) = *(v7 + 98);
    v19 = MEMORY[0x1E6960C70];
    *(v12 + 148) = *(MEMORY[0x1E6960C70] + 16);
    *(v12 + 132) = *v19;
    *(v12 + 160) = a2;
    *(v12 + 168) = a3;
    figAssetExportSession_runTaskAfterLoadingRequiredAssetProperties(v11);
    CFRelease(v9);
  }

  CFRelease(v11);
  return v10;
}

uint64_t FigAssetExportSessionTaskCreate(const void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, size_t a5, void *a6)
{
  v12 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&figAssetExportSessionTask_GetTypeID_sRegisterfigAssetExportSessionTaskOnce, figAssetExportSessionTask_RegisterOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigAssetExportSessionTaskCreate_cold_2(&v22);
    return v22;
  }

  v14 = Instance;
  v15 = malloc_type_malloc(a5, 0x2AD884BBuLL);
  if (!v15)
  {
    v20 = 890;
LABEL_12:
    FigAssetExportSessionTaskCreate_cold_1(v20, v15, v14, &v21);
    return v21;
  }

  Copy = CFArrayCreateCopy(v12, a2);
  if (!Copy)
  {
    v20 = 893;
    goto LABEL_12;
  }

  v17 = Copy;
  if (a1)
  {
    v18 = CFRetain(a1);
  }

  else
  {
    v18 = 0;
  }

  result = 0;
  v14[4] = a3;
  v14[5] = a4;
  v14[2] = v18;
  v14[3] = v17;
  v14[6] = v15;
  *a6 = v14;
  return result;
}

CFIndex figAssetExportSession_estimateMaximumDurationDeferred(void *a1, __CFError **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *MEMORY[0x1E6960C70];
  *&v64.value = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v64.epoch = v9;
  if (!a2)
  {
    figAssetExportSession_estimateMaximumDurationDeferred_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v51, v53, SHIDWORD(v53), v54);
    return 4294950325;
  }

  *a2 = 0;
  v52 = v8;
  *(a1 + 132) = v8;
  *(a1 + 148) = v9;
  v63 = a1[9];
  memset(&v62, 0, sizeof(v62));
  figAssetExportSession_getAssetDuration(&v62);
  memset(&v61, 0, sizeof(v61));
  v55 = *MEMORY[0x1E6960CC0];
  *&start.start.value = *MEMORY[0x1E6960CC0];
  v12 = *(MEMORY[0x1E6960CC0] + 16);
  start.start.epoch = v12;
  duration = v62;
  CMTimeRangeMake(&otherRange, &start.start, &duration);
  v13 = *(a1 + 3);
  *&start.start.value = *(a1 + 1);
  *&start.start.epoch = v13;
  *&start.duration.timescale = *(a1 + 5);
  CMTimeRangeGetIntersection(&v61, &start, &otherRange);
  if (*a1[14])
  {
    v14 = *a1[14];
  }

  else
  {
    v14 = a1[8];
  }

  if (!figAssetExportSession_isOutputEstimateSupported(v14, 1))
  {
    v49 = "Unable to estimate for this preset.";
    v50 = -17391;
LABEL_52:
    CFError = figAssetExportSession_createCFError(v50, v49);
    v32 = 0;
    goto LABEL_53;
  }

  v57 = 0;
  if (FigCFEqual())
  {
    v15 = 0;
    goto LABEL_8;
  }

  TypeID = FigRemakerGetTypeID();
  v36 = *a1;
  v37 = figAssetExportSession_IsAlphaPreset(a1[8]);
  DefaultSourceVideoTrackFromAsset = remakerFamily_GetDefaultSourceVideoTrackFromAsset(TypeID, v36, v37, *(a1 + 120), &v57);
  if (DefaultSourceVideoTrackFromAsset)
  {
    v32 = DefaultSourceVideoTrackFromAsset;
    CFError = figAssetExportSession_createCFError(-16976, "Unable to select default video track for this asset.");
LABEL_53:
    *a2 = CFError;
    if (!CFError)
    {
      return v32;
    }

    return CFErrorGetCode(CFError);
  }

  v39 = *a1;
  v40 = a1[7];
  v41 = a1[8];
  v42 = a1[9];
  v43 = a1[14];
  otherRange = v61;
  SettingForFigRemaker = figAssetExportSession_getSettingForFigRemaker(v39, v57, &otherRange.start.value, v40, v41, v42, v43);
  if (!SettingForFigRemaker)
  {
    v49 = "Unable to find export settings for this preset.";
    v50 = -16971;
    goto LABEL_52;
  }

  v15 = SettingForFigRemaker;
  if (v63)
  {
    goto LABEL_9;
  }

  FigCFDictionaryGetInt64IfPresent();
LABEL_8:
  if (!v63)
  {
    v64 = v61.duration;
    epoch = v61.duration.epoch;
    *(a1 + 132) = *&v61.duration.value;
LABEL_18:
    *(a1 + 148) = epoch;
    goto LABEL_35;
  }

LABEL_9:
  if (FigCFEqual())
  {
    v45 = v63;
    *&otherRange.start.value = v55;
    otherRange.start.epoch = v12;
    TotalByteRateOfAllAssetTracks = figAssetExportSession_getTotalByteRateOfAllAssetTracks();
    CMTimeMakeWithSeconds(&otherRange.start, ((v45 - 30720) * 0.99) / TotalByteRateOfAllAssetTracks, 1000000);
    *(a1 + 132) = *&otherRange.start.value;
    epoch = otherRange.start.epoch;
    goto LABEL_18;
  }

  if (figAssetExportSession_hasVideoTrack())
  {
    Value = CFDictionaryGetValue(v15, @"Video");
    v17 = Value;
    if (Value)
    {
      if (!CFDictionaryGetValue(Value, @"videoCodec"))
      {
        goto LABEL_35;
      }

      *&otherRange.start.value = v52;
      otherRange.start.epoch = v9;
      v56 = 0.0;
      duration.value = 0;
      figAssetExportSession_copyFormatDescriptionsOfSourceVideoTrack(*a1, v57);
      v19 = v18;
      figAssetExportSession_createProfileLevel(a1[7], v17, v18, &duration);
      VideoEncoderSpecification = figAssetExportSession_createVideoEncoderSpecification(a1[10], v17, duration.value);
      v21 = *a1;
      v22 = a1[7];
      *&start.start.value = *(a1 + 11);
      start.start.epoch = a1[13];
      figAssetExportSession_getDestinationFrameDurationAndExpectedFrameRate(v21, v57, v22, v17, &start.start, &otherRange, &v56);
      UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(*a1, v57, a1[7]);
      v25 = v24;
      v26 = figAssetExportSession_copySourceTransferFunction(*a1, v57, a1[7]);
      figAssetExportSession_getAverageVideoBitRateForSourceAndPreset(*a1, v57, a1[8], v17, VideoEncoderSpecification, v26, UntransformedSourceDimension, v25, v56);
      v28 = v27 + 7;
      if (v27 >= 0)
      {
        v28 = v27;
      }

      v17 = v28 >> 3;
      if (FigCFEqual())
      {
        v17 = (v17 * 1.6);
      }

      else
      {
        isHEVCHDRPreset = figAssetExportSession_isHEVCHDRPreset(a1[8]);
        if (v19)
        {
          if (isHEVCHDRPreset)
          {
            PreferredFormatDescription = FigExportSettingsGetPreferredFormatDescription(v19);
            if (FigExportSettingsGetHDRType(PreferredFormatDescription) == 20 && v56 > 0.0)
            {
              v17 = (v17 + (v56 * 430.0));
            }
          }
        }
      }
    }

    else
    {
      v19 = 0;
      v26 = 0;
      VideoEncoderSpecification = 0;
    }
  }

  else
  {
    v19 = 0;
    v26 = 0;
    VideoEncoderSpecification = 0;
    v17 = 0;
  }

  if (figAssetExportSession_hasAudioTrack())
  {
    v30 = CFDictionaryGetValue(v15, @"Audio");
    v31 = figAssetExportSession_computeAudioByteRate(*a1, v30, *(a1 + 128), *(a1 + 31));
  }

  else
  {
    v31 = 0;
  }

  if (v31 + v17 < 1)
  {
    *a2 = figAssetExportSession_createCFError(-16976, "Incompatible preset for source asset.");
    *&v64.value = v52;
    v64.epoch = v9;
  }

  else if (v63 < 30721)
  {
    *&v64.value = v55;
    v64.epoch = v12;
  }

  else
  {
    CMTimeMakeWithSeconds(&v64, (((v63 - 30720) * 0.99) / (v31 + v17)), 1000000);
    otherRange.start = v64;
    start.start = v61.duration;
    if (CMTimeCompare(&otherRange.start, &start.start) >= 1)
    {
      v64 = v61.duration;
    }
  }

  *(a1 + 132) = v64;
  if (v26)
  {
    CFRelease(v26);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (VideoEncoderSpecification)
  {
    CFRelease(VideoEncoderSpecification);
  }

LABEL_35:
  v32 = 0;
  CFError = *a2;
  if (*a2)
  {
    return CFErrorGetCode(CFError);
  }

  return v32;
}

void figAssetExportSession_completeEstimateMaximumDurationTask(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  v3 = *(a1 + 168);
  v7 = *(a1 + 132);
  v8 = *(a1 + 148);
  v4(v3, &v7, a2);
  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void figAssetExportSession_runTaskAfterLoadingRequiredAssetProperties(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v3 = *(DerivedStorage + 480);

  dispatch_async_f(v3, a1, figAssetExportSession_runTaskAfterLoadingRequiredAssetPropertiesDispatched);
}

uint64_t FigAssetExportSessionGetEstimatedOutputFileLength(void *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    FigAssetExportSessionGetEstimatedOutputFileLength_cold_2(&v15);
    return LODWORD(v15.value);
  }

  *a4 = 0;
  if ((*(a2 + 3) & 0x1D) != 1)
  {
    return 0;
  }

  result = figAssetExportSession_isOutputEstimateSupported(a1, 0);
  if (result)
  {
    v8 = FigExportSettingsForExportPreset(a1);
    if (v8)
    {
      v16 = 0;
      v17 = 0;
      figAssetExportSession_computeAudioVideoByteRate(v8, 0, &v17, &v16);
      v15 = *a2;
      EstimatedFileLengthWithOverhead = figAssetExportSession_getEstimatedFileLengthWithOverhead(&v15, v17, v16, v9, v10, v11, v12, v13);
      result = 0;
      *a4 = EstimatedFileLengthWithOverhead;
      return result;
    }

    FigAssetExportSessionGetEstimatedOutputFileLength_cold_1(&v15);
    return LODWORD(v15.value);
  }

  return result;
}

const void *figAssetExportSession_computeAudioVideoByteRate(const __CFDictionary *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = a2;
  Value = CFDictionaryGetValue(a1, @"Video");
  v9 = CFDictionaryGetValue(a1, @"Audio");
  *a3 = 0;
  *a4 = 0;
  if (Value)
  {
    result = CFDictionaryGetValue(Value, @"videoCodec");
    if (!result)
    {
      return result;
    }

    *a3 = figAssetExportSession_computeVideoTrackByteRate(Value, v6);
  }

  result = figAssetExportSession_computeAudioTrackByteRate(v9, v6);
  *a4 = result;
  return result;
}

uint64_t figAssetExportSession_getEstimatedFileLengthWithOverhead(CMTime *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0)
  {
    figAssetExportSession_getEstimatedFileLengthWithOverhead_cold_2(a1, a2, a3, a4, a5, a6, a7, a8, v9.value, v9.timescale, v9.flags, v9.epoch);
  }

  else if (a3 < 0)
  {
    figAssetExportSession_getEstimatedFileLengthWithOverhead_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v9.value, v9.timescale, v9.flags, v9.epoch);
  }

  else if (a3 + a2)
  {
    v9 = *a1;
    return (CMTimeGetSeconds(&v9) * (a3 + a2) / 0.99000001 + 30720.0);
  }

  return 0;
}

uint64_t FigAssetExportSessionEstimateOutputFileLengthWithCompletionHandler(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    FigAssetExportSessionEstimateOutputFileLengthWithCompletionHandler_cold_3(&v22);
    return v22;
  }

  if (!a2)
  {
    FigAssetExportSessionEstimateOutputFileLengthWithCompletionHandler_cold_2(&v22);
    return v22;
  }

  v7 = DerivedStorage;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigAssetExportSessionEstimateOutputFileLengthWithCompletionHandler_cold_1(&v22);
    return v22;
  }

  v9 = Mutable;
  CFArrayAppendValue(Mutable, @"assetProperty_Tracks");
  CFArrayAppendValue(v9, @"assetProperty_FormatReader");
  CFArrayAppendValue(v9, @"assetProperty_TrackReferences");
  v10 = FigAssetExportSessionTaskCreate(a1, v9, figAssetExportSession_estimateOutputFileLengthDeferred, figAssetExportSession_completeEstimateOutputFileLengthTask, 0xA0uLL, &v21);
  v11 = v21;
  if (v10)
  {
    v19 = v10;
    if (!v21)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = v21[6];
    v13 = *(v7 + 16);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    *v12 = v13;
    v14 = *(v7 + 240);
    v15 = *(v7 + 256);
    *(v12 + 40) = *(v7 + 272);
    *(v12 + 24) = v15;
    *(v12 + 8) = v14;
    v16 = *(v7 + 216);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(v12 + 56) = v16;
    v17 = *(v7 + 72);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(v12 + 64) = v17;
    *(v12 + 72) = *(v7 + 360);
    *(v12 + 80) = *(v7 + 352);
    v18 = *(v7 + 304);
    *(v12 + 88) = *(v7 + 288);
    *(v12 + 104) = v18;
    *(v12 + 112) = v7 + 80;
    *(v12 + 124) = *(v7 + 384);
    *(v12 + 128) = *(v7 + 208) != 0;
    *(v12 + 120) = *(v7 + 98);
    *(v12 + 136) = 0;
    *(v12 + 144) = a2;
    *(v12 + 152) = a3;
    figAssetExportSession_runTaskAfterLoadingRequiredAssetProperties(v11);
    v19 = 0;
  }

  CFRelease(v11);
LABEL_13:
  CFRelease(v9);
  return v19;
}

CFIndex figAssetExportSession_estimateOutputFileLengthDeferred(void *a1, __CFError **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    figAssetExportSession_estimateOutputFileLengthDeferred_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v50, SLODWORD(v51), v52, start.start.value);
    return 4294950325;
  }

  *a2 = 0;
  a1[17] = 0;
  memset(&v57, 0, sizeof(v57));
  figAssetExportSession_getAssetDuration(&v57);
  memset(&v56, 0, sizeof(v56));
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  duration = v57;
  CMTimeRangeMake(&otherRange, &start.start, &duration);
  v10 = *(a1 + 3);
  *&start.start.value = *(a1 + 1);
  *&start.start.epoch = v10;
  *&start.duration.timescale = *(a1 + 5);
  CMTimeRangeGetIntersection(&v56, &start, &otherRange);
  if (*a1[14])
  {
    v11 = *a1[14];
  }

  else
  {
    v11 = a1[8];
  }

  if (!figAssetExportSession_isOutputEstimateSupported(v11, 1))
  {
    v47 = "Unable to estimate for this preset.";
LABEL_39:
    CFError = figAssetExportSession_createCFError(-17391, v47);
    SettingForFigRemaker = 0;
    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    otherRange = v56;
    TotalByteRateOfAllAssetTracks = figAssetExportSession_getTotalByteRateOfAllAssetTracks();
    start.start = otherRange.duration;
    a1[17] = (TotalByteRateOfAllAssetTracks * CMTimeGetSeconds(&start.start));
    goto LABEL_23;
  }

  v52 = 0;
  TypeID = FigRemakerGetTypeID();
  v13 = *a1;
  v14 = figAssetExportSession_IsAlphaPreset(a1[8]);
  DefaultSourceVideoTrackFromAsset = remakerFamily_GetDefaultSourceVideoTrackFromAsset(TypeID, v13, v14, *(a1 + 120), &v52);
  if (DefaultSourceVideoTrackFromAsset)
  {
    SettingForFigRemaker = DefaultSourceVideoTrackFromAsset;
    v48 = "Unable to select default video track for this asset.";
    v49 = -16976;
LABEL_42:
    CFError = figAssetExportSession_createCFError(v49, v48);
LABEL_43:
    *a2 = CFError;
    if (!CFError)
    {
      return SettingForFigRemaker;
    }

    return CFErrorGetCode(CFError);
  }

  v16 = *a1;
  v17 = a1[7];
  v18 = a1[8];
  v19 = a1[9];
  v20 = a1[14];
  otherRange = v56;
  SettingForFigRemaker = figAssetExportSession_getSettingForFigRemaker(v16, v52, &otherRange.start.value, v17, v18, v19, v20);
  if (!SettingForFigRemaker)
  {
    v48 = "Unable to find export settings for this preset.";
    v49 = -16971;
    goto LABEL_42;
  }

  if (!figAssetExportSession_hasVideoTrack())
  {
    v24 = 0;
    v25 = 0;
    VideoEncoderSpecification = 0;
    v23 = 0;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(SettingForFigRemaker, @"Video");
  v23 = Value;
  if (Value)
  {
    if (CFDictionaryGetValue(Value, @"videoCodec"))
    {
      *&otherRange.start.value = *MEMORY[0x1E6960C70];
      otherRange.start.epoch = *(MEMORY[0x1E6960C70] + 16);
      v51 = 0.0;
      duration.value = 0;
      figAssetExportSession_copyFormatDescriptionsOfSourceVideoTrack(*a1, v52);
      v24 = v37;
      figAssetExportSession_createProfileLevel(a1[7], v23, v37, &duration);
      VideoEncoderSpecification = figAssetExportSession_createVideoEncoderSpecification(a1[10], v23, duration.value);
      v38 = *a1;
      v39 = a1[7];
      *&start.start.value = *(a1 + 11);
      start.start.epoch = a1[13];
      figAssetExportSession_getDestinationFrameDurationAndExpectedFrameRate(v38, v52, v39, v23, &start.start, &otherRange, &v51);
      UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(*a1, v52, a1[7]);
      v42 = v41;
      v25 = figAssetExportSession_copySourceTransferFunction(*a1, v52, a1[7]);
      figAssetExportSession_getAverageVideoBitRateForSourceAndPreset(*a1, v52, a1[8], v23, VideoEncoderSpecification, v25, UntransformedSourceDimension, v42, v51);
      v44 = v43 + 7;
      if (v43 >= 0)
      {
        v44 = v43;
      }

      v23 = v44 >> 3;
      if (FigCFEqual())
      {
        v23 = (v23 * 1.6);
      }

      else
      {
        isHEVCHDRPreset = figAssetExportSession_isHEVCHDRPreset(a1[8]);
        if (v24)
        {
          if (isHEVCHDRPreset)
          {
            PreferredFormatDescription = FigExportSettingsGetPreferredFormatDescription(v24);
            if (FigExportSettingsGetHDRType(PreferredFormatDescription) == 20 && v51 > 0.0)
            {
              v23 = (v23 + (v51 * 430.0));
            }
          }
        }
      }

      goto LABEL_14;
    }

    v47 = "Unable to estimate for pass-through video track.";
    goto LABEL_39;
  }

  v24 = 0;
  v25 = 0;
  VideoEncoderSpecification = 0;
LABEL_14:
  if (figAssetExportSession_hasAudioTrack())
  {
    v33 = CFDictionaryGetValue(SettingForFigRemaker, @"Audio");
    v34 = figAssetExportSession_computeAudioByteRate(*a1, v33, *(a1 + 128), *(a1 + 31));
  }

  else
  {
    v34 = 0;
  }

  otherRange.start = v56.duration;
  a1[17] = figAssetExportSession_getEstimatedFileLengthWithOverhead(&otherRange.start, v23, v34, v28, v29, v30, v31, v32);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (VideoEncoderSpecification)
  {
    CFRelease(VideoEncoderSpecification);
  }

LABEL_23:
  SettingForFigRemaker = 0;
  CFError = *a2;
  if (*a2)
  {
    return CFErrorGetCode(CFError);
  }

  return SettingForFigRemaker;
}

void figAssetExportSession_completeEstimateOutputFileLengthTask(uint64_t a1, uint64_t a2)
{
  (*(a1 + 144))(*(a1 + 152), *(a1 + 136), a2);
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a1;
  if (*a1)
  {

    CFRelease(v5);
  }
}

uint64_t FigAssetExportSessionGetAllPresets(uint64_t a1, uint64_t a2)
{
  if (qword_1EAF1A988 != -1)
  {
    FigAssetExportSessionGetAllPresets_cold_1(a1);
  }

  return qword_1EAF1A980;
}

uint64_t FigAssetExportSessionExportAsynchronously(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);

  return v6(a1, a2, a3);
}

uint64_t FigAssetExportSessionCancelExport(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);

  return v2(a1);
}

uint64_t FigAssetExportSessionStopResumableExport(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);

  return v2(a1);
}

uint64_t FigAssetExportSessionDetermineCompatibleFileTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);

  return v6(a1, a2, a3);
}

uint64_t FigAssetExportSessionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigAssetExportSessionSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void FigAssetExportSession_Finalize(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17B38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(DerivedStorage + 480) && _FigIsNotCurrentDispatchQueue())
  {
    dispatch_sync_f(*(DerivedStorage + 480), 0, figAssetExportSession_EmptyWait);
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    figAssetExportSession_removeListeners(v4, a1);
    if (_FigIsNotCurrentDispatchQueue())
    {
      dispatch_sync_f(*(DerivedStorage + 472), 0, figAssetExportSession_EmptyWait);
    }

    FigReadWriteLockLockForWrite();
    FigRemakerGetFigBaseObject();
    if (v29)
    {
      v30 = v29;
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v31)
      {
        v31(v30);
      }
    }

    v32 = *(DerivedStorage + 40);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 40) = 0;
    }

    FigReadWriteLockUnlockForWrite();
  }

  if (*(DerivedStorage + 97) || *(DerivedStorage + 389))
  {
    FigReadWriteLockLockForWrite();
    figAssetExportSession_releaseSegmentResources(a1);
    FigReadWriteLockUnlockForWrite();
    v5 = *(DerivedStorage + 144);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  FigReadWriteLockDestroy();
  v6 = *(DerivedStorage + 472);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(DerivedStorage + 480);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(DerivedStorage + 336);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(DerivedStorage + 216);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 64);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 72);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 80);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 88);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 176);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 192);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 200);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 224);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(DerivedStorage + 232);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(DerivedStorage + 208);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(DerivedStorage + 320);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(DerivedStorage + 448);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(DerivedStorage + 464);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(DerivedStorage + 400);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(DerivedStorage + 392);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(DerivedStorage + 160);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(DerivedStorage + 152);
  if (v28)
  {
    CFRelease(v28);
  }
}