char *_MDPlistContainerBeginContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 17))
  {
    _MDPlistContainerBeginContainer_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(a1 + 136))
  {
    _MDPlistContainerBeginContainer_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(a1 + 32))
  {
    _MDPlistContainerBeginContainer_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 128) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &kCStringDictionaryKeyCallBacksLocal, MEMORY[0x1E695E9E8]);
  MDPlistBufferConsume(a1, a1 + 32, a2 + 29);
  result = malloc_type_malloc(0x6000uLL, 0x1000040504FFAC1uLL);
  *(a1 + 144) = result;
  v11 = &result[24 * *(a1 + 136)];
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *v11 = 0;
  ++*(a1 + 136);
  return result;
}

void *MDPlistBufferConsume(uint64_t a1, uint64_t a2, size_t a3)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    return 0;
  }

  v4 = a3;
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6 >= a3)
  {
    v11 = *a2;
  }

  else
  {
    if (*(a2 + 24))
    {
      v9 = 0;
      v6 = 0;
      v10 = *(a2 + 16);
      v4 = v7 + a3;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      v10 = 0;
      v9 = *a2;
    }

    v12 = v9 + v6;
    if (v9 + v6 <= v4)
    {
      v14 = *MEMORY[0x1E69E9AC8];
      v13 = ((v4 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) + v12;
    }

    else
    {
      v13 = 2 * v12;
      v14 = *MEMORY[0x1E69E9AC8];
    }

    if (v13 <= 2 * v14)
    {
      v15 = 2 * v14;
    }

    else
    {
      v15 = v13;
    }

    if (*(a2 + 26))
    {
      result = malloc_type_realloc(*(a2 + 16), v15, 0xDEA9384CuLL);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __dst[0] = 0;
      v16 = MEMORY[0x1E69E9A60];
      if (vm_allocate(*MEMORY[0x1E69E9A60], __dst, v15, -251658239))
      {
        result = 0;
LABEL_19:
        *(a1 + 16) = 1;
        return result;
      }

      v17 = *(a2 + 16);
      if (v17)
      {
        memcpy(__dst[0], v17, *a2);
        MEMORY[0x1B27490A0](*v16, *(a2 + 16), v12);
      }

      result = __dst[0];
    }

    *(a2 + 16) = result;
    if (*(a2 + 24))
    {
      if (result)
      {
        memcpy(result, v10, v7);
        *(a2 + 24) = 0;
      }
    }

    v11 = *a2;
    v6 = v15 - *a2;
  }

  *a2 = v11 + v4;
  *(a2 + 8) = v6 - v4;
  return (*(a2 + 16) + v7);
}

uint64_t _MDPlistContainerCreateCommon(uint64_t Common_cold_1, size_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  if (_MDPlistContainerCreateCommon_once != -1)
  {
    _MDPlistContainerCreateCommon_cold_1();
  }

  if (v11 | v12 && (v12 == 0) != (v11 != 0))
  {
    _MDPlistContainerCreateCommon_cold_2(Common_cold_1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a3 && *a3 != 47838)
  {
    _MDPlistContainerCreateCommon_cold_3(Common_cold_1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (_MDPlistContainerGetTypeID_once != -1)
  {
    _MDPlistContainerCreateCommon_cold_4();
  }

  v15 = a3 != 0;
  v16 = v12 != 0;
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 17) = v12;
  *(Instance + 24) = _Block_copy(a8);
  if (v15 && v16)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0;
  }

  if (v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  *(Instance + 32) = v19;
  if (v11)
  {
    v20 = 0;
  }

  else
  {
    v20 = a3;
  }

  *(Instance + 40) = v18;
  *(Instance + 48) = v20;
  *(Instance + 56) = v15 && v16;
  *(Instance + 57) = v10;
  *(Instance + 58) = v9;
  if (v11)
  {
    v21 = MDPlistBufferConsume(Instance, Instance + 32, a2);
    if (v21)
    {
      memcpy(v21, a3, a2);
    }
  }

  *(Instance + 64) = 0;
  *(Instance + 72) = 0;
  *(Instance + 80) = 0;
  *(Instance + 88) = 256;
  *(Instance + 90) = 1;
  *(Instance + 91) = 0;
  *(Instance + 95) = 0;
  *(Instance + 104) = 0;
  *(Instance + 112) = 0;
  *(Instance + 96) = 0;
  *(Instance + 120) = 0;
  *(Instance + 121) = 257;
  *(Instance + 123) = 0;
  *(Instance + 127) = 0;
  return Instance;
}

uint64_t _MDPlistContainerCreateMutable(uint64_t a1, uint64_t a2)
{

  return _MDPlistContainerCreateCommon(a1, 0, 0, 1, 0, 1, a2, 0);
}

double _MDPlistContainerBeginArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136);
  if (v8 <= 0)
  {
    _MDPlistContainerBeginArray_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 144);
  if (v8 == 1)
  {
    v8 = 1;
  }

  else
  {
    v11 = v10 + 24 * v8;
    if (*(v11 - 24) == 241 && (*(v11 - 20) & 1) == 0)
    {
      _MDPlistContainerBeginArray_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    if (v8 >= 0x400)
    {
      _MDPlistContainerBeginArray_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  ++*(v10 + 24 * v8 - 20);
  v12 = *(a1 + 32);
  MDPlistBufferConsume(a1, a1 + 32, 0xAuLL);
  v13 = *(a1 + 64);
  v14 = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  if (v14)
  {
    *v14 = v12;
    v14[4] = -16;
  }

  v15 = *(a1 + 144) + 24 * *(a1 + 136);
  v16 = *(a1 + 64);
  *&result = 240;
  *v15 = 240;
  *(v15 + 8) = v16;
  *(v15 + 16) = v12;
  *(v15 + 20) = v13;
  ++*(a1 + 136);
  return result;
}

void _MDPlistContainerAddObject(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a2);
  if (v6 == gCFArrayTypeID)
  {
    _MDPlistContainerBeginArray(a1, v7, v8, v9, v10, v11, v12, v13);
    Count = CFArrayGetCount(a2);
    v21 = Count;
    if (Count)
    {
      v22 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v22);
        _MDPlistContainerAddObject(a1, ValueAtIndex, 0);
        ++v22;
      }

      while (v21 != v22);
    }

    _MDPlistContainerEndArray(a1, a3, v15, v16, v17, v18, v19, v20);
    return;
  }

  v24 = v6;
  if (v6 == gCFDictionaryTypeID)
  {
    _MDPlistContainerBeginDictionary(a1, v7, v8, v9, v10, v11, v12, v13);
    v25 = CFDictionaryGetCount(a2);
    v26 = 8 * v25;
    v27 = malloc_type_malloc(v26, 0x80040B8603338uLL);
    v28 = malloc_type_malloc(v26, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a2, v27, v28);
    v29 = v25;
    if (v25)
    {
      v30 = v28;
      v31 = v27;
      do
      {
        v32 = CFGetTypeID(*v31);
        if (v32 != gCFStringTypeID)
        {
          _MDPlistContainerAddObject_cold_2(v32, v33, v34, v35, v36, v37, v38, v39);
        }

        v40 = *v31++;
        _MDPlistContainerAddObject(a1, v40, 0);
        v41 = *v30++;
        _MDPlistContainerAddObject(a1, v41, 0);
        --v29;
      }

      while (v29);
    }

    free(v27);
    free(v28);

    _MDPlistContainerEndDictionary(a1, a3, v42, v43, v44, v45, v46, v47);
    return;
  }

  if (v6 == gCFNullTypeID)
  {

LABEL_51:
    _addInlineData(a1, 224, 0, a3, v10, v11, v12, v13);
    return;
  }

  if (v6 == gCFStringTypeID)
  {

    _MDPlistContainerAddString(a1);
  }

  else if (v6 == gCFDataTypeID)
  {
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);

    _addGenericData(a1, 0, 246, BytePtr, Length, a3, v50, v51);
  }

  else if (v6 == gCFUUIDTypeID)
  {

    _MDPlistContainerAddUUID(a1, a2, a3);
  }

  else if (v6 == gCFURLTypeID)
  {

    _MDPlistContainerAddURL(a1, a2, a3, v9, v10, v11, v12, v13);
  }

  else if (v6 == gCFDateTypeID)
  {

    _MDPlistContainerAddDate(a1, a2, a3);
  }

  else if (v6 == gCFBooleanTypeID)
  {

    _MDPlistContainerAddBoolean(a1, a2, a3);
  }

  else
  {
    if (v6 != gCFNumberTypeID)
    {
      v52 = _MDLogForCategoryDefault();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        _MDPlistContainerAddObject_cold_1(v24, a2, v52);
      }

      goto LABEL_51;
    }

    _MDPlistContainerAddNumber(a1, a2, a3);
  }
}

double _MDPlistContainerBeginDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136);
  if (v8 <= 0)
  {
    _MDPlistContainerBeginDictionary_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 144);
  if (v8 == 1)
  {
    v8 = 1;
  }

  else
  {
    v11 = v10 + 24 * v8;
    if (*(v11 - 24) == 241 && (*(v11 - 20) & 1) == 0)
    {
      _MDPlistContainerBeginDictionary_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    if (v8 >= 0x400)
    {
      _MDPlistContainerBeginDictionary_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  ++*(v10 + 24 * v8 - 20);
  v12 = *(a1 + 32);
  MDPlistBufferConsume(a1, a1 + 32, 0xCuLL);
  v13 = *(a1 + 64);
  v14 = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  if (v14)
  {
    *v14 = v12;
    v14[4] = -15;
  }

  v15 = *(a1 + 144) + 24 * *(a1 + 136);
  v16 = *(a1 + 64);
  *&result = 241;
  *v15 = 241;
  *(v15 + 8) = v16;
  *(v15 + 16) = v12;
  *(v15 + 20) = v13;
  ++*(a1 + 136);
  return result;
}

int *_MDPlistContainerAddString(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v43 = *MEMORY[0x1E69E9840];
  v9 = *(v1 + 136);
  if (v9 <= 1)
  {
    _MDPlistContainerAddString_cold_3(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v10 = v3;
  v11 = v2;
  v12 = v1;
  v13 = 134217984;
  v14 = *(v1 + 144) + 24 * v9;
  v16 = *(v14 - 24);
  v15 = *(v14 - 20);
  *(v14 - 20) = v15 + 1;
  v17 = (v15 & 1) == 0 && v16 == 241;
  v18 = v17;
  if (!v17 && (FastestEncoding = CFStringGetFastestEncoding(v2), FastestEncoding == 256 || FastestEncoding == 335544576 || FastestEncoding == 268435712))
  {
    v20 = 0;
    v13 = 256;
    v19 = -11;
  }

  else
  {
    v19 = -12;
    v20 = 1;
  }

  maxBufLen = 0;
  Length = CFStringGetLength(v11);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, v13);
  v44.length = CFStringGetLength(v11);
  v44.location = 0;
  Bytes = CFStringGetBytes(v11, v44, v13, 0x20u, 1u, 0, MaximumSizeForEncoding, &maxBufLen);
  if (v18)
  {
    if (maxBufLen >= 4096)
    {
      _MDPlistContainerAddString_cold_2(Bytes, v25, v26, v27, v28, v29, v30, v31);
    }

    if (v10)
    {
      _MDPlistContainerAddString_cold_1(Bytes, v25, v26, v27, v28, v29, v30, v31);
    }

    bzero(buffer, 0x1000uLL);
    v45.length = CFStringGetLength(v11);
    v45.location = 0;
    CFStringGetBytes(v11, v45, v13, 0x20u, 1u, buffer, maxBufLen, &maxBufLen);
    v32 = maxBufLen;
    buffer[maxBufLen] = 0;
    v33 = addStringKey(v12, buffer, v32);
    result = MDPlistBufferConsume(v12, v12 + 64, 4uLL);
    if (result)
    {
      *result = v33;
    }

    return result;
  }

  result = MDPlistBufferConsume(v12, v12 + 64, 5uLL);
  if (!result)
  {
    goto LABEL_28;
  }

  v35 = result;
  v36 = *(v12 + 32);
  v37 = 4;
  if (v20)
  {
    v37 = 5;
  }

  result = MDPlistBufferConsume(v12, v12 + 32, v37 + maxBufLen);
  if (!result)
  {
LABEL_28:
    v35 = &gNullObjectReference;
    if (!v10)
    {
      return result;
    }

    goto LABEL_29;
  }

  v38 = result;
  v46.length = CFStringGetLength(v11);
  v46.location = 0;
  result = CFStringGetBytes(v11, v46, v13, 0x20u, 1u, v38 + 4, maxBufLen, &maxBufLen);
  v39 = maxBufLen;
  *v38 = maxBufLen + v20;
  if (v20)
  {
    *(v38 + v39 + 4) = 0;
  }

  *v35 = v36;
  *(v35 + 4) = v19;
  if (v10)
  {
LABEL_29:
    v40 = *v35;
    *(v10 + 4) = *(v35 + 4);
    *v10 = v40;
  }

  return result;
}

uint64_t addStringKey(uint64_t a1, const void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  Value = CFDictionaryGetValue(*(a1 + 128), a2);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    valuePtr = *(a1 + 96);
    v7 = MDPlistBufferConsume(a1, a1 + 96, a3 + 3);
    if (v7)
    {
      v8 = v7;
      *v7 = a3;
      strcpy(v7 + 2, a2);
      v8[a3 + 2] = 0;
      v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(*(a1 + 128), a2, v9);
      CFRelease(v9);
    }
  }

  return valuePtr;
}

uint64_t MDHash(unsigned __int8 *a1, unsigned int a2, unsigned int a3)
{
  v3 = -1640531527;
  if (a2 < 0xC)
  {
    v5 = -1640531527;
    v4 = a2;
  }

  else
  {
    v4 = a2;
    v5 = -1640531527;
    do
    {
      v6 = *(a1 + 1) + v3;
      v7 = *(a1 + 2) + a3;
      v8 = (*a1 + v5 - (v6 + v7)) ^ (v7 >> 13);
      v9 = (v6 - v7 - v8) ^ (v8 << 8);
      v10 = (v7 - v8 - v9) ^ (v9 >> 13);
      v11 = (v8 - v9 - v10) ^ (v10 >> 12);
      v12 = (v9 - v10 - v11) ^ (v11 << 16);
      v13 = (v10 - v11 - v12) ^ (v12 >> 5);
      v5 = (v11 - v12 - v13) ^ (v13 >> 3);
      v3 = (v12 - v13 - v5) ^ (v5 << 10);
      a3 = (v13 - v5 - v3) ^ (v3 >> 15);
      a1 += 12;
      v4 -= 12;
    }

    while (v4 > 0xB);
  }

  v14 = a3 + a2;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 != 9)
      {
        if (v4 != 10)
        {
          v14 += a1[10] << 24;
        }

        v14 += a1[9] << 16;
      }

      v14 += a1[8] << 8;
    }

    else
    {
      if (v4 == 6)
      {
LABEL_22:
        v3 += a1[5] << 8;
        goto LABEL_23;
      }

      if (v4 == 7)
      {
LABEL_21:
        v3 += a1[6] << 16;
        goto LABEL_22;
      }
    }

    v3 += a1[7] << 24;
    goto LABEL_21;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
LABEL_25:
      v5 += a1[2] << 16;
      goto LABEL_26;
    }

    if (v4 == 4)
    {
LABEL_24:
      v5 += a1[3] << 24;
      goto LABEL_25;
    }

LABEL_23:
    v3 += a1[4];
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    goto LABEL_27;
  }

  if (v4 != 2)
  {
    goto LABEL_28;
  }

LABEL_26:
  v5 += a1[1] << 8;
LABEL_27:
  v5 += *a1;
LABEL_28:
  v15 = (v5 - (v3 + v14)) ^ (v14 >> 13);
  v16 = (v3 - v14 - v15) ^ (v15 << 8);
  v17 = (v14 - v15 - v16) ^ (v16 >> 13);
  v18 = (v15 - v16 - v17) ^ (v17 >> 12);
  v19 = (v16 - v17 - v18) ^ (v18 << 16);
  v20 = (v17 - v18 - v19) ^ (v19 >> 5);
  v21 = (v18 - v19 - v20) ^ (v20 >> 3);
  return (v20 - v21 - ((v19 - v20 - v21) ^ (v21 << 10))) ^ (((v19 - v20 - v21) ^ (v21 << 10)) >> 15);
}

_DWORD *_MDPlistContainerAddDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1B2747B00](a2);
  return _addGenericData(a1, 1, 19, v8, 8uLL, a3, v5, v6);
}

_DWORD *_addGenericData(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a3;
  v12 = a2;
  v14 = *(a1 + 136);
  if (v14 <= 1)
  {
    if ((a3 & 0xFE) != 0xF0 || v14 != 1)
    {
      _addGenericData_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v15 = *(a1 + 144);
    v14 = 1;
  }

  else
  {
    v15 = *(a1 + 144);
    v16 = v15 + 24 * v14;
    if (*(v16 - 24) == 241 && (*(v16 - 20) & 1) == 0)
    {
      _addGenericData_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  ++*(v15 + 24 * v14 - 20);
  v17 = *(a1 + 32);
  result = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  v19 = result;
  if (!result)
  {
    v21 = 1;
    if (!a6)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v12)
  {
    result = MDPlistBufferConsume(a1, a1 + 32, a5);
    v20 = result;
    if (a4 && result)
    {
      result = memcpy(result, a4, a5);
    }
  }

  else
  {
    result = MDPlistBufferConsume(a1, a1 + 32, a5 + 4);
    v20 = result;
    if (result)
    {
      if (a4)
      {
        result = memcpy(result + 1, a4, a5);
      }

      *v20++ = a5;
    }
  }

  *v19 = v17;
  *(v19 + 4) = v11;
  v21 = v20 == 0;
  if (a6)
  {
LABEL_20:
    if (v21)
    {
      v22 = &gNullObjectReference;
    }

    else
    {
      v22 = v19;
    }

    v23 = *v22;
    *(a6 + 4) = *(v22 + 4);
    *a6 = v23;
  }

  return result;
}

char *cStringRetainCallback(int a1, char *__s1)
{

  return strdup(__s1);
}

int *_addInlineData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136);
  if (v8 <= 1)
  {
    _addInlineData_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = *(a1 + 144) + 24 * v8;
  if (*(v9 - 24) == 241 && (*(v9 - 20) & 1) == 0)
  {
    _addInlineData_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v12 = a3;
  v13 = a2;
  ++*(v9 - 20);
  result = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  if (result)
  {
    *result = v12;
    *(result + 4) = v13;
    if (!a4)
    {
      return result;
    }

    goto LABEL_8;
  }

  result = &gNullObjectReference;
  if (a4)
  {
LABEL_8:
    v15 = *result;
    *(a4 + 4) = *(result + 4);
    *a4 = v15;
  }

  return result;
}

void _MDPlistContainerEndDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    _MDPlistContainerEndDictionary_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 136) = v10;
  v12 = *(a1 + 144) + 24 * v10;
  if (*v12 != 241)
  {
    _MDPlistContainerEndDictionary_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v13 = *(v12 + 4);
  if (v13)
  {
    _MDPlistContainerEndDictionary_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v14 = a2;
  v15 = v13 >> 1;
  if ((v13 >> 1) <= 3)
  {
    v16 = 1;
  }

  else
  {
    v16 = (((v13 >> 1) + 1) * 1.3);
  }

  v17 = *(a1 + 32);
  v18 = MDPlistBufferConsume(a1, a1 + 32, 9 * (v13 >> 1) + 2 * (v16 + 1));
  if (!v18)
  {
    v28 = &gNullObjectReference;
    if (!v14)
    {
      return;
    }

    goto LABEL_29;
  }

  v19 = v18;
  v40 = v14;
  if (v16)
  {
    bzero(v18, 2 * v16);
  }

  if (v13)
  {
    v20 = (*(a1 + 80) + *(v12 + 8));
    if (v15 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v13 >> 1;
    }

    do
    {
      v22 = *v20;
      v20 = (v20 + 9);
      v23 = MDHash((*(a1 + 112) + v22 + 2), *(*(a1 + 112) + v22), 0);
      ++v19[v23 % v16];
      --v21;
    }

    while (v21);
  }

  if (v16)
  {
    v24 = 0;
    v25 = v16;
    v26 = v19;
    do
    {
      v24 += *v26;
      *v26++ = v24;
      --v25;
    }

    while (v25);
    v27 = v16;
  }

  else
  {
    v27 = 0;
    v24 = 0;
  }

  v19[v27] = v24;
  if (v13)
  {
    v29 = (*(a1 + 80) + *(v12 + 8));
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v30 = MDHash((*(a1 + 112) + *v29 + 2), *(*(a1 + 112) + *v29), 0);
      v31 = v19[v30 % v16] - 1;
      v19[v30 % v16] = v31;
      v32 = v19 + 9 * v31 + 2 * (v16 + 1);
      v33 = *v29;
      v34 = *(v29 + 8);
      v29 = (v29 + 9);
      *(v32 + 8) = v34;
      *v32 = v33;
      --v15;
    }

    while (v15);
  }

  v35 = *(v12 + 16);
  v36 = *(a1 + 48) + v35;
  *v36 = *(a1 + 32) - v35 - 4;
  *(v36 + 4) = v13 >> 1;
  *(v36 + 6) = v17 - v35;
  *(v36 + 10) = v16;
  v28 = (*(a1 + 80) + *(v12 + 20));
  if (!*(a1 + 16))
  {
    v37 = *(v12 + 8);
    v38 = *(a1 + 72) - v37 + *(a1 + 64);
    *(a1 + 64) = v37;
    *(a1 + 72) = v38;
  }

  v14 = v40;
  if (v40)
  {
LABEL_29:
    v39 = *v28;
    *(v14 + 4) = *(v28 + 4);
    *v14 = v39;
  }
}

void *_MDPlistContainerEndArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    _MDPlistContainerEndArray_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 136) = v10;
  v12 = *(a1 + 144) + 24 * v10;
  if (*v12 != 240)
  {
    _MDPlistContainerEndArray_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v14 = *(a1 + 32);
  v15 = 5 * *(v12 + 4);
  result = MDPlistBufferConsume(a1, a1 + 32, v15);
  if (result)
  {
    result = memcpy(result, (*(a1 + 80) + *(v12 + 8)), v15);
    v17 = *(v12 + 16);
    v18 = *(a1 + 48) + v17;
    v19 = *(v12 + 4);
    *v18 = *(a1 + 32) - v17 - 4;
    *(v18 + 4) = v19;
    *(v18 + 6) = v14 - v17;
    v20 = (*(a1 + 80) + *(v12 + 20));
    if (!*(a1 + 16))
    {
      v21 = *(v12 + 8);
      v22 = *(a1 + 72) - v21 + *(a1 + 64);
      *(a1 + 64) = v21;
      *(a1 + 72) = v22;
    }
  }

  else
  {
    v20 = &gNullObjectReference;
  }

  if (a2)
  {
    v23 = *v20;
    *(a2 + 4) = *(v20 + 4);
    *a2 = v23;
  }

  return result;
}

void _MDPlistContainerEndContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136) - 1;
  *(a1 + 136) = v8;
  if (v8)
  {
    _MDPlistContainerEndContainer_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (**(a1 + 144) != 0x100000000)
  {
    _MDPlistContainerEndContainer_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 32);
  v11 = MDPlistBufferConsume(a1, a1 + 32, *(a1 + 96));
  if (v11)
  {
    memcpy(v11, *(a1 + 112), *(a1 + 96));
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    if (*(a1 + 96))
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 80);
    v16 = *v15;
    v18 = *(v15 + 4);
    *v12 = -17698;
    *(v12 + 2) = 256;
    *(v12 + 6) = v13;
    *(v12 + 10) = v14;
    *(v12 + 14) = v16;
    *(v12 + 18) = v18;
    *(v12 + 19) = v10;
    *(v12 + 23) = 0;
    *(v12 + 25) = v10;
  }

  MDPlistBufferDispose(a1 + 64, 0);
  MDPlistBufferDispose(a1 + 96, 0);
  free(*(a1 + 144));
  *(a1 + 144) = 0;
  v17 = *(a1 + 128);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 128) = 0;
  }
}

void MDPlistBufferDispose(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);

    v2(a2);
  }

  else if (*(a1 + 25) && *(a1 + 16) && !*(a1 + 24))
  {
    if (*(a1 + 26))
    {
      free(*(a1 + 16));
    }

    else
    {
      MEMORY[0x1B27490A0](*MEMORY[0x1E69E9A60]);
    }

    *(a1 + 16) = 0;
  }
}

void cStringReleaseCallback(int a1, void *a2)
{

  free(a2);
}

void _MDPlistContainerDestroy(uint64_t a1)
{
  MDPlistBufferDispose(a1 + 32, *(a1 + 24));
  MDPlistBufferDispose(a1 + 64, 0);
  MDPlistBufferDispose(a1 + 96, 0);
  _Block_release(*(a1 + 24));
  free(*(a1 + 144));
  v2 = *(a1 + 128);
  if (v2)
  {

    CFRelease(v2);
  }
}

dispatch_data_t _MDPlistContainerCopyDispatchData(dispatch_data_t result, Class *a2)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    isa = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  v3 = result;
  if (LOBYTE(result[2].isa))
  {
    goto LABEL_3;
  }

  isa = result[4].isa;
  if (!isa)
  {
LABEL_4:
    result = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  v5 = (isa + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  if (BYTE1(result[7].isa) && !BYTE2(result[7].isa))
  {
    BYTE1(result[7].isa) = 0;
    v6 = result[6].isa;
    v7 = result[5].isa + isa;
    if (v7 > v5)
    {
      MEMORY[0x1B27490A0](*MEMORY[0x1E69E9A60], v6 + v5, &v7[-v5]);
    }
  }

  else
  {
    __dst[0] = 0;
    v6 = 0;
    if (!vm_allocate(*MEMORY[0x1E69E9A60], __dst, v5, -251658239))
    {
      v6 = __dst[0];
      memcpy(__dst[0], v3[6].isa, isa);
    }
  }

  if (!v6)
  {
LABEL_3:
    isa = 0;
    goto LABEL_4;
  }

  result = dispatch_data_create(v6, v5, 0, *MEMORY[0x1E69E9660]);
  if (!a2)
  {
    return result;
  }

LABEL_7:
  *a2 = isa;
  return result;
}

void _MDPlistContainerCreateCommon_cold_4()
{

  dispatch_once(&_MDPlistContainerGetTypeID_once, &__block_literal_global_7);
}

void _MDPlistContainerCreateCommon_cold_1()
{

  dispatch_once(&_MDPlistContainerCreateCommon_once, &__block_literal_global_73);
}

void *md_deadline_once_create(const void *a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x10A00400333C0D5uLL);
  *v2 = 1;
  v2[1] = dispatch_semaphore_create(0);
  v2[2] = 0;
  *(v2 + 6) = 0;
  v2[4] = _Block_copy(a1);
  return v2;
}

void md_deadline_once_release(uint64_t a1)
{
  if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    dispatch_release(*(a1 + 8));
    _Block_release(*(a1 + 32));

    free(a1);
  }
}

void tracing_dispatch_async(dispatch_queue_t queue, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (tracing_enabled)
  {
    v2 = si_tracing_current_span();
    v3 = *(v2 + 16);
    v7 = *v2;
    v8 = v3;
    v9 = *(v2 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __tracing_dispatch_async_block_invoke;
    block[3] = &unk_1E7B255C8;
    block[4] = v4;
    dispatch_async(v5, block);
  }

  else
  {

    dispatch_async(queue, a2);
  }
}

uint64_t __tracing_dispatch_async_block_invoke()
{
  v0 = si_tracing_current_span();
  *(v0 + 32) = *(v1 + 72);
  v2 = *(v1 + 56);
  *v0 = *(v1 + 40);
  *(v0 + 16) = v2;
  v3 = *(*(v1 + 32) + 16);

  return v3();
}

int *_MDPlistContainerAddCString(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136);
  if (v8 <= 1)
  {
    _MDPlistContainerAddCString_cold_2(a1, __s, a3, a4, a5, a6, a7, a8);
  }

  v10 = a3;
  v13 = *(a1 + 144) + 24 * v8;
  v14 = *(v13 - 20);
  *(v13 - 20) = v14 + 1;
  if (a3 == -1)
  {
    v10 = strlen(__s);
  }

  if (*(v13 - 24) == 241 && (v14 & 1) == 0)
  {
    v21 = addStringKey(a1, __s, v10);
    result = MDPlistBufferConsume(a1, a1 + 64, 4uLL);
    if (result)
    {
      *result = v21;
    }

    if (a4)
    {
      _MDPlistContainerAddCString_cold_1(result, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  else
  {
    result = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
    if (result)
    {
      v17 = result;
      v18 = *(a1 + 32);
      v19 = MDPlistBufferConsume(a1, a1 + 32, v10 + 5);
      *v19 = v10 + 1;
      v20 = v19 + 1;
      result = memcpy(v19 + 1, __s, v10);
      *(v20 + v10) = 0;
      *v17 = v18;
      *(v17 + 4) = -12;
      if (!a4)
      {
        return result;
      }
    }

    else
    {
      v17 = &gNullObjectReference;
      if (!a4)
      {
        return result;
      }
    }

    v29 = *v17;
    *(a4 + 4) = *(v17 + 4);
    *a4 = v29;
  }

  return result;
}

int *_MDPlistContainerAddInt32Value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return _addInlineData(a1, 226, a2, a3, a5, a6, a7, a8);
}

unint64_t _MDPlistArrayGetPlistObjectAtIndex@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (WORD1(a2) || (v9 = a1, v10 = *a1, a1 = (*a1 + a1[4]), *(a1 + 2) <= a2))
  {
    _MDPlistArrayGetPlistObjectAtIndex_cold_1(a1, a2, a4, a5, a6, a7, a8, a9);
  }

  v11 = a1 + *(a1 + 6);
  v12 = *(v9 + 1);
  *a3 = v10;
  *(a3 + 8) = v12;
  v13 = &v11[5 * a2];
  *(a3 + 4) = *v13;
  *(a3 + 20) = v13[4];
  v15 = *a3;
  v16 = *(a3 + 2);
  return validatePlistObject(a1, &v15, 0, 0, a6, a7, a8, a9);
}

unsigned int *MDPlistGetRootPlistObjectFromBuffer@<X0>(unsigned int *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = *result;
  if (a2)
  {
    v10 = *a2;
    if (v9 <= 0x1C && v10 == 0)
    {
      v18 = 822;
LABEL_30:
      *a2 = v18;
      goto LABEL_31;
    }

    if (v10)
    {
      goto LABEL_31;
    }
  }

  else if (v9 <= 0x1C)
  {
    MDPlistGetRootPlistObjectFromBuffer_cold_4(result, 0, a4, 0, a5, a6, a7, a8);
  }

  v12 = *(result + 2);
  v24 = *(v12 + 14);
  v25 = *(v12 + 18);
  result = (v12 + 19);
  v13 = *(v12 + 19);
  v14 = *(v12 + 25);
  if (!a2)
  {
    if (v13 != v14)
    {
      MDPlistGetRootPlistObjectFromBuffer_cold_1(result, 0, a4, 0, a5, a6, a7, a8);
    }

    if (v13 > v9)
    {
      MDPlistGetRootPlistObjectFromBuffer_cold_3(result, 0, a4, 0, a5, a6, a7, a8);
    }

    if (*(v12 + 10) && *(v12 + (*(v12 + 6) - 1)))
    {
      MDPlistGetRootPlistObjectFromBuffer_cold_2(result, 0, a4, 0, a5, a6, a7, a8);
    }

LABEL_27:
    v19[0] = v12;
    v19[1] = v9;
    v20 = *(v12 + 14);
    v21 = *(v12 + 18);
    v22 = 0;
    v23 = 0;
    result = validatePlistObject(result, v19, v9, a2, a5, a6, a7, a8);
    *a3 = v12;
    *(a3 + 8) = v9;
    *(a3 + 16) = v24;
    *(a3 + 20) = v25;
    *(a3 + 21) = 0;
    *(a3 + 23) = 0;
    return result;
  }

  v15 = *a2;
  if (v13 != v14 && v15 == 0)
  {
    v18 = 836;
    goto LABEL_30;
  }

  if (v14 > v9 && v15 == 0)
  {
    v18 = 837;
    goto LABEL_30;
  }

  if (!v15)
  {
    if (*(v12 + 10) && *(v12 + (*(v12 + 6) - 1)))
    {
      *a2 = 842;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = 0;
      return result;
    }

    goto LABEL_27;
  }

LABEL_31:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

unsigned int *_MDPlistGetRootPlistObjectFromBytes@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v9[1] = 0;
  v9[2] = a1;
  v9[3] = 0;
  return MDPlistGetRootPlistObjectFromBuffer(v9, 0, a3, a4, a5, a6, a7, a8);
}

unint64_t validatePlistObject(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v10 = *(*a2 + 10);
  v11 = *(*a2 + 6);
  if (a4)
  {
    v12 = *a4;
    if (v10 >= v11 && v12 == 0)
    {
      result = 0;
      if (v10 >= -8388607)
      {
        LODWORD(v19) = *(*a2 + 10);
      }

      else
      {
        LODWORD(v19) = 0x800000;
      }

      if (v10 < 0x800000)
      {
        v19 = v19;
      }

      else
      {
        v19 = 0x7FFFFFLL;
      }

      if (v11 >= -8388607)
      {
        v20 = *(*a2 + 6);
      }

      else
      {
        v20 = 0x800000;
      }

      if (v11 < 0x800000)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0x7FFFFF;
      }

      v22 = (v19 << 40) | (v21 << 16) | 0x26F;
      goto LABEL_28;
    }

    if (v12)
    {
      return 0;
    }

    if (a3)
    {
      if (v11 != a3)
      {
        result = 0;
        v37 = (a3 << 40) | 0x279;
        if (a3 < -8388607)
        {
          v37 = 0x8000000000000279;
        }

        if (a3 >= 0x800000)
        {
          v37 = 0x7FFFFF0000000279;
        }

        if (v11 >= -8388607)
        {
          v38 = *(*a2 + 6);
        }

        else
        {
          v38 = 0x800000;
        }

        if (v11 < 0x800000)
        {
          v39 = v38;
        }

        else
        {
          v39 = 0x7FFFFF;
        }

        v22 = v37 | (v39 << 16);
        goto LABEL_28;
      }

      v14 = *(a2 + 20);
      if ((v14 & 0xF0) == 0xE0)
      {
        return 0;
      }

      v15 = 0;
      v16 = a1 - v9 + 10;
      v11 = a3;
    }

    else
    {
      v14 = *(a2 + 20);
      if ((v14 & 0xF0) == 0xE0)
      {
        return 0;
      }

      v16 = a1 - v9 + 10;
      v15 = *a4;
    }

    v24 = *(a1 + 6);
    v23 = *(a2 + 4);
    if (v16 > v23 && !v15)
    {
      result = 0;
      v22 = 646;
      goto LABEL_28;
    }

    if (v16 + v24 <= v23 && !v15)
    {
      result = 0;
      v22 = 647;
      goto LABEL_28;
    }

    if (v15)
    {
      return 0;
    }

    if ((v14 & 0x80) != 0)
    {
      if (v23 + 4 > v11)
      {
        result = 0;
        v22 = 655;
        goto LABEL_28;
      }

      goto LABEL_38;
    }

LABEL_36:
    result = (v14 & 0xFu) + 5;
    goto LABEL_39;
  }

  if (v10 >= v11)
  {
    validatePlistObject_cold_1(a1, a2, a3, 0, a5, a6, a7, a8);
  }

  if (a3)
  {
    if (v11 != a3)
    {
      validatePlistObject_cold_2(a1, a2, a3, 0, a5, a6, a7, a8);
    }

    v14 = *(a2 + 20);
    v17 = v14 & 0xF0;
    v11 = a3;
  }

  else
  {
    v14 = *(a2 + 20);
    v17 = v14 & 0xF0;
  }

  if (v17 == 224)
  {
    return 0;
  }

  v16 = a1 - v9 + 10;
  v23 = *(a2 + 4);
  if (v16 > v23)
  {
    validatePlistObject_cold_19(a1, a2, a3, 0, a5, a6, a7, a8);
  }

  v24 = *(a1 + 6);
  if (v16 + v24 <= v23)
  {
    validatePlistObject_cold_3(a1, a2, a3, 0, a5, a6, a7, a8);
  }

  if ((v14 & 0x80) == 0)
  {
    goto LABEL_36;
  }

  if (v23 + 4 > v11)
  {
    validatePlistObject_cold_4(a1, a2, a3, 0, a5, a6, a7, a8);
  }

LABEL_38:
  result = *(v9 + v23) + 4;
LABEL_39:
  v25 = *a1;
  if (!a4)
  {
    if (result >= v25)
    {
      validatePlistObject_cold_5(result, a2, a3, 0, a5, a6, a7, a8);
    }

    v27 = result + v23;
    if (v27 > v24 + v16)
    {
      validatePlistObject_cold_18(result, a2, a3, 0, a5, a6, a7, a8);
    }

    if (v27 > v11)
    {
      validatePlistObject_cold_17(result, a2, a3, 0, a5, a6, a7, a8);
    }

    if ((v14 & 0xFE) == 0xF0)
    {
      if (v23 + 10 > v11)
      {
        validatePlistObject_cold_16(result, a2, a3, 0, a5, a6, a7, a8);
      }

      v28 = (v9 + v23);
      v29 = *(v28 + 2);
      v30 = *(v28 + 6);
      v31 = (v30 + v23);
      if (5 * v29 + v31 > v11)
      {
        validatePlistObject_cold_15(result, a2, a3, 0, a5, a6, a7, a8);
      }

      v32 = *v28;
      if (v32 + 4 < v30)
      {
        validatePlistObject_cold_14(result, v32, a3, 0, a5, a6, a7, a8);
      }

      if (v32 < v29)
      {
        validatePlistObject_cold_13(result, v32, a3, 0, a5, a6, a7, a8);
      }

      if (5 * v29 > (v32 - v30) + 4)
      {
        validatePlistObject_cold_12(result, v32, a3, 0, a5, a6, a7, a8);
      }

      if (v14 == 241)
      {
        if (v23 + 12 > v11)
        {
          validatePlistObject_cold_11(result, v32, a3, 0, a5, a6, a7, a8);
        }

        v33 = *(v28 + 5);
        if (*(v28 + 2) && !v10)
        {
          validatePlistObject_cold_10(result, v32, a3, 0, a5, a6, a7, a8);
        }

        if (!*(v28 + 5))
        {
          validatePlistObject_cold_9(result, v32, a3, 0, a5, a6, a7, a8);
        }

        if (v29 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = *(v28 + 2);
        }

        if (v33 >= 2 * v34)
        {
          validatePlistObject_cold_6(result, v32, a3, 0, a5, a6, a7, a8);
        }

        v35 = 2 * v33 + 2;
        if (v32 + 4 - v30 != 9 * v29 + v35)
        {
          validatePlistObject_cold_7(result, v32, a3, 0, a5, a6, a7, a8);
        }

        if (9 * v29 + v31 + v35 > v11)
        {
          validatePlistObject_cold_8(result, v32, a3, 0, a5, a6, a7, a8);
        }
      }
    }

    return result;
  }

  v26 = *a4;
  if (result >= v25 && !v26)
  {
    result = 0;
    v22 = 662;
LABEL_28:
    *a4 = v22;
    return result;
  }

  v36 = result + v23;
  if (!v26 && v36 > v24 + v16)
  {
    result = 0;
    v22 = 663;
    goto LABEL_28;
  }

  if (!v26 && v36 > v11)
  {
    result = 0;
    v22 = 665;
    goto LABEL_28;
  }

  if (v26)
  {
    return 0;
  }

  if ((v14 & 0xFE) == 0xF0)
  {
    if (v23 + 10 > v11)
    {
      result = 0;
      v22 = 670;
      goto LABEL_28;
    }

    v40 = (v9 + v23);
    v41 = *(v40 + 2);
    v42 = *(v40 + 6);
    v43 = (v42 + v23);
    if (5 * v41 + v43 > v11)
    {
      result = 0;
      v22 = 677;
      goto LABEL_28;
    }

    v44 = *v40;
    if (v44 + 4 < v42)
    {
      result = 0;
      v22 = 679;
      goto LABEL_28;
    }

    if (v44 < v41)
    {
      result = 0;
      v22 = 683;
      goto LABEL_28;
    }

    if (5 * v41 > (v44 - v42) + 4)
    {
      result = 0;
      v22 = 684;
      goto LABEL_28;
    }

    if (v14 == 241)
    {
      if (v23 + 12 > v11)
      {
        result = 0;
        v22 = 689;
        goto LABEL_28;
      }

      v45 = *(v40 + 5);
      if (*(v40 + 2) && !v10)
      {
        result = 0;
        v22 = 695;
        goto LABEL_28;
      }

      if (!*(v40 + 5))
      {
        result = 0;
        v22 = 696;
        goto LABEL_28;
      }

      if (v41 <= 1)
      {
        v46 = 1;
      }

      else
      {
        v46 = *(v40 + 2);
      }

      if (v45 >= 2 * v46)
      {
        result = 0;
        v22 = 697;
        goto LABEL_28;
      }

      v47 = 2 * v45 + 2;
      v48 = 9 * v41;
      if (v44 + 4 - v42 != v48 + v47)
      {
        result = 0;
        v22 = 701;
        goto LABEL_28;
      }

      if (v48 + v43 + v47 > v11)
      {
        v22 = 705;
        goto LABEL_28;
      }
    }
  }

  return result;
}

CFDataRef _MDPlistContainerCopyObject(const __CFAllocator *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(a2 + 2);
  return __MDPlistContainerCopyObjectErrorCode(a1, &v9, 0, 0, a5, a6, a7, a8);
}

unint64_t _MDPlistDictionaryIterateWithError(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x1E69E9840];
  v35 = result;
  v8 = *(result + 16);
  v37 = *result;
  v9 = *result + v8;
  if (!*(v9 + 4))
  {
    return result;
  }

  v11 = 0;
  v12 = 0;
  v13 = *(v37 + 10);
  v34 = *(v37 + 6);
  v33 = v34 - v13 - 2;
  v31 = v37 + v13;
  v32 = v13 + 2;
  v30 = v37 + v13 + 2;
  for (i = 2 * *(v9 + 10) + *(v9 + 6) + v8 + v37 + 6; ; i += 9)
  {
    v15 = *(i - 4);
    v17 = v32 <= v34 && v33 > v15;
    if (!a2)
    {
      if (!v17)
      {
        _MDPlistDictionaryIterateWithError_cold_1(result, a2, a3, a4, a5, a6, a7, a8);
      }

      v18 = *(v31 + v15);
      if ((v15 + v18) + 2 >= (*(v37 + 6) - *(v37 + 10)))
      {
        _MDPlistDictionaryIterateWithError_cold_2(result, a2, a3, a4, a5, a6, a7, a8);
      }

      goto LABEL_18;
    }

    if (*a2)
    {
      v17 = 1;
    }

    if (!v17)
    {
      break;
    }

    if (*a2)
    {
      return result;
    }

    v18 = *(v31 + v15);
    if ((v15 + v18) + 2 >= (*(v37 + 6) - *(v37 + 10)))
    {
      v29 = 1034;
      goto LABEL_26;
    }

LABEL_18:
    v19 = *v35;
    v20 = v35[1];
    v44 = *i;
    v45 = *(i + 4);
    v38 = v19;
    v39 = v20;
    v40 = *i;
    v41 = *(i + 4);
    v42 = 0;
    v43 = 0;
    result = validatePlistObject(v9, &v38, 0, a2, a5, a6, a7, a8);
    v12 += result;
    if (a2)
    {
      if (*a2)
      {
        return result;
      }

      if (v12 > *(v9 + 6))
      {
        v29 = 1050;
        goto LABEL_26;
      }
    }

    else if (v12 > *(v9 + 6))
    {
      _MDPlistDictionaryIterateWithError_cold_3(result, v21, v22, v23, v24, v25, v26, v27);
    }

    v28 = *(a3 + 16);
    v38 = v19;
    v39 = v20;
    v40 = v44;
    v41 = v45;
    v42 = 0;
    v43 = 0;
    result = v28(a3, v30 + v15, v18, &v38);
    if (++v11 >= *(v9 + 4))
    {
      return result;
    }
  }

  v29 = 1027;
LABEL_26:
  *a2 = v29;
  return result;
}

CFDataRef __MDPlistContainerCopyObjectErrorCode(const __CFAllocator *a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (a3 >= 1024)
    {
      __MDPlistContainerCopyObjectErrorCode_cold_4(a1, a2, a3, 0, a5, a6, a7, a8);
    }

    v8 = 0;
    v27 = 0;
    v10 = *(a2 + 20);
    if (v10 > 0xE2)
    {
      if (*(a2 + 20) <= 0xF3u)
      {
        switch(v10)
        {
          case 0xE3u:
            v14 = a2 + 1;
            v15 = kCFNumberFloat32Type;
            return CFNumberCreate(a1, v15, v14);
          case 0xF0u:
            v28 = *a2;
            v29 = *(a2 + 2);
            return copyCFArray(a1, &v28, a3, 0, a5, a6, a7, a8);
          case 0xF1u:
            v28 = *a2;
            v29 = *(a2 + 2);
            return copyCFDictionary(a1, &v28, a3, 0, a5, a6, a7, a8);
          default:
            return v8;
        }
      }

      else if (v10 - 244 < 2)
      {
        v18 = (*a2 + *(a2 + 4));
        v20 = *v18;
        v19 = (v18 + 1);
        v21 = v20 - (v10 == 244);
        if (v10 == 245)
        {
          v22 = 256;
        }

        else
        {
          v22 = 134217984;
        }

        return CFStringCreateWithBytes(a1, v19, v21, v22, 1u);
      }

      else if (v10 == 246)
      {
        v23 = (*a2 + *(a2 + 4));
        return CFDataCreate(a1, v23 + 4, *v23);
      }

      else
      {
        if (v10 != 247)
        {
          return v8;
        }

        v28 = *a2;
        v29 = *(a2 + 2);
        return copyCFURL(a1, &v28, a3, 0, a5, a6, a7, a8);
      }
    }

    else
    {
      if (*(a2 + 20) > 0x32u)
      {
        if (*(a2 + 20) > 0xE0u)
        {
          if (v10 == 225)
          {
            v11 = MEMORY[0x1E695E4D0];
            if (!*(a2 + 4))
            {
              v11 = MEMORY[0x1E695E4C0];
            }

            return *v11;
          }

          if (v10 != 226)
          {
            return v8;
          }

          v14 = a2 + 1;
          v15 = kCFNumberSInt32Type;
        }

        else
        {
          if (v10 != 51)
          {
            if (v10 != 224)
            {
              return v8;
            }

            v11 = MEMORY[0x1E695E738];
            return *v11;
          }

          v27 = *(*a2 + *(a2 + 4));
          v14 = &v27;
          v15 = kCFNumberFloat64Type;
        }

        return CFNumberCreate(a1, v15, v14);
      }

      if (v10 != 11)
      {
        if (v10 == 19)
        {
          return CFDateCreate(a1, *(*a2 + *(a2 + 4)));
        }

        if (v10 != 35)
        {
          return v8;
        }

        v27 = *(*a2 + *(a2 + 4));
        v14 = &v27;
        v15 = kCFNumberSInt64Type;
        return CFNumberCreate(a1, v15, v14);
      }

      return CFUUIDCreateFromUUIDBytes(a1, *(*a2 + *(a2 + 4)));
    }
  }

  v8 = *a4;
  if (a3 < 1024 || v8)
  {
    if (v8)
    {
      return 0;
    }

    v13 = *(a2 + 20);
    if (v13 <= 0xF0)
    {
      if (*(a2 + 20) <= 0x22u)
      {
        if (v13 == 11)
        {
          if (*(a2 + 4) + 16 > *(a2 + 1))
          {
            __MDPlistContainerCopyObjectErrorCode_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
          }

          return 0;
        }

        if (v13 != 19)
        {
          return v8;
        }
      }

      else
      {
        if (v13 == 35)
        {
          if (*(a2 + 4) + 8 > *(a2 + 1))
          {
            __MDPlistContainerCopyObjectErrorCode_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
          }

          return 0;
        }

        if (v13 != 51)
        {
          if (v13 != 240)
          {
            return v8;
          }

          if (*(a2 + 4) + 4 > *(a2 + 1))
          {
            v8 = 0;
            v9 = 1348;
            goto LABEL_5;
          }

          v28 = *a2;
          v29 = *(a2 + 2);
          copyCFArray(a1, &v28, a3, a4, a5, a6, a7, a8);
          return 0;
        }
      }

      if (*(a2 + 4) + 8 > *(a2 + 1))
      {
        __MDPlistContainerCopyObjectErrorCode_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
      }

      return 0;
    }

    if (*(a2 + 20) > 0xF5u)
    {
      if (v13 == 246)
      {
        v25 = *(a2 + 4);
        v26 = *(a2 + 1);
        if (v25 + 4 > v26)
        {
          v8 = 0;
          v9 = 1370;
          goto LABEL_5;
        }

        if (v25 + 4 + *(*a2 + v25) > v26)
        {
          v8 = 0;
          v9 = 1374;
          goto LABEL_5;
        }
      }

      else
      {
        if (v13 != 247)
        {
          return v8;
        }

        if (*(a2 + 4) + 8 > *(a2 + 1))
        {
          v8 = 0;
          v9 = 1379;
          goto LABEL_5;
        }
      }
    }

    else if (v13 - 244 >= 2)
    {
      if (v13 != 241)
      {
        return v8;
      }

      if (*(a2 + 4) + 4 > *(a2 + 1))
      {
        v8 = 0;
        v9 = 1354;
        goto LABEL_5;
      }

      v28 = *a2;
      v29 = *(a2 + 2);
      copyCFDictionary(a1, &v28, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      v16 = *(a2 + 4);
      v17 = *(a2 + 1);
      if (v16 + 4 > v17)
      {
        v8 = 0;
        v9 = 1361;
        goto LABEL_5;
      }

      if (v16 + 4 + *(*a2 + v16) > v17)
      {
        v8 = 0;
        v9 = 1365;
        goto LABEL_5;
      }
    }

    return 0;
  }

  v9 = 1339;
LABEL_5:
  *a4 = v9;
  return v8;
}

unint64_t _MDPlistDictionaryIterate(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(a1 + 2);
  return _MDPlistDictionaryIterateWithError(&v9, 0, a2, a4, a5, a6, a7, a8);
}

uint64_t _MDPlistContainerGetPlistObjectAtKeyArray(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  MDPlistGetRootPlistObjectFromBuffer((a1 + 32), 0, &v18, a3, a5, a6, a7, a8);
  while (BYTE4(v19) == 241)
  {
    v14 = *a2;
    if (!*a2)
    {
      goto LABEL_8;
    }

    v16 = v18;
    v17 = v19;
    if (!_MDPlistDictionaryGetPlistObjectForKey(&v16, v14, -1, &v18, v10, v11, v12, v13))
    {
      break;
    }

    ++a2;
  }

  if (*a2)
  {
    return 0;
  }

LABEL_8:
  if (a3)
  {
    *a3 = v18;
    *(a3 + 16) = v19;
  }

  return 1;
}

uint64_t _MDPlistDictionaryGetPlistObjectForKey(uint64_t PlistObjectForKey_cold_1, char *__s, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v11 = PlistObjectForKey_cold_1;
  v42 = *MEMORY[0x1E69E9840];
  v12 = *PlistObjectForKey_cold_1;
  v13 = *(PlistObjectForKey_cold_1 + 16);
  v14 = *PlistObjectForKey_cold_1 + v13;
  v15 = *(v14 + 6);
  v16 = *(v14 + 10);
  if (a3 == -1)
  {
    PlistObjectForKey_cold_1 = strlen(__s);
    v9 = PlistObjectForKey_cold_1;
  }

  if (v16 < 2)
  {
    v17 = 0;
  }

  else
  {
    PlistObjectForKey_cold_1 = MDHash(__s, v9, 0);
    v17 = PlistObjectForKey_cold_1 % *(v14 + 10);
  }

  v18 = (v14 + v15 + 2 * v17);
  v19 = *v18;
  v20 = v18[1];
  if (v19 > v20 || v20 > *(v14 + 4))
  {
    _MDPlistDictionaryGetPlistObjectForKey_cold_3(PlistObjectForKey_cold_1, __s, a3, a4, a5, a6, a7, a8);
  }

  if (v19 >= v20)
  {
    return 0;
  }

  v37 = a4;
  v21 = *(v12 + 6);
  v22 = *(v12 + 10);
  if (v22 + 2 > v21)
  {
LABEL_21:
    _MDPlistDictionaryGetPlistObjectForKey_cold_1(PlistObjectForKey_cold_1, __s, a3, a4, a5, a6, a7, a8);
  }

  v23 = 2 * v16;
  v24 = (v21 - v22);
  v25 = v24 - 2;
  v36 = *v11;
  v26 = *v11 + v22;
  v27 = v24 - 2;
  v28 = 9 * v19 + v23 + v15 + v13 + v12 + 6;
  v29 = v20 - v19;
  do
  {
    v30 = *(v28 - 4);
    if (v25 <= v30)
    {
      goto LABEL_21;
    }

    v31 = *(v26 + v30);
    if (v27 <= (v30 + v31))
    {
      _MDPlistDictionaryGetPlistObjectForKey_cold_2(PlistObjectForKey_cold_1, __s, a3, a4, a5, a6, a7, a8);
    }

    if (v9 == v31)
    {
      PlistObjectForKey_cold_1 = memcmp(__s, (v26 + v30 + 2), v9);
      if (!PlistObjectForKey_cold_1)
      {
        goto LABEL_17;
      }
    }

    v28 += 9;
    --v29;
  }

  while (v29);
  v28 = 0;
LABEL_17:
  if (!v28)
  {
    return 0;
  }

  v32 = v11[1];
  v33 = *(v28 + 4);
  v40 = *v28;
  v34 = v40;
  v41 = v33;
  *v37 = v36;
  *(v37 + 1) = v32;
  *(v37 + 4) = v34;
  *(v37 + 20) = v33;
  v38 = *v37;
  v39 = *(v37 + 2);
  validatePlistObject(v14, &v38, 0, 0, a5, a6, a7, a8);
  return 1;
}

void *_icu_locale_create(char *__s, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!__s || (v2 = __s, !*__s))
  {
    v2 = "en";
  }

  memset(v11, 0, sizeof(v11));
  if (a2)
  {
    v3 = strlen(v2);
    v4 = v3;
    if (v3 < 0x12 || v3 + 18 <= 0xFF && !strchr(v2, 64))
    {
      __memcpy_chk();
      strcpy(v11 + v4, "@collation=search");
      v2 = v11;
    }
  }

  os_unfair_lock_lock(&s_locale_lock);
  v5 = s_locale_dict;
  if (!s_locale_dict)
  {
    v10 = *byte_1F29A6180;
    v5 = CFDictionaryCreateMutable(0, 0, &v10, 0);
    s_locale_dict = v5;
  }

  Value = CFDictionaryGetValue(v5, v2);
  if (!Value)
  {
    Value = malloc_type_calloc(1uLL, 0x58uLL, 0x10300408C324C43uLL);
    *(Value + 1) = strdup(v2);
    atomic_store(1u, Value + 1);
    *Value = 268435457;
    v7 = s_locale_dict;
    v8 = strdup(v2);
    CFDictionarySetValue(v7, v8, Value);
  }

  icu_ctx_retain(Value);
  os_unfair_lock_unlock(&s_locale_lock);
  return Value;
}

void *icu_locale_create(__CFString *Length, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  if (Length)
  {
    v3 = Length;
    Length = CFStringGetLength(Length);
    if (Length)
    {
      if (CFStringGetCString(v3, v5, 256, 0x8000100u))
      {
        Length = v5;
      }

      else
      {
        Length = 0;
      }
    }
  }

  return _icu_locale_create(Length, a2);
}

uint64_t _locale_str_hash(const char *a1)
{
  v2 = -1759636613;
  v3 = strlen(a1);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 3;
  }

  v5 = &a1[v4 & 0xFFFFFFFC];
  if ((v3 + 3) >= 7)
  {
    v8 = -(v4 >> 2);
    v9 = -1789642873;
    v10 = 718793509;
    do
    {
      v9 = 5 * v9 + 2071795100;
      v10 = 5 * v10 + 1808688022;
      HIDWORD(v11) = v9 * *&v5[4 * v8];
      LODWORD(v11) = HIDWORD(v11);
      v12 = (v11 >> 21) * v10;
      HIDWORD(v11) = v2;
      LODWORD(v11) = v2;
      v2 = v12 ^ (5 * (v11 >> 19) + 1390208809);
    }

    while (!__CFADD__(v8++, 1));
    v7 = 5 * v9 + 2071795100;
    v6 = 5 * v10 + 1808688022;
  }

  else
  {
    v6 = 1107688271;
    v7 = 1713515327;
  }

  v14 = 0;
  if ((v3 & 3u) > 1)
  {
    if ((v3 & 3) != 2)
    {
      v14 = *(v5 + 2) << 16;
    }

    v14 |= *(v5 + 1) << 8;
  }

  else if ((v3 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v15) = (v14 ^ *v5) * v7;
  LODWORD(v15) = HIDWORD(v15);
  v16 = (v15 >> 21) * v6;
  HIDWORD(v15) = v2;
  LODWORD(v15) = v2;
  v2 = v16 ^ (5 * (v15 >> 19) + 1390208809);
LABEL_17:
  v17 = -1028477387 * ((-2048144789 * (v2 ^ v3)) ^ ((-2048144789 * (v2 ^ v3)) >> 13));
  return v17 ^ HIWORD(v17);
}

atomic_uint *icu_ctx_retain(atomic_uint *result)
{
  if (result)
  {
    if ((*result - 268435462) <= 0xFFFFFFFA)
    {
      icu_ctx_retain_cold_1(*result);
    }

    atomic_fetch_add(result + 1, 1u);
  }

  return result;
}

void icu_search_context_create_with_wildcard_limit(const char *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  icu_search_context_create(a1, a2, a3, a4);
  if (v6)
  {
    *(v6 + 40) = a5;
  }
}

void icu_search_context_create(const char *a1, char *a2, char a3, int a4)
{
  v8 = a4 - 1;
  v9 = (a4 - 1) < 0x63;
  if ((a4 - 1) >= 0x63)
  {
    v10 = 96;
  }

  else
  {
    v10 = 108;
  }

  v11 = malloc_type_calloc(1uLL, v10, 0x1070040181A2D16uLL);
  atomic_store(1u, v11 + 1);
  *v11 = 268435458;
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = "";
  }

  v13 = strdup(v12);
  *(v11 + 2) = v13;
  if (!*v13)
  {
    _icu_search_context_add_type(v11, 128);
    return;
  }

  v11[67] = (a3 & 8) != 0;
  v11[66] = (a3 & 4 | v11[66]) != 0;
  if ((a3 & 3) != 0 || v8 <= 0x62)
  {
    v11[64] = a3 & 1;
    v11[65] = (a3 & 2) != 0;
    v11[69] = v9;
    *(v11 + 18) = a4;
    v14 = _icu_locale_create(a2, 1);
    *(v11 + 4) = v14;
    collation = icu_locale_get_collation(v14, 1, 1);
    *(v11 + 6) = collation;
    if (!collation)
    {
      free(v11);
      return;
    }

    *(v11 + 7) = ucol_getLocaleByType();
  }

  v16 = 0;
  for (i = a1; ; ++i)
  {
    v18 = *i;
    if (v18 == 42)
    {
      _icu_search_context_add_string(v11);
      _icu_search_context_add_type(v11, 1);
      v16 = 0;
      continue;
    }

    if (v18 != 92)
    {
      break;
    }

    v19 = i[1] != 0;
    if (i[1])
    {
      ++i;
    }

    v16 |= v19;
LABEL_21:
    ;
  }

  if (*i)
  {
    goto LABEL_21;
  }

  _icu_search_context_add_string(v11);
  v20 = *(v11 + 2);
  if (v11[66] == 1)
  {
    if (v20)
    {
      if (*(*(v11 + 3) + 32 * v20 - 32) == 32)
      {
        *(v11 + 2) = --v20;
        goto LABEL_26;
      }

LABEL_27:
      v21 = *(v11 + 3);
      v22 = &v21[8 * v20];
      if (*(v22 - 8) == 1)
      {
        *(v22 - 8) = 2;
      }

      if (*v21 == 64)
      {
        if (v20 <= 1)
        {
          icu_search_context_destroy(v11);
          return;
        }

        v21[6] = v21[14];
      }

      if (v20 >= 3 && (v11[65] & 1) != 0)
      {
        v23 = -4;
        v24 = 2;
        v25 = 152;
        do
        {
          v26 = *(v11 + 3);
          v27 = v26 + v25;
          if ((*(v26 + v25 - 128) & 0xE3E) == 0 || *(v27 - 120) != 4 || (*(v26 + v25 - 62) & 0x30F8) == 0)
          {
            goto LABEL_69;
          }

          v28 = *(v27 - 88);
          if (v28 == 16)
          {
            v32 = **(*(v26 + v25 - 80) + 16);
            v33 = v32[1];
            if (v33 == 45)
            {
              goto LABEL_60;
            }

            if (v33 != 239)
            {
              if (v33 != 226 || v32[2] != 128)
              {
                goto LABEL_69;
              }

              v31 = v32[3];
              goto LABEL_53;
            }

            if (v32[2] == 188)
            {
              v34 = v32[3];
LABEL_59:
              if (v34 == 189)
              {
                goto LABEL_60;
              }
            }
          }

          else
          {
            if (v28 != 8)
            {
              goto LABEL_60;
            }

            v29 = *(v26 + v25 - 72);
            v30 = *v29;
            if (v30 == 45)
            {
              goto LABEL_60;
            }

            if (v30 != 239)
            {
              if (v30 != 226 || v29[1] != 128)
              {
                goto LABEL_69;
              }

              v31 = v29[2];
LABEL_53:
              if ((v31 & 0xFE) != 0x90)
              {
                goto LABEL_69;
              }

LABEL_60:
              if (v20 <= v24 + 2 || *(v26 + v25 - 56) != 4 || (*(v26 + v25) & 0xE3E) == 0)
              {
                goto LABEL_69;
              }

              if (v28 == 16)
              {
                term_expansions_release(*(v26 + v25 - 80));
                v26 = *(v11 + 3);
                v35 = (v26 + 32 * v24 + 8);
LABEL_67:
                *v35 = 0;
              }

              else if (v28 == 8)
              {
                free(*(v26 + v25 - 72));
                v26 = *(v11 + 3);
                v35 = (v26 + v25 - 72);
                goto LABEL_67;
              }

              memmove((v26 + v25 - 88), (v26 + v25 - 24), 32 * (v23 + *(v11 + 2)));
              v20 = *(v11 + 2) - 2;
              *(v11 + 2) = v20;
              goto LABEL_69;
            }

            if (v29[1] == 188)
            {
              v34 = v29[2];
              goto LABEL_59;
            }
          }

LABEL_69:
          ++v24;
          --v23;
          v25 += 32;
        }

        while (v24 < v20);
      }

      if ((a3 & 0x10) != 0)
      {
        _icu_search_context_add_type(v11, 2);
      }
    }
  }

  else
  {
LABEL_26:
    if (v20)
    {
      goto LABEL_27;
    }
  }

  if (v8 <= 0x62)
  {
    v36 = i - a1;
    if (i - a1 >= 1 && a1[v36 - 1] == 42)
    {
      if (v36 == 1 || a1[v36 - 2] != 92)
      {
        v11[68] = 1;
        --v36;
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if ((a3 & 0x10) != 0)
    {
      v11[68] = 1;
    }

LABEL_80:
    if (v36 <= 1)
    {
      v37 = 0;
    }

    else
    {
LABEL_81:
      v37 = *a1 == 42;
      v36 -= v37;
    }

    *(v11 + 22) = 0;
    *(v11 + 10) = UTF16FromUTF8((*(v11 + 2) + v37), v36, 0, v11 + 22);
    v38 = ucol_openElements();
    v39 = -1;
    do
    {
      ++v39;
    }

    while (ucol_next() != -1);
    MEMORY[0x1B2748EB0](v38);
    *(v11 + 23) = v39;
    if (v39 <= 2)
    {
      v11[69] = 0;
      free(*(v11 + 10));
      *(v11 + 10) = 0;
    }

    ucol_closeElements();
    *(v11 + 12) = -1;
    *(v11 + 26) = -1;
  }
}

void _icu_search_context_add_string(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v63 = *MEMORY[0x1E69E9840];
  if (!v3)
  {
    return;
  }

  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  if (v3 < 1)
  {
    if (v4)
    {
      v16 = malloc_type_malloc(v3 + 1, 0x61DD30F3uLL);
      v19 = v16;
LABEL_34:
      *v19 = 0;
      v6 = v19 - v16;
      v7 = v16;
      goto LABEL_36;
    }

LABEL_35:
    v16 = 0;
LABEL_36:
    v22 = *(v8 + 32);
    if (v22)
    {
      v53 = v16;
      rules = icu_locale_get_rules(v22);
      v59 = 0;
      bzero(v62, 0x1000uLL);
      bzero(v61, 0x1000uLL);
      v52 = icu_build_pattern_key(*(v8 + 48), v7, v6, 0, 0, &v59);
      v24 = icu_term_key_starts(*(v8 + 48), rules, v7, v6, v52, v59, v62, v61, 1024);
      v55 = icu_locale_get_rules(*(v8 + 32));
      collation = icu_locale_get_collation(*(v8 + 32), *(v8 + 65), *(v8 + 64));
      v54 = v24;
      if (v24 >= 1)
      {
        v26 = collation;
        v27 = 0;
        v51 = v7 + 1;
        do
        {
          memset(v60, 0, sizeof(v60));
          v58 = 0;
          v28 = v27 + 1;
          v29 = icu_build_pattern_key(v26, &v7[v62[v27]], v62[v27 + 1] - v62[v27], v60, 32, &v58);
          v56[0] = 0;
          v56[1] = 0;
          v57 = 0;
          v30 = v58;
          icu_rules_find_expansions(v55, v29, v58, 0, v56);
          if (v57)
          {
            v31 = *v57;
            if (*(*v57 + 4) == 1)
            {
              _icu_search_context_add_part(v8, v26, (**(v31 + 16) + 1), ***(v31 + 16), 0, 0);
            }

            else
            {
              _icu_search_context_add_list(v8, v31, &v7[v62[v27]], v62[v28] - v62[v27]);
            }

            if (*(v8 + 65) != 1)
            {
              goto LABEL_72;
            }

            if (v28 == v54)
            {
              goto LABEL_59;
            }

            v40 = v62[v28];
            v33 = v7[v40];
            if ((v33 & 0x80000000) == 0)
            {
              goto LABEL_68;
            }

            v41 = v7[v40] >> 4;
            v42 = utf8_byte_length_utf8_len_table_2[v41];
            v33 = (v33 & utf8_to_code_point_utf8_first_char_mask_1[v42]);
            if ((~v41 & 0xC) != 0)
            {
              goto LABEL_68;
            }

            if (v42 <= 2)
            {
              v43 = 2;
            }

            else
            {
              v43 = utf8_byte_length_utf8_len_table_2[v41];
            }

            v44 = v43 - 1;
            v45 = &v51[v40];
            do
            {
              v46 = *v45++;
              v33 = v46 & 0x3F | (v33 << 6);
              --v44;
            }

            while (v44);
          }

          else
          {
            if (!*(v8 + 8) && (*(v8 + 67) & 1) == 0 && *(v8 + 66) == 1)
            {
              _icu_search_context_add_type(v8, 64);
            }

            _icu_search_context_add_part(v8, v26, &v7[v62[v27]], (v62[v28] - v62[v27]), v29, v30);
            if (*(v8 + 65) != 1)
            {
              goto LABEL_72;
            }

            if (v28 == v54)
            {
              goto LABEL_59;
            }

            v32 = v62[v28];
            v33 = v7[v32];
            if ((v33 & 0x80000000) == 0 || (v34 = v7[v32] >> 4, v35 = utf8_byte_length_utf8_len_table_2[v34], v33 = (v33 & utf8_to_code_point_utf8_first_char_mask_1[v35]), (~v34 & 0xC) != 0))
            {
LABEL_68:
              v47 = (v33 - 12441) >= 4 && (v33 - 65438) >= 2;
              if (!v47 || unicode_combinable(v33))
              {
                goto LABEL_72;
              }

              goto LABEL_59;
            }

            if (v35 <= 2)
            {
              v36 = 2;
            }

            else
            {
              v36 = utf8_byte_length_utf8_len_table_2[v34];
            }

            v37 = v36 - 1;
            v38 = &v51[v32];
            do
            {
              v39 = *v38++;
              v33 = v39 & 0x3F | (v33 << 6);
              --v37;
            }

            while (v37);
          }

          if (v33 < 0x10000)
          {
            goto LABEL_68;
          }

          v48 = v33 - 917760;
          v49 = v33 - 127995;
          if (v48 < 0xF0 || v49 < 5)
          {
            goto LABEL_72;
          }

LABEL_59:
          _icu_search_context_add_type(v8, 4);
LABEL_72:
          if (v29 != v60)
          {
            free(v29);
          }

          ++v27;
        }

        while (v28 != v54);
      }

      free(v52);
      v16 = v53;
      if (v54)
      {
        if (!v53)
        {
          return;
        }

        goto LABEL_85;
      }
    }

    else if (v6 && !*(v8 + 8) && (*(v8 + 67) & 1) == 0 && *(v8 + 66) == 1)
    {
      _icu_search_context_add_type(v8, 64);
    }

    _icu_search_context_add_part(v8, 0, v7, v6, 0, 0);
    if (!v16)
    {
      return;
    }

LABEL_85:
    free(v16);
    return;
  }

  v9 = v3 - 1;
  v10 = 1;
  while (1)
  {
    v11 = v7[v9];
    if (v11 > -65)
    {
      break;
    }

    v12 = utf8_back1SafeBody(v7, 0, v9);
    v13 = v7[v12];
    if ((v13 & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    if (v10 <= 3)
    {
      --v9;
      if (v10++ < v6)
      {
        continue;
      }
    }

    if (v5)
    {
      v16 = malloc_type_malloc(v6 + 1, 0x61DD30F3uLL);
      v17 = 0;
      v18 = 0;
      v19 = v16;
      do
      {
        if (v7[v17] == 92)
        {
          ++v18;
        }

        *v19++ = v7[v18];
        v17 = ++v18;
      }

      while (v18 < v6);
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v13 = v7[v9];
  v12 = v9;
  if ((v11 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  v14 = v12 + 1;
  if (v14 == v6)
  {
    goto LABEL_29;
  }

  if (v13 < 0xE0)
  {
    if (v13 < 0xC2)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v13 <= 0xEF)
  {
    if (((a00000000000000[v13 & 0xF] >> (v7[v14] >> 5)) & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (v13 <= 0xF4 && ((byte_1B23E4235[v7[v14] >> 4] >> (v13 + 16)) & 1) != 0)
  {
    v14 = v12 + 2;
    if (v14 != v6 && v7[v14] <= -65)
    {
LABEL_19:
      v14 = v14 + 1;
      if (v14 == v6)
      {
        goto LABEL_29;
      }

LABEL_20:
      if (v7[v14] >= -64)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

LABEL_29:
  v20 = *__error();
  v21 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    _icu_search_context_add_string_cold_1(v21);
  }

  *__error() = v20;
}

void _icu_search_context_add_part(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, void *a5, int a6)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = a4;
    if (a4 > 253)
    {
      v13 = 0;
    }

    else
    {
      if (*(a1 + 65) == 1)
      {
        collation = a2;
        if (a2)
        {
          v12 = 0;
        }

        else
        {
          *dest = 0;
          LocaleByType = ucol_getLocaleByType();
          v16 = strchr(LocaleByType, 64);
          v12 = 0;
          if (v16)
          {
            v17 = v16 - LocaleByType;
          }

          else
          {
            v17 = 0;
          }

          if ((v17 - 1) <= 0x1E)
          {
            __s1 = 0u;
            v58 = 0u;
            __strncpy_chk();
            v18 = _icu_locale_create(&__s1, 0);
            v12 = v18;
            if (v18)
            {
              collation = icu_locale_get_collation(v18, *(a1 + 65), *(a1 + 64));
            }

            else
            {
              collation = 0;
            }
          }
        }

        if (v6 < 1)
        {
          v13 = 0;
          v14 = 0;
        }

        else
        {
          __s2 = a5;
          v13 = 0;
          v19 = 0;
          v20 = a3;
          do
          {
            v21 = *v20;
            v22 = *v20 >> 4;
            if (v21 < 0)
            {
              v23 = utf8_byte_length_utf8_len_table_2[v22];
              v24 = (v21 & utf8_to_code_point_utf8_first_char_mask_1[v23]);
              if ((~v22 & 0xC) != 0)
              {
                v21 = (v21 & utf8_to_code_point_utf8_first_char_mask_1[v23]);
              }

              else
              {
                if (v23 <= 2)
                {
                  v25 = 2;
                }

                else
                {
                  v25 = utf8_byte_length_utf8_len_table_2[v22];
                }

                v26 = v25 - 1;
                v27 = v20 + 1;
                do
                {
                  v28 = *v27++;
                  v21 = v28 & 0x3F | (v24 << 6);
                  v24 = v21;
                  --v26;
                }

                while (v26);
              }
            }

            v29 = utf8_byte_length_noerror_utf8_len_table_2[v22];
            if (_codepoint_is_combining(v21) && (bzero(&__s1, 0x400uLL), *dest = 0, icu_build_pattern_key(collation, v20, v29, &__s1, 1024, dest), !*dest))
            {
              if (!v13)
              {
                v13 = malloc_type_malloc((v6 + 1), 0xBE730A2BuLL);
                memcpy(v13, a3, v20 - a3);
                v19 = &v13[v20 - a3];
              }
            }

            else if (v19)
            {
              memcpy(v19, v20, v29);
              v19 += v29;
            }

            v20 += v29;
          }

          while (v20 < &a3[v6]);
          v14 = 0;
          if (v13)
          {
            if (v19)
            {
              v14 = 0;
              if (a6)
              {
                if (v19 != v13)
                {
                  bzero(&__s1, 0x400uLL);
                  *dest = 0;
                  icu_build_pattern_key(collation, v13, v19 - v13, &__s1, 1024, dest);
                  if (*dest == a6 && !memcmp(&__s1, __s2, a6))
                  {
                    *v19 = 0;
                    v47 = term_expansions_insert(0, 0, a3, v6);
                    v14 = term_expansions_insert(v47, 0, v13, (v19 - v13));
                    v6 = (v19 - v13);
                    a3 = v13;
                  }

                  else
                  {
                    v14 = 0;
                  }
                }
              }
            }
          }
        }

        icu_ctx_release(v12);
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      if (*(a1 + 64) == 1)
      {
        v59 = 0u;
        v60 = 0u;
        __s1 = 0u;
        v58 = 0u;
        *srcLength = 0;
        v55 = 0u;
        v56 = 0u;
        *dest = 0u;
        v54 = 0u;
        *__s = 0u;
        v52 = 0u;
        pErrorCode = U_ZERO_ERROR;
        strFromUTF8(&__s1, 0x20u, &srcLength[1], a3, v6, &pErrorCode);
        v30 = u_strToLower(dest, 32, &__s1, srcLength[1], *(a1 + 56), &pErrorCode);
        if (pErrorCode <= U_ZERO_ERROR)
        {
          v31 = v30;
          if (v30 != srcLength[1] || memcmp(&__s1, dest, 2 * v30))
          {
            strToUTF8(__s, 32, srcLength, dest, v31, &pErrorCode);
            v32 = term_expansions_insert(v14, 0, __s, srcLength[0]);
            v14 = term_expansions_insert(v32, 0, a3, v6);
            v31 = srcLength[1];
          }
        }

        else
        {
          v31 = srcLength[1];
        }

        v33 = u_strToUpper(dest, 32, &__s1, v31, *(a1 + 56), &pErrorCode);
        if (pErrorCode <= U_ZERO_ERROR)
        {
          v34 = v33;
          if (v33 != srcLength[1] || memcmp(&__s1, dest, 2 * v33))
          {
            strToUTF8(__s, 32, srcLength, dest, v34, &pErrorCode);
            v35 = term_expansions_insert(v14, 0, __s, srcLength[0]);
            v14 = term_expansions_insert(v35, 0, a3, v6);
          }
        }
      }

      if (v14)
      {
        _icu_search_context_add_list(a1, v14, 0, 0);
        term_expansions_release(v14);
LABEL_60:
        if (v13)
        {
          free(v13);
        }

        return;
      }
    }

    v36 = *(a1 + 8);
    if (v36 && (v37 = v36 - 1, v38 = *(a1 + 24) + 32 * (v36 - 1), *v38 == 8))
    {
      v39 = *(v38 + 16);
      v40 = strlen(v39);
      v41 = v6 + v40;
      v42 = malloc_type_realloc(v39, v41 + 1, 0x24C78A59uLL);
      *(*(a1 + 24) + 32 * v37 + 16) = v42;
      memcpy(&v42[v40], a3, v6);
      *(*(*(a1 + 24) + 32 * v37 + 16) + v41) = 0;
    }

    else
    {
      _icu_search_context_grow(a1);
      *(*(a1 + 24) + 32 * *(a1 + 8) + 8) = 0;
      v43 = malloc_type_malloc(v6 + 1, 0x10469CFDuLL);
      *(*(a1 + 24) + 32 * *(a1 + 8) + 16) = v43;
      memcpy(v43, a3, v6);
      *(*(*(a1 + 24) + 32 * *(a1 + 8) + 16) + v6) = 0;
      char_category_mask = icu_get_char_category_mask(a3);
      v45 = *(a1 + 8);
      v46 = (*(a1 + 24) + 32 * v45);
      v46[6] = char_category_mask;
      *(a1 + 8) = v45 + 1;
      *v46 = 8;
    }

    goto LABEL_60;
  }
}

void icu_ctx_release(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if ((v2 - 268435462) <= 0xFFFFFFFA)
    {
      icu_ctx_release_cold_2(v2);
    }

    if (atomic_fetch_add(a1 + 1, 0xFFFFFFFF) == 1)
    {
      v3 = *a1;
      if (*a1 <= 268435458)
      {
        if (v3 == 268435457)
        {
          *a1 = 0;
          if (atomic_load(a1 + 2))
          {
            atomic_load(a1 + 2);
            ucol_close();
          }

          if (atomic_load(a1 + 3))
          {
            atomic_load(a1 + 3);
            ucol_close();
          }

          if (atomic_load(a1 + 4))
          {
            atomic_load(a1 + 4);
            ucol_close();
          }

          if (atomic_load(a1 + 5))
          {
            atomic_load(a1 + 5);
            ucol_close();
          }

          icu_rules_free(*(a1 + 6));
          icu_rules_free(*(a1 + 7));
          icu_rules_free(*(a1 + 8));
          icu_rules_free(*(a1 + 9));
          free(*(a1 + 1));
          goto LABEL_31;
        }

        if (v3 != 268435458)
        {
          goto LABEL_35;
        }

        icu_search_context_destroy(a1);
      }

      else
      {
        if (v3 == 268435459)
        {
          *a1 = 0;
          uregex_close(*(a1 + 1));
LABEL_31:

          free(a1);
          return;
        }

        if (v3 != 268435460)
        {
          if (v3 == 268435461)
          {
            if (*(a1 + 1))
            {
              v4 = 0;
              do
              {
                icu_ctx_release(*&a1[2 * v4++ + 8]);
              }

              while (v4 < *(a1 + 1));
            }

            goto LABEL_31;
          }

LABEL_35:
          icu_ctx_release_cold_1(v3);
        }

        icu_range_search_destroy(a1);
      }
    }
  }
}

void *_icu_search_context_grow(void *result)
{
  v1 = *(result + 3);
  if (*(result + 2) >= v1)
  {
    v2 = result;
    if (v1)
    {
      v3 = 2 * v1;
    }

    else
    {
      v3 = 2;
    }

    *(result + 3) = v3;
    result = malloc_type_realloc(*(result + 3), 32 * v3, 0x10300409F66AF54uLL);
    v2[3] = result;
  }

  return result;
}

BOOL icu_search_match(_BOOL8 result, char *a2, char *a3, uint64_t *a4, int a5)
{
  v480 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  result = 0;
  if (!a2 || !*(v6 + 8))
  {
    return result;
  }

  if (*(v6 + 69) == 1)
  {
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v478;
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = v479;
    }

    return fuzzy_matches(v6, a2, *(v6 + 72), v8, v9);
  }

  v468 = a5;
  v465 = a3;
  v466 = a4;
  v10 = &v462;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v462 - 2 * v11;
  bzero(v12, v13);
  v474 = 0;
  v475 = 0;
  v14 = 0;
  v467 = 0;
  *v12 = 0;
  v12[1] = v5;
  v470 = v5;
  v471 = v12;
  v15 = *(v6 + 24);
  v472 = *v15;
  v473 = *(v15 + 8);
  v16 = *(v15 + 24);
  v469 = v5;
  while (1)
  {
LABEL_13:
    while (v14 <= 5)
    {
      if (v14 > 2)
      {
        if ((v14 - 4) >= 2)
        {
          if (v14 == 3)
          {
            goto LABEL_424;
          }

LABEL_860:
          __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3489, "false", "", *(v6 + 16), v475, *(v6 + 8));
          goto LABEL_856;
        }

        goto LABEL_54;
      }

      if (v14)
      {
        if (v14 == 1)
        {
          goto LABEL_96;
        }

        if (v14 != 2)
        {
          goto LABEL_860;
        }

        v24 = *v5;
        if (v24 < 0)
        {
          v25 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
          v26 = (v24 & utf8_to_code_point_utf8_first_char_mask_1[v25]);
          if ((~(*v5 >> 4) & 0xC) != 0)
          {
            v24 = (v24 & utf8_to_code_point_utf8_first_char_mask_1[v25]);
          }

          else
          {
            if (v25 <= 2)
            {
              v27 = 2;
            }

            else
            {
              v27 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
            }

            v28 = v27 - 1;
            v29 = v5 + 1;
            do
            {
              v30 = *v29++;
              v24 = v30 & 0x3F | (v26 << 6);
              v26 = v24;
              --v28;
            }

            while (v28);
          }
        }

        if (((v16 >> u_charType(v24)) & 1) == 0)
        {
          goto LABEL_423;
        }

        if (*(v6 + 65) != 1 || (v186 = v473, (*(v473 + 8) & 1) != 0))
        {
          v244 = *(v473 + 4);
          if (!v244)
          {
            goto LABEL_423;
          }

          v245 = 0;
          while (1)
          {
            v246 = *(*(v473 + 16) + 8 * v245);
            v247 = *(v246 + 1);
            if (v247 > *v5)
            {
              goto LABEL_423;
            }

            if (!*(v246 + 1))
            {
              break;
            }

            v248 = (v246 + 2);
            v249 = v5;
            while (1)
            {
              v250 = *v249;
              if (v250 < 2 || v247 != v250)
              {
                break;
              }

              ++v249;
              v252 = *v248++;
              v247 = v252;
              if (!v252)
              {
                goto LABEL_750;
              }
            }

            if (++v245 == v244)
            {
              goto LABEL_423;
            }
          }

          v249 = v5;
LABEL_750:
          v416 = v475 + 1;
          v417 = *(v6 + 8);
          v475 = v416;
          if (v416 < v417)
          {
            v418 = *(v6 + 24) + 32 * v416;
            v419 = *v418;
            v473 = *(v418 + 8);
            v16 = *(v418 + 24);
            v472 = v419;
            if (v468)
            {
              v420 = v419 == 16 || v419 == 8;
              if (v420 && (v16 & 0x1000) == 0 && *v249 == 32 && v249[1] > 1u)
              {
                ++v249;
              }
            }
          }

          v14 = 0;
          v421 = v475;
          v422 = &v471[2 * v474];
          *v422 = 0;
          *(v422 + 1) = v421;
          v422[1] = v249;
          v5 = v249;
        }

        else
        {
          if (!*(v473 + 4))
          {
            goto LABEL_423;
          }

          v187 = 0;
          v463 = v473;
          v464 = v10;
          while (1)
          {
            v188 = *(*(v186 + 16) + 8 * v187);
            v191 = *(v188 + 1);
            v190 = (v188 + 1);
            v189 = v191;
            v192 = *v5;
            if (v191 > v192)
            {
              goto LABEL_423;
            }

            if (!v189)
            {
              break;
            }

            v193 = v5;
            while (v192 >= 2)
            {
              if (v189 == v192)
              {
                ++v190;
                v194 = (v193 + 1);
                goto LABEL_405;
              }

              if (v5 != v193 && v192 < 0)
              {
                v195 = v192 >> 4;
                v196 = ~v195;
                v197 = utf8_byte_length_utf8_len_table_2[v195];
                v198 = utf8_to_code_point_utf8_first_char_mask_1[v197] & v192;
                if ((v196 & 0xC) != 0)
                {
                  goto LABEL_321;
                }

                v197 = v197 <= 2 ? 2 : v197;
                v199 = v197 - 1;
                v200 = v193 + 1;
                do
                {
                  v201 = *v200++;
                  v198 = v201 & 0x3F | (v198 << 6);
                  --v199;
                }

                while (v199);
                if (v198 < 0x10000)
                {
LABEL_321:
                  if ((v198 - 12441) >= 4 && (v198 - 65438) >= 2)
                  {
                    if (!unicode_combinable(v198))
                    {
                      goto LABEL_373;
                    }

                    v189 = *v190;
                  }
                }

                else
                {
                  v221 = v198 - 917760;
                  v222 = v198 - 127995;
                  if (v221 >= 0xF0 && v222 > 4)
                  {
                    goto LABEL_373;
                  }
                }

                if ((v189 & 0x80) == 0)
                {
                  goto LABEL_326;
                }

                v213 = v189 >> 4;
                v214 = ~v213;
                v215 = utf8_byte_length_utf8_len_table_2[v213];
                v216 = utf8_to_code_point_utf8_first_char_mask_1[v215] & v189;
                if ((v214 & 0xC) != 0)
                {
                  goto LABEL_354;
                }

                v215 = v215 <= 2 ? 2 : v215;
                v217 = v215 - 1;
                v218 = v190 + 1;
                do
                {
                  v219 = *v218++;
                  v216 = v219 & 0x3F | (v216 << 6);
                  --v217;
                }

                while (v217);
                if (v216 < 0x10000)
                {
LABEL_354:
                  v220 = (v216 - 12441) >= 4 && (v216 - 65438) >= 2;
                  if (v220 && !unicode_combinable(v216))
                  {
                    goto LABEL_326;
                  }
                }

                else
                {
                  v224 = v216 - 917760;
                  v225 = v216 - 127995;
                  if (v224 >= 0xF0 && v225 >= 5)
                  {
LABEL_326:
                    v194 = &v193[utf8_byte_length_noerror_utf8_len_table_2[*v193 >> 4]];
                    v203 = *v194;
                    if (v203 < 0)
                    {
                      while (1)
                      {
                        v204 = v203 >> 4;
                        v205 = utf8_byte_length_utf8_len_table_2[v204];
                        v206 = (utf8_to_code_point_utf8_first_char_mask_1[v205] & v203);
                        if ((~v204 & 0xC) != 0)
                        {
                          goto LABEL_334;
                        }

                        v207 = v205 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v204];
                        v208 = 1;
                        do
                        {
                          v206 = v194[v208++] & 0x3F | (v206 << 6);
                        }

                        while (v207 != v208);
                        if (v206 < 0x10000)
                        {
LABEL_334:
                          if ((v206 - 12441) >= 4 && (v206 - 65438) >= 2)
                          {
                            if (!unicode_combinable(v206))
                            {
                              goto LABEL_405;
                            }

                            v204 = *v194 >> 4;
                          }
                        }

                        else
                        {
                          v210 = v206 - 917760;
                          v211 = v206 - 127995;
                          if (v210 >= 0xF0 && v211 > 4)
                          {
                            goto LABEL_405;
                          }
                        }

                        v194 += utf8_byte_length_noerror_utf8_len_table_2[v204];
                        v203 = *v194;
                        if ((v203 & 0x80000000) == 0)
                        {
                          goto LABEL_405;
                        }
                      }
                    }

                    goto LABEL_405;
                  }
                }
              }

LABEL_373:
              v227 = *v193;
              if (v227 > 0xE1)
              {
                if (v227 == 239)
                {
                  if (v193[1] != 188 || v193[2] != 189)
                  {
                    break;
                  }
                }

                else if (v227 != 226 || v193[1] != 128 || (v193[2] & 0xFE) != 0x90)
                {
                  break;
                }

LABEL_384:
                v228 = 3646;
                goto LABEL_385;
              }

              if (v227 == 45)
              {
                goto LABEL_384;
              }

              if (v227 != 46)
              {
                break;
              }

              v228 = 62;
LABEL_385:
              v229 = *v190;
              if (v229 < 0)
              {
                v230 = utf8_byte_length_utf8_len_table_2[*v190 >> 4];
                v231 = (v229 & utf8_to_code_point_utf8_first_char_mask_1[v230]);
                if ((~(*v190 >> 4) & 0xC) != 0)
                {
                  v229 = (v229 & utf8_to_code_point_utf8_first_char_mask_1[v230]);
                }

                else
                {
                  if (v230 <= 2)
                  {
                    v232 = 2;
                  }

                  else
                  {
                    v232 = utf8_byte_length_utf8_len_table_2[*v190 >> 4];
                  }

                  v233 = v232 - 1;
                  v234 = v190 + 1;
                  do
                  {
                    v235 = *v234++;
                    v229 = v235 & 0x3F | (v231 << 6);
                    v231 = v229;
                    --v233;
                  }

                  while (v233);
                }
              }

              if (((v228 >> u_charType(v229)) & 1) == 0)
              {
                break;
              }

              v236 = utf8_byte_length_noerror_utf8_len_table_2[*v193 >> 4];
              v194 = &v193[v236];
              v237 = v193[v236];
              if (v237 < 0)
              {
                v238 = utf8_byte_length_utf8_len_table_2[v193[v236] >> 4];
                v239 = (v237 & utf8_to_code_point_utf8_first_char_mask_1[v238]);
                if ((~(v193[v236] >> 4) & 0xC) != 0)
                {
                  v237 = (v237 & utf8_to_code_point_utf8_first_char_mask_1[v238]);
                }

                else
                {
                  if (v238 <= 2)
                  {
                    v240 = 2;
                  }

                  else
                  {
                    v240 = utf8_byte_length_utf8_len_table_2[v193[v236] >> 4];
                  }

                  v241 = v240 - 1;
                  v242 = &v193[v236 + 1];
                  do
                  {
                    v243 = *v242++;
                    v237 = v243 & 0x3F | (v239 << 6);
                    v239 = v237;
                    --v241;
                  }

                  while (v241);
                }
              }

              if (((v228 >> u_charType(v237)) & 1) == 0)
              {
                break;
              }

LABEL_405:
              v189 = *v190;
              if (!*v190)
              {
                v193 = v194;
                v10 = v464;
                goto LABEL_576;
              }

              v192 = *v194;
              v193 = v194;
            }

            v10 = v464;
            if (!*v190)
            {
              goto LABEL_576;
            }

            ++v187;
            v186 = v463;
            if (v187 >= *(v463 + 4))
            {
LABEL_423:
              if (!*(&v473 + 1))
              {
LABEL_470:
                if (!v474)
                {
                  goto LABEL_784;
                }

                v278 = v474 - 1;
                v72 = v471;
                goto LABEL_472;
              }

LABEL_424:
              v464 = v10;
              v253 = *(&v473 + 1);
              v254 = **(&v473 + 1);
              if (**(&v473 + 1))
              {
                v255 = v5;
                while (1)
                {
                  v256 = *v255;
                  if (v256 < 2)
                  {
                    goto LABEL_476;
                  }

                  v257 = *v255;
                  if ((v256 & 0x80) != 0)
                  {
                    v258 = utf8_byte_length_utf8_len_table_2[v256 >> 4];
                    v259 = utf8_to_code_point_utf8_first_char_mask_1[v258] & v256;
                    if ((~(v256 >> 4) & 0xC) != 0)
                    {
                      v257 = utf8_to_code_point_utf8_first_char_mask_1[v258] & v256;
                    }

                    else
                    {
                      if (v258 <= 2)
                      {
                        v260 = 2;
                      }

                      else
                      {
                        v260 = utf8_byte_length_utf8_len_table_2[v256 >> 4];
                      }

                      v261 = v260 - 1;
                      v262 = (v255 + 1);
                      do
                      {
                        v263 = *v262++;
                        v257 = v263 & 0x3F | (v259 << 6);
                        v259 = v257;
                        --v261;
                      }

                      while (v261);
                    }
                  }

                  v264 = v254;
                  if ((v254 & 0x80) != 0)
                  {
                    v265 = v254 >> 4;
                    v266 = ~v265;
                    v267 = utf8_byte_length_utf8_len_table_2[v265];
                    v268 = utf8_to_code_point_utf8_first_char_mask_1[v267] & v254;
                    if ((v266 & 0xC) != 0)
                    {
                      v264 = utf8_to_code_point_utf8_first_char_mask_1[v267] & v254;
                    }

                    else
                    {
                      if (v267 <= 2)
                      {
                        v267 = 2;
                      }

                      else
                      {
                        v267 = v267;
                      }

                      v269 = v267 - 1;
                      v270 = (v253 + 1);
                      do
                      {
                        v271 = *v270++;
                        v264 = v271 & 0x3F | (v268 << 6);
                        v268 = v264;
                        --v269;
                      }

                      while (v269);
                    }
                  }

                  v272 = utf8_byte_length_noerror_utf8_len_table_2[v256 >> 4];
                  if (v257 == v264)
                  {
                    v253 += utf8_byte_length_noerror_utf8_len_table_2[v256 >> 4];
                    v273 = &v255[utf8_byte_length_noerror_utf8_len_table_2[v256 >> 4]];
                  }

                  else if (*(v6 + 65))
                  {
                    if (u_charType(v257) == 6)
                    {
                      bzero(v478, 0x400uLL);
                      *v479 = 0;
                      icu_build_pattern_key(*(v6 + 48), v255, v272, v478, 1024, v479);
                      v274 = *v479;
                      if (*v479)
                      {
                        v275 = 0;
                      }

                      else
                      {
                        v275 = v272;
                      }

                      v273 = &v255[v275];
                      v255 = v273;
                      goto LABEL_462;
                    }

                    if (u_charType(v264) == 6)
                    {
                      bzero(v478, 0x400uLL);
                      *v479 = 0;
                      icu_build_pattern_key(*(v6 + 48), v253, v272, v478, 1024, v479);
                      v274 = *v479;
                      if (*v479)
                      {
                        v276 = 0;
                      }

                      else
                      {
                        v276 = v272;
                      }

                      v253 += v276;
                      v273 = v255;
LABEL_462:
                      if (v274)
                      {
                        goto LABEL_474;
                      }

                      goto LABEL_463;
                    }

                    if ((v257 - 127995) > 4)
                    {
                      goto LABEL_474;
                    }

                    v273 = v255 + 4;
                    if ((v264 - 127995) >= 5)
                    {
                      v277 = 0;
                    }

                    else
                    {
                      v277 = v272;
                    }

                    v253 += v277;
                  }

                  else
                  {
                    if (!v468)
                    {
                      goto LABEL_474;
                    }

                    if (v257 != 32)
                    {
                      goto LABEL_474;
                    }

                    v273 = &v255[v272];
                    if (v255[v272] != v254)
                    {
                      goto LABEL_474;
                    }
                  }

LABEL_463:
                  v254 = *v253;
                  v255 = v273;
                  if (!*v253)
                  {
                    goto LABEL_474;
                  }
                }
              }

              v255 = v5;
LABEL_474:
              if (*v255 > 1u)
              {
LABEL_556:
                if (!*v253)
                {
                  goto LABEL_559;
                }

                if (!v474)
                {
                  goto LABEL_784;
                }

                v320 = &v471[2 * v474 - 2];
                v14 = *v320;
                v321 = *(v320 + 1);
                v5 = v320[1];
                v322 = *(v6 + 24) + 32 * v321;
                v472 = *v322;
                v473 = *(v322 + 8);
                v16 = *(v322 + 24);
                v474 = v474 - 1;
                v475 = v321;
              }

              else
              {
                v254 = *v253;
                if (*v253)
                {
LABEL_476:
                  if (*(v6 + 65) == 1)
                  {
                    v282 = v254;
                    if ((v254 & 0x80) != 0)
                    {
                      v283 = v254 >> 4;
                      v284 = ~v283;
                      v285 = utf8_byte_length_utf8_len_table_2[v283];
                      v286 = utf8_to_code_point_utf8_first_char_mask_1[v285] & v254;
                      if ((v284 & 0xC) != 0)
                      {
                        v282 = utf8_to_code_point_utf8_first_char_mask_1[v285] & v254;
                      }

                      else
                      {
                        if (v285 <= 2)
                        {
                          v285 = 2;
                        }

                        else
                        {
                          v285 = v285;
                        }

                        v287 = v285 - 1;
                        v288 = (v253 + 1);
                        do
                        {
                          v289 = *v288++;
                          v282 = v289 & 0x3F | (v286 << 6);
                          v286 = v282;
                          --v287;
                        }

                        while (v287);
                      }
                    }

                    if ((v282 - 127995) <= 4)
                    {
                      v253 += utf8_byte_length_noerror_utf8_len_table_2[v254 >> 4];
                    }
                  }

                  goto LABEL_556;
                }

LABEL_559:
                v323 = v475 + 1;
                if (v323 < *(v6 + 8))
                {
                  v324 = *(v6 + 24) + 32 * v323;
                  v472 = *v324;
                  v473 = *(v324 + 8);
                  v16 = *(v324 + 24);
                }

                v14 = 0;
                v325 = &v471[2 * v474];
                *v325 = 0;
                *(v325 + 1) = v323;
                v325[1] = v255;
                v5 = v255;
                v475 = v323;
              }

              v10 = v464;
              goto LABEL_13;
            }
          }

          v193 = v5;
LABEL_576:
          v329 = *(v6 + 8);
          v475 = v475 + 1;
          if (v475 < v329)
          {
            v330 = *(v6 + 24) + 32 * v475;
            v331 = *v330;
            v473 = *(v330 + 8);
            v16 = *(v330 + 24);
            v472 = v331;
            if (v468)
            {
              v332 = v331 == 16 || v331 == 8;
              if (v332 && (v16 & 0x1000) == 0 && *v193 == 32 && v193[1] > 1u)
              {
                ++v193;
              }
            }
          }

          v14 = 0;
          v355 = v475;
          v356 = &v471[2 * v474];
          *v356 = 0;
          *(v356 + 1) = v355;
          v356[1] = v193;
          v5 = v193;
        }
      }

      else
      {
        v70 = *(v6 + 8);
        if (v475 >= v70)
        {
          v105 = *v5;
          if (v105 < 2)
          {
            goto LABEL_785;
          }

          if (*(v6 + 66) == 1)
          {
            v106 = v469;
            if ((v105 & 0x80) != 0)
            {
              v107 = utf8_byte_length_utf8_len_table_2[v105 >> 4];
              v108 = utf8_to_code_point_utf8_first_char_mask_1[v107] & v105;
              if ((~(v105 >> 4) & 0xC) != 0)
              {
                LODWORD(v105) = utf8_to_code_point_utf8_first_char_mask_1[v107] & v105;
              }

              else
              {
                if (v107 <= 2)
                {
                  v109 = 2;
                }

                else
                {
                  v109 = utf8_byte_length_utf8_len_table_2[v105 >> 4];
                }

                v110 = v109 - 1;
                v111 = v5 + 1;
                do
                {
                  v112 = *v111++;
                  LODWORD(v105) = v112 & 0x3F | (v108 << 6);
                  v108 = v105;
                  --v110;
                }

                while (v110);
              }
            }

            v333 = u_charType(v105);
            v334 = 1 << v333;
            if (((1 << v333) & 0x7000) != 0)
            {
              goto LABEL_785;
            }

            v335 = v333;
            v336 = v5;
            if (v5 > v106)
            {
              v337 = v5;
              do
              {
                while (1)
                {
                  v336 = v337 - 1;
                  v338 = *(v337 - 1);
                  if ((v338 & 0xC0) != 0x80)
                  {
                    break;
                  }

LABEL_604:
                  --v337;
                  if (v336 <= v106)
                  {
                    goto LABEL_617;
                  }
                }

                if ((v338 & 0x80) == 0)
                {
                  break;
                }

                v339 = 0;
                v340 = utf8_byte_length_utf8_len_table_2[v338 >> 4];
                v341 = utf8_to_code_point_utf8_first_char_mask_1[v340] & v338;
                if (v340 <= 2)
                {
                  v342 = 2;
                }

                else
                {
                  v342 = utf8_byte_length_utf8_len_table_2[v338 >> 4];
                }

                v343 = v342 - 1;
                do
                {
                  v344 = v337[v339++] & 0x3F | (v341 << 6);
                  v341 = v344;
                }

                while (v343 != v339);
                if (v344 >= 0x10000)
                {
                  v347 = ((v344 - 127995) < 5 || (v344 - 917760) < 0xF0) && v336 > v106;
                }

                else
                {
                  if ((v344 - 12441) < 4 || (v344 - 65438) < 2)
                  {
                    goto LABEL_604;
                  }

                  if (unicode_combinable(v344))
                  {
                    v347 = v336 > v106;
                  }

                  else
                  {
                    v347 = 0;
                  }
                }

                v337 = v336;
              }

              while (v347);
            }

LABEL_617:
            v348 = utf8_to_code_point(v336);
            v349 = u_charType(v348);
            v350 = 1 << v349;
            if (((1 << v349) & 0x3E) != 0)
            {
              if ((v334 & 0x3E) != 0)
              {
                v351 = v471;
                v352 = v474;
                if ((v335 & 0xFFFFFFFE) == 4)
                {
                  goto LABEL_785;
                }

                if (v335 == 1)
                {
                  if (v349 != 1)
                  {
                    goto LABEL_785;
                  }

                  v353 = utf8_to_code_point(&v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]]);
                  v135 = u_charType(v353) == 2;
                  v467 |= v135;
                }

                else
                {
                  LOBYTE(v135) = 0;
                }

LABEL_744:
                if (v135)
                {
                  goto LABEL_784;
                }

                v412 = __OFSUB__(v352, 1);
                v413 = (v352 - 1);
                if (v413 < 0 != v412)
                {
                  goto LABEL_784;
                }

                v474 = v413;
                v414 = &v351[2 * v413];
                v14 = *v414;
                v293 = *(v414 + 1);
                v5 = v414[1];
LABEL_747:
                v415 = *(v6 + 24) + 32 * v293;
                v472 = *v415;
                v473 = *(v415 + 8);
                v16 = *(v415 + 24);
                goto LABEL_748;
              }

              v135 = utf8_first_char_combining(v5) ^ 1;
              v467 |= v135;
            }

            else if (v349 == v335)
            {
              LOBYTE(v135) = 0;
            }

            else
            {
              if ((v350 & 0x30F80000) != 0)
              {
                v354 = (v334 & 0x30F80000) == 0;
              }

              else
              {
                if ((v350 & 0xF000000) == 0)
                {
                  goto LABEL_785;
                }

                v354 = (v334 & 0xF000000) == 0;
              }

              v135 = v354;
              v467 |= v135;
            }
          }

          else
          {
            LOBYTE(v135) = 0;
          }

          v351 = v471;
          v352 = v474;
          goto LABEL_744;
        }

        if (v472 > 15)
        {
          if (v472 > 63)
          {
            if (v472 == 64)
            {
              if (v475 || v70 <= 1)
              {
                __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3000, "cur_state.level==0 && (cur_state.level+1<ctx->count)", "", *(v6 + 16), v475, *(v6 + 8));
              }

              else
              {
                v475 = 0;
                v328 = *(*(v6 + 24) + 32);
                v14 = 7;
                v472 = 64;
                if (v328 == 8)
                {
                  continue;
                }

                if (v328 == 16)
                {
                  v14 = 6;
                  continue;
                }

                __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3006, "false", "", *(v6 + 16), 0, v70);
              }

              goto LABEL_856;
            }

            if (v472 != 128)
            {
LABEL_861:
              __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3020, "false", "", *(v6 + 16), v475, *(v6 + 8));
              goto LABEL_856;
            }

            v293 = v475 + 1;
            if (v293 < v70)
            {
              v14 = 0;
              goto LABEL_747;
            }

            v14 = 0;
            v472 = 128;
LABEL_748:
            v475 = v293;
            continue;
          }

          v14 = 2;
          if (v472 != 16)
          {
            if (v472 != 32)
            {
              goto LABEL_861;
            }

            v14 = 11;
          }
        }

        else
        {
          if (v472 <= 3)
          {
            if (v472 == 1)
            {
              v326 = v475 + 1;
              if (v326 >= v70)
              {
                __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 2988, "cur_state.level+1<ctx->count", "", *(v6 + 16), v475, *(v6 + 8));
              }

              else
              {
                v327 = *(*(v6 + 24) + 32 * v326);
                v14 = 5;
                v472 = 1;
                switch(v327)
                {
                  case 8:
                    continue;
                  case 16:
                    v14 = 4;
                    continue;
                  case 32:
                    v14 = 12;
                    v472 = 1;
                    continue;
                }

                __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 2996, "false", "", *(v6 + 16), v475, v70);
              }

              goto LABEL_856;
            }

            if (v472 != 2)
            {
              goto LABEL_861;
            }

            if (v475 + 1 < v70)
            {
              __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 2917, "cur_state.level+1>=ctx->count", "", *(v6 + 16), v475, *(v6 + 8));
              goto LABEL_856;
            }

            if (*v5 < 2u)
            {
              goto LABEL_785;
            }

            if (*(v6 + 40))
            {
              char_combining = utf8_first_char_combining(v5);
              v72 = v471;
              if (!char_combining)
              {
                goto LABEL_817;
              }

              if (*(v6 + 65) == 1)
              {
                v5 += utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4];
                for (LODWORD(v432) = *v5; *v5 < 0; LODWORD(v432) = *v5)
                {
                  v433 = v432 >> 4;
                  v434 = utf8_byte_length_utf8_len_table_2[v433];
                  v435 = utf8_to_code_point_utf8_first_char_mask_1[v434] & v432;
                  if ((~v433 & 0xC) != 0)
                  {
                    goto LABEL_804;
                  }

                  v436 = v434 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v433];
                  v437 = v436 - 1;
                  v438 = v5 + 1;
                  do
                  {
                    v439 = *v438++;
                    v435 = v439 & 0x3F | (v435 << 6);
                    --v437;
                  }

                  while (v437);
                  if (v435 < 0x10000)
                  {
LABEL_804:
                    if ((v435 - 12441) >= 4 && (v435 - 65438) >= 2)
                    {
                      if (!unicode_combinable(v435))
                      {
                        goto LABEL_817;
                      }

                      v433 = *v5 >> 4;
                    }
                  }

                  else
                  {
                    v441 = v435 - 917760;
                    v442 = v435 - 127995;
                    if (v441 >= 0xF0 && v442 > 4)
                    {
                      goto LABEL_817;
                    }
                  }

                  v5 += utf8_byte_length_noerror_utf8_len_table_2[v433];
                }
              }

              else
              {
                if (v474)
                {
                  v73 = v474;
LABEL_771:
                  v278 = v73 - 1;
LABEL_472:
                  v279 = &v72[2 * v278];
                  v14 = *v279;
                  v280 = *(v279 + 1);
                  v5 = v279[1];
                  v281 = *(v6 + 24) + 32 * v280;
                  v472 = *v281;
                  v473 = *(v281 + 8);
                  v16 = *(v281 + 24);
                  v474 = v278;
                  v475 = v280;
                  continue;
                }

LABEL_817:
                LODWORD(v432) = *v5;
              }

              if (v432 >= 2)
              {
                v444 = *(v6 + 40);
                do
                {
                  if (!v444)
                  {
                    goto LABEL_784;
                  }

                  if ((v432 & 0x80) != 0)
                  {
                    v445 = v432 >> 4;
                    v446 = ~v445;
                    v447 = utf8_byte_length_utf8_len_table_2[v445];
                    v448 = utf8_to_code_point_utf8_first_char_mask_1[v447] & v432;
                    if ((v446 & 0xC) != 0)
                    {
                      LODWORD(v432) = utf8_to_code_point_utf8_first_char_mask_1[v447] & v432;
                    }

                    else
                    {
                      if (v447 <= 2)
                      {
                        v447 = 2;
                      }

                      else
                      {
                        v447 = v447;
                      }

                      v449 = v447 - 1;
                      v450 = v5 + 1;
                      do
                      {
                        v451 = *v450++;
                        LODWORD(v432) = v451 & 0x3F | (v448 << 6);
                        v448 = v432;
                        --v449;
                      }

                      while (v449);
                    }
                  }

                  if (((1 << u_charType(v432)) & 0x7000) != 0)
                  {
                    break;
                  }

                  v452 = *v5 >> 4;
                  while (1)
                  {
                    v5 += utf8_byte_length_noerror_utf8_len_table_2[v452];
                    LODWORD(v432) = *v5;
                    if ((*v5 & 0x80000000) == 0)
                    {
                      break;
                    }

                    v452 = *v5 >> 4;
                    v453 = utf8_byte_length_utf8_len_table_2[v452];
                    v454 = utf8_to_code_point_utf8_first_char_mask_1[v453] & v432;
                    if ((~v452 & 0xC) != 0)
                    {
                      goto LABEL_840;
                    }

                    v455 = v453 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v452];
                    v456 = 1;
                    do
                    {
                      v454 = v5[v456++] & 0x3F | (v454 << 6);
                    }

                    while (v455 != v456);
                    if (v454 < 0x10000)
                    {
LABEL_840:
                      if ((v454 - 12441) >= 4 && (v454 - 65438) >= 2)
                      {
                        v458 = unicode_combinable(v454);
                        v432 = *v5;
                        if (!v458)
                        {
                          break;
                        }

                        v452 = v432 >> 4;
                      }
                    }

                    else
                    {
                      v459 = v454 - 917760;
                      v460 = v454 - 127995;
                      if (v459 >= 0xF0 && v460 > 4)
                      {
                        break;
                      }
                    }
                  }

                  --v444;
                }

                while (v432 >= 2);
              }

              goto LABEL_785;
            }

            if (*(v6 + 65))
            {
              v14 = 10;
              v472 = 2;
              continue;
            }

            if (!utf8_first_char_combining(v5))
            {
              goto LABEL_785;
            }

            v72 = v471;
            v73 = v474;
            if (!v474)
            {
              goto LABEL_784;
            }

            goto LABEL_771;
          }

          if (v472 == 4)
          {
            v14 = 1;
          }

          else
          {
            if (v472 != 8)
            {
              goto LABEL_861;
            }

            v14 = 3;
          }
        }
      }
    }

    if (v14 > 9)
    {
      break;
    }

    if ((v14 - 6) >= 2)
    {
      if ((v14 - 8) >= 2)
      {
        goto LABEL_860;
      }

      v17 = *v5;
      if (v17 < 0)
      {
        v18 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
        v19 = (v17 & utf8_to_code_point_utf8_first_char_mask_1[v18]);
        if ((~(*v5 >> 4) & 0xC) != 0)
        {
          v17 = (v17 & utf8_to_code_point_utf8_first_char_mask_1[v18]);
        }

        else
        {
          if (v18 <= 2)
          {
            v20 = 2;
          }

          else
          {
            v20 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
          }

          v21 = v20 - 1;
          v22 = v5 + 1;
          do
          {
            v23 = *v22++;
            v17 = v23 & 0x3F | (v19 << 6);
            v19 = v17;
            --v21;
          }

          while (v21);
        }
      }

      if ((v16 >> u_charType(v17)))
      {
        if ((v16 & 0x3E) != 0)
        {
          v113 = *v5;
          if (v113 < 0)
          {
            v114 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
            v115 = (v113 & utf8_to_code_point_utf8_first_char_mask_1[v114]);
            if ((~(*v5 >> 4) & 0xC) != 0)
            {
              v113 = (v113 & utf8_to_code_point_utf8_first_char_mask_1[v114]);
            }

            else
            {
              if (v114 <= 2)
              {
                v116 = 2;
              }

              else
              {
                v116 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
              }

              v117 = v116 - 1;
              v118 = v5 + 1;
              do
              {
                v119 = *v118++;
                v113 = v119 & 0x3F | (v115 << 6);
                v115 = v113;
                --v117;
              }

              while (v117);
            }
          }

          v146 = u_charType(v113);
          v147 = 1 << v146;
          i = v5;
          if (((1 << v146) & 0x3E) == 0)
          {
            goto LABEL_635;
          }

          i = v5;
          if (v146 == 2)
          {
            goto LABEL_237;
          }

          for (i = &v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]]; ; i += utf8_byte_length_noerror_utf8_len_table_2[v169])
          {
            LODWORD(v168) = *i;
            if ((*i & 0x80000000) == 0)
            {
              break;
            }

            v169 = *i >> 4;
            v170 = utf8_byte_length_utf8_len_table_2[v169];
            v171 = utf8_to_code_point_utf8_first_char_mask_1[v170] & v168;
            if ((~v169 & 0xC) != 0)
            {
              goto LABEL_279;
            }

            v172 = v170 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v169];
            v173 = 1;
            do
            {
              v171 = i[v173++] & 0x3F | (v171 << 6);
            }

            while (v172 != v173);
            if (v171 < 0x10000)
            {
LABEL_279:
              if ((v171 - 12441) >= 4 && (v171 - 65438) >= 2)
              {
                v175 = unicode_combinable(v171);
                v168 = *i;
                if (!v175)
                {
                  break;
                }

                v169 = v168 >> 4;
              }
            }

            else
            {
              v176 = v171 - 917760;
              v177 = v171 - 127995;
              if (v176 >= 0xF0 && v177 > 4)
              {
                break;
              }
            }
          }

          if (v168 < 2)
          {
            goto LABEL_763;
          }

          if ((v168 & 0x80) != 0)
          {
            v179 = v168 >> 4;
            v180 = ~v179;
            v181 = utf8_byte_length_utf8_len_table_2[v179];
            v182 = utf8_to_code_point_utf8_first_char_mask_1[v181] & v168;
            if ((v180 & 0xC) != 0)
            {
              LODWORD(v168) = utf8_to_code_point_utf8_first_char_mask_1[v181] & v168;
            }

            else
            {
              if (v181 <= 2)
              {
                v181 = 2;
              }

              else
              {
                v181 = v181;
              }

              v183 = v181 - 1;
              v184 = i + 1;
              do
              {
                v185 = *v184++;
                LODWORD(v168) = v185 & 0x3F | (v182 << 6);
                v182 = v168;
                --v183;
              }

              while (v183);
            }
          }

          v357 = 1 << u_charType(v168);
          if ((v357 & 0x3E) == 0)
          {
LABEL_635:
            i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
            goto LABEL_636;
          }

          v358 = v357 & 0xE;
          if ((v147 & 0xE) != 0)
          {
            if (!v358)
            {
              goto LABEL_636;
            }
          }

          else if (v358)
          {
            goto LABEL_636;
          }

          v367 = *i;
          if (v367 < 2)
          {
            goto LABEL_784;
          }

          *&v473 = v5;
          while (1)
          {
            if ((v367 & 0x80) != 0)
            {
              v368 = v367 >> 4;
              v369 = ~v368;
              v370 = utf8_byte_length_utf8_len_table_2[v368];
              v371 = utf8_to_code_point_utf8_first_char_mask_1[v370] & v367;
              if ((v369 & 0xC) != 0)
              {
                v367 &= utf8_to_code_point_utf8_first_char_mask_1[v370];
              }

              else
              {
                if (v370 <= 2)
                {
                  v370 = 2;
                }

                else
                {
                  v370 = v370;
                }

                v372 = v370 - 1;
                v373 = i + 1;
                do
                {
                  v374 = *v373++;
                  v367 = v374 & 0x3F | (v371 << 6);
                  v371 = v367;
                  --v372;
                }

                while (v372);
              }
            }

            v375 = u_charType(v367);
            if (v375 != 1)
            {
              if (v375 == 5)
              {
                goto LABEL_763;
              }

              if (v375 == 2)
              {
                if (v473 != v5)
                {
                  goto LABEL_763;
                }

LABEL_237:
                v148 = *i;
                if (v148 >= 2)
                {
                  while (2)
                  {
                    if ((v148 & 0x80) == 0)
                    {
                      goto LABEL_239;
                    }

                    v149 = v148 >> 4;
                    v150 = ~v149;
                    v151 = utf8_byte_length_utf8_len_table_2[v149];
                    v152 = utf8_to_code_point_utf8_first_char_mask_1[v151] & v148;
                    if ((v150 & 0xC) != 0)
                    {
                      goto LABEL_248;
                    }

                    v151 = v151 <= 2 ? 2 : v151;
                    v153 = v151 - 1;
                    v154 = i + 1;
                    do
                    {
                      v155 = *v154++;
                      v152 = v155 & 0x3F | (v152 << 6);
                      --v153;
                    }

                    while (v153);
                    if (v152 < 0x10000)
                    {
LABEL_248:
                      if ((v152 - 12441) >= 4 && (v152 - 65438) >= 2)
                      {
                        v160 = unicode_combinable(v152);
                        v148 = *i;
                        if (!v160)
                        {
                          goto LABEL_261;
                        }
                      }
                    }

                    else
                    {
                      v157 = v152 - 917760;
                      v158 = v152 - 127995;
                      if (v157 >= 0xF0 && v158 >= 5)
                      {
LABEL_261:
                        if ((v148 & 0x80) != 0)
                        {
                          v161 = v148 >> 4;
                          v162 = ~v161;
                          v163 = utf8_byte_length_utf8_len_table_2[v161];
                          v164 = utf8_to_code_point_utf8_first_char_mask_1[v163] & v148;
                          if ((v162 & 0xC) != 0)
                          {
                            v148 &= utf8_to_code_point_utf8_first_char_mask_1[v163];
                          }

                          else
                          {
                            if (v163 <= 2)
                            {
                              v163 = 2;
                            }

                            else
                            {
                              v163 = v163;
                            }

                            v165 = v163 - 1;
                            v166 = i + 1;
                            do
                            {
                              v167 = *v166++;
                              v148 = v167 & 0x3F | (v164 << 6);
                              v164 = v148;
                              --v165;
                            }

                            while (v165);
                          }
                        }

LABEL_239:
                        if (u_charType(v148) != 2)
                        {
                          goto LABEL_636;
                        }

                        v148 = *i;
                      }
                    }

                    i += utf8_byte_length_noerror_utf8_len_table_2[v148 >> 4];
                    v148 = *i;
                    if (v148 <= 1)
                    {
                      goto LABEL_784;
                    }

                    continue;
                  }
                }

                goto LABEL_784;
              }

              if (((1 << v375) & 0x3E) != 0)
              {
                *&v473 = i;
                goto LABEL_722;
              }
            }

            v376 = *i;
            if (v376 < 0)
            {
              v402 = utf8_byte_length_utf8_len_table_2[*i >> 4];
              v403 = (utf8_to_code_point_utf8_first_char_mask_1[v402] & *i);
              if ((~(*i >> 4) & 0xC) != 0)
              {
                goto LABEL_707;
              }

              v404 = v402 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[*i >> 4];
              v405 = 1;
              do
              {
                v403 = i[v405++] & 0x3F | (v403 << 6);
              }

              while (v404 != v405);
              if (v403 < 0x10000)
              {
LABEL_707:
                v406 = (v403 - 12441) >= 4 && (v403 - 65438) >= 2;
                if (!v406 || unicode_combinable(v403))
                {
                  goto LABEL_722;
                }

                LOBYTE(v376) = *i;
              }

              else
              {
                v407 = v403 - 917760;
                v408 = v403 - 127995;
                if (v407 < 0xF0 || v408 < 5)
                {
                  goto LABEL_722;
                }
              }
            }

            v377 = &i[utf8_byte_length_noerror_utf8_len_table_2[v376 >> 4]];
            v378 = *v377;
            if (v378 >= 2)
            {
              break;
            }

LABEL_722:
            i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
            v367 = *i;
            if (v367 <= 1)
            {
              goto LABEL_784;
            }
          }

          v379 = v10;
          while (1)
          {
            v380 = i;
            i = v377;
            if ((v378 & 0x80) != 0)
            {
              v381 = v378 >> 4;
              v382 = ~v381;
              v383 = utf8_byte_length_utf8_len_table_2[v381];
              v384 = utf8_to_code_point_utf8_first_char_mask_1[v383] & v378;
              if ((v382 & 0xC) != 0)
              {
                v378 &= utf8_to_code_point_utf8_first_char_mask_1[v383];
              }

              else
              {
                if (v383 <= 2)
                {
                  v383 = 2;
                }

                else
                {
                  v383 = v383;
                }

                v385 = v383 - 1;
                v386 = i + 1;
                do
                {
                  v387 = *v386++;
                  v378 = v387 & 0x3F | (v384 << 6);
                  v384 = v378;
                  --v385;
                }

                while (v385);
              }
            }

            v388 = u_charType(v378);
            v389 = *i;
            if (v388 != 1)
            {
              v390 = v388;
              if ((v389 & 0x80) == 0)
              {
                goto LABEL_714;
              }

              v391 = utf8_byte_length_utf8_len_table_2[v389 >> 4];
              v392 = utf8_to_code_point_utf8_first_char_mask_1[v391] & v389;
              if ((~(v389 >> 4) & 0xC) != 0)
              {
                goto LABEL_687;
              }

              v393 = v391 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v389 >> 4];
              v394 = v393 - 1;
              v395 = i + 1;
              do
              {
                v396 = *v395++;
                v392 = v396 & 0x3F | (v392 << 6);
                --v394;
              }

              while (v394);
              if (v392 < 0x10000)
              {
LABEL_687:
                if ((v392 - 12441) >= 4 && (v392 - 65438) >= 2)
                {
                  v398 = unicode_combinable(v392);
                  LODWORD(v389) = *i;
                  if (!v398)
                  {
                    goto LABEL_714;
                  }
                }
              }

              else
              {
                v399 = v392 - 917760;
                v400 = v392 - 127995;
                if (v399 >= 0xF0 && v400 > 4)
                {
LABEL_714:
                  if (((1 << v390) & 0x7000) == 0)
                  {
                    i = v380;
                  }

                  v10 = v379;
                  if (v389 > 1)
                  {
LABEL_636:
                    v359 = *i;
                    if (v359 < 2)
                    {
                      goto LABEL_784;
                    }

                    while (1)
                    {
                      if ((v359 & 0x80) != 0)
                      {
                        v360 = v359 >> 4;
                        v361 = ~v360;
                        v362 = utf8_byte_length_utf8_len_table_2[v360];
                        v363 = utf8_to_code_point_utf8_first_char_mask_1[v362] & v359;
                        if ((v361 & 0xC) != 0)
                        {
                          v359 &= utf8_to_code_point_utf8_first_char_mask_1[v362];
                        }

                        else
                        {
                          if (v362 <= 2)
                          {
                            v362 = 2;
                          }

                          else
                          {
                            v362 = v362;
                          }

                          v364 = v362 - 1;
                          v365 = i + 1;
                          do
                          {
                            v366 = *v365++;
                            v359 = v366 & 0x3F | (v363 << 6);
                            v363 = v359;
                            --v364;
                          }

                          while (v364);
                        }
                      }

                      if ((v16 >> u_charType(v359)))
                      {
                        break;
                      }

                      i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
                      v359 = *i;
                      if (v359 <= 1)
                      {
                        goto LABEL_784;
                      }
                    }

LABEL_763:
                    if (*i < 2u)
                    {
                      goto LABEL_784;
                    }

                    v423 = v471;
                    v424 = v475;
                    v425 = &v471[2 * v474];
                    v426 = v474 + 1;
                    *v425 = v14;
                    v425[1] = v424;
                    *(v425 + 1) = i;
                    if (v14 == 8)
                    {
                      v14 = 2;
                    }

                    else
                    {
                      v14 = 3;
                    }

                    v427 = v424 + 1;
                    v428 = &v423[2 * v426];
                    *v428 = v14;
                    v428[1] = v427;
                    *(v428 + 1) = i;
                    v429 = *(v6 + 24) + 32 * v427;
                    v472 = *v429;
                    v473 = *(v429 + 8);
                    v16 = *(v429 + 24);
                    v469 = i;
                    v5 = i;
                    v474 = v426;
                    v475 = v427;
                    goto LABEL_13;
                  }

                  goto LABEL_722;
                }
              }
            }

            v377 = &i[utf8_byte_length_noerror_utf8_len_table_2[v389 >> 4]];
            v378 = *v377;
            if (v378 <= 1)
            {
              v10 = v379;
              goto LABEL_722;
            }
          }
        }

        v120 = *v5;
        if ((v16 & 0xF000000) != 0)
        {
          if (v120 < 2)
          {
            goto LABEL_784;
          }

          if ((v120 & 0x80) != 0)
          {
            v121 = utf8_byte_length_utf8_len_table_2[v120 >> 4];
            v122 = utf8_to_code_point_utf8_first_char_mask_1[v121] & v120;
            if ((~(v120 >> 4) & 0xC) != 0)
            {
              LODWORD(v120) = utf8_to_code_point_utf8_first_char_mask_1[v121] & v120;
            }

            else
            {
              if (v121 <= 2)
              {
                v123 = 2;
              }

              else
              {
                v123 = utf8_byte_length_utf8_len_table_2[v120 >> 4];
              }

              v124 = v123 - 1;
              v125 = v5 + 1;
              do
              {
                v126 = *v125++;
                LODWORD(v120) = v126 & 0x3F | (v122 << 6);
                v122 = v120;
                --v124;
              }

              while (v124);
            }
          }

          i = v5;
          if ((v16 >> u_charType(v120)))
          {
            i = &v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]];
            v295 = *i;
            if (v295 < 2)
            {
              goto LABEL_784;
            }

            while (1)
            {
              v296 = v295;
              if ((v295 & 0x80) != 0)
              {
                v297 = v295 >> 4;
                v298 = ~v297;
                v299 = utf8_byte_length_utf8_len_table_2[v297];
                v300 = utf8_to_code_point_utf8_first_char_mask_1[v299] & v295;
                if ((v298 & 0xC) != 0)
                {
                  v296 = utf8_to_code_point_utf8_first_char_mask_1[v299] & v295;
                }

                else
                {
                  if (v299 <= 2)
                  {
                    v299 = 2;
                  }

                  else
                  {
                    v299 = v299;
                  }

                  v301 = v299 - 1;
                  v302 = i + 1;
                  do
                  {
                    v303 = *v302++;
                    v296 = v303 & 0x3F | (v300 << 6);
                    v300 = v296;
                    --v301;
                  }

                  while (v301);
                }
              }

              if (v120 != v296)
              {
                break;
              }

              i += utf8_byte_length_noerror_utf8_len_table_2[v295 >> 4];
              v295 = *i;
              if (v295 <= 1)
              {
                goto LABEL_784;
              }
            }
          }
        }

        else
        {
          i = v5;
          if (v120 < 2)
          {
            goto LABEL_784;
          }

          while (1)
          {
            if ((v120 & 0x80) != 0)
            {
              v128 = v120 >> 4;
              v129 = ~v128;
              v130 = utf8_byte_length_utf8_len_table_2[v128];
              v131 = utf8_to_code_point_utf8_first_char_mask_1[v130] & v120;
              if ((v129 & 0xC) != 0)
              {
                LODWORD(v120) = utf8_to_code_point_utf8_first_char_mask_1[v130] & v120;
              }

              else
              {
                if (v130 <= 2)
                {
                  v130 = 2;
                }

                else
                {
                  v130 = v130;
                }

                v132 = v130 - 1;
                v133 = i + 1;
                do
                {
                  v134 = *v133++;
                  LODWORD(v120) = v134 & 0x3F | (v131 << 6);
                  v131 = v120;
                  --v132;
                }

                while (v132);
              }
            }

            if (((v16 >> u_charType(v120)) & 1) == 0)
            {
              break;
            }

            i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
            LODWORD(v120) = *i;
            if (v120 <= 1)
            {
              goto LABEL_784;
            }
          }
        }

        v304 = *i;
        if (v304 >= 2)
        {
          do
          {
            if ((v304 & 0x80) != 0)
            {
              v305 = v304 >> 4;
              v306 = ~v305;
              v307 = utf8_byte_length_utf8_len_table_2[v305];
              v308 = utf8_to_code_point_utf8_first_char_mask_1[v307] & v304;
              if ((v306 & 0xC) != 0)
              {
                v304 &= utf8_to_code_point_utf8_first_char_mask_1[v307];
              }

              else
              {
                if (v307 <= 2)
                {
                  v307 = 2;
                }

                else
                {
                  v307 = v307;
                }

                v309 = v307 - 1;
                v310 = i + 1;
                do
                {
                  v311 = *v310++;
                  v304 = v311 & 0x3F | (v308 << 6);
                  v308 = v304;
                  --v309;
                }

                while (v309);
              }
            }

            if ((v16 >> u_charType(v304)))
            {
              goto LABEL_763;
            }

            i += utf8_byte_length_noerror_utf8_len_table_2[*i >> 4];
            v304 = *i;
          }

          while (v304 > 1);
        }

LABEL_784:
        if ((v467 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_785;
      }

      __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3347, "item.start_mask&U_MASK(u_charType(utf8_to_code_point((u_int8_t*)cur_state.cur)))", "", *(v6 + 16), v475, *(v6 + 8));
LABEL_856:
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (v5 != v470)
    {
      __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3326, "cur_state.cur==(u_int8_t*)string", "", *(v6 + 16), v475, *(v6 + 8));
      goto LABEL_856;
    }

    v52 = *v5;
    if (v52 < 2)
    {
      goto LABEL_783;
    }

    while (1)
    {
      if ((v52 & 0x80) != 0)
      {
        v53 = v52 >> 4;
        v54 = ~v53;
        v55 = utf8_byte_length_utf8_len_table_2[v53];
        v56 = utf8_to_code_point_utf8_first_char_mask_1[v55] & v52;
        if ((v54 & 0xC) != 0)
        {
          v52 &= utf8_to_code_point_utf8_first_char_mask_1[v55];
        }

        else
        {
          if (v55 <= 2)
          {
            v55 = 2;
          }

          else
          {
            v55 = v55;
          }

          v57 = v55 - 1;
          v58 = v5 + 1;
          do
          {
            v59 = *v58++;
            v52 = v59 & 0x3F | (v56 << 6);
            v56 = v52;
            --v57;
          }

          while (v57);
        }
      }

      v60 = u_charType(v52);
      v61 = *v5;
      if ((v16 >> v60))
      {
        break;
      }

      v5 += utf8_byte_length_noerror_utf8_len_table_2[v61 >> 4];
      v52 = *v5;
      if (v52 <= 1)
      {
        goto LABEL_783;
      }
    }

    if (v61 < 2)
    {
LABEL_783:
      v5 = v470;
      goto LABEL_784;
    }

    v74 = v471;
    v75 = v475;
    v76 = &v471[2 * v474];
    v77 = v474;
    *(v76 + 1) = v5;
    if (v14 == 6)
    {
      v78 = 8;
    }

    else
    {
      v78 = 9;
    }

    v79 = v77 + 1;
    *v76 = v78;
    v76[1] = v75;
    v80 = v75 + 1;
    if (v14 == 6)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    v81 = &v74[2 * v79];
    *v81 = v14;
    v81[1] = v80;
    *(v81 + 1) = v5;
    v82 = *(v6 + 24) + 32 * v80;
    v472 = *v82;
    v473 = *(v82 + 8);
    v16 = *(v82 + 24);
    v469 = v5;
    v474 = v79;
    v475 = v75 + 1;
  }

  if (v14 != 10)
  {
    if (v14 != 12)
    {
      v31 = v5;
      if (v14 != 11)
      {
        goto LABEL_860;
      }

      while (1)
      {
        v32 = *v31;
        if (v32 < 0)
        {
          v33 = utf8_byte_length_utf8_len_table_2[*v31 >> 4];
          v34 = (v32 & utf8_to_code_point_utf8_first_char_mask_1[v33]);
          if ((~(*v31 >> 4) & 0xC) != 0)
          {
            v32 = (v32 & utf8_to_code_point_utf8_first_char_mask_1[v33]);
          }

          else
          {
            if (v33 <= 2)
            {
              v35 = 2;
            }

            else
            {
              v35 = utf8_byte_length_utf8_len_table_2[*v31 >> 4];
            }

            v36 = v35 - 1;
            v37 = v31 + 1;
            do
            {
              v38 = *v37++;
              v32 = v38 & 0x3F | (v34 << 6);
              v34 = v32;
              --v36;
            }

            while (v36);
          }
        }

        if (((1 << u_charType(v32)) & 0x7000) == 0)
        {
          break;
        }

        v31 += utf8_byte_length_noerror_utf8_len_table_2[*v31 >> 4];
      }

      if (v31 != v5)
      {
        v67 = v475 + 1;
        if (v67 < *(v6 + 8))
        {
          v68 = *(v6 + 24) + 32 * v67;
          v472 = *v68;
          v473 = *(v68 + 8);
          v16 = *(v68 + 24);
        }

        v14 = 0;
        v69 = &v471[2 * v474];
        *v69 = 0;
        *(v69 + 1) = v67;
        v69[1] = v31;
        v5 = v31;
        v475 = v67;
        goto LABEL_13;
      }

      goto LABEL_470;
    }

LABEL_54:
    v39 = v475 + 1;
    if (v39 == *(v6 + 8))
    {
      __message_assert("%s:%u: failed assertion '%s' %s %s level: %d count: %d", "icu_utils.c", 3290, "cur_state.level+1!=ctx->count", "", *(v6 + 16), v475, v475 + 1);
      goto LABEL_856;
    }

    v40 = *v5;
    if (v40 >= 2)
    {
      v41 = *(*(v6 + 24) + 32 * v39 + 24);
      while (1)
      {
        if ((v40 & 0x80) != 0)
        {
          v42 = v40 >> 4;
          v43 = ~v42;
          v44 = utf8_byte_length_utf8_len_table_2[v42];
          v45 = utf8_to_code_point_utf8_first_char_mask_1[v44] & v40;
          if ((v43 & 0xC) != 0)
          {
            v40 &= utf8_to_code_point_utf8_first_char_mask_1[v44];
          }

          else
          {
            if (v44 <= 2)
            {
              v44 = 2;
            }

            else
            {
              v44 = v44;
            }

            v46 = v44 - 1;
            v47 = v5 + 1;
            do
            {
              v48 = *v47++;
              v40 = v48 & 0x3F | (v45 << 6);
              v45 = v40;
              --v46;
            }

            while (v46);
          }
        }

        v49 = 1 << u_charType(v40);
        if ((v49 & 0xF000000) != 0)
        {
          v50 = 251658240;
        }

        else
        {
          v50 = v49;
        }

        if ((v49 & 0x78001) != 0)
        {
          v50 = 491521;
        }

        if ((v49 & 0x7000) != 0)
        {
          v50 = 28672;
        }

        if ((v49 & 0xE00) != 0)
        {
          v50 = 3584;
        }

        if ((v49 & 0x1C0) != 0)
        {
          v50 = 448;
        }

        if ((v49 & 0x3E) != 0)
        {
          v50 = 62;
        }

        v51 = *v5;
        if ((v50 & v41) != 0)
        {
          break;
        }

        v5 += utf8_byte_length_noerror_utf8_len_table_2[v51 >> 4];
        v40 = *v5;
        if (v40 <= 1)
        {
          goto LABEL_470;
        }
      }

      if (v51 >= 2)
      {
        v83 = v474;
        if (v14 == 12)
        {
          v84 = v471;
          v290 = v475;
          if (!v474)
          {
            *v471 = 12;
            *(v84 + 1) = v290;
            v84[1] = v5;
            v84[1] = &v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]];
            v83 = 1;
          }

          v14 = 11;
        }

        else
        {
          v84 = v471;
          v85 = &v471[2 * v474];
          v86 = v475;
          *v85 = v14;
          v85[1] = v86;
          *(v85 + 1) = v5;
          v83 = (v83 + 1);
          *(v85 + 1) = &v5[utf8_byte_length_noerror_utf8_len_table_2[*v5 >> 4]];
          if (v14 == 4)
          {
            v14 = 2;
          }

          else
          {
            v14 = 3;
          }
        }

        v291 = &v84[2 * v83];
        *v291 = v14;
        v291[1] = v39;
        *(v291 + 1) = v5;
        v292 = *(v6 + 24) + 32 * v39;
        v472 = *v292;
        v473 = *(v292 + 8);
        v16 = *(v292 + 24);
        v474 = v83;
        v475 = v39;
        goto LABEL_13;
      }
    }

    goto LABEL_470;
  }

LABEL_96:
  v62 = *v5;
  if ((v62 & 0x80000000) == 0)
  {
    v63 = v5;
    goto LABEL_98;
  }

  v63 = v5;
  do
  {
    v87 = v62 >> 4;
    v88 = utf8_byte_length_utf8_len_table_2[v87];
    v89 = (utf8_to_code_point_utf8_first_char_mask_1[v88] & v62);
    if ((~v87 & 0xC) != 0)
    {
      goto LABEL_143;
    }

    v90 = v88 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v87];
    v91 = 1;
    do
    {
      v89 = v63[v91++] & 0x3F | (v89 << 6);
    }

    while (v90 != v91);
    if (v89 < 0x10000)
    {
LABEL_143:
      if ((v89 - 12441) >= 4 && (v89 - 65438) >= 2)
      {
        if (!unicode_combinable(v89))
        {
          break;
        }

        v87 = *v63 >> 4;
      }

      goto LABEL_154;
    }

    v93 = v89 - 917760;
    v94 = v89 - 127995;
    if (v93 >= 0xF0 && v94 > 4)
    {
      break;
    }

LABEL_154:
    v63 += utf8_byte_length_noerror_utf8_len_table_2[v87];
    v62 = *v63;
  }

  while (v62 < 0);
  if (v63 != v5 && v63 != v470)
  {
    v96 = 0;
    do
    {
      v97 = v5[--v96] & 0xC0;
    }

    while (v97 == 128);
    v98 = *v5;
    if (v98 < 0)
    {
      v99 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
      v100 = (v98 & utf8_to_code_point_utf8_first_char_mask_1[v99]);
      if ((~(*v5 >> 4) & 0xC) != 0)
      {
        v98 = (v98 & utf8_to_code_point_utf8_first_char_mask_1[v99]);
      }

      else
      {
        if (v99 <= 2)
        {
          v101 = 2;
        }

        else
        {
          v101 = utf8_byte_length_utf8_len_table_2[*v5 >> 4];
        }

        v102 = v101 - 1;
        v103 = v5 + 1;
        do
        {
          v104 = *v103++;
          v98 = v104 & 0x3F | (v100 << 6);
          v100 = v98;
          --v102;
        }

        while (v102);
      }
    }

    if ((v98 - 128000) <= 0xFFFFFFFA)
    {
      v312 = *(v6 + 48);
      if (v312)
      {
        memset(v478, 0, 32);
        v477 = 0;
        v313 = icu_build_pattern_key(v312, &v5[v96], -v96, v478, 32, &v477);
        memset(v479, 0, 32);
        v476 = 0;
        v314 = icu_build_pattern_key(*(v6 + 48), &v5[v96], v63 - v5 - v96, v479, 32, &v476);
        v315 = v477 == v476 && !memcmp(v313, v314, v477);
        if (v313 != v478)
        {
          free(v313);
        }

        if (v314 != v479)
        {
          free(v314);
        }

        if (!v315)
        {
          if (!v474)
          {
            v5 = v63;
            goto LABEL_784;
          }

          v316 = &v471[2 * v474 - 2];
          v474 = v474 - 1;
          v14 = *v316;
          v317 = *(v6 + 24) + 32 * *(v316 + 1);
          v475 = *(v316 + 1);
          v5 = v316[1];
          v318 = *v317;
          v473 = *(v317 + 8);
          v16 = *(v317 + 24);
          v472 = v318;
          if (v468)
          {
            v319 = v318 == 16 || v318 == 8;
            if (v319 && (v16 & 0x1000) == 0 && *v5 == 32 && v5[1] > 1u)
            {
              ++v5;
            }
          }

          goto LABEL_13;
        }
      }
    }
  }

LABEL_98:
  if (v14 != 10)
  {
    v64 = v475 + 1;
    v65 = *(v6 + 8);
    if (v475 + 1 >= v65)
    {
      goto LABEL_498;
    }

    v66 = *v63;
    if (v66 == 45)
    {
      goto LABEL_221;
    }

    if (v66 == 239)
    {
      if (v63[1] == 188 && v63[2] == 189)
      {
        goto LABEL_221;
      }

LABEL_498:
      v5 = v63;
    }

    else
    {
      if (v66 == 226)
      {
        if (v63[1] != 128 || (v63[2] & 0xFE) != 0x90)
        {
          goto LABEL_498;
        }

LABEL_221:
        v136 = 3646;
      }

      else
      {
        if (v66 == 32 && (v468 & 1) != 0)
        {
          goto LABEL_221;
        }

        if (v66 != 46)
        {
          goto LABEL_498;
        }

        v136 = 62;
      }

      v137 = *(v6 + 24);
      if ((*(v137 + 32 * v475 - 8) & v136) == 0 || v64 != v65 && (*(v137 + 32 * v64 + 24) & v136) == 0)
      {
        goto LABEL_498;
      }

      v138 = utf8_byte_length_noerror_utf8_len_table_2[v66 >> 4];
      v5 = &v63[v138];
      v139 = v63[v138];
      if (v139 >= 2)
      {
        if ((v139 & 0x80) != 0)
        {
          v140 = utf8_byte_length_utf8_len_table_2[v139 >> 4];
          v141 = utf8_to_code_point_utf8_first_char_mask_1[v140] & v139;
          if ((~(v139 >> 4) & 0xC) != 0)
          {
            LODWORD(v139) = utf8_to_code_point_utf8_first_char_mask_1[v140] & v139;
          }

          else
          {
            if (v140 <= 2)
            {
              v142 = 2;
            }

            else
            {
              v142 = utf8_byte_length_utf8_len_table_2[v139 >> 4];
            }

            v143 = v142 - 1;
            v144 = &v63[v138 + 1];
            do
            {
              v145 = *v144++;
              LODWORD(v139) = v145 & 0x3F | (v141 << 6);
              v141 = v139;
              --v143;
            }

            while (v143);
          }
        }

        v410 = 1 << u_charType(v139);
        if ((v410 & 0x3E) != 0)
        {
          v411 = 62;
        }

        else if ((v410 & 0x1C0) != 0)
        {
          v411 = 448;
        }

        else if ((v410 & 0xE00) != 0)
        {
          v411 = 3584;
        }

        else
        {
          if ((v410 & 0xF000000) != 0)
          {
            v430 = 251658240;
          }

          else
          {
            v430 = v410;
          }

          if ((v410 & 0x78001) != 0)
          {
            v430 = 491521;
          }

          if ((v410 & 0x7000) != 0)
          {
            v411 = 28672;
          }

          else
          {
            v411 = v430;
          }
        }

        if ((v411 & v136) == 0)
        {
          v5 = v63;
        }

        v65 = *(v6 + 8);
      }
    }

    v14 = 0;
    if (v64 < v65)
    {
      v294 = *(v6 + 24) + 32 * v64;
      v472 = *v294;
      v473 = *(v294 + 8);
      v16 = *(v294 + 24);
    }

    v475 = v64;
    goto LABEL_13;
  }

  v5 = v63;
LABEL_785:
  v431 = v469;
  if (v465)
  {
    *v465 = v469 - v470;
  }

  if (v466)
  {
    *v466 = v5 - v431;
  }

  return 1;
}

uint64_t icu_get_char_category_mask(char *a1)
{
  v2 = *a1;
  if (v2 < 0)
  {
    v3 = utf8_byte_length_utf8_len_table_2[v2 >> 4];
    v4 = (v2 & utf8_to_code_point_utf8_first_char_mask_1[v3]);
    if ((~(v2 >> 4) & 0xC) != 0)
    {
      v2 = (v2 & utf8_to_code_point_utf8_first_char_mask_1[v3]);
    }

    else
    {
      if (v3 <= 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = utf8_byte_length_utf8_len_table_2[v2 >> 4];
      }

      v6 = v5 - 1;
      v7 = a1 + 1;
      do
      {
        v8 = *v7++;
        v2 = v8 & 0x3F | (v4 << 6);
        v4 = v2;
        --v6;
      }

      while (v6);
    }
  }

  v9 = 1 << u_charType(v2);
  if ((v9 & 0x3E) != 0)
  {
    return 62;
  }

  if ((v9 & 0xF000000) != 0)
  {
    v11 = 251658240;
  }

  else
  {
    v11 = v9;
  }

  if ((v9 & 0x78001) != 0)
  {
    v12 = 491521;
  }

  else
  {
    v12 = v11;
  }

  if ((v9 & 0x7000) != 0)
  {
    v12 = 28672;
  }

  if ((v9 & 0xE00) != 0)
  {
    v12 = 3584;
  }

  if ((v9 & 0x1C0) != 0)
  {
    return 448;
  }

  else
  {
    return v12;
  }
}

void icu_locale_release(int *a1)
{

  icu_ctx_release(a1);
}

int *_icu_search_context_add_type(int *result, int a2)
{
  v3 = result;
  v4 = result[2];
  if (!v4)
  {
    if ((a2 & 0x24) != 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  v5 = *(result + 3) + 32 * v4;
  v6 = *(v5 - 32);
  if ((v6 - 1) > 1)
  {
    if (v6 == 4)
    {
      if (a2 == 4)
      {
        return result;
      }

      if (a2 == 1)
      {
        *(v5 - 32) = 1;
        return result;
      }
    }

    else if ((a2 & 0x24) != 0 && (v6 & 0x60) != 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 != 2 && a2 != 1 && a2 != 4)
  {
LABEL_19:
    result = _icu_search_context_grow(result);
    if (a2 == 32)
    {
      v9 = 28672;
    }

    else
    {
      v9 = 0;
    }

    v10 = v3[2];
    v11 = *(v3 + 3) + 32 * v10;
    *(v11 + 24) = v9;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    v3[2] = v10 + 1;
    *v11 = a2;
  }

  return result;
}

void icu_search_context_destroy(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2 != 268435458)
    {
      icu_search_context_destroy_cold_1(v2);
    }

    *a1 = 0;
    if (a1[2] >= 1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 3);
        v6 = *(v5 + v3);
        if (v6 == 16)
        {
          free(*(v5 + v3 + 16));
          term_expansions_release(*(*(a1 + 3) + v3 + 8));
        }

        else if (v6 == 8)
        {
          free(*(v5 + v3 + 16));
        }

        ++v4;
        v3 += 32;
      }

      while (v4 < a1[2]);
    }

    free(*(a1 + 3));
    icu_ctx_release(*(a1 + 4));
    free(*(a1 + 2));
    if (*(a1 + 69) == 1)
    {
      free(*(a1 + 10));
    }

    free(a1);
  }
}

unint64_t _MDPlistArrayIterateWithError(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *result + *(result + 16);
  if (*(v8 + 4))
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    v14 = (v8 + *(v8 + 6));
    do
    {
      v16 = *v11;
      v15 = v11[1];
      v31 = *v14;
      v32 = *(v14 + 4);
      v25 = v16;
      v26 = v15;
      v27 = *v14;
      v28 = *(v14 + 4);
      v29 = 0;
      v30 = 0;
      result = validatePlistObject(v8, &v25, 0, a2, a5, a6, a7, a8);
      v13 += result;
      if (a2)
      {
        if (*a2)
        {
          return result;
        }

        if (v13 > *(v8 + 6))
        {
          *a2 = 917;
          return result;
        }
      }

      else if (v13 > *(v8 + 6))
      {
        _MDPlistArrayIterateWithError_cold_1(result, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = *(a3 + 16);
      v25 = v16;
      v26 = v15;
      v27 = v31;
      v28 = v32;
      v29 = 0;
      v30 = 0;
      result = v24(a3, &v25);
      ++v12;
      v14 = (v14 + 5);
    }

    while (v12 < *(v8 + 4));
  }

  return result;
}

unint64_t _MDPlistArrayIterate(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(a1 + 2);
  return _MDPlistArrayIterateWithError(&v9, 0, a2, a4, a5, a6, a7, a8);
}

CFMutableArrayRef copyCFArray(CFAllocatorRef allocator, __int128 *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __copyCFArray_block_invoke;
  v16[3] = &__block_descriptor_tmp_66;
  v17 = a3;
  v16[4] = allocator;
  v16[5] = a4;
  v16[6] = Mutable;
  v14 = *a2;
  v15 = *(a2 + 2);
  _MDPlistArrayIterateWithError(&v14, a4, v16, a4, a5, a6, a7, a8);
  return Mutable;
}

void __copyCFArray_block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = *a2;
  v9 = *(a2 + 16);
  v6 = __MDPlistContainerCopyObjectErrorCode(v4, &v8, v3 + 1, v5);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(a1 + 48), v6);
    CFRelease(v7);
  }
}

BOOL _MDPlistBytesBeginArray(uint64_t a1)
{

  return _MDPlistBytesBeginContainer(a1, 10);
}

unsigned int *_MDPlistGetRootPlistObjectFromPlist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>)
{
  v7 = (a1 + 32);

  return MDPlistGetRootPlistObjectFromBuffer(v7, 0, a2, a3, a4, a5, a6, a7);
}

uint64_t _MDPlistContainerCreateWithBytes(uint64_t a1, unsigned __int16 *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    return 0;
  }

  return _MDPlistContainerCreateCommon(a1, a3, a2, 0, 0, a4, a5, 0);
}

_DWORD *_MDPlistContainerAddDataValue(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return _addGenericData(a1, 0, 246, a2, a3, a4, a7, a8);
}

CFNumberType _MDPlistContainerAddNumber(uint64_t a1, CFNumberRef number, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  valuePtr = 0;
  v19 = 0;
  v18 = 0;
  result = CFNumberGetType(number);
  if (result > kCFNumberFloat32Type)
  {
    if (result <= kCFNumberCGFloatType)
    {
      if (((1 << result) & 0xCC00) != 0)
      {
        goto LABEL_8;
      }

      if (((1 << result) & 0x12000) != 0)
      {
        goto LABEL_16;
      }

      if (result == kCFNumberFloatType)
      {
        goto LABEL_11;
      }
    }

    if ((result - 7) < 3)
    {
      goto LABEL_13;
    }

    if (result != kCFNumberFloat64Type)
    {
      return result;
    }

LABEL_16:
    CFNumberGetValue(number, kCFNumberFloat64Type, &v18);
    v22[0] = v18;
    v9 = a1;
    v10 = 51;
    return _addGenericData(v9, 1, v10, v22, 8uLL, a3, v7, v8);
  }

  if ((result - 1) < 3)
  {
LABEL_13:
    CFNumberGetValue(number, kCFNumberSInt32Type, &v21);
    v15 = v21;
    v16 = a1;
    v17 = 226;
    return _addInlineData(v16, v17, v15, a3, v11, v12, v13, v14);
  }

  if (result == kCFNumberSInt64Type)
  {
LABEL_8:
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    v22[0] = valuePtr;
    v9 = a1;
    v10 = 35;
    return _addGenericData(v9, 1, v10, v22, 8uLL, a3, v7, v8);
  }

  if (result == kCFNumberFloat32Type)
  {
LABEL_11:
    CFNumberGetValue(number, kCFNumberFloat32Type, &v19);
    v15 = v19;
    v16 = a1;
    v17 = 227;
    return _addInlineData(v16, v17, v15, a3, v11, v12, v13, v14);
  }

  return result;
}

const void *_MDBundleUtilsCopyCachedLocalizedDescriptionDictionary(const void *a1)
{

  return localizedCacheValueCopy(a1);
}

const void *localizedCacheValueCopy(const void *a1)
{
  if (a1)
  {
    os_unfair_lock_lock(&gLocalizePropertyCacheLock);
    if (gCoreTypesLocalizedPropertyCache && (v2 = CFDictionaryGetValue(gCoreTypesLocalizedPropertyCache, a1)) != 0)
    {
      Value = v2;
    }

    else
    {
      if (!gLocalizedPropertyCache)
      {
        Value = 0;
        goto LABEL_10;
      }

      Value = CFDictionaryGetValue(gLocalizedPropertyCache, a1);
      if (!Value)
      {
LABEL_10:
        os_unfair_lock_unlock(&gLocalizePropertyCacheLock);
        return Value;
      }
    }

    CFRetain(Value);
    goto LABEL_10;
  }

  return 0;
}

_MDMutablePlistBytes *_MDPlistBytesCreateMutable(uint64_t a1, unsigned int a2)
{
  v2 = [[_MDMutablePlistBytes alloc] initWithCapacity:a2 useMalloc:0];
  if (!v2)
  {
    +[_MDPlistBytes createPlistBytes:];
  }

  v3 = v2;
  CFRetain(v2);

  return v3;
}

uint64_t _fast_vm_allocate(void *a1, size_t a2, int a3)
{
  if ((a3 & 0x13) != 1)
  {
    _fast_vm_allocate_cold_1();
  }

  v4 = mmap(0, a2, 3, 4098, a3 & 0xFF000000, 0);
  if (v4 == -1)
  {
    return 5;
  }

  v5 = v4;
  result = 0;
  *a1 = v5;
  return result;
}

uint64_t _MDStoreOIDArrayCreateMutable(uint64_t a1, unsigned int a2)
{
  if (!__kMDStoreOIDArrayTypeID)
  {
    __kMDStoreOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 40) = *(Instance + 40) & 0xF8 | 4;
    *(Instance + 48) = 0;
    if (a2)
    {
      v5 = (*MEMORY[0x1E69E9AC8] + 8 * a2 - 1) & -*MEMORY[0x1E69E9AC8];
    }

    else
    {
      v5 = *MEMORY[0x1E69E9AC8];
    }

    *(Instance + 36) = v5 >> 3;
    if (_fast_vm_allocate((Instance + 16), v5 & 0x7FFFFFFF8, -268435455))
    {
      CFRelease(v4);
      return 0;
    }

    else
    {
      *(v4 + 24) = _Block_copy(&__block_literal_global_1);
      v6 = *(v4 + 16);
      v7 = v6 + 8 * *(v4 + 36);
      *(v4 + 56) = v6;
      *(v4 + 64) = v7;
    }
  }

  return v4;
}

double __MDStoreOIDArrayInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

BOOL _MDPlistBytesAddRLETagRoom(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!*(a1 + 32))
  {
    v4 = a2;
    v6 = a3;
    v26 = a3 | 0x100000000;
    v25 = 8 * a3;
    v24 = a3 + 1;
    v7 = 8 * (a3 + 1);
    v8 = a3;
    v9 = a2;
    while (1)
    {
      if ((*(a1 + 34) & 1) == 0)
      {
        return 0;
      }

      if (*(a1 + 80) <= 0)
      {
        break;
      }

      v10 = *(a1 + 120);
      if (v10 && (v11 = *v10, v9 == BYTE3(*v10)) && (v12 = *(a1 + 104), &v10[v11 & 0xFFFFFF] == v12))
      {
        *v10 = v26 + v11;
        if (v12 + 8 * v6 < *(a1 + 112))
        {
          goto LABEL_26;
        }

        if (_MDPlistBytesGrowCapacityVM(a1, v25, 0))
        {
          v12 = *(a1 + 104);
LABEL_26:
          v20 = v12 + 8 * v6;
          v21 = *MEMORY[0x1E69E9AC8];
          v22 = -*MEMORY[0x1E69E9AC8];
          if (((v20 ^ v12) & v22) != 0 && ((v20 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v23 = 16 << *MEMORY[0x1E69E9AC0];
            if (v23 >= 4 * v21)
            {
              madvise(((v21 - 1 + v12) & v22), v23, 3);
            }
          }

          goto LABEL_25;
        }
      }

      else
      {
        v13 = *(a1 + 104);
        *(a1 + 120) = v13;
        if (&v13[v8 + 1] < *(a1 + 112))
        {
          goto LABEL_20;
        }

        if (_MDPlistBytesGrowCapacityVM(a1, v7, 0))
        {
          v13 = *(a1 + 104);
LABEL_20:
          v15 = &v13[v8 + 1];
          v16 = *MEMORY[0x1E69E9AC8];
          v17 = -*MEMORY[0x1E69E9AC8];
          if (((v15 ^ v13) & v17) != 0 && ((v15 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v18 = 16 << *MEMORY[0x1E69E9AC0];
            if (v18 >= 4 * v16)
            {
              madvise(((v13 + v16 - 1) & v17), v18, 3);
              v13 = *(a1 + 104);
            }
          }

          *v13 = v24 & 0xFFFFFF | (v4 << 24) | 0x100000000;
          *(a1 + 104) = v13 + 1;
LABEL_25:
          v19 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
          *(*(a1 + 48) + 8 * v19) += 0x100000000;
          return 1;
        }
      }

      if (*(a1 + 32))
      {
        return 0;
      }
    }

    *(a1 + 32) = 2734;
    v14 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _MDPlistBytesAddRLETagRoom_cold_1();
  }

  return 0;
}

uint64_t addStringBytes(uint64_t a1, int a2, const void **a3, size_t __n)
{
  if ((__n & 7) != 0)
  {
    v7 = __n & 7;
  }

  else
  {
    v7 = 8 * (__n != 0);
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 60);
  if (v9 == v8)
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    v11 = a2;
    *(a1 + 60) = 2 * v9;
    v12 = malloc_type_realloc(*(a1 + 48), 16 * v9, 0x100004000313F17uLL);
    *(a1 + 48) = v12;
    if (!v12)
    {
      if (*(a1 + 32))
      {
        return 0;
      }

      *(a1 + 32) = 2239;
      v38 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
      if (result)
      {
        addStringBytes_cold_2();
        return 0;
      }

      return result;
    }

    v8 = *(a1 + 56);
    a2 = v11;
  }

  *(a1 + 56) = v8 + 1;
  if (v8 == -1)
  {
    addStringBytes_cold_1();
  }

  v13 = *(a1 + 104);
  if ((v13 + 1) >= *(a1 + 112))
  {
    v14 = a2;
    result = _MDPlistBytesGrowCapacityVM(a1, 8u, 0);
    if (!result)
    {
      return result;
    }

    v13 = *(a1 + 104);
    a2 = v14;
  }

  v15 = MEMORY[0x1E69E9AC8];
  v16 = *MEMORY[0x1E69E9AC8];
  v17 = -*MEMORY[0x1E69E9AC8];
  v18 = MEMORY[0x1E69E9AC0];
  if ((((v13 + 1) ^ v13) & v17) != 0)
  {
    v19 = *MEMORY[0x1E69E9AC0];
    if ((((v13 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0 && 16 << v19 >= (4 * v16))
    {
      v20 = a2;
      v21 = MEMORY[0x1E69E9AC0];
      v22 = MEMORY[0x1E69E9AC8];
      madvise(((v13 + v16 - 1) & v17), 16 << v19, 3);
      v15 = v22;
      v18 = v21;
      a2 = v20;
      v13 = *(a1 + 104);
    }
  }

  *v13 = (v8 << 32) | 0x2000001;
  v23 = v13 + 1;
  *(a1 + 104) = v23;
  v24 = *(a1 + 48);
  v24[v8] = (a2 << 24) | ((v23 - *(a1 + 40)) >> 3) & 0xFFFFFF | ((v7 & 0x7FFFFFFF) << 32);
  ++*v24;
  *(a1 + 72) = v8;
  v25 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
  v24[v25] += 0x100000000;
  v26 = ((__n + 7) >> 3) + 1;
  v27 = *(a1 + 104);
  v28 = (__n + 7) >> 3;
  if (&v27[v28 + 1] >= *(a1 + 112))
  {
    v29 = v15;
    v30 = v18;
    result = _MDPlistBytesGrowCapacityVM(a1, 8 * v26, 0);
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 104);
    v18 = v30;
    v15 = v29;
  }

  v31 = v7 << 32;
  v32 = (__n + 7) >> 3;
  v33 = &v27[v28 + 1];
  v34 = *v15;
  v35 = -*v15;
  if (((v33 ^ v27) & v35) != 0 && ((v33 >> *v18) & 0xF) == 0)
  {
    v36 = 16 << *v18;
    if (v36 >= 4 * v34)
    {
      madvise(((v27 + v34 - 1) & v35), v36, 3);
      v27 = *(a1 + 104);
    }
  }

  *v27 = v31 | v26 & 0xFFFFFF | 0x7000000;
  v37 = (v27 + 1);
  *(a1 + 104) = v27 + 1;
  if (v32 >= 1)
  {
    v27[v32] = 0;
  }

  if (*a3)
  {
    memcpy(v37, *a3, __n);
    v37 = *(a1 + 104);
  }

  else
  {
    *a3 = v37;
  }

  *(a1 + 104) = &v37[8 * v32];
  return *(a1 + 72);
}

BOOL _MDPlistBytesAddCString(uint64_t a1, char *__s, int a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = __s;
  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 80) <= 0)
  {
    *(a1 + 32) = 2644;
    v6 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddCString_cold_2();
      return 0;
    }
  }

  else
  {
    if (a3 == -1)
    {
      v4 = a1;
      a3 = strlen(__s);
      a1 = v4;
    }

    v5 = a1;
    if (addStringBytes(a1, 12, v8, a3))
    {
      return 1;
    }

    if (*(v5 + 32))
    {
      return 0;
    }

    *(v5 + 32) = 2648;
    v7 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddCString_cold_1();
      return 0;
    }
  }

  return result;
}

BOOL _MDPlistBytesBeginContainer(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  while (!*(a1 + 32))
  {
    if ((*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 72) == -1)
    {
      *(a1 + 32) = 2480;
      v10 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _MDPlistBytesBeginContainer_cold_2();
      return 0;
    }

    v5 = *(a1 + 56);
    v6 = *(a1 + 60);
    if (v6 == v5)
    {
      *(a1 + 60) = 2 * v6;
      v7 = malloc_type_realloc(*(a1 + 48), 16 * v6, 0x100004000313F17uLL);
      *(a1 + 48) = v7;
      if (!v7)
      {
        if (*(a1 + 32))
        {
          return 0;
        }

        *(a1 + 32) = 2239;
        v9 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v23 = "_MDPlistBytesGrowUIDTable";
          v24 = 2080;
          v25 = "UID table allocation";
          v26 = 2048;
          v27 = a1;
          _os_log_error_impl(&dword_1B238B000, v9, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
        }

        continue;
      }

      v5 = *(a1 + 56);
    }

    *(a1 + 56) = v5 + 1;
    if (v5 == -1)
    {
      _MDPlistBytesBeginContainer_cold_1();
    }

    v8 = *(a1 + 104);
    if ((v8 + 1) < *(a1 + 112))
    {
      goto LABEL_20;
    }

    if (_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
    {
      v8 = *(a1 + 104);
LABEL_20:
      v11 = *MEMORY[0x1E69E9AC8];
      v12 = -*MEMORY[0x1E69E9AC8];
      if ((((v8 + 1) ^ v8) & v12) != 0 && (((v8 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v13 = 16 << *MEMORY[0x1E69E9AC0];
        if (v13 >= 4 * v11)
        {
          madvise(((v8 + v11 - 1) & v12), v13, 3);
          v8 = *(a1 + 104);
        }
      }

      *v8 = (v5 << 32) | 0x2000001;
      v14 = v8 + 1;
      *(a1 + 104) = v14;
      v15 = *(a1 + 48);
      v15[v5] = (a2 << 24) | ((v14 - *(a1 + 40)) >> 3) & 0xFFFFFF;
      ++*v15;
      *(a1 + 72) = v5;
      v16 = *(a1 + 80);
      if (v16 >= 1)
      {
        v17 = *(*(a1 + 88) + 4 * v16 - 4);
        v15[v17] += 0x100000000;
      }

      v18 = *(a1 + 72);
      v19 = *(a1 + 76);
      if (v16 >= v19)
      {
        v21 = 2 * v19;
        if (!v19)
        {
          v21 = 8;
        }

        *(a1 + 76) = v21;
        v20 = malloc_type_realloc(*(a1 + 88), 4 * *(a1 + 76), 0x100004052888210uLL);
        *(a1 + 88) = v20;
        LODWORD(v16) = *(a1 + 80);
      }

      else
      {
        v20 = *(a1 + 88);
      }

      *(a1 + 80) = v16 + 1;
      v20[v16] = v18;
      return 1;
    }
  }

  return 0;
}

uint64_t icu_search_context_item_get_item_count(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

unint64_t icu_locale_get_collation(unint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = a3 ^ 1u;
    v4 = 2;
    if (!a3)
    {
      v4 = 3;
    }

    if (!a2)
    {
      v3 = v4;
    }

    v5 = (result + 16 + 8 * v3);
    if (!atomic_load(v5))
    {
      v7 = icu_open_collation(*(result + 8), a2, a3);
      v8 = 0;
      atomic_compare_exchange_strong(v5, &v8, v7);
      if (v8)
      {
        ucol_close();
      }
    }

    return atomic_load(v5);
  }

  return result;
}

uint64_t icu_locale_get_rules(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v53[128] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = v3;
    v5 = v2;
    v6 = result;
    v7 = v3 ? 2 : 3;
    v8 = v2 ? v3 ^ 1u : v7;
    __dmb(9u);
    v9 = result + 48;
    result = *(result + 48 + 8 * v8);
    if (!result)
    {
      collation = icu_locale_get_collation(v6, v2, v3);
      if (!collation)
      {
        return *(v9 + 8 * v8);
      }

      v11 = collation;
      pthread_mutex_lock(&icu_locale_get_rules_rule_lock);
      if (*(v9 + 8 * v8))
      {
LABEL_35:
        pthread_mutex_unlock(&icu_locale_get_rules_rule_lock);
        return *(v9 + 8 * v8);
      }

      v12 = openCacheFile(v6, v5, v4, 0);
      if (v12 != -1)
      {
        v13 = v12;
        __buf = 0;
        v51 = 0;
        v52 = 0;
        if (pread(v12, &__buf, 0x18uLL, 0) == 24 && __buf == 2)
        {
          if (v52)
          {
            if (v51)
            {
              v14 = mmap(v51, v52, 1, 1, v13, 0);
              if (v14 != -1)
              {
                if (v14 == v51)
                {
                  v27 = v14 + 24;
                  close(v13);
                  __dmb(0xBu);
                  *(v9 + 8 * v8) = v27;
                  goto LABEL_35;
                }

                munmap(v14, v52);
              }
            }
          }
        }

        close(v13);
      }

      v48[0] = 0;
      v48[1] = 0;
      v49 = 0;
      v15 = malloc_create_zone(0x10000uLL, 0);
      v16 = malloc_type_zone_calloc(v15, 1uLL, 0x830uLL, 0x102004051B57111uLL);
      v16[5].i8[1] = -1;
      zone = v15;
      icu_rules_add_collator(v11, v11, v15, v16, v48, (v8 & 1) == 0, v5);
      if (v49 >= 1)
      {
        v17 = 0;
        do
        {
          v18 = icu_open_collation(v48[v17], v5, v4);
          if (v18)
          {
            icu_rules_add_collator(v11, v18, zone, v16, 0, (v8 & 1) == 0, 0);
            ucol_close();
          }

          free(v48[v17++]);
        }

        while (v17 < v49);
        if (!v16)
        {
          v23 = 0;
LABEL_34:
          __dmb(0xBu);
          *(v9 + 8 * v8) = v23;
          icu_rules_free(v16);
          malloc_destroy_zone(zone);
          goto LABEL_35;
        }
      }

      bzero(v53, 0x400uLL);
      v44 = 0;
      v45 = &v44;
      v46 = 0x2000000000;
      v47 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x2000000000;
      v43 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2000000000;
      v39 = 0;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 0x40000000;
      v35[2] = __icu_rules_copy_block_invoke;
      v35[3] = &unk_1E7B26360;
      v35[4] = &v44;
      v35[5] = &v40;
      v35[6] = &v36;
      _icu_rules_base_dump(v16, v53, 0, v35);
      v19 = v41[3] + v45[3] + v37[3];
      if (sCacheDirFd != -1)
      {
        v20 = openCacheFile(v6, v5, v4, 1);
        if (v20 != -1)
        {
          v21 = v20;
          v22 = v19 + 88;
          if (!_fd_ftruncate(v20, v19 + 88))
          {
            v25 = random();
            v26 = mmap((v25 << 12), v19 + 88, 3, 1, v21, 0);
            if (v26 != -1)
            {
              v24 = v26;
              v28 = 2;
              *v26 = 2;
              v26[1] = v26;
              v26[2] = v22;
              v23 = v26 + 3;
              close(v21);
              goto LABEL_30;
            }

            close(v21);
          }
        }
      }

      v23 = malloc_type_calloc(1uLL, v19 + 64, 0x3250CC25uLL);
      v28 = 0;
      v24 = 0;
      v22 = 0;
LABEL_30:
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2000000000;
      v34[3] = 0;
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2000000000;
      v33 = v45[3];
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x2000000000;
      v31[3] = v41[3] + v33;
      bzero(&__buf, 0x2000uLL);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 0x40000000;
      v30[2] = __icu_rules_copy_block_invoke_2;
      v30[3] = &unk_1E7B26388;
      v30[4] = v34;
      v30[5] = v32;
      v30[6] = &v44;
      v30[7] = &v40;
      v30[8] = v31;
      v30[9] = v23;
      v30[10] = &__buf;
      v30[11] = v19;
      _icu_rules_base_dump(v16, v53, 0, v30);
      if (v24)
      {
        fd_msync(v24, v22, 1, 1);
        *v24 = v28;
        v24[1] = v24;
        v24[2] = v22;
        fd_msync(v24, 0x18uLL, 1, 1);
        mprotect(v24, v22, 1);
      }

      _Block_object_dispose(v31, 8);
      _Block_object_dispose(v32, 8);
      _Block_object_dispose(v34, 8);
      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v44, 8);
      goto LABEL_34;
    }
  }

  return result;
}

char *icu_build_pattern_key(uint64_t a1, const char *a2, int32_t a3, char *a4, uint64_t a5, _DWORD *a6)
{
  v7 = a5;
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(&v15, 0, sizeof(v15));
  uiter_setUTF8(&v15, a2, a3);
  v17 = 0;
  if (!a4 || (v9 = a4, !v7))
  {
    v7 = 32;
    v9 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
  }

  SortKeyPart = ucol_nextSortKeyPart();
  if (SortKeyPart >= v7)
  {
    do
    {
      v11 = SortKeyPart;
      if (v9 == a4)
      {
        v9 = malloc_type_malloc(SortKeyPart + v7, 0x100004077774924uLL);
        memcpy(v9, a4, v11);
      }

      else
      {
        v9 = malloc_type_realloc(v9, SortKeyPart + v7, 0x100004077774924uLL);
      }

      v12 = ucol_nextSortKeyPart();
      SortKeyPart = v12 + v11;
    }

    while (v12 >= v7);
  }

  if (SortKeyPart)
  {
    v13 = SortKeyPart - 1;
    if (v9[v13])
    {
      LODWORD(v13) = SortKeyPart;
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  *a6 = v13;
  return v9;
}

uint64_t icu_term_key_starts(uint64_t a1, uint64_t a2, char *__s, int a4, char *a5, int a6, int *a7, _DWORD *a8, int a9)
{
  v11 = a4;
  v62 = *MEMORY[0x1E69E9840];
  if (a4 == -1)
  {
    v11 = strlen(__s);
  }

  *a7 = 0;
  *a8 = 0;
  bzero(v61, 0x400uLL);
  if (v11 < 1 || a9 < 2)
  {
    v14 = 0;
    *a7 = v11;
    *a8 = a6;
    return v14;
  }

  v55 = a7;
  v56 = v11;
  v14 = 0;
  v15 = 0;
  v54 = 0;
  v16 = 0;
  v53 = a2;
  v17 = 1;
  do
  {
    v18 = utf8_byte_length_noerror_utf8_len_table_2[__s[v15] >> 4];
    v60 = 0;
    v19 = v15 + v18;
    v20 = icu_build_pattern_key(a1, __s, v15 + v18, v61, 1024, &v60);
    v21 = v20;
    v22 = v60;
    if (!v60 || v60 > a6 || memcmp(v20, a5, v60))
    {
      v16 = 0;
      goto LABEL_10;
    }

    if (v54 != v22)
    {
      if (v16)
      {
        v24 = __s[v15];
        if ((v24 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v25 = __s[v15] >> 4;
        v26 = utf8_byte_length_utf8_len_table_2[v25];
        v24 = (v24 & utf8_to_code_point_utf8_first_char_mask_1[v26]);
        if ((~v25 & 0xC) != 0)
        {
          goto LABEL_27;
        }

        v27 = v26 <= 2 ? 2 : utf8_byte_length_utf8_len_table_2[v25];
        v28 = v27 - 1;
        v29 = &__s[v15 + 1];
        do
        {
          v30 = *v29++;
          v24 = v30 & 0x3F | (v24 << 6);
          --v28;
        }

        while (v28);
        if (v24 >= 0x10000)
        {
          v32 = v24 - 917760;
          v33 = v24 - 127995;
          if (v32 < 0xF0 || v33 < 5)
          {
            goto LABEL_34;
          }
        }

        else
        {
LABEL_27:
          v31 = (v24 - 12441) >= 4 && (v24 - 65438) >= 2;
          if (!v31 || unicode_combinable(v24))
          {
            goto LABEL_34;
          }
        }
      }

      v14 = v17;
    }

LABEL_34:
    v55[v14] = v19;
    a8[v14] = v22;
    v16 = 1;
    v54 = v22;
LABEL_10:
    if (v21 != v61)
    {
      free(v21);
    }

    v17 = (v14 + 1);
    v23 = v19 < v56 && v17 < a9;
    v15 = v19;
  }

  while (v23);
  v55[v14] = v56;
  a8[v14] = a6;
  if (v14 >= 1)
  {
    v35 = 0;
    v36 = 1;
    v37 = v53;
    do
    {
      v38 = v35;
      v39 = &a8[v35];
      v40 = *v39;
      v41 = _icu_rules_max_expansion(v37, &a5[v40], a6 - v40, 0) + v40;
      if (v41 > a8[++v35])
      {
        if (v38 >= v14)
        {
LABEL_48:
          v44 = 0;
        }

        else
        {
          v42 = v36;
          while (1)
          {
            v43 = a8[v42];
            if (v43 >= v41)
            {
              break;
            }

            if (v14 + 1 == ++v42)
            {
              goto LABEL_48;
            }
          }

          if (v43 == v41)
          {
            v44 = v42;
          }

          else
          {
            v44 = 0;
          }
        }

        v45 = v44 != 0;
        v46 = v44;
        if (v44 >= v14)
        {
          goto LABEL_59;
        }

        v47 = v55[v44];
        v60 = 0;
        v48 = icu_build_pattern_key(a1, &__s[v47], v56 - v47, v61, 1024, &v60);
        v49 = v48;
        v50 = a8[v46];
        v51 = a8[v14] - v50;
        if (v51 != v60 || memcmp(v48, &a5[v50], v51))
        {
          v45 = 0;
        }

        if (v49 != v61)
        {
          free(v49);
        }

        if (v45)
        {
LABEL_59:
          memmove(v39 + 1, &a8[v46], 4 * (v14 - v46 + 1));
          memmove(&v55[v38 + 1], &v55[v46], 4 * (v14 - v46 + 1));
          v14 = (v14 + v35 - v46);
        }

        v37 = v53;
      }

      ++v36;
    }

    while (v35 < v14);
  }

  return v14;
}

uint64_t unicode_combinable(unsigned int a1)
{
  if (a1 < 0x300)
  {
    return 0;
  }

  v1 = __CFUniCharCombiningBitmap[a1 >> 8];
  if (!__CFUniCharCombiningBitmap[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (__CFUniCharCombiningBitmap[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

uint64_t _icu_rules_max_expansion(int8x8_t *a1, unsigned __int8 *a2, int a3, unsigned int a4)
{
  if (a3)
  {
    v6 = *a2;
    v7 = a1 + 1;
    if ((*(a1[1].i32 + ((v6 >> 3) & 0x1C)) >> v6))
    {
      v8 = 0;
      v9 = v6 >> 6;
      if ((v6 >> 6) > 1)
      {
        if (v9 != 2)
        {
          v11 = vcnt_s8(a1[3]);
          v11.i16[0] = vaddlv_u8(v11);
          v8 = v11.u32[0];
        }

        v12 = vcnt_s8(a1[2]);
        v12.i16[0] = vaddlv_u8(v12);
        v8 += v12.u32[0];
      }

      else
      {
        v10 = v6 >> 6;
        if (!v9)
        {
LABEL_10:
          v14 = vcnt_s8((*&v7[v9] & ~(-1 << v6)));
          v14.i16[0] = vaddlv_u8(v14);
          result = _icu_rules_max_expansion(*&a1[v14.u32[0] + 6 + v10], a2 + 1, a3 - 1, a4 + 1);
          if (result)
          {
            return result;
          }

          goto LABEL_11;
        }
      }

      v13 = vcnt_s8(*v7);
      v13.i16[0] = vaddlv_u8(v13);
      v10 = v13.u32[0] + v8;
      goto LABEL_10;
    }
  }

LABEL_11:
  if (*a1)
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

int8x8_t *icu_rules_find_expansions@<X0>(int8x8_t *result@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, int8x8_t *a4@<X3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = result;
  }

  for (; a3; --a3)
  {
    v6 = *a2;
    v7 = v5 + 1;
    if (((*(v5[1].i32 + ((v6 >> 3) & 0x1C)) >> v6) & 1) == 0)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return result;
    }

    v8 = 0;
    v9 = v6 >> 6;
    if ((v6 >> 6) > 1)
    {
      if (v9 != 2)
      {
        v11 = vcnt_s8(v5[3]);
        v11.i16[0] = vaddlv_u8(v11);
        v8 = v11.u32[0];
      }

      v12 = vcnt_s8(v5[2]);
      v12.i16[0] = vaddlv_u8(v12);
      v8 += v12.u32[0];
    }

    else
    {
      v10 = v6 >> 6;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    v13 = vcnt_s8(*v7);
    v13.i16[0] = vaddlv_u8(v13);
    v10 = v13.u32[0] + v8;
LABEL_13:
    v14 = vcnt_s8((*&v7[v9] & ~(-1 << v6)));
    v14.i16[0] = vaddlv_u8(v14);
    v5 = v5[v14.u32[0] + 6 + v10];
    ++a2;
  }

  v15 = *v5;
  if (*v5)
  {
    v16 = *(*&v15 + 4);
    v15 = *(*&v15 + 16);
  }

  else
  {
    v5 = 0;
    v16 = 0;
  }

  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 12) = 0;
  *(a5 + 16) = v5;
  return result;
}

void _icu_search_context_add_list(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  if (*(a2 + 4))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 16) + 8 * v7);
      v10 = *(v9 + 1);
      if (v10 < 0)
      {
        v11 = utf8_byte_length_utf8_len_table_2[*(v9 + 1) >> 4];
        v12 = (v10 & utf8_to_code_point_utf8_first_char_mask_1[v11]);
        if ((~(*(v9 + 1) >> 4) & 0xC) != 0)
        {
          v10 = (v10 & utf8_to_code_point_utf8_first_char_mask_1[v11]);
        }

        else
        {
          if (v11 <= 2)
          {
            v13 = 2;
          }

          else
          {
            v13 = utf8_byte_length_utf8_len_table_2[*(v9 + 1) >> 4];
          }

          v14 = v13 - 1;
          v15 = (v9 + 2);
          do
          {
            v16 = *v15++;
            v10 = v16 & 0x3F | (v12 << 6);
            v12 = v10;
            --v14;
          }

          while (v14);
        }
      }

      v17 = 1 << u_charType(v10);
      if ((v17 & 0x3E) != 0)
      {
        v18 = 62;
      }

      else if ((v17 & 0x1C0) != 0)
      {
        v18 = 448;
      }

      else
      {
        if ((v17 & 0xF000000) != 0)
        {
          v19 = 251658240;
        }

        else
        {
          v19 = v17;
        }

        if ((v17 & 0x78001) != 0)
        {
          v19 = 491521;
        }

        if ((v17 & 0x7000) != 0)
        {
          v19 = 28672;
        }

        if ((v17 & 0xE00) != 0)
        {
          v18 = 3584;
        }

        else
        {
          v18 = v19;
        }
      }

      v8 |= v18;
      ++v7;
      v20 = *(a2 + 4);
    }

    while (v7 < v20);
  }

  else
  {
    v8 = 0;
    v20 = 0;
  }

  v21 = 0;
  if (!a3 || !a4)
  {
LABEL_45:
    v30 = a1;
    goto LABEL_60;
  }

  if (v20)
  {
    v22 = *(a2 + 16);
    while (**v22 != a4 || memcmp(a3, *v22 + 1, a4))
    {
      ++v22;
      if (!--v20)
      {
        goto LABEL_36;
      }
    }

    v21 = 0;
    goto LABEL_45;
  }

LABEL_36:
  v21 = malloc_type_malloc(a4 + 1, 0x9BA5D6EFuLL);
  memcpy(v21, a3, a4);
  *(v21 + a4) = 0;
  v23 = *a3;
  if (v23 < 0)
  {
    v24 = utf8_byte_length_utf8_len_table_2[*a3 >> 4];
    v25 = (v23 & utf8_to_code_point_utf8_first_char_mask_1[v24]);
    if ((~(*a3 >> 4) & 0xC) != 0)
    {
      v23 = (v23 & utf8_to_code_point_utf8_first_char_mask_1[v24]);
    }

    else
    {
      if (v24 <= 2)
      {
        v26 = 2;
      }

      else
      {
        v26 = utf8_byte_length_utf8_len_table_2[*a3 >> 4];
      }

      v27 = v26 - 1;
      v28 = (a3 + 1);
      do
      {
        v29 = *v28++;
        v23 = v29 & 0x3F | (v25 << 6);
        v25 = v23;
        --v27;
      }

      while (v27);
    }
  }

  v31 = 1 << u_charType(v23);
  if ((v31 & 0x3E) != 0)
  {
    v32 = 62;
    v30 = a1;
  }

  else
  {
    v30 = a1;
    if ((v31 & 0x1C0) != 0)
    {
      v32 = 448;
    }

    else if ((v31 & 0xE00) != 0)
    {
      v32 = 3584;
    }

    else if ((v31 & 0x7000) != 0)
    {
      v32 = 28672;
    }

    else
    {
      v32 = 491521;
      if ((v31 & 0x78001) == 0)
      {
        if ((v31 & 0xF000000) != 0)
        {
          v32 = 251658240;
        }

        else
        {
          v32 = v31;
        }
      }
    }
  }

  v8 |= v32;
LABEL_60:
  if (*(v30 + 66) != 1 || (v8 & 0x7000) == 0)
  {
    if (!*(v30 + 8) && *(v30 + 66) && (*(v30 + 67) & 1) == 0)
    {
      _icu_search_context_add_type(v30, 64);
    }

    _icu_search_context_grow(v30);
    v34 = v8 | 0x3FF80000;
    if ((v8 & 0x3FF80000) == 0)
    {
      v34 = v8;
    }

    v35 = *(v30 + 24) + 32 * *(v30 + 8);
    *(v35 + 24) = v34;
    *(v35 + 16) = v21;
    if (a2)
    {
      v36 = atomic_load(a2);
      if (v36 != -1)
      {
        atomic_fetch_add(a2, 1u);
      }
    }

    v37 = *(v30 + 8);
    v38 = *(v30 + 24) + 32 * v37;
    *(v38 + 8) = a2;
    *(v30 + 8) = v37 + 1;
    *v38 = 16;
  }

  else
  {
    free(v21);
    if (*(v30 + 8))
    {

      _icu_search_context_add_type(v30, 32);
    }
  }
}

uint64_t _MDPerf_QueryLog()
{
  if (_MDPerf_QueryLog_onceToken != -1)
  {
    _MDPerf_QueryLog_cold_1();
  }

  return _MDPerf_QueryLog_sQueryLog;
}

BOOL _MDPlistBytesEndPlist(uint64_t a1)
{
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    v2 = *(a1 + 104);
    v3 = v2 - *(a1 + 40);
    if (v3 == 8)
    {
      *(a1 + 32) = 2428;
      v16 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _MDPlistBytesEndPlist_cold_2();
      return 0;
    }

    if (*(a1 + 80))
    {
      *(a1 + 32) = 2430;
      v17 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _MDPlistBytesEndPlist_cold_1();
      return 0;
    }

    v4 = *(a1 + 56);
    if ((v2 + 8 * v4) < *(a1 + 112))
    {
      goto LABEL_8;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, 8 * v4, 0));
  v2 = *(a1 + 104);
LABEL_8:
  v5 = v3 >> 3;
  v6 = v2 + 8 * v4;
  v7 = MEMORY[0x1E69E9AC8];
  v8 = *MEMORY[0x1E69E9AC8];
  v9 = -*MEMORY[0x1E69E9AC8];
  if (((v2 ^ v6) & v9) != 0 && ((v6 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v10 = 16 << *MEMORY[0x1E69E9AC0];
    if (v10 >= 4 * v8)
    {
      madvise(((v8 - 1 + v2) & v9), v10, 3);
      v8 = *v7;
    }
  }

  v11 = 8 * *(a1 + 56);
  if (v11 >= 4 * v8)
  {
    madvise(*(a1 + 104), 8 * *(a1 + 56), 3);
    v11 = 8 * *(a1 + 56);
  }

  memcpy(*(a1 + 104), *(a1 + 48), v11);
  v12 = *(a1 + 104) + 8 * *(a1 + 56);
  *(a1 + 104) = v12;
  v13 = *(a1 + 40);
  v14 = ((*v13 | v5) << 32) | ((v12 - v13) >> 3);
  *(a1 + 72) = -1;
  *v13 = v14;
  *(a1 + 80) = 0;
  *(a1 + 76) = 0;
  free(*(a1 + 88));
  *(a1 + 88) = 0;
  CFRelease(*(a1 + 96));
  *(a1 + 96) = 0;
  *(a1 + 16) = *(a1 + 104) - *(a1 + 8);
  *(a1 + 34) &= ~2u;
  return 1;
}

BOOL _MDPlistBytesAddDate(uint64_t a1, double a2)
{
  result = _MDPlistBytesAddRLETagRoom(a1, 0x86u, 1u);
  if (result)
  {
    v5 = *(a1 + 104);
    *v5 = a2;
    *(a1 + 104) = v5 + 1;
    return 1;
  }

  return result;
}

BOOL _MDPlistBytesAddNull(uint64_t a1)
{

  return _MDPlistBytesAddRLETagRoom(a1, 0, 0);
}

BOOL _MDPlistBytesAddRawInternedCStringKeyWithString(uint64_t a1, int a2, char *__s, int a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = __s;
  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 80) <= 0)
  {
    *(a1 + 32) = 2703;
    v9 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddRawInternedCStringKeyWithString_cold_2();
      return 0;
    }
  }

  else
  {
    if (a4 == -1)
    {
      v6 = a1;
      a4 = strlen(__s);
      a1 = v6;
    }

    v7 = a1;
    v8 = addStringBytes(a1, 12, v11, a4);
    if (v8)
    {
      CFDictionarySetValue(*(v7 + 96), ((2 * a2) | 1u), v8);
      return 1;
    }

    if (*(v7 + 32))
    {
      return 0;
    }

    *(v7 + 32) = 2708;
    v10 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddRawInternedCStringKeyWithString_cold_1();
      return 0;
    }
  }

  return result;
}

void _MDStoreOIDArrayApplyBlock()
{
  OUTLINED_FUNCTION_0_2();
  if (*(v4 + 40))
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[2];
  }

  if (v3 < v2)
  {
    for (i = 0; ; ++i)
    {
      v7 = (v5 + 8 * v3);
      if (WORD1(*v7) - 4078 <= 0xFFFFFAEE)
      {
        break;
      }

      v8 = *v7 + 1;
      (*(v1 + 16))(v1, HIDWORD(*v7));
      v3 += v8;
      if (v3 >= v2)
      {
        return;
      }
    }

    CFShow(@"MDStoreOIDArrayApplyBlock encountered invalid opcode:");

    CFShow(v0);
  }
}

void OUTLINED_FUNCTION_0()
{
  MEMORY[0xBAD] = -559038737;

  abort();
}

uint64_t OUTLINED_FUNCTION_0_3(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  a13 = *a1;
  a14 = *(a1 + 2);

  return _MDPlistGetPlistObjectType(&a13);
}

uint64_t _MDStoreOIDArrayAppendMultipleOIDArrays(uint64_t a1, uint64_t *a2, int64_t a3)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  if (*(a1 + 40))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayAppendMultipleOIDArrays", "Sequencing");
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = (&block[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v8, v7);
  if (a3 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = a2;
    v11 = a3;
    do
    {
      v12 = *v10;
      if (*v10)
      {
        LODWORD(v12) = *(v12 + 32);
      }

      v9 += v12;
      ++v10;
      --v11;
    }

    while (v11);
  }

  v13 = v9;
  v14 = *(a1 + 56);
  if (&v14[8 * v9] >= *(a1 + 64))
  {
    if (!_mutableMakeRoom(a1, v9, 1))
    {
      __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayAppendMultipleOIDArrays", "Overflow");
      return 0;
    }

    v14 = *(a1 + 56);
  }

  if (a3 >= 1)
  {
    v15 = v8;
    v16 = a2;
    v17 = a3;
    do
    {
      *v15 = v14;
      v18 = *v16;
      if (*v16)
      {
        v18 = *(v18 + 32);
      }

      v14 += 8 * v18;
      *(a1 + 56) = v14;
      ++v16;
      ++v15;
      --v17;
    }

    while (v17);
  }

  v19 = v14 - *v8;
  if (v19 >= 4 * *MEMORY[0x1E69E9AC8])
  {
    madvise(*v8, v19, 3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___MDStoreOIDArrayAppendMultipleOIDArrays_block_invoke;
  block[3] = &__block_descriptor_tmp_18_0;
  block[4] = a2;
  block[5] = v8;
  dispatch_apply(a3, 0, block);
  *(a1 + 32) += v13;
  return 1;
}

BOOL _MDPlistBytesAddInteger(uint64_t a1, uint64_t a2)
{
  result = _MDPlistBytesAddRLETagRoom(a1, 0x84u, 1u);
  if (result)
  {
    v5 = *(a1 + 104);
    *v5 = a2;
    *(a1 + 104) = v5 + 1;
    return 1;
  }

  return result;
}

void _MDBundleUtilsClearCache(int a1)
{

  localizedCacheValueClear(a1);
}

void localizedCacheValueClear(int a1)
{
  os_unfair_lock_lock(&gLocalizePropertyCacheLock);
  if (gLocalizedPropertyCache)
  {
    CFRelease(gLocalizedPropertyCache);
    gLocalizedPropertyCache = 0;
  }

  if (a1 && gCoreTypesLocalizedPropertyCache)
  {
    CFRelease(gCoreTypesLocalizedPropertyCache);
    gCoreTypesLocalizedPropertyCache = 0;
  }

  os_unfair_lock_unlock(&gLocalizePropertyCacheLock);
}

uint64_t _MDPlistBytesAppendMultiplePlistBytes(uint64_t result, uint64_t *a2, int64_t a3)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  v3 = result;
  if (!*(result + 32))
  {
    v6 = 8 * a3;
    if (a3 <= 0)
    {
      while ((*(v3 + 34) & 1) != 0)
      {
        if (*(v3 + 72) != -1)
        {
LABEL_25:
          *(v3 + 32) = 2920;
          v17 = _MDLogForCategoryDefault();
          result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
          if (result)
          {
            _MDPlistBytesAppendMultiplePlistBytes_cold_1();
            return 0;
          }

          return result;
        }

        MEMORY[0x1EEE9AC00](result);
        v7 = block - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v7, v6);
        MEMORY[0x1EEE9AC00](v16);
        v9 = v7;
        bzero(v7, v6);
        if (*(v3 + 104) < *(v3 + 112) || (result = _MDPlistBytesGrowCapacityVM(v3, 0, 1), result))
        {
          v15 = 0;
LABEL_28:
          v18 = *(v3 + 104);
          v19 = v18 + 8 * v15;
          v20 = MEMORY[0x1E69E9AC8];
          v21 = *MEMORY[0x1E69E9AC8];
          v22 = -*MEMORY[0x1E69E9AC8];
          if (((v19 ^ v18) & v22) != 0 && ((v19 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v23 = 16 << *MEMORY[0x1E69E9AC0];
            if (v23 >= 4 * v21)
            {
              madvise(((v21 - 1 + v18) & v22), v23, 3);
            }
          }

          v24 = *(v3 + 104);
          if (a3 >= 1)
          {
            v25 = v9;
            v26 = v7;
            v27 = a3;
            do
            {
              *v25++ = v24;
              v28 = *v26++;
              v24 += v28 & 0xFFFFFFFFFFFFFFF8;
              *(v3 + 104) = v24;
              --v27;
            }

            while (v27);
          }

          v29 = v24 - *v9;
          if (v29 >= 4 * *v20)
          {
            madvise(*v9, v29, 3);
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ___MDPlistBytesAppendMultiplePlistBytes_block_invoke;
          block[3] = &__block_descriptor_56_e8_v16__0Q8l;
          block[4] = v7;
          block[5] = v9;
          block[6] = a2;
          dispatch_apply(a3, 0, block);
          *(v3 + 16) = *(v3 + 104) - *(v3 + 8);
          return 1;
        }

        if (*(v3 + 32))
        {
          return result;
        }
      }
    }

    else
    {
      while ((*(v3 + 34) & 1) != 0)
      {
        if (*(v3 + 72) != -1)
        {
          goto LABEL_25;
        }

        MEMORY[0x1EEE9AC00](result);
        v7 = block - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v7, v6);
        MEMORY[0x1EEE9AC00](v8);
        v9 = v7;
        bzero(v7, v6);
        v10 = 0;
        v11 = a2;
        v12 = v7;
        v13 = a3;
        do
        {
          v14 = *v11;
          if (*v11)
          {
            if (*(v14 + 32))
            {
              v14 = 0;
            }

            else
            {
              v14 = *(v14 + 16);
            }
          }

          *v12++ = v14;
          v10 += v14;
          ++v11;
          --v13;
        }

        while (v13);
        v15 = (v10 >> 2);
        if ((*(v3 + 104) + 8 * v15) < *(v3 + 112))
        {
          goto LABEL_28;
        }

        result = _MDPlistBytesGrowCapacityVM(v3, (2 * v10) & 0xFFFFFFF8, 1);
        if (result)
        {
          goto LABEL_28;
        }

        if (*(v3 + 32))
        {
          return result;
        }
      }
    }
  }

  return 0;
}

dispatch_data_t _MDPlistBytesCopyDispatchData(dispatch_data_t result, void *a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    isa_low = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (LOWORD(result[4].isa))
  {
    isa_low = 0;
    result = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_6;
  }

  v3 = a2;
  v4 = result;
  CFRetain(result);
  if (LOWORD(v4[4].isa))
  {
    isa_low = 0;
  }

  else
  {
    isa_low = LODWORD(v4[2].isa);
  }

  MappedByteVector = _MDPlistBytesGetMappedByteVector(&v4->isa);
  if (LOWORD(v4[4].isa))
  {
    v6 = 0;
  }

  else
  {
    v6 = LODWORD(v4[2].isa);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___MDPlistBytesCopyDispatchData_block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = v4;
  result = dispatch_data_create(MappedByteVector, v6, 0, v7);
  a2 = v3;
  if (v3)
  {
LABEL_6:
    *a2 = isa_low;
  }

  return result;
}

const void **_MDPlistBytesGetMappedByteVector(const void **result)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      return 0;
    }

    if ((~*(result + 34) & 9) != 0)
    {
      return result[1];
    }

    __dst[0] = 0;
    v2 = *(result + 5);
    v3 = MEMORY[0x1E69E9AC8];
    v4 = v2 ? (v2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8] : *MEMORY[0x1E69E9AC8];
    if (_fast_vm_allocate(__dst, v4, -251658239))
    {
      return 0;
    }

    else
    {
      v5 = *(v1 + 5);
      if (v5 >= 4 * *v3)
      {
        madvise(__dst[0], *(v1 + 5), 3);
        v5 = *(v1 + 5);
      }

      memcpy(__dst[0], v1[1], v5);
      free(v1[1]);
      result = __dst[0];
      v1[1] = __dst[0];
      *(v1 + 34) &= ~8u;
    }
  }

  return result;
}

void defaultDeallocator_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((*(a2 + 40) & 2) != 0)
  {

    free(v2);
  }

  else
  {
    v4 = _fast_vm_deallocate(v2, 8 * *(a2 + 36));
    if (v4)
    {
      v5 = *MEMORY[0x1E695E480];
      v6 = mach_error_string(v4);
      v7 = CFStringCreateWithFormat(v5, 0, @"%s: Error while finalizing %@ -- vm_deallocate: %s", "freeStoreArrayMemory", a2, v6);
      CFShow(v7);

      CFRelease(v7);
    }
  }
}

void defaultDeallocator_block_invoke_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a2 + 34) & 8) != 0)
  {

    free(v2);
  }

  else
  {
    v4 = _fast_vm_deallocate(v2, *(a2 + 20));
    if (v4)
    {
      v5 = v4;
      v6 = _MDLogForCategoryDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        defaultDeallocator_block_invoke_cold_1(a2, v5, v6);
      }
    }
  }
}

void __MDStoreOIDArrayFinalize(uint64_t a1)
{
  (*(*(a1 + 24) + 16))();
  v2 = *(a1 + 24);

  _Block_release(v2);
}

uint64_t _fast_vm_deallocate(void *a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (munmap(a1, a2))
  {
    return 5;
  }

  return 0;
}

_MDPlistBytes *_MDPlistBytesCreateTrusted(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v7 = [_MDPlistBytes alloc];
    if (a4)
    {
      v8 = &__block_literal_global_108;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(_MDPlistBytes *)v7 initWithByteVector:a2 count:a3 trusted:1 deallocator:v8];
    v10 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    return v10;
  }

  else
  {
    if (qword_1ED6F3FE0 != -1)
    {
      +[_MDPlistBytes enumerateObjectsFromPlistBytes:count:shouldDeallocate:usingBlock:];
    }

    v12 = qword_1ED6F3FD8;

    return CFRetain(v12);
  }
}

uint64_t _maybeSwapPlistBytes(uint64_t result, char a2)
{
  v2 = *(result + 8);
  if (*v2 == 0x6D64303331323334)
  {
    goto LABEL_27;
  }

  v3 = *(result + 16);
  if (v3 < 0x10)
  {
    goto LABEL_26;
  }

  v4 = v3 >> 3;
  while (1)
  {
    v5 = *v2;
    *v2 = bswap64(*v2);
    if (v5 != 0x343332313330646DLL)
    {
      break;
    }

    v6 = bswap64(v2[1]);
    v2[1] = v6;
    v7 = v6 - 1;
    v4 -= 2;
    if (v7 > v4)
    {
      *(result + 32) = 440;
      v29 = result;
      v30 = a2;
      v31 = _MDLogForCategoryDefault();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      a2 = v30;
      v33 = v32;
      result = v29;
      if (v33)
      {
        _maybeSwapPlistBytes_cold_3(v31);
        a2 = v30;
        result = v29;
      }

      goto LABEL_26;
    }

    v2 += 2;
    if (v7 >= 1)
    {
      do
      {
        v9 = bswap64(*v2);
        *v2 = v9;
        v10 = v9 & 0xFFFFFF;
        v8 = __OFSUB__(v4, v9 & 0xFFFFFF);
        v4 -= v9 & 0xFFFFFF;
        if (v4 < 0 != v8 || v10 == 0)
        {
          *(result + 32) = 450;
          v20 = result;
          v21 = a2;
          v22 = _MDLogForCategoryDefault();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          a2 = v21;
          v24 = v23;
          result = v20;
          if (v24)
          {
            _maybeSwapPlistBytes_cold_2(v10, v22);
            a2 = v21;
            result = v20;
          }

          goto LABEL_26;
        }

        v12 = v9 & 0xFFFFFF;
        if ((v9 & 0x80000000) != 0 && v10 >= 2)
        {
          v13 = v12 - 1;
          if ((v12 - 1) >= 4)
          {
            v14 = v13 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v15 = (v2 + 3);
            v16 = v13 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v17 = vrev64q_s8(*v15);
              v15[-1] = vrev64q_s8(v15[-1]);
              *v15 = v17;
              v15 += 2;
              v16 -= 4;
            }

            while (v16);
            if (v13 == (v13 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_9;
            }
          }

          else
          {
            v14 = 1;
          }

          v18 = v12 - v14;
          v19 = &v2[v14];
          do
          {
            *v19 = bswap64(*v19);
            ++v19;
            --v18;
          }

          while (v18);
        }

LABEL_9:
        v2 += v12;
        v8 = __OFSUB__(v7, v10);
        v7 -= v10;
      }

      while (!((v7 < 0) ^ v8 | (v7 == 0)));
    }

    if (v4 <= 1)
    {
      goto LABEL_26;
    }
  }

  v25 = a2;
  v26 = result;
  *(result + 32) = 426;
  if (*v2 != 52)
  {
    *v2 = bswap64(*v2);
  }

  v27 = _MDLogForCategoryDefault();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
  result = v26;
  a2 = v25;
  if (v28)
  {
    _maybeSwapPlistBytes_cold_1(v2, v27);
    a2 = v25;
    result = v26;
  }

LABEL_26:
  if (!*(result + 32))
  {
LABEL_27:
    if ((a2 & 1) == 0)
    {
      return __MDPlistBytesValidate(result);
    }
  }

  return result;
}

_MDPlistBytes *_MDPlistBytesCopyChildPlistBytesAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  if (a2 && (a3 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    if (a4)
    {
      if (*a4 <= a3)
      {
        return 0;
      }

      v5 = a4[a3 + 1];
      if (!v5)
      {
        return 0;
      }
    }

    else
    {
      v9 = *(a2 + 16);
      if (v9 < 0x10)
      {
        return 0;
      }

      v10 = (v9 >> 3) - 2;
      v5 = (*(a2 + 8) + 8);
      v11 = a3 + 1;
      while (--v11 >= 1)
      {
        result = 0;
        v12 = *v5 + 1;
        v13 = *v5 > 0x7FFFFFFE || v10 <= v12;
        v10 -= v12;
        v5 += 2 * v12;
        if (v13)
        {
          return result;
        }
      }
    }

    if (((*v5 >> 25) & 0xF) > 6)
    {
      return 0;
    }

    v6 = *v5;
    v7 = [[_MDPlistBytes alloc] initWithByteVector:v5 - 2 count:(8 * v6 + 8) trusted:1 deallocator:0];
    v8 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    return v8;
  }

  return result;
}

void _MDChildPlistBytesContextDestroy(void *a1)
{

  free(a1);
}

BOOL _MDPlistBytesAddReal(uint64_t a1, double a2)
{
  result = _MDPlistBytesAddRLETagRoom(a1, 0x85u, 1u);
  if (result)
  {
    v5 = *(a1 + 104);
    *v5 = a2;
    *(a1 + 104) = v5 + 1;
    return 1;
  }

  return result;
}