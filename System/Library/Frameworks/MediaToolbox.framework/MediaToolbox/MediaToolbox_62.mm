void figAssetExportSettings_figExportSettingsForExportPresetOnce(CFDictionaryRef *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x19A8D1510](*MEMORY[0x1E695E480], @"com.apple.MediaToolbox", @"AVAssetExportPresetsBase.plist");
  v4 = MEMORY[0x19A8D1510](v2, @"com.apple.MediaToolbox", @"AVAssetExportPresets.plist");
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    FigGetAllocatorForPermanentAllocations();
    FigCFCreateCombinedDictionary();
    CFRelease(v3);
LABEL_8:
    CFRelease(v5);
    return;
  }

  if (v3)
  {
    AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
    *a1 = CFDictionaryCreateCopy(AllocatorForPermanentAllocations, v3);
    CFRelease(v3);
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v8 = FigGetAllocatorForPermanentAllocations();
    *a1 = CFDictionaryCreateCopy(v8, v5);
    goto LABEL_8;
  }
}

double FigExportSettingsCalculateOutputDimensions(uint64_t a1, double a2, double a3)
{
  CGFloatIfPresent = FigCFDictionaryGetCGFloatIfPresent();
  v6 = FigCFDictionaryGetCGFloatIfPresent();
  if (CGFloatIfPresent)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    return 0.0;
  }

  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
  v9 = FigCFDictionaryGetFloatIfPresent();
  if (FigCFDictionaryGetFloatIfPresent() && a2 * a3 > 0.0)
  {
    v10 = a2 - sqrt(a2 * 0.0 / a3);
    v11 = round((a2 - v10) * 0.25);
    v12 = a3 * v10 / a2;
    a2 = v11 * 4.0;
    a3 = round((a3 - v12) * 0.25) * 4.0;
  }

  if (FloatIfPresent | v9)
  {
    if (FloatIfPresent && a2 >= 1.0 && (v13 = 0.0, a2 > 0.0))
    {
      a3 = round(a3 * 0.0 / a2 * 0.25) * 4.0;
      if (!v9)
      {
        return v13;
      }
    }

    else
    {
      v13 = a2;
      if (!v9)
      {
        return v13;
      }
    }

    if (a3 >= 1.0 && a3 > 0.0)
    {
      return round(v13 * 0.0 / a3 * 0.25) * 4.0;
    }

    return v13;
  }

  return a2;
}

uint64_t FigExportSettingsAverageBitRateForSourceAndExportPreset(uint64_t a1, double a2, double a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = FigExportSettingsCalculateOutputDimensions(a1, a2, a3);
  if (!a1)
  {
    return 0;
  }

  v13 = v11;
  v14 = v12;
  if (qword_1ED4CB780 != -1)
  {
    FigExportSettingsAverageBitRateForSourceAndExportPreset_cold_1(v10);
  }

  if (!qword_1ED4CB778)
  {
    goto LABEL_100;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    if (FigCFEqual())
    {
      v15 = @"AVAssetExportBitRateBasicSquare";
      goto LABEL_16;
    }

    v15 = @"AVAssetExportBitRateBasic";
LABEL_15:
    if (FigCFEqual())
    {
      goto LABEL_16;
    }

LABEL_100:
    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    v15 = @"AVAssetExportBitRateHEVCBasic";
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    v15 = @"AVAssetExportBitRateMVHEVCSquare";
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    v15 = @"AVAssetExportBitRateYouTubeHD";
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (!FigCFEqual())
    {
      v15 = @"AVAssetExportBitRateMessage";
      goto LABEL_15;
    }

    v15 = @"AVAssetExportBitRateMessageSquare";
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    v15 = @"AVAssetExportBitRateAVCAnimoji";
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual())
  {
LABEL_87:
    v15 = @"AVAssetExportBitRateICPL";
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (FigCFEqual())
    {
      v15 = @"AVAssetExportBitRateICPLSquare";
      goto LABEL_16;
    }

    goto LABEL_87;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    goto LABEL_95;
  }

  if (!FigCFEqual() && !FigCFEqual())
  {
    goto LABEL_100;
  }

  if (!FigCFEqual())
  {
LABEL_95:
    v15 = @"AVAssetExportBitRateICPLHEVC";
    goto LABEL_15;
  }

  v15 = @"AVAssetExportBitRateICPLHEVCSquare";
LABEL_16:
  Value = CFDictionaryGetValue(qword_1ED4CB778, v15);
  if (!Value)
  {
    goto LABEL_100;
  }

  v18 = CFDictionaryGetValue(Value, @"BitRateTiers");
  if (!v18)
  {
    goto LABEL_100;
  }

  v19 = v18;
  Count = CFArrayGetCount(v18);
  if (Count < 1)
  {
    goto LABEL_100;
  }

  v21 = Count;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v13 + 30;
  if (v13 >= -15)
  {
    v25 = v13 + 15;
  }

  v26 = v25 >> 4;
  v27 = v14 + 30;
  if (v14 >= -15)
  {
    v27 = v14 + 15;
  }

  v28 = v26 * (v27 >> 4);
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v24);
    v30 = exportSettings_tierDimension(ValueAtIndex);
    if (!v22)
    {
      goto LABEL_31;
    }

    v32 = v30 + 30;
    if (v30 >= -15)
    {
      v32 = v30 + 15;
    }

    v33 = v32 >> 4;
    v34 = v31 + 30;
    if (v31 >= -15)
    {
      v34 = v31 + 15;
    }

    if (v28 > v33 * (v34 >> 4))
    {
      ++v24;
    }

    else
    {
LABEL_31:
      if (++v24 >= v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = CFArrayGetValueAtIndex(v19, v24);
      }

      v22 = ValueAtIndex;
    }
  }

  while (v24 != v21);
  if (!v22)
  {
    goto LABEL_100;
  }

  FigCFDictionaryGetFloatIfPresent();
  v35 = 0.0;
  if (v23)
  {
    v36 = exportSettings_tierDimension(v22);
    v38 = v36 + 30;
    if (v36 >= -15)
    {
      v38 = v36 + 15;
    }

    v39 = v38 >> 4;
    v40 = v37 + 30;
    if (v37 >= -15)
    {
      v40 = v37 + 15;
    }

    v41 = v39 * (v40 >> 4);
    FigCFDictionaryGetFloatIfPresent();
    v42 = exportSettings_tierDimension(v23);
    v44 = v43;
    FigCFDictionaryGetFloatIfPresent();
    if (v28 <= v41)
    {
      v45 = v42 + 30;
      if (v42 >= -15)
      {
        v45 = v42 + 15;
      }

      v46 = v45 >> 4;
      v47 = v44 + 30;
      if (v44 >= -15)
      {
        v47 = v44 + 15;
      }

      v35 = ((0.0 - 0.0) * ((v28 - v46 * (v47 >> 4)) / (v41 - v46 * (v47 >> 4)))) + 0.0;
    }
  }

  FigCFDictionaryGetFloat32IfPresent();
  FigCFDictionaryGetFloat32IfPresent();
  v48 = (a4 / 0.0);
  if ((a4 / 0.0) >= 0.5)
  {
    v50 = v48 * 0.5 + 0.5;
  }

  else
  {
    v49 = v48 < 0.3;
    v50 = v48 * 3.25 + -0.875;
    if (v49)
    {
      v50 = 0.1;
    }
  }

  v51 = v35 * v50;
  Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();
  v53 = 0.0;
  if (v51 <= 0.0)
  {
    v53 = v51;
  }

  if (Float32IfPresent)
  {
    v51 = v53;
  }

  v54 = FigCFDictionaryGetFloat32IfPresent();
  v55 = 0.0;
  if (v51 >= 0.0)
  {
    v55 = v51;
  }

  if (!v54)
  {
    v55 = v51;
  }

  v16 = v55;
  FigCFDictionaryGetInt32IfPresent();
  return v16;
}

uint64_t FigExportSettingsGetHDRType(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965D88]);
  CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);
  CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F98]);
  v3 = 1;
  if (MediaSubType <= 1752589104)
  {
    if (MediaSubType > 1685481572)
    {
      if (MediaSubType > 1718908527)
      {
        if (MediaSubType == 1718908528)
        {
          goto LABEL_28;
        }

        v4 = 1751479857;
      }

      else
      {
        if (MediaSubType == 1685481573)
        {
          goto LABEL_28;
        }

        v4 = 1718908520;
      }
    }

    else if (MediaSubType > 1684895095)
    {
      if (MediaSubType == 1684895096)
      {
        goto LABEL_28;
      }

      v4 = 1685481521;
    }

    else
    {
      if (MediaSubType == 1667524657)
      {
        goto LABEL_28;
      }

      v4 = 1667790435;
    }

    goto LABEL_26;
  }

  if (MediaSubType <= 1902405732)
  {
    if (MediaSubType <= 1869117026)
    {
      if (MediaSubType == 1752589105)
      {
        goto LABEL_28;
      }

      v4 = 1836415073;
      goto LABEL_26;
    }

    if (MediaSubType == 1869117027)
    {
      goto LABEL_28;
    }

    v5 = 26673;
    goto LABEL_25;
  }

  if (MediaSubType <= 1902667125)
  {
    if (MediaSubType == 1902405733)
    {
      goto LABEL_28;
    }

    v5 = 28024;
LABEL_25:
    v4 = v5 | 0x71640000;
    goto LABEL_26;
  }

  if (MediaSubType == 1902667126 || MediaSubType == 1902671459)
  {
    goto LABEL_28;
  }

  v4 = 1902998904;
LABEL_26:
  if (MediaSubType != v4)
  {
    v3 = 0;
  }

LABEL_28:
  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (v3)
  {
    v7 = Extension;
    if (Extension)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v7) && CFDictionaryGetValue(v7, @"dvvC") && FigCFEqual() && FigCFEqual() && FigCFEqual())
      {
        return 20;
      }
    }
  }

  if ((v3 & 1) == 0)
  {
    if (MediaSubType <= 1634743415)
    {
      if (MediaSubType != 1634742376 && MediaSubType != 1634742888)
      {
        v10 = 13416;
LABEL_45:
        if (MediaSubType != (v10 | 0x61700000))
        {
          goto LABEL_52;
        }
      }
    }

    else if (((MediaSubType - 1634755432) > 0xB || ((1 << (MediaSubType - 104)) & 0x8C1) == 0) && ((MediaSubType - 1634759272) > 6 || ((1 << (MediaSubType - 104)) & 0x51) == 0))
    {
      v10 = 13432;
      goto LABEL_45;
    }
  }

  if (CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6960080]) && CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6960020]) && FigCFEqual())
  {
    return 10;
  }

LABEL_52:
  if (FigCFEqual())
  {
    return 17;
  }

  if (FigCFEqual())
  {
    return 9;
  }

  return 0;
}

const __CFArray *FigExportSettingsGetPreferredFormatDescription(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    if (CFArrayGetCount(result) < 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        HDRType = FigExportSettingsGetHDRType(ValueAtIndex);
        if (v3 < HDRType)
        {
          v2 = v4;
        }

        if (v3 <= HDRType)
        {
          v3 = HDRType;
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(v1));
    }

    return CFArrayGetValueAtIndex(v1, v2);
  }

  return result;
}

CFDictionaryRef FigExportSettings_CopyEffectiveColorPropertyForPresetAndInputOutputFormat(CFDictionaryRef theDict, const __CFArray *a2, const __CFDictionary *a3)
{
  v5 = theDict;
  keys[3] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"colorPrimaries");
    Extension = CFDictionaryGetValue(v5, @"transferFunction");
    theDict = CFDictionaryGetValue(v5, @"ycbcrMatrix");
  }

  else
  {
    Extension = 0;
    Value = 0;
  }

  keys[0] = @"colorPrimaries";
  keys[1] = @"transferFunction";
  keys[2] = @"ycbcrMatrix";
  values = 0;
  v25 = 0;
  v26 = 0;
  if (Value && Extension && theDict)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v5 = CFDictionaryGetValue(v5, @"colorPropertyTiers");
  }

  if (a3 && CFDictionaryGetCount(a3) >= 1)
  {
    Value = CFDictionaryGetValue(a3, @"colorPrimaries");
    Extension = CFDictionaryGetValue(a3, @"transferFunction");
    v10 = CFDictionaryGetValue(a3, @"ycbcrMatrix");
  }

  else if (a2 && CFArrayGetCount(a2) >= 1)
  {
    PreferredFormatDescription = FigExportSettingsGetPreferredFormatDescription(a2);
    Value = CMFormatDescriptionGetExtension(PreferredFormatDescription, *MEMORY[0x1E6965D88]);
    Extension = CMFormatDescriptionGetExtension(PreferredFormatDescription, *MEMORY[0x1E6965F30]);
    v10 = CMFormatDescriptionGetExtension(PreferredFormatDescription, *MEMORY[0x1E6965F98]);
  }

  else
  {
    Value = 0;
    Extension = 0;
    v10 = 0;
  }

  cf = v10;
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v13 = Count;
      Copy = 0;
      v14 = 0;
      allocator = *MEMORY[0x1E695E480];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v14);
        v16 = ValueAtIndex;
        if (Copy)
        {
          CFDictionaryGetValue(ValueAtIndex, @"colorPrimaries");
          CFDictionaryGetValue(v16, @"transferFunction");
          CFDictionaryGetValue(v16, @"ycbcrMatrix");
          if (FigCFEqual() && FigCFEqual() && FigCFEqual())
          {
            CFRelease(Copy);
            v21 = CFRetain(v16);
            Copy = v21;
            if (v21)
            {
              return Copy;
            }

LABEL_31:
            if (!Value)
            {
              return Copy;
            }

            v17 = CFGetTypeID(Value);
            Copy = 0;
            if (v17 != CFStringGetTypeID())
            {
              return Copy;
            }

            if (!Extension)
            {
              return Copy;
            }

            v18 = CFGetTypeID(Extension);
            Copy = 0;
            if (v18 != CFStringGetTypeID() || !cf)
            {
              return Copy;
            }

            v19 = CFGetTypeID(cf);
            v20 = v19 == CFStringGetTypeID();
            theDict = cf;
            if (!v20)
            {
              return 0;
            }

LABEL_7:
            values = Value;
            v25 = Extension;
            v26 = theDict;
            return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }
        }

        else
        {
          Copy = CFDictionaryCreateCopy(allocator, ValueAtIndex);
        }

        if (v13 == ++v14)
        {
          goto LABEL_30;
        }
      }
    }
  }

  Copy = 0;
LABEL_30:
  if (!Copy)
  {
    goto LABEL_31;
  }

  return Copy;
}

uint64_t FigExportSettings_GetMaximumBitsPerComponent(CFArrayRef theArray)
{
  v2 = 0;
  v3 = *MEMORY[0x1E695E480];
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v2 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    CMFormatDescriptionGetExtensions(ValueAtIndex);
    if (!FigCFDictionaryGetIntIfPresent())
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
      v7 = CVPixelFormatDescriptionCreateWithPixelFormatType(v3, MediaSubType);
      FigCFDictionaryGetIntIfPresent();
      if (v7)
      {
        CFRelease(v7);
      }
    }

    ++v2;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return 0;
}

double exportSettings_tierDimension(uint64_t a1)
{
  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  return 0.0;
}

uint64_t figAssetExportSettings_bitRateTableForExportPresetOnce(uint64_t *a1)
{
  result = MEMORY[0x19A8D1510](*MEMORY[0x1E695E480], @"com.apple.MediaToolbox", @"AVExportBitRate.plist");
  *a1 = result;
  return result;
}

uint64_t RegisterFigCPEProtectorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCPEProtectorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCPEProtectorGetClassID_sRegisterFigCPEProtectorTypeOnce, RegisterFigCPEProtectorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMetricItemVariantChangeStartEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, CFTypeRef *a14)
{
  ensureMetricEventTrace();
  if (!a14)
  {
    FigMetricItemVariantChangeStartEventCreateInternal_cold_1(&v41);
    return v41;
  }

  FigMetricEventGetClassID();
  v22 = CMDerivedObjectCreate();
  v23 = 0;
  if (!v22)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v25 = FigSimpleMutexCreate();
    *(DerivedStorage + 128) = v25;
    if (v25)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 8;
      if (a3)
      {
        v26 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v26 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v26;
      v28 = *a2;
      *(DerivedStorage + 48) = *(a2 + 2);
      *(DerivedStorage + 32) = v28;
      if (a4)
      {
        v29 = CFRetain(a4);
      }

      else
      {
        v29 = 0;
      }

      *(DerivedStorage + 24) = v29;
      if (a5)
      {
        v30 = CFRetain(a5);
      }

      else
      {
        v30 = 0;
      }

      *(DerivedStorage + 56) = v30;
      if (a6)
      {
        v31 = CFRetain(a6);
      }

      else
      {
        v31 = 0;
      }

      *(DerivedStorage + 64) = v31;
      if (a13)
      {
        v32 = CFRetain(a13);
      }

      else
      {
        v32 = 0;
      }

      *(DerivedStorage + 72) = v32;
      *(DerivedStorage + 80) = a7;
      *(DerivedStorage + 88) = a8;
      *(DerivedStorage + 96) = a9;
      *(DerivedStorage + 104) = a10;
      *(DerivedStorage + 112) = a11;
      *(DerivedStorage + 120) = a12;
      if (a7)
      {
        CFRetain(a7);
        a8 = *(DerivedStorage + 88);
      }

      if (a8)
      {
        CFRetain(a8);
      }

      v33 = *(DerivedStorage + 96);
      if (v33)
      {
        CFRetain(v33);
      }

      v34 = *(DerivedStorage + 104);
      if (v34)
      {
        CFRetain(v34);
      }

      v35 = *(DerivedStorage + 112);
      if (v35)
      {
        CFRetain(v35);
      }

      v36 = *(DerivedStorage + 120);
      if (v36)
      {
        CFRetain(v36);
      }

      v22 = 0;
      *a14 = 0;
      return v22;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, a14, 0);
    v22 = v38;
    v23 = cf;
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v22;
}

uint64_t meivcs_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[8];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[10];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[11];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[12];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[13];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[14];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[15];
  if (v12)
  {
    CFRelease(v12);
  }

  return FigSimpleMutexDestroy();
}

uint64_t meivcs_setImmutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t meivcs_isMutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef meivcs_copySessionID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t meivcs_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    meivcs_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t meivcs_getMediaTime@<X0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 32);
  *(a2 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t meivcs_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    meivcs_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t __mr_ensureClientEstablished_block_invoke(uint64_t a1)
{
  result = FigXPCRemoteClientCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t manifoldRemote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

uint64_t manifoldRemote_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v12 = 0;
  v13 = 0;
  cf = 0;
  xdict = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    manifoldRemote_copyProperty_cold_1(&v14);
    v8 = v14;
  }

  else
  {
    if (a4)
    {
      BlockBufferData = FigXPCCreateBasicMessage();
      if (BlockBufferData)
      {
        goto LABEL_16;
      }

      BlockBufferData = FigXPCMessageSetCFString();
      if (BlockBufferData)
      {
        goto LABEL_16;
      }

      BlockBufferData = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (BlockBufferData)
      {
        goto LABEL_16;
      }

      if (FigCFEqual())
      {
        uint64 = xpc_dictionary_get_uint64(xdict, "formatReader");
        if (!uint64)
        {
          goto LABEL_10;
        }

        BlockBufferData = FigFormatReaderXPCRemoteRetainCopiedFormatReader(uint64, 1, &cf);
        if (!BlockBufferData)
        {
          BlockBufferData = FigAssetCreateWithFormatReader(a3, cf, 0, 0, &v13);
          if (!BlockBufferData)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_16;
      }

      if (FigCFEqual())
      {
        BlockBufferData = FigXPCMessageCreateBlockBufferData();
        if (BlockBufferData)
        {
LABEL_16:
          v8 = BlockBufferData;
          goto LABEL_17;
        }
      }

      else
      {
        BlockBufferData = FigXPCMessageCopyCFObject();
        if (BlockBufferData)
        {
          goto LABEL_16;
        }
      }

LABEL_10:
      v8 = 0;
      *a4 = v13;
      v13 = 0;
      goto LABEL_11;
    }

    v8 = 0;
  }

LABEL_17:
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t manifoldRemote_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    manifoldRemote_setProperty_cold_1(&v4);
    return v4;
  }

  else
  {

    return FigXPCSendStdSetPropertyMessage();
  }
}

void *__copy_constructor_8_8_pa0_6124_0_pa0_43336_8_pa0_40812_16(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  return result;
}

uint64_t __FigManifoldRemoteCallbackInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB7A0 = result;
  return result;
}

CFStringRef manifoldCallbackInfo_copyDebugDesc(void *a1)
{
  if (a1[2])
  {
    v1 = a1[2];
  }

  else
  {
    v1 = 0;
  }

  if (a1[3])
  {
    v2 = a1[3];
  }

  else
  {
    v2 = 0;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigManifoldCallbackInfo %p outputCallbacks %p %p %p refCon %p]", a1, v1, v2, a1[4], a1[5]);
}

uint64_t OUTLINED_FUNCTION_6_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return FigXPCMessageGetInt32();
}

uint64_t OUTLINED_FUNCTION_7_81(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t xdict)
{

  return manifoldRemote_processPendingCallbacks(v9, xdict);
}

uint64_t OUTLINED_FUNCTION_8_65(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigTTMLRegionCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    FigTTMLRegionCreate_cold_2(&v16);
    return v16;
  }

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

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v15 = 213;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 216;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLRegionConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}

uint64_t FigTTMLRegionCreateDefault(const __CFAllocator *a1, __int128 *a2, CFTypeRef *a3)
{
  if (!a3)
  {
    FigTTMLRegionCreateDefault_cold_2(&v13);
    return v13;
  }

  FigTTMLNodeGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a2);
  if (v6)
  {
    return v6;
  }

  CFDictionaryAddValue(*(DerivedStorage + 24), @"http://www.w3.org/XML/1998/namespace id", &stru_1F0B1AFB8);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v12 = 256;
LABEL_12:
    FigTTMLBodyCreate_cold_1(v12, &v13);
    return v13;
  }

  v9 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v9;
  if (!v9)
  {
    v12 = 259;
    goto LABEL_12;
  }

  v10 = 0;
  *a3 = 0;
  return v10;
}

void FigTTMLRegionCopyID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    cf = 0;
    if (CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"http://www.w3.org/XML/1998/namespace id", &cf))
    {
      if (cf)
      {
        v4 = CFRetain(cf);
      }

      else
      {
        v4 = 0;
      }

      *a2 = v4;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v6, v7[1]);
    }
  }

  else
  {
    FigTTMLRegionCopyID_cold_1(v7);
  }
}

void figTTMLRegion_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
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
}

CFStringRef figTTMLRegion_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"region: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLRegion_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = FigCFArrayCreateConcatenationOfTwoArrays();
  }

  else
  {
    figTTMLRegion_CopyChildNodeArray_cold_1(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v12, v13, SHIDWORD(v13), vars0);
  }

  return 0;
}

uint64_t figTTMLRegion_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 10;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLRegion_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

__CFString *FigByteFlumeCustomURLCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigByteFlumeCustomURL <%p>\n", DerivedStorage);
  if (FigRetainProxyIsInvalidated())
  {
    v3 = @" Invalidated\n";
  }

  else
  {
    CFStringAppend(Mutable, @" Original URL      : ");
    v3 = *(DerivedStorage + 88);
  }

  CFStringAppend(Mutable, v3);
  return Mutable;
}

uint64_t FigByteFlumeCustomURLCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  keys[3] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    return 4294954511;
  }

  v9 = *(DerivedStorage + 56);
  if (v9)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      return 4294954514;
    }

    return v10(v9, a2, a3, a4);
  }

  if (CFEqual(a2, @"FBF_URL"))
  {
    v11 = *(DerivedStorage + 280);
    if (!v11)
    {
      v11 = *(DerivedStorage + 80);
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"FBF_HTTPResponseHeaders"))
  {
    v11 = *(DerivedStorage + 168);
    if (v11)
    {
LABEL_15:
      v13 = CFRetain(v11);
LABEL_16:
      v12 = v13;
      goto LABEL_17;
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"FBF_EntireLength"))
  {
    if (!*(DerivedStorage + 200))
    {
      return 4294954357;
    }

    v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (DerivedStorage + 192));
    goto LABEL_16;
  }

  if (!CFEqual(a2, @"FBF_BandwidthInfo"))
  {
    if (CFEqual(a2, @"FBF_NoCache"))
    {
      if (!*(DerivedStorage + 288))
      {
        return 4294954513;
      }

      v19 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (CFEqual(a2, @"FBF_MIMEType"))
      {
        v11 = *(DerivedStorage + 184);
        if (v11)
        {
          goto LABEL_15;
        }

        return 4294954513;
      }

      if (CFEqual(a2, @"FBF_StorageSession"))
      {
        return 4294954513;
      }

      if (!CFEqual(a2, @"FBF_EntireLengthAvailableOnDemand"))
      {
        if (CFEqual(a2, @"FBF_ReportingAgent"))
        {
          v11 = *(DerivedStorage + 32);
          if (!v11)
          {
LABEL_12:
            v12 = 0;
LABEL_17:
            result = 0;
            *a4 = v12;
            return result;
          }
        }

        else
        {
          if (!CFEqual(a2, @"FBF_ClientBundleIdentifier"))
          {
            return 4294954512;
          }

          v11 = *(DerivedStorage + 208);
          if (!v11)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_15;
      }

      v19 = MEMORY[0x1E695E4D0];
      if (!*(DerivedStorage + 289))
      {
        v19 = MEMORY[0x1E695E4C0];
      }
    }

    v11 = *v19;
    goto LABEL_15;
  }

  v21 = 0;
  valuePtr = 0.0;
  v20 = 0;
  keys[0] = @"FBF_BandwidthSample";
  keys[1] = @"FBF_BandwidthMovingAverage";
  keys[2] = @"FBF_BandwidthStandardDeviation";
  v14 = *(DerivedStorage + 224);
  if (!v14)
  {
    return 4294954513;
  }

  FigByteRateHistoryReportAverage(v14, &valuePtr, &v20);
  if (FigByteRateHistoryHasCompleteSample(*(DerivedStorage + 224)))
  {
    FigByteRateHistoryReportMovingAverage(*(DerivedStorage + 224), &v21);
  }

  if (valuePtr <= 0.0)
  {
    return 4294954513;
  }

  v15 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  values[1] = CFNumberCreate(v15, kCFNumberDoubleType, &v21);
  values[2] = CFNumberCreate(v15, kCFNumberDoubleType, &v20);
  v16 = CFDictionaryCreate(a3, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 0;
  *a4 = v16;
  do
  {
    v18 = values[v17];
    if (v18)
    {
      CFRelease(v18);
    }

    ++v17;
  }

  while (v17 != 3);
  return 0;
}

uint64_t FigByteFlumeCustomURLSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v9 = 4294954511;
    goto LABEL_12;
  }

  if (!a2)
  {
    FigByteFlumeCustomURLSetProperty_cold_1(&v11);
    v9 = v11;
    goto LABEL_12;
  }

  v6 = *(DerivedStorage + 56);
  if (!v6)
  {
    FigByteFlumeCustomURLSetProperty_cold_2(a2, DerivedStorage, a3, &v12);
    v9 = v12;
LABEL_12:
    FigRetainProxyUnlockMutex();
    return v9;
  }

  v7 = CFRetain(v6);
  FigRetainProxyUnlockMutex();
  if (!v7)
  {
    return 0;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v9 = v8(v7, a2, a3);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v7);
  return v9;
}

uint64_t figByteFlumeCancelCustomURLRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

void fbfcu_ReleaseReadRequest(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 14) - 1;
  *(a1 + 14) = v3;
  if (!v3)
  {

    free(a1);
  }
}

uint64_t FigByteFlumeCustomURLRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, void *a8)
{
  v8 = 4294954365;
  if (a3 && a5)
  {
    FigByteFlumeGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      v8 = 4294954511;
    }

    else
    {
      v17 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E0040628CCBB7uLL);
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        *v18 = a2;
        v18[1] = a3;
        v18[2] = 0;
        if (a6)
        {
          v19 = CFRetain(a6);
        }

        v18[5] = v19;
        v18[6] = a7;
        *(v18 + 14) = 1;
        v18[4] = a5;
        if (!DerivedStorage[18])
        {
          DerivedStorage[29] = FigGetUpTimeNanoseconds();
        }

        v20 = fbfcu_AskForResponse(a1, *v18, v18[1], v18 + 8);
        if (v20)
        {
          v8 = v20;
          fbfcu_ReleaseReadRequest(v18);
        }

        else
        {
          v18[11] = 0;
          v21 = DerivedStorage[19];
          v18[12] = v21;
          *v21 = v18;
          DerivedStorage[19] = v18 + 11;
          v8 = 0;
          if (a8)
          {
            *a8 = v18[8];
          }
        }
      }

      else
      {
        FigByteFlumeCustomURLRead_cold_1(&v23);
        v8 = v23;
      }
    }

    FigRetainProxyUnlockMutex();
  }

  return v8;
}

uint64_t FigByteFlumeCustomURLCopyIdentifier(uint64_t a1, CFDictionaryRef *a2)
{
  value = 0;
  if (!a1)
  {
    FigByteFlumeCustomURLCopyIdentifier_cold_6(&v25);
    goto LABEL_37;
  }

  FigByteFlumeGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigByteFlumeCustomURLCopyIdentifier_cold_5(&v25);
    goto LABEL_37;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 56);
  if (!v5)
  {
    valuePtr = 1;
    if (a2)
    {
      *a2 = 0;
      if (*(DerivedStorage + 216) != 2)
      {
        return 4294954513;
      }

      if (*(DerivedStorage + 88))
      {
        FigByteFlumeGetFigBaseObject();
        v10 = v9;
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v11)
        {
          v8 = 4294954514;
          goto LABEL_29;
        }

        v12 = *MEMORY[0x1E695E480];
        v13 = v11(v10, @"FBF_EntireLength", *MEMORY[0x1E695E480], &value);
        if (v13)
        {
          v8 = v13;
LABEL_29:
          if (value)
          {
            CFRelease(value);
          }

          return v8;
        }

        v14 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
        if (v14)
        {
          v15 = v14;
          Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v17 = Mutable;
            CFDictionarySetValue(Mutable, @"Version", v15);
            CFDictionarySetValue(v17, @"URL", *(v4 + 88));
            CFDictionarySetValue(v17, @"Size", value);
            v18 = MEMORY[0x1E695E4D0];
            if (!*(v4 + 288))
            {
              v18 = MEMORY[0x1E695E4C0];
            }

            CFDictionarySetValue(v17, @"no-cache", *v18);
            v19 = *(v4 + 120);
            if (v19)
            {
              v20 = CFDictionaryGetValue(v19, @"Last-Modified");
              if (v20)
              {
                CFDictionarySetValue(v17, @"Last-Modified", v20);
              }

              v21 = CFDictionaryGetValue(*(v4 + 120), @"ETag");
              if (v21)
              {
                CFDictionarySetValue(v17, @"ETag", v21);
              }

              v22 = CFDictionaryGetValue(*(v4 + 120), @"ETag weak");
              if (v22)
              {
                CFDictionarySetValue(v17, @"ETag weak", v22);
              }
            }

            *a2 = CFDictionaryCreateCopy(v12, v17);
            CFRelease(v17);
            v8 = 0;
          }

          else
          {
            FigByteFlumeCustomURLCopyIdentifier_cold_1(&v25);
            v8 = v25;
          }

          CFRelease(v15);
          goto LABEL_29;
        }

        FigByteFlumeCustomURLCopyIdentifier_cold_2(&v25);
      }

      else
      {
        FigByteFlumeCustomURLCopyIdentifier_cold_3(&v25);
      }
    }

    else
    {
      FigByteFlumeCustomURLCopyIdentifier_cold_4(&v25);
    }

LABEL_37:
    v8 = v25;
    goto LABEL_29;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2);
}

uint64_t FigByteFlumeCustomURLOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      v7 = 4294954511;
    }

    else if (*(DerivedStorage + 216))
    {
      FigByteFlumeCustomURLOpen_cold_1(&v9);
      v7 = v9;
    }

    else if (*(DerivedStorage + 48))
    {
      *(DerivedStorage + 248) = a2;
      *(DerivedStorage + 256) = a3;
      *(DerivedStorage + 216) = 1;
      v7 = fbfcu_AskForResponse(a1, 0, 2, (DerivedStorage + 272));
      if (v7)
      {
        *(DerivedStorage + 248) = 0;
        *(DerivedStorage + 256) = 0;
      }
    }

    else
    {
      FigByteFlumeCustomURLOpen_cold_2(&v10);
      v7 = v10;
    }

    FigRetainProxyUnlockMutex();
  }

  else
  {
    FigByteFlumeCustomURLOpen_cold_3(&v11);
    return v11;
  }

  return v7;
}

uint64_t fbfcu_copyAllowedHTTPHeaders(const __CFDictionary *a1, CFDictionaryRef *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  keys = 0;
  v12[0] = 0;
  value = 0;
  v10 = 0;
  *a2 = 0;
  if (!CFDictionaryGetValueIfPresent(a1, @"Client-Daap-Validation", &value))
  {
    if (!CFDictionaryGetValueIfPresent(a1, @"Client-Daap-Request-Id", &value))
    {
      v6 = 0;
      goto LABEL_9;
    }

    p_keys = &keys;
    v5 = 1;
    goto LABEL_6;
  }

  keys = @"Client-Daap-Validation";
  if (CFDictionaryGetValueIfPresent(a1, @"Client-Daap-Request-Id", &v10))
  {
    p_keys = v12;
    v5 = 2;
LABEL_6:
    *p_keys = @"Client-Daap-Request-Id";
    goto LABEL_8;
  }

  v5 = 1;
LABEL_8:
  v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &value, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v6)
  {
    fbfcu_copyAllowedHTTPHeaders_cold_1(&v8);
    return v8;
  }

LABEL_9:
  result = 0;
  *a2 = v6;
  return result;
}

void fbfcu_FinishRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v9 = (a1 + 152);
  if (v7)
  {
    v9 = (v7 + 96);
  }

  *v9 = v8;
  *v8 = v7;
  (*(a2 + 32))(*(a2 + 40), *(a2 + 48), *(a2 + 64), a3, a4, a5 | 1u, a6);

  fbfcu_ReleaseReadRequest(a2);
}

void OUTLINED_FUNCTION_1_161(uint64_t a1@<X8>)
{
  if (a1)
  {
    v2 = (a1 + 96);
  }

  *v2 = v1;
  *v1 = a1;
}

uint64_t MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArrayWithDefaultLastSampleDuration(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 104);
  if (v8)
  {
    if (v8 > 0x38E38E38E38E38ELL || (v9 = malloc_type_malloc(72 * v8, 0x1000040FF89C88EuLL)) == 0)
    {
      MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArrayWithDefaultLastSampleDuration_cold_1(&v13);
      return LODWORD(v13.value);
    }

    v10 = v9;
    memcpy(v9, *(a1 + 112), 72 * *(a1 + 104));
    v11 = &v10[72 * *(a1 + 104)];
    MediaSampleTimingGeneratorGetDefaultLastSampleDuration(a1, &v13);
    v11[-3] = v13;
  }

  else
  {
    v10 = 0;
  }

  result = 0;
  *a2 = *(a1 + 96);
  *a3 = *(a1 + 104);
  *a4 = v10;
  return result;
}

CMTime *MediaSampleTimingGeneratorGetDefaultLastSampleDuration@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  *a2 = **&MEMORY[0x1E6960C70];
  if (result->flags == 2)
  {
    v3 = result;
    if (result[6].flags)
    {
      if ((result[5].flags & 1) != 0 && (time1 = **&MEMORY[0x1E6960CC0], v6 = result[5], CMTimeCompare(&time1, &v6)))
      {
        *&a2->value = *&v3[5].value;
        epoch = v3[5].epoch;
      }

      else if (v3[8].flags)
      {
        *&a2->value = *&v3[8].value;
        epoch = v3[8].epoch;
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
        CMTimeMake(&time1, 1, 15);
        *&a2->value = *&time1.value;
        epoch = time1.epoch;
      }

      a2->epoch = epoch;
      epoch_high = HIDWORD(v3->epoch);
      *&time1.value = *&a2->value;
      time1.epoch = epoch;
      return CMTimeConvertScale(a2, &time1, epoch_high, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    }
  }

  return result;
}

uint64_t MediaSampleTimingGeneratorCreateLastMediaSampleTimingInfoArray(uint64_t a1, __int128 *a2, void *a3, void *a4, void *a5)
{
  v10 = *(a1 + 112);
  if (v10 && (*(a2 + 12) & 1) != 0)
  {
    v11 = *(a1 + 20);
    v16 = *a2;
    CMTimeConvertScale(&time1, &v16, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a2 = time1;
    time1 = **&MEMORY[0x1E6960CC0];
    v16 = *a2;
    if (!CMTimeCompare(&time1, &v16))
    {
      CMTimeMake(&time1, 1, *(a1 + 20));
      *a2 = time1;
    }

    v12 = *(a1 + 112) + 72 * *(a1 + 104);
    v13 = *a2;
    *(v12 - 56) = *(a2 + 2);
    *(v12 - 72) = v13;
    v10 = *(a1 + 112);
  }

  *a3 = *(a1 + 96);
  *a4 = *(a1 + 104);
  *a5 = v10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v14 = *a2;
  *(a1 + 208) = *(a2 + 2);
  *(a1 + 192) = v14;
  return 0;
}

void MediaSampleTimingGeneratorRelease(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    free(a1[14]);
    CFAllocatorDeallocate(v2, a1);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t MediaSampleTimingGeneratorSetMediaTimeScale(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      MediaSampleTimingGeneratorSetMediaTimeScale_cold_1(&v4);
      return v4;
    }

    else
    {
      result = 0;
      *(a1 + 20) = a2;
    }
  }

  else
  {
    MediaSampleTimingGeneratorSetMediaTimeScale_cold_2(&v5);
    return v5;
  }

  return result;
}

void MediaSampleTimingGeneratorReset(uint64_t a1)
{
  v2 = MEMORY[0x1E6960C70];
  v3 = *MEMORY[0x1E6960C70];
  *(a1 + 24) = *MEMORY[0x1E6960C70];
  v4 = *(v2 + 16);
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = v4;
  free(*(a1 + 112));
  *(a1 + 112) = 0;
}

uint64_t getSampleTimingAtIndex(uint64_t a1, uint64_t multiplier, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    v12 = a4 + 72 * multiplier;
    v26 = *v12;
    v13 = *(v12 + 3);
    v27 = *(v12 + 2);
    value = v13;
    flags = *(v12 + 9);
    timescale = *(v12 + 8);
    epoch = *(v12 + 5);
    lhs.value = *(v12 + 6);
    v16 = *(v12 + 15);
    lhs.timescale = *(v12 + 14);
    v17 = *(v12 + 8);
    v18 = 1;
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v25 = **&MEMORY[0x1E6960C70];
  if (multiplier)
  {
    if ((*(a4 + 12) & 1) == 0)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23.value, v23.timescale, LODWORD(v23.epoch));
      return v11;
    }

    v26 = *a4;
    v27 = *(a4 + 2);
    time = *a4;
    CMTimeMultiply(&v25, &time, multiplier);
    lhs = *(a4 + 1);
    v23 = v25;
    CMTimeAdd(&time, &lhs, &v23);
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    lhs = *(a4 + 2);
    value = time.value;
    v23 = v25;
    CMTimeAdd(&time, &lhs, &v23);
    lhs.value = time.value;
    v16 = time.flags;
    lhs.timescale = time.timescale;
    v17 = time.epoch;
  }

  else
  {
    v22 = *(a4 + 3);
    v27 = *(a4 + 2);
    value = v22;
    flags = *(a4 + 9);
    timescale = *(a4 + 8);
    epoch = *(a4 + 5);
    lhs.value = *(a4 + 6);
    v16 = *(a4 + 15);
    lhs.timescale = *(a4 + 14);
    v26 = *a4;
    v17 = *(a4 + 8);
  }

  v18 = a1 - multiplier;
  if ((v16 & 1) == 0)
  {
LABEL_6:
    lhs.value = value;
    lhs.timescale = timescale;
    v16 = flags;
    v17 = epoch;
  }

LABEL_7:
  *a5 = v26;
  v19 = value;
  *(a5 + 16) = v27;
  *(a5 + 24) = v19;
  *(a5 + 32) = timescale;
  *(a5 + 36) = flags;
  v20 = lhs.value;
  *(a5 + 40) = epoch;
  *(a5 + 48) = v20;
  *(a5 + 56) = lhs.timescale;
  *(a5 + 60) = v16;
  *(a5 + 64) = v17;
  v11 = 0;
  if (a6)
  {
    *a6 = v18;
  }

  return v11;
}

void *OUTLINED_FUNCTION_3_126@<X0>(uint64_t a1@<X8>)
{

  return malloc_type_malloc(8 * a1, 0x1000040FF89C88EuLL);
}

__n128 OUTLINED_FUNCTION_5_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a47, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __n128 a48, unint64_t a49)
{
  result = a48;
  v49[3] = a48;
  v49[4].n128_u64[0] = a49;
  return result;
}

void setCuePositionDo(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  if (v3)
  {
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    v22 = *(MEMORY[0x1E695F058] + 16);
    v23 = *MEMORY[0x1E695F058];
    rect.origin = *MEMORY[0x1E695F058];
    rect.size = v22;
    Attribute = CFAttributedStringGetAttribute(v3, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
    if (Attribute)
    {
      CGRectMakeWithDictionaryRepresentation(Attribute, &rect);
    }

    v25.origin = v23;
    v25.size = v22;
    v5 = CFAttributedStringGetAttribute(*(v2 + 56), 0, @"kFigSubtitleRenderer_SuggestTextLayout", &effectiveRange);
    if (v5)
    {
      CGRectMakeWithDictionaryRepresentation(v5, &v25);
    }

    width = rect.size.width;
    __asm { FMOV            V1.2D, #0.5 }

    v24 = _Q1;
    v12 = vsubq_f64(*(a1 + 1), vmulq_f64(rect.size, _Q1));
    rect.origin = v12;
    _Q1.f64[0] = v12.y;
    height = rect.size.height;
    rect = CGRectIntegral(*(&width - 2));
    v14 = v25.size.width;
    v15 = vsubq_f64(*(a1 + 1), vmulq_f64(v25.size, v24));
    v25.origin = v15;
    y = v15.y;
    v17 = v25.size.height;
    v25 = CGRectIntegral(*(&v14 - 2));
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(rect);
    if (DictionaryRepresentation)
    {
      v19 = DictionaryRepresentation;
      v28.length = CFAttributedStringGetLength(*(v2 + 56));
      v28.location = 0;
      CFAttributedStringSetAttribute(*(v2 + 56), v28, @"kFigSubtitleRenderer_SuggestLayout", v19);
      CFRelease(v19);
    }

    v20 = CGRectCreateDictionaryRepresentation(v25);
    if (v20)
    {
      v21 = v20;
      v29.length = CFAttributedStringGetLength(*(v2 + 56));
      v29.location = 0;
      CFAttributedStringSetAttribute(*(v2 + 56), v29, @"kFigSubtitleRenderer_SuggestTextLayout", v21);
      CFRelease(v21);
    }
  }
}

CGFloat getSuggestedBoundsDo(uint64_t *a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    if (*(v2 + 56))
    {
      v3 = a1[2];
      v4 = *(v2 + 40);
      effectiveRange = *(v2 + 24);
      v34 = v4;
      v5 = *MEMORY[0x1E695EFD0];
      v6 = *(MEMORY[0x1E695EFD0] + 16);
      v35 = v4;
      v36 = v5;
      v7 = *(MEMORY[0x1E695EFD0] + 32);
      v37 = v6;
      v38 = v7;
      v8 = [*v2 contentsAreFlipped];
      SubtitleSampleFromAttributedString = FigSubtitleRendererCreateSubtitleSampleFromAttributedString(*(v2 + 56));
      if (SubtitleSampleFromAttributedString)
      {
        v11 = SubtitleSampleFromAttributedString;
        cf = 0;
        v12 = *(MEMORY[0x1E695F058] + 16);
        v30 = *MEMORY[0x1E695F058];
        v31 = v12;
        v13 = *(v2 + 16);
        v23 = v35;
        v24 = v36;
        v25 = v37;
        v26 = v38;
        v22.origin = effectiveRange;
        v22.size = v34;
        v27 = 0;
        v28 = 0xBFF0000000000000;
        v29 = v8;
        FigSubtitleRendererLayout(v13, v11, &v22, &v30, &cf);
        CFRelease(v11);
        v14 = v31;
        *v3 = v30;
        v3[1] = v14;
        AttributedStringFromSubtitleSample = FigSubtitleRendererGetAttributedStringFromSubtitleSample(cf);
        v16 = *(v2 + 56);
        *(v2 + 56) = AttributedStringFromSubtitleSample;
        if (AttributedStringFromSubtitleSample)
        {
          CFRetain(AttributedStringFromSubtitleSample);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  else
  {
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    v17 = *(MEMORY[0x1E695F058] + 16);
    v22.origin = *MEMORY[0x1E695F058];
    v22.size = v17;
    v18 = *(v2 + 56);
    if (v18)
    {
      Attribute = CFAttributedStringGetAttribute(v18, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
      if (Attribute)
      {
        CGRectMakeWithDictionaryRepresentation(Attribute, &v22);
      }
    }

    v20 = a1[2];
    result = v22.origin.x;
    size = v22.size;
    *v20 = v22.origin;
    *(v20 + 16) = size;
  }

  return result;
}

const __CFAttributedString *getContentIDDo_0(uint64_t *a1)
{
  v2 = *a1;
  v4.location = 0;
  v4.length = 0;
  result = *(v2 + 56);
  if (result)
  {
    result = CFAttributedStringGetAttribute(result, 0, *MEMORY[0x1E6960968], &v4);
  }

  *a1[1] = result;
  return result;
}

void setContentDo(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(v2 + 64) = 1;
}

void setRendererDo_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

__n128 setViewportDo_0(uint64_t *a1)
{
  result.n128_u64[0] = a1[3];
  if (result.n128_f64[0] >= 0.0)
  {
    result.n128_u64[0] = a1[4];
    if (result.n128_f64[0] >= 0.0)
    {
      v2 = *a1;
      result = *(a1 + 1);
      *(v2 + 40) = *(a1 + 3);
      *(v2 + 24) = result;
    }
  }

  return result;
}

void sub_196752CD8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t FigMockRenderPipelineFactoryGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigMockRenderPipelineFactoryGetTypeID_sRegisterFigMockRenderPipelineFactoryTypeOnce != -1)
  {
    FigMockRenderPipelineFactoryGetTypeID_cold_1();
  }

  return sFigMockRenderPipelineFactoryID;
}

uint64_t registerFigMockRenderPipelineFactoryType()
{
  result = _CFRuntimeRegisterClass();
  sFigMockRenderPipelineFactoryID = result;
  return result;
}

uint64_t FigMockRenderPipelineFactoryCreate(uint64_t a1, const void *a2, uint64_t a3, const void *a4, void *a5)
{
  if (a5)
  {
    if (a3)
    {
      if (FigMockRenderPipelineFactoryGetTypeID_sRegisterFigMockRenderPipelineFactoryTypeOnce != -1)
      {
        FigMockRenderPipelineFactoryGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v10 = Instance;
        if (a2)
        {
          v11 = CFRetain(a2);
        }

        else
        {
          v11 = 0;
        }

        v10[2] = v11;
        v10[3] = a3;
        if (a4)
        {
          v12 = CFRetain(a4);
        }

        else
        {
          v12 = 0;
        }

        result = 0;
        v10[4] = v12;
        *a5 = v10;
      }

      else
      {
        FigMockRenderPipelineFactoryCreate_cold_2(&v14);
        return v14;
      }
    }

    else
    {
      FigMockRenderPipelineFactoryCreate_cold_3(&v15);
      return v15;
    }
  }

  else
  {
    FigMockRenderPipelineFactoryCreate_cold_4(&v16);
    return v16;
  }

  return result;
}

void *figMockRenderPipelineFactory_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figMockRenderPipelineFactory_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

__CFString *figMockRenderPipelineFactory_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigMockRenderPipelineFactory %p>", a1);
  return Mutable;
}

uint64_t FAIRPLAY_CALL_LOG(uint64_t a1)
{
  if (FAIRPLAY_CALL_LOG_sInitOnce != -1)
  {
    FAIRPLAY_CALL_LOG_cold_1();
  }

  return a1;
}

void FAIRPLAY_CALL_LOG_INIT_ONCE(BOOL *a1)
{
  v2 = MGCopyAnswer();
  *a1 = v2 != *MEMORY[0x1E695E4D0];
  a1[1] = 1;
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigTTMLStylingCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
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
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 136) = Mutable;
      if (Mutable)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        FigTTMLParseNode(a2, figTTMLStyling_ConsumeChildNode, a3);
        v12 = v11;
        if (!v11)
        {
          *a4 = 0;
        }
      }

      else
      {
        FigTTMLStylingCreate_cold_1(&v14);
        return v14;
      }
    }
  }

  else
  {
    FigTTMLStylingCreate_cold_2(&v14);
    return v14;
  }

  return v12;
}

void figTTMLStyling_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLStyling_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"styling: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLStyling_CopyChildNodeArray(const void *a1, CFArrayRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v12 = DerivedStorage;
    v13 = CFGetAllocator(a1);
    *a2 = CFArrayCreateCopy(v13, *(v12 + 136));
  }

  else
  {
    figTTMLStyling_CopyChildNodeArray_cold_1(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v15, v16, SHIDWORD(v16), v17);
  }

  return 0;
}

uint64_t figTTMLStyling_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 12;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLStyling_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigAlternateNSPredicateFilterCreate(uint64_t a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  PredicateWithSubstitutions = createPredicateWithSubstitutions(a2, a3);
  [v8 setObject:PredicateWithSubstitutions atIndexedSubscript:0];

  v12[0] = xmmword_1F0AF2278;
  v12[1] = *&off_1F0AF2288;
  v13 = off_1F0AF2298;
  v10 = FigSimpleAlternateFilterCreate(a1, @"ClientPredicatesFilter", 872, v12, v8, a4);

  return v10;
}

uint64_t clientPredicatesFilter_filter(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [[FigAlternateObjC alloc] initWithFigAlternate:a1];
  v5 = [v3 evaluateWithObject:v4];

  return v5;
}

id createPredicateWithSubstitutions(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4 = [a1 subpredicates];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        do
        {
          v8 = 0;
          do
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            PredicateWithSubstitutions = createPredicateWithSubstitutions(*(*(&v14 + 1) + 8 * v8), a2);
            [v3 addObject:PredicateWithSubstitutions];

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v6);
      }

      v10 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(a1 subpredicates:{"compoundPredicateType"), v3}];
    }

    else
    {
      v10 = [a1 predicateWithSubstitutionVariables:a2];
      v12 = v10;
    }

    return v10;
  }

  else
  {

    return a1;
  }
}

uint64_t FigAlternateMinimumOrMaximumInKeyPathFilterCreate(uint64_t a1, const void *a2, int a3, CFTypeRef *a4)
{
  v4 = faf_lowestInKeyPathComparatorFn;
  v6 = 0uLL;
  if (!a3)
  {
    v4 = faf_highestInKeyPathComparatorFn;
  }

  v7 = 0;
  v8 = v4;
  v9 = 0;
  return FigSimpleAlternateFilterCreate(a1, @"MinOrMaxInKeyPathFilter", 595, &v6, a2, a4);
}

uint64_t faf_highestInKeyPathComparatorFn(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [[FigAlternateObjC alloc] initWithFigAlternate:a1];
  v6 = [[FigAlternateObjC alloc] initWithFigAlternate:a2];
  v7 = [a3 containsString:@"presentationSize"];
  v8 = [(FigAlternateObjC *)v5 valueForKeyPath:a3];
  if (v7)
  {
    [v8 sizeValue];
    v10 = v9;
    [-[FigAlternateObjC valueForKeyPath:](v6 valueForKeyPath:{a3), "sizeValue"}];
  }

  else
  {
    [v8 doubleValue];
    v10 = v12;
    [-[FigAlternateObjC valueForKeyPath:](v6 valueForKeyPath:{a3), "doubleValue"}];
  }

  return (__PAIR128__(v10 < v11, *&v11) - *&v10) >> 64;
}

uint64_t FigAlternateMatchesAnyClientPredicateFilterCreate(uint64_t a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (!v7)
    {
      v17 = 0;
      goto LABEL_18;
    }

    v17 = 0;
    v8 = *v20;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          v10 = [v10 _predicate];
        }

        if (v10)
        {
          PredicateWithSubstitutions = createPredicateWithSubstitutions(v10, a3);
          if (PredicateWithSubstitutions)
          {
            CFArrayAppendValue(v6, PredicateWithSubstitutions);
            v12 = PredicateWithSubstitutions;
            goto LABEL_14;
          }
        }

LABEL_13:
        v12 = 0;
LABEL_14:
      }

      v7 = [a2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (!v7)
      {
LABEL_18:
        v13 = CFRetain(v6);
        CFRelease(v6);
        goto LABEL_19;
      }
    }
  }

  FigAlternateMatchesAnyClientPredicateFilterCreate_cold_1(&v23);
  v13 = 0;
  v17 = v23;
LABEL_19:
  if (!v17)
  {
    v24[0] = xmmword_1F0AF22A0;
    v24[1] = *&off_1F0AF22B0;
    v25 = off_1F0AF22C0;
    v17 = FigSimpleAlternateFilterCreate(a1, @"MatchesAnyClientPredicateFilter", 870, v24, v13, a4);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v17;
}

uint64_t finalSelectionMatchesAnyClientPredicate_filter(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [[FigAlternateObjC alloc] initWithFigAlternate:a1];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a2);
        }

        if ([*(*(&v10 + 1) + 8 * v7) evaluateWithObject:v3])
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

CFStringRef finalSelectionMatchesAnyClientPredicate_copyDescAddendum(uint64_t a1, uint64_t a2)
{
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"predicates: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_162(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return [v26 countByEnumeratingWithState:&a11 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_2_154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return [v19 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

void mediaAccessibilityDidChange(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v4 = DerivedStorage;
    v5 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    if (v5)
    {
      v6 = v5;
      if (a2)
      {
        CFRetain(a2);
      }

      *v6 = a2;
      v7 = *(v4 + 8);

      dispatch_async_f(v7, v6, mediaAccessibilityDidChangeDoAsync_0);
    }

    else
    {
      mediaAccessibilityDidChange_cold_1();
    }
  }
}

void clearMediaAccessibilityParams(uint64_t a1)
{
  *(a1 + 128) = 1;
  v2 = vdupq_n_s64(1uLL);
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  *a1 = v2;
  *(a1 + 16) = v2;
  memset_pattern16((a1 + 64), &xmmword_196E76490, 0x40uLL);
  v3 = *(a1 + 136);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 136) = 0;
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 144) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 152) = 0;
  }

  v6 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 160) = _Q0;
  *(a1 + 176) = _Q0;
  *(a1 + 192) = 0xBFF0000000000000;
  v12 = a1 + 200;
  do
  {
    v13 = *(v12 + v6);
    if (v13)
    {
      CFRelease(v13);
      *(v12 + v6) = 0;
    }

    v6 += 8;
  }

  while (v6 != 64);
  *(a1 + 264) = 0;
}

void mediaAccessibilityDidChangeDoAsync_0(const void **a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  *v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  *cf = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  if (*DerivedStorage)
  {
    v4 = DerivedStorage;
    v5 = MACaptionAppearanceCopyForegroundColor(kMACaptionAppearanceDomainUser, &v28);
    cf[1] = v5;
    if (v5)
    {
      CGColorGetComponents(v5);
    }

    v6 = MACaptionAppearanceCopyBackgroundColor(kMACaptionAppearanceDomainUser, &v28 + 1);
    v37[0] = v6;
    if (v6)
    {
      CGColorGetComponents(v6);
    }

    v7 = MACaptionAppearanceCopyWindowColor(kMACaptionAppearanceDomainUser, &v29);
    v37[1] = v7;
    if (v7)
    {
      CGColorGetComponents(v7);
    }

    *&v38 = MACaptionAppearanceGetForegroundOpacity(kMACaptionAppearanceDomainUser, &v29 + 1);
    *(&v38 + 1) = MACaptionAppearanceGetBackgroundOpacity(kMACaptionAppearanceDomainUser, &v30);
    *&v39 = MACaptionAppearanceGetWindowOpacity(kMACaptionAppearanceDomainUser, &v30 + 1);
    *(&v39 + 1) = MACaptionAppearanceGetWindowRoundedCornerRadius(kMACaptionAppearanceDomainUser, &v31);
    v8 = kMACaptionAppearanceFontStyleDefault;
    *&v40[0] = MACaptionAppearanceGetRelativeCharacterSize(kMACaptionAppearanceDomainUser, &v31 + 1);
    v9 = &v32;
    do
    {
      *(v40 + v8 + 1) = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, v9, v8);
      ++v8;
      ++v9;
    }

    while (v8 != 8);
    *(&v41 + 1) = MACaptionAppearanceGetTextEdgeStyle(kMACaptionAppearanceDomainUser, cf);
    v10 = v29;
    *(v4 + 88) = v28;
    v11 = v33;
    *(v4 + 152) = v32;
    v12 = v30;
    *(v4 + 136) = v31;
    *(v4 + 120) = v12;
    *(v4 + 104) = v10;
    v13 = v34;
    *(v4 + 200) = v35;
    *(v4 + 184) = v13;
    *(v4 + 27) = cf[0];
    *(v4 + 168) = v11;
    v14 = *(v4 + 28);
    v15 = cf[1];
    *(v4 + 28) = cf[1];
    if (v15)
    {
      CFRetain(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v16 = *(v4 + 29);
    v17 = v37[0];
    *(v4 + 29) = v37[0];
    if (v17)
    {
      CFRetain(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v18 = *(v4 + 30);
    v19 = v37[1];
    *(v4 + 30) = v37[1];
    if (v19)
    {
      CFRetain(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    v20 = v39;
    *(v4 + 248) = v38;
    *(v4 + 264) = v20;
    *(v4 + 35) = *&v40[0];
    v21 = (v4 + 288);
    for (i = 25; i != 33; ++i)
    {
      v23 = *v21;
      v24 = *(&v28 + i);
      *v21 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      ++v21;
    }

    *(v4 + 44) = *(&v41 + 1);
    clearMediaAccessibilityParams(&v28);
    v25 = *(v4 + 5);
    if (v25)
    {
      CFRelease(v25);
      *(v4 + 5) = 0;
    }

    if (*(v4 + 2))
    {
      v26 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
      if (!v26)
      {
        mediaAccessibilityDidChangeDoAsync_cold_1();
        if (!v2)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v27 = v26;
      if (v2)
      {
        CFRetain(v2);
      }

      *v27 = v2;
      dispatch_async_f(*(v4 + 2), v27, sendNotificationDoAsync);
    }
  }

  if (v2)
  {
LABEL_36:
    CFRelease(v2);
  }

LABEL_37:
  free(a1);
}

__CFDictionary *FigSubtitleRendererCreateSubtitleSampleFromAttributedString(const void *a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
      if (v4)
      {
        v5 = v4;
        CFArrayAppendValue(v4, a1);
        CFDictionarySetValue(Mutable, @"SubtitleContent", v5);
        valuePtr = 2004251764;
        v6 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        if (v6)
        {
          v7 = v6;
          CFDictionarySetValue(Mutable, @"SubtitleFormat", v6);
          CFRelease(v7);
        }

        else
        {
          FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_1();
        }

        CFRelease(v5);
      }

      else
      {
        FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_2();
      }
    }

    else
    {
      FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_3();
    }
  }

  else
  {
    FigSubtitleRendererCreateSubtitleSampleFromAttributedString_cold_4();
    return 0;
  }

  return Mutable;
}

NSObject *subtitleRendererLayout(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15[0] = a1;
  v15[1] = a2;
  v11 = a3[1];
  v16 = *a3;
  v17 = v11;
  v12 = a3[6];
  v21 = a3[5];
  v22 = v12;
  v13 = a3[4];
  v19 = a3[3];
  v20 = v13;
  v18 = a3[2];
  v23 = a4;
  v24 = a5;
  v25 = &v26;
  result = *(DerivedStorage + 8);
  if (result)
  {
    dispatch_sync_f(result, v15, subtitleRendererLayoutDo);
    return v26;
  }

  return result;
}

NSObject *subtitleRendererDrawSubtitleText(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v14 = 0;
  result = *(CMBaseObjectGetDerivedStorage() + 8);
  if (result)
  {
    context[0] = a1;
    context[1] = a2;
    v7 = a3[1];
    v9 = *a3;
    v10 = v7;
    v11 = a3[2];
    v12 = *(a3 + 6);
    v13 = &v14;
    dispatch_sync_f(result, context, subtitleRendererDrawSubtitleTextDo);
    return v14;
  }

  return result;
}

NSObject *FigSubtitleRendererDrawSubtitleTextDirect(uint64_t a1, CGContext *a2, const __CFString *a3, const __CFDictionary *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (*(CMBaseObjectGetDerivedStorage() + 360))
  {
    *v39 = 0u;
    v40 = 0u;
    cf = 0;
    if (a1)
    {
      if (a2)
      {
        v41.origin.x = a5;
        v41.origin.y = a6;
        v41.size.width = a7;
        v41.size.height = a8;
        if (!CGRectEqualToRect(v41, *MEMORY[0x1E695F050]) && a7 > 1.0 && a8 > 1.0)
        {
          SubtitleSample = CreateSubtitleSample(a3, a4);
          if (SubtitleSample)
          {
            transform.a = a5;
            transform.b = a6;
            transform.c = a7;
            transform.d = a8;
            transform.tx = a7;
            transform.ty = a8;
            v17 = *(MEMORY[0x1E695EFD0] + 16);
            v32 = *MEMORY[0x1E695EFD0];
            v33 = v17;
            v34 = *(MEMORY[0x1E695EFD0] + 32);
            v35 = 0;
            v36 = 0xBFF0000000000000;
            v37 = 1;
            v18 = subtitleRendererLayout(a1, SubtitleSample, &transform, v39, &cf);
            if (!v18)
            {
              transform.b = 0.0;
              transform.c = 0.0;
              transform.a = 1.0;
              *&transform.d = xmmword_196E77200;
              transform.ty = a8;
              CGContextConcatCTM(a2, &transform);
              *&transform.a = a2;
              transform.b = 1.0;
              transform.c = 0.0;
              transform.d = 0.0;
              *&transform.tx = xmmword_196E77200;
              *&v32 = a8;
              v18 = subtitleRendererDrawSubtitleText(a1, cf, &transform);
            }

            a_low = v18;
            goto LABEL_11;
          }

          FigSubtitleRendererDrawSubtitleTextDirect_cold_1(&transform);
LABEL_30:
          a_low = LODWORD(transform.a);
LABEL_11:
          if (cf)
          {
            CFRelease(cf);
          }

          if (SubtitleSample)
          {
            CFRelease(SubtitleSample);
          }

          return a_low;
        }

        FigSubtitleRendererDrawSubtitleTextDirect_cold_2(&transform);
      }

      else
      {
        FigSubtitleRendererDrawSubtitleTextDirect_cold_3(&transform);
      }
    }

    else
    {
      FigSubtitleRendererDrawSubtitleTextDirect_cold_4(&transform);
    }

    SubtitleSample = 0;
    goto LABEL_30;
  }

  if (!a1)
  {
    FigSubtitleRendererDrawSubtitleTextDirect_cold_8(&transform);
    return LODWORD(transform.a);
  }

  if (!a2)
  {
    FigSubtitleRendererDrawSubtitleTextDirect_cold_7(&transform);
    return LODWORD(transform.a);
  }

  v20 = *MEMORY[0x1E695F050];
  v21 = *(MEMORY[0x1E695F050] + 8);
  v22 = *(MEMORY[0x1E695F050] + 16);
  v23 = *(MEMORY[0x1E695F050] + 24);
  v42.origin.x = a5;
  v42.origin.y = a6;
  v42.size.width = a7;
  v42.size.height = a8;
  v43.origin.x = *MEMORY[0x1E695F050];
  v43.origin.y = v21;
  v43.size.width = v22;
  v43.size.height = v23;
  if (CGRectEqualToRect(v42, v43) || a7 <= 1.0 || a8 <= 1.0)
  {
    FigSubtitleRendererDrawSubtitleTextDirect_cold_6(&transform);
    return LODWORD(transform.a);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCaptionRendererSessionClear(*(DerivedStorage + 368));
  FigCaptionRendererSessionSetLayoutContext_Viewport(*(DerivedStorage + 368));
  FigCaptionRendererSessionSetLayoutContext_VideoSize(*(DerivedStorage + 368), a7, a8);
  FigCaptionRendererSessionSetLayoutContext_Gravity(*(DerivedStorage + 368), 0, v25, v26);
  FigCaptionRendererSessionSetLayoutContext_Overscan(*(DerivedStorage + 368), 0, v27, v28);
  v29 = CreateSubtitleSample(a3, a4);
  if (!v29)
  {
    FigSubtitleRendererDrawSubtitleTextDirect_cold_5(&transform);
    return LODWORD(transform.a);
  }

  v39[0] = 0;
  FigSubtitleSampleCreatePropertyList(v29, 1, 1, v39, v20, v21, v22, v23);
  FigCaptionRendererSessionSetCaptionSample(*(DerivedStorage + 368));
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_196E77200;
  transform.ty = a8;
  CGContextConcatCTM(a2, &transform);
  FigCaptionRendererSessionUpdateCGContext(*(DerivedStorage + 368), a2);
  if (v39[0])
  {
    CFRelease(v39[0]);
  }

  return 0;
}

double FigSubtitleRendererGetWindowRoundedCornerRadius(uint64_t a1)
{
  v4 = 0.0;
  context[0] = a1;
  context[1] = &v4;
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (!v1)
  {
    return 0.0;
  }

  dispatch_sync_f(v1, context, subtitleRendererGetWindowRoundedCornerRadiusDo);
  return v4;
}

uint64_t subtitleRendererGetWindowRoundedCornerRadiusDo(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    result = CMBaseObjectGetDerivedStorage();
    v2 = *(result + 280) * 4.0;
    if (v2 > 10.0)
    {
      v2 = 10.0;
    }

    **(v1 + 8) = v2;
  }

  return result;
}

double FigSubtitleRendererGetWindowOpacity(uint64_t a1)
{
  v4 = 0.0;
  context[0] = a1;
  context[1] = &v4;
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (!v1)
  {
    return 0.0;
  }

  dispatch_sync_f(v1, context, subtitleRendererGetWindowOpacityDo);
  return v4;
}

double subtitleRendererGetWindowOpacityDo(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1[1];
  if (v4)
  {
    result = *(DerivedStorage + 264);
    *v4 = result;
  }

  return result;
}

const void *FigSubtitleRendererGetAttributedStringFromSubtitleSample(const __CFDictionary *a1)
{
  if (!a1)
  {
    FigSubtitleRendererGetAttributedStringFromSubtitleSample_cold_2();
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"SubtitleContent");
  if (!Value)
  {
    FigSubtitleRendererGetAttributedStringFromSubtitleSample_cold_1();
    return 0;
  }

  return CFArrayGetValueAtIndex(Value, 0);
}

_BYTE *coreTextSubtitleRenderer_Finalize(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*result)
  {
    v2 = result;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForMediaAccessibilityChanged(DefaultLocalCenter, v4);
    FigNotificationCenterRemoveWeakListener();
    *v2 = 0;
    v5 = *(v2 + 1);
    if (v5)
    {
      dispatch_release(v5);
      *(v2 + 1) = 0;
    }

    v6 = *(v2 + 2);
    if (v6)
    {
      dispatch_release(v6);
      *(v2 + 2) = 0;
    }

    if (!v2[360])
    {
      v7 = *(v2 + 46);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    clearMediaAccessibilityParams((v2 + 88));
    v8 = *(v2 + 6);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(v2 + 9);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(v2 + 5);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(v2 + 7);
    if (v11)
    {
      CFRelease(v11);
    }

    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
  }

  return result;
}

__CFString *coreTextSubtitleRenderer_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCoreTextSubtitleRenderer %p>", a1);
  return Mutable;
}

void sendNotificationDoAsync(const void **a1)
{
  v2 = *a1;
  if (*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

CFDictionaryRef CreateSubtitleSample(CFStringRef str, CFDictionaryRef attributes)
{
  v3 = *MEMORY[0x1E695E480];
  values = CFAttributedStringCreate(*MEMORY[0x1E695E480], str, attributes);
  if (values)
  {
    v4 = CFArrayCreate(v3, &values, 1, MEMORY[0x1E695E9C0]);
    if (v4)
    {
      v5 = v4;
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v7 = Mutable;
        if (attributes && CFDictionaryContainsKey(attributes, @"SubtitleFormat"))
        {
          v8 = 0;
        }

        else
        {
          valuePtr = 2004251764;
          v9 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
          if (!v9)
          {
            CreateSubtitleSample_cold_2();
            Copy = 0;
            goto LABEL_12;
          }

          v8 = v9;
          CFDictionarySetValue(v7, @"SubtitleFormat", v9);
        }

        CFDictionarySetValue(v7, @"SubtitleContent", v5);
        Copy = CFDictionaryCreateCopy(v3, v7);
        if (Copy)
        {
          if (!v8)
          {
LABEL_12:
            CFRelease(v5);
            CFRelease(v7);
            goto LABEL_13;
          }
        }

        else
        {
          CreateSubtitleSample_cold_1();
          if (!v8)
          {
            goto LABEL_12;
          }
        }

        CFRelease(v8);
        goto LABEL_12;
      }

      CreateSubtitleSample_cold_3(v5);
    }

    else
    {
      CreateSubtitleSample_cold_4();
    }
  }

  else
  {
    CreateSubtitleSample_cold_5();
  }

  Copy = 0;
LABEL_13:
  if (values)
  {
    CFRelease(values);
  }

  return Copy;
}

void subtitleRendererDrawSubtitleTextDo(uint64_t *a1)
{
  v1 = a1;
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 5);
  *&v76.a = *(a1 + 3);
  *&v76.c = v5;
  *&v76.tx = *(a1 + 7);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a_low = *DerivedStorage;
  if (*DerivedStorage)
  {
    if (v2)
    {
      Value = CFDictionaryGetValue(v2, @"SubtitleContent");
      if (Value)
      {
        v9 = Value;
        if (CFArrayGetCount(Value) < 1)
        {
          a_low = 0;
          goto LABEL_65;
        }

        v57 = v1;
        v10 = 0;
        v12 = *MEMORY[0x1E695F050];
        v11 = *(MEMORY[0x1E695F050] + 8);
        v67 = *(MEMORY[0x1E695F050] + 24);
        v68 = *(MEMORY[0x1E695F050] + 16);
        v63 = *MEMORY[0x1E69607C0];
        v62 = *MEMORY[0x1E695E4C0];
        alloc = *MEMORY[0x1E695E480];
        v59 = *(MEMORY[0x1E695F060] + 8);
        v69 = *(MEMORY[0x1E695F050] + 16);
        v70 = *MEMORY[0x1E695F050];
        key = *MEMORY[0x1E6960818];
        v61 = v9;
        v60 = *MEMORY[0x1E695F050];
        v64 = v11;
        while (1)
        {
          effectiveRange.location = 0;
          effectiveRange.length = 0;
          rect.origin = v70;
          rect.size = v69;
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
          Attribute = CFAttributedStringGetAttribute(ValueAtIndex, 0, @"kFigSubtitleRenderer_SuggestTextLayout", &effectiveRange);
          if (Attribute)
          {
            CGRectMakeWithDictionaryRepresentation(Attribute, &rect);
          }

          v73 = v76;
          v82 = CGRectApplyAffineTransform(rect, &v73);
          y = v82.origin.y;
          x = v82.origin.x;
          width = v82.size.width;
          height = v82.size.height;
          v17 = CFAttributedStringGetAttribute(ValueAtIndex, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
          if (v17)
          {
            CGRectMakeWithDictionaryRepresentation(v17, &rect);
          }

          v73 = v76;
          v83 = CGRectApplyAffineTransform(rect, &v73);
          v18 = v83.origin.x;
          v19 = v83.origin.y;
          v20 = v83.size.width;
          v21 = v83.size.height;
          v22 = CMBaseObjectGetDerivedStorage();
          v73.a = 0.0;
          v73.b = 0.0;
          valuePtr = 0.0;
          v23 = CFAttributedStringGetAttribute(ValueAtIndex, 0, @"kFigSubtitleRenderer_FontSizeToUse", &v73);
          if (v23)
          {
            CFNumberGetValue(v23, kCFNumberCGFloatType, &valuePtr);
            v84.origin.y = y;
            v84.origin.x = x;
            v84.size.width = width;
            v84.size.height = height;
            v90.origin.x = v12;
            v90.origin.y = v11;
            v90.size.height = v67;
            v90.size.width = v68;
            if (!CGRectEqualToRect(v84, v90))
            {
              break;
            }
          }

          v24 = 0;
LABEL_60:
          CGColorRelease(v24);
          if (CFArrayGetCount(v9) <= ++v10)
          {
            a_low = 0;
            v1 = v57;
            goto LABEL_65;
          }
        }

        theDict = CFAttributedStringGetAttributes(ValueAtIndex, 0, &v73);
        v24 = copyContentColor(*(v22 + 104), *(v22 + 240), *(v22 + 128), theDict, v63, *(v22 + 264));
        v25 = CMBaseObjectGetDerivedStorage();
        if (*(v25 + 280) * 4.0 <= 10.0)
        {
          v26 = *(v25 + 280) * 4.0;
        }

        else
        {
          v26 = 10.0;
        }

        CGContextSaveGState(v4);
        CGContextSetFontRenderingStyle();
        CGContextSetShouldSmoothFonts(v4, 0);
        CGContextSetShouldAntialias(v4, 1);
        CGContextSetInterpolationQuality(v4, kCGInterpolationHigh);
        if (v24)
        {
          CGContextSetFillColorWithColor(v4, v24);
          CGContextBeginPath(v4);
          if (v26 <= 1.0)
          {
            v89.origin.x = v18;
            v89.origin.y = v19;
            v89.size.width = v20;
            v89.size.height = v21;
            CGContextAddRect(v4, v89);
          }

          else
          {
            CGContextSaveGState(v4);
            v85.origin.x = v18;
            v85.origin.y = v19;
            v85.size.width = v20;
            v85.size.height = v21;
            MinX = CGRectGetMinX(v85);
            v86.origin.x = v18;
            v86.origin.y = v19;
            v86.size.width = v20;
            v86.size.height = v21;
            MinY = CGRectGetMinY(v86);
            CGContextTranslateCTM(v4, MinX, MinY);
            CGContextScaleCTM(v4, v26, v26);
            v87.origin.x = v18;
            v87.origin.y = v19;
            v87.size.width = v20;
            v87.size.height = v21;
            *&MinX = CGRectGetWidth(v87) / v26;
            v88.origin.x = v18;
            v88.origin.y = v19;
            v88.size.width = v20;
            v88.size.height = v21;
            v29 = CGRectGetHeight(v88) / v26;
            v30 = *&MinX;
            v31 = (v29 * 0.5);
            CGContextMoveToPoint(v4, *&MinX, v31);
            v32 = v29;
            v33 = *&MinX * 0.5;
            v12 = v60;
            v34 = v33;
            CGContextAddArcToPoint(v4, v30, v32, v33, v32, 1.0);
            CGContextAddArcToPoint(v4, 0.0, v32, 0.0, v31, 1.0);
            CGContextAddArcToPoint(v4, 0.0, 0.0, v34, 0.0, 1.0);
            CGContextAddArcToPoint(v4, v30, 0.0, v30, v31, 1.0);
            CGContextClosePath(v4);
            CGContextRestoreGState(v4);
          }

          CGContextFillPath(v4);
        }

        v35 = CFAttributedStringGetAttribute(ValueAtIndex, 0, @"kFigSubtitleRenderer_CommonSetupDone", &v73);
        if (!v35 || v62 == v35)
        {
          MutableCopy = CFAttributedStringCreateMutableCopy(alloc, 0, ValueAtIndex);
          v11 = v64;
          if (!MutableCopy)
          {
LABEL_59:
            CGContextRestoreGState(v4);
            goto LABEL_60;
          }

          v36 = MutableCopy;
          v42 = height / 3.0;
          v43 = subtitleRendererSetupText(v3, MutableCopy, 0, height / 3.0);
          v44 = 0;
          v45 = v59;
          while (1)
          {
            Length = CFAttributedStringGetLength(v36);
            if (Length >= 1)
            {
              v47 = Length;
              v48 = CTFramesetterCreateWithAttributedString(v36);
              if (!v48)
              {
                v9 = v61;
                goto LABEL_57;
              }

              v49 = v48;
              v79.location = 0;
              v79.length = v47;
              v81.width = width;
              v81.height = 1.79769313e308;
              v45 = ceil(CTFramesetterSuggestFrameSizeWithConstraints(v48, v79, 0, v81, 0).height);
              CFRelease(v49);
            }

            v50 = 1.0;
            if (v45 <= 1.0)
            {
              break;
            }

            if (v45 <= height)
            {
              if (v44 == -1)
              {
                break;
              }

              v44 = 1;
            }

            else
            {
              v44 = -1;
              v50 = -1.0;
            }

            v42 = v42 + v50;
            v43 = subtitleRendererSetupText(v3, v36, 3, v42);
          }

          v78[0] = v42;
          v51 = CFNumberCreate(alloc, kCFNumberCGFloatType, v78);
          v80.length = CFAttributedStringGetLength(v36);
          v80.location = 0;
          CFAttributedStringSetAttribute(v36, v80, @"kFigSubtitleRenderer_FontSizeToUse", v51);
          CFRelease(v51);
          ValueAtIndex = v36;
          v9 = v61;
          v38 = y;
          v37 = x;
          if (v43)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v36 = 0;
          v11 = v64;
          v38 = y;
          v37 = x;
        }

        if (*(v22 + 28))
        {
          v39 = CFAttributedStringCreateMutableCopy(alloc, 0, ValueAtIndex);
          if (!v39)
          {
            goto LABEL_57;
          }

          v40 = v39;
          if (subtitleRendererDrawText(v3, v39, v4, 2u, valuePtr, v37, v38, width, height))
          {
LABEL_55:
            CFRelease(v40);
LABEL_57:
            if (v36)
            {
              CFRelease(v36);
            }

            goto LABEL_59;
          }
        }

        else
        {
          v40 = 0;
        }

        v52 = getEdgeStyle(*(v22 + 216), *(v22 + 352), theDict, key) - 1;
        v53 = CFAttributedStringCreateMutableCopy(alloc, 0, ValueAtIndex);
        v54 = v53;
        if (v52 >= 3)
        {
          if (!v53)
          {
            goto LABEL_54;
          }

          setupHighlight(v3, v53);
          if (subtitleRendererSetupText(v3, v54, 2, valuePtr) || subtitleRendererDrawText(v3, v54, v4, 1u, valuePtr, v37, v38, width, height))
          {
            v55 = v54;
            goto LABEL_53;
          }

          v55 = v54;
          v54 = CFAttributedStringCreateMutableCopy(alloc, 0, ValueAtIndex);
          if (!v54)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (!v53)
          {
            goto LABEL_54;
          }

          setupHighlight(v3, v53);
          v55 = 0;
        }

        if (!subtitleRendererSetupText(v3, v54, 1, valuePtr))
        {
          subtitleRendererDrawText(v3, v54, v4, 0, valuePtr, v37, v38, width, height);
        }

        CFRelease(v54);
        if (!v55)
        {
LABEL_54:
          v9 = v61;
          if (!v40)
          {
            goto LABEL_57;
          }

          goto LABEL_55;
        }

LABEL_53:
        CFRelease(v55);
        goto LABEL_54;
      }

      v56 = 4099;
    }

    else
    {
      v56 = 4094;
    }

    subtitleRendererDrawSubtitleTextDo_cold_1(v56, &v73);
    a_low = LODWORD(v73.a);
  }

LABEL_65:
  *v1[9] = a_low;
}

CGColorRef copyContentColor(uint64_t a1, CGColorRef color, uint64_t a3, const __CFDictionary *a4, void *key, CGFloat a6)
{
  if (a1 || !color)
  {
    v10 = 1;
    if (a4)
    {
      if (key)
      {
        CGColorFromCFArray = createCGColorFromCFArray(a4, key, 0);
        v10 = CGColorFromCFArray == 0;
        if (CGColorFromCFArray)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    CGColorFromCFArray = CGColorCreateCopy(color);
    v10 = 1;
    if (CGColorFromCFArray)
    {
      goto LABEL_9;
    }
  }

  CGColorFromCFArray = CGColorCreateCopy(color);
  if (!CGColorFromCFArray)
  {
    return CGColorFromCFArray;
  }

LABEL_9:
  if (!a3)
  {
    if (a6 < 0.0)
    {
      return CGColorFromCFArray;
    }

    goto LABEL_16;
  }

  if (a6 >= 0.0 && v10)
  {
LABEL_16:
    CopyWithAlpha = CGColorCreateCopyWithAlpha(CGColorFromCFArray, a6);
    if (CopyWithAlpha)
    {
      v13 = CopyWithAlpha;
      CGColorRelease(CGColorFromCFArray);
      return v13;
    }
  }

  return CGColorFromCFArray;
}

uint64_t subtitleRendererDrawText(uint64_t a1, const __CFAttributedString *a2, CGContext *a3, unsigned int a4, double a5, double a6, double a7, double a8, double a9)
{
  v95 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4 == 1)
  {
    CGContextSetLineJoin(a3, kCGLineJoinBevel);
    v18 = CMBaseObjectGetDerivedStorage();
    v19 = 0.0;
    v20 = 0.0;
  }

  else
  {
    v18 = CMBaseObjectGetDerivedStorage();
    if (a5 <= 60.0)
    {
      v20 = a5 * 0.0882352941;
    }

    else
    {
      v20 = a5 * 0.0882352941 / 1.5;
    }

    if (*(v18 + 32) != 1)
    {
      v20 = -v20;
    }

    v19 = 0.0;
  }

  effectiveRange.a = 0.0;
  effectiveRange.b = 0.0;
  Attributes = CFAttributedStringGetAttributes(a2, 0, &effectiveRange);
  EdgeStyle = getEdgeStyle(*(v18 + 216), *(v18 + 352), Attributes, *MEMORY[0x1E6960818]);
  if (EdgeStyle > 2)
  {
    if (EdgeStyle == 3)
    {
      if (a5 <= 60.0)
      {
        v19 = a5 * 0.0882352941;
      }

      else
      {
        v19 = a5 * 0.0882352941 / 1.5;
      }

      v20 = -v19;
    }

    else if (EdgeStyle == 4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (EdgeStyle == 1)
    {
      goto LABEL_26;
    }

    if (EdgeStyle == 2)
    {
      if (a5 <= 60.0)
      {
        v19 = a5 * -0.0882352941;
        v20 = a5 * 0.0882352941;
      }

      else
      {
        v19 = a5 * 0.0882352941 / -1.5;
        v20 = a5 * 0.0882352941 / 1.5;
      }
    }
  }

  *&effectiveRange.a = xmmword_196E78EF8;
  *&effectiveRange.c = *algn_196E78F08;
  v23 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (v23)
  {
    v24 = v23;
    v25 = CGColorCreate(v23, &effectiveRange.a);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v25, *(v18 + 248));
    CGColorRelease(v25);
    CGColorSpaceRelease(v24);
  }

  else
  {
    CopyWithAlpha = 0;
  }

  v102.width = v19;
  v102.height = v20;
  CGContextSetShadowWithColor(a3, v102, 4.0, CopyWithAlpha);
  CGColorRelease(CopyWithAlpha);
LABEL_26:
  Mutable = CGPathCreateMutable();
  if (!Mutable)
  {
    return 4294955204;
  }

  v28 = Mutable;
  v29 = CTFramesetterCreateWithAttributedString(a2);
  if (v29)
  {
    v30 = v29;
    v92.location = 0;
    v92.length = 0;
    Attribute = CFAttributedStringGetAttribute(a2, 0, *MEMORY[0x1E6960998], &v92);
    FrameAttributesDictionary = createFrameAttributesDictionary(Attribute);
    effectiveRange.a = 0.0;
    v33 = CFAttributedStringGetAttribute(a2, 0, @"kFigSubtitleRenderer_CompensationInTextLayout", &v92);
    if (v33)
    {
      CFNumberGetValue(v33, kCFNumberCGFloatType, &effectiveRange);
    }

    v104.origin.x = a6 + effectiveRange.a;
    v104.origin.y = a7 + effectiveRange.a;
    v104.size.width = a8 - effectiveRange.a * 2.0;
    v104.size.height = a9 - effectiveRange.a * 2.0;
    v75 = a7 + effectiveRange.a;
    v76 = a6 + effectiveRange.a;
    CGPathAddRect(v28, 0, v104);
    v96.length = CFAttributedStringGetLength(a2);
    v96.location = 0;
    v34 = CTFramesetterCreateFrame(v30, v96, v28, FrameAttributesDictionary);
    if (FrameAttributesDictionary)
    {
      CFRelease(FrameAttributesDictionary);
    }

    if (v34)
    {
      if (*(DerivedStorage + 28))
      {
        Lines = CTFrameGetLines(v34);
        leading = 0.0;
        Count = CFArrayGetCount(Lines);
        if (Count >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Lines, Count - 1);
          CTLineGetTypographicBounds(ValueAtIndex, 0, 0, &leading);
        }

        frame = v34;
        v67 = v30;
        v68 = v28;
        if (Attribute)
        {
          CGContextSaveGState(a3);
          *&effectiveRange.a = xmmword_196E78EA0;
          effectiveRange.c = 1.0;
          memset(&effectiveRange.d, 0, 24);
          CGContextConcatCTM(a3, &effectiveRange);
          *&v93.a = xmmword_196E78EA0;
          v93.c = 1.0;
          memset(&v93.d, 0, 24);
          CGAffineTransformInvert(&effectiveRange, &v93);
          v73 = *&effectiveRange.c;
          v74 = *&effectiveRange.a;
          v37 = *&effectiveRange.tx;
        }

        else
        {
          v73 = *(MEMORY[0x1E695EFD0] + 16);
          v74 = *MEMORY[0x1E695EFD0];
          v37 = *(MEMORY[0x1E695EFD0] + 32);
        }

        v72 = v37;
        if (Count >= 1)
        {
          v39 = 0;
          theString2 = *MEMORY[0x1E6960C30];
          name = *MEMORY[0x1E695F1C0];
          v40 = *MEMORY[0x1E6960810];
          v79 = *(MEMORY[0x1E695F060] + 8);
          v80 = *MEMORY[0x1E695F060];
          v70 = Lines;
          v71 = Attribute;
          while (1)
          {
            v41 = CFArrayGetValueAtIndex(Lines, v39);
            origins.x = 0.0;
            origins.y = 0.0;
            v97.location = v39;
            v97.length = 1;
            CTFrameGetLineOrigins(frame, v97, &origins);
            origins.x = v76 + origins.x;
            if (Attribute && CFStringCompare(Attribute, theString2, 0) == kCFCompareEqualTo)
            {
              effectiveRange.a = 0.0;
              effectiveRange.b = 0.0;
              v98.location = Count + ~v39;
              v98.length = 1;
              CTFrameGetLineOrigins(frame, v98, &effectiveRange);
              b = effectiveRange.b;
            }

            else
            {
              b = origins.y;
            }

            origins = vaddq_f64(v72, vmlaq_n_f64(vmulq_n_f64(v73, v75 + b + leading * -0.5), v74, origins.x));
            CGContextSetTextPosition(a3, origins.x, origins.y);
            if (v39)
            {
              BoundsWithOptions = CTLineGetBoundsWithOptions(v41, 0x10uLL);
            }

            else
            {
              v106 = CTLineGetBoundsWithOptions(v41, 0);
              x = v106.origin.x;
              y = v106.origin.y;
              width = v106.size.width;
              height = v106.size.height;
              v109 = CTLineGetBoundsWithOptions(v41, 8uLL);
              v107.origin.x = x;
              v107.origin.y = y;
              v107.size.width = width;
              v107.size.height = height;
              BoundsWithOptions = CGRectUnion(v107, v109);
            }

            v81 = BoundsWithOptions.size.height;
            v82 = BoundsWithOptions.origin.y;
            GlyphRuns = CTLineGetGlyphRuns(v41);
            memset(&effectiveRange, 0, sizeof(effectiveRange));
            CGContextGetTextMatrix(&effectiveRange, a3);
            if (CFArrayGetCount(GlyphRuns) >= 1)
            {
              break;
            }

LABEL_80:
            ++v39;
            Lines = v70;
            Attribute = v71;
            if (v39 == Count)
            {
              goto LABEL_81;
            }
          }

          v48 = 0;
          v49 = 0.0;
          while (1)
          {
            descent = 0.0;
            ascent = 0.0;
            v85 = 0.0;
            v50 = CFArrayGetValueAtIndex(GlyphRuns, v48);
            v51 = CTRunGetAttributes(v50);
            TextPosition = CGContextGetTextPosition(a3);
            CTRunGetTextMatrix(&v93, v50);
            v88 = *&v93.a;
            v89 = *&v93.c;
            tx = v93.tx;
            ty = v93.ty;
            v99.location = 0;
            v99.length = 0;
            TypographicBounds = CTRunGetTypographicBounds(v50, v99, &ascent, &descent, &v85);
            v56 = origins.y;
            v84 = origins.x;
            v57 = descent;
            *&v93.a = v88;
            *&v93.c = v89;
            v93.tx = tx;
            v93.ty = ty;
            CGAffineTransformIsIdentity(&v93);
            if (a4 != 2)
            {
              if (a4 <= 1)
              {
                CGContextSaveGState(a3);
                *&v93.a = v88;
                *&v93.c = v89;
                v93.tx = tx;
                v93.ty = ty;
                if (CGAffineTransformIsIdentity(&v93))
                {
                  CGContextSetTextPosition(a3, TextPosition.x, v56 - v57 + descent);
                  v100.location = 0;
                  v100.length = 0;
                  CTRunDraw(v50, a3, v100);
                }

                else
                {
                  *&v93.a = v88;
                  *&v93.c = v89;
                  *&v93.tx = TextPosition;
                  CGContextSetTextMatrix(a3, &v93);
                  v101.location = 0;
                  v101.length = 0;
                  CTRunDraw(v50, a3, v101);
                  v93 = effectiveRange;
                  CGContextSetTextMatrix(a3, &v93);
                }

                CGContextRestoreGState(a3);
              }

              goto LABEL_77;
            }

            if (v51)
            {
              break;
            }

            v62 = 0;
LABEL_76:
            CGColorRelease(v62);
LABEL_77:
            v49 = v49 + TypographicBounds;
            CGContextSetTextPosition(a3, TextPosition.x, TextPosition.y);
            if (++v48 >= CFArrayGetCount(GlyphRuns))
            {
              goto LABEL_80;
            }
          }

          v58 = CGColorSpaceCreateWithName(name);
          if (CFDictionaryContainsKey(v51, v40))
          {
            CGColorFromCFArray = createCGColorFromCFArray(v51, v40, 0);
            v60 = CGColorFromCFArray;
            if (CGColorFromCFArray)
            {
              if (*(DerivedStorage + 96))
              {
                Components = CGColorGetComponents(CGColorFromCFArray);
                *&v93.a = *Components;
                v93.c = Components[2];
                goto LABEL_69;
              }

              v63 = 0;
LABEL_68:
              v64 = CGColorGetComponents(*(DerivedStorage + 232));
              *&v93.a = *v64;
              v93.c = v64[2];
              v65 = (DerivedStorage + 256);
              if (v63)
              {
LABEL_72:
                v93.d = *v65;
                v62 = CGColorCreate(v58, &v93.a);
                CGColorRelease(v60);
                if (v58)
                {
                  CFRelease(v58);
                }

                if (v62)
                {
                  CGContextSaveGState(a3);
                  v103.height = v79;
                  v103.width = v80;
                  CGContextSetShadowWithColor(a3, v103, 0.0, 0);
                  CGContextSetFillColorWithColor(a3, v62);
                  v108.size.height = v81;
                  v108.origin.y = v82 + origins.y + leading * 0.5;
                  v108.origin.x = v49 + v84;
                  v108.size.width = TypographicBounds;
                  CGContextFillRect(a3, v108);
                  CGContextRestoreGState(a3);
                }

                goto LABEL_76;
              }

LABEL_69:
              if (*(DerivedStorage + 120))
              {
                v65 = (CGColorGetComponents(v60) + 3);
              }

              else
              {
                v65 = (DerivedStorage + 256);
              }

              goto LABEL_72;
            }
          }

          else
          {
            v60 = 0;
          }

          v63 = 1;
          goto LABEL_68;
        }

LABEL_81:
        if (Attribute)
        {
          CGContextRestoreGState(a3);
        }

        v30 = v67;
        v28 = v68;
        v34 = frame;
      }

      else
      {
        CTFrameDraw(v34, a3);
      }

      CFRelease(v34);
      v38 = 0;
    }

    else
    {
      v38 = 4294955204;
    }

    CFRelease(v30);
  }

  else
  {
    v38 = 4294955204;
  }

  CFRelease(v28);
  return v38;
}

uint64_t getEdgeStyle(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, void *key)
{
  v5 = a2;
  if (a1)
  {
    if (!theDict || !key)
    {
      return a2;
    }

    value = 0;
    if (CFDictionaryGetValueIfPresent(theDict, key, &value) && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(value)))
    {
      v5 = 1;
      if (CFStringCompare(value, *MEMORY[0x1E69609C8], 1uLL))
      {
        if (CFStringCompare(value, *MEMORY[0x1E69609D0], 1uLL))
        {
          if (CFStringCompare(value, *MEMORY[0x1E69609B8], 1uLL))
          {
            if (CFStringCompare(value, *MEMORY[0x1E69609D8], 1uLL))
            {
              if (CFStringCompare(value, *MEMORY[0x1E69609C0], 1uLL))
              {
                v5 = 0;
              }

              else
              {
                v5 = 5;
              }
            }

            else
            {
              v5 = 4;
            }
          }

          else
          {
            v5 = 3;
          }
        }

        else
        {
          v5 = 2;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  if (!v5)
  {
    return a2;
  }

  return v5;
}

void setupHighlight(uint64_t a1, const __CFAttributedString *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 28))
  {
    v4 = DerivedStorage;
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    Length = CFAttributedStringGetLength(a2);
    if (Length >= 1)
    {
      v6 = Length;
      v7 = 0;
      v8 = *MEMORY[0x1E695F1C0];
      v9 = *MEMORY[0x1E6960810];
      attrName = *MEMORY[0x1E6965630];
      v21 = *MEMORY[0x1E6965A90];
      v10 = *MEMORY[0x1E695E4D0];
      while (1)
      {
        Attributes = CFAttributedStringGetAttributes(a2, v7, &effectiveRange);
        if (Attributes)
        {
          break;
        }

LABEL_21:
        v7 = effectiveRange.length + effectiveRange.location;
        if (effectiveRange.length + effectiveRange.location >= v6)
        {
          return;
        }
      }

      v12 = Attributes;
      v13 = CGColorSpaceCreateWithName(v8);
      if (CFDictionaryContainsKey(v12, v9))
      {
        CGColorFromCFArray = createCGColorFromCFArray(v12, v9, 0);
        v15 = CGColorFromCFArray;
        if (CGColorFromCFArray)
        {
          if (*(v4 + 96))
          {
            v16 = CGColorGetComponents(CGColorFromCFArray);
            *components = *v16;
            v25 = *(v16 + 2);
            goto LABEL_13;
          }

          v17 = 0;
LABEL_12:
          v18 = CGColorGetComponents(*(v4 + 232));
          *components = *v18;
          v25 = *(v18 + 2);
          v19 = (v4 + 256);
          if (v17)
          {
LABEL_16:
            v26 = *v19;
            v20 = CGColorCreate(v13, components);
            CGColorRelease(v15);
            if (v13)
            {
              CFRelease(v13);
            }

            if (v20)
            {
              CFAttributedStringSetAttribute(a2, effectiveRange, attrName, v20);
              CFAttributedStringSetAttribute(a2, effectiveRange, v21, v10);
            }

            CGColorRelease(v20);
            goto LABEL_21;
          }

LABEL_13:
          if (*(v4 + 120))
          {
            v19 = CGColorGetComponents(v15) + 3;
          }

          else
          {
            v19 = (v4 + 256);
          }

          goto LABEL_16;
        }
      }

      else
      {
        v15 = 0;
      }

      v17 = 1;
      goto LABEL_12;
    }
  }
}

uint64_t subtitleRendererSetupText(uint64_t a1, const __CFAttributedString *a2, int a3, CGFloat a4)
{
  v151 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  switch(a3)
  {
    case 0:
      v9 = DerivedStorage;
      v142.location = 0;
      v142.length = 0;
      Length = CFAttributedStringGetLength(a2);
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      v11 = CFAttributedStringGetAttribute(a2, 0, *MEMORY[0x1E6960998], &effectiveRange);
      v12 = CFAttributedStringGetAttribute(a2, 0, @"kFigSubtitleRenderer_SourceFormat", &effectiveRange);
      valuePtr = 0;
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
      v13 = CFAttributedStringGetLength(a2);
      String = CFAttributedStringGetString(a2);
      v15 = malloc_type_calloc(v13, 2uLL, 0x1000040BDFB0063uLL);
      v16 = MEMORY[0x1E695E480];
      if (v15)
      {
        v17 = v15;
        LODWORD(value.a) = 1;
        v18 = *MEMORY[0x1E695E480];
        v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &value);
        if (v19)
        {
          v20 = v19;
          v154.location = 0;
          v154.length = v13;
          CFStringGetCharacters(String, v154, v17);
          if (v13 < 1)
          {
            v26 = 0;
          }

          else
          {
            v21 = 0;
            v22 = 0;
            v23 = -1;
            do
            {
              v24 = v17[v22];
              if ((vmaxv_u16(vcgt_u16(0x51C019C0003000C0, vadd_s16(vdup_n_s16(v24), 0xB200CC00CE40CFC0))) & 1) != 0 || (v24 + 1792) < 0x200u || (v24 + 464) < 0x20u || (v24 + 256) < 0xF0u || (v24 & 0xFF80) == 0x2E80 || (v24 & 0xFFC0) == 0x3000 || (v24 & 0xFE00) == 0x3200)
              {
                if (v23 < 0)
                {
                  v23 = v22;
                }
              }

              else
              {
                if (v23 >= -1)
                {
                  v25 = -1;
                }

                else
                {
                  v25 = v23;
                }

                if (v23 >= 0)
                {
                  v21 = 1;
                }

                v23 = v25;
              }

              ++v22;
            }

            while (v13 != v22);
            if (v23 >= 0)
            {
              v26 = 1;
            }

            else
            {
              v26 = v21;
            }
          }

          CFRelease(v20);
        }

        else
        {
          v26 = 0;
        }

        free(v17);
        v127 = v11 != 0;
        v109 = 1;
        if (v26 && v11)
        {
          v156.location = 0;
          v156.length = Length;
          CFAttributedStringSetAttribute(a2, v156, *MEMORY[0x1E6965B50], *MEMORY[0x1E695E4D0]);
          Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable)
          {
            subtitleRendererSetupText_cold_1(&value);
            return LODWORD(value.a);
          }

          v35 = Mutable;
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965640], *MEMORY[0x1E6965650]);
          v157.location = 0;
          v157.length = Length;
          CFAttributedStringSetAttribute(a2, v157, *MEMORY[0x1E6965648], v35);
          CFRelease(v35);
          v109 = 0;
          v127 = 1;
        }
      }

      else
      {
        v127 = v11 != 0;
        v109 = 1;
      }

      v36 = CTParagraphStyleCreate(0, 0);
      if (!v36)
      {
        return 4294955204;
      }

      v37 = v36;
      CTParagraphStyleSetCompositionLanguage();
      v158.location = 0;
      v158.length = Length;
      v110 = *MEMORY[0x1E6965A30];
      CFAttributedStringSetAttribute(a2, v158, *MEMORY[0x1E6965A30], v37);
      CFRelease(v37);
      v132 = *MEMORY[0x1E6965798];
      v124 = *MEMORY[0x1E6960878];
      key = *MEMORY[0x1E6960988];
      v112 = *MEMORY[0x1E6960890];
      attrName = *MEMORY[0x1E6965A10];
      v131 = *MEMORY[0x1E6960928];
      v126 = *MEMORY[0x1E695E4D0];
      v122 = *MEMORY[0x1E69608A8];
      v121 = *MEMORY[0x1E69607D0];
      allocator = *v16;
      v119 = (v9 + 288);
      v120 = *MEMORY[0x1E6960990];
      v107 = *MEMORY[0x1E6965B48];
      v118 = *MEMORY[0x1E6960858];
      v117 = *MEMORY[0x1E6960880];
      v113 = *MEMORY[0x1E6965830];
      v116 = *MEMORY[0x1E69608B0];
      v108 = *MEMORY[0x1E6965A20];
      v105 = *MEMORY[0x1E6965678];
      v114 = *MEMORY[0x1E6965658];
      v115 = *MEMORY[0x1E69659D8];
      attribute = *MEMORY[0x1E6965808];
      v130 = Length;
      while (1)
      {
        if (v142.length + v142.location >= Length)
        {
          setupRubyAnnotation(a1, a2, 0, a4);
          v159.length = CFAttributedStringGetLength(a2);
          v142.location = 0;
          v142.length = v159.length;
          v159.location = 0;
          CFAttributedStringSetAttribute(a2, v159, @"kFigSubtitleRenderer_CommonSetupDone", v126);
          return 0;
        }

        v150[0] = xmmword_196E78F18;
        v150[1] = unk_196E78F28;
        v38 = CFRetain(@"Helvetica");
        v139 = 0.0;
        Attributes = CFAttributedStringGetAttributes(a2, v142.length + v142.location, &v142);
        if (!Attributes)
        {
          v133 = 0;
          CGColorFromCFArray = 0;
          v128 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v135 = 0;
          v50 = v132;
          v44 = a4;
          goto LABEL_126;
        }

        v40 = Attributes;
        CGColorFromCFArray = copyContentColor(*(v9 + 88), *(v9 + 224), *(v9 + 112), Attributes, v124, *(v9 + 248));
        if (!CGColorFromCFArray)
        {
          CGColorFromCFArray = createCGColorFromCFArray(0, 0, v150);
        }

        if (CFDictionaryContainsKey(v40, key) && (v41 = CFDictionaryGetValue(v40, key)) != 0)
        {
          CFNumberGetValue(v41, kCFNumberCGFloatType, &v139);
          LODWORD(v133) = fabs(v139) <= 100.0;
        }

        else
        {
          LODWORD(v133) = 0;
        }

        if (v127)
        {
          if (CFDictionaryContainsKey(v40, v112))
          {
            v42 = CFDictionaryGetValue(v40, v112);
            v43 = v42;
            LODWORD(value.a) = 0;
            if (!v42 || (CFNumberGetValue(v42, kCFNumberIntType, &value), LODWORD(value.a) <= 4))
            {
              CFAttributedStringSetAttribute(a2, v142, attrName, v43);
            }
          }
        }

        v44 = a4;
        if (CFDictionaryContainsKey(v40, v131))
        {
          v45 = CFDictionaryGetValue(v40, v131);
          LODWORD(value.a) = 100;
          if (v45)
          {
            CFNumberGetValue(v45, kCFNumberIntType, &value);
            a_low = SLODWORD(value.a);
          }

          else
          {
            a_low = 100.0;
          }

          v44 = a_low * a4 / 100.0;
        }

        v51 = v126 == CFDictionaryGetValue(v40, v122);
        v135 = v126 == CFDictionaryGetValue(v40, v121);
        if (v126 == CFDictionaryGetValue(v40, v120))
        {
          LODWORD(value.a) = 1;
          v52 = CFNumberCreate(allocator, kCFNumberSInt32Type, &value);
          CFAttributedStringSetAttribute(a2, v142, v107, v52);
          if (v52)
          {
            CFRelease(v52);
          }
        }

        v47 = *(v9 + 64) != v51 || *(v9 + 65) != v135 || *(v9 + 80);
        if (valuePtr != 2021028980 && valuePtr != 2004251764)
        {
          break;
        }

        if (CFDictionaryContainsKey(v40, v118))
        {
          v53 = CFDictionaryGetValue(v40, v118);
          if (!v53)
          {
            break;
          }

          v54 = v53;
          CFRetain(v53);
          if (v38)
          {
            CFRelease(v38);
          }

          v55 = 0;
          v128 = 1;
          v50 = v132;
          v38 = v54;
        }

        else
        {
          if (!CFDictionaryContainsKey(v40, v117) || !CFDictionaryGetValue(v40, v117))
          {
            break;
          }

          value.a = 0.0;
          if (FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle() && (v56 = v119[*&value.a]) != 0)
          {
            if (v38)
            {
              CFRelease(v38);
            }

            v38 = CTFontDescriptorCopyAttribute(v56, attribute);
            v55 = 0;
            v50 = v113;
          }

          else
          {
            v55 = 1;
            v50 = v132;
          }

          v128 = 0;
        }

LABEL_99:
        HIDWORD(v133) = v51;
        if (*(v9 + 152))
        {
          if (!v55)
          {
            goto LABEL_111;
          }

          v57 = *v119;
          if (v38)
          {
            CFRelease(v38);
          }
        }

        else
        {
          if (v38)
          {
            CFRelease(v38);
          }

          v57 = *v119;
        }

        v38 = CTFontDescriptorCopyAttribute(v57, attribute);
        v58 = *v119;
        if (!*v119)
        {
          v50 = v113;
LABEL_111:
          v61 = *(v9 + 48);
          if (v61)
          {
            CFRelease(v61);
            *(v9 + 48) = 0;
          }

          v62 = *(v9 + 56);
          if (v62)
          {
            if (CFStringCompare(v62, v38, 0) == kCFCompareEqualTo)
            {
              v48 = 0;
              v49 = 0;
              goto LABEL_123;
            }

            v59 = *(v9 + 56);
          }

          else
          {
            v59 = 0;
          }

          *(v9 + 56) = v38;
          if (v38)
          {
            CFRetain(v38);
          }

          v60 = 0;
          v49 = 0;
          v48 = 1;
          if (!v59)
          {
            goto LABEL_123;
          }

          goto LABEL_120;
        }

        v59 = *(v9 + 48);
        if (v59 == v58)
        {
          v48 = 0;
          v49 = 0;
          v50 = v113;
          goto LABEL_123;
        }

        *(v9 + 48) = v58;
        CFRetain(v58);
        v48 = 0;
        v60 = 1;
        v50 = v113;
        v49 = 1;
        if (!v59)
        {
          goto LABEL_123;
        }

LABEL_120:
        CFRelease(v59);
        v49 = v60;
LABEL_123:
        if (CFDictionaryContainsKey(v40, v116))
        {
          v63 = CFDictionaryGetValue(v40, v116);
          if (v63)
          {
            CFAttributedStringSetAttribute(a2, v142, v108, v63);
          }
        }

LABEL_126:
        v64 = *(v9 + 40);
        if (v64)
        {
          Size = CTFontGetSize(v64);
          v66 = *(v9 + 40);
          if (!(v48 | v47 | v49) && v44 == Size)
          {
            v67 = CGColorFromCFArray;
            if (!v66)
            {
              goto LABEL_202;
            }

            goto LABEL_198;
          }

          if (v66)
          {
            CFRelease(*(v9 + 40));
            *(v9 + 40) = 0;
          }
        }

        v68 = *(v9 + 48);
        v69 = *(v9 + 72);
        v70 = v139;
        v71 = CMBaseObjectGetDerivedStorage();
        if (!v38)
        {
LABEL_156:
          v79 = 0;
          v67 = CGColorFromCFArray;
          goto LABEL_197;
        }

        if (!v69)
        {
          v74 = 0;
          v73 = HIDWORD(v133);
          goto LABEL_149;
        }

        v72 = v71;
        v73 = HIDWORD(v133);
        if (CFStringCompare(@"yue", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"yue-Hant", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"cmn-Hant", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-cmn-Hant", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-Hant", v69, 1uLL) == kCFCompareEqualTo)
        {
          v74 = 3;
          goto LABEL_149;
        }

        if (CFStringCompare(@"cmn-Hans", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-cmn-Hans", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-cmn", v69, 1uLL) == kCFCompareEqualTo || CFStringCompare(@"zh-Hans", v69, 1uLL) == kCFCompareEqualTo)
        {
          v74 = 2;
          goto LABEL_149;
        }

        if (CFStringCompare(@"ja", v69, 1uLL) && CFStringCompare(@"ja-JP", v69, 1uLL))
        {
          v74 = 0;
          goto LABEL_149;
        }

        if (v128)
        {
          v74 = 1;
LABEL_149:
          if (v68)
          {
            v75 = CFRetain(v68);
            v76 = 0;
            if (v75)
            {
              goto LABEL_160;
            }

            goto LABEL_216;
          }

          v77 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!v77)
          {
            goto LABEL_156;
          }

          v76 = v77;
          if (v132 == v50)
          {
            v78 = MEMORY[0x1E6965790];
LABEL_158:
            CFDictionaryAddValue(v77, *v78, v38);
          }

          else if (v113 == v50)
          {
            v78 = MEMORY[0x1E6965808];
            goto LABEL_158;
          }

          v75 = CTFontDescriptorCreateWithAttributes(v76);
          if (v75)
          {
            goto LABEL_160;
          }

          goto LABEL_216;
        }

        v74 = 1;
        if (*(v72 + 152) != 1)
        {
          goto LABEL_149;
        }

        *&value.a = 1;
        v75 = MACaptionAppearanceCopyFontDescriptorForLanguage();
        v76 = 0;
        v74 = 1;
        if (v75)
        {
LABEL_160:
          v80 = v73 | (2 * v135);
          CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v75, v80, 3u);
          if (!CopyWithSymbolicTraits)
          {
            if (!v73)
            {
              goto LABEL_171;
            }

            SInt32 = FigCFNumberCreateSInt32();
            UInt32 = FigCFNumberCreateUInt32();
            CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v75, SInt32, UInt32);
            CopyWithSymbolicTraits = CopyWithFeature;
            if (!v135)
            {
              goto LABEL_166;
            }

            if (CopyWithFeature)
            {
              v85 = CTFontDescriptorCreateCopyWithSymbolicTraits(CopyWithFeature, v80, 2u);
              if (v85)
              {
                v86 = v85;
                CFRelease(CopyWithSymbolicTraits);
                CopyWithSymbolicTraits = v86;
              }

LABEL_166:
              if (SInt32)
              {
LABEL_167:
                CFRelease(SInt32);
              }
            }

            else
            {
              CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v75, v80, 2u);
              if (SInt32)
              {
                goto LABEL_167;
              }
            }

            if (UInt32)
            {
              CFRelease(UInt32);
            }

            if (!CopyWithSymbolicTraits)
            {
LABEL_171:
              CopyWithSymbolicTraits = CFRetain(v75);
            }
          }

          if (!v133)
          {
            goto LABEL_228;
          }

          v87 = v70 * 90.0 / 100.0;
          v88 = 89.0;
          if (v87 < 89.0)
          {
            v88 = v70 * 90.0 / 100.0;
            if (v87 <= -89.0)
            {
              v88 = -89.0;
            }
          }

          v89 = tan(v88 * 3.14159265 / 180.0);
          if (v109)
          {
            v90 = 0.0;
          }

          else
          {
            v90 = v89;
          }

          value.a = 1.0;
          if (!v109)
          {
            v89 = 0.0;
          }

          value.b = v90;
          value.c = v89;
          value.d = 1.0;
          value.tx = 0.0;
          value.ty = 0.0;
          v79 = CTFontCreateWithFontDescriptor(CopyWithSymbolicTraits, v44, &value);
          if (!v79)
          {
LABEL_228:
            v79 = CTFontCreateWithFontDescriptor(CopyWithSymbolicTraits, v44, 0);
            if (!v79)
            {
              goto LABEL_192;
            }
          }

          if ((v74 & 2) != 0 && v76 && (*&value.a = qword_1E7492AE8[v74], (v91 = CFArrayCreate(allocator, &value, 1, MEMORY[0x1E695E9C0])) != 0))
          {
            v92 = v91;
            v93 = CTFontCopyDefaultCascadeListForLanguages(v79, v91);
            v67 = CGColorFromCFArray;
            if (v93)
            {
              v94 = v93;
              CFDictionarySetValue(v76, v105, v93);
              CFRelease(v75);
              CFRelease(v79);
              v95 = CTFontDescriptorCreateWithAttributes(v76);
              v75 = v95;
              if (v95)
              {
                v79 = CTFontCreateWithFontDescriptor(v95, v44, 0);
              }

              else
              {
                v79 = 0;
              }

              CFRelease(v94);
              CFRelease(v92);
              if (!v75)
              {
                if (!CopyWithSymbolicTraits)
                {
LABEL_195:
                  if (!v76)
                  {
                    goto LABEL_197;
                  }

LABEL_196:
                  CFRelease(v76);
                  goto LABEL_197;
                }

LABEL_194:
                CFRelease(CopyWithSymbolicTraits);
                goto LABEL_195;
              }
            }

            else
            {
              CFRelease(v92);
            }
          }

          else
          {
LABEL_192:
            v67 = CGColorFromCFArray;
          }

          CFRelease(v75);
          if (!CopyWithSymbolicTraits)
          {
            goto LABEL_195;
          }

          goto LABEL_194;
        }

LABEL_216:
        v79 = 0;
        v67 = CGColorFromCFArray;
        if (v76)
        {
          goto LABEL_196;
        }

LABEL_197:
        *(v9 + 40) = v79;
        *(v9 + 80) = 0;
        *(v9 + 64) = BYTE4(v133);
        *(v9 + 65) = v135;
        if (!v79)
        {
          goto LABEL_202;
        }

LABEL_198:
        TextAlignment = getTextAlignment(a2);
        Ascent = CTFontGetAscent(*(v9 + 40));
        Descent = CTFontGetDescent(*(v9 + 40));
        v98 = *(v9 + 40);
        v99 = CTFontGetAscent(v98);
        v100 = CTFontGetDescent(v98);
        Leading = CTFontGetLeading(v98);
        if (Leading <= (v99 + v100) * 0.2)
        {
          Leading = (v99 + v100) * 0.2;
        }

        v137 = Leading;
        v136 = Ascent + Descent + Leading;
        LODWORD(value.a) = 0;
        *&value.b = 1;
        *&value.c = &TextAlignment;
        LODWORD(value.d) = 15;
        *&value.tx = 8;
        *&value.ty = &v137;
        v144 = 14;
        v145 = 8;
        v146 = &v137;
        v147 = 8;
        v148 = 8;
        v149 = &v136;
        v102 = CTParagraphStyleCreate(&value, 4uLL);
        CFAttributedStringSetAttribute(a2, v142, v115, v67);
        CFAttributedStringSetAttribute(a2, v142, v114, *(v9 + 40));
        if (!v102)
        {
LABEL_202:
          v103 = 4294955204;
          goto LABEL_203;
        }

        CFAttributedStringSetAttribute(a2, v142, v110, v102);
        CFRelease(v102);
        v103 = 0;
LABEL_203:
        Length = v130;
        CGColorRelease(v67);
        if (v38)
        {
          CFRelease(v38);
        }

        if (v103)
        {
          return v103;
        }
      }

      v128 = 0;
      v55 = 1;
      v50 = v132;
      goto LABEL_99;
    case 3:
      v27 = CFAttributedStringGetLength(a2);
      if (v27 >= 1)
      {
        v28 = v27;
        v29 = 0;
        v30 = *MEMORY[0x1E6965658];
        do
        {
          value.a = 0.0;
          value.b = 0.0;
          v31 = CFAttributedStringGetAttribute(a2, v29, v30, &value);
          if (v31)
          {
            if (*&value.b <= 1uLL)
            {
              v32 = 1;
            }

            else
            {
              v32 = *&value.b;
            }

            CopyWithAttributes = CTFontCreateCopyWithAttributes(v31, a4, 0, 0);
            v155.location = v29;
            v155.length = v32;
            CFAttributedStringSetAttribute(a2, v155, v30, CopyWithAttributes);
            CFRelease(CopyWithAttributes);
          }

          if (*&value.b)
          {
            v29 += *&value.b;
          }

          else
          {
            ++v29;
          }
        }

        while (v29 < v28);
      }

      break;
    case 2:
      value.a = 0.0;
      *&v150[0] = 0;
      v8 = CFAttributedStringGetLength(a2);
      calculateStrokeAttributes(a1, &value, v150, a4);
      if (*&value.a)
      {
        v152.location = 0;
        v152.length = v8;
        CFAttributedStringSetAttribute(a2, v152, *MEMORY[0x1E6965A58], *&value.a);
      }

      if (*&v150[0])
      {
        v153.location = 0;
        v153.length = v8;
        CFAttributedStringSetAttribute(a2, v153, *MEMORY[0x1E6965A60], *&v150[0]);
      }

      if (*&value.a)
      {
        CFRelease(*&value.a);
        value.a = 0.0;
      }

      if (*&v150[0])
      {
        CFRelease(*&v150[0]);
        *&v150[0] = 0;
      }

      setupRubyAnnotation(a1, a2, 2, a4);
      break;
  }

  return 0;
}

CGColorRef createCGColorFromCFArray(const __CFDictionary *a1, void *key, _OWORD *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1 || !key || !CFDictionaryContainsKey(a1, key))
  {
    if (!a3)
    {
      return 0;
    }

    v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
LABEL_15:
    v14 = a3[1];
    *components = *a3;
    v18 = v14;
LABEL_16:
    if (v9)
    {
      v8 = CGColorCreate(v9, components);
      CGColorSpaceRelease(v9);
      return v8;
    }

    return 0;
  }

  Value = CFDictionaryGetValue(a1, key);
  v7 = CFGetTypeID(Value);
  if (v7 != CGColorGetTypeID())
  {
    v10 = CFGetTypeID(Value);
    if (v10 == CFArrayGetTypeID())
    {
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v11);
        valuePtr = 0.0;
        v13 = CFGetTypeID(ValueAtIndex);
        if (v13 != CFNumberGetTypeID())
        {
          break;
        }

        CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
        components[(v11++ - 1) & 3] = valuePtr;
        if (v11 == 4)
        {
          v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          goto LABEL_16;
        }
      }
    }

LABEL_14:
    v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = CGColorRetain(Value);
  if (!v8)
  {
    goto LABEL_14;
  }

  return v8;
}

CFDictionaryRef createFrameAttributesDictionary(const __CFString *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = *MEMORY[0x1E6965A08];
  valuePtr = 0;
  if (a1)
  {
    if (CFStringCompare(a1, *MEMORY[0x1E6960C38], 0))
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }

    valuePtr = v1;
  }

  v2 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  return CFDictionaryCreate(v2, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

uint64_t getTextAlignment(const __CFAttributedString *a1)
{
  v6.location = 0;
  v6.length = 0;
  Attribute = CFAttributedStringGetAttribute(a1, 0, *MEMORY[0x1E69607B0], &v6);
  if (Attribute)
  {
    v3 = Attribute;
    if (CFStringCompare(Attribute, *MEMORY[0x1E69607A0], 0))
    {
      if (CFStringCompare(v3, *MEMORY[0x1E6960788], 0))
      {
        v4 = 1;
        if (CFStringCompare(v3, *MEMORY[0x1E6960780], 0))
        {
          if (CFStringCompare(v3, *MEMORY[0x1E6960798], 0))
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return (2 * (CFAttributedStringGetAttribute(a1, 0, *MEMORY[0x1E6960998], &v6) == 0));
  }

  return v4;
}

void setupRubyAnnotation(uint64_t a1, CFAttributedStringRef aStr, int a3, double a4)
{
  v5 = aStr;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Length = CFAttributedStringGetLength(aStr);
  if (Length >= 1)
  {
    v7 = Length;
    v8 = 0;
    v9 = *MEMORY[0x1E69659D8];
    v10 = *MEMORY[0x1E6960930];
    key = *MEMORY[0x1E6960938];
    theString2 = *MEMORY[0x1E6960B68];
    v40 = *MEMORY[0x1E6960B58];
    v41 = *MEMORY[0x1E6960B38];
    v39 = *MEMORY[0x1E6960B40];
    v37 = *MEMORY[0x1E6960B48];
    v35 = *MEMORY[0x1E6960B30];
    v36 = *MEMORY[0x1E6960B60];
    v51 = *MEMORY[0x1E6960940];
    attrName = *MEMORY[0x1E6965638];
    v11 = a4 * 0.5;
    v12 = *MEMORY[0x1E695E480];
    v48 = *MEMORY[0x1E6965A48];
    v47 = *MEMORY[0x1E6965A40];
    v46 = *MEMORY[0x1E695E4D0];
    v43 = *MEMORY[0x1E6965A58];
    v42 = *MEMORY[0x1E6965A60];
    v50 = *MEMORY[0x1E6960948];
    v49 = *MEMORY[0x1E6965A38];
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      Attributes = CFAttributedStringGetAttributes(v5, v8, &effectiveRange);
      if (Attributes)
      {
        v14 = Attributes;
        v15 = CFDictionaryContainsKey(Attributes, v9) ? CFDictionaryGetValue(v14, v9) : 0;
        if (CFDictionaryContainsKey(v14, v10))
        {
          break;
        }
      }

LABEL_44:
      v8 = effectiveRange.length + effectiveRange.location;
      if (effectiveRange.length + effectiveRange.location >= v7)
      {
        return;
      }
    }

    Value = CFDictionaryGetValue(v14, v10);
    String = CFAttributedStringGetString(Value);
    v55.location = 0;
    v55.length = 0;
    v18 = CFAttributedStringGetAttributes(Value, 0, &v55);
    v19 = CFDictionaryGetValue(v18, key);
    if (v19)
    {
      v20 = v19;
      if (CFStringCompare(v19, theString2, 0) == kCFCompareEqualTo)
      {
        v21 = kCTRubyAlignmentStart;
        goto LABEL_22;
      }

      if (CFStringCompare(v20, v41, 0))
      {
        if (CFStringCompare(v20, v40, 0))
        {
          if (CFStringCompare(v20, v39, 0))
          {
            if (CFStringCompare(v20, v37, 0))
            {
              if (CFStringCompare(v20, v36, 0))
              {
                v21 = 2 * (CFStringCompare(v20, v35, 0) != kCFCompareEqualTo);
              }

              else
              {
                v21 = kCTRubyAlignmentLineEdge;
              }
            }

            else
            {
              v21 = kCTRubyAlignmentDistributeSpace;
            }
          }

          else
          {
            v21 = kCTRubyAlignmentDistributeLetter;
          }
        }

        else
        {
          v21 = kCTRubyAlignmentEnd;
        }

        goto LABEL_22;
      }
    }

    v21 = kCTRubyAlignmentCenter;
LABEL_22:
    v22 = CFDictionaryGetValue(v18, v51);
    if (v22)
    {
      CFAttributedStringSetAttribute(v5, effectiveRange, attrName, v22);
    }

    v58 = 0;
    valuePtr = 0x3FE0000000000000;
    v57 = 0;
    if (a3 == 2)
    {
      calculateStrokeAttributes(a1, &v58, &v57, v11);
    }

    Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = v12;
    v25 = Mutable;
    if (Mutable)
    {
      v26 = v21;
      v27 = v5;
      v28 = String;
      v29 = v7;
      v30 = v10;
      v31 = CFNumberCreate(v24, kCFNumberCGFloatType, &valuePtr);
      CFDictionaryAddValue(v25, v48, v31);
      if (v31)
      {
        CFRelease(v31);
      }

      CFDictionaryAddValue(v25, v47, v46);
      CFDictionaryAddValue(v25, v9, v15);
      if (v58)
      {
        CFDictionaryAddValue(v25, v43, v58);
      }

      v10 = v30;
      if (v57)
      {
        CFDictionaryAddValue(v25, v42, v57);
      }

      Copy = CFDictionaryCreateCopy(allocator, v25);
      v7 = v29;
      String = v28;
      v5 = v27;
      v21 = v26;
    }

    else
    {
      setupRubyAnnotation_cold_1();
      Copy = 0;
    }

    if (v58)
    {
      CFRelease(v58);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    CFDictionaryGetValue(v18, v50);
    v33 = FigCFEqual() != 0;
    v34 = CTRubyAnnotationCreateWithAttributes(v21, kCTRubyOverhangNone, v33, String, Copy);
    CFAttributedStringSetAttribute(v5, effectiveRange, v49, v34);
    if (v34)
    {
      CFRelease(v34);
    }

    v12 = allocator;
    if (Copy)
    {
      CFRelease(Copy);
    }

    goto LABEL_44;
  }
}

void subtitleRendererLayoutDo(double *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = *(v1 + 1);
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[6];
  v6 = v1[7];
  *attrName = *(v1 + 4);
  *value = *(v1 + 2);
  v463 = *(v1 + 5);
  v483 = *(v1 + 6);
  LOBYTE(v477.origin.x) = *(v1 + 112);
  v8 = *(v1 + 116);
  v9 = *(v1 + 31);
  v10 = *(v1 + 16);
  range_8 = *(v1 + 17);
  v436 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  effectiveRange.length = 0;
  effectiveRange.location = 0;
  if (!*DerivedStorage)
  {
    goto LABEL_462;
  }

  if (v10)
  {
    v12 = v10;
    v13 = MEMORY[0x1E695F058];
    if (!v3)
    {
      a_low = -12090;
      v27 = range_8;
      goto LABEL_459;
    }

    v14 = DerivedStorage;
    v396 = v10;
    v15 = CFDictionaryGetValue(v3, @"SubtitleContent");
    if (!v15 || !CFArrayGetCount(v15))
    {
      a_low = -12090;
      v27 = range_8;
      v12 = v10;
      goto LABEL_459;
    }

    v16 = *MEMORY[0x1E695E480];
    Count = CFDictionaryGetCount(v3);
    MutableCopy = CFDictionaryCreateMutableCopy(v16, Count, v3);
    if (!MutableCopy)
    {
      subtitleRendererLayoutDo_cold_3(&v487);
      a_low = LODWORD(v487.a);
      goto LABEL_458;
    }

    v20 = v8 < 1.0 && v8 != 0.0 || v8 == -1.0;
    v21 = fabs(v8);
    if (!v20)
    {
      v21 = 0.9;
    }

    v22 = vmulq_n_f64(*value, v21);
    theDict = MutableCopy;
    v407 = v4;
    v389 = v1;
    v414 = v22;
    v412 = v22.f64[1];
    if (v7 == 0.0 || v6 == 0.0)
    {
      v24 = *MEMORY[0x1E695EFD0];
      v25 = *(MEMORY[0x1E695EFD0] + 16);
      v23 = (MEMORY[0x1E695EFD0] + 32);
      v6 = v22.f64[1];
      v7 = v22.f64[0];
    }

    else
    {
      v23 = &v483;
      v25 = v463;
      v24 = *attrName;
    }

    v482 = *v23;
    *&rect.a = v24;
    *&rect.c = v25;
    *&rect.tx = v482;
    v459 = v21;
    CGAffineTransformScale(&v487, &rect, v21, v21);
    a = v487.a;
    b = v487.b;
    c = v487.c;
    d = v487.d;
    v482 = *&v487.tx;
    v32 = theDict;
    valuea = CFDictionaryGetValue(theDict, @"SubtitleFormat");
    CFNumberGetValue(valuea, kCFNumberSInt32Type, &valuePtr);
    v33 = CFDictionaryGetValue(theDict, @"SubtitleExtendedLanguageTag");
    if (!FigCFEqual())
    {
      v34 = *(v14 + 9);
      *(v14 + 9) = v33;
      if (v33)
      {
        CFRetain(v33);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      v14[80] = 1;
      v32 = theDict;
    }

    v35 = CFDictionaryGetValue(v32, @"SubtitleContent");
    v36 = CFDictionaryGetValue(v32, @"kFigSubtitleRenderer_ObeySubtitleFormatting");
    v37 = CFArrayGetCount(v35);
    theArray = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
    if (theArray)
    {
      v38 = malloc_type_calloc(v37, 0x98uLL, 0x1000040C7D30508uLL);
      if (v38)
      {
        v39 = v38;
        v400 = v5;
        v439 = *MEMORY[0x1E6960998];
        v417 = *MEMORY[0x1E6960C38];
        v418 = v38;
        v413 = v16;
        v392 = *MEMORY[0x1E695E4D0];
        if (v37 >= 1)
        {
          v40 = 0;
          v421 = 0;
          v41 = v6 * d;
          v42 = v6 * c + a * v7;
          v43 = v41 + b * v7;
          v453 = *MEMORY[0x1E6960978];
          theString2 = *MEMORY[0x1E6960C30];
          v450 = *MEMORY[0x1E69608E0];
          v443 = *MEMORY[0x1E69608D8];
          v448 = *MEMORY[0x1E69609A0];
          v464 = v36 == *MEMORY[0x1E695E4D0];
          __asm { FMOV            V1.2D, #0.5 }

          v460 = vmulq_f64(vmulq_n_f64(v414, 1.0 - v459), _Q1);
          v47 = v436;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v35, v40);
            if (ValueAtIndex)
            {
              v49 = ValueAtIndex;
              if (CFAttributedStringGetLength(ValueAtIndex))
              {
                break;
              }
            }

LABEL_70:
            if (v37 == ++v40)
            {
              goto LABEL_73;
            }
          }

          v491.length = CFAttributedStringGetLength(v49);
          v491.location = 0;
          CFAttributedStringSetAttribute(v49, v491, @"kFigSubtitleRenderer_SourceFormat", valuea);
          v50 = &v39[152 * v421];
          *(v50 + 12) = a;
          *(v50 + 13) = b;
          *(v50 + 14) = c;
          *(v50 + 15) = d;
          *(v50 + 8) = v482;
          *v50 = v5;
          *(v50 + 1) = v407;
          *(v50 + 1) = v414;
          *(v50 + 4) = v42;
          *(v50 + 5) = v43;
          *(v50 + 36) = v9;
          if (valuePtr != 2021028980 && valuePtr != 2004251764)
          {
            v59 = *(MEMORY[0x1E695F050] + 16);
            *&rect.a = *MEMORY[0x1E695F050];
            *&rect.c = v59;
            *(v50 + 11) = 0x3FECCCCCCCCCCCCDLL;
            v60 = CFDictionaryGetValue(theDict, @"kFigSubtitleRenderer_TextBox");
            if (v60)
            {
              CGRectMakeWithDictionaryRepresentation(v60, &rect);
            }

            v508.origin.x = rect.a;
            v508.origin.y = rect.b;
            v508.size.width = rect.c;
            v508.size.height = rect.d;
            v487.a = a;
            v487.b = b;
            v487.c = c;
            v487.d = d;
            *&v487.tx = v482;
            v509 = CGRectApplyAffineTransform(v508, &v487);
            v61 = v509.origin.y + v509.size.height * 0.5;
            *(v50 + 8) = v42 * 0.5;
            goto LABEL_67;
          }

          v487.a = 50.0;
          rect.a = 100.0;
          LODWORD(descent[0]) = 0;
          v477.size.width = -100.0;
          Attribute = CFAttributedStringGetAttribute(v49, 0, v439, &effectiveRange);
          v52 = CFAttributedStringGetAttribute(v49, 0, v453, &effectiveRange);
          if (Attribute)
          {
            if (CFStringCompare(Attribute, theString2, 0) == kCFCompareEqualTo)
            {
              v487.a = 0.0;
              if (!v52)
              {
LABEL_40:
                v53 = CFAttributedStringGetAttribute(v49, 0, v450, &effectiveRange);
                v54 = v53;
                rect.a = 100.0;
                if (Attribute)
                {
                  v55 = CFStringCompare(Attribute, theString2, 0);
                  v56 = 100.0;
                  if (v55)
                  {
                    v56 = 0.0;
                  }

                  rect.a = v56;
                  v50[80] = 0;
                  v57 = v50 + 80;
                  if (v54)
                  {
                    CFNumberGetValue(v54, kCFNumberCGFloatType, &rect);
                    if (CFStringCompare(Attribute, v417, 0) == kCFCompareEqualTo)
                    {
                      v58 = 0;
                      rect.a = 100.0 - rect.a;
LABEL_54:
                      v63 = CFAttributedStringGetAttribute(v49, 0, v448, &effectiveRange);
                      if (v63)
                      {
                        CFNumberGetValue(v63, kCFNumberCGFloatType, &v477.size);
                      }

                      *(v50 + 11) = v477.size.width / 100.0;
                      if (Attribute)
                      {
                        v39 = v418;
                        if (*v57)
                        {
                          v64 = SLODWORD(descent[0]);
                        }

                        else
                        {
                          v64 = v42 * (rect.a / 100.0);
                        }

                        v16 = v413;
                        v61 = v43 * ((100.0 - v487.a) / 100.0);
                        *(v50 + 8) = v64;
                      }

                      else
                      {
                        v16 = v413;
                        if (v58)
                        {
                          v61 = SLODWORD(descent[0]);
                        }

                        else
                        {
                          v61 = v43 * ((100.0 - rect.a) / 100.0);
                        }

                        *(v50 + 8) = v42 * (v487.a / 100.0);
                        v39 = v418;
                      }

LABEL_67:
                      *(v50 + 9) = v61;
                      v50[81] = v464;
                      v50[82] = LOBYTE(v477.origin.x);
                      *(v50 + 21) = valuePtr;
                      *(v50 + 3) = v460;
                      Length = CFAttributedStringGetLength(v49);
                      v66 = CFAttributedStringCreateMutableCopy(v16, Length, v49);
                      if (v66)
                      {
                        v67 = v66;
                        CFArrayAppendValue(theArray, v66);
                        CFRelease(v67);
                        ++v421;
                      }

                      v47 = v436;
                      goto LABEL_70;
                    }

LABEL_51:
                    v58 = 0;
                    goto LABEL_54;
                  }
                }

                else
                {
                  v50[80] = 0;
                  v57 = v50 + 80;
                  if (v53)
                  {
                    CFNumberGetValue(v53, kCFNumberCGFloatType, &rect);
                    goto LABEL_51;
                  }
                }

                v62 = CFAttributedStringGetAttribute(v49, 0, v443, &effectiveRange);
                v58 = 1;
                if (v62)
                {
                  CFNumberGetValue(v62, kCFNumberIntType, descent);
                  *v57 = 1;
                }

                goto LABEL_54;
              }

LABEL_39:
              CFNumberGetValue(v52, kCFNumberCGFloatType, &v487);
              goto LABEL_40;
            }

            v487.a = 100.0;
          }

          if (!v52)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        v421 = 0;
        v47 = v436;
LABEL_73:
        v410 = *MEMORY[0x1E695F058];
        v420 = *(MEMORY[0x1E695F058] + 8);
        v422 = *(MEMORY[0x1E695F058] + 24);
        v423 = *(MEMORY[0x1E695F058] + 16);
        v430 = *MEMORY[0x1E69631D8];
        v409 = *MEMORY[0x1E69607C8];
        v426 = *MEMORY[0x1E695F060];
        v424 = *(MEMORY[0x1E695F060] + 8);
        v390 = *MEMORY[0x1E69608A8];
        v391 = *MEMORY[0x1E6965A08];
        v401 = *MEMORY[0x1E6960818];
        v429 = *MEMORY[0x1E6960830];
        v419 = *MEMORY[0x1E69609E0];
        v411 = *MEMORY[0x1E69609E8];
        v403 = v5 + v414.f64[0];
        v68 = 1.0;
        v69 = 0.5;
        v428 = *MEMORY[0x1E6960838];
        v435 = *MEMORY[0x1E69609F8];
        v408 = *MEMORY[0x1E6960A08];
        v427 = *MEMORY[0x1E6960A00];
        v449 = 1.0;
        v70 = theArray;
        while (1)
        {
          while (1)
          {
            v402 = CMBaseObjectGetDerivedStorage();
            v437 = CFArrayGetCount(v70);
            if (v437 >= 1)
            {
              for (i = 0; i != v437; ++i)
              {
                v72 = CFArrayGetValueAtIndex(v70, i);
                v73 = &v39[152 * i];
                v74 = *(v73 + 2);
                v75 = *(v73 + 3);
                v76 = *(v73 + 4);
                v77 = *(v73 + 5);
                theString2a = *(v73 + 7);
                v461 = *(v73 + 6);
                attrNamea = *(v73 + 8);
                valueb = *(v73 + 9);
                v441 = v73[80];
                v444 = v73[81];
                v446 = v73[82];
                v78 = *(v73 + 21);
                v79 = *(v73 + 11);
                v80 = *(v73 + 13);
                v81 = *(v73 + 15);
                v82 = *(v73 + 36);
                v83 = CMBaseObjectGetDerivedStorage();
                v486 = 0.0;
                v484 = 0.0;
                *(v83 + 32) = v82;
                *&v454 = v75;
                v477.origin.x = v76;
                _NF = vabdd_f64(v76, v74) < 0.1;
                v440 = (v75 - v77) * v69;
                if (_NF)
                {
                  v85 = (v75 - v77) * v69;
                }

                else
                {
                  v85 = 0.0;
                }

                v465 = v85;
                if (_NF)
                {
                  v86 = 0.0;
                }

                else
                {
                  v86 = (v74 - v76) * v69;
                }

                v485 = v77 * 0.15 / 3.0;
                if (v78 != 1954034535)
                {
                  v487.a = 0.0;
                  v487.b = 0.0;
                  v87 = CFAttributedStringGetAttribute(v72, 0, v430, &v487);
                  if (v87)
                  {
                    CFNumberGetValue(v87, kCFNumberCGFloatType, &v485);
                    v485 = v80 + v81 * v485;
                  }

                  else
                  {
                    v134 = CFAttributedStringGetAttribute(v72, 0, v409, &v487);
                    if (v134)
                    {
                      rect.a = 0.0;
                      CFNumberGetValue(v134, kCFNumberCGFloatType, &rect);
                      if (*(v83 + 144) == 1)
                      {
                        v89 = v77 * rect.a / 100.0;
                        if (v89 > 0.0)
                        {
                          goto LABEL_87;
                        }
                      }
                    }
                  }
                }

                v88 = *(v83 + 280);
                v89 = v485;
                if (v88 > 0.0)
                {
                  v89 = v88 * v485;
                }

LABEL_87:
                v486 = v449 * v89;
                v90 = v465;
                v68 = 1.0;
                v91 = CFNumberCreate(v16, kCFNumberCGFloatType, &v486);
                v492.length = CFAttributedStringGetLength(v72);
                v492.location = 0;
                CFAttributedStringSetAttribute(v72, v492, @"kFigSubtitleRenderer_FontSizeToUse", v91);
                CFRelease(v91);
                v92 = *(v83 + 280);
                v93 = v486;
                v94 = CMBaseObjectGetDerivedStorage();
                *&v451 = v86;
                if (!v72)
                {
                  v133 = v422;
                  v112 = v423;
                  x = v477.origin.x;
                  goto LABEL_172;
                }

                v95 = v94;
                v96 = -v79;
                if (v79 >= 0.0)
                {
                  v96 = v79;
                }

                if (v92 > 0.0)
                {
                  v96 = v96 * (v449 * v92);
                }

                if (v96 > 1.0)
                {
                  v96 = 1.0;
                }

                v484 = 0.0;
                x = v477.origin.x;
                v98 = v477.origin.x * v96;
                rect.b = 0.0;
                rect.a = 0.0;
                v438 = subtitleRendererSetupText(v47, v72, 0, v93);
                v99 = CFAttributedStringGetAttribute(v72, 0, v439, &rect);
                v100 = v99;
                if (v99)
                {
                  v101 = v98;
                }

                else
                {
                  v101 = v77;
                }

                if (v99)
                {
                  v102 = v77;
                }

                else
                {
                  v102 = v98;
                }

                v103 = CFAttributedStringGetLength(v72);
                if (v103 < 1)
                {
                  v112 = v426;
                  v133 = v424;
                  v47 = v436;
                  v68 = 1.0;
                  goto LABEL_168;
                }

                v104 = v103;
                v105 = CTFramesetterCreateWithAttributedString(v72);
                if (!v105)
                {
                  v70 = theArray;
                  v47 = v436;
                  v68 = 1.0;
LABEL_171:
                  v112 = x;
                  v133 = v77;
                  goto LABEL_172;
                }

                v106 = v105;
                frameAttributes = createFrameAttributesDictionary(v100);
                if (!*(v95 + 28))
                {
                  v135 = CFAttributedStringGetLength(v72);
                  Mutable = CGPathCreateMutable();
                  v47 = v436;
                  if (Mutable)
                  {
                    v137 = Mutable;
                    width = 0.0;
                    v514.origin.x = 0.0;
                    v514.origin.y = 0.0;
                    v514.size.width = v102;
                    v514.size.height = v101;
                    CGPathAddRect(Mutable, 0, v514);
                    v494.location = 0;
                    v494.length = v135;
                    v139 = CTFramesetterCreateFrame(v106, v494, v137, frameAttributes);
                    v140 = 0.0;
                    if (v139)
                    {
                      cfa = v139;
                      Lines = CTFrameGetLines(v139);
                      if (Lines)
                      {
                        v142 = Lines;
                        v143 = CFArrayGetCount(Lines);
                        if (v143 >= 1)
                        {
                          v144 = v143;
                          framea = v135;
                          v477.size.width = 0.0;
                          leading = 0.0;
                          descent[0] = 0.0;
                          v145 = CFArrayGetValueAtIndex(v142, 0);
                          CTLineGetTypographicBounds(v145, &v477.size.width, descent, &leading);
                          rangea = v477.size.width;
                          v394 = leading;
                          v395 = descent[0];
                          v488 = 0;
                          v146 = CFDictionaryGetValue(frameAttributes, v391);
                          if (!v146 || (CFNumberGetValue(v146, kCFNumberSInt32Type, &v488), !v488))
                          {
                            v147 = 0;
                            v148 = v93 / 5.0;
                            v149 = v148;
                            do
                            {
                              v150 = CFArrayGetValueAtIndex(v142, v147);
                              StringRange = CTLineGetStringRange(v150);
                              v487.a = 0.0;
                              v487.b = 0.0;
                              Attributes = CFAttributedStringGetAttributes(v72, StringRange.length + StringRange.location - 1, &v487);
                              if (CFDictionaryGetValue(Attributes, v390) == v392)
                              {
                                v153 = v149;
                              }

                              else
                              {
                                v153 = 0.0;
                              }

                              v154 = CTLineGetTypographicBounds(v150, &v477.size.width, descent, &leading) + v153;
                              if (width < v154)
                              {
                                width = v154;
                              }

                              ++v147;
                            }

                            while (v144 != v147);
                          }

                          v140 = rangea + v395 + v394;
                          v39 = v418;
                          v135 = framea;
                        }
                      }

                      CFRelease(cfa);
                      v16 = v413;
                      v47 = v436;
                    }

                    CFRelease(v137);
                    v155.location = 0;
                  }

                  else
                  {
                    v155.location = 0;
                    width = 0.0;
                    v140 = 0.0;
                  }

                  v484 = v140;
                  v155.length = v135;
                  v507.width = v102;
                  v507.height = v101;
                  v156 = CTFramesetterSuggestFrameSizeWithConstraints(v106, v155, 0, v507, 0);
                  if (v156.width >= width)
                  {
                    width = v156.width;
                  }

                  v157 = CMBaseObjectGetDerivedStorage();
                  v487.a = 0.0;
                  v487.b = 0.0;
                  v158 = CFAttributedStringGetAttributes(v72, 0, &v487);
                  EdgeStyle = getEdgeStyle(*(v157 + 216), *(v157 + 352), v158, v401);
                  if (EdgeStyle == 4)
                  {
                    v160 = v140 * 10.0 / 100.0;
                    v68 = 1.0;
                  }

                  else
                  {
                    v68 = 1.0;
                    if (EdgeStyle != 3)
                    {
                      v160 = 0.0;
                      v90 = v465;
                      if (EdgeStyle == 2)
                      {
                        v160 = v93 * 0.0882352941;
                        if (v93 > 60.0)
                        {
                          v160 = v160 / 1.5;
                        }
                      }

                      goto LABEL_162;
                    }

                    v160 = v93 * 0.0882352941;
                    if (v93 > 60.0)
                    {
                      v160 = v93 * 0.0882352941 / 1.5;
                    }
                  }

                  v90 = v465;
LABEL_162:
                  v487.a = v160;
                  v161 = CFAttributedStringGetLength(v72);
                  v162 = CFNumberCreate(v16, kCFNumberCGFloatType, &v487);
                  if (v162)
                  {
                    v163 = v162;
                    v495.location = 0;
                    v495.length = v161;
                    CFAttributedStringSetAttribute(v72, v495, @"kFigSubtitleRenderer_CompensationInTextLayout", v162);
                    CFRelease(v163);
                  }

                  v112 = width + v487.a * 2.0;
                  v113 = v156.height + v487.a * 2.0;
                  x = v477.origin.x;
                  goto LABEL_165;
                }

                v107 = CGPathCreateMutable();
                v47 = v436;
                if (v107)
                {
                  v108 = v107;
                  v510.origin.x = 0.0;
                  v510.origin.y = 0.0;
                  v510.size.width = v102;
                  v510.size.height = v101;
                  CGPathAddRect(v107, 0, v510);
                  v493.location = 0;
                  v493.length = v104;
                  v109 = frameAttributes;
                  v110 = CTFramesetterCreateFrame(v106, v493, v108, frameAttributes);
                  if (v110)
                  {
                    frame = v110;
                    v111 = CTFrameGetLines(v110);
                    v112 = v426;
                    v113 = v424;
                    v68 = 1.0;
                    if (v111)
                    {
                      v114 = v111;
                      v115 = CFArrayGetCount(v111);
                      v112 = v426;
                      v113 = v424;
                      if (v115)
                      {
                        v116 = v115;
                        range = v115 - 1;
                        if (v115 < 1)
                        {
                          cf = 0.0;
                          v434 = 0.0;
                          v112 = v426;
                          v122 = 0.0;
                          v121 = 0.0;
                          v120 = 0.0;
                          v119 = 0.0;
                          v118 = 0.0;
                          v406 = 0.0;
                        }

                        else
                        {
                          v117 = 0;
                          v406 = 0.0;
                          v118 = 0.0;
                          v119 = 0.0;
                          v120 = 0.0;
                          v121 = 0.0;
                          v122 = 0.0;
                          cf = 0.0;
                          v434 = 0.0;
                          v123 = v426;
                          do
                          {
                            v124 = CFArrayGetValueAtIndex(v114, v117);
                            if (!v124)
                            {
                              goto LABEL_121;
                            }

                            v125 = v124;
                            if (v117)
                            {
                              BoundsWithOptions = CTLineGetBoundsWithOptions(v124, 0x10uLL);
                              v112 = BoundsWithOptions.size.width;
                            }

                            else
                            {
                              v512 = CTLineGetBoundsWithOptions(v124, 0);
                              v126 = v512.origin.x;
                              y = v512.origin.y;
                              v128 = v512.size.width;
                              height = v512.size.height;
                              v554 = CTLineGetBoundsWithOptions(v125, 8uLL);
                              v513.origin.x = v126;
                              v513.origin.y = y;
                              v513.size.width = v128;
                              v513.size.height = height;
                              BoundsWithOptions = CGRectUnion(v513, v554);
                              v112 = v130;
                              v120 = BoundsWithOptions.size.height;
                              v119 = v130;
                              v118 = BoundsWithOptions.origin.y;
                              v406 = BoundsWithOptions.origin.x;
                            }

                            if (v116 == 1)
                            {
                              v131 = BoundsWithOptions.size.height;
                            }

                            else
                            {
                              v131 = v434;
                            }

                            v132 = cf;
                            if (v116 == 1)
                            {
                              v132 = v112;
                            }

                            cf = v132;
                            v434 = v131;
                            if (v116 == 1)
                            {
                              v122 = BoundsWithOptions.origin.y;
                              v121 = BoundsWithOptions.origin.x;
                            }

                            if (v123 >= v112)
                            {
LABEL_121:
                              v112 = v123;
                            }

                            ++v117;
                            v123 = v112;
                            --v116;
                          }

                          while (v116);
                        }

                        v484 = v120;
                        v477.size.height = 0.0;
                        v477.size.width = 0.0;
                        v499.location = 0;
                        v499.length = 1;
                        CTFrameGetLineOrigins(frame, v499, &v477.size);
                        CGAffineTransformMakeTranslation(&v487, 0.0, v477.size.height);
                        v520.origin.x = v406;
                        v520.origin.y = v118;
                        v520.size.width = v119;
                        v520.size.height = v120;
                        v521 = CGRectApplyAffineTransform(v520, &v487);
                        MaxY = CGRectGetMaxY(v521);
                        v500.location = range;
                        v500.length = 1;
                        CTFrameGetLineOrigins(frame, v500, &v477.size);
                        CGAffineTransformMakeTranslation(&v487, 0.0, v477.size.height);
                        v522.origin.x = v121;
                        v522.origin.y = v122;
                        v522.size.width = cf;
                        v522.size.height = v434;
                        v523 = CGRectApplyAffineTransform(v522, &v487);
                        v68 = 1.0;
                        v113 = MaxY - CGRectGetMinY(v523) + 1.0;
                        v47 = v436;
                        v90 = v465;
                        x = v477.origin.x;
                      }
                    }

                    CFRelease(frame);
                    v16 = v413;
                    v109 = frameAttributes;
                  }

                  else
                  {
                    v438 = -12092;
                    v112 = v426;
                    v113 = v424;
                    v68 = 1.0;
                  }

                  CFRelease(v108);
                  v39 = v418;
                  if (!v109)
                  {
                    goto LABEL_167;
                  }

LABEL_166:
                  CFRelease(v109);
                  goto LABEL_167;
                }

                v112 = v426;
                v113 = v424;
                v39 = v418;
                v68 = 1.0;
LABEL_165:
                v109 = frameAttributes;
                if (frameAttributes)
                {
                  goto LABEL_166;
                }

LABEL_167:
                v133 = ceil(v113);
                CFRelease(v106);
                v70 = theArray;
LABEL_168:
                v164 = CFAttributedStringGetLength(v72);
                v165 = CFNumberCreate(v16, kCFNumberCGFloatType, &v484);
                if (v165)
                {
                  v166 = v165;
                  v496.location = 0;
                  v496.length = v164;
                  CFAttributedStringSetAttribute(v72, v496, @"kFigSubtitleRenderer_SuggestLineHeight", v165);
                  CFRelease(v166);
                }

                if (v438)
                {
                  goto LABEL_171;
                }

LABEL_172:
                if (v78 != 1954034535)
                {
                  v487.a = 0.0;
                  v487.b = 0.0;
                  v174 = CFAttributedStringGetAttribute(v72, 0, v439, &v487);
                  if (v174)
                  {
                    if (v441)
                    {
                      if (attrNamea <= 0.0)
                      {
                        v175 = -(attrNamea * v484);
                      }

                      else
                      {
                        v175 = x - attrNamea * v484;
                      }

                      attrNamea = v175;
                    }

                    v170 = v133;
                    v133 = v112;
                  }

                  else
                  {
                    if (v441)
                    {
                      if (valueb <= 0.0)
                      {
                        v176 = -(valueb * v484);
                      }

                      else
                      {
                        v176 = v77 - valueb * v484;
                      }

                      valueb = v176;
                    }

                    v170 = v112;
                  }

                  v177 = CFAttributedStringGetAttribute(v72, 0, v429, &v487);
                  v171 = *&v451;
                  if (v177)
                  {
                    v178 = v177;
                    if (CFStringCompare(v177, v419, 0))
                    {
                      if (CFStringCompare(v178, v411, 0))
                      {
                        goto LABEL_190;
                      }

                      if (v174)
                      {
                        v168 = *&v451 + attrNamea + v170 * -0.5;
                        goto LABEL_201;
                      }

                      v169 = v90 + valueb + v133 * -0.5;
LABEL_204:
                      v168 = v410;
LABEL_205:
                      v179 = CFAttributedStringGetAttribute(v72, 0, v428, &v487);
                      if (!v179)
                      {
                        TextAlignment = getTextAlignment(v72);
                        v181 = v435;
                        if (TextAlignment != 1)
                        {
                          v181 = v427;
                        }

                        if ((TextAlignment & 3) != 0)
                        {
                          v179 = v181;
                        }

                        else
                        {
                          v179 = v408;
                        }
                      }

                      if (CFStringCompare(v179, v435, 0))
                      {
                        if (CFStringCompare(v179, v427, 0))
                        {
                          v173 = *&theString2a;
                          v172 = v461;
                          if (v174)
                          {
                            v169 = v90 + valueb - v133;
                          }

                          else
                          {
                            v168 = *&v451 + attrNamea;
                          }

LABEL_221:
                          v167 = v477.origin.x;
                          goto LABEL_222;
                        }

                        v182 = *&v451 + attrNamea + v170 * -0.5;
                        v183 = v90 + valueb + v133 * -0.5;
                      }

                      else
                      {
                        v182 = *&v451 + attrNamea - v170;
                        v183 = v90 + valueb;
                      }

                      if (v174)
                      {
                        v169 = v183;
                      }

                      else
                      {
                        v168 = v182;
                      }

                      v173 = *&theString2a;
                      v172 = v461;
                      goto LABEL_221;
                    }

                    if (!v174)
                    {
                      v169 = v90 + valueb;
                      goto LABEL_204;
                    }

                    if (CFStringCompare(v174, v417, 0))
                    {
                      v168 = *&v451 + attrNamea - v170;
                    }

                    else
                    {
                      v168 = *&v451 + attrNamea;
                    }
                  }

                  else
                  {
LABEL_190:
                    if (!v174)
                    {
                      v169 = v90 + valueb - v133;
                      goto LABEL_204;
                    }

                    if (CFStringCompare(v174, v417, 0))
                    {
                      v168 = *&v451 + attrNamea;
                    }

                    else
                    {
                      v168 = *&v451 + attrNamea - v170;
                    }
                  }

LABEL_201:
                  v169 = v420;
                  goto LABEL_205;
                }

                v167 = x;
                v168 = x * 0.5 + *&v451 - v112 * 0.5;
                v169 = v90 + valueb - v133 * 0.5;
                v170 = v112;
                v171 = *&v451;
                v173 = *&theString2a;
                v172 = v461;
LABEL_222:
                if (v168 + v170 <= v167 + v171)
                {
                  if (v168 < v171)
                  {
                    v184 = v171;
                  }

                  else
                  {
                    v184 = v168;
                  }
                }

                else
                {
                  v184 = v167 + v171 - v170;
                }

                v69 = 0.5;
                v185 = v77 + v90;
                if (v169 + v133 <= v77 + v90)
                {
                  if (v169 < v90)
                  {
                    v169 = v90;
                  }
                }

                else
                {
                  v169 = v185 - v133;
                }

                v186 = v133 * 0.5;
                v187 = v133 * 0.5 + v169;
                if (v78 == 1954034535)
                {
                  v188 = *&v454;
                  v189 = *&v454 - v187;
                  if (!v444)
                  {
                    v189 = v133 * 0.5 + v169;
                  }

                  v190 = v77 * 0.5;
                  v191 = v77 * 0.5 + v90;
                  if (v446)
                  {
                    v192 = *&v454 * 0.5;
                    if (v189 <= v191)
                    {
                      v194 = v192 - v190 - v186;
                      if (v440 >= v133)
                      {
                        v187 = v194;
                      }

                      else
                      {
                        v187 = v133 * 0.5;
                      }
                    }

                    else
                    {
                      v193 = v192 + v190 + v186;
                      if (v440 >= v133)
                      {
                        v187 = v193;
                      }

                      else
                      {
                        v187 = *&v454 - v186;
                      }
                    }
                  }

                  else if (v189 <= v191)
                  {
                    v187 = v90 + v186;
                  }

                  else
                  {
                    v187 = v185 - v186;
                  }
                }

                else
                {
                  v188 = *&v454;
                }

                v195 = v170 * 0.5 + v184;
                if (*(v83 + 32) == 1)
                {
                  v187 = v188 - v187;
                }

                v515.origin.x = v172 + v195 - v170 * 0.5;
                v515.origin.y = v173 + v187 - v186;
                v515.size.width = v170;
                v515.size.height = v133;
                v516 = CGRectIntegral(v515);
                v196 = v516.origin.x;
                v197 = v516.origin.y;
                v198 = v516.size.width;
                v199 = v516.size.height;
                DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v516);
                v497.length = CFAttributedStringGetLength(v72);
                v497.location = 0;
                CFAttributedStringSetAttribute(v72, v497, @"kFigSubtitleRenderer_SuggestTextLayout", DictionaryRepresentation);
                CFRelease(DictionaryRepresentation);
                if (*(CMBaseObjectGetDerivedStorage() + 264) > 0.0)
                {
                  v487.a = 0.0;
                  v487.b = 0.0;
                  rect.a = 0.0;
                  v201 = CFAttributedStringGetAttribute(v72, 0, @"kFigSubtitleRenderer_SuggestLineHeight", &v487);
                  if (v201)
                  {
                    CFNumberGetValue(v201, kCFNumberCGFloatType, &rect);
                    v202 = rect.a;
                  }

                  else
                  {
                    v202 = 0.0;
                  }

                  v517.origin.y = v197 - v202 / 20.0;
                  v517.origin.x = v196 - v202 / 20.0;
                  v203 = v202 / 10.0;
                  v517.size.height = v199 + v203;
                  v517.size.width = v198 + v203;
                  v518 = CGRectIntegral(v517);
                  v196 = v518.origin.x;
                  v197 = v518.origin.y;
                  v198 = v518.size.width;
                  v199 = v518.size.height;
                }

                v519.origin.x = v196;
                v519.origin.y = v197;
                v519.size.width = v198;
                v519.size.height = v199;
                v204 = CGRectCreateDictionaryRepresentation(v519);
                if (v204)
                {
                  v205 = v204;
                  v498.length = CFAttributedStringGetLength(v72);
                  v498.location = 0;
                  CFAttributedStringSetAttribute(v72, v498, @"kFigSubtitleRenderer_SuggestLayout", v205);
                  CFRelease(v205);
                }
              }
            }

            v13 = MEMORY[0x1E695F058];
            v207 = v400;
            v208 = v407;
            if (*(v402 + 24) > 1u)
            {
              goto LABEL_416;
            }

            v209 = CMBaseObjectGetDerivedStorage();
            v210 = CFArrayGetCount(v70);
            if (v210 <= 1)
            {
              goto LABEL_416;
            }

            v211 = v210;
            v212 = CFArrayCreateMutable(v16, v210, 0);
            if (v212)
            {
              break;
            }

            v449 = v449 + -0.1;
            if (v449 <= 0.0)
            {
              goto LABEL_416;
            }
          }

          v213 = v212;
          v214 = 0;
          rect.b = 0.0;
          rect.a = 0.0;
          v216 = v407 + v412;
          v215 = v403;
          v217 = -1.0;
          do
          {
            v218 = *(v13 + 16);
            *&v487.a = *v13;
            *&v487.c = v218;
            v219 = CFArrayGetValueAtIndex(v70, v214);
            v220 = CFAttributedStringGetAttribute(v219, 0, @"kFigSubtitleRenderer_SuggestLayout", &rect);
            if (v220)
            {
              CGRectMakeWithDictionaryRepresentation(v220, &v487);
            }

            v221 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1020040DCB5435FuLL);
            if (!v221)
            {
              goto LABEL_341;
            }

            v222 = v221;
            *(v221 + 48) = 0;
            v223 = CFArrayCreateMutable(v16, 0, 0);
            *(v222 + 4) = v223;
            __asm { FMOV            V0.2D, #-1.0 }

            *(v222 + 40) = _Q0;
            *(v222 + 56) = _Q0;
            if (!v223)
            {
              free(v222);
LABEL_341:
              v462 = 1;
LABEL_342:
              v39 = v418;
              v47 = v436;
              goto LABEL_343;
            }

            v225 = *&v487.c;
            *v222 = *&v487.a;
            v222[1] = v225;
            CFArrayAppendValue(v213, v222);
            ++v214;
          }

          while (v211 != v214);
          v226 = *(v209 + 24);
          v455 = v211;
          theString2b = v213;
          if (v226 == 1)
          {
            v296 = CFArrayGetCount(v213);
            v297 = (v296 - 1) * v296;
            v39 = v418;
            if (v297 < 1 || (v301 = CFArrayGetCount(v213), resetOverlaps(v213), surveyOverlaps(v213), v301 < 1))
            {
              v298 = 0;
            }

            else
            {
              v302 = 0;
              v303 = v297 & ~(v297 >> 63);
              v304 = 1;
              do
              {
                v305 = 0;
                v306 = 0;
                v307 = 0;
                do
                {
                  v308 = CFArrayGetValueAtIndex(theString2b, v306);
                  if (*(v308 + 48) <= 0)
                  {
                    v309 = v308;
                    if (CFArrayGetCount(v308[4]) >= 1)
                    {
                      v310 = CFArrayGetCount(v309[4]);
                      if (v310 < 1)
                      {
                        v307 = 0;
                      }

                      else
                      {
                        v311 = v310;
                        v307 = 0;
                        v312 = 0;
                        v313 = *(v309 + 1) + *(v309 + 3) * v69;
                        do
                        {
                          v314 = CFArrayGetValueAtIndex(v309[4], v312);
                          v315 = v314[1];
                          v316 = v314[3] * v69;
                          v317 = v315 + v316;
                          v318 = v316 + *(v309 + 3) * v69 - vabdd_f64(v313, v315 + v316);
                          if (v318 > 0.0 && !*(v314 + 48))
                          {
                            if (v317 <= v313)
                            {
                              v319 = -v318;
                            }

                            else
                            {
                              v319 = v318;
                            }

                            v314[1] = v315 + v319;
                            v307 = 1;
                            *(v314 + 48) = 1;
                          }

                          ++v312;
                        }

                        while (v311 != v312);
                      }

                      v302 = 1;
                      v305 = 1;
                    }
                  }

                  ++v306;
                }

                while (v306 != v301);
                if (!v305 || v307)
                {
                  if (!v305)
                  {
                    break;
                  }
                }

                else
                {
                  resetNumMoves(theString2b);
                }

                if (v304 == v303)
                {
                  break;
                }

                ++v304;
                v301 = CFArrayGetCount(theString2b);
                resetOverlaps(theString2b);
                surveyOverlaps(theString2b);
              }

              while (v301 > 0);
              v298 = v302 != 0;
              v13 = MEMORY[0x1E695F058];
              v39 = v418;
              v211 = v455;
              v213 = theString2b;
            }

            sublayout_unionCFDataRects(v213);
            if (v299 > v412 || surveyOverlaps(v213))
            {
              v300 = 1;
            }

            else
            {
              v524.origin.x = sublayout_unionCFDataRects(v213);
              v320 = v524.origin.y;
              v321 = v524.size.width;
              v322 = v524.size.height;
              v477.origin.x = v524.origin.x;
              MinX = CGRectGetMinX(v524);
              v525.origin.x = v400;
              v525.origin.y = v407;
              v525.size.width = v414.f64[0];
              v525.size.height = v412;
              if (MinX >= CGRectGetMinX(v525))
              {
                v531.origin.x = v400;
                v531.origin.y = v407;
                v531.size.width = v414.f64[0];
                v531.size.height = v412;
                MaxX = CGRectGetMaxX(v531);
                v532.origin.x = v477.origin.x;
                v532.origin.y = v320;
                v532.size.width = v321;
                v532.size.height = v322;
                v325 = 0.0;
                if (MaxX < CGRectGetMaxX(v532))
                {
                  v533.origin.x = v477.origin.x;
                  v533.origin.y = v320;
                  v533.size.width = v321;
                  v533.size.height = v322;
                  v341 = CGRectGetMaxX(v533);
                  v534.origin.x = v400;
                  v534.origin.y = v407;
                  v534.size.width = v414.f64[0];
                  v534.size.height = v412;
                  v325 = -(v341 - CGRectGetMaxX(v534));
                }
              }

              else
              {
                v526.origin.x = v400;
                v526.origin.y = v407;
                v526.size.width = v414.f64[0];
                v526.size.height = v412;
                v324 = CGRectGetMinX(v526);
                v527.origin.x = v477.origin.x;
                v527.origin.y = v320;
                v527.size.width = v321;
                v527.size.height = v322;
                v325 = v324 - CGRectGetMinX(v527);
              }

              v535.origin.x = v477.origin.x;
              v535.origin.y = v320;
              v535.size.width = v321;
              v535.size.height = v322;
              MinY = CGRectGetMinY(v535);
              v536.origin.x = v400;
              v536.origin.y = v407;
              v536.size.width = v414.f64[0];
              v536.size.height = v412;
              if (MinY >= CGRectGetMinY(v536))
              {
                v539.origin.x = v400;
                v539.origin.y = v407;
                v539.size.width = v414.f64[0];
                v539.size.height = v412;
                v345 = CGRectGetMaxY(v539);
                v540.origin.x = v477.origin.x;
                v540.origin.y = v320;
                v540.size.width = v321;
                v540.size.height = v322;
                v346 = CGRectGetMaxY(v540);
                v344 = 0.0;
                if (v345 < v346)
                {
                  v541.origin.x = v477.origin.x;
                  v541.origin.y = v320;
                  v541.size.width = v321;
                  v541.size.height = v322;
                  v347 = CGRectGetMaxY(v541);
                  v542.origin.x = v400;
                  v542.origin.y = v407;
                  v542.size.width = v414.f64[0];
                  v542.size.height = v412;
                  v344 = -(v347 - CGRectGetMaxY(v542));
                }
              }

              else
              {
                v537.origin.x = v400;
                v537.origin.y = v407;
                v537.size.width = v414.f64[0];
                v537.size.height = v412;
                v343 = CGRectGetMinY(v537);
                v538.origin.x = v477.origin.x;
                v538.origin.y = v320;
                v538.size.width = v321;
                v538.size.height = v322;
                v344 = v343 - CGRectGetMinY(v538);
              }

              v543.origin.x = v477.origin.x;
              v543.origin.y = v320;
              v543.size.width = v321;
              v543.size.height = v322;
              v544 = CGRectOffset(v543, v325, v344);
              v348 = v544.origin.x;
              v349 = v544.origin.y;
              v350 = v544.size.width;
              v351 = v544.size.height;
              valued = CGRectGetMinX(v544);
              v545.origin.x = v477.origin.x;
              v545.origin.y = v320;
              v545.size.width = v321;
              v545.size.height = v322;
              attrNameb = CGRectGetMinX(v545);
              v546.origin.x = v348;
              v546.origin.y = v349;
              v546.size.width = v350;
              v546.size.height = v351;
              v352 = CGRectGetMinY(v546);
              v547.origin.x = v477.origin.x;
              v547.origin.y = v320;
              v547.size.width = v321;
              v547.size.height = v322;
              v353 = CGRectGetMinY(v547);
              v354 = CFArrayGetCount(v213);
              if (v354 < 1)
              {
                v300 = 0;
                v207 = v400;
                v208 = v407;
                v68 = 1.0;
                v69 = 0.5;
              }

              else
              {
                v355 = v354;
                v356 = 0;
                v357 = v352 - v353;
                v207 = v400;
                v208 = v407;
                v68 = 1.0;
                v69 = 0.5;
                do
                {
                  v358 = CFArrayGetValueAtIndex(v213, v356);
                  v548 = CGRectOffset(*v358, valued - attrNameb, v357);
                  v300 = 0;
                  *v358 = v548;
                  v39 = v418;
                  ++v356;
                }

                while (v355 != v356);
              }
            }

            v462 = v300;
            v47 = v436;
            if (!v298)
            {
              goto LABEL_343;
            }

LABEL_392:
            for (j = 0; j != v211; ++j)
            {
              v327 = CFArrayGetValueAtIndex(v70, j);
              v328 = CFArrayGetValueAtIndex(v213, j);
              if (v327)
              {
                p_x = &v328->origin.x;
                if (v328)
                {
                  v330 = CGRectCreateDictionaryRepresentation(*v328);
                  v503.length = CFAttributedStringGetLength(v327);
                  v503.location = 0;
                  CFAttributedStringSetAttribute(v327, v503, @"kFigSubtitleRenderer_SuggestLayout", v330);
                  CFRelease(v330);
                  v331 = *p_x;
                  v332 = p_x[1];
                  v333 = p_x[2];
                  v334 = p_x[3];
                  if (*(CMBaseObjectGetDerivedStorage() + 264) > 0.0)
                  {
                    v487.a = 0.0;
                    v487.b = 0.0;
                    v477.size.width = 0.0;
                    v335 = CFAttributedStringGetAttribute(v327, 0, @"kFigSubtitleRenderer_SuggestLineHeight", &v487);
                    if (v335)
                    {
                      CFNumberGetValue(v335, kCFNumberCGFloatType, &v477.size);
                      v336 = v477.size.width;
                    }

                    else
                    {
                      v336 = 0.0;
                    }

                    v528.origin.y = v332 + v336 / 20.0;
                    v528.origin.x = v331 + v336 / 20.0;
                    v337 = v336 / 10.0;
                    v528.size.height = v334 - v337;
                    v528.size.width = v333 - v337;
                    v529 = CGRectIntegral(v528);
                    v331 = v529.origin.x;
                    v332 = v529.origin.y;
                    v333 = v529.size.width;
                    v334 = v529.size.height;
                  }

                  v530.origin.x = v331;
                  v530.origin.y = v332;
                  v530.size.width = v333;
                  v530.size.height = v334;
                  v338 = CGRectCreateDictionaryRepresentation(v530);
                  v208 = v407;
                  if (v338)
                  {
                    v339 = v338;
                    v504.length = CFAttributedStringGetLength(v327);
                    v504.location = 0;
                    CFAttributedStringSetAttribute(v327, v504, @"kFigSubtitleRenderer_SuggestTextLayout", v339);
                    CFRelease(v339);
                  }
                }
              }
            }

            goto LABEL_342;
          }

          v39 = v418;
          v47 = v436;
          if (v226)
          {
            goto LABEL_359;
          }

          v227 = CFArrayGetCount(v213);
          v228 = CFDataCreateMutable(v16, 0);
          if (!v228)
          {
            goto LABEL_359;
          }

          v445 = (v227 - 1) * v227;
          if (v445 < 1)
          {
            CFRelease(v228);
LABEL_359:
            v462 = 1;
            goto LABEL_343;
          }

          v442 = v228;
          v447 = 0;
          while (2)
          {
            resetOverlaps(v213);
            v229 = surveyOverlaps(v213);
            if (!v229)
            {
              v462 = 0;
              ++v447;
              break;
            }

            v462 = v229;
            v230 = CFArrayGetCount(v213);
            if (v230 >= 1)
            {
              for (k = 0; k != v230; ++k)
              {
                v232 = CFArrayGetValueAtIndex(v213, k);
                v232[5] = v400;
                v232[6] = v215;
                v232[7] = v216;
                v232[8] = v208;
              }
            }

            v233 = CFArrayCreateMutableCopy(v16, 0, v213);
            if (v233)
            {
              v234 = v233;
              v501.location = 0;
              v501.length = v230;
              CFArraySortValues(v233, v501, objComparatorX, 0);
              v235 = CFArrayGetValueAtIndex(v234, 0);
              v236 = v235;
              v235[5] = v400;
              if (v230 >= 2)
              {
                for (m = 1; m != v230; ++m)
                {
                  v235 = CFArrayGetValueAtIndex(v234, m);
                  v238 = v235[2] * v69;
                  v239 = v236[2] * v69;
                  v236[6] = v239 + *v235 + v238 + v217;
                  v235[5] = v239 + *v236 + v68 - v238;
                  v236 = v235;
                }
              }

              v235[6] = v215;
              v502.location = 0;
              v502.length = v230;
              CFArraySortValues(v234, v502, objComparatorY, 0);
              v240 = CFArrayGetValueAtIndex(v234, 0);
              v241 = v240;
              v240[8] = v208;
              if (v230 >= 2)
              {
                for (n = 1; n != v230; ++n)
                {
                  v240 = CFArrayGetValueAtIndex(v234, n);
                  v243 = v240[3] * v69;
                  v244 = v241[3] * v69;
                  v241[7] = v244 + v240[1] + v243 + v217;
                  v240[8] = v244 + v241[1] + v68 - v243;
                  v241 = v240;
                }
              }

              v240[7] = v216;
              CFRelease(v234);
              v16 = v413;
              v39 = v418;
            }

            v245 = CFArrayGetCount(v213);
            if (v245 < 1)
            {
              v462 = 1;
              v47 = v436;
              break;
            }

            v246 = v245;
            v247 = 0;
            v466 = 0;
            v248 = -1;
            v249 = 0.0;
            v47 = v436;
            v452 = v245;
            while (2)
            {
              valuec = v247;
              v250 = CFArrayGetValueAtIndex(v213, v247);
              if (v250)
              {
                v251 = v250;
                if (*(v250 + 48) > 0)
                {
                  v466 = 1;
                  goto LABEL_294;
                }

                v254 = *(v250 + 5);
                v253 = *(v250 + 6);
                v255 = *(v250 + 7);
                v256 = *(v250 + 8);
                v257 = CFArrayGetCount(*(v250 + 4));
                if (v257 >= 1)
                {
                  v258 = v257;
                  v259 = 0;
                  v260 = *v251 + *(v251 + 2) * 0.5;
                  v261 = (v251 + 96);
                  v262 = (v251 + 72);
                  v263 = *(v251 + 1) + *(v251 + 3) * 0.5;
                  v264 = (v251 + 128);
                  v265 = (v251 + 152);
                  do
                  {
                    v266 = CFArrayGetValueAtIndex(*(v251 + 4), v259);
                    v267 = v266[3];
                    v268 = v266[2] * 0.5;
                    v269 = v266[1];
                    v270 = *v266 + v268;
                    v271 = *(v251 + 3);
                    v272 = v268 + *(v251 + 2) * 0.5 - vabdd_f64(v260, v270);
                    if (v260 >= v270)
                    {
                      v273 = (v251 + 96);
                      v274 = (v251 + 112);
                      if (*v261 == 0.0 || (v273 = (v251 + 96), v274 = (v251 + 112), v272 < *v261))
                      {
LABEL_303:
                        *v273 = v272;
                      }
                    }

                    else
                    {
                      v273 = (v251 + 72);
                      v274 = (v251 + 88);
                      if (*v262 == 0.0)
                      {
                        goto LABEL_303;
                      }

                      v273 = (v251 + 72);
                      v274 = (v251 + 88);
                      if (v272 < *v262)
                      {
                        goto LABEL_303;
                      }
                    }

                    v275 = v267 * 0.5;
                    v276 = v269 + v275;
                    v277 = v275 + v271 * 0.5 - vabdd_f64(v263, v276);
                    *v274 = v277 + *v274;
                    if (v263 >= v276)
                    {
                      v278 = (v251 + 128);
                      v279 = (v251 + 136);
                      if (*v264 != 0.0)
                      {
                        v278 = (v251 + 128);
                        v279 = (v251 + 136);
                        if (v277 >= *v264)
                        {
                          goto LABEL_311;
                        }
                      }
                    }

                    else
                    {
                      v278 = (v251 + 152);
                      v279 = (v251 + 160);
                      if (*v265 != 0.0)
                      {
                        v278 = (v251 + 152);
                        v279 = (v251 + 160);
                        if (v277 >= *v265)
                        {
                          goto LABEL_311;
                        }
                      }
                    }

                    *v278 = v277;
LABEL_311:
                    *v279 = v272 + *v279;
                    ++v259;
                  }

                  while (v258 != v259);
                }

                v280 = v253 - v254;
                v281 = v255 - v256;
                *(v251 + 9) = -*(v251 + 9);
                *(v251 + 19) = -*(v251 + 19);
                fcr_validateMove(v251, (v251 + 72), v254, v256, v280, v281);
                fcr_validateMove(v251, (v251 + 96), v254, v256, v280, v281);
                fcr_validateMove(v251, (v251 + 144), v254, v256, v280, v281);
                fcr_validateMove(v251, (v251 + 120), v254, v256, v280, v281);
                v282 = *(v251 + 11);
                v283 = *(v251 + 14);
                v284 = v282 <= v283;
                if (v282 <= v283)
                {
                  v282 = *(v251 + 14);
                }

                v285 = 96;
                if (!v284)
                {
                  v285 = 72;
                }

                v286 = *&v251[v285];
                v287 = *(v251 + 17);
                v288 = *(v251 + 20);
                v289 = v287 <= v288;
                if (v287 <= v288)
                {
                  v287 = *(v251 + 20);
                }

                v290 = 152;
                if (!v289)
                {
                  v290 = 128;
                }

                v291 = *&v251[v290];
                if (v282 > 0.0 || v287 > 0.0)
                {
                  v292 = v282 > 0.0 && *(v251 + 2) < *(v251 + 3);
                  v13 = MEMORY[0x1E695F058];
                  v16 = v413;
                  v39 = v418;
                  v47 = v436;
                  v216 = v407 + v412;
                  v215 = v403;
                  v68 = 1.0;
                  v69 = 0.5;
                  v217 = -1.0;
                  v246 = v452;
                  v211 = v455;
                  v252 = valuec;
                  if (v292)
                  {
                    *(v251 + 21) = v286;
                    *(v251 + 22) = 0;
                    *(v251 + 23) = v282;
                  }

                  else
                  {
                    *(v251 + 21) = 0;
                    v282 = v287;
                    *(v251 + 22) = v291;
                    *(v251 + 23) = v287;
                  }

                  v213 = theString2b;
                }

                else
                {
                  *(v251 + 21) = 0;
                  *(v251 + 22) = 0;
                  v282 = 0.0;
                  *(v251 + 23) = 0;
                  v13 = MEMORY[0x1E695F058];
                  v16 = v413;
                  v39 = v418;
                  v47 = v436;
                  v216 = v407 + v412;
                  v215 = v403;
                  v68 = 1.0;
                  v69 = 0.5;
                  v217 = -1.0;
                  v211 = v455;
                  v213 = theString2b;
                  v246 = v452;
                  v252 = valuec;
                }

                if (v249 < v282)
                {
                  v248 = v252;
                  v249 = v282;
                }
              }

              else
              {
LABEL_294:
                v252 = valuec;
              }

              v247 = v252 + 1;
              if (v247 != v246)
              {
                continue;
              }

              break;
            }

            if (v249 <= 0.0)
            {
              v208 = v407;
              v70 = theArray;
              if (v466)
              {
                resetNumMoves(v213);
                *&v293 = v447 - 1;
                goto LABEL_336;
              }

LABEL_390:
              v462 = 1;
              break;
            }

            v208 = v407;
            v70 = theArray;
            if ((subtitleRendererLayoutDo_cold_1(v213, v248, v442, v447, &v487) & 1) == 0)
            {
              goto LABEL_390;
            }

            v293 = v487.a;
LABEL_336:
            v447 = *&v293 + 1;
            if (*&v293 + 1 < v445)
            {
              continue;
            }

            break;
          }

          CFRelease(v442);
          if (v447 > 1)
          {
            goto LABEL_392;
          }

LABEL_343:
          if (CFArrayGetCount(v213) >= 1)
          {
            do
            {
              v294 = CFArrayGetValueAtIndex(v213, 0);
              CFArrayRemoveValueAtIndex(v213, 0);
              if (v294)
              {
                v295 = v294[4];
                if (v295)
                {
                  CFRelease(v295);
                }

                free(v294);
              }
            }

            while (CFArrayGetCount(v213) > 0);
          }

          CFRelease(v213);
          v16 = v413;
          if (v462)
          {
            v449 = v449 + -0.1;
            if (v449 > 0.0)
            {
              continue;
            }
          }

LABEL_416:
          if (v421 < 1)
          {
            v361 = 0.0;
            v360 = 0.0;
            v362.f64[0] = v414.f64[0];
          }

          else
          {
            v359 = 0;
            v360 = 0.0;
            *valuee = *(v13 + 16);
            v477.origin = *v13;
            v361 = 0.0;
            v362 = v414;
            do
            {
              v415 = v362;
              v363 = CFArrayGetValueAtIndex(v70, v359);
              *&v487.a = v477.origin;
              *&v487.c = *valuee;
              v364 = CFAttributedStringGetAttribute(v363, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
              if (v364)
              {
                CGRectMakeWithDictionaryRepresentation(v364, &v487);
              }

              v362 = v415;
              if (v487.a < v415.f64[0])
              {
                v362.f64[0] = v487.a;
              }

              if (v487.a + v487.c > v361)
              {
                v361 = v487.a + v487.c;
              }

              v365 = v412;
              if (v487.b < v412)
              {
                v365 = v487.b;
              }

              v412 = v365;
              if (v487.b + v487.d > v360)
              {
                v360 = v487.b + v487.d;
              }

              ++v359;
            }

            while (v421 != v359);
          }

          v366 = v361 - v362.f64[0];
          v367 = v412;
          v368 = v360 - v412;
          *v396 = v362.f64[0];
          v396[1] = v412;
          v396[2] = v366;
          v396[3] = v368;
          if (v207 != *MEMORY[0x1E695EFF8] || v208 != *(MEMORY[0x1E695EFF8] + 8))
          {
            if (v421 >= 1)
            {
              v370 = 0;
              *valuef = *(v13 + 16);
              v477.origin = *v13;
              do
              {
                v371 = CFArrayGetValueAtIndex(v70, v370);
                v372 = CFAttributedStringGetLength(v371);
                *&rect.a = v477.origin;
                *&rect.c = *valuef;
                v477.size = v477.origin;
                v478 = *valuef;
                v373 = CFAttributedStringGetAttribute(v371, 0, @"kFigSubtitleRenderer_SuggestLayout", &effectiveRange);
                if (v373)
                {
                  CGRectMakeWithDictionaryRepresentation(v373, &rect);
                }

                CGAffineTransformMakeTranslation(&v487, v207, v208);
                v549.origin.x = rect.a;
                v549.origin.y = rect.b;
                v549.size.width = rect.c;
                v549.size.height = rect.d;
                v550 = CGRectApplyAffineTransform(v549, &v487);
                rect.a = v550.origin.x;
                rect.b = v550.origin.y;
                rect.c = v550.size.width;
                rect.d = v550.size.height;
                v374 = CGRectCreateDictionaryRepresentation(v550);
                if (v374)
                {
                  v375 = v374;
                  v505.location = 0;
                  v505.length = v372;
                  CFAttributedStringSetAttribute(v371, v505, @"kFigSubtitleRenderer_SuggestLayout", v374);
                  CFRelease(v375);
                }

                v376 = CFAttributedStringGetAttribute(v371, 0, @"kFigSubtitleRenderer_SuggestTextLayout", &effectiveRange);
                if (v376)
                {
                  CGRectMakeWithDictionaryRepresentation(v376, &v477.size);
                }

                CGAffineTransformMakeTranslation(&v487, v207, v208);
                v551.origin.x = v477.size.width;
                v551.origin.y = v477.size.height;
                v551.size = v478;
                v552 = CGRectApplyAffineTransform(v551, &v487);
                v477.size.width = v552.origin.x;
                v477.size.height = v552.origin.y;
                v478.width = v552.size.width;
                v478.height = v552.size.height;
                v377 = CGRectCreateDictionaryRepresentation(v552);
                if (v377)
                {
                  v378 = v377;
                  v506.location = 0;
                  v506.length = v372;
                  CFAttributedStringSetAttribute(v371, v506, @"kFigSubtitleRenderer_SuggestTextLayout", v377);
                  CFRelease(v378);
                }

                ++v370;
              }

              while (v421 != v370);
              v362.f64[0] = *v396;
              v367 = v396[1];
              v366 = v396[2];
              v368 = v396[3];
            }

            v416 = v362.f64[0];
            v379 = v208;
            v380 = v367;
            CGAffineTransformMakeTranslation(&v487, v207, v379);
            v553.origin.x = v416;
            v553.origin.y = v380;
            v553.size.width = v366;
            v553.size.height = v368;
            CGRectApplyAffineTransform(v553, &v487);
          }

          if (v421 >= 1)
          {
            for (ii = 0; ii != v421; ++ii)
            {
              v382 = CFArrayGetValueAtIndex(v70, ii);
              Copy = CFAttributedStringCreateCopy(v16, v382);
              CFArraySetValueAtIndex(v70, ii, Copy);
              if (Copy)
              {
                CFRelease(Copy);
              }
            }
          }

          v384 = CFArrayCreateCopy(v16, v70);
          CFDictionarySetValue(theDict, @"SubtitleContent", v384);
          *range_8 = CFDictionaryCreateCopy(v16, theDict);
          free(v39);
          CFRelease(theDict);
          v385 = 0;
          a_low = 0;
          v386 = v384;
          if (v384)
          {
LABEL_454:
            CFRelease(v386);
            a_low = v385;
          }

          if (v70)
          {
            CFRelease(v70);
          }

          v1 = v389;
LABEL_458:
          v27 = range_8;
          v12 = v396;
          if (a_low)
          {
LABEL_459:
            v387 = *(v13 + 16);
            *v12 = *v13;
            *(v12 + 1) = v387;
            if (v27)
            {
              goto LABEL_460;
            }
          }

          goto LABEL_463;
        }
      }

      v388 = 6182;
    }

    else
    {
      v388 = 6179;
    }

    subtitleRendererLayoutDo_cold_2(v388, &v487);
    v385 = LODWORD(v487.a);
    v386 = theDict;
    v70 = theArray;
    goto LABEL_454;
  }

  if (subtitleRendererLayoutDo_cold_4(&v487))
  {
LABEL_462:
    a_low = 0;
    goto LABEL_463;
  }

  a_low = LODWORD(v487.a);
  v27 = range_8;
  if (range_8)
  {
LABEL_460:
    *v27 = 0;
  }

LABEL_463:
  **(v1 + 18) = a_low;
}

uint64_t resetNumMoves(const __CFArray *a1)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      result = CFArrayGetValueAtIndex(a1, i);
      *(result + 192) = 0;
    }
  }

  return result;
}

uint64_t objComparatorX(double *a1, double *a2)
{
  v2 = *a1 + a1[2] * 0.5;
  v3 = *a2 + a2[2] * 0.5;
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

uint64_t objComparatorY(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + *(a1 + 24) * 0.5;
  v3 = *(a2 + 8) + *(a2 + 24) * 0.5;
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

double sublayout_unionCFDataRects(const __CFArray *a1)
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      v12 = *CFArrayGetValueAtIndex(a1, i);
      v10.origin.x = x;
      v10.origin.y = y;
      v10.size.width = width;
      v10.size.height = height;
      v11 = CGRectUnion(v10, v12);
      x = v11.origin.x;
      y = v11.origin.y;
      width = v11.size.width;
      height = v11.size.height;
    }
  }

  return x;
}

void *OUTLINED_FUNCTION_7_82(size_t a1)
{

  return malloc_type_calloc(a1, 8uLL, v1);
}

uint64_t FigCaptionRendererAVFLayoutRegionSetLayoutContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 32) = a3;
  return 0;
}

void FigCaptionRendererAVFLayoutRegionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  *(DerivedStorage + 8) = 0;
}

__CFString *FigCaptionRendererAVFLayoutRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAVFLayoutRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererAVFLayoutRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAVFLayoutRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAVFLayoutRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 64);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 96);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 112);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 128);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_SetZOrder(uint64_t a1, double a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 256);
  if (!v7)
  {
    return 4294954514;
  }

  v5.n128_f64[0] = a2;

  return v7(v3, v5);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 272);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a2 + 296))
  {
    v5 = *(MEMORY[0x1E695F050] + 16);
    v25.origin = *MEMORY[0x1E695F050];
    v25.size = v5;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v7 = *(ProtocolVTable + 16);
      if (v7)
      {
        v8 = *(v7 + 104);
        if (v8)
        {
          v8(a1, &v25);
        }
      }
    }

    v9 = *(a2 + 296);
    if (v9)
    {
      Value = CFDictionaryGetValue(v9, a1);
      MidX = CGRectGetMidX(v25);
      MidY = CGRectGetMidY(v25);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v13 = CMBaseObjectGetProtocolVTable();
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = *(v14 + 72);
          if (v15)
          {
            v15(Value, MidX, MidY);
          }
        }
      }

      size = v25.size;
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v17 = CMBaseObjectGetProtocolVTable();
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v18 + 88);
          if (v19)
          {
            v19(Value, size.width, size.height);
          }
        }
      }
    }
  }

  v20 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (!v21)
  {
    return 4294954508;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    return 4294954508;
  }

  v23 = *(v22 + 280);
  if (v23)
  {
    return v23(v20, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, double *a2)
{
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2[45] > 0.0 && a2[46] > 0.0)
  {
    v157[0] = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v8 = *(ProtocolVTable + 2);
      if (v8 && (v9 = *(v8 + 24)) != 0)
      {
        v9(a1, v157);
        ProtocolVTable = v157[0];
      }

      else
      {
        ProtocolVTable = 0;
      }
    }

    Count = CFArrayGetCount(ProtocolVTable);
    if (Count >= 1)
    {
      key = *MEMORY[0x1E69609A0];
      v141 = *MEMORY[0x1E6960978];
      v140 = *MEMORY[0x1E69607B0];
      v139 = *MEMORY[0x1E6960838];
      v132 = *MEMORY[0x1E6960788];
      v129 = *MEMORY[0x1E6960790];
      v126 = *MEMORY[0x1E6960798];
      v125 = *MEMORY[0x1E69607A0];
      v124 = *MEMORY[0x1E6960780];
      theString2 = *MEMORY[0x1E6960A08];
      v131 = *MEMORY[0x1E6960A00];
      v128 = *MEMORY[0x1E69609F8];
      v138 = *MEMORY[0x1E69608E0];
      v137 = *MEMORY[0x1E69608D8];
      v136 = *MEMORY[0x1E6960830];
      v11 = Count + 1;
      v133 = *MEMORY[0x1E69609F0];
      v12 = 1.0;
      v130 = *MEMORY[0x1E69609E8];
      v127 = *MEMORY[0x1E69609E0];
      v135 = *MEMORY[0x1E6960998];
      v13 = "FigCaptionRendererCellStackLayoutRegion";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v157[0], v11 - 2);
        v156 = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        v15 = CMBaseObjectGetProtocolVTable();
        if (!v15 || (v16 = *(v15 + 16)) == 0 || (v17 = *(v16 + 8)) == 0 || v17(ValueAtIndex, &v156))
        {
          FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_5();
          break;
        }

        v18 = v156;
        if (v156)
        {
          if (!strcmp(v156, "FigCaptionRendererCaption"))
          {
            v155 = 0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v19 = CMBaseObjectGetProtocolVTable();
            if (!v19 || (v20 = *(v19 + 16)) == 0 || (v21 = *(v20 + 48)) == 0 || v21(ValueAtIndex, &v155))
            {
              FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_4();
              break;
            }

            v154 = 0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v22 = CMBaseObjectGetProtocolVTable();
            if (!v22 || (v23 = *(v22 + 16)) == 0 || (v24 = *(v23 + 16)) == 0 || v24(ValueAtIndex, &v154))
            {
              FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_3();
              break;
            }

            v143 = *(MEMORY[0x1E695F050] + 16);
            v145 = *MEMORY[0x1E695F050];
            v152 = *MEMORY[0x1E695F050];
            v153 = v143;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v25 = CMBaseObjectGetProtocolVTable();
            if (!v25 || (v26 = *(v25 + 16)) == 0 || (v27 = *(v26 + 104)) == 0 || v27(ValueAtIndex, &v152))
            {
              FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_2();
              break;
            }

            v28 = a2[47] == 0.0;
            if (a2[48] == 0.0)
            {
              v28 = 1;
            }

            if (v28)
            {
              v29 = a2[46];
            }

            else
            {
              v29 = a2[48];
            }

            if (v28)
            {
              v30 = a2[45];
            }

            else
            {
              v30 = a2[47];
            }

            v31 = FCRGetVideoPresentationBounds(v30, v29, a2[43], a2[44], a2[45], a2[46]);
            v33 = v32;
            v35 = v34;
            v37 = v36;
            if (v155 != 4)
            {
              if (v155 == 3)
              {
                rect.origin = v145;
                rect.size = v143;
                Value = CFDictionaryGetValue(v154, @"textbox");
                if (Value)
                {
                  CGRectMakeWithDictionaryRepresentation(Value, &rect);
                }

                v144 = v37;
                v146 = v35;
                v39 = v31;
                v40 = v33;
                if (CGRectIsNull(rect))
                {
                  width = v30 * 0.9;
                  height = v29 * 0.15;
                  x = (v30 - v30 * 0.9) * 0.5;
                  y = v29 - v29 * 0.15;
                  rect.origin.x = x;
                  rect.origin.y = y;
                  rect.size.width = v30 * 0.9;
                  rect.size.height = v29 * 0.15;
                }

                else
                {
                  x = rect.origin.x;
                  y = rect.origin.y;
                  width = rect.size.width;
                  height = rect.size.height;
                }

                MidX = CGRectGetMidX(*&x);
                MidY = CGRectGetMidY(rect);
                v58 = v153.width;
                v57 = v153.height;
                FigCaptionRendererNodeProtocolGetProtocolID();
                v59 = CMBaseObjectGetProtocolVTable();
                if (v59)
                {
                  v60 = *(v59 + 16);
                  if (v60)
                  {
                    v61 = *(v60 + 128);
                    if (v61)
                    {
                      v61(ValueAtIndex, v39 + MidX * (v146 / v30) - v58 * 0.5, v40 + (v29 - MidY) * (v144 / v29) - v57 * 0.5);
                    }
                  }
                }

                FigCaptionRendererNodeProtocolGetProtocolID();
                v62 = CMBaseObjectGetProtocolVTable();
                if (v62)
                {
                  v63 = *(v62 + 16);
                  if (v63)
                  {
                    v64 = *(v63 + 232);
                    if (v64)
                    {
                      v64(ValueAtIndex, 1);
                    }
                  }
                }

                v12 = 1.0;
              }

              goto LABEL_129;
            }

            v45 = v13;
            valuePtr = 50.0;
            rect.origin.x = 100.0;
            v149 = 100.0;
            v148 = 0;
            v46 = CFDictionaryGetValue(v154, key);
            if (v46)
            {
              CFNumberGetValue(v46, kCFNumberCGFloatType, &rect);
              if (rect.origin.x < 0.0)
              {
LABEL_174:
                FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_1();
                break;
              }
            }

            v47 = v3;
            v48 = CFDictionaryGetValue(v154, v141);
            v49 = CFDictionaryGetValue(v154, v140);
            v50 = CFDictionaryGetValue(v154, v139);
            v51 = v50;
            if (v48)
            {
              CFNumberGetValue(v48, kCFNumberCGFloatType, &valuePtr);
              if (valuePtr < 0.0)
              {
                goto LABEL_174;
              }

              goto LABEL_50;
            }

            if (!v49)
            {
              if (v50)
              {
                goto LABEL_51;
              }

              goto LABEL_80;
            }

            if (CFStringCompare(v49, v132, 0))
            {
              if (CFStringCompare(v49, v129, 0))
              {
                if (CFStringCompare(v49, v126, 0))
                {
                  goto LABEL_50;
                }

                *&v65 = 100.0;
              }

              else
              {
                *&v65 = 50.0;
              }

              valuePtr = *&v65;
            }

            else
            {
              valuePtr = 0.0;
            }

LABEL_50:
            if (v51)
            {
LABEL_51:
              if (CFStringCompare(v51, theString2, 0) == kCFCompareEqualTo)
              {
                v54 = 0.0;
                goto LABEL_82;
              }

              if (CFStringCompare(v51, v131, 0))
              {
                v52 = v51;
                v53 = v128;
LABEL_54:
                if (CFStringCompare(v52, v53, 0))
                {
                  v54 = 50.0;
                }

                else
                {
                  v54 = 100.0;
                }

                goto LABEL_82;
              }

LABEL_80:
              *&v66 = 50.0;
LABEL_81:
              v54 = *&v66;
              goto LABEL_82;
            }

            if (!v49)
            {
              goto LABEL_80;
            }

            v54 = 0.0;
            if (CFStringCompare(v49, v132, 0) == kCFCompareEqualTo)
            {
              goto LABEL_82;
            }

            if (CFStringCompare(v49, v129, 0) == kCFCompareEqualTo)
            {
              goto LABEL_80;
            }

            if (CFStringCompare(v49, v126, 0) == kCFCompareEqualTo)
            {
              *&v66 = 100.0;
              goto LABEL_81;
            }

            if (CFStringCompare(v49, v125, 0))
            {
              v52 = v49;
              v53 = v124;
              goto LABEL_54;
            }

LABEL_82:
            v67 = CFDictionaryGetValue(v154, v138);
            v68 = CFDictionaryGetValue(v154, v137);
            v69 = CFDictionaryGetValue(v154, v136);
            if (v67)
            {
              CFNumberGetValue(v67, kCFNumberCGFloatType, &v149);
              if (v149 < 0.0)
              {
                goto LABEL_174;
              }

LABEL_84:
              v70 = 1;
            }

            else
            {
              if (!v68)
              {
                goto LABEL_84;
              }

              CFNumberGetValue(v68, kCFNumberIntType, &v148);
              v70 = 0;
            }

            v13 = v45;
            v71 = 0.0;
            if (v69 && CFStringCompare(v69, v133, 0))
            {
              if (CFStringCompare(v69, v130, 0))
              {
                if (CFStringCompare(v69, v127, 0))
                {
                  v71 = 0.0;
                }

                else
                {
                  v71 = 100.0;
                }
              }

              else
              {
                v71 = 50.0;
              }
            }

            v72 = v54 / 100.0;
            v149 = v149 / 100.0;
            valuePtr = valuePtr / 100.0;
            v73 = v71 / 100.0;
            v74 = CFDictionaryGetValue(v154, v135);
            v75 = v74;
            v147 = 0.0;
            if (v70)
            {
              if (!v74)
              {
                v76 = valuePtr;
                v77 = v37 * (v12 - v149);
                goto LABEL_116;
              }

LABEL_102:
              v81 = FigCFEqual();
              v77 = v37 * (v12 - valuePtr);
              if (v70)
              {
                v3 = v47;
                if (v81)
                {
                  v82 = v35 * v149;
                  goto LABEL_113;
                }

                v83 = v35 * (v12 - v149);
LABEL_120:
                v85 = v83 - v153.width * (v12 - v73);
              }

              else
              {
                if (v148 < 0)
                {
                  v84 = v148;
                  v3 = v47;
                  if (!v81)
                  {
                    v83 = -(v147 * v84);
                    goto LABEL_120;
                  }

                  v82 = v35 + (v147 * v84);
                }

                else
                {
                  v82 = (v147 * v148);
                  v3 = v47;
                  if (!v81)
                  {
                    v83 = v35 - v82;
                    goto LABEL_120;
                  }
                }

LABEL_113:
                v85 = v82 - v153.width * v73;
              }
            }

            else
            {
              FigCaptionRendererCaptionProtocolGetProtocolID();
              v78 = CMBaseObjectGetProtocolVTable();
              if (v78)
              {
                v79 = *(v78 + 16);
                if (v79)
                {
                  v80 = *(v79 + 104);
                  if (v80)
                  {
                    v80(ValueAtIndex, &v147);
                  }
                }
              }

              if (v75)
              {
                goto LABEL_102;
              }

              v76 = valuePtr;
              if (v148 < 0)
              {
                v77 = -(v147 * v148);
              }

              else
              {
                v77 = v37 - (v147 * v148);
              }

LABEL_116:
              v3 = v47;
              v85 = v35 * v76 - v153.width * v72;
              v72 = v71 / 100.0;
            }

            v86 = v153.height;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v87 = CMBaseObjectGetProtocolVTable();
            if (v87)
            {
              v88 = *(v87 + 16);
              if (v88)
              {
                v89 = *(v88 + 128);
                if (v89)
                {
                  v89(ValueAtIndex, v31 + v85, v33 + v77 - v86 * (v12 - v72));
                }
              }
            }

LABEL_125:
            FigCaptionRendererNodeProtocolGetProtocolID();
            v90 = CMBaseObjectGetProtocolVTable();
            if (v90)
            {
              v91 = *(v90 + 16);
              if (v91)
              {
                v92 = *(v91 + 232);
                if (v92)
                {
                  v92(ValueAtIndex, 1);
                }
              }
            }

            goto LABEL_129;
          }

          if (!strcmp(v18, "FigCaptionRendererStackLayoutRegion") || !strcmp(v18, v13) || !strcmp(v18, "FigCaptionRendererTTMLRegion"))
          {
            goto LABEL_125;
          }
        }

LABEL_129:
        --v11;
      }

      while (v11 > 1);
    }
  }

  if (*(DerivedStorage + 40))
  {
    FigCaptionRendererLayoutDecouple_ApplyDecouplingAndSafeRegion(a1, a2);
  }

  v157[0] = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v93 = CMBaseObjectGetProtocolVTable();
  if (!v93 || (v94 = *(v93 + 16)) == 0)
  {
    v122 = 4294954508;
LABEL_166:
    FigCaptionRendererAVFLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_6();
    return v122;
  }

  v95 = *(v94 + 24);
  if (!v95)
  {
    v122 = 4294954514;
    goto LABEL_166;
  }

  v96 = v95(a1, v157);
  if (v96)
  {
    v122 = v96;
    goto LABEL_166;
  }

  v97 = CFArrayGetCount(v157[0]);
  if (v97 < 1)
  {
    return 0;
  }

  v98 = v97 + 1;
  v99 = MEMORY[0x1E695F058];
  while (1)
  {
    v100 = CFArrayGetValueAtIndex(v157[0], v98 - 2);
    v156 = 0;
    FigCaptionRendererBaseProtocolGetProtocolID();
    v101 = CMBaseObjectGetProtocolVTable();
    if (!v101 || (v102 = *(v101 + 16)) == 0)
    {
      v122 = 4294954508;
      goto LABEL_164;
    }

    v103 = *(v102 + 8);
    if (!v103)
    {
      v122 = 4294954514;
      goto LABEL_164;
    }

    v104 = v103(v100, &v156);
    if (v104)
    {
      break;
    }

    if (!v156 || strcmp(v156, "FigCaptionRendererCaption"))
    {
      v105 = v99[1];
      v152 = *v99;
      v153 = v105;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v106 = CMBaseObjectGetProtocolVTable();
      if (v106)
      {
        v107 = *(v106 + 16);
        if (v107)
        {
          v108 = *(v107 + 104);
          if (v108)
          {
            v108(a1, &v152);
          }
        }
      }

      v109 = FCRGetOverscanSafeRect(*&v152, *(&v152 + 1), v153.width, v153.height);
      v111 = v110;
      v113 = v112;
      v115 = v114;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v116 = CMBaseObjectGetProtocolVTable();
      if (v116)
      {
        v117 = *(v116 + 16);
        if (v117)
        {
          v118 = *(v117 + 64);
          if (v118)
          {
            v118(v100, v109, v111, v113, v115);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v119 = CMBaseObjectGetProtocolVTable();
      if (v119)
      {
        v120 = *(v119 + 16);
        if (v120)
        {
          v121 = *(v120 + 232);
          if (v121)
          {
            v121(v100, 1);
          }
        }
      }
    }

    if (--v98 <= 1)
    {
      return 0;
    }
  }

  v122 = v104;
LABEL_164:
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v124, v125, v126);
  return v122;
}