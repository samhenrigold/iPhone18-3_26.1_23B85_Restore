uint64_t FigAlternateFilterTreeCreateFilter(const void *a1, const __CFString *a2, int a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ArrayFromLeaves = ftree_createArrayFromLeaves(a1);
  if (!ArrayFromLeaves)
  {
    FigAlternateFilterTreeCreateFilter_cold_2(DerivedStorage, &cf);
    return cf;
  }

  v10 = ArrayFromLeaves;
  v11 = CFGetAllocator(a1);
  v12 = DerivedStorage[3];
  cf = 0;
  FigAlternateFilterGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    v16 = v13;
    goto LABEL_16;
  }

  v14 = CMBaseObjectGetDerivedStorage();
  *v14 = CFStringCreateCopy(v11, a2);
  *(v14 + 8) = a3;
  *(v14 + 16) = CFArrayCreateCopy(v11, v10);
  if (v12)
  {
    v15 = CFRetain(v12);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 24) = v15;
  if (!*v14)
  {
    v18 = 612;
LABEL_15:
    FigAlternateFilterTreeCreateFilter_cold_1(v18, &v20);
    v16 = v20;
LABEL_16:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_9;
  }

  if (!*(v14 + 16))
  {
    v18 = 613;
    goto LABEL_15;
  }

  v16 = 0;
  *a4 = cf;
LABEL_9:
  FigSimpleMutexUnlock();
  CFRelease(v10);
  return v16;
}

uint64_t FigAlternateFilterTreeCopyLeaves(const void *a1, __CFArray **a2)
{
  if (a2)
  {
    ArrayFromLeaves = ftree_createArrayFromLeaves(a1);
    *a2 = ArrayFromLeaves;
    if (ArrayFromLeaves)
    {
      return 0;
    }

    else
    {
      FigAlternateFilterTreeCopyLeaves_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigAlternateFilterTreeCopyLeaves_cold_2(&v6);
    return v6;
  }
}

uint64_t FigAlternateFilterTreeCreate(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigAlternateFilterTreeGetClassID_sRegisterFigAlternateFilterTreeBaseTypeOnce, RegisterFigAlternateFilterTreeBaseType);
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = FigSimpleMutexCreate();
      DerivedStorage[1] = 0;
      DerivedStorage[2] = DerivedStorage + 1;
      *a2 = 0;
    }
  }

  else
  {
    FigAlternateFilterTreeCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

CFDataRef FigAlternateFilterApplyInfoCreate(const __CFAllocator *a1, const __CFArray *a2, uint64_t a3, const void *a4, const void *a5)
{
  Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 0;
  }

  v11 = Mutable;
  if (a2)
  {
    v12.length = CFArrayGetCount(a2);
  }

  else
  {
    v12.length = 0;
  }

  v12.location = 0;
  CFArrayApplyFunction(a2, v12, fafinfo_populateAlternatesBitVectorFn, v11);
  v20 = *byte_1F0AE1E50;
  if (a4)
  {
    v13 = malloc_type_calloc(1uLL, 0x28uLL, 0x1060040E4149F06uLL);
    *v13 = CFRetain(a4);
    v13[1] = a3;
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = 0;
    }

    v13[2] = Count;
    v13[3] = CFRetain(v11);
    if (a5)
    {
      v15 = CFRetain(a5);
    }

    else
    {
      v15 = 0;
    }

    v13[4] = v15;
    v20.info = v13;
    v16 = CFAllocatorCreate(a1, &v20);
    if (v16)
    {
      v17 = v16;
      v18 = CFDataCreateWithBytesNoCopy(a1, v13, 40, v16);
      if (!v18)
      {
        fafinfo_deallocate(0, v13);
      }

      CFRelease(v17);
      goto LABEL_16;
    }

    fafinfo_deallocate(0, v13);
  }

  v18 = 0;
LABEL_16:
  CFRelease(v11);
  return v18;
}

void fafinfo_deallocate(int a1, CFTypeRef *a2)
{
  v3 = a2[3];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  v4 = a2[4];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a2);
}

void FigAlternateFilterApplyInfoGetStorage(const __CFData *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (CFDataGetLength(a1) > 0x27)
  {
    v4.length = 40;
  }

  else
  {
    v4.length = CFDataGetLength(a1);
  }

  v4.location = 0;

  CFDataGetBytes(a1, v4, a2);
}

uint64_t ftree_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[1];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = v3;
        v5 = *(v2 + 24);
        *(v4 + 24) = v5;
        *v5 = v4;
        ftree_freeLeaf(v2);
        v3 = *(v4 + 16);
        v2 = v4;
      }

      while (v3);
    }

    else
    {
      v4 = DerivedStorage[1];
    }

    v6 = *(v4 + 24);
    DerivedStorage[2] = v6;
    *v6 = 0;
    ftree_freeLeaf(v4);
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    CFRelease(v7);
  }

  return FigSimpleMutexDestroy();
}

uint64_t RegisterFigAlternateFilterTreeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t ftreefilter_equal(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  result = FigCFEqual();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      return FigCFEqual() != 0;
    }
  }

  return result;
}

void ftreefilter_finalize(uint64_t a1)
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

uint64_t ftreefilter_copyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  if (!a2)
  {
    ftreefilter_copyProperty_cold_3(&context);
    return context;
  }

  if (!a4)
  {
    ftreefilter_copyProperty_cold_2(&context);
    return context;
  }

  result = CFEqual(@"FAFProperty_CountOfChildFilters", a2);
  if (!result)
  {
    return result;
  }

  context = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    v9.length = CFArrayGetCount(*(DerivedStorage + 16));
  }

  else
  {
    v9.length = 0;
  }

  v9.location = 0;
  CFArrayApplyFunction(v8, v9, ftreefilter_countLeafFiltersAndTheirChildrenFn, &context);
  v10 = *(v7 + 24);
  if (v10)
  {
    v11 = ftreefilter_countLeafFilterAndItsChildren(v10);
    v12 = context + v11;
  }

  else
  {
    v12 = context;
  }

  v14 = v12;
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &v14);
  *a4 = v13;
  if (!v13)
  {
    ftreefilter_copyProperty_cold_1(&context);
    return context;
  }

  return 0;
}

uint64_t ftreefilter_countLeafFiltersAndTheirChildrenFn(const void *a1, void *a2)
{
  result = ftreefilter_countLeafFilterAndItsChildren(a1);
  *a2 += result;
  return result;
}

uint64_t ftreefilter_countLeafFilterAndItsChildren(const void *a1)
{
  v8 = 0;
  number = 0;
  v2 = CFGetAllocator(a1);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 1;
  }

  v4 = v3(a1, @"FAFProperty_CountOfChildFilters", v2, &number);
  v5 = number;
  if (v4)
  {
    v6 = 1;
    if (!number)
    {
      return v6;
    }

    goto LABEL_4;
  }

  CFNumberGetValue(number, kCFNumberLongType, &v8);
  v5 = number;
  v6 = v8 + 1;
  if (number)
  {
LABEL_4:
    CFRelease(v5);
  }

  return v6;
}

uint64_t ftreefilter_appendAndReleaseLeafInfo(const void *a1, uint64_t a2, CFMutableArrayRef theArray, const __CFArray *Count, const __CFArray *a5, CFDataRef *a6)
{
  v9 = *a6;
  if (*a6)
  {
    goto LABEL_8;
  }

  v12 = CFGetAllocator(a1);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  v14 = v13 ? v13(a2) : &stru_1F0B1AFB8;
  v9 = FigAlternateFilterApplyInfoCreate(v12, a5, Count, v14, 0);
  *a6 = v9;
  if (v9)
  {
LABEL_8:
    CFArrayAppendValue(theArray, v9);
    v15 = 0;
  }

  else
  {
    ftreefilter_appendAndReleaseLeafInfo_cold_1(&v17);
    v15 = v17;
  }

  if (*a6)
  {
    CFRelease(*a6);
    *a6 = 0;
  }

  return v15;
}

uint64_t ftreefilter_appendEmptyLeafInfosForLeafFilterAndItsChildren(const void *a1, const void *a2, __CFArray *a3)
{
  v6 = ftreefilter_countLeafFilterAndItsChildren(a2);
  v7 = CFGetAllocator(a1);
  v8 = CFArrayCreate(v7, 0, 0, MEMORY[0x1E695E9C0]);
  v13 = 0;
  if (v8)
  {
    v9 = v8;
    if (v6 < 1)
    {
LABEL_5:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        v10 = ftreefilter_appendAndReleaseLeafInfo(a1, a2, a3, v9, v9, &v13);
        if (v10)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_5;
        }
      }

      v11 = v10;
    }

    CFRelease(v9);
  }

  else
  {
    ftreefilter_appendEmptyLeafInfosForLeafFilterAndItsChildren_cold_1(&v14);
    return v14;
  }

  return v11;
}

void fafinfo_populateAlternatesBitVectorFn(uint64_t a1, const __CFBitVector *a2)
{
  ZeroIndexedAlternateIndex = FigAlternateGetZeroIndexedAlternateIndex(a1);
  v5 = 8 * (ZeroIndexedAlternateIndex / 8) - (ZeroIndexedAlternateIndex - (v4 & 0xFFFFFFF8)) + 7;
  Count = CFBitVectorGetCount(a2);
  v7 = v5;
  if (v5 <= Count)
  {
    v7 = CFBitVectorGetCount(a2);
  }

  v8 = v7 - 1;
  if (v7 < 1)
  {
    v8 = v7 + 6;
  }

  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 > CFBitVectorGetCount(a2))
  {
    CFBitVectorSetCount(a2, v9);
  }

  CFBitVectorSetBitAtIndex(a2, v5, 1u);
}

uint64_t FigCMCDHeaderVendorSetAllowedKeys(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = a2 | 0x20000;
  if (!a2)
  {
    v4 = 0;
  }

  *(DerivedStorage + 8) = v4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorGetAllowedKeys(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetLoadedTimeRange(uint64_t a1, int a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    while (*v6 != a2)
    {
      v6 = *(v6 + 7);
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040BABC55ACuLL);
    if (!v6)
    {
      FigCMCDHeaderVendorSetLoadedTimeRange_cold_1(&v11);
      v7 = v11;
      goto LABEL_7;
    }

    *v6 = a2;
    *(v6 + 7) = 0;
    **(DerivedStorage + 104) = v6;
    *(DerivedStorage + 104) = v6 + 56;
  }

  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  *(v6 + 36) = a3[2];
  *(v6 + 20) = v9;
  *(v6 + 4) = v8;
LABEL_7:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigCMCDHeaderVendorSetBufferDidStarve(uint64_t a1, unsigned int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 >= 5)
  {
    FigCMCDHeaderVendorSetBufferDidStarve_cold_2(&v9);
    return v9;
  }

  v4 = DerivedStorage;
  FigSimpleMutexLock();
  v5 = *(v4 + 112);
  if (v5)
  {
    while (*v5 != a2)
    {
      v5 = v5[1];
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040093ED670uLL);
    if (!v5)
    {
      FigCMCDHeaderVendorSetBufferDidStarve_cold_1(&v8);
      v6 = v8;
      goto LABEL_8;
    }

    *v5 = a2;
    v5[1] = 0;
    **(v4 + 120) = v5;
    *(v4 + 120) = v5 + 1;
  }

  v6 = 0;
  *(v5 + 4) = 1;
LABEL_8:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigCMCDHeaderVendorSetTimebase(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetTimelineConverter(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetNetworkHistory(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetStreamType(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 72) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetStreamingFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 80) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorSetIsLikelyToKeepUp(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 88) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCMCDHeaderVendorCreate(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  MEMORY[0x19A8D3660](&FigCMCDHeaderVendorGetClassID_sRegisterFigCMCDHeaderVendorBaseTypeOnce, RegisterFigCMCDHeaderVendorBaseType, a3);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = FigSimpleMutexCreate();
  DerivedStorage[12] = 0;
  *DerivedStorage = v10;
  DerivedStorage[13] = DerivedStorage + 12;
  DerivedStorage[14] = 0;
  DerivedStorage[15] = DerivedStorage + 14;
  if (a2)
  {
    v11 = CFRetain(a2);
    DerivedStorage[4] = v11;
    v12 = (DerivedStorage + 4);
    if (v11)
    {
      v13 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    DerivedStorage[4] = 0;
    v12 = (DerivedStorage + 4);
  }

  v14 = CFGetAllocator(0);
  v15 = CFUUIDCreate(v14);
  if (!v15)
  {
    FigCMCDHeaderVendorCreate_cold_2(&v22);
    return v22;
  }

  v13 = v15;
  v16 = CFGetAllocator(0);
  v17 = CFUUIDCreateString(v16, v13);
  *v12 = v17;
  if (!v17)
  {
    FigCMCDHeaderVendorCreate_cold_1(&v22);
    v19 = v22;
    goto LABEL_9;
  }

LABEL_8:
  v18 = FigRCLGetLongNumberWithDefault(a4, @"allowedCMCDKeys", -1);
  v19 = 0;
  v20 = 0;
  DerivedStorage[2] = v18;
  *a5 = 0;
  if (v13)
  {
LABEL_9:
    CFRelease(v13);
    return v19;
  }

  return v20;
}

__n128 cmcd_getBufferLengthForObjectType@<Q0>(int a2@<W1>, CMTime *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CMTimebaseGetTime(&v17.start, v8);
    v18 = *&v17.start.value;
    epoch = v17.start.epoch;
    FPSTimelineConverterL3TimeToL2(&v18, &time);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    v10 = time.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    v10 = *(MEMORY[0x1E6960C70] + 16);
  }

  v11 = *(DerivedStorage + 96);
  if (v11)
  {
    while (*v11 != a2)
    {
      v11 = *(v11 + 56);
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    if ((flags & 1) != 0 && (v13 = *(v11 + 4), v14 = *(v11 + 36), *&v17.start.epoch = *(v11 + 20), *&v17.duration.timescale = v14, *&v17.start.value = v13, time.value = value, time.timescale = timescale, time.flags = flags, time.epoch = v10, CMTimeRangeContainsTime(&v17, &time)))
    {
      v15 = *(v11 + 4);
      v16 = *(v11 + 36);
      *&v17.start.epoch = *(v11 + 20);
      *&v17.duration.timescale = v16;
      *&v17.start.value = v15;
      CMTimeRangeGetEnd(&time, &v17);
      v17.start.value = value;
      v17.start.timescale = timescale;
      v17.start.flags = flags;
      v17.start.epoch = v10;
      CMTimeSubtract(a3, &time, &v17.start);
    }

    else
    {
      result = *(v11 + 28);
      a3->epoch = *(v11 + 44);
      *&a3->value = result;
    }
  }

  else
  {
LABEL_7:
    result = *v6;
    *&a3->value = *v6;
    a3->epoch = v7;
  }

  return result;
}

uint64_t cmcd_appendHeaderKeyAndTimeValue(const void *a1, CFMutableStringRef *a2, uint64_t a3, CMTime *a4, int a5)
{
  v16 = *a4;
  v10 = (CMTimeGetSeconds(&v16) * 1000.0);
  v16 = *a4;
  v11 = (CMTimeGetSeconds(&v16) * 1000.0);
  if (a5)
  {
    v12 = 100;
  }

  else
  {
    v12 = 1;
  }

  v13 = v10 + v11 / v12 * v12 - v11;
  v16 = *a4;
  if ((CMTimeGetSeconds(&v16) * 1000.0) % v12 <= v12 >> 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  return cmcd_appendHeaderKeyAndIntegerValue(a1, a2, a3, v13 + v14);
}

uint64_t cmcd_ensureOrSuffixHeadersString(const void *a1, CFMutableStringRef *a2)
{
  if (*a2)
  {
    if (CFStringGetLength(*a2) >= 1)
    {
      CFStringAppend(*a2, @",");
    }
  }

  else
  {
    v3 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v3, 0);
    *a2 = Mutable;
    if (!Mutable)
    {
      cmcd_ensureOrSuffixHeadersString_cold_1(&v6);
      return v6;
    }
  }

  return 0;
}

uint64_t cmcd_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage + 12;
  v2 = DerivedStorage[12];
  if (v2)
  {
    do
    {
      v4 = v2[7];
      *v3 = v4;
      if (!v4)
      {
        DerivedStorage[13] = v3;
      }

      free(v2);
      v2 = *v3;
    }

    while (*v3);
  }

  v6 = DerivedStorage + 14;
  v5 = DerivedStorage[14];
  if (v5)
  {
    do
    {
      v7 = v5[1];
      *v6 = v7;
      if (!v7)
      {
        DerivedStorage[15] = v6;
      }

      free(v5);
      v5 = *v6;
    }

    while (*v6);
  }

  v8 = DerivedStorage[7];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[8];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[5];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[4];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = DerivedStorage[3];
  if (v13)
  {
    CFRelease(v13);
  }

  return FigSimpleMutexDestroy();
}

uint64_t RegisterFigCMCDHeaderVendorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

double OUTLINED_FUNCTION_3_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a23 = 0;
  a24 = 0;
  a25 = 0;

  *&result = cmcd_getBufferLengthForObjectType(v25, &a23).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return cmcd_appendHeaderKeyAndTimeValue(a18, va, a3, (v21 - 208), 1);
}

uint64_t FigGetClosestRandomAccessPointInAudioSBuf(CMSampleBufferRef sbuf, CMTime *a2, int a3, CMTime *a4, CMItemIndex *a5)
{
  if (!a4)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_6();
    return 0;
  }

  if (!sbuf)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_5();
    return 0;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  if (!FormatDescription)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_4();
    return 0;
  }

  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1936684398)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_1();
    return 0;
  }

  if (!FigAudioFormatDescriptionEmploysDependentPackets())
  {
    *&v30.value = *&a2->value;
    v30.epoch = a2->epoch;
    NumSamples = CMSampleBufferGetNumSamples(sbuf);
    if (NumSamples < 1)
    {
      FigGetClosestRandomAccessPointInAudioSBuf_cold_3();
      return 0;
    }

    v19 = NumSamples;
    v20 = 0;
    while (1)
    {
      memset(&timingInfoOut, 0, sizeof(timingInfoOut));
      if (CMSampleBufferGetSampleTimingInfo(sbuf, v20, &timingInfoOut))
      {
        return 0;
      }

      time1 = timingInfoOut.presentationTimeStamp;
      time2 = v30;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        time2 = timingInfoOut.presentationTimeStamp;
        rhs = timingInfoOut.duration;
        CMTimeAdd(&time1, &time2, &rhs);
        time2 = v30;
        if (CMTimeCompare(&time2, &time1) < 1)
        {
          break;
        }
      }

      if (v19 == ++v20)
      {
        return 0;
      }
    }

    time1 = timingInfoOut.presentationTimeStamp;
    v23 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], sbuf, 1u);
    LOWORD(timingInfoOut.duration.value) = 0;
    Int16IfPresent = FigCFDictionaryGetInt16IfPresent();
    v25 = -SLOWORD(timingInfoOut.duration.value);
    if (v23)
    {
      CFRelease(v23);
    }

    if (!Int16IfPresent)
    {
      v26 = CMSampleBufferGetFormatDescription(sbuf);
      MediaSubType = CMFormatDescriptionGetMediaSubType(v26);
      v25 = 1;
      if (MediaSubType > 1667326831)
      {
        if (MediaSubType > 1902207847)
        {
          if (MediaSubType > 2053202791)
          {
            if (MediaSubType == 2053202792)
            {
              goto LABEL_38;
            }

            v28 = 2053202800;
          }

          else
          {
            if (MediaSubType == 1902207848)
            {
              goto LABEL_38;
            }

            v28 = 1902207856;
          }
        }

        else
        {
          if (MediaSubType > 1885430631)
          {
            if (MediaSubType == 1885430632)
            {
              goto LABEL_38;
            }

            v29 = 25456;
          }

          else
          {
            if (MediaSubType == 1667326832)
            {
              goto LABEL_38;
            }

            v29 = 24931;
          }

          v28 = v29 | 0x70610000;
        }
      }

      else if (MediaSubType <= 1633772388)
      {
        if (MediaSubType == 1633771875)
        {
          goto LABEL_38;
        }

        v28 = 1633772320;
      }

      else
      {
        if ((MediaSubType - 1633772389) <= 0xB && ((1 << (MediaSubType - 101)) & 0x80F) != 0)
        {
          goto LABEL_38;
        }

        v28 = 1667326824;
      }

      if (MediaSubType != v28)
      {
        v25 = MediaSubType == 778924083;
      }
    }

LABEL_38:
    *a4 = time1;
    a4[1].value = v25;
    if (a5)
    {
      *a5 = v20;
    }

    return 1;
  }

  rhs = *a2;
  v11 = CMSampleBufferGetNumSamples(sbuf);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (!SampleAttachmentsArray)
  {
    FigGetClosestRandomAccessPointInAudioSBuf_cold_2();
    return 0;
  }

  v13 = SampleAttachmentsArray;
  if (a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 - 1;
  }

  Count = CFArrayGetCount(SampleAttachmentsArray);
  result = 0;
  if ((v14 & 0x8000000000000000) == 0 && v14 < v11)
  {
    if (a3)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

    do
    {
      memset(&timingInfoOut, 0, sizeof(timingInfoOut));
      if (CMSampleBufferGetSampleTimingInfo(sbuf, v14, &timingInfoOut))
      {
        return 0;
      }

      if (a3)
      {
        time1 = timingInfoOut.presentationTimeStamp;
        time2 = rhs;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        time1 = timingInfoOut.presentationTimeStamp;
        time2 = rhs;
        if (CMTimeCompare(&time1, &time2) > 0)
        {
          goto LABEL_23;
        }
      }

      if (v14 < Count)
      {
        CFArrayGetValueAtIndex(v13, v14);
      }

      LOWORD(time2.value) = 0;
      if (FigCFDictionaryGetInt16IfPresent())
      {
        time1 = timingInfoOut.presentationTimeStamp;
        epoch = timingInfoOut.presentationTimeStamp.epoch;
        value_low = SLOWORD(time2.value);
        *&a4->value = *&timingInfoOut.presentationTimeStamp.value;
        a4->epoch = epoch;
        a4[1].value = value_low;
        if (a5)
        {
          *a5 = v14;
        }

        return 1;
      }

LABEL_23:
      result = 0;
      v14 += v17;
    }

    while (v14 >= 0 && v14 < v11);
  }

  return result;
}

double FigDecodeTimeForAudioRandomAccessInBufferQueue@<D0>(uint64_t a3@<X8>)
{
  FigBufferQueueCallForEachBufferLastToFirst();
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0;
  return result;
}

uint64_t FigFindAudioRandomAccessPointInBufferAtOrBeforeTime(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  v11 = *a2;
  memset(&v10, 0, sizeof(v10));
  CMSampleBufferGetPresentationTimeStamp(&v10, a1);
  time1 = v10;
  time2 = v11;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    return 0;
  }

  while (1)
  {
    time1 = v11;
    result = FigGetClosestRandomAccessPointInAudioSBuf(a1, &time1, 0, a2 + 1, 0);
    if (!result)
    {
      break;
    }

    FormatDescription = CMSampleBufferGetFormatDescription(a1);
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
    memset(&time1, 0, sizeof(time1));
    CMTimeMake(&time2, a2[2].value * StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
    v7 = a2[1];
    CMTimeAdd(&time1, &v7, &time2);
    time2 = time1;
    v7 = v11;
    if (CMTimeCompare(&time2, &v7) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    CMTimeMake(&time2, StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
    v7 = a2[1];
    CMTimeSubtract(&v11, &v7, &time2);
  }

  return result;
}

BOOL fsbqs_ValidateSampleBufferForSeam(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  NumSamples = CMSampleBufferGetNumSamples(a1);
  if (CMGetAttachment(a1, *(a2 + 16), 0))
  {
    if (*a2)
    {
      v10 = 3;
      goto LABEL_30;
    }

    *a2 = 1;
  }

  if (NumSamples >= 1)
  {
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetDuration(&v21, a1);
    v5 = *MEMORY[0x1E6960CC0];
    *&v20.value = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    v20.epoch = v6;
    v19 = **&MEMORY[0x1E6960C70];
    if (*a2 == 1)
    {
      v13 = v5;
      CountOfSequentialSamplesWithSeamIdentifier = FigGetCountOfSequentialSamplesWithSeamIdentifier(a1, *(a2 + 8), 1, &v20);
      lhs = v21;
      rhs = v20;
      CMTimeSubtract(&time1, &lhs, &rhs);
      v21 = time1;
      if (faq_getFigTimeAttachment(a1, *MEMORY[0x1E6960560], &v19))
      {
        time1 = v19;
        lhs = v20;
        if (CMTimeCompare(&time1, &lhs) >= 1)
        {
          v10 = 7;
          goto LABEL_30;
        }

        lhs = *(a2 + 64);
        rhs = v19;
        CMTimeAdd(&time1, &lhs, &rhs);
        *(a2 + 64) = time1;
      }

      time1 = v21;
      *&lhs.value = v13;
      lhs.epoch = v6;
      if (CMTimeCompare(&time1, &lhs) >= 1 && faq_getFigTimeAttachment(a1, *MEMORY[0x1E6960558], &v19) && (time1 = v19, lhs = v21, CMTimeCompare(&time1, &lhs) >= 1))
      {
        v10 = 8;
      }

      else
      {
        *(a2 + 32) += CountOfSequentialSamplesWithSeamIdentifier;
        if (CountOfSequentialSamplesWithSeamIdentifier >= NumSamples)
        {
          return *a2 == 2;
        }

        memset(&time1, 0, sizeof(time1));
        CMTimeMake(&time1, 1, *(a2 + 48));
        memset(&lhs, 0, sizeof(lhs));
        if (*(a2 + 32) == *(a2 + 24))
        {
          time2 = *(a2 + 40);
          v14 = *(a2 + 64);
          CMTimeSubtract(&rhs, &time2, &v14);
          CMTimeAbsoluteValue(&lhs, &rhs);
          rhs = lhs;
          time2 = time1;
          if (CMTimeCompare(&rhs, &time2) < 1)
          {
            *(a2 + 88) = 0;
LABEL_28:
            *a2 = 2;
            return *a2 == 2;
          }

          v10 = 10;
        }

        else
        {
          v10 = 9;
        }
      }

LABEL_30:
      *(a2 + 88) = v10;
      goto LABEL_28;
    }

    if (*a2)
    {
      return *a2 == 2;
    }

    v12 = v5;
    v8 = FigGetCountOfSequentialSamplesWithSeamIdentifier(a1, *(a2 + 8), 0, &v20);
    lhs = v21;
    rhs = v20;
    CMTimeSubtract(&time1, &lhs, &rhs);
    v21 = time1;
    if (v8 <= 0)
    {
      *(a2 + 88) = 2;
      goto LABEL_28;
    }

    v9 = *(a2 + 24);
    if (v9 >= 1 && v8 != NumSamples)
    {
      v10 = 4;
      goto LABEL_30;
    }

    *(a2 + 24) = v9 + v8;
    lhs = *(a2 + 40);
    rhs = v20;
    CMTimeAdd(&time1, &lhs, &rhs);
    *(a2 + 40) = time1;
    if (faq_getFigTimeAttachment(a1, *MEMORY[0x1E6960558], &v19))
    {
      time1 = v19;
      lhs = v20;
      if (CMTimeCompare(&time1, &lhs) >= 1)
      {
        v10 = 6;
        goto LABEL_30;
      }

      lhs = *(a2 + 40);
      rhs = v19;
      CMTimeSubtract(&time1, &lhs, &rhs);
      *(a2 + 40) = time1;
    }

    time1 = v21;
    *&lhs.value = v12;
    lhs.epoch = v6;
    if (CMTimeCompare(&time1, &lhs) >= 1)
    {
      if (faq_getFigTimeAttachment(a1, *MEMORY[0x1E6960560], &v19))
      {
        time1 = v19;
        lhs = v21;
        if (CMTimeCompare(&time1, &lhs) >= 1)
        {
          v10 = 5;
          goto LABEL_30;
        }
      }
    }
  }

  return *a2 == 2;
}

uint64_t FigBandwidthPeriodicReporterSetReportingAgent(const void *a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v4)
  {
    v5 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      v7 = CFRetain(a1);
    }

    else
    {
      v7 = 0;
    }

    *v5 = v7;
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    v5[1] = v8;
    dispatch_async_f(*(DerivedStorage + 72), v5, bpr_setReportingAgentDispatch);
    return 0;
  }

  else
  {
    FigBandwidthPeriodicReporterSetReportingAgent_cold_1(&v10);
    return v10;
  }
}

void bpr_setReportingAgentDispatch(CFTypeRef *a1)
{
  v2 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  *DerivedStorage = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t RegisterFigBandwidthPeriodicReportingBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t bpr_invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  dispatch_async_f(*(DerivedStorage + 72), a1, bpr_invalidateDispatch);
  return 0;
}

void bpr_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bpr_invalidateOnQueue(a1);
  v3 = *(DerivedStorage + 72);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 72) = 0;
  }
}

void bpr_invalidateDispatch(const void *a1)
{
  bpr_invalidateOnQueue(a1);
  if (a1)
  {

    CFRelease(a1);
  }
}

void bpr_logBandwidth(uint64_t a1)
{
  v8[24] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8[0] = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  bpr_obtainObservedBandwidthForPreviousInterval(a1, UpTimeNanoseconds - *(DerivedStorage + 104), v8, &v7);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = dword_1EAF16F80 == 0;
  }

  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 104) = UpTimeNanoseconds;
}

void bpr_timerCallback(uint64_t a1)
{
  v54 = 0;
  v55 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v10 = v2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 64))
    {
      bpr_timerCallback_cold_1(DerivedStorage, v12, v13, v14, v15, v16, v17, v18, v54, v55, SHIDWORD(v55), cf[0]);
    }

    else
    {
      v19 = DerivedStorage;
      bpr_logBandwidth(v10);
      v20 = UpTimeNanoseconds - *(v19 + 96);
      if ((v20 + 1000000000) >= *(v19 + 8))
      {
        if (FigCFDictionaryGetCount() >= 1)
        {
          bpr_obtainObservedBandwidthForPreviousInterval(v10, v20, &v55, &v54);
          if (!v34)
          {
            v36 = v54;
            v35 = v55;
            v37 = CMBaseObjectGetDerivedStorage();
            if (*v37)
            {
              if (!bpr_timerCallback_cold_2(*v37, v37, &v57, cf))
              {
                v38 = v57;
                v39 = cf[0];
                cf[0] = v10;
                cf[1] = v35;
                cf[2] = v36;
                CFDictionaryApplyFunction(*v39, bpr_reportPredictionApplier, cf);
                v40 = *v37;
                if (*v37)
                {
                  v41 = v37[1];
                  v42 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v42)
                  {
                    v42(v40, v38, 0x1F0B64E38, v41 / 0x3B9ACA00, 0);
                  }
                }

                v43 = *v37;
                if (*v37)
                {
                  v44 = v37[2];
                  v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v45)
                  {
                    v45(v43, v38, 0x1F0B64E58, v44 / 0xF4240, 0);
                  }
                }

                v46 = *v37;
                if (*v37)
                {
                  v47 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v47)
                  {
                    v47(v46, v38, 0x1F0B64E78, v35, 0);
                  }

                  v48 = *v37;
                  if (*v37)
                  {
                    v49 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                    if (v49)
                    {
                      v49(v48, v38, 0x1F0B64E98, v36 / 0xF4240, 0);
                    }
                  }
                }

                v50 = CMBaseObjectGetDerivedStorage();
                v51 = (v50 + 14);
                FigNetworkWirelessReportingReportWiFiStats(*v50, v50[14]);
                if (*v51)
                {
                  CFRelease(*v51);
                  *v51 = 0;
                }

                FigNetworkWirelessReportingInterfaceCopyWifiStats(v51);
                v52 = *v37;
                if (v52)
                {
                  v53 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (v53)
                  {
                    v53(v52, v38, 113, 0, 0);
                  }
                }
              }
            }
          }
        }

        v21 = CMBaseObjectGetDerivedStorage();
        cf[0] = 0;
        FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats(cf);
        if (cf[0])
        {
          FigNetworkWirelessReportingReportWTEPredictions(*v21, cf[0]);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        v22 = CMBaseObjectGetDerivedStorage();
        v23 = (v22 + 40);
        if (*(v22 + 40))
        {
          v24 = v22;
          v25 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v25)
          {
            v26 = v25;
            v27 = CFGetAllocator(v10);
            Mutable = CFDictionaryCreateMutable(v27, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              v29 = Mutable;
              if ((*v23)(v26, Mutable))
              {
                bpr_timerCallback_cold_3();
                v32 = 0;
              }

              else
              {
                v30 = CFGetAllocator(v10);
                Copy = CFDictionaryCreateCopy(v30, v29);
                v32 = Copy;
                if (Copy)
                {
                  v33 = *(v24 + 88);
                  *(v24 + 88) = Copy;
                  CFRetain(Copy);
                  if (v33)
                  {
                    CFRelease(v33);
                  }

                  *(v24 + 96) = FigGetUpTimeNanoseconds();
                }

                else
                {
                  bpr_timerCallback_cold_4();
                }
              }

              CFRelease(v26);
              CFRelease(v29);
              if (v32)
              {
                CFRelease(v32);
              }
            }

            else
            {
              bpr_timerCallback_cold_5(v26);
            }
          }

          else
          {
            bpr_timerCallback_cold_6();
          }
        }

        else
        {
          bpr_timerCallback_cold_7();
        }
      }
    }

    CFRelease(v10);
  }

  else
  {
    bpr_timerCallback_cold_8(0, v3, v4, v5, v6, v7, v8, v9, v54, v55, SHIDWORD(v55), cf[0]);
  }
}

void bpr_timerCancellationCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyRequestParams(void *a1, CFTypeRef *a2)
{
  v14 = 0;
  v15 = 0;
  cf = 0;
  v13 = 0;
  if (a2)
  {
    v4 = FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifier(a1, &cf);
    if (v4 || (xpc_dictionary_get_int64(a1, ".ks_KeySystem"), xpc_dictionary_get_int64(a1, ".ks_EncryptionMethod"), v5 = xpc_dictionary_get_BOOL(a1, ".ks_SupportsOfflineKey"), xpc_dictionary_get_BOOL(a1, ".ks_IsPreload"), v4 = FigXPCMessageCopyCFString(), v4) || (v4 = FigXPCMessageCopyCFArray(), v4))
    {
      v10 = v4;
    }

    else
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v8 = Mutable;
        FigCFDictionarySetBoolean();
        v9 = FigGetAllocatorForMedia();
        v10 = FigContentKeyRequestParamsCreate(v9, cf, 0, 0, 0, 0, 0, 0, 0, v5, v8, &v13);
        if (!v10)
        {
          *a2 = v13;
          v13 = 0;
        }

        CFRelease(v8);
      }

      else
      {
        FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyRequestParams_cold_1(&v16);
        v10 = v16;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyRequestParams_cold_2(&v16);
    v10 = v16;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifiers(void *a1, __CFArray **a2)
{
  value = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    count = xpc_array_get_count(a1);
    if (count < 1)
    {
LABEL_8:
      v12 = 0;
      *a2 = v6;
    }

    else
    {
      v8 = count;
      v9 = 0;
      while (1)
      {
        v10 = xpc_array_get_value(a1, v9);
        v11 = FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifier(v10, &value);
        if (v11)
        {
          break;
        }

        CFArrayAppendValue(v6, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        if (v8 == ++v9)
        {
          goto LABEL_8;
        }
      }

      v12 = v11;
      if (value)
      {
        CFRelease(value);
      }

      CFRelease(v6);
    }
  }

  else
  {
    FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifiers_cold_1(&v15);
    return v15;
  }

  return v12;
}

uint64_t FigNeroidStartServer()
{
  v2 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return FigXPCServerStart();
}

uint64_t neroidServer_handleRemoteMessage(uint64_t a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (!OpCode)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    cf = 0;
    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (!OpCode)
    {
      neroidServer_handleRemoteMessage_cold_1(&v6);
      OpCode = v6;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (!OpCode)
    {
      return 4294950606;
    }
  }

  return OpCode;
}

uint64_t FigNeroidStart(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

__CFString *bapspPassthrough_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayAudioChainSubPipet %p>", a1);
  return Mutable;
}

uint64_t bapspPassthrough_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SourceSampleBufferConsumer"))
  {
    v8 = *(DerivedStorage + 40);
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"IsStarted"))
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!*(DerivedStorage + 32))
    {
      v9 = MEMORY[0x1E695E4C0];
    }
  }

  else if (CFEqual(a2, @"SubPipeType"))
  {
    v9 = kFigBufferedAirPlayAudioChainSubPipeSubPipeType_Passthrough;
  }

  else if (CFEqual(a2, @"SpatializationEnabled"))
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  else
  {
    if (CFEqual(a2, @"CurrentFormatDescription"))
    {
      v8 = *(DerivedStorage + 80);
      if (!v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (!CFEqual(a2, @"IsAudioChainAssembled"))
    {
      if (!CFEqual(a2, @"RemainingInputBufferDuration"))
      {
        return 4294954512;
      }

      v13 = *MEMORY[0x1E695E480];
      v14 = **&MEMORY[0x1E6960CC0];
      v8 = CMTimeCopyAsDictionary(&v14, v13);
      goto LABEL_14;
    }

    v12 = bapspPassthrough_audioChainAssembled(a1);
    v9 = MEMORY[0x1E695E4D0];
    if (!v12)
    {
      v9 = MEMORY[0x1E695E4C0];
    }
  }

  v8 = *v9;
  if (*v9)
  {
LABEL_13:
    v8 = CFRetain(v8);
  }

LABEL_14:
  v10 = 0;
  *a4 = v8;
  return v10;
}

void bapspPassthrough_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"LoudnessInfo", a2))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFDictionaryGetTypeID())
      {
        v8 = *(DerivedStorage + 64);
        if (v8)
        {
          CFRelease(v8);
          *(DerivedStorage + 64) = 0;
        }

        *(DerivedStorage + 64) = CFRetain(a3);
        v9 = CMBaseObjectGetDerivedStorage();
        target = 0;
        if (*(v9 + 64))
        {
          v10 = v9;
          if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target))
          {
            CMSetAttachment(target, *MEMORY[0x1E6962DF0], *(v10 + 64), 0);
            v11 = *(v10 + 56);
            v12 = target;
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v13)
            {
              v13(v11, v12);
            }
          }

          if (target)
          {
            CFRelease(target);
          }
        }

        return;
      }
    }

    v14 = qword_1EAF16F98;
    v15 = v3;
    v16 = 4294954516;
    v17 = 551;
  }

  else
  {
    if (CFEqual(@"AudioProcessingTap", a2) || CFEqual(@"ThreadPriority", a2) || CFEqual(@"TimelineMilestone", a2) || CFEqual(@"AudioProcessingUnits", a2) || CFEqual(@"AudioCurves", a2) || CFEqual(@"SecondaryAudioCurves", a2) || CFEqual(@"ExpectScaledEdits", a2) || CFEqual(@"ApplyTrimAtEndAfterPTS", a2) || CFEqual(@"TimePitchAlgorithm", a2))
    {
      return;
    }

    v14 = qword_1EAF16F98;
    v15 = v3;
    v16 = 4294954512;
    v17 = 594;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v16, "<<<< FigBufferedAirPlayAudioChainSubPipePassthrough >>>>", v17, v15);
}

uint64_t bapspPassthrough_breakAudioChain(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16FA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(DerivedStorage + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    return v4(v3, @"DownstreamConsumer", 0);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t bapspPassthrough_audioChainAssembled(uint64_t a1)
{
  cf = 0;
  v1 = *(CMBaseObjectGetDerivedStorage() + 40);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  if (v2(v1, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf))
  {
    v3 = 1;
  }

  else
  {
    v3 = cf == 0;
  }

  v4 = !v3;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t bapspPassthrough_startAudioChain(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (dword_1EAF16FA0)
  {
    HIBYTE(v11) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(DerivedStorage + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(v3, @"DownstreamConsumer", *MEMORY[0x1E695E480], cf);
  v6 = cf[0];
  if (v5)
  {
    goto LABEL_11;
  }

  if (!cf[0])
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
    v5 = v8;
    v6 = cf[0];
LABEL_11:
    if (!v6)
    {
      return v5;
    }

    goto LABEL_7;
  }

  v5 = 0;
  *(DerivedStorage + 32) = 1;
LABEL_7:
  CFRelease(v6);
  return v5;
}

uint64_t bapspPassthrough_assembleAudioChain(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  v2 = *(DerivedStorage + 48);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, @"DownstreamConsumer", v2);
}

uint64_t bapspPassthrough_prepareToFinish(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v4 = *(DerivedStorage + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v4, a2);
}

void bapspPassthrough_postNotification(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v5 = *(DerivedStorage + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __bapspPassthrough_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_35;
  block[4] = a2;
  block[5] = a1;
  block[6] = 0;
  dispatch_async(v5, block);
}

void __bapspPassthrough_postNotification_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t OUTLINED_FUNCTION_0_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_1_62()
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t MoviePSSHData_GetPlayReadyProtectionSystemData(__CFString *a1, CFIndex a2, void *a3, _DWORD *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = 0;
  bzero(__src, 0x800uLL);
  v32 = 0;
  theString = 0;
  if (!a1)
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_7(&v35);
LABEL_36:
    v25 = v35;
    goto LABEL_23;
  }

  if (EC_GetEncryptionScheme(a1, &v34))
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_1(&v35);
    goto LABEL_33;
  }

  if (v34 == 3)
  {
    goto LABEL_6;
  }

  if (!v34)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", usedBufLen, v29, v30);
    v25 = v27;
    a1 = 0;
    goto LABEL_23;
  }

  if (EC_HasLegacyConfigInfo(a1))
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  if (EC_HasLegacyConfigInfo(a1))
  {
    LegacyConfigKeyIdentifier = EC_GetLegacyConfigKeyIdentifier(a1);
    if (LegacyConfigKeyIdentifier)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  LegacyConfigKeyIdentifier = EC_GetPlayReadyKeyIdentifierForRange(a1, a2);
  if (!LegacyConfigKeyIdentifier)
  {
LABEL_29:
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_6(&v35);
LABEL_33:
    a1 = 0;
    goto LABEL_36;
  }

LABEL_9:
  BytePtr = CFDataGetBytePtr(LegacyConfigKeyIdentifier);
  a1 = BytePtr;
  if (!BytePtr)
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_5(&v35);
    goto LABEL_36;
  }

  __src[1] = 65537;
  if ((v8 & 1) == 0)
  {
    strcpy(v41, "<WRMHEADER xmlns=http://schemas.microsoft.com/DRM/2007/03/PlayReadyHeader version=4.0.0.0><DATA><PROTECTINFO><KEYLEN>16</KEYLEN><ALGID>AESCTR</ALGID></PROTECTINFO><KID>");
    v35 = bswap32(*BytePtr);
    v36 = bswap32(*(BytePtr + 2)) >> 16;
    v37 = bswap32(*(BytePtr + 3)) >> 16;
    info = *(BytePtr + 1);
    v12 = *MEMORY[0x1E695E480];
    if (!FigCreateBase64EncodedStringFromBytes())
    {
      v31 = 0;
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      snprintf(&v41[172], 0x74AuLL, "%s", CStringPtrAndBufferToFree);
      free(0);
      Length = CFStringGetLength(theString);
      snprintf(__src + (Length + 182), (1866 - Length), "</KID>");
      snprintf(__src + (Length + 188), (1860 - Length), "</DATA>");
      snprintf(__src + (Length + 195), (1853 - Length), "</WRMHEADER>");
      v21 = Length + 207;
      goto LABEL_18;
    }

    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_2(&v31);
LABEL_40:
    a1 = 0;
    goto LABEL_41;
  }

  v11 = safe_snprintf(v41, 0x7F6uLL, "<WRMHEADER xmlns=http://schemas.microsoft.com/DRM/2007/03/PlayReadyHeader version=4.3.0.0>");
  snprintf(__src + (v11 + 10), (2038 - v11), "<DATA>");
  v35 = bswap32(a1->isa);
  v36 = bswap32(WORD2(a1->isa)) >> 16;
  v37 = bswap32(HIWORD(a1->isa)) >> 16;
  info = a1->info;
  v12 = *MEMORY[0x1E695E480];
  if (FigCreateBase64EncodedStringFromBytes())
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_3(&v31);
    goto LABEL_40;
  }

  v31 = 0;
  v13 = FigCFStringGetCStringPtrAndBufferToFree();
  v14 = safe_snprintf(__src + (v11 + 16), (2032 - v11), "<PROTECTINFO>") + v11 + 16;
  v15 = v14 + safe_snprintf(__src + v14, (2048 - v14), "<KIDS>");
  if (v34 == 3)
  {
    v16 = "AESCTR";
  }

  else
  {
    v16 = "AESCBC";
  }

  v17 = safe_snprintf(__src + v15, (2048 - v15), "<KID ALGID=%s VALUE=%s>", v16, v13) + v15;
  free(v31);
  v18 = safe_snprintf(__src + v17, (2048 - v17), "</KID>") + v17;
  v19 = v18 + safe_snprintf(__src + v18, (2048 - v18), "</KIDS>");
  v20 = v19 + safe_snprintf(__src + v19, (2048 - v19), "</PROTECTINFO>");
  snprintf(__src + v20, (2048 - v20), "</DATA>");
  snprintf(__src + (v20 + 7), (2041 - v20), "</WRMHEADER>");
  v21 = v20 + 19;
LABEL_18:
  a1 = CFStringCreateWithCString(v12, v41, 0x8000100u);
  v43.length = CFStringGetLength(a1);
  v43.location = 0;
  CFStringGetBytes(a1, v43, 0x100u, 0x3Fu, 0, v41, (2 * v21 - 19), &v32);
  if (HIDWORD(v32))
  {
    MoviePSSHData_GetPlayReadyProtectionSystemData_cold_4(&v31);
LABEL_41:
    v25 = v31;
    goto LABEL_23;
  }

  v24 = v32 + 10;
  __src[0] = v32 + 10;
  v40 = v32;
  if (a3)
  {
    memcpy(a3, __src, (v32 + 10));
  }

  v25 = 0;
  if (a4)
  {
    *a4 = v24;
  }

LABEL_23:
  if (theString)
  {
    CFRelease(theString);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  return v25;
}

size_t safe_snprintf(char *a1, size_t a2, const char *a3, ...)
{
  va_start(va, a3);
  LODWORD(result) = vsnprintf(a1, a2, a3, va);
  if (a2 - 1 >= result)
  {
    return result;
  }

  else
  {
    return a2 - 1;
  }
}

void *OUTLINED_FUNCTION_3_46()
{

  return malloc_type_malloc(0xAuLL, 0x100004077774924uLL);
}

void FigPlayerCentralCreateWithOptions(const __CFAllocator *a1, CFMutableDictionaryRef a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  theString = 0;
  cf = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a4)
  {
    FigPlayerGetClassID();
    CMDerivedObjectCreate();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, value, v9);
  }

  else
  {
    v6 = qword_1EAF16FB8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954516, "<<<< CENTRAL >>>>", 4279, v4);
  }
}

uint64_t __FigPlayerCentralCreateWithOptions_block_invoke()
{
  result = notify_register_check("com.apple.springboard.lockstate", &gFigPlayerCentralDeviceLockedStateNotifyToken);
  if (!result)
  {
    gFigPlayerCentralDeviceLockedStateNotifyTokenIsValid = 1;
  }

  return result;
}

void playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManager(const void *a1, uint64_t a2, const __CFDictionary *a3, void *a4, void (*a5)(void *, uint64_t, uint64_t))
{
  v52[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  number = 0;
  v50 = 0;
  valuePtr = 0;
  if (*(DerivedStorage + 8))
  {
    v17.n128_f64[0] = playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManager(DerivedStorage, v10, v11, v12, v13, v14, v15, v16, v39, v40, SHIDWORD(v40), v41);
  }

  else
  {
    v18 = DerivedStorage;
    if (*(DerivedStorage + 24))
    {
      if (!*(DerivedStorage + 192))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        FigPlayerGetFigBaseObject();
        v21 = v20;
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v22)
        {
          v23 = *MEMORY[0x1E695E480];
          if (!v22(v21, @"AllowsAirPlayVideo", *MEMORY[0x1E695E480], &v50))
          {
            v43 = FigGetUpTimeNanoseconds();
            v24 = CMBaseObjectGetDerivedStorage();
            v52[0] = 0;
            *cf = 0;
            v25 = *(v24 + 24);
            if (!v25)
            {
              goto LABEL_15;
            }

            v26 = *(CMBaseObjectGetVTable() + 16);
            if (v26)
            {
              v27 = *(v26 + 48);
              if (v27)
              {
                if (!v27(v25, *MEMORY[0x1E69B0098], v23, cf))
                {
                  v28 = *cf;
                  if (*cf != *MEMORY[0x1E695E4D0])
                  {
                    goto LABEL_13;
                  }

                  playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManager(v23, v52);
                }
              }
            }

            v28 = *cf;
LABEL_13:
            if (v28)
            {
              CFRelease(v28);
            }

LABEL_15:
            v29 = v52[0];
            v30 = *(v18 + 24);
            if (!v30 || (v31 = *(CMBaseObjectGetVTable() + 16)) != 0 && (v32 = *(v31 + 48)) != 0 && !v32(v30, *MEMORY[0x1E69B0020], v23, &number))
            {
              if (number)
              {
                CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
                v33 = valuePtr;
              }

              else
              {
                v33 = 0;
              }

              v42 = FigGetUpTimeNanoseconds();
              if (v29 && v50 == *MEMORY[0x1E695E4D0] && v33 != 32 && v33 != 16)
              {
                if (dword_1EAF16FC0)
                {
                  v47 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                *(v18 + 192) = 1;
                if (a1)
                {
                  CFRetain(a1);
                }

                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = ___ZL78playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManagerPKviPK14__CFDictionaryPvPFvS4_ihE_block_invoke;
                aBlock[3] = &__block_descriptor_84_e8_v12__0i8l;
                aBlock[4] = a1;
                aBlock[5] = v43;
                aBlock[6] = UpTimeNanoseconds;
                aBlock[7] = v42;
                aBlock[8] = a5;
                aBlock[9] = a4;
                v45 = a2;
                v37 = _Block_copy(aBlock);
                v38 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v38)
                {
                  v38(v29, playercentral_invokeAndReleaseCallbackBlock, v37);
                }

                else if (v37)
                {
                  v37[2](v37, 4294954514);
                  _Block_release(v37);
                }

LABEL_31:
                CFRelease(v29);
                goto LABEL_42;
              }

              if (dword_1EAF16FC0)
              {
                v47 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              FigGetUpTimeNanoseconds();
              if (dword_1EAF16FC0)
              {
                v47 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            a5(a4, a2, 1);
            if (!v29)
            {
              goto LABEL_42;
            }

            goto LABEL_31;
          }
        }
      }
    }
  }

  (a5)(a4, a2, 1, v17);
LABEL_42:
  if (v50)
  {
    CFRelease(v50);
  }

  if (number)
  {
    CFRelease(number);
  }
}

void playercentral_reflectSubPlayerNotification(uint64_t a1, OpaqueFigPlayer *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return;
  }

  v8 = DerivedStorage;
  if (*(DerivedStorage + 8))
  {
    return;
  }

  if (CFEqual(a3, @"RateDidChange"))
  {
    LODWORD(cf[0]) = 0;
    if (FigCFDictionaryGetFloat32IfPresent() || (v27 = *(*(CMBaseObjectGetVTable() + 16) + 48)) != 0 && !v27(a2, cf))
    {
      *(v8 + 212) = cf[0];
    }

    if (*(v8 + 212) == 0.0)
    {
      *(v8 + 192) = 0;
    }

    goto LABEL_54;
  }

  if (CFEqual(a3, @"IsNeroPlaybackActiveDidChange"))
  {
    v9 = CMBaseObjectGetDerivedStorage();
    v10 = v9;
    if (!*(v9 + 112))
    {
      v16 = 0;
LABEL_31:
      if (dword_1EAF16FC0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v22 = *(v10 + 24);
      if (!v22)
      {
        goto LABEL_36;
      }

      if (*(v10 + 113) != v16)
      {
        if (v16)
        {
          v24 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v24 = MEMORY[0x1E695E4C0];
        }

        v25 = *(CMBaseObjectGetVTable() + 16);
        if (v25)
        {
          v26 = *(v25 + 56);
          if (v26)
          {
            v26(v22, *MEMORY[0x1E69B0148], *v24);
          }
        }

        *(v10 + 113) = v16;
        goto LABEL_51;
      }

      if (dword_1EAF16FC0)
      {
LABEL_36:
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_51:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      return;
    }

    cf[0] = 0;
    *BOOLean = 0;
    v11 = *(v9 + 16);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = v12(v11, 0, cf);
    v14 = cf[0];
    if (v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = cf[0] == 0;
    }

    if (v15)
    {
      v16 = 0;
      goto LABEL_29;
    }

    FigPlayerGetFigBaseObject();
    v19 = v18;
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20 && (v20(v19, @"IsNeroPlaybackActive", 0, BOOLean), *BOOLean))
    {
      v16 = CFBooleanGetValue(*BOOLean) != 0;
      if (*BOOLean)
      {
        CFRelease(*BOOLean);
      }
    }

    else
    {
LABEL_27:
      v16 = 0;
    }

    v14 = cf[0];
LABEL_29:
    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_31;
  }

  if (CFEqual(a3, @"CurrentItemDidChange"))
  {
    playercentral_establishIfPlayerIsSilentAndTellMXSession(a2, 0);
LABEL_54:
    playercentral_updateCMSessionIsPlayingState(a2);
    playercentral_updateVideoPlaybackAssertion(a2);
    goto LABEL_51;
  }

  if (CFEqual(a3, @"IsBufferedAirPlayActiveDidChange"))
  {
    LOBYTE(cf[0]) = 0;
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      *(v8 + 114) = cf[0];
      playercentral_updateSessionMutePriority(a2);
    }

    goto LABEL_51;
  }

  if (!CFEqual(a3, @"AudioHardwareFormatChanged"))
  {
    goto LABEL_51;
  }

  FigCFDictionaryGetStringValue();
  v17 = FigCFEqual() != 0;
  if (*(v8 + 115) != v17)
  {
    *(v8 + 115) = v17;

    playercentral_updateSessionMutePriority(a2);
  }
}

uint64_t playercentral_Invalidate(OpaqueFigPlayer *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v3 = DerivedStorage;
    *(DerivedStorage + 8) = 1;
    if (dword_1EAF16FC0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v3 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigPlayerGetFigBaseObject();
      v6 = v5;
      v7 = *(CMBaseObjectGetVTable() + 8);
      if (*v7 >= 2uLL)
      {
        v8 = v7[8];
        if (v8)
        {
          v8(v6);
        }
      }
    }

    if (*(v3 + 24))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      if (*(v3 + 72))
      {
        if (dword_1EAF16FC0)
        {
          v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v10 = *(v3 + 24);
        if (v10)
        {
          v11 = *(CMBaseObjectGetVTable() + 16);
          if (v11)
          {
            v12 = *(v11 + 56);
            if (v12)
            {
              v12(v10, *MEMORY[0x1E69B04A0], 0);
            }
          }

          v13 = *(v3 + 24);
          if (v13)
          {
            v14 = *(CMBaseObjectGetVTable() + 16);
            if (v14)
            {
              v15 = *(v14 + 56);
              if (v15)
              {
                v15(v13, *MEMORY[0x1E69B04A8], *MEMORY[0x1E695E4C0]);
              }
            }
          }
        }

        *(v3 + 72) = 0;
      }
    }

    v16 = *(v3 + 48);
    if (v16)
    {
      CFRelease(v16);
      *(v3 + 48) = 0;
    }

    if (*(v3 + 64))
    {
      theDict = 0;
      FigCFWeakReferenceTableCopyValues();
      if (theDict)
      {
        CFDictionaryApplyFunction(theDict, playercentral_InvalidateItem, 0);
        CFRelease(theDict);
      }
    }

    v17 = *(v3 + 16);
    if (v17)
    {
      v18 = *(v3 + 184);
      if (v18)
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 136);
        if (v19)
        {
          v19(v17, v18);
        }

        v20 = *(v3 + 184);
        if (v20)
        {
          CFRelease(v20);
          *(v3 + 184) = 0;
        }
      }

      FigPlayerGetFigBaseObject();
      if (v21)
      {
        v22 = v21;
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v23)
        {
          v23(v22);
        }
      }
    }

    v24 = *(v3 + 24);
    if (v24)
    {
      if (*(v3 + 113))
      {
        if (!dword_1EAF16FC0 || (v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v24 = *(v3 + 24)) != 0))
        {
          v26 = *(CMBaseObjectGetVTable() + 16);
          if (v26)
          {
            v27 = *(v26 + 56);
            if (v27)
            {
              v27(v24, *MEMORY[0x1E69B0148], *MEMORY[0x1E695E4C0]);
            }
          }
        }
      }

      if (*(v3 + 168) == 2 || *(v3 + 172) == 2)
      {
        v28 = *(v3 + 24);
        if (v28)
        {
          v29 = *(CMBaseObjectGetVTable() + 16);
          if (v29)
          {
            v30 = *(v29 + 56);
            if (v30)
            {
              v30(v28, *MEMORY[0x1E69B0130], *MEMORY[0x1E69AFA38]);
            }
          }
        }
      }

      if (*(v3 + 97) == 1)
      {
        playercentral_updateAndSetAudioSessionPlayingState(a1, 0);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v31 = *(v3 + 24);
      if (v31)
      {
        CFRelease(v31);
        *(v3 + 24) = 0;
      }
    }

    v32 = *(v3 + 80);
    if (v32)
    {
      CFRelease(v32);
      *(v3 + 80) = 0;
    }

    if (*(v3 + 88))
    {
      FigSimpleMutexDestroy();
      *(v3 + 88) = 0;
    }
  }

  return 0;
}

void playercentral_Finalize(OpaqueFigPlayer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  playercentral_Invalidate(a1);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 160);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 160) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 200);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 200) = 0;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v8 = *(DerivedStorage + 104);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 104) = 0;
  }

  v9 = *(DerivedStorage + 128);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 128) = 0;
  }

  v10 = *(DerivedStorage + 144);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 144) = 0;
  }
}

void playercentral_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v9 = qword_1EAF16FB8;
    v10 = v4;
    v11 = 4294954511;
    v12 = 1972;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< CENTRAL >>>>", v12, v10);
    return;
  }

  if (!a4)
  {
    v9 = qword_1EAF16FB8;
    v10 = v4;
    v11 = 4294954516;
    v12 = 1978;
    goto LABEL_3;
  }

  v13 = DerivedStorage;
  if (CFEqual(a2, @"IsValid"))
  {
    v14 = MEMORY[0x1E695E4D0];
LABEL_18:
    v16 = *v14;
    goto LABEL_19;
  }

  if (CFEqual(a2, @"AllowsNeroPlayback"))
  {
    v14 = MEMORY[0x1E695E4D0];
    v15 = *(v13 + 98);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"UsesNeroWhileNeroPlayIsActive"))
  {
    v14 = MEMORY[0x1E695E4D0];
    v15 = *(v13 + 99);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"PreventAutomaticBackgroundingDuringVideoPlayback"))
  {
    v14 = MEMORY[0x1E695E4D0];
    v15 = *(v13 + 136);
LABEL_16:
    if (!v15)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_18;
  }

  if (CFEqual(a2, @"ItemsToPrebuffer"))
  {
    v16 = *(v13 + 200);
    if (!v16)
    {
      v17 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v17 = CFRetain(v16);
LABEL_20:
    *a4 = v17;
    return;
  }

  if (CFEqual(a2, @"Topology"))
  {
    v18 = *(v13 + 16);

    FPSupport_CreatePlayerTopology(a3, @"Central", v18, a4);
  }

  else if (*(v13 + 16))
  {
    FigPlayerGetFigBaseObject();

    CMBaseObjectCopyProperty(v19, a2, a3, a4);
  }
}

void playercentral_preferredVolumeChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AED78]);
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{Value, @"AVController_Volume", CFDictionaryGetValue(a5, *MEMORY[0x1E69AED70]), *MEMORY[0x1E69AED70], 0}];
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
}

void playercentral_activeNeroVisualStreamInfoChangedNotificationCallback(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = DerivedStorage;
    if (!*(DerivedStorage + 8))
    {
      v5 = *(DerivedStorage + 104);
      if (v5)
      {
        if (a2)
        {
          CFRetain(a2);
          v5 = *(v4 + 104);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZL67playercentral_activeNeroVisualStreamInfoChangedNotificationCallbackP26opaqueCMNotificationCenterPKvPK10__CFStringS2_S2__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a2;
        dispatch_async(v5, block);
      }
    }
  }
}

void playercentral_InvalidateItem(const void *a1, const void *a2, void *a3)
{
  FigPlaybackItemGetFigBaseObject();
  if (v3)
  {
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v5)
    {

      v5(v4);
    }
  }
}

uint64_t playercentral_updateAndSetAudioSessionPlayingState(OpaqueFigPlayer *a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 97) = a2;
  v4 = *(result + 24);
  if (v4)
  {
    v5 = (a2 ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = VTable + 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 56);
      if (v9)
      {
        v10 = *MEMORY[0x1E69B00C0];
        v11 = *v5;

        return v9(v4, v10, v11);
      }
    }
  }

  return result;
}

void playercentral_mutePriorityChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24) == a4)
  {
    FigCFDictionaryGetBooleanIfPresent();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16FC0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    playercentral_mutePriorityChangedNotification(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v16, v17, SHIDWORD(v17), v18);
  }
}

void ___ZL67playercentral_activeNeroVisualStreamInfoChangedNotificationCallbackP26opaqueCMNotificationCenterPKvPK10__CFStringS2_S2__block_invoke(uint64_t a1)
{
  playercentral_updateNeroStatusBasedOnRouteAndSetting(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void playercentral_updateNeroStatusBasedOnRouteAndSetting(OpaqueFigPlayer *a1)
{
  v22[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  theDict = 0;
  if (!*(DerivedStorage + 8))
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 24);
    if (v4)
    {
      v5 = *MEMORY[0x1E695E480];
      v6 = *(CMBaseObjectGetVTable() + 16);
      if (v6 && (v7 = *(v6 + 8)) != 0 && (v7(v4, @"FAS_NeroRouteInformation", v5, &theDict), theDict))
      {
        FigCFDictionaryGetBooleanIfPresent();
        if (!v21)
        {
          goto LABEL_24;
        }

        Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962560]);
        if (Value)
        {
          v9 = Value;
          if (*(v3 + 16))
          {
            FigPlayerGetFigBaseObject();
            v11 = v10;
            v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v12)
            {
              v12(v11, @"NeroDisplaySize", v9);
            }
          }
        }

        v13 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962588]);
      }

      else
      {
        v13 = 0;
      }

      if (v21)
      {
        v14 = *(v3 + 112);
        if (!*(v3 + 112))
        {
          v15 = CMBaseObjectGetDerivedStorage();
          if (v15[98] && v15[99] && v15[100] && (!*(v3 + 56) || gFigPlayerCentralDeviceLockedStateNotifyTokenIsValid == 1 && SBSGetScreenLockStatus()))
          {
            if (dword_1EAF16FC0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(v3 + 112) = 1;
            if (*(v3 + 16))
            {
              v22[0] = 0;
              fpc_createSendToNeroSettingsDictionary(v5, v21, v13, v22);
              v18 = v22[0];
              FigPlayerGetFigBaseObject();
              CMBaseObjectSetProperty(v19, @"SendToNero", v18);
              if (v18)
              {
                CFRelease(v18);
              }
            }

            goto LABEL_35;
          }

          v14 = *(v3 + 112);
        }

        if (v14 == 1)
        {
          v17 = CMBaseObjectGetDerivedStorage();
          if (!v17[98] || !v17[99] || !v17[100] || *(v3 + 56) && (gFigPlayerCentralDeviceLockedStateNotifyTokenIsValid != 1 || !SBSGetScreenLockStatus()))
          {
            goto LABEL_34;
          }
        }

        goto LABEL_35;
      }

LABEL_24:
      if (*(v3 + 112) == 1)
      {
LABEL_34:
        playercentral_turnOffNeroPlayback(a1);
      }

LABEL_35:
      if (theDict)
      {
        CFRelease(theDict);
      }
    }
  }
}

void fpc_createSendToNeroSettingsDictionary(const __CFAllocator *a1, int a2, const void *a3, __CFDictionary **a4)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    if (a2)
    {
      v10 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v10 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"Visuals", v10);
    if (a3)
    {
      CFDictionarySetValue(v9, @"NeroTransport", a3);
    }

    *a4 = v9;
  }

  else
  {
    v11 = qword_1EAF16FB8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954434, "<<<< CENTRAL >>>>", 4474, v4);
  }
}

void playercentral_turnOffNeroPlayback(OpaqueFigPlayer *a1)
{
  v7[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16FC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 112) = 0;
  if (*(DerivedStorage + 16))
  {
    v7[0] = 0;
    fpc_createSendToNeroSettingsDictionary(*MEMORY[0x1E695E480], 0, 0, v7);
    v3 = v7[0];
    FigPlayerGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(v5, @"SendToNero", v3);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke(uint64_t a1)
{
  playercentral_updateNeroStatusBasedOnRouteAndSetting(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_22(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v4 + 98) = v2;
  playercentral_updateNeroStatusBasedOnRouteAndSetting(v3);
  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v4 + 99) = v2;
  playercentral_updateNeroStatusBasedOnRouteAndSetting(v3);
  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v4 + 100) = v2;
  playercentral_updateNeroStatusBasedOnRouteAndSetting(v3);
  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_4(uint64_t a1)
{
  playercentral_updateNeroStatusBasedOnRouteAndSetting(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void playercentral_updateVideoPlaybackAssertion(OpaqueFigPlayer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    playercentral_updateVideoPlaybackAssertion(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), v14);
  }

  else
  {
    v10 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    v11 = *(v10 + 128);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = ___ZL42playercentral_updateVideoPlaybackAssertionP15OpaqueFigPlayer_block_invoke;
    v15 = &__block_descriptor_48_e5_v8__0l;
    v16 = v10;
    v17 = a1;
    dispatch_async(v11, &v12);
  }
}

uint64_t FigPlayerCopyPlayQueueItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 32);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t ___ZL29fpc_neroVideoPlaybackDisabledv_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_42 = result != 0;
  return result;
}

uint64_t itemcentral_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    v4 = DerivedStorage;
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    v6 = CMBaseObjectGetDerivedStorage();
    *(v4 + 16) = 1;
    if (*(v4 + 8))
    {
      if (v6)
      {
        FigCFWeakReferenceTableRemoveValue();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigPlaybackItemGetFigBaseObject();
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

      FigPlaybackItemGetFigBaseObject();
      if (v11)
      {
        v12 = v11;
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v13)
        {
          v3 = v13(v12);
          if (!v5)
          {
            return v3;
          }
        }

        else
        {
          v3 = 4294954514;
          if (!v5)
          {
            return v3;
          }
        }
      }

      else
      {
        v3 = 4294954516;
        if (!v5)
        {
          return v3;
        }
      }
    }

    else
    {
      v3 = 0;
      if (!v5)
      {
        return v3;
      }
    }

    playercentral_removeItemFromPlayQueueWithoutInformingSubPlayer(v5, a1);
    CFRelease(v5);
    return v3;
  }

  return 0;
}

void itemcentral_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemcentral_Invalidate(a1);
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t itemcentral_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 16))
  {
    itemcentral_CopyProperty(&v12);
    return v12;
  }

  else if (a4)
  {
    if (itemcentral_isParentPlayerValid(a1))
    {
      FigPlaybackItemGetFigBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {

        return v10(v9, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_CopyProperty(&v13);
      return v13;
    }
  }

  else
  {
    itemcentral_CopyProperty(&v14);
    return v14;
  }
}

void itemcentral_reflectSubItemNotification(uint64_t a1, CFTypeRef a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!*(DerivedStorage + 16))
    {
      v9 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v9)
      {
        v10 = v9;
        if (CFEqual(a3, @"ItemWasRemovedFromPlayQueue"))
        {
          if (!a5 || (v11 = *MEMORY[0x1E695E4D0], v11 != CFDictionaryGetValue(a5, @"AsRequested")))
          {
            playercentral_removeItemFromPlayQueueWithoutInformingSubPlayer(v10, a2);
          }

          goto LABEL_10;
        }

        if (CFEqual(a3, @"HasEnabledVideoChanged"))
        {
          playercentral_updateVideoPlaybackAssertion(v10);
        }

        else if (CFEqual(a3, @"HasEnabledAudioChanged"))
        {
          cf = 0;
          FigPlayerCopyPlayQueueItem(v10, 0, &cf);
          v12 = cf;
          if (cf == a2)
          {
            v16 = 0;
            v13 = *MEMORY[0x1E695E480];
            FigPlaybackItemGetFigBaseObject();
            CMBaseObjectCopyProperty(v14, @"HasEnabledAudio", v13, &v16);
            if (v16 == *MEMORY[0x1E695E4D0])
            {
              v15 = 5;
            }

            else
            {
              v15 = 6;
            }

            playercentral_establishIfPlayerIsSilentAndTellMXSession(v10, v15);
            if (v16)
            {
              CFRelease(v16);
            }

            v12 = cf;
            if (!cf)
            {
              goto LABEL_10;
            }
          }

          else if (!cf)
          {
            goto LABEL_10;
          }

          CFRelease(v12);
        }

LABEL_10:
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v10);
      }
    }
  }
}

uint64_t itemcentral_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  if (*(CMBaseObjectGetDerivedStorage() + 16))
  {
    itemcentral_handleSetProperty(&v16);
    return v16;
  }

  else if (itemcentral_isParentPlayerValid(a1))
  {
    *a5 = 0;
    if (a3)
    {
      v13 = CFRetain(a3);
    }

    else
    {
      v13 = 0;
    }

    *a6 = v13;
    if (a4)
    {
      v14 = CFRetain(a4);
    }

    else
    {
      v14 = 0;
    }

    result = 0;
    *a7 = v14;
  }

  else
  {
    itemcentral_handleSetProperty(&v17);
    return v17;
  }

  return result;
}

uint64_t itemcentral_GetDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_GetDuration(&v9);
    return v9;
  }

  else
  {
    v5 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v6 = *(v5 + 8);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v7)
      {

        return v7(v6, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_GetDuration(&v10);
      return v10;
    }
  }
}

uint64_t itemcentral_SetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_SetCurrentTime(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid(a1))
  {
    itemcentral_SetCurrentTime(&v13);
    return v13;
  }

  v8 = *(v7 + 8);
  v11 = *a2;
  v12 = *(a2 + 2);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v9)
  {
    return 4294954514;
  }

  v13 = v11;
  v14 = v12;
  return v9(v8, &v13, a3);
}

uint64_t itemcentral_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_GetCurrentTime(&v9);
    return v9;
  }

  else
  {
    v5 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v6 = *(v5 + 8);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v7)
      {

        return v7(v6, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_GetCurrentTime(&v10);
      return v10;
    }
  }
}

uint64_t itemcentral_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyTrackProperty(&v15);
    return v15;
  }

  else if (a5)
  {
    v11 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v12 = *(v11 + 8);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v13)
      {

        return v13(v12, a2, a3, a4, a5);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_CopyTrackProperty(&v16);
      return v16;
    }
  }

  else
  {
    itemcentral_CopyTrackProperty(&v17);
    return v17;
  }
}

uint64_t itemcentral_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyCommonMetadata(&v13);
    return v13;
  }

  else
  {
    v9 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v10 = *(v9 + 8);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v11)
      {

        return v11(v10, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_CopyCommonMetadata(&v14);
      return v14;
    }
  }
}

uint64_t itemcentral_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyChapterImageData(&v13);
    return v13;
  }

  else
  {
    v9 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v10 = *(v9 + 8);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v11)
      {

        return v11(v10, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_CopyChapterImageData(&v14);
      return v14;
    }
  }
}

uint64_t itemcentral_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_GetNextThumbnailTime(&v15);
    return v15;
  }

  v9 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid(a1))
  {
    itemcentral_GetNextThumbnailTime(&v15);
    return v15;
  }

  v10 = *(v9 + 8);
  v13 = *a2;
  v14 = *(a2 + 2);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v11)
  {
    return 4294954514;
  }

  v15 = v13;
  v16 = v14;
  return v11(v10, &v15, a3, a4);
}

uint64_t itemcentral_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *a4;
  v9 = *(a4 + 2);
  v6 = *a5;
  v7 = *(a5 + 2);
  return itemcentral_SetCurrentTimeWithRangeAndID(a1, &v10, a3, &v8, &v6, 0);
}

uint64_t itemcentral_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_SetTrackProperty(&v13);
    return v13;
  }

  else
  {
    v9 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v10 = *(v9 + 8);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v11)
      {

        return v11(v10, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_SetTrackProperty(&v14);
      return v14;
    }
  }
}

uint64_t itemcentral_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyFormatReader(&v9);
    return v9;
  }

  else
  {
    v5 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v6 = *(v5 + 8);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v7)
      {

        return v7(v6, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_CopyFormatReader(&v10);
      return v10;
    }
  }
}

void itemcentral_SeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = DerivedStorage;
    if (*(DerivedStorage + 16))
    {
      itemcentral_SeekToDateWithID(&v12);
    }

    else if (itemcentral_isParentPlayerValid(a1))
    {
      v10 = *(v9 + 8);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v11)
      {

        v11(v10, a2, a3);
      }
    }

    else
    {
      itemcentral_SeekToDateWithID(&v13);
    }
  }

  else
  {
    v8 = qword_1EAF16FB8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954516, "<<<< CENTRAL >>>>", 3973, v3);
  }
}

uint64_t itemcentral_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_SetCurrentTimeWithRangeAndID(&v27);
    return v27;
  }

  v13 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid(a1))
  {
    itemcentral_SetCurrentTimeWithRangeAndID(&v27);
    return v27;
  }

  v14 = *(v13 + 8);
  v21 = *a2;
  v22 = *(a2 + 2);
  v19 = *a4;
  v20 = *(a4 + 2);
  v17 = *a5;
  v18 = *(a5 + 2);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v15)
  {
    return 4294954514;
  }

  v27 = v21;
  v28 = v22;
  v25 = v19;
  v26 = v20;
  v23 = v17;
  v24 = v18;
  return v15(v14, &v27, a3, &v25, &v23, a6);
}

uint64_t itemcentral_CopyAsset(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_CopyAsset(&v9);
    return v9;
  }

  else
  {
    v5 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v6 = *(v5 + 8);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (v7)
      {

        return v7(v6, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_CopyAsset(&v10);
      return v10;
    }
  }
}

uint64_t itemcentral_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_ExtractAndRetainNextSampleBuffer(&v13);
    return v13;
  }

  else
  {
    v9 = DerivedStorage;
    if (itemcentral_isParentPlayerValid(a1))
    {
      v10 = *(v9 + 8);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v11)
      {

        return v11(v10, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_ExtractAndRetainNextSampleBuffer(&v14);
      return v14;
    }
  }
}

uint64_t itemcentral_SetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_SetCurrentTimeWithOptions(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid(a1))
  {
    itemcentral_SetCurrentTimeWithOptions(&v13);
    return v13;
  }

  v8 = *(v7 + 8);
  v11 = *a2;
  v12 = *(a2 + 2);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v9)
  {
    return 4294954514;
  }

  v13 = v11;
  v14 = v12;
  return v9(v8, &v13, a3);
}

void playercentral_GetRate(OpaqueFigPlayer *a1, float *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v5 = qword_1EAF16FB8;
    v6 = v2;
    v7 = 4294954511;
    v8 = 3186;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< CENTRAL >>>>", v8, v6);
    return;
  }

  v9 = *(DerivedStorage + 16);
  if (!v9)
  {
    v5 = qword_1EAF16FB8;
    v6 = v2;
    v7 = 4294954516;
    v8 = 3192;
    goto LABEL_3;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v10)
  {

    v10(v9, a2);
  }
}

void playercentral_StartPreroll(OpaqueFigPlayer *a1, float a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v7 = qword_1EAF16FB8;
    v8 = v3;
    v9 = 4294954511;
    v10 = 3417;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< CENTRAL >>>>", v10, v8);
    return;
  }

  v11 = *(DerivedStorage + 16);
  if (!v11)
  {
    v7 = qword_1EAF16FB8;
    v8 = v3;
    v9 = 4294954516;
    v10 = 3423;
    goto LABEL_3;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v12)
  {
    v13.n128_f32[0] = a2;

    v12(v11, a3, v13);
  }
}

void playercentral_StepByCount(OpaqueFigPlayer *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v5 = qword_1EAF16FB8;
    v6 = v2;
    v7 = 4294954511;
    v8 = 3445;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< CENTRAL >>>>", v8, v6);
    return;
  }

  v9 = *(DerivedStorage + 16);
  if (!v9)
  {
    v5 = qword_1EAF16FB8;
    v6 = v2;
    v7 = 4294954516;
    v8 = 3451;
    goto LABEL_3;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v10)
  {

    v10(v9, a2);
  }
}

uint64_t playercentral_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a5)
  {
    if (*(DerivedStorage + 16))
    {
      CFGetAllocator(a1);
      FigPlaybackItemGetClassID();
      v9 = CMDerivedObjectCreate();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v13);
      goto LABEL_7;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16FB8, 4294954516, "<<<< CENTRAL >>>>", 1551, v5);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16FB8, 4294954516, "<<<< CENTRAL >>>>", 1545, v5);
  }

  v9 = v10;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
    *a5 = 0;
  }

  return v9;
}

uint64_t playercentral_ReevaluateRouteConfiguration(OpaqueFigPlayer *a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFCopyCompactDescription();
  v5 = *(DerivedStorage + 16);
  if (!v5)
  {
    v6 = 0;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_3;
  }

  v6 = FigPlayerReevaluateRouteConfigurationForReason(v5, a2, @" -> central sub-player");
  if (v4)
  {
LABEL_3:
    CFRelease(v4);
  }

  return v6;
}

double playercentral_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v5)
    {

      v5(v4, a2);
    }
  }

  else
  {
    v7 = qword_1EAF16FB8;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954514, "<<<< CENTRAL >>>>", 3598, v2);
  }

  return result;
}

double playercentral_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v5)
    {

      v5(v4, a2);
    }
  }

  else
  {
    v7 = qword_1EAF16FB8;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954514, "<<<< CENTRAL >>>>", 3615, v2);
  }

  return result;
}

double playercentral_CopyDisplayedCVPixelBuffer(OpaqueFigPlayer *a1, const __CFDictionary *a2, __CVBuffer **a3)
{
  v6 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v7)
    {

      v7(v6, a2, a3);
    }
  }

  else
  {
    v9 = qword_1EAF16FB8;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954514, "<<<< CENTRAL >>>>", 3633, v3);
  }

  return result;
}

void playercentral_BeginInterruption(OpaqueFigPlayer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v3 = qword_1EAF16FB8;
    v4 = v1;
    v5 = 4294954511;
    v6 = 3471;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v5, "<<<< CENTRAL >>>>", v6, v4);
    return;
  }

  v7 = *(DerivedStorage + 16);
  if (!v7)
  {
    v3 = qword_1EAF16FB8;
    v4 = v1;
    v5 = 4294954516;
    v6 = 3477;
    goto LABEL_3;
  }

  v8 = *(CMBaseObjectGetVTable() + 24);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {

      v9(v7);
    }
  }
}

void playercentral_EndInterruption(OpaqueFigPlayer *a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v5 = qword_1EAF16FB8;
    v6 = v2;
    v7 = 4294954511;
    v8 = 3497;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< CENTRAL >>>>", v8, v6);
    return;
  }

  v9 = *(DerivedStorage + 16);
  if (!v9)
  {
    v5 = qword_1EAF16FB8;
    v6 = v2;
    v7 = 4294954516;
    v8 = 3503;
    goto LABEL_3;
  }

  v10 = *(CMBaseObjectGetVTable() + 24);
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {

      v11(v9, a2);
    }
  }
}

void playercentral_SetConnectionActive(OpaqueFigPlayer *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v5 = qword_1EAF16FB8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954511, "<<<< CENTRAL >>>>", 3525, v2);
  }

  else
  {
    v6 = DerivedStorage;
    if (a2)
    {
      v7 = *(DerivedStorage + 16);
      if (!v7 || (v8 = *(CMBaseObjectGetVTable() + 24)) != 0 && (v9 = *(v8 + 24)) != 0 && !v9(v7, a2))
      {
        *(v6 + 96) = 1;
      }
    }

    else
    {
      *(DerivedStorage + 96) = 0;
      v10 = *(DerivedStorage + 16);
      if (v10)
      {
        v11 = *(CMBaseObjectGetVTable() + 24);
        if (v11)
        {
          v12 = *(v11 + 24);
          if (v12)
          {

            v12(v10, 0);
          }
        }
      }
    }
  }
}

uint64_t playercentral_DuckVolume(OpaqueFigPlayer *a1, uint64_t a2, float a3, float a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = *(CMBaseObjectGetVTable() + 32);
  if (!v8)
  {
    return 4294954514;
  }

  v11 = *(v8 + 8);
  if (!v11)
  {
    return 4294954514;
  }

  v9.n128_f32[0] = a3;
  v10.n128_f32[0] = a4;

  return v11(v7, a2, v9, v10);
}

uint64_t playercentral_SilentMute(OpaqueFigPlayer *a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(CMBaseObjectGetVTable() + 32);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v3, a2);
}

void playercentral_invokeAndReleaseCallbackBlock(void (**a1)(void))
{
  if (a1)
  {
    a1[2]();

    _Block_release(a1);
  }
}

void ___ZL78playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManagerPKviPK14__CFDictionaryPvPFvS4_ihE_block_invoke(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16FC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigGetUpTimeNanoseconds();
  if (dword_1EAF16FC0)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  (*(a1 + 64))(*(a1 + 72), *(a1 + 80), 1);
  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_15_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_21_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, int a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFTypeID OUTLINED_FUNCTION_30_9()
{

  return CFGetTypeID(v0);
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigTTMLCaptionGroupConverterFromSampleBufferCreate(void *a1, uint64_t a2, void *a3)
{
  cf = 0;
  v11 = 0;
  if (!a1)
  {
    FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_3(&v12);
LABEL_11:
    v6 = v12;
    goto LABEL_15;
  }

  if (!a3)
  {
    FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_2(&v12);
    goto LABEL_11;
  }

  if (!*a1)
  {
    FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_1(&v12);
    goto LABEL_11;
  }

  FigCaptionGroupConverterFromSampleBufferGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = TTMLParserCreate(v11, fcgcfs_ttml_DeliverFigCaptionSampleBuffer, 0, &cf);
    if (!v6)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = *a1;
      v8 = v11;
      *(DerivedStorage + 16) = cf;
      *a3 = v8;
      return v6;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

LABEL_15:
  if (v11)
  {
    CFRelease(v11);
  }

  return v6;
}

uint64_t fcgcfs_ttml_DeliverFigCaptionSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fcgcfs_ttml_DeliverFigCaptionSampleBuffer_cold_2(&v10);
    return LODWORD(v10.start.value);
  }

  v4 = DerivedStorage;
  CaptionGroup = FigSampleBufferGetCaptionGroup();
  if (!CaptionGroup)
  {
    fcgcfs_ttml_DeliverFigCaptionSampleBuffer_cold_1(&v10);
    return LODWORD(v10.start.value);
  }

  v6 = CaptionGroup;
  memset(&v16, 0, sizeof(v16));
  CMSampleBufferGetPresentationTimeStamp(&v16, *(v4 + 24));
  memset(&v15, 0, sizeof(v15));
  CMSampleBufferGetOutputPresentationTimeStamp(&v15, *(v4 + 24));
  memset(&v14, 0, sizeof(v14));
  v10.start = v16;
  rhs = v15;
  CMTimeSubtract(&v14, &v10.start, &rhs);
  memset(&v12, 0, sizeof(v12));
  CMSampleBufferGetPresentationTimeStamp(&v10.start, a2);
  rhs = v14;
  CMTimeSubtract(&v12, &v10.start, &rhs);
  memset(&v11, 0, sizeof(v11));
  CMSampleBufferGetOutputDuration(&v10.start, a2);
  rhs = v12;
  CMTimeRangeMake(&v11, &rhs, &v10.start);
  v8 = *v4;
  v7 = *(v4 + 8);
  v10 = v11;
  return v8(v6, &v10, v7);
}

void fcgcfs_ttml_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *fcgcfs_ttml_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTTMLCaptionGroupConverterFromSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t FigXPCVideoTargetServerCopyVideoTargetForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == FigVideoTargetGetTypeID())
    {
      return 0;
    }

    FigXPCVideoTargetServerCopyVideoTargetForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigVideoTargetStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigVideoTargetStartServer_block_invoke;
  block[3] = &unk_1E7483E68;
  block[4] = &v3;
  if (FigVideoTargetStartServer_sFigVideoTargetServerSetupOnce != -1)
  {
    dispatch_once(&FigVideoTargetStartServer_sFigVideoTargetServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigVideoTargetStartServer_block_invoke(uint64_t a1)
{
  v7 = 1;
  v8 = HandleVideoTargetMessage;
  v9 = HandleVideoTargetNoReplyMessage;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  qword_1ED4CA888 = dispatch_queue_create("CommonFVTServerAsyncQueue", 0);
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }

  else
  {
    __FigVideoTargetStartServer_block_invoke_cold_1(&v7, a1, v2, v3, v4, v5);
  }
}

void DisposeServedVideoTargetState(void **a1)
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

void __HandleVideoTargetNoReplyMessage_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

const __CFData *FigFairplayPSSHAtomParserParseAndCreateRecord(uint64_t a1, const __CFData *a2, void *a3)
{
  v6 = _os_feature_enabled_impl();
  if (v6)
  {

    return FigFairplayPSSHAtomParserParseAndCreateRecordRemote(a1, a2, a3);
  }

  else
  {

    return FigFairplayPSSHAtomParserParseAndCreateRecordInProcess(v6, a2, a3);
  }
}

uint64_t OUTLINED_FUNCTION_4_47(uint64_t a1)
{

  return FigAtomStreamGetCurrentAtomTypeAndDataLength();
}

double fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(const __CFString *URLString)
{
  if (URLString)
  {
    v2 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
    if (v2)
    {
      v3 = v2;
      FigSandboxRegisterDirectoryURLWithProcess();
      CFRelease(v3);
    }

    else
    {
      v5 = qword_1ED4CBDA8;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954434, "<<<< PlayerRemoteXPC >>>>", 9067, v1);
    }
  }

  return result;
}

uint64_t remoteXPCPlayerClient_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigPlayerGetTypeID() || (v3 = CFGetTypeID(a1), result = FigPlaybackItemGetTypeID(), v3 == result))
  {
    result = CMBaseObjectGetDerivedStorage();
    *(result + 8) = 1;
  }

  return result;
}

BOOL remoteXPCPlayerClient_NotificationFilter(CFTypeRef a1, const void *a2, uint64_t a3, __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v136 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    remoteXPCPlayerClient_NotificationFilter_cold_3(0, a2, a3, a4, a5, a6, a7, a8, v94, v95, SHIDWORD(v95), v96);
    return 0;
  }

  if (!a2)
  {
    remoteXPCPlayerClient_NotificationFilter_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v94, v95, SHIDWORD(v95), v96);
    return 0;
  }

  v9 = a4;
  v12 = CFGetTypeID(a1);
  if (v12 == FigPlayerGetTypeID())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    size.width = 0.0;
    if (*(DerivedStorage + 9))
    {
      goto LABEL_35;
    }

    v14 = DerivedStorage;
    if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &size))
    {
      goto LABEL_35;
    }

    if (CFEqual(@"SynchronousFrameEnqueued", a2))
    {
      if (!FigUseVideoReceiverForCALayer())
      {
        FigReadWriteLockLockForRead();
        v15 = *(v14 + 64);
        if (!v15)
        {
          FigReadWriteLockUnlockForRead();
          goto LABEL_35;
        }

        v16 = CFRetain(v15);
        FigReadWriteLockUnlockForRead();
        if (!v16)
        {
LABEL_36:
          FigDeferredTransactionCommit(*&size.width, 0);
          if (*&size.width)
          {
            CFRelease(*&size.width);
          }

          v25 = 0;
          goto LABEL_39;
        }

        if (CFArrayGetCount(v16) >= 1)
        {
          FPSupport_AppendDeferredTransactionChangeForCallingSetContentsChangedOnLayers(0, v16);
        }

        v17 = v16;
        goto LABEL_13;
      }
    }

    else
    {
      if (CFEqual(@"Remote_RateWillChangeTo", a2))
      {
        if (v9)
        {
          v20 = CFGetTypeID(v9);
          if (v20 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v9, @"Remote_NewRate");
            if (Value)
            {
              v22 = Value;
              v23 = CFGetTypeID(Value);
              if (v23 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v22, kCFNumberFloat32Type, (v14 + 188));
              }
            }
          }
        }

        LODWORD(v16) = 1;
        goto LABEL_36;
      }

      if (CFEqual(@"CurrentItemDidChange", a2))
      {
        v109[0] = 0;
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v24 || v24(a1, 0, v109))
        {
          goto LABEL_35;
        }

        if (v109[0])
        {
          v68 = CMBaseObjectGetDerivedStorage();
          handler = **&MEMORY[0x1E6960C70];
          if (v9)
          {
            v71 = CFDictionaryGetValue(v9, @"CurrentDuration");
            CMTimeMakeFromDictionary(&handler, v71);
            v69 = CFDictionaryGetValue(v9, @"CurrentVideoSlotArray");
            v70 = CFDictionaryGetValue(v9, @"CurrentVideoTrackMatrix");
          }

          else
          {
            v69 = 0;
            v70 = 0;
          }

          v68[9] = handler;
          remoteXPCPlayer_connectVideoLayerToPlaybackItem(a1, v109[0], 0, v69 == 0, v69, v70, 0, 0, *&size.width);
          remoteXPCPlayer_updateLayerDurationsWhenItemReady(a1, v109[0], 3, *&size.width);
        }

        else if (remoteXPCPlayer_clearVideoLayer(a1, *&size.width))
        {
          goto LABEL_35;
        }

        v17 = v109[0];
        if (!v109[0])
        {
          goto LABEL_35;
        }

        goto LABEL_13;
      }

      if (!CFEqual(@"IsAirPlayVideoActiveDidChange", a2))
      {
        if (CFEqual(*MEMORY[0x1E69628A8], a2))
        {
          remoteXPCPlayer_clearVideoLayer(a1, *&size.width);
        }

        goto LABEL_35;
      }

      handler.value = 0;
      v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v33 && !v33(a1, 0, &handler))
      {
        if (FigUseVideoReceiverForCALayer())
        {
          remoteXPCPlayer_updateAirPlayScrubbingHostVideoTarget(a1, v34, v35, v36, v37, v38, v39, v40, v94, v95, v96, v98, v100, v103, v104, v105, fireTime.value, *&fireTime.timescale, fireTime.epoch, cf[0]);
        }

        else
        {
          remoteXPCPlayer_updateAirPlayVideoHostLayer(a1);
        }

        if (handler.value)
        {
          v41 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          v42 = MEMORY[0x1E6960C98];
          v43 = *(MEMORY[0x1E6960C98] + 16);
          *(v41 + 88) = *MEMORY[0x1E6960C98];
          *(v41 + 104) = v43;
          *(v41 + 120) = *(v42 + 32);
          *(v41 + 80) = 0;
          FigSimpleMutexUnlock();
        }

        else
        {
          remoteXPCPlayerClient_NotificationFilter_cold_1();
        }

        v17 = handler.value;
        if (handler.value)
        {
LABEL_13:
          CFRelease(v17);
        }
      }
    }

LABEL_35:
    LODWORD(v16) = 0;
    goto LABEL_36;
  }

  v18 = CFGetTypeID(a1);
  if (v18 == FigPlaybackItemGetTypeID())
  {
    v26 = CMBaseObjectGetDerivedStorage();
    v27 = remoteXPCItem_copyOwningPlayer(a1);
    v117 = 0;
    FigSimpleMutexLock();
    if (*(v26 + 9) || !v27)
    {
      FigSimpleMutexUnlock();
      v25 = 0;
      LODWORD(v16) = 0;
      if (!v27)
      {
        goto LABEL_39;
      }

      goto LABEL_139;
    }

    v28 = CMBaseObjectGetDerivedStorage();
    v106 = v27;
    if (CFEqual(a2, @"ItemWasRemovedFromPlayQueue"))
    {
      if (!v9 || (v53 = *MEMORY[0x1E695E4D0], v53 != CFDictionaryGetValue(v9, @"AsRequested")))
      {
        FigSimpleMutexLock();
        v54 = *(v28 + 32);
        if (v54)
        {
          CFSetRemoveValue(v54, a1);
        }

        FigSimpleMutexUnlock();
      }

      FigSimpleMutexLock();
      if (remoteXPCItem_isSyncItem(a1))
      {
        v55 = *(v28 + 80);
        if (v55)
        {
          CFRelease(v55);
          *(v28 + 80) = 0;
        }
      }

      FigSimpleMutexUnlock();
      remoteXPCItem_updateLayerSync(a1, 0, 0);
      goto LABEL_118;
    }

    if (CFEqual(a2, @"DurationChanged"))
    {
      size.width = 0.0;
      handler = **&MEMORY[0x1E6960C70];
      if (v9)
      {
        v29 = CFDictionaryGetValue(v9, @"CurrentDuration");
        CMTimeMakeFromDictionary(&handler, v29);
      }

      *(v26 + 216) = handler;
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v30)
      {
        goto LABEL_118;
      }

      v31 = v30(v27, 0, &size);
      width = size.width;
      if (!v31 && *&size.width == a1)
      {
        remoteXPCPlayer_updateLayerDurations(v27, a1, 3, 0);
        width = size.width;
      }

      goto LABEL_116;
    }

    if (CFEqual(a2, @"ReadyForPlayback"))
    {
      v109[0] = 0;
      v44 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v44)
      {
        v45 = v44(v27, 0, v109);
        width = *v109;
        if (!v45 && v109[0] == a1)
        {
          handler = **&MEMORY[0x1E6960C70];
          v46 = *MEMORY[0x1E695F060];
          size = *MEMORY[0x1E695F060];
          cf[0] = 0;
          if (v9)
          {
            v101 = v46;
            v47 = CFDictionaryGetValue(v9, @"CurrentVideoSlotArray");
            v48 = CFDictionaryGetValue(v9, @"CurrentVideoTrackMatrix");
            v49 = CFDictionaryGetValue(v9, @"CurrentDuration");
            CMTimeMakeFromDictionary(&handler, v49);
            v50 = CFDictionaryGetValue(v9, @"CurrentDimensions");
            if (!CGSizeMakeWithDictionaryRepresentation(v50, &size))
            {
              size = v101;
            }
          }

          else
          {
            v48 = 0;
            v47 = 0;
          }

          *(v26 + 216) = handler;
          *(v26 + 240) = size;
          if (FigUseVideoReceiverForCALayer())
          {
            v72 = 0;
          }

          else
          {
            FigDeferredTransactionCreate(*MEMORY[0x1E695E480], cf);
            remoteXPCPlayer_connectVideoLayerToPlaybackItem(v27, a1, 0, v47 == 0, v47, v48, 0, 0, cf[0]);
            v72 = cf[0];
          }

          remoteXPCPlayer_updateLayerDurationsWhenItemReady(v27, a1, 3, v72);
          FigDeferredTransactionCommit(cf[0], 0);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          width = *v109;
        }

LABEL_116:
        if (width != 0.0)
        {
          CFRelease(*&width);
        }

        goto LABEL_118;
      }

      goto LABEL_118;
    }

    if (CFEqual(a2, @"DimensionsChanged"))
    {
      v102 = *MEMORY[0x1E695F060];
      *&handler.value = *MEMORY[0x1E695F060];
      if (!FigUseVideoReceiverForCALayer())
      {
        if (v9)
        {
          v52 = CFDictionaryGetValue(v9, @"CurrentVideoSlotArray");
          v51 = CFDictionaryGetValue(v9, @"CurrentVideoTrackMatrix");
          v86 = CFDictionaryGetValue(v9, @"CurrentDimensions");
          if (!CGSizeMakeWithDictionaryRepresentation(v86, &handler))
          {
            *&handler.value = v102;
          }
        }

        else
        {
          v51 = 0;
          v52 = 0;
        }

        FigSimpleMutexLock();
        isSyncItem = remoteXPCItem_isSyncItem(a1);
        FigSimpleMutexUnlock();
        *(v26 + 240) = *&handler.value;
        if (isSyncItem)
        {
          remoteXPCPlayer_connectVideoLayerToPlaybackItem(v27, a1, 1, v52 == 0, v52, v51, 0, 0, 0);
        }
      }

      goto LABEL_118;
    }

    if (CFEqual(@"ScheduleNextItemTransitionTimer", a2))
    {
      if (v9)
      {
        FigSimpleMutexLock();
        v56 = remoteXPCPlayer_copySyncItem(v27);
        v57 = v28;
        FigSimpleMutexUnlock();
        v58 = CMBaseObjectGetDerivedStorage();
        if (v56 && v56 != a1)
        {
          v59 = v58;
          v116 = 0;
          v60 = CFDictionaryGetValue(v9, @"CurrentVideoSlotArray");
          v61 = CFDictionaryGetValue(v9, @"CurrentVideoTrackMatrix");
          v62 = CFDictionaryGetValue(v9, @"FigTime");
          CMTimeMakeFromDictionary(&handler, v62);
          v134 = handler.value;
          flags = handler.flags;
          timescale = handler.timescale;
          epoch = handler.epoch;
          FigCFDictionaryGetBooleanIfPresent();
          v64 = 0;
          v99 = flags;
          if ((flags & 1) == 0 || !v60 || !v61)
          {
            goto LABEL_168;
          }

          remoteXPCPlayer_cancelAndClearNextItemTransitionTimer(v106);
          v65 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v57 + 136));
          if (!v65)
          {
            v64 = 0;
            goto LABEL_168;
          }

          v66 = v65;
          *(v57 + 144) = v65;
          *&size.width = MEMORY[0x1E69E9820];
          *&size.height = 3221225472;
          v128 = __remoteXPCPlaybackItem_NotificationFilter_block_invoke;
          v129 = &__block_descriptor_64_e5_v8__0l;
          v130 = v60;
          v131 = v61;
          v132 = a1;
          v133 = v56;
          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 3221225472;
          v110 = __remoteXPCPlaybackItem_NotificationFilter_block_invoke_2;
          v111 = &__block_descriptor_64_e5_v8__0l;
          v112 = v60;
          v113 = v61;
          v114 = a1;
          v115 = v56;
          __remoteXPCPlaybackItem_NotificationFilter_block_invoke(&size);
          handler.value = MEMORY[0x1E69E9820];
          *&handler.timescale = 3221225472;
          handler.epoch = __remoteXPCPlaybackItem_NotificationFilter_block_invoke_3;
          v119 = &unk_1E7483ED8;
          v120 = v66;
          v121 = v106;
          v125 = v116;
          v126 = v60 != 0;
          v122 = a1;
          v123 = v60;
          v124 = v61;
          dispatch_source_set_event_handler(v66, &handler);
          cf[0] = MEMORY[0x1E69E9820];
          cf[1] = 3221225472;
          cf[2] = __remoteXPCPlaybackItem_NotificationFilter_block_invoke_4;
          cf[3] = &unk_1E7483F00;
          cf[5] = v109;
          cf[6] = v59;
          cf[4] = v66;
          dispatch_source_set_cancel_handler(v66, cf);
          dispatch_resume(v66);
          if (!CMTimebaseAddTimerDispatchSource(v59[4], v66))
          {
            v67 = v59[4];
            fireTime.value = v134;
            fireTime.timescale = timescale;
            fireTime.flags = v99;
            fireTime.epoch = epoch;
            if (!CMTimebaseSetTimerDispatchSourceNextFireTime(v67, v66, &fireTime, 0))
            {
LABEL_100:
              v64 = v117;
LABEL_168:
              FigSimpleMutexUnlock();
              v25 = 0;
              v79 = 0;
              LODWORD(v16) = 1;
              goto LABEL_134;
            }

            CMTimebaseRemoveTimerDispatchSource(v59[4], v66);
          }

          v110(v109);
          goto LABEL_100;
        }

LABEL_155:
        FigSimpleMutexUnlock();
        v79 = 0;
        v25 = 0;
        LODWORD(v16) = 1;
        goto LABEL_136;
      }

LABEL_154:
      v56 = 0;
      goto LABEL_155;
    }

    if (CFEqual(a2, @"CancelNextItemTransitionTimer"))
    {
      remoteXPCPlayer_cancelAndClearNextItemTransitionTimer(v27);
      goto LABEL_154;
    }

    if (CFEqual(a2, @"FirstVideoFrameEnqueued"))
    {
      if (dword_1ED4CBDB0)
      {
        LODWORD(v109[0]) = 0;
        LOBYTE(cf[0]) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v26 + 258) = 1;
      remoteXPCItem_handleFirstFrameNotificationLatch(a1, 0, 0);
      goto LABEL_154;
    }

    if (CFEqual(a2, @"DidRemoveImageQueue") || CFEqual(a2, @"WillReprepareImageQueues"))
    {
      v84 = a1;
      v85 = 1;
LABEL_147:
      remoteXPCItem_handleFirstFrameNotificationLatch(v84, v85, 0);
      goto LABEL_118;
    }

    if (CFEqual(a2, @"DidPrepareImageQueue"))
    {
      FigSimpleMutexLock();
      v92 = remoteXPCItem_isSyncItem(a1);
      FigSimpleMutexUnlock();
      if (!v92)
      {
        goto LABEL_118;
      }

      v84 = a1;
      v85 = 3;
      goto LABEL_147;
    }

    if (CFEqual(a2, @"ReadyForInspection"))
    {
      if (v9)
      {
        v88 = CFDictionaryGetValue(v9, @"Properties");
        if (v88)
        {
          v89 = v88;
          v138.length = CFArrayGetCount(v88);
          v138.location = 0;
          if (CFArrayContainsValue(v89, v138, @"AccurateDuration"))
          {
            handler.value = 0;
            v90 = FigPlayerCopyPlayQueueItem(v27, &handler);
            width = *&handler.value;
            if (!v90 && handler.value == a1)
            {
              v91 = *(v26 + 176);
              *(v26 + 176) = 0;
              if (v91)
              {
                remoteXPCPlayer_updateLayerDurations(v27, a1, v91, 0);
                width = *&handler.value;
              }
            }

            goto LABEL_116;
          }
        }
      }

LABEL_118:
      v73 = 0;
      LODWORD(v16) = 0;
LABEL_119:
      v64 = v117;
      if (v117)
      {
        v74 = v117;
      }

      else
      {
        v74 = v9;
      }

      if (!v74 || (v75 = CFGetTypeID(v74), v75 != CFDictionaryGetTypeID()) || (v76 = CFDictionaryGetValue(v74, @"Server_CFError")) == 0 || (v77 = CFGetTypeID(v76), v77 != CFDictionaryGetTypeID()) || (v78 = FigCFErrorCreateFromPropertyList()) == 0)
      {
        v79 = 0;
        v25 = 0;
        v82 = 0;
        if (!v73)
        {
LABEL_133:
          FigSimpleMutexUnlock();
          v56 = 0;
          v79 = v82;
          goto LABEL_134;
        }

LABEL_132:
        v117 = 0;
        LODWORD(v16) = 4;
        v25 = v64;
        v82 = v79;
        v64 = 0;
        goto LABEL_133;
      }

      v79 = v78;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v74);
      if (MutableCopy)
      {
        v81 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"Server_CFError");
        CFDictionarySetValue(v81, @"CFError", v79);
        if (v64)
        {
          CFRelease(v64);
        }

        v64 = v81;
        goto LABEL_132;
      }

      goto LABEL_184;
    }

    if (CFEqual(a2, @"LegibleOutputChanged"))
    {
      fpr_copyLegibleOutputChangedNotificationPayloadFromMessage();
      if (v93)
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (!CFEqual(a2, @"MetadataOutputChanged"))
      {
        if (CFEqual(a2, @"SeekDidComplete"))
        {
          remoteXPCItem_HandleTimebaseSynchronizationUpdate(a1, a3);
          goto LABEL_118;
        }

        if (CFEqual(a2, *MEMORY[0x1E69628A8]))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          goto LABEL_118;
        }

        if (!CFEqual(a2, @"PleaseUpdateLastPlayedDate"))
        {
          goto LABEL_118;
        }

        FPSupport_ProcessPayloadForLastPlayedDateNotification(v9);
        v56 = 0;
        goto LABEL_155;
      }

      if (fpr_copyMetadataOutputChangedNotificationPayloadFromMessage())
      {
LABEL_183:
        v79 = 0;
LABEL_184:
        FigSimpleMutexUnlock();
        v25 = 0;
        v56 = 0;
        LODWORD(v16) = 1;
        v64 = v117;
LABEL_134:
        v27 = v106;
        if (v64)
        {
          CFRelease(v64);
        }

LABEL_136:
        CFRelease(v27);
        if (v56)
        {
          CFRelease(v56);
        }

        v27 = v79;
        if (!v79)
        {
LABEL_39:
          if (v16 == 4)
          {
            v9 = v25;
          }

          else if (v16 == 1)
          {
            goto LABEL_44;
          }

          fpr_deferPostNotificationToNotificationQueue(a1, a2, v9);
LABEL_44:
          if (v25)
          {
            CFRelease(v25);
          }

          return 1;
        }

LABEL_139:
        CFRelease(v27);
        goto LABEL_39;
      }
    }

    LODWORD(v16) = 4;
    v73 = 1;
    goto LABEL_119;
  }

  if (!FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(a1))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, v95, v96);
    return 1;
  }

  return FigXPCPlaybackCoordinatorClientHandleNotificationFilter(a1, a2);
}

void remoteXPCPlayerClient_ObjectPurgedCallback(const void *a1, uint64_t a2)
{
  v3 = CFGetTypeID(a1);
  if (v3 == FigPlayerGetTypeID())
  {
    *(CMBaseObjectGetDerivedStorage() + 288) = 1;
  }

  else
  {
    v4 = CFGetTypeID(a1);
    if (v4 != FigPlaybackItemGetTypeID())
    {
      return;
    }

    *(CMBaseObjectGetDerivedStorage() + 270) = 1;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void fpr_deferPostNotificationToNotificationQueue(const void *a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  v7 = qword_1ED4CA8B0;
  v8 = CFGetTypeID(a1);
  if (v8 == FigPlayerGetTypeID())
  {
    v9 = CFRetain(a1);
    goto LABEL_4;
  }

  v19 = CFGetTypeID(a1);
  if (v19 != FigPlaybackItemGetTypeID())
  {
LABEL_16:
    v20 = qword_1ED4CBDA8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 4294954436, "<<<< PlayerRemoteXPC >>>>", 1105, v3);
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9))
  {
    fpr_deferPostNotificationToNotificationQueue_cold_1(DerivedStorage, v22, v23, v24, v25, v26, v27, v28, v36, block, SHIDWORD(block), v38);
    return;
  }

  v9 = remoteXPCItem_copyOwningPlayer(a1);
  if (!v9)
  {
    fpr_deferPostNotificationToNotificationQueue_cold_2(0, v29, v30, v31, v32, v33, v34, v35, v36, block, SHIDWORD(block), v38);
    return;
  }

LABEL_4:
  v10 = CMBaseObjectGetDerivedStorage();
  if (*(v10 + 9))
  {
    fpr_deferPostNotificationToNotificationQueue_cold_3(v10, v11, v12, v13, v14, v15, v16, v17, v36, block, SHIDWORD(block), v38);
    if (v9)
    {
LABEL_13:
      CFRelease(v9);
    }
  }

  else
  {
    if (*(v10 + 48))
    {
      v18 = *(v10 + 48);
    }

    else
    {
      v18 = v7;
    }

    if (a2)
    {
      CFRetain(a2);
    }

    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    block = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __fpr_deferPostNotificationToNotificationQueue_block_invoke;
    v40 = &__block_descriptor_56_e5_v8__0l;
    v41 = a2;
    v42 = a1;
    v43 = a3;
    dispatch_async(v18, &block);
    if (v9)
    {
      goto LABEL_13;
    }
  }
}

void remoteXPCPlayer_updateLayerDurationsWhenItemReady(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if ((a3 & 3) != 0 && !*(DerivedStorage + 9) && !*(v9 + 9))
  {
    *(DerivedStorage + 176) |= a3;
    v10 = CFArrayCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemProperty_AccurateDuration, 1, MEMORY[0x1E695E9C0]);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v11)
    {
      v11(a2, v10, &v13);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v13)
    {
      v12 = *(DerivedStorage + 176);
      *(DerivedStorage + 176) = 0;
      remoteXPCPlayer_updateLayerDurations(a1, a2, v12, a4);
    }
  }
}

uint64_t remoteXPCPlayer_clearVideoLayer(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigUseVideoReceiverForCALayer();
  if (v5)
  {
    remoteXPCPlayer_clearVideoLayer_cold_1(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17, v18[0], v18[1]);
  }

  else
  {
    if (!a2)
    {
      remoteXPCPlayer_clearVideoLayer_cold_2(v18);
      return v18[0];
    }

    FigReadWriteLockLockForRead();
    v13 = *(DerivedStorage + 64);
    if (v13)
    {
      v14 = CFRetain(v13);
    }

    else
    {
      v14 = 0;
    }

    FigReadWriteLockUnlockForRead();
    FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(a2, v14, 0);
    FPSupport_AppendDeferredTransactionChangeToRelease(a2, v14);
    FPSupport_AppendDeferredTransactionPostCommitChangeToReleasePlayerResourcesOnQueue(a2, a1, *(DerivedStorage + 136));
  }

  return 0;
}

void remoteXPCPlayer_updateAirPlayVideoHostLayer(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  number = 0;
  cf = 0;
  valuePtr = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  v3 = FigUseVideoReceiverForCALayer();
  if (v3)
  {
    remoteXPCPlayer_updateAirPlayVideoHostLayer_cold_1(v3, v4, v5, v6, v7, v8, v9, v10, v27, v28, SHIDWORD(v28), v29);
    v18 = 0;
    goto LABEL_27;
  }

  FigPlayerGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, @"IsAirPlayVideoActive", 0, &cf);
    v13 = cf;
  }

  v14 = *MEMORY[0x1E695E4D0];
  if (v13)
  {
    v15 = v13 == v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  FigReadWriteLockLockForRead();
  v17 = *(DerivedStorage + 56);
  if (!v17)
  {
    FigReadWriteLockUnlockForRead();
    v18 = 0;
    goto LABEL_25;
  }

  v18 = CFRetain(v17);
  FigReadWriteLockUnlockForRead();
  if (!v18 || (CFArrayGetCount(v18) > 0 ? (v19 = v16) : (v19 = 0), v19 != 1))
  {
LABEL_25:
    v25 = *(DerivedStorage + 104);
    v24 = (DerivedStorage + 104);
    if (v25)
    {
      remoteXPCPlayer_updateAirPlayVideoHostLayer_cold_2(&v28, v24, v18, &v33);
      v18 = v33;
    }

    goto LABEL_27;
  }

  FigPlayerGetFigBaseObject();
  v21 = v20;
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v22 && !v22(v21, @"AirPlayVideoScrubbingCAContextID", 0, &number) && number && CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:v14 forKey:*MEMORY[0x1E697A020]];
    v23 = *(DerivedStorage + 104);
    if (v23)
    {
      [v23 removeFromSuperlayer];
    }

    else
    {
      v26 = [MEMORY[0x1E69793A8] layer];
      *(DerivedStorage + 104) = v26;
      if (!v26)
      {
LABEL_37:
        [MEMORY[0x1E6979518] commit];
        goto LABEL_27;
      }

      CFRetain(v26);
    }

    [*(DerivedStorage + 104) setContextId:valuePtr];
    [CFArrayGetValueAtIndex(v18 0)];
    goto LABEL_37;
  }

LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  objc_autoreleasePoolPop(v1);
}

void remoteXPCItem_handleFirstFrameNotificationLatch(const void *a1, uint64_t a2, const void *a3)
{
  v4 = a2;
  theArray[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = remoteXPCItem_copyOwningPlayer(a1);
  BOOLean = 0;
  v8 = FigUseVideoReceiverForCALayer();
  if (v8)
  {
    if (remoteXPCItem_handleFirstFrameNotificationLatch_cold_1(v7))
    {
      return;
    }
  }

  else
  {
    if (!v7)
    {
      remoteXPCItem_handleFirstFrameNotificationLatch_cold_2(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26, SHIDWORD(v26), v27);
      return;
    }

    Value = 0;
    if (v4 != 1 && v4 != 4)
    {
      FigPlaybackItemGetFigBaseObject();
      v18 = v17;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v19 || (!v19(v18, @"HasEnqueuedFirstVideoFrame", *MEMORY[0x1E695E480], &BOOLean) ? (v20 = BOOLean == 0) : (v20 = 1), v20))
      {
        Value = 0;
      }

      else
      {
        Value = CFBooleanGetValue(BOOLean);
      }
    }

    if (FPSupport_ItemReadyToDisplayVideoLatch(v4, Value, DerivedStorage + 257, DerivedStorage + 256))
    {
      if (DerivedStorage[257])
      {
        if (!DerivedStorage[256])
        {
          theArray[0] = 0;
          FigPlaybackItemGetFigBaseObject();
          v23 = v22;
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v24)
          {
            v24(v23, @"VideoSlotArray", *MEMORY[0x1E695E480], theArray);
            if (theArray[0])
            {
              if (CFArrayGetCount(theArray[0]) >= 1)
              {
                remoteXPCPlayer_connectImageQueueToVideoLayerArray(v7, a1, theArray[0], 0, a3);
                DerivedStorage[256] = 1;
              }

              if (theArray[0])
              {
                CFRelease(theArray[0]);
              }
            }
          }
        }
      }

      if (DerivedStorage[258])
      {
        if (dword_1ED4CBDB0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpr_deferPostNotificationToNotificationQueue(a1, @"FirstVideoFrameEnqueued", 0);
        DerivedStorage[258] = 0;
      }
    }
  }

  CFRelease(v7);
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

void remoteXPCPlayer_updateLayerDurations(uint64_t a1, uint64_t a2, char a3, CFTypeRef a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v19 = **&MEMORY[0x1E6960CC0];
  cf = 0;
  if ((a3 & 3) != 0 && !*(DerivedStorage + 9))
  {
    v9 = v8;
    if (!*(v8 + 9))
    {
      if (!a4)
      {
        if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
        {
LABEL_25:
          FigDeferredTransactionCommit(cf, 0);
          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }

        a4 = cf;
      }

      time1 = *(DerivedStorage + 216);
      v16 = **&MEMORY[0x1E6960C70];
      if (CMTimeCompare(&time1, &v16))
      {
        v19 = *(DerivedStorage + 216);
      }

      else
      {
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v12)
        {
          v12(a2, &v19);
        }
      }

      time1 = v19;
      v16 = **&MEMORY[0x1E6960C68];
      if (!CMTimeCompare(&time1, &v16))
      {
        v19 = **&MEMORY[0x1E6960C88];
      }

      if ((a3 & 2) != 0)
      {
        FigSimpleMutexLock();
        v10 = *(DerivedStorage + 160);
        if (v10)
        {
          v11 = CFRetain(v10);
          FigSimpleMutexUnlock();
          if (v11)
          {
            time1 = v19;
            FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(a4, &time1, v11);
            CFRelease(v11);
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }
      }

      v13 = FigUseVideoReceiverForCALayer();
      if ((a3 & 1) != 0 && !v13)
      {
        FigReadWriteLockLockForRead();
        v14 = *(v9 + 64);
        if (v14)
        {
          v15 = CFRetain(v14);
        }

        else
        {
          v15 = 0;
        }

        FigReadWriteLockUnlockForRead();
        time1 = **&MEMORY[0x1E6960C88];
        FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(a4, &time1, v15);
        if (v15)
        {
          CFRelease(v15);
        }
      }

      goto LABEL_25;
    }
  }
}

void remoteXPCPlayer_removeAirPlayScrubbingVideoTarget(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 312))
  {
    FigVideoTargetGetCMBaseObject();
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, @"AirPlayVideoScrubbingContextID", 0);
    }

    v5 = *(DerivedStorage + 312);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 312) = 0;
    }
  }
}

void remoteXPCPlayer_cancelAndClearNextItemTransitionTimer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __remoteXPCPlayer_cancelAndClearNextItemTransitionTimer_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = DerivedStorage;
  dispatch_sync(v2, block);
}

void __remoteXPCPlayer_cancelAndClearNextItemTransitionTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 144);
  if (v2)
  {
    if (!dispatch_source_testcancel(*(v1 + 144)))
    {
      dispatch_source_cancel(v2);
      v2 = *(*(a1 + 32) + 144);
    }

    dispatch_release(v2);
    *(*(a1 + 32) + 144) = 0;
  }
}

void fpr_copySampleBuffersArrayFromMessage(void *a1, const char *a2, __CFArray **a3)
{
  array = xpc_dictionary_get_array(a1, a2);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v14 = Mutable;
  if (array)
  {
    count = xpc_array_get_count(array);
    if (!count)
    {
LABEL_14:
      *a3 = v14;
      return;
    }

    v16 = count;
    v17 = 0;
    while (1)
    {
      v18 = xpc_array_get_value(array, v17);
      *&customBlockSource.version = 0;
      cf = 0;
      HIDWORD(customBlockSource.AllocateBlock) = 0;
      customBlockSource.FreeBlock = fpr_bbufUtilXPCObjectReleaser;
      customBlockSource.refCon = v18;
      bytes_ptr = xpc_data_get_bytes_ptr(v18);
      if (bytes_ptr)
      {
        v20 = bytes_ptr;
        length = xpc_data_get_length(v18);
        if (CMBlockBufferCreateWithMemoryBlock(v5, v20, length, 0, &customBlockSource, 0, length, 0, &cf))
        {
          v22 = 0;
        }

        else
        {
          FigXPCRetain();
          v22 = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer() == 0;
        }
      }

      else
      {
        v22 = 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (!v22)
      {
        break;
      }

      CFArrayAppendValue(v14, 0);
      if (v16 == ++v17)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    fpr_copySampleBuffersArrayFromMessage_cold_1(Mutable, v7, v8, v9, v10, v11, v12, v13, blockBufferOut, v24, SHIDWORD(v24), value);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void __fpr_deferPostNotificationToNotificationQueue_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t remoteXPCPlayer_displayingClosedCaptionsChanged(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    remoteXPCPlayer_updateClosedCaptionHostLayerArray(a2);

    return FigSimpleMutexUnlock();
  }

  return result;
}

__CFString *remoteXPCPlayer_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 9))
  {
    v6 = " INVALIDATED";
  }

  else
  {
    v6 = "";
  }

  if (*(DerivedStorage + 8))
  {
    v7 = " SERVER DIED";
  }

  else
  {
    v7 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPlayer(XPC) %p retainCount: %ld ObjectID: %016llx%s%s>", a1, v5, *DerivedStorage, v6, v7);
  return Mutable;
}

uint64_t remoteXPCPlayer_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  if (!a2)
  {
    remoteXPCPlayer_CopyProperty_cold_4(&cf);
    goto LABEL_53;
  }

  if (!a4)
  {
    remoteXPCPlayer_CopyProperty_cold_3(&cf);
    goto LABEL_53;
  }

  v9 = DerivedStorage;
  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v22);
  if (ObjectID)
  {
    goto LABEL_50;
  }

  if (CFEqual(a2, @"ApplyVideoTrackMatrix"))
  {
    remoteXPCPlayer_CopyProperty_cold_8(v9, a4);
    goto LABEL_46;
  }

  if (CFEqual(@"MasterClock", a2))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    v25 = 0;
    cf = 0;
    xdict = 0;
    v24 = 0;
    if (*(v11 + 184))
    {
      v15 = 0;
      goto LABEL_22;
    }

    v12 = remoteXPCPlayer_GetObjectID(a1, &v25);
    if (!v12)
    {
      v12 = FigXPCCreateBasicMessage();
      if (!v12)
      {
        v12 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v12)
        {
          int64 = xpc_dictionary_get_int64(xdict, "MasterClockType");
          if (int64 == 1)
          {
            HostTimeClock = CMClockGetHostTimeClock();
            if (HostTimeClock)
            {
              HostTimeClock = CFRetain(HostTimeClock);
            }

            goto LABEL_21;
          }

          if (int64 != 2)
          {
            HostTimeClock = 0;
            goto LABEL_21;
          }

          xpc_dictionary_get_uint64(xdict, "MasterClockObjectID");
          v12 = FigAudioDeviceClockXPCRemoteRetainCopiedClock();
          if (!v12)
          {
            HostTimeClock = cf;
LABEL_21:
            v15 = 0;
            *(v11 + 184) = 1;
            *(v11 + 176) = HostTimeClock;
            cf = 0;
LABEL_22:
            v16 = *(v11 + 176);
            if (v16)
            {
              v16 = CFRetain(v16);
            }

            *a4 = v16;
            FigXPCRelease();
            FigXPCRelease();
            if (cf)
            {
              CFRelease(cf);
            }

            FigXPCRemoteClientKillServerOnTimeout();
            goto LABEL_47;
          }
        }
      }
    }

    v15 = v12;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"DisallowVideoLayerDisplayCompositing"))
  {
    remoteXPCPlayer_CopyProperty_cold_7(v9, a4);
    goto LABEL_46;
  }

  if (CFEqual(a2, @"Status"))
  {
    if (*(v9 + 8))
    {
      remoteXPCPlayer_CopyProperty_cold_6(a4);
LABEL_46:
      v15 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    if (CFEqual(a2, @"STSLabel"))
    {
      if (qword_1ED4CA8B8 != -1)
      {
        remoteXPCPlayer_CopyProperty_cold_1();
      }

      if (_MergedGlobals_44)
      {
        remoteXPCPlayer_CopyProperty_cold_5(v9, a4);
        goto LABEL_46;
      }
    }

    if (!CFEqual(a2, @"PlaybackCoordinator") && CFEqual(a2, @"ItemsToPrebuffer"))
    {
      v20 = *(v9 + 24);
      if (v20)
      {
        v20 = CFRetain(v20);
      }

      v15 = 0;
      *a4 = v20;
      goto LABEL_47;
    }
  }

  ObjectID = FigXPCSendStdCopyPropertyMessage();
  if (ObjectID)
  {
LABEL_50:
    v15 = ObjectID;
    goto LABEL_47;
  }

  if (CFEqual(a2, @"Topology"))
  {
    Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v18 = Mutable;
      CFArrayAppendValue(Mutable, @"Remote");
      FigCFArrayAppendArray();
      v15 = 0;
      *a4 = v18;
      goto LABEL_47;
    }

    remoteXPCPlayer_CopyProperty_cold_2(&cf);
LABEL_53:
    v15 = cf;
    goto LABEL_47;
  }

  if (CFEqual(a2, @"PlaybackCoordinator"))
  {
    cf = 0;
    UInt64 = FigCFNumberGetUInt64();
    v15 = FigPlaybackCoordinatorRemoteRetainCopiedPlaybackCoordinator(UInt64, &cf);
    if (!v15)
    {
      *a4 = cf;
    }
  }

  else
  {
    v15 = 0;
    *a4 = 0;
  }

LABEL_47:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

void remoteXPCPlayer_InvalidateItem()
{
  FigPlaybackItemGetFigBaseObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v2)
    {

      v2(v1);
    }
  }
}

uint64_t remoteXPCPlayer_updateVideoLayersBeingServicedAndDisplayList(uint64_t a1, const void *a2)
{
  v3 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigUseVideoReceiverForCALayer())
  {
    remoteXPCPlayer_updateVideoLayersBeingServicedAndDisplayList_cold_1(&v13);
    v11 = v13;
    goto LABEL_16;
  }

  FigReadWriteLockLockForRead();
  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Count = 0;
    if (!a2)
    {
LABEL_7:
      v7 = [MEMORY[0x1E695DFA8] set];
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v9 = [CFArrayGetValueAtIndex(*(DerivedStorage + 64) i)];
          if (v9)
          {
            [v7 addObject:v9];
          }
        }
      }

      FigSimpleMutexLock();
      v10 = *(DerivedStorage + 160);
      if (v10)
      {
        [v10 setBaseDisplayList:{objc_msgSend(v7, "allObjects")}];
      }

      FigSimpleMutexUnlock();
      goto LABEL_15;
    }
  }

  v14.location = 0;
  v14.length = Count;
  if (CFArrayGetFirstIndexOfValue(*(DerivedStorage + 64), v14, a2) != -1)
  {
    goto LABEL_7;
  }

LABEL_15:
  v11 = 0;
LABEL_16:
  FigReadWriteLockUnlockForRead();
  objc_autoreleasePoolPop(v3);
  return v11;
}

uint64_t fpr_setSTSLabelOnSpatialTrackingObjectsApplier(void *cf, uint64_t a2)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == FigVideoTargetGetTypeID()))
  {
    FigVideoTargetGetCMBaseObject();
    v6 = v5;
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 8);
    result = VTable + 8;
    v10 = *(v9 + 56);
    if (v10)
    {

      return v10(v6, @"STSLabel", a2);
    }
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [objc_msgSend(cf "STSLabel")];
      if ((result & 1) == 0)
      {

        return [cf setSTSLabel:a2];
      }
    }
  }

  return result;
}

uint64_t __remoteXPCPlayer_participatesInSTS_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_44 = result;
  return result;
}

uint64_t remoteXPCPlayer_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[8])
  {
    remoteXPCPlayer_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[9])
    {
      remoteXPCPlayer_GetObjectID_cold_2(&v7);
      return v7;
    }

    else if (DerivedStorage[288])
    {
      remoteXPCPlayer_GetObjectID_cold_3(&v8);
      return v8;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

uint64_t remoteXPCPlayer_handleSetProperty(const void *a1, uint64_t a2, const void *a3, __CFArray *a4, BOOL *a5, CFTypeRef *a6, void *a7)
{
  v10 = a4;
  cf[16] = *MEMORY[0x1E69E9840];
  values = a4;
  v13 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    remoteXPCPlayer_handleSetProperty_cold_17(cf);
    goto LABEL_117;
  }

  v15 = DerivedStorage;
  if (CFEqual(@"VideoLayer", a3))
  {
    v27 = CFArrayCreate(*MEMORY[0x1E695E480], &values, v10 != 0, MEMORY[0x1E695E9C0]);
    updated = remoteXPCPlayer_setClientVideoLayerArray(a1, v27);
    if (!v27)
    {
      goto LABEL_14;
    }

    v21 = v27;
    goto LABEL_13;
  }

  if (CFEqual(@"ClosedCaptionLayerArray", a3))
  {
    if (!v10 || (v16 = CFGetTypeID(v10), v16 == CFArrayGetTypeID()))
    {
      cf[0] = 0;
      v17 = CMBaseObjectGetDerivedStorage();
      v18 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], cf);
      if (v18)
      {
        updated = v18;
      }

      else
      {
        FigReadWriteLockLockForWrite();
        if (FigCFEqual())
        {
          FigReadWriteLockUnlockForWrite();
          v19 = 0;
          updated = 0;
          goto LABEL_9;
        }

        v19 = *(v17 + 112);
        if (v10)
        {
          v34 = CFRetain(v10);
        }

        else
        {
          v34 = 0;
        }

        *(v17 + 112) = v34;
        FigReadWriteLockUnlockForWrite();
        FigSimpleMutexLock();
        updated = remoteXPCPlayer_updateClosedCaptionHostLayerArray(a1);
        FigSimpleMutexUnlock();
        if (!v19 || CFArrayGetCount(v19) < 1)
        {
LABEL_9:
          FigDeferredTransactionCommit(cf[0], 0);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (!v19)
          {
            goto LABEL_14;
          }

          v21 = v19;
LABEL_13:
          CFRelease(v21);
          goto LABEL_14;
        }

        FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], v19);
      }

      v19 = 0;
      goto LABEL_9;
    }

    remoteXPCPlayer_handleSetProperty_cold_1(cf);
LABEL_117:
    updated = LODWORD(cf[0]);
    goto LABEL_15;
  }

  if (CFEqual(@"VideoLayerArray", a3))
  {
    if (v10)
    {
      v35 = CFGetTypeID(v10);
      if (v35 != CFArrayGetTypeID())
      {
        remoteXPCPlayer_handleSetProperty_cold_2(cf);
        goto LABEL_117;
      }
    }

    v36 = remoteXPCPlayer_setClientVideoLayerArray(a1, v10);
LABEL_47:
    updated = v36;
    goto LABEL_14;
  }

  if (CFEqual(@"VideoTargetArray", a3))
  {
    v93 = v13;
    v37 = CMBaseObjectGetDerivedStorage();
    if (v10 && (v38 = v37, v39 = CFGetTypeID(v10), v39 == CFArrayGetTypeID()))
    {
      FigReadWriteLockLockForWrite();
      v40 = *(v38 + 304);
      *(v38 + 304) = CFRetain(v10);
      v90 = v38;
      FigReadWriteLockUnlockForWrite();
      v41 = 0;
      if (v40)
      {
        goto LABEL_55;
      }

LABEL_56:
      for (i = 0; v41 < i; i = CFArrayGetCount(v40))
      {
        CFArrayGetValueAtIndex(v40, v41);
        if (!FigCFArrayContainsValue())
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListeners();
        }

        ++v41;
        if (!v40)
        {
          goto LABEL_56;
        }

LABEL_55:
        ;
      }

      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          CFArrayGetValueAtIndex(v10, j);
          getpid();
          SInt32 = FigCFNumberCreateSInt32();
          FigVideoTargetGetCMBaseObject();
          v47 = v46;
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v48)
          {
            v48(v47, @"ResponsibleProcessID", SInt32);
          }

          if (SInt32)
          {
            CFRelease(SInt32);
          }

          if (!FigCFArrayContainsValue())
          {
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterAddWeakListeners();
          }
        }
      }

      v49 = remoteXPCPlayer_reevaluatePendingVideoTargetsAndUpdateServerPlayer(a1);
      v13 = v93;
      if (v49)
      {
        updated = v49;
        v50 = 0;
      }

      else if (FigUseVideoReceiverForCALayer())
      {
        FigSimpleMutexLock();
        v50 = remoteXPCPlayer_copySyncItem(a1);
        FigSimpleMutexUnlock();
        if (v50)
        {
          remoteXPCItem_updateLayerSync(v50, Count > 0, 0);
        }

        updated = remoteXPCPlayer_updateVideoTargetsBeingServicedAndDisplayList(a1, 0, v60, v61, v62, v63, v64, v65, v83, v84, v85, v86, capacity, v90, v93, a5, block, v98, v99, v100);
        if (!updated)
        {
          remoteXPCPlayer_handleSetProperty_cold_3(a1, v91);
        }
      }

      else
      {
        v50 = 0;
        updated = 0;
      }

      if (v40)
      {
        CFRelease(v40);
      }

      if (v50)
      {
        CFRelease(v50);
      }
    }

    else
    {
      remoteXPCPlayer_handleSetProperty_cold_4(cf);
      updated = LODWORD(cf[0]);
    }

    FigXPCRemoteClientKillServerOnTimeout();
LABEL_14:
    *a5 = 1;
    goto LABEL_15;
  }

  if (CFEqual(@"ShouldWaitForVideoTarget", a3))
  {
    if (v10)
    {
      v23 = CFBooleanGetValue(v10) != 0;
    }

    else
    {
      v23 = 0;
    }

    FigReadWriteLockLockForWrite();
    v24 = *(v15 + 336);
    v96 = a5;
    v26 = (!v24 || CFArrayGetCount(v24) < 1 || (v25 = *(v15 + 328)) != 0 && CFArrayGetCount(v25)) && *(v15 + 320) != v23;
    *(v15 + 320) = v23;
    FigReadWriteLockUnlockForWrite();
    if (dword_1ED4CBDB0)
    {
      v104 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_42:
    updated = 0;
    *v96 = !v26;
    if (!v26)
    {
      goto LABEL_15;
    }

    v33 = 0;
    goto LABEL_87;
  }

  if (CFEqual(@"VisualContext", a3))
  {
    updated = 4294954436;
    goto LABEL_14;
  }

  v29 = a6;
  if (CFEqual(a3, @"ApplyVideoTrackMatrix"))
  {
    if (!v10 || (v30 = a7, v31 = CFGetTypeID(v10), v31 != CFBooleanGetTypeID()))
    {
      remoteXPCPlayer_handleSetProperty_cold_6(cf);
      goto LABEL_117;
    }

    Value = CFBooleanGetValue(v10);
    a7 = v30;
    if (Value == *(v15 + 168) || (*(v15 + 168) = Value, FigUseVideoReceiverForCALayer()))
    {
      v33 = 0;
      updated = 0;
LABEL_85:
      a6 = v29;
LABEL_86:
      *a5 = 0;
LABEL_87:
      *a6 = CFRetain(a3);
      if (v10)
      {
        v52 = CFRetain(v10);
      }

      else
      {
        v52 = 0;
      }

      *a7 = v52;
      if (v33)
      {
        goto LABEL_91;
      }

      goto LABEL_15;
    }

    FigSimpleMutexLock();
    v66 = remoteXPCPlayer_copySyncItem(a1);
    FigSimpleMutexUnlock();
    if (v66)
    {
      remoteXPCPlayer_handleSetProperty_cold_5(a1, v66, cf);
      v33 = 0;
      updated = LODWORD(cf[0]);
    }

    else
    {
      v33 = 0;
      updated = 0;
    }

LABEL_84:
    a7 = v30;
    goto LABEL_85;
  }

  if (CFEqual(a3, @"SetVideoLayerBoundsAutomatically"))
  {
    if (!v10 || (v30 = a7, v51 = CFGetTypeID(v10), v51 != CFBooleanGetTypeID()))
    {
      remoteXPCPlayer_handleSetProperty_cold_7(cf);
      goto LABEL_117;
    }

    v33 = 0;
    updated = 0;
    *(v15 + 169) = CFBooleanGetValue(v10);
    goto LABEL_84;
  }

  v94 = a7;
  if (CFEqual(a3, @"DisallowVideoLayerDisplayCompositing"))
  {
    if (!v10 || (v53 = CFGetTypeID(v10), v53 != CFBooleanGetTypeID()))
    {
      remoteXPCPlayer_handleSetProperty_cold_8(cf);
      goto LABEL_117;
    }

    v33 = 0;
    updated = 0;
    *(v15 + 171) = CFBooleanGetValue(v10);
    goto LABEL_99;
  }

  if (CFEqual(@"NetworkCacheURL", a3))
  {
    v36 = remoteXPCPlayer_setNetworkCacheURL(a1, v10, v54, v55, v56, v57, v58, v59, v83, v84, v85, v86, capacity, v89, a7, v95, block, v98, v99, v100);
    goto LABEL_47;
  }

  if (CFEqual(@"UseApplicationAudioSession", a3))
  {
    AudioSessionCreateForPID();
    v33 = 0;
    updated = 0;
LABEL_99:
    a7 = v94;
    goto LABEL_86;
  }

  if (CFEqual(@"MasterClock", a3))
  {
    if (v10)
    {
      v69 = CFGetTypeID(v10);
      if (v69 != CMClockGetTypeID())
      {
        remoteXPCPlayer_handleSetProperty_cold_9(cf);
        goto LABEL_117;
      }
    }

    v36 = remoteXPCPlayer_setMasterClock();
    goto LABEL_47;
  }

  if (CFEqual(@"DisplayList", a3))
  {
    updated = 4294954509;
    goto LABEL_14;
  }

  if (CFEqual(@"UsePerPlayerRemoteNotificationQueue", a3))
  {
    if (!v10 || (v67 = CFGetTypeID(v10), v67 == CFBooleanGetTypeID()))
    {
      if (*MEMORY[0x1E695E4D0] == v10)
      {
        snprintf(cf, 0x60uLL, "com.apple.coremedia.playerremote.notifications.<%p>", a1);
        v68 = FigDispatchQueueCreateWithPriority();
      }

      else
      {
        v68 = 0;
      }

      if (a1)
      {
        CFRetain(a1);
      }

      block = MEMORY[0x1E69E9820];
      v98 = 3221225472;
      v99 = __remoteXPCPlayer_handleSetProperty_block_invoke;
      v100 = &unk_1E7483B48;
      v101 = v68;
      v102 = a1;
      dispatch_async(qword_1ED4CA8B0, &block);
      updated = 0;
      goto LABEL_14;
    }

    remoteXPCPlayer_handleSetProperty_cold_10(cf);
    goto LABEL_117;
  }

  v96 = a5;
  if (CFEqual(@"STSLabel", a3))
  {
    if (qword_1ED4CA8B8 != -1)
    {
      remoteXPCPlayer_CopyProperty_cold_1();
    }

    if (_MergedGlobals_44)
    {
      if (v10)
      {
        v79 = CFGetTypeID(v10);
        if (v79 != CFStringGetTypeID())
        {
          remoteXPCPlayer_handleSetProperty_cold_12(cf);
          goto LABEL_117;
        }

        FigSimpleMutexLock();
        remoteXPCPlayer_removeAllSpatialTrackingLayers(a1);
        v80 = *(v15 + 256);
        *(v15 + 256) = v10;
        CFRetain(v10);
        if (v80)
        {
          CFRelease(v80);
        }

        v26 = 1;
        *(v15 + 264) = 1;
      }

      else
      {
        FigSimpleMutexLock();
        if (*(v15 + 264))
        {
          v81 = *(v15 + 256);
          if (v81)
          {
            CFRelease(v81);
            *(v15 + 256) = 0;
          }

          *(v15 + 264) = 0;
          remoteXPCPlayer_reevaluateSpatialTrackingObjectsAndUpdateLabelIfNecessary(a1);
        }

        v26 = 0;
      }

      FigSimpleMutexUnlock();
      a7 = v94;
      goto LABEL_42;
    }
  }

  if (CFEqual(@"AsynchronousControlQueueHolder", a3))
  {
    updated = 0;
    goto LABEL_14;
  }

  if (!CFEqual(@"ItemsToPrebuffer", a3))
  {
    v33 = 0;
LABEL_165:
    updated = 0;
    a7 = v94;
    a5 = v96;
    goto LABEL_85;
  }

  if (!v10)
  {
    v33 = 0;
    v78 = *(v15 + 24);
    *(v15 + 24) = 0;
LABEL_163:
    if (v78)
    {
      CFRelease(v78);
    }

    goto LABEL_165;
  }

  v70 = CFGetTypeID(v10);
  if (v70 != CFArrayGetTypeID())
  {
    remoteXPCPlayer_handleSetProperty_cold_13(cf);
    goto LABEL_117;
  }

  capacitya = CFArrayGetCount(v10);
  if (capacitya < 1)
  {
    v33 = 0;
    Mutable = v10;
LABEL_162:
    v78 = *(v15 + 24);
    *(v15 + 24) = v10;
    CFRetain(v10);
    v10 = Mutable;
    goto LABEL_163;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacitya, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    remoteXPCPlayer_handleSetProperty_cold_16(cf);
    goto LABEL_117;
  }

  v71 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v71);
    if (!ValueAtIndex || (v73 = ValueAtIndex, v74 = CFGetTypeID(ValueAtIndex), v74 != FigPlaybackItemGetTypeID()))
    {
      remoteXPCPlayer_handleSetProperty_cold_15(cf);
LABEL_177:
      updated = LODWORD(cf[0]);
      goto LABEL_179;
    }

    if (CMBaseObjectGetVTable() != &kRemoteXPCPlaybackItemVTable)
    {
      remoteXPCPlayer_handleSetProperty_cold_14(cf);
      goto LABEL_177;
    }

    CMBaseObjectGetDerivedStorage();
    v75 = remoteXPCItem_copyOwningPlayer(v73);
    v76 = v75;
    if (v75)
    {
      CFRelease(v75);
    }

    if (v76 != a1)
    {
      break;
    }

    UInt64 = FigCFNumberCreateUInt64();
    FigCFArrayAppendValue();
    if (UInt64)
    {
      CFRelease(UInt64);
    }

    if (capacitya == ++v71)
    {
      v33 = Mutable;
      values = Mutable;
      goto LABEL_162;
    }
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v83, v84, v85);
  updated = v82;
LABEL_179:
  v33 = Mutable;
LABEL_91:
  CFRelease(v33);
LABEL_15:
  objc_autoreleasePoolPop(v13);
  return updated;
}

void __remoteXPCPlayer_handleSetProperty_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 40);
  *(DerivedStorage + 48) = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __remoteXPCPlayer_updateClosedCaptionHostLayerArray_block_invoke(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  while (1)
  {
    Count = *(a1 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v2);
    Mutable = CFDictionaryCreateMutable(v3, 2, v4, v5);
    if (Mutable)
    {
      v9 = Mutable;
      FigCFDictionarySetCFIndex();
      [ValueAtIndex bounds];
      FigCFDictionarySetCGRect();
      FigPlayerGetFigBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v12(v11, @"ClosedCaptionLayerBoundsUpdate", v9);
      }

      CFRelease(v9);
    }

    ++v2;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    CFRelease(v14);
  }

  objc_autoreleasePoolPop(context);
}

uint64_t remoteXPCItem_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13[5] = 0;
  if (*(DerivedStorage + 9))
  {
    FigXPCRelease();
    return 0;
  }

  else
  {
    v3 = DerivedStorage;
    v4 = remoteXPCItem_copyOwningPlayer(a1);
    if (v4)
    {
      v5 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v5 = 0;
    }

    FigStopMonitoringMediaServicesProcessDeath();
    *(v3 + 9) = 1;
    v6 = FigXPCRemoteClientDisassociateObject();
    if (!*(v3 + 8) && !*(v3 + 270))
    {
      v6 = FigXPCCreateBasicMessage();
      if (!v6)
      {
        v6 = FigXPCRemoteClientSendAsyncMessage();
      }
    }

    FigSimpleMutexLock();
    if (v5)
    {
      CFSetRemoveValue(*(v5 + 16), a1);
    }

    v7 = *(v3 + 152);
    if (v7)
    {
      FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v7, 0, 0);
    }

    FigSimpleMutexLock();
    v8 = *(v3 + 160);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 160) = 0;
    }

    FigSimpleMutexUnlock();
    v9 = *(v3 + 184);
    if (v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __remoteXPCItem_Invalidate_block_invoke;
      v13[3] = &__block_descriptor_40_e5_v8__0l;
      v13[4] = v3;
      dispatch_sync(v9, v13);
    }

    v10 = *(v3 + 200);
    if (v10)
    {
      CFRelease(v10);
      *(v3 + 200) = 0;
    }

    v11 = *(v3 + 208);
    if (v11)
    {
      CFRelease(v11);
      *(v3 + 208) = 0;
    }

    if (v5)
    {
      remoteXPCItem_Invalidate_cold_1(v5, a1);
    }

    FigXPCRelease();
    if (v4)
    {
      CFRelease(v4);
    }

    FigSimpleMutexUnlock();
  }

  return v6;
}

uint64_t remoteXPCItem_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  remoteXPCItem_Invalidate(a1);
  v3 = DerivedStorage[19];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[19] = 0;
  }

  if (DerivedStorage[18])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[18] = 0;
  }

  if (DerivedStorage[21])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[21] = 0;
  }

  if (DerivedStorage[17])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[17] = 0;
  }

  v4 = DerivedStorage[5];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[5] = 0;
  }

  v5 = DerivedStorage[4];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[4] = 0;
  }

  v6 = DerivedStorage[6];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[6] = 0;
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[3] = 0;
  }

  v8 = DerivedStorage[23];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[23] = 0;
  }

  result = DerivedStorage[2];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    DerivedStorage[2] = 0;
  }

  return result;
}

__CFString *remoteXPCItem_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 9))
  {
    v6 = " INVALIDATED";
  }

  else
  {
    v6 = "";
  }

  if (*(DerivedStorage + 8))
  {
    v7 = " SERVER DIED";
  }

  else
  {
    v7 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackItemRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s%s>", a1, v5, *DerivedStorage, v6, v7);
  return Mutable;
}

uint64_t remoteXPCItem_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  cf = 0;
  v11 = 0;
  if (!a2)
  {
    remoteXPCItem_SetProperty_cold_2(&v15);
LABEL_15:
    v9 = v15;
    goto LABEL_10;
  }

  v6 = remoteXPCItem_copyOwningPlayer(a1);
  if (!v6)
  {
    remoteXPCItem_SetProperty_cold_1(&v15);
    goto LABEL_15;
  }

  v7 = v6;
  ObjectID = remoteXPCItem_GetObjectID(a1, &v14);
  if (ObjectID)
  {
    goto LABEL_7;
  }

  ObjectID = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(a1, a2, a3, 0, remoteXPCItem_handleSetProperty, &v11, &v13, &cf);
  if (ObjectID)
  {
    goto LABEL_7;
  }

  if (!v11)
  {
    ObjectID = FigXPCSendStdSetPropertyMessage();
LABEL_7:
    v9 = ObjectID;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  CFRelease(v7);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_10:
  if (v13)
  {
    CFRelease(v13);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t remoteXPCItem_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[8])
  {
    remoteXPCItem_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[9])
    {
      remoteXPCItem_GetObjectID_cold_2(&v7);
      return v7;
    }

    else if (DerivedStorage[270])
    {
      remoteXPCItem_GetObjectID_cold_3(&v8);
      return v8;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

BOOL remoteXPCItem_copyCurrentDateProperty(uint64_t a1, uint64_t a2, const void *a3, CFDateRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v30, 0, sizeof(v30));
  FigSimpleMutexLock();
  v8 = 0.0;
  if (remoteXPCItem_GetCurrentTime(a1, &v30) || (v30.flags & 1) == 0 || (v9 = *(DerivedStorage + 104), *&range.start.value = *(DerivedStorage + 88), *&range.start.epoch = v9, *&range.duration.timescale = *(DerivedStorage + 120), time.start = v30, !CMTimeRangeContainsTime(&range, &time.start)) || (memset(&range, 0, 24), time.start = v30, rhs = *(DerivedStorage + 88), CMTimeSubtract(&range.start, &time.start, &rhs), v10 = *(DerivedStorage + 80), *&time.start.value = *&range.start.value, time.start.epoch = range.start.epoch, v8 = v10 + CMTimeGetSeconds(&time.start), v8 == 0.0))
  {
    theDict = 0;
    if (!FigXPCSendStdCopyPropertyMessage() && theDict != 0)
    {
      Value = CFDictionaryGetValue(theDict, @"date");
      memset(&range, 0, sizeof(range));
      v13 = CFDictionaryGetValue(theDict, @"timeRange");
      CMTimeRangeMakeFromDictionary(&range, v13);
      if (Value)
      {
        if ((range.start.flags & 1) != 0 && (range.duration.flags & 1) != 0 && !range.duration.epoch && (range.duration.value & 0x8000000000000000) == 0)
        {
          time = range;
          rhs = v30;
          if (CMTimeRangeContainsTime(&time, &rhs))
          {
            memset(&time, 0, 24);
            rhs = v30;
            start = range.start;
            CMTimeSubtract(&time.start, &rhs, &start);
            v14 = *&range.start.epoch;
            *(DerivedStorage + 88) = *&range.start.value;
            *(DerivedStorage + 104) = v14;
            *(DerivedStorage + 120) = *&range.duration.timescale;
            v15 = MEMORY[0x19A8CCD90](Value);
            *(DerivedStorage + 80) = v15;
            rhs = time.start;
            v8 = v15 + CMTimeGetSeconds(&rhs);
          }
        }
      }

      if (theDict)
      {
        CFRelease(theDict);
      }
    }
  }

  FigSimpleMutexUnlock();
  if (v8 != 0.0)
  {
    if (CFEqual(a3, @"currentDate"))
    {
      v16 = CFDateCreate(*MEMORY[0x1E695E480], v8);
LABEL_23:
      *a4 = v16;
      return v8 != 0.0;
    }

    if (CFEqual(a3, @"currentDateAndTime"))
    {
      HIWORD(range.duration.flags) = 0;
      *(&range.duration.timescale + 2) = 0;
      range.start = v30;
      v23 = *MEMORY[0x1E695E480];
      *&range.duration.value = v8;
      LOWORD(range.duration.timescale) = 257;
      v16 = FigDateTimeMomentCopyAsDictionary(&range, v23, v17, v18, v19, v20, v21, v22);
      goto LABEL_23;
    }
  }

  return v8 != 0.0;
}

uint64_t remoteXPCItem_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (a2)
  {
    result = *(DerivedStorage + 32);
    if (result)
    {
      CMTimebaseGetTimeClampedAboveAnchorTime();
      result = 0;
      *a2 = v7;
      v5 = v8;
    }

    else
    {
      v6 = MEMORY[0x1E6960C70];
      *a2 = *MEMORY[0x1E6960C70];
      v5 = *(v6 + 16);
    }

    *(a2 + 16) = v5;
  }

  else
  {
    remoteXPCItem_GetCurrentTime_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t remoteXPCItem_handleSetProperty(const void *a1, uint64_t a2, __CFString *a3, const __CFArray *a4, _BYTE *a5, CFTypeRef *a6, void *a7)
{
  v13 = objc_autoreleasePoolPush();
  v77 = 0;
  if (!a3)
  {
    remoteXPCItem_handleSetProperty_cold_11(&cf);
    goto LABEL_121;
  }

  v73 = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = remoteXPCItem_copyOwningPlayer(a1);
  if (!v15)
  {
    remoteXPCItem_handleSetProperty_cold_10(&cf);
    goto LABEL_121;
  }

  v16 = v15;
  v72 = a6;
  ObjectID = remoteXPCItem_GetObjectID(a1, &v77);
  if (ObjectID)
  {
    goto LABEL_115;
  }

  v71 = a7;
  if (*(CMBaseObjectGetDerivedStorage() + 9))
  {
    remoteXPCItem_handleSetProperty_cold_1(&cf);
    goto LABEL_123;
  }

  if (CFEqual(a3, @"SynchronizedLayers"))
  {
    cf.value = 0;
    v18 = *MEMORY[0x1E695E480];
    ObjectID = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf.value);
    if (!ObjectID)
    {
      if (a4 && (v19 = CFGetTypeID(a4), v19 == CFArrayGetTypeID()))
      {
        Copy = CFArrayCreateCopy(v18, a4);
      }

      else
      {
        Copy = 0;
      }

      FigSimpleMutexLock();
      v21 = DerivedStorage[20];
      DerivedStorage[20] = Copy;
      FigSimpleMutexUnlock();
      if (v21)
      {
        CFRelease(v21);
      }

      FigSimpleMutexLock();
      isSyncItem = remoteXPCItem_isSyncItem(a1);
      FigSimpleMutexUnlock();
      remoteXPCItem_updateLayerSync(a1, isSyncItem, cf.value);
      if (Copy)
      {
        remoteXPCPlayer_updateLayerDurationsWhenItemReady(v16, a1, 2, cf.value);
      }

      FigDeferredTransactionCommit(cf.value, 0);
      if (cf.value)
      {
        CFRelease(cf.value);
      }

      value_low = 0;
      goto LABEL_18;
    }

LABEL_115:
    value_low = ObjectID;
    goto LABEL_19;
  }

  if (!CFEqual(a3, @"VisualContextArray"))
  {
    v70 = v13;
    if (CFEqual(a3, @"VideoCompositor"))
    {
      v38 = DerivedStorage[26];
      if (v38)
      {
        CFRelease(v38);
        DerivedStorage[26] = 0;
      }

      if (a4)
      {
        v39 = CFGetTypeID(a4);
        if (v39 == FigVideoCompositorGetTypeID())
        {
          cf.value = 0;
          ObjectID = FigVideoCompositorRemoteGetObjectID(a4, &cf);
          if (ObjectID)
          {
            goto LABEL_115;
          }

          v40 = DerivedStorage[26];
          DerivedStorage[26] = a4;
          CFRetain(a4);
          if (v40)
          {
            CFRelease(v40);
          }

          v41 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &cf);
          v34 = 0;
          v42 = @"Server_VideoCompositorID";
          a4 = v41;
          goto LABEL_48;
        }
      }

      goto LABEL_94;
    }

    if (CFEqual(a3, @"VideoCompositionProperties"))
    {
      if (a4)
      {
        v47 = CFGetTypeID(a4);
        if (v47 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(a4, @"VideoCompositor");
          v49 = CFDictionaryGetValue(a4, @"VideoCompositorOutputBufferDescription");
          v50 = DerivedStorage[26];
          if (v50)
          {
            CFRelease(v50);
            DerivedStorage[26] = 0;
          }

          if (Value && (v51 = CFGetTypeID(Value), v51 == FigVideoCompositorGetTypeID()))
          {
            cf.value = 0;
            ObjectID = FigVideoCompositorRemoteGetObjectID(Value, &cf);
            if (ObjectID)
            {
              goto LABEL_115;
            }

            v52 = DerivedStorage[26];
            DerivedStorage[26] = Value;
            CFRetain(Value);
            if (v52)
            {
              CFRelease(v52);
            }

            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a4);
            if (!MutableCopy)
            {
              remoteXPCItem_handleSetProperty_cold_4(&v76);
              value_low = LODWORD(v76.value);
              goto LABEL_19;
            }

            v54 = MutableCopy;
            CFDictionaryRemoveValue(MutableCopy, @"VideoCompositor");
            FigCFDictionarySetInt64();
          }

          else
          {
            v54 = 0;
          }

          if (!v49)
          {
            goto LABEL_65;
          }

          v55 = CFGetTypeID(v49);
          if (v55 != CFArrayGetTypeID())
          {
            if (v49 == *MEMORY[0x1E695E738])
            {
LABEL_65:
              Mutable = 0;
              if (v54)
              {
                a4 = v54;
              }

              v45 = v54;
              goto LABEL_95;
            }

            remoteXPCItem_handleSetProperty_cold_5(&cf);
LABEL_130:
            value_low = LODWORD(cf.value);
            goto LABEL_106;
          }

          v64 = *MEMORY[0x1E695E480];
          v65 = remoteXPCItem_copyTagCollectionArrayAsDataArray(*MEMORY[0x1E695E480], v49);
          if (!v65)
          {
            remoteXPCItem_handleSetProperty_cold_7(&cf);
            goto LABEL_130;
          }

          v66 = v65;
          if (v54 || (v54 = CFDictionaryCreateMutableCopy(v64, 0, a4)) != 0)
          {
            CFDictionarySetValue(v54, @"VideoCompositorOutputBufferDescription", v66);
            CFRelease(v66);
            goto LABEL_65;
          }

          remoteXPCItem_handleSetProperty_cold_6(v16, v66, &cf);
LABEL_121:
          value_low = LODWORD(cf.value);
          goto LABEL_109;
        }
      }

      remoteXPCItem_handleSetProperty_cold_8(&cf);
LABEL_123:
      value_low = LODWORD(cf.value);
      goto LABEL_19;
    }

    if (CFEqual(@"AudioProcessingTap", a3))
    {
      if (a4)
      {
        v56 = CFGetTypeID(a4);
        if (v56 != MTAudioProcessingTapGetTypeID())
        {
          remoteXPCItem_handleSetProperty_cold_9(&cf);
          goto LABEL_123;
        }
      }

      cf.value = 0;
      FigSimpleMutexLock();
      v57 = DerivedStorage[25];
      DerivedStorage[25] = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      if (v57)
      {
        CFRelease(v57);
      }

      FigSimpleMutexUnlock();
      if (!a4)
      {
        v41 = 0;
        goto LABEL_84;
      }

      MTAudioProcessingTapXPCRemoteGetObjectID(a4, &cf);
      if (!v58)
      {
        v41 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &cf);
LABEL_84:
        v34 = 0;
        v42 = @"Server_AudioProcessingTapID";
LABEL_87:
        a4 = v41;
        goto LABEL_48;
      }

LABEL_132:
      value_low = v58;
      goto LABEL_19;
    }

    if (!CFEqual(@"PriorImageQueueGauge", a3))
    {
      if (CFEqual(@"TransientTimebaseForCoordinatedPlaybackSynchronization", a3))
      {
        if (a4)
        {
          v60 = CFGetTypeID(a4);
          if (v60 == CMTimebaseGetTypeID())
          {
            cf = **&MEMORY[0x1E6960C70];
            v76 = cf;
            rateOut = 0.0;
            CMTimebaseGetTimeAndRate(a4, &cf, &rateOut);
            if (rateOut != 0.0)
            {
              HostTimeClock = CMClockGetHostTimeClock();
              time = cf;
              CMSyncConvertTime(&v76, &time, a4, HostTimeClock);
            }

            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            time = cf;
            FigCFDictionarySetCMTime();
            time = v76;
            FigCFDictionarySetCMTime();
            FigCFDictionarySetDouble();
            v45 = 0;
            a3 = @"Server-TransientTimebaseDict";
            a4 = Mutable;
            goto LABEL_95;
          }

          Mutable = 0;
          v45 = 0;
          a4 = 0;
        }

        else
        {
          Mutable = 0;
          v45 = 0;
        }

        a3 = @"Server-TransientTimebaseDict";
LABEL_95:
        v41 = 0;
        v34 = 0;
        *v73 = 0;
        v42 = a3;
        goto LABEL_96;
      }

LABEL_94:
      Mutable = 0;
      v45 = 0;
      goto LABEL_95;
    }

    cf.value = 0;
    if (a4 && (v59 = CFGetTypeID(a4), v59 == FigImageQueueGaugeGetTypeID()))
    {
      v58 = FigImageQueueGaugeXPCRemoteGetObjectID(a4, &cf);
      if (v58)
      {
        goto LABEL_132;
      }

      v41 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &cf);
    }

    else
    {
      v41 = 0;
    }

    v34 = 0;
    v42 = @"Server_PriorImageQueueGaugeID";
    goto LABEL_87;
  }

  if (!a4 || (v25 = CFGetTypeID(a4), v25 != CFArrayGetTypeID()))
  {
    remoteXPCItem_handleSetProperty_cold_3(&v76);
LABEL_126:
    value_low = LODWORD(v76.value);
    if (LODWORD(v76.value))
    {
LABEL_18:
      *v73 = 1;
LABEL_19:
      v24 = v16;
LABEL_108:
      CFRelease(v24);
      goto LABEL_109;
    }

    goto LABEL_44;
  }

  v26 = CMBaseObjectGetDerivedStorage();
  v27 = CFGetAllocator(a1);
  Count = CFArrayGetCount(a4);
  if (Count < 1)
  {
    v34 = CFArrayCreateMutable(v27, Count, MEMORY[0x1E695E9C0]);
    if (v34)
    {
LABEL_46:
      v70 = v13;
      v44 = *(v26 + 184);
      cf.value = MEMORY[0x1E69E9820];
      *&cf.timescale = 3221225472;
      cf.epoch = __remoteXPCItem_updateVisualContextArrayAndCopyIDArray_block_invoke;
      v79 = &__block_descriptor_48_e5_v8__0l;
      v80 = v26;
      v81 = a4;
      dispatch_sync(v44, &cf);
      goto LABEL_47;
    }

LABEL_125:
    remoteXPCItem_handleSetProperty_cold_2(&v76);
    goto LABEL_126;
  }

  v29 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, v29);
    if (!ValueAtIndex)
    {
      break;
    }

    v31 = CFGetTypeID(ValueAtIndex);
    if (v31 != FigVisualContextGetTypeID(v31, v32))
    {
      break;
    }

    if (Count == ++v29)
    {
      v33 = CFArrayCreateMutable(v27, Count, MEMORY[0x1E695E9C0]);
      if (!v33)
      {
        goto LABEL_125;
      }

      v34 = v33;
      v35 = 0;
      while (1)
      {
        v36 = CFArrayGetValueAtIndex(a4, v35);
        v76.value = 0;
        FigVisualContextXPCRemoteGetObjectID(v36, &v76);
        if (appended)
        {
          break;
        }

        appended = FigCFArrayAppendInt64();
        if (appended)
        {
          break;
        }

        if (Count == ++v35)
        {
          goto LABEL_46;
        }
      }

      value_low = appended;
      CFRelease(v34);
      goto LABEL_18;
    }
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v68, v69);
  value_low = v43;
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_44:
  v70 = v13;
  v34 = 0;
LABEL_47:
  v41 = 0;
  v42 = @"Server_VisualContextIDArray";
  a4 = v34;
LABEL_48:
  v45 = 0;
  Mutable = 0;
  *v73 = 0;
LABEL_96:
  v54 = v45;
  *v72 = CFRetain(v42);
  if (a4)
  {
    v62 = CFRetain(a4);
  }

  else
  {
    v62 = 0;
  }

  v13 = v70;
  *v71 = v62;
  if (v41)
  {
    CFRelease(v41);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  value_low = 0;
LABEL_106:
  CFRelease(v16);
  if (v54)
  {
    v24 = v54;
    goto LABEL_108;
  }

LABEL_109:
  FigXPCRemoteClientKillServerOnTimeout();
  objc_autoreleasePoolPop(v13);
  return value_low;
}

void __remoteXPCItem_updateVisualContextArrayAndCopyIDArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 192);
  *(v2 + 192) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t remoteXPCItem_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  v17 = 0;
  memset(cf, 0, sizeof(cf));
  v15 = 0;
  v14 = 0;
  if (!a2)
  {
    remoteXPCItem_SetProperties_cold_2(&v18);
    v6 = 0;
    goto LABEL_26;
  }

  v6 = remoteXPCItem_copyOwningPlayer(a1);
  if (!v6)
  {
    remoteXPCItem_SetProperties_cold_1(&v18);
LABEL_26:
    v9 = v18;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, &v17);
  if (ObjectID)
  {
    goto LABEL_23;
  }

  ObjectID = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(a1, a2, 0, remoteXPCItem_handleSetProperty, &v15, cf, &v14);
  if (ObjectID)
  {
    goto LABEL_23;
  }

  if (v15)
  {
LABEL_13:
    v9 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v14, 0, a3);
    goto LABEL_14;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (!ObjectID)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (!ObjectID)
    {
      v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v8)
      {
        v9 = v8;
        v10 = FigCFDictionaryCopyArrayOfKeys();
        v11 = FigCFCopyCompactDescription();
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_11;
      }

      v9 = FigXPCMessageCopyCFDictionary();
      if (!v9)
      {
        goto LABEL_13;
      }

LABEL_14:
      FigXPCRemoteClientKillServerOnTimeout();
      v11 = 0;
      v12 = 0;
      if (!v6)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

LABEL_23:
  v9 = ObjectID;
  v11 = 0;
LABEL_11:
  FigXPCRemoteClientKillServerOnTimeout();
LABEL_15:
  CFRelease(v6);
  v12 = v11;
LABEL_16:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t remoteXPCPlayer_GetRate(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9))
  {
    remoteXPCPlayer_GetRate_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 188);
  }

  return result;
}

uint64_t remoteXPCPlayer_CopyDisplayedCVPixelBuffer(uint64_t a1, const __CFDictionary *ValueAtIndex, CVPixelBufferRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    remoteXPCPlayer_CopyDisplayedCVPixelBuffer_cold_1(&pixelBufferOut);
    return pixelBufferOut;
  }

  if (ValueAtIndex)
  {
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"VideoLayer", &value))
    {
      FigReadWriteLockLockForRead();
      v7 = *(DerivedStorage + 72);
      v8 = *(DerivedStorage + 56);
      if (v8)
      {
        Count = CFArrayGetCount(*(DerivedStorage + 56));
        if (v7)
        {
LABEL_6:
          v10 = CFArrayGetCount(v7);
          goto LABEL_10;
        }
      }

      else
      {
        Count = 0;
        if (v7)
        {
          goto LABEL_6;
        }
      }

      v10 = 0;
LABEL_10:
      ValueAtIndex = 0;
      if (Count >= 1 && Count == v10)
      {
        v24.length = CFArrayGetCount(v8);
        v24.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v24, value);
        if (FirstIndexOfValue == -1)
        {
          ValueAtIndex = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, FirstIndexOfValue);
        }
      }

      FigReadWriteLockUnlockForRead();
      goto LABEL_16;
    }

    ValueAtIndex = 0;
  }

LABEL_16:
  v21 = 0;
  pixelBufferOut = 0;
  xdict = 0;
  v20 = 0;
  if (a3)
  {
    ObjectID = remoteXPCPlayer_GetObjectID(a1, &v21);
    if (ObjectID)
    {
      goto LABEL_31;
    }

    ObjectID = FigXPCCreateBasicMessage();
    if (ObjectID)
    {
      goto LABEL_31;
    }

    if (ValueAtIndex && *MEMORY[0x1E695E738] != ValueAtIndex)
    {
      FigXPCMessageSetCFNumber();
    }

    ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (ObjectID)
    {
LABEL_31:
      v16 = ObjectID;
    }

    else
    {
      v13 = xpc_dictionary_get_value(xdict, "CurrentlyDisplayedIOSurface");
      if (v13 && (v14 = IOSurfaceLookupFromXPCObject(v13)) != 0)
      {
        v15 = v14;
        v16 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v14, 0, &pixelBufferOut);
        if (v16)
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

        CFRelease(v15);
      }

      else
      {
        v16 = 0;
        *a3 = 0;
        pixelBufferOut = 0;
      }
    }
  }

  else
  {
    remoteXPCPlayer_CopyDisplayedCVPixelBuffer_cold_2(&v23);
    v16 = v23;
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v16;
}

uint64_t OUTLINED_FUNCTION_6_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_20_9(uint64_t a1, uint64_t a2, void x2_0, void x3_0, void x4_0, void x5_0, void a7, void a8, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_22_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_25_13(uint64_t a1)
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_30_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_31_10(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{

  return FigXPCCreateBasicMessage();
}

uint64_t OUTLINED_FUNCTION_48_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_50_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigXPCRemoteClientSendSyncMessage();
}

uint64_t OUTLINED_FUNCTION_51_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider(const __CFDictionary *a1, CGDataProvider *a2, uint64_t a3, CGImageRef *a4)
{
  plist[6] = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  bytesPerRow = 0;
  v37 = 0;
  v35 = 0;
  intent = kCGRenderingIntentDefault;
  Value = CFDictionaryGetValue(a1, @"CGImageWidth");
  if (!Value)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_11(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v9 = CFDictionaryGetValue(a1, @"CGImageHeight");
  if (!v9)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_10(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v9, kCFNumberIntType, &v37 + 4);
  v10 = CFDictionaryGetValue(a1, @"CGImageBitsPerComponent");
  if (!v10)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_9(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v10, kCFNumberIntType, &v37);
  v11 = CFDictionaryGetValue(a1, @"CGImageBitsPerPixel");
  if (!v11)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_8(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v11, kCFNumberIntType, &bytesPerRow + 4);
  v12 = CFDictionaryGetValue(a1, @"CGImageBytesPerRow");
  if (!v12)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_7(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v12, kCFNumberIntType, &bytesPerRow);
  v13 = CFDictionaryGetValue(a1, @"CGImageColorSpaceType");
  if (!v13)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_6(plist);
    return LODWORD(plist[0]);
  }

  CFNumberGetValue(v13, kCFNumberIntType, &v35 + 4);
  if (HIDWORD(v35) == 1)
  {
    goto LABEL_13;
  }

  plist[0] = 0;
  v14 = CFDictionaryGetValue(a1, @"CGImageColorSpacePList");
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  BytePtr = CFDataGetBytePtr(v14);
  Length = CFDataGetLength(v15);
  MEMORY[0x19A8D2B00](BytePtr, Length, a3, plist);
  if (!plist[0])
  {
    goto LABEL_13;
  }

  DeviceRGB = CGColorSpaceCreateWithPropertyList(plist[0]);
  if (plist[0])
  {
    CFRelease(plist[0]);
  }

  if (!DeviceRGB)
  {
LABEL_13:
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v19 = CFDictionaryGetValue(a1, @"CGImageBitmapInfo");
  if (!v19)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_5(plist);
    goto LABEL_43;
  }

  CFNumberGetValue(v19, kCFNumberIntType, &v35);
  v20 = CFDictionaryGetValue(a1, @"CGImageShouldInterpolate");
  if (!v20)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_4(plist);
    goto LABEL_43;
  }

  v21 = CFBooleanGetValue(v20);
  v22 = CFDictionaryGetValue(a1, @"CGImageRenderingIntent");
  if (!v22)
  {
    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_3(plist);
    goto LABEL_43;
  }

  CFNumberGetValue(v22, kCFNumberIntType, &intent);
  v23 = CFDictionaryGetValue(a1, @"CGImageDecodeArray");
  if (v23)
  {
    v24 = v23;
    Count = CFArrayGetCount(v23);
    if (Count <= 6)
    {
      v26 = Count;
      if (Count >= 1)
      {
        v27 = 0;
        v28 = plist;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v24, v27);
          if (!ValueAtIndex)
          {
            break;
          }

          CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, v28);
          ++v27;
          ++v28;
          if (v26 == v27)
          {
            goto LABEL_23;
          }
        }

        figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_1(&v39);
        v32 = v39;
        goto LABEL_28;
      }

LABEL_23:
      decode = plist;
      goto LABEL_25;
    }

    figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_2(plist);
LABEL_43:
    v32 = LODWORD(plist[0]);
    goto LABEL_28;
  }

  decode = 0;
LABEL_25:
  v31 = CGImageCreate(valuePtr, SHIDWORD(v37), v37, SHIDWORD(bytesPerRow), bytesPerRow, DeviceRGB, v35, a2, decode, v21 != 0, intent);
  *a4 = v31;
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = 4294954510;
  }

LABEL_28:
  if (DeviceRGB)
  {
    CGColorSpaceRelease(DeviceRGB);
  }

  return v32;
}

uint64_t FigRemote_CreateSerializedDataForCGImage(CGImage *a1, vm_address_t *a2, _DWORD *a3, char *a4, vm_address_t *a5, _DWORD *a6)
{
  theData = 0;
  v38 = 0;
  v35 = 0;
  address = 0;
  v6 = MEMORY[0x1E69E9A60];
  if (!a2)
  {
    FigRemote_CreateSerializedDataForCGImage_cold_7(&v39);
LABEL_44:
    v25 = 0;
    Length = 0;
    v24 = 0;
    v31 = v39;
    goto LABEL_28;
  }

  if (!a3)
  {
    FigRemote_CreateSerializedDataForCGImage_cold_6(&v39);
    goto LABEL_44;
  }

  if (!a5)
  {
    FigRemote_CreateSerializedDataForCGImage_cold_5(&v39);
    goto LABEL_44;
  }

  if (!a6)
  {
    FigRemote_CreateSerializedDataForCGImage_cold_4(&v39);
    goto LABEL_44;
  }

  v12 = *MEMORY[0x1E695E480];
  CGImageParametersDictonary = figremote_CreateCGImageParametersDictonary(a1, *MEMORY[0x1E695E480], &v38);
  v14 = v38;
  if (CGImageParametersDictonary || (CGImageParametersDictonary = MEMORY[0x19A8D2A70](v38, v12, &theData), CGImageParametersDictonary))
  {
    v31 = CGImageParametersDictonary;
    v24 = 0;
    goto LABEL_22;
  }

  Length = CFDataGetLength(theData);
  if (Length)
  {
    v16 = vm_allocate(*v6, &address, Length, 1543503873);
    if (v16)
    {
      v31 = v16;
      v24 = 0;
LABEL_23:
      v25 = 0;
      if (!v14)
      {
        goto LABEL_28;
      }

LABEL_27:
      CFRelease(v14);
      goto LABEL_28;
    }

    v17 = address;
    BytePtr = CFDataGetBytePtr(theData);
    memcpy(v17, BytePtr, Length);
    v19 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    Property = CGImageGetProperty();
    if (Property)
    {
      v21 = Property;
      PixelFormat = IOSurfaceGetPixelFormat(Property);
      if (PixelFormat == 1111970369 || PixelFormat == 1380411457)
      {
        MachPort = IOSurfaceCreateMachPort(v21);
        v24 = 0;
        LODWORD(v25) = 0;
LABEL_21:
        v6 = MEMORY[0x1E69E9A60];
        v31 = 0;
        *a2 = v35;
        *a3 = v25;
        *a5 = address;
        *a6 = Length;
        *a4 = MachPort;
LABEL_22:
        Length = 0;
        goto LABEL_23;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a4, v35, address);
      v31 = v32;
      v24 = 0;
      v25 = 0;
      goto LABEL_26;
    }

    DataProvider = CGImageGetDataProvider(a1);
    v27 = CGDataProviderCopyData(DataProvider);
    v24 = v27;
    if (v27)
    {
      v25 = CFDataGetLength(v27);
      if (v25)
      {
        v28 = vm_allocate(*MEMORY[0x1E69E9A60], &v35, v25, 1543503873);
        if (!v28)
        {
          v29 = v35;
          v30 = CFDataGetBytePtr(v24);
          memcpy(v29, v30, v25);
          if (*v19 == 1)
          {
            kdebug_trace();
          }

          MachPort = 0;
          goto LABEL_21;
        }

        v31 = v28;
LABEL_26:
        v6 = MEMORY[0x1E69E9A60];
        if (!v14)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      FigRemote_CreateSerializedDataForCGImage_cold_1(&v39);
    }

    else
    {
      FigRemote_CreateSerializedDataForCGImage_cold_2(&v39);
      v25 = 0;
    }

    v31 = v39;
    goto LABEL_26;
  }

  FigRemote_CreateSerializedDataForCGImage_cold_3(&v39);
  v24 = 0;
  v25 = 0;
  v31 = v39;
  if (v14)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25 && v35)
  {
    MEMORY[0x19A8D6C70](*v6, v35, v25);
  }

  if (Length && address)
  {
    MEMORY[0x19A8D6C70](*v6, address, Length);
  }

  return v31;
}

uint64_t FigRemote_CreateCGImageFromSerializedDataInBlockBuffer(CMBlockBufferRef theBuffer, const __CFDictionary *a2, uint64_t a3, CGImageRef *a4)
{
  if (!theBuffer)
  {
    FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_4(&lengthAtOffsetOut);
    return lengthAtOffsetOut;
  }

  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  data = 0;
  if (!a2)
  {
    FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_3(&v17);
LABEL_14:
    CGImageFromParametersDictionaryAndCGDataProvider = v17;
    goto LABEL_15;
  }

  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &data);
  if (DataPointer)
  {
    CGImageFromParametersDictionaryAndCGDataProvider = DataPointer;
LABEL_15:
    v12 = theBuffer;
    goto LABEL_7;
  }

  if (lengthAtOffsetOut != totalLengthOut)
  {
    FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_1(&v17);
    goto LABEL_14;
  }

  CFRetain(theBuffer);
  v9 = CGDataProviderCreateWithData(theBuffer, data, lengthAtOffsetOut, figremote_releaseImageDataBlockBufferForCGDataProvider);
  if (!v9)
  {
    FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_2(&v17);
    goto LABEL_14;
  }

  v10 = v9;
  CGImageFromParametersDictionaryAndCGDataProvider = figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider(a2, v9, a3, a4);
  v12 = v10;
LABEL_7:
  CFRelease(v12);
  return CGImageFromParametersDictionaryAndCGDataProvider;
}

void figremote_releaseImageDataBlockBufferForCGDataProvider(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (cf && a2)
  {
    if (a3)
    {
      CFRelease(cf);
    }
  }
}

uint64_t FigRemote_CreateCommonMetadataBinaryPListData(const __CFDictionary *a1, CFAllocatorRef allocator, uint64_t a3)
{
  if (!a1)
  {

    JUMPOUT(0x19A8D2A70);
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionaryApplyFunction(a1, figremote_convertMetadataLocalePropertyFromCFLocaleToCFString, Mutable);
    v8 = MEMORY[0x19A8D2A70](v7, allocator, a3);
    CFRelease(v7);
    return v8;
  }

  else
  {
    FigRemote_CreateCommonMetadataBinaryPListData_cold_1(&v10);
    return v10;
  }
}

void figremote_convertMetadataLocalePropertyFromCFLocaleToCFString(const void *a1, const __CFDictionary *a2, void *cf)
{
  if (a2)
  {
    if (a1)
    {
      if (cf)
      {
        v6 = CFGetAllocator(cf);
        v7 = v6;
        MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
        if (MutableCopy)
        {
          v9 = MutableCopy;
          Value = CFDictionaryGetValue(MutableCopy, @"MetadataProperties");
          if (Value)
          {
            v11 = FigRemote_CopyMetadataItemWithLocaleAsCFString(v7, Value);
            if (v11)
            {
              v12 = v11;
              CFDictionaryReplaceValue(v9, @"MetadataProperties", v11);
              CFRelease(v12);
            }
          }

          CFDictionaryAddValue(cf, a1, v9);

          CFRelease(v9);
        }
      }
    }
  }
}

void figremote_convertMetadataLocalePropertyFromCFStringToCFLocale(const void *a1, const __CFDictionary *a2, void *cf)
{
  if (a2)
  {
    if (a1)
    {
      if (cf)
      {
        v6 = CFGetAllocator(cf);
        v7 = v6;
        MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
        if (MutableCopy)
        {
          v9 = MutableCopy;
          Value = CFDictionaryGetValue(MutableCopy, @"MetadataProperties");
          if (Value)
          {
            v11 = FigRemote_CopyMetadataItemWithLocaleAsCFLocale(v7, Value);
            if (v11)
            {
              v12 = v11;
              CFDictionaryReplaceValue(v9, @"MetadataProperties", v11);
              CFRelease(v12);
            }
          }

          CFDictionaryAddValue(cf, a1, v9);

          CFRelease(v9);
        }
      }
    }
  }
}

CFNumberRef OUTLINED_FUNCTION_2_61(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberIntType, a3);
}

uint64_t FigTTMLPCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      return v8;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
    if (v8)
    {
      return v8;
    }

    v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
    if (v8)
    {
      return v8;
    }

    else
    {
      v10 = MEMORY[0x1E695E9C0];
      *(DerivedStorage + 136) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 144) = CFArrayCreateMutable(a1, 0, v10);
      *a3 = 0;
      a3[1] = 0;
      FigTTMLParseNode(a2, figTTMLP_ConsumeChildNode, a3);
      v12 = v11;
      if (!v11)
      {
        *a4 = 0;
      }
    }
  }

  else
  {
    FigTTMLPCreate_cold_1(&v14);
    return v14;
  }

  return v12;
}

uint64_t figTTMLP_ConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theString = 0;
  value = 0;
  CFGetAllocator(*a2);
  InlineClassNode = FigTTMLParseAndCreateInlineClassNode();
  if (InlineClassNode || (CFGetAllocator(*a2), InlineClassNode = FigTTMLParseAndCreateAnimationClassNode(), InlineClassNode))
  {
    v8 = InlineClassNode;
  }

  else
  {
    v10 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
    v8 = v10;
    if (a3 && !v10)
    {
      v8 = 0;
      *a3 = value;
      value = 0;
    }
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v8;
}

void figTTMLP_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  v3 = *(DerivedStorage + 144);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLP_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"p: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLP_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    result = 0;
    *a2 = ConcatenationOfTwoArrays;
  }

  else
  {
    figTTMLP_CopyChildNodeArray_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigTTMLP_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 4;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigTTMLP_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}