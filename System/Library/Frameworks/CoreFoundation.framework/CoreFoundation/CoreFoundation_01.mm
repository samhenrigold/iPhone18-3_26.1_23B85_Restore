const UniChar *__cdecl CFStringGetCharactersPtr(CFStringRef theString)
{
  if ((theString & 0x8000000000000000) != 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~theString & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ theString;
    do
    {
      if ((v4 & 7) == *(MEMORY[0x1E69E5900] + v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != 7);
    v5 = v2 | v4;
    v6 = v2 & 7;
    v7 = (v5 >> 55) + 8;
    if (v6 == 7)
    {
      LODWORD(v6) = v7;
    }

    if ((v6 & 0xFFFFFFFD) == 0)
    {
      return 0;
    }
  }

  if (!CF_IS_OBJC(7uLL, theString))
  {
    v9 = atomic_load(&theString->info);
    if ((v9 & 0x10) != 0)
    {
      v10 = atomic_load(&theString->info);
      p_data = &theString->data;
      if ((v10 & 0x60) != 0)
      {
        return *p_data;
      }

      v12 = atomic_load(&theString->info);
      return &p_data[(v12 & 5) != 4];
    }

    return 0;
  }

  return [(__CFString *)theString _fastCharacterContents];
}

unint64_t *_CFNonObjCStringCreateCopy(__objc2_class **IsImmortal, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a2 + 8);
  v11 = atomic_load((a2 + 8));
  if (v11)
  {
    goto LABEL_12;
  }

  v12 = IsImmortal;
  if (IsImmortal)
  {
    if (a2 < 0)
    {
LABEL_4:
      v13 = &kCFAllocatorSystemDefault;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = _CFGetTSD(1);
    v12 = &__kCFAllocatorSystemDefault;
    if (v14)
    {
      v12 = v14;
    }

    if (a2 < 0)
    {
      goto LABEL_4;
    }
  }

  v15 = atomic_load((a2 + 8));
  if (v15 < 0)
  {
    v13 = &kCFAllocatorSystemDefault;
  }

  else
  {
    v13 = (a2 - 16);
  }

LABEL_11:
  if (v12 == *v13)
  {
    v22 = atomic_load((a2 + 8));
    if ((v22 & 0x60) == 0 || (v23 = atomic_load((a2 + 8)), (v23 & 0x20) != 0) || __CFRuntimeIsImmortal(a2))
    {

      return _CFNonObjCRetain(a2);
    }
  }

LABEL_12:
  v16 = atomic_load(v10);
  v17 = atomic_load(v10);
  v18 = v17 & 0x60;
  v19 = (a2 + 16);
  if ((v16 & 0x10) != 0)
  {
    if (v18)
    {
      v21 = *v19;
    }

    else
    {
      v30 = atomic_load((a2 + 8));
      v21 = &v19[(v30 & 5) != 4];
    }

    v31 = atomic_load((a2 + 8));
    if ((v31 & 5) == 4)
    {
      v32 = v21->u8[0];
    }

    else
    {
      v33 = atomic_load((a2 + 8));
      if ((v33 & 0x60) != 0)
      {
        v32 = *(a2 + 24);
      }

      else
      {
        v32 = *v19;
      }
    }

    v37 = 2 * v32;
    v36 = IsImmortal;
    v35 = 256;
    v38 = 2;
  }

  else
  {
    if (v18)
    {
      v20 = *v19;
    }

    else
    {
      v25 = atomic_load((a2 + 8));
      v20 = &v19[(v25 & 5) != 4];
    }

    v26 = atomic_load((a2 + 8));
    v27 = atomic_load((a2 + 8));
    if ((v27 & 5) == 4)
    {
      v28 = v20->u8[0];
    }

    else
    {
      v29 = atomic_load((a2 + 8));
      if ((v29 & 0x60) != 0)
      {
        v28 = *(a2 + 24);
      }

      else
      {
        v28 = *v19;
      }
    }

    v34 = (v26 >> 2) & 1;
    v35 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v35 = __CFStringComputeEightBitStringEncoding();
    }

    v21 = (v20 + v34);
    v36 = IsImmortal;
    v37 = v28;
    v38 = 0;
  }

  return __CFStringCreateImmutableFunnel3(v36, v21, v37, v35, v38, 0xFFFFFFFFFFFFFFFFLL, 0, a8);
}

const void *__CFGetConverter(uint64_t a1)
{
  switch(a1)
  {
    case 0xFFFFFFFF:
      return 0;
    case 0x8000100:
      v2 = &__CFGetConverter_commonConverters;
      goto LABEL_6;
    case 0:
      v2 = &qword_1ED40BFF8;
LABEL_6:
      os_unfair_lock_lock(&__CFGetConverter_lock);
LABEL_7:
      v3 = 0;
      Value = *v2;
      goto LABEL_8;
  }

  SystemEncoding = CFStringGetSystemEncoding();
  os_unfair_lock_lock(&__CFGetConverter_lock);
  if (SystemEncoding == a1)
  {
    v2 = &qword_1ED40C000;
    goto LABEL_7;
  }

  if (!__CFGetConverter_mappingTable)
  {
    os_unfair_lock_unlock(&__CFGetConverter_lock);
    v2 = 0;
    v3 = 1;
LABEL_9:
    if (a1 > 1535)
    {
      switch(a1)
      {
        case 0x600:
          ExternalConverter = __CFConverterASCII;
          goto LABEL_29;
        case 0xB01:
          ExternalConverter = __CFConverterNextStepLatin;
          goto LABEL_29;
        case 0x8000100:
          ExternalConverter = &__CFConverterUTF8;
          goto LABEL_29;
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          ExternalConverter = __CFConverterMacRoman;
          goto LABEL_29;
        case 0x201:
          ExternalConverter = __CFConverterISOLatin1;
          goto LABEL_29;
        case 0x500:
          ExternalConverter = __CFConverterWinLatin1;
          goto LABEL_29;
      }
    }

    ExternalConverter = __CFStringEncodingGetExternalConverter(a1);
    if (!ExternalConverter)
    {
      return 0;
    }

LABEL_29:
    os_unfair_lock_lock(&__CFGetConverter_lock);
    if (v3)
    {
      if (!__CFGetConverter_mappingTable || (Value = CFDictionaryGetValue(__CFGetConverter_mappingTable, a1)) == 0)
      {
LABEL_34:
        if ((__CFEncodingConverterFromDefinition__currentIndex - 9) > 0xFFFFFFF5)
        {
          Typed = __CFEncodingConverterFromDefinition__allocatedEntries;
          if (__CFEncodingConverterFromDefinition__allocatedEntries)
          {
            v8 = ++__CFEncodingConverterFromDefinition__currentIndex;
            goto LABEL_39;
          }
        }

        else
        {
          __CFEncodingConverterFromDefinition__currentIndex = 0;
          __CFEncodingConverterFromDefinition__allocatedEntries = 0;
        }

        Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 0x1E0uLL, 0xE004030B2989CuLL);
        __CFEncodingConverterFromDefinition__allocatedEntries = Typed;
        v8 = __CFEncodingConverterFromDefinition__currentIndex;
LABEL_39:
        Value = 0;
        v9 = (Typed + 48 * v8);
        v9[1] = 0u;
        v9[2] = 0u;
        *v9 = 0u;
        *v9 = ExternalConverter;
        v10 = *(ExternalConverter + 20);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            *(v9 + 1) = __CFToBytesCheapMultiByteWrapper;
            *(v9 + 2) = __CFToUnicodeCheapMultiByteWrapper;
            v11 = __CFToCanonicalUnicodeCheapMultiByteWrapper;
            goto LABEL_51;
          }

          if (v10 != 4)
          {
            if (v10 != 5)
            {
              goto LABEL_57;
            }

            *(v9 + 1) = __CFStringEncodingGetICUName(a1);
          }
        }

        else
        {
          if (*(ExternalConverter + 20))
          {
            if (v10 == 1)
            {
              *(v9 + 1) = __CFToBytesCheapEightBitWrapper;
              *(v9 + 2) = __CFToUnicodeCheapEightBitWrapper;
              v11 = __CFToCanonicalUnicodeCheapEightBitWrapper;
              goto LABEL_51;
            }

            if (v10 == 2)
            {
              *(v9 + 1) = __CFToBytesStandardEightBitWrapper;
              *(v9 + 2) = __CFToUnicodeStandardEightBitWrapper;
              v11 = __CFToCanonicalUnicodeStandardEightBitWrapper;
LABEL_51:
              *(v9 + 3) = v11;
              goto LABEL_52;
            }

LABEL_57:
            if (v3)
            {
              Mutable = __CFGetConverter_mappingTable;
              if (!__CFGetConverter_mappingTable)
              {
                Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
                __CFGetConverter_mappingTable = Mutable;
              }

              CFDictionarySetValue(Mutable, a1, Value);
            }

            else
            {
              *v2 = Value;
            }

            goto LABEL_62;
          }

          *(v9 + 1) = 0;
          *(v9 + 2) = 0;
          *(v9 + 3) = 0;
        }

LABEL_52:
        v12 = ExternalConverter[5];
        if (!v12)
        {
          v12 = __CFDefaultToBytesFallbackProc;
        }

        *(v9 + 4) = v12;
        v13 = ExternalConverter[6];
        if (!v13)
        {
          v13 = __CFDefaultToUnicodeFallbackProc;
        }

        *(v9 + 5) = v13;
        Value = v9;
        goto LABEL_57;
      }
    }

    else
    {
      Value = *v2;
      if (!*v2)
      {
        goto LABEL_34;
      }
    }

LABEL_62:
    os_unfair_lock_unlock(&__CFGetConverter_lock);
    return Value;
  }

  Value = CFDictionaryGetValue(__CFGetConverter_mappingTable, a1);
  v2 = 0;
  v3 = 1;
LABEL_8:
  os_unfair_lock_unlock(&__CFGetConverter_lock);
  if (!Value)
  {
    goto LABEL_9;
  }

  return Value;
}

void _CFStringFormatAppendMetadata(CFMutableArrayRef *a1, CFIndex a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v15 = *(a5 + 2);
    if ((v15 - 43) >= 2)
    {
      if (v15 == 32)
      {
        if ((*(a5 + 20) & 0x80) == 0)
        {
          return;
        }
      }

      else
      {
        v16 = *(a5 + 24);
        if (v16 < 0)
        {
          return;
        }

        if (v16 >= a4)
        {
          _CFStringFormatAppendMetadata_cold_1();
        }
      }
    }

    if (!*a1)
    {
      *a1 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, a2, &kCFTypeArrayCallBacks);
    }

    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v18 = a8 == 0;
    v19 = a8 != 0;
    v20 = *(a5 + 4);
    if (v18)
    {
      v21 = a6;
    }

    else
    {
      v21 = (a6 + 1);
    }

    v32 = *(a5 + 8);
    valuePtr = v20;
    value[0] = v21;
    v22 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"SpecLocation", v22);
    CFRelease(v22);
    v23 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt32Type, &v32);
    CFDictionarySetValue(Mutable, @"SpecLength", v23);
    CFRelease(v23);
    v24 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, value);
    CFDictionarySetValue(Mutable, @"ReplacementLocation", v24);
    CFRelease(v24);
    v31 = (a7 - v19 - value[0]) & ~((a7 - v19 - value[0]) >> 63);
    v25 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v31);
    CFDictionarySetValue(Mutable, @"ReplacementLength", v25);
    CFRelease(v25);
    v26 = *(a5 + 24);
    if (v26 < 0)
    {
      goto LABEL_26;
    }

    if (v26 < a4 && *(a5 + 2) != 32)
    {
      value[0] = (v26 + 1);
      v27 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, value);
      CFDictionarySetValue(Mutable, @"Index", v27);
      CFRelease(v27);
      LODWORD(v26) = *(a5 + 24);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_26;
      }
    }

    if (v26 >= a4)
    {
      goto LABEL_26;
    }

    *value = *(a3 + 16 * v26);
    if (LOWORD(value[0]) == 33)
    {
      v28 = kCFNumberSInt64Type;
    }

    else
    {
      if (LOWORD(value[0]) != 34)
      {
        if (LOWORD(value[0]) == 37)
        {
          if (value[1])
          {
            CFDictionarySetValue(Mutable, @"Object", value[1]);
          }
        }

        goto LABEL_26;
      }

      v28 = kCFNumberDoubleType;
    }

    v29 = CFNumberCreate(&__kCFAllocatorSystemDefault, v28, &value[1]);
    CFDictionarySetValue(Mutable, @"Number", v29);
    CFRelease(v29);
LABEL_26:
    value[0] = v19;
    v30 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, value);
    CFDictionarySetValue(Mutable, @"AddedIsolates", v30);
    CFRelease(v30);
    CFArrayAppendValue(*a1, Mutable);
    CFRelease(Mutable);
  }
}

void __CFAllocatorSystemDeallocate(void *ptr, malloc_zone_t *zone)
{
  if (zone == &__MallocDefaultZoneInfoPlaceholder)
  {
    zone = malloc_default_zone();
  }

  malloc_zone_free(zone, ptr);
}

void __CFStrDeallocateMutableContents(uint64_t a1, void *a2)
{
  v2 = atomic_load((a1 + 8));
  if ((~v2 & 0x60) != 0)
  {
    if (a1 < 0)
    {
      v3 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v4 = atomic_load((a1 + 8));
      if (v4 < 0)
      {
        v3 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v3 = (a1 - 16);
      }
    }
  }

  else
  {
    v3 = (a1 + 48);
  }

  v5 = *v3;
  v6 = atomic_load((a1 + 8));
  if (v6)
  {
    atomic_load((a1 + 8));
  }

  CFAllocatorDeallocate(v5, a2);
}

__CFString *__CFSearchStringROM(unsigned __int8 *a1, int64_t a2)
{
  if (a2 > 80)
  {
    return 0;
  }

  v4 = __CFStrHashEightBit2(a1, a2);
  v5 = CFStringROMTableHashData[v4];
  if ((v5 & 7) == 0)
  {
    return 0;
  }

  v6 = v5 >> 3;
  v7 = (CFStringROMTableHashData[v4] >> 3) + (CFStringROMTableHashData[v4] & 7);
  while (1)
  {
    v8 = CFStringROMTable[v6];
    if (v8->length == a2 && !memcmp(a1, v8->data, a2))
    {
      break;
    }

    if (++v6 >= v7)
    {
      return 0;
    }
  }

  return v8;
}

void __RELEASE_OBJECTS_IN_THE_SET__(uint64_t a1, int a2)
{
  v2 = &OBJC_IVAR_____NSFrozenSetM_storage;
  if (a2 == 1)
  {
    v2 = &OBJC_IVAR_____NSSetM_storage;
  }

  v3 = a1 + *v2;
  v4 = *(v3 + 12);
  v5 = *(__NSSetSizes_0 + ((v4 >> 23) & 0x1F8));
  v6 = v4 & 0x3FFFFFF;
  v7 = *v3;
  *(v3 + 12) = 0;
  *v3 = 0;
  if ((v4 & 0x3FFFFFF) != 0 && v4 >> 26 != 0)
  {
    v9 = 1;
    v10 = v7;
    do
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = v11 == &___NSSetM_DeletedMarker;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
        }

        --v6;
      }

      if (!v6)
      {
        break;
      }

      ++v10;
    }

    while (v9++ < v5);
  }

  free(v7);
}

CFTypeRef __CFStringCreateImmutableFunnel3(__objc2_class **allocator, int8x16_t *ptr, int64_t a3, unint64_t a4, uint64_t a5, __objc2_class **a6, uint64_t a7, uint64_t a8)
{
  v131 = *MEMORY[0x1E69E9840];
  v8 = (a5 >> 2) & 1;
  v9 = a5 & 0x30;
  v10 = v9 != 0;
  v11 = a3 - v8;
  if (a3 < v8)
  {
    if (dyld_program_sdk_at_least())
    {
      __CFStringCreateImmutableFunnel3_cold_3();
    }

    return 0;
  }

  v13 = a5;
  v14 = a4;
  v15 = a3;
  v120 = a7;
  v123 = (a5 >> 3) & 1;
  if (v123)
  {
    HIDWORD(v22) = a4 - 256;
    LODWORD(v22) = a4 - 256;
    v21 = v22 >> 26;
    if ((v21 - 3) < 5 || !v21)
    {
      if (dyld_program_sdk_at_least())
      {
        __CFStringCreateImmutableFunnel3_cold_1();
      }
    }
  }

  memset(v130, 0, 480);
  v128 = 0u;
  *allocatora = 0u;
  if (!allocator)
  {
    v18 = _CFGetTSD(1);
    if (v18)
    {
      allocator = v18;
    }

    else
    {
      allocator = &__kCFAllocatorSystemDefault;
    }
  }

  v19 = allocator;
  if (a6 == -1)
  {
LABEL_14:
    if (v15)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (!a6)
  {
    v20 = _CFGetTSD(1);
    if (v20)
    {
      v19 = v20;
    }

    else
    {
      v19 = &__kCFAllocatorSystemDefault;
    }

    goto LABEL_14;
  }

  v19 = a6;
  if (v15)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (&__kCFAllocatorSystemDefault != allocator)
  {
    if (allocator || (v23 = v19, Default = CFAllocatorGetDefault(), v19 = v23, v10 = v9 != 0, allocator = 0, &__kCFAllocatorSystemDefault != Default))
    {
LABEL_23:
      BYTE9(v128) = 0;
      if (v14 == 256)
      {
LABEL_24:
        v25 = 0;
        goto LABEL_30;
      }

      v26 = __CFDefaultEightBitStringEncoding;
      if (__CFDefaultEightBitStringEncoding == -1)
      {
        v27 = allocator;
        v28 = v10;
        v29 = v19;
        v26 = __CFStringComputeEightBitStringEncoding();
        v19 = v29;
        v10 = v28;
        allocator = v27;
      }

      if (v14 != 1536 && v26 == v14)
      {
        v25 = 1;
        goto LABEL_30;
      }

      if (BYTE1(v14) <= 7u)
      {
        if (BYTE1(v14) <= 1u)
        {
          if (BYTE1(v14))
          {
            if (v14 != 134217984)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v25 = 0;
            if (v14 <= 0x22 && ((1 << v14) & 0x600000032) != 0 || v14 == 152)
            {
              goto LABEL_30;
            }
          }

LABEL_210:
          v98 = v15;
          v99 = ptr;
          while (v98 > 0x1F)
          {
            v101 = *v99;
            v100 = v99[1];
            v99 += 2;
            v102 = vorrq_s8(v101, v100);
            v98 -= 32;
            if ((*&vorr_s8(*v102.i8, *&vextq_s8(v102, v102, 8uLL)) & 0x8080808080808080) != 0)
            {
              goto LABEL_24;
            }
          }

          while (v98 > 0xF)
          {
            v25 = 0;
            v103 = v99->i64[0];
            v104 = v99->i64[1];
            ++v99;
            v98 -= 16;
            if (((v104 | v103) & 0x8080808080808080) != 0)
            {
              goto LABEL_30;
            }
          }

          while (v98 > 7)
          {
            v25 = 0;
            v105 = v99->i64[0];
            v99 = (v99 + 8);
            v98 -= 8;
            if ((v105 & 0x8080808080808080) != 0)
            {
              goto LABEL_30;
            }
          }

          while (v98 > 3)
          {
            v25 = 0;
            v106 = v99->i32[0];
            v99 = (v99 + 4);
            v98 -= 4;
            if ((v106 & 0x80808080) != 0)
            {
              goto LABEL_30;
            }
          }

          v107 = 0;
          do
          {
            v25 = v98 == v107;
            if (v98 == v107)
            {
              break;
            }

            v108 = v99->i8[v107++];
          }

          while ((v108 & 0x80000000) == 0);
LABEL_30:
          v30 = (v13 & 1) == 0;
          if (v14 != 256)
          {
            v30 = v25;
          }

          if (!v30)
          {
            v117 = allocator;
            v40 = v10;
            v41 = v19;
            LOBYTE(v127) = 0;
            allocatora[0] = &__kCFAllocatorSystemDefault;
            *&v128 = 0;
            if (!__CFStringDecodeByteStream3((ptr->u32 + v8), v11, v14, 0, &v128, &v127, v120))
            {
              return 0;
            }

            v25 = BYTE8(v128);
            if (BYTE8(v128))
            {
              LODWORD(v14) = 1536;
            }

            else
            {
              LODWORD(v14) = 256;
            }

            if (v127)
            {
              LODWORD(v39) = v123;
              v19 = v41;
              v10 = v40;
              allocator = v117;
            }

            else
            {
              v15 = allocatora[1] << (BYTE8(v128) == 0);
              if (v9 && v41 != &__kCFAllocatorNull)
              {
                CFAllocatorDeallocate(v41, ptr);
              }

              allocator = v117;
              if (BYTE9(v128) && v117 == allocatora[0] && !v25)
              {
                BYTE9(v128) = 0;
                ptr = __CFSafelyReallocateWithAllocatorTyped(allocatora[0], v128, v15, 1660038070, 0);
                LODWORD(v39) = 0;
                LODWORD(v8) = 0;
                v10 = 1;
              }

              else
              {
                v10 = 0;
                LODWORD(v39) = 0;
                LODWORD(v8) = 0;
                ptr = v128;
              }

              v19 = v117;
            }

            goto LABEL_90;
          }

          if (v14 == 256 && (v13 & 2) != 0)
          {
            v116 = v9;
            v31 = v15 >> 1;
            if (v15 < 2)
            {
LABEL_39:
              v33 = v15 < 0x200;
              if (v15 >= 0x200)
              {
                v34 = v15 >> 1;
              }

              else
              {
                v34 = v31 + 1;
              }

              v14 = v34 + 1;
              if (v34 + 1 < 0x3F0)
              {
                v37 = v130;
              }

              else
              {
                v121 = v10;
                v35 = v19;
                Typed = CFAllocatorAllocateTyped(allocator, v34 + 1, 0x100004077774924uLL);
                v37 = Typed;
                if (__CFOASafe == 1)
                {
                  v115 = v14;
                  v38 = Typed;
                  __CFSetLastAllocationEventName();
                  v37 = v38;
                  v14 = v115;
                }

                v19 = v35;
                v33 = v15 < 0x200;
                if (!v37)
                {
                  v15 = v14;
                  LODWORD(v14) = 256;
                  LODWORD(v39) = v123;
                  v10 = v121;
LABEL_90:
                  v31 = v15 - v8;
                  if (!v25)
                  {
                    LODWORD(v33) = v8;
LABEL_128:
                    v62 = v10;
                    if (v10)
                    {
                      v125 = v39;
                      v63 = v19;
                      v64 = v19 == &__kCFAllocatorNull || v19 == allocator;
                      v65 = 16;
                      if (v64)
                      {
                        v65 = 8;
                      }

                      v66 = v33;
                      if (v33)
                      {
                        v67 = v65;
                      }

                      else
                      {
                        v67 = v65 + 8;
                      }
                    }

                    else
                    {
                      if (v33)
                      {
                        v66 = 1;
                        v68 = v15;
                      }

                      else if (v14 == 256 || v15 > 255)
                      {
                        v66 = 0;
                        v68 = v15 + 8;
                      }

                      else
                      {
                        v68 = v15 + 1;
                        v66 = 1;
                      }

                      v63 = v19;
                      if (v14 == 256)
                      {
                        v39 = v39;
                      }

                      else
                      {
                        v39 = 1;
                      }

                      v125 = v39;
                      v67 = v68 + v39;
                    }

                    Instance = _CFRuntimeCreateInstance(allocator, 7uLL, v67, 0, a5, a6, a7, a8);
                    if (Instance)
                    {
                      if (__CFOASafe == 1)
                      {
                        __CFSetLastAllocationEventName();
                      }

                      v76 = 96;
                      if (v63 == &__kCFAllocatorNull)
                      {
                        v76 = 64;
                      }

                      if (v63 == allocator)
                      {
                        v77 = 32;
                      }

                      else
                      {
                        v77 = v76;
                      }

                      v78 = atomic_load((Instance + 8));
                      if (!v62)
                      {
                        v77 = 0;
                      }

                      v79 = v78;
                      do
                      {
                        atomic_compare_exchange_strong((Instance + 8), &v79, v78 & 0xFFFFFFFFFFFFFF9FLL | v77);
                        v64 = v79 == v78;
                        v78 = v79;
                      }

                      while (!v64);
                      v80 = atomic_load((Instance + 8));
                      v81 = v80;
                      v82 = v66;
                      do
                      {
                        atomic_compare_exchange_strong((Instance + 8), &v81, v80 & 0xFFFFFFFFFFFFFFEFLL | (16 * (v14 == 256)));
                        v64 = v81 == v80;
                        v80 = v81;
                      }

                      while (!v64);
                      v83 = atomic_load((Instance + 8));
                      v84 = v83;
                      do
                      {
                        atomic_compare_exchange_strong((Instance + 8), &v84, v83 & 0xFFFFFFFFFFFFFFF7 | (8 * v125));
                        v64 = v84 == v83;
                        v83 = v84;
                      }

                      while (!v64);
                      v85 = atomic_load((Instance + 8));
                      v86 = v85;
                      do
                      {
                        atomic_compare_exchange_strong((Instance + 8), &v86, v85 & 0xFFFFFFFFFFFFFFFBLL | (4 * v66));
                        v64 = v86 == v85;
                        v85 = v86;
                      }

                      while (!v64);
                      if ((v66 & 1) == 0)
                      {
                        v87 = atomic_load((Instance + 8));
                        v64 = (v87 & 0x60) == 0;
                        v88 = 24;
                        if (v64)
                        {
                          v88 = 16;
                        }

                        *(Instance + v88) = v31 >> (v14 == 256);
                      }

                      if (v62)
                      {
                        *(Instance + 16) = ptr;
                        v89 = atomic_load((Instance + 8));
                        if ((~v89 & 0x60) == 0)
                        {
                          CFRetain(v63);
                          v90 = atomic_load((Instance + 8));
                          v64 = (v90 & 5) == 4;
                          v91 = 32;
                          if (v64)
                          {
                            v91 = 24;
                          }

                          *(Instance + v91) = v63;
                        }
                      }

                      else
                      {
                        v92 = atomic_load((Instance + 8));
                        v93 = (Instance + 16);
                        if ((v92 & 0x60) != 0)
                        {
                          v94 = *v93;
                        }

                        else
                        {
                          v95 = atomic_load((Instance + 8));
                          v94 = &v93[(v95 & 5) != 4];
                        }

                        if (v82)
                        {
                          v96 = v8;
                        }

                        else
                        {
                          v96 = 1;
                        }

                        if ((v96 & 1) == 0)
                        {
                          *v94++ = v15;
                        }

                        memmove(v94, ptr, v15);
                        if (v125)
                        {
                          v94[v15] = 0;
                        }
                      }
                    }

                    else if (v62 && v63 != &__kCFAllocatorNull)
                    {
                      CFAllocatorDeallocate(v63, ptr);
                      Instance = 0;
                    }

                    goto LABEL_197;
                  }

                  v49 = &ptr->u8[v8];
                  v37 = ptr;
                  LODWORD(v33) = v8;
LABEL_92:
                  if (__CFTaggedStringClass)
                  {
                    if (v31 > 7)
                    {
                      if (v31 <= 0xB)
                      {
                        if (v31 >= 0xA)
                        {
                          v53 = 0;
                          v58 = v31;
                          v59 = v49;
                          while (1)
                          {
                            v60 = charToSixBitLookup_1[*v59];
                            if (v60 > 0x1F)
                            {
                              break;
                            }

                            v53 = v60 | (32 * v53);
                            ++v59;
                            if (!--v58)
                            {
LABEL_117:
                              Instance = (v53 << 7) | (8 * v31) | 0x8000000000000002;
                              v61 = Instance ^ *MEMORY[0x1E69E5910];
                              if ((~v61 & 0xC000000000000007) == 0)
                              {
                                goto LABEL_120;
                              }

                              Instance = v61 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v61 & 7));
                              goto LABEL_119;
                            }
                          }
                        }

                        else
                        {
                          v53 = 0;
                          v54 = v31;
                          v55 = v49;
                          while (1)
                          {
                            v56 = charToSixBitLookup_1[*v55];
                            if (v56 > 0x3F)
                            {
                              break;
                            }

                            v53 = v56 | (v53 << 6);
                            ++v55;
                            if (!--v54)
                            {
                              goto LABEL_117;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      v124 = v37;
                      v127 = 0;
                      v50 = v33;
                      v51 = v39;
                      v122 = v10;
                      v52 = v19;
                      v118 = v49;
                      __memmove_chk();
                      if ((v127 & 0x8080808080808080) != 0)
                      {
                        v19 = v52;
                        v10 = v122;
                        LODWORD(v39) = v51;
                        LODWORD(v33) = v50;
                        v37 = v124;
                        v49 = v118;
                      }

                      else
                      {
                        Instance = (8 * v31) | (v127 << 7) | 0x8000000000000002;
                        v57 = *MEMORY[0x1E69E5910] ^ Instance;
                        v19 = v52;
                        LODWORD(v39) = v51;
                        LODWORD(v33) = v50;
                        v37 = v124;
                        if ((~v57 & 0xC000000000000007) != 0)
                        {
                          Instance = v57 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v57 & 7));
                        }

                        v10 = v122;
                        v49 = v118;
LABEL_119:
                        if (Instance)
                        {
LABEL_120:
                          ptr = 0;
                          if (!v10 || v19 == &__kCFAllocatorNull)
                          {
LABEL_197:
                            if (BYTE9(v128))
                            {
                              CFAllocatorDeallocate(allocatora[0], ptr);
                            }

                            return Instance;
                          }

                          CFAllocatorDeallocate(v19, v37);
LABEL_147:
                          ptr = 0;
                          goto LABEL_197;
                        }
                      }
                    }
                  }

                  if ((v13 & 0x20) != 0)
                  {
                    goto LABEL_127;
                  }

                  if (__CFStringCreateImmutableFunnel3_onceToken != -1)
                  {
                    v119 = allocator;
                    v109 = v10;
                    v110 = v19;
                    v111 = v39;
                    v112 = v33;
                    v113 = v37;
                    v114 = v49;
                    __CFStringCreateImmutableFunnel3_cold_2();
                    v49 = v114;
                    v37 = v113;
                    LODWORD(v33) = v112;
                    LODWORD(v39) = v111;
                    v19 = v110;
                    v10 = v109;
                    allocator = v119;
                  }

                  if (__CFStringCreateImmutableFunnel3_sDisableStringROM)
                  {
LABEL_127:
                    ptr = v37;
                    goto LABEL_128;
                  }

                  v69 = v37;
                  v126 = v33;
                  v70 = v39;
                  v71 = allocator;
                  v72 = v10;
                  v73 = v19;
                  v74 = __CFSearchStringROM(v49, v31);
                  if (!v74)
                  {
                    ptr = v69;
                    v19 = v73;
                    v10 = v72;
                    allocator = v71;
                    LODWORD(v39) = v70;
                    LODWORD(v33) = v126;
                    goto LABEL_128;
                  }

                  v75 = v74;
                  if (v72 && v73 != &__kCFAllocatorNull)
                  {
                    CFAllocatorDeallocate(v73, v69);
                  }

                  Instance = CFRetain(v75);
                  goto LABEL_147;
                }
              }

              v45 = v37;
              if (v15 > 0x1FF || (v37->i8[0] = v31, v45 = &v37->i8[1], v15 >= 2))
              {
                v46 = 0;
                do
                {
                  v45->i8[v46] = ptr->i16[v46];
                  ++v46;
                }

                while (v31 != v46);
              }

              v45->i8[v31] = 0;
              if (v116 && v19 != &__kCFAllocatorNull)
              {
                v47 = v33;
                v48 = v37;
                CFAllocatorDeallocate(v19, ptr);
                v37 = v48;
                v33 = v47;
              }

              v10 = v14 > 0x3EF;
              v15 = v31 + v33;
              v49 = &v37->u8[v33];
              LODWORD(v39) = 1;
              LODWORD(v14) = 1536;
              LOBYTE(v8) = v33;
              v19 = allocator;
              goto LABEL_92;
            }

            v32 = 0;
            while (ptr->u16[v32] <= 0x7Fu)
            {
              if (v31 == ++v32)
              {
                goto LABEL_39;
              }
            }

            LODWORD(v14) = 256;
          }

          LODWORD(v39) = v123;
          goto LABEL_90;
        }

        if (BYTE1(v14) == 2)
        {
          if (v14 == 518)
          {
            goto LABEL_24;
          }

          goto LABEL_210;
        }

        if (BYTE1(v14) == 6)
        {
          if (v14 != 1536)
          {
            goto LABEL_24;
          }

          goto LABEL_210;
        }

LABEL_112:
        if ((v14 & 0xFF00) > 0xC00)
        {
          goto LABEL_24;
        }

        goto LABEL_210;
      }

      v25 = 0;
      if (BYTE1(v14) > 0xAu)
      {
        if (BYTE1(v14) != 11)
        {
          if (BYTE1(v14) == 12)
          {
            goto LABEL_30;
          }

          goto LABEL_112;
        }

        if ((v14 - 3059) > 0xC)
        {
          goto LABEL_210;
        }

        v43 = 1 << (v14 + 13);
        v44 = 4099;
      }

      else
      {
        if (BYTE1(v14) == 8)
        {
          goto LABEL_30;
        }

        if (BYTE1(v14) != 10)
        {
          goto LABEL_112;
        }

        if ((v14 - 2561) > 0xF)
        {
          goto LABEL_210;
        }

        v43 = 1 << (v14 - 1);
        v44 = 32785;
      }

      if ((v43 & v44) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_210;
    }
  }

  if (v9 && v19 != &__kCFAllocatorNull)
  {
    CFAllocatorDeallocate(v19, ptr);
  }

  return CFRetain(&stru_1EF068AA8);
}

char *_CFStringGetCStringPtrInternal(unint64_t *a1, unsigned int a2, int a3, int a4)
{
  if ((a1 & 0x8000000000000000) != 0 && a4)
  {
    v8 = 0;
    v9 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      LOBYTE(v9) = 0;
    }

    v10 = (v9 ^ a1) & 7;
    while (v10 != *(MEMORY[0x1E69E5900] + v8))
    {
      if (++v8 == 7)
      {
        goto LABEL_10;
      }
    }

    if (v8 == 2)
    {
      return 0;
    }
  }

LABEL_10:
  v11 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v11 = __CFStringComputeEightBitStringEncoding();
  }

  if (v11 == a2)
  {
    if (!a1)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v13 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v13 = __CFStringComputeEightBitStringEncoding();
  }

  if (v13 != 1536)
  {
    return 0;
  }

  if (BYTE1(a2) > 7u)
  {
    result = 0;
    if (BYTE1(a2) > 0xAu)
    {
      if (BYTE1(a2) == 11)
      {
        if (a2 == 3071)
        {
          return 0;
        }

        v21 = __CFADD__(a2 - 3061, 2);
        goto LABEL_57;
      }

      if (BYTE1(a2) == 12)
      {
        return result;
      }
    }

    else
    {
      if (BYTE1(a2) == 8)
      {
        return result;
      }

      if (BYTE1(a2) == 10)
      {
        v20 = 1;
        if (a2 - 2561 <= 0xF && ((1 << (a2 - 1)) & 0x8011) != 0)
        {
          return 0;
        }

        goto LABEL_60;
      }
    }
  }

  else
  {
    if (BYTE1(a2) <= 1u)
    {
      if (!BYTE1(a2))
      {
        result = 0;
        if (a2 <= 0x22 && ((1 << a2) & 0x600000032) != 0 || a2 == 152)
        {
          return result;
        }

        v20 = 1;
        goto LABEL_60;
      }

      v14 = a2 == 134217984;
      goto LABEL_42;
    }

    if (BYTE1(a2) == 2)
    {
      v20 = a2 != 518;
      goto LABEL_60;
    }

    if (BYTE1(a2) == 6)
    {
      v14 = a2 == 1536;
LABEL_42:
      v20 = v14;
      goto LABEL_60;
    }
  }

  v21 = (a2 & 0xFF00) >= 0xC01;
LABEL_57:
  v20 = !v21;
LABEL_60:
  result = 0;
  if (!a1 || !v20)
  {
    return result;
  }

LABEL_14:
  if (a4 && CF_IS_OBJC(7uLL, a1))
  {

    return [a1 _fastCStringContents:a3 != 0];
  }

  if (a3 || (v15 = atomic_load(a1 + 1), (v15 & 0x10) != 0))
  {
    v16 = atomic_load(a1 + 1);
    if ((v16 & 8) == 0)
    {
      return 0;
    }
  }

  v17 = atomic_load(a1 + 1);
  v18 = a1 + 2;
  if ((v17 & 0x60) != 0)
  {
    v19 = *v18;
  }

  else
  {
    v22 = atomic_load(a1 + 1);
    v19 = &v18[(v22 & 5) != 4];
  }

  v23 = atomic_load(a1 + 1);
  return v19 + ((v23 >> 2) & 1);
}

BOOL __CFStringEqual(CFStringRef theString, CFStringRef a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(&theString->info);
  p_data = &theString->data;
  if ((v4 & 0x60) != 0)
  {
    v6 = *p_data;
  }

  else
  {
    v7 = atomic_load(&theString->info);
    v6 = &p_data[(v7 & 5) != 4];
  }

  v8 = atomic_load(&a2->info);
  v9 = &a2->data;
  if ((v8 & 0x60) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v11 = atomic_load(&a2->info);
    v10 = &v9[(v11 & 5) != 4];
  }

  v12 = atomic_load(&theString->info);
  if ((v12 & 5) == 4)
  {
    length = *v6;
  }

  else
  {
    v14 = atomic_load(&theString->info);
    if ((v14 & 0x60) != 0)
    {
      length = theString->length;
    }

    else
    {
      length = *p_data;
    }
  }

  v15 = atomic_load(&a2->info);
  if ((v15 & 5) == 4)
  {
    v16 = *v10;
  }

  else
  {
    v17 = atomic_load(&a2->info);
    if ((v17 & 0x60) != 0)
    {
      v16 = a2->length;
    }

    else
    {
      v16 = *v9;
    }
  }

  if (length != v16)
  {
    return 0;
  }

  v18 = atomic_load(&theString->info);
  v19 = &v6[(v18 >> 2) & 1];
  v20 = atomic_load(&a2->info);
  v21 = &v10[(v20 >> 2) & 1];
  v22 = atomic_load(&theString->info);
  if ((v22 & 0x10) == 0)
  {
    v23 = atomic_load(&a2->info);
    if ((v23 & 0x10) == 0)
    {
      return memcmp(v19, v21, length) == 0;
    }
  }

  v25 = atomic_load(&theString->info);
  if ((v25 & 0x10) == 0)
  {
    v85 = 0u;
    v83 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    theStringa[0] = theString;
    v87 = 0;
    v86 = length;
    theStringa[1] = CFStringGetCharactersPtr(theString);
    if (theStringa[1])
    {
      goto LABEL_23;
    }

    v32 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v32 = __CFStringComputeEightBitStringEncoding();
    }

    if (v32 != 1536)
    {
      v33 = __CFDefaultEightBitStringEncoding;
      if (__CFDefaultEightBitStringEncoding == -1)
      {
        v33 = __CFStringComputeEightBitStringEncoding();
      }

      if (v33 != 1536)
      {
        goto LABEL_23;
      }
    }

    p_info = &theString->info;
    v35 = atomic_load(&theString->info);
    if ((v35 & 0x10) == 0 || (v36 = atomic_load(p_info), (v36 & 8) != 0))
    {
      v37 = atomic_load(p_info);
      if ((v37 & 0x60) != 0)
      {
        v38 = *p_data;
      }

      else
      {
        v46 = atomic_load(&theString->info);
        v38 = &p_data[(v46 & 5) != 4];
      }

      v47 = atomic_load(&theString->info);
      v26 = &v38[(v47 >> 2) & 1];
    }

    else
    {
LABEL_23:
      v26 = 0;
    }

    *(&v86 + 1) = 0;
    v87 = 0;
    *&v85 = v26;
    if (length >= 1)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      for (i = 64; ; ++i)
      {
        if (v50 >= 4)
        {
          v52 = 4;
        }

        else
        {
          v52 = v50;
        }

        if (theStringa[1])
        {
          v53 = theStringa[1] + 2 * *(&v85 + 1);
        }

        else
        {
          if (v85)
          {
            v54 = *(v85 + *(&v85 + 1) + v50);
            goto LABEL_64;
          }

          if (v87 <= v50 || v49 > v50)
          {
            v56 = -v52;
            v57 = v52 + v48;
            v58 = i - v52;
            v59 = v50 + v56;
            v60 = v59 + 64;
            if (v59 + 64 >= v86)
            {
              v60 = v86;
            }

            *(&v86 + 1) = v59;
            v87 = v60;
            if (v86 < v58)
            {
              v58 = v86;
            }

            v89.location = v59 + *(&v85 + 1);
            v89.length = v58 + v57;
            CFStringGetCharacters(theStringa[0], v89, &v76);
            v49 = *(&v86 + 1);
          }

          v53 = &v76 - 2 * v49;
        }

        v54 = *&v53[2 * v50];
LABEL_64:
        if (*&v21[2 * v50] != v54)
        {
          return 0;
        }

        ++v50;
        --v48;
        if (length == v50)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v27 = atomic_load(&a2->info);
  if ((v27 & 0x10) != 0)
  {
    if (length < 1)
    {
      return 1;
    }

    result = 1;
    while (1)
    {
      v30 = *v19;
      v19 += 2;
      v29 = v30;
      v31 = *v21;
      v21 += 2;
      if (v29 != v31)
      {
        break;
      }

      if (!--length)
      {
        return result;
      }
    }

    return 0;
  }

  v85 = 0u;
  v83 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  theStringa[0] = a2;
  v87 = 0;
  v86 = length;
  theStringa[1] = CFStringGetCharactersPtr(a2);
  if (theStringa[1])
  {
    goto LABEL_26;
  }

  v39 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v39 = __CFStringComputeEightBitStringEncoding();
  }

  if (v39 != 1536)
  {
    v40 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v40 = __CFStringComputeEightBitStringEncoding();
    }

    if (v40 != 1536)
    {
      goto LABEL_26;
    }
  }

  v41 = &a2->info;
  v42 = atomic_load(&a2->info);
  if ((v42 & 0x10) == 0 || (v43 = atomic_load(v41), (v43 & 8) != 0))
  {
    v44 = atomic_load(v41);
    if ((v44 & 0x60) != 0)
    {
      v45 = *v9;
    }

    else
    {
      v61 = atomic_load(&a2->info);
      v45 = &v9[(v61 & 5) != 4];
    }

    v62 = atomic_load(&a2->info);
    v28 = &v45[(v62 >> 2) & 1];
  }

  else
  {
LABEL_26:
    v28 = 0;
  }

  *(&v86 + 1) = 0;
  v87 = 0;
  *&v85 = v28;
  if (length >= 1)
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 64;
    do
    {
      if (v65 >= 4)
      {
        v67 = 4;
      }

      else
      {
        v67 = v65;
      }

      if (theStringa[1])
      {
        v68 = theStringa[1] + 2 * *(&v85 + 1);
      }

      else
      {
        if (v85)
        {
          v69 = *(v85 + *(&v85 + 1) + v65);
          goto LABEL_89;
        }

        if (v87 <= v65 || v64 > v65)
        {
          v71 = -v67;
          v72 = v67 + v63;
          v73 = v66 - v67;
          v74 = v65 + v71;
          v75 = v74 + 64;
          if (v74 + 64 >= v86)
          {
            v75 = v86;
          }

          *(&v86 + 1) = v74;
          v87 = v75;
          if (v86 < v73)
          {
            v73 = v86;
          }

          v90.location = v74 + *(&v85 + 1);
          v90.length = v73 + v72;
          CFStringGetCharacters(theStringa[0], v90, &v76);
          v64 = *(&v86 + 1);
        }

        v68 = &v76 - 2 * v64;
      }

      v69 = *&v68[2 * v65];
LABEL_89:
      if (*&v19[2 * v65] != v69)
      {
        return 0;
      }

      ++v65;
      --v63;
      ++v66;
    }

    while (length != v65);
  }

  return 1;
}

void CFStringAppendCString(CFMutableStringRef theString, const char *cStr, CFStringEncoding encoding)
{
  v3 = atomic_load(&theString->info);
  if (v3)
  {
    v12 = *&encoding;
    v15 = strlen(cStr);

    __CFStringAppendBytes(theString, cStr, v15, v12);
  }

  else
  {
    v4 = _CFOSLog(theString, cStr);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      CFStringAppendCString_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

char *copyBlocks(char *result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = result;
  v10 = a4 != 0;
  if (a7 < 1)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v11 = a7;
    v12 = 0;
    v13 = 0;
    v14 = a8 << (a5 != 0);
    v15 = a4 != a5;
    v16 = (a6 + 8);
    do
    {
      v17 = *(v16 - 1);
      v18 = (v17 << v10) - v12;
      if (v18 >= 1)
      {
        if (a4 == a5)
        {
          result = memmove((a2 + v13), &v22[v12], (v17 << v10) - v12);
        }

        else
        {
          result = __CFStrConvertBytesToUnicode(&v22[v12], (a2 + v13), v18);
        }
      }

      v19 = *v16;
      v16 += 2;
      v12 = (v19 + v17) << v10;
      v13 += v14 + (v18 << v15);
      --v11;
    }

    while (v11);
  }

  v20 = (a3 << v10) - v12;
  if (a3 << v10 > v12)
  {
    if (a4 == a5)
    {

      return memmove((a2 + v13), &v22[v12], v20);
    }

    else
    {

      return __CFStrConvertBytesToUnicode(&v22[v12], (a2 + v13), v20);
    }
  }

  return result;
}

unint64_t _CFStringGetLength2(unint64_t *a1)
{
  v1 = atomic_load(a1 + 1);
  v2 = v1 & 5;
  v3 = atomic_load(a1 + 1);
  v4 = v3 & 0x60;
  if (v2 == 4)
  {
    v5 = a1 + 2;
    if (v4)
    {
      v6 = *v5;
    }

    else
    {
      v8 = atomic_load(a1 + 1);
      v6 = &v5[(v8 & 5) != 4];
    }

    return *v6;
  }

  else if ((v3 & 0x60) != 0)
  {
    return a1[3];
  }

  else
  {
    return a1[2];
  }
}

void CFAllocatorDeallocate(CFAllocatorRef allocator, void *ptr)
{
  if (!allocator)
  {
    allocator = _CFGetTSD(1);
    if (!allocator)
    {
      allocator = &__kCFAllocatorSystemDefault;
    }
  }

  v3 = *allocator & ~MEMORY[0x1E69E58F0];
  if ((*allocator & MEMORY[0x1E69E58F0]) != 0)
  {
    v3 |= *allocator & MEMORY[0x1E69E58F0];
  }

  if (v3 == qword_1ED40C0D0)
  {
    if (ptr)
    {
      v4 = *(allocator + 24);
      if (v4)
      {
        v5 = *(allocator + 18);

        v4(ptr, v5);
      }
    }
  }

  else
  {

    malloc_zone_free(allocator, ptr);
  }
}

uint64_t __CFStrHashEightBit2(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 97)
  {
    v5 = 0;
    v4 = a2;
    do
    {
      v4 = *(__CFCharToUniCharTable + 2 * a1[v5 + 3]) + 67503105 * v4 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * a1[v5]) + *(__CFCharToUniCharTable + 2 * a1[v5 + 1])) + *(__CFCharToUniCharTable + 2 * a1[v5 + 2]));
      v6 = v5 >= 0x1C;
      v5 += 4;
    }

    while (!v6);
    v7 = 0;
    do
    {
      v8 = &a1[(a2 >> 1) - 16];
      v4 = *(__CFCharToUniCharTable + 2 * v8[v7 + 3]) + 67503105 * v4 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * v8[v7]) + *(__CFCharToUniCharTable + 2 * v8[v7 + 1])) + *(__CFCharToUniCharTable + 2 * v8[v7 + 2]));
      v9 = v7 - 16;
      v7 += 4;
    }

    while (v9 < 12);
    v10 = &a1[a2 - 32];
    do
    {
      v4 = *(__CFCharToUniCharTable + 2 * v10[3]) + 67503105 * v4 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * *v10) + *(__CFCharToUniCharTable + 2 * v10[1])) + *(__CFCharToUniCharTable + 2 * v10[2]));
      v10 += 4;
    }

    while (v10 < &a1[a2]);
  }

  else
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) < 1)
    {
      v2 = a1;
      v4 = a2;
      v3 = a1;
    }

    else
    {
      v2 = a1;
      v3 = a1;
      v4 = a2;
      do
      {
        v4 = *(__CFCharToUniCharTable + 2 * v3[3]) + 67503105 * v4 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * *v3) + *(__CFCharToUniCharTable + 2 * v3[1])) + *(__CFCharToUniCharTable + 2 * v3[2]));
        v3 += 4;
        v2 += 4;
      }

      while (v3 < &a1[a2 & 0xFFFFFFFFFFFFFFFCLL]);
    }

    if (v3 < &a1[a2])
    {
      v11 = (&a1[a2] - v2);
      do
      {
        v12 = *v3++;
        v4 = 257 * v4 + *(__CFCharToUniCharTable + 2 * v12);
        --v11;
      }

      while (v11);
    }
  }

  return (v4 << (a2 & 0x1F)) + v4;
}

void __CFStringDeallocate(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = atomic_load((a1 + 8));
  if ((v2 & 0x60) == 0)
  {
    return;
  }

  v4 = atomic_load(v1);
  v5 = atomic_load(v1);
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_11;
  }

  v6 = atomic_load((a1 + 8));
  v7 = (a1 + 16);
  if ((v6 & 0x60) != 0)
  {
    v8 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }

LABEL_11:
    if ((v4 & 1) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

  v15 = atomic_load((a1 + 8));
  v8 = &v7[(v15 & 5) != 4];
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v4)
  {
    __CFStrDeallocateMutableContents(a1, v8);
LABEL_14:
    v16 = atomic_load((a1 + 8));
    if ((~v16 & 0x60) != 0)
    {
      return;
    }

    v14 = *(a1 + 48);
    goto LABEL_16;
  }

  v9 = atomic_load((a1 + 8));
  if ((~v9 & 0x60) == 0)
  {
    v10 = atomic_load((a1 + 8));
    v11 = (v10 & 5) == 4;
    v12 = 32;
    if (v11)
    {
      v12 = 24;
    }

    v13 = *(a1 + v12);
    CFAllocatorDeallocate(v13, v8);
    v14 = v13;
LABEL_16:

    CFRelease(v14);
    return;
  }

  if (a1 < 0)
  {
    v17 = &kCFAllocatorSystemDefault;
  }

  else
  {
    v18 = atomic_load((a1 + 8));
    if (v18 < 0)
    {
      v17 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v17 = (a1 - 16);
    }
  }

  v19 = *v17;

  CFAllocatorDeallocate(v19, v8);
}

void *CFStringEncodingIsValidEncoding(unsigned int a1)
{
  result = __CFGetConverter(a1);
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t __CFStringHash(uint64_t a1)
{
  v1 = atomic_load((a1 + 8));
  v2 = (a1 + 16);
  if ((v1 & 0x60) != 0)
  {
    v3 = *v2;
  }

  else
  {
    v4 = atomic_load((a1 + 8));
    v3 = &v2[(v4 & 5) != 4];
  }

  v5 = atomic_load((a1 + 8));
  if ((v5 & 5) == 4)
  {
    v6 = *v3;
  }

  else
  {
    v7 = atomic_load((a1 + 8));
    if ((v7 & 0x60) != 0)
    {
      v6 = *(a1 + 24);
    }

    else
    {
      v6 = *v2;
    }
  }

  v8 = atomic_load((a1 + 8));
  if ((v8 & 0x10) != 0)
  {
    if (v6 >= 97)
    {
      v24 = 0;
      v14 = v6;
      do
      {
        v14 = v3[v24 + 3] + 67503105 * v14 + 257 * (257 * (257 * v3[v24] + v3[v24 + 1]) + v3[v24 + 2]);
        v18 = v24 >= 28;
        v24 += 4;
      }

      while (!v18);
      v25 = 0;
      do
      {
        v26 = v3 + (v6 & 0xFFFFFFFFFFFFFFFELL) - 32;
        v14 = *(v26 + v25 + 6) + 67503105 * v14 + 257 * (257 * (257 * *(v26 + v25) + *(v26 + v25 + 2)) + *(v26 + v25 + 4));
        v27 = v25 - 32;
        v25 += 8;
      }

      while (v27 < 24);
      v28 = &v3[v6];
      v29 = v28 - 32;
      do
      {
        v14 = v29[3] + 67503105 * v14 + 257 * (257 * (257 * *v29 + v29[1]) + v29[2]);
        v29 += 4;
      }

      while (v29 < v28);
    }

    else
    {
      v15 = &v3[v6];
      if ((v6 & 0xFFFFFFFFFFFFFFFCLL) < 1)
      {
        v14 = v6;
      }

      else
      {
        v16 = &v3[v6 & 0xFFFFFFFFFFFFFFFCLL];
        v14 = v6;
        do
        {
          v14 = v3[3] + 67503105 * v14 + 257 * (257 * (257 * *v3 + v3[1]) + v3[2]);
          v3 += 4;
        }

        while (v3 < v16);
      }

      while (v3 < v15)
      {
        v31 = *v3++;
        v14 = 257 * v14 + v31;
      }
    }
  }

  else
  {
    v9 = atomic_load((a1 + 8));
    v10 = (v9 >> 2) & 1;
    v11 = v3 + v10;
    if (v6 >= 97)
    {
      v17 = 0;
      v14 = v6;
      do
      {
        v14 = *(__CFCharToUniCharTable + 2 * *(v3 + v10 + v17 + 3)) + 67503105 * v14 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * *(v3 + v10 + v17)) + *(__CFCharToUniCharTable + 2 * *(v3 + v10 + v17 + 1))) + *(__CFCharToUniCharTable + 2 * *(v3 + v10 + v17 + 2)));
        v18 = v17 >= 0x1C;
        v17 += 4;
      }

      while (!v18);
      v19 = 0;
      v20 = v3 + v10 + (v6 >> 1) - 16;
      do
      {
        v14 = *(__CFCharToUniCharTable + 2 * *(v20 + v19 + 3)) + 67503105 * v14 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * *(v20 + v19)) + *(__CFCharToUniCharTable + 2 * *(v20 + v19 + 1))) + *(__CFCharToUniCharTable + 2 * *(v20 + v19 + 2)));
        v21 = v19 - 16;
        v19 += 4;
      }

      while (v21 < 12);
      v22 = &v11[v6];
      v23 = &v11[v6 - 32];
      do
      {
        v14 = *(__CFCharToUniCharTable + 2 * v23[3]) + 67503105 * v14 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * *v23) + *(__CFCharToUniCharTable + 2 * v23[1])) + *(__CFCharToUniCharTable + 2 * v23[2]));
        v23 += 4;
      }

      while (v23 < v22);
    }

    else
    {
      v12 = &v11[v6];
      if ((v6 & 0xFFFFFFFFFFFFFFFCLL) < 1)
      {
        v14 = v6;
      }

      else
      {
        v13 = &v11[v6 & 0xFFFFFFFFFFFFFFFCLL];
        v14 = v6;
        do
        {
          v14 = *(__CFCharToUniCharTable + 2 * v11[3]) + 67503105 * v14 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * *v11) + *(__CFCharToUniCharTable + 2 * v11[1])) + *(__CFCharToUniCharTable + 2 * v11[2]));
          v11 += 4;
        }

        while (v11 < v13);
      }

      for (; v11 < v12; v14 = 257 * v14 + *(__CFCharToUniCharTable + 2 * v30))
      {
        v30 = *v11++;
      }
    }
  }

  return (v14 << (v6 & 0x1F)) + v14;
}

Boolean CFStringFindWithOptionsAndLocale(CFStringRef theString, CFStringRef stringToFind, CFRange rangeToSearch, CFStringCompareFlags searchOptions, CFLocaleRef locale, CFRange *result)
{
  length = rangeToSearch.length;
  location = rangeToSearch.location;
  v436 = *MEMORY[0x1E69E9840];
  v12 = CFStringGetLength(stringToFind);
  *theSet = 0u;
  v395 = 0u;
  v13 = __CFStringFillCharacterSetInlineBuffer(theSet, searchOptions);
  LOBYTE(v14) = 0;
  if (v13)
  {
    v15 = theSet;
  }

  else
  {
    v15 = 0;
  }

  v360 = v15;
  if ((searchOptions & 0x91) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  if (v12 <= length)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v391 = v12;
  if (v12 < 1 || length < 1 || !v17)
  {
    return v14;
  }

  v388 = v13;
  v433 = 0;
  v431 = 0u;
  v432 = 0u;
  v429 = 0u;
  *theStringa = 0u;
  v427 = 0u;
  v428 = 0u;
  v425 = 0u;
  v426 = 0u;
  v423 = 0u;
  v424 = 0u;
  *buffer = 0u;
  v420 = 0;
  range = 0;
  v419 = 0u;
  v416 = 0u;
  *v417 = 0u;
  v414 = 0u;
  v415 = 0u;
  v412 = 0u;
  v413 = 0u;
  v410 = 0u;
  v411 = 0u;
  *v409 = 0u;
  v18 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v18 = __CFStringComputeEightBitStringEncoding();
  }

  CStringPtrInternal = _CFStringGetCStringPtrInternal(theString, v18, 0, 1);
  v384 = _CFStringGetCStringPtrInternal(stringToFind, v18, 0, 1);
  v390 = location + length;
  if (locale)
  {
    SpecialCaseHandlingLanguageIdentifierForLocale = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(locale, 1);
  }

  else if ((searchOptions & 0x20) != 0)
  {
    v19 = CFLocaleCopyCurrent();
    SpecialCaseHandlingLanguageIdentifierForLocale = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(v19, 1);
    CFRelease(v19);
  }

  else
  {
    SpecialCaseHandlingLanguageIdentifierForLocale = 0;
  }

  v20 = location + length;
  theStringa[0] = theString;
  *(&v431 + 1) = 0;
  *&v432 = location + length;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  v22 = 0;
  theStringa[1] = CharactersPtr;
  if (!CharactersPtr)
  {
    v22 = _CFStringGetCStringPtrInternal(theString, 0x600u, 0, 1);
  }

  v433 = 0;
  *&v431 = v22;
  *(&v432 + 1) = 0;
  v417[0] = stringToFind;
  range.length = 0;
  *&v419 = v12;
  v23 = CFStringGetCharactersPtr(stringToFind);
  v24 = 0;
  v417[1] = v23;
  if (!v23)
  {
    v24 = _CFStringGetCStringPtrInternal(stringToFind, 0x600u, 0, 1);
  }

  v345 = stringToFind;
  v420 = 0;
  range.location = v24;
  *(&v419 + 1) = 0;
  v348 = location;
  if ((searchOptions & 4) != 0)
  {
    v29 = v12;
    if (v16)
    {
      v29 = 1;
    }

    v28 = v390 - v29;
    if ((searchOptions & 8) != 0)
    {
      v30 = v16;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v27 = location;
    }

    else
    {
      v27 = v28;
    }
  }

  else
  {
    v25 = v12;
    if (v16)
    {
      v25 = 1;
    }

    v26 = v390 - v25;
    if ((searchOptions & 8) != 0)
    {
      v27 = location;
    }

    else
    {
      v27 = v26;
    }

    v28 = location;
  }

  v31 = v388;
  v383 = (searchOptions >> 8) & 1 | v16;
  v363 = searchOptions & 0xC;
  v359 = v27;
  if (v28 > v27)
  {
    v32 = -1;
  }

  else
  {
    v32 = 1;
  }

  v389 = searchOptions;
  v351 = result;
  if (!CStringPtrInternal || !v384)
  {
    if ((v383 & 1) == 0)
    {
      while (1)
      {
        v134 = 0;
        v135 = v28;
        while (1)
        {
          if (v135 < 0 || (v136 = v432, v432 <= v135))
          {
            v137 = 0;
          }

          else if (theStringa[1])
          {
            v137 = *(&theStringa[1]->isa + *(&v431 + 1) + v135);
          }

          else if (v431)
          {
            v137 = *(v431 + *(&v431 + 1) + v135);
          }

          else
          {
            if (v433 <= v135 || (v142 = *(&v432 + 1), *(&v432 + 1) > v135))
            {
              v143 = v135 - 4;
              if (v135 < 4)
              {
                v143 = 0;
              }

              if (v143 + 64 < v432)
              {
                v136 = v143 + 64;
              }

              *(&v432 + 1) = v143;
              v433 = v136;
              v444.length = v136 - v143;
              v444.location = *(&v431 + 1) + v143;
              CFStringGetCharacters(theStringa[0], v444, buffer);
              v142 = *(&v432 + 1);
            }

            v137 = buffer[v135 - v142];
          }

          v138 = v419;
          if (v419 <= v134)
          {
            v139 = 0;
          }

          else if (v417[1])
          {
            v139 = *(&v417[1]->isa + range.length + v134);
          }

          else if (range.location)
          {
            v139 = *(range.location + range.length + v134);
          }

          else
          {
            if (v420 <= v134 || (v140 = *(&v419 + 1), *(&v419 + 1) > v134))
            {
              v141 = v134 - 4;
              if (v134 < 4)
              {
                v141 = 0;
              }

              if (v141 + 64 < v419)
              {
                v138 = v141 + 64;
              }

              *(&v419 + 1) = v141;
              v420 = v138;
              v443.length = v138 - v141;
              v443.location = range.length + v141;
              CFStringGetCharacters(v417[0], v443, v409);
              v140 = *(&v419 + 1);
            }

            v139 = v409[v134 - v140];
          }

          if (v137 != v139)
          {
            break;
          }

          ++v135;
          if (++v134 == v391)
          {
            goto LABEL_377;
          }
        }

        if (v134 == v391)
        {
LABEL_377:
          if (result)
          {
            result->location = v28;
            result->length = v391;
          }

          goto LABEL_384;
        }

        if (v28 == v359)
        {
          goto LABEL_1000;
        }

        v28 += v32;
      }
    }

    v392 = 0;
    v393 = 0;
    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0x6Eu, 0);
    UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane(0, 0);
    v342 = UnicodePropertyDataForPlane;
    if ((searchOptions & 0x10000) != 0)
    {
      goto LABEL_476;
    }

    *v405 = *v417;
    v406 = range;
    v407 = v419;
    v408 = v420;
    v401 = v413;
    v402 = v414;
    v403 = v415;
    v404 = v416;
    *v397 = *v409;
    v398 = v410;
    v399 = v411;
    v400 = v412;
    if (CF_IS_OBJC(7uLL, theString))
    {
      if (![(__CFString *)theString _encodingCantBeStoredInEightBitCFString])
      {
LABEL_386:
        if (CF_IS_OBJC(7uLL, v345))
        {
          v145 = [(__CFString *)v345 _encodingCantBeStoredInEightBitCFString];
        }

        else
        {
          v146 = atomic_load(&v345->info);
          v145 = (v146 >> 4) & 1;
        }

        if (!v145)
        {
          goto LABEL_475;
        }
      }
    }

    else
    {
      v144 = atomic_load(&theString->info);
      if (((v144 >> 4) & 1) == 0)
      {
        goto LABEL_386;
      }
    }

    v147 = 0;
    v148 = 0;
    v396 = 0;
    v149 = 64;
    while (1)
    {
      if (v148 >= 4)
      {
        v150 = 4;
      }

      else
      {
        v150 = v148;
      }

      v151 = v407;
      if (v407 <= v148)
      {
        v153 = 0;
      }

      else
      {
        if (v405[1])
        {
          v152 = v405[1] + v406.length;
LABEL_397:
          v153 = v152[v148];
          goto LABEL_399;
        }

        if (!v406.location)
        {
          v155 = *(&v407 + 1);
          if (v408 <= v148 || *(&v407 + 1) > v148)
          {
            v157 = v150 + v147;
            v158 = v149 - v150;
            v159 = v148 - v150;
            v160 = v159 + 64;
            if (v159 + 64 >= v407)
            {
              v160 = v407;
            }

            *(&v407 + 1) = v159;
            v408 = v160;
            if (v407 >= v158)
            {
              v151 = v158;
            }

            v445.location = v159 + v406.length;
            v445.length = v151 + v157;
            CFStringGetCharacters(v405[0], v445, v397);
            v155 = *(&v407 + 1);
          }

          v152 = &v397[-v155];
          goto LABEL_397;
        }

        v153 = *(v406.location + v406.length + v148);
      }

LABEL_399:
      if (u_isdigit(v153))
      {
        goto LABEL_418;
      }

      Script = uscript_getScript();
      if (v396 > 0)
      {
        goto LABEL_423;
      }

      if (Script)
      {
        if (Script <= 0xF && ((1 << Script) & 0x8410) != 0)
        {
LABEL_418:
          *v397 = 0;
          LOBYTE(searchOptions) = v389;
          if ((v389 & 4) != 0)
          {
            v161 = v351;
            if (v359 < 0)
            {
              goto LABEL_426;
            }

            v164 = v432;
            if (v359 + length > v432)
            {
              goto LABEL_426;
            }

            if (theStringa[1])
            {
              v163 = theStringa[1] + *(&v431 + 1) + v359;
            }

            else
            {
              if (length > 64)
              {
                goto LABEL_426;
              }

              if (v359 + length > v433 || v359 < *(&v432 + 1))
              {
                if (v359 + 64 < v432)
                {
                  v164 = v359 + 64;
                }

                *(&v432 + 1) = v359;
                v433 = v164;
                v175.location = *(&v431 + 1) + v359;
                v175.length = v164 - v359;
                if (v431)
                {
                  if (v175.length)
                  {
                    v176 = (v431 + v175.location);
                    v177 = v359 - v164;
                    v178 = buffer;
                    do
                    {
                      v179 = *v176++;
                      *v178++ = v179;
                      v174 = __CFADD__(v177++, 1);
                    }

                    while (!v174);
                  }
                }

                else
                {
                  CFStringGetCharacters(theStringa[0], v175, buffer);
                }
              }

              v339 = v359 - *(&v432 + 1);
LABEL_1011:
              v163 = &buffer[v339];
            }
          }

          else
          {
            v161 = v351;
            if ((v28 & 0x8000000000000000) == 0)
            {
              v162 = v432;
              if (v28 + length <= v432)
              {
                if (theStringa[1])
                {
                  v163 = theStringa[1] + *(&v431 + 1) + v28;
                  goto LABEL_427;
                }

                if (length <= 64)
                {
                  if (v28 + length > v433 || v28 < *(&v432 + 1))
                  {
                    if (v28 + 64 < v432)
                    {
                      v162 = v28 + 64;
                    }

                    *(&v432 + 1) = v28;
                    v433 = v162;
                    v169.location = *(&v431 + 1) + v28;
                    v169.length = v162 - v28;
                    if (v431)
                    {
                      if (v169.length)
                      {
                        v170 = (v431 + v169.location);
                        v171 = v28 - v162;
                        v172 = buffer;
                        do
                        {
                          v173 = *v170++;
                          *v172++ = v173;
                          v174 = __CFADD__(v171++, 1);
                        }

                        while (!v174);
                      }
                    }

                    else
                    {
                      CFStringGetCharacters(theStringa[0], v169, buffer);
                    }
                  }

                  v339 = v28 - *(&v432 + 1);
                  goto LABEL_1011;
                }
              }
            }

LABEL_426:
            v163 = 0;
          }

LABEL_427:
          if (v391 <= v419)
          {
            if (v417[1])
            {
LABEL_465:
              if (v163)
              {
                ucol_open();
                if (*v397 <= 0)
                {
                  ucol_setStrength();
                  usearch_openFromCollator();
                  if (*v397 <= 0)
                  {
                    if ((v389 & 4) != 0)
                    {
                      v180 = usearch_last();
                    }

                    else
                    {
                      v180 = usearch_first();
                    }

                    v181 = v180;
                    if (*v397 < 1)
                    {
                      if ((v180 & 0x80000000) != 0)
                      {
                        LOBYTE(v14) = 0;
                      }

                      else
                      {
                        MatchedLength = usearch_getMatchedLength();
                        if ((v389 & 8) != 0)
                        {
                          if ((v389 & 4) != 0)
                          {
                            v14 = MatchedLength + v181 == length;
                          }

                          else
                          {
                            v14 = v181 == 0;
                          }
                        }

                        else
                        {
                          v14 = 1;
                        }

                        if (v161 && v14)
                        {
                          v161->location = v348 + v181;
                          v161->length = MatchedLength;
                          LOBYTE(v14) = 1;
                        }
                      }

                      usearch_close();
                      ucol_close();
                      return v14;
                    }

                    usearch_close();
                  }

                  ucol_close();
                }
              }
            }

            else if (v391 <= 64)
            {
              if (v391 > v420 || *(&v419 + 1) >= 1)
              {
                if (v419 >= 64)
                {
                  v165.length = 64;
                }

                else
                {
                  v165.length = v419;
                }

                *(&v419 + 1) = 0;
                v420 = v165.length;
                v165.location = range.length;
                if (range.location)
                {
                  if (v419)
                  {
                    v166 = (range.location + range.length);
                    v167 = v409;
                    do
                    {
                      v168 = *v166++;
                      *v167++ = v168;
                      --v165.length;
                    }

                    while (v165.length);
                  }
                }

                else
                {
                  CFStringGetCharacters(v417[0], v165, v409);
                }
              }

              goto LABEL_465;
            }
          }

          v20 = v390;
        }

        else
        {
LABEL_423:
          LOBYTE(searchOptions) = v389;
          v20 = location + length;
        }

LABEL_475:
        UnicodePropertyDataForPlane = v342;
LABEL_476:
        v361 = 0;
        v341 = 0;
        v349 = 0;
        v182 = 0;
        v183 = 0;
        v352 = 0;
        v184 = v363 == 8;
        v185 = searchOptions & (SpecialCaseHandlingLanguageIdentifierForLocale != 0);
        v186 = v388;
        if (v388)
        {
          v187 = &theSet[1];
        }

        else
        {
          v187 = 8;
        }

        v188 = theSet | 0xC;
        if (!v388)
        {
          v188 = 12;
        }

        v343 = v188;
        v344 = v187;
        if (v388)
        {
          v189 = &v395;
        }

        else
        {
          v189 = 16;
        }

        v190 = &v395 + 8;
        if (!v388)
        {
          v190 = 24;
        }

        v346 = v189;
        v347 = v190;
        v350 = searchOptions & 0x90;
        v340 = UnicodePropertyDataForPlane + 256;
        v354 = v32;
        v369 = v28;
        v191 = v28;
        v382 = searchOptions & (SpecialCaseHandlingLanguageIdentifierForLocale != 0);
LABEL_487:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v362 = 0;
        v356 = 0;
        v357 = 0;
        v355 = 0;
        v195 = v191;
        v385 = v191;
LABEL_488:
        v374 = v195;
        v365 = v192;
        v367 = v193;
        v196 = v194;
        v364 = v194;
        while (1)
        {
          v197 = v192 - 4;
          if (v192 < 4)
          {
            v197 = 0;
          }

          v373 = v197;
          v371 = v197 + 64;
          v198 = v192 + 1;
          v199 = v192 - 3;
          if ((v192 + 1) < 4)
          {
            v199 = 0;
          }

          v379 = v199;
          v377 = v199 + 64;
          if (v196 <= 0)
          {
            v200 = 0;
          }

          else
          {
            v200 = -1;
          }

          v387 = v196;
          if (v193)
          {
LABEL_497:
            v201 = __s1[v182++];
            if (!v196)
            {
              goto LABEL_505;
            }

LABEL_498:
            v202 = __s2[v183++];
            goto LABEL_511;
          }

          while (1)
          {
            if (v195 < 0 || (v203 = v432, v432 <= v195))
            {
              v201 = 0;
            }

            else
            {
              if (theStringa[1])
              {
                v204 = *(&theStringa[1]->isa + *(&v431 + 1) + v195);
              }

              else if (v431)
              {
                v204 = *(v431 + *(&v431 + 1) + v195);
              }

              else
              {
                if (v433 <= v195 || (v224 = *(&v432 + 1), *(&v432 + 1) > v195))
                {
                  v225 = v195 - 4;
                  if (v195 < 4)
                  {
                    v225 = 0;
                  }

                  if (v225 + 64 < v432)
                  {
                    v203 = v225 + 64;
                  }

                  *(&v432 + 1) = v225;
                  v433 = v203;
                  v448.length = v203 - v225;
                  v448.location = *(&v431 + 1) + v225;
                  CFStringGetCharacters(theStringa[0], v448, buffer);
                  v191 = v385;
                  v196 = v387;
                  v185 = v382;
                  v184 = v363 == 8;
                  v186 = v388;
                  v224 = *(&v432 + 1);
                }

                v204 = buffer[v195 - v224];
              }

              v201 = v204;
              if ((v389 & 1) != 0 && (v204 - 65) <= 0x19u)
              {
                if (v204 != 73 || SpecialCaseHandlingLanguageIdentifierForLocale == 0)
                {
                  v201 = v204 | 0x20;
                }

                else
                {
                  v201 = 73;
                }
              }
            }

            v393 = 1;
            if (v196)
            {
              goto LABEL_498;
            }

LABEL_505:
            if (v192 < 0 || (v205 = v419, v419 <= v192))
            {
              v202 = 0;
            }

            else
            {
              if (v417[1])
              {
                v206 = *(&v417[1]->isa + range.length + v192);
              }

              else if (range.location)
              {
                v206 = *(range.location + range.length + v192);
              }

              else
              {
                if (v420 <= v192 || (v227 = *(&v419 + 1), *(&v419 + 1) > v192))
                {
                  if (v371 < v419)
                  {
                    v205 = v371;
                  }

                  *(&v419 + 1) = v373;
                  v420 = v205;
                  v449.length = v205 - v373;
                  v449.location = range.length + v373;
                  CFStringGetCharacters(v417[0], v449, v409);
                  v191 = v385;
                  v196 = v387;
                  v185 = v382;
                  v184 = v363 == 8;
                  v186 = v388;
                  v227 = *(&v419 + 1);
                }

                v206 = v409[v192 - v227];
              }

              v202 = v206;
              if ((v389 & 1) != 0 && (v206 - 65) <= 0x19u)
              {
                if (v206 != 73 || SpecialCaseHandlingLanguageIdentifierForLocale == 0)
                {
                  v202 = v206 | 0x20;
                }

                else
                {
                  v202 = 73;
                }
              }
            }

            v392 = 1;
LABEL_511:
            if (v201 == v202)
            {
              v194 = v196;
              goto LABEL_646;
            }

            if ((v202 | v201) > 0x7F)
            {
              v207 = 1;
            }

            else
            {
              v207 = v186;
            }

            if (((v207 | v185) & 1) == 0)
            {
              v260 = 1;
              goto LABEL_749;
            }

            if ((v201 & 0xFC00) == 0xD800 && v195 >= -1)
            {
              v208 = v195 + 1;
              v209 = v432;
              if (v432 <= v195 + 1)
              {
                v20 = v390;
              }

              else
              {
                if (theStringa[1])
                {
                  v210 = *(&theStringa[1]->isa + *(&v431 + 1) + v208);
                }

                else if (v431)
                {
                  v210 = *(v431 + *(&v431 + 1) + v208);
                }

                else
                {
                  if (v433 <= v208 || (v211 = *(&v432 + 1), *(&v432 + 1) > v208))
                  {
                    v212 = v195 - 3;
                    if (v208 < 4)
                    {
                      v212 = 0;
                    }

                    if (v212 + 64 < v432)
                    {
                      v209 = v212 + 64;
                    }

                    *(&v432 + 1) = v212;
                    v433 = v209;
                    v446.length = v209 - v212;
                    v446.location = *(&v431 + 1) + v212;
                    CFStringGetCharacters(theStringa[0], v446, buffer);
                    v191 = v385;
                    v196 = v387;
                    v185 = v382;
                    v184 = v363 == 8;
                    v186 = v388;
                    v211 = *(&v432 + 1);
                  }

                  v210 = buffer[v208 - v211];
                }

                v20 = v390;
                if (v210 >> 10 == 55)
                {
                  v201 = ((v201 << 10) & 0x36FFC00) - 56613888 + v210;
                  v393 = 2;
                }
              }
            }

            if ((v202 & 0xFC00) == 0xD800 && v192 >= -1)
            {
              v213 = v419;
              if (v419 > v198)
              {
                if (v417[1])
                {
                  v214 = *(&v417[1]->isa + range.length + v198);
                }

                else if (range.location)
                {
                  v214 = *(range.location + range.length + v198);
                }

                else
                {
                  if (v420 <= v198 || (v215 = *(&v419 + 1), *(&v419 + 1) > v198))
                  {
                    if (v377 < v419)
                    {
                      v213 = v377;
                    }

                    *(&v419 + 1) = v379;
                    v420 = v213;
                    v447.length = v213 - v379;
                    v447.location = range.length + v379;
                    CFStringGetCharacters(v417[0], v447, v409);
                    v191 = v385;
                    v196 = v387;
                    v185 = v382;
                    v184 = v363 == 8;
                    v186 = v388;
                    v215 = *(&v419 + 1);
                  }

                  v214 = v409[v198 - v215];
                }

                if (v214 >> 10 == 55)
                {
                  v202 = ((v202 << 10) & 0x36FFC00) - 56613888 + v214;
                  v392 = 2;
                }
              }
            }

            if (!v186)
            {
              v235 = v364;
              v192 = v365;
              v195 = v374;
              goto LABEL_663;
            }

            v216 = v195 != v191 || v184;
            v217 = theSet[1];
            if (v216 != 1 || v195 >= v20)
            {
              goto LABEL_617;
            }

            v218 = (theSet[1] & 4) >> 2;
            if (HIDWORD(theSet[1]) > v201 || v395 <= v201)
            {
              goto LABEL_573;
            }

            if (HIWORD(v201) || (theSet[1] & 2) != 0)
            {
              break;
            }

            if (*(&v395 + 1))
            {
              if (theSet[1])
              {
                v220 = v201 >> 8;
                v221 = *(*(&v395 + 1) + v220);
                if (!*(*(&v395 + 1) + v220))
                {
                  if ((theSet[1] & 4) == 0)
                  {
                    goto LABEL_617;
                  }

                  goto LABEL_574;
                }

                LOBYTE(v218) = (theSet[1] & 4) == 0;
                if (v221 != 255)
                {
                  if ((((*(*(&v395 + 1) + 32 * v221 + (v201 >> 3) + 224) >> (v201 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                  {
                    goto LABEL_617;
                  }

                  goto LABEL_574;
                }

LABEL_573:
                if ((v218 & 1) == 0)
                {
                  goto LABEL_617;
                }

                goto LABEL_574;
              }

              if ((((*(*(&v395 + 1) + (v201 >> 3)) >> (v201 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
              {
                goto LABEL_617;
              }
            }

            else if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
            {
              goto LABEL_617;
            }

LABEL_574:
            if (v182 == v193 && v193 > 0)
            {
              v193 = 0;
            }

            v223 = v393;
            if (v193)
            {
              v223 = 0;
            }

            v195 += v223;
            v183 += v200;
            if (v193)
            {
              goto LABEL_497;
            }
          }

          IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(theSet[0], v201);
          v191 = v385;
          v196 = v387;
          v185 = v382;
          v184 = v363 == 8;
          v186 = v388;
          if (IsLongCharacterMember)
          {
            goto LABEL_574;
          }

          v217 = theSet[1];
LABEL_617:
          v229 = (v217 & 4) >> 2;
          if (HIDWORD(theSet[1]) > v202 || v395 <= v202)
          {
            goto LABEL_631;
          }

          if (HIWORD(v202) || (v217 & 2) != 0)
          {
            v230 = CFCharacterSetIsLongCharacterMember(theSet[0], v202);
            v191 = v385;
            v196 = v387;
            v185 = v382;
            v184 = v363 == 8;
            v186 = v388;
            if (!v230)
            {
              goto LABEL_644;
            }

            goto LABEL_632;
          }

          if (!*(&v395 + 1))
          {
            if (((((v217 & 1) == 0) ^ ((v217 & 4) >> 2)) & 1) == 0)
            {
              goto LABEL_644;
            }

            goto LABEL_632;
          }

          if (v217)
          {
            v231 = v202 >> 8;
            v232 = *(*(&v395 + 1) + v231);
            if (!*(*(&v395 + 1) + v231))
            {
              if ((v217 & 4) == 0)
              {
                goto LABEL_644;
              }

              goto LABEL_632;
            }

            LOBYTE(v229) = (v217 & 4) == 0;
            if (v232 == 255)
            {
LABEL_631:
              if (v229)
              {
                goto LABEL_632;
              }
            }

            else if ((((*(*(&v395 + 1) + 32 * v232 + (v202 >> 3) + 224) >> (v202 & 7)) & 1) == 0) != ((v217 & 4) == 0))
            {
              goto LABEL_632;
            }

LABEL_644:
            v235 = v196;
            v367 = v193;
LABEL_663:
            if ((v389 & 0x80) != 0 && v195 > v191)
            {
              if (v193)
              {
                v240 = v192;
                goto LABEL_667;
              }

              v242 = BitmapPtrForPlane;
              if (v201 >= 0x10000)
              {
                v242 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v201));
                v191 = v385;
                v196 = v387;
                v185 = v382;
                v184 = v363 == 8;
                v186 = v388;
              }

              v240 = v192;
              if (v242)
              {
                v243 = (1 << (v201 & 7)) & *(v242 + (v201 >> 3));
                v241 = v243 != 0;
                if (v243)
                {
                  v201 = v202;
                }

                if (!v196)
                {
LABEL_675:
                  v244 = BitmapPtrForPlane;
                  if (v202 >= 0x10000)
                  {
                    v244 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v202));
                    v191 = v385;
                    v196 = v387;
                    v185 = v382;
                    v184 = v363 == 8;
                    v186 = v388;
                  }

                  if (v244)
                  {
                    v245 = (1 << (v202 & 7)) & *(v244 + (v202 >> 3));
                    if (v245)
                    {
                      v246 = v201;
                    }

                    else
                    {
                      v246 = v202;
                    }

                    if ((v241 ^ (v245 != 0)))
                    {
                      v247 = v392;
                      if (!v241)
                      {
                        v247 = 0;
                      }

                      v192 = v240 - v247;
                      if (v245)
                      {
                        v195 -= v393;
                        v202 = v201;
                      }

                      goto LABEL_690;
                    }

                    v202 = v246;
LABEL_689:
                    v192 = v240;
                    goto LABEL_690;
                  }
                }
              }

              else
              {
LABEL_667:
                v241 = 0;
                if (!v196)
                {
                  goto LABEL_675;
                }
              }

              if (v241)
              {
                v192 = v240 - v392;
                goto LABEL_690;
              }

              goto LABEL_689;
            }

LABEL_690:
            v248 = v362;
            v194 = v235;
            if (v201 != v202)
            {
              v375 = v195;
              v250 = v192;
              if (v193)
              {
                v251 = 0;
                v252 = v389;
                v253 = v352;
                v249 = v361;
                v193 = v367;
                goto LABEL_694;
              }

              v249 = v361;
              if (v361 && v361 != v375)
              {
                v193 = 0;
                v252 = v389;
                v253 = v352;
                goto LABEL_739;
              }

              v182 = v375 - v352 + 1;
              v252 = v389;
              if (v349 >= 1 && v375 >= v352 && v375 < v352 + v341 && v182 < v349)
              {
                v251 = 0;
                v249 = 0;
                v201 = __s1[v375 - v352];
                v193 = v349;
                v253 = v352;
                goto LABEL_694;
              }

              LOBYTE(v397[0]) = 0;
              v349 = __CFStringFoldCharacterClusterAtIndex(v201, buffer, v375, v389, SpecialCaseHandlingLanguageIdentifierForLocale, __s1, &v393, v397);
              if (v349 > 0)
              {
                v182 = 1;
                v201 = __s1[0];
              }

              v341 = v393;
              if (LOBYTE(v397[0]) == 1)
              {
                RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex(theString, v375, 1);
                v256 = 2;
                if (RangeOfCharacterClusterAtIndex > 2)
                {
                  v256 = RangeOfCharacterClusterAtIndex;
                }

                v257 = v256 - 1;
                if (v369 <= v359)
                {
                  v249 = RangeOfCharacterClusterAtIndex + v255;
                }

                else
                {
                  v249 = v257;
                }
              }

              else
              {
                v249 = 0;
              }

              v253 = v375;
              v193 = v349;
              v186 = v388;
              v191 = v385;
              v196 = v387;
              v184 = v363 == 8;
              v185 = v382;
              v252 = v389;
LABEL_739:
              v251 = v193 == 0;
              if (!v193 && v194 > 0)
              {
                v361 = v249;
                v352 = v253;
                v193 = 0;
                goto LABEL_817;
              }

LABEL_694:
              v352 = v253;
              if (v196)
              {
                v192 = v250;
LABEL_696:
                v195 = v375;
                v248 = v362;
                goto LABEL_697;
              }

              if (v201 != v202)
              {
                v251 = 1;
              }

              if (v251)
              {
                if (!v356 || v356 == v250)
                {
                  v183 = v250 - v362 + 1;
                  if (v357 < 1 || v250 < v362 || v250 >= v362 + v355 || v183 >= v357)
                  {
                    LOBYTE(v397[0]) = 0;
                    v357 = __CFStringFoldCharacterClusterAtIndex(v202, v409, v250, v252, SpecialCaseHandlingLanguageIdentifierForLocale, __s2, &v392, v397);
                    v355 = v392;
                    v361 = v249;
                    if (LOBYTE(v397[0]) == 1)
                    {
                      v258 = CFStringGetRangeOfCharacterClusterAtIndex(v345, v250, 1);
                      v356 = v258 + v259;
                    }

                    else
                    {
                      v356 = 0;
                    }

                    v186 = v388;
                    v191 = v385;
                    v184 = v363 == 8;
                    v185 = v382;
                    v192 = v250;
                    v195 = v375;
                    if (!v357 || v201 != __s2[0])
                    {
                      goto LABEL_819;
                    }

                    v248 = v192;
                    v183 = 1;
                    v194 = v357;
                    goto LABEL_697;
                  }

                  if (v201 == __s2[v250 - v362])
                  {
                    v356 = 0;
                    v194 = v357;
                    v192 = v250;
                    goto LABEL_696;
                  }

                  v361 = v249;
                  v192 = v250;
LABEL_818:
                  v195 = v375;
                  goto LABEL_819;
                }

                v361 = v249;
                if (v201 != v202)
                {
LABEL_817:
                  v192 = v250;
                  goto LABEL_818;
                }
              }

              else
              {
                v361 = v249;
              }

              v194 = 0;
              v192 = v250;
              v195 = v375;
              goto LABEL_646;
            }

            v249 = v361;
            v193 = v367;
LABEL_697:
            v361 = v249;
            v362 = v248;
            if (v193 >= 1 && v194 >= 1)
            {
              while (v182 < v193 && v183 < v194)
              {
                if (__s1[v182] != __s2[v183])
                {
                  goto LABEL_819;
                }

                ++v182;
                ++v183;
              }

              if (v182 < v193 && v183 < v194)
              {
                goto LABEL_819;
              }
            }

LABEL_646:
            if (v182 == v193 && v193 > 0)
            {
              v193 = 0;
            }

            if (v183 == v194 && v194 > 0)
            {
              v194 = 0;
            }

            v238 = v393;
            if (v193)
            {
              v238 = 0;
            }

            v195 += v238;
            v239 = v392;
            if (v194)
            {
              v239 = 0;
            }

            v192 += v239;
            if (v192 >= v391)
            {
              goto LABEL_819;
            }

            goto LABEL_488;
          }

          if ((((*(*(&v395 + 1) + (v202 >> 3)) >> (v202 & 7)) & 1) == 0) == ((v217 & 4) == 0))
          {
            goto LABEL_644;
          }

LABEL_632:
          if (v183 == v196 && v196 > 0)
          {
            v196 = 0;
          }

          v234 = v392;
          if (v196)
          {
            v234 = 0;
          }

          v192 += v234;
          v182 -= v193 > 0;
          if (v192 >= v391)
          {
LABEL_819:
            if (v195 == v20)
            {
              v280 = v186;
            }

            else
            {
              v280 = 0;
            }

            if (v280 != 1 || v192 >= v391)
            {
              v260 = v388 ^ 1;
              goto LABEL_749;
            }

            while (2)
            {
              if (v192 < 0 || (v281 = v419, v419 <= v192))
              {
                v283 = 0;
              }

              else
              {
                if (v417[1])
                {
                  v282 = *(&v417[1]->isa + range.length + v192);
                }

                else if (range.location)
                {
                  v282 = *(range.location + range.length + v192);
                }

                else
                {
                  if (v420 <= v192 || (v288 = *(&v419 + 1), *(&v419 + 1) > v192))
                  {
                    v289 = v192 - 4;
                    if (v192 < 4)
                    {
                      v289 = 0;
                    }

                    if (v289 + 64 < v419)
                    {
                      v281 = v289 + 64;
                    }

                    *(&v419 + 1) = v289;
                    v420 = v281;
                    v452.length = v281 - v289;
                    v452.location = range.length + v289;
                    CFStringGetCharacters(v417[0], v452, v409);
                    v185 = v382;
                    v184 = v363 == 8;
                    v191 = v385;
                    v186 = v388;
                    v288 = *(&v419 + 1);
                  }

                  v282 = v409[v192 - v288];
                }

                v283 = v282;
                if (v282 >> 10 == 54)
                {
                  v290 = v192;
                  v291 = v192 + 1;
                  v292 = v419;
                  if (v419 <= v291)
                  {
                    v192 = v290;
                  }

                  else
                  {
                    if (v417[1])
                    {
                      v293 = *(&v417[1]->isa + range.length + v291);
                    }

                    else if (range.location)
                    {
                      v293 = *(range.location + range.length + v291);
                    }

                    else
                    {
                      if (v420 <= v291 || (v297 = *(&v419 + 1), *(&v419 + 1) > v291))
                      {
                        v298 = v290 - 3;
                        if (v290 < 3)
                        {
                          v298 = 0;
                        }

                        if (v298 + 64 < v419)
                        {
                          v292 = v298 + 64;
                        }

                        *(&v419 + 1) = v298;
                        v420 = v292;
                        v453.length = v292 - v298;
                        v453.location = range.length + v298;
                        CFStringGetCharacters(v417[0], v453, v409);
                        v185 = v382;
                        v184 = v363 == 8;
                        v191 = v385;
                        v186 = v388;
                        v297 = *(&v419 + 1);
                      }

                      v293 = v409[v291 - v297];
                    }

                    v192 = v290;
                    if (v293 >> 10 == 55)
                    {
                      v283 = (v283 << 10) - 56613888 + v293;
                    }
                  }
                }
              }

              v284 = *v344;
              v285 = (*v344 & 4u) >> 2;
              if (*v343 > v283 || *v346 <= v283)
              {
LABEL_858:
                if ((v285 & 1) == 0)
                {
                  goto LABEL_881;
                }

                goto LABEL_859;
              }

              if (HIWORD(v283) || (v284 & 2) != 0)
              {
                v287 = CFCharacterSetIsLongCharacterMember(*v360, v283);
                v185 = v382;
                v184 = v363 == 8;
                v191 = v385;
                v186 = v388;
                if (!v287)
                {
                  goto LABEL_881;
                }

                goto LABEL_859;
              }

              v286 = *v347;
              if (!*v347)
              {
                if (((((*v344 & 1) == 0) ^ ((*v344 & 4u) >> 2)) & 1) == 0)
                {
                  goto LABEL_881;
                }

                goto LABEL_859;
              }

              if ((v284 & 1) == 0)
              {
                if ((((*(v286 + (v283 >> 3)) >> (v283 & 7)) & 1) == 0) == ((*v344 & 4) == 0))
                {
                  goto LABEL_881;
                }

                goto LABEL_859;
              }

              v294 = v283 >> 8;
              v295 = *(v286 + v294);
              if (!*(v286 + v294))
              {
                if ((v284 & 4) == 0)
                {
                  goto LABEL_881;
                }

LABEL_859:
                if (v283 < 0x10000)
                {
                  v296 = 1;
                }

                else
                {
                  v296 = 2;
                }

                v192 += v296;
                v20 = v390;
                if (v192 >= v391)
                {
                  v260 = v388 ^ 1;
                  goto LABEL_882;
                }

                continue;
              }

              break;
            }

            LOBYTE(v285) = (*v344 & 4) == 0;
            if (v295 == 255)
            {
              goto LABEL_858;
            }

            if ((((*(v286 + 32 * v295 + (v283 >> 3) + 224) >> (v283 & 7)) & 1) == 0) != ((*v344 & 4) == 0))
            {
              goto LABEL_859;
            }

LABEL_881:
            v260 = v388 ^ 1;
            v20 = v390;
LABEL_882:
            v195 = v20;
LABEL_749:
            if (v192 != v391)
            {
              goto LABEL_815;
            }

            if (v193 < 1)
            {
LABEL_762:
              if (v350 && v195 < v20)
              {
                if (v195 < 0)
                {
                  v266 = 0;
                  v267 = BitmapPtrForPlane;
                  v264 = v389;
                }

                else
                {
                  v263 = v432;
                  v264 = v389;
                  if (v432 <= v195)
                  {
                    v266 = 0;
                  }

                  else
                  {
                    if (theStringa[1])
                    {
                      v265 = *(&theStringa[1]->isa + *(&v431 + 1) + v195);
                    }

                    else if (v431)
                    {
                      v265 = *(v431 + *(&v431 + 1) + v195);
                    }

                    else
                    {
                      if (v433 <= v195 || (v268 = *(&v432 + 1), *(&v432 + 1) > v195))
                      {
                        v269 = v195 - 4;
                        if (v195 < 4)
                        {
                          v269 = 0;
                        }

                        if (v269 + 64 < v432)
                        {
                          v263 = v269 + 64;
                        }

                        *(&v432 + 1) = v269;
                        v433 = v263;
                        v450.length = v263 - v269;
                        v450.location = *(&v431 + 1) + v269;
                        CFStringGetCharacters(theStringa[0], v450, buffer);
                        v185 = v382;
                        v184 = v363 == 8;
                        v191 = v385;
                        v186 = v388;
                        v268 = *(&v432 + 1);
                      }

                      v265 = buffer[v195 - v268];
                    }

                    v266 = v265;
                    if (v265 >> 10 == 54)
                    {
                      v270 = v195 + 1;
                      v271 = v432;
                      if (v432 > v195 + 1)
                      {
                        if (theStringa[1])
                        {
                          v272 = *(&theStringa[1]->isa + *(&v431 + 1) + v270);
                        }

                        else if (v431)
                        {
                          v272 = *(v431 + *(&v431 + 1) + v270);
                        }

                        else
                        {
                          if (v433 <= v270 || (v299 = *(&v432 + 1), *(&v432 + 1) > v270))
                          {
                            v300 = v195 - 3;
                            if (v195 < 3)
                            {
                              v300 = 0;
                            }

                            if (v300 + 64 < v432)
                            {
                              v271 = v300 + 64;
                            }

                            *(&v432 + 1) = v300;
                            v433 = v271;
                            v454.length = v271 - v300;
                            v454.location = *(&v431 + 1) + v300;
                            CFStringGetCharacters(theStringa[0], v454, buffer);
                            v185 = v382;
                            v184 = v363 == 8;
                            v191 = v385;
                            v186 = v388;
                            v299 = *(&v432 + 1);
                          }

                          v272 = buffer[v270 - v299];
                        }

                        v267 = BitmapPtrForPlane;
                        if (v272 >> 10 == 55)
                        {
                          v266 = (v266 << 10) - 56613888 + v272;
                          v267 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v266));
                          v185 = v382;
                          v184 = v363 == 8;
                          v191 = v385;
                          v186 = v388;
                        }

                        goto LABEL_785;
                      }
                    }
                  }

                  v267 = BitmapPtrForPlane;
                }

LABEL_785:
                if (v267 && ((*(v267 + (v266 >> 3)) >> (v266 & 7)) & 1) != 0)
                {
                  if ((v264 & 0x80) == 0)
                  {
                    goto LABEL_815;
                  }

                  if (!HIWORD(v266))
                  {
                    v301 = -v195;
                    v302 = v195 + 64;
                    v303 = v195;
                    do
                    {
                      if (v303 >= 5)
                      {
                        v304 = 5;
                      }

                      else
                      {
                        v304 = v303;
                      }

                      v305 = v303 - 1;
                      if (v303 >= 1 && (v306 = v432, v432 >= v303))
                      {
                        if (theStringa[1])
                        {
                          v307 = *(theStringa[1] + *(&v431 + 1) + v303 - 1);
                        }

                        else if (v431)
                        {
                          v307 = *(v431 + *(&v431 + 1) + v303 - 1);
                        }

                        else
                        {
                          if (v433 < v303 || (v308 = *(&v432 + 1), *(&v432 + 1) >= v303))
                          {
                            v309 = -v304;
                            v310 = v302 - v304;
                            v311 = v304 + v301;
                            v312 = v303 + v309;
                            v313 = v312 + 64;
                            if (v312 + 64 >= v432)
                            {
                              v313 = v432;
                            }

                            *(&v432 + 1) = v312;
                            v433 = v313;
                            if (v432 >= v310)
                            {
                              v306 = v310;
                            }

                            v455.location = v312 + *(&v431 + 1);
                            v455.length = v306 + v311;
                            CFStringGetCharacters(theStringa[0], v455, buffer);
                            v191 = v385;
                            v308 = *(&v432 + 1);
                          }

                          v307 = buffer[v303 - 1 - v308];
                        }
                      }

                      else
                      {
                        v307 = 0;
                      }

                      ++v301;
                      --v302;
                      --v303;
                    }

                    while (v348 < v305);
                    if (v307 > 0x50Fu)
                    {
                      v20 = v390;
                    }

                    else
                    {
                      v20 = v390;
                      do
                      {
                        v314 = v195 + 1;
                        if (v195 + 1 >= v390)
                        {
                          break;
                        }

                        if (v195 < -1 || (v315 = v432, v432 <= v314))
                        {
                          v316 = 0;
                        }

                        else if (theStringa[1])
                        {
                          v316 = *(&theStringa[1]->isa + *(&v431 + 1) + v195 + 1);
                        }

                        else if (v431)
                        {
                          v316 = *(v431 + *(&v431 + 1) + v195 + 1);
                        }

                        else
                        {
                          if (v433 <= v314 || (v317 = *(&v432 + 1), *(&v432 + 1) > v314))
                          {
                            v318 = v195 - 3;
                            if (v314 < 4)
                            {
                              v318 = 0;
                            }

                            if (v318 + 64 < v432)
                            {
                              v315 = v318 + 64;
                            }

                            *(&v432 + 1) = v318;
                            v433 = v315;
                            v456.length = v315 - v318;
                            v456.location = *(&v431 + 1) + v318;
                            CFStringGetCharacters(theStringa[0], v456, buffer);
                            v191 = v385;
                            v317 = *(&v432 + 1);
                          }

                          v316 = buffer[v195 + 1 - v317];
                        }

                        if (!BitmapPtrForPlane)
                        {
                          break;
                        }

                        ++v195;
                      }

                      while (((*(BitmapPtrForPlane + (v316 >> 3)) >> (v316 & 7)) & 1) != 0);
                      v195 = v314;
                    }
                  }
                }

                else if ((v264 & 0x80) == 0)
                {
                  v273 = v195 - 1;
                  if (v195 >= 1 && (v274 = v432, v432 >= v195))
                  {
                    if (theStringa[1])
                    {
                      v275 = *(&theStringa[1]->isa + *(&v431 + 1) + v273);
                    }

                    else if (v431)
                    {
                      v275 = *(v431 + *(&v431 + 1) + v273);
                    }

                    else
                    {
                      if (v433 < v195 || (v276 = *(&v432 + 1), *(&v432 + 1) >= v195))
                      {
                        v277 = v195 - 5;
                        if (v195 < 5)
                        {
                          v277 = 0;
                        }

                        if (v277 + 64 < v432)
                        {
                          v274 = v277 + 64;
                        }

                        *(&v432 + 1) = v277;
                        v433 = v274;
                        v451.length = v274 - v277;
                        v451.location = *(&v431 + 1) + v277;
                        CFStringGetCharacters(theStringa[0], v451, buffer);
                        v191 = v385;
                        v276 = *(&v432 + 1);
                      }

                      v275 = buffer[v273 - v276];
                    }
                  }

                  else
                  {
                    v275 = 0;
                  }

                  if (v266 == 847 || v275 == 847 || v275 == 8205 || (v275 - 4352) < 0xFAu || v342 && *(v342 + HIBYTE(v275)) && *(v340 + (*(v342 + HIBYTE(v275)) << 8) - 256 + v275) == 9)
                  {
                    v278 = CFStringGetRangeOfCharacterClusterAtIndex(theString, v195 - 1, 1);
                    v185 = v382;
                    v184 = v363 == 8;
                    v191 = v385;
                    v186 = v388;
                    if (v195 < v278 + v279)
                    {
                      goto LABEL_815;
                    }
                  }
                }
              }

              if (v363 == 12)
              {
                v319 = v260;
              }

              else
              {
                v319 = 1;
              }

              if ((v319 & 1) == 0 && v195 < v20)
              {
                while (2)
                {
                  if (v195 < 0 || (v320 = v432, v432 <= v195))
                  {
                    v322 = 0;
                  }

                  else
                  {
                    if (theStringa[1])
                    {
                      v321 = *(&theStringa[1]->isa + *(&v431 + 1) + v195);
                    }

                    else if (v431)
                    {
                      v321 = *(v431 + *(&v431 + 1) + v195);
                    }

                    else
                    {
                      if (v433 <= v195 || (v327 = *(&v432 + 1), *(&v432 + 1) > v195))
                      {
                        v328 = v195 - 4;
                        if (v195 < 4)
                        {
                          v328 = 0;
                        }

                        if (v328 + 64 < v432)
                        {
                          v320 = v328 + 64;
                        }

                        *(&v432 + 1) = v328;
                        v433 = v320;
                        v457.length = v320 - v328;
                        v457.location = *(&v431 + 1) + v328;
                        CFStringGetCharacters(theStringa[0], v457, buffer);
                        v191 = v385;
                        v327 = *(&v432 + 1);
                      }

                      v321 = buffer[v195 - v327];
                    }

                    v322 = v321;
                    if (v321 >> 10 == 54)
                    {
                      v329 = v195 + 1;
                      v330 = v432;
                      if (v432 > v195 + 1)
                      {
                        if (theStringa[1])
                        {
                          v331 = *(&theStringa[1]->isa + *(&v431 + 1) + v329);
                        }

                        else if (v431)
                        {
                          v331 = *(v431 + *(&v431 + 1) + v329);
                        }

                        else
                        {
                          if (v433 <= v329 || (v335 = *(&v432 + 1), *(&v432 + 1) > v329))
                          {
                            v336 = v195 - 3;
                            if (v195 < 3)
                            {
                              v336 = 0;
                            }

                            if (v336 + 64 < v432)
                            {
                              v330 = v336 + 64;
                            }

                            *(&v432 + 1) = v336;
                            v433 = v330;
                            v458.length = v330 - v336;
                            v458.location = *(&v431 + 1) + v336;
                            CFStringGetCharacters(theStringa[0], v458, buffer);
                            v191 = v385;
                            v335 = *(&v432 + 1);
                          }

                          v331 = buffer[v329 - v335];
                        }

                        if (v331 >> 10 == 55)
                        {
                          v322 = (v322 << 10) - 56613888 + v331;
                        }
                      }
                    }
                  }

                  v323 = *v344;
                  v324 = (*v344 & 4u) >> 2;
                  if (*v343 > v322 || *v346 <= v322)
                  {
                    goto LABEL_976;
                  }

                  if (HIWORD(v322) || (v323 & 2) != 0)
                  {
                    v326 = CFCharacterSetIsLongCharacterMember(*v360, v322);
                    v191 = v385;
                    if (!v326)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v325 = *v347;
                    if (*v347)
                    {
                      if ((v323 & 1) == 0)
                      {
                        if ((((*(v325 + (v322 >> 3)) >> (v322 & 7)) & 1) == 0) == ((*v344 & 4) == 0))
                        {
                          break;
                        }

                        goto LABEL_977;
                      }

                      v332 = v322 >> 8;
                      v333 = *(v325 + v332);
                      if (*(v325 + v332))
                      {
                        LOBYTE(v324) = (*v344 & 4) == 0;
                        if (v333 == 255)
                        {
LABEL_976:
                          if ((v324 & 1) == 0)
                          {
                            break;
                          }
                        }

                        else if ((((*(v325 + 32 * v333 + (v322 >> 3) + 224) >> (v322 & 7)) & 1) == 0) == ((*v344 & 4) == 0))
                        {
                          break;
                        }
                      }

                      else if ((v323 & 4) == 0)
                      {
                        break;
                      }
                    }

                    else if (((((*v344 & 1) == 0) ^ ((*v344 & 4u) >> 2)) & 1) == 0)
                    {
                      break;
                    }
                  }

LABEL_977:
                  if (v322 < 0x10000)
                  {
                    v334 = 1;
                  }

                  else
                  {
                    v334 = 2;
                  }

                  v195 += v334;
                  if (v195 >= v20)
                  {
                    break;
                  }

                  continue;
                }
              }

              if (v363 == 12 && v195 != v20)
              {
                goto LABEL_1000;
              }

              if (v351)
              {
                v351->location = v191;
                v351->length = v195 - v191;
              }

LABEL_384:
              LOBYTE(v14) = 1;
              return v14;
            }

            if ((v389 & 0x80) != 0 && __s1[0] <= 0x50F)
            {
              if (v182 < v193)
              {
                while (1)
                {
                  v261 = __s1[v182];
                  v262 = BitmapPtrForPlane;
                  if (v261 >= 0x10000)
                  {
                    v262 = CFUniCharGetBitmapPtrForPlane(9u, HIWORD(v261));
                    v185 = v382;
                    v184 = v363 == 8;
                    v191 = v385;
                    v186 = v388;
                  }

                  if (!v262 || ((*(v262 + (v261 >> 3)) >> (v261 & 7)) & 1) == 0)
                  {
                    break;
                  }

                  if (v193 == ++v182)
                  {
                    goto LABEL_761;
                  }
                }
              }

              if (v182 == v193)
              {
LABEL_761:
                v195 += v393;
                v182 = v193;
                goto LABEL_762;
              }
            }

LABEL_815:
            if (v191 == v359)
            {
              goto LABEL_1000;
            }

            v191 += v354;
            goto LABEL_487;
          }
        }
      }

      ++v148;
      --v147;
      ++v149;
      if (v391 == v148)
      {
        goto LABEL_423;
      }
    }
  }

  LODWORD(v33) = 0;
  v372 = 0;
  if (v388)
  {
    v34 = &theSet[1];
  }

  else
  {
    v34 = 8;
  }

  if (v388)
  {
    v35 = theSet | 0xC;
  }

  else
  {
    v35 = 12;
  }

  v36 = &v395;
  if (!v388)
  {
    v36 = 16;
  }

  v381 = v36;
  v37 = &v395 + 8;
  if (!v388)
  {
    v37 = 24;
  }

  v370 = v37;
  v366 = v32;
  v376 = v35;
  v378 = v34;
  while (2)
  {
    v368 = v28;
    v38 = 0;
    v39 = v28;
    if (v28 >= v20)
    {
      goto LABEL_235;
    }

    do
    {
      v40 = -v39;
      v41 = v39 + 64;
      v42 = v372;
      v43 = v39;
      while (1)
      {
        if (v43 >= 4)
        {
          v44 = 4;
        }

        else
        {
          v44 = v43;
        }

        v45 = CStringPtrInternal[v43];
        v46 = v384[v38];
        if (v45 == v46)
        {
          goto LABEL_165;
        }

        if (!v383)
        {
          goto LABEL_235;
        }

        v47 = v45;
        if (SpecialCaseHandlingLanguageIdentifierForLocale)
        {
          v48 = v45 == 73;
        }

        else
        {
          v48 = 0;
        }

        v49 = !v48;
        if (v47 < 0 || !v49)
        {
          if (v43 < 0 || v432 <= v43)
          {
            v52 = 0;
          }

          else
          {
            if (theStringa[1])
            {
              v51 = theStringa[1] + *(&v431 + 1);
            }

            else
            {
              if (v431)
              {
                v52 = *(v431 + *(&v431 + 1) + v43);
                goto LABEL_79;
              }

              if (v433 <= v43 || (v62 = *(&v432 + 1), *(&v432 + 1) > v43))
              {
                v63 = -v44;
                v64 = v44 + v40;
                v65 = v41 - v44;
                v66 = v43 + v63;
                v67 = v66 + 64;
                if (v66 + 64 >= v432)
                {
                  v67 = v432;
                }

                *(&v432 + 1) = v66;
                v433 = v67;
                if (v432 < v65)
                {
                  v65 = v432;
                }

                v437.location = v66 + *(&v431 + 1);
                v437.length = v65 + v64;
                CFStringGetCharacters(theStringa[0], v437, buffer);
                v62 = *(&v432 + 1);
              }

              v51 = &buffer[-v62];
            }

            v52 = v51[v43];
          }

LABEL_79:
          v42 = v52;
          v53 = __CFStringFoldCharacterClusterAtIndex(v52, buffer, v43, v389, SpecialCaseHandlingLanguageIdentifierForLocale, __s1, 0, 0);
          if (v53 <= 0)
          {
            __s1[0] = v42;
            v50 = 1;
          }

          else
          {
            v50 = v53;
          }

          v31 = v388;
          v35 = v376;
          v34 = v378;
          goto LABEL_83;
        }

        if ((v389 & ((v47 - 65) < 0x1A)) != 0)
        {
          LOBYTE(v47) = v47 | 0x20;
        }

        __s1[0] = v47;
        v50 = 1;
LABEL_83:
        v54 = v363 != 8 && v368 == v43;
        v55 = v388 ^ 1;
        if (v54)
        {
          v55 = 1;
        }

        if (v55)
        {
          break;
        }

        if ((v47 & 0x80u) == 0)
        {
          v56 = v47;
        }

        else
        {
          v56 = v42;
        }

        v57 = *v34;
        v58 = (*v34 & 4u) >> 2;
        if (*v35 > v56 || *v381 <= v56)
        {
LABEL_108:
          if ((v58 & 1) == 0)
          {
            break;
          }

          goto LABEL_109;
        }

        if ((v57 & 2) != 0)
        {
          v60 = CFCharacterSetIsLongCharacterMember(*v360, v56);
          v35 = v376;
          v34 = v378;
          v31 = v388;
          if (!v60)
          {
            break;
          }

          goto LABEL_109;
        }

        v59 = *v370;
        if (!*v370)
        {
          if (((((*v34 & 1) == 0) ^ ((*v34 & 4u) >> 2)) & 1) == 0)
          {
            break;
          }

          goto LABEL_109;
        }

        if ((v57 & 1) == 0)
        {
          if ((((*(v59 + (v56 >> 3)) >> (v56 & 7)) & 1) == 0) == ((*v34 & 4) == 0))
          {
            break;
          }

          goto LABEL_109;
        }

        v61 = *(v59 + (v56 >> 8));
        if (*(v59 + (v56 >> 8)))
        {
          LOBYTE(v58) = (*v34 & 4) == 0;
          if (v61 == 255)
          {
            goto LABEL_108;
          }

          if ((((*(v59 + 32 * v61 + (v56 >> 3) + 224) >> (v56 & 7)) & 1) == 0) == ((*v34 & 4) == 0))
          {
            break;
          }
        }

        else if ((v57 & 4) == 0)
        {
          break;
        }

LABEL_109:
        ++v43;
        --v40;
        ++v41;
        v20 = v390;
        if (v43 >= v390)
        {
          v39 = v43;
          v372 = v42;
          goto LABEL_235;
        }
      }

      v68 = v46;
      if (SpecialCaseHandlingLanguageIdentifierForLocale)
      {
        v69 = v46 == 73;
      }

      else
      {
        v69 = 0;
      }

      v70 = !v69;
      if (v46 < 0 || !v70)
      {
        if (v38 < 0 || (v72 = v419, v419 <= v38))
        {
          v73 = 0;
        }

        else if (v417[1])
        {
          v73 = *(&v417[1]->isa + range.length + v38);
        }

        else if (range.location)
        {
          v73 = *(range.location + range.length + v38);
        }

        else
        {
          if (v420 <= v38 || (v94 = *(&v419 + 1), *(&v419 + 1) > v38))
          {
            v95 = v38 - 4;
            if (v38 < 4)
            {
              v95 = 0;
            }

            if (v95 + 64 < v419)
            {
              v72 = v95 + 64;
            }

            *(&v419 + 1) = v95;
            v420 = v72;
            v440.length = v72 - v95;
            v440.location = range.length + v95;
            CFStringGetCharacters(v417[0], v440, v409);
            v94 = *(&v419 + 1);
          }

          v73 = v409[v38 - v94];
        }

        LODWORD(v33) = v73;
        v74 = __CFStringFoldCharacterClusterAtIndex(v73, v409, v38, v389, SpecialCaseHandlingLanguageIdentifierForLocale, __s2, 0, 0);
        if (v74 <= 0)
        {
          __s2[0] = v33;
          v71 = 1;
        }

        else
        {
          v71 = v74;
        }

        v31 = v388;
        v35 = v376;
        v34 = v378;
        if (v388)
        {
          goto LABEL_143;
        }

LABEL_162:
        if (v50 == 1 && v71 == 1)
        {
          v39 = v43;
          v372 = v42;
          v20 = v390;
          if (__s1[0] != __s2[0])
          {
            break;
          }

          goto LABEL_165;
        }

        if ((v389 & 1) != 0 || v50 == v71)
        {
          if (v50 >= v71)
          {
            v79 = v71;
          }

          else
          {
            v79 = v50;
          }

          if (memcmp(__s1, __s2, 4 * v79))
          {
LABEL_287:
            v39 = v43;
            v372 = v42;
            v20 = v390;
            v31 = v388;
            v35 = v376;
            v34 = v378;
            break;
          }

          if (v50 >= v71)
          {
            v31 = v388;
            v35 = v376;
            v34 = v378;
            if (v71 >= v50)
            {
              v20 = v390;
LABEL_165:
              v39 = v43 + 1;
              v372 = v42;
              goto LABEL_166;
            }

            if ((v50 + v38) <= v391)
            {
              v86 = &__s1[v50];
              v87 = &__s1[v71];
              v88 = v43 + 1;
              if ((v43 + 1) >= 4)
              {
                v89 = v43 - 3;
              }

              else
              {
                v89 = 0;
              }

              while (1)
              {
                if (v43 < -1 || (v90 = v419, v419 <= v88))
                {
                  v91 = 0;
                }

                else if (v417[1])
                {
                  v91 = *(&v417[1]->isa + range.length + v43 + 1);
                }

                else if (range.location)
                {
                  v91 = *(range.location + range.length + v43 + 1);
                }

                else
                {
                  if (v420 <= v88 || (v93 = *(&v419 + 1), *(&v419 + 1) > v88))
                  {
                    if (v89 + 64 < v419)
                    {
                      v90 = v89 + 64;
                    }

                    *(&v419 + 1) = v89;
                    v420 = v90;
                    v439.length = v90 - v89;
                    v439.location = range.length + v89;
                    CFStringGetCharacters(v417[0], v439, v409);
                    v93 = *(&v419 + 1);
                  }

                  v91 = v409[v43 + 1 - v93];
                }

                v92 = v38 + 1;
                if (__CFStringFoldCharacterClusterAtIndex(v91, v409, v38 + 1, v389, SpecialCaseHandlingLanguageIdentifierForLocale, __s2, 0, 0) > 0)
                {
                  goto LABEL_287;
                }

                v31 = v388;
                v35 = v376;
                v34 = v378;
                if (*v87 != __s2[0])
                {
LABEL_234:
                  v39 = v43;
                  v372 = v42;
                  v20 = v390;
                  goto LABEL_235;
                }

                ++v87;
                ++v38;
                if (v87 >= v86)
                {
                  v38 = v92;
LABEL_220:
                  v20 = v390;
                  goto LABEL_165;
                }
              }
            }
          }

          else
          {
            v31 = v388;
            v35 = v376;
            v34 = v378;
            if ((v71 + v43) <= v390)
            {
              v80 = &__s2[v50];
              while (1)
              {
                v81 = v43 + 1;
                if (v43 < -1 || (v82 = v432, v432 <= v81))
                {
                  v83 = 0;
                }

                else if (theStringa[1])
                {
                  v83 = *(&theStringa[1]->isa + *(&v431 + 1) + v43 + 1);
                }

                else if (v431)
                {
                  v83 = *(v431 + *(&v431 + 1) + v43 + 1);
                }

                else
                {
                  if (v433 <= v81 || (v84 = *(&v432 + 1), *(&v432 + 1) > v81))
                  {
                    v85 = v43 - 3;
                    if (v81 < 4)
                    {
                      v85 = 0;
                    }

                    if (v85 + 64 < v432)
                    {
                      v82 = v85 + 64;
                    }

                    *(&v432 + 1) = v85;
                    v433 = v82;
                    v438.length = v82 - v85;
                    v438.location = *(&v431 + 1) + v85;
                    CFStringGetCharacters(theStringa[0], v438, buffer);
                    v84 = *(&v432 + 1);
                  }

                  v83 = buffer[v43 + 1 - v84];
                }

                if (__CFStringFoldCharacterClusterAtIndex(v83, buffer, v43 + 1, v389, SpecialCaseHandlingLanguageIdentifierForLocale, __s1, 0, 0) > 0)
                {
                  goto LABEL_287;
                }

                v31 = v388;
                v35 = v376;
                v34 = v378;
                if (*v80 != __s1[0])
                {
                  goto LABEL_234;
                }

                ++v80;
                ++v43;
                if (v80 >= &__s2[v71])
                {
                  v43 = v81;
                  goto LABEL_220;
                }
              }
            }
          }
        }

        v39 = v43;
        v372 = v42;
        v20 = v390;
        break;
      }

      if ((v389 & ((v46 - 65) < 0x1A)) != 0)
      {
        v68 = v46 | 0x20;
      }

      __s2[0] = v68;
      v71 = 1;
      if (!v31)
      {
        goto LABEL_162;
      }

LABEL_143:
      if ((v68 & 0x80u) == 0)
      {
        v75 = v68;
      }

      else
      {
        v75 = v33;
      }

      v76 = (theSet[1] & 4) >> 2;
      if (HIDWORD(theSet[1]) > v75 || v395 <= v75)
      {
        goto LABEL_161;
      }

      if ((theSet[1] & 2) != 0)
      {
        v77 = CFCharacterSetIsLongCharacterMember(theSet[0], v75);
        v35 = v376;
        v34 = v378;
        v31 = v388;
        if (!v77)
        {
          goto LABEL_162;
        }
      }

      else
      {
        if (!*(&v395 + 1))
        {
          if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
          {
            goto LABEL_162;
          }

          goto LABEL_154;
        }

        if ((theSet[1] & 1) == 0)
        {
          if ((((*(*(&v395 + 1) + (v75 >> 3)) >> (v75 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
          {
            goto LABEL_162;
          }

          goto LABEL_154;
        }

        v78 = *(*(&v395 + 1) + (v75 >> 8));
        if (!*(*(&v395 + 1) + (v75 >> 8)))
        {
          if ((theSet[1] & 4) == 0)
          {
            goto LABEL_162;
          }

          goto LABEL_154;
        }

        LOBYTE(v76) = (theSet[1] & 4) == 0;
        if (v78 != 255)
        {
          if ((((*(*(&v395 + 1) + 32 * v78 + (v75 >> 3) + 224) >> (v75 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
          {
            goto LABEL_162;
          }

          goto LABEL_154;
        }

LABEL_161:
        if ((v76 & 1) == 0)
        {
          goto LABEL_162;
        }
      }

LABEL_154:
      v39 = v43;
      v372 = v42;
      v20 = v390;
LABEL_166:
      ++v38;
    }

    while (v39 < v20 && v38 < v391);
LABEL_235:
    if (v39 == v20)
    {
      v96 = v31;
    }

    else
    {
      v96 = 0;
    }

    if (v96 == 1 && v38 < v391)
    {
      v99 = -v38;
      v100 = v38 + 64;
      v98 = v368;
      while (1)
      {
        if (v38 >= 4)
        {
          v101 = 4;
        }

        else
        {
          v101 = v38;
        }

        if (v38 < 0 || (v102 = v419, v419 <= v38))
        {
          v104 = 0;
        }

        else
        {
          if (v417[1])
          {
            v103 = v417[1] + range.length;
          }

          else
          {
            if (range.location)
            {
              v104 = *(range.location + range.length + v38);
              goto LABEL_256;
            }

            if (v420 <= v38 || (v109 = *(&v419 + 1), *(&v419 + 1) > v38))
            {
              v110 = -v101;
              v111 = v101 + v99;
              v112 = v100 - v101;
              v113 = v38 + v110;
              v114 = v113 + 64;
              if (v113 + 64 >= v419)
              {
                v114 = v419;
              }

              *(&v419 + 1) = v113;
              v420 = v114;
              if (v419 >= v112)
              {
                v102 = v112;
              }

              v441.location = v113 + range.length;
              v441.length = v102 + v111;
              CFStringGetCharacters(v417[0], v441, v409);
              v35 = v376;
              v34 = v378;
              v31 = v388;
              v109 = *(&v419 + 1);
            }

            v103 = &v409[-v109];
          }

          v104 = v103[v38];
        }

LABEL_256:
        v33 = v104;
        v105 = *v34;
        v106 = (*v34 & 4u) >> 2;
        if (*v35 > v104 || *v381 <= v104)
        {
LABEL_279:
          if ((v106 & 1) == 0)
          {
            goto LABEL_243;
          }

          goto LABEL_280;
        }

        if ((v105 & 2) != 0)
        {
          v108 = CFCharacterSetIsLongCharacterMember(*v360, v104);
          v35 = v376;
          v34 = v378;
          v31 = v388;
          if (!v108)
          {
            goto LABEL_243;
          }
        }

        else
        {
          v107 = *v370;
          if (*v370)
          {
            if (v105)
            {
              v115 = *(v107 + (v33 >> 8));
              if (*(v107 + (v33 >> 8)))
              {
                LOBYTE(v106) = (*v34 & 4) == 0;
                if (v115 == 255)
                {
                  goto LABEL_279;
                }

                if ((((*(v107 + 32 * v115 + (v33 >> 3) + 224) >> (v33 & 7)) & 1) == 0) == ((*v34 & 4) == 0))
                {
                  goto LABEL_243;
                }
              }

              else if ((v105 & 4) == 0)
              {
                goto LABEL_243;
              }
            }

            else if ((((*(v107 + (v33 >> 3)) >> (v33 & 7)) & 1) == 0) == ((*v34 & 4) == 0))
            {
              goto LABEL_243;
            }
          }

          else if (((((*v34 & 1) == 0) ^ ((*v34 & 4u) >> 2)) & 1) == 0)
          {
            goto LABEL_243;
          }
        }

LABEL_280:
        ++v38;
        --v99;
        ++v100;
        if (v391 == v38)
        {
          goto LABEL_293;
        }
      }
    }

    v98 = v368;
LABEL_243:
    if (v38 == v391)
    {
LABEL_293:
      if (v363 == 12)
      {
        v117 = v31;
      }

      else
      {
        v117 = 0;
      }

      if (v117 != 1 || v39 >= v20)
      {
LABEL_380:
        v133 = v351;
        if (v363 == 12 && v39 != v20)
        {
          break;
        }

LABEL_382:
        if (v133)
        {
          v133->location = v98;
          v133->length = v39 - v98;
        }

        goto LABEL_384;
      }

      v118 = -v39;
      v119 = v39 + 64;
      while (1)
      {
        if (v39 >= 4)
        {
          v120 = 4;
        }

        else
        {
          v120 = v39;
        }

        if (v39 < 0 || (v121 = v432, v432 <= v39))
        {
          v123 = 0;
        }

        else
        {
          if (theStringa[1])
          {
            v122 = theStringa[1] + *(&v431 + 1);
LABEL_306:
            v123 = v122[v39];
            goto LABEL_308;
          }

          if (!v431)
          {
            if (v433 <= v39 || (v127 = *(&v432 + 1), *(&v432 + 1) > v39))
            {
              v128 = -v120;
              v129 = v120 + v118;
              v130 = v119 - v120;
              v131 = v39 + v128;
              v132 = v131 + 64;
              if (v131 + 64 >= v432)
              {
                v132 = v432;
              }

              *(&v432 + 1) = v131;
              v433 = v132;
              if (v432 >= v130)
              {
                v121 = v130;
              }

              v442.location = v131 + *(&v431 + 1);
              v442.length = v121 + v129;
              CFStringGetCharacters(theStringa[0], v442, buffer);
              v127 = *(&v432 + 1);
            }

            v122 = &buffer[-v127];
            goto LABEL_306;
          }

          v123 = *(v431 + *(&v431 + 1) + v39);
        }

LABEL_308:
        LOBYTE(v124) = (theSet[1] & 4) == 0;
        if (HIDWORD(theSet[1]) > v123 || v395 <= v123)
        {
          v124 = (theSet[1] & 4) >> 2;
LABEL_313:
          if ((v124 & 1) == 0)
          {
            goto LABEL_379;
          }

          goto LABEL_339;
        }

        if ((theSet[1] & 2) != 0)
        {
          if (!CFCharacterSetIsLongCharacterMember(*v360, v123))
          {
            goto LABEL_379;
          }
        }

        else if (*(&v395 + 1))
        {
          if (theSet[1])
          {
            v126 = *(*(&v395 + 1) + (v123 >> 8));
            if (*(*(&v395 + 1) + (v123 >> 8)))
            {
              if (v126 == 255)
              {
                goto LABEL_313;
              }

              if ((((*(*(&v395 + 1) + 32 * v126 + (v123 >> 3) + 224) >> (v123 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
              {
                goto LABEL_379;
              }
            }

            else if ((theSet[1] & 4) == 0)
            {
LABEL_379:
              v20 = v390;
              goto LABEL_380;
            }
          }

          else if ((((*(*(&v395 + 1) + (v123 >> 3)) >> (v123 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
          {
            goto LABEL_379;
          }
        }

        else if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
        {
          goto LABEL_379;
        }

LABEL_339:
        ++v39;
        --v118;
        ++v119;
        if (v390 == v39)
        {
          v39 = v390;
          v133 = v351;
          goto LABEL_382;
        }
      }
    }

    if (v98 != v359)
    {
      v28 = v98 + v366;
      continue;
    }

    break;
  }

LABEL_1000:
  LOBYTE(v14) = 0;
  return v14;
}

void cow_cleanup(uint64_t a1, int a2)
{
  v2 = &OBJC_IVAR_____NSFrozenDictionaryM_storage;
  if (a2 == 1)
  {
    v2 = &OBJC_IVAR_____NSDictionaryM_storage;
  }

  v3 = a1 + *v2;
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = LODWORD(__NSDictionarySizes_0[v4 >> 58]);
  *v3 = 0;
  *(v3 + 8) = v4 & 0x2000000FFFFFFFFLL;
  if (v4 >> 58)
  {
    v7 = &v5[v6];
    v8 = v5;
    v9 = v6;
    do
    {
      v10 = *v8;
      if (*v8 >= 1 && v10 != &___NSDictionaryM_DeletedMarker)
      {
      }

      ++v8;
      --v9;
    }

    while (v9);
    do
    {
      if (*v7 >= 1)
      {
      }

      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v5);
}

unint64_t _CFBuildVersionForCFSystemVersion(unint64_t a1, unsigned int a2)
{
  if (a1 <= 0x14)
  {
    if (a1 > 4)
    {
      if (a1 >= 0xA)
      {
        v2 = 4294901760;
      }

      else
      {
        v2 = 0;
      }

      if (a2 == 6 || a2 == 1)
      {
        v3 = a1 - 5;
        a1 = _CFBuildVersionForCFSystemVersion_macos_map[a1 - 5];
        if (a2 == 6)
        {
          if (v3 >= 0xB)
          {
            if (a1 == 659456)
            {
              v7 = 917504;
            }

            else
            {
              v7 = -65536;
            }

            if (a1 == 720896)
            {
              v8 = 917504;
            }

            else
            {
              v8 = v7;
            }

            if (a1 == 659201)
            {
              a1 = 852480;
            }

            else
            {
              a1 = v8;
            }

            a2 = 2;
          }

          else
          {
            a2 = 2;
            a1 = 851968;
          }
        }
      }

      else
      {
        a1 = v2;
      }

      return a2 | (a1 << 32);
    }

    goto LABEL_16;
  }

  if (a1 - 1000 <= 0xF)
  {
    if (a1 > 0x3EC && a2 == 1)
    {
      if (a1 - 1005 >= 0xB)
      {
        a2 = 1;
        a1 = 4294901760;
      }

      else
      {
        a1 = dword_183430EE8[a1 - 1005];
        a2 = 1;
      }

      return a2 | (a1 << 32);
    }

LABEL_16:
    a1 = 0;
    if (a2 == 6)
    {
      a2 = 2;
    }

    return a2 | (a1 << 32);
  }

  if (a2 == 6)
  {
    if (a1 == 659456)
    {
      v4 = 917504;
    }

    else
    {
      v4 = -65536;
    }

    if (a1 == 720896)
    {
      v5 = 917504;
    }

    else
    {
      v5 = v4;
    }

    if (a1 == 659201)
    {
      v6 = 852480;
    }

    else
    {
      v6 = v5;
    }

    if (a1 >= 0xA0F01)
    {
      a1 = v6;
    }

    else
    {
      a1 = 851968;
    }

    a2 = 2;
  }

  return a2 | (a1 << 32);
}

void __RELEASE_OBJECTS_IN_THE_ARRAY__(uint64_t a1, int a2)
{
  v2 = &OBJC_IVAR_____NSFrozenArrayM_storage;
  if (a2 == 1)
  {
    v2 = &OBJC_IVAR_____NSArrayM_storage;
  }

  v3 = a1 + *v2;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 12) - v5;
  v7 = *(v3 + 20);
  *(v3 + 20) = 0;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  if (v4)
  {
    if (v8)
    {
      v9 = &v4[v5];
      v10 = v8;
      do
      {
        if ((*v9 & 0x8000000000000000) == 0)
        {
        }

        ++v9;
        --v10;
      }

      while (v10);
    }

    if (v7 > v6)
    {
      if (v7 - v8 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v7 - v8;
      }

      v12 = v4;
      do
      {
        if ((*v12 & 0x8000000000000000) == 0)
        {
        }

        ++v12;
        --v11;
      }

      while (v11);
    }

    free(v4);
  }
}

uint64_t _CFExecutableLinkedOnOrAfter(unint64_t a1)
{
  active_platform = dyld_get_active_platform();
  _CFBuildVersionForCFSystemVersion(a1, active_platform);
  return dyld_program_sdk_at_least();
}

const void *CFStringEncodingGetConverter(uint64_t a1)
{
  result = __CFGetConverter(a1);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t __CFStringCheckAndReplace(const __CFString *a1, unint64_t a2, uint64_t a3, __CFString *theString)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = atomic_load(&a1->info);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v6 = theString;
  if (!theString)
  {
    return 2;
  }

  v10 = a2 + a3;
  v11 = atomic_load(&a1->info);
  v12 = v11 & 5;
  v13 = atomic_load(&a1->info);
  v14 = v13 & 0x60;
  if (v12 == 4)
  {
    p_data = &a1->data;
    if (v14)
    {
      v16 = *p_data;
    }

    else
    {
      v18 = atomic_load(&a1->info);
      v16 = &p_data[(v18 & 5) != 4];
    }

    length = *v16;
  }

  else if ((v13 & 0x60) != 0)
  {
    length = a1->length;
  }

  else
  {
    length = a1->data;
  }

  result = 3;
  if (v10 >= a2 && v10 <= length)
  {
    if (theString == a1)
    {
      Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, theString);
      v6 = Copy;
    }

    else
    {
      Copy = 0;
    }

    v20 = CFStringGetLength(v6);
    if (v20 < 1)
    {
      v22 = 0;
    }

    else
    {
      if (CF_IS_OBJC(7uLL, v6))
      {
        v21 = [(__CFString *)v6 _encodingCantBeStoredInEightBitCFString];
      }

      else
      {
        v23 = atomic_load(&v6->info);
        v21 = (v23 >> 4) & 1;
      }

      v22 = v21 != 0;
    }

    v34[0] = a2;
    v34[1] = a3;
    __CFStringChangeSizeMultiple(a1, v34, 1, v20, v22);
    v24 = atomic_load(&a1->info);
    v25 = atomic_load(&a1->info);
    v26 = v25 & 0x60;
    v27 = &a1->data;
    if ((v24 & 0x10) == 0)
    {
      if (v26)
      {
        v28 = *v27;
      }

      else
      {
        v30 = atomic_load(&a1->info);
        v28 = &v27[(v30 & 5) != 4];
      }

      v31 = __CFDefaultEightBitStringEncoding;
      if (__CFDefaultEightBitStringEncoding == -1)
      {
        v31 = __CFStringComputeEightBitStringEncoding();
      }

      v32 = atomic_load(&a1->info);
      v35.location = 0;
      v35.length = v20;
      CFStringGetBytes(v6, v35, v31, 0, 0, &v28[a2 + ((v32 >> 2) & 1)], v20, 0);
      goto LABEL_36;
    }

    if (v26)
    {
      v29 = *v27;
      if (!v29)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v33 = atomic_load(&a1->info);
      v29 = &v27[(v33 & 5) != 4];
      if (!v29)
      {
LABEL_36:
        if (Copy)
        {
          CFRelease(Copy);
        }

        return 0;
      }
    }

    v36.location = 0;
    v36.length = v20;
    CFStringGetCharacters(v6, v36, &v29[2 * a2]);
    goto LABEL_36;
  }

  return result;
}

char *__NSArrayI_new(id *a1, void *a2, uint64_t a3, char a4)
{
  v18 = a2;
  v8 = objc_opt_self();
  v9 = __CFAllocateObject(v8, 8 * a3);
  v10 = v9;
  if (a3)
  {
    v11 = (v9 + 16);
    if (a2)
    {
      *v11 = *a1;
      v12 = a3 - 1;
      if (a3 != 1)
      {
        v13 = v9 + 24;
        do
        {
          v14 = v18++;
          *v13++ = *v14;
          --v12;
        }

        while (v12);
      }
    }

    else if (a1)
    {
      memmove(v9 + 16, a1, 8 * a3);
    }

    if ((a4 & 1) == 0)
    {
      v15 = a3;
      do
      {
        if ((*v11 & 0x8000000000000000) == 0)
        {
          v16 = *v11;
        }

        ++v11;
        --v15;
      }

      while (v15);
    }

    *(v10 + 1) = a3;
  }

  return v10;
}

_BYTE *__NSSetI_new(uint64_t *a1, uint64_t *a2, unint64_t a3, char a4)
{
  v5 = a3;
  v8 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v23 = a2;
  while (__NSSetCapacities[v8] < a3)
  {
    if (++v8 == 64)
    {
      __break(1u);
      break;
    }
  }

  v9 = __NSSetSizes[v8];
  v10 = objc_opt_self();
  v11 = __CFAllocateObject(v10, 8 * v9);
  v12 = v11;
  v11[15] = v11[15] & 3 | (4 * v8);
  if (v5)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = ____NSSetI_new_block_invoke;
    v18 = &unk_1E6D82430;
    v20 = v11 + 16;
    v21 = v9;
    v22 = a4;
    v19 = v11;
    if (a2)
    {
      ____NSSetI_new_block_invoke(v16, *a1);
      while (--v5)
      {
        v13 = v23++;
        v17(v16, *v13);
      }
    }

    else
    {
      do
      {
        v14 = *a1++;
        v17(v16, v14);
        --v5;
      }

      while (v5);
    }
  }

  return v12;
}

uint64_t __NSCollectionHandleConcurrentEnumerationIfSpecified(char a1, char a2, size_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((a1 & 1) == 0 || __CFActiveProcessorCount() < 2)
  {
    return 0;
  }

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ____NSCollectionHandleConcurrentEnumerationIfSpecified_block_invoke;
  v8[3] = &unk_1E6DD00C0;
  v9 = a2;
  v8[4] = a4;
  v8[5] = v10;
  dispatch_apply(a3, 0, v8);
  _Block_object_dispose(v10, 8);
  return 1;
}

unint64_t __CFStringFillCharacterSetInlineBuffer(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x10000) != 0)
  {
    if (!__CFStringFillCharacterSetInlineBuffer_nonAlnumChars)
    {
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
      MutableCopy = CFCharacterSetCreateMutableCopy(&__kCFAllocatorSystemDefault, Predefined);
      CFCharacterSetInvert(MutableCopy);
      v6 = 0;
      atomic_compare_exchange_strong(&__CFStringFillCharacterSetInlineBuffer_nonAlnumChars, &v6, MutableCopy);
      if (v6)
      {
        CFRelease(MutableCopy);
      }
    }

    CFCharacterSetInitInlineBuffer(__CFStringFillCharacterSetInlineBuffer_nonAlnumChars, a1);
  }

  return (a2 >> 16) & 1;
}

CFStringRef _CFStringCreateWithFormatAndArgumentsReturningMetadata(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CFArrayRef *a8, __int16 *a9)
{
  cf[1] = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  Mutable[1].info = Mutable[1].info & 0xF | 0x780;
  cf[0] = 0;
  if (__CFStringAppendFormatCore(Mutable, a2, a3, a4, a5, a6, 0, a7, 0, 0, 0, 0, a9, a8, cf))
  {
    Copy = CFStringCreateCopy(a1, Mutable);
  }

  else
  {
    CFLog(3, @"ERROR: Failed to format string: %@", v18, v19, v20, v21, v22, v23, cf[0]);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    Copy = 0;
  }

  CFRelease(Mutable);
  return Copy;
}

CFStringRef CFStringCreateWithCString(CFAllocatorRef alloc, const char *cStr, CFStringEncoding encoding)
{
  v3 = *&encoding;
  v6 = strlen(cStr);

  return __CFStringCreateImmutableFunnel3(alloc, cStr, v6, v3, 8, 0xFFFFFFFFFFFFFFFFLL, 0, v7);
}

BOOL isEqualToString(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E5910];
  v5 = *MEMORY[0x1E69E5910];
  v6 = a1 & 0xC000000000000007;
  if ((a1 & 0xC000000000000007) == 0xC000000000000007)
  {
    v5 = 7;
  }

  v7 = ((v5 ^ a1) >> 3) & 0xF;
  if (v7 != [a2 length])
  {
    return 0;
  }

  v21[0] = 0;
  v21[1] = 0;
  v8 = *v4;
  if (v6 == 0xC000000000000007)
  {
    v8 = 0;
  }

  v9 = v8 ^ a1;
  v10 = (~(v8 ^ a1) & 7) == 0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (v10)
  {
    v11 = 0xFFFFFFFFFFFFFLL;
  }

  v12 = (v9 >> 3) & 0xF;
  v13 = (v11 & (v9 >> 3)) >> 4;
  if (v12 < 8)
  {
    v21[0] = v13;
  }

  else
  {
    v14 = (v9 >> 3) & 0xF;
    if (v12 >= 0xA)
    {
      do
      {
        *(&v20[15] + v14 + 1) = sixBitToCharLookup[v13 & 0x1F];
        v13 >>= 5;
        --v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        *(&v20[15] + v14 + 1) = sixBitToCharLookup[v13 & 0x3F];
        v13 >>= 6;
        --v14;
      }

      while (v14);
    }
  }

  [a2 getCharacters:v20 range:{0, v7}];
  if (!v12)
  {
    return 1;
  }

  if (v20[0] != LOBYTE(v21[0]))
  {
    return 0;
  }

  v15 = 1;
  do
  {
    v16 = v15;
    if (v12 == v15)
    {
      break;
    }

    v17 = *(v21 + v15);
    v18 = v20[v15++];
  }

  while (v18 == v17);
  return v16 >= v12;
}

uint64_t isEqualToString_0(unint64_t a1, unint64_t *a2, int a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E5910];
  v6 = *MEMORY[0x1E69E5910];
  v7 = a1 & 0xC000000000000007;
  if ((a1 & 0xC000000000000007) == 0xC000000000000007)
  {
    v6 = 0;
  }

  v8 = v6 ^ a1;
  v9 = 0x1FFF;
  if ((~v8 & 7) == 0)
  {
    v9 = 31;
  }

  v27[0] = 0;
  v26 = 0;
  v10 = *&v9 & (v8 >> 50);
  v25 = 0;
  if (a3)
  {
    Length2 = _CFStringGetLength2(a2);
    v27[0] = Length2;
  }

  else
  {
    if (!__CFStringIsCF(a2, &v26 + 1, v27, &v26, &v25))
    {
      if ([a2 length] == v10)
      {
        CStringPtr = [a2 _fastCStringContents:0];
        if (CStringPtr)
        {
          goto LABEL_11;
        }

        CharactersPtr = CFStringGetCharactersPtr(a2);
        if (!CharactersPtr)
        {
          return [a2 isEqualToString:a1];
        }

        goto LABEL_24;
      }

      return 0;
    }

    Length2 = v27[0];
  }

  if (Length2 != v10)
  {
    return 0;
  }

  CStringPtr = _CFNonObjCStringGetCStringPtr(a2, 0x600u, 0);
  if (CStringPtr)
  {
LABEL_11:
    v13 = *v5;
    if (v7 == 0xC000000000000007)
    {
      v13 = 0xC000000000000007;
    }

    return memcmp((((v13 ^ a1) >> 3) & 0x7FFFFFFFFFFFLL), CStringPtr, v10) == 0;
  }

  CharactersPtr = CFStringGetCharactersPtr(a2);
  if (!CharactersPtr)
  {
    return [a2 compare:a1 options:0 range:0 locale:{objc_msgSend(a2, "length"), 0}] == 0;
  }

LABEL_24:
  v18 = *v5;
  if (v7 == 0xC000000000000007)
  {
    v18 = 0xC000000000000007;
  }

  if (!v10)
  {
    return 1;
  }

  v19 = (((v18 ^ a1) >> 3) & 0x7FFFFFFFFFFFLL);
  v20 = v10 - 1;
  do
  {
    v22 = *v19++;
    v21 = v22;
    v23 = *CharactersPtr++;
    v14 = v23 == v21;
    v15 = v14;
  }

  while (v14 && v20-- != 0);
  return v15;
}

uint64_t CFStringHashCString(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 97)
  {
    v5 = 0;
    v4 = a2;
    do
    {
      v4 = *(__CFCharToUniCharTable + 2 * a1[v5 + 3]) + 67503105 * v4 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * a1[v5]) + *(__CFCharToUniCharTable + 2 * a1[v5 + 1])) + *(__CFCharToUniCharTable + 2 * a1[v5 + 2]));
      v6 = v5 >= 0x1C;
      v5 += 4;
    }

    while (!v6);
    v7 = 0;
    do
    {
      v8 = &a1[(a2 >> 1) - 16];
      v4 = *(__CFCharToUniCharTable + 2 * v8[v7 + 3]) + 67503105 * v4 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * v8[v7]) + *(__CFCharToUniCharTable + 2 * v8[v7 + 1])) + *(__CFCharToUniCharTable + 2 * v8[v7 + 2]));
      v9 = v7 - 16;
      v7 += 4;
    }

    while (v9 < 12);
    v10 = &a1[a2 - 32];
    do
    {
      v4 = *(__CFCharToUniCharTable + 2 * v10[3]) + 67503105 * v4 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * *v10) + *(__CFCharToUniCharTable + 2 * v10[1])) + *(__CFCharToUniCharTable + 2 * v10[2]));
      v10 += 4;
    }

    while (v10 < &a1[a2]);
  }

  else
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) < 1)
    {
      v2 = a1;
      v4 = a2;
      v3 = a1;
    }

    else
    {
      v2 = a1;
      v3 = a1;
      v4 = a2;
      do
      {
        v4 = *(__CFCharToUniCharTable + 2 * v3[3]) + 67503105 * v4 + 257 * (257 * (257 * *(__CFCharToUniCharTable + 2 * *v3) + *(__CFCharToUniCharTable + 2 * v3[1])) + *(__CFCharToUniCharTable + 2 * v3[2]));
        v3 += 4;
        v2 += 4;
      }

      while (v3 < &a1[a2 & 0xFFFFFFFFFFFFFFFCLL]);
    }

    if (v3 < &a1[a2])
    {
      v11 = (&a1[a2] - v2);
      do
      {
        v12 = *v3++;
        v4 = 257 * v4 + *(__CFCharToUniCharTable + 2 * v12);
        --v11;
      }

      while (v11);
    }
  }

  return (v4 << (a2 & 0x1F)) + v4;
}

uint64_t _CFPreferencesCopyAppValueWithContainerAndConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v8 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesCopyAppValueWithContainerAndConfiguration_cold_1();
    }

    v8 = [qword_1ED40BE18 copyPrefs];
  }

  v9 = [v8 copyAppValueForKey:a1 identifier:a2 container:a3 configurationURL:a4];

  return v9;
}

BOOL _CFPreferencesGetAppBooleanValueWithContainer(uint64_t a1, uint64_t a2, uint64_t a3, Boolean *a4)
{
  v5 = _CFPreferencesCopyAppValueWithContainerAndConfiguration(a1, a2, a3, 0);
  BooleanValueWithValue = _CFPreferencesGetBooleanValueWithValue(v5, a4);
  if (v5)
  {
    CFRelease(v5);
  }

  return BooleanValueWithValue;
}

uint64_t _CFGetEUID()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = 0;
  __CFGetUGIDs(&v1, 0);
  return v1;
}

uint64_t _CFSetTSD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 >= 0x46)
  {
    _CFSetTSD_cold_1(a1);
  }

  v6 = __CFTSDGetTable(1);
  if (v6)
  {
    v7 = &v6[8 * v3];
    result = *(v7 + 1);
    *(v7 + 1) = a2;
    *(v7 + 71) = a3;
  }

  else
  {
    _CFLogSimple(4, "Warning: TSD slot %d set but the thread data has already been torn down.", v3);
    return 0;
  }

  return result;
}

uint64_t __CFCheckCFInfoPACSignature_Bridged(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = *result & ~MEMORY[0x1E69E58F0];
    if ((*result & MEMORY[0x1E69E58F0]) != 0)
    {
      v1 |= *result & MEMORY[0x1E69E58F0];
    }

    if (__NSCFType == v1)
    {
      v2 = atomic_load((result + 8));
      if ((v2 & 0x3FF00) != 0x200)
      {
        return __CFCheckCFInfoPACSignature(result);
      }

      v3 = &__kCFAllocatorSystemDefault == result || &__kCFAllocatorMalloc == result;
      v4 = v3 || &__kCFAllocatorMallocZone == result;
      if (!v4 && &__kCFAllocatorNull != result)
      {
        return __CFCheckCFInfoPACSignature(result);
      }
    }
  }

  return result;
}

const void *__cdecl CFDictionaryGetValue(CFDictionaryRef theDict, const void *key)
{
  v7 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    return [(__CFDictionary *)theDict objectForKey:key];
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    CFBasicHashFindBucket(theDict, key, &v5);
    if (*(&v6 + 1))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

__CFString *_CFPrefsGetCacheStringForBundleID(__CFString *a1)
{
  v1 = _CFPrefsCurrentAppIdentifierCache;
  v2 = a1 == @"kCFPreferencesCurrentApplication" || _CFPrefsCurrentAppIdentifierCache == a1;
  if (v2 || CFEqual(a1, @"kCFPreferencesCurrentApplication"))
  {
    if (!v1)
    {
      if ((MainBundle = CFBundleGetMainBundle()) != 0 && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0 && (v1 = Identifier, CFStringGetLength(Identifier)) || (v1 = _CFProcessNameString()) != 0)
      {
        v7 = _CFStringCopyBundleUnloadingProtectedString(v1);
        v1 = v7;
        v8 = 0;
        atomic_compare_exchange_strong(&_CFPrefsCurrentAppIdentifierCache, &v8, v7);
        if (v8)
        {
          CFRelease(v7);
          return _CFPrefsCurrentAppIdentifierCache;
        }
      }
    }
  }

  else if (!v1 || !CFEqual(v1, a1))
  {
    v1 = @"kCFPreferencesAnyApplication";
    if (!CFEqual(a1, @"kCFPreferencesAnyApplication") && !CFEqual(a1, @"Apple Global Domain") && !CFEqual(a1, @".GlobalPreferences"))
    {
      return a1;
    }
  }

  return v1;
}

UniChar CFStringGetCharacterAtIndex(CFStringRef theString, CFIndex idx)
{
  if (CF_IS_OBJC(7uLL, theString))
  {

    return [(__CFString *)theString characterAtIndex:idx];
  }

  else
  {
    v5 = atomic_load(&theString->info);
    p_data = &theString->data;
    if ((v5 & 0x60) != 0)
    {
      v7 = *p_data;
    }

    else
    {
      v8 = atomic_load(&theString->info);
      v7 = &p_data[(v8 & 5) != 4];
    }

    v9 = atomic_load(&theString->info);
    if ((v9 & 0x10) != 0)
    {
      v11 = &v7[2 * idx];
    }

    else
    {
      v10 = atomic_load(&theString->info);
      v11 = (__CFCharToUniCharTable + 2 * v7[((v10 >> 2) & 1) + idx]);
    }

    return *v11;
  }
}

unint64_t __CFGetUGIDs(_DWORD *a1, _DWORD *a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (_CFCanChangeEUIDs_onceToken != -1)
  {
    __CFGetUGIDs_cold_1();
  }

  if (_CFCanChangeEUIDs_canChangeEUIDs == 1)
  {
    result = ____CFGetUGIDs_block_invoke();
    v5 = HIDWORD(result);
    if (!a1)
    {
      goto LABEL_10;
    }

LABEL_9:
    *a1 = result;
    goto LABEL_10;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ____CFGetUGIDs_block_invoke_2;
  v6[3] = &unk_1E6DCF9D8;
  v6[4] = &__block_literal_global_81;
  if (__CFGetUGIDs_onceToken != -1)
  {
    dispatch_once(&__CFGetUGIDs_onceToken, v6);
  }

  result = __CFGetUGIDs_cachedUGIDs;
  LODWORD(v5) = HIDWORD(__CFGetUGIDs_cachedUGIDs);
  if (a1)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

Boolean CFStringHasSuffix(CFStringRef theString, CFStringRef suffix)
{
  v4.length = CFStringGetLength(theString);
  v4.location = 0;

  return CFStringFindWithOptionsAndLocale(theString, suffix, v4, 0xCuLL, 0, 0);
}

void normalizeQuintuplet(__CFString *theString, __CFString *a2, unsigned __int8 a3, CFStringRef a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v10 = theString;
  v20 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v17 = 0;
  cf = 0;
  v16 = 0;
  if (a4)
  {
    if (CFStringHasPrefix(a4, @"/private/var/containers/Shared/SystemGroup") || CFStringHasPrefix(v8, @"/var/containers/Shared/SystemGroup"))
    {
      a2 = @"kCFPreferencesAnyUser";
      v19 = 1;
    }

LABEL_8:
    if (CFStringHasSuffix(v10, @".plist"))
    {
      v21.length = CFStringGetLength(v10) - 6;
      v21.location = 0;
      v11 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v10, v21);
      cf = v11;
    }

    else
    {
      v11 = cf;
    }

    goto LABEL_11;
  }

  if (CFStringGetCharacterAtIndex(theString, 0) != 47)
  {
    goto LABEL_8;
  }

  if (a5)
  {
    normalizeQuintuplet_cold_1();
  }

  v15 = 0;
  _CFPrefsExtractQuadrupleFromPathIfPossible(v10, &cf, &v17, &v16, &v19, &v15 + 1, &v15);
  v11 = cf;
  if (!cf)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v16)
  {
    v8 = v16;
  }

  if (v11)
  {
    v10 = v11;
  }

  if (v17)
  {
    v12 = v17;
  }

  else
  {
    v12 = a2;
  }

  v13 = _CFPrefsCopyUserForContainer(v12, v8);
  if (CFEqual(@"kCFPreferencesAnyUser", v13) && (v19 & 1) == 0)
  {
    v19 = 1;
  }

  CacheStringForBundleID = _CFPrefsGetCacheStringForBundleID(v10);
  (*(a6 + 16))(a6, CacheStringForBundleID, v13, v19, v8, a5);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

CFStringRef _CFPrefsCopyUserForContainer(const __CFString *cf1, CFStringRef theString)
{
  if (theString && CFStringHasPrefix(theString, @"/private/var/containers/Shared/SystemGroup/"))
  {
    return @"kCFPreferencesAnyUser";
  }

  if (CFEqual(cf1, @"kCFPreferencesCurrentUser"))
  {
    return @"kCFPreferencesCurrentUser";
  }

  v3 = @"kCFPreferencesAnyUser";
  if (CFEqual(cf1, @"kCFPreferencesAnyUser"))
  {
    return v3;
  }

  v4 = CFCopyUserName();
  v5 = CFEqual(cf1, v4);
  CFRelease(v4);
  v6 = !@"kCFPreferencesCurrentUser" || v5 == 0;
  v3 = @"kCFPreferencesCurrentUser";
  if (!v6)
  {
    return v3;
  }

  return CFStringCreateCopy(&__kCFAllocatorSystemDefault, cf1);
}

BOOL _CFPrefsArmPendingKVOSlot()
{
  v0 = _CFGetTSD(16);
  if (!v0)
  {
    _CFSetTSD(16, 16, dummyKVODestructor);
  }

  return v0 == 0;
}

CFIndex CFArrayGetCount(CFArrayRef theArray)
{
  if (!CF_IS_OBJC(0x13uLL, theArray))
  {
    return *(theArray + 2);
  }

  return [(__CFArray *)theArray count];
}

unint64_t *_CFNonObjCHash(uint64_t a1)
{
  __CFCheckCFInfoPACSignature_Bridged(a1);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v8 = atomic_load((a1 + 8));
    v9 = (v8 >> 8) & 0x3FF;
    goto LABEL_15;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ a1;
  do
  {
    if ((v4 & 7) == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  v5 = v2 | v4;
  v6 = v2 & 7;
  v7 = (v5 >> 55) + 8;
  if (v6 == 7)
  {
    LODWORD(v6) = v7;
  }

  if (v6 <= 4)
  {
    if (v6 <= 2)
    {
      if (!v6)
      {
        if (dyld_program_sdk_at_least())
        {
          v9 = 7;
        }

        else
        {
          v9 = 1;
        }

        goto LABEL_31;
      }

      if (v6 != 2)
      {
        goto LABEL_37;
      }

LABEL_25:
      v9 = 7;
      goto LABEL_31;
    }

    if (v6 == 3)
    {
      v9 = 22;
      goto LABEL_31;
    }

LABEL_26:
    v9 = 1;
    goto LABEL_31;
  }

  if (v6 <= 19)
  {
    if (v6 != 5)
    {
      if (v6 == 6)
      {
        v9 = 42;
        goto LABEL_31;
      }

      goto LABEL_37;
    }

    goto LABEL_26;
  }

  if (v6 == 20)
  {
    goto LABEL_26;
  }

  if (v6 == 22)
  {
    goto LABEL_25;
  }

LABEL_37:
  v9 = [a1 _cfTypeID];
LABEL_15:
  if (v9 > 0x47)
  {
    v10 = (__CFRuntimeClassTables[(v9 - 72) >> 6] + 8 * ((v9 - 72) & 0x3F));
    goto LABEL_32;
  }

LABEL_31:
  v10 = &__CFRuntimeBuiltinClassTable + v9;
LABEL_32:
  v11 = *(*v10 + 6);
  if (!v11)
  {
    return a1;
  }

  return v11(a1);
}

uint64_t __CFNumberHash(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v1 = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  while ((v3 & 7) != *(MEMORY[0x1E69E5900] + v1))
  {
    if (++v1 == 7)
    {
      goto LABEL_10;
    }
  }

  if (v1 == 3)
  {
    v4 = v3 >> 3;
  }

  else
  {
LABEL_10:
    LOBYTE(v4) = atomic_load((a1 + 8));
  }

  if ((__CFNumberCanonicalTypes[v4 & 7] - 1) > 2)
  {
    v15[0] = 0.0;
    __CFNumberGetValue(a1, 6, v15);
    v9 = v15[0];
    if (v15[0] < 0.0)
    {
      v9 = -v15[0];
    }

    *v7.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v7.i64[0] = vbslq_s8(vnegq_f64(v11), v8, v7).i64[0];
    v12 = 2654435761u * *v7.i64;
    v13 = v12 + v10;
    if (v10 <= 0.0)
    {
      v13 = 2654435761u * *v7.i64;
    }

    v14 = v12 - fabs(v10);
    if (v10 < 0.0)
    {
      return v14;
    }

    else
    {
      return v13;
    }
  }

  else
  {
    LODWORD(v15[0]) = 0;
    __CFNumberGetValue(a1, 3, v15);
    v5 = LODWORD(v15[0]);
    if (SLODWORD(v15[0]) < 0)
    {
      v5 = -LODWORD(v15[0]);
    }

    return 2654435761 * v5;
  }
}

uint64_t __CFNumberGetValue(uint64_t result, uint64_t a2, uint64_t a3)
{
  v74[1] = *MEMORY[0x1E69E9840];
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v3 = 0;
  v4 = *MEMORY[0x1E69E5910];
  if ((~result & 0xC000000000000007) == 0)
  {
    v4 = 0;
  }

  v5 = v4 ^ result;
  while ((v5 & 7) != *(MEMORY[0x1E69E5900] + v3))
  {
    if (++v3 == 7)
    {
      goto LABEL_10;
    }
  }

  if (v3 == 3)
  {
    v6 = v5 >> 3;
  }

  else
  {
LABEL_10:
    LOBYTE(v6) = atomic_load((result + 8));
  }

  v7 = __CFNumberTypeTable[__CFNumberCanonicalTypes[v6 & 7]];
  v8 = __CFNumberTypeTable[a2] & 0x1F;
  v9 = result + 16;
  v10 = (v7 >> 5) & 1;
  v11 = (v7 >> 6) & 1;
  v74[0] = 0;
  if (result < 0)
  {
    v12 = 0;
    v13 = *MEMORY[0x1E69E5910];
    if ((~result & 0xC000000000000007) == 0)
    {
      v13 = 0;
    }

    v14 = v13 ^ result;
    v15 = v14 & 7;
    while (v15 != *(MEMORY[0x1E69E5900] + v12))
    {
      if (++v12 == 7)
      {
        goto LABEL_24;
      }
    }

    if (v12 == 3)
    {
      v11 = 0;
      v10 = 0;
      v16 = v14 << 9 >> 12;
      if (v15 != 7)
      {
        v16 = (2 * v14) >> 4;
      }

      v17 = 6;
      if ((v14 & 0x40) == 0)
      {
        v17 = 4;
      }

      v74[0] = v16 >> v17;
      v9 = v74;
    }
  }

LABEL_24:
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1:
        if (v10)
        {
          if (v11)
          {
            v26 = *v9;
            v27 = 127.0;
            if (*v9 <= 127.0)
            {
              v27 = *v9;
            }

            LODWORD(v28) = v27;
            v29 = v26 < -128.0;
          }

          else
          {
            v50 = *v9;
            v51 = 127.0;
            if (*v9 <= 127.0)
            {
              v51 = *v9;
            }

            LODWORD(v28) = v51;
            v29 = v50 < -128.0;
          }

          if (v29)
          {
            LOBYTE(v28) = 0x80;
          }
        }

        else
        {
          v38 = *v9;
          if (!v11)
          {
            v66 = 127;
            if (*&v38 < 127)
            {
              v66 = *&v38;
            }

            if (v66 <= -128)
            {
              LOBYTE(v66) = 0x80;
            }

            *a3 = v66;
            return result;
          }

          if (*&v38 > 0 || (v28 = *(v9 + 8), v38 == 0.0) && v28 > 0x7F)
          {
            LOBYTE(v28) = 127;
          }

          else
          {
            if (v28 < 0xFFFFFFFFFFFFFF80 && *&v38 == -1)
            {
              LOBYTE(v28) = 0x80;
            }

            if (*&v38 < -1)
            {
              LOBYTE(v28) = 0x80;
            }
          }
        }

        *a3 = v28;
        return result;
      case 2:
        if (v10)
        {
          if (v11)
          {
            v34 = *v9;
            v35 = 32767.0;
            if (*v9 <= 32767.0)
            {
              v35 = *v9;
            }

            LODWORD(v36) = v35;
            v37 = v34 < -32768.0;
          }

          else
          {
            v64 = *v9;
            v65 = 32767.0;
            if (*v9 <= 32767.0)
            {
              v65 = *v9;
            }

            LODWORD(v36) = v65;
            v37 = v64 < -32768.0;
          }

          if (v37)
          {
            LOWORD(v36) = 0x8000;
          }
        }

        else
        {
          v49 = *v9;
          if (!v11)
          {
            v69 = 0x7FFFLL;
            if (*&v49 < 0x7FFF)
            {
              v69 = *&v49;
            }

            if (v69 <= -32768)
            {
              LOWORD(v69) = 0x8000;
            }

            *a3 = v69;
            return result;
          }

          if (*&v49 > 0 || (v36 = *(v9 + 8), v49 == 0.0) && v36 >> 15)
          {
            LOWORD(v36) = 0x7FFF;
          }

          else
          {
            if (v36 < 0xFFFFFFFFFFFF8000 && *&v49 == -1)
            {
              LOWORD(v36) = 0x8000;
            }

            if (*&v49 < -1)
            {
              LOWORD(v36) = 0x8000;
            }
          }
        }

        *a3 = v36;
        return result;
      case 3:
        if (v10)
        {
          if (v11)
          {
            v22 = *v9;
            v23 = 2147483650.0;
            if (*v9 <= 2147483650.0)
            {
              v23 = *v9;
            }

            LODWORD(v9) = v23;
            v24 = v22 < -2147483650.0;
          }

          else
          {
            v61 = *v9;
            v62 = 2147500000.0;
            if (*v9 <= 2147500000.0)
            {
              v62 = *v9;
            }

            LODWORD(v9) = v62;
            v24 = v61 < -2147500000.0;
          }

          v63 = 0x80000000;
          goto LABEL_141;
        }

        v48 = *v9;
        if (v11)
        {
          if (*&v48 > 0 || (v9 = *(v9 + 8), v48 == 0.0) && v9 >> 31)
          {
            LODWORD(v9) = 0x7FFFFFFF;
          }

          else
          {
            if (v9 < 0xFFFFFFFF80000000 && *&v48 == -1)
            {
              LODWORD(v9) = 0x80000000;
            }

            if (*&v48 < -1)
            {
              LODWORD(v9) = 0x80000000;
            }
          }

          goto LABEL_143;
        }

        v68 = 0x7FFFFFFFLL;
        if (*&v48 < 0x7FFFFFFF)
        {
          v68 = *&v48;
        }

        if (v68 <= 0xFFFFFFFF80000000)
        {
          LODWORD(v68) = 0x80000000;
        }

        *a3 = v68;
        break;
    }
  }

  else
  {
    if (v8 <= 5)
    {
      if (v8 != 4)
      {
        if (!v10)
        {
          v44 = *v9;
          if (v11)
          {
            v45 = *(v9 + 8);
            v46 = -*&v44;
            if (v45)
            {
              v46 = ~*&v44;
            }

            if (v44 < 0.0)
            {
              v45 = -v45;
            }

            else
            {
              v46 = *&v44;
            }

            v47 = -(v45 + v46 * 1.84467441e19);
            if (v44 >= 0.0)
            {
              v47 = v45 + v46 * 1.84467441e19;
            }

            v21 = v47;
          }

          else
          {
            v21 = *&v44;
            if (*&v44 > 3.4028e38)
            {
              v21 = 3.4028e38;
            }
          }

          goto LABEL_155;
        }

        if (!v11)
        {
          LODWORD(v9) = *v9;
LABEL_143:
          *a3 = v9;
          return result;
        }

        v18 = *v9;
        if (fabs(*v9) != INFINITY)
        {
          v19 = 3.40282347e38;
          if (v18 <= 3.40282347e38)
          {
            v19 = *v9;
          }

          v20 = v19;
          v24 = v18 < -3.40282347e38;
          v21 = -3.4028e38;
          if (!v24)
          {
            v21 = v20;
          }

LABEL_155:
          *a3 = v21;
          return result;
        }

        v24 = v18 < 0.0;
        LODWORD(v9) = 2139095040;
        v63 = -8388608;
LABEL_141:
        if (v24)
        {
          LODWORD(v9) = v63;
        }

        goto LABEL_143;
      }

      if (v10)
      {
        if (v11)
        {
          v30 = *v9;
          v31 = 9.22337204e18;
          if (*v9 <= 9.22337204e18)
          {
            v31 = *v9;
          }

          v32 = v31;
          v33 = v30 < -9.22337204e18;
        }

        else
        {
          v52 = *v9;
          v53 = 9.2234e18;
          if (*v9 <= 9.2234e18)
          {
            v53 = *v9;
          }

          v32 = v53;
          v33 = v52 < -9.2234e18;
        }

        v54 = 0x8000000000000000;
        goto LABEL_118;
      }

      v39 = *v9;
      if (!v11)
      {
        *a3 = v39;
        return result;
      }

      if (*&v39 > 0 || (v32 = *(v9 + 8), v39 == 0.0) && v32 < 0)
      {
        v32 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (v32 > -1 && *&v39 == -1)
        {
          v32 = 0x8000000000000000;
        }

        if (*&v39 < -1)
        {
          v32 = 0x8000000000000000;
        }
      }

LABEL_120:
      *a3 = v32;
      return result;
    }

    if (v8 == 6)
    {
      if (v10)
      {
        if (v11)
        {
          v32 = *v9;
          goto LABEL_120;
        }

        v55 = *v9;
        if (fabsf(*v9) == INFINITY)
        {
          v33 = v55 < 0.0;
          v32 = 0x7FF0000000000000;
          v54 = 0xFFF0000000000000;
LABEL_118:
          if (v33)
          {
            v32 = v54;
          }

          goto LABEL_120;
        }

        v56 = v55;
        v57 = 1.79769313e308;
        if (v56 <= 1.79769313e308)
        {
          v57 = v56;
        }

        if (v56 >= -1.79769313e308)
        {
          v43 = v57;
        }

        else
        {
          v43 = -1.79769313e308;
        }
      }

      else
      {
        v40 = *v9;
        if (v11)
        {
          v41 = *(v9 + 8);
          v42 = -*&v40;
          if (v41)
          {
            v42 = ~*&v40;
          }

          if (v40 < 0.0)
          {
            v41 = -v41;
          }

          else
          {
            v42 = *&v40;
          }

          v43 = -(v41 + v42 * 1.84467441e19);
          if (v40 >= 0.0)
          {
            v43 = v41 + v42 * 1.84467441e19;
          }
        }

        else
        {
          v43 = *&v40;
          if (*&v40 > 1.79769313e308)
          {
            v43 = 1.79769313e308;
          }
        }
      }

      *a3 = v43;
      return result;
    }

    if (v8 == 17)
    {
      if (v10)
      {
        if (v11)
        {
          v25 = *v9;
          if (*v9 >= -1.70141183e38)
          {
            if (v25 >= 1.70141183e38)
            {
              goto LABEL_170;
            }

LABEL_169:
            v60 = vcvtmd_s64_f64(v25 * 5.42101086e-20);
            v59 = (v25 + floor(v25 * 5.42101086e-20) * -1.84467441e19);
            goto LABEL_171;
          }
        }

        else
        {
          v58 = *v9;
          if (*v9 >= -1.7014e38)
          {
            if (v58 >= 1.7014e38)
            {
LABEL_170:
              v59 = -1;
              v60 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_171;
            }

            v25 = v58;
            goto LABEL_169;
          }
        }

        v59 = 0;
        v60 = 0x8000000000000000;
LABEL_171:
        *a3 = v60;
        *(a3 + 8) = v59;
        return result;
      }

      if (v11)
      {
        *a3 = *v9;
      }

      else
      {
        v67 = *v9;
        *a3 = *&v67 >> 63;
        *(a3 + 8) = v67;
      }
    }
  }

  return result;
}

uint64_t CFBasicHashFindBucket@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 == 2814029233 || a2 == 2780474809;
  if (v3 || !*(result + 26))
  {
    *a3 = xmmword_183447130;
    *(a3 + 1) = unk_183447140;
    return result;
  }

  v4 = *(result + 18) & 3;
  if ((*(result + 18) & 0x8000) == 0)
  {
    if ((*(result + 18) & 3u) > 1)
    {
      if (v4 == 2)
      {
        return ___CFBasicHashFindBucket_Double(result, a2, a3);
      }

      else
      {
        return ___CFBasicHashFindBucket_Exponential(result, a2, a3);
      }
    }

    if (v4 == 1)
    {
      return ___CFBasicHashFindBucket_Linear(result, a2, a3);
    }

LABEL_21:
    __break(1u);
    return result;
  }

  if ((*(result + 18) & 3u) <= 1)
  {
    if (v4 == 1)
    {
      return ___CFBasicHashFindBucket_Linear_Indirect(result, a2, a3);
    }

    goto LABEL_21;
  }

  if (v4 == 2)
  {
    return ___CFBasicHashFindBucket_Double_Indirect(result, a2, a3);
  }

  else
  {
    return ___CFBasicHashFindBucket_Exponential_Indirect(result, a2, a3);
  }
}

unint64_t ___CFBasicHashFindBucket_Linear@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __CFBasicHashTableSizes[*(a1 + 26)];
  v6 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  result = a2;
  if (v6)
  {
    result = v6(a2);
  }

  v8 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v8 = 40;
  }

  v9 = *(a1 + v8);
  v10 = result % v5;
  if (v5 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5;
  }

  v12 = -1;
  while (1)
  {
    v13 = *(v9 + 8 * v10);
    switch(v13)
    {
      case -1:
        if (v12 == -1)
        {
          v12 = v10;
        }

        goto LABEL_22;
      case 0:
        v17 = a3;
        a3[1] = 0;
        a3[2] = 0;
        if (v12 == -1)
        {
          v18 = v10;
        }

        else
        {
          v18 = v12;
        }

        *a3 = v18;
        goto LABEL_46;
      case 2814029233:
        v13 = 0;
        break;
    }

    v14 = v13 == 2780474809 ? -1 : v13;
    if (v14 == a2)
    {
      break;
    }

    v15 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 29) & 0x1FLL] + 8 * ((*(a1 + 32) >> 24) & 0x1FLL));
    if (v15)
    {
      result = v15(v14, a2);
      if (result)
      {
        goto LABEL_32;
      }
    }

LABEL_22:
    if (v5 <= v10 + 1)
    {
      v16 = v5;
    }

    else
    {
      v16 = 0;
    }

    v10 = v10 + 1 - v16;
    if (!--v11)
    {
      v13 = 0;
      v17 = a3;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = v12;
      goto LABEL_46;
    }
  }

  v14 = a2;
LABEL_32:
  v19 = *(*(a1 + 40) + 8 * v10);
  v20 = -1;
  if (v19 != 2780474809)
  {
    v20 = *(*(a1 + 40) + 8 * v10);
  }

  if (v19 == 2814029233)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v17 = a3;
  a3[1] = v14;
  a3[2] = v21;
  *a3 = v10;
  v22 = *(a1 + 18);
  if ((v22 & 0x18) != 0)
  {
    v23 = *(a1 + 40 + (v22 & 0x18));
    v24 = (v22 >> 5) & 3;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v13 = *(v23 + 4 * v10);
      }

      else
      {
        v13 = *(v23 + 8 * v10);
      }
    }

    else if (v24)
    {
      v13 = *(v23 + 2 * v10);
    }

    else
    {
      v13 = *(v23 + v10);
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_46:
  v17[3] = v13;
  return result;
}

CFTypeRef CFRetain(CFTypeRef cf)
{
  if (!cf)
  {
    CFRetain_cold_1();
  }

  v1 = cf;
  if ((cf & 0x8000000000000000) == 0)
  {
    v2 = atomic_load(cf + 1);
    if (CF_IS_OBJC((v2 >> 8) & 0x3FF, cf))
    {

      return v1;
    }

    else
    {

      return _CFRetain(v1, 0);
    }
  }

  return cf;
}

CFHashCode CFHash(CFTypeRef cf)
{
  if (!cf)
  {
    CFHash_cold_1();
  }

  if ((cf & 0x8000000000000000) == 0)
  {
    v13 = atomic_load(cf + 1);
    v14 = (v13 >> 8) & 0x3FF;
    goto LABEL_14;
  }

  v2 = 0;
  v3 = MEMORY[0x1E69E5910];
  v4 = *MEMORY[0x1E69E5910];
  v5 = cf & 0xC000000000000007;
  if ((cf & 0xC000000000000007) == 0xC000000000000007)
  {
    v4 = 0;
  }

  v6 = v4 ^ cf;
  v7 = v6 & 7;
  v8 = MEMORY[0x1E69E5900];
  do
  {
    if (v7 == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  v9 = v2 | v6;
  v10 = v2 & 7;
  v11 = (v9 >> 55) + 8;
  if (v10 == 7)
  {
    LODWORD(v10) = v11;
  }

  if (v10)
  {
    if (v10 == 3)
    {
      v12 = off_1EF065840;
LABEL_78:

      return (v12)(cf);
    }
  }

  else
  {
    dyld_program_sdk_at_least();
    v22 = *v3;
    if (v5 == 0xC000000000000007)
    {
      v22 = 0;
    }

    v6 = v22 ^ cf;
    v7 = v6 & 7;
  }

  for (i = 0; i != 7; ++i)
  {
    if (v7 == *(v8 + i))
    {
      break;
    }
  }

  v24 = ((i | v6) >> 55) + 8;
  if ((i & 7) != 7)
  {
    v24 = i & 7;
  }

  if (v24 > 4)
  {
    if (v24 > 19)
    {
      if (v24 != 20)
      {
        if (v24 != 22)
        {
LABEL_71:
          v14 = [cf _cfTypeID];
          goto LABEL_14;
        }

LABEL_55:
        v14 = 7;
        goto LABEL_14;
      }
    }

    else if (v24 != 5)
    {
      if (v24 == 6)
      {
        v14 = 42;
        goto LABEL_14;
      }

      goto LABEL_71;
    }

LABEL_56:
    v14 = 1;
    goto LABEL_14;
  }

  if (v24 > 2)
  {
    if (v24 == 3)
    {
      v14 = 22;
      goto LABEL_14;
    }

    goto LABEL_56;
  }

  if (v24)
  {
    if (v24 != 2)
    {
      goto LABEL_71;
    }

    goto LABEL_55;
  }

  if (dyld_program_sdk_at_least())
  {
    v14 = 7;
  }

  else
  {
    v14 = 1;
  }

LABEL_14:
  if (!CF_IS_OBJC(v14, cf))
  {
    __CFCheckCFInfoPACSignature_Bridged(cf);
    if ((cf & 0x8000000000000000) == 0)
    {
      v25 = atomic_load(cf + 1);
      v26 = (v25 >> 8) & 0x3FF;
      goto LABEL_49;
    }

    v16 = 0;
    v17 = *MEMORY[0x1E69E5910];
    if ((~cf & 0xC000000000000007) == 0)
    {
      v17 = 0;
    }

    v18 = v17 ^ cf;
    do
    {
      if ((v18 & 7) == *(MEMORY[0x1E69E5900] + v16))
      {
        break;
      }

      ++v16;
    }

    while (v16 != 7);
    v19 = v16 | v18;
    v20 = v16 & 7;
    v21 = (v19 >> 55) + 8;
    if (v20 == 7)
    {
      LODWORD(v20) = v21;
    }

    if (v20 > 4)
    {
      if (v20 > 19)
      {
        if (v20 != 20)
        {
          if (v20 != 22)
          {
LABEL_82:
            v26 = [cf _cfTypeID];
LABEL_49:
            if (v26 > 0x47)
            {
              v27 = (__CFRuntimeClassTables[(v26 - 72) >> 6] + 8 * ((v26 - 72) & 0x3F));
              goto LABEL_77;
            }

LABEL_76:
            v27 = &__CFRuntimeBuiltinClassTable + v26;
LABEL_77:
            v12 = *(*v27 + 6);
            if (!v12)
            {
              return cf;
            }

            goto LABEL_78;
          }

LABEL_65:
          v26 = 7;
          goto LABEL_76;
        }
      }

      else if (v20 != 5)
      {
        if (v20 == 6)
        {
          v26 = 42;
          goto LABEL_76;
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (v20 <= 2)
      {
        if (!v20)
        {
          if (dyld_program_sdk_at_least())
          {
            v26 = 7;
          }

          else
          {
            v26 = 1;
          }

          goto LABEL_76;
        }

        if (v20 != 2)
        {
          goto LABEL_82;
        }

        goto LABEL_65;
      }

      if (v20 == 3)
      {
        v26 = 22;
        goto LABEL_76;
      }
    }

    v26 = 1;
    goto LABEL_76;
  }

  return [cf hash];
}

const void *__cdecl CFSetGetValue(CFSetRef theSet, const void *value)
{
  v7 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    return [(__CFSet *)theSet member:value];
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    CFBasicHashFindBucket(theSet, value, &v5);
    if (*(&v6 + 1))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

void CFArrayGetValues(CFArrayRef theArray, CFRange range, const void **values)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {

    [(__CFArray *)theArray getObjects:values range:location, length];
  }

  else
  {
    if (length < 1)
    {
      return;
    }

    v7 = atomic_load(theArray + 1);
    v8 = v7 & 3;
    if (v8 == 2)
    {
      v12 = (*(theArray + 5) + 8 * **(theArray + 5) + 16);
    }

    else
    {
      if (v8)
      {
        return;
      }

      v9 = atomic_load(theArray + 1);
      v10 = (~v9 & 0xC) == 0;
      v11 = 48;
      if (v10)
      {
        v11 = 88;
      }

      v12 = theArray + v11;
    }

    memmove(values, &v12[8 * location], 8 * length);
  }
}

uint64_t generationCountFromListOfSources(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    v4 = a2;
    v6 = 0;
    v7 = &OBJC_IVAR___CFPrefsSource_shmemEntry;
    while (1)
    {
      v8 = *a1;
      if (*(*a1 + 56) == 1)
      {
        v9 = *(v8 + 80);
        if (v9)
        {
          Count = CFArrayGetCount(v9);
          if (Count >= 1)
          {
            v13 = Count;
            MEMORY[0x1EEE9AC00](Count, v11, v12);
            v15 = v7;
            v16 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
            v27.location = 0;
            v27.length = v13;
            CFArrayGetValues(*(v8 + 80), v27, v16);
            v17 = v16;
            v7 = v15;
            v6 += generationCountFromListOfSources(v17, v13, a3);
          }
        }

        goto LABEL_13;
      }

      v18 = atomic_load((v8 + *v7));
      if (!v18)
      {
        break;
      }

      v19 = atomic_load(v18);
      v20 = atomic_load(&sentinelGeneration);
      if (v19 == v20)
      {
        v21 = atomic_load((v8 + 32));
        v6 += v21;
      }

      else
      {
        v23 = atomic_load((v8 + 48));
        v24 = atomic_load((v8 + 32));
        v6 += v24;
        if (v19 != v23)
        {
          goto LABEL_12;
        }
      }

LABEL_13:
      ++a1;
      if (!--v4)
      {
        return v6;
      }
    }

    v22 = atomic_load((v8 + 32));
    v6 += v22;
LABEL_12:
    *a3 = 1;
    goto LABEL_13;
  }

  return 0;
}

uint64_t __NSArrayM_copy(uint64_t a1)
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(a1, v1, __CFTSANTagMutableArray);
  }

  v3 = atomic_load((a1 + 8));
  v4 = *(a1 + 36);
  if (v3)
  {
    if (v4 >= 4)
    {
LABEL_5:
      if (!atomic_load((a1 + 8)))
      {
        v6 = _cow_create(a1, 1);
        v7 = 0;
        atomic_compare_exchange_strong((a1 + 8), &v7, v6);
        if (v7)
        {
          free(v6);
        }
      }

      v8 = objc_opt_self();
      v9 = __CFAllocateObject(v8, 0);
      v10 = atomic_load((a1 + 8));
      _cow_copy(a1, 1, v10, __NSArray_cowCallbacks, v9, 0);
      return v9;
    }
  }

  else if (v4 > 5)
  {
    goto LABEL_5;
  }

  v12 = __NSArrayImmutablePlaceholder();
  v13 = *(a1 + 36);

  return [v12 initWithArray:a1 range:0 copyItems:{v13, 0}];
}

BOOL _CFPreferencesGetBooleanValueWithValue(__objc2_class **cf, Boolean *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_26;
  }

  if (&__kCFBooleanTrue == cf)
  {
    goto LABEL_11;
  }

  if (&__kCFBooleanFalse == cf)
  {
LABEL_24:
    if (a2)
    {
      result = 0;
      *a2 = 1;
      return result;
    }

    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != 22)
  {
    if (v4 == 7)
    {
      if (CFStringCompare(cf, @"YES", 1uLL) == kCFCompareEqualTo || CFStringCompare(cf, @"true", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_11;
      }

      if (CFStringCompare(cf, @"NO", 1uLL) == kCFCompareEqualTo || CFStringCompare(cf, @"false", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_24;
      }

      if (CFEqual(cf, @"1"))
      {
LABEL_11:
        result = 1;
        if (a2)
        {
          *a2 = 1;
        }

        return result;
      }

      if (CFEqual(cf, @"0"))
      {
        goto LABEL_24;
      }
    }

LABEL_26:
    if (a2)
    {
      result = 0;
      *a2 = 0;
      return result;
    }

    return 0;
  }

  if (CFNumberIsFloatType(cf))
  {
    v9[0] = 0.0;
    Value = CFNumberGetValue(cf, kCFNumberDoubleType, v9);
    if (a2)
    {
      *a2 = Value;
    }

    v7 = v9[0] == 0.0;
  }

  else
  {
    v9[0] = 0.0;
    v8 = CFNumberGetValue(cf, kCFNumberCFIndexType, v9);
    if (a2)
    {
      *a2 = v8;
    }

    v7 = *&v9[0] == 0;
  }

  return !v7;
}

uint64_t OUTLINED_FUNCTION_3(int a1)
{

  return CFAllocatorAllocateTyped(a1, 0x80uLL, 0x1000040BDFB0063uLL);
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, UniChar buffer, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CFStringRef theString, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = -a1;
  v31 = a1 + v26;
  v32 = v28 - a1;
  v33 = v27 + v30;
  v34 = v33 + 64;
  if (v33 + 64 >= a24)
  {
    v34 = a24;
  }

  a25 = v33;
  a26 = v34;
  v35 = theString;
  if (a24 < v32)
  {
    v32 = a24;
  }

  v36.location = v33 + a23;

  v36.length = v32 + v31;
  CFStringGetCharacters(v35, v36, &buffer);
}

xpc_object_t OUTLINED_FUNCTION_2_8(const char *const *a1)
{

  return xpc_dictionary_create(a1, 0, 0);
}

_WORD *_cow_create(uint64_t a1, int a2)
{
  result = malloc_type_calloc(8uLL, 1uLL, 0xF41EA2E1uLL);
  if (!result)
  {
    _cow_create_cold_1();
  }

  *result = 0;
  result[2] = a2 != 1;
  result[3] = a2 == 1;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

BOOL OUTLINED_FUNCTION_1_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_8(objc_class *a1)
{

  __CFRequireConcreteImplementation(a1, v2, v1);
}

void OUTLINED_FUNCTION_1_11(objc_class *a1)
{

  __CFRequireConcreteImplementation(a1, v2, v1);
}

void OUTLINED_FUNCTION_1_14(objc_class *a1)
{

  __CFRequireConcreteImplementation(a1, v2, v1);
}

void OUTLINED_FUNCTION_1_16(objc_class *a1)
{

  __CFRequireConcreteImplementation(a1, v2, v1);
}

void OUTLINED_FUNCTION_1_21(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void _cow_copy(uint64_t a1, uint64_t a2, os_unfair_lock_t lock, uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock(lock);
  os_unfair_lock_opaque_low = LOWORD(lock[1]._os_unfair_lock_opaque);
  os_unfair_lock_opaque_high = HIWORD(lock[1]._os_unfair_lock_opaque);
  if (a6 == 1)
  {
    if (os_unfair_lock_opaque_high != 0xFFFF)
    {
      LOWORD(os_unfair_lock_opaque_high) = os_unfair_lock_opaque_high + 1;
LABEL_8:
      LOWORD(lock[1]._os_unfair_lock_opaque) = os_unfair_lock_opaque_low;
      HIWORD(lock[1]._os_unfair_lock_opaque) = os_unfair_lock_opaque_high;
      (*a4)(a1, a2, a5, a6);
      goto LABEL_9;
    }
  }

  else if (os_unfair_lock_opaque_low != 0xFFFF)
  {
    LOWORD(os_unfair_lock_opaque_low) = os_unfair_lock_opaque_low + 1;
    goto LABEL_8;
  }

  (*a4)(a1, a2, a5, a6);
  if (((*(a4 + 8))(a5) & 1) == 0)
  {
    _cow_copy_cold_1();
  }

  (*(a4 + 16))(a5, 0);
LABEL_9:

  os_unfair_lock_unlock(lock);
}

__n128 cow_copy_instance(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = &OBJC_IVAR_____NSFrozenArrayM_cow;
  if (a2 == 1)
  {
    v5 = &OBJC_IVAR_____NSArrayM_cow;
  }

  else
  {
    v5 = &OBJC_IVAR_____NSFrozenArrayM_cow;
  }

  if (a2 == 1)
  {
    v6 = &OBJC_IVAR_____NSArrayM_storage;
  }

  else
  {
    v6 = &OBJC_IVAR_____NSFrozenArrayM_storage;
  }

  v7 = atomic_load((a1 + *v5));
  v8 = (a1 + *v6);
  if (a4 == 1)
  {
    v4 = &OBJC_IVAR_____NSArrayM_cow;
    v9 = &OBJC_IVAR_____NSArrayM_storage;
  }

  else
  {
    v9 = &OBJC_IVAR_____NSFrozenArrayM_storage;
  }

  atomic_store(v7, (a3 + *v4));
  v10 = *v9;
  v11 = v8[1].n128_u64[0];
  result = *v8;
  v13 = (a3 + v10);
  *v13 = *v8;
  v13[1].n128_u64[0] = v11;
  return result;
}

__n128 cow_copy_instance_0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = &OBJC_IVAR_____NSFrozenOrderedSetM_cow;
  if (a2 == 1)
  {
    v5 = &OBJC_IVAR_____NSOrderedSetM_cow;
  }

  else
  {
    v5 = &OBJC_IVAR_____NSFrozenOrderedSetM_cow;
  }

  if (a2 == 1)
  {
    v6 = &OBJC_IVAR_____NSOrderedSetM_storage;
  }

  else
  {
    v6 = &OBJC_IVAR_____NSFrozenOrderedSetM_storage;
  }

  v7 = atomic_load((a1 + *v5));
  v8 = *v6;
  if (a4 == 1)
  {
    v4 = &OBJC_IVAR_____NSOrderedSetM_cow;
    v9 = &OBJC_IVAR_____NSOrderedSetM_storage;
  }

  else
  {
    v9 = &OBJC_IVAR_____NSFrozenOrderedSetM_storage;
  }

  atomic_store(v7, (a3 + *v4));
  result = *(a1 + v8);
  *(a3 + *v9) = result;
  return result;
}

__n128 cow_copy_instance_1(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = &OBJC_IVAR_____NSFrozenSetM_storage;
  if (a2 == 1)
  {
    v5 = &OBJC_IVAR_____NSSetM_storage;
  }

  else
  {
    v5 = &OBJC_IVAR_____NSFrozenSetM_storage;
  }

  v6 = &OBJC_IVAR_____NSFrozenSetM_cow;
  if (a2 == 1)
  {
    v7 = &OBJC_IVAR_____NSSetM_cow;
  }

  else
  {
    v7 = &OBJC_IVAR_____NSFrozenSetM_cow;
  }

  v8 = *v5;
  v9 = atomic_load((a1 + *v7));
  if (a4 == 1)
  {
    v6 = &OBJC_IVAR_____NSSetM_cow;
    v4 = &OBJC_IVAR_____NSSetM_storage;
  }

  atomic_store(v9, (a3 + *v6));
  result = *(a1 + v8);
  *(a3 + *v4) = result;
  return result;
}

__n128 cow_copy_instance_2(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = &OBJC_IVAR_____NSFrozenDictionaryM_cow;
  if (a2 == 1)
  {
    v5 = &OBJC_IVAR_____NSDictionaryM_cow;
  }

  else
  {
    v5 = &OBJC_IVAR_____NSFrozenDictionaryM_cow;
  }

  if (a2 == 1)
  {
    v6 = &OBJC_IVAR_____NSDictionaryM_storage;
  }

  else
  {
    v6 = &OBJC_IVAR_____NSFrozenDictionaryM_storage;
  }

  v7 = atomic_load((a1 + *v5));
  v8 = *v6;
  if (a4 == 1)
  {
    v4 = &OBJC_IVAR_____NSDictionaryM_cow;
    v9 = &OBJC_IVAR_____NSDictionaryM_storage;
  }

  else
  {
    v9 = &OBJC_IVAR_____NSFrozenDictionaryM_storage;
  }

  atomic_store(v7, (a3 + *v4));
  result = *(a1 + v8);
  *(a3 + *v9) = result;
  return result;
}

void mdict_removeObjectForKey(uint64_t *a1, void *a2)
{
  v2 = a1 + 1;
  v3 = a1[2] >> 58;
  if (v3)
  {
    v6 = LODWORD(__NSDictionarySizes_0[v3]);
    v7 = *v2;
    v20 = *v2 + 8 * v6;
    v8 = 0;
    v9 = [a2 hash] % v6;
    if (v6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    v11 = v6;
    while (1)
    {
      v12 = *(v7 + 8 * v9);
      if (!v12)
      {
        break;
      }

      if (v12 == &___NSDictionaryM_DeletedMarker)
      {
        ++v8;
        if (v11 == v6)
        {
          v11 = v9;
        }
      }

      else if (v12 == a2 || ([v12 isEqual:a2] & 1) != 0)
      {
        v11 = v9;
        goto LABEL_21;
      }

      if (v9 + 1 >= v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      v9 = v9 + 1 - v13;
      if (!--v10)
      {
        goto LABEL_21;
      }
    }

    if (v11 == v6)
    {
      v11 = v9;
    }

LABEL_21:
    if (v11 < v6)
    {
      v14 = *(v7 + 8 * v11);
      if (v14 && v14 != &___NSDictionaryM_DeletedMarker)
      {
        v19 = a1[2];
        if ((v19 & 0x200000000000000) != 0)
        {
          [a1 willChangeValueForKey:a2];
        }

        v16 = *(v20 + 8 * v11);
        *(v7 + 8 * v11) = &___NSDictionaryM_DeletedMarker;
        *(v20 + 8 * v11) = 0;
        a1[2] = a1[2] & 0xFE000000FFFFFFFFLL | ((((a1[2] + 0x1FFFFFF00000000) >> 32) & 0x1FFFFFF) << 32);
        if (v8 > 0xF)
        {
          mdict_rehashd(a1, v3);
        }

        else
        {
          if (v11 + 1 < v6)
          {
            v17 = v11 + 1;
          }

          else
          {
            v17 = 0;
          }

          if (!*(v7 + 8 * v17))
          {
            do
            {
              *(v7 + 8 * v11) = 0;
              if (v11)
              {
                v18 = v11;
              }

              else
              {
                v18 = v6;
              }

              v11 = v18 - 1;
            }

            while (*(v7 + 8 * (v18 - 1)) == &___NSDictionaryM_DeletedMarker);
          }
        }

        if ((v19 & 0x200000000000000) != 0)
        {
          [a1 didChangeValueForKey:a2];
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
        }

        if (v16 >= 1)
        {
        }
      }
    }
  }
}

uint64_t _CFNumberGetType2(unint64_t *a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ a1;
    v5 = (v3 ^ a1) & 7;
    v6 = MEMORY[0x1E69E5900];
    while (v5 != *(MEMORY[0x1E69E5900] + v2))
    {
      if (++v2 == 7)
      {
        goto LABEL_15;
      }
    }

    if (v2 == 3)
    {
      v7 = 0;
      while (v5 != *(MEMORY[0x1E69E5900] + v7))
      {
        if (++v7 == 7)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_23;
    }

LABEL_15:
    if (CF_IS_OBJC(0x16uLL, a1))
    {
      goto LABEL_16;
    }

    v7 = 0;
    while (v5 != *(v6 + v7))
    {
      if (++v7 == 7)
      {
        goto LABEL_25;
      }
    }

LABEL_23:
    if (v7 == 3)
    {
      v9 = v4 >> 3;
      return __CFNumberCanonicalTypes[v9 & 7];
    }

LABEL_25:
    LOBYTE(v9) = atomic_load(a1 + 1);
    return __CFNumberCanonicalTypes[v9 & 7];
  }

  if (!CF_IS_OBJC(0x16uLL, a1))
  {
    goto LABEL_25;
  }

LABEL_16:

  return [a1 _cfNumberType];
}

void CFStringAppend(CFMutableStringRef theString, CFStringRef appendedString)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v4 = CF_IS_OBJC(7uLL, theString);
  if (v4)
  {

    [(__CFString *)theString appendString:appendedString];
    return;
  }

  p_info = &theString->info;
  v7 = atomic_load(&theString->info);
  if ((v7 & 1) == 0)
  {
    v8 = _CFOSLog(v4, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      CFStringAppend_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    return;
  }

  v16 = atomic_load(p_info);
  v17 = v16 & 5;
  v18 = atomic_load(p_info);
  v19 = v18 & 0x60;
  if (v17 == 4)
  {
    p_data = &theString->data;
    if (v19)
    {
      v21 = *p_data;
    }

    else
    {
      v23 = atomic_load(&theString->info);
      v21 = &p_data[(v23 & 5) != 4];
    }

    length = *v21;
  }

  else if ((v18 & 0x60) != 0)
  {
    length = theString->length;
  }

  else
  {
    length = theString->data;
  }

  if (appendedString == theString)
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, appendedString);
    appendedString = Copy;
  }

  else
  {
    Copy = 0;
  }

  v25 = CFStringGetLength(appendedString);
  if (v25 < 1)
  {
    v27 = 0;
  }

  else
  {
    if (CF_IS_OBJC(7uLL, appendedString))
    {
      v26 = [(__CFString *)appendedString _encodingCantBeStoredInEightBitCFString];
    }

    else
    {
      v28 = atomic_load(&appendedString->info);
      v26 = (v28 >> 4) & 1;
    }

    v27 = v26 != 0;
  }

  v39[0] = length;
  v39[1] = 0;
  __CFStringChangeSizeMultiple(theString, v39, 1, v25, v27);
  v29 = atomic_load(&theString->info);
  v30 = atomic_load(&theString->info);
  v31 = v30 & 0x60;
  v32 = &theString->data;
  if ((v29 & 0x10) == 0)
  {
    if (v31)
    {
      v33 = *v32;
    }

    else
    {
      v35 = atomic_load(&theString->info);
      v33 = &v32[(v35 & 5) != 4];
    }

    v36 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v36 = __CFStringComputeEightBitStringEncoding();
    }

    v37 = atomic_load(&theString->info);
    v41.location = 0;
    v41.length = v25;
    CFStringGetBytes(appendedString, v41, v36, 0, 0, &v33[length + ((v37 >> 2) & 1)], v25, 0);
    goto LABEL_37;
  }

  if (!v31)
  {
    v38 = atomic_load(&theString->info);
    v34 = &v32[(v38 & 5) != 4];
    if (!v34)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v34 = *v32;
  if (v34)
  {
LABEL_36:
    v42.location = 0;
    v42.length = v25;
    CFStringGetCharacters(appendedString, v42, &v34[2 * length]);
  }

LABEL_37:
  if (Copy)
  {

    CFRelease(Copy);
  }
}