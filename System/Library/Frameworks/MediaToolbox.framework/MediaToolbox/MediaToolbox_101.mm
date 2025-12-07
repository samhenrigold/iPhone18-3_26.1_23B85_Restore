void FigCRABSReadAndCreateBlockBuffer(uint64_t a1)
{
  OUTLINED_FUNCTION_22_3(a1);
  *v2 = 0;
  FigGetUpTimeNanoseconds();
  v3 = OUTLINED_FUNCTION_26_3();
  readOrRef(v3, v4, v5, 0, v2, v6, -1);
  if (v1)
  {
    *v1 = v16;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  OUTLINED_FUNCTION_21_3(UpTimeNanoseconds, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_843();
}

uint64_t FigCRABS_UnhintActiveRanges(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = crabsEnsureInitialized(a1);
  if (!result)
  {
    result = FigRetainProxyLockMutex();
    if (!result)
    {
      if (a2 < 1)
      {
        if (!a2)
        {
          while (1)
          {
            v16 = DerivedStorage[31];
            if (!v16)
            {
              break;
            }

            crabsUnhint(DerivedStorage, v16);
          }
        }
      }

      else
      {
        v8 = 0;
        v9 = DerivedStorage[12];
        do
        {
          v10 = (a3 + 16 * v8);
          v11 = *v10;
          if (v9 == 0x4000)
          {
            v12 = v11 >> 14;
          }

          else if (v9 == 0x10000)
          {
            v12 = v11 >> 16;
          }

          else
          {
            v12 = v11 / v9;
          }

          while (1)
          {
            v14 = v11 + v10[1] - 1;
            if (v9 == 0x4000)
            {
              v15 = v14 >> 14;
            }

            else
            {
              v15 = v9 == 0x10000 ? v14 >> 16 : v14 / v9;
            }

            if (v12 > v15 || v12 >= DerivedStorage[11])
            {
              break;
            }

            v13 = *(DerivedStorage[10] + 8 * v12);
            if (v13)
            {
              if (*(v13 + 8))
              {
                crabsUnhint(DerivedStorage, v13);
                v11 = *v10;
                v9 = DerivedStorage[12];
              }
            }

            ++v12;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      crabsUnlockWithActions(DerivedStorage);
      return 0;
    }
  }

  return result;
}

uint64_t FigCRABS_SyncCache(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = crabsEnsureInitialized(a1);
  if (!result)
  {
    result = FigRetainProxyLockMutex();
    if (!result)
    {
      v4 = crabsSyncCache(DerivedStorage);
      crabsUnlockWithActions(DerivedStorage);
      return v4;
    }
  }

  return result;
}

uint64_t FigCRABS_IterateCache(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 760);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v45 = 0;
  v44 = 0;
  if (a1)
  {
    CFRetain(a1);
  }

  if (!a4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16BC8, 4294954424, "<<<< CRABS >>>>", 9269, v4);
    goto LABEL_49;
  }

  v10 = crabsEnsureInitialized(a1);
  if (v10)
  {
    goto LABEL_49;
  }

  v43 = malloc_type_calloc(1uLL, *(DerivedStorage + 96), 0x100004077774924uLL);
  if (!v43)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16BC8, 4294954420, "<<<< CRABS >>>>", 9275, v4);
LABEL_49:
    v28 = v10;
    if (v9)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v11 = FigRetainProxyLockMutex();
  if (v11)
  {
    v28 = v11;
    goto LABEL_41;
  }

  IsBusy = crabsDiskBackingIsBusy(DerivedStorage, 0);
  if (*(DerivedStorage + 88) < 1)
  {
    v28 = 0;
LABEL_40:
    crabsUnlockWithActions(DerivedStorage);
    goto LABEL_41;
  }

  v41 = v9;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    v45 = 0;
    v44 = 1;
    v18 = *(*(DerivedStorage + 80) + 8 * v17);
    if (!v18)
    {
      goto LABEL_17;
    }

    v19 = *(v18 + 4);
    if (!v19)
    {
      goto LABEL_17;
    }

    if (*(v18 + 80))
    {
      v20 = OUTLINED_FUNCTION_267_0();
      crabsRetainWorking(v20, v21);
      OUTLINED_FUNCTION_14_3(DerivedStorage, *(*(v18 + 80) + 16), v22, v23, v24, v25, &v44);
      OUTLINED_FUNCTION_13_3();
      if (v27)
      {
        goto LABEL_46;
      }

      v28 = v26;
      v29 = OUTLINED_FUNCTION_267_0();
      crabsReleaseWorking(v29, v30, 1, v31);
      if (v28)
      {
        goto LABEL_36;
      }

      goto LABEL_17;
    }

    v32 = *(v18 + 8);
    if ((v32 & 0x200) != 0)
    {
      if (((v32 >> 8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      OUTLINED_FUNCTION_400_1();
      if (!v33)
      {
        goto LABEL_17;
      }
    }

    if (IsBusy)
    {
      goto LABEL_17;
    }

    if (*(DerivedStorage + 504))
    {
      break;
    }

    if ((v32 & 0x80) == 0 || (v34 = OUTLINED_FUNCTION_2_17(), crabsMakeBackingNonvolatile(v34, v18, v35)))
    {
      OUTLINED_FUNCTION_14_3(DerivedStorage, *(v18 + 88), v12, v13, v14, v15, &v44);
      OUTLINED_FUNCTION_13_3();
      if (v27)
      {
LABEL_46:
        v28 = 4294954511;
        goto LABEL_38;
      }

      v28 = v36;
      if ((v32 & 0x80) != 0 && v44)
      {
        v37 = OUTLINED_FUNCTION_267_0();
        crabsMakeBlockVolatileRelativeToAnchor(v37, v38);
      }

      if (v28)
      {
        goto LABEL_36;
      }
    }

LABEL_17:
    ++v17;
    v16 += *(DerivedStorage + 96);
    if (v17 >= *(DerivedStorage + 88))
    {
      v28 = 0;
LABEL_38:
      v9 = v41;
      goto LABEL_40;
    }
  }

  FigFileForkRead();
  if (v45 != v19)
  {
    goto LABEL_17;
  }

  v39 = OUTLINED_FUNCTION_14_3(DerivedStorage, v43, v12, v13, v14, v15, &v44);
  if (!v39)
  {
    goto LABEL_17;
  }

  v28 = v39;
LABEL_36:
  v9 = v41;
  if (v44)
  {
    goto LABEL_40;
  }

LABEL_41:
  free(v43);
  if (v9)
  {
LABEL_42:
    CFRelease(v9);
  }

LABEL_43:
  if (a1)
  {
    CFRelease(a1);
  }

  return v28;
}

double crabsRestoreCache(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4)
{
  if (!theData)
  {
    goto LABEL_33;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    goto LABEL_33;
  }

  v7 = BytePtr;
  if (*BytePtr != 83886080)
  {
    goto LABEL_33;
  }

  if (*(BytePtr + 1) != 1650553443)
  {
    goto LABEL_33;
  }

  v8 = *(a1 + 96);
  if (bswap32(v8) != *(BytePtr + 2))
  {
    goto LABEL_33;
  }

  v9 = bswap32(*(BytePtr + 3));
  v10 = *(a1 + 920);
  if (v10)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v11)
    {
      v11(v10, 0x1F0B64598, 0x1F0B678B8, v8 * v9, 0);
    }
  }

  if (CFDataGetLength(theData) != 16 * v9 + 16)
  {
LABEL_33:
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_207_0();

    return FigSignalErrorAtGM(v21);
  }

  *(a1 + 16) = a3;
  FigSimpleMutexLock();
  if (v9 < 1)
  {
LABEL_28:
    FigSimpleMutexUnlock();
    goto LABEL_29;
  }

  v12 = (v7 + 24);
  while (1)
  {
    v13 = bswap32(*(v12 - 2));
    if (*(a1 + 88) <= v13)
    {
      OUTLINED_FUNCTION_3_12();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_29;
    }

    if (*(*(a1 + 80) + 8 * v13))
    {
      break;
    }

    if (crabsInitBlock(a1, v13))
    {
      goto LABEL_29;
    }

    v14 = *(*(a1 + 80) + 8 * v13);
    *(v14 + 8) |= 0x100u;
    *(v14 + 96) = bswap64(*v12);
    if (*(a1 + 504))
    {
      crabsAddBlockToBackedList(a1, v14);
      v15 = bswap32(*(v12 - 1));
      *(v14 + 4) = v15;
      *(a1 + 64) += v15;
      if (!*(a1 + 920) || !*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!crabsAllocBacking(a1, v14))
      {
        goto LABEL_23;
      }

      v25 = bswap32(*(v12 - 1));
      FigFileForkRead();
      crabsAddBlockToBackedList(a1, v14);
      *(v14 + 4) = v25;
      *(a1 + 64) += v25;
      if (!*(a1 + 920) || !*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        goto LABEL_23;
      }
    }

    v16 = OUTLINED_FUNCTION_20_1();
    v17(v16);
LABEL_23:
    v18 = *(v14 + 4);
    v19 = *(a1 + 96);
    if (v19 == v18 || v13 + 1 == *(a1 + 88) && a4 - v19 * v13 == v18)
    {
      *(v14 + 8) |= 4u;
    }

    v12 += 2;
    if (!--v9)
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_3_12();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_29:
  OUTLINED_FUNCTION_207_0();
  return result;
}

uint64_t crabsFlumeHostUnavailable(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_4(DerivedStorage);
  if (!FigRetainProxyIsInvalidated())
  {
    if (!*(v3 + 108))
    {
      *(v3 + 108) = 1;
      OUTLINED_FUNCTION_19_3();
    }

    *(v3 + 608) = 0;
  }

  return crabsRetainProxyUnlockWithActions(v2);
}

uint64_t crabsFlumeHostAvailable(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_4(DerivedStorage);
  if (!FigRetainProxyIsInvalidated())
  {
    *(v3 + 608) = 0;
    if (*(v3 + 108))
    {
      *(v3 + 108) = 0;
      OUTLINED_FUNCTION_19_3();
      crabsStartIdleRead(v3);
    }
  }

  return crabsRetainProxyUnlockWithActions(v2);
}

uint64_t crabsFlumeConnectionToHostLost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_4(DerivedStorage);
  if (!FigRetainProxyIsInvalidated())
  {
    *(v6 + 108) = 2;
    OUTLINED_FUNCTION_19_3();
    if (a5 && (Value = CFDictionaryGetValue(a5, @"NotePayload_LastError")) != 0)
    {
      v10 = Value;
      v11 = *(v6 + 952);
      *(v6 + 952) = Value;
      CFRetain(Value);
      if (v11)
      {
        CFRelease(v11);
      }

      Code = CFErrorGetCode(v10);
    }

    else
    {
      Code = -1004;
    }

    *(v6 + 944) = Code;
    if ((*(v6 + 504) & 1) == 0 || !crabsIsEntireLengthAvailableInCache(v6))
    {
      *(v6 + 176) |= 0x20u;
    }
  }

  return crabsRetainProxyUnlockWithActions(v5);
}

uint64_t crabsFlumeHostAvailableOnBetterInterface(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_4(DerivedStorage);
  if (!FigRetainProxyIsInvalidated() && *(v2 + 560) == 1)
  {
    if (*(v2 + 568) < 1)
    {
      crabsCancelRead(v2, (v2 + 512), -12932);
      OUTLINED_FUNCTION_13_3();
      if (!v4)
      {
        v5 = *(v2 + 920);
        if (v5)
        {
          v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v6)
          {
            v6(v5, 0x1F0B64598, 0x1F0B3F3D8, 1);
          }
        }

        crabsStartIdleRead(v2);
      }
    }

    else
    {
      *(v2 + 608) = 1;
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t crabsCancelRead_cold_1(uint64_t result, uint64_t a2, int a3, _DWORD *a4)
{
  v7 = result;
  v8 = *(result + 920);
  if (v8)
  {
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 16);
    result = VTable + 16;
    v11 = *(v10 + 32);
    if (v11)
    {
      result = v11(v8, 0x1F0B64598, 0x1F0B655B8, 1);
    }
  }

  v12 = v7 + 512;
  v13 = *(v7 + 920);
  if (v12 == a2)
  {
    if (v13)
    {
      v16 = CMBaseObjectGetVTable();
      v17 = *(v16 + 16);
      result = v16 + 16;
      if (*(v17 + 32))
      {
        goto LABEL_10;
      }
    }
  }

  else if (v13)
  {
    v14 = CMBaseObjectGetVTable();
    v15 = *(v14 + 16);
    result = v14 + 16;
    if (*(v15 + 32))
    {
LABEL_10:
      v18 = OUTLINED_FUNCTION_184();
      result = v19(v18);
    }
  }

  *a4 = a3;
  return result;
}

void crabsCleanupOrphan_cold_1(void *a1, int *a2, _WORD *a3)
{
  crabsMarkBlockUnfilled(a1, a2);
  if ((*a3 & 1) == 0)
  {
    v6 = *a2;
    if (a1[45] == v6)
    {
      a1[45] = a1[11];
    }

    *(a1[10] + 8 * v6) = 0;

    free(a2);
  }
}

uint64_t siocrabsFinishUnlocked(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = a3;
  if (!a2)
  {
    if (!a3)
    {
      if (*(a1 + 12))
      {
        v21 = *a1;
        v22 = *(*(CMBaseObjectGetVTable() + 24) + 24);
        if (v22)
        {
          v24 = *MEMORY[0x1E6960CC0];
          v25 = *(MEMORY[0x1E6960CC0] + 16);
          v22(v21, &v24);
        }
      }
    }

    v10 = FigSimpleMutexLock();
    if (!v10)
    {
      v11 = 0;
      v12 = a1 + 3;
      while (1)
      {
        if (v11 == -12871 && v3 == 0)
        {
          v3 = 2;
        }

        v14 = *v12;
        if (!*v12)
        {
          break;
        }

        v15 = *(v14 + 16);
        *v12 = v15;
        if (!v15)
        {
          a1[4] = v12;
        }

        FigSimpleMutexUnlock();
        v16 = siocrabsFinish(a1, v14, v3, 1);
        v11 = v16;
        if (!v10)
        {
          LODWORD(v10) = v16;
        }

        v17 = FigSimpleMutexLock();
        if (v10)
        {
          v10 = v10;
        }

        else
        {
          v10 = v17;
        }

        if (v17)
        {
          return v10;
        }
      }

      FigSimpleMutexUnlock();
    }

    return v10;
  }

  v6 = FigSimpleMutexLock();
  if (v6)
  {
    return v6;
  }

  v7 = a1 + 3;
  v8 = a1[3];
  if (!v8)
  {
LABEL_7:
    FigSimpleMutexUnlock();
    return 0;
  }

  v9 = a1[3];
  while (*(v9 + 8) != a2)
  {
    v9 = *(v9 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if (v8 == v9)
  {
    v23 = *(v8 + 16);
    *v7 = v23;
    if (v23)
    {
      goto LABEL_32;
    }
  }

  else
  {
    do
    {
      v19 = v8;
      v8 = *(v8 + 16);
    }

    while (v8 != v9);
    v20 = *(v8 + 16);
    *(v19 + 16) = v20;
    v7 = (v19 + 16);
    if (v20)
    {
      goto LABEL_32;
    }
  }

  a1[4] = v7;
LABEL_32:
  FigSimpleMutexUnlock();

  return siocrabsFinish(a1, v9, v3, 1);
}

uint64_t FigCRABSScheduledIOGetEOF(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  number = 0;
  *a2 = 0;
  FigCRABSGetByteStream();
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number);
  if (!result)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, a2);
    CFRelease(number);
    return 0;
  }

  return result;
}

uint64_t FigTTMLFormatReaderCreateFromStream(uint64_t a1, uint64_t a2, CFAllocatorRef allocator, CFTypeRef *a4)
{
  cf = 0;
  v32 = 0;
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  v30 = 0;
  url = 0;
  if (!a1 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_43;
  }

  FigFormatReaderGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v18 = v8;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
    goto LABEL_45;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v16 = 0;
    v17 = 0;
    v18 = 4294954514;
    goto LABEL_27;
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = v11(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &url);
  if (v13)
  {
LABEL_43:
    v18 = v13;
LABEL_45:
    v16 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  if (url)
  {
    v14 = CFURLCopyPathExtension(url);
    v15 = v14;
    if (v14 && CFStringCompare(v14, @"itt", 1uLL) == kCFCompareEqualTo)
    {
      v16 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v16, @"FixUpiTTLeftRegionOrigin", *MEMORY[0x1E695E4C0]);
      LOBYTE(v28) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      MEMORY[0x19A8D3660](&ttmlFormatReader_isSDKVersionBeforeJazz_sOnce, ttmlFormatReader_initIsSDKVersionBeforeJazz);
      if (sTTMLFormatReader_IsSDKVersionBeforeJazz)
      {
        CFDictionarySetValue(v16, @"ConsolidateiTTRegions", *MEMORY[0x1E695E4D0]);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v19 = TTMLParserCreate(Mutable, ttmlFormatReader_appendSampleBuffer, v16, &cf);
  if (v19)
  {
    v18 = v19;
    goto LABEL_25;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (v30)
  {
    v17 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
    *&v28 = ttmlFormatReader_reportSkippedSyntaxElement;
    *(&v28 + 1) = ttmlFormatReader_reportUnsupportedFeatures;
    v20 = TTMLParserRegisterReportingCallbacks(cf, v17, &v28);
    if (v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = TTMLParserParseStream(cf, a1);
  if (v20)
  {
LABEL_15:
    v18 = v20;
    if (!v15)
    {
      goto LABEL_27;
    }

LABEL_26:
    CFRelease(v15);
    goto LABEL_27;
  }

  if (!CFArrayGetCount(Mutable))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v4, v28);
    goto LABEL_15;
  }

  *&v28 = 0;
  FigTrackReaderGetClassID();
  v21 = CMDerivedObjectCreate();
  if (!v21)
  {
    v22 = CMBaseObjectGetDerivedStorage();
    if (Mutable)
    {
      v23 = CFRetain(Mutable);
    }

    else
    {
      v23 = 0;
    }

    v18 = 0;
    *(v22 + 8) = v23;
    v24 = v28;
    DerivedStorage[1] = Mutable;
    DerivedStorage[2] = v17;
    *DerivedStorage = v24;
    *a4 = v32;
    v32 = 0;
    Mutable = 0;
LABEL_25:
    v17 = 0;
    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = v21;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v4, v28);
  if (v15)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (url)
  {
    CFRelease(url);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return v18;
}

uint64_t ttmlFormatReader_CopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    return 4294954453;
  }

  if (a3 != 1952807028)
  {
    return 4294954452;
  }

  if (a4)
  {
    v10 = *DerivedStorage;
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a4 = v10;
  }

  result = 0;
  if (a5)
  {
    *a5 = 1;
  }

  return result;
}

double ttmlCaptionTrackReader_CopyProperty(const void *a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v9 = DerivedStorage;
  if (FigCFEqual() || FigCFEqual())
  {
    v25 = **&MEMORY[0x1E6960CC0];
    if (CFArrayGetCount(v9[1]))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9[1], 0);
      v11 = v9[1];
      Count = CFArrayGetCount(v11);
      v13 = CFArrayGetValueAtIndex(v11, Count - 1);
      memset(&time, 0, sizeof(time));
      CMSampleBufferGetPresentationTimeStamp(&time, ValueAtIndex);
      memset(&v23, 0, sizeof(v23));
      CMSampleBufferGetPresentationTimeStamp(&v23, v13);
      memset(&v22, 0, sizeof(v22));
      CMSampleBufferGetDuration(&v22, v13);
      memset(&v21, 0, sizeof(v21));
      lhs = v23;
      v19 = v22;
      CMTimeAdd(&v21, &lhs, &v19);
      lhs = v21;
      v19 = time;
      CMTimeSubtract(&v25, &lhs, &v19);
    }

    time = v25;
    value = CMTimeCopyAsDictionary(&time, a3);
    goto LABEL_8;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      return result;
    }

    value = *v9;
    if (!*v9)
    {
      v18 = CFGetAllocator(a1);
      if (ttmlFormatReader_createFormatDescriptionArray(v18, v9))
      {
        return result;
      }

      value = *v9;
      if (!*v9)
      {
        goto LABEL_8;
      }
    }

LABEL_16:
    value = CFRetain(value);
LABEL_8:
    *a4 = value;
    return result;
  }

  value = v9[2];
  if (value)
  {
    goto LABEL_16;
  }

  v16 = v9[1];
  CFGetAllocator(a1);
  v25.value = 0;
  FigSampleCursorServiceGetClassID();
  if (!CMDerivedObjectCreate())
  {
    v17 = CMBaseObjectGetDerivedStorage();
    *v17 = CFRetain(v16);
    value = v25.value;
    v9[2] = v25.value;
    if (!value)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19.value, v19.timescale, LODWORD(v19.epoch));
}

uint64_t ttmlFormatReader_createFormatDescriptionArray(const __CFAllocator *a1, CFArrayRef *a2)
{
  formatDescriptionOut = 0;
  if (a2)
  {
    v4 = CMFormatDescriptionCreate(a1, 0x74657874u, 0x61697474u, 0, &formatDescriptionOut);
    if (!v4)
    {
      v5 = CFArrayCreate(a1, &formatDescriptionOut, 1, MEMORY[0x1E695E9C0]);
      if (v5)
      {
        v6 = 0;
        *a2 = v5;
        goto LABEL_5;
      }

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

  v6 = v4;
LABEL_5:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return v6;
}

uint64_t ttmlSampleCursor_StepAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  Count = CFArrayGetCount(*(DerivedStorage + 8));
  v8 = Count - 1;
  if (Count < 1)
  {
    return 4294954454;
  }

  if (v6 + a2 < Count)
  {
    v8 = (v6 + a2) & ~((v6 + a2) >> 63);
  }

  *DerivedStorage = v8;
  result = 0;
  if (a3)
  {
    *a3 = v8 - v6;
  }

  return result;
}

void ttmlFormatReader_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ttmlFormatReader_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ttmlFormatReader_CopyTrackByIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ttmlFormatReader_CopyTrackByID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ttmlSampleCursorCreate_cold_1(int a1, CFTypeRef *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

void ttmlSampleCursorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ttmlSampleCursor_CopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

double ttmlSampleCursor_Copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t fpm_timebaseRateChangedCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(MEMORY[0x1E6960C98] + 16);
  v7 = *MEMORY[0x1E6960C98];
  v8 = v2;
  v9 = *(MEMORY[0x1E6960C98] + 32);
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    if (CMTimebaseGetRate(*(MutableBytePtr + 3)) != 0.0 && *(MutableBytePtr + 26) == 3)
    {
      *(MutableBytePtr + 13) = 0;
    }

    if (CMTimebaseGetRate(*(MutableBytePtr + 3)) >= 0.0)
    {
      if (MutableBytePtr[8553])
      {
        MutableBytePtr[8553] = 0;
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_8_6();
        FigNotificationCenterRemoveWeakListener();
      }
    }

    else if (!MutableBytePtr[8553])
    {
      MutableBytePtr[8553] = 1;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_8_6();
      FigNotificationCenterAddWeakListener();
    }

    fpm_durationAhead(MutableBytePtr, &v7);
    v6[0] = v7;
    v6[1] = v8;
    v6[2] = v9;
    fpm_updateStreamBufferDurationAhead(MutableBytePtr, v6);
    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fpm_streamCacheMissCallback(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  memset(&v59, 0, sizeof(v59));
  memset(&v58, 0, sizeof(v58));
  memset(&v57, 0, sizeof(v57));
  v55 = 0uLL;
  v56 = 0;
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    if (*(MutableBytePtr + 26) != 3)
    {
      CMTimeMake(&v57, 2000, 1000);
      CMTimebaseGetTime(&time1, *(MutableBytePtr + 3));
      time2 = **&MEMORY[0x1E6960CC0];
      v42 = *&time2.value;
      epoch = time2.epoch;
      v6 = CMTimeMaximum(&v59, &time1, &time2);
      OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v14, v38, v40, v42, *(&v42 + 1), v44, v46, v48, v50, v51, v53, v55, *(&v55 + 1), v56, v57.value, *&v57.timescale, v57.epoch, v58.value, *&v58.timescale, v58.epoch, v15, v59.value);
      v16 = OUTLINED_FUNCTION_23_3();
      CMTimeSubtract(v18, v16, v17);
      *&time2.value = v43;
      time2.epoch = epoch;
      CMTimeMaximum(&v58, &time2, &time1);
      time1 = v58;
      if (!fpm_getPlayableDurationFromTime(MutableBytePtr, &time1, &v55, 0, 0, 0))
      {
        time2 = v58;
        v49 = v55;
        v19 = OUTLINED_FUNCTION_23_3();
        v22 = CMTimeAdd(v21, v19, v20);
        OUTLINED_FUNCTION_24_2(v22, v23, v24, v25, v26, v27, v28, v29, *&time1.value, v39, v41, v43, *(&v43 + 1), v45, v47, v49, *(&v49 + 1), v52, v54, v55, *(&v55 + 1), v56, v57.value, *&v57.timescale, v57.epoch, time1.value, *&time1.timescale, time1.epoch, v30, v59.value);
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          *(MutableBytePtr + 13) = 3;
          if (dword_1EAF16BF0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v32 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            v33 = OUTLINED_FUNCTION_109_0(v32);
            if (v33)
            {
              LODWORD(time2.value) = 136315394;
              *(&time2.value + 4) = "fpm_streamCacheMissCallback";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = MutableBytePtr;
              OUTLINED_FUNCTION_18_3(v33, v34, &time1, v35, &dword_1962D5000, v36, v37, "<< FigPlayMonitor >> %s: [%p] sending kFigPlayabilityMonitorNotification_StallWarning");
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRetainProxyRetain();
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_0_20();
          FigDeferNotificationToDispatchQueue();
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fpm_getPlayableDurationFromTime(uint64_t a1, CMTime *a2, uint64_t a3, _BYTE *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v532 = *MEMORY[0x1E69E9840];
  timescale = 0;
  value = 0;
  v529 = 0;
  v528 = 0;
  memset(&v516, 0, sizeof(v516));
  v526 = *MEMORY[0x1E6960C68];
  v11 = *(MEMORY[0x1E6960C68] + 12);
  v527 = *(MEMORY[0x1E6960C68] + 8);
  v12 = *(MEMORY[0x1E6960C68] + 16);
  v13 = MEMORY[0x1E6960CC0];
  v14 = *MEMORY[0x1E6960CC0];
  v524 = *MEMORY[0x1E6960CC0];
  v15 = *(MEMORY[0x1E6960CC0] + 8);
  v16 = *(MEMORY[0x1E6960CC0] + 12);
  v525 = v15;
  v17 = *(MEMORY[0x1E6960CC0] + 16);
  HIWORD(v515) = 0;
  v513 = 0;
  cf = 0;
  v510 = 0u;
  v511 = 0u;
  v508 = 0u;
  v509 = 0u;
  v506 = 0u;
  v507 = 0u;
  v504 = 0;
  dictionaryRepresentation = 0;
  v502 = 0;
  v503 = 0;
  v18 = *(a1 + 80);
  if (v18 < 1)
  {
    v251 = 0;
    v446 = 0x7FFFFFFFFFFFFFFFLL;
    v458 = v17;
    HIDWORD(v470) = v16;
    BYTE4(v410) = 1;
    if (!v18)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v278 = v14;
  HIDWORD(v362) = v11;
  v302 = a3;
  v314 = a4;
  v326 = a5;
  v338 = a6;
  v422 = 0;
  v20 = 0;
  v350 = @"EndPresentationTimeForQueuedSamples";
  v434 = *MEMORY[0x1E695E480];
  v374 = @"EditCursorService";
  p_value = &a2->value;
  v446 = 0x7FFFFFFFFFFFFFFFLL;
  v458 = v17;
  HIDWORD(v410) = 1;
  v21 = v12;
  v290 = v17;
  v266 = __PAIR64__(v15, v16);
  HIDWORD(v470) = v16;
  v398 = v12;
  do
  {
    OUTLINED_FUNCTION_20_2();
    v23 = *(v22 + 32);
    v482 = v21;
    if (v23)
    {
      v24 = CFRetain(v23);
    }

    else
    {
      v24 = 0;
    }

    value = v10->value;
    flags = v10->flags;
    timescale = v10->timescale;
    epoch = v10->epoch;
    ++*(a1 + 64);
    FigSimpleMutexUnlock();
    if (v24)
    {
      FigRenderPipelineGetFigBaseObject();
      v28 = v27;
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v29)
      {
        if (!v29(v28, v350, v434, &dictionaryRepresentation))
        {
          CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
          v528 = time1.value;
          v30 = time1.flags;
          v529 = time1.timescale;
          v31 = time1.epoch;
          if (dictionaryRepresentation)
          {
            CFRelease(dictionaryRepresentation);
          }

          if (v30)
          {
            OUTLINED_FUNCTION_7_7();
            time2.value = v528;
            time2.timescale = v529;
            time2.flags = v30;
            time2.epoch = v31;
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              value = v528;
              timescale = v529;
              flags = v30;
              epoch = v31;
            }
          }
        }
      }
    }

    FigSimpleMutexLock();
    v32 = *(a1 + 64) - 1;
    *(a1 + 64) = v32;
    if (v32)
    {
      if (!v24)
      {
        goto LABEL_17;
      }

LABEL_16:
      CFRelease(v24);
      goto LABEL_17;
    }

    MEMORY[0x19A8D12E0](*(a1 + 72));
    if (v24)
    {
      goto LABEL_16;
    }

LABEL_17:
    OUTLINED_FUNCTION_20_2();
    v34 = *(v33 + 8);
    v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v35)
    {
      v35(v34, &v502 + 4, &v502);
    }

    OUTLINED_FUNCTION_20_2();
    FigTrackReaderGetFigBaseObject();
    v37 = v36;
    v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v38)
    {
      v38(v37, v374, v434, &cf);
    }

    v39 = cf;
    if (cf)
    {
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v40)
      {
        time1 = **&MEMORY[0x1E6960C80];
        v40(v39, &time1, &v513);
      }
    }

    if (v513)
    {
      v520 = value;
      v521 = timescale;
      v519 = 0;
      v518 = 0;
      memset(&time1, 0, sizeof(time1));
      memset(&time2, 0, sizeof(time2));
      v41 = *MEMORY[0x1E6960C68];
      v516.epoch = v12;
      *&v516.value = v41;
      HIBYTE(v515) = 1;
      while (1)
      {
        v42 = v513;
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v43)
        {
          v250 = 4294954514;
          goto LABEL_95;
        }

        v44 = v43(v42, &v506);
        if (v44)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_13_4();
        v53 = OUTLINED_FUNCTION_12_5(v45, v46, v47, v48, v49, v50, v51, v52, v254, v266, v278, v290, v302, v314, v326, v338, v350, v362, v374, p_value, v398, v410, v422, v434, v446, v458, v470, v482, *(&v510 + 1), v511, *(&v511 + 1), v495, immediateSourceTime.value);
        CMTimeAdd(v54, v53, &rhs);
        v55 = timebaseTime.value;
        v56 = timebaseTime.timescale;
        v522 = *&timebaseTime.flags;
        epoch_high = HIDWORD(timebaseTime.epoch);
        OUTLINED_FUNCTION_6_11();
        v65 = OUTLINED_FUNCTION_12_5(v57, v58, v59, v60, v61, v62, v63, v64, v255, v267, v279, v291, v303, v315, v327, v339, v351, v363, v375, v387, v399, v411, v423, v435, v447, v459, v471, v483, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value);
        CMTimeConvertScale(v67, v65, v66, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        OUTLINED_FUNCTION_13_4();
        if (CMTimeCompare(&immediateSourceTime, &timebaseTime) <= 0)
        {
          OUTLINED_FUNCTION_6_11();
          v76 = OUTLINED_FUNCTION_12_5(v68, v69, v70, v71, v72, v73, v74, v75, v254, v266, v278, v290, v302, v314, v326, v338, v350, v362, v374, p_value, v398, v410, v422, v434, v446, v458, v470, v482, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value);
          v78 = CMTimeConvertScale(v77, v76, v56, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          immediateSourceTime.timescale = v56;
          *&immediateSourceTime.flags = v522;
          HIDWORD(immediateSourceTime.epoch) = epoch_high;
          v86 = OUTLINED_FUNCTION_17_5(v78, v79, v80, v81, v82, v83, v84, v85, v256, v268, v280, v292, v304, v316, v328, v340, v352, v364, v376, v388, v400, v412, v424, v436, v448, v460, v472, v484, rhs.value, *&rhs.timescale, rhs.epoch, v495, v55, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, timebaseTime.value);
          v88 = CMTimeCompare(v86, v87);
          if ((v88 & 0x80000000) != 0)
          {
            break;
          }
        }

LABEL_48:
        v216 = v513;
        VTable = CMBaseObjectGetVTable();
        v226 = *(VTable + 16);
        v225 = (VTable + 16);
        v227 = *(v226 + 16);
        if (v227)
        {
          v225 = v227(v216, 1);
          if (!v225)
          {
            continue;
          }
        }

        goto LABEL_55;
      }

      if (BYTE12(v506))
      {
        *&timebaseTime.timescale = v508;
        v106 = OUTLINED_FUNCTION_17_5(v88, v89, v90, v91, v92, v93, v94, v95, v254, v266, v278, v290, v302, v314, v326, v338, v350, v362, v374, p_value, v398, v410, v422, v434, v446, v458, v470, v482, rhs.value, *&rhs.timescale, rhs.epoch, v495, *(&v510 + 1), v511, *(&v511 + 1), v497, SBYTE8(v507));
        if (CMTimeCompare(v106, v107))
        {
          v108 = *(&v507 + 1) / v508 * v511 / *(&v510 + 1);
        }

        else
        {
          v108 = 1.0;
        }

        v109 = *(a1 + 40);
        *&timebaseTime.value = v506;
        timebaseTime.epoch = v507;
        *&immediateSourceTime.value = v509;
        immediateSourceTime.epoch = v510;
        v44 = CMTimebaseSetRateAndAnchorTime(v109, v108, &timebaseTime, &immediateSourceTime);
        if (v44)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_2_18();
        OUTLINED_FUNCTION_13_4();
        v118 = OUTLINED_FUNCTION_17_5(v110, v111, v112, v113, v114, v115, v116, v117, v258, v270, v282, v294, v306, v318, v330, v342, v354, v366, v378, v390, v402, v414, v426, v438, v450, v462, v474, v486, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, timebaseTime.value);
        v120 = CMTimeCompare(v118, v119);
        if (v120)
        {
          OUTLINED_FUNCTION_2_18();
          v120 = CMSyncConvertTime(&time1, &timebaseTime, v125, v126);
        }

        else
        {
          *&time1.value = v506;
          time1.epoch = v507;
        }

        v44 = OUTLINED_FUNCTION_29_3(v120, v121, &timebaseTime, &time2, &v515 + 6, v122, v123, v124, v259, v271, v283, v295, v307, v319, v331, v343, v355, v367, v379, v391, v403, v415, v427, v439, v451, v463, v475, v487, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, time1.value, *&time1.timescale, time1.epoch, v499, time2.value, *&time2.timescale, time2.epoch, v501, v502, v503, v504);
        if (v44)
        {
          goto LABEL_102;
        }

        if (BYTE6(v515))
        {
          v518 = v522;
          v519 = epoch_high;
LABEL_46:
          OUTLINED_FUNCTION_6_11();
          OUTLINED_FUNCTION_15_5();
          v194 = OUTLINED_FUNCTION_12_5(v186, v187, v188, v189, v190, v191, v192, v193, v260, v272, v284, v296, v308, v320, v332, v344, v356, v368, v380, v392, v404, v416, v428, v440, v452, v464, v476, v488, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value);
          v196 = CMTimeAdd(v195, v194, &rhs);
          flags = timebaseTime.flags;
          v521 = timebaseTime.timescale;
          v520 = timebaseTime.value;
          epoch = timebaseTime.epoch;
          *&immediateSourceTime.timescale = *&timebaseTime.timescale;
          immediateSourceTime.epoch = timebaseTime.epoch;
          v204 = OUTLINED_FUNCTION_12_5(v196, v197, v198, v199, v200, v201, v202, v203, v264, v276, v288, v300, v312, v324, v336, v348, v360, v372, v384, v396, v408, v420, v432, v444, v456, v468, v480, v492, rhs.value, *&rhs.timescale, rhs.epoch, v495, timebaseTime.value);
          CMTimeConvertScale(v205, v204, v56, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          OUTLINED_FUNCTION_4_14();
          v214 = OUTLINED_FUNCTION_17_5(v206, v207, v208, v209, v210, v211, v212, v213, v265, v277, v289, v301, v313, v325, v337, v349, v361, v373, v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, timebaseTime.value);
          if (CMTimeCompare(v214, v215) < 0)
          {
            OUTLINED_FUNCTION_2_18();
            v10 = p_value;
            v247 = OUTLINED_FUNCTION_17_5(v239, v240, v241, v242, v243, v244, v245, v246, v254, v266, v278, v290, v302, v314, v326, v338, v350, v362, v374, p_value, v398, v410, v422, v434, v446, v458, v470, v482, rhs.value, *&rhs.timescale, rhs.epoch, v495, *p_value, p_value[1], p_value[2], v497, timebaseTime.value);
            v225 = CMTimeSubtract(v249, v247, v248);
            HIBYTE(v515) = 0;
            v12 = v398;
            goto LABEL_55;
          }

          v10 = p_value;
          v12 = v398;
          goto LABEL_48;
        }

        CMSyncGetRelativeRate(*(a1 + 32), *(a1 + 40));
        *&immediateSourceTime.timescale = *&time2.timescale;
        immediateSourceTime.epoch = time2.epoch;
        v135 = OUTLINED_FUNCTION_12_5(v127, v128, v129, v130, v131, v132, v133, v134, v260, v272, v284, v296, v308, v320, v332, v344, v356, v368, v380, v392, v404, v416, v428, v440, v452, v464, v476, v488, rhs.value, *&rhs.timescale, rhs.epoch, v495, time2.value);
        v138 = CMTimeMultiplyByFloat64(v136, v135, v137);
        OUTLINED_FUNCTION_16_5(v138, v139, v140, v141, v142, v143, v144, v145, v261, v273, v285, v297, v309, v321, v333, v345, v357, v369, v381, v393, v405, v417, v429, v441, v453, v465, v477, v489, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, timebaseTime.value, *&timebaseTime.timescale);
        *&timebaseTime.timescale = *&time2.timescale;
        timebaseTime.epoch = time2.epoch;
        v154 = OUTLINED_FUNCTION_17_5(v146, v147, v148, v149, v150, v151, v152, v153, v262, v274, v286, v298, v310, v322, v334, v346, v358, v370, v382, v394, v406, v418, v430, v442, v454, v466, v478, v490, rhs.value, *&rhs.timescale, rhs.epoch, v495, *(&v507 + 1), v508, *(&v508 + 1), v497, time2.value);
        if (CMTimeCompare(v154, v155))
        {
          OUTLINED_FUNCTION_2_18();
          OUTLINED_FUNCTION_15_5();
          v156 = CMTimeAdd(&immediateSourceTime, &timebaseTime, &rhs);
          v164 = OUTLINED_FUNCTION_12_5(v156, v157, v158, v159, v160, v161, v162, v163, v260, v272, v284, v296, v308, v320, v332, v344, v356, v368, v380, v392, v404, v416, v428, v440, v452, v464, v476, v488, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value);
          CMTimeConvertScale(v165, v164, v56, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          OUTLINED_FUNCTION_4_14();
          v174 = OUTLINED_FUNCTION_17_5(v166, v167, v168, v169, v170, v171, v172, v173, v263, v275, v287, v299, v311, v323, v335, v347, v359, v371, v383, v395, v407, v419, v431, v443, v455, v467, v479, v491, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, timebaseTime.value);
          if (CMTimeCompare(v174, v175) < 1)
          {
            goto LABEL_46;
          }
        }

        OUTLINED_FUNCTION_4_14();
        v184 = OUTLINED_FUNCTION_12_5(v176, v177, v178, v179, v180, v181, v182, v183, v260, v272, v284, v296, v308, v320, v332, v344, v356, v368, v380, v392, v404, v416, v428, v440, v452, v464, v476, v488, v520, __SPAIR64__(flags, v521), epoch, v495, immediateSourceTime.value);
        v98 = CMTimeSubtract(v185, v184, &rhs);
      }

      else
      {
        immediateSourceTime.timescale = v56;
        *&immediateSourceTime.flags = v522;
        HIDWORD(immediateSourceTime.epoch) = epoch_high;
        v96 = OUTLINED_FUNCTION_12_5(v88, v89, v90, v91, v92, v93, v94, v95, v254, v266, v278, v290, v302, v314, v326, v338, v350, v362, v374, p_value, v398, v410, v422, v434, v446, v458, v470, v482, v520, __SPAIR64__(flags, v521), epoch, v495, v55);
        v98 = CMTimeSubtract(v97, v96, &rhs);
      }

      OUTLINED_FUNCTION_16_5(v98, v99, v100, v101, v102, v103, v104, v105, v257, v269, v281, v293, v305, v317, v329, v341, v353, v365, v377, v389, v401, v413, v425, v437, v449, v461, v473, v485, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, timebaseTime.value, *&timebaseTime.timescale);
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_7_7();
    v44 = OUTLINED_FUNCTION_29_3(v228, v229, &time1, &v516, &v515 + 7, v230, v231, v232, v254, v266, v278, v290, v302, v314, v326, v338, v350, v362, v374, p_value, v398, v410, v422, v434, v446, v458, v470, v482, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, timebaseTime.value, *&timebaseTime.timescale, timebaseTime.epoch, v499, time2.value, *&time2.timescale, time2.epoch, v501, v502, v503, v504);
    if (v44)
    {
LABEL_102:
      v250 = v44;
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_7_7();
    timebaseTime = *v10;
    CMTimeSubtract(&time2, &time1, &timebaseTime);
    timebaseTime = v516;
    v225 = CMTimeAdd(&time1, &timebaseTime, &time2);
    v516 = time1;
LABEL_55:
    v21 = v482;
    if (HIBYTE(v515))
    {
      time1.value = v524;
      time1.timescale = v525;
      time1.flags = HIDWORD(v470);
      time1.epoch = v458;
      if ((OUTLINED_FUNCTION_22_4(v225, v218, v219, v220, v221, v222, v223, v224, v254, v266, v278, v290, v302, v314, v326, v338, v350, v362, v374, p_value, v398, v410, v422, v434, v446, v458, v470, v482, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, timebaseTime.value, *&timebaseTime.timescale, timebaseTime.epoch, v499, *&time2.value, time2.epoch, v501, v502, v503, v504, dictionaryRepresentation, v506, *(&v506 + 1), v507, *(&v507 + 1), v508, *(&v508 + 1), v509, v510, *(&v510 + 1), v511, *(&v511 + 1), v512, v513, cf, v515, *&v516.value) & 0x80000000) != 0)
      {
        v524 = v516.value;
        HIDWORD(v470) = v516.flags;
        v525 = v516.timescale;
        v458 = v516.epoch;
      }
    }

    else
    {
      v233 = v446;
      v234 = v446 <= v504;
      if (v446 >= v504)
      {
        v233 = v504;
      }

      v446 = v233;
      v235 = v422;
      if (!v234)
      {
        v235 = v503;
      }

      v422 = v235;
      v237 = v502 == 1835365473 || v502 == 1986618469 || v502 == 1936684398;
      if (v237 && (time1.value = v526, time1.timescale = v527, time1.flags = HIDWORD(v362), time1.epoch = v482, OUTLINED_FUNCTION_22_4(v225, v218, v219, v220, v221, v222, v223, v224, v254, v266, v278, v290, v302, v314, v326, v338, v350, v362, v374, p_value, v398, v410, v235, v434, v233, v458, v470, v482, rhs.value, *&rhs.timescale, rhs.epoch, v495, immediateSourceTime.value, *&immediateSourceTime.timescale, immediateSourceTime.epoch, v497, timebaseTime.value, *&timebaseTime.timescale, timebaseTime.epoch, v499, *&time2.value, time2.epoch, v501, v502, v503, v504, dictionaryRepresentation, v506, *(&v506 + 1), v507, *(&v507 + 1), v508, *(&v508 + 1), v509, v510, *(&v510 + 1), v511, *(&v511 + 1), v512, v513, cf, v515, *&v516.value) >= 1))
      {
        HIDWORD(v410) = 0;
        v526 = v516.value;
        HIDWORD(v362) = v516.flags;
        v527 = v516.timescale;
        v21 = v516.epoch;
      }

      else
      {
        HIDWORD(v410) = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v513)
    {
      CFRelease(v513);
      v513 = 0;
    }

    ++v20;
    v238 = *(a1 + 80);
  }

  while (v20 < v238);
  v12 = v21;
  v7 = v326;
  v6 = v338;
  v9 = v302;
  v8 = v314;
  v251 = v422;
  v11 = HIDWORD(v362);
  v13 = MEMORY[0x1E6960CC0];
  v14 = v278;
  v17 = v290;
  v16 = v266;
  v15 = HIDWORD(v266);
  if (!v238)
  {
LABEL_82:
    v526 = v14;
    v527 = v15;
    v11 = v16;
    v12 = v17;
  }

LABEL_83:
  if ((v11 & 0x1D) != 1)
  {
    v526 = v524;
    v527 = v525;
    v11 = HIDWORD(v470);
    v12 = v458;
  }

  time1 = *v10;
  *&time2.value = *v13;
  time2.epoch = v17;
  if (CMTimeCompare(&time1, &time2))
  {
    v252 = v10->timescale;
    time2.value = v526;
    time2.timescale = v527;
    time2.flags = v11;
    time2.epoch = v12;
    CMTimeConvertScale(&time1, &time2, v252, kCMTimeRoundingMethod_RoundAwayFromZero);
    v526 = time1.value;
    v11 = time1.flags;
    v527 = time1.timescale;
    v12 = time1.epoch;
  }

  if (v9)
  {
    *v9 = v526;
    *(v9 + 8) = v527;
    *(v9 + 12) = v11;
    *(v9 + 16) = v12;
  }

  if (v8)
  {
    *v8 = BYTE4(v410);
  }

  if (v7)
  {
    *v7 = v446;
  }

  v250 = 0;
  if (v6)
  {
    *v6 = v251;
  }

LABEL_95:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v513)
  {
    CFRelease(v513);
  }

  return v250;
}

double fpm_durationAhead(uint64_t a1, _OWORD *a2)
{
  memset(&v8, 0, sizeof(v8));
  if (a2)
  {
    CMTimebaseGetTime(&time1.start, *(a1 + 24));
    time2 = **&MEMORY[0x1E6960CC0];
    CMTimeMaximum(&v8, &time1.start, &time2);
    OUTLINED_FUNCTION_27_3();
    time2 = *(a1 + 216);
    if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0 && (OUTLINED_FUNCTION_27_3(), time2 = *(a1 + 240), CMTimeCompare(&time1.start, &time2) < 0))
    {
      *&time1.start.value = *(a1 + 240);
      time1.start.epoch = *(a1 + 256);
      OUTLINED_FUNCTION_28_4();
      CMTimeSubtract(&time2, &time1.start, &v6);
    }

    else
    {
      CMTimeMake(&time2, 0, 1000000000);
    }

    OUTLINED_FUNCTION_28_4();
    CMTimeRangeMake(&time1, &v6, &time2);
    v4 = *&time1.start.epoch;
    *a2 = *&time1.start.value;
    a2[1] = v4;
    result = *&time1.duration.timescale;
    a2[2] = *&time1.duration.timescale;
  }

  return result;
}

uint64_t fpm_updateStreamBufferDurationAhead(uint64_t result, uint64_t a2)
{
  v9 = 0;
  if (*(result + 8640))
  {
    v2 = result;
    result = *(result + 16);
    if (result)
    {
      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      result = CMBaseObjectIsMemberOfClass();
      if (result)
      {
        CMBaseObject = CMByteStreamGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v6 = *(VTable + 8);
        result = VTable + 8;
        v7 = *(v6 + 48);
        if (!v7)
        {
          goto LABEL_16;
        }

        result = v7(CMBaseObject, *MEMORY[0x1E695FF80], *MEMORY[0x1E695E480], &v9);
        if (result)
        {
          goto LABEL_16;
        }

        Value = CFBooleanGetValue(v9);
        if (v9)
        {
          CFRelease(v9);
        }

        result = FigNetworkUrgencyMonitorSetStreamFullyAvailable(*(v2 + 8640), Value);
        if (!Value)
        {
LABEL_16:
          if ((*(a2 + 12) & 1) != 0 && (*(a2 + 36) & 1) != 0 && !*(a2 + 40) && (*(a2 + 24) & 0x8000000000000000) == 0)
          {
            return FigNetworkUrgencyMonitorSetPlayableRange(*(v2 + 8640));
          }
        }
      }
    }
  }

  return result;
}

void fpm_likelyToKeepUpUsingLivePlaybackAlgorithm(uint64_t a1, int a2, double a3)
{
  v106 = *MEMORY[0x1E69E9840];
  v92 = **&MEMORY[0x1E6960C70];
  cf = 0;
  BOOLean = 0;
  valuePtr = 0.0;
  number = 0;
  v86 = 0.0;
  v87 = 0.0;
  if (FigFormatReaderUtilityGetDuration(*(a1 + 8), 1, &v92))
  {
    return;
  }

  OUTLINED_FUNCTION_29();
  if (!v14)
  {
    return;
  }

  v15 = MEMORY[0x1E695E480];
  if (*(a1 + 104) != 1)
  {
    CMTimebaseGetTime(&time1, *(a1 + 24));
    time2 = **&MEMORY[0x1E6960CC0];
    CMTimeMaximum(&v85, &time1, &time2);
    value = v85.value;
    timescale = v85.timescale;
    if ((v85.flags & 0x1D) != 1)
    {
      return;
    }

    time1.value = value;
    time1.timescale = timescale;
    time1.flags = v85.flags;
    time1.epoch = v85.epoch;
    Seconds = CMTimeGetSeconds(&time1);
    time1 = v92;
    v17 = CMTimeGetSeconds(&time1);
    v18 = 0.0;
    if (v17 <= Seconds)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v17 - Seconds;
    }

    v20 = *v15;
    if (*(a1 + 104) != 1)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v47 && !v47(CMBaseObject, *MEMORY[0x1E695FF80], v20, &BOOLean))
      {
        v21 = CFBooleanGetValue(BOOLean);
        CFRelease(BOOLean);
      }

      else
      {
        v21 = 0;
      }

      if (v17 <= 0.0 || v21)
      {
LABEL_11:
        v22 = CMByteStreamGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v24 = *(VTable + 8);
        isLikelyToKeepUp = VTable + 8;
        v25 = *(v24 + 48);
        v26 = 1.0;
        if (v25)
        {
          isLikelyToKeepUp = v25(v22, *MEMORY[0x1E695FF98], v20, &cf);
          if (!isLikelyToKeepUp)
          {
            FigCFDictionaryGetDoubleIfPresent();
            FigCFDictionaryGetDoubleIfPresent();
            if (v87 != 0.0)
            {
              v26 = v86 / v87 + 1.0;
            }

            CFRelease(cf);
          }
        }

        if (*(a1 + 104) == 1)
        {
          goto LABEL_40;
        }

        if (v21 || v19 - a3 <= 0.1)
        {
          goto LABEL_24;
        }

        v27 = a3 < 3.33333333;
        if (v18 > v87)
        {
          v27 = 1;
        }

        if (a3 >= 5.0 || !v27 || (isLikelyToKeepUp = fpm_isLikelyToKeepUp(a1, 0, Seconds, a3, v87, v26), isLikelyToKeepUp))
        {
LABEL_24:
          DurationDictionary = itemfig_createDurationDictionary(a3);
          *(a1 + 104) = 0x3F80000000000001;
          if (dword_1EAF16BF0)
          {
            v36 = OUTLINED_FUNCTION_3_13(DurationDictionary, v29, v30, v31, v32, v33, v34, v35, v81, v82, v83, SWORD2(v83), SBYTE6(v83), SHIBYTE(v83), v85.value);
            v37 = v85.value;
            if (os_log_type_enabled(v36, HIBYTE(v83)))
            {
              v38 = v37;
            }

            else
            {
              v38 = v37 & 0xFFFFFFFE;
            }

            if (v38)
            {
              LODWORD(time2.value) = 136315650;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLivePlaybackAlgorithm";
              OUTLINED_FUNCTION_10_6();
              HIWORD(time2.epoch) = v39;
              v94 = a3;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_11_6();
              _os_log_send_and_compose_impl(v40, v41, v42, v43, v44, v36, HIBYTE(v83), v45);
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          if (*(a1 + 104) == 2)
          {
LABEL_40:
            if (dword_1EAF16BF0)
            {
              v50 = OUTLINED_FUNCTION_3_13(isLikelyToKeepUp, v7, v8, v9, v10, v11, v12, v13, v81, v82, v83, SWORD2(v83), SBYTE6(v83), SHIBYTE(v83), v85.value);
              v51 = os_log_type_enabled(v50, HIBYTE(v83));
              if (OUTLINED_FUNCTION_109_0(v51))
              {
                LODWORD(time2.value) = 136316674;
                *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLivePlaybackAlgorithm";
                OUTLINED_FUNCTION_10_6();
                HIWORD(time2.epoch) = v52;
                v94 = v53;
                v95 = v52;
                v96 = 0.0;
                v97 = v52;
                v98 = v54;
                v99 = v52;
                v100 = v17 - v19;
                v101 = v52;
                v102 = a3;
                OUTLINED_FUNCTION_145();
                OUTLINED_FUNCTION_11_6();
                _os_log_send_and_compose_impl(v55, v56, v57, v58, v59, v50, HIBYTE(v83), v60);
              }

              OUTLINED_FUNCTION_7();
              isLikelyToKeepUp = fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_44;
          }

          *(a1 + 104) = 2;
          if (dword_1EAF16BF0)
          {
            v71 = OUTLINED_FUNCTION_3_13(isLikelyToKeepUp, v7, v8, v9, v10, v11, v12, v13, v81, v82, v83, SWORD2(v83), SBYTE6(v83), SHIBYTE(v83), v85.value);
            v72 = v85.value;
            if (os_log_type_enabled(v71, HIBYTE(v83)))
            {
              v73 = v72;
            }

            else
            {
              v73 = v72 & 0xFFFFFFFE;
            }

            if (v73)
            {
              LODWORD(time2.value) = 136315906;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLivePlaybackAlgorithm";
              OUTLINED_FUNCTION_10_6();
              HIWORD(time2.epoch) = v74;
              v94 = 0.0;
              v95 = v74;
              v96 = v19;
              OUTLINED_FUNCTION_145();
              OUTLINED_FUNCTION_11_6();
              _os_log_send_and_compose_impl(v75, v76, v77, v78, v79, v71, HIBYTE(v83), v80);
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        FigRetainProxyRetain();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_0_20();
        isLikelyToKeepUp = FigDeferNotificationToDispatchQueue();
        goto LABEL_40;
      }

      v48 = CMByteStreamGetCMBaseObject();
      v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v49 && !v49(v48, *MEMORY[0x1E695FF78], v20, &number))
      {
        CFNumberGetValue(number, kCFNumberFloat64Type, &valuePtr);
        CFRelease(number);
        v21 = 0;
        v18 = valuePtr / v17 * 1.5;
        goto LABEL_11;
      }
    }

    v21 = 0;
    goto LABEL_11;
  }

LABEL_44:
  if (a2)
  {
    if (*(a1 + 104) != 1)
    {
      *(a1 + 104) = 2;
      v61 = *(a1 + 96);
      if (*(a1 + 100) != v61)
      {
        *(a1 + 100) = v61;
        if (dword_1EAF16BF0)
        {
          v62 = OUTLINED_FUNCTION_3_13(isLikelyToKeepUp, v7, v8, v9, v10, v11, v12, v13, v81, v82, v83, SWORD2(v83), SBYTE6(v83), SHIBYTE(v83), v85.value);
          v63 = v85.value;
          if (os_log_type_enabled(v62, type))
          {
            v64 = v63;
          }

          else
          {
            v64 = v63 & 0xFFFFFFFE;
          }

          if (v64)
          {
            LODWORD(time2.value) = 136315394;
            *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLivePlaybackAlgorithm";
            OUTLINED_FUNCTION_10_6();
            OUTLINED_FUNCTION_145();
            OUTLINED_FUNCTION_11_6();
            _os_log_send_and_compose_impl(v65, v66, v67, v68, v69, v62, type, v70);
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRetainProxyRetain();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_0_20();
        FigDeferNotificationToDispatchQueue();
      }
    }
  }
}

double FigTTMLNodeGetActiveTimeRange(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    memset(&v64, 0, sizeof(v64));
    if ((*(DerivedStorage + 44) & 1) == 0 || (*(DerivedStorage + 68) & 1) == 0 || *(DerivedStorage + 72) || (*(DerivedStorage + 56) & 0x8000000000000000) != 0)
    {
      *&v7 = figTTMLNodeGetUnclippedTimeRange(a1, &v64);
      if (!v9)
      {
        v10 = *CMBaseObjectGetDerivedStorage();
        if (v10)
        {
          memset(&v63, 0, sizeof(v63));
          *&v7 = FigTTMLNodeGetActiveTimeRange(v10, &v63);
          if (v26)
          {
            return *&v7;
          }

          v61 = v64;
          otherRange = v63;
          CMTimeRangeGetIntersection(&start, &v61, &otherRange);
          otherRange.start.value = start.start.value;
          flags = start.start.flags;
          otherRange.start.timescale = start.start.timescale;
          epoch = start.start.epoch;
          value = start.duration.value;
          timescale = start.duration.timescale;
          v22 = start.duration.flags;
          v23 = start.duration.epoch;
          if ((start.start.flags & 1) != 0 && (start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0)
          {
            start.start.value = start.duration.value;
            start.start.timescale = start.duration.timescale;
            start.start.flags = start.duration.flags;
            start.start.epoch = 0;
            OUTLINED_FUNCTION_107(MEMORY[0x1E6960CC0]);
            v27 = CMTimeCompare(&start.start, &v61.start);
            if (!v27)
            {
              OUTLINED_FUNCTION_4_15(v27, v28, v29, v30, v31, v32, v33, v34, v61.start.value, *&v61.start.timescale, v61.start.epoch, v61.duration.value, *&v61.duration.timescale, v61.duration.epoch, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v63.start.value, *&v63.start.timescale, v63.start.epoch, v63.duration.value, *&v63.duration.timescale, v63.duration.epoch, *&v64.start.value);
              *&v61.start.value = *&v63.start.value;
              v61.start.epoch = v63.start.epoch;
              v35 = CMTimeCompare(&start.start, &v61.start);
              if (v35 <= 0)
              {
                OUTLINED_FUNCTION_3_14(v35, v36, v37, v38, v39, v40, v41, v42, v61.start.value, *&v61.start.timescale, v61.start.epoch, v61.duration.value, *&v61.duration.timescale, v61.duration.epoch, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v63.start.value, v63.start.timescale);
                epoch = v63.start.epoch;
              }

              else
              {
                v43 = OUTLINED_FUNCTION_2_19(v35, v36, v37, v38, v39, v40, v41, v42, v61.start.value, *&v61.start.timescale, v61.start.epoch, v61.duration.value, *&v61.duration.timescale, v61.duration.epoch, *&start.start.value, *&start.start.epoch, *&start.duration.timescale, *&v63.start.value, *&v63.start.epoch, *&v63.duration.timescale);
                OUTLINED_FUNCTION_4_15(v43, v44, v45, v46, v47, v48, v49, v50, v61.start.value, *&v61.start.timescale, v61.start.epoch, v61.duration.value, *&v61.duration.timescale, v61.duration.epoch, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v63.start.value, *&v63.start.timescale, v63.start.epoch, v63.duration.value, *&v63.duration.timescale, v63.duration.epoch, *&v64.start.value);
                v51 = CMTimeCompare(&v61.start, &start.start);
                if (v51 < 0)
                {
                  OUTLINED_FUNCTION_2_19(v51, v52, v53, v54, v55, v56, v57, v58, v61.start.value, *&v61.start.timescale, v61.start.epoch, v61.duration.value, *&v61.duration.timescale, v61.duration.epoch, *&start.start.value, *&start.start.epoch, *&start.duration.timescale, *&v63.start.value, *&v63.start.epoch, *&v63.duration.timescale);
                  otherRange.start.value = v61.start.value;
                  flags = v61.start.flags;
                  otherRange.start.timescale = v61.start.timescale;
                  epoch = v61.start.epoch;
                }

                else
                {
                  otherRange.start.value = v64.start.value;
                  flags = v64.start.flags;
                  otherRange.start.timescale = v64.start.timescale;
                  epoch = v64.start.epoch;
                }
              }
            }
          }
        }

        else
        {
          *&start.start.value = *MEMORY[0x1E6960CC0];
          start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          OUTLINED_FUNCTION_107(MEMORY[0x1E6960C68]);
          v11 = CMTimeRangeMake(&v63, &start.start, &v61.start);
          OUTLINED_FUNCTION_3_14(v11, v12, v13, v14, v15, v16, v17, v18, v61.start.value, *&v61.start.timescale, v61.start.epoch, v61.duration.value, *&v61.duration.timescale, v61.duration.epoch, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v63.start.value, v63.start.timescale);
          epoch = v63.start.epoch;
          value = v63.duration.value;
          timescale = v63.duration.timescale;
          v22 = v63.duration.flags;
          v23 = v63.duration.epoch;
        }

        v24 = otherRange.start.timescale;
        v25 = otherRange.start.value;
        *(v6 + 32) = otherRange.start.value;
        *(v6 + 40) = v24;
        *(v6 + 44) = flags;
        *(v6 + 48) = epoch;
        *(v6 + 56) = value;
        *(v6 + 64) = timescale;
        *(v6 + 68) = v22;
        *(v6 + 72) = v23;
        *a2 = v25;
        *(a2 + 8) = v24;
        *(a2 + 12) = flags;
        *(a2 + 16) = epoch;
        *(a2 + 24) = value;
        *(a2 + 32) = timescale;
        *(a2 + 36) = v22;
        *(a2 + 40) = v23;
      }
    }

    else
    {
      v7 = *(DerivedStorage + 32);
      v8 = *(DerivedStorage + 64);
      *(a2 + 16) = *(DerivedStorage + 48);
      *(a2 + 32) = v8;
      *a2 = v7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_19();

    *&v7 = FigSignalErrorAtGM(v59);
  }

  return *&v7;
}

double figTTMLNodeGetUnclippedTimeRange(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if ((*(DerivedStorage + 92) & 1) != 0 && (*(DerivedStorage + 116) & 1) != 0 && !*(DerivedStorage + 120) && (*(DerivedStorage + 104) & 0x8000000000000000) == 0)
    {
      v6 = *(DerivedStorage + 80);
      v40 = *(DerivedStorage + 112);
      *(a2 + 16) = *(DerivedStorage + 96);
      *(a2 + 32) = v40;
      *a2 = v6;
      return *&v6;
    }

    v70 = 0;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    if (!FigTTMLNodeGetParameters(a1, &v70))
    {
      v7 = *(v5 + 24);
      v8 = v70;
      v9 = MEMORY[0x1E6960CC0];
      v64 = *MEMORY[0x1E6960CC0];
      *&v66.start.value = *MEMORY[0x1E6960CC0];
      v10 = *(MEMORY[0x1E6960CC0] + 16);
      v66.start.epoch = v10;
      v63 = *MEMORY[0x1E6960C68];
      *&start.start.value = *MEMORY[0x1E6960C68];
      v11 = *(MEMORY[0x1E6960C68] + 16);
      start.start.epoch = v11;
      value = 0;
      if (!CFDictionaryGetValueIfPresent(v7, @"begin", &value) || (FigTTMLParseTimeExpression(v8, value, &v66.start), !v12))
      {
        if (!CFDictionaryGetValueIfPresent(v7, @"dur", &value) || (FigTTMLParseTimeExpression(v8, value, &start.start), !v13))
        {
          if (CFDictionaryGetValueIfPresent(v7, @"end", &value))
          {
            memset(&v72, 0, sizeof(v72));
            FigTTMLParseTimeExpression(v8, value, &v72);
            if (v14)
            {
              return *&v6;
            }

            lhs = v72;
            rhs = v66.start;
            CMTimeSubtract(&duration, &lhs, &rhs);
            start.start = duration;
          }

          v72 = v66.start;
          rhs.value = start.start.value;
          flags = start.start.flags;
          rhs.timescale = start.start.timescale;
          epoch = start.start.epoch;
          v17 = *CMBaseObjectGetDerivedStorage();
          if (!v17)
          {
            *&start.start.value = v64;
            start.start.epoch = v10;
            *&duration.value = v63;
            duration.epoch = v11;
            v18 = CMTimeRangeMake(&v66, &start.start, &duration);
            *&v6 = OUTLINED_FUNCTION_0_21(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v63, *(&v63 + 1), v64, *(&v64 + 1), start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v66.start.value, v66.start.timescale, v66.start.epoch, v66.duration.value, *&v66.duration.timescale);
LABEL_15:
            timescale = duration.timescale;
            v39 = duration.value;
            *(v5 + 80) = duration.value;
            *(v5 + 88) = timescale;
            *(v5 + 92) = v34;
            *(v5 + 96) = v35;
            *(v5 + 104) = v36;
            *(v5 + 112) = v6;
            *(v5 + 120) = v37;
            *a2 = v39;
            *(a2 + 8) = timescale;
            *(a2 + 12) = v34;
            *(a2 + 16) = v35;
            *(a2 + 24) = v36;
            *(a2 + 32) = v6;
            *(a2 + 40) = v37;
            return *&v6;
          }

          value = 0;
          *&v6 = figTTMLNodeGetUnclippedTimeRange(v17, &v67);
          if (!v41 && !FigTTMLNodeGetTimeContainerSemantics(v17, &value))
          {
            if (CFEqual(value, @"par"))
            {
              goto LABEL_25;
            }

            v42 = *(CMBaseObjectGetDerivedStorage() + 8);
            if ((~flags & 0x11) == 0)
            {
              rhs.value = *v9;
              flags = *(v9 + 12);
              rhs.timescale = *(v9 + 8);
              epoch = v10;
            }

            if (v42 == v17)
            {
LABEL_25:
              *&v66.start.value = v67;
              v66.start.epoch = v68;
              duration = v72;
              CMTimeAdd(&start.start, &v66.start, &duration);
              duration.value = rhs.value;
              duration.timescale = rhs.timescale;
              duration.flags = flags;
              duration.epoch = epoch;
              v43 = CMTimeRangeMake(&v66, &start.start, &duration);
              *&v6 = OUTLINED_FUNCTION_0_21(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v63, *(&v63 + 1), v64, *(&v64 + 1), start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v66.start.value, v66.start.timescale, v66.start.epoch, v66.duration.value, *&v66.duration.timescale);
              if ((v34 & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            else
            {
              memset(&v66, 0, sizeof(v66));
              *&v6 = figTTMLNodeGetUnclippedTimeRange(v42, &v66);
              if (v60)
              {
                return *&v6;
              }

              start = v66;
              CMTimeRangeGetEnd(&lhs, &start);
              start.start = v72;
              CMTimeAdd(&duration, &lhs, &start.start);
              lhs.value = rhs.value;
              lhs.timescale = rhs.timescale;
              lhs.flags = flags;
              lhs.epoch = epoch;
              CMTimeRangeMake(&start, &duration, &lhs);
              duration.value = start.start.value;
              v34 = start.start.flags;
              duration.timescale = start.start.timescale;
              v35 = start.start.epoch;
              v36 = start.duration.value;
              v59 = start.duration.epoch;
              *&v6 = *&start.duration.timescale;
              if ((start.start.flags & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            if ((BYTE4(v6) & 1) != 0 && !v59 && (v36 & 0x8000000000000000) == 0)
            {
              v37 = 0;
              goto LABEL_15;
            }

LABEL_32:
            duration.value = v67;
            v34 = HIDWORD(v67);
            duration.timescale = DWORD2(v67);
            v36 = *(&v68 + 1);
            v35 = v68;
            v37 = *(&v69 + 1);
            *&v6 = v69;
            goto LABEL_15;
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_19();

    *&v6 = FigSignalErrorAtGM(v61);
  }

  return *&v6;
}

double FigTTMLNodeCopyNodeValue(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7 = 0;
    if (!FigTTMLNodeGetNodeType(a1, &v7))
    {
      if (v7 == 19 || v7 == 18)
      {
        Designation = FigTTMLExtensionGetDesignation(a1);
        v6 = Designation;
        if (Designation)
        {
          CFRetain(Designation);
        }

        *a2 = v6;
      }

      else if (v7 == 14)
      {
        FigTTMLTextCopyContent(a1, a2);
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void FigTTMLNodeGetTimeContainerSemantics_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigTTMLNodeGetRegionAttributeValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigTTMLNodeCopyAttributes_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigTTMLNodeCopySkippedElementLocalNames_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigTTMLDocumentWriterCreateFrameRateParameterInserter_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigTTMLDocumentWriterCreateFrameRateParameterInserter_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figTTMLDocumentWriterFrameRateParameterInserter_CopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v3);
  *a2 = v4;
}

void figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t figtimebase_synchronizeToMomentInternal(OpaqueCMTimebase *a1, OpaqueCMTimebase *a2, uint64_t a3)
{
  memset(&v19, 0, sizeof(v19));
  if ((*(a3 + 52) & 1) == 0 || (*(a3 + 28) & 1) == 0)
  {
    return 4294954944;
  }

  v5 = CMTimebaseCopySource(a1);
  v6 = v5;
  if (a2)
  {
    v7 = CMTimebaseCopySource(a2);
    v8 = v7;
  }

  else
  {
    v8 = 0;
    v7 = v5;
  }

  v9 = *(a3 + 64);
  HostTimeClock = CMClockGetHostTimeClock();
  v11 = v9 * CMSyncGetRelativeRate(HostTimeClock, v7);
  if (!a2 || (v12 = CMTimebaseSetRate(a2, v11), !v12))
  {
    if (*(a3 + 4) & 8) != 0 && (*(a3 + 108) & 1) != 0 && (*(a3 + 84))
    {
      v18 = *(a3 + 72);
      v13 = CMClockGetHostTimeClock();
      *&time.value = *(a3 + 96);
      v14 = *(a3 + 112);
    }

    else
    {
      v18 = *(a3 + 16);
      v13 = CMClockGetHostTimeClock();
      *&time.value = *(a3 + 40);
      v14 = *(a3 + 56);
    }

    time.epoch = v14;
    CMSyncConvertTime(&v19, &time, v13, v6);
    time = v18;
    v12 = CMTimebaseSetRateAndAnchorTimeWithFlags();
  }

  v15 = v12;
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v15;
}

void *figSyncMomentSource_getSyncMoment(uint64_t a1, int a2, void *a3)
{
  OUTLINED_FUNCTION_1_20();
  result = figtimebase_getSyncMomentInternal(*(v6 + 64), 1, v8);
  if (!result)
  {
    v8[1] |= *(a1 + 232) & a2;
    return memcpy(a3, v8, 0x78uLL);
  }

  return result;
}

void figSyncMomentSource_sendMomentInternal(uint64_t a1)
{
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  context = a1;
  dispatch_sync_f(*(a1 + 80), &context, figSyncMomentSource_retrievePendingMoment);
  if (!DWORD2(v18))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v2(*(a1 + 48), &v12);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = *(&v12 + 1);
      v4[0] = 72;
      v4[1] = DWORD1(v12) & 0xFFFFFFF7;
      v6 = v13;
      v7 = *&v14[0];
      v8 = *(v14 + 8);
      v9 = *(&v14[1] + 1);
      v10 = v15;
      v3(*(a1 + 48), v4);
    }
  }

  CFRelease(a1);
}

void figtimebase_getSyncMomentInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figtimebase_getSyncMomentInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_createInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_createInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_createInternal_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_createInternal_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_createInternal_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_createInternal_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_createInternal_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_createInternal_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_retrievePendingMoment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSyncMomentSource_QueueTimerCallback_cold_1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  a1[14] = 0;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  os_retain(*(a2 + 240));
  voucher_adopt();
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_1_20();
  if (!figtimebase_getSyncMomentInternal(*(a2 + 64), 1, v5))
  {
    memcpy(a1, v5, 0x78uLL);
  }

  FigSimpleMutexUnlock();
  figSyncMomentSource_SendMoment(a2, a1, 1);
  v4 = voucher_adopt();
  os_release(v4);
}

double FigLayerSynchronizerSynchronizeToTimebaseWithDeferredTransaction(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    v5 = OUTLINED_FUNCTION_3_15();
    if (v5)
    {
      v6 = v5;
      *v5 = v3;
      CFRetain(v3);
      v6[1] = a2;
      CFRetain(a2);
      *(v6 + 22) = v2;
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_4_16();

      FigDeferredTransactionAppendChangeWithCallback(v7, v8, v9, v10, v11, v12, v13);
    }

    else
    {
      OUTLINED_FUNCTION_4_16();

      return FigSignalErrorAtGM(v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_16();
  }

  return result;
}

void figlayersync_setLayerTimingToMomentContext(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (FigTimebaseGetSyncMoment(v2, a1 + 16), !v3))
  {
    v4 = *a1;
    v5 = *(a1 + 88);

    figlayersync_synchronizeToMoment(v4, a1 + 16, v5);
  }
}

double FigLayerSynchronizerSynchronizeToMomentWithDeferredTransaction(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    v5 = OUTLINED_FUNCTION_3_15();
    if (v5)
    {
      v6 = v5;
      *v5 = v3;
      CFRetain(v3);
      memcpy(v6 + 2, a2, 0x48uLL);
      *(v6 + 22) = v2;
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_4_16();

      FigDeferredTransactionAppendChangeWithCallback(v7, v8, v9, v10, v11, v12, v13);
    }

    else
    {
      OUTLINED_FUNCTION_4_16();

      return FigSignalErrorAtGM(v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_16();
  }

  return result;
}

void FigLayerSynchronizerConfigurationCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a3 = v5;

  CFRelease(a2);
}

unint64_t clcpcgctsbCEA608DataGeneratorCallback(const void *a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *a2;
  v12 = *(a2 + 2);
  CCData = clcpcgctsbOutputAndReleaseLastCCData(DerivedStorage, &v11);
  if (!CCData)
  {
    v7 = *a2;
    v8 = a2[2];
    *(DerivedStorage + 112) = a2[1];
    *(DerivedStorage + 128) = v8;
    *(DerivedStorage + 96) = v7;
    if (a1)
    {
      v9 = CFRetain(a1);
    }

    else
    {
      v9 = 0;
    }

    *(DerivedStorage + 88) = v9;
  }

  return CCData;
}

void clcpcgctsb_Finish(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!clcpcgctsbAddCaptionDataWithSameTimeRange(DerivedStorage))
  {
    OUTLINED_FUNCTION_4_17(*(DerivedStorage + 8), v2, v3, v4, v5, v6, v7, v8, v10, v11);
    if (!v9 && !clcpcgctsbOutputAndReleaseLastCCData(DerivedStorage, MEMORY[0x1E6960C68]))
    {
      *(DerivedStorage + 16) = 2;
    }
  }
}

const __CFString *clcpcgctsbDoesCaptioDataHaveText(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    result = &stru_1F0B1AFB8;
    return (CFStringGetLength(result) != 0);
  }

  result = v2(a1);
  if (result)
  {
    return (CFStringGetLength(result) != 0);
  }

  return result;
}

uint64_t clcpcgctsbCopyCaptionAnimationAndRegionInformation(uint64_t a1, uint64_t a2, CFTypeRef *a3, void *a4, _DWORD *a5, int *a6, _DWORD *a7)
{
  v23 = *MEMORY[0x1E695EFF8];
  v22 = 0.0;
  FigCaptionDataGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v12 = OUTLINED_FUNCTION_5_12();
    v14 = v13(v12);
    if (v14)
    {
      return v14;
    }

    FigCaptionDataGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v15 = OUTLINED_FUNCTION_5_12();
      v14 = v16(v15);
      if (!v14)
      {
        v17 = 1.0;
        if (*(&v23 + 1) < 1.0 || (v17 = 15.0, *(&v23 + 1) > 15.0))
        {
          *(&v23 + 1) = v17;
        }

        if (*&v23 >= 1.0)
        {
          v18 = 0x4040000000000000;
          if (*&v23 <= 32.0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v18 = 0x3FF0000000000000;
        }

        *&v23 = v18;
LABEL_14:
        if (0.0 >= 2.0)
        {
          if (0.0 <= 4.0)
          {
LABEL_19:
            *a3 = 0;
            v19 = 0;
            *a4 = 0;
            *a5 = *(&v23 + 1);
            *a6 = *&v23;
            *a7 = v22;
            return v19;
          }

          *&v21 = 4.0;
        }

        else
        {
          *&v21 = 2.0;
        }

        v22 = *&v21;
        goto LABEL_19;
      }

      return v14;
    }
  }

  return 4294954514;
}

uint64_t clcpcgctsbCreateCEA608DataGeneratorAttributedString(uint64_t a1, const __CFAllocator *a2, __CFAttributedString **a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(a1);
  }

  else
  {
    v7 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v7);
  v62 = 0;
  cf = 0;
  Mutable = CFAttributedStringCreateMutable(a2, Length);
  v10 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54, v55, v56);
LABEL_77:
    v50 = v13;
    goto LABEL_69;
  }

  CFAttributedStringBeginEditing(Mutable);
  v64.location = 0;
  v64.length = 0;
  CFAttributedStringReplaceString(v10, v64, v7);
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
LABEL_68:
    v50 = 4294954514;
    goto LABEL_69;
  }

  v58 = a3;
  v13 = v12(CMBaseObject, *MEMORY[0x1E6961268], a2, &v62);
  if (v13)
  {
    goto LABEL_77;
  }

  if (v62)
  {
    Count = CFArrayGetCount(v62);
    if (Count >= 1)
    {
      v14 = 0;
      value = *MEMORY[0x1E695E4D0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v62, v14);
        v60[0] = 0;
        v60[1] = 0;
        while (FigCFRangeGetLimit() < Length)
        {
          Limit = FigCFRangeGetLimit();
          v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v17)
          {
            goto LABEL_68;
          }

          v13 = v17(a1, Limit, ValueAtIndex, a2, &cf, v60);
          if (v13)
          {
            goto LABEL_77;
          }

          v18 = cf;
          if (cf)
          {
            CFGetAllocator(v10);
            if (FigCFEqual())
            {
              v19 = CFGetTypeID(v18);
              if (v19 == FigCaptionDynamicStyleGetTypeID())
              {
                if (FigCaptionDynamicStyleGetInitialValue())
                {
                  InitialValue = FigCaptionDynamicStyleGetInitialValue();
                  v21 = CFGetTypeID(InitialValue);
                  if (v21 == CFNumberGetTypeID())
                  {
                    valuePtr[0] = 0;
                    v22 = FigCaptionDynamicStyleGetInitialValue();
                    CFNumberGetValue(v22, kCFNumberSInt32Type, valuePtr);
                    if (valuePtr[0])
                    {
                      v23 = OUTLINED_FUNCTION_1_22();
                      v25 = @"Underline";
LABEL_27:
                      CFAttributedStringSetAttribute(v23, v24, v25, value);
                    }
                  }
                }
              }
            }

            else
            {
              if (!FigCFEqual())
              {
                if (FigCFEqual())
                {
                  v29 = CFGetTypeID(v18);
                  if (v29 != FigCaptionDynamicStyleGetTypeID())
                  {
                    goto LABEL_56;
                  }

                  if (!FigCaptionDynamicStyleGetInitialValue())
                  {
                    goto LABEL_56;
                  }

                  v30 = FigCaptionDynamicStyleGetInitialValue();
                  v31 = CFGetTypeID(v30);
                  if (v31 != CGColorGetTypeID())
                  {
                    goto LABEL_56;
                  }

                  valuePtr[0] = 0;
                  v32 = FigCaptionDynamicStyleGetInitialValue();
                  if (clcpcgctsbGetCEA608DataGeneratorColorFromCGColor(v32, valuePtr))
                  {
                    SInt32 = FigCFNumberCreateSInt32();
                    if (SInt32)
                    {
                      v34 = SInt32;
                      v35 = OUTLINED_FUNCTION_1_22();
                      v37 = @"ForegroundColor";
                      goto LABEL_53;
                    }

LABEL_65:
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_16();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                    v50 = v52;
LABEL_55:
                    if (v50)
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_56;
                  }
                }

                else
                {
                  if (!FigCFEqual())
                  {
                    goto LABEL_56;
                  }

                  v38 = CFGetTypeID(v18);
                  if (v38 != FigCaptionDynamicStyleGetTypeID())
                  {
                    goto LABEL_56;
                  }

                  if (!FigCaptionDynamicStyleGetInitialValue())
                  {
                    goto LABEL_56;
                  }

                  v39 = FigCaptionDynamicStyleGetInitialValue();
                  v40 = CFGetTypeID(v39);
                  if (v40 != CGColorGetTypeID())
                  {
                    goto LABEL_56;
                  }

                  valuePtr[0] = 0;
                  v41 = FigCaptionDynamicStyleGetInitialValue();
                  if (clcpcgctsbGetCEA608DataGeneratorColorFromCGColor(v41, valuePtr))
                  {
                    v42 = FigCFNumberCreateSInt32();
                    if (!v42)
                    {
                      goto LABEL_65;
                    }

                    v43 = v42;
                    v44 = OUTLINED_FUNCTION_1_22();
                    CFAttributedStringSetAttribute(v44, v65, @"BackgroundColor", v43);
                    CFRelease(v43);
                  }

                  v45 = FigCaptionDynamicStyleGetInitialValue();
                  ColorSpace = CGColorGetColorSpace(v45);
                  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB && CGColorGetNumberOfComponents(v45) == 4)
                  {
                    Alpha = CGColorGetAlpha(v45);
                    v48 = Alpha < 0.0 || Alpha > 0.25;
                    if (v48 && (Alpha <= 0.25 || Alpha >= 0.85))
                    {
                      v50 = 0;
                      if (Alpha < 0.85 || Alpha > 1.0)
                      {
                        goto LABEL_55;
                      }
                    }

                    v49 = FigCFNumberCreateSInt32();
                    if (!v49)
                    {
                      goto LABEL_65;
                    }

                    v34 = v49;
                    v35 = OUTLINED_FUNCTION_1_22();
                    v37 = @"BackgroundTransparency";
LABEL_53:
                    CFAttributedStringSetAttribute(v35, v36, v37, v34);
                    CFRelease(v34);
                  }
                }

                v50 = 0;
                goto LABEL_55;
              }

              v26 = CFGetTypeID(v18);
              if (v26 == FigCaptionDynamicStyleGetTypeID())
              {
                if (FigCaptionDynamicStyleGetInitialValue())
                {
                  v27 = FigCaptionDynamicStyleGetInitialValue();
                  v28 = CFGetTypeID(v27);
                  if (v28 == CFStringGetTypeID())
                  {
                    FigCaptionDynamicStyleGetInitialValue();
                    if (FigCFEqual())
                    {
                      v23 = OUTLINED_FUNCTION_1_22();
                      v25 = @"Italic";
                      goto LABEL_27;
                    }
                  }
                }
              }
            }

LABEL_56:
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }
          }
        }

        ++v14;
      }

      while (v14 != Count);
    }
  }

  CFAttributedStringEndEditing(v10);
  v50 = 0;
  *v58 = v10;
  v10 = 0;
LABEL_69:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v50;
}

uint64_t clcpcgctsbGetCEA608DataGeneratorColorFromCGColor(CGColor *a1, int *a2)
{
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB && CGColorGetNumberOfComponents(a1) == 4)
  {
    Components = CGColorGetComponents(a1);
    v6 = llround(Components[2]);
    if (!(llround(*Components) | llround(Components[1])) && !v6)
    {
      v7 = 7;
LABEL_21:
      *a2 = v7;
      return 1;
    }

    OUTLINED_FUNCTION_3_16();
    if (v11)
    {
      v7 = 2;
      goto LABEL_21;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 1;
    }

    v13 = v12;
    if (v13 == 1 && v8 == 0)
    {
      v7 = 4;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_3_16();
    if (v18)
    {
      v7 = 6;
      goto LABEL_21;
    }

    if (v16)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17 == 1;
    }

    v21 = v20;
    if (v21 == 1 && v15 == 0)
    {
      v7 = 1;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_3_16();
    if (v26)
    {
      v7 = 3;
      goto LABEL_21;
    }

    v28 = v24 == 1 && v25 == 1;
    if (v28 && v23 == 0)
    {
      v7 = 5;
      goto LABEL_21;
    }

    v7 = 0;
    if (v23 == 1 && v28)
    {
      goto LABEL_21;
    }
  }

  return 0;
}

void clcpccv_Finish(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!cclcpccvAppendCaptionDataWithSameTimeRange(DerivedStorage))
  {
    OUTLINED_FUNCTION_4_17(*(DerivedStorage + 8), v2, v3, v4, v5, v6, v7, v8, v10, v11);
    if (!v9)
    {
      *(DerivedStorage + 16) = 2;
    }
  }
}

double FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigCLCPCaptionConversionValidatorCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigCLCPCaptionConversionValidatorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCLCPCaptionConversionValidatorCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgctsb_CopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = v3;
}

void clcpcgctsb_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgctsb_AddCaptionGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgctsb_AddCaptionGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgctsb_AddCaptionGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgctsbAddCaptionDataWithSameTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpcgctsbOutputAndReleaseLastCCData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpccv_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpccv_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpccv_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpccv_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpccv_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpccv_AppendAndValidateCaptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpccv_AppendAndValidateCaptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpccv_AppendAndValidateCaptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void clcpccv_AppendAndValidateCaptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cclcpccvAppendCaptionDataWithSameTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL cclcpccvAppendCaptionDataWithSameTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void cclcpccvAppendCaptionDataWithSameTimeRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void cclcpccvAppendCaptionDataWithSameTimeRange_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

__n128 cclcpccvAppendCaptionDataWithSameTimeRange_cold_5(uint64_t a1, __n128 *a2)
{
  v2 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *a1 = *MEMORY[0x1E6960CC0];
  v4 = *(v2 + 16);
  *(a1 + 16) = v4;
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  return result;
}

uint64_t RTMStartGeneralRecording(int a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040ED882C02uLL);
  if (!v4)
  {
    return 4294967188;
  }

  v5 = v4;
  if (a1 && (v7 = TakeGeneralMeasurements(v4), v7))
  {
    v8 = v7;
    free(v5);
    return v8;
  }

  else
  {
    GetElapsedTime(v5 + 2);
    result = 0;
    *a2 = v5;
  }

  return result;
}

uint64_t TakeGeneralMeasurements(uint64_t a1)
{
  *task_info_out = 0u;
  v15 = 0u;
  v2 = MEMORY[0x1E69E9A60];
  v3 = *MEMORY[0x1E69E9A60];
  if (!_MergedGlobals_21)
  {
    v4 = malloc_default_zone();
    _MergedGlobals_21 = v4->malloc;
    off_1ED4CA4B8 = v4->calloc;
    off_1ED4CA4C0 = v4->valloc;
    off_1ED4CA4C8 = v4->free;
    off_1ED4CA4D0 = v4->realloc;
    v4->malloc = instrum_malloc;
    v4->calloc = instrum_calloc;
    v4->valloc = instrum_valloc;
    v4->free = instrum_free;
    v4->realloc = instrum_realloc;
  }

  task_info_outCnt = 8;
  result = task_info(v3, 1u, task_info_out, &task_info_outCnt);
  if (!result)
  {
    v6 = *task_info_out;
    v7 = dword_1ED4CA4F4;
    if (!dword_1ED4CA4F4)
    {
      mach_timebase_info(&dword_1ED4CA4F0);
      v7 = dword_1ED4CA4F4;
    }

    v8 = dword_1ED4CA4F0;
    v9 = v7;
    *a1 = v6 * dword_1ED4CA4F0 / v7 / 1000;
    v10 = *&task_info_out[2];
    if (!v7)
    {
      mach_timebase_info(&dword_1ED4CA4F0);
      v8 = dword_1ED4CA4F0;
      v9 = dword_1ED4CA4F4;
    }

    *(a1 + 8) = v10 * v8 / v9 / 1000;
    GetElapsedTime((a1 + 16));
    *(a1 + 24) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    result = AddTotalForVMObject(*v2, 0, 0, (a1 + 24), &v16);
    if (result <= 1)
    {
      result = 0;
      v11 = qword_1ED4CA4E0;
      v12 = qword_1ED4CA4E8;
      *(a1 + 80) = qword_1ED4CA4D8;
      *(a1 + 88) = v12;
      *(a1 + 96) = v11;
    }
  }

  return result;
}

uint64_t RTMCopyGeneralMetrics(int64x2_t *a1, const void *a2, __CFDictionary **a3)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = TakeGeneralMeasurements(&v16);
  if (v6)
  {
    return v6;
  }

  v7 = vsubq_s64(v17, a1[1]);
  v16 = vsubq_s64(v16, *a1);
  v17 = v7;
  v8 = vsubq_s64(v18, a1[2]);
  v9 = vsubq_s64(v19, a1[3]);
  v10 = v22 - a1[6].i64[0];
  *&v21 = v21 - a1[5].i64[0];
  v22 = v10;
  v18 = v8;
  v19 = v9;
  v20 = vsubq_s64(v20, a1[4]);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294967188;
  }

  v12 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"Label", a2);
  }

  v13 = FigCFDictionarySetInt64();
  if (v13 || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13) || (v13 = FigCFDictionarySetInt64(), v13))
  {
    v14 = v13;
    goto LABEL_17;
  }

  v14 = FigCFDictionarySetInt64();
  if (v14)
  {
LABEL_17:
    CFRelease(v12);
    return v14;
  }

  *a3 = v12;
  return v14;
}

uint64_t RTMWriteResultsToFile(CFPropertyListRef propertyList, FILE *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 4294967188;
  }

  v4 = Data;
  Length = CFDataGetLength(Data);
  snprintf(__str, 0xAuLL, "0x%8.8lx", Length);
  fwrite(__str, 0xAuLL, 1uLL, a2);
  BytePtr = CFDataGetBytePtr(v4);
  fwrite(BytePtr, Length, 1uLL, a2);
  CFRelease(v4);
  return 0;
}

uint64_t RTMReadResultsFromFile(FILE *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9830];
  do
  {
    while (1)
    {
      v5 = getc(a1);
      v6 = v5;
      if (v5 > 0x7F)
      {
        break;
      }

      if ((*(v4 + 4 * v5 + 60) & 0x4000) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (__maskrune(v5, 0x4000uLL));
LABEL_6:
  ungetc(v6, a1);
  if (fread(__ptr, 1uLL, 0xAuLL, a1) != 10)
  {
    return 4294967090;
  }

  __ptr[10] = 0;
  v7 = strtol(__ptr, 0, 0);
  if (v7 >= 0x10000)
  {
    return 4294967090;
  }

  v8 = v7;
  v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (!v9)
  {
    return 4294967188;
  }

  v10 = v9;
  if (fread(v9, 1uLL, v8, a1) == v8)
  {
    v11 = CFDataCreateWithBytesNoCopy(0, v10, v8, *MEMORY[0x1E695E498]);
    if (v11)
    {
      v12 = v11;
      v13 = CFPropertyListCreateWithData(0, v11, 0, 0, 0);
      *a2 = v13;
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 4294967090;
      }

      CFRelease(v12);
    }

    else
    {
      v14 = 4294967188;
    }
  }

  else
  {
    v14 = 4294967090;
  }

  free(v10);
  return v14;
}

uint64_t TMCCreateWithQueueAndOptions(uint64_t a1, const void *a2, uint64_t a3, void *a4, const void *a5, uint64_t a6, uint64_t *a7)
{
  cf = 0;
  v13.n128_f64[0] = FigSampleBufferProviderCreateForBufferQueue(*MEMORY[0x1E695E480], a2, &cf);
  v15 = v14;
  v16 = v14;
  if (!v14)
  {
    v19 = *a3;
    v20 = *(a3 + 16);
    v16 = TMCCreateWithCallbacksAndOptions(a1, cf, &v19, a4, a5, a6, a7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    if (v15)
    {
      v17 = a4[3];
      if (v17)
      {
        v17(a4[1], v13);
      }
    }
  }

  return v16;
}

void tmcPrepareToSendNextSample(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16) && FigAtomicCompareAndSwap32() && !*(a1 + 128))
  {
    v2 = *MEMORY[0x1E6960500];
    v3 = *MEMORY[0x1E69604B0];
    v4 = *MEMORY[0x1E6960410];
    v5 = *MEMORY[0x1E695E4D0];
    key = *MEMORY[0x1E6960480];
    do
    {
      v6 = *(a1 + 48);
      if (!v6)
      {
        return;
      }

      v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v7)
      {
        *(a1 + 128) = 0;
        return;
      }

      v8 = v7(v6);
      *(a1 + 128) = v8;
      if (!v8)
      {
        return;
      }

      if (CMGetAttachment(v8, v2, 0))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      dispatch_sync_f(*(a1 + 32), a1, tmcHandleIgnoreSamplesUntilThisJumpSeed);
      v9 = *(a1 + 128);
      if (v9)
      {
        if (CMSampleBufferGetDataBuffer(v9) || CMGetAttachment(*(a1 + 128), v3, 0) || *(a1 + 188) && FigSampleBufferGetCaptionGroup())
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&v21, *(a1 + 128));
          value = v21.value;
          flags = v21.flags;
          timescale = v21.timescale;
          v11 = *(a1 + 128);
          if ((v21.flags & 0x1D) == 1)
          {
            epoch = v21.epoch;
            if (tmcShouldDisplaySampleImmediately(v11) || (SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(*(a1 + 128), 0)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) != 0 && v5 == CFDictionaryGetValue(ValueAtIndex, v4) || (v15 = *(a1 + 128), v5 == CMGetAttachment(v15, v3, 0)) && v5 == CMGetAttachment(v15, key, 0))
            {
              if (CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 120), *(a1 + 168)))
              {
                return;
              }
            }

            else
            {
              memset(&v21, 0, sizeof(v21));
              lhs.value = value;
              lhs.timescale = timescale;
              lhs.flags = flags;
              lhs.epoch = epoch;
              rhs = *(a1 + 96);
              CMTimeSubtract(&v21, &lhs, &rhs);
              v16 = *(a1 + 120);
              v17 = *(a1 + 168);
              lhs = v21;
              if (CMTimebaseSetTimerDispatchSourceNextFireTime(v16, v17, &lhs, 1u))
              {
                return;
              }
            }

            continue;
          }
        }

        else
        {
          v11 = *(a1 + 128);
        }

        if (v11)
        {
          CFRelease(v11);
          *(a1 + 128) = 0;
        }
      }
    }

    while (!*(a1 + 128));
  }
}

void tmcPrepareToSendNextSampleAndConsumeTMC(const void *a1)
{
  tmcPrepareToSendNextSample(a1);

  CFRelease(a1);
}

void TMCCreateWithCallbacksAndOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TMCCreateWithCallbacksAndOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TMCCreateWithCallbacksAndOptions_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TMCCreateWithCallbacksAndOptions_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TMCCreateWithCallbacksAndOptions_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TMCCreateWithCallbacksAndOptions_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double tmcInhibitOutputUntil_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void TMCGetEndPresentationTimeForDecodedSamples_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void TMCGetEndPresentationTimeForDecodedSamples_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void tmcResetOutputSerialized_cold_1(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 128) = 0;
  }

  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  *(a1 + 144) = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  *(a1 + 160) = v5;
  v6 = *(a1 + 120);
  v7 = *(a1 + 168);
  *&v9.value = v4;
  v9.epoch = v5;
  CMTimebaseSetTimerDispatchSourceNextFireTime(v6, v7, &v9, 0);
  v8 = *(a1 + 88);
  if (v8)
  {
    v8(*(a1 + 64));
  }

  FigAtomicDecrement32();
  tmcPrepareToSendNextSample(a1);
}

uint64_t FigByteStreamServerCreateByteStreamDetails(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v43 = 0;
  number = 0;
  v41 = 0;
  cf = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  value = 0;
  if (!a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v31 = v33;
    Instance = 0;
LABEL_60:
    v24 = 0;
    goto LABEL_40;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = *MEMORY[0x1E695E480];
  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v8 = OUTLINED_FUNCTION_2_21();
    v9(v8);
  }

  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v10 = OUTLINED_FUNCTION_2_21();
    v11(v10);
  }

  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v12 = OUTLINED_FUNCTION_2_21();
    v13(v12);
  }

  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v14 = OUTLINED_FUNCTION_2_21();
    v15(v14);
  }

  FigXPCMessageSetCFURL();
  v16 = *MEMORY[0x1E695E4D0];
  xpc_dictionary_set_BOOL(v6, "Writable", v41 == *MEMORY[0x1E695E4D0]);
  xpc_dictionary_set_BOOL(v6, "EntireLengthAvailable", cf == v16);
  CMByteStreamGetCMBaseObject();
  FigCRABSGetClassID();
  v17 = CMBaseObjectIsMemberOfClass() != 0;
  xpc_dictionary_set_BOOL(v6, "ReadsMayBlockIndefinitely", v17);
  SInt64 = FigCFNumberGetSInt64();
  xpc_dictionary_set_int64(v6, "EntireLength", SInt64);
  CMByteStreamGetCMBaseObject();
  FigCachedFileByteStreamGetClassID();
  if (CMBaseObjectIsMemberOfClass())
  {
    xpc_dictionary_set_BOOL(v6, "UseFigReadCache", 1);
    CMByteStreamGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v19 = OUTLINED_FUNCTION_2_21();
      v20(v19);
    }

    xpc_dictionary_set_BOOL(v6, "EnableFigReadCache", v40 == v16);
  }

  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v21 = OUTLINED_FUNCTION_2_21();
    v22(v21);
  }

  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v37);
    v31 = v34;
    Instance = 0;
    goto LABEL_60;
  }

  if (qword_1ED4CA520 != -1)
  {
    dispatch_once(&qword_1ED4CA520, &__block_literal_global_29);
  }

  FigSimpleMutexLock();
  if (qword_1ED4CA518 && (v23 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v24 = v23;
    FigSimpleMutexUnlock();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69628C8], @"FigByteStreamServer");
    v24 = CMMemoryPoolCreate(Mutable);
    v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v27 = v26;
    v28 = qword_1ED4CA518;
    qword_1ED4CA518 = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    FigSimpleMutexUnlock();
    if (!v24)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a4, v36, v37);
      goto LABEL_65;
    }
  }

  BlockBuffer = FigMemoryPoolCreateBlockBuffer();
  if (BlockBuffer)
  {
    goto LABEL_65;
  }

  BlockBuffer = FigMemoryOriginSetBlockBufferInXPCMessage();
  if (BlockBuffer)
  {
    goto LABEL_65;
  }

  if (qword_1ED4CA528 != -1)
  {
    dispatch_once(&qword_1ED4CA528, &__block_literal_global_33);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = 0;
    Instance[3] = CFRetain(v24);
    goto LABEL_38;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a4, v36, v37);
  if (BlockBuffer)
  {
LABEL_65:
    v31 = BlockBuffer;
    Instance = 0;
    goto LABEL_40;
  }

LABEL_38:
  v31 = FigXPCServerAssociateObjectWithNeighborProcessByPID();
  if (!v31)
  {
    xpc_dictionary_set_uint64(v6, "ObjectID", value);
    Instance = 0;
    *a4 = v6;
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  FigXPCRelease();
  if (Instance)
  {
    CFRelease(Instance);
  }

  return v31;
}

uint64_t byteStreamServer_HandleMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    result = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void FigByteStreamServerCopyByteStreamForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamServerCopyByteStreamForID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigSecureStopManagerRemoteCreate(uint64_t a1, CFTypeRef *a2)
{
  xdict = 0;
  v11 = 0;
  cf = 0;
  if (!a2)
  {
    goto LABEL_9;
  }

  *a2 = 0;
  v4 = FigCPERemoteEnsureClientEstablished();
  if (v4)
  {
    goto LABEL_10;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_22();
  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
    goto LABEL_10;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
LABEL_9:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_10:
    v7 = v4;
    goto LABEL_8;
  }

  fssm_remote_createManagerForID(a1, uint64, &cf);
  v7 = v6;
  if (v6)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
    cf = 0;
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

double fssm_remote_createManagerForID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a2 && a3)
  {
    *a3 = 0;
    if (!FigCPERemoteEnsureClientEstablished())
    {
      FigSecureStopManagerGetClassID();
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

uint64_t FigSecureStopManagerRemoteCopyDefaultRuntimeInstance(uint64_t a1, void *a2)
{
  xdict = 0;
  v16 = 0;
  cf = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949556, "<<< FigSecureStopManagerRemote >>>", 370, v2);
LABEL_15:
    v8 = v5;
    goto LABEL_9;
  }

  *a2 = 0;
  v5 = FigCPERemoteEnsureClientEstablished();
  if (v5)
  {
    goto LABEL_15;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_2_22();
  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v5)
  {
    goto LABEL_15;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    v13 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294949552, "<<< FigSecureStopManagerRemote >>>", 383, v2);
    goto LABEL_15;
  }

  v7 = uint64;
  v8 = FigXPCRemoteClientRetainCopiedObject();
  v9 = cf;
  if (v8 || !cf && (fssm_remote_createManagerForID(a1, v7, &cf), v8 = v11, v9 = cf, v8))
  {
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v8 = 0;
    *a2 = v9;
    cf = 0;
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v8;
}

uint64_t fssm_remote_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!*DerivedStorage && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  return FigXPCRelease();
}

uint64_t fssm_remote_initialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_12:
    v9 = ObjectID;
    goto LABEL_10;
  }

  v7 = DerivedStorage;
  ObjectID = fssm_remote_getObjectID(a1, &v11);
  if (ObjectID)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  ObjectID = FigXPCMessageSetCFData();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  ObjectID = FigXPCMessageSetCFURL();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  ObjectID = FigSandboxRegisterURLWithProcessAndCopyRegistration();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  v9 = FigXPCRemoteClientSendSyncMessage();
  if (!v9)
  {
    *(v7 + 16) = 0;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t fssm_remote_copyRecords(uint64_t a1, void *a2)
{
  v6 = 0;
  if (a2)
  {
    *a2 = 0;
    ObjectID = fssm_remote_getObjectID(a1, &v6);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_2_22();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageCopyCFDictionary();
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0, 0);
  }

  v3 = ObjectID;
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t fssm_remote_removeRecords(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v6, v7);
    goto LABEL_9;
  }

  ObjectID = fssm_remote_getObjectID(a1, &v6);
  if (ObjectID)
  {
LABEL_9:
    v4 = ObjectID;
    goto LABEL_6;
  }

  v3 = FigXPCCreateBasicMessage();
  if (v3 || (v3 = FigXPCMessageSetCFArray(), v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_6:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

void fssm_remote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fssm_remote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSTokenWalkerConsumeNextInputToken(uint64_t a1, void *a2, _DWORD *a3)
{
  v16 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_23();
    v15 = 157;
    goto LABEL_18;
  }

  if (*(a1 + 40))
  {
    *(a1 + 40) = 0;
    v6 = *(a1 + 32);
    if (v6 != -1)
    {
      v7 = *(a1 + 24);
      goto LABEL_7;
    }

    v10 = v3;
    v11 = "%s signalled err=%d at <>:%d";
    v12 = "(Fig)";
    v13 = 0;
    v14 = 4294949485;
    v15 = 165;
LABEL_18:

    FigSignalErrorAtGM(v11, v13, v14, v12, v15, v10);
    return;
  }

  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6 < v7)
  {
    *(a1 + 32) = ++v6;
  }

LABEL_7:
  if (v6 < v7)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v6);
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  ValueAtIndex = *(a1 + 48);
  if (a2)
  {
LABEL_11:
    *a2 = ValueAtIndex;
  }

LABEL_12:
  if (!a3)
  {
    return;
  }

  if (ValueAtIndex)
  {
    if (FigCSSTokenGetTokenType(ValueAtIndex, &v16))
    {
      return;
    }

    v9 = v16;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
}

void FigCSSTokenWalkerCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSTokenWalkerCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSTokenWalkerGetCurrentInputToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSTokenWalkerReconsumeInputToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigNetworkUrgencyMonitorSetTimebase(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (a2)
    {
      if (*(a1 + 16))
      {
        FigReadOnlyTimebaseSetTargetTimebase();
      }

      else
      {
        OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
        if (!*(a1 + 16))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16C08, OnlyTimebase, "<<< NetUrgencyMon >>>", 601, v2);
LABEL_12:
          FigSimpleMutexUnlock();
          return 0;
        }

        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_3_17(DefaultLocalCenter);
        v7 = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_3_17(v7);
      }
    }

    else
    {
      fnum_releaseReadOnlyTimebase(a1);
    }

    if (*(a1 + 48))
    {
      if (*(a1 + 128))
      {
        v8 = *(a1 + 104);
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        fnum_rescheduleBufferDepletionUpdateTimer(a1, v8 - UpTimeNanoseconds);
      }

      else
      {
        fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(a1);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16C08, 4294954510, "<<< NetUrgencyMon >>>", 620, v2);
    }

    goto LABEL_12;
  }

  return 4294954516;
}

uint64_t FigNetworkUrgencyMonitorSetStreamFullyAvailable(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  FigSimpleMutexLock();
  if (*(a1 + 129) != a2)
  {
    *(a1 + 129) = a2;
    if (a2)
    {
      FigSimpleMutexLock();
      *(a1 + 120) = 0;
      FigSimpleMutexUnlock();
      fnum_updateExpectedProgressTargets(a1);
      v4 = *(a1 + 48);
      if (v4)
      {
        dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      }
    }

    else if (*(a1 + 128))
    {
      v6 = *(a1 + 104);
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      fnum_rescheduleBufferDepletionUpdateTimer(a1, v6 - UpTimeNanoseconds);
    }

    else
    {
      fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(a1);
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

void fnum_rescheduleBufferDepletionUpdateTimer(uint64_t a1, int64_t a2)
{
  *(a1 + 104) = FigGetUpTimeNanoseconds() + a2;
  if (!*(a1 + 129) && *(a1 + 16) && (v6 = *(a1 + 144), (~v6 & 5) != 0))
  {
    v7 = *(a1 + 48);
    if ((~v6 & 0x11) != 0)
    {
      v5 = dispatch_time(0, a2);
      v4 = v7;
      goto LABEL_4;
    }

    if (!v7)
    {
      return;
    }

    v4 = v7;
  }

  else
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
      return;
    }
  }

  v5 = -1;
LABEL_4:

  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6960C70];
  *&v23.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v23.epoch = v3;
  v4 = sFigNetworkUrgencyMonitorBufferDepletionUpdatePeriodNanoseconds;
  if (!*(a1 + 129))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if ((*(a1 + 68) & 1) != 0 && (*(a1 + 92) & 1) != 0 && !*(a1 + 96))
      {
        v18 = v2;
        if ((*(a1 + 80) & 0x8000000000000000) == 0)
        {
          Rate = CMTimebaseGetRate(v5);
          CMTimebaseGetTime(&v23, *(a1 + 16));
          lhs = v23;
          FPSTimelineConverterL3TimeToL2(&lhs, &range);
          value = range.start.value;
          flags = range.start.flags;
          timescale = range.start.timescale;
          if (range.start.flags)
          {
            epoch = range.start.epoch;
            v21.epoch = v3;
            v9 = *(a1 + 72);
            *&range.start.value = *(a1 + 56);
            *&range.start.epoch = v9;
            *&range.duration.timescale = *(a1 + 88);
            *&v21.value = v18;
            CMTimeRangeGetEnd(&v21, &range);
            range.start = v21;
            CMTimeGetSeconds(&range.start);
            range.start.value = value;
            range.start.timescale = timescale;
            range.start.flags = flags;
            range.start.epoch = epoch;
            CMTimeGetSeconds(&range.start);
            lhs = v21;
            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = flags;
            rhs.epoch = epoch;
            CMTimeSubtract(&range.start, &lhs, &rhs);
            Seconds = CMTimeGetSeconds(&range.start);
            v11 = 0;
            if (Rate >= 0.0)
            {
              v12 = *(a1 + 144);
              if ((~v12 & 5) != 0 && (*(a1 + 144) & 0x11) != 0x11)
              {
                if (Rate >= 0.1)
                {
                  v13 = Seconds / Rate;
                }

                else
                {
                  v13 = Seconds;
                }

                if (v12)
                {
                  memset(&range, 0, 24);
                  HostTimeClock = CMClockGetHostTimeClock();
                  CMClockGetTime(&range.start, HostTimeClock);
                  OUTLINED_FUNCTION_2_23();
                  rhs = range.start;
                  if (CMTimeCompare(&lhs, &rhs) < 0)
                  {
                    *(a1 + 132) = v18;
                    *(a1 + 148) = v3;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_2_23();
                    v15 = CMTimeGetSeconds(&lhs);
                    lhs = range.start;
                    v13 = v13 + v15 - CMTimeGetSeconds(&lhs);
                  }
                }

                v16 = *&_MergedGlobals_1;
                if (v13 >= *&_MergedGlobals_1)
                {
                  v11 = 0;
                }

                else
                {
                  v11 = (FigGetContinuousUpTimeNanoseconds() + v13 * 1000000000.0);
                  v16 = *&_MergedGlobals_1;
                }

                v17 = v13 - v16;
                if (v17 <= *&qword_1ED4C9F68)
                {
                  v17 = *&qword_1ED4C9F68;
                }

                v4 = (v17 * 1000000000.0);
              }
            }

            FigSimpleMutexLock();
            *(a1 + 120) = v11;
            FigSimpleMutexUnlock();
            fnum_updateExpectedProgressTargets(a1);
          }
        }
      }
    }
  }

  fnum_rescheduleBufferDepletionUpdateTimer(a1, v4);
}

uint64_t FigNetworkUrgencyMonitorSetPlayableRange(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_0_24(a1);
  v4 = v2[1];
  v3 = v2[2];
  *(v1 + 56) = *v2;
  *(v1 + 72) = v4;
  *(v1 + 88) = v3;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigNetworkUrgencyMonitorSetEstimatedStartTime(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_0_24(a1);
  v3 = *(v2 + 16);
  *(v1 + 132) = *v2;
  *(v1 + 148) = v3;
  if (!*(v1 + 128))
  {
    fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(v1);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigNetworkUrgencyAssertDeadline(uint64_t a1, CMTime *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = FigAtomicIncrement64();
  if (!v4)
  {
    v4 = FigAtomicIncrement64();
  }

  v9 = *a2;
  v5 = (CMTimeGetSeconds(&v9) * 1000000000.0);
  ContinuousUpTimeNanoseconds = FigGetContinuousUpTimeNanoseconds();
  FigSimpleMutexLock();
  if (!fnum_scheduleDeadlineCleanup(a1, v5 + 1000000000))
  {
    v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040B07D1DCCuLL);
    if (v7)
    {
      v7[1] = v4;
      v7[2] = ContinuousUpTimeNanoseconds + v5;
      *v7 = 0;
      **(a1 + 168) = v7;
      *(a1 + 168) = v7;
      fnum_updateExpectedProgressTargets(a1);
    }
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigNetworkUrgencyMonitorCopyExpectedProgressTarget(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v2 = *(a1 + 120);
  FigSimpleMutexUnlock();
  if (!v2)
  {
    return 0;
  }

  return FigCFNumberCreateSInt64();
}

uint64_t FigNetworkUrgencyMonitorAddHTTPRequest(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_0_24(a1);
  FigCFWeakReferenceTableAddValueAndGetKey();
  ExpectedProgressTarget = fnum_createExpectedProgressTarget(v1);
  fnum_setHTTPRequestExpectedProgressTarget(v2, ExpectedProgressTarget);
  FigSimpleMutexUnlock();
  if (ExpectedProgressTarget)
  {
    CFRelease(ExpectedProgressTarget);
  }

  return 0;
}

uint64_t FigNetworkUrgencyMonitorSetTimelineConverter(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_0_24(a1);
  fnum_uninstallTimelineConverter(v1);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v4 = FigNotificationCenterAddWeakListener();
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t fnum_Finalize(void *a1)
{
  fnum_releaseReadOnlyTimebase(a1);
  v2 = a1[6];
  if (v2)
  {
    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v2 = a1[6];
  }

  dispatch_source_cancel(v2);
  v3 = a1[6];
  if (v3)
  {
    dispatch_release(v3);
    a1[6] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  fnum_uninstallTimelineConverter(a1);
  v5 = (a1 + 20);
  v6 = a1[20];
  while (v6)
  {
    v7 = v6;
    v6 = *v6;
    if (*v5 == v7)
    {
      v12 = **v5;
      *v5 = v12;
      v8 = a1 + 20;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      do
      {
        OUTLINED_FUNCTION_1_23();
      }

      while (!v10);
      v11 = *v9;
      *v8 = v11;
      if (v11)
      {
        goto LABEL_13;
      }
    }

    a1[21] = v8;
LABEL_13:
    free(v7);
  }

  if (a1[14])
  {
    FigSimpleMutexDestroy();
  }

  return FigSimpleMutexDestroy();
}

void fnum_bufferDepletionUpdateTimerProc(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    FigSimpleMutexLock();
    v2[128] = 0;
    fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(v2);
    FigSimpleMutexUnlock();

    CFRelease(v2);
  }
}

void __fnum_timebaseRateChangedCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    FigSimpleMutexLock();
    if (!*(v1 + 128))
    {
      fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(*(a1 + 32));
    }

    FigSimpleMutexUnlock();
    v3 = *(a1 + 32);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void __fnum_timebaseJumpedCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    FigSimpleMutexLock();
    if (!*(v1 + 128))
    {
      fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(*(a1 + 32));
    }

    FigSimpleMutexUnlock();
    v3 = *(a1 + 32);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void __fnum_scheduleDeadlineCleanup_block_invoke(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    FigSimpleMutexLock();
    ContinuousUpTimeNanoseconds = FigGetContinuousUpTimeNanoseconds();
    v6 = (v3 + 20);
    v5 = v3[20];
    if (v5)
    {
      v7 = ContinuousUpTimeNanoseconds - 1000000000;
      while (1)
      {
        v8 = *v5;
        v9 = v5[3];
        if (v9 && v9 < v7)
        {
          break;
        }

        if (v5[2] < v7)
        {
          v11 = *v6;
          if (*v6 != v5)
          {
            do
            {
              OUTLINED_FUNCTION_1_23();
            }

            while (!v14);
            goto LABEL_16;
          }

LABEL_21:
          v16 = *v11;
          *v6 = v16;
          v12 = v3 + 20;
          if (!v16)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

LABEL_19:
        v5 = v8;
        if (!v8)
        {
          goto LABEL_23;
        }
      }

      v11 = *v6;
      if (*v6 == v5)
      {
        goto LABEL_21;
      }

      do
      {
        OUTLINED_FUNCTION_1_23();
      }

      while (!v14);
LABEL_16:
      v15 = *v13;
      *v12 = v15;
      if (!v15)
      {
LABEL_17:
        v3[21] = v12;
      }

LABEL_18:
      free(v5);
      goto LABEL_19;
    }

LABEL_23:
    fnum_updateExpectedProgressTargets(v3);
    FigSimpleMutexUnlock();
    CFRelease(v3);
  }

  v17 = *(a1 + 32);
  if (v17)
  {

    CFRelease(v17);
  }
}

void __fnum_handleL2L3TimelineMappingChangedNotification_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    FigSimpleMutexLock();
    if (!*(v1 + 128))
    {
      fnum_evaluateBufferDepletionUrgencyAndRescheduleTimer(*(a1 + 32));
    }

    FigSimpleMutexUnlock();
    v3 = *(a1 + 32);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t FigNetworkUrgencyCancelDeadline_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_24(a1);
  v3 = *(v1 + 160);
  if (v3)
  {
    while (v3[1] != v2)
    {
      v3 = *v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v3[3] = FigGetContinuousUpTimeNanoseconds();
    fnum_scheduleDeadlineCleanup(v1, 1000000000);
  }

LABEL_6:

  return FigSimpleMutexUnlock();
}

BOOL FigNetworkUrgencyMonitorCreate_cold_2(uint64_t a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

void VMC2MakeOutputCallbacksForImageQueueArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void VMC2MakeOutputCallbacksForImageQueueArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void VMC2MakeOutputCallbacksForImageQueueArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void VMC2MakeOutputCallbacksForImageQueueArray_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void VMC2MakeOutputCallbacksForImageQueueArray_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vmciqa_installOccupancyChangedCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigSubAudioQueueCreate(char *cf, const opaqueCMFormatDescription *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v229 = a3;
  v265 = *MEMORY[0x1E69E9840];
  result = 0.0;
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  *__str = 0u;
  if (cf[16])
  {
    return result;
  }

  v9 = v5;
  if (qword_1ED4CA540 != -1)
  {
    dispatch_once_f(&qword_1ED4CA540, 0, subaq_createValidSubAQSetAndLock);
  }

  CFGetAllocator(cf);
  MEMORY[0x19A8D3660](&FigSubAudioQueueGetTypeID_sRegisterFSAQTypeOnce, fsaq_registerFSAQType);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v13 = Instance;
    v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v13 + 24) = v14;
    if (!v14)
    {
      goto LABEL_175;
    }

    if (FigCFWeakReferenceTableAddValueAndGetKey())
    {
      goto LABEL_175;
    }

    FigCFWeakReferenceStore();
    if (subaq_setupForDecode(v13, a2))
    {
      goto LABEL_175;
    }

    LODWORD(outPropertyData[0].value) = 0;
    ioPropertyDataSize = 4;
    if (AudioFormatGetProperty(0x66646570u, 0x28u, *(v13 + 64), &ioPropertyDataSize, outPropertyData))
    {
      v15 = 1;
    }

    else
    {
      v15 = LODWORD(outPropertyData[0].value) == 0;
    }

    v16 = !v15;
    *(v13 + 104) = v16;
    v17 = FigSimpleMutexCreate();
    *(v13 + 136) = v17;
    if (!v17 || (v18 = FigSimpleMutexCreate(), (*(v13 + 336) = v18) == 0) || (*(v13 + 592) = 1, v19 = FigSimpleMutexCreate(), (*(v13 + 584) = v19) == 0) || (v20 = FigReadWriteLockCreate(), (*(v13 + 704) = v20) == 0))
    {
LABEL_174:
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v215, v217, v218);
      goto LABEL_175;
    }

    FigReadWriteLockLockForWrite();
    CFSetAddValue(qword_1ED4CA550, v13);
    FigReadWriteLockUnlockForWrite();
    *v231 = *a4;
    *&v231[16] = *(a4 + 16);
    HIDWORD(v232) = 0;
    v21 = (v13 + 40);
    v22 = MEMORY[0x1E6960C70];
    if (*(v13 + 40))
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v215, v217, v218);
    }

    else if (!cf[16])
    {
      v23 = FigSimpleMutexLock();
      if (cf[16])
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v215, v217, v218);
        v68 = 0;
        goto LABEL_61;
      }

      v31 = *(v13 + 64);
      v32 = *(cf + 12);
      if ((v32 & 0x10) == 0 && *(v31 + 8) == 1633771875)
      {
        v34 = (v32 >> 1) & 0x10;
      }

      else
      {
        v34 = (v32 >> 1) & 0x10 | 4;
      }

      v35 = v34 & 0xFFFFFFFE | (v32 >> 2) & 1;
      *(v13 + 100) = (*v31 + 0.5);
      if (dword_1EAF16C30)
      {
        v36 = OUTLINED_FUNCTION_69_1(v23, v24, v25, v26, v27, v28, v29, v30, v215, v217, v218, v219, v220, v221, v222, v223, v224, v226, v229, v13 + 40, *v231, *&v231[8], *&v231[16], v232, v233, type[0], v235);
        if (os_log_type_enabled(v36, type[0]))
        {
          v37 = v235;
        }

        else
        {
          v37 = v235 & 0xFFFFFFFE;
        }

        if (v37)
        {
          v38 = *(v13 + 64);
          v39 = *(v38 + 2);
          v40 = v39 >> 24;
          v41 = MEMORY[0x1E69E9830];
          if ((v39 & 0x80000000) != 0)
          {
            v42 = OUTLINED_FUNCTION_103_1();
            v38 = *(v13 + 64);
            LODWORD(v39) = *(v38 + 2);
          }

          else
          {
            v42 = *(MEMORY[0x1E69E9830] + 4 * v40 + 60) & 0x40000;
          }

          v222 = v36;
          if (v42)
          {
            v43 = v40;
          }

          else
          {
            v43 = 46;
          }

          v44 = BYTE2(v39);
          HIDWORD(v223) = v43;
          HIDWORD(v221) = type[0];
          v45 = v41;
          if (BYTE2(v39) > 0x7Fu)
          {
            v46 = OUTLINED_FUNCTION_103_1();
            v38 = *(v13 + 64);
            LODWORD(v39) = *(v38 + 2);
          }

          else
          {
            v46 = *(v41 + 4 * BYTE2(v39) + 60) & 0x40000;
          }

          if (v46)
          {
            v47 = v44;
          }

          else
          {
            v47 = 46;
          }

          v48 = BYTE1(v39);
          if (BYTE1(v39) > 0x7Fu)
          {
            v49 = OUTLINED_FUNCTION_103_1();
            v38 = *(v13 + 64);
            LOBYTE(v39) = *(v38 + 8);
          }

          else
          {
            v49 = *(v45 + 4 * BYTE1(v39) + 60) & 0x40000;
          }

          if (v49)
          {
            v50 = v48;
          }

          else
          {
            v50 = 46;
          }

          v51 = v39;
          if (v39 > 0x7Fu)
          {
            v52 = OUTLINED_FUNCTION_103_1();
            v38 = *(v13 + 64);
          }

          else
          {
            v52 = *(v45 + 4 * v39 + 60) & 0x40000;
          }

          v53 = *(v38 + 5);
          if (v52)
          {
            v54 = v51;
          }

          else
          {
            v54 = 46;
          }

          v55 = *v38;
          v56 = cf[72];
          ioPropertyDataSize = 136317698;
          v242 = "subaq_buildCAAudioQueue";
          v243 = 2048;
          v244 = cf;
          v245 = 2048;
          v246 = v13;
          v247 = 2082;
          v248 = cf + 800;
          v249 = 1024;
          v250 = HIDWORD(v223);
          v251 = 1024;
          v252 = v47;
          v253 = 1024;
          v254 = v50;
          v255 = 1024;
          v256 = v54;
          v257 = 1024;
          v258 = v53;
          v259 = 2048;
          *v260 = v55;
          *&v260[8] = 1024;
          *v261 = v56;
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v57, v58, v59, v60, v61, v222, type[0], v62);
          v9 = v5;
          v22 = MEMORY[0x1E6960C70];
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v21 = v230;
      }

      CFRetain(*(v13 + 24));
      v63 = *(v13 + 64);
      v64 = *(v13 + 24);
      v65 = *MEMORY[0x1E695E8D0];
      v66 = *(cf + 33);
      outPropertyData[0] = *v231;
      v67 = FigAudioQueueTimingShimNewOutput(v63, subaq_outputBufferBecameReady, v64, 0, v65, v35, v66, &outPropertyData[0].value, v21);
      if (v67)
      {
        v68 = v67;
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value_low, v217, v218);
        CFRelease(*(v13 + 24));
LABEL_61:
        FigSimpleMutexUnlock();
        goto LABEL_62;
      }

      v235 = v229;
      v225 = v9;
      v227 = a5;
      if (cf[16])
      {
        v107 = v22;
        Mutable = 0;
      }

      else
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        if (v229)
        {
          FigAudioQueueTimingShimSetProperty(*v21, 0x61716364u, &v235, 8u);
          value_low = v235;
          v78 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v78, v79, v80);
        }

        Extensions = CMFormatDescriptionGetExtensions(*(v13 + 56));
        if (Extensions)
        {
          Value = CFDictionaryGetValue(Extensions, @"AudibleGroupID");
          if (Value)
          {
            LODWORD(outPropertyData[0].value) = 0;
            CFNumberGetValue(Value, kCFNumberSInt32Type, outPropertyData);
            v83 = OUTLINED_FUNCTION_53_1();
            FigAudioQueueTimingShimSetProperty(v83, 0x61676964u, v84, 4u);
            value_low = LODWORD(outPropertyData[0].value);
            v85 = OUTLINED_FUNCTION_249();
            CFStringAppendFormat(v85, v86, v87);
          }
        }

        v88 = *(v13 + 80);
        if (v88 && *(v13 + 88))
        {
          value_low = *v88;
          v217 = *(*(v13 + 64) + 28);
          v89 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v89, v90, v91);
          v92 = *(v13 + 88);
          if (HIDWORD(v92))
          {
            v230 = v21;
            *type = 0;
            HIBYTE(v233) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v94 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            if (OUTLINED_FUNCTION_28_1(v94))
            {
              ioPropertyDataSize = 136315906;
              v242 = "subaq_setDefaultPropertiesOnAudioQueueAndCopyConfigDescription";
              v243 = 2048;
              v244 = cf;
              v245 = 2048;
              v246 = v13;
              v247 = 2082;
              v248 = cf + 800;
              OUTLINED_FUNCTION_117();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v95, v96, v97, v98, v99, os_log_and_send_and_compose_flags_and_os_log_type, 0, v100, value_low, v217);
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_417(v101, v102, v103, v104, v105);
          }

          else
          {
            FigAudioQueueTimingShimSetProperty(*(v13 + 40), 0x6171636Cu, *(v13 + 80), v92);
          }
        }

        outPropertyData[0].value = 0;
        MagicCookie = CMAudioFormatDescriptionGetMagicCookie(*(v13 + 56), outPropertyData);
        if (MagicCookie && outPropertyData[0].value)
        {
          FigAudioQueueTimingShimSetProperty(*v21, 0x61716D63u, MagicCookie, outPropertyData[0].value);
        }

        v107 = v22;
        Extension = CMFormatDescriptionGetExtension(*(v13 + 56), *MEMORY[0x1E69600A0]);
        outPropertyData[0].value = Extension;
        if (Extension)
        {
          v109 = Extension;
          v110 = CFGetTypeID(Extension);
          if (v110 == CFDictionaryGetTypeID() && CFDictionaryGetCount(v109) >= 1)
          {
            v111 = OUTLINED_FUNCTION_53_1();
            FigAudioQueueTimingShimSetProperty(v111, 0x69736F65u, v112, 8u);
          }
        }

        LODWORD(outPropertyData[0].value) = 0;
        v113 = OUTLINED_FUNCTION_53_1();
        FigAudioQueueTimingShimSetProperty(v113, 0x71726169u, v114, 4u);
        if ((*(cf + 24) & 0x4004) == 0)
        {
          v115 = *(cf + 88);
          LODWORD(outPropertyData[0].value) = 1;
          ioPropertyDataSize = 0;
          *type = v115;
          v218 = BYTE1(v115);
          v219 = v115;
          value_low = HIBYTE(v115);
          v217 = BYTE2(v115);
          v116 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v116, v117, v118);
          FigAudioQueueTimingShimSetProperty(*v21, 0x715F7470u, outPropertyData, 4u);
          v119 = faq_scaledEditRateSupportValidator_one32nd_to_32;
          if (v115 != 1987276900 && v115 != 1936745827 && v115 != 1953064047)
          {
            if (v115 == 1819376236)
            {
              v119 = faq_scaledEditRateSupportValidator_lowQualityZeroLatency;
            }

            else
            {
              v119 = faq_scaledEditRateSupportValidator_noScaleAllowed;
            }
          }

          *(cf + 84) = v119;
          FigAudioQueueTimingShimSetProperty(*v21, 0x71747061u, type, 4u);
          FigAudioQueueTimingShimSetProperty(*v21, 0x71747062u, &ioPropertyDataSize, 4u);
        }

        if (cf[680] || *(cf + 197) != 0.0)
        {
          LODWORD(outPropertyData[0].value) = 1;
          v122 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v122, v123, v124);
          v125 = OUTLINED_FUNCTION_53_1();
          FigAudioQueueTimingShimSetProperty(v125, 0x71737232u, v126, 4u);
        }

        if (cf[696])
        {
          v127 = OUTLINED_FUNCTION_283();
          subaq_setSweepFilterEnable(v127, v128, v129);
          v130 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v130, v131, v132);
        }

        LODWORD(outPropertyData[0].value) = (*(cf + 12) >> 8) & 1;
        v133 = OUTLINED_FUNCTION_53_1();
        FigAudioQueueTimingShimSetProperty(v133, 0x715F7370u, v134, 4u);
        if (LODWORD(outPropertyData[0].value))
        {
          v135 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v135, v136, v137);
        }

        if (FigAudioFormatDescriptionGetCinematicAudioEffectEligibility())
        {
          *(v13 + 784) = 1;
        }

        if ((cf[49] & 8) != 0)
        {
          LODWORD(outPropertyData[0].value) = 1;
          v138 = OUTLINED_FUNCTION_53_1();
          FigAudioQueueTimingShimSetProperty(v138, 0x6369616Fu, v139, 4u);
          v140 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v140, v141, v142);
        }

        LODWORD(outPropertyData[0].value) = 1;
        v143 = OUTLINED_FUNCTION_53_1();
        FigAudioQueueTimingShimSetProperty(v143, 0x24696E73u, v144, 4u);
        if ((cf[49] & 2) == 0)
        {
          LODWORD(outPropertyData[0].value) = 1;
          FigAudioQueueTimingShimSetProperty(*v21, 0x73747263u, outPropertyData, 4u);
          v145 = OUTLINED_FUNCTION_249();
          CFStringAppendFormat(v145, v146, v147);
        }

        LODWORD(outPropertyData[0].value) = 1;
        FigAudioQueueTimingShimSetProperty(*v21, 0x7066666Cu, outPropertyData, 4u);
        if (CFStringGetLength(Mutable) >= 3)
        {
          v148 = OUTLINED_FUNCTION_249();
          v267.length = 2;
          CFStringDelete(v148, v267);
        }
      }

      v149 = OUTLINED_FUNCTION_283();
      v151 = subaq_buildAudioProcssingUnits(v149, v150);
      if (v151)
      {
        v68 = v151;
        a5 = v227;
        v22 = v107;
      }

      else
      {
        LODWORD(v235) = 0;
        v152 = MEMORY[0x19A8D0E00](v13 + 16);
        v153 = FigUInt32NearestPowerOfTwo();
        if (v153 >= 0x20000)
        {
          v154 = 0x20000;
        }

        else
        {
          v154 = v153;
        }

        v155 = v154 >> 2;
        if (v154 >> 2 >= 0x4000)
        {
          v155 = 0x4000;
        }

        LODWORD(outPropertyData[0].value) = v154;
        ioPropertyDataSize = v155;
        FigAudioQueueTimingShimSetProperty(*(v13 + 40), 0x64636266u, outPropertyData, 4u);
        FigAudioQueueTimingShimSetProperty(*(v13 + 40), 0x6463626Cu, &ioPropertyDataSize, 4u);
        v156 = *(*(v13 + 64) + 8);
        if (v156 == 1633772400 || v156 == 1633772392)
        {
          LODWORD(v235) = ioPropertyDataSize >> 1;
          FigAudioQueueTimingShimSetProperty(*v21, 0x646D6663u, &v235, 4u);
        }

        v22 = v107;
        if (v152)
        {
          CFRelease(v152);
        }

        ioPropertyDataSize = 0;
        LODWORD(v235) = 4;
        v158 = MEMORY[0x19A8D0E00](v13 + 16);
        if (FigAudioQueueTimingShimGetProperty(*(v13 + 40), 0x64636266u, &ioPropertyDataSize, &v235))
        {
          *(v13 + 108) = *v107;
          epoch = *(v107 + 2);
        }

        else
        {
          CMTimeMake(outPropertyData, ioPropertyDataSize, *(v13 + 100));
          *(v13 + 108) = *&outPropertyData[0].value;
          epoch = outPropertyData[0].epoch;
        }

        *(v13 + 124) = epoch;
        if (v158)
        {
          CFRelease(v158);
        }

        v160 = OUTLINED_FUNCTION_283();
        LODWORD(v161) = subaq_setCPECryptorPropertyOnAudioQueue(v160);
        if (v161 || (v162 = *v107, *(v13 + 408) = *v107, v163 = *(v107 + 2), *(v13 + 424) = v163, *(v13 + 432) = v162, *(v13 + 448) = v163, *(v13 + 456) = v162, *(v13 + 472) = v163, *(v13 + 532) = v162, *(v13 + 548) = v163, *(v13 + 572) = v163, *(v13 + 556) = v162, *(v13 + 580) = subaq_getCurrentPlayRate2ParameterValue(v13), v164 = *(v13 + 32), OUTLINED_FUNCTION_0_25(), LODWORD(v161) = FigAudioQueueTimingShimAddPropertyListener(v165, 0x71637665u, v166, v164), v161) || (OUTLINED_FUNCTION_0_25(), LODWORD(v161) = FigAudioQueueTimingShimAddPropertyListener(v167, 0x61747072u, v168, v164), v161) || (OUTLINED_FUNCTION_37_2(), LODWORD(v161) = FigAudioQueueTimingShimAddPropertyListener(v169, 0x6171726Eu, v170, v164), v161) || cf[72] && (OUTLINED_FUNCTION_0_25(), LODWORD(v161) = FigAudioQueueTimingShimAddPropertyListener(v171, 0x666C7368u, v172, v164), v161) || (cf[49] & 2) == 0 && ((OUTLINED_FUNCTION_0_25(), LODWORD(v161) = FigAudioQueueTimingShimAddPropertyListener(v173, 0x72746F72u, v174, v164), v161) || (OUTLINED_FUNCTION_0_25(), LODWORD(v161) = FigAudioQueueTimingShimAddPropertyListener(v176, v175 + 1291, v177, v164), v161)) || (*(v13 + 712) = 0, HIDWORD(v232) = 8, FigAudioQueueTimingShimGetProperty(*(v13 + 40), 0x71646C73u, (v13 + 712), &v232 + 1), *(v13 + 720) = *(v13 + 712), OUTLINED_FUNCTION_0_25(), LODWORD(v161) = FigAudioQueueTimingShimAddPropertyListener(v178, 0x71646C73u, v179, v164), v161) || (OUTLINED_FUNCTION_0_25(), v161 = FigAudioQueueTimingShimAddPropertyListener(v180, 0x6864666Du, v181, v164), v161))
        {
          v68 = v161;
        }

        else
        {
          v189 = *(cf + 33);
          if (!v189)
          {
            goto LABEL_155;
          }

          outPropertyData[0].value = 0;
          VTable = CMBaseObjectGetVTable();
          v192 = *(VTable + 16);
          v161 = VTable + 16;
          v191 = v192;
          if (!v192)
          {
            goto LABEL_155;
          }

          v193 = *(v191 + 16);
          if (!v193)
          {
            goto LABEL_155;
          }

          v161 = v193(v189, @"FAS_MXSession", *MEMORY[0x1E695E480], outPropertyData);
          if (v161)
          {
            goto LABEL_155;
          }

          v194 = OUTLINED_FUNCTION_53_1();
          v68 = FigAudioQueueTimingShimSetProperty(v194, 0x636D7873u, v195, 8u);
          v161 = outPropertyData[0].value;
          if (outPropertyData[0].value)
          {
            CFRelease(outPropertyData[0].value);
          }

          if (!v68)
          {
LABEL_155:
            if (dword_1EAF16C30)
            {
              v196 = OUTLINED_FUNCTION_69_1(v161, v182, v183, v184, v185, v186, v187, v188, value_low, v217, v218, v219, v220, v221, v222, v223, v225, v227, v229, v230, *v231, *&v231[8], *&v231[16], v232, v233, type[0], v235);
              v197 = type[0];
              v198 = os_log_type_enabled(v196, type[0]);
              if (OUTLINED_FUNCTION_28_1(v198))
              {
                v199 = *(v13 + 64);
                v200 = *(v199 + 2);
                v201 = *(v199 + 7);
                v202 = *(v199 + 5);
                v203 = *v199;
                ioPropertyDataSize = 136318210;
                v242 = "subaq_buildCAAudioQueue";
                v243 = 2048;
                v244 = cf;
                v245 = 2048;
                v246 = v13;
                v247 = 2082;
                v248 = cf + 800;
                v249 = 1024;
                v250 = HIBYTE(v200);
                v251 = 1024;
                v252 = BYTE2(v200);
                v253 = 1024;
                v254 = BYTE1(v200);
                v255 = 1024;
                v256 = v200;
                v257 = 1024;
                v258 = v200;
                v259 = 1024;
                *v260 = v201;
                *&v260[4] = 1024;
                *&v260[6] = v202;
                *v261 = 2048;
                *&v261[2] = v203;
                v262 = 2114;
                v263 = Mutable;
                OUTLINED_FUNCTION_117();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v204, v205, v206, v207, v208, v196, v197, v209);
              }

              a5 = v228;
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_417(v210, v211, v212, v213, v214);
              v68 = 0;
              goto LABEL_161;
            }

            v68 = 0;
          }
        }

        a5 = v227;
      }

LABEL_161:
      FigSimpleMutexUnlock();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

LABEL_62:
      if (v68)
      {
LABEL_175:
        CFRelease(v13);
        return result;
      }
    }

    v69 = OUTLINED_FUNCTION_283();
    if (faq_connectToOfflineMixer(v69, v70))
    {
      goto LABEL_175;
    }

    v71 = OUTLINED_FUNCTION_283();
    if (subaq_ensureClock(v71))
    {
      goto LABEL_175;
    }

    *(v13 + 676) = *v22;
    *(v13 + 692) = *(v22 + 2);
    snprintf(__str, 0x50uLL, "com.apple.coremedia.subAQ.timerQueue.%s", cf + 800);
    v72 = FigDispatchQueueCreateWithPriority();
    *(v13 + 728) = v72;
    if (v72)
    {
      *(v13 + 744) = 0;
      v73 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v72);
      *(v13 + 736) = v73;
      if (v73)
      {
        v74 = v73;
        v75 = *(v13 + 24);
        if (v75)
        {
          v76 = CFRetain(v75);
        }

        else
        {
          v76 = 0;
        }

        dispatch_set_context(v74, v76);
        dispatch_source_set_event_handler_f(*(v13 + 736), subaq_deferredPerformStartupSync);
        dispatch_source_set_timer(*(v13 + 736), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        dispatch_resume(*(v13 + 736));
        *a5 = v13;
        return result;
      }
    }

    goto LABEL_174;
  }

  OUTLINED_FUNCTION_239();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

__n128 faq_clearSeamHandlingState(__n128 *a1)
{
  if (a1)
  {
    v2 = a1[7].n128_u64[1];
    if (v2)
    {
      CFRelease(v2);
      a1[7].n128_u64[1] = 0;
    }

    v3 = a1[10].n128_u64[0];
    if (v3)
    {
      CFRelease(v3);
      a1[10].n128_u64[0] = 0;
    }

    v4 = MEMORY[0x1E6960CC0];
    a1[7].n128_u64[0] = 0;
    result = *v4;
    a1[8] = *v4;
    a1[9].n128_u64[0] = v4[1].n128_u64[0];
    a1[9].n128_u64[1] = 0;
  }

  return result;
}

uint64_t subaq_prepareForStart(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_56_2();
    if (v5)
    {
      return 0;
    }

    v6 = v4;
    v7 = v3;
    v8 = v2;
    if (!*(v2 + 648) && !*(v2 + 664))
    {
      goto LABEL_5;
    }

    result = subaq_setTapTimelineInfo(v1, v2, 0);
    if (!result)
    {
      *(v8 + 657) = 1;
LABEL_5:
      result = 0;
      *(v1 + 581) = v7;
      *(v1 + 582) = v6;
    }
  }

  return result;
}

uint64_t subaq_startAudioQueueIfReady(uint64_t a1)
{
  v167 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_67_2();
  if (v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = *(v1 + 48);
  v6 = *(v2 + 648);
  if (v6 || *(v2 + 664))
  {
    if (*(v1 + 753) && *(v2 + 657) && *(v1 + 752) && (v6 && *(v2 + 656) || *(v2 + 664) && *(v2 + 658)))
    {
      *(v2 + 657) = 0;
      goto LABEL_13;
    }

    return 0;
  }

LABEL_13:
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  memset(&v148, 0, sizeof(v148));
  faqTimelineWrangler_getAQTimePauseOffset(v1 + 424, &v148);
  v15 = *(v1 + 48);
  if (*(v1 + 581))
  {
    if ((v15 & 2) == 0 && !*(v4 + 49))
    {
      *&time[0].start.value = *MEMORY[0x1E6960CC0];
      OUTLINED_FUNCTION_30_4(*(MEMORY[0x1E6960CC0] + 16), v126, v130, v134, v138, v144, *&v148.value, v148.epoch);
      v7 = CMTimeCompare(&time[0].start, time2);
      if (v7)
      {
        v36 = *(v1 + 592);
        v37 = OUTLINED_FUNCTION_29_4(v7, v8, v9, v10, v11, v12, v13, v14, v126, v130, v134, v138, v144, *&v148.value, v148.epoch);
        v38 = CMClockConvertHostTimeToSystemUnits(v37);
        v46 = v36 - v38;
        *(&v149 + 1) = v36 - v38;
        DWORD2(v152) = 2;
        if (dword_1EAF16C30)
        {
          v47 = OUTLINED_FUNCTION_33_4(v38, v39, v40, v41, v42, v43, v44, v45, v127, v131, v135, v139, v145, v148.value, *&v148.timescale, v148.epoch, v149, *(&v149 + 1), v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), rhs.value, *&rhs.timescale, rhs.epoch, v154, type.value, *&type.timescale, type.epoch, v156, v157.value);
          value_low = LOBYTE(type.value);
          v140 = v47;
          os_log_type_enabled(v47, type.value);
          OUTLINED_FUNCTION_46();
          if (&unk_1EAF16000)
          {
            CMClockMakeHostTimeFromSystemUnits(&time[0].start, v46);
            Seconds = CMTimeGetSeconds(&time[0].start);
            CMClockMakeHostTimeFromSystemUnits(&time[0].start, *(v1 + 592));
            v50 = CMTimeGetSeconds(&time[0].start);
            v59 = OUTLINED_FUNCTION_29_4(v51, v52, v53, v54, v55, v56, v57, v58, v128, v132, v136, v140, v146, *&v148.value, v148.epoch);
            CMTimeGetSeconds(v59);
            *time2 = 136316930;
            OUTLINED_FUNCTION_18_4("subaq_startAudioQueueIfReady");
            *&v159[2] = v1 + 800;
            *&v159[10] = v60;
            *&v159[12] = v46;
            v160 = v60;
            v161 = Seconds;
            v162 = v60;
            v163 = v50;
            v164 = v60;
            v165 = v61;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v62, v63, v64, v65, v66, v141, value_low, v67);
          }

LABEL_35:
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_36;
        }

        goto LABEL_36;
      }
    }

    v16 = (v1 + 584);
    if (dword_1EAF16C30)
    {
      v17 = OUTLINED_FUNCTION_33_4(v7, v8, v9, v10, v11, v12, v13, v14, v126, v130, v134, v138, v144, v148.value, *&v148.timescale, v148.epoch, v149, *(&v149 + 1), v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), rhs.value, *&rhs.timescale, rhs.epoch, v154, type.value, *&type.timescale, type.epoch, v156, v157.value);
      v18 = LOBYTE(type.value);
      os_log_type_enabled(v17, type.value);
      OUTLINED_FUNCTION_46();
      if (&unk_1EAF16000)
      {
        v19 = *(v1 + 592);
        CMClockMakeHostTimeFromSystemUnits(&time[0].start, v19);
        CMTimeGetSeconds(&time[0].start);
        *time2 = 136316418;
        OUTLINED_FUNCTION_18_4("subaq_startAudioQueueIfReady");
        *&v159[2] = v1 + 800;
        *&v159[10] = v20;
        *&v159[12] = v19;
        v160 = v20;
        v161 = v21;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, v18, v28);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if ((v15 & 2) == 0 && !*(v4 + 49))
    {
      *&time[0].start.value = *MEMORY[0x1E6960CC0];
      OUTLINED_FUNCTION_30_4(*(MEMORY[0x1E6960CC0] + 16), v126, v130, v134, v138, v144, *&v148.value, v148.epoch);
      v7 = CMTimeCompare(&time[0].start, time2);
      if (v7)
      {
        memset(&v157, 0, sizeof(v157));
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v157, HostTimeClock);
        memset(&type, 0, sizeof(type));
        CMTimeMake(&time[0].start, 1, 10);
        *time2 = v157;
        CMTimeAdd(&type, time2, &time[0].start);
        memset(&rhs, 0, sizeof(rhs));
        *&time[0].start.value = *&type.value;
        OUTLINED_FUNCTION_30_4(type.epoch, v126, v130, v134, v138, v144, *&v148.value, v148.epoch);
        CMTimeSubtract(&rhs, &time[0].start, time2);
        time[0].start = rhs;
        v74 = CMClockConvertHostTimeToSystemUnits(&time[0].start);
        *(&v149 + 1) = v74;
        DWORD2(v152) = 2;
        if (dword_1EAF16C30)
        {
          v75 = v74;
          HIDWORD(v147) = 0;
          BYTE3(v147) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_46();
          if (&unk_1EAF16000)
          {
            CMClockMakeHostTimeFromSystemUnits(&time[0].start, v75);
            v76 = CMTimeGetSeconds(&time[0].start);
            time[0].start = v157;
            v77 = CMTimeGetSeconds(&time[0].start);
            v86 = OUTLINED_FUNCTION_29_4(v78, v79, v80, v81, v82, v83, v84, v85, v129, v133, v137, os_log_and_send_and_compose_flags_and_os_log_type, v147, *&v148.value, v148.epoch);
            CMTimeGetSeconds(v86);
            *time2 = 136316930;
            OUTLINED_FUNCTION_18_4("subaq_startAudioQueueIfReady");
            *&v159[2] = v1 + 800;
            *&v159[10] = v87;
            *&v159[12] = v75;
            v160 = v87;
            v161 = v76;
            v162 = v87;
            v163 = v77;
            v164 = v87;
            v165 = v88;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v89, v90, v91, v92, v93, v143, 0, v94);
          }

          goto LABEL_35;
        }

LABEL_36:
        v16 = &v149;
        goto LABEL_37;
      }
    }

    if (dword_1EAF16C30)
    {
      v29 = OUTLINED_FUNCTION_33_4(v7, v8, v9, v10, v11, v12, v13, v14, v126, v130, v134, v138, v144, v148.value, *&v148.timescale, v148.epoch, v149, *(&v149 + 1), v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), rhs.value, *&rhs.timescale, rhs.epoch, v154, type.value, *&type.timescale, type.epoch, v156, v157.value);
      v30 = os_log_type_enabled(v29, type.value);
      if (OUTLINED_FUNCTION_109_0(v30))
      {
        *time2 = 136315906;
        *&time2[4] = "subaq_startAudioQueueIfReady";
        *&time2[12] = 2048;
        *&time2[14] = v1;
        *&time2[22] = 2048;
        *&time2[24] = v4;
        *v159 = 2082;
        *&v159[2] = v1 + 800;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_18_3(v31, v32, time, v33, &dword_1962D5000, v34, v35, "<<<< FAQ >>>> %s: [%p:%p] %{public}s starting with no timestamp");
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v68, v69, v70, v71, v72);
    }

    v16 = 0;
  }

LABEL_37:
  OUTLINED_FUNCTION_97_2();
  if (v97)
  {
    v98 = v95;
  }

  else
  {
    v98 = v96;
  }

  if (*(v1 + 236))
  {
    v99 = *(v1 + 232);
    if (v99 != 0.0)
    {
      v95 = v99;
    }
  }

  *time2 = *MEMORY[0x1E6960C70];
  *&time2[16] = *(MEMORY[0x1E6960C70] + 16);
  v157 = *time2;
  v100 = *(MEMORY[0x1E6960C98] + 16);
  *&time[0].start.value = *MEMORY[0x1E6960C98];
  *&time[0].start.epoch = v100;
  *&time[0].duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (*(v1 + 492) & 1) != 0 && (*(v4 + 444) & 1) != 0 && (*(v4 + 468))
  {
    type = *(v1 + 480);
    v101 = v98 / v95;
    faqTimelineWrangler_convertAQTimeToMediaTime(v1 + 424, &type, time2, v98 / v95);
    type = *(v4 + 432);
    rhs = *(v4 + 456);
    CMTimeAdd(&v157, &type, &rhs);
    rhs = v157;
    faqTimelineWrangler_convertAQTimeToMediaTime(v1 + 424, &rhs, &type, v101);
    v157 = type;
    v102 = *&type.value;
    type = *time2;
    *&rhs.value = v102;
    rhs.epoch = v157.epoch;
    CMTimeRangeFromTimeToTime(time, &type, &rhs);
  }

  if ((time[0].start.flags & 1) != 0 && (time[0].duration.flags & 1) != 0 && !time[0].duration.epoch && (time[0].duration.value & 0x8000000000000000) == 0)
  {
    *time2 = *&time[0].start.value;
    *&time2[16] = *&time[0].start.epoch;
    *v159 = *&time[0].duration.timescale;
    v118 = OUTLINED_FUNCTION_298();
    subaq_scheduleAudioProcessingUnitForMediaTimeRange(v118, v119, v120, v121, 0, 1u, 0);
    *time2 = *&time[0].start.value;
    *&time2[16] = *&time[0].start.epoch;
    *v159 = *&time[0].duration.timescale;
    v122 = OUTLINED_FUNCTION_298();
    subaq_scheduleAudioProcessingUnitForMediaTimeRange(v122, v123, v124, v125, 1, 1u, 0);
    if (!v16)
    {
      goto LABEL_54;
    }
  }

  else if (!v16)
  {
    goto LABEL_54;
  }

  if (!*(v4 + 609))
  {
    v103 = OUTLINED_FUNCTION_298();
    subaq_audioQueuePrime(v103, v104, v105, 0);
  }

LABEL_54:
  if ((v5 & 2) != 0)
  {
    v108 = FigAudioQueueTimingShimStartWithPerfCallback(*(v4 + 40), v16, *(v1 + 582), 0, 0);
    if (v108)
    {
      return v108;
    }

    goto LABEL_63;
  }

  v106 = *(v4 + 24);
  if (v106)
  {
    CFRetain(v106);
    v107 = *(v4 + 24);
  }

  else
  {
    v107 = 0;
  }

  started = FigAudioQueueTimingShimStartAsyncWithPerfCallback(*(v4 + 40), v16, *(v1 + 582), subaq_audioQueueStartupCompleted, v107, 0, 0);
  if (!started)
  {
LABEL_63:
    *(v4 + 49) = 1;
    if ((*(v1 + 48) & 2) != 0)
    {
      if (*(v1 + 16) || (Count = CFArrayGetCount(*(v1 + 176)), Count < 1))
      {
LABEL_69:
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_75_1(DefaultLocalCenter, @"FigAudioQueue_DidStartOffline");
      }

      else
      {
        v112 = Count;
        v113 = 0;
        while (1)
        {
          v114 = OUTLINED_FUNCTION_71_1();
          if (!*(CFArrayGetValueAtIndex(v114, v115) + 49))
          {
            break;
          }

          if (v112 == ++v113)
          {
            goto LABEL_69;
          }
        }
      }
    }

    return 0;
  }

  v108 = started;
  v110 = *(v4 + 24);
  if (v110)
  {
    CFRelease(v110);
  }

  return v108;
}

void subaq_getCurrentQueueTime(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  *a2 = **&MEMORY[0x1E6960CC0];
  v3 = *(a1 + 40);
  if (v3)
  {
    DWORD2(v8) = 1;
    FigAudioQueueTimingShimGetCurrentTime(v3, 0, 0, v7, 0, 0);
    if (!v4 && (BYTE8(v8) & 1) != 0)
    {
      v5 = OUTLINED_FUNCTION_88_2(*v7);
      CMTimeMake(a2, v5, v6);
    }
  }
}

double faq_reset(uint64_t a1, double result)
{
  v149 = *MEMORY[0x1E69E9840];
  v132 = 4;
  Property = 0;
  v131 = 1;
  if (!*(a1 + 16))
  {
    Count = CFArrayGetCount(*(a1 + 176));
    if (Count >= 2)
    {
      v5 = Count + 1;
      do
      {
        CFArrayRemoveValueAtIndex(*(a1 + 176), v5 - 2);
        --v5;
      }

      while (v5 > 2);
    }

    if (*(a1 + 16))
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
    }

    Property = FigAudioQueueTimingShimGetProperty(*(ValueAtIndex + 5), 0x6171726Eu, &v131, &v132);
    if (Property)
    {
      OUTLINED_FUNCTION_10_7();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = OUTLINED_FUNCTION_101_1(os_log_and_send_and_compose_flags_and_os_log_type, v15, v16, v17, v18, v19, v20, v21, v123, v124, v125, v127, v128, v129, SWORD2(v129), SBYTE6(v129), HIBYTE(v129), v130);
      if (OUTLINED_FUNCTION_109_0(v22))
      {
        v134 = 136315906;
        v135 = "faq_reset";
        v136 = 1024;
        *v137 = Property;
        *&v137[4] = 1040;
        *&v137[6] = 4;
        *v138 = 2080;
        *&v138[2] = &Property;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_18_3(v23, v24, v148, v25, &dword_1962D5000, v26, v27, "<<<< FAQ >>>> %s: couldn't get kAudioQueueProperty_IsRunning, err=%d ('%.4s')");
        v2 = v130;
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524(v28, v29, v30, v31, v32);
    }

    if (dword_1EAF16C30)
    {
      OUTLINED_FUNCTION_10_7();
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v41 = OUTLINED_FUNCTION_101_1(v33, v34, v35, v36, v37, v38, v39, v40, v123, v124, v125, v127, v128, v129, SWORD2(v129), SBYTE6(v129), HIBYTE(v129), v130);
      if (OUTLINED_FUNCTION_109_0(v41))
      {
        OUTLINED_FUNCTION_22_5();
        *&v138[8] = 2082;
        v139 = v42;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_18_3(v43, v44, v148, v45, &dword_1962D5000, v46, v47, "<<<< FAQ >>>> %s: [%p:%p] %{public}s calling FigAudioQueueTimingShimReset");
        v2 = v130;
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v48, v49, v50, v51, v52);
    }

    if (*(a1 + 784))
    {
      v53 = OUTLINED_FUNCTION_298();
      Property = faq_disconnectFromOfflineMixer(v53, v54);
      if (Property)
      {
        OUTLINED_FUNCTION_10_7();
        v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_61_3(v55, v56, v57, v58, v59, v60, v61, v62, v123, v124, v125, v127, v128, v129, SWORD2(v129), SBYTE6(v129), HIBYTE(v129), v130);
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          FigAudioQueueTimingShimGetAudioQueue(*(ValueAtIndex + 5));
          OUTLINED_FUNCTION_22_5();
          *&v138[8] = v63;
          v139 = v64;
          v140 = 2082;
          v141 = v65;
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_18_3(v2, v66, v148, v67, &dword_1962D5000, v68, v69, "<<<< FAQ >>>> %s: can't disconnect faq [%p:%p:%p] %{public}s from mixer");
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414(v70, v71, v72, v73, v74);
      }
    }

    FigAudioQueueTimingShimReset(*(ValueAtIndex + 5), v7, v8, v9, v10, v11, v12, v13);
    if (*(a1 + 784))
    {
      v75 = OUTLINED_FUNCTION_298();
      Property = faq_connectToOfflineMixer(v75, v76);
      if (Property)
      {
        OUTLINED_FUNCTION_10_7();
        v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_61_3(v77, v78, v79, v80, v81, v82, v83, v84, v123, v124, v125, v127, v128, v129, SWORD2(v129), SBYTE6(v129), HIBYTE(v129), v130);
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          FigAudioQueueTimingShimGetAudioQueue(*(ValueAtIndex + 5));
          OUTLINED_FUNCTION_22_5();
          *&v138[8] = v85;
          v139 = v86;
          v140 = 2082;
          v141 = v87;
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_18_3(v2, v88, v148, v89, &dword_1962D5000, v90, v91, "<<<< FAQ >>>> %s: can't connect faq [%p:%p:%p] %{public}s to mixer");
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414(v92, v93, v94, v95, v96);
      }
    }

    v97 = 1.0;
    if (*(a1 + 236) && *(a1 + 232) != 0.0)
    {
      v97 = *(a1 + 232);
    }

    Property = FigAudioQueueTimingShimSetParameter(*(ValueAtIndex + 5), 2u, v97);
    if (Property)
    {
      OUTLINED_FUNCTION_10_7();
      v98 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_61_3(v98, v99, v100, v101, v102, v103, v104, v105, v123, v124, v125, v127, v128, v129, SWORD2(v129), SBYTE6(v129), HIBYTE(v129), v130);
      OUTLINED_FUNCTION_40();
      if (v2)
      {
        AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(ValueAtIndex + 5));
        v134 = 136316930;
        v135 = "faq_reset";
        v136 = 2048;
        *v137 = a1;
        *&v137[8] = 2048;
        *v138 = ValueAtIndex;
        *&v138[8] = 2048;
        v139 = AudioQueue;
        v140 = 2082;
        v141 = a1 + 800;
        v142 = 1024;
        v143 = Property;
        v144 = 1040;
        v145 = 4;
        v146 = 2080;
        p_Property = &Property;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_18_3(v2, v107, v148, v108, &dword_1962D5000, v109, v110, "<<<< FAQ >>>> %s: [%p:%p:%p] %{public}s couldn't set kAudioQueueParam_PlayRate, err=%d ('%.4s')");
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_414(v111, v112, v113, v114, v115);
    }

    v116 = OUTLINED_FUNCTION_298();
    subaq_restoreParameters(v116, v117);
    if (v131 && (*(a1 + 48) & 2) == 0)
    {
      FigAudioQueueTimingShimPause(*(ValueAtIndex + 5));
      *(a1 + 580) = 1;
      if (*(a1 + 73) || *(a1 + 576))
      {
        *(a1 + 652) = 1;
      }

      else
      {
        *(a1 + 652) = 0;
        *(a1 + 305) = 0;
      }
    }

    *(ValueAtIndex + 145) = subaq_getCurrentPlayRate2ParameterValue(ValueAtIndex);
    v118 = MEMORY[0x1E6960C70];
    if (*(a1 + 579))
    {
      *(a1 + 579) = 0;
      *(a1 + 305) = 0;
      *(a1 + 652) = 0;
      v119 = *v118;
      *(a1 + 528) = *v118;
      v120 = *(v118 + 2);
      *(a1 + 544) = v120;
      *(a1 + 480) = v119;
      *(a1 + 496) = v120;
      *(ValueAtIndex + 484) = v119;
      *(ValueAtIndex + 500) = v120;
    }

    *(a1 + 785) = 0;
    v126 = *v118;
    *(ValueAtIndex + 408) = *v118;
    v121 = *(v118 + 2);
    *(ValueAtIndex + 53) = v121;
    *(ValueAtIndex + 27) = v126;
    *(ValueAtIndex + 56) = v121;
    *(ValueAtIndex + 456) = v126;
    *(ValueAtIndex + 59) = v121;
    *(ValueAtIndex + 676) = v126;
    *(ValueAtIndex + 692) = v121;
    FigSimpleMutexLock();
    *(ValueAtIndex + 508) = v126;
    *(ValueAtIndex + 524) = v121;
    FigSimpleMutexUnlock();
    *(a1 + 578) = 1;
    *(a1 + 196) = 0;
    *(a1 + 356) = 0;
    v122 = MEMORY[0x1E6960CC0];
    *(a1 + 360) = *MEMORY[0x1E6960CC0];
    *(a1 + 376) = *(v122 + 16);
    *&result = faq_clearSeamHandlingState(a1).n128_u64[0];
  }

  return result;
}

void subaq_getAudioQueueLatencyFigTime()
{
  v55 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
  if (v5)
  {
    OUTLINED_FUNCTION_56_2();
    if (!v6)
    {
      OUTLINED_FUNCTION_471();
      if (*(v2 + 654))
      {
        if (dword_1EAF16C30)
        {
          OUTLINED_FUNCTION_2_24();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v15 = OUTLINED_FUNCTION_19_4(os_log_and_send_and_compose_flags_and_os_log_type, v8, v9, v10, v11, v12, v13, v14, v39, v40, v41, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          if (OUTLINED_FUNCTION_115_1(v15))
          {
            v44 = 136315906;
            v45 = "subaq_getAudioQueueLatencyFigTime";
            v46 = 2048;
            v47 = v2;
            v48 = 2048;
            v49 = v1;
            v50 = 2082;
            v51 = v2 + 800;
            OUTLINED_FUNCTION_100();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl(v16, v17, v18, v19, v20, v21, v3, v22);
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414(v32, v33, v34, v35, v36);
        }

        v37 = MEMORY[0x1E6960CC0];
      }

      else
      {
        if (FigAudioQueueTimingShimGetAudioQueueLatency(*(v1 + 40), *(v1 + 624), *(v2 + 768), &v43))
        {
          return;
        }

        if (dword_1EAF16C30)
        {
          OUTLINED_FUNCTION_147();
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, BYTE3(type));
          OUTLINED_FUNCTION_46();
          if (v4)
          {
            time = v43;
            Seconds = CMTimeGetSeconds(&time);
            v44 = 136316162;
            v45 = "subaq_getAudioQueueLatencyFigTime";
            v46 = 2048;
            v47 = v2;
            v48 = 2048;
            v49 = v1;
            v50 = 2082;
            v51 = v2 + 800;
            v52 = 2048;
            v53 = Seconds;
            OUTLINED_FUNCTION_100();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl(v25, v26, v27, v28, v29, v30, BYTE3(type), v31);
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v37 = &v43;
      }

      v38 = *&v37->value;
      *(v0 + 16) = v37->epoch;
      *v0 = v38;
    }
  }
}

uint64_t subaq_getEQPreset(uint64_t result)
{
  if (result && !*(result + 16) && (*(result + 48) & 4) == 0)
  {
    OUTLINED_FUNCTION_471();
    OUTLINED_FUNCTION_80_1();
    result = FigAudioQueueTimingShimGetProperty(v2, v3, v4, v5);
    if (!result)
    {
      *v1 = -1;
    }
  }

  return result;
}

uint64_t faq_setAudioCurves(uint64_t a1, unint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  HIDWORD(v65) = a2 == 0;
  if (a2 > 1)
  {
    return 4294954356;
  }

  CFGetAllocator(a1);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294954355;
  }

  v5 = MutableCopy;
  theArray.start.value = 0;
  v72.value = 0;
  FigCFDictionaryGetValueIfPresent();
  FigCFDictionaryGetValueIfPresent();
  *&context = 0;
  *(&context + 1) = a1;
  *cf = a2;
  memset(&cf[8], 0, 32);
  FigCFDictionaryGetValueIfPresent();
  FigCFDictionaryGetValueIfPresent();
  if (FigCFDictionaryGetCount() < 1 || (CFDictionaryApplyFunction(*&cf[24], &faq_checkOldFAPUCurvesExistOnCurvesApplier, &context), v6 = context, !context))
  {
    Count = FigCFDictionaryGetCount();
    if (Count < 1)
    {
      v6 = 0;
    }

    else
    {
      v8 = Count;
      v9 = CFGetAllocator(a1);
      *&cf[8] = CFDictionaryCreateMutable(v9, v8, MEMORY[0x1E695E9D8], &faq_fapuCurveInspectionResultsDictValueCallbacks);
      if (*&cf[8] && (v10 = CFGetAllocator(a1), (*&cf[16] = CFDictionaryCreateMutable(v10, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0))
      {
        CFDictionaryApplyFunction(*&cf[32], faq_convertAudioProcessingUnitCurvesToPackedCurvesAndCopyInspectionResultsApplier, &context);
        v6 = context;
        if (!context)
        {
          CFDictionarySetValue(v5, @"AudioCurves_ProcessingUnits", *&cf[16]);
          v11 = *&cf[8];
          *&cf[8] = 0;
          goto LABEL_14;
        }
      }

      else
      {
        OUTLINED_FUNCTION_111();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v61, v62);
        v6 = v54;
      }
    }
  }

  if (*&cf[8])
  {
    CFRelease(*&cf[8]);
  }

  v11 = 0;
LABEL_14:
  *(&v64 + 1) = a1 + 656;
  v68 = a2;
  if (*&cf[16])
  {
    CFRelease(*&cf[16]);
  }

  if (v6)
  {
    LODWORD(v72.value) = 0;
    LOBYTE(start.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v46 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_28_1(v46))
    {
      LODWORD(theArray.start.value) = 136315906;
      *(&theArray.start.value + 4) = "faq_setAudioCurves";
      LOWORD(theArray.start.flags) = 2048;
      *(&theArray.start.flags + 2) = a1;
      HIWORD(theArray.start.epoch) = 2082;
      theArray.duration.value = a1 + 800;
      LOWORD(theArray.duration.timescale) = 1024;
      *(&theArray.duration.timescale + 2) = a2;
      LODWORD(v61) = 38;
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl(v47, v48, v49, v50, v51, v52, 0, v53, &theArray, v61);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_417(v55, v56, v57, v58, v59);
    if (!v11)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v66 = v11;
    v67 = v5;
    *&v64 = FigCFDictionaryGetCount();
    if (v64 >= 1)
    {
      FigSimpleMutexLock();
      if (!*(a1 + 16))
      {
        v12 = CFArrayGetCount(*(a1 + 176));
        if (v12 >= 1)
        {
          v14 = v12;
          v15 = 0;
          v63 = (a1 + 528);
          *&v13 = 136315906;
          v69 = v13;
          do
          {
            if (*(a1 + 16))
            {
              ValueAtIndex = 0;
            }

            else
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), v15);
            }

            memset(&theArray, 0, sizeof(theArray));
            if (ValueAtIndex[496])
            {
              OUTLINED_FUNCTION_97_2();
              if (v27)
              {
                v28 = v25;
              }

              else
              {
                v28 = v26;
              }

              if (*(a1 + 236))
              {
                v29 = *(a1 + 232);
                v27 = v29 == 0.0;
                v25 = v29;
                if (v27)
                {
                  v25 = 1.0;
                }
              }

              v30 = ValueAtIndex + 484;
              if (v28 / v25 >= 0.0)
              {
                context = *v63;
                *cf = *(v63 + 2);
                *&v72.value = *v30;
                v72.epoch = *(ValueAtIndex + 500);
                CMTimeRangeFromTimeToTime(&theArray, &context, &v72);
              }

              else
              {
                v72 = *v63;
                *&start.value = *v30;
                start.epoch = *(ValueAtIndex + 500);
                CMTimeRangeFromTimeToTime(&context, &start, &v72);
                *&theArray.start.value = context;
                *&theArray.start.epoch = *cf;
                *&theArray.duration.timescale = *&cf[16];
              }

              v31 = OUTLINED_FUNCTION_57_2();
              v32 = v67;
              subaq_scheduleVolumeCurvesForMediaTimeRange(v31, v33, v67, v34, SHIDWORD(v65), 1);
              subaq_scheduleCinematicForMediaTimeRange(a1, ValueAtIndex, v67, v35, v36, v37, v38, v39, v60, v61, v62, v63, SBYTE2(v63), BYTE3(v63), HIDWORD(v63), v64, v65, SWORD2(v65), SHIWORD(v65), v66, v67, v68, v69, *(&v69 + 1), start.value, *&start.timescale, start.epoch, v71, v72.value, *&v72.timescale, v72.epoch, v73, v74, *(&v74 + 1), theArray.start.value, *&theArray.start.timescale, theArray.start.epoch, theArray.duration.value, *&theArray.duration.timescale, theArray.duration.epoch, context, *(&context + 1), *cf, *&cf[8], *&cf[16], *&cf[24], *&cf[32], v78, v79, v80, v81, v82);
              v40 = OUTLINED_FUNCTION_57_2();
              subaq_scheduleAudioProcessingUnitForMediaTimeRange(v40, v41, v32, v42, v68, 1u, v66);
            }

            else
            {
              LODWORD(start.value) = 0;
              HIBYTE(v71) = 0;
              v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = start.value;
              v19 = HIBYTE(v71);
              if (os_log_type_enabled(v17, HIBYTE(v71)))
              {
                v20 = value;
              }

              else
              {
                v20 = value & 0xFFFFFFFE;
              }

              if (v20)
              {
                LODWORD(v72.value) = v69;
                *(&v72.value + 4) = "faq_setAudioCurves";
                LOWORD(v72.flags) = 2048;
                *(&v72.flags + 2) = a1;
                HIWORD(v72.epoch) = 2048;
                v73 = ValueAtIndex;
                LOWORD(v74) = 2082;
                *(&v74 + 2) = a1 + 800;
                OUTLINED_FUNCTION_90_1();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v21, v22, v23, v24, &dword_1962D5000, v17, v19, "<<<< FAQ >>>> %s: [%p:%p] %{public}s thisSubAQ->lastEndPTSEnqueued is invalid, skip and continue");
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            ++v15;
          }

          while (v14 != v15);
        }
      }
    }

    v5 = v67;
    v43 = *(*(&v64 + 1) + 8 * v68);
    *(*(&v64 + 1) + 8 * v68) = v67;
    CFRetain(v67);
    if (v43)
    {
      CFRelease(v43);
    }

    v11 = v66;
    if (v64 >= 1)
    {
      FigSimpleMutexUnlock();
    }

    v6 = 0;
    if (!v66)
    {
      goto LABEL_49;
    }
  }

  CFRelease(v11);
LABEL_49:
  CFRelease(v5);
  return v6;
}

CFIndex faq_updateRate2Enable(CFIndex result)
{
  if (*(result + 680))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(result + 788) != 0.0;
  }

  v7 = v1;
  if (!*(result + 16))
  {
    result = CFArrayGetCount(*(result + 176));
    if (result >= 1)
    {
      v2 = result;
      for (i = 0; i != v2; ++i)
      {
        v4 = OUTLINED_FUNCTION_71_1();
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        result = FigAudioQueueTimingShimSetProperty(ValueAtIndex[5], 0x71737232u, &v7, 4u);
      }
    }
  }

  return result;
}

uint64_t faq_connectToOfflineMixer(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 702) || !*(a1 + 720))
  {
    return 0;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, DWORD2(v10), v11);
    v2 = v9;
    if (v9)
    {
      return v2;
    }

    goto LABEL_6;
  }

  v6 = v5;
  AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
  v2 = FigAudioQueueOfflineMixerConnectAudioQueue(v6, a1, AudioQueue);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  FigAudioQueueOfflineMixerGetOutputASBD(v6, &v10);
  *(a1 + 648) = *&v10;
  CFRelease(v6);
  if (!v2)
  {
LABEL_6:
    *(a2 + 702) = 1;
  }

  return v2;
}

void faq_setPropertyOnAllSubAudioQueues(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    OUTLINED_FUNCTION_471();
    v6 = v5;
    if (CFArrayGetCount(*(v5 + 176)) >= 1)
    {
      OUTLINED_FUNCTION_417_0();
      do
      {
        if (*(v6 + 16))
        {
          ValueAtIndex = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 176), v4);
        }

        subaq_setProperty(v6, ValueAtIndex, v2, v1);
        if (v8)
        {
          break;
        }

        ++v4;
      }

      while (v3 != v4);
    }
  }
}

uint64_t faq_addAudioProcessingTapListeners(uint64_t a1)
{
  if (!*(a1 + 744))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_51_2();
  result = FigNotificationCenterAddWeakListener();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_51_2();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_51_2();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

const void *faq_GetLastSubAudioQueue(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_67_2();
  if (v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(v1 + 176));
  if (*(v1 + 16))
  {
    return 0;
  }

  v4 = Count - 1;
  v5 = *(v1 + 176);

  return CFArrayGetValueAtIndex(v5, v4);
}

void faq_sourceDataBecameReady(uint64_t a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_67_2();
    if (!v2)
    {
      FigSemaphoreSignal();
    }

    CFRelease(v1);
  }
}

void faq_sourceEndOfDataReached(uint64_t a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_67_2();
    if (!v2)
    {
      CFRetain(v1);
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_async_f(global_queue, v1, faq_deferredAudioQueueEndOfDataReached);
      FigSemaphoreSignal();
    }

    CFRelease(v1);
  }
}

uint64_t faq_inhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    v8 = *(a2 + 104);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 104) = 0;
    }

    if (a5)
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]);
      if (Value)
      {
        *(a2 + 104) = Value;
        CFRetain(Value);
      }
    }

    faq_reset(a2, v7);
  }

  return FigSimpleMutexUnlock();
}

uint64_t subaq_setupForDecode(uint64_t a1, CMFormatDescriptionRef desc)
{
  ptr = 0;
  v11 = 0;
  v9 = 0;
  CMFormatDescriptionGetMediaSubType(desc);
  if (!MEMORY[0x19A8D0E00](a1 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_67_2();
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    if (v2[34])
    {
      FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences();
    }

    else
    {
      CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, ptr);
    v6 = v7;
  }

  CFRelease(v2);
  return v6;
}

void subaq_deferredPerformStartupSync(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v4)
    {
      OUTLINED_FUNCTION_56_2();
      if (!v5)
      {
        v6 = OUTLINED_FUNCTION_171();
        subaq_performStartupSync(v6);
      }

      CFRelease(v1);
    }

    else
    {
      v2 = v1;
    }

    CFRelease(v2);
  }

  CFRelease(a1);
}

void fsaq_Finalize(uint64_t a1)
{
  v2 = MEMORY[0x19A8D0E00](a1 + 16);
  FigReadWriteLockLockForWrite();
  CFSetRemoveValue(qword_1ED4CA550, a1);
  FigReadWriteLockUnlockForWrite();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_298();
    faq_disconnectFromOfflineMixer(v3, v4);
  }

  v5 = *(a1 + 736);
  if (v5)
  {
    dispatch_source_cancel(v5);
    if (*(a1 + 744))
    {
      v6 = *(a1 + 728);
      if (v6 != dispatch_get_current_queue())
      {
        dispatch_sync_f(v6, 0, subaq_noop);
      }
    }

    dispatch_release(*(a1 + 736));
    *(a1 + 736) = 0;
    v7 = *(a1 + 24);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  v8 = *(a1 + 728);
  if (v8)
  {
    dispatch_release(v8);
    *(a1 + 728) = 0;
  }

  v9 = *(a1 + 768);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 768) = 0;
  }

  v10 = *(a1 + 776);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 776) = 0;
  }

  if (*(a1 + 40))
  {
    v11 = *(a1 + 32);
    FigCFWeakReferenceTableRemoveValue();
    v12 = OUTLINED_FUNCTION_5_13();
    v14 = v13;
    FigAudioQueueTimingShimRemovePropertyListener(v12, 0x71637665u, v13, v11);
    FigAudioQueueTimingShimRemovePropertyListener(*(a1 + 40), 0x61747072u, v14, v11);
    OUTLINED_FUNCTION_37_2();
    FigAudioQueueTimingShimRemovePropertyListener(v15, 0x6171726Eu, v16, v11);
    if (!v2)
    {
      goto LABEL_20;
    }

    *(v2 + 384) = 0;
    *(v2 + 400) = 0;
    v17 = *(v2 + 408);
    if (v17)
    {
      CFRelease(v17);
      *(v2 + 408) = 0;
    }

    if (*(v2 + 72))
    {
LABEL_20:
      OUTLINED_FUNCTION_0_25();
      FigAudioQueueTimingShimRemovePropertyListener(v18, 0x666C7368u, v19, v11);
    }

    v20 = OUTLINED_FUNCTION_5_13();
    v22 = v21;
    FigAudioQueueTimingShimRemovePropertyListener(v20, 0x71646C73u, v21, v11);
    FigAudioQueueTimingShimRemovePropertyListener(*(a1 + 40), 0x6864666Du, v22, v11);
    if (!v2 || (*(v2 + 49) & 2) == 0)
    {
      v23 = OUTLINED_FUNCTION_5_13();
      v25 = v24;
      FigAudioQueueTimingShimRemovePropertyListener(v23, 0x72746F72u, v24, v11);
      FigAudioQueueTimingShimRemovePropertyListener(*(a1 + 40), 0x69737470u, v25, v11);
    }

    FigReadWriteLockLockForWrite();
    FigReadWriteLockUnlockForWrite();
    FigAudioQueueTimingShimStop(*(a1 + 40), 1u);
    v26 = 0;
    v27 = a1 + 344;
    do
    {
      v28 = *(v27 + v26);
      if (v28)
      {
        FigAudioQueueTimingShimFreeBuffer(*(a1 + 40), v28);
        *(v27 + v26) = 0;
      }

      v26 += 8;
    }

    while (v26 != 64);
    v29 = (a1 + 160);
    v30 = 8;
    do
    {
      if (*v29)
      {
        v31 = *(v29 - 2);
        if (v31)
        {
          CFRelease(v31);
          *(v29 - 2) = 0;
        }

        v32 = *(v29 - 1);
        if (v32)
        {
          CFRelease(v32);
          *(v29 - 1) = 0;
        }

        *v29 = 0;
      }

      v29 += 24;
      --v30;
    }

    while (v30);
    if (*(a1 + 648))
    {
      v33 = (a1 + 648);
      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v34 = OUTLINED_FUNCTION_184();
        v35(v34);
      }

      v36 = *(a1 + 640);
      if (v36)
      {
        CFRelease(v36);
        *(a1 + 640) = 0;
      }
    }

    else
    {
      if (!*(a1 + 664))
      {
        goto LABEL_49;
      }

      FigAudioQueueTimingShimGetAudioQueue(*(a1 + 40));
      OUTLINED_FUNCTION_411();
      if (*(*(CMBaseObjectGetVTable() + 16) + 72))
      {
        v37 = OUTLINED_FUNCTION_184();
        v38(v37);
      }

      v33 = (a1 + 640);
      v39 = *(a1 + 664);
      if (v39)
      {
        CFRelease(v39);
        *(a1 + 664) = 0;
      }

      if (!*v33)
      {
        goto LABEL_49;
      }

      CFRelease(*v33);
    }

    *v33 = 0;
LABEL_49:
    if (dword_1EAF16C30)
    {
      OUTLINED_FUNCTION_25_3();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v48 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v41, v42, v43, v44, v45, v46, v47, v67, v68, v69, v70, SBYTE2(v70), BYTE3(v70), SHIDWORD(v70));
      if (OUTLINED_FUNCTION_109_0(v48))
      {
        OUTLINED_FUNCTION_91_1();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_9_6();
        OUTLINED_FUNCTION_456(v49, v50, v51, v52, v53, v54, v55, v56);
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v57, v58, v59, v60, v61);
    }

    FigAudioQueueTimingShimDispose(*(a1 + 40), 1u);
    *(a1 + 40) = 0;
    CFRelease(*(a1 + 24));
  }

  v62 = *(a1 + 624);
  if (v62)
  {
    CFRelease(v62);
    *(a1 + 624) = 0;
  }

  if (*(a1 + 136))
  {
    FigSimpleMutexDestroy();
    *(a1 + 136) = 0;
  }

  if (*(a1 + 336))
  {
    FigSimpleMutexDestroy();
    *(a1 + 336) = 0;
  }

  if (*(a1 + 584))
  {
    FigSimpleMutexDestroy();
    *(a1 + 584) = 0;
  }

  if (*(a1 + 704))
  {
    FigReadWriteLockDestroy();
    *(a1 + 704) = 0;
  }

  v63 = *(a1 + 56);
  if (v63)
  {
    CFRelease(v63);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 72))
  {
    v64 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v64, *(a1 + 64));
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  if (*(a1 + 96))
  {
    v65 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v65, *(a1 + 80));
    *(a1 + 80) = 0;
    *(a1 + 96) = 0;
  }

  FigCFWeakReferenceStore();
  v66 = *(a1 + 24);
  if (v66)
  {
    CFRelease(v66);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void subaq_deferringAQPropertyListenerHandler(uint64_t a1, uint64_t a2, int a3)
{
  v5 = FigCFWeakReferenceTableCopyValue();
  if (v5)
  {
    v6 = v5;
    if (MEMORY[0x19A8D0E00](v5 + 16))
    {
      OUTLINED_FUNCTION_77_1();
      if (!v7 && subaq_lockListenerBarrierForValidSubAQ(v6))
      {
        v8 = OUTLINED_FUNCTION_74_2();
        if (v8)
        {
          v9 = v8;
          *v8 = CFRetain(v3);
          v9[1] = CFRetain(v6);
          *(v9 + 4) = a3;
          dispatch_async_f(v3[5], v9, subaq_deferredAQPropertyListenerHandler);
        }

        FigReadWriteLockUnlockForRead();
      }

      CFRelease(v3);
    }

    CFRelease(v6);
  }
}

double subaq_startSubAudioQueue(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_77_1();
    if (!v4)
    {
      *(v2 + 594) = 1;
      *(v2 + 600) = 0;
      faq_enqueueSourceData(v1, 0);
      if (((*(v1 + 48) & 2) != 0 || (*(v1 + 640) & 2) != 0) && (v5 = OUTLINED_FUNCTION_177(), faq_isSubAudioQueueInList(v5)))
      {
        v6 = OUTLINED_FUNCTION_177();
        if (!subaq_prepareForStart(v6))
        {
          v7 = OUTLINED_FUNCTION_177();

          subaq_startAudioQueueIfReady(v7);
        }
      }

      else
      {
        OUTLINED_FUNCTION_239();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  return result;
}

void faq_wakeupOfflineMixer(uint64_t a1)
{
  if (*(a1 + 720))
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v1)
    {
      v2 = v1;
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_75_1(DefaultLocalCenter, @"FigAudioQueue_DidEnqueueData");

      CFRelease(v2);
    }
  }
}

uint64_t faq_isSubAudioQueueInList(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_77_1();
    if (v3)
    {
      return 0;
    }

    v4 = v2;
    Count = CFArrayGetCount(*(v1 + 176));
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        v8 = *(v1 + 16) ? 0 : CFArrayGetValueAtIndex(*(v1 + 176), v7);
        if (v8 == v4)
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

void subaq_startListener(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_77_1();
      if (!v4)
      {
        CFRetain(*(a2 + 24));
        v5 = *(v2 + 32);
        v6 = *(a2 + 24);

        dispatch_async_f(v5, v6, subaq_startListenerInternal);
      }
    }
  }
}

void subaq_startListenerInternal(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v4)
    {
      OUTLINED_FUNCTION_104_1(v4);
      if (*(v2 + 16))
      {
        goto LABEL_20;
      }

      *(v1 + 745) = 1;
      v5 = *(v1 + 748);
      if (v5 > 0.0)
      {
        FigAudioQueueTimingShimSetParameter(*(v1 + 40), 4u, v5);
        FigAudioQueueTimingShimSetParameter(*(v1 + 40), 1u, *(v1 + 752));
        *(v1 + 748) = 0;
        *(v2 + 200) = *(v1 + 752);
        *(v2 + 204) = 1;
      }

      v6 = *(v1 + 756);
      if (v6 > 0.0)
      {
        FigAudioQueueTimingShimSetParameter(*(v1 + 40), 6u, v6);
        FigAudioQueueTimingShimSetParameter(*(v1 + 40), 5u, *(v1 + 760));
        *(v1 + 756) = 0;
        *(v2 + 208) = *(v1 + 760);
        *(v2 + 212) = 1;
      }

      if ((*(v2 + 48) & 2) != 0)
      {
LABEL_20:
        FigSimpleMutexUnlock();
      }

      else
      {
        FigSimpleMutexUnlock();
        if (*(v1 + 608))
        {
          OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
          OUTLINED_FUNCTION_171();
          subaq_getAudioQueueLatencyFigTime();
          *v15 = *&v15[32];
          Seconds = CMTimeGetSeconds(v15);
          v8 = 1.0;
          if (*(v2 + 236))
          {
            v9 = *(v2 + 232);
            v10 = v9 == 0.0;
            v8 = v9;
            if (v10)
            {
              v8 = 1.0;
            }
          }

          if (Seconds * v8 <= 1.0)
          {
            v14 = OUTLINED_FUNCTION_171();
            subaq_performStartupSync(v14);
          }

          else
          {
            v11 = Seconds + -1.0 / v8;
            CFRetain(*(v1 + 24));
            *(v1 + 744) = 1;
            dispatch_time(0, (v11 * 1000000000.0));
            v12 = OUTLINED_FUNCTION_577();
            dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
          }
        }

        *(v1 + 48) = 1;
        *(v1 + 50) = 1;
        CFRetain(*(v1 + 24));
        dispatch_async_f(*(v2 + 32), *(v1 + 24), subaq_stopAudioQueueIfObsolete);
      }

      CFRelease(v2);
    }

    CFRelease(v1);
  }

  CFRelease(a1);
}

void subaq_performStartupSync(uint64_t a1)
{
  v326 = *MEMORY[0x1E69E9840];
  *v307 = 0u;
  *v308 = 0u;
  *v305 = 0u;
  v306 = 0u;
  v303 = **&MEMORY[0x1E6960C70];
  v301 = v303;
  if (a1)
  {
    OUTLINED_FUNCTION_67_2();
    if (!v8)
    {
      if (*(v1 + 576))
      {
        v9 = v5;
        v285 = v6;
        *v287 = v7;
        v10 = FigAudioQueueTimingShimWaitForStartup(*(v5 + 40));
        HIDWORD(v310) = v10;
        if (v10 == -12948)
        {
          OUTLINED_FUNCTION_4_18();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = OUTLINED_FUNCTION_40_2(os_log_and_send_and_compose_flags_and_os_log_type, v12, v13, v14, v15, v16, v17, v18, v273, v274, v275, v276, v280, v285, v287[0], v287[1], v288, v291, v293, v295, *(&v295 + 1), v296, hostTime[0], hostTime[1], v298, *(&v298 + 1), v299[0], v299[1], v300, *(&v300 + 1), v301.value, *&v301.timescale, v301.epoch, v302, v303.value, *&v303.timescale, v303.epoch, v304, v305[0], v305[1], v306, *(&v306 + 1), v307[0], v307[1], v308[0], v308[1], v309, v310, v311, v312.value, *&v312.timescale, v312.epoch, v313.value, *&v313.timescale, v313.epoch, v314.value, *&v314.timescale, v314.epoch, v315.value, *&v315.timescale, v315.epoch, v316.value);
          if (OUTLINED_FUNCTION_109_0(v19))
          {
            OUTLINED_FUNCTION_87_0();
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_18_3(v20, v21, &time, v22, &dword_1962D5000, v23, v24, "<<<< FAQ >>>> %s: Called subaq_performStartupSync before FigAudioQueueTimingShimStart.");
            OUTLINED_FUNCTION_82_2();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_524(v25, v26, v27, v28, v29);
          v10 = HIDWORD(v310);
        }

        if (v10)
        {
          OUTLINED_FUNCTION_4_18();
          v246 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_60_2(v246, v247, v248, v249, v250, v251, v252, v253, v273, v274, v275, v276, v280, v285, v287[0], v287[1], v288, v291, v293, v295, *(&v295 + 1), v296, hostTime[0], hostTime[1], v298, *(&v298 + 1), v299[0], v299[1], v300, *(&v300 + 1), v301.value, *&v301.timescale, v301.epoch, v302, v303.value, *&v303.timescale, v303.epoch, v304, v305[0], v305[1], v306, *(&v306 + 1), v307[0], v307[1], v308[0], v308[1], v309, v310, v311, v312.value, *&v312.timescale, v312.epoch, v313.value, *&v313.timescale, v313.epoch, v314.value, *&v314.timescale, v314.epoch, v315.value, *&v315.timescale, v315.epoch, v316.value);
          OUTLINED_FUNCTION_40();
          if (v4)
          {
            v286 = *(v9 + 40);
            if (v310 < 0)
            {
              v254 = OUTLINED_FUNCTION_105_1();
            }

            else
            {
              v254 = OUTLINED_FUNCTION_44_3();
            }

            if (v254)
            {
              v255 = HIBYTE(HIDWORD(v310));
            }

            else
            {
              v255 = 46;
            }

            v284 = v255;
            if (BYTE6(v310) > 0x7Fu)
            {
              v256 = OUTLINED_FUNCTION_105_1();
            }

            else
            {
              v256 = OUTLINED_FUNCTION_44_3();
            }

            if (v256)
            {
              v257 = BYTE6(v310);
            }

            else
            {
              v257 = 46;
            }

            v279 = v257;
            if (BYTE5(v310) > 0x7Fu)
            {
              v258 = OUTLINED_FUNCTION_105_1();
            }

            else
            {
              v258 = OUTLINED_FUNCTION_44_3();
            }

            if (v258)
            {
              v259 = BYTE5(v310);
            }

            else
            {
              v259 = 46;
            }

            if (BYTE4(v310) > 0x7Fu)
            {
              v260 = OUTLINED_FUNCTION_105_1();
            }

            else
            {
              v260 = OUTLINED_FUNCTION_44_3();
            }

            if (v260)
            {
              v261 = BYTE4(v310);
            }

            else
            {
              v261 = 46;
            }

            LODWORD(lhs.value) = 136317442;
            *(&lhs.value + 4) = "subaq_performStartupSync";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = v1;
            HIWORD(lhs.epoch) = 2048;
            v319 = v9;
            v320 = 2048;
            v321 = v286;
            v322 = 2082;
            *v323 = v1 + 800;
            *&v323[8] = 1024;
            *&v323[10] = HIDWORD(v310);
            *&v323[14] = 1024;
            *&v323[16] = v284;
            *&v323[20] = 1024;
            *&v323[22] = v279;
            *&v323[26] = 1024;
            *&v323[28] = v259;
            *&v323[32] = 1024;
            *&v323[34] = v261;
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v262, v263, v264, v265, v266, v2, v3, v267);
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414(v268, v269, v270, v271, v272);
        }

        else
        {
          LODWORD(v308[1]) = 3;
          *hostTime = 0u;
          v298 = 0u;
          *v299 = 0u;
          v300 = 0u;
          FigAudioQueueTimingShimGetCurrentTime(*(v9 + 40), 0, 1, v305, 0, hostTime);
          HIDWORD(v310) = v30;
          v31 = MEMORY[0x1E6960CC0];
          if (v30)
          {
            LODWORD(v308[1]) = 0;
            OUTLINED_FUNCTION_4_18();
            v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v40 = OUTLINED_FUNCTION_40_2(v32, v33, v34, v35, v36, v37, v38, v39, v273, v274, v275, v276, v280, v285, v287[0], v287[1], v288, v291, v293, v295, *(&v295 + 1), v296, hostTime[0], hostTime[1], v298, *(&v298 + 1), v299[0], v299[1], v300, *(&v300 + 1), v301.value, *&v301.timescale, v301.epoch, v302, v303.value, *&v303.timescale, v303.epoch, v304, v305[0], v305[1], v306, *(&v306 + 1), v307[0], v307[1], v308[0], v308[1], v309, v310, v311, v312.value, *&v312.timescale, v312.epoch, v313.value, *&v313.timescale, v313.epoch, v314.value, *&v314.timescale, v314.epoch, v315.value, *&v315.timescale, v315.epoch, v316.value);
            if (OUTLINED_FUNCTION_109_0(v40))
            {
              OUTLINED_FUNCTION_87_0();
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v1;
              HIWORD(lhs.epoch) = 2048;
              v319 = v9;
              v320 = 2082;
              v321 = v41;
              v322 = 1024;
              *v323 = v42;
              *&v323[4] = 1040;
              *&v323[6] = 4;
              *&v323[10] = 2080;
              *&v323[12] = &v310 + 4;
              OUTLINED_FUNCTION_17_6();
              OUTLINED_FUNCTION_18_3(v43, v44, &time, v45, &dword_1962D5000, v46, v47, "<<<< FAQ >>>> %s: [%p:%p] %{public}s FigAudioQueueTimingShimGetCurrentTime failed, err = %d = '%.4s'");
              OUTLINED_FUNCTION_82_2();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524(v48, v49, v50, v51, v52);
            if (HIDWORD(v310))
            {
              goto LABEL_14;
            }
          }

          if ((v308[1] & 1) == 0)
          {
LABEL_14:
            OUTLINED_FUNCTION_4_18();
            v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v61 = OUTLINED_FUNCTION_40_2(v53, v54, v55, v56, v57, v58, v59, v60, v273, v274, v275, v276, v280, v285, v287[0], v287[1], v288, v291, v293, v295, *(&v295 + 1), v296, hostTime[0], hostTime[1], v298, *(&v298 + 1), v299[0], v299[1], v300, *(&v300 + 1), v301.value, *&v301.timescale, v301.epoch, v302, v303.value, *&v303.timescale, v303.epoch, v304, v305[0], v305[1], v306, *(&v306 + 1), v307[0], v307[1], v308[0], v308[1], v309, v310, v311, v312.value, *&v312.timescale, v312.epoch, v313.value, *&v313.timescale, v313.epoch, v314.value, *&v314.timescale, v314.epoch, v315.value, *&v315.timescale, v315.epoch, v316.value);
            if (OUTLINED_FUNCTION_109_0(v61))
            {
              OUTLINED_FUNCTION_87_0();
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v1;
              HIWORD(lhs.epoch) = 2048;
              OUTLINED_FUNCTION_28_5();
              v321 = v62;
              OUTLINED_FUNCTION_17_6();
              OUTLINED_FUNCTION_18_3(v63, v64, &time, v65, &dword_1962D5000, v66, v67, "<<<< FAQ >>>> %s: [%p:%p] %{public}s sample time invalid; no sync possible");
              OUTLINED_FUNCTION_82_2();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524(v70, v71, v72, v73, v74);
            v303 = *v31;
          }

          else
          {
            v68 = OUTLINED_FUNCTION_88_2(*v305);
            CMTimeMake(&v303, v68, v69);
          }

          if (!HIDWORD(v310) && (v308[1] & 2) != 0)
          {
            v140 = FigHostTimeToNanoseconds();
            CMTimeMake(&v301, v140, 1000000000);
          }

          else
          {
            OUTLINED_FUNCTION_4_18();
            v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v83 = OUTLINED_FUNCTION_40_2(v75, v76, v77, v78, v79, v80, v81, v82, v273, v274, v275, v276, v280, v285, v287[0], v287[1], v288, v291, v293, v295, *(&v295 + 1), v296, hostTime[0], hostTime[1], v298, *(&v298 + 1), v299[0], v299[1], v300, *(&v300 + 1), v301.value, *&v301.timescale, v301.epoch, v302, v303.value, *&v303.timescale, v303.epoch, v304, v305[0], v305[1], v306, *(&v306 + 1), v307[0], v307[1], v308[0], v308[1], v309, v310, v311, v312.value, *&v312.timescale, v312.epoch, v313.value, *&v313.timescale, v313.epoch, v314.value, *&v314.timescale, v314.epoch, v315.value, *&v315.timescale, v315.epoch, v316.value);
            if (OUTLINED_FUNCTION_109_0(v83))
            {
              OUTLINED_FUNCTION_87_0();
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v1;
              HIWORD(lhs.epoch) = 2048;
              OUTLINED_FUNCTION_28_5();
              v321 = v84;
              OUTLINED_FUNCTION_17_6();
              OUTLINED_FUNCTION_18_3(v85, v86, &time, v87, &dword_1962D5000, v88, v89, "<<<< FAQ >>>> %s: [%p:%p] %{public}s host time invalid; syncing to NOW instead");
              OUTLINED_FUNCTION_82_2();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524(v90, v91, v92, v93, v94);
            HostTimeClock = CMClockGetHostTimeClock();
            CMClockGetTime(&time, HostTimeClock);
            v301 = time;
          }

          if (dword_1EAF16C30)
          {
            OUTLINED_FUNCTION_4_18();
            v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_60_2(v96, v97, v98, v99, v100, v101, v102, v103, v273, v274, v275, v276, v280, v285, v287[0], v287[1], v288, v291, v293, v295, *(&v295 + 1), v296, hostTime[0], hostTime[1], v298, *(&v298 + 1), v299[0], v299[1], v300, *(&v300 + 1), v301.value, *&v301.timescale, v301.epoch, v302, v303.value, *&v303.timescale, v303.epoch, v304, v305[0], v305[1], v306, *(&v306 + 1), v307[0], v307[1], v308[0], v308[1], v309, v310, v311, v312.value, *&v312.timescale, v312.epoch, v313.value, *&v313.timescale, v313.epoch, v314.value, *&v314.timescale, v314.epoch, v315.value, *&v315.timescale, v315.epoch, v316.value);
            OUTLINED_FUNCTION_40();
            if (v4)
            {
              v104 = DWORD2(v300);
              v105 = *hostTime;
              v106 = **(v9 + 64);
              v107 = *hostTime / v106;
              LODWORD(v281) = v106;
              v108 = hostTime[1];
              CMClockMakeHostTimeFromSystemUnits(&time, hostTime[1]);
              CMTimeGetSeconds(&time);
              LODWORD(lhs.value) = 136317442;
              OUTLINED_FUNCTION_83_1("subaq_performStartupSync");
              HIWORD(lhs.epoch) = v109;
              OUTLINED_FUNCTION_28_5();
              v321 = v1 + 800;
              v322 = 1024;
              *v323 = v104;
              *&v323[4] = v110;
              *&v323[6] = v105;
              *&v323[14] = v110;
              *&v323[16] = v107;
              *&v323[24] = 1024;
              *&v323[26] = v281;
              *&v323[30] = v110;
              *&v323[32] = v108;
              *v324 = v110;
              *&v324[2] = v111;
              OUTLINED_FUNCTION_17_6();
              OUTLINED_FUNCTION_18_3(v4, v112, &time, v113, &dword_1962D5000, v114, v115, "<<<< FAQ >>>> %s: [%p:%p] %{public}s AudioQueueGetCurrentTime -> timeStamp { mFlags 0x%x, mSampleTime %lld (%.3f seconds), faq->srcASBD->mSampleRate %d, mHostTime %llu (%.3f seconds) }");
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414(v116, v117, v118, v119, v120);
            if (dword_1EAF16C30)
            {
              OUTLINED_FUNCTION_4_18();
              v121 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_60_2(v121, v122, v123, v124, v125, v126, v127, v128, v273, v274, v275, v277, v281, v285, v287[0], v287[1], v289, v292, v294, v295, *(&v295 + 1), v296, hostTime[0], hostTime[1], v298, *(&v298 + 1), v299[0], v299[1], v300, *(&v300 + 1), v301.value, *&v301.timescale, v301.epoch, v302, v303.value, *&v303.timescale, v303.epoch, v304, v305[0], v305[1], v306, *(&v306 + 1), v307[0], v307[1], v308[0], v308[1], v309, v310, v311, v312.value, *&v312.timescale, v312.epoch, v313.value, *&v313.timescale, v313.epoch, v314.value, *&v314.timescale, v314.epoch, v315.value, *&v315.timescale, v315.epoch, v316.value);
              OUTLINED_FUNCTION_40();
              if (v4)
              {
                v129 = v308[1];
                v282 = *v305;
                v130 = **(v9 + 64);
                v131 = *v305 / v130;
                v132 = v130;
                v133 = v305[1];
                CMClockMakeHostTimeFromSystemUnits(&time, v305[1]);
                CMTimeGetSeconds(&time);
                LODWORD(lhs.value) = 136317442;
                *(&lhs.value + 4) = "subaq_performStartupSync";
                LOWORD(lhs.flags) = 2048;
                *(&lhs.flags + 2) = v1;
                HIWORD(lhs.epoch) = 2048;
                OUTLINED_FUNCTION_28_5();
                v321 = v1 + 800;
                v322 = 1024;
                *v323 = v129;
                *&v323[4] = v134;
                *&v323[6] = v282;
                *&v323[14] = v134;
                *&v323[16] = v131;
                *&v323[24] = 1024;
                *&v323[26] = v132;
                *&v323[30] = v134;
                *&v323[32] = v133;
                *v324 = v134;
                *&v324[2] = v135;
                OUTLINED_FUNCTION_17_6();
                OUTLINED_FUNCTION_18_3(v4, v136, &time, v137, &dword_1962D5000, v138, v139, "<<<< FAQ >>>> %s: [%p:%p] %{public}s FigAudioQueueTimingShimGetCurrentTime -> timeStamp { mFlags 0x%x, mSampleTime %lld (%.3f seconds), faq->srcASBD->mSampleRate %d, mHostTime %llu (%.3f seconds) }");
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414(v141, v142, v143, v144, v145);
            }
          }

          if ((*(v1 + 640) & 2) == 0)
          {
            memset(&v316, 0, sizeof(v316));
            lhs = v303;
            v315 = v301;
            rhs = *(v1 + 432);
            CMTimeSubtract(&time, &lhs, &rhs);
            lhs = v315;
            rhs = time;
            CMTimeSubtract(&v316, &lhs, &rhs);
            *&time.value = *&v316.value;
            OUTLINED_FUNCTION_34_4(v316.epoch);
            *(v1 + 592) = CMClockConvertHostTimeToSystemUnits(v146);
            *(v1 + 640) = 2;
          }

          FigSimpleMutexLock();
          v147 = *(v1 + 384);
          v148 = *(v1 + 392);
          v149 = *(v1 + 400);
          v150 = *(v1 + 408);
          *(v1 + 384) = 0u;
          *(v1 + 400) = 0u;
          FigSimpleMutexUnlock();
          if (v147 | v149)
          {
            v155 = v1 + 424;
            if (*(v1 + 236))
            {
              v161 = *(v1 + 232);
              v278 = (v1 + 416);
              v162 = *(v1 + 416);
              v157 = 1.0;
              if (v162 == 0.0)
              {
                v158 = 1.0;
              }

              else
              {
                v158 = v162;
              }

              v160 = v285;
              if (v161 != 0.0)
              {
                v157 = v161;
              }

              v159 = *v287;
            }

            else
            {
              v278 = (v1 + 416);
              v156 = *(v1 + 416);
              v157 = 1.0;
              if (v156 == 0.0)
              {
                v158 = 1.0;
              }

              else
              {
                v158 = v156;
              }

              v159 = *v287;
              v160 = v285;
            }

            v290 = v303;
            v295 = 0uLL;
            *&rhs.value = v159;
            rhs.epoch = v160;
            memset(&v316, 0, sizeof(v316));
            memset(&v315, 0, sizeof(v315));
            memset(&v314, 0, sizeof(v314));
            memset(&v313, 0, sizeof(v313));
            memset(&v312, 0, sizeof(v312));
            v296 = 0;
            OUTLINED_FUNCTION_298();
            subaq_getAudioQueueLatencyFigTime();
            v287[0] = v150;
            v283 = v1 + 424;
            if ((rhs.flags & 1) == 0)
            {
              OUTLINED_FUNCTION_72_2();
              v163 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v164 = BYTE3(v311);
              v165 = v163;
              v166 = os_log_type_enabled(v163, BYTE3(v311));
              if (OUTLINED_FUNCTION_28_1(v166))
              {
                LODWORD(lhs.value) = 136315138;
                *(&lhs.value + 4) = "faqTimelineWrangler_getMediaTimeInStartupSync";
                OUTLINED_FUNCTION_17_6();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v167, v168, v169, v170, v171, v165, v164, v172);
              }

              OUTLINED_FUNCTION_16();
              OUTLINED_FUNCTION_417(v173, v174, v175, v176, v177);
              rhs = **&MEMORY[0x1E6960CC0];
              v150 = v287[0];
              v155 = v1 + 424;
            }

            time = rhs;
            v178 = v158 / v157;
            CMTimeMultiplyByFloat64(&v316, &time, v157);
            time = v290;
            lhs = v316;
            CMTimeSubtract(&v315, &time, &lhs);
            time = v315;
            lhs = *(v1 + 432);
            CMTimeSubtract(&v314, &time, &lhs);
            faqTimelineWrangler_getAQTimePauseOffset(v155, &time);
            lhs = v314;
            CMTimeAdd(&v313, &lhs, &time);
            time = v313;
            lhs = *(v1 + 456);
            CMTimeAdd(&v312, &time, &lhs);
            if (dword_1EAF16C30)
            {
              OUTLINED_FUNCTION_72_2();
              v179 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v180 = HIDWORD(v311);
              v181 = BYTE3(v311);
              v285 = v179;
              if (os_log_type_enabled(v179, BYTE3(v311)))
              {
                v182 = v180;
              }

              else
              {
                v182 = v180 & 0xFFFFFFFE;
              }

              if (v182)
              {
                v183 = *(v1 + 424);
                if (v183)
                {
                  v184 = (v183 + 800);
                }

                else
                {
                  v184 = "";
                }

                *&time.value = *&v316.value;
                OUTLINED_FUNCTION_34_4(v316.epoch);
                Seconds = CMTimeGetSeconds(v185);
                *&time.value = *&v315.value;
                OUTLINED_FUNCTION_34_4(v315.epoch);
                v188 = CMTimeGetSeconds(v187);
                *&time.value = *&v314.value;
                OUTLINED_FUNCTION_34_4(v314.epoch);
                v190 = CMTimeGetSeconds(v189);
                *&time.value = *&v313.value;
                OUTLINED_FUNCTION_34_4(v313.epoch);
                v192 = CMTimeGetSeconds(v191);
                *&time.value = *&v312.value;
                OUTLINED_FUNCTION_34_4(v312.epoch);
                CMTimeGetSeconds(v193);
                LODWORD(lhs.value) = 136317186;
                OUTLINED_FUNCTION_83_1("faqTimelineWrangler_getMediaTimeInStartupSync");
                HIWORD(lhs.epoch) = 2082;
                v319 = v184;
                v320 = v194;
                v321 = v1 + 424;
                v322 = v194;
                *v323 = Seconds;
                *&v323[8] = v194;
                *&v323[10] = v188;
                *&v323[18] = v194;
                *&v323[20] = v190;
                *&v323[28] = v194;
                *&v323[30] = v192;
                *&v323[38] = v194;
                *v324 = v195;
                OUTLINED_FUNCTION_17_6();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v196, v197, v198, v199, v200, v285, v181, v201);
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v150 = v287[0];
              v155 = v1 + 424;
            }

            time = v312;
            v202 = faqTimelineWrangler_convertAQTimeToMediaTime(v155, &time, &v295, v178);
            if (dword_1EAF16C30)
            {
              OUTLINED_FUNCTION_4_18();
              v210 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = rhs.value;
              value_low = LOBYTE(v316.value);
              if (os_log_type_enabled(v210, v316.value))
              {
                v213 = value;
              }

              else
              {
                v213 = value & 0xFFFFFFFE;
              }

              if (v213)
              {
                v285 = v210;
                *&time.value = *&v303.value;
                OUTLINED_FUNCTION_34_4(v303.epoch);
                v215 = CMTimeGetSeconds(v214);
                *&time.value = v295;
                OUTLINED_FUNCTION_34_4(v296);
                v217 = CMTimeGetSeconds(v216);
                *&time.value = *&v301.value;
                OUTLINED_FUNCTION_34_4(v301.epoch);
                CMTimeGetSeconds(v218);
                LODWORD(lhs.value) = 136316674;
                *(&lhs.value + 4) = "subaq_performStartupSync";
                LOWORD(lhs.flags) = 2048;
                *(&lhs.flags + 2) = v1;
                HIWORD(lhs.epoch) = 2048;
                OUTLINED_FUNCTION_28_5();
                v321 = v1 + 800;
                v322 = v219;
                *v323 = v215;
                *&v323[8] = v219;
                *&v323[10] = v217;
                *&v323[18] = v219;
                *&v323[20] = v220;
                OUTLINED_FUNCTION_17_6();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v221, v222, v223, v224, v225, v210, value_low, v226);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_417(v227, v228, v229, v230, v231);
              v150 = v287[0];
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              *&time.value = *&v303.value;
              OUTLINED_FUNCTION_34_4(v303.epoch);
              CMTimeGetSeconds(v232);
              *&time.value = v295;
              OUTLINED_FUNCTION_34_4(v296);
              CMTimeGetSeconds(v233);
              *&time.value = *&v301.value;
              OUTLINED_FUNCTION_34_4(v301.epoch);
              CMTimeGetSeconds(v234);
              v202 = kdebug_trace();
            }

            if (v147)
            {
              v235 = OUTLINED_FUNCTION_11_7(v202, v203, v204, v205, v206, v207, v208, v209, v273, v274, v275, v278, v283, v285, v287[0], v287[1], v290.value, *&v290.timescale, v290.epoch, v295, v296);
              (v147)(v148, 0, v235);
            }

            else if (v149)
            {
              if (v150)
              {
                v236 = FigCFWeakReferenceHolderCopyReferencedObject();
                if (v236)
                {
                  v244 = OUTLINED_FUNCTION_11_7(v236, v237, v238, v239, v240, v241, v242, v243, v273, v274, v275, v278, v283, v285, v287[0], v287[1], v290.value, *&v290.timescale, v290.epoch, v295, v296);
                  (v149)(v244);
                }

                FigDeferCFRelease();
                CFRelease(v150);
              }

              else
              {
                v245 = OUTLINED_FUNCTION_11_7(v202, v203, v204, v205, v206, v207, v208, v209, v273, v274, v275, v278, v283, v285, v287[0], v287[1], v290.value, *&v290.timescale, v290.epoch, v295, v296);
                (v149)(0, 0, v245);
                FigDeferCFRelease();
              }
            }
          }

          FigSimpleMutexLock();
          *(v9 + 48) = 1;
          if (*(v1 + 576))
          {
            *(v1 + 576) = 0;
            *(v1 + 73) = 1;
          }

          v151 = *(v1 + 577);
          if (*(v1 + 577))
          {
            *(v1 + 577) = 0;
          }

          FigSimpleMutexUnlock();
          FigSemaphoreSignal();
          v152 = *(v9 + 24);
          if (v152)
          {
            CFRetain(v152);
            v153 = *(v9 + 24);
          }

          else
          {
            v153 = 0;
          }

          dispatch_async_f(*(v1 + 32), v153, faq_startObsoleteAudioQueues);
          if (v151)
          {
            DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_75_1(DefaultLocalCenter, @"FigAudioQueueLatencyChanged");
          }
        }
      }
    }
  }
}

void subaq_stopAudioQueueIfObsolete(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v4)
    {
      OUTLINED_FUNCTION_104_1(v4);
      if (!v2[16] && (v5 = OUTLINED_FUNCTION_171(), faq_isSubAudioQueueObsolete(v5, v6)))
      {
        v7 = OUTLINED_FUNCTION_171();
        subaq_stopAudioQueue(v7, v8, 0);
        FigSimpleMutexUnlock();
        faq_wakeupOfflineMixer(v2);
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      CFRelease(v2);
    }

    CFRelease(v1);
  }

  CFRelease(a1);
}

void faq_startObsoleteAudioQueues(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v6)
    {
      OUTLINED_FUNCTION_104_1(v6);
      if (!*(v2 + 16) && CFArrayGetCount(*(v2 + 176)) >= 1)
      {
        OUTLINED_FUNCTION_417_0();
        do
        {
          if (*(v2 + 16))
          {
            ValueAtIndex = 0;
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 176), v4);
          }

          if (ValueAtIndex != v1 && !ValueAtIndex[701])
          {
            subaq_startSubAudioQueue(v2);
          }

          ++v4;
        }

        while (v3 != v4);
      }

      FigSimpleMutexUnlock();
      CFRelease(v1);
    }

    else
    {
      v2 = v1;
    }

    CFRelease(v2);
  }

  CFRelease(a1);
}

BOOL faq_isSubAudioQueueObsolete(CFArrayRef *ValueAtIndex, CFArrayRef *a2)
{
  if (ValueAtIndex)
  {
    if (*(ValueAtIndex + 16))
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex[22], 0);
    }
  }

  if (ValueAtIndex == a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_177();
  return faq_isSubAudioQueueInList(v4) != 0;
}

void subaq_stopListenerInternal(const void *a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v4)
    {
      OUTLINED_FUNCTION_104_1(v4);
      if (!v2[16])
      {
        v1[745] = 0;
        v5 = OUTLINED_FUNCTION_171();
        subaq_removeIfObsolete(v5, v6);
      }

      FigSimpleMutexUnlock();
      CFRelease(v2);
    }

    CFRelease(v1);
  }

  CFRelease(a1);
}

uint64_t subaq_removeIfObsolete(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if (!*(a1 + 16))
  {
    v4 = OUTLINED_FUNCTION_298();
    if (faq_isSubAudioQueueObsolete(v4, v5))
    {
      if (a2)
      {
        if (!*(a1 + 16))
        {
          Count = CFArrayGetCount(*(a1 + 176));
          if (Count >= 1)
          {
            v7 = Count;
            v8 = 0;
            while (1)
            {
              if (*(a1 + 16))
              {
                ValueAtIndex = 0;
              }

              else
              {
                v9 = OUTLINED_FUNCTION_71_1();
                ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
              }

              if (ValueAtIndex == a2)
              {
                break;
              }

              if (v7 == ++v8)
              {
                goto LABEL_15;
              }
            }

            if (!*(a1 + 16))
            {
              v12 = OUTLINED_FUNCTION_71_1();
              CFArrayRemoveValueAtIndex(v12, v13);
            }
          }
        }
      }
    }
  }

LABEL_15:

  return FigSimpleMutexUnlock();
}

void subaq_outputBufferBecameReady(uint64_t a1, uint64_t a2, AudioQueueBuffer *a3)
{
  if (a3)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      if (MEMORY[0x19A8D0E00](v5 + 16))
      {
        OUTLINED_FUNCTION_56_2();
        if (!v7)
        {
          mUserData = a3->mUserData;
          if (mUserData)
          {
            if (*(mUserData + 8))
            {
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              v9 = *(mUserData + 8);
              if (v9)
              {
                CFRelease(v9);
                *(mUserData + 8) = 0;
              }
            }

            v10 = *mUserData;
            if (*mUserData)
            {
              memset(&v16, 0, sizeof(v16));
              CMSampleBufferGetOutputDuration(&v16, v10);
              FigSimpleMutexLock();
              CMSampleBufferGetOutputPresentationTimeStamp(&lhs, *mUserData);
              rhs = v16;
              CMTimeAdd(&time, &lhs, &rhs);
              *(v6 + 508) = time;
              FigSimpleMutexUnlock();
              FigAtomicAdd32();
              v11 = *(v6 + 100);
              time = v16;
              CMTimeConvertScale(&v12, &time, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              FigAtomicAdd32();
              if (*mUserData)
              {
                CFRelease(*mUserData);
                *mUserData = 0;
              }
            }

            if (*(mUserData + 17))
            {
              subaq_returnAQBufferInfoPtr(v6, mUserData);
              FigAudioQueueTimingShimFreeBuffer(*(v6 + 40), a3);
            }

            else
            {
              a3->mAudioDataByteSize = 0;
              FigMemoryBarrier();
              a3->mUserData = 0;
              subaq_returnAQBufferInfoPtr(v6, mUserData);
            }

            FigSemaphoreSignal();
          }
        }

        CFRelease(v3);
      }

      CFRelease(v6);
    }
  }
}

uint64_t subaq_buildAudioProcssingUnits(uint64_t a1, __CFDictionary **a2)
{
  v4 = *(a1 + 688);
  if (!v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(v4);
  v7 = Count;
  if (Count)
  {
    v31 = qword_1EAF16C28;
    v32 = v2;
    v33 = 4294954356;
    v34 = 11454;
    goto LABEL_27;
  }

  if (Count < 1)
  {
    return 0;
  }

  v35 = v2;
  v8 = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E9D8];
  v11 = MEMORY[0x1E695E9E8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 688), v8);
    v13 = v8 + 1;
    v14 = CFArrayGetValueAtIndex(*(a1 + 688), v8 + 1);
    if (FigCFDictionaryGetValueIfPresent())
    {
      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionaryApplyFunction(0, subaq_audioProcessingUnitSetPropertyApplier, 0);
      }

      goto LABEL_20;
    }

    if (*(a1 + 16) || CFArrayGetCount(*(a1 + 176)) < 1 || (*(a1 + 16) ? (v15 = 0) : (v15 = CFArrayGetValueAtIndex(*(a1 + 176), 0)), v15 == a2 || !FigCFDictionaryGetValueIfPresent()))
    {
      v23 = OUTLINED_FUNCTION_93_1();
      Copy = FigAudioProcessingUnitCreateWithOptions(v23, v24, v25, v26, v14, v27);
      if (Copy)
      {
        return Copy;
      }
    }

    else
    {
      v16 = OUTLINED_FUNCTION_93_1();
      Copy = FigAudioProcessingUnitCreateCopy(v16, v17, v18, v19, v20, v21);
      if (Copy)
      {
        return Copy;
      }
    }

    Mutable = a2[96];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(v9, 0, v10, v11);
      a2[96] = Mutable;
      if (!Mutable)
      {
        break;
      }
    }

    CFDictionarySetValue(Mutable, ValueAtIndex, 0);
LABEL_20:
    v8 = v13 + 1;
    if (v13 + 1 >= v7)
    {
      return 0;
    }
  }

  v31 = qword_1EAF16C28;
  v32 = v2;
  v33 = 4294954355;
  v34 = 11478;
LABEL_27:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v33, "<<<< FAQ >>>>", v34, v32, v35);
  return Copy;
}

uint64_t subaq_setCPECryptorPropertyOnAudioQueue(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56_2();
  if (v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = *(v3 + 40);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v1 + 56);
  if (!v7)
  {
    return 0;
  }

  v38 = 1668310371;
  v39 = v7;
  v8 = FigAudioQueueTimingShimSetProperty(v6, 0x61637064u, &v38, 0xCu);
  v40 = v8;
  if (dword_1EAF16C30)
  {
    OUTLINED_FUNCTION_2_24();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = OUTLINED_FUNCTION_19_4(os_log_and_send_and_compose_flags_and_os_log_type, v10, v11, v12, v13, v14, v15, v16, v33, v34, v36, v37, SBYTE2(v37), BYTE3(v37), SHIDWORD(v37));
    if (OUTLINED_FUNCTION_115_1(v17))
    {
      v18 = *(v5 + 40);
      v19 = *(v1 + 56);
      v41 = 136317186;
      v42 = "subaq_setCPECryptorPropertyOnAudioQueue";
      v43 = 2048;
      v44 = v1;
      v45 = 2048;
      v46 = v5;
      v47 = 2082;
      v48 = v1 + 800;
      v49 = 2048;
      v50 = v18;
      v51 = 2112;
      v52 = v19;
      v53 = 1024;
      v54 = v8;
      v55 = 1040;
      v56 = 4;
      v57 = 2080;
      v58 = &v40;
      LODWORD(v35) = 84;
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v25, v2, v26, &v41, v35);
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v27, v28, v29, v30, v31);
    return v40;
  }

  return v8;
}

void subaq_setSweepFilterEnable(uint64_t result, uint64_t a2, int a3)
{
  v10 = a3 != 0;
  if (result)
  {
    OUTLINED_FUNCTION_77_1();
    if (!v6)
    {
      v7 = v5;
      v8 = FigAudioQueueTimingShimSetProperty(*(v4 + 40), 0x656E7366u, &v10, 4u);
      if (v7)
      {
        if (!v8)
        {
          if (*(v3 + 704))
          {
            v9 = OUTLINED_FUNCTION_177();
            subaq_setSweepFilterConfig(v9);
          }
        }
      }
    }
  }
}

uint64_t subaq_ensureCinematicAudioEnabled(uint64_t result, uint64_t a2, int a3)
{
  if (!a3 && *(a2 + 784) && !*(a2 + 785))
  {
    v4 = result;
    v5 = 1;
    result = FigAudioQueueTimingShimSetProperty(*(a2 + 40), 0x715F6361u, &v5, 4u);
    if (!result)
    {
      *(v4 + 792) = 1;
      *(a2 + 785) = 1;
    }
  }

  return result;
}

void subaq_setSweepFilterConfig(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_77_1();
    if (!v2 && *(v1 + 704) && !FigCFDictionaryGetFloat32IfPresent() && !FigCFDictionaryGetFloat32IfPresent() && !FigCFDictionaryGetFloat32IfPresent())
    {
      v3 = OUTLINED_FUNCTION_41_2();
      FigAudioQueueTimingShimSetProperty(v3, 0x73666367u, v4, 0xCu);
    }
  }
}

uint64_t faq_wakeupToDiscard(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 16) && (*(a1 + 73) || *(a1 + 576)))
  {
    os_retain(*(a1 + 776));
    voucher_adopt();
    FigSemaphoreSignal();
    v2 = voucher_adopt();
    os_release(v2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t faq_initializeTapCompleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    PointerFromCFDictionary = MTAudioProcessingTapGetPointerFromCFDictionary(@"AQTapPointer", a5);
    MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixID", a5);
    if (PointerFromCFDictionary && *(a2 + 752))
    {
      OUTLINED_FUNCTION_25_3();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v9, v10, v11, v12, v13, v14, v15, v36, v37, v38, v39, SBYTE2(v39), BYTE3(v39), SHIDWORD(v39));
      if (OUTLINED_FUNCTION_109_0(v16))
      {
        OUTLINED_FUNCTION_52_2();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_9_6();
        OUTLINED_FUNCTION_456(v17, v18, v19, v20, v21, v22, v23, v24);
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524(v25, v26, v27, v28, v29);
    }

    *(a2 + 752) = 1;
    if (!*(a2 + 16))
    {
      Count = CFArrayGetCount(*(a2 + 176));
      if (Count >= 1)
      {
        v31 = Count;
        for (i = 0; i != v31; ++i)
        {
          if (!*(a2 + 16))
          {
            v33 = OUTLINED_FUNCTION_71_1();
            CFArrayGetValueAtIndex(v33, v34);
          }

          subaq_startAudioQueueIfReady(a2);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t faq_createSubmixTapCompleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    PointerFromCFDictionary = MTAudioProcessingTapGetPointerFromCFDictionary(@"SubmixID", a5);
    if (PointerFromCFDictionary)
    {
      if (!*(a2 + 16))
      {
        v8 = PointerFromCFDictionary;
        Count = CFArrayGetCount(*(a2 + 176));
        if (Count >= 1)
        {
          v10 = Count;
          v11 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 176), v11);
            if (ValueAtIndex[83] == v8)
            {
              break;
            }

            if (v10 == ++v11)
            {
              return FigSimpleMutexUnlock();
            }
          }

          v14 = ValueAtIndex;
          if (*(ValueAtIndex + 658))
          {
            OUTLINED_FUNCTION_25_3();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v25 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v18, v19, v20, v21, v22, v23, v24, v40, v41, v42, v43, SBYTE2(v43), BYTE3(v43), SHIDWORD(v43));
            if (OUTLINED_FUNCTION_109_0(v25))
            {
              OUTLINED_FUNCTION_91_1();
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_9_6();
              OUTLINED_FUNCTION_456(v26, v27, v28, v29, v30, v31, v32, v33);
              OUTLINED_FUNCTION_329_0();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524(v34, v35, v36, v37, v38);
          }

          else
          {
            FigAudioQueueTimingShimGetAudioQueue(ValueAtIndex[5]);
            OUTLINED_FUNCTION_411();
            if (*(*(CMBaseObjectGetVTable() + 16) + 64))
            {
              v15 = OUTLINED_FUNCTION_184();
              v16(v15);
            }

            *(v14 + 658) = 1;
          }

          v39 = OUTLINED_FUNCTION_298();
          subaq_startAudioQueueIfReady(v39);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void faq_scheduledWakeupRetainedToDiscard(_DWORD *a1)
{
  a1[19] = 0;
  faq_wakeupToDiscard(a1);

  CFRelease(a1);
}

uint64_t subaq_flushAudioQueue(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    v3 = result;
    result = subaq_doesAudioQueueHaveBuffersToFlush(a2);
    if (result && !v3[6].epoch)
    {
      result = FigAudioQueueTimingShimFlush(*(a2 + 40), v4, v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        lhs = *(a2 + 432);
        v11 = *(a2 + 456);
        result = CMTimeAdd(&v13, &lhs, &v11);
        *(a2 + 676) = v13;
        ++*(a2 + 672);
      }
    }

    *(a2 + 592) = 1;
  }

  return result;
}

CMTime *subaq_convertAQTimeToMediaTime@<X0>(CMTime *result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v2 + 16);
  if (!LOBYTE(result->epoch))
  {
    OUTLINED_FUNCTION_97_2();
    v4 = OUTLINED_FUNCTION_55_3(v3);
    return faqTimelineWrangler_convertAQTimeToMediaTime(v4, v5, v6, v7);
  }

  return result;
}

CMTime *subaq_convertMediaTimeToAQTime@<X0>(CMTime *result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v2 + 16);
  if (!LOBYTE(result->epoch))
  {
    OUTLINED_FUNCTION_97_2();
    v4 = OUTLINED_FUNCTION_55_3(v3);
    return faqTimelineWrangler_convertMediaTimeToAQTime(v4, v5, v6, v7);
  }

  return result;
}

uint64_t subaq_schedulePlayRate2ValueForTime(uint64_t a1, uint64_t a2, CMTime *a3, double a4)
{
  v16 = 21;
  v4 = a4;
  v15 = v4;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (!*(a2 + 40) || *(a1 + 16))
  {
    return 0;
  }

  v6 = *(a2 + 100);
  v8 = *a3;
  CMTimeConvertScale(&v9, &v8, v6, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  value = v9.value;
  LODWORD(v14) = 1;
  return FigAudioQueueTimingShimScheduleParameters(*(a2 + 40), &value, 1, &v16, &v15);
}

void subaq_audioQueueStartupCompleted(const void *a1, int a2)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject())
  {
    OUTLINED_FUNCTION_76_2();
    if (v7)
    {
      OUTLINED_FUNCTION_56_2();
      if (!v8)
      {
        if (subaq_lockListenerBarrierForValidSubAQ(v2))
        {
          v9 = OUTLINED_FUNCTION_74_2();
          *v9 = CFRetain(v3);
          v9[1] = CFRetain(v2);
          *(v9 + 4) = a2;
          dispatch_async_f(v3[4], v9, subaq_deferredAudioQueueStartupCompleted);
        }

        else
        {
          OUTLINED_FUNCTION_2_24();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = OUTLINED_FUNCTION_19_4(os_log_and_send_and_compose_flags_and_os_log_type, v12, v13, v14, v15, v16, v17, v18, v32, v33, v34, v35, SBYTE2(v35), BYTE3(v35), SHIDWORD(v35));
          if (OUTLINED_FUNCTION_115_1(v19))
          {
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_36();
            _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v25, v4, v26);
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414(v27, v28, v29, v30, v31);
        }
      }

      CFRelease(v2);
      v10 = v3;
    }

    else
    {
      v10 = v2;
    }

    CFRelease(v10);
  }

  CFRelease(a1);
}

void subaq_setProperty(uint64_t a1, uint64_t a2, CFTypeRef cf1, const __CFString *a4)
{
  deviceUID = a4;
  if (!a2 || !a1 || *(a1 + 16) || !*(a2 + 40))
  {
    return;
  }

  if (CFEqual(cf1, @"EQPreset"))
  {
    if (a4)
    {
      CFNumberGetTypeID();
      v8 = OUTLINED_FUNCTION_411();
      if (cf1 == CFGetTypeID(v8))
      {
        valuePtr = 0;
        CFNumberGetValue(a4, kCFNumberIntType, &valuePtr);
        if (!*(a1 + 16))
        {
          v9 = valuePtr;
          LODWORD(cf) = 0;
          v97 = 4;
          v98 = 0;
          if ((*(a1 + 48) & 4) == 0)
          {
            if (valuePtr == -1)
            {
              v10 = 0;
            }

            else
            {
              v10 = 1;
              LODWORD(cf) = 1;
            }

            OUTLINED_FUNCTION_80_1();
            if (!FigAudioQueueTimingShimGetProperty(v20, v21, v22, v23))
            {
              if (v10 == v98 || (OUTLINED_FUNCTION_80_1(), !FigAudioQueueTimingShimSetProperty(v24, v25, v26, v27)) && cf)
              {
                if (FigAudioQueueTimingShimSetParameter(*(a2 + 40), 7u, v9))
                {
                  if (cf != v98)
                  {
                    OUTLINED_FUNCTION_80_1();
                    FigAudioQueueTimingShimSetProperty(v28, v29, v30, v31);
                  }
                }
              }
            }
          }
        }

        return;
      }
    }

    goto LABEL_17;
  }

  if (CFEqual(cf1, @"ClientName"))
  {
    if (a4)
    {
      CFStringGetTypeID();
      v11 = OUTLINED_FUNCTION_54_2();
      if (a1 == CFGetTypeID(v11))
      {
        v12 = OUTLINED_FUNCTION_65_3();
        v14 = 1668639076;
LABEL_29:
        v19 = 8;
LABEL_30:
        FigAudioQueueTimingShimSetProperty(v12, v14, p_cf, v19);
        return;
      }
    }

    goto LABEL_17;
  }

  if (!CFEqual(cf1, @"DeviceUID"))
  {
    if (CFEqual(cf1, @"ClockDevice"))
    {
      if (!a4 || (CFStringGetTypeID(), v18 = OUTLINED_FUNCTION_54_2(), a1 == CFGetTypeID(v18)))
      {
        v12 = OUTLINED_FUNCTION_65_3();
        v14 = 1902340964;
        goto LABEL_29;
      }

LABEL_17:
      OUTLINED_FUNCTION_239();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      return;
    }

    if (CFEqual(cf1, @"TimePitchAlgorithm"))
    {
      if (!a4)
      {
        goto LABEL_17;
      }

      CFStringGetTypeID();
      v32 = OUTLINED_FUNCTION_411();
      if (cf1 != CFGetTypeID(v32))
      {
        goto LABEL_17;
      }

      if (CFEqual(a4, @"TimeDomain"))
      {
        v33 = 1953064047;
        goto LABEL_74;
      }

      if (CFEqual(a4, @"Spectral"))
      {
        v33 = 1936745827;
        goto LABEL_74;
      }

      if (CFEqual(a4, @"Varispeed"))
      {
        v33 = 1987276900;
        goto LABEL_74;
      }

      if (CFEqual(a4, @"LowQualityZeroLatency"))
      {
        v33 = 1819376236;
LABEL_74:
        LODWORD(cf) = v33;
        if (*(a1 + 352) != v33)
        {
          v44 = OUTLINED_FUNCTION_41_2();
          FigAudioQueueTimingShimSetProperty(v44, 0x71747061u, v45, 4u);
          v46 = cf;
          *(a1 + 352) = cf;
          v47 = faq_scaledEditRateSupportValidator_one32nd_to_32;
          if (v46 != 1987276900 && v46 != 1936745827 && v46 != 1953064047)
          {
            if (v46 == 1819376236)
            {
              v47 = faq_scaledEditRateSupportValidator_lowQualityZeroLatency;
            }

            else
            {
              v47 = faq_scaledEditRateSupportValidator_noScaleAllowed;
            }
          }

          *(a1 + 672) = v47;
        }

        return;
      }

LABEL_96:
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      return;
    }

    if (CFEqual(cf1, @"MATOriginalSourceFormat"))
    {
      if (a4)
      {
        CFNumberGetTypeID();
        v34 = OUTLINED_FUNCTION_54_2();
        if (a1 == CFGetTypeID(v34))
        {
          v35 = OUTLINED_FUNCTION_31_4();
          CFNumberGetValue(v35, kCFNumberIntType, v36);
          v37 = OUTLINED_FUNCTION_65_3();
          FigAudioQueueTimingShimSetProperty(v37, 0x6D6F7366u, v38, 4u);
          return;
        }
      }

      goto LABEL_17;
    }

    if (CFEqual(cf1, @"STSLabel"))
    {
      v12 = OUTLINED_FUNCTION_65_3();
      v14 = 1937011564;
      goto LABEL_29;
    }

    v39 = CFEqual(cf1, @"MXSession");
    if (v39)
    {
      if (!faq_shouldSetMXSessionOnAudioQueues(v39, v40))
      {
        return;
      }

      v41 = *(a2 + 624);
      if (v41)
      {
        CFRelease(v41);
        *(a2 + 624) = 0;
      }

      v42 = OUTLINED_FUNCTION_177();
      subaq_ensureClock(v42);
      v12 = OUTLINED_FUNCTION_65_3();
      v14 = 1668118643;
      goto LABEL_29;
    }

    if (CFEqual(cf1, @"TimePitchBypass"))
    {
      if ((*(a1 + 49) & 0x40) != 0)
      {
        goto LABEL_17;
      }

      if (!a4)
      {
        goto LABEL_17;
      }

      CFBooleanGetTypeID();
      v43 = OUTLINED_FUNCTION_54_2();
      if (a1 != CFGetTypeID(v43))
      {
        goto LABEL_17;
      }

      LODWORD(cf) = *MEMORY[0x1E695E4D0] == a4;
      v12 = *(a2 + 40);
      v14 = 1903456354;
      goto LABEL_70;
    }

    if (CFEqual(cf1, @"EnableTimePitch"))
    {
      if ((*(a1 + 49) & 0x40) != 0)
      {
        goto LABEL_17;
      }

      if (!a4)
      {
        goto LABEL_17;
      }

      CFBooleanGetTypeID();
      v50 = OUTLINED_FUNCTION_411();
      if (cf1 != CFGetTypeID(v50))
      {
        goto LABEL_17;
      }

      v51 = *MEMORY[0x1E695E4D0];
      LODWORD(cf) = *MEMORY[0x1E695E4D0] == a4;
      if (FigAudioQueueTimingShimSetProperty(*(a2 + 40), 0x715F7470u, &cf, 4u) || deviceUID != v51)
      {
        return;
      }

      v98 = *(a1 + 352);
      v12 = *(a2 + 40);
      p_cf = &v98;
      v14 = 1903456353;
      goto LABEL_71;
    }

    if (CFEqual(cf1, @"TrackID"))
    {
      if (a4)
      {
        v52 = CFGetTypeID(a4);
        if (v52 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a4, kCFNumberSInt32Type, (a2 + 636));
        }
      }

      return;
    }

    if (!CFEqual(cf1, @"AudioProcessingTap"))
    {
      if (CFEqual(cf1, @"CinematicAudioParameters"))
      {
        if (a4)
        {
          v53 = CFGetTypeID(a4);
          if (v53 == CFDataGetTypeID())
          {
            v54 = OUTLINED_FUNCTION_177();

            subaq_setCinematicAudioBulkParameters(v54, v55, a4);
          }
        }

        return;
      }

      if (CFEqual(cf1, @"LoudnessInfo"))
      {
        if (a4)
        {
          CFDictionaryGetTypeID();
          v61 = OUTLINED_FUNCTION_54_2();
          if (a1 != CFGetTypeID(v61))
          {
            goto LABEL_96;
          }

          cf = CFRetain(a4);
        }

        else
        {
          cf = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!cf)
          {
            goto LABEL_96;
          }
        }

        v75 = OUTLINED_FUNCTION_41_2();
        FigAudioQueueTimingShimSetProperty(v75, 0x716C646Eu, v76, 8u);
        if (cf)
        {
          CFRelease(cf);
        }

        return;
      }

      if (CFEqual(cf1, @"AudioDynamicRangeCompression"))
      {
        LODWORD(cf) = -1;
        v98 = 4;
        v73 = OUTLINED_FUNCTION_41_2();
        if (FigAudioQueueTimingShimGetProperty(v73, 0x7164796Eu, v74, &v98))
        {
          return;
        }

        if (!FigCFEqual())
        {
          if (!FigCFEqual())
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          return;
        }

        LODWORD(cf) = 1;
        v12 = OUTLINED_FUNCTION_41_2();
        v14 = 1902410094;
      }

      else
      {
        if (CFEqual(cf1, @"AdjustTargetLevel"))
        {
          v77 = OUTLINED_FUNCTION_31_4();
          CFNumberGetValue(v77, kCFNumberFloat32Type, v78);
          v12 = *(a2 + 40);
          v14 = 1584952428;
LABEL_70:
          p_cf = &cf;
          goto LABEL_71;
        }

        if (CFEqual(cf1, @"AdjustCompressionProfile"))
        {
          v79 = OUTLINED_FUNCTION_31_4();
          CFNumberGetValue(v79, kCFNumberSInt32Type, v80);
          v12 = OUTLINED_FUNCTION_41_2();
          v14 = 1584948336;
        }

        else
        {
          if (CFEqual(cf1, @"SweepFilterConfiguration"))
          {
            if (!a4)
            {
              goto LABEL_17;
            }

            v81 = CFGetTypeID(a4);
            if (v81 != CFDictionaryGetTypeID())
            {
              goto LABEL_17;
            }

            v82 = *(a1 + 704);
            *(a1 + 704) = a4;
            CFRetain(a4);
            if (v82)
            {
              CFRelease(v82);
            }

            if (*(a1 + 696))
            {
              v83 = OUTLINED_FUNCTION_177();

              subaq_setSweepFilterConfig(v83);
            }

            return;
          }

          if (CFEqual(cf1, @"EnableSweepFilter"))
          {
            if (!a4)
            {
              goto LABEL_17;
            }

            v84 = CFGetTypeID(a4);
            if (v84 != CFBooleanGetTypeID())
            {
              goto LABEL_17;
            }

            *(a1 + 696) = CFBooleanGetValue(a4);
            v90 = OUTLINED_FUNCTION_177();

            subaq_setSweepFilterEnable(v90, v91, v92);
            return;
          }

          if (CFEqual(cf1, @"CodecProgramTargetLevel"))
          {
            v85 = OUTLINED_FUNCTION_31_4();
            CFNumberGetValue(v85, kCFNumberFloat32Type, v86);
            v12 = OUTLINED_FUNCTION_41_2();
            v14 = 1886418028;
          }

          else if (CFEqual(cf1, @"BestAvailableContentType"))
          {
            v87 = OUTLINED_FUNCTION_31_4();
            CFNumberGetValue(v87, kCFNumberSInt32Type, v88);
            v12 = OUTLINED_FUNCTION_41_2();
            v14 = 1650549620;
          }

          else
          {
            if (!CFEqual(cf1, @"SceneCompositionPreset"))
            {
              if (!CFEqual(cf1, @"IgnoreAudioDeviceLatencyInStartupSync"))
              {
                return;
              }

              if (a4)
              {
                v93 = CFGetTypeID(a4);
                if (v93 == CFBooleanGetTypeID())
                {
                  *(a1 + 654) = *MEMORY[0x1E695E4D0] == a4;
                  return;
                }
              }

              goto LABEL_17;
            }

            LODWORD(cf) = 0;
            if (!a4)
            {
              goto LABEL_96;
            }

            v89 = CFGetTypeID(a4);
            if (v89 != CFNumberGetTypeID())
            {
              goto LABEL_96;
            }

            CFNumberGetValue(a4, kCFNumberSInt32Type, &cf);
            v12 = OUTLINED_FUNCTION_41_2();
            v14 = 1584620400;
          }
        }
      }

LABEL_71:
      v19 = 4;
      goto LABEL_30;
    }

    if (*(a2 + 48))
    {
      goto LABEL_17;
    }

    FigAudioQueueTimingShimStop(*(a2 + 40), 1u);
    if (*(a2 + 664))
    {
      v56 = (a2 + 640);
      FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
      v57 = OUTLINED_FUNCTION_184();
      MTAudioProcessingTapRemoveAQFromSubmixTap(v57, v58, v59);
      v60 = *(a2 + 664);
      if (v60)
      {
        CFRelease(v60);
        *(a2 + 664) = 0;
      }

      if (!*v56)
      {
LABEL_126:
        *(a2 + 656) = 0;
        *(a2 + 658) = 0;
        v64 = *(a1 + 744);
        if (!v64)
        {
          return;
        }

        v65 = CFRetain(v64);
        *(a2 + 640) = v65;
        v66 = *(a1 + 760);
        if (v66)
        {
          v67 = *(a2 + 664);
          *(a2 + 664) = v66;
          CFRetain(v66);
          if (v67)
          {
            CFRelease(v67);
          }

          if (!MTAudioProcessingTapEnsureSubmixTapCreated(*(a2 + 640), *(a1 + 760)))
          {
            return;
          }

          v68 = *(a2 + 664);
          *(a2 + 664) = 0;
          if (v68)
          {
            CFRelease(v68);
          }
        }

        else
        {
          v70 = *(a2 + 636);
          v71 = *(a1 + 796);
          AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
          if (!MTAudioProcessingTapCreateAQTap(v65, v70, v71, AudioQueue, a2 + 648))
          {
            return;
          }
        }

        v69 = *(a2 + 640);
        if (v69)
        {
          CFRelease(v69);
          *(a2 + 640) = 0;
        }

        return;
      }

      CFRelease(*v56);
    }

    else
    {
      v62 = *(a2 + 648);
      if (!v62)
      {
        goto LABEL_126;
      }

      v56 = (a2 + 648);
      MTAudioProcessingTapDisposeAQTap(*(a2 + 640), v62);
      v63 = *(a2 + 640);
      if (v63)
      {
        CFRelease(v63);
        *(a2 + 640) = 0;
      }
    }

    *v56 = 0;
    goto LABEL_126;
  }

  if (a4)
  {
    CFStringGetTypeID();
    v15 = OUTLINED_FUNCTION_54_2();
    if (a1 != CFGetTypeID(v15))
    {
      goto LABEL_17;
    }
  }

  v16 = OUTLINED_FUNCTION_65_3();
  if (!FigAudioQueueTimingShimSetProperty(v16, 0x61716364u, v17, 8u))
  {
    CMAudioDeviceClockSetAudioDeviceUID(*(a2 + 624), deviceUID);
  }
}