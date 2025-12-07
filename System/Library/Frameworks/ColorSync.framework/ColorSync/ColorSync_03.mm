__CFDictionary *CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

uint64_t ColorSyncNxMCreate(const void *a1, int a2, __int128 *a3, int a4, const __CFArray *a5, const __CFArray *a6)
{
  v12 = CFGetTypeID(a1);
  if (v12 != CFDataGetTypeID())
  {
    __assert_rtn("ColorSyncNxMCreate", "ColorSyncTransformFunctions.c", 852, "tableData != NULL && CFGetTypeID(tableData) == CFDataGetTypeID()");
  }

  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (Instance)
  {
    *(Instance + 80) = 0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 56) = CFRetain(a1);
    *(v14 + 16) = a2;
    v16 = *a3;
    v15 = a3[1];
    v17 = *(a3 + 8);
    if ((a4 & 4) != 0)
    {
      v18 = 0x3F80000000000000;
    }

    else
    {
      v18 = 0x7F7FFFFFFF7FFFFFLL;
    }

    *(v14 + 68) = v18;
    *(v14 + 52) = v17;
    *(v14 + 20) = v16;
    *(v14 + 36) = v15;
    if (a5)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a5, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, (v14 + 68));
      v20 = CFArrayGetValueAtIndex(a5, 1);
      CFNumberGetValue(v20, kCFNumberFloat32Type, (v14 + 72));
    }

    if ((a4 & 2) != 0)
    {
      v21 = 0x3F80000000000000;
    }

    else
    {
      v21 = 0x7F7FFFFFFF7FFFFFLL;
    }

    *(v14 + 76) = v21;
    if (a6)
    {
      v22 = CFArrayGetValueAtIndex(a6, 0);
      CFNumberGetValue(v22, kCFNumberFloat32Type, (v14 + 76));
      v23 = CFArrayGetValueAtIndex(a6, 1);
      CFNumberGetValue(v23, kCFNumberFloat32Type, (v14 + 80));
    }

    *(v14 + 64) = a4;
  }

  return v14;
}

uint64_t matrix_equal_matrix(char *cf, uint64_t a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    if (ColorSyncMatrixGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
    }

    if (v5 != ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID)
    {
      return 0;
    }

    v6 = CFGetTypeID(a2);
    if (ColorSyncMatrixGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
    }

    if (v6 != ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID)
    {
      return 0;
    }

    if (*(cf + 4) == *(a2 + 16))
    {
      v7 = 0;
      if ((vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(*(cf + 20), *(a2 + 20)), vceqq_f32(*(cf + 36), *(a2 + 36))))) & 1) == 0 || *(cf + 13) != *(a2 + 52) || *(cf + 14) != *(a2 + 56) || *(cf + 15) != *(a2 + 60))
      {
        return v7;
      }

      Properties = ColorSyncMatrixGetProperties(cf);
      if (Properties == ColorSyncMatrixGetProperties(a2))
      {
        InputRange = ColorSyncMatrixGetInputRange(cf);
        v10 = ColorSyncMatrixGetInputRange(a2);
        v7 = 0;
        if (InputRange == v10)
        {
          OutputRange = ColorSyncMatrixGetOutputRange(cf);
          v13 = v12;
          v14 = ColorSyncMatrixGetOutputRange(a2);
          return v13 == v15 && OutputRange == v14;
        }

        return v7;
      }
    }

    return 0;
  }

  return result;
}

__n128 ColorSyncNxMGetFunction@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v4 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetFunction", "ColorSyncTransformFunctions.c", 887, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  result = *(a1 + 20);
  v6 = *(a1 + 36);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = *(a1 + 52);
  return result;
}

uint64_t ColorSyncProfileProducesMatrixTransform(void *a1)
{
  v2 = ColorSyncProfileCreateWithName(kColorSyncSRGBProfile);
  colorsync_transform = create_colorsync_transform(v2, a1, 0);
  v4 = ColorSyncTransformIterate(colorsync_transform, 0, &__block_literal_global, &__block_literal_global_4, &__block_literal_global_8, &__block_literal_global_11);
  if (colorsync_transform)
  {
    CFRelease(colorsync_transform);
  }

  if (v4)
  {
    v5 = create_colorsync_transform(a1, v2, 0);
    v6 = ColorSyncTransformIterate(v5, 0, &__block_literal_global_14, &__block_literal_global_17, &__block_literal_global_20, &__block_literal_global_23);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v6;
}

BOOL InvertMatrix(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = -(*a1 * v6);
  v11 = v4 * -(v7 * v5) + *a1 * v5 * v9 + v4 * v3 * v8 + -(v3 * v2) * v9 + v2 * v6 * v7 + v10 * v8;
  v12 = fabs(v11);
  if (v12 >= 1.17549435e-38)
  {
    *a1 = (v5 * v9 - v8 * v6) / v11;
    a1[1] = (v8 * v4 - v2 * v9) / v11;
    a1[2] = (v2 * v6 - v5 * v4) / v11;
    a1[3] = (v9 * -v3 + v7 * v6) / v11;
    a1[4] = (v4 * -v7 + v1 * v9) / v11;
    a1[5] = (v10 + v3 * v4) / v11;
    a1[6] = (v3 * v8 - v7 * v5) / v11;
    a1[7] = (v8 * -v1 + v7 * v2) / v11;
    a1[8] = (v1 * v5 - v3 * v2) / v11;
  }

  return v12 >= 1.17549435e-38;
}

void ColorSyncLog(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v16 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    if (ColorSyncLog_predicate != -1)
    {
      dispatch_once(&ColorSyncLog_predicate, &__block_literal_global_1);
    }

    v4 = *MEMORY[0x1E695E480];
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s", a2);
    v6 = CFStringCreateWithFormatAndArguments(v4, 0, v5, va);
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (CStringPtr)
      {
        v8 = CStringPtr;
        v9 = 0;
      }

      else
      {
        Length = CFStringGetLength(v6);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v9 = malloc_type_calloc(MaximumSizeForEncoding, 1uLL, 0xFA682526uLL);
        if (v9 && CFStringGetCString(v6, v9, MaximumSizeForEncoding, 0x8000100u))
        {
          v8 = v9;
        }

        else
        {
          v8 = &unk_19AA95E0B;
        }
      }

      if (a1 == 3)
      {
        puts(v8);
      }

      else if (a1 == 2)
      {
        v12 = ColorSyncLog_log;
        if (os_log_type_enabled(ColorSyncLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v15 = v8;
          _os_log_error_impl(&dword_19A910000, v12, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
        }
      }

      else
      {
        v13 = ColorSyncLog_log;
        if (os_log_type_enabled(ColorSyncLog_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v15 = v8;
          _os_log_impl(&dword_19A910000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      free(v9);
      CFRelease(v6);
    }
  }
}

os_log_t __ColorSyncLog_block_invoke()
{
  MainBundleIfLooksLikeBundle = _CFBundleGetMainBundleIfLooksLikeBundle();
  if (MainBundleIfLooksLikeBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundleIfLooksLikeBundle);
    if (Identifier)
    {
      v2 = Identifier;
      Length = CFStringGetLength(Identifier);
      if (!CFStringGetCString(v2, fetch_process_name_name, 1024, 0x8000100u))
      {
        v5.location = 0;
        v5.length = Length;
        CFStringGetBytes(v2, v5, 0x600u, 0x3Fu, 0, fetch_process_name_name, 1024, 0);
      }
    }
  }

  if (!LOBYTE(fetch_process_name_name[0]))
  {
    strcpy(fetch_process_name_name, "Unknown process name");
  }

  result = os_log_create("com.apple.colorsync", fetch_process_name_name);
  ColorSyncLog_log = result;
  return result;
}

uint64_t ColorSyncEvaluateConstrainedHeadroomForReferenceWhiteToneMapping(const void *a1, _DWORD *a2, _DWORD *a3)
{
  v5 = 8.0;
  v6 = 0.0;
  v7 = 0.5;
  v8 = 1.0;
  v9 = 0.9;
  v10 = 0.35;
  v11 = 2.6667;
  if (a1)
  {
    v13 = CFGetTypeID(a1);
    if (v13 == CFDictionaryGetTypeID())
    {
      v26 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMSourcePeak", 1000.0);
      v25 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMSourceReferenceWhite", 203.0);
      v24 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMEDRHeadroom", 1.0);
      v23 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMTargetReferenceWhiteBase", 0.5);
      v11 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMReferenceWhiteThreshold", 2.6667);
      v14 = float_from_dictionary_with_default(a1, @"com.apple.cmm.ContentEDRStrength", 1.0);
      v15 = int32_from_dictionary_with_default(a1, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
      v6 = float_from_dictionary_with_default(a1, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
      v10 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMMinimumSDRExposure", 0.35);
      v16 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMOffsetAnchor", 2.6667);
      v17 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMHighlightsTradeOffRatio", 0.35);
      v9 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMMinimumGammaAdjustment", 0.9);
      v5 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMStopAnchor", 8.0);
      v18 = int32_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMVersion", 2);
      v20 = v25;
      v19 = v26;
      v7 = v23;
      v8 = v24;
      v21 = v18;
    }

    else
    {
      v15 = 0;
      v21 = 2;
      v19 = 1000.0;
      v20 = 203.0;
      v14 = 1.0;
      v16 = 2.6667;
      v17 = 0.35;
      v8 = 1.0;
      v7 = 0.5;
    }
  }

  else
  {
    v15 = 0;
    v21 = 2;
    v19 = 1000.0;
    v20 = 203.0;
    v14 = 1.0;
    v16 = 2.6667;
    v17 = 0.35;
  }

  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  CMMConvRWToneMapping::CMMConvRWToneMapping(v27, 1000.0, v19, v20, v8, v7, v11, v14, v15, v6, v21, 0, v10, v16, v17, v9, v5);
  if (a2)
  {
    *a2 = DWORD1(v28);
  }

  if (a3)
  {
    *a3 = v28;
  }

  return 1;
}

uint64_t xyFromTemp(unsigned int a1, double *a2, double *a3)
{
  *a2 = 0.0;
  *a3 = 0.0;
  if (a1 < 0xFA0)
  {
    return 0;
  }

  if (a1 >> 3 >= 0x36B)
  {
    if (a1 >> 3 > 0xC34)
    {
      return 0;
    }

    v4 = 0.23704;
    v5 = 247.48;
    v6 = 1901800.0;
    v7 = 2006400000.0;
  }

  else
  {
    v4 = 0.244063;
    v5 = 99.11;
    v6 = 2967800.0;
    v7 = 4607000000.0;
  }

  v8 = v5 / (a1 * 1.00055633) + v6 / (a1 * 1.00055633 * (a1 * 1.00055633)) - v7 / (a1 * 1.00055633 * (a1 * 1.00055633 * (a1 * 1.00055633))) + v4;
  *a2 = v8;
  *a3 = v8 * 2.87 + v8 * v8 * -3.0 + -0.2751;
  return 1;
}

void addAbstractA2B(ColorSyncProfile *a1, uint64_t a2, void (*a3)(float *, float *, float *, uint64_t), uint64_t a4)
{
  v8 = 6 * a2 * a2 * a2;
  Mutable = CFDataCreateMutable(0, v8 + 76);
  if (Mutable)
  {
    v10 = Mutable;
    CFDataSetLength(Mutable, v8 + 76);
    MutableBytePtr = CFDataGetMutableBytePtr(v10);
    if (MutableBytePtr)
    {
      v12 = MutableBytePtr;
      prof = a1;
      v13 = CFDataGetMutableBytePtr(v10);
      bzero(v12, v8 + 76);
      *v12 = 846489197;
      *(v13 + 4) = 771;
      v13[10] = a2;
      *(v13 + 44) = 0x200020000000100;
      *(v13 + 7) = 256;
      *(v13 + 3) = 256;
      v14 = &v13[v8];
      *(v13 + 31) = -1;
      *(v13 + 29) = -1;
      *(v13 + 27) = -1;
      *(v14 + 37) = -1;
      *(v14 + 35) = -1;
      *(v14 + 33) = -1;
      v15 = a2 - 1;
      if (a2 >= 1)
      {
        v16 = 0;
        v33 = 100.0 / v15;
        v17 = v13 + 64;
        v18 = 0.0;
        v19 = 256.0 / v15;
        do
        {
          v20 = 0;
          v34 = v18;
          v21 = v18;
          v22 = -128.0;
          do
          {
            v35 = v22;
            v23 = v22;
            v24 = -128.0;
            v25 = a2;
            do
            {
              v37 = v23;
              v38 = v21;
              v26 = v24;
              v36 = v26;
              a3(&v38, &v37, &v36, a4);
              v27 = (v38 * 652.8 + 0.5) & ~((v38 * 652.8 + 0.5) >> 31);
              if (v27 >= 65280)
              {
                v27 = 65280;
              }

              v28 = v37 + 128.0;
              *v17 = bswap32(v27) >> 16;
              v29 = (v28 * 255.0 + 0.5) & ~((v28 * 255.0 + 0.5) >> 31);
              if (v29 >= 0xFFFF)
              {
                v29 = 0xFFFF;
              }

              v30 = bswap32(v29) >> 16;
              v31 = ((v36 + 128.0) * 255.0 + 0.5) & ~(((v36 + 128.0) * 255.0 + 0.5) >> 31);
              if (v31 >= 0xFFFF)
              {
                v31 = 0xFFFF;
              }

              v17[1] = v30;
              v17[2] = bswap32(v31) >> 16;
              v17 += 3;
              v24 = v19 + v24;
              --v25;
            }

            while (v25);
            ++v20;
            v22 = v19 + v35;
          }

          while (v20 != a2);
          ++v16;
          v18 = v33 + v34;
        }

        while (v16 != a2);
      }

      ColorSyncProfileSetTag(prof, @"A2B0", v10);
    }

    CFRelease(v10);
  }
}

const ColorSyncProfile *makeAppleCopy(uint64_t a1, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, @"profileToCopy");
  if (result)
  {
    v4 = result;
    v5 = ColorSyncProfileCopyHeader(result);
    BytePtr = CFDataGetBytePtr(v5);
    if (BytePtr)
    {
      *(a1 + 8) = *(BytePtr + 8);
      *(a1 + 64) = *(BytePtr + 16);
      v7 = *(BytePtr + 84);
      v8 = *(BytePtr + 100);
      *(a1 + 112) = *(BytePtr + 7);
      *(a1 + 100) = v8;
      *(a1 + 84) = v7;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    ColorSyncProfileRemoveTag(v4, @"cprt");

    return CFRetain(v4);
  }

  return result;
}

ColorSyncProfile *makeCalGray(uint64_t a1, const __CFDictionary *a2)
{
  v4 = create(0, 0, 1, 0);
  if (v4)
  {
    qmemcpy((a1 + 12), "rtnmYARG ZYX", 12);
    v5 = icXYZFromDictionary(a2, @"wtpt");
    addXYZTag(v4, @"wtpt", v5, v6);
    if (CFDictionaryContainsKey(a2, @"bkpt") == 1)
    {
      v7 = icXYZFromDictionary(a2, @"bkpt");
      addXYZTag(v4, @"bkpt", v7, v8);
    }

    if (CFDictionaryContainsKey(a2, @"paraK") == 1)
    {
      gammaCurveFromDictionary(&v14, a2, @"paraK");
      v9.f64[0] = v15;
      v10.f64[0] = v17;
      v11.f64[0] = v19;
      ColorSyncProfileSetParametricTRCTag(v4, @"kTRC", v14, v9, v16, v10, v18, v11, v20, v21);
    }

    else
    {
      v12 = floatFromDictionary(a2, @"kGamma");
      addGammaTag(v4, @"kTRC", v12);
    }
  }

  return v4;
}

const ColorSyncProfile *makeConcatenated(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(cf, @"profileSequence");
  Link = ColorSyncProfileCreateLink(Value, 0);
  if (!Link)
  {
    return 0;
  }

  v7 = Link;
  MutableCopy = ColorSyncProfileCreateMutableCopy(Link);
  v9 = ColorSyncProfileCopyHeader(MutableCopy);
  if (v9)
  {
    v10 = v9;
    BytePtr = CFDataGetBytePtr(v9);
    if (BytePtr)
    {
      *(a1 + 12) = *(BytePtr + 12);
      *(a1 + 20) = *(BytePtr + 5);
    }

    CFRelease(v10);
  }

  v12 = CFDictionaryGetValue(cf, @"profileClass");
  if (v12)
  {
    *(a1 + 12) = classSignatureFromClassString(v12);
  }

  CFRelease(v7);
  return MutableCopy;
}

uint64_t makeTableBasedRGB(uint64_t a1, const void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = create(0, 0, 1, 0);
  v5 = CFGetTypeID(a2);
  if (v5 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a2, @"A2B0");
    v33 = Value;
    v34 = CFDictionaryGetValue(a2, @"A2B1");
    v7 = CFDictionaryGetValue(a2, @"A2B2");
    v35 = v7;
    if (!v34)
    {
      v34 = Value;
    }

    prof = v4;
    if (!v7)
    {
      v35 = Value;
    }

    v8 = CFDictionaryGetValue(a2, @"gridPoints");
    valuePtr = 0;
    CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
    for (i = 0; i != 3; ++i)
    {
      if (valuePtr)
      {
        v10 = *(&v33 + i);
        if (v10)
        {
          BytePtr = CFDataGetBytePtr(v10);
          if (BytePtr)
          {
            v12 = BytePtr;
            v13 = valuePtr;
            v14 = 6 * (v13 * v13 * v13);
            v15 = malloc_type_calloc((v14 + 81) & 0xFFFFFFFFCLL, 1uLL, 0x10000409C08D13AuLL);
            if (v15)
            {
              v16 = v15;
              *v15 = 846489197;
              *(v15 + 4) = 771;
              v15[10] = v13;
              *(v15 + 44) = 0x200020000000100;
              *(v15 + 7) = 256;
              *(v15 + 3) = 256;
              *(v15 + 31) = -1;
              *(v15 + 29) = -1;
              *(v15 + 27) = -1;
              if (v13)
              {
                v17 = 0;
                v18 = v15 + 64;
                v19 = 2;
                do
                {
                  v20 = 0;
                  v21 = v19;
                  do
                  {
                    v22 = v21;
                    v23 = v13;
                    do
                    {
                      v24 = bswap32(*&v12[2 * (v22 - 1)]);
                      v25 = bswap32(*&v12[2 * v22]);
                      *v18 = bswap32(*&v12[2 * (v22 - 2)]) >> 16;
                      v18[1] = HIWORD(v24);
                      v18[2] = HIWORD(v25);
                      v18 += 3;
                      ++v22;
                      --v23;
                    }

                    while (v23);
                    ++v20;
                    v21 += v13;
                  }

                  while (v20 != v13);
                  ++v17;
                  v19 += v13 * v13;
                }

                while (v17 != v13);
              }

              v26 = &v16[v14 + 52];
              *(v26 + 11) = -1;
              *(v26 + 9) = -1;
              *(v26 + 7) = -1;
              v27 = CFDataCreate(0, v16, (v14 + 81) & 0xFFFFFFFFCLL);
              free(v16);
              if (v27)
              {
                ColorSyncProfileSetTag(prof, off_1E7522DF0[i], v27);
                CFRelease(v27);
              }
            }
          }
        }
      }
    }

    v28 = CFDictionaryGetValue(a2, @"aapy");
    v4 = prof;
    if (v28)
    {
      ColorSyncProfileSetTag(prof, @"aapy", v28);
    }

    v29 = CFDictionaryGetValue(a2, @"profileClass");
    *(a1 + 16) = 0x58595A2052474220;
    addXYZTag(prof, @"wtpt", *(a1 + 68), *(a1 + 76));
    if (v29)
    {
      *(a1 + 12) = classSignatureFromClassString(v29);
    }
  }

  return v4;
}

void *makeByCopyingTags(uint64_t a1, const void *a2)
{
  v4 = create(0, 0, 1, 0);
  v5 = CFGetTypeID(a2);
  if (v5 == CFDictionaryGetTypeID() && CFDictionaryContainsKey(a2, @"tags"))
  {
    Value = CFDictionaryGetValue(a2, @"tags");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(v7, tag_adder, v4);
      }
    }

    v9 = CFDictionaryGetValue(a2, @"profileClass");
    if (v9)
    {
      *(a1 + 12) = classSignatureFromClassString(v9);
    }

    v10 = CFDictionaryGetValue(a2, @"profileColorSpace");
    if (v10)
    {
      *(a1 + 16) = ColorSyncGetFourCharCodeFromSignature(v10);
    }

    v11 = CFDictionaryGetValue(a2, @"profilePCS");
    if (v11)
    {
      *(a1 + 20) = ColorSyncGetFourCharCodeFromSignature(v11);
    }

    if (!ColorSyncProfileGetTag(v4, @"wtpt"))
    {
      addXYZTag(v4, @"wtpt", *(a1 + 68), *(a1 + 76));
    }
  }

  return v4;
}

ColorSyncProfile *makeCopyWithFlexGTC(uint64_t a1, CFDictionaryRef theDict)
{
  v90 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"profileToCopy");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  if (!ColorSyncProfileIsPQBased(Value))
  {
    return 0;
  }

  CICPInfo = ColorSyncProfileGetCICPInfo(v5);
  if (!CICPInfo)
  {
    return 0;
  }

  v7 = CICPInfo;
  v8 = *CICPInfo;
  MutableCopy = ColorSyncProfileCreateMutableCopy(v5);
  if (MutableCopy)
  {
    v85 = v8;
    v10 = CFDictionaryGetValue(theDict, kColorSyncPreGainMapCICP);
    if (v10 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFNumberGetTypeID()))
    {
      valuePtr.A = 0;
      if (CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr) == 1)
      {
        A = valuePtr.A;
      }

      else
      {
        A = 0;
      }
    }

    else
    {
      A = 0;
    }

    v15 = (A & 0xFF00) != 0 && A != 0;
    v16 = CFDictionaryGetValue(theDict, kColorSyncPostGainMapCICP);
    if (v16 && (v17 = v16, v18 = CFGetTypeID(v16), v18 == CFNumberGetTypeID()))
    {
      valuePtr.A = 0;
      if (CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr) == 1)
      {
        v19 = valuePtr.A;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = (v19 & 0xFF00) == 0 || v19 == 0;
    v21 = CFGetTypeID(theDict);
    if (v21 != CFDictionaryGetTypeID())
    {
      goto LABEL_88;
    }

    v83 = v15;
    v22 = CFDictionaryGetValue(theDict, kColorSyncMonoFlexGTCNodeTable);
    if (!v22)
    {
      goto LABEL_88;
    }

    v23 = v22;
    v24 = CFGetTypeID(v22);
    if (v24 != CFArrayGetTypeID())
    {
      goto LABEL_88;
    }

    Count = CFArrayGetCount(v23);
    if (Count < 1)
    {
      goto LABEL_88;
    }

    v26 = Count;
    v81 = v20;
    v82 = A;
    v27 = 1;
    theArray = v23;
    do
    {
      v28 = v26;
      ValueAtIndex = CFArrayGetValueAtIndex(v23, v27 - 1);
      if (!ValueAtIndex)
      {
        goto LABEL_88;
      }

      v30 = ValueAtIndex;
      v31 = CFGetTypeID(ValueAtIndex);
      if (v31 != CFDictionaryGetTypeID() || !verified_float_from_dictionary(v30, kColorSyncFlexGTCNodeX, 0) || !verified_float_from_dictionary(v30, kColorSyncFlexGTCNodeY, 0))
      {
        goto LABEL_88;
      }

      v32 = verified_float_from_dictionary(v30, kColorSyncFlexGTCNodeSlope, 0);
      v23 = theArray;
      v26 = v28;
      if ((v32 & 1) == 0)
      {
        break;
      }
    }

    while (v27++ < v28);
    if (((v28 != 0) & v32) == 0 || (v34 = malloc_type_calloc(1uLL, (12 * v28 + 158), 0x100004079E30E38uLL)) == 0)
    {
LABEL_88:
      CopyWithFlexGTCBasedA2B0 = 0;
      goto LABEL_89;
    }

    data = v34;
    v35 = CFDictionaryGetValue(theDict, kColorSyncMonoGainMapParams);
    if (v35)
    {
      v36 = v35;
      v37 = CFGetTypeID(v35);
      if (v37 == CFDictionaryGetTypeID())
      {
        len = (12 * v28 + 158);
        valuePtr.A = 0;
        if (verified_float_from_dictionary(v36, kColorSyncGainMapMin, &valuePtr))
        {
          v38 = valuePtr.A;
          if (verified_float_from_dictionary(v36, kColorSyncGainMapMax, &valuePtr))
          {
            v78 = valuePtr.A;
            if (verified_float_from_dictionary(v36, kColorSyncGainMapGamma, &valuePtr))
            {
              v77 = valuePtr.A;
              if (verified_float_from_dictionary(v36, kColorSyncGainMapBaselineConst, &valuePtr))
              {
                v76 = valuePtr.A;
                if (verified_float_from_dictionary(v36, kColorSyncGainMapAlternateConst, &valuePtr))
                {
                  v75 = valuePtr.A;
                  if (verified_float_from_dictionary(v36, kColorSyncGainMapBaselineHeadroom, &valuePtr))
                  {
                    v39 = valuePtr.A;
                    if (verified_float_from_dictionary(v36, kColorSyncGainMapAlternateHeadroom, &valuePtr))
                    {
                      v74 = valuePtr.A;
                      if (CFDictionaryContainsKey(v36, kColorSyncGUID) == 1)
                      {
                        v40 = CFDictionaryGetValue(v36, kColorSyncGUID);
                        if (!v40)
                        {
                          goto LABEL_87;
                        }

                        v41 = v40;
                        v73 = CFGetTypeID(v40);
                        if (v73 != CFUUIDGetTypeID())
                        {
                          goto LABEL_87;
                        }

                        *(data + 106) = CFUUIDGetUUIDBytes(v41);
                        *(data + 122) = bswap32(v38);
                        *(data + 126) = bswap32(v78);
                        *(data + 130) = bswap32(v77);
                        *(data + 134) = bswap32(v76);
                        *(data + 138) = bswap32(v75);
                        *(data + 142) = bswap32(v39);
                        *(data + 146) = bswap32(v74);
                      }

                      if (v83)
                      {
                        v42 = v82;
                      }

                      else
                      {
                        v42 = v85 & 0xFFFF00FF | 0x800;
                      }

                      if (v81)
                      {
                        v43 = 0;
                      }

                      else
                      {
                        v43 = 1711276032;
                      }

                      if (v81)
                      {
                        v19 = 0;
                      }

                      v44 = CFDictionaryGetValue(theDict, @"FlexGTC.based.A2B0");
                      v45 = *MEMORY[0x1E695E4D0];
                      v46 = bswap32(v42);
                      v47 = bswap32(v19);
                      *data = 1885433191;
                      *(data + 2) = 0;
                      *(data + 3) = bswap32(len);
                      *(data + 1) = xmmword_19A96E090;
                      *(data + 8) = v43;
                      *(data + 9) = -1778384896;
                      v48 = bswap32(12 * v28 + 8);
                      *(data + 10) = v48;
                      *(data + 11) = -1778384896;
                      *(data + 12) = v48;
                      *(data + 13) = -1778384896;
                      v86 = v45;
                      if (v44 == v45)
                      {
                        v49 = 809644609;
                      }

                      else
                      {
                        v49 = 0;
                      }

                      *(data + 14) = v48;
                      *(data + 15) = v49;
                      *(data + 8) = 0;
                      *(data + 98) = v46;
                      *(data + 102) = v47;
                      *(data + 150) = 0;
                      *(data + 154) = bswap32(v28);
                      v50 = malloc_type_calloc(v28, 0xCuLL, 0x10000403E1C8BA9uLL);
                      if (v50)
                      {
                        v51 = v50;
                        v52 = 0;
                        v53 = v50 + 2;
                        do
                        {
                          v54 = CFArrayGetValueAtIndex(theArray, v52);
                          valuePtr.A = 0;
                          verified_float_from_dictionary(v54, kColorSyncFlexGTCNodeX, &valuePtr);
                          *(v53 - 2) = bswap32(valuePtr.A);
                          verified_float_from_dictionary(v54, kColorSyncFlexGTCNodeY, &valuePtr);
                          *(v53 - 1) = bswap32(valuePtr.A);
                          verified_float_from_dictionary(v54, kColorSyncFlexGTCNodeSlope, &valuePtr);
                          *v53 = bswap32(valuePtr.A);
                          v53 += 3;
                          ++v52;
                        }

                        while (v28 != v52);
                        memcpy(data + 158, v51, 12 * v28);
                        free(v51);
                      }

                      v55 = CFDictionaryGetValue(theDict, kColorSyncMonoGainMapParams);
                      if (CFDictionaryGetValue(v55, kColorSyncGUID))
                      {
                        v56 = *(data + 106);
                        v57 = *(data + 114);
                      }

                      else
                      {
                        *md = 0;
                        v89 = 0;
                        memset(&valuePtr, 0, sizeof(valuePtr));
                        CC_MD5_Init(&valuePtr);
                        CC_MD5_Update(&valuePtr, data, len);
                        CC_MD5_Final(md, &valuePtr);
                        v56 = *md;
                        v57 = v89;
                      }

                      v58 = CFDataCreate(0, data, len);
                      if (v58)
                      {
                        v59 = v58;
                        ColorSyncProfileSetTag(MutableCopy, @"hdgm", v58);
                        CFRelease(v59);
                        v60 = CFDictionaryGetValue(theDict, kColorSyncFlexGTCName);
                        v61 = *v7 - 1 > 0xB ? @"Unknown primaries" : off_1E7522E08[(*v7 - 1)];
                        v62 = v7[1] - 1 > 0x11 ? 0 : *(&off_1E7522E68 + (v7[1] - 1));
                        v63 = CFStringCreateWithFormat(0, 0, @"%@; %@", v61, v62);
                        *&valuePtr.A = v56;
                        *&valuePtr.C = v57;
                        v64 = XXH64(&valuePtr);
                        v65 = @"Adaptive Gain Curve";
                        if (v60)
                        {
                          v65 = v60;
                        }

                        v66 = CFStringCreateWithFormat(0, 0, @"%@ %02X%02X%02X%02X%02X%02X%02X%02X", v65, v64, BYTE1(v64), BYTE2(v64), BYTE3(v64), BYTE4(v64), BYTE5(v64), BYTE6(v64), HIBYTE(v64));
                        v67 = CFStringCreateWithFormat(0, 0, @"%@ (%@)", v63, v66);
                        CFRelease(v63);
                        CFRelease(v66);
                        if (v67)
                        {
                          ColorSyncProfileRemoveTag(MutableCopy, @"dscm");
                          ColorSyncProfileSetDescriptionTag(MutableCopy, v67, 0);
                          CFRelease(v67);
                          v68 = ColorSyncProfileCopyHeader(v5);
                          if (v68)
                          {
                            v69 = v68;
                            v70 = CFGetTypeID(v68);
                            if (v70 == CFDataGetTypeID())
                            {
                              BytePtr = CFDataGetBytePtr(v69);
                              if (BytePtr)
                              {
                                if (*(BytePtr + 9) == 1633907568)
                                {
                                  *(a1 + 8) = *(BytePtr + 8);
                                  CFRelease(v69);
                                  free(data);
                                  if (CFDictionaryGetValue(theDict, @"FlexGTC.based.A2B0") != v86)
                                  {
                                    return MutableCopy;
                                  }

                                  CopyWithFlexGTCBasedA2B0 = makeCopyWithFlexGTCBasedA2B0(a1, theDict, MutableCopy);
                                  if (!CopyWithFlexGTCBasedA2B0)
                                  {
                                    return MutableCopy;
                                  }

LABEL_89:
                                  CFRelease(MutableCopy);
                                  return CopyWithFlexGTCBasedA2B0;
                                }
                              }
                            }

                            CFRelease(v69);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_87:
    free(data);
    goto LABEL_88;
  }

  return MutableCopy;
}

const ColorSyncProfile *makeCopyWithFlexGTCBasedA2B0(uint64_t a1, CFDictionaryRef theDict, const ColorSyncProfile *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"profileToCopy");
  if (a3)
  {
    MutableCopy = a3;
  }

  else
  {
    MutableCopy = Value;
  }

  if (!MutableCopy)
  {
    return MutableCopy;
  }

  if (!ColorSyncProfileIsPQBased(MutableCopy))
  {
    return 0;
  }

  valuePtr = 0;
  v8 = CFDictionaryGetValue(theDict, @"gridPoints");
  if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v9, kCFNumberLongLongType, &valuePtr);
    v11 = valuePtr;
  }

  else
  {
    v11 = 13;
  }

  if (v11 <= 5)
  {
    v11 = 5;
  }

  valuePtr = v11;
  v39 = CFDictionaryGetValue(theDict, @"FlexGTC.input.profile");
  v12 = *MEMORY[0x1E695E4D0];
  v40 = valuePtr;
  v13 = ColorSyncProfileCreateWithName(kColorSyncGenericXYZProfile);
  v62 = 0u;
  v63 = 0u;
  v56 = 0u;
  v55 = 0u;
  keys = @"com.apple.cmm.FlexGTCTargetHeadroom";
  LODWORD(v43[0]) = 1065353216;
  values = CFNumberCreate(0, kCFNumberFloatType, v43);
  v14 = MEMORY[0x1E695E9D8];
  v15 = MEMORY[0x1E695E9E8];
  v16 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *&v62 = @"com.apple.cmm.ApplyFlexLumaScaling";
  *&v55 = v16;
  v17 = CFDictionaryCreate(0, &v62, &v55, 1, v14, v15);
  *(&v62 + 1) = @"com.apple.cmm.ApplyToneMaping";
  *&v63 = @"com.apple.cmm.PQEOTFTable";
  *(&v55 + 1) = v17;
  *&v56 = v12;
  *(&v63 + 1) = @"com.apple.cmm.PQEOTFTableSize";
  LODWORD(v43[0]) = 1024;
  *(&v56 + 1) = CFNumberCreate(0, kCFNumberSInt32Type, v43);
  v18 = CFDictionaryCreate(0, &v62 + 1, &v55 + 1, 3, v14, v15);
  CFRelease(values);
  CFRelease(*(&v56 + 1));
  CFRelease(v16);
  CFRelease(v17);
  colorsync_transform = create_colorsync_transform(MutableCopy, v13, v18);
  if (v13)
  {
    CFRelease(v13);
  }

  v20 = pow(v40, 3.0);
  v21 = 3 * v20;
  v22 = (6 * v20) & 0xFFFFFFFFFFFFFFFCLL;
  v23 = malloc_type_calloc(1uLL, v22 + 6298, 0xB54B97A0uLL);
  if (v23)
  {
    v24 = v23;
    v23->i32[0] = 541213037;
    v23[1].i16[0] = 771;
    v23[3] = 0x2000001850;
    v25 = (v22 + 6248);
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2000000000;
    v53[3] = v23 + 4;
    v23[778].i8[2] = v40;
    v23[778].i8[1] = v40;
    v23[778].i8[0] = v40;
    v23[780].i8[0] = 2;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2000000000;
    v52[3] = v23 + 6244;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2000000000;
    v51[3] = v23 + v25;
    v23[3] = vrev32_s8(v23[3]);
    v23[2].i32[0] = bswap32(v25);
    keys = 0;
    *&v62 = &keys;
    *(&v62 + 1) = 0x6800000000;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    memset(v66, 0, sizeof(v66));
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2000000000;
    v50 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2000000000;
    v48 = malloc_type_calloc(1uLL, 4 * v21, 0x100004052888210uLL);
    if (v46[3])
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 0x40000000;
      v44[2] = __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke;
      v44[3] = &unk_1E7524588;
      v44[4] = &keys;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 0x40000000;
      v43[2] = __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_2;
      v43[3] = &unk_1E75245B0;
      v43[4] = &keys;
      v43[5] = v53;
      v43[6] = 1024;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 0x40000000;
      v42[2] = __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_3;
      v42[3] = &unk_1E75245D8;
      v42[4] = &keys;
      v42[5] = v51;
      v42[6] = v49;
      values = MEMORY[0x1E69E9820];
      *&v55 = 0x40000000;
      *(&v55 + 1) = __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_4;
      *&v56 = &unk_1E7524600;
      *(&v56 + 1) = &keys;
      v57 = v52;
      v59 = v49;
      v60 = v40;
      v58 = &v45;
      if (ColorSyncTransformIterate(colorsync_transform, v18, v44, v43, v42, &values))
      {
        v26 = CFDataCreate(0, v24, v22 + 6298);
        MutableCopy = ColorSyncProfileCreateMutableCopy(MutableCopy);
        ColorSyncProfileSetTag(MutableCopy, @"A2B0", v26);
        if (v26)
        {
          CFRelease(v26);
        }

        v27 = ColorSyncProfileCopyHeader(MutableCopy);
        if (v27)
        {
          v30 = v27;
          v31 = CFDataCreateMutableCopy(0, 0, v27);
          if (v31)
          {
            v32 = v31;
            MutableBytePtr = CFDataGetMutableBytePtr(v31);
            *(MutableBytePtr + 2) = 71303168;
            if (v39 == v12 && *(MutableBytePtr + 3) != 1935896178)
            {
              *(MutableBytePtr + 3) = 1935896178;
              ColorSyncProfileRemoveTag(MutableCopy, @"B2A0");
            }

            ColorSyncProfileSetHeader(MutableCopy, v32);
            CFRelease(v32);
            ColorSyncProfileRemoveTag(MutableCopy, @"lumi");
            ColorSyncProfileGetMD5(MutableCopy);
          }

          CFRelease(v30);
        }

        if (!ColorSyncProfileVerify(MutableCopy, v28, v29))
        {
          ColorSyncLog(2, "%s failed to create a valid profile", "ColorSyncMakeCopyWithLUTBasedLumaScaling");
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
            MutableCopy = 0;
          }
        }
      }

      else
      {
        ColorSyncLog(2, "ColorSyncTransformIterate failed in %s", "ColorSyncMakeCopyWithLUTBasedLumaScaling");
        MutableCopy = 0;
      }

      free(v46[3]);
    }

    else
    {
      MutableCopy = 0;
    }

    free(v24);
    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(v49, 8);
    _Block_object_dispose(&keys, 8);
    _Block_object_dispose(v51, 8);
    _Block_object_dispose(v52, 8);
    _Block_object_dispose(v53, 8);
    if (colorsync_transform)
    {
      goto LABEL_36;
    }
  }

  else
  {
    MutableCopy = 0;
    if (colorsync_transform)
    {
LABEL_36:
      CFRelease(colorsync_transform);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (MutableCopy)
  {
    v34 = ColorSyncProfileCopyHeader(MutableCopy);
    if (v34)
    {
      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v35);
        if (BytePtr)
        {
          if (*(BytePtr + 9) == 1633907568)
          {
            *(a1 + 8) = *(BytePtr + 8);
LABEL_48:
            CFRelease(v35);
            return MutableCopy;
          }
        }
      }

      CFRelease(MutableCopy);
    }

    else
    {
      v35 = MutableCopy;
    }

    MutableCopy = 0;
    goto LABEL_48;
  }

  return MutableCopy;
}

ColorSyncProfile *makeXYZProfile(uint64_t a1)
{
  v2 = create(0, 0, 1, 0);
  if (v2)
  {
    qmemcpy((a1 + 12), "caps ZYX ZYX", 12);
    v5 = 846489197;
    v6 = 131843;
    v7 = xmmword_19A96E0A0;
    v8 = xmmword_19A96E0A0;
    v10 = xmmword_19A96E5F0;
    v11 = unk_19A96E600;
    v12 = xmmword_19A96E610;
    v9 = 0x200020000000100;
    v14 = 0xFFFF0000FFFF0000;
    v13 = unk_19A96E620;
    v3 = CFDataCreateWithBytesNoCopy(0, &v5, 124, *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(v2, @"A2B0", v3);
    ColorSyncProfileSetTag(v2, @"B2A0", v3);
    CFRelease(v3);
    ColorSyncProfileSetDescriptionTag(v2, @"Custom XYZ Profile", 0);
    addXYZTag(v2, @"wtpt", *(a1 + 68), *(a1 + 76));
  }

  return v2;
}

ColorSyncProfile *makeLabProfile(uint64_t a1, const __CFDictionary *a2)
{
  v4 = create(0, 0, 1, 0);
  if (v4)
  {
    qmemcpy((a1 + 12), "caps baL baL", 12);
    v11 = 846489197;
    v12 = 131843;
    v13 = xmmword_19A96E0A0;
    v14 = xmmword_19A96E0A0;
    v16 = xmmword_19A96E5F0;
    v17 = unk_19A96E600;
    v18 = xmmword_19A96E610;
    v15 = 0x200020000000100;
    v20 = 0xFFFF0000FFFF0000;
    v19 = unk_19A96E620;
    v5 = CFDataCreateWithBytesNoCopy(0, &v11, 124, *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(v4, @"A2B0", v5);
    ColorSyncProfileSetTag(v4, @"B2A0", v5);
    CFRelease(v5);
    ColorSyncProfileSetDescriptionTag(v4, @"Custom Lab Profile", 0);
    v6 = icXYZFromDictionary(a2, @"wtpt");
    addXYZTag(v4, @"wtpt", v6, v7);
    v8 = icXYZFromDictionary(a2, @"bkpt");
    addXYZTag(v4, @"bkpt", v8, v9);
  }

  return v4;
}

const __CFNumber *verified_float_from_dictionary(const __CFDictionary *a1, const void *a2, _DWORD *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      result = CFNumberIsFloatType(v5);
      if (result)
      {
        valuePtr = 0;
        Value = CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr);
        result = (Value != 0);
        if (a3)
        {
          if (Value)
          {
            *a3 = valuePtr;
          }
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

uint64_t classSignatureFromClassString(const void *a1)
{
  v2 = 1935896178;
  v3 = CFGetTypeID(a1);
  if (v3 == CFStringGetTypeID())
  {
    if (CFEqual(a1, kColorSyncSigDisplayClass))
    {
      return 1835955314;
    }

    else if (CFEqual(a1, kColorSyncSigOutputClass))
    {
      return 1886549106;
    }

    else if (CFEqual(a1, kColorSyncSigLinkClass))
    {
      return 1818848875;
    }

    else if (CFEqual(a1, kColorSyncSigAbstractClass))
    {
      return 1633842036;
    }

    else if (CFEqual(a1, kColorSyncSigColorSpaceClass))
    {
      return 1936744803;
    }

    else if (CFEqual(a1, kColorSyncSigColorSpaceClass))
    {
      return 1852662636;
    }

    else
    {
      return 1935896178;
    }
  }

  return v2;
}

BOOL checkPrimaries(double *a1)
{
  result = 0;
  v3 = *a1;
  if (*a1 > 0.0)
  {
    v4 = a1[1];
    if (v4 > 0.0)
    {
      result = 0;
      if (v3 + v4 <= 1.0 && v3 + v4 * -2.0 < 0.2)
      {
        result = 0;
        if (v3 + v4 > 0.7 && v4 - v3 < 0.0)
        {
          result = 0;
          v5 = a1[2];
          if (v5 > 0.0)
          {
            v6 = a1[3];
            if (v6 > 0.0)
            {
              result = 0;
              if (v5 + v6 < 1.0 && v5 + v6 > 0.6 && v6 - v5 > 0.0)
              {
                result = 0;
                v7 = a1[4];
                if (v7 > 0.0)
                {
                  v8 = a1[5];
                  if (v8 > 0.0)
                  {
                    result = 0;
                    if (v7 + v8 < 1.0 && v7 + v8 * -2.0 < 0.2)
                    {
                      result = 0;
                      if (v7 + v8 < 0.5 && v8 - v7 < 0.2)
                      {
                        result = 0;
                        v9 = a1[6];
                        v10 = a1[7];
                        if (v9 + v10 < 0.9 && v9 + v10 > 0.4)
                        {
                          return fmax(v9 - v10, v10 - v9) < 0.1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CFIndex gammaTableFromDictionary(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFDataGetTypeID() || (CFDataGetLength(v3) & 1) != 0)
  {
    return 0;
  }

  v5 = CFDataGetLength(v3) / 2;
  CFDataGetBytePtr(v3);
  return v5;
}

float _LabToLabValsProc(float *a1, float *a2, float *a3, double *a4)
{
  v8 = a4[8];
  v9 = a4[9];
  if (v8 == 0.0 && v9 == 0.0)
  {
    v10 = *a3;
    v11 = 1.0;
  }

  else
  {
    v12 = v8;
    v13 = v9;
    v10 = *a3;
    v14 = atan2(v10, *a2) * 57.2957795;
    v15 = v14 < v12;
    v16 = v14 > v13;
    v17 = v14 > v13 || v14 < v12;
    v11 = 1.0;
    if (v12 > v13 && v15 && v16 || v12 < v13 && v17)
    {
      v11 = 0.0;
    }
  }

  v18 = *a1 / 100.0;
  v19 = (v18 * 2.0) + -1.0;
  v20 = (v18 * -2.0) + 2.0;
  if (v18 < 0.5)
  {
    v20 = v18 + v18;
  }

  v21 = (v18 * -2.0) + 1.0;
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if (v20 < 0.0)
  {
    v20 = 0.0;
  }

  if (v21 < 0.0)
  {
    v21 = 0.0;
  }

  v22 = a4[6];
  v23 = v10 + (v11 * v19) * a4[5];
  v24 = v23 + (v11 * v20) * a4[4];
  v25 = v24 + (v11 * v21) * a4[3];
  *a3 = v25;
  v26 = *a2;
  v27 = sqrtf((v25 * v25) + (v26 * v26));
  v28 = v11;
  v29 = a4[7] * v11;
  if (v29 <= 0.0)
  {
    v31 = (v29 / 100.0 + 1.0) * v27;
  }

  else
  {
    if (v27 >= 130.0)
    {
      goto LABEL_22;
    }

    v30 = v29 / 50.0 + 1.0;
    v31 = pow(v27 / -130.0 + 1.0, v30) * -130.0 + 130.0;
  }

  v27 = v31;
LABEL_22:
  v32 = 0.0 - v28 * *a4;
  v33 = 50.0 - v28 * a4[1];
  v34 = 100.0 - v28 * a4[2];
  v35 = v34 - v32;
  v36 = log(1.0 / ((v33 - v32) / (v34 - v32)));
  v37 = (*a1 - v32) / v35;
  v38 = 0.0;
  if (v37 >= 0.0)
  {
    if (v37 <= 1.0)
    {
      v39 = 0.693147181 / v36;
      v38 = pow(v37, v39) * 100.0;
    }

    else
    {
      v38 = 100.0;
    }
  }

  *a1 = v38;
  v40 = atan2(v25, v26) * 57.2957795;
  v41 = v40 + v28 * v22;
  v42 = v41 * 0.0174532925;
  v43 = __sincos_stret(v42);
  v44 = v43.__cosval * v27;
  *a2 = v44;
  result = v43.__sinval * v27;
  *a3 = result;
  return result;
}

CFStringRef colorSyncTransformCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v3 = *(a1 + 120);
      if (v3)
      {
        v9.length = CFArrayGetCount(v3);
        v9.location = 0;
        CFArrayApplyFunction(*(a1 + 120), v9, description_adder, Mutable);
      }
    }

    v4 = CFGetAllocator(a1);
    v5 = CFStringCreateWithFormat(v4, 0, @"<ColorSyncTransform %p;cmm:%@;\nproperties:%@;\noptions:%@;\nsequence:%@>", a1, *(a1 + 80), *(a1 + 112), *(a1 + 128), Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v5;
  }

  else
  {
    v7 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v7, 0, @"<NULL ColorSyncTransform>");
  }
}

void description_adder(const void *a1, __CFArray *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFDictionaryGetTypeID())
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
    if (MutableCopy)
    {
      v6 = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, kColorSyncProfile);
      if (Value)
      {
        v8 = ColorSyncProfileCopyDescriptionString(Value);
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(v6, kColorSyncProfile, v8);
          CFRelease(v9);
          CFArrayAppendValue(a2, v6);
        }
      }

      CFRelease(v6);
    }
  }
}

uint64_t colorSyncTransformEqual(void *cf, void *a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (!cf || !a2)
  {
    return result;
  }

  v5 = CFGetTypeID(cf);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v5 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    return 0;
  }

  v6 = CFGetTypeID(a2);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v6 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    return 0;
  }

  v7 = cf[15];
  v8 = a2[15];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = cf[14];
  v10 = a2[14];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a2[16];
  if (cf[16])
  {
    if (v11)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v11)
  {
    return 0;
  }

LABEL_21:
  if (v7 && v8)
  {
    result = CFEqual(v7, v8);
    if (!result)
    {
      return result;
    }

    v9 = cf[14];
  }

  if (!v9 || (v12 = a2[14]) == 0 || (result = CFEqual(v9, v12), result))
  {
    v13 = cf[16];
    if (!v13)
    {
      return 1;
    }

    v14 = a2[16];
    if (!v14)
    {
      return 1;
    }

    result = CFEqual(v13, v14);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void ColorSyncTransformSetProperty(ColorSyncTransformRef transform, CFTypeRef key, CFTypeRef property)
{
  if (!key || (v6 = CFGetTypeID(key), v6 != CFStringGetTypeID()) || !CFStringHasPrefix(key, @"com.apple.cmm") && !CFEqual(key, kColorSyncTransformCreator) && !CFEqual(key, kColorSyncTransformSrcSpace) && !CFEqual(key, kColorSyncTransformDstSpace))
  {

    ColorSyncTransformInternalSetProperty(transform, key, property);
  }
}

uint64_t ColorSyncTransformGetDstComponentCount(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

BOOL ColorSyncTransformConvert(ColorSyncTransformRef transform, size_t width, size_t height, void *dst, ColorSyncDataDepth dstDepth, ColorSyncDataLayout dstLayout, size_t dstBytesPerRow, const void *src, ColorSyncDataDepth srcDepth, ColorSyncDataLayout srcLayout, size_t srcBytesPerRow, CFDictionaryRef options)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!transform)
  {
    goto LABEL_11;
  }

  v14 = *&dstLayout;
  v15 = *&dstDepth;
  v20 = CFGetTypeID(transform);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v20 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    if ((v15 != 8 || !v14) && (srcDepth != kColorSync10BitInteger || !srcLayout))
    {
      v23 = src;
      v24[0] = dst;
      v21 = *(*(transform + 10) + 56);
      if (v21)
      {
        return v21(transform, width, height, 1, v24, v15, v14, dstBytesPerRow, 1, &v23, __PAIR64__(srcLayout, srcDepth), srcBytesPerRow, options);
      }
    }
  }

  else
  {
LABEL_11:
    ColorSyncLog(2, "ColorSync: ColorSyncTransform is not valid\n", height, dst, *&dstDepth, *&dstLayout, dstBytesPerRow, src);
  }

  return 0;
}

_OWORD *ColorSyncTransformCreateWithName(const void *a1)
{
  if (createRuntimeInstance(0x52474220u, 1380401696, 0))
  {
    ColorSyncCMMCreateAppleCMM();
    operator new();
  }

  return 0;
}

void sub_19A93F43C(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *(v2 - 88);
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        do
        {
          v6 = *v5;
          free(v5);
          v5 = v6;
        }

        while (v6);
      }
    }
  }

  else
  {
    v7 = *(v2 - 88);
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v9 = *v8;
          free(v8);
          v8 = v9;
        }

        while (v9);
      }
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19A93F34CLL);
}

CFTypeRef ColorSyncCreateCodeFragmentPriv(const void *a1, uint64_t a2)
{
  pthread_mutex_lock(&ColorSyncCreateCodeFragmentPriv_mtx);
  v4 = 0;
  if (a1 && ColorSyncCreateCodeFragmentPriv_lastSequence)
  {
    v4 = CFEqual(a1, ColorSyncCreateCodeFragmentPriv_lastSequence) != 0;
  }

  if (a2 | ColorSyncCreateCodeFragmentPriv_lastOptions)
  {
    v5 = 0;
    if (a2 && ColorSyncCreateCodeFragmentPriv_lastOptions)
    {
      v5 = CFEqual(a2, ColorSyncCreateCodeFragmentPriv_lastOptions) != 0;
    }
  }

  else
  {
    v5 = 1;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  if (!ColorSyncCreateCodeFragmentPriv_lastCodeFragment)
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_14:
    if (ColorSyncCreateCodeFragmentPriv_lastSequence)
    {
      CFRelease(ColorSyncCreateCodeFragmentPriv_lastSequence);
    }

    ColorSyncCreateCodeFragmentPriv_lastSequence = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (ColorSyncCreateCodeFragmentPriv_lastOptions)
    {
      CFRelease(ColorSyncCreateCodeFragmentPriv_lastOptions);
    }

    ColorSyncCreateCodeFragmentPriv_lastOptions = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (ColorSyncCreateCodeFragmentPriv_lastCodeFragment)
    {
      CFRelease(ColorSyncCreateCodeFragmentPriv_lastCodeFragment);
    }

    v7 = ColorSyncTransformCreate(a1, a2);
    v8 = v7;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, kColorSyncTransformCodeFragmentType);
      v10 = Value != 0;
      if (Value)
      {
        v11 = Value;
      }

      else
      {
        v11 = kColorSyncTransformParametricConversionData;
      }

      v12 = ColorSyncTransformInternalCopyProperty(v8, v11, a2);
    }

    else
    {
      v12 = ColorSyncTransformInternalCopyProperty(v7, kColorSyncTransformParametricConversionData, 0);
      v10 = 0;
    }

    ColorSyncCreateCodeFragmentPriv_lastCodeFragment = v12;
    if (!v10 && !v12)
    {
      v12 = ColorSyncTransformInternalCopyProperty(v8, kColorSyncTransformSimplifiedConversionData, a2);
      ColorSyncCreateCodeFragmentPriv_lastCodeFragment = v12;
    }

    if (v12)
    {
      v6 = CFRetain(v12);
      if (!v8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v6 = 0;
      if (!v8)
      {
        goto LABEL_36;
      }
    }

    CFRelease(v8);
    goto LABEL_36;
  }

  v6 = CFRetain(ColorSyncCreateCodeFragmentPriv_lastCodeFragment);
LABEL_36:
  pthread_mutex_unlock(&ColorSyncCreateCodeFragmentPriv_mtx);
  return v6;
}

ColorSyncTransformRef create_colorsync_transform(void *a1, void *a2, const __CFDictionary *a3)
{
  keys[5] = *MEMORY[0x1E69E9840];
  keys[0] = kColorSyncProfile;
  keys[1] = kColorSyncRenderingIntent;
  keys[2] = kColorSyncTransformTag;
  keys[3] = kColorSyncExtendedRange;
  keys[4] = 0;
  values[0] = a1;
  values[1] = kColorSyncRenderingIntentUseProfileHeader;
  v4 = *MEMORY[0x1E695E4C0];
  values[2] = kColorSyncTransformDeviceToPCS;
  values[3] = v4;
  values[4] = 0;
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  v7 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15[0] = kColorSyncProfile;
  v15[1] = kColorSyncRenderingIntent;
  v15[2] = kColorSyncTransformTag;
  v15[3] = kColorSyncExtendedRange;
  v14[0] = a2;
  v14[1] = kColorSyncRenderingIntentUseProfileHeader;
  v14[2] = kColorSyncTransformPCSToDevice;
  v14[3] = v4;
  v8 = CFDictionaryCreate(0, v15, v14, 4, v5, v6);
  v13[0] = v7;
  v13[1] = v8;
  v9 = CFArrayCreate(0, v13, 2, MEMORY[0x1E695E9C0]);
  CFRelease(v7);
  CFRelease(v8);
  v10 = ColorSyncTransformCreate(v9, a3);
  CFRelease(v9);
  return v10;
}

uint64_t ColorSyncDefaultsGetBoolean(const char *a1, char *a2)
{
  v4 = getenv(a1);
  if (v4)
  {
    v5 = CFStringCreateWithCString(0, v4, 0x600u);
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v10 = CFStringCreateWithCString(0, a1, 0x600u);
  v9 = v10;
  if (v10)
  {
    v11 = *MEMORY[0x1E695E8B8];
    v12 = *MEMORY[0x1E695E898];
    v13 = CFPreferencesCopyValue(v10, *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (!v13)
    {
      v13 = CFPreferencesCopyValue(v9, *MEMORY[0x1E695E890], v11, v12);
      if (!v13)
      {
        v13 = CFPreferencesCopyValue(v9, @"com.apple.ColorSync", v11, v12);
      }
    }

    v5 = v13;
    CFRelease(v9);
    if (v5)
    {
LABEL_3:
      v6 = CFGetTypeID(v5);
      if (v6 == CFBooleanGetTypeID())
      {
        if (a2)
        {
          v7 = CFBooleanGetValue(v5) == 0;
LABEL_6:
          v8 = !v7;
          *a2 = v8;
        }
      }

      else
      {
        if (v6 == CFStringGetTypeID())
        {
          if (CFStringCompare(v5, @"Yes", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"True", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"1", 1uLL) == kCFCompareEqualTo)
          {
            v9 = 1;
            if (a2)
            {
              *a2 = 1;
            }

            goto LABEL_31;
          }

          if (CFStringCompare(v5, @"No", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"False", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo)
          {
            if (a2)
            {
              *a2 = 0;
            }

            goto LABEL_10;
          }
        }

        if (v6 != CFNumberGetTypeID() || (valuePtr = 0, !CFNumberGetValue(v5, kCFNumberIntType, &valuePtr)))
        {
          v9 = 0;
          goto LABEL_31;
        }

        if (a2)
        {
          v7 = valuePtr == 0;
          goto LABEL_6;
        }
      }

LABEL_10:
      v9 = 1;
LABEL_31:
      CFRelease(v5);
      return v9;
    }

    return 0;
  }

  return v9;
}

CFStringRef colorSyncProfileCopyDebugDescription(const ColorSyncProfile *a1)
{
  if (a1)
  {
    v2 = ColorSyncProfileCopyDescriptionString(a1);
    if (v2)
    {
      v3 = v2;
      v4 = ColorSyncProfileCopyHeader(a1);
      v5 = v4;
      if (v4 && (v6 = CFGetTypeID(v4), v6 == CFDataGetTypeID()) && CFDataGetLength(v5) >= 0x80)
      {
        Mutable = CFStringCreateMutable(0, 0);
        if (Mutable)
        {
          BytePtr = CFDataGetBytePtr(v5);
          CFStringAppendFormat(Mutable, 0, @"\n\tProfile size:\t%d", *BytePtr);
          CFStringAppendFormat(Mutable, 0, @"\n\tVersion:\t\t%x", *(BytePtr + 2));
          v9 = *(BytePtr + 3);
          v10 = @"???";
          if (v9 <= 1852662635)
          {
            switch(v9)
            {
              case 1633842036:
                v10 = @"Abstract profile";
                break;
              case 1818848875:
                v10 = @"Link profile";
                break;
              case 1835955314:
                v10 = @"Display profile";
                break;
            }
          }

          else if (v9 > 1935896177)
          {
            if (v9 == 1936744803)
            {
              v10 = @"Color Space profile";
            }

            else if (v9 == 1935896178)
            {
              v10 = @"Input profile";
            }
          }

          else if (v9 == 1852662636)
          {
            v10 = @"Named Color profile";
          }

          else if (v9 == 1886549106)
          {
            v10 = @"Output profile";
          }

          CFStringAppendFormat(Mutable, 0, @"\n\tClass:\t\t\t%@", v10);
          v17 = color_space(*(BytePtr + 4));
          CFStringAppendFormat(Mutable, 0, @"\n\tColor Space:\t%@", v17);
          v18 = color_space(*(BytePtr + 5));
          CFStringAppendFormat(Mutable, 0, @"\n\tPCS:\t\t\t%@", v18);
        }
      }

      else
      {
        Mutable = 0;
      }

      v13 = ColorSyncProfileCopyTagSignatures(a1);
      v14 = CFGetAllocator(a1);
      v15 = CFStringCreateWithFormat(v14, 0, @"<ColorSyncProfile %p\nheader:%@\ntags:\n%@;\ntagCopies:\n%@;\ndata: %@;\nurl:  %@;\ndesc: %@>", a1, Mutable, v13, *(a1 + 13), *(a1 + 14), *(a1 + 16), v3);
      if (v5)
      {
        CFRelease(v5);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      CFRelease(v3);
      return v15;
    }

    v11 = CFGetAllocator(a1);
    v12 = @"<NULL ColorSyncProfile description>";
  }

  else
  {
    v11 = CFGetAllocator(0);
    v12 = @"<NULL ColorSyncProfile>";
  }

  return CFStringCreateWithFormat(v11, 0, v12);
}

__CFString *color_space(int a1)
{
  v1 = @"???";
  if (a1 <= 1129142602)
  {
    if (a1 > 943934545)
    {
      v2 = 1111706705;
      v4 = @"11 Color";
      v13 = @"CMY";
      if (a1 != 1129142560)
      {
        v13 = @"???";
      }

      if (a1 == 1128483922)
      {
        v14 = @"12 Color";
      }

      else
      {
        v14 = v13;
      }

      if (a1 != 1111706706)
      {
        v4 = v14;
      }

      v7 = 943934546;
      v8 = @"2 Color";
      v9 = @"8 Color";
      v10 = 960711762;
      v11 = a1 == 1094929490;
      v12 = @"10 Color";
    }

    else
    {
      v2 = 893602897;
      v4 = @"5 Color";
      v5 = @"7 Color";
      if (a1 != 927157330)
      {
        v5 = @"???";
      }

      if (a1 == 910380114)
      {
        v6 = @"6 Color";
      }

      else
      {
        v6 = v5;
      }

      if (a1 != 893602898)
      {
        v4 = v6;
      }

      v7 = 843271250;
      v8 = @"2 Color";
      v9 = @"3 Color";
      v10 = 860048466;
      v11 = a1 == 876825682;
      v12 = @"4 Color";
    }

    goto LABEL_39;
  }

  if (a1 <= 1213421087)
  {
    v2 = 1178815569;
    v4 = @"15 Color";
    v15 = @"HLS";
    if (a1 != 1212961568)
    {
      v15 = @"???";
    }

    if (a1 == 1196573017)
    {
      v16 = @"GRAY";
    }

    else
    {
      v16 = v15;
    }

    if (a1 != 1178815570)
    {
      v4 = v16;
    }

    v7 = 1129142603;
    v8 = @"CMYK";
    v9 = @"13 Color";
    v10 = 1145261138;
    v11 = a1 == 1162038354;
    v12 = @"14 Color";
LABEL_39:
    if (v11)
    {
      v1 = v12;
    }

    if (a1 == v10)
    {
      v1 = v9;
    }

    if (a1 == v7)
    {
      v1 = v8;
    }

    goto LABEL_45;
  }

  if (a1 > 1380401695)
  {
    v2 = 1497588337;
    v3 = @"Yxy";
    if (a1 != 1501067552)
    {
      v3 = @"???";
    }

    if (a1 == 1497588338)
    {
      v4 = @"YCbCr";
    }

    else
    {
      v4 = v3;
    }

    if (a1 == 1482250784)
    {
      v1 = @"XYZ";
    }

    if (a1 == 1380401696)
    {
      v1 = @"RGB";
    }

LABEL_45:
    if (a1 <= v2)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  if (a1 == 1282766368)
  {
    v1 = @"Luv";
  }

  if (a1 == 1281450528)
  {
    v1 = @"Lab";
  }

  if (a1 == 1213421088)
  {
    return @"HSV";
  }

  else
  {
    return v1;
  }
}

int8x16_t ColorSyncSwapProfileHeader(uint64_t a1)
{
  *a1 = vrev32q_s8(*a1);
  v1 = vrev16_s8(*(a1 + 24));
  *(a1 + 16) = vrev32_s8(*(a1 + 16));
  *(a1 + 24) = v1;
  *(a1 + 32) = bswap32(*(a1 + 32)) >> 16;
  *(a1 + 34) = bswap32(*(a1 + 34)) >> 16;
  *(a1 + 36) = vrev32q_s8(*(a1 + 36));
  *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  result = vrev32q_s8(*(a1 + 68));
  *(a1 + 68) = result;
  return result;
}

CFTypeRef copyLoacalizedStringFromResources(const __CFString *cf, int a2)
{
  v3 = cf;
  if (copyLoacalizedStringFromResources_predicate != -1)
  {
    dispatch_once(&copyLoacalizedStringFromResources_predicate, &__block_literal_global_546);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!cf)
  {
    return 0;
  }

LABEL_3:
  if (copyLoacalizedStringFromResources_csBundle)
  {
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(copyLoacalizedStringFromResources_csBundle, v3);
    v5 = a2 ? v3 : 0;
    v3 = ValueForInfoDictionaryKey ? ValueForInfoDictionaryKey : v5;
    if (!v3)
    {
      return 0;
    }
  }

  return CFRetain(v3);
}

CFBundleRef __copyLoacalizedStringFromResources_block_invoke()
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.ColorSync");
  copyLoacalizedStringFromResources_csBundle = result;
  return result;
}

uint64_t findDescByLanguage(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  result = CFStringHasPrefix(a1, *a3);
  if (result)
  {
    *(a3 + 8) = a2;
  }

  return result;
}

CFDataRef *system_profile_for_profile_from_data(CFDataRef *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!result[14] || *(result + 39))
  {
    return 0;
  }

  if (*(CFDataGetBytePtr(result[15]) + 4) == 1380401696)
  {
    if (ColorSyncProfileContainsTag(v1, @"aarg") && ColorSyncProfileContainsTag(v1, @"aagg") && ColorSyncProfileContainsTag(v1, @"aabg") && ColorSyncProfileContainsTag(v1, @"aaRc") && ColorSyncProfileContainsTag(v1, @"aaGc") && ColorSyncProfileContainsTag(v1, @"aaBc"))
    {
      Tag = getTag(v1, @"aarg");
      v3 = getTag(v1, @"aagg");
      v4 = getTag(v1, @"aabg");
      LODWORD(v5) = 0;
      if (Tag)
      {
        if (v3)
        {
          v6 = v4;
          if (v4)
          {
            if (CFEqual(Tag, v3) == 1 && CFEqual(v3, v6))
            {
              BytePtr = CFDataGetBytePtr(Tag);
              v8 = Tag;
              v9 = BytePtr;
              LODWORD(v5) = 0;
              if (CFDataGetLength(v8) >= 0xC && v9)
              {
                if (get_preliminary_PQ_curve_data_predicate != -1)
                {
                  dispatch_once(&get_preliminary_PQ_curve_data_predicate, &__block_literal_global_555);
                }

                if (get_preliminary_PQ_curve_data_preliminary_PQ_data == *v9 && dword_1EAFE00E0 == *(v9 + 2))
                {
                  LODWORD(v5) = 16;
                }

                else
                {
                  if (get_preliminary_HLG_curve_data_predicate != -1)
                  {
                    dispatch_once(&get_preliminary_HLG_curve_data_predicate, &__block_literal_global_558);
                  }

                  if (get_preliminary_HLG_curve_data_preliminary_HLG_data ^ *v9 | dword_1EAFE00F8 ^ *(v9 + 2))
                  {
                    LODWORD(v5) = 0;
                  }

                  else
                  {
                    LODWORD(v5) = 18;
                  }
                }
              }
            }

            else
            {
              LODWORD(v5) = 0;
            }
          }
        }
      }

      v26 = ColorSyncProfileGetTag(v1, @"aaRc");
      v27 = ColorSyncProfileGetTag(v1, @"aaGc");
      v28 = @"aaBc";
LABEL_59:
      v29 = ColorSyncProfileGetTag(v1, v28);
      v30 = primaries_from_tag_data(v26, v27, v29);
      result = system_profile_from_cicp(v30, v5);
LABEL_60:
      if (result)
      {
        return result;
      }

      goto LABEL_61;
    }

    if (ColorSyncProfileContainsTag(v1, @"hdTF"))
    {
      v11 = ColorSyncProfileGetTag(v1, @"hdTF");
      v5 = v11;
      if (v11)
      {
        v12 = CFDataGetBytePtr(v11);
        Length = CFDataGetLength(v5);
        LODWORD(v5) = 0;
        if (v12)
        {
          if (Length >= 0xC)
          {
            if (*v12 == 543648115)
            {
              v14 = *(v12 + 2);
              if (v14 == 541543496)
              {
                v15 = 18;
              }

              else
              {
                v15 = 0;
              }

              if (v14 == 538988880)
              {
                LODWORD(v5) = 16;
              }

              else
              {
                LODWORD(v5) = v15;
              }
            }

            else
            {
              LODWORD(v5) = 0;
            }
          }
        }
      }

      v26 = ColorSyncProfileGetTag(v1, @"rXYZ");
      v27 = ColorSyncProfileGetTag(v1, @"gXYZ");
      v28 = @"bXYZ";
      goto LABEL_59;
    }

    LegacyDisplayP3 = ColorSyncProfileCreateLegacyDisplayP3();
    MD5 = ColorSyncProfileGetMD5(LegacyDisplayP3);
    Legacy2DisplayP3 = ColorSyncProfileCreateLegacy2DisplayP3();
    v19 = ColorSyncProfileGetMD5(Legacy2DisplayP3);
    v20 = v1[17];
    v21 = v1[18];
    v23 = v20 != *MD5.digest || v21 != *&MD5.digest[8];
    v25 = v20 != *v19.digest || v21 != *&v19.digest[8];
    if (!v23 || !v25)
    {
      result = create_DisplayP3Profile();
      goto LABEL_60;
    }
  }

LABEL_61:

  return ColorSyncProfileFindMatchingSystemProfile(v1);
}

void evaluate_cicp(uint64_t a1)
{
  if (!a1 || !*(a1 + 112) || *(a1 + 156) || *(CFDataGetBytePtr(*(a1 + 120)) + 4) != 1380401696 || ColorSyncProfileGetCICPInfo(a1))
  {
    return;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID || ColorSyncProfileGetCICPInfo(a1))
  {
    return;
  }

  v3 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v3 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
LABEL_64:
    v22 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v22 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v23 = 0;
      while (1)
      {
        Tag = ColorSyncProfileGetTag(a1, off_1E7524508[v23]);
        if (!Tag)
        {
          break;
        }

        v25 = Tag;
        BytePtr = CFDataGetBytePtr(Tag);
        if (CFDataGetLength(v25) < 0x14)
        {
          break;
        }

        if (v23 == 2)
        {
          if (ColorSyncProfileGetDisplayP3BluePrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDisplayP3BluePrimary_predicate, &__block_literal_global_337);
          }

          v27 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
        }

        else if (v23 == 1)
        {
          if (ColorSyncProfileGetDisplayP3GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDisplayP3GreenPrimary_predicate, &__block_literal_global_334);
          }

          v27 = &ColorSyncProfileGetDisplayP3GreenPrimary_gXYZ;
        }

        else
        {
          if (ColorSyncProfileGetDisplayP3RedPrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetDisplayP3RedPrimary_predicate, &__block_literal_global_331);
          }

          v27 = &ColorSyncProfileGetDisplayP3RedPrimary_rXYZ;
        }

        v28 = *v27;
        v29 = *(v27 + 1);
        v30 = *(v27 + 4);
        v33 = v28 != *BytePtr || v29 != *(BytePtr + 1) || v30 != *(BytePtr + 4);
        if (v23 <= 1)
        {
          ++v23;
          if (!v33)
          {
            continue;
          }
        }

        if (v33)
        {
          break;
        }

        if (ColorSyncProfileHasSRGB_Transfer(a1))
        {
          v21 = 5;
          goto LABEL_149;
        }

        if (ColorSyncProfileHasLinear_Transfer(a1))
        {
          v21 = 6;
          goto LABEL_149;
        }

        if (ColorSyncProfileIsPQBased(a1))
        {
          v21 = 7;
          goto LABEL_149;
        }

        v46 = !ColorSyncProfileIsHLGBased(a1);
        v47 = 9;
        goto LABEL_145;
      }
    }

    v34 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v34 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v35 = 0;
      while (1)
      {
        v36 = ColorSyncProfileGetTag(a1, off_1E7524508[v35]);
        if (!v36)
        {
          break;
        }

        v37 = v36;
        v38 = CFDataGetBytePtr(v36);
        if (CFDataGetLength(v37) < 0x14)
        {
          break;
        }

        if (v35 == 2)
        {
          if (ColorSyncProfileGetBT2020BluePrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetBT2020BluePrimary_predicate, &__block_literal_global_328);
          }

          v39 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
        }

        else if (v35 == 1)
        {
          if (ColorSyncProfileGetBT2020GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetBT2020GreenPrimary_predicate, &__block_literal_global_325);
          }

          v39 = &ColorSyncProfileGetBT2020GreenPrimary_gXYZ;
        }

        else
        {
          if (ColorSyncProfileGetBT2020RedPrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetBT2020RedPrimary_predicate, &__block_literal_global_322);
          }

          v39 = &ColorSyncProfileGetBT2020RedPrimary_rXYZ;
        }

        v40 = *v39;
        v41 = *(v39 + 1);
        v42 = *(v39 + 4);
        v45 = v40 != *v38 || v41 != *(v38 + 1) || v42 != *(v38 + 4);
        if (v35 <= 1)
        {
          ++v35;
          if (!v45)
          {
            continue;
          }
        }

        if (v45)
        {
          return;
        }

        if (ColorSyncProfileHasBT709_Transfer(a1))
        {
          v21 = 9;
          goto LABEL_149;
        }

        if (ColorSyncProfileHasLinear_Transfer(a1))
        {
          v21 = 10;
          goto LABEL_149;
        }

        if (ColorSyncProfileIsPQBased(a1))
        {
          v21 = 11;
          goto LABEL_149;
        }

        if (ColorSyncProfileIsHLGBased(a1))
        {
          v21 = 12;
          goto LABEL_149;
        }

        v46 = !ColorSyncProfileHasSRGB_Transfer(a1);
        v47 = 14;
        goto LABEL_145;
      }
    }

    return;
  }

  v4 = 0;
  do
  {
    v5 = ColorSyncProfileGetTag(a1, off_1E7524508[v4]);
    if (!v5)
    {
      goto LABEL_64;
    }

    v6 = v5;
    v7 = CFDataGetBytePtr(v5);
    if (CFDataGetLength(v6) < 0x14)
    {
      goto LABEL_64;
    }

    if (v4 == 2)
    {
      if (ColorSyncProfileGetBT709BluePrimary_predicate != -1)
      {
        dispatch_once(&ColorSyncProfileGetBT709BluePrimary_predicate, &__block_literal_global_319);
      }

      v18 = ColorSyncProfileGetBT709BluePrimary_bXYZ == *v7 && *(&ColorSyncProfileGetBT709BluePrimary_bXYZ + 1) == *(v7 + 1) && dword_1ED4E2600 == *(v7 + 4);
      v10 = "XYZ ";
      if (v18)
      {
LABEL_46:
        v16 = 1;
        goto LABEL_47;
      }
    }

    else if (v4 == 1)
    {
      if (ColorSyncProfileGetBT709GreenPrimary_predicate != -1)
      {
        dispatch_once(&ColorSyncProfileGetBT709GreenPrimary_predicate, &__block_literal_global_316);
      }

      v9 = ColorSyncProfileGetBT709GreenPrimary_gXYZ == *v7 && *(&ColorSyncProfileGetBT709GreenPrimary_gXYZ + 1) == *(v7 + 1) && dword_1ED4E25E0 == *(v7 + 4);
      v10 = "XYZ ";
      if (v9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (ColorSyncProfileGetBT709RedPrimary_predicate[0] != -1)
      {
        dispatch_once(ColorSyncProfileGetBT709RedPrimary_predicate, &__block_literal_global_313);
      }

      v20 = ColorSyncProfileGetBT709RedPrimary_rXYZ == *v7 && *(&ColorSyncProfileGetBT709RedPrimary_rXYZ + 1) == *(v7 + 1) && dword_1ED4E25B0 == *(v7 + 4);
      v10 = "XYZ ";
      if (v20)
      {
        goto LABEL_46;
      }
    }

    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 4);
    v16 = v11 == *v7 && v12 == *(v7 + 1) && v13 == *(v7 + 4);
LABEL_47:
    if (v4 > 1)
    {
      break;
    }

    ++v4;
  }

  while (v16);
  if (!v16)
  {
    goto LABEL_64;
  }

  if (ColorSyncProfileHasBT709_Transfer(a1))
  {
    v21 = 0;
LABEL_149:
    *(a1 + 248) = &valid_cicp + 4 * v21;
    return;
  }

  if (ColorSyncProfileIsPQBased(a1))
  {
    v21 = 1;
    goto LABEL_149;
  }

  if (ColorSyncProfileIsHLGBased(a1))
  {
    v21 = 2;
    goto LABEL_149;
  }

  if (ColorSyncProfileHasSRGB_Transfer(a1))
  {
    v21 = 3;
    goto LABEL_149;
  }

  v46 = !ColorSyncProfileHasLinear_Transfer(a1);
  v47 = 5;
LABEL_145:
  if (v46)
  {
    v47 = 0;
  }

  v21 = v47 - 1;
  if (v21 <= 0xD)
  {
    goto LABEL_149;
  }
}

uint64_t primaries_from_tag_data(CFTypeRef cf1, const void *a2, const void *a3)
{
  if (tags_define_709_primaries_predicate != -1)
  {
    dispatch_once(&tags_define_709_primaries_predicate, &__block_literal_global_615);
  }

  if (cf1)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || a3 == 0;
  v8 = !v7;
  if (!v7 && CFEqual(cf1, tags_define_709_primaries_r709) && CFEqual(a2, tags_define_709_primaries_g709) && CFEqual(a3, tags_define_709_primaries_b709))
  {
    return 1;
  }

  if (tags_define_DisplayP3_primaries_predicate == -1)
  {
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    dispatch_once(&tags_define_DisplayP3_primaries_predicate, &__block_literal_global_618);
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (CFEqual(cf1, tags_define_DisplayP3_primaries_rDP3) && CFEqual(a2, tags_define_DisplayP3_primaries_gDP3) && CFEqual(a3, tags_define_DisplayP3_primaries_bDP3))
  {
    return 12;
  }

LABEL_24:
  if (tags_define_BT2020_primaries_predicate != -1)
  {
    dispatch_once(&tags_define_BT2020_primaries_predicate, &__block_literal_global_621);
    if (v8)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

LABEL_26:
  result = CFEqual(cf1, tags_define_BT2020_primaries_r2020);
  if (result)
  {
    result = CFEqual(a2, tags_define_BT2020_primaries_g2020);
    if (result)
    {
      if (CFEqual(a3, tags_define_BT2020_primaries_b2020))
      {
        return 9;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

ColorSyncProfileRef system_profile_from_cicp(int a1, int a2)
{
  if (a2 == 18)
  {
    switch(a1)
    {
      case 1:
        v2 = kColorSyncITUR709_HLGProfile;
        return ColorSyncProfileCreateWithName(*v2);
      case 12:
        v2 = kColorSyncDisplayP3_HLGProfile;
        return ColorSyncProfileCreateWithName(*v2);
      case 9:
        v2 = kColorSyncITUR2100_HLGProfile;
        return ColorSyncProfileCreateWithName(*v2);
    }

    return 0;
  }

  if (a2 != 16)
  {
    return 0;
  }

  if (a1 == 1)
  {
    v2 = kColorSyncITUR709_PQProfile;
    return ColorSyncProfileCreateWithName(*v2);
  }

  if (a1 == 12)
  {
    v2 = kColorSyncDisplayP3_PQProfile;
    return ColorSyncProfileCreateWithName(*v2);
  }

  if (a1 != 9)
  {
    return 0;
  }

  v2 = kColorSyncITUR2100_PQProfile;
  return ColorSyncProfileCreateWithName(*v2);
}

const void *__tags_define_709_primaries_block_invoke()
{
  v0 = ColorSyncProfileCreateWithName(kColorSyncSRGBProfile);
  tags_define_709_primaries_r709 = ColorSyncProfileGetTag(v0, @"rXYZ");
  tags_define_709_primaries_g709 = ColorSyncProfileGetTag(v0, @"gXYZ");
  result = ColorSyncProfileGetTag(v0, @"bXYZ");
  tags_define_709_primaries_b709 = result;
  return result;
}

void *ColorSyncProfileCreateSingleton(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  v11 = create(a1, a2, 2, a6);
  v12 = v11;
  if (v11)
  {
    v11[17] = a3;
    v11[18] = a4;
    if (a5)
    {
      v11[16] = CFURLCreateWithFileSystemPath(0, a5, kCFURLPOSIXPathStyle, 0);
    }

    if ((a7 - 1) <= 0xD)
    {
      v12[31] = &valid_cicp + 4 * a7 - 4;
    }
  }

  return v12;
}

char *__use_xpc_only_block_invoke()
{
  result = getenv("COLORSYNC_XPC_ONLY");
  if (result)
  {
    use_xpc_only_xpc_only = 1;
  }

  return result;
}

uint64_t ColorSyncProfileCreateWithURLAndOptions(const void *a1, CFDictionaryRef theDict, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_12;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFURLGetTypeID())
  {
    goto LABEL_12;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFURLGetTypeID())
  {
    goto LABEL_12;
  }

  bzero(buffer, 0x401uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1025) || access(buffer, 4))
  {
    goto LABEL_12;
  }

  if (use_xpc_only_predicate != -1)
  {
    dispatch_once(&use_xpc_only_predicate, &__block_literal_global_541);
  }

  if (use_xpc_only_xpc_only)
  {
    goto LABEL_12;
  }

  v8 = open(buffer, 0, 0);
  if (v8 < 0)
  {
    goto LABEL_12;
  }

  v9 = v8;
  memset(&v21, 0, sizeof(v21));
  if (fstat(v8, &v21))
  {
    goto LABEL_11;
  }

  if ((v21.st_mode & 0xF000) != 0x8000)
  {
    goto LABEL_11;
  }

  if ((v21.st_size - 1) > 0x1FFFFFFE)
  {
    goto LABEL_11;
  }

  v15 = malloc_type_malloc(v21.st_size, 0x5BC13B6FuLL);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  bzero(v15, v21.st_size);
  v17 = read(v9, v16, v21.st_size);
  if (v17 != v21.st_size)
  {
    free(v16);
LABEL_11:
    close(v9);
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v18 = v17;
  close(v9);
  if (colorSyncBytesDeallocator_predicate != -1)
  {
    dispatch_once(&colorSyncBytesDeallocator_predicate, &__block_literal_global_1023);
  }

  v19 = CFDataCreateWithBytesNoCopy(0, v16, v18, colorSyncBytesDeallocator_colorSyncAllocator);
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  v10 = create(0, v19, 0, 0);
  CFRelease(v20);
  if (v10)
  {
    *(v10 + 128) = CFRetain(a1);
  }

LABEL_13:
  if (!theDict || !CFDictionaryContainsKey(theDict, kColorSyncDoNotSubstituteProfiles) || (Value = CFDictionaryGetValue(theDict, kColorSyncDoNotSubstituteProfiles), CFEqual(Value, *MEMORY[0x1E695E4D0]) != 1))
  {
    v12 = system_profile_for_profile_from_data(v10);
    if (v12)
    {
      v13 = v12;
      CFRelease(v10);
      v10 = v13;
    }
  }

  evaluate_cicp(v10);
  if (a3)
  {
    *a3 = 0;
  }

  return v10;
}

uint64_t ColorSyncProfileCreateWithURLWithoutSubstitution(const void *a1)
{
  if (ColorSyncProfileCreateWithURLWithoutSubstitution_once != -1)
  {
    dispatch_once(&ColorSyncProfileCreateWithURLWithoutSubstitution_once, &__block_literal_global_277);
  }

  v2 = ColorSyncProfileCreateWithURLWithoutSubstitution_options;

  return ColorSyncProfileCreateWithURLAndOptions(a1, v2, 0);
}

CFDictionaryRef __ColorSyncProfileCreateWithURLWithoutSubstitution_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = kColorSyncDoNotSubstituteProfiles;
  values = *MEMORY[0x1E695E4D0];
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ColorSyncProfileCreateWithURLWithoutSubstitution_options = result;
  return result;
}

CFURLRef ColorSyncProfileGetURL(CFURLRef prof, CFErrorRef *error)
{
  if (!prof)
  {
LABEL_6:
    if (!error)
    {
      return prof;
    }

    goto LABEL_7;
  }

  v3 = prof;
  v4 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    prof = *(v3 + 16);
    goto LABEL_6;
  }

  prof = 0;
  if (!error)
  {
    return prof;
  }

LABEL_7:
  *error = 0;
  return prof;
}

ColorSyncProfileRef ColorSyncProfileCreateLink(CFArrayRef profileInfo, CFDictionaryRef options)
{
  if (!profileInfo)
  {
    return 0;
  }

  v4 = CFGetTypeID(profileInfo);
  if (v4 != CFArrayGetTypeID())
  {
    return 0;
  }

  v5 = create(0, 0, 1, 0);
  if (v5)
  {
    if ((v6 = ColorSyncCMMCreateAppleCMM(), v7 = CFGetTypeID(profileInfo), v7 != CFArrayGetTypeID()) || options && (v8 = CFGetTypeID(options), v8 != CFDictionaryGetTypeID()) || (v9 = v6[9]) == 0 || (v9(v5, profileInfo, options) & 1) == 0)
    {
      CFRelease(v5);
      return 0;
    }
  }

  return v5;
}

__CFDictionary *ColorSyncProfileCopyLocalizedStringDictionary(void *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v5 = a1[12];
  if (!v5)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v5, a2);
  if (!Value)
  {
    return 0;
  }

  v7 = Value;
  if (*CFDataGetBytePtr(Value) != 1668639853 || *CFDataGetBytePtr(v7) != 1668639853)
  {
    return 0;
  }

  return copy_description_dict_from_DSCMTag(v7);
}

void removeReference(uint64_t a1, const void *a2)
{
  v8 = a2;
  key = 0;
  CFDictionaryApplyFunction(*(a1 + 96), tagValueComparer, &v8);
  v4 = key;
  if (key)
  {
    v5 = *(a1 + 96);
    Value = CFDictionaryGetValue(v5, a2);
    CFDictionarySetValue(v5, v4, Value);
    CFDictionaryRemoveValue(*(a1 + 96), a2);
    v7 = key;
    do
    {
      key = 0;
      CFDictionaryApplyFunction(*(a1 + 96), tagValueComparer, &v8);
      if (!key)
      {
        break;
      }

      CFDictionarySetValue(*(a1 + 96), key, v7);
    }

    while (key);
  }
}

void ColorSyncProfileRemoveTag(ColorSyncMutableProfileRef prof, CFStringRef signature)
{
  if (prof)
  {
    v4 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      if (signature)
      {
        if (*(prof + 39) == 1)
        {
          v5 = CFGetTypeID(signature);
          if (v5 == CFStringGetTypeID())
          {
            pthread_mutex_lock((prof + 24));
            if (CFDictionaryContainsKey(*(prof + 12), signature))
            {
              if (CFDictionaryContainsValue(*(prof + 12), signature))
              {
                removeReference(prof, signature);
              }

              else
              {
                CFDictionaryRemoveValue(*(prof + 12), signature);
              }

              v6 = *(prof + 14);
              if (v6)
              {
                CFRelease(v6);
                *(prof + 14) = 0;
              }

              *(prof + 17) = 0;
              *(prof + 18) = 0;
            }

            pthread_mutex_unlock((prof + 24));
          }
        }
      }
    }
  }
}

void ColorSyncIterateInstalledProfiles(ColorSyncProfileIterateCallback callBack, uint32_t *seed, void *userInfo, CFErrorRef *error)
{
  v4 = userInfo;
  v35 = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  if (callBack)
  {
    v32 = seed;
    v33[0] = kColorSyncACESCGLinearProfile;
    v33[1] = kColorSyncAdobeRGB1998Profile;
    v33[2] = kColorSyncDCIP3Profile;
    v33[3] = kColorSyncDisplayP3Profile;
    v33[4] = kColorSyncGenericCMYKProfile;
    v33[5] = kColorSyncGenericGrayGamma22Profile;
    v33[6] = kColorSyncGenericGrayProfile;
    v33[7] = kColorSyncGenericLabProfile;
    v33[8] = kColorSyncGenericRGBProfile;
    v33[9] = kColorSyncGenericXYZProfile;
    v33[10] = kColorSyncITUR2020Profile;
    v33[11] = kColorSyncITUR709Profile;
    v33[12] = kColorSyncROMMRGBProfile;
    v33[13] = kColorSyncSRGBProfile;
    v33[14] = kColorSyncWebSafeColorsProfile;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v7 = 0;
      v8 = MEMORY[0x1E695E9D8];
      v9 = MEMORY[0x1E695E9E8];
      do
      {
        v10 = ColorSyncProfileCreateWithName(v33[v7]);
        v11 = CFDictionaryCreateMutable(0, 0, v8, v9);
        if (v11)
        {
          URL = ColorSyncProfileGetURL(v10, 0);
          if (URL)
          {
            CFDictionarySetValue(v11, kColorSyncProfileURL, URL);
          }

          v13 = ColorSyncProfileCopyHeader(v10);
          if (v13)
          {
            v14 = v13;
            v15 = v8;
            BytePtr = CFDataGetBytePtr(v13);
            CFDictionarySetValue(v11, kColorSyncProfileHeader, v14);
            SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(BytePtr[3]);
            CFDictionarySetValue(v11, kColorSyncProfileClass, SignatureFromFourCharCode);
            CFRelease(SignatureFromFourCharCode);
            v18 = ColorSyncCreateSignatureFromFourCharCode(BytePtr[4]);
            CFDictionarySetValue(v11, kColorSyncProfileColorSpace, v18);
            CFRelease(v18);
            v19 = ColorSyncCreateSignatureFromFourCharCode(BytePtr[5]);
            CFDictionarySetValue(v11, kColorSyncProfilePCS, v19);
            CFRelease(v19);
            v20 = ColorSyncProfileCopyDescriptionString(v10);
            if (v20)
            {
              v21 = v20;
              CFDictionarySetValue(v11, kColorSyncProfileDescription, v20);
              CFRelease(v21);
            }

            v22 = ColorSyncProfileCopyASCIIDescriptionString(v10);
            if (v22)
            {
              v23 = v22;
              CFDictionarySetValue(v11, kColorSyncProfileASCIIDescription, v22);
              CFRelease(v23);
            }

            bytes = ColorSyncProfileGetMD5(v10);
            v24 = CFDataCreate(0, bytes.digest, 16);
            if (v24)
            {
              v25 = v24;
              CFDictionarySetValue(v11, kColorSyncProfileMD5Digest, v24);
              CFRelease(v25);
            }

            CFRelease(v14);
            v8 = v15;
          }
        }

        if (v10)
        {
          CFRelease(v10);
        }

        CFArrayAppendValue(Mutable, v11);
        CFRelease(v11);
        ++v7;
      }

      while (v7 != 15);
    }

    v4 = userInfo;
    seed = v32;
    if (v32)
    {
      goto LABEL_21;
    }
  }

  else
  {
    Mutable = 0;
    if (seed)
    {
LABEL_21:
      ++*seed;
    }
  }

  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    v27 = Count - 1;
    if (Count >= 1)
    {
      v28 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v28);
        if (!(callBack)(ValueAtIndex, v4))
        {
          break;
        }
      }

      while (v27 != v28++);
    }

    CFRelease(Mutable);
  }
}

float ColorSyncProfileEstimateGamma(ColorSyncProfileRef prof, CFErrorRef *error)
{
  v15 = 0;
  v2 = 0.0;
  if (prof)
  {
    v4 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v17 = 0;
      CMMMemMgr::CMMMemMgr(&v17);
      v16 = &unk_1F0E0A3B8;
      Profile = CMMProfileMaker::MakeProfile(prof, &v17, 0);
      Tag = CMMProfile::GetTag(Profile, 1800688195);
      {
        v9 = (*(*v7 + 80))(v7, &v15, 0.05);
      }

      v10 = *(Profile + 2) - 1;
      *(Profile + 2) = v10;
      if (!v10)
      {
        (*(*Profile + 8))(Profile);
      }

      if (v17)
      {
        v11 = *v17;
        if (*v17)
        {
          do
          {
            v12 = *v11;
            free(v11);
            v11 = v12;
          }

          while (v12);
        }
      }

      CMMMemMgr::ReleaseMemList(&v17);
      if (v15)
      {
        return v9;
      }

      else
      {
        return floor(v9 * 10.0 + 0.5) / 10.0;
      }
    }
  }

  return v2;
}

void sub_19A941DEC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (a12)
    {
      v13 = *a12;
      if (*a12)
      {
        do
        {
          v14 = *v13;
          free(v13);
          v13 = v14;
        }

        while (v14);
      }
    }
  }

  else if (a12)
  {
    v15 = *a12;
    if (*a12)
    {
      do
      {
        v16 = *v15;
        free(v15);
        v15 = v16;
      }

      while (v16);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19A941D78);
}

void sub_19A941EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

double __ColorSyncProfileGetDCIP3BluePrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetDCIP3BluePrimary_bXYZ = xmmword_19A96E130;
  dword_1EAFE01E0 = 1355284480;
  return result;
}

double __ColorSyncProfileGetDCIP3GreenPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetDCIP3GreenPrimary_gXYZ = xmmword_19A96E140;
  dword_1EAFE01C0 = 285933568;
  return result;
}

double __ColorSyncProfileGetDCIP3RedPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetDCIP3RedPrimary_rXYZ = xmmword_19A96E150;
  dword_1EAFE01A0 = -872415233;
  return result;
}

double __ColorSyncProfileGetBT601BluePrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT601BluePrimary_bXYZ = xmmword_19A96E190;
  dword_1EAFE0180 = -1682702336;
  return result;
}

double __ColorSyncProfileGetBT601GreenPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT601GreenPrimary_gXYZ = xmmword_19A96E1A0;
  dword_1EAFE0160 = -652607488;
  return result;
}

double __ColorSyncProfileGetBT601RedPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT601RedPrimary_rXYZ = xmmword_19A96E1B0;
  dword_1EAFE0140 = -1207762944;
  return result;
}

CFIndex ColorSyncProfileGetTagCount(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v3 = ColorSyncProfileCopyTagSignatures(a1);
  if (!v3)
  {
    return 0;
  }

  return CFArrayGetCount(v3);
}

BOOL ColorSyncProfileWriteToFile(const ColorSyncProfile *a1, char *a2)
{
  v2 = 0;
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = ColorSyncProfileCopyData(a1, 0);
      if (v4)
      {
        v5 = v4;
        bzero(__str, 0x401uLL);
        if (*v3 == 42 && v3[1] == 47)
        {
          if (ColorSyncGetTempDirPath_predicate != -1)
          {
            dispatch_once(&ColorSyncGetTempDirPath_predicate, &__block_literal_global_540);
          }

          v11 = v3 + 2;
          v3 = __str;
          snprintf(__str, 0x400uLL, "%s%s", &ColorSyncGetTempDirPath_tempDirPath, v11);
        }

        v6 = fopen(v3, "wb");
        if (v6)
        {
          v7 = v6;
          BytePtr = CFDataGetBytePtr(v5);
          Length = CFDataGetLength(v5);
          v2 = fwrite(BytePtr, Length, 1uLL, v7) == 1;
          fclose(v7);
        }

        else
        {
          v2 = 0;
        }

        CFRelease(v5);
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

const ColorSyncProfile *ColorSyncDataCanBeIgnoredOnSRGBDevice(const __CFData *a1)
{
  result = ColorSyncProfileCreate(a1, 0);
  if (result)
  {
    v2 = result;
    v3 = ColorSyncProfileContainsTag(result, @"aapy");
    CFRelease(v2);
    return v3;
  }

  return result;
}

BOOL ColorSyncProfileUsesSRGBGamma(uint64_t a1)
{
  Tag = ColorSyncProfileGetTag(a1, @"rTRC");
  if (!Tag)
  {
    Tag = ColorSyncProfileGetTag(a1, @"aarg");
  }

  if (!AppleCMMVerifySRGBGamma(Tag))
  {
    return 0;
  }

  v3 = ColorSyncProfileGetTag(a1, @"gTRC");
  if (!v3)
  {
    v3 = ColorSyncProfileGetTag(a1, @"aagg");
  }

  if (!AppleCMMVerifySRGBGamma(v3))
  {
    return 0;
  }

  v4 = ColorSyncProfileGetTag(a1, @"bTRC");
  if (!v4)
  {
    v4 = ColorSyncProfileGetTag(a1, @"aabg");
  }

  return AppleCMMVerifySRGBGamma(v4);
}

double ColorSyncProfileGetWhitePoint(const void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  XYZColor = ColorSyncProfileGetXYZColor(a1, @"wtpt");
  v3 = vcvtd_n_f64_s32(XYZColor, 0x10uLL);
  v4 = vcvtd_n_f64_s32(HIDWORD(XYZColor), 0x10uLL);
  v6 = vcvtd_n_f64_s32(v5, 0x10uLL);
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v7 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v8 = ColorSyncProfileCopyHeader(a1);
      if (v8)
      {
        v9 = v8;
        BytePtr = CFDataGetBytePtr(v8);
        if (BytePtr && *(BytePtr + 9) == 1633907568)
        {
          v11 = *(BytePtr + 2);
          CFRelease(v9);
          if (v11 >> 26)
          {
            Tag = ColorSyncProfileGetTag(a1, @"chad");
            if (Tag)
            {
              v13 = Tag;
              v14 = CFDataGetBytePtr(Tag);
              if (v14)
              {
                v15 = v14;
                if (CFDataGetLength(v13) >= 1 && CFDataGetLength(v13) >= 0x2C)
                {
                  v16 = vrev32_s8(v15[1]);
                  v17.i64[0] = v16.i32[0];
                  v17.i64[1] = v16.i32[1];
                  v18 = vdupq_n_s64(0x3EF0000000000000uLL);
                  v19 = vmulq_f64(vcvtq_f64_s64(v17), v18);
                  v20 = vrev32_s8(v15[2]);
                  v17.i64[0] = v20.i32[0];
                  v17.i64[1] = v20.i32[1];
                  v24 = v19;
                  v25 = vmulq_f64(vcvtq_f64_s64(v17), v18);
                  *&v19.f64[0] = vrev32_s8(v15[3]);
                  v17.i64[0] = SLODWORD(v19.f64[0]);
                  v17.i64[1] = SHIDWORD(v19.f64[0]);
                  v21 = vmulq_f64(vcvtq_f64_s64(v17), v18);
                  v22 = vrev32_s8(v15[4]);
                  v17.i64[0] = v22.i32[0];
                  v17.i64[1] = v22.i32[1];
                  v26 = v21;
                  v27 = vmulq_f64(vcvtq_f64_s64(v17), v18);
                  v28 = vcvtd_n_f64_s32(bswap32(v15[5].u32[0]), 0x10uLL);
                  if (InvertMatrix(v24.f64))
                  {
                    return v4 * v24.f64[1] + v3 * v24.f64[0] + v6 * v25.f64[0];
                  }
                }
              }
            }
          }
        }

        else
        {
          CFRelease(v9);
        }
      }
    }
  }

  return v3;
}

float *ColorSyncProfileGetLuminanceCoefficients(float *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v3 = a1 + 40;
  if (a1[40] == 0.0)
  {
    add_basic_formulas(a1);
    if (a1[40] == 0.0)
    {
      return 0;
    }
  }

  return v3;
}

void add_basic_formulas(uint64_t a1)
{
  v101[9] = *MEMORY[0x1E69E9840];
  v2 = ColorSyncProfileCopyHeader(a1);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  BytePtr = CFDataGetBytePtr(v2);
  if (BytePtr && *(BytePtr + 4) == 1380401696)
  {
    pthread_mutex_lock((a1 + 24));
    if (*(a1 + 160) == 0.0 || *(a1 + 176) == 0.0 || *(a1 + 212) == 0.0)
    {
      Tag = ColorSyncProfileGetTag(a1, @"wtpt");
      v6 = ColorSyncProfileGetTag(a1, @"rXYZ");
      v88 = v6;
      v7 = ColorSyncProfileGetTag(a1, @"gXYZ");
      v87 = v7;
      v8 = ColorSyncProfileGetTag(a1, @"bXYZ");
      v86 = v8;
      if (v6)
      {
        if (v7)
        {
          v9 = v8;
          if (v8)
          {
LABEL_12:
            v10 = verified_icXYZType_data_ptr(Tag);
            v11 = verified_icXYZType_data_ptr(v6);
            v12 = verified_icXYZType_data_ptr(v7);
            v13 = verified_icXYZType_data_ptr(v9);
            if (v10)
            {
              if (v11)
              {
                if (v12)
                {
                  v14 = v13;
                  if (v13)
                  {
                    WhitePoint = ColorSyncProfileGetWhitePoint(a1);
                    v17 = v16;
                    v19 = v18;
                    v84.f64[0] = WhitePoint;
                    v84.f64[1] = v16;
                    v85 = v18;
                    v20 = vrev32_s8(v11[1]);
                    v21.i64[0] = v20.i32[0];
                    v21.i64[1] = v20.i32[1];
                    v22 = vdupq_n_s64(0x3EF0000000000000uLL);
                    v82 = vmulq_f64(vcvtq_f64_s64(v21), v22);
                    v83 = vcvtd_n_f64_s32(bswap32(v11[2].u32[0]), 0x10uLL);
                    v23 = vrev32_s8(v12[1]);
                    v21.i64[0] = v23.i32[0];
                    v21.i64[1] = v23.i32[1];
                    v80 = vmulq_f64(vcvtq_f64_s64(v21), v22);
                    v81 = vcvtd_n_f64_s32(bswap32(v12[2].u32[0]), 0x10uLL);
                    v24 = vrev32_s8(v14[1]);
                    v21.i64[0] = v24.i32[0];
                    v21.i64[1] = v24.i32[1];
                    v78 = vmulq_f64(vcvtq_f64_s64(v21), v22);
                    v79 = vcvtd_n_f64_s32(bswap32(v14[2].u32[0]), 0x10uLL);
                    v76 = 0uLL;
                    v77 = 0.0;
                    v74 = 0uLL;
                    v75 = 0.0;
                    v72 = 0uLL;
                    v73 = 0.0;
                    ColorSyncConvertDoubleXYZFromD50(&v82, &v84, &v76, 3, 0, v25, v26, v27);
                    ColorSyncConvertDoubleXYZFromD50(&v80, &v84, &v74, 3, 0, v28, v29, v30);
                    ColorSyncConvertDoubleXYZFromD50(&v78, &v84, &v72, 3, 0, v31, v32, v33);
                    v34 = v76.f64[0] + v76.f64[1] + v77;
                    v35 = v74.f64[0] + v74.f64[1] + v75;
                    v36 = v72.f64[0] + v72.f64[1] + v73;
                    v101[0] = v76.f64[0] / v34;
                    v101[1] = v74.f64[0] / v35;
                    v101[2] = v72.f64[0] / v36;
                    v101[3] = v76.f64[1] / v34;
                    v101[4] = v74.f64[1] / v35;
                    v101[5] = v72.f64[1] / v36;
                    v101[6] = v77 / v34;
                    v101[7] = v75 / v35;
                    v101[8] = v73 / v36;
                    v92 = v76.f64[0] / v34;
                    v93 = v74.f64[0] / v35;
                    v94 = v72.f64[0] / v36;
                    v95 = v76.f64[1] / v34;
                    v96 = v74.f64[1] / v35;
                    v97 = v72.f64[1] / v36;
                    v98 = v77 / v34;
                    v99 = v75 / v35;
                    v100 = v73 / v36;
                    if (InvertMatrix(&v92))
                    {
                      v37 = WhitePoint + v17 + v19;
                      v38 = v19 / v37;
                      v39 = v17 / v37;
                      v40 = WhitePoint / v37 / (v17 / v37);
                      v41 = v38 / v39;
                      v91[0] = v93 + v40 * v92 + v41 * v94;
                      memset(&v91[1], 0, 24);
                      v91[4] = v96 + v40 * v95 + v41 * v97;
                      memset(&v91[5], 0, 24);
                      v91[8] = v99 + v40 * v98 + v41 * v100;
                      v90 = 0;
                      memset(v89, 0, sizeof(v89));
                      MatrixMatrix(v91, v101, v89[0].f64);
                      v42 = *(&v89[1] + 8);
                      v43 = v89[2].f64[1];
                      v44 = v89[1].f64[1];
                      if (v44 <= 0.2626 || v44 >= 0.2628 || (v45 = v89[2].f64[0], v45 <= 0.6779) || v45 >= 0.6781 || (v46 = v89[2].f64[1], v46 <= 0.0592) || v46 >= 0.0594)
                      {
                        if (v44 <= 0.2289 || v44 >= 0.2291 || (v53 = v89[2].f64[0], v53 <= 0.6916) || v53 >= 0.6918 || (v54 = v89[2].f64[1], v54 <= 0.0792) || v54 >= 0.0794)
                        {
                          v55 = vdupq_n_s64(0x40C3880000000000uLL);
                          v56 = vdivq_f64(vrndaq_f64(vmulq_f64(*(&v89[1] + 8), v55)), v55);
                          v57 = round(v89[2].f64[1] * 10000.0) / 10000.0;
                          v51 = vcvt_f32_f64(v56);
                          v52 = v57;
                          __asm { FMOV            V5.2D, #-0.5 }

                          v63 = vmulq_f64(v56, _Q5);
                          *&v64.f64[0] = vdupq_laneq_s64(v63, 1).u64[0];
                          v64.f64[1] = v57 * -0.5;
                          v65 = vdupq_lane_s64(*&v56.f64[0], 0);
                          v65.f64[0] = v57;
                          __asm { FMOV            V3.2D, #1.0 }

                          v67 = vsubq_f64(_Q3, v65);
                          v50 = vcvt_f32_f64(vdivq_f64(v63, vdupq_lane_s64(*&v67.f64[0], 0)));
                          v49 = vcvt_f32_f64(vdivq_f64(v64, vdupq_laneq_s64(v67, 1)));
                          __asm { FMOV            V3.2D, #-2.0 }

                          v48 = vcvt_f32_f64(vdivq_f64(vmulq_f64(v65, vmulq_f64(v67, _Q3)), vdupq_laneq_s64(v56, 1)));
                          v47 = vcvt_f32_f64(vaddq_f64(v67, v67));
                          if (v44 > 0.2125 && v44 < 0.2127)
                          {
                            v69 = v89[2].f64[0];
                            if (v69 > 0.7151 && v69 < 0.7153)
                            {
                              v70 = v89[2].f64[1];
                              if (v70 > 0.0721 && v70 < 0.0723)
                              {
                                v47 = 0x3FC98FC53FED844DLL;
                                v48 = 0xBEEFB7E9BE3FCB92;
                                v49 = 0xBD3B98C8BEE88CE7;
                                v50 = 0xBEC55326BDEAB368;
                                v51 = 0x3F3717593E59B3D0;
                                v42 = xmmword_19A96E210;
                                v52 = 0.0722;
                                v43 = 0.0722000003;
                              }
                            }
                          }
                        }

                        else
                        {
                          v47 = 0x3FC563883FEBB2FFLL;
                          v48 = 0xBF02A993BE582A99;
                          v49 = 0xBD52934BBEE5AEE6;
                          v50 = 0xBEC05BC0BDFE9100;
                          v51 = 0x3F3113403E6A7EFALL;
                          v42 = xmmword_19A96E200;
                          v52 = 0.0793;
                          v43 = 0.0793000013;
                        }
                      }

                      else
                      {
                        v47 = 0x3FBCBFB13FF0D1B7;
                        v48 = 0xBF124745BE288CE7;
                        v49 = 0xBD24A8C1BEEB6AE8;
                        v50 = 0xBEB88659BE0EF34DLL;
                        v51 = 0x3F2D91683E86809DLL;
                        v42 = xmmword_19A96E1F0;
                        v52 = 0.0593;
                        v43 = 0.0593000017;
                      }

                      *(a1 + 160) = vcvt_f32_f64(v42);
                      v71 = v43;
                      *(a1 + 168) = v71;
                      *(a1 + 176) = v51;
                      *(a1 + 184) = v52;
                      *(a1 + 188) = v50;
                      *(a1 + 196) = 0x3F0000003F000000;
                      *(a1 + 204) = v49;
                      *(a1 + 212) = 1065353216;
                      *(a1 + 220) = v47.i32[1];
                      *(a1 + 224) = 1065353216;
                      *(a1 + 228) = v48;
                      *(a1 + 236) = 1065353216;
                      *(a1 + 240) = v47.i32[0];
                      *(a1 + 244) = 0;
                    }
                  }
                }
              }
            }

            goto LABEL_40;
          }
        }
      }

      if (get_primaries_data_from_cicp(a1, &v88, &v87, &v86))
      {
        v7 = v87;
        v6 = v88;
        v9 = v86;
        goto LABEL_12;
      }
    }

LABEL_40:
    pthread_mutex_unlock((a1 + 24));
  }

  CFRelease(v3);
}

float *ColorSyncProfileGetRGBtoYCCMatrix(float *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v3 = a1 + 44;
  if (a1[44] == 0.0)
  {
    add_basic_formulas(a1);
    if (a1[44] == 0.0)
    {
      return 0;
    }
  }

  return v3;
}

float *ColorSyncProfileGetYCCtoRGBMatrix(float *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v3 = a1 + 53;
  if (a1[53] == 0.0)
  {
    add_basic_formulas(a1);
    if (a1[53] == 0.0)
    {
      return 0;
    }
  }

  return v3;
}

ColorSyncProfile *ColorSyncProfileCreateCopyWithFlexGTC(const ColorSyncProfile *a1, CFErrorRef *a2, CFErrorRef *a3)
{
  v23[6] = *MEMORY[0x1E69E9840];
  if (!ColorSyncProfileVerify(a1, a2, a3) || !ColorSyncProfileIsPQBased(a1))
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a2);
  v6 = malloc_type_calloc(1uLL, 16 * (Count + 5), 0x8545CF49uLL);
  v7 = &v6[Count + 5];
  CFDictionaryGetKeysAndValues(a2, v6, v7);
  v23[0] = time(0);
  v8 = localtime(v23);
  v9 = LOWORD(v8->tm_min) | (v8->tm_sec << 16);
  valuePtr = (v8->tm_hour << 48) | (LOWORD(v8->tm_mday) << 32) | ((v8->tm_mon << 16) + 0x10000) | (v8->tm_year + 1900);
  v22 = v9;
  v23[0] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  v23[1] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr + 2);
  v23[2] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr + 4);
  v23[3] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr + 6);
  v23[4] = CFNumberCreate(0, kCFNumberSInt16Type, &v22);
  v23[5] = CFNumberCreate(0, kCFNumberSInt16Type, &v22 + 2);
  v10 = CFArrayCreate(*MEMORY[0x1E695E480], v23, 6, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 6; ++i)
  {
    v12 = v23[i];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  v6[Count] = @"profileType";
  v13 = 8 * Count + 8;
  *(v6 + v13) = @"profileToCopy";
  v14 = 8 * Count + 16;
  *(v6 + v14) = @"Date";
  v15 = 8 * Count + 24;
  *(v6 + v15) = @"FlexGTC.based.A2B0";
  v16 = 8 * Count + 32;
  *(v6 + v16) = @"createImmutableCopy";
  v7[Count] = @"copyWithGTC";
  *(v7 + v13) = a1;
  *(v7 + v14) = v10;
  v17 = *MEMORY[0x1E695E4D0];
  *(v7 + v15) = *MEMORY[0x1E695E4D0];
  *(v7 + v16) = v17;
  v18 = CFDictionaryCreate(0, v6, v7, Count + 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v10);
  free(v6);
  Profile = ColorSyncMakeProfile(v18);
  CFRelease(v18);
  return Profile;
}

ColorSyncProfile *ColorSyncProfileCreateCopyWithLUTBasedLumaScaling(void *a1, const void *a2)
{
  values[6] = *MEMORY[0x1E69E9840];
  v4 = ColorSyncProfileCopyFlexGTCInfo(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  values[0] = CFNumberCreate(0, kCFNumberSInt16Type, &ColorSyncProfileCreateCopyWithLUTBasedLumaScaling_iccDate);
  values[1] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6A2);
  values[2] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6A4);
  values[3] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6A6);
  values[4] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6A8);
  values[5] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6AA);
  v6 = CFArrayCreate(*MEMORY[0x1E695E480], values, 6, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 6; ++i)
  {
    v8 = values[i];
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (a2 && (v9 = CFGetTypeID(a2), v9 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints)) != 0)
  {
    v11 = Value;
    CFRetain(Value);
  }

  else
  {
    v11 = CFNumberCreate(0, kCFNumberLongLongType, &ColorSyncProfileCreateCopyWithLUTBasedLumaScaling_kFlexGTCGridPoints);
  }

  *keys = xmmword_1E7523518;
  v17 = *off_1E7523528;
  v18 = @"createImmutableCopy";
  v15[0] = @"FlexGTC.based.A2B0";
  v15[1] = a1;
  v15[2] = v6;
  v15[3] = v11;
  v15[4] = *MEMORY[0x1E695E4D0];
  v12 = CFDictionaryCreate(0, keys, v15, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v6);
  Profile = ColorSyncMakeProfile(v12);
  CFRelease(v12);
  CFRelease(v5);
  return Profile;
}

BOOL validate_gmap_tag(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a1 == 1885433191 && !*(a1 + 8) && bswap32(*(a1 + 12)) <= a2 && ((v2 = *(a1 + 16)) == 0 || ((v3 = bswap32(v2), v3 >= 0x59) ? (v4 = a2 - 4 >= v3) : (v4 = 0), v4)))
  {
    v7 = *(a1 + 32);
    if (!v7 || (v5 = 0, v8 = bswap32(v7), v8 >= 0x59) && a2 - 4 >= v8)
    {
      v9 = *(a1 + 20);
      if (!v9 || (v5 = 0, v10 = bswap32(v9), v10 >= 0x59) && a2 - 44 >= v10)
      {
        v11 = *(a1 + 24);
        if (!v11 || (v5 = 0, v12 = bswap32(v11), v12 >= 0x59) && a2 - 44 >= v12)
        {
          v13 = *(a1 + 28);
          if (!v13 || (v5 = 0, v14 = bswap32(v13), v14 >= 0x59) && a2 - 44 >= v14)
          {
            v15 = 0;
            v5 = 0;
            v22 = *(a1 + 36);
            v23 = *(a1 + 52);
            v16 = &v22 + 1;
            do
            {
              v17 = *(v16 - 1);
              if (v17)
              {
                v18 = bswap32(v17);
                if (v18 < 0x59)
                {
                  break;
                }

                v19 = bswap32(*v16);
                v4 = a2 >= v19;
                v20 = a2 - v19;
                if (!v4 || v20 < v18)
                {
                  break;
                }
              }

              v16 += 2;
              v5 = v15++ > 1;
            }

            while (v15 != 3);
          }
        }
      }
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

CFDictionaryRef create_gain_map_info(uint64_t a1)
{
  keys[8] = *MEMORY[0x1E69E9840];
  keys[0] = kColorSyncGUID;
  keys[1] = kColorSyncGainMapMin;
  keys[2] = kColorSyncGainMapMax;
  keys[3] = kColorSyncGainMapGamma;
  keys[4] = kColorSyncGainMapBaselineConst;
  keys[5] = kColorSyncGainMapAlternateConst;
  keys[6] = kColorSyncGainMapBaselineHeadroom;
  keys[7] = kColorSyncGainMapAlternateHeadroom;
  v1 = *(a1 + 16);
  v2 = *(a1 + 20);
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7 = *(a1 + 40);
  values[0] = CFUUIDCreateFromUUIDBytes(0, *a1);
  valuePtr = bswap32(v1);
  values[1] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v2);
  values[2] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v3);
  values[3] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v4);
  values[4] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v6);
  values[5] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v5);
  values[6] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v7);
  values[7] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v8 = CFDictionaryCreate(0, keys, values, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 8; ++i)
  {
    CFRelease(values[i]);
  }

  return v8;
}

uint64_t ColorSyncProfileCreateFlexGTCLookupData(void *a1, float a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v4 = ColorSyncProfileCreateWithName(kColorSyncGenericXYZProfile);
  v25 = 0u;
  v24 = 0u;
  v30 = 0u;
  v31 = 0u;
  keys = @"com.apple.cmm.FlexGTCTargetHeadroom";
  valuePtr = LODWORD(a2);
  values = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  v7 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *&v24 = @"com.apple.cmm.ApplyFlexLumaScaling";
  *&v30 = v7;
  v8 = CFDictionaryCreate(0, &v24, &v30, 1, v5, v6);
  *(&v24 + 1) = @"com.apple.cmm.ApplyToneMaping";
  *&v25 = @"com.apple.cmm.PQEOTFTable";
  v9 = *MEMORY[0x1E695E4D0];
  *(&v30 + 1) = v8;
  *&v31 = v9;
  *(&v25 + 1) = @"com.apple.cmm.PQEOTFTableSize";
  valuePtr = 1024;
  *(&v31 + 1) = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFDictionaryCreate(0, &v24 + 1, &v30 + 1, 3, v5, v6);
  CFRelease(values);
  CFRelease(*(&v31 + 1));
  CFRelease(v7);
  CFRelease(v8);
  colorsync_transform = create_colorsync_transform(a1, v4, v10);
  keys = 0;
  *&v24 = &keys;
  *(&v24 + 1) = 0x6800000000;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __ColorSyncProfileCreateFlexGTCLookupData_block_invoke;
  v17[3] = &unk_1E7523548;
  v17[4] = &keys;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __ColorSyncProfileCreateFlexGTCLookupData_block_invoke_4;
  v16[3] = &unk_1E75235B0;
  v16[4] = &keys;
  v16[5] = &v18;
  v12 = ColorSyncTransformIterate(colorsync_transform, v10, v17, &__block_literal_global_388, &__block_literal_global_392, v16);
  v13 = v19;
  v14 = v19[3];
  if ((v12 & 1) == 0)
  {
    if (v14)
    {
      CFRelease(v19[3]);
      v13 = v19;
    }

    v14 = 0;
    v13[3] = 0;
  }

  _Block_object_dispose(&keys, 8);
  _Block_object_dispose(&v18, 8);
  return v14;
}

uint64_t __ColorSyncProfileCreateFlexGTCLookupData_block_invoke(uint64_t a1, _OWORD *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = a2[2];
  v3 = a2[3];
  v5 = *(a2 + 60);
  *(v2 + 40) = a2[1];
  *(v2 + 84) = v5;
  *(v2 + 72) = v3;
  *(v2 + 56) = v4;
  *(v2 + 24) = *a2;
  return 1;
}

uint64_t __ColorSyncProfileCreateFlexGTCLookupData_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(*(*(a1 + 32) + 8) + 92);
  memset(v8, 0, 36);
  ColorSyncNxMGetFunction(*(v5 + 8 * a3), v8);
  ColorSyncNxMGetProperties(*(v5 + 8 * a3));
  if (LODWORD(v8[0]) == 11)
  {
    v6 = *(*(&v8[1] + 12) + 28);
    if (v6)
    {
      *(v4 + 24) = CFDataCreate(0, (*(&v8[1] + 12) + 36), 4 * v6);
    }
  }

  return 1;
}

ColorSyncProfile *ColorSyncProfileCreateCopyWithISO5Metadata(const ColorSyncProfile *a1, CFErrorRef *a2, CFErrorRef *a3)
{
  v147 = *MEMORY[0x1E69E9840];
  if (!ColorSyncProfileVerify(a1, a2, a3))
  {
    return 0;
  }

  if (ColorSyncProfileIsHLGBased(a1))
  {
    if (!a2)
    {
      return 0;
    }
  }

  else
  {
    IsPQBased = ColorSyncProfileIsPQBased(a1);
    MutableCopy = 0;
    if (!a2 || !IsPQBased)
    {
      return MutableCopy;
    }
  }

  v7 = CFGetTypeID(a2);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  if (CFDictionaryContainsKey(a2, kColorSyncMDCVInfo[0]) != 1)
  {
    LODWORD(MaximumSizeForEncoding) = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v136 = 0;
    v9 = 0;
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(a2, kColorSyncMDCVInfo[0]);
  v9 = Value;
  if (!Value)
  {
    goto LABEL_27;
  }

  v10 = CFGetTypeID(Value);
  if (v10 != CFDictionaryGetTypeID())
  {
    LODWORD(MaximumSizeForEncoding) = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v9 = 0;
    goto LABEL_31;
  }

  if (get_float_from_dictionary(v9, kColorSyncMaxLuminance) < 0.0 || (float_from_dictionary = 10000.0, get_float_from_dictionary(v9, kColorSyncMaxLuminance) <= 10000.0))
  {
    float_from_dictionary = 0.0;
    if (get_float_from_dictionary(v9, kColorSyncMaxLuminance) >= 0.0)
    {
      float_from_dictionary = get_float_from_dictionary(v9, kColorSyncMaxLuminance);
    }
  }

  if (get_float_from_dictionary(v9, kColorSyncMinLuminance) < 0.0 || (v12 = 10000.0, get_float_from_dictionary(v9, kColorSyncMinLuminance) <= 10000.0))
  {
    v12 = 0.0;
    if (get_float_from_dictionary(v9, kColorSyncMinLuminance) >= 0.0)
    {
      v12 = get_float_from_dictionary(v9, kColorSyncMinLuminance);
    }
  }

  primaries_from_dictionary = get_primaries_from_dictionary(v9, kColorSyncPrimaries);
  v9 = 0;
  LODWORD(MaximumSizeForEncoding) = 0;
  if (float_from_dictionary <= 0.0)
  {
    goto LABEL_30;
  }

  LODWORD(v15) = 0;
  LODWORD(v16) = 0;
  if (v12 <= 0.0)
  {
    goto LABEL_31;
  }

  v17 = primaries_from_dictionary;
  v9 = 0;
  LODWORD(MaximumSizeForEncoding) = 0;
  if (primaries_from_dictionary > 0xC)
  {
LABEL_30:
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    goto LABEL_31;
  }

  LODWORD(v15) = 0;
  LODWORD(v16) = 0;
  if (((1 << primaries_from_dictionary) & 0x1A23) != 0)
  {
    v9 = malloc_type_calloc(1uLL, 0xACuLL, 0x10000402F7E722EuLL);
    if (v9)
    {
      Length = CFStringGetLength(@"MDCV");
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x10000100u);
      CFStringGetCString(@"MDCV", v9, MaximumSizeForEncoding + 1, 0x10000100u);
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      *__str = 0u;
      v140 = 0u;
      snprintf(__str, 0x60uLL, "%06.6f,%06.6f,%d", float_from_dictionary, v12, v17);
      v19 = CFStringCreateWithCString(0, __str, 0x8000100u);
      if (v19)
      {
        v20 = v19;
        v21 = CFStringGetLength(v19);
        v15 = CFStringGetMaximumSizeForEncoding(v21, 0x10000100u);
        CFStringGetCString(v20, v9 + 12, v15 + 1, 0x10000100u);
        v22 = CFStringGetLength(@"Mastering Display Color Volume");
        v16 = CFStringGetMaximumSizeForEncoding(v22, 0x10000100u);
        CFStringGetCString(@"Mastering Display Color Volume", v9 + 108, v16 + 1, 0x10000100u);
        CFRelease(v20);
        goto LABEL_31;
      }

LABEL_28:
      LODWORD(v15) = 0;
      LODWORD(v16) = 0;
      goto LABEL_31;
    }

LABEL_27:
    LODWORD(MaximumSizeForEncoding) = 0;
    goto LABEL_28;
  }

LABEL_31:
  v136 = v9 != 0;
LABEL_32:
  v133 = MaximumSizeForEncoding;
  v134 = v16;
  if (CFDictionaryContainsKey(a2, kColorSyncCCVInfo[0]) != 1)
  {
    LODWORD(v28) = 0;
    v130 = 0;
    v131 = 0;
    v135 = 0;
    v29 = 0;
    goto LABEL_45;
  }

  v23 = CFDictionaryGetValue(a2, kColorSyncCCVInfo[0]);
  if (v23 && (v24 = v23, v25 = CFGetTypeID(v23), v25 == CFDictionaryGetTypeID()))
  {
    if (get_float_from_dictionary(v24, kColorSyncMaxLuminance) < 0.0 || (v26 = 10000.0, get_float_from_dictionary(v24, kColorSyncMaxLuminance) <= 10000.0))
    {
      v26 = 0.0;
      if (get_float_from_dictionary(v24, kColorSyncMaxLuminance) >= 0.0)
      {
        v26 = get_float_from_dictionary(v24, kColorSyncMaxLuminance);
      }
    }

    if (get_float_from_dictionary(v24, kColorSyncAverageLuminance) < 0.0 || get_float_from_dictionary(v24, kColorSyncAverageLuminance) <= 10000.0)
    {
      v27 = 0.0;
      if (get_float_from_dictionary(v24, kColorSyncAverageLuminance) >= 0.0)
      {
        v27 = get_float_from_dictionary(v24, kColorSyncAverageLuminance);
      }
    }

    else
    {
      v27 = 10000.0;
    }

    if (get_float_from_dictionary(v24, kColorSyncMinLuminance) < 0.0 || (v112 = 10000.0, get_float_from_dictionary(v24, kColorSyncMinLuminance) <= 10000.0))
    {
      v112 = 0.0;
      if (get_float_from_dictionary(v24, kColorSyncMinLuminance) >= 0.0)
      {
        v112 = get_float_from_dictionary(v24, kColorSyncMinLuminance);
      }
    }

    v30 = v15;
    v113 = get_primaries_from_dictionary(v24, kColorSyncPrimaries);
    v29 = 0;
    LODWORD(v28) = 0;
    if (v26 <= 0.0)
    {
LABEL_121:
      LODWORD(v31) = 0;
      LODWORD(v15) = 0;
      goto LABEL_44;
    }

    LODWORD(v31) = 0;
    LODWORD(v15) = 0;
    if (v112 > 0.0)
    {
      v114 = v113;
      v29 = 0;
      LODWORD(v28) = 0;
      if (v113 <= 0xC)
      {
        LODWORD(v31) = 0;
        LODWORD(v15) = 0;
        if (((1 << v113) & 0x1A23) != 0)
        {
          v29 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10000400D840072uLL);
          v115 = CFStringGetLength(@"CCV");
          v28 = CFStringGetMaximumSizeForEncoding(v115, 0x10000100u);
          CFStringGetCString(@"CCV", v29, v28 + 1, 0x10000100u);
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          *__str = 0u;
          v140 = 0u;
          snprintf(__str, 0x80uLL, "%06.6f,%06.6f,%06.6f,%d", v26, v27, v112, v114);
          v116 = CFStringCreateWithCString(0, __str, 0x8000100u);
          if (v116)
          {
            v117 = v116;
            v118 = CFStringGetLength(v116);
            v31 = CFStringGetMaximumSizeForEncoding(v118, 0x10000100u);
            CFStringGetCString(v117, v29 + 12, v31 + 1, 0x10000100u);
            v119 = CFStringGetLength(@"Content Color Volume");
            v15 = CFStringGetMaximumSizeForEncoding(v119, 0x10000100u);
            CFStringGetCString(@"Content Color Volume", v29 + 140, v15 + 1, 0x10000100u);
            CFRelease(v117);
          }

          else
          {
            LODWORD(v31) = 0;
            LODWORD(v15) = 0;
          }
        }

        goto LABEL_44;
      }

      goto LABEL_121;
    }
  }

  else
  {
    v30 = v15;
    LODWORD(v28) = 0;
    LODWORD(v31) = 0;
    LODWORD(v15) = 0;
    v29 = 0;
  }

LABEL_44:
  v130 = v15;
  v131 = v31;
  v135 = v29 != 0;
  LODWORD(v15) = v30;
LABEL_45:
  if (CFDictionaryContainsKey(a2, kColorSyncCLLInfo[0]) != 1)
  {
    v39 = 0;
    v128 = 0;
    v129 = 0;
    v50 = 0;
    v38 = 0;
    goto LABEL_65;
  }

  v32 = CFDictionaryGetValue(a2, kColorSyncCLLInfo[0]);
  if (v32 && (v33 = v32, v34 = CFGetTypeID(v32), v34 == CFDictionaryGetTypeID()))
  {
    if (get_float_from_dictionary(v33, kColorSyncMaxLightLevel) < 0.0 || (v35 = 10000.0, get_float_from_dictionary(v33, kColorSyncMaxLightLevel) <= 10000.0))
    {
      v35 = 0.0;
      if (get_float_from_dictionary(v33, kColorSyncMaxLightLevel) >= 0.0)
      {
        v35 = get_float_from_dictionary(v33, kColorSyncMaxLightLevel);
      }
    }

    if (get_float_from_dictionary(v33, kColorSyncAverageLightLevel) < 0.0 || (v36 = 10000.0, get_float_from_dictionary(v33, kColorSyncAverageLightLevel) <= 10000.0))
    {
      v36 = 0.0;
      if (get_float_from_dictionary(v33, kColorSyncAverageLightLevel) >= 0.0)
      {
        v36 = get_float_from_dictionary(v33, kColorSyncAverageLightLevel);
      }
    }

    v37 = get_primaries_from_dictionary(v33, kColorSyncPrimaries);
    v38 = 0;
    v39 = 0;
    if (v35 <= 0.0)
    {
LABEL_120:
      v40 = 0;
      v41 = 0;
      goto LABEL_64;
    }

    v40 = 0;
    v41 = 0;
    if (v36 > 0.0)
    {
      v42 = v37;
      v38 = 0;
      v39 = 0;
      if (v37 <= 0xC)
      {
        v40 = 0;
        v41 = 0;
        if (((1 << v37) & 0x1A23) != 0)
        {
          v121 = v15;
          v38 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1000040C3A7E6FCuLL);
          v43 = CFStringGetLength(@"CLL");
          v123 = CFStringGetMaximumSizeForEncoding(v43, 0x10000100u);
          CFStringGetCString(@"CLL", v38, v123 + 1, 0x10000100u);
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          *__str = 0u;
          v140 = 0u;
          snprintf(__str, 0x60uLL, "%06.6f,%06.6f,%d", v35, v36, v42);
          v44 = CFStringCreateWithCString(0, __str, 0x8000100u);
          if (v44)
          {
            v45 = v44;
            v46 = CFStringGetLength(v44);
            v47 = CFStringGetMaximumSizeForEncoding(v46, 0x10000100u);
            CFStringGetCString(v45, v38 + 12, v47 + 1, 0x10000100u);
            v48 = CFStringGetLength(@"Content Light Level");
            v49 = CFStringGetMaximumSizeForEncoding(v48, 0x10000100u);
            CFStringGetCString(@"Content Light Level", v38 + 108, v49 + 1, 0x10000100u);
            CFRelease(v45);
            v41 = v49;
            v40 = v47;
          }

          else
          {
            v40 = 0;
            v41 = 0;
          }

          LODWORD(v15) = v121;
          v39 = v123;
        }

        goto LABEL_64;
      }

      goto LABEL_120;
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v38 = 0;
  }

LABEL_64:
  v128 = v41;
  v129 = v40;
  v50 = v38 != 0;
LABEL_65:
  v132 = v28;
  if (CFDictionaryContainsKey(a2, kColorSyncCRWLInfo[0]) == 1)
  {
    v51 = CFDictionaryGetValue(a2, kColorSyncCRWLInfo[0]);
    if (v51 && (v52 = v51, v53 = CFGetTypeID(v51), v53 == CFDictionaryGetTypeID()) && (v54 = CFDictionaryGetValue(v52, kColorSyncReferenceWhite)) != 0 && (v55 = v54, v56 = CFGetTypeID(v54), v56 == CFNumberGetTypeID()) && (valuePtr = 0.0, CFNumberGetValue(v55, kCFNumberFloatType, &valuePtr) == 1))
    {
      v57 = valuePtr;
      if (valuePtr < 0.0)
      {
        v57 = 0.0;
      }

      if (v57 > 10000.0)
      {
        v57 = 10000.0;
      }

      valuePtr = v57;
      v58 = malloc_type_calloc(1uLL, 0x78uLL, 0x1000040A9FC9F90uLL);
      v59 = CFStringGetLength(@"CRWL");
      v126 = CFStringGetMaximumSizeForEncoding(v59, 0x10000100u);
      CFStringGetCString(@"CRWL", v58, v126 + 1, 0x10000100u);
      memset(__str, 0, sizeof(__str));
      DWORD2(v140) = 0;
      *&v140 = 0;
      snprintf(__str, 0x1CuLL, "%06.6f", valuePtr);
      v60 = CFStringCreateWithCString(0, __str, 0x8000100u);
      if (v60)
      {
        v61 = v60;
        v62 = CFStringGetLength(v60);
        v124 = CFStringGetMaximumSizeForEncoding(v62, 0x10000100u);
        CFStringGetCString(v61, v58 + 12, v124 + 1, 0x10000100u);
        v63 = CFStringGetLength(@"Content HDR Reference White Luminance");
        v64 = CFStringGetMaximumSizeForEncoding(v63, 0x10000100u);
        CFStringGetCString(@"Content HDR Reference White Luminance", v58 + 40, v64 + 1, 0x10000100u);
        CFRelease(v61);
        v65 = v64;
        v66 = v124;
      }

      else
      {
        v66 = 0;
        v65 = 0;
      }

      v67 = v126;
    }

    else
    {
      v67 = 0;
      v66 = 0;
      v65 = 0;
      v58 = 0;
    }

    v68 = v58 != 0;
  }

  else
  {
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v68 = 0;
    v58 = 0;
  }

  if (!v9 && !v29 && !v38 && !v58)
  {
    return 0;
  }

  v122 = v65;
  v125 = v66;
  v127 = v67;
  MutableCopy = ColorSyncProfileCreateMutableCopy(a1);
  if (!MutableCopy)
  {
    goto LABEL_100;
  }

  v137 = v9;
  v70 = v135 + v136 + v50 + v68;
  v120 = 184 * v135 + 172 * v136 + 176 * v50 + 120 * v68 + 24 * v70;
  v71 = malloc_type_calloc(1uLL, v120 + 16, 0x1000040A86A77D5uLL);
  if (v71)
  {
    v72 = v71;
    *v71 = 1952672100;
    *(v71 + 2) = v70 << 24;
    *(v71 + 3) = 402653184;
    v73 = &v71[24 * v136 + 16];
    v74 = &v73[24 * v135];
    v75 = &v74[24 * v50];
    v76 = &v75[24 * v68];
    if (v136)
    {
      v77 = *v137;
      v78 = v137[2];
      *(v76 + 1) = v137[1];
      *(v76 + 2) = v78;
      *v76 = v77;
      v79 = v137[3];
      v80 = v137[4];
      v81 = v137[6];
      *(v76 + 5) = v137[5];
      *(v76 + 6) = v81;
      *(v76 + 3) = v79;
      *(v76 + 4) = v80;
      v82 = v137[7];
      v83 = v137[8];
      v84 = v137[9];
      *(v76 + 156) = *(v137 + 156);
      *(v76 + 8) = v83;
      *(v76 + 9) = v84;
      *(v76 + 7) = v82;
      *(v71 + 4) = bswap32(v76 - v71);
      *(v71 + 5) = bswap32(v133);
      *(v71 + 6) = bswap32(v76 - v71 + 12);
      *(v71 + 7) = bswap32(v15);
      *(v71 + 8) = bswap32(v76 - v71 + 108);
      *(v71 + 9) = bswap32(v134);
    }

    v85 = &v76[172 * v136];
    if (v135)
    {
      v86 = *v29;
      v87 = *(v29 + 1);
      v88 = *(v29 + 3);
      *(v85 + 2) = *(v29 + 2);
      *(v85 + 3) = v88;
      *v85 = v86;
      *(v85 + 1) = v87;
      v89 = *(v29 + 4);
      v90 = *(v29 + 5);
      v91 = *(v29 + 7);
      *(v85 + 6) = *(v29 + 6);
      *(v85 + 7) = v91;
      *(v85 + 4) = v89;
      *(v85 + 5) = v90;
      v92 = *(v29 + 8);
      v93 = *(v29 + 9);
      v94 = *(v29 + 10);
      *(v85 + 22) = *(v29 + 22);
      *(v85 + 9) = v93;
      *(v85 + 10) = v94;
      *(v85 + 8) = v92;
      *v73 = bswap32(v85 - v71);
      *&v71[24 * v136 + 20] = bswap32(v132);
      *&v71[24 * v136 + 24] = bswap32(v85 - v71 + 12);
      *&v71[24 * v136 + 28] = bswap32(v131);
      *&v71[24 * v136 + 32] = bswap32(v85 - v71 + 140);
      *&v71[24 * v136 + 36] = bswap32(v130);
    }

    v95 = &v85[184 * v135];
    v9 = v137;
    if (v50)
    {
      v96 = *v38;
      v97 = *(v38 + 2);
      *(v95 + 1) = *(v38 + 1);
      *(v95 + 2) = v97;
      *v95 = v96;
      v98 = *(v38 + 3);
      v99 = *(v38 + 4);
      v100 = *(v38 + 6);
      *(v95 + 5) = *(v38 + 5);
      *(v95 + 6) = v100;
      *(v95 + 3) = v98;
      *(v95 + 4) = v99;
      v101 = *(v38 + 7);
      v102 = *(v38 + 8);
      v103 = *(v38 + 10);
      *(v95 + 9) = *(v38 + 9);
      *(v95 + 10) = v103;
      *(v95 + 7) = v101;
      *(v95 + 8) = v102;
      *v74 = bswap32(v95 - v71);
      *(v74 + 1) = bswap32(v39);
      *(v74 + 2) = bswap32(v95 - v71 + 12);
      *(v74 + 3) = bswap32(v129);
      *(v74 + 4) = bswap32(v95 - v71 + 108);
      *(v74 + 5) = bswap32(v128);
    }

    if (v68)
    {
      v104 = *v58;
      v105 = *(v58 + 1);
      v106 = &v95[176 * v50];
      v107 = *(v58 + 3);
      *(v106 + 2) = *(v58 + 2);
      *(v106 + 3) = v107;
      *v106 = v104;
      *(v106 + 1) = v105;
      v108 = *(v58 + 4);
      v109 = *(v58 + 5);
      v110 = *(v58 + 6);
      *(v106 + 14) = *(v58 + 14);
      *(v106 + 5) = v109;
      *(v106 + 6) = v110;
      *(v106 + 4) = v108;
      *v75 = bswap32(v106 - v71);
      *(v75 + 1) = bswap32(v127);
      *(v75 + 2) = bswap32(v106 - v71 + 12);
      *(v75 + 3) = bswap32(v125);
      *(v75 + 4) = bswap32(v106 - v71 + 40);
      *(v75 + 5) = bswap32(v122);
    }

    v111 = CFDataCreate(0, v71, v120 + 16);
    free(v72);
    if (!v111)
    {
      goto LABEL_100;
    }

    ColorSyncProfileSetTag(MutableCopy, @"meta", v111);
  }

  else
  {
    v111 = MutableCopy;
    MutableCopy = 0;
    v9 = v137;
  }

  CFRelease(v111);
LABEL_100:
  if (v9)
  {
    free(v9);
  }

  if (v29)
  {
    free(v29);
  }

  if (v38)
  {
    free(v38);
  }

  if (v58)
  {
    free(v58);
  }

  return MutableCopy;
}

float get_float_from_dictionary(const __CFDictionary *a1, const void *a2)
{
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(a1, a2);
  v3 = 0.0;
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberFloatType, &valuePtr))
      {
        return valuePtr;
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v3;
}

uint64_t get_primaries_from_dictionary(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v3 = Value, v4 = CFGetTypeID(Value), v4 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    v5 = CFNumberGetValue(v3, kCFNumberSInt8Type, &valuePtr);
    v6 = valuePtr;
    if (v5 != 1)
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

__CFDictionary *ColorSyncProfileCopyISO5Metadata(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v3 = ColorSyncProfileCopyTag(a1, @"meta");
      if (v3)
      {
        v4 = v3;
        Length = CFDataGetLength(v3);
        BytePtr = CFDataGetBytePtr(v4);
        Mutable = 0;
        if (!BytePtr || Length < 0x15)
        {
          goto LABEL_57;
        }

        v8 = BytePtr;
        if (*(BytePtr + 3) != 402653184)
        {
          goto LABEL_56;
        }

        v9 = *(BytePtr + 2);
        v10 = bswap32(v9);
        if (Length <= 24 * v10 + 16)
        {
          goto LABEL_56;
        }

        if (v9)
        {
          v11 = 0;
          v12 = (BytePtr + 20);
          v13 = v10;
          do
          {
            LODWORD(v14) = bswap32(*v12) + bswap32(*(v12 - 1));
            v15 = bswap32(v12[2]) + bswap32(v12[1]);
            v16 = bswap32(v12[4]) + bswap32(v12[3]);
            if (v14 <= v15)
            {
              LODWORD(v14) = v15;
            }

            if (v16 <= v14)
            {
              v14 = v14;
            }

            else
            {
              v14 = v16;
            }

            if (v11 <= v14)
            {
              v11 = v14;
            }

            v12 += 6;
            --v13;
          }

          while (v13);
          if (v11 <= Length)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              v17 = (v8 + 20);
              while (1)
              {
                v18 = CFStringCreateWithBytes(0, &v8[bswap32(*(v17 - 1))], bswap32(*v17), 0x10000100u, 0);
                if (v18)
                {
                  break;
                }

LABEL_49:
                v17 += 6;
                if (!--v10)
                {
                  goto LABEL_54;
                }
              }

              v19 = v18;
              if (CFEqual(v18, @"MDCV") == 1)
              {
                v20 = 0;
              }

              else if (CFEqual(v19, @"CCV") == 1)
              {
                v20 = 1;
              }

              else if (CFEqual(v19, @"CLL") == 1)
              {
                v20 = 2;
              }

              else
              {
                if (CFEqual(v19, @"CRWL") != 1)
                {
LABEL_48:
                  CFRelease(v19);
                  goto LABEL_49;
                }

                v20 = 3;
              }

              v21 = CFStringCreateWithBytes(0, &v8[bswap32(v17[1])], bswap32(v17[2]), 0x10000100u, 0);
              v22 = CFStringCreateWithBytes(0, &v8[bswap32(v17[3])], bswap32(v17[4]), 0x10000100u, 0);
              if (v20 > 1)
              {
                if (v20 == 2)
                {
                  content_light_level_dict = create_content_light_level_dict(v21, v22);
                  if (content_light_level_dict)
                  {
                    v24 = content_light_level_dict;
                    v25 = kColorSyncCLLInfo;
                    goto LABEL_43;
                  }
                }

                else
                {
                  content_reference_white_dict = create_content_reference_white_dict(v21, v22);
                  if (content_reference_white_dict)
                  {
                    v24 = content_reference_white_dict;
                    v25 = kColorSyncCRWLInfo;
                    goto LABEL_43;
                  }
                }
              }

              else if (v20)
              {
                content_color_volume_dict = create_content_color_volume_dict(v21, v22);
                if (content_color_volume_dict)
                {
                  v24 = content_color_volume_dict;
                  v25 = kColorSyncCCVInfo;
                  goto LABEL_43;
                }
              }

              else
              {
                master_display_color_volume_dict = create_master_display_color_volume_dict(v21, v22);
                if (master_display_color_volume_dict)
                {
                  v24 = master_display_color_volume_dict;
                  v25 = kColorSyncMDCVInfo;
LABEL_43:
                  CFDictionarySetValue(Mutable, *v25, v24);
                  CFRelease(v24);
                }
              }

              if (v22)
              {
                CFRelease(v22);
              }

              if (v21)
              {
                CFRelease(v21);
              }

              goto LABEL_48;
            }

            goto LABEL_57;
          }

          goto LABEL_56;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
LABEL_54:
          if (!CFDictionaryGetCount(Mutable))
          {
            CFRelease(Mutable);
LABEL_56:
            Mutable = 0;
          }
        }

LABEL_57:
        CFRelease(v4);
        return Mutable;
      }
    }
  }

  return 0;
}

CFDictionaryRef create_master_display_color_volume_dict(const __CFString *a1, const void *a2)
{
  keys[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x87FDB2D3uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u);
  v15 = 0;
  v14 = 0;
  if (sscanf(v7, "%f, %f, %i", &v15, &v14 + 4, &v14) == 3)
  {
    v8 = v14 & ~(v14 >> 31);
    if (v8 >= 255)
    {
      v8 = 255;
    }

    LODWORD(v14) = v8;
    keys[0] = kColorSyncMaxLuminance;
    keys[1] = kColorSyncMinLuminance;
    keys[2] = kColorSyncPrimaries;
    keys[3] = kColorSyncMetadataDisplayName;
    LODWORD(valuePtr[0]) = v15;
    valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
    v16 = HIDWORD(v14);
    valuePtr[1] = CFNumberCreate(0, kCFNumberFloatType, &v16);
    LOBYTE(v16) = v14;
    valuePtr[2] = CFNumberCreate(0, kCFNumberSInt8Type, &v16);
    valuePtr[3] = a2;
    if (a2)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    v10 = CFDictionaryCreate(0, keys, valuePtr, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 3; ++i)
    {
      v12 = valuePtr[i];
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  free(v7);
  return v10;
}

CFDictionaryRef create_content_color_volume_dict(const __CFString *a1, const void *a2)
{
  keys[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0xA160E2AuLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u);
  v16 = 0;
  v15 = 0;
  v14 = 0;
  if (sscanf(v7, "%f, %f, %f, %i", &v16, &v15 + 4, &v15, &v14) == 4)
  {
    v8 = v14 & ~(v14 >> 31);
    if (v8 >= 255)
    {
      v8 = 255;
    }

    v14 = v8;
    keys[0] = kColorSyncMaxLuminance;
    keys[1] = kColorSyncAverageLuminance;
    keys[2] = kColorSyncMinLuminance;
    keys[3] = kColorSyncPrimaries;
    keys[4] = kColorSyncMetadataDisplayName;
    LODWORD(valuePtr[0]) = v16;
    valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
    v17 = HIDWORD(v15);
    valuePtr[1] = CFNumberCreate(0, kCFNumberFloatType, &v17);
    v17 = v15;
    valuePtr[2] = CFNumberCreate(0, kCFNumberFloatType, &v17);
    LOBYTE(v17) = v14;
    valuePtr[3] = CFNumberCreate(0, kCFNumberSInt8Type, &v17);
    valuePtr[4] = a2;
    if (a2)
    {
      v9 = 5;
    }

    else
    {
      v9 = 4;
    }

    v10 = CFDictionaryCreate(0, keys, valuePtr, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 4; ++i)
    {
      v12 = valuePtr[i];
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  free(v7);
  return v10;
}

CFDictionaryRef create_content_light_level_dict(const __CFString *a1, const void *a2)
{
  keys[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x595D26BuLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u);
  v15 = 0;
  v14 = 0;
  if (sscanf(v7, "%f, %f, %i", &v15, &v14 + 4, &v14) == 3)
  {
    v8 = v14 & ~(v14 >> 31);
    if (v8 >= 255)
    {
      v8 = 255;
    }

    LODWORD(v14) = v8;
    keys[0] = kColorSyncMaxLightLevel;
    keys[1] = kColorSyncAverageLightLevel;
    keys[2] = kColorSyncPrimaries;
    keys[3] = kColorSyncMetadataDisplayName;
    keys[4] = 0;
    LODWORD(valuePtr[0]) = v15;
    valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
    v16 = HIDWORD(v14);
    valuePtr[1] = CFNumberCreate(0, kCFNumberFloatType, &v16);
    LOBYTE(v16) = v14;
    valuePtr[2] = CFNumberCreate(0, kCFNumberSInt8Type, &v16);
    valuePtr[3] = a2;
    valuePtr[4] = 0;
    if (a2)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    v10 = CFDictionaryCreate(0, keys, valuePtr, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 3; ++i)
    {
      v12 = valuePtr[i];
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  free(v7);
  return v10;
}

CFDictionaryRef create_content_reference_white_dict(const __CFString *a1, void *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x78FA0CE2uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u);
  v13 = 0;
  if (sscanf(v7, "%f", &v13) == 1 && (LODWORD(valuePtr[0]) = v13, (v8 = CFNumberCreate(0, kCFNumberFloatType, valuePtr)) != 0))
  {
    v9 = v8;
    valuePtr[0] = kColorSyncReferenceWhite;
    valuePtr[1] = kColorSyncMetadataDisplayName;
    values[0] = v8;
    values[1] = a2;
    if (a2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = CFDictionaryCreate(0, valuePtr, values, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  free(v7);
  return v11;
}

void *ColorSyncProfileGetID(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      return v1[11];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double ColorSyncConvertDoubleXYZFromD50(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, int a4, double *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = xmmword_19A96E220;
  v22 = 0x3FEA6594AF4F0D84;
  v11 = a1[1].f64[0];
  *a3 = *a1;
  a3[1].f64[0] = v11;
  v27 = 0.0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (!a5 || (v12 = *(a5 + 1), v23 = *a5, v24 = v12, v13 = *(a5 + 3), v25 = *(a5 + 2), v26 = v13, v27 = a5[8], !InvertMatrix(&v23)))
  {
    ColorSyncGetAdaptationMtx(a4, &v23, &v21, a2, a5, a6, a7, a8, v21);
  }

  v14 = *a3;
  v15 = a3[1].f64[0];
  v16 = a3->f64[1];
  v17 = vmuld_lane_f64(*&v25, *a3, 1) + a3->f64[0] * *(&v24 + 1) + v15 * *(&v25 + 1);
  v18 = 0.0;
  if (v17 < 0.0 || (v18 = 1.0, v17 > 1.0))
  {
    v17 = v18;
  }

  v19 = v16 * *(&v26 + 1) + v14.f64[0] * *&v26 + v15 * v27;
  result = v16 * *(&v23 + 1) + v14.f64[0] * *&v23 + v15 * *&v24;
  a3->f64[0] = result;
  a3->f64[1] = v17;
  a3[1].f64[0] = v19;
  return result;
}

float64x2_t *ColorSyncConvertXYZToXYZWithChromaticAdaptationMatrix(float64x2_t *result, double *a2, double *a3)
{
  v3 = result[1].f64[0];
  v4 = vmuld_lane_f64(a3[1], *result, 1) + result->f64[0] * *a3 + v3 * a3[2];
  v5 = vmuld_lane_f64(a3[4], *result, 1) + result->f64[0] * a3[3] + v3 * a3[5];
  v6 = vmuld_lane_f64(a3[7], *result, 1) + result->f64[0] * a3[6];
  *&v7 = 0.0;
  if (v4 < 0.0 || (*&v7 = 1.99996948, v4 > 1.99996948))
  {
    v4 = *&v7;
  }

  v8 = v6 + v3 * a3[8];
  v9 = 0.0;
  if (v5 < 0.0 || (v9 = 1.0, v5 > 1.0))
  {
    v5 = v9;
  }

  *&v10 = 0.0;
  if (v8 < 0.0 || (*&v10 = 1.99996948, v8 > 1.99996948))
  {
    v8 = *&v10;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v8;
  return result;
}

size_t __ColorSyncGetTempDirPath_block_invoke()
{
  result = confstr(65537, &ColorSyncGetTempDirPath_tempDirPath, 0x400uLL);
  if (!result)
  {
    ColorSyncGetTempDirPath_tempDirPath = 0;
  }

  return result;
}

void CMMFloatBitNChanEncoder::DoEncode()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

BOOL CMMDataBaseClass::IsSameData(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return *(a1 + 8) == *(*a2 + 8);
}

void *CMMFloatBitNChanEncoder::DoEncode(void *result, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v5 = 0;
  result[18] = result[21] + result[16] * result[22];
  do
  {
    v6 = result[20];
    if (!v6)
    {
      break;
    }

    v7 = result[19];
    v8 = result[22];
    v9 = v7 - v8;
    if (v7 - v8 >= result[1] - *a4)
    {
      v9 = result[1] - *a4;
    }

    if (v9)
    {
      v10 = result[3];
      v11 = v9;
      while (1)
      {
        if (v5 >= v10)
        {
          goto LABEL_40;
        }

        --v11;
        v12 = result[2];
        v13 = result[13];
        v14 = *v13;
        if (*v13)
        {
          break;
        }

        if (!v5)
        {
          v18 = result[18];
          goto LABEL_28;
        }

LABEL_25:
        if (v5 < v12)
        {
          goto LABEL_40;
        }

        *(a2 + 4 * v5 - 4) = *(a2 + 4 * v5 - 4) + 1.0;
        result[18] += result[16];
LABEL_29:
        if (!v11)
        {
          goto LABEL_32;
        }
      }

      v15 = 0;
      v16 = v5 - v12;
      v17 = v13 + 1;
      v18 = result[18];
      v19 = result[14];
      v20 = v5;
      do
      {
        if (v19)
        {
          v21 = (v17[v15] + 4 * v18);
          v22 = v19;
          do
          {
            v23 = *v21++;
            v24 = v20 + 1;
            *(a2 + 4 * v20++) = v23;
            --v22;
          }

          while (v22);
        }

        else
        {
          v24 = v20;
        }

        ++v15;
        v20 = v24;
      }

      while (v15 != v14);
      if (v5)
      {
        v25 = 0;
        v26 = (a2 + 4 * v5);
        v27 = v5;
        while (!v19)
        {
LABEL_22:
          ++v25;
          v26 += v19;
          if (v25 == v14)
          {
            goto LABEL_25;
          }
        }

        v27 += v19;
        v16 += v19;
        v28 = v19;
        v29 = v26;
        while (v29[-v12] == *v29)
        {
          ++v29;
          if (!--v28)
          {
            goto LABEL_22;
          }
        }
      }

LABEL_28:
      v5 += v12;
      *(a2 + 4 * v5 - 4) = 1065353216;
      result[18] = v18 + result[16];
      if (v5 >= v10)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    v11 = 0;
LABEL_32:
    v30 = v9 - v11;
    v31 = v30 + v8;
    if (v31 == v7)
    {
      v31 = 0;
      v32 = result[21] + result[17];
      result[18] = v32;
      result[20] = v6 - 1;
      result[21] = v32;
    }

    else if (v31 >= v7)
    {
      goto LABEL_40;
    }

    result[22] = v31;
    v33 = *a4 + v30;
    *a4 = v33;
    v34 = result[3];
    if (v5 <= v34)
    {
      v35 = result[1];
      if (v33 <= v35)
      {
        continue;
      }
    }

LABEL_40:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  while (v5 != v34 && v33 != v35);
  *a5 = v5 / result[2];
  return result;
}

void CMMFloatBitNChanDecoder::DoDecode()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

void *CMMFloatBitNChanDecoder::DoDecode(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result[1];
  v9 = v8 * a4;
  v10 = result[14];
  v11 = result[19];
  v12 = result[20];
  v13 = result[18];
  v14 = v11 + v12 * v10;
  result[16] = v14;
  do
  {
    if (!v13)
    {
      break;
    }

    v15 = result[17];
    if (v15 == v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 - v12;
      while (1)
      {
        if (v4 >= 0xC00 / v8 * v8)
        {
          goto LABEL_37;
        }

        v17 = result[11];
        v18 = *v17;
        if (v7)
        {
          if (v18)
          {
            v19 = 0;
            v20 = v17 + 1;
            v21 = result[12];
            do
            {
              if (v21)
              {
                v22 = v20[v19];
                v23 = (v22 + 4 * v14);
                v24 = (v22 + 4 * v5);
                v25 = v21;
                do
                {
                  v26 = *v24++;
                  *v23++ = v26;
                  --v25;
                }

                while (v25);
              }

              ++v19;
            }

            while (v19 != v18);
          }
        }

        else
        {
          if (v18)
          {
            v27 = 0;
            v28 = v17 + 1;
            v29 = result[12];
            v30 = v4;
            do
            {
              if (v29)
              {
                v31 = (v28[v27] + 4 * v14);
                v32 = v29;
                do
                {
                  v33 = v30 + 1;
                  *v31++ = *(a2 + 4 * v30++);
                  --v32;
                }

                while (v32);
              }

              else
              {
                v33 = v30;
              }

              ++v27;
              v30 = v33;
            }

            while (v27 != v18);
          }

          v34 = *(a2 + 4 * (v8 - 1 + v4));
          if (!v34)
          {
            goto LABEL_37;
          }

          v6 = v34;
          v5 = v14;
        }

        if (!v6)
        {
          goto LABEL_37;
        }

        --v16;
        v14 += v10;
        v7 = --v6 != 0;
        if (!v6)
        {
          v4 += v8;
          if (v4 == v9)
          {
            break;
          }
        }

        if (!v16)
        {
          goto LABEL_31;
        }
      }

      v6 = 0;
      v7 = 0;
      v4 = v9;
    }

LABEL_31:
    v12 = v15 - v16;
    if (v15 - v16 == v15)
    {
      v12 = 0;
      v11 += result[15];
      result[18] = --v13;
      result[19] = v11;
      v14 = v11;
    }

    else if (v12 >= v15)
    {
      goto LABEL_37;
    }

    result[20] = v12;
    if (v4 > v9)
    {
LABEL_37:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }
  }

  while (v4 != v9);
  result[16] = v14;
  return result;
}

uint64_t CMMAlphaCopier::Copy(uint64_t this, unint64_t a2)
{
  while (a2)
  {
    v3 = *(this + 24);
    v2 = *(this + 32);
    v5 = *(this + 88);
    v4 = *(this + 96);
    v7 = *(this + 40);
    v6 = *(this + 48);
    v8 = *(this + 120);
    if (v8)
    {
      v9 = *(this + 80);
      v10 = v9 - v4;
      if (v9 - v4 >= a2)
      {
        v10 = a2;
      }
    }

    else
    {
      v11 = *(this + 72);
      v9 = *(this + 80);
      v10 = v11 - v5;
      if (v11 - v5 >= v9 - v4)
      {
        v10 = v9 - v4;
      }

      if (v10 >= a2)
      {
        v10 = a2;
      }

      v12 = v10 + v5;
      *(this + 88) = (v10 + v5) % v11;
      if ((v10 + v5) / v11 != 1 && v11 <= v12)
      {
LABEL_56:
        exception = __cxa_allocate_exception(4uLL);
        *exception = -171;
      }

      if (v11 <= v12)
      {
        *(this + 24) = v3 + *(this + 56);
      }
    }

    *(this + 96) = (v10 + v4) % v9;
    if (v9 <= v10 + v4 && (v10 + v4) / v9 != 1)
    {
      goto LABEL_56;
    }

    if (v9 <= v10 + v4)
    {
      *(this + 32) = v2 + *(this + 64);
    }

    v14 = (v2 + v6 * v4);
    if (v8)
    {
      if (*(this + 112) == 1)
      {
        if (v10)
        {
          v15 = v10;
          do
          {
            *v14 = -1;
            v14 += *(this + 48);
            --v15;
          }

          while (v15);
        }
      }

      else
      {
        for (i = v10; i; --i)
        {
          *v14 = -1;
          v14 += v6;
        }
      }
    }

    else
    {
      v16 = (v3 + v7 * v5);
      v17 = *(this + 104);
      v18 = *(this + 112);
      if (v17 == v18)
      {
        if (v10)
        {
          v19 = v7 - v17;
          v20 = v6 - v17;
          v21 = v10;
          do
          {
            for (j = *(this + 112); j; --j)
            {
              v23 = *v16++;
              *v14++ = v23;
            }

            v16 += v19;
            v14 += v20;
            --v21;
          }

          while (v21);
        }
      }

      else if (v17 <= v18)
      {
        if (v17 != 1 || v18 != 2)
        {
          goto LABEL_56;
        }

        for (k = v10; k; --k)
        {
          *v14 = *v16 | (*v16 << 8);
          v16 += v7;
          v14 += v6;
        }
      }

      else
      {
        if (v17 != 2 || v18 != 1)
        {
          goto LABEL_56;
        }

        for (m = v10; m; --m)
        {
          if (*v16)
          {
            v26 = *v16 / 0x101u;
            if (v26 - 1 > v26 || v26 + 1 < v26)
            {
              goto LABEL_56;
            }
          }

          else
          {
            LOBYTE(v26) = 0;
          }

          *v14 = v26;
          v16 += *(this + 40);
          v14 += *(this + 48);
        }
      }
    }

    a2 -= v10;
  }

  return this;
}

uint64_t CMMFloatAlphaCopier::Copy(uint64_t this, unint64_t a2)
{
  if (a2)
  {
    v2 = *(this + 120);
    do
    {
      if (v2)
      {
        v3 = 0;
        v4 = *(this + 152);
        v5 = *(this + 216);
        v6 = *(this + 168);
        v7 = (v4 + 4 * v6 * v5);
        v8 = *(this + 200);
        v9 = v8 - v5;
        if (v8 - v5 >= a2)
        {
          v9 = a2;
        }
      }

      else
      {
        v10 = *(this + 144);
        v4 = *(this + 152);
        v11 = *(this + 208);
        v5 = *(this + 216);
        v12 = *(this + 160);
        v6 = *(this + 168);
        v13 = *(this + 192);
        v8 = *(this + 200);
        v9 = v13 - v11;
        if (v13 - v11 >= v8 - v5)
        {
          v9 = v8 - v5;
        }

        if (v9 >= a2)
        {
          v9 = a2;
        }

        v14 = v9 + v11;
        *(this + 208) = (v9 + v11) % v13;
        if ((v9 + v11) / v13 != 1 && v13 <= v14)
        {
LABEL_30:
          exception = __cxa_allocate_exception(4uLL);
          *exception = -171;
        }

        v3 = (v10 + 4 * v12 * v11);
        v7 = (v4 + 4 * v6 * v5);
        if (v13 <= v14)
        {
          *(this + 144) = v10 + 4 * *(this + 176);
        }
      }

      v16 = v5 + v9;
      *(this + 216) = v16 % v8;
      if (v8 <= v16 && v16 / v8 != 1)
      {
        goto LABEL_30;
      }

      if (v8 <= v16)
      {
        *(this + 152) = v4 + 4 * *(this + 184);
      }

      if (v9)
      {
        v17 = 4 * v6;
        v18 = 4 * *(this + 160);
        v19 = v9;
        do
        {
          if (v2)
          {
            v20 = (this + 224);
          }

          else
          {
            v20 = v3;
          }

          *v7 = *v20;
          v7 = (v7 + v17);
          v3 = (v3 + v18);
          --v19;
        }

        while (v19);
      }

      a2 -= v9;
    }

    while (a2);
  }

  return this;
}

void CMMConvTRC::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v149 = *MEMORY[0x1E69E9840];
  if (a5 && (*(a1 + 33) & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    if (*(a1 + 35))
    {
      v146 = 0;
      goto LABEL_8;
    }

    v8 = *(a1 + 36) == 0;
  }

  v146 = v8;
LABEL_8:
  v9 = a4 * a3;
  v10 = *(a1 + 88);
  if (v10 == 1)
  {
    v31 = *(a1 + 100);
    if (v31 <= 4)
    {
      if (v31 <= 1)
      {
        if (v31)
        {
          if (v31 == 1)
          {
            v68 = *(a1 + 72);
            if (v9 > v68)
            {
              v69 = *(a1 + 112);
              v70 = *(a1 + 116);
              v71 = *(a1 + 120);
              do
              {
                v72 = *(a2 + 4 * v68);
                v73 = *(a1 + 34);
                if ((LODWORD(v72) & 0x7FFFFFFFu) >= 0x7F800000)
                {
                  bzero(__str, 0x400uLL);
                  snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v72);
                  CMMThrowExceptionWithLog(0, __str);
                }

                v74 = fabsf(v72);
                if (v73)
                {
                  v75 = v74;
                }

                else
                {
                  v75 = v72;
                }

                v76 = 0.0;
                if (v75 >= (-v71 / v70))
                {
                  v76 = powf(v71 + (v70 * v75), v69);
                  if (((v72 < 0.0) & v73) != 0)
                  {
                    v76 = -v76;
                  }
                }

                *(a2 + 4 * v68) = v76;
                if ((v146 & *(a1 + 33) & 1) == 0)
                {
                  if (v76 <= 1.0)
                  {
                    v77 = v76;
                  }

                  else
                  {
                    v77 = 1.0;
                  }

                  if (v76 >= 0.0)
                  {
                    v78 = v77;
                  }

                  else
                  {
                    v78 = 0.0;
                  }

                  *(a2 + 4 * v68) = v78;
                }

                v68 += a3;
              }

              while (v68 < v9);
            }
          }
        }

        else
        {
          v110 = *(a1 + 72);
          if (v9 > v110)
          {
            v111 = *(a1 + 112);
            do
            {
              v112 = *(a2 + 4 * v110);
              v113 = *(a1 + 34);
              if ((LODWORD(v112) & 0x7FFFFFFFu) >= 0x7F800000)
              {
                bzero(__str, 0x400uLL);
                snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v112);
                CMMThrowExceptionWithLog(0, __str);
              }

              if (v111 != 1.0)
              {
                v114 = fabsf(v112);
                if (!v113)
                {
                  v114 = v112;
                }

                v115 = powf(v114, v111);
                if (((v112 < 0.0) & v113) != 0)
                {
                  v115 = -v115;
                }

                *(a2 + 4 * v110) = v115;
              }

              if ((v146 & *(a1 + 33) & 1) == 0)
              {
                v116 = *(a2 + 4 * v110);
                if (v116 <= 1.0)
                {
                  v117 = *(a2 + 4 * v110);
                }

                else
                {
                  v117 = 1.0;
                }

                if (v116 >= 0.0)
                {
                  v118 = v117;
                }

                else
                {
                  v118 = 0.0;
                }

                *(a2 + 4 * v110) = v118;
              }

              v110 += a3;
            }

            while (v110 < v9);
          }
        }
      }

      else if (v31 == 2)
      {
        v79 = *(a1 + 72);
        if (v9 > v79)
        {
          v80 = *(a1 + 116);
          v144 = *(a1 + 112);
          v81 = *(a1 + 120);
          v82 = *(a1 + 124);
          do
          {
            v83 = *(a2 + 4 * v79);
            v84 = *(a1 + 34);
            if ((LODWORD(v83) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v83);
              CMMThrowExceptionWithLog(0, __str);
            }

            v85 = fabsf(v83);
            if (((v83 < 0.0) & v84) != 0)
            {
              v86 = -1.0;
            }

            else
            {
              v86 = 1.0;
            }

            if (!v84)
            {
              v85 = v83;
            }

            if (v85 >= (-v81 / v80))
            {
              v87 = v82 + (v86 * powf(v81 + (v80 * v85), v144));
            }

            else
            {
              v87 = v82 * v86;
            }

            *(a2 + 4 * v79) = v87;
            if ((v146 & *(a1 + 33) & 1) == 0)
            {
              if (v87 <= 1.0)
              {
                v88 = v87;
              }

              else
              {
                v88 = 1.0;
              }

              v54 = v87 < 0.0;
              v89 = 0.0;
              if (!v54)
              {
                v89 = v88;
              }

              *(a2 + 4 * v79) = v89;
            }

            v79 += a3;
          }

          while (v79 < v9);
        }
      }

      else if (v31 == 3)
      {
        v119 = *(a1 + 72);
        if (v9 > v119)
        {
          v120 = *(a1 + 112);
          v145 = *(a1 + 116);
          v121 = *(a1 + 120);
          v122 = *(a1 + 124);
          v123 = *(a1 + 128);
          do
          {
            v124 = *(a2 + 4 * v119);
            v125 = *(a1 + 34);
            if ((LODWORD(v124) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v124);
              CMMThrowExceptionWithLog(0, __str);
            }

            v126 = fabsf(v124);
            if (((v124 < 0.0) & v125) != 0)
            {
              v127 = -1.0;
            }

            else
            {
              v127 = 1.0;
            }

            if (!v125)
            {
              v126 = v124;
            }

            if (v126 >= v123)
            {
              v128 = v127 * powf(v121 + (v145 * v126), v120);
            }

            else
            {
              v128 = v126 * (v122 * v127);
            }

            *(a2 + 4 * v119) = v128;
            if ((v146 & *(a1 + 33) & 1) == 0)
            {
              if (v128 <= 1.0)
              {
                v129 = v128;
              }

              else
              {
                v129 = 1.0;
              }

              v54 = v128 < 0.0;
              v130 = 0.0;
              if (!v54)
              {
                v130 = v129;
              }

              *(a2 + 4 * v119) = v130;
            }

            v119 += a3;
          }

          while (v119 < v9);
        }
      }

      else
      {
        v41 = *(a1 + 72);
        if (v9 > v41)
        {
          v42 = *(a1 + 112);
          v143 = *(a1 + 116);
          v43 = *(a1 + 120);
          v44 = *(a1 + 124);
          v45 = *(a1 + 128);
          v46 = *(a1 + 132);
          v47 = *(a1 + 136);
          do
          {
            v48 = *(a2 + 4 * v41);
            v49 = *(a1 + 34);
            if ((LODWORD(v48) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v48);
              CMMThrowExceptionWithLog(0, __str);
            }

            v50 = fabsf(v48);
            if (v48 < 0.0)
            {
              v51 = v49;
            }

            else
            {
              v51 = 0;
            }

            if (!v49)
            {
              v50 = v48;
            }

            if (v50 >= v45)
            {
              v52 = v46 + powf(v43 + (v143 * v50), v42);
            }

            else
            {
              v52 = v47 + (v44 * v50);
            }

            if (v51)
            {
              v52 = -v52;
            }

            *(a2 + 4 * v41) = v52;
            if ((v146 & *(a1 + 33) & 1) == 0)
            {
              if (v52 <= 1.0)
              {
                v53 = v52;
              }

              else
              {
                v53 = 1.0;
              }

              v54 = v52 < 0.0;
              v55 = 0.0;
              if (!v54)
              {
                v55 = v53;
              }

              *(a2 + 4 * v41) = v55;
            }

            v41 += a3;
          }

          while (v41 < v9);
        }
      }
    }

    else if (v31 > 7)
    {
      switch(v31)
      {
        case 8:
          v90 = *(a1 + 72);
          if (v9 > v90)
          {
            v91 = *(a1 + 124);
            v92 = *(a1 + 128);
            v93 = *(a1 + 116);
            v94 = -*(a1 + 120);
            do
            {
              v95 = *(a2 + 4 * v90);
              v96 = fabsf(v95);
              if (v96 <= v92)
              {
                v98 = sqrtf(v96 * 3.0);
              }

              else
              {
                v97 = v94 + v96 * 12.0;
                v98 = v91 + (v93 * logf(v97));
              }

              if (v95 < 0.0)
              {
                v98 = -v98;
              }

              *(a2 + 4 * v90) = v98;
              v90 += a3;
            }

            while (v90 < v9);
          }

          break;
        case 9:
          v56 = *(a1 + 72);
          if (v9 > v56)
          {
            v57 = *(a1 + 116);
            v147 = *(a1 + 112);
            v58 = *(a1 + 120);
            v59 = *(a1 + 124);
            v60 = *(a1 + 128);
            v61 = *(a1 + 132);
            do
            {
              v62 = *(a2 + 4 * v56);
              v63 = fabsf(v62) - v147;
              if (v63 < 0.0)
              {
                v63 = 0.0;
              }

              v64 = v57 * v63;
              if (v64 > v58)
              {
                v64 = v58 + (logf(((v64 - v58) * v59) + 1.0) / v59);
              }

              v65 = v61 * powf(v64, v60);
              if (v65 <= 1.0)
              {
                v66 = v65;
              }

              else
              {
                v66 = 1.0;
              }

              if (v65 >= 0.0)
              {
                v67 = v66;
              }

              else
              {
                v67 = 0.0;
              }

              if (v62 < 0.0)
              {
                v67 = -v67;
              }

              *(a2 + 4 * v56) = v67;
              v56 += a3;
            }

            while (v56 < v9);
          }

          break;
        case 10:
          exception = __cxa_allocate_exception(4uLL);
          *exception = -171;
      }
    }

    else if (v31 == 5)
    {
      v99 = *(a1 + 72);
      if (v9 > v99)
      {
        v100 = *(a1 + 116);
        v101 = *(a1 + 120);
        v102 = *(a1 + 124);
        v103 = *(a1 + 128);
        v104 = *(a1 + 136);
        v105 = -*(a1 + 132);
        do
        {
          v106 = *(a2 + 4 * v99);
          v107 = powf(fabsf(v106), v100);
          v108 = v104 * powf(fmaxf(v107 - v102, 0.0) / (v103 + (v105 * v107)), v101);
          v109 = -v108;
          if (v106 >= 0.0)
          {
            v109 = v108;
          }

          *(a2 + 4 * v99) = v109;
          v99 += a3;
        }

        while (v99 < v9);
      }
    }

    else if (v31 == 6)
    {
      v131 = *(a1 + 72);
      if (v9 > v131)
      {
        v132 = *(a1 + 116);
        v133 = *(a1 + 120);
        v134 = *(a1 + 124);
        v135 = *(a1 + 128);
        v136 = *(a1 + 132);
        v137 = 1.0 / *(a1 + 136);
        do
        {
          v138 = *(a2 + 4 * v131);
          v139 = powf(v137 * fabsf(v138), v132);
          v140 = (v134 + (v135 * v139)) / ((v136 * v139) + 1.0);
          v141 = powf(v140, v133);
          if (v138 < 0.0)
          {
            v141 = -v141;
          }

          *(a2 + 4 * v131) = v141;
          v131 += a3;
        }

        while (v131 < v9);
      }
    }

    else
    {
      v32 = *(a1 + 72);
      if (v9 > v32)
      {
        v33 = *(a1 + 116);
        v34 = *(a1 + 120);
        v35 = *(a1 + 124);
        v36 = *(a1 + 128);
        v37 = *(a1 + 132);
        do
        {
          v38 = *(a2 + 4 * v32);
          v39 = fabsf(v38);
          if (v39 <= 0.5)
          {
            v40 = (v38 * v38) / 3.0;
          }

          else
          {
            v40 = v36 * (v34 + expf((v39 - v35) / v33));
          }

          if (v38 < 0.0)
          {
            v40 = -v40;
          }

          *(a2 + 4 * v32) = v37 * v40;
          v32 += a3;
        }

        while (v32 < v9);
      }
    }
  }

  else if (!v10)
  {
    v11 = *(a1 + 104);
    v12 = v11[4];
    v13 = CMMTable::UInt8Data(v11[2], v11[3]);
    v14 = *(a1 + 72);
    if (v9 > v14)
    {
      v15 = v13;
      v16 = (v12 >> 2) - 1;
      v17 = *(a1 + 144);
      v18 = *(a1 + 148);
      v19 = *(a1 + 152);
      v20 = *(a1 + 156);
      v21 = (v13 + 0x4000);
      do
      {
        v22 = *(a2 + 4 * v14);
        v23 = *(a1 + 34);
        if ((LODWORD(v22) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          bzero(__str, 0x400uLL);
          snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v22);
          CMMThrowExceptionWithLog(0, __str);
        }

        v24 = fabsf(v22);
        if (v22 < 0.0)
        {
          v25 = v23;
        }

        else
        {
          v25 = 0;
        }

        if (!v23)
        {
          v24 = v22;
        }

        if (v24 <= 1.0)
        {
          if (v24 >= 0.0)
          {
            v27 = v24 * v16;
            v29 = v27 + 1;
            if (v16 < v29)
            {
              v29 = v16;
            }

            v28 = v15[v27];
            v30 = v28 + ((v15[v29] - v28) * (v27 - v27));
            v26 = -v30;
            if (!v25)
            {
              v26 = v30;
            }
          }

          else if (v146)
          {
            v26 = v18 + (v17 * v24);
          }

          else
          {
            v26 = *v15;
          }
        }

        else if (v146)
        {
          v26 = v20 + (v19 * v24);
        }

        else
        {
          v26 = *v21;
        }

        *(a2 + 4 * v14) = v26;
        v14 += a3;
      }

      while (v14 < v9);
    }
  }
}

CFDataRef CMMConvTRC::create_flattened_TRC_data(CMMConvTRC *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 4097;
  if (!theDict || !CFDictionaryContainsKey(theDict, kColorSyncTransformTRCSize))
  {
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(theDict, kColorSyncTransformTRCSize);
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v7 = valuePtr;
    *a3 = valuePtr;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *a3;
    if (!*a3)
    {
LABEL_8:
      v7 = *(this + 20);
      *a3 = v7;
    }
  }

  if (v7 == 4097 || (v8 = 4 * v7, (Mutable = CFDataCreateMutable(0, v8)) == 0))
  {
LABEL_21:
    v21 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
    return CFDataCreate(0, v21, 16388);
  }

  v10 = Mutable;
  CFDataSetLength(Mutable, v8);
  v11 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
  MutableBytePtr = CFDataGetMutableBytePtr(v10);
  v13 = *a3;
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = (i * 4096.0) / (v13 - 1);
      v16 = vcvtms_u32_f32(v15);
      if (v16 >= 0x1000)
      {
        v17 = 4096;
      }

      else
      {
        v17 = v16;
      }

      v18 = (v11 + 4 * v17);
      v19 = *v18;
      if (v16 <= 0xFFF)
      {
        v20 = v15 - v17;
        if (v20 != 0.0)
        {
          v19 = v19 + ((v18[1] - v19) * v20);
        }
      }

      *&MutableBytePtr[4 * i] = v19;
    }
  }

  return v10;
}

void CMMConvNode::PrintInfo(CMMConvNode *this)
{
  v4 = 0;
  CMMMemMgr::CMMMemMgr(&v4);
  v2 = (*(*this + 208))(this, 0);
  v3 = v2;
  if (v2)
  {
    CFShow(v2);
    CFRelease(v3);
  }

  CMMMemMgr::ReleaseMemList(&v4);
}

void sub_19A946F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

uint64_t CMMConvTRC::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    v6 = *(result + 44);
    if (v5 <= v6)
    {
      v6 = *(a2 + 4 * i);
    }

    if (v5 >= *(result + 40))
    {
      v7 = v6;
    }

    else
    {
      v7 = *(result + 40);
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

uint64_t CMMConvTRC::ClampInput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    v6 = *(result + 44);
    if (v5 <= v6)
    {
      v6 = *(a2 + 4 * i);
    }

    if (v5 >= *(result + 40))
    {
      v7 = v6;
    }

    else
    {
      v7 = *(result + 40);
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

uint64_t CMMConvTRC::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(*a1 + 256))(a1, a2, a4, a5, *(a3 + 1));
}

{
  v5 = a4;
  v8 = a5 * a4;
  result = CMMTable::UInt8Data(*(*(a1 + 64) + 16), *(*(a1 + 64) + 24));
  v10 = *(a1 + 72);
  if (v8 > v10)
  {
    v11 = v10 + v5;
    do
    {
      v12 = *(a2 + 4 * v10);
      if (v12 >= 0x1000001)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -171;
      }

      v13 = (result + ((v12 >> 10) & 0x3FFFFC));
      v14 = *v13;
      v15 = v12 & 0xFFF;
      if (v15)
      {
        v14 += ((v13[1] - v14) * v15 + 2048) >> 12;
      }

      *(a2 + 4 * v10) = v14;
      v10 = v11;
      v16 = v8 > v11;
      v11 += v5;
    }

    while (v16);
  }

  return result;
}

_DWORD *CMMConvTRC::SetOutputClamp(CMMConvTRC *this)
{
  *(this + 36) = 1;
  result = *(this + 3);
  if (result)
  {
    if (result)
    {
      if (result[18] < *(this + 18))
      {
        v3 = *(*result + 48);

        return v3();
      }
    }
  }

  return result;
}

int *InvertLUT(int *result, int *a2)
{
  v2 = 0;
  v3 = *result;
  v4 = result[4096];
  v5 = 4096;
  do
  {
    if (v3 <= v4)
    {
      v6 = v2;
    }

    else
    {
      v6 = v5;
    }

    v7 = result[v6];
    if (v2)
    {
      if (v7 <= 1)
      {
        v7 = 1;
      }

      v8 = &a2[v2];
      if (*(v8 - 1) > v7)
      {
        v7 = *(v8 - 1);
      }

      *v8 = v7;
    }

    else
    {
      *a2 = v7;
    }

    ++v2;
    --v5;
  }

  while (v2 != 4097);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = a2 + 2;
  v13 = *a2;
  v14 = a2[1];
  v15 = 4096;
  do
  {
    v16 = v9 << 12;
    if (v10 <= 4094 && v16 >= a2[v10 + 1])
    {
      v17 = v10;
      v18 = v15 - (v10 << 12);
      v19 = v18 + 16773120;
      v11 = v18 + 16769024;
      while (1)
      {
        v13 = v14;
        v14 = v12[v17];
        if (v17 == 4094)
        {
          break;
        }

        v20 = v15;
        v15 += 4096;
        v21 = v12[v17++];
        if (v16 < v21)
        {
          v11 = v20;
          v10 = v17;
          goto LABEL_21;
        }
      }

      v10 = 4095;
      v15 = v19;
    }

LABEL_21:
    v22 = (v14 - v13);
    v23 = v15;
    if (v22 >= 1)
    {
      v23 = v11 + ((v22 >> 1) + ((v16 - v13) << 12)) / v22;
    }

    result[v9] = v23;
    if ((v23 & 0x80000000) != 0)
    {
      v23 = 0;
    }

    else
    {
      if (v23 < 0x1000001)
      {
        goto LABEL_28;
      }

      v23 = 0x1000000;
    }

    result[v9] = v23;
LABEL_28:
    if (v3 > v4)
    {
      result[v9] = 0x1000000 - v23;
    }

    ++v9;
  }

  while (v9 != 4097);
  v24 = result[4096];
  v25 = result[1] - *result;
  if (v25 < 0)
  {
    v25 = *result - result[1];
  }

  if (v25 < 0x800)
  {
    result[1] = *result;
  }

  v26 = v24 - result[4095];
  if (v26 < 0)
  {
    v26 = result[4095] - v24;
  }

  if (v26 <= 0x7FF)
  {
    result[4095] = v24;
  }

  return result;
}

void CMMConvPQEOTF::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 92) == 17)
  {

    CMMConvTRC::ConvertFloat(a1, a2, a3, a4, 0);
  }

  else
  {
    v7 = a4 * a3;
    v8 = *(a1 + 72);
    if (a4 * a3 > v8)
    {
      do
      {
        v9 = *(a2 + 4 * v8);
        v10 = powf(fabsf(v9), 0.012683);
        v11 = powf(fmaxf(v10 + -0.83594, 0.0) / ((v10 * -18.688) + 18.852), 6.2774);
        if (v9 < 0.0)
        {
          v11 = -v11;
        }

        *(a2 + 4 * v8) = *(a1 + 164) * v11;
        v8 += a3;
      }

      while (v8 < v7);
    }
  }
}

CFDataRef CMMConvPQEOTF::create_flattened_TRC_data(CMMConvPQEOTF *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 0;
  if (!theDict)
  {
    valuePtr = 4097;
LABEL_10:
    v6 = 65552;
    *a3 = 65552;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQEOTFTableSize");
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v6 = valuePtr;
    *a3 = valuePtr;
  }

  else
  {
    v6 = *a3;
  }

  if (v6 != 1024)
  {
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(this + 41) == 1.0)
  {
    return CFDataCreate(0, kPQEOTFFloat1024Data, 4096);
  }

  v6 = 1024;
LABEL_11:
  v7 = 4 * v6;
  Mutable = CFDataCreateMutable(0, v7);
  v9 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v12 = *a3;
    if (v12)
    {
      v13 = *(this + 41);
      *v11.i32 = (v12 - 1);
      v28 = vdupq_n_s64(v12 - 1);
      v14 = vdup_lane_s32(v11, 0);
      v15 = (v12 + 1) & 0x1FFFFFFFELL;
      v16 = 0x100000000;
      v17 = xmmword_19A96E050;
      v18 = (MutableBytePtr + 4);
      v19 = vdup_n_s32(0xBF560000);
      v20 = vdup_n_s32(0xC1958000);
      v21 = vdup_n_s32(0x4196D000u);
      v27 = vdupq_n_s64(2uLL);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v28, v17));
        v34 = v17;
        v22 = vabs_f32(vdiv_f32(vcvt_f32_u32(v16), v14));
        v29 = v22.f32[0];
        v31 = powf(v22.f32[1], 0.012683);
        v23.f32[0] = powf(v29, 0.012683);
        v23.f32[1] = v31;
        v24 = vdiv_f32(vmaxnm_f32(vadd_f32(v23, v19), 0), vmla_f32(v21, v20, v23));
        v30 = v24.f32[0];
        v32 = powf(v24.f32[1], 6.2774);
        v25.f32[0] = powf(v30, 6.2774);
        v25.f32[1] = v32;
        if (v33.i8[0])
        {
          *(v18 - 1) = v13 * v25.f32[0];
        }

        if (v33.i8[4])
        {
          *v18 = vmuls_lane_f32(v13, v25, 1);
        }

        v17 = vaddq_s64(v34, v27);
        v16 = vadd_s32(v16, 0x200000002);
        v18 += 2;
        v15 -= 2;
      }

      while (v15);
    }
  }

  return v9;
}

__CFDictionary *CMMConvPQEOTF::FlattenConversion(CMMConvPQEOTF *this, const __CFDictionary *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  v5 = CFNumberCreate(0, kCFNumberSInt32Type, this + 72);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionChannelID, v5);
    CFRelease(v6);
  }

  v7 = CFNumberCreate(0, kCFNumberSInt32Type, this + 76);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.ChannelsInStageCount", v7);
    CFRelease(v8);
  }

  v9 = MEMORY[0x1E695E4D0];
  if (!a2 || CFDictionaryGetValue(a2, @"com.apple.cmm.PQEOTFTable") != *v9)
  {
    if (*(this + 23) != 17)
    {
      v10 = kColorSyncConversionParamPQEOTF;
      v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (v11)
      {
        v12 = v11;
        v13 = this + 112;
        v14 = 6;
        while (1)
        {
          v15 = CFNumberCreate(0, kCFNumberFloat32Type, v13);
          if (!v15)
          {
            break;
          }

          v16 = v15;
          CFArrayAppendValue(v12, v15);
          CFRelease(v16);
          v13 += 4;
          if (!--v14)
          {
            v17 = CFNumberCreate(0, kCFNumberFloat32Type, this + 140);
            if (v17)
            {
              v18 = v17;
              CFArrayAppendValue(v12, v17);
              CFRelease(v18);
            }

            CFDictionaryAddValue(Mutable, v10, v12);
            break;
          }
        }

        v19 = v12;
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (*(this + 23) == 17)
  {
LABEL_18:
    v20 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
    v21 = CFDataCreate(0, v20, *(*(this + 13) + 32));
    if (v21)
    {
      v22 = v21;
      CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v21);
      CFRelease(v22);
    }

    LODWORD(valuePtr[0]) = 1024;
    goto LABEL_21;
  }

  LODWORD(valuePtr[0]) = 0;
  v31 = (*(*this + 248))(this, a2, valuePtr);
  if (v31)
  {
    v32 = v31;
    CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v31);
    CFRelease(v32);
  }

LABEL_21:
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v23)
  {
    v24 = v23;
    CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v23);
    v19 = v24;
LABEL_23:
    CFRelease(v19);
  }

LABEL_24:
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionaryAddValue(Mutable, kColorSyncTransformGammaID, v25);
  CFRelease(v25);
  CFDictionaryAddValue(Mutable, kColorSyncTransformPureGammaOriginalTRC, *MEMORY[0x1E695E4C0]);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v26, *(this + 10), *(this + 11));
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v9);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  v34 = 0;
  v33 = *(this + 41);
  if (v33 != 1.0)
  {
    v27 = CFNumberCreate(0, kCFNumberFloat32Type, &v34);
    v28 = CFNumberCreate(0, kCFNumberFloat32Type, &v33);
    valuePtr[0] = v27;
    valuePtr[1] = v28;
    v29 = CFArrayCreate(0, valuePtr, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v27);
    CFRelease(v28);
    if (v29)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v29);
      CFRelease(v29);
    }
  }

  return Mutable;
}

uint64_t CMMConvPQEOTF::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    v6 = *(result + 164);
    if (v5 <= v6)
    {
      v6 = *(a2 + 4 * i);
    }

    if (v5 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

uint64_t CMMConvPQEOTF::ClampInput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    if (v5 <= 1.0)
    {
      v6 = *(a2 + 4 * i);
    }

    else
    {
      v6 = 1.0;
    }

    if (v5 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

void CMMConvPQEOTF::~CMMConvPQEOTF(CMMConvPQEOTF *this)
{
  CMMConvTRC::~CMMConvTRC(this);

  CMMBase::operator delete(v1);
}

void CMMConvHLGInvOETF::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 * a3;
  v5 = *(a1 + 72);
  if (a4 * a3 > v5)
  {
    do
    {
      v9 = *(a2 + 4 * v5);
      v10 = *(a1 + 136);
      v11 = fabsf(v9);
      if (v11 <= 0.5)
      {
        v12 = v9 * v9;
        v13 = 3.0;
      }

      else
      {
        v12 = expf((v11 + -0.55991) / 0.17883) + 0.28467;
        v13 = 12.0;
      }

      v14 = v12 / v13;
      v15 = -v10;
      if (v9 >= 0.0)
      {
        v15 = v10;
      }

      *(a2 + 4 * v5) = v15 * v14;
      v5 += a3;
    }

    while (v5 < v4);
  }
}

__CFData *CMMConvHLGInvOETF::create_flattened_TRC_data(CMMConvHLGInvOETF *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 0;
  if (!theDict)
  {
    valuePtr = 4097;
LABEL_9:
    v6 = 65552;
    *a3 = 65552;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGInvOETFTableSize");
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v6 = valuePtr;
    *a3 = valuePtr;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *a3;
    if (!*a3)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = 4 * v6;
  Mutable = CFDataCreateMutable(0, v7);
  v9 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v11 = *a3;
    if (v11)
    {
      v12 = MutableBytePtr;
      for (i = 0; i != v11; ++i)
      {
        v14 = i / (v11 - 1);
        v15 = *(this + 34);
        v16 = fabsf(v14);
        if (v16 <= 0.5)
        {
          v17 = v14 * v14;
          v18 = 3.0;
        }

        else
        {
          v17 = expf((v16 + -0.55991) / 0.17883) + 0.28467;
          v18 = 12.0;
        }

        v19 = v17 / v18;
        *&v12[4 * i] = v15 * v19;
      }
    }
  }

  return v9;
}

__CFDictionary *CMMConvHLGInvOETF::FlattenConversion(CMMConvHLGInvOETF *this, const __CFDictionary *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  v5 = CFNumberCreate(0, kCFNumberSInt32Type, this + 72);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionChannelID, v5);
    CFRelease(v6);
  }

  v7 = CFNumberCreate(0, kCFNumberSInt32Type, this + 76);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.ChannelsInStageCount", v7);
    CFRelease(v8);
  }

  v9 = MEMORY[0x1E695E4D0];
  if (a2 && CFDictionaryGetValue(a2, @"com.apple.cmm.HLGInvOETFTable") == *v9)
  {
    v38 = 0.0;
    v21 = (*(*this + 248))(this, a2, &v38);
    if (v21)
    {
      v22 = v21;
      CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v21);
      CFRelease(v22);
    }

    v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v38);
    if (v23)
    {
      v24 = v23;
      CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v23);
      CFRelease(v24);
    }

    if (*(this + 33) != 1)
    {
      goto LABEL_28;
    }

    v25 = CFNumberCreate(0, kCFNumberFloat32Type, this + 144);
    v26 = CFNumberCreate(0, kCFNumberFloat32Type, this + 148);
    values = v25;
    v41 = v26;
    v27 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v25);
    CFRelease(v26);
    if (v27)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionNegBoundary", v27);
      CFRelease(v27);
    }

    v28 = CFNumberCreate(0, kCFNumberFloat32Type, this + 152);
    v12 = CFNumberCreate(0, kCFNumberFloat32Type, this + 156);
    valuePtr[0] = v28;
    valuePtr[1] = v12;
    v29 = CFArrayCreate(0, valuePtr, 2, MEMORY[0x1E695E9C0]);
    if (v29)
    {
      v30 = v29;
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionPosBoundary", v29);
      CFRelease(v30);
    }

    CFRelease(v28);
    goto LABEL_27;
  }

  v10 = kColorSyncConversionParamHLGInvOETF;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    v12 = v11;
    v13 = this + 112;
    v14 = 4;
    while (1)
    {
      v15 = CFNumberCreate(0, kCFNumberFloat32Type, v13);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      CFArrayAppendValue(v12, v15);
      CFRelease(v16);
      v13 += 4;
      if (!--v14)
      {
        v17 = *(this + 34);
        v18 = *(this + 32) * v17;
        v38 = v17 * *(this + 33);
        *valuePtr = v18;
        v37 = 0;
        values = CFNumberCreate(0, kCFNumberFloat32Type, valuePtr);
        v41 = CFNumberCreate(0, kCFNumberFloat32Type, &v38);
        v19 = 0;
        v42 = CFNumberCreate(0, kCFNumberFloat32Type, &v37);
        do
        {
          v20 = *(&values + v19);
          if (v20)
          {
            CFArrayAppendValue(v12, *(&values + v19));
            CFRelease(v20);
          }

          v19 += 8;
        }

        while (v19 != 24);
        CFDictionaryAddValue(Mutable, v10, v12);
        break;
      }
    }

LABEL_27:
    CFRelease(v12);
  }

LABEL_28:
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionaryAddValue(Mutable, kColorSyncTransformGammaID, v31);
  CFRelease(v31);
  CFDictionaryAddValue(Mutable, kColorSyncTransformPureGammaOriginalTRC, *MEMORY[0x1E695E4C0]);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v32, *(this + 10), *(this + 11));
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v9);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  LODWORD(valuePtr[0]) = 0;
  v38 = *(this + 41);
  if (v38 != 1.0)
  {
    v33 = CFNumberCreate(0, kCFNumberFloat32Type, valuePtr);
    v34 = CFNumberCreate(0, kCFNumberFloat32Type, &v38);
    values = v33;
    v41 = v34;
    v35 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v33);
    CFRelease(v34);
    if (v35)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v35);
      CFRelease(v35);
    }
  }

  return Mutable;
}

uint64_t CMMConvHLGInvOETF::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    v6 = *(result + 164);
    if (v5 <= v6)
    {
      v6 = *(a2 + 4 * i);
    }

    if (v5 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

uint64_t CMMConvHLGInvOETF::ClampInput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    if (v5 <= 1.0)
    {
      v6 = *(a2 + 4 * i);
    }

    else
    {
      v6 = 1.0;
    }

    if (v5 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

void CMMConvHLGInvOETF::~CMMConvHLGInvOETF(CMMConvHLGInvOETF *this)
{
  CMMConvTRC::~CMMConvTRC(this);

  CMMBase::operator delete(v1);
}

void CMMConvPQInvEOTF::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 * a3;
  v5 = *(a1 + 72);
  if (a4 * a3 > v5)
  {
    v8 = *(a1 + 176);
    do
    {
      v9 = v8 * *(a2 + 4 * v5);
      v10 = powf(fabsf(v9), 0.1593);
      v11 = powf(((v10 * 18.852) + 0.83594) / ((v10 * 18.688) + 1.0), 78.844);
      if (v9 < 0.0)
      {
        v11 = -v11;
      }

      *(a2 + 4 * v5) = v11;
      v5 += a3;
    }

    while (v5 < v4);
  }
}

__CFData *CMMConvPQInvEOTF::create_flattened_TRC_data(CMMConvPQInvEOTF *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 0;
  if (!theDict)
  {
    valuePtr = 4097;
LABEL_9:
    v6 = 65552;
    *a3 = 65552;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQInvEOTFTableSize");
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v6 = valuePtr;
    *a3 = valuePtr;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *a3;
    if (!*a3)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = 4 * v6;
  Mutable = CFDataCreateMutable(0, v7);
  v9 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v12 = *a3;
    if (v12)
    {
      v13 = (this + 176);
      *v11.i32 = (v12 - 1);
      v36 = vdupq_n_s64(v12 - 1);
      v35 = vdup_lane_s32(v11, 0);
      v14 = vld1_dup_f32(v13);
      v15 = (v12 + 1) & 0x1FFFFFFFELL;
      v16 = 0x100000000;
      v17 = xmmword_19A96E050;
      v18 = (MutableBytePtr + 4);
      v19 = vdup_n_s32(0x4196D000u);
      v20 = vdup_n_s32(0x3F560000u);
      v21 = vdup_n_s32(0x41958000u);
      __asm { FMOV            V10.2S, #1.0 }

      v34 = vdupq_n_s64(2uLL);
      do
      {
        v43 = v17;
        v41 = vmovn_s64(vcgeq_u64(v36, v17));
        v42 = vmul_f32(v14, vdiv_f32(vcvt_f32_u32(v16), v35));
        v27 = vabs_f32(v42);
        v37 = v27.f32[0];
        v39 = powf(v27.f32[1], 0.1593);
        v28.f32[0] = powf(v37, 0.1593);
        v28.f32[1] = v39;
        v29 = vdiv_f32(vmla_f32(v20, v19, v28), vmla_f32(_D10, v21, v28));
        v38 = v29.f32[0];
        v40 = powf(v29.f32[1], 78.844);
        v30 = powf(v38, 78.844);
        if (v41.i8[0])
        {
          v31 = -v30;
          if (v42.f32[0] >= 0.0)
          {
            v31 = v30;
          }

          *(v18 - 1) = v31;
        }

        if (v41.i8[4])
        {
          v32 = v40;
          if (v42.f32[1] < 0.0)
          {
            v32 = -v40;
          }

          *v18 = v32;
        }

        v17 = vaddq_s64(v43, v34);
        v16 = vadd_s32(v16, 0x200000002);
        v18 += 2;
        v15 -= 2;
      }

      while (v15);
    }
  }

  return v9;
}

__CFDictionary *CMMConvPQInvEOTF::FlattenConversion(CMMConvPQInvEOTF *this, const __CFDictionary *a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  v5 = CFNumberCreate(0, kCFNumberSInt32Type, this + 72);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionChannelID, v5);
    CFRelease(v6);
  }

  v7 = CFNumberCreate(0, kCFNumberSInt32Type, this + 76);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.ChannelsInStageCount", v7);
    CFRelease(v8);
  }

  v9 = MEMORY[0x1E695E4D0];
  if (a2 && CFDictionaryGetValue(a2, @"com.apple.cmm.PQInvEOTFTable") == *v9)
  {
    valuePtr = 0;
    v22 = (*(*this + 248))(this, a2, &valuePtr);
    if (v22)
    {
      v23 = v22;
      CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v22);
      CFRelease(v23);
    }

    v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v24)
    {
      v25 = v24;
      CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v24);
      CFRelease(v25);
    }

    if (*(this + 33) != 1)
    {
      goto LABEL_18;
    }

    v26 = CFNumberCreate(0, kCFNumberFloat32Type, this + 144);
    v27 = CFNumberCreate(0, kCFNumberFloat32Type, this + 148);
    values[0] = v26;
    values[1] = v27;
    v28 = CFArrayCreate(0, values, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v26);
    CFRelease(v27);
    if (v28)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionNegBoundary", v28);
      CFRelease(v28);
    }

    v29 = CFNumberCreate(0, kCFNumberFloat32Type, this + 152);
    v12 = CFNumberCreate(0, kCFNumberFloat32Type, this + 156);
    v33[0] = v29;
    v33[1] = v12;
    v30 = CFArrayCreate(0, v33, 2, MEMORY[0x1E695E9C0]);
    if (v30)
    {
      v31 = v30;
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionPosBoundary", v30);
      CFRelease(v31);
    }

    CFRelease(v29);
    goto LABEL_17;
  }

  v10 = kColorSyncConversionParamPQInvEOTF;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    v12 = v11;
    v13 = this + 112;
    v14 = 6;
    while (1)
    {
      v15 = CFNumberCreate(0, kCFNumberFloat32Type, v13);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      CFArrayAppendValue(v12, v15);
      CFRelease(v16);
      v13 += 4;
      if (!--v14)
      {
        goto LABEL_14;
      }
    }

    CFRelease(v12);
    v12 = 0;
LABEL_14:
    v17 = CFNumberCreate(0, kCFNumberFloat32Type, this + 176);
    if (v17)
    {
      v18 = v17;
      CFArrayAppendValue(v12, v17);
      CFRelease(v18);
    }

    CFDictionaryAddValue(Mutable, v10, v12);
LABEL_17:
    CFRelease(v12);
  }

LABEL_18:
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionaryAddValue(Mutable, kColorSyncTransformGammaID, v19);
  CFRelease(v19);
  CFDictionaryAddValue(Mutable, kColorSyncTransformPureGammaOriginalTRC, *MEMORY[0x1E695E4C0]);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(this + 10), *(this + 11));
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v9);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  return Mutable;
}

void CMMConvPQInvEOTF::~CMMConvPQInvEOTF(CMMConvPQInvEOTF *this)
{
  CMMConvInvertedTRC::~CMMConvInvertedTRC(this);

  CMMBase::operator delete(v1);
}

void CMMConvHLGOETF::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 * a3;
  v5 = *(a1 + 72);
  if (a4 * a3 > v5)
  {
    do
    {
      v9 = *(a2 + 4 * v5);
      v10 = fabsf(v9) * *(a1 + 132);
      if (v10 <= 0.0833333333)
      {
        v12 = sqrtf(v10 * 3.0);
      }

      else
      {
        v11 = v10 * 12.0 + -0.284668922;
        v12 = (logf(v11) * 0.17883) + 0.55991;
      }

      if (v9 < 0.0)
      {
        v12 = -v12;
      }

      *(a2 + 4 * v5) = v12;
      v5 += a3;
    }

    while (v5 < v4);
  }
}

__CFData *CMMConvHLGOETF::create_flattened_TRC_data(CMMConvHLGOETF *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 0;
  if (!theDict)
  {
    valuePtr = 4097;
LABEL_9:
    v6 = 65552;
    *a3 = 65552;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGOETFCTableSize");
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v6 = valuePtr;
    *a3 = valuePtr;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *a3;
    if (!*a3)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = 4 * v6;
  Mutable = CFDataCreateMutable(0, v7);
  v9 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v11 = *a3;
    if (v11)
    {
      v12 = MutableBytePtr;
      for (i = 0; i != v11; ++i)
      {
        v14 = fabsf(i / (v11 - 1)) * *(this + 33);
        if (v14 <= 0.0833333333)
        {
          v16 = sqrtf(v14 * 3.0);
        }

        else
        {
          v15 = v14 * 12.0 + -0.284668922;
          v16 = (logf(v15) * 0.17883) + 0.55991;
        }

        *&v12[4 * i] = v16;
      }
    }
  }

  return v9;
}

__CFDictionary *CMMConvHLGOETF::FlattenConversion(CMMConvHLGOETF *this, const __CFDictionary *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  v5 = CFNumberCreate(0, kCFNumberSInt32Type, this + 72);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionChannelID, v5);
    CFRelease(v6);
  }

  v7 = CFNumberCreate(0, kCFNumberSInt32Type, this + 76);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.ChannelsInStageCount", v7);
    CFRelease(v8);
  }

  v9 = MEMORY[0x1E695E4D0];
  if (a2 && CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOETFTable") == *v9)
  {
    v32 = 0;
    v19 = (*(*this + 248))(this, a2, &v32);
    if (v19)
    {
      v20 = v19;
      CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v19);
      CFRelease(v20);
    }

    v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v32);
    if (v21)
    {
      v22 = v21;
      CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v21);
      CFRelease(v22);
    }

    if (*(this + 33) != 1)
    {
      goto LABEL_26;
    }

    v23 = CFNumberCreate(0, kCFNumberFloat32Type, this + 144);
    v24 = CFNumberCreate(0, kCFNumberFloat32Type, this + 148);
    valuePtr[0] = v23;
    valuePtr[1] = v24;
    v25 = CFArrayCreate(0, valuePtr, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v23);
    CFRelease(v24);
    if (v25)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionNegBoundary", v25);
      CFRelease(v25);
    }

    v26 = CFNumberCreate(0, kCFNumberFloat32Type, this + 152);
    v12 = CFNumberCreate(0, kCFNumberFloat32Type, this + 156);
    values[0] = v26;
    values[1] = v12;
    v27 = CFArrayCreate(0, values, 2, MEMORY[0x1E695E9C0]);
    if (v27)
    {
      v28 = v27;
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionPosBoundary", v27);
      CFRelease(v28);
    }

    CFRelease(v26);
    goto LABEL_25;
  }

  v10 = kColorSyncConversionParamHLGOETF;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    v12 = v11;
    v13 = this + 112;
    v14 = 5;
    while (1)
    {
      v15 = CFNumberCreate(0, kCFNumberFloat32Type, v13);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      CFArrayAppendValue(v12, v15);
      CFRelease(v16);
      v13 += 4;
      if (!--v14)
      {
        LODWORD(valuePtr[0]) = *(this + 33);
        v17 = CFNumberCreate(0, kCFNumberFloat32Type, valuePtr);
        if (v17)
        {
          v18 = v17;
          CFArrayAppendValue(v12, v17);
          CFRelease(v18);
        }

        CFDictionaryAddValue(Mutable, v10, v12);
        break;
      }
    }

LABEL_25:
    CFRelease(v12);
  }

LABEL_26:
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionaryAddValue(Mutable, kColorSyncTransformGammaID, v29);
  CFRelease(v29);
  CFDictionaryAddValue(Mutable, kColorSyncTransformPureGammaOriginalTRC, *MEMORY[0x1E695E4C0]);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v30, *(this + 10), *(this + 11));
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v9);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  return Mutable;
}

void CMMConvHLGOETF::~CMMConvHLGOETF(CMMConvHLGOETF *this)
{
  CMMConvInvertedTRC::~CMMConvInvertedTRC(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMConvMatrix::Collapse3x3(CMMConvMatrix *this, CMMConvMatrix *a2, CMMMemMgr *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = (*(*this + 224))(this);
  if ((v6 & 1) == 0)
  {
    *(this + 32) = 1;
    *(a2 + 32) = 1;
    v43 = 0;
    v37 = &unk_1F0E071F8;
    v7 = *(a2 + 6);
    *v41 = *(a2 + 7);
    v8 = *(a2 + 9);
    *&v41[16] = *(a2 + 8);
    v42 = v8;
    LODWORD(v43) = *(a2 + 40);
    v9 = *(a2 + 5);
    v38 = *(a2 + 4);
    v39 = v9;
    v40 = v7;
    v10 = this + 64;
    v62 = vcvtq_f64_f32(*(this + 100));
    LODWORD(v9) = *(this + 38);
    *&v7 = *(this + 37);
    v63 = *(this + 27);
    v64 = v7;
    v65 = vcvtq_f64_f32(*(this + 112));
    v66 = *(this + 30);
    v67 = *&v9;
    v68 = vcvtq_f64_f32(*(this + 124));
    *&v7 = *(this + 39);
    v69 = *(this + 33);
    v70 = v7;
    v71 = xmmword_19A9B02E8;
    v72 = unk_19A9B02F8;
    v51 = vcvtq_f64_f32(*(&v40 + 4));
    v52 = *(&v40 + 3);
    v53 = *(&v42 + 1);
    v54 = vcvtq_f64_f32(*v41);
    v55 = *&v41[8];
    v56 = *(&v42 + 2);
    v57 = vcvtq_f64_f32(*&v41[12]);
    v58 = *&v41[20];
    v59 = *(&v42 + 3);
    v60 = xmmword_19A9B02E8;
    v61 = unk_19A9B02F8;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v45 = 0u;
    MatrixMatrix4x4<double>(v44.f64, v51.f64, v62.f64);
    v12 = 0;
    v36 = 0;
    v32 = 0;
    v28[0] = 0;
    memset(v27, 0, sizeof(v27));
    *&v13.f64[0] = v45;
    v13.f64[1] = v46[0].f64[0];
    *&v28[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v44), v13);
    v29 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v46 + 8)), v47);
    v14 = *&v48;
    v30 = v14;
    v15 = *(&v45 + 1);
    v16 = v46[1].f64[1];
    v33 = v15;
    v34 = v16;
    v17 = *(this + 40) * *(a2 + 40);
    v26 = &unk_1F0E071F8;
    v31 = 0;
    *v13.f64 = *(&v48 + 1);
    v35 = LODWORD(v13.f64[0]);
    *&v36 = v17;
    do
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = 0;
        v21 = 0;
        v22 = v19;
        do
        {
          v21 += *(&v37 + v22) * *&v10[v20];
          v20 += 4;
          v22 += 12;
        }

        while (v20 != 12);
        *(v27 + 3 * v12 + v18++) = (v21 + 0x8000) >> 16;
        v19 += 4;
      }

      while (v18 != 3);
      ++v12;
      v10 += 12;
    }

    while (v12 != 3);
    v23 = *(a2 + 2);
    CMMMatrix::MakeMatrixConv(&v26, a3, a2, v11);
    *(a2 + 2) = v24;
    *(v24 + 16) = v23;
    if (v23)
    {
      *(v23 + 24) = v24;
    }
  }

  return v6 ^ 1u;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

void CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v10 = *(result + 148);
    v11 = *(result + 156);
    a9.i32[0] = *(result + 160);
    a10.i32[0] = 1.0;
    v12 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a9, a10)), 0);
    v13 = vbslq_s8(v12, vmulq_n_f32(*(result + 104), a9.f32[0]), *(result + 104));
    v14 = vbslq_s8(v12, vmulq_n_f32(*(result + 120), a9.f32[0]), *(result + 120));
    if (a9.f32[0] == 1.0)
    {
      v15 = *(result + 100);
    }

    else
    {
      v15 = *(result + 100) * a9.f32[0];
    }

    v16 = *&v14.i32[1];
    *v14.i8 = vext_s8(*v13.i8, *v14.i8, 4uLL);
    v17 = vdup_laneq_s32(v13, 2);
    v17.f32[0] = v15;
    v13.i32[1] = vextq_s8(*&v13, *&v13, 8uLL).i32[1];
    v18 = (a2 + 8);
    v19 = 1;
    do
    {
      v20 = *(v18 - 2);
      v21 = *(v18 - 1);
      v22 = v11 + (((*&v14.i32[2] * v21) + (v20 * v16)) + (*v18 * *&v14.i32[3]));
      *(v18 - 1) = vadd_f32(v10, vmla_n_f32(vmla_n_f32(vmul_n_f32(*v13.i8, v21), v17, v20), *v14.i8, *v18));
      *v18 = v22;
      v19 += a4;
      v18 += a4;
    }

    while (v19 - 1 < (a5 * a4));
  }

  return result;
}

int *CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::Convert(int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = a5 * a4;
  if (a5 * a4)
  {
    v6 = 0;
    v7 = result[34];
    v8 = result[35];
    v9 = result[36];
    v11 = result[23];
    v10 = result[24];
    v13 = result[21];
    v12 = result[22];
    v14 = result[19];
    v15 = result[20];
    v17 = result[17];
    v16 = result[18];
    result = result[16];
    do
    {
      v18 = (a2 + 4 * v6);
      v19 = v18[1];
      v20 = v18[2];
      v21 = v7 + ((v17 * v19 + result * *v18 + v16 * v20 + 0x8000) >> 16);
      v22 = v8 + ((v15 * v19 + v14 * *v18 + v13 * v20 + 0x8000) >> 16);
      v23 = v9 + ((v11 * v19 + v12 * *v18 + v10 * v20 + 0x8000) >> 16);
      if (v21 >= 0x1000000)
      {
        v24 = 0x1000000;
      }

      else
      {
        v24 = v7 + ((v17 * v19 + result * *v18 + v16 * v20 + 0x8000) >> 16);
      }

      if (v21 < 0)
      {
        v24 = 0;
      }

      if (v22 >= 0x1000000)
      {
        v25 = 0x1000000;
      }

      else
      {
        v25 = v22;
      }

      if (v22 < 0)
      {
        v25 = 0;
      }

      *v18 = v24;
      v18[1] = v25;
      if (v23 >= 0x1000000)
      {
        v26 = 0x1000000;
      }

      else
      {
        v26 = v23;
      }

      if (v23 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v18[2] = v27;
      v6 += a4;
    }

    while (v6 < v5);
  }

  return result;
}