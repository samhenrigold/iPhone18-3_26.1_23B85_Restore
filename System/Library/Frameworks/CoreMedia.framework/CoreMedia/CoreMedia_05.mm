unint64_t av1_get_uniform(_DWORD *a1, unsigned int a2)
{
  if (a2 <= 1)
  {
    bits = 0;
    *a1 = -12714;
  }

  else
  {
    v3 = __clz(a2);
    v4 = (1 << -v3) - a2;
    bits = av1_get_bits(a1, v3 ^ 0x1F);
    if (bits >= v4)
    {
      return av1_get_bits(a1, 1u) - v4 + 2 * bits;
    }
  }

  return bits;
}

uint64_t av1_get_bits_subexp(_DWORD *a1, int a2, char a3)
{
  v4 = 1 << a3;
  v5 = (1 << a3) + a2;
  v6 = 2 << a3;
  if ((2 << a3) < 0x18)
  {
    v7 = 0;
LABEL_3:
    uniform = av1_get_uniform(a1, (v6 | 1) - v7);
    goto LABEL_11;
  }

  v7 = 0;
  if (av1_get_bits(a1, 1u))
  {
    v9 = 2;
    v10 = 8;
    while (1)
    {
      v7 += v10;
      if ((24 << (v9 - 2)) + v7 > v6)
      {
        goto LABEL_3;
      }

      v10 = 8 << (v9++ - 2);
      if (!av1_get_bits(a1, 1u))
      {
        goto LABEL_10;
      }
    }
  }

  v9 = 3;
LABEL_10:
  uniform = av1_get_bits(a1, v9);
LABEL_11:
  v11 = uniform + v7;
  v12 = 2 * v5;
  v13 = uniform + v7 + 1;
  v14 = v6 - v5 - (v13 >> 1);
  if (((uniform + v7) & 1) == 0)
  {
    v14 = v6 - v5 + ((uniform + v7) >> 1);
  }

  if (v11 <= 2 * (v6 - v5))
  {
    v15 = v14;
  }

  else
  {
    v15 = uniform + v7;
  }

  v16 = v6 - v15;
  v17 = v5 - (v13 >> 1);
  if ((v11 & 1) == 0)
  {
    v17 = v5 + (v11 >> 1);
  }

  if (v12 >= v11)
  {
    v11 = v17;
  }

  if (v12 > v6)
  {
    v11 = v16;
  }

  return v11 - v4;
}

uint64_t dav1d_picture_ref(void *a1, const void *a2)
{
  if (a1)
  {
    if (a1[3])
    {
      dav1d_picture_ref_cold_1(&v3);
      return v3;
    }

    else if (a2)
    {
      memcpy(a1, a2, 0x110uLL);
      return 0;
    }

    else
    {
      dav1d_picture_ref_cold_2(&v4);
      return v4;
    }
  }

  else
  {
    dav1d_picture_ref_cold_3(&v5);
    return v5;
  }
}

_OWORD *dav1d_picture_unref_internal(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!result)
  {
    return dav1d_picture_unref_internal_cold_1(result, a2, a3, a4, a5, a6, a7, a8, v8);
  }

  result[15] = 0u;
  result[16] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[1] = 0u;
  result[2] = 0u;
  *result = 0u;
  return result;
}

uint64_t picture_alloc_with_edges(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  if ((a12 - 17) <= 0xFFFFFFEF)
  {
    picture_alloc_with_edges_cold_1(&v14);
    return v14;
  }

  else
  {
    result = 0;
    *(a1 + 64) = a2;
    *(a1 + 68) = a3;
    *a1 = a4;
    *(a1 + 8) = a6;
    *(a1 + 144) = a10;
    *(a1 + 72) = *(a4 + 12);
    *(a1 + 76) = a12;
    *(a1 + 80) = xmmword_197165620;
    *(a1 + 96) = -1;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 184) = a7;
    *(a1 + 192) = a5;
    *(a1 + 200) = a8;
    *(a1 + 208) = a9;
    *(a1 + 216) = a11;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{

  return check_for_overrun((v17 - 144), a16, v16);
}

unint64_t OUTLINED_FUNCTION_8_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return av1_get_bits(va, 2u);
}

unint64_t OUTLINED_FUNCTION_10_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return av1_get_bits(va, 3u);
}

unint64_t OUTLINED_FUNCTION_11_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return av1_get_bits(va, 8u);
}

unint64_t OUTLINED_FUNCTION_13_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return av1_get_bits(va, 7u);
}

unint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return av1_get_bits(va, 4u);
}

unint64_t OUTLINED_FUNCTION_15_1()
{

  return av1_get_bits(v0 - 144, 0x10u);
}

unint64_t OUTLINED_FUNCTION_16_0()
{

  return av1_get_bits(v0 - 144, 1u);
}

unint64_t OUTLINED_FUNCTION_19_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return av1_get_bits(va, 6u);
}

__n128 OUTLINED_FUNCTION_20_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a31, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __n128 a32)
{
  *(v32 - 144) = a29;
  *(v32 - 128) = a30;
  result = a32;
  *(v32 - 112) = a32;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_1@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return av1_get_bits_subexp(va, a1 >> 1, 12);
}

unint64_t OUTLINED_FUNCTION_26_0()
{

  return av1_get_bits(v0 - 144, 5u);
}

unint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return av1_get_bits(va, 5u);
}

unint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return av1_get_bits(va, v22);
}

uint64_t FigCustomURLRequestInfoCreateMutable(const __CFAllocator *a1, const void *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (a2)
  {
    if (a3)
    {
      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v18 = Mutable;
        CFDictionarySetValue(Mutable, @"RequestInfoURL", a2);
        *a3 = CFRetain(v18);
        CFRelease(v18);
        return 0;
      }

      else
      {
        FigCustomURLRequestInfoCreateMutable_cold_1(&v20, v11, v12, v13, v14, v15, v16, v17);
        return v20;
      }
    }

    else
    {
      FigCustomURLRequestInfoCreateMutable_cold_2(&v21, a2, 0, a4, a5, a6, a7, a8);
      return v21;
    }
  }

  else
  {
    FigCustomURLRequestInfoCreateMutable_cold_3(&v22, 0, a3, a4, a5, a6, a7, a8);
    return v22;
  }
}

uint64_t FigCustomURLRequestInfoCreateMutableCopy(const __CFAllocator *a1, CFDictionaryRef theDict, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (theDict)
  {
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
      if (MutableCopy)
      {
        v17 = MutableCopy;
        *a3 = CFRetain(MutableCopy);
        CFRelease(v17);
        return 0;
      }

      else
      {
        FigCustomURLRequestInfoCreateMutableCopy_cold_1(&v19, v10, v11, v12, v13, v14, v15, v16);
        return v19;
      }
    }

    else
    {
      FigCustomURLRequestInfoCreateMutableCopy_cold_2(&v20, theDict, 0, a4, a5, a6, a7, a8);
      return v20;
    }
  }

  else
  {
    FigCustomURLRequestInfoCreateMutableCopy_cold_3(&v21, 0, a3, a4, a5, a6, a7, a8);
    return v21;
  }
}

uint64_t FigCustomURLRequestInfoSetHTTPHeaders(CFMutableDictionaryRef theDict, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetAllocator(cf);
    Copy = CFDictionaryCreateCopy(v4, cf);
    if (!Copy)
    {
      FigCustomURLRequestInfoSetHTTPHeaders_cold_1(&v15, v6, v7, v8, v9, v10, v11, v12);
      return v15;
    }

    v13 = Copy;
    CFDictionarySetValue(theDict, @"RequestInfoHTTPHeaders", Copy);
    CFRelease(v13);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"RequestInfoHTTPHeaders");
  }

  return 0;
}

uint64_t FigCustomURLRequestInfoSetIsRenewalRequest(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"RequestInfoIsRenewalRequest", *v2);
  return 0;
}

uint64_t FigCustomURLRequestInfoSetIsPingRequest(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"RequestInfoIsPingRequest", *v2);
  return 0;
}

uint64_t FigCustomURLRequestInfoSetExpectedToBlock(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"RequestInfoExpectedToBlock", *v2);
  return 0;
}

uint64_t figCustomURLRequestInfoReplaceValueForHTTPHeader(const __CFDictionary *a1, const void *a2, const void *a3)
{
  theDict = 0;
  v6 = FigCustomURLRequestInfoCopyHTTPHeaders(a1, &theDict);
  if (!v6)
  {
    v17 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v17, 0, theDict);
LABEL_5:
    v18 = MutableCopy;
    if (MutableCopy)
    {
      if (a3)
      {
        CFDictionarySetValue(MutableCopy, a2, a3);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, a2);
      }

      v7 = FigCustomURLRequestInfoSetHTTPHeaders(a1, v18);
      CFRelease(v18);
    }

    else
    {
      figCustomURLRequestInfoReplaceValueForHTTPHeader_cold_1(&v21, v10, v11, v12, v13, v14, v15, v16);
      v7 = v21;
    }

    goto LABEL_10;
  }

  v7 = v6;
  if (v6 == -17360)
  {
    v8 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_5;
  }

LABEL_10:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v7;
}

uint64_t FigCustomURLRequestInfoSetCryptor(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"RequestInfoCryptor", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"RequestInfoCryptor");
  }

  return 0;
}

uint64_t FigCustomURLRequestInfoSetCryptorKeyAttributes(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"RequestInfoCryptKeyAttributes", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"RequestInfoCryptKeyAttributes");
  }

  return 0;
}

uint64_t FigCustomURLRequestInfoSetCryptorID(__CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (a2)
  {
    FigCFDictionarySetInt64(a1, @"RequestInfoCryptorID", a2, a4, a5, a6, a7, a8);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"RequestInfoCryptorID");
  }

  return 0;
}

uint64_t FigCustomURLRequestInfoSetCryptorKeyRequestID(__CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (a2)
  {
    FigCFDictionarySetInt64(a1, @"RequestInfoCryptorKeyRequestID", a2, a4, a5, a6, a7, a8);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"RequestInfoCryptorKeyRequestID");
  }

  return 0;
}

uint64_t FigCustomURLRequestInfoSetAllowedUniversalTypeIdentifiers(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"AllowedUniversalTypeIdentifiers", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"AllowedUniversalTypeIdentifiers");
  }

  return 0;
}

uint64_t FigCustomURLRequestInfoSetIsSecureStopSupported(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"RequestInfoIsSecureStopSupported", *v2);
  return 0;
}

uint64_t FigCustomURLRequestInfoSetNetworkHistory(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"RequestInfoNetworkHistory", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"RequestInfoNetworkHistory");
  }

  return 0;
}

uint64_t FigCustomURLRequestInfoSetIsFromPreMonarchAirPlayReceiver(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"RequestInfoIsFromPreMonarchAirPlayReceiver", *v2);
  return 0;
}

uint64_t FigCustomURLRequestInfoCopyURL(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"RequestInfoURL", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

uint64_t FigCustomURLRequestInfoCopyHTTPHeaders(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"RequestInfoHTTPHeaders", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

uint64_t FigCustomURLRequestInfoCopyCryptor(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"RequestInfoCryptor", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

uint64_t FigCustomURLRequestInfoCopyCryptKeyAttributes(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"RequestInfoCryptKeyAttributes", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

uint64_t FigCustomURLRequestInfoCopyAllowedUniversalTypeIdentifiers(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"AllowedUniversalTypeIdentifiers", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

uint64_t FigCustomURLResponseInfoCreateMutable(const __CFAllocator *a1, const void *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (a2)
  {
    if (a3)
    {
      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v18 = Mutable;
        CFDictionarySetValue(Mutable, @"ResponseInfoRequestInfo", a2);
        *a3 = CFRetain(v18);
        CFRelease(v18);
        return 0;
      }

      else
      {
        FigCustomURLResponseInfoCreateMutable_cold_1(&v20, v11, v12, v13, v14, v15, v16, v17);
        return v20;
      }
    }

    else
    {
      FigCustomURLResponseInfoCreateMutable_cold_2(&v21, a2, 0, a4, a5, a6, a7, a8);
      return v21;
    }
  }

  else
  {
    FigCustomURLResponseInfoCreateMutable_cold_3(&v22, 0, a3, a4, a5, a6, a7, a8);
    return v22;
  }
}

uint64_t FigCustomURLResponseInfoCreateMutableCopy(const __CFAllocator *a1, CFDictionaryRef theDict, CFMutableDictionaryRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (theDict)
  {
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
      if (MutableCopy)
      {
        v17 = MutableCopy;
        result = 0;
        *a3 = v17;
      }

      else
      {
        FigCustomURLResponseInfoCreateMutableCopy_cold_1(&v19, v10, v11, v12, v13, v14, v15, v16);
        return v19;
      }
    }

    else
    {
      FigCustomURLResponseInfoCreateMutableCopy_cold_2(&v20, theDict, 0, a4, a5, a6, a7, a8);
      return v20;
    }
  }

  else
  {
    FigCustomURLResponseInfoCreateMutableCopy_cold_3(&v21, 0, a3, a4, a5, a6, a7, a8);
    return v21;
  }

  return result;
}

uint64_t FigCustomURLResponseInfoSetIsCachingDisabled(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"ResponseInfoIsCachingDisabled", *v2);
  return 0;
}

uint64_t FigCustomURLResponseInfoSetIsByteRangeAccessSupported(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"ResponseInfoIsByteRangeAccessSupported", *v2);
  return 0;
}

uint64_t FigCustomURLResponseInfoSetIsEntireLengthAvailableOnDemand(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"ResponseInfoEntireLengthAvailableOnDemand", *v2);
  return 0;
}

uint64_t FigCustomURLResponseInfoSetUniversalTypeIdentifier(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"ResponseInfoUTI", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"ResponseInfoUTI");
  }

  return 0;
}

uint64_t FigCustomURLResponseInfoSetContentRenewalDate(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"ResponseInfoContentRenewalDate", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"ResponseInfoContentRenewalDate");
  }

  return 0;
}

uint64_t FigCustomURLResponseInfoSetFinalURL(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"ResponseInfoURL", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"ResponseInfoURL");
  }

  return 0;
}

uint64_t FigCustomURLResponseInfoSetHTTPHeaders(CFMutableDictionaryRef theDict, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetAllocator(cf);
    Copy = CFDictionaryCreateCopy(v4, cf);
    if (!Copy)
    {
      FigCustomURLResponseInfoSetHTTPHeaders_cold_1(&v15, v6, v7, v8, v9, v10, v11, v12);
      return v15;
    }

    v13 = Copy;
    CFDictionarySetValue(theDict, @"ResponseInfoHTTPHeaders", Copy);
    CFRelease(v13);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"ResponseInfoHTTPHeaders");
  }

  return 0;
}

uint64_t FigCustomURLResponseInfoSetRedirectLocation(const __CFDictionary *a1, const __CFURL *a2)
{
  theDict = 0;
  v4 = FigCustomURLResponseInfoCopyHTTPHeaders(a1, &theDict);
  if (v4)
  {
    v5 = v4;
    if (v4 != -17360)
    {
      goto LABEL_13;
    }

    v6 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v15 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutableCopy(v15, 0, theDict);
  }

  v16 = Mutable;
  if (Mutable)
  {
    if (a2)
    {
      v17 = CFURLCopyAbsoluteURL(a2);
      if (v17)
      {
        v25 = v17;
        v26 = CFURLGetString(v17);
        if (v26)
        {
          CFDictionarySetValue(v16, @"Location", v26);
          v5 = FigCustomURLResponseInfoSetHTTPHeaders(a1, v16);
        }

        else
        {
          FigCustomURLResponseInfoSetRedirectLocation_cold_1(&v36, v27, v28, v29, v30, v31, v32, v33);
          v5 = v36;
        }

        CFRelease(v25);
      }

      else
      {
        FigCustomURLResponseInfoSetRedirectLocation_cold_2(&v36, v18, v19, v20, v21, v22, v23, v24);
        v5 = v36;
      }
    }

    else
    {
      CFDictionaryRemoveValue(Mutable, @"Location");
      v5 = FigCustomURLResponseInfoSetHTTPHeaders(a1, v16);
    }

    CFRelease(v16);
  }

  else
  {
    FigCustomURLResponseInfoSetRedirectLocation_cold_3(&v36, v8, v9, v10, v11, v12, v13, v14);
    v5 = v36;
  }

LABEL_13:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v5;
}

uint64_t FigCustomURLResponseInfoCopyHTTPHeaders(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"ResponseInfoHTTPHeaders", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

uint64_t FigCustomURLResponseInfoCopyRequestInfo(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"ResponseInfoRequestInfo", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

uint64_t FigCustomURLResponseInfoSetRedirectRequestHeaders(CFMutableDictionaryRef theDict, const __CFDictionary *a2)
{
  if (a2)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
    if (!Copy)
    {
      FigCustomURLResponseInfoSetRedirectRequestHeaders_cold_1(&v13, v4, v5, v6, v7, v8, v9, v10);
      return v13;
    }

    v11 = Copy;
    CFDictionarySetValue(theDict, @"ResponseInfoRedirectRequestHeaders", Copy);
    CFRelease(v11);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"ResponseInfoRedirectRequestHeaders");
  }

  return 0;
}

uint64_t FigCustomURLResponseInfoSetRoundTripTime(__CFDictionary *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, size_t a8, CMBlockBufferFlags a9)
{
  if (a2 <= 2.22044605e-16)
  {
    CFDictionaryRemoveValue(a1, @"ResponseInfoRoundTripTime");
  }

  else
  {
    FigCFDictionarySetDouble(a1, @"ResponseInfoRoundTripTime", a2, a4, a5, a6, a7, a8, a9);
  }

  return 0;
}

uint64_t FigCustomURLResponseInfoSetSuppressErrorLogging(__CFDictionary *a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, @"ResponseInfoSuppressErrorLogging", *v2);
  return 0;
}

uint64_t FigCustomURLResponseInfoCopyUniversalTypeIdentifier(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"ResponseInfoUTI", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

uint64_t FigCustomURLResponseInfoCopyContentRenewalDate(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"ResponseInfoContentRenewalDate", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

uint64_t FigCustomURLResponseInfoCopyRedirectRequestHeaders(const __CFDictionary *a1, const void **value)
{
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"ResponseInfoRedirectRequestHeaders", value);
  if (*value)
  {
    CFRetain(*value);
  }

  if (ValueIfPresent)
  {
    return 0;
  }

  else
  {
    return 4294949936;
  }
}

size_t RegisterFigCustomURLHandlerBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigCustomURLHandlerClassDesc, ClassID, 1, &sFigCustomURLHandlerClassID, v10, v11, v12, v13, a9);
}

uint64_t FigCustomURLHandlerGetTypeID()
{
  FigThreadRunOnce(&FigCustomURLHandlerGetClassID_sRegisterFigCustomURLHandlerBaseTypeOnce, RegisterFigCustomURLHandlerBaseType);
  v0 = sFigCustomURLHandlerClassID;

  return CMBaseClassGetCFTypeID(v0);
}

size_t FigCustomURLHandlerCreate(const void *a1, const char *a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, CFTypeRef *a7)
{
  v87 = *MEMORY[0x1E69E9840];
  cf = 0;
  v12 = FigNote_AllowInternalDefaultLogs(a1, a2);
  if (v12)
  {
    if (FigNote_AllowInternalDefaultLogs(v12, v13))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  fig_note_initialize_category_with_default_work_cf(&unk_1ED4CC2B0, @"curl_handling_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v14, 0, &gFigCustomURLHandlingTrace);
  if (FigNote_AllowInternalDefaultLogs(v15, v16))
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  fig_note_initialize_category_with_default_work_cf(&dword_1ED4CC2C0, @"curl_handling_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v17, 0, &qword_1ED4CC2B8);
  if (!a2)
  {
    FigCustomURLHandlerCreate_cold_9(v86, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_34;
  }

  if (!a3)
  {
    FigCustomURLHandlerCreate_cold_8(v86, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_34;
  }

  if (!a4)
  {
    FigCustomURLHandlerCreate_cold_7(v86, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_34;
  }

  if (!a5)
  {
    FigCustomURLHandlerCreate_cold_6(v86, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_34;
  }

  if (!*(a5 + 8))
  {
    FigCustomURLHandlerCreate_cold_5(v86, v18, v19, v20, v21, v22, v23, v24);
LABEL_34:
    v68 = v86[0];
    goto LABEL_35;
  }

  if (!a7)
  {
    FigCustomURLHandlerCreate_cold_4(v86, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_34;
  }

  v25 = a7;
  if (strnlen(a2, 0x40uLL) >= 0x40)
  {
    FigCustomURLHandlerCreate_cold_3(v86, v26, v27, v28, v29, v30, v31, v32);
    goto LABEL_34;
  }

  FigThreadRunOnce(&FigCustomURLHandlerGetClassID_sRegisterFigCustomURLHandlerBaseTypeOnce, RegisterFigCustomURLHandlerBaseType);
  v37 = CMDerivedObjectCreate(a1, kCustomURLHandler_VTable, sFigCustomURLHandlerClassID, &cf, v33, v34, v35, v36, v70);
  if (!v37)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    v37 = figCustomURLWorkQueueCreate(DerivedStorage);
    if (!v37)
    {
      v39 = FigReentrantMutexCreate();
      *(DerivedStorage + 8) = v39;
      if (v39)
      {
        if (a1)
        {
          v47 = CFRetain(a1);
        }

        else
        {
          v47 = 0;
        }

        *(DerivedStorage + 16) = v47;
        dispatch_retain(a4);
        *(DerivedStorage + 40) = a4;
        *(DerivedStorage + 48) = *a5;
        v48 = a6;
        *(DerivedStorage + 56) = *(a5 + 8);
        *(DerivedStorage + 64) = *(a5 + 16);
        *(DerivedStorage + 24) = a2;
        v49 = FigCFWeakReferenceHolderCreateWithReferencedObject(a3);
        *(DerivedStorage + 32) = v49;
        if (v49)
        {
          FigCFDictionaryGetBooleanIfPresent(a6, @"CURLHOption_ClientRequestsRepresentAccurateNetworkStatistics", DerivedStorage + 72, v52, v53, v54, v55, v56, v71, v73, a6, a2, v80, cf, *v82, *&v82[8], *&v82[16], v83);
          FigCFDictionaryGetBooleanIfPresent(v48, @"CURLHOption_OKToLogURLs", DerivedStorage + 73, v57, v58, v59, v60, v61, v72, v74, v77, __s1a, v80, cf, *v82, *&v82[8], *&v82[16], v83);
          *(DerivedStorage + 80) = 0;
          *(DerivedStorage + 88) = DerivedStorage + 80;
          if (dword_1ED4CC2C0)
          {
            HIDWORD(v80) = 0;
            BYTE3(v80) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 1, &v80 + 1, &v80 + 3);
            v63 = HIDWORD(v80);
            v64 = BYTE3(v80);
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v80)))
            {
              v65 = v63;
            }

            else
            {
              v65 = v63 & 0xFFFFFFFE;
            }

            if (v65)
            {
              v66 = *(DerivedStorage + 24);
              *v82 = 136315906;
              *&v82[4] = "FigCustomURLHandlerCreate";
              *&v82[12] = 2082;
              *&v82[14] = v66;
              *&v82[22] = 2048;
              v83 = cf;
              v84 = 2114;
              v85 = v48;
              LODWORD(v75) = 42;
              v67 = _os_log_send_and_compose_impl(v65, 0, v86, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v64, "<<<< FigCustomURLHandling >>>> %s: newHandler: %{public}s.%p options: %{public}@", v82, v75);
              LOBYTE(v63) = BYTE4(v80);
            }

            else
            {
              v67 = 0;
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2B8, 1, 1, v67, v67 != v86, v63);
          }

          v68 = 0;
          *v25 = cf;
          return v68;
        }

        FigCustomURLHandlerCreate_cold_1(v86, v50, v51, v52, v53, v54, v55, v56);
      }

      else
      {
        FigCustomURLHandlerCreate_cold_2(v86, v40, v41, v42, v43, v44, v45, v46);
      }

      goto LABEL_34;
    }
  }

  v68 = v37;
LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  return v68;
}

uint64_t figCustomURLWorkQueueCreate(CFTypeRef *a1)
{
  if (sFigCustomURLWorkQueueRegisterTypeOnce != -1)
  {
    figCustomURLWorkQueueCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v10 = Instance;
    v11 = FigReentrantMutexCreate();
    v10[2] = v11;
    if (v11)
    {
      v10[3] = 0;
      v10[4] = v10 + 3;
      v19 = 0;
      *a1 = CFRetain(v10);
    }

    else
    {
      figCustomURLWorkQueueCreate_cold_2(&v21, v12, v13, v14, v15, v16, v17, v18);
      v19 = v21;
    }

    CFRelease(v10);
  }

  else
  {
    figCustomURLWorkQueueCreate_cold_3(&v22, v3, v4, v5, v6, v7, v8, v9);
    return v22;
  }

  return v19;
}

size_t RegisterFigCustomURLLoaderBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigCustomURLLoaderClassDesc, ClassID, 1, &sFigCustomURLLoaderClassID, v10, v11, v12, v13, a9);
}

uint64_t FigCustomURLLoaderGetCFTypeID()
{
  FigThreadRunOnce(&FigCustomURLLoaderGetClassID_sRegisterFigCustomURLLoaderBaseTypeOnce, RegisterFigCustomURLLoaderBaseType);
  v0 = sFigCustomURLLoaderClassID;

  return CMBaseClassGetCFTypeID(v0);
}

void curlh_removeAndFreeCustomURLRequestEntry(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = a2[1];
  if (v4)
  {
    CFRelease(v4);
    a2[1] = 0;
  }

  v5 = a2[2];
  if (v5)
  {
    dispatch_release(v5);
    a2[2] = 0;
  }

  v6 = a2[4];
  if (v6)
  {
    CFRelease(v6);
    a2[4] = 0;
  }

  v7 = a2[7];
  if (v7)
  {
    CFRelease(v7);
    a2[7] = 0;
  }

  v8 = a2[5];
  if (v8)
  {
    CFRelease(v8);
    a2[5] = 0;
  }

  v9 = a2[8];
  v10 = a2[9];
  v11 = (DerivedStorage + 88);
  if (v9)
  {
    v11 = (v9 + 72);
  }

  *v11 = v10;
  *v10 = v9;
  v12 = *(DerivedStorage + 16);

  CFAllocatorDeallocate(v12, a2);
}

uint64_t curlh_sendResponseInfo(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a3)
  {
    v14 = DerivedStorage;
    v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x106004049771C40uLL);
    if (v15)
    {
      v23 = v15;
      if (a1)
      {
        v24 = CFRetain(a1);
      }

      else
      {
        v24 = 0;
      }

      *v23 = v24;
      *(v23 + 8) = a2;
      *(v23 + 16) = CFRetain(a3);
      v25 = figCustomURLWorkQueueEnqueue(*v14, curlh_sendResponseInfoDispatch, v23);
      if (v25)
      {
        if (*v23)
        {
          CFRelease(*v23);
        }

        v26 = *(v23 + 16);
        if (v26)
        {
          CFRelease(v26);
        }

        free(v23);
      }
    }

    else
    {
      curlh_sendResponseInfo_cold_1(&v28, v16, v17, v18, v19, v20, v21, v22);
      return v28;
    }
  }

  else
  {
    curlh_sendResponseInfo_cold_2(&v29, v7, v8, v9, v10, v11, v12, v13);
    return v29;
  }

  return v25;
}

uint64_t curlh_sendData(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a3)
  {
    v14 = DerivedStorage;
    v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040B6A22668uLL);
    if (v15)
    {
      v23 = v15;
      if (a1)
      {
        v24 = CFRetain(a1);
      }

      else
      {
        v24 = 0;
      }

      *v23 = v24;
      *(v23 + 8) = a2;
      *(v23 + 16) = CFRetain(a3);
      v25 = figCustomURLWorkQueueEnqueue(*v14, curlh_sendDataDispatch, v23);
      if (v25)
      {
        if (*v23)
        {
          CFRelease(*v23);
        }

        v26 = *(v23 + 16);
        if (v26)
        {
          CFRelease(v26);
        }

        free(v23);
      }
    }

    else
    {
      curlh_sendData_cold_1(&v28, v16, v17, v18, v19, v20, v21, v22);
      return v28;
    }
  }

  else
  {
    curlh_sendData_cold_2(&v29, v7, v8, v9, v10, v11, v12, v13);
    return v29;
  }

  return v25;
}

uint64_t curlh_finishLoading(const void *a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040EF2C8554uLL);
  if (v9)
  {
    v17 = v9;
    if (a1)
    {
      v18 = CFRetain(a1);
    }

    else
    {
      v18 = 0;
    }

    *v17 = v18;
    *(v17 + 8) = a2;
    if (a3)
    {
      v19 = CFRetain(a3);
    }

    else
    {
      v19 = 0;
    }

    *(v17 + 16) = v19;
    if (a4)
    {
      v20 = CFRetain(a4);
    }

    else
    {
      v20 = 0;
    }

    *(v17 + 24) = v20;
    v21 = figCustomURLWorkQueueEnqueue(*DerivedStorage, curlh_finishLoadingDispatch, v17);
    if (v21)
    {
      if (*v17)
      {
        CFRelease(*v17);
      }

      v22 = *(v17 + 16);
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *(v17 + 24);
      if (v23)
      {
        CFRelease(v23);
      }

      free(v17);
    }
  }

  else
  {
    curlh_finishLoading_cold_1(&v25, v10, v11, v12, v13, v14, v15, v16);
    return v25;
  }

  return v21;
}

uint64_t curlh_handleRequest(const void *a1, const void *a2, uint64_t a3, const void *a4, NSObject *a5, uint64_t a6, uint64_t a7, const void *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!a1)
  {
    curlh_handleRequest_cold_9(&v42, v16, v17, v18, v19, v20, v21, v22);
    return v42;
  }

  if (!a2)
  {
    curlh_handleRequest_cold_8(&v42, v16, v17, v18, v19, v20, v21, v22);
    return v42;
  }

  if (!a4)
  {
    curlh_handleRequest_cold_7(&v42, v16, v17, v18, v19, v20, v21, v22);
    return v42;
  }

  if (!a5)
  {
    curlh_handleRequest_cold_6(&v42, v16, v17, v18, v19, v20, v21, v22);
    return v42;
  }

  if (!a7)
  {
    curlh_handleRequest_cold_5(&v42, v16, v17, v18, v19, v20, v21, v22);
    return v42;
  }

  v23 = DerivedStorage;
  if (_MergedGlobals_21 != -1)
  {
    curlh_handleRequest_cold_1();
  }

  v24 = qword_1ED4CC650;
  if (!qword_1ED4CC650 && !curlh_handleRequest_cold_2(&v42, v16, v17, v18, v19, v20, v21, v22))
  {
    return v42;
  }

  v25 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E0040BCA754A7uLL);
  if (!v25)
  {
    curlh_handleRequest_cold_4(&v42, v26, v27, v28, v29, v30, v31, v32);
    return v42;
  }

  v33 = v25;
  v34 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v25, 64, v24);
  if (!v34)
  {
    curlh_handleRequest_cold_3(v33, &v42);
    return v42;
  }

  v35 = v34;
  *v33 = CFRetain(a1);
  v33[1] = CFRetain(a2);
  v33[2] = a3;
  v33[3] = CFRetain(a4);
  dispatch_retain(a5);
  v33[4] = a5;
  v33[5] = a6;
  v33[6] = a7;
  v36 = a8;
  if (a8)
  {
    v36 = CFRetain(a8);
  }

  v33[7] = v36;
  v37 = *v23;
  v38 = CFRetain(v35);
  v39 = figCustomURLWorkQueueEnqueue(v37, curlh_handleRequestDispatch, v38);
  CFRelease(v35);
  return v39;
}

uint64_t curlh_cancelRequest(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    v12 = DerivedStorage;
    v13 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
    if (v13)
    {
      v21 = v13;
      *v13 = CFRetain(a1);
      *(v21 + 8) = a2;
      v22 = figCustomURLWorkQueueEnqueue(*v12, curlh_cancelRequestDispatch, v21);
      if (v22)
      {
        if (*v21)
        {
          CFRelease(*v21);
        }

        free(v21);
      }
    }

    else
    {
      curlh_cancelRequest_cold_1(&v24, v14, v15, v16, v17, v18, v19, v20);
      return v24;
    }
  }

  else
  {
    curlh_cancelRequest_cold_2(&v25, v5, v6, v7, v8, v9, v10, v11);
    return v25;
  }

  return v22;
}

uint64_t curlh_requestSetDormant(const void *a1, uint64_t a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    v14 = DerivedStorage;
    v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x10600407BD382EDuLL);
    if (v15)
    {
      v23 = v15;
      *v15 = CFRetain(a1);
      *(v23 + 8) = a2;
      *(v23 + 16) = a3;
      v24 = figCustomURLWorkQueueEnqueue(*v14, curlh_requestSetDormantDispatch, v23);
      if (v24)
      {
        if (*v23)
        {
          CFRelease(*v23);
        }

        free(v23);
      }
    }

    else
    {
      curlh_requestSetDormant_cold_1(&v26, v16, v17, v18, v19, v20, v21, v22);
      return v26;
    }
  }

  else
  {
    curlh_requestSetDormant_cold_2(&v27, v7, v8, v9, v10, v11, v12, v13);
    return v27;
  }

  return v24;
}

uint64_t curlh_lookupAndRetainRegisteredInfoForRequestID(const void *a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    if (a3)
    {
      v16 = DerivedStorage;
      v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E00402E54A04BuLL);
      if (v17)
      {
        v25 = v17;
        *v17 = CFRetain(a1);
        *(v25 + 8) = a2;
        *(v25 + 16) = a3;
        if (a4)
        {
          v26 = CFRetain(a4);
        }

        else
        {
          v26 = 0;
        }

        *(v25 + 24) = v26;
        v27 = figCustomURLWorkQueueEnqueue(*v16, curlh_lookupAndRetainRegisteredInfoForRequestIDDispatch, v25);
        if (v27)
        {
          if (*v25)
          {
            CFRelease(*v25);
          }

          v28 = *(v25 + 24);
          if (v28)
          {
            CFRelease(v28);
          }

          free(v25);
        }
      }

      else
      {
        curlh_lookupAndRetainRegisteredInfoForRequestID_cold_1(&v30, v18, v19, v20, v21, v22, v23, v24);
        return v30;
      }
    }

    else
    {
      curlh_lookupAndRetainRegisteredInfoForRequestID_cold_2(&v31, v9, v10, v11, v12, v13, v14, v15);
      return v31;
    }
  }

  else
  {
    curlh_lookupAndRetainRegisteredInfoForRequestID_cold_3(&v32, v9, v10, v11, v12, v13, v14, v15);
    return v32;
  }

  return v27;
}

uint64_t figCustomURLWorkQueueEnqueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigReentrantMutexLock(*(a1 + 16));
  if (*(a1 + 40) == 4)
  {
    figCustomURLWorkQueueEnqueue_cold_2(&v25, v6, v7, v8, v9, v10, v11, v12);
    v21 = v25;
    goto LABEL_8;
  }

  v13 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040114AFA65uLL);
  if (!v13)
  {
    figCustomURLWorkQueueEnqueue_cold_1(&v24, v14, v15, v16, v17, v18, v19, v20);
    v21 = v24;
LABEL_8:
    if (v21)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *v13 = a2;
  v13[1] = a3;
  v13[2] = 0;
  **(a1 + 32) = v13;
  *(a1 + 32) = v13 + 2;
LABEL_4:
  figCustomURLWorkQueueDrain(a1, 0, v15, v16, v17, v18, v19, v20, v23);
  v21 = 0;
LABEL_5:
  FigReentrantMutexUnlock(*(a1 + 16));
  return v21;
}

void curlh_sendResponseInfoDispatch(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  object = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 74))
  {
    curlh_sendResponseInfoDispatch_cold_1(&v48, v6, v7, v8, v9, v10, v11, v12);
    v33 = v48;
    goto LABEL_41;
  }

  RequestEntryForRequestID = curlh_lookupAndRetainRegisteredInfoForRequestIDOnQueue(v3, v2, &v40, 0, &v42, &object, &v39, 0, 0);
  if (RequestEntryForRequestID)
  {
    goto LABEL_39;
  }

  v48 = 0;
  if (!v4)
  {
    curlh_sendResponseInfoDispatch_cold_3(&v47, v14, v15, v16, v17, v18, v19, v20);
    goto LABEL_46;
  }

  RequestEntryForRequestID = curlh_getRequestEntryForRequestID(v3, v2, &v48, v16, v17, v18, v19, v20, v36);
  if (RequestEntryForRequestID)
  {
LABEL_39:
    v33 = RequestEntryForRequestID;
    goto LABEL_41;
  }

  v22 = v48;
  if (!*(v48 + 56))
  {
    *(v22 + 56) = CFRetain(v4);
    goto LABEL_7;
  }

  curlh_sendResponseInfoDispatch_cold_2(&v47, v21, v15, v16, v17, v18, v19, v20);
LABEL_46:
  v33 = v47;
  if (v47)
  {
    goto LABEL_41;
  }

LABEL_7:
  CMBaseObjectGetDerivedStorage(v3);
  curlh_getRequestEntryForRequestID(v3, v2, &v48, v23, v24, v25, v26, v27, v36);
  v46 = 0;
  v47 = 0;
  v44 = 0;
  cf = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v43 = 0;
  v29 = curlh_lookupAndRetainRegisteredInfoForRequestIDOnQueue(v3, v2, &v47, &v46, 0, 0, 0, 0, 0);
  if (!v29)
  {
    if (!curlh_copyNetworkHistoryIfReporting(v3, v2, &cf, &v44))
    {
      v33 = 0;
      goto LABEL_20;
    }

    FigCFDictionaryGetInt64IfPresent(v47, @"RequestInfoDefaultLatency", &v43, v16, v17, v18, v19, v20, v36, v37, v39, v40, object, v42, v43, v44, cf, v46);
    v30 = v44;
    if (!v44)
    {
      curlh_requestSetDormantOnQueue(v3, v2, 0, &v44);
      v30 = v44;
    }

    if (!v43)
    {
      goto LABEL_14;
    }

    v29 = FigNetworkHistorySetRequestSentTimestamp();
    if (!v29)
    {
      v30 = v44;
LABEL_14:
      v31 = cf;
      v48 = 0;
      if (v46)
      {
        FigCFDictionaryGetInt64IfPresent(v46, @"ResponseInfoContentLength", &v48, v16, v17, v18, v19, v20, v36, v38, v39, v40, object, v42, v43, v44, cf, v46);
        v32 = v48;
      }

      else
      {
        v32 = 0;
      }

      v29 = FigNetworkHistorySetRequestLatency(v31, v30, UpTimeNanoseconds, v32);
    }
  }

  v33 = v29;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (!v33)
  {
    curl_dispatchDataCallback(object, v42, v39, v2, v4, 0, 0, 0, 0);
    goto LABEL_28;
  }

LABEL_41:
  if (v33 && v42)
  {
    curlh_cleanupRegisteredInfoForRequestID(v3, v2, v15, v16, v17, v18, v19, v20, v36);
    curl_dispatchDataCallbackWithError(object, v42, v39, v2, v40, v4, v33, v35);
  }

LABEL_28:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (object)
  {
    dispatch_release(object);
  }

  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v34 = a1[2];
  if (v34)
  {
    CFRelease(v34);
  }

  free(a1);
}

void curl_dispatchDataCallback(NSObject *a1, const void *a2, void (*a3)(const void *, uint64_t, const void *, const void *, uint64_t, const void *, const void *), uint64_t a4, const void *a5, const void *a6, uint64_t a7, const void *a8, const void *a9)
{
  v17 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00408CCBC589uLL);
  if (v17)
  {
    v20 = v17;
    if (a2)
    {
      v21 = CFRetain(a2);
    }

    else
    {
      v21 = 0;
    }

    *v20 = v21;
    v20[1] = a3;
    v20[2] = a4;
    if (a5)
    {
      v22 = CFRetain(a5);
    }

    else
    {
      v22 = 0;
    }

    v20[3] = v22;
    if (a6)
    {
      v23 = CFRetain(a6);
    }

    else
    {
      v23 = 0;
    }

    v20[4] = v23;
    *(v20 + 10) = a7;
    if (a8)
    {
      v24 = CFRetain(a8);
    }

    else
    {
      v24 = 0;
    }

    v20[6] = v24;
    if (a9)
    {
      v25 = CFRetain(a9);
    }

    else
    {
      v25 = 0;
    }

    v20[7] = v25;

    dispatch_async_f(a1, v20, curl_performDataCallbackDispatch);
  }

  else if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2B8, 0xFFFFCE0EuLL, "<<<< FigCustomURLHandling >>>>", 0x303, v9, v18, v19, v26))
  {

    a3(a2, a4, a5, a6, a7, a8, a9);
  }
}

void curl_dispatchDataCallbackWithError(NSObject *a1, const void *a2, void (*a3)(const void *, uint64_t, const void *, const void *, uint64_t, const void *, const void *), uint64_t a4, const void *a5, CFTypeRef cf, size_t a7, CMBlockBufferFlags a8)
{
  v8 = a7;
  v12 = a1;
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  else if (!a5 || (a1 = FigCustomURLResponseInfoCreate(*MEMORY[0x1E695E480], a5, &cfa, a4, a5, 0, a7, a8), !cfa))
  {
    curl_dispatchDataCallbackWithError_cold_1(a1, a2, a3, a4, a5, cf, a7, a8);
    goto LABEL_5;
  }

  v13 = CFErrorCreate(*MEMORY[0x1E695E480], @"CoreMediaErrorDomain", v8, 0);
  curl_dispatchDataCallback(v12, a2, a3, a4, cfa, 0, 1, v13, 0);
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_5:
  if (cfa)
  {
    CFRelease(cfa);
  }
}

size_t curlh_getRequestEntryForRequestID(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  *a3 = 0;
  v15 = *(DerivedStorage + 80);
  if (v15)
  {
    while (*v15 != a2)
    {
      v15 = v15[8];
      if (!v15)
      {
        goto LABEL_4;
      }
    }

    *a3 = v15;
    return 0;
  }

  else
  {
LABEL_4:
    v16 = qword_1ED4CC2B8;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFBC22uLL, "<<<< FigCustomURLHandling >>>>", 0x77C, v9, v13, v14, a9);
  }
}

void curl_performDataCallbackDispatch(uint64_t a1)
{
  (*(a1 + 8))(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void curlh_sendDataDispatch(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  object = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  cf = 0;
  v31 = 0;
  v29 = 0;
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 74))
  {
    curlh_sendDataDispatch_cold_1(&v37, v6, v7, v8, v9, v10, v11, v12);
LABEL_34:
    v26 = v37;
    goto LABEL_35;
  }

  v13 = curlh_lookupAndRetainRegisteredInfoForRequestIDOnQueue(v3, v2, &v32, &v31, &v35, &object, &v33, 0, 0);
  if (v13)
  {
    v26 = v13;
    goto LABEL_35;
  }

  if (!v31)
  {
    curlh_sendDataDispatch_cold_2(&v37, v14, v15, v16, v17, v18, v19, v20);
    goto LABEL_34;
  }

  if (curlh_copyNetworkHistoryIfReporting(v3, v2, &cf, &v29) && !v29)
  {
    curlh_requestSetDormantOnQueue(v3, v2, 0, &v29);
  }

  v36 = 0;
  v37 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  if (curlh_copyNetworkHistoryIfReporting(v3, v2, &v37, &v36))
  {
    v23 = v36;
    v22 = v37;
    DataLength = CMBlockBufferGetDataLength(v4);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v26 = FigNetworkHistoryRequestReceivedBytes(v22, v23, DataLength, UpTimeNanoseconds, 0);
  }

  else
  {
    v26 = 0;
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (!v26)
  {
LABEL_8:
    curl_dispatchDataCallback(object, v35, v33, v2, v31, v4, 0, 0, 0);
    goto LABEL_9;
  }

LABEL_35:
  if (v26 && v35)
  {
    curlh_cleanupRegisteredInfoForRequestID(v3, v2, v15, v16, v17, v18, v19, v20, v28);
    curl_dispatchDataCallbackWithError(object, v35, v33, v2, v32, v31, v26, v27);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (object)
  {
    dispatch_release(object);
  }

  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v21 = a1[2];
  if (v21)
  {
    CFRelease(v21);
  }

  free(a1);
}

void curlh_finishLoadingDispatch(uint64_t *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  object = 0;
  v49 = 0;
  cf = 0;
  v47 = 0;
  theDict = 0;
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 74))
  {
    curlh_finishLoadingDispatch_cold_1(v62, v7, v8, v9, v10, v11, v12, v13);
    v40 = v62[0];
    goto LABEL_49;
  }

  v14 = curlh_lookupAndRetainRegisteredInfoForRequestIDOnQueue(v3, v2, &cf, &theDict, &v49, &object, &v47, 0, 0);
  if (!v14)
  {
    v21 = theDict;
    if (theDict)
    {
      goto LABEL_6;
    }

    v14 = FigCustomURLResponseInfoCreate(*(DerivedStorage + 16), cf, &theDict, v16, v17, v18, v19, v20);
    if (!v14)
    {
      v21 = theDict;
LABEL_6:
      v22 = *MEMORY[0x1E695E4D0];
      if (v22 == CFDictionaryGetValue(v21, @"ResponseInfoSuppressErrorLogging"))
      {
        if (dword_1ED4CC2C0)
        {
          v44 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 1, &v44, &type);
          v24 = v44;
          v25 = type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v26 = v24;
          }

          else
          {
            v26 = v24 & 0xFFFFFFFE;
          }

          if (v26)
          {
            v32 = *(DerivedStorage + 24);
            v33 = "suppressed";
            if (!v4)
            {
              v33 = 0;
            }

            v50 = 136316162;
            v51 = "curlh_finishLoadingOnQueue";
            v52 = 2082;
            v53 = v32;
            v54 = 2048;
            v55 = v3;
            v56 = 2048;
            v57 = v2;
            v58 = 2080;
            v59 = v33;
            v27 = _os_log_send_and_compose_impl(v26, 0, v62, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v25, "<<<< FigCustomURLHandling >>>> %s: %{public}s.%p: requestID: %llu, error: %s", &v50, 52);
            LOBYTE(v24) = v44;
          }

          else
          {
            v27 = 0;
          }

          v34 = qword_1ED4CC2B8;
          v35 = v27 != v62;
          v36 = v24;
          goto LABEL_28;
        }
      }

      else if (dword_1ED4CC2C0)
      {
        v44 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 1, &v44, &type);
        LODWORD(v29) = v44;
        v30 = type;
        if (os_log_type_enabled(v28, type))
        {
          v31 = v29;
        }

        else
        {
          v31 = v29 & 0xFFFFFFFE;
        }

        if (v31)
        {
          v29 = *(DerivedStorage + 24);
          if (v4)
          {
            Code = CFErrorGetCode(v4);
          }

          else
          {
            Code = 0;
          }

          v50 = 136316419;
          v51 = "curlh_finishLoadingOnQueue";
          v52 = 2082;
          v53 = v29;
          v54 = 2048;
          v55 = v3;
          v56 = 2048;
          v57 = v2;
          v58 = 2113;
          v59 = v4;
          v60 = 1024;
          v61 = Code;
          v27 = _os_log_send_and_compose_impl(v31, 0, v62, 128, &dword_196FA7000, v28, v30, "<<<< FigCustomURLHandling >>>> %s: %{public}s.%p: requestID: %llu, error: %{private}@ (%d)", &v50, 58);
          LOBYTE(v29) = v44;
        }

        else
        {
          v27 = 0;
        }

        v34 = qword_1ED4CC2B8;
        v35 = v27 != v62;
        v36 = v29;
LABEL_28:
        fig_log_call_emit_and_clean_up_after_send_and_compose(v34, 1, 1, v27, v35, v36);
      }

      v14 = curlh_networkHistoryRequestBecameInactive(v3, v2);
      if (!v14)
      {
        v14 = curlh_cleanupRegisteredInfoForRequestID(v3, v2, v15, v16, v17, v18, v19, v20, v42);
        if (!v14)
        {
          curl_dispatchDataCallback(object, v49, v47, v2, theDict, 0, 1, v4, v5);
          goto LABEL_32;
        }
      }
    }
  }

  v40 = v14;
LABEL_49:
  if (v40 && v49)
  {
    curlh_cleanupRegisteredInfoForRequestID(v3, v2, v15, v16, v17, v18, v19, v20, v42);
    curl_dispatchDataCallbackWithError(object, v49, v47, v2, cf, theDict, v40, v41);
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (object)
  {
    dispatch_release(object);
  }

  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v38 = a1[2];
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = a1[3];
  if (v39)
  {
    CFRelease(v39);
  }

  free(a1);
}

void curlh_handleRequestDispatch(const __CFData *a1)
{
  v77 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  v4 = *BytePtr;
  v3 = BytePtr[1];
  v5 = BytePtr[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage(*BytePtr);
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 74))
  {
    curlh_handleRequestDispatch_cold_1(v76, v7, v8, v9, v10, v11, v12, v13);
    v15 = 0;
    goto LABEL_36;
  }

  v14 = CMBaseObjectGetDerivedStorage(v4);
  v15 = FigCFWeakReferenceHolderCopyReferencedObject(*(v14 + 32));
  if (!v15)
  {
    v47 = -17373;
    goto LABEL_37;
  }

  if (dword_1ED4CC2C0)
  {
    v67 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 1, &v67, &type);
    v17 = v67;
    v18 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v20 = *(DerivedStorage + 24);
      v68 = 136315906;
      v69 = "curlh_handleRequestOnQueue";
      v70 = 2082;
      v71 = v20;
      v72 = 2048;
      v73 = v4;
      v74 = 2048;
      v75 = v5;
      v21 = _os_log_send_and_compose_impl(v19, 0, v76, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v18, "<<<< FigCustomURLHandling >>>> %s: %{public}s.%p: issuing requestID: %llu", &v68, 42);
      LOBYTE(v17) = v67;
    }

    else
    {
      v21 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2B8, 1, 1, v21, v21 != v76, v17);
  }

  v29 = CMBaseObjectGetDerivedStorage(v4);
  if (qword_1ED4CC658 != -1)
  {
    curlh_handleRequestDispatch_cold_2();
  }

  v30 = qword_1ED4CC660;
  if (qword_1ED4CC660 || curlh_handleRequestDispatch_cold_3(v76, v22, v23, v24, v25, v26, v27, v28))
  {
    v31 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040A6443F3CuLL);
    if (v31)
    {
      v39 = v31;
      v40 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v31, 56, v30);
      if (v40)
      {
        v41 = v40;
        *v39 = v29[7];
        *(v39 + 1) = CFRetain(v15);
        if (v4)
        {
          v42 = CFRetain(v4);
        }

        else
        {
          v42 = 0;
        }

        *(v39 + 2) = v42;
        *(v39 + 3) = v5;
        if (v3)
        {
          v43 = CFRetain(v3);
        }

        else
        {
          v43 = 0;
        }

        *(v39 + 4) = v43;
        *(v39 + 5) = curlh_handleRequestCompletionHandlerDispatch;
        if (a1)
        {
          v44 = CFRetain(a1);
        }

        else
        {
          v44 = 0;
        }

        *(v39 + 6) = v44;
        figCustomURLWorkQueueSuspendDraining(*v29);
        v45 = v29[5];
        v46 = CFRetain(v41);
        dispatch_async_f(v45, v46, curlh_performHandleRequestCallbackDispatch);
        CFRelease(v41);
        goto LABEL_26;
      }

      curlh_handleRequestDispatch_cold_4(v39, v76);
    }

    else
    {
      curlh_handleRequestDispatch_cold_5(v76, v32, v33, v34, v35, v36, v37, v38);
    }

LABEL_36:
    v47 = v76[0];
    if (!v76[0])
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  v47 = v76[0];
LABEL_37:
  v48 = CFDataGetBytePtr(a1);
  v49 = *v48;
  v50 = CMBaseObjectGetDerivedStorage(*v48);
  v51 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E004018FB7DF4uLL);
  if (v51)
  {
    v54 = v51;
    if (v49)
    {
      v55 = CFRetain(v49);
    }

    else
    {
      v55 = 0;
    }

    *v54 = v55;
    v54[1] = v48[6];
    v56 = v48[7];
    if (v56)
    {
      v56 = CFRetain(v56);
    }

    v54[2] = v56;
    *(v54 + 6) = v47;
    figCustomURLWorkQueueSuspendDraining(*v50);
    dispatch_async_f(*(v50 + 40), v54, curlh_haltHandleRequestBeforeCallbackDueToErrorDispatch);
  }

  else
  {
    v57 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2B8, 0xFFFFCE0EuLL, "<<<< FigCustomURLHandling >>>>", 0xAA3, v65, v52, v53, v64);
    if (v57)
    {
      v58 = v57;
      v67 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 0, &v67, &type);
      v60 = v67;
      v61 = type;
      if (os_log_type_enabled(v59, type))
      {
        v62 = v60;
      }

      else
      {
        v62 = v60 & 0xFFFFFFFE;
      }

      if (v62)
      {
        v68 = 136315138;
        v69 = "curlh_haltHandleRequestBeforeCallbackDueToError";
        v63 = _os_log_send_and_compose_impl(v62, 0, v76, 128, &dword_196FA7000, v59, v61, "<<<< FigCustomURLHandling >>>> %s: WARNING: graceful/asynchronous error handling path for FigCustomURLHandlerHandleRequest failed; using the stack instead", &v68);
        LOBYTE(v60) = v67;
      }

      else
      {
        v63 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2B8, 0, 1, v63, v63 != v76, v60);
      (v48[6])(v48[7], 0, v58);
    }
  }

LABEL_44:
  if (v15)
  {
LABEL_26:
    CFRelease(v15);
  }

  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  if (a1)
  {
    CFRelease(a1);
  }
}

void handleRequestRec_dealloc(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  free(a1);
}

uint64_t figCustomURLWorkQueueSuspendDraining(uint64_t a1)
{
  FigReentrantMutexLock(*(a1 + 16));
  v5 = *(a1 + 40);
  if (v5 >= 4)
  {
    if (v5 == 4)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2B8, 0xFFFFCE0FuLL, "<<<< FigCustomURLHandling >>>>", 0x238, v1, v3, v4, v8);
    }
  }

  else
  {
    *(a1 + 40) = 2;
  }

  v6 = *(a1 + 16);

  return FigReentrantMutexUnlock(v6);
}

uint64_t curlh_performHandleRequestCallbackDispatch(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v3 = *BytePtr;
  v5 = *(BytePtr + 3);
  v4 = *(BytePtr + 4);
  v6 = *(BytePtr + 2);
  v7 = *(BytePtr + 1);

  return v3(v7, v6, v4, v5, curlh_handleRequestCallbackShimCompletionHandler, a1);
}

void performHandleRequestCallbackRec_dealloc(void *a1)
{
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

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t figCustomURLWorkQueueResumeDraining(uint64_t a1)
{
  FigReentrantMutexLock(*(a1 + 16));
  v9 = *(a1 + 40);
  if (v9 >= 3)
  {
    if (v9 == 4)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2B8, 0xFFFFCE0FuLL, "<<<< FigCustomURLHandling >>>>", 0x257, v1, v7, v8, v12);
    }

    else if (v9 == 3)
    {
      figCustomURLWorkQueueDrain(a1, 1, v3, v4, v5, v6, v7, v8, v12);
    }
  }

  else
  {
    *(a1 + 40) = 1;
  }

  v10 = *(a1 + 16);

  return FigReentrantMutexUnlock(v10);
}

void curlh_haltHandleRequestBeforeCallbackDueToErrorDispatch(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  (*(a1 + 8))(*(a1 + 16), 0, *(a1 + 24));
  v3 = FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 74))
  {
    curlh_haltHandleRequestBeforeCallbackDueToErrorDispatch_cold_1(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  }

  else
  {
    figCustomURLWorkQueueResumeDraining(*DerivedStorage);
  }

  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    CFRelease(v11);
  }

  free(a1);
}

void curlh_performRequestCancelledCallbackDispatch(void *a1)
{
  (*a1)(a1[1], a1[2], a1[4], a1[3]);
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

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t figCustomURLWorkQueueRegisterType()
{
  result = _CFRuntimeRegisterClass();
  sFigCustomURLWorkQueueTypeID = result;
  return result;
}

double figCustomURLWorkQueueInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figCustomURLWorkQueueFinalize(uint64_t a1)
{
  FigReentrantMutexLock(*(a1 + 16));
  if (*(a1 + 40) != 4)
  {
    v3 = (a1 + 24);
    v2 = *(a1 + 24);
    *(a1 + 40) = 4;
    if (v2)
    {
      do
      {
        v4 = v2[2];
        *v3 = v4;
        if (!v4)
        {
          *(a1 + 32) = v3;
        }

        free(v2);
        v2 = *v3;
      }

      while (*v3);
    }
  }

  FigReentrantMutexUnlock(*(a1 + 16));
  v5 = *(a1 + 16);

  return FigReentrantMutexDestroy(v5);
}

CFStringRef figCustomURLWorkQueueCopyDebugDesc(uint64_t a1)
{
  FigReentrantMutexLock(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    do
    {
      ++v3;
      v2 = *(v2 + 16);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = CFGetRetainCount(a1);
  v6 = CFStringCreateWithFormat(v4, 0, @"[FigCustomURLWorkQueue %p (%d) { %zu jobs enqueued; state = %d }]", a1, v5, v3, *(a1 + 40));
  FigReentrantMutexUnlock(*(a1 + 16));
  return v6;
}

uint64_t curll_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 40))
  {
    curll_copyProperty_cold_1(&v26, v8, v9, v10, v11, v12, v13, v14);
    v23 = v26;
  }

  else if (a4)
  {
    if (FigCFEqual(@"CURLLProperty_AllowedCommonMediaClientDataKeys", a2))
    {
      UInt64 = FigCFNumberCreateUInt64(a3, *(DerivedStorage + 48));
      *a4 = UInt64;
      if (UInt64)
      {
        v23 = 0;
      }

      else
      {
        curll_copyProperty_cold_2(&v27, v16, v17, v18, v19, v20, v21, v22);
        v23 = v27;
      }
    }

    else if (FigCFEqual(@"CURLLProperty_CreationOptions", a2))
    {
      v24 = *(DerivedStorage + 32);
      if (v24)
      {
        v24 = CFRetain(v24);
      }

      v23 = 0;
      *a4 = v24;
    }

    else
    {
      v23 = 4294954512;
    }
  }

  else
  {
    curll_copyProperty_cold_3(&v28, v8, v9, v10, v11, v12, v13, v14);
    v23 = v28;
  }

  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  return v23;
}

uint64_t curll_setProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 40))
  {
    curll_setProperty_cold_1(&v22, v6, v7, v8, v9, v10, v11, v12);
    a3 = v22;
  }

  else if (FigCFEqual(@"CURLLProperty_AllowedCommonMediaClientDataKeys", a2))
  {
    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 == CFNumberGetTypeID())
      {
        *(DerivedStorage + 48) = 0;
        CFNumberGetValue(a3, kCFNumberSInt64Type, (DerivedStorage + 48));
        a3 = 0;
      }

      else
      {
        curll_setProperty_cold_2(&v23, v14, v15, v16, v17, v18, v19, v20);
        a3 = v23;
      }
    }

    else
    {
      *(DerivedStorage + 48) = 0;
    }
  }

  else
  {
    a3 = 4294954512;
  }

  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  return a3;
}

void curll_unregisterHandlerForRequestDispatch(CFTypeRef *a1)
{
  curll_unregisterHandlerForRequestOnQueue(*a1, a1[1]);
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t curll_unregisterHandlerForRequestOnQueue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 40))
  {
    curll_unregisterHandlerForRequestOnQueue_cold_1(&v13, v4, v5, v6, v7, v8, v9, v10);
    v11 = v13;
  }

  else
  {
    v11 = FigCFWeakReferenceTableRemoveValue(*(DerivedStorage + 72), a2);
  }

  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  return v11;
}

size_t curll_createAndInstallHandler(void *a1, uint64_t a2, const char *a3, uint64_t a4, NSObject *a5, uint64_t a6, const __CFDictionary *a7, void *a8)
{
  v46 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], a7);
  v18 = MutableCopy;
  if (a7 && !MutableCopy)
  {
    v37 = a6;
    v38 = a2;
    v39 = a8;
    v41 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 0, &v41, &type);
    v20 = v41;
    v21 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v43 = 136315138;
      v44 = "curll_createAndInstallHandler";
      v23 = _os_log_send_and_compose_impl(v22, 0, v45, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v21, "<<<< FigCustomURLHandling >>>> %s: Failed to copy FigCustomURLHandler creation options; attempting to proceed with existing options.", &v43);
      LOBYTE(v20) = v41;
    }

    else
    {
      v23 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2B8, 0, 1, v23, v23 != v45, v20);
    a2 = v38;
    a8 = v39;
    a6 = v37;
  }

  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 40))
  {
    curll_createAndInstallHandler_cold_1(v45, v24, v25, v26, v27, v28, v29, v30);
    v35 = v45[0];
  }

  else
  {
    if (v18)
    {
      FigCFDictionarySetBoolean(v18, @"CURLHOption_OKToLogURLs", *(DerivedStorage + 24));
      v31 = v18;
    }

    else if (a7)
    {
      v31 = CFRetain(a7);
    }

    else
    {
      v31 = 0;
    }

    v32 = FigCustomURLHandlerCreate(*(DerivedStorage + 16), a3, a4, a5, a6, v31, &cf);
    v33 = cf;
    if (!v32)
    {
      v32 = curll_installHandler(a1, cf, a2);
      v33 = cf;
      if (!v32)
      {
        if (cf)
        {
          v34 = CFRetain(cf);
          v33 = cf;
        }

        else
        {
          v34 = 0;
        }

        v35 = 0;
        *a8 = v34;
        if (!v33)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    v35 = v32;
    if (v33)
    {
LABEL_22:
      CFRelease(v33);
    }
  }

LABEL_23:
  if (v18)
  {
    CFRelease(v18);
  }

  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  return v35;
}

uint64_t curll_getURL(const void *a1, const void *a2, const void *a3, NSObject *a4, uint64_t a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!a1)
  {
    curll_getURL_cold_8(&v35, v13, v14, v15, v16, v17, v18, v19);
    return v35;
  }

  if (!a2)
  {
    curll_getURL_cold_7(&v35, v13, v14, v15, v16, v17, v18, v19);
    return v35;
  }

  if (!a3)
  {
    curll_getURL_cold_6(&v35, v13, v14, v15, v16, v17, v18, v19);
    return v35;
  }

  if (!a4)
  {
    curll_getURL_cold_5(&v35, v13, v14, v15, v16, v17, v18, v19);
    return v35;
  }

  if (!a5)
  {
    curll_getURL_cold_4(&v35, v13, v14, v15, v16, v17, v18, v19);
    return v35;
  }

  if (!a6)
  {
    curll_getURL_cold_3(&v35, v13, v14, v15, v16, v17, v18, v19);
    return v35;
  }

  v20 = DerivedStorage;
  v21 = CMBaseObjectGetDerivedStorage(a1);
  v22 = FigAtomicIncrement32((v21 + 44));
  v23 = malloc_type_calloc(1uLL, 0x30uLL, 0x10E004085FF1568uLL);
  if (!v23)
  {
    curll_getURL_cold_2(&v35, v24, v25, v26, v27, v28, v29, v30);
    return v35;
  }

  v31 = v23;
  v32 = 2 * v22;
  *v23 = CFRetain(a1);
  *(v31 + 16) = CFRetain(a2);
  *(v31 + 8) = CFRetain(a3);
  dispatch_retain(a4);
  *(v31 + 24) = a4;
  *(v31 + 32) = a5;
  *(v31 + 40) = v32;
  v33 = figCustomURLWorkQueueEnqueue(*v20, curll_getURLDispatch, v31);
  if (v33)
  {
    curll_getURL_cold_1(v31, (v31 + 16), (v31 + 8), (v31 + 24));
  }

  else
  {
    *a6 = v32;
  }

  return v33;
}

uint64_t curll_cancelRequest(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    v12 = DerivedStorage;
    v13 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
    if (v13)
    {
      v21 = v13;
      *v13 = CFRetain(a1);
      *(v21 + 8) = a2;
      v22 = figCustomURLWorkQueueEnqueue(*v12, curll_cancelRequestDispatch, v21);
      if (v22)
      {
        if (*v21)
        {
          CFRelease(*v21);
        }

        free(v21);
      }
    }

    else
    {
      curll_cancelRequest_cold_1(&v24, v14, v15, v16, v17, v18, v19, v20);
      return v24;
    }
  }

  else
  {
    curll_cancelRequest_cold_2(&v25, v5, v6, v7, v8, v9, v10, v11);
    return v25;
  }

  return v22;
}

uint64_t curll_requestSetDormant(const void *a1, uint64_t a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    v14 = DerivedStorage;
    v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x10600407BD382EDuLL);
    if (v15)
    {
      v23 = v15;
      *v15 = CFRetain(a1);
      *(v23 + 8) = a2;
      *(v23 + 16) = a3;
      v24 = figCustomURLWorkQueueEnqueue(*v14, curll_requestSetDormantDispatch, v23);
      if (v24)
      {
        if (*v23)
        {
          CFRelease(*v23);
        }

        free(v23);
      }
    }

    else
    {
      curll_requestSetDormant_cold_1(&v26, v16, v17, v18, v19, v20, v21, v22);
      return v26;
    }
  }

  else
  {
    curll_requestSetDormant_cold_2(&v27, v7, v8, v9, v10, v11, v12, v13);
    return v27;
  }

  return v24;
}

uint64_t curll_transferHandlingOfRequest(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!a1)
  {
    curll_transferHandlingOfRequest_cold_7(v52, v9, v10, v11, v12, v13, v14, v15);
    return v52[0];
  }

  if (!a2)
  {
    curll_transferHandlingOfRequest_cold_6(v52, v9, v10, v11, v12, v13, v14, v15);
    return v52[0];
  }

  if (!a3)
  {
    curll_transferHandlingOfRequest_cold_5(v52, v9, v10, v11, v12, v13, v14, v15);
    return v52[0];
  }

  v16 = DerivedStorage;
  if (qword_1ED4CC688 != -1)
  {
    curll_transferHandlingOfRequest_cold_1();
  }

  v17 = qword_1ED4CC690;
  if (!qword_1ED4CC690 && !curll_transferHandlingOfRequest_cold_2(v52, v9, v10, v11, v12, v13, v14, v15))
  {
    return v52[0];
  }

  v18 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E004078E2DE95uLL);
  if (!v18)
  {
    curll_transferHandlingOfRequest_cold_4(v52, v19, v20, v21, v22, v23, v24, v25);
    return v52[0];
  }

  v26 = v18;
  v27 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v18, 72, v17);
  if (!v27)
  {
    curll_transferHandlingOfRequest_cold_3(v26, v52);
    return v52[0];
  }

  v28 = v27;
  *v26 = CFRetain(a1);
  v26[1] = CFRetain(a2);
  v26[2] = CFRetain(a3);
  v26[3] = a4;
  if (dword_1ED4CC2C0)
  {
    HIDWORD(v41) = 0;
    BYTE3(v41) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 1, &v41 + 1, &v41 + 3);
    v30 = HIDWORD(v41);
    v31 = BYTE3(v41);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v41)))
    {
      v32 = v30;
    }

    else
    {
      v32 = v30 & 0xFFFFFFFE;
    }

    if (v32)
    {
      v33 = v26[3];
      v34 = v26[1];
      v42 = 136316162;
      v43 = "curll_transferHandlingOfRequest";
      v44 = 2048;
      v45 = v16;
      v46 = 2048;
      v47 = v33;
      v48 = 2048;
      v49 = v34;
      v50 = 2048;
      v51 = v34;
      v35 = _os_log_send_and_compose_impl(v32, 0, v52, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v31, "<<<< FigCustomURLHandling >>>> %s: %p: requestID: %llu fromHandler: %p toHandler: %p", &v42, 52, v40, v41);
      LOBYTE(v30) = BYTE4(v41);
    }

    else
    {
      v35 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2B8, 1, 1, v35, v35 != v52, v30);
  }

  v36 = *v16;
  v37 = CFRetain(v28);
  v38 = figCustomURLWorkQueueEnqueue(v36, curll_transferHandlingOfRequestDispatch, v37);
  if (v38)
  {
    CFRelease(v28);
  }

  CFRelease(v28);
  return v38;
}

uint64_t curll_compareHandlersByPriority(void *key, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*(a3 + 56), key);
  v6 = CFDictionaryGetValue(*(a3 + 56), a2);
  v7 = CFNumberCompare(Value, v6, 0);
  if (v7 == kCFCompareGreaterThan)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  if (v7 == kCFCompareLessThan)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void curll_getURLDispatch(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  cf = 0;
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 40))
  {
    curll_getURLDispatch_cold_1(&v35, v9, v10, v11, v12, v13, v14, v15);
    goto LABEL_17;
  }

  if (CFArrayGetCount(*(DerivedStorage + 64)) <= 0)
  {
    curll_getURLDispatch_cold_2(&v35, v16, v17, v18, v19, v20, v21, v22);
LABEL_17:
    v29 = v35;
    if (!v35)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 64), 0);
  v29 = curll_handlerHandleRequestOnLoaderQueue(v3, ValueAtIndex, v4, v7, v2, v5, v6, curll_respondToHandleRequestCompletionOnQueue, cf);
  if (!v29)
  {
    goto LABEL_6;
  }

LABEL_4:
  FigCustomURLResponseInfoCreateMutable(*(DerivedStorage + 16), v4, &cf, v24, v25, v26, v27, v28);
  curl_dispatchDataCallbackWithError(v5, v2, v6, v7, v4, cf, v29, v30);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_6:
  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v31 = a1[2];
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = a1[1];
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = a1[3];
  if (v33)
  {
    dispatch_release(v33);
  }

  free(a1);
}

uint64_t curll_respondToHandleRequestCompletionOnQueue(const __CFData *a1, int a2, int a3)
{
  bytesDeallocator[16] = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  v8 = *BytePtr;
  v7 = *(BytePtr + 1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(*BytePtr);
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 40))
  {
    curll_respondToHandleRequestCompletionOnQueue_cold_1(bytesDeallocator, v10, v11, v12, v13, v14, v15, v16);
LABEL_65:
    v40 = LODWORD(bytesDeallocator[0]);
    goto LABEL_59;
  }

  v17 = *(DerivedStorage + 64);
  v111.length = CFArrayGetCount(v17);
  v111.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v17, v111, v7);
  if (FirstIndexOfValue == -1)
  {
    curll_respondToHandleRequestCompletionOnQueue_cold_3(bytesDeallocator, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_65;
  }

  v26 = FirstIndexOfValue;
  if (a3 == -17377)
  {
    if (dword_1ED4CC2C0)
    {
      HIDWORD(v96) = a2;
      HIDWORD(v99) = 0;
      BYTE3(v99) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 1, &v99 + 1, &v99 + 3);
      v28 = HIDWORD(v99);
      v29 = BYTE3(v99);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v99)))
      {
        v30 = v28;
      }

      else
      {
        v30 = v28 & 0xFFFFFFFE;
      }

      if (v30)
      {
        v31 = *(BytePtr + 3);
        v100 = 136315906;
        v101 = "curll_respondToHandleRequestCompletionOnQueue";
        v102 = 2048;
        v103 = DerivedStorage;
        v104 = 2048;
        v105 = v31;
        v106 = 2048;
        v107 = v7;
        LODWORD(v96) = 42;
        v32 = _os_log_send_and_compose_impl(v30, 0, bytesDeallocator, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v29, "<<<< FigCustomURLHandling >>>> %s: %p: request: %llu timed-out on handler %p", &v100, v96, v98, v99);
        LOBYTE(v28) = BYTE4(v99);
      }

      else
      {
        v32 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2B8, 1, 1, v32, v32 != bytesDeallocator, v28);
      v39 = 0;
      v40 = 4294949919;
      a2 = HIDWORD(v96);
    }

    else
    {
      v39 = 0;
      v40 = 4294949919;
    }
  }

  else if (a3)
  {
    if (dword_1ED4CC2C0)
    {
      HIDWORD(v97) = a2;
      HIDWORD(v99) = 0;
      BYTE3(v99) = 0;
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 1, &v99 + 1, &v99 + 3);
      v34 = HIDWORD(v99);
      v35 = BYTE3(v99);
      if (os_log_type_enabled(v33, BYTE3(v99)))
      {
        v36 = v34;
      }

      else
      {
        v36 = v34 & 0xFFFFFFFE;
      }

      if (v36)
      {
        v37 = *(BytePtr + 3);
        v100 = 136316162;
        v101 = "curll_respondToHandleRequestCompletionOnQueue";
        v102 = 2048;
        v103 = DerivedStorage;
        v104 = 2048;
        v105 = v37;
        v106 = 2048;
        v107 = v7;
        v108 = 1024;
        v109 = a3;
        LODWORD(v97) = 48;
        v38 = _os_log_send_and_compose_impl(v36, 0, bytesDeallocator, 128, &dword_196FA7000, v33, v35, "<<<< FigCustomURLHandling >>>> %s: %p: request: %llu removing handler %p due to err %d", &v100, v97, v98, v99);
        LOBYTE(v34) = BYTE4(v99);
      }

      else
      {
        v38 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2B8, 1, 1, v38, v38 != bytesDeallocator, v34);
      a2 = HIDWORD(v97);
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 64), v26);
    v40 = 0;
    --v26;
    v39 = 1;
  }

  else
  {
    v40 = 0;
    v39 = a2 == 0;
  }

  Count = CFArrayGetCount(*(DerivedStorage + 64));
  if (!v39 || v26 == Count - 1)
  {
    if (a2)
    {
      v89 = *(BytePtr + 3);
      v90 = CMBaseObjectGetDerivedStorage(v8);
      v91 = FigCFWeakReferenceTableAddValueAssociatedWithKey(*(v90 + 72), v7, v89);
    }

    else
    {
      if (a3 == -17377)
      {
        goto LABEL_59;
      }

      v91 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2B8, 0xFFFFBC19uLL, "<<<< FigCustomURLHandling >>>>", 0xEAC, v98, v45, v46, v95);
    }

    v40 = v91;
LABEL_59:
    if (!v40)
    {
      return FigReentrantMutexUnlock(*(DerivedStorage + 8));
    }

    goto LABEL_60;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 64), v26 + 1);
  v48 = CFDataGetBytePtr(a1);
  bytesDeallocator[0] = 0;
  v49 = CFDataGetBytePtr(a1);
  CFAllocator = handlerHandleRequestRec_getCFAllocator(bytesDeallocator, v50, v51, v52, v53, v54, v55, v56);
  if (CFAllocator)
  {
    goto LABEL_72;
  }

  v58 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E0040CF94696AuLL);
  if (v58)
  {
    v61 = v58;
    v62 = *(v49 + 1);
    *v58 = *v49;
    v58[1] = v62;
    v63 = *(v49 + 2);
    v64 = *(v49 + 3);
    v65 = *(v49 + 4);
    *(v58 + 10) = *(v49 + 10);
    v58[3] = v64;
    v58[4] = v65;
    v58[2] = v63;
    v66 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v58, 88, bytesDeallocator[0]);
    if (v66)
    {
      v67 = v66;
      if (*v61)
      {
        CFRetain(*v61);
      }

      v68 = *(v61 + 1);
      if (v68)
      {
        CFRetain(v68);
      }

      v69 = *(v61 + 2);
      if (v69)
      {
        CFRetain(v69);
      }

      v70 = *(v61 + 4);
      if (v70)
      {
        CFRetain(v70);
      }

      v71 = *(v61 + 5);
      if (v71)
      {
        dispatch_retain(v71);
      }

      v72 = *(v61 + 9);
      if (v72)
      {
        dispatch_retain(v72);
      }

      goto LABEL_41;
    }

    free(v61);
    v94 = 3515;
  }

  else
  {
    v94 = 3510;
  }

  CFAllocator = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2B8, 0xFFFFCE0EuLL, "<<<< FigCustomURLHandling >>>>", v94, v98, v59, v60, v95);
  if (CFAllocator)
  {
    goto LABEL_72;
  }

  v67 = 0;
LABEL_41:
  v73 = CFDataGetBytePtr(v67);
  v74 = FigCFWeakReferenceHolderCreateWithReferencedObject(v67);
  if (!v74)
  {
    v40 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2B8, 0xFFFFCE0EuLL, "<<<< FigCustomURLHandling >>>>", 0xE18, v98, v75, v76, v95);
    if (v67)
    {
      CFRelease(v67);
    }

    goto LABEL_59;
  }

  v77 = v74;
  *(v73 + 20) = 0;
  v78 = *(v73 + 1);
  *(v73 + 1) = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  *(v73 + 84) = 1;
  v79 = *(v73 + 9);
  if (v79)
  {
    dispatch_release(v79);
  }

  if (qword_1ED4CC678 != -1)
  {
    curll_respondToHandleRequestCompletionOnQueue_cold_2();
  }

  v80 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CC680);
  *(v73 + 9) = v80;
  v81 = dispatch_time(0, (*(v73 + 7) * 1000000000.0));
  v82 = dispatch_time(0, (*(v73 + 7) * 1000000000.0));
  dispatch_source_set_timer(v80, v81, v82, 0);
  dispatch_set_context(*(v73 + 9), v77);
  dispatch_source_set_event_handler_f(*(v73 + 9), curll_handlerHandleRequestTimerTimeoutCallback);
  dispatch_source_set_cancel_handler_f(*(v73 + 9), curll_handlerHandleRequestTimerCancellationCallback);
  dispatch_resume(*(v73 + 9));
  v83 = *(v73 + 2);
  v84 = *(v73 + 3);
  v85 = *(v73 + 4);
  v86 = *(v73 + 5);
  v87 = *(v73 + 6);
  v88 = *(*(CMBaseObjectGetVTable(ValueAtIndex) + 16) + 32);
  if (!v88)
  {
    v40 = 4294954514;
    goto LABEL_60;
  }

  CFAllocator = v88(ValueAtIndex, v83, v84, v85, v86, v87, curll_handlerHandleRequestCompletionHandler, v67);
  if (!CFAllocator)
  {
    *(v48 + 84) = 0;
    return FigReentrantMutexUnlock(*(DerivedStorage + 8));
  }

LABEL_72:
  v40 = CFAllocator;
LABEL_60:
  bytesDeallocator[0] = 0;
  FigCustomURLResponseInfoCreateMutable(*(DerivedStorage + 16), *(BytePtr + 2), bytesDeallocator, v42, v43, v44, v45, v46);
  curl_dispatchDataCallbackWithError(*(BytePtr + 5), *(BytePtr + 4), *(BytePtr + 6), *(BytePtr + 3), *(BytePtr + 2), bytesDeallocator[0], v40, v92);
  if (bytesDeallocator[0])
  {
    CFRelease(bytesDeallocator[0]);
  }

  return FigReentrantMutexUnlock(*(DerivedStorage + 8));
}

uint64_t handlerHandleRequestRec_getCFAllocator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (qword_1ED4CC668 != -1)
  {
    handlerHandleRequestRec_getCFAllocator_cold_1();
  }

  if (qword_1ED4CC670)
  {
    result = 0;
    *a1 = qword_1ED4CC670;
  }

  else
  {
    handlerHandleRequestRec_getCFAllocator_cold_2(&v10, a2, a3, a4, a5, a6, a7, a8);
    return v10;
  }

  return result;
}

void curll_handlerHandleRequestTimerCancellationCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void curll_handlerHandleRequestCompletionHandler(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  curll_handlerHandleRequestCompletionHandlerCommon(a1, a2, 0, a3);
  if (a1)
  {

    CFRelease(a1);
  }
}

void handlerHandleRequestRec_dealloc(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    dispatch_release(v7);
  }

  free(a1);
}

dispatch_queue_t curl_getLowPriorityBackgroundQueueOnce()
{
  result = FigDispatchQueueCreateWithPriority("com.apple.coremedia.customurl.bg", 0, 25);
  qword_1ED4CC680 = result;
  return result;
}

void curll_handlerHandleRequestCompletionHandlerCommon(const __CFData *a1, unsigned int a2, int a3, unsigned int a4)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (FigAtomicCompareAndSwap32(0, 1u, BytePtr + 20))
  {
    if (a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    if (a3)
    {
      v10 = 4294949919;
    }

    else
    {
      v10 = a4;
    }

    (*(BytePtr + 8))(a1, v9, v10);
    if (BytePtr[84])
    {
      curll_handlerHandleRequestCompletionHandlerCommon_cold_1(BytePtr);
    }

    v11 = *(BytePtr + 9);

    dispatch_source_cancel(v11);
  }
}

uint64_t curll_transferHandlingOfRequestDispatch(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v3 = *(BytePtr + 1);
  v4 = *(BytePtr + 3);
  VTable = CMBaseObjectGetVTable(v3);
  v7 = *(VTable + 16);
  result = VTable + 16;
  v8 = *(v7 + 56);
  if (v8)
  {

    return v8(v3, v4, curll_handlerLookupRegisteredInfoCallbackForHandlerTransfer, a1);
  }

  return result;
}

void transferHandlingOfRequestRec_dealloc(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    dispatch_release(v8);
  }

  free(a1);
}

void curll_handlerLookupRegisteredInfoCallbackForHandlerTransfer(int a1, int a2, CFDataRef theData, int a4, const void *a5, const void *a6, const void *a7, NSObject *a8, uint64_t a9, const void *a10)
{
  BytePtr = CFDataGetBytePtr(theData);
  DerivedStorage = CMBaseObjectGetDerivedStorage(*BytePtr);
  v18 = FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 40))
  {
    curll_handlerLookupRegisteredInfoCallbackForHandlerTransfer_cold_1(v18, v19, v20, v21, v22, v23, v24, v25, v31);
  }

  else if (!a4)
  {
    if (BytePtr[4])
    {
      curll_handlerLookupRegisteredInfoCallbackForHandlerTransfer_cold_2(v18, v19, v20, v21, v22, v23, v24, v25, v31);
    }

    else if (BytePtr[5])
    {
      curll_handlerLookupRegisteredInfoCallbackForHandlerTransfer_cold_3(v18, v19, v20, v21, v22, v23, v24, v25, v31);
    }

    else if (BytePtr[6])
    {
      curll_handlerLookupRegisteredInfoCallbackForHandlerTransfer_cold_4(v18, v19, v20, v21, v22, v23, v24, v25, v31);
    }

    else if (BytePtr[7])
    {
      curll_handlerLookupRegisteredInfoCallbackForHandlerTransfer_cold_5(v18, v19, v20, v21, v22, v23, v24, v25, v31);
    }

    else
    {
      if (!BytePtr[8])
      {
        if (a5)
        {
          v26 = CFRetain(a5);
        }

        else
        {
          v26 = 0;
        }

        BytePtr[4] = v26;
        if (a6)
        {
          v27 = CFRetain(a6);
        }

        else
        {
          v27 = 0;
        }

        BytePtr[5] = v27;
        if (a7)
        {
          v28 = CFRetain(a7);
        }

        else
        {
          v28 = 0;
        }

        BytePtr[6] = v28;
        BytePtr[8] = a9;
        if (a8)
        {
          dispatch_retain(a8);
        }

        BytePtr[7] = a8;
        v29 = *DerivedStorage;
        if (theData)
        {
          v30 = CFRetain(theData);
          if (figCustomURLWorkQueueEnqueue(v29, curll_transferHandlingOfRequestWithRegisteredInfoDispatch, v30))
          {
            CFRelease(theData);
          }

          goto LABEL_22;
        }

        figCustomURLWorkQueueEnqueue(*DerivedStorage, curll_transferHandlingOfRequestWithRegisteredInfoDispatch, 0);
        goto LABEL_24;
      }

      curll_handlerLookupRegisteredInfoCallbackForHandlerTransfer_cold_6(v18, v19, v20, v21, v22, v23, v24, v25, v31);
    }
  }

  if (theData)
  {
LABEL_22:
    CFRelease(theData);
  }

LABEL_24:
  FigReentrantMutexUnlock(*(DerivedStorage + 8));
  if (a5)
  {
    CFRelease(a5);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  if (a7)
  {
    CFRelease(a7);
  }

  if (a8)
  {
    dispatch_release(a8);
  }

  if (a10)
  {

    CFRelease(a10);
  }
}

uint64_t curll_respondToHandleRequestCompletionForTransferOnQueue(const __CFData *a1, int a2, size_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(*BytePtr);
  v8 = BytePtr[1];
  FigReentrantMutexLock(*(DerivedStorage + 8));
  if (*(DerivedStorage + 40))
  {
    curll_respondToHandleRequestCompletionForTransferOnQueue_cold_1(v34, v9, v10, v11, v12, v13, v14, v15);
    a3 = v34[0];
    if (!v34[0])
    {
      return FigReentrantMutexUnlock(*(DerivedStorage + 8));
    }

    goto LABEL_16;
  }

  if (a3 == -17377 && dword_1ED4CC2C0)
  {
    HIDWORD(v25) = 0;
    BYTE3(v25) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2B8, 1, &v25 + 1, &v25 + 3);
    v18 = HIDWORD(v25);
    v19 = BYTE3(v25);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v25)))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v22 = BytePtr[3];
      v26 = 136315906;
      v27 = "curll_respondToHandleRequestCompletionForTransferOnQueue";
      v28 = 2048;
      v29 = DerivedStorage;
      v30 = 2048;
      v31 = v22;
      v32 = 2048;
      v33 = v8;
      v21 = _os_log_send_and_compose_impl(v20, 0, v34, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v19, "<<<< FigCustomURLHandling >>>> %s: %p: request: %llu timed-out on handler %p", &v26, 42, v24, v25);
      LOBYTE(v18) = BYTE4(v25);
    }

    else
    {
      v21 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2B8, 1, 1, v21, v21 != v34, v18);
    a3 = 4294949919;
LABEL_16:
    curll_respondToHandleRequestCompletionForTransferOnQueue_cold_2(DerivedStorage, BytePtr, a3, v11, v12, v13, v14, v15);
    return FigReentrantMutexUnlock(*(DerivedStorage + 8));
  }

  if (!a2 && !a3)
  {
    a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2B8, 0xFFFFBC18uLL, "<<<< FigCustomURLHandling >>>>", 0xFF5, v3, v14, v15, v23);
  }

  if (a3)
  {
    goto LABEL_16;
  }

  return FigReentrantMutexUnlock(*(DerivedStorage + 8));
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

void OUTLINED_FUNCTION_7_6(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, curl_getLowPriorityBackgroundQueueOnce);
}

uint64_t OUTLINED_FUNCTION_8_5(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(a1, 1, &a15, &a14);
}

uint64_t OUTLINED_FUNCTION_15_2(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1)
{
  v2 = *(a1 + 8);

  return FigReentrantMutexLock(v2);
}

BOOL OUTLINED_FUNCTION_23_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_24_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{
  v16 = *(v14 + 696);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v16, 1, &a14, &a13);
}

BOOL OUTLINED_FUNCTION_25_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_26_1(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose(a1, a2, a3, a4, a5, v5);
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return FigCreateCFAllocatorFigMallocWithDeallocCallback(v2, va);
}

id FigCFWeakReferenceStore(id *location, id obj)
{
  if (wr_initializeOnceToken != -1)
  {
    FigCFWeakReferenceStore_cold_1();
  }

  return objc_storeWeak(location, obj);
}

id FigCFWeakReferenceInit(id *location, id val)
{
  if (wr_initializeOnceToken != -1)
  {
    FigCFWeakReferenceStore_cold_1();
  }

  return objc_initWeak(location, val);
}

size_t RegisterFigCaptionRegionBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigCaptionRegionClassDesc, ClassID, 1, &sFigCaptionRegionClassID, v10, v11, v12, v13, a9);
}

uint64_t FigCaptionRegionGetTypeID()
{
  FigThreadRunOnce(&FigCaptionRegionGetClassID_sRegisterFigCaptionRegionBaseTypeOnce, RegisterFigCaptionRegionBaseType);
  v0 = sFigCaptionRegionClassID;

  return CMBaseClassGetCFTypeID(v0);
}

uint64_t FigCaptionRegionCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v5 = FigCaptionRegionCreateMutable(a1, &cf);
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v6 = cf;
    v7 = *(*(CMBaseObjectGetVTable(cf) + 8) + 56);
    if (v7)
    {
      v8 = v7(v6, @"CMCaptionRegionIdentifier", a2);
      if (!v8)
      {
        *a3 = cf;
        return v8;
      }
    }

    else
    {
      v8 = 4294954514;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

size_t FigCaptionRegionCreateMutable(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  if (!a2)
  {
    FigCaptionRegionCreateMutable_cold_1(&v18);
    return v18;
  }

  FigThreadRunOnce(&FigCaptionRegionGetClassID_sRegisterFigCaptionRegionBaseTypeOnce, RegisterFigCaptionRegionBaseType);
  v9 = CMDerivedObjectCreate(a1, kFigCaptionRegionVTable, sFigCaptionRegionClassID, &cf, v5, v6, v7, v8, cf);
  v10 = cf;
  if (!v9)
  {
    if (cf)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    }

    else
    {
      DerivedStorage = 0;
    }

    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *DerivedStorage = Mutable;
    if (Mutable)
    {
      v9 = 0;
      *a2 = cf;
      return v9;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< FigMutableCaptionRegion >>>>", 0x265, v2, v15, v16, cf);
    v10 = cf;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

size_t FigCaptionRegionCreateMutableCopy(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    if (a2)
    {
      FigThreadRunOnce(&FigCaptionRegionGetClassID_sRegisterFigCaptionRegionBaseTypeOnce, RegisterFigCaptionRegionBaseType);
      v10 = CMDerivedObjectCreate(a1, kFigCaptionRegionVTable, sFigCaptionRegionClassID, &cf, v6, v7, v8, v9, value);
      if (v10)
      {
        v16 = v10;
        goto LABEL_21;
      }

      if (cf)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
        Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *DerivedStorage = Mutable;
        if (Mutable)
        {
          for (i = 0; i != 22; ++i)
          {
            value = 0;
            v14 = off_1E749F580[i];
            v15 = *(*(CMBaseObjectGetVTable(a2) + 8) + 48);
            if (v15)
            {
              v15(a2, v14, a1, &value);
            }

            if (value)
            {
              CFDictionarySetValue(*DerivedStorage, v14, value);
              if (value)
              {
                CFRelease(value);
              }
            }
          }

          v16 = 0;
          *a3 = cf;
          return v16;
        }

        FigCaptionRegionCreateMutableCopy_cold_1(&value);
      }

      else
      {
        FigCaptionRegionCreateMutableCopy_cold_2(&value);
      }
    }

    else
    {
      FigCaptionRegionCreateMutableCopy_cold_3(&value);
    }
  }

  else
  {
    FigCaptionRegionCreateMutableCopy_cold_4(&value);
  }

  v16 = value;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t fmcregion_Equal(char *a1, char *a2)
{
  if (a1)
  {
    FigThreadRunOnce(&FigCaptionRegionGetClassID_sRegisterFigCaptionRegionBaseTypeOnce, RegisterFigCaptionRegionBaseType);
    IsMemberOfClass = CMBaseObjectIsMemberOfClass(a1, sFigCaptionRegionClassID);
    if (!IsMemberOfClass)
    {
      fmcregion_Equal_cold_1(IsMemberOfClass, v5, v6, v7, v8, v9, v10, v11, v41);
      return 0;
    }
  }

  if (a2)
  {
    FigThreadRunOnce(&FigCaptionRegionGetClassID_sRegisterFigCaptionRegionBaseTypeOnce, RegisterFigCaptionRegionBaseType);
    v12 = CMBaseObjectIsMemberOfClass(a2, sFigCaptionRegionClassID);
    if (!v12)
    {
      fmcregion_Equal_cold_2(v12, v13, v14, v15, v16, v17, v18, v19, v41);
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
    v22 = CMBaseObjectGetDerivedStorage(a2);
    Value = CFDictionaryGetValue(*DerivedStorage, @"CMCaptionRegionIdentifier");
    v24 = CFDictionaryGetValue(*v22, @"CMCaptionRegionIdentifier");
    if (Value | v24)
    {

      return FigCFEqual(Value, v24);
    }

    else
    {
      v25 = CFDictionaryGetValue(*DerivedStorage, @"CMCaptionRegionPosition");
      v26 = CFDictionaryGetValue(*v22, @"CMCaptionRegionPosition");
      result = FigCFEqual(v25, v26);
      if (result)
      {
        v27 = CFDictionaryGetValue(*DerivedStorage, @"CMCaptionRegionAbstractPosition");
        v28 = CFDictionaryGetValue(*v22, @"CMCaptionRegionAbstractPosition");
        result = FigCFEqual(v27, v28);
        if (result)
        {
          v29 = CFDictionaryGetValue(*DerivedStorage, @"CMCaptionRegionHeight");
          v30 = CFDictionaryGetValue(*v22, @"CMCaptionRegionHeight");
          result = FigCFEqual(v29, v30);
          if (result)
          {
            v31 = CFDictionaryGetValue(*DerivedStorage, @"CMCaptionRegionAnchor");
            v32 = CFDictionaryGetValue(*v22, @"CMCaptionRegionAnchor");
            result = FigCFEqual(v31, v32);
            if (result)
            {
              v33 = CFDictionaryGetValue(*DerivedStorage, @"CMCaptionRegionLuminanceGain");
              v34 = CFDictionaryGetValue(*v22, @"CMCaptionRegionLuminanceGain");
              result = FigCFEqual(v33, v34);
              if (result)
              {
                v35 = CFDictionaryGetValue(*DerivedStorage, @"CMCaptionRegionStereoDisparity");
                v36 = CFDictionaryGetValue(*v22, @"CMCaptionRegionStereoDisparity");
                result = FigCFEqual(v35, v36);
                if (result)
                {
                  v37 = CFDictionaryGetValue(*DerivedStorage, @"CMCaptionRegionAnimation");
                  if (v37)
                  {
                    v38 = v37;
                  }

                  else
                  {
                    v38 = @"CMCaptionRegionAnimationType_None";
                  }

                  v39 = CFDictionaryGetValue(*v22, @"CMCaptionRegionAnimation");
                  if (v39)
                  {
                    v40 = v39;
                  }

                  else
                  {
                    v40 = @"CMCaptionRegionAnimationType_None";
                  }

                  return CFEqual(v38, v40) != 0;
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

void fmcregion_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *fmcregion_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  CFStringAppendFormat(Mutable, 0, @"\tCaptionRegion: %p %@", a1, *DerivedStorage);
  return Mutable;
}

uint64_t fmcregion_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  if (!a2)
  {
    fmcregion_CopyProperty_cold_4(&v16);
    return v16;
  }

  if (!a4)
  {
    fmcregion_CopyProperty_cold_3(&v16);
    return v16;
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  }

  else
  {
    DerivedStorage = 0;
  }

  v8 = FigCFEqual(a2, @"CMCaptionRegionPropertyKeysInUse");
  v9 = *DerivedStorage;
  if (v8)
  {
    Count = CFDictionaryGetCount(v9);
    v11 = Count;
    if (Count)
    {
      if ((Count - 0x2000000000000000) < 0xE000000000000001 || (v12 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL)) == 0)
      {
        fmcregion_CopyProperty_cold_1(&v16);
        return v16;
      }
    }

    else
    {
      v12 = 0;
    }

    CFDictionaryGetKeysAndValues(*DerivedStorage, v12, 0);
    v15 = CFArrayCreate(a3, v12, v11, MEMORY[0x1E695E9C0]);
    free(v12);
    if (!v15)
    {
      fmcregion_CopyProperty_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    Value = CFDictionaryGetValue(v9, a2);
    v15 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  result = 0;
  *a4 = v15;
  return result;
}

uint64_t fmcregion_SetProperty(uint64_t a1, const void *a2, void *a3)
{
  if (!a1)
  {
    if (a2)
    {
      goto LABEL_18;
    }

LABEL_39:
    fmcregion_SetProperty_cold_45(&v62);
    return v62;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!a2)
  {
    goto LABEL_39;
  }

  v6 = DerivedStorage;
  if (!DerivedStorage)
  {
LABEL_18:
    fmcregion_SetProperty_cold_44(&v62);
    return v62;
  }

  if (a3)
  {
    if (CFEqual(a2, @"CMCaptionRegionIdentifier"))
    {
      v7 = CFGetTypeID(a3);
      if (v7 != CFStringGetTypeID())
      {
        fmcregion_SetProperty_cold_1(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionExplicitRegion"))
    {
      v8 = CFGetTypeID(a3);
      if (v8 != CFBooleanGetTypeID())
      {
        fmcregion_SetProperty_cold_2(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionPosition"))
    {
      v9 = CFGetTypeID(a3);
      if (v9 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_3(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (InitialValue = FigCaptionDynamicStyleGetInitialValue(a3), v11 = CFGetTypeID(InitialValue), v11 != CFDictionaryGetTypeID()))
      {
        fmcregion_SetProperty_cold_4(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionAbstractPosition"))
    {
      v13 = CFGetTypeID(a3);
      if (v13 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_5(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v14 = FigCaptionDynamicStyleGetInitialValue(a3), v15 = CFGetTypeID(v14), v15 != FigCaptionPositionGetTypeID()))
      {
        fmcregion_SetProperty_cold_6(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionWidth") || CFEqual(a2, @"CMCaptionRegionHeight"))
    {
      v16 = CFGetTypeID(a3);
      if (v16 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_7(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v17 = FigCaptionDynamicStyleGetInitialValue(a3), v18 = CFGetTypeID(v17), v18 != CFDictionaryGetTypeID()))
      {
        fmcregion_SetProperty_cold_8(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionDisplayAspectRatio"))
    {
      v19 = CFGetTypeID(a3);
      if (v19 != CFDictionaryGetTypeID())
      {
        fmcregion_SetProperty_cold_9(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionActiveArea"))
    {
      v20 = CFGetTypeID(a3);
      if (v20 != CFDictionaryGetTypeID())
      {
        fmcregion_SetProperty_cold_10(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionAnimation"))
    {
      v21 = CFGetTypeID(a3);
      if (v21 != CFStringGetTypeID())
      {
        fmcregion_SetProperty_cold_11(&v62);
        return v62;
      }

      if (!CFEqual(a3, @"CMCaptionRegionAnimationType_Rollup") && !CFEqual(a3, @"CMCaptionRegionAnimationType_None"))
      {
        fmcregion_SetProperty_cold_12(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionContainerRegion"))
    {
      v22 = CFGetTypeID(a3);
      if (v22 != FigCaptionRegionGetTypeID())
      {
        fmcregion_SetProperty_cold_13(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionClipOverflow") || CFEqual(a2, @"CMCaptionRegionInvisible") || CFEqual(a2, @"CMCaptionRegionForcedDisplay") || CFEqual(a2, @"CMCaptionRegionHidden"))
    {
      v23 = CFGetTypeID(a3);
      if (v23 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_14(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v24 = FigCaptionDynamicStyleGetInitialValue(a3), v25 = CFGetTypeID(v24), v25 != CFBooleanGetTypeID()))
      {
        fmcregion_SetProperty_cold_15(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionShowbackground"))
    {
      v26 = CFGetTypeID(a3);
      if (v26 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_16(&v62);
        return v62;
      }

      v27 = FigCaptionDynamicStyleGetInitialValue(a3);
      if (!CFEqual(v27, @"CMCaptionRegionShowbackground_Always"))
      {
        v28 = FigCaptionDynamicStyleGetInitialValue(a3);
        if (!CFEqual(v28, @"CMCaptionRegionShowbackground_WhenActive"))
        {
          fmcregion_SetProperty_cold_17(&v62);
          return v62;
        }
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionOpacity"))
    {
      valuePtr = -1.0;
      v29 = CFGetTypeID(a3);
      if (v29 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_18(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v30 = FigCaptionDynamicStyleGetInitialValue(a3), v31 = CFGetTypeID(v30), v31 != CFNumberGetTypeID()))
      {
        fmcregion_SetProperty_cold_20(&v62);
        return v62;
      }

      v32 = FigCaptionDynamicStyleGetInitialValue(a3);
      CFNumberGetValue(v32, kCFNumberFloatType, &valuePtr);
      if (valuePtr < 0.0 || valuePtr > 1.0)
      {
        fmcregion_SetProperty_cold_19(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionWritingMode"))
    {
      v33 = CFGetTypeID(a3);
      if (v33 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_21(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v34 = FigCaptionDynamicStyleGetInitialValue(a3), v35 = CFGetTypeID(v34), v35 != CFStringGetTypeID()))
      {
        fmcregion_SetProperty_cold_23(&v62);
        return v62;
      }

      v36 = FigCaptionDynamicStyleGetInitialValue(a3);
      if (!CFEqual(v36, @"CMCaptionRegionWritingMode_TopToBottomAndLeftToRight") && !CFEqual(v36, @"CMCaptionRegionWritingMode_TopToButtomAndRightToLeft") && !CFEqual(v36, @"CMCaptionRegionWritingMode_RightToLeftAndTopToBottom") && !CFEqual(v36, @"CMCaptionRegionWritingMode_LeftToRightAndTopToBottom"))
      {
        fmcregion_SetProperty_cold_22(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionDisplayAlign"))
    {
      v37 = CFGetTypeID(a3);
      if (v37 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_24(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v38 = FigCaptionDynamicStyleGetInitialValue(a3), v39 = CFGetTypeID(v38), v39 != CFStringGetTypeID()))
      {
        fmcregion_SetProperty_cold_26(&v62);
        return v62;
      }

      v40 = FigCaptionDynamicStyleGetInitialValue(a3);
      if (!CFEqual(v40, @"CMCaptionRegionDisplayAlign_Before") && !CFEqual(v40, @"CMCaptionRegionDisplayAlign_After") && !CFEqual(v40, @"CMCaptionRegionDisplayAlign_Center"))
      {
        fmcregion_SetProperty_cold_25(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionPadding"))
    {
      v41 = CFGetTypeID(a3);
      if (v41 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_27(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v42 = FigCaptionDynamicStyleGetInitialValue(a3), v43 = CFGetTypeID(v42), v43 != CFDictionaryGetTypeID()))
      {
        fmcregion_SetProperty_cold_32(&v62);
        return v62;
      }

      v44 = FigCaptionDynamicStyleGetInitialValue(a3);
      if (!CFDictionaryContainsKey(v44, @"CMCaptionRegionPadding_Before"))
      {
        fmcregion_SetProperty_cold_31(&v62);
        return v62;
      }

      if (!CFDictionaryContainsKey(v44, @"CMCaptionRegionPadding_After"))
      {
        fmcregion_SetProperty_cold_30(&v62);
        return v62;
      }

      if (!CFDictionaryContainsKey(v44, @"CMCaptionRegionPadding_Start"))
      {
        fmcregion_SetProperty_cold_29(&v62);
        return v62;
      }

      if (!CFDictionaryContainsKey(v44, @"CMCaptionRegionPadding_End"))
      {
        fmcregion_SetProperty_cold_28(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionAnchor"))
    {
      v45 = CFGetTypeID(a3);
      if (v45 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_33(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v46 = FigCaptionDynamicStyleGetInitialValue(a3), v47 = CFGetTypeID(v46), v47 != CFDictionaryGetTypeID()))
      {
        fmcregion_SetProperty_cold_34(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionZIndex"))
    {
      v48 = CFGetTypeID(a3);
      if (v48 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_35(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v49 = FigCaptionDynamicStyleGetInitialValue(a3), v50 = CFGetTypeID(v49), v50 != CFNumberGetTypeID()))
      {
        fmcregion_SetProperty_cold_36(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionBackgroundColor"))
    {
      v51 = CFGetTypeID(a3);
      if (v51 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_37(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v52 = FigCaptionDynamicStyleGetInitialValue(a3), v53 = CFGetTypeID(v52), v53 != CGColorGetTypeID()))
      {
        fmcregion_SetProperty_cold_38(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionCellResolution"))
    {
      v54 = CFGetTypeID(a3);
      if (v54 != CFDictionaryGetTypeID())
      {
        fmcregion_SetProperty_cold_39(&v62);
        return v62;
      }
    }

    else if (CFEqual(a2, @"CMCaptionRegionLuminanceGain"))
    {
      v55 = CFGetTypeID(a3);
      if (v55 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_40(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v56 = FigCaptionDynamicStyleGetInitialValue(a3), v57 = CFGetTypeID(v56), v57 != CFNumberGetTypeID()))
      {
        fmcregion_SetProperty_cold_41(&v62);
        return v62;
      }
    }

    else
    {
      if (!CFEqual(a2, @"CMCaptionRegionStereoDisparity"))
      {
        return 4294954512;
      }

      v58 = CFGetTypeID(a3);
      if (v58 != FigCaptionDynamicStyleGetTypeID())
      {
        fmcregion_SetProperty_cold_42(&v62);
        return v62;
      }

      if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v59 = FigCaptionDynamicStyleGetInitialValue(a3), v60 = CFGetTypeID(v59), v60 != CFDictionaryGetTypeID()))
      {
        fmcregion_SetProperty_cold_43(&v62);
        return v62;
      }
    }

    CFDictionarySetValue(*v6, a2, a3);
  }

  else
  {
    CFDictionaryRemoveValue(*DerivedStorage, a2);
  }

  return 0;
}

uint64_t FigEndpointRemoteControlSessionGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_22 != -1)
  {
    FigEndpointRemoteControlSessionGetClassID_cold_1();
  }

  return qword_1ED4CC6A8;
}

size_t remoteControlSession_getClassID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&remoteControlSession_getClassID_sFigEndpointRemoteControlSessionClassDesc, ClassID, 1, a1, v11, v12, v13, v14, a9);
}

uint64_t FigEndpointRemoteControlSessionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_22 != -1)
  {
    FigEndpointRemoteControlSessionGetClassID_cold_1();
  }

  v3 = qword_1ED4CC6A8;

  return CMBaseClassGetCFTypeID(v3);
}

uint64_t RegisterFigGraph()
{
  result = _CFRuntimeRegisterClass();
  sFigGraphID = result;
  return result;
}

void nodeInfoCFDictionaryReleaseCallBack(CFAllocatorRef allocator, void *ptr)
{
  v4 = ptr[1];
  v5 = v4[2];
  if (v5)
  {
    v5(*v4, *ptr);
  }

  v6 = ptr[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = ptr[6];
  if (v7)
  {
    CFRelease(v7);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

void EdgeInfoCFArrayReleaseCallBack(CFAllocatorRef allocator, void *ptr)
{
  v4 = ptr[1];
  v5 = v4[2];
  if (v5)
  {
    v5(*v4, *ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t nodeInfoCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

void CFDictionaryApplierCleanupNodes(uint64_t a1, void *a2)
{
  if (a2)
  {
    a2[4] = 0;
    a2[5] = 0;
    a2[3] = -1;
    v3 = a2[6];
    if (v3)
    {
      CFRelease(v3);
      a2[6] = 0;
    }
  }
}

double FigGraphInit(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigGraphFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

void graphDataDescriptionApplier(uint64_t a1, uint64_t a2, __CFString *a3)
{
  if (*(a2 + 16))
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        v5 = *(v4 + 32);
        if (v5)
        {
          v7 = v5();
          if (v7)
          {
            v8 = v7;
            if (CFArrayGetCount(*(a2 + 16)) >= 1)
            {
              for (i = 0; CFArrayGetCount(*(a2 + 16)) > i; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 16), i);
                v11 = ValueAtIndex[1];
                v12 = ValueAtIndex[2];
                if (v11 && (v13 = *(v11 + 24)) != 0)
                {
                  v14 = v13(*ValueAtIndex);
                  if (!v12)
                  {
                    goto LABEL_19;
                  }
                }

                else
                {
                  v14 = 0;
                  if (!v12)
                  {
                    goto LABEL_19;
                  }
                }

                if (*v12)
                {
                  v15 = v12[1];
                  if (v15)
                  {
                    v16 = *(v15 + 32);
                    if (v16)
                    {
                      v17 = v16();
                      v18 = v17;
                      if (v14 && v17)
                      {
                        CFStringAppendFormat(a3, 0, @"\t%@ %@ %@\n", v8, v17, v14);
                        CFRelease(v14);
                        v14 = v18;
                      }

                      else
                      {
                        if (v14)
                        {
                          CFRelease(v14);
                        }

                        v14 = v18;
                        if (!v18)
                        {
                          continue;
                        }
                      }

LABEL_20:
                      CFRelease(v14);
                      continue;
                    }
                  }
                }

LABEL_19:
                if (v14)
                {
                  goto LABEL_20;
                }
              }
            }

            CFRelease(v8);
          }
        }
      }
    }
  }
}

uint64_t VEXUBridge_ConvertVideoExtendedUsageDescriptionExtensions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v25[0] = a2;
  v25[1] = a3;
  v26 = *a4;
  *theArray = 0u;
  *cf = 0u;
  v29 = 0u;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  theArray[1] = Mutable;
  if (!Mutable)
  {
    VEXUBridge_ConvertVideoExtendedUsageDescriptionExtensions_cold_3(v30);
    a6 = LODWORD(v30[0]);
    goto LABEL_13;
  }

  v13 = Mutable;
  v14 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  theArray[0] = v14;
  if (!v14)
  {
    VEXUBridge_ConvertVideoExtendedUsageDescriptionExtensions_cold_2(v30);
LABEL_21:
    a6 = LODWORD(v30[0]);
    goto LABEL_12;
  }

  v15 = v14;
  cf[0] = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!cf[0])
  {
    VEXUBridge_ConvertVideoExtendedUsageDescriptionExtensions_cold_1(v30);
    goto LABEL_21;
  }

  cf[1] = a7;
  FigCFArrayAppendInt32(v15, 1986361461, v16, v17, v18, v19, v20, v21);
  if (!a6)
  {
LABEL_12:
    CFRelease(v13);
    goto LABEL_13;
  }

  memset(v30, 0, sizeof(v30));
  v22 = FigAtomStreamInitWithMemoryBlock(a5, a6, 0, 0, v30);
  if (v22)
  {
    a6 = v22;
    goto LABEL_12;
  }

  a6 = parseVideoExtendedUsageExtensionChildAtoms(v30, parseVideoExtendedUsageExtensionAtom_atomDispatch, 7, v25);
  v13 = theArray[1];
  if (!a6)
  {
    if (theArray[1])
    {
      Count = CFArrayGetCount(theArray[1]);
      v13 = theArray[1];
      if (Count >= 1)
      {
        svReader_appendKeyAndValue(v25, @"RequiredButUnrecognizedFormatAtoms", theArray[1]);
        v13 = theArray[1];
      }
    }

    *a4 = v26;
  }

  if (v13)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return a6;
}

uint64_t parseRequiredBoxTypesAtom(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  size = 0;
  v3 = *(a2 + 24);
  if (!v3 || (Count = CFArrayGetCount(v3), Count <= 0))
  {
    parseRequiredBoxTypesAtom_cold_5(&v17);
LABEL_12:
    v9 = 0;
LABEL_13:
    v13 = v17;
LABEL_14:
    free(v9);
    return v13;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), Count - 2);
  if (!ValueAtIndex)
  {
    parseRequiredBoxTypesAtom_cold_4(&v17);
    goto LABEL_12;
  }

  v7 = ValueAtIndex;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v16, &size);
  if (CurrentAtomTypeAndDataLength)
  {
    v13 = CurrentAtomTypeAndDataLength;
    v9 = 0;
    goto LABEL_14;
  }

  if ((size & 3) != 0)
  {
    parseRequiredBoxTypesAtom_cold_1(&v17);
    goto LABEL_12;
  }

  v9 = malloc_type_malloc(size, 0xB7283DE9uLL);
  if (!v9)
  {
    parseRequiredBoxTypesAtom_cold_3(&v17);
    goto LABEL_13;
  }

  CurrentAtomData = FigAtomStreamReadCurrentAtomData(a1, 0, size, v9);
  if (CurrentAtomData)
  {
    v13 = CurrentAtomData;
    goto LABEL_14;
  }

  v11 = CFDataCreate(*MEMORY[0x1E695E480], v9 + 4, size - 4);
  if (!v11)
  {
    parseRequiredBoxTypesAtom_cold_2(&v17);
    goto LABEL_13;
  }

  v12 = v11;
  CFDictionarySetValue(*(a2 + 40), v7, v11);
  free(v9);
  CFRelease(v12);
  return 0;
}

uint64_t parseVideoExtendedUsageExtensionChildAtoms(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = Mutable;
    allocator = v8;
    v91 = 0;
    v11 = (a2 + 8);
    do
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v91, 0);
      if (CurrentAtomTypeAndDataLength)
      {
LABEL_47:
        v31 = CurrentAtomTypeAndDataLength;
        goto LABEL_44;
      }

      if (a3 >= 1)
      {
        v19 = a3;
        v20 = v11;
        v21 = v11;
        while (v91 != *(v21 - 2))
        {
          v21 += 2;
          v20 += 2;
          if (!--v19)
          {
            goto LABEL_14;
          }
        }

        FigCFArrayAppendInt32(*(a4 + 24), v91, v13, v14, v15, v16, v17, v18);
        CurrentAtomTypeAndDataLength = (*v21)(a1, a4);
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_47;
        }

        FigCFArrayAppendInt32(v10, v91, v22, v23, v24, v25, v26, v27);
        v28 = *(a4 + 24);
        if (v28)
        {
          v29 = CFArrayGetCount(*(a4 + 24)) - 1;
        }

        else
        {
          v29 = -1;
        }

        CFArrayRemoveValueAtIndex(v28, v29);
      }

LABEL_14:
      Atom = FigAtomStreamAdvanceToNextAtom(a1);
    }

    while (!Atom);
    v31 = Atom;
    if (Atom == -12890)
    {
      v31 = 0;
    }

    v32 = allocator;
    v33 = *(a4 + 24);
    if (!v33 || (Count = CFArrayGetCount(v33), Count <= 0))
    {
      parseVideoExtendedUsageExtensionChildAtoms_cold_4();
      goto LABEL_44;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 24), Count - 1);
    if (ValueAtIndex)
    {
      v36 = ValueAtIndex;
      Value = CFDictionaryGetValue(*(a4 + 40), ValueAtIndex);
      if (!Value)
      {
        goto LABEL_44;
      }

      v38 = Value;
      v84 = v36;
      Length = CFDataGetLength(Value);
      BytePtr = CFDataGetBytePtr(v38);
      v41 = Length + 3;
      if (Length >= 0)
      {
        v41 = Length;
      }

      if (Length < 4)
      {
LABEL_43:
        CFDictionaryRemoveValue(*(a4 + 40), v84);
        goto LABEL_44;
      }

      v42 = BytePtr;
      v43 = 0;
      v90 = v41 >> 2;
      v85 = BytePtr;
      v86 = v10;
      while (1)
      {
        v44 = bswap32(*&v42[4 * v43]);
        if (!FigCFArrayContainsInt32(v10, v44))
        {
          v92 = 0;
          v45 = CFArrayCreateMutable(v32, 0, MEMORY[0x1E695E9C0]);
          if (!v45)
          {
            parseVideoExtendedUsageExtensionChildAtoms_cold_2();
            goto LABEL_44;
          }

          v46 = v45;
          v47 = CFStringCreateMutable(v32, 0);
          if (!v47)
          {
            parseVideoExtendedUsageExtensionChildAtoms_cold_1(&v92, v46);
            v10 = v86;
            goto LABEL_44;
          }

          v54 = v47;
          for (i = 0; ; ++i)
          {
            v56 = *(a4 + 24);
            if (v56)
            {
              v56 = CFArrayGetCount(v56);
            }

            if (i >= v56)
            {
              break;
            }

            *__str = 0;
            FigCFArrayGetInt32AtIndex(*(a4 + 24), i, __str, v49, v50, v51, v52, v53);
            FigCFArrayAppendInt32(v46, *__str, v57, v58, v59, v60, v61, v62);
            if (i)
            {
              v63 = "/";
            }

            else
            {
              v63 = "";
            }

            CFStringAppendFormat(v54, 0, @"%s%c%c%c%c", v63, __str[3], __str[2], __str[1], __str[0]);
          }

          FigCFArrayAppendInt32(v46, v44, v48, v49, v50, v51, v52, v53);
          CFArrayAppendValue(*(a4 + 32), v46);
          CFStringAppendFormat(v54, 0, @"/%c%c%c%c", HIBYTE(v44), BYTE2(v44), BYTE1(v44), v44);
          CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(v54, 0x8000100u, &v92);
          snprintf(__str, 0x100uLL, "The video extensibility usability box indicates that the content requires that readers successfully parse the '%s' box, which this reader can not do.", CStringPtrAndBufferToFree);
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0, "<<<< VEXUBridge >>>>", 0x1BE, v87, v66, v67, v83);
          v32 = allocator;
          v88 = *(a4 + 48);
          if (v88)
          {
            v68 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v68)
            {
              v69 = v68;
              v70 = CFStringCreateMutable(allocator, 0);
              if (v70)
              {
                v71 = v70;
                CFStringAppendFormat(v70, 0, @" %s.", __str);
                FigCFDictionarySetInt64(v69, @"MessageType", 4, v72, v73, v74, v75, v76);
                CFDictionarySetValue(v69, @"DiagnosticInformation", v71);
                FigCFDictionarySetInt32(v69, @"AnalysisType", 1836019574, v77, v78, v79, v80, v81);
                FigAssetAnalysisReporterAddMessage(v88, v69);
                CFRelease(v71);
              }

              CFRelease(v69);
              v32 = allocator;
            }
          }

          free(v92);
          CFRelease(v46);
          CFRelease(v54);
          v42 = v85;
          v10 = v86;
        }

        if (++v43 == v90)
        {
          goto LABEL_43;
        }
      }
    }

    parseVideoExtendedUsageExtensionChildAtoms_cold_3();
LABEL_44:
    CFRelease(v10);
  }

  else
  {
    parseVideoExtendedUsageExtensionChildAtoms_cold_5(__str);
    return *__str;
  }

  return v31;
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1)
{
  *(v1 - 20) = 0;
  *(v1 - 32) = 0;

  return FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, (v1 - 20), (v1 - 32));
}

double OUTLINED_FUNCTION_3_10()
{
  *(v0 - 208) = 0;
  result = 0.0;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0u;
  *(v0 - 256) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  a13 = 0;
  a11 = 0;

  return FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &a13, &a11);
}

size_t OUTLINED_FUNCTION_9_6@<X0>(unsigned int a1@<W8>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, CMBlockBufferRef *a7)
{
  LODWORD(STACK[0x22C]) = bswap32(a1);

  return FigAtomWriterAppendData(v7 - 256, &STACK[0x22C], 4, a2, a3, a4, a5, a6, a7);
}

size_t OUTLINED_FUNCTION_10_4@<X0>(int a1@<W8>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, CMBlockBufferRef *a7)
{
  *(v7 - 192) = a1;

  return FigAtomWriterAppendData(v7 - 256, v7 - 192, 4, a2, a3, a4, a5, a6, a7);
}

size_t OUTLINED_FUNCTION_11_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  *(v9 - 192) = 0;

  return FigAtomWriterAppendData(v9 - 256, v9 - 192, 4, a4, a5, a6, a7, a8, a9);
}

size_t OUTLINED_FUNCTION_12_4@<X0>(unsigned int a1@<W8>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, CMBlockBufferRef *a7)
{
  LODWORD(STACK[0x228]) = bswap32(a1);

  return FigAtomWriterAppendData(v7 - 256, &STACK[0x228], 4, a2, a3, a4, a5, a6, a7);
}

size_t OUTLINED_FUNCTION_13_3@<X0>(unsigned int a1@<W8>, uint64_t x3_0@<X3>, uint64_t x4_0@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t x7_0@<X7>, CMBlockBufferRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  a62 = bswap32(a1);

  return FigAtomWriterAppendData(v67 - 256, &a62, 4, x3_0, x4_0, x5_0, x6_0, x7_0, a2);
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigAtomStreamInitWithParent(v9, 0, &a9);
}

size_t OUTLINED_FUNCTION_17_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  LODWORD(STACK[0x224]) = bswap32(STACK[0x224]);

  return FigAtomWriterAppendData(v9 - 256, &STACK[0x224], 4, a4, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return parseVideoExtendedUsageExtensionChildAtoms(&a9, a2, 2, v9);
}

size_t OUTLINED_FUNCTION_20_3@<X0>(unsigned int a1@<W8>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, CMBlockBufferRef *a7)
{
  LODWORD(STACK[0x220]) = bswap32(a1);

  return FigAtomWriterAppendData(v7 - 256, &STACK[0x220], 4, a2, a3, a4, a5, a6, a7);
}

CFPropertyListRef OUTLINED_FUNCTION_22_2()
{

  return CMFormatDescriptionGetExtension(v0, v1);
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a13, int a14)
{

  return FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &a14, &a11);
}

const void *OUTLINED_FUNCTION_24_2()
{

  return FigCFArrayGetValueAtIndex(v0, v1);
}

CFPropertyListRef OUTLINED_FUNCTION_25_2()
{

  return CMFormatDescriptionGetExtension(v1, v0);
}

size_t OUTLINED_FUNCTION_28_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return FigAtomWriterAppendData(a1, &a65, 4, a4, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);

  return FigAtomWriterInitWithParent(va, v44 - 256);
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);

  return FigAtomWriterInitWithParent(va, v60 - 256);
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);

  return FigAtomWriterInitWithParent(va, &a45);
}

size_t OUTLINED_FUNCTION_32_0@<X0>(__int16 a1@<W8>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, CMBlockBufferRef *a7)
{
  LOWORD(STACK[0x224]) = a1;

  return FigAtomWriterAppendData(v7 - 256, &STACK[0x224], 2, a2, a3, a4, a5, a6, a7);
}

void *OUTLINED_FUNCTION_33_0(uint64_t a1, const void *a2)
{
  v5 = *v3;

  return svReader_appendKeyAndValue(v2, a2, v5);
}

uint64_t FigEndpointMessengerGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_23 != -1)
  {
    FigEndpointMessengerGetClassID_cold_1();
  }

  return qword_1ED4CC6B8;
}

size_t messenger_getClassID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&messenger_getClassID_sClassDesc, ClassID, 1, a1, v11, v12, v13, v14, a9);
}

uint64_t FigEndpointMessengerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_23 != -1)
  {
    FigEndpointMessengerGetClassID_cold_1();
  }

  v3 = qword_1ED4CC6B8;

  return CMBaseClassGetCFTypeID(v3);
}

uint64_t RegisterFigCaptionTextShadowType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionTextShadowID = result;
  return result;
}

uint64_t FigCaptionTextShadowCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CGColor *a8, void *a9)
{
  if (a9)
  {
    FigThreadRunOnce(&sRegisterFigCaptionTextShadowTypeOnce, RegisterFigCaptionTextShadowType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v24 = Instance;
      v25 = CGColorRetain(a8);
      result = 0;
      v24[7] = a7;
      v24[8] = v25;
      v24[2] = a2;
      v24[3] = a3;
      v24[4] = a4;
      v24[5] = a5;
      v24[6] = a6;
      *a9 = v24;
    }

    else
    {
      FigCaptionTextShadowCreate_cold_1(0, v17, v18, v19, v20, v21, v22, v23, v27);
      return 0;
    }
  }

  else
  {
    FigCaptionTextShadowCreate_cold_2(&v28, a2, a3, a4, a5, a6, a7, a8);
    return v28;
  }

  return result;
}

uint64_t RegisterFigCaptionTextShadowListType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionTextShadowListID = result;
  return result;
}

uint64_t FigCaptionTextShadowListCreate(const __CFAllocator *a1, const __CFArray *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (a3)
  {
    FigThreadRunOnce(&sRegisterFigCaptionTextShadowListTypeOnce, RegisterFigCaptionTextShadowListType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v19 = Instance;
      if (a2)
      {
        Copy = CFArrayCreateCopy(a1, a2);
      }

      else
      {
        Copy = 0;
      }

      result = 0;
      *(v19 + 16) = Copy;
      *a3 = v19;
    }

    else
    {
      FigCaptionTextShadowListCreate_cold_1(0, v12, v13, v14, v15, v16, v17, v18, v22);
      return 0;
    }
  }

  else
  {
    FigCaptionTextShadowListCreate_cold_2(&v23, a2, 0, a4, a5, a6, a7, a8);
    return v23;
  }

  return result;
}

double fcts_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fctslist_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_0_35(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, RegisterFigCaptionTextShadowListType);
}

uint64_t OUTLINED_FUNCTION_1_23(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, RegisterFigCaptionTextShadowType);
}

uint64_t flipPointCloudDescriptionData(int8x8_t *a1, unint64_t a2)
{
  if (a2 <= 0xF)
  {
    v9 = v2;
    v10 = v3;
    flipPointCloudDescriptionData_cold_1(&v8);
    return v8;
  }

  else
  {
    result = 0;
    v6 = a1[1].u16[2];
    a1[1].i32[0] = bswap32(a1[1].u32[0]);
    v7 = bswap32(a1[1].u16[3]) >> 16;
    *a1 = vrev32_s8(*a1);
    a1[1].i16[2] = bswap32(v6) >> 16;
    a1[1].i16[3] = v7;
  }

  return result;
}

uint64_t CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData(CFAllocatorRef alloc, unsigned int *a2, unint64_t a3, CMMediaType a4, CMFormatDescriptionRef *a5)
{
  if (!a2)
  {
    CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_11(&v36);
    return v36;
  }

  if (a3 <= 0xF)
  {
    CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_10(&v36);
    return v36;
  }

  if (!a5)
  {
    CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_9(&v36);
    return v36;
  }

  v5 = bswap32(*a2);
  if (v5 < 0x10 || v5 > a3)
  {
    CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_8(&v36);
    return v36;
  }

  v32 = a2[1];
  v8 = v5 - 16;
  *bytes = 0;
  if (v8 >= 8)
  {
    Mutable = 0;
    v10 = 0;
    v11 = a2 + 4;
    while (1)
    {
      v12 = bswap32(*v11);
      v13 = v12;
      if (v12 < 8 || v8 < v12)
      {
        CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_7(&v36);
        goto LABEL_42;
      }

      v15 = v11[1];
      v16 = bswap32(v15);
      if (v16 != 1718773093 && v16 != 1936419184)
      {
        if (v16 == 1852863603)
        {
          if (*v11 != 201326592)
          {
            CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_1(&v36);
            goto LABEL_42;
          }

          v10 = bswap32(v11[2]);
        }

        else
        {
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_6(&v36);
              v30 = 0;
              v29 = v36;
              goto LABEL_35;
            }
          }

          *bytes = v15;
          v18 = CFStringCreateWithBytes(alloc, bytes, 4, 0, 0);
          if (!v18)
          {
            CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_5(&v36);
LABEL_47:
            v28 = 0;
            v29 = v36;
            goto LABEL_34;
          }

          v19 = v18;
          v20 = CFDataCreate(alloc, v11 + 8, v13 - 8);
          if (!v20)
          {
            CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_4(v19, &v36);
            goto LABEL_47;
          }

          v21 = v20;
          CFDictionarySetValue(Mutable, v19, v20);
          CFRelease(v21);
          CFRelease(v19);
        }
      }

      v11 = (v11 + v13);
      v8 -= v13;
      if (v8 <= 7)
      {
        goto LABEL_30;
      }
    }
  }

  v10 = 0;
  Mutable = 0;
LABEL_30:
  if (v8)
  {
    CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_2(&v36);
    goto LABEL_42;
  }

  v22 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v22)
  {
    CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData_cold_3(&v36);
LABEL_42:
    v29 = v36;
    v28 = 0;
    v30 = 0;
    if (Mutable)
    {
      goto LABEL_34;
    }

LABEL_35:
    v28 = v30;
    if (v29)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v28 = v22;
  FigCFDictionarySetInt32(v22, @"NumberOfPointsPerSample", v10, v23, v24, v25, v26, v27);
  if (Mutable)
  {
    CFDictionarySetValue(v28, @"SampleDescriptionExtensionAtoms", Mutable);
    v29 = 0;
LABEL_34:
    CFRelease(Mutable);
    v30 = v28;
    goto LABEL_35;
  }

  v30 = v28;
LABEL_38:
  v29 = CMFormatDescriptionCreate(alloc, a4, bswap32(v32), v28, a5);
LABEL_39:
  if (v30)
  {
    CFRelease(v30);
  }

  return v29;
}

size_t CMPointCloudFormatDescriptionCopyAsBigEndianPointCloudDescriptionBlockBuffer(const __CFAllocator *a1, CFTypeRef cf, uint64_t a3, CMBlockBufferRef *a4)
{
  sourceBytes = 0;
  v49 = 0;
  destinationBuffer = 0;
  if (!cf)
  {
    CMPointCloudFormatDescriptionCopyAsBigEndianPointCloudDescriptionBlockBuffer_cold_7(context);
LABEL_47:
    v33 = 0;
LABEL_48:
    Value = 0;
LABEL_49:
    v42 = LODWORD(context[0]);
    goto LABEL_50;
  }

  if (!a4)
  {
    CMPointCloudFormatDescriptionCopyAsBigEndianPointCloudDescriptionBlockBuffer_cold_6(context);
    goto LABEL_47;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CMFormatDescriptionGetTypeID())
  {
    CMPointCloudFormatDescriptionCopyAsBigEndianPointCloudDescriptionBlockBuffer_cold_1(context);
    goto LABEL_47;
  }

  if (CMFormatDescriptionGetMediaType(cf) != 1885564004)
  {
    CMPointCloudFormatDescriptionCopyAsBigEndianPointCloudDescriptionBlockBuffer_cold_2(context);
    goto LABEL_47;
  }

  Extensions = CMFormatDescriptionGetExtensions(cf);
  v14 = Extensions;
  if (!Extensions)
  {
    v33 = 0;
    Value = 0;
    v35 = 0;
    v39 = 0;
    goto LABEL_21;
  }

  v54 = 0;
  v53 = 0u;
  blockBufferOut = 0;
  if (FigCFDictionaryGetInt32IfPresent(Extensions, @"NumberOfPointsPerSample", &v51, v9, v10, v11, v12, v13, v44, v46, destinationBuffer, sourceBytes, v49, 0, 0, 0, 0, 0))
  {
    appended = CMBlockBufferCreateEmpty(a1, 0, 0, &blockBufferOut);
    if (!appended)
    {
      appended = FigAtomWriterInitWithBlockBuffer(blockBufferOut, context);
      if (!appended)
      {
        appended = FigAtomWriterBeginAtom(context, 1852863603, 0, v16, v17, v18, v19, v20);
        if (!appended)
        {
          v50 = bswap32(v51);
          appended = FigAtomWriterAppendData(context, &v50, 4, v21, v22, v23, v24, v25, v45);
          if (!appended)
          {
            appended = FigAtomWriterEndAtom(context, v26, v27, v28, v29, v30, v31, v32);
            if (!appended)
            {
              v33 = blockBufferOut;
              goto LABEL_13;
            }
          }
        }
      }
    }

    v42 = appended;
  }

  else
  {
    CMPointCloudFormatDescriptionCopyAsBigEndianPointCloudDescriptionBlockBuffer_cold_3(&v56);
    v42 = v56;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  v33 = 0;
  Value = 0;
  if (v42)
  {
    goto LABEL_50;
  }

LABEL_13:
  DataLength = CMBlockBufferGetDataLength(v33);
  if (DataLength > 0x7FFFFFEF)
  {
    CMPointCloudFormatDescriptionCopyAsBigEndianPointCloudDescriptionBlockBuffer_cold_5(context);
    goto LABEL_48;
  }

  v35 = DataLength;
  blockBufferOut = 0;
  Value = CFDictionaryGetValue(v14, @"SampleDescriptionExtensionAtoms");
  if (Value)
  {
    v54 = 0;
    v53 = 0u;
    memset(context, 0, sizeof(context));
    v37 = CMBlockBufferCreateEmpty(a1, 0, 0, &blockBufferOut);
    if (v37 || (v37 = FigAtomWriterInitWithBlockBuffer(blockBufferOut, context), v37))
    {
      v42 = v37;
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }

      Value = 0;
      goto LABEL_50;
    }

    CFDictionaryApplyFunction(Value, PointCloudBridgeAppendExtensionsFunc, context);
    Value = blockBufferOut;
  }

  v38 = CMBlockBufferGetDataLength(Value);
  v39 = v38 + v35;
  if (v38 + v35 > 0x7FFFFFEF)
  {
    CMPointCloudFormatDescriptionCopyAsBigEndianPointCloudDescriptionBlockBuffer_cold_4(context);
    goto LABEL_49;
  }

  v14 = v38;
LABEL_21:
  v40 = (v39 + 16);
  sourceBytes = _byteswap_uint64(__PAIR64__(v40, CMFormatDescriptionGetMediaSubType(cf)));
  v49 = 0xFFFF000000000000;
  DataPointer = CMBlockBufferCreateWithMemoryBlock(a1, 0, v40, a1, 0, 0, v40, 1u, &destinationBuffer);
  if (!DataPointer)
  {
    DataPointer = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 0x10uLL);
    if (!DataPointer)
    {
      if (!v33 || !v35 || (*&context[0] = 0, DataPointer = CMBlockBufferGetDataPointer(destinationBuffer, 0x10uLL, 0, 0, context), !DataPointer) && (DataPointer = CMBlockBufferCopyDataBytes(v33, 0, v35, *&context[0]), !DataPointer))
      {
        if (!Value || !v14 || (*&context[0] = 0, DataPointer = CMBlockBufferGetDataPointer(destinationBuffer, v35 + 16, 0, 0, context), !DataPointer) && (DataPointer = CMBlockBufferCopyDataBytes(Value, 0, v14, *&context[0]), !DataPointer))
        {
          v42 = 0;
          *a4 = destinationBuffer;
          destinationBuffer = 0;
          goto LABEL_32;
        }
      }
    }
  }

  v42 = DataPointer;
LABEL_50:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

LABEL_32:
  if (v33)
  {
    CFRelease(v33);
  }

  if (Value)
  {
    CFRelease(Value);
  }

  return v42;
}

uint64_t FigGetTimeOfDayClock(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CC6C8 != -1)
  {
    FigGetTimeOfDayClock_cold_1();
  }

  return _MergedGlobals_24;
}

size_t figTimeOfDayClock_creationOnceFunction(uint64_t *a1)
{
  HostTimeClock = CMClockGetHostTimeClock();
  CMTimeMake(&v6, 1, 10);
  return FigDerivedClockCreateWithGetTimeCallback(0, gFigTimeOfDayClockCallbacks, HostTimeClock, &v6.value, 0, a1, v3, v4);
}

uint64_t figTimeOfDayClock_GetAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v10.tv_sec = 0;
  *&v10.tv_usec = 0;
  gettimeofday(&v10, 0);
  UpTime = FigGetUpTime();
  CMTimeMake(&v9, ((v10.tv_usec / 1000000.0 + v10.tv_sec) * 100000.0), 100000);
  v6 = FigHostTimeToNanoseconds(UpTime);
  CMTimeMake(&v8, v6, 1000000000);
  *a2 = v9;
  *a3 = v8;
  return 0;
}

uint64_t FigFileDeleteFile(const __CFURL *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = FigFileDoesFileExist(a1);
  if (result)
  {
    CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1023);
    return unlink(buffer);
  }

  return result;
}

uint64_t FigFileDeleteDirectory(const __CFURL *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = FigFileDoesFileExist(a1);
  if (result)
  {
    CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1023);
    return removefile(buffer, 0, 1u);
  }

  return result;
}

uint64_t FigFileValidateFileNameIsWithinParentDirectory(CFURLRef url, CFStringRef pathComponent, uint64_t isDirectory)
{
  if (!url)
  {
    FigFileValidateFileNameIsWithinParentDirectory_cold_7(&v15);
    return v15;
  }

  if (!pathComponent)
  {
    FigFileValidateFileNameIsWithinParentDirectory_cold_6(&v15);
    return v15;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], url, pathComponent, isDirectory);
  if (!v5)
  {
    FigFileValidateFileNameIsWithinParentDirectory_cold_5(&v15);
    return v15;
  }

  v6 = v5;
  v7 = CFURLCopyAbsoluteURL(v5);
  if (!v7)
  {
    FigFileValidateFileNameIsWithinParentDirectory_cold_4(v6, &v15);
    return v15;
  }

  v8 = v7;
  v9 = CFURLCopyAbsoluteURL(url);
  if (!v9)
  {
    FigFileValidateFileNameIsWithinParentDirectory_cold_3(v8, v6, &v15);
    return v15;
  }

  v10 = v9;
  v11 = CFURLCreateCopyDeletingLastPathComponent(v4, v8);
  v12 = v11;
  if (v11)
  {
    if (CFEqual(v11, v10) == 1)
    {
      v13 = 0;
      goto LABEL_9;
    }

    FigFileValidateFileNameIsWithinParentDirectory_cold_1(&v15);
  }

  else
  {
    FigFileValidateFileNameIsWithinParentDirectory_cold_2(&v15);
  }

  v13 = v15;
LABEL_9:
  CFRelease(v8);
  CFRelease(v10);
  CFRelease(v6);
  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t FigFileConvertURLToAbsoluteAndMarkAsDirectory(const void *a1, CFTypeRef *a2)
{
  if (!a1)
  {
    FigFileConvertURLToAbsoluteAndMarkAsDirectory_cold_5(&v11);
    return v11;
  }

  if (!a2)
  {
    FigFileConvertURLToAbsoluteAndMarkAsDirectory_cold_4(&v11);
    return v11;
  }

  if (CFURLHasDirectoryPath(a1))
  {
    v4 = 0;
    *a2 = CFRetain(a1);
    return v4;
  }

  v5 = CFURLCopyAbsoluteURL(a1);
  if (!v5)
  {
    FigFileConvertURLToAbsoluteAndMarkAsDirectory_cold_3(&v11);
    return v11;
  }

  v6 = v5;
  v7 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
  if (!v7)
  {
    FigFileConvertURLToAbsoluteAndMarkAsDirectory_cold_2(v6, &v11);
    return v11;
  }

  v8 = v7;
  v9 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v7, kCFURLPOSIXPathStyle, 1u);
  if (v9)
  {
    v4 = 0;
    *a2 = v9;
  }

  else
  {
    FigFileConvertURLToAbsoluteAndMarkAsDirectory_cold_1(&v11);
    v4 = v11;
  }

  CFRelease(v6);
  CFRelease(v8);
  return v4;
}

uint64_t FigThreadLockAbortList()
{
  FigThreadRunOnce(&gAbortActionInitOnce, abortActionInitOnce);
  v0 = qword_1ED4CC6D8;

  return FigReentrantMutexLock(v0);
}

void FigThreadRemoveFromAbortListAndCleanup(uint64_t (*a1)())
{
  v1 = qword_1ED4CC6E0;
  if (qword_1ED4CC6E0)
  {
    while (1)
    {
      while (1)
      {
        v3 = v1;
        v1 = *(v1 + 32);
        if (*(v3 + 16) == kSpecialAction_ThreadWasAbortedForTeardown && (*v3 == a1 || !*(v3 + 8) && !FigThreadIsValid(*v3)))
        {
          break;
        }

        if (!v1)
        {
          return;
        }
      }

      v4 = qword_1ED4CC6E0;
      if (qword_1ED4CC6E0 != v3)
      {
        break;
      }

      qword_1ED4CC6E0 = *(qword_1ED4CC6E0 + 32);
      if (!qword_1ED4CC6E0)
      {
        v7 = &qword_1ED4CC6E0;
LABEL_14:
        qword_1ED4CC6E8 = v7;
      }

LABEL_15:
      free(v3);
      if (!v1)
      {
        return;
      }
    }

    do
    {
      v5 = v4;
      v4 = *(v4 + 32);
    }

    while (v4 != v3);
    v6 = *(v4 + 32);
    *(v5 + 32) = v6;
    v7 = (v5 + 32);
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }
}

void FigThreadMakeDispatchQueueAbortable(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  FigThreadRunOnce(&gAbortActionInitOnce, abortActionInitOnce);
  if (a1 == MEMORY[0x1E69E96A0])
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = v9;
    v16 = 403;
  }

  else
  {
    if (dispatch_get_global_queue(0, 0) != a1)
    {
      if (a1)
      {
        v11 = FigAtomicIncrement64(&gNextAbortableQueueID);

        dispatch_queue_set_specific(a1, &kFigThreadDispatchQueueAbortabilityKey, v11, removeDispatchQueueFromAbortListAndCleanup);
      }

      return;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = v9;
    v16 = 406;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE07uLL, "<< FigCommonThread >>", v16, v15, v13, v14, a9);
}

uint64_t removeDispatchQueueFromAbortListAndCleanup(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  FigThreadRunOnce(&gAbortActionInitOnce, abortActionInitOnce);
  result = FigReentrantMutexLock(qword_1ED4CC6D8);
  if (result)
  {
    return result;
  }

  v2 = qword_1ED4CC6E0;
  if (qword_1ED4CC6E0)
  {
    while (1)
    {
      v3 = v2;
      v2 = *(v2 + 32);
      if (*(v3 + 16) != kSpecialAction_ThreadWasAbortedForTeardown || *(v3 + 8) != v1)
      {
        goto LABEL_15;
      }

      v4 = qword_1ED4CC6E0;
      if (qword_1ED4CC6E0 != v3)
      {
        break;
      }

      qword_1ED4CC6E0 = *(qword_1ED4CC6E0 + 32);
      if (!qword_1ED4CC6E0)
      {
        v7 = &qword_1ED4CC6E0;
LABEL_13:
        qword_1ED4CC6E8 = v7;
      }

LABEL_14:
      free(v3);
LABEL_15:
      if (!v2)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v5 = v4;
      v4 = *(v4 + 32);
    }

    while (v4 != v3);
    v6 = *(v4 + 32);
    *(v5 + 32) = v6;
    v7 = (v5 + 32);
    if (v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_16:
  v8 = qword_1ED4CC6D8;

  return FigReentrantMutexUnlock(v8);
}

void *FigThreadGetAbortableDispatchQueueID(NSObject *a1)
{
  if (a1)
  {
    return dispatch_queue_get_specific(a1, &kFigThreadDispatchQueueAbortabilityKey);
  }

  else
  {
    return dispatch_get_specific(&kFigThreadDispatchQueueAbortabilityKey);
  }
}

dispatch_queue_t networkQueueInitOnce()
{
  result = FigDispatchQueueCreateTargetingWorkloopWithPriority("com.apple.coremedia.networkbuffering", 0, 7u);
  sNetworkQueue = result;
  return result;
}

dispatch_queue_t networkLowPriorityQueueInitOnce()
{
  result = FigDispatchQueueCreateWithPriority("com.apple.coremedia.networkbufferinglowpriority", 0, 25);
  sNetworkLowPriorityQueue = result;
  return result;
}

uint64_t *networkThreadCommonInit(const void *a1, uint64_t a2, uint64_t a3, pthread_t *a4)
{
  result = FigSemaphoreCreate(0, 1);
  if (result)
  {
    v9 = result;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"com.apple.fig.ThreadCreateKey_Identifier", a1);
    CFDictionarySetValue(Mutable, @"com.apple.fig.ThreadCreateKey_AdoptVoucher", *MEMORY[0x1E695E4C0]);
    v13 = FigThreadCreate(a2, v9, a3, 0, Mutable, a4, v11, v12);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (!v13)
    {
      FigSemaphoreWaitRelative(v9, 0xFFFFFFFFFFFFFFFFLL);
    }

    return FigSemaphoreDestroy(v9);
  }

  return result;
}

void FigThreadGlobalNetworkBufferingCommonSetupRunloop(os_unfair_lock_s **a1, CFRunLoopRef *a2, __CFRunLoopTimer **a3)
{
  *a2 = CFRunLoopGetCurrent();
  FigSemaphoreSignal(a1);
  v6 = CFRunLoopTimerCreate(*MEMORY[0x1E695E480], 3.1536e13, 3.1536e13, 0, 0, dummyRunLoopTimer, 0);
  if (v6)
  {
    v14 = v6;
    CFRunLoopAddTimer(*a2, v6, *MEMORY[0x1E695E8D0]);
    if (a3)
    {
      *a3 = v14;
    }

    else
    {

      CFRelease(v14);
    }
  }

  else
  {
    FigThreadGlobalNetworkBufferingCommonSetupRunloop_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v15);
  }
}

uint64_t FigThreadGlobalNetworkBufferingLowPriorityRunloop(os_unfair_lock_s **a1)
{
  FigThreadGlobalNetworkBufferingCommonSetupRunloop(a1, &sNetworkLowPriorityRunLoop, &sNetworkLowPriorityRunLoopTimer);
  CFRunLoopRunInMode(*MEMORY[0x1E695E8E0], 1.79769313e308, 0);
  if (sNetworkLowPriorityRunLoopTimer)
  {
    CFRelease(sNetworkLowPriorityRunLoopTimer);
    sNetworkLowPriorityRunLoopTimer = 0;
  }

  return 0;
}

uint64_t FigThreadGlobalNetworkBufferingBackgroundThrottledRunloop(os_unfair_lock_s **a1)
{
  FigThreadGlobalNetworkBufferingCommonSetupRunloop(a1, &sNetworkBackgroundThrottledRunLoop, &sNetworkBackgroundThrottledRunLoopTimer);
  CFRunLoopRunInMode(*MEMORY[0x1E695E8E0], 1.79769313e308, 0);
  if (sNetworkBackgroundThrottledRunLoopTimer)
  {
    CFRelease(sNetworkBackgroundThrottledRunLoopTimer);
    sNetworkBackgroundThrottledRunLoopTimer = 0;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_36(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, abortActionInitOnce);
}

void *OUTLINED_FUNCTION_1_24(void *result)
{
  result[2] = kSpecialAction_ThreadWasAbortedForTeardown;
  result[3] = 0;
  result[4] = 0;
  **(v1 + 1768) = result;
  *(v1 + 1768) = result + 4;
  return result;
}

void *OUTLINED_FUNCTION_3_11()
{

  return malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040D3751E5BuLL);
}

uint64_t FigUInt32NearestPowerOfTwo(unsigned int a1)
{
  v1 = a1 | (a1 >> 1) | ((a1 | (a1 >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  return ((v2 | HIWORD(v2)) + 1) >> ((a1 & (((v2 | HIWORD(v2)) + 1) >> 2)) == 0);
}

uint64_t FigFloat32ConvertToFloat16(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = (LODWORD(a1) >> 23);
  v3 = ((((LODWORD(a1) & 0x7FFFFFu) >> 13) | (v2 << 10)) + 0x4000) | v1;
  if (v2 < 0x71)
  {
    LOWORD(v3) = HIWORD(a1) & 0x8000;
  }

  v4 = v1 | 0x7C00;
  if (v2 >= 0x8F)
  {
    LOWORD(v3) = v4;
  }

  v5 = LOWORD(a1) & 0x3FF;
  if ((LOWORD(a1) & 0x3FF) == 0)
  {
    v5 = 512;
  }

  v6 = v4 | v5;
  if ((LODWORD(a1) & 0x7FFFFF) == 0)
  {
    v6 = v4;
  }

  if (v2 != 255)
  {
    return v3;
  }

  return v6;
}

float FigFloat16ConvertToFloat32(unsigned int a1)
{
  v1 = (a1 >> 10) & 0x1F;
  v2 = a1 & 0x3FF;
  if (v1 == 31)
  {
    LODWORD(result) = v2 | 0x7F800000;
  }

  else if (v1)
  {
    v4 = (1 << (v1 - 15));
    if (v1 <= 0xE)
    {
      v5 = COERCE_DOUBLE(((15 - v1) << 52) ^ 0x3FF0000000000000);
      v4 = v5;
    }

    result = (vcvts_n_f32_u32(v2, 0xAuLL) + 1.0) * v4;
  }

  else if ((a1 & 0x3FF) != 0)
  {
    result = vcvts_n_f32_u32(v2, 0x18uLL);
  }

  else
  {
    result = 0.0;
  }

  if ((a1 & 0x8000u) != 0)
  {
    return -result;
  }

  return result;
}

uint64_t FigGzipCreate(void *a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B00409B971CB9uLL);
    if (v2)
    {
      v3 = v2;
      result = 0;
      v3[29] = 1736075632;
      *(v3 + 9) = 0;
      *(v3 + 10) = 0;
      *(v3 + 8) = 0;
      *a1 = v3;
    }

    else
    {
      FigGzipCreate_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigGzipCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigGzipCreate_zlib(void *a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B00409B971CB9uLL);
    if (v2)
    {
      v3 = v2;
      result = 0;
      v3[29] = 2053925218;
      *(v3 + 9) = 0;
      *(v3 + 10) = 0;
      *(v3 + 8) = 0;
      *a1 = v3;
    }

    else
    {
      FigGzipCreate_zlib_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigGzipCreate_zlib_cold_2(&v6);
    return v6;
  }

  return result;
}

size_t FigGzipDecompressMemory(z_streamp strm, Bytef *a2, uInt a3, void *a4, BOOL *a5, Bytef *a6, uInt a7, void *a8, CMBlockBufferRef *a9, _BYTE *a10)
{
  if (!a4 || !a8)
  {
    FigGzipDecompressMemory_cold_4(&v26);
    return v26;
  }

  if (!a5 || !a9)
  {
    FigGzipDecompressMemory_cold_3(&v26);
    return v26;
  }

  if (!a10)
  {
    FigGzipDecompressMemory_cold_2(&v26);
    return v26;
  }

  if ((strm[1].next_in & 0xFFFFFFFD) != 0)
  {
    FigGzipDecompressMemory_cold_1(&v26);
    return v26;
  }

  *a10 = 0;
  if (a2)
  {
    strm->next_in = a2;
    strm->avail_in = a3;
    strm->total_in = 0;
  }

  if (a6)
  {
    total_out = 0;
    strm->next_out = a6;
    strm->avail_out = a7;
    strm->total_out = 0;
  }

  else
  {
    total_out = strm->total_out;
  }

  total_in = strm->total_in;
  if (!LODWORD(strm[1].next_in))
  {
    next_in_high = HIDWORD(strm[1].next_in);
    if (next_in_high == 2053925218)
    {
      v18 = inflateInit_(strm, "1.2.12", 112);
    }

    else
    {
      if (next_in_high != 1736075632)
      {
LABEL_18:
        LODWORD(strm[1].next_in) = 2;
        goto LABEL_19;
      }

      v18 = inflateInit2_(strm, 47, "1.2.12", 112);
    }

    if (v18 >= 2)
    {
      if (v18 == -4)
      {
        v22 = 4294954905;
      }

      else
      {
        v22 = 4294954904;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v22, "(Fig)", 0xBC, v10, v24, v25, a9);
    }

    goto LABEL_18;
  }

LABEL_19:
  v19 = inflate(strm, 0);
  switch(v19)
  {
    case -4:
      return 4294954905;
    case 0:
      *a10 = 0;
      *a5 = strm->avail_in == 0;
      v20 = strm->avail_out == 0;
      goto LABEL_24;
    case 1:
      v20 = 0;
      *a10 = 1;
      *a5 = 0;
LABEL_24:
      result = 0;
      *a9 = v20;
      *a4 = strm->total_in - total_in;
      *a8 = strm->total_out - total_out;
      return result;
  }

  return 4294954904;
}

uint64_t FigGzipCompressMemory(z_streamp strm, Bytef *a2, uInt a3, void *a4, BOOL *a5, Bytef *a6, uInt a7, void *a8, BOOL *a9, char a10)
{
  if (a4 && a8)
  {
    if (a5 && a9)
    {
      next_in = strm[1].next_in;
      if (next_in < 2)
      {
        if (a2)
        {
          strm->next_in = a2;
          strm->avail_in = a3;
          strm->total_in = 0;
        }

        if (a6)
        {
          total_out = 0;
          strm->next_out = a6;
          strm->avail_out = a7;
          strm->total_out = 0;
        }

        else
        {
          total_out = strm->total_out;
        }

        total_in = strm->total_in;
        if (next_in)
        {
LABEL_18:
          v18 = deflate(strm, 0);
          if (v18 < 2)
          {
            if (a10)
            {
              if (strm->avail_out)
              {
                v18 = deflate(strm, 4);
              }
            }

            if (v18 != -4)
            {
              if (!v18)
              {
                *a5 = strm->avail_in == 0;
                v19 = strm->avail_out == 0;
                goto LABEL_30;
              }

              if (v18 == 1)
              {
                v19 = 0;
                *a5 = 0;
LABEL_30:
                result = 0;
                *a9 = v19;
                *a4 = strm->total_in - total_in;
                *a8 = strm->total_out - total_out;
                return result;
              }

              return 4294954903;
            }

            return 4294954905;
          }

LABEL_26:
          if (v18 != -4)
          {
            return 4294954903;
          }

          return 4294954905;
        }

        next_in_high = HIDWORD(strm[1].next_in);
        if (next_in_high == 2053925218)
        {
          v18 = deflateInit_(strm, -1, "1.2.12", 112);
        }

        else
        {
          if (next_in_high != 1736075632)
          {
LABEL_17:
            LODWORD(strm[1].next_in) = 1;
            goto LABEL_18;
          }

          v18 = deflateInit2_(strm, -1, 8, 31, 4, 0, "1.2.12", 112);
        }

        if (v18 >= 2)
        {
          goto LABEL_26;
        }

        goto LABEL_17;
      }

      FigGzipCompressMemory_cold_1(&v21);
      return v21;
    }

    else
    {
      FigGzipCompressMemory_cold_2(&v22);
      return v22;
    }
  }

  else
  {
    FigGzipCompressMemory_cold_3(&v23);
    return v23;
  }
}

void FigGzipDispose(z_stream *a1)
{
  if (a1)
  {
    FigGzipReset(a1);

    free(a1);
  }
}

uint64_t FigGzipReset(uint64_t strm)
{
  if (strm)
  {
    v1 = strm;
    v2 = *(strm + 112);
    if (v2 == 1)
    {
      strm = deflateEnd(strm);
    }

    else
    {
      if (v2 != 2)
      {
        return strm;
      }

      strm = inflateEnd(strm);
    }

    *(v1 + 112) = 0;
  }

  return strm;
}

CFStringRef FigFilePathCopyDebugDesc(char *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigFilePathRef %p [%p]>{path:%s}", a1, v3, a1 + 16);
}

uint64_t convertPOSIXErrorToFigFileError(uint64_t result, char a2)
{
  if (result > 19)
  {
    if (result <= 44)
    {
      if (result == 20)
      {
        return 4294949385;
      }

      if (result == 22)
      {
        return 4294955096;
      }
    }

    else
    {
      if (result == 63)
      {
        v2 = -17912;
      }

      else
      {
        v2 = result;
      }

      if (result == 62)
      {
        v3 = -17914;
      }

      else
      {
        v3 = v2;
      }

      if (result == 45)
      {
        return 4294949380;
      }

      else
      {
        return v3;
      }
    }
  }

  else
  {
    if (result > 4)
    {
      if (result == 5)
      {
        return 4294949381;
      }

      if (result != 13)
      {
        if (result != 14)
        {
          return result;
        }

        return 4294955096;
      }

      goto LABEL_24;
    }

    if (result == 1)
    {
LABEL_24:
      if ((a2 & 3) != 0)
      {
        return 4294955092;
      }

      else
      {
        return 4294955093;
      }
    }

    if (result == 2)
    {
      return 4294949383;
    }

    else
    {
      return result;
    }
  }

  return result;
}

BOOL FigFileDoesFileExist(const __CFURL *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v5, 0, sizeof(v5));
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return stat(buffer, &v5) == 0;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, 0xFFFFD058uLL, "<<<< FigFile >>>>", 0x25D, v1, v2, v3, *&v5.st_dev, v5.st_ino, *&v5.st_uid, *&v5.st_atimespec, *&v5.st_mtimespec, *&v5.st_ctimespec, *&v5.st_birthtimespec, *&v5.st_size, *&v5.st_blksize, *v5.st_qspare);
  return 0;
}

uint64_t FigFileForkOpenMainByCFURL(const __CFURL *a1, unsigned int a2, int **a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a2 & 3;
  bzero(buffer, 0x400uLL);
  v10 = FigNote_AllowInternalDefaultLogs(v8, v9) != 0;
  fig_note_initialize_category_with_default_work_cf(&unk_1ED4CC2D0, @"figfile_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v10, 0, &gFigFileTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1ED4CC2E0, @"figfile_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1ED4CC2D8);
  if (!a1)
  {
    FigFileForkOpenMainByCFURL_cold_6(&v62, v11, v12, v13, v14, v15, v16, v17);
    v26 = 0;
LABEL_32:
    v59 = v62;
    goto LABEL_28;
  }

  v18 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  v26 = v18;
  if (!v18)
  {
    FigFileForkOpenMainByCFURL_cold_5(&v62, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_32;
  }

  *v18 = -1;
  if ((a2 & 0x20) != 0)
  {
    v27 = 16778240;
  }

  else
  {
    v27 = 0x1000000;
  }

  v28 = (32 * a2) & 0x200;
  if ((a2 & 0x200) != 0)
  {
    v28 = 2560;
  }

  v7 |= (a2 >> 2) & 0x20 | ((a2 & 0x400) >> 8) | v27 | v28;
  if (!FigIsPersistentURL(a1))
  {
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v37 = 0;
      goto LABEL_14;
    }

    v59 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, 0xFFFFD058uLL, "<<<< FigFile >>>>", 0x2DD, v3, v42, v43, v60);
LABEL_28:
    v41 = convertPOSIXErrorToFigFileError(v59, v7);
    goto LABEL_26;
  }

  SecurityScopedFileURLForPersistentURL = FigCreateSecurityScopedFileURLForPersistentURL(a1);
  if (!SecurityScopedFileURLForPersistentURL)
  {
    FigFileForkOpenMainByCFURL_cold_1(&v62, v30, v31, v32, v33, v34, v35, v36);
    goto LABEL_32;
  }

  v37 = SecurityScopedFileURLForPersistentURL;
  CFURLStartAccessingSecurityScopedResource(SecurityScopedFileURLForPersistentURL);
  if (!CFURLGetFileSystemRepresentation(v37, 1u, buffer, 1024))
  {
    v40 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, 0xFFFFD058uLL, "<<<< FigFile >>>>", 0x2D9, v3, v38, v39, v60);
    v41 = convertPOSIXErrorToFigFileError(v40, v7);
LABEL_25:
    MEMORY[0x19A8D8100](v37);
    CFRelease(v37);
    goto LABEL_26;
  }

LABEL_14:
  v44 = open(buffer, v7, 420);
  *v26 = v44;
  if (v44 == -1)
  {
    v53 = __error();
    v54 = convertPOSIXErrorToFigFileError(*v53, v7);
    v52 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, v54, "<<<< FigFile >>>>", 0x2E9, v3, v55, v56, v61);
    if (!FigIsItOKToLogURLs(v52, v57))
    {
      __strlcpy_chk();
    }
  }

  else
  {
    if ((a2 & 0x400) != 0 && (v45 = fcntl(v44, 3), v46 = fcntl(*v26, 4, v45 & 0xFFFFFFFB), v47 = __error(), v46 == -1))
    {
      FigFileForkOpenMainByCFURL_cold_2(v47, &v62);
    }

    else if ((a2 & 0x40) != 0 && (v48 = fcntl(*v26, 48, 1), v49 = __error(), v48 == -1))
    {
      FigFileForkOpenMainByCFURL_cold_3(v49, &v62);
    }

    else
    {
      if ((a2 & 0x100) == 0 || (v50 = fcntl(*v26, 68, 1), v51 = __error(), v50 != -1))
      {
        v52 = 0;
        *a3 = v26;
        v26 = 0;
        goto LABEL_24;
      }

      FigFileForkOpenMainByCFURL_cold_4(v51, &v62);
    }

    v52 = v62;
  }

LABEL_24:
  v41 = convertPOSIXErrorToFigFileError(v52, v7);
  if (v37)
  {
    goto LABEL_25;
  }

LABEL_26:
  FigFileForkClose(v26);
  return v41;
}

size_t FigFileForkRead(int *a1, void *__buf, size_t __nbyte, off_t a4, uint64_t *a5)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  v11 = pread(*a1, __buf, __nbyte, a4);
  v12 = v11;
  v13 = v11 & ~(v11 >> 63);
  if (gGMFigKTraceEnabled == 1)
  {
    if (v11 < 0)
    {
      __error();
    }

    kdebug_trace();
    if (__nbyte != v12 && gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }
  }

  if (v12 == -1)
  {
    v16 = __error();
    v17 = convertPOSIXErrorToFigFileError(*v16, 0);
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, v17, "<<<< FigFile >>>>", 0x354, v5, v18, v19, v21);
    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    v15 = 0;
  }

  if (a5)
  {
    *a5 = v13;
  }

  return v15;
}

size_t FigFileForkWrite(int *a1, void *__buf, size_t __nbyte, off_t a4, uint64_t *a5)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  v11 = pwrite(*a1, __buf, __nbyte, a4);
  v12 = v11;
  v13 = v11 & ~(v11 >> 63);
  if (gGMFigKTraceEnabled == 1)
  {
    if (v11 < 0)
    {
      __error();
    }

    kdebug_trace();
    if (__nbyte != v12 && gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }
  }

  if (v12 == -1)
  {
    v16 = __error();
    v17 = convertPOSIXErrorToFigFileError(*v16, 0);
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, v17, "<<<< FigFile >>>>", 0x375, v5, v18, v19, v21);
    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    v15 = 0;
  }

  if (a5)
  {
    *a5 = v13;
  }

  return v15;
}

size_t FigFileForkReadWithIOPolicy(int *a1, uint64_t a2, void *a3, size_t a4, off_t a5, uint64_t *a6)
{
  v14 = 0;
  IsDifferentFromCurrentIOPolicy = FigFileSetIOPolicyIfItIsDifferentFromCurrentIOPolicy("FigFileR", a2, &v14);
  v12 = FigFileForkRead(a1, a3, a4, a5, a6);
  if (IsDifferentFromCurrentIOPolicy)
  {
    FigFileSetIOPolicy("FigFileR", v14);
  }

  return v12;
}

BOOL FigFileSetIOPolicyIfItIsDifferentFromCurrentIOPolicy(const char *a1, int a2, int *a3)
{
  if (a2 < 0)
  {
    result = 0;
    v5 = 0;
  }

  else
  {
    v5 = a2;
    v7 = getiopolicy_np(0, 1);
    if (gGMFigKTraceEnabled == 1)
    {
      strncpy(__dst, a1, 8uLL);
      if ((v7 + 1) > 6)
      {
        v8 = "UNKNOWN";
      }

      else
      {
        v8 = off_1E749F718[v7 + 1];
      }

      strncpy(__dst, v8, 8uLL);
      kdebug_trace();
    }

    if (v7 == -1)
    {
      v10 = __error();
      v11 = convertPOSIXErrorToFigFileError(*v10, 0);
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, v11, "<<<< FigFile >>>>", 0x38E, v3, v12, v13, v14);
      result = 0;
      v5 = -1;
    }

    else if (v7 == v5)
    {
      result = 0;
    }

    else
    {
      result = FigFileSetIOPolicy(a1, v5) != -1;
      v5 = v7;
    }
  }

  *a3 = v5;
  return result;
}

uint64_t FigFileSetIOPolicy(const char *a1, int a2)
{
  v5 = setiopolicy_np(0, 1, a2);
  if (gGMFigKTraceEnabled == 1)
  {
    strncpy(__dst, a1, 8uLL);
    if ((a2 + 1) > 6)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = off_1E749F718[a2 + 1];
    }

    strncpy(__dst, v6, 8uLL);
    kdebug_trace();
  }

  if (v5 == -1)
  {
    v7 = __error();
    v8 = convertPOSIXErrorToFigFileError(*v7, 0);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, v8, "<<<< FigFile >>>>", 0x39E, v2, v9, v10, v12);
  }

  return v5;
}

size_t FigFileForkWriteWithIOPolicy(int *a1, int a2, void *a3, size_t a4, off_t a5, uint64_t *a6)
{
  v14 = 0;
  IsDifferentFromCurrentIOPolicy = FigFileSetIOPolicyIfItIsDifferentFromCurrentIOPolicy("FigFileW", a2, &v14);
  v12 = FigFileForkWrite(a1, a3, a4, a5, a6);
  if (IsDifferentFromCurrentIOPolicy)
  {
    FigFileSetIOPolicy("FigFileW", v14);
  }

  return v12;
}

size_t FigFileForkPreallocateStorageSpace(int *a1, uint64_t a2, char a3, uint64_t *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v30[0] = a3 & 2;
  v30[1] = 3;
  v31 = 0;
  v32 = a2;
  v33 = 0;
  if (dword_1ED4CC2E0)
  {
    HIDWORD(v29) = 0;
    BYTE3(v29) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2D8, 1, &v29 + 1, &v29 + 3);
    v9 = HIDWORD(v29);
    v10 = BYTE3(v29);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v29)))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = *a1;
      v34 = 136315906;
      v35 = "FigFileForkPreallocateStorageSpace";
      v36 = 2048;
      v37 = a1;
      v38 = 1024;
      v39 = v12;
      v40 = 2048;
      v41 = a2;
      LODWORD(v27) = 38;
      v13 = _os_log_send_and_compose_impl(v11, 0, v42, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v10, "<<<< FigFile >>>> %s: prealloc starts fork %p fd %d requested length %lld", &v34, v27, v28, v29);
      LOBYTE(v9) = BYTE4(v29);
    }

    else
    {
      v13 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2D8, 1, 1, v13, v13 != v42, v9);
  }

  v14 = fcntl(*a1, 42, v30);
  v15 = __error();
  v18 = convertPOSIXErrorToFigFileError(*v15, 0);
  if (dword_1ED4CC2E0)
  {
    HIDWORD(v29) = 0;
    BYTE3(v29) = 0;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2D8, 1, &v29 + 1, &v29 + 3);
    v20 = HIDWORD(v29);
    v21 = BYTE3(v29);
    if (os_log_type_enabled(v19, BYTE3(v29)))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v23 = *a1;
      v34 = 136315906;
      v35 = "FigFileForkPreallocateStorageSpace";
      v36 = 2048;
      v37 = a1;
      v38 = 1024;
      v39 = v23;
      v40 = 2048;
      v41 = v33;
      LODWORD(v27) = 38;
      v24 = _os_log_send_and_compose_impl(v22, 0, v42, 128, &dword_196FA7000, v19, v21, "<<<< FigFile >>>> %s: prealloc ends   fork %p fd %d allocated length %lld", &v34, v27, v28, v29);
      LOBYTE(v20) = BYTE4(v29);
    }

    else
    {
      v24 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2D8, 1, 1, v24, v24 != v42, v20);
  }

  if (v14 == -1)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, v18, "<<<< FigFile >>>>", 0x44A, v4, v16, v17, v26);
  }

  result = 0;
  if (a4)
  {
    *a4 = v33;
  }

  return result;
}

uint64_t FigFileForkGetAllocatedStorageSpaceLength(int *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  memset(&v12, 0, sizeof(v12));
  if (!a2)
  {
    FigFileForkGetAllocatedStorageSpaceLength_cold_2(&v13, 0, a3, a4, a5, a6, a7, a8);
    return v13;
  }

  v9 = fstat(*a1, &v12);
  v10 = __error();
  if (v9 == -1)
  {
    FigFileForkGetAllocatedStorageSpaceLength_cold_1(v10, &v13);
    return v13;
  }

  result = 0;
  *a2 = v12.st_blocks << 9;
  return result;
}

uint64_t FigFileForkGetLengthAtOffset(int *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  memset(&v13, 0, sizeof(v13));
  if (!a3)
  {
    FigFileForkGetLengthAtOffset_cold_2(&v14, a2, 0, a4, a5, a6, a7, a8);
    return v14;
  }

  v10 = fstat(*a1, &v13);
  v11 = __error();
  if (v10 == -1)
  {
    FigFileForkGetLengthAtOffset_cold_1(v11, &v14);
    return v14;
  }

  if (a2 < 0 || v13.st_size <= a2)
  {
    result = 0;
    *a3 = 0;
  }

  else
  {
    result = 0;
    *a3 = v13.st_size - a2;
  }

  return result;
}

uint64_t FigFileForkTruncate(int *a1, off_t a2)
{
  v2 = ftruncate(*a1, a2);
  v3 = __error();
  if (v2 != -1)
  {
    return 0;
  }

  FigFileForkTruncate_cold_1(v3, &v5);
  return v5;
}

size_t FigFileForkSynchronize(int *a1, char a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (dword_1ED4CC2E0)
    {
      v45 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2D8, 1, &v45, &type);
      v11 = v45;
      v12 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = *a1;
        v46 = 136315650;
        v47 = "FigFileForkSynchronize";
        v48 = 2048;
        v49 = a1;
        v50 = 1024;
        v51 = v14;
        LODWORD(v42) = 28;
        v15 = _os_log_send_and_compose_impl(v13, 0, v52, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v12, "<<<< FigFile >>>> %s: fullfsync starts fork %p fd %d", &v46, v42, v43);
        LOBYTE(v11) = v45;
      }

      else
      {
        v15 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2D8, 1, 1, v15, v15 != v52, v11);
    }

    v27 = fcntl(*a1, 51);
    v28 = __error();
    v29 = convertPOSIXErrorToFigFileError(*v28, 51);
    if (dword_1ED4CC2E0)
    {
      v45 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2D8, 1, &v45, &type);
      v31 = v45;
      v32 = type;
      if (os_log_type_enabled(v30, type))
      {
        v33 = v31;
      }

      else
      {
        v33 = v31 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v34 = *a1;
        v46 = 136315650;
        v47 = "FigFileForkSynchronize";
        v48 = 2048;
        v49 = a1;
        v50 = 1024;
        v51 = v34;
        LODWORD(v42) = 28;
        v35 = _os_log_send_and_compose_impl(v33, 0, v52, 128, &dword_196FA7000, v30, v32, "<<<< FigFile >>>> %s: fullfsync ends   fork %p fd %d", &v46, v42, v43);
        LOBYTE(v31) = v45;
      }

      else
      {
        v35 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2D8, 1, 1, v35, v35 != v52, v31);
    }

    if (v27 == -1)
    {
      v36 = qword_1ED4CC2D8;
      v37 = v2;
      v38 = v29;
      v39 = 1173;
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v38, "<<<< FigFile >>>>", v39, v37, v18, v19, v41);
    }
  }

  else
  {
    if (dword_1ED4CC2E0)
    {
      v45 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2D8, 1, &v45, &type);
      v5 = v45;
      v6 = type;
      if (os_log_type_enabled(v4, type))
      {
        v7 = v5;
      }

      else
      {
        v7 = v5 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *a1;
        v46 = 136315650;
        v47 = "FigFileForkSynchronize";
        v48 = 2048;
        v49 = a1;
        v50 = 1024;
        v51 = v8;
        LODWORD(v42) = 28;
        v9 = _os_log_send_and_compose_impl(v7, 0, v52, 128, &dword_196FA7000, v4, v6, "<<<< FigFile >>>> %s: fsync starts fork %p fd %d", &v46, v42, v43);
        LOBYTE(v5) = v45;
      }

      else
      {
        v9 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2D8, 1, 1, v9, v9 != v52, v5);
    }

    v16 = fsync(*a1);
    v17 = __error();
    v20 = convertPOSIXErrorToFigFileError(*v17, 0);
    if (dword_1ED4CC2E0)
    {
      v45 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2D8, 1, &v45, &type);
      v22 = v45;
      v23 = type;
      if (os_log_type_enabled(v21, type))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v25 = *a1;
        v46 = 136315650;
        v47 = "FigFileForkSynchronize";
        v48 = 2048;
        v49 = a1;
        v50 = 1024;
        v51 = v25;
        LODWORD(v42) = 28;
        v26 = _os_log_send_and_compose_impl(v24, 0, v52, 128, &dword_196FA7000, v21, v23, "<<<< FigFile >>>> %s: fsync ends   fork %p fd %d", &v46, v42, v43);
        LOBYTE(v22) = v45;
      }

      else
      {
        v26 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2D8, 1, 1, v26, v26 != v52, v22);
    }

    if (v16 == -1)
    {
      v36 = qword_1ED4CC2D8;
      v37 = v2;
      v38 = v20;
      v39 = 1181;
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v38, "<<<< FigFile >>>>", v39, v37, v18, v19, v41);
    }
  }

  return 0;
}

uint64_t FigFileGetPath(const __CFURL *a1, UInt8 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (!a1)
  {
    FigFileGetPath_cold_5(&v36, a2, a3, a4, a5, a6, a7, a8);
    return v36;
  }

  if (!a2)
  {
    FigFileGetPath_cold_4(&v36, 0, a3, a4, a5, a6, a7, a8);
    return v36;
  }

  v9 = CFURLCopyAbsoluteURL(a1);
  if (!v9)
  {
    FigFileGetPath_cold_3(&v36, v10, v11, v12, v13, v14, v15, v16);
    return v36;
  }

  v17 = v9;
  v18 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
  if (!v18)
  {
    FigFileGetPath_cold_2(v17, &v36, v19, v20, v21, v22, v23, v24);
    return v36;
  }

  v25 = v18;
  BytesFromCFString = FigCreateBytesFromCFString(*MEMORY[0x1E695E480], v18, 0x8000100u, 1, 0);
  if (BytesFromCFString)
  {
    v34 = 0;
    *a2 = BytesFromCFString;
  }

  else
  {
    FigFileGetPath_cold_1(&v36, v27, v28, v29, v30, v31, v32, v33);
    v34 = v36;
  }

  CFRelease(v17);
  CFRelease(v25);
  return v34;
}

uint64_t FigFileCreateTempDirectory(const char *a1, CFURLRef *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  bzero(v28, 0x400uLL);
  if (!a1)
  {
    FigFileCreateTempDirectory_cold_4(v27, v4, v5, v6, v7, v8, v9, v10);
    return *v27;
  }

  if (!a2)
  {
    FigFileCreateTempDirectory_cold_3(v27, v4, v5, v6, v7, v8, v9, v10);
    return *v27;
  }

  CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(a1, v27, 1024, 0x8000100u);
  confstr(65537, v28, 0x400uLL);
  v12 = "";
  if (CStringPtrMaybeUsingPreallocatedBuffer)
  {
    v12 = CStringPtrMaybeUsingPreallocatedBuffer;
  }

  snprintf(__str, 0x400uLL, "%s/%s.XXXXXX", v28, v12);
  v13 = mkdtemp(__str);
  v14 = __error();
  if (!v13)
  {
    FigFileCreateTempDirectory_cold_2(v14, &v26);
    return v26;
  }

  v15 = strlen(v13);
  v16 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], v13, v15, 1u);
  if (!v16)
  {
    FigFileCreateTempDirectory_cold_1(&v26, v17, v18, v19, v20, v21, v22, v23);
    return v26;
  }

  v24 = v16;
  result = 0;
  *a2 = v24;
  return result;
}

uint64_t FigFileLock(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (a1)
  {
    v8 = a2;
    result = flock(*a1, a2 & 7);
    if (result)
    {
      if (*__error() == 35)
      {
        return 4294955090;
      }

      else
      {
        v10 = *__error();

        return convertPOSIXErrorToFigFileError(v10, v8 & 7);
      }
    }
  }

  else
  {
    FigFileLock_cold_1(&v11, a2, a3, a4, a5, a6, a7, a8);
    return v11;
  }

  return result;
}

uint64_t FigFileUnlock(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (a1)
  {
    result = flock(*a1, 8);
    if (result)
    {
      v9 = *__error();

      return convertPOSIXErrorToFigFileError(v9, 8);
    }
  }

  else
  {
    FigFileUnlock_cold_1(&v10, a2, a3, a4, a5, a6, a7, a8);
    return v10;
  }

  return result;
}

uint64_t FigDirectoryEnableDirStatsTracking(const __CFURL *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (CFURLGetFileSystemRepresentation(a1, 0, buffer, 1024))
  {
    v8 = fsctl(buffer, 0x80084A02uLL, &v11, 0);
    result = 0;
    if (v8 < 0)
    {
      v10 = __error();
      return convertPOSIXErrorToFigFileError(*v10, 0);
    }
  }

  else
  {
    FigDirectoryEnableDirStatsTracking_cold_1(&v12, v1, v2, v3, v4, v5, v6, v7);
    return v12;
  }

  return result;
}

uint64_t FigFileMarkPurgeable(const __CFURL *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(a1, 0, buffer, 1024))
  {
    v10 = 66568;
    if (!a2)
    {
      v10 = 0;
    }

    v14 = v10;
    v11 = fsctl(buffer, 0xC0084A44uLL, &v14, 0);
    result = 0;
    if (v11 < 0)
    {
      v13 = __error();
      return convertPOSIXErrorToFigFileError(*v13, 0);
    }
  }

  else
  {
    FigFileMarkPurgeable_cold_1(&v14, v3, v4, v5, v6, v7, v8, v9);
    return v14;
  }

  return result;
}

uint64_t FigDirectoryIsDirStatsTrackingEnabled(const __CFURL *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  v15 = 1;
  v2 = CFURLGetFileSystemRepresentation(a1, 0, buffer, 1024);
  if (v2)
  {
    if ((fsctl(buffer, 0xC0284A20uLL, &v15, 0) & 0x80000000) == 0)
    {
      return 1;
    }

    if (*__error() == 45)
    {
      return 2;
    }

    v11 = __error();
    v12 = convertPOSIXErrorToFigFileError(*v11, 0);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC2D8, v12, "<<<< FigFile >>>>", 0x694, v1, v13, v14, v15, v16, v17);
  }

  else
  {
    FigDirectoryIsDirStatsTrackingEnabled_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

OSStatus CMMetadataCreateIdentifierForKeyAndKeySpace(CFAllocatorRef allocator, CFTypeRef key, CFStringRef keySpace, CFStringRef *identifierOut)
{
  if (!identifierOut)
  {
    CMMetadataCreateIdentifierForKeyAndKeySpace_cold_18(&usedBufLen);
    return usedBufLen;
  }

  *identifierOut = 0;
  if (!keySpace)
  {
    CMMetadataCreateIdentifierForKeyAndKeySpace_cold_17(&usedBufLen);
    return usedBufLen;
  }

  if (CFStringCompare(keySpace, @"anon", 0))
  {
    if (!key)
    {
      CMMetadataCreateIdentifierForKeyAndKeySpace_cold_15(&usedBufLen);
      return usedBufLen;
    }

    if (CFStringCompare(keySpace, @"org.id3", 0) && CFStringCompare(keySpace, @"id3 ", 0))
    {
      if (CFStringCompare(keySpace, @"icy ", 0))
      {
        if (CFStringCompare(keySpace, @"org.avchd-info", 0))
        {
          if (CFStringCompare(keySpace, @"comn", 0))
          {
            Length = CFStringGetLength(keySpace);
            if (!Length)
            {
              CMMetadataCreateIdentifierForKeyAndKeySpace_cold_3(&usedBufLen);
              return usedBufLen;
            }

            if (Length >= 5)
            {
              CMMetadataCreateIdentifierForKeyAndKeySpace_cold_2(&usedBufLen);
              return usedBufLen;
            }

            v9 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], keySpace, 0, @"/", 0);
            if (!v9)
            {
              CMMetadataCreateIdentifierForKeyAndKeySpace_cold_1(&usedBufLen);
              return usedBufLen;
            }
          }

          else
          {
            v9 = @"common";
          }
        }

        else
        {
          v9 = @"avch";
        }
      }

      else
      {
        v9 = @"icy";
      }
    }

    else
    {
      v9 = @"id3";
    }

    usedBufLen = 0;
    *bytes = 0;
    valuePtr = 0;
    v10 = CFGetTypeID(key);
    HasOSTypeValues = keyNamespaceHasOSTypeValues(v9);
    TypeID = CFStringGetTypeID();
    if (HasOSTypeValues)
    {
      if (TypeID == v10)
      {
        if (CFStringGetLength(key) == 4)
        {
          v23.location = 0;
          v23.length = 4;
          CFStringGetBytes(key, v23, 0, 0, 0, buffer, 4, &usedBufLen);
          if (usedBufLen == 4)
          {
            if (keyNamespaceHasAtSymbolOSTypeValues(v9) && buffer[0] == 64)
            {
              buffer[0] = -87;
            }

            v13 = CFStringCreateWithBytes(allocator, buffer, 4, 0, 0);
            if (!v13)
            {
              CMMetadataCreateIdentifierForKeyAndKeySpace_cold_10(&v22);
LABEL_74:
              v14 = v22;
              goto LABEL_55;
            }

            goto LABEL_46;
          }

          CMMetadataCreateIdentifierForKeyAndKeySpace_cold_9(&v22);
        }

        else
        {
          CMMetadataCreateIdentifierForKeyAndKeySpace_cold_8(&v22);
        }

LABEL_73:
        v13 = 0;
        goto LABEL_74;
      }

      if (CFNumberGetTypeID() == v10)
      {
        CFNumberGetValue(key, kCFNumberSInt64Type, &valuePtr);
        CFNumberGetValue(key, kCFNumberSInt32Type, bytes);
        if (!HIDWORD(valuePtr) || valuePtr == *bytes)
        {
          *bytes = bswap32(*bytes);
          if (keyNamespaceHasAtSymbolOSTypeValues(v9) && bytes[0] == 64)
          {
            bytes[0] = -87;
          }

          v13 = CFStringCreateWithBytes(allocator, bytes, 4, 0, 0);
          if (!v13)
          {
            CMMetadataCreateIdentifierForKeyAndKeySpace_cold_6(&v22);
            goto LABEL_74;
          }

          goto LABEL_46;
        }

        CMMetadataCreateIdentifierForKeyAndKeySpace_cold_7(&v22);
        goto LABEL_73;
      }

      if (CFDataGetTypeID() == v10)
      {
        if (CFDataGetLength(key) != 4)
        {
          CMMetadataCreateIdentifierForKeyAndKeySpace_cold_4(&v22);
          goto LABEL_73;
        }

        v24.location = 0;
        v24.length = 4;
        CFDataGetBytes(key, v24, buffer);
        if (keyNamespaceHasAtSymbolOSTypeValues(v9) && buffer[0] == 64)
        {
          buffer[0] = -87;
        }

        v13 = CFStringCreateWithBytes(allocator, buffer, 4, 0, 0);
        if (!v13)
        {
          CMMetadataCreateIdentifierForKeyAndKeySpace_cold_5(&v22);
          goto LABEL_74;
        }

LABEL_46:
        v15 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], v13, 0, @"/", 0);
        goto LABEL_47;
      }
    }

    else
    {
      if (TypeID == v10)
      {
        if (CFStringGetLength(key) > 0)
        {
          v15 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], key, 0, @"/", 0);
          v13 = 0;
LABEL_47:
          if (v15)
          {
            v16 = CFStringCreateWithFormat(allocator, 0, @"%@/%@", v9, v15);
            *identifierOut = v16;
            if (v16)
            {
              v14 = 0;
            }

            else
            {
              CMMetadataCreateIdentifierForKeyAndKeySpace_cold_12(&v22);
              v14 = v22;
            }

            CFRelease(v9);
            goto LABEL_51;
          }

          CMMetadataCreateIdentifierForKeyAndKeySpace_cold_13(&v22);
          goto LABEL_74;
        }

        CMMetadataCreateIdentifierForKeyAndKeySpace_cold_14(&v22);
        goto LABEL_73;
      }

      if (CFDataGetTypeID() == v10)
      {
        v13 = CFStringCreateFromExternalRepresentation(allocator, key, 0);
        if (!v13)
        {
          CMMetadataCreateIdentifierForKeyAndKeySpace_cold_11(&v22);
          goto LABEL_74;
        }

        goto LABEL_46;
      }
    }

    v13 = 0;
    v14 = -16304;
LABEL_55:
    v15 = v9;
LABEL_51:
    CFRelease(v15);
    if (v13)
    {
      CFRelease(v13);
    }

    return v14;
  }

  if (key)
  {
    CMMetadataCreateIdentifierForKeyAndKeySpace_cold_16(&usedBufLen);
    return usedBufLen;
  }

  v14 = 0;
  *identifierOut = CFRetain(@"anon");
  return v14;
}

uint64_t FigMetadataCreateIdentifierForKeyAndOSTypeKeySpace(const __CFAllocator *a1, const void *a2, unsigned int a3, CFStringRef *a4)
{
  if (a3 == 1768126752)
  {
    v7 = @"icy";
LABEL_5:
    v8 = CFRetain(v7);
LABEL_6:
    v9 = v8;
    goto LABEL_7;
  }

  if (a3 == 1768174368)
  {
    v7 = @"id3";
    goto LABEL_5;
  }

  v12 = 0;
  v13 = bswap32(a3);
  v14 = 1;
  v15 = 4;
  v16 = v13;
  IdentifierForKeyAndKeySpace = 4294950990;
  do
  {
    if (HIBYTE(v16))
    {
      if (v12 || !(v16 >> 29) || (v16 & 0xFF000000) == 0x7F000000)
      {
        return IdentifierForKeyAndKeySpace;
      }

      v12 = 0;
    }

    else
    {
      if (v14)
      {
        return 4294950990;
      }

      v12 = 1;
    }

    v14 = 0;
    v16 <<= 8;
    --v15;
  }

  while (v15);
  v17 = 3;
  if (HIBYTE(a3))
  {
    v17 = 4;
  }

  v18 = v17 - (a3 < 0x10000) - (a3 < 0x100);
  v19 = a3 == 0;
  v20 = v18 - v19;
  if (v18 != v19)
  {
    v22 = v13;
    __strncpy_chk();
    cStr[v20] = 0;
    v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:
  IdentifierForKeyAndKeySpace = CMMetadataCreateIdentifierForKeyAndKeySpace(a1, a2, v9, a4);
  if (v9)
  {
    CFRelease(v9);
  }

  return IdentifierForKeyAndKeySpace;
}

OSStatus CMMetadataCreateKeyFromIdentifierAsCFData(CFAllocatorRef allocator, CFStringRef identifier, CFDataRef *keyOut)
{
  v9 = 0;
  cf = 0;
  if (keyOut)
  {
    *keyOut = 0;
    EncodedPartsOfIdentifier = getEncodedPartsOfIdentifier(allocator, identifier, &cf, &v9);
    v6 = cf;
    if (!EncodedPartsOfIdentifier)
    {
      EncodedPartsOfIdentifier = createKeyAsCFData(allocator, cf, v9, keyOut);
    }

    v7 = EncodedPartsOfIdentifier;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    CMMetadataCreateKeyFromIdentifierAsCFData_cold_1(&v11);
    v7 = v11;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v7;
}

uint64_t getEncodedPartsOfIdentifier(const __CFAllocator *a1, CFStringRef theString1, CFStringRef *a3, CFStringRef *a4)
{
  if (!theString1)
  {
    getEncodedPartsOfIdentifier_cold_4(&v12);
    return v12;
  }

  if (CFStringCompare(theString1, @"anon", 0))
  {
    Length = CFStringGetLength(theString1);
    v9 = CFStringFind(theString1, @"/", 0);
    if (v9.length)
    {
      if (v9.location)
      {
        if (Length - 1 > v9.location)
        {
          v13.location = 0;
          v13.length = v9.location;
          *a3 = CFStringCreateWithSubstring(a1, theString1, v13);
          v14.location = v9.location + 1;
          v14.length = Length - (v9.location + 1);
          v10 = CFStringCreateWithSubstring(a1, theString1, v14);
          result = 0;
          *a4 = v10;
          return result;
        }

        getEncodedPartsOfIdentifier_cold_1(&v12);
      }

      else
      {
        getEncodedPartsOfIdentifier_cold_2(&v12);
      }
    }

    else
    {
      getEncodedPartsOfIdentifier_cold_3(&v12);
    }

    return v12;
  }

  return 4294950988;
}

uint64_t createKeyAsCFData(const __CFAllocator *a1, const __CFString *a2, CFStringRef origString, CFDataRef *a4)
{
  v7 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(*MEMORY[0x1E695E480], origString, &stru_1F0B78830, 0);
  if (!v7)
  {
    createKeyAsCFData_cold_4(&usedBufLen);
    return usedBufLen;
  }

  v8 = v7;
  usedBufLen = 0;
  if (!keyNamespaceHasOSTypeValues(a2))
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(a1, v8, 0, 0);
    v10 = 0;
    *a4 = ExternalRepresentation;
    goto LABEL_8;
  }

  if (CFStringGetLength(v8) != 4)
  {
    createKeyAsCFData_cold_1(&v15);
LABEL_14:
    v10 = v15;
    goto LABEL_8;
  }

  v16.location = 0;
  v16.length = 4;
  CFStringGetBytes(v8, v16, 0, 0, 0, buffer, 4, &usedBufLen);
  if (usedBufLen != 4)
  {
    createKeyAsCFData_cold_2(&v15);
    goto LABEL_14;
  }

  v9 = CFDataCreate(a1, buffer, 4);
  *a4 = v9;
  if (!v9)
  {
    createKeyAsCFData_cold_3(&v15);
    goto LABEL_14;
  }

  v10 = 0;
LABEL_8:
  CFRelease(v8);
  return v10;
}

OSStatus CMMetadataCreateKeyFromIdentifier(CFAllocatorRef allocator, CFStringRef identifier, CFTypeRef *keyOut)
{
  origString = 0;
  cf = 0;
  if (!keyOut)
  {
    CMMetadataCreateKeyFromIdentifier_cold_9(&usedBufLen);
    v13 = usedBufLen;
    goto LABEL_37;
  }

  *keyOut = 0;
  EncodedPartsOfIdentifier = getEncodedPartsOfIdentifier(allocator, identifier, &cf, &origString);
  v6 = cf;
  if (EncodedPartsOfIdentifier)
  {
LABEL_20:
    v13 = EncodedPartsOfIdentifier;
    if (!v6)
    {
      goto LABEL_37;
    }

LABEL_36:
    CFRelease(v6);
    goto LABEL_37;
  }

  if (!keyNamespaceHasOSTypeValues(cf))
  {
    if (CFStringCompare(v6, @"mdta", 0) && CFStringCompare(v6, @"fiel", 0) && CFStringCompare(v6, @"comn", 0) && CFStringCompare(v6, @"common", 0) && CFStringCompare(v6, @"itlk", 0) && CFStringCompare(v6, @"icy", 0) && CFStringCompare(v6, @"lsdr", 0))
    {
      EncodedPartsOfIdentifier = createKeyAsCFData(allocator, v6, origString, keyOut);
      goto LABEL_20;
    }

    v14 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(*MEMORY[0x1E695E480], origString, &stru_1F0B78830, 0);
    if (!v14)
    {
      CMMetadataCreateKeyFromIdentifier_cold_8(&v24);
      goto LABEL_47;
    }

    v15 = v14;
    usedBufLen = 0;
    if (keyNamespaceHasOSTypeValues(v6))
    {
      if (CFStringGetLength(v15) == 4)
      {
        v26.location = 0;
        v26.length = 4;
        CFStringGetBytes(v15, v26, 0, 0, 0, buffer, 4, &usedBufLen);
        if (usedBufLen == 4)
        {
          if (keyNamespaceHasAtSymbolOSTypeValues(v6) && buffer[0] == 169)
          {
            buffer[0] = 64;
          }

          v16 = CFStringCreateWithBytes(allocator, buffer, 4, 0, 0);
          v13 = 0;
          *keyOut = v16;
          if (v16)
          {
            goto LABEL_34;
          }

          CMMetadataCreateKeyFromIdentifier_cold_7(&v24);
        }

        else
        {
          CMMetadataCreateKeyFromIdentifier_cold_6(&v24);
        }
      }

      else
      {
        CMMetadataCreateKeyFromIdentifier_cold_5(&v24);
      }

      v13 = v24;
    }

    else
    {
      v13 = 0;
      *keyOut = CFRetain(v15);
    }

LABEL_34:
    v17 = v15;
LABEL_35:
    CFRelease(v17);
    if (!v6)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  valuePtr = 0;
  v7 = *MEMORY[0x1E695E480];
  v8 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(*MEMORY[0x1E695E480], origString, &stru_1F0B78830, 0);
  if (v8)
  {
    v9 = v8;
    usedBufLen = 0;
    if (keyNamespaceHasOSTypeValues(v6))
    {
      if (CFStringGetLength(v9) == 4)
      {
        v25.location = 0;
        v25.length = 4;
        CFStringGetBytes(v9, v25, 0, 0, 0, buffer, 4, &usedBufLen);
        if (usedBufLen == 4)
        {
          v10 = 0;
          v11 = 0;
          do
          {
            v11 = buffer[v10++] | (v11 << 8);
          }

          while (v10 != 4);
          usedBufLen = 4;
          valuePtr = v11;
          v12 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
          *keyOut = v12;
          if (v12)
          {
            v13 = 0;
LABEL_32:
            v17 = v9;
            goto LABEL_35;
          }

          CMMetadataCreateKeyFromIdentifier_cold_3(&v24);
        }

        else
        {
          CMMetadataCreateKeyFromIdentifier_cold_2(&v24);
        }
      }

      else
      {
        CMMetadataCreateKeyFromIdentifier_cold_1(&v24);
      }

      v13 = v24;
      goto LABEL_32;
    }

    v13 = -16304;
    goto LABEL_32;
  }

  CMMetadataCreateKeyFromIdentifier_cold_4(&v24);
LABEL_47:
  v13 = v24;
  if (v6)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (origString)
  {
    CFRelease(origString);
  }

  return v13;
}

OSStatus CMMetadataCreateKeySpaceFromIdentifier(CFAllocatorRef allocator, CFStringRef identifier, CFStringRef *keySpaceOut)
{
  cf = 0;
  theString1 = 0;
  if (!keySpaceOut)
  {
    CMMetadataCreateKeySpaceFromIdentifier_cold_5(&v15);
LABEL_27:
    v9 = 0;
    v10 = v15;
    goto LABEL_20;
  }

  *keySpaceOut = 0;
  if (!identifier)
  {
    CMMetadataCreateKeySpaceFromIdentifier_cold_4(&v15);
    goto LABEL_27;
  }

  if (CFStringCompare(identifier, @"anon", 0) == kCFCompareEqualTo)
  {
    v10 = 0;
    v9 = 0;
    *keySpaceOut = CFRetain(identifier);
    goto LABEL_20;
  }

  EncodedPartsOfIdentifier = getEncodedPartsOfIdentifier(allocator, identifier, &theString1, &cf);
  v7 = theString1;
  if (EncodedPartsOfIdentifier)
  {
    v10 = EncodedPartsOfIdentifier;
LABEL_12:
    v9 = 0;
    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_19:
    CFRelease(v7);
    goto LABEL_20;
  }

  if (CFStringCompare(theString1, @"common", 0) == kCFCompareEqualTo)
  {
    v11 = @"comn";
    goto LABEL_18;
  }

  if (CFStringCompare(v7, @"id3", 0) == kCFCompareEqualTo)
  {
    v11 = @"org.id3";
    goto LABEL_18;
  }

  if (CFStringCompare(v7, @"avch", 0) == kCFCompareEqualTo)
  {
    v11 = @"org.avchd-info";
LABEL_18:
    v9 = 0;
    v10 = 0;
    *keySpaceOut = CFRetain(v11);
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(*MEMORY[0x1E695E480], v7, &stru_1F0B78830, 0);
  v9 = v8;
  if (v8)
  {
    if (CFStringGetLength(v8))
    {
      if (CFStringGetLength(v9) < 5)
      {
        v10 = 0;
        *keySpaceOut = v9;
        goto LABEL_12;
      }

      CMMetadataCreateKeySpaceFromIdentifier_cold_1(&v15);
    }

    else
    {
      CMMetadataCreateKeySpaceFromIdentifier_cold_2(&v15);
    }
  }

  else
  {
    CMMetadataCreateKeySpaceFromIdentifier_cold_3(&v15);
  }

  v10 = v15;
  if (v7)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

OSStatus CMMetadataDataTypeRegistryRegisterDataType(CFStringRef dataType, CFStringRef description, CFArrayRef conformingDataTypes)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  v6 = gfigMetadataDataTypeRegistryStorage;

  return doFigMetadataDataTypeRegistryRegisterDataType(v6, dataType, description, conformingDataTypes);
}

uint64_t doFigMetadataDataTypeRegistryRegisterDataType(uint64_t a1, const __CFString *a2, const void *a3, CFArrayRef theArray)
{
  if (!a1)
  {
    doFigMetadataDataTypeRegistryRegisterDataType_cold_8(&v24);
    return v24;
  }

  if (!a2)
  {
    doFigMetadataDataTypeRegistryRegisterDataType_cold_7(&v24);
    return v24;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 0;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (!ValueAtIndex || (v13 = ValueAtIndex, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v13)))
        {
          doFigMetadataDataTypeRegistryRegisterDataType_cold_4(&v24);
          return v24;
        }

        v15 = *(a1 + 40);
        v25.length = CFArrayGetCount(v15);
        v25.location = 0;
        if (CFArrayContainsValue(v15, v25, v13))
        {
          if (v10)
          {
            if (CFStringCompare(v10, v13, 0))
            {
              doFigMetadataDataTypeRegistryRegisterDataType_cold_1(&v24);
              return v24;
            }
          }

          else
          {
            v10 = v13;
          }
        }

        else
        {
          Value = CFDictionaryGetValue(*(a1 + 16), v13);
          if (Value)
          {
            if (v10)
            {
              if (CFStringCompare(v10, Value, 0))
              {
                doFigMetadataDataTypeRegistryRegisterDataType_cold_2(&v24);
                return v24;
              }
            }

            else
            {
              v10 = Value;
            }
          }
        }
      }

      if (v10)
      {
        goto LABEL_22;
      }
    }

    doFigMetadataDataTypeRegistryRegisterDataType_cold_3(&v24);
    return v24;
  }

  v17 = *(a1 + 40);
  v26.length = CFArrayGetCount(v17);
  v26.location = 0;
  v18 = CFArrayContainsValue(v17, v26, a2);
  v10 = a2;
  if (!v18)
  {
    doFigMetadataDataTypeRegistryRegisterDataType_cold_6(&v24);
    return v24;
  }

LABEL_22:
  FigReentrantMutexLock(*a1);
  v19 = CFDictionaryGetValue(*(a1 + 8), a2);
  if (v19)
  {
    doFigMetadataDataTypeRegistryRegisterDataType_cold_5(v19, theArray, &v24);
    v22 = v24;
LABEL_31:
    FigReentrantMutexUnlock(*a1);
    return v22;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v22 = 4294950986;
    goto LABEL_31;
  }

  v21 = Mutable;
  if (a3)
  {
    CFDictionarySetValue(Mutable, @"Description", a3);
  }

  if (theArray)
  {
    CFDictionarySetValue(v21, @"ConformingDataTypes", theArray);
  }

  CFDictionarySetValue(*(a1 + 8), a2, v21);
  CFDictionarySetValue(*(a1 + 16), a2, v10);
  FigReentrantMutexUnlock(*a1);
  CFRelease(v21);
  return 0;
}

CFArrayRef CMMetadataDataTypeRegistryGetBaseDataTypes(void)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  if (gfigMetadataDataTypeRegistryStorage)
  {
    return *(gfigMetadataDataTypeRegistryStorage + 48);
  }

  else
  {
    return 0;
  }
}

Boolean CMMetadataDataTypeRegistryDataTypeIsBaseDataType(CFStringRef dataType)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  v2 = gfigMetadataDataTypeRegistryStorage;
  if (!gfigMetadataDataTypeRegistryStorage)
  {
    return 0;
  }

  result = 0;
  if (dataType && *(gfigMetadataDataTypeRegistryStorage + 16))
  {
    if (FigMetadataDataTypeIsDynamicBaseDataType(dataType))
    {
      return 1;
    }

    else
    {
      FigReentrantMutexLock(*v2);
      Value = CFDictionaryGetValue(*(v2 + 16), dataType);
      v5 = FigCFEqual(dataType, Value);
      FigReentrantMutexUnlock(*v2);
      return v5;
    }
  }

  return result;
}

uint64_t FigMetadataDataTypeIsDynamicBaseDataType(const void *a1)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  v2 = gfigMetadataDataTypeRegistryStorage;
  FigReentrantMutexLock(*gfigMetadataDataTypeRegistryStorage);
  v3 = CFDictionaryContainsKey(*(v2 + 24), a1);
  FigReentrantMutexUnlock(*v2);
  return v3;
}

Boolean CMMetadataDataTypeRegistryDataTypeIsRegistered(CFStringRef dataType)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  v2 = gfigMetadataDataTypeRegistryStorage;
  if (!gfigMetadataDataTypeRegistryStorage || !dataType || !*(gfigMetadataDataTypeRegistryStorage + 8))
  {
    return 0;
  }

  FigReentrantMutexLock(*gfigMetadataDataTypeRegistryStorage);
  v3 = CFDictionaryContainsKey(*(v2 + 8), dataType);
  FigReentrantMutexUnlock(*v2);
  return v3;
}

CFStringRef CMMetadataDataTypeRegistryGetDataTypeDescription(CFStringRef dataType)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  v2 = gfigMetadataDataTypeRegistryStorage;
  if (!gfigMetadataDataTypeRegistryStorage)
  {
    return 0;
  }

  if (!dataType)
  {
    return 0;
  }

  if (!*(gfigMetadataDataTypeRegistryStorage + 8))
  {
    return 0;
  }

  FigReentrantMutexLock(*gfigMetadataDataTypeRegistryStorage);
  Value = CFDictionaryGetValue(*(v2 + 8), dataType);
  FigReentrantMutexUnlock(*v2);
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, @"Description");
}

CFArrayRef CMMetadataDataTypeRegistryGetConformingDataTypes(CFStringRef dataType)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  v2 = gfigMetadataDataTypeRegistryStorage;
  if (!gfigMetadataDataTypeRegistryStorage)
  {
    return 0;
  }

  if (!dataType)
  {
    return 0;
  }

  if (!*(gfigMetadataDataTypeRegistryStorage + 8))
  {
    return 0;
  }

  FigReentrantMutexLock(*gfigMetadataDataTypeRegistryStorage);
  Value = CFDictionaryGetValue(*(v2 + 8), dataType);
  FigReentrantMutexUnlock(*v2);
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, @"ConformingDataTypes");
}

CFStringRef CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType(CFStringRef dataType)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  result = 0;
  if (dataType)
  {
    v3 = gfigMetadataDataTypeRegistryStorage;
    if (gfigMetadataDataTypeRegistryStorage)
    {
      if (*(gfigMetadataDataTypeRegistryStorage + 16))
      {
        if (!FigMetadataDataTypeIsDynamicBaseDataType(dataType))
        {
          FigReentrantMutexLock(*v3);
          dataType = CFDictionaryGetValue(*(v3 + 16), dataType);
          FigReentrantMutexUnlock(*v3);
        }

        return dataType;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

Boolean CMMetadataDataTypeRegistryDataTypeConformsToDataType(CFStringRef dataType, CFStringRef conformsToDataType)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  v4 = gfigMetadataDataTypeRegistryStorage;
  if (FigCFEqual(dataType, conformsToDataType))
  {
    return 1;
  }

  v5 = 0;
  if (dataType && conformsToDataType && v4)
  {
    if (*(v4 + 16) && (FigReentrantMutexLock(*v4), (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0)) != 0))
    {
      v8 = Mutable;
      CFArrayAppendValue(Mutable, dataType);
      v9 = 0;
      v5 = doDataTypeRegistryDatatypeConformsToDatatype(dataType, conformsToDataType, v8, v4, &v9);
      FigReentrantMutexUnlock(*v4);
      CFRelease(v8);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t doDataTypeRegistryDatatypeConformsToDatatype(const void *a1, const void *a2, const __CFArray *a3, uint64_t a4, _BYTE *a5)
{
  if (*a5)
  {
    return 0;
  }

  result = CFDictionaryGetValue(*(a4 + 8), a1);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"ConformingDataTypes");
    if (result)
    {
      v10 = result;
      Count = CFArrayGetCount(result);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v12 = Count;
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
          if (FigCFEqual(ValueAtIndex, a2))
          {
            break;
          }

          if (v12 == ++v13)
          {
            v15 = 0;
            while (1)
            {
              v16 = CFArrayGetValueAtIndex(v10, v15);
              v17.length = CFArrayGetCount(a3);
              v17.location = 0;
              if (CFArrayContainsValue(a3, v17, v16))
              {
                result = 0;
              }

              else
              {
                CFArrayAppendValue(a3, v16);
                result = doDataTypeRegistryDatatypeConformsToDatatype(v16, a2, a3, a4, a5);
                if (result)
                {
                  return 1;
                }

                if (*a5)
                {
                  return result;
                }
              }

              if (++v15 >= v12)
              {
                return result;
              }
            }
          }
        }

        return 1;
      }
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

CFStringRef FigMetadataCreateDynamicBaseDataType(const __CFAllocator *a1, int a2)
{
  valuePtr = a2;
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  v3 = gfigMetadataDataTypeRegistryStorage;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (!v4)
  {
    FigMetadataCreateDynamicBaseDataType_cold_4();
    return 0;
  }

  v5 = v4;
  FigReentrantMutexLock(*v3);
  Value = CFDictionaryGetValue(*(v3 + 32), v5);
  if (Value)
  {
    v7 = Value;
    CFRetain(Value);
    FigReentrantMutexUnlock(*v3);
  }

  else
  {
    v8 = CFUUIDCreate(a1);
    if (v8)
    {
      v9 = v8;
      v10 = CFUUIDCreateString(a1, v8);
      if (v10)
      {
        v11 = v10;
        v7 = CFStringCreateWithFormat(a1, 0, @"dyn.%@", v10);
        if (v7)
        {
          CFDictionarySetValue(*(v3 + 32), v5, v7);
          CFDictionarySetValue(*(v3 + 24), v7, v5);
          FigReentrantMutexUnlock(*v3);
        }

        else
        {
          FigMetadataCreateDynamicBaseDataType_cold_1();
        }

        CFRelease(v9);
        CFRelease(v11);
        goto LABEL_9;
      }

      FigMetadataCreateDynamicBaseDataType_cold_2(v9);
    }

    else
    {
      FigMetadataCreateDynamicBaseDataType_cold_3();
    }

    v7 = 0;
  }

LABEL_9:
  CFRelease(v5);
  return v7;
}

uint64_t FigMetadataGetQTWellKnownTypeFromDynamicBaseDataType(const void *a1)
{
  FigThreadRunOnce(&getDataTypeRegistryStorage_sCreateDataTypeRegistryGlobalsOnce, createDataTypeRegistryGlobalsOnce);
  FigThreadRunOnce(&getDataTypeRegistryStorage_sRegisterKnownDataTypesOnce, registerKnownDataTypesOnce);
  v2 = gfigMetadataDataTypeRegistryStorage;
  valuePtr = 0;
  FigReentrantMutexLock(*gfigMetadataDataTypeRegistryStorage);
  Value = CFDictionaryGetValue(*(v2 + 24), a1);
  FigReentrantMutexUnlock(*v2);
  if (!Value)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  return valuePtr;
}

const __CFString *FigMetadataKeyGetUInt32(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (CFNumberGetTypeID() == v2)
    {

      return FigCFNumberGetUInt32(v1);
    }

    else if (CFStringGetTypeID() == v2)
    {
      return CFStringGetDoubleValue(v1);
    }

    else if (CFDataGetTypeID() == v2)
    {
      return bswap32(*CFDataGetBytePtr(v1));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFString *FigMetadataKeyGetLocalIDUInt32(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"MetadataKeyLocalID");

  return FigMetadataKeyGetUInt32(Value);
}

uint64_t FigMetadataKeyGetDatatypeUInt32(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"MetadataKeyDataType");
  if (!Value)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = Value;
  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(v2))
  {
    v4 = CFDataGetTypeID();
    if (v4 != CFGetTypeID(v2))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v5 = CFNumberGetTypeID();
  if (v5 != CFGetTypeID(v2))
  {
    Length = CFDataGetLength(v2);
    switch(Length)
    {
      case 4:
        *v8 = 0;
        v14.location = 0;
        v14.length = 4;
        CFDataGetBytes(v2, v14, v8);
        return bswap32(*v8);
      case 2:
        *v9 = 0;
        v13.location = 0;
        v13.length = 2;
        CFDataGetBytes(v2, v13, v9);
        return bswap32(*v9) >> 16;
      case 1:
        buffer = 0;
        v12.location = 0;
        v12.length = 1;
        CFDataGetBytes(v2, v12, &buffer);
        return buffer;
    }

    return 0xFFFFFFFFLL;
  }

  return FigMetadataKeyGetUInt32(v2);
}