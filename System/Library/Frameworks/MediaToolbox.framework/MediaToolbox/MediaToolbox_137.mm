void FPSTimelineConverterL2TimeRangeToL3()
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119(v2);
    v16 = *(v1 + 16);
    v19 = *(v1 + 32);
    *&range.start.value = *v1;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    range.start.epoch = *(v1 + 16);
    v3 = OUTLINED_FUNCTION_6_74();
    fpstc_L2TimeToL3Locked(v3, v4, v5);
    v24 = 0;
    v23 = 0uLL;
    OUTLINED_FUNCTION_10_67(v6, v7, v8, v9, v10, v11, v12, v13, range.start.value, *&range.start.timescale, v16, *(&v16 + 1), v19);
    CMTimeRangeGetEnd(&v28, &range);
    fpstc_L2TimeToL3Locked(v0, &v28.value, &v23);
    OUTLINED_FUNCTION_12_64();
    *&v28.value = v23;
    OUTLINED_FUNCTION_13_50(v24, v14, v15, v17, v18, v20, v21, range.start.value);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL2TimeRangeToL4()
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v1)
  {
    OUTLINED_FUNCTION_5_119(v1);
    OUTLINED_FUNCTION_1_172();
    v39 = 0;
    v40 = 0;
    v38 = 0;
    *&v41.value = v2;
    v41.epoch = *(v0 + 16);
    v3 = OUTLINED_FUNCTION_6_106();
    fpstc_L2TimeToL3Locked(v3, v4, v5);
    v6 = OUTLINED_FUNCTION_6_74();
    fpstc_L3TimeToL4Locked(v6, v7, v8);
    v37 = 0;
    v36 = 0uLL;
    OUTLINED_FUNCTION_10_67(v9, v10, v11, v12, v13, v14, v15, v16, v23, v25, v27, v29, v31);
    CMTimeRangeGetEnd(&v35, &range);
    v41 = v35;
    v17 = OUTLINED_FUNCTION_6_106();
    fpstc_L2TimeToL3Locked(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_6_74();
    fpstc_L3TimeToL4Locked(v20, v21, v22);
    OUTLINED_FUNCTION_12_64();
    *&v41.value = v36;
    OUTLINED_FUNCTION_13_50(v37, v24, v26, v28, v30, v32, v33, range.start.value);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL3TimeRangeToL2(CMTimeRange *a1@<X8>)
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v4)
  {
    OUTLINED_FUNCTION_5_119(v4);
    OUTLINED_FUNCTION_1_172();
    v12 = 0uLL;
    v13 = 0;
    *&range.start.value = v5;
    range.start.epoch = *(v2 + 16);
    fpstc_L3TimeToL2Locked(v1, &range.start.value, &v12);
    memset(&v11, 0, sizeof(v11));
    range = v9;
    CMTimeRangeGetEnd(&end, &range);
    v6 = OUTLINED_FUNCTION_6_74();
    fpstc_L3TimeToL2Locked(v6, v7, v8);
    *&range.start.value = v12;
    range.start.epoch = v13;
    end = v11;
    CMTimeRangeFromTimeToTime(a1, &range.start, &end);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL3TimeRangeToL4(CMTimeRange *a1@<X8>)
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v4)
  {
    OUTLINED_FUNCTION_5_119(v4);
    OUTLINED_FUNCTION_1_172();
    v11 = 0;
    v10 = 0uLL;
    *&range.start.value = v5;
    range.start.epoch = *(v2 + 16);
    fpstc_L3TimeToL4Locked(v1, &range.start, &v10);
    range = v9;
    CMTimeRangeGetEnd(&end, &range);
    v6 = OUTLINED_FUNCTION_6_106();
    fpstc_L3TimeToL4Locked(v6, v7, v8);
    *&range.start.value = v10;
    range.start.epoch = v11;
    memset(&end, 0, sizeof(end));
    CMTimeRangeFromTimeToTime(a1, &range.start, &end);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL4TimeRangeToL3()
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119(v2);
    OUTLINED_FUNCTION_1_172();
    v20 = 0;
    v19 = 0uLL;
    *&v23.value = v3;
    v23.epoch = *(v1 + 16);
    fpstc_L4TimeToL3Locked(v0, &v23, &v19);
    v23 = *v15;
    v4 = OUTLINED_FUNCTION_6_106();
    fpstc_L4TimeToL3Locked(v4, v5, v6);
    OUTLINED_FUNCTION_7_91(v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[8], *&v15[16], v16, v17, v18, 0, 0, v19, v20, v21, v22);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL4TimeRangeToL2()
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119(v2);
    OUTLINED_FUNCTION_1_172();
    OUTLINED_FUNCTION_14_58(*(v1 + 16), v16, v19, v22, v25, v28, v31, v34, v36, v37, 0, 0, 0, v3, v4, v42);
    fpstc_L3TimeToL2Locked(v0, &v43, &v39);
    OUTLINED_FUNCTION_14_58(v23, v17, v20, v23, v26, v29, v32, 0, 0, 0, v39, *(&v39 + 1), v40, v17, v20, v42);
    v5 = OUTLINED_FUNCTION_6_106();
    v8 = fpstc_L3TimeToL2Locked(v5, v6, v7);
    OUTLINED_FUNCTION_7_91(v8, v9, v10, v11, v12, v13, v14, v15, v18, v21, v24, v27, v30, v33, v35, v38, v39, v40, v41, v42);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterSetProperty_cold_1(const void **a1, CFTypeRef cf)
{
  v2 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FPSTimelineConverterSetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FPSTimelineConverterSetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FPSTimelineConverterSetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FPSTimelineConverterSetProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FPSTimelineConverterCopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FPSTimelineConverterCopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FPSTimelineConverterCopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FPSTimelineConverterCreate_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

void FPSTimelineConverterCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void vcputils_setEyesProjectionAndPackingToFormatExtensions(uint64_t a1, uint64_t a2, CFArrayRef theArray, uint64_t a4, uint64_t a5, uint64_t a6)
{
  tagBuffer = *MEMORY[0x1E6960680];
  numberOfTagsCopied = 0;
  v37 = *MEMORY[0x1E6960648];
  v36 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v12 = Count;
      v30 = a2;
      v31 = a4;
      v32 = a5;
      v33 = a6;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *MEMORY[0x1E6960688];
      v17 = *(MEMORY[0x1E6960688] + 8);
      v34 = *(MEMORY[0x1E6960690] + 8);
      v35 = *MEMORY[0x1E6960690];
      v18 = *MEMORY[0x1E69606A0];
      v19 = *(MEMORY[0x1E69606A0] + 8);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
        v21 = ValueAtIndex;
        if (!numberOfTagsCopied && CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_ProjectionType, &tagBuffer, 1, &numberOfTagsCopied))
        {
          return;
        }

        *&v41.category = v16;
        v41.value = v17;
        if (CMTagCollectionContainsTag(v21, v41))
        {
          v15 = 1;
          v14 = 1;
        }

        else
        {
          v42.value = v34;
          *&v42.category = v35;
          if (CMTagCollectionContainsTag(v21, v42))
          {
            v15 = 1;
          }

          *&v43.category = v18;
          v43.value = v19;
          if (CMTagCollectionContainsTag(v21, v43))
          {
            v14 = 1;
          }
        }

        if (!v36 && CMTagCollectionGetTagsWithCategory(v21, kCMTagCategory_PackingType, &v37, 1, &v36))
        {
          return;
        }

        ++v13;
      }

      while (v12 != v13);
      v22 = v30;
      if (numberOfTagsCopied)
      {
        v23 = *&tagBuffer.category;
        value = tagBuffer.value;
        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960680]))
        {
          v25 = MEMORY[0x1E6960138];
LABEL_37:
          v22 = *v25;
          goto LABEL_38;
        }

        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960660]))
        {
          v25 = MEMORY[0x1E6960120];
          goto LABEL_37;
        }

        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960670]))
        {
          v25 = MEMORY[0x1E6960128];
          goto LABEL_37;
        }

        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960668]))
        {
          v25 = MEMORY[0x1E6960118];
          goto LABEL_37;
        }

        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960678]))
        {
          v25 = MEMORY[0x1E6960130];
          goto LABEL_37;
        }

        *&v44.category = v23;
        v44.value = value;
        v29 = CMTagCopyDescription(*MEMORY[0x1E695E480], v44);
        if (v29)
        {
          CFRelease(v29);
        }

        v22 = 0;
      }

LABEL_38:
      if (v36)
      {
        v28 = *&v37.category;
        v27 = v37.value;
        if (CMTagEqualToTag(v37, *MEMORY[0x1E6960650]))
        {
          v26 = *MEMORY[0x1E6960178];
          if (!v15)
          {
            goto LABEL_43;
          }

          goto LABEL_41;
        }

        *&v40.category = v28;
        v40.value = v27;
        if (CMTagEqualToTag(v40, *MEMORY[0x1E6960658]))
        {
          v26 = *MEMORY[0x1E6960180];
        }

        else
        {
          v26 = 0;
        }

        if (!v15)
        {
LABEL_43:
          a5 = v32;
          if (v14)
          {
            FigCFDictionarySetValue();
          }

          a6 = v33;
          a4 = v31;
          if (v22)
          {
            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v26 = 0;
        if (!v15)
        {
          goto LABEL_43;
        }
      }

LABEL_41:
      FigCFDictionarySetValue();
      goto LABEL_43;
    }
  }

  v26 = 0;
  if (a2)
  {
LABEL_19:
    FigCFDictionarySetValue();
  }

LABEL_20:
  if (v26)
  {
    FigCFDictionarySetValue();
  }

  if (a4)
  {
    FigCFDictionarySetValue();
  }

  if (a5)
  {
    FigCFDictionarySetValue();
  }

  if (a6)
  {
    FigCFDictionarySetValue();
  }
}

double FigVideoCompositionCopyOutputFormatExtensions_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigVideoCompositionCopyOutputFormatExtensions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigVideoCompositionCopyOutputFormatExtensions_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigAssertionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssertionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssertionSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t figTTMLRootConsumeChildNode(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  cf = 0;
  v16 = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
    goto LABEL_27;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v17, &v16);
    if (v8)
    {
      goto LABEL_27;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLHeadCreate(v9, a1, a2, &cf);
      if (!v8)
      {
        v10 = *(DerivedStorage + 336);
        v11 = cf;
        *(DerivedStorage + 336) = cf;
        if (!v11)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      goto LABEL_27;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v12 = CFGetAllocator(*a2);
      v8 = FigTTMLBodyCreate(v12, a1, a2, &cf);
      if (!v8)
      {
        v10 = *(DerivedStorage + 344);
        v11 = cf;
        *(DerivedStorage + 344) = cf;
        if (!v11)
        {
LABEL_9:
          if (v10)
          {
            CFRelease(v10);
          }

          goto LABEL_17;
        }

LABEL_8:
        CFRetain(v11);
        goto LABEL_9;
      }

LABEL_27:
      v13 = v8;
      goto LABEL_19;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_27;
  }

LABEL_17:
  v13 = 0;
  if (a3)
  {
    *a3 = cf;
    cf = 0;
  }

LABEL_19:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

double EnsureUUID_0(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 216))
  {
    v4 = DerivedStorage;
    v5 = CFGetAllocator(a1);
    v6 = CFUUIDCreate(v5);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetAllocator(a1);
      v9 = CFUUIDCreateString(v8, v7);
      *(v4 + 216) = v9;
      if (!v9)
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
      }

      CFRelease(v7);
    }

    else
    {
      OUTLINED_FUNCTION_303();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double EnsureUUIDForLimitedCryptor(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 72))
  {
    v4 = DerivedStorage;
    v5 = CFGetAllocator(a1);
    v6 = CFUUIDCreate(v5);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetAllocator(a1);
      v9 = CFUUIDCreateString(v8, v7);
      *(v4 + 72) = v9;
      if (!v9)
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
      }

      CFRelease(v7);
    }

    else
    {
      OUTLINED_FUNCTION_303();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t FigPKDCPECryptorCopyProperty(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 4294955146;
  if (a2 && a4)
  {
    OUTLINED_FUNCTION_29_22(DerivedStorage);
    if (*(v4 + 16))
    {
      OUTLINED_FUNCTION_3_135();
      if (v23)
      {
        v10 = 4294954511;
      }

      else
      {
        v10 = v11;
      }

      goto LABEL_32;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961098]))
    {
      v10 = 4294951076;
LABEL_32:
      FigSimpleMutexUnlock();
      return v10;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610E0]))
    {
      v12 = *(v4 + 40);
      if (v12)
      {
LABEL_11:
        KeyRequestStateAndID = PKDKeyManagerCopyPropertyForKeyID(v12, *(v4 + 216), a2, a4);
LABEL_12:
        v10 = KeyRequestStateAndID;
        goto LABEL_32;
      }

      UInt32 = *(v4 + 264);
      if (!UInt32)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961118]))
    {
      v14 = *(v4 + 40);
      if (v14)
      {
        IsDecryptContextAvailableForKeyID = PKDKeyManagerIsDecryptContextAvailableForKeyID(v14, *(v4 + 216));
LABEL_16:
        v16 = MEMORY[0x1E695E4D0];
        v17 = MEMORY[0x1E695E4C0];
LABEL_17:
        if (IsDecryptContextAvailableForKeyID)
        {
          v16 = v17;
        }

        goto LABEL_28;
      }

      if (*(v4 + 80) || *(v4 + 128) || *(v4 + 72) && *(v4 + 88))
      {
        v16 = MEMORY[0x1E695E4D0];
LABEL_28:
        UInt32 = *v16;
LABEL_29:
        UInt32 = CFRetain(UInt32);
LABEL_30:
        v10 = 0;
        goto LABEL_31;
      }

LABEL_43:
      v16 = MEMORY[0x1E695E4C0];
      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610D0]))
    {
      v12 = *(v4 + 40);
      if (v12)
      {
        goto LABEL_11;
      }

      IsDecryptContextAvailableForKeyID = IsLeaseExpired(a1);
      v16 = MEMORY[0x1E695E4C0];
      v17 = MEMORY[0x1E695E4D0];
      goto LABEL_17;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961110]))
    {
      v20 = *(v4 + 40);
      if (v20)
      {
        IsDecryptContextAvailableForKeyID = PKDKeyManagerIsReadyToCreateKeyRequestForKeyID(v20, *(v4 + 216));
        goto LABEL_16;
      }

      v16 = MEMORY[0x1E695E4D0];
      v22 = MEMORY[0x1E695E4C0];
      v23 = *(v4 + 72) == 0;
LABEL_45:
      if (!v23)
      {
        v16 = v22;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610E8]))
    {
      LODWORD(valuePtr) = 0;
      v21 = *(v4 + 40);
      if (v21)
      {
        KeyRequestStateAndID = PKDKeyManagerGetKeyRequestStateAndID(v21, *(v4 + 216), &valuePtr, 0);
        if (KeyRequestStateAndID)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LODWORD(valuePtr) = *(v4 + 192);
      }

      SInt32 = FigCFNumberCreateSInt32();
      *a4 = SInt32;
      if (SInt32)
      {
        v10 = 0;
      }

      else
      {
        v10 = 4294949725;
      }

      goto LABEL_32;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610C0]))
    {
      valuePtr = FigCPEExternalProtectionMonitorGetMethods(*(v4 + 152));
      v24 = *MEMORY[0x1E695E480];
      v25 = kCFNumberSInt64Type;
LABEL_50:
      UInt32 = CFNumberCreate(v24, v25, &valuePtr);
      goto LABEL_30;
    }

    v27 = *MEMORY[0x1E69610D8];
    v28 = CFEqual(a2, *MEMORY[0x1E69610D8]);
    v29 = MEMORY[0x1E69610C8];
    if (!v28 && !CFEqual(a2, *MEMORY[0x1E69610C8]))
    {
      if (CFEqual(a2, *MEMORY[0x1E6961138]))
      {
        v12 = *(v4 + 40);
        if (v12)
        {
          goto LABEL_11;
        }

        v16 = MEMORY[0x1E695E4C0];
        v22 = MEMORY[0x1E695E4D0];
        v23 = *(v4 + 136) == 0;
        goto LABEL_45;
      }

      if (CFEqual(a2, *MEMORY[0x1E69610F8]))
      {
        v12 = *(v4 + 40);
        if (v12)
        {
          goto LABEL_11;
        }

        UInt32 = *(v4 + 128);
        if (UInt32)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (CFEqual(a2, *MEMORY[0x1E69610F0]))
        {
          v12 = *(v4 + 40);
          if (!v12)
          {
            KeyRequestStateAndID = CreatePackagedPersistentKeyGuts(*(v4 + 32), *(v4 + 128), a4);
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        if (CFEqual(a2, *MEMORY[0x1E6961120]))
        {
          v12 = *(v4 + 40);
          if (v12)
          {
            goto LABEL_11;
          }

          EnsureRequiredExternalProtectionMethod(a1);
          v10 = v32;
          if (v32)
          {
            goto LABEL_32;
          }

          UInt32 = FigCFNumberCreateUInt32();
LABEL_31:
          *a4 = UInt32;
          goto LABEL_32;
        }

        if (CFEqual(a2, @"ExternalProtectionMethodsRequiredForPlayback") && *(v4 + 168))
        {
          Methods = FigCPEExternalProtectionMonitorGetMethods(*(v4 + 152));
          v34 = Methods & 1;
          if ((Methods & 2) != 0)
          {
            v34 = 2;
          }

          LODWORD(valuePtr) = v34;
          v24 = *MEMORY[0x1E695E480];
          v25 = kCFNumberSInt32Type;
          goto LABEL_50;
        }

        if (CFEqual(a2, @"DisplayList") && *(v4 + 168))
        {
          KeyRequestStateAndID = FigCPEExternalProtectionMonitorCopyProperty(*(v4 + 152), @"DisplayList", a3, a4);
          goto LABEL_12;
        }

        if (CFEqual(a2, *MEMORY[0x1E6961130]))
        {
          EnsureUUID_0(a1);
          if (KeyRequestStateAndID)
          {
            goto LABEL_12;
          }

          UInt32 = *(v4 + 216);
          if (!UInt32)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (CFEqual(a2, *MEMORY[0x1E69610B0]))
        {
          CopyCurrentRequestID_0(v4, a4);
          goto LABEL_12;
        }

        if (CFEqual(a2, *MEMORY[0x1E69610A8]))
        {
          UInt32 = *(v4 + 224);
          if (!UInt32)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (CFEqual(a2, *MEMORY[0x1E6961108]))
        {
          UInt32 = *(v4 + 184);
          if (!UInt32)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (!CFEqual(a2, *MEMORY[0x1E69610A0]))
        {
          if (!CFEqual(a2, *MEMORY[0x1E6961128]))
          {
            if (!CFEqual(a2, *MEMORY[0x1E69610B8]))
            {
              if (!*v4)
              {
                v10 = 4294954512;
                goto LABEL_32;
              }

              KeyRequestStateAndID = CMBaseObjectCopyProperty(*v4, a2, a3, a4);
              goto LABEL_12;
            }

            v12 = *(v4 + 40);
            goto LABEL_11;
          }

          goto LABEL_43;
        }

        v12 = *(v4 + 40);
        if (v12)
        {
          goto LABEL_11;
        }

        UInt32 = *(v4 + 272);
        if (UInt32)
        {
          goto LABEL_29;
        }
      }

      v10 = 4294955137;
      goto LABEL_32;
    }

    v30 = *(v4 + 40);
    if (v30)
    {
      KeyRequestStateAndID = PKDKeyManagerEnsureAndCopyLowValueKeyAndIVForKeyID(v30, *(v4 + 216), (v4 + 104), (v4 + 112));
      if (KeyRequestStateAndID)
      {
        goto LABEL_12;
      }
    }

    else
    {
      EnsureLowValueKeyAndIV(a1);
      if (KeyRequestStateAndID)
      {
        goto LABEL_12;
      }
    }

    if (CFEqual(a2, v27))
    {
      v31 = *(v4 + 104);
      if (!v31)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (!CFEqual(a2, *v29))
      {
        if (*a4)
        {
          goto LABEL_63;
        }

        goto LABEL_71;
      }

      v31 = *(v4 + 112);
      if (!v31)
      {
LABEL_62:
        *a4 = v31;
        if (v31)
        {
LABEL_63:
          v10 = 0;
          goto LABEL_32;
        }

LABEL_71:
        v10 = 4294955145;
        goto LABEL_32;
      }
    }

    v31 = CFRetain(v31);
    goto LABEL_62;
  }

  return v10;
}

uint64_t FigPKDCPECryptorSetProperty(const void *a1, const void *a2, void *a3)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v10)
    {
      v11 = 4294954511;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_28;
  }

  if (!CFEqual(a2, *MEMORY[0x1E69610C0]))
  {
    if (CFEqual(a2, *MEMORY[0x1E6961108]))
    {
      v18 = *(v3 + 184);
      *(v3 + 184) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (!v18)
      {
        goto LABEL_27;
      }

      v17 = v18;
LABEL_26:
      CFRelease(v17);
      goto LABEL_27;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610E0]))
    {
      if (a3 && (v20 = CFGetTypeID(a3), v20 == CFErrorGetTypeID()))
      {
        v21 = *(v3 + 40);
        if (!v21)
        {
          *(v3 + 192) = 1;
          v24 = *(v3 + 264);
          *(v3 + 264) = a3;
          CFRetain(a3);
          if (v24)
          {
            CFRelease(v24);
          }

          if (*(v3 + 72))
          {
            JE2f6WCx();
            *(v3 + 72) = 0;
          }

          *(v3 + 208) = 0;
          PostKeyRequestErrorOccurred(a1, a3);
          goto LABEL_27;
        }

        KeyRequestStateAndID = PKDKeyManagerSetKeyRequestError(v21, *(v3 + 216), a3);
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178A8, 4294955136, "<<<< FigCPECryptorPKD >>>>", 2254, v4);
      }

      goto LABEL_40;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961138]))
    {
      if (!a3 || (v22 = CFGetTypeID(a3), v22 != CFBooleanGetTypeID()))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178A8, 4294955136, "<<<< FigCPECryptorPKD >>>>", 2274, v4);
        goto LABEL_40;
      }

      v23 = *(v3 + 40);
      if (!v23)
      {
        if (dword_1EAF178B0)
        {
          LODWORD(v52) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v11 = 0;
        *(v3 + 136) = CFBooleanGetValue(a3);
        goto LABEL_28;
      }

LABEL_39:
      KeyRequestStateAndID = PKDKeyManagerSetPropertyForKeyID(v23, *(v3 + 216), a2, a3);
      goto LABEL_40;
    }

    if (!CFEqual(a2, *MEMORY[0x1E69610F0]))
    {
      if (CFEqual(a2, @"DisplayList") && *(v3 + 168))
      {
        v35 = FigCPEExternalProtectionMonitorSetProperty(*(v3 + 152), @"DisplayList", a3);
        if (v35 == -12152)
        {
          v11 = 0;
        }

        else
        {
          v11 = v35;
        }

        goto LABEL_28;
      }

      if (!*v3)
      {
        v11 = 4294954512;
        goto LABEL_28;
      }

      KeyRequestStateAndID = CMBaseObjectSetProperty(*v3, a2, a3);
      goto LABEL_40;
    }

    v52 = 0;
    v32 = *(v3 + 40);
    if (v32)
    {
      KeyRequestStateAndID = PKDKeyManagerGetKeyRequestStateAndID(v32, *(v3 + 216), 0, &v52);
      if (KeyRequestStateAndID)
      {
        goto LABEL_40;
      }

      v33 = *(v3 + 40);
      if (v33)
      {
        KeyRequestStateAndID = PKDKeyManagerSetUsedForLowValueDecryptionForKeyID(v33, *(v3 + 216), *(v3 + 120));
        if (KeyRequestStateAndID)
        {
          goto LABEL_40;
        }

        v23 = *(v3 + 40);
        goto LABEL_39;
      }
    }

    else
    {
      v52 = *(v3 + 208);
    }

    *type = 0;
    if (dword_1EAF178B0)
    {
      v36 = OUTLINED_FUNCTION_126(qword_1EAF178A8, v25, v26, v27, v28, v29, v30, v31, v45, v46, v47, *v48, v48[2], 0, 0);
      if (os_log_type_enabled(v36, v49))
      {
        v37 = v50;
      }

      else
      {
        v37 = v50 & 0xFFFFFFFE;
      }

      if (v37)
      {
        LODWORD(cf[0]) = 136315906;
        OUTLINED_FUNCTION_22_36();
        v54 = 2114;
        OUTLINED_FUNCTION_9_68();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v38, v39, v40, v41, v42, v36, v49, v43);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v3 + 136) = 1;
    KeyRequestStateAndID = CopyInfoFromPackagedPersistentKey(v3, a3, 0, 0, type);
    if (!KeyRequestStateAndID)
    {
      SetPersistentKey(a1, *type);
      v11 = v44;
      CFRelease(*type);
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  valuePtr[0] = 0;
  if (!a3 || (v12 = CFGetTypeID(a3), v12 != CFNumberGetTypeID()))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178A8, 4294955136, "<<<< FigCPECryptorPKD >>>>", 2222, v4);
    goto LABEL_40;
  }

  Methods = FigCPEExternalProtectionMonitorGetMethods(*(v3 + 152));
  CFNumberGetValue(a3, kCFNumberSInt64Type, valuePtr);
  if ((valuePtr[0] & ~Methods) != 0)
  {
    cf[0] = 0;
    KeyRequestStateAndID = FigCPEExternalProtectionMonitorCreateForMethods(*MEMORY[0x1E695E480], valuePtr[0] & ~Methods, 0, *(v3 + 152), cf);
    if (!KeyRequestStateAndID)
    {
      v15 = *(v3 + 152);
      v16 = cf[0];
      if (v15 == cf[0])
      {
        goto LABEL_15;
      }

      KeyRequestStateAndID = AddWeakListenerOnExternalProtectionMonitor(a1, cf[0]);
      if (!KeyRequestStateAndID)
      {
        KeyRequestStateAndID = RemoveWeakListenerOnExternalProtectionMonitor(a1, *(v3 + 152));
        if (!KeyRequestStateAndID)
        {
          v16 = cf[0];
          v15 = *(v3 + 152);
LABEL_15:
          *(v3 + 152) = v16;
          if (v16)
          {
            CFRetain(v16);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          v17 = cf[0];
          if (!cf[0])
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }
    }

LABEL_40:
    v11 = KeyRequestStateAndID;
    goto LABEL_28;
  }

LABEL_27:
  v11 = 0;
LABEL_28:
  FigSimpleMutexUnlock();
  return v11;
}

double EnsureLowValueKeyAndIV(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage[13])
  {
    v4 = DerivedStorage;
    if (!DerivedStorage[14])
    {
      v5 = DerivedStorage[9];
      if (v5 && (v6 = DerivedStorage[11]) != 0)
      {
        if (!ProcessKeyResponse(a1, v5, v6, 3))
        {
          v4[9] = 0;
          v7 = v4[11];
          if (v7)
          {
            CFRelease(v7);
            v4[11] = 0;
          }

          JE2f6WCx();
        }
      }

      else
      {
        OUTLINED_FUNCTION_303();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  return result;
}

double EnsureRequiredExternalProtectionMethod(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 176))
  {
    v4 = DerivedStorage;
    EnsureDecryptContext(a1);
    if (*(v4 + 80))
    {
      i2DzSgbBIIe95gyG0gW();
      if (!v5)
      {
        *(v4 + 172) = 0;
        *(v4 + 176) = 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double CopyCurrentRequestID_0(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    if (PKDKeyManagerGetKeyRequestStateAndID(v4, *(a1 + 216), 0, &v8))
    {
      return result;
    }
  }

  else
  {
    v8 = *(a1 + 208);
  }

  SInt64 = FigCFNumberCreateSInt64();
  *a2 = SInt64;
  if (!SInt64)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  }

  return result;
}

void EnsureDecryptContext(const void *a1)
{
  v2 = EnsureDecryptContextGuts(a1);
  if (v2 == -42670 || v2 == -42844)
  {
    wnFx1xLULXLA();
    if (!v4)
    {

      EnsureDecryptContextGuts(a1);
    }
  }
}

uint64_t FigPKDCPECryptorGetNativeSession(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v7)
    {
      v8 = 4294954511;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    EnsureDecryptContext(a1);
    v8 = v10;
    if (!v10)
    {
      *a2 = *(v2 + 80);
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigPKDCPECryptorGetExternalProtectionMethods(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
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
    v7 = 0;
    *a2 = FigCPEExternalProtectionMonitorGetMethods(*(v2 + 152));
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigPKDCPECryptorGetAggregateExternalProtectionStatus(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v7)
    {
      v8 = 4294954511;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 0;
    *a3 = FigCPEExternalProtectionMonitorGetStatus(*(v3 + 152));
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigPKDCPECryptorDecryptSampleWithFormat(const void *a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v6 = 4294955146;
  if (a2 && a3)
  {
    OUTLINED_FUNCTION_613();
    DataPointer = CMBlockBufferGetDataPointer(v7, v8, v9, v10, v11);
    if (DataPointer)
    {
      return DataPointer;
    }

    OUTLINED_FUNCTION_613();
    DataPointer = CMBlockBufferGetDataPointer(v13, v14, v15, v16, v17);
    if (DataPointer)
    {
      return DataPointer;
    }

    else
    {
      FigSimpleMutexLock();
      EnsureDecryptContext(a1);
      OUTLINED_FUNCTION_26_33();
    }
  }

  return v6;
}

uint64_t FigPKDCPECryptorScrambleDecryptedSampleWithFormat(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_613();
  result = CMBlockBufferGetDataPointer(v2, v3, v4, v5, v6);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t FigPKDCPECryptorCreateKeyRequest(uint64_t a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  v82 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 4294955146;
  if (a2 && a4)
  {
    *a4 = 0;
    FigSimpleMutexLock();
    v66 = 0;
    if (*(DerivedStorage + 16))
    {
      v9 = 4294954511;
LABEL_71:
      FigSimpleMutexUnlock();
      goto LABEL_72;
    }

    v10 = *(DerivedStorage + 40);
    if (v10)
    {
      KeyRequestStateAndID = PKDKeyManagerGetKeyRequestStateAndID(v10, *(DerivedStorage + 216), 0, &v66);
      if (KeyRequestStateAndID)
      {
        goto LABEL_92;
      }

      v12 = v66;
    }

    else
    {
      v12 = *(DerivedStorage + 208);
      v66 = v12;
    }

    if (PKDKeyRequestIDsMatch(a2, v12))
    {
      v13 = *(DerivedStorage + 40);
      v14 = MEMORY[0x1E6962AC0];
      if (v13)
      {
        KeyRequestStateAndID = PKDKeyManagerCreateKeyRequestForKeyID(v13, *(DerivedStorage + 216), a2, *(DerivedStorage + 184), a4);
        if (KeyRequestStateAndID)
        {
          goto LABEL_92;
        }

LABEL_65:
        v37 = *(DerivedStorage + 272);
        v38 = CFDictionaryGetValue(a2, *v14);
        *(DerivedStorage + 272) = v38;
        if (v38)
        {
          CFRetain(v38);
        }

        if (v37)
        {
          CFRelease(v37);
        }

        v9 = 0;
        if (*(DerivedStorage + 80))
        {
          *(DerivedStorage + 96) = 1;
        }

        goto LABEL_71;
      }

      if (!*(DerivedStorage + 72))
      {
        v15 = *(DerivedStorage + 32);
        v16 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AC8]);
        v63 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962B10]);
        cf = 0;
        *value = 0;
        v64 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AD8]);
        *type = 0;
        v17 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AF0]);
        v67 = 0;
        if (v16)
        {
          v18 = CFGetTypeID(v16);
          if (v18 != CFDataGetTypeID())
          {
            goto LABEL_106;
          }
        }

        v61 = v16;
        if (!v15)
        {
          goto LABEL_106;
        }

        if (v17)
        {
          v19 = CopyInfoFromPackagedPersistentKey(DerivedStorage, v17, value, &cf, &v67);
          if (v19)
          {
            v9 = v19;
            v22 = 0;
            goto LABEL_53;
          }

          if (!*value)
          {
LABEL_106:
            OUTLINED_FUNCTION_0_187();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            v9 = v57;
            v22 = 0;
            if (!v57)
            {
              goto LABEL_56;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v33 = CFDictionaryGetValue(a2, *v14);
          if (v33)
          {
            v34 = CFRetain(v33);
          }

          else
          {
            v34 = 0;
          }

          *value = v34;
          v53 = *(DerivedStorage + 184);
          if (v53)
          {
            v53 = CFRetain(v53);
          }

          cf = v53;
          if (!v34)
          {
            goto LABEL_106;
          }
        }

        if (cf && (!*(DerivedStorage + 184) || FigCFEqual()))
        {
          v65 = a4;
          v20 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v22 = Mutable;
          if (Mutable)
          {
            CFDictionarySetValue(Mutable, *v14, *value);
            CFDictionarySetValue(v22, *MEMORY[0x1E6962B00], cf);
            v23 = PKDMovieIDGetValue(v15, v22, type);
            if (!v23)
            {
              if (!*type)
              {
                OUTLINED_FUNCTION_0_187();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v60, v4);
                v9 = v54;
                goto LABEL_52;
              }

              v62 = a1;
              v24 = CFDictionaryGetValue(a2, *MEMORY[0x1E6962B20]);
              v25 = v67;
              v26 = cf;
              v81 = 0;
              v27 = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v27)
              {
                v28 = v27;
                v29 = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v29)
                {
                  v30 = v29;
                  UInt64 = FigCFNumberCreateUInt64();
                  if (UInt64)
                  {
                    if (v25)
                    {
                      CFDictionarySetValue(v28, @"igoeg", v25);
                      v32 = *(DerivedStorage + 144);
                      if (v32)
                      {
                        CFDictionarySetValue(v28, @"lGxB4ky", v32);
LABEL_35:
                        CFDictionarySetValue(v28, @"P5h3ZgzLxs", v26);
                        if (*(DerivedStorage + 80))
                        {
                          FigCFDictionarySetInt64();
                        }

                        if (v63)
                        {
                          CFDictionarySetValue(v28, @"xNJu5eepP", v63);
                        }

                        CFDictionarySetValue(v28, @"aMII4QYJ", UInt64);
                        FigCFDictionarySetInt32();
                        if (v24)
                        {
                          CFDictionarySetValue(v28, @"LBV3vEsw", v24);
                        }

                        v14 = MEMORY[0x1E6962AC0];
                        if (v64)
                        {
                          CFDictionarySetValue(v28, @"mDCRHTmtTKJ", v64);
                        }

                        v35 = pC3lVfLuVJLMz(v28, v30);
                        if (v35)
                        {
                          v9 = v35;
                        }

                        else
                        {
                          if (FigCFDictionaryGetInt64IfPresent())
                          {
                            *(DerivedStorage + 72) = v81;
                          }

                          v36 = CFDictionaryGetValue(v30, @"yN1lNULD2GD");
                          if (v36)
                          {
                            v36 = CFRetain(v36);
                          }

                          v9 = 0;
                          *v65 = v36;
                        }

                        goto LABEL_49;
                      }
                    }

                    else if (v61)
                    {
                      CFDictionarySetValue(v28, @"HJN6grNt", v61);
                      goto LABEL_35;
                    }
                  }

                  OUTLINED_FUNCTION_0_187();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                  v9 = v58;
                  v14 = MEMORY[0x1E6962AC0];
LABEL_49:
                  CFRelease(v28);
                  CFRelease(v30);
                  if (UInt64)
                  {
                    CFRelease(UInt64);
                  }

                  a1 = v62;
LABEL_52:
                  a4 = v65;
                  if (!v9)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_53;
                }

                OUTLINED_FUNCTION_0_187();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v60, v4);
                v9 = v56;
                CFRelease(v28);
              }

              else
              {
                OUTLINED_FUNCTION_0_187();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v60, v4);
                v9 = v55;
              }

              a1 = v62;
              v14 = MEMORY[0x1E6962AC0];
              goto LABEL_52;
            }

            v9 = v23;
          }

          else
          {
            v9 = 4294955145;
          }

          a4 = v65;
LABEL_53:
          if (*(DerivedStorage + 72))
          {
            JE2f6WCx();
            *(DerivedStorage + 72) = 0;
          }

          *(DerivedStorage + 208) = 0;
LABEL_56:
          if (v22)
          {
            CFRelease(v22);
          }

          if (*value)
          {
            CFRelease(*value);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v67)
          {
            CFRelease(v67);
          }

          if (v9)
          {
            goto LABEL_71;
          }

          goto LABEL_65;
        }

        goto LABEL_106;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178A8, 4294955138, "<<<< FigCPECryptorPKD >>>>", 5671, v4);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178A8, 4294951455, "<<<< FigCPECryptorPKD >>>>", 5662, v4);
    }

LABEL_92:
    v9 = KeyRequestStateAndID;
    goto LABEL_71;
  }

LABEL_72:
  if (dword_1EAF178B0)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v40 = cf;
    v41 = type[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v42 = v40;
    }

    else
    {
      v42 = v40 & 0xFFFFFFFE;
    }

    if (v42)
    {
      v43 = *(DerivedStorage + 216);
      v44 = PKDLogPrivateData(a2);
      if (a4)
      {
        v45 = *a4;
      }

      else
      {
        v45 = 0;
      }

      *value = 136316418;
      *&value[4] = "FigPKDCPECryptorCreateKeyRequest";
      v71 = 2048;
      v72 = a1;
      v73 = 2114;
      v74 = v43;
      v75 = 2114;
      v76 = v44;
      v77 = 1024;
      v78 = v9;
      v79 = 2048;
      v80 = v45;
      LODWORD(v60) = 58;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v46, v47, v48, v49, v50, os_log_and_send_and_compose_flags_and_os_log_type, v41, v51, value, v60);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v9;
}

uint64_t FigPKDCPECryptorSetKeyRequestResponse(const void *a1, const void *a2, const __CFDictionary *a3)
{
  v35[25] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35[0] = 0;
  if (a2)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B28]);
      v8 = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B30]) == *MEMORY[0x1E695E4D0];
    }

    else
    {
      v8 = 0;
      Value = 0;
    }

    FigSimpleMutexLock();
    if (*(DerivedStorage + 16))
    {
      v24 = 4294954511;
      goto LABEL_32;
    }

    v9 = *(DerivedStorage + 40);
    if (v9)
    {
      KeyRequestStateAndID = PKDKeyManagerGetKeyRequestStateAndID(v9, *(DerivedStorage + 216), 0, v35);
      if (KeyRequestStateAndID)
      {
        goto LABEL_48;
      }

      v11 = *(DerivedStorage + 40);
      if (v11)
      {
        KeyRequestStateAndID = PKDKeyManagerSetUsedForLowValueDecryptionForKeyID(v11, *(DerivedStorage + 216), *(DerivedStorage + 120));
        if (KeyRequestStateAndID)
        {
          goto LABEL_48;
        }

        KeyRequestStateAndID = PKDKeyManagerSetKeyRequestResponseForKeyID(*(DerivedStorage + 40), *(DerivedStorage + 216), a2);
        if (KeyRequestStateAndID)
        {
          goto LABEL_48;
        }

LABEL_21:
        if (*(DerivedStorage + 280))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          if (Value)
          {
            goto LABEL_23;
          }
        }

        else
        {
          *(DerivedStorage + 280) = 1;
          if (Value)
          {
LABEL_23:
            v13 = *MEMORY[0x1E695E480];
            Current = CFAbsoluteTimeGetCurrent();
            v15 = CFDateCreate(v13, Current);
            TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(Value, v15);
            if (TimeIntervalSinceDate > 0.0 && (v17 = TimeIntervalSinceDate, StopAndReleaseTimer((DerivedStorage + 200)), dispatch_get_global_queue(0, 0), OUTLINED_FUNCTION_613(), v22 = dispatch_source_create(v18, v19, v20, v21), (*(DerivedStorage + 200) = v22) != 0))
            {
              if (*(DerivedStorage + 8))
              {
                CFRetain(*(DerivedStorage + 8));
                v22 = *(DerivedStorage + 200);
                v23 = *(DerivedStorage + 8);
              }

              else
              {
                v23 = 0;
              }

              dispatch_set_context(v22, v23);
              v25 = *(DerivedStorage + 200);
              v26 = dispatch_time(0, (v17 * 1000000000.0));
              dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
              dispatch_source_set_event_handler_f(*(DerivedStorage + 200), RenewalTimerCallback_0);
              dispatch_source_set_cancel_handler_f(*(DerivedStorage + 200), FigCFRelease_11);
              dispatch_resume(*(DerivedStorage + 200));
              v24 = 0;
              if (!v15)
              {
                goto LABEL_32;
              }
            }

            else
            {
              OUTLINED_FUNCTION_13_51();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              v24 = v31;
              if (!v15)
              {
                goto LABEL_32;
              }
            }

            CFRelease(v15);
LABEL_32:
            FigSimpleMutexUnlock();
            v27 = v35[0];
            goto LABEL_33;
          }
        }

        v24 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v35[0] = *(DerivedStorage + 208);
    }

    if (*(DerivedStorage + 72))
    {
      v12 = *(DerivedStorage + 128);
      if (v12)
      {
        CFRelease(v12);
        *(DerivedStorage + 128) = 0;
      }

      if (*(DerivedStorage + 136))
      {
        KeyRequestStateAndID = ProcessKeyResponse(a1, *(DerivedStorage + 72), a2, 2);
        if (!KeyRequestStateAndID)
        {
          if (*(DerivedStorage + 72))
          {
            JE2f6WCx();
            *(DerivedStorage + 72) = 0;
          }

          *(DerivedStorage + 208) = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v30 = *(DerivedStorage + 88);
        *(DerivedStorage + 88) = a2;
        CFRetain(a2);
        if (v30)
        {
          CFRelease(v30);
        }

        *(DerivedStorage + 96) = 0;
        if (*(DerivedStorage + 120))
        {
          EnsureLowValueKeyAndIV(a1);
          if (!KeyRequestStateAndID)
          {
            goto LABEL_21;
          }
        }

        else
        {
          EnsureDecryptContext(a1);
          if (!KeyRequestStateAndID)
          {
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_51();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
    }

LABEL_48:
    v24 = KeyRequestStateAndID;
    goto LABEL_32;
  }

  v27 = 0;
  v8 = 0;
  v24 = 4294955146;
LABEL_33:
  PKDDispatchKeyResponseNotification(a1, v24, v27, v8);
  if (dword_1EAF178B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v24;
}

uint64_t FigPKDCPECryptorCopyPropertyForFormat(const void *a1, const void *a2, int a3, uint64_t a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 4294955146;
  if (a2 && a5)
  {
    OUTLINED_FUNCTION_29_22(DerivedStorage);
    if (*(v5 + 16))
    {
      OUTLINED_FUNCTION_3_135();
      if (v14)
      {
        v12 = 4294954511;
      }

      else
      {
        v12 = v13;
      }

      goto LABEL_7;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961098]))
    {
      EnsureDecryptContext(a1);
      v17 = *(v5 + 80);
      if (!v17)
      {
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
        goto LABEL_12;
      }

      CryptFormatForFormat = GetCryptFormatForFormat(a3);
      v19 = FhS8L9pZ83yt(v17, CryptFormatForFormat);
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x1E6961090]))
      {
        v16 = FigPKDCPECryptorCopyProperty(a1, a2, a4, a5);
LABEL_12:
        v12 = v16;
LABEL_7:
        FigSimpleMutexUnlock();
        return v12;
      }

      EnsureDecryptContext(a1);
      if (v20)
      {
        v12 = v20;
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
        goto LABEL_7;
      }

      GetCryptFormatForFormat(a3);
      EKNEpfxz52bXl();
    }

    v12 = 0;
    v21 = MEMORY[0x1E695E4D0];
    if (v19)
    {
      v21 = MEMORY[0x1E695E4C0];
    }

    *a5 = *v21;
    goto LABEL_7;
  }

  return v12;
}

uint64_t FigPKDCPECryptorAbsorbKeyRequestContext(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 4294949726;
  }

  v2 = CFGetTypeID(cf);
  if (v2 != FigCPECryptorGetTypeID())
  {
    return 4294949726;
  }

  ClassID = CMBaseObjectGetClassID();
  if (ClassID != CMBaseObjectGetClassID())
  {
    return 4294949726;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexUnlock();
    return 4294949723;
  }

  v6 = *(DerivedStorage + 40);
  if (!v6 || *(DerivedStorage + 200))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
    v15 = v17;
    FigSimpleMutexUnlock();
    if (v15)
    {
      return v15;
    }

    v9 = 0;
    v7 = 0;
  }

  else
  {
    v7 = CFRetain(v6);
    v8 = *(DerivedStorage + 216);
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    FigSimpleMutexUnlock();
  }

  FigSimpleMutexLock();
  if (*(v5 + 16))
  {
    FigSimpleMutexUnlock();
    v13 = 0;
    v14 = 0;
    v15 = 4294949723;
  }

  else
  {
    v10 = *(v5 + 40);
    if (!v10 || *(v5 + 200))
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
      v15 = v18;
      FigSimpleMutexUnlock();
      v13 = 0;
      if (v15)
      {
        v14 = 0;
        goto LABEL_19;
      }

      v11 = 0;
    }

    else
    {
      v11 = CFRetain(v10);
      v12 = *(v5 + 216);
      if (v12)
      {
        v13 = CFRetain(v12);
      }

      else
      {
        v13 = 0;
      }

      FigSimpleMutexUnlock();
    }

    v14 = v13;
    v15 = PKDKeyManagerAbsorbKeyRequestContext(v7, v11, v9, v13);
    v13 = v11;
  }

LABEL_19:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v15;
}

uint64_t FigPKDCPECryptorIsAggregateExternalProtectionStatusStable(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
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
    v7 = 0;
    *a2 = FigCPEExternalProtectionMonitorStableStatusDetermined(*(v2 + 152));
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigPKDCPECryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions(const void *a1, opaqueCMSampleBuffer *a2, char a3, CFTypeRef *a4, void *a5, CFDataRef *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  memset(v59, 0, sizeof(v59));
  v57 = 0;
  cf = 0;
  v55 = 0;
  dataLength = 0;
  v53 = 0;
  v54 = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  FigSimpleMutexLock();
  if (MediaSubType != 2053207651)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_36;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  DataPointer = OUTLINED_FUNCTION_15_51(DataBuffer, DataBuffer, v16, v17, v18, v19, v20, &cf);
  if (DataPointer)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v22, v23, v24, v25, v26);
  if (DataPointer)
  {
    goto LABEL_36;
  }

  DataPointer = OUTLINED_FUNCTION_10_68(dataLength, &v55, v51);
  if (DataPointer)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v27, v28, v29, 0, v30);
  if (DataPointer)
  {
    goto LABEL_36;
  }

  if (dataLength < 5)
  {
LABEL_35:
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_36:
    v48 = DataPointer;
    v36 = 0;
    goto LABEL_40;
  }

  v52 = a6;
  while (1)
  {
    OUTLINED_FUNCTION_21_37();
    if (!v32)
    {
      break;
    }

    OUTLINED_FUNCTION_16_47();
    if (!(!v33 & v32))
    {
      goto LABEL_13;
    }
  }

  if (!v31)
  {
    goto LABEL_35;
  }

LABEL_13:
  v34 = -v31;
  OUTLINED_FUNCTION_73_7();
  v36 = malloc_type_calloc(v34, 0x18uLL, v35);
  if (DerivedStorage[31] == FormatDescription)
  {
LABEL_26:
    EnsureDecryptContext(a1);
    *&v59[0] = DerivedStorage[10];
    if (a3)
    {
      v46 = 12;
    }

    else
    {
      v46 = 9;
    }

    DWORD2(v59[0]) = v46;
    *(v59 + 12) = 4;
    WORD2(v60) = 4;
    *(&v60 + 1) = v57;
    LODWORD(v61) = dataLength;
    *(&v61 + 1) = v54;
    LODWORD(v62) = dataLength;
    BYTE4(v63) = 0;
    *(&v65 + 4) = 0x9000000010;
    *(&v63 + 1) = v36;
    LODWORD(v64) = v34;
    *(&v64 + 1) = DerivedStorage[32];
    HIDWORD(v65) = 0;
    MDIwLzAxLzA5IDE(v59);
    if (v43)
    {
      goto LABEL_49;
    }

    if (v62 != dataLength)
    {
      goto LABEL_48;
    }

    if (DWORD2(v59[0]) == 9)
    {
      if (BYTE4(v63) != 1 || (v47 = DWORD1(v64)) == 0)
      {
LABEL_48:
        OUTLINED_FUNCTION_40_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_49;
      }
    }

    else
    {
      v47 = DWORD1(v64);
    }

    if (v34 >= v47)
    {
      *a5 = *(&v65 + 4);
      v49 = OUTLINED_FUNCTION_24_31(v47);
      v48 = 0;
      *a4 = v55;
      v55 = 0;
      *v52 = v49;
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x1E69600A0]);
  if (Extension && (v38 = Extension, v39 = CFGetTypeID(Extension), v39 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v38, @"avcC")) != 0 && (v41 = Value, v42 = CFGetTypeID(Value), v42 == CFDataGetTypeID()))
  {
    v43 = CopyImageParamsFromAVCData(v41, &v53);
    if (!v43)
    {
      v44 = DerivedStorage[31];
      DerivedStorage[31] = FormatDescription;
      if (FormatDescription)
      {
        CFRetain(FormatDescription);
      }

      if (v44)
      {
        CFRelease(v44);
      }

      v45 = DerivedStorage[32];
      if (v45)
      {
        DerivedStorage[32] = 0;
        free(v45);
      }

      DerivedStorage[32] = v53;
      v53 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_49:
  v48 = v43;
LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  free(v53);
  free(v36);
  FigSimpleMutexUnlock();
  return v48;
}

uint64_t FigPKDCPECryptorGetAggregateExternalProtectionStatusIgnoringDisplays(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v7)
    {
      v8 = 4294954511;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 0;
    *a3 = FigCPEExternalProtectionMonitorGetStatusIgnoringDisplays(*(v3 + 152));
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigPKDCPECryptorIsAggregateExternalProtectionStatusStableIgnoringDisplays(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
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
    v7 = 0;
    *a2 = FigCPEExternalProtectionMonitorStableStatusDeterminedIgnoringDisplays(*(v2 + 152));
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigPKDCPECryptorCopySerializedCryptorRecipe(uint64_t a1, CFDataRef *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v6)
    {
      return 4294954514;
    }

    result = v6(a1, &v9);
    if (result)
    {
      return result;
    }

    *bytes = v9;
    Methods = FigCPEExternalProtectionMonitorGetMethods(*(v5 + 152));
    v12 = 2;
    v8 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    if (!v8)
    {
      return 4294955145;
    }
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a2 = v8;
  return result;
}

uint64_t FigPKDCPECryptorGetCryptorType(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22(DerivedStorage);
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_3_135();
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
    v7 = 0;
    *a2 = 2;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t GetSliceDataForDecrypt(const void *a1, _DWORD *a2, void *a3)
{
  if (!a2 || !a3)
  {
    goto LABEL_10;
  }

  if (CMGetAttachment(a1, @"avcC", 0))
  {
    HLSfMP4ParsingInfoFromAVCCData = FigH264Bridge_CreateHLSfMP4ParsingInfoFromAVCCData();
    if (HLSfMP4ParsingInfoFromAVCCData)
    {
LABEL_11:
      v5 = HLSfMP4ParsingInfoFromAVCCData;
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  v5 = 4294955146;
LABEL_6:
  free(0);
  FigH264Bridge_HLSfMP4ParsingInfoDestroy();
  return v5;
}

void GetAudioPacketDataForDecrypt(uint64_t a1, _DWORD *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_613();
  if (!CMBlockBufferGetDataPointer(v5, v6, v7, v8, v9))
  {
    if (DolbyGetFrameSize(0))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0, 0);
    }

    else
    {
      v14[0] = 0;
      v14[1] = 0;
      OUTLINED_FUNCTION_73_7();
      v11 = malloc_type_calloc(1uLL, 8uLL, v10);
      if (v11)
      {
        for (i = 0; i != 1; ++i)
        {
          v11[i] = *&v14[2 * i];
        }

        *a2 = 1;
        *a3 = v11;
      }
    }
  }
}

void RenewalTimerCallback_0(uint64_t a1)
{
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 16))
    {
      StopAndReleaseTimer((DerivedStorage + 200));
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    FigSimpleMutexUnlock();
  }

  if (dword_1EAF178B0)
  {
    v10 = OUTLINED_FUNCTION_126(qword_1EAF178A8, v1, v2, v3, v4, v5, v6, v7, v18, v19, v20, *v21, v21[2], 0, 0);
    if (os_log_type_enabled(v10, type))
    {
      v11 = v23;
    }

    else
    {
      v11 = v23 & 0xFFFFFFFE;
    }

    if (v11)
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v12, v13, v14, v15, v16, v10, type, v17);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t CopyImageParamsFromAVCData(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, 0);
    goto LABEL_8;
  }

  SPSAndPPSCountFromAVCC = FigH264Bridge_GetSPSAndPPSCountFromAVCC();
  if (SPSAndPPSCountFromAVCC)
  {
LABEL_8:
    v6 = SPSAndPPSCountFromAVCC;
    goto LABEL_5;
  }

  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x10900401BACEF9BuLL);
  v5 = v4;
  if (!v4)
  {
    v6 = 4294955145;
    goto LABEL_6;
  }

  *v4 = v4 + 48;
  *(v4 + 3) = v4 + 48;
  *(v4 + 1) = v4 + 48;
  *(v4 + 4) = v4 + 48;
  *(v4 + 4) = 0;
  *(v4 + 10) = 0;
  v6 = 0;
  *a2 = v4;
LABEL_5:
  v5 = 0;
LABEL_6:
  free(v5);
  return v6;
}

uint64_t FigPKDCPELimitedCryptorInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF178B0)
  {
    v9 = OUTLINED_FUNCTION_126(qword_1EAF178A8, v1, v2, v3, v4, v5, v6, v7, v21, v22, v23, *v24, v24[2], 0, 0);
    if (os_log_type_enabled(v9, type))
    {
      v10 = v26;
    }

    else
    {
      v10 = v26 & 0xFFFFFFFE;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_32_22();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, v9, type, v16);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    if (*(DerivedStorage + 16))
    {
      pNl28qYdqR8Dyw();
      *(DerivedStorage + 16) = 0;
    }

    v17 = *(DerivedStorage + 72);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 72) = 0;
    }

    v18 = *(DerivedStorage + 48);
    if (v18)
    {
      CFRelease(v18);
      *(DerivedStorage + 48) = 0;
    }

    v19 = *(DerivedStorage + 40);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 40) = 0;
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPKDCPELimitedCryptorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPKDCPELimitedCryptorInvalidate(a1);
  result = *(DerivedStorage + 8);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 8) = 0;
  }

  return result;
}

uint64_t FigPKDCPELimitedCryptorCopyProperty(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 4294955146;
  if (a2 && a4)
  {
    OUTLINED_FUNCTION_30_20(DerivedStorage);
    if (*v4)
    {
      v9 = 4294954511;
LABEL_18:
      FigSimpleMutexUnlock();
      return v9;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961108]))
    {
      v10 = *(v4 + 48);
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x1E6961118]))
    {
      v10 = *MEMORY[0x1E695E4D0];
      if (!*MEMORY[0x1E695E4D0])
      {
        goto LABEL_17;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x1E69610A0]))
    {
      v10 = *(v4 + 40);
      if (!v10)
      {
        v9 = 4294955137;
        goto LABEL_18;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x1E6961128]))
    {
      v10 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x1E6961130]))
      {
        v9 = 4294954512;
        goto LABEL_18;
      }

      EnsureUUIDForLimitedCryptor(a1);
      if (v12)
      {
        v9 = v12;
        goto LABEL_18;
      }

      v10 = *(v4 + 72);
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    v10 = CFRetain(v10);
LABEL_17:
    v9 = 0;
    *a4 = v10;
    goto LABEL_18;
  }

  return v9;
}

uint64_t FigPKDCPELimitedCryptorGetNativeSession(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (*v2)
  {
    v5 = 4294954511;
  }

  else
  {
    v5 = 0;
    *a2 = *(v2 + 16);
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigPKDCPELimitedCryptorGetExternalProtectionMethods(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (*v2)
  {
    v5 = 4294954511;
  }

  else
  {
    v5 = 0;
    *a2 = *(v2 + 24);
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigPKDCPELimitedCryptorGetAggregateExternalProtectionStatus(uint64_t a1, uint64_t a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (*v3)
  {
    v6 = 4294954511;
  }

  else
  {
    v6 = 0;
    if (*(v3 + 24))
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    *a3 = v7;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigPKDCPELimitedCryptorDecryptSampleWithFormat(uint64_t a1, OpaqueCMBlockBuffer *a2, OpaqueCMBlockBuffer *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 4294955146;
  if (a2 && a3)
  {
    v9 = DerivedStorage;
    OUTLINED_FUNCTION_613();
    DataPointer = CMBlockBufferGetDataPointer(v10, v11, v12, v13, v14);
    if (!DataPointer)
    {
      OUTLINED_FUNCTION_613();
      DataPointer = CMBlockBufferGetDataPointer(v16, v17, v18, v19, v20);
      if (!DataPointer)
      {
        if (!CMBlockBufferIsRangeContiguous(a2, 0, 0) || !CMBlockBufferIsRangeContiguous(a3, 0, 0))
        {
          return 4294955140;
        }

        if (*(v9 + 16))
        {
          if (a4 == 2053464883 || a4 == 2053319475)
          {
            v24 = OUTLINED_FUNCTION_4_134();
            GetAudioPacketDataForDecrypt(v24, v25, v26);
            if (!DataPointer)
            {
              FigSimpleMutexLock();
              OUTLINED_FUNCTION_7_92();
              OUTLINED_FUNCTION_25_33();
              v8 = v27;
              FigSimpleMutexUnlock();
              v28 = a4;
LABEL_19:
              free(v28);
              return v8;
            }
          }

          else
          {
            if (a4 != 1902212707)
            {
              FigSimpleMutexLock();
              OUTLINED_FUNCTION_7_92();
              NfcRKVnxuKZy04KWbdFu71Ou();
              v8 = v22;
              FigSimpleMutexUnlock();
              return v8;
            }

            v29 = OUTLINED_FUNCTION_4_134();
            DataPointer = GetSliceDataForDecrypt(v29, v30, v31);
            if (!DataPointer)
            {
              FigSimpleMutexLock();
              OUTLINED_FUNCTION_17_44();
              v8 = v32;
              FigSimpleMutexUnlock();
              v28 = v33;
              goto LABEL_19;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_243();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }

    return DataPointer;
  }

  return v8;
}

uint64_t FigPKDCPELimitedCryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, CFTypeRef *a4, void *a5, CFDataRef *a6)
{
  v63 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0;
  cf = 0;
  v51 = 0;
  dataLength = 0;
  v49 = 0;
  v50 = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  FigSimpleMutexLock();
  if (MediaSubType != 2053207651)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_32;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  DataPointer = OUTLINED_FUNCTION_15_51(DataBuffer, DataBuffer, v14, v15, v16, v17, v18, &cf);
  if (DataPointer)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v20, v21, v22, v23, v24);
  if (DataPointer)
  {
    goto LABEL_32;
  }

  DataPointer = OUTLINED_FUNCTION_10_68(dataLength, &v51, v48);
  if (DataPointer)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v25, v26, v27, 0, v28);
  if (DataPointer)
  {
    goto LABEL_32;
  }

  if (dataLength < 5)
  {
LABEL_31:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_32:
    v45 = DataPointer;
    v34 = 0;
    goto LABEL_36;
  }

  while (1)
  {
    OUTLINED_FUNCTION_21_37();
    if (!v30)
    {
      break;
    }

    OUTLINED_FUNCTION_16_47();
    if (!(!v31 & v30))
    {
      goto LABEL_12;
    }
  }

  if (!v29)
  {
    goto LABEL_31;
  }

LABEL_12:
  v32 = -v29;
  OUTLINED_FUNCTION_73_7();
  v34 = malloc_type_calloc(v32, 0x18uLL, v33);
  if (DerivedStorage[7] == FormatDescription)
  {
LABEL_25:
    *&v55 = DerivedStorage[2];
    *(&v55 + 1) = 0x400000009;
    LODWORD(v56) = 0;
    WORD2(v57) = 4;
    *(&v57 + 1) = v53;
    LODWORD(v58) = dataLength;
    *(&v58 + 1) = v50;
    LODWORD(v59) = dataLength;
    BYTE4(v60) = 0;
    *(&v62 + 4) = 0x9000000010;
    *(&v60 + 1) = v34;
    LODWORD(v61) = v32;
    *(&v61 + 1) = DerivedStorage[8];
    HIDWORD(v62) = 0;
    MDIwLzAxLzA5IDE(&v55);
    if (!v41)
    {
      if (v59 == dataLength)
      {
        if (DWORD2(v55) == 9)
        {
          if (BYTE4(v60) != 1)
          {
            goto LABEL_44;
          }

          v44 = DWORD1(v61);
          if (!DWORD1(v61))
          {
            goto LABEL_44;
          }
        }

        else
        {
          v44 = DWORD1(v61);
        }

        if (v32 >= v44)
        {
          *a5 = *(&v62 + 4);
          v46 = OUTLINED_FUNCTION_24_31(v44);
          v45 = 0;
          *a4 = v51;
          v51 = 0;
          *a6 = v46;
          goto LABEL_36;
        }
      }

LABEL_44:
      OUTLINED_FUNCTION_40_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_45;
    }

    goto LABEL_45;
  }

  Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x1E69600A0]);
  if (!Extension || (v36 = Extension, v37 = CFGetTypeID(Extension), v37 != CFDictionaryGetTypeID()) || (Value = CFDictionaryGetValue(v36, @"avcC")) == 0 || (v39 = Value, v40 = CFGetTypeID(Value), v40 != CFDataGetTypeID()))
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_45;
  }

  v41 = CopyImageParamsFromAVCData(v39, &v49);
  if (!v41)
  {
    v42 = DerivedStorage[7];
    DerivedStorage[7] = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    v43 = DerivedStorage[8];
    if (v43)
    {
      DerivedStorage[8] = 0;
      free(v43);
    }

    DerivedStorage[8] = v49;
    v49 = 0;
    goto LABEL_25;
  }

LABEL_45:
  v45 = v41;
LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  free(v49);
  free(v34);
  FigSimpleMutexUnlock();
  return v45;
}

uint64_t FigPKDCPELimitedCryptorCopySerializedCryptorRecipe(uint64_t a1, CFDataRef *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v6)
    {
      return 4294954514;
    }

    result = v6(a1, &v10);
    if (result)
    {
      return result;
    }

    v8 = *(v5 + 24);
    *bytes = v10;
    v12 = v8;
    v13 = 2;
    v9 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    if (!v9)
    {
      return 4294955145;
    }
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  *a2 = v9;
  return result;
}

uint64_t FigPKDCPELimitedCryptorIsCompatibleWithSerializedCryptorRecipe(uint64_t a1, const __CFData *a2, BOOL *a3)
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
    if (v15 == v8 && *(DerivedStorage + 24) == v9 && v10 == 2)
    {
      v14 = 1;
    }

    result = 0;
    *a3 = v14;
  }

  return result;
}

uint64_t FigPKDCPELimitedCryptorGetCryptorType(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (*v2)
  {
    v5 = 4294954511;
  }

  else
  {
    v5 = 0;
    *a2 = 2;
  }

  FigSimpleMutexUnlock();
  return v5;
}

double PersistentKeyUpdatedCallback_cold_1()
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v4, vars0);
  if (v1)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v5, vars0a);
  }

  return result;
}

void ProcessKeyResponse_cold_5(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

void ProcessOfflineKey_cold_5(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

double PostKeyRequestErrorOccurred_cold_1()
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v4, vars0);
  if (v1)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v5, vars0a);
  }

  return result;
}

uint64_t frpfanout_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  frpfanout_gracefullySetArrayOfSampleBufferConsumers(a1, 0);
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  if (!FigNotificationCenterRemoveWeakListener())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 24) = 0;
  }

  return FigSimpleMutexDestroy();
}

void FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t figVTTSerializerForByteStream_AddText(uint64_t a1, const __CFString *a2)
{
  FigBytePumpGetFigBaseObject();
  CMBaseObjectGetDerivedStorage();
  if (a2 && CFStringGetLength(a2) >= 1)
  {
    CFStringGetLength(a2);
    v4 = OUTLINED_FUNCTION_1_173();
    if (CFStringGetBytes(v4, v20, v5, v6, v7, 0, 0, v18))
    {
      v8 = malloc_type_malloc(0, 0xA9227708uLL);
      if (v8)
      {
        CFStringGetLength(a2);
        v9 = OUTLINED_FUNCTION_1_173();
        if (CFStringGetBytes(v9, v21, v10, v11, v12, v8, v13, v19))
        {
          v14 = CMByteStreamAppend();
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949412, "(Fig)", 168, v2);
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949414, "(Fig)", 165, v2);
      }

      v15 = v14;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0, 0);
      v15 = v17;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v15 = 0;
  }

  free(v8);
  return v15;
}

void FigVTTSerializerCreateForByteStream_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigVTTSerializerCreateForByteStream_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTSerializerForByteStream_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTSerializerForByteStream_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTSerializerForByteStream_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTSerializerForByteStream_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t fpic_DequeueItemsFromInterstitialPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v3)
  {
    return 0;
  }

  v6 = DerivedStorage;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  v10 = &dword_1EAF17000;
  while (1)
  {
    if (dword_1EAF178D0)
    {
      v11 = v10;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_134();
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = OUTLINED_FUNCTION_617();
        CFArrayGetValueAtIndex(v16, v17);
        OUTLINED_FUNCTION_129_4();
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v18, v19, v20, v21, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigPlayerInterstitial >>>> %s: %p: dequeuing %@ from interstitialPlayer %p");
      }

      v10 = v11;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v22, v23, v24, v25, v26);
    }

    v27 = *(v6 + 128);
    v28 = OUTLINED_FUNCTION_617();
    ValueAtIndex = CFArrayGetValueAtIndex(v28, v29);
    result = v27(v4, a3, ValueAtIndex, *(v6 + 48));
    if (result)
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t fpic_TransitionPlayback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_78_8();
  v8 = OUTLINED_FUNCTION_198_0();
  v10 = v9(v8);
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_101_0();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v15, v16, v17, v18, v19, os_log_and_send_and_compose_flags_and_os_log_type, 0, v20);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449(v21, v22, v23, v24, v25);
  }

  if (a3 || !fpic_skipShowInterstitial(DerivedStorage))
  {
    v26 = OUTLINED_FUNCTION_151_2();
    fpic_flipInterstitialAndPrimaryVisibility(a1, a3 == 0, a4, v26);
  }

  v27 = OUTLINED_FUNCTION_198_0();
  result = v28(v27);
  if (!result)
  {
    if (a3)
    {
      v38 = MEMORY[0x1E6960C70];
      *(DerivedStorage + 1116) = *MEMORY[0x1E6960C70];
      *(DerivedStorage + 1132) = *(v38 + 16);
      StopAndReleaseTimer((DerivedStorage + 832));
      if (!v10)
      {
        goto LABEL_24;
      }

      FigPlayerGetFigBaseObject();
      v40 = v39;
      v41 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v41)
      {
        v41(v40, @"AllowVideoRenderingIfSendingVisualsToNero", *MEMORY[0x1E695E4C0]);
      }

      FigPlayerGetFigBaseObject();
      v43 = v42;
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v44)
      {
        v44(v43, @"AllowVideoRenderingIfSendingVisualsToNero", *MEMORY[0x1E695E4D0]);
      }

      result = fpic_SetRateWithReason(v10, 38, 0.0);
      if (!result)
      {
LABEL_24:
        *(DerivedStorage + 376) = 0;
        fpic_UngatePrimaryPlayback(a1);
        v45 = OUTLINED_FUNCTION_198_0();
        fpic_SetInterstitialActionAtEnd(v45, v46, v47);
        return 0;
      }
    }

    else
    {
      v30 = MEMORY[0x1E6960C70];
      v48 = *MEMORY[0x1E6960C70];
      *(DerivedStorage + 1092) = *MEMORY[0x1E6960C70];
      v31 = *(v30 + 16);
      *(DerivedStorage + 1108) = v31;
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_75_9();
      if (!v33)
      {
        OUTLINED_FUNCTION_14_59();
        if (v13)
        {
          v32 = v34;
        }
      }

      v35 = *v32;
      v36 = v32[1];
      *(DerivedStorage + 376) = *(v32 + 4);
      *(DerivedStorage + 344) = v35;
      *(DerivedStorage + 360) = v36;
      fpic_GetEffectiveCurrentItemMoment(v49);
      result = 0;
      v37 = v49[1];
      *(DerivedStorage + 304) = v49[0];
      *(DerivedStorage + 320) = v37;
      *(DerivedStorage + 336) = v50;
      *(DerivedStorage + 556) = v48;
      *(DerivedStorage + 572) = v31;
      *(DerivedStorage + 580) = v48;
      *(DerivedStorage + 596) = v31;
    }
  }

  return result;
}

uint64_t fpic_SetRateWithReason(uint64_t a1, uint64_t a2, float a3)
{
  cf = 0;
  SetRateOptions = FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], a2, &cf);
  if (SetRateOptions)
  {
    goto LABEL_4;
  }

  v6 = cf;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v7)
  {
    SetRateOptions = v7(a1, v6, a3);
LABEL_4:
    v8 = SetRateOptions;
    goto LABEL_6;
  }

  v8 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t fpic_SetInterstitialActionAtEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_180_1();
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_171();
  result = v5(v4);
  if (result)
  {
    FigPlayerGetFigBaseObject();
    v8 = v7;
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 8);
    result = VTable + 8;
    v11 = *(v10 + 56);
    if (v11)
    {

      return v11(v8, @"ActionAtEnd", a3);
    }
  }

  return result;
}

CFIndex fpic_GetPerEventTrackingCount(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  Count = *(v4 + 664);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v2)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 664), v2);
  if (!ValueAtIndex)
  {
    return 0;
  }

  return CFArrayGetCount(ValueAtIndex);
}

const void *fpic_GetPerAssetPerEventTrackedObject(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  OUTLINED_FUNCTION_433();
  Count = *(v8 + 664);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v4)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 664), v4);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFArrayGetCount(ValueAtIndex);
  }

  if (ValueAtIndex <= a3)
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_171();
  v13 = CFArrayGetValueAtIndex(v11, v12);

  return CFDictionaryGetValue(v13, a4);
}

void fpic_CreateAndPrimeItemTimer()
{
  OUTLINED_FUNCTION_172_2();
  v48 = v0;
  v49 = v1;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v47 = *MEMORY[0x1E69E9840];
  timebase = 0;
  FigPlaybackItemGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11 || (v11(v10, @"Timebase", *MEMORY[0x1E695E480], &timebase), !timebase))
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(DerivedStorage + 8));
  if (v13)
  {
    FigCFWeakReferenceHolderCreateWithReferencedObject();
    v14 = OUTLINED_FUNCTION_399();
    dispatch_set_context(v14, v15);
    dispatch_source_set_timer(v13, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v16 = OUTLINED_FUNCTION_617();
    dispatch_source_set_event_handler_f(v16, v17);
    v18 = OUTLINED_FUNCTION_265();
    dispatch_source_set_cancel_handler_f(v18, v19);
    dispatch_set_finalizer_f(v13, FigCFRelease_12);
    dispatch_resume(v13);
    if (!CMTimebaseAddTimerDispatchSource(timebase, v13))
    {
      if (!*(v6 + 32))
      {
        v20 = *(v6 + 24);
        fpic_CurrentItemMoment(&fireTime);
        FigCreateTimeWithDateAndMoment(&fireTime, &v42, v20);
        *v6 = v42;
      }

      OUTLINED_FUNCTION_199_0();
      if (!CMTimebaseSetTimerDispatchSourceNextFireTime(v21, v13, &fireTime, 1u))
      {
        if (dword_1EAF178D0)
        {
          OUTLINED_FUNCTION_197_2();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v40));
          OUTLINED_FUNCTION_28();
          if (v2)
          {
            OUTLINED_FUNCTION_199_0();
            Seconds = CMTimeGetSeconds(&fireTime);
            CMTimebaseGetTime(&fireTime, timebase);
            CMTimeGetSeconds(&fireTime);
            LODWORD(v42.value) = 136315906;
            OUTLINED_FUNCTION_2_6();
            *(&v42.flags + 2) = v8;
            HIWORD(v42.epoch) = v24;
            v43 = Seconds;
            v44 = v24;
            v45 = v25;
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v31, HIBYTE(v40), v32);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v33, v34, v35, v36, v37);
        }

        *v4 = v13;
        goto LABEL_15;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, v40);
  }

LABEL_16:
  if (timebase)
  {
    CFRelease(timebase);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_171_2();
}

uint64_t fpic_isInterstitialBufferingUngated(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (*(DerivedStorage + 160))
  {
    v3 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_isInterstitialBufferingUngated_block_invoke;
    block[3] = &unk_1E747EC60;
    block[5] = a1;
    block[6] = DerivedStorage;
    block[4] = &v7;
    dispatch_sync(v3, block);
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void fpic_applyCoordinationMediaSelectionCriteria(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v27 = 0;
  if (!a2)
  {
    return;
  }

  v5 = DerivedStorage;
  FigPlaybackItemGetFigBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = *MEMORY[0x1E695E480];
    if (!v8(v7, @"MediaSelectionArray", *MEMORY[0x1E695E480], &v27))
    {
      FigPlaybackItemGetFigBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        if (!v12(v11, @"SelectedMediaArray", v9, &cf))
        {
          v13 = *(v5 + 1152);
          v14 = cf;
          *(v5 + 1152) = cf;
          if (v14)
          {
            CFRetain(v14);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          v15 = v27;
          v16 = CMBaseObjectGetDerivedStorage();
          v30 = 0;
          v31 = 0;
          v28 = 0;
          value = 0;
          v17 = FigMediaAccessibilityCaptionsDisplayType();
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          if (MutableCopy)
          {
            if (*(v16 + 1152))
            {
              FigAutomaticMediaSelectionGetMediaSelectionGroupsForMajorIntrinsicCharacteristics(v15, 0, &v30, &v31);
              if (v17 == kMACaptionAppearanceDisplayTypeAlwaysOn)
              {
                if (v31)
                {
                  v19 = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(*(v16 + 1152), v31);
                  fpic_createMediaSelectionCriteriaForMediaType(v19, v31, 0, &value);
                  v21 = v20;
                  if (value)
                  {
                    CFDictionarySetValue(MutableCopy, @"public.legible", value);
                  }

                  goto LABEL_26;
                }
              }

              else
              {
                CFDictionaryRemoveValue(MutableCopy, @"public.legible");
              }

              v19 = 0;
              v21 = 0;
LABEL_26:
              if (v30)
              {
                v23 = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(*(v16 + 1152), v30);
                fpic_createMediaSelectionCriteriaForMediaType(v23, v30, 1, &v28);
                v21 = v24;
                if (v28)
                {
                  CFDictionarySetValue(MutableCopy, @"public.audible", v28);
                }
              }

              else
              {
                v23 = 0;
              }

              if (v19)
              {
                CFRelease(v19);
              }

              if (v23)
              {
                CFRelease(v23);
              }

              v22 = MutableCopy;
              MutableCopy = 0;
              goto LABEL_33;
            }

            v22 = 0;
            v21 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v27, v28);
            v21 = v25;
            v22 = 0;
          }

LABEL_33:
          if (value)
          {
            CFRelease(value);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (!v21)
          {
            fpic_setCoordinationMediaSelectionCriteria(a1, v22);
          }

          goto LABEL_17;
        }
      }
    }
  }

  v22 = 0;
LABEL_17:
  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

void fpic_CopyEventsWithOfflineURLsIfNecessary(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = DerivedStorage;
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    if (*(v6 + 160))
    {
      FigPlaybackItemGetFigBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v11 = *MEMORY[0x1E695E480];
        if (!v10(v9, @"OfflineInterstitialURLs", *MEMORY[0x1E695E480], &cf) && FigCFDictionaryGetCount() >= 1)
        {
          Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v13 = Mutable;
            v14 = 0;
            theArray = Mutable;
            if (!a2)
            {
              goto LABEL_12;
            }

LABEL_11:
            for (i = CFArrayGetCount(a2); v14 < i; i = 0)
            {
              OUTLINED_FUNCTION_617();
              ValueAtIndex = FigCFArrayGetValueAtIndex();
              v17 = fpic_UnwrapEvent();
              v18 = FigPlayerInterstitialEventCopyInterstitialAssetURLs(v17);
              if (v18)
              {
                v19 = v18;
                Count = CFArrayGetCount(v18);
                OUTLINED_FUNCTION_622();
                MutableCopy = FigCFArrayCreateMutableCopy();
                if (Count >= 1)
                {
                  for (j = 0; j != Count; ++j)
                  {
                    v23 = CFArrayGetValueAtIndex(v19, j);
                    if (!FigCFURLIsLocalResource())
                    {
                      CFURLGetString(v23);
                      Value = FigCFDictionaryGetValue();
                      if (Value)
                      {
                        v25 = Value;
                      }

                      else
                      {
                        v25 = v23;
                      }

                      CFArraySetValueAtIndex(MutableCopy, j, v25);
                    }
                  }
                }

                if (FigCFEqual())
                {
                  WrappedEvent = 0;
                }

                else
                {
                  FigPlayerInterstitialEventSetInterstitialAssetURLs(v17, MutableCopy);
                  WrappedEvent = fpic_CreateWrappedEvent();
                  ValueAtIndex = WrappedEvent;
                }

                v13 = theArray;
                CFArrayAppendValue(theArray, ValueAtIndex);
                CFRelease(v19);
                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                if (WrappedEvent)
                {
                  CFRelease(WrappedEvent);
                }
              }

              else
              {
                v13 = theArray;
                CFArrayAppendValue(theArray, ValueAtIndex);
              }

              ++v14;
              if (a2)
              {
                goto LABEL_11;
              }

LABEL_12:
              ;
            }

            if (*a3)
            {
              CFRelease(*a3);
            }

            *a3 = v13;
          }

          else
          {
            OUTLINED_FUNCTION_429();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

double fpic_SortEventsInAddOrder()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v104 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 200);
  if (!v3 || ((Count = CFArrayGetCount(v3), *(DerivedStorage + 1143)) ? (v5 = Count < 1) : (v5 = 1), v5))
  {
LABEL_53:
    OUTLINED_FUNCTION_651();
    return result;
  }

  v6 = Count;
  v7 = OUTLINED_FUNCTION_265();
  Mutable = CFArrayCreateMutable(v7, v8, 0);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = OUTLINED_FUNCTION_265();
    v14 = CFArrayCreateMutable(v11, v12, v13);
    if (v14)
    {
      v15 = 0;
      while (1)
      {
        v16 = malloc_type_calloc(1uLL, 0x10uLL, 0x10C004028F705ECuLL);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        v16[1] = v15;
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        *v17 = ValueAtIndex;
        CFArrayAppendValue(v10, v17);
        if (v6 == ++v15)
        {
          v105.location = 0;
          v105.length = v6;
          CFArraySortValues(v10, v105, fpic_interstitialEventCompFunc, v1);
          if (CFArrayGetCount(v10) >= 1)
          {
            v19 = 0;
            do
            {
              OUTLINED_FUNCTION_624();
              v20 = FigCFArrayGetValueAtIndex();
              CFArrayAppendValue(v14, *v20);
              ++v19;
            }

            while (v19 < CFArrayGetCount(v10));
          }

          if (!FigCFEqual())
          {
            v21 = *(DerivedStorage + 208);
            *(DerivedStorage + 208) = v14;
            CFRetain(v14);
            if (v21)
            {
              CFRelease(v21);
            }

            if (dword_1EAF178D0)
            {
              LODWORD(v96) = 0;
              type.n128_u8[0] = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_125();
              if (v24)
              {
                v25 = v23;
              }

              else
              {
                v25 = 0;
              }

              if (v25)
              {
                v26 = *(DerivedStorage + 208);
                *v99 = 136315650;
                *&v99[4] = "fpic_SortEventsInAddOrder";
                *&v99[12] = 2048;
                *&v99[14] = v1;
                *&v99[22] = 2112;
                *&v99[24] = v26;
                OUTLINED_FUNCTION_82_1();
                OUTLINED_FUNCTION_19_1();
                _os_log_send_and_compose_impl(v27, v28, v29, v30, v31, os_log_and_send_and_compose_flags_and_os_log_type, 0, v32, v99);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_417(v33, v34, v35, v36, v37);
            }
          }

          v38 = CMBaseObjectGetDerivedStorage();
          v91 = 0u;
          v92 = 0u;
          v89 = 0;
          v90 = 0;
          v39 = *(v38 + 208);
          if (v39 && CFArrayGetCount(v39) >= 1)
          {
            cf = FigCFWeakReferenceHolderCopyReferencedObject();
            if (cf)
            {
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              for (i = 0; ; i = v79)
              {
                v45 = *(v38 + 208);
                if (v45)
                {
                  v45 = CFArrayGetCount(v45);
                }

                if (v42 >= v45)
                {
                  break;
                }

                v77 = i;
                v75 = v43;
                v79 = FigCFArrayGetValueAtIndex();
                v43 = fpic_UnwrapEvent();
                v86 = 0u;
                v87 = 0u;
                v88 = 0;
                fpic_GetEventStartMoment(v43, &v86);
                v101 = OUTLINED_FUNCTION_219_1(MEMORY[0x1E6960C70]);
                v47 = *(v46 + 16);
                *&v102 = v47;
                FigPlayerInterstitialEventSetInternalPlayoutLimit(v43, &v101);
                if (v41 | v40)
                {
                  v101 = v91;
                  v102 = v92;
                  *(&v103 + 2) = v89;
                  HIWORD(v103) = v90;
                  OUTLINED_FUNCTION_232_1();
                  LOBYTE(v103) = v41;
                  BYTE1(v103) = v40;
                  v48 = OUTLINED_FUNCTION_154_2();
                  if (!fpic_MomentsAreCloseWithTolerance(v48, v49, &kMomentsAreCloseThreshold))
                  {
                    v84 = v76;
                    v85 = v47;
                    memset(&v83, 0, sizeof(v83));
                    fpic_PredictEventGroupDurationOnPrimary(v1, v77, cf, 0, &v84, &v83);
                    OUTLINED_FUNCTION_155_1();
                    *(&v103 + 2) = v50;
                    HIWORD(v103) = v90;
                    *v99 = v84;
                    *&v99[16] = v85;
                    v51 = OUTLINED_FUNCTION_154_2();
                    fpic_AddTimeToMoment(v51, v52, v53);
                    OUTLINED_FUNCTION_125_4();
                    OUTLINED_FUNCTION_155_1();
                    *(&v103 + 2) = v54;
                    HIWORD(v103) = v90;
                    *v99 = v83;
                    v55 = OUTLINED_FUNCTION_154_2();
                    fpic_AddTimeToMoment(v55, v56, v57);
                    v101 = 0u;
                    v102 = 0u;
                    v103 = 0;
                    *v99 = v80;
                    *&v99[16] = v81;
                    v100[0] = v82;
                    v98 = 0;
                    v96 = 0u;
                    v97 = 0u;
                    fpic_AddTimeToMoment(&v101, &kAbuttingEventThreshold, &v96);
                    v95 = 0;
                    type = 0u;
                    v94 = 0u;
                    fpic_SubtractTimeFromMoment(v99, &kAbuttingEventThreshold, &type);
                    OUTLINED_FUNCTION_233_1();
                    if (fpic_MomentGreaterThan(&v101, &v96))
                    {
                      OUTLINED_FUNCTION_232_1();
                      v101 = type;
                      v102 = v94;
                      v103 = v95;
                      v58 = OUTLINED_FUNCTION_154_2();
                      if (fpic_MomentGreaterThan(v58, v59))
                      {
                        v96 = 0uLL;
                        *&v97 = 0;
                        OUTLINED_FUNCTION_233_1();
                        memset(v99, 0, sizeof(v99));
                        v100[0] = 0;
                        v60 = OUTLINED_FUNCTION_154_2();
                        fpic_SubtractMomentFromMoment(v60, v61, v62);
                        if (dword_1EAF178D0)
                        {
                          type.n128_u32[0] = 0;
                          v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          v64 = type.n128_u32[0];
                          if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                          {
                            v64 &= ~1u;
                          }

                          if (v64)
                          {
                            OUTLINED_FUNCTION_213_1();
                            Seconds = CMTimeGetSeconds(&v101);
                            *v99 = 136315906;
                            *&v99[4] = "fpic_applyInternalPlayoutLimitsToOverlappingEvents";
                            *&v99[12] = 2048;
                            *&v99[14] = v1;
                            *&v99[22] = 2048;
                            *&v99[24] = Seconds;
                            LOWORD(v100[0]) = 2112;
                            *(v100 + 2) = v77;
                            OUTLINED_FUNCTION_95_1();
                            v66 = OUTLINED_FUNCTION_31();
                            _os_log_send_and_compose_impl(v66, v67, v68, v69, &dword_1962D5000, v63, 0, "<<<< FigPlayerInterstitial >>>> %s: %p: setting internal playout limit %f on %@", v99);
                          }

                          OUTLINED_FUNCTION_7();
                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                        }

                        OUTLINED_FUNCTION_213_1();
                        FigPlayerInterstitialEventSetInternalPlayoutLimit(v75, &v101);
                      }
                    }
                  }
                }

                v91 = v86;
                v92 = v87;
                v41 = v88;
                v40 = BYTE1(v88);
                v89 = *(&v88 + 2);
                v90 = HIWORD(v88);
                ++v42;
              }

              CFRelease(cf);
            }

            else
            {
              OUTLINED_FUNCTION_429();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }
          }

          goto LABEL_46;
        }
      }
    }

    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_46:
    if (CFArrayGetCount(v10) >= 1)
    {
      v70 = 0;
      do
      {
        OUTLINED_FUNCTION_198_0();
        v71 = FigCFArrayGetValueAtIndex();
        if (*v71)
        {
          CFRelease(*v71);
        }

        free(v71);
        ++v70;
      }

      while (v70 < CFArrayGetCount(v10));
    }

    CFRelease(v10);
    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_53;
  }

  OUTLINED_FUNCTION_429();
  OUTLINED_FUNCTION_651();

  return FigSignalErrorAtGM(v73);
}

void fpic_UpdatePlaybackItemEventList()
{
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_108_3();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0 && ((v3 = *(DerivedStorage + 208), v4 = CMBaseObjectGetDerivedStorage(), !v3) ? (Count = 0) : (Count = CFArrayGetCount(v3)), (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0])) != 0))
  {
    v7 = Mutable;
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      if (!fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(v1) && Count >= 1)
      {
        v10 = 0;
        v11 = (v4 + 88);
        do
        {
          v12 = *v11;
          v13 = OUTLINED_FUNCTION_16_13();
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
          v16 = v12(v1, v9, ValueAtIndex);
          v17 = FigPlayerInterstitialEventCopyAsDictionary(v16, 0);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          CFArrayAppendValue(v7, v17);
          CFRelease(v18);
          ++v10;
        }

        while (Count != v10);
      }

      CFRelease(v9);
    }

    FigPlaybackItemGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v19 = OUTLINED_FUNCTION_236();
      v20(v19);
    }

    OUTLINED_FUNCTION_651();

    CFRelease(v21);
  }

  else
  {
    OUTLINED_FUNCTION_651();
  }
}

double fpic_createMediaSelectionCriteriaForMediaType(const __CFDictionary *a1, const __CFDictionary *a2, int a3, __CFDictionary **a4)
{
  v20 = 0;
  if (a4)
  {
    if (!a1)
    {
      return result;
    }

    if (!a2)
    {
      return result;
    }

    FigCFDictionaryGetBooleanIfPresent();
    if (!CFDictionaryGetValue(a1, @"MediaSelectionOptionsPersistentID"))
    {
      return result;
    }

    Value = CFDictionaryGetValue(a2, @"MediaSelectionGroupOptions");
    v10 = 0;
    do
    {
      if (Value)
      {
        Count = CFArrayGetCount(Value);
      }

      else
      {
        Count = 0;
      }

      if (v10 >= Count)
      {
        *a4 = 0;
        return result;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(Value, v10);
      CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
      ++v10;
    }

    while (!FigCFEqual());
    v18 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsLanguageCode");
    v13 = MEMORY[0x1E695E480];
    if (v18)
    {
      v14 = CFArrayCreate(*MEMORY[0x1E695E480], &v18, 1, MEMORY[0x1E695E9C0]);
      if (!v14)
      {
        OUTLINED_FUNCTION_303();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v21);
      }

      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = 0;
      if (a3)
      {
LABEL_14:
        v15 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsTaggedMediaCharacteristics");
LABEL_18:
        Mutable = CFDictionaryCreateMutable(*v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v17 = Mutable;
        if (Mutable)
        {
          if (v14)
          {
            CFDictionarySetValue(Mutable, @"preferredLanguages", v14);
          }

          if (v15)
          {
            CFDictionarySetValue(v17, @"preferredMediaCharacteristics", v15);
          }
        }

        else
        {
          OUTLINED_FUNCTION_303();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v21);
        }

        *a4 = v17;
        if (v14)
        {
          CFRelease(v14);
        }

        return result;
      }
    }

    v15 = 0;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

const void *fpic_UnwrapEvent()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_36_25();
    v4 = v3(v2);
    CFRelease(v1);
    return v4;
  }

  return result;
}

const void *fpic_CreateWrappedEvent()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_36_25();
    v3(v2);
    CFRelease(v1);
    return 0;
  }

  return result;
}

uint64_t fpic_interstitialEventCompFunc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = fpic_UnwrapEvent();
  OUTLINED_FUNCTION_284();
  fpic_UnwrapEvent();
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  fpic_GetEventStartMoment(v6, &v36);
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_284();
  fpic_GetEventStartMoment(v7, v8);
  v17 = v38;
  v18 = v35;
  if (!v38 || !v35)
  {
    v19 = BYTE1(v35);
    v20 = BYTE1(v38);
    if (!BYTE1(v38) || !BYTE1(v35))
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      if (*(DerivedStorage + 336) || *(DerivedStorage + 337))
      {
        v22 = *(DerivedStorage + 320);
        v39 = *(DerivedStorage + 304);
        v40 = v22;
        v41 = *(DerivedStorage + 336);
      }

      else
      {
        fpic_CurrentItemMoment(&v39);
      }

      memset(&v32, 0, sizeof(v32));
      v23 = MEMORY[0x1E6960C70];
      if (v17)
      {
        *&v32.value = v36;
        v24 = v37;
      }

      else
      {
        if (v20)
        {
          OUTLINED_FUNCTION_194_1();
          v9 = FigCreateTimeWithDateAndMoment(time1, &v32, v25);
LABEL_20:
          memset(&v31, 0, sizeof(v31));
          if (v18)
          {
            *&v31.value = v33;
            v26 = v34;
          }

          else
          {
            if (v19)
            {
              OUTLINED_FUNCTION_194_1();
              v9 = FigCreateTimeWithDateAndMoment(time1, &v31, v27);
LABEL_25:
              *time1 = v32;
              OUTLINED_FUNCTION_123_3(v9, v10, v11, v12, v13, v14, v15, v16, v29.value, *&v29.timescale, v29.epoch, v30, *&v31.value);
              v29.epoch = v28;
              LODWORD(result) = CMTimeCompare(time1, &v29);
              if (result)
              {
                return result;
              }

              goto LABEL_6;
            }

            *&v31.value = *v23;
            v26 = *(v23 + 16);
          }

          v31.epoch = v26;
          goto LABEL_25;
        }

        *&v32.value = *MEMORY[0x1E6960C70];
        v24 = *(MEMORY[0x1E6960C70] + 16);
      }

      v32.epoch = v24;
      goto LABEL_20;
    }
  }

  *time1 = v36;
  *&time1[16] = v37;
  v43 = v38;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  if (fpic_MomentsAreCloseWithTolerance(time1, &v39, &kMomentsAreCloseThreshold))
  {
LABEL_6:
    if (*(v4 + 8) < *(v3 + 8))
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  v39 = v36;
  v40 = v37;
  v41 = v38;
  *time1 = v33;
  *&time1[16] = v34;
  v43 = v35;
  if (fpic_MomentGreaterThan(time1, &v39))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

__n128 fpic_GetItemEndTime()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  CMBaseObjectGetDerivedStorage();
  result.n128_u64[0] = OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]).n128_u64[0];
  if (v0)
  {
    v5 = v3;
    FigCFCopyPropertyAsTime();
    OUTLINED_FUNCTION_29();
    if ((!v6 || *(CMBaseObjectGetDerivedStorage() + 1032) == v0) && *(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      v7 = OUTLINED_FUNCTION_235();
      v8(v7);
    }

    if (*(v5 + 160) == v0)
    {
      if (*(v5 + 396))
      {
        v10 = *v2;
        v9 = *(v5 + 384);
        if (!faqrp_timeDifferenceIsWithinTolerance(&v10, &v9, &kMomentsAreCloseThreshold))
        {
          result = *(v5 + 384);
          v2->epoch = *(v5 + 400);
          *&v2->value = result;
        }
      }

      else
      {
        result = *&v2->value;
        *(v5 + 400) = v2->epoch;
        *(v5 + 384) = result;
      }
    }
  }

  return result;
}

void fpic_GetEventDuration(CMTime *a2@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_766();
  v4();
  OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]);
  if (v5)
  {
    v6 = v5;
    v7 = CMBaseObjectGetDerivedStorage();
    v8 = OUTLINED_FUNCTION_164_2(v7);
    v9 = MEMORY[0x1E6960CC0];
    if (v8 != -1)
    {
      v23 = v8;
      v24 = OUTLINED_FUNCTION_622();
      PerEventTrackingCount = fpic_GetPerEventTrackingCount(v24, v25);
      value = *v9;
      timescale = *(v9 + 8);
      if (PerEventTrackingCount >= 1)
      {
        v27 = v9;
        v28 = 0;
        epoch = *(v27 + 16);
        flags = *(v27 + 12);
        v36 = PerEventTrackingCount;
        do
        {
          memset(&time1, 0, sizeof(time1));
          OUTLINED_FUNCTION_766();
          fpic_GetEventItemDurationOnEventTimeline(v31, v32, v33, v28, v34);
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          rhs = time1;
          CMTimeAdd(&time2, &lhs, &rhs);
          value = time2.value;
          flags = time2.flags;
          timescale = time2.timescale;
          epoch = time2.epoch;
          ++v28;
        }

        while (v36 != v28);
        v9 = MEMORY[0x1E6960CC0];
        if (time2.flags)
        {
          a2->value = value;
          a2->timescale = timescale;
          a2->flags = flags;
          a2->epoch = epoch;
        }
      }

      if (!v23)
      {
        time2 = DerivedStorage[18];
        lhs = DerivedStorage[20];
        CMTimeAdd(&time1, &time2, &lhs);
        time2 = *a2;
        CMTimeAdd(a2, &time2, &time1);
      }
    }

    v10 = a2->flags;
    if ((v10 & 1) == 0)
    {
      v11.n128_f64[0] = FigPlayerInterstitialEventGetStatedDuration(v6, &time1);
      OUTLINED_FUNCTION_38_21(v12, v13, v14, v15, v16, v17, v18, v19, v11, v35, v36, rhs.value, *&rhs.timescale, rhs.epoch, v38, time2.value, *&time2.timescale, time2.epoch, v20, time1.value);
      v10 = a2->flags;
    }

    if ((v10 & 1) == 0)
    {
      *&a2->value = *v9;
      a2->epoch = *(v9 + 16);
    }

    FigPlayerInterstitialEventGetEffectivePlayoutLimit(v6, &time1);
    lhs.value = time1.value;
    v21 = time1.flags;
    lhs.timescale = time1.timescale;
    if ((time1.flags & 0x1D) == 1)
    {
      v22 = time1.epoch;
      time1.timescale = lhs.timescale;
      time2 = *a2;
      time1.value = lhs.value;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        a2->value = lhs.value;
        a2->timescale = lhs.timescale;
        a2->flags = v21;
        a2->epoch = v22;
      }
    }
  }
}

double fpic_GetEventItemDurationOnEventTimeline@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_235_1();
  v11(a1, a2, a3);
  *&result = OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]).n128_u64[0];
  if (v12)
  {
    v14 = v12;
    v15 = OUTLINED_FUNCTION_104_0();
    PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v15, v16, a4, v17);
    if (PerAssetPerEventTrackedObject != @"DummyItem")
    {
      v19 = PerAssetPerEventTrackedObject;
      v20 = (*(DerivedStorage + 104))(a1, a2, PerAssetPerEventTrackedObject);
      if (v20)
      {
        v21 = v20;
        LODWORD(rhs.value) = 0;
        dictionaryRepresentation.value = 0;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v22)
        {
          v67 = @"Duration";
          if (!v22(v21) && LODWORD(rhs.value) == 2)
          {
            FigAssetGetCMBaseObject();
            v25 = v24;
            v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v26)
            {
              if (!v26(v25, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation))
              {
                CMTimeMakeFromDictionary(a5, dictionaryRepresentation.value);
                if (dictionaryRepresentation.value)
                {
                  CFRelease(dictionaryRepresentation.value);
                }
              }
            }
          }
        }
      }

      if ((*(a5 + 12) & 1) == 0)
      {
        v27 = fpic_UnwrapPlaybackItem(a1, v19, a2);
        if (v27)
        {
          v28 = v27;
          v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v29)
          {
            v29(v28, a5);
          }
        }
      }

      if (!a4 && !fpic_hasFirstItemPlayedOutForEvent())
      {
        FigPlayerInterstitialEventGetFirstItemStartOffset(v14, &rhs);
        lhs = *a5;
        v30 = CMTimeSubtract(&dictionaryRepresentation, &lhs, &rhs);
        *&result = OUTLINED_FUNCTION_38_21(v30, v31, v32, v33, v34, v35, v36, v37, v38, v66, v67, lhs.value, *&lhs.timescale, lhs.epoch, v69, rhs.value, *&rhs.timescale, rhs.epoch, v39, dictionaryRepresentation.value).n128_u64[0];
      }

      if ((*(a5 + 12) & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_104_0();
        if (fpic_GetPerAssetPerEventTrackedObject(v40, v41, a4, v42))
        {
          FigCFNumberGetFloat64();
          v44 = CMTimeMakeWithSeconds(&dictionaryRepresentation, v43, 1000000);
          *&result = OUTLINED_FUNCTION_38_21(v44, v45, v46, v47, v48, v49, v50, v51, v52, v66, v67, lhs.value, *&lhs.timescale, lhs.epoch, v69, rhs.value, *&rhs.timescale, rhs.epoch, v53, dictionaryRepresentation.value).n128_u64[0];
        }
      }

      if ((*(a5 + 12) & 1) == 0)
      {
        v54 = OUTLINED_FUNCTION_104_0();
        if (fpic_GetPerEventTrackingCount(v54, v55) == 1)
        {
          v56.n128_f64[0] = FigPlayerInterstitialEventGetStatedDuration(v14, &dictionaryRepresentation);
          *&result = OUTLINED_FUNCTION_38_21(v57, v58, v59, v60, v61, v62, v63, v64, v56, v66, v67, lhs.value, *&lhs.timescale, lhs.epoch, v69, rhs.value, *&rhs.timescale, rhs.epoch, v65, dictionaryRepresentation.value).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL fpic_hasFirstItemPlayedOutForEvent()
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (fpic_GetCurrentlyPlayingEvent(v1) != v0)
  {
    return 0;
  }

  lhs = *(DerivedStorage + 432);
  v5 = *(DerivedStorage + 480);
  CMTimeAdd(&time2, &lhs, &v5);
  OUTLINED_FUNCTION_77_10(MEMORY[0x1E6960CC0]);
  lhs.epoch = v3;
  return CMTimeCompare(&lhs, &time2) != 0;
}

BOOL fpic_DoesNextMomentBelongToCurrentDepartureMoment(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_166();
  if (!v2)
  {
    return 0;
  }

  v3 = DerivedStorage + 344;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_75_9();
  if (!v5)
  {
    OUTLINED_FUNCTION_14_59();
    if (v7)
    {
      v4 = v6;
    }
  }

  v8 = *(v4 + 16);
  v11[0] = *v4;
  v11[1] = v8;
  v12 = *(v4 + 32);
  v9 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v9;
  v14 = *(v3 + 32);
  return fpic_MomentsAreCloseWithTolerance(v13, v11, &kMomentsAreCloseThreshold);
}

void fpic_LimitPreloadToPlayhead()
{
  OUTLINED_FUNCTION_182();
  v1 = v0;
  v135 = *MEMORY[0x1E69E9840];
  v101 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  started = FigPlayerInterstitialPreloadCopyStartDate(v1);
  if (*(DerivedStorage + 160) && started)
  {
    fpic_CurrentItemMoment(&cf);
    *v110 = cf;
    v5 = v131;
    v6 = v132;
    v7 = MEMORY[0x1E6960C70];
    MEMORY[0x19A8CCD90](started);
    StatedDuration = FigPlayerInterstitialPreloadGetStatedDuration(v1);
    CMTimeMakeWithSeconds(v133, StatedDuration, 1000000);
    *v111 = *v7;
    v9 = *v111;
    OUTLINED_FUNCTION_241_2();
    v10 = 1;
    v113[1] = 1;
    *&v113[2] = 0;
    *&v113[6] = 0;
    fpic_AddTimeToMoment(v111, v133, &cf);
    v11 = v132;
    OUTLINED_FUNCTION_239_1(v12, v13, v14, v15, v16, v17, v18, v19, v84, v87, v91, v94, v97, v101, cf.value, *&cf.timescale, cf.epoch, v108, *v110);
    v131 = v5;
    v132 = v6;
    *v111 = v9;
    OUTLINED_FUNCTION_241_2();
    v113[1] = 1;
    *&v113[2] = 0;
    *&v113[6] = 0;
    v20 = fpic_MomentGreaterThan(&cf, v111);
    v28 = MEMORY[0x1E695E480];
    v95 = v11;
    if (v20 && (*v111 = *v110, *&v111[16] = *&v110[16], OUTLINED_FUNCTION_152_3(v20, v21, v22, v23, v24, v25, v26, v27, v85, v88, v92, v11, v98, v102, v104), v132 = v11, v112 = v5, *v113 = v6, fpic_MomentGreaterThan(&cf, v111)))
    {
      CFDateCreate(*v28, v5);
      v29 = OUTLINED_FUNCTION_399();
      v99 = v30;
      FigPlayerInterstitialPreloadSetEffectiveStartDate(v29, v30);
      v10 = 0;
    }

    else
    {
      v99 = 0;
    }

    v31 = v102;
    v32 = CMBaseObjectGetDerivedStorage();
    v33 = v1;
    v34 = FigPlayerInterstitialPreloadCopyTargetID(v1);
    if (v34)
    {
      v35 = v34;
      v36 = started;
      v37 = CMBaseObjectGetDerivedStorage();
      v38 = 0;
      while (1)
      {
        Count = *(v37 + 208);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v38 >= Count)
        {
          break;
        }

        FigCFArrayGetValueAtIndex();
        OUTLINED_FUNCTION_577();
        v40 = fpic_UnwrapEvent();
        v41 = FigPlayerInterstitialEventCopyIdentifier(v40);
        v42 = FigCFEqual();
        if (v41)
        {
          CFRelease(v41);
        }

        ++v38;
        v31 = v102;
        if (v40)
        {
          if (v42)
          {
            break;
          }
        }
      }

      CFRelease(v35);
      started = v36;
      v28 = MEMORY[0x1E695E480];
    }

    cf.value = 0;
    *v111 = 0;
    v133[0].value = 0;
    if (*(v32 + 160))
    {
      FigPlaybackItemGetFigBaseObject();
      v44 = v43;
      v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      v46 = v33;
      if (v45 && !v45(v44, @"nearFutureLiveBufferInfo", *v28, &cf))
      {
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetInt64IfPresent();
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetDoubleIfPresent();
      }
    }

    else
    {
      v46 = v33;
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }

    if ((v10 & 1) == 0)
    {
      v134 = 0;
      memset(v133, 0, sizeof(v133));
      if (dword_1EAF178D0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_101_0();
        if (v49)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0;
        }

        if (v50)
        {
          v51 = v99;
          v52 = MEMORY[0x19A8CCD90](v99);
          v53 = MEMORY[0x19A8CCD90](0);
          v55 = v54;
          OUTLINED_FUNCTION_152_3(v53, v56, v57, v58, v59, v60, v61, v62, v85, v88, v92, v95, v99, v102, v104);
          v132 = v96;
          fpic_getMomentDesc(&cf, v133);
          TriggerOffset = FigPlayerInterstitialPreloadGetTriggerOffset(v46);
          OUTLINED_FUNCTION_239_1(v64, v65, v66, v67, v68, v69, v70, v71, v86, v89, v93, v96, v100, v103, v105, v106, v107, v109, *v110);
          Seconds = CMTimeGetSeconds(&cf);
          *v111 = 136317954;
          *&v111[4] = "fpic_LimitPreloadToPlayhead";
          *&v111[12] = 2048;
          *&v111[14] = v31;
          *&v111[22] = 2048;
          v112 = *&v46;
          *v113 = 2112;
          *&v113[2] = started;
          v114 = 2112;
          v115 = v51;
          v116 = 2048;
          v117 = v52;
          v118 = 2112;
          v119 = 0;
          v120 = 2048;
          v121 = v55;
          v122 = 2080;
          v123 = v133;
          v124 = 2048;
          v125 = TriggerOffset;
          v126 = 2048;
          v127 = Seconds;
          v128 = 2048;
          v129 = v5;
          LODWORD(v90) = 122;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v73, v74, v75, v76, v77, os_log_and_send_and_compose_flags_and_os_log_type, 0, v78, v111, v90);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449(v79, v80, v81, v82, v83);
      }
    }

    if (v99)
    {
      CFRelease(v99);
    }
  }

  if (started)
  {
    CFRelease(started);
  }

  OUTLINED_FUNCTION_181();
}

BOOL fpic_IsItemBufferedToEnd(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_210_1();
  fpic_GetItemEndTime();
  if ((v6.flags & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29();
  if (!v3)
  {
    return 0;
  }

  v5 = v6;
  return fpic_BufferIncludesTime(a2, &v5, &kPostRollTimeToPausePlaybackBuffer);
}

void fpic_GatePrimaryBufferingAtCurrentEvent(uint64_t a1, int a2)
{
  v96 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_75_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_14_59();
    if (v8)
    {
      v5 = v7;
    }
  }

  memset(&v89, 0, sizeof(v89));
  if (*(v5 + 32))
  {
    goto LABEL_5;
  }

  if (!*(v5 + 33))
  {
    v5 = MEMORY[0x1E6960C70];
LABEL_5:
    OUTLINED_FUNCTION_77_10(v5);
    v89.epoch = v9;
    goto LABEL_8;
  }

  v10 = *(v5 + 24);
  v11 = *(DerivedStorage + 320);
  *time = *(DerivedStorage + 304);
  *&time[16] = v11;
  v95 = *(DerivedStorage + 336);
  FigCreateTimeWithDateAndMoment(time, &v89, v10);
LABEL_8:
  if (*(DerivedStorage + 968) || *(DerivedStorage + 969))
  {
    v12 = *(DerivedStorage + 160);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v13)
    {
      v13(v12, &v89);
    }
  }

  *time = *(DerivedStorage + 1040);
  *&time[16] = *(DerivedStorage + 1056);
  v90 = v89;
  IsWithinTolerance = faqrp_timeDifferenceIsWithinTolerance(time, &v90, &kMomentsAreCloseThreshold);
  if (!IsWithinTolerance)
  {
    OUTLINED_FUNCTION_145_2(IsWithinTolerance, *MEMORY[0x1E695E480], v15, v16, v17, v18, v19, v20, v70, v74, v78, v82, *&v89.value);
    v23 = CMTimeCopyAsDictionary(v21, v22);
    if (!a2 || *(CMBaseObjectGetDerivedStorage() + 896))
    {
      v24 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v24 = MEMORY[0x1E695E4D0];
    }

    v25 = *v24;
    FigPlaybackItemGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      OUTLINED_FUNCTION_766();
      if (!v26())
      {
        FigPlaybackItemGetFigBaseObject();
        v28 = v27;
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v29)
        {
          v30 = v29(v28, @"TimeToPauseBuffering", v23);
          if (!v30)
          {
            v38 = (DerivedStorage + 1040);
            if (dword_1EAF178D0)
            {
              v39 = OUTLINED_FUNCTION_19_42(v30, v31, v32, v33, v34, v35, v36, v37, v71, v75, v79, v83, SBYTE2(v83), SBYTE3(v83), SHIDWORD(v83));
              OUTLINED_FUNCTION_167_3(v39, v40, v41, v42, v43, v44, v45, v46, v72, v76, v80, v84, v86, v87, v88);
              OUTLINED_FUNCTION_40();
              if (v25)
              {
                OUTLINED_FUNCTION_145_2(v47, v48, v49, v50, v51, v52, v53, v54, v73, v77, v81, v85, *&v89.value);
                Seconds = CMTimeGetSeconds(v55);
                *time = *v38;
                *&time[16] = *(DerivedStorage + 1056);
                v57 = CMTimeGetSeconds(time);
                LODWORD(v90.value) = 136315906;
                *(&v90.value + 4) = "fpic_GatePrimaryBufferingAtCurrentEvent";
                LOWORD(v90.flags) = 2048;
                *(&v90.flags + 2) = a1;
                HIWORD(v90.epoch) = 2048;
                v91 = Seconds;
                v92 = 2048;
                v93 = v57;
                OUTLINED_FUNCTION_100();
                OUTLINED_FUNCTION_65();
                _os_log_send_and_compose_impl(v58, v59, v60, v61, v62, v63, v28, v64);
                OUTLINED_FUNCTION_612();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414(v65, v66, v67, v68, v69);
            }

            *v38 = *&v89.value;
            *(DerivedStorage + 1056) = v89.epoch;
          }
        }
      }
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }
}

void fpic_EnsureEventHasResolvedProperties()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v140 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_766();
  v8 = v7();
  if (!*(DerivedStorage + 1143) || *(DerivedStorage + 160) != v8)
  {
    goto LABEL_47;
  }

  HIDWORD(v110) = v1;
  *&v132.value = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v132.epoch = v9;
  v107 = *&v132.value;
  *&v131.value = *&v132.value;
  v131.epoch = v9;
  *&v130.value = OUTLINED_FUNCTION_219_1(MEMORY[0x1E6960CC0]);
  v11 = *(v10 + 16);
  v130.epoch = v11;
  v12 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_624();
  v13 = fpic_UnwrapEvent();
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = OUTLINED_FUNCTION_164_2(v14);
  cf = FigPlayerInterstitialEventCopyIdentifier(v13);
  v126 = 0uLL;
  v127 = 0;
  v16 = OUTLINED_FUNCTION_624();
  fpic_PredictEventDurationOnPrimary(v16, v17, v3, v18);
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  fpic_EventDateTimeMoment(v13, &v123);
  LODWORD(v110) = FigPlayerInterstitialEventGetSnapOptions(v13);
  if (FigPlayerInterstitialEventIsPostRoll(v13))
  {
    fpic_GetEarliestStartForPostroll(&v137);
  }

  else if (v15 == -1)
  {
    fpic_EventDateTimeMoment(v13, &v137);
  }

  else
  {
    v137 = v123;
    v138 = v124;
    v139 = v125;
    v21 = *(v12 + 240);
    *time1 = *(v12 + 224);
    *&time1[16] = v21;
    *v134 = *(v12 + 256);
    v22 = OUTLINED_FUNCTION_88_9();
    if (fpic_MomentsAreCloseWithTolerance(v22, v23, v24))
    {
      v25 = CMBaseObjectGetDerivedStorage();
      v26 = v25 + 264;
      if (!*(v25 + 296) && !*(v25 + 297))
      {
        v26 = v25 + 224;
      }

      v128 = *v26;
      v129 = *(v26 + 16);
      v19 = *(v26 + 24);
      v27 = *(v26 + 32);
      v20 = *(v26 + 33);
      if (v27)
      {
        goto LABEL_6;
      }

LABEL_13:
      if (v20)
      {
        v28 = *(v12 + 320);
        v137 = *(v12 + 304);
        v138 = v28;
        v139 = *(v12 + 336);
        FigCreateTimeWithDateAndMoment(&v137, time1, v19);
      }

      else
      {
        *time1 = v107;
        *&time1[16] = v9;
      }

      goto LABEL_17;
    }

    memset(&v122, 0, sizeof(v122));
    fpic_getSnapOutDelta(&v122);
    *time1 = v123;
    *&time1[16] = v124;
    *v134 = v125;
    fpic_SubtractTimeFromMoment(time1, &v122, &v137);
  }

  v128 = v137;
  v19 = *(&v138 + 1);
  v129 = v138;
  v20 = BYTE1(v139);
  if (!v139)
  {
    goto LABEL_13;
  }

LABEL_6:
  *time1 = v128;
  *&time1[16] = v129;
LABEL_17:
  v137 = v114;
  *&v138 = v11;
  CMTimeMaximum(&v132, time1, &v137);
  v29 = OUTLINED_FUNCTION_624();
  fpic_PredictEventGroupDurationOnPrimary(v29, v30, v3, 0, v31, v32);
  v137 = *&v130.value;
  *&v138 = v130.epoch;
  *time1 = v114;
  *&time1[16] = v11;
  v33 = OUTLINED_FUNCTION_88_9();
  if (CMTimeCompare(v33, v34) >= 1)
  {
    *time1 = v132;
    rhs = v130;
    CMTimeAdd(&v137, time1, &rhs);
    *&v132.value = v137;
    v132.epoch = v138;
  }

  v131 = v132;
  v137 = v126;
  *&v138 = v127;
  *time1 = v114;
  *&time1[16] = v11;
  v35 = OUTLINED_FUNCTION_88_9();
  if (CMTimeCompare(v35, v36) >= 1)
  {
    OUTLINED_FUNCTION_39_22();
    *time1 = v126;
    *&time1[16] = v127;
    v37 = OUTLINED_FUNCTION_88_9();
    CMTimeAdd(v39, v37, v38);
  }

  if (fpic_GetCurrentlyPlayingEvent(v5))
  {
    if ((*(v12 + 568) & 1) != 0 && v15 != -1)
    {
      v40 = *(v12 + 656);
      if (v40)
      {
        if (v15 == CFArrayGetCount(v40) - 1 && (v110 & 2) != 0)
        {
          v41 = v12 + 556;
          if (dword_1EAF178D0)
          {
            LODWORD(rhs.value) = 0;
            HIBYTE(v119) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = rhs.value;
            *&v114 = os_log_and_send_and_compose_flags_and_os_log_type;
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_125();
            if (v45)
            {
              v46 = v44;
            }

            else
            {
              v46 = value;
            }

            if (v46)
            {
              OUTLINED_FUNCTION_39_22();
              Seconds = CMTimeGetSeconds(&v137);
              v137 = *v41;
              *&v138 = *(v41 + 16);
              v48 = CMTimeGetSeconds(&v137);
              *time1 = 136316162;
              *&time1[4] = "fpic_UpdateResolvedEventTimeIfNecessary";
              *&time1[12] = 2048;
              *&time1[14] = v5;
              *&time1[22] = 2112;
              *&time1[24] = cf;
              *v134 = 2048;
              *&v134[2] = Seconds;
              v135 = 2048;
              v136 = v48;
              LODWORD(v105) = 52;
              v103 = time1;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v49, v50, v51, v52, v53, v54, 0, v55);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417(v56, v57, v58, v59, v60);
          }

          v131 = *v41;
        }
      }
    }
  }

  FigPlayerInterstitialEventGetResolvedStartTime(v13, &rhs);
  v61 = OUTLINED_FUNCTION_25_34();
  OUTLINED_FUNCTION_238_1(v62, v63, v64, v65, v66, v67, v68, v69, v61, v103, v105, v107, *(&v107 + 1), v110, cf, v114, *(&v114 + 1), v117, v119, v70, rhs.value);
  v71 = OUTLINED_FUNCTION_88_9();
  if (faqrp_timeDifferenceIsWithinTolerance(v71, v72, v73) && (FigPlayerInterstitialEventGetResolvedEndTime(v13, &rhs), v74 = OUTLINED_FUNCTION_39_22(), OUTLINED_FUNCTION_238_1(v75, v76, v77, v78, v79, v80, v81, v82, v74, v104, v106, v108, v109, v111, cfa, v115, v116, v118, v120, v83, rhs.value), v84 = OUTLINED_FUNCTION_88_9(), faqrp_timeDifferenceIsWithinTolerance(v84, v85, v86)))
  {
    v87 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_25_34();
    FigPlayerInterstitialEventSetResolvedStartTime(v13, &v137);
    OUTLINED_FUNCTION_39_22();
    FigPlayerInterstitialEventSetResolvedEndTime(v13, &v137);
    v87 = 1;
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  v88 = CMBaseObjectGetDerivedStorage();
  v89 = CMBaseObjectGetDerivedStorage();
  v90 = OUTLINED_FUNCTION_164_2(v89);
  OUTLINED_FUNCTION_766();
  v92 = v91();
  v93 = v92;
  if (v90 == -1)
  {
    FigPlayerInterstitialEventGetResolvedDuration(v92, &v123);
    if (BYTE12(v123))
    {
      goto LABEL_43;
    }
  }

  memset(&v132, 0, sizeof(v132));
  v95 = OUTLINED_FUNCTION_624();
  fpic_GetProjectedDuration(v95, v96, v90, v3);
  if (!v90)
  {
    OUTLINED_FUNCTION_25_34();
    *time1 = *(v88 + 480);
    *&time1[16] = *(v88 + 496);
    v97 = OUTLINED_FUNCTION_88_9();
    CMTimeAdd(v99, v97, v98);
  }

  FigPlayerInterstitialEventGetResolvedDuration(v93, &v131);
  OUTLINED_FUNCTION_25_34();
  *time1 = v131;
  v100 = OUTLINED_FUNCTION_88_9();
  if (faqrp_timeDifferenceIsWithinTolerance(v100, v101, v102))
  {
LABEL_43:
    v94 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_25_34();
    FigPlayerInterstitialEventSetResolvedDuration(v93, &v137);
    v94 = 1;
  }

  if (HIDWORD(v111) && ((v94 == 0) & ~v87) == 0)
  {
    fpic_UpdatePlaybackItemEventList();
    fpic_PostNotification(v5, @"fpiResolvePropertiesChange", 0);
  }

LABEL_47:
  OUTLINED_FUNCTION_191();
}

void fpic_getSnapOutDelta(CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960C70]);
  if (*(v4 + 256) || *(DerivedStorage + 257))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_75_9();
    if (!v6)
    {
      OUTLINED_FUNCTION_14_59();
      if (v8)
      {
        v5 = v7;
      }
    }

    v9 = *(v5 + 16);
    v13[0] = *v5;
    v13[1] = v9;
    v14 = *(v5 + 32);
    v10 = *(DerivedStorage + 240);
    v11[0] = *(DerivedStorage + 224);
    v11[1] = v10;
    v12 = *(DerivedStorage + 256);
    fpic_SubtractMomentFromMoment(v11, v13, a2);
  }
}

void fpic_GetProjectedDuration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_179_2();
  v79 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_235_1();
  v10 = OUTLINED_FUNCTION_184();
  v70 = v5;
  v12 = v11(v10);
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, v7);
  timescale = 0;
  v14 = MEMORY[0x1E6960CC0];
  v77 = 0;
  v15 = *MEMORY[0x1E6960CC0];
  *&v4->value = *MEMORY[0x1E6960CC0];
  v69 = v4;
  v4->epoch = *(v14 + 16);
  if (PerEventTrackingCount < 1)
  {
    goto LABEL_22;
  }

  v16 = PerEventTrackingCount;
  v65 = v12;
  v17 = 0;
  HIDWORD(v68) = 1;
  v18 = @"PlaybackItem";
  v19 = &dword_1EAF17000;
  *&v15 = 136315906;
  v66 = v15;
  v67 = PerEventTrackingCount;
  do
  {
    if (fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, v7, v17, v18) == @"DummyItem")
    {
      v20 = fpic_UnwrapEvent();
      v21 = FigPlayerInterstitialEventCopyIdentifier(v20);
      if (v19[564])
      {
        v22 = DerivedStorage;
        v23 = v7;
        v24 = v18;
        v25 = a4;
        LODWORD(rhs.value) = 0;
        HIBYTE(v72) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = rhs.value;
        v28 = HIBYTE(v72);
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v72)))
        {
          v29 = value;
        }

        else
        {
          v29 = value & 0xFFFFFFFE;
        }

        if (v29)
        {
          LODWORD(lhs.value) = v66;
          *(&lhs.value + 4) = "fpic_GetProjectedDuration";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v6;
          HIWORD(lhs.epoch) = 2112;
          v74 = v70;
          LOWORD(v75) = 2048;
          *(&v75 + 2) = v17;
          OUTLINED_FUNCTION_95_1();
          p_lhs = &lhs;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v35, v36, v37, v38, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v28, "<<<< FigPlayerInterstitial >>>> %s: %p: encountered dummy item for event %@, itemIndex %ld; skipping this for projected duration");
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a4 = v25;
        v18 = v24;
        v7 = v23;
        DerivedStorage = v22;
        v16 = v67;
        v19 = &dword_1EAF17000;
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    else
    {
      v30 = OUTLINED_FUNCTION_577();
      fpic_UnwrapPlaybackItem(v30, v31, a4);
      OUTLINED_FUNCTION_228_1();
      if (v32)
      {
        fpic_GetItemEndTime();
      }

      else
      {
        OUTLINED_FUNCTION_221_1(MEMORY[0x1E6960C70]);
      }

      OUTLINED_FUNCTION_29();
      if (v33)
      {
        OUTLINED_FUNCTION_150_3(v69);
        lhs.epoch = v34->epoch;
        rhs = time1;
        CMTimeAdd(v34, &lhs, &rhs);
      }

      else
      {
        HIDWORD(v68) = 0;
      }
    }

    ++v17;
  }

  while (v16 != v17);
  v12 = v65;
  if (HIDWORD(v68))
  {
    if (!v7)
    {
      lhs = *v69;
      rhs = DerivedStorage[18];
      v42 = CMTimeAdd(&time1, &lhs, &rhs);
      OUTLINED_FUNCTION_225_2(v42, v43, v44, v45, v46, v47, v48, v49, v50, p_lhs, v63, v64, v65, v66, *(&v66 + 1), v67, v68, v69, v70, rhs.value, *&rhs.timescale, rhs.epoch, v72, lhs.value, *&lhs.timescale, lhs.epoch, v74, v75, *(&v75 + 1), v51, time1.value);
    }

    if (!fpic_hasFirstItemPlayedOutForEvent())
    {
      FigPlayerInterstitialEventGetFirstItemStartOffset(v12, &lhs);
      rhs = *v69;
      v52 = CMTimeSubtract(&time1, &rhs, &lhs);
      OUTLINED_FUNCTION_225_2(v52, v53, v54, v55, v56, v57, v58, v59, v60, p_lhs, v63, v64, v65, v66, *(&v66 + 1), v67, v68, v69, v70, rhs.value, *&rhs.timescale, rhs.epoch, v72, lhs.value, *&lhs.timescale, lhs.epoch, v74, v75, *(&v75 + 1), v61, time1.value);
    }
  }

  else
  {
LABEL_22:
    fpic_GetEventDuration(&time1);
    *v69 = time1;
  }

  FigPlayerInterstitialEventGetEffectivePlayoutLimit(v12, &time1);
  v77 = time1.value;
  flags = time1.flags;
  timescale = time1.timescale;
  if ((time1.flags & 0x1D) == 1)
  {
    epoch = time1.epoch;
    time1.value = v77;
    time1.timescale = timescale;
    OUTLINED_FUNCTION_150_3(v69);
    lhs.epoch = *(v41 + 16);
    if (CMTimeCompare(&time1, &lhs) < 0)
    {
      v69->value = v77;
      v69->timescale = timescale;
      v69->flags = flags;
      v69->epoch = epoch;
    }
  }
}

BOOL fpic_isEventInSameGroupAsAnotherEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = 0;
  v12 = 0;
  cf = 0;
  if (!a2 || !a3)
  {
    return v5;
  }

  OUTLINED_FUNCTION_108_3();
  v7 = fpic_UnwrapEvent();
  fpic_copyEventsScheduledAtSameMomentAsEvent(v4, v7, &cf);
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  v5 = FirstIndexOfValue != -1;
  v9 = cf;
  if (!a4 || FirstIndexOfValue != -1)
  {
    if (!cf)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  LastValue = FigCFArrayGetLastValue();
  fpic_copyAbuttingEventsForEvent(v4, LastValue, &v12);
  v5 = FigCFArrayGetFirstIndexOfValue() != -1;
  v9 = cf;
  if (cf)
  {
LABEL_6:
    CFRelease(v9);
  }

LABEL_7:
  if (v12)
  {
    CFRelease(v12);
  }

  return v5;
}

void fpic_ForgetPastEvent()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    v4 = DerivedStorage;
    if (CFSetContainsValue(*(DerivedStorage + 688), v0))
    {
      v5 = fpic_UnwrapEvent();
      v6 = FigPlayerInterstitialEventCopyIdentifier(v5);
      v14 = v6;
      if (dword_1EAF178D0)
      {
        v15 = OUTLINED_FUNCTION_19_42(v6, v7, v8, v9, v10, v11, v12, v13, v39, v41, v43, v45, SBYTE2(v45), SBYTE3(v45), SHIDWORD(v45));
        OUTLINED_FUNCTION_34_5(v15, v16, v17, v18, v19, v20, v21, v22, v40, v42, v44, v46, v47, v48, v49);
        OUTLINED_FUNCTION_134();
        if (v24)
        {
          v25 = v23;
        }

        else
        {
          v25 = v2;
        }

        if (v25)
        {
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v31, v1, v32);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v33, v34, v35, v36, v37);
      }

      CFSetRemoveValue(*(v4 + 688), v0);
      v38 = CMBaseObjectGetDerivedStorage();
      CFDictionaryRemoveValue(*(v38 + 672), v0);
      if (v14)
      {
        CFRelease(v14);
      }
    }
  }
}

double fpic_copyAbuttingEventsForEvent(uint64_t a1, const void *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpic_UnwrapEvent();
  OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960C70]);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  fpic_GetEventStartMoment(v7, &v61);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  v9 = *(DerivedStorage + 208);
  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    Count = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v11)
  {
    v12 = v11;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v14 = Mutable;
      fpic_PredictEventGroupDurationOnPrimary(a1, a2, v12, 0, 0, &v64);
      v55 = v61;
      v56 = v62;
      v57 = v63;
      OUTLINED_FUNCTION_209_2();
      fpic_AddTimeToMoment(&v55, &v50, &v58);
      v15 = FirstIndexOfValue + 1;
      if (FirstIndexOfValue + 1 < Count)
      {
        do
        {
          CFArrayGetValueAtIndex(*(DerivedStorage + 208), v15);
          OUTLINED_FUNCTION_620();
          fpic_UnwrapEvent();
          v53 = 0uLL;
          v54 = 0;
          v16 = OUTLINED_FUNCTION_620();
          fpic_PredictEventDurationOnPrimary(v16, v17, v12, v18);
          v57 = 0;
          v55 = 0u;
          v56 = 0u;
          OUTLINED_FUNCTION_249_2();
          fpic_GetEventStartMoment(v19, v20);
          OUTLINED_FUNCTION_125_4();
          OUTLINED_FUNCTION_207_1(v21, v22, v23, v24, v25, v26, v27, v28, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, *(&v53 + 1), v54, v55);
          v40 = v53;
          *&v41 = v54;
          fpic_AddTimeToMoment(&v44, &v40, &v50);
          OUTLINED_FUNCTION_207_1(v29, v30, v31, v32, v33, v34, v35, v36, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, *(&v53 + 1), v54, v55);
          v40 = v58;
          v41 = v59;
          v42 = v60;
          if (!fpic_MomentsAreCloseWithTolerance(&v44, &v40, &kAbuttingEventThreshold))
          {
            break;
          }

          v37 = OUTLINED_FUNCTION_183_2();
          CFArrayAppendValue(v37, v38);
          v58 = v50;
          v59 = v51;
          v60 = v52;
          ++v15;
        }

        while (Count != v15);
      }

      *a3 = v14;
    }

    else
    {
      OUTLINED_FUNCTION_374();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, DWORD2(v40), v41);
    }

    CFRelease(v12);
    return result;
  }

LABEL_11:
  OUTLINED_FUNCTION_374();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t fpic_isEventResolvableOnPrimaryTimeline()
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_171();
  fpic_UnwrapEvent();
  OUTLINED_FUNCTION_124_4();
  fpic_GetEventStartMoment(v1, &v15);
  if (v17)
  {
    OUTLINED_FUNCTION_123_3(v2, v3, v4, v5, v6, v7, v8, v9, v13.value, *&v13.timescale, v13.epoch, v14, v15);
  }

  else
  {
    if (v18)
    {
      v11 = *(DerivedStorage + 320);
      v19[0] = *(DerivedStorage + 304);
      v19[1] = v11;
      v20 = *(DerivedStorage + 336);
      FigCreateTimeWithDateAndMoment(v19, &v13, v16);
      return v13.flags & 1;
    }

    *&v13.value = *MEMORY[0x1E6960C70];
    v10 = *(MEMORY[0x1E6960C70] + 16);
  }

  v13.epoch = v10;
  return v13.flags & 1;
}

void fpic_validateInterstitialPlayQueueForCurrentEvents(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_78_8();
  v5 = OUTLINED_FUNCTION_266();
  v7 = v6(v5);
  cf = 0;
  v8 = *(DerivedStorage + 656);
  if (v8)
  {
    if (CFArrayGetCount(v8) >= 1)
    {
      fpic_CopyNextItem(v7, &cf);
      if (cf)
      {
        v10 = 0;
        *&v9 = 136315906;
        v67 = v9;
        v62 = DerivedStorage;
        while (1)
        {
          Count = *(DerivedStorage + 656);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v10 >= Count)
          {
            break;
          }

          v63 = v10;
          CFArrayGetValueAtIndex(*(DerivedStorage + 656), v10);
          OUTLINED_FUNCTION_251();
          v12 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_78_8();
          v13 = OUTLINED_FUNCTION_266();
          v15 = v14(v13);
          CMBaseObjectGetDerivedStorage();
          FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
          PerEventTrackingCount = fpic_GetPerEventTrackingCount(v12, FirstIndexOfValue);
          if (cf && PerEventTrackingCount >= 1)
          {
            v17 = 0;
            v61 = a2;
            do
            {
              v65 = PerEventTrackingCount;
              fpic_GetPerAssetPerEventTrackedObject(v12, FirstIndexOfValue, v17, @"PlaybackItem");
              v18 = OUTLINED_FUNCTION_251();
              v19 = fpic_UnwrapPlaybackItem(v18, v10, a2);
              if (v10 != @"DummyItem")
              {
                v27 = v19;
                while (1)
                {
                  v28 = cf;
                  v29 = v27 == cf || cf == 0;
                  if (v29)
                  {
                    break;
                  }

                  v30 = CMBaseObjectGetDerivedStorage();
                  if (*(v30 + 1032) != v28)
                  {
                    v10 = OUTLINED_FUNCTION_133_0(v30, v31, v32, v33, v34, v35, v36, v37, v58, v59, v60, v61, v62, v63, FirstIndexOfValue, v65, v67, *(&v67 + 1), cf, v69, v70, type, v72);
                    v38 = v72;
                    v39 = type;
                    os_log_type_enabled(v10, type);
                    OUTLINED_FUNCTION_134();
                    if (v29)
                    {
                      v41 = v40;
                    }

                    else
                    {
                      v41 = v38;
                    }

                    if (v41)
                    {
                      v73[0] = v67;
                      OUTLINED_FUNCTION_120_2();
                      v74 = a1;
                      v75 = 2112;
                      *v76 = v27;
                      *&v76[8] = 2112;
                      *&v76[10] = v28;
                      OUTLINED_FUNCTION_95_1();
                      v58 = v73;
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl(v42, v43, v44, v45, &dword_1962D5000, v10, v39, "<<<< FigPlayerInterstitial >>>> %s: %p: eventItem %@ does not match interstitialPlayer item %@!");
                    }

                    OUTLINED_FUNCTION_109();
                    OUTLINED_FUNCTION_238_0(v46, 0, 1, v47, v48);
                  }

                  fpic_CopyNextItem(v15, &cf);
                }

                a2 = v61;
                if (v27 == cf)
                {
                  fpic_CopyNextItem(v15, &cf);
                }

                else if (cf)
                {
                  v49 = OUTLINED_FUNCTION_133_0(v19, v20, v21, v22, v23, v24, v25, v26, v58, v59, v60, v61, v62, v63, FirstIndexOfValue, v65, v67, *(&v67 + 1), cf, v69, v70, type, v72);
                  v10 = type;
                  v50 = os_log_type_enabled(v49, type);
                  if (OUTLINED_FUNCTION_109_0(v50))
                  {
                    v73[0] = v67;
                    OUTLINED_FUNCTION_120_2();
                    v74 = a1;
                    v75 = 1024;
                    *v76 = v17;
                    *&v76[4] = 2112;
                    *&v76[6] = v27;
                    LODWORD(v59) = 38;
                    v58 = v73;
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl(v51, v52, v53, v54, &dword_1962D5000, v49, v10, "<<<< FigPlayerInterstitial >>>> %s: %p: eventItem %d %@ not on interstitialPlayer queue! Playback lost?");
                  }

                  OUTLINED_FUNCTION_109();
                  OUTLINED_FUNCTION_524(v55, 0, 1, v56, v57);
                  fpic_RemovePerAssetPerEventTrackedObjects(v12, FirstIndexOfValue, v17--);
                  PerEventTrackingCount = v66 - 1;
                  goto LABEL_29;
                }
              }

              PerEventTrackingCount = v65;
LABEL_29:
              ++v17;
            }

            while (v17 < PerEventTrackingCount);
          }

          DerivedStorage = v62;
          v10 = v63 + 1;
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

void fpic_SetPerAssetPerEventTrackedObject()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Count = CFArrayGetCount(*(v6 + 664));
  v9 = MEMORY[0x1E695E480];
  if (Count <= v5)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = v5 - Count + 1;
    v12 = MEMORY[0x1E695E9C0];
    do
    {
      Mutable = CFArrayCreateMutable(v10, 0, v12);
      if (!Mutable)
      {
        goto LABEL_16;
      }

      v14 = Mutable;
      CFArrayAppendValue(*(v7 + 664), Mutable);
      CFRelease(v14);
    }

    while (--v11);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 664), v5);
  v16 = CFArrayGetCount(ValueAtIndex);
  if (v16 <= v3)
  {
    v17 = *v9;
    v18 = v3 - v16 + 1;
    v19 = MEMORY[0x1E695E9D8];
    v20 = MEMORY[0x1E695E9E8];
    while (1)
    {
      v21 = CFDictionaryCreateMutable(v17, 0, v19, v20);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = OUTLINED_FUNCTION_16_13();
      CFArrayAppendValue(v23, v24);
      CFRelease(v22);
      if (!--v18)
      {
        goto LABEL_9;
      }
    }

LABEL_16:
    OUTLINED_FUNCTION_651();
    return;
  }

LABEL_9:
  v25 = OUTLINED_FUNCTION_184();
  CFArrayGetValueAtIndex(v25, v26);
  if (v1)
  {
    OUTLINED_FUNCTION_651();

    CFDictionarySetValue(v27, v28, v29);
  }

  else
  {
    OUTLINED_FUNCTION_651();

    CFDictionaryRemoveValue(v31, v32);
  }
}

void fpic_ClearAssetListResponseAfterAssetListReadFailure(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    v9 = (*(DerivedStorage + 88))(DerivedStorage, v7, a2);
    v10 = fpic_clearEventAssetListState(v9);
    if (!(*(DerivedStorage + 112))(a1, v8, v9, 0, &cf, v10))
    {
      fpic_UpdateEventInAddOrder(a1, a2, cf);
    }

    v11 = fpic_CreateAssetListResponseStatusDidChangeNotificationPayload(cf, 2, v3);
    fpic_PostNotification(a1, @"fpiAssetListResponseStatusDidChange", v11);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    CFRelease(v8);
  }
}

uint64_t fpic_IssueTopLevelInterstitialRequest(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  cf = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178C8, 4294951626, "<<<< FigPlayerInterstitial >>>>", 6148, v8);
    goto LABEL_67;
  }

  v16 = DerivedStorage;
  v53 = a7;
  v17 = *(DerivedStorage + 160);
  if (!v17)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178C8, 4294951623, "<<<< FigPlayerInterstitial >>>>", 6149, v8);
    goto LABEL_67;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v18)
  {
    goto LABEL_39;
  }

  v52 = a8;
  Param = v18(v17, &v64);
  if (Param)
  {
    goto LABEL_67;
  }

  v20 = *MEMORY[0x1E695E480];
  if (!v16[156])
  {
    FigAssetGetCMBaseObject();
    v32 = v31;
    VTable = CMBaseObjectGetVTable();
    v36 = *(VTable + 8);
    v35 = VTable + 8;
    v37 = *(v36 + 48);
    if (v37)
    {
      v35 = v37(v32, @"assetProperty_StorageSession", v20, &v63);
    }

    v38 = v63;
    if (!v63)
    {
      v38 = FigURLStorageSessionCopyGlobalSession(v35, v34);
      v63 = v38;
      if (!v38)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF178C8, 4294951618, "<<<< FigPlayerInterstitial >>>>", 6160, v8);
        goto LABEL_67;
      }
    }

    v39 = v16[1];
    v40 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v40)
    {
      goto LABEL_39;
    }

    Param = v40(v38, v39, 0, v16 + 156);
    if (Param)
    {
      goto LABEL_67;
    }
  }

  FigAssetGetCMBaseObject();
  v22 = v21;
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    goto LABEL_39;
  }

  Param = v23(v22, @"assetProperty_InstanceUUID", v20, &v57);
  if (Param)
  {
    goto LABEL_67;
  }

  FigAssetGetCMBaseObject();
  v25 = v24;
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v26)
  {
LABEL_39:
    v44 = 0;
    goto LABEL_40;
  }

  Param = v26(v25, @"assetProperty_CreationOptionsDictionary", v20, &v56);
  if (Param)
  {
    goto LABEL_67;
  }

  Param = FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions(v20, v56, &v55);
  if (Param)
  {
    goto LABEL_67;
  }

  Param = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(v20, v56, v57, &v54);
  if (Param)
  {
    goto LABEL_67;
  }

  Param = FigCFHTTPCreateURLWithQueryParam(a2, @"_HLS_primary_id=", v16[21], &v59);
  if (Param)
  {
    goto LABEL_67;
  }

  if (a3 && !FigCFHTTPCreateURLWithQueryParam(v59, @"_HLS_start_offset=", a3, &cf))
  {
    v27 = v59;
    v59 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (!FigCFHTTPIsHTTPBasedURL(a2))
  {
    FigAssetGetCMBaseObject();
    v42 = v41;
    v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v43)
    {
      Param = v43(v42, @"assetProperty_CustomURLLoader", v20, &v61);
      if (!Param)
      {
        Param = FigCustomURLRequestInfoCreateMutable();
        if (!Param)
        {
          Param = FigCustomURLRequestInfoSetHTTPHeaders();
          if (!Param)
          {
            v44 = FigCFHTTPCreateUserAgent();
            v45 = FigCustomURLRequestInfoSetUserAgent();
            if (v45)
            {
LABEL_69:
              v30 = v45;
              goto LABEL_41;
            }

            v47 = v60;
            v46 = v61;
            v48 = v16[2];
            v49 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v49)
            {
              v45 = v49(v46, v47, a1, v48, a5, v52);
              if (!v45)
              {
                v50 = v61;
LABEL_64:
                v30 = 0;
                *v53 = v50;
                v61 = 0;
                goto LABEL_41;
              }

              goto LABEL_69;
            }

LABEL_40:
            v30 = 4294954514;
            goto LABEL_41;
          }
        }
      }

LABEL_67:
      v30 = Param;
      v44 = 0;
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  FigRetainProxyCreate();
  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v69 = 0x900000000;
    v70 = 0u;
    v71 = 0u;
    v72 = 0;
    v28 = OUTLINED_FUNCTION_16_13();
    v30 = v29(v28);
  }

  else
  {
    v30 = 4294954514;
  }

  v50 = 0;
  v44 = 0;
  if (!v30)
  {
    goto LABEL_64;
  }

LABEL_41:
  if (v64)
  {
    CFRelease(v64);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  return v30;
}

void fpic_handleAssetListResponseDataOnQueue()
{
  OUTLINED_FUNCTION_172_2();
  v113 = v0;
  v114 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v112 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v99 = fpic_UnwrapEvent();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = OUTLINED_FUNCTION_164_2(DerivedStorage);
  v23 = Count;
  if (v11)
  {
    v96 = v13;
    Count = CFArrayGetCount(v11);
    if (v23 != -1)
    {
      v13 = Count;
      if (Count >= 1)
      {
        v85 = v7;
        v89 = v5;
        v93 = v3;
        v24 = 0;
        do
        {
          CFArrayGetValueAtIndex(v11, v24);
          OUTLINED_FUNCTION_244_1();
          fpic_SetPerAssetPerEventTrackedObject();
          v25 = OUTLINED_FUNCTION_415_0();
          CFArrayGetValueAtIndex(v25, v26);
          OUTLINED_FUNCTION_244_1();
          fpic_SetPerAssetPerEventTrackedObject();
          ++v24;
        }

        while (v13 != v24);
        if (dword_1EAF178D0)
        {
          v35 = OUTLINED_FUNCTION_115_3(v27, v28, v29, v30, v31, v32, v33, v34, v78, v81, v7, v5, v93, v96, v99, v102, SBYTE2(v102), SBYTE3(v102), SHIDWORD(v102));
          v43 = OUTLINED_FUNCTION_254_1(v35, v36, v37, v38, v39, v40, v41, v42, v79, v82, v86, v90, v94, v97, v100, v103, v105, v107, v109);
          if (OUTLINED_FUNCTION_15_52(v43))
          {
            OUTLINED_FUNCTION_100();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v64, v65, v66, v67, v68, v9, v13, v69);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_467(v70, v71, v72, v73, v74);
        }

        fpic_EnsureEventHasResolvedProperties();
        v7 = v85;
        v5 = v89;
LABEL_18:
        FigPlayerInterstitialEventSetAssetListResponse(v99, v7);
        v75 = v5[1];
        v111[0] = *v5;
        v111[1] = v75;
        v111[2] = v5[2];
        FigPlayerInterstitialEventSetOverrideSkipControlTimeRange(v99, v111);
        v76 = OUTLINED_FUNCTION_415_0();
        FigPlayerInterstitialEventSetOverrideSkipControlLocalizedLabelBundleKey(v76, v77);
        goto LABEL_19;
      }

LABEL_10:
      if (dword_1EAF178D0)
      {
        v44 = OUTLINED_FUNCTION_115_3(Count, v16, v17, v18, v19, v20, v21, v22, v78, v81, v84, v88, v92, v96, v99, v102, SBYTE2(v102), SBYTE3(v102), SHIDWORD(v102));
        v52 = OUTLINED_FUNCTION_254_1(v44, v45, v46, v47, v48, v49, v50, v51, v80, v83, v87, v91, v95, v98, v101, v104, v106, v108, v110);
        if (OUTLINED_FUNCTION_15_52(v52))
        {
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v53, v54, v55, v56, v57, v9, v13, v58);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467(v59, v60, v61, v62, v63);
      }

      fpic_SetPerAssetPerEventTrackedObject();
      goto LABEL_18;
    }
  }

  else if (Count != -1)
  {
    goto LABEL_10;
  }

LABEL_19:
  OUTLINED_FUNCTION_171_2();
}

void fpic_HandleResponseData(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, __int128 a22, CFTypeRef cf, __int128 a24, __int128 a25, __int128 a26, uint64_t a27, const void *a28, const void *a29, const void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_458();
  a41 = v44;
  a42 = v45;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  OUTLINED_FUNCTION_433();
  CMBaseObjectGetDerivedStorage();
  a29 = 0;
  a30 = 0;
  a28 = 0;
  v56 = *(MEMORY[0x1E6960C98] + 16);
  a24 = *MEMORY[0x1E6960C98];
  a25 = v56;
  a26 = *(MEMORY[0x1E6960C98] + 32);
  cf = 0;
  if (v55)
  {
    appended = CMBlockBufferAppendBufferReference(v49, v55, v53, v51, 0);
    v58 = appended;
    v59 = 0;
    if (!v47 || appended)
    {
      goto LABEL_13;
    }
  }

  else if (!v47)
  {
    v59 = 0;
    goto LABEL_12;
  }

  v59 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v59)
  {
LABEL_12:
    v58 = 0;
    goto LABEL_13;
  }

  v58 = FigInterstitialCreatePropertyListsFromJSONBlockBuffer(v49, &a29, &a30, &a28, &a24, &cf);
  v60 = a29;
  if (!v58)
  {
    OUTLINED_FUNCTION_57_13();
    a10 = 3221225472;
    a20 = a24;
    a11 = __fpic_HandleResponseData_block_invoke;
    a12 = &__block_descriptor_136_e5_v8__0l;
    a13 = v43;
    a14 = v59;
    a15 = v42;
    a16 = v61;
    a17 = a30;
    a18 = a28;
    a21 = a25;
    a22 = a26;
    a19 = cf;
    dispatch_sync(v62, &a9);
    v60 = a29;
  }

  if (v60)
  {
    CFRelease(v60);
  }

LABEL_13:
  if (a30)
  {
    CFRelease(a30);
  }

  if (a28)
  {
    CFRelease(a28);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_457(v58);
}

void fpic_UpdateEventLastPlaybackFailed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v6)
  {
    v7 = v6;
    v8 = OUTLINED_FUNCTION_184();
    v10 = v9(v8);
    if (FigPlayerInterstitialEventDidLastPlaybackFail(v10) != v3)
    {
      v11 = CMBaseObjectGetDerivedStorage();
      v12 = OUTLINED_FUNCTION_164_2(v11);
      if (v12 != -1)
      {
        v13 = v12;
        FigPlayerInterstitialEventSetLastPlaybackFail(v10, v3);
        FigPlayerInterstitialEventGetResumptionOffset(v10, &time1);
        v19 = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&time1, &v19))
        {
          v14 = v3 ? 1 : -1;
          if ((v13 & 0x8000000000000000) == 0)
          {
            do
            {
              Count = *(DerivedStorage + 656);
              if (Count)
              {
                Count = CFArrayGetCount(Count);
              }

              if (v13 >= Count)
              {
                break;
              }

              CFArrayGetValueAtIndex(*(DerivedStorage + 656), v13);
              v16 = OUTLINED_FUNCTION_184();
              v18 = v17(v16);
              FigPlayerInterstitialEventSetLastPlaybackFail(v18, v3);
              v13 += v14;
            }

            while (v13 >= 0);
          }
        }

        fpic_PostNotification(a1, @"fpiResolvePropertiesChange", 0);
      }
    }

    CFRelease(v7);
  }
}

BOOL fpic_copyRedirectURLFromCustomURLResponse(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  FigCustomURLResponseInfoGetHTTPStatusCode();
  if (FigCFHTTPIsStatusCodeRedirect(0))
  {
    v3 = 0;
    if (!FigCustomURLResponseInfoCopyHTTPHeaders())
    {
      v3 = FigCFHTTPCopyRedirectLocationFromHTTPHeaders(0);
    }
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return v3 != 0;
}

void __fpic_customURLReadCallback_block_invoke_2(uint64_t a1)
{
  v7 = 0;
  cf = 0;
  v5 = 0;
  v6 = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    AssetListForEvent = fpic_ReadAssetListForEvent(*(a1 + 48), v1, *(a1 + 56), *(a1 + 64), &cf, &v7, &v6, &v5);
    OUTLINED_FUNCTION_30_8(AssetListForEvent, *(a1 + 32));
    OUTLINED_FUNCTION_81_5();
    if (*(v4 + 24))
    {
      goto LABEL_7;
    }

    if (cf)
    {
      fpic_AddNewHttpReq(*(a1 + 48), *(a1 + 56), cf, v5);
      goto LABEL_8;
    }

    if (!v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_376();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      fpic_AddNewCustomURLReq(*(a1 + 48), *(a1 + 56), v7, v6, v5);
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void __fpic_customURLReadCallback_block_invoke_172(uint64_t a1)
{
  OUTLINED_FUNCTION_158_3(a1);
  fpic_UnwrapEvent();
  OUTLINED_FUNCTION_2_4();
  FigPlayerInterstitialEventSetLastPlaybackError(v2);
  OUTLINED_FUNCTION_2_4();
  if (!*(v3 + 24))
  {
    CFErrorGetCode(*(v1 + 56));
  }

  v4 = OUTLINED_FUNCTION_171();
  fpic_ClearAssetListResponseAfterAssetListReadFailure(v4, v5, v6);
  fpic_UpdateEventLastPlaybackFailed(*(v1 + 40), *(v1 + 48), 1);
  OUTLINED_FUNCTION_126_3();

  fpic_RemoveEvent(v7, v8, v9, v10, v11, v12);
}

CFMutableDictionaryRef fpic_CreateAssetListResponseStatusDidChangeNotificationPayload(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = *MEMORY[0x1E695E480];
  v6 = OUTLINED_FUNCTION_265();
  Mutable = CFDictionaryCreateMutable(v6, v7, v8, v9);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetInt();
    if (v4 == 2)
    {
      if (a3)
      {
        v11 = CFErrorCreate(v5, @"CoreMediaErrorDomain", a3, 0);
        OUTLINED_FUNCTION_236();
        FigCFDictionarySetValue();
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  return Mutable;
}

uint64_t fpic_GetFirstCurrentItem()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, 0);
  if (PerEventTrackingCount >= 1)
  {
    v2 = PerEventTrackingCount;
    v3 = 1;
    do
    {
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, 0, v3 - 1, @"PlaybackItem");
    }

    while (v3++ < v2 && PerAssetPerEventTrackedObject == @"DummyItem");
  }

  v7 = OUTLINED_FUNCTION_36_25();

  return fpic_UnwrapPlaybackItem(v7, v8, v9);
}

void fpic_RemovePerEventTrackedObjects()
{
  OUTLINED_FUNCTION_187();
  Count = *(v2 + 664);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > v0)
  {
    v4 = *(v1 + 664);

    CFArrayRemoveValueAtIndex(v4, v0);
  }
}

void fpic_HopNextMomentIfNecessary()
{
  OUTLINED_FUNCTION_649();
  v239 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v224 = 0;
  v222 = 0u;
  v223 = 0u;
  if (*(DerivedStorage + 256) || *(DerivedStorage + 257))
  {
    v4 = *(DerivedStorage + 656);
    if (v4)
    {
      if (CFArrayGetCount(v4) >= 1)
      {
        CFArrayGetValueAtIndex(*(v3 + 656), 0);
        v5 = fpic_UnwrapEvent();
        fpic_GetEventStartMoment(v5, &v222);
        OUTLINED_FUNCTION_236_1();
        v232 = v222;
        v233 = v223;
        *&v234 = v224;
        v13 = OUTLINED_FUNCTION_215_2(v6, v7, &kMomentsAreCloseThreshold, v8, v9, v10, v11, v12, v179, v187, v195, v203, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v218, v219, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v227, *(&v227 + 1), v228[0]);
        if (!fpic_MomentsAreCloseWithTolerance(v13, v14, v15))
        {
          v238 = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v232 = 0u;
          v233 = 0u;
          v231 = 0;
          memset(v230, 0, sizeof(v230));
          memset(&v221, 0, sizeof(v221));
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_75_9();
          if (!v17)
          {
            OUTLINED_FUNCTION_14_59();
            if (v19)
            {
              v16 = v18;
            }
          }

          v20 = *(v16 + 16);
          *v228 = *v16;
          *&v228[16] = v20;
          v229 = *(v16 + 32);
          *lhs = v222;
          *&lhs[16] = v223;
          *&v227 = v224;
          fpic_SubtractMomentFromMoment(lhs, v228, &v221);
          if (dword_1EAF178D0)
          {
            *rhs = 0;
            BYTE4(v204) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v0 = 0;
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_40();
            if (v1)
            {
              OUTLINED_FUNCTION_236_1();
              v30 = OUTLINED_FUNCTION_215_2(v22, v23, v24, v25, v26, v27, v28, v29, v180, v188, v196, v204, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v218, v219, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v227, *(&v227 + 1), v228[0]);
              MomentDesc = fpic_getMomentDesc(v30, v31);
              OUTLINED_FUNCTION_173_3(MomentDesc, v33, v34, v35, v36, v37, v38, v39, v40, v181, v189, v197, v205, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v218, v219, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v41, v222);
              fpic_getMomentDesc(v228, v230);
              *lhs = 136315906;
              OUTLINED_FUNCTION_33_28("fpic_HopNextMomentIfNecessary");
              *&lhs[24] = &v232;
              LOWORD(v227) = v42;
              *(&v227 + 2) = v230;
              OUTLINED_FUNCTION_95_1();
              v180 = lhs;
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl(v43, v44, v45, v46, v47, v48, 0, v49);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414(v50, v51, v52, v53, v54);
          }

          v55 = v223;
          *(v3 + 224) = v222;
          *(v3 + 240) = v55;
          *(v3 + 256) = v224;
          if (*(v3 + 296) || *(v3 + 297))
          {
            v118 = (v3 + 264);
            memset(&v220, 0, sizeof(v220));
            fpic_getSnapOutDelta(&v220);
            v119.n128_f64[0] = OUTLINED_FUNCTION_124_4();
            OUTLINED_FUNCTION_173_3(v120, v121, v122, v123, v124, v125, v126, v127, v119, v180, v188, v196, v204, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v218, v219, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v128, v222);
            fpic_SubtractTimeFromMoment(v228, &v220, rhs);
            if (dword_1EAF178D0)
            {
              OUTLINED_FUNCTION_147();
              v136 = OUTLINED_FUNCTION_126(qword_1EAF178C8, v129, v130, v131, v132, v133, v134, v135, v180, v188, v196, v204, SBYTE2(v204), SBYTE3(v204), SBYTE4(v204));
              OUTLINED_FUNCTION_167_3(v136, v137, v138, v139, v140, v141, v142, v143, v185, v193, v201, v209, v212, v214, typea);
              OUTLINED_FUNCTION_40();
              if (v1)
              {
                v152 = *(v3 + 280);
                *v228 = *v118;
                *&v228[16] = v152;
                v229 = *(v3 + 296);
                v153 = OUTLINED_FUNCTION_215_2(v144, v145, v146, v147, v148, v149, v150, v151, v180, v188, v196, v204, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v218, v219, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v227, *(&v227 + 1), v228[0]);
                v155 = fpic_getMomentDesc(v153, v154);
                OUTLINED_FUNCTION_206_2(v155, v156, v157, v158, v159, v160, v161, v162, v163, v186, v194, v202, v210, v164, *rhs, *&rhs[16]);
                fpic_getMomentDesc(v228, v230);
                *lhs = 136315906;
                OUTLINED_FUNCTION_33_28("fpic_HopNextMomentIfNecessary");
                *&lhs[24] = &v232;
                LOWORD(v227) = v165;
                *(&v227 + 2) = v230;
                OUTLINED_FUNCTION_95_1();
                v180 = lhs;
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl(v166, v167, v168, v169, v170, v171, v0, v172);
                OUTLINED_FUNCTION_612();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414(v173, v174, v175, v176, v177);
            }

            v178 = *&rhs[16];
            *v118 = *rhs;
            *(v3 + 280) = v178;
            *(v3 + 296) = v218;
          }

          *lhs = *(v3 + 504);
          *&lhs[16] = *(v3 + 520);
          *rhs = v221;
          CMTimeAdd(v228, lhs, rhs);
          *(v3 + 504) = *v228;
          *(v3 + 520) = *&v228[16];
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_2_166();
          if (v56)
          {
            v57 = (v3 + 344);
            v218 = *(v3 + 376);
            v58 = *(v3 + 360);
            *rhs = *(v3 + 344);
            *&rhs[16] = v58;
            CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_75_9();
            if (!v60)
            {
              OUTLINED_FUNCTION_14_59();
              if (v19)
              {
                v59 = v61;
              }
            }

            v62 = *v59;
            v63 = v59[1];
            *(v3 + 376) = *(v59 + 4);
            *v57 = v62;
            *(v3 + 360) = v63;
            if (!*(v3 + 376) && *(v3 + 377))
            {
              v64 = *(v3 + 368);
              v65 = *(v3 + 320);
              *v228 = *(v3 + 304);
              *&v228[16] = v65;
              v229 = *(v3 + 336);
              FigCreateTimeWithDateAndMoment(v228, lhs, v64);
            }

            v66 = MEMORY[0x1E6960CC0];
            v67 = *MEMORY[0x1E6960CC0];
            *(v3 + 456) = *MEMORY[0x1E6960CC0];
            v68 = *(v66 + 16);
            *(v3 + 472) = v68;
            *(v3 + 408) = v67;
            *(v3 + 424) = v68;
            if (dword_1EAF178D0)
            {
              OUTLINED_FUNCTION_147();
              v76 = OUTLINED_FUNCTION_126(qword_1EAF178C8, v69, v70, v71, v72, v73, v74, v75, v180, v188, v196, v204, SBYTE2(v204), SBYTE3(v204), SBYTE4(v204));
              OUTLINED_FUNCTION_86_2(v76, v77, v78, v79, v80, v81, v82, v83, v182, v190, v198, v206, v211, v213, type);
              OUTLINED_FUNCTION_7_22();
              if (v0)
              {
                OUTLINED_FUNCTION_206_2(v84, v85, v86, v87, v88, v89, v90, v91, v92, v183, v191, v199, v207, v93, *rhs, *&rhs[16]);
                v102 = OUTLINED_FUNCTION_215_2(v94, v95, v96, v97, v98, v99, v100, v101, v184, v192, v200, v208, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v218, v219, v220.value, *&v220.timescale, v220.epoch, v221.value, *&v221.timescale, v221.epoch, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v227, *(&v227 + 1), v228[0]);
                fpic_getMomentDesc(v102, v103);
                v104 = *(v3 + 360);
                *v228 = *v57;
                *&v228[16] = v104;
                v229 = *(v3 + 376);
                fpic_getMomentDesc(v228, v230);
                *lhs = 136315906;
                OUTLINED_FUNCTION_33_28("fpic_HopNextMomentIfNecessary");
                *&lhs[24] = &v232;
                LOWORD(v227) = v105;
                *(&v227 + 2) = v230;
                OUTLINED_FUNCTION_95_1();
                OUTLINED_FUNCTION_65();
                _os_log_send_and_compose_impl(v106, v107, v108, v109, v110, v111, v3 + 504, v112, lhs);
                OUTLINED_FUNCTION_329_0();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_524(v113, v114, v115, v116, v117);
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_651();
}

void fpic_PostInterstitialWasUnscheduledNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v7 = fpic_UnwrapEvent();
  v8 = FigPlayerInterstitialEventCopyIdentifier(v7);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = FigCFDictionarySetValue();
    if (v5)
    {
      v10 = FigCFDictionarySetInt32();
    }

    if (dword_1EAF178D0)
    {
      v18 = OUTLINED_FUNCTION_19_42(v10, v11, v12, v13, v14, v15, v16, v17, v41, v43, v45, v47, SBYTE2(v47), SBYTE3(v47), SHIDWORD(v47));
      OUTLINED_FUNCTION_34_5(v18, v19, v20, v21, v22, v23, v24, v25, v42, v44, v46, v48, v49, v50, v51);
      OUTLINED_FUNCTION_134();
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v28 = v3;
      }

      if (v28)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v29, v30, v31, v32, v33, v34, v4, v35);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v36, v37, v38, v39, v40);
    }

    fpic_PostNotification(a1, @"fpiInterstitialEventWasUnscheduled", Mutable);
    if (v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v43, v45);
    if (v8)
    {
LABEL_12:
      CFRelease(v8);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void fpic_updateSkippableEventStateOnQueue()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v204 = *MEMORY[0x1E69E9840];
  CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent(v2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_624();
  v6 = fpic_UnwrapEvent();
  v7 = *(DerivedStorage + 552);
  OUTLINED_FUNCTION_256_1(v6, v8, v9, v10, v11, v12, v13, v14, v151, v153, v155, allocator, cf, cf_8, v174, v177, v180, v182, v184, v187, values[0], values[1], v191, v192.value, *&v192.timescale, v192.epoch, v193, v194, v195);
  if ((BYTE12(v193) & 1) == 0 || (BYTE4(v195) & 1) == 0 || *(&v195 + 1) || (*(&v194 + 1) & 0x8000000000000000) != 0)
  {
    v15 = 0;
    *(DerivedStorage + 552) = 0;
    if (v1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  *v197 = v193;
  *&v197[16] = v194;
  memset(&v192, 0, sizeof(v192));
  *v203 = v193;
  *&v203[2] = v194;
  *&v203[4] = v195;
  CMTimeRangeGetEnd(&v192, v203);
  *values = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v191 = v16;
  OUTLINED_FUNCTION_29();
  if (!v18)
  {
    if ((BYTE12(v193) & 1) != 0 && (BYTE4(v195) & 1) != 0 && !*(&v195 + 1) && (*(&v194 + 1) & 0x8000000000000000) == 0)
    {
      *(DerivedStorage + 552) = 1;
    }

    goto LABEL_13;
  }

  *cfe = v17;
  v45.n128_f64[0] = fpic_GetCurrentlyPlayingEventPlayoutDuration();
  OUTLINED_FUNCTION_193_1(v46, v47, v48, v49, v50, v51, v52, v53, v45, v152, v154, v156, allocatora, cfe[0], cfe[1], v175, v178, v181, v183, v185, v188, v54, values[0]);
  v55 = OUTLINED_FUNCTION_122_1();
  if (CMTimeCompare(v55, v56) < 0)
  {
    *(DerivedStorage + 552) = 1;
    OUTLINED_FUNCTION_193_0();
  }

  else
  {
    *v203 = v193;
    *&v203[2] = v194;
    *&v203[4] = v195;
    v57 = OUTLINED_FUNCTION_122_1();
    v59 = CMTimeRangeContainsTime(v57, v58);
    if (!v59)
    {
      OUTLINED_FUNCTION_193_1(v59, v60, v61, v62, v63, v64, v65, v66, v67, v152, v154, v156, allocatorc, cfb, cf_8a, v176, v179, values[0], values[1], v186, v189, v68, values[0]);
      v69 = OUTLINED_FUNCTION_122_1();
      if ((CMTimeCompare(v69, v70) & 0x80000000) == 0)
      {
        *(DerivedStorage + 552) = 3;
        StopAndReleaseTimer((DerivedStorage + 800));
        *(DerivedStorage + 792) = 0;
        *(DerivedStorage + 768) = *cfc;
        *(DerivedStorage + 784) = v16;
      }

      goto LABEL_13;
    }

    *(DerivedStorage + 552) = 2;
    OUTLINED_FUNCTION_193_0();
  }

  fpic_ensureSkippableEventEligibilityTimerIsScheduled();
  if (v145)
  {
    goto LABEL_15;
  }

LABEL_13:
  v15 = *(DerivedStorage + 552);
  if (v1)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v15 == v7)
  {
    goto LABEL_15;
  }

LABEL_16:
  v19 = CMBaseObjectGetDerivedStorage();
  v192.value = 0;
  values[0] = 0;
  if (!*(v19 + 1264))
  {
    goto LABEL_72;
  }

  v20 = v19;
  if (!v15)
  {
    v21 = *(v19 + 1288);
    if (v21)
    {
      CFRelease(v21);
      *(v20 + 1288) = 0;
    }

    v22 = *(v20 + 1296);
    if (v22)
    {
      CFRelease(v22);
      *(v20 + 1296) = 0;
    }

    goto LABEL_72;
  }

  OUTLINED_FUNCTION_624();
  v23 = fpic_UnwrapEvent();
  v24 = FigPlayerInterstitialEventCopyEffectiveSkipControlLocalizedLabelBundleKey(v23);
  if (!v24)
  {
    goto LABEL_72;
  }

  v25 = v24;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(v3, &v192);
  cfa = v25;
  if (!PrimaryPlayerAndCopyWrapper)
  {
    OUTLINED_FUNCTION_723();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v152, v154, v156);
    LODWORD(v78) = v148;
    goto LABEL_119;
  }

  v27 = CMBaseObjectGetDerivedStorage();
  v28 = *MEMORY[0x1E695E480];
  if (*(v27 + 1256))
  {
    if (!*(v20 + 1280))
    {
      FigPlayerGetFigBaseObject();
      v30 = v29;
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v31)
      {
        v31(v30, @"ExternalPlaybackSystemLanguageCode", v28, v20 + 1280);
      }

      if (!*(v20 + 1280))
      {
        allocatorf = v28;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v131 = type;
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
        OUTLINED_FUNCTION_101_0();
        if (v18)
        {
          v133 = v132;
        }

        else
        {
          v133 = 0;
        }

        if (v133)
        {
          *v197 = 136315394;
          OUTLINED_FUNCTION_211_0("fpic_ensureCurrentEventSkipControlLabel");
          *&v197[12] = v134;
          *(v135 + 14) = v3;
          LODWORD(v154) = 22;
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl(v136, v137, v138, v139, v140, os_log_and_send_and_compose_flags_and_os_log_type, v131, v141, v197, v154);
        }

        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_449(v142, 0, 1, v143, v144);
        v28 = allocatorf;
        goto LABEL_49;
      }
    }

    v32 = CFArrayCreate(v28, (v20 + 1280), 1, MEMORY[0x1E695E9C0]);
    if (v32)
    {
      v33 = v32;
      v34 = CFBundleCopyLocalizedStringForLocalizations();
      v35 = FigCFEqual();
      if (v34 && v35)
      {
        CFRelease(v34);
        v34 = 0;
      }

      if (!FigCFEqual() && dword_1EAF178D0)
      {
        allocatorb = v28;
        type = OS_LOG_TYPE_DEFAULT;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v37 = type;
        v156 = v36;
        v38 = os_log_type_enabled(v36, type);
        if (OUTLINED_FUNCTION_115_1(v38))
        {
          *v197 = 136316162;
          OUTLINED_FUNCTION_46_16();
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl(v39, v40, v41, v42, v43, v156, v37, v44);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v71, v72, v73, v74, v75);
        v28 = allocatorb;
      }

      v76 = *(v20 + 1296);
      *(v20 + 1296) = v34;
      if (v34)
      {
        CFRetain(v34);
      }

      if (v76)
      {
        CFRelease(v76);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      CFRelease(v33);
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_723();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v152, v154, v156);
    LODWORD(v78) = v150;
    PrimaryPlayerAndCopyWrapper = 0;
LABEL_119:
    v77 = 0;
    goto LABEL_65;
  }

LABEL_49:
  allocatord = CFLocaleCopyCurrent();
  values[0] = MEMORY[0x19A8CD070]();
  v77 = CFArrayCreate(v28, values, 1, MEMORY[0x1E695E9C0]);
  if (v77)
  {
    v78 = CFBundleCopyLocalizedStringForLocalizations();
    v79 = FigCFEqual();
    if (v78 && v79)
    {
      CFRelease(v78);
      v78 = 0;
    }

    if (!FigCFEqual() && dword_1EAF178D0)
    {
      type = OS_LOG_TYPE_DEFAULT;
      v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v81 = type;
      v157 = v80;
      v82 = os_log_type_enabled(v80, type);
      if (OUTLINED_FUNCTION_115_1(v82))
      {
        *v197 = 136316162;
        OUTLINED_FUNCTION_46_16();
        OUTLINED_FUNCTION_19_1();
        _os_log_send_and_compose_impl(v83, v84, v85, v86, v87, v157, v81, v88);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v89, v90, v91, v92, v93);
    }

    v94 = *(v20 + 1288);
    *(v20 + 1288) = v78;
    if (v78)
    {
      CFRetain(v78);
    }

    if (v94)
    {
      CFRelease(v94);
    }

    if (v78)
    {
      CFRelease(v78);
      LODWORD(v78) = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_723();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v152, v154, v156);
    LODWORD(v78) = v149;
  }

  PrimaryPlayerAndCopyWrapper = allocatord;
LABEL_65:
  CFRelease(cfa);
  if (v192.value)
  {
    CFRelease(v192.value);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (PrimaryPlayerAndCopyWrapper)
  {
    CFRelease(PrimaryPlayerAndCopyWrapper);
  }

  if (v78)
  {
    goto LABEL_15;
  }

LABEL_72:
  cfd = v7;
  v95 = *(DerivedStorage + 552);
  v96 = *(DerivedStorage + 1296);
  v97 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_624();
  v98 = fpic_UnwrapEvent();
  v203[0] = 0;
  v99 = FigPlayerInterstitialEventCopyIdentifier(v98);
  v100 = *MEMORY[0x1E695E738];
  allocatore = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v158 = v100;
  if (Mutable)
  {
    v102 = Mutable;
    FigCFDictionarySetValue();
    FigCFDictionarySetUInt32();
    v103 = v99;
    if (v96)
    {
      FigCFDictionarySetValue();
    }

    v104 = FigCFWeakReferenceHolderCopyReferencedObject();
    v105 = cfd;
    if (!v104)
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v152, v154, v158);
      goto LABEL_83;
    }

    v106 = (*(v97 + 72))(v3, v104, *(v97 + 48));
    if (!CurrentlyPlayingEvent && !v95)
    {
      v107 = fpic_copyPrimaryPlayer(v3, v203);
      if (v107)
      {
LABEL_83:
        v111 = v107;
        goto LABEL_85;
      }

      v106 = v203[0];
    }

    if (v106)
    {
      FigPlayerGetFigBaseObject();
      v109 = v108;
      v110 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v110)
      {
        v107 = v110(v109, @"CurrentInterstitialEventSkippableState", v102);
        goto LABEL_83;
      }

      v111 = -12782;
    }

    else
    {
      v111 = 0;
    }

LABEL_85:
    CFRelease(v102);
    if (!v103)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_120();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v152, v154, v100);
  v111 = v146;
  v104 = 0;
  v103 = v99;
  v105 = cfd;
  if (v103)
  {
LABEL_86:
    CFRelease(v103);
  }

LABEL_87:
  if (v104)
  {
    CFRelease(v104);
  }

  if (v203[0])
  {
    CFRelease(v203[0]);
  }

  if (!v111)
  {
    v112 = CFDictionaryCreateMutable(allocatore, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v112)
    {
      v113 = v112;
      FigCFDictionarySetValue();
      FigCFDictionarySetUInt32();
      FigCFDictionarySetValue();
      fpic_PostNotification(v3, @"fpiCurrentEventSkippableStateDidChange", v113);
      CFRelease(v113);
    }

    else
    {
      OUTLINED_FUNCTION_723();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v152, v154, v158);
      if (v147)
      {
        goto LABEL_15;
      }
    }

    v114 = FigPlayerInterstitialEventCopyIdentifier(v6);
    if (dword_1EAF178D0)
    {
      LODWORD(v192.value) = 0;
      LOBYTE(values[0]) = 0;
      v115 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v116 = LOBYTE(values[0]);
      v117 = os_log_type_enabled(v115, values[0]);
      if (OUTLINED_FUNCTION_115_1(v117))
      {
        v118 = *(DerivedStorage + 552);
        *v197 = 136316162;
        *&v197[4] = "fpic_updateSkippableEventStateOnQueue";
        *&v197[12] = 2048;
        *&v197[14] = v3;
        *&v197[22] = 2112;
        v198 = v114;
        v199 = 1024;
        v200 = v105;
        v201 = 1024;
        v202 = v118;
        LODWORD(v154) = 44;
        OUTLINED_FUNCTION_19_1();
        _os_log_send_and_compose_impl(v119, v120, v121, v122, v123, v115, v116, v124, v197, v154);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v125, v126, v127, v128, v129);
    }

    if (v114)
    {
      CFRelease(v114);
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_651();
}

double fpic_GetCurrentlyPlayingEventPlayoutDuration()
{
  OUTLINED_FUNCTION_179_2();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_17_7(MEMORY[0x1E6960CC0]);
  OUTLINED_FUNCTION_284();
  FirstCurrentItem = fpic_GetFirstCurrentItem();
  if (FirstCurrentItem)
  {
    fpic_GetItemPlayoutDuration(v2, FirstCurrentItem, v0);
    v6 = *(DerivedStorage + 432);
    fpic_AccumulateDuration(v0, &v6);
    if (v1)
    {
      *v1 = *&v0->value;
      *(v1 + 16) = v0->epoch;
    }

    v6 = *(DerivedStorage + 480);
    *&result = fpic_AccumulateDuration(v0, &v6).n128_u64[0];
  }

  return result;
}

void fpic_ensureSkippableEventEligibilityTimerIsScheduled()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v70 = v4;
  v6 = v5;
  v92 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v72 = v6;
  OUTLINED_FUNCTION_624();
  v8 = fpic_UnwrapEvent();
  OUTLINED_FUNCTION_256_1(v8, v9, v10, v11, v12, v13, v14, v15, v59, v61, v63, cf, v68, v70, v72, v74, v76.value, *&v76.timescale, v76.epoch, v77.value, *&v77.timescale, v77.epoch, start.value, *&start.timescale, start.epoch, v79, *&v80.start.value, *&v80.start.epoch, *&v80.duration.timescale);
  memset(&start, 0, sizeof(start));
  HIDWORD(v64) = v1;
  if (v1)
  {
    start = v80.start;
  }

  else
  {
    range = v80;
    CMTimeRangeGetEnd(&start, &range);
  }

  v16 = FigPlayerInterstitialEventCopyIdentifier(v8);
  v17 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_164_2(v17);
  v18 = OUTLINED_FUNCTION_577();
  v69 = v19;
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(v18, v19);
  v21 = CMBaseObjectGetDerivedStorage();
  *&range.start.value = *(v21 + 432);
  range.start.epoch = *(v21 + 448);
  rhs = *(v21 + 480);
  CMTimeAdd(&v77, &range.start, &rhs);
  rhs = start;
  CMTimeSubtract(&range.start, &rhs, &v77);
  value = range.start.value;
  timescale = range.start.timescale;
  epoch = range.start.epoch;
  v23 = MEMORY[0x1E6960C70];
  flags = range.start.flags;
  if ((~range.start.flags & 5) == 0)
  {
    StopAndReleaseTimer((DerivedStorage + 800));
    *(DerivedStorage + 792) = 0;
    *(DerivedStorage + 768) = *v23;
    *(DerivedStorage + 784) = *(v23 + 16);
  }

  if (PerEventTrackingCount < 1)
  {
LABEL_34:
    if (v16)
    {
LABEL_35:
      CFRelease(v16);
    }

    goto LABEL_36;
  }

  cfa = v16;
  v24 = 0;
  while (1)
  {
    PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, v69, v24, @"PlaybackItem");
    v26 = fpic_UnwrapPlaybackItem(v73, PerAssetPerEventTrackedObject, v71);
    memset(&v77, 0, sizeof(v77));
    fpic_GetEventItemDurationOnAssetTimeline(v3, v24, &v77);
    if ((v77.flags & 1) == 0)
    {
      if (dword_1EAF178D0 >= 2)
      {
        LODWORD(v76.value) = 0;
        OUTLINED_FUNCTION_105_5();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v29 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_124_0(v29))
        {
          LODWORD(rhs.value) = 136315906;
          OUTLINED_FUNCTION_162_1("fpic_ensureSkippableEventEligibilityTimerIsScheduled", v60, v62, v64, cfa, v69, v71, v73);
          HIWORD(rhs.epoch) = v30;
          v82 = v24;
          v83 = 2112;
          v16 = cfb;
          v84 = cfb;
          OUTLINED_FUNCTION_87();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v31, v32, v33, v34, v35, os_log_and_send_and_compose_flags_and_os_log_type, 0, v36);
        }

        else
        {
          v16 = cfa;
        }

LABEL_33:
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_34;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_131_2();
    range.start.timescale = v27;
    range.start.flags = flags;
    range.start.epoch = epoch;
    rhs = v77;
    if (CMTimeCompare(&range.start, &rhs) <= 0)
    {
      break;
    }

    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    v76 = v77;
    CMTimeSubtract(&range.start, &rhs, &v76);
    value = range.start.value;
    flags = range.start.flags;
    timescale = range.start.timescale;
    epoch = range.start.epoch;
    if (PerEventTrackingCount == ++v24)
    {
      goto LABEL_11;
    }
  }

  if (!v26)
  {
LABEL_11:
    v16 = cfa;
    if (cfa)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_131_2();
  range.start.timescale = v37;
  range.start.flags = flags;
  range.start.epoch = epoch;
  if (!fpic_isTimelineTimerScheduledForItemTime(DerivedStorage + 768, v26, &range.start))
  {
    StopAndReleaseTimer((DerivedStorage + 800));
    *(DerivedStorage + 792) = 0;
    v38 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 768) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 784) = *(v38 + 16);
  }

  v16 = cfa;
  if (*(DerivedStorage + 800))
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_131_2();
  range.start.timescale = v39;
  range.start.flags = flags;
  range.start.epoch = epoch;
  fpic_scheduleTimelineTimer(v73, (DerivedStorage + 768), v26, &range);
  if (!v40)
  {
    v41 = MEMORY[0x1E695E4D0];
    if (!v1)
    {
      v41 = MEMORY[0x1E695E4C0];
    }

    *(DerivedStorage + 808) = *v41;
    if (dword_1EAF178D0)
    {
      LODWORD(v76.value) = 0;
      v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v43 = v76.value;
      os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_134();
      if (v45)
      {
        v46 = v44;
      }

      else
      {
        v46 = v43;
      }

      if (v46)
      {
        if (v1)
        {
          v47 = "eligible";
        }

        else
        {
          v47 = "no longer eligible";
        }

        range.start = start;
        Seconds = CMTimeGetSeconds(&range.start);
        range.start.value = value;
        range.start.timescale = timescale;
        range.start.flags = flags;
        range.start.epoch = epoch;
        CMTimeGetSeconds(&range.start);
        LODWORD(rhs.value) = 136316418;
        OUTLINED_FUNCTION_162_1("fpic_ensureSkippableEventEligibilityTimerIsScheduled", v60, v62, v64, cfa, v69, v71, v73);
        HIWORD(rhs.epoch) = 2112;
        v82 = v16;
        v83 = 2080;
        v84 = v47;
        v85 = v49;
        v86 = Seconds;
        v87 = v49;
        v88 = v50;
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_91_7();
        _os_log_send_and_compose_impl(v51, v52, v53, v54, v55, v56, v57, v58);
      }

      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (cfa)
  {
    goto LABEL_35;
  }

LABEL_36:
  OUTLINED_FUNCTION_191();
}

double fpic_GetEventItemDurationOnAssetTimeline@<D0>(uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_235_1();
  v7 = OUTLINED_FUNCTION_622();
  v9 = v8(v7);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v10 = OUTLINED_FUNCTION_622();
  result = fpic_GetEventItemDurationOnEventTimeline(v10, v11, a2, a3, v12);
  if (!a3)
  {
    OUTLINED_FUNCTION_171();
    if (!fpic_hasFirstItemPlayedOutForEvent())
    {
      FigPlayerInterstitialEventGetFirstItemStartOffset(v9, &rhs);
      v14 = *a4;
      CMTimeAdd(&v16, &v14, &rhs);
      result = *&v16.value;
      *a4 = v16;
    }
  }

  return result;
}

__n128 fpic_scheduleTimelineTimer(uint64_t a1, __n128 *a2, unint64_t a3, __n128 *a4)
{
  fpic_CreateAndPrimeItemTimer();
  if (!v8)
  {
    a2[1].n128_u64[1] = a3;
    result = *a4;
    a2[1].n128_u64[0] = a4[1].n128_u64[0];
    *a2 = result;
  }

  return result;
}

uint64_t fpic_CopyCurrentInterstitialItemTimebase()
{
  v4 = 0;
  result = fpic_GetFirstCurrentItem();
  if (result)
  {
    FigPlaybackItemGetFigBaseObject();
    v2 = v1;
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(v2, @"Timebase", *MEMORY[0x1E695E480], &v4);
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void fpic_RemovePerAssetPerEventTrackedObjects(uint64_t a1, uint64_t a2, CFIndex a3)
{
  OUTLINED_FUNCTION_180_1();
  Count = *(v6 + 664);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count > v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 664), v3);
    v9 = ValueAtIndex;
    if (ValueAtIndex)
    {
      ValueAtIndex = CFArrayGetCount(ValueAtIndex);
    }

    if (ValueAtIndex > a3)
    {

      CFArrayRemoveValueAtIndex(v9, a3);
    }
  }
}

CFMutableArrayRef fpic_CopyPerAssetPerEventTrackedObjects(uint64_t a1, uint64_t a2, const void *a3)
{
  OUTLINED_FUNCTION_433();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Count = *(v4 + 664);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count > v3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 664), v3);
      v9 = 0;
      if (!ValueAtIndex)
      {
        goto LABEL_7;
      }

LABEL_6:
      for (i = CFArrayGetCount(ValueAtIndex); v9 < i; i = 0)
      {
        v11 = CFArrayGetValueAtIndex(ValueAtIndex, v9);
        if (CFDictionaryGetValue(v11, a3))
        {
          v12 = OUTLINED_FUNCTION_399();
          CFArrayAppendValue(v12, v13);
        }

        ++v9;
        if (ValueAtIndex)
        {
          goto LABEL_6;
        }

LABEL_7:
        ;
      }
    }
  }

  return Mutable;
}

uint64_t fpic_IssuePreloadRequest(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = FigPlayerInterstitialPreloadCopyURL(a2);
  v28 = 0;
  value = 0;
  target = 0;
  valuePtr = 0;
  v4 = FigPlayerInterstitialPreloadCopyTargetID(a2);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", target, valuePtr, v28);
    goto LABEL_26;
  }

  v6 = *MEMORY[0x1E695E480];
  Empty = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &target);
  if (Empty)
  {
LABEL_26:
    v18 = Empty;
    goto LABEL_11;
  }

  v8 = target;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionarySetValue(*(DerivedStorage + 712), v4, v8);
  v10 = OUTLINED_FUNCTION_204_0();
  v17 = fpic_IssueTopLevelInterstitialRequest(v10, v11, 0, v12, v13, v14, v15, v16);
  v18 = v17;
  if (v17)
  {
    v19 = CFErrorCreate(v6, @"CoreMediaErrorDomain", v17, 0);
    if (v19)
    {
      v20 = v19;
      v21 = CMBaseObjectGetDerivedStorage();
      CFDictionarySetValue(*(v21 + 712), v4, v20);
      CFRelease(v20);
    }

    goto LABEL_8;
  }

  if (value)
  {
    CMSetAttachment(target, @"Preload_RequestID", value, 1u);
LABEL_8:
    v22 = v28;
    goto LABEL_9;
  }

  if (!valuePtr)
  {
    goto LABEL_8;
  }

  v24 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = v24;
  CMSetAttachment(target, @"Preload_RequestID", v24, 1u);
  v22 = v28;
  CMSetAttachment(target, @"Preload_CustomURLLoader", v28, 1u);
  CFRelease(v25);
LABEL_9:
  CMSetAttachment(target, @"Preload_URL", v3, 1u);
  CMSetAttachment(target, @"Preload_PreloadRef", a2, 1u);
  if (v22)
  {
    CFRelease(v22);
  }

LABEL_11:
  if (value)
  {
    CFRelease(value);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (target)
  {
    CFRelease(target);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v18;
}

void fpic_HTTPIssuePreloadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated() || (Owner = FigRetainProxyGetOwner()) == 0)
  {

    FigRetainProxyUnlockMutex();
  }

  else
  {
    v15 = CFRetain(Owner);
    FigRetainProxyUnlockMutex();
    if (v15)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_0_52();
      v17[1] = 3221225472;
      v17[2] = __fpic_HTTPIssuePreloadCallback_block_invoke;
      v17[3] = &__block_descriptor_80_e5_v8__0l;
      v17[4] = v15;
      v17[5] = a1;
      v17[6] = a4;
      v17[7] = a5;
      v17[8] = a6;
      v18 = a8;
      v19 = a7;
      dispatch_sync(v16, v17);
      fpic_ServiceCurrentEvent(v15, MEMORY[0x1E6960C70]);
      CFRelease(v15);
    }
  }
}

void fpic_customURLIssuePreloadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  SInt64 = FigCFNumberCreateSInt64();
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_57_13();
    v15[1] = 3221225472;
    v15[2] = __fpic_customURLIssuePreloadCallback_block_invoke;
    v15[3] = &__block_descriptor_92_e5_v8__0l;
    v16 = a5;
    v15[4] = a3;
    v15[5] = a2;
    v15[6] = v13;
    v15[7] = a1;
    v15[8] = SInt64;
    v15[9] = a6;
    v15[10] = a4;
    dispatch_sync(v14, v15);
    fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
  }

  if (SInt64)
  {
    CFRelease(SInt64);
  }
}

void fpic_PruneCurrentEventsToQueue()
{
  OUTLINED_FUNCTION_649();
  HIDWORD(v423) = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v522 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_78_8();
  v8 = OUTLINED_FUNCTION_797();
  v400 = v9(v8);
  v513 = -1;
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  v10 = OUTLINED_FUNCTION_797();
  fpic_findEventAndItemIndexForItemOnQueue(v10, v11, v2, v12, 0);
  if (v2 && *(CMBaseObjectGetDerivedStorage() + 1032) != v2)
  {
    goto LABEL_124;
  }

  LODWORD(cf) = 0;
  LODWORD(v394) = 0;
  v14 = 0;
  v15 = 0;
  v513 = 0;
  v382 = @"Status";
  v388 = DerivedStorage + 408;
  v370 = DerivedStorage + 88;
  v376 = *MEMORY[0x1E695E480];
  v353 = (DerivedStorage + 112);
  v16 = &dword_1EAF17000;
  v17 = &dword_1EAF17000;
  *&v13 = 136316674;
  *v453 = v13;
  *&v13 = 136315906;
  *v406 = v13;
  *&v13 = 136315394;
  *v359 = v13;
  *&v13 = 136315650;
  *v429 = v13;
  v470 = DerivedStorage;
  do
  {
    v18 = OUTLINED_FUNCTION_249_2();
    PerEventTrackingCount = fpic_GetPerEventTrackingCount(v18, v19);
    if (PerEventTrackingCount < 1)
    {
      continue;
    }

    v20 = 0;
    while (1)
    {
      v21 = OUTLINED_FUNCTION_249_2();
      v490 = v20;
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v21, v22, v20, @"PlaybackItem");
      OUTLINED_FUNCTION_766();
      v27 = fpic_UnwrapPlaybackItem(v24, v25, v26);
      v28 = v27;
      if (v16[564] >= 4)
      {
        v29 = v4;
        v30 = v27;
        HIDWORD(v476) = v14;
        OUTLINED_FUNCTION_114_3();
        v31 = v17;
        v40 = OUTLINED_FUNCTION_40_22(v32, v33, v34, v35, v36, v37, v38, v39, v322, v328, idx, v340, v347, v353, v359[0], v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], Count, cf, v453[0], v453[1], v464, v470, v476, PerEventTrackingCount, v490, v496, type.value, *&type.timescale, type.epoch, v509, v510);
        value_low = LOBYTE(type.value);
        v42 = os_log_type_enabled(v40, type.value);
        if (OUTLINED_FUNCTION_15_52(v42))
        {
          LODWORD(valuePtr.value) = v453[0];
          OUTLINED_FUNCTION_113_3();
          HIWORD(valuePtr.epoch) = 1024;
          *v515 = v15;
          *&v515[4] = 1024;
          *&v515[6] = v490;
          *v516 = v43;
          *&v516[2] = v2;
          v517 = v43;
          v518 = v30;
          v519 = 2080;
          v520 = v44;
          LODWORD(v328) = 64;
          OUTLINED_FUNCTION_19_1();
          _os_log_send_and_compose_impl(v45, v46, v47, v48, &dword_1962D5000, v40, value_low, "<<<< FigPlayerInterstitial >>>> %s: %p: eventIndex %d itemIndex %d: removedItem %p, tracked item %p %s", &valuePtr, v328, idx, v340, v347, v353, v359[0]);
          OUTLINED_FUNCTION_161_2();
        }

        v17 = v31;
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_467(v49, v50, v51, v52, v53);
        v54 = v29;
        DerivedStorage = v470;
        v16 = &dword_1EAF17000;
        v14 = HIDWORD(v476);
        v28 = v30;
        v4 = v54;
      }

      v55 = v14 || v2 == 0;
      if (v55 && v28)
      {
        break;
      }

      if (v2)
      {
        if (PerAssetPerEventTrackedObject == @"DummyItem" || v28 == v2)
        {
LABEL_25:
          v347 = v4;
          if (v16[564])
          {
            v341 = v28;
            HIDWORD(v476) = v14;
            v58 = v15;
            OUTLINED_FUNCTION_114_3();
            v59 = v17;
            v68 = OUTLINED_FUNCTION_40_22(v60, v61, v62, v63, v64, v65, v66, v67, v322, v328, idx, v341, v4, v353, v359[0], v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], Count, cf, v453[0], v453[1], v464, v470, v476, PerEventTrackingCount, v490, v496, type.value, *&type.timescale, type.epoch, v509, v510);
            v69 = LOBYTE(type.value);
            v70 = os_log_type_enabled(v68, type.value);
            if (OUTLINED_FUNCTION_15_52(v70))
            {
              LODWORD(valuePtr.value) = v406[0];
              OUTLINED_FUNCTION_11_67();
              *(&valuePtr.flags + 2) = v6;
              HIWORD(valuePtr.epoch) = v71;
              *v515 = v340;
              *&v515[8] = 2112;
              *v516 = PerAssetPerEventTrackedObject;
              OUTLINED_FUNCTION_1_174();
              _os_log_send_and_compose_impl(v72, v73, v74, v75, &dword_1962D5000, v68, v69, "<<<< FigPlayerInterstitial >>>> %s: %p: Removing no-longer-current item %p / %@ ");
              OUTLINED_FUNCTION_161_2();
            }

            v17 = v59;
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_467(v76, v77, v78, v79, v80);
            v15 = v58;
            v16 = &dword_1EAF17000;
            v14 = HIDWORD(v476);
            v28 = v340;
          }

          if (v28)
          {
            v81 = v28;
            if (HIDWORD(v423))
            {
              v82 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              if (v82)
              {
                v82(v400, v81);
              }
            }

            v83 = CMBaseObjectGetDerivedStorage();
            if (*(v83 + 160))
            {
              v84 = v83;
              v521[0] = 0;
              LODWORD(valuePtr.value) = 0;
              FigPlaybackItemGetFigBaseObject();
              v86 = v85;
              v87 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v87)
              {
                v88 = v87(v86, v382, v376, v521);
                v89 = v521[0];
                if (!v88 && v521[0])
                {
                  CFNumberGetValue(v521[0], kCFNumberSInt32Type, &valuePtr);
                  v89 = v521[0];
                }

                if (v89)
                {
                  CFRelease(v89);
                }
              }

              if (LODWORD(valuePtr.value))
              {
                v90 = *(v84 + 1200) + 1;
                *(v84 + 1200) = v90;
                v91 = &kFigPlaybackItemProperty_InterstitialPlaybackFailureCount;
              }

              else
              {
                v90 = *(v84 + 1196) + 1;
                *(v84 + 1196) = v90;
                v91 = &kFigPlaybackItemProperty_InterstitialPlaybackSuccessCount;
              }

              v17 = &dword_1EAF17000;
              fpic_setItemPropertyInt32(*(v84 + 160), *v91, v90);
            }

            v92 = OUTLINED_FUNCTION_797();
            fpic_StopRecordingActiveInterstitialItemPlayoutTime(v92, v93);
            v94 = OUTLINED_FUNCTION_797();
            fpic_UnregisterInterstitialItemNotifications(v94, v95, 0);
            v14 = 1;
          }

          v4 = v347;
          fpic_updateEventLoadedTimeIntervalsOnQueue();
          v96 = OUTLINED_FUNCTION_249_2();
          fpic_RemovePerAssetPerEventTrackedObjects(v96, v97, v490);
          v57 = v490 - 1;
          if (!--PerEventTrackingCount)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 656), v15);
            value = ValueAtIndex;
            if (ValueAtIndex)
            {
              v394 = CFRetain(ValueAtIndex);
            }

            else
            {
              v394 = 0;
            }

            v99 = OUTLINED_FUNCTION_797();
            v483 = v100(v99);
            v340 = FigPlayerInterstitialEventCopyAssetListUrl(v483);
            cf = FigPlayerInterstitialEventCopyIdentifier(v483);
            HIDWORD(v476) = v14;
            --v490;
            if (v16[564])
            {
              v4 = DerivedStorage;
              OUTLINED_FUNCTION_114_3();
              v109 = OUTLINED_FUNCTION_40_22(v101, v102, v103, v104, v105, v106, v107, v108, v322, v328, idx, v340, v347, v353, v359[0], v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], Count, cf, v453[0], v453[1], v464, v470, v476, v483, v57, v496, type.value, *&type.timescale, type.epoch, v509, v510);
              v117 = OUTLINED_FUNCTION_100_6(v109, v110, v111, v112, v113, v114, v115, v116, v323, v329, idxa, v342, v348, v354, v360, v365, v371, v377, v383, v389, v395, v401, v407, v412, v418, v424, v430, v436, v442, cfa, v454, v459, v465, v471, v477, v484, v491, v497, type.value, *&type.timescale, type.epoch, v509, v510);
              if (OUTLINED_FUNCTION_15_52(v117))
              {
                LODWORD(valuePtr.value) = v429[0];
                OUTLINED_FUNCTION_11_67();
                OUTLINED_FUNCTION_226_0();
                *v515 = v483;
                OUTLINED_FUNCTION_1_174();
                OUTLINED_FUNCTION_91_7();
                _os_log_send_and_compose_impl(v118, v119, v120, v121, v122, v123, v124, "<<<< FigPlayerInterstitial >>>> %s: %p: Removing no-longer-current event %@");
                OUTLINED_FUNCTION_161_2();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_467(v125, v126, v127, v128, v129);
              v16 = &dword_1EAF17000;
              OUTLINED_FUNCTION_80_8();
            }

            idx = v15;
            if (FigPlayerInterstitialEventDidAllItemsFail(v483))
            {
              if (v16[564])
              {
                v4 = DerivedStorage;
                OUTLINED_FUNCTION_114_3();
                v145 = OUTLINED_FUNCTION_40_22(v137, v138, v139, v140, v141, v142, v143, v144, v322, v328, v15, v340, v347, v353, v359[0], v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], Count, cf, v453[0], v453[1], v464, v470, v476, v483, v490, v496, type.value, *&type.timescale, type.epoch, v509, v510);
                v153 = OUTLINED_FUNCTION_100_6(v145, v146, v147, v148, v149, v150, v151, v152, v324, v330, idxb, v343, v349, v355, v361, v366, v372, v378, v384, v390, v396, v402, v408, v413, v419, v425, v431, v437, v443, cfb, v455, v460, v466, v472, v478, v485, v492, v498, type.value, *&type.timescale, type.epoch, v509, v510);
                if (OUTLINED_FUNCTION_15_52(v153))
                {
                  LODWORD(valuePtr.value) = v429[0];
                  OUTLINED_FUNCTION_11_67();
                  OUTLINED_FUNCTION_226_0();
                  *v515 = cf;
                  OUTLINED_FUNCTION_1_174();
                  OUTLINED_FUNCTION_91_7();
                  _os_log_send_and_compose_impl(v154, v155, v156, v157, v158, v159, v160, "<<<< FigPlayerInterstitial >>>> %s: %p: observed all items failed for event %@");
                  OUTLINED_FUNCTION_161_2();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_467(v161, v162, v163, v164, v165);
                v16 = &dword_1EAF17000;
                OUTLINED_FUNCTION_80_8();
              }

              fpic_UpdateEventLastPlaybackFailed(v6, value, 1);
              v166 = value;
              v136 = v483;
              LastPlaybackError = FigPlayerInterstitialEventGetLastPlaybackError(v483);
              fpic_PostInterstitialWasUnscheduledNotification(v6, v166, LastPlaybackError);
            }

            else
            {
              *v521 = *(DerivedStorage + 480);
              v521[2] = *(DerivedStorage + 496);
              valuePtr = **&MEMORY[0x1E6960CC0];
              CMTimeCompare(v521, &valuePtr);
              OUTLINED_FUNCTION_222_1();
              fpic_PostInterstitialDidFinishNotification(v6, v130, v521, v131, v132, v133, v134, v135, v322, SHIDWORD(v322), v328, v15, v340, v347, v353, v359[0], SHIDWORD(v359[0]), v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], Count, cf, v453[0], v453[1], v464, v470, v476, v483, v490, v496, type.value, *&type.timescale, type.epoch, v509, v510);
              v136 = v483;
            }

            FigPlayerInterstitialEventResetItemSuccessCount(v136);
            FigPlayerInterstitialEventSetLastPlaybackError(v136);
            v510 = 0uLL;
            v511 = 0;
            FigPlayerInterstitialEventGetResumptionOffset(v136, &v510);
            if ((BYTE12(v510) & 0x11) != 1)
            {
              valuePtr = *(DerivedStorage + 432);
              type = *(DerivedStorage + 480);
              CMTimeAdd(v521, &valuePtr, &type);
              v510 = *v521;
              v511 = v521[2];
            }

            *v521 = v510;
            v521[2] = v511;
            fpic_AccumulateDuration(v388, v521);
            OUTLINED_FUNCTION_222_1();
            fpic_AccumulateDuration((DerivedStorage + 456), v521);
            v168 = MEMORY[0x1E6960CC0];
            v169 = *MEMORY[0x1E6960CC0];
            *(DerivedStorage + 432) = *MEMORY[0x1E6960CC0];
            v170 = *(v168 + 16);
            *(DerivedStorage + 448) = v170;
            *(DerivedStorage + 480) = v169;
            *(DerivedStorage + 496) = v170;
            if (v16[564] >= 2)
            {
              OUTLINED_FUNCTION_127_3();
              v178 = OUTLINED_FUNCTION_169_2(qword_1EAF178C8, v171, v172, v173, v174, v175, v176, v177, v322, v328, idx, v340, v347, v353, v359[0], v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], Count, cf, v453[0], v453[1], v464, v470, v476, v483, v490, v496, SWORD2(v496), SBYTE6(v496), SHIBYTE(v496), type.value);
              if (OUTLINED_FUNCTION_255_2(v178, v179, v180, v181, v182, v183, v184, v185, v325, v331, idxc, v344, v350, v356, v362, v367, v373, v379, v385, v391, v397, v403, v409, v414, v420, v426, v432, v438, v444, cfc, v456, v461, v467, v473, v479, v486, v493, v499, v502, v504, v506, type.value))
              {
                v186 = DerivedStorage;
              }

              else
              {
                v186 = DerivedStorage & 0xFFFFFFFE;
              }

              if (v186)
              {
                *v521 = *v388;
                v521[2] = *(v388 + 16);
                CMTimeGetSeconds(v521);
                LODWORD(valuePtr.value) = v359[0];
                OUTLINED_FUNCTION_11_67();
                *(&valuePtr.flags + 2) = v187;
                LODWORD(v328) = 22;
                OUTLINED_FUNCTION_108();
                OUTLINED_FUNCTION_91_7();
                _os_log_send_and_compose_impl(v188, v189, v190, v191, v192, v193, v194, "<<<< FigPlayerInterstitial >>>> %s: Set currentPlayedOutResumptionOffset to %f", &valuePtr, *&v328);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_467(v195, v196, v197, v198, v199);
              DerivedStorage = v4;
              OUTLINED_FUNCTION_80_8();
            }

            HIDWORD(v328) = FigPlayerInterstitialEventGetSnapOptions(v483);
            fpic_RecordPastCurrentEventDuration(v6, value);
            CFArrayRemoveValueAtIndex(*(DerivedStorage + 656), idx);
            v200 = idx;
            fpic_RemovePerEventTrackedObjects();
            v201 = FigPlayerInterstitialEventCopyIdentifier(v483);
            v202 = OUTLINED_FUNCTION_235();
            fpic_ForgetPreloadByTargetID(v202, v203);
            if (v201)
            {
              CFRelease(v201);
            }

            fpic_CancelPendingURLRequest(v6, value);
            fpic_HopNextMomentIfNecessary();
            v204 = *(DerivedStorage + 904);
            v205 = v340;
            if (v204 && v204 == value)
            {
              if (dword_1EAF178D0)
              {
                OUTLINED_FUNCTION_127_3();
                v213 = OUTLINED_FUNCTION_169_2(qword_1EAF178C8, v206, v207, v208, v209, v210, v211, v212, v322, v328, idx, v340, v347, v353, v359[0], v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], Count, cf, v453[0], v453[1], v464, v470, v476, v483, v490, v496, SWORD2(v496), SBYTE6(v496), SHIBYTE(v496), type.value);
                v221 = OUTLINED_FUNCTION_255_2(v213, v214, v215, v216, v217, v218, v219, v220, v326, v332, idxd, v345, v351, v357, v363, v368, v374, v380, v386, v392, v398, v404, v410, v415, v421, v427, v433, v439, v445, cfd, v457, v462, v468, v474, v480, v487, v494, v500, v503, v505, v507, type.value);
                if (OUTLINED_FUNCTION_15_52(v221))
                {
                  v222 = *(v4 + 896);
                  LODWORD(valuePtr.value) = v406[0];
                  *(&valuePtr.value + 4) = "fpic_PruneCurrentEventsToQueue";
                  LOWORD(valuePtr.flags) = 2048;
                  *(&valuePtr.flags + 2) = v6;
                  HIWORD(valuePtr.epoch) = 2112;
                  *v515 = value;
                  *&v515[8] = 1024;
                  *v516 = v222;
                  OUTLINED_FUNCTION_1_174();
                  OUTLINED_FUNCTION_91_7();
                  _os_log_send_and_compose_impl(v223, v224, v225, v226, v227, v228, v229, "<<<< FigPlayerInterstitial >>>> %s: %p: event %@ was removed while seekID %d was still pending, cancelling the seek");
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_467(v230, v231, v232, v233, v234);
                DerivedStorage = v4;
                OUTLINED_FUNCTION_80_8();
              }

              fpic_ForceCancelInitiatedSeek(v6);
            }

            if (v205)
            {
              fpic_clearEventAssetListState(v483);
              v254 = OUTLINED_FUNCTION_797();
              if (!v255(v254))
              {
                fpic_UpdateEventInAddOrder(v6, v394, value);
              }

              OUTLINED_FUNCTION_245_2();
              v259 = fpic_CreateAssetListResponseStatusDidChangeNotificationPayload(v256, v257, v258);
              fpic_PostNotification(v6, @"fpiAssetListResponseStatusDidChange", v259);
              if (value)
              {
                CFRelease(value);
              }

              if (v259)
              {
                CFRelease(v259);
              }
            }

            CFSetSetValue(*(DerivedStorage + 688), value);
            if (!--Count)
            {
              v235 = v483;
              if (*(DerivedStorage + 256) || *(DerivedStorage + 257))
              {
                if (dword_1EAF178D0)
                {
                  OUTLINED_FUNCTION_127_3();
                  v243 = OUTLINED_FUNCTION_169_2(qword_1EAF178C8, v236, v237, v238, v239, v240, v241, v242, v322, v328, idx, v340, v347, v353, v359[0], v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], 0, cf, v453[0], v453[1], v464, v470, v476, v483, v490, v496, SWORD2(v496), SBYTE6(v496), SHIBYTE(v496), type.value);
                  v244 = type.value;
                  if (os_log_type_enabled(v243, HIBYTE(v496)))
                  {
                    v245 = v244;
                  }

                  else
                  {
                    v245 = v244 & 0xFFFFFFFE;
                  }

                  if (v245)
                  {
                    LODWORD(valuePtr.value) = v359[0];
                    OUTLINED_FUNCTION_11_67();
                    *(&valuePtr.flags + 2) = v6;
                    OUTLINED_FUNCTION_1_174();
                    _os_log_send_and_compose_impl(v246, v247, v248, v249, &dword_1962D5000, v243, HIBYTE(v496), "<<<< FigPlayerInterstitial >>>> %s: %p: At end of current events; resetting nextMoment", v322, v328);
                  }

                  OUTLINED_FUNCTION_7();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  DerivedStorage = v4;
                  v14 = HIDWORD(v476);
                  v235 = v488;
                  v57 = v490;
                  v4 = v347;
                }

                v250 = CMBaseObjectGetDerivedStorage();
                *(v250 + 256) = 0;
                *(v250 + 296) = 0;
                v251 = MEMORY[0x1E6960C70];
                v252 = *MEMORY[0x1E6960C70];
                *(v250 + 432) = *MEMORY[0x1E6960C70];
                v253 = *(v251 + 16);
                *(v250 + 448) = v253;
                *(v250 + 480) = v252;
                *(v250 + 496) = v253;
                *(v250 + 504) = v252;
                *(v250 + 520) = v253;
                *(v250 + 1144) = 0;
                *(v250 + 644) = v253;
                *(v250 + 628) = v252;
                *(v250 + 1147) = 0;
              }

              if (FigPlayerInterstitialEventIsPostRoll(v235))
              {
                fpic_DeassertPostRoll(v6);
              }
            }

            if (v205)
            {
              CFRelease(v205);
            }

            v17 = &dword_1EAF17000;
            if (cf)
            {
              CFRelease(cf);
            }

            if (v394)
            {
              CFRelease(v394);
            }

            PerEventTrackingCount = 0;
            LODWORD(v394) = (HIDWORD(v328) >> 1) & 1;
            v15 = v200 - 1;
            LODWORD(cf) = 1;
            v16 = &dword_1EAF17000;
          }

          goto LABEL_22;
        }
      }

      else if (PerAssetPerEventTrackedObject == @"DummyItem")
      {
        goto LABEL_25;
      }

      v57 = v490;
LABEL_22:
      v20 = v57 + 1;
      if (v20 >= PerEventTrackingCount)
      {
        goto LABEL_109;
      }
    }

    if (v16[564] >= 4)
    {
      v260 = v4;
      v261 = v28;
      HIDWORD(v476) = v14;
      OUTLINED_FUNCTION_114_3();
      v270 = OUTLINED_FUNCTION_40_22(v262, v263, v264, v265, v266, v267, v268, v269, v322, v328, idx, v340, v347, v353, v359[0], v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], Count, cf, v453[0], v453[1], v464, v470, v476, PerEventTrackingCount, v490, v496, type.value, *&type.timescale, type.epoch, v509, v510);
      v278 = OUTLINED_FUNCTION_100_6(v270, v271, v272, v273, v274, v275, v276, v277, v327, v333, idxe, v346, v352, v358, v364, v369, v375, v381, v387, v393, v399, v405, v411, v416, v422, v428, v434, v440, v446, cfe, v458, v463, v469, v475, v481, v489, v495, v501, type.value, *&type.timescale, type.epoch, v509, v510);
      if (OUTLINED_FUNCTION_15_52(v278))
      {
        LODWORD(valuePtr.value) = v406[0];
        OUTLINED_FUNCTION_11_67();
        *(&valuePtr.flags + 2) = v6;
        HIWORD(valuePtr.epoch) = v279;
        *v515 = v261;
        *&v515[8] = v279;
        *v516 = v2;
        OUTLINED_FUNCTION_1_174();
        OUTLINED_FUNCTION_91_7();
        _os_log_send_and_compose_impl(v280, v281, v282, v283, v284, v285, v286, "<<<< FigPlayerInterstitial >>>> %s: %p: Next non-dummy item %p following removedItem %p found, halting.", v322, v328, idx, v340);
        OUTLINED_FUNCTION_161_2();
      }

      v4 = v260;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_467(v287, v288, v289, v290, v291);
      DerivedStorage = v470;
      v14 = HIDWORD(v476);
    }

LABEL_109:
    ;
  }

  while (v15++ < v513);
  v293 = *(CMBaseObjectGetDerivedStorage() + 1032);
  if (v293)
  {
    v294 = v293 == v2;
  }

  else
  {
    v294 = 0;
  }

  if (v294)
  {
    if (v16[564])
    {
      OUTLINED_FUNCTION_114_3();
      v303 = OUTLINED_FUNCTION_40_22(v295, v296, v297, v298, v299, v300, v301, v302, v322, v328, idx, v340, v347, v353, v359[0], v359[1], v370, v376, v382, v388, v394, v400, v406[0], v406[1], v417, v423, v429[0], v429[1], Count, cf, v453[0], v453[1], v464, v470, v476, PerEventTrackingCount, v490, v496, type.value, *&type.timescale, type.epoch, v509, v510);
      v304 = os_log_type_enabled(v303, type.value);
      if (OUTLINED_FUNCTION_109_0(v304))
      {
        LODWORD(valuePtr.value) = v435;
        OUTLINED_FUNCTION_113_3();
        HIWORD(valuePtr.epoch) = v305;
        *v515 = v306;
        OUTLINED_FUNCTION_82_1();
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_91_7();
        _os_log_send_and_compose_impl(v307, v308, v309, v310, v311, v312, v313, v314, &valuePtr);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v315, v316, v317, v318, v319);
    }

    *(DerivedStorage + 1032) = 0;
  }

  if (cf && !Count)
  {
    fpic_UngatePrimaryBuffering(v6);
    fpic_ApplyResumptionOffset();
LABEL_123:
    v320 = OUTLINED_FUNCTION_797();
    fpic_SignalCurrentEvent(v320, v321);
  }

  else if (cf)
  {
    goto LABEL_123;
  }

LABEL_124:
  OUTLINED_FUNCTION_651();
}

void fpic_updateEventLoadedTimeIntervalsOnQueue()
{
  OUTLINED_FUNCTION_172_2();
  v51 = v0;
  v52 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 656)) < 1)
  {
    goto LABEL_3;
  }

  v44 = 0;
  v45 = 0;
  if (!fpic_findEventAndItemIndexForItemOnQueue(v7, v5, v3, &v45, &v44))
  {
    goto LABEL_3;
  }

  fpic_SetPerAssetPerEventTrackedObject();
  v9 = v45;
  OUTLINED_FUNCTION_9_47(MEMORY[0x1E6960CC0]);
  v10 = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = FigCFArrayGetValueAtIndex();
  v11 = (*(v10 + 88))(v7, v5);
  v12 = FigPlayerInterstitialEventCopyLoadedTimeIntervals(v11);
  v42 = v10;
  PerEventTrackingCount = fpic_GetPerEventTrackingCount(v10, v9);
  if (FigPlayerInterstitialEventGetTimelineOccupancy(v11) == 1)
  {
    v36 = v12;
    if (PerEventTrackingCount < 1)
    {
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = *MEMORY[0x1E695E480];
      v39 = v5;
      v40 = v7;
      v37 = PerEventTrackingCount;
      v38 = v9;
      do
      {
        PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v42, v9, v14, @"LoadedTimeInterval");
        v43 = v14;
        if (PerAssetPerEventTrackedObject)
        {
          v18 = PerAssetPerEventTrackedObject;
          Count = CFArrayGetCount(PerAssetPerEventTrackedObject);
          if (Count >= 1)
          {
            v20 = Count;
            for (i = 0; i != v20; ++i)
            {
              v22 = CFArrayGetValueAtIndex(v18, i);
              Mutable = CFDictionaryCreateMutable(v16, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              memset(&v49, 0, sizeof(v49));
              Value = CFDictionaryGetValue(v22, @"startTime");
              CMTimeMakeFromDictionary(&rhs, Value);
              lhs = v50[0];
              CMTimeAdd(&v49, &lhs, &rhs);
              OUTLINED_FUNCTION_228_1();
              v25 = OUTLINED_FUNCTION_204_0();
              v27 = CFDictionaryGetValue(v25, v26);
              CMTimeMakeFromDictionary(&lhs, v27);
              OUTLINED_FUNCTION_209_2();
              CMTimeAdd(&rhs, &v46, &lhs);
              lhs = v49;
              v28 = CMTimeCopyAsDictionary(&lhs, v16);
              lhs = rhs;
              v29 = CMTimeCopyAsDictionary(&lhs, v16);
              v30 = OUTLINED_FUNCTION_184();
              CFDictionarySetValue(v30, v31, v28);
              v32 = OUTLINED_FUNCTION_16_13();
              CFDictionarySetValue(v32, v33, v29);
              if (!v15)
              {
                v15 = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
              }

              v34 = OUTLINED_FUNCTION_214_2();
              CFArrayAppendValue(v34, v35);
              if (v28)
              {
                CFRelease(v28);
              }

              if (v29)
              {
                CFRelease(v29);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }
            }
          }
        }

        v7 = v40;
        v9 = v38;
        fpic_GetEventItemDurationOnEventTimeline(v40, v39, ValueAtIndex, v43, &v49);
        rhs = v50[0];
        CMTimeAdd(v50, &rhs, &v49);
        v14 = v43 + 1;
      }

      while (v43 + 1 != v37);
    }

    v12 = v36;
    OUTLINED_FUNCTION_193_0();
    if (!FigCFEqual())
    {
      FigPlayerInterstitialEventSetLoadedTimeIntervals(v11, v15);
      fpic_PostNotification(v7, @"fpiResolvePropertiesChange", 0);
    }

    if (!v36)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v15 = 0;
  if (v12)
  {
LABEL_25:
    CFRelease(v12);
  }

LABEL_26:
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_3:
  OUTLINED_FUNCTION_171_2();
}

void fpic_UngatePrimaryBuffering(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 160))
  {
    FigPlaybackItemGetFigBaseObject();
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, @"TimeToPauseBuffering", 0);
    }

    v5 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 1040) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 1056) = *(v5 + 16);
    v6 = CMBaseObjectGetDerivedStorage();
    StopAndReleaseTimer((v6 + 816));
    *(v6 + 872) = 0;
  }
}

void fpic_ApplyResumptionOffset()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v138 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v109 = *MEMORY[0x1E6960C70];
  *&v124.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v124.epoch = v11;
  OUTLINED_FUNCTION_228_1();
  fpic_CurrentResumptionOffset(v9, v7, v3, 1, 1, &v124, &v123);
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = *(v12 + 884);
  if (v14 <= 2.0 && v14 >= 0.0)
  {
    if (*(DerivedStorage + 160) && (v124.flags & 1) != 0)
    {
      v135 = *&v124.value;
      *&v136 = v124.epoch;
      FigCFSetPropertyToTime();
    }

    if ((v123.flags & 1) == 0)
    {
      goto LABEL_28;
    }

    if (*(DerivedStorage + 376) || (v13 = *(DerivedStorage + 377)) != 0)
    {
      Count = CFArrayGetCount(*(DerivedStorage + 656));
      if (!v5 && Count >= 1)
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 656), Count - 1);
        v16 = OUTLINED_FUNCTION_797();
        v18 = v17(v16);
        v5 = (FigPlayerInterstitialEventGetSnapOptions(v18) >> 1) & 1;
      }

      if (*(DerivedStorage + 1146) && *(DerivedStorage + 1145))
      {
        v5 = 0;
        OUTLINED_FUNCTION_221_1(MEMORY[0x1E6960CC0]);
      }

      if (!*(DerivedStorage + 160))
      {
        OUTLINED_FUNCTION_374();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, v100, v103);
LABEL_48:
        v13 = 0;
        goto LABEL_29;
      }

      memset(&v122, 0, sizeof(v122));
      v19 = CMBaseObjectGetDerivedStorage();
      if (*(v19 + 376))
      {
        OUTLINED_FUNCTION_231_0();
        v122.epoch = v20;
        *&v122.value = *v21;
      }

      else if (*(v19 + 377))
      {
        v22 = *(v19 + 368);
        v23 = *(v19 + 320);
        v135 = *(v19 + 304);
        v136 = v23;
        v137 = *(v19 + 336);
        FigCreateTimeWithDateAndMoment(&v135, &v122, v22);
      }

      else
      {
        *&v122.value = v109;
        v122.epoch = v11;
      }

      memset(&v121, 0, sizeof(v121));
      v135 = *&v122.value;
      *&v136 = v122.epoch;
      rhs = v123;
      v24 = CMTimeAdd(&v121, &v135, &rhs);
      if (v7)
      {
        v24 = CMBaseObjectGetDerivedStorage();
        if (*(v24 + 1142))
        {
          if (!*(v24 + 1141) && !*(DerivedStorage + 1146) && !*(DerivedStorage + 1145))
          {
            v135 = 0uLL;
            *&v136 = 0;
            fpic_GetItemEndTime();
            CMTimeMake(&time2, 1, 1);
            v87 = CMTimeSubtract(&v135, &rhs, &time2);
            OUTLINED_FUNCTION_72_9(v87, v88, v89, v90, v91, v92, v93, v94, v95, v97, v100, v103, v106, v109, *(&v109 + 1), v115, v118, time2.value, *&time2.timescale, time2.epoch, v120, v96, v121.value);
            *&time2.value = v135;
            time2.epoch = v136;
            v24 = CMTimeCompare(&rhs, &time2);
            if (v24 >= 1)
            {
              *&v121.value = v135;
              v121.epoch = v136;
            }
          }
        }
      }

      v135 = *(DerivedStorage + 556);
      *&v136 = *(DerivedStorage + 572);
      OUTLINED_FUNCTION_72_9(v24, v25, v26, v27, v28, v29, v30, v31, v135, v97, v100, v103, v106, v109, *(&v109 + 1), v115, v118, time2.value, *&time2.timescale, time2.epoch, v120, v32, v121.value);
      IsWithinTolerance = faqrp_timeDifferenceIsWithinTolerance(&v135, &rhs, &kMomentsAreCloseThreshold);
      if (IsWithinTolerance || (v135 = *(DerivedStorage + 580), *&v136 = *(DerivedStorage + 596), OUTLINED_FUNCTION_72_9(IsWithinTolerance, v34, v35, v36, v37, v38, v39, v40, v135, v98, v101, v104, v107, v110, v113, v116, v118, time2.value, *&time2.timescale, time2.epoch, v120, v41, v121.value), faqrp_timeDifferenceIsWithinTolerance(&v135, &rhs, &kMomentsAreCloseThreshold)))
      {
LABEL_28:
        v13 = 0;
        goto LABEL_29;
      }

      v42 = *MEMORY[0x1E695E4C0];
      v118 = *MEMORY[0x1E695E4C0];
      FigPlaybackItemGetFigBaseObject();
      v108 = v43;
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v44)
      {
        v44(v108, @"IsPlayingIFrameOnly", *MEMORY[0x1E695E480], &v118);
        v42 = v118;
      }

      if (v5)
      {
        v45 = 1;
      }

      else
      {
        v45 = v42 == *MEMORY[0x1E695E4D0];
      }

      v46 = v45;
      LODWORD(v108) = v46;
      v105 = CMBaseObjectGetDerivedStorage();
      v47 = *(v105 + 892);
      *(v105 + 892) = FPSupport_IncrementSeekID(v47);
      *(DerivedStorage + 888) = v47;
      epoch = v121.epoch;
      *(DerivedStorage + 572) = v121.epoch;
      v49 = *&v121.value;
      *(DerivedStorage + 556) = *&v121.value;
      *(DerivedStorage + 596) = epoch;
      *(DerivedStorage + 580) = v49;
      fpic_passImageQueueGaugeBetweenPlayers(v9, *(DerivedStorage + 160), v3);
      if (dword_1EAF178D0)
      {
        LODWORD(time2.value) = 0;
        HIBYTE(v117) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_28();
        if (v47)
        {
          v135 = *&v123.value;
          *&v136 = v123.epoch;
          v58.n128_f64[0] = CMTimeGetSeconds(&v135);
          v59 = v58.n128_u64[0];
          v60 = *(DerivedStorage + 160);
          LODWORD(v105) = *(DerivedStorage + 888);
          OUTLINED_FUNCTION_191_2(v61, v62, v63, v64, v65, v66, v67, v68, v58, p_rhs, v102, v105, v108, v111, v114, v117, v118, time2.value, *&time2.timescale, time2.epoch, v120, v69, v121.value);
          Seconds = CMTimeGetSeconds(&v135);
          LODWORD(rhs.value) = 136316674;
          *(&rhs.value + 4) = "fpic_ApplyResumptionOffset";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v9;
          HIWORD(rhs.epoch) = 2048;
          v126 = v59;
          v127 = 2048;
          v128 = v60;
          v129 = 1024;
          v130 = v105;
          v131 = 1024;
          v132 = v5;
          v133 = 2048;
          v134 = Seconds;
          LODWORD(v102) = 64;
          p_rhs = &rhs;
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl(v71, v72, v73, v74, v75, v76, 0, v77);
        }

        OUTLINED_FUNCTION_7();
        v55.n128_f64[0] = OUTLINED_FUNCTION_417(v78, v79, v80, v81, v82);
      }

      if (v108)
      {
        v83 = 502;
      }

      else
      {
        v83 = 501;
      }

      OUTLINED_FUNCTION_191_2(*(DerivedStorage + 160), v50, v83, v51, v52, *(DerivedStorage + 888), v53, v54, v55, p_rhs, v102, v105, v108, v111, v114, v117, v118, time2.value, *&time2.timescale, time2.epoch, v120, v56, v121.value);
      *&rhs.value = v112;
      rhs.epoch = v11;
      *&time2.value = v112;
      time2.epoch = v11;
      if (FPSupport_SetCurrentTimeWithRangeIDAndReason(v84, &v135, v85, &rhs.value, &time2.value, v86, 6))
      {
        goto LABEL_48;
      }

      v13 = 1;
    }
  }

LABEL_29:
  if (v1)
  {
    *v1 = v13;
  }

  OUTLINED_FUNCTION_191();
}