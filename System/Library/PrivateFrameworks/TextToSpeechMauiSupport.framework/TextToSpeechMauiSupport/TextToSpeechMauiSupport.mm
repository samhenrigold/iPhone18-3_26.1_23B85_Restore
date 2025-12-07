uint64_t sub_26E794D80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26E794DA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26E794DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_26E794DE8()
{
  MEMORY[0x27437FCF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26E794E20()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26E794E58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26E794E90()
{
  v1 = sub_26ECC55F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26E794F68(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26E794F78()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

void sub_26E798834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MauiStreamOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = 2147483655;
  if (a3)
  {
    if (a4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x277CCACA8] stringWithCString:a3 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        v11 = [MEMORY[0x277CCACA8] stringWithCString:a4 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        v9 = [v8 open:v10 mode:v11 outPointer:a5];
      }
    }
  }

  return v9;
}

void sub_26E79912C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26E799614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MauiProcCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 processingCallback:a4];
  }

  else
  {
    v6 = 2147483655;
  }

  return v6;
}

void sub_26E79B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26E79B6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef TTSVocalizerCopyPathForCommonResources()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = TTSVocalizerCopyURLForFrameworkResourcesWithType();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], v0, @"common", 1u);
  if (v2)
  {
    v3 = v2;
    memset(&v6, 0, sizeof(v6));
    if (CFURLGetFileSystemRepresentation(v2, 1u, buffer, 1024) && !stat(buffer, &v6))
    {
      v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
      CFRelease(v3);
      goto LABEL_7;
    }

    CFRelease(v3);
  }

  v4 = 0;
LABEL_7:
  CFRelease(v1);
  return v4;
}

CFURLRef TTSVocalizerCopyURLForFrameworkResourcesWithType()
{
  v0 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/System/Library/PrivateFrameworks/TextToSpeechMauiSupport.framework", kCFURLPOSIXPathStyle, 1u);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFBundleCreate(0, v0);
  v3 = CFBundleCopyResourceURL(v2, @"TTSResources", 0, 0);
  CFRelease(v1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t vplatform_dynlib_Close(void **a1)
{
  if (!a1)
  {
    return 2147483654;
  }

  v2 = (dlclose(a1[1]) != 0) << 31;
  free(a1);
  return v2;
}

uint64_t _TTSMauiVocalizerCriticalSectionImplOpen(uint64_t a1, uint64_t a2, pthread_mutex_t **a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 2147483655;
  }

  v4 = 2147483912;
  v5 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  if (v5)
  {
    v6 = v5;
    v8.__sig = 0;
    *v8.__opaque = 0;
    pthread_mutexattr_init(&v8);
    pthread_mutexattr_settype(&v8, 2);
    if (pthread_mutex_init(v6, &v8))
    {
      free(v6);
      v4 = 2147483918;
    }

    else
    {
      v4 = 0;
      *a3 = v6;
    }

    pthread_mutexattr_destroy(&v8);
  }

  return v4;
}

pthread_mutex_t *_TTSMauiVocalizerCriticalSectionImplClose(pthread_mutex_t *result)
{
  if (result)
  {
    v1 = result;
    if (pthread_mutex_destroy(result))
    {
      return 2147483918;
    }

    else
    {
      free(v1);
      return 0;
    }
  }

  return result;
}

pthread_mutex_t *_TTSMauiVocalizerCriticalSectionImplEnter(pthread_mutex_t *result)
{
  if (result)
  {
    if (pthread_mutex_lock(result))
    {
      return 2147483918;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

pthread_mutex_t *_TTSMauiVocalizerCriticalSectionImplLeave(pthread_mutex_t *result)
{
  if (result)
  {
    if (pthread_mutex_unlock(result))
    {
      return 2147483918;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerDataStreamImplClose(FILE *a1)
{
  if (!a1)
  {
    return 2147483655;
  }

  if (fclose(a1))
  {
    return 2147483907;
  }

  return 0;
}

uint64_t _TTSMauiVocalizerDataStreamImplRead(void *a1, size_t a2, size_t a3, FILE *a4)
{
  if (a4)
  {
    return fread(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t _TTSMauiVocalizerDataStreamImplSeek(FILE *a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    return 2147483655;
  }

  if (a3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (a3 == 2);
  }

  if (a4 == -1)
  {
    a2 = -a2;
  }

  if (fseek(a1, a2, v4) == -1)
  {
    return 2147483908;
  }

  else
  {
    return 0;
  }
}

FILE *_TTSMauiVocalizerDataStreamImplGetSize(FILE *result)
{
  if (result)
  {
    memset(&v2, 0, sizeof(v2));
    v1 = fileno(result);
    if (fstat(v1, &v2))
    {
      return 0;
    }

    else
    {
      return v2.st_size;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerDataStreamImplGetError(FILE *a1)
{
  if (!a1)
  {
    return 2147483655;
  }

  if (ferror(a1))
  {
    return 2147483652;
  }

  return 0;
}

size_t _TTSMauiVocalizerDataStreamImplWrite(const void *a1, size_t a2, size_t a3, FILE *a4)
{
  if (a4)
  {
    return fwrite(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t TTSMauiVocalizerDataMappingImplOpenWithFunctionPointer(uint64_t a1, uint64_t a2, const void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, const void *, const char *, uint64_t *))
{
  v19 = 0;
  if (a4)
  {
    pthread_mutex_lock(&__MappingInfoCacheLock);
    if (__MappingInfoCache && (Value = CFDictionaryGetValue(__MappingInfoCache, a3)) != 0)
    {
      if (*(Value + 56))
      {
        v11 = 0;
        ++Value[5];
        *a4 = Value;
LABEL_20:
        pthread_mutex_unlock(&__MappingInfoCacheLock);
        return v11;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v11 = a5(a1, a2, a3, "r", &v19);
    if (!v11)
    {
      if (a3)
      {
        v13 = strlen(a3);
        v14 = malloc_type_malloc(0x40uLL, 0x109004021B9ABA4uLL);
        if (v13 && (v15 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL), (v13 = v15) != 0))
        {
          strcpy(v15, a3);
          v16 = 1;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v14 = malloc_type_malloc(0x40uLL, 0x109004021B9ABA4uLL);
        v16 = 0;
        v13 = 0;
      }

      v11 = 0;
      v14[6] = v13;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = v19;
      *(v14 + 2) = xmmword_26ECC72D0;
      *(v14 + 56) = 0;
      *a4 = v14;
      if ((v12 & v16) == 1)
      {
        v17 = __MappingInfoCache;
        if (!__MappingInfoCache)
        {
          keyCallBacks = *byte_287EE67D8;
          v17 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
          __MappingInfoCache = v17;
        }

        CFDictionarySetValue(v17, v13, v14);
        v11 = 0;
      }
    }

    goto LABEL_20;
  }

  return 2147483655;
}

uint64_t _TTSMauiVocalizerDataMappingImplClose(FILE **a1)
{
  if (!a1)
  {
    return 2147483655;
  }

  pthread_mutex_lock(&__MappingInfoCacheLock);
  if (a1[5] == 1)
  {
    v2 = a1[6];
    if (v2 && __MappingInfoCache && CFDictionaryGetValue(__MappingInfoCache, a1[6]) == a1)
    {
      CFDictionaryRemoveValue(__MappingInfoCache, v2);
    }

    pthread_mutex_unlock(&__MappingInfoCacheLock);
    v3 = a1[1];
    if (v3)
    {
      v4 = munmap(v3, a1[3]);
      v5 = v4 != 0;
      if (v4)
      {
        v6 = 2147483918;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    if (*a1 && !v5)
    {
      if (fclose(*a1))
      {
        v6 = 2147483907;
      }

      else
      {
        v6 = 0;
      }
    }

    v7 = a1[6];
    if (v7)
    {
      free(v7);
    }

    free(a1);
  }

  else
  {
    a1[5] = (a1[5] - 1);
    pthread_mutex_unlock(&__MappingInfoCacheLock);
    return 0;
  }

  return v6;
}

uint64_t _TTSMauiVocalizerDataMappingImplMap(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v8 = getpagesize();
  result = 2147483655;
  if (!a1 || !a4)
  {
    return result;
  }

  v10 = a2 / v8 * v8;
  v11 = a2 % v8;
  pthread_mutex_lock(&__MappingInfoCacheLock);
  v12 = *(a1 + 32);
  if ((v12 & 0x8000000000000000) == 0 && *(a1 + 56))
  {
    goto LABEL_12;
  }

  if (*(a1 + 8))
  {
    _TTSMauiVocalizerDataMappingImplMap_cold_1();
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = _TTSMauiVocalizerDataStreamImplGetSize(*a1);
  }

  if (!*a1)
  {
    goto LABEL_13;
  }

  v13 = fileno(*a1);
  if (v13 < 0)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = *(a1 + 16);
  v16 = mmap(0, v15, 1, 2, v13, 0);
  *(a1 + 8) = v16;
  if (v16 != -1)
  {
    v12 = 0;
    *(a1 + 24) = v15;
    *(a1 + 56) = 1;
LABEL_12:
    *(a1 + 32) = v12 + 1;
    goto LABEL_13;
  }

  if (a3)
  {
    v28 = *a3;
    if (*a3)
    {
      v29 = v28 + v11;
      v30 = mmap(0, v28 + v11, 1, 2, v14, v10);
      *(a1 + 8) = v30;
      if (v30 != -1)
      {
        if (*a3)
        {
          v12 = 0;
          *(a1 + 24) = v29;
          goto LABEL_12;
        }
      }
    }
  }

  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
LABEL_13:
  v17 = *(a1 + 56);
  v18 = CFStringCreateWithCString(0, *(a1 + 48), 0x8000100u);
  v19 = v18;
  if (*(a1 + 56))
  {
    if (CFStringHasPrefix(v18, @"uselect"))
    {
      v20 = *a3;
      if (*a3 > 0x200000 && *(a1 + 24) * 0.8 > (v20 + a2) && v20 >= 1)
      {
        v21 = *(a1 + 8) + a2;
        v22 = v21 + v20;
        do
        {
          v21 += 4096;
        }

        while (v21 < v22);
      }
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  pthread_mutex_unlock(&__MappingInfoCacheLock);
  if (*(a1 + 16) >= a2)
  {
    v23 = *(a1 + 24);
    if (v17)
    {
      v24 = a2;
    }

    else
    {
      v24 = v11;
    }

    *a4 = *(a1 + 8) + v24;
    result = 0;
    if (a3)
    {
      if (v17)
      {
        v25 = a2;
      }

      else
      {
        v25 = 0;
      }

      v26 = v23 - v25;
      if (*a3 >= v26)
      {
        LODWORD(v27) = v26;
      }

      else
      {
        v27 = *a3;
      }

      if (*a3)
      {
        LODWORD(v26) = v27;
      }

      *a3 = v26;
    }
  }

  else
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t _TTSMauiVocalizerDataMappingImplUnmap(uint64_t a1)
{
  if (!a1)
  {
    return 2147483655;
  }

  pthread_mutex_lock(&__MappingInfoCacheLock);
  v2 = *(a1 + 32);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (v3)
  {
    v5 = 2147483665;
  }

  else
  {
    v5 = 0;
    *(a1 + 32) = v4;
  }

  if (!*(a1 + 56))
  {
    if (munmap(*(a1 + 8), *(a1 + 24)))
    {
      v5 = 2147483918;
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
    }
  }

  pthread_mutex_unlock(&__MappingInfoCacheLock);
  return v5;
}

void _TTSMauiVocalizerLogError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v29 = 0;
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (i)
      {
        __strcat_chk();
      }

      if (*(a4 + 8 * i))
      {
        v10 = *(a5 + 8 * i) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        __strcat_chk();
        __strcat_chk();
        __strcat_chk();
      }
    }
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{a2, a4, a5}];
  v13 = [v11 stringWithFormat:@"%@", v12];

  v15 = TTSVocalizerErrors(v14);
  v16 = [v15 objectForKeyedSubscript:v13];

  if (v16)
  {
    v17 = [v16 objectForKeyedSubscript:@"severity"];
    v18 = [v16 objectForKeyedSubscript:@"text"];
    v19 = v18;
    v20 = &stru_287EF7E80;
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    if ([v17 intValue]<= 3)
    {
      v22 = AXTTSLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        v24 = a2;
        v25 = 2112;
        v26 = v21;
        v27 = 2080;
        v28 = &v29;
        _os_log_error_impl(&dword_26E793000, v22, OS_LOG_TYPE_ERROR, "MauiVocalizer: %d (%@): %s\n", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v17 = AXTTSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _TTSMauiVocalizerLogError_cold_1();
    }
  }
}

void _TTSMauiVocalizerLogDiagnostic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = AXTTSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    _TTSMauiVocalizerLogDiagnostic_cold_1();
  }
}

uint64_t _TTSMauiVocalizerGetThreadImplOpen(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 2147483912;
  v6 = malloc_type_malloc(0x10uLL, 0xDB08F6AFuLL);
  *a3 = v6;
  if (!v6)
  {
    return 2147483654;
  }

  v7 = v6;
  *(v6 + 2) = 135972;
  v8 = malloc_type_malloc(0x10uLL, 0xDB08F6AFuLL);
  if (!v8)
  {
LABEL_7:
    free(a3);
    return v5;
  }

  v9 = v8;
  v10 = malloc_type_malloc(8uLL, 0xDB08F6AFuLL);
  *v9 = v10;
  if (!v10)
  {
    free(v9);
    goto LABEL_7;
  }

  v5 = 0;
  v9[1] = a2;
  *v7 = v9;
  return v5;
}

uint64_t _TTSMauiVocalizerGetThreadImplClose(_DWORD *a1)
{
  result = 2147483654;
  if (a1)
  {
    if (a1[2] == 135972)
    {
      v3 = *a1;
      if (*a1)
      {
        free(*v3);
        free(a1);
        free(v3);
        return 0;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetThreadImplStart(uint64_t a1, void *(__cdecl *a2)(void *), void *a3, size_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  result = 2147483654;
  if (a1)
  {
    if (*(a1 + 8) == 135972)
    {
      v6 = *a1;
      if (*a1)
      {
        memset(&v10, 0, sizeof(v10));
        pthread_attr_init(&v10);
        pthread_attr_setstacksize(&v10, a4);
        pthread_attr_setdetachstate(&v10, 1);
        pthread_attr_set_qos_class_np(&v10, QOS_CLASS_USER_INTERACTIVE, -1);
        if (pthread_create(*v6, &v10, a2, a3))
        {
          return 2147483651;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetThreadImplJoin(uint64_t a1, void **a2)
{
  result = 2147483654;
  v5 = a2;
  if (a1)
  {
    if (*(a1 + 8) == 135972)
    {
      v4 = *a1;
      if (v4)
      {
        if (a2)
        {
          a2 = &v5;
        }

        return (pthread_join(**v4, a2) != 0) << 31;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetThreadImplThreadId(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
    *a2 += pthread_self();
  }

  return 0;
}

uint64_t _TTSMauiVocalizerGetSemaphoreImplOpen(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void ****a5)
{
  v7 = 2147483654;
  v8 = malloc_type_malloc(0x10uLL, 0xDB08F6AFuLL);
  *a5 = v8;
  if (v8)
  {
    v9 = v8;
    *(v8 + 2) = 135973;
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x3328CB88uLL);
    if (v10)
    {
      v11 = v10;
      v12 = dispatch_semaphore_create(a3);
      v13 = *v11;
      *v11 = v12;

      v7 = 0;
      *v9 = v11;
    }

    else
    {
      free(a5);
      return 2147483912;
    }
  }

  return v7;
}

uint64_t _TTSMauiVocalizerGetSemaphoreImplClose(void ***a1)
{
  result = 2147483654;
  if (a1)
  {
    if (*(a1 + 2) == 135973)
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = *v3;
        *v3 = 0;

        free(a1);
        free(v3);
        return 0;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetSemaphoreImplAcquire(uint64_t a1)
{
  result = 2147483654;
  if (a1)
  {
    if (*(a1 + 8) == 135973)
    {
      v3 = *a1;
      if (v3)
      {
        dispatch_semaphore_wait(*v3, 0xFFFFFFFFFFFFFFFFLL);
        return 0;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

uint64_t _TTSMauiVocalizerGetSemaphoreImplRelease(uint64_t a1)
{
  result = 2147483654;
  if (a1)
  {
    if (*(a1 + 8) == 135973)
    {
      v3 = *a1;
      if (v3)
      {
        dispatch_semaphore_signal(*v3);
        return 0;
      }

      else
      {
        return 2147483916;
      }
    }

    else
    {
      return 2147483656;
    }
  }

  return result;
}

id TTSVocalizerErrors(uint64_t a1)
{
  if (TTSVocalizerErrors_onceToken != -1)
  {
    TTSVocalizerErrors_cold_1();
  }

  v2 = TTSVocalizerErrors_vocalizerErrors;

  return v2;
}

void __TTSVocalizerErrors_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v0 pathForResource:@"vocalizer_errors" ofType:@"plist"];

  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
  v2 = TTSVocalizerErrors_vocalizerErrors;
  TTSVocalizerErrors_vocalizerErrors = v1;
}

BOOL _CompareBrokerNames(char *__s1, char *a2)
{
  if (__s1 == a2)
  {
    return 1;
  }

  result = 0;
  if (__s1)
  {
    if (a2)
    {
      return strcmp(__s1, a2) == 0;
    }
  }

  return result;
}

const char *_HashBrokerName(const char *result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result)
    {
      v2 = result;
      v3 = &result[v1];
      result = (result[v1 - 1] + *v1);
      if (v2 != 1)
      {
        result += v1[1] + *(v3 - 2);
      }
    }
  }

  return result;
}

id sub_26E79D0AC()
{
  v0 = sub_26ECC5558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26ECC5648();
  sub_26ECC5628();
  sub_26ECC5608();
  v5 = v4;

  if (v5)
  {
    sub_26ECC55D8();
    sub_26ECC55C8();
    sub_26ECC5548();
    (*(v1 + 8))(v3, v0);
    v6 = objc_allocWithZone(TTSMauiVoice);
    v7 = sub_26ECC5828();

    v8 = sub_26ECC5828();

    v9 = sub_26ECC5828();

    v5 = [v6 initWithIdentifier:v7 language:v8 path:v9];
  }

  return v5;
}

id sub_26E79D2CC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_26ECC5828();

  return v3;
}

uint64_t sub_26E79D350(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_26E79D3B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26ECC5838();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_26E79D428(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id TTSMauiVoice.init(identifier:language:path:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_26ECC5828();

  v8 = sub_26ECC5828();

  v9 = sub_26ECC5828();

  v10 = [v6 initWithIdentifier:v7 language:v8 path:v9];

  return v10;
}

{
  v7 = (v6 + OBJC_IVAR___TTSMauiVoice_identifier);
  *v7 = a1;
  v7[1] = a2;
  v8 = (v6 + OBJC_IVAR___TTSMauiVoice_language);
  *v8 = a3;
  v8[1] = a4;
  v9 = (v6 + OBJC_IVAR___TTSMauiVoice_path);
  *v9 = a5;
  v9[1] = a6;
  v11.super_class = TTSMauiVoice;
  return objc_msgSendSuper2(&v11, sel_init);
}

id TTSMauiVoice.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t variable initialization expression of MauiAUSPAudioUnit.markerQueue()
{
  v0 = sub_26ECC5978();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26ECC5968();
  MEMORY[0x28223BE20](v4);
  v5 = sub_26ECC5788();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26E79E3A4(0, &unk_28118F1E0, 0x277D85C78);
  sub_26ECC5778();
  v7[1] = MEMORY[0x277D84F90];
  sub_26E79D9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61E0, &qword_26ECC7300);
  sub_26E79DA88();
  sub_26ECC59F8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  return sub_26ECC5998();
}

unint64_t sub_26E79D9E8()
{
  result = qword_28118F1F0;
  if (!qword_28118F1F0)
  {
    sub_26ECC5968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28118F1F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26E79DA88()
{
  result = qword_28118F210;
  if (!qword_28118F210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2806C61E0, &qword_26ECC7300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28118F210);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of MauiAUSPAudioUnit.voiceResourceQueue()
{
  v0 = sub_26ECC5978();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26ECC5968();
  MEMORY[0x28223BE20](v4);
  v5 = sub_26ECC5788();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26E79E3A4(0, &unk_28118F1E0, 0x277D85C78);
  sub_26ECC5778();
  v7[1] = MEMORY[0x277D84F90];
  sub_26E79D9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61E0, &qword_26ECC7300);
  sub_26E79DA88();
  sub_26ECC59F8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  return sub_26ECC5998();
}

uint64_t sub_26E79DD90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of MauiAUSPAudioUnit._timbre()
{
  v0 = objc_opt_self();
  LOBYTE(v9) = 0;
  sub_26ECC5848();
  v1 = sub_26ECC5828();

  type metadata accessor for MauiAUSPAudioUnit(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_26ECC5478();

  v4 = sub_26ECC5828();

  LODWORD(v5) = 1112014848;
  LODWORD(v6) = 1128792064;
  v7 = [v0 createParameterWithIdentifier:v1 name:v4 address:0 min:0 max:0 unit:0 unitName:v5 flags:v6 valueStrings:0 dependentParameters:{0, v9}];

  return sub_26ECC5578();
}

uint64_t variable initialization expression of MauiAUSPAudioUnit._sentencePauseDuration()
{
  v0 = objc_opt_self();
  LOBYTE(v8) = 1;
  sub_26ECC5848();
  v1 = sub_26ECC5828();

  type metadata accessor for MauiAUSPAudioUnit(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_26ECC5478();

  v4 = sub_26ECC5828();

  LODWORD(v5) = 9.0;
  v6 = [v0 createParameterWithIdentifier:v1 name:v4 address:1 min:0 max:0 unit:0 unitName:0.0 flags:v5 valueStrings:0 dependentParameters:{0, v8}];

  return sub_26ECC5578();
}

unint64_t sub_26E79E14C(uint64_t a1, uint64_t a2)
{
  sub_26ECC5A88();
  sub_26ECC5868();
  v4 = sub_26ECC5AA8();

  return sub_26E79E1C4(a1, a2, v4);
}

unint64_t sub_26E79E1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26ECC5A68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26E79E27C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C6070, &qword_26ECC7338);
    v3 = sub_26ECC5A38();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26E79E14C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26E79E3A4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26E79E438(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26E79E48C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26E79E4AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_26E79E588(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26E79E5F8()
{
  v1 = *v0;
  sub_26ECC5A88();
  MEMORY[0x27437EC90](v1);
  return sub_26ECC5AA8();
}

uint64_t sub_26E79E66C(uint64_t a1)
{
  v2 = *v1;
  sub_26ECC5A88();
  MEMORY[0x27437EC90](v2);
  return sub_26ECC5AA8();
}

void *sub_26E79E6B0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void static MauiAUSPAudioUnit.registerAudioUnit()()
{
  v0 = sub_26ECC5858();
  v1 = objc_opt_self();
  type metadata accessor for MauiAUSPAudioUnit(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_26ECC5828();
  v4[0] = 1635087216;
  v4[1] = v0;
  v5 = 1634758764;
  v6 = 0;
  [v1 registerSubclass:ObjCClassFromMetadata asComponentDescription:v4 name:v3 version:0];
}

uint64_t type metadata accessor for MauiAUSPAudioUnit(uint64_t a1)
{
  result = qword_28118F298;
  if (!qword_28118F298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26E79E7E4()
{
  v0 = sub_26ECC5858();
  v1 = objc_opt_self();
  type metadata accessor for MauiAUSPAudioUnit(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_26ECC5828();
  v4[0] = 1635087216;
  v4[1] = v0;
  v5 = 1634758764;
  v6 = 0;
  [v1 registerSubclass:ObjCClassFromMetadata asComponentDescription:v4 name:v3 version:0];
}

id sub_26E79E8A0(unint64_t a1, unint64_t a2, int a3, unsigned int a4)
{
  v95 = a4;
  v94 = a3;
  v93 = a2;
  v92 = a1;
  v117 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C61D0, &qword_26ECC7648);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C61D8, &unk_26ECC7650);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v85 - v8;
  v106 = sub_26ECC5978();
  v9 = *(v106 - 1);
  MEMORY[0x28223BE20](v106);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26ECC5968();
  MEMORY[0x28223BE20](v12);
  v13 = sub_26ECC5788();
  MEMORY[0x28223BE20](v13 - 8);
  v103 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = qword_28118F330;
  *&v4[qword_28118F330] = 0;
  v89 = qword_28118F2B8;
  *&v4[qword_28118F2B8] = 0;
  v15 = qword_28118F230;
  v16 = sub_26ECC56D8();
  v17 = *(*(v16 - 8) + 56);
  v91 = v15;
  v17(&v4[v15], 1, 1, v16);
  v86 = qword_28118F358;
  *&v4[qword_28118F358] = 0;
  v87 = qword_28118F360;
  *&v4[qword_28118F360] = 0;
  v18 = qword_28118F238;
  v19 = sub_26ECC55F8();
  v20 = *(*(v19 - 8) + 56);
  v90 = v18;
  v20(&v4[v18], 1, 1, v19);
  v104 = v4;
  *&v4[qword_28118F2F0] = 0;
  *&v4[qword_28118F308] = 0;
  v21 = qword_28118F348;
  v105 = sub_26E79E3A4(0, &unk_28118F1E0, 0x277D85C78);
  sub_26ECC5778();
  *&v114 = MEMORY[0x277D84F90];
  v101 = sub_26E7A58F4(&qword_28118F1F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61E0, &qword_26ECC7300);
  v102 = sub_26E7A593C(&qword_28118F210, &unk_2806C61E0, &qword_26ECC7300, MEMORY[0x277D83970]);
  sub_26ECC59F8();
  v22 = *MEMORY[0x277D85260];
  v23 = *(v9 + 104);
  v98 = v9 + 104;
  v99 = v23;
  v97 = v11;
  v24 = v106;
  (v23)(v11, v22, v106);
  v25 = sub_26ECC5998();
  v85 = v21;
  v26 = v104;
  *&v104[v21] = v25;
  v27 = qword_28118F300;
  v96 = "Support.TTSMauiVoice";
  sub_26ECC5778();
  *&v114 = MEMORY[0x277D84F90];
  sub_26ECC59F8();
  v99(v97, v22, v24);
  v28 = sub_26ECC5998();
  v103 = v27;
  *&v26[v27] = v28;
  v29 = v26;
  v30 = qword_28118F2D8;
  v31 = sub_26ECC5528();
  v32 = *(*(v31 - 8) + 56);
  v102 = v30;
  v32(&v26[v30], 1, 1, v31);
  v33 = &v26[qword_28118F320];
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = 1;
  v34 = qword_28118F310;
  v35 = sub_26E79E27C(MEMORY[0x277D84F90]);
  v101 = v34;
  *&v26[v34] = v35;
  v36 = qword_28118F338;
  v37 = sub_26ECC5508();
  v38 = *(*(v37 - 8) + 56);
  v100 = v36;
  v38(&v26[v36], 1, 1, v37);
  v39 = qword_28118F2C0;
  v40 = objc_opt_self();
  LOBYTE(v114) = 0;
  sub_26ECC5848();
  v41 = sub_26ECC5828();

  v105 = "maui.voiceresource";
  v106 = type metadata accessor for MauiAUSPAudioUnit(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = objc_opt_self();
  v44 = [v43 bundleForClass_];
  sub_26ECC5478();

  v45 = sub_26ECC5828();

  LODWORD(v46) = 1112014848;
  LODWORD(v47) = 1128792064;
  v48 = [v40 createParameterWithIdentifier:v41 name:v45 address:0 min:0 max:0 unit:0 unitName:v46 flags:v47 valueStrings:0 dependentParameters:0];

  v111[0] = 100;
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  v99 = v39;
  sub_26ECC5578();
  v49 = qword_28118F2E8;
  LOBYTE(v114) = 1;
  sub_26ECC5848();
  v50 = sub_26ECC5828();

  v51 = [v43 bundleForClass_];
  sub_26ECC5478();

  v52 = sub_26ECC5828();

  LODWORD(v53) = 9.0;
  v54 = [v40 createParameterWithIdentifier:v50 name:v52 address:1 min:0 max:0 unit:0 unitName:0.0 flags:v53 valueStrings:0 dependentParameters:0];

  v111[0] = 1;
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  sub_26ECC5578();
  *(v29 + qword_28118F240) = 0;
  v111[1] = 0x40D5888000000000;
  v112 = xmmword_26ECC74A0;
  v113 = xmmword_26ECC74B0;
  type metadata accessor for CMFormatDescription(0);
  v55 = sub_26ECC57F8();
  (*(*(v55 - 8) + 56))(v107, 1, 1, v55);
  v56 = sub_26ECC59C8();
  (*(*(v56 - 8) + 56))(v108, 1, 1, v56);
  v57 = v109;
  sub_26ECC5808();
  if (v57)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v58 = v114;
    v59 = [objc_allocWithZone(MEMORY[0x277CB83A0]) initWithCMAudioFormatDescription_];

    v60 = qword_28118F2D0;
    *(v29 + qword_28118F2D0) = v59;
    v61 = objc_allocWithZone(MEMORY[0x277CEFD20]);
    *&v114 = 0;
    v62 = v59;
    v63 = [v61 initWithFormat:v62 error:&v114];
    if (v63)
    {
      v64 = v63;
      v65 = v92;
      v66 = HIDWORD(v92);
      v67 = v93;
      v68 = HIDWORD(v93);
      v69 = v114;

      *(v29 + qword_28118F2A8) = v64;
      v110.receiver = v29;
      v110.super_class = v106;
      v111[0] = 0;
      *&v114 = __PAIR64__(v66, v65);
      *(&v114 + 1) = __PAIR64__(v68, v67);
      LODWORD(v115) = v94;
      v70 = objc_msgSendSuper2(&v110, sel_initWithComponentDescription_options_error_, &v114, v95, v111);
      v71 = v111[0];
      if (v70)
      {
        v72 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61F8, &unk_26ECC7668);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_26ECC74C0;
        v74 = *&v72[qword_28118F2A8];
        *(v73 + 32) = v74;
        v75 = objc_allocWithZone(MEMORY[0x277CEFD28]);
        sub_26E79E3A4(0, &unk_28118F200, 0x277CEFD20);
        v29 = v72;
        v76 = v71;
        v77 = v74;
        v78 = sub_26ECC58C8();

        v79 = [v75 initWithAudioUnit:v29 busType:2 busses:v78];

        v80 = *(v29 + qword_28118F330);
        *(v29 + qword_28118F330) = v79;
      }

      else
      {
        v29 = v111[0];
        sub_26ECC5498();

        swift_willThrow();
      }
    }

    else
    {
      v81 = v114;
      sub_26ECC5498();

      swift_willThrow();
      sub_26E7A59EC(v29 + v91, &qword_2806C6130, &qword_26ECC74E8);

      sub_26E7A59EC(v29 + v90, &qword_2806C6140, &qword_26ECC74F8);
      sub_26E7A59EC(v29 + v102, &qword_2806C61F0, &qword_26ECC7660);

      sub_26E7A59EC(v29 + v100, &qword_2806C6128, &qword_26ECC74E0);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6138, &qword_26ECC74F0);
      v83 = *(*(v82 - 8) + 8);
      v83(v99 + v29, v82);
      v83(v29 + v49, v82);
      swift_deallocPartialClassInstance();
    }

    return v29;
  }

  return result;
}

id sub_26E79F73C(uint64_t a1)
{
  result = *(a1 + qword_28118F330);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id MauiAUSPAudioUnit.outputBusses.getter()
{
  result = *(v0 + qword_28118F330);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MauiAUSPAudioUnit.allocateRenderResources()()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MauiAUSPAudioUnit(0);
  if (objc_msgSendSuper2(&v3, sel_allocateRenderResourcesAndReturnError_, v4))
  {
    v1 = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_26ECC5498();

    swift_willThrow();
  }
}

BOOL sub_26E79F820(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  MauiAUSPAudioUnit.allocateRenderResources()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_26ECC5488();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

id sub_26E79F89C(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_26E7A5BE4;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26E79F9C0;
  v4[3] = &block_descriptor_16;
  v2 = _Block_copy(v4);

  return v2;
}

uint64_t (*MauiAUSPAudioUnit.internalRenderBlock.getter())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_26E7A047C;
}

uint64_t sub_26E79F9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v14 = *(a1 + 32);
  v15 = _Block_copy(aBlock);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_26E7A45B4;
  }

  else
  {
    v16 = 0;
  }

  v17 = v14(a2, a3, a4, a5, a6, a7, v15, v16);
  sub_26E794F68(v15, v16);

  return v17;
}

void sub_26E79FAAC(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v9) = a3;
  v89 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6128, &qword_26ECC74E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v91 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v81 - v13;
  v15 = sub_26ECC5508();
  v101 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v90 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v81 - v18;
  v20 = sub_26ECC57C8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  sub_26ECC57D8();
  v26 = sub_26ECC57E8();
  v28 = v27;
  v26(aBlock, 0);
  (*(v21 + 8))(v23, v20);
  v97 = v28;
  if (!v28)
  {
    goto LABEL_42;
  }

  if (!*(v25 + qword_28118F2B8))
  {
    goto LABEL_31;
  }

  p_vtable = &OBJC_METACLASS___TTSMauiSpeechEngine.vtable;
  if (!v9)
  {
    LODWORD(v32) = 0;
    v77 = 0;
    v76 = 0;
LABEL_34:
    v78 = p_vtable[97];
    v79 = *&v78[v25];
    v48 = __CFADD__(v79, 4 * v32);
    v80 = v79 + 4 * v32;
    if (v48)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *&v78[v25] = v80;
    sub_26ECC5748();

    sub_26E794F68(v76, v77);
    return;
  }

  v30 = v9;
  v85 = v19;
  v103 = qword_28118F360;
  v96 = qword_28118F358;
  v31 = qword_28118F338;
  v83 = qword_28118F308;
  v82 = qword_28118F348;
  v102 = qword_28118F2F0;
  swift_beginAccess();
  v93 = 0;
  v92 = 0;
  v32 = 0;
  v95 = (v101 + 48);
  v87 = (v101 + 32);
  v33 = (v101 + 8);
  v86 = (v101 + 56);
  v81[1] = v105;
  v9 = &qword_2806C6128;
  v84 = xmmword_26ECC74D0;
  v34 = &unk_279DB9000;
  v100 = v30;
  v98 = v15;
  v99 = v14;
  v101 = v31;
  v88 = v33;
  do
  {
    v36 = *(v25 + v103);
    if (!v36)
    {
      v50 = [*(v25 + v96) nextBuffer];
      v51 = *(v25 + v103);
      *(v25 + v103) = v50;

      sub_26E7A5AB0(v25 + v31, v14, &qword_2806C6128, &qword_26ECC74E0);
      if ((*v95)(v14, 1, v15) == 1)
      {
        sub_26E7A59EC(v14, &qword_2806C6128, &qword_26ECC74E0);
      }

      else
      {
        v94 = v32;
        v52 = v85;
        (*v87)(v85, v14, v15);
        v53 = v90;
        sub_26ECC54F8();
        v54 = v33;
        sub_26ECC54E8();
        v55 = *v33;
        (*v33)(v53, v15);
        v56 = v91;
        (*v86)(v91, 1, 1, v15);
        swift_beginAccess();
        sub_26E7A5984(v56, v25 + v31, &qword_2806C6128, &qword_26ECC74E0);
        swift_endAccess();
        v57 = AXTTSLogCommon();
        if (!v57)
        {
          goto LABEL_41;
        }

        v58 = v57;
        v59 = v15;
        v60 = sub_26ECC5948();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6148, &unk_26ECC7500);
        v61 = swift_allocObject();
        *(v61 + 16) = v84;
        v62 = sub_26E79E3A4(0, &qword_2806C6268, 0x277CCABB0);
        v63 = sub_26ECC59D8();
        *(v61 + 56) = v62;
        *(v61 + 64) = sub_26E7A5B6C();
        *(v61 + 32) = v63;
        sub_26ECC5738("MauiAUSP first buffer latency %@s", 33, 2, &dword_26E793000, v58, v60, v61);

        v55(v52, v59);
        v30 = v100;
        v14 = v99;
        v15 = v59;
        v31 = v101;
        v32 = v94;
        v33 = v54;
        v9 = &qword_2806C6128;
        v34 = &unk_279DB9000;
      }

      v64 = *(v25 + v103);
      if (!v64)
      {
        goto LABEL_26;
      }

      v65 = v32;
      v66 = [v64 markers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6218, &qword_26ECC7678);
      v67 = sub_26ECC58D8();

      if (v67 >> 62)
      {
        if (sub_26ECC5A28())
        {
          goto LABEL_21;
        }
      }

      else if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        v68 = *(v25 + v83);
        v69 = *(v25 + v82);
        v70 = swift_allocObject();
        *(v70 + 16) = v25;
        *(v70 + 24) = v67;
        *(v70 + 32) = v68;
        v71 = v69;
        v72 = v25;
        sub_26E794F68(v93, v92);
        v73 = swift_allocObject();
        *(v73 + 16) = sub_26E7A5B18;
        *(v73 + 24) = v70;
        v105[2] = sub_26E7A5B44;
        v105[3] = v73;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v105[0] = sub_26E7A04A0;
        v105[1] = &block_descriptor_43;
        v74 = _Block_copy(aBlock);

        dispatch_sync(v71, v74);

        _Block_release(v74);
        LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

        if (v71)
        {
          goto LABEL_37;
        }

        v93 = sub_26E7A5B18;
        v92 = v70;
        v30 = v100;
        v15 = v98;
        v14 = v99;
        v31 = v101;
        v32 = v65;
        v9 = &qword_2806C6128;
        goto LABEL_25;
      }

      v32 = v65;
LABEL_25:
      v33 = v88;
LABEL_26:
      v75 = v103;
      *(v25 + v102) = 0;
      if (!*(v25 + v75))
      {
        *v89 = 128;
        v97[v32] = 0;
        v32 = (v32 + 1);
      }

      continue;
    }

    v37 = v33;
    v38 = v32;
    v39 = v36;
    v40 = [v39 v34[95]];
    v41 = [v40 mutableAudioBufferList];

    v42 = v41[2];
    if (!v42)
    {
      goto LABEL_40;
    }

    v43 = v102;
    v44 = *(v25 + v102);
    v45 = [v39 v34[95]];
    v46 = [v45 frameLength];

    if (v44 >= v46)
    {

      *(v25 + v43) = 0;
      v35 = *(v25 + v103);
      *(v25 + v103) = 0;

      v15 = v98;
      v14 = v99;
      v31 = v101;
      v32 = v38;
    }

    else
    {
      *&v97[v38] = vcvts_n_f32_s32(*(v42 + 2 * *(v25 + v43)), 0xFuLL);

      v47 = *(v25 + v43);
      v48 = __CFADD__(v47, 1);
      v49 = v47 + 1;
      v31 = v101;
      if (v48)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v32 = (v38 + 1);
      *(v25 + v43) = v49;
      v15 = v98;
      v14 = v99;
    }

    v33 = v37;
    v9 = &qword_2806C6128;
    v30 = v100;
    v34 = &unk_279DB9000;
  }

  while (v32 < v30);
  p_vtable = (&OBJC_METACLASS___TTSMauiSpeechEngine + 24);
  v76 = v93;
  v77 = v92;
  if (!(v32 >> 30))
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_31:
  if (!(v9 >> 30))
  {
    bzero(v97, (4 * v9));
    *v89 = 128;
    sub_26ECC5748();

    return;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

Swift::Void __swiftcall MauiAUSPAudioUnit.synthesizeSpeechRequest(_:)(AVSpeechSynthesisProviderRequest a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6128, &qword_26ECC74E0);
  MEMORY[0x28223BE20](v4 - 8);
  v156 = v143 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6130, &qword_26ECC74E8);
  MEMORY[0x28223BE20](v6 - 8);
  v153 = v143 - v7;
  v159 = sub_26ECC56D8();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v9 = v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_26ECC5708();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_26ECC56F8();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v161 = v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_26ECC5728();
  v160 = *(v162 - 1);
  MEMORY[0x28223BE20](v162);
  v170 = v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6138, &qword_26ECC74F0);
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v169 = v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6140, &qword_26ECC74F8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v167 = v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v163 = v143 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v143 - v19;
  v21 = sub_26ECC55F8();
  v22 = *(v21 - 8);
  v172 = v21;
  v173 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v168 = v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v165 = v143 - v25;
  v26 = sub_26ECC5598();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *&v2[qword_28118F2B8];
  *&v2[qword_28118F2B8] = a1;
  v31 = a1.super.isa;

  v143[1] = sub_26ECC5678();
  v32 = sub_26ECC5668();
  v33 = *MEMORY[0x277D70180];
  v34 = *(v27 + 104);
  v146 = v27 + 104;
  v145 = v34;
  v34(v29, v33, v26);
  v174 = v31;
  v35 = [(objc_class *)v31 jobIdentifier];
  sub_26ECC5838();

  sub_26ECC5658();

  v36 = *(v27 + 8);
  v147 = v29;
  v149 = v26;
  v148 = v27 + 8;
  v144 = v36;
  v36(v29, v26);
  v37 = v2;
  v38 = &v2[qword_28118F320];
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = 1;
  v171 = qword_28118F358;
  v39 = *&v2[qword_28118F358];
  v157 = v9;
  if (v39)
  {
    v40 = [v39 currentVoice];
    v41 = [v40 identifier];

    v42 = sub_26ECC5838();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = [(objc_class *)v174 voice];
  v46 = [v45 identifier];

  v47 = sub_26ECC5838();
  v49 = v48;

  if (v44)
  {
    if (v42 == v47 && v44 == v49)
    {

      goto LABEL_10;
    }

    v50 = sub_26ECC5A68();

    if (v50)
    {
LABEL_10:
      if (v2[qword_28118F240] != 1)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  v2[qword_28118F240] = 0;
  sub_26ECC5648();
  sub_26ECC5628();
  v51 = v174;
  v52 = [(objc_class *)v174 voice];
  v53 = [v52 identifier];

  sub_26ECC5838();
  sub_26ECC5618();

  v55 = v172;
  v54 = v173;
  if ((*(v173 + 48))(v20, 1, v172) == 1)
  {
    sub_26E7A59EC(v20, &qword_2806C6140, &qword_26ECC74F8);
LABEL_17:
    v63 = AXTTSLogCommon();
    if (v63)
    {
      v64 = v63;
      v65 = sub_26ECC5958();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6148, &unk_26ECC7500);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_26ECC74D0;
      v67 = [(objc_class *)v51 voice];
      v68 = [v67 identifier];

      v69 = sub_26ECC5838();
      v71 = v70;

      *(v66 + 56) = MEMORY[0x277D837D0];
      *(v66 + 64) = sub_26E7A19E8();
      *(v66 + 32) = v69;
      *(v66 + 40) = v71;
      sub_26ECC5738("Invalid maui voice identifier %{PUBLIC}@", 40, 2, &dword_26E793000, v64, v65, v66);

      return;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    __break(1u);
    return;
  }

  v56 = v165;
  (*(v54 + 32))(v165, v20, v55);
  v57 = sub_26E79D0AC();
  if (!v57)
  {
    (*(v54 + 8))(v56, v55);
    goto LABEL_17;
  }

  v58 = v57;
  v59 = v163;
  (*(v54 + 16))(v163, v56, v55);
  (*(v54 + 56))(v59, 0, 1, v55);
  v60 = qword_28118F238;
  swift_beginAccess();
  sub_26E7A5984(v59, &v2[v60], &qword_2806C6140, &qword_26ECC74F8);
  swift_endAccess();
  sub_26ECC5628();
  *(swift_allocObject() + 16) = v2;
  v2;
  sub_26ECC5638();

  v61 = v171;
  v62 = *&v2[v171];
  if (v62)
  {
    [v62 setVoice_];
  }

  else
  {
    v72 = [objc_allocWithZone(TTSMauiSpeechEngine) initWithVoice_];
    v73 = *&v2[v61];
    *&v2[v61] = v72;
  }

  sub_26E7A1FC4(v56);

  (*(v173 + 8))(v56, v55);
LABEL_21:
  v74 = v171;
  v75 = *&v37[v171];
  v76 = v166;
  if (v75)
  {
    v77 = v164;
    v78 = *(v164 + 16);
    v79 = v169;
    v78(v169, &v37[qword_28118F2C0], v166);
    v80 = v75;
    sub_26ECC5568();
    v81 = *(v77 + 8);
    v81(v79, v76);
    v82 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v80 setTimbre_];

    v83 = *&v37[v74];
    if (v83)
    {
      v84 = v169;
      v78(v169, &v37[qword_28118F2E8], v76);
      v85 = v83;
      sub_26ECC5568();
      v81(v84, v76);
      v86 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      [v85 setPostSentencePauseDuration_];
    }
  }

  v87 = qword_28118F238;
  swift_beginAccess();
  v88 = v167;
  sub_26E7A5AB0(&v37[v87], v167, &qword_2806C6140, &qword_26ECC74F8);
  v90 = v172;
  v89 = v173;
  v91 = (*(v173 + 48))(v88, 1, v172);
  v92 = v168;
  v93 = v170;
  if (v91 == 1)
  {
    sub_26E7A59EC(v88, &qword_2806C6140, &qword_26ECC74F8);
    v94 = AXTTSLogCommon();
    if (v94)
    {
      v95 = v94;
      v96 = sub_26ECC5958();
      sub_26ECC5738("MauiAUSP failed with missing voice", 34, 2, &dword_26E793000, v95, v96, MEMORY[0x277D84F90]);

      [v37 cancelSpeechRequest];
      return;
    }

    goto LABEL_42;
  }

  (*(v89 + 32))(v168, v88, v90);
  v97 = [(objc_class *)v174 ssmlRepresentation];
  sub_26ECC5838();

  sub_26ECC5718();
  v98 = *&v37[v171];
  if (!v98)
  {
    aBlock = 0x3D6C6C6570735C1BLL;
    v176 = 0xE800000000000000;
    goto LABEL_34;
  }

  v99 = [v98 currentVoice];
  v100 = [v99 language];

  v101 = sub_26ECC5838();
  v103 = v102;

  if (v101 != 0x4E432D6E6D63 || v103 != 0xE600000000000000)
  {
    v104 = sub_26ECC5A68();

    aBlock = 0x3D6C6C6570735C1BLL;
    v176 = 0xE800000000000000;
    if (v104)
    {
      goto LABEL_33;
    }

LABEL_34:
    v105 = 0xE100000000000000;
    v106 = 48;
    goto LABEL_35;
  }

  aBlock = 0x3D6C6C6570735C1BLL;
  v176 = 0xE800000000000000;
LABEL_33:
  v105 = 0xE200000000000000;
  v106 = 12339;
LABEL_35:
  MEMORY[0x27437EA80](v106, v105);

  MEMORY[0x27437EA80](92, 0xE100000000000000);
  sub_26ECC55E8();
  v107 = __swift_project_boxed_opaque_existential_1(&aBlock, v178);
  MEMORY[0x28223BE20](v107);
  (*(v109 + 16))(v143 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26ECC5558();
  sub_26ECC5918();
  v110 = v151;
  v111 = v150;
  v112 = v152;
  (*(v151 + 104))(v150, *MEMORY[0x277D70388], v152);
  sub_26ECC5688();

  (*(v110 + 8))(v111, v112);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v113 = v162;
  v178 = v162;
  v179 = MEMORY[0x277D70390];
  v114 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  (*(v160 + 16))(v114, v93, v113);
  v115 = v157;
  sub_26ECC56E8();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v116 = sub_26ECC5668();
  v117 = v174;
  v118 = [(objc_class *)v174 ssmlRepresentation];
  v119 = sub_26ECC5838();
  v121 = v120;

  v122 = sub_26ECC56B8();
  v123 = v147;
  *v147 = v119;
  v123[1] = v121;
  v123[2] = v122;
  v123[3] = v124;
  v125 = v149;
  v145(v123, *MEMORY[0x277D70190], v149);
  v126 = [(objc_class *)v117 jobIdentifier];
  sub_26ECC5838();

  sub_26ECC5658();

  v144(v123, v125);
  *&v37[qword_28118F2F0] = 0;
  *&v37[qword_28118F308] = 0;
  v127 = v158;
  v128 = v153;
  v129 = v159;
  (*(v158 + 16))(v153, v115, v159);
  (*(v127 + 56))(v128, 0, 1, v129);
  v130 = qword_28118F230;
  swift_beginAccess();
  sub_26E7A5984(v128, &v37[v130], &qword_2806C6130, &qword_26ECC74E8);
  swift_endAccess();
  v131 = *&v37[v171];
  if (v131)
  {
    v132 = [v131 ruleSetRunner];
    v133 = swift_allocObject();
    *(v133 + 16) = v117;
    v179 = sub_26E7A27A0;
    v180 = v133;
    aBlock = MEMORY[0x277D85DD0];
    v176 = 1107296256;
    v177 = sub_26E7A1C18;
    v178 = &block_descriptor;
    v134 = _Block_copy(&aBlock);
    v135 = v117;

    [v132 setMatchLogger_];
    _Block_release(v134);
  }

  v136 = v156;
  sub_26ECC54F8();
  v137 = sub_26ECC5508();
  (*(*(v137 - 8) + 56))(v136, 0, 1, v137);
  v138 = qword_28118F338;
  swift_beginAccess();
  sub_26E7A5984(v136, &v37[v138], &qword_2806C6128, &qword_26ECC74E0);
  swift_endAccess();
  v139 = v172;
  v140 = *&v37[v171];
  if (v140)
  {
    v141 = v140;
    sub_26ECC56B8();
    v142 = sub_26ECC5828();

    [v141 speakString_];
  }

  (*(v127 + 8))(v115, v129);
  (*(v154 + 8))(v161, v155);
  (*(v160 + 8))(v170, v162);
  (*(v173 + 8))(v92, v139);
}

unint64_t sub_26E7A19E8()
{
  result = qword_2806C6150;
  if (!qword_2806C6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6150);
  }

  return result;
}

uint64_t sub_26E7A1A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v27 = a4;
  v28 = a8;
  v25 = a5;
  v26 = a3;
  v12 = sub_26ECC5598();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26ECC5678();
  v16 = sub_26ECC5668();

  v17 = [a7 identifier];
  v18 = sub_26ECC5838();
  v20 = v19;

  *v15 = a1;
  v15[1] = a2;
  v21 = v26;
  v15[2] = v25;
  v15[3] = a6;
  v22 = v27;
  v15[4] = v21;
  v15[5] = v22;
  v15[6] = v18;
  v15[7] = v20;
  (*(v13 + 104))(v15, *MEMORY[0x277D70170], v12);
  v23 = [v28 jobIdentifier];
  sub_26ECC5838();

  sub_26ECC5658();

  return (*(v13 + 8))(v15, v12);
}

void sub_26E7A1C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = sub_26ECC5838();
  v12 = v11;
  v13 = sub_26ECC5838();
  v15 = v14;

  v16 = a6;
  v9(v10, v12, a3, a4, v13, v15, v16);
}

void sub_26E7A1CF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  MauiAUSPAudioUnit.synthesizeSpeechRequest(_:)(v4);
}

Swift::Void __swiftcall MauiAUSPAudioUnit.cancelSpeechRequest()()
{
  v1 = v0;
  v2 = sub_26ECC5598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26ECC5678();
  v6 = sub_26ECC5668();
  (*(v3 + 104))(v5, *MEMORY[0x277D70178], v2);
  v7 = qword_28118F2B8;
  v8 = *(v1 + qword_28118F2B8);
  if (v8)
  {
    v9 = [v8 jobIdentifier];
    sub_26ECC5838();
  }

  sub_26ECC5658();

  (*(v3 + 8))(v5, v2);
  [*(v1 + qword_28118F358) cancelSpeaking];
  v10 = *(v1 + v7);
  *(v1 + v7) = 0;

  *(v1 + qword_28118F2F0) = 0;
  v11 = *(v1 + qword_28118F360);
  *(v1 + qword_28118F360) = 0;

  *(v1 + qword_28118F308) = 0;
}

void sub_26E7A1F1C(void *a1)
{
  v1 = a1;
  MauiAUSPAudioUnit.cancelSpeechRequest()();
}

id sub_26E7A1F64()
{
  sub_26E79E3A4(0, &unk_28118F1C8, 0x277CB8498);
  v0 = sub_26ECC58C8();

  return v0;
}

void sub_26E7A1FC4(uint64_t a1)
{
  v3 = sub_26ECC57A8();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v48 - v6;
  v7 = sub_26ECC5768();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_26ECC5788();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26ECC55F8();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v49 = v11;
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6238, &qword_26ECC7690);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v15 = qword_28118F358;
  v16 = v1;
  [*&v1[qword_28118F358] unloadAllVoiceResources];
  sub_26ECC56A8();
  v17 = sub_26ECC5558();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v53 = a1;
  v18 = sub_26ECC5698();
  sub_26E7A59EC(v14, &qword_2806C6238, &qword_26ECC7690);
  if (v18 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26ECC5A28())
  {
    v20 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x27437EC00](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = *&v16[v15];
      if (v24)
      {
        v25 = v24;
        [v25 loadRuleset_];
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v26 = dispatch_semaphore_create(0);
  v27 = *&v16[qword_28118F300];
  v29 = v50;
  v28 = v51;
  v30 = v52;
  (*(v51 + 16))(v50, v53, v52);
  v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v32 = (v49 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v16;
  (*(v28 + 32))(v33 + v31, v29, v30);
  *(v33 + v32) = v26;
  aBlock[4] = sub_26E7A5864;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26E7A3414;
  aBlock[3] = &block_descriptor_25;
  v34 = _Block_copy(aBlock);
  v35 = v27;
  v36 = v16;
  v37 = v26;
  v38 = v54;
  sub_26ECC5778();
  v64 = MEMORY[0x277D84F90];
  sub_26E7A58F4(&qword_2806C6240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6248, &qword_26ECC7698);
  sub_26E7A593C(&qword_2806C6250, &qword_2806C6248, &qword_26ECC7698, MEMORY[0x277D83970]);
  v39 = v56;
  v40 = v59;
  sub_26ECC59F8();
  MEMORY[0x27437EB80](0, v38, v39, v34);
  _Block_release(v34);

  (*(v58 + 8))(v39, v40);
  (*(v55 + 8))(v38, v57);

  v41 = v60;
  sub_26ECC5798();
  v42 = v61;
  sub_26ECC57B8();
  v43 = v63;
  v44 = *(v62 + 8);
  v44(v41, v63);
  sub_26ECC59A8();
  v44(v42, v43);
  if ((sub_26ECC5758() & 1) == 0)
  {
    goto LABEL_18;
  }

  v45 = AXTTSLogCommon();
  if (v45)
  {
    v46 = v45;
    v47 = sub_26ECC5958();
    sub_26ECC5738("Timed out loading voice resource", 32, 2, &dword_26E793000, v46, v47, MEMORY[0x277D84F90]);

LABEL_18:
    return;
  }

  __break(1u);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_26E7A27C0(char *a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6258, &qword_26ECC76A0);
  MEMORY[0x28223BE20](v59);
  v60 = &v54 - v5;
  v6 = sub_26ECC5558();
  v63 = *(v6 - 1);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C61F0, &qword_26ECC7660);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v54 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  v16 = sub_26ECC5528();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v54 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  sub_26ECC5518();
  v58 = *(v17 + 16);
  v58(v15, v21, v16);
  v65 = v17;
  v57 = *(v17 + 56);
  v57(v15, 0, 1, v16);
  v22 = qword_28118F2D8;
  swift_beginAccess();
  v61 = a1;
  sub_26E7A5984(v15, &a1[v22], &qword_2806C61F0, &qword_26ECC7660);
  swift_endAccess();
  v23 = sub_26ECC55A8();
  v24 = objc_opt_self();
  v56 = a2;
  sub_26ECC55C8();
  sub_26ECC5538();
  (v63)[1](v8, v64);
  v25 = sub_26ECC5828();

  v64 = v23;
  v26 = [v23 voiceType];
  v63 = v24;
  v27 = [v24 effectiveResourceForLanguageCode:v25 andVoiceType:v26];

  if (!v27)
  {
    v34 = v21;
    v32 = v65;
    v35 = v16;
    result = AXTTSLogCommon();
    if (result)
    {
      v37 = result;
      v38 = sub_26ECC5938();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6148, &unk_26ECC7500);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_26ECC74D0;
      v40 = sub_26ECC55B8();
      v42 = v41;
      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 64) = sub_26E7A19E8();
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      sub_26ECC5738("Could not find voice resource for TTS Resource %{PUBLIC}@", 57, 2, &dword_26E793000, v37, v38, v39);

      sub_26ECC59B8();
      v27 = v64;
      v16 = v35;
LABEL_15:

      return (*(v32 + 8))(v34, v16);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = v66;
  v58(v66, v21, v16);
  v57(v28, 0, 1, v16);
  v29 = v60;
  v30 = *(v59 + 48);
  sub_26E7A5AB0(v28, v60, &qword_2806C61F0, &qword_26ECC7660);
  v31 = v61;
  sub_26E7A5AB0(&v61[v22], v29 + v30, &qword_2806C61F0, &qword_26ECC7660);
  v32 = v65;
  v33 = *(v65 + 48);
  v34 = v21;
  if (v33(v29, 1, v16) == 1)
  {
    sub_26E7A59EC(v66, &qword_2806C61F0, &qword_26ECC7660);
    if (v33(v29 + v30, 1, v16) == 1)
    {
      sub_26E7A59EC(v29, &qword_2806C61F0, &qword_26ECC7660);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v43 = v55;
  sub_26E7A5AB0(v29, v55, &qword_2806C61F0, &qword_26ECC7660);
  if (v33(v29 + v30, 1, v16) == 1)
  {
    sub_26E7A59EC(v66, &qword_2806C61F0, &qword_26ECC7660);
    (*(v32 + 8))(v43, v16);
LABEL_9:
    sub_26E7A59EC(v29, &qword_2806C6258, &qword_26ECC76A0);
LABEL_10:
    sub_26ECC59B8();
    result = AXTTSLogCommon();
    if (result)
    {
      v44 = result;
      v45 = sub_26ECC5938();
      sub_26ECC5738("Requested resource changed during load", 38, 2, &dword_26E793000, v44, v45, MEMORY[0x277D84F90]);

      v27 = v44;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_17;
  }

  v46 = v54;
  (*(v32 + 32))(v54, v29 + v30, v16);
  sub_26E7A58F4(&qword_2806C6260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v47 = sub_26ECC5818();
  v48 = *(v32 + 8);
  v48(v46, v16);
  sub_26E7A59EC(v66, &qword_2806C61F0, &qword_26ECC7660);
  v48(v43, v16);
  v31 = v61;
  sub_26E7A59EC(v29, &qword_2806C61F0, &qword_26ECC7660);
  if ((v47 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v49 = swift_allocObject();
  *(v49 + 16) = v31;
  aBlock[4] = sub_26E7A5A4C;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26E7A3218;
  aBlock[3] = &block_descriptor_31;
  v50 = _Block_copy(aBlock);
  v51 = v31;

  [v63 enumerateLoadableResourcesInAsset:v27 usingBlock:v50];
  _Block_release(v50);
  result = AXTTSLogCommon();
  if (result)
  {
    v52 = result;
    v53 = sub_26ECC5948();
    sub_26ECC5738("Loaded siri voice resource.", 27, 2, &dword_26E793000, v52, v53, MEMORY[0x277D84F90]);

    sub_26ECC59B8();
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26E7A3020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = [objc_allocWithZone(TTSMauiVoiceResource) init];
  if (a3 != 0xD000000000000022 || 0x800000026EDAA6B0 != a4)
  {
    v21 = v12;
    if ((sub_26ECC5A68() & 1) == 0)
    {
      if (a3 == 0xD000000000000020 && 0x800000026EDAA6E0 == a4 || (sub_26ECC5A68() & 1) != 0)
      {
        v13 = 1;
      }

      else if (a3 == 0xD00000000000001FLL && 0x800000026EDAA710 == a4)
      {
        v13 = 2;
      }

      else if (sub_26ECC5A68())
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      [v21 setType_];
      v14 = sub_26ECC5828();
      [v21 setResourceName_];

      v15 = a5();
      v17 = v16;
      v18 = sub_26ECC54C8();
      sub_26E7A5A5C(v15, v17);
      [v21 setResourceData_];

      v19 = *(a8 + qword_28118F358);
      [v19 loadVoiceResource_];
    }
  }

  return MEMORY[0x2821F9730]();
}

uint64_t sub_26E7A3218(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v20 = sub_26ECC54B8();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 32);
  v10 = sub_26ECC5838();
  v12 = v11;
  v13 = sub_26ECC5838();
  v15 = v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_26ECC54A8();

  v19(v10, v12, v13, v15, sub_26E7A5A54, v17, v9);

  return (*(v7 + 8))(v9, v20);
}

uint64_t sub_26E7A33C0(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  v2 = sub_26ECC54D8();

  return v2;
}

uint64_t sub_26E7A3414(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26E7A3458(uint64_t a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6130, &qword_26ECC74E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_26ECC56D8();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v2[qword_28118F2B8];
  if (v12)
  {
    v13 = qword_28118F230;
    swift_beginAccess();
    sub_26E7A5AB0(&v2[v13], v6, &qword_2806C6130, &qword_26ECC74E8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_26E7A59EC(v6, &qword_2806C6130, &qword_26ECC74E8);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v14 = v12;
      v15 = [v2 speechSynthesisOutputMetadataBlock];
      if (v15)
      {
        v16 = v15;
        v27 = a2;
        v17 = [v14 ssmlRepresentation];
        v26 = sub_26ECC5838();
        v19 = v18;

        v28 = sub_26E7A5504(v20);
        v21 = sub_26E7A45D8(&v28);
        v22 = v28;
        MEMORY[0x28223BE20](v21);
        v23 = v26;
        *(&v25 - 6) = v11;
        *(&v25 - 5) = v23;
        *(&v25 - 4) = v19;
        *(&v25 - 3) = v2;
        *(&v25 - 2) = v14;
        *(&v25 - 2) = v27;
        sub_26E7A3B5C(sub_26E7A57E4, (&v25 - 8), v22);

        sub_26E79E3A4(0, &unk_2806C6208, 0x277CB8478);
        v24 = sub_26ECC58C8();

        (v16)[2](v16, v24, v14);

        _Block_release(v16);
      }

      else
      {
      }

      return (*(v8 + 8))(v11, v7);
    }
  }

  return result;
}

void sub_26E7A378C(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, unsigned int a6@<W6>, void *a7@<X8>)
{
  v37 = a5;
  v40 = a4;
  v12 = sub_26ECC5598();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v36 = a6;
    v41 = a7;
    v44 = v7;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    v35 = v15;
    [v15 wordRange];
    sub_26ECC56B8();
    sub_26ECC5928();
    v17 = v16;

    if (v17 & 1) != 0 || (sub_26ECC56C8(), (v18) || (v42 = a2, v43 = a3, sub_26E7A580C(), v24 = sub_26ECC5878(), sub_26ECC58A8(), v25 = sub_26ECC5898(), , v26 = v40 + qword_28118F320, (*(v40 + qword_28118F320 + 16) & 1) == 0) && *v26 == v24 && *(v26 + 8) == v25)
    {
      swift_unknownObjectRelease();
      v19 = 0;
    }

    else
    {
      *v26 = v24;
      *(v26 + 8) = v25;
      *(v26 + 16) = 0;
      sub_26ECC5678();
      v27 = sub_26ECC5668();
      *v14 = [v35 wordRange];
      v14[1] = v28;
      v14[2] = v24;
      v14[3] = v25;
      v30 = v38;
      v29 = v39;
      (*(v38 + 104))(v14, *MEMORY[0x277D70188], v39);
      v31 = [v37 jobIdentifier];
      sub_26ECC5838();
      v40 = v24;

      sub_26ECC5658();

      (*(v30 + 8))(v14, v29);
      v32 = v36;
      v33 = objc_allocWithZone(MEMORY[0x277CB8478]);
      v19 = [v33 initWithMarkerType:1 forTextRange:v40 atByteSampleOffset:{v25, v32}];
      swift_unknownObjectRelease();
    }

    a7 = v41;
    goto LABEL_12;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    v19 = 0;
    goto LABEL_12;
  }

  v21 = v20;
  swift_unknownObjectRetain();
  v22 = [v21 name];
  if (v22)
  {
    v23 = v22;
    v19 = [objc_allocWithZone(MEMORY[0x277CB8478]) initWithBookmarkName:v22 atByteSampleOffset:a6];
    swift_unknownObjectRelease();

LABEL_12:
    *a7 = v19;
    return;
  }

  __break(1u);
}

uint64_t sub_26E7A3B5C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = sub_26ECC5A28();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x27437EC00](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            swift_unknownObjectRelease();
            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        v9 = swift_unknownObjectRelease();
        if (v13)
        {
          MEMORY[0x27437EAB0](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26ECC58E8();
          }

          sub_26ECC5908();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26E7A3D18()
{
  sub_26E7A59EC(v0 + qword_28118F230, &qword_2806C6130, &qword_26ECC74E8);

  sub_26E7A59EC(v0 + qword_28118F238, &qword_2806C6140, &qword_26ECC74F8);
  sub_26E7A59EC(v0 + qword_28118F2D8, &qword_2806C61F0, &qword_26ECC7660);

  sub_26E7A59EC(v0 + qword_28118F338, &qword_2806C6128, &qword_26ECC74E0);
  v1 = qword_28118F2C0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6138, &qword_26ECC74F0);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + qword_28118F2E8;

  return v5(v3, v2);
}

id MauiAUSPAudioUnit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MauiAUSPAudioUnit(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26E7A3F10(uint64_t a1)
{
  sub_26E7A4334(319, &qword_28118F250, MEMORY[0x277D70378]);
  if (v1 <= 0x3F)
  {
    sub_26E7A4334(319, &unk_28118F258, MEMORY[0x277D702F8]);
    if (v2 <= 0x3F)
    {
      sub_26E7A4334(319, &qword_28118F380, MEMORY[0x277CC95F0]);
      if (v3 <= 0x3F)
      {
        sub_26E7A4334(319, &qword_28118F388, MEMORY[0x277CC9578]);
        if (v4 <= 0x3F)
        {
          sub_26E7A4388();
          if (v5 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_26E7A4170(uint64_t a1)
{
  sub_26E7A59EC(a1 + qword_28118F230, &qword_2806C6130, &qword_26ECC74E8);

  sub_26E7A59EC(a1 + qword_28118F238, &qword_2806C6140, &qword_26ECC74F8);
  sub_26E7A59EC(a1 + qword_28118F2D8, &qword_2806C61F0, &qword_26ECC7660);

  sub_26E7A59EC(a1 + qword_28118F338, &qword_2806C6128, &qword_26ECC74E0);
  v2 = qword_28118F2C0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6138, &qword_26ECC74F0);
  v6 = *(*(v3 - 8) + 8);
  (v6)((v3 - 8), a1 + v2, v3);
  v4 = a1 + qword_28118F2E8;

  return v6(v4, v3);
}

void sub_26E7A4334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26ECC59E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26E7A4388()
{
  if (!qword_28118F370)
  {
    v0 = sub_26ECC5588();
    if (!v1)
    {
      atomic_store(v0, &qword_28118F370);
    }
  }
}

uint64_t getEnumTagSinglePayload for MauiAUSPParameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MauiAUSPParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26E7A4560()
{
  result = qword_2806C61C0;
  if (!qword_2806C61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C61C0);
  }

  return result;
}

uint64_t sub_26E7A45D8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26E7A57D0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_26E7A47E0(v6);
  return sub_26ECC5A18();
}

char *sub_26E7A4654(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6230, &qword_26ECC7688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_26E7A4758(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C61F8, &unk_26ECC7668);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_26E7A47E0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26ECC5A58();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6218, &qword_26ECC7678);
        v6 = sub_26ECC58F8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_26E7A4A2C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26E7A48F0(0, v2, 1, a1);
  }
}

char *sub_26E7A48F0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = &result[-a3];
LABEL_5:
    v16 = a3;
    v14 = v6;
    v15 = v5;
    while (1)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v7 = result;
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          v8 = result;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v9 = [v7 wordRange];
          v10 = [v8 wordRange];
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if (v9 >= v10)
          {
LABEL_4:
            a3 = v16 + 1;
            v5 = v15 + 1;
            v6 = v14 - 1;
            if (v16 + 1 == a2)
            {
              return result;
            }

            goto LABEL_5;
          }
        }
      }

      if (!v4)
      {
        break;
      }

      v11 = *v5;
      *v5 = v5[1];
      v5[1] = v11;
      --v5;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_26E7A4A2C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_102:
    v4 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    v9 = v111;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_104;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = 0x277D70000uLL;
  while (1)
  {
    v9 = v6;
    v10 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v11 = *a3;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      v104 = v5;
      if (v12)
      {
        v13 = v9;
        v14 = v12;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v17 = [v14 wordRange];
          v4 = [v16 wordRange];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v18 = v17 < v4;
        }

        else
        {
          v18 = 1;
        }

        v107 = v18;
        v9 = v13;
      }

      else
      {
        v107 = 1;
      }

      v10 = v9 + 2;
      if (v9 + 2 >= v5)
      {
        goto LABEL_21;
      }

      v98 = v9;
      v19 = v11 + 8 * v9 + 16;
      do
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20 && (v21 = v20, objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0))
        {
          v23 = v22;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v24 = [v21 wordRange];
          v5 = v104;
          v4 = [v23 wordRange];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (((v107 ^ (v24 >= v4)) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (!v107)
        {
          v9 = v98;
          goto LABEL_31;
        }

        ++v10;
        v19 += 8;
      }

      while (v5 != v10);
      v10 = v5;
LABEL_20:
      v9 = v98;
LABEL_21:
      if (v107)
      {
        if (v10 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v10)
        {
          v25 = 8 * v10 - 8;
          v26 = 8 * v9;
          v27 = v10;
          v28 = v9;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v29 = *(v30 + v26);
              *(v30 + v26) = *(v30 + v25);
              *(v30 + v25) = v29;
            }

            ++v28;
            v25 -= 8;
            v26 += 8;
          }

          while (v28 < v27);
        }
      }
    }

LABEL_31:
    v31 = a3[1];
    if (v10 < v31)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_132;
      }

      if (v10 - v9 < a4)
      {
        v32 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_133;
        }

        if (v32 >= v31)
        {
          v32 = a3[1];
        }

        if (v32 < v9)
        {
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          v4 = sub_26E7A54F0(v4);
LABEL_104:
          v90 = v4 + 16;
          v91 = *(v4 + 2);
          if (v91 >= 2)
          {
            while (*a3)
            {
              v92 = &v4[16 * v91];
              v93 = *v92;
              v94 = &v90[2 * v91];
              v95 = v94[1];
              sub_26E7A5184((*a3 + 8 * *v92), (*a3 + 8 * *v94), (*a3 + 8 * v95), v7);
              if (v9)
              {
                goto LABEL_111;
              }

              if (v95 < v93)
              {
                goto LABEL_128;
              }

              if (v91 - 2 >= *v90)
              {
                goto LABEL_129;
              }

              *v92 = v93;
              *(v92 + 1) = v95;
              v96 = *v90 - v91;
              if (*v90 < v91)
              {
                goto LABEL_130;
              }

              v91 = *v90 - 1;
              memmove(v94, v94 + 2, 16 * v96);
              *v90 = v91;
              if (v91 <= 1)
              {
                goto LABEL_111;
              }
            }

            goto LABEL_140;
          }

LABEL_111:

          return;
        }

        if (v10 != v32)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v10 < v9)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_26E7A4654(0, *(v7 + 2) + 1, 1, v7);
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v7 = sub_26E7A4654((v43 > 1), v44 + 1, 1, v7);
    }

    *(v7 + 2) = v45;
    v4 = v7 + 32;
    v46 = &v7[16 * v44 + 32];
    *v46 = v9;
    *(v46 + 1) = v10;
    v106 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    v109 = v10;
    if (v44)
    {
      while (1)
      {
        v47 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v48 = *(v7 + 4);
          v49 = *(v7 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_70:
          if (v51)
          {
            goto LABEL_118;
          }

          v64 = &v7[16 * v45];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_120;
          }

          v70 = &v4[16 * v47];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_125;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v45 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v45 < 2)
        {
          goto LABEL_126;
        }

        v74 = &v7[16 * v45];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_85:
        if (v69)
        {
          goto LABEL_122;
        }

        v77 = &v4[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_124;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_92:
        if (v47 - 1 >= v45)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v85 = v8;
        v86 = &v4[16 * v47 - 16];
        v87 = *v86;
        v9 = &v4[16 * v47];
        v88 = *(v9 + 8);
        sub_26E7A5184((*a3 + 8 * *v86), (*a3 + 8 * *v9), (*a3 + 8 * v88), v106);
        if (v111)
        {
          goto LABEL_111;
        }

        if (v88 < v87)
        {
          goto LABEL_113;
        }

        if (v47 > *(v7 + 2))
        {
          goto LABEL_114;
        }

        *v86 = v87;
        *(v86 + 1) = v88;
        v89 = *(v7 + 2);
        if (v47 >= v89)
        {
          goto LABEL_115;
        }

        v45 = v89 - 1;
        memmove(&v4[16 * v47], (v9 + 16), 16 * (v89 - 1 - v47));
        *(v7 + 2) = v89 - 1;
        v8 = v85;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = &v4[16 * v45];
      v53 = *(v52 - 8);
      v54 = *(v52 - 7);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_116;
      }

      v57 = *(v52 - 6);
      v56 = *(v52 - 5);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_117;
      }

      v59 = &v7[16 * v45];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_119;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_121;
      }

      if (v63 >= v55)
      {
        v81 = &v4[16 * v47];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_127;
        }

        if (v50 < v84)
        {
          v47 = v45 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = v109;
    v5 = a3[1];
    if (v109 >= v5)
    {
      goto LABEL_102;
    }
  }

  v97 = v7;
  v99 = v9;
  v33 = *a3;
  v34 = (*a3 + 8 * v10 - 8);
  v35 = (v9 - v10);
  v102 = v32;
LABEL_41:
  v105 = v34;
  v108 = v10;
  v103 = v35;
  while (1)
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v37 = v36;
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v40 = [v37 wordRange];
        v4 = [v39 wordRange];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v40 >= v4)
        {
LABEL_40:
          ++v10;
          v34 = v105 + 8;
          v35 = v103 - 1;
          if (v108 + 1 != v102)
          {
            goto LABEL_41;
          }

          v10 = v102;
          v7 = v97;
          v9 = v99;
          goto LABEL_50;
        }
      }
    }

    if (!v33)
    {
      break;
    }

    v41 = *v34;
    *v34 = *(v34 + 1);
    *(v34 + 1) = v41;
    v34 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_26E7A5184(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      v23 = a4;
      memmove(a4, __dst, 8 * v12);
      a4 = v23;
    }

    __srca = a4;
    v14 = &a4[8 * v12];
    if (v10 < 8)
    {
      v13 = a4;
      goto LABEL_44;
    }

    v13 = a4;
    if (v5 > v6)
    {
      do
      {
        v4 -= 8;
        v34 = v14;
        v32 = v5 - 8;
        while (1)
        {
          v24 = v4 + 8;
          v14 -= 8;
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (!v25)
          {
            break;
          }

          v26 = v25;
          objc_opt_self();
          v27 = swift_dynamicCastObjCClass();
          if (!v27)
          {
            break;
          }

          v28 = v27;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v29 = [v26 wordRange];
          v30 = [v28 wordRange];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v29 < v30)
          {
            break;
          }

          if (v24 != v34)
          {
            *v4 = *v14;
          }

          v4 -= 8;
          v34 = v14;
          v13 = __srca;
          if (v14 <= __srca)
          {
            goto LABEL_44;
          }
        }

        if (v24 != v5)
        {
          *v4 = *v32;
        }

        v13 = __srca;
        v14 = v34;
        if (v34 <= __srca)
        {
          break;
        }

        v5 -= 8;
      }

      while (v32 > v6);
      v5 = v32;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    if (v7 >= 8 && v5 < v4)
    {
      v14 = &v13[8 * v9];
      while (1)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          break;
        }

        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {
          break;
        }

        v18 = v17;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v16 wordRange];
        v20 = [v18 wordRange];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v19 < v20)
        {
          break;
        }

        v21 = v13;
        v22 = v6 == v13;
        v13 += 8;
        if (!v22)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 8;
        if (v13 >= v14 || v5 >= v4)
        {
          v5 = v6;
          goto LABEL_44;
        }
      }

      v21 = v5;
      v22 = v6 == v5;
      v5 += 8;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v21;
      goto LABEL_17;
    }

    v5 = v6;
    v14 = &v13[8 * v9];
  }

LABEL_44:
  if (v5 != v13 || v5 >= &v13[(v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v5, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

void *sub_26E7A5504(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_26ECC5A28();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_26E7A4758(v3, 0);
  sub_26E7A5598((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26E7A5598(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26ECC5A28();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26ECC5A28();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26E7A593C(&qword_2806C6228, &qword_2806C6220, &qword_26ECC7680, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6220, &qword_26ECC7680);
            v9 = sub_26E7A5748(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6218, &qword_26ECC7678);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_26E7A5748(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x27437EC00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_26E7A57C8;
  }

  __break(1u);
  return result;
}

unint64_t sub_26E7A580C()
{
  result = qword_28118F220;
  if (!qword_28118F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28118F220);
  }

  return result;
}

id sub_26E7A5864()
{
  v1 = *(sub_26ECC55F8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26E7A27C0(v3, v0 + v2, v4);
}

uint64_t sub_26E7A58F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26E7A593C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26E7A5984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26E7A59EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26E7A5A5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26E7A5AB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26E7A5B6C()
{
  result = qword_2806C6270;
  if (!qword_2806C6270)
  {
    sub_26E79E3A4(255, &qword_2806C6268, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6270);
  }

  return result;
}

uint64_t brkhlp_ScanFilesForEnginesAndAddOns(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    ssftmap_Clear(a1[5]);
  }

  result = brkhlp_FindAllEnginesAndAddOns(a1, *(a2 + 16));
  if (*(a2 + 32) && (result & 0x80000000) == 0 && *(a2 + 24))
  {
    v6 = 0;
    do
    {
      result = brkhlp_FindAllEnginesAndAddOns(a1, *(*(a2 + 32) + 8 * v6));
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      ++v6;
    }

    while (v6 < *(a2 + 24));
  }

  return result;
}

uint64_t brkhlp_FindAllEnginesAndAddOns(void *a1, char *a2)
{
  v35 = 0;
  v4 = a1[2];
  __s1 = 0;
  v42 = 0;
  v39 = 0;
  __s = 0;
  v38 = 0;
  v37 = 1;
  FirstFile = brkhlp_FindFirstFile(v4, a2, "*.hdr", &__s, &v42);
  if ((FirstFile & 0x80000000) != 0)
  {
    return FirstFile;
  }

  v34 = 0;
  do
  {
    if (!v42)
    {
      FirstFile = brkhlp_FindFirstFile(v4, a2, "*.dat", &__s, &__s1);
      if ((FirstFile & 0x80000000) != 0)
      {
        return FirstFile;
      }

      if (!__s1)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v14 = __s;
        log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem szFullPathName=%s", __s);
        v15 = cstdlib_strrchr(v14, 47);
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14 - 1;
        }

        v17 = cstdlib_strlen(v14) + v14 - v16;
        v18 = heap_Alloc(*(v4 + 8), (v17 - 4));
        if (!v18)
        {
          return 2169528330;
        }

        v19 = v18;
        v20 = (v17 - 5);
        cstdlib_strncpy(v18, v16 + 1, v20);
        v19[v20] = 0;
        log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem szSurrogateBrokerString=%s", v19);
        v21 = __s;
        v22 = hdrpars_CreateSurrogateTagMap(*(v4 + 8), v19, __s, &v39);
        if ((v22 & 0x80000000) != 0)
        {
          NextFile = v22;
        }

        else
        {
          NextFile = brkhlp_AddItemToClass(v21, v39, a1);
          if ((NextFile & 0x80000000) == 0)
          {
            log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem AddedNewSurrogateBrokerString=%s", v19);
          }
        }

        heap_Free(*(v4 + 8), v19);
        heap_Free(*(v4 + 8), v21);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        NextFile = brkhlp_FindNextFile(__s1, a2, &__s, *(v4 + 8), &v37);
        p_s1 = &__s1;
        if ((NextFile & 0x80000000) != 0 || !v37)
        {
          goto LABEL_42;
        }

        if (!__s1)
        {
          goto LABEL_43;
        }
      }

      v24 = &__s1;
      goto LABEL_85;
    }

    v6 = __s;
    v7 = cstdlib_strlen(__s);
    if (v7 < 5 || cstdlib_strncmp(&v6[v7 - 4], ".hdr", 4uLL))
    {
      goto LABEL_6;
    }

    NextFile = hdrpars_ReadHeader(*a1, a1[1], v6, 0, &v39, &v38);
    if ((NextFile & 0x80000000) != 0)
    {
      log_OutPublic(*(v4 + 32), "BROKER", 276, "%s%s", "file", v6);
      if ((NextFile & 0x1FFF) == 0xA)
      {
        goto LABEL_83;
      }

LABEL_6:
      heap_Free(*(v4 + 8), v6);
      goto LABEL_7;
    }

    if (!v38)
    {
      v13 = brkhlp_ExpandComponentPath(a1, v39);
      if ((v13 & 0x80000000) == 0)
      {
        NextFile = brkhlp_AddItemToClass(v6, v39, a1);
        goto LABEL_25;
      }

      NextFile = v13;
LABEL_83:
      heap_Free(*(v4 + 8), v6);
LABEL_84:
      v24 = &v42;
LABEL_85:
      v31 = *v24;
      goto LABEL_86;
    }

    v36 = 0;
    if (vector_GetElemAt(v38, 0, &v36))
    {
      v10 = 1;
      while (1)
      {
        if ((NextFile & 0x80000000) != 0)
        {
          goto LABEL_18;
        }

        v11 = brkhlp_ExpandComponentPath(a1, *v36);
        if ((v11 & 0x80000000) != 0)
        {
          break;
        }

        NextFile = brkhlp_AddItemToClass(v6, *v36, a1);
LABEL_19:
        if (!vector_GetElemAt(v38, v10++, &v36))
        {
          goto LABEL_20;
        }
      }

      NextFile = v11;
LABEL_18:
      ssftmap_ObjClose(*v36);
      goto LABEL_19;
    }

LABEL_20:
    vector_ObjClose(v38);
    v38 = 0;
LABEL_25:
    heap_Free(*(v4 + 8), v6);
    if ((NextFile & 0x80000000) != 0)
    {
      goto LABEL_84;
    }

LABEL_7:
    NextFile = brkhlp_FindNextFile(v42, a2, &__s, *(v4 + 8), &v37);
    p_s1 = &v42;
  }

  while ((NextFile & 0x80000000) == 0 && v37);
LABEL_42:
  osspi_FindClose(*p_s1);
  if ((NextFile & 0x80000000) != 0)
  {
    return NextFile;
  }

LABEL_43:
  v34 = 0;
  v35 = 0;
  if (!a2)
  {
    goto LABEL_69;
  }

  __s1 = 0;
  v42 = 0;
  FirstFile = brkhlp_ConcatenatePath(&v42, a2, "*", 0, *(v4 + 8));
  if ((FirstFile & 0x80000000) != 0)
  {
    return FirstFile;
  }

  v23 = v42;
  LODWORD(NextFile) = osspi_FindOpen(*(v4 + 64), *(v4 + 8), v42, 16, &__s1, &v35);
  if ((NextFile & 0x80000000) == 0)
  {
    while ((NextFile & 0x80000000) == 0)
    {
      if (cstdlib_strcmp(__s1, ".") && cstdlib_strcmp(__s1, ".."))
      {
        v26 = brkhlp_ConcatenatePath(&v34, a2, __s1, 0, *(v4 + 8));
        LODWORD(NextFile) = 0;
        if ((v26 & 0x80000000) == 0)
        {
LABEL_58:
          if (__s1)
          {
            heap_Free(*(v4 + 8), __s1);
          }

          goto LABEL_60;
        }

        v33 = v26;
        v25 = v35;
        LODWORD(NextFile) = v33;
        if (!v35)
        {
LABEL_56:
          v35 = 0;
          goto LABEL_58;
        }

LABEL_55:
        osspi_FindClose(v25);
        goto LABEL_56;
      }

      heap_Free(*(v4 + 8), __s1);
      __s1 = 0;
      LODWORD(NextFile) = osspi_FindNext(v35, &__s1);
      if ((NextFile & 0x1FFF) == 0x14)
      {
        NextFile = 0;
        goto LABEL_63;
      }
    }

    v25 = v35;
    if (!v35)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_60:
  if ((NextFile & 0x1FFF) == 0x14)
  {
    NextFile = 0;
  }

  else
  {
    NextFile = NextFile;
  }

LABEL_63:
  if (v23)
  {
    heap_Free(*(v4 + 8), v23);
  }

  if (!v34 && v35)
  {
    osspi_FindClose(v35);
    v35 = 0;
  }

  if ((NextFile & 0x80000000) == 0)
  {
LABEL_69:
    if (v35)
    {
      while (1)
      {
        v27 = v34;
        NextFile = brkhlp_FindAllEnginesAndAddOns(a1, v34);
        heap_Free(*(v4 + 8), v27);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        v28 = v35;
        v29 = *(v4 + 8);
        v42 = 0;
        v34 = 0;
        Next = osspi_FindNext(v35, &v42);
        if ((Next & 0x80000000) != 0)
        {
          if ((Next & 0x1FFF) == 0x14)
          {
            NextFile = 0;
          }

          else
          {
            NextFile = Next;
          }

          break;
        }

        while ((Next & 0x80000000) == 0 && (!cstdlib_strcmp(v42, ".") || !cstdlib_strcmp(v42, "..")))
        {
          heap_Free(v29, v42);
          v42 = 0;
          Next = osspi_FindNext(v28, &v42);
          if ((Next & 0x1FFF) == 0x14)
          {
            NextFile = 0;
            goto LABEL_80;
          }
        }

        NextFile = brkhlp_ConcatenatePath(&v34, a2, v42, 0, v29);
        heap_Free(v29, v42);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        NextFile = 0;
        if (!v35)
        {
          return NextFile;
        }
      }

LABEL_80:
      v31 = v35;
LABEL_86:
      osspi_FindClose(v31);
    }

    else
    {
      return 0;
    }
  }

  return NextFile;
}

uint64_t brkhlp_FindFirstFile(uint64_t a1, char *a2, const char *a3, char **a4, uint64_t *a5)
{
  v5 = 0;
  *a5 = 0;
  if (a2 && a3)
  {
    v14 = 0;
    v15 = 0;
    v10 = brkhlp_ConcatenatePath(&v15, a2, a3, 0, *(a1 + 8));
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    else
    {
      v11 = v15;
      Open = osspi_FindOpen(*(a1 + 64), *(a1 + 8), v15, 0, &v14, a5);
      if ((Open & 0x80000000) != 0)
      {
        if ((Open & 0x1FFF) == 0x14)
        {
          v5 = 0;
        }

        else
        {
          v5 = Open;
        }
      }

      else
      {
        v5 = brkhlp_ConcatenatePath(a4, a2, v14, 0, *(a1 + 8));
        if ((v5 & 0x80000000) != 0)
        {
          if (*a5)
          {
            osspi_FindClose(*a5);
          }

          *a5 = 0;
        }

        heap_Free(*(a1 + 8), v14);
      }

      heap_Free(*(a1 + 8), v11);
    }
  }

  return v5;
}

uint64_t brkhlp_ExpandComponentPath(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  memset(__b, 0, sizeof(__b));
  v13 = 0;
  v3 = *(a1 + 16);
  v4 = "COMPONENT";
  v5 = brkhlp_SearchTag(a2, "COMPONENT", &v16);
  if (v5 < 0 && (v4 = "COMMONCOMPONENT", v6 = brkhlp_SearchTag(a2, "COMMONCOMPONENT", &v16), (v6 & 0x80000000) != 0) || (v6 = brkhlp_SearchTag(a2, "HDRFILE", &v15), (v6 & 0x80000000) != 0) || (v6 = brkhlp_ConcatenatePath(&v13, v15, v16, 1, *(v3 + 8)), (v6 & 0x80000000) != 0))
  {
    v9 = v6;
  }

  else
  {
    cstdlib_memset(__b, 0, 0x18uLL);
    v7 = v13;
    __b[0] = v13;
    v8 = ssftmap_Insert(a2, "FULLPATHCOMPONENT", __b);
    if ((v8 & 0x80000000) == 0 || (v9 = v8, (v8 & 0x1FFF) == 2))
    {
      v9 = ssftmap_Remove(a2, v4);
    }

    heap_Free(*(v3 + 8), v7);
    if (v5 < 0 && (v9 & 0x80000000) == 0)
    {
      cstdlib_memset(__b, 0, 0x18uLL);
      __b[0] = "1";
      v10 = ssftmap_Insert(a2, "COMMON", __b);
      if ((v10 & 0x1FFF) == 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (v10 < 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  if (v9 == -2125438956)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t brkhlp_FindNextFile(void *a1, char *a2, char **a3, void *a4, _DWORD *a5)
{
  v12 = 0;
  *a3 = 0;
  *a5 = 0;
  Next = osspi_FindNext(a1, &v12);
  if ((Next & 0x80000000) != 0)
  {
    if ((Next & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return Next;
    }
  }

  else
  {
    v10 = brkhlp_ConcatenatePath(a3, a2, v12, 0, a4);
    heap_Free(a4, v12);
    if ((v10 & 0x80000000) == 0)
    {
      v10 = 0;
      *a5 = 1;
    }
  }

  return v10;
}

uint64_t brkhlp_ConcatenatePath(char **a1, char *__s, const char *a3, int a4, uint64_t a5)
{
  v5 = 2169528320;
  if (__s && a3)
  {
    v11 = cstdlib_strlen(__s);
    v12 = cstdlib_strlen(a3);
    v13 = heap_Alloc(a5, v11 + v12 + 2);
    *a1 = v13;
    if (v13)
    {
      cstdlib_strcpy(v13, __s);
      if (a4)
      {
        v14 = v11++;
        while (v14)
        {
          v15 = (*a1)[--v14];
          --v11;
          if (v15 == 47)
          {
            goto LABEL_11;
          }
        }

        v11 = 0;
LABEL_11:
        (*a1)[v11] = 0;
      }

      if (v12 && v11 && __s[v11 - 1] != 47)
      {
        cstdlib_strcat(*a1, "/");
      }

      cstdlib_strcat(*a1, a3);
      v16 = cstdlib_strchr(*a1 + 1, 46);
      if (v16)
      {
        v17 = v16;
        while (1)
        {
          v18 = (v17 - 1);
          if (*(v17 - 1) != 47)
          {
            goto LABEL_31;
          }

          v19 = v17 + 1;
          v20 = v17[1];
          if (v20 == 46)
          {
            break;
          }

          if (v20 != 47)
          {
            goto LABEL_31;
          }

          v21 = cstdlib_strlen(v17 + 2);
          cstdlib_memmove(v17, v17 + 2, v21 + 1);
          v19 = v17;
LABEL_32:
          v17 = cstdlib_strchr(v19, 46);
          if (!v17)
          {
            return 0;
          }
        }

        if (v17[2] == 47)
        {
          v22 = *a1;
          if (v18 > *a1)
          {
            v23 = 0;
            v24 = v17 - 1;
            while (1)
            {
              v26 = *--v24;
              v25 = v26;
              if (v26 == 47)
              {
                break;
              }

              if (v25 != 46)
              {
                v23 = 1;
              }

              v18 = v24;
              if (v24 <= v22)
              {
                if (!v23)
                {
                  goto LABEL_32;
                }

                goto LABEL_35;
              }
            }

            v22 = v18;
            if (!v23)
            {
              goto LABEL_32;
            }

LABEL_35:
            v27 = cstdlib_strlen(v17 + 3);
            cstdlib_memmove(v22, v17 + 3, v27 + 1);
            v19 = v22;
          }

          goto LABEL_32;
        }

LABEL_31:
        v19 = v17 + 1;
        goto LABEL_32;
      }

      return 0;
    }

    else
    {
      return 2169528330;
    }
  }

  return v5;
}

uint64_t engbrk_AddSystemInfo(uint64_t a1, char *a2)
{
  result = 2169528326;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(a1 + 24));
      if ((result & 0x80000000) == 0)
      {
        v5 = brkhlp_ScanBufferForEnginesAndAddOns(*(a1 + 16), a1, a2);
        LODWORD(result) = critsec_Leave(*(a1 + 24));
        if (v5 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t brkhlp_ScanBufferForEnginesAndAddOns(uint64_t a1, void *a2, char *__s1)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = 2169528326;
  v16 = 0;
  v17 = 0;
  strcpy(v18, "BINBROKER");
  if (!a2)
  {
    return v3;
  }

  i = __s1;
  if (!__s1)
  {
    return v3;
  }

  if (cstdlib_strncmp(__s1, "<?xml", 5uLL))
  {
    v7 = cstdlib_strpbrk(i, "\n\r");
    if (v7)
    {
      for (i = v7; ; ++i)
      {
        v8 = *i;
        if (v8 != 13 && v8 != 10)
        {
          break;
        }
      }
    }
  }

  v3 = hdrpars_ReadHeader(*a2, a2[1], 0, i, &v17, &v16);
  if ((v3 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "BROKER", 276, 0);
    return v3;
  }

  if (!v16)
  {
    v3 = brkhlp_AddItemToClass(v18, v17, a2);
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    goto LABEL_24;
  }

  v15 = 0;
  if (vector_GetElemAt(v16, 0, &v15))
  {
    v10 = 1;
    do
    {
      if ((v3 & 0x80000000) != 0)
      {
        ssftmap_ObjClose(*v15);
      }

      else
      {
        v3 = brkhlp_AddItemToClass(v18, *v15, a2);
      }
    }

    while (vector_GetElemAt(v16, v10++, &v15));
  }

  vector_ObjClose(v16);
  v16 = 0;
  if ((v3 & 0x80000000) == 0)
  {
LABEL_24:
    v3 = critsec_Enter(a2[7]);
    if ((v3 & 0x80000000) == 0)
    {
      if (!ssftmap_GetSize(a2[5]))
      {
        LODWORD(v3) = -2125438710;
      }

      v12 = critsec_Leave(a2[7]);
      if (v3 > -1 && v12 < 0)
      {
        return v12;
      }

      else
      {
        return v3;
      }
    }
  }

  return v3;
}

uint64_t engbrk_GetSystemInfo(void *a1, uint64_t *a2, _DWORD *a3)
{
  v3 = 2169528326;
  v15 = 0;
  if (a1 && a2 && a3)
  {
    *a2 = 0;
    *a3 = 0;
    if ((ssftstring_ObjOpen(*(a1[2] + 8), &v15) & 0x80000000) == 0)
    {
      v7 = critsec_Enter(a1[7]);
      if ((v7 & 0x80000000) != 0)
      {
        v3 = v7;
LABEL_22:
        ssftstring_ObjClose(v15);
        return v3;
      }

      v8 = v15;
      Size = ssftmap_GetSize(a1[5]);
      ssftstring_Reserve(v8, 500 * Size);
      v10 = v15;
      v11 = a1[5];
      v16 = 0;
      v17 = 0;
      if (v11)
      {
        v18 = 0;
        v12 = ssftmap_IteratorOpen(v11, 0, 1, &v16);
        v3 = v12;
        if ((v12 & 0x80000000) == 0)
        {
          if ((ssftmap_IteratorNext(v16, &v17, &v18) & 0x80000000) == 0)
          {
            while (1)
            {
              appended = ssftstring_AppendCStr(v10, "<?xml version=1.0?>\n<NUANCE>\n<VERSION>NUAN_1.0</VERSION>\n<HEADER>\n");
              if ((appended & 0x80000000) != 0)
              {
                break;
              }

              appended = StoreTagInfo(v10, *v18);
              if ((appended & 0x80000000) != 0)
              {
                break;
              }

              v3 = ssftstring_AppendCStr(v10, "</HEADER>\n</NUANCE>\n");
              if ((v3 & 0x80000000) != 0)
              {
                goto LABEL_20;
              }

              if ((ssftmap_IteratorNext(v16, &v17, &v18) & 0x80000000) != 0)
              {
                goto LABEL_13;
              }
            }

            v3 = appended;
LABEL_20:
            ssftmap_IteratorClose(v16);
            goto LABEL_21;
          }

LABEL_13:
          ssftmap_IteratorClose(v16);
          goto LABEL_18;
        }

        if ((v12 & 0x1FFF) != 0x14)
        {
LABEL_21:
          critsec_Leave(a1[7]);
          goto LABEL_22;
        }
      }

      v3 = 0;
LABEL_18:
      *a3 = ssftstring_Size(v15) + 1;
      *a2 = ssftstring_CStrDetach(v15);
      goto LABEL_21;
    }

    return 2169528330;
  }

  return v3;
}

uint64_t engbrk_FreeSystemInfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    heap_Free(*(*(a1 + 16) + 8), a2);
  }

  return 0;
}

uint64_t StoreTagInfo(uint64_t a1, uint64_t a2)
{
  __s = 0;
  v11 = 0;
  v9 = 0;
  if (!a2)
  {
    LODWORD(v3) = 0;
LABEL_29:
    if ((v3 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  v3 = ssftmap_IteratorOpen(a2, 0, 1, &v11);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  if ((ssftmap_IteratorNext(v11, &__s, &v9) & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    appended = ssftstring_AppendCStr(a1, "<");
    if ((appended & 0x80000000) != 0 || (appended = ssftstring_AppendCStr(a1, __s), (appended & 0x80000000) != 0))
    {
LABEL_33:
      v3 = appended;
      goto LABEL_34;
    }

    v5 = *(v9 + 8);
    v13 = 0;
    v14 = 0;
    v12 = 0;
    if (v5)
    {
      break;
    }

LABEL_18:
    appended = ssftstring_AppendCStr(a1, ">");
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    appended = ssftstring_AppendCStr(a1, *v9);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    if (ssftmap_GetSize(*(v9 + 16)))
    {
      appended = ssftstring_AppendCStr(a1, "\n");
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      appended = StoreTagInfo(a1, *(v9 + 16));
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    appended = ssftstring_AppendCStr(a1, "</");
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    appended = ssftstring_AppendCStr(a1, __s);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    v3 = ssftstring_AppendCStr(a1, ">\n");
    if ((v3 & 0x80000000) != 0 || (ssftmap_IteratorNext(v11, &__s, &v9) & 0x80000000) != 0)
    {
      goto LABEL_34;
    }
  }

  v6 = ssftmap_IteratorOpen(v5, 0, 1, &v14);
  if ((v6 & 0x80000000) != 0)
  {
    v3 = v6;
    if ((v6 & 0x1FFF) != 0x14)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  do
  {
    if ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) != 0)
    {
      ssftmap_IteratorClose(v14);
      goto LABEL_18;
    }

    v7 = ssftstring_AppendCStr(a1, " ");
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, v13);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, "=");
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, v12);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, "");
  }

  while ((v7 & 0x80000000) == 0);
  v3 = v7;
  ssftmap_IteratorClose(v14);
LABEL_34:
  ssftmap_IteratorClose(v11);
  return v3;
}

uint64_t brkhlp_SearchTag(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  v4 = ssftmap_Find(a1, a2, &v6);
  if ((v4 & 0x80000000) == 0 && v6)
  {
    *a3 = *v6;
  }

  if (v4 < 0)
  {
    return 2169528340;
  }

  else
  {
    return 0;
  }
}

uint64_t brkhlp_ElemCompareKeysBrokerString(char *a1, char *a2)
{
  if (a1 | a2)
  {
    LODWORD(v2) = -1;
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v2;
  }

  if (a1 && a2)
  {
    return LH_stricmp(a1, a2);
  }

  else
  {
    return v2;
  }
}

uint64_t brkhlp_AddItemToClass(const char *a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v6 = ssftmap_Find(a2, "BROKERSTRING", &v9);
  if (v6 < 0 || !v9)
  {
    if (v6 < 0)
    {
      hdrpars_FreeHeader(a2);
      return 2169528340;
    }

    v7 = 0;
  }

  else
  {
    v7 = *v9;
  }

  return brkhlp_AddNewAddOn(v7, a1, a2, a3, 0);
}

uint64_t brkhlp_AddNewAddOn(const char *a1, const char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a3)
  {
    return 2169528327;
  }

  __b = 0;
  v17 = 0;
  v18 = 0;
  v10 = a4[2];
  cstdlib_memset(&__b, 0, 0x18uLL);
  __b = a3;
  v17 = a1;
  v18 = a5;
  log_OutText(*(v10 + 32), "BROKER", 4, 0, "brkhlp_AddNewAddOn: detect= %s", a1);
  v11 = critsec_Enter(a4[7]);
  if (v11 < 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = ssftmap_Insert(a4[5], v17, &__b);
    if (v12 < 0)
    {
      log_OutPublic(*(v10 + 32), "BROKER", 289, "%s%s", "file", a2);
    }

    v13 = critsec_Leave(a4[7]);
    if (v13 < 0 && v12 > -1)
    {
      v12 = v13;
    }
  }

  if (__b)
  {
    hdrpars_FreeHeader(__b);
  }

  if ((v12 & 0x1FFF) == 2)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t engbrk_ClassOpen(_WORD *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t **a5)
{
  v5 = 2169528321;
  *v32 = 0;
  if ((*a3 & 0xFFFE) == 2)
  {
    inited = InitRsrcFunction(a1, a2, v32);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(*v32 + 32), "BROKER", 4, 0, "brk_ClassOpen: Begin");
      v11 = heap_Calloc(*(*v32 + 8), 1, 72);
      if (v11)
      {
        v12 = v11;
        *v11 = a1;
        v11[1] = a2;
        v13 = *v32;
        v11[2] = *v32;
        v14 = *(v13 + 8);
        v15 = heap_Calloc(v14, 1, 48);
        if (!v15)
        {
LABEL_22:
          v12[6] = 0;
          v5 = 2169528330;
          goto LABEL_32;
        }

        v16 = v15;
        *v15 = *a3;
        *(v15 + 8) = 0;
        v17 = *(a3 + 2);
        if (v17)
        {
          v18 = brkhlp_CloneString(v14, v17);
          *(v16 + 16) = v18;
          if (!v18)
          {
            goto LABEL_21;
          }
        }

        else
        {
          *(v15 + 16) = 0;
        }

        *(v16 + 24) = 0;
        if (a3[12])
        {
          v19 = heap_Calloc(v14, a3[12], 8);
          *(v16 + 32) = v19;
          if (!v19)
          {
LABEL_21:
            brkhlp_FreeProductInfo(v14, v16);
            goto LABEL_22;
          }

          if (a3[12])
          {
            v20 = 0;
            do
            {
              *(*(v16 + 32) + 8 * v20) = brkhlp_CloneString(v14, *(*(a3 + 4) + 8 * v20));
              if (!*(*(v16 + 32) + 8 * v20))
              {
                goto LABEL_21;
              }

              ++*(v16 + 24);
            }

            while (++v20 < a3[12]);
          }
        }

        else
        {
          *(v16 + 32) = 0;
        }

        v21 = *(a3 + 5);
        if (v21)
        {
          v22 = brkhlp_CloneString(v14, v21);
          *(v16 + 40) = v22;
          if (!v22)
          {
            goto LABEL_21;
          }
        }

        else
        {
          *(v16 + 40) = 0;
        }

        v12[6] = v16;
        v23 = critsec_ObjOpen(*(*v32 + 16), *(*v32 + 8), v12 + 3);
        if ((v23 & 0x80000000) != 0 || (v24 = *(*v32 + 8), v29 = BRK_ADDON_IELEM, v30 = *&off_287EE6E60, v31 = off_287EE6E70, v23 = ssftmap_ObjOpen(v24, 0, &v29, v12 + 5), (v23 & 0x80000000) != 0) || (v25 = *(*v32 + 8), v29 = BRK_INTF_IELEM, v30 = *off_287EE6E88, v31 = off_287EE6E98, v23 = ssftmap_ObjOpen(v25, 0, &v29, v12 + 4), (v23 & 0x80000000) != 0) || (v23 = critsec_ObjOpen(*(*v32 + 16), *(*v32 + 8), v12 + 7), (v23 & 0x80000000) != 0))
        {
          v5 = v23;
          goto LABEL_32;
        }

        v26 = *a3;
        if (v26 == 3)
        {
          v27 = brkhlp_ScanBufferForEnginesAndAddOns(*v32, v12, *(a3 + 5));
        }

        else
        {
          if (v26 != 2)
          {
            goto LABEL_32;
          }

          v27 = brkhlp_ScanFilesForEnginesAndAddOns(v12, a3, 1);
        }

        v5 = v27;
        if ((v27 & 0x80000000) == 0)
        {
          *a5 = v12;
          goto LABEL_33;
        }

LABEL_32:
        engbrk_ClassClose(v12);
LABEL_33:
        log_OutText(*(*v32 + 32), "BROKER", 4, 0, "brk_ClassOpen: End %x", v5);
        return v5;
      }

      return 2169528330;
    }
  }

  return v5;
}

uint64_t engbrk_ClassClose(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a1[4];
  if (v3)
  {
    v4 = ssftmap_ObjClose(v3);
    a1[4] = 0;
    v5 = v4 & (v4 >> 31);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = ssftmap_ObjClose(v6);
    a1[5] = 0;
    if (v7 >= 0 || v5 <= -1)
    {
      v5 = v5;
    }

    else
    {
      v5 = v7;
    }
  }

  v9 = a1[3];
  if (v9)
  {
    v10 = critsec_ObjClose(v9);
    a1[3] = 0;
    if (v10 >= 0 || v5 <= -1)
    {
      v5 = v5;
    }

    else
    {
      v5 = v10;
    }
  }

  v12 = a1[7];
  if (v12)
  {
    v13 = critsec_ObjClose(v12);
    a1[7] = 0;
    if (v13 >= 0 || v5 <= -1)
    {
      v5 = v5;
    }

    else
    {
      v5 = v13;
    }
  }

  v15 = a1[6];
  if (v15)
  {
    brkhlp_FreeProductInfo(*(v2 + 8), v15);
    a1[6] = 0;
  }

  heap_Free(*(v2 + 8), a1);
  return v5;
}

void *brkhlp_FreeProductInfo(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      heap_Free(result, v4);
    }

    v5 = *(a2 + 32);
    if (v5)
    {
      if (*(a2 + 24))
      {
        v6 = 0;
        do
        {
          heap_Free(v3, *(*(a2 + 32) + 8 * v6++));
        }

        while (v6 < *(a2 + 24));
        v5 = *(a2 + 32);
      }

      heap_Free(v3, v5);
    }

    v7 = *(a2 + 40);
    if (v7)
    {
      heap_Free(v3, v7);
    }

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t engbrk_ClassUpdateEx(void *a1, int a2)
{
  if (!a1)
  {
    return 2169528327;
  }

  log_OutText(*(a1[2] + 32), "BROKER", 4, 0, "brk_ClassUpdate: Begin");
  v4 = brkhlp_ScanFilesForEnginesAndAddOns(a1, a1[6], a2);
  if ((v4 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1[2] + 32), "BROKER", v4, "brk_ClassUpdate: Scan failed");
  }

  log_OutText(*(a1[2] + 32), "BROKER", 4, 0, "brk_ClassUpdate: End %x", v4);
  return v4;
}

uint64_t engbrk_ObjOpen(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2169528327;
  v11 = 0;
  *a3 = 0;
  if (a2)
  {
    v6 = *(a2 + 16);
    v7 = *(v6 + 32);
    if (a1)
    {
      log_OutText(v7, "BROKER", 4, 0, "brk_ObjOpen  Object identifier=%s: Begin");
    }

    else
    {
      log_OutText(v7, "BROKER", 4, 0, "brk_ObjOpen  Object identifier=NULL: Begin");
    }

    v8 = heap_Calloc(*(v6 + 8), 1, 40);
    v9 = *(v6 + 32);
    if (v8)
    {
      *v8 = a2;
      *(v8 + 8) = v9;
      *(v8 + 24) = 0;
      if ((paramc_ParamGetStr(*(v6 + 40), "broker_mmap_clc_data", &v11) & 0x80000000) == 0 && (!LH_stricmp(v11, "yes") || !LH_stricmp(v11, "true")))
      {
        *(v8 + 24) = 1;
      }

      *(v8 + 32) = 0;
      *a3 = v8;
      log_OutText(*(v6 + 32), "BROKER", 4, 0, "brk_ObjOpen : End");
      return 0;
    }

    else
    {
      log_OutPublic(v9, "BROKER", 200, 0);
      return 2169528330;
    }
  }

  return v3;
}

uint64_t engbrk_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2169528327;
  }

  v2 = *(*a1 + 16);
  log_OutText(*(v2 + 32), "BROKER", 4, 0, "brk_ObjClose : Begin");
  v3 = 0;
  if (*(*(*a1 + 16) + 24) == a1)
  {
    v4 = critsec_Enter(*(*a1 + 24));
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    LODWORD(v3) = ssftmap_Clear(*(*a1 + 32));
    v5 = critsec_Leave(*(*a1 + 24));
    if (v3 > -1 && v5 < 0)
    {
      v3 = v5;
    }

    else
    {
      v3 = v3;
    }
  }

  heap_Free(*(v2 + 8), a1);
  log_OutText(*(v2 + 32), "BROKER", 4, 0, "brk_ObjClose : End");
  return v3;
}

uint64_t engbrk_SetLog(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 2169528327;
  }

  if (!a2)
  {
    a2 = *(*(*a1 + 16) + 32);
  }

  v2 = 0;
  a1[1] = a2;
  return v2;
}

uint64_t engbrk_SetRsrc(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 2169528327;
  }

  result = 0;
  *(a1 + 32) = a2;
  return result;
}

uint64_t engbrk_ObjGetClass(uint64_t *a1, void *a2)
{
  if (a1 && a2)
  {
    result = 0;
    v4 = *a1;
  }

  else
  {
    result = 2169528327;
    if (!a2)
    {
      return result;
    }

    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t engbrk_InterfaceQueryEx(void *a1, char *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v6 = -2125438956;
  v7 = 2169528327;
  v38 = 0;
  if (a1 && a2 && a6)
  {
    memset(__b, 0, sizeof(__b));
    v14 = *(*a1 + 16);
    if (a5)
    {
      *a5 = safeh_GetNullHandle();
      a5[1] = v15;
    }

    *a6 = 0;
    cstdlib_memset(__b, 0, 0x20uLL);
    log_OutText(a1[1], "BROKER", 4, 0, "brk_InterfaceQuery BrokerString=%s : Begin", a2);
    v7 = critsec_Enter(*(*a1 + 24));
    if ((v7 & 0x80000000) == 0)
    {
      if ((ssftmap_Find(*(*a1 + 32), a2, &v38) & 0x80000000) == 0)
      {
        v16 = v38;
        v17 = v38[1];
        if (v17)
        {
LABEL_9:
          *a6 = v17;
          if (a5)
          {
            *a5 = *(v16 + 1);
          }

          v18 = 1;
          goto LABEL_22;
        }

        v6 = -2125438963;
        if (!a4)
        {
          log_OutPublic(a1[1], "BROKER", 259, "%s%s%s%x", "BrokerString", a2, "lhError", -2125438963);
          v6 = -2125438963;
        }

        goto LABEL_21;
      }

      v19 = ssftmap_Insert(*(*a1 + 32), a2, __b);
      if (v19 < 0 || (v19 = ssftmap_Find(*(*a1 + 32), a2, &v38), v19 < 0))
      {
        v6 = v19;
        log_OutPublic(a1[1], "BROKER", 200, "%s%s");
        goto LABEL_21;
      }

      v20 = brkhlp_SearchAddOn(a1, a2, &v42);
      if (v20 < 0)
      {
        if ((v20 & 0x1FFF) == 0xA)
        {
          v6 = -2125438966;
          goto LABEL_21;
        }
      }

      else
      {
        v21 = v42;
        v22 = *v42;
        v43 = 0;
        v23 = ssftmap_Find(v22, "FULLPATHCOMPONENT", &v43);
        if ((v23 & 0x80000000) == 0 && v43)
        {
          v41 = *v43;
          v24 = a4 == 0;
          goto LABEL_33;
        }

        v24 = a4 == 0;
        if (a4 || (v23 & 0x80000000) == 0)
        {
          if ((v23 & 0x80000000) == 0)
          {
LABEL_33:
            v27 = *v21;
            v43 = 0;
            v28 = ssftmap_Find(v27, "GETINTERFACE", &v43);
            if (v28 < 0 || !v43)
            {
              if (v28 < 0)
              {
                if (v24)
                {
                  log_OutPublic(a1[1], "BROKER", 262, "%s%s%s%x");
                }

                goto LABEL_21;
              }

              v29 = 0;
            }

            else
            {
              v29 = *v43;
            }

            v6 = 0;
            v40 = v29;
LABEL_42:
            v31 = v39;
            if ((v6 & 0x80000000) == 0 && !v39)
            {
              log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : osspi_DynModOpen %s, %d", v41, 0);
              v32 = osspi_DynModOpen(*(v14 + 64), *(v14 + 8), v41, 0, v38);
              v6 = v32;
              if (!a4 && v32 < 0)
              {
                log_OutPublic(a1[1], "BROKER", 263, "%s%s%s%x");
                goto LABEL_21;
              }

              if (v32 < 0)
              {
                goto LABEL_21;
              }

              log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : osspi_DynModObjLoad %s", v40);
              v33 = osspi_DynModObjLoad(*v38, v40, &v39);
              v6 = v33;
              if (!a4 && v33 < 0)
              {
                log_OutPublic(a1[1], "BROKER", 264, "%s%s%s%x");
                goto LABEL_21;
              }

              v31 = v39;
            }

            if (v6 < 0 || !v31 || (v34 = v31(a3, v38 + 1), v6 = v34, a4) || (v34 & 0x80000000) == 0)
            {
              if ((v6 & 0x80000000) == 0)
              {
                v16 = v38;
                v17 = v38[1];
                v35 = *(v17 + 16);
                if (v35)
                {
                  v36 = v35(**a1, *(*a1 + 8), v38 + 2);
                  v6 = v36;
                  if (!a4 && v36 < 0)
                  {
                    log_OutPublic(a1[1], "BROKER", 266, "%s%s%s%x");
                    goto LABEL_21;
                  }

                  if (v36 < 0)
                  {
                    goto LABEL_21;
                  }

                  v16 = v38;
                  v17 = v38[1];
                }

                LODWORD(v7) = v6;
                goto LABEL_9;
              }
            }

            else
            {
              log_OutPublic(a1[1], "BROKER", 265, "%s%s%s%x");
            }

LABEL_21:
            log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : BrokerString=%s: Module Not Found (%x)", a2, v6);
            v18 = 0;
            LODWORD(v7) = v6;
LABEL_22:
            v25 = critsec_Leave(*(*a1 + 24));
            if ((v18 & (v25 < 0)) != 0)
            {
              v7 = v25;
            }

            else
            {
              v7 = v7;
            }

            log_OutText(a1[1], "BROKER", 4, 0, "brk_InterfaceQuery BrokerString=%s : End", a2);
            return v7;
          }
        }

        else
        {
          log_OutPublic(a1[1], "BROKER", 260, "%s%s%s%x", "BrokerString", a2, "lhError", -2125438956);
        }
      }

      BuiltinInterface = brkhlp_GetBuiltinInterface(a2, &v39, &v41, &v40);
      v6 = BuiltinInterface;
      if (!a4 && BuiltinInterface < 0)
      {
        log_OutPublic(a1[1], "BROKER", 261, "%s%s%s%x");
        goto LABEL_21;
      }

      goto LABEL_42;
    }
  }

  return v7;
}

uint64_t brkhlp_SearchAddOn(uint64_t a1, char *a2, void *a3)
{
  *a3 = 0;
  result = 2169528333;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(*a1 + 56));
      if ((result & 0x80000000) == 0)
      {
        v7 = brkhlp_InternalSearchAddOn(a1, a2, a3);
        LODWORD(result) = critsec_Leave(*(*a1 + 56));
        if (v7 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v7;
        }
      }
    }
  }

  return result;
}

uint64_t engbrk_InterfaceRelease(uint64_t a1, uint64_t a2)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_InterfaceRelease : Begin");
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_InterfaceRelease : End");
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_TagQueryEx(void *a1, char *a2, const char *a3, char a4, const char **a5)
{
  v16 = 0;
  v5 = 2169528327;
  if (!a1 || !a5 || !a3 || !a2 || !*a1)
  {
    return v5;
  }

  *a5 = 0;
  log_OutText(a1[1], "BROKER", 4, 0, "brk_TagQuery BrokerString=%s TagName=%s : Begin", a2, a3);
  v11 = brkhlp_SearchAddOn(a1, a2, &v16);
  if (v11 < 0)
  {
    if ((v11 & 0x1FFF) == 0xA)
    {
      v5 = 2169528330;
      goto LABEL_16;
    }

    v5 = 2169528333;
LABEL_13:
    v13 = a1[1];
    if (a4)
    {
      log_OutText(v13, "BROKER", 3, 0, "brk_TagQuery : BrokerString=%s TagName=%s  Failure (%x)", a2, a3, v5);
    }

    else
    {
      log_OutPublic(v13, "BROKER", 267, "%s%s%s%s%s%x", "Broker String", a2, "Tag Name", a3, "lhError", v5);
    }

    goto LABEL_16;
  }

  v12 = brkhlp_SearchTag(*v16, a3, a5);
  if ((v12 & 0x80000000) != 0)
  {
    v5 = v12;
    goto LABEL_13;
  }

  v5 = 0;
LABEL_16:
  v14 = "";
  if (*a5)
  {
    v14 = *a5;
  }

  log_OutText(a1[1], "BROKER", 4, 0, "brk_TagQuery TagContents = %p %s: End", *a5, v14);
  return v5;
}

uint64_t engbrk_TagRelease(uint64_t a1, const void *a2)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_TagRelease TagContents address = %p : Begin", a2);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_TagRelease : End");
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_ComponentTableIteratorOpen(uint64_t a1, char *a2, char **a3)
{
  v3 = 2169528327;
  if (a1 && a3 && a2 && *a1)
  {
    v7 = *(*a1 + 16);
    log_OutText(*(v7 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorOpen Query=%s: Begin", a2);
    v8 = heap_Calloc(*(v7 + 8), 1, 72);
    *a3 = v8;
    if (v8)
    {
      *v8 = v7;
      *(*a3 + 1) = a1;
      String = brkhlp_CreateString(*a3 + 2, a2, *(v7 + 8));
      if ((String & 0x80000000) == 0)
      {
        v3 = critsec_Enter(*(*a1 + 56));
        v10 = *a3;
        if ((v3 & 0x80000000) == 0)
        {
          v11 = ssftmap_IteratorOpen(*(*a1 + 40), a2, 0, (v10 + 3));
          LODWORD(v3) = (v11 & 0x80001FFF) == 0x80000014 ? 0 : v11;
          v12 = critsec_Leave(*(*a1 + 56));
          v13 = v3 > -1 && v12 < 0;
          v3 = v13 ? v12 : v3;
          v10 = *a3;
          if ((v3 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_22;
      }

      v3 = String;
    }

    else
    {
      v3 = 2169528330;
    }

    v10 = *a3;
LABEL_22:
    if (v10)
    {
      engbrk_ComponentTableIteratorClose(v10);
      v10 = 0;
      *a3 = 0;
    }

LABEL_24:
    log_OutText(*(v7 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorOpen iterator address = %p: End", v10);
  }

  return v3;
}

uint64_t brkhlp_CreateString(char **a1, char *__s, uint64_t a3)
{
  v3 = 2169528320;
  if (!a1)
  {
    return 2169528327;
  }

  *a1 = 0;
  if (__s)
  {
    v7 = cstdlib_strlen(__s);
    v8 = heap_Alloc(a3, (v7 + 1));
    *a1 = v8;
    if (v8)
    {
      cstdlib_strcpy(v8, __s);
      return 0;
    }

    else
    {
      return 2169528330;
    }
  }

  return v3;
}

uint64_t engbrk_ComponentTableIteratorClose(void *a1)
{
  if (!a1)
  {
    return 2169528327;
  }

  v2 = *a1;
  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorClose iterator=%p: Begin", a1);
  v3 = a1[2];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    ssftmap_IteratorClose(v4);
  }

  heap_Free(*(v2 + 8), a1);
  log_OutText(*(v2 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorClose: End");
  return 0;
}

uint64_t engbrk_ComponentTableIteratorNext(void *a1, const char **a2, void *a3)
{
  v29 = 0;
  v30 = 0;
  if (!a1)
  {
    return 2169528327;
  }

  v3 = a2;
  v5 = *a1;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  log_OutText(*(v5 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorNext iterator=%p: Begin", a1);
  LODWORD(v6) = brkhlp_SizeOfNextBlock(a1[2]);
  v7 = ssftmap_IteratorNext(a1[3], &v30, &v29);
  if ((v7 & 0x80000000) != 0)
  {
LABEL_19:
    v8 = v7;
  }

  else
  {
    v6 = v6;
    v8 = 2169528330;
    v28 = v5;
    v26 = v6;
    while (1)
    {
      if ((LH_strnicmp(a1[2], v30, v6) & 0x80000000) != 0)
      {
        v8 = 2169528343;
        goto LABEL_33;
      }

      v9 = *(v5 + 8);
      v10 = v30;
      v11 = a1[2];
      v12 = cstdlib_strlen(v11);
      v13 = heap_Alloc(v9, (v12 + 1));
      if (!v13)
      {
        goto LABEL_33;
      }

      v14 = v13;
      v15 = v3;
      if (!cstdlib_strlen(v11))
      {
        break;
      }

      v16 = v11;
      v17 = v10;
      while (1)
      {
        Block = brkhlp_SizeOfNextBlock(v16);
        cstdlib_strncpy(v14, v16, Block);
        v14[Block] = 0;
        v19 = cstdlib_strstr(v17, v14);
        if (!v19)
        {
          break;
        }

        v17 = &v19[Block];
        if (Block)
        {
          if (v14[Block - 1] != 47 && v17 - v10 != cstdlib_strlen(v10))
          {
            break;
          }
        }

        v16 += (Block + 1);
        if (v16 - v11 >= cstdlib_strlen(v11))
        {
          goto LABEL_21;
        }
      }

      heap_Free(v9, v14);
      v7 = ssftmap_IteratorNext(a1[3], &v30, &v29);
      v3 = v15;
      v5 = v28;
      v8 = 2169528330;
      v6 = v26;
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    heap_Free(v9, v14);
    v3 = v15;
    if (v15)
    {
      *v15 = v30;
    }

    if (a3)
    {
      v20 = v29;
      a1[4] = v30;
      *(a1 + 7) = 0u;
      *(a1 + 5) = 0u;
      v21 = brkhlp_SearchTag(*v20, "NAME", a1 + 5);
      if ((v21 & 0x80000000) == 0 || (v8 = v21, v21 == -2125438956))
      {
        v22 = brkhlp_SearchTag(*v29, "LANGUAGE", a1 + 7);
        if ((v22 & 0x80000000) == 0 || (v8 = v22, v22 == -2125438956))
        {
          v23 = brkhlp_SearchTag(*v29, "VERSION", a1 + 6);
          if ((v23 & 0x80000000) == 0 || (v8 = v23, v23 == -2125438956))
          {
            v8 = 0;
            *a3 = a1 + 4;
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v5 = v28;
  }

LABEL_33:
  v24 = "";
  if (v3 && *v3)
  {
    v24 = *v3;
  }

  log_OutText(*(v5 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorNext szBrkString=%s: End", v24);
  return v8;
}

size_t brkhlp_SizeOfNextBlock(char *a1)
{
  v2 = cstdlib_strchr(a1, 42);
  if (v2)
  {
    return v2 - a1;
  }

  else
  {
    return cstdlib_strlen(a1);
  }
}

uint64_t engbrk_DataReplace(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v4 = 2169528327;
  if (a1 && a2 && a3)
  {
    v7 = *(*a1 + 16);
    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataReplace BrokerString=%s : Begin", a2);
    v8 = brkhlp_SearchAddOn(a1, a2, &v14);
    if ((v8 & 0x80000000) != 0)
    {
      v12 = v8;
      log_OutPublic(a1[1], "BROKER", 293, "%s%s", "brokerString", a2);
      if ((v12 & 0x1FFF) == 0xA)
      {
        v4 = 2169528330;
LABEL_16:
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataReplace : End");
        return v4;
      }
    }

    else
    {
      v9 = *v14;
      v15 = 0;
      v10 = ssftmap_Find(v9, "FULLPATHCOMPONENT", &v15);
      if ((v10 & 0x80000000) == 0 && v15)
      {
        v11 = *v15;
        goto LABEL_12;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v11 = 0;
LABEL_12:
        v4 = osspi_DataReplace(*(v7 + 64), *(v7 + 8), v11);
        if ((v4 & 0x80000000) != 0)
        {
          log_OutPublic(a1[1], "BROKER", 295, "%s%s%s%x", "brokerString", a2, "lhError", v4);
        }

        goto LABEL_16;
      }

      log_OutPublic(a1[1], "BROKER", 294, "%s%s", "brokerString", a2);
      v12 = 2169528340;
    }

    v4 = v12;
    goto LABEL_16;
  }

  return v4;
}

uint64_t engbrk_DataOpenEx(void *a1, char *__s, char a3, uint64_t **a4)
{
  v5 = 2169528330;
  v80 = 0;
  *v81 = 0;
  result = 2169528327;
  if (a1)
  {
    v7 = __s;
    if (__s)
    {
      v8 = a4;
      if (a4)
      {
        v10 = *(*a1 + 16);
        if (a1[4])
        {
          v11 = a1[4];
        }

        else
        {
          v11 = *(*a1 + 16);
        }

        *a4 = 0;
        v12 = cstdlib_strlen(__s);
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataOpen : BrokerString=%s : Begin", v7);
        v13 = heap_Calloc(*(v10 + 8), 1, 48);
        if (!v13)
        {
          hlp_ReleaseUriFetcherInterface(v11, 0);
LABEL_119:
          log_OutText(a1[1], "BROKER", 4, 0, "brk_DataOpen : End %x", v5);
          return v5;
        }

        v14 = v13;
        v75 = v11;
        v15 = IsThisUrlOrRealPath(v7, v12, 0);
        v16 = cstdlib_strchr(v7, 58);
        v17 = v16;
        if (v16)
        {
          v18 = v16 == v7;
        }

        else
        {
          v18 = 1;
        }

        v19 = !v18 && v15 == 0;
        v20 = v19;
        v72 = v15;
        if (v19)
        {
          v21 = critsec_Enter(*(*a1 + 24));
          if ((v21 & 0x80000000) != 0)
          {
            v31 = v21;
            hlp_ReleaseUriFetcherInterface(v75, v14);
            v74 = 0;
            v17 = 0;
            v5 = v31;
            goto LABEL_114;
          }

          v22 = v17 - v7;
          v23 = heap_Alloc(*(v10 + 8), (v17 - v7 + 1));
          if (!v23)
          {
            hlp_ReleaseUriFetcherInterface(v75, v14);
            v74 = 0;
            v17 = 0;
LABEL_106:
            v63 = critsec_Leave(*(*a1 + 24));
            if (v5 > -1 && v63 < 0)
            {
              v5 = v63;
            }

            else
            {
              v5 = v5;
            }

LABEL_112:
            if ((v5 & 0x80000000) == 0)
            {
              *v8 = v14;
LABEL_115:
              if (v74)
              {
                heap_Free(*(v10 + 8), v74);
              }

              if (v17)
              {
                heap_Free(*(v10 + 8), v17);
              }

              goto LABEL_119;
            }

LABEL_114:
            heap_Free(*(v10 + 8), v14);
            goto LABEL_115;
          }

          v69 = v8;
          v24 = a3;
          v25 = v10;
          v26 = v14;
          v27 = v20;
          v28 = v23;
          cstdlib_strncpy(v23, v7, v22);
          v28[v22] = 0;
          v74 = v28;
          v7 = v28;
          v20 = v27;
          v14 = v26;
          v10 = v25;
          a3 = v24;
          v8 = v69;
          v15 = v72;
        }

        else
        {
          v74 = 0;
        }

        if (v15)
        {
          v17 = 0;
        }

        v29 = brkhlp_SearchAddOn(a1, v7, v81);
        v30 = v29;
        if ((v29 & 0x80000000) == 0)
        {
          log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on broker string %s", v7);
          goto LABEL_27;
        }

        if ((v29 & 0x1FFF) == 0xA)
        {
          goto LABEL_31;
        }

        v71 = v17;
        v34 = *(v10 + 8);
        v35 = cstdlib_strlen(v7);
        v17 = heap_Alloc(v34, (v35 + 4));
        if (!v17)
        {
          goto LABEL_104;
        }

        if (!engbrk_CreateSurrogateBrokerString(v7, v17))
        {
          goto LABEL_43;
        }

        v30 = brkhlp_SearchAddOn(a1, v17, v81);
        if ((v30 & 0x80000000) == 0)
        {
          log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v17);
        }

        if ((v30 & 0x1FFF) == 0xA)
        {
          goto LABEL_31;
        }

        if ((v30 & 0x80000000) != 0)
        {
LABEL_43:
          cstdlib_strcpy(v17, v7);
          v36 = cstdlib_strstr(v17, "mpthreeml");
          if (!v36)
          {
            goto LABEL_56;
          }

          cstdlib_strcpy(v36, "mpthreevadml");
          v37 = brkhlp_SearchAddOn(a1, v17, v81);
          v30 = v37;
          if ((v37 & 0x80000000) == 0)
          {
            log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v17);
            goto LABEL_46;
          }

          if ((v37 & 0x1FFF) == 0xA)
          {
            goto LABEL_31;
          }

          if (engbrk_CreateSurrogateBrokerString(v17, v17))
          {
            v30 = brkhlp_SearchAddOn(a1, v17, v81);
            if ((v30 & 0x80000000) == 0)
            {
              log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v17);
            }

            if ((v30 & 0x1FFF) == 0xA)
            {
              goto LABEL_31;
            }

            heap_Free(*(v10 + 8), v17);
            v17 = v71;
            if ((v30 & 0x80000000) == 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
LABEL_56:
            heap_Free(*(v10 + 8), v17);
            v17 = v71;
          }

          if (v17)
          {
            v38 = brkhlp_RegisterAddon(v7, 0, 0, v81, *a1);
            if ((v38 & 0x80000000) != 0)
            {
              v17 = 0;
              v5 = v38;
              goto LABEL_104;
            }
          }

LABEL_59:
          v70 = v17;
          if (v72)
          {
            v17 = 0;
            v33 = v7;
LABEL_66:
            if (UriGetUrlPrefixLength(v33, 0) && (objc_GetObject(*(v75 + 48), "URIFETCHER", &v80) & 0x80000000) == 0)
            {
              v45 = v80;
              v14[3] = *(v80 + 8);
              *(v14 + 2) = *(v45 + 16);
            }

LABEL_69:
            v73 = v14 + 3;
            v5 = osspi_DataOpenEx(*(v10 + 64), *(v10 + 8), v14[3], v14[4], v14[5], v33, v14);
            if ((v5 & 0x80000000) != 0)
            {
              if (a3)
              {
                log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : osspi_DataOpen failed: %s, %x", v33, v5);
              }

              else
              {
                v52 = cstdlib_strcmp(v33, v7);
                v53 = a1[1];
                if (v52)
                {
                  log_OutPublic(v53, "BROKER", 275, "%s%s%s%s%s%x", "BrokerString", v7);
                }

                else
                {
                  log_OutPublic(v53, "BROKER", 275, "%s%s%s%x");
                }
              }

              goto LABEL_104;
            }

            log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : osspi_DataOpen %s, %p", v33, *v14);
            if (!v70 || (v67 = a3, v46 = cstdlib_strstr(v7, "clc"), v47 = cstdlib_strstr(v7, "clmnn"), v68 = *v81, v48 = clcarchive_ObjOpen(**a1, *(*a1 + 8), v7, (*v81 + 16)), v5 = v48, (v48 & 0x80000000) != 0))
            {
LABEL_104:
              v55 = v75;
              goto LABEL_105;
            }

            v49 = (v47 | v46) != 0;
            if (v47 | v46 && *(a1 + 6))
            {
              v50 = 0;
              v51 = (v48 & 0x1FFF) == 1;
            }

            else
            {
              v54 = osspi_ClcDataOpen(*v14, *(v68 + 16));
              v5 = v54;
              v50 = v54 >> 31;
              v51 = (v54 & 0x1FFF) == 1;
              if ((v54 & 0x1FFF) != 1)
              {
                v55 = v75;
                if ((v54 & 0x80000000) != 0)
                {
                  v51 = 0;
                  *(v68 + 16) = 0;
                }

                goto LABEL_83;
              }
            }

            v55 = v75;
LABEL_83:
            v56 = v20;
            if (*(a1 + 6))
            {
              v57 = v49;
            }

            else
            {
              v57 = 0;
            }

            if ((v51 & v50 & 1) != 0 || v57)
            {
              v78 = 0;
              v79 = 0;
              memset(v77, 0, sizeof(v77));
              clcarchive_GetMemoryStreamInterface(v77);
              v76 = 0;
              v58 = engbrk_DataMapEx(a1, v14, 0, &v79, &v78);
              if ((v58 & 0x80000000) != 0)
              {
                v5 = v58;
              }

              else
              {
                LODWORD(v5) = clcarchive_Parse(*(v68 + 16), v77, &v78, &v76, 1);
                v59 = engbrk_DataUnmap(a1, v14, v78);
                if (v5 > -1 && v59 < 0)
                {
                  LODWORD(v5) = v59;
                }

                v61 = osspi_DataClose(*v14);
                *v14 = 0;
                if (v5 > -1 && v61 < 0)
                {
                  v5 = v61;
                }

                else
                {
                  v5 = v5;
                }

                if (v14[3] && v14[4])
                {
                  objc_ReleaseObject(*(v55 + 48), "URIFETCHER");
                  *v73 = 0;
                  v14[4] = 0;
                }
              }
            }

            if ((v5 & 0x80000000) == 0 && (v5 = brkhlp_SearchClcArchive(a1[1], v68, v70 + 1, v67, v14, a1), v65 = *v81, (v66 = *(*v81 + 16)) != 0) && v5 && (clcarchive_ObjClose(v66), *(v65 + 16) = 0, osspi_DataClose(*v14), *v14 = 0, v14[3]))
            {
              v20 = v56;
              if (v14[4])
              {
                objc_ReleaseObject(*(v55 + 48), "URIFETCHER");
                *v73 = 0;
                v14[4] = 0;
              }
            }

            else
            {
              v20 = v56;
            }

LABEL_105:
            hlp_ReleaseUriFetcherInterface(v55, v14);
            if (!v20)
            {
              goto LABEL_112;
            }

            goto LABEL_106;
          }

          v39 = *(v10 + 8);
          v40 = cstdlib_strlen(v7);
          v41 = heap_Alloc(v39, (v40 + 1));
          if (v41)
          {
            v33 = v41;
            cstdlib_strlen(v7);
            v42 = 0;
            v43 = 1;
            do
            {
              v33[v42] = cstdlib_tolower(v7[v42]);
              v42 = v43;
            }

            while (cstdlib_strlen(v7) >= v43++);
            v17 = v33;
LABEL_65:
            if (!v72)
            {
              goto LABEL_69;
            }

            goto LABEL_66;
          }

LABEL_31:
          v17 = 0;
          goto LABEL_104;
        }

LABEL_46:
        heap_Free(*(v10 + 8), v17);
        v17 = v71;
LABEL_27:
        if (*(*v81 + 16))
        {
          if (!v17)
          {
            v5 = v30;
            goto LABEL_104;
          }

          v5 = brkhlp_SearchClcArchive(a1[1], *v81, v17 + 1, a3, v14, a1);
          goto LABEL_31;
        }

        v32 = **v81;
        *&v77[0] = 0;
        if ((ssftmap_Find(v32, "FULLPATHCOMPONENT", v77) & 0x80000000) == 0)
        {
          if (*&v77[0])
          {
            v33 = **&v77[0];
            if (**&v77[0])
            {
              v70 = v17;
              v17 = 0;
              goto LABEL_65;
            }
          }
        }

        goto LABEL_59;
      }
    }
  }

  return result;
}

uint64_t engbrk_CreateSurrogateBrokerString(const char *a1, uint64_t a2)
{
  if (cstdlib_strlen(a1))
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = a1[v4];
      v8 = (v7 - 48) >= 0xA && (v7 & 0xFFFFFFDF) - 65 >= 0x1A;
      if (v8 && v7 != 45)
      {
        if (v7 == 95 || v7 == 47)
        {
          if (v7 == 95)
          {
            v5 = v5;
          }

          else
          {
            v5 = 1;
          }

          LOBYTE(v7) = 95;
        }

        else
        {
          v5 = 1;
          LOBYTE(v7) = 45;
        }
      }

      *(a2 + v4) = v7;
      v4 = v6;
    }

    while (cstdlib_strlen(a1) > v6++);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *(a2 + v4) = 0;
  return v5;
}

uint64_t brkhlp_SearchClcArchive(uint64_t a1, uint64_t a2, char *__s, char a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 16);
  memset(v18, 0, sizeof(v18));
  if (cstdlib_strlen(__s) <= 0x7F)
  {
    engbrk_CreateSurrogateBrokerString(__s, v18);
  }

  if (*(v12 + 16))
  {
    v13 = 0;
    v14 = 0;
    while (LH_stricmp(v18, *(*(v12 + 8) + v13)))
    {
      ++v14;
      v13 += 40;
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_7;
      }
    }

    *(a5 + 16) = v14;
    *(a5 + 8) = v12;
    v16 = critsec_Enter(*(*a6 + 24));
    if ((v16 & 0x80000000) == 0)
    {
      ++*(v12 + 120);
      return critsec_Leave(*(*a6 + 24));
    }

    return v16;
  }

  else
  {
LABEL_7:
    v15 = 2169528333;
    if (a4)
    {
      log_OutText(a1, "BROKER", 3, 0, "brk_DataOpen : SearchClcArchive failed: %s:%s", *(a2 + 8), __s);
    }

    else
    {
      log_OutPublic(a1, "BROKER", 257, "%s%s%s%s", "archive", *(a2 + 8), "data", __s);
    }
  }

  return v15;
}

uint64_t brkhlp_RegisterAddon(char *a1, char *a2, uint64_t a3, void *a4, void *a5)
{
  v17 = 0;
  *v18 = 0;
  v5 = 2169528326;
  if (a1)
  {
    if (a5)
    {
      v7 = a5[2];
      if (v7)
      {
        v12 = brkhlp_SearchAddOn(*(v7 + 24), a1, a4);
        if ((v12 & 0x80000000) == 0 && a3 && !*(*a4 + 16))
        {
          *(*a4 + 16) = a3;
          return v12;
        }

        if ((v12 & 0x1FFF) != 0xA)
        {
          v13 = *(a5[2] + 8);
          v15[0] = BRK_HDRPARS_TAG_MAP_IELEM;
          v15[1] = *off_287EE6FE8;
          v16 = off_287EE6FF8;
          v12 = ssftmap_ObjOpen(v13, 1, v15, v18);
          if ((v12 & 0x80000000) == 0)
          {
            v12 = brkhlp_allocateAndStoreTagInMap(*(a5[2] + 8), *v18, a1, "BROKER", &v17);
            if ((v12 & 0x80000000) == 0)
            {
              if (!a2 || (v12 = brkhlp_allocateAndStoreTagInMap(*(a5[2] + 8), *v18, a2, "FULLPATHCOMPONENT", v15), (v12 & 0x80000000) == 0))
              {
                v12 = brkhlp_AddNewAddOn(*v17, *v17, *v18, a5, a3);
                if ((v12 & 0x80000000) == 0)
                {
                  return brkhlp_SearchAddOn(*(a5[2] + 24), a1, a4);
                }
              }
            }
          }

          return v12;
        }

        return 2169528330;
      }
    }
  }

  return v5;
}

uint64_t engbrk_DataMapEx(void *a1, void *a2, uint64_t a3, unsigned int *a4, uint64_t *a5)
{
  v5 = 2169528327;
  if (!a2 || !a1 || !a4 || !a5)
  {
    return v5;
  }

  v9 = a3;
  *a5 = 0;
  v11 = a2[1];
  if (!v11)
  {
    v5 = osspi_DataMap(*a2, a3, a4, a5);
    if ((v5 & 0x80000000) == 0)
    {
      return v5;
    }

LABEL_26:
    log_OutPublic(a1[1], "BROKER", 287, "%s%p%s%u%s%u%s%x", "hData", a2, "offset", v9, "size", *a4, "lhError", v5);
    return v5;
  }

  v12 = *(v11 + 8);
  v13 = *(a2 + 4);
  v14 = *(v12 + 40 * v13 + 16);
  v5 = 2169528324;
  if (v14 < a3)
  {
    goto LABEL_26;
  }

  if (*a4)
  {
    v15 = *(v12 + 40 * v13 + 16);
    v14 = *a4;
  }

  else
  {
    *a4 = v14;
    v13 = *(a2 + 4);
    v15 = *(v12 + 40 * v13 + 16);
  }

  if (v14 + a3 > v15)
  {
    *a4 = v15 - a3;
    v13 = *(a2 + 4);
  }

  v16 = *(v12 + 40 * v13 + 8);
  if (v16)
  {
    v5 = 0;
    *a5 = v16 + a3;
    return v5;
  }

  v17 = critsec_Enter(*(*a1 + 56));
  if ((v17 & 0x80000000) != 0)
  {
    v5 = v17;
    goto LABEL_26;
  }

  Data = clcarchive_GetData(a2[1], *(a2 + 4), v9, *a4, a5);
  v19 = critsec_Leave(*(*a1 + 56));
  if (Data > -1 && v19 < 0)
  {
    v5 = v19;
  }

  else
  {
    v5 = Data;
  }

  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  return v5;
}

uint64_t engbrk_DataUnmap(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 2169528327;
  if (a1 && a2 && a3)
  {
    v7 = *(*a1 + 16);
    v3 = critsec_Enter(*(*a1 + 24));
    if ((v3 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v8 = a2[1];
    if (v8)
    {
      if (!*(*(v8 + 8) + 40 * *(a2 + 4) + 8))
      {
        heap_Free(*(v7 + 8), a3);
      }
    }

    else
    {
      LODWORD(v3) = osspi_DataUnmap(*a2, a3);
    }

    v9 = critsec_Leave(*(*a1 + 24));
    v10 = v3 > -1 && v9 < 0;
    v3 = v10 ? v9 : v3;
    if ((v3 & 0x80000000) != 0)
    {
LABEL_16:
      log_OutPublic(a1[1], "BROKER", 296, "%s%p%s%x", "hData", a2, "lhError", v3);
    }
  }

  return v3;
}

uint64_t hlp_ReleaseUriFetcherInterface(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 24);
    if (*(a2 + 24))
    {
      if (*(a2 + 32))
      {
        result = objc_ReleaseObject(*(result + 48), "URIFETCHER");
        *v2 = 0;
        v2[1] = 0;
      }
    }
  }

  return result;
}

uint64_t engbrk_DataClose(void *a1, uint64_t *a2)
{
  v2 = 2169528327;
  if (!a1 || !a2)
  {
    return v2;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = *(v6 + 16);
  if (a1[4])
  {
    v8 = a1[4];
  }

  else
  {
    v8 = *(v6 + 16);
  }

  log_OutText(v5, "BROKER", 4, 0, "brk_DataClose : hData=%p : Begin", a2);
  if (!a2[1])
  {
    if (*a2)
    {
      v2 = osspi_DataClose(*a2);
      *a2 = 0;
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_26;
  }

  v9 = critsec_Enter(*(*a1 + 24));
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = a2[1];
  v11 = *(v10 + 120);
  if (v11)
  {
    v12 = v11 - 1;
    *(v10 + 120) = v12;
    if (!v12)
    {
LABEL_15:
      v22 = 0;
      if ((brkhlp_SearchAddOn(a1, *(v10 + 128), &v22) & 0x80001FFF) == 0x8000000A)
      {
LABEL_16:
        critsec_Leave(*(*a1 + 24));
        return 2169528330;
      }

      v13 = v22;
      if (v22)
      {
        goto LABEL_19;
      }

      v18 = *(v7 + 8);
      v19 = cstdlib_strlen(*(a2[1] + 128));
      v20 = heap_Alloc(v18, (v19 + 1));
      if (!v20)
      {
        goto LABEL_16;
      }

      v21 = v20;
      engbrk_CreateSurrogateBrokerString(*(a2[1] + 128), v20);
      if (cstdlib_strcmp(*(a2[1] + 128), v21))
      {
        brkhlp_SearchAddOn(a1, v21, &v22);
        v13 = v22;
        heap_Free(*(v7 + 8), v21);
        if (v13)
        {
LABEL_19:
          *(v13 + 16) = 0;
        }
      }

      else
      {
        heap_Free(*(v7 + 8), v21);
      }

      v14 = a2[1];
      if (*(v14 + 112))
      {
        osspi_DataClose(*(v14 + 112));
        v15 = a2[3];
        v14 = a2[1];
        *(v14 + 112) = 0;
        if (v15)
        {
          if (a2[4])
          {
            objc_ReleaseObject(*(v8 + 48), "URIFETCHER");
            a2[3] = 0;
            a2[4] = 0;
            v14 = a2[1];
          }
        }
      }

      clcarchive_ObjClose(v14);
      a2[1] = 0;
    }
  }

  else
  {
    log_OutText(a1[1], "BROKER", 1, 0, "brk_DataClose : RefCount is 0 before substruction. hData=%p", a2);
    v10 = a2[1];
    if (!*(v10 + 120))
    {
      goto LABEL_15;
    }
  }

  v16 = critsec_Leave(*(*a1 + 24));
  v2 = v16 & (v16 >> 31);
LABEL_26:
  if (a2[3] && a2[4])
  {
    objc_ReleaseObject(*(v8 + 48), "URIFETCHER");
    a2[3] = 0;
    a2[4] = 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    log_OutPublic(a1[1], "BROKER", 280, "%s%p%s%x", "hData", a2, "lhError", v2);
  }

  heap_Free(*(v7 + 8), a2);
  log_OutText(a1[1], "BROKER", 4, 0, "brk_DataClose : End %x", v2);
  return v2;
}

uint64_t engbrk_DataMap(void *a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  v10 = a4;
  result = engbrk_DataMapEx(a1, a2, a3, &v10, a5);
  if ((result & 0x80000000) == 0 && v10 < a4)
  {
    engbrk_DataUnmap(a1, a2, *a5);
    return 2169528324;
  }

  return result;
}

uint64_t engbrk_DataFreeze(uint64_t a1, void *a2)
{
  v2 = 2169528327;
  if (a1 && a2)
  {
    if (a2[1])
    {
      return 0;
    }

    else
    {
      v5 = osspi_DataFreeze(*a2);
      v2 = v5;
      if ((v5 & 0x80000000) != 0 && (v5 & 0x1FFF) != 1)
      {
        log_OutPublic(*(a1 + 8), "BROKER", 297, "%s%p%s%x", "hData", a2, "lhError", v5);
      }
    }
  }

  return v2;
}

uint64_t engbrk_TagIteratorOpen(uint64_t a1, char *a2, char *a3, int a4, const void **a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = 2169528327;
  v28 = 0;
  v29 = 0;
  if (a1 && a2 && a3 && *a2 && a5 && *a3)
  {
    v9 = a4;
    v11 = *(*a1 + 16);
    *a5 = 0;
    log_OutText(*(v11 + 32), "BROKER", 4, 0, "brk_TagIteratorOpen BrokerString=%s Query=%s QueryMode=%d: Begin", a2, a3, a4);
    v12 = brkhlp_SearchAddOn(a1, a2, &v29);
    if (v29)
    {
      v13 = v12 < 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 && (v12 & 0x1FFF) == 13)
    {
      v15 = 2169528333;
    }

    else
    {
      v15 = v12;
    }

    if ((v15 & 0x80000000) != 0 || !v29)
    {
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_39;
      }

      v27 = v11;
      v16 = 0;
    }

    else
    {
      v27 = v11;
      v16 = *v29;
    }

    for (i = a3; ; i = v18 + 1)
    {
      v18 = cstdlib_strchr(i, 47);
      if (!v18 && !cstdlib_strcmp(i, "*"))
      {
        break;
      }

      if (v28)
      {
        v16 = *(v28 + 16);
      }

      if (!v16)
      {
        goto LABEL_38;
      }

      if (!v18)
      {
        if ((ssftmap_Find(v16, i, &v28) & 0x80000000) != 0)
        {
LABEL_38:
          v15 = 2169528333;
          v11 = v27;
          goto LABEL_39;
        }

        break;
      }

      v19 = (v18 - i);
      if (v19 > 0x7F)
      {
        v21 = v16;
        v20 = i;
      }

      else
      {
        cstdlib_strncpy(__dst, i, v19);
        __dst[v18 - i] = 0;
        v20 = __dst;
        v21 = v16;
      }

      if ((ssftmap_Find(v21, v20, &v28) & 0x80000000) != 0)
      {
        goto LABEL_38;
      }
    }

    v11 = v27;
    v22 = heap_Calloc(*(v27 + 8), 1, 24);
    *a5 = v22;
    if (!v22)
    {
      v15 = 2169528330;
LABEL_41:
      v25 = *(v11 + 32);
      if (v9)
      {
        log_OutText(v25, "BROKER", 3, 0, "brk_TagIteratorOpen : BrokerString=%s Query=%s  Failure (%x)", a2, a3, v15);
      }

      else
      {
        log_OutPublic(v25, "BROKER", 282, "%s%s%s%s%s%x", "Broker String", a2, "Query", a3, "lhError", v15);
      }

      goto LABEL_44;
    }

    if (!cstdlib_strcmp(i, "*"))
    {
      if (v28)
      {
        v16 = *(v28 + 16);
      }

      String = ssftmap_IteratorOpen(v16, 0, 1, *a5 + 16);
LABEL_50:
      v15 = String;
      **a5 = v27;
      if ((String & 0x80000000) == 0)
      {
LABEL_44:
        log_OutText(*(v11 + 32), "BROKER", 4, 0, "brk_TagIteratorOpen iterator address = %p: End", *a5);
        return v15;
      }

      goto LABEL_39;
    }

    v23 = ssftmap_IteratorOpen(v16, i, 1, *a5 + 16);
    if ((v23 & 0x80000000) == 0)
    {
      String = brkhlp_CreateString(*a5 + 1, i, *(v27 + 8));
      goto LABEL_50;
    }

    v15 = v23;
LABEL_39:
    if (*a5)
    {
      engbrk_TagIteratorClose(*a5);
      *a5 = 0;
    }

    goto LABEL_41;
  }

  return v5;
}

uint64_t engbrk_TagIteratorClose(void *a1)
{
  if (!a1)
  {
    return 2169528327;
  }

  v2 = *a1;
  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorClose iterator=%p: Begin", a1);
  v3 = a1[1];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
  }

  v4 = a1[2];
  if (v4)
  {
    ssftmap_IteratorClose(v4);
  }

  heap_Free(*(v2 + 8), a1);
  log_OutText(*(v2 + 32), "BROKER", 4, 0, "brk_TagIteratorClose: End");
  return 0;
}

uint64_t engbrk_DataGetSize(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = 2169528327;
  if (a2 && a3 && a1 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v6 = *(a2 + 8);
    result = 0;
    if (v6)
    {
      *a4 = *(*(v6 + 8) + 40 * *(a2 + 16) + 16);
      *a3 = 1;
    }
  }

  return result;
}

uint64_t engbrk_TagIteratorNext(void *a1, const char **a2, const char **a3, const void **a4)
{
  v17 = 0;
  v4 = 2169528327;
  if (!a1 || !a2 || !a3)
  {
    return v4;
  }

  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorNext iterator=%p: Begin", a1);
  v9 = ssftmap_IteratorNext(a1[2], a2, &v17);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v10 = a1[1];
  if (!v10 || !cstdlib_strcmp(v10, *a2))
  {
    v11 = v17;
    if (*(v17 + 16))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v17;
    }

    *a3 = v12;
    if (a4)
    {
      *a4 = *(v11 + 8);
    }

LABEL_13:
    v4 = v9;
    goto LABEL_14;
  }

  v4 = 2169528343;
LABEL_14:
  v13 = "";
  v14 = *a2;
  if (!*a2)
  {
    v14 = "";
  }

  if (*a3)
  {
    v13 = *a3;
  }

  if (a4)
  {
    v15 = *a4;
  }

  else
  {
    v15 = 0;
  }

  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorNext Name=%s, Value=%s, Attrs=%p: End", v14, v13, v15);
  return v4;
}

uint64_t engbrk_ComponentPathQuery(void *a1, char *a2, void *a3)
{
  v3 = 2169528327;
  v9 = 0;
  if (!a1)
  {
    return v3;
  }

  if (!a3)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  if (!*a1)
  {
    return v3;
  }

  log_OutText(a1[1], "BROKER", 4, 0, "brk_ComponentPathQuery BrokerString=%s : Begin", a2);
  v3 = 2169528333;
  if ((brkhlp_SearchAddOn(a1, a2, &v9) & 0x80000000) != 0 || !v9)
  {
    return v3;
  }

  v7 = *v9;

  return brkhlp_SearchTag(v7, "FULLPATHCOMPONENT", a3);
}

uint64_t engbrk_ComponentPathRelease(uint64_t a1, const void *a2)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_ComponentPathRelease address = %p : Begin", a2);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_ComponentPathRelease : End");
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_RegisterCupAddon(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  *a2 = 0;
  *a3 = 0;
  result = 2169528326;
  if (a1 && a5)
  {
    v9 = *(*(a5 + 16) + 48);
    if (a4)
    {
      v10 = *(a4 + 32);
    }

    else
    {
      v10 = 0;
    }

    result = objc_GetAddRefCountedObject(v9, a1, ObjcLoadCupAddon, ObjcUnloadCupAddon, v10, &v12);
    if ((result & 0x80000000) == 0 && v12)
    {
      v11 = *(v12 + 32);
      if (v11)
      {
        *a2 = *(*v11 + 16);
        *a3 = v11[3];
      }
    }
  }

  return result;
}

uint64_t ObjcLoadCupAddon(_WORD *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  NullHandle = safeh_GetNullHandle();
  v12 = v11;
  inited = InitRsrcFunction(a1, a2, &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v14 = 2169528330;
  v15 = heap_Calloc(*(v28 + 8), 1, 32);
  if (v15)
  {
    v16 = v15;
    v17 = strhelper_Strdup(*(v28 + 8), a3);
    *(v16 + 8) = v17;
    if (v17)
    {
      v18 = heap_Calloc(*(v28 + 8), 1, 8);
      *(v16 + 24) = v18;
      if (v18)
      {
        v19 = UriToBrokerString(*(v28 + 8), a3);
        *(v16 + 16) = v19;
        if (v19)
        {
          v20 = v28;
          if (a5)
          {
            v20 = a5;
          }

          if ((objc_GetObject(*(v20 + 48), "URIFETCHER", &v27) & 0x80000000) != 0)
          {
            v21 = 0;
          }

          else
          {
            v21 = v27[1];
            NullHandle = v27[2];
            v12 = v27[3];
          }

          v22 = clcarchive_ObjOpen(a1, a2, *(v16 + 16), &v26);
          if ((v22 & 0x80000000) == 0)
          {
            ++*(v26 + 120);
            v22 = osspi_DataOpenEx(*(v28 + 64), *(v28 + 8), v21, NullHandle, v12, a3, &v25);
            if ((v22 & 0x80000000) == 0)
            {
              v22 = osspi_ClcDataOpen(v25, v26);
              if ((v22 & 0x80000000) == 0)
              {
                cstdlib_memcpy(*(v16 + 24), &v25, 8uLL);
                v22 = brkhlp_RegisterAddon(*(v16 + 16), a3, v26, v16, **(v28 + 24));
              }
            }
          }

          v14 = v22;
          if (v21 && NullHandle)
          {
            v23 = v28;
            if (a5)
            {
              v23 = a5;
            }

            objc_ReleaseObject(*(v23 + 48), "URIFETCHER");
          }

          if ((v14 & 0x80000000) == 0)
          {
            *(a4 + 32) = v16;
            return v14;
          }
        }

        else
        {
          v14 = 2169528338;
        }
      }
    }

    FreeAllCupAddonResources(v28, v16);
  }

  return v14;
}

uint64_t ObjcUnloadCupAddon(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  inited = InitRsrcFunction(a1, a2, &v7);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      FreeAllCupAddonResources(v7, v5);
    }
  }

  return inited;
}

uint64_t engbrk_UnregisterCupAddon(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    objc_ReleaseObject(*(*(a2 + 16) + 48), a1);
  }

  return 0;
}

uint64_t engbrk_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 8;
  }

  result = 0;
  *a2 = &IBroker;
  return result;
}

char *brkhlp_CloneString(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Calloc(a1, 1, (v4 + 1));
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

uint64_t brkhlp_ElemCopyAddOn(void *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 24);
  if (!v5)
  {
    return 2169528330;
  }

  v6 = v5;
  cstdlib_memcpy(v5, a1, 0x18uLL);
  result = 0;
  *a1 = 0;
  a1[2] = 0;
  *a3 = v6;
  return result;
}

uint64_t *brkhlp_ElemFreeAddOn(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (v4)
    {
      hdrpars_FreeHeader(v4);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t brkhlp_ElemCopyLoadedIntf(void *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 32);
  if (!v5)
  {
    return 2169528330;
  }

  v6 = v5;
  cstdlib_memcpy(v5, a1, 0x20uLL);
  *a1 = 0;
  NullHandle = safeh_GetNullHandle();
  result = 0;
  a1[2] = NullHandle;
  a1[3] = v9;
  *a3 = v6;
  return result;
}

uint64_t *brkhlp_ElemFreeLoadedIntf(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (result[2])
    {
      v4 = *(result[1] + 24);
      if (v4)
      {
        v4();
      }
    }

    if (*v3)
    {
      osspi_DynModClose(*v3);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t brkhlp_InternalSearchAddOn(uint64_t a1, char *a2, void *a3)
{
  v5 = 2169528333;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v6 = ssftmap_IteratorOpen(*(*a1 + 40), a2, 1, &v12);
  v7 = v6;
  if ((v6 & 0x80000000) != 0)
  {
    if ((v6 & 0x1FFF) == 0x14)
    {
      return 2169528333;
    }

    else
    {
      return v6;
    }
  }

  while ((ssftmap_IteratorNext(v12, &v11, &v10) & 0x80000000) == 0)
  {
    v8 = LH_stricmp(a2, v11);
    if (!v8)
    {
      *a3 = v10;
      break;
    }

    if (v8 > 0)
    {
      break;
    }
  }

  ssftmap_IteratorClose(v12);
  if (*a3)
  {
    return v7;
  }

  return v5;
}

uint64_t brkhlp_allocateAndStoreTagInMap(void *a1, uint64_t a2, char *__s, uint64_t a4, void *a5)
{
  v10 = cstdlib_strlen(__s);
  v11 = heap_Calloc(a1, 1, v10 + 25);
  if (!v11)
  {
    return 2169528330;
  }

  v12 = v11;
  v13 = (v11 + 24);
  *v12 = v13;
  cstdlib_strcpy(v13, __s);
  result = ssftmap_Insert(a2, a4, v12);
  if ((result & 0x80000000) == 0)
  {
    *a5 = v12;
  }

  return result;
}

void *brkhlp_ElemFreeTag(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      ssftmap_ObjClose(v4);
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      ssftmap_ObjClose(v5);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

void *FreeAllCupAddonResources(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = a2[3];
  if (v5)
  {
    v6 = *v5;
    v7 = a2[2];
    v8 = **(a1 + 24);
    v16 = 0;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        if ((critsec_Enter(*(v8 + 24)) & 0x80000000) == 0)
        {
          if ((brkhlp_InternalSearchAddOn(*(*(v8 + 16) + 24), v7, &v16) & 0x80000000) == 0)
          {
            v11 = v16;
            v12 = *(v16 + 16);
            if (v12)
            {
              if (v6)
              {
                osspi_ClcDataClose(v6, v12);
                v12 = *(v11 + 16);
              }

              --*(v12 + 120);
              clcarchive_ObjClose(v12);
            }
          }

          if ((ssftmap_Remove(*(v8 + 40), v7) & 0x80000000) == 0)
          {
            log_OutText(*(v10 + 32), "BROKER", 4, 0, "brkhlp_RemoveAddOn: %s", v7);
          }

          critsec_Leave(*(v8 + 24));
        }
      }
    }

    if (v6)
    {
      osspi_DataClose(v6);
    }

    heap_Free(v4, a2[3]);
    v4 = *(a1 + 8);
  }

  v13 = a2[1];
  if (v13)
  {
    heap_Free(v4, v13);
    v4 = *(a1 + 8);
  }

  v14 = a2[2];
  if (v14)
  {
    heap_Free(v4, v14);
    v4 = *(a1 + 8);
  }

  return heap_Free(v4, a2);
}

uint64_t brkhlp_GetBuiltinInterface(char *__s1, void *a2, void *a3, void *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v8 = "fe/fe_prmfx";
  v9 = &off_287EE7020;
  while (cstdlib_strcmp(__s1, v8))
  {
    v10 = *v9;
    v9 += 4;
    v8 = v10;
    if (!v10)
    {
      return 2169528333;
    }
  }

  v12 = *(v9 - 3);
  result = 0;
  if (v12)
  {
    *a2 = v12;
  }

  else
  {
    *a3 = *(v9 - 2);
    *a4 = *(v9 - 1);
  }

  return result;
}

uint64_t log_ClassOpen(_WORD *a1, _WORD *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = 2226135048;
  v18 = 0;
  if (!a4)
  {
    return 2226135046;
  }

  if ((InitRsrcFunction(a1, a2, &v18) & 0x80000000) == 0)
  {
    *a4 = 0;
    v8 = heap_Calloc(*(v18 + 8), 1, 224);
    if (v8)
    {
      v9 = v8;
      cstdlib_memset(v8, 0, 0xE0uLL);
      *v9 = a1;
      v9[1] = a2;
      v9[2] = v18;
      v22 = 0;
      v23 = 0;
      __src = 0;
      __s1 = 0;
      bzero(__dst, 0x400uLL);
      v19 = 0;
      if ((InitRsrcFunction(*v9, v9[1], &v23) & 0x80000000) != 0 || !*(v23 + 40))
      {
LABEL_49:
        log_ClassClose(v9);
      }

      else
      {
        if (brk_TagIteratorOpen(*(v9[2] + 3), "logging", "*", 1, &v19))
        {
          v10 = 1;
        }

        else
        {
          v10 = v19 == 0;
        }

        if (!v10)
        {
          while ((brk_TagIteratorNext(v19, &__s1, &__src) & 0x80000000) == 0)
          {
            if (__s1)
            {
              v11 = __src == 0;
            }

            else
            {
              v11 = 1;
            }

            if (v11 || !cstdlib_strcmp(__s1, "BROKERSTRING"))
            {
              continue;
            }

            __dst[0] = 0;
            if (!cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC"))
            {
              __s1 = "logfile.enabled";
              goto LABEL_36;
            }

            if (!cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.LEVEL"))
            {
              __s1 = "logfile.filter.level";
              goto LABEL_36;
            }

            if (cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.DIR"))
            {
              if (!cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.FILEMAXSIZEMB"))
              {
                __s1 = "logfile.max_size";
                cstdlib_strcpy(__dst, __src);
                cstdlib_strcat(__dst, "000000");
LABEL_32:
                __src = __dst;
                goto LABEL_36;
              }

              if (cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.FILEMIMETYPE"))
              {
                if (!cstdlib_strcmp(__s1, "LOG.DIAGNOSTIC.MODULES"))
                {
                  __s1 = "logfile.filter.modules";
                  LH_MapModuleNamesToIds(__src, __dst, 0x400u);
                  goto LABEL_32;
                }

                if (cstdlib_strcmp(__s1, "LOG.TSO"))
                {
                  if (cstdlib_strcmp(__s1, "LOG.TSO.LEVEL"))
                  {
                    if (cstdlib_strcmp(__s1, "LOG.TSO.FILENAME"))
                    {
                      goto LABEL_36;
                    }

                    v12 = "logtso.filename";
                  }

                  else
                  {
                    v12 = "logtso.filter.level";
                  }
                }

                else
                {
                  v12 = "logtso.enabled";
                }
              }

              else
              {
                v12 = "logfile.filemimetype";
              }
            }

            else
            {
              v12 = "logfile.filename.1";
            }

            __s1 = v12;
LABEL_36:
            Str = paramc_ParamGetStr(*(v23 + 40), __s1, &v22);
            v14 = *(v23 + 40);
            if (Str < 0)
            {
              if ((paramc_ParamSetStr(v14, __s1, __src) & 0x80000000) != 0)
              {
                brk_TagIteratorClose(v19);
                v4 = 2226135040;
                goto LABEL_49;
              }
            }

            else
            {
              paramc_ParamRelease(v14);
            }
          }

          brk_TagIteratorClose(v19);
        }

        v15 = 0;
        v16 = &LOG_SUBSCRIBER_ID;
        do
        {
          if (v15 != 5)
          {
            brk_InterfaceQueryEx(*(v9[2] + 3), *v16, 1, 1, &v9[v15 + 6], &v9[v15 + 5]);
          }

          v15 += 5;
          ++v16;
        }

        while (v15 != 25);
        v4 = 0;
        *a4 = v9;
      }
    }

    else
    {
      return 2226135050;
    }
  }

  return v4;
}

uint64_t log_ClassClose(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = 5; i != 30; i += 5)
  {
    v3 = a1[i];
    if (v3)
    {
      v4 = brk_InterfaceRelease(*(a1[2] + 24), v3);
      if ((v4 & 0x80000000) != 0)
      {
        return v4;
      }

      a1[i] = 0;
    }
  }

  v8 = 0;
  inited = InitRsrcFunction(*a1, a1[1], &v8);
  if ((inited & 0x80000000) != 0)
  {
    return 2226135048;
  }

  v6 = inited;
  heap_Free(*(v8 + 8), a1);
  return v6;
}

uint64_t log_ObjOpen(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = 2226135046;
    if (a2)
    {
      *a2 = 0;
      v5 = heap_Calloc(*(*(a1 + 16) + 8), 1, 128);
      if (v5)
      {
        v6 = v5;
        cstdlib_memset(v5, 0, 0x80uLL);
        v7 = 0;
        *v6 = *(*(a1 + 16) + 8);
        v8 = (a1 + 56);
        do
        {
          v9 = *(v8 - 2);
          *(v6 + v7 + 24) = v9;
          if (v9)
          {
            v10 = (*(v9 + 32))(*(v8 - 1), *v8, v6 + v7 + 16);
            if ((v10 & 0x80000000) != 0)
            {
              v3 = v10;
              log_ObjClose(v6);
              return v3;
            }
          }

          v8 += 5;
          v7 += 16;
        }

        while (v7 != 80);
        v11 = 0;
        *(v6 + 96) = 1;
        do
        {
          v12 = *(v6 + v11 + 24);
          if (v12)
          {
            v13 = *(v12 + 80);
            if (v13)
            {
              v14 = v13(*(v6 + v11 + 16));
              if (v14 > *(v6 + 96))
              {
                *(v6 + 96) = v14;
              }
            }
          }

          v11 += 16;
        }

        while (v11 != 80);
        v3 = 0;
        *a2 = v6;
      }

      else
      {
        return 2226135050;
      }
    }
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  return v3;
}

uint64_t log_ObjClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      v3 = v1[v2 + 3];
      if (v3)
      {
        v4 = v3[5];
        if (v4)
        {
          if (v1[v2 + 2])
          {
            result = v4();
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }

      v2 += 2;
      if (v2 == 10)
      {
        heap_Free(*v1, v1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t log_SubscriberAdd(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 112))
    {
      return 2226135040;
    }

    else
    {
      *(result + 104) = a2;
      *(result + 112) = a3;
      if (a3 && (v4 = *(a3 + 80)) != 0 && (v5 = v4(a2), v5 > *(v3 + 96)))
      {
        v6 = v5;
        result = 0;
        *(v3 + 96) = v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t log_SubscriberRemove(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = 2226135040;
    if (*(v3 + 112) == a3 && *(v3 + 104) == a2)
    {
      result = 0;
      *(v3 + 104) = 0;
      *(v3 + 112) = 0;
    }
  }

  return result;
}

uint64_t LH_ERROR_to_VERROR(int a1)
{
  v1 = 11;
  for (i = &dword_26ECC76F0; *(i - 1) != a1; i += 2)
  {
    if (!--v1)
    {
      return 2703237376;
    }
  }

  v4 = *i;
  if (v4)
  {
    return v4 | 0xA1202000;
  }

  else
  {
    return 0;
  }
}

const char *verror_GetString(int a1)
{
  if (a1)
  {
    return "NO ERROR STRINGS SUPPORTED";
  }

  else
  {
    return " Success";
  }
}

const char *verror_GetModuleName(int a1)
{
  if (a1)
  {
    return "NO ERROR STRINGS SUPPORTED";
  }

  else
  {
    return "NO ERROR";
  }
}

uint64_t compstats_ObjOpen(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v22 = 0;
  result = 2285903879;
  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  result = InitRsrcFunction(a1, a2, &v22);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v9 = heap_Calloc(*(v22 + 8), 1, 320);
  if (!v9)
  {
LABEL_13:
    log_OutPublic(*(v22 + 32), "CompStats", 2688, 0);
    return 2285903882;
  }

  v10 = v9;
  *(v9 + 284) = a3;
  v11 = 2 * a3;
  v12 = heap_Calloc(*(v22 + 8), v11, 56);
  v10[36] = v12;
  if (!v12)
  {
    heap_Free(*(v22 + 8), v10);
    goto LABEL_13;
  }

  *v10 = a1;
  v10[1] = a2;
  v10[2] = v22;
  v10[38] = v12 + 56 * a3;
  if (v11)
  {
    v13 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v21 = _Q0;
    do
    {
      v19 = v10[36];
      if (v19)
      {
        v20 = v19 + v13;
        cstdlib_memset((v19 + v13), 0, 0x38uLL);
        *(v20 + 40) = v21;
        *v20 = 0u;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0;
      }

      v13 += 56;
    }

    while (56 * v11 != v13);
  }

  *a4 = v10;
  *(a4 + 8) = 61435;
  return compstats_Reset(v10);
}