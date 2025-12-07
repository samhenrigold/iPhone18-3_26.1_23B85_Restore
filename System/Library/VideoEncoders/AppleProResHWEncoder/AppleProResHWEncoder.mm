void *writeMExtHeaderTag(void *result, unsigned int a2, int a3, int a4)
{
  if (result)
  {
    if (result[1] - *result >= (a2 + 8))
    {
      v4 = (*result + a2);
      *v4 = HIBYTE(a3);
      v4[1] = BYTE2(a3);
      v4[2] = BYTE1(a3);
      v4[3] = a3;
      v4[4] = HIBYTE(a4);
      v4[5] = BYTE2(a4);
      v4[6] = BYTE1(a4);
      v4[7] = a4;
    }
  }

  return result;
}

uint64_t *writeMExtPSIMIdentifier(uint64_t *result, unsigned int a2, unsigned int a3, char *__s)
{
  if (result)
  {
    v6 = *result;
    if (result[1] - *result >= (a2 + a3 + 1))
    {
      result = strlen(__s);
      if (result == a3)
      {
        v8 = result;
        v9 = (v6 + a2);
        *v9 = a3;
        v10 = v9 + 1;

        return memcpy(v10, __s, v8);
      }
    }
  }

  return result;
}

double addEOMDTagToMetaExt(char **a1)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (v3 > 0xFFFFFFFFFFFFFFF7)
  {
    v5 = &v2[v3 + 8];
    a1[1] = v5;
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v2 = *a1;
    v5 = a1[1];
  }

  if (v5 - v2 >= (v3 + 8))
  {
    result = 5.82416308e175;
    *&v2[v3] = 0x646D6F6508000000;
  }

  return result;
}

void checkIfMetadataTagsArePresent(char **result, uint64_t a2)
{
  v3 = *result;
  v4 = result[1] - *result;
  if (v4 < 8)
  {
    v8 = result[1] - *result;
    goto LABEL_16;
  }

  v6 = *a2 + 1;
  v7 = *result;
  v8 = result[1] - *result;
  while (1)
  {
    v9 = bswap32(*v7);
    v12 = bswap32(v7[1]);
    v13 = v9;
    MetadataSetTag = findMetadataSetTag(v7, v8, &v13, &v12);
    if (MetadataSetTag > 3)
    {
      if (MetadataSetTag == 4)
      {
        *(a2 + 5) = 1;
      }

      else if (MetadataSetTag == 5)
      {
        *(a2 + 6) = 1;
      }

      goto LABEL_13;
    }

    if (MetadataSetTag == 2)
    {
      *(a2 + 7) = 1;
      goto LABEL_13;
    }

    if (MetadataSetTag != 3)
    {
      break;
    }

    *(a2 + 4) = 1;
LABEL_13:
    *a2 = v6;
    v7 = (v7 + v9);
    LODWORD(v8) = v8 - v9;
    ++v6;
    if (v8 <= 7)
    {
      goto LABEL_16;
    }
  }

  if (MetadataSetTag != 1)
  {
    goto LABEL_13;
  }

  *(a2 + 8) = 1;
  *a2 = v6;
  LODWORD(v8) = v8 - v9;
LABEL_16:
  v11 = v4 - v8;
  if (v4 >= v8)
  {
    if (v4 > v11)
    {
      result[1] = &v3[v11];
    }
  }

  else
  {

    std::vector<unsigned char>::__append(result, -v8);
  }
}

uint64_t findMetadataSetTag(const char *a1, unsigned int a2, unsigned int *a3, const unsigned int *a4)
{
  v4 = *a3;
  if (*a3 < 8 || v4 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a4 == 1701801316)
  {
    return v4 == 8;
  }

  if (*a4 != 1886611821)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if (v4 >= 0x24 && v7 == 26)
  {
    return 2 * (strncmp(a1 + 9, "com.apple.ispdebugmetadata", 0x1AuLL) == 0);
  }

  if (v4 == 99 && v7 == 13)
  {
    v9 = strncmp(a1 + 9, "com.apple.gdc", 0xDuLL) == 0;
    LODWORD(v6) = 3;
    goto LABEL_16;
  }

  if (v4 == 86 && v7 == 13)
  {
    return 4 * (strncmp(a1 + 9, "com.apple.vdd", 0xDuLL) == 0);
  }

  v6 = 0;
  if (v4 == 34 && v7 == 13)
  {
    v9 = strncmp(a1 + 9, "com.apple.lsc", 0xDuLL) == 0;
    LODWORD(v6) = 5;
LABEL_16:
    if (v9)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void extractISPDebugMetadataFromFrameMetaExt(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFPropertyListRef *a6)
{
  if (!*a6)
  {
    format[5] = v6;
    format[6] = v7;
    v9 = *MEMORY[0x29EDB8ED8];
    v10 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], (a3 + 35), (a1 - 35), *MEMORY[0x29EDB8EE8]);
    format[0] = kCFPropertyListBinaryFormat_v1_0;
    *a6 = CFPropertyListCreateWithData(v9, v10, 0, format, 0);
    CFRelease(v10);
  }
}

BOOL addISPDebugMetadataToMetaExt(CFPropertyListRef propertyList, char **a2, _BYTE *a3, uint64_t a4, const char *a5, int a6)
{
  v27 = *MEMORY[0x29EDCA608];
  v11 = *MEMORY[0x29EDB8ED8];
  Data = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  Length = CFDataGetLength(Data);
  v14 = Length;
  if (Length)
  {
    v15 = *a2;
    v16 = a2[1];
    v17 = v16 - *a2;
    v18 = Length + 35;
    v19 = (Length + 35 + v17);
    if (v19 <= v17)
    {
      if (v19 < v17)
      {
        v16 = &v15[v19];
        a2[1] = &v15[v19];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a2, v19 - v17);
      v15 = *a2;
      v16 = a2[1];
    }

    if (v16 - v15 >= (v17 + 8))
    {
      v20 = &v15[v17];
      *v20 = HIBYTE(v18);
      v20[1] = BYTE2(v18);
      v20[2] = BYTE1(v18);
      v20[3] = v18;
      *(v20 + 1) = 1835627376;
    }

    writeMExtPSIMIdentifier(a2, v17 + 8, 0x1Au, "com.apple.ispdebugmetadata");
    v28.location = 0;
    v28.length = v14;
    CFDataGetBytes(Data, v28, &(*a2)[v17 + 35]);
    *a3 = 1;
    if (*a5)
    {
      v21 = CFPropertyListCreateData(v11, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
      BytePtr = CFDataGetBytePtr(v21);
      v23 = CFDataGetLength(v21);
      snprintf(__str, 0x96uLL, "%s/frame-%03d.plist", a5, a6);
      v24 = fopen(__str, "wb");
      fwrite(BytePtr, 1uLL, v23, v24);
      fclose(v24);
      CFRelease(v21);
    }
  }

  return v14 != 0;
}

uint64_t addGDCMetadataToMetaExt(const __CFDictionary *a1, char **a2, _BYTE *a3)
{
  v25 = 0x3F80000000000000;
  v26[0] = 1;
  result = CFDictionaryGetValue(a1, @"ProResRawGDCMetadata");
  if (result || (result = CFDictionaryGetValue(a1, @"WarpRectilinear2")) != 0)
  {
    v7 = result;
    ValueAtIndex = CFArrayGetValueAtIndex(result, 19);
    if (ValueAtIndex)
    {
      CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, &v22);
    }

    v9 = CFArrayGetValueAtIndex(v7, 20);
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberFloat32Type, &v23);
    }

    v10 = 0;
    v11 = v24;
    do
    {
      v12 = CFArrayGetValueAtIndex(v7, v10);
      if (v12)
      {
        CFNumberGetValue(v12, kCFNumberFloat32Type, v11);
      }

      ++v10;
      v11 += 4;
    }

    while (v10 != 15);
    v13 = CFArrayGetValueAtIndex(v7, 17);
    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberFloat32Type, &v25);
    }

    v14 = CFArrayGetValueAtIndex(v7, 18);
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberFloat32Type, &v25 + 4);
    }

    v15 = CFArrayGetValueAtIndex(v7, 21);
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberSInt32Type, v26);
    }

    v16 = *a2;
    v17 = a2[1];
    v18 = v17 - *a2;
    v19 = (v18 + 99);
    if (v19 <= v18)
    {
      if (v19 < v18)
      {
        v17 = &v16[v19];
        a2[1] = &v16[v19];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a2, v19 - v18);
      v16 = *a2;
      v17 = a2[1];
    }

    if (v17 - v16 >= (v18 + 8))
    {
      *&v16[v18] = 0x6D69737063000000;
    }

    writeMExtPSIMIdentifier(a2, v18 + 8, 0xDu, "com.apple.gdc");
    v20 = 0;
    v21 = &(*a2)[v18];
    *(v21 + 22) = bswap32(v22);
    *(v21 + 26) = bswap32(v23);
    do
    {
      *(v21 + 30 + v20) = bswap32(*&v24[v20]);
      v20 += 4;
    }

    while (v20 != 60);
    *(v21 + 90) = bswap32(v25);
    *(v21 + 94) = bswap32(HIDWORD(v25));
    *(v21 + 98) = v26[0];
    result = 1;
    *a3 = 1;
  }

  return result;
}

BOOL addVDDMetadataToMetaExt(const __CFDictionary *a1, char **a2, _BYTE *a3, int a4)
{
  v55 = *MEMORY[0x29EDCA608];
  v42 = xmmword_295323EE0;
  v43 = unk_295323EF0;
  v44 = 1065353216;
  Value = CFDictionaryGetValue(a1, @"ProResRawNRMetadata");
  v9 = Value;
  if (Value)
  {
    v34 = 0;
    v33 = 0.0;
    v10 = CFDictionaryGetValue(Value, *MEMORY[0x29EDC0388]);
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberFloat32Type, &valuePtr);
    }

    v11 = CFDictionaryGetValue(v9, *MEMORY[0x29EDC0378]);
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberFloat32Type, &v36);
    }

    v12 = CFDictionaryGetValue(a1, @"PreDemosaicGain");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberFloat32Type, &v37);
    }

    v13 = CFDictionaryGetValue(a1, *MEMORY[0x29EDC0638]);
    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberFloat32Type, &v38);
    }

    v14 = CFDictionaryGetValue(v9, *MEMORY[0x29EDC0478]);
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberFloat32Type, &v34 + 4);
    }

    v15 = CFDictionaryGetValue(v9, *MEMORY[0x29EDC0678]);
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberFloat32Type, &v34);
    }

    v16 = CFDictionaryGetValue(v9, *MEMORY[0x29EDC0680]);
    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberFloat32Type, &v33);
    }

    v17 = CFDictionaryGetValue(v9, *MEMORY[0x29EDC0368]);
    if (v17)
    {
      CFNumberGetValue(v17, kCFNumberFloat32Type, &v39);
    }

    *&v18 = *(&v34 + 1) * *(&v34 + 1) * ((v39 * v39 + -1.0) * 64.0 * (v33 * v33) + (64.0 - v39 * v39) * (*&v34 * *&v34)) / 63.0;
    v40 = v18;
    v41 = v39 * *(&v34 + 1);
    v19 = CFDictionaryGetValue(a1, @"TemporalHomographyMatrix");
    v20 = v19;
    if (v19)
    {
      BytePtr = CFDataGetBytePtr(v19);
      Length = CFDataGetLength(v20);
      if (Length == 36)
      {
        v23 = *BytePtr;
        v24 = *(BytePtr + 1);
        v44 = *(BytePtr + 8);
        v42 = v23;
        v43 = v24;
      }

      else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110146;
        v46 = a4;
        v47 = 1024;
        v48 = 573;
        v49 = 2080;
        v50 = "addVDDMetadataToMetaExt";
        v51 = 2048;
        v52 = Length;
        v53 = 2048;
        v54 = 36;
        _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): Invalid Homography Matrix size: %zu, expected: %zu\n", buf, 0x2Cu);
      }
    }

    v25 = *a2;
    v26 = a2[1];
    v27 = v26 - *a2;
    v28 = (v27 + 86);
    if (v28 <= v27)
    {
      if (v28 < v27)
      {
        v26 = &v25[v28];
        a2[1] = &v25[v28];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a2, v28 - v27);
      v25 = *a2;
      v26 = a2[1];
    }

    if (v26 - v25 >= (v27 + 8))
    {
      *&v25[v27] = 0x6D69737056000000;
    }

    writeMExtPSIMIdentifier(a2, v27 + 8, 0xDu, "com.apple.vdd");
    v29 = 0;
    v30 = &(*a2)[v27];
    *(v30 + 22) = bswap32(valuePtr);
    *(v30 + 26) = bswap32(v36);
    *(v30 + 30) = bswap32(v37);
    *(v30 + 34) = bswap32(v38);
    *(v30 + 38) = bswap32(LODWORD(v39));
    *(v30 + 42) = bswap32(v40);
    *(v30 + 46) = bswap32(LODWORD(v41));
    v31 = v30 + 50;
    do
    {
      *(v31 + v29) = bswap32(*(&v42 + v29));
      v29 += 4;
    }

    while (v29 != 36);
    *a3 = 1;
  }

  return v9 != 0;
}

BOOL addLSCMetadataToMetaExt(_BOOL8 result, char **a2, _BYTE *a3, int a4)
{
  v30 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v7 = result;
    v8 = *MEMORY[0x29EDC05A0];
    if (CFDictionaryContainsKey(result, *MEMORY[0x29EDC05A0]) && (v9 = *MEMORY[0x29EDC04B8], CFDictionaryContainsKey(v7, *MEMORY[0x29EDC04B8])) && (v10 = *MEMORY[0x29EDC06D8], CFDictionaryContainsKey(v7, *MEMORY[0x29EDC06D8])))
    {
      Value = CFDictionaryGetValue(v7, v8);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
      }

      v28 = 0;
      v12 = CFDictionaryGetValue(v7, v9);
      if (v12)
      {
        CGPointMakeWithDictionaryRepresentation(v12, &point.origin);
        v13 = vcvtq_f64_f32(vcvt_f32_f64(point.origin));
      }

      else
      {
        v13 = xmmword_295323ED0;
      }

      v26 = v13;
      v14 = CFDictionaryGetValue(v7, v10);
      if (v14)
      {
        CGRectMakeWithDictionaryRepresentation(v14, &point);
        __asm
        {
          FMOV            V2.2D, #-0.25
          FMOV            V1.2D, #0.5
        }

        v28 = vcvt_f32_f64(vmulq_f64(vaddq_f64(point.origin, vaddq_f64(v26, vmulq_f64(point.size, _Q2))), _Q1));
      }

      v21 = *a2;
      v22 = a2[1];
      v23 = v22 - *a2;
      v24 = (v23 + 34);
      if (v24 <= v23)
      {
        if (v24 < v23)
        {
          v22 = &v21[v24];
          a2[1] = &v21[v24];
        }
      }

      else
      {
        std::vector<unsigned char>::__append(a2, v24 - v23);
        v21 = *a2;
        v22 = a2[1];
      }

      if (v22 - v21 >= (v23 + 8))
      {
        *&v21[v23] = 0x6D69737022000000;
      }

      writeMExtPSIMIdentifier(a2, v23 + 8, 0xDu, "com.apple.lsc");
      v25 = &(*a2)[v23];
      *(v25 + 22) = bswap32(valuePtr);
      *(v25 + 26) = bswap32(v28.u32[0]);
      *(v25 + 30) = bswap32(v28.u32[1]);
      result = 1;
      *a3 = 1;
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        LODWORD(point.origin.x) = 67109634;
        HIDWORD(point.origin.x) = a4;
        point.origin.y = 1.51430681e-269;
        *&point.size.width = "addLSCMetadataToMetaExt";
        _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): LSC metadata keys not present in metadataDictionary\n", &point, 0x18u);
        return 0;
      }
    }
  }

  return result;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EDCAFC0, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - v5;
    memcpy(v32, v5, v10 - v5);
    *(a1 + 8) = v5;
    v34 = &v13[v11 - v5];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = v5;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &v5[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = v5 - &__src[__len];
      v23 = v5 - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[__len], v5, v19 - v20);
    }

    v24 = v5;
    v25 = __src;
    v26 = v10 - v5;
LABEL_27:
    memmove(v24, v25, v26);
  }

  return v5;
}

BOOL interchange_compression::check_valid_lossy_level(interchange_compression *this, unsigned int a2)
{
  v2 = this - 1;
  result = 0;
  if (a2 || v2 >= 2)
  {
    v3 = a2 == 6 || a2 == 8;
    v4 = v3;
    if (this != 2 || !v4)
    {
      v5 = a2 != 25 && a2 - 9 >= 2;
      v6 = !v5;
      if ((this != 3 || !v6) && (a2 > 0x1A || ((1 << a2) & 0x4C00000) == 0 || v2 >= 2))
      {
        return 1;
      }
    }
  }

  return result;
}

void interchange_compress_plane(const void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v66 = v8;
  v76 = v9;
  v77 = v10;
  v96 = *MEMORY[0x29EDCA608];
  if (v6)
  {
    v11 = 16;
  }

  else
  {
    v11 = 32;
  }

  v88 = v11;
  if (v5 > 0x10 || (v12 = v5, ((1 << v5) & 0x11500) == 0))
  {
    interchange_compress_plane();
  }

  v13 = v6;
  v14 = v4;
  v15 = v3;
  if (v6)
  {
    v16 = 12;
  }

  else
  {
    v16 = 5;
  }

  if (v6)
  {
    v17 = 17;
  }

  else
  {
    v17 = 7;
  }

  if (v6)
  {
    v18 = 10;
  }

  else
  {
    v18 = 3;
  }

  if (v5 == 10)
  {
    v17 = v18;
  }

  if (v5 != 12)
  {
    v16 = v17;
  }

  if (v6)
  {
    v19 = 8;
  }

  else
  {
    v19 = 1;
  }

  if (v5 == 8)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  if (v6)
  {
    v21 = 4;
  }

  else
  {
    v21 = 5;
  }

  v80 = v21;
  v75 = interchange_compression::lossy_parameters[28 * v20 + 4 + v7];
  interchange_compression::compressor::compressor(v94, v20, 0, v7, 0);
  memset(v95, 0, sizeof(v95));
  if (v66)
  {
    v68 = 0;
    v83 = 0;
    v22 = (v88 - 1 + v14) >> v80;
    v23 = (v88 - 1 + v66) >> v80;
    v24 = 32 - __clz(v23 - 1);
    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = 32 - __clz(v22 - 1);
    if (v22 < 2)
    {
      v26 = 0;
    }

    if (v26 >= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    v28 = 5;
    if (v13)
    {
      v28 = 3;
    }

    v72 = v28;
    v73 = 2 * v27;
    v70 = (v27 + 1) & 0x7E;
    v69 = vdupq_n_s64(v27 - 1);
    v29 = vdupq_n_s64(2uLL);
    v67 = 1;
    v71 = v29;
    v74 = v27;
    do
    {
      if (v14)
      {
        v30 = 0;
        v31 = v83 >> v80;
        v79 = v31 * ((v88 - 1 + v14) >> v80);
        v32 = vdupq_n_s64(v31);
        v34 = v67;
        v33 = v68;
        v78 = v32;
        do
        {
          v35 = v30 >> v80;
          if (v27)
          {
            v36 = vdupq_n_s64(v35);
            v37 = 0uLL;
            v38 = v70;
            v39 = xmmword_295323F10;
            do
            {
              v40 = v37;
              v41 = v39;
              v42 = vnegq_s64(v39);
              v43 = vdupq_n_s64(1uLL);
              v44 = vaddq_s64(v41, v41);
              v37 = vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v36, v42), v43), v44), vshlq_u64(vandq_s8(vshlq_u64(v32, v42), v43), vorrq_s8(v44, v43))), v40);
              v39 = vaddq_s64(v41, v29);
              v38 -= 2;
            }

            while (v38);
            v45 = vbslq_s8(vcgtq_u64(v41, v69), v40, v37);
            v46 = vorr_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
          }

          else
          {
            v46 = 0;
          }

          v47 = 0;
          v48 = (v77 + ((v35 + v79) * v75));
          v49 = (v76 + ((*&v46 | ((v35 | (v83 >> v80)) >> v27 << v73)) << v72));
          v81 = v34;
          v82 = v33;
          v84 = v30;
          do
          {
            v50 = 0;
            v87 = v47;
            v51 = v83 + v47;
            v85 = v34;
            v86 = v33;
            v52 = v34;
            do
            {
              v91 = v50;
              v92 = v49;
              v53 = 0;
              v54 = v95;
              v90 = v33;
              v55 = v33;
              v89 = v52;
              v56 = v30;
              do
              {
                v57 = 8;
                v58 = v30;
                v59 = v55;
                v60 = v52;
                v61 = v54;
                do
                {
                  if (v53 + v51 >= v66 || v58 >= v14)
                  {
                    *v61 = 0;
                    if (v13)
                    {
                      (*v61)[0][1] = 0;
                    }
                  }

                  else if (v13)
                  {
                    v62 = v60 - 1;
                    if (v12 == 8)
                    {
                      *v61 = *(v15 + v62);
                      v63 = *(v15 + v60);
                    }

                    else
                    {
                      *v61 = *(v15 + 2 * v62);
                      v63 = *(v15 + 2 * v60);
                    }

                    (*v61)[0][1] = v63;
                  }

                  else
                  {
                    if (v12 == 8)
                    {
                      v64 = *(v15 + v59);
                    }

                    else
                    {
                      v64 = *(v15 + 2 * v59);
                    }

                    *v61 = v64;
                  }

                  v61 = (v61 + 16);
                  v60 += 2;
                  ++v59;
                  ++v58;
                  --v57;
                }

                while (v57);
                ++v53;
                ++v54;
                v52 += 2 * v14;
                v55 += v14;
              }

              while (v53 != 4);
              *v93 = 0;
              interchange_compression::compressor::compress(v94, v95, 8u, 4u, v48, &v93[1], v93);
              v65 = v93[0];
              *v92 = v93[1];
              v49 = v92 + 1;
              v48 += v65;
              v50 = v91 + 8;
              v52 = v89 + 16;
              v33 = v90 + 8;
              v30 = v56 + 8;
            }

            while (v91 + 8 < v88);
            v47 = v87 + 4;
            v34 = v85 + 8 * v14;
            v33 = v86 + 4 * v14;
            v30 = v84;
          }

          while (v87 + 4 < v88);
          v30 = v84 + v88;
          v34 = v81 + 2 * v88;
          v33 = v82 + v88;
          LODWORD(v27) = v74;
          v29 = v71;
          v32 = v78;
        }

        while (v84 + v88 < v14);
      }

      v67 += 2 * v88 * v14;
      v68 += v88 * v14;
      v83 += v88;
    }

    while (v83 < v66);
  }
}

void interchange_compression::compressor::compress(interchange_compression::compressor *this, unsigned int (*a2)[4][8][4], unsigned int a3, unsigned int a4, unsigned __int8 *a5, unsigned int *a6, unsigned int *a7)
{
  v324 = *MEMORY[0x29EDCA608];
  if (a3 - 9 <= 0xFFFFFFF7)
  {
    interchange_compression::compressor::compress();
  }

  if (a4 - 5 <= 0xFFFFFFFB)
  {
    interchange_compression::compressor::compress();
  }

  v10 = this + 4096;
  if (!interchange_compression::compressor::check_valid_predictors(this, a3, a4) || (v10[556] & 1) != 0)
  {
    v11 = 0;
    v12 = *(this + 1150);
    v13 = 8 * interchange_compression::memory_parameters[11 * v12 + 5];
    goto LABEL_6;
  }

  if (*(this + 1150) == 27)
  {
    v260 = -8;
  }

  else
  {
    v261 = 0;
    v262 = 0;
    v263 = this + 196;
    do
    {
      interchange_compression::compressor::compute_deltas(this, v261, a2, a3, a4);
      v264 = interchange_compression::compressor::compute_smallest_predictor(this, v261, a3, a4);
      v297[v261] = v264;
      v262 += vaddvq_s32(vmulq_s32(*&v263[212 * v264], xmmword_295323F20));
      ++v261;
      v263 += 1060;
    }

    while (v261 < *(&interchange_compression::format_table + 13 * *(this + 1150) + 2));
    v260 = v262 - 8;
  }

  header = interchange_compression::compressor::create_header(this, v297, a2);
  v12 = *(this + 1150);
  v13 = v260 + header + interchange_compression::memory_parameters[11 * v12 + 7];
  if (v12 != 27)
  {
    if (*(&interchange_compression::format_table + 13 * v12 + 2) <= 1u)
    {
      v266 = 1;
    }

    else
    {
      v266 = *(&interchange_compression::format_table + 13 * v12 + 2);
    }

    v267 = (this + 4272);
    v268 = 1;
    v11 = 1;
    while (1)
    {
      if (!*v267)
      {
        interchange_compression::compressor::compress();
      }

      v269 = *(v267 - 4);
      if ((~v269 & 3) != 0)
      {
        break;
      }

      if ((v269 & 0x10) != 0)
      {
        if (*(this + 1154) != 2)
        {
          break;
        }

        v270 = 0;
        if (v12 != 21 || v268 || (v269 & 4) != 0)
        {
          goto LABEL_346;
        }
      }

      else if ((v269 & 4) != 0)
      {
        break;
      }

      v270 = (v269 & 8) == 0;
LABEL_346:
      v11 &= v270;
      --v268;
      v267 += 3;
      if (!--v266)
      {
        goto LABEL_6;
      }
    }

    v270 = 0;
    goto LABEL_346;
  }

  v11 = 1;
  v12 = 27;
LABEL_6:
  v14 = &interchange_compression::memory_parameters[11 * v12];
  v15 = v14[5];
  v16 = v14[7];
  if (v15 >> v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 >> v16;
  }

  v18 = (v17 - 1 + ((v13 + 7) >> 3)) / v17;
  v19 = v17 * v18;
  v20 = *(this + 1151);
  if (v20)
  {
    v21 = interchange_compression::lossy_parameters[28 * v12 + 8 + v20];
    if (v19 > v21)
    {
      v274 = this;
      v273 = a4;
      v22 = 1;
      if ((v10[556] & 1) == 0)
      {
        v22 = v10[557];
      }

      v23 = 0;
      v24 = 0;
      v271 = v21 >> 2;
      v293 = 16843009 * (v22 & 1);
      v25 = xmmword_295323F50;
      v26.i64[0] = 0x100000001;
      v26.i64[1] = 0x100000001;
      v27 = xmmword_295323F40;
      v28 = xmmword_295323F30;
      v29 = a2;
      while (1)
      {
        v30 = 0;
        v31 = *(v274 + 1150);
        v32 = *(&interchange_compression::format_table + 13 * v31 + 2);
        v287 = v32;
        if (v32 <= 1)
        {
          v32 = 1;
        }

        v33 = 4 * v32;
        v34 = v23;
        do
        {
          if (v31 != 27)
          {
            v35 = vdupq_n_s32(v34);
            v36 = vshlq_u32(vandq_s8(vshlq_u32(v35, v28), v26), v27);
            v37 = vshlq_u32(vandq_s8(vshlq_u32(v35, v25), v26), v27);
            memcpy(&v296[v30], (*v29)[vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)).u32[0] | v37.i32[1]][vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL)).u32[0] | v36.i32[1]], v33);
            v28 = xmmword_295323F30;
            v27 = xmmword_295323F40;
            v26.i64[0] = 0x100000001;
            v26.i64[1] = 0x100000001;
            v25 = xmmword_295323F50;
          }

          ++v34;
          v30 += 16;
        }

        while (v30 != 128);
        v289 = v31;
        v38 = (2 * v24) & 4;
        v39 = (2 * v24) & 2;
        v40 = v38 + 4;
        v76 = a3 >= v38;
        v41 = a3 - v38;
        if (!v76)
        {
          v41 = 0;
        }

        if (v40 <= a3)
        {
          v42 = 4;
        }

        else
        {
          v42 = v41;
        }

        v43 = v39 + 2;
        v76 = v273 >= v39;
        v44 = v273 - v39;
        if (!v76)
        {
          v44 = 0;
        }

        if (v43 <= v273)
        {
          v45 = 2;
        }

        else
        {
          v45 = v44;
        }

        v281 = *(v274 + 1151) - 1;
        if (v281 > 2)
        {
          interchange_compression::compressor::compress();
        }

        *v284 = *(v274 + 1151);
        v288 = v24;
        v272 = v23;
        v46 = *(v274 + 1152);
        v47 = (&interchange_compression::format_table + 52 * v289);
        v290 = v47 + 3;
        v291 = v46 & 0xFFFFFFFE;
        v48 = v287;
        if (v289 != 27)
        {
          break;
        }

LABEL_32:
        *v316 = 0;
        v317 = 0;
        memset(v315, 0, sizeof(v315));
        v314[0] = interchange_compression::get_id(v47[3], v15);
        v314[1] = interchange_compression::get_id(v47[4], v49);
        v314[2] = interchange_compression::get_id(v47[5], v50);
        v314[3] = interchange_compression::get_id(v47[6], v51);
        interchange_compression::derive_sharing(v48, v314, v323, v316, v315, v52);
        if (v289 == 27)
        {
          v310 = 0;
          v311 = 0;
          v308 = 0u;
          v309 = 0u;
          v306 = 0u;
          v307 = 0u;
          v304 = 0u;
          v305 = 0u;
          v303 = 0u;
          LOBYTE(v54) = *(&v294[-1] + v24);
          goto LABEL_251;
        }

        v102 = 0;
        if (v42)
        {
          v103 = v45 == 0;
        }

        else
        {
          v103 = 1;
        }

        v104 = v103;
        v280 = v104;
        v105 = v318;
        do
        {
          v106 = v290[v102];
          id = interchange_compression::get_id(v106, v53);
          v108 = id;
          v109 = v323[v102];
          v110 = &interchange_compression::dq_consts[160 * id + 10 * v109];
          v285 = *(v110 + 1);
          v111 = interchange_compression::dq_lossy_level[3 * id + v281];
          v112 = v110[4];
          LODWORD(v110) = v110[5];
          v113 = &v313[v102];
          *v113 = v111 + v112;
          v114 = &v312[v102];
          *v114 = v110 + v111;
          v115 = v316[v102];
          v116 = v315[v102];
          interchange_compression::adjust_level(id, v109, v115, v116, v113, v114, v117);
          if (v108 == 5 && v109 == 1 && v116 - v115 <= 1)
          {
            *(&v294[-1] + v288) = 1;
          }

          v118.i64[0] = 0x100000001;
          v118.i64[1] = 0x100000001;
          v53 = *v284;
          if (v46 == 1)
          {
            v119 = 0;
            v120 = *(&v294[-1] + v288);
            if (v108 == 4)
            {
              v121 = -2139095041;
            }

            else
            {
              v121 = -1;
            }

            if (v108 == 3)
            {
              v121 = -31745;
            }

            v122 = v105;
            do
            {
              v123 = vdupq_n_s32(v119);
              v124 = vshlq_u32(vandq_s8(vshlq_u32(v123, xmmword_295323F50), v118), xmmword_295323F40);
              v125 = vshlq_u32(vandq_s8(vshlq_u32(v123, xmmword_295323F30), v118), xmmword_295323F40);
              v126 = vorr_s8(*v125.i8, *&vextq_s8(v125, v125, 8uLL)).u32[0] | v125.i32[1];
              if ((vorr_s8(*v124.i8, *&vextq_s8(v124, v124, 8uLL)).u32[0] | v124.i32[1]) < v45 && v126 < v42)
              {
                v129 = (*v122 | v121) == 0xFFFFFFFF || *v122 == 1 << (v106 - 1);
                v120 |= v129;
                *(&v294[-1] + v288) = v120;
              }

              ++v119;
              v122 += 4;
            }

            while (v119 != 8);
          }

          if (v280)
          {
            *(&v294[-1] + v288) = 1;
          }

          if (v285 >> v312[v102] > 1 << interchange_compression::lossy_parameters[28 * v289 + 12 + 4 * *v284 + v102])
          {
            *(&v294[-1] + v288) = 1;
          }

          ++v102;
          ++v105;
        }

        while (v102 != v287);
        v130 = 0;
        v310 = 0;
        v311 = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v304 = 0u;
        v305 = 0u;
        v131 = v320;
        v132 = v318;
        v303 = 0u;
        do
        {
          v133 = v290[v130];
          v134 = interchange_compression::get_id(v133, v53);
          v135 = 0;
          v136 = v323[v130];
          if (v133 >= v313[v130])
          {
            v137 = v313[v130];
          }

          else
          {
            v137 = v133;
          }

          v313[v130] = v137;
          v138 = -1 << v133;
          v139 = &interchange_compression::dq_consts[160 * v134 + 10 * v136];
          if (v139[5])
          {
            v140 = v133;
          }

          else
          {
            v140 = 0;
          }

          if (v140 >= v312[v130])
          {
            v140 = v312[v130];
          }

          v312[v130] = v140;
          v141 = *(v139 + 1);
          v142 = v321[v130] & (-1 << (v133 - v137));
          *(&v310 + v130) = v142;
          if (v141 >> v140 <= 1)
          {
            v143 = 1;
          }

          else
          {
            v143 = v141 >> v140;
          }

          v144 = v132;
          v145.i64[0] = 0x100000001;
          v145.i64[1] = 0x100000001;
          do
          {
            v146 = *v144;
            v144 += 4;
            v147 = v146 - v142;
            v148 = vdupq_n_s32(v135);
            v149 = vshlq_u32(vandq_s8(vshlq_u32(v148, xmmword_295323F50), v145), xmmword_295323F40);
            v150 = vshlq_u32(vandq_s8(vshlq_u32(v148, xmmword_295323F30), v145), xmmword_295323F40);
            v151 = vorr_s8(*v149.i8, *&vextq_s8(v149, v149, 8uLL)).u32[0] | v149.i32[1];
            if ((vorr_s8(*v150.i8, *&vextq_s8(v150, v150, 8uLL)).u32[0] | v150.i32[1]) >= v42 || v151 >= v45)
            {
              v147 = 0;
            }

            *&v131[4 * v135++] = v147;
          }

          while (v135 != 8);
          if (v133 == 2 && v141 >> v140 > 1)
          {
            interchange_compression::compressor::compress();
          }

          v153 = 0;
          v154 = 0;
          v155 = 1 << (v133 - 1);
          v156 = 2 * v143 - 1;
          v157 = v322[v130];
          v282 = v143 + v155;
          v54 = *(&v294[-1] + v288);
          v53 = ~(-1 << v140);
          v158 = 1 << v133;
          v286 = v141 + v142;
          v159 = (1 << v133) - 1;
          v160 = (1 << v133) - 1;
          v161 = &v303 + 28 * v130;
          v162 = v132;
          do
          {
            if (v157 == v153)
            {
              goto LABEL_236;
            }

            if (v140)
            {
              v163 = *&v131[4 * v153] / v143;
            }

            else
            {
              LODWORD(v163) = 0;
            }

            *&v161[4 * v154] = v163;
            if (v143 < 2)
            {
              v166 = 0;
LABEL_197:
              v168 = 0;
              goto LABEL_198;
            }

            v164 = *&v131[4 * v153];
            if (!v164 || (!(v164 % v143) ? (v165 = ((v164 / v143) & 1) == 0) : (v165 = 1), v165))
            {
              v166 = 0;
            }

            else
            {
              if (v142)
              {
                if (v291 != 2)
                {
                  v168 = ((v143 ^ *v162 ^ v142) & v156) == 0;
                  v166 = 1;
                  goto LABEL_198;
                }
              }

              else
              {
                v166 = v163 != 1;
                if (v291 != 2 || v163 == 1)
                {
                  v167 = *v162;
                  if (((v143 ^ v167) & v156) != 0)
                  {
                    goto LABEL_197;
                  }

                  goto LABEL_246;
                }
              }

              v190 = *v162;
              v166 = v190 != v155;
              if (v190 != v155)
              {
                v166 = v282 != v190;
              }
            }

            LODWORD(v167) = *v162;
            if (((v143 ^ *v162 ^ v142) & v156) != 0)
            {
              goto LABEL_197;
            }

            if (v142)
            {
              if (v291 == 2)
              {
                goto LABEL_248;
              }

              v168 = 1;
              goto LABEL_198;
            }

LABEL_246:
            v168 = v143 != v164;
            if (v291 == 2 && v143 != v164)
            {
LABEL_248:
              v168 = v167 != v155;
              if (v167 != v155)
              {
                v168 = v282 != v167;
              }
            }

LABEL_198:
            v169 = vdupq_n_s32(v153);
            v170 = vshlq_u32(vandq_s8(vshlq_u32(v169, xmmword_295323F50), v145), xmmword_295323F40);
            v171 = vshlq_u32(vandq_s8(vshlq_u32(v169, xmmword_295323F30), v145), xmmword_295323F40);
            v172 = vorr_s8(*v171.i8, *&vextq_s8(v171, v171, 8uLL)).u32[0] | v171.i32[1];
            v173 = v166 ^ v168;
            if ((vorr_s8(*v170.i8, *&vextq_s8(v170, v170, 8uLL)).u32[0] | v170.i32[1]) < v45 && v172 < v42 && v173 != 0)
            {
              interchange_compression::compressor::compress();
            }

            if (v166)
            {
              LODWORD(v163) = v163 - 1;
              *&v161[4 * v154] = v163;
            }

            if (v163 >> v140 || (*v162 ^ v138) == 0xFFFFFFFF)
            {
              *&v161[4 * v154] = v53;
              LODWORD(v163) = ~(-1 << v140);
            }

            v176 = vdupq_n_s32(v153);
            v177 = vshlq_u32(vandq_s8(vshlq_u32(v176, xmmword_295323F50), v145), xmmword_295323F40);
            v178 = vshlq_u32(vandq_s8(vshlq_u32(v176, xmmword_295323F30), v145), xmmword_295323F40);
            v179 = vorr_s8(*v178.i8, *&vextq_s8(v178, v178, 8uLL)).u32[0] | v178.i32[1];
            if ((vorr_s8(*v177.i8, *&vextq_s8(v177, v177, 8uLL)).u32[0] | v177.i32[1]) >= v45 || v179 >= v42)
            {
              LODWORD(v163) = 0;
              *&v161[4 * v154] = 0;
            }

            if (!v54)
            {
              v181 = vdupq_n_s32(v153);
              v182 = vshlq_u32(vandq_s8(vshlq_u32(v181, xmmword_295323F50), v145), xmmword_295323F40);
              v183 = vshlq_u32(vandq_s8(vshlq_u32(v181, xmmword_295323F30), v145), xmmword_295323F40);
              v184 = vorr_s8(*v183.i8, *&vextq_s8(v183, v183, 8uLL)).u32[0] | v183.i32[1];
              if ((vorr_s8(*v182.i8, *&vextq_s8(v182, v182, 8uLL)).u32[0] | v182.i32[1]) < v45 && v184 < v42)
              {
                v186 = 0;
                if (v140)
                {
                  if (v163 | v142)
                  {
                    if (v286 < v158 || (v186 = v159, ((-1 << v140) ^ v163) != 0xFFFFFFFFFFFFFFFFLL))
                    {
                      v186 = v143 / 2 + v143 * v163;
                    }
                  }
                }

                v187 = *v162;
                v188 = v186 + v142;
                if (v188 >= v158)
                {
                  v188 = v160;
                }

                LODWORD(v189) = v187 - v188;
                if (v187 - v188 >= 0)
                {
                  v189 = v189;
                }

                else
                {
                  v189 = (v188 - v187);
                }

                if (v189 >> interchange_compression::lossy_parameters[28 * v289 + 12 + 4 * *v284 + v130])
                {
                  interchange_compression::compressor::compress();
                }

                if (v159 <= v187 && v188 != v187)
                {
                  interchange_compression::compressor::compress();
                }
              }
            }

            ++v154;
LABEL_236:
            ++v153;
            v162 += 4;
          }

          while (v153 != 8);
          ++v130;
          v131 += 32;
          ++v132;
          v48 = v287;
        }

        while (v130 != v287);
LABEL_251:
        v191 = v289;
        v192 = interchange_compression::lossy_parameters[28 * v289 + 8 + *v284];
        v300 = &a5[v288 * v271];
        v299 = v192 >> 2;
        v283 = 2 * (v192 & 0x1FFFFFFF);
        v301 = 0;
        v302 = 0;
        bzero(v300, v192 >> 2);
        if (v54)
        {
          v194 = 0;
          v195 = 0;
          v196 = v318;
          v27 = xmmword_295323F40;
          v25 = xmmword_295323F50;
          v26.i64[0] = 0x100000001;
          v26.i64[1] = 0x100000001;
          v28 = xmmword_295323F30;
          do
          {
            v292 = v196;
            if (v289 != 27)
            {
              v197 = vdupq_n_s32(v194);
              v198 = vshlq_u32(vandq_s8(vshlq_u32(v197, v25), v26), v27);
              v199 = vshlq_u32(vandq_s8(vshlq_u32(v197, v28), v26), v27);
              v200 = vorr_s8(*v199.i8, *&vextq_s8(v199, v199, 8uLL)).u32[0] | v199.i32[1];
              v202 = (vorr_s8(*v198.i8, *&vextq_s8(v198, v198, 8uLL)).u32[0] | v198.i32[1]) >= v45 || v200 >= v42;
              v204 = &interchange_compression::lossy_parameters[28 * v289 + 12 + 4 * *v284];
              v203 = v287;
              v205 = v290;
              do
              {
                v207 = *v204++;
                v206 = v207;
                if (v202)
                {
                  v208 = 0;
                  v209 = *v205;
                }

                else
                {
                  v208 = *v196 >> v206;
                  v209 = *v205;
                  if (*v205 == 2)
                  {
                    if (v208 != *v196)
                    {
                      interchange_compression::compressor::compress();
                    }

                    v209 = 2;
                    v208 = *v196;
                  }
                }

                v210 = v209 - v206;
                bit_pack::pack(v298, v208, v209 - v206);
                v195 += v210;
                ++v205;
                ++v196;
                --v203;
                v27 = xmmword_295323F40;
                v25 = xmmword_295323F50;
                v26.i64[0] = 0x100000001;
                v26.i64[1] = 0x100000001;
                v28 = xmmword_295323F30;
              }

              while (v203);
            }

            ++v194;
            v196 = v292 + 4;
          }

          while (v194 != 8);
          if (v195 != v283)
          {
            interchange_compression::compressor::compress();
          }
        }

        else
        {
          if (v289 == 27)
          {
            v211 = 0;
          }

          else
          {
            v211 = 0;
            v212 = v321;
            v213 = v323;
            v214 = v290;
            v215 = v48;
            do
            {
              *v295 = 0;
              v217 = *v214++;
              v216 = v217;
              v219 = *v213++;
              v218 = v219;
              v220 = *v212++;
              interchange_compression::encode_mode(v216, v218, v220, &v295[1], &v294[1], v295, v294, v193);
              v221 = v295[1];
              bit_pack::pack(v298, v295[0], v295[1]);
              v211 += v221;
              --v215;
            }

            while (v215);
            v222 = v321;
            v223 = v323;
            v224 = v290;
            v225 = v48;
            do
            {
              v227 = *v224++;
              v226 = v227;
              v229 = *v223++;
              v228 = v229;
              v230 = (v226 & 0xFFFFFFFD) != 8 || v228 >= 3;
              if (!v230 || (v226 == 12 ? (v231 = v228 > 3) : (v231 = 1), !v231))
              {
                *v294 = 0;
                interchange_compression::encode_mode(v226, v228, *v222, &v295[1], &v294[1], v295, v294, v193);
                v232 = v294[1];
                bit_pack::pack(v298, v294[0], v294[1]);
                v211 += v232;
              }

              ++v222;
              --v225;
            }

            while (v225);
            v233 = v313;
            v234 = &v310;
            v235 = v323;
            v236 = v48;
            do
            {
              v237 = *v235++;
              v238 = *v290++;
              if (v237)
              {
                v239 = 1;
              }

              else
              {
                v239 = v238 == 2;
              }

              if (v239 || v238 >= 0x10)
              {
                v241 = *v233;
                bit_pack::pack(v298, *v234 >> (v238 - *v233), *v233);
                v211 += v241;
              }

              ++v233;
              v234 = (v234 + 4);
              --v236;
            }

            while (v236);
            v242 = v322;
            v243 = v312;
            v244 = v48;
            do
            {
              if (*v243++)
              {
                bit_pack::pack(v298, *v242, 3);
                v211 += 3;
              }

              ++v242;
              --v244;
            }

            while (v244);
          }

          v246 = v283 - v211;
          v247 = (v283 - v211) / 7u;
          bit_pack::pack(v298, 0, v246 % 7);
          v248 = 0;
          v249 = &v303;
          do
          {
            if (v191 == 27)
            {
              v250 = 0;
            }

            else
            {
              v250 = 0;
              v251 = v312;
              v252 = v249;
              v253 = v48;
              do
              {
                v255 = *v251++;
                v254 = v255;
                if (v255)
                {
                  bit_pack::pack(v298, *v252, v254);
                  v250 += v254;
                }

                v252 += 7;
                --v253;
              }

              while (v253);
              v191 = v289;
              if (v250 > v247)
              {
                interchange_compression::compressor::compress();
              }
            }

            bit_pack::pack(v298, 0, v247 - v250);
            v28 = xmmword_295323F30;
            v27 = xmmword_295323F40;
            v26.i64[0] = 0x100000001;
            v26.i64[1] = 0x100000001;
            v25 = xmmword_295323F50;
            ++v248;
            v249 = (v249 + 4);
          }

          while (v248 != 7);
        }

        if (v301 != v283)
        {
          interchange_compression::compressor::compress();
        }

        v24 = v288 + 1;
        v23 = v272 + 8;
        v29 = a2;
        if (v288 == 3)
        {
          *a6 = (4 * BYTE2(v293)) | (8 * HIBYTE(v293)) | (2 * BYTE1(v293)) | v293 | 0xF0;
          *a7 = interchange_compression::lossy_parameters[28 * *(v274 + 1150) + 8 + *(v274 + 1151)];
          return;
        }
      }

      v55 = 0;
      v56 = v318;
      v57 = v296;
      do
      {
        v58 = 0;
        v59 = 1 << (v290[v55] - 1);
        if (v291 != 2)
        {
          v59 = 0;
        }

        do
        {
          v60 = *&v57[v58 * 4] ^ v59;
          if (v60 == 1 && v46 == 3)
          {
            v60 = 0;
          }

          v56[v58] = v60;
          v58 += 4;
        }

        while (v58 != 32);
        ++v55;
        ++v56;
        v57 += 4;
      }

      while (v55 != v287);
      v62 = 0;
      v63 = &v319;
      while (1)
      {
        v64 = v290[v62];
        v65 = interchange_compression::get_id(v64, v15);
        v66.i64[0] = 0x100000001;
        v66.i64[1] = 0x100000001;
        v67 = v318[v62];
        v68 = &v320[4 * v62 + 128];
        v321[v62] = v67;
        *v68 = v67;
        v322[v62] = 0;
        v69 = -7;
        v70 = v63;
        v71 = v67;
        do
        {
          v72 = vdupq_n_s32(v69 + 8);
          v73 = vshlq_u32(vandq_s8(vshlq_u32(v72, xmmword_295323F50), v66), xmmword_295323F40);
          v74 = vshlq_u32(vandq_s8(vshlq_u32(v72, xmmword_295323F30), v66), xmmword_295323F40);
          v75 = vorr_s8(*v74.i8, *&vextq_s8(v74, v74, 8uLL)).u32[0] | v74.i32[1];
          v76 = (vorr_s8(*v73.i8, *&vextq_s8(v73, v73, 8uLL)).u32[0] | v73.i32[1]) >= v45 || v75 >= v42;
          if (!v76)
          {
            v77 = *v70;
            if (*v70 < v71)
            {
              v322[v62] = v69 + 8;
              v321[v62] = v77;
              v71 = v77;
            }

            if (v67 >= v77)
            {
              v78 = &v320[4 * v62 + 128];
            }

            else
            {
              v78 = v70;
            }

            v67 = *v78;
            *v68 = v67;
          }

          v70 += 4;
          v76 = __CFADD__(v69++, 1);
        }

        while (!v76);
        v79 = 1 << (v64 - 1);
        v80 = v67 - v71;
        for (i = 31; i != -1; --i)
        {
          if ((v80 >> i))
          {
            break;
          }
        }

        HIDWORD(v83) = v64 - 2;
        LODWORD(v83) = v64 - 2;
        v82 = v83 >> 1;
        if (v82 < 8 && ((0xB9u >> v82) & 1) != 0)
        {
          v84 = dword_295326D60[v82];
        }

        else
        {
          if (v64 != 32)
          {
            interchange_compression::compressor::compress();
          }

          v84 = -1;
        }

        v85 = i + 1;
        v86 = (v85 & 1) + (v85 >> 1);
        if (v64 != 32)
        {
          v86 = i + 1;
        }

        if (i)
        {
          v87 = 0;
        }

        else
        {
          v87 = v64 == 2;
        }

        if (v87)
        {
          v86 = 2;
        }

        if (i < 3 && v64 == 10)
        {
          v86 = 3;
        }

        if (i < 4 && v64 == 12)
        {
          v86 = 4;
        }

        if (v64 == 16 && !i)
        {
          break;
        }

        v91 = v84 + v86;
        v90 = v91 & ~(v91 >> 31);
        v92 = &v323[v62];
        *v92 = v90;
        if (v64 < 8 || v91 >= 3 || v64 > 0xC || v85)
        {
          goto LABEL_97;
        }

        if (v71)
        {
          v90 = (v71 ^ (-1 << v64)) != 0xFFFFFFFF || v64 > 0xB;
LABEL_96:
          *v92 = v90;
          goto LABEL_97;
        }

        v90 = 0;
        *v92 = 0;
LABEL_97:
        v93 = 0;
        if (v291 == 2 && v67 >= v79 && v71 < v79)
        {
          v93 = interchange_compression::dq_consts[160 * v65 + 8 + 10 * v90] == 0;
        }

        if (v90 >= interchange_compression::dq_qp_transition[v65] || v93)
        {
          v94 = interchange_compression::dq_consts[160 * v65 + 4 + 10 * v90] - (v93 & (0xFBFFF00uLL >> v289)) + interchange_compression::dq_lossy_level[3 * v65 + v281];
          if (v93)
          {
            v95 = 0;
          }

          else
          {
            v95 = -2;
          }

          v76 = v64 >= v94;
          v96 = v64 - v94;
          v97 = v71 & ~(-1 << v96);
          if (v96 == 0 || !v76)
          {
            v97 = 0;
          }

          v98 = v97 + v95;
          if (v98 >= 1)
          {
            v99 = v98 + v80;
            for (j = 31; j != -1; --j)
            {
              if ((v99 >> j))
              {
                break;
              }
            }

            if (v85 < j + 1)
            {
              *v92 = ++v90;
            }
          }
        }

        v101 = interchange_compression::dq_max_mode[v65];
        if (v64 == 32)
        {
          if (v101 >= v90)
          {
            v101 = v90;
          }

          *v92 = v101;
          v48 = v287;
        }

        else
        {
          v48 = v287;
          if (v90 > v101)
          {
            interchange_compression::compressor::compress();
          }
        }

        ++v62;
        v63 = (v63 + 4);
        if (v62 == v48)
        {
          goto LABEL_32;
        }
      }

      if (v67 == 0xFFFF)
      {
        v90 = v84 + 2;
      }

      else
      {
        v90 = (v84 + v86) & ~((v84 + v86) >> 31);
      }

      v92 = &v323[v62];
      goto LABEL_96;
    }
  }

  if (v19 >= v15)
  {
    interchange_compression::compressor::pack_pixels(this, a2, a3, a4, a5, a6, a7);
  }

  else if (v11)
  {
    v256 = v14[8];
    *a6 = v256;
    *a7 = v17 + v17 * (v256 & ~(-1 << v16));
    interchange_compression::format_info::pack_pixel((&interchange_compression::format_table + 52 * *(this + 1150)), a5, a2);
    v257 = *a7;
    v300 = a5;
    v299 = v257;
    v301 = 0;
    v302 = 0;
    bzero(a5, v257);
    v258 = *(this + 1150);
    if (v258 != 27)
    {
      v259 = 0;
      do
      {
        bit_pack::pack(v298, (*a2)[0][0][v259], *(&interchange_compression::format_table + 13 * v258 + v259 + 3));
        ++v259;
        v258 = *(this + 1150);
      }

      while (v259 < *(&interchange_compression::format_table + 13 * v258 + 2));
    }
  }

  else
  {
    v300 = a5;
    v299 = v15;
    v301 = 0;
    v302 = 0;
    bzero(a5, v15);
    interchange_compression::compressor::pack_header(this, v298, 0, a6);
    interchange_compression::compressor::pack_deltas(this, v298, v297, a3, a4);
    if ((v17 - 1 + ((v301 + 7) >> 3)) / v17 != v18)
    {
      interchange_compression::compressor::compress();
    }

    *a6 |= v18 - 1;
    *a7 = v19;
  }
}

interchange_compression::decompressor *interchange_decompress_plane(const unsigned __int8 *a1, const unsigned __int8 *a2, _BYTE *a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, unsigned int a8)
{
  v104 = *MEMORY[0x29EDCA608];
  if (a7)
  {
    v8 = 16;
  }

  else
  {
    v8 = 32;
  }

  v95 = v8;
  if (a6 > 0x10 || ((1 << a6) & 0x11500) == 0)
  {
    interchange_decompress_plane();
  }

  if (a7)
  {
    v13 = 12;
  }

  else
  {
    v13 = 5;
  }

  if (a7)
  {
    v14 = 17;
  }

  else
  {
    v14 = 7;
  }

  if (a7)
  {
    v15 = 10;
  }

  else
  {
    v15 = 3;
  }

  if (a6 == 10)
  {
    v14 = v15;
  }

  if (a6 != 12)
  {
    v13 = v14;
  }

  if (a7)
  {
    v16 = 8;
  }

  else
  {
    v16 = 1;
  }

  if (a6 == 8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  if (a7)
  {
    v18 = 4;
  }

  else
  {
    v18 = 5;
  }

  v84 = v18;
  v19 = &interchange_compression::lossy_parameters[28 * v17];
  v80 = v19[a8 + 4];
  result = interchange_compression::decompressor::decompressor(v102, v17, a8, 0);
  memset(v103, 0, sizeof(v103));
  if (a5)
  {
    v72 = 0;
    v87 = 0;
    v21 = (v95 - 1 + a4) >> v84;
    v22 = (v95 - 1 + a5) >> v84;
    v23 = (v21 * v22 * v80 + 127) & 0xFFFFFF80;
    v24 = 32 - __clz(v22 - 1);
    if (v22 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = 32 - __clz(v21 - 1);
    if (v21 < 2)
    {
      v26 = 0;
    }

    v79 = &a2[v23];
    if (v26 >= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    v28 = 5;
    if (a7)
    {
      v28 = 3;
    }

    v76 = v28;
    v77 = 2 * v27;
    v69 = &interchange_compression::memory_parameters[11 * v17];
    v74 = (v27 + 1) & 0x7E;
    v73 = vdupq_n_s64(v27 - 1);
    v29 = vdupq_n_s64(2uLL);
    v71 = 1;
    v75 = v29;
    v78 = v27;
    do
    {
      if (a4)
      {
        v30 = 0;
        v31 = v87 >> v84;
        v83 = v31 * ((v95 - 1 + a4) >> v84);
        v93 = ~(-1 << v69[7]);
        v92 = v19[a8 + 8];
        v32 = vdupq_n_s64(v31);
        v34 = v71;
        v33 = v72;
        v82 = v32;
        do
        {
          v35 = v30 >> v84;
          if (v27)
          {
            v36 = vdupq_n_s64(v35);
            v37 = 0uLL;
            v38 = v74;
            v39 = xmmword_295323F10;
            do
            {
              v40 = v37;
              v41 = v39;
              v42 = vnegq_s64(v39);
              v43 = vdupq_n_s64(1uLL);
              v44 = vaddq_s64(v41, v41);
              v37 = vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v36, v42), v43), v44), vshlq_u64(vandq_s8(vshlq_u64(v32, v42), v43), vorrq_s8(v44, v43))), v40);
              v39 = vaddq_s64(v41, v29);
              v38 -= 2;
            }

            while (v38);
            v45 = vbslq_s8(vcgtq_u64(v41, v73), v40, v37);
            v46 = vorr_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
          }

          else
          {
            v46 = 0;
          }

          v47 = 0;
          v48 = &a2[((v35 + v83) * v80)];
          v49 = &v79[(*&v46 | ((v35 | (v87 >> v84)) >> v27 << v77)) << v76];
          v85 = v34;
          v86 = v33;
          v88 = v30;
          do
          {
            v50 = 0;
            v91 = v47;
            v51 = v87 + v47;
            v52 = v30;
            v89 = v34;
            v90 = v33;
            v53 = v33;
            do
            {
              v98 = v53;
              v99 = v50;
              v100 = v49;
              v54 = v52;
              v55 = *v49;
              v97 = v55 & 0xF0;
              if (*v49)
              {
                v56 = (v55 & v93) + 1;
              }

              else
              {
                v56 = 0;
              }

              v96 = v56;
              v101 = v48;
              result = interchange_compression::decompressor::decompress(v102, v48, v55, v103);
              v57 = 0;
              v58 = v98;
              v59 = v34;
              v60 = &v103[0][0][1];
              do
              {
                v61 = 8;
                v62 = v54;
                v63 = v58;
                v64 = v59;
                v65 = v60;
                do
                {
                  if (v57 + v51 < a5 && v62 < a4)
                  {
                    result = *(v65 - 1);
                    if (a7)
                    {
                      v66 = v64 - 1;
                      if (a6 == 8)
                      {
                        a3[v66] = result;
                        result = *v65;
                        a3[v64] = result;
                      }

                      else
                      {
                        *&a3[2 * v66] = result;
                        result = *v65;
                        *&a3[2 * v64] = result;
                      }
                    }

                    else if (a6 == 8)
                    {
                      a3[v63] = result;
                    }

                    else
                    {
                      *&a3[2 * v63] = result;
                    }
                  }

                  v65 += 4;
                  v64 += 2;
                  ++v63;
                  ++v62;
                  --v61;
                }

                while (v61);
                ++v57;
                v60 += 32;
                v59 += 2 * a4;
                v58 += a4;
              }

              while (v57 != 4);
              if (v97 != 240 || a8 == 0)
              {
                v68 = v96;
              }

              else
              {
                v68 = v92;
              }

              v48 = &v101[v68];
              v49 = v100 + 1;
              v50 = v99 + 8;
              v34 += 16;
              v53 = v98 + 8;
              v52 = v54 + 8;
            }

            while (v99 + 8 < v95);
            v47 = v91 + 4;
            v34 = v89 + 8 * a4;
            v33 = v90 + 4 * a4;
            v30 = v88;
          }

          while (v91 + 4 < v95);
          v30 = v88 + v95;
          v34 = v85 + 2 * v95;
          v33 = v86 + v95;
          LODWORD(v27) = v78;
          v29 = v75;
          v32 = v82;
        }

        while (v88 + v95 < a4);
      }

      v71 += 2 * v95 * a4;
      v72 += v95 * a4;
      v87 += v95;
    }

    while (v87 < a5);
  }

  return result;
}

uint64_t interchange_compression::decompressor::decompress(interchange_compression::decompressor *this, const unsigned __int8 *a2, unsigned int a3, unsigned int (*a4)[4][8][4])
{
  v215 = *MEMORY[0x29EDCA608];
  v8 = interchange_compression::memory_parameters[11 * *(this + 85) + 7];
  if ((*(this + 87) - 1) <= 2)
  {
    subblock_size = interchange_compression::decompressor::get_subblock_size(this, a3);
    v10 = *(this + 85);
    if (subblock_size > interchange_compression::lossy_parameters[28 * v10 + 8 + *(this + 87)] || subblock_size < interchange_compression::decompressor::get_subblock_size(this, LOBYTE(interchange_compression::memory_parameters[11 * v10 + 8])))
    {
      goto LABEL_216;
    }

    if ((~a3 & 0xF0) == 0)
    {
      v11 = *(this + 87);
      if ((v11 - 1) <= 2)
      {
        v12 = 0;
        v13 = *(this + 85);
        v177 = interchange_compression::lossy_parameters[28 * v13 + 8 + v11] >> 2;
        v14 = 0xFFFFFFFFLL;
        v15 = vand_s8(vmovn_s32(vtstq_s32(vdupq_n_s32(a3), xmmword_295323F60)), 0x1000100010001);
        v192 = vuzp1_s8(v15, v15).u32[0];
        v175 = a2;
        v176 = a4;
        while (1)
        {
          v16 = *(this + 87);
          v17 = *(this + 88);
          v18 = &a2[v12 * v177];
          v191 = v17;
          v178 = v12;
          if (v193[v12 - 4] != 1)
          {
            break;
          }

          v19 = 0;
          v20 = interchange_compression::lossy_parameters[28 * v13 + 8 + v16] >> 2;
          v209 = &a2[v12 * v177];
          v208 = v20;
          v212 = 1;
          v211 = 0;
          v210 = 8 * v20;
          v21 = &interchange_compression::format_table + 52 * v13;
          v181 = v21 + 12;
          v184 = *(v21 + 2);
          v22 = v17 & 0xFFFFFFFE;
          v179 = &interchange_compression::lossy_parameters[28 * v13 + 12 + 4 * v16];
          v23 = v193;
          do
          {
            v188 = v19;
            v25 = v179;
            v24 = v181;
            v186 = v23;
            v26 = v184;
            if (v184)
            {
              do
              {
                v28 = *v25++;
                v27 = v28;
                v30 = *v24;
                v24 += 4;
                v29 = v30;
                v31 = -1 << v30;
                if (v30 == 32)
                {
                  v32 = -1;
                }

                else
                {
                  v32 = ~v31;
                }

                v33 = 1 << (v29 - 1);
                v34 = (bit_pack::unpack(v207, v29 - v27) << v27) & v32;
                v36 = v22 != 2 || v34 != v33;
                if (v34 >> v27 == v32 >> v27)
                {
                  v37 = v32;
                }

                else
                {
                  v37 = ((1 << (v27 - 1)) - ((v34 >> v27) & 1)) | v34;
                }

                if (!v36 || v34 == 0)
                {
                  v39 = v34;
                }

                else
                {
                  v39 = v37;
                }

                if (!v27)
                {
                  v39 = v34;
                }

                if (v191 != 1)
                {
                  v34 = v39;
                }

                if (v22 == 2)
                {
                  v40 = v33;
                }

                else
                {
                  v40 = 0;
                }

                v14 = 0xFFFFFFFFLL;
                *v23++ = v34 ^ v40;
                v26 = (v26 - 1);
              }

              while (v26);
            }

            v19 = v188 + 1;
            v23 = v186 + 4;
          }

          while (v188 != 7);
LABEL_176:
          v139 = 0;
          v140 = v193;
          a2 = v175;
          do
          {
            if (*(this + 85) == 27)
            {
              v13 = 27;
            }

            else
            {
              v141 = 0;
              v142 = vdupq_n_s32(v139 + 8 * v178);
              v143.i64[0] = 0x100000001;
              v143.i64[1] = 0x100000001;
              v144 = vshlq_u32(vandq_s8(vshlq_u32(v142, xmmword_295323F30), v143), xmmword_295323F40);
              v145 = vshlq_u32(vandq_s8(vshlq_u32(v142, xmmword_295323F50), v143), xmmword_295323F40);
              v146 = (*v176)[(vorr_s8(*v145.i8, *&vextq_s8(v145, v145, 8uLL)).u32[0] | v145.i32[1])][vorr_s8(*v144.i8, *&vextq_s8(v144, v144, 8uLL)).u32[0] | v144.i32[1]];
              do
              {
                v146[v141] = *&v140[4 * v141];
                ++v141;
                v13 = *(this + 85);
              }

              while (v141 < *(&interchange_compression::format_table + 13 * v13 + 2));
            }

            ++v139;
            v140 += 16;
          }

          while (v139 != 8);
          v12 = v178 + 1;
          if (v178 == 3)
          {
            return 1;
          }
        }

        v41 = (&interchange_compression::format_table + 52 * v13);
        v42 = v41[2];
        v182 = v41;
        v185 = v42;
        v43 = (v41 + 3);
        v174 = *(this + 87);
        LODWORD(v41) = interchange_compression::lossy_parameters[28 * v13 + 8 + v16];
        v209 = v18;
        LODWORD(v41) = 2 * v41;
        v208 = (v41 >> 3) & 0x7FFFFFF;
        v212 = 1;
        v211 = 0;
        v187 = v41;
        v210 = v41 & 0x3FFFFFF8;
        v180 = v43;
        if (!v42)
        {
          v189 = 0;
LABEL_84:
          *v204 = 0;
          v205 = 0;
          memset(v203, 0, sizeof(v203));
          v202[0] = interchange_compression::get_id(v182[3], v14);
          v202[1] = interchange_compression::get_id(v182[4], v68);
          v202[2] = interchange_compression::get_id(v182[5], v69);
          v202[3] = interchange_compression::get_id(v182[6], v70);
          interchange_compression::derive_sharing(v185, v202, v214, v204, v203, v71);
          v200 = 0;
          v201 = 0;
          v198 = 0;
          v199 = 0;
          if (v185)
          {
            v73 = 0;
            do
            {
              v74 = *&v180[v73];
              id = interchange_compression::get_id(v74, v72);
              v76 = v214[v73 / 4];
              v77 = &interchange_compression::dq_consts[160 * id + 10 * v76];
              v78 = interchange_compression::dq_lossy_level[3 * id + v174 - 1];
              v79 = v77[5];
              *(&v200 + v73) = v78 + v77[4];
              *(&v198 + v73) = v79 + v78;
              interchange_compression::adjust_level(id, v76, v204[v73 / 4], v203[v73 / 4], (&v200 + v73), (&v198 + v73), v80);
              v81 = *(&v200 + v73);
              if (v74 < v81)
              {
                v81 = v74;
              }

              *(&v200 + v73) = v81;
              if (v79)
              {
                v82 = v74;
              }

              else
              {
                v82 = 0;
              }

              if (v82 >= *(&v198 + v73))
              {
                v82 = *(&v198 + v73);
              }

              *(&v198 + v73) = v82;
              v73 += 4;
            }

            while (4 * v185 != v73);
          }

          if (v13 == 19 && v214[3] == 1 && v203[3] - HIDWORD(v205) <= 1)
          {
            v200 = 0;
            v201 = 0;
            v198 = 0;
            v199 = 0;
          }

          v197[0] = 0;
          v197[1] = 0;
          v83 = v185;
          v84 = v189;
          if (v185)
          {
            v85 = v197;
            v86 = v213;
            v87 = &v200;
            v88 = v214;
            v89 = v180;
            do
            {
              v90 = *v88++;
              if (v90 || (*v89 - 8) > 4)
              {
                v91 = *v87;
                *v85 = bit_pack::unpack(v207, *v87) << (*v89 - v91);
                v84 += v91;
              }

              else
              {
                *v85 = *v86;
              }

              ++v85;
              ++v86;
              v89 += 4;
              ++v87;
              --v83;
            }

            while (v83);
            v195 = 0;
            v196 = 0;
            v92 = &v195;
            v93 = &v198;
            v94 = v185;
            v95 = v187;
            do
            {
              v96 = *v93;
              v93 = (v93 + 4);
              if (v96)
              {
                v97 = bit_pack::get(v207, v211, 3u);
                v211 += 3;
                *v92 = v97;
                v84 += 3;
              }

              v92 = (v92 + 4);
              --v94;
            }

            while (v94);
          }

          else
          {
            v195 = 0;
            v196 = 0;
            v95 = v187;
          }

          v98 = (v95 & 0x3FFFFFFE) - v84;
          v99 = v98 / 7;
          v100 = v211 + v98 - 7 * (v98 / 7);
          v211 = v100;
          v101 = v210;
          if (v100 > v210)
          {
            interchange_compression::decompressor::decompress();
          }

          v102 = 0;
          v103 = v194;
          memset(v194, 0, sizeof(v194));
          v104 = v185;
          v105 = v99;
          do
          {
            v106 = 0;
            if (v104)
            {
              v107 = &v198;
              v108 = v103;
              do
              {
                v110 = *v107++;
                v109 = v110;
                if (v110)
                {
                  *v108 = bit_pack::unpack(v207, v109);
                  v106 += v109;
                }

                v108 += 7;
                --v104;
              }

              while (v104);
              if (v106 > v105)
              {
                interchange_compression::decompressor::decompress();
              }

              v100 = v211;
              v101 = v210;
              v104 = v185;
            }

            v100 += v105 - v106;
            v211 = v100;
            if (v100 > v101)
            {
              interchange_compression::decompressor::decompress();
            }

            ++v102;
            ++v103;
          }

          while (v102 != 7);
          if (v104)
          {
            v111 = 0;
            v112 = v193;
            do
            {
              v113 = *&v180[4 * v111];
              v114 = interchange_compression::get_id(v113, v72);
              v115 = 0;
              v116 = 0;
              v117 = *&interchange_compression::dq_consts[160 * v114 + 2 + 10 * v214[v111]];
              v118 = *(&v198 + v111);
              v119 = v117 >> v118;
              if (v117 >> v118 <= 1)
              {
                v119 = 1;
              }

              if (v119 >> 1 >= (1 << (v113 - *(&v200 + v111))) >> 1)
              {
                v120 = (1 << (v113 - *(&v200 + v111))) >> 1;
              }

              else
              {
                v120 = v119 >> 1;
              }

              v121 = *(v197 + v111);
              v122 = (1 << (v113 - 1));
              v123 = ~(-1 << v118);
              v124 = v117 + v121;
              v125 = 1 << v113;
              v72 = (1 << v113) - 1;
              if (!v121)
              {
                v120 = 0;
              }

              if (v113 == 16)
              {
                v126 = 31744;
              }

              else
              {
                v126 = 2139095040;
              }

              if (v113 == 16)
              {
                v127 = 64512;
              }

              else
              {
                v127 = 4286578688;
              }

              if (v113 == 16)
              {
                v128 = 32256;
              }

              else
              {
                v128 = 2143289344;
              }

              v129 = 4290772992;
              if (v113 == 16)
              {
                v129 = 65024;
              }

              v190 = v129;
              v183 = v112;
              v130 = v112;
              do
              {
                if (v118)
                {
                  if (v115 == *(&v195 + v111))
                  {
                    v131 = v120;
                    v132 = v121 == v122;
                  }

                  else
                  {
                    v133 = v194[7 * v111 + v116];
                    v132 = (v122 - v121) / v119 == v133;
                    if (v133 > v123)
                    {
                      interchange_compression::decompressor::decompress();
                    }

                    if (v133 | v121)
                    {
                      if (v124 < v125 || (v131 = v125 - 1, v133 != v123))
                      {
                        v131 = (v119 >> 1) + v119 * v133;
                      }
                    }

                    else
                    {
                      v131 = 0;
                    }

                    ++v116;
                  }
                }

                else
                {
                  v131 = 0;
                  v132 = v119 > v122 - v121;
                }

                v134 = v131 + v121;
                v135 = v134;
                if (v191 == 1)
                {
                  if (v134 < v126 || (v135 = (v126 - 1), v134 >= v128))
                  {
                    if (v134 < v128 || (v135 = v122, v134 >= v122))
                    {
                      if (v134 < v190 && v134 >= v127)
                      {
                        v135 = (v127 - 1);
                      }

                      else
                      {
                        v135 = v134;
                      }
                    }
                  }
                }

                if (v135 >= v125)
                {
                  v137 = v125 - 1;
                }

                else
                {
                  v137 = v135;
                }

                if (v132)
                {
                  v138 = 0;
                }

                else
                {
                  v138 = v137 ^ v122;
                }

                if ((v191 & 0xFFFFFFFE) != 2)
                {
                  v138 = v137;
                }

                *v130 = v138;
                v130 += 4;
                ++v115;
              }

              while (v115 != 8);
              ++v111;
              v112 = v183 + 4;
            }

            while (v111 != v185);
          }

          v14 = 0xFFFFFFFFLL;
          goto LABEL_176;
        }

        v44 = 0;
        v45 = v206;
        v46 = v43;
        do
        {
          v48 = *v46;
          v46 += 4;
          v47 = v48;
          if (v48 == 2)
          {
            v49 = 1;
          }

          else if ((v47 - 8) >= 5)
          {
            v49 = 4;
            if (v47 != 16 && v47 != 32)
            {
              interchange_compression::decompressor::decompress();
            }
          }

          else
          {
            v49 = 3;
          }

          *v45++ = bit_pack::unpack(v207, v49);
          v44 += v49;
          --v42;
        }

        while (v42);
        v189 = v44;
        v50 = 0;
        v51 = v214;
        v52 = v213;
        v53 = v206;
        v54 = v43;
        v55 = v185;
        while (1)
        {
          v57 = *v54++;
          v56 = v57;
          if (v57 == 2)
          {
            v58 = *v53;
            *v52 = 0;
            v59 = v58 & 1;
            v60 = v51;
          }

          else
          {
            v61 = v56 - 8 < 5 || v56 == 16;
            if (!v61 && v56 != 32)
            {
              interchange_compression::decompressor::decompress();
            }

            v62 = *v53;
            if (((v56 & 0xFFFFFFFD) == 8 || v56 == 12) && v62 == 0)
            {
              v65 = bit_pack::get(v207, v211, 2u);
              v211 += 2;
              v189 += 2;
              *v52 = 0;
              v59 = v65 & 3;
              v66 = v52;
              v60 = v51;
            }

            else
            {
              v60 = &v214[v50];
              *v52 = 0;
              if (v56 >= 0x10)
              {
                v59 = v62 & 0xF;
                goto LABEL_50;
              }

              v59 = 0;
              v66 = &v213[v50];
            }

            v67 = v62 & 7;
            *v60 = v67;
            if ((v56 & 0xD) == 8)
            {
              if ((v62 & 7) != 0)
              {
                v59 = v67 + 2;
              }

              else
              {
                if (v59 > 1)
                {
                  if (v59 == 2)
                  {
                    v59 = 1;
                  }

                  else
                  {
                    v59 = 2;
                  }

                  goto LABEL_50;
                }

                if (!v59)
                {
LABEL_79:
                  *v66 = 0;
                  goto LABEL_50;
                }

                v59 = 0;
                *v66 = ~(-1 << v56);
              }
            }

            else
            {
              if (v56 != 12)
              {
                goto LABEL_51;
              }

              if ((v62 & 7) != 0)
              {
                v59 = v67 + 3;
              }

              else if (!v59)
              {
                goto LABEL_79;
              }
            }
          }

LABEL_50:
          *v60 = v59;
LABEL_51:
          ++v50;
          ++v51;
          ++v52;
          ++v53;
          if (!--v55)
          {
            goto LABEL_84;
          }
        }
      }
    }
  }

  v147 = *(this + 85);
  v148 = &interchange_compression::memory_parameters[11 * v147];
  if (v148[8] == a3)
  {
    v149 = (a3 & ~(-1 << v148[7])) + 1;
    v209 = a2;
    v208 = v149 << (v147 == 26);
    v212 = 1;
    v211 = 0;
    v210 = 8 * v208;
    if (v147 == 27)
    {
      v150 = 27;
    }

    else
    {
      v159 = 0;
      do
      {
        (*a4)[0][0][v159] = bit_pack::unpack(v207, *(&interchange_compression::format_table + 13 * v147 + v159 + 3));
        ++v159;
        v147 = *(this + 85);
      }

      while (v159 < *(&interchange_compression::format_table + 13 * v147 + 2));
      v150 = *(this + 85);
    }

    v160 = 0;
    for (i = 0; i != 4; ++i)
    {
      v162 = 0;
      v163 = v160;
      do
      {
        if (v150 == 27)
        {
          v150 = 27;
        }

        else
        {
          v164 = 0;
          v165 = a4;
          do
          {
            *((*v165)[0][0] + v163) = *v165;
            ++v164;
            v150 = *(this + 85);
            v165 = (v165 + 4);
          }

          while (v164 < *(&interchange_compression::format_table + 13 * v150 + 2));
        }

        ++v162;
        v163 += 16;
      }

      while (v162 != 8);
      v160 += 128;
    }

    return 1;
  }

  if (v148[9] == a3)
  {
    v151 = 0;
    v152 = interchange_compression::memory_parameters[11 * v147 + 5];
    v209 = a2;
    v208 = v152;
    v212 = 1;
    v211 = 0;
    v210 = 8 * v152;
    do
    {
      if (v147 != 27)
      {
        v153 = 0;
        v154 = vdupq_n_s32(v151);
        v155.i64[0] = 0x100000001;
        v155.i64[1] = 0x100000001;
        v156 = vshlq_u32(vandq_s8(vshlq_u32(v154, xmmword_295323F50), v155), xmmword_295323F40);
        v157 = vshlq_u32(vandq_s8(vshlq_u32(v154, xmmword_295323F30), v155), xmmword_295323F40);
        v158 = (*a4)[(vorr_s8(*v156.i8, *&vextq_s8(v156, v156, 8uLL)).u32[0] | v156.i32[1])][vorr_s8(*v157.i8, *&vextq_s8(v157, v157, 8uLL)).u32[0] | v157.i32[1]];
        do
        {
          v158[v153] = bit_pack::unpack(v207, *(&interchange_compression::format_table + 13 * v147 + v153 + 3));
          ++v153;
          v147 = *(this + 85);
        }

        while (v153 < *(&interchange_compression::format_table + 13 * v147 + 2));
      }

      ++v151;
    }

    while (v151 != 32);
    if (*(this + 87))
    {
      interchange_compression::decompressor::decompress();
    }

    return 1;
  }

  if (v148[10] == a3)
  {
    for (j = 0; j != 32; ++j)
    {
      v168 = vdupq_n_s32(j);
      v169.i64[0] = 0x100000001;
      v169.i64[1] = 0x100000001;
      v170 = vshlq_u32(vandq_s8(vshlq_u32(v168, xmmword_295323F50), v169), xmmword_295323F40);
      v171 = vshlq_u32(vandq_s8(vshlq_u32(v168, xmmword_295323F30), v169), xmmword_295323F40);
      interchange_compression::format_info::unpack_pixel((&interchange_compression::format_table + 52 * v147), a2, (*a4)[(vorr_s8(*v170.i8, *&vextq_s8(v170, v170, 8uLL)).u32[0] | v170.i32[1])][vorr_s8(*v171.i8, *&vextq_s8(v171, v171, 8uLL)).u32[0] | v171.i32[1]]);
      v147 = *(this + 85);
      a2 += *(&interchange_compression::format_table + 13 * v147 + 1);
    }

    if (*(this + 87))
    {
      interchange_compression::decompressor::decompress();
    }

    return 1;
  }

  v172 = ((a3 & ~(-1 << v8)) + 1) << (v147 == 26);
  v173 = interchange_compression::memory_parameters[11 * v147 + 5];
  v209 = a2;
  if (v173 >= v172)
  {
    v173 = v172;
  }

  v208 = v173;
  v212 = 1;
  v211 = 0;
  v210 = 8 * v173;
  if (interchange_compression::decompressor::unpack_header(this, a2, a3, v207))
  {
    interchange_compression::decompressor::decompress_pixels(this, a2, a3, v207, a4);
    interchange_compression::decompressor::decorrelate(this, a4);
    return 1;
  }

LABEL_216:
  interchange_compression::decompressor::fill_subblock_error_color(this, a4);
  return 0;
}

interchange_compression::compressor *interchange_compression::compressor::compressor(interchange_compression::compressor *this, unsigned int a2, int a3, interchange_compression *a4, unsigned int a5)
{
  *(this + 1065) = a2;
  if (interchange_compression::header::header_layout_table[15 * a2] != a2)
  {
    interchange_compression::compressor::compressor();
  }

  v6 = a4;
  *(this + 4568) = 0u;
  *(this + 4584) = 0u;
  *(this + 4536) = 0u;
  *(this + 4552) = 0u;
  *(this + 4504) = 0u;
  *(this + 4520) = 0u;
  *(this + 4472) = 0u;
  *(this + 4488) = 0u;
  *(this + 4440) = 0u;
  *(this + 4456) = 0u;
  *(this + 4408) = 0u;
  *(this + 4424) = 0u;
  *(this + 4376) = 0u;
  *(this + 4392) = 0u;
  *(this + 4344) = 0u;
  *(this + 4360) = 0u;
  *(this + 4312) = 0u;
  *(this + 4328) = 0u;
  *(this + 4280) = 0u;
  *(this + 4296) = 0u;
  *(this + 4264) = 0u;
  *(this + 1150) = a2;
  *(this + 1151) = a4;
  *(this + 1152) = a5;
  if (a2 != 21 && a3)
  {
    interchange_compression::compressor::compressor();
  }

  if (!interchange_compression::check_valid_lossy_level(a4, a2))
  {
    interchange_compression::compressor::compressor();
  }

  if (v6 && a5 >= 4)
  {
    interchange_compression::compressor::compressor();
  }

  v10 = &interchange_compression::format_table + 52 * a2;
  v11 = v10 + 49;
  v12 = v10 + 48;
  if (a3)
  {
    v12 = v11;
  }

  *(this + 1154) = *v12;
  memset_pattern16(this + 4240, &unk_295323F70, 0x14uLL);
  *(this + 4612) = 0;
  *(this + 2326) = 0;
  return this;
}

uint64_t interchange_compression::compressor::check_valid_predictors(interchange_compression::compressor *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 1150) == 27)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = 0;
    do
    {
      result = interchange_compression::compressor::valid_predictor(this, v8, v7, a2, a3);
      if (v8 > 3)
      {
        break;
      }

      ++v8;
    }

    while (!result);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v7;
  }

  while (v7 < *(&interchange_compression::format_table + 13 * *(this + 1150) + 2));
  return result;
}

_DWORD *interchange_compression::compressor::compute_deltas(interchange_compression::compressor *this, uint64_t a2, const unsigned int (*a3)[4][8][4], unsigned int a4, unsigned int a5)
{
  v5 = a3;
  v6 = a2;
  v7 = this;
  v8 = a2;
  v9 = this + 1060 * a2 + 132;
  v10 = 5;
  do
  {
    v11 = *(&interchange_compression::format_table + 13 * *(this + 1150) + a2 + 3);
    *(v9 - 33) = v11;
    v12 = 1 << (v11 - 1);
    v13 = v12 - 1;
    v14 = -v12;
    *(v9 + 8) = vdupq_n_s32(v13);
    *(v9 + 24) = vdupq_n_s32(v14);
    *v9 = v13;
    *(v9 + 1) = v14;
    *(v9 - 8) = 0uLL;
    *(v9 - 7) = 0uLL;
    *(v9 - 6) = 0uLL;
    *(v9 - 5) = 0uLL;
    *(v9 - 4) = 0uLL;
    *(v9 - 3) = 0uLL;
    *(v9 - 2) = 0uLL;
    *(v9 - 1) = 0uLL;
    v9 += 212;
    --v10;
  }

  while (v10);
  v15 = *(&interchange_compression::format_table + 13 * *(this + 1150) + a2 + 3);
  if (v15 >= 0x42)
  {
    interchange_compression::compressor::compute_deltas();
  }

  v16 = 0;
  v17 = v15 >> 1;
  v18 = &(*a3)[0][0][a2];
  v19 = -v17;
  v20 = -1 << v17;
  *(this + a2 + 1155) = (((v18[4] - *v18) & ~v20) << v19) >> v19;
  v47 = this + 4636;
  v48 = this + 4620;
  *(this + a2 + 1159) = (((v18[32] - *v18) & ~v20) << v19) >> v19;
  v21 = (this + 1060 * a2);
  v49 = a4;
  v50 = a5;
  v22 = &unk_295325CDC;
  v23 = a3;
  do
  {
    v24 = 0;
    v44 = v23;
    v45 = v22;
    do
    {
      if (v16 >= v50 || v24 >= v49)
      {
        interchange_compression::predictor_profile::set_delta(v21 + 106, v24, v16, 0);
        interchange_compression::predictor_profile::set_delta(v21, v24, v16, 0);
        result = interchange_compression::predictor_profile::set_delta(v21 + 53, v24, v16, 0);
        if (*(v7 + 1154) != v6 && *(&interchange_compression::format_table + 52 * *(v7 + 1150) + v8 + 44))
        {
          interchange_compression::predictor_profile::set_delta(v21 + 159, v24, v16, 0);
          v41 = v21 + 212;
          v42 = v24;
          v43 = v16;
          v40 = 0;
LABEL_15:
          result = interchange_compression::predictor_profile::set_delta(v41, v42, v43, v40);
        }
      }

      else
      {
        interchange_compression::predictor_profile::set_delta(v21 + 106, v24, v16, (*v23)[0][0][v8] - (*v5)[0][0][v8] - (*&v48[4 * v8] * v24 + *&v47[4 * v8] * v16));
        interchange_compression::predictor_profile::set_delta(v21, v24, v16, (*v23)[0][0][v8] - (*v5)[0][0][v8]);
        v25 = (*v5)[*v22][*(v22 - 1)];
        result = interchange_compression::predictor_profile::set_delta(v21 + 53, v24, v16, (*v23)[0][0][v8] - *(v25 + 4 * v8));
        v27 = *(v7 + 1154);
        if (v27 != v6)
        {
          v28 = *(v7 + 1150);
          if (*(&interchange_compression::format_table + 52 * v28 + v8 + 44))
          {
            v29 = *(&interchange_compression::format_table + 13 * v28 + v8 + 3);
            if (v29 >= 0x21)
            {
              interchange_compression::compressor::compute_deltas();
            }

            v30 = *(&interchange_compression::format_table + 13 * v28 + v27 + 3) - v29;
            v31 = (*v5)[0][0][v8] - ((*v5)[0][0][v27] >> v30);
            v32 = *(v25 + 4 * v27) >> v30;
            v33 = (*v23)[0][0][v27] >> v30;
            v34 = -v29;
            v35 = -1 << v29;
            v46 = ((*(v25 + 4 * v8) - v32) & ~v35) << v34 >> v34;
            v36 = v5;
            v37 = v7;
            v38 = v6;
            v39 = ((((*v23)[0][0][v8] - v33) & ~v35) << v34) >> v34;
            interchange_compression::predictor_profile::set_delta(v21 + 159, v24, v16, v39 - ((v31 & ~v35) << v34 >> v34));
            v40 = v39 - v46;
            v6 = v38;
            v7 = v37;
            v5 = v36;
            v41 = v21 + 212;
            v42 = v24;
            v43 = v16;
            goto LABEL_15;
          }
        }
      }

      ++v24;
      v23 = (v23 + 16);
      v22 += 2;
    }

    while (v24 != 8);
    ++v16;
    v23 = (v44 + 128);
    v22 = v45 + 16;
  }

  while (v16 != 4);
  return result;
}

uint64_t interchange_compression::compressor::compute_smallest_predictor(interchange_compression::compressor *this, int a2, unsigned int a3, unsigned int a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v24 = *MEMORY[0x29EDCA608];
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v20 = this + 1060 * a2;
  v21 = a2;
  do
  {
    if (interchange_compression::compressor::valid_predictor(this, v9, a2, a3, a4))
    {
      v12 = &v20[v8];
      interchange_compression::predictor_profile::process(&v20[v8], v8 == 424);
      v13 = vmaxv_u16(vmovn_s32(vtstq_s32(*(v12 + 180), *(v12 + 180)))) & 1;
      v14 = *(&interchange_compression::format_table + 13 * *(this + 1150) + v21 + 3);
      if (v14 == 32)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      v16 = v13 << v15;
      if (*(v12 + 43))
      {
        v17 = *(v12 + 44);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 + 2 * (v8 == 424) * (v14 >> 1) + 4 * v16 + vaddvq_s32(vmulq_s32(*(v12 + 196), xmmword_295323F20));
      *(v22 + v9) = v18;
      if ((v11 & 1) == 0 || *(v22 + v10) > v18)
      {
        v10 = v9;
      }

      v11 = 1;
    }

    ++v9;
    v8 += 212;
  }

  while (v8 != 1060);
  if ((v11 & 1) == 0)
  {
    interchange_compression::compressor::compute_smallest_predictor();
  }

  return v10;
}

uint64_t interchange_compression::compressor::create_header(interchange_compression::compressor *this, unsigned int (*a2)[4], const unsigned int (*a3)[4][8][4])
{
  *(this + 4568) = 0u;
  *(this + 4584) = 0u;
  *(this + 4536) = 0u;
  *(this + 4552) = 0u;
  *(this + 4504) = 0u;
  *(this + 4520) = 0u;
  *(this + 4472) = 0u;
  *(this + 4488) = 0u;
  *(this + 4440) = 0u;
  *(this + 4456) = 0u;
  *(this + 4408) = 0u;
  *(this + 4424) = 0u;
  *(this + 4376) = 0u;
  *(this + 4392) = 0u;
  *(this + 4344) = 0u;
  *(this + 4360) = 0u;
  *(this + 4312) = 0u;
  *(this + 4328) = 0u;
  *(this + 4280) = 0u;
  *(this + 4296) = 0u;
  v39 = this + 4264;
  *(this + 4264) = 0u;
  if (*(this + 1150) != 27)
  {
    v4 = 0;
    v5 = (this + 4636);
    v6 = this;
    do
    {
      v7 = (*a2)[v4];
      if (v7 == 3)
      {
        v8 = 16;
      }

      else if (v7 == 4)
      {
        v8 = 17;
      }

      else
      {
        v8 = (*a2)[v4] & 3;
      }

      v9 = v6 + 212 * v7;
      v10 = *(v9 + 43);
      v11 = vaddvq_s32(vbicq_s8(xmmword_295323F60, vceqzq_s32(*(v9 + 180))));
      if (*(v9 + 44))
      {
        v12 = v10 != 0;
        v13 = v11 & 0xF;
        v14 = v13 != 0;
        v40 = v8;
        v15 = (8 * v12) | (4 * v14) | v8;
        interchange_compression::header::set((this + 4260), 0, v4, (8 * v12) | (4 * v14) | v8);
        interchange_compression::header::set((this + 4260), 1u, v4, *(v9 + 44) - 1);
        if (v13)
        {
          if (*(&interchange_compression::format_table + 13 * *(this + 1150) + v4 + 3) == 32)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v17 = vshlq_u32(*(v9 + 180), vshlq_u32(xmmword_295323F40, vdupq_n_s32(v16)));
          *v17.i8 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
          interchange_compression::header::set((this + 4260), 3u, v4, v17.i32[0] | v17.i32[1]);
        }

        if (v10)
        {
          v18 = *(v9 + 43);
          *&v39[12 * (v4 + 16)] = interchange_compression::header::get_size((this + 4260), 4u, v4);
          interchange_compression::header::field_container::set_signed(&v39[12 * (v4 + 16)], v18);
        }

        if ((v40 & 3) == 2)
        {
          v19 = *(v5 - 4);
          *&v39[12 * (v4 + 20)] = interchange_compression::header::get_size((this + 4260), 5u, v4);
          interchange_compression::header::field_container::set_signed(&v39[12 * (v4 + 20)], v19);
          v20 = *v5;
          *&v39[12 * (v4 + 24)] = interchange_compression::header::get_size((this + 4260), 6u, v4);
          interchange_compression::header::field_container::set_signed(&v39[12 * (v4 + 24)], v20);
        }
      }

      else
      {
        if ((v11 & 0xF) != 0)
        {
          interchange_compression::compressor::create_header();
        }

        if (v10)
        {
          v21 = 11;
        }

        else
        {
          v21 = 3;
        }

        v15 = v21 | v8;
        interchange_compression::header::set((this + 4260), 0, v4, v21 | v8);
        v22 = &v39[12 * (v4 + 4)];
        *v22 = interchange_compression::header::header_layout_table[15 * *(this + 1065) + 1 + (v4 + 4)];
        *(v22 + 4) = 0x100000000;
      }

      v23 = (v15 & 3) == 1;
      v24 = &interchange_compression::format_table + 52 * *(this + 1150);
      v25 = *&v24[4 * v4 + 12];
      v26 = *(this + 1154);
      v27 = &v24[4 * v26];
      v28 = 3;
      if ((v15 & 3) != 1)
      {
        v28 = 0;
      }

      v29 = (*a3)[v23][v28];
      v30 = *(&(*a3)[0][0][v4] + ((v28 * 16) | (v23 << 7)));
      v31 = (v30 - (v29[v26] >> (*(v27 + 3) - v25))) & ~(-1 << v25);
      if ((v15 & 0x10) != 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = v30;
      }

      interchange_compression::header::set((this + 4260), 2u, v4++, v32);
      v33 = *(this + 1150);
      ++v5;
      v6 = (v6 + 1060);
    }

    while (v4 < *(&interchange_compression::format_table + 13 * v33 + 2));
    if (v33 == 21 && *(this + 1154) == 2)
    {
      if (!*(this + 1071))
      {
        interchange_compression::compressor::compress();
      }

      if (!*(this + 1074))
      {
        interchange_compression::compressor::compress();
      }

      v34 = *(this + 1070);
      v35 = *(this + 1073);
      interchange_compression::header::set((this + 4260), 0, 1u, v34 | 0x10);
      interchange_compression::header::set((this + 4260), 0, 2u, v35 & 0xFFFFFFEF | (16 * ((v34 >> 4) & 1)));
    }
  }

  return interchange_compression::header::get_size((this + 4260));
}

void interchange_compression::compressor::pack_pixels(interchange_compression::compressor *this, const unsigned int (*a2)[4][8][4], unsigned __int32 a3, unsigned __int32 a4, unsigned __int8 *a5, unsigned int *a6, unsigned int *a7)
{
  v37 = *MEMORY[0x29EDCA608];
  v8 = *(this + 1150);
  if (*(this + 4652) == 1)
  {
    *a6 = interchange_compression::memory_parameters[11 * v8 + 10];
    v9 = &interchange_compression::memory_parameters[11 * *(this + 1150) + 6];
  }

  else
  {
    *a6 = interchange_compression::memory_parameters[11 * v8 + 9];
    v9 = &interchange_compression::memory_parameters[11 * *(this + 1150) + 5];
  }

  v10 = *v9;
  *a7 = v10;
  v11 = &interchange_compression::memory_parameters[11 * *(this + 1150)];
  v13 = v11[9];
  v12 = v11[10];
  v34 = a5;
  v33 = v10;
  v35 = 0;
  v36 = 0;
  bzero(a5, v10);
  for (i = 0; i != 32; ++i)
  {
    v14 = *(this + 1150);
    if (v14 != 27)
    {
      v15 = 0;
      v16 = 0;
      v17 = vdupq_n_s32(i);
      v18.i64[0] = 0x100000001;
      v18.i64[1] = 0x100000001;
      v19 = vshlq_u32(vandq_s8(vshlq_u32(v17, xmmword_295323F50), v18), xmmword_295323F40);
      v20 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)).u32[0] | v19.i32[1];
      v21 = vshlq_u32(vandq_s8(vshlq_u32(v17, xmmword_295323F30), v18), xmmword_295323F40);
      v22 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)).u32[0] | v21.i32[1];
      v24 = v22 < a3 && v20 < a4;
      v25 = (*a2)[v20][v22];
      v26 = &interchange_compression::format_table;
      do
      {
        if (v24)
        {
          v27 = *v25;
        }

        else
        {
          v27 = 0;
        }

        if (v12 == v13 || *(this + 4652) != 1)
        {
          bit_pack::pack(v32, v27, v26[13 * v14 + 3]);
          v14 = *(this + 1150);
        }

        else
        {
          bit_pack::pack(v32, v27 << (v26[13 * v14 + 7] - v16), v26[13 * v14 + 3] - v16 + v26[13 * v14 + 7]);
          v14 = *(this + 1150);
          v16 = v26[13 * v14 + 7] + v26[13 * v14 + 3];
        }

        ++v15;
        ++v25;
        ++v26;
      }

      while (v15 < *(&interchange_compression::format_table + 13 * v14 + 2));
    }
  }
}

void *interchange_compression::format_info::pack_pixel(interchange_compression::format_info *this, unsigned __int8 *__dst, unsigned int *a3)
{
  __src[2] = *MEMORY[0x29EDCA608];
  __src[0] = 0;
  __src[1] = 0;
  v3 = *(this + 2);
  if (v3)
  {
    v4 = (this + 28);
    do
    {
      v5 = -1 << *(v4 - 4);
      v7 = *a3++;
      v6 = v7;
      v8 = *v4++;
      *(__src + ((v8 >> 3) & 0x1FFFFFF8)) |= (v6 & ~v5) << v8;
      --v3;
    }

    while (v3);
  }

  return memcpy(__dst, __src, *(this + 1));
}

void *bit_pack::pack(bit_pack *this, int a2, int a3)
{
  if (*(this + 544) == 1)
  {
    bit_pack::pack();
  }

  v5 = *(this + 134);
  v6 = *(this + 128);
  if (v5 + a3 > (8 * v6))
  {
    bit_pack::pack();
  }

  v7 = a2 & ~(-1 << a3);
  v8 = v6 - (*(this + 134) >> 3);
  if (v8 >= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  __dst = 0;
  v10 = (*(this + 65) + (v5 >> 3));
  memcpy(&__dst, v10, v9);
  __dst |= v7 << (v5 & 7);
  result = memcpy(v10, &__dst, v9);
  *(this + 134) += a3;
  return result;
}

void *interchange_compression::compressor::pack_header(interchange_compression::compressor *this, bit_pack *a2, char a3, unsigned int *a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(this + 1150);
  v8 = interchange_compression::memory_parameters[11 * v7 + 7];
  v17 = v8 - 8;
  v9 = this + 4264;
  v19 = ~(-1 << (8 - v8));
  v20 = 8 - v8;
  v10 = v7;
  do
  {
    if (v6 == 2 || (a3 & 1) == 0)
    {
      if (v6 == 2 && (a3 & 1) == 0)
      {
        bit_pack::pack(a2, 0, interchange_compression::header::header_layout_table[15 * v10 + 13] + v17 - *(a2 + 134));
        v7 = *(this + 1150);
      }

      if (v7 == 27)
      {
        v10 = 27;
      }

      else
      {
        v11 = 0;
        do
        {
          size = interchange_compression::header::get_size((this + 4260), v6, v11);
          if (size)
          {
            if (!*&v9[12 * (v5 + v11) + 8])
            {
              interchange_compression::compressor::compress();
            }

            v13 = size;
            v14 = *&v9[12 * (v5 + v11) + 4];
            if (!(v6 | v11))
            {
              *a4 = (v14 & v19) << interchange_compression::memory_parameters[11 * *(this + 1150) + 7];
              v14 >>= v20;
              v13 = size - v20;
            }

            if (v6 != 6)
            {
              bit_pack::pack(a2, v14, v13);
              if (v6 == 5)
              {
                if (!*&v9[12 * (v11 + 24) + 8])
                {
                  interchange_compression::compressor::compress();
                }

                bit_pack::pack(a2, *&v9[12 * (v11 + 24) + 4], v13);
              }
            }
          }

          ++v11;
          v7 = *(this + 1150);
          v10 = v7;
        }

        while (v11 < *(&interchange_compression::format_table + 13 * v7 + 2));
      }
    }

    ++v6;
    v5 += 4;
  }

  while (v6 != 7);
  v15 = interchange_compression::header::get_size((this + 4260)) + v17 - *(a2 + 134);

  return bit_pack::pack(a2, 0, v15);
}

char *interchange_compression::compressor::pack_deltas(char *this, bit_pack *a2, unsigned int *a3, unsigned __int32 a4, unsigned __int32 a5)
{
  v7 = this;
  v8 = 0;
  v32 = this;
  do
  {
    v9 = 0;
    v10 = interchange_compression::NUM_PIXELS_REGION[v8];
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v33 = v10;
    v11 = *(v7 + 1150);
    v31 = v8;
    v12 = 8 * v8;
    do
    {
      v34 = v9 + 1;
      if (v11 == 27)
      {
        v11 = 27;
      }

      else
      {
        v13 = 0;
        v14 = v32;
        if (v31)
        {
          v15 = v9;
        }

        else
        {
          v15 = v9 + 1;
        }

        v16 = v9 != 6 || v31 != 0;
        v17 = v7;
        do
        {
          v18 = v15;
          if (!v16)
          {
            v19 = a3[v13];
            if (v19 == 4 || v19 == 1)
            {
              v18 = 0;
            }

            else
            {
              v18 = 7;
            }
          }

          v21 = a3[v13];
          if (*&v14[212 * v21 + 180])
          {
            v22 = 0;
          }

          else
          {
            v22 = *&v17[212 * v21 + 172];
          }

          v23 = vdupq_n_s32(v18 + v12);
          v24.i64[0] = 0x100000001;
          v24.i64[1] = 0x100000001;
          v25 = vshlq_u32(vandq_s8(vshlq_u32(v23, xmmword_295323F50), v24), xmmword_295323F40);
          v26 = vshlq_u32(vandq_s8(vshlq_u32(v23, xmmword_295323F30), v24), xmmword_295323F40);
          v27 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)).u32[0] | v26.i32[1];
          v28 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)).u32[0] | v25.i32[1];
          if (v27 >= a4 || v28 >= a5)
          {
            v30 = 0;
          }

          else
          {
            v30 = *&v17[212 * v21 + 4 + 32 * v28 + 4 * v27] + v22;
          }

          this = bit_pack::pack(a2, v30, *&v14[212 * v21 + 196]);
          ++v13;
          v11 = *(v7 + 1150);
          v14 += 1060;
          v17 += 1060;
        }

        while (v13 < *(&interchange_compression::format_table + 13 * v11 + 2));
      }

      v9 = v34;
    }

    while (v34 != v33);
    v8 = v31 + 1;
    v32 += 4;
  }

  while (v31 != 3);
  return this;
}

uint64_t interchange_compression::compressor::valid_predictor(interchange_compression::compressor *this, unsigned int a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(this + 1154) == a3 || *(&interchange_compression::format_table + 52 * *(this + 1150) + a3 + 44) == 0;
  if ((a4 < 4 || a5 <= 1) && a2 != 3 && a2 || !*(this + a2 + 1060) || a2 - 3 < 2 && v5)
  {
    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  if (a2 == 4 || v5 && (*(this + 4612) & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a2 <= 2)
  {
LABEL_15:
    if (!v5 && (*(this + 4612) & 1) != 0)
    {
LABEL_22:
      LOBYTE(v8) = 0;
      return v8 & 1;
    }
  }

  if (a2 == 1)
  {
    if (*(this + 1150) != 26)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (a2 != 2)
  {
LABEL_24:
    LOBYTE(v8) = 1;
    return v8 & 1;
  }

  v6 = *(this + 1150);
  v7 = v6 >= 0x17;
  v8 = 0x4000C3u >> v6;
  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

_DWORD *interchange_compression::predictor_profile::set_delta(_DWORD *this, int a2, int a3, int a4)
{
  if (*this >= 0x21u)
  {
    interchange_compression::compressor::compute_deltas();
  }

  v4 = ((a4 & ~(-1 << *this)) << -*this) >> -*this;
  if (v4 > this[34])
  {
    this[34] = v4;
  }

  if (v4 < this[33])
  {
    this[33] = v4;
  }

  v5 = (a2 & 0xFFFFFFFC | a3) >> 1;
  if (v4 > this[v5 + 39])
  {
    this[v5 + 39] = v4;
  }

  if (v4 < this[v5 + 35])
  {
    this[v5 + 35] = v4;
  }

  this[8 * a3 + 1 + a2] = v4;
  return this;
}

_DWORD *interchange_compression::predictor_profile::process(_DWORD *this, int a2)
{
  v2 = this[34];
  if (v2)
  {
    if (v2 >= 0)
    {
      v3 = this[34];
    }

    else
    {
      v3 = -v2;
    }

    for (i = 31; i != -1; --i)
    {
      if ((v3 >> i))
      {
        break;
      }
    }

    if (v3 == 1 << i && v2 < 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = v6 + i;
  }

  else
  {
    v7 = 0;
  }

  v8 = this[33];
  if (v8)
  {
    if (v8 >= 0)
    {
      v9 = this[33];
    }

    else
    {
      v9 = -v8;
    }

    for (j = 31; j != -1; --j)
    {
      if ((v9 >> j))
      {
        break;
      }
    }

    if (v9 == 1 << j && v8 < 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = v12 + j;
  }

  else
  {
    v13 = 0;
  }

  if (v7 <= v13)
  {
    v7 = v13;
  }

  v14 = v2 - v8;
  for (k = 31; k != -1; --k)
  {
    if ((v14 >> k))
    {
      break;
    }
  }

  v16 = k + 1;
  v17 = (-1 << k) - v8;
  if (v7 >= k + 1)
  {
    v18 = k + 1;
  }

  else
  {
    v18 = v7;
  }

  if (v7 <= v16)
  {
    v17 = 0;
  }

  this[43] = v17;
  this[44] = v18;
  if (a2 && !v18)
  {
    v18 = 1;
    this[44] = 1;
  }

  v19 = 0;
  v20 = this + 45;
  do
  {
    v21 = this[v19 + 39];
    if (v21)
    {
      if (v21 >= 0)
      {
        v22 = this[v19 + 39];
      }

      else
      {
        v22 = -v21;
      }

      for (m = 31; m != -1; --m)
      {
        if ((v22 >> m))
        {
          break;
        }
      }

      if (v22 == 1 << m && v21 < 0)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      v21 = v25 + m;
    }

    v26 = this[v19 + 35];
    if (v26)
    {
      if (v26 >= 0)
      {
        v27 = this[v19 + 35];
      }

      else
      {
        v27 = -v26;
      }

      for (n = 31; n != -1; --n)
      {
        if ((v27 >> n))
        {
          break;
        }
      }

      if (v27 == 1 << n && v26 < 0)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      v26 = v30 + n;
    }

    if (v21 <= v26)
    {
      v21 = v26;
    }

    v31 = v18 >= v21;
    v32 = v18 - v21;
    if (v32 != 0 && v31)
    {
      if (*this == 32)
      {
        v33 = 15;
      }

      else
      {
        v33 = 3;
      }

      if (v33 >= v32)
      {
        v33 = v32;
      }

      v34 = v18 - v33;
      v20[v19] = v33;
    }

    else
    {
      v20[v19] = 0;
      v34 = v18;
    }

    this[v19++ + 49] = v34;
  }

  while (v19 != 4);
  return this;
}

uint64_t interchange_compression::header::set(interchange_compression::header *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = a3 + 4 * a2;
  result = interchange_compression::header::get_size(this, a2, a3);
  v8 = this + 12 * v6;
  *(v8 + 1) = result;
  v9 = v8 + 4;
  if (a4 >> result)
  {
    interchange_compression::header::set();
  }

  *(v9 + 1) = a4;
  *(v9 + 2) = 1;
  return result;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this)
{
  v2 = *this;
  v3 = interchange_compression::header::header_layout_table[15 * *this + 14];
  for (i = 3; i != 7; ++i)
  {
    if (v2 == 27)
    {
      v2 = 27;
    }

    else
    {
      v5 = 0;
      do
      {
        v3 = interchange_compression::header::get_size(this, i, v5++) + v3;
        v2 = *this;
      }

      while (v5 < *(&interchange_compression::format_table + 13 * *this + 2));
    }
  }

  return v3;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this, unsigned int a2, unsigned int a3)
{
  if (a2 <= 1)
  {
    return interchange_compression::header::header_layout_table[15 * *this + 1 + 4 * a2 + a3];
  }

  if (a2 == 4)
  {
    v4 = this + 4;
    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if (!*&v4[12 * a3 + 56])
    {
      interchange_compression::header::get_size();
    }

    if ((v4[12 * a3 + 4] & 8) != 0)
    {
      return (*&v4[12 * a3 + 52] + 1);
    }

    return 0;
  }

  if (a2 != 3)
  {
    if (a2 == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3);
    }

    if (a2 - 5 > 1)
    {
      interchange_compression::header::get_size();
    }

    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if ((*(this + 3 * a3 + 2) & 3) == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3) >> 1;
    }

    return 0;
  }

  if (!*(this + 3 * a3 + 3))
  {
    interchange_compression::header::get_size();
  }

  if ((*(this + 12 * a3 + 8) & 4) == 0)
  {
    return 0;
  }

  if (*(&interchange_compression::format_table + 13 * *this + a3 + 3) == 32)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

_DWORD *interchange_compression::header::field_container::set_signed(_DWORD *this, int a2)
{
  v2 = (1 << (*this - 1));
  if (a2 >= v2 && -v2 <= a2)
  {
    printf("value = %d, min = %d, max = %d\n", a2, -v2, v2);
    __assert_rtn("set_signed", "interchange_header.h", 90, "0");
  }

  this[1] = a2;
  this[2] = 1;
  return this;
}

uint64_t interchange_compression::get_id(interchange_compression *this, uint64_t a2)
{
  if (this <= 11)
  {
    if (this == 8)
    {
      return 0;
    }

    if (this == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(this)
    {
      case 0xC:
        return 2;
      case 0x10:
        return 3;
      case 0x20:
        return 4;
    }
  }

  if (this == 2)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if ((this | 2) != 2)
  {
    interchange_compression::get_id(this);
  }

  return v2;
}

uint64_t interchange_compression::derive_sharing(uint64_t this, uint64_t a2, unsigned int *a3, unsigned int *a4, int (*a5)[4], int (*a6)[4])
{
  v6 = *(a2 + 12);
  if (v6 == 5)
  {
    v7 = a3[3];
    if (v7 >= 2)
    {
      interchange_compression::derive_sharing();
    }

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 5;
    }

    a3[3] = v8;
    *(a2 + 12) = 1;
  }

  if (!this)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  do
  {
    v14 = a3[v9];
    if (v14 > v12 || v9 == 1 && v14 == v12)
    {
      v12 = a3[v9];
      v11 = v9;
    }

    if (v14 < v13)
    {
      v13 = a3[v9];
      v10 = v9;
    }

    v15 = interchange_compression::dq_consts[160 * *(a2 + 4 * v9) + 6 + 10 * v14];
    (*a5)[v9] = v15;
    a4[v9++] = v15;
  }

  while (this != v9);
  if (this != 1)
  {
LABEL_19:
    v16 = (v11 + 1) % 3u;
    if (v16 == v10)
    {
      v16 = (v11 + 2) % 3u;
    }

    v17 = a3[v16];
    v18 = a3[6 - (v11 + v10) - v16];
    v19 = v17 > v18;
    if (v17 <= v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = 6 - (v11 + v10) - v16;
    }

    if (!v19)
    {
      v16 = 6 - (v11 + v10) - v16;
    }

    v21 = a3[v11];
    v22 = a3[v10];
    if (this == 2)
    {
      if (v21 == v22 || a4[v10] < 1)
      {
LABEL_47:
        if (v6 == 5)
        {
          *(a2 + 12) = 5;
          a3[3] = a3[3] != 5;
          if (a4[3] >= 1)
          {
            interchange_compression::derive_sharing();
          }
        }

        return this;
      }

      (*a5)[v10] = 0;
      v23 = a4[v10];
      v24 = (*a5)[v11];
      goto LABEL_30;
    }

    v26 = a3[v20];
    if (v21 - v26 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v31 = 1431655766 * a4[v10];
      (*a5)[v20] += HIDWORD(v31) + (v31 >> 63);
      v32 = 1431655766 * (a4[v10] + 1);
      (*a5)[v16] += HIDWORD(v32) + (v32 >> 63);
      v33 = 1431655766 * (a4[v10] + 2);
      v34 = HIDWORD(v33) + (v33 >> 63);
      v35 = (*a5)[v11];
LABEL_45:
      v25 = v34 + v35;
      goto LABEL_46;
    }

    v28 = a3[v16];
    if (v21 - v28 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v36 = a4[v20] & (a4[v20] >> 31);
      (*a5)[v20] = v36;
      (*a5)[v16] += (a4[v10] - v36 + a4[v20]) / 2;
      v25 = (*a5)[v11] + (a4[v10] + a4[v20] - (*a5)[v20] + 1) / 2;
      goto LABEL_46;
    }

    if (v28 - v22 > 1)
    {
      if (v28 - v22 != 2)
      {
        goto LABEL_57;
      }

      v30 = a4[v11];
    }

    else
    {
      v30 = a4[v11];
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      this = a4[v16];
      if (this > 0)
      {
LABEL_54:
        v37 = 0;
        (*a5)[v10] = 0;
        (*a5)[v20] = 0;
        if ((a4[v20] + a4[v10]) >= 6)
        {
          v37 = a4[v16];
        }

        (*a5)[v16] = v37;
        v34 = a4[v10] - v37 + a4[v20];
        v35 = a4[v16] + (*a5)[v11];
        goto LABEL_45;
      }
    }

    if (v30 <= -2 && a4[v16] >= 1)
    {
      goto LABEL_54;
    }

LABEL_57:
    if (!v22 || a4[v10] < 1 || a4[v20] < 1 || (a4[v16] & 0x80000000) != 0 || a4[v11] > -2)
    {
      if (v21 != v22 && a4[v10] >= 1)
      {
        (*a5)[v10] = 0;
        (*a5)[v11] += a4[v10];
      }

      if (v28 != v26 && a4[v20] >= 1)
      {
        (*a5)[v20] = 0;
        (*a5)[v16] += a4[v20];
      }

      goto LABEL_47;
    }

    (*a5)[v10] = 0;
    (*a5)[v20] = 0;
    (*a5)[v16] = a4[v16];
    v24 = a4[v20];
    v23 = a4[v10] + (*a5)[v11];
LABEL_30:
    v25 = v24 + v23;
LABEL_46:
    (*a5)[v11] = v25;
    goto LABEL_47;
  }

  return this;
}

uint64_t interchange_compression::adjust_level(uint64_t this, int a2, int a3, int a4, _DWORD *a5, unsigned int *a6, unsigned int *a7)
{
  v7 = a4 - a3;
  if (a4 - a3 < 0)
  {
    v8 = &interchange_compression::dq_consts[160 * this + 10 * a2];
    if (v8[7] < a3 - a4)
    {
      --*a6;
      if (!v8[8])
      {
        v7 = -1;
        goto LABEL_4;
      }
    }
  }

  else if (a4 != a3)
  {
    *a6 += v7;
LABEL_4:
    *a5 += v7;
  }

  return this;
}

uint64_t interchange_compression::encode_mode(uint64_t this, uint64_t a2, int a3, int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8)
{
  *a5 = 0;
  *a7 = 0;
  if (this >= 0x10)
  {
    v8 = 4;
LABEL_5:
    *a4 = v8;
    *a6 = a2;
    return this;
  }

  if (this == 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

  if ((this & 0xD) != 8)
  {
    if (this != 12)
    {
      interchange_compression::encode_mode();
    }

    *a4 = 3;
    v9 = a2 - 3;
    if (a2 <= 3)
    {
      *a5 = 2;
      *a6 = 0;
      *a7 = a2;
      return this;
    }

    goto LABEL_13;
  }

  *a4 = 3;
  if (a3 | a2)
  {
    v9 = a2 - 2;
    if (a2 <= 2)
    {
      *a5 = 2;
      *a6 = 0;
      *a7 = a2 + 1;
      return this;
    }

LABEL_13:
    *a6 = v9;
    return this;
  }

  *a5 = 2;
  *a6 = 0;
  *a7 = 0;
  return this;
}

interchange_compression::decompressor *interchange_compression::decompressor::decompressor(interchange_compression::decompressor *this, unsigned int a2, interchange_compression *a3, unsigned int a4)
{
  *this = a2;
  if (interchange_compression::header::header_layout_table[15 * a2] != a2)
  {
    interchange_compression::compressor::compressor();
  }

  v5 = a3;
  *(this + 4) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 85) = a2;
  *(this + 87) = a3;
  *(this + 88) = a4;
  if (!interchange_compression::check_valid_lossy_level(a3, a2))
  {
    interchange_compression::decompressor::decompressor();
  }

  if (v5 && a4 >= 4)
  {
    interchange_compression::decompressor::decompressor();
  }

  *(this + 86) = *(&interchange_compression::format_table + 52 * a2 + 48);
  return this;
}

uint64_t interchange_compression::decompressor::get_subblock_size(interchange_compression::decompressor *this, unsigned int a2)
{
  if (a2 >= 0xF0)
  {
    v2 = *(this + 87);
    if ((v2 - 1) <= 2)
    {
      return interchange_compression::lossy_parameters[28 * *(this + 85) + 8 + v2];
    }
  }

  v4 = *(this + 85);
  v5 = &interchange_compression::memory_parameters[11 * v4];
  if (v5[8] == a2)
  {
    return ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  }

  if (v5[9] == a2)
  {
    return v5[5];
  }

  if (!a2)
  {
    return 0;
  }

  v6 = ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  v7 = interchange_compression::memory_parameters[11 * v4 + 5];
  if (v7 >= v6)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t interchange_compression::decompressor::fill_subblock_error_color(uint64_t this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  do
  {
    v4 = *(this + 340);
    if (v4 != 27)
    {
      v5 = 0;
      v6 = vdupq_n_s32(v2);
      v7 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_295323F50), v3), xmmword_295323F40);
      v8 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_295323F30), v3), xmmword_295323F40);
      v9 = (*a2)[(vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)).u32[0] | v7.i32[1])][vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)).u32[0] | v8.i32[1]];
      do
      {
        if (v5 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = ~(-1 << *(&interchange_compression::format_table + 13 * v4 + v5 + 3));
        }

        v9[v5++] = v10;
        v4 = *(this + 340);
      }

      while (v5 < *(&interchange_compression::format_table + 13 * v4 + 2));
    }

    ++v2;
  }

  while (v2 != 32);
  return this;
}

uint64_t bit_pack::unpack(bit_pack *this, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    bit_pack::unpack();
  }

  result = bit_pack::get(this, *(this + 135), a2);
  *(this + 135) += a2;
  return result;
}

void *interchange_compression::format_info::unpack_pixel(interchange_compression::format_info *this, const unsigned __int8 *a2, unsigned int *a3)
{
  __dst[2] = *MEMORY[0x29EDCA608];
  __dst[0] = 0;
  __dst[1] = 0;
  result = memcpy(__dst, a2, *(this + 1));
  if (*(this + 2))
  {
    v6 = 0;
    v7 = (this + 28);
    do
    {
      v8 = -1 << *(v7 - 4);
      v9 = *v7++;
      a3[v6++] = (*(__dst + ((v9 >> 3) & 0x1FFFFFF8)) >> v9) & ~v8;
    }

    while (v6 < *(this + 2));
  }

  return result;
}

BOOL interchange_compression::decompressor::unpack_header(interchange_compression::decompressor *this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4)
{
  v4 = *(this + 85);
  v5 = interchange_compression::memory_parameters[11 * v4 + 7];
  v6 = 8 - v5;
  v7 = &interchange_compression::header::header_layout_table[15 * v4];
  v8 = v7[1];
  v9 = v8 - (8 - v5);
  if (v8 <= 8 - v5)
  {
    interchange_compression::decompressor::unpack_header();
  }

  v11 = *(a4 + 128);
  v12 = v6 + 8 * v11;
  if (v12 < v7[14])
  {
    return 0;
  }

  v15 = v5 - 8;
  v16 = (a3 >> v5) & ~(-1 << v6);
  v17 = 8 * v11;
  v18 = bit_pack::unpack(a4, v9);
  *(this + 4) = 0u;
  v19 = this + 4;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  interchange_compression::header::set(this, 0, 0, (v18 << v6) | v16);
  for (i = 1; i != 28; ++i)
  {
    if (i == 12)
    {
      if (v12 < interchange_compression::header::get_size(this))
      {
        return 0;
      }
    }

    else
    {
      if (i != 8)
      {
        v21 = i >> 2;
        if (i >> 2 == 6)
        {
          continue;
        }

        goto LABEL_11;
      }

      bit_pack::unpack(a4, interchange_compression::header::header_layout_table[15 * *(this + 85) + 13] + v15 - *(a4 + 135));
    }

    v21 = i >> 2;
LABEL_11:
    size = interchange_compression::header::get_size(this, v21, i & 3);
    v23 = bit_pack::unpack(a4, size);
    interchange_compression::header::set(this, v21, i & 3, v23);
    if (v21 == 5)
    {
      v24 = interchange_compression::header::get_size(this, 6u, i & 3);
      v25 = bit_pack::unpack(a4, v24);
      interchange_compression::header::set(this, 6u, i & 3, v25);
    }
  }

  v26 = interchange_compression::header::get_size(this);
  bit_pack::unpack(a4, v26 + v15 - *(a4 + 135));
  v27 = *(this + 85);
  if (v27 == 21)
  {
    if (!*(this + 6))
    {
      interchange_compression::compressor::compress();
    }

    if (!*(this + 9))
    {
      interchange_compression::compressor::compress();
    }

    v28 = *(this + 5);
    if ((v28 & 0x10) != 0)
    {
      v29 = *(this + 8);
      *(this + 86) = 2;
      interchange_compression::header::set(this, 0, 1u, v28 & 0xFFFFFFEF | (16 * ((v29 >> 4) & 1)));
      interchange_compression::header::set(this, 0, 2u, v29 & 0xFFFFFFEF);
      v27 = *(this + 85);
    }

    else
    {
      v27 = 21;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = &interchange_compression::format_table + 52 * v27;
  LODWORD(v33) = *(v32 + 2);
  if (v33 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v33;
  }

  v34 = v32 + 12;
  do
  {
    if (v27 != 27)
    {
      v35 = 0;
      v36 = this + 12;
      v37 = this + 12;
      do
      {
        v38 = *v37;
        v37 += 12;
        if (!v38)
        {
          interchange_compression::compressor::compress();
        }

        v39 = *(v36 - 4);
        if ((v39 & 4) != 0)
        {
          if (!*&v19[12 * (v35 + 12) + 8])
          {
            interchange_compression::compressor::compress();
          }

          v40 = *&v19[12 * (v35 + 12) + 4];
        }

        else
        {
          v40 = 0;
        }

        if ((~v39 & 3) != 0)
        {
          if (!*&v19[12 * (v35 + 4) + 8])
          {
            interchange_compression::compressor::compress();
          }

          v42 = *&v34[4 * v35];
          if (v42 == 32)
          {
            v43 = 2;
          }

          else
          {
            v43 = 1;
          }

          v44 = v40 >> (v30 << v43);
          if (v42 == 32)
          {
            v45 = 15;
          }

          else
          {
            v45 = 3;
          }

          v41 = *&v19[12 * (v35 + 4) + 4] - (v44 & v45) + 1;
          if (v41 > v42)
          {
            return 0;
          }
        }

        else
        {
          v41 = 0;
        }

        v31 += interchange_compression::NUM_PIXELS_REGION[v30] * v41;
        ++v35;
        v36 = v37;
      }

      while (v33 != v35);
    }

    ++v30;
  }

  while (v30 != 4);
  if (v27 == 26)
  {
    v46 = 15;
  }

  else
  {
    v46 = 7;
  }

  if (((*(a4 + 135) + v31 + v46) & ~v46) != v17)
  {
    return 0;
  }

  return interchange_compression::header::error_check(this) == 0;
}

uint64_t interchange_compression::decompressor::decompress_pixels(uint64_t this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4, unsigned int (*a5)[4][8][4])
{
  v5 = 0;
  v6 = 0;
  v91 = *MEMORY[0x29EDCA608];
  v7 = this + 4;
  v78 = (this + 12);
  v83 = a5;
  v89 = this;
  do
  {
    v8 = 0;
    v77 = v5;
    v87 = v5 >> 2 << 6;
    v80 = (*a5)[2 * (v6 & 1)] + v87;
    v82 = 4 * (v5 >> 2);
    if (interchange_compression::NUM_PIXELS_REGION[v6] <= 1u)
    {
      v9 = 1;
    }

    else
    {
      v9 = interchange_compression::NUM_PIXELS_REGION[v6];
    }

    v10 = *(this + 340);
    v11 = v10;
    v86 = v9;
    do
    {
      if (v11 == 27)
      {
        v12 = v8 + 1;
      }

      else
      {
        v13 = 0;
        v12 = v8 + 1;
        v14 = v90;
        v15 = v78;
        v16 = &unk_295325734;
        v17 = v78;
        do
        {
          v18 = *v17;
          v17 += 3;
          if (!v18)
          {
            interchange_compression::compressor::compress();
          }

          v19 = *(v15 - 4);
          if ((v19 & 4) != 0)
          {
            if (!*(v7 + 12 * (v13 + 12) + 8))
            {
              interchange_compression::compressor::compress();
            }

            v20 = *(v7 + 12 * (v13 + 12) + 4);
          }

          else
          {
            v20 = 0;
          }

          v21 = v19 & 3;
          if (v21 == 3)
          {
            v22 = 0;
          }

          else
          {
            if (!*(v7 + 12 * (v13 + 4) + 8))
            {
              interchange_compression::compressor::compress();
            }

            v23 = v16[13 * v11] == 32;
            if (v16[13 * v11] == 32)
            {
              v24 = 2;
            }

            else
            {
              v24 = 1;
            }

            v25 = v20 >> (v6 << v24);
            if (v23)
            {
              v26 = 15;
            }

            else
            {
              v26 = 3;
            }

            v22 = *(v7 + 12 * (v13 + 4) + 4) - (v25 & v26) + 1;
          }

          v27 = bit_pack::unpack(a4, v22);
          if (v22 >= 0x21)
          {
            interchange_compression::decompressor::decompress_pixels();
          }

          if (v21 == 1)
          {
            v28 = 0;
          }

          else
          {
            v28 = 7;
          }

          if (v8 != 6)
          {
            v28 = v8 + 1;
          }

          if (v6)
          {
            v28 = v8;
          }

          v29 = vdupq_n_s32(v28);
          v30.i64[0] = 0x100000001;
          v30.i64[1] = 0x100000001;
          v31 = vshlq_u32(vandq_s8(vshlq_u32(v29, xmmword_295323F50), v30), xmmword_295323F40);
          v32 = vshlq_u32(vandq_s8(vshlq_u32(v29, xmmword_295323F30), v30), xmmword_295323F40);
          *&v14[64 * (vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)).u32[0] | v31.i32[1]) + 16 * (vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)).u32[0] | v32.i32[1])] = v27 << -v22 >> -v22;
          ++v13;
          v11 = *(v89 + 340);
          ++v16;
          v14 += 4;
          v15 = v17;
        }

        while (v13 < *(&interchange_compression::format_table + 13 * v11 + 2));
        v10 = *(v89 + 340);
        a5 = v83;
        this = v89;
        v9 = v86;
      }

      v8 = v12;
    }

    while (v12 != v9);
    v33 = v87;
    if (v10 != 27)
    {
      v34 = 0;
      v35 = (2 * v6) & 2;
      v79 = v90;
      do
      {
        if (!*(v7 + 12 * v34 + 8))
        {
          interchange_compression::compressor::compress();
        }

        v36 = v34;
        v37 = *(v7 + 12 * v34 + 4);
        if ((v37 & 4) != 0)
        {
          if (!*(v7 + 12 * (v34 + 12) + 8))
          {
            interchange_compression::compressor::compress();
          }

          v38 = *(v7 + 12 * (v34 + 12) + 4);
        }

        else
        {
          v38 = 0;
        }

        v39 = *(v7 + 12 * v34 + 4);
        v40 = *(&interchange_compression::format_table + 13 * v10 + v36 + 3) == 32;
        if (*(&interchange_compression::format_table + 13 * v10 + v36 + 3) == 32)
        {
          v41 = 2;
        }

        else
        {
          v41 = 1;
        }

        v42 = v38 >> (v6 << v41);
        if (v40)
        {
          v43 = 15;
        }

        else
        {
          v43 = 3;
        }

        v44 = v42 & v43;
        v45 = v37 & 3;
        if (v45 == 3)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
        }

        else
        {
          if (!*(v7 + 12 * (v36 + 4) + 8))
          {
            interchange_compression::compressor::compress();
          }

          v46 = *(v7 + 12 * (v36 + 4) + 4) - v44 + 1;
          if ((v37 & 1 | 2) == 2)
          {
            v47 = 0;
          }

          else
          {
            v47 = 3;
          }

          v48 = (v37 & 1 | 2) != 2;
        }

        v49 = v7 + 12 * (v36 + 8);
        v51 = *(v49 + 8);
        v50 = (v49 + 8);
        if (!v51)
        {
          interchange_compression::compressor::compress();
        }

        v52 = 0;
        v53 = v7 + 12 * (v36 + 8);
        v55 = *(v53 + 4);
        v54 = (v53 + 4);
        (*a5)[v48][v47][v36] = v55;
        v56 = (v44 == 0) & (v39 >> 3);
        v57 = v7 + 12 * (v36 + 16);
        v58 = v7 + 12 * (v36 + 20);
        v59 = v7 + 12 * (v36 + 24);
        v60 = 1;
        do
        {
          v61 = 0;
          v62 = 0;
          v81 = v60;
          v63 = -v52;
          v84 = v52 | v35;
          v64 = &v79[64 * v52];
          v65 = v6 & 1 ^ v52 ^ 1;
          v66 = &v80[128 * v52];
          v67 = v65 | v35;
          v68 = 3;
          v85 = &v90[64 * v65];
          do
          {
            if (v63 != v35 || v33 + v61)
            {
              if (v56)
              {
                if (!*(v57 + 8))
                {
                  interchange_compression::compressor::compress();
                }

                v69 = *(v57 + 4);
              }

              else
              {
                v69 = 0;
              }

              if (v46 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              v70 = v69 << (-v46 & 0x1F) >> (-v46 & 0x1F);
              if (v45 > 1)
              {
                if (v45 == 2)
                {
                  if (!*(v58 + 8))
                  {
                    interchange_compression::compressor::compress();
                  }

                  v71 = *(&interchange_compression::format_table + 13 * *(this + 340) + v36 + 3);
                  if (v71 >= 0x42)
                  {
                    interchange_compression::decompressor::decompress_pixels();
                  }

                  if (!*(v59 + 8))
                  {
                    interchange_compression::compressor::compress();
                  }

                  if (!*v50)
                  {
                    interchange_compression::compressor::compress();
                  }

                  if (v71 >= 0x21)
                  {
                    interchange_compression::compressor::compute_deltas();
                  }

                  v72 = *v54 - v70 + *&v64[v61] + ((*(v59 + 4) << -(v71 >> 1)) >> -(v71 >> 1)) * v84 + ((*(v58 + 4) << -(v71 >> 1)) >> -(v71 >> 1)) * (v82 + v62);
                  v33 = v87;
                  this = v89;
                  a5 = v83;
LABEL_79:
                  v73 = ((v72 & ~(-1 << v71)) << -v71) >> -v71;
                }

                else
                {
                  v73 = (*a5)[0][0][v36];
                }

                *&v66[v61] = v73;
                goto LABEL_87;
              }

              if (!v45)
              {
                if (!*v50)
                {
                  interchange_compression::compressor::compress();
                }

                v71 = *(&interchange_compression::format_table + 13 * *(this + 340) + v36 + 3);
                if (v71 >= 0x21)
                {
                  interchange_compression::compressor::compute_deltas();
                }

                v72 = *v54 - v70 + *&v64[v61];
                goto LABEL_79;
              }

              v74 = *(&interchange_compression::format_table + 13 * *(this + 340) + v36 + 3);
              if (v74 >= 0x21)
              {
                interchange_compression::compressor::compute_deltas();
              }

              if (v6 >= 2)
              {
                v75 = v62;
              }

              else
              {
                v75 = v68;
              }

              v76 = v75 | (2 * v6) & 4;
              v33 = v87;
              (*a5)[v67][v76][v36] = ((((*a5)[dword_295325CD8[16 * v67 + 1 + 2 * v76]][dword_295325CD8[16 * v67 + 2 * v76]][v36] - v70 + *&v85[16 * v75 + 4 * v36]) & ~(-1 << v74)) << -v74) >> -v74;
            }

LABEL_87:
            ++v62;
            --v68;
            v61 += 16;
          }

          while (v61 != 64);
          v60 = 0;
          v52 = 1;
        }

        while ((v81 & 1) != 0);
        v34 = v36 + 1;
        v10 = *(this + 340);
        v79 += 4;
        v80 += 4;
      }

      while ((v36 + 1) < *(&interchange_compression::format_table + 13 * v10 + 2));
    }

    ++v6;
    v5 = v77 + 2;
  }

  while (v6 != 4);
  return this;
}

_DWORD *interchange_compression::decompressor::decorrelate(_DWORD *this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3 = this[85];
  v4 = a2;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = v3;
    do
    {
      if (v7 != 27)
      {
        v8 = 0;
        v9 = this + 3;
        v10 = v6;
        v11 = &unk_295325734;
        do
        {
          if (!*v9)
          {
            interchange_compression::compressor::compress();
          }

          if ((*(v9 - 1) & 0x10) != 0)
          {
            v12 = this[86];
            if (v8 != v12)
            {
              v13 = v11[13 * v7];
              if (v13 >= 0x21)
              {
                interchange_compression::compressor::compute_deltas();
              }

              *v10 = (((((*a2)[v2][v5][v12] >> (*(&interchange_compression::format_table + 13 * v7 + v12 + 3) - v13)) + *v10) & ~(-1 << v13)) << -v13) >> -v13;
              v3 = this[85];
            }
          }

          *v10++ &= ~(-1 << v11[13 * v3]);
          ++v8;
          v3 = this[85];
          ++v11;
          v9 += 3;
          v7 = v3;
        }

        while (v8 < *(&interchange_compression::format_table + 13 * v3 + 2));
      }

      ++v5;
      v6 = (v6 + 16);
    }

    while (v5 != 8);
    ++v2;
    v4 = (v4 + 128);
  }

  while (v2 != 4);
  return this;
}

uint64_t bit_pack::get(bit_pack *this, unsigned int a2, unsigned int a3)
{
  if (a3 >= 0x21)
  {
    bit_pack::get();
  }

  v3 = a2;
  v4 = *(this + 134);
  if (a3 + a2 > v4)
  {
    printf("read overflow:  read bit=%d size=%d, total=%d\n", a2, a3, v4);
    __assert_rtn("get", "interchange_bit_pack.h", 84, "0");
  }

  v5 = *(this + 128);
  __dst = 0;
  v6 = 520;
  if (*(this + 544))
  {
    v6 = 528;
  }

  v7 = *(this + v6);
  LODWORD(v8) = v5 - (a2 >> 3);
  if (v8 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v8;
  }

  v9 = -1 << a3;
  memcpy(&__dst, (v7 + (a2 >> 3)), v8);
  return (__dst >> (v3 & 7)) & ~v9;
}

uint64_t interchange_compression::header::error_check(interchange_compression::header *this)
{
  v1 = this + 4;
  v2 = *this;
  if (!*(this + 3 * *(&interchange_compression::format_table + 52 * *this + 48) + 3))
  {
    interchange_compression::compressor::compress();
  }

  if (v2 == 21)
  {
    result = 0;
  }

  else
  {
    result = (v1[12 * *(&interchange_compression::format_table + 52 * *this + 48) + 4] >> 4) & 1;
  }

  if (v2 != 27)
  {
    v5 = 0;
    v6 = &interchange_compression::format_table + 52 * v2;
    LODWORD(v7) = *(v6 + 2);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    v8 = this + 12;
    v9 = this + 12;
    do
    {
      v10 = *v9;
      v9 += 12;
      if (!v10)
      {
        interchange_compression::compressor::compress();
      }

      v11 = *(v8 - 4);
      if ((v11 & 3u) - 1 >= 2)
      {
        v12 = result;
      }

      else
      {
        v12 = result | 2;
      }

      if ((v11 & 0x10) == 0)
      {
        v12 = result;
      }

      if ((v2 > 0x16 || ((1 << v2) & 0x4000C3) == 0) && (v11 & 3) == 2)
      {
        v12 |= 4u;
      }

      v13 = v11 & 3;
      if (v13 == 3)
      {
        if (!*&v1[12 * (v5 + 4) + 8])
        {
          interchange_compression::compressor::compress();
        }

        if (v11 & 4 | *&v1[12 * (v5 + 4) + 4])
        {
          v12 |= 0x10u;
        }
      }

      else
      {
        v14 = v12 | 8;
        if (v2 != 26)
        {
          v14 = v12;
        }

        if (v13 == 1)
        {
          v12 = v14;
        }
      }

      if (!*&v1[12 * (v5 + 4) + 8])
      {
        interchange_compression::compressor::compress();
      }

      if ((*&v1[12 * (v5 + 4) + 4] + 1) <= *&v6[4 * v5 + 12])
      {
        result = v12;
      }

      else
      {
        result = v12 | 0x20;
      }

      ++v5;
      v8 = v9;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t BitstreamReader::initialize(uint64_t this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 > 3)
  {
    v9 = 0;
    v10 = *a2;
    a2 += 4;
    v3 = bswap32(v10);
    v8 = a3 - 4;
  }

  else
  {
    v3 = 0;
    if (a3)
    {
      v4 = 24;
      v5 = a2;
      v6 = a3;
      do
      {
        v7 = *v5++;
        v3 |= v7 << v4;
        v4 -= 8;
        --v6;
      }

      while (v6);
      v8 = 0;
      v9 = 32 - 8 * a3;
      a2 += a3;
    }

    else
    {
      v8 = 0;
      v9 = 32;
    }
  }

  *(this + 40) = v9;
  *(this + 4) = v3;
  *(this + 8) = 0;
  if ((a2 & 3) != 0 && (v11 = a2 & 3, v12 = (4 - v11), v12 <= v8))
  {
    v13 = 0;
    v14 = 8 * v11;
    if (a3 <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = a3;
    }

    v16 = v15 + v11;
    v17 = v11 | 0xFFFFFFFC;
    v18 = 24;
    v19 = a2;
    do
    {
      v20 = *v19++;
      v13 |= v20 << v18;
      v18 -= 8;
    }

    while (!__CFADD__(v17++, 1));
    a2 += v12;
    v8 = v16 - 8;
    *(this + 8) = 32 - v14;
  }

  else
  {
    v13 = 0;
  }

  *this = v13;
  *(this + 16) = a2;
  *(this + 24) = &a2[v8 & 0xFFFFFFFC];
  *(this + 32) = &a2[v8];
  return this;
}

uint64_t BitstreamReader::flushBits(uint64_t this, int a2)
{
  v2 = *(this + 16);
  v3 = *(this + 40);
  v4 = *this << a2;
  v5 = *(this + 8) - a2;
  if (v5 < 0)
  {
    if (v2 >= *(this + 24))
    {
      v8 = *(this + 32);
      if (v2 >= v8)
      {
        v7 = 0;
        v12 = 32;
      }

      else
      {
        v7 = 0;
        v9 = 8 * v2;
        v10 = 24;
        do
        {
          v11 = *v2;
          v2 = (v2 + 1);
          v7 |= v11 << v10;
          v10 -= 8;
        }

        while (v2 != v8);
        v12 = v9 - 8 * v8 + 32;
        v2 = *(this + 32);
      }

      v3 += v12;
      if (v3 >= 0x3F)
      {
        v3 = 63;
      }
    }

    else
    {
      v6 = *v2++;
      v7 = bswap32(v6);
    }

    v4 |= v7 << (a2 - *(this + 8));
    v5 += 32;
  }

  *this = v4;
  *(this + 8) = v5;
  *(this + 16) = v2;
  *(this + 40) = v3;
  return this;
}

uint64_t BitstreamReader::getBits(BitstreamReader *this, int a2)
{
  v2 = *this;
  v3 = *(this + 2);
  v4 = *(this + 10);
  v5 = *this << a2;
  v6 = *(this + 2) - a2;
  if (v6 < 0)
  {
    if (v3 >= *(this + 3))
    {
      v9 = *(this + 4);
      if (v3 >= v9)
      {
        v8 = 0;
        v13 = 32;
      }

      else
      {
        v8 = 0;
        v10 = 8 * v3;
        v11 = 24;
        do
        {
          v12 = *v3;
          v3 = (v3 + 1);
          v8 |= v12 << v11;
          v11 -= 8;
        }

        while (v3 != v9);
        v13 = v10 - 8 * v9 + 32;
        v3 = *(this + 4);
      }

      v4 += v13;
      if (v4 >= 0x3F)
      {
        v4 = 63;
      }
    }

    else
    {
      v7 = *v3++;
      v8 = bswap32(v7);
    }

    v5 |= v8 << (a2 - *(this + 8));
    v6 += 32;
  }

  *this = v5;
  *(this + 2) = v6;
  *(this + 2) = v3;
  *(this + 10) = v4;
  return (HIDWORD(v2) >> -a2);
}

BOOL checkPlatformForProResRAWSupport(void)
{
  v3 = *MEMORY[0x29EDCA608];
  memset(v2, 0, sizeof(v2));
  v1 = 128;
  sysctlbyname("hw.targettype", v2, &v1, 0, 0);
  if (v1 < 3)
  {
    return 0;
  }

  if (LODWORD(v2[0]) == 3355990)
  {
    return 1;
  }

  return LODWORD(v2[0]) == 3421526;
}

uint64_t AppleProResHW_CheckPlatform(void)
{
  v0 = IOServiceMatching("AppleProResHW");
  if (v0)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v0);
    if (MatchingService)
    {
      IOObjectRelease(MatchingService);
      return 0;
    }

    else
    {
      v2 = 3758097088;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        AppleProResHW_CheckPlatform();
      }
    }
  }

  else
  {
    v2 = 3758097085;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      AppleProResHW_CheckPlatform();
    }
  }

  return v2;
}

uint64_t CreateFrameInfoQueue(uint64_t a1, int a2)
{
  v3 = (800 * a2);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  setIntValueForProperty(Mutable, *MEMORY[0x29EDBB140], 0);
  setULongLongValueForProperty(Mutable, *MEMORY[0x29EDBB180], 1886547826);
  setULongLongValueForProperty(Mutable, *MEMORY[0x29EDBB128], v3);
  v5 = IOSurfaceCreate(Mutable);
  *a1 = v5;
  *(a1 + 8) = IOSurfaceGetID(v5);
  *(a1 + 16) = IOSurfaceGetBaseAddress(*a1);
  v6 = *(a1 + 8);
  *(a1 + 32) = IOSurfaceGetPixelFormat(*a1) | (v6 << 32);
  v7 = IOSurfaceGetWidth(*a1) << 48;
  *(a1 + 40) = v7 & 0xFFFF0000FFFFFFFFLL | (IOSurfaceGetHeight(*a1) << 32);
  CFRelease(Mutable);
  return 0;
}

void setIntValueForProperty(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void setULongLongValueForProperty(__CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t DestroyFrameInfoQueue(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  return 0;
}

unint64_t GetMaxCompressionSizeExcludingAlpha(int a1, unsigned int a2, float a3, int a4)
{
  if (a2 >= 0x556E0 || a4 == 0)
  {
    v5 = a2 >> 1;
    if (a2 <= 0x240000)
    {
      v5 = 1179648;
    }

    if (a2 >= 0x1FA401)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1032192;
    }

    if (a2 >= 0x17BB01)
    {
      v7 = v6;
    }

    else
    {
      v7 = 884736;
    }

    if (a2 > 0xE1000)
    {
      v8 = v7;
    }

    else
    {
      v8 = 516096;
    }

    if (a2 >= 0xA8C01)
    {
      v9 = v8;
    }

    else
    {
      v9 = 442368;
    }

    if (a2 >= 0x65401)
    {
      v10 = v9;
    }

    else
    {
      v10 = 344064;
    }

    if (a2 >= 0x556E1)
    {
      v11 = v10;
    }

    else
    {
      v11 = 294912;
    }
  }

  else
  {
    v11 = a2 >> 1;
    if (a2 < 0x2000)
    {
      v11 = 4096;
    }
  }

  if (a1 <= 1634755437)
  {
    if (a1 <= 1634743399)
    {
      if (a1 == 1634742376)
      {
        goto LABEL_45;
      }

      v13 = 12904;
    }

    else
    {
      if (a1 == 1634743400)
      {
        goto LABEL_45;
      }

      if (a1 == 1634743416)
      {
        LODWORD(v12) = (9 * v11) >> 2;
        goto LABEL_59;
      }

      v13 = 25448;
    }

    if (a1 != (v13 | 0x61700000))
    {
      goto LABEL_62;
    }

LABEL_45:
    if ((a1 & 0xFFFFFFEF) == 0x61703468)
    {
      LODWORD(v12) = v11 + (v11 >> 1);
    }

    else
    {
      v14 = ((4 * v11 / 9) * a3);
      v15 = (v11 * a3);
      LODWORD(v12) = (((1431655766 * (2 * v11)) >> 32) * a3);
      if (a1 != 1634742888)
      {
        LODWORD(v12) = v15;
      }

      if (a1 == 1634759276)
      {
        LODWORD(v12) = ((2 * a2) * a3);
      }

      if (a1 == 1634742376)
      {
        LODWORD(v12) = v14;
      }
    }

    goto LABEL_59;
  }

  if (a1 > 1634759271)
  {
    if (a1 == 1634759272)
    {
      v11 += v11 >> 1;
      goto LABEL_58;
    }

    if (a1 != 1634759276)
    {
      if (a1 != 1634759278)
      {
        goto LABEL_62;
      }

LABEL_58:
      LODWORD(v12) = (v11 * a3);
      goto LABEL_59;
    }

    goto LABEL_45;
  }

  switch(a1)
  {
    case 1634755438:
      v12 = (1431655766 * (2 * v11)) >> 32;
      goto LABEL_59;
    case 1634755439:
      LODWORD(v12) = 13 * v11 / 0x3F;
      goto LABEL_59;
    case 1634755443:
      LODWORD(v12) = 13 * v11 / 0x1C;
LABEL_59:
      if (v12 <= 4096)
      {
        LODWORD(v12) = 4096;
      }

      return v12 & 0x7FFFF000;
  }

LABEL_62:
  result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  if (result)
  {
    GetMaxCompressionSizeExcludingAlpha();
    return 0;
  }

  return result;
}

uint64_t GetCompressedFrameSize(int a1, unsigned int a2, float a3, float a4, unsigned int *a5, unsigned int *a6, int a7, uint64_t a8)
{
  MaxCompressionSizeExcludingAlpha = GetMaxCompressionSizeExcludingAlpha(a1, a2, a3, a7);
  if (MaxCompressionSizeExcludingAlpha)
  {
    if (a5 && a6)
    {
      v12 = 0;
      v13 = 8 * MaxCompressionSizeExcludingAlpha / 9u;
      *a6 = v13;
      *a5 = (v13 * a4);
    }

    else if (a5)
    {
      if (a6)
      {
        return 0;
      }

      else
      {
        v12 = 3758097090;
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          GetCompressedFrameSize();
        }
      }
    }

    else
    {
      v12 = 3758097090;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        GetCompressedFrameSize();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      GetCompressedFrameSize();
    }

    return 4294954396;
  }

  return v12;
}

void setDataForProperty(__CFDictionary *a1, const __CFString *a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(0, bytes, length);
  CFDictionarySetValue(a1, a2, v6);

  CFRelease(v6);
}

uint64_t GetEmptySpotInFrameInfoArray(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  pthread_mutex_lock(*(a1 + 24));
  v6 = v4 % v5;
  v7 = &v3[800 * v6];
  if (*v7 == 1)
  {
    v8 = 0;
    v9 = *(a1 + 16);
    *v9 = 0;
    if (v5 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5;
    }

    v6 = (v10 - 1);
    v7 = v3;
    do
    {
      if ((*v7 & 1) == 0)
      {
        *v9 = 1;
        v6 = v8;
        goto LABEL_14;
      }

      ++v8;
      v7 += 800;
    }

    while (v10 != v8);
    gettimeofday(&v14, 0);
    v15.tv_sec = v14.tv_sec + 5;
    v15.tv_nsec = 1000 * v14.tv_usec;
    while (**(a1 + 16) != 1)
    {
      if (pthread_cond_timedwait(*(a1 + 32), *(a1 + 24), &v15) == 60)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          GetEmptySpotInFrameInfoArray();
        }

        goto LABEL_24;
      }
    }

    v11 = 0;
    v12 = &v3[800 * v6];
    while (*v3 == 1)
    {
      ++v11;
      v3 += 800;
      if (v10 == v11)
      {
        v3 = v12;
        goto LABEL_21;
      }
    }

    v6 = v11;
    LODWORD(v10) = v11;
LABEL_21:
    v7 = v3;
    if (v10 == v5)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        GetEmptySpotInFrameInfoArray();
      }

      goto LABEL_24;
    }

LABEL_14:
    if (v6 != -1)
    {
      goto LABEL_15;
    }

LABEL_24:
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_15:
    *v7 = 1;
  }

  pthread_mutex_unlock(*(a1 + 24));
  return v6;
}

vImage_Error swizzle64BGRAtoRGBA(unsigned __int16 *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5.data = a1;
  v5.height = a3;
  v5.width = a2;
  v5.rowBytes = a4;
  return vImagePermuteChannels_ARGB16U(&v5, &v5, swizzle64BGRAtoRGBA(unsigned short *,unsigned int,unsigned int,unsigned int)::permuteMap, 0);
}

uint64_t convert32BGRAtoRGB(uint64_t result, int a2, int a3, unsigned int a4)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a2)
      {
        v5 = 0;
        do
        {
          *(result + 4 * v5) = *(result + 4 * v5) & 0xC00FFC00 | (*(result + 4 * v5) >> 20) & 0x3FF | ((*(result + 4 * v5) & 0x3FF) << 20);
          ++v5;
        }

        while (a2 != v5);
      }

      result += a4;
    }
  }

  return result;
}

uint64_t numSlicesPerRow(unsigned int a1, unsigned int a2)
{
  v2 = 0;
  do
  {
    while (a2 >= a1)
    {
      a2 -= a1;
      v2 = (v2 + 1);
    }

    a1 >>= 1;
  }

  while (a2 > 0);
  return v2;
}

uint64_t getNumSlices(int a1, int a2, unsigned int a3)
{
  v3 = 0;
  v4 = (a1 + 15) >> 4;
  do
  {
    while (v4 >= a3)
    {
      v4 -= a3;
      ++v3;
    }

    a3 >>= 1;
  }

  while (v4 > 0);
  return v3 * ((a2 + 15) >> 4);
}

uint64_t getMetadataExtensionPtr(unsigned __int8 **a1, unsigned int *a2)
{
  v2 = 0;
  v3 = (*a1)[10];
  v4 = 1 << (((*a1)[71] >> 1) & 7);
  v5 = (*a1)[11];
  v6 = (__rev16(*(*a1 + 4)) + 15) >> 4;
  do
  {
    while (v6 >= v4)
    {
      v6 -= v4;
      ++v2;
    }

    v4 >>= 1;
  }

  while (v6 > 0);
  if (((*a1)[71] & 0x20) == 0)
  {
    return 0;
  }

  v7 = v2 * (((v5 & 0xFFFF00FF | ((*a1)[10] << 8)) + 15) >> 4);
  v8 = (*a1)[1] | (**a1 << 8);
  v9 = &(*a1)[v8];
  *a1 = v9;
  LODWORD(v8) = *a2 - v8;
  *a2 = v8;
  v10 = v8 >= 2 * v7;
  v11 = v8 - 2 * v7;
  if (!v10)
  {
    return 0;
  }

  v12 = 0;
  if (v7)
  {
    v13 = (((v3 << 8) + v5 + 15) >> 4) * v2;
    do
    {
      v14 = *v9;
      v9 += 2;
      v12 += bswap32(v14) >> 16;
      *a1 = v9;
      --v13;
    }

    while (v13);
    *a2 = v11;
    if (v11 < v12)
    {
      return 0;
    }
  }

  *a1 = &v9[v12];
  *a2 = v11 - v12;
  return 1;
}

uint64_t CFArray_AddSInt32(int a1, __CFArray *a2)
{
  valuePtr = a1;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v3)
  {
    return 4294954392;
  }

  v4 = v3;
  CFArrayAppendValue(a2, v3);
  CFRelease(v4);
  return 0;
}

void createPixelBufferAttributesDictionary(__CFDictionary **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9, _BYTE *a10)
{
  v53 = a3;
  valuePtr = a2;
  v51 = a5;
  v52 = a4;
  v49 = 128;
  v50 = 64;
  v14 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v16 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (a6 > 1278226535)
  {
    if (a6 <= 1651519797)
    {
      if (a6 <= 1278226737)
      {
        goto LABEL_27;
      }

      if (a6 == 1278226738)
      {
        v21 = 1278226742;
        goto LABEL_46;
      }

      if (a6 == 1278226742)
      {
        v18 = 1278226742;
        CFArray_AddSInt32(1278226742, v16);
        goto LABEL_47;
      }

      v20 = 1634759276;
LABEL_24:
      if (a6 != v20)
      {
        goto LABEL_48;
      }

      CFArray_AddSInt32(1278226488, v16);
      if (a6 > 1278226737)
      {
        if (a6 != 1634759276)
        {
          goto LABEL_48;
        }

        CFArray_AddSInt32(1278226742, v16);
        v17 = 1651519798;
        CFArray_AddSInt32(1278226536, v16);
        CFArray_AddSInt32(1751411059, v16);
        CFArray_AddSInt32(1652056888, v16);
        goto LABEL_38;
      }

      v18 = a6;
      if (a6 != 1278226488)
      {
LABEL_27:
        v18 = a6;
        if (a6 != 1278226536)
        {
          if (a6 != 1278226736)
          {
            goto LABEL_48;
          }

          v18 = 1278226736;
        }
      }

LABEL_47:
      CFArray_AddSInt32(v18, v16);
      goto LABEL_48;
    }

    if (a6 > 1937125935)
    {
      if (a6 == 1937125936)
      {
        goto LABEL_35;
      }

      v18 = a6;
      if (a6 == 1953903152)
      {
        goto LABEL_47;
      }

      v19 = 2016686640;
    }

    else
    {
      v17 = a6;
      if (a6 == 1651519798)
      {
        goto LABEL_38;
      }

      v18 = a6;
      if (a6 == 1652056888)
      {
        goto LABEL_47;
      }

      v19 = 1751411059;
    }
  }

  else
  {
    if (a6 > 645166639)
    {
      if (a6 <= 875704351)
      {
        if (a6 != 645166640)
        {
          if (a6 != 645428784)
          {
            if (a6 != 875573280)
            {
              goto LABEL_48;
            }

            CFArray_AddSInt32(1278226742, v16);
            CFArray_AddSInt32(1278226738, v16);
            CFArray_AddSInt32(1278226736, v16);
            CFArray_AddSInt32(1278226488, v16);
            CFArray_AddSInt32(642527542, v16);
            CFArray_AddSInt32(642527538, v16);
            CFArray_AddSInt32(642527536, v16);
LABEL_40:
            v18 = 642527288;
            goto LABEL_47;
          }

          goto LABEL_39;
        }

        goto LABEL_37;
      }

      if (a6 != 875704352)
      {
        if (a6 == 875704438)
        {
          v18 = 875704438;
          goto LABEL_47;
        }

        v20 = 1278226488;
        goto LABEL_24;
      }

LABEL_35:
      CFArray_AddSInt32(1937125936, v16);
      if (a6 != 875704352)
      {
        goto LABEL_48;
      }

      CFArray_AddSInt32(1953903152, v16);
      CFArray_AddSInt32(2016686640, v16);
      CFArray_AddSInt32(875704438, v16);
      CFArray_AddSInt32(645101104, v16);
LABEL_37:
      v17 = 645166640;
LABEL_38:
      CFArray_AddSInt32(v17, v16);
      if (a6 != 875704352)
      {
        goto LABEL_48;
      }

LABEL_39:
      v21 = 645428788;
LABEL_46:
      v18 = v21 - 4;
      goto LABEL_47;
    }

    if ((a6 - 642527536) <= 6)
    {
      v18 = a6;
      if (((1 << (a6 - 48)) & 0x45) != 0)
      {
        goto LABEL_47;
      }
    }

    if (a6 == 642527288)
    {
      goto LABEL_40;
    }

    v19 = 645101104;
  }

  v18 = a6;
  if (a6 == v19)
  {
    goto LABEL_47;
  }

LABEL_48:
  if (a10[5] == 1)
  {
    if (a6 > 796423727)
    {
      if (a6 == 796423728)
      {
LABEL_56:
        CFArray_AddSInt32(796423728, v16);
        goto LABEL_57;
      }

      v22 = 875704352;
    }

    else
    {
      if (a6 == 641234480)
      {
LABEL_59:
        CFArray_AddSInt32(641234480, v16);
        goto LABEL_60;
      }

      v22 = 762869296;
    }

    if (a6 != v22)
    {
      goto LABEL_60;
    }

    CFArray_AddSInt32(762869296, v16);
    if (a6 != 875704352)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_57:
  if (a6 == 875704352 || a6 == 641234480)
  {
    goto LABEL_59;
  }

LABEL_60:
  if (a10[5] != 1)
  {
LABEL_75:
    if (a6 <= 875704949)
    {
      if (a6 <= 645428785)
      {
LABEL_77:
        if (a6 == 645101106)
        {
          v25 = 645101108;
        }

        else
        {
          if (a6 != 645166642)
          {
            goto LABEL_96;
          }

          v25 = 645166644;
        }

        goto LABEL_94;
      }

      if (a6 != 645428786)
      {
        v26 = 875704864;
LABEL_85:
        if (a6 != v26)
        {
          goto LABEL_96;
        }

        goto LABEL_86;
      }

LABEL_88:
      v25 = 645428788;
LABEL_94:
      v24 = v25 - 2;
      goto LABEL_95;
    }

    if (a6 <= 1953903153)
    {
LABEL_81:
      if (a6 != 875704950)
      {
        v26 = 1937125938;
        goto LABEL_85;
      }

      v24 = 875704950;
LABEL_95:
      CFArray_AddSInt32(v24, v16);
      goto LABEL_96;
    }

    v24 = a6;
    if (a6 == 1953903154)
    {
      goto LABEL_95;
    }

    if (a6 != 2016686642)
    {
      goto LABEL_96;
    }

LABEL_92:
    v24 = 2016686642;
    goto LABEL_95;
  }

  if (a6 > 875704863)
  {
    if (a6 <= 1953903153)
    {
      if (a6 == 875704864)
      {
LABEL_86:
        CFArray_AddSInt32(1937125938, v16);
        if (a6 != 875704864)
        {
          goto LABEL_96;
        }

        CFArray_AddSInt32(1953903154, v16);
        CFArray_AddSInt32(2016686642, v16);
        CFArray_AddSInt32(875704950, v16);
        CFArray_AddSInt32(645101106, v16);
        CFArray_AddSInt32(645166642, v16);
        goto LABEL_88;
      }

      goto LABEL_81;
    }

    v24 = a6;
    if (a6 == 1953903154)
    {
      goto LABEL_95;
    }

    if (a6 == 2016686642)
    {
      goto LABEL_92;
    }

    v23 = 2084075056;
    goto LABEL_73;
  }

  if (a6 <= 645428785)
  {
    goto LABEL_77;
  }

  if (a6 == 645428786)
  {
    goto LABEL_88;
  }

  if (a6 == 758674992 || a6 == 875704352)
  {
    CFArray_AddSInt32(758674992, v16);
    v23 = 875704352;
LABEL_73:
    if (a6 != v23)
    {
      goto LABEL_96;
    }

    CFArray_AddSInt32(2084075056, v16);
    goto LABEL_75;
  }

LABEL_96:
  if (a10[5] == 1)
  {
    if (a6 > 796423729)
    {
      if (a6 == 796423730)
      {
LABEL_104:
        CFArray_AddSInt32(796423730, v16);
        goto LABEL_105;
      }

      v27 = 875704864;
    }

    else
    {
      if (a6 == 641234482)
      {
LABEL_107:
        CFArray_AddSInt32(641234482, v16);
        goto LABEL_108;
      }

      v27 = 762869298;
    }

    if (a6 != v27)
    {
      goto LABEL_108;
    }

    CFArray_AddSInt32(762869298, v16);
    if (a6 != 875704864)
    {
      goto LABEL_108;
    }

    goto LABEL_104;
  }

LABEL_105:
  if (a6 == 875704864 || a6 == 641234482)
  {
    goto LABEL_107;
  }

LABEL_108:
  if (a7 == 2)
  {
    goto LABEL_139;
  }

  if (a6 > 1949458802)
  {
    v28 = a6;
    if (a6 == 1949458803)
    {
LABEL_119:
      CFArray_AddSInt32(v28, v16);
      goto LABEL_120;
    }

    if (a6 != 1983013176)
    {
      v28 = a6;
      if (a6 != 2016567667)
      {
        goto LABEL_120;
      }

      goto LABEL_119;
    }

LABEL_118:
    v28 = 1983013176;
    goto LABEL_119;
  }

  if (a6 == 875704864 || a6 == 1932681587)
  {
    CFArray_AddSInt32(1932681587, v16);
    if (a6 == 875704864)
    {
      CFArray_AddSInt32(1949458803, v16);
      CFArray_AddSInt32(2016567667, v16);
      goto LABEL_118;
    }
  }

LABEL_120:
  if (!a7 && (a10[10] & 1) == 0 && !a9)
  {
    goto LABEL_139;
  }

  if (a6 <= 645280311)
  {
    if (a6 != 645083763)
    {
      v29 = a6;
      if (a6 == 645149299)
      {
LABEL_138:
        CFArray_AddSInt32(v29, v16);
        goto LABEL_139;
      }

      goto LABEL_139;
    }
  }

  else
  {
    if (a6 == 645280312)
    {
LABEL_135:
      v31 = 645280824;
LABEL_137:
      v29 = v31 - 512;
      goto LABEL_138;
    }

    if (a6 == 645411443)
    {
      v31 = 645411955;
      goto LABEL_137;
    }

    if (a6 != 875704864)
    {
      goto LABEL_139;
    }
  }

  CFArray_AddSInt32(645083763, v16);
  if (a6 > 645411442)
  {
    CFArray_AddSInt32(645149299, v16);
    CFArray_AddSInt32(645411443, v16);
    v30 = 875704864;
  }

  else
  {
    v30 = 645280312;
  }

  if (a6 == v30)
  {
    goto LABEL_135;
  }

LABEL_139:
  if (!a8)
  {
    if (a6 <= 1932812658)
    {
      if (a6 <= 645428787)
      {
        v33 = a6;
        if (a6 == 641234484)
        {
          goto LABEL_209;
        }

        v33 = a6;
        if (a6 == 645101108)
        {
          goto LABEL_209;
        }

        v34 = 645166644;
        goto LABEL_191;
      }

      v33 = a6;
      if (a6 == 645428788)
      {
        goto LABEL_209;
      }

      if (a6 != 875836448)
      {
        if (a6 != 875836534)
        {
          goto LABEL_210;
        }

        v33 = 875836534;
        goto LABEL_209;
      }
    }

    else
    {
      if (a6 > 1953903667)
      {
        if (a6 <= 2016687155)
        {
          v33 = a6;
          if (a6 != 1953903668)
          {
            if (a6 != 1983144248)
            {
              goto LABEL_210;
            }

LABEL_202:
            v33 = 1983144248;
          }

LABEL_209:
          CFArray_AddSInt32(v33, v16);
          goto LABEL_210;
        }

        v33 = a6;
        if (a6 == 2016687156)
        {
          goto LABEL_209;
        }

        v34 = 2016698739;
LABEL_191:
        v33 = a6;
        if (a6 != v34)
        {
          goto LABEL_210;
        }

        goto LABEL_209;
      }

      if (a6 == 1932812659)
      {
        v33 = 1932812659;
        goto LABEL_209;
      }

      if (a6 != 1937126452)
      {
        v34 = 1949589875;
        goto LABEL_191;
      }
    }

    CFArray_AddSInt32(1937126452, v16);
    if (a6 != 875836448)
    {
LABEL_210:
      if (!a7 && (a10[10] & 1) == 0 && !a9)
      {
LABEL_248:
        if (a6 == 1647392369)
        {
          goto LABEL_251;
        }

LABEL_249:
        v37 = 1380013856;
LABEL_250:
        if (a6 != v37)
        {
          goto LABEL_255;
        }

        goto LABEL_251;
      }

      if (a6 <= 645411954)
      {
        if (a6 != 645084275)
        {
          v36 = a6;
          if (a6 == 645149811)
          {
            goto LABEL_254;
          }

          goto LABEL_224;
        }
      }

      else
      {
        if (a6 > 1380013855)
        {
          goto LABEL_218;
        }

        if (a6 == 645411955)
        {
          goto LABEL_243;
        }

        if (a6 != 875836448)
        {
          goto LABEL_255;
        }
      }

      CFArray_AddSInt32(645084275, v16);
      if (a6 > 645411954)
      {
        CFArray_AddSInt32(645149811, v16);
        CFArray_AddSInt32(645411955, v16);
        v38 = 645280824;
        goto LABEL_247;
      }

LABEL_224:
      v38 = a6;
      if (a6 != 645280824)
      {
        goto LABEL_255;
      }

      goto LABEL_247;
    }

    CFArray_AddSInt32(1953903668, v16);
    CFArray_AddSInt32(2016687156, v16);
    CFArray_AddSInt32(875836534, v16);
    CFArray_AddSInt32(645101108, v16);
    CFArray_AddSInt32(645166644, v16);
    CFArray_AddSInt32(645428788, v16);
    CFArray_AddSInt32(641234484, v16);
    CFArray_AddSInt32(1932812659, v16);
    CFArray_AddSInt32(1949589875, v16);
    CFArray_AddSInt32(2016698739, v16);
    goto LABEL_202;
  }

  if (a6 > 1949589874)
  {
    v32 = a6;
    if (a6 == 1949589875)
    {
LABEL_160:
      CFArray_AddSInt32(v32, v16);
      goto LABEL_161;
    }

    if (a6 != 1983144248)
    {
      v32 = a6;
      if (a6 != 2016698739)
      {
        goto LABEL_161;
      }

      goto LABEL_160;
    }

LABEL_159:
    v32 = 1983144248;
    goto LABEL_160;
  }

  if (a6 == 875836448 || a6 == 1932812659)
  {
    CFArray_AddSInt32(1932812659, v16);
    if (a6 == 875836448)
    {
      CFArray_AddSInt32(1949589875, v16);
      CFArray_AddSInt32(2016698739, v16);
      goto LABEL_159;
    }
  }

LABEL_161:
  if (a7 || (a10[10] & 1) != 0 || a9)
  {
    if (a6 > 645428787)
    {
      if (a6 > 1647392368)
      {
        if (a6 <= 1953903667)
        {
          if (a6 == 1647392369)
          {
            goto LABEL_251;
          }

          v36 = a6;
          if (a6 == 1937126452)
          {
LABEL_254:
            CFArray_AddSInt32(v36, v16);
            goto LABEL_255;
          }

          goto LABEL_255;
        }

        if (a6 == 1953903668)
        {
LABEL_237:
          v36 = 1953903668;
          goto LABEL_254;
        }

        if (a6 != 2016687156)
        {
          goto LABEL_255;
        }

LABEL_236:
        v36 = 2016687156;
        goto LABEL_254;
      }

      if (a6 > 875836533)
      {
        if (a6 == 875836534)
        {
LABEL_233:
          v36 = 875836534;
          goto LABEL_254;
        }

        goto LABEL_249;
      }

      if (a6 == 645428788)
      {
        goto LABEL_252;
      }

      if (a6 != 875836448)
      {
        goto LABEL_255;
      }

      goto LABEL_239;
    }

    if (a6 > 645149810)
    {
      if (a6 <= 645280823)
      {
        v36 = a6;
        if (a6 == 645149811)
        {
          goto LABEL_254;
        }

        goto LABEL_244;
      }

      if (a6 == 645280824)
      {
        goto LABEL_299;
      }

      if (a6 != 645411955)
      {
        goto LABEL_255;
      }

LABEL_243:
      v39 = 13427;
LABEL_253:
      v36 = v39 | 0x26780000;
      goto LABEL_254;
    }

    v38 = a6;
    if (a6 != 641234484)
    {
      if (a6 != 645084275)
      {
        goto LABEL_230;
      }

LABEL_239:
      CFArray_AddSInt32(645084275, v16);
      if (a6 > 645280823)
      {
        CFArray_AddSInt32(645149811, v16);
        CFArray_AddSInt32(645411955, v16);
LABEL_299:
        CFArray_AddSInt32(645280824, v16);
        goto LABEL_164;
      }

LABEL_244:
      if (a6 != 645166644)
      {
        goto LABEL_255;
      }

      goto LABEL_245;
    }

LABEL_247:
    CFArray_AddSInt32(v38, v16);
    goto LABEL_248;
  }

LABEL_164:
  if (a6 <= 875836533)
  {
    if (a6 > 645166643)
    {
      if (a6 != 645166644)
      {
        if (a6 != 645428788)
        {
          v35 = 875836448;
          goto LABEL_196;
        }

LABEL_252:
        v39 = 30260;
        goto LABEL_253;
      }

LABEL_245:
      v36 = 645166644;
      goto LABEL_254;
    }

    v38 = a6;
    if (a6 == 641234484)
    {
      goto LABEL_247;
    }

LABEL_230:
    if (a6 != 645101108)
    {
      goto LABEL_255;
    }

    v36 = 645101108;
    goto LABEL_254;
  }

  if (a6 <= 1937126451)
  {
    if (a6 == 875836534)
    {
      goto LABEL_233;
    }

LABEL_218:
    if (a6 != 1380013856)
    {
      v37 = 1647392369;
      goto LABEL_250;
    }

LABEL_251:
    v36 = 1647392369;
    goto LABEL_254;
  }

  if (a6 == 2016687156)
  {
    goto LABEL_236;
  }

  if (a6 == 1953903668)
  {
    goto LABEL_237;
  }

  v35 = 1937126452;
LABEL_196:
  if (a6 != v35)
  {
    goto LABEL_255;
  }

  CFArray_AddSInt32(1937126452, v16);
  if (a6 > 1380013855)
  {
    goto LABEL_218;
  }

  if (a6 == 875836448)
  {
    CFArray_AddSInt32(1953903668, v16);
    CFArray_AddSInt32(2016687156, v16);
    CFArray_AddSInt32(875836534, v16);
    CFArray_AddSInt32(645101108, v16);
    CFArray_AddSInt32(645166644, v16);
    CFArray_AddSInt32(645428788, v16);
    v38 = 641234484;
    goto LABEL_247;
  }

LABEL_255:
  if (a10[2] != 1)
  {
    goto LABEL_289;
  }

  if (a6 <= 1651798065)
  {
    if (a6 <= 1650946097)
    {
      if (a6 > 1650942775)
      {
        if (a6 == 1650942776)
        {
          a6 = 1650942776;
        }

        else
        {
          if (a6 != 1650946096)
          {
            goto LABEL_296;
          }

          a6 = 1650946096;
        }

        goto LABEL_295;
      }

      if (a6 != 1380013856)
      {
LABEL_291:
        v41 = 1380013906;
LABEL_292:
        if (a6 != v41)
        {
          goto LABEL_296;
        }

LABEL_293:
        CFArray_AddSInt32(1651521076, v16);
        if (a6 != 1380013906)
        {
          goto LABEL_296;
        }

        goto LABEL_294;
      }

      goto LABEL_268;
    }

    if (a6 > 1651520303)
    {
      if (a6 != 1651520304)
      {
        v41 = 1651521076;
        goto LABEL_292;
      }

      goto LABEL_294;
    }

    if (a6 != 1650946098)
    {
      if (a6 != 1651519798)
      {
        goto LABEL_296;
      }

LABEL_268:
      CFArray_AddSInt32(1651519798, v16);
      if (a6 > 1650942775)
      {
        goto LABEL_296;
      }

      CFArray_AddSInt32(1651798066, v16);
      CFArray_AddSInt32(1650946098, v16);
      CFArray_AddSInt32(1650942776, v16);
      CFArray_AddSInt32(1735549752, v16);
      CFArray_AddSInt32(1919378232, v16);
      CFArray_AddSInt32(1734501176, v16);
      CFArray_AddSInt32(1652056888, v16);
      CFArray_AddSInt32(1650946096, v16);
      CFArray_AddSInt32(1735553072, v16);
      CFArray_AddSInt32(1919381552, v16);
      goto LABEL_288;
    }

    a6 = 1650946098;
LABEL_295:
    CFArray_AddSInt32(a6, v16);
    goto LABEL_296;
  }

  if (a6 > 1735549751)
  {
    if (a6 > 1919378231)
    {
      if (a6 == 1919378232)
      {
        goto LABEL_295;
      }

      v40 = 1919381552;
    }

    else
    {
      if (a6 == 1735549752)
      {
        goto LABEL_295;
      }

      v40 = 1735553072;
    }

LABEL_284:
    if (a6 == v40)
    {
      goto LABEL_295;
    }

    goto LABEL_296;
  }

  if (a6 <= 1734501175)
  {
    if (a6 == 1651798066)
    {
      goto LABEL_295;
    }

    v40 = 1652056888;
    goto LABEL_284;
  }

  if (a6 == 1734501176)
  {
    goto LABEL_295;
  }

  if (a6 == 1734504496)
  {
LABEL_288:
    CFArray_AddSInt32(1734504496, v16);
LABEL_289:
    if (a6 == 1651521076)
    {
      goto LABEL_293;
    }

    if (a6 != 1651520304)
    {
      goto LABEL_291;
    }

LABEL_294:
    a6 = 1651520304;
    goto LABEL_295;
  }

LABEL_296:
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96E0], v16);
  CFRelease(v16);
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB9750], v42);
  CFRelease(v42);
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &v53);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96C8], v43);
  CFRelease(v43);
  v44 = CFNumberCreate(0, kCFNumberSInt32Type, &v52);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96C0], v44);
  CFRelease(v44);
  v45 = CFNumberCreate(0, kCFNumberSInt32Type, &v51);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96B0], v45);
  CFRelease(v45);
  v46 = CFNumberCreate(v14, kCFNumberSInt32Type, &v49);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96E8], v46);
  CFRelease(v46);
  v47 = CFNumberCreate(v14, kCFNumberSInt32Type, &v50);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB9698], v47);
  CFRelease(v47);
  v48 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96D0], v48);
  CFRelease(v48);
  if (!a7)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96F8], *MEMORY[0x29EDB8F00]);
  }

  *a1 = Mutable;
}

uint64_t openUserClient(io_service_t a1, io_connect_t *connect, uint32_t a3, int a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = IOServiceOpen(a1, *MEMORY[0x29EDCA6B0], a3, connect);
  if (v5 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109634;
    v7[1] = a4;
    v8 = 2080;
    v9 = "openUserClient";
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): IOServiceOpen returned 0x%08x\n", v7, 0x18u);
  }

  return v5;
}

void closeUserClient(io_connect_t a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = IOServiceClose(a1);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109634;
      v5[1] = a2;
      v6 = 2080;
      v7 = "closeUserClient";
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): IOServiceClose returned 0x%08x\n\n", v5, 0x18u);
    }
  }
}

uint64_t createConnection(uint32_t a1, io_connect_t *a2, uint64_t a3)
{
  v3 = a3;
  v6 = IOServiceMatching("AppleProResHW");
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      createConnection();
    }

    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v6);
  if (!MatchingService)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      createConnection();
    }

    return 0;
  }

  v8 = MatchingService;
  v9 = openUserClient(MatchingService, a2, a1, v3);
  if (v9 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    createConnection();
  }

  IOObjectRelease(v8);
  return v9;
}

_DWORD *APR_ImgFmt_4CC(int a1)
{
  result = &gs_ImgFmtConversion;
  v3 = 74;
  while (result[9] != a1)
  {
    result += 11;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t checkFrameHeader(unsigned __int16 *a1, char a2, int a3, uint64_t a4)
{
  v4 = a4;
  v48 = *MEMORY[0x29EDCA608];
  if ((a3 & 0xFFFFFFFD) != 1)
  {
    if ((a3 & 0xFFFFFFFD) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        checkFrameHeader();
      }

      return 4294954394;
    }

    v6 = 3758097084;
    if (*a1 >= 0x95u)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        checkFrameHeader();
      }

      return v6;
    }

    if ((a2 & 1) == 0 && !*(a1 + 19) && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v30 = 67109634;
      v31 = v4;
      v32 = 1024;
      v33 = 2602;
      v34 = 2080;
      v35 = "checkFrameHeader";
      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): No encoded alpha, assuming the frame is opaque\n", &v30, 0x18u);
    }

    v7 = *(a1 + 3);
    if (v7 == 1)
    {
      v8 = *(a1 + 12);
      if (v8 - 4 >= 0xFFFFFFFE)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3758097105;
      }
    }

    else if (*(a1 + 3))
    {
      if (v7 > 2)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          checkFrameHeader();
        }

        return v6;
      }

      v9 = 0;
      v8 = *(a1 + 12);
    }

    else
    {
      v8 = *(a1 + 12);
      v9 = 3758097105;
      if (v8 == 3)
      {
        if (*(a1 + 19))
        {
          *(a1 + 19) = 0;
          v9 = 3758097105;
        }

        goto LABEL_48;
      }

      if (v8 == 2)
      {
        if (*(a1 + 19))
        {
          v9 = 3758097105;
        }

        else
        {
          v9 = 0;
        }

LABEL_48:
        v8 = 3;
LABEL_49:
        if (a1[5] == 1)
        {
          if (*(a1 + 13))
          {
            goto LABEL_51;
          }

          goto LABEL_54;
        }

        if (*(a1 + 13) < 3u)
        {
LABEL_54:
          if (*(a1 + 14) >= 4u)
          {
            *(a1 + 14) = 0;
            v9 = 3758097105;
          }

          if (*(a1 + 15) >= 0xCu)
          {
            *(a1 + 15) = 0;
            v9 = 3758097105;
          }

          v16 = *(a1 + 16);
          if (v16 <= 0xA && ((1 << v16) & 0x598) != 0 || v16 >= 0xD)
          {
            *(a1 + 16) = 2;
            v9 = 3758097105;
          }

          v17 = *(a1 + 17);
          if (v17 - 3 < 4 || v17 > 0x12 || v17 - 8 <= 5)
          {
            *(a1 + 17) = 2;
            v9 = 3758097105;
          }

          v18 = *(a1 + 18);
          if (v18 > 9 || ((1 << v18) & 0x247) == 0)
          {
            *(a1 + 18) = 2;
            v9 = 3758097105;
          }

          if (*(a1 + 19) < 3u)
          {
            if (!v8 && *(a1 + 21))
            {
              *(a1 + 21) = 0;
              v9 = 3758097105;
            }

            if (*(a1 + 20))
            {
              v19 = 0;
              v20 = a1 + 11;
              while (2)
              {
                for (i = 0; i != 8; ++i)
                {
                  if (*(v20 + i) - 64 <= 0xFFFFFFC1)
                  {
                    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                    {
                      checkFrameHeader();
                    }

                    return v6;
                  }
                }

                ++v19;
                v20 += 4;
                if (v19 != 8)
                {
                  continue;
                }

                break;
              }
            }

            v22 = *(a1 + 21);
            if (*(a1 + 21))
            {
              v23 = 0;
              v24 = a1 + 43;
              while (2)
              {
                for (j = 0; j != 8; ++j)
                {
                  if (*(v24 + j) - 64 <= 0xFFFFFFC1)
                  {
                    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                    {
                      checkFrameHeader();
                    }

                    return v6;
                  }
                }

                ++v23;
                v24 += 4;
                if (v23 != 8)
                {
                  continue;
                }

                break;
              }
            }

            if (!*(a1 + 20))
            {
              *&v26 = 0x404040404040404;
              *(&v26 + 1) = 0x404040404040404;
              *(a1 + 35) = v26;
              *(a1 + 27) = v26;
              *(a1 + 19) = v26;
              *(a1 + 11) = v26;
            }

            if (!v22)
            {
              *(a1 + 43) = *(a1 + 11);
              *(a1 + 51) = *(a1 + 19);
              *(a1 + 59) = *(a1 + 27);
              *(a1 + 67) = *(a1 + 35);
            }

            return v9;
          }

          else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            checkFrameHeader();
          }

          return v6;
        }

LABEL_51:
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          checkFrameHeader();
        }

        return v6;
      }
    }

    if (v8 <= 1 && *(a1 + 13))
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (*a1 >= 0x99u)
  {
    v6 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      checkFrameHeader();
    }

    return v6;
  }

  v10 = *(a1 + 3);
  if (v10 >= 3)
  {
    v6 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      checkFrameHeader();
    }

    return v6;
  }

  v11 = a1[4];
  if (v11 & 1) != 0 || (v12 = a1[5], (v12))
  {
    v6 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      checkFrameHeader();
    }
  }

  else
  {
    v13 = *(a1 + 12);
    v14 = *(a1 + 13);
    if (v14 + v13 < v11 && *(a1 + 15) + *(a1 + 14) < v12)
    {
      v15 = *(a1 + 17);
      if (v10 == 2)
      {
        if (v15 >= 8)
        {
          v6 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            checkFrameHeader();
          }

          return v6;
        }
      }

      else if (v15 >= 4)
      {
        v6 = 3758097084;
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          checkFrameHeader();
        }

        return v6;
      }

      if (a1[9])
      {
        if (*(a1 + 70) < 5u)
        {
          if (*(a1 + 71) - 64 > 0xFFFFFFC0)
          {
            return 0;
          }

          else
          {
            v6 = 3758097084;
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              checkFrameHeader();
            }
          }
        }

        else
        {
          v6 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            checkFrameHeader();
          }
        }
      }

      else
      {
        v6 = 3758097084;
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          checkFrameHeader();
        }
      }

      return v6;
    }

    v6 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 14);
      v28 = *(a1 + 15);
      v30 = 67111170;
      v31 = v4;
      v32 = 1024;
      v33 = 2786;
      v34 = 2080;
      v35 = "checkFrameHeader";
      v36 = 1024;
      v37 = v13;
      v38 = 1024;
      v39 = v14;
      v40 = 1024;
      v41 = v27;
      v42 = 1024;
      v43 = v28;
      v44 = 1024;
      v45 = v11;
      v46 = 1024;
      v47 = v12;
      _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR AppleProResHW (0x%x): %d: %s(): Invalid default_crop_left %d, default_crop_right %d, default_crop_top %d, or default_crop_bottom %d, %d, %d\n", &v30, 0x3Cu);
    }
  }

  return v6;
}

uint64_t parseFrameHeader(uint64_t a1, unsigned __int16 *a2, char a3, int a4, uint64_t a5)
{
  v5 = __rev16(*a2);
  *a1 = v5;
  v6 = *(a2 + 3);
  *(a1 + 3) = v6;
  *(a1 + 4) = bswap32(*(a2 + 1));
  *(a1 + 8) = bswap32(a2[4]) >> 16;
  *(a1 + 10) = bswap32(a2[5]) >> 16;
  if ((a4 & 0xFFFFFFFD) == 1)
  {
    v8 = 0;
    if (v6 <= 1)
    {
      v9 = 3;
    }

    else
    {
      v9 = 7;
    }

    *(a1 + 12) = *(a2 + 12);
    *(a1 + 13) = *(a2 + 13);
    *(a1 + 14) = *(a2 + 14);
    *(a1 + 15) = *(a2 + 15);
    *(a1 + 17) = *(a2 + 17) & v9;
    *(a1 + 18) = bswap32(a2[9]) >> 16;
    *(a1 + 20) = bswap32(*(a2 + 5));
    *(a1 + 24) = bswap32(*(a2 + 6));
    v10 = a1 + 28;
    v11 = 28;
    do
    {
      v12 = 0;
      v13 = v11;
      do
      {
        *(v10 + v12) = (*(a2 + (v11 + v12)) << 24) | (*(a2 + (v11 + v12 + 1)) << 16) | (*(a2 + (v11 + v12 + 2)) << 8) | *(a2 + (v11 + v12 + 3));
        v12 += 4;
      }

      while (v12 != 12);
      ++v8;
      v10 += 12;
      v11 += 12;
    }

    while (v8 != 3);
    *(a1 + 64) = (*(a2 + (v13 + 12)) << 24) | (*(a2 + (v13 + 13)) << 16) | (*(a2 + (v13 + 14)) << 8) | *(a2 + (v13 + 15));
    *(a1 + 68) = *(a2 + (v13 + 17)) | (*(a2 + (v13 + 16)) << 8);
    v14 = *(a2 + (v13 + 19));
    *(a1 + 70) = (v14 >> 1) & 7;
    if (v14)
    {
      v15 = *(a2 + (v13 + 20));
    }

    else
    {
      v15 = 1;
    }

    *(a1 + 71) = v15;
  }

  else
  {
    if ((a4 & 0xFFFFFFFD) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        parseFrameHeader();
      }

      return 4294954394;
    }

    if (v5 <= 0x13)
    {
      v7 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        parseFrameHeader();
      }

      return v7;
    }

    *(a1 + 12) = *(a2 + 12) >> 6;
    *(a1 + 13) = (*(a2 + 12) >> 2) & 3;
    *(a1 + 14) = *(a2 + 13) >> 4;
    *(a1 + 15) = *(a2 + 13) & 0xF;
    *(a1 + 16) = *(a2 + 14);
    *(a1 + 17) = *(a2 + 15);
    *(a1 + 18) = *(a2 + 16);
    *(a1 + 19) = *(a2 + 17) & 0xF;
    v17 = (*(a2 + 19) >> 1) & 1;
    *(a1 + 20) = (*(a2 + 19) & 2) != 0;
    v18 = *(a2 + 19) & 1;
    *(a1 + 21) = v18;
    v19 = v5 - 20;
    if (v19 - (v17 << 6) < v18 << 6 || v19 - (v18 << 6) < v17 << 6)
    {
      v7 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        parseFrameHeader();
      }

      return v7;
    }

    if (v19 >= 0x40)
    {
      v20 = *(a2 + 10);
      v21 = *(a2 + 18);
      v22 = *(a2 + 26);
      *(a1 + 70) = *(a2 + 34);
      *(a1 + 54) = v22;
      *(a1 + 38) = v21;
      *(a1 + 22) = v20;
      if (v19 >= 0x80)
      {
        v23 = *(a2 + 42);
        v24 = *(a2 + 50);
        v25 = *(a2 + 58);
        *(a1 + 134) = *(a2 + 66);
        *(a1 + 118) = v25;
        *(a1 + 102) = v24;
        *(a1 + 86) = v23;
      }
    }
  }

  return checkFrameHeader(a1, a3, a4, a5);
}

uint64_t createEncodeStatsBuffers(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ((a4 - 1634755432) <= 0xB && ((1 << (a4 - 104)) & 0x8C1) != 0)
  {
    v6 = 56;
    goto LABEL_9;
  }

  if (a4 == 1634743416 || a4 == 1634743400)
  {
    v6 = 80;
LABEL_9:
    if (*(a2 + 20) == ((60 * a1 + 127) & 0xFFFFFF80) + ((2 * a1 + 127) & 0xFFFFFF80) + ((48 * a1 + 127) & 0xFFFFFF80) + ((v6 * a1 + 127) & 0xFFFFFF80))
    {
      return 0;
    }

    if (*a3)
    {
      CVDataBufferPoolCreateDataBuffer();
      v7 = 3758097085;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        createEncodeStatsBuffers();
      }
    }

    else
    {
      CVDataBufferPoolCreate();
      v7 = 3758097085;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        createEncodeStatsBuffers();
      }
    }

    return v7;
  }

  v7 = 3758097090;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    createEncodeStatsBuffers();
  }

  return v7;
}

void *getRtMpeStr@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = "Enc_RT_T_MPE_F_VDyn_SingleCore";
        v7 = "Enc_RT_T_MPE_T_VDyn_SingleCore";
      }

      else
      {
        v6 = "Enc_RT_UI_MPE_F_VDyn_SingleCore";
        v7 = "Enc_RT_UI_MPE_T_VMin_SingleCore";
      }
    }

    else
    {
      v6 = "Enc_RT_F_MPE_F_VMax_MultiCore";
      v7 = "Enc_RT_F_MPE_T_VMin_SingleCore";
    }

    if (a3)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  else
  {
    v8 = "Dec_RT_F_MPE_F_VMax_MultiCore";
    if (a3)
    {
      v8 = "Dec_RT_F_MPE_T_VMin_SingleCore";
    }

    v9 = "Dec_RT_T_MPE_T_VMax_SingleCore";
    if (!a3)
    {
      v9 = "Dec_RT_T_MPE_F_VMax_MultiCore";
    }

    if ((a2 - 1) <= 1)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  return std::string::basic_string[abi:ne200100]<0>(a4, v10);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

unsigned int *getEncodeStatsPtrs(unsigned int *result, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (result[5])
  {
    v11 = result;
    v12 = IOSurfaceLookup(result[6]);
    result = IOSurfaceGetBaseAddress(v12);
    v13 = v11[1];
    *a2 = result + *v11;
    *a3 = result + v13;
    v14 = v11[3];
    *a4 = result + v11[2];
    *a5 = result + v14;
    *a6 = result + v11[4];
    *(v11 + 4) = v12;
  }

  return result;
}

void freeEncodeStatsBuffers(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  if (cf)
  {

    CFRelease(cf);
  }
}

void printCodecType(int a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  if (a1 <= 1634755438)
  {
    if (a1 > 1634755431)
    {
      if (a1 == 1634755432)
      {
        v4 = "2";
        goto LABEL_22;
      }

      if (a1 == 1634755438)
      {
        v4 = "3";
        goto LABEL_22;
      }
    }

    else
    {
      if (a1 == 1634743400)
      {
        v4 = "1";
        goto LABEL_22;
      }

      if (a1 == 1634743416)
      {
        v4 = "0";
        goto LABEL_22;
      }
    }
  }

  else if (a1 <= 1634759271)
  {
    if (a1 == 1634755439)
    {
      v4 = "5";
      goto LABEL_22;
    }

    if (a1 == 1634755443)
    {
      v4 = "4";
      goto LABEL_22;
    }
  }

  else
  {
    switch(a1)
    {
      case 1634759272:
        v4 = "7";
        goto LABEL_22;
      case 1634759276:
        v4 = "8";
        goto LABEL_22;
      case 1634759278:
        v4 = "6";
LABEL_22:
        MEMORY[0x29C24C6F0](__p, v4);
        goto LABEL_23;
    }
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109634;
    v8 = a2;
    v9 = 2080;
    v10 = "printCodecType";
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Unsupported CodecType: 0x%x\n", buf, 0x18u);
  }

LABEL_23:
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_295307C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getLastNZCoeffPos(__int16 *a1, unsigned __int8 a2)
{
  do
  {
    --a2;
  }

  while (a2 && !a1[a2]);
  return a2;
}

uint64_t decodeSlice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v9 = v6;
  v105 = *MEMORY[0x29EDCA608];
  v10 = *result;
  *(*(v5 + 32) + v6) = *(result + 1);
  v11 = bswap32(*(result + 2)) >> 16;
  if (v7 == 1)
  {
    *(*(v5 + 328) + 2 * v6) = (GAMMA[*(*(v5 + 32) + v6)] * v11) >> 10;
    return result;
  }

  v12 = result;
  v13 = *(v5 + 24);
  v14 = v6 % v13;
  if ((v7 & 0xFFFFFFFE) == 2)
  {
    if ((v6 / v13 + v14))
    {
      return result;
    }

    if (v7 == 3 && *(*(v5 + 32) + v6) <= v8)
    {
      *(*(v5 + 320) + v6) = 0;
      *(*(v5 + 312) + v6) = 0;
      *(*(v5 + 304) + v6) = 0;
      return result;
    }
  }

  v88 = v4;
  v89 = v7 & 0xFFFFFFFE;
  v90 = v6 % v13;
  v91 = v6 / v13;
  v15 = v10 >> 3;
  v16 = *(v5 + v14 + 48);
  v92 = v5;
  v93 = *(v5 + 8);
  bzero(v104, v16 << 9);
  result = BitstreamReader::initialize(&v96, (v12 + v15), v11);
  v17 = v96;
  if (HIDWORD(v96))
  {
    v39 = v98;
    v94 = v99;
    v101 = 0;
    v102 = 0;
    v40 = v97;
    v103 = 0;
    result = RiceExpComboCode<unsigned int>::decodeUnsigned(&v103, &v101, HIDWORD(v96), EntropyCode::firstDcCodeBook);
    v95 = v93 + 2;
    v41 = -(v103 & 1) ^ (v103 >> 1);
    v42 = v17 << v101;
    v43 = v40 - v101;
    if (v43 < 0)
    {
      if (v39 >= v94)
      {
        if (v39 >= v100)
        {
          v45 = 0;
        }

        else
        {
          v45 = 0;
          v51 = 24;
          v52 = v39;
          do
          {
            v53 = *v52;
            v52 = (v52 + 1);
            v45 |= v53 << v51;
            v51 -= 8;
          }

          while (v52 != v100);
          v39 = v100;
        }
      }

      else
      {
        v44 = *v39++;
        v45 = bswap32(v44);
      }

      v42 |= v45 << -v43;
      v43 += 32;
    }

    v104[0] = -(v103 & 1) ^ (v103 >> 1);
    v54 = 1;
    v55 = v104;
    v56 = 3;
    while (HIDWORD(v42))
    {
      v57 = v56;
      if ((v56 & 0x8000u) != 0)
      {
        v57 = -v56;
      }

      if (v57 >= 3)
      {
        v57 = 3;
      }

      v58 = EntropyCode::levelDifferenceCodeBook[v57];
      v103 = 0;
      result = RiceExpComboCode<unsigned int>::decodeUnsigned(&v103, &v101, HIDWORD(v42), v58);
      v59 = (v56 >> 15) & 1;
      if (v59)
      {
        v60 = -v103;
      }

      else
      {
        v60 = v103;
      }

      v42 <<= v101;
      v43 -= v101;
      if (v43 < 0)
      {
        if (v39 >= v94)
        {
          if (v39 >= v100)
          {
            v62 = 0;
          }

          else
          {
            v62 = 0;
            v63 = v100 - v39;
            v64 = 24;
            do
            {
              v65 = *v39;
              v39 = (v39 + 1);
              v62 |= v65 << v64;
              v64 -= 8;
              --v63;
            }

            while (v63);
            v39 = v100;
          }
        }

        else
        {
          v61 = *v39++;
          v62 = bswap32(v61);
        }

        v42 |= v62 << -v43;
        v43 += 32;
      }

      v56 = (-(v103 & 1) ^ (v60 >> 1)) + (v103 & v59);
      v41 += v56;
      v55[64] = v41;
      v55 += 64;
      if (++v54 >> v95)
      {
        if (HIDWORD(v42))
        {
          v66 = 2u;
          v67 = 4u;
          while (1)
          {
            v68 = EntropyCode::runCodeBook[v67];
            v69 = EntropyCode::levelCodeBook[v66];
            v70 = (&RiceExpComboCodeVLDPairTables + 40960 * EntropyCode::runCodeBook[v67] + 4096 * v69 + 4 * (v42 >> 54));
            v71 = *v70;
            v67 = *(v70 + 2);
            v72 = *(v70 + 3);
            v73 = v71 + 1;
            v101 = v71 + 1;
            v102 = v67;
            if (v71)
            {
              v74 = HIDWORD(v42) << v71;
              v66 = v72 + 1;
              v75 = ((v72 + 1) ^ (v74 >> 31)) - (v74 >> 31);
            }

            else
            {
              result = RiceExpComboCode<unsigned int>::decodeUnsigned(&v102, &v101, HIDWORD(v42), v68);
              v42 <<= v101;
              v43 -= v101;
              if (v43 < 0)
              {
                if (v39 >= v94)
                {
                  if (v39 >= v100)
                  {
                    v77 = 0;
                  }

                  else
                  {
                    v77 = 0;
                    v78 = v100 - v39;
                    v79 = 24;
                    do
                    {
                      v80 = *v39;
                      v39 = (v39 + 1);
                      v77 |= v80 << v79;
                      v79 -= 8;
                      --v78;
                    }

                    while (v78);
                    v39 = v100;
                  }
                }

                else
                {
                  v76 = *v39++;
                  v77 = bswap32(v76);
                }

                v42 |= v77 << -v43;
                v43 += 32;
              }

              if (!HIDWORD(v42))
              {
                goto LABEL_8;
              }

              v103 = 0;
              result = RiceExpComboCode<unsigned int>::decodeUnsigned(&v103, &v101, HIDWORD(v42), v69);
              v81 = v101;
              v67 = v102;
              v73 = ++v101;
              if (v102 > 0x7DF)
              {
                goto LABEL_8;
              }

              v66 = v103 + 1;
              if ((v103 + 1) >= 0x4000)
              {
                goto LABEL_8;
              }

              v75 = (v66 ^ ((HIDWORD(v42) << v81) >> 31)) - ((HIDWORD(v42) << v81) >> 31);
            }

            v42 <<= v73;
            v43 -= v73;
            if (v43 < 0)
            {
              if (v39 >= v94)
              {
                if (v39 >= v100)
                {
                  v83 = 0;
                }

                else
                {
                  v83 = 0;
                  v84 = v100 - v39;
                  v85 = 24;
                  do
                  {
                    v86 = *v39;
                    v39 = (v39 + 1);
                    v83 |= v86 << v85;
                    v85 -= 8;
                    --v84;
                  }

                  while (v84);
                  v39 = v100;
                }
              }

              else
              {
                v82 = *v39++;
                v83 = bswap32(v82);
              }

              v42 |= v83 << -v43;
              v43 += 32;
            }

            v87 = v67 + v54;
            if (v87 < 256 << v93)
            {
              v104[64 * (v87 & ~(-4 << v93)) + ProgressiveScanTableFull[v87 >> v95]] = v75;
              v54 = v87 + 1;
              if (HIDWORD(v42))
              {
                continue;
              }
            }

            goto LABEL_8;
          }
        }

        break;
      }
    }
  }

LABEL_8:
  v18 = *(v92 + 312);
  *(v18 + v9) = 0;
  v19 = *(v92 + 304);
  *(v19 + v9) = -1;
  if (v16)
  {
    v20 = 0;
    v21 = 0;
    v22 = 255;
    v23 = v104;
    v24 = v89;
    do
    {
      v25 = v20 << 8;
      v26 = 63;
      while (v26)
      {
        if (v23[v26--])
        {
          v28 = v26 + 1;
          LODWORD(v26) = (v26 + 1);
          result = *(v18 + v9);
          if (result < v28)
          {
            *(v18 + v9) = v26;
            v22 = *(v19 + v9);
          }

          break;
        }
      }

      if (v26 < v22)
      {
        *(v19 + v9) = v26;
        v21 = v104[256 * v20];
        v22 = v26;
      }

      v29 = 127;
      do
      {
        if (v29 == 64)
        {
          v30 = 0;
          goto LABEL_23;
        }

        result = v23[v29--];
      }

      while (!result);
      result = (v29 - 63);
      v30 = (v29 - 63);
      if (*(v18 + v9) < result)
      {
        *(v18 + v9) = v30;
        v22 = *(v19 + v9);
      }

LABEL_23:
      if (v30 < v22)
      {
        *(v19 + v9) = v30;
        v21 = v104[v25 | 0x40];
        v22 = v30;
      }

      v31 = 191;
      do
      {
        if (v31 == 128)
        {
          v32 = 0;
          goto LABEL_31;
        }

        result = v23[v31--];
      }

      while (!result);
      result = (v31 - 127);
      v32 = (v31 - 127);
      if (*(v18 + v9) < result)
      {
        *(v18 + v9) = v32;
        v22 = *(v19 + v9);
      }

LABEL_31:
      if (v32 < v22)
      {
        *(v19 + v9) = v32;
        v21 = v104[v25 | 0x80];
        v22 = v32;
      }

      v33 = v25 | 0xC0;
      v34 = 255;
      do
      {
        if (v34 == 192)
        {
          v37 = 0;
          goto LABEL_39;
        }
      }

      while (!v23[v34--]);
      v36 = v34 + 65;
      v37 = (v34 + 65);
      result = *(v18 + v9);
      if (result < v36)
      {
        *(v18 + v9) = v37;
        v22 = *(v19 + v9);
      }

LABEL_39:
      if (v37 < v22)
      {
        *(v19 + v9) = v37;
        v21 = v104[v33];
        v22 = v37;
      }

      ++v20;
      v23 += 256;
    }

    while (v20 != v16);
    v38 = v21;
  }

  else
  {
    v38 = 0;
    v24 = v89;
  }

  v46 = v38 * *(v88 + 13) * qScale[*(*(v92 + 32) + v9)];
  if (v46 >> 7 >= -128)
  {
    v49 = v90;
    v48 = v91;
    if (v46 >> 7 <= 127)
    {
      v47 = (v46 >> 7) ^ 0xFFFFFF80;
    }

    else
    {
      LOBYTE(v47) = -1;
    }
  }

  else
  {
    LOBYTE(v47) = 0;
    v49 = v90;
    v48 = v91;
  }

  *(*(v92 + 320) + v9) = v47;
  if (v24 == 2)
  {
    if (v49)
    {
      *(*(v92 + 320) + (v9 - *(v92 + 24))) = *(*(v92 + 320) + v9);
      *(*(v92 + 312) + (v9 - *(v92 + 24))) = *(*(v92 + 312) + v9);
      v50 = v9 - *(v92 + 24);
    }

    else
    {
      if (v48 >= *(v92 + 20) - 1)
      {
        return result;
      }

      *(*(v92 + 320) + (*(v92 + 24) + v9)) = *(*(v92 + 320) + v9);
      *(*(v92 + 312) + (*(v92 + 24) + v9)) = *(*(v92 + 312) + v9);
      v50 = *(v92 + 24) + v9;
    }

    *(*(v92 + 304) + v50) = *(*(v92 + 304) + v9);
  }

  return result;
}

uint64_t decodeSliceTask(int *a1)
{
  if (a1[7] >= 1)
  {
    v2 = a1[6];
    v3 = *a1;
    v4 = *(a1 + 2);
    do
    {
      decodeSlice(v3, *(a1 + 1), v4);
      v4 = *(a1 + 2);
      v3 += *(*(v4 + 40) + 2 * v2++);
    }

    while (v2 < a1[7] + a1[6]);
  }

  pthread_mutex_lock(*(a1 + 7));
  v5 = *(a1 + 5);
  v6 = *v5 + 1;
  *v5 = v6;
  if (v6 == a1[8])
  {
    pthread_cond_signal(*(a1 + 6));
  }

  pthread_mutex_unlock(*(a1 + 7));
  MEMORY[0x29C24C730](a1, 0x1030C40C3C8D92FLL);
  return 0;
}

void ProResHWAnalyzer::ProResHWAnalyzer(ProResHWAnalyzer *this, int a2, int a3, int a4)
{
  *(this + 1) = 0;
  *(this + 6) = a3;
  *(this + 7) = a2;
  operator new[]();
}

void ProResHWAnalyzer::~ProResHWAnalyzer(ProResHWAnalyzer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    ThreadPool::~ThreadPool(v2);
    MEMORY[0x29C24C730]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x29C24C710](v3, 0x1000C8077774924);
  }
}

uint64_t ProResHWAnalyzer::parseProResPicture(ThreadPool **a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5, char a6)
{
  v9 = 0;
  v36 = *MEMORY[0x29EDCA608];
  *a4 = *a2 >> 3;
  *(a4 + 1) = bswap32(*(a2 + 1));
  v10 = (*(a2 + 7) >> 4) & 3;
  a4[8] = (*(a2 + 7) >> 4) & 3;
  v11 = *(a3 + 8) >> (*(a3 + 11) != 0);
  v12 = (*(a3 + 6) + 15) >> 4;
  *(a4 + 3) = v11;
  *(a4 + 4) = v12;
  *(a4 + 5) = (v11 + 15) >> 4;
  v13 = 1 << v10;
  do
  {
    if (v12 >= v13)
    {
      v14 = &a4[v9 + 48];
      do
      {
        *v14++ = v13;
        v12 -= v13;
        ++v9;
      }

      while (v12 >= v13);
    }

    v13 >>= 1;
  }

  while (v12);
  *(a4 + 6) = v9;
  v15 = a2 + *a4;
  v16 = *(a1 + 6);
  if (v16)
  {
    v17 = *(a4 + 5);
    v18 = *(a1 + 6);
    v19 = (a2 + *a4);
    do
    {
      v20 = *v19++;
      *v17++ = bswap32(v20) >> 16;
      --v18;
    }

    while (v18);
  }

  if (a5)
  {
    v21 = v15 + (2 * v16);
    if (a1[1])
    {
      pthread_cond_init(&v35, 0);
      pthread_mutex_init(&v34, 0);
      if (*(a1 + 6))
      {
        operator new();
      }

      pthread_mutex_lock(&v34);
      gettimeofday(&v28, 0);
      v29.tv_sec = v28.tv_sec + 3;
      v29.tv_nsec = 1000 * v28.tv_usec;
      if (*(a4 + 5))
      {
        do
        {
          v22 = pthread_cond_timedwait(&v35, &v34, &v29);
          if (*(a4 + 5))
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 0;
          }
        }

        while (v23);
        v24 = v22;
        pthread_mutex_unlock(&v34);
        if (v24 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v25 = *a1;
          *buf = 67109378;
          v31 = v25;
          v32 = 2080;
          v33 = "parseProResPicture";
          _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: threadpool couldn't complete task", buf, 0x12u);
        }
      }

      else
      {
        pthread_mutex_unlock(&v34);
      }

      pthread_cond_destroy(&v35);
      pthread_mutex_destroy(&v34);
    }

    else if (v16)
    {
      v26 = 0;
      do
      {
        decodeSlice(v21, a3, a4);
        v21 += *(*(a4 + 5) + 2 * v26++);
      }

      while (v26 < *(a1 + 6));
    }
  }

  return 0;
}