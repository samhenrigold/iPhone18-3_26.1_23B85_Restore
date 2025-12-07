unsigned __int8 *_hashCFDictionary(const __CFDictionary *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (CFDictionaryGetCount(a1) || (a3 & 1) == 0)
  {
    if (v5 == @"SHA-1")
    {
      v32 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
      CC_SHA1_Init(v32);
      v29 = MEMORY[0x29EDCA4B8];
      v31 = MEMORY[0x29EDCA4C0];
      v30 = MEMORY[0x29EDCA4B0];
      v7 = 20;
    }

    else
    {
      if (v5 != @"SHA-256")
      {
        abort();
      }

      v32 = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
      CC_SHA256_Init(v32);
      v29 = MEMORY[0x29EDCA4D0];
      v31 = MEMORY[0x29EDCA4D8];
      v30 = MEMORY[0x29EDCA4C8];
      v7 = 32;
    }

    size = v7;

    v8 = _hashCFType(@"dictionary", v5, a3);
    Count = CFDictionaryGetCount(a1);
    valuePtr = Count;
    v10 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    if (v10)
    {
      v11 = v10;
      v33 = v8;
      CFDictionaryGetKeysAndValues(a1, v10, 0);
      if (Count < 1)
      {
LABEL_20:
        if ((a3 & 1) == 0)
        {
          v25 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
          v26 = _hashCFNumber(v25, v5);
          if (v25)
          {
            CFRelease(v25);
          }

          v29(v32);
          v31(v32, v33, size);
          v31(v32, v26, size);
          v30(v33, v32);
          if (v26)
          {
            free(v26);
          }
        }
      }

      else
      {
        v12 = 0;
        v28 = a3;
        while (1)
        {
          v13 = _hashCFType(v11[v12], v5, a3);
          v14 = a1;
          Value = CFDictionaryGetValue(a1, v11[v12]);
          v16 = v5;
          v17 = _hashCFType(Value, v5, a3);
          v18 = malloc_type_calloc(1uLL, size, 0x100004077774924uLL);
          v19 = v18;
          if (!v18)
          {
            break;
          }

          if (!v13 || v17 == 0)
          {
            break;
          }

          v29(v32);
          v31(v32, v13, size);
          v31(v32, v17, size);
          v30(v19, v32);
          v21 = v33;
          if (v33)
          {
            v22 = v19;
            v23 = size;
            do
            {
              v24 = *v22++;
              *v21++ ^= v24;
              --v23;
            }

            while (v23);
          }

          free(v19);
          free(v13);
          free(v17);
          ++v12;
          v5 = v16;
          a1 = v14;
          a3 = v28;
          if (Count <= v12)
          {
            goto LABEL_20;
          }
        }

        if (v18)
        {
          free(v18);
        }

        if (v13)
        {
          free(v13);
        }

        if (v17)
        {
          free(v17);
        }

        if (v33)
        {
          free(v33);
        }

        v33 = 0;
        v5 = v16;
      }

      free(v11);
    }

    else
    {
      if (v8)
      {
        free(v8);
      }

      v33 = 0;
    }

    free(v32);
    v6 = v33;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id _MABufferToHexString(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = 2 * a2;
  v5 = malloc_type_malloc((2 * a2) | 1, 0xCDE67424uLL);
  v6 = v5;
  if (v2)
  {
    v7 = v5;
    do
    {
      v8 = *a1++;
      snprintf(v7, 3uLL, "%02x", v8);
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytesNoCopy:v6 length:v4 encoding:1 freeWhenDone:1];

  return v9;
}

id _MobileAssetHashAssetDataOptCompatibility(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = _hashCFType(v7, v9, a4);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v11 = _hashCFType(v8, v9, a4);
  if (!v11)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_12;
  }

  v12 = v9;
  if (v12 == @"SHA-1")
  {
    v13 = 20;
  }

  else
  {
    if (v12 != @"SHA-256")
    {
      abort();
    }

    v13 = 32;
  }

  for (i = 0; i != v13; ++i)
  {
    v10[i] ^= v11[i];
  }

  v14 = _MABufferToHexString(v10, v13);
LABEL_12:
  free(v10);
  free(v11);

  return v14;
}

unsigned __int8 *_hashCFType(__CFString *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFBooleanGetTypeID())
    {
      v7 = v5;
      v8 = v7;
      if (v7 == @"SHA-1")
      {
        v9 = 20;
      }

      else
      {
        if (v7 != @"SHA-256")
        {
          goto LABEL_44;
        }

        v9 = 32;
      }

      v10 = malloc_type_calloc(1uLL, v9, 0x100004077774924uLL);
      data = CFBooleanGetValue(a1);
      if (v8 != @"SHA-1")
      {
        if (v8 == @"SHA-256")
        {
          p_data = &data;
          v18 = 1;
LABEL_21:
          CC_SHA256(p_data, v18, v10);
LABEL_40:

          goto LABEL_41;
        }

        goto LABEL_44;
      }

      v19 = &data;
      v20 = 1;
      goto LABEL_23;
    }

    if (v6 == CFStringGetTypeID())
    {
      v11 = a1;
      v12 = v5;
      v13 = a3;
LABEL_11:
      v14 = _hashCFString(v11, v12, v13);
LABEL_12:
      v10 = v14;
      goto LABEL_41;
    }

    if (v6 == CFDateGetTypeID())
    {
      v15 = v5;
      v8 = v15;
      if (v15 == @"SHA-1")
      {
        v16 = 20;
      }

      else
      {
        if (v15 != @"SHA-256")
        {
          goto LABEL_44;
        }

        v16 = 32;
      }

      v10 = malloc_type_calloc(1uLL, v16, 0x100004077774924uLL);
      v29 = MEMORY[0x29C2824B0](a1);
      if (v8 != @"SHA-1")
      {
        if (v8 == @"SHA-256")
        {
          p_data = &v29;
          v18 = 8;
          goto LABEL_21;
        }

LABEL_44:
        abort();
      }

      v19 = &v29;
      v20 = 8;
LABEL_23:
      CC_SHA1(v19, v20, v10);
      goto LABEL_40;
    }

    if (v6 == CFDataGetTypeID())
    {
      v21 = v5;
      Length = CFDataGetLength(a1);
      v23 = v21;
      if (Length >= 0x80000000)
      {
        _hashCFType_cold_1();
      }

      v24 = v23;
      v8 = v24;
      if (v24 == @"SHA-1")
      {
        v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
        BytePtr = CFDataGetBytePtr(a1);
        CC_SHA1(BytePtr, Length, v10);
      }

      else
      {
        if (v24 != @"SHA-256")
        {
          goto LABEL_44;
        }

        v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x100004077774924uLL);
        v25 = CFDataGetBytePtr(a1);
        CC_SHA256(v25, Length, v10);
      }

      goto LABEL_40;
    }

    if (v6 == CFArrayGetTypeID())
    {
      v14 = _hashCFArray(a1, v5, a3);
      goto LABEL_12;
    }

    if (v6 == CFDictionaryGetTypeID())
    {
      v14 = _hashCFDictionary(a1, v5, a3);
      goto LABEL_12;
    }

    if (v6 == CFNumberGetTypeID())
    {
      v14 = _hashCFNumber(a1, v5);
      goto LABEL_12;
    }
  }

  else if ((a3 & 1) == 0)
  {
    v11 = @"NULL";
    v12 = v5;
    v13 = 0;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_41:

  return v10;
}

unsigned __int8 *_hashCFNumber(const __CFNumber *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == @"SHA-1")
  {
    v5 = 20;
  }

  else
  {
    if (v3 != @"SHA-256")
    {
      goto LABEL_16;
    }

    v5 = 32;
  }

  v6 = malloc_type_calloc(1uLL, v5, 0x100004077774924uLL);
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr + 1) >= 0xE)
  {
    v7 = 8;
  }

  else
  {
    v7 = 4;
  }

  if ((valuePtr + 1) < 0xE)
  {
    v8 = kCFNumberSInt32Type;
  }

  else
  {
    v8 = kCFNumberSInt64Type;
  }

  v9 = malloc_type_calloc(1uLL, v7, 0x100004077774924uLL);
  CFNumberGetValue(a1, v8, v9);
  if (v4 == @"SHA-1")
  {
    CC_SHA1(v9, v7, v6);
    goto LABEL_15;
  }

  if (v4 != @"SHA-256")
  {
LABEL_16:
    abort();
  }

  CC_SHA256(v9, v7, v6);
LABEL_15:
  free(v9);

  return v6;
}

unsigned __int8 *_hashCFString(const __CFString *a1, void *a2, char a3)
{
  v5 = a2;
  Length = CFStringGetLength(a1);
  v7 = v5;
  if (Length >= 0x7FFFFFFF)
  {
    _hashCFType_cold_1();
  }

  v8 = v7;
  if ((a3 & 1) == 0)
  {
    Length = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (Length >= 0x7FFFFFFF)
    {
      _hashCFString_cold_1();
    }
  }

  v9 = Length + 1;
  v10 = malloc_type_calloc(1uLL, Length + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(a1, v10, v9, 0x8000100u) && (a3 & 1) == 0)
  {
    _hashCFString_cold_2();
  }

  v11 = v8;
  v12 = v11;
  if (v11 == @"SHA-1")
  {
    v13 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    CC_SHA1(v10, v9, v13);
  }

  else
  {
    if (v11 != @"SHA-256")
    {
      abort();
    }

    v13 = malloc_type_calloc(1uLL, 0x20uLL, 0x100004077774924uLL);
    CC_SHA256(v10, v9, v13);
  }

  free(v10);

  return v13;
}

_BYTE *_hashCFArray(const __CFArray *a1, void *a2, int a3)
{
  v48 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    if (!CFArrayGetCount(a1))
    {
LABEL_51:
      v21 = 0;
      goto LABEL_52;
    }

    Count = CFArrayGetCount(a1);
    v8 = Count - 1;
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 0;
      v11 = 1;
      while (2)
      {
        v12 = v10;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
          v49.location = 0;
          v49.length = v9;
          CountOfValue = CFArrayGetCountOfValue(a1, v49, ValueAtIndex);
          if (CountOfValue >= 2)
          {
            break;
          }

          if (v9 == ++v12)
          {
            if (v11)
            {
              goto LABEL_17;
            }

            goto LABEL_47;
          }
        }

        v15 = CountOfValue;
        v16 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *&buf[4] = v12;
          v44 = 2048;
          v45 = v15;
          v46 = 2112;
          v47 = ValueAtIndex;
          _os_log_impl(&dword_2981ED000, v16, OS_LOG_TYPE_DEFAULT, "Hash duplicate found at index %i (%li duplicates found) with entry %@", buf, 0x1Cu);
        }

        v11 = 0;
        v10 = v12 + 1;
        if (v8 != v12)
        {
          continue;
        }

        break;
      }

LABEL_47:
      v40 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2981ED000, v40, OS_LOG_TYPE_DEFAULT, "Failing to hash due to duplicate array entries", buf, 2u);
      }

      goto LABEL_51;
    }

LABEL_17:
    v21 = _hashCFType(@"array", v6, 1);
    if (CFArrayGetCount(a1) >= 1)
    {
      v22 = 0;
      if (v6 == @"SHA-1")
      {
        v23 = 20;
      }

      else
      {
        v23 = 32;
      }

      v24 = v6 == @"SHA-256" || v6 == @"SHA-1";
      while (1)
      {
        v25 = CFArrayGetValueAtIndex(a1, v22);
        v26 = _hashCFType(v25, v6, 1);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        v28 = v6;
        if (!v24)
        {
          goto LABEL_53;
        }

        if (v21)
        {
          v29 = v21;
          v30 = v27;
          v31 = v23;
          do
          {
            v32 = *v30++;
            *v29++ ^= v32;
            --v31;
          }

          while (v31);
        }

        free(v27);
        if (CFArrayGetCount(a1) <= ++v22)
        {
          goto LABEL_52;
        }
      }

      free(v21);
      goto LABEL_51;
    }
  }

  else
  {
    if (v5 == @"SHA-1")
    {
      v17 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
      CC_SHA1_Init(v17);
      v18 = MEMORY[0x29EDCA4B0];
      v19 = MEMORY[0x29EDCA4C0];
      v20 = 20;
    }

    else
    {
      if (v5 != @"SHA-256")
      {
LABEL_53:
        abort();
      }

      v17 = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
      CC_SHA256_Init(v17);
      v18 = MEMORY[0x29EDCA4C8];
      v19 = MEMORY[0x29EDCA4D8];
      v20 = 32;
    }

    v33 = _hashCFType(@"array", v6, 0);
    v19(v17, v33, v20);
    if (v33)
    {
      free(v33);
    }

    *buf = CFArrayGetCount(a1);
    v34 = CFNumberCreate(0, kCFNumberCFIndexType, buf);
    v35 = _hashCFNumber(v34, v6);
    v19(v17, v35, v20);
    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      free(v35);
    }

    valuePtr = 0;
    if (*buf >= 1)
    {
      do
      {
        v36 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
        v37 = _hashCFNumber(v36, v6);
        v19(v17, v37, v20);
        if (v36)
        {
          CFRelease(v36);
        }

        if (v37)
        {
          free(v37);
        }

        v38 = CFArrayGetValueAtIndex(a1, valuePtr);
        v39 = _hashCFType(v38, v6, 0);
        v19(v17, v39, v20);
        if (v39)
        {
          free(v39);
        }

        ++valuePtr;
      }

      while (valuePtr < *buf);
    }

    v21 = malloc_type_calloc(1uLL, v20, 0x100004077774924uLL);
    v18(v21, v17);
    free(v17);
  }

LABEL_52:

  return v21;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

BOOL OUTLINED_FUNCTION_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t _query_nonce_callback(uint64_t a1, void *a2, size_t *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (image4_environment_new())
  {
    image4_environment_set_nonce_domain();
    memset(__src, 0, sizeof(__src));
    v4 = image4_environment_copy_nonce_digest();
    image4_environment_destroy();
    if (!v4)
    {
      *a3 = 0;
    }
  }

  else
  {
    v5 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__src[0]) = 0;
      _os_log_impl(&dword_2981ED000, v5, OS_LOG_TYPE_ERROR, "[SMA] Failed to instantiate environment", __src, 2u);
    }

    return 12;
  }

  return v4;
}

id _MAClientLog(void *a1)
{
  v1 = a1;
  if (_MAClientLog_onceToken != -1)
  {
    _MAClientLog_cold_1();
  }

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"DEFAULT";
  }

  v3 = [_MAClientLog_clientLoggers objectForKey:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [_MAClientLog_clientLoggers objectForKey:@"DEFAULT"];
  }

  v6 = v5;

  return v6;
}

BOOL MABrainUtilityWalkDirectory(void *a1, char a2, void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = a3;
  v7 = [MEMORY[0x29EDB9FB8] defaultManager];
  v8 = [v7 enumeratorAtPath:v5];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = 0;
    while (1)
    {
      v11 = v10;
      v10 = [v8 nextObject];

      if (!v10)
      {
        break;
      }

      if ((a2 & 1) == 0)
      {
        [v8 skipDescendants];
      }

      if ((v6[2](v6, v10) & 1) == 0)
      {
        v12 = _MAClientLog(@"Brain");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_DEBUG, "[MAB] Caller canceled enumeration", &v15, 2u);
        }

        break;
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = _MAClientLog(@"Brain");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_2981ED000, v13, OS_LOG_TYPE_ERROR, "[MAB] Could not create directory enumerator for %@", &v15, 0xCu);
    }
  }

  return v8 != 0;
}

uint64_t MABrainUtilityAllowUnpersonalizedBrain()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return _MAPreferencesGetAppBooleanValue(@"MABrainAllowUnpersonalized", 0) != 0;
  }

  return result;
}

BOOL MABrainUtilityAllowDownloadedBrain()
{
  if (!os_variant_has_internal_content())
  {
    return 1;
  }

  v2 = 0;
  return _MAPreferencesGetAppBooleanValue(@"MABrainAllowDownloaded", &v2) || v2 == 0;
}

uint64_t MABrainUtilityAllowCrossBuildGroupBrain()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return _MAPreferencesGetAppBooleanValue(@"MABrainAllowCrossBuildGroup", 0) != 0;
  }

  return result;
}

uint64_t MABrainUtilityCrashLoopTestMode()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return _MAPreferencesGetAppBooleanValue(@"MABrainCrashLoopTestMode", 0) != 0;
  }

  return result;
}

uint64_t MABrainUtilityDisableHealthCheck()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return _MAPreferencesGetAppBooleanValue(@"MABrainDisableHealthCheck", 0) != 0;
  }

  return result;
}

double MABrainUtilityScanInterval()
{
  if (!os_variant_has_internal_content())
  {
    return 604800.0;
  }

  v0 = _MAPreferencesCopyValue(@"MABrainScanInterval");
  v1 = 43200.0;
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v0 doubleValue];
      if (v2 >= 60.0)
      {
        v1 = v2;
      }

      else
      {
        v1 = 60.0;
      }
    }
  }

  return v1;
}

double MABrainUtilityReleaseTestModeInterval()
{
  v0 = _MAPreferencesCopyValue(@"MABrainReleaseTestModeInterval");
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = v0;
    [v1 doubleValue];
    v2 = 60.0;
    if (v3 > 60.0)
    {
      [v1 doubleValue];
      v2 = v4;
    }
  }

  else
  {
    v2 = 60.0;
  }

  return v2;
}

id MABrainUtilityGetImageUUID()
{
  v7 = *MEMORY[0x29EDCA608];
  memset(dst, 0, sizeof(dst));
  v0 = 0;
  v1 = 0x20u;
  while (*(&dword_2981ED000 + v1) != 27)
  {
    v1 += *(&dword_2981ED004 + v1);
    if (++v0 == 29)
    {
      uuid_clear(dst);
      goto LABEL_6;
    }
  }

  uuid_copy(dst, &dword_2981ED008 + v1);
LABEL_6:
  memset(v5, 0, sizeof(v5));
  uuid_unparse_lower(dst, v5);
  v2 = [MEMORY[0x29EDBA0F8] stringWithCString:v5 encoding:1];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2A1EA4138];

  return v3;
}

uint64_t MABrainUtilityIsPasscodeLocked()
{
  v3[2] = *MEMORY[0x29EDCA608];
  v2[0] = *MEMORY[0x29EDC5D40];
  v2[1] = @"ExtendedDeviceLockState";
  v3[0] = &unk_2A1EAC8A8;
  v3[1] = MEMORY[0x29EDB8EB0];
  [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v0 = MKBGetDeviceLockState();
  return (v0 < 7) & (0x46u >> v0);
}

void MABrainUtilityScheduleDeviceUnlockAction(void *a1, void *a2, int *a3, void *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (a3)
  {
    *a3 = -1;
  }

  if (MABrainUtilityIsPasscodeLocked())
  {
    out_token = -1;
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 3221225472;
    handler[2] = __MABrainUtilityScheduleDeviceUnlockAction_block_invoke_407;
    handler[3] = &unk_29EE8B5C0;
    v10 = v8;
    v15 = v10;
    v16 = v9;
    v11 = v9;
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v7, handler);
    v12 = _MAClientLog(@"Brain");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v10;
      v23 = 1024;
      v24 = out_token;
      _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_DEFAULT, "[MAB] Device unlock action %@ is scheduled (token=%d)", buf, 0x12u);
    }

    if (a3)
    {
      *a3 = out_token;
    }
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __MABrainUtilityScheduleDeviceUnlockAction_block_invoke;
    block[3] = &unk_29EE8B598;
    v19 = v8;
    v20 = v9;
    v13 = v9;
    dispatch_async(v7, block);
  }
}

uint64_t __MABrainUtilityScheduleDeviceUnlockAction_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = _MAClientLog(@"Brain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v3 = @"(unnamed)";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_2981ED000, v2, OS_LOG_TYPE_DEFAULT, "[MAB] Device is already unlocked.  Starting action %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __MABrainUtilityScheduleDeviceUnlockAction_block_invoke_407(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  IsPasscodeLocked = MABrainUtilityIsPasscodeLocked();
  v5 = _MAClientLog(@"Brain");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (IsPasscodeLocked)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      if (!v7)
      {
        v7 = @"(unnamed)";
      }

      v9 = 138412546;
      v10 = v7;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_2981ED000, v5, OS_LOG_TYPE_DEFAULT, "[MAB] Device is still locked.  Deferring action %@ (token=%d)", &v9, 0x12u);
    }
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      if (!v8)
      {
        v8 = @"(unnamed)";
      }

      v9 = 138412546;
      v10 = v8;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_2981ED000, v5, OS_LOG_TYPE_DEFAULT, "[MAB] Device is now unlocked.  Starting action %@ (token=%d)", &v9, 0x12u);
    }

    notify_cancel(a2);
    (*(*(a1 + 40) + 16))();
  }
}

void MABrainUtilityCancelDeviceUnlockAction(int a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1 != -1)
  {
    v2 = notify_cancel(a1);
    v3 = _MAClientLog(@"Brain");
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        v6 = __error();
        v7 = strerror(*v6);
        v12 = 67109634;
        v13 = a1;
        v14 = 1024;
        v15 = v5;
        v16 = 2080;
        v17 = v7;
        v8 = "[MAB] Error canceling device unlock action (token=%d). errno=%d (%s)";
        v9 = v4;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 24;
LABEL_7:
        _os_log_impl(&dword_2981ED000, v9, v10, v8, &v12, v11);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = a1;
      v8 = "[MAB] Canceled device unlock action (token=%d)...";
      v9 = v4;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 8;
      goto LABEL_7;
    }
  }
}

uint64_t MABrainUtilityWriteDictionary(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = a2;
  v17 = 0;
  v7 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v5 format:100 options:0 error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    v16 = v8;
    v10 = [v7 writeToFile:v6 options:0 error:&v16];
    v11 = v16;

    if (v10)
    {
      v12 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v8;
  }

  v13 = _MAClientLog(@"Brain");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v19 = v6;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_2981ED000, v13, OS_LOG_TYPE_ERROR, "[MAB] Failed to write %@ with contents of dictionary:%@\n%@", buf, 0x20u);
  }

  if (a3)
  {
    v14 = v11;
    v12 = 0;
    *a3 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  return v12;
}

uint64_t MABrainUtilityForceSecureAssetMount()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return _MAPreferencesGetAppBooleanValue(@"SecureMobileAssetForceMount", 0) != 0;
  }

  return result;
}

uint64_t MABrainUtilityDeviceSupportsExclaves(uint64_t a1, uint64_t a2)
{
  if (MABrainUtilityDeviceSupportsExclaves_onceToken != -1)
  {
    MABrainUtilityDeviceSupportsExclaves_cold_1();
  }

  return MABrainUtilityDeviceSupportsExclaves_answer;
}

uint64_t __MABrainUtilityDeviceSupportsExclaves_block_invoke()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
    MABrainUtilityDeviceSupportsExclaves_answer = result;
  }

  return result;
}

uint64_t MABrainUtilityConclaveEnabled(uint64_t a1, uint64_t a2)
{
  if (MABrainUtilityConclaveEnabled_onceToken != -1)
  {
    MABrainUtilityConclaveEnabled_cold_1();
  }

  return MABrainUtilityConclaveEnabled_answer;
}

void __MABrainUtilityConclaveEnabled_block_invoke(uint64_t result, uint64_t a2)
{
  if (MABrainUtilityDeviceSupportsExclaves_onceToken != -1)
  {
    MABrainUtilityDeviceSupportsExclaves_cold_1();
  }

  if (MABrainUtilityDeviceSupportsExclaves_answer == 1)
  {
    MABrainUtilityConclaveEnabled_answer = _os_feature_enabled_impl();
  }
}

CFNumberRef MABrainUtilityCopyEcid()
{
  valuePtr = 0;
  v0 = _copy_value_from_IONode(@"unique-chip-id");
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
LABEL_7:
      CFRelease(v1);
      v5 = v3;
      goto LABEL_8;
    }
  }

  v4 = _MAClientLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 0;
    _os_log_impl(&dword_2981ED000, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", &v7, 2u);
  }

  v3 = 0;
  v5 = 0;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

CFTypeRef _copy_value_from_IONode(const __CFString *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/chosen");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, a1, *MEMORY[0x29EDB8ED8], 0);
  IOObjectRelease(v3);
  if (CFProperty)
  {
    v5 = CFGetTypeID(CFProperty);
    if (v5 != CFDataGetTypeID())
    {
      v6 = _MAClientLog(@"Brain");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = a1;
        _os_log_impl(&dword_2981ED000, v6, OS_LOG_TYPE_DEFAULT, "[MAB] Got a non-CFData return value from IORegistryEntryCreateCFProperty for property %@", &v8, 0xCu);
      }

      CFRelease(CFProperty);
      return 0;
    }
  }

  return CFProperty;
}

CFNumberRef MABrainUtilityCopyBoardId()
{
  valuePtr = 0;
  v0 = _copy_value_from_IONode(@"board-id");
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &valuePtr);
LABEL_7:
      CFRelease(v1);
      v5 = v3;
      goto LABEL_8;
    }
  }

  v4 = _MAClientLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 0;
    _os_log_impl(&dword_2981ED000, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v7, 2u);
  }

  v3 = 0;
  v5 = 0;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

CFNumberRef MABrainUtilityCopyChipId()
{
  valuePtr = 0;
  v0 = _copy_value_from_IONode(@"chip-id");
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &valuePtr);
LABEL_7:
      CFRelease(v1);
      v5 = v3;
      goto LABEL_8;
    }
  }

  v4 = _MAClientLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 0;
    _os_log_impl(&dword_2981ED000, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v7, 2u);
  }

  v3 = 0;
  v5 = 0;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

CFNumberRef MABrainUtilityCopySecurityDomain()
{
  valuePtr = 0;
  v0 = _copy_value_from_IONode(@"security-domain");
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &valuePtr);
LABEL_7:
      CFRelease(v1);
      v5 = v3;
      goto LABEL_8;
    }
  }

  v4 = _MAClientLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 0;
    _os_log_impl(&dword_2981ED000, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v7, 2u);
  }

  v3 = 0;
  v5 = 0;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

id MABrainUtilityCopyCertificateSecurityMode()
{
  v0 = *MEMORY[0x29EDB8EF8];
  v1 = _copy_value_from_IONode(@"certificate-security-mode");
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v2))
      {
        v0 = *MEMORY[0x29EDB8F00];
      }

LABEL_9:
      CFRelease(v2);
      goto LABEL_10;
    }
  }

  v4 = _MAClientLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_2981ED000, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v6, 2u);
  }

  if (v2)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v0;
}

id MABrainUtilityCopySigningFuse()
{
  v0 = *MEMORY[0x29EDB8F00];
  v1 = _copy_value_from_IONode(@"development-cert");
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v2) == 1)
      {
        v0 = *MEMORY[0x29EDB8EF8];
      }

LABEL_9:
      CFRelease(v2);
      goto LABEL_10;
    }
  }

  v4 = _MAClientLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_2981ED000, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v6, 2u);
  }

  if (v2)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v0;
}

void sub_2981F1F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _preferencesDomainProtectionDispatchQueue(uint64_t a1)
{
  if (_preferencesDomainProtectionDispatchQueue_preferencesDomainQueueOnce != -1)
  {
    _preferencesDomainProtectionDispatchQueue_cold_1();
  }

  v2 = _preferencesDomainProtectionDispatchQueue_preferencesDomainQueue;

  return v2;
}

uint64_t ___preferencesDomainProtectionDispatchQueue_block_invoke()
{
  _preferencesDomainProtectionDispatchQueue_preferencesDomainQueue = dispatch_queue_create("com.apple.MobileAsset.preferencesDomain", 0);

  return MEMORY[0x2A1C71028]();
}

BOOL syncPreferences(void *a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v5 = _preferencesDomainProtectionDispatchQueue(v4);
  dispatch_assert_queue_V2(v5);

  v6 = CFPreferencesAppSynchronize(@"com.apple.MobileAsset");
  if (!v6)
  {
    v7 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543874;
      v10 = v3;
      v11 = 2114;
      v12 = v4;
      v13 = 2114;
      v14 = @"com.apple.MobileAsset";
      _os_log_impl(&dword_2981ED000, v7, OS_LOG_TYPE_ERROR, "[MA_PREFS] {%{public}@} [%{public}@] Could not synchronize preferences for %{public}@ - this may be a permissions error", &v9, 0x20u);
    }
  }

  return v6 != 0;
}

id _MAPreferencesCopyValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  if (v1)
  {
    v3 = _preferencesDomainProtectionDispatchQueue(v1);
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = ___MAPreferencesCopyValue_block_invoke;
    v6[3] = &unk_29EE8B890;
    v8 = &v9;
    v7 = v2;
    dispatch_sync(v3, v6);

    v4 = v10[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v4;
}

__CFString *_MAPreferencesCopyNSStringValue(void *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = _MAPreferencesCopyValue(v1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
LABEL_10:
      v3 = v5;
      goto LABEL_11;
    }

    v6 = CFGetTypeID(v3);
    if (v6 == CFNumberGetTypeID())
    {
      v5 = [(__CFString *)v3 stringValue];
      goto LABEL_10;
    }

    v7 = CFGetTypeID(v3);
    if (v7 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v3);
      v9 = @"YES";
      if (!Value)
      {
        v9 = @"NO";
      }

      v5 = v9;
      goto LABEL_10;
    }

    v11 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v1;
      _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_ERROR, "[MA_PREFS] {_MAPreferencesCopyNSStringValue} invalid type for key:%{public}@ | expecting string or number or BOOLean", &v12, 0xCu);
    }

    v3 = 0;
  }

LABEL_11:

  return v3;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _MAPreferencesGetAppBooleanValue(void *a1, _BYTE *a2)
{
  v3 = _MAPreferencesCopyValue(a1);
  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = isKindOfClass ^ 1;
    v6 = isKindOfClass & 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v5 = 1;
  if (a2)
  {
LABEL_3:
    *a2 = v6;
  }

LABEL_4:
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 BOOLValue];
  }

  return v7;
}

uint64_t _MAPreferencesIsInternalAllowed(uint64_t a1, uint64_t a2)
{
  if (_MAPreferencesIsInternalAllowed_onceToken != -1)
  {
    _MAPreferencesIsInternalAllowed_cold_1();
  }

  return _MAPreferencesIsInternalAllowed__isAppleInternal;
}

uint64_t _MAPreferencesIsVerboseLoggingEnabled(uint64_t a1, uint64_t a2)
{
  if (_MAPreferencesIsVerboseLoggingEnabled_onceToken != -1)
  {
    _MAPreferencesIsVerboseLoggingEnabled_cold_1();
  }

  return _MAPreferencesIsVerboseLoggingEnabled__verboseLoggingEnabled;
}

uint64_t _MAPreferencesIsCentralizedCacheDeleteEnabled(uint64_t a1, uint64_t a2)
{
  if (_MAPreferencesIsCentralizedCacheDeleteEnabled_onceToken != -1)
  {
    _MAPreferencesIsCentralizedCacheDeleteEnabled_cold_1();
  }

  return _MAPreferencesIsCentralizedCacheDeleteEnabled__centralizedCacheDeleteEnabled;
}

id plistDecodeClasses(uint64_t a1)
{
  if (plistDecodeClasses_once != -1)
  {
    plistDecodeClasses_cold_1();
  }

  v2 = plistDecodeClasses__plistDecodeClasses;

  return v2;
}

void __plistDecodeClasses_block_invoke()
{
  v4[6] = *MEMORY[0x29EDCA608];
  v0 = objc_alloc(MEMORY[0x29EDB8E50]);
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:6];
  v2 = [v0 initWithArray:v1];
  v3 = plistDecodeClasses__plistDecodeClasses;
  plistDecodeClasses__plistDecodeClasses = v2;
}

id plistMutableDecodeClasses(uint64_t a1)
{
  if (plistMutableDecodeClasses_once != -1)
  {
    plistMutableDecodeClasses_cold_1();
  }

  v2 = plistMutableDecodeClasses__plistDecodeClasses;

  return v2;
}

void __plistMutableDecodeClasses_block_invoke()
{
  v4[10] = *MEMORY[0x29EDCA608];
  v0 = objc_alloc(MEMORY[0x29EDB8E50]);
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:10];
  v2 = [v0 initWithArray:v1];
  v3 = plistMutableDecodeClasses__plistDecodeClasses;
  plistMutableDecodeClasses__plistDecodeClasses = v2;
}

id suAssetTypes(uint64_t a1)
{
  if (suAssetTypes_once != -1)
  {
    suAssetTypes_cold_1();
  }

  v2 = suAssetTypes_suAssetTypes;

  return v2;
}

uint64_t __suAssetTypes_block_invoke()
{
  suAssetTypes_suAssetTypes = [objc_alloc(MEMORY[0x29EDB8E50]) initWithArray:&unk_2A1EAD178];

  return MEMORY[0x2A1C71028]();
}

id assetIdDisallowedCharacterSet(uint64_t a1)
{
  if (assetIdDisallowedCharacterSet_once != -1)
  {
    assetIdDisallowedCharacterSet_cold_1();
  }

  v2 = assetIdDisallowedCharacterSet_disallowedSet;

  return v2;
}

void __assetIdDisallowedCharacterSet_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"0123456789abcdefABCDEF"];
  v2 = [v1 invertedSet];
  v3 = assetIdDisallowedCharacterSet_disallowedSet;
  assetIdDisallowedCharacterSet_disallowedSet = v2;

  objc_autoreleasePoolPop(v0);
}

id assetTypeDisallowedCharacterSet(uint64_t a1)
{
  if (assetTypeDisallowedCharacterSet_once != -1)
  {
    assetTypeDisallowedCharacterSet_cold_1();
  }

  v2 = assetTypeDisallowedCharacterSet_disallowedSet;

  return v2;
}

void __assetTypeDisallowedCharacterSet_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"0123456789.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-"];
  v2 = [v1 invertedSet];
  v3 = assetTypeDisallowedCharacterSet_disallowedSet;
  assetTypeDisallowedCharacterSet_disallowedSet = v2;

  objc_autoreleasePoolPop(v0);
}

id tokenFileDisallowedCharacterSet(uint64_t a1)
{
  if (tokenFileDisallowedCharacterSet_once != -1)
  {
    tokenFileDisallowedCharacterSet_cold_1();
  }

  v2 = tokenFileDisallowedCharacterSet_disallowedSet;

  return v2;
}

void __tokenFileDisallowedCharacterSet_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"0123456789.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-/"];
  v2 = [v1 invertedSet];
  v3 = tokenFileDisallowedCharacterSet_disallowedSet;
  tokenFileDisallowedCharacterSet_disallowedSet = v2;

  objc_autoreleasePoolPop(v0);
}

id purposeDisallowedCharacterSet(uint64_t a1)
{
  if (purposeDisallowedCharacterSet_once != -1)
  {
    purposeDisallowedCharacterSet_cold_1();
  }

  v2 = purposeDisallowedCharacterSet_disallowedSet;

  return v2;
}

void __purposeDisallowedCharacterSet_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"0123456789-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v2 = [v1 invertedSet];
  v3 = purposeDisallowedCharacterSet_disallowedSet;
  purposeDisallowedCharacterSet_disallowedSet = v2;

  objc_autoreleasePoolPop(v0);
}

id purposeIgnoredCharacterSet(uint64_t a1)
{
  if (purposeIgnoredCharacterSet_once != -1)
  {
    purposeIgnoredCharacterSet_cold_1();
  }

  v2 = purposeIgnoredCharacterSet_ignoredSet;

  return v2;
}

void __purposeIgnoredCharacterSet_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"'\\/@?%*|<>.{}"];;
  v2 = purposeIgnoredCharacterSet_ignoredSet;
  purposeIgnoredCharacterSet_ignoredSet = v1;

  objc_autoreleasePoolPop(v0);
}

id supportedAssetFormats(uint64_t a1)
{
  if (supportedAssetFormats_onceToken != -1)
  {
    supportedAssetFormats_cold_1();
  }

  v2 = supportedAssetFormats_compressionTypes;

  return v2;
}

void __supportedAssetFormats_block_invoke()
{
  v0 = supportedAssetFormats_compressionTypes;
  supportedAssetFormats_compressionTypes = &unk_2A1EAD250;
}

id supportedAssetFormatsArray(uint64_t a1)
{
  if (supportedAssetFormatsArray_orderedOnceToken != -1)
  {
    supportedAssetFormatsArray_cold_1();
  }

  v2 = supportedAssetFormatsArray___orderedCompressionTypes;

  return v2;
}

void __supportedAssetFormatsArray_block_invoke()
{
  v22 = *MEMORY[0x29EDCA608];
  v0 = _MAPreferencesCopyValue(@"SupportedAssetFormats");
  v1 = 0x2A13A8000;
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v14 = v0;
      v3 = v0;
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v16;
        do
        {
          v7 = 0;
          do
          {
            if (*v16 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v15 + 1) + 8 * v7);
            if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v2 addObject:v8];
            }

            else
            {
              v9 = _MAClientLog(@"V2");
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_2981ED000, v9, OS_LOG_TYPE_ERROR, "SupportedAssetFormats: Found unexpected non-string item in SupportedAssetFormats preferences, dropping entry", buf, 2u);
              }
            }

            ++v7;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v5);
      }

      if (v2)
      {
        v1 = 0x2A13A8000uLL;
        if ([v2 count])
        {
          objc_storeStrong(&supportedAssetFormatsArray___orderedCompressionTypes, v2);
          v10 = _MAClientLog(@"V2");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [supportedAssetFormatsArray___orderedCompressionTypes componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v20 = v11;
            _os_log_impl(&dword_2981ED000, v10, OS_LOG_TYPE_DEFAULT, "SupportedAssetFormats: Using preferences override supported asset format types: [%@]", buf, 0xCu);
          }
        }

        v0 = v14;
      }

      else
      {
        v0 = v14;
        v1 = 0x2A13A8000uLL;
      }
    }

    else
    {
      v2 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2981ED000, v2, OS_LOG_TYPE_ERROR, "SupportedAssetFormats: Found unexpected non-array type in SupportedAssetFormats preferences, dropping preference", buf, 2u);
      }
    }
  }

  if (!*(v1 + 2088))
  {
    *(v1 + 2088) = &unk_2A1EAD190;

    v12 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(v1 + 2088) componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_DEFAULT, "SupportedAssetFormats: Using default supported asset format types: [%@]", buf, 0xCu);
    }
  }
}

id getObjectFromMessageLogIfDesired(void *a1, const char *a2, const char *a3, void *a4, int a5)
{
  v26 = *MEMORY[0x29EDCA608];
  v9 = a1;
  v10 = a4;
  length = xpc_dictionary_get_double(v9, a2);
  if (!length)
  {
    goto LABEL_14;
  }

  data = xpc_dictionary_get_data(v9, a3, &length);
  if (data)
  {
    v12 = [MEMORY[0x29EDB8DA0] dataWithBytes:data length:length];
    if (v12)
    {
      v13 = v12;
      v20 = 0;
      v14 = [objc_alloc(MEMORY[0x29EDBA000]) initForReadingFromData:v12 error:&v20];
      v15 = v20;
      if (v15 || !v14)
      {
        if (a5)
        {
          v18 = _MAClientLog(@"V2");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v23 = a3;
            v24 = 2114;
            v25 = v15;
            _os_log_impl(&dword_2981ED000, v18, OS_LOG_TYPE_DEFAULT, "getObjectFromMessage: could not decode object for key: %{public}s error: %{public}@", buf, 0x16u);
          }
        }

        v16 = 0;
      }

      else
      {
        v16 = [v14 decodeObjectOfClasses:v10 forKey:*MEMORY[0x29EDB9EC0]];
      }

      [v14 finishDecoding];

      goto LABEL_21;
    }

    if (a5)
    {
      v15 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = a3;
        v17 = "Failed to get key: %{public}s";
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_14:
    v13 = 0;
    v16 = 0;
    goto LABEL_22;
  }

  v15 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v23 = a3;
    v17 = "Failed to get key: %{public}s due to not beinng present";
LABEL_12:
    _os_log_impl(&dword_2981ED000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
  }

LABEL_13:
  v13 = 0;
  v16 = 0;
LABEL_21:

LABEL_22:

  return v16;
}

id getObjectFromMessageWithFailureReason(void *a1, const char *a2, const char *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  length = xpc_dictionary_get_double(v9, a2);
  if (!length)
  {
    if (a5)
    {
      v18 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Failed to get key:%s (length:%lld bytes too small)", a3, 0];
LABEL_13:
      v16 = 0;
      *a5 = v18;
      goto LABEL_24;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_24;
  }

  data = xpc_dictionary_get_data(v9, a3, &length);
  if (!data)
  {
    if (a5)
    {
      v18 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Failed to get object from message since key:%s is not present", a3, v21];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12 = [MEMORY[0x29EDB8DA0] dataWithBytes:data length:length];
  if (!v12)
  {
    if (a5)
    {
      v19 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v16 = 0;
      *a5 = [v19 initWithFormat:@"Failed to get NSData object from message for key:%s length:%lld bytes", a3, length];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_23;
  }

  v22 = 0;
  v13 = [objc_alloc(MEMORY[0x29EDBA000]) initForReadingFromData:v12 error:&v22];
  v14 = v22;
  if (v14 || !v13)
  {
    if (!a5)
    {
      v16 = 0;
      goto LABEL_22;
    }

    v17 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Could not decode object for key:%s error:%@", a3, v14];
  }

  else
  {
    v15 = [v13 decodeObjectOfClasses:v10 forKey:*MEMORY[0x29EDB9EC0]];
    v16 = v15;
    if (!a5 || v15)
    {
      goto LABEL_22;
    }

    v17 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Failed to decode object for key:%s", a3, v21];
  }

  v16 = 0;
  *a5 = v17;
LABEL_22:
  [v13 finishDecoding];

LABEL_23:
LABEL_24:

  return v16;
}

uint64_t getPreferenceLong(void *a1)
{
  v1 = _MAPreferencesCopyValue(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

uint64_t calculateTimeout(unint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = ((a1 >> 10) * 0x2492492492492493uLL) >> 64;
  if (a1 > 0x102661BFFLL)
  {
    v2 = 604800;
  }

  if (a1 >= 6451200)
  {
    v3 = v2;
  }

  else
  {
    v3 = 900;
  }

  v4 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v3 * 0x444444444444445uLL) >> 64;
    v7 = 134219008;
    v8 = (v3 * 0x123456789ABCE0uLL) >> 64;
    v9 = 2048;
    v10 = v5 - 60 * ((v5 * 0x444444444444445uLL) >> 64);
    v11 = 2048;
    v12 = v3 - 60 * v5;
    v13 = 2048;
    v14 = v3;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&dword_2981ED000, v4, OS_LOG_TYPE_DEFAULT, "Calculated the download timeout to be %ld hrs %ld mins %ld secs (%ld) for size %lld", &v7, 0x34u);
  }

  return v3;
}

uint64_t deepMergeDictionaries(void *a1, void *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v18 = v4;
      v8 = *v21;
      v19 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v3 objectForKey:{v10, v18}];
          v12 = [v5 objectForKey:v10];
          if (v12)
          {
            if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v13 = objc_autoreleasePoolPush();
              v14 = [v11 mutableCopy];
              if (deepMergeDictionaries(v14, v12))
              {
                [v3 setObject:v14 forKey:v10];
              }

              else
              {
                v19 = 0;
              }

              objc_autoreleasePoolPop(v13);
            }

            else
            {
              [v3 setObject:v12 forKey:v10];
            }
          }

          else
          {
            v15 = _MAClientLog(@"V2");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v25 = v10;
              _os_log_impl(&dword_2981ED000, v15, OS_LOG_TYPE_ERROR, "[DeepMergeDictionaries]: No object exists in source dict for key %{public}@", buf, 0xCu);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v7);
      v4 = v18;
      v16 = v19;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2981ED000, v5, OS_LOG_TYPE_ERROR, "[DeepMergeDictionaries]: Invalid source/target dictionaries passed", buf, 2u);
    }

    v16 = 0;
  }

  return v16 & 1;
}

void mergeDictionaries(void *a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            v11 = [v3 objectForKey:v10];

            if (!v11)
            {
              v12 = [v5 objectForKey:v10];
              [v3 setObject:v12 forKey:v10];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }
}

BOOL determineUnarchiveSizeFromAttributes(void *a1, void *a2)
{
  v3 = [a1 objectForKey:@"_UnarchivedSize"];
  v4 = v3;
  if (v3)
  {
    *a2 = [v3 longLongValue];
  }

  return v4 != 0;
}

BOOL determineUnarchiveSizeFromMessage(void *a1, uint64_t *a2)
{
  v3 = a1;
  string = xpc_dictionary_get_string(v3, [@"_UnarchivedSize" UTF8String]);

  if (string)
  {
    *a2 = strtoll(string, 0, 10);
  }

  return string != 0;
}

BOOL sendReply(void *a1, void *a2, int64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    xpc_dictionary_set_int64(v6, "Result", a3);
    xpc_connection_send_message(v5, v7);
  }

  else
  {
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_2981ED000, v8, OS_LOG_TYPE_DEFAULT, "Could not send XPC reply with result %lld, because there was no xpc reply dictionary", &v10, 0xCu);
    }
  }

  return v7 != 0;
}

BOOL sendClientResponse(void *a1, void *a2, int64_t a3)
{
  v5 = a1;
  reply = xpc_dictionary_create_reply(a2);
  v7 = sendReply(v5, reply, a3);

  return v7;
}

void ensureAndIncrementNumberAtKey(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 || !v6)
  {
    v12 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_DEFAULT, "in ensureAndIncrementNumberAtKey nil dict or key value, skipped", v13, 2u);
    }

    goto LABEL_12;
  }

  v8 = [v5 objectForKey:v6];
  v9 = v8;
  if (v7)
  {
    v10 = [v7 longValue];
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = 1;
    if (v8)
    {
LABEL_5:
      v11 = [v9 longValue];
      v12 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLong:v11 + v10];

      if (!v12)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  v12 = [objc_alloc(MEMORY[0x29EDBA070]) initWithLong:v10];
  if (v12)
  {
LABEL_11:
    [v5 setObject:v12 forKey:v6];
LABEL_12:
  }

LABEL_13:
}

id dateAfterTimeTravel(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x29EDB9F78]);
  v9 = v8;
  if (v5)
  {
    [v8 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v10 = [objc_alloc(MEMORY[0x29EDB8DE0]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v9 setLocale:v10];

    v11 = [MEMORY[0x29EDB8E60] timeZoneWithAbbreviation:@"UTC"];
    [v9 setTimeZone:v11];

    v12 = [v9 dateFromString:v5];
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;
  v14 = [v7 integerValue];
  v15 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
  [v15 setDay:v14];
  v16 = [MEMORY[0x29EDB8D98] currentCalendar];
  v17 = [v16 dateByAddingComponents:v15 toDate:v13 options:0];

  [v9 setDateFormat:@"yyyy-MM-dd"];
  v18 = [v9 stringFromDate:v17];

  return v18;
}

id disassembleTaskDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 pathExtension];
  v3 = [v1 componentsSeparatedByString:@"."];
  if ([v3 count] < 3)
  {
    v6 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:1];

    v5 = [v3 objectAtIndexedSubscript:2];
    v6 = normalizePurpose(v5);

    v2 = v4;
  }

  if ([v3 count] < 4)
  {
    v7 = 0;
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_24;
  }

  v7 = [v3 objectAtIndexedSubscript:3];
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = objc_opt_new();
  if ([v2 isEqualToString:@"xml"])
  {
    if (v7)
    {
      v9 = 4;
    }

    else
    {
      v9 = 1;
    }
  }

  else if ([v2 isEqualToString:@"pmv"])
  {
    v9 = 3;
  }

  else
  {
    if (v7)
    {
      v9 = 5;
    }

    else
    {
      v9 = 2;
    }

    [v8 setValue:v2 forKey:@"assetIdentifier"];
  }

  v10 = [MEMORY[0x29EDBA070] numberWithInt:v9];
  [v8 setValue:v10 forKey:@"isXml"];

  if (v6)
  {
    [v8 setValue:v6 forKey:@"Purpose"];
  }

  if (v7)
  {
    [v8 setValue:v7 forKey:@"AutoAssetJob"];
  }

  v11 = [v1 rangeOfString:@"."];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v1 substringWithRange:{0, v11}];
    [v8 setValue:v12 forKey:@"normalizedAssetType"];
  }

LABEL_24:

  return v8;
}

__CFString *normalizePurpose(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && !isWellFormedPurpose(v1))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v4 = purposeIgnoredCharacterSet(isKindOfClass);
      [(__CFString *)v2 rangeOfCharacterFromSet:v4];
      v6 = v5;

      if (v6)
      {
        v8 = purposeIgnoredCharacterSet(v7);
        v9 = [(__CFString *)v2 componentsSeparatedByCharactersInSet:v8];
        v10 = [v9 componentsJoinedByString:&stru_2A1EA4138];

        v2 = v10;
      }
    }

    if (!isWellFormedPurpose(v2))
    {

      v2 = &stru_2A1EA4138;
    }
  }

  return v2;
}

uint64_t isTypeDescriptorOfType(void *a1, int a2)
{
  v3 = disassembleTaskDescriptor(a1);
  v4 = v3;
  if (v3 && ([v3 objectForKey:@"isXml"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 intValue];
    v8 = [v4 objectForKey:@"normalizedAssetType"];
    v9 = assetTypeFromNormalized(v8);

    if (v9)
    {
      v10 = v7 == a2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id assetTypeFromNormalized(void *a1)
{
  v1 = MEMORY[0x29EDBA050];
  v2 = a1;
  v3 = [v1 string];
  [v3 appendString:v2];

  [v3 replaceOccurrencesOfString:@"_" withString:@"." options:2 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

uint64_t downloadTypeForTaskDescriptor(void *a1)
{
  v1 = disassembleTaskDescriptor(a1);
  v2 = v1;
  if (v1 && ([v1 objectForKey:@"isXml"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id simplifySetIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"com.apple.MobileAsset."];
  v4 = v1;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v1 substringFromIndex:v2 + v3];
  }

  return v4;
}

void *getAssetTypeFromTaskDescriptor(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = 0;
    v4 = 0;
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = disassembleTaskDescriptor(v1);
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v5 = [v3 objectForKey:@"isXml"];
  if (!v5)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = [v4 objectForKey:@"normalizedAssetType"];
  v7 = assetTypeFromNormalized(v6);

  if (!isWellFormedAssetType(v7))
  {

    goto LABEL_6;
  }

LABEL_10:
  v8 = v7;

  return v7;
}

BOOL isWellFormedAssetType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 hasPrefix:@"com.apple.MobileAsset."] && (v2 = objc_msgSend(v1, "length"), v2 > objc_msgSend(@"com.apple.MobileAsset.", "length")) && (v3 = objc_msgSend(v1, "containsString:", @".."), (v3 & 1) == 0))
  {
    v6 = assetTypeDisallowedCharacterSet(v3);
    v4 = [v1 rangeOfCharacterFromSet:v6] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *getPurposeFromTaskDescriptor(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = 0;
    v4 = 0;
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = disassembleTaskDescriptor(v1);
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v5 = [v3 objectForKey:@"isXml"];
  if (v5)
  {
    v6 = [v4 objectForKey:@"Purpose"];
    v7 = normalizePurpose(v6);
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  v8 = v7;

  return v7;
}

id getAutoAssetJobIDFromTaskDescriptor(void *a1)
{
  if (a1)
  {
    v1 = disassembleTaskDescriptor(a1);
    v2 = v1;
    if (v1)
    {
      v3 = [v1 objectForKey:@"AutoAssetJob"];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id normalizedAssetType(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x29EDBA050] stringWithString:a1];
    [v1 replaceOccurrencesOfString:@"." withString:@"_" options:2 range:{0, objc_msgSend(v1, "length")}];
  }

  else
  {
    v2 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2981ED000, v2, OS_LOG_TYPE_DEFAULT, "Could not create normalized asset type", v4, 2u);
    }

    v1 = 0;
  }

  return v1;
}

id assembleTaskDescriptorWithPurposeAndAutoAssetJobID(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%@%@", a1, @".", a2];
  if (v7)
  {
    v10 = normalizePurpose(v7);

    v11 = [v9 stringByAppendingFormat:@"%@%@", @".", v10];

    v9 = v11;
  }

  if (v8)
  {
    if ([v8 containsString:@"."])
    {
      v12 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v8;
        _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_ERROR, "{assembleTaskDescriptorWithPurposeAndAutoAssetJobID} invalid autoAssetJobID(ignored):%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v13 = [v9 stringByAppendingFormat:@"%@%@", @".", v8];

      v9 = v13;
    }
  }

  return v9;
}

__CFString *convertGarbageCollectionOperationToString(uint64_t a1)
{
  v1 = @"<reason>";
  if (a1 == 1)
  {
    v1 = @"ReclaimSpace";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"DetermineReclaimable";
  }
}

id getPathToPmvFile(uint64_t a1)
{
  if (a1)
  {
    v1 = MEMORY[0x29EDB8E70];
    v2 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
    v3 = [v1 URLWithString:v2];
    v4 = [v3 URLByAppendingPathComponent:@"AppleSoftwareLookup.json" isDirectory:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getRepositoryPath(void *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446210;
      v6 = "getRepositoryPath";
      _os_log_impl(&dword_2981ED000, v3, OS_LOG_TYPE_ERROR, "ERROR: Invalid string passed to %{public}s", &v5, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

void *getPathToAssetWithPurpose(void *a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  if (!v7 || !v8)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  v13 = 0;
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = normalizedAssetType(v8);
      if (v12)
      {
        v11 = [v7 stringByAppendingPathComponent:v12];
        if (v10)
        {
          v14 = purposeDirectoryName(v10);
          v15 = [v11 stringByAppendingPathComponent:v14];

          v11 = v15;
        }

        v16 = [MEMORY[0x29EDB8E70] URLWithString:v11];
        v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%@", v9, @"asset"];
        v13 = [v16 URLByAppendingPathComponent:v17];

        if (_MAPreferencesIsVerboseLoggingEnabled(v18, v19))
        {
          v20 = _MAClientLog(@"V2");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v13;
            _os_log_impl(&dword_2981ED000, v20, OS_LOG_TYPE_DEBUG, "URL to asset: %@", buf, 0xCu);
          }
        }

        goto LABEL_16;
      }

      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = 0;
  }

LABEL_16:
  v21 = v13;

  return v13;
}

id purposeDirectoryName(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x29EDBA0F8];
    v2 = normalizePurpose(a1);
    v3 = [v1 stringWithFormat:@"purpose_%@", v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t isReboot(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v1 = BootSessionUUID(a1);
  v2 = [MEMORY[0x29EDB9FB8] defaultManager];
  v3 = [v2 fileExistsAtPath:@"/.nofollow/private/var/run/bootSessionMA.txt"];

  if (v3)
  {
    v18 = 0;
    v4 = [MEMORY[0x29EDBA0F8] stringWithContentsOfFile:@"/.nofollow/private/var/run/bootSessionMA.txt" encoding:4 error:&v18];
    v5 = v18;
    if (v5)
    {
      v6 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [v5 localizedDescription];
        *buf = 138412290;
        v20 = v7;
        _os_log_impl(&dword_2981ED000, v6, OS_LOG_TYPE_ERROR, "Error reading boot UUID: %@", buf, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v10 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
      v11 = [v4 stringByTrimmingCharactersInSet:v10];

      v8 = [MEMORY[0x29EDC6C78] stringIsEqual:v11 to:v1] ^ 1;
      v4 = v11;
    }
  }

  else
  {
    v9 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = @"/.nofollow/private/var/run/bootSessionMA.txt";
      _os_log_impl(&dword_2981ED000, v9, OS_LOG_TYPE_ERROR, "Boot session file does not exist at path: %@", buf, 0xCu);
    }

    v8 = 0;
    v5 = 0;
    v4 = 0;
  }

  v17 = v5;
  v12 = [v1 writeToFile:@"/.nofollow/private/var/run/bootSessionMA.txt" atomically:1 encoding:4 error:&v17];
  v13 = v17;

  if ((v12 & 1) == 0)
  {
    v14 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v13 checkedDescription];
      *buf = 138412546;
      v20 = @"/.nofollow/private/var/run/bootSessionMA.txt";
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_2981ED000, v14, OS_LOG_TYPE_ERROR, "Error writing boot session UUID to path:%@ | err:%@", buf, 0x16u);
    }
  }

  return v8;
}

id BootSessionUUID(uint64_t a1)
{
  if (BootSessionUUID_onceSessionBootUUID != -1)
  {
    BootSessionUUID_cold_1();
  }

  v2 = BootSessionUUID_stringValue;

  return v2;
}

BOOL isWellFormedAssetId(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] >= 0x14 && (v2 = objc_msgSend(v1, "length"), v2 <= 0x3C))
  {
    v5 = assetIdDisallowedCharacterSet(v2);
    v3 = [v1 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL isWellFormedSystemBuildId(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] >= 0x14 && (v2 = objc_msgSend(v1, "length"), v2 <= 0x64))
  {
    v5 = assetTypeDisallowedCharacterSet(v2);
    v3 = [v1 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL isWellFormedNormalizedAssetType(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_"];
  v3 = [v2 invertedSet];

  v5 = v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 hasPrefix:@"com_apple_MobileAsset_"] && (v4 = objc_msgSend(v1, "length"), v4 > objc_msgSend(@"com_apple_MobileAsset_", "length")) && objc_msgSend(v1, "rangeOfCharacterFromSet:", v3) == 0x7FFFFFFFFFFFFFFFLL;
  return v5;
}

BOOL isWellFormedPurpose(void *a1)
{
  v1 = a1;
  v6 = 1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v1 length] || (v2 = objc_msgSend(v1, "length"), v2 > 0x3C) || (purposeDisallowedCharacterSet(v2), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "rangeOfCharacterFromSet:", v3), v5 = v4, v3, v5))
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t isWellFormedTokenFileName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v1 length] >= 5 && (v2 = objc_msgSend(v1, "length"), v2 < 0x81))
      {
        v8 = tokenFileDisallowedCharacterSet(v2);
        v9 = [v1 rangeOfCharacterFromSet:v8];

        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = _MAClientLog(@"V2");
          if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          v11 = 0;
          v4 = "TokenFileName passed in contains invalid characters in string";
          v5 = &v11;
          goto LABEL_11;
        }

        if ([v1 hasSuffix:@".tok"])
        {
          v6 = 1;
          goto LABEL_13;
        }

        v3 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v10 = 0;
          v4 = "TokenFileName passed in has an invalid file suffix";
          v5 = &v10;
          goto LABEL_11;
        }
      }

      else
      {
        v3 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v12 = 0;
          v4 = "TokenFileName passed in has an invalid length";
          v5 = &v12;
LABEL_11:
          _os_log_impl(&dword_2981ED000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
        }
      }
    }

    else
    {
      v3 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v4 = "TokenFileName passed in is not a string";
        v5 = buf;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v4 = "TokenFileName passed in was null";
      v5 = &v14;
      goto LABEL_11;
    }
  }

LABEL_12:

  v6 = 0;
LABEL_13:

  return v6;
}

__CFString *normalizePurposeFromUtf8(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a1];
    if (v1)
    {
      v2 = v1;
      v3 = normalizePurpose(v1);
    }

    else
    {
      v3 = &stru_2A1EA4138;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id assetTypeFromAssetDirectory(void *a1)
{
  if (a1)
  {
    v1 = [a1 pathComponents];
    v2 = [v1 count];
    v3 = v2 - 2;
    if (v2 >= 2)
    {
      v4 = v2;
      v5 = [v1 objectAtIndexedSubscript:v3];
      v6 = [v5 hasPrefix:@"purpose_"];

      if (v6)
      {
        if (v4 == 2)
        {
          goto LABEL_8;
        }

        v3 = v4 - 3;
      }

      v7 = [v1 objectAtIndexedSubscript:v3];
      if (v7)
      {
        v8 = v7;
        v9 = assetTypeFromNormalized(v7);

LABEL_9:
        goto LABEL_11;
      }
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

id getSupportedAnalyticsEventFields(uint64_t a1)
{
  if (getSupportedAnalyticsEventFields_supportedAnalyticsEventsFieldsOnce != -1)
  {
    getSupportedAnalyticsEventFields_cold_1();
  }

  v2 = getSupportedAnalyticsEventFields_supportedAnalyticsEventsFields;

  return v2;
}

uint64_t __getSupportedAnalyticsEventFields_block_invoke()
{
  getSupportedAnalyticsEventFields_supportedAnalyticsEventsFields = [objc_alloc(MEMORY[0x29EDB8E50]) initWithArray:&unk_2A1EAD1A8];

  return MEMORY[0x2A1C71028]();
}

uint64_t isSupportedMAAnalyticsEventFieldName(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = a1;
  if (v1 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v3 = getSupportedAnalyticsEventFields(isKindOfClass);
    v4 = [v3 containsObject:v1];
  }

  else
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446210;
      v7 = "isSupportedMAAnalyticsEventFieldName";
      _os_log_impl(&dword_2981ED000, v3, OS_LOG_TYPE_ERROR, "%{public}s: Field is invalid", &v6, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t usingCentralizedCachedelete(uint64_t a1, uint64_t a2)
{
  if (usingCentralizedCachedelete_onceToken != -1)
  {
    usingCentralizedCachedelete_cold_1();
  }

  return usingCentralizedCachedelete_eapfsEnabled;
}

uint64_t __usingCentralizedCachedelete_block_invoke(uint64_t a1, uint64_t a2)
{
  result = _MAPreferencesIsCentralizedCacheDeleteEnabled(a1, a2);
  if (result)
  {
    result = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/filesystems");
    if (result)
    {
      v3 = result;
      CFProperty = IORegistryEntryCreateCFProperty(result, @"e-apfs", *MEMORY[0x29EDB8ED8], 0);
      if (CFProperty)
      {
        CFRelease(CFProperty);
        usingCentralizedCachedelete_eapfsEnabled = 1;
      }

      return IOObjectRelease(v3);
    }
  }

  else
  {
    usingCentralizedCachedelete_eapfsEnabled = 0;
  }

  return result;
}

BOOL isDirStatsEnabledForDirectory(void *a1)
{
  v35 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  v2 = fsctl([v1 UTF8String], 0xC1104A71uLL, v20, 0);
  v4 = v2;
  if (v2)
  {
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *__error();
      v12 = 138543618;
      v13 = v1;
      v14 = 1024;
      LODWORD(v15) = v6;
      v7 = "Unable to check dirstats for directory %{public}@, error %i";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 18;
LABEL_7:
      _os_log_impl(&dword_2981ED000, v8, v9, v7, &v12, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (_MAPreferencesIsVerboseLoggingEnabled(v2, v3))
  {
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138413058;
      v13 = v1;
      v14 = 2048;
      v15 = *(&v21 + 1);
      v16 = 2048;
      v17 = v22;
      v18 = 2048;
      v19 = v21;
      v7 = "%@:\ndescendants: %llu\nphysical size: %llu\ngen-count: %llu\n";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 42;
      goto LABEL_7;
    }

LABEL_8:
  }

  return v4 == 0;
}

BOOL enableDirStatsForDirectory(void *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = a1;
  memset(v10, 0, sizeof(v10));
  DWORD1(v10[0]) = 1;
  v2 = fsctl([v1 UTF8String], 0xC1104A71uLL, v10, 0);
  if (v2)
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *__error();
      v6 = 138543618;
      v7 = v1;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_2981ED000, v3, OS_LOG_TYPE_ERROR, "Unable to enable dirstats for directory %{public}@, error %i", &v6, 0x12u);
    }
  }

  return v2 == 0;
}

BOOL markItemPurgeableWithFlagsAndStartTime(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = [MEMORY[0x29EDB9FB8] defaultManager];
  if (![v6 fileExistsAtPath:@"/private/var/MobileSoftwareUpdate/.MAAMigrated.plist"])
  {

    goto LABEL_8;
  }

  v7 = isDirStatsEnabledForDirectory(v5);

  if (!v7)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v15 = 0;
  if (fsctl([v5 UTF8String], 0xC0084A44uLL, &v15, 0))
  {
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_2981ED000, v8, OS_LOG_TYPE_ERROR, "Failed to clear purgability, errno:%d", buf, 8u);
    }

    goto LABEL_8;
  }

  *buf = a2;
  v19 = xmmword_298210FC0;
  v20 = 0;
  v21 = a3;
  v22 = 0;
  v12 = fsctl([v5 UTF8String], 0xC0304A6FuLL, buf, 0);
  v10 = v12 == 0;
  if (v12)
  {
    v13 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *v16 = 67109120;
      v17 = v14;
      _os_log_impl(&dword_2981ED000, v13, OS_LOG_TYPE_ERROR, "Failed to mark purgeable with label, errno:%d", v16, 8u);
    }
  }

LABEL_9:

  return v10;
}

BOOL markItemPurgeableWithUrgencyAndGarbageCollectionPolicy(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (![v6 isEqualToString:@"NeverCollected"])
  {
    if ([v7 isEqualToString:@"Precious"])
    {
      v10 = 2678400000000000;
LABEL_9:
      v11 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      started = markItemPurgeableWithFlagsAndStartTime(v5, a2 | 0x10000, v11 + v10);
      goto LABEL_10;
    }

LABEL_8:
    v10 = 1296000000000000;
    goto LABEL_9;
  }

  v8 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&dword_2981ED000, v8, OS_LOG_TYPE_ERROR, "API MISUSE: markItemPurgeableWithUrgencyAndGarbageCollectionPolicy called with NeverCollected policy", v13, 2u);
  }

  started = 0;
LABEL_10:

  return started;
}

uint64_t cacheDeleteLevelForPolicyValue(unint64_t a1)
{
  if (a1 < 0x320)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x258)
  {
    v2 = v1;
  }

  else
  {
    v2 = 2;
  }

  if (a1 >= 0x190)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (a1 < 200)
  {
    v3 = 0;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

id getSoftwareUpdateBrainTypes(uint64_t a1)
{
  if (getSoftwareUpdateBrainTypes_softwareUpdateBrainTypesOnce != -1)
  {
    getSoftwareUpdateBrainTypes_cold_1();
  }

  v2 = getSoftwareUpdateBrainTypes_softwareUpdateBrainAssetTypes;

  return v2;
}

uint64_t __getSoftwareUpdateBrainTypes_block_invoke()
{
  getSoftwareUpdateBrainTypes_softwareUpdateBrainAssetTypes = [objc_alloc(MEMORY[0x29EDB8E50]) initWithArray:&unk_2A1EAD1C0];

  return MEMORY[0x2A1C71028]();
}

id getSoftwareUpdateTypes(uint64_t a1)
{
  if (getSoftwareUpdateTypes_softwareUpdateTypesOnce != -1)
  {
    getSoftwareUpdateTypes_cold_1();
  }

  v2 = getSoftwareUpdateTypes_softwareUpdateAssetTypes;

  return v2;
}

void __getSoftwareUpdateTypes_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x29EDB8E50]) initWithArray:&unk_2A1EAD1D8];
  v0 = getSoftwareUpdateBrainTypes(v3);
  v1 = [v3 setByAddingObjectsFromSet:v0];
  v2 = getSoftwareUpdateTypes_softwareUpdateAssetTypes;
  getSoftwareUpdateTypes_softwareUpdateAssetTypes = v1;
}

uint64_t isSoftwareUpdateBrainType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v3 = getSoftwareUpdateBrainTypes(isKindOfClass);
    v4 = [v3 containsObject:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t isSoftwareUpdateType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v3 = getSoftwareUpdateTypes(isKindOfClass);
    v4 = [v3 containsObject:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t isSystemAppType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [&unk_2A1EAD1F0 containsObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isBuildAlignedType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [MEMORY[0x29EDB8E90] containsObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isUserInteractionAllowedType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (isSoftwareUpdateType(v1))
    {
      updated = 1;
    }

    else
    {
      updated = isSoftwareUpdateBrainType(v1);
    }
  }

  else
  {
    updated = 0;
  }

  return updated;
}

id getPreallocatedSpaceAllowedTypes(uint64_t a1)
{
  if (getPreallocatedSpaceAllowedTypes_allowedTypesOnce != -1)
  {
    getPreallocatedSpaceAllowedTypes_cold_1();
  }

  v2 = getPreallocatedSpaceAllowedTypes_allowedAssetTypes;

  return v2;
}

void __getPreallocatedSpaceAllowedTypes_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E50]);
  v4 = [v0 initWithArray:MEMORY[0x29EDB8E90]];
  v1 = getSoftwareUpdateTypes(v4);
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = getPreallocatedSpaceAllowedTypes_allowedAssetTypes;
  getPreallocatedSpaceAllowedTypes_allowedAssetTypes = v2;
}

uint64_t isPreallocateSpaceAllowedType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v3 = getPreallocatedSpaceAllowedTypes(isKindOfClass);
    v4 = [v3 containsObject:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t isDisallowedFromContentCaching(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [MEMORY[0x29EDB8E50] setWithArray:MEMORY[0x29EDB8E90]];
    v3 = [v2 containsObject:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t getIsKnoxSupportedFromPallasURL(void *a1)
{
  v1 = [a1 host];
  v2 = [v1 lowercaseString];

  LODWORD(v1) = [v2 isEqualToString:@"gdmf.apple.com"];
  return v1 ^ 1;
}

uint64_t urlSupportsAuthenticatedPallas(void *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v1 = a1;
  if (urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallasDispatchOnce != -1)
  {
    urlSupportsAuthenticatedPallas_cold_1();
  }

  if (!v1)
  {
    v2 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446210;
    v24 = "urlSupportsAuthenticatedPallas";
    v11 = "[AuthenticatedPallas]: Invalid url passed to %{public}s";
    v12 = v2;
    v13 = 12;
LABEL_21:
    _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_22;
  }

  if (!urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas)
  {
    v2 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v11 = "[AuthenticatedPallas]: domainsSupportingAuthenticatedPallas not initialized";
    v12 = v2;
    v13 = 2;
    goto LABEL_21;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas;
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v1 scheme];
        if ([v8 isEqualToString:@"https"])
        {
          v9 = [v1 host];
          v10 = [v9 isEqualToString:v7];

          if (v10)
          {
            v15 = _MAClientLog(@"V2");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v24 = v1;
              _os_log_impl(&dword_2981ED000, v15, OS_LOG_TYPE_DEFAULT, "[AuthenticatedPallas]: URL %{public}@ supports authenticated pallas", buf, 0xCu);
            }

            v14 = 1;
            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:
  v14 = 0;
LABEL_26:

  return v14;
}

void __urlSupportsAuthenticatedPallas_block_invoke()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithArray:&unk_2A1EAD208];
  v1 = urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas;
  urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas = v0;

  if (os_variant_has_internal_content())
  {
    v2 = _MAPreferencesCopyNSStringValue(@"AdditionalAuthenticatedPallasServer");
    if (v2)
    {
      v3 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 138543362;
        v5 = v2;
        _os_log_impl(&dword_2981ED000, v3, OS_LOG_TYPE_DEFAULT, "[AuthenticatedPallas]: {urlSupportsAuthenticatedPallas} Adding %{public}@ to set of domains supporting authenticated pallas", &v4, 0xCu);
      }

      [urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas addObject:v2];
    }
  }
}

uint64_t isSSONeededForURL(void *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v1 = a1;
  if (isSSONeededForURL_domainsNeedingSSODispatchOnce != -1)
  {
    isSSONeededForURL_cold_1();
  }

  if (!v1)
  {
    v2 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446210;
    v24 = "isSSONeededForURL";
    v11 = "Invalid url passed to %{public}s";
    v12 = v2;
    v13 = 12;
LABEL_21:
    _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_22;
  }

  if (!isSSONeededForURL_domainsNeedingSSO)
  {
    v2 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v11 = "DomainsNeedingSSO not initialized";
    v12 = v2;
    v13 = 2;
    goto LABEL_21;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = isSSONeededForURL_domainsNeedingSSO;
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v1 scheme];
        if ([v8 isEqualToString:@"https"])
        {
          v9 = [v1 host];
          v10 = [v9 isEqualToString:v7];

          if (v10)
          {
            v15 = _MAClientLog(@"V2");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v24 = v1;
              _os_log_impl(&dword_2981ED000, v15, OS_LOG_TYPE_DEFAULT, "URL %{public}@ requires SSO", buf, 0xCu);
            }

            v14 = 1;
            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:
  v14 = 0;
LABEL_26:

  return v14;
}

void __isSSONeededForURL_block_invoke()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithArray:&unk_2A1EAD220];
  v1 = isSSONeededForURL_domainsNeedingSSO;
  isSSONeededForURL_domainsNeedingSSO = v0;

  if (os_variant_has_internal_content())
  {
    v2 = _MAPreferencesCopyNSStringValue(@"AdditionalSSOServer");
    if (v2)
    {
      v3 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 138543362;
        v5 = v2;
        _os_log_impl(&dword_2981ED000, v3, OS_LOG_TYPE_DEFAULT, "{isSSONeededForURL} Adding %{public}@ to set of domains needing SSO", &v4, 0xCu);
      }

      [isSSONeededForURL_domainsNeedingSSO addObject:v2];
    }
  }
}

void *getLocalUrlFromTypeAndIdGivenDefaultRepoWithPurpose(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if (!v9)
  {
    v17 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v36 = 0;
    v18 = "Attempting to get local url with nil asset type";
    v19 = &v36;
LABEL_13:
    _os_log_impl(&dword_2981ED000, v17, OS_LOG_TYPE_ERROR, v18, v19, 2u);
    goto LABEL_14;
  }

  if (!v10)
  {
    v17 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v35 = 0;
    v18 = "Attempting to get local url with nil asset id";
    v19 = &v35;
    goto LABEL_13;
  }

  v13 = normalizedAssetType(v9);
  if (!v13)
  {
    v17 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Attempting to get local URL with asset-type that could not be normalized";
      v19 = buf;
      goto LABEL_13;
    }

LABEL_14:

    v20 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = v13;
  if (a3 == 5)
  {
    v15 = MEMORY[0x29EDB8E70];
    v16 = @"/System/Library/PreinstalledAssetsV2/RequiredByOs";
    goto LABEL_18;
  }

  if (a3 != 6)
  {
    if (v11)
    {
      v25 = [MEMORY[0x29EDB8E70] URLWithString:v11];
      goto LABEL_21;
    }

    v32 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_impl(&dword_2981ED000, v32, OS_LOG_TYPE_ERROR, "Attempting to get local url with nil default repo for a non preinstalled asset", v33, 2u);
    }

    v20 = 0;
LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v15 = MEMORY[0x29EDB8E70];
  v16 = @"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs";
LABEL_18:
  v24 = getRepositoryPath(v16);
  v25 = [v15 URLWithString:v24];

LABEL_21:
  v26 = [v25 URLByAppendingPathComponent:v14];

  if (v12)
  {
    v27 = purposeDirectoryName(v12);
    v28 = [v26 URLByAppendingPathComponent:v27];

    v26 = v28;
  }

  v29 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%@", v10, @"asset"];
  v20 = [v29 stringByAppendingPathComponent:@"AssetData"];

  v21 = [v26 URLByAppendingPathComponent:v20];

  if (v12)
  {
    v30 = purposeDirectoryName(v12);
    v31 = [v21 URLByAppendingPathComponent:v30];

    v21 = v31;
  }

LABEL_16:
  v22 = v21;

  return v21;
}

id getAutoLocalUrlFromTypeGivenDefaultRepoWithPurpose(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v14 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26 = 0;
      v15 = "Attempting to get local URL with nil asset-type";
      v16 = &v26;
LABEL_10:
      _os_log_impl(&dword_2981ED000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    }

LABEL_11:

    v11 = 0;
LABEL_12:
    v17 = 0;
    goto LABEL_19;
  }

  v10 = normalizedAssetType(v7);
  if (!v10)
  {
    v14 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Attempting to get local URL with asset-type that could not be normalized";
      v16 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v11 = v10;
  if (a2 == 5)
  {
    v12 = MEMORY[0x29EDB8E70];
    v13 = @"/System/Library/PreinstalledAssetsV2/RequiredByOs";
    goto LABEL_14;
  }

  if (a2 == 6)
  {
    v12 = MEMORY[0x29EDB8E70];
    v13 = @"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs";
LABEL_14:
    v18 = getRepositoryPath(v13);
    v19 = [v12 fileURLWithPath:v18];

    goto LABEL_17;
  }

  if (!v8)
  {
    v23 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_impl(&dword_2981ED000, v23, OS_LOG_TYPE_ERROR, "Attempting to get local url with nil default repo for a non preinstalled asset", v24, 2u);
    }

    goto LABEL_12;
  }

  v19 = [MEMORY[0x29EDB8E70] fileURLWithPath:v8];
LABEL_17:
  v17 = [v19 URLByAppendingPathComponent:v11];

  if (v9)
  {
    v20 = purposeDirectoryName(v9);
    v21 = [v17 URLByAppendingPathComponent:v20];

    v17 = v21;
  }

LABEL_19:

  return v17;
}

id getAutoLocalUrlFromTypeAndIdGivenDefaultRepoWithPurpose(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if (!v9)
  {
    v16 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v31 = 0;
      v17 = "Attempting to get local url with nil asset type";
      v18 = &v31;
LABEL_11:
      _os_log_impl(&dword_2981ED000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    }

LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

  if (!v10)
  {
    v16 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Attempting to get local url with nil asset id";
      v18 = buf;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v13 = normalizedAssetType(v9);
  if (!v13)
  {
    goto LABEL_13;
  }

  if (a3 == 5)
  {
    v14 = MEMORY[0x29EDB8E70];
    v15 = @"/System/Library/PreinstalledAssetsV2/RequiredByOs";
    goto LABEL_15;
  }

  if (a3 != 6)
  {
    if (v11)
    {
      v21 = [MEMORY[0x29EDB8E70] URLWithString:v11];
      goto LABEL_18;
    }

    v28 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_impl(&dword_2981ED000, v28, OS_LOG_TYPE_ERROR, "Attempting to get local url with nil default repo for a non preinstalled asset", v29, 2u);
    }

LABEL_13:
    v19 = 0;
    goto LABEL_21;
  }

  v14 = MEMORY[0x29EDB8E70];
  v15 = @"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs";
LABEL_15:
  v20 = getRepositoryPath(v15);
  v21 = [v14 URLWithString:v20];

LABEL_18:
  v22 = [v21 URLByAppendingPathComponent:v13];

  if (v12)
  {
    v23 = purposeDirectoryName(v12);
    v24 = [v22 URLByAppendingPathComponent:v23];

    v22 = v24;
  }

  v25 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%@", v10, @"asset"];
  v26 = [v22 URLByAppendingPathComponent:v25];

  v19 = [v26 URLByAppendingPathComponent:@"AssetData"];

LABEL_21:

  return v19;
}

uint64_t isValidPlistObject(void *a1, int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = 0;
  if (v3 && (a2 & 0x80000000) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v4 = 1;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = v3;
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
        v10 = a2 - 1;
LABEL_12:
        v11 = 0;
        while (1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (!isValidPlistObject(*(*(&v24 + 1) + 8 * v11), v10))
          {
            break;
          }

          if (v8 == ++v11)
          {
            v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
            v4 = 1;
            if (v8)
            {
              goto LABEL_12;
            }

            goto LABEL_32;
          }
        }

LABEL_30:
        v4 = 0;
LABEL_32:

        goto LABEL_8;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = 0;
        goto LABEL_8;
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = [v3 allKeys];
      v12 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        v15 = a2 - 1;
LABEL_22:
        v16 = 0;
        while (1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_30;
          }

          v18 = [v3 objectForKey:v17];
          valid = isValidPlistObject(v18, v15);

          if (!valid)
          {
            goto LABEL_30;
          }

          if (v13 == ++v16)
          {
            v13 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
            v4 = 1;
            if (v13)
            {
              goto LABEL_22;
            }

            goto LABEL_32;
          }
        }
      }
    }

    v4 = 1;
    goto LABEL_32;
  }

LABEL_8:

  return v4;
}

uint64_t isPlistArray(void *a1, int a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valid = isValidPlistObject(v3, a2);
  }

  else
  {
    valid = 0;
  }

  return valid;
}

uint64_t isPlistDictionary(void *a1, int a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valid = isValidPlistObject(v3, a2);
  }

  else
  {
    valid = 0;
  }

  return valid;
}

id getPlistEntryOfClass(void *a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2;
  if (!v4)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = 0;
  if (!v5 || (isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  v8 = [v4 objectForKey:v5];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:

  return v7;
}

id getPlistString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = getPlistEntryOfClass(v4, v3, v5);

  return v6;
}

id getPlistNumber(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = getPlistEntryOfClass(v4, v3, v5);

  return v6;
}

uint64_t getPlistNumberAsBool(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = getPlistEntryOfClass(v4, v3, v5);

  v7 = [v6 BOOLValue];
  return v7;
}

id getPlistData(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = getPlistEntryOfClass(v4, v3, v5);

  return v6;
}

NSObject *getPlistDictionary(void *a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446210;
      v12 = "getPlistDictionary";
      _os_log_impl(&dword_2981ED000, v7, OS_LOG_TYPE_ERROR, "%{public}s: Invalid options", &v11, 0xCu);
    }

    goto LABEL_15;
  }

  v6 = objc_opt_class();
  v7 = getPlistEntryOfClass(v3, v5, v6);
  if (!v7)
  {
    v8 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "getPlistDictionary";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_2981ED000, v8, OS_LOG_TYPE_ERROR, "%{public}s: Unable to extract plist object for key %{public}@ from dict", &v11, 0x16u);
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:
    v9 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "getPlistDictionary";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_2981ED000, v9, OS_LOG_TYPE_ERROR, "%{public}s: Extracted object for key %{public}@ is invalid/not a dictionary", &v11, 0x16u);
    }

LABEL_15:
    v7 = 0;
  }

  return v7;
}

id getPlistArray(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a1;
  v7 = objc_opt_class();
  v8 = getPlistEntryOfClass(v6, v5, v7);

  if ((isPlistArray(v8, a3) & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

id filterPMV(void *a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7, __CFString **a8)
{
  v130 = *MEMORY[0x29EDCA608];
  v13 = a1;
  v60 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v62 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  objc_opt_class();
  v58 = v13;
  if (objc_opt_isKindOfClass())
  {
    v125 = 0;
    v126 = &v125;
    v127 = 0x2020000000;
    v128 = 0;
    v121 = 0;
    v122 = &v121;
    v123 = 0x2020000000;
    v124 = 0;
    v117 = 0;
    v118 = &v117;
    v119 = 0x2020000000;
    v120 = 0;
    v113 = 0;
    v114 = &v113;
    v115 = 0x2020000000;
    v116 = 0;
    v109 = 0;
    v110 = &v109;
    v111 = 0x2020000000;
    v112 = 0;
    v105 = 0;
    v106 = &v105;
    v107 = 0x2020000000;
    v108 = 0;
    v100 = 0;
    v101 = 0;
    v102 = &v101;
    v103 = 0x2020000000;
    v104 = 0;
    v97 = 0;
    v98 = &v97;
    v99 = 0x2020000000;
    v93 = 0;
    v94 = &v93;
    v95 = 0x2020000000;
    v96 = 0;
    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v92 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2020000000;
    v88 = 0;
    v14 = objc_opt_new();
    [v14 setDateFormat:@"yyyy-MM-dd"];
    v47 = v14;
    v15 = @"PublicAssetSets";
    if (a2)
    {
      v15 = @"AssetSets";
    }

    v49 = v15;
    v16 = [v13 objectForKey:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {

      v16 = 0;
    }

    if (v60 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = [v16 objectForKey:v60];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v62 addObjectsFromArray:v17];
        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
      v50 = 0;
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v81 objects:v129 count:16];
    if (v21)
    {
      v61 = 0;
      v63 = 0;
      v22 = *v82;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v82 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v81 + 1) + 8 * i);
          v25 = objc_autoreleasePoolPush();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [v20 objectForKey:v24];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ((v19 & 1) == 0)
              {
                [v62 addObjectsFromArray:v26];
              }

              if ([v24 isEqual:@"iOS"])
              {
                v63 += [v26 count];
              }

              else if ([v24 isEqual:@"macOS"])
              {
                v61 += [v26 count];
              }
            }
          }

          objc_autoreleasePoolPop(v25);
        }

        v21 = [v20 countByEnumeratingWithState:&v81 objects:v129 count:16];
      }

      while (v21);
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    v27 = [v20 count];
    v28 = v50;
    if (!v27)
    {
      v28 = 1;
    }

    v51 = v28;
    v29 = MEMORY[0x29EDBA0A8];
    v64[0] = MEMORY[0x29EDCA5F8];
    v64[1] = 3221225472;
    v64[2] = __filterPMV_block_invoke;
    v64[3] = &unk_29EE8B8B8;
    v30 = v54;
    v65 = v30;
    v70 = &v121;
    v71 = &v105;
    v31 = v55;
    v66 = v31;
    v72 = &v85;
    v73 = &v89;
    v74 = &v101;
    v75 = &v117;
    v32 = v56;
    v67 = v32;
    v33 = v47;
    v68 = v33;
    v76 = &v113;
    v77 = &v97;
    v34 = v57;
    v69 = v34;
    v78 = &v109;
    v79 = &v93;
    v80 = &v125;
    v35 = [v29 predicateWithBlock:v64];
    v36 = [v62 count];
    [v62 filterUsingPredicate:v35];
    v37 = [v62 count];
    v48 = v33;
    if (a8)
    {
      v38 = v37;
      v39 = [MEMORY[0x29EDBA050] stringWithCapacity:500];
      v18 = v39;
      v40 = @"public";
      if (a2)
      {
        v40 = @"supervised";
      }

      [(__CFString *)v39 appendFormat:@"Filtered PMV to %ld/%ld entries (from %@: %ld iOS, %ld macOS) using [", v38, v36, v40, v63, v61];
      v41 = @"false";
      if (a2)
      {
        v41 = @"true";
      }

      [(__CFString *)v18 appendFormat:@"includeSupervised: %@ ", v41];
      if (v60)
      {
        [(__CFString *)v18 appendFormat:@" platformExactMatch: %@", v60];
      }

      if (v30)
      {
        [(__CFString *)v18 appendFormat:@" versionPrefix: %@", v30];
      }

      if (v31)
      {
        [(__CFString *)v18 appendFormat:@" supportedDevicePrefix: %@", v31];
      }

      if (v32)
      {
        [(__CFString *)v18 appendFormat:@" postedBefore: %@", v32];
      }

      if (v34)
      {
        [(__CFString *)v18 appendFormat:@" notExpiredBefore: %@", v34];
      }

      [(__CFString *)v18 appendFormat:@"]."];
      v42 = v126[3];
      if ((v42 > 0) | (isKindOfClass ^ 1 | v51) & 1)
      {
        if (v42)
        {
          [(__CFString *)v18 appendFormat:@" Filtered out %ld due to", v126[3]];
        }

        if (v122[3])
        {
          [(__CFString *)v18 appendFormat:@" ProductVersion: %ld", v122[3]];
        }

        if (v118[3])
        {
          [(__CFString *)v18 appendFormat:@" SupportedDevices: %ld", v118[3]];
        }

        if (v114[3])
        {
          [(__CFString *)v18 appendFormat:@" PostingDate: %ld", v114[3]];
        }

        if (v110[3])
        {
          [(__CFString *)v18 appendFormat:@" ExpirationDate: %ld", v110[3]];
        }

        if (((isKindOfClass ^ 1 | v51) & 1) != 0 || v106[3] || v102[3] || v98[3] || v94[3])
        {
          [(__CFString *)v18 appendFormat:@" -- ISSUES: "];
          if ((isKindOfClass & 1) == 0)
          {
            [(__CFString *)v18 appendFormat:@" missingSet: %@", v49];
          }

          v43 = v51 ^ 1;
          if (!v60)
          {
            v43 = 1;
          }

          if (v43)
          {
            if (v51)
            {
              [(__CFString *)v18 appendFormat:@" missingAllPlatforms"];
            }
          }

          else
          {
            [(__CFString *)v18 appendFormat:@" missingPlatform: %@", v60];
          }

          if (v106[3] || v102[3] || v90[3] || v98[3] || v94[3])
          {
            [(__CFString *)v18 appendFormat:@" -- Some entries missed potential filtering due to"];
            if (v106[3])
            {
              [(__CFString *)v18 appendFormat:@" missingProductVersion: %ld", v106[3]];
            }

            if (v102[3])
            {
              [(__CFString *)v18 appendFormat:@" missingSupportedDevices: %ld", v102[3]];
            }

            if (v90[3])
            {
              [(__CFString *)v18 appendFormat:@" emptySupportedDevices: %ld", v90[3]];
            }

            if (v98[3])
            {
              [(__CFString *)v18 appendFormat:@" missingPostingDate: %ld", v98[3]];
            }

            if (v94[3])
            {
              [(__CFString *)v18 appendFormat:@" missingExpirationDate: %ld", v94[3]];
            }
          }

          if (v86[3])
          {
            [(__CFString *)v18 appendFormat:@" -- filtering saw a total of %ld individual SupportedDevices that were nil or not strings", v86[3]];
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }

    _Block_object_dispose(&v85, 8);
    _Block_object_dispose(&v89, 8);
    _Block_object_dispose(&v93, 8);
    _Block_object_dispose(&v97, 8);
    _Block_object_dispose(&v101, 8);
    _Block_object_dispose(&v105, 8);
    _Block_object_dispose(&v109, 8);
    _Block_object_dispose(&v113, 8);
    _Block_object_dispose(&v117, 8);
    _Block_object_dispose(&v121, 8);
    _Block_object_dispose(&v125, 8);
  }

  else
  {
    v18 = @"Filtered PMV to 0/0 entries. PMV was not a dictionary.";
  }

  objc_autoreleasePoolPop(context);
  if (a8)
  {
    v44 = v18;
    *a8 = v18;
  }

  return v62;
}

void sub_2981F8E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose((v66 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t __filterPMV_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      if (*(a1 + 32))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"ProductVersion"];
          if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (([v8 hasPrefix:*(a1 + 32)] & 1) == 0)
            {
              ++*(*(*(a1 + 72) + 8) + 24);
LABEL_42:

              goto LABEL_10;
            }
          }

          else
          {
            ++*(*(*(a1 + 80) + 8) + 24);
          }
        }
      }

      if (*(a1 + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v7 objectForKey:@"SupportedDevices"];
          if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v22 = v7;
            v23 = v12;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = 0;
              v17 = *v25;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v25 != v17)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v19 = *(*(&v24 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v16 |= [v19 hasPrefix:*(a1 + 40)];
                  }

                  else
                  {
                    ++*(*(*(a1 + 88) + 8) + 24);
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
              }

              while (v15);
            }

            else
            {
              LOBYTE(v16) = 0;
            }

            if (![v13 count])
            {
              ++*(*(*(a1 + 96) + 8) + 24);
            }

            v12 = v23;
            if (v16)
            {

              v7 = v22;
              goto LABEL_37;
            }
          }

          else
          {
            ++*(*(*(a1 + 104) + 8) + 24);
          }

          ++*(*(*(a1 + 112) + 8) + 24);
LABEL_31:

          goto LABEL_10;
        }
      }

LABEL_37:
      if (*(a1 + 48))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"PostingDate"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [*(a1 + 56) dateFromString:v8];
            if ([v20 compare:*(a1 + 48)] == 1)
            {
              ++*(*(*(a1 + 120) + 8) + 24);

              goto LABEL_42;
            }
          }

          else
          {
            ++*(*(*(a1 + 128) + 8) + 24);
          }
        }
      }

      if (*(a1 + 64))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v7 objectForKey:@"ExpirationDate"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [*(a1 + 56) dateFromString:v12];
            if ([v21 compare:*(a1 + 64)] == 1)
            {
              ++*(*(*(a1 + 136) + 8) + 24);

              goto LABEL_31;
            }
          }

          else
          {
            ++*(*(*(a1 + 144) + 8) + 24);
          }
        }
      }

      v10 = 1;
      goto LABEL_11;
    }
  }

  v9 = v5;
LABEL_10:
  v10 = 0;
  ++*(*(*(a1 + 152) + 8) + 24);
LABEL_11:

  return v10;
}

__CFString *stringForMAQueryResult(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MAQueryResult%llu", a1];
  }

  else
  {
    v2 = off_29EE8B8D8[a1];
  }

  return v2;
}

__CFString *stringForMAQueryReturnTypes(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MAQueryReturnTypes%llu", a1];
  }

  else
  {
    v2 = off_29EE8B950[a1];
  }

  return v2;
}

__CFString *stringForMAAssetState(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MAAssetState%llu", a1];
  }

  else
  {
    v2 = off_29EE8B988[a1];
  }

  return v2;
}

__CFString *stringForMAXpcCommand(unsigned int a1)
{
  if (a1 >= 0x30)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MAXpcCommand%llu", a1];
  }

  else
  {
    v2 = off_29EE8B9C0[a1];
  }

  return v2;
}

__CFString *stringForMAXpcError(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MAXpcError%llu", a1];
  }

  else
  {
    v2 = off_29EE8BB40[a1];
  }

  return v2;
}

__CFString *stringForAnalyticsReportingLevel(uint64_t a1)
{
  v1 = @"<undefined-level>";
  v2 = @"MADAnalyticsLevelUnchanged";
  v3 = @"MADAnalyticsLevelImmediate";
  if (a1 != 10)
  {
    v3 = @"<undefined-level>";
  }

  if (a1)
  {
    v2 = v3;
  }

  if (a1 == -10)
  {
    v1 = @"MADAnalyticsLevelDoNotSend";
  }

  if (a1 == -20)
  {
    v1 = @"MADAnalyticsLevelDoNotSave";
  }

  if (a1 < 0)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

__CFString *stringForCacheDeleteUrgency(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"BEYOND-EMERGENCY";
  }

  if (a1 > 4)
  {
    return @"UNDEFINED";
  }

  return off_29EE8BB88[a1];
}

__CFString *allocStringForBytes(uint64_t a1)
{
  if (a1)
  {
    v2 = @"NEGATIVE ";
    if (a1 < 0)
    {
      v3 = a1 + 0x3FFFFFFF;
    }

    else
    {
      v2 = &stru_2A1EA4138;
      v3 = a1;
    }

    v4 = v2;
    v5 = a1 - (v3 & 0xFFFFFFFFC0000000);
    if (a1 >= (v3 & 0xFFFFFFFFC0000000))
    {
      v6 = a1 - (v3 & 0xFFFFFFFFC0000000);
    }

    else
    {
      v6 = v5 + 0xFFFFF;
    }

    v7 = v5 - (v6 & 0xFFFFFFFFFFF00000);
    if (v5 >= (v6 & 0xFFFFFFFFFFF00000))
    {
      v8 = v5 - (v6 & 0xFFFFFFFFFFF00000);
    }

    else
    {
      v8 = v7 + 1023;
    }

    v9 = v7 - (v8 & 0xFFFFFFFFFFFFFC00);
    if (v9 == 1)
    {
      v10 = @" 1 byte";
    }

    else if (v9 < 2)
    {
      v10 = &stru_2A1EA4138;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@" %lld bytes", v7 - (v8 & 0xFFFFFFFFFFFFFC00)];
    }

    v12 = v6 >> 20;
    if (a1 < 0x40000000)
    {
      if (v5 < 0x100000)
      {
        v14 = objc_alloc(MEMORY[0x29EDBA0F8]);
        if (v7 < 1024)
        {
          v13 = [v14 initWithFormat:@"%@%lld bytes", v4, a1, v16, v17, v18];
        }

        else
        {
          v13 = [v14 initWithFormat:@"%@%lldKB%@", v4, v8 >> 10, v10, v17, v18];
        }
      }

      else
      {
        v13 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@%lldMB %lldKB%@", v4, v12, v8 >> 10, v10, v18];
      }
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@%lldGB %lldMB %lldKB%@", &stru_2A1EA4138, v3 >> 30, v12, v8 >> 10, v10];
    }

    v11 = v13;
  }

  else
  {
    v11 = @"0 bytes";
  }

  return v11;
}

__CFString *stringForMAOperationResult(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MAOperationResult%llu", a1];
  }

  else
  {
    v2 = off_29EE8BBB0[a1];
  }

  return v2;
}

__CFString *stringForMADownloadResult(unint64_t a1)
{
  if (a1 >= 0x57)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MADownloadResult%llu", a1];
  }

  else
  {
    v2 = off_29EE8BBE0[a1];
  }

  return v2;
}

__CFString *stringForMACancelDownloadResult(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MACancelDownloadResult%llu", a1];
  }

  else
  {
    v2 = off_29EE8BE98[a1];
  }

  return v2;
}

__CFString *stringForMAPurgeResult(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"MAPurgeResult%llu", a1];
  }

  else
  {
    v2 = off_29EE8BED8[a1];
  }

  return v2;
}

__CFString *errorStringForMAPurgeResult(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0xB && ((0x4EDu >> v2))
  {
    v3 = off_29EE8BF40[v2];
  }

  else
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Purge failed due to error %llu", a1];
  }

  return v3;
}

__CFString *errorStringForMAQueryResult(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = stringForMAQueryResult(a1);
    v2 = [v3 stringWithFormat:@"Query failed due to Error %lld (%@).", a1, v4];
  }

  else
  {
    v2 = off_29EE8BF98[a1];
  }

  return v2;
}

__CFString *errorStringForMACancelDownloadResult(unint64_t a1)
{
  if (a1 >= 8)
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = stringForMACancelDownloadResult(a1);
    v2 = [v3 stringWithFormat:@"Download failed due to Error %lld (%@).", a1, v4];
  }

  else
  {
    v2 = off_29EE8C010[a1];
  }

  return v2;
}

__CFString *errorStringForMADownloadResult(unint64_t a1)
{
  if (a1 >= 0x57)
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = stringForMADownloadResult(a1);
    v2 = [v3 stringWithFormat:@"Download failed due to Error %lld (%@).", a1, v4];
  }

  else
  {
    v2 = off_29EE8C050[a1];
  }

  return v2;
}

__CFString *stringForSecureOperation(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"<operation>";
  }

  else
  {
    return off_29EE8C308[a1];
  }
}

uint64_t mapV2ErrorIndications()
{
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:0 codeName:@"MAXpcErrorNone"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:1 codeName:@"MAXpcErrorParamMissing"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:2 codeName:@"MAXpcErrorLengthZero"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:3 codeName:@"MAXpcErrorLengthMissing"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:4 codeName:@"MAXpcErrorLengthMismatch"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:5 codeName:@"MAXpcErrorDataMismatch"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:6 codeName:@"MAXpcErrorEmptyData"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:7 codeName:@"MAXpcErrorConnectionTerminated"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:8 codeName:@"MAXpcErrorUnableToReply"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:0 codeName:@"MAQuerySuccessful"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:0 codeName:@"MAQuerySuccessful"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:1 codeName:@"MAQueryXpcError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:2 codeName:@"MAQueryCatalogNotDownloaded"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:2 codeName:@"MAQueryCatalogNotDownloaded"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:3 codeName:@"MAQueryFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:4 codeName:@"MAQueryDaemonExit"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:5 codeName:@"MAQueryNotEntitled"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:6 codeName:@"MAQueryCannotCreateMessage"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:7 codeName:@"MAQueryNilAssetType"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:8 codeName:@"MAQueryParamsEncodeFailure"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:9 codeName:@"MAQueryBeforeFirstUnlock"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:9 codeName:@"MAQueryBeforeFirstUnlock"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:10 codeName:@"MAQueryCouldNotEncodeResults"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:10 codeName:@"MAQueryCouldNotEncodeResults"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:11 codeName:@"MAQueryXpcLengthError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:12 codeName:@"MAQueryUnknownResult"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:13 codeName:@"MAQueryTooManyResults"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:14 codeName:@"MAQueryHasAllowedDifferences"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:0 codeName:@"MAPurgeSucceeded"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:1 codeName:@"MAPurgeXpcError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:1 codeName:@"MAPurgeXpcError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:2 codeName:@"MAPurgeConnectionInterrupted"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:2 codeName:@"MAPurgeConnectionInterrupted"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:3 codeName:@"MAPurgeAssetDidntExist"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:4 codeName:@"MAPurgeAssetCouldntPurge"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:5 codeName:@"MAPurgeFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:6 codeName:@"MAPurgeNotEntitled"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:7 codeName:@"MAPurgeNotApplicableForRequireByOs"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:8 codeName:@"MAPurgeCouldNotCancelAllDownloads"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:9 codeName:@"MAPurgeCannotCreateMessage"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:10 codeName:@"MAPurgeEncodingFailure"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:11 codeName:@"MAPurgeFailedBeforeFirstUnlock"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:12 codeName:@"MAPurgePartiallyComplete"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:0 codeName:@"MADownloadSuccessful"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:1 codeName:@"MADownloadXpcError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:2 codeName:@"MADownloadConnectionInterrupted"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:2 codeName:@"MADownloadConnectionInterrupted"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:3 codeName:@"MADownloadFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:4 codeName:@"MADownloadStagingFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:5 codeName:@"MADownloadMetaDataProcessFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:6 codeName:@"MADownloadUnzipFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:7 codeName:@"MADownloadMoveFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:8 codeName:@"MADownloadInstallFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:9 codeName:@"MADownloadDaemonExit"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:10 codeName:@"MADownloadAssetAlreadyInstalled"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:11 codeName:@"MADownloadInvalidSZExtractor"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:11 codeName:@"MADownloadInvalidSZExtractor"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:12 codeName:@"MADownloadNotEntitled"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:13 codeName:@"MADownloadDaemonNotReady"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:14 codeName:@"MADownloadNoChange"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:15 codeName:@"MADownloadNotApplicableForRequireByOs"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:16 codeName:@"MADownloadNoExtractorFailure"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:17 codeName:@"MADownloadTransformFailure"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:18 codeName:@"MADownloadNoMatchFound"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:19 codeName:@"MADownloadNilAssetType"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:20 codeName:@"MADownloadNilAssetId"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:21 codeName:@"MADownloadStreamingZipNotSupported"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:22 codeName:@"MADownloadBadOptions"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:23 codeName:@"MADownloadAssetBadMetaData"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:24 codeName:@"MADownloadUnableToCreateMessage"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:25 codeName:@"MADownloadFailedNoStandardUrl"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:26 codeName:@"MADownloadFailedNoFallBackUrl"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:27 codeName:@"MADownloadFailedNoPallasUrl"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:28 codeName:@"MADownloadLostTask"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:29 codeName:@"MADownloadNotApplicableForInstalledWithOs"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:30 codeName:@"MADownloadNoValidSession"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:31 codeName:@"MADownloadResponseDeferred"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:32 codeName:@"MADownloadIncomplete"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:33 codeName:@"MADownloadNoStagingDir"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:33 codeName:@"MADownloadNoStagingDir"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:34 codeName:@"MADownloadNotAllowed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:34 codeName:@"MADownloadNotAllowed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:35 codeName:@"MADownloadUnknownResult"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:36 codeName:@"MADownloadAssetNoLongerInCatalog"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:37 codeName:@"MADownloadNoSpaceLeft"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:38 codeName:@"MADownloadCouldNotReplace"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:39 codeName:@"MADownloadMalformedAssetType"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:40 codeName:@"MADownloadServerBadRequest"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:41 codeName:@"MADownloadServerAuthFailure"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:42 codeName:@"MADownloadServerError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:43 codeName:@"MADownloadNotFoundOrDenied"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:44 codeName:@"MADownloadNotFound"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:45 codeName:@"MADownloadServerInternalError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:46 codeName:@"MADownloadMalformedAssetData"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:47 codeName:@"MADownloadNetworkingError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:48 codeName:@"MADownloadCancelled"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:49 codeName:@"MADownloadBadUrl"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:50 codeName:@"MADownloadBadServerResponse"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:51 codeName:@"MADownloadTimedOut"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:52 codeName:@"MADownloadTimedOutRequest"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:53 codeName:@"MADownloadTimedOutResource"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:54 codeName:@"MADownloadTimedOutWatchdog"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:55 codeName:@"MADownloadTimedOutStart"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:56 codeName:@"MADownloadTimedOutConnection"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:57 codeName:@"MADownloadCannotLoadFromNetwork"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:58 codeName:@"MADownloadUnsupportedURL"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:59 codeName:@"MADownloadCannotFindHost"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:60 codeName:@"MADownloadCannotConnectToHost"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:61 codeName:@"MADownloadNetworkConnectionLost"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:62 codeName:@"MADownloadDNSLookupFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:63 codeName:@"MADownloadHTTPTooManyRedirects"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:64 codeName:@"MADownloadResourceUnavailable"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:65 codeName:@"MADownloadNotConnectedToInternet"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:66 codeName:@"MADownloadRedirectToNonExistentLocation"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:67 codeName:@"MADownloadInternationalRoamingOff"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:68 codeName:@"MADownloadCallIsActive"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:69 codeName:@"MADownloadDataNotAllowed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:70 codeName:@"MADownloadSecureConnectionFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:71 codeName:@"MADownloadInvalidReceipts"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:72 codeName:@"MADownloadFailedNoFallbackAllowed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:73 codeName:@"MADownloadLiveServerDisabledNoFallback"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:74 codeName:@"MADownloadMalformedPurpose"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:75 codeName:@"MADownloadSSOFailure"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:76 codeName:@"MADownloadCopyFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:77 codeName:@"MADownloadInvalidPaths"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:78 codeName:@"MADownloadIncompatibleBrain"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:79 codeName:@"MADownloadNewBrainRequired"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:80 codeName:@"MADownloadTimeoutNoContent"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:81 codeName:@"MADownloadTimedOutBecameStalled"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:82 codeName:@"MADownloadTimedOutSlowDownload"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:83 codeName:@"MADownloadTimedOutFrequentStalls"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:84 codeName:@"MADownloadAssetMissingDecryptionKey"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:85 codeName:@"MADownloadContentDecryptionFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:86 codeName:@"MADownloadConflict"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:0 codeName:@"MACancelSucceeded"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:1 codeName:@"MSCancelXpcError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:1 codeName:@"MSCancelXpcError"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:2 codeName:@"MACancelConnectionInterupted"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:2 codeName:@"MACancelConnectionInterupted"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:3 codeName:@"MACancelWasNotDownloading"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:4 codeName:@"MACancelFailed"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:5 codeName:@"MACancelNotEntitled"];
  [MEMORY[0x29EDC6C88] attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:6 codeName:@"MACancelNotApplicableForRequireByOs"];
  v0 = MEMORY[0x29EDC6C88];

  return [v0 attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:7 codeName:@"MACancelNotApplicableForInstalledWithOs"];
}

void mapMABrainErrorIndications()
{
  v15 = *MEMORY[0x29EDCA608];
  v0 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  [v0 setObject:@"Unimplemented" forKey:&unk_2A1EAC8C0];
  [v0 setObject:@"None" forKey:&unk_2A1EAC8D8];
  [v0 setObject:@"Alloc" forKey:&unk_2A1EAC8F0];
  [v0 setObject:@"AssetNotInstalled" forKey:&unk_2A1EAC908];
  [v0 setObject:@"AuthInstall" forKey:&unk_2A1EAC920];
  [v0 setObject:@"GraftInfo" forKey:&unk_2A1EAC938];
  [v0 setObject:@"Graft" forKey:&unk_2A1EAC950];
  [v0 setObject:@"Ungraft" forKey:&unk_2A1EAC968];
  [v0 setObject:@"AppleConnect" forKey:&unk_2A1EAC980];
  [v0 setObject:@"Canceled" forKey:&unk_2A1EAC998];
  [v0 setObject:@"PrerollNonce" forKey:&unk_2A1EAC9B0];
  [v0 setObject:@"RollNonce" forKey:&unk_2A1EAC9C8];
  [v0 setObject:@"ScanFailed" forKey:&unk_2A1EAC9E0];
  [v0 setObject:@"ScanCatalogDownloadFailed" forKey:&unk_2A1EAC9F8];
  [v0 setObject:@"ScanNoUpdateFound" forKey:&unk_2A1EACA10];
  [v0 setObject:@"DownloadAssetFailed" forKey:&unk_2A1EACA28];
  [v0 setObject:@"InstallFailed" forKey:&unk_2A1EACA40];
  [v0 setObject:@"InstallCreateBrainDirFailed" forKey:&unk_2A1EACA58];
  [v0 setObject:@"InstallWriteBrainPlistFailed" forKey:&unk_2A1EACA70];
  [v0 setObject:@"InstallWriteStageFileFailed" forKey:&unk_2A1EACA88];
  [v0 setObject:@"ClientCommunication" forKey:&unk_2A1EACAA0];
  [v0 setObject:@"GetBrainInfo" forKey:&unk_2A1EACAB8];
  [v0 setObject:@"DictionaryEnumerationFailure" forKey:&unk_2A1EACAD0];
  [v0 setObject:@"InvalidDictionaryType" forKey:&unk_2A1EACAE8];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = v0;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = MEMORY[0x29EDC6C88];
        v8 = [v6 integerValue];
        v9 = [v1 objectForKeyedSubscript:v6];
        [v7 attributesOfErrorForDomain:@"MobileAssetBrainErrorDomain" withCode:v8 codeName:v9];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

__CFString *stringForSecureMABundleCommand(int a1)
{
  if ((a1 - 2) > 6)
  {
    return @"SECUREMABUNDLE_COMMAND_PERSONALIZE";
  }

  else
  {
    return off_29EE8C358[a1 - 2];
  }
}

id MAErrorWithUnderlyingUserInfoAndString(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x29EDCA608];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  v14 = v13;
  if (v12)
  {
    [v13 setObject:v12 forKey:*MEMORY[0x29EDB9ED8]];
  }

  if (v10)
  {
    [v14 setObject:v10 forKey:*MEMORY[0x29EDB9F18]];
  }

  if (v11)
  {
    v25 = a2;
    v26 = v10;
    v27 = v9;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          v22 = [v15 objectForKey:v20];
          [v14 setObject:v22 forKey:v20];

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
    }

    v10 = v26;
    v9 = v27;
    a2 = v25;
  }

  v23 = [MEMORY[0x29EDB9FA0] errorWithDomain:v9 code:a2 userInfo:v14];

  return v23;
}

id MAError(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x29EDBA0F8];
  v12 = a3;
  v13 = a1;
  v14 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v15 = MAErrorWithUnderlyingUserInfoAndString(v13, a2, 0, 0, v14);

  return v15;
}

id MAErrorWithUnderlying(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = MEMORY[0x29EDBA0F8];
  v13 = a4;
  v14 = a3;
  v15 = a1;
  v16 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v17 = MAErrorWithUnderlyingUserInfoAndString(v15, a2, v14, 0, v16);

  return v17;
}

id stringWithoutNewlines(uint64_t a1)
{
  v1 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@", a1];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  return v2;
}

uint64_t isCancelDownloadResultFailure(unint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1 >= 8)
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = stringForMACancelDownloadResult(a1);
      v6 = 134218242;
      v7 = a1;
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_2981ED000, v3, OS_LOG_TYPE_ERROR, "Unknown MACancelDownloadResult: %ld (%{public}@)", &v6, 0x16u);
    }

    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = 0x36u >> a1;
  }

  return v2 & 1;
}

BOOL isDownloadResultFailure(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 == 14;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t downloadResultForNetworkFailure(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 <= 399)
  {
    v8 = 3;
    v7 = 47;
    if (a1 != 200 && a1 != 206 && a1 != 304)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  if (a1 <= 402)
  {
    if (a1 != 400)
    {
      if (a1 == 401)
      {
        v7 = 41;
        v8 = 41;
        if (!v5)
        {
          goto LABEL_78;
        }

        goto LABEL_28;
      }

LABEL_15:
      v9 = 47;
      v10 = 42;
      if (a1 < 0)
      {
        v10 = 3;
      }

      else
      {
        v9 = 42;
      }

      if (a1 <= 499)
      {
        v7 = v9;
      }

      else
      {
        v7 = 45;
      }

      if (a1 <= 499)
      {
        v8 = v10;
      }

      else
      {
        v8 = 45;
      }

      if (!v5)
      {
        goto LABEL_78;
      }

      goto LABEL_28;
    }

    v7 = 40;
    v8 = 40;
LABEL_27:
    if (!v5)
    {
      goto LABEL_78;
    }

    goto LABEL_28;
  }

  if (a1 == 403)
  {
    v7 = 43;
    v8 = 43;
    if (!v5)
    {
      goto LABEL_78;
    }
  }

  else
  {
    if (a1 != 404)
    {
      goto LABEL_15;
    }

    v7 = 44;
    v8 = 44;
    if (!v5)
    {
      goto LABEL_78;
    }
  }

LABEL_28:
  v11 = [v5 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x29EDB9F08]];

  if (v12)
  {
    v13 = [v5 code];
    v14 = 0;
    v15 = 0;
    switch(v13)
    {
      case -1020:
        v14 = 0;
        v15 = 0;
        v7 = 69;
        goto LABEL_76;
      case -1019:
        v14 = 0;
        v15 = 0;
        v7 = 68;
        goto LABEL_76;
      case -1018:
        v14 = 0;
        v15 = 0;
        v7 = 67;
        goto LABEL_76;
      case -1017:
      case -1016:
      case -1015:
      case -1014:
      case -1013:
      case -1012:
        goto LABEL_76;
      case -1011:
        v14 = 0;
        v15 = 0;
        v7 = 50;
        goto LABEL_76;
      case -1010:
        v14 = 0;
        v15 = 0;
        v7 = 66;
        goto LABEL_76;
      case -1009:
        v14 = 0;
        v15 = 0;
        v7 = 65;
        goto LABEL_76;
      case -1008:
        v14 = 0;
        v15 = 0;
        v7 = 64;
        goto LABEL_76;
      case -1007:
        v14 = 0;
        v15 = 0;
        v7 = 63;
        goto LABEL_76;
      case -1006:
        v14 = 0;
        v15 = 0;
        v7 = 62;
        goto LABEL_76;
      case -1005:
        v14 = 0;
        v15 = 0;
        v7 = 61;
        goto LABEL_76;
      case -1004:
        v14 = 0;
        v15 = 0;
        v7 = 60;
        goto LABEL_76;
      case -1003:
        v14 = 0;
        v15 = 0;
        v7 = 59;
        goto LABEL_76;
      case -1002:
        v14 = 0;
        v15 = 0;
        v7 = 58;
        goto LABEL_76;
      case -1001:
        v21 = [v5 userInfo];
        v14 = [v21 objectForKey:@"_kCFStreamErrorCodeKey"];

        v22 = [v5 userInfo];
        v15 = [v22 objectForKey:@"_kCFStreamErrorDomainKey"];

        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v23 = [v14 integerValue];
          if ([v15 integerValue] == 4)
          {
            v7 = 51;
            if (v23 <= -2105)
            {
              if (v23 == -2106)
              {
                v7 = 56;
              }

              else if (v23 == -2105)
              {
                v7 = 55;
              }
            }

            else
            {
              switch(v23)
              {
                case -2104:
                  v7 = 54;
                  break;
                case -2103:
                  v7 = 53;
                  break;
                case -2102:
                  v7 = 52;
                  break;
              }
            }

            goto LABEL_76;
          }
        }

        else if (v6)
        {
          if ([v6 currentTotalWritten])
          {
            if ([v6 numStalled])
            {
              v24 = [v6 numStalled];
              if (v24 == [v6 numNoLongerStalled])
              {
                v7 = 83;
              }

              else
              {
                v7 = 81;
              }
            }

            else
            {
              v7 = 82;
            }
          }

          else
          {
            v7 = 80;
          }

          goto LABEL_76;
        }

        v7 = 51;
LABEL_76:

        goto LABEL_77;
      case -1000:
        v14 = 0;
        v15 = 0;
        v7 = 49;
        goto LABEL_76;
      case -999:
        v14 = 0;
        v15 = 0;
        v7 = 48;
        goto LABEL_76;
      default:
        if (v13 == -2000)
        {
          v7 = 57;
        }

        v14 = 0;
        v15 = 0;
        goto LABEL_76;
    }
  }

  v16 = [v5 domain];
  v17 = [v16 isEqualToString:*MEMORY[0x29EDB9EF8]];

  if (v17)
  {
    v18 = [v5 code] == 28;
  }

  else
  {
    v19 = [v5 domain];
    v20 = [v19 isEqualToString:@"AAError"];

    if (!v20)
    {
LABEL_77:
      v8 = v7;
      goto LABEL_78;
    }

    v18 = [v5 code] == -1023236068;
  }

  if (v18)
  {
    v8 = 37;
  }

  else
  {
    v8 = v7;
  }

LABEL_78:

  return v8;
}

BOOL isDownloadResultSuggestingCheckFilesystemState(unint64_t a1)
{
  result = 1;
  if (a1 > 0x26 || ((1 << a1) & 0x4200000090) == 0)
  {
    return a1 == 76;
  }

  return result;
}

BOOL isDownloadResultSuggestingTryAgainLater(uint64_t a1)
{
  result = 1;
  if ((a1 - 16) > 0x37 || ((1 << (a1 - 16)) & 0x800000800C4007) == 0)
  {
    return a1 == 3;
  }

  return result;
}

BOOL isDownloadResultSuggestingCheckConfiguration(uint64_t a1)
{
  result = 1;
  if ((a1 - 25) > 0x34 || ((1 << (a1 - 25)) & 0x158246032C8007) == 0)
  {
    return (a1 - 5) < 2;
  }

  return result;
}

id MAErrorForCancelDownloadResultWithUnderlying(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  if (v11)
  {
    v12 = MEMORY[0x29EDBA0F8];
    v13 = a2;
    v14 = [[v12 alloc] initWithFormat:v11 arguments:&a9];
  }

  else
  {
    v15 = a2;
    v14 = errorStringForMACancelDownloadResult(a1);
  }

  v16 = v14;
  v17 = MAErrorWithUnderlyingUserInfoAndString(@"com.apple.MobileAssetError.CancelDownload", a1, a2, 0, v14);

  return v17;
}

id MAErrorForDownloadResultWithUnderlying(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2;
  v12 = a3;
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:v12 arguments:&a9];
  }

  else
  {
    v13 = errorStringForMADownloadResult(a1);
  }

  v14 = v13;
  v15 = objc_opt_new();
  v16 = v15;
  if (a1 > 35)
  {
    if (a1 > 44)
    {
      if (a1 != 45)
      {
        if (a1 == 48)
        {
          goto LABEL_24;
        }

        if (a1 != 70)
        {
          goto LABEL_27;
        }

        v17 = @"checkClockAndCerts";
        goto LABEL_37;
      }
    }

    else if (a1 - 41 >= 2)
    {
      if (a1 == 36)
      {
        goto LABEL_24;
      }

      if (a1 != 37)
      {
        goto LABEL_27;
      }

      v17 = @"checkSpaceNeeded";
LABEL_37:
      [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:v17];
      goto LABEL_38;
    }

LABEL_26:
    [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"checkServer"];
    goto LABEL_27;
  }

  if (a1 <= 27)
  {
    if (a1 - 14 >= 2 && a1 && a1 != 10)
    {
      goto LABEL_27;
    }

LABEL_18:
    [v15 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"usableDownload"];
    if (a1 != 10)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (a1 - 31 < 2 || a1 == 28)
  {
LABEL_24:
    [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"requeryIsHelpful"];
    if (a1 > 0x2D || ((1 << a1) & 0x260000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a1 == 29)
  {
    goto LABEL_18;
  }

LABEL_27:
  if ((a1 & 0xFFFFFFFFFFFFFFFCLL) == 0x50)
  {
    [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"timeoutWithDetail"];
  }

  v17 = @"checkFilesystemState";
  v18 = @"checkNetwork";
  switch(a1)
  {
    case 4uLL:
    case 7uLL:
    case 0x21uLL:
    case 0x26uLL:
    case 0x4CuLL:
      goto LABEL_37;
    case 0xBuLL:
    case 0xCuLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x27uLL:
    case 0x4AuLL:
      goto LABEL_30;
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x52uLL:
    case 0x53uLL:
      [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"checkTimeoutConditions"];
      v19 = a1 - 33;
      if (a1 - 33 > 0x2B)
      {
        break;
      }

      if (((1 << v19) & 0xDB9200000) != 0)
      {
        v18 = @"checkNetwork";
        goto LABEL_34;
      }

      if (((1 << v19) & 0x80000000021) != 0)
      {
LABEL_36:
        v17 = @"checkFilesystemState";
        goto LABEL_37;
      }

      if (a1 == 74)
      {
LABEL_30:
        v18 = @"checkClient";
LABEL_34:
        [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:v18];
        if (a1 - 33 <= 0x2B && ((1 << (a1 - 33)) & 0x80000000021) != 0)
        {
          goto LABEL_36;
        }

        break;
      }

      break;
    case 0x36uLL:
    case 0x39uLL:
    case 0x3CuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x40uLL:
    case 0x41uLL:
    case 0x43uLL:
    case 0x44uLL:
      goto LABEL_34;
    default:
      break;
  }

LABEL_38:
  if (isDownloadResultSuggestingTryAgainLater(a1))
  {
    [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"tryAgainLater"];
  }

  if (a1 <= 0x18 && ((1 << a1) & 0x1002306) != 0)
  {
    [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"retryWithBackoff"];
  }

  if (isDownloadResultSuggestingCheckConfiguration(a1))
  {
    [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"checkConfiguration"];
  }

  if (a1 <= 0x23)
  {
    if (((1 << a1) & 0x900000108) != 0)
    {
      v20 = @"generic";
LABEL_48:
      [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:v20];
      goto LABEL_49;
    }

    if (a1 == 18)
    {
      [v16 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"pallasNoPMVMatchFound"];
      v20 = @"pallasNoBuildVersionMatchFound";
      goto LABEL_48;
    }
  }

  if (a1 == 75)
  {
    v20 = @"checkSSO";
    goto LABEL_48;
  }

LABEL_49:
  v21 = MAErrorWithUnderlyingUserInfoAndString(@"com.apple.MobileAssetError.Download", a1, v11, v16, v14);

  return v21;
}

unint64_t downloadResultForFailureGivenPreliminaryAndFurtherInformation(unint64_t a1, unint64_t a2)
{
  if (a1 && a1 != 14)
  {
    if (!a2 || a2 == 14)
    {
      return a1;
    }
  }

  else if (a2 != 14 && a2)
  {
    return a2;
  }

  if (a1 <= 0x1D && ((1 << a1) & 0x2000C401) != 0)
  {
    if (a2 > 0x1D || ((1 << a2) & 0x2000C401) == 0)
    {
      return a2;
    }

    if (((1 << a1) & 0x2000C401) != 0)
    {
      goto LABEL_14;
    }
  }

  if (a2 <= 0x1D && ((1 << a2) & 0x2000C401) != 0)
  {
    return a1;
  }

  if (a1 > 0x23 || ((1 << a1) & 0x900000108) == 0)
  {
    goto LABEL_14;
  }

  if (a2 > 0x23 || ((1 << a2) & 0x900000108) == 0)
  {
    return a2;
  }

  if (((1 << a1) & 0x900000108) == 0)
  {
LABEL_14:
    if (a2 <= 0x23 && ((1 << a2) & 0x900000108) != 0)
    {
      return a1;
    }
  }

  if ((a1 & 0xFFFFFFFFFFFFFFFCLL) == 0x50)
  {
    return a1;
  }

  v3 = a1 - 41;
  if (a1 - 41 <= 0x1B && ((0xDB9FC13u >> v3) & 1) != 0)
  {
    return qword_298210FD0[v3];
  }

  return a2;
}

uint64_t isAttributePartOfAssetIdHash(void *a1)
{
  v1 = a1;
  if (![v1 hasPrefix:@"_"] || (objc_msgSend(v1, "isEqualToString:", @"_ContentVersion") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"_CompatibilityVersion") & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"_MasteredVersion"];
  }

  return v2;
}

id getAssetIdFromDict(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:0];
  v6 = [v4 keyEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      if (isAttributePartOfAssetIdHash(v8))
      {
        v9 = [v4 objectForKey:v8];
        [v5 setObject:v9 forKey:v8];
      }

      v10 = [v6 nextObject];

      v8 = v10;
    }

    while (v10);
  }

  v11 = _MobileAssetHashAssetData(v3, v5, @"SHA-1");

  return v11;
}

id getHashFromAttributesInSet(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:0];
    v9 = [v6 keyEnumerator];
    v10 = [v9 nextObject];
    if (v10)
    {
      v11 = v10;
      do
      {
        if ([v7 containsObject:v11])
        {
          v12 = [v6 objectForKey:v11];
          [v8 setObject:v12 forKey:v11];
        }

        v13 = [v9 nextObject];

        v11 = v13;
      }

      while (v13);
    }

    v14 = _MobileAssetHashAssetDataNoLegacy(v5, v8, @"SHA-1");
  }

  else
  {
    v14 = _MobileAssetHashAssetDataNoLegacy(v5, v6, @"SHA-1");
  }

  return v14;
}

id getHashFromAssetIdAttributes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  v6 = [v4 keyEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      if (isAttributePartOfAssetIdHash(v8))
      {
        [v5 addObject:v8];
      }

      v9 = [v6 nextObject];

      v8 = v9;
    }

    while (v9);
  }

  v10 = getHashFromAttributesInSet(v3, v4, v5);

  return v10;
}

id getHashFromNonAssetIdAttributes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  v6 = [v4 keyEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      if ((isAttributePartOfAssetIdHash(v8) & 1) == 0)
      {
        [v5 addObject:v8];
      }

      v9 = [v6 nextObject];

      v8 = v9;
    }

    while (v9);
  }

  v10 = getHashFromAttributesInSet(v3, v4, v5);

  return v10;
}

id attributesInAssetIdWithUnderscore(uint64_t a1)
{
  if (attributesInAssetIdWithUnderscore_once != -1)
  {
    attributesInAssetIdWithUnderscore_cold_1();
  }

  v2 = attributesInAssetIdWithUnderscore__underscoreAssetIdAttributes;

  return v2;
}

void __attributesInAssetIdWithUnderscore_block_invoke()
{
  v4[3] = *MEMORY[0x29EDCA608];
  v0 = objc_alloc(MEMORY[0x29EDB8E50]);
  v4[0] = @"_ContentVersion";
  v4[1] = @"_MasteredVersion";
  v4[2] = @"_CompatibilityVersion";
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:3];
  v2 = [v0 initWithArray:v1];
  v3 = attributesInAssetIdWithUnderscore__underscoreAssetIdAttributes;
  attributesInAssetIdWithUnderscore__underscoreAssetIdAttributes = v2;
}

id attributesInPallasDynamicAssetId(uint64_t a1)
{
  if (attributesInPallasDynamicAssetId_once != -1)
  {
    attributesInPallasDynamicAssetId_cold_1();
  }

  v2 = attributesInPallasDynamicAssetId__pallasDynamicAssetIdAttributes;

  return v2;
}

void __attributesInPallasDynamicAssetId_block_invoke()
{
  v4[2] = *MEMORY[0x29EDCA608];
  v0 = objc_alloc(MEMORY[0x29EDB8E50]);
  v4[0] = @"AssetType";
  v4[1] = @"Ramp";
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:2];
  v2 = [v0 initWithArray:v1];
  v3 = attributesInPallasDynamicAssetId__pallasDynamicAssetIdAttributes;
  attributesInPallasDynamicAssetId__pallasDynamicAssetIdAttributes = v2;
}

id attributesInDownloadContent(uint64_t a1)
{
  if (attributesInDownloadContent_once != -1)
  {
    attributesInDownloadContent_cold_1();
  }

  v2 = attributesInDownloadContent__downloadContentAttributes;

  return v2;
}

void __attributesInDownloadContent_block_invoke()
{
  v4[4] = *MEMORY[0x29EDCA608];
  v0 = objc_alloc(MEMORY[0x29EDB8E50]);
  v4[0] = @"_DownloadSize";
  v4[1] = @"_Measurement";
  v4[2] = @"_Measurement-SHA256";
  v4[3] = @"_MeasurementAlgorithm";
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:4];
  v2 = [v0 initWithArray:v1];
  v3 = attributesInDownloadContent__downloadContentAttributes;
  attributesInDownloadContent__downloadContentAttributes = v2;
}

id attributesInDownloadUrl(uint64_t a1)
{
  if (attributesInDownloadUrl_once != -1)
  {
    attributesInDownloadUrl_cold_1();
  }

  v2 = attributesInDownloadUrl__downloadUrlAttributes;

  return v2;
}

void __attributesInDownloadUrl_block_invoke()
{
  v4[2] = *MEMORY[0x29EDCA608];
  v0 = objc_alloc(MEMORY[0x29EDB8E50]);
  v4[0] = @"__BaseURL";
  v4[1] = @"__RelativePath";
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:2];
  v2 = [v0 initWithArray:v1];
  v3 = attributesInDownloadUrl__downloadUrlAttributes;
  attributesInDownloadUrl__downloadUrlAttributes = v2;
}

id attributesInDownloadPolicy(uint64_t a1)
{
  if (attributesInDownloadPolicy_once != -1)
  {
    attributesInDownloadPolicy_cold_1();
  }

  v2 = attributesInDownloadPolicy__downloadPolicyAttributes;

  return v2;
}

void __attributesInDownloadPolicy_block_invoke()
{
  v4[5] = *MEMORY[0x29EDCA608];
  v0 = objc_alloc(MEMORY[0x29EDB8E50]);
  v4[0] = @"__CanUseLocalCacheServer";
  v4[1] = @"_CompressionAlgorithm";
  v4[2] = @"_IsZipStreamable";
  v4[3] = @"_UnarchivedSize";
  v4[4] = @"__AssetDefaultGarbageCollectionBehavior";
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:5];
  v2 = [v0 initWithArray:v1];
  v3 = attributesInDownloadPolicy__downloadPolicyAttributes;
  attributesInDownloadPolicy__downloadPolicyAttributes = v2;
}

void applyCatalogTransforms(void *a1, void *a2)
{
  v51 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v31 = a2;
  if (!v3)
  {
    v3 = [MEMORY[0x29EDB8E00] dictionary];
  }

  [v3 setObject:@"data" forKey:@"_Measurement-SHA256"];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [v3 allKeys];
  v4 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    v7 = 0x29EDBA000uLL;
    v8 = 0x29EDB8000uLL;
    v27 = *v42;
    v28 = v3;
    do
    {
      v9 = 0;
      v29 = v5;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v35 = v10;
        v12 = [v3 objectForKey:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([@"data" isEqualToString:v12] & 1) == 0)
        {
          v25 = _MAClientLog(@"Download");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v46 = v12;
            _os_log_impl(&dword_2981ED000, v25, OS_LOG_TYPE_DEFAULT, "Invalid transform, skipping: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = v31;
          v13 = [v36 countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v13)
          {
            v14 = v13;
            v32 = v12;
            v33 = v11;
            v34 = v9;
            v15 = *v38;
            v16 = v35;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(v36);
                }

                v18 = *(*(&v37 + 1) + 8 * i);
                v19 = objc_autoreleasePoolPush();
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = [v18 objectForKey:v16];
                  if (v20)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v21 = v8;
                      v22 = v7;
                      v23 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBase64EncodedString:v20 options:0];
                      if (v23)
                      {
                        [v18 setObject:v23 forKey:v35];
                      }

                      else
                      {
                        v24 = _MAClientLog(@"Download");
                        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v46 = v35;
                          v47 = 2112;
                          v48 = v20;
                          _os_log_impl(&dword_2981ED000, v24, OS_LOG_TYPE_ERROR, "Skipping transformation (key: %@ value: %@): Value cannot be base64 decoded.", buf, 0x16u);
                        }
                      }

                      v7 = v22;
                      v8 = v21;
                      v16 = v35;
                    }
                  }
                }

                else
                {
                  v20 = _MAClientLog(@"Download");
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2981ED000, v20, OS_LOG_TYPE_DEFAULT, "Skipping transformation, as asset isn't a dict", buf, 2u);
                  }
                }

                objc_autoreleasePoolPop(v19);
              }

              v14 = [v36 countByEnumeratingWithState:&v37 objects:v49 count:16];
            }

            while (v14);
            v6 = v27;
            v3 = v28;
            v5 = v29;
            v11 = v33;
            v9 = v34;
            v12 = v32;
          }

          v25 = v36;
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v9 != v5);
      v26 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      v5 = v26;
    }

    while (v26);
  }
}

id categorySimpleName(unint64_t a1)
{
  if ((a1 & 0x1FF) == 0x1FF)
  {
    v1 = kMADiffCategoryName_All;
LABEL_25:
    v2 = v1;
    goto LABEL_26;
  }

  if ((a1 & 0x1FE) == 0)
  {
    v1 = kMADiffCategoryName_AssetType;
    goto LABEL_25;
  }

  if ((a1 & 0x1FD) == 0)
  {
    v1 = kMADiffCategoryName_AssetId;
    goto LABEL_25;
  }

  if ((a1 & 0x1DF) == 0)
  {
    v1 = kMADiffCategoryName_DownloadContent;
    goto LABEL_25;
  }

  if ((a1 & 0x1BF) == 0)
  {
    v1 = kMADiffCategoryName_DownloadUrl;
    goto LABEL_25;
  }

  if ((a1 & 0x17F) == 0)
  {
    v1 = kMADiffCategoryName_DownloadPolicy;
    goto LABEL_25;
  }

  if (!a1)
  {
    v1 = kMADiffCategoryName_PallasDynamicAssetId;
    goto LABEL_25;
  }

  if ((a1 & 0x1EF) == 0)
  {
    v1 = kMADiffCategoryName_NonAssetId;
    goto LABEL_25;
  }

  if ((a1 & 0x1F7) == 0)
  {
    v1 = kMADiffCategoryName_AssetIdAttributes;
    goto LABEL_25;
  }

  if ((a1 & 0x1FB) == 0)
  {
    v1 = kMADiffCategoryName_AnyAttribute;
    goto LABEL_25;
  }

  if ((a1 & 0x1FF) == 0)
  {
    v1 = kMADiffCategoryName_None;
    goto LABEL_25;
  }

  if (a1 <= 0x1FF)
  {
    v1 = kMADiffCategoryName_Some;
    goto LABEL_25;
  }

  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%ld", kMADiffCategoryName_Unknown, a1];
LABEL_26:

  return v2;
}

id categoryCompoundName(unint64_t a1)
{
  v2 = objc_msgSend(objc_alloc(MEMORY[0x29EDBA050]), "initWithString:", @"(");
  if (kMADiffCategory_BaseCount)
  {
    v3 = 0;
    v4 = ~a1;
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = kMADiffCategory_Bases[v3];
      if ((v4 & v6 & 0x1FF) == 0)
      {
        if ([v2 length])
        {
          [v2 appendString:@" "];
        }

        a1 &= v6 & 0x1FF ^ 0x1FF;
        v7 = categorySimpleName(v6);
        [v2 appendString:v7];
      }

      objc_autoreleasePoolPop(v5);
      ++v3;
    }

    while (kMADiffCategory_BaseCount > v3);
  }

  if ((a1 & 0x1FF) != 0)
  {
    if ([v2 length])
    {
      [v2 appendString:@" "];
    }

    a1 &= 0xFFFFFFFFFFFFFE00;
    [v2 appendString:kMADiffCategoryName_Some];
  }

  if (a1 >= 0x200)
  {
    if ([v2 length])
    {
      [v2 appendString:@" "];
    }

    [v2 appendString:kMADiffCategoryName_Unknown];
  }

  [v2 appendString:@""]);

  return v2;
}

id assetPathDirectory(void *a1)
{
  v1 = [a1 pathComponents];
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v3 = [v1 count] - 1;
  do
  {
    if (v3 < 0)
    {
      break;
    }

    v4 = [v1 objectAtIndexedSubscript:v3];
    [v2 insertObject:v4 atIndex:0];
    v5 = [v4 hasPrefix:@"com_apple_MobileAsset"];

    --v3;
  }

  while (!v5);
  if ([v2 count])
  {
    v6 = [MEMORY[0x29EDBA0F8] pathWithComponents:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id categoryAssessDiffAndMask(unint64_t a1, unint64_t a2)
{
  v4 = @"(from newer)";
  v5 = @"(from newer, subset)";
  if (a2 < 0x200)
  {
    v4 = &stru_2A1EA4138;
    v5 = @"(from older)";
  }

  v6 = MEMORY[0x29EDBA0F8];
  if ((~a2 & 0x1FF) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = categoryCompoundName(a1);
  v9 = v8;
  v10 = @"+";
  if (a1 < 0x200)
  {
    v10 = &stru_2A1EA4138;
  }

  v11 = [v6 stringWithFormat:@"%0lx/%0lx %@%@%@", a1, a2, v8, v10, v7];

  return v11;
}

uint64_t xpcRequestFieldsRequired(unsigned int a1)
{
  if (a1 > 0x30)
  {
    return 2049;
  }

  else
  {
    return qword_2982110B0[a1];
  }
}

uint64_t xpcRequestFieldsOptional(unsigned int a1)
{
  if (a1 > 0x30)
  {
    return 0;
  }

  else
  {
    return qword_298211238[a1];
  }
}

uint64_t safeAtomicWriteToPath(void *a1, void *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x29EDB9FB8] defaultManager];
  if (!v4)
  {
    v15 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "safeAtomicWriteToPath";
      v17 = "Invalid path passed to %{public}s";
LABEL_19:
      _os_log_impl(&dword_2981ED000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    }

LABEL_20:
    v18 = 0;
    goto LABEL_24;
  }

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "safeAtomicWriteToPath";
      v17 = "Invalid data passed to %{public}s";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v6 = [v4 stringByDeletingLastPathComponent];
  v7 = [MEMORY[0x29EDBA140] UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 stringByAppendingPathComponent:v8];

  if ([v3 writeToFile:v9 atomically:0] && (v10 = objc_msgSend(v9, "fileSystemRepresentation"), v11 = objc_msgSend(v4, "fileSystemRepresentation"), rename(v10, v11, v12), !v13))
  {
    v15 = 0;
    v18 = 1;
  }

  else
  {
    v14 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "safeAtomicWriteToPath";
      v23 = 2114;
      v24 = v4;
      _os_log_impl(&dword_2981ED000, v14, OS_LOG_TYPE_ERROR, "%{public}s: Failed to write item to path %{public}@", buf, 0x16u);
    }

    if ([v5 fileExistsAtPath:v9 isDirectory:0])
    {
      v20 = 0;
      [v5 removeItemAtPath:v9 error:&v20];
      v15 = v20;
      if (v15)
      {
        v16 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v22 = "safeAtomicWriteToPath";
          v23 = 2114;
          v24 = v9;
          v25 = 2114;
          v26 = v15;
          _os_log_impl(&dword_2981ED000, v16, OS_LOG_TYPE_ERROR, "%{public}s: Atomic write to path failed and failed to remove temp path(%{public}@): %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = 0;
  }

LABEL_24:
  return v18;
}

void __BootSessionUUID_block_invoke()
{
  *&v17[5] = *MEMORY[0x29EDCA608];
  size = 0;
  v0 = BootSessionUUID_stringValue;
  BootSessionUUID_stringValue = 0;

  if (sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    v1 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return;
    }

    v2 = *__error();
    v3 = __error();
    v4 = strerror(*v3);
    *buf = 67109378;
    v17[0] = v2;
    LOWORD(v17[1]) = 2080;
    *(&v17[1] + 2) = v4;
    v5 = "Could not look up boot session UUID: %d (%s)";
    v6 = v1;
    v7 = 18;
LABEL_4:
    _os_log_impl(&dword_2981ED000, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    goto LABEL_5;
  }

  if (!size)
  {
    v1 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 134217984;
    *v17 = size;
    v5 = "Boot session UUID has an invalid length (%zu)";
    v6 = v1;
    v7 = 12;
    goto LABEL_4;
  }

  v8 = malloc_type_malloc(size, 0x5CC07005uLL);
  if (!v8)
  {
    v1 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v5 = "Could not allocate buffer to copy boot session UUID";
    v6 = v1;
    v7 = 2;
    goto LABEL_4;
  }

  v9 = v8;
  if (sysctlbyname("kern.bootsessionuuid", v8, &size, 0, 0))
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 67109378;
      v17[0] = v11;
      LOWORD(v17[1]) = 2080;
      *(&v17[1] + 2) = v13;
      _os_log_impl(&dword_2981ED000, v10, OS_LOG_TYPE_DEFAULT, "Could not copy boot session UUID: %d (%s)", buf, 0x12u);
    }
  }

  else
  {
    v14 = [MEMORY[0x29EDBA0F8] stringWithCString:v9 encoding:4];
    v10 = BootSessionUUID_stringValue;
    BootSessionUUID_stringValue = v14;
  }

  free(v9);
}

id deviceOSBuildVersion()
{
  v0 = [MEMORY[0x29EDC6C80] sharedDevice];
  v1 = [v0 buildVersion];

  if (_MAPreferencesIsInternalAllowed(v2, v3))
  {
    v4 = _MAPreferencesCopyNSStringValue(@"FakeDeviceOSBuildVersion");
    v5 = v4;
    if (v4)
    {
      v6 = v4;

      v1 = v6;
    }
  }

  return v1;
}

uint64_t runningInDeviceRecoveryEnvironment(uint64_t a1, uint64_t a2)
{
  if (runningInDeviceRecoveryEnvironment_onceToken != -1)
  {
    runningInDeviceRecoveryEnvironment_cold_1();
  }

  return runningInDeviceRecoveryEnvironment_isRunningInDeviceRecoveryEnvironment;
}

void __runningInDeviceRecoveryEnvironment_block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!_MAPreferencesIsInternalAllowed(a1, a2) || ((LOBYTE(size) = 0, AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"FakeDeviceRecoveryMode", &size), size) ? (v3 = AppBooleanValue == 0) : (v3 = 1), v3))
  {
    size = 0;
    if (sysctlbyname("hw.osenvironment", 0, &size, 0, 0) == -1)
    {
      v13 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 136315138;
        v25 = v15;
        v16 = "[DetectDeviceRecoveryMode]: Unable to determine size of OS environment variable(%s). Assuming regular OS";
        v17 = v13;
        v18 = 12;
LABEL_20:
        _os_log_impl(&dword_2981ED000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      }
    }

    else
    {
      v4 = malloc_type_malloc(size, 0xC93B5380uLL);
      if (v4)
      {
        v5 = v4;
        bzero(v4, size);
        if (sysctlbyname("hw.osenvironment", v5, &size, 0, 0) == -1)
        {
          v7 = _MAClientLog(@"V2");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v21 = __error();
            v22 = strerror(*v21);
            *buf = 136315138;
            v25 = v22;
            v9 = "[DetectDeviceRecoveryMode]: Unable to determine OS environment(%s). Assuming regular OS";
            v10 = v7;
            v11 = OS_LOG_TYPE_ERROR;
            v12 = 12;
            goto LABEL_24;
          }
        }

        else
        {
          v6 = strncmp(v5, "device-recovery", 0xFuLL);
          v7 = _MAClientLog(@"V2");
          v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
          if (!v6)
          {
            if (v8)
            {
              *buf = 0;
              _os_log_impl(&dword_2981ED000, v7, OS_LOG_TYPE_DEBUG, "[DetectDeviceRecoveryMode]: Running in DeviceRecovery environment", buf, 2u);
            }

            runningInDeviceRecoveryEnvironment_isRunningInDeviceRecoveryEnvironment = 1;
            goto LABEL_29;
          }

          if (v8)
          {
            *buf = 0;
            v9 = "[DetectDeviceRecoveryMode]: Running in regular OS environment";
            v10 = v7;
            v11 = OS_LOG_TYPE_DEBUG;
            v12 = 2;
LABEL_24:
            _os_log_impl(&dword_2981ED000, v10, v11, v9, buf, v12);
          }
        }

LABEL_29:
        free(v5);
        return;
      }

      v13 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v16 = "[DetectDeviceRecoveryMode]: Failed to allocate buffer to read OS environment value. Assuming regular OS";
        v17 = v13;
        v18 = 2;
        goto LABEL_20;
      }
    }

    return;
  }

  v19 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2981ED000, v19, OS_LOG_TYPE_DEBUG, "[DetectDeviceRecoveryMode]: Returning RunningInDeviceRecoveryMode as true due to override", buf, 2u);
  }

  runningInDeviceRecoveryEnvironment_isRunningInDeviceRecoveryEnvironment = 1;
}

void sub_2981FF90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _securemobileassetbundle_log(unsigned int a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1 >= 4)
  {
    if (a1 - 4 >= 3)
    {
      v7 = _MAClientLog(@"SecureMA");
      v3 = v7;
      if (a1 >= 7)
      {
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_9;
        }

        v8 = 136315138;
        v9 = a2;
        v4 = v3;
        v5 = OS_LOG_TYPE_DEBUG;
        goto LABEL_8;
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v8 = 136315138;
      v9 = a2;
    }

    else
    {
      v3 = _MAClientLog(@"SecureMA");
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v8 = 136315138;
      v9 = a2;
    }

    v4 = v3;
    v5 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  v3 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = a2;
    v4 = v3;
    v5 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_2981ED000, v4, v5, "[SMA] %s", &v8, 0xCu);
  }

LABEL_9:
}

void sub_298205628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_29820739C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a18)
{
  __os_cleanup_close(&a14);
  __os_cleanup_ioclose(&a16);
  __os_cleanup_iorelease(&a18);
  if (v17)
  {
    CFRelease(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t __os_cleanup_iorelease(unsigned int *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1(&v2, v3);
    }
  }

  return result;
}

uint64_t __os_cleanup_ioclose(unsigned int *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      __os_cleanup_ioclose_cold_1(&v2, v3);
    }
  }

  return result;
}

uint64_t __os_cleanup_close(unsigned int *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      __os_cleanup_close_cold_1(&v2, v3);
    }
  }

  return result;
}

void sub_298207CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, int a24, unsigned int a25)
{
  __os_cleanup_iorelease(&a25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  __os_cleanup_iorelease(&a23);
  _Unwind_Resume(a1);
}

id NSStringFromCFType(void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = a1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = a1;
        if ([v3 bytes])
        {
          v2 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:objc_msgSend(v3 length:"bytes") encoding:{objc_msgSend(v3, "length"), 4}];
        }

        else
        {
          v2 = 0;
        }
      }

      else
      {
        v2 = 0;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL eject(void *a1, NSObject **a2)
{
  v68[3] = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x29EDBB110];
    v6 = [v3 lastPathComponent];
    v7 = IOBSDNameMatching(v5, 0, [v6 fileSystemRepresentation]);

    MatchingService = IOServiceGetMatchingService(v5, v7);
    if (!MatchingService)
    {
      v25 = MEMORY[0x29EDB9FA0];
      v59[0] = *MEMORY[0x29EDB9E38];
      v59[1] = @"BSD Name";
      v60[0] = @"eject failed: could not find matching IOService for volume";
      v19 = [v4 lastPathComponent];
      v60[1] = v19;
      v26 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
      v23 = [v25 errorWithDomain:@"SecureMobileAssetErrorDomain" code:113 userInfo:v26];

      goto LABEL_30;
    }

    v9 = MatchingService;
    *buf = 0;
    v10 = MEMORY[0x29C282670](MatchingService, "IOService", 3, buf);
    v11 = 0x29EDB9000uLL;
    v12 = 0x29EDB8000uLL;
    if (v10)
    {
      v13 = 0x29EDB9000uLL;
      v14 = MEMORY[0x29EDB9FA0];
      v15 = v10;
      v63 = *MEMORY[0x29EDB9E38];
      v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"IORegistryEntryCreateIterator() failed: 0x%04x", v10 & 0x3FFF];
      v64 = v16;
      v17 = 0x29EDB8000uLL;
      v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v19 = [v14 errorWithDomain:@"IOKitErrorDomain" code:v15 userInfo:v18];

      if (v19)
      {
LABEL_5:
        v20 = *(v13 + 4000);
        v21 = *MEMORY[0x29EDB9F18];
        v61[0] = *MEMORY[0x29EDB9E38];
        v61[1] = v21;
        v62[0] = @"eject failed";
        v62[1] = v19;
        v22 = [*(v17 + 3520) dictionaryWithObjects:v62 forKeys:v61 count:2];
        v23 = [v20 errorWithDomain:@"SecureMobileAssetErrorDomain" code:113 userInfo:v22];

LABEL_29:
        IOObjectRelease(v9);
LABEL_30:

        if (a2 && v23)
        {
          v50 = v23;
          *a2 = v23;
        }

        v24 = v23 == 0;
        goto LABEL_34;
      }

LABEL_28:
      v23 = 0;
      goto LABEL_29;
    }

    v27 = IOIteratorNext(*buf);
    if (!v27)
    {
      v13 = 0x29EDB9000uLL;
      v17 = 0x29EDB8000uLL;
      v19 = 0;
LABEL_27:
      IOObjectRelease(*buf);
      if (v19)
      {
        goto LABEL_5;
      }

      goto LABEL_28;
    }

    v28 = v27;
    v52 = v9;
    v53 = a2;
    v54 = v4;
    v29 = 0;
    v19 = 0;
    v30 = *MEMORY[0x29EDB8ED8];
    v56 = *MEMORY[0x29EDB9EF8];
    v55 = *MEMORY[0x29EDB9E38];
    v57 = *MEMORY[0x29EDB8ED8];
    while (1)
    {
      if (!IOObjectConformsTo(v28, "IOMedia"))
      {
        goto LABEL_17;
      }

      CFProperty = IORegistryEntryCreateCFProperty(v28, @"BSD Name", v30, 0);
      if (!CFProperty)
      {
        goto LABEL_17;
      }

      v32 = CFProperty;
      v33 = [@"/dev/" stringByAppendingPathComponent:CFProperty];

      CFRelease(v32);
      v29 = v33;
      v34 = open([v33 fileSystemRepresentation], 0);
      if ((v34 & 0x80000000) == 0)
      {
        break;
      }

      v38 = *__error();
      v39 = *(v11 + 4000);
      v40 = v38;
      v67[0] = v55;
      v41 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:strerror(v38)];
      v68[0] = v41;
      v68[1] = @"open";
      v67[1] = @"syscall";
      v67[2] = @"devNodePath";
      v68[2] = v29;
      v42 = [*(v12 + 3520) dictionaryWithObjects:v68 forKeys:v67 count:3];
      v43 = [v39 errorWithDomain:v56 code:v40 userInfo:v42];

      v30 = v57;
      v36 = 0;
      v19 = v43;
LABEL_18:
      IOObjectRelease(v28);
      v37 = IOIteratorNext(*buf);
      if (v37)
      {
        v28 = v37;
        if (v36)
        {
          continue;
        }
      }

      v13 = v11;
      v17 = v12;

      a2 = v53;
      v4 = v54;
      v9 = v52;
      goto LABEL_27;
    }

    v35 = v34;
    if (ioctl(v34, 0x20006415uLL, 0) == -1)
    {
      v44 = *__error();
      v36 = v44 == 25;
      if (v44 != 25)
      {
        v45 = *(v11 + 4000);
        v65[0] = v55;
        v46 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:strerror(v44)];
        v66[0] = v46;
        v66[1] = @"ioctl";
        v65[1] = @"syscall";
        v65[2] = @"devNodePath";
        v66[2] = v29;
        [*(v12 + 3520) dictionaryWithObjects:v66 forKeys:v65 count:3];
        v48 = v47 = v12;
        v49 = [v45 errorWithDomain:v56 code:v44 userInfo:v48];

        v12 = v47;
        v11 = 0x29EDB9000;

        v19 = v49;
        v30 = v57;
      }

      close(v35);
      goto LABEL_18;
    }

    close(v35);
LABEL_17:
    v36 = 1;
    goto LABEL_18;
  }

  v23 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2981ED000, v23, OS_LOG_TYPE_DEBUG, "[SMA] Nothing to eject!", buf, 2u);
  }

  v24 = 1;
LABEL_34:

  return v24;
}

void sub_298209B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14)
{
  __os_cleanup_close(&a14);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_29820A774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  __os_cleanup_close(&a18);
  objc_sync_exit(v18);
  _Unwind_Resume(a1);
}

BOOL getMappedExclavePath(int a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x29EDCA608];
  count = 0;
  v35 = 0;
  if (fsctl("/", 0xC010411BuLL, &count, 0))
  {
    v6 = *__error();
    if (v6 != 25)
    {
      v7 = [MEMORY[0x29EDB8E00] dictionary];
      v8 = strerror(v6);
      if (v8)
      {
        v9 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v8];
        [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
      }

      [v7 setObject:@"fsctl()" forKeyedSubscript:@"syscall"];
      [v7 setObject:@"FSIOC_EXCLAVE_FS_GET_BASE_DIRS" forKeyedSubscript:@"request"];
      v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v6 userInfo:v7];

      v11 = 0;
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v12 = count;
  if (!count)
  {
LABEL_12:
    v11 = 0;
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v13 = malloc_type_calloc(count, 0x20uLL, 0x100004017768742uLL);
  v11 = v13;
  if (!v13)
  {
    v19 = 0;
    v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:12 userInfo:0];
    v11 = 0;
    if (a2)
    {
      goto LABEL_22;
    }

LABEL_15:
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v35 = v13;
  if (fsctl("/", 0xC010411BuLL, &count, 0))
  {
    v14 = [MEMORY[0x29EDB8E00] dictionary];
    v15 = *__error();
    v16 = strerror(v15);
    if (v16)
    {
      v17 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v16];
      [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    }

    [v14 setObject:@"fsctl()" forKeyedSubscript:@"syscall"];
    [v14 setObject:@"FSIOC_EXCLAVE_FS_GET_BASE_DIRS" forKeyedSubscript:@"request"];
    v18 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v12];
    [v14 setObject:v18 forKeyedSubscript:@"alloc_count"];

    v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v15 userInfo:v14];
  }

  else
  {
    v20 = count;
    if (count > v12)
    {
      v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
      goto LABEL_21;
    }

    if (!count)
    {
      goto LABEL_13;
    }

    v24 = v11 + 2;
    while (*(v24 - 4) != a1)
    {
      v24 += 4;
      if (!--v20)
      {
        goto LABEL_13;
      }
    }

    v25 = *(v24 - 12);
    if ((fsgetpath(v36, 0x400uLL, (v24 - 12), *v24) & 0x8000000000000000) == 0)
    {
      v26 = realpath_DARWIN_EXTSN(v36, 0);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v36;
      }

      v19 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v27];
      free(v26);
LABEL_14:
      v10 = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v28 = [MEMORY[0x29EDB8E00] dictionary];
    v29 = *__error();
    v30 = strerror(v29);
    if (v30)
    {
      v31 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v30];
      [v28 setObject:v31 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
    }

    [v28 setObject:@"fsgetpath()" forKeyedSubscript:@"syscall"];
    v32 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"0x%llx", v25];
    [v28 setObject:v32 forKeyedSubscript:@"fsid"];

    v33 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%llu", *v24];
    [v28 setObject:v33 forKeyedSubscript:@"inode"];

    v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v29 userInfo:v28];
  }

LABEL_21:
  v19 = 0;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_22:
  v21 = v19;
  *a2 = v19;
  if (a3)
  {
LABEL_23:
    v22 = v10;
    *a3 = v10;
  }

LABEL_24:
  free(v11);

  return v10 == 0;
}

uint64_t unregisterMappedExclavePath(const char *a1, void *a2)
{
  v14 = 0;
  v4 = fsctl(a1, 0x8004411AuLL, &v14, 0);
  if (!v4)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = *__error();
  v6 = v5;
  v7 = strerror(v5);
  v8 = [MEMORY[0x29EDB8E00] dictionary];
  if (v7)
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x29EDB9E38]];
  }

  [v8 setObject:@"fsctl()" forKeyedSubscript:@"syscall"];
  [v8 setObject:@"FSIOC_EXCLAVE_FS_UNREGISTER" forKeyedSubscript:@"request"];
  v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a1];
  [v8 setObject:v10 forKeyedSubscript:@"base_dir"];

  v11 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v6 userInfo:v8];

  if (a2)
  {
LABEL_5:
    v12 = v11;
    *a2 = v11;
  }

LABEL_6:

  return v4;
}

void ___cryptex1_product_class_block_invoke()
{
  if (img4_chip_instantiate())
  {
    _os_assumes_log();
  }

  v0 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"0x%lX", 0];
  v1 = _cryptex1_product_class_productClass;
  _cryptex1_product_class_productClass = v0;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

double OUTLINED_FUNCTION_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void sub_29820E8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

void _hashCFType_cold_1()
{
  v1 = _MAClientLog(@"V2");
  if (OUTLINED_FUNCTION_1(v1))
  {
    v8 = 0;
    OUTLINED_FUNCTION_0(&dword_2981ED000, v2, v3, "Received a request to hash a value that is too large, possible malicious behavior - aborting", v4, v5, v6, v7, v8);
  }

  abort();
}

void _hashCFString_cold_1()
{
  v1 = _MAClientLog(@"V2");
  if (OUTLINED_FUNCTION_1(v1))
  {
    v8 = 0;
    OUTLINED_FUNCTION_0(&dword_2981ED000, v2, v3, "Received a request to hash a multibyte value that is too large, possible malicious behavior - aborting", v4, v5, v6, v7, v8);
  }

  abort();
}

void _hashCFString_cold_2()
{
  v1 = _MAClientLog(@"V2");
  if (OUTLINED_FUNCTION_1(v1))
  {
    v8 = 0;
    OUTLINED_FUNCTION_0(&dword_2981ED000, v2, v3, "Received a request to hash a value but could not get a C string. Possible malicious behavior - aborting", v4, v5, v6, v7, v8);
  }

  abort();
}

void __os_cleanup_iorelease_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_2981ED000, v6, v7, "IOObjectRetain: %{mach.errno}d");
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_ioclose_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_2981ED000, v6, v7, "IOObjectRelease: %{mach.errno}d");
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_close_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  v4 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = *__error();
  v8[0] = 67109120;
  v8[1] = v6;
  v7 = 8;
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &dword_2981ED000, v4, 16, "assertion failure: close(fd) -> %{errno}d", v8, v7);
  _os_crash_msg();
  __break(1u);
}