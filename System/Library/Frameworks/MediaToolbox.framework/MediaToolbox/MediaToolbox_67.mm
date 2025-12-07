__CFString *clcpcgcfsb_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCLCPCaptionGroupConverterFromSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t clcpcgcfsb_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (CFEqual(@"FCGCFS_ShouldGenerateSpacingAttributeSpaceCharacters", a2))
      {
        v8 = MEMORY[0x1E695E4D0];
        if (!*(v7 + 88))
        {
          v8 = MEMORY[0x1E695E4C0];
        }

        v9 = CFRetain(*v8);
        result = 0;
        *a4 = v9;
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      clcpcgcfsb_CopyProperty_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    clcpcgcfsb_CopyProperty_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t clcpcgcfsb_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    if (CFEqual(@"FCGCFS_ShouldGenerateSpacingAttributeSpaceCharacters", a2))
    {
      if (a3 && (v7 = CFGetTypeID(a3), v7 == CFBooleanGetTypeID()))
      {
        Value = CFBooleanGetValue(a3);
        result = 0;
        *(v6 + 88) = Value;
      }

      else
      {
        clcpcgcfsb_SetProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      return 4294954512;
    }
  }

  else
  {
    clcpcgcfsb_SetProperty_cold_2(&v11);
    return v11;
  }

  return result;
}

void clcpcgcfsbCaptionSlicerRelease(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (ptr)
  {
    if (*ptr)
    {
      CFRelease(*ptr);
    }

    v4 = ptr[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = ptr[2];
    if (v5)
    {
      CFRelease(v5);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

__n128 clcpcgcfsbCaptionDecoderCallback(int a1, const __CFDictionary *a2, __n128 *a3, uint64_t a4)
{
  if (a1 == 7)
  {
    v14 = v4;
    v15 = v5;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(a2, @"C");
    v12 = *a3;
    v13 = a3[1].n128_u64[0];
    clcpcgcfsbOutputLastCaptionElements(DerivedStorage, &v12, Value);
    v10 = DerivedStorage[2].n128_u64[1];
    DerivedStorage[2].n128_u64[1] = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    result = *a3;
    DerivedStorage[2].n128_u64[0] = a3[1].n128_u64[0];
    DerivedStorage[1] = result;
  }

  return result;
}

uint64_t clcpcgcfsbGetCaptionMode(const __CFArray *a1, _DWORD *a2)
{
  if (a1 && CFArrayGetCount(a1) && (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0), (Value = CFDictionaryGetValue(ValueAtIndex, @"R")) != 0) && (v6 = Value, CFArrayGetCount(Value)) && (v7 = CFArrayGetValueAtIndex(v6, 0)) != 0 && (v8 = v7, CFArrayGetCount(v7)) && (CFArrayGetValueAtIndex(v8, 0), !FigCFDictionaryGetInt32IfPresent()))
  {
    clcpcgcfsbGetCaptionMode_cold_1(&v10);
    return v10;
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t clcpcgcfsbCreateCaptionDataArray(const __CFArray *a1, uint64_t a2, CFAllocatorRef allocator, __CFArray **a4)
{
  if (!a1)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_28;
    }

LABEL_25:
    clcpcgcfsbCreateCaptionDataArray_cold_2(&value);
    return value;
  }

  v6 = a2;
  v7 = a1;
  Count = CFArrayGetCount(a1);
  v9 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v9)
  {
    goto LABEL_25;
  }

  Mutable = v9;
  if (Count < 1)
  {
LABEL_28:
    v27 = 0;
    *a4 = Mutable;
    return v27;
  }

  v11 = 0;
  v31 = v7;
  v32 = v9;
  v30 = Count;
  v29 = a4;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
    v13 = CFDictionaryGetValue(ValueAtIndex, @"R");
    if (v13)
    {
      break;
    }

    v17 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (v17)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (clcpcgcfsbCreateCaptionDataArray_cold_1(Mutable, &value))
    {
      v27 = value;
      goto LABEL_27;
    }

LABEL_20:
    if (++v11 == Count)
    {
      a4 = v29;
      goto LABEL_28;
    }
  }

  v14 = v13;
  v15 = CFArrayGetCount(v13);
  v16 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v16;
  if (v15 < 1)
  {
LABEL_19:
    v35.length = CFArrayGetCount(v17);
    v35.location = 0;
    CFArrayAppendArray(Mutable, v17, v35);
    CFRelease(v17);
    goto LABEL_20;
  }

  v33 = v11;
  v18 = 0;
  while (1)
  {
    v19 = CFArrayGetValueAtIndex(v14, v18);
    if (v19)
    {
      v20 = v19;
      v21 = CFArrayGetCount(v19);
      if (v21 >= 1)
      {
        break;
      }
    }

LABEL_16:
    if (++v18 == v15)
    {
      v7 = v31;
      Mutable = v32;
      Count = v30;
      v11 = v33;
      goto LABEL_19;
    }
  }

  v22 = v21;
  v23 = 0;
  while (1)
  {
    v24 = CFArrayGetValueAtIndex(v20, v23);
    value = 0;
    v25 = clcpcgcfsbCreateCaptionDataFromCommandData(v24, v6, 0, allocator, &value);
    if (v25)
    {
      break;
    }

    v26 = value;
    if (value)
    {
      CFArrayAppendValue(v17, value);
      CFRelease(v26);
    }

    if (v22 == ++v23)
    {
      goto LABEL_16;
    }
  }

  v27 = v25;
  CFRelease(v17);
  Mutable = v32;
LABEL_27:
  CFRelease(Mutable);
  return v27;
}

uint64_t clcpcgcfsbCreateCaptionDataFromCommandData(const __CFDictionary *a1, int a2, int a3, const __CFAllocator *a4, void *a5)
{
  Value = CFDictionaryGetValue(a1, @"S");
  if (!Value || (v11 = Value, !CFAttributedStringGetLength(Value)))
  {
    v12 = 0;
    goto LABEL_48;
  }

  if (a2)
  {
    v12 = 0;
  }

  else
  {
    Length = CFAttributedStringGetLength(v11);
    MutableCopy = CFAttributedStringCreateMutableCopy(a4, Length, v11);
    v12 = MutableCopy;
    if (MutableCopy)
    {
      clcpcgcfsbCreateCaptionDataFromCommandData_cold_2(MutableCopy, &v91, 0, Length, v11);
    }

    else if (!clcpcgcfsbCreateCaptionDataFromCommandData_cold_1(&v91, &longestEffectiveRange))
    {
      location_low = LODWORD(longestEffectiveRange.location);
      goto LABEL_115;
    }

    v11 = v12;
  }

  Mutable = FigCaptionDataCreateMutable();
  if (Mutable)
  {
    location_low = Mutable;
    goto LABEL_115;
  }

  String = CFAttributedStringGetString(v11);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v15)
  {
    location_low = 4294954514;
    goto LABEL_115;
  }

  v90 = a5;
  v87 = v12;
  v16 = v15(0, String);
  if (v16)
  {
    location_low = v16;
    goto LABEL_115;
  }

  v17 = CFAttributedStringGetLength(v11);
  v98 = 0;
  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  Limit = FigCFRangeGetLimit();
  if (Limit < FigCFRangeGetLimit())
  {
    v19 = *MEMORY[0x1E69614E8];
    while (1)
    {
      v20 = FigCFRangeGetLimit();
      v99.location = 0;
      v99.length = v17;
      if (CFAttributedStringGetAttributeAndLongestEffectiveRange(v11, v20, @"t", v99, &longestEffectiveRange))
      {
        if (v98)
        {
          CFRelease(v98);
          v98 = 0;
        }

        v21 = FigCaptionDynamicStyleCreate();
        if (v21)
        {
          break;
        }

        v22 = v98;
        location = longestEffectiveRange.location;
        v24 = longestEffectiveRange.length;
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v25)
        {
LABEL_50:
          location_low = 4294954514;
          goto LABEL_51;
        }

        v21 = v25(0, v19, v22, location, v24);
        if (v21)
        {
          break;
        }
      }

      v26 = FigCFRangeGetLimit();
      if (v26 >= FigCFRangeGetLimit())
      {
        goto LABEL_17;
      }
    }

LABEL_124:
    location_low = v21;
    goto LABEL_51;
  }

LABEL_17:
  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  v27 = FigCFRangeGetLimit();
  if (v27 < FigCFRangeGetLimit())
  {
    v28 = *MEMORY[0x1E6961458];
    do
    {
      v29 = FigCFRangeGetLimit();
      v100.location = 0;
      v100.length = v17;
      if (CFAttributedStringGetAttributeAndLongestEffectiveRange(v11, v29, @"b", v100, &longestEffectiveRange))
      {
        if (v98)
        {
          CFRelease(v98);
          v98 = 0;
        }

        v21 = FigCaptionDynamicStyleCreate();
        if (v21)
        {
          goto LABEL_124;
        }

        v30 = v98;
        v31 = longestEffectiveRange.location;
        v32 = longestEffectiveRange.length;
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v33)
        {
          goto LABEL_50;
        }

        v21 = v33(0, v28, v30, v31, v32);
        if (v21)
        {
          goto LABEL_124;
        }
      }

      v34 = FigCFRangeGetLimit();
    }

    while (v34 < FigCFRangeGetLimit());
  }

  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  v35 = FigCFRangeGetLimit();
  if (v35 < FigCFRangeGetLimit())
  {
    v88 = *MEMORY[0x1E6961480];
    do
    {
      v36 = FigCFRangeGetLimit();
      v101.location = 0;
      v101.length = v17;
      if (CFAttributedStringGetAttributeAndLongestEffectiveRange(v11, v36, @"i", v101, &longestEffectiveRange))
      {
        FigCFEqual();
        if (v98)
        {
          CFRelease(v98);
          v98 = 0;
        }

        v21 = FigCaptionDynamicStyleCreate();
        if (v21)
        {
          goto LABEL_124;
        }

        v37 = v98;
        v39 = longestEffectiveRange.location;
        v38 = longestEffectiveRange.length;
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v40)
        {
          goto LABEL_50;
        }

        v21 = v40(0, v88, v37, v39, v38);
        if (v21)
        {
          goto LABEL_124;
        }
      }

      v41 = FigCFRangeGetLimit();
    }

    while (v41 < FigCFRangeGetLimit());
  }

  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  v42 = FigCFRangeGetLimit();
  if (v42 >= FigCFRangeGetLimit())
  {
LABEL_46:
    location_low = 0;
    goto LABEL_51;
  }

  v89 = *MEMORY[0x1E6961460];
  while (1)
  {
    v43 = FigCFRangeGetLimit();
    v102.location = 0;
    v102.length = v17;
    if (!CFAttributedStringGetAttributeAndLongestEffectiveRange(v11, v43, @"u", v102, &longestEffectiveRange))
    {
      goto LABEL_45;
    }

    FigCFEqual();
    SInt32 = FigCFNumberCreateSInt32();
    if (!SInt32)
    {
      break;
    }

    v45 = SInt32;
    if (v98)
    {
      CFRelease(v98);
      v98 = 0;
    }

    v46 = FigCaptionDynamicStyleCreate();
    if (v46)
    {
LABEL_128:
      location_low = v46;
      goto LABEL_123;
    }

    v47 = v98;
    v49 = longestEffectiveRange.location;
    v48 = longestEffectiveRange.length;
    v50 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v50)
    {
      location_low = 4294954514;
LABEL_123:
      CFRelease(v45);
      goto LABEL_51;
    }

    v46 = v50(0, v89, v47, v49, v48);
    if (v46)
    {
      goto LABEL_128;
    }

    CFRelease(v45);
LABEL_45:
    v51 = FigCFRangeGetLimit();
    if (v51 >= FigCFRangeGetLimit())
    {
      goto LABEL_46;
    }
  }

  clcpcgcfsbCreateCaptionDataFromCommandData_cold_3(&v97);
  location_low = v97;
LABEL_51:
  a5 = v90;
  if (v98)
  {
    CFRelease(v98);
  }

  if (location_low)
  {
    goto LABEL_115;
  }

  v95 = 0;
  v94 = 0;
  v93 = 0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    clcpcgcfsbCreateCaptionDataFromCommandData_cold_8(&longestEffectiveRange);
    goto LABEL_133;
  }

  if (!CFDictionaryGetValue(a1, @"L"))
  {
    clcpcgcfsbCreateCaptionDataFromCommandData_cold_7(&longestEffectiveRange);
    goto LABEL_133;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    clcpcgcfsbCreateCaptionDataFromCommandData_cold_6(&longestEffectiveRange);
    goto LABEL_133;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    clcpcgcfsbCreateCaptionDataFromCommandData_cold_5(&longestEffectiveRange);
    goto LABEL_133;
  }

  if (v95 > 1)
  {
    if (v95 == 3)
    {
      LODWORD(v93) = 1;
      v53 = MEMORY[0x1E6961160];
      goto LABEL_70;
    }

    if (v95 != 2)
    {
      goto LABEL_66;
    }

LABEL_65:
    LODWORD(v93) = 1;
    v53 = MEMORY[0x1E6961168];
LABEL_70:
    v54 = MEMORY[0x1E6961280];
LABEL_71:
    v56 = *v53;
    v57 = *v54;
    if (a3)
    {
      ++v94;
    }

    CFGetAllocator(0);
    longestEffectiveRange.location = 0;
    v97 = 0;
    v98 = 0;
    v96 = 0;
    v58 = FigCaptionGeometryCopyCellBasedPointAsDictionary();
    if (v58)
    {
      v59 = FigCaptionGeometryCopyCellBasedDimensionAsDictionary();
      if (v59)
      {
        v60 = FigCaptionGeometryCopyCellBasedDimensionAsDictionary();
        if (v60)
        {
          v61 = v60;
          v62 = FigCaptionDynamicStyleCreate();
          if (v62 || (v62 = FigCaptionDynamicStyleCreate(), v62) || (v62 = FigCaptionDynamicStyleCreate(), v62))
          {
            location_low = v62;
            goto LABEL_90;
          }

          v63 = FigCaptionRegionCreateMutable();
          if (!v63)
          {
            v64 = longestEffectiveRange.location;
            CMBaseObject = FigCaptionRegionGetCMBaseObject();
            v66 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v66)
            {
              goto LABEL_89;
            }

            v63 = v66(CMBaseObject, *MEMORY[0x1E6961390], v64);
            if (!v63)
            {
              v67 = v98;
              v68 = FigCaptionRegionGetCMBaseObject();
              v69 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v69)
              {
                goto LABEL_89;
              }

              v63 = v69(v68, *MEMORY[0x1E6961328], v67);
              if (!v63)
              {
                v70 = v97;
                v71 = FigCaptionRegionGetCMBaseObject();
                v72 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v72)
                {
                  goto LABEL_89;
                }

                v63 = v72(v71, *MEMORY[0x1E69613B0], v70);
                if (!v63)
                {
                  v73 = FigCaptionRegionGetCMBaseObject();
                  v74 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v74)
                  {
                    location_low = v74(v73, *MEMORY[0x1E69612E0], v57);
                    if (!location_low)
                    {
                      v75 = v96;
                      v96 = 0;
                      goto LABEL_93;
                    }

LABEL_90:
                    if (v96)
                    {
                      CFRelease(v96);
                    }

                    v75 = 0;
LABEL_93:
                    if (v97)
                    {
                      CFRelease(v97);
                    }

                    if (v98)
                    {
                      CFRelease(v98);
                    }

                    if (longestEffectiveRange.location)
                    {
                      CFRelease(longestEffectiveRange.location);
                    }

                    if (v61)
                    {
                      CFRelease(v61);
                    }

                    if (v59)
                    {
                      CFRelease(v59);
                    }

                    if (v58)
                    {
                      CFRelease(v58);
                    }

                    a5 = v90;
                    if (!location_low)
                    {
                      v76 = FigCaptionDataGetCMBaseObject();
                      v77 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v77)
                      {
                        v78 = v77(v76, *MEMORY[0x1E6961240], v75);
                        if (v78)
                        {
LABEL_110:
                          location_low = v78;
                          goto LABEL_112;
                        }

                        v79 = FigCaptionDataGetCMBaseObject();
                        v80 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                        if (v80)
                        {
                          v78 = v80(v79, *MEMORY[0x1E6961200], v56);
                          goto LABEL_110;
                        }
                      }

                      location_low = 4294954514;
                    }

LABEL_112:
                    if (v75)
                    {
                      CFRelease(v75);
                    }

                    if (!location_low)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_115;
                  }

LABEL_89:
                  location_low = 4294954514;
                  goto LABEL_90;
                }
              }
            }
          }

          location_low = v63;
          goto LABEL_90;
        }
      }
    }

    else
    {
      v59 = 0;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, v86, v12);
    location_low = v84;
    v61 = 0;
    goto LABEL_90;
  }

  if (!v95)
  {
    goto LABEL_65;
  }

  if (v95 != 1)
  {
LABEL_66:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, v86, v12);
    location_low = v55;
    goto LABEL_67;
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    v53 = MEMORY[0x1E6961160];
    v54 = MEMORY[0x1E6961288];
    goto LABEL_71;
  }

  clcpcgcfsbCreateCaptionDataFromCommandData_cold_4(&longestEffectiveRange);
LABEL_133:
  location_low = LODWORD(longestEffectiveRange.location);
LABEL_67:
  v12 = v87;
  if (!location_low)
  {
LABEL_48:
    location_low = 0;
    *a5 = 0;
  }

LABEL_115:
  if (v12)
  {
    CFRelease(v12);
  }

  return location_low;
}

uint64_t clcpcgcfsbCaptionSlicerCreate(const __CFAllocator *a1, CFTypeRef **a2)
{
  v4 = MEMORY[0x19A8CC720](a1, 24, 0x20040960023A9, 0);
  v5 = v4;
  if (!v4)
  {
    clcpcgcfsbCaptionSlicerCreate_cold_4(&v11);
LABEL_11:
    v9 = v11;
    goto LABEL_6;
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *v5 = Mutable;
  if (!Mutable)
  {
    clcpcgcfsbCaptionSlicerCreate_cold_3(&v11);
    goto LABEL_11;
  }

  v7 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v5[1] = v7;
  if (!v7)
  {
    clcpcgcfsbCaptionSlicerCreate_cold_2(&v11);
    goto LABEL_11;
  }

  v8 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v5[2] = v8;
  if (!v8)
  {
    clcpcgcfsbCaptionSlicerCreate_cold_1(&v11);
    goto LABEL_11;
  }

  v9 = 0;
  *a2 = v5;
  v5 = 0;
LABEL_6:
  clcpcgcfsbCaptionSlicerRelease(a1, v5);
  return v9;
}

uint64_t clcpcgcfsbCreateCaptionDataRowNumberArray(const __CFArray *a1, CFAllocatorRef allocator, CFMutableArrayRef *a3)
{
  if (!a1)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_9;
    }

LABEL_12:
    clcpcgcfsbCreateCaptionDataRowNumberArray_cold_1(&v15);
    return v15;
  }

  Count = CFArrayGetCount(a1);
  v7 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
  if (!v7)
  {
    goto LABEL_12;
  }

  Mutable = v7;
  if (Count < 1)
  {
LABEL_9:
    v12 = 0;
    *a3 = Mutable;
    return v12;
  }

  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
    v14 = 0;
    PositionFromCaptionData = clcpcgcfsbGetPositionFromCaptionData(ValueAtIndex, &v14);
    if (PositionFromCaptionData)
    {
      break;
    }

    FigCFArrayAppendInt32();
    if (Count == ++v9)
    {
      goto LABEL_9;
    }
  }

  v12 = PositionFromCaptionData;
  CFRelease(Mutable);
  return v12;
}

uint64_t clcpcgcfsbGetFirstNewRowNumber(CFArrayRef theArray, const __CFArray *a2, uint64_t a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v5 = *MEMORY[0x1E695E480];
  if (a2)
  {
    v6 = CFArrayGetCount(a2);
  }

  else
  {
    v6 = 0;
  }

  MutableCopy = CFArrayCreateMutableCopy(v5, v6, a2);
  if (MutableCopy)
  {
    v8 = MutableCopy;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        FigCFArrayGetInt32AtIndex();
        if (CFArrayGetCount(v8) >= 1)
        {
          FigCFArrayGetInt32AtIndex();
          CFArrayRemoveValueAtIndex(v8, 0);
        }
      }
    }

    FigCFArrayGetInt32AtIndex();
    CFRelease(v8);
    return 0;
  }

  else
  {
    clcpcgcfsbGetFirstNewRowNumber_cold_1(&v11);
    return v11;
  }
}

uint64_t clcpcgcfsbCopyCaptionDataOnRowNumber(const __CFArray *a1, int a2, void *a3)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      v12 = 0;
      result = clcpcgcfsbGetPositionFromCaptionData(ValueAtIndex, &v12);
      if (result)
      {
        break;
      }

      if (v12 == a2)
      {
        goto LABEL_8;
      }

      if (v7 == ++v8)
      {
        ValueAtIndex = 0;
LABEL_8:
        if (!ValueAtIndex)
        {
          goto LABEL_10;
        }

        v11 = CFRetain(ValueAtIndex);
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
LABEL_11:
    result = 0;
    *a3 = v11;
  }

  return result;
}

const __CFArray *clcpcgcfsbCaptionSlicerGetNumCaptionDataWithStartAndEndTime(const __CFArray **a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = CFArrayGetCount(v4);
  }

  else
  {
    v5 = 0;
  }

  result = a1[2];
  if (result)
  {
    result = CFArrayGetCount(result);
  }

  if (v5 >= Count)
  {
    v7 = Count;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < result)
  {
    return v7;
  }

  return result;
}

uint64_t clcpcgcfsbCaptionSlicerCompareSliceTime(const __CFDictionary *a1, const __CFDictionary *a2)
{
  memset(&v7, 0, sizeof(v7));
  CMTimeMakeFromDictionary(&v7, a1);
  memset(&v6, 0, sizeof(v6));
  CMTimeMakeFromDictionary(&v6, a2);
  time1 = v7;
  v4 = v6;
  return CMTimeCompare(&time1, &v4);
}

uint64_t clcpcgcfsbCreateBottomLineCaptionData(const __CFArray *a1, int a2, int a3, const __CFAllocator *a4, void *a5)
{
  if (a1 && (Count = CFArrayGetCount(a1), v21 = 0, Count) && (v11 = CFArrayGetValueAtIndex(a1, Count - 1), (Value = CFDictionaryGetValue(v11, @"R")) != 0) && (v13 = Value, (v14 = CFArrayGetCount(Value)) != 0) && (v15 = CFArrayGetValueAtIndex(v13, v14 - 1)) != 0 && (v16 = v15, (v17 = CFArrayGetCount(v15)) != 0))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v16, v17 - 1);
    result = clcpcgcfsbCreateCaptionDataFromCommandData(ValueAtIndex, a2, a3, a4, &v21);
    if (result)
    {
      return result;
    }

    v20 = v21;
  }

  else
  {
    v20 = 0;
  }

  result = 0;
  *a5 = v20;
  return result;
}

CMTimeRange *OUTLINED_FUNCTION_4_131(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *duration, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 durationa, uint64_t duration_16, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v24 - 176) = a19;
  *(v24 - 160) = a20;
  durationa = *(v24 - 112);
  duration_16 = *(v24 - 96);

  return CMTimeRangeMake(&a24, (v24 - 176), &durationa);
}

uint64_t OUTLINED_FUNCTION_6_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time2, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, __int128 time2a, uint64_t time2_16, uint64_t a28, CMTime *time1, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int128 time1a, uint64_t time1_16)
{
  time1a = *(v39 - 144);
  time1_16 = *(v39 - 128);
  time2a = a31;
  time2_16 = a32;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_7_89(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time2, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 time2a, uint64_t time2_16, uint64_t a29, CMTime *time1, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36, uint64_t a37, uint64_t a38, __int128 time1a, uint64_t time1_16)
{
  time1a = a36;
  time1_16 = a37;
  time2a = *(v40 - 144);
  time2_16 = *(v40 - 128);

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_11_65()
{
  result = v0[1];
  v0[8] = result;
  v0[9].n128_u64[0] = v0[2].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_12_62()
{
  result = *v0;
  *(v1 - 120) = 0;
  return result;
}

const void *OUTLINED_FUNCTION_13_48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, __int128 a29)
{

  return CFArrayGetValueAtIndex(v30, v29);
}

uint64_t OUTLINED_FUNCTION_14_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  a27 = 0;

  return clcpcgcfsbGetCaptionMode(v27, &a27);
}

CMTime *OUTLINED_FUNCTION_15_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CMTime *lhs, uint64_t a14, uint64_t a15, uint64_t a16, CMTime *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a24, CMTime *rhs, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t rhsa)
{

  return CMTimeSubtract(&a27, &lhsa, &rhsa);
}

__n128 OUTLINED_FUNCTION_17_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a27, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a28, unint64_t a29)
{
  result = a28;
  v29[1].n128_u64[0] = a29;
  *v29 = a28;
  return result;
}

__n128 OUTLINED_FUNCTION_18_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a27, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a28, uint64_t a29)
{
  result = a28;
  *(v29 - 176) = a28;
  *(v29 - 160) = a29;
  return result;
}

CMTime *OUTLINED_FUNCTION_21_36@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *lhs, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t lhsa)
{
  *(v20 - 160) = a1;

  return CMTimeSubtract((v20 - 112), &lhsa, (v20 - 176));
}

uint64_t OUTLINED_FUNCTION_22_34()
{
  v3 = *(v0 + 40);
  v4 = *(v0 + 88);
  v5 = *v0;

  return clcpcgcfsbCreateCaptionGroupWithoutSlice(v3, v4, v5, (v1 - 120));
}

uint64_t OUTLINED_FUNCTION_23_41()
{
  v5 = *(v0 + 40);

  return clcpcgcfsbCreateCaptionDataArray(v5, v1, v2, (v3 - 176));
}

uint64_t FigTTMLDocumentWriterCreateLineBreaker(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateLineBreaker_cold_2(&v7);
    return v7;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateLineBreaker_cold_1(&v7);
    return v7;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    *CMBaseObjectGetDerivedStorage() = a2;
    CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterLineBreaker_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterLineBreaker_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterLineBreaker_EndElement()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v0);
}

uint64_t figTTMLDocumentWriterLineBreaker_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a2);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v5);
  lineEndIndex = 0;
  lineBeginIndex = 0;
  v17 = 0;
  if (Length < 1)
  {
    return 0;
  }

  v7 = Length;
  v8 = 0;
  v9.location = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  while (1)
  {
    v9.length = 1;
    CFStringGetLineBounds(v5, v9, &lineBeginIndex, &lineEndIndex, &v17);
    v12 = lineBeginIndex;
    v13 = v17;
    if (v10)
    {
      CFRelease(v10);
    }

    v21.length = v13 - v12;
    v21.location = v12;
    v10 = CFStringCreateWithSubstring(v11, v5, v21);
    if (v8)
    {
      started = FigTTMLDocumentWriterStartElement(*DerivedStorage, 6);
      if (started)
      {
        break;
      }

      started = FigTTMLDocumentWriterEndElement(*DerivedStorage);
      if (started)
      {
        break;
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (CFStringGetLength(v10))
    {
      started = FigCaptionDataCreate();
      if (started)
      {
        break;
      }

      started = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, cf);
      if (started)
      {
        break;
      }
    }

    v9.location = lineEndIndex;
    v8 = 1;
    if (v17 >= v7)
    {
      v15 = 0;
      goto LABEL_18;
    }
  }

  v15 = started;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v15;
}

uint64_t figTTMLDocumentWriterLineBreaker_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterLineBreaker_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v0);
}

uint64_t surrogateAIG_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v2 = *DerivedStorage;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __surrogateAIG_Invalidate_block_invoke;
  v8[3] = &unk_1E74949D0;
  v8[4] = &v9;
  v8[5] = DerivedStorage;
  dispatch_sync(v2, v8);
  if (v10[3])
  {
    FigAssetImageGeneratorGetFigBaseObject();
    if (v3)
    {
      v4 = v3;
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v6 = v5(v4);
      }

      else
      {
        v6 = 4294954514;
      }
    }

    else
    {
      v6 = 4294954516;
    }

    CFRelease(v10[3]);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

void surrogateAIG_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef surrogateAIG_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v3 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __surrogateAIG_CopyDebugDescription_block_invoke;
  block[3] = &unk_1E74949F8;
  block[4] = &v11;
  block[5] = DerivedStorage;
  dispatch_sync(v3, block);
  v4 = v12[3];
  if (v4)
  {
    v5 = CFCopyDescription(v4);
    if (*(DerivedStorage + 40))
    {
      v6 = " INVALIDATED";
    }

    else
    {
      v6 = "";
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SurrogateAIG %p for asset %@ wrapping AIG {%@}%s", a1, *(DerivedStorage + 8), v5, v6);
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v12[3]);
  }

  else
  {
    if (*(DerivedStorage + 40))
    {
      v8 = " INVALIDATED";
    }

    else
    {
      v8 = "";
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SurrogateAIG %p for asset %@ (has no subGenerator)%s", a1, *(DerivedStorage + 8), v8);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t surrogateAIG_CopyCGImageAtTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x2000000000;
  v28 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    surrogateAIG_CopyCGImageAtTime_cold_1(v27);
  }

  else
  {
    v13 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __surrogateAIG_CopyCGImageAtTime_block_invoke;
    block[3] = &unk_1E7494A48;
    block[4] = &v26;
    block[5] = &v22;
    block[6] = a1;
    block[7] = DerivedStorage;
    dispatch_sync(v13, block);
    v14 = v23[3];
    if (v14)
    {
      v19 = *a2;
      v20 = *(a2 + 2);
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v15)
      {
        v29 = v19;
        v30 = v20;
        v16 = v15(v14, &v29, a3, a4, a5, a6);
      }

      else
      {
        v16 = -12782;
      }

      *(v27[0] + 24) = v16;
      CFRelease(v23[3]);
    }
  }

  v17 = *(v27[0] + 24);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v17;
}

uint64_t surrogateAIG_RequestCGImageAtTimeAsync(const void *a1, __int128 *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (*(DerivedStorage + 40))
  {
    surrogateAIG_RequestCGImageAtTimeAsync_cold_1(&v26);
    v13 = v26;
  }

  else
  {
    v9 = DerivedStorage;
    v10 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __surrogateAIG_RequestCGImageAtTimeAsync_block_invoke;
    block[3] = &unk_1E7494A70;
    block[4] = &v22;
    block[5] = v9;
    dispatch_sync(v10, block);
    v11 = v23[3];
    if (v11)
    {
      v19 = *a2;
      v20 = *(a2 + 2);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v12)
      {
        v26 = v19;
        v27 = v20;
        v13 = v12(v11, &v26, a3, a4);
      }

      else
      {
        v13 = 4294954514;
      }

      CFRelease(v23[3]);
    }

    else
    {
      CFRetain(a1);
      if (a3)
      {
        CFRetain(a3);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      v14 = *v9;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __surrogateAIG_RequestCGImageAtTimeAsync_block_invoke_2;
      v16[3] = &__block_descriptor_tmp_15_6;
      v17 = *a2;
      v18 = *(a2 + 2);
      v16[4] = a1;
      v16[5] = a3;
      v16[6] = a4;
      dispatch_async(v14, v16);
      v13 = 0;
    }
  }

  _Block_object_dispose(&v22, 8);
  return v13;
}

uint64_t surrogateAIG_CancelAllCGImageAsyncRequests(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (*(DerivedStorage + 40))
  {
    surrogateAIG_CancelAllCGImageAsyncRequests_cold_1(&v11);
    v3 = v11;
  }

  else
  {
    v2 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __surrogateAIG_CancelAllCGImageAsyncRequests_block_invoke;
    block[3] = &unk_1E7494AB8;
    block[4] = &v7;
    block[5] = DerivedStorage;
    dispatch_sync(v2, block);
    v3 = v8[3];
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v4)
      {
        v3 = v4(v3);
      }

      else
      {
        v3 = 4294954514;
      }

      CFRelease(v8[3]);
    }
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t surrogateAIG_SetSavedPropertyOnSubGenerator(uint64_t a1, uint64_t a2)
{
  FigAssetImageGeneratorGetFigBaseObject();
  v5 = v4;
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(v5, a1, a2);
  }

  return result;
}

uint64_t FigVirtualFramebufferGetMaxCount(uint64_t MaxCount_cold_1)
{
  if (qword_1ED4CB980 != -1)
  {
    FigVirtualFramebufferGetMaxCount_cold_1();
  }

  if (_MergedGlobals_124 != 1)
  {
    return 1;
  }

  if (qword_1ED4CB988 != -1)
  {
    FigVirtualFramebufferGetMaxCount_cold_2();
  }

  return fvfbserv_getVirtualFramebufMaxCount_maxCount;
}

uint64_t FigVirtualFramebufferGetFramebufs(void *__dst, unint64_t a2)
{
  if (qword_1ED4CB980 != -1)
  {
    FigVirtualFramebufferGetMaxCount_cold_1();
  }

  if (_MergedGlobals_124 == 1)
  {
    if (qword_1ED4CB988 != -1)
    {
      FigVirtualFramebufferGetMaxCount_cold_2();
    }

    v4 = fvfbserv_getVirtualFramebufMaxCount_maxCount;
    if (fvfbserv_getVirtualFramebufMaxCount_maxCount > a2)
    {
      FigVirtualFramebufferGetFramebufs_cold_8();
    }

    else
    {
      if (fvfbserv_getVirtualFramebufs_once != -1)
      {
        FigVirtualFramebufferGetFramebufs_cold_6();
      }

      v4 = qword_1ED4CB998;
      if (qword_1ED4CB998)
      {
        memcpy(__dst, qword_1ED4CB990, 8 * qword_1ED4CB998);
      }

      else
      {
        FigVirtualFramebufferGetFramebufs_cold_7();
      }
    }
  }

  else
  {
    if (a2)
    {
      if (fvfbintern_getVirtualFramebuf_once != -1)
      {
        FigVirtualFramebufferGetFramebufs_cold_2();
      }

      v5 = fvfbintern_getVirtualFramebuf_framebuf;
      *__dst = fvfbintern_getVirtualFramebuf_framebuf;
      if (!v5)
      {
        FigVirtualFramebufferGetFramebufs_cold_3();
        return 0;
      }
    }

    else
    {
      FigVirtualFramebufferGetFramebufs_cold_4();
    }

    return 1;
  }

  return v4;
}

uint64_t FigVirtualFramebufferClientSourceScreenCreateIOS(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigVirtualDisplaySourceGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (qword_1ED4CB9C0 != -1)
    {
      FigVirtualFramebufferClientSourceScreenCreateIOS_cold_1();
    }

    *(DerivedStorage + 8) = qword_1ED4CB9C8;
    *DerivedStorage = 0;
    *(DerivedStorage + 32) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 40) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *a3 = 0;
  }

  return v4;
}

uint64_t __fvfb_getProcessType_block_invoke()
{
  buffer[128] = *MEMORY[0x1E69E9840];
  v0 = getpid();
  result = proc_pidpath(v0, buffer, 0x400u);
  if (result >= 1 && buffer[0] == 0x62696C2F7273752FLL && buffer[1] == 0x6361622F63657865 && buffer[2] == 0x646472616F626BLL)
  {
    _MergedGlobals_124 = 1;
  }

  return result;
}

double __fvfbserv_getVirtualFramebufMaxCount_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  fvfbserv_getVirtualFramebufMaxCount_maxCount = CFPreferenceNumberWithDefault;
  if (CFPreferenceNumberWithDefault >= 9)
  {
    fvfbserv_getVirtualFramebufMaxCount_maxCount = 8;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t fvfbserv_hotplugSourceSchedule(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104))
  {
    fvfbserv_hotplugSourceSchedule_cold_1();
  }

  *(DerivedStorage + 104) = a2;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbserv_hotplugSourceCancel(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 104) != a2)
  {
    fvfbserv_hotplugSourceCancel_cold_1();
  }

  *(DerivedStorage + 104) = 0;
  return FigSimpleMutexUnlock();
}

void fvfbserv_hotplugSourcePerform(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 120);
  v2 = *(DerivedStorage + 128);
  v4 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v3)
  {
    v3(v4 != 0, v2);
  }
}

void __fvfbserv_objCreateVirtualFramebuf_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  data = dispatch_source_get_data(*(DerivedStorage + 144));
  if (data >= 1)
  {
    v3.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v3.i64[1] = *(DerivedStorage + 200) * (data & 0x7FFFFFFF);
    *(DerivedStorage + 184) = vaddq_s64(*(DerivedStorage + 184), v3);
    if (dword_1ED4CBED0 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(DerivedStorage + 152))
    {
      CFRunLoopSourceSignal(*(DerivedStorage + 160));
      CFRunLoopWakeUp(*(DerivedStorage + 152));
    }
  }
}

void fvfbserv_vsyncSourceSchedule(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_vsyncSourceSchedule_block_invoke;
  block[3] = &__block_descriptor_tmp_80_2;
  block[4] = DerivedStorage;
  block[5] = a2;
  dispatch_sync(v5, block);
}

void fvfbserv_vsyncSourceCancel(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_vsyncSourceCancel_block_invoke;
  block[3] = &__block_descriptor_tmp_81_1;
  block[4] = DerivedStorage;
  block[5] = a2;
  dispatch_sync(v5, block);
}

void fvfbserv_vsyncSourcePerform(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (dword_1ED4CBED0 >= 2)
  {
    v7 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_vsyncSourcePerform_block_invoke;
  block[3] = &unk_1E7494C20;
  block[4] = &v24;
  block[5] = &v20;
  block[6] = &v16;
  block[7] = &v12;
  block[8] = &v8;
  block[9] = DerivedStorage;
  dispatch_sync(v3, block);
  v4 = v25[3];
  if (v4)
  {
    v4(v17[3], v13[3], v9[3], v21[3]);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

uint64_t fvfbserv_hdcpSourceSchedule(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 224))
  {
    fvfbserv_hdcpSourceSchedule_cold_1();
  }

  *(DerivedStorage + 224) = a2;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbserv_hdcpSourceCancel(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (DerivedStorage[28] != a2)
  {
    fvfbserv_hdcpSourceCancel_cold_1();
  }

  DerivedStorage[28] = 0;
  DerivedStorage[30] = 0;
  DerivedStorage[31] = 0;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbserv_hdcpSourcePerform(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 248);
  v4 = *(DerivedStorage + 240);
  *(DerivedStorage + 240) = 0;
  *(DerivedStorage + 248) = 0;
  result = FigSimpleMutexUnlock();
  if (v4)
  {

    return v4(v2, 1);
  }

  return result;
}

void fvfbserv_objFinalize()
{
  v2 = 0;
  v1 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  __break(1u);
}

uint64_t fvfbserv_objSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    v5 = 4294954512;
  }

  else
  {
    v5 = 3758097111;
  }

  FigSimpleMutexUnlock();
  return v5;
}

__CFString *fvfbserv_objCopyDescription(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (fvfbserv_objCopyDescription_once == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_31:
    CFStringAppendFormat(Mutable, 0, @"<VirtualFramebuffer %d state: %d>", *(DerivedStorage + 12), *(DerivedStorage + 8));
    return Mutable;
  }

  fvfbserv_objCopyDescription_cold_1();
  if (!a2)
  {
    goto LABEL_31;
  }

LABEL_3:
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 8);
  v7 = *(DerivedStorage + 12);
  v8 = *(DerivedStorage + 16);
  v9 = *(DerivedStorage + 264);
  v10 = *(DerivedStorage + 48);
  v11 = *(DerivedStorage + 56);
  v12 = *(DerivedStorage + 24);
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(DerivedStorage + 32);
  if (v14)
  {
    v15 = CFRetain(v14);
  }

  else
  {
    v15 = 0;
  }

  FigSimpleMutexUnlock();
  if (v6 > 2)
  {
    v16 = "unknown";
  }

  else
  {
    v16 = FVFBStateNameForState[v6];
  }

  CFStringAppendFormat(Mutable, 0, @"vfb %d: state: %s", v7, v16);
  if (v9)
  {
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v4, fvfbserv_objCopyDescription_dateFormatter, v8);
    v18 = StringWithAbsoluteTime;
    v19 = "activated";
    if (!v6)
    {
      v19 = "reserved";
    }

    CFStringAppendFormat(Mutable, 0, @", %s at %@", v19, StringWithAbsoluteTime);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v11 >= 1)
    {
      FigServer_CopyProcessName();
      CFStringAppendFormat(Mutable, 0, @" by process %@ (pid %d)", 0, v11);
    }

    if (v15)
    {
      CFStringAppendFormat(Mutable, 0, @", client: %@", v15);
    }

    v20 = "yes";
    if (!v10)
    {
      v20 = "no";
    }

    CFStringAppendFormat(Mutable, 0, @", protected: %s", v20);
    if (!v13)
    {
      goto LABEL_27;
    }

    CFStringAppendFormat(Mutable, 0, @", display mode: %@", v13);
  }

  else if (!v13)
  {
    goto LABEL_27;
  }

  CFRelease(v13);
LABEL_27:
  if (v15)
  {
    CFRelease(v15);
  }

  return Mutable;
}

CFDateFormatterRef __fvfbserv_objCopyDescription_block_invoke()
{
  result = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0xFF3uLL);
  fvfbserv_objCopyDescription_dateFormatter = result;
  return result;
}

uint64_t fvfb_sendMessageCreatingReply(_xpc_connection_s *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = xpc_connection_send_message_with_reply_sync(a1, a2);
  if (MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E80])
  {
    if (MEMORY[0x19A8D7060](v4) == MEMORY[0x1E69E9E98])
    {
      xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = 4294951141;
LABEL_7:
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  int64 = xpc_dictionary_get_int64(v4, *MEMORY[0x1E6961590]);
  v7 = int64;
  if (int64)
  {
    if (int64 == -536870187)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *a3 = v4;
LABEL_8:
  FigXPCRelease();
  return v7;
}

uint64_t fvfbserv_objGetSupportedDigitalOutModes(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 8))
  {
    if (dword_1ED4CBED0)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = *(DerivedStorage + 72);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 72) = 0;
    }

    v9 = *(DerivedStorage + 80);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 80) = 0;
    }
  }

  if (a2)
  {
    *a2 = *(DerivedStorage + 72);
  }

  if (a3)
  {
    *a3 = *(DerivedStorage + 80);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbserv_objSetDigitalOutMode(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  xdict = 0;
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
    {
      fvfbserv_objSetDigitalOutMode_cold_1();
      v13 = 3758097097;
      goto LABEL_9;
    }

    v7 = FigXPCCreateBasicMessage();
    if (v7)
    {
      v13 = v7;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      xpc_dictionary_set_uint64(xdict, "ColorModeID", a2);
      xpc_dictionary_set_uint64(xdict, "TimingModeID", a3);
      v13 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v18);
      if (!v13)
      {
        FigDisplayModes_ExtractVSyncRateFromTimingMode(*(DerivedStorage + 80), a3, (DerivedStorage + 216), v8, v9, v10, v11, v12);
        goto LABEL_9;
      }

      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  if (dword_1ED4CBED0)
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v13;
}

uint64_t fvfbserv_objSubmitSurface(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  xdict = 0;
  bytes[0] = a5;
  *&bytes[1] = a7;
  *&bytes[2] = a8;
  *&bytes[3] = a9;
  *&bytes[4] = a10;
  *&bytes[5] = a11;
  *&bytes[6] = a12;
  *&bytes[7] = a13;
  *&bytes[8] = a14;
  v38 = a3;
  v39 = a2;
  v40 = a4;
  v41 = a6;
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    if (a2)
    {
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v30 = 4294955226;
      goto LABEL_9;
    }

    if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
    {
      fvfbserv_objSubmitSurface_cold_1();
      v30 = 3758097097;
      goto LABEL_9;
    }

    v29 = FigXPCCreateBasicMessage();
    if (v29)
    {
      v30 = v29;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      xpc_dictionary_set_data(xdict, "SurfaceData", bytes, 0x58uLL);
      v30 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v42);
      if (!v30)
      {
        goto LABEL_9;
      }

      v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  if (dword_1ED4CBED0)
  {
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v30 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v30;
}

uint64_t fvfbserv_objSwapWaitWithTimeout(double a1, uint64_t a2, int a3, int a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t fvfbserv_objSwapWaitSurfaceTimeout(double a1, uint64_t a2, int a3, int a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t fvfbserv_objGetVSyncRunLoopSource(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return *(DerivedStorage + 160);
}

uint64_t fvfbserv_objEnableVSyncNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    v7 = *(DerivedStorage + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvfbserv_objEnableVSyncNotifications_block_invoke;
    block[3] = &unk_1E7494B98;
    block[6] = a2;
    block[7] = a3;
    block[4] = &v14;
    block[5] = DerivedStorage;
    dispatch_sync(v7, block);
  }

  else
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(v15 + 6) = -536870185;
  }

  FigSimpleMutexUnlock();
  v8 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t fvfbserv_objDisableVSyncNotifications(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    v7 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_objDisableVSyncNotifications_block_invoke;
  block[3] = &__block_descriptor_tmp_72_0;
  block[4] = DerivedStorage;
  dispatch_sync(v3, block);
  return 0;
}

uint64_t fvfbserv_objGetHotPlugRunLoopSource(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return *(DerivedStorage + 112);
}

uint64_t fvfbserv_objEnableHotPlugDetectNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = 4294955219;
  }

  else
  {
    *(DerivedStorage + 120) = a2;
    *(DerivedStorage + 128) = a3;
    if (*(DerivedStorage + 104))
    {
      CFRunLoopSourceSignal(*(DerivedStorage + 112));
      CFRunLoopWakeUp(*(DerivedStorage + 104));
    }

    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t fvfbserv_objDisableHotPlugDetectNotifications(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 120) = 0;
  *(DerivedStorage + 128) = 0;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbserv_objGetHDCPDownstreamState(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  fvfb_getHDCPDownstreamState(*(DerivedStorage + 8) != 0, *(DerivedStorage + 48), a2);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbserv_objAcquireWritebackSurface(uint64_t a1, int a2, uint64_t a3, int a4, IOSurfaceID *a5, uint64_t *a6, double a7, double a8)
{
  v40 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  xdict = 0;
  if (a5)
  {
    v16 = a6 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  bytes[0] = a3;
  *&bytes[1] = a7;
  *&bytes[2] = a8;
  v35 = a2;
  v36 = a4;
  v37 = v17;
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v19 = *(DerivedStorage + 8);
  if (v19 != 2)
  {
    if (v19)
    {
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v28 = 3758097112;
    }

    else
    {
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v28 = 3758097111;
    }

    goto LABEL_22;
  }

  if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
  {
    v28 = 3758097097;
    fvfbserv_objAcquireWritebackSurface_cold_4();
    goto LABEL_22;
  }

  v20 = FigXPCCreateBasicMessage();
  if (v20)
  {
    v28 = v20;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    goto LABEL_32;
  }

  xpc_dictionary_set_data(xdict, "SurfaceData", bytes, 0x28uLL);
  v21 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v38);
  if (v21)
  {
    v28 = v21;
    if (v21 == -536870187)
    {
      goto LABEL_22;
    }

    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
LABEL_32:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  if (!v17)
  {
    v28 = 0;
LABEL_22:
    FigSimpleMutexUnlock();
    goto LABEL_24;
  }

  v22 = v38;
  value = xpc_dictionary_get_value(v38, "Surface");
  if (!value)
  {
    v28 = 3758097097;
    fvfbserv_objAcquireWritebackSurface_cold_3();
    goto LABEL_22;
  }

  v24 = IOSurfaceLookupFromXPCObject(value);
  if (!v24)
  {
    v28 = 3758097097;
    fvfbserv_objAcquireWritebackSurface_cold_2();
    goto LABEL_22;
  }

  v25 = v24;
  ID = IOSurfaceGetID(v24);
  if (ID != xpc_dictionary_get_uint64(v22, "SurfaceID"))
  {
    fvfbserv_objAcquireWritebackSurface_cold_1();
  }

  CFDictionarySetValue(*(DerivedStorage + 64), ID, v25);
  *a5 = ID;
  *a6 = xpc_dictionary_get_uint64(v22, "SurfaceRefCon");
  if (dword_1ED4CBED0 >= 2)
  {
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  CFRelease(v25);
  v28 = 0;
LABEL_24:
  FigXPCRelease();
  FigXPCRelease();
  return v28;
}

uint64_t fvfbserv_objRelinquishWritebackSurface(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  xdict = 0;
  bytes = a3;
  v16 = a2;
  v17 = a4;
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    if (!a2 || !a3)
    {
      fvfbserv_objRelinquishWritebackSurface_cold_2();
      v10 = 4294955226;
      goto LABEL_10;
    }

    if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
    {
      fvfbserv_objRelinquishWritebackSurface_cold_1();
      v10 = 3758097097;
      goto LABEL_10;
    }

    CFDictionaryRemoveValue(*(DerivedStorage + 64), a2);
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v10 = v9;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      xpc_dictionary_set_data(xdict, "SurfaceData", &bytes, 0x10uLL);
      v10 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v18);
      if (!v10)
      {
        goto LABEL_10;
      }

      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_10;
  }

  if (dword_1ED4CBED0)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t fvfbserv_objGetHDCPRunLoopSource(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return *(DerivedStorage + 232);
}

uint64_t fvfbserv_objHDCPSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 240) = a4;
  *(DerivedStorage + 248) = a5;
  if (*(DerivedStorage + 224))
  {
    CFRunLoopSourceSignal(*(DerivedStorage + 232));
    CFRunLoopWakeUp(*(DerivedStorage + 224));
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbserv_objHDCPGetReply(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*a3 <= 0xF)
  {
    fvfbserv_objHDCPGetReply_cold_1();
    return 4294955226;
  }

  else
  {
    FigSimpleMutexLock();
    fvfb_getHDCPDownstreamState(*(DerivedStorage + 8) != 0, *(DerivedStorage + 48), a2);
    FigSimpleMutexUnlock();
    result = 0;
    *a3 = 16;
  }

  return result;
}

uint64_t fvfbserv_objGetProtectionOptions(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 8))
    {
      v5 = *(DerivedStorage + 48);
    }

    else
    {
      v5 = 7;
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    fvfbserv_objGetProtectionOptions_cold_1();
    return 4294955226;
  }
}

void __fvfbserv_objEnableVSyncNotifications_block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (*(v2 + 168))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(a1[4] + 8) + 24) = -12077;
  }

  else
  {
    *(v2 + 168) = a1[6];
    *(a1[5] + 176) = a1[7];
    *(a1[5] + 208) = 0x3B9ACA00uLL / *(a1[5] + 216);
    *(a1[5] + 200) = FigNanosecondsToHostTime();
    v4 = mach_absolute_time();
    v5 = a1[5];
    v6 = v5[26];
    v5[24] = v5[25] + v4;
    v7 = v5[18];
    v8 = dispatch_time(0, v6);
    v9 = *(a1[5] + 208);

    dispatch_source_set_timer(v7, v8, v9, 0xF4240uLL);
  }
}

void __fvfbserv_objDisableVSyncNotifications_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  *(*(a1 + 32) + 176) = 0;
  dispatch_source_set_timer(*(*(a1 + 32) + 144), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
}

double fvfb_getHDCPDownstreamState(int a1, char a2, uint64_t a3)
{
  if (!a1)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_9:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_10;
  }

  v3 = (a2 & 7) - 1;
  if (v3 > 6)
  {
    v4 = 8;
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v4 = dword_196E79118[v3];
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(a3 + 8) = 0;
  *&result = 0x1000150434448;
  *a3 = 0x1000150434448;
  *(a3 + 8) = bswap32(v4);
  *(a3 + 12) = 0;
  *(a3 + 14) = 0;
  if (!dword_1ED4CBED0)
  {
    return result;
  }

  v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
LABEL_10:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void __fvfbserv_vsyncSourceSchedule_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 152))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 32);
  }

  *(v2 + 152) = *(a1 + 40);
}

void __fvfbserv_vsyncSourceCancel_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 152) != *(a1 + 40))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v1 = *(a1 + 32);
  }

  *(v1 + 152) = 0;
}

void *__fvfbserv_vsyncSourcePerform_block_invoke(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[9] + 168);
  *(*(result[5] + 8) + 24) = *(result[9] + 176);
  v1 = result[9];
  *(*(result[6] + 8) + 24) = v1[23];
  *(*(result[7] + 8) + 24) = v1[24];
  *(*(result[8] + 8) + 24) = v1[25];
  return result;
}

dispatch_queue_t __srmonitor_getShared_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1ED4CB974 = result != 0;
  if (result)
  {
    qword_1ED4CB9A0 = FigSimpleMutexCreate();
    result = dispatch_queue_create("ScreenRecordingMonitorNotifications", 0);
    qword_1ED4CB9A8 = result;
    dword_1ED4CB978 = 0;
  }

  return result;
}

uint64_t fvfbserv_handleClientMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v6 = OpCode;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_6;
  }

  if (dword_1ED4CBED0 >= 3)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v6 = 4294955226;
  if (dword_1ED4CBED0 >= 3)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
LABEL_6:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v6;
}

uint64_t fvfbserv_getAndRetainFramebufFromMessage(uint64_t a1, xpc_object_t xdict, CFTypeRef *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    v5 = v3;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    fvfbserv_getAndRetainFramebufFromMessage_cold_1();
    return 4294954516;
  }

  return v5;
}

uint64_t fvfbserv_startVirtualFramebuf(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    fvfbserv_startVirtualFramebuf_cold_1();
    goto LABEL_20;
  }

  if (!*(DerivedStorage + 256) || !*(DerivedStorage + 264))
  {
    fvfbserv_startVirtualFramebuf_cold_8();
LABEL_20:
    v10 = 4294955226;
    goto LABEL_16;
  }

  v5 = FigXPCMessageCopyCFArray();
  if (v5 || (v5 = FigXPCMessageCopyCFArray(), v5))
  {
    v10 = v5;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    FigXPCMessageCopyCFDictionary();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    if (xpc_dictionary_get_BOOL(a3, "SuspendOnStart"))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *(DerivedStorage + 8) = v6;
    *(DerivedStorage + 16) = CFAbsoluteTimeGetCurrent();
    *(DerivedStorage + 60) = xpc_dictionary_get_BOOL(a3, "Rotation");
    *(DerivedStorage + 48) = xpc_dictionary_get_uint64(a3, "ProtFlags");
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetInt32IfPresent();
    *(DerivedStorage + 24) = 0;
    FigXPCMessageCopyCFString();
    FigXPCMessageCopyCFData();
    v7 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(DerivedStorage + 80);
    *(DerivedStorage + 80) = 0;
    if (v8)
    {
      CFRelease(v8);
    }

    *(DerivedStorage + 88) = -1;
    FigCFDictionaryGetInt32IfPresent();
    *(DerivedStorage + 61) = 0;
    if (*(DerivedStorage + 104))
    {
      CFRunLoopSourceSignal(*(DerivedStorage + 112));
      CFRunLoopWakeUp(*(DerivedStorage + 104));
    }

    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = 0;
  }

LABEL_16:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fvfbserv_suspendVirtualFramebuf(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    *(DerivedStorage + 8) = 1;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = 0;
  }

  else
  {
    fvfbserv_suspendVirtualFramebuf_cold_1();
    v3 = 4294955226;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t fvfbserv_resumeVirtualFramebuf(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8) == 1)
  {
    *(DerivedStorage + 8) = 2;
    *(DerivedStorage + 88) = -1;
    if (*(DerivedStorage + 104))
    {
      CFRunLoopSourceSignal(*(DerivedStorage + 112));
      CFRunLoopWakeUp(*(DerivedStorage + 104));
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = 0;
  }

  else
  {
    fvfbserv_resumeVirtualFramebuf_cold_1();
    v3 = 4294955226;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t fvfbserv_clearVirtualFramebuf(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 56) = 0;
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 64));
  *(DerivedStorage + 88) = -1;
  *(DerivedStorage + 264) = 0;
  v5 = *(DerivedStorage + 256);
  if (v5)
  {
    *(DerivedStorage + 256) = 0;
    xpc_release(v5);
  }

  *(DerivedStorage + 8) = 0;
  if (*(DerivedStorage + 61))
  {
    if (qword_1ED4CB9B0 != -1)
    {
      fvfbserv_clearVirtualFramebuf_cold_1();
    }

    if (byte_1ED4CB974)
    {
      if (dword_1ED4CBED0)
      {
        v18 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      v7 = dword_1ED4CB978 == 1;
      if (dword_1ED4CB978 >= 1)
      {
        --dword_1ED4CB978;
        if (v7)
        {
          v18 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          dispatch_async(qword_1ED4CB9A8, &__block_literal_global_96);
        }
      }

      FigSimpleMutexUnlock();
    }

    *(DerivedStorage + 61) = 0;
  }

  v9 = *(DerivedStorage + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbserv_clearVirtualFramebuf_block_invoke;
  block[3] = &__block_descriptor_tmp_93;
  block[4] = DerivedStorage;
  dispatch_sync(v9, block);
  if (*(DerivedStorage + 104))
  {
    CFRunLoopSourceSignal(*(DerivedStorage + 112));
    CFRunLoopWakeUp(*(DerivedStorage + 104));
  }

  v18 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v11 = v18;
  v12 = type;
  if (os_log_type_enabled(v10, type))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 0xFFFFFFFE;
  }

  if (v13)
  {
    v14 = *(DerivedStorage + 12);
    v19 = 136315394;
    v20 = "fvfbserv_clearVirtualFramebuf";
    v21 = 1024;
    v22 = v14;
    _os_log_send_and_compose_impl(v13, 0, v23, 128, &dword_1962D5000, v10, v12, "<<<< FigVirtualFramebufferClientServer >>>> %s: vfb %d stopped", &v19, 18);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return FigSimpleMutexUnlock();
}

void __fvfbserv_clearVirtualFramebuf_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  *(*(a1 + 32) + 176) = 0;
  dispatch_source_set_timer(*(*(a1 + 32) + 144), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
}

uint64_t __fvfb_isInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  fvfb_isInternalBuild_isInternalBuild = result;
  return result;
}

double __fvfb_demoModeEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (fvfb_isInternalBuild_once != -1)
  {
    __fvfb_demoModeEnabled_block_invoke_cold_1();
  }

  if (fvfb_isInternalBuild_isInternalBuild)
  {
    fvfb_demoModeEnabled_isDemoModeEnabled = CFPreferencesGetAppBooleanValue(@"EnableTetheredDisplayPortMode", *MEMORY[0x1E695E890], 0);
  }

  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

double __fvfbintern_getVirtualFramebuf_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v0 = *MEMORY[0x1E695E480];
  FigVirtualFramebufferGetClassID();
  if (CMDerivedObjectCreate())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = FigSimpleMutexCreate();
    memset(&context, 0, 56);
    context.schedule = fvfbintern_hdcpSourceSchedule;
    context.cancel = fvfbintern_hdcpSourceCancel;
    context.perform = fvfbintern_hdcpSourcePerform;
    DerivedStorage[2] = CFRunLoopSourceCreate(v0, 0, &context);
    fvfbintern_getVirtualFramebuf_framebuf = 0;
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t fvfbintern_hdcpSourceSchedule(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    fvfbintern_hdcpSourceSchedule_cold_1();
  }

  *(DerivedStorage + 8) = a2;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbintern_hdcpSourceCancel(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (DerivedStorage[1] != a2)
  {
    fvfbintern_hdcpSourceCancel_cold_1();
  }

  DerivedStorage[1] = 0;
  DerivedStorage[3] = 0;
  DerivedStorage[4] = 0;
  return FigSimpleMutexUnlock();
}

uint64_t fvfbintern_hdcpSourcePerform(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 32);
  v4 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  result = FigSimpleMutexUnlock();
  if (v4)
  {

    return v4(v2, 1);
  }

  return result;
}

void fvfbintern_objFinalize()
{
  v2 = 0;
  v1 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  __break(1u);
}

CFStringRef fvfbintern_objCopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVirtualFramebufferInternal %p retainCount: %ld>", a1, v3);
}

uint64_t fvfbintern_objGetHDCPDownstreamState(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_13;
  }

  if (qword_1ED4CB9C0 != -1)
  {
    FigVirtualFramebufferClientSourceScreenCreateIOS_cold_1();
  }

  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
LABEL_13:
    v9 = v4;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(0, "ProtOptions");
    v6 = xpc_dictionary_get_BOOL(0, "IsAnyActive");
    if (dword_1ED4CBED0)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v6)
      {
        if (dword_1ED4CBED0)
        {
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    fvfb_getHDCPDownstreamState(v6, uint64, a2);
    v9 = 0;
  }

  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t fvfbintern_objGetHDCPRunLoopSource(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return *(DerivedStorage + 16);
}

uint64_t fvfbintern_objHDCPSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 24) = a4;
  *(DerivedStorage + 32) = a5;
  if (*(DerivedStorage + 8))
  {
    CFRunLoopSourceSignal(*(DerivedStorage + 16));
    CFRunLoopWakeUp(*(DerivedStorage + 8));
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fvfbintern_objHDCPGetReply(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    a1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    fvfbintern_objHDCPGetReply_cold_2();
    return 4294955226;
  }

  if (!a3 || *a3 <= 0xFuLL)
  {
    fvfbintern_objHDCPGetReply_cold_1();
    return 4294955226;
  }

  HDCPDownstreamState = fvfbintern_objGetHDCPDownstreamState(a1, a2);
  if (HDCPDownstreamState)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    *a3 = 16;
  }

  return HDCPDownstreamState;
}

uint64_t fvfbintern_objGetProtectionOptions(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    fvfbintern_objGetProtectionOptions_cold_2();
    v5 = 4294955226;
    goto LABEL_9;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    v5 = v4;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
LABEL_13:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  if (qword_1ED4CB9C0 != -1)
  {
    FigVirtualFramebufferClientSourceScreenCreateIOS_cold_1();
  }

  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v5)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    goto LABEL_13;
  }

  *a2 = xpc_dictionary_get_uint64(0, "ProtOptions");
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  return v5;
}

void fvfbsrc_objFinalize(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage || *(DerivedStorage + 24))
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    __break(1u);
  }

  else
  {
    v3 = *(DerivedStorage + 40);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 40) = 0;
    }

    v4 = *(DerivedStorage + 48);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 48) = 0;
    }

    v5 = *(DerivedStorage + 56);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 56) = 0;
    }

    v6 = *(DerivedStorage + 32);
    if (v6)
    {
      dispatch_release(v6);
      *(DerivedStorage + 32) = 0;
    }
  }
}

CFStringRef fvfbsrc_objCopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = *DerivedStorage;
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v3, 0, @"<VirtualFramebufSource %p state: %d retainCount: %ld>", a1, v4, v5);
}

uint64_t fvfbsrc_objCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"sourceType", a2))
  {
    v8 = CFRetain(@"Screen");
    result = 0;
    *a4 = v8;
  }

  else if (*(DerivedStorage + 24))
  {
    FigVirtualDisplayProcessorGetCMBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {

      return v12(v11, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    fvfbsrc_objCopyProperty_cold_1();
    return 3758097097;
  }

  return result;
}

uint64_t fvfbsrc_objPlugProcessor(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvfbsrc_objPlugProcessor_block_invoke;
    block[3] = &unk_1E7494D48;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v16;
    dispatch_sync(v4, block);
    v5 = *(v17 + 6);
    if (v5)
    {
      v15 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v15;
      v11 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v20 = 136315650;
        v21 = "fvfbsrc_objPlugProcessor";
        v22 = 1024;
        v23 = 2380;
        v24 = 1024;
        v25 = v5;
        _os_log_send_and_compose_impl(v12, 0, v26, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v11, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v20, 24, LODWORD(block[0]));
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v17 + 6);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 4294955226;
    *(v17 + 6) = -12070;
  }

  _Block_object_dispose(&v16, 8);
  return v6;
}

uint64_t fvfbsrc_objUnplugProcessor(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvfbsrc_objUnplugProcessor_block_invoke;
    block[3] = &unk_1E7494D70;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v16;
    dispatch_sync(v4, block);
    v5 = *(v17 + 6);
    if (v5)
    {
      v15 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v15;
      v11 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v20 = 136315650;
        v21 = "fvfbsrc_objUnplugProcessor";
        v22 = 1024;
        v23 = 2400;
        v24 = 1024;
        v25 = v5;
        _os_log_send_and_compose_impl(v12, 0, v26, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v11, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v20, 24, LODWORD(block[0]));
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v17 + 6);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 4294955226;
    *(v17 + 6) = -12070;
  }

  _Block_object_dispose(&v16, 8);
  return v6;
}

uint64_t fvfbsrc_objStart(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbsrc_objStart_block_invoke;
  block[3] = &unk_1E7494D98;
  block[4] = &v10;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[7] = a2;
  dispatch_sync(v5, block);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t fvfbsrc_objStop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __fvfbsrc_objStop_block_invoke;
  v5[3] = &__block_descriptor_tmp_156;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

uint64_t fvfbsrc_objSuspend(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbsrc_objSuspend_block_invoke;
  block[3] = &unk_1E7494DE0;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a1;
  dispatch_sync(v3, block);
  v4 = 0;
  if (*(v9 + 6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t fvfbsrc_objResume(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbsrc_objResume_block_invoke;
  block[3] = &unk_1E7494E08;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a1;
  dispatch_sync(v3, block);
  v4 = 0;
  if (*(v9 + 6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

CFTypeRef *__fvfbsrc_objPlugProcessor_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (*v2 || v2[3])
  {
    *(*(result[4] + 1) + 24) = -12073;
  }

  else
  {
    result = CFRetain(result[6]);
    *(v1[5] + 3) = v1[6];
  }

  return result;
}

void __fvfbsrc_objUnplugProcessor_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*v2 && (v3 = *(v2 + 24), v3 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1[5] + 24) = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

uint64_t __fvfbsrc_objStart_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*v2 || !*(v2 + 24))
  {
    result = 4294955226;
  }

  else
  {
    result = _fvfbsrc_start(a1[6], a1[7]);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t _fvfbsrc_start(uint64_t a1, const __CFDictionary *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[1] = 0;
  v76 = 0;
  v74 = 0;
  cf[0] = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"clientName");
    v6 = CFDictionaryGetValue(a2, @"clientAuditToken");
  }

  else
  {
    Value = 0;
    v6 = 0;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  xdict = 0;
  v80 = 0;
  if (*(v7 + 16))
  {
    _fvfbsrc_start_cold_1();
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8 || (v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8))
  {
    v10 = v8;
    v78 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
    *(v7 + 16) = uint64;
    if (!uint64)
    {
      _fvfbsrc_start_cold_2();
      v10 = 4294955226;
      goto LABEL_10;
    }

    v10 = FigXPCRemoteClientAssociateObject();
    if (!v10)
    {
      goto LABEL_10;
    }

    v78 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  if (v10)
  {
    LODWORD(v80) = 0;
    LOBYTE(xdict) = 0;
    v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
LABEL_81:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_82;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v11 = *MEMORY[0x1E695E480];
  FigVirtualDisplayProcessorGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, @"SupportsRotation", v11, cf);
  }

  FigVirtualDisplayProcessorGetCMBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17)
  {
    v17(v16, @"ProtectionFlags", v11, &v71);
  }

  FigVirtualDisplayProcessorGetCMBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, @"VirtualDisplayMode", v11, &v74);
  }

  v21 = *(DerivedStorage + 24);
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v22)
  {
    v10 = 4294954514;
    goto LABEL_40;
  }

  v23 = v22(v21, &v73, &v72);
  if (v23)
  {
    v10 = v23;
LABEL_40:
    LODWORD(v80) = 0;
    LOBYTE(xdict) = 0;
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v39 = v80;
    v40 = xdict;
    if (os_log_type_enabled(v38, xdict))
    {
      v41 = v39;
    }

    else
    {
      v41 = v39 & 0xFFFFFFFE;
    }

    if (v41)
    {
      v81 = 136315650;
      v82 = "_fvfbsrc_start";
      v83 = 1024;
      v84 = 2475;
      v85 = 1024;
      v86 = v10;
      _os_log_send_and_compose_impl(v41, 0, v87, 128, &dword_1962D5000, v38, v40, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v81, 24);
    }

    goto LABEL_81;
  }

  v24 = FigXPCCreateBasicMessage();
  if (v24)
  {
    v10 = v24;
    LODWORD(v80) = 0;
    LOBYTE(xdict) = 0;
    v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v46 = v80;
    v47 = xdict;
    if (os_log_type_enabled(v45, xdict))
    {
      v48 = v46;
    }

    else
    {
      v48 = v46 & 0xFFFFFFFE;
    }

    if (v48)
    {
      v81 = 136315650;
      v82 = "_fvfbsrc_start";
      v83 = 1024;
      v84 = 2478;
      v85 = 1024;
      v86 = v10;
      _os_log_send_and_compose_impl(v48, 0, v87, 128, &dword_1962D5000, v45, v47, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v81, 24);
    }

    goto LABEL_81;
  }

  v25 = FigXPCMessageSetCFArray();
  if (v25)
  {
    v10 = v25;
    LODWORD(v80) = 0;
    LOBYTE(xdict) = 0;
    v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v50 = v80;
    v51 = xdict;
    if (os_log_type_enabled(v49, xdict))
    {
      v52 = v50;
    }

    else
    {
      v52 = v50 & 0xFFFFFFFE;
    }

    if (v52)
    {
      v81 = 136315650;
      v82 = "_fvfbsrc_start";
      v83 = 1024;
      v84 = 2481;
      v85 = 1024;
      v86 = v10;
      _os_log_send_and_compose_impl(v52, 0, v87, 128, &dword_1962D5000, v49, v51, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v81, 24);
    }

    goto LABEL_81;
  }

  v26 = FigXPCMessageSetCFArray();
  if (v26)
  {
    v10 = v26;
    LODWORD(v80) = 0;
    LOBYTE(xdict) = 0;
    v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v54 = v80;
    v55 = xdict;
    if (os_log_type_enabled(v53, xdict))
    {
      v56 = v54;
    }

    else
    {
      v56 = v54 & 0xFFFFFFFE;
    }

    if (v56)
    {
      v81 = 136315650;
      v82 = "_fvfbsrc_start";
      v83 = 1024;
      v84 = 2484;
      v85 = 1024;
      v86 = v10;
      _os_log_send_and_compose_impl(v56, 0, v87, 128, &dword_1962D5000, v53, v55, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v81, 24);
    }

    goto LABEL_81;
  }

  v27 = FigXPCMessageSetCFDictionary();
  if (v27)
  {
    v10 = v27;
    LODWORD(v80) = 0;
    LOBYTE(xdict) = 0;
    v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v58 = v80;
    v59 = xdict;
    if (os_log_type_enabled(v57, xdict))
    {
      v60 = v58;
    }

    else
    {
      v60 = v58 & 0xFFFFFFFE;
    }

    if (v60)
    {
      v81 = 136315650;
      v82 = "_fvfbsrc_start";
      v83 = 1024;
      v84 = 2487;
      v85 = 1024;
      v86 = v10;
      _os_log_send_and_compose_impl(v60, 0, v87, 128, &dword_1962D5000, v57, v59, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v81, 24);
    }

    goto LABEL_81;
  }

  v28 = FigXPCMessageSetCFString();
  if (v28)
  {
    v10 = v28;
    LODWORD(v80) = 0;
    LOBYTE(xdict) = 0;
    v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v62 = v80;
    v63 = xdict;
    if (os_log_type_enabled(v61, xdict))
    {
      v64 = v62;
    }

    else
    {
      v64 = v62 & 0xFFFFFFFE;
    }

    if (v64)
    {
      v81 = 136315650;
      v82 = "_fvfbsrc_start";
      v83 = 1024;
      v84 = 2490;
      v85 = 1024;
      v86 = v10;
      _os_log_send_and_compose_impl(v64, 0, v87, 128, &dword_1962D5000, v61, v63, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v81, 24);
    }

    goto LABEL_81;
  }

  v29 = FigXPCMessageSetCFData();
  if (v29)
  {
    v10 = v29;
    LODWORD(v80) = 0;
    LOBYTE(xdict) = 0;
    v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v66 = v80;
    v67 = xdict;
    if (os_log_type_enabled(v65, xdict))
    {
      v68 = v66;
    }

    else
    {
      v68 = v66 & 0xFFFFFFFE;
    }

    if (v68)
    {
      v81 = 136315650;
      v82 = "_fvfbsrc_start";
      v83 = 1024;
      v84 = 2493;
      v85 = 1024;
      v86 = v10;
      _os_log_send_and_compose_impl(v68, 0, v87, 128, &dword_1962D5000, v65, v67, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v81, 24);
    }

    goto LABEL_81;
  }

  xpc_dictionary_set_BOOL(v76, "Rotation", cf[0] == *MEMORY[0x1E695E4D0]);
  xpc_dictionary_set_BOOL(v76, "SuspendOnStart", 0);
  v30 = v76;
  SInt64 = FigCFNumberGetSInt64();
  xpc_dictionary_set_uint64(v30, "ProtFlags", SInt64);
  v32 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  *DerivedStorage = 2;
  v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v10)
  {
    LODWORD(v80) = 0;
    LOBYTE(xdict) = 0;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v35 = v80;
    v36 = xdict;
    if (os_log_type_enabled(v34, xdict))
    {
      v37 = v35;
    }

    else
    {
      v37 = v35 & 0xFFFFFFFE;
    }

    if (v37)
    {
      v81 = 136315650;
      v82 = "_fvfbsrc_start";
      v83 = 1024;
      v84 = 2504;
      v85 = 1024;
      v86 = v10;
      _os_log_send_and_compose_impl(v37, 0, v87, 128, &dword_1962D5000, v34, v36, "<<<< FigVirtualFramebufferClientServer >>>> %s: %d: got error %d", &v81, 24);
    }

    goto LABEL_81;
  }

LABEL_82:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v10)
  {
    v69 = *(DerivedStorage + 16);
    if (v69)
    {
      fvfb_sendSyncMessage(*(DerivedStorage + 8), 1937010544, v69);
      _fvfbsrc_stop(a1);
    }
  }

  return v10;
}

uint64_t fvfb_sendSyncMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = FigXPCCreateBasicMessage();
  if (v3)
  {
    v4 = v3;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_6:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_3;
  }

  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    goto LABEL_6;
  }

LABEL_3:
  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

void _fvfbsrc_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    FigXPCRemoteClientDisassociateObject();
    *(DerivedStorage + 16) = 0;
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 40));
  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 48) = 0;
  }

  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 56) = 0;
  }

  *(DerivedStorage + 64) = 0;
  *DerivedStorage = 0;
}

void __fvfbsrc_objStop_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*v1)
  {
    fvfb_sendSyncMessage(*(v1 + 8), 1937010544, *(v1 + 16));
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    _fvfbsrc_stop(*(a1 + 40));
  }
}

void __fvfbsrc_objSuspend_block_invoke(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (*v2)
  {
    if (*v2 == 2)
    {
      *(*(a1[4] + 8) + 24) = fvfb_sendSyncMessage(*(v2 + 8), 1937077104, *(v2 + 16));
      if (!*(*(a1[4] + 8) + 24))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 = a1[5];
        v4[16] = 0;
        *v4 = 1;
      }
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __fvfbsrc_objResume_block_invoke(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (*v2 == 1)
  {
    *(*(a1[4] + 8) + 24) = fvfb_sendSyncMessage(*(v2 + 8), 1919251309, *(v2 + 16));
    if (!*(*(a1[4] + 8) + 24))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *a1[5] = 2;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

double __fvfb_getClient_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FVFBServerDied");
  FigCFDictionarySetInt32();
  v2 = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v2)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void fvfbsrc_handleDeadConnection(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v3 = *(DerivedStorage + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __fvfbsrc_handleDeadConnection_block_invoke;
  v4[3] = &__block_descriptor_tmp_165_0;
  v4[4] = DerivedStorage;
  v4[5] = a1;
  dispatch_async(v3, v4);
}

uint64_t fvfbsrc_handleServerMessage(uint64_t a1, xpc_object_t xdict)
{
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  xdicta = xpc_dictionary_create_reply(xdict);
  if (xdicta)
  {
    FigXPCMessageGetOpCode();
    if (dword_1ED4CBED0 >= 4)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED4CBED0 >= 4)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    xpc_dictionary_set_int64(xdicta, *MEMORY[0x1E6961590], -536870199);
    xpc_connection_send_message(remote_connection, xdicta);
  }

  else
  {
    fvfbsrc_handleServerMessage_cold_15();
  }

  FigXPCRelease();
  return 3758097097;
}

double OUTLINED_FUNCTION_0_182(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_1_171@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, char a7, char a8)
{
  *(v8 - 40) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_19_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_20_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFRunLoopSourceRef OUTLINED_FUNCTION_40_21(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CFRunLoopSourceContext *context)
{

  return CFRunLoopSourceCreate(v27, 0, &context);
}

BOOL OUTLINED_FUNCTION_41_25(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_44_22(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_type_t type, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigVideoCompositorPropertiesGetRenderDimensions(const __CFDictionary *a1, CGSize *a2)
{
  size.width = 0.0;
  size.height = 0.0;
  Value = CFDictionaryGetValue(a1, @"RenderDimensions");
  if (!Value || (v4 = Value, v5 = CFGetTypeID(Value), v5 != CFDictionaryGetTypeID()))
  {
    FigVideoCompositorPropertiesGetRenderDimensions_cold_2(&v8);
    return v8;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v4, &size))
  {
    FigVideoCompositorPropertiesGetRenderDimensions_cold_1(&v8);
    return v8;
  }

  result = 0;
  *a2 = size;
  return result;
}

uint64_t FigVideoCompositorSetDestinationPixelBufferColorProperties(__CVBuffer *a1, CFDictionaryRef theDict, const __CFArray *a3)
{
  Value = CFDictionaryGetValue(theDict, @"DestinationPixelBufferDesiredColorPrimaries");
  if (Value)
  {
    v7 = CFRetain(Value);
  }

  else
  {
    v7 = 0;
  }

  v8 = CFDictionaryGetValue(theDict, @"DestinationPixelBufferDesiredTransferFunction");
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = CFDictionaryGetValue(theDict, @"DestinationPixelBufferDesiredYCbCrMatrix");
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  Count = CFArrayGetCount(a3);
  v13 = MEMORY[0x1E6965D88];
  if (Count < 1)
  {
    v18 = 0;
    v17 = 0;
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v14 = CFArrayGetCount(a3);
  ValueAtIndex = CFArrayGetValueAtIndex(a3, v14 - 1);
  SourcePixelBuffer = FigVCLayerDefinitionGetSourcePixelBuffer(ValueAtIndex);
  v17 = SourcePixelBuffer;
  v18 = SourcePixelBuffer != 0;
  if (!v7 && SourcePixelBuffer)
  {
    v7 = CVBufferCopyAttachment(SourcePixelBuffer, *v13, 0);
    v18 = 1;
  }

  if (!v7)
  {
LABEL_29:
    v7 = CFRetain(*MEMORY[0x1E6965DB8]);
  }

LABEL_15:
  v19 = MEMORY[0x1E6965F30];
  if (v9 == 0 && v18)
  {
    v9 = CVBufferCopyAttachment(v17, *MEMORY[0x1E6965F30], 0);
  }

  if (!v9)
  {
    v9 = CFRetain(*MEMORY[0x1E6965F50]);
  }

  v20 = MEMORY[0x1E6965F98];
  if (v11 == 0 && v18)
  {
    v11 = CVBufferCopyAttachment(v17, *MEMORY[0x1E6965F98], 0);
  }

  if (!v11)
  {
    v11 = CFRetain(*MEMORY[0x1E6965FD0]);
  }

  v21 = *MEMORY[0x1E6965D00];
  if (!v18 || (v22 = CVBufferCopyAttachment(v17, *MEMORY[0x1E6965D00], 0)) == 0)
  {
    v22 = CFRetain(*MEMORY[0x1E6965D30]);
  }

  CVBufferSetAttachment(a1, *v13, v7, kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(a1, *v19, v9, kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(a1, *v20, v11, kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(a1, v21, v22, kCVAttachmentMode_ShouldPropagate);
  v23 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (v23)
  {
    v24 = v23;
    ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v23);
    CFRelease(v24);
  }

  else
  {
    ColorSpaceFromAttachments = 0;
  }

  CVBufferSetAttachment(a1, *MEMORY[0x1E6965CE8], ColorSpaceFromAttachments, kCVAttachmentMode_ShouldPropagate);
  CGColorSpaceRelease(ColorSpaceFromAttachments);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return 0;
}

uint64_t FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(const __CFDictionary *a1, _DWORD *a2, _OWORD *a3, void *a4)
{
  size.width = 0.0;
  size.height = 0.0;
  v35 = 1.0;
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  *&v34.a = *MEMORY[0x1E695EFD0];
  *&v34.c = v8;
  *&v34.tx = *(MEMORY[0x1E695EFD0] + 32);
  v33 = 0;
  Value = CFDictionaryGetValue(a1, @"RenderDimensions");
  if (!Value || (v10 = Value, v11 = CFGetTypeID(Value), v11 != CFDictionaryGetTypeID()))
  {
    FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_5(&v30);
    return LODWORD(v30.a);
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v10, &size))
  {
    FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_1(&v30);
    return LODWORD(v30.a);
  }

  v12 = CFDictionaryGetValue(a1, @"RenderPixelAspectRatio");
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v14 = *MEMORY[0x1E6965EF0];
  if (!CFDictionaryGetValue(v12, *MEMORY[0x1E6965EF0]) || (v15 = CFDictionaryGetValue(v13, v14), v16 = CFGetTypeID(v15), v16 != CFNumberGetTypeID()))
  {
    FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_3(&v30);
    return LODWORD(v30.a);
  }

  v17 = *MEMORY[0x1E6965F00];
  if (!CFDictionaryGetValue(v13, *MEMORY[0x1E6965F00]) || (v18 = CFDictionaryGetValue(v13, v17), v19 = CFGetTypeID(v18), v19 != CFNumberGetTypeID()))
  {
    FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_2(&v30);
    return LODWORD(v30.a);
  }

LABEL_9:
  v20 = CFDictionaryGetValue(a1, @"RenderEdgeProcessingPixels");
  v21 = v20;
  if (v20)
  {
    v22 = CFGetTypeID(v20);
    if (v22 != CFArrayGetTypeID())
    {
      FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_4(&v30);
      return LODWORD(v30.a);
    }
  }

  FigCFDictionaryGetFloat32IfPresent();
  v31 = 0;
  v32 = 0;
  v23 = FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(v13, v21, &v32, &v31, &v34, &v33, size.width, size.height, v35);
  if (v23)
  {
    v26 = v33;
  }

  else
  {
    CGAffineTransformMakeScale(&t2, v35, v35);
    v28 = v34;
    CGAffineTransformConcat(&v30, &v28, &t2);
    v34 = v30;
    if (a2)
    {
      v24 = v31;
      *a2 = v32;
      a2[1] = v24;
    }

    if (a3)
    {
      v25 = *&v34.c;
      *a3 = *&v34.a;
      a3[1] = v25;
      a3[2] = *&v34.tx;
    }

    v26 = v33;
    if (a4)
    {
      v23 = 0;
      *a4 = v33;
      return v23;
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v23;
}

uint64_t FigVideoCompositorCreateDesiredSourcePixelBufferAttributes(unsigned int *a1, CFIndex a2, CFMutableDictionaryRef *a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigVideoCompositorCreateDesiredSourcePixelBufferAttributes_cold_2(&v15);
    return v15;
  }

  v8 = Mutable;
  v9 = CFArrayCreateMutable(v6, a2, MEMORY[0x1E695E9C0]);
  if (!v9)
  {
    FigVideoCompositorCreateDesiredSourcePixelBufferAttributes_cold_1(&v14);
    v12 = v14;
LABEL_10:
    CFRelease(v8);
    return v12;
  }

  for (i = v9; a2; --a2)
  {
    ++a1;
    FigCFArrayAppendInt32();
  }

  CFDictionarySetValue(v8, *MEMORY[0x1E6966130], i);
  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  CFDictionarySetValue(v8, *MEMORY[0x1E69660D8], IOSurfacePropertiesDictionary);
  if (a3)
  {
    *a3 = v8;
    v8 = 0;
  }

  if (IOSurfacePropertiesDictionary)
  {
    CFRelease(IOSurfacePropertiesDictionary);
  }

  CFRelease(i);
  v12 = 0;
  result = 0;
  if (v8)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t FigWebVTTFormatWriterCreateWithByteStream(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    FigWebVTTFormatWriterCreateWithByteStream_cold_3(v15);
    return v15[0];
  }

  if (!a4)
  {
    FigWebVTTFormatWriterCreateWithByteStream_cold_2(v15);
    return v15[0];
  }

  if (FigCFDictionaryGetStringValue() && !FigCFEqual())
  {
    FigWebVTTFormatWriterCreateWithByteStream_cold_1(v15);
    return v15[0];
  }

  FigFormatWriterGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = 0;
  if (!v7)
  {
    FigFormatWriterGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v10 = DerivedStorage;
      v7 = ffw_vtt_buildPipeline(a1, 0, a2);
      v8 = 0;
      if (!v7)
      {
        *v10 = 0;
        v10[12] = 0;
        *a4 = 0;
        return v7;
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v14, v15[1]);
      v7 = v12;
      v8 = cf;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t ffw_vtt_buildPipeline(uint64_t a1, uint64_t a2, const void *a3)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v7 = FigCaptionTimelineGeneratorCreate(a1, ffw_vtt_WriteFigCaptions, a2, &v14);
  if (v7 || (v7 = FigVTTSerializerCreateForByteStream(a1, a3, &v15), v7) || (v7 = FigVTTDocumentWriterCreateForVTT(a1, v15, &cf), v7))
  {
    v8 = v7;
  }

  else
  {
    v8 = FigVTTCaptionWriterCreateForDocument(a1, cf, &v17);
    if (!v8)
    {
      v10 = cf;
      v9 = v17;
      cf = 0;
      v17 = 0;
      DerivedStorage[1] = v9;
      DerivedStorage[2] = v10;
      v12 = v14;
      v11 = v15;
      v14 = 0;
      v15 = 0;
      DerivedStorage[3] = v11;
      DerivedStorage[4] = v12;
      goto LABEL_6;
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v8;
}

uint64_t ffw_vtt_createByteStreamBasedOnBlockBuffer(const __CFAllocator *a1, CFTypeRef *a2, CMBlockBufferRef *a3)
{
  blockBufferOut = 0;
  v5 = CMBlockBufferCreateEmpty(a1, 0, 0, &blockBufferOut);
  if (v5)
  {
    WritableForBlockBuffer = v5;
  }

  else
  {
    WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
    if (!WritableForBlockBuffer)
    {
      *a2 = 0;
      *a3 = blockBufferOut;
      return WritableForBlockBuffer;
    }
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return WritableForBlockBuffer;
}

uint64_t ffw_vtt_Invalidate()
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigVTTCaptionWriterInvalidate(DerivedStorage[1]);
  FigVTTDocumentWriterInvalidate(DerivedStorage[2]);
  FigVTTSerializerInvalidate(DerivedStorage[3]);
  return 0;
}

void ffw_vtt_Finalize(uint64_t a1)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ffw_vtt_releasePipeline();
  v2 = DerivedStorage[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[15];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[16];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t ffw_vtt_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ffw_vtt_CopyProperty_cold_2(&v12);
    return LODWORD(v12.value);
  }

  if (!a4)
  {
    ffw_vtt_CopyProperty_cold_1(&v12);
    return LODWORD(v12.value);
  }

  v8 = DerivedStorage;
  if (CFEqual(@"PreferredOutputSegmentInterval", a2))
  {
    *&v12.value = *(v8 + 72);
    v9 = *(v8 + 88);
  }

  else
  {
    if (!CFEqual(@"InitialSegmentStartTime", a2))
    {
      return 4294954666;
    }

    *&v12.value = *(v8 + 96);
    v9 = *(v8 + 112);
  }

  v12.epoch = v9;
  v10 = CMTimeCopyAsDictionary(&v12, a3);
  result = 0;
  *a4 = v10;
  return result;
}

uint64_t ffw_vtt_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ffw_vtt_SetProperty_cold_3(&v10);
    return LODWORD(v10.value);
  }

  v6 = DerivedStorage;
  if (CFEqual(@"PreferredOutputSegmentInterval", a2))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v10, a3);
        result = 0;
        v6[3] = v10;
        return result;
      }
    }

    ffw_vtt_SetProperty_cold_1(&v10);
    return LODWORD(v10.value);
  }

  if (CFEqual(@"InitialSegmentStartTime", a2))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v10, a3);
        result = 0;
        v6[4] = v10;
        return result;
      }
    }

    ffw_vtt_SetProperty_cold_2(&v10);
    return LODWORD(v10.value);
  }

  return 4294954666;
}

void ffw_vtt_releasePipeline()
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[4];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[4] = 0;
  }

  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[3] = 0;
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }
}

uint64_t ffw_vtt_AddTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1952807028)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (*(DerivedStorage + 48))
      {
        ffw_vtt_AddTrack_cold_2(&v10);
        return v10;
      }

      else
      {
        result = 0;
        *(v7 + 48) = 1;
        *a4 = 1;
      }
    }

    else
    {
      ffw_vtt_AddTrack_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    ffw_vtt_AddTrack_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t ffw_vtt_CopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v10 = DerivedStorage;
      if (*(DerivedStorage + 48) == a2)
      {
        if (CFEqual(@"LanguageTag", a3) || CFEqual(@"ExtendedLanguageTag", a3))
        {
          v11 = *(v10 + 16);

          return FigVTTDocumentWriterCopyProperty(v11, @"languageIdentifier", a4, a5);
        }

        else
        {
          return 4294954512;
        }
      }

      else
      {
        ffw_vtt_CopyTrackProperty_cold_1(&v13);
        return v13;
      }
    }

    else
    {
      ffw_vtt_CopyTrackProperty_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    ffw_vtt_CopyTrackProperty_cold_3(&v15);
    return v15;
  }
}

uint64_t ffw_vtt_SetTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a2)
  {
    if (a3)
    {
      if (a4)
      {
        v8 = DerivedStorage;
        if (CFEqual(@"LanguageTag", a3) || CFEqual(@"ExtendedLanguageTag", a3))
        {
          v9 = *(v8 + 16);

          return FigVTTDocumentWriterSetProperty(v9, @"languageIdentifier", a4);
        }

        else
        {
          return 4294954512;
        }
      }

      else
      {
        ffw_vtt_SetTrackProperty_cold_2(&v12);
        return v12;
      }
    }

    else
    {
      ffw_vtt_SetTrackProperty_cold_3(&v13);
      return v13;
    }
  }

  else
  {
    ffw_vtt_SetTrackProperty_cold_1(&v11);
    return v11;
  }
}

uint64_t ffw_vtt_createCaptionGroupConverter(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v7[0] = ffw_vtt_CaptionGroupConverterCallback;
  v7[1] = a2;
  v4 = FigWebVTTCaptionGroupConverterFromSampleBufferCreate(v7, a1, &cf);
  if (v4)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v4;
}

uint64_t ffw_vtt_CaptionGroupConverterCallback(uint64_t a1, __int128 *a2, uint64_t a3)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (a1)
  {
    v7 = DerivedStorage;
    v11 = *a2;
    v12 = *(a2 + 2);
    v8 = FigSampleBufferCreateForCaptionGroup();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = FigCaptionTimelineGeneratorAddSampleBuffer(*(v7 + 32), v13);
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_4;
  }

  ffw_vtt_CaptionGroupConverterCallback_cold_1(&v11);
  v9 = v11;
  if (v11)
  {
LABEL_4:
    ffw_vtt_postErrorOccurredNotification(a3, v9);
  }

LABEL_5:
  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

void ffw_vtt_postErrorOccurredNotification(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (a2 == -17887)
  {
    valuePtr = -17540;
  }

  v2 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (cf)
  {
    v3 = CFDictionaryCreate(v2, kFigFormatWriterNotificationParameter_OSStatus, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v3 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

CMTime *ffw_vtt_getSampleBufferOutputPresentationEndTime@<X0>(opaqueCMSampleBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputPresentationTimeStamp(&v8, a1);
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetOutputDuration(&v7, a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  lhs = v8;
  v5 = v7;
  return CMTimeAdd(a2, &lhs, &v5);
}

uint64_t ffw_vtt_WriteFigCaptions(const __CFArray *a1, CMTime *a2, uint64_t a3)
{
  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E6960C98];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      v13(&v26, ValueAtIndex);
    }

    else
    {
      v14 = v11[1];
      v26 = *v11;
      v27 = v14;
      v28 = v11[2];
    }

    v22 = v26;
    *&v23 = v27;
    time2 = *a2;
    if (!CMTimeCompare(&v22, &time2))
    {
      if (v29)
      {
        CFRelease(v29);
        v29 = 0;
      }

      FigCaptionGetCMBaseObject();
      v16 = v15;
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v17)
      {
        v20 = 4294954514;
        goto LABEL_16;
      }

      v18 = v17(v16, @"CaptionData", v10, &v29);
      if (v18)
      {
        break;
      }

      v19 = *(DerivedStorage + 8);
      v22 = v26;
      v23 = v27;
      v24 = v28;
      v18 = FigVTTCaptionWriterAddCaption(v19, v29, &v22);
      if (v18)
      {
        break;
      }
    }

    if (v8 == ++v9)
    {
      v20 = 0;
      goto LABEL_17;
    }
  }

  v20 = v18;
LABEL_16:
  ffw_vtt_postErrorOccurredNotification(a3, v20);
LABEL_17:
  if (v29)
  {
    CFRelease(v29);
  }

  return v20;
}

uint64_t OUTLINED_FUNCTION_2_164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time2, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *time1, __int128 a10, uint64_t a11, __int128 time2a, uint64_t time2_16, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, __int128 a20, uint64_t a21)
{
  time2a = a20;
  time2_16 = a21;

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_5_118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *lhs, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 lhsa, uint64_t lhs_16)
{
  lhsa = *(v20 + 136);
  lhs_16 = *(v20 + 152);
  *v21 = *(v20 + 72);
  *(v22 - 96) = *(v20 + 88);

  return CMTimeAdd(&a13, &lhsa, (v22 - 112));
}

uint64_t OUTLINED_FUNCTION_7_90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time1, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *time2, __int128 a10, uint64_t a11, __int128 time1a, uint64_t time1_16, uint64_t a14, uint64_t a15, uint64_t a16, __int128 time2a, uint64_t time2_16, __int128 a19, uint64_t a20)
{
  time1a = *(v20 + 136);
  time1_16 = *(v20 + 152);
  time2a = a19;
  time2_16 = a20;

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_12_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a22 = 0;
  a23 = 0;
  a24 = 0;

  return ffw_vtt_getSampleBufferOutputPresentationEndTime(v24, &a22);
}

CMTime *OUTLINED_FUNCTION_13_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTimeRange *range, CMTime *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t rangea, uint64_t range_8, uint64_t range_16, uint64_t range_24, uint64_t range_32, uint64_t range_40, uint64_t a19)
{

  return CMTimeRangeGetEnd(&a19, &rangea);
}

uint64_t registerVideoReceiverConfigurationSchedulerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerCreate(uint64_t a1, NSObject *a2, OpaqueCMTimebase *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    FigVideoReceiverConfigurationSchedulerCreate_cold_5(v23);
    return v23[0];
  }

  if (!a5)
  {
    FigVideoReceiverConfigurationSchedulerCreate_cold_4(a1, a2, a3, a4, 0, a6, a7, a8, v21, v22, v23[0], v23[1]);
    return 0;
  }

  if (_MergedGlobals_125 != -1)
  {
    FigVideoReceiverConfigurationSchedulerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVideoReceiverConfigurationSchedulerCreate_cold_3(&v22);
    return v22;
  }

  v12 = Instance;
  *(Instance + 32) = 0;
  v13 = FigSimpleMutexCreate();
  *(v12 + 40) = v13;
  if (!v13)
  {
    v20 = 264;
LABEL_22:
    FigVideoReceiverConfigurationSchedulerCreate_cold_2(v20, &v21 + 1);
    v18 = HIDWORD(v21);
    goto LABEL_23;
  }

  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a2);
  *(v12 + 16) = v14;
  if (!v14)
  {
    v20 = 267;
    goto LABEL_22;
  }

  v15 = FigReentrantMutexCreate();
  *(v12 + 88) = v15;
  if (!v15)
  {
    v20 = 270;
    goto LABEL_22;
  }

  v16 = FigSimpleMutexCreate();
  *(v12 + 112) = v16;
  if (!v16)
  {
    v20 = 273;
    goto LABEL_22;
  }

  v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v17)
  {
    v20 = 276;
    goto LABEL_22;
  }

  dispatch_set_context(*(v12 + 16), v17);
  dispatch_set_finalizer_f(*(v12 + 16), configurationScheduler_finalizeConfigurationSourceTimer);
  dispatch_source_set_timer(*(v12 + 16), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(v12 + 16), configurationScheduler_timerSourceActivation);
  dispatch_activate(*(v12 + 16));
  v18 = CMTimebaseAddTimerDispatchSource(a3, *(v12 + 16));
  if (v18)
  {
LABEL_23:
    CFRelease(v12);
    return v18;
  }

  *(v12 + 24) = CFRetain(a3);
  *a5 = v12;
  return v18;
}

void configurationScheduler_finalizeConfigurationSourceTimer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime(uint64_t a1, const void *a2, __int128 *a3)
{
  if (!a1)
  {
    FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_4(&v28);
    return v28;
  }

  if (!a2)
  {
    FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_3(&v28);
    return v28;
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_2(&v28);
    return v28;
  }

  v6 = (a1 + 40);
  FigSimpleMutexLock();
  v28 = *a3;
  v29 = *(a3 + 2);
  v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x102004060DBCA02uLL);
  v8 = v7;
  if (v7)
  {
    *(v7 + 8) = v28;
    *(v7 + 3) = v29;
    *v7 = CFRetain(a2);
  }

  else if ((FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_1(&v28, v6, &time1) & 1) == 0)
  {
    return LODWORD(time1.value);
  }

  v11 = *(v6 - 1);
  v10 = v6 - 1;
  v9 = v11;
  if (v11)
  {
    time1 = *a3;
    v12 = *(v9 + 8);
    v26.epoch = *(v9 + 24);
    *&v26.value = v12;
    v13 = CMTimeCompare(&time1, &v26);
    v14 = *v10;
    if (v13 >= 1)
    {
      while (v14)
      {
        v15 = v14;
        v14 = *(v14 + 32);
        if (!v14)
        {
          v10 = (v15 + 32);
          goto LABEL_14;
        }

        time1 = *a3;
        v16 = *(v14 + 8);
        v26.epoch = *(v14 + 24);
        *&v26.value = v16;
        if (CMTimeCompare(&time1, &v26) <= 0)
        {
          v17 = *(v15 + 32);
          v10 = (v15 + 32);
          v14 = v17;
          goto LABEL_14;
        }
      }

      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  *(v8 + 4) = v14;
  *v10 = v8;
  v8 = 0;
LABEL_15:
  FigSimpleMutexUnlock();
  configurationScheduler_ensureTimerIsScheduledForNextActivation(a1, v18, v19, v20, v21, v22, v23, v24);
  if (v8)
  {
    CFRelease(*v8);
    free(v8);
  }

  return 0;
}

uint64_t configurationScheduler_ensureTimerIsScheduledForNextActivation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = **&MEMORY[0x1E6960C70];
  if (FigVideoReceiverConfigurationSchedulerFindEarliestTimeToActivate(a1, &v15, a3, a4, a5, a6, a7, a8))
  {
    FigSimpleMutexLock();
    if (*(a1 + 60))
    {
      lhs = v15;
      v12 = *(a1 + 48);
      CMTimeSubtract(&fireTime, &lhs, &v12);
      v15 = fireTime;
    }

    FigSimpleMutexUnlock();
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  fireTime = v15;
  return CMTimebaseSetTimerDispatchSourceNextFireTime(v9, v10, &fireTime, 1u);
}

uint64_t FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime(uint64_t a1, uint64_t a2, CMTime *a3, void *a4)
{
  if (!a1)
  {
    FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime_cold_2(&time1);
    return LODWORD(time1.value);
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime_cold_1(&time1);
    return LODWORD(time1.value);
  }

  FigSimpleMutexLock();
  v8 = *(a1 + 32);
  do
  {
    if (!v8)
    {
      FigSimpleMutexUnlock();
      goto LABEL_18;
    }

    v9 = v8;
    v8 = *(v8 + 32);
    if (!v8)
    {
      break;
    }

    time1 = *a2;
    v10 = *(v8 + 8);
    v14.epoch = *(v8 + 24);
    *&v14.value = v10;
  }

  while ((CMTimeCompare(&time1, &v14) & 0x80000000) == 0);
  if (*v9)
  {
    v11 = CFRetain(*v9);
  }

  else
  {
    v11 = 0;
  }

  time1 = *(v9 + 8);
  FigSimpleMutexUnlock();
  if (v11)
  {
    if (a4)
    {
      *a4 = v11;
      v11 = 0;
    }

    if (a3)
    {
      *a3 = time1;
    }

    if (v11)
    {
      CFRelease(v11);
    }

    return 0;
  }

LABEL_18:
  if (a3)
  {
    result = 0;
    v13 = MEMORY[0x1E6960C70];
    *&a3->value = *MEMORY[0x1E6960C70];
    a3->epoch = *(v13 + 16);
    return result;
  }

  return 0;
}

uint64_t FigVideoReceiverConfigurationSchedulerCopyAllConfigurations(uint64_t a1, CFAllocatorRef allocator, __CFArray **a3)
{
  if (a1)
  {
    if (a3)
    {
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v6 = Mutable;
        FigSimpleMutexLock();
        for (i = *(a1 + 32); i; i = *(i + 32))
        {
          CFArrayAppendValue(v6, *i);
        }

        FigSimpleMutexUnlock();
        result = 0;
        *a3 = v6;
      }

      else
      {
        FigVideoReceiverConfigurationSchedulerCopyAllConfigurations_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      FigVideoReceiverConfigurationSchedulerCopyAllConfigurations_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerCopyAllConfigurations_cold_3(&v11);
    return v11;
  }

  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerPruneConfigurationsBeforeHostTime(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if ((*(a2 + 12) & 1) == 0)
    {
      v5 = MEMORY[0x1E6960C88];
      *a2 = *MEMORY[0x1E6960C88];
      *(a2 + 16) = *(v5 + 16);
    }

    *&v17.value = *a2;
    v17.epoch = *(a2 + 16);
    FigSimpleMutexLock();
    while (1)
    {
      v6 = a1[4];
      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 8);
      time1.epoch = *(v6 + 24);
      *&time1.value = v7;
      time2 = v17;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        if (!a3)
        {
          break;
        }

        v8 = *(v6 + 8);
        time1.epoch = *(v6 + 24);
        *&time1.value = v8;
        time2 = v17;
        if (CMTimeCompare(&time1, &time2))
        {
          break;
        }
      }

      a1[4] = *(a1[4] + 32);
      configurationScheduler_announceRemovalOfConfiguration(a1, *v6);
      CFRelease(*v6);
      free(v6);
    }

    FigSimpleMutexUnlock();
    configurationScheduler_ensureTimerIsScheduledForNextActivation(a1, v9, v10, v11, v12, v13, v14, v15);
    return 0;
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerPruneConfigurationsBeforeHostTime_cold_1(&time1);
    return LODWORD(time1.value);
  }
}

uint64_t FigVideoReceiverConfigurationSchedulerReset(void *a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    while (1)
    {
      v2 = a1[4];
      if (!v2)
      {
        break;
      }

      a1[4] = v2[4];
      configurationScheduler_announceRemovalOfConfiguration(a1, *v2);
      CFRelease(*v2);
      free(v2);
    }

    FigSimpleMutexUnlock();
    configurationScheduler_ensureTimerIsScheduledForNextActivation(a1, v3, v4, v5, v6, v7, v8, v9);
    return 0;
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerReset_cold_1(&v11);
    return v11;
  }
}

void configurationScheduler_announceRemovalOfConfiguration(void *a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = a1[12];
  if (v4)
  {
    if (!a1[13])
    {
      v6 = 0;
      v4(a1, a2, 0);
LABEL_9:
      FigSimpleMutexUnlock();
      if (v6)
      {

        CFRelease(v6);
      }

      return;
    }

    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      (a1[12])(a1, a2, v5);
      goto LABEL_9;
    }
  }

  FigSimpleMutexUnlock();
}

uint64_t FigVideoReceiverConfigurationSchedulerFindEarliestTimeToActivate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      v10 = *(a1 + 32);
      FigSimpleMutexUnlock();
      if (v10)
      {
        v11 = *(v10 + 8);
        *(a2 + 16) = *(v10 + 24);
        *a2 = v11;
        return 1;
      }
    }

    else
    {
      FigVideoReceiverConfigurationSchedulerFindEarliestTimeToActivate_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14), v15);
    }
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerFindEarliestTimeToActivate_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14), v15);
  }

  return 0;
}

uint64_t FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v8 = *(a1 + 80);
    if (a4)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a2 + 16);
    *(a1 + 48) = *a2;
    *(a1 + 72) = a3;
    *(a1 + 80) = v9;
    *(a1 + 64) = v10;
    FigSimpleMutexUnlock();
    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack_cold_1(&v12);
    return v12;
  }
}

uint64_t FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  v6 = a1[13];
  if (a3)
  {
    v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (!v7)
    {
      FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback_cold_1(&v10);
      v8 = v10;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  a1[12] = a2;
  a1[13] = v7;
LABEL_7:
  FigSimpleMutexUnlock();
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

double configurationScheduler_init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void configurationScheduler_finalize(uint64_t a1)
{
  FigVideoReceiverConfigurationSchedulerReset(a1);
  if (*(a1 + 40))
  {
    FigSimpleMutexDestroy();
    *(a1 + 40) = 0;
  }

  CMTimebaseRemoveTimerDispatchSource(*(a1 + 24), *(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  *(a1 + 72) = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 88))
  {
    FigSimpleMutexDestroy();
    *(a1 + 88) = 0;
  }

  if (*(a1 + 112))
  {
    FigSimpleMutexDestroy();
    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 104) = 0;
  }

  *(a1 + 96) = 0;
}

CFStringRef configurationScheduler_copyFormattingDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVideoReceiverConfigurationScheduler %p | retainCount %d>", a1, v3);
}

CFStringRef configurationScheduler_copyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVideoReceiverConfigurationScheduler %p | retainCount %d>", a1, v3);
}

uint64_t RegisterFPSTimelineConverterType()
{
  result = _CFRuntimeRegisterClass();
  sFPSTimelineConverterTypeID = result;
  return result;
}

double fpstc_L2TimeToL3Locked@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 2);
  v6 = *(a1 + 32);
  if (v6)
  {
    Length = CFDataGetLength(v6);
    if (Length >= 1)
    {
      CFDataGetBytePtr(*(a1 + 32));
    }

    if (Length >= 0x60)
    {
      CMSpeedRampMapTimeFromSourceToTarget();
      *&v5 = v9;
      *a3 = v9;
      *(a3 + 16) = v10;
    }
  }

  return *&v5;
}

uint64_t fpstc_L3TimeToL2Locked@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  *a3 = *a2;
  a3[2] = *(a2 + 2);
  result = *(a1 + 32);
  if (result)
  {
    result = CFDataGetLength(result);
    v5 = result;
    if (result >= 1)
    {
      result = CFDataGetBytePtr(*(a1 + 32));
    }

    if (v5 >= 0x60)
    {
      return CMSpeedRampMapTimeFromTargetToSource();
    }
  }

  return result;
}

double fpstc_L3TimeToL4Locked@<D0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  v5 = *MEMORY[0x1E6960C70];
  *a3 = *MEMORY[0x1E6960C70];
  *(a3 + 16) = *(v4 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    v9 = *a2;
    HostTimeClock = CMClockGetHostTimeClock();
    CMSyncConvertTime(&v10, &v9, v6, HostTimeClock);
    *&v5 = v10.value;
    *a3 = v10;
  }

  return *&v5;
}

double fpstc_L4TimeToL3Locked@<D0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  v5 = *MEMORY[0x1E6960C70];
  *a3 = *MEMORY[0x1E6960C70];
  *(a3 + 16) = *(v4 + 16);
  if (*(a1 + 24))
  {
    v9 = *a2;
    HostTimeClock = CMClockGetHostTimeClock();
    CMSyncConvertTime(&v10, &v9, HostTimeClock, *(a1 + 24));
    *&v5 = v10.value;
    *a3 = v10;
  }

  return *&v5;
}

uint64_t FPSTimelineConverterSetProperty(const void **a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    FPSTimelineConverterSetProperty_cold_5(&v9);
    return v9;
  }

  if (!a2)
  {
    FPSTimelineConverterSetProperty_cold_4(&v9);
    return v9;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      return 4294954512;
    }

    if (!a3)
    {
      goto LABEL_11;
    }

    v6 = CFGetTypeID(a3);
    if (v6 == CFDataGetTypeID())
    {
      if (FigSpeedRampDataIsValid(a3))
      {
LABEL_11:
        FigSimpleMutexLock();
        v7 = a1[4];
        a1[4] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        FigSimpleMutexUnlock();
        v5 = 0;
        goto LABEL_16;
      }

      FPSTimelineConverterSetProperty_cold_3(&v9);
    }

    else
    {
      FPSTimelineConverterSetProperty_cold_2(&v9);
    }

    v5 = v9;
LABEL_16:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    return v5;
  }

  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    FPSTimelineConverterSetProperty_cold_1(a1 + 3, a3);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FPSTimelineConverterCopyProperty(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (FigCFEqual())
        {
          FigSimpleMutexLock();
          v6 = a1[3];
          if (!v6)
          {
LABEL_7:
            *a4 = v6;
            FigSimpleMutexUnlock();
            return 0;
          }

LABEL_6:
          v6 = CFRetain(v6);
          goto LABEL_7;
        }

        if (FigCFEqual())
        {
          FigSimpleMutexLock();
          v6 = a1[4];
          if (!v6)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        return 4294954512;
      }

      else
      {
        FPSTimelineConverterCopyProperty_cold_1(&v8);
        return v8;
      }
    }

    else
    {
      FPSTimelineConverterCopyProperty_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    FPSTimelineConverterCopyProperty_cold_3(&v10);
    return v10;
  }
}

uint64_t FPSTimelineConverterCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&sRegisterFPSTimelineConverterTypeOnce, RegisterFPSTimelineConverterType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      v5 = FigSimpleMutexCreate();
      v4[2] = v5;
      if (v5)
      {
        result = 0;
        *a2 = v4;
      }

      else
      {
        FPSTimelineConverterCreate_cold_1(v4, &v7);
        return v7;
      }
    }

    else
    {
      FPSTimelineConverterCreate_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FPSTimelineConverterCreate_cold_3(&v9);
    return v9;
  }

  return result;
}

void *fpstc_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fpstc_Finalize(void *a1)
{
  FigSimpleMutexDestroy();
  a1[2] = 0;
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
}

__CFString *fpstc_CopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  FigSimpleMutexLock();
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FPSTimelineConverterRef %p retainCount: %d allocator: %p, ", a1, v4, v5);
  v6 = a1[4];
  if (v6)
  {
    v7 = CFDataGetLength(v6) / 0x60uLL;
  }

  else
  {
    v7 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @"%d mappings", v7);
  CFStringAppendFormat(Mutable, 0, @">");
  FigSimpleMutexUnlock();
  return Mutable;
}

__n128 OUTLINED_FUNCTION_2_165@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_4_133@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_119(uint64_t a1)
{

  return FigSimpleMutexLock();
}

CMTimeRange *OUTLINED_FUNCTION_7_91(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, __int128 a17, uint64_t a18, __int128 end, uint64_t end_16)
{
  *(v21 - 64) = a17;
  *(v21 - 48) = a18;
  end = a15;
  end_16 = a16;

  return CMTimeRangeFromTimeToTime(v20, (v21 - 64), &end);
}

__n128 OUTLINED_FUNCTION_9_67@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

CMTimeRange *OUTLINED_FUNCTION_13_50@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *start)
{
  *(v9 - 48) = a1;

  return CMTimeRangeFromTimeToTime(v8, &start, (v9 - 64));
}

double OUTLINED_FUNCTION_14_58@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = a1;

  return fpstc_L4TimeToL3Locked(v16, &a14, v17 - 64);
}

uint64_t FigVideoCompositionCopyOutputFormatExtensions(const __CFAllocator *a1, uint64_t a2, CFArrayRef theArray, const __CFArray *a4, uint64_t a5, uint64_t a6, uint64_t a7, __CFArray **a8)
{
  if (theArray)
  {
    v12 = CFArrayGetCount(theArray) == 0;
    if (a4)
    {
LABEL_3:
      Count = CFArrayGetCount(a4);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 1;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  Count = 0;
LABEL_6:
  Mutable = CFArrayCreateMutable(a1, 1, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigVideoCompositionCopyOutputFormatExtensions_cold_3();
    return 0;
  }

  v15 = Mutable;
  if (Count == 0 || v12)
  {
    v23 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v23)
    {
      v24 = v23;
      vcputils_setEyesProjectionAndPackingToFormatExtensions(v23, a2, theArray, a5, a6, a7);
      CFArrayAppendValue(v15, v24);
      CFRelease(v24);
      if (a8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      FigVideoCompositionCopyOutputFormatExtensions_cold_2();
    }

LABEL_26:
    CFRelease(v15);
    return 0;
  }

  v26 = a8;
  if (Count >= 1)
  {
    v16 = 0;
    v17 = *MEMORY[0x1E69600B0];
    v18 = *MEMORY[0x1E6960060];
    v19 = *MEMORY[0x1E6960068];
    v20 = *MEMORY[0x1E6960010];
    v27 = a1;
    while (1)
    {
      v21 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      vcputils_setEyesProjectionAndPackingToFormatExtensions(v21, a2, theArray, a5, a6, a7);
      FigCFArrayGetValueAtIndex();
      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, v17, 0);
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, v18, 0);
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, v19, 0);
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, v20, 0);
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, @"LookupID", 0);
      }

      CFArrayAppendValue(v15, v22);
      CFRelease(v22);
      ++v16;
      a1 = v27;
      if (Count == v16)
      {
        goto LABEL_22;
      }
    }

    FigVideoCompositionCopyOutputFormatExtensions_cold_1();
    goto LABEL_26;
  }

LABEL_22:
  a8 = v26;
  if (!v26)
  {
    goto LABEL_26;
  }

LABEL_23:
  *a8 = v15;
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_186@<X0>(CMTag *a1@<X8>)
{
  v4 = *a1;
  *&v5.category = v1;
  v5.value = v2;

  return CMTagEqualToTag(v5, v4);
}

uint64_t FigAssertionCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a4)
    {
      if (CFEqual(cf1, @"Assertion_HolderName"))
      {
        v6 = *(a1 + 32);
        if (v6)
        {
          CFRetain(v6);
          result = 0;
          *a4 = *(a1 + 32);
        }

        else
        {
          return 4294954513;
        }
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      FigAssertionCopyProperty_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigAssertionCopyProperty_cold_2(&v9);
    return v9;
  }

  return result;
}

double FigAssertionSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (a1)
  {
    if (CFEqual(cf1, @"Assertion_HolderName"))
    {
      v7 = *(a1 + 32);
      *(a1 + 32) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< ASSERTION >>>>", 124, v3);
    }
  }

  else
  {
    FigAssertionSetProperty_cold_1(&v9);
  }

  return result;
}

uint64_t FigReadAheadAssertionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigReadAheadAssertionTypeOnce != -1)
  {
    FigReadAheadAssertionGetTypeID_cold_1();
  }

  return sFigReadAheadAssertionID;
}

uint64_t RegisterFigReadAheadAssertionType()
{
  result = _CFRuntimeRegisterClass();
  sFigReadAheadAssertionID = result;
  return result;
}

void FigReadAheadAssertionCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sRegisterFigReadAheadAssertionTypeOnce != -1)
  {
    FigReadAheadAssertionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = a3;
    Instance[3] = a2;
    Instance[5] = "FigReadAheadAssertion";
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  *a4 = Instance;
}

uint64_t FigPlaybackAssertionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigPlaybackAssertionTypeOnce != -1)
  {
    FigPlaybackAssertionGetTypeID_cold_1();
  }

  return sFigPlaybackAssertionID;
}

uint64_t RegisterFigPlaybackAssertionType()
{
  result = _CFRuntimeRegisterClass();
  sFigPlaybackAssertionID = result;
  return result;
}

void FigPlaybackAssertionCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sRegisterFigPlaybackAssertionTypeOnce != -1)
  {
    FigPlaybackAssertionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = a3;
    Instance[3] = a2;
    Instance[5] = "FigPlaybackAssertion";
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  *a4 = Instance;
}

uint64_t FigNSURLSessionAssertionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigNSURLSessionAssertionTypeOnce != -1)
  {
    FigNSURLSessionAssertionGetTypeID_cold_1();
  }

  return sFigNSURLSessionAssertionID;
}

uint64_t RegisterFigNSURLSessionAssertionType()
{
  result = _CFRuntimeRegisterClass();
  sFigNSURLSessionAssertionID = result;
  return result;
}

void FigNSURLSessionAssertionCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sRegisterFigNSURLSessionAssertionTypeOnce != -1)
  {
    FigNSURLSessionAssertionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = a3;
    Instance[3] = a2;
    Instance[5] = "FigNSURLSessionAssertion";
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  *a4 = Instance;
}

double figAssertionInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figAssertionFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v2(a1[3]);
  }

  v3 = a1[4];
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *figAssertionCopyDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  v5 = a1[4];
  if (!v5)
  {
    v5 = @"undefined";
  }

  CFStringAppendFormat(Mutable, 0, @"<%s %p holder %@>", a1[5], a1, v5);
  return v4;
}

uint64_t FigTTMLRootCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a3)
  {
    FigTTMLRootCreate_cold_1(&time1);
    return LODWORD(time1.value);
  }

  FigTTMLNodeGetClassID();
  Default = CMDerivedObjectCreate();
  if (Default)
  {
    goto LABEL_82;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Default = FigTTMLInitializeNodeBaseStorage(DerivedStorage, 0);
  if (Default)
  {
    goto LABEL_82;
  }

  Default = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (Default)
  {
    goto LABEL_82;
  }

  v8 = *(DerivedStorage + 24);
  *(DerivedStorage + 136) = 0u;
  value = 0;
  *(DerivedStorage + 152) = 0u;
  *(DerivedStorage + 168) = 0u;
  *(DerivedStorage + 184) = 0u;
  *(DerivedStorage + 200) = 0u;
  *(DerivedStorage + 216) = 0u;
  *(DerivedStorage + 232) = 0u;
  *(DerivedStorage + 248) = 0u;
  *(DerivedStorage + 264) = 0u;
  *(DerivedStorage + 280) = 0u;
  *(DerivedStorage + 296) = 0u;
  *(DerivedStorage + 312) = 0u;
  *(DerivedStorage + 328) = 0;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter profile", &value))
  {
    *(DerivedStorage + 136) = value;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter clockMode", &value))
  {
    v9 = @"local";
    if (!CFEqual(value, @"local"))
    {
      v9 = @"gps";
      if (!CFEqual(value, @"gps"))
      {
        v9 = @"utc";
        if (!CFEqual(value, @"utc"))
        {
          goto LABEL_61;
        }
      }
    }
  }

  else
  {
    v9 = @"utc";
  }

  *(DerivedStorage + 144) = v9;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter dropMode", &value))
  {
    v10 = @"dropNTSC";
    if (!CFEqual(value, @"dropNTSC"))
    {
      v10 = @"dropPAL";
      if (!CFEqual(value, @"dropPAL"))
      {
        v10 = @"nonDrop";
        if (!CFEqual(value, @"nonDrop"))
        {
          goto LABEL_61;
        }
      }
    }
  }

  else
  {
    v10 = @"nonDrop";
  }

  *(DerivedStorage + 152) = v10;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter frameRate", &value))
  {
    FigTTMLParseFrameRate();
    if (Default)
    {
      goto LABEL_82;
    }
  }

  else
  {
    *(DerivedStorage + 160) = 30;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter frameRateMultiplier", &value))
  {
    FigTTMLParseFrameRateMultiplier();
    if (Default)
    {
      goto LABEL_82;
    }
  }

  else
  {
    CMTimeMake(&time1, 1, 1);
    *(DerivedStorage + 164) = time1;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter markerMode", &value))
  {
    v11 = @"continuous";
    if (!CFEqual(value, @"continuous"))
    {
      v11 = @"discontinuous";
      if (!CFEqual(value, @"discontinuous"))
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    v11 = @"discontinuous";
  }

  *(DerivedStorage + 192) = v11;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter pixelAspectRatio", &value))
  {
    FigTTMLParsePixelAspectRatio();
    if (Default)
    {
      goto LABEL_82;
    }
  }

  else
  {
    *(DerivedStorage + 200) = FigGeometryAspectRatioMake();
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter aspectRatio", &value) || CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter displayAspectRatio", &value))
  {
    FigTTMLParsePixelAspectRatio();
    if (Default)
    {
      goto LABEL_82;
    }
  }

  else
  {
    *(DerivedStorage + 208) = *MEMORY[0x1E6962800];
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter activeArea", &value))
  {
    FigTTMLParseActiveArea(value, (DerivedStorage + 216));
    if (Default)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v12 = MEMORY[0x1E6962828];
    v13 = *(MEMORY[0x1E6962828] + 16);
    *(DerivedStorage + 216) = *MEMORY[0x1E6962828];
    *(DerivedStorage + 232) = v13;
    v14 = *(v12 + 48);
    *(DerivedStorage + 248) = *(v12 + 32);
    *(DerivedStorage + 264) = v14;
  }

  if (!CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter subFrameRate", &value) || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    *(DerivedStorage + 280) = 1;
  }

  else
  {
    FigTTMLParseFrameRate();
    if (Default)
    {
      goto LABEL_82;
    }

    if (!*(DerivedStorage + 280))
    {
      goto LABEL_61;
    }
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter tickRate", &value))
  {
    FigTTMLParseTickRate();
    if (Default)
    {
      goto LABEL_82;
    }

    time1 = **&MEMORY[0x1E6960CC0];
    time2 = *(DerivedStorage + 284);
    if (!CMTimeCompare(&time1, &time2))
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (CFDictionaryContainsKey(v8, @"http://www.w3.org/ns/ttml#parameter frameRate"))
    {
      v15 = *(DerivedStorage + 160);
      time1 = *(DerivedStorage + 164);
      CMTimeMultiply(&time2, &time1, v15);
      CMTimeMultiply(&time1, &time2, *(DerivedStorage + 280));
    }

    else
    {
      CMTimeMake(&time1, 1, 1);
    }

    *(DerivedStorage + 284) = time1;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter timeBase", &value))
  {
    v16 = @"media";
    if (!CFEqual(value, @"media"))
    {
      v16 = @"smpte";
      if (!CFEqual(value, @"smpte"))
      {
        v16 = @"clock";
        if (!CFEqual(value, @"clock"))
        {
          goto LABEL_61;
        }
      }
    }
  }

  else
  {
    v16 = @"media";
  }

  *(DerivedStorage + 312) = v16;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter cellResolution", &value))
  {
    FigTTMLParseCellResolution(value, DerivedStorage + 320, (DerivedStorage + 324));
    if (Default)
    {
      goto LABEL_82;
    }

    if (!*(DerivedStorage + 320) || !*(DerivedStorage + 324))
    {
      goto LABEL_61;
    }
  }

  else
  {
    *(DerivedStorage + 320) = 0xF00000020;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#styling extent", &value))
  {
    Default = FigTTMLParsePixelResolution(value, (DerivedStorage + 328), (DerivedStorage + 332));
    if (Default)
    {
      goto LABEL_82;
    }

    if (!*(DerivedStorage + 328) || !*(DerivedStorage + 332))
    {
LABEL_61:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
      if (Default)
      {
        goto LABEL_82;
      }
    }
  }

  v19 = cf;
  v20 = cf;
  v21 = 0;
  FigTTMLParseNode(a2, figTTMLRootConsumeChildNode, &v19);
  if (!Default)
  {
    if (*(DerivedStorage + 336) || (Default = FigTTMLHeadCreateDefault(a1, &v19, (DerivedStorage + 336)), !Default))
    {
      v17 = 0;
      *a3 = cf;
      return v17;
    }
  }

LABEL_82:
  v17 = Default;
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

void figTTMLRoot_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 336);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 336) = 0;
  }

  v3 = *(DerivedStorage + 344);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 344) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLRoot_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"tt: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLRoot_CopyChildNodeArray(const void *a1, __CFArray **a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 336);
    if (v7)
    {
      CFArrayAppendValue(Mutable, v7);
    }

    v8 = *(v6 + 344);
    if (v8)
    {
      CFArrayAppendValue(Mutable, v8);
    }

    v9 = 0;
    *a2 = Mutable;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    v9 = v11;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v9;
}

uint64_t figTTMLRoot_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 7;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLRoot_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigPKDCPECryptorCreate(const void *a1, unint64_t a2, unint64_t a3, const void *a4, const __CFAllocator *a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v12 = 4294955146;
  if (!a1 || !(a2 | a3) || !a6 || !a7)
  {
    goto LABEL_19;
  }

  if (sActiveCryptorsInitOnce != -1)
  {
    FigPKDCPECryptorCreate_cold_1();
  }

  MEMORY[0x19A8D3660](&FigPKDCPECryptorGetClassID_sRegisterFigPKDCPECryptorTypeOnce, RegisterFigPKDCPECryptorType);
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v15 = DerivedStorage, v16 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v15 + 8) = v16) == 0) || (v17 = FigSimpleMutexCreate(), (*(v15 + 24) = v17) == 0) || (v18 = dispatch_queue_create("AirPlayNotifications", 0), (*(v15 + 240) = v18) == 0))
  {
    v12 = 4294955145;
    goto LABEL_19;
  }

  *(v15 + 192) = 1;
  *v15 = CFRetain(a1);
  EnsureUUID_0(cf);
  if (v13)
  {
LABEL_18:
    v12 = v13;
    goto LABEL_19;
  }

  if (a2)
  {
    v19 = CFRetain(a2);
  }

  else
  {
    v19 = 0;
  }

  *(v15 + 32) = v19;
  if (a3)
  {
    *(v15 + 40) = CFRetain(a3);
    v31[0] = 1;
    v31[1] = PersistentKeyUpdatedCallback;
    v31[2] = KeyRequestErrorOccurredCallback;
    v20 = *(v15 + 216);
    global_queue = dispatch_get_global_queue(0, 0);
    v13 = PKDKeyManagerInstallCallbacksForKeyID(a3, v20, cf, global_queue, v31);
    if (v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(v15 + 40) = 0;
  }

  Value = CFDictionaryGetValue(a6, @"AuditToken");
  if (Value)
  {
    v23 = Value;
    v24 = CFGetTypeID(Value);
    if (v24 == CFDataGetTypeID())
    {
      *(v15 + 144) = CFRetain(v23);
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  v25 = CFDictionaryGetValue(a6, @"CryptKeyAttributes");
  if (!v25)
  {
    *(v15 + 224) = 0;
    goto LABEL_35;
  }

  v26 = CFRetain(v25);
  *(v15 + 224) = v26;
  if (!v26)
  {
LABEL_35:
    FigPKDCPECryptorCreate_cold_2(v31);
    v12 = LODWORD(v31[0]);
    goto LABEL_19;
  }

  if (a4)
  {
    v27 = CFRetain(a4);
    *(v15 + 152) = v27;
    *(v15 + 160) = CFRetain(v27);
  }

  else
  {
    v13 = FigCPEExternalProtectionMonitorCreateForMethods(a5, 4u, 0, 0, (v15 + 152));
    if (v13)
    {
      goto LABEL_18;
    }

    *(v15 + 160) = CFRetain(*(v15 + 152));
    *(v15 + 168) = 1;
  }

  FigCPEExternalProtectionMonitorBeginMonitoring(*(v15 + 152));
  v12 = AddWeakListenerOnExternalProtectionMonitor(cf, *(v15 + 152));
  if (!v12)
  {
    *(v15 + 232) = 0;
    *(v15 + 281) = 1;
    *a7 = cf;
    return v12;
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t InitActiveCryptorList()
{
  sActiveCryptors = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  result = FigSimpleMutexCreate();
  sActiveCryptorsLock = result;
  return result;
}

void PersistentKeyUpdatedCallback(uint64_t a1, void *a2)
{
  values = a2;
  CMBaseObjectGetDerivedStorage();
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961080], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    v3 = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v3);
  }

  else
  {
    PersistentKeyUpdatedCallback_cold_1();
  }
}

uint64_t KeyRequestErrorOccurredCallback(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }

  else
  {
    PostKeyRequestErrorOccurred(a1, a2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t AddWeakListenerOnExternalProtectionMonitor(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterAddWeakListener();
    }

    else
    {
      AddWeakListenerOnExternalProtectionMonitor_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    AddWeakListenerOnExternalProtectionMonitor_cold_2(&v4);
    return v4;
  }
}

void FigCFRelease_11(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigPKDCPELimitedCryptorCreateForBufferedAirPlay(uint64_t a1, const void *a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v9 = 4294955146;
  if (a1 && a5)
  {
    MEMORY[0x19A8D3660](&FigPKDCPELimitedCryptorGetClassID_sRegisterFigPKDCPELimitedCryptorTypeOnce, RegisterFigPKDCPELimitedCryptorType);
    v10 = CMDerivedObjectCreate();
    if (v10)
    {
      return v10;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      return 4294955145;
    }

    v12 = DerivedStorage;
    v13 = FigSimpleMutexCreate();
    *(v12 + 8) = v13;
    if (!v13)
    {
      return 4294955145;
    }

    EnsureUUIDForLimitedCryptor(0);
    if (v10)
    {
      return v10;
    }

    else
    {
      *(v12 + 16) = a1;
      if (a2)
      {
        v14 = CFRetain(a2);
      }

      else
      {
        v14 = 0;
      }

      *(v12 + 40) = v14;
      if (a3)
      {
        v15 = CFRetain(a3);
      }

      else
      {
        v15 = 0;
      }

      v9 = 0;
      *(v12 + 48) = v15;
      *(v12 + 24) = 0;
      *a5 = 0;
    }
  }

  return v9;
}

uint64_t FigPKDCPELimitedCryptorCreateWithExternalProtectionMethods(uint64_t a1, int a2, uint64_t a3, CFTypeRef *a4)
{
  v6 = FigPKDCPELimitedCryptorCreateForBufferedAirPlay(a1, 0, 0, a3, a4);
  v7 = v6;
  if (a4 && !v6)
  {
    *(CMBaseObjectGetDerivedStorage() + 24) = a2;
  }

  return v7;
}

uint64_t FigPKDCPECryptorInvalidate(const void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF178B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    *(DerivedStorage + 16) = 1;
    *(DerivedStorage + 192) = 0;
    FigSimpleMutexLock();
    v4 = sActiveCryptors;
    v28.length = CFArrayGetCount(sActiveCryptors);
    v28.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v28, a1);
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(sActiveCryptors, FirstIndexOfValue);
    }

    if (*(DerivedStorage + 80))
    {
      N8pdwAfn();
      *(DerivedStorage + 80) = 0;
    }

    FigSimpleMutexUnlock();
    v6 = *(DerivedStorage + 40);
    if (v6)
    {
      PKDKeyManagerRemoveKeyID(v6, *(DerivedStorage + 216));
    }

    if (*(DerivedStorage + 72))
    {
      JE2f6WCx();
      *(DerivedStorage + 72) = 0;
    }

    *(DerivedStorage + 208) = 0;
    *(DerivedStorage + 232) = 0;
    v7 = *(DerivedStorage + 8);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 8) = 0;
    }

    StopAndReleaseTimer((DerivedStorage + 200));
    v8 = *(DerivedStorage + 32);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 32) = 0;
    }

    v9 = *(DerivedStorage + 40);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 40) = 0;
    }

    v10 = *(DerivedStorage + 104);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 104) = 0;
    }

    v11 = *(DerivedStorage + 112);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 112) = 0;
    }

    v12 = *(DerivedStorage + 128);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 128) = 0;
    }

    *(DerivedStorage + 136) = 0;
    v13 = *(DerivedStorage + 144);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 144) = 0;
    }

    v14 = *(DerivedStorage + 88);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 88) = 0;
    }

    v15 = *(DerivedStorage + 152);
    if (v15)
    {
      RemoveWeakListenerOnExternalProtectionMonitor(a1, v15);
      FigCPEExternalProtectionMonitorEndMonitoring(*(DerivedStorage + 152));
      v16 = *(DerivedStorage + 152);
      if (v16)
      {
        CFRelease(v16);
        *(DerivedStorage + 152) = 0;
      }
    }

    v17 = *(DerivedStorage + 160);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 160) = 0;
    }

    v18 = *DerivedStorage;
    *DerivedStorage = 0;
    v19 = *(DerivedStorage + 184);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 184) = 0;
    }

    v20 = *(DerivedStorage + 216);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 216) = 0;
    }

    v21 = *(DerivedStorage + 224);
    if (v21)
    {
      CFRelease(v21);
      *(DerivedStorage + 224) = 0;
    }

    v22 = *(DerivedStorage + 248);
    if (v22)
    {
      CFRelease(v22);
      *(DerivedStorage + 248) = 0;
    }

    v23 = *(DerivedStorage + 256);
    if (v23)
    {
      *(DerivedStorage + 256) = 0;
      free(v23);
    }

    v24 = *(DerivedStorage + 264);
    if (v24)
    {
      CFRelease(v24);
      *(DerivedStorage + 264) = 0;
    }

    v25 = *(DerivedStorage + 272);
    if (v25)
    {
      CFRelease(v25);
      *(DerivedStorage + 272) = 0;
    }

    FigSimpleMutexUnlock();
    if (v18)
    {
      if (FigPKDCPEProtectorCryptorWasInvalidated(v18, a1) == -15844)
      {
        *(DerivedStorage + 17) = 1;
      }

      CFRelease(v18);
    }
  }

  return 0;
}

void FigPKDCPECryptorFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPKDCPECryptorInvalidate(a1);
  if (*(DerivedStorage + 24))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 240);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 240) = 0;
  }
}

__CFString *FigPKDCPECryptorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    v5 = 1;
  }

  else
  {
    v5 = Mutable == 0;
  }

  if (!v5)
  {
    Value = *(DerivedStorage + 224);
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, *MEMORY[0x1E6960F28]);
    }

    v7 = PKDLogPrivateData(Value);
    CFStringAppendFormat(Mutable, 0, @"<FigCPECryptorPKD %p %@ %@>", a1, v7, *(DerivedStorage + 216));
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t RemoveWeakListenerOnExternalProtectionMonitor(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterRemoveWeakListener();
    }

    else
    {
      RemoveWeakListenerOnExternalProtectionMonitor_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    RemoveWeakListenerOnExternalProtectionMonitor_cold_2(&v4);
    return v4;
  }
}

uint64_t ExternalProtectionStatusChangedCallback_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t IsLeaseExpired(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 80);
  if (result)
  {
    jSNXSLgDwR();
    return v2 == -42656;
  }

  return result;
}

uint64_t CreatePackagedPersistentKeyGuts(uint64_t a1, const void *a2, CFDataRef *a3)
{
  if (!a1)
  {
    CreatePackagedPersistentKeyGuts_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    CreatePackagedPersistentKeyGuts_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    CreatePackagedPersistentKeyGuts_cold_2(&v11);
    return v11;
  }

  *a3 = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = PKDMovieIDGetInfo(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, v6);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6962AF8], a2);
  Data = CFPropertyListCreateData(v5, MutableCopy, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    CreatePackagedPersistentKeyGuts_cold_1(&v11);
    v9 = v11;
    if (!MutableCopy)
    {
      return v9;
    }

    goto LABEL_6;
  }

  v9 = 0;
  *a3 = Data;
  if (MutableCopy)
  {
LABEL_6:
    CFRelease(MutableCopy);
  }

  return v9;
}

uint64_t ProcessKeyResponse(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ProcessKeyResponse_cold_9(v31);
    return v31[0];
  }

  if (!a3)
  {
    ProcessKeyResponse_cold_8(v31);
    return v31[0];
  }

  if ((v4 - 4) <= 0xFFFFFFFC)
  {
    ProcessKeyResponse_cold_7(v31);
    return v31[0];
  }

  v8 = DerivedStorage;
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    ProcessKeyResponse_cold_6(v31);
    return v31[0];
  }

  v11 = Mutable;
  v12 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v12)
  {
    ProcessKeyResponse_cold_5(v11, v31);
    return v31[0];
  }

  v13 = v12;
  if (v4 == 2)
  {
    v14 = *(v8 + 128);
    if (v14)
    {
      CFRelease(v14);
      *(v8 + 128) = 0;
    }

    v15 = *(v8 + 144);
    if (!v15)
    {
      ProcessKeyResponse_cold_4(v31);
LABEL_56:
      v26 = v31[0];
      goto LABEL_45;
    }

    CFDictionarySetValue(v11, @"lGxB4ky", v15);
  }

  if (*(v8 + 80))
  {
    FigCFDictionarySetInt64();
  }

  CFDictionarySetValue(v11, @"RulIk", a3);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  v16 = gojqbvrX305gQO(v11, v13);
  if (!v16)
  {
    if (v4 != 1)
    {
      if (v4 == 3)
      {
        v17 = *(v8 + 104);
        Value = CFDictionaryGetValue(v13, @"sPJ8AGu5PT");
        *(v8 + 104) = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (*(v8 + 104))
        {
          v19 = *(v8 + 112);
          v20 = CFDictionaryGetValue(v13, @"o9YYYJ64ntzC");
          *(v8 + 112) = v20;
          if (v20)
          {
            CFRetain(v20);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          if (dword_1EAF178B0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (*(v8 + 112))
          {
LABEL_43:
            v26 = 0;
            if (FigCFDictionaryGetInt64IfPresent())
            {
              *(v8 + 281) = 1;
            }

            goto LABEL_45;
          }

          ProcessKeyResponse_cold_1(v31);
        }

        else
        {
          ProcessKeyResponse_cold_2(v31);
        }
      }

      else
      {
        v23 = *(v8 + 128);
        v24 = CFDictionaryGetValue(v13, @"igoeg");
        *(v8 + 128) = v24;
        if (v24)
        {
          CFRetain(v24);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        if (dword_1EAF178B0)
        {
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (*(v8 + 128))
        {
          goto LABEL_43;
        }

        ProcessKeyResponse_cold_3(v31);
      }

      goto LABEL_56;
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(v8 + 80) = 0;
    }

    if (dword_1EAF178B0)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v8 + 80))
    {
      goto LABEL_43;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v29, v30);
  }

  v26 = v16;
LABEL_45:
  CFRelease(v11);
  CFRelease(v13);
  return v26;
}

uint64_t EnsureDecryptContextGuts(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 96))
  {
    v3 = DerivedStorage;
    if (!*(DerivedStorage + 120))
    {
      v6 = *(DerivedStorage + 80);
      v7 = *(DerivedStorage + 40);
      if (v7)
      {
        DecryptContextForKeyID = PKDKeyManagerGetDecryptContextForKeyID(v7, *(v3 + 216), (v3 + 80));
        if (DecryptContextForKeyID)
        {
          v4 = DecryptContextForKeyID;
          goto LABEL_70;
        }

        v9 = 0;
        *(v3 + 177) = v6 == *(v3 + 80);
        goto LABEL_8;
      }

      v10 = *(v3 + 72);
      if (!v6)
      {
        if (v10)
        {
          if (!*(v3 + 88))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (!*(v3 + 128))
          {
LABEL_72:
            EnsureDecryptContextGuts_cold_2(&values);
            v4 = values;
            goto LABEL_69;
          }

          v10 = 0;
        }
      }

      v9 = *(v3 + 88);
      *(v3 + 88) = 0;
      *(v3 + 72) = 0;
      v13 = CMBaseObjectGetDerivedStorage();
      v14 = *(v13 + 80);
      FigSimpleMutexLock();
      if (v14)
      {
        v15 = sActiveCryptors;
        v31.length = CFArrayGetCount(sActiveCryptors);
        v31.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v15, v31, a1);
        CFArrayRemoveValueAtIndex(sActiveCryptors, FirstIndexOfValue);
        CFArrayAppendValue(sActiveCryptors, a1);
        FigSimpleMutexUnlock();
        if (v9 && v10)
        {
          v17 = ProcessKeyResponse(a1, v10, v9, 1);
          if (v17)
          {
            v4 = v17;
            goto LABEL_68;
          }

          *(v13 + 177) = 0;
        }

        goto LABEL_8;
      }

      ZZUDP2EEn9tLDQ();
      if (v18)
      {
        v19 = v18;
        if (CFArrayGetCount(sActiveCryptors) >= 1)
        {
          CFArrayGetValueAtIndex(sActiveCryptors, 0);
          CFArrayRemoveValueAtIndex(sActiveCryptors, 0);
          LODWORD(cf) = v19;
          v20 = CMBaseObjectGetDerivedStorage();
          v21 = *MEMORY[0x1E695E480];
          values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &cf);
          v22 = CFDictionaryCreate(v21, MEMORY[0x1E6961038], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (*(v20 + 80))
          {
            N8pdwAfn();
            *(v20 + 80) = 0;
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
          }

          else
          {
            EnsureDecryptContextGuts_cold_1(0);
          }

          if (values)
          {
            CFRelease(values);
          }

          if (v22)
          {
            CFRelease(v22);
          }
        }
      }

      if (*(v13 + 128) && *(v13 + 136))
      {
        values = 0;
        v4 = PKDMovieIDGetValue(*(v13 + 32), 0, &values);
        if (v4)
        {
LABEL_43:
          if (v4)
          {
            FigSimpleMutexUnlock();
            if (v9)
            {
              goto LABEL_68;
            }

            goto LABEL_69;
          }

          CFArrayAppendValue(sActiveCryptors, a1);
          FigSimpleMutexUnlock();
LABEL_8:
          if (*(v3 + 177))
          {
            v4 = 0;
            if (!v9)
            {
              goto LABEL_69;
            }

LABEL_68:
            CFRelease(v9);
            goto LABEL_69;
          }

          values = 0;
          i2DzSgbBIIe95gyG0gW();
          if (v11)
          {
            v4 = v11;
LABEL_17:
            v12 = 2;
LABEL_51:
            Methods = FigCPEExternalProtectionMonitorGetMethods(*(v3 + 152));
            if ((~Methods & v12) == 0)
            {
LABEL_66:
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
LABEL_67:
              if (!v9)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            }

            cf = 0;
            v25 = FigCPEExternalProtectionMonitorCreateForMethods(*MEMORY[0x1E695E480], v12 & ~Methods, 0, *(v3 + 160), &cf);
            if (v25)
            {
              if (v4)
              {
                v4 = v4;
              }

              else
              {
                v4 = v25;
              }

              goto LABEL_66;
            }

            v26 = *(v3 + 152);
            v27 = cf;
            if (v26 == cf)
            {
LABEL_60:
              *(v3 + 152) = v27;
              if (v27)
              {
                CFRetain(v27);
              }

              if (v26)
              {
                CFRelease(v26);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_66;
            }

            v28 = AddWeakListenerOnExternalProtectionMonitor(a1, cf);
            if (!v28)
            {
              v4 = RemoveWeakListenerOnExternalProtectionMonitor(a1, *(v3 + 152));
              if (v4)
              {
                goto LABEL_67;
              }

              v27 = cf;
              v26 = *(v3 + 152);
              goto LABEL_60;
            }

            v4 = v28;
            if (v9)
            {
              goto LABEL_68;
            }

LABEL_69:
            if (!v4)
            {
              return v4;
            }

LABEL_70:
            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            return v4;
          }

          if (values == 0xEF72894CA7895B78)
          {
            v12 = 0;
          }

          else if (values == 0x285A0863BBA8E1D3)
          {
            v12 = 2;
          }

          else
          {
            if (values != 0x40791AC78BD5C571)
            {
              v4 = 4294951071;
              goto LABEL_17;
            }

            v12 = 1;
          }

          v4 = 0;
          *(v3 + 177) = 1;
          goto LABEL_51;
        }

        v23 = ProcessOfflineKey(a1, values, 4);
      }

      else
      {
        v23 = ProcessKeyResponse(a1, v10, v9, 1);
      }

      v4 = v23;
      goto LABEL_43;
    }
  }

  return 0;
}

uint64_t ProcessOfflineKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  values = 0;
  if (!a2)
  {
    ProcessOfflineKey_cold_7(&v27);
LABEL_46:
    v22 = 0;
    v23 = v27;
    goto LABEL_34;
  }

  if ((v3 & 0xFFFFFFFD) != 4)
  {
    ProcessOfflineKey_cold_1(&v27);
    goto LABEL_46;
  }

  v6 = DerivedStorage;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    ProcessOfflineKey_cold_6(&v27);
    goto LABEL_46;
  }

  v9 = Mutable;
  v10 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v10)
  {
    ProcessOfflineKey_cold_5(v9, &v27);
    goto LABEL_46;
  }

  v11 = v10;
  CFDictionarySetValue(v9, @"igoeg", *(v6 + 128));
  CFDictionarySetValue(v9, @"lGxB4ky", *(v6 + 144));
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  v12 = gojqbvrX305gQO(v9, v11);
  if (v12)
  {
    goto LABEL_41;
  }

  if (v3 == 4)
  {
    v27 = 0;
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(v6 + 80) = v27;
    }

    else if (*(v6 + 80))
    {
      goto LABEL_21;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
LABEL_41:
    v23 = v12;
    v22 = 0;
    v19 = 0;
    goto LABEL_32;
  }

  if (v3 == 6)
  {
    v13 = *(v6 + 104);
    Value = CFDictionaryGetValue(v11, @"sPJ8AGu5PT");
    *(v6 + 104) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (!*(v6 + 104))
    {
      ProcessOfflineKey_cold_3(&v27);
      goto LABEL_50;
    }

    v15 = *(v6 + 112);
    v16 = CFDictionaryGetValue(v11, @"o9YYYJ64ntzC");
    *(v6 + 112) = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (!*(v6 + 112))
    {
      ProcessOfflineKey_cold_2(&v27);
LABEL_50:
      v22 = 0;
      v19 = 0;
      goto LABEL_51;
    }
  }

LABEL_21:
  v17 = CFDictionaryGetValue(v11, @"igoeg");
  if (!v17)
  {
    v19 = 0;
    goto LABEL_29;
  }

  v18 = CFRetain(v17);
  v19 = v18;
  if (!v18)
  {
LABEL_29:
    v22 = 0;
LABEL_30:
    v23 = 0;
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(v6 + 281) = 1;
    }

    goto LABEL_32;
  }

  v20 = *(v6 + 128);
  *(v6 + 128) = v18;
  CFRetain(v18);
  if (v20)
  {
    CFRelease(v20);
  }

  PackagedPersistentKeyGuts = CreatePackagedPersistentKeyGuts(*(v6 + 32), v19, &values);
  if (PackagedPersistentKeyGuts)
  {
    v23 = PackagedPersistentKeyGuts;
    v22 = 0;
    goto LABEL_32;
  }

  v22 = CFDictionaryCreate(v7, MEMORY[0x1E6961080], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v22)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    goto LABEL_30;
  }

  ProcessOfflineKey_cold_4(&v27);
LABEL_51:
  v23 = v27;
LABEL_32:
  CFRelease(v9);
  CFRelease(v11);
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_34:
  if (values)
  {
    CFRelease(values);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v23;
}

void PostKeyRequestErrorOccurred(uint64_t a1, void *a2)
{
  values[24] = *MEMORY[0x1E69E9840];
  values[0] = a2;
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF178B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961018], values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v3)
  {
    v4 = v3;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v4);
  }

  else
  {
    PostKeyRequestErrorOccurred_cold_1();
  }
}

uint64_t CopyInfoFromPackagedPersistentKey(uint64_t a1, const __CFData *cf, CFTypeRef *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  if (cf && (v11 = CFGetTypeID(cf), v11 == CFDataGetTypeID()))
  {
    if (a5)
    {
      v12 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], cf, 0, 0, 0);
      v13 = v12;
      if (!v12 || (v15 = CFGetTypeID(v12), v15 != CFDictionaryGetTypeID()))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28[1]);
        v5 = v14;
        if (!v13)
        {
          return v5;
        }

        goto LABEL_19;
      }

      Value = CFDictionaryGetValue(v13, *MEMORY[0x1E6962AF8]);
      if (Value && (v17 = Value, v18 = CFGetTypeID(Value), v18 == CFDataGetTypeID()))
      {
        v19 = CFDictionaryGetValue(v13, *MEMORY[0x1E6962AC0]);
        if (v19 && (v20 = v19, v21 = CFGetTypeID(v19), v21 == CFDataGetTypeID()))
        {
          v22 = CFDictionaryGetValue(v13, *MEMORY[0x1E6962B00]);
          if (v22)
          {
            v24 = v22;
            v25 = CFGetTypeID(v22);
            if (v25 == CFArrayGetTypeID())
            {
              PKDMovieIDGetValue(*(a1 + 32), v13, 0);
              *a5 = CFRetain(v17);
              if (a4)
              {
                *a4 = CFRetain(v24);
              }

              v5 = 0;
              if (a3)
              {
                *a3 = CFRetain(v20);
              }

              goto LABEL_19;
            }
          }

          CopyInfoFromPackagedPersistentKey_cold_1(v28);
        }

        else
        {
          CopyInfoFromPackagedPersistentKey_cold_2(v28);
        }
      }

      else
      {
        CopyInfoFromPackagedPersistentKey_cold_3(v28);
      }

      v5 = v28[0];
LABEL_19:
      CFRelease(v13);
      return v5;
    }

    CopyInfoFromPackagedPersistentKey_cold_4(v28);
  }

  else
  {
    CopyInfoFromPackagedPersistentKey_cold_5(v28);
  }

  return v28[0];
}

void SetPersistentKey(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (!FigCFEqual())
    {
      SetPersistentKey_cold_1(&v7);
      return;
    }

    v5 = *(DerivedStorage + 128);
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 128) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (*(DerivedStorage + 120))
  {
    v6 = 0;
    if (!PKDMovieIDGetValue(*(DerivedStorage + 32), 0, &v6))
    {
      ProcessOfflineKey(a1, v6, 6);
    }
  }

  else
  {

    EnsureDecryptContext(a1);
  }
}

uint64_t FigPKDCPECryptorTestAndSetKeyRequestState(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, uint64_t *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v18 = 0;
  if (!a2)
  {
    FigPKDCPECryptorTestAndSetKeyRequestState_cold_2(v20);
LABEL_35:
    v14 = v20[0];
    goto LABEL_26;
  }

  if (!a3)
  {
    FigPKDCPECryptorTestAndSetKeyRequestState_cold_1(v20);
    goto LABEL_35;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    v14 = 4294954511;
  }

  else
  {
    v10 = *(DerivedStorage + 40);
    if (!v10)
    {
      if (*(DerivedStorage + 192) == a2)
      {
        *(DerivedStorage + 192) = a3;
        v19 = 1;
        v13 = a3;
        if (a3 < a2)
        {
          v13 = a3;
          if (*(DerivedStorage + 72))
          {
            JE2f6WCx();
            *(DerivedStorage + 72) = 0;
            v13 = *(DerivedStorage + 192);
          }

          *(DerivedStorage + 208) = 0;
        }

        if (v13 == 2)
        {
          *(DerivedStorage + 208) = PKDGetNewRequestID();
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      v18 = *(DerivedStorage + 208);
      goto LABEL_17;
    }

    v11 = PKDKeyManagerTestAndSetKeyRequestState(v10, *(DerivedStorage + 216), a2, a3, &v19, &v18);
    if (!v11)
    {
      v12 = v19;
LABEL_17:
      v14 = 0;
      if (a3 == 2 && v12)
      {
        StopAndReleaseTimer((DerivedStorage + 200));
        v14 = 0;
      }

      goto LABEL_20;
    }

    v14 = v11;
  }

LABEL_20:
  FigSimpleMutexUnlock();
  if (a3 == 3 && !v14 && v19)
  {
    if (dword_1EAF178B0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v14 = 0;
  }

LABEL_26:
  if (dword_1EAF178B0)
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v18;
  }

  return v14;
}

uint64_t FigPKDCPECryptorCreatePackagedPersistentKey(uint64_t a1, const void *a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      *a3 = 0;
      FigSimpleMutexLock();
      if (*(v6 + 16))
      {
        v9 = 4294954511;
      }

      else
      {
        v7 = *(v6 + 40);
        if (v7)
        {
          PackagedPersistentKeyForKeyID = PKDKeyManagerCreatePackagedPersistentKeyForKeyID(v7, *(v6 + 216), a2, a3);
        }

        else
        {
          PackagedPersistentKeyForKeyID = CreatePackagedPersistentKeyGuts(*(v6 + 32), a2, a3);
        }

        v9 = PackagedPersistentKeyForKeyID;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      FigPKDCPECryptorCreatePackagedPersistentKey_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FigPKDCPECryptorCreatePackagedPersistentKey_cold_2(&v12);
    return v12;
  }

  return v9;
}

uint64_t GetCryptFormatForFormat(int a1)
{
  if (a1 > 1902928226)
  {
    if (a1 <= 2053202738)
    {
      if (a1 <= 1903587384)
      {
        if (a1 != 1902928227)
        {
          v1 = 1903522657;
          goto LABEL_19;
        }

        return 5;
      }

      if (a1 == 1903587385)
      {
        return 11;
      }

      if (a1 != 2053202275)
      {
        return 0;
      }
    }

    else
    {
      if (a1 > 2053207650)
      {
        if (a1 == 2053464883 || a1 == 2053319475)
        {
          return 8;
        }

        if (a1 != 2053207651)
        {
          return 0;
        }

        return 4;
      }

      if ((a1 - 2053202739) > 0x3D || ((1 << (a1 - 51)) & 0x2020000000000001) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a1 > 1902211170)
  {
    if (a1 > 1902324530)
    {
      if (a1 == 1902324531 || a1 == 1902469939)
      {
        return 5;
      }

      v1 = 1902537827;
LABEL_19:
      if (a1 != v1)
      {
        return 0;
      }

      return 5;
    }

    if (a1 != 1902211171)
    {
      if (a1 != 1902212707)
      {
        return 0;
      }

      return 7;
    }

    return 5;
  }

  if ((a1 - 1902207795) <= 0x3D && ((1 << (a1 - 51)) & 0x2020000000000001) != 0)
  {
    return 5;
  }

  if (a1 != 1700886115)
  {
    v1 = 1902207331;
    goto LABEL_19;
  }

  return 2;
}

uint64_t RegisterFigPKDCPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t RegisterFigPKDCPELimitedCryptorType(uint64_t a1)
{
  FigCPEFairPlayCryptorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t OUTLINED_FUNCTION_10_68@<X0>(size_t dataLength@<X2>, CMBlockBufferRef *a2@<X8>, CMBlockBufferRef *blockBufferOut)
{

  return CMBlockBufferCreateWithMemoryBlock(v3, 0, dataLength, v3, 0, 0, dataLength, 1u, a2);
}

uint64_t OUTLINED_FUNCTION_15_51(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{

  return CMBlockBufferCreateContiguous(v8, a2, v8, 0, 0, 0, 0, a8);
}

void OUTLINED_FUNCTION_17_44()
{

  XgJ8VCncrBfn9DzTTUYPfkG();
}

CFDataRef OUTLINED_FUNCTION_24_31@<X0>(uint64_t a1@<X8>)
{

  return CFDataCreate(v2, v1, 24 * a1);
}

void OUTLINED_FUNCTION_25_33()
{

  XgJ8VCncrBfn9DzTTUYPfkG();
}

uint64_t OUTLINED_FUNCTION_26_33()
{

  return FigSimpleMutexUnlock();
}

uint64_t FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers(const __CFAllocator *a1, const __CFArray *a2, CFTypeRef *a3)
{
  if (!a3)
  {
    FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_3(&v13);
    return v13;
  }

  FigRenderPipelineGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigSimpleMutexCreate();
  *(DerivedStorage + 32) = v8;
  if (!v8)
  {
    FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_2(&v13);
    return v13;
  }

  v9 = dispatch_queue_create("com.apple.coremedia.frpfanout.providerSyncQ", 0);
  *(DerivedStorage + 24) = v9;
  if (!v9)
  {
    FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_1(&v13);
    return v13;
  }

  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v6 = CMBufferQueueCreate(a1, 0, CallbacksForUnsortedSampleBuffers, DerivedStorage);
  if (v6)
  {
    return v6;
  }

  FigSampleBufferProviderCreateForBufferQueue(a1, *DerivedStorage, (DerivedStorage + 8));
  if (v6)
  {
    return v6;
  }

  frpfanout_gracefullySetArrayOfSampleBufferConsumers(0, a2);
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v6 = FigNotificationCenterAddWeakListener();
  if (v6)
  {
    return v6;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v11 = FigNotificationCenterAddWeakListener();
  if (!v11)
  {
    *a3 = 0;
  }

  return v11;
}

void frpfanout_gracefullySetArrayOfSampleBufferConsumers(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    v7 = CFArrayGetCount(*(DerivedStorage + 16));
    if (!FigCFEqual())
    {
      if (v7 >= 1)
      {
        Mutable = 0;
        v9 = 0;
        v10 = *MEMORY[0x1E695E480];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
          if (!Count || (v22.location = 0, v22.length = Count, !CFArrayContainsValue(a2, v22, ValueAtIndex)))
          {
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
            }

            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          ++v9;
        }

        while (v7 != v9);
        goto LABEL_21;
      }

LABEL_20:
      Mutable = 0;
LABEL_21:
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v13 = CFArrayGetValueAtIndex(a2, i);
          if (v7)
          {
            v23.location = 0;
            v23.length = v7;
            if (CFArrayContainsValue(v6, v23, v13))
            {
              continue;
            }
          }

          v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v14)
          {
            v14(v13, frpfanout_dequeueProviderAndEnqueueConsumers, a1, 0);
          }
        }
      }

      v15 = *(DerivedStorage + 16);
      *(DerivedStorage + 16) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      FigSimpleMutexUnlock();
      if (Mutable)
      {
        v16 = CFArrayGetCount(Mutable);
        if (v16 >= 1)
        {
          v17 = v16;
          for (j = 0; j != v17; ++j)
          {
            v19 = CFArrayGetValueAtIndex(Mutable, j);
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v20)
            {
              v20(v19, 0);
            }
          }
        }

        CFRelease(Mutable);
      }

      return;
    }
  }

  else if (!FigCFEqual())
  {
    v7 = 0;
    goto LABEL_20;
  }

  FigSimpleMutexUnlock();
}

__CFString *frpfanout_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigRenderPipelineForFanOutToArrayOfSampleBufferConsumers %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"SourceBufferQueue %@, SampleBufferConsumers %@", *DerivedStorage, DerivedStorage[2]);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t frpfanout_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(@"SourceSampleBufferQueue", a2))
  {
    return 4294954446;
  }

  if (*DerivedStorage)
  {
    v7 = CFRetain(*DerivedStorage);
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  *a4 = v7;
  return result;
}

double frpfanout_setProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  if (CFEqual(@"OutputArrayOfSampleBufferConsumers", a2))
  {
    if (a3 && (v7 = CFGetTypeID(a3), v7 != CFArrayGetTypeID()))
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< RP-FanOut >>>>", 312, v3);
    }

    else
    {
      frpfanout_gracefullySetArrayOfSampleBufferConsumers(a1, a3);
    }
  }

  else
  {
    CFEqual(@"Timebase", a2);
  }

  return result;
}

uint64_t frpfanout_resetOutput(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  frpfanout_resetOutputOfConsumers(a2);

  return FigSimpleMutexUnlock();
}