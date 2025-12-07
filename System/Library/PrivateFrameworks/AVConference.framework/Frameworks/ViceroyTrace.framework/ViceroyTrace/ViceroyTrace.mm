void VRTraceInit()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = dispatch_queue_create("com.apple.viceroytrace", 0);
  v1 = 0;
  atomic_compare_exchange_strong_explicit(&gVRTraceDispatchQueue, &v1, v0, memory_order_relaxed, memory_order_relaxed);
  if (v1)
  {
    dispatch_release(v0);
  }

  if (!gVRTraceDispatchQueue)
  {
    gVRTraceDispatchQueue = MEMORY[0x277D85CD0];
  }

  VRTraceReset_();
  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR(6u);
    v3 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v2;
      *&buf[12] = 2080;
      *&buf[14] = "VRTraceInit";
      *&buf[22] = 1024;
      *&buf[24] = 314;
      _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d logging-started", buf, 0x1Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR(6u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = VRTraceErrorLogLevelToCSTR(gVRTraceErrorLogLevel);
      *buf = 136316162;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = "VRTraceInit";
      *&buf[22] = 1024;
      *&buf[24] = 319;
      *&buf[28] = 2080;
      *&buf[30] = v6;
      *&buf[38] = 1024;
      *&buf[40] = gVRTraceErrorLogLevel;
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d gVRTraceErrorLogLevel initialized to %s (%d)", buf, 0x2Cu);
    }
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v7;
  v35 = v7;
  v32 = v7;
  v33 = v7;
  v30 = v7;
  v31 = v7;
  v28 = v7;
  v29 = v7;
  v26 = v7;
  v27 = v7;
  v24 = v7;
  v25 = v7;
  *&buf[32] = v7;
  v23 = v7;
  *buf = v7;
  *&buf[16] = v7;
  GetBundleVersion(buf);
  MEMORY[0x23EEE3420](&dword_23D4DF000, "@:@ ViceroyTrace-init");
  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR(6u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316418;
      v11 = v8;
      v12 = 2080;
      v13 = "VRTraceInit";
      v14 = 1024;
      v15 = 324;
      v16 = 2080;
      v17 = buf;
      v18 = 1024;
      v19 = getpid();
      v20 = 2080;
      v21 = VRTraceErrorLogLevelToCSTR(gVRTraceErrorLogLevel);
      _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d @:@ ViceroyTrace-init AVConference=%s, PID=%d, VRTraceErrorLogLevel=%s", &v10, 0x36u);
    }
  }
}

void VRTraceReset()
{
  if (gVRTraceErrorLogLevel == -1)
  {
    VRTraceInit();

    VRTracePrintLoggingInfo();
  }

  else
  {

    VRTraceReset_();
  }
}

uint64_t VRTraceReset_()
{
  v20 = *MEMORY[0x277D85DE8];
  if (gVRTraceOSLog == MEMORY[0x277D86220])
  {
    gVRTraceOSLog = os_log_create("com.apple.AVConference", "ViceroyTrace");
  }

  __dmb(0xBu);
  if (_VRTraceIsInternalOSInstalled(0))
  {
    v0 = 7;
  }

  else
  {
    v0 = 6;
  }

  gVRTraceErrorLogLevel = v0;
  v1 = getenv_plus("VRTraceErrorLogLevel");
  if (v1 || (v1 = getenv_plus("GKSErrorLogLevel")) != 0)
  {
    v2 = VRTraceErrorLogLevelFromCSTR(v1);
    gVRTraceErrorLogLevel = v2;
  }

  else
  {
    v2 = gVRTraceErrorLogLevel;
  }

  if (v2 >= 0xA)
  {
    gVRTraceErrorLogLevel = 9;
  }

  iterate_env_plus("VRTrace", &__block_literal_global_29);
  iterate_env_plus("VRTraceErrorLogLevel_", &__block_literal_global_34);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"VRTraceLogDebugAsInfo", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    gVRTraceLogDebugAsInfo = AppBooleanValue != 0;
    if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") < 6)
    {
      goto LABEL_19;
    }

    v4 = VRTraceErrorLogLevelToCSTR(6u);
    v5 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315906;
    v13 = v4;
    v14 = 2080;
    v15 = "VRTraceReset_";
    v16 = 1024;
    v17 = 269;
    v18 = 1024;
    v19 = gVRTraceLogDebugAsInfo;
    v6 = "ViceroyTrace [%s] %s:%d VRTraceLogDebugAsInfo is set.  gVRTraceLogDebugAsInfo=%d";
  }

  else
  {
    gVRTraceLogDebugAsInfo = 0;
    if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") < 6)
    {
      goto LABEL_19;
    }

    v7 = VRTraceErrorLogLevelToCSTR(6u);
    v5 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315906;
    v13 = v7;
    v14 = 2080;
    v15 = "VRTraceReset_";
    v16 = 1024;
    v17 = 272;
    v18 = 1024;
    v19 = gVRTraceLogDebugAsInfo;
    v6 = "ViceroyTrace [%s] %s:%d gVRTraceLogDebugAsInfo=%d";
  }

  _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x22u);
LABEL_19:
  keyExistsAndHasValidFormat = 0;
  v8 = CFPreferencesGetAppBooleanValue(@"enableOSSignpost", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  result = _VRTraceIsInternalOSInstalled(0);
  if (keyExistsAndHasValidFormat)
  {
    v10 = result;
  }

  else
  {
    v10 = 0;
  }

  if (!v8)
  {
    v10 = 0;
  }

  gVRTraceOSSignpostEnabled = v10;
  return result;
}

char *getenv_plus(const char *a1)
{
  v2 = getenv(a1);
  if (v2)
  {
    return v2;
  }

  v3 = CFStringCreateWithCStringNoCopy(0, a1, 0x8000100u, *MEMORY[0x277CBED00]);
  v4 = CFPreferencesCopyAppValue(v3, @"com.apple.VideoConference");
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (!strncmp(a1, "VRTrace", 7uLL))
    {
      v5 = 0;
      goto LABEL_16;
    }

    v5 = CFPreferencesCopyAppValue(v3, *MEMORY[0x277CBF028]);
    if (!v5)
    {
LABEL_16:
      v2 = 0;
      if (!v3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  pthread_once(&getenv_plus_once_control, getenv_plus_pthread_key_init);
  v6 = pthread_getspecific(getenv_plus_pthread_key);
  if (v6)
  {
    free(v6);
  }

  v7 = CFStringCreateWithFormat(0, 0, @"%@", v5);
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  Length = CFStringGetLength(v7);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v11 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x80EEFF9AuLL);
  pthread_setspecific(getenv_plus_pthread_key, v11);
  if (CFStringGetCString(v8, v11, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    v2 = v11;
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v8);
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_17:
  CFRelease(v3);
LABEL_18:
  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

void iterate_env_plus(char *a1, uint64_t a2)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v4 = *_NSGetEnviron();
  v5 = strlen(a1);
  v6 = *v4;
  if (*v4)
  {
    v7 = v5;
    do
    {
      if (!strncmp(v6, a1, v7))
      {
        v8 = strdup(v6);
        for (i = v8; *i; ++i)
        {
          if (*i == 61)
          {
            *i++ = 0;
            break;
          }
        }

        (*(a2 + 16))(a2, v8, i);
        free(v8);
      }

      v10 = v4[1];
      ++v4;
      v6 = v10;
    }

    while (v10);
  }

  cStr = a1;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v12 = 0;
  v13 = *MEMORY[0x277CBF028];
  v32[0] = @"com.apple.VideoConference";
  v32[1] = v13;
  v32[2] = *MEMORY[0x277CBF008];
  v14 = *MEMORY[0x277CBF040];
  v15 = *MEMORY[0x277CBF030];
  v16 = *MEMORY[0x277CBF010];
  v17 = *MEMORY[0x277CBF020];
  do
  {
    v18 = v32[v12];
    v19 = CFPreferencesCopyKeyList(v18, v14, v15);
    if (v19)
    {
      v20 = v19;
      v34.length = CFArrayGetCount(v19);
      v34.location = 0;
      CFArrayAppendArray(Mutable, v20, v34);
      CFRelease(v20);
    }

    v21 = CFPreferencesCopyKeyList(v18, v14, v16);
    if (v21)
    {
      v22 = v21;
      v35.length = CFArrayGetCount(v21);
      v35.location = 0;
      CFArrayAppendArray(Mutable, v22, v35);
      CFRelease(v22);
    }

    v23 = CFPreferencesCopyKeyList(v18, v17, v16);
    if (v23)
    {
      v24 = v23;
      v36.length = CFArrayGetCount(v23);
      v36.location = 0;
      CFArrayAppendArray(Mutable, v24, v36);
      CFRelease(v24);
    }

    ++v12;
  }

  while (v12 != 3);
  Count = CFArrayGetCount(Mutable);
  v26 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (Count)
  {
    for (j = 0; j != Count; ++j)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
      CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
      if (CFStringHasPrefix(ValueAtIndex, v26))
      {
        if (CStringPtr)
        {
          v30 = getenv_plus(CStringPtr);
          if (v30)
          {
            (*(a2 + 16))(a2, CStringPtr, v30);
          }
        }
      }
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t VRTraceGetErrorLogLevelForModule(const void *a1)
{
  v1 = gVRTraceErrorLogLevel;
  if (gVRTraceModuleFilterEnabled == 1)
  {
    pthread_rwlock_rdlock(&gVRTraceLevelLock);
    value = 0xAAAAAAAAAAAAAAAALL;
    if (gVRTraceModuleFilter && CFDictionaryGetValueIfPresent(gVRTraceModuleFilter, a1, &value))
    {
      v1 = value;
    }

    pthread_rwlock_unlock(&gVRTraceLevelLock);
  }

  if ((gVRTraceLogDebugAsInfo & (v1 == 7)) != 0)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

const char *VRTraceErrorLogLevelToCSTR(unsigned int a1)
{
  if (a1 == -1)
  {
    return "UNINIT";
  }

  if (a1 < 1)
  {
    return "NONE";
  }

  if (a1 == 1)
  {
    return "ALERT";
  }

  if (a1 < 3)
  {
    return "CRITICAL";
  }

  if (a1 == 3)
  {
    return "ERROR";
  }

  if (a1 < 5)
  {
    return "ASSERT";
  }

  if (a1 == 5)
  {
    return "WARNING";
  }

  if (a1 < 7)
  {
    return "NOTICE";
  }

  if (a1 == 7)
  {
    return "INFO";
  }

  if (a1 >= 9)
  {
    return "ALL";
  }

  return "DEBUG";
}

__CFBundle *GetBundleVersion(char *a1)
{
  *a1 = 63;
  result = CFBundleGetBundleWithIdentifier(@"com.apple.ViceroyTrace");
  if (result)
  {
    result = CFBundleGetInfoDictionary(result);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"CFBundleVersion");
      if (result)
      {

        return CFStringGetCString(result, a1, 256, 0x8000100u);
      }
    }
  }

  return result;
}

void VRTracePrintLoggingInfo()
{
  v55 = *MEMORY[0x277D85DE8];
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v0;
  v54 = v0;
  v51 = v0;
  v52 = v0;
  v49 = v0;
  v50 = v0;
  v47 = v0;
  v48 = v0;
  v45 = v0;
  v46 = v0;
  v43 = v0;
  v44 = v0;
  v41 = v0;
  v42 = v0;
  *buffer = v0;
  v40 = v0;
  v37 = v0;
  v38 = v0;
  v35 = v0;
  v36 = v0;
  v33 = v0;
  v34 = v0;
  v31 = v0;
  v32 = v0;
  v29 = v0;
  v30 = v0;
  v27 = v0;
  v28 = v0;
  v25 = v0;
  v26 = v0;
  *v23 = v0;
  v24 = v0;
  __strlcpy_chk();
  __strlcpy_chk();
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    CFStringGetCString(v1, buffer, 256, 0x8000100u);
    CFRelease(v2);
  }

  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    CFStringGetCString(v3, v23, 256, 0x8000100u);
    CFRelease(v4);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[14] = v5;
  v22[15] = v5;
  v22[12] = v5;
  v22[13] = v5;
  v22[10] = v5;
  v22[11] = v5;
  v22[8] = v5;
  v22[9] = v5;
  v22[6] = v5;
  v22[7] = v5;
  v22[4] = v5;
  v22[5] = v5;
  v22[2] = v5;
  v22[3] = v5;
  v22[0] = v5;
  v22[1] = v5;
  GetBundleVersion(v22);
  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR(6u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316674;
      v9 = v6;
      v10 = 2080;
      v11 = "VRTracePrintLoggingInfo";
      v12 = 1024;
      v13 = 642;
      v14 = 2080;
      v15 = VRTraceErrorLogLevelToCSTR(gVRTraceErrorLogLevel);
      v16 = 2080;
      v17 = buffer;
      v18 = 2080;
      v19 = v23;
      v20 = 2080;
      v21 = v22;
      _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d ErrorLogLevel=%s ProductType=%s BuildVersion=%s AVConference=%s", &v8, 0x44u);
    }
  }
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x32u);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x2Cu);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x2Cu);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x32u);
}

BOOL OUTLINED_FUNCTION_18()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_19()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_23D4E4B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCDiskUtils_CreateDirectory(const char *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = mkpath_np(a1, 0x1EDu);
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR(7u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136316418;
        v8 = v3;
        v9 = 2080;
        v10 = "VCDiskUtils_CreateDirectory";
        v11 = 1024;
        v12 = 116;
        v13 = 2080;
        v14 = a1;
        v15 = 1024;
        v16 = v2;
        v17 = 2080;
        v18 = strerror(v2);
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s ret: %d (%s)", &v7, 0x36u);
      }
    }

    return !v2 || v2 == 17;
  }

  else
  {
    VCDiskUtils_CreateDirectory_cold_1();
    return v7;
  }
}

uint64_t VCDiskUtils_FileZipToFile()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v13 = *MEMORY[0x277D85DE8];
  __nitems = -1431655766;
  bzero(v12, 0x4000uLL);
  bzero(__ptr, 0x4000uLL);
  while (1)
  {
    v4 = fread(v12, 1uLL, 0x4000uLL, v3);
    v5 = ferror(v3);
    if (v5)
    {
      VCDiskUtils_FileZipToFile_cold_1(v5, &__nitems_4);
      return __nitems_4;
    }

    __nitems = 0x4000;
    v6 = CompressionUtils_CompressWithGZip(__ptr, 0x4000, &__nitems, v12, v4);
    if (v6)
    {
      VCDiskUtils_FileZipToFile_cold_2(v6, &__nitems_4);
      return __nitems_4;
    }

    v7 = fwrite(__ptr, 1uLL, __nitems, v2);
    if (v7 != __nitems)
    {
      if (ferror(v2))
      {
        break;
      }
    }

    if (feof(v3))
    {
      return 0;
    }
  }

  VCDiskUtils_FileZipToFile_cold_3(&__nitems_4);
  return __nitems_4;
}

void OUTLINED_FUNCTION_9_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x22u);
}

void sub_23D4E8E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

uint64_t ZLibAndGZipCompress(int a1, uint64_t a2, _DWORD *a3, Bytef *a4, uInt a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = 2148401153;
  if (a2 && a3 && a4 && (a5 & 0x80000000) == 0 && (*a3 & 0x80000000) == 0)
  {
    memset(&v18, 0, sizeof(v18));
    bzero(__src, 0x9C4uLL);
    if (deflateInit2_(&v18, 9, 8, a1 | 0xF, 8, 0, "1.2.12", 112))
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          ZLibAndGZipCompress_cold_1();
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v18.next_in = a4;
      v18.avail_in = a5;
      while (1)
      {
        v18.next_out = __src;
        v18.avail_out = 2500;
        v13 = deflate(&v18, v12);
        if (v13)
        {
          break;
        }

        avail_out = v18.avail_out;
        v15 = 2500 - v18.avail_out + v11;
        if (*a3 < v15)
        {
          goto LABEL_18;
        }

        memcpy((a2 + v11), __src, 2500 - v18.avail_out);
        if (avail_out)
        {
          v12 = 4;
        }

        v11 = v15;
      }

      if (v13 != 1 || (v16 = 2500 - v18.avail_out + v11, *a3 < v16))
      {
LABEL_18:
        deflateEnd(&v18);
        return 2148401155;
      }

      memcpy((a2 + v11), __src, 2500 - v18.avail_out);
      if (deflateEnd(&v18))
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            ZLibAndGZipCompress_cold_2();
          }
        }
      }

      else
      {
        v5 = 0;
        *a3 = v16;
      }
    }
  }

  return v5;
}

uint64_t ZLibAndGZipDecompress(int a1, uint64_t a2, _DWORD *a3, Bytef *a4, uInt a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = 2148401153;
  if (a2 && a3 && a4 && (a5 & 0x80000000) == 0 && (*a3 & 0x80000000) == 0)
  {
    memset(&v18, 0, sizeof(v18));
    bzero(__src, 0x9C4uLL);
    if (inflateInit2_(&v18, a1 | 0xF, "1.2.12", 112))
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          ZLibAndGZipDecompress_cold_1();
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v18.next_in = a4;
      v18.avail_in = a5;
      while (1)
      {
        v18.next_out = __src;
        v18.avail_out = 2500;
        v13 = inflate(&v18, v12);
        if (v13)
        {
          break;
        }

        avail_out = v18.avail_out;
        v15 = 2500 - v18.avail_out + v11;
        if (*a3 < v15)
        {
          goto LABEL_18;
        }

        memcpy((a2 + v11), __src, 2500 - v18.avail_out);
        if (avail_out)
        {
          v12 = 4;
        }

        v11 = v15;
      }

      if (v13 != 1 || (v16 = 2500 - v18.avail_out + v11, *a3 < v16))
      {
LABEL_18:
        inflateEnd(&v18);
        return 2148401155;
      }

      memcpy((a2 + v11), __src, 2500 - v18.avail_out);
      if (inflateEnd(&v18))
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            ZLibAndGZipDecompress_cold_2();
          }
        }
      }

      else
      {
        v5 = 0;
        *a3 = v16;
      }
    }
  }

  return v5;
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

void OUTLINED_FUNCTION_6_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

double machTimeScale(uint64_t a1, uint64_t a2)
{
  if ((_MergedGlobals_0 & 1) == 0)
  {
    machTimeScale_cold_1();
  }

  return *&qword_280C07E48;
}

void sub_23D4F5FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

BOOL OUTLINED_FUNCTION_14_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void *reportingGKLog(void *result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v7 = result;
    v11 = 0;
    if (a5 && *a5)
    {
      v9 = [objc_alloc(MEMORY[0x277CCACA0]) initWithUTF8String:{a5, v11}];
      v12 = a4;
      v13[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    else
    {
      v10 = MEMORY[0x277CBEC10];
    }

    return [v7 sendMessageWithCategory:a2 type:a3 payload:v10 error:&v11];
  }

  return result;
}

void reportingGKAppInfo(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{a2, @"AppName", a3, @"PartName", 0}];
    v5 = 0;
    [a1 sendMessageWithCategory:40 type:0 payload:v4 error:&v5];
  }
}

void connectingGKLog(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2 >= a3)
    {
      v4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%d%d, %d", a3, a2, a3];
      v5 = 1;
    }

    else
    {
      v4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%d%d, %d", a2, a3, a3];
      v5 = 0;
    }

    v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v4, @"Nodes", 0}];
    v7 = 0;
    [a1 sendMessageWithCategory:1 type:v5 payload:v6 error:&v7];
  }
}

void *perfTimerStart(void *result, const char *a2)
{
  if (result)
  {
    return [result startTimingForKey:a2];
  }

  return result;
}

void *perfTimerStop(void *result, const char *a2)
{
  if (result)
  {
    return [result stopTimingForKey:a2];
  }

  return result;
}

uint64_t VCReportingDistributionKeys_CameraCaptureFrameRate()
{
  v2[6] = *MEMORY[0x277D85DE8];
  v1[0] = @"VCReportingDistributionKey_ReportingSum";
  v1[1] = @"VCReportingDistributionKey_ReportingCount";
  v2[0] = @"CAMFC";
  v2[1] = @"CAMDUR";
  v1[2] = @"VCReportingDistributionKey_AggregatedAverage";
  v1[3] = @"VCReportingDistributionKey_AggregatedMax";
  v2[2] = @"CAMFR";
  v2[3] = @"CAMCFRMAX";
  v1[4] = @"VCReportingDistributionKey_AggregatedMin";
  v1[5] = @"VCReportingDistributionKey_AggregatedHistogram";
  v2[4] = @"CAMCFRMIN";
  v2[5] = @"CAMFRH";
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:6];
}

uint64_t VCReportingDistributionKeys_FIRResponseTime()
{
  v2[6] = *MEMORY[0x277D85DE8];
  v1[0] = @"VCReportingDistributionKey_ReportingSum";
  v1[1] = @"VCReportingDistributionKey_ReportingCount";
  v2[0] = @"FIRResponseTimeSum";
  v2[1] = @"FIRResponseTimeCount";
  v1[2] = @"VCReportingDistributionKey_AggregatedAverage";
  v1[3] = @"VCReportingDistributionKey_AggregatedMax";
  v2[2] = @"FIRRESPT";
  v2[3] = @"FIRRESPTMAX";
  v1[4] = @"VCReportingDistributionKey_AggregatedMin";
  v1[5] = @"VCReportingDistributionKey_AggregatedHistogram";
  v2[4] = @"FIRRESPTMIN";
  v2[5] = @"FIRRESPTH";
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:6];
}

uint64_t VCReportingDeltaDistributionKeys_TransmitterHostTimeDelta()
{
  v2[10] = *MEMORY[0x277D85DE8];
  v1[0] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteSum";
  v1[1] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMin";
  v2[0] = @"AVHTDAbsSum";
  v2[1] = @"AVHTDMin";
  v1[2] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMax";
  v1[3] = @"VCReportingDistributionKey_ReportingSum";
  v2[2] = @"AVHTDMax";
  v2[3] = @"AVHTDSum";
  v1[4] = @"VCReportingDistributionKey_ReportingCount";
  v1[5] = @"VCReportingDistributionKey_AggregatedAverage";
  v2[4] = @"AVHTDCount";
  v2[5] = @"VTAVHTD";
  v1[6] = @"VCReportingDistributionKey_AggregatedMax";
  v1[7] = @"VCReportingDistributionKey_AggregatedMin";
  v2[6] = @"VTAVHTDMAX";
  v2[7] = @"VTAVHTDMIN";
  v1[8] = @"VCReportingDistributionKey_AggregatedHistogram";
  v1[9] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage";
  v2[8] = @"VTAVHTDH";
  v2[9] = @"VTABSAVHTD";
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:10];
}

uint64_t VCReportingDistributionKeys_VideoPlayerDisplayFrameRate()
{
  v2[6] = *MEMORY[0x277D85DE8];
  v1[0] = @"VCReportingDistributionKey_ReportingSum";
  v1[1] = @"VCReportingDistributionKey_ReportingCount";
  v2[0] = @"VPFDC";
  v2[1] = @"VPFDCD";
  v1[2] = @"VCReportingDistributionKey_AggregatedAverage";
  v1[3] = @"VCReportingDistributionKey_AggregatedMax";
  v2[2] = @"VPDFR";
  v2[3] = @"VPDFRMAX";
  v1[4] = @"VCReportingDistributionKey_AggregatedMin";
  v1[5] = @"VCReportingDistributionKey_AggregatedHistogram";
  v2[4] = @"VPDFRMIN";
  v2[5] = @"VPDFRH";
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:6];
}

uint64_t VCReportingDeltaDistributionKeys_VideoPlayerHostTimeDelta()
{
  v2[10] = *MEMORY[0x277D85DE8];
  v1[0] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteSum";
  v1[1] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMin";
  v2[0] = @"VPAVTDAbsSum";
  v2[1] = @"VPAVTDMin";
  v1[2] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMax";
  v1[3] = @"VCReportingDistributionKey_ReportingSum";
  v2[2] = @"VPAVTDMax";
  v2[3] = @"VPAVTDSum";
  v1[4] = @"VCReportingDistributionKey_ReportingCount";
  v1[5] = @"VCReportingDistributionKey_AggregatedAverage";
  v2[4] = @"VPAVTDCount";
  v2[5] = @"VPAVTD";
  v1[6] = @"VCReportingDistributionKey_AggregatedHistogram";
  v1[7] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax";
  v2[6] = @"VPAVTDH";
  v2[7] = @"VPAVTDMAX";
  v1[8] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin";
  v1[9] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage";
  v2[8] = @"VPAVTDMIN";
  v2[9] = @"VPABSAVTD";
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:10];
}

uint64_t VCReportingDeltaDistributionKeys_VideoPlayerAVSyncOffset()
{
  v2[10] = *MEMORY[0x277D85DE8];
  v1[0] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteSum";
  v1[1] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMin";
  v2[0] = @"VPAVSOAbsSum";
  v2[1] = @"VPAVSOMin";
  v1[2] = @"VCReportingDeltaDistributionKey_ReportingAbsoluteMax";
  v1[3] = @"VCReportingDistributionKey_ReportingSum";
  v2[2] = @"VPAVSOMax";
  v2[3] = @"VPAVSOSum";
  v1[4] = @"VCReportingDistributionKey_ReportingCount";
  v1[5] = @"VCReportingDistributionKey_AggregatedAverage";
  v2[4] = @"VPAVSOCount";
  v2[5] = @"VPAVSO";
  v1[6] = @"VCReportingDistributionKey_AggregatedHistogram";
  v1[7] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax";
  v2[6] = @"VPAVSOH";
  v2[7] = @"VPAVSOMAX";
  v1[8] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin";
  v1[9] = @"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage";
  v2[8] = @"VPAVSOMIN";
  v2[9] = @"VPABSAVSO";
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:10];
}

void _VCAggregatorMultiway_CollectMediaQueueTelemetry(void *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = [a2 objectForKeyedSubscript:@"VCMQFlushPerStream"];
  v5 = [a2 objectForKeyedSubscript:@"VCMQQSizePerStream"];
  v6 = [a2 objectForKeyedSubscript:@"VCMQMaxQSizePerStream"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = [a1 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", objc_msgSend(v11, "intValue"))}];
          [v12 setAccumulatedMediaQueueFlushCount:{objc_msgSend(v12, "accumulatedMediaQueueFlushCount") + objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", v11), "intValue")}];
        }

        v8 = [v4 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v8);
    }
  }

  else
  {
    _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_1();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = [v6 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = *(*(&v35 + 1) + 8 * j);
          v18 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(v17, "intValue")}];
          v19 = [objc_msgSend(v6 objectForKeyedSubscript:{v17), "intValue"}];
          [objc_msgSend(a1 objectForKeyedSubscript:{v18), "maxMediaQueueSize"}];
          if (v20 <= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v20;
          }

          [objc_msgSend(a1 objectForKeyedSubscript:{v18), "setMaxMediaQueueSize:", v21}];
        }

        v14 = [v6 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v14);
    }
  }

  else
  {
    _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_2();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = [v5 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v5);
          }

          v26 = *(*(&v31 + 1) + 8 * k);
          v27 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(v26, "intValue")}];
          v28 = [a1 objectForKeyedSubscript:v27];
          LODWORD(v26) = [objc_msgSend(v5 objectForKeyedSubscript:{v26), "intValue"}];
          [v28 accumulatedTotalMediaQueueSize];
          [v28 setAccumulatedTotalMediaQueueSize:v29 + v26];
          v30 = [a1 objectForKeyedSubscript:v27];
          [v30 setTotalMediaQueueSizeReportsCount:{objc_msgSend(v30, "totalMediaQueueSizeReportsCount") + 1}];
        }

        v23 = [v5 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v23);
    }
  }

  else
  {
    _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_3();
  }
}

void _VCAggregatorMultiway_ReportMediaQueueTelemetry(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      _VCAggregatorMultiway_AddMediaQueueStreamGroupTelemetry(a1, 1, [a2 objectForKeyedSubscript:&unk_284FA5420]);
      _VCAggregatorMultiway_AddMediaQueueStreamGroupTelemetry(a1, 2, [a2 objectForKeyedSubscript:&unk_284FA5498]);
      v4 = [a2 objectForKeyedSubscript:&unk_284FA54F8];

      _VCAggregatorMultiway_AddMediaQueueStreamGroupTelemetry(a1, 3, v4);
    }

    else
    {
      _VCAggregatorMultiway_ReportMediaQueueTelemetry_cold_1();
    }
  }

  else
  {
    _VCAggregatorMultiway_ReportMediaQueueTelemetry_cold_2();
  }
}

uint64_t _VCAggregatorMultiway_AddMediaQueueStreamGroupTelemetry(void *a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%u", @"TMQFCS", a2];
  [a1 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a3, "accumulatedMediaQueueFlushCount")), v6}];
  if ([a3 totalMediaQueueSizeReportsCount])
  {
    [a3 accumulatedTotalMediaQueueSize];
    v8 = v7 / [a3 totalMediaQueueSizeReportsCount];
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%u", @"ATMQSS", a2];
  [a1 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v8), v9}];
  v10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%u", @"MMQSS", a2];
  v11 = MEMORY[0x277CCABA8];
  [a3 maxMediaQueueSize];
  v12 = [v11 numberWithDouble:?];

  return [a1 setObject:v12 forKeyedSubscript:v10];
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  return [v8 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_38()
{

  return [v0 objectForKeyedSubscript:v1];
}

uint64_t OUTLINED_FUNCTION_43()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_44()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_45()
{

  return [v0 objectForKeyedSubscript:v1];
}

double OUTLINED_FUNCTION_47@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2 + *(v2 + a1);
  *(v2 + a1) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_59()
{

  return [v1 objectForKeyedSubscript:v0];
}

BOOL OUTLINED_FUNCTION_60()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_63()
{

  return objc_opt_respondsToSelector();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return [v0 performSelector:v1];
}

void OUTLINED_FUNCTION_66(__int16 a1@<W8>)
{
  *(v3 - 132) = a1;
  *(v2 + 14) = v1;
  *(v3 - 122) = 1024;
}

uint64_t OUTLINED_FUNCTION_68()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);

  return [v54 countByEnumeratingWithState:&a47 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_71()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_72()
{

  return [v1 objectForKeyedSubscript:v0];
}

uint64_t OUTLINED_FUNCTION_73()
{

  return [v0 objectForKeyedSubscript:v1];
}

BOOL OUTLINED_FUNCTION_74()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_75()
{

  return [v0 objectForKeyedSubscript:v1];
}

void *reportingUserInfoSetValueCorrection(void *a1)
{
  result = VRTraceIsInternalOSInstalled();
  if (result)
  {
    v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v3.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v3, 0);
    return [a1 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v3.tv_usec / 1000000.0 + v3.tv_sec), @"_valueCorrection"}];
  }

  return result;
}

void reportingSymptom(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    [a1 updateSymptomCount:a2];

    [a1 reportingSymptom:a2 withOptionalDict:a3];
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingSymptom_cold_1();
    }
  }
}

void *reportingClassSendMsgToServer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[5] = *MEMORY[0x277D85DE8];
  pthread_once(&reportingVCOnce, _reportingVCRunOnce);
  result = _validClassAndSymbols();
  if (result)
  {
    v10 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D0] bundleForClass:{objc_opt_class()), "infoDictionary"), "objectForKey:", @"CFBundleVersion"}];
    if (!v10)
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          reportingClassSendMsgToServer_cold_1();
        }
      }

      v10 = @"Unknown";
    }

    v15[0] = sRTCReportingSessionInfoClientType;
    v15[1] = sRTCReportingSessionInfoClientVersion;
    v16[0] = &unk_284FA5540;
    v16[1] = v10;
    v15[2] = sRTCReportingSessionInfoSessionID;
    v16[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a1];
    v16[3] = MEMORY[0x277CBEC28];
    v15[3] = sRTCReportingSessionInfoBatchEvent;
    v15[4] = sRTCReportingSessionInfoRequireUserInfo;
    v16[4] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
    v13[0] = sRTCReportingUserInfoClientName;
    v13[1] = sRTCReportingUserInfoServiceName;
    v14[0] = sRTCReportingFaceTimeClientName;
    v14[1] = sRTCReportingFaceTimeServiceName;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    return [gRTCReporting_class sendOneMessageWithSessionInfo:v11 userInfo:v12 category:a3 type:a4 payload:a5 error:0];
  }

  return result;
}

void _reportingVCRunOnce()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/RTCReporting.framework/RTCReporting", 1);
  if (v0)
  {
    v1 = v0;
    v2 = dlsym(v0, "RTC_relaxSessions");
    sRTCReportingAPI_RelaxSessionLimit = v2;
    if (v2)
    {
      v2(10);
    }

    else
    {
      _reportingVCRunOnce_cold_1();
    }

    gRTCReporting_class = objc_getClass("RTCReporting");
    if (objc_opt_respondsToSelector())
    {
      [gRTCReporting_class updateEarlyCacheLimitWithNewLimit:400];
    }

    if (!sRTCReportingSessionInfoClientType)
    {
      v3 = dlsym(v1, "kRTCReportingSessionInfoClientType");
      if (v3)
      {
        v4 = *v3;
      }

      else
      {
        v4 = 0;
      }

      sRTCReportingSessionInfoClientType = v4;
    }

    if (!sRTCReportingSessionInfoClientVersion)
    {
      v5 = dlsym(v1, "kRTCReportingSessionInfoClientVersion");
      if (v5)
      {
        v6 = *v5;
      }

      else
      {
        v6 = 0;
      }

      sRTCReportingSessionInfoClientVersion = v6;
    }

    if (!sRTCReportingSessionInfoSessionID)
    {
      v7 = dlsym(v1, "kRTCReportingSessionInfoSessionID");
      if (v7)
      {
        v8 = *v7;
      }

      else
      {
        v8 = 0;
      }

      sRTCReportingSessionInfoSessionID = v8;
    }

    if (!sRTCReportingSessionInfoBatchEvent)
    {
      v9 = dlsym(v1, "kRTCReportingSessionInfoBatchEvent");
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      sRTCReportingSessionInfoBatchEvent = v10;
    }

    if (!sRTCReportingSessionInfoRequireUserInfo)
    {
      v11 = dlsym(v1, "kRTCReportingSessionInfoRequireUserInfo");
      if (v11)
      {
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      sRTCReportingSessionInfoRequireUserInfo = v12;
    }

    if (!sRTCReportingSessionInfoHierarchyToken)
    {
      v13 = dlsym(v1, "kRTCReportingSessionInfoHierarchyToken");
      if (v13)
      {
        v14 = *v13;
      }

      else
      {
        v14 = 0;
      }

      sRTCReportingSessionInfoHierarchyToken = v14;
    }

    if (!sRTCReportingSessionInfoContainsRealtimeEvents)
    {
      v15 = dlsym(v1, "kRTCReportingSessionInfoContainsRealtimeEvents");
      if (v15)
      {
        v16 = *v15;
      }

      else
      {
        v16 = 0;
      }

      sRTCReportingSessionInfoContainsRealtimeEvents = v16;
    }

    if (!sRTCReportingSessionInfoClientBundleID)
    {
      v17 = dlsym(v1, "kRTCReportingSessionInfoClientBundleID");
      if (v17)
      {
        v18 = *v17;
      }

      else
      {
        v18 = 0;
      }

      sRTCReportingSessionInfoClientBundleID = v18;
    }

    if (!sRTCReportingSessionInfoSamplingUUIID)
    {
      v19 = dlsym(v1, "kRTCReportingSessionInfoSamplingUUIID");
      if (v19)
      {
        v20 = *v19;
      }

      else
      {
        v20 = 0;
      }

      sRTCReportingSessionInfoSamplingUUIID = v20;
    }

    if (!sRTCReportingBackendUploadServer)
    {
      v21 = dlsym(v1, "kRTCReportingBackendUploadServer");
      if (v21)
      {
        v22 = *v21;
      }

      else
      {
        v22 = 0;
      }

      sRTCReportingBackendUploadServer = v22;
    }

    if (!sRTCReportingUserInfoClientName)
    {
      v23 = dlsym(v1, "kRTCReportingUserInfoClientName");
      if (v23)
      {
        v24 = *v23;
      }

      else
      {
        v24 = 0;
      }

      sRTCReportingUserInfoClientName = v24;
    }

    if (!sRTCReportingUserInfoServiceName)
    {
      v25 = dlsym(v1, "kRTCReportingUserInfoServiceName");
      if (v25)
      {
        v26 = *v25;
      }

      else
      {
        v26 = 0;
      }

      sRTCReportingUserInfoServiceName = v26;
    }

    if (!VCRTCReportingMessageParametersCategoryString)
    {
      v27 = dlsym(v1, "kRTCReportingMessageParametersCategory");
      if (v27)
      {
        v28 = *v27;
      }

      else
      {
        v28 = 0;
      }

      VCRTCReportingMessageParametersCategoryString = v28;
    }

    if (!VCRTCReportingMessageParametersTypeString)
    {
      v29 = dlsym(v1, "kRTCReportingMessageParametersType");
      if (v29)
      {
        v30 = *v29;
      }

      else
      {
        v30 = 0;
      }

      VCRTCReportingMessageParametersTypeString = v30;
    }

    if (!VCRTCReportingMessageParametersPayloadString)
    {
      v31 = dlsym(v1, "kRTCReportingMessageParametersPayload");
      if (v31)
      {
        v32 = *v31;
      }

      else
      {
        v32 = 0;
      }

      VCRTCReportingMessageParametersPayloadString = v32;
    }

    if (!VCRTCReportingMessageParametersFlag)
    {
      v33 = dlsym(v1, "kRTCReportingMessageParametersFlag");
      if (v33)
      {
        v34 = *v33;
      }

      else
      {
        v34 = 0;
      }

      VCRTCReportingMessageParametersFlag = v34;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      _reportingVCRunOnce_cold_2();
    }
  }
}

uint64_t _validClassAndSymbols()
{
  if (gRTCReporting_class)
  {
    v0 = sRTCReportingSessionInfoClientType == 0;
  }

  else
  {
    v0 = 1;
  }

  v5 = v0 || sRTCReportingSessionInfoClientVersion == 0 || sRTCReportingSessionInfoSessionID == 0 || sRTCReportingSessionInfoBatchEvent == 0 || sRTCReportingSessionInfoRequireUserInfo == 0 || sRTCReportingBackendUploadServer == 0;
  v6 = !v5;
  if (v5 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      _validClassAndSymbols_cold_1();
    }
  }

  return v6;
}

RTCReportingAgent *reportingCreateAgent(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  pthread_once(&reportingVCOnce, _reportingVCRunOnce);
  if (!_validClassAndSymbols())
  {
    return 0;
  }

  v2 = [RTCReportingAgent alloc];
  v3 = *(a1 + 112);
  v20 = *(a1 + 96);
  v21 = v3;
  v22 = *(a1 + 128);
  v4 = *(a1 + 48);
  v16 = *(a1 + 32);
  v17 = v4;
  v5 = *(a1 + 80);
  v18 = *(a1 + 64);
  v19 = v5;
  v6 = *(a1 + 16);
  *buf = *a1;
  *&buf[16] = v6;
  v7 = [(RTCReportingAgent *)v2 initWithConfig:buf];
  if (v7)
  {
    v8 = v7;
    [(RTCReportingAgent *)v7 blockReportingQueueUntilReportingObjectInitialized];
    v9 = *(a1 + 88);
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR(7u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "reportingCreateAgent";
        *&buf[22] = 1024;
        *&buf[24] = 1780;
        _os_log_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d RTCReporting configuration started", buf, 0x1Cu);
      }
    }

    v12 = [(RTCReportingAgent *)v8 reportingObject];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __reportingCreateAgent_block_invoke;
    v14[3] = &unk_278BD50A8;
    v14[4] = v8;
    v14[5] = v9;
    [(RTCReporting *)v12 startConfigurationWithCompletionHandler:v14];
  }

  else
  {
    reportingCreateAgent_cold_1();
    return *buf;
  }

  return v8;
}

uint64_t __reportingCreateAgent_block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setBackends:a2];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32), a2);
  }

  v5 = *(a1 + 32);

  return [v5 signalConfigurationCompleted];
}

void reportingReleaseObject(void *a1)
{
  if (_validReportingObject(a1, "reportingReleaseObject"))
  {
    v2 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingReleaseObject_block_invoke;
    block[3] = &unk_278BD4C38;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

BOOL _validReportingObject(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1 reportingObject])
      {
        return 1;
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = 136315906;
    v8 = v5;
    v9 = 2080;
    v10 = "_validReportingObject";
    v11 = 1024;
    v12 = 1721;
    v13 = 2080;
    v14 = a2;
    _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d ReportingVC(%s): invalid object.", &v7, 0x26u);
  }

  return 0;
}

void reportingSetPeriodicAggregationOccurredHandler(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingSetPeriodicAggregationOccurredHandler_block_invoke;
    v5[3] = &unk_278BD50D0;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_async(v4, v5);
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingSetPeriodicAggregationOccurredHandler_cold_1();
    }
  }
}

uint64_t __reportingSetPeriodicAggregationOccurredHandler_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingSetPeriodicAggregationOccurredHandler");
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) aggregator];

    return [v4 setPeriodicAggregationOccurredHandler:v3];
  }

  return result;
}

void ReportingVC_SetEventDrivenAggregationOccurredHandler(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __ReportingVC_SetEventDrivenAggregationOccurredHandler_block_invoke;
    v5[3] = &unk_278BD50D0;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_async(v4, v5);
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      ReportingVC_SetEventDrivenAggregationOccurredHandler_cold_1();
    }
  }
}

uint64_t createAdaptiveLearningForAgent(void *a1, uint64_t a2)
{
  result = _validReportingObject(a1, "createAdaptiveLearningForAgent");
  if (result)
  {

    return [a1 setupAdaptiveLearningWithParameters:a2];
  }

  return result;
}

void reportingCancelLog(void *a1, __int16 a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingCancelLog_block_invoke;
    v5[3] = &unk_278BD4DE8;
    v5[4] = a1;
    v6 = a2;
    dispatch_async(v4, v5);
  }
}

void __reportingCancelLog_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingCancelLog"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:2 type:*(a1 + 40) payload:MEMORY[0x277CBEC10] error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingCancelLog_block_invoke_cold_1();
      }
    }
  }
}

void reportingSetDigestKey(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingSetDigestKey_block_invoke;
      block[3] = &unk_278BD4FE0;
      block[4] = a1;
      block[5] = "reportingSetDigestKey";
      block[6] = a2;
      dispatch_async(v4, block);
    }
  }
}

uint64_t __reportingSetDigestKey_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), *(a1 + 40));
  if (result)
  {
    v3 = [*(a1 + 32) reportingObject];
    v4 = *(a1 + 48);

    return [v3 setDigestKey:v4 algorithm:0];
  }

  return result;
}

void reportingCacheModuleSpecificInfo(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [VCWeakObjectHolder weakObjectHolderWithObject:a1];
    if (a2)
    {
      v9 = v8;
      v10 = [a1 reportingQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __reportingCacheModuleSpecificInfo_block_invoke;
      v11[3] = &unk_278BD50F8;
      v11[4] = v9;
      v11[5] = a4;
      v11[6] = a3;
      v12 = a2;
      dispatch_async(v10, v11);
    }

    else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        reportingCacheModuleSpecificInfo_cold_1();
      }
    }
  }
}

void reportingInheritModuleSpecificInfoFromParent(void *a1, int a2, int a3)
{
  if (a1 && a2 && (a3 + 1) >= 2)
  {
    v6 = [a1 reportingQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __reportingInheritModuleSpecificInfoFromParent_block_invoke;
    v7[3] = &unk_278BD4DC0;
    v7[4] = a1;
    v8 = a2;
    v9 = a3;
    dispatch_async(v6, v7);
  }
}

void *__reportingInheritModuleSpecificInfoFromParent_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfoMap];
  result = [v2 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 40))}];
  if (result)
  {
    v4 = result;
    v5 = [*(a1 + 32) userInfoMap];
    v6 = [MEMORY[0x277CCABA8] numberWithInt:*(a1 + 44)];

    return [v5 setObject:v4 forKeyedSubscript:v6];
  }

  return result;
}

void reportingSetUserInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = [a1 reportingQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __reportingSetUserInfo_block_invoke;
    v12[3] = &unk_278BD5188;
    v12[4] = a1;
    v12[5] = a2;
    v12[6] = a3;
    v12[7] = a4;
    v12[8] = a5;
    v12[9] = "reportingSetUserInfo";
    dispatch_async(v10, v12);
  }

  else if (a5)
  {
    v11 = *(a5 + 16);

    v11(a5, 0);
  }
}

uint64_t __reportingSetUserInfo_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  result = _validReportingObject(*(a1 + 32), *(a1 + 72));
  if (result)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:*(a1 + 40) forKeyedSubscript:sRTCReportingUserInfoClientName];
    [v3 setObject:*(a1 + 48) forKeyedSubscript:sRTCReportingUserInfoServiceName];
    [*(a1 + 32) setServiceName:*(a1 + 48)];
    if (*(a1 + 56))
    {
      [v3 addEntriesFromDictionary:?];
    }

    if ([*(a1 + 40) isEqualToString:sRTCReportingMultiwayConferenceClientName])
    {
      if ([*(a1 + 32) subSessionId])
      {
        v4 = [objc_msgSend(*(a1 + 32) "subSessionId")];
        v5 = [MEMORY[0x277CCABA8] numberWithInt:(v4 + 1)];
      }

      else
      {
        v5 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:0];
      }

      v6 = v5;
      [v3 setObject:v5 forKeyedSubscript:kVCReportingSubSessionID];
      [*(a1 + 32) setSubSessionId:v6];
    }

    reportingUserInfoSetValueCorrection(v3);
    [objc_msgSend(*(a1 + 32) "reportingObject")];
    v7 = [*(a1 + 32) reportingObject];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __reportingSetUserInfo_block_invoke_529;
    v10[3] = &unk_278BD5140;
    v10[4] = *(a1 + 64);
    [v7 fetchReportingStatesWithUserInfo:v3 fetchComplete:v10];
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR(8u);
      v9 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v12 = v8;
          v13 = 2080;
          v14 = "reportingSetUserInfo_block_invoke_2";
          v15 = 1024;
          v16 = 1977;
          v17 = 2112;
          v18 = v3;
          _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d UserInfo=%@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        __reportingSetUserInfo_block_invoke_cold_1();
      }
    }

    return [objc_msgSend(*(a1 + 32) "reportingObject")];
  }

  return result;
}

void __reportingSetUserInfo_block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a2 hasPrefix:@"URL for the session is:"];
    v4 = v3 ? 7 : 8;
    if (v4 <= VRTraceGetErrorLogLevelForModule("ReportingVC"))
    {
      v5 = VRTraceErrorLogLevelToCSTR(v4);
      if (v3)
      {
        v6 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

LABEL_11:
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "reportingSetUserInfo_block_invoke";
        v11 = 1024;
        v12 = 1969;
        v13 = 2112;
        v14 = a2;
        _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d ReportingVC: %@", &v7, 0x26u);
        return;
      }

      v6 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        goto LABEL_11;
      }

      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        __reportingSetUserInfo_block_invoke_2_cold_1();
      }
    }
  }
}

uint64_t __reportingSetUserInfo_block_invoke_529(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __reportingSetUserInfo_block_invoke_530(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR(8u);
    v4 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136316162;
        v6 = v3;
        v7 = 2080;
        v8 = "reportingSetUserInfo_block_invoke";
        v9 = 1024;
        v10 = 1984;
        v11 = 1024;
        v12 = 1984;
        v13 = 1024;
        v14 = [a2 code];
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: flushMessages: error code %d.", &v5, 0x28u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __reportingSetUserInfo_block_invoke_530_cold_1();
    }
  }
}

void reportingLog(void *a1, int a2, __int16 a3, __int16 a4, uint64_t a5, _BYTE *a6)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a6 && *a6)
    {
      v16 = a5;
      v17[0] = [MEMORY[0x277CCACA0] stringWithUTF8String:a6];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v10 = 0;
    }

    v11 = [a1 reportingQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __reportingLog_block_invoke;
    v12[3] = &unk_278BD5058;
    v13 = a2;
    v12[4] = a1;
    v12[5] = v10;
    v14 = a3;
    v15 = a4;
    dispatch_async(v11, v12);
  }
}

void __reportingLog_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingLog"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:*(a1 + 54) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v2}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingLog_block_invoke_cold_1();
      }
    }
  }
}

id combineModuleSpecificInfoAndPayload(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return a3;
  }

  if (!a2)
  {
    return a3;
  }

  if (!a3)
  {
    return a3;
  }

  v6 = [a1 userInfoMap];
  if (![v6 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", a2)}])
  {
    return a3;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v7 addEntriesFromDictionary:a3];
  v8 = [a1 userInfoMap];
  [v7 addEntriesFromDictionary:{objc_msgSend(v8, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", a2))}];

  return v7;
}

void reportingPIPEnabled(void *a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"PIPDUR";
  v4[0] = [MEMORY[0x277CCABA8] numberWithBool:a2];
  reportingGenericEvent(a1, 48, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1]);
}

void reportingGenericEvent(void *a1, __int16 a2, __int16 a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingGenericEvent_block_invoke;
    block[3] = &unk_278BD48B8;
    v10 = a2;
    v11 = a3;
    block[4] = a1;
    block[5] = a4;
    dispatch_async(v8, block);
  }
}

void reportingRecordingAndTranscriptionServiceUsage(void *a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"RATSU";
  v4[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:a2];
  reportingGenericEvent(a1, 349, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1]);
}

void __reportingGenericEvent_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingGenericEvent"))
  {
    v6 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 48) type:*(a1 + 50) payload:*(a1 + 40) error:&v6] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 48);
        v5 = [v6 code];
        *buf = 136316418;
        v8 = v2;
        v9 = 2080;
        v10 = "reportingGenericEvent_block_invoke";
        v11 = 1024;
        v12 = 2043;
        v13 = 1024;
        v14 = 2043;
        v15 = 1024;
        v16 = v4;
        v17 = 1024;
        v18 = v5;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }
}

void reportingAdaptiveLearningStats(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v13[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v12[0] = @"TtSD";
    v13[0] = [MEMORY[0x277CCABA8] numberWithDouble:?];
    v12[1] = @"BtRD";
    v13[1] = [MEMORY[0x277CCABA8] numberWithInt:a4];
    v12[2] = @"IBTR";
    v13[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a3];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v9 = [a1 reportingQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __reportingAdaptiveLearningStats_block_invoke;
    v10[3] = &unk_278BD48B8;
    v11 = a2;
    v10[4] = a1;
    v10[5] = v8;
    dispatch_async(v9, v10);
  }
}

void __reportingAdaptiveLearningStats_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAdaptiveLearningStats"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:83 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAdaptiveLearningStats_block_invoke_cold_1();
      }
    }
  }
}

void reportingNoRemoteChanged(void *a1, __int16 a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingNoRemoteChanged_block_invoke;
    v5[3] = &unk_278BD4DE8;
    v5[4] = a1;
    v6 = a2;
    dispatch_async(v4, v5);
  }
}

void __reportingNoRemoteChanged_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingNoRemoteChanged"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:82 type:*(a1 + 40) payload:0 error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingNoRemoteChanged_block_invoke_cold_1();
      }
    }
  }
}

void reportingCallEndError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v19[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v18[0] = @"CallEndError";
    v19[0] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:a2];
    v18[1] = @"Term";
    v19[1] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:a3];
    v18[2] = @"NoRemote";
    v19[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4];
    v18[3] = @"RemoteNoRemote";
    v19[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a5];
    v18[4] = @"CallEndErrorDomain";
    if (a7 && *a7)
    {
      v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%s", a7];
    }

    else
    {
      v13 = &stru_284F80940;
    }

    v19[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v15 = [objc_alloc(MEMORY[0x277CCAD70]) initWithUUIDBytes:a6];
    v16 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingCallEndError_block_invoke;
    block[3] = &unk_278BD51B0;
    block[4] = a1;
    block[5] = v14;
    block[6] = v15;
    block[7] = "reportingCallEndError";
    block[8] = a1;
    dispatch_async(v16, block);
  }
}

void __reportingCallEndError_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), *(a1 + 56)))
  {
    v5 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:1 payload:*(a1 + 40) error:&v5] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingCallEndError_block_invoke_cold_1();
      }
    }

    v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "aggregator")];
    if ([v2 algosScoreDictionary])
    {
      v3 = objc_opt_new();
      [v3 addEntriesFromDictionary:{objc_msgSend(v2, "algosScoreDictionary")}];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"kSymptomReporterClientUUID", [*(a1 + 48) UUIDString]);
      CFDictionarySetValue(Mutable, @"kSymptomReporterAlgosDictionaryKey", v3);
      reportingSymptom(*(a1 + 64), 32, Mutable);

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingCallEndError_block_invoke_cold_2();
      }
    }

    [*(a1 + 32) sendNetworkScoreDictionary:objc_msgSend(objc_msgSend(*(a1 + 32) networkScoreType:{"aggregator"), "algosScoreAggregator"), 0}];
  }
}

void reportingModeRoleTransportLog(void *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v13[0] = @"DeviceRole";
    v14[0] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:a3];
    v13[1] = @"TransportType";
    v14[1] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:a4];
    v13[2] = @"INTTR";
    v14[2] = [MEMORY[0x277CCABA8] numberWithBool:a5];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v10 = [a1 reportingQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __reportingModeRoleTransportLog_block_invoke;
    v11[3] = &unk_278BD4E10;
    v12 = a2;
    v11[4] = a1;
    v11[5] = v9;
    dispatch_async(v10, v11);
  }
}

void __reportingModeRoleTransportLog_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingModeRoleTransportLog"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:29 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingModeRoleTransportLog_block_invoke_cold_1();
      }
    }
  }
}

void reportingTierLog(void *a1, int a2, __int16 a3, unsigned int *a4, uint64_t a5)
{
  v16[9] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a4)
    {
      v15[0] = @"Tier";
      v16[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*a4];
      v15[1] = @"Dup";
      v16[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[1]];
      v15[2] = @"Bundle";
      v16[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[4]];
      v15[3] = @"Payload";
      v16[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[5]];
      v15[4] = @"BitRate";
      v16[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[6]];
      v15[5] = @"RedPayloads";
      v16[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[2]];
      v15[6] = @"RedMaxDelay";
      v16[6] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[3]];
      v15[7] = @"REDPayloadBitrate";
      v16[7] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4[7]];
      v15[8] = @"Mode";
      v16[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a5];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];
      v11 = [a1 reportingQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __reportingTierLog_block_invoke;
      v12[3] = &unk_278BD5080;
      v13 = a2;
      v12[4] = a1;
      v12[5] = v10;
      v14 = a3;
      dispatch_async(v11, v12);
    }
  }
}

void __reportingTierLog_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingTierLog"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:35 type:*(a1 + 52) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v2}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingTierLog_block_invoke_cold_1();
      }
    }
  }
}

void reportingPerfTimes(void *a1, int a2, void *a3, uint64_t a4)
{
  if (a1 && a3)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = 0;
    v8 = &kVCReporting_PerfTimersKeys;
    do
    {
      if ([a3 hasKey:v7] && objc_msgSend(a3, "isValidTimingForKey:", v7))
      {
        v9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%s", v8];
        v10 = MEMORY[0x277CCABA8];
        [a3 timingForKey:v7];
        [v6 setObject:objc_msgSend(v10 forKeyedSubscript:{"numberWithInt:", (v11 * 1000.0)), v9}];
      }

      ++v7;
      v8 += 31;
    }

    while (v7 != 24);
    if (a4)
    {
      [v6 addEntriesFromDictionary:?];
    }

    v12 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingPerfTimes_block_invoke;
    block[3] = &unk_278BD48B8;
    block[4] = a1;
    block[5] = v6;
    v16 = a2;
    dispatch_async(v12, block);
  }
}

void __reportingPerfTimes_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingPerfTimes"))
  {
    v4 = 0;
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (v3)
    {
      v2 = combineModuleSpecificInfoAndPayload(*(a1 + 32), v3, *(a1 + 40));
    }

    if (([*(a1 + 32) sendMessageWithCategory:34 type:0 payload:v2 error:&v4] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingPerfTimes_block_invoke_cold_1();
      }
    }
  }
}

BOOL reportingRegisterPeriodicTask(_BOOL8 result, int a2, char a3, char a4, uint64_t a5)
{
  if (result)
  {
    if ((a2 + 1) > 1)
    {
      v9 = result;
      v10 = [result reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingRegisterPeriodicTask_block_invoke;
      block[3] = &unk_278BD5200;
      v12 = a2;
      v13 = a3;
      v14 = a4;
      block[4] = v9;
      block[5] = a5;
      dispatch_async(v10, block);
      return 1;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        reportingRegisterPeriodicTask_cold_1();
      }

      return 0;
    }
  }

  return result;
}

uint64_t __reportingRegisterPeriodicTask_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingRegisterPeriodicTask");
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 52);
    v5 = *(a1 + 53);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __reportingRegisterPeriodicTask_block_invoke_2;
    v7[3] = &unk_278BD51D8;
    v6 = *(a1 + 32);
    v7[4] = *(a1 + 40);
    return [v6 registerPeriodicTaskForModule:v3 needToUpdate:v4 needToReport:v5 serviceBlock:v7];
  }

  return result;
}

uint64_t __reportingRegisterPeriodicTask_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL reportingRegisterPeriodicTaskWeak(_BOOL8 result, uint64_t a2, int a3, char a4, char a5, uint64_t a6)
{
  if (result)
  {
    if ((a3 + 1) > 1)
    {
      if (a2)
      {
        if (a6)
        {
          v10 = result;
          v11 = [[VCWeakObjectHolder alloc] initWithObject:a2];
          v12 = [v10 reportingQueue];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __reportingRegisterPeriodicTaskWeak_block_invoke;
          v13[3] = &unk_278BD5250;
          v14 = a3;
          v15 = a4;
          v16 = a5;
          v13[4] = v10;
          v13[5] = v11;
          v13[6] = a6;
          dispatch_async(v12, v13);

          return 1;
        }

        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          reportingRegisterPeriodicTaskWeak_cold_1();
        }
      }

      else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        reportingRegisterPeriodicTaskWeak_cold_2();
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      reportingRegisterPeriodicTaskWeak_cold_3();
    }

    return 0;
  }

  return result;
}

uint64_t __reportingRegisterPeriodicTaskWeak_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingRegisterPeriodicTaskWeak");
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(a1 + 60);
    v6 = *(a1 + 61);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __reportingRegisterPeriodicTaskWeak_block_invoke_2;
    v7[3] = &unk_278BD5228;
    v8 = *(a1 + 40);
    return [v3 registerPeriodicTaskForModule:v4 needToUpdate:v5 needToReport:v6 serviceBlock:v7];
  }

  return result;
}

void __reportingRegisterPeriodicTaskWeak_block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x23EEE3290]([*(a1 + 32) weak]);
  if (v2)
  {
    v3 = v2;
    (*(*(a1 + 40) + 16))();

    CFRelease(v3);
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR(5u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "reportingRegisterPeriodicTaskWeak_block_invoke_2";
      v10 = 1024;
      v11 = 2281;
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d reportingRegisterPeriodicTaskWeak: reportingObject has already been dealloced", &v6, 0x1Cu);
    }
  }
}

BOOL reportingRegisterPeriodicTaskOnQueue(_BOOL8 result, uint64_t a2, int a3, char a4, char a5, uint64_t a6)
{
  if (result)
  {
    if ((a3 + 1) > 1)
    {
      v11 = result;
      v12 = [result reportingQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __reportingRegisterPeriodicTaskOnQueue_block_invoke;
      v13[3] = &unk_278BD5250;
      v14 = a3;
      v15 = a4;
      v16 = a5;
      v13[4] = v11;
      v13[5] = a2;
      v13[6] = a6;
      dispatch_async(v12, v13);
      return 1;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        reportingRegisterPeriodicTaskOnQueue_cold_1();
      }

      return 0;
    }
  }

  return result;
}

uint64_t __reportingRegisterPeriodicTaskOnQueue_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingRegisterPeriodicTaskOnQueue");
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(a1 + 60);
    v6 = *(a1 + 61);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __reportingRegisterPeriodicTaskOnQueue_block_invoke_2;
    v7[3] = &unk_278BD5228;
    v8 = *(a1 + 40);
    return [v3 registerPeriodicTaskForModule:v4 needToUpdate:v5 needToReport:v6 serviceBlock:v7];
  }

  return result;
}

void __reportingRegisterPeriodicTaskOnQueue_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __reportingRegisterPeriodicTaskOnQueue_block_invoke_3;
  v4[3] = &unk_278BD5278;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_sync(v2, v4);
}

uint64_t __reportingRegisterPeriodicTaskOnQueue_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

BOOL reportingUnregisterPeriodicTask(_BOOL8 result, int a2)
{
  if (result)
  {
    if ((a2 + 1) > 1)
    {
      v3 = result;
      v4 = [result reportingQueue];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __reportingUnregisterPeriodicTask_block_invoke;
      v5[3] = &unk_278BD4D98;
      v5[4] = v3;
      v6 = a2;
      dispatch_async(v4, v5);
      return 1;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        reportingUnregisterPeriodicTask_cold_1();
      }

      return 0;
    }
  }

  return result;
}

uint64_t __reportingUnregisterPeriodicTask_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingUnregisterPeriodicTask");
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 unregisterPeriodTaskForModule:v4];
  }

  return result;
}

BOOL reportingStartTimer(void *a1, __int16 a2, __int16 a3)
{
  if (a1)
  {
    v6 = [a1 reportingQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __reportingStartTimer_block_invoke;
    v8[3] = &unk_278BD4D98;
    v8[4] = a1;
    v9 = a2;
    v10 = a3;
    dispatch_async(v6, v8);
  }

  return a1 != 0;
}

uint64_t __reportingStartTimer_block_invoke(uint64_t a1)
{
  v3 = 0;
  reportingGetDefaults(&v3 + 1, &v3);
  [*(a1 + 32) clientType];
  result = _validReportingObject(*(a1 + 32), "reportingStartTimer");
  if (result)
  {
    return [*(a1 + 32) startLogTimerWithInterval:HIDWORD(v3) reportingMultiplier:v3 category:*(a1 + 40) type:*(a1 + 42)];
  }

  return result;
}

void reportingGetDefaults(int *a1, int *a2)
{
  if (a1 && a2)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ReportingUpdateInterval", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
    if (AppIntegerValue <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = AppIntegerValue;
    }

    if (v5 >= 10)
    {
      v5 = 10;
    }

    if (keyExistsAndHasValidFormat)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    *a1 = v6;
    v7 = CFPreferencesGetAppIntegerValue(@"ReportingFrequency", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 10)
    {
      v8 = 10;
    }

    if (keyExistsAndHasValidFormat)
    {
      v9 = v8;
    }

    else
    {
      v9 = 5;
    }

    *a2 = v9;
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingGetDefaults_cold_1();
    }
  }
}

BOOL reportingStopTimer(void *a1)
{
  if (a1)
  {
    v2 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingStopTimer_block_invoke;
    block[3] = &unk_278BD4C38;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  return a1 != 0;
}

uint64_t __reportingStopTimer_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingStopTimer");
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 stopLogTimer];
  }

  return result;
}

BOOL reportingSetNWActivityReportingEnabled(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 reportingSetNetworkActivityReportingEnabled:a2];
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingSetNWActivityReportingEnabled_cold_1();
    }
  }

  return a1 != 0;
}

uint64_t reportingStreamGroupFromStreamGroupID(uint64_t a1)
{
  if (a1 <= 1718909043)
  {
    if (a1 > 1667329398)
    {
      if (a1 == 1667329399)
      {
        return 5;
      }

      if (a1 == 1667330164)
      {
        return 7;
      }
    }

    else
    {
      if (a1 == 1650745716)
      {
        return 10;
      }

      if (a1 == 1667329381)
      {
        return 1;
      }
    }
  }

  else if (a1 <= 1835623286)
  {
    if (a1 == 1718909044)
    {
      return 8;
    }

    if (a1 == 1835623282)
    {
      return 2;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x6D696377:
        return 6;
      case 0x73637265:
        return 3;
      case 0x73797361:
        return 4;
    }
  }

  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    reportingStreamGroupFromStreamGroupID_cold_1();
  }

  return 0;
}

uint64_t reportingSessionModeFromOperatingMode(uint64_t a1)
{
  switch(a1)
  {
    case 6:
      return 2;
    case 2:
      return 1;
    case 1:
      return 2;
  }

  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    result = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    reportingSessionModeFromOperatingMode_cold_1();
  }

  return 0;
}

uint64_t reportingGetLearntBitrateForSegment(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return [a1 learntBitrateForSegment:a2 defaultValue:a3];
  }

  else
  {
    return a3;
  }
}

void reportingAgentGetAlgoScores(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    [a1 reportingAgentGetAlgosScores:a2 newAlgosScore:a3];
  }

  else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      reportingAgentGetAlgoScores_cold_1();
    }
  }
}

void *reportingGetUploadFlag(void *result)
{
  if (result)
  {
    v1 = [result backends];
    return [v1 containsObject:sRTCReportingBackendUploadServer];
  }

  return result;
}

BOOL reportingUploadFileWithName(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __reportingUploadFileWithName_block_invoke;
    v6[3] = &unk_278BD4D48;
    v6[4] = a1;
    v6[5] = a2;
    dispatch_async(v4, v6);
  }

  return a1 != 0;
}

uint64_t __reportingUploadFileWithName_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingUploadFileWithName");
  if (result)
  {
    v3 = [*(a1 + 32) reportingObject];
    v4 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 40)];

    return [v3 uploadFileWithURL:v4 completionHandler:&__block_literal_global_616];
  }

  return result;
}

void __reportingUploadFileWithName_block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "failed";
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "reportingUploadFileWithName_block_invoke_2";
      if (a2)
      {
        v5 = "successful";
      }

      v10 = 1024;
      v11 = 2522;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d reportingUploadFileWithName: %s.", &v6, 0x26u);
    }
  }
}

void reportingMLEnhance(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", a3), @"MLSFENB"}];
  if (a2)
  {
    [v10 setObject:a2 forKeyedSubscript:@"VCSPUUID"];
  }

  if ((a5 & 1) == 0)
  {
    [v10 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", a4), @"MLSW"}];
  }

  reportingGenericEvent(a1, 48, 0, v10);
}

void reportingVideoProp(void *a1, int a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v15 = MEMORY[0x277CBEB38];
    v23[0] = @"Width";
    v24[0] = [MEMORY[0x277CCABA8] numberWithInt:a5];
    v23[1] = @"Height";
    v24[1] = [MEMORY[0x277CCABA8] numberWithInt:a6];
    v23[2] = @"Framerate";
    v24[2] = [MEMORY[0x277CCABA8] numberWithInt:a7];
    v16 = [v15 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v24, v23, 3)}];
    v17 = v16;
    if (a8)
    {
      [v16 addEntriesFromDictionary:a8];
    }

    v18 = [a1 reportingQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __reportingVideoProp_block_invoke;
    v19[3] = &unk_278BD5058;
    v20 = a2;
    v19[4] = a1;
    v19[5] = v17;
    v21 = a3;
    v22 = a4;
    dispatch_async(v18, v19);
  }
}

void __reportingVideoProp_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingVideoProp"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:*(a1 + 54) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v2}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingVideoProp_block_invoke_cold_1();
      }
    }
  }
}

void reportingVideoFeatureToggle(void *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = a2;
    v8[0] = [MEMORY[0x277CCABA8] numberWithBool:?];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingGenericEvent_block_invoke;
    v5[3] = &unk_278BD48B8;
    v6 = 48;
    v5[4] = a1;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

uint64_t reportingDefaultRealtimePeriod()
{
  v2 = 0;
  v1 = 0;
  reportingGetDefaults(&v2, &v1);
  return (v1 * v2);
}

uint64_t algoScorerPeriodicTask(void *a1, void *a2)
{
  v4 = 0.0;
  v5 = 0.0;
  [a1 reportingAgentGetAlgosScores:&v5 newAlgosScore:&v4];
  [a2 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v4 - v5), @"iALGOS"}];
  return [a2 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v4), @"ALGOS"}];
}

void reportingRegisterSystemStats(void *a1, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v26 = -38605833;
    keys = xmmword_23D59AB80;
    if (MGIsDeviceOneOfType())
    {
      v4 = 2;
    }

    else
    {
      v24 = -894965712;
      values = xmmword_23D59AB94;
      if (MGIsDeviceOneOfType())
      {
        v4 = 3;
      }

      else
      {
        v22 = -2101636455;
        valuePtr = xmmword_23D59ABA8;
        if (MGIsDeviceOneOfType())
        {
          v4 = 4;
        }

        else
        {
          v20 = -1955568593;
          v19 = xmmword_23D59ABBC;
          if (MGIsDeviceOneOfType())
          {
            v4 = 5;
          }

          else
          {
            v18 = 28030256;
            v17 = xmmword_23D59ABD0;
            if (MGIsDeviceOneOfType())
            {
              v4 = 6;
            }

            else
            {
              v16 = 1214363620;
              v15 = xmmword_23D59ABE4;
              if (MGIsDeviceOneOfType())
              {
                v4 = 7;
              }

              else
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }

    if (!_MergedGlobals_1007)
    {
      v5 = IOServiceMatching("IOPMPowerSource");
      if (v5)
      {
        _MergedGlobals_1007 = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v5);
      }
    }

    if (!dword_27E2DEF84)
    {
      *&values = @"backlight-control";
      v10 = *MEMORY[0x277CBECE8];
      *&keys = CFDictionaryCreate(*MEMORY[0x277CBECE8], &values, MEMORY[0x277CBED28], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (keys)
      {
        *&values = @"IOPropertyMatch";
        v11 = CFDictionaryCreate(v10, &values, &keys, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFRelease(keys);
        if (v11)
        {
          dword_27E2DEF84 = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v11);
        }
      }
    }

    if (v4 && !hidEventSystem)
    {
      v6 = *MEMORY[0x277CBECE8];
      hidEventSystem = IOHIDEventSystemClientCreate();
      if (hidEventSystem)
      {
        *&keys = @"PrimaryUsagePage";
        *(&keys + 1) = @"PrimaryUsage";
        LODWORD(valuePtr) = 65280;
        LODWORD(v19) = 5;
        *&values = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
        *(&values + 1) = CFNumberCreate(v6, kCFNumberSInt32Type, &v19);
        v7 = CFDictionaryCreate(v6, &keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFRelease(values);
        CFRelease(*(&values + 1));
        IOHIDEventSystemClientSetMatching();
        CFRelease(v7);
        qword_27E2DEF88 = IOHIDEventSystemClientCopyServices(hidEventSystem);
      }
    }

    v8 = [VCWeakObjectHolder weakObjectHolderWithObject:a1, 0];
    v9 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingRegisterSystemStats_block_invoke;
    block[3] = &unk_278BD5058;
    v13 = a2;
    v14 = v4;
    block[4] = a1;
    block[5] = v8;
    dispatch_async(v9, block);
  }
}

uint64_t __reportingRegisterSystemStats_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingRegisterSystemStats");
  if (result)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingRegisterSystemStats_block_invoke_2;
    v5[3] = &unk_278BD52C0;
    v3 = *(a1 + 48);
    v6 = *(a1 + 52);
    v4 = *(a1 + 32);
    v5[4] = *(a1 + 40);
    return [v4 registerPeriodicTaskForModule:v3 needToUpdate:0 needToReport:1 serviceBlock:v5];
  }

  return result;
}

void reportingThermal(void *a1, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v20[0] = @"Thermal";
    v21[0] = [MEMORY[0x277CCABA8] numberWithInt:a4];
    v20[1] = @"TimeToThermal";
    v21[1] = [MEMORY[0x277CCABA8] numberWithInt:a5];
    v20[2] = @"Charging";
    valuePtr = 0;
    MatchingService = _MergedGlobals_1007;
    if (!_MergedGlobals_1007)
    {
      v10 = IOServiceMatching("IOPMPowerSource");
      if (v10)
      {
        MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v10);
        _MergedGlobals_1007 = MatchingService;
        if (!MatchingService)
        {
          goto LABEL_10;
        }
      }

      else
      {
        MatchingService = _MergedGlobals_1007;
        if (!_MergedGlobals_1007)
        {
          goto LABEL_10;
        }
      }
    }

    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IsCharging", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v12 = CFProperty;
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      CFRelease(v12);
      if (valuePtr)
      {
        v13 = @"Yes";
LABEL_11:
        v21[2] = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
        v15 = [a1 reportingQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __reportingThermal_block_invoke;
        block[3] = &unk_278BD5080;
        v17 = a2;
        block[4] = a1;
        block[5] = v14;
        v18 = a3;
        dispatch_async(v15, block);
        return;
      }
    }

LABEL_10:
    v13 = @"No";
    goto LABEL_11;
  }
}

void __reportingThermal_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingThermal"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:36 type:*(a1 + 52) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v2}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingThermal_block_invoke_cold_1();
      }
    }
  }
}

void reportingConnecting(void *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v22[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v20 = 1023;
    v14 = malloc_type_calloc(1uLL, 0x400uLL, 0xB6D3A456uLL);
    if (sysctlbyname("kern.bootargs", v14, &v20, 0, 0))
    {
      v15 = @"Unavailable";
    }

    else
    {
      v14[1023] = 0;
      v15 = [MEMORY[0x277CCACA0] stringWithUTF8String:v14];
    }

    free(v14);
    v22[0] = v15;
    v21[0] = @"BootArgs";
    v21[1] = @"NegSw";
    v22[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a3];
    v21[2] = @"RemSw";
    v22[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4];
    v21[3] = @"RemSwAvlbl";
    v22[3] = [MEMORY[0x277CCABA8] numberWithBool:a5];
    v21[4] = @"vcrcProfNum";
    v22[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a6];
    v21[5] = @"PCHADel";
    v22[5] = [MEMORY[0x277CCABA8] numberWithDouble:a7];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
    v17 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingConnecting_block_invoke;
    block[3] = &unk_278BD4E10;
    v19 = a2;
    block[4] = a1;
    block[5] = v16;
    dispatch_async(v17, block);
  }
}

void __reportingConnecting_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingConnecting"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:1 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingConnecting_block_invoke_cold_1();
      }
    }
  }
}

void reportingDisconnected(void *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v20[0] = @"FileUpload";
    v21[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:a3];
    v20[1] = @"Roaming";
    v21[1] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:a4];
    v20[2] = @"RxExcessICE";
    v21[2] = [MEMORY[0x277CCABA8] numberWithInt:a5];
    v20[3] = @"TxExcessICE";
    v21[3] = [MEMORY[0x277CCABA8] numberWithInt:a6];
    v20[4] = @"RxExcessRTP";
    v21[4] = [MEMORY[0x277CCABA8] numberWithInt:a7];
    v20[5] = @"TxExcessRTP";
    v21[5] = [MEMORY[0x277CCABA8] numberWithInt:a8];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
    v17 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingDisconnected_block_invoke;
    block[3] = &unk_278BD52E8;
    block[4] = a1;
    block[5] = a9;
    v19 = a2;
    block[6] = v16;
    dispatch_async(v17, block);
  }
}

void __reportingDisconnected_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingDisconnected"))
  {
    v3 = 0;
    v2 = *(a1 + 40);
    if (v2)
    {
      if (([*(a1 + 32) sendMessageWithCategory:80 type:*(a1 + 56) payload:v2 error:&v3] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          __reportingDisconnected_block_invoke_cold_1();
        }
      }
    }

    if (([*(a1 + 32) sendMessageWithCategory:4 type:*(a1 + 56) payload:*(a1 + 48) error:&v3] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingDisconnected_block_invoke_cold_2();
      }
    }
  }
}

void reportingVideoPaused(void *a1, __int16 a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8 = @"VCSPVideoDegraded";
    v9[0] = [MEMORY[0x277CCABA8] numberWithBool:?];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = [a1 reportingQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __reportingVideoPaused_block_invoke;
    v6[3] = &unk_278BD4E10;
    v7 = a2;
    v6[4] = a1;
    v6[5] = v4;
    dispatch_async(v5, v6);
  }
}

void __reportingVideoPaused_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingVideoPaused"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:8 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingVideoPaused_block_invoke_cold_1();
      }
    }
  }
}

void reportingAWDCallStart(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v12[0] = @"Send";
    v13[0] = [MEMORY[0x277CCABA8] numberWithBool:a2];
    v12[1] = @"Time";
    v13[1] = [MEMORY[0x277CCABA8] numberWithLong:a3];
    v12[2] = @"Mode";
    v13[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a4];
    v12[3] = @"Nonce";
    v13[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a5];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
    v10 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingAWDCallStart_block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = a1;
    block[5] = v9;
    dispatch_async(v10, block);
  }
}

void __reportingAWDCallStart_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAWDCallStart"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAWDCallStart_block_invoke_cold_1();
      }
    }
  }
}

void reportingRemoteFrameSize(void *a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8[0] = @"Width";
    v9[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a2];
    v8[1] = @"Height";
    v9[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a3];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v6 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingRemoteFrameSize_block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = a1;
    block[5] = v5;
    dispatch_async(v6, block);
  }
}

void __reportingRemoteFrameSize_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingRemoteFrameSize"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:2 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingRemoteFrameSize_block_invoke_cold_1();
      }
    }
  }
}

void reportingConnectionType(void *a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = @"ConnType";
    v7[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a2];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v4 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingConnectionType_block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = a1;
    block[5] = v3;
    dispatch_async(v4, block);
  }
}

void __reportingConnectionType_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingConnectionType"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:3 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingConnectionType_block_invoke_cold_1();
      }
    }
  }
}

void reportingLocalAndRemoteInterface(void *a1, const char *a2, const char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a3;
    v4 = a2;
    if (a2)
    {
      if (a3)
      {
LABEL_13:
        v13[0] = @"LocalInterface";
        v13[1] = @"RemoteInterface";
        v14[0] = [MEMORY[0x277CCACA0] stringWithUTF8String:v4];
        v14[1] = [MEMORY[0x277CCACA0] stringWithUTF8String:v3];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
        v11 = [a1 reportingQueue];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __reportingLocalAndRemoteInterface_block_invoke;
        v12[3] = &unk_278BD4D48;
        v12[4] = a1;
        v12[5] = v10;
        dispatch_async(v11, v12);
        return;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
      {
        v6 = VRTraceErrorLogLevelToCSTR(5u);
        v7 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v16 = v6;
          v17 = 2080;
          v18 = "reportingLocalAndRemoteInterface";
          v19 = 1024;
          v20 = 3199;
          _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Tried to report NULL localInterface to backends", buf, 0x1Cu);
        }
      }

      v4 = "Unknown";
      if (v3)
      {
        goto LABEL_13;
      }
    }

    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR(5u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v8;
        v17 = 2080;
        v18 = "reportingLocalAndRemoteInterface";
        v19 = 1024;
        v20 = 3203;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d Tried to report NULL remoteInterface to backends", buf, 0x1Cu);
      }
    }

    v3 = "Unknown";
    goto LABEL_13;
  }
}

void __reportingLocalAndRemoteInterface_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingLocalAndRemoteInterface"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:39 type:4 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingLocalAndRemoteInterface_block_invoke_cold_1();
      }
    }
  }
}

void reportingHandoverResult(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v14[0] = @"codec";
    v15[0] = [MEMORY[0x277CCABA8] numberWithInt:a2];
    v14[1] = @"captureRule";
    v15[1] = [MEMORY[0x277CCACA0] stringWithUTF8String:a3];
    v14[2] = @"encodeRule";
    v15[2] = [MEMORY[0x277CCACA0] stringWithUTF8String:a4];
    v14[3] = @"localBitrateCap";
    v15[3] = [MEMORY[0x277CCABA8] numberWithInt:a5];
    v14[4] = @"remoteBitrateCap";
    v15[4] = [MEMORY[0x277CCABA8] numberWithInt:a6];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
    v12 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingHandoverResult_block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = a1;
    block[5] = v11;
    dispatch_async(v12, block);
  }
}

void __reportingHandoverResult_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingHandoverResult"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:54 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingHandoverResult_block_invoke_cold_1();
      }
    }
  }
}

void reportingVisualRectangle(void *a1, __int16 a2, double a3, double a4, double a5, double a6)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v15[0] = @"OriginX";
    v16[0] = [MEMORY[0x277CCABA8] numberWithDouble:a3];
    v15[1] = @"OriginY";
    v16[1] = [MEMORY[0x277CCABA8] numberWithDouble:a4];
    v15[2] = @"SizeWidth";
    v16[2] = [MEMORY[0x277CCABA8] numberWithDouble:a5];
    v15[3] = @"SizeHeight";
    v16[3] = [MEMORY[0x277CCABA8] numberWithDouble:a6];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v12 = [a1 reportingQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __reportingVisualRectangle_block_invoke;
    v13[3] = &unk_278BD4E10;
    v14 = a2;
    v13[4] = a1;
    v13[5] = v11;
    dispatch_async(v12, v13);
  }
}

void __reportingVisualRectangle_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingVisualRectangle"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:60 type:*(a1 + 48) payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingVisualRectangle_block_invoke_cold_1();
      }
    }
  }
}

void reportingMediaRecorderEvents(void *a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (CFDictionaryGetValue(theDict, @"VCMRRecipientUUID"))
    {
      v4 = [a1 reportingQueue];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __reportingMediaRecorderEvents_block_invoke;
      v5[3] = &unk_278BD4D48;
      v5[4] = a1;
      v5[5] = theDict;
      dispatch_async(v4, v5);
    }

    else if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        reportingMediaRecorderEvents_cold_1();
      }
    }
  }
}

void __reportingMediaRecorderEvents_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingMediaRecorderEvents"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:81 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingMediaRecorderEvents_block_invoke_cold_1();
      }
    }
  }
}

void reportingVideoStreamEvent(void *a1, int a2, __int16 a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [a1 clientType];
    if ((v8 + 1) > 0x1C || ((1 << (v8 + 1)) & 0x15ECB1A5) == 0)
    {
      v10 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingVideoStreamEvent_block_invoke;
      block[3] = &unk_278BD5080;
      v12 = a2;
      block[4] = a1;
      block[5] = a4;
      v13 = a3;
      dispatch_async(v10, block);
    }
  }
}

void __reportingVideoStreamEvent_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingVideoStreamEvent"))
  {
    v6 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:0 payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v6}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 52);
        v5 = [v6 code];
        *buf = 136316418;
        v8 = v2;
        v9 = 2080;
        v10 = "reportingVideoStreamEvent_block_invoke";
        v11 = 1024;
        v12 = 3382;
        v13 = 1024;
        v14 = 3382;
        v15 = 1024;
        v16 = v4;
        v17 = 1024;
        v18 = v5;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }
}

void reportingFeatureConfigEvent(void *a1, int a2, __int16 a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [a1 clientType];
    if ((v8 + 1) > 0x1C || ((1 << (v8 + 1)) & 0x15ECB1A5) == 0)
    {
      v10 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingFeatureConfigEvent_block_invoke;
      block[3] = &unk_278BD5080;
      v12 = a2;
      block[4] = a1;
      block[5] = a4;
      v13 = a3;
      dispatch_async(v10, block);
    }
  }
}

void __reportingFeatureConfigEvent_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingFeatureConfigEvent"))
  {
    v6 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:0 payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v6}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 52);
        v5 = [v6 code];
        *buf = 136316418;
        v8 = v2;
        v9 = 2080;
        v10 = "reportingFeatureConfigEvent_block_invoke";
        v11 = 1024;
        v12 = 3405;
        v13 = 1024;
        v14 = 3405;
        v15 = 1024;
        v16 = v4;
        v17 = 1024;
        v18 = v5;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }
}

void reportingEventWithAllowedClientType(void *a1, int a2, int a3, __int16 a4, uint64_t a5)
{
  if (a1)
  {
    if ([a1 clientType] == a2)
    {
      v9 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingEventWithAllowedClientType_block_invoke;
      block[3] = &unk_278BD5080;
      v11 = a3;
      block[4] = a1;
      block[5] = a5;
      v12 = a4;
      dispatch_async(v9, block);
    }
  }
}

void __reportingEventWithAllowedClientType_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingEventWithAllowedClientType"))
  {
    v6 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:0 payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v6}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 52);
        v5 = [v6 code];
        *buf = 136316418;
        v8 = v2;
        v9 = 2080;
        v10 = "reportingEventWithAllowedClientType_block_invoke";
        v11 = 1024;
        v12 = 3428;
        v13 = 1024;
        v14 = 3428;
        v15 = 1024;
        v16 = v4;
        v17 = 1024;
        v18 = v5;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }
}

void reportingAudioStreamEvent(void *a1, int a2, __int16 a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [a1 serviceName];
    if (([v8 isEqualToString:sRTCReportingFaceTimeServiceName] & 1) == 0)
    {
      v9 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingAudioStreamEvent_block_invoke;
      block[3] = &unk_278BD5080;
      v11 = a2;
      block[4] = a1;
      block[5] = a4;
      v12 = a3;
      dispatch_async(v9, block);
    }
  }
}

void __reportingAudioStreamEvent_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingAudioStreamEvent"))
  {
    v6 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:0 payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v6}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 52);
        v5 = [v6 code];
        *buf = 136316418;
        v8 = v2;
        v9 = 2080;
        v10 = "reportingAudioStreamEvent_block_invoke";
        v11 = 1024;
        v12 = 3451;
        v13 = 1024;
        v14 = 3451;
        v15 = 1024;
        v16 = v4;
        v17 = 1024;
        v18 = v5;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType:%d error code %d.", buf, 0x2Eu);
      }
    }
  }
}

void reportingAudioStreamLogMetricSample(void *a1, const void *a2)
{
  if (a1)
  {
    v4 = [a1 clientType];
    if ((v4 + 1) > 0x1C || ((1 << (v4 + 1)) & 0x1A536FF3) == 0)
    {
      CFRetain(a2);
      v6 = [a1 reportingQueue];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __reportingAudioStreamLogMetricSample_block_invoke;
      v7[3] = &unk_278BD4DC0;
      v7[4] = a1;
      v7[5] = a2;
      dispatch_async(v6, v7);
    }
  }
}

void __reportingAudioStreamLogMetricSample_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAudioStreamLogMetricSample"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:140 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAudioStreamLogMetricSample_block_invoke_cold_1();
      }
    }
  }

  CFRelease(*(a1 + 40));
}

void reportingAudioStreamLogCallStart(void *a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v12 = [a1 clientType];
    if ((v12 + 1) > 0x1C || ((1 << (v12 + 1)) & 0x1A536FF3) == 0)
    {
      if (!a2)
      {
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            reportingAudioStreamLogCallStart_cold_1();
          }
        }

        a2 = @"0";
      }

      v18[0] = a2;
      v17[0] = @"CallID";
      v17[1] = @"CodecID";
      v18[1] = [MEMORY[0x277CCABA8] numberWithInt:a3];
      v17[2] = @"ATxR";
      v18[2] = [MEMORY[0x277CCABA8] numberWithInt:a4];
      v17[3] = @"ASR";
      v18[3] = [MEMORY[0x277CCABA8] numberWithInt:a5];
      v17[4] = @"PTM";
      v18[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:a6];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
      v15 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingAudioStreamLogCallStart_block_invoke;
      block[3] = &unk_278BD4D48;
      block[4] = a1;
      block[5] = v14;
      dispatch_async(v15, block);
    }
  }
}

void __reportingAudioStreamLogCallStart_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAudioStreamLogCallStart"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:101 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAudioStreamLogCallStart_block_invoke_cold_1();
      }
    }
  }
}

void reportingAudioStreamLogCallEnd(void *a1, __CFString *a2, double a3)
{
  if (a1)
  {
    v6 = [a1 clientType];
    if ((v6 + 1) > 0x1C || ((1 << (v6 + 1)) & 0x1A536FF3) == 0)
    {
      if (!a2)
      {
        if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            reportingAudioStreamLogCallEnd_cold_1();
          }
        }

        a2 = @"0";
      }

      v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
      [v8 setObject:a2 forKeyedSubscript:@"CallID"];
      if ([a1 clientType] == 1)
      {
        [v8 setObject:&unk_284FA5558 forKeyedSubscript:@"Mode"];
        [v8 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", a3), @"StreamConnectionTime"}];
      }

      v9 = [a1 reportingQueue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __reportingAudioStreamLogCallEnd_block_invoke;
      v10[3] = &unk_278BD4D48;
      v10[4] = a1;
      v10[5] = v8;
      dispatch_async(v9, v10);
    }
  }
}

void __reportingAudioStreamLogCallEnd_block_invoke(uint64_t a1)
{
  if (_validReportingObject(*(a1 + 32), "reportingAudioStreamLogCallEnd"))
  {
    v2 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:102 type:0 payload:*(a1 + 40) error:&v2] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __reportingAudioStreamLogCallEnd_block_invoke_cold_1();
      }
    }
  }
}

void reportingScreenCaptureEvent(void *a1, int a2, __int16 a3, __int16 a4, uint64_t a5)
{
  if (a1)
  {
    v10 = [a1 clientType];
    if ((v10 + 1) > 0x1C || ((1 << (v10 + 1)) & 0x15ECB1A5) == 0)
    {
      v12 = [a1 reportingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __reportingScreenCaptureEvent_block_invoke;
      block[3] = &unk_278BD5058;
      v14 = a2;
      block[4] = a1;
      block[5] = a5;
      v15 = a3;
      v16 = a4;
      dispatch_async(v12, block);
    }
  }
}

void __reportingScreenCaptureEvent_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_validReportingObject(*(a1 + 32), "reportingScreenCaptureEvent"))
  {
    v6 = 0;
    if (([*(a1 + 32) sendMessageWithCategory:*(a1 + 52) type:*(a1 + 54) payload:combineModuleSpecificInfoAndPayload(*(a1 + 32) error:{*(a1 + 48), *(a1 + 40)), &v6}] & 1) == 0 && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR(3u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 52);
        v5 = [v6 code];
        *buf = 136316418;
        v8 = v2;
        v9 = 2080;
        v10 = "reportingScreenCaptureEvent_block_invoke";
        v11 = 1024;
        v12 = 3576;
        v13 = 1024;
        v14 = 3576;
        v15 = 1024;
        v16 = v4;
        v17 = 1024;
        v18 = v5;
        _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: eventType=%d error code=%d.", buf, 0x2Eu);
      }
    }
  }
}

uint64_t processGroupSymptoms(uint64_t a1)
{
  if ([&unk_284FA5380 objectForKey:a1])
  {
    return [objc_msgSend(&unk_284FA5380 objectForKeyedSubscript:{a1), "integerValue"}];
  }

  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      processGroupSymptoms_cold_1();
    }
  }

  return 1;
}

void VCReporting_finalizeAggregationWithPayload(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __VCReporting_finalizeAggregationWithPayload_block_invoke;
    v5[3] = &unk_278BD4D48;
    v5[4] = a1;
    v5[5] = a2;
    dispatch_async(v4, v5);
  }
}

void VCReporting_FlushReportingSession(void *a1)
{
  if (a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__3;
    v10 = __Block_byref_object_dispose__3;
    v11 = dispatch_semaphore_create(0);
    v2 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __VCReporting_FlushReportingSession_block_invoke;
    v5[3] = &unk_278BD4CF8;
    v5[4] = a1;
    v5[5] = &v6;
    dispatch_sync(v2, v5);
    v3 = v7[5];
    v4 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v3, v4) && VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        VCReporting_FlushReportingSession_cold_1();
      }
    }

    dispatch_release(v7[5]);
    _Block_object_dispose(&v6, 8);
  }
}

void sub_23D54E1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *reportingSymptomSetCallback(void *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    return [result reportingSetReportCallback:a2 withContext:a3];
  }

  return result;
}

uint64_t VCReporting_GetDynamicReportingModuleID(void *a1)
{
  if (a1)
  {
    return [a1 nextUnassignedReportingModuleID];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

id selectDestinationForRTMetrics(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = [a1 userInfoMap];
        v6 = [v5 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", a2)}];
        if (v6)
        {
          v7 = v6;
          if ([v6 objectForKeyedSubscript:@"VCVSStreamIDs"] || objc_msgSend(v7, "objectForKeyedSubscript:", @"VCASStreamIDs"))
          {
            v8 = MEMORY[0x277CCACA0];
            v9 = [v7 objectForKeyedSubscript:@"VCSPUUID"];
            if ([v7 objectForKeyedSubscript:@"VCVSStreamIDs"])
            {
              v10 = @"VCVSStreamIDs";
            }

            else
            {
              v10 = @"VCASStreamIDs";
            }

            v11 = [v8 stringWithFormat:@"%@:%@", v9, objc_msgSend(v7, "objectForKeyedSubscript:", v10)];
            v12 = [v3 objectForKeyedSubscript:sRTCReportingStreamCollection];
            if (!v12)
            {
              v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v3 setObject:v12 forKeyedSubscript:sRTCReportingStreamCollection];
            }

            v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v12 setObject:v3 forKeyedSubscript:v11];

            [v3 addEntriesFromDictionary:v7];
          }
        }
      }
    }
  }

  return v3;
}

void reportingSetAggregatorForClientType(void *a1, int a2, char a3, char a4, uint64_t a5)
{
  if (a1)
  {
    v10 = [a1 reportingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __reportingSetAggregatorForClientType_block_invoke;
    block[3] = &unk_278BD5080;
    block[4] = a1;
    block[5] = a5;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    dispatch_async(v10, block);
  }
}

uint64_t __reportingSetAggregatorForClientType_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingSetAggregatorForClientType_block_invoke");
  if (result)
  {
    if ([*(a1 + 40) count])
    {
      [*(a1 + 32) sendMessageWithCategory:364 type:0 payload:*(a1 + 40) error:0 toAggregatorOnly:1];
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 52);
    v6 = *(a1 + 53);

    return [v3 setAggregatorForClientType:v4 isOneToOneEnabled:v5 shouldCreateSecondAggregator:v6];
  }

  return result;
}

uint64_t VCReporting_GetClientType(void *a1)
{
  if (a1)
  {
    return [a1 clientType];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void reportingSetReportingClientPersistentSetting(void *a1, __int128 *a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingSetReportingClientPersistentSetting_block_invoke;
    v5[3] = &unk_278BD5338;
    v5[4] = a1;
    v6 = *a2;
    v7 = *(a2 + 2);
    dispatch_async(v4, v5);
  }
}

uint64_t __reportingSetReportingClientPersistentSetting_block_invoke(uint64_t a1)
{
  result = _validReportingObject(*(a1 + 32), "reportingSetReportingClientPersistentSetting_block_invoke");
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    [*(a1 + 32) setPersistentSettings:&v3];
    return [objc_msgSend(*(a1 + 32) "aggregator")];
  }

  return result;
}

void reportingSetDataPath(void *a1, int a2)
{
  if (a1)
  {
    v4 = [a1 reportingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __reportingSetDataPath_block_invoke;
    v5[3] = &unk_278BD4D98;
    v5[4] = a1;
    v6 = a2;
    dispatch_async(v4, v5);
  }
}

void *VCReporting_DumpIntoDataStore(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = [result dataStore];
    if (result)
    {
      v4 = [v3 dataStore];
      v5 = *(a2 + 144);
      v10[8] = *(a2 + 128);
      v10[9] = v5;
      v11 = *(a2 + 160);
      v6 = *(a2 + 80);
      v10[4] = *(a2 + 64);
      v10[5] = v6;
      v7 = *(a2 + 112);
      v10[6] = *(a2 + 96);
      v10[7] = v7;
      v8 = *(a2 + 16);
      v10[0] = *a2;
      v10[1] = v8;
      v9 = *(a2 + 48);
      v10[2] = *(a2 + 32);
      v10[3] = v9;
      return VCPersistentDataStore_DumpMessage(v4, v10);
    }
  }

  return result;
}

void VCReporting_DisableDataCollection(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    [objc_msgSend(a1 "remoteDataProducer")];
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
      {
        v3 = VRTraceErrorLogLevelToCSTR(6u);
        v4 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315650;
          v11 = v3;
          v12 = 2080;
          v13 = "VCReporting_DisableDataCollection";
          v14 = 1024;
          v15 = 3840;
          v5 = "ReportingVC [%s] %s:%d Disabled Remote Data collection";
          v6 = v4;
          v7 = 28;
LABEL_12:
          _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, v5, &v10, v7);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v2 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v2 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR(6u);
        v9 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316162;
          v11 = v8;
          v12 = 2080;
          v13 = "VCReporting_DisableDataCollection";
          v14 = 1024;
          v15 = 3840;
          v16 = 2112;
          v17 = v2;
          v18 = 2048;
          v19 = a1;
          v5 = "ReportingVC [%s] %s:%d %@(%p) Disabled Remote Data collection";
          v6 = v9;
          v7 = 48;
          goto LABEL_12;
        }
      }
    }
  }
}

uint64_t filtered_update(unsigned int a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = (qword_27E2DEF90 + 8 * a1);
  v4 = time(0);
  v5 = v4;
  if (v4 < filtered_update_when - 60 || v4 > filtered_update_when + 60)
  {
    v7 = qword_27E2DEF90;
    *(qword_27E2DEF90 + 4) = 0x80000000;
    *(v7 + 12) = 0x80000000;
    *(v7 + 20) = 0x80000000;
    if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316162;
        v14 = v8;
        v15 = 2080;
        v16 = "filtered_update";
        v17 = 1024;
        v18 = 2731;
        v19 = 2048;
        v20 = v5;
        v21 = 2048;
        v22 = filtered_update_when;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, "ReportingVC [%s] %s:%d getSkinTemperature: resetting temps, now = %ld, last update = %ld", &v13, 0x30u);
      }
    }
  }

  filtered_update_when = v5;
  v10 = v3[1];
  if (v10 == 0x80000000)
  {
    v11 = a2 << 16;
  }

  else
  {
    v11 = v10 + (3276800 / *v3) * (a2 - (v10 >> 16));
    a2 = (v11 >> 16);
  }

  v3[1] = v11;
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return MEMORY[0x282121E70](v0, 15, 0, 0);
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{

  return MEMORY[0x282121E70](a1, 15, 0, 0);
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = *a1;

  return [v4 code];
}

uint64_t OUTLINED_FUNCTION_29()
{

  return objc_opt_respondsToSelector();
}

CFComparisonResult OUTLINED_FUNCTION_32_0()
{

  return CFStringCompare(v1, v0, 0);
}

CFComparisonResult OUTLINED_FUNCTION_33_0(const __CFString *a1)
{

  return CFStringCompare(a1, v1, 0);
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1)
{

  return IOHIDEventGetFloatValue();
}

const void *OUTLINED_FUNCTION_41()
{
  v3 = *(v0 + 3976);

  return CFArrayGetValueAtIndex(v3, v1);
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return [v0 performSelector:v1];
}

CFIndex OUTLINED_FUNCTION_44_0()
{
  v2 = *(v0 + 3976);

  return CFArrayGetCount(v2);
}

uint64_t _VRTraceIsInternalOSInstalled(int a1)
{
  v1 = _VRTraceIsInternalOSInstalled_hasChecked;
  if (_VRTraceIsInternalOSInstalled_hasChecked != 1 || a1 != 0)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"VRTraceSimulateCustomerBuild", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v4 = AppBooleanValue == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_23D4DF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "_VRTraceIsInternalOSInstalled: Simulating customer build", v6, 2u);
      }

      _VRTraceIsInternalOSInstalled_simulateCustomerBuild = 1;
    }

    v1 = _VRTraceIsInternalOSInstalled_hasChecked;
  }

  if ((v1 & 1) == 0)
  {
    _VRTraceIsInternalOSInstalled_isInternal = os_variant_has_internal_ui();
    _VRTraceIsInternalOSInstalled_hasChecked = 1;
  }

  return _VRTraceIsInternalOSInstalled_isInternal & ~_VRTraceIsInternalOSInstalled_simulateCustomerBuild & 1;
}

uint64_t VRTraceDefaultErrorLogLevel()
{
  if (_VRTraceIsInternalOSInstalled(0))
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

void VRTraceSetErrorLogLevel(uint64_t a1)
{
  v1 = a1;
  if (gVRTraceErrorLogLevel == -1)
  {
    VRTraceInit();
  }

  gVRTraceErrorLogLevel = v1;
  if (v1 > 6 || (gVRTraceModuleFilterEnabled & 1) != 0)
  {
    VRTraceSetErrorLogLevel_cold_1(v1);
  }
}

void VRTraceVariable_(int a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, size_t a8)
{
  if (gVRTraceErrorLogLevel == -1)
  {
    VRTraceInit();
  }

  if (VRTraceGetErrorLogLevelForModule(a2) >= a1)
  {
    v14 = malloc_type_malloc(a8, 0xBAD9DFE6uLL);
    if (v14)
    {
      v15 = v14;
      memcpy(v14, a7, a8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __VRTraceVariable__block_invoke;
      block[3] = &__block_descriptor_tmp_11;
      block[4] = a6;
      block[5] = v15;
      v17 = a1;
      block[6] = a8;
      block[7] = a5;
      dispatch_async(gVRTraceDispatchQueue, block);
    }

    else
    {

      VRTraceDebugBreak();
    }
  }
}

size_t VRTraceDebugBreak()
{
  pthread_once(&VRTraceDebugBreak_once_control, VRTraceDebugInit);
  result = fwrite("VRTraceDebugBreak() called.\n", 0x1CuLL, 1uLL, *MEMORY[0x277D85DF8]);
  if (gVRTraceShouldTrapOnDebugBreak == 1)
  {
    v1 = pthread_self();

    return pthread_kill(v1, 5);
  }

  return result;
}

uint64_t VRTraceDebugInit()
{
  result = getenv_plus("VRTraceShouldTrapOnDebugBreak");
  if (result || (result = getenv("USERBREAK")) != 0)
  {
    v1 = result;
    if ((*result - 48) > 9)
    {
      *__error() = 0;
      result = strncasecmp(v1, "yes", 3uLL);
      if (result && (result = strncasecmp(v1, "true", 4uLL), result))
      {
        v2 = 1;
        result = strncasecmp(v1, "t", 1uLL);
        if (result)
        {
          result = strncasecmp(v1, "no", 2uLL);
          if (result && (result = strncasecmp(v1, "false", 5uLL), result) && (result = strncasecmp(v1, "f", 1uLL), result))
          {
            result = __error();
            v2 = 0;
            *result = 22;
          }

          else
          {
            v2 = 0;
          }
        }
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      result = strtol(result, 0, 0);
      v2 = result != 0;
    }

    gVRTraceShouldTrapOnDebugBreak = v2;
  }

  return result;
}

void VRTraceSetErrorLogLevelForModule(const void *result, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceSetErrorLogLevelForModule_once == -1)
  {
    if (!result)
    {
      return;
    }
  }

  else
  {
    VRTraceSetErrorLogLevelForModule_cold_1();
    if (!result)
    {
      return;
    }
  }

  gVRTraceModuleFilterEnabled = 1;
  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR(7u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v4;
      v8 = 2080;
      v9 = "VRTraceSetErrorLogLevelForModule";
      v10 = 1024;
      v11 = 466;
      v12 = 2080;
      v13 = result;
      v14 = 2080;
      v15 = VRTraceErrorLogLevelToCSTR(a2);
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d ErrorLogLevel for module %s set to %s.", &v6, 0x30u);
    }
  }

  pthread_rwlock_wrlock(&gVRTraceLevelLock);
  CFDictionarySetValue(gVRTraceModuleFilter, result, a2);
  pthread_rwlock_unlock(&gVRTraceLevelLock);
}

CFMutableDictionaryRef __VRTraceSetErrorLogLevelForModule_block_invoke()
{
  result = CFDictionaryCreateMutable(0, 0, &dictCStringCallbacks, 0);
  gVRTraceModuleFilter = result;
  return result;
}

BOOL VRTraceIsOSFaultDisabled()
{
  keyExistsAndHasValidFormat = -86;
  if (CFPreferencesGetAppBooleanValue(@"disableOSLogFault", @"com.apple.VideoConference", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

CFStringRef CFSetCStringCopyDescription(const char *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "<NULL>";
  }

  return CFStringCreateWithCString(0, v1, 0x8000100u);
}

uint64_t CFSetCStringHash(char *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v4 = a1 + 1;
  do
  {
    result = (__ROR8__(result, 63) + 1) ^ v1;
    v5 = *v4++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t _VCRemoteDataCollectionDumpProducer_WriteToCSVCallbackColumns(FILE *__stream, unsigned int a2, const char **a3)
{
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      v7 = *a3++;
      v6 = v7;
      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = "";
      }

      fputs(v8, __stream);
      --v5;
    }

    while (v5);
  }

  fwrite(", ", 2uLL, 1uLL, __stream);
  return 0;
}

uint64_t _VCRemoteDataCollectionDumpProducer_WriteToCSVCallback(FILE *__stream, unsigned int a2, uint64_t a3)
{
  v4 = a2 - 1;
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      if (*(a3 + 8 * v6))
      {
        v8 = *(a3 + 8 * v6);
      }

      else
      {
        v8 = "";
      }

      fputs(v8, __stream);
      if (v6 < v4)
      {
        fputc(44, __stream);
      }

      ++v6;
    }

    while (v7 != v6);
  }

  fwrite(",\n", 2uLL, 1uLL, __stream);
  return 0;
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return [v0 performSelector:v1];
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return objc_opt_respondsToSelector();
}

void sub_23D551EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D554CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D555798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D5562A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D556848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VRTraceErrorLogLevelFromCSTR(char *__str)
{
  if (!__str)
  {
    return 9;
  }

  if ((*__str - 48) <= 9)
  {
    return strtol(__str, 0, 0);
  }

  result = strcasecmp(__str, "NONE");
  if (result)
  {
    if (!strcasecmp(__str, "ALERT"))
    {
      return 1;
    }

    else if (!strcasecmp(__str, "CRITICAL"))
    {
      return 2;
    }

    else if (!strcasecmp(__str, "ERROR"))
    {
      return 3;
    }

    else if (!strcasecmp(__str, "ASSERT"))
    {
      return 4;
    }

    else if (!strcasecmp(__str, "WARNING"))
    {
      return 5;
    }

    else if (!strcasecmp(__str, "NOTICE"))
    {
      return 6;
    }

    else if (!strcasecmp(__str, "INFO"))
    {
      return 7;
    }

    else if (!strcasecmp(__str, "DEBUG"))
    {
      return 8;
    }

    else if (!strcasecmp(__str, "ALL"))
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_23D5595F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCAggregatorUtils_GetVideoResolutionForDimensions(int a1, int a2)
{
  if (a1 == 96 && a2 == 96)
  {
    return 0;
  }

  if (a1 == 128 && a2 == 128)
  {
    return 1;
  }

  if (a1 == 192 && a2 == 112)
  {
    return 2;
  }

  if (a1 == 192 && a2 == 192)
  {
    return 3;
  }

  if (a1 == 240 && a2 == 240)
  {
    return 4;
  }

  if (a1 == 256 && a2 == 256)
  {
    return 5;
  }

  if (a1 == 320 && a2 == 176)
  {
    return 6;
  }

  if (a1 == 320 && a2 == 240)
  {
    return 7;
  }

  if (a1 == 320 && a2 == 320)
  {
    return 8;
  }

  if (a1 == 480 && a2 == 272)
  {
    return 9;
  }

  if (a1 == 480 && a2 == 368)
  {
    return 10;
  }

  if (a1 == 480 && a2 == 480)
  {
    return 11;
  }

  if (a1 == 512 && a2 == 512)
  {
    return 12;
  }

  if (a1 == 640 && a2 == 368)
  {
    return 13;
  }

  if (a1 == 640 && a2 == 480)
  {
    return 14;
  }

  if (a1 == 640 && a2 == 640)
  {
    return 15;
  }

  if (a1 == 720 && a2 == 720)
  {
    return 16;
  }

  if (a1 == 1024 && a2 == 768)
  {
    return 17;
  }

  if (a1 == 1280 && a2 == 720)
  {
    return 18;
  }

  if (a1 == 1280 && a2 == 960)
  {
    return 19;
  }

  if (a1 == 1080 && a2 == 1080)
  {
    return 20;
  }

  if (a1 == 1664 && a2 == 1248)
  {
    return 21;
  }

  if (a1 == 1920 && a2 == 1080)
  {
    return 22;
  }

  if (a1 == 1920 && a2 == 1440)
  {
    return 23;
  }

  if (a1 == 2592 && a2 == 1936)
  {
    return 24;
  }

  if (a1 == 3264 && a2 == 2448)
  {
    return 25;
  }

  if (a1 == 512 && a2 == 288)
  {
    return 26;
  }

  if (a1 == 384 && a2 == 384)
  {
    return 27;
  }

  if (a1 == 960 && a2 == 960)
  {
    return 28;
  }

  if (a1 == 1440 && a2 == 1440)
  {
    return 29;
  }

  if (a1 == 960 && a2 == 540)
  {
    return 30;
  }

  if (a1 == 480 && a2 == 270)
  {
    return 31;
  }

  if (a1 == 832 && a2 == 624)
  {
    return 32;
  }

  if (a2 == 312 && a1 == 416)
  {
    return 33;
  }

  else
  {
    return 34;
  }
}

double VCAggregatorUtils_GetSizeForVideoResolution(unsigned int a1)
{
  if (a1 < 0x23)
  {
    switch(a1)
    {
      case 0u:
        return 96.0;
      case 1u:
        return 128.0;
      case 2u:
        v8 = 128.0;
        goto LABEL_37;
      case 3u:
        return 192.0;
      case 4u:
        return 240.0;
      case 5u:
        return 256.0;
      case 6u:
      case 7u:
        v8 = 320.0;
        goto LABEL_37;
      case 8u:
        return 320.0;
      case 9u:
      case 0xAu:
      case 0x1Fu:
        v8 = 480.0;
        goto LABEL_37;
      case 0xBu:
        return 480.0;
      case 0xCu:
        return 512.0;
      case 0xDu:
      case 0xEu:
        v8 = 640.0;
        goto LABEL_37;
      case 0xFu:
        return 640.0;
      case 0x10u:
        return 720.0;
      case 0x11u:
        v8 = 1024.0;
        goto LABEL_37;
      case 0x12u:
      case 0x13u:
        v8 = 1280.0;
        goto LABEL_37;
      case 0x14u:
        return 1088.0;
      case 0x15u:
        v8 = 1664.0;
        goto LABEL_37;
      case 0x16u:
      case 0x17u:
        v8 = 1920.0;
        goto LABEL_37;
      case 0x18u:
        return 2592.0;
      case 0x19u:
        return 3264.0;
      case 0x1Au:
        v8 = 512.0;
        goto LABEL_37;
      case 0x1Bu:
        return 384.0;
      case 0x1Cu:
        return 960.0;
      case 0x1Du:
        return 1440.0;
      case 0x1Eu:
        v8 = 960.0;
        goto LABEL_37;
      case 0x20u:
        v8 = 832.0;
        goto LABEL_37;
      case 0x21u:
        v8 = 416.0;
LABEL_37:
        result = v8;
        break;
      default:
        return 0.0;
    }
  }

  else
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    result = 0.0;
    if (ErrorLogLevelForModule >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR(3u);
      v5 = gVRTraceOSLog;
      v6 = os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR);
      result = 0.0;
      if (v6)
      {
        VCAggregatorUtils_GetSizeForVideoResolution_cold_1(v4, a1, v5);
        return 0.0;
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void sub_23D55AAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _VCPersistentDataStore_WriteBuffer(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  dispatch_assert_queue_V2(*(a1 + 8));
  sqlite3_exec(*(a1 + 8424), "BEGIN TRANSACTION;", 0, 0, 0);
  if (*(a1 + 8416) >= 1)
  {
    v2 = 0;
    v3 = 16;
    while (1)
    {
      v4 = *(a1 + v3 + 144);
      v28 = *(a1 + v3 + 128);
      v29 = v4;
      v30 = *(a1 + v3 + 160);
      v5 = *(a1 + v3 + 80);
      v24 = *(a1 + v3 + 64);
      v25 = v5;
      v6 = *(a1 + v3 + 112);
      v26 = *(a1 + v3 + 96);
      v27 = v6;
      v7 = *(a1 + v3 + 16);
      *v22 = *(a1 + v3);
      *&v22[16] = v7;
      v8 = *(a1 + v3 + 48);
      *&v22[32] = *(a1 + v3 + 32);
      v23 = v8;
      v9 = _VCPersistentDataStore_BindAndExecute(a1, v22);
      if (v9)
      {
        break;
      }

      ++v2;
      v3 += 168;
      if (v2 >= *(a1 + 8416))
      {
        goto LABEL_5;
      }
    }

    v11 = v9;
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR(3u);
        v14 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          v15 = sqlite3_errmsg(*(a1 + 8424));
          *v22 = 136316162;
          *&v22[4] = v13;
          *&v22[12] = 2080;
          *&v22[14] = "_VCPersistentDataStore_WriteBuffer";
          *&v22[22] = 1024;
          *&v22[24] = 273;
          *&v22[28] = 1024;
          *&v22[30] = v11;
          *&v22[34] = 2080;
          *&v22[36] = v15;
          v16 = " [%s] %s:%d SQLite Error: could not empty buffer with return code=%d and error=%s";
          v17 = v14;
          v18 = 44;
LABEL_16:
          _os_log_error_impl(&dword_23D4DF000, v17, OS_LOG_TYPE_ERROR, v16, v22, v18);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v19 = VRTraceErrorLogLevelToCSTR(3u);
        v20 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          v21 = sqlite3_errmsg(*(a1 + 8424));
          *v22 = 136316674;
          *&v22[4] = v19;
          *&v22[12] = 2080;
          *&v22[14] = "_VCPersistentDataStore_WriteBuffer";
          *&v22[22] = 1024;
          *&v22[24] = 273;
          *&v22[28] = 2112;
          *&v22[30] = v12;
          *&v22[38] = 2048;
          *&v22[40] = a1;
          LOWORD(v23) = 1024;
          *(&v23 + 2) = v11;
          WORD3(v23) = 2080;
          *(&v23 + 1) = v21;
          v16 = " [%s] %s:%d %@(%p) SQLite Error: could not empty buffer with return code=%d and error=%s";
          v17 = v20;
          v18 = 64;
          goto LABEL_16;
        }
      }
    }
  }

LABEL_5:
  sqlite3_exec(*(a1 + 8424), "END TRANSACTION;", 0, 0, 0);
  *(a1 + 8416) = 0;
  return kdebug_trace();
}

uint64_t _VCPersistentDataStore_BindAndExecute(void *a1, uint64_t a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2 > 2)
  {
    switch(v2)
    {
      case 3:
        v33 = a1[1057];
        v35 = *(a2 + 16);
        v34 = *(a2 + 24);
        v37 = *(a2 + 32);
        v36 = *(a2 + 36);
        v38 = *(a2 + 40);
        v40 = *(a2 + 48);
        v39 = *(a2 + 52);
        if (sqlite3_bind_int(v33, 1, *(a2 + 8)))
        {
          _VCPersistentDataStore_BindAndExecute_cold_14();
          return *buf;
        }

        if (sqlite3_bind_double(v33, 2, v35))
        {
          _VCPersistentDataStore_BindAndExecute_cold_15();
          return *buf;
        }

        if (sqlite3_bind_double(v33, 3, v34))
        {
          _VCPersistentDataStore_BindAndExecute_cold_16();
          return *buf;
        }

        if (sqlite3_bind_int(v33, 4, v37))
        {
          _VCPersistentDataStore_BindAndExecute_cold_17();
          return *buf;
        }

        if (sqlite3_bind_int(v33, 5, v36))
        {
          _VCPersistentDataStore_BindAndExecute_cold_18();
          return *buf;
        }

        if (sqlite3_bind_int(v33, 6, v38))
        {
          _VCPersistentDataStore_BindAndExecute_cold_19();
          return *buf;
        }

        if (sqlite3_bind_int(v33, 7, v40))
        {
          _VCPersistentDataStore_BindAndExecute_cold_20();
          return *buf;
        }

        if (sqlite3_bind_int(v33, 8, v39))
        {
          _VCPersistentDataStore_BindAndExecute_cold_21();
          return *buf;
        }

        v41 = sqlite3_step(v33);
        if (!v41 || (v17 = v41, v41 == 101))
        {
          v17 = sqlite3_reset(v33);
          sqlite3_clear_bindings(v33);
          if (v17)
          {
            _VCPersistentDataStore_BindAndExecute_cold_22();
            return *buf;
          }

          return v17;
        }

        if (VRTraceGetErrorLogLevelForModule("") < 7)
        {
          return v17;
        }

        v71 = VRTraceErrorLogLevelToCSTR(7u);
        v72 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          return v17;
        }

        *buf = 136315906;
        v103 = v71;
        v104 = 2080;
        v105 = "_VCPersistentDataStore_BindAndExecuteLocalRateControlEvent";
        v106 = 1024;
        v107 = 449;
        v108 = 1024;
        v109 = v17;
        goto LABEL_130;
      case 4:
        v59 = a1[1058];
        v61 = *(a2 + 16);
        v60 = *(a2 + 24);
        v63 = *(a2 + 32);
        v62 = *(a2 + 36);
        v64 = *(a2 + 40);
        v65 = *(a2 + 52);
        v101 = *(a2 + 48);
        v67 = *(a2 + 56);
        v66 = *(a2 + 60);
        v69 = *(a2 + 64);
        v68 = *(a2 + 68);
        if (sqlite3_bind_int(v59, 1, *(a2 + 8)))
        {
          _VCPersistentDataStore_BindAndExecute_cold_1();
          return *buf;
        }

        if (sqlite3_bind_double(v59, 2, v61))
        {
          _VCPersistentDataStore_BindAndExecute_cold_2();
          return *buf;
        }

        if (sqlite3_bind_double(v59, 3, v60))
        {
          _VCPersistentDataStore_BindAndExecute_cold_3();
          return *buf;
        }

        if (sqlite3_bind_int(v59, 4, v63))
        {
          _VCPersistentDataStore_BindAndExecute_cold_4();
          return *buf;
        }

        if (sqlite3_bind_int(v59, 5, v62))
        {
          _VCPersistentDataStore_BindAndExecute_cold_5();
          return *buf;
        }

        if (sqlite3_bind_int(v59, 6, v64))
        {
          _VCPersistentDataStore_BindAndExecute_cold_6();
          return *buf;
        }

        if (sqlite3_bind_int(v59, 7, v65))
        {
          _VCPersistentDataStore_BindAndExecute_cold_7();
          return *buf;
        }

        if (sqlite3_bind_int(v59, 8, v67))
        {
          _VCPersistentDataStore_BindAndExecute_cold_8();
          return *buf;
        }

        if (sqlite3_bind_int(v59, 9, v66))
        {
          _VCPersistentDataStore_BindAndExecute_cold_9();
          return *buf;
        }

        if (sqlite3_bind_int(v59, 10, v69))
        {
          _VCPersistentDataStore_BindAndExecute_cold_10();
          return *buf;
        }

        if (sqlite3_bind_int(v59, 11, v68))
        {
          _VCPersistentDataStore_BindAndExecute_cold_11();
          return *buf;
        }

        if (sqlite3_bind_int(v59, 12, v101))
        {
          _VCPersistentDataStore_BindAndExecute_cold_12();
          return *buf;
        }

        v70 = sqlite3_step(v59);
        if (!v70 || (v17 = v70, v70 == 101))
        {
          v17 = sqlite3_reset(v59);
          sqlite3_clear_bindings(v59);
          if (v17)
          {
            _VCPersistentDataStore_BindAndExecute_cold_13();
            return *buf;
          }

          return v17;
        }

        if (VRTraceGetErrorLogLevelForModule("") < 7)
        {
          return v17;
        }

        v73 = VRTraceErrorLogLevelToCSTR(7u);
        v72 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          return v17;
        }

        *buf = 136315906;
        v103 = v73;
        v104 = 2080;
        v105 = "_VCPersistentDataStore_BindAndExecuteRCConfigurationEvent";
        v106 = 1024;
        v107 = 469;
        v108 = 1024;
        v109 = v17;
        goto LABEL_130;
      case 5:
        return 0;
    }

    return 1;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v42 = a1[1055];
      v44 = *(a2 + 16);
      v43 = *(a2 + 24);
      v45 = *(a2 + 32);
      v46 = *(a2 + 36);
      v47 = *(a2 + 40);
      v49 = *(a2 + 48);
      v48 = *(a2 + 52);
      v51 = *(a2 + 56);
      v50 = *(a2 + 60);
      v52 = *(a2 + 64);
      v100 = *(a2 + 68);
      v97 = *(a2 + 72);
      v54 = *(a2 + 80);
      v53 = *(a2 + 88);
      v56 = *(a2 + 96);
      v55 = *(a2 + 104);
      v57 = *(a2 + 112);
      if (sqlite3_bind_int(v42, 1, *(a2 + 8)))
      {
        _VCPersistentDataStore_BindAndExecute_cold_50();
        return *buf;
      }

      if (sqlite3_bind_double(v42, 2, v44))
      {
        _VCPersistentDataStore_BindAndExecute_cold_51();
        return *buf;
      }

      if (sqlite3_bind_double(v42, 3, v43))
      {
        _VCPersistentDataStore_BindAndExecute_cold_52();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 4, v45))
      {
        _VCPersistentDataStore_BindAndExecute_cold_53();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 5, v46))
      {
        _VCPersistentDataStore_BindAndExecute_cold_54();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 6, v47))
      {
        _VCPersistentDataStore_BindAndExecute_cold_55();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 7, v49))
      {
        _VCPersistentDataStore_BindAndExecute_cold_56();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 8, v48))
      {
        _VCPersistentDataStore_BindAndExecute_cold_57();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 9, v51))
      {
        _VCPersistentDataStore_BindAndExecute_cold_58();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 10, v50))
      {
        _VCPersistentDataStore_BindAndExecute_cold_59();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 11, v52))
      {
        _VCPersistentDataStore_BindAndExecute_cold_60();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 12, v100))
      {
        _VCPersistentDataStore_BindAndExecute_cold_61();
        return *buf;
      }

      if (sqlite3_bind_int(v42, 13, v97))
      {
        _VCPersistentDataStore_BindAndExecute_cold_62();
        return *buf;
      }

      if (sqlite3_bind_double(v42, 14, v54))
      {
        _VCPersistentDataStore_BindAndExecute_cold_63();
        return *buf;
      }

      if (sqlite3_bind_double(v42, 15, v53))
      {
        _VCPersistentDataStore_BindAndExecute_cold_64();
        return *buf;
      }

      if (sqlite3_bind_double(v42, 16, v56))
      {
        _VCPersistentDataStore_BindAndExecute_cold_65();
        return *buf;
      }

      if (sqlite3_bind_double(v42, 17, v55))
      {
        _VCPersistentDataStore_BindAndExecute_cold_66();
        return *buf;
      }

      if (sqlite3_bind_double(v42, 18, v57))
      {
        _VCPersistentDataStore_BindAndExecute_cold_67();
        return *buf;
      }

      v58 = sqlite3_step(v42);
      if (!v58 || (v17 = v58, v58 == 101))
      {
        v17 = sqlite3_reset(v42);
        sqlite3_clear_bindings(v42);
        if (v17)
        {
          _VCPersistentDataStore_BindAndExecute_cold_68();
          return *buf;
        }

        return v17;
      }

      if (VRTraceGetErrorLogLevelForModule("") < 7)
      {
        return v17;
      }

      v74 = VRTraceErrorLogLevelToCSTR(7u);
      v72 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        return v17;
      }

      *buf = 136315906;
      v103 = v74;
      v104 = 2080;
      v105 = "_VCPersistentDataStore_BindAndExecuteBaseBandEvent";
      v106 = 1024;
      v107 = 433;
      v108 = 1024;
      v109 = v17;
      goto LABEL_130;
    }

    if (v2 == 2)
    {
      v3 = a1[1056];
      v5 = *(a2 + 16);
      v4 = *(a2 + 24);
      v7 = *(a2 + 32);
      v6 = *(a2 + 36);
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = *(a2 + 56);
      v95 = *(a2 + 57);
      v98 = *(a2 + 58);
      v11 = *(a2 + 60);
      v12 = *(a2 + 62);
      v13 = *(a2 + 63);
      v91 = *(a2 + 64);
      v93 = *(a2 + 65);
      v89 = *(a2 + 67);
      v87 = *(a2 + 68);
      v14 = *(a2 + 72);
      v79 = *(a2 + 66);
      v80 = *(a2 + 80);
      v81 = *(a2 + 84);
      v82 = *(a2 + 88);
      v83 = *(a2 + 92);
      v84 = *(a2 + 96);
      v85 = *(a2 + 76);
      v78 = *(a2 + 100);
      if (sqlite3_bind_int(v3, 1, *(a2 + 8)))
      {
        _VCPersistentDataStore_BindAndExecute_cold_23();
        return *buf;
      }

      if (sqlite3_bind_double(v3, 2, v5))
      {
        _VCPersistentDataStore_BindAndExecute_cold_24();
        return *buf;
      }

      if (sqlite3_bind_double(v3, 3, v4))
      {
        _VCPersistentDataStore_BindAndExecute_cold_25();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 4, v7))
      {
        _VCPersistentDataStore_BindAndExecute_cold_26();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 5, v6))
      {
        _VCPersistentDataStore_BindAndExecute_cold_27();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 6, v8))
      {
        _VCPersistentDataStore_BindAndExecute_cold_28();
        return *buf;
      }

      v15 = sqlite3_bind_int64(v3, 7, v9);
      if (v15)
      {
        _VCPersistentDataStore_BindAndExecute_cold_29(v9, v15);
        return *buf;
      }

      if (sqlite3_bind_int(v3, 8, v10))
      {
        _VCPersistentDataStore_BindAndExecute_cold_30();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 9, v95))
      {
        _VCPersistentDataStore_BindAndExecute_cold_31();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 10, v98))
      {
        _VCPersistentDataStore_BindAndExecute_cold_32();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 11, v11))
      {
        _VCPersistentDataStore_BindAndExecute_cold_33();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 12, v12))
      {
        _VCPersistentDataStore_BindAndExecute_cold_34();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 13, v13))
      {
        _VCPersistentDataStore_BindAndExecute_cold_35();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 14, v91))
      {
        _VCPersistentDataStore_BindAndExecute_cold_36();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 15, v93))
      {
        _VCPersistentDataStore_BindAndExecute_cold_37();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 16, v79))
      {
        _VCPersistentDataStore_BindAndExecute_cold_38();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 17, v89))
      {
        _VCPersistentDataStore_BindAndExecute_cold_39();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 18, v87))
      {
        _VCPersistentDataStore_BindAndExecute_cold_40();
        return *buf;
      }

      if (sqlite3_bind_double(v3, 19, v14))
      {
        _VCPersistentDataStore_BindAndExecute_cold_41();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 20, v85))
      {
        _VCPersistentDataStore_BindAndExecute_cold_42();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 21, v80))
      {
        _VCPersistentDataStore_BindAndExecute_cold_43();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 22, v81))
      {
        _VCPersistentDataStore_BindAndExecute_cold_44();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 23, v82))
      {
        _VCPersistentDataStore_BindAndExecute_cold_45();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 24, v83))
      {
        _VCPersistentDataStore_BindAndExecute_cold_46();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 25, v84))
      {
        _VCPersistentDataStore_BindAndExecute_cold_47();
        return *buf;
      }

      if (sqlite3_bind_int(v3, 26, v78))
      {
        _VCPersistentDataStore_BindAndExecute_cold_48();
        return *buf;
      }

      v16 = sqlite3_step(v3);
      if (!v16 || (v17 = v16, v16 == 101))
      {
        v17 = sqlite3_reset(v3);
        sqlite3_clear_bindings(v3);
        if (v17)
        {
          _VCPersistentDataStore_BindAndExecute_cold_49();
          return *buf;
        }

        return v17;
      }

      if (VRTraceGetErrorLogLevelForModule("") < 7)
      {
        return v17;
      }

      v76 = VRTraceErrorLogLevelToCSTR(7u);
      v72 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        return v17;
      }

      *buf = 136315906;
      v103 = v76;
      v104 = 2080;
      v105 = "_VCPersistentDataStore_BindAndExecuteNetworkEvent";
      v106 = 1024;
      v107 = 407;
      v108 = 1024;
      v109 = v17;
LABEL_130:
      _os_log_impl(&dword_23D4DF000, v72, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SQLite Error: could not execute statement with return code=%d", buf, 0x22u);
      return v17;
    }

    return 1;
  }

  v18 = a1[1054];
  v20 = *(a2 + 16);
  v19 = *(a2 + 24);
  v22 = *(a2 + 32);
  v21 = *(a2 + 36);
  v23 = *(a2 + 40);
  v25 = *(a2 + 48);
  v24 = *(a2 + 56);
  v27 = *(a2 + 64);
  v26 = *(a2 + 72);
  v29 = *(a2 + 80);
  v28 = *(a2 + 88);
  v86 = *(a2 + 104);
  v88 = *(a2 + 112);
  v90 = *(a2 + 120);
  v92 = *(a2 + 128);
  v30 = *(a2 + 136);
  v94 = *(a2 + 144);
  v31 = *(a2 + 152);
  v96 = *(a2 + 160);
  v99 = *(a2 + 96);
  if (sqlite3_bind_int(v18, 1, *(a2 + 8)))
  {
    _VCPersistentDataStore_BindAndExecute_cold_69();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 2, v20))
  {
    _VCPersistentDataStore_BindAndExecute_cold_70();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 3, v19))
  {
    _VCPersistentDataStore_BindAndExecute_cold_71();
    return *buf;
  }

  if (sqlite3_bind_int(v18, 4, v22))
  {
    _VCPersistentDataStore_BindAndExecute_cold_72();
    return *buf;
  }

  if (sqlite3_bind_int(v18, 5, v21))
  {
    _VCPersistentDataStore_BindAndExecute_cold_73();
    return *buf;
  }

  if (sqlite3_bind_int(v18, 6, v23))
  {
    _VCPersistentDataStore_BindAndExecute_cold_74();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 7, v25))
  {
    _VCPersistentDataStore_BindAndExecute_cold_75();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 8, v24))
  {
    _VCPersistentDataStore_BindAndExecute_cold_76();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 9, v27))
  {
    _VCPersistentDataStore_BindAndExecute_cold_77();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 10, v26))
  {
    _VCPersistentDataStore_BindAndExecute_cold_78();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 11, v29))
  {
    _VCPersistentDataStore_BindAndExecute_cold_79();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 12, v28))
  {
    _VCPersistentDataStore_BindAndExecute_cold_80();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 13, v99))
  {
    _VCPersistentDataStore_BindAndExecute_cold_81();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 14, v86))
  {
    _VCPersistentDataStore_BindAndExecute_cold_82();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 15, v88))
  {
    _VCPersistentDataStore_BindAndExecute_cold_83();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 16, v90))
  {
    _VCPersistentDataStore_BindAndExecute_cold_84();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 17, v92))
  {
    _VCPersistentDataStore_BindAndExecute_cold_85();
    return *buf;
  }

  if (sqlite3_bind_int(v18, 18, v30))
  {
    _VCPersistentDataStore_BindAndExecute_cold_86();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 19, v94))
  {
    _VCPersistentDataStore_BindAndExecute_cold_87();
    return *buf;
  }

  if (sqlite3_bind_int(v18, 20, v31))
  {
    _VCPersistentDataStore_BindAndExecute_cold_88();
    return *buf;
  }

  if (sqlite3_bind_double(v18, 21, v96))
  {
    _VCPersistentDataStore_BindAndExecute_cold_89();
    return *buf;
  }

  v32 = sqlite3_step(v18);
  if (v32)
  {
    v17 = v32;
    if (v32 != 101)
    {
      if (VRTraceGetErrorLogLevelForModule("") < 7)
      {
        return v17;
      }

      v75 = VRTraceErrorLogLevelToCSTR(7u);
      v72 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        return v17;
      }

      *buf = 136315906;
      v103 = v75;
      v104 = 2080;
      v105 = "_VCPersistentDataStore_BindAndExecuteFeedbackEvent";
      v106 = 1024;
      v107 = 373;
      v108 = 1024;
      v109 = v17;
      goto LABEL_130;
    }
  }

  v17 = sqlite3_reset(v18);
  sqlite3_clear_bindings(v18);
  if (v17)
  {
    _VCPersistentDataStore_BindAndExecute_cold_90();
    return *buf;
  }

  return v17;
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x28u);
}

void sub_23D55F0D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 buf, int a22, __int16 a23, __int16 a24, __int128 a25, uint64_t a26)
{
  if (a2 == 1)
  {
    v26 = objc_begin_catch(a1);
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      v27 = VRTraceErrorLogLevelToCSTR(3u);
      v28 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v29 = [v26 name];
        v30 = [v26 reason];
        LODWORD(buf) = 136316162;
        *(&buf + 4) = v27;
        WORD6(buf) = 2080;
        *(&buf + 14) = "[VCAlgosStreamingScoreAggregator aggregateScoresWithDictionaryLogging:time:]";
        a24 = 1024;
        LODWORD(a25) = 139;
        WORD2(a25) = 2112;
        *(&a25 + 6) = v29;
        HIWORD(a25) = 2112;
        a26 = v30;
        _os_log_error_impl(&dword_23D4DF000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d AlgosScoreCombiner exception caught %@: %@", &buf, 0x30u);
      }
    }

    objc_end_catch();
    JUMPOUT(0x23D55F080);
  }

  _Unwind_Resume(a1);
}

void sub_23D5624F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D5658CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D565D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getWiFiManagerClientCreateSymbolLoc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MobileWiFiLibrary();
  result = dlsym(v3, "WiFiManagerClientCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileWiFiLibrary()
{
  v2[9] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MobileWiFiLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MobileWiFiLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v2[7] = 0;
    v2[8] = 0;
    v2[6] = "/System/Library/PrivateFrameworks/MobileWiFi.framework/MobileWiFi";
    MobileWiFiLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileWiFiLibraryCore_frameworkLibrary;
  if (!MobileWiFiLibraryCore_frameworkLibrary)
  {
    MobileWiFiLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __MobileWiFiLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileWiFiLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getWiFiManagerClientCopyDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientCopyDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCopyDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCWFInterfaceClass_block_invoke(uint64_t a1)
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreWiFiLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreWiFiLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/CoreWiFi.framework/CoreWiFi";
    CoreWiFiLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreWiFiLibraryCore_frameworkLibrary)
  {
    __getCWFInterfaceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CWFInterface");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCWFInterfaceClass_block_invoke_cold_1();
  }

  getCWFInterfaceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CoreWiFiLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreWiFiLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v4 migrateValueForKey:a3 from:v5 to:v3 withKey:?];
}

void OUTLINED_FUNCTION_16_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x1Cu);
}

char *OUTLINED_FUNCTION_25_1(char *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__lasts)
{

  return strtok_r(a1, v15, &__lasts);
}

void sub_23D56781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D5679C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D567AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D56D184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

VCSymptomReporter *SymptomReporterCreate(uint64_t a1)
{
  v2 = [VCSymptomReporter alloc];

  return [(VCSymptomReporter *)v2 initWithCallID:a1];
}

void SymptomReporterReportSymptom(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {

    [a1 reportSymptom:a2 optionalDictionary:a3];
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR(5u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "SymptomReporterReportSymptom";
      v9 = 1024;
      v10 = 1279;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: invalid symptomReporter passed in", &v5, 0x1Cu);
    }
  }
}

void SymptomReporterSetCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {

    [a1 VCSymptomReporterSetCallback:a2 context:a3];
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR(5u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "SymptomReporterSetCallback";
      v9 = 1024;
      v10 = 1289;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: invalid symptomReporter passed in", &v5, 0x1Cu);
    }
  }
}

uint64_t VCSymptomReporter_IsABCEnabled(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {

    return [a1 isSymptomReportingEnabled];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR(5u);
      v3 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315650;
        v5 = v2;
        v6 = 2080;
        v7 = "VCSymptomReporter_IsABCEnabled";
        v8 = 1024;
        v9 = 1298;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: invalid symptomReporter passed in", &v4, 0x1Cu);
      }
    }

    return 0;
  }
}

void VCDiskUtils_CreateDirectory_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
}

void VCDiskUtils_FileZipToFile_cold_1(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      __error();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_9_0(&dword_23D4DF000, v4, v5, " [%s] %s:%d failed to read from source: %d", v6, v7, v8, v9);
    }
  }

  *a2 = a1;
}

void VCDiskUtils_FileZipToFile_cold_2(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_9_0(&dword_23D4DF000, v4, v5, " [%s] %s:%d failed to compress buffer: %d", v6, v7, v8, v9);
    }
  }

  *a2 = a1;
}

void VCDiskUtils_FileZipToFile_cold_3(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    v2 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      __error();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_12();
      v6 = 139;
      v7 = v3;
      v8 = v4;
      _os_log_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d failed to write to destination: %d", v5, 0x22u);
    }
  }

  *a1 = 1;
}

void ZLibAndGZipCompress_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/Utilities/CompressionUtils.c:%d: Error initializing deflate.", v2, v3, v4, v5);
}

void ZLibAndGZipCompress_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/Utilities/CompressionUtils.c:%d: Error ending deflate.", v2, v3, v4, v5);
}

void ZLibAndGZipDecompress_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/Utilities/CompressionUtils.c:%d: Error initializing inflate.", v2, v3, v4, v5);
}

void ZLibAndGZipDecompress_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/Utilities/CompressionUtils.c:%d: Error ending inflate.", v2, v3, v4, v5);
}

double machTimeScale_cold_1()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_280C07E48 = *&result;
  __dmb(0xBu);
  _MergedGlobals_0 = 1;
  return result;
}

void _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void _VCAggregatorMultiway_CollectMediaQueueTelemetry_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void _VCAggregatorMultiway_ReportMediaQueueTelemetry_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void _VCAggregatorMultiway_ReportMediaQueueTelemetry_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void __reportingCacheModuleSpecificInfo_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) strong];
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v8 addEntriesFromDictionary:*(a1 + 40)];
      v4 = *(a1 + 48);
      if (v4)
      {
        [v8 setObject:v4 forKeyedSubscript:@"_reportingModuleType"];
      }

      v5 = [v3 userInfoMap];
      [v5 setObject:v8 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", *(a1 + 56))}];
    }

    else
    {
      v6 = [v2 userInfoMap];
      v7 = [MEMORY[0x277CCABA8] numberWithInt:*(a1 + 56)];

      [v6 removeObjectForKey:v7];
    }
  }
}

void *__reportingRegisterSystemStats_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277CCABA8];
  HIDWORD(valuePtr) = 0;
  v5 = &OBJC_IVAR___RTCReportingAgent__osBuild;
  v6 = 0.0;
  v7 = MEMORY[0x277CBECE8];
  v8 = 0.0;
  if (_MergedGlobals_1007)
  {
    CFProperty = IORegistryEntryCreateCFProperty(_MergedGlobals_1007, @"Temperature", *MEMORY[0x277CBECE8], 0);
    v8 = 0.0;
    if (CFProperty)
    {
      v10 = CFProperty;
      CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr + 4);
      CFRelease(v10);
      LOWORD(v11) = WORD2(valuePtr);
      v8 = v11;
    }
  }

  [a2 setObject:objc_msgSend(v4 forKeyedSubscript:{"numberWithDouble:", v8 / 100.0), @"BT"}];
  v12 = MEMORY[0x277CCABA8];
  if (qword_27E2DEF88)
  {
    switch(*(a1 + 40))
    {
      case 0:
        LOWORD(v35) = 0;
        goto LABEL_73;
      case 1:
        qword_27E2DEF90 = &unk_280C07D60;
        if (CFArrayGetCount(qword_27E2DEF88) < 1)
        {
          v50 = 0;
          v49 = 0;
          v51 = 0;
          goto LABEL_71;
        }

        v76 = v12;
        v36 = 0;
        v37 = 0.0;
        v38 = 0.0;
        while (1)
        {
          v39 = OUTLINED_FUNCTION_41();
          v40 = IOHIDServiceClientCopyProperty(v39, @"Product");
          if (v40)
          {
            break;
          }

LABEL_60:
          if (OUTLINED_FUNCTION_44_0() <= 0)
          {
LABEL_61:
            v49 = (v37 * 100.0);
            v50 = (v38 * 100.0);
            v51 = (v6 * 100.0);
            v12 = v76;
            v7 = MEMORY[0x277CBECE8];
            v5 = &OBJC_IVAR___RTCReportingAgent__osBuild;
LABEL_71:
            v58 = filtered_update(1u, v49);
            v59 = filtered_update(2u, v50);
            v55 = filtered_update(0, v51);
            v56 = v58 * 0.299228 + 59.3247 + v59 * 0.267621;
            v57 = 0.404257;
            goto LABEL_72;
          }
        }

        v41 = v40;
        if (CFStringCompare(v40, @"gas gauge battery", 0))
        {
          if (CFStringCompare(v41, @"Rear Camera Proximity", 0))
          {
            if (CFStringCompare(v41, @"H4P Proximity", 0) || (++v36, (v42 = OUTLINED_FUNCTION_21(v39)) == 0))
            {
LABEL_59:
              CFRelease(v41);
              if (v36 == 3)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            }

            v43 = v42;
            IOHIDEventGetFloatValue();
            v38 = v44;
          }

          else
          {
            ++v36;
            v47 = OUTLINED_FUNCTION_21(v39);
            if (!v47)
            {
              goto LABEL_59;
            }

            v43 = v47;
            IOHIDEventGetFloatValue();
            v37 = v48;
          }
        }

        else
        {
          ++v36;
          v45 = OUTLINED_FUNCTION_21(v39);
          if (!v45)
          {
            goto LABEL_59;
          }

          v43 = v45;
          IOHIDEventGetFloatValue();
          v6 = v46;
        }

        CFRelease(v43);
        goto LABEL_59;
      case 2:
      case 3:
        qword_27E2DEF90 = &_MergedGlobals;
        if (CFArrayGetCount(qword_27E2DEF88) >= 1)
        {
          v13 = 0.0;
          while (1)
          {
            v14 = OUTLINED_FUNCTION_41();
            v15 = IOHIDServiceClientCopyProperty(v14, @"Product");
            if (v15)
            {
              break;
            }

LABEL_17:
            if (OUTLINED_FUNCTION_44_0() <= 0)
            {
              v20 = (v13 * 100.0);
              v21 = (v6 * 100.0);
              v7 = MEMORY[0x277CBECE8];
              v5 = &OBJC_IVAR___RTCReportingAgent__osBuild;
              goto LABEL_69;
            }
          }

          if (OUTLINED_FUNCTION_33_0(v15))
          {
            if (OUTLINED_FUNCTION_32_0())
            {
              goto LABEL_16;
            }

            v16 = OUTLINED_FUNCTION_11_0();
            if (!v16)
            {
              goto LABEL_16;
            }

            OUTLINED_FUNCTION_34_0(v16);
            v13 = v17;
          }

          else
          {
            v18 = OUTLINED_FUNCTION_11_0();
            if (!v18)
            {
LABEL_16:
              CFRelease(v7);
              goto LABEL_17;
            }

            OUTLINED_FUNCTION_34_0(v18);
            v6 = v19;
          }

          CFRelease(v14);
          goto LABEL_16;
        }

        v20 = 0;
        v21 = 0;
LABEL_69:
        v54 = filtered_update(1u, v20);
        v55 = filtered_update(0, v21);
        v56 = v54 * 0.271 + 264.0;
        v57 = 0.6824;
LABEL_72:
        v35 = (v56 + v55 * v57);
        goto LABEL_73;
      case 4:
      case 5:
        v75 = MEMORY[0x277CCABA8];
        v77 = a1;
        if (CFArrayGetCount(qword_27E2DEF88) >= 1)
        {
          v22 = 0.0;
          while (1)
          {
            v23 = OUTLINED_FUNCTION_41();
            v24 = IOHIDServiceClientCopyProperty(v23, @"Product");
            if (v24)
            {
              break;
            }

LABEL_30:
            if (OUTLINED_FUNCTION_44_0() <= 0)
            {
              goto LABEL_64;
            }
          }

          if (OUTLINED_FUNCTION_33_0(v24))
          {
            if (OUTLINED_FUNCTION_32_0())
            {
              goto LABEL_29;
            }

            v25 = OUTLINED_FUNCTION_11_0();
            if (!v25)
            {
              goto LABEL_29;
            }

            OUTLINED_FUNCTION_34_0(v25);
            v6 = v26;
          }

          else
          {
            v27 = OUTLINED_FUNCTION_11_0();
            if (!v27)
            {
LABEL_29:
              CFRelease(v7);
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_34_0(v27);
            v22 = v28;
          }

          CFRelease(v23);
          goto LABEL_29;
        }

        v22 = 0.0;
LABEL_64:
        v52 = v6 * 25.92 + 592.99;
        v53 = 57.99;
        goto LABEL_67;
      case 6:
      case 7:
        v75 = MEMORY[0x277CCABA8];
        v77 = a1;
        if (CFArrayGetCount(qword_27E2DEF88) >= 1)
        {
          v22 = 0.0;
          while (1)
          {
            v29 = OUTLINED_FUNCTION_41();
            v30 = IOHIDServiceClientCopyProperty(v29, @"Product");
            if (v30)
            {
              break;
            }

LABEL_43:
            if (OUTLINED_FUNCTION_44_0() <= 0)
            {
              goto LABEL_66;
            }
          }

          if (OUTLINED_FUNCTION_33_0(v30))
          {
            if (OUTLINED_FUNCTION_32_0())
            {
              goto LABEL_42;
            }

            v31 = OUTLINED_FUNCTION_11_0();
            if (!v31)
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_34_0(v31);
            v6 = v32;
          }

          else
          {
            v33 = OUTLINED_FUNCTION_11_0();
            if (!v33)
            {
LABEL_42:
              CFRelease(v7);
              goto LABEL_43;
            }

            OUTLINED_FUNCTION_34_0(v33);
            v22 = v34;
          }

          CFRelease(v29);
          goto LABEL_42;
        }

        v22 = 0.0;
LABEL_66:
        v52 = v6 * 27.1 + 164.0;
        v53 = 68.24;
LABEL_67:
        v35 = (v52 + v22 * v53);
        v12 = v75;
        a1 = v77;
        v7 = MEMORY[0x277CBECE8];
        v5 = &OBJC_IVAR___RTCReportingAgent__osBuild;
LABEL_73:
        v6 = v35;
        break;
      default:
        LOWORD(v35) = -21846;
        goto LABEL_73;
    }
  }

  [a2 setObject:objc_msgSend(v12 forKeyedSubscript:{"numberWithDouble:", v6 / 100.0), @"ST"}];
  v60 = MEMORY[0x277CCABA8];
  valuePtr = 0;
  v61 = v5[992];
  if (!v61)
  {
    goto LABEL_79;
  }

  v62 = *v7;
  v63 = IORegistryEntryCreateCFProperty(v61, @"InstantAmperage", *v7, 0);
  if (v63)
  {
    v64 = v63;
    CFNumberGetValue(v63, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v64);
  }

  v65 = IORegistryEntryCreateCFProperty(v5[992], @"Voltage", v62, 0);
  if (v65)
  {
    v66 = v65;
    CFNumberGetValue(v65, kCFNumberSInt32Type, &valuePtr + 4);
    CFRelease(v66);
    v67 = HIDWORD(valuePtr);
  }

  else
  {
LABEL_79:
    v67 = 0;
  }

  [a2 setObject:objc_msgSend(v60 forKeyedSubscript:{"numberWithShort:", (valuePtr * v67 / 1000)), @"BP"}];
  v68 = MEMORY[0x277CCABA8];
  HIDWORD(valuePtr) = 0;
  if (!dword_27E2DEF84)
  {
    goto LABEL_89;
  }

  v69 = IORegistryEntryCreateCFProperty(dword_27E2DEF84, @"IODisplayParameters", *v7, 0);
  if (!v69)
  {
    goto LABEL_89;
  }

  v70 = v69;
  Value = CFDictionaryGetValue(v69, @"brightness");
  if (!Value)
  {
    CFRelease(v70);
LABEL_89:
    v73 = 0;
    goto LABEL_90;
  }

  v72 = CFDictionaryGetValue(Value, @"value");
  if (v72)
  {
    CFNumberGetValue(v72, kCFNumberSInt32Type, &valuePtr + 4);
  }

  CFRelease(v70);
  if (SHIDWORD(valuePtr) >= 0xFFFF)
  {
    v73 = -1;
  }

  else
  {
    v73 = WORD2(valuePtr);
  }

LABEL_90:
  [a2 setObject:objc_msgSend(v68 forKeyedSubscript:{"numberWithUnsignedShort:", v73), @"BLL"}];
  result = [*(a1 + 32) strong];
  if (result)
  {
    return algoScorerPeriodicTask(result, a2);
  }

  return result;
}

void reportingSymptom_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void reportingClassSendMsgToServer_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _reportingVCRunOnce_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void _reportingVCRunOnce_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _validClassAndSymbols_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void reportingCreateAgent_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule("ReportingVC") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_31_0();
}

void reportingSetPeriodicAggregationOccurredHandler_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void ReportingVC_SetEventDrivenAggregationOccurredHandler_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __reportingCancelLog_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void reportingCacheModuleSpecificInfo_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __reportingSetUserInfo_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_2(&dword_23D4DF000, v0, v1, "ReportingVC [%s] %s:%d UserInfo=%@");
}

void __reportingSetUserInfo_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_2(&dword_23D4DF000, v0, v1, "ReportingVC [%s] %s:%d ReportingVC: %@");
}

void __reportingSetUserInfo_block_invoke_530_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  v3 = *MEMORY[0x277D85DE8];
  [v1 code];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_23D4DF000, v0, OS_LOG_TYPE_DEBUG, "ReportingVC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ViceroyTrace.subproj/Sources/ReportingVC.m:%d: flushMessages: error code %d.", v2, 0x28u);
}

void __reportingLog_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingAdaptiveLearningStats_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingNoRemoteChanged_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingCallEndError_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingCallEndError_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __reportingModeRoleTransportLog_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingTierLog_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingPerfTimes_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void reportingRegisterPeriodicTask_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void reportingRegisterPeriodicTaskWeak_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void reportingRegisterPeriodicTaskWeak_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void reportingRegisterPeriodicTaskWeak_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void reportingRegisterPeriodicTaskOnQueue_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void reportingUnregisterPeriodicTask_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void reportingGetDefaults_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void reportingSetNWActivityReportingEnabled_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void reportingStreamGroupFromStreamGroupID_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void reportingSessionModeFromOperatingMode_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void reportingAgentGetAlgoScores_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __reportingVideoProp_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingThermal_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingConnecting_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingDisconnected_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingDisconnected_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingVideoPaused_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingAWDCallStart_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingRemoteFrameSize_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingConnectionType_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingLocalAndRemoteInterface_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingHandoverResult_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingVisualRectangle_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void reportingMediaRecorderEvents_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __reportingMediaRecorderEvents_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void __reportingAudioStreamLogMetricSample_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void reportingAudioStreamLogCallStart_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __reportingAudioStreamLogCallStart_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void reportingAudioStreamLogCallEnd_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __reportingAudioStreamLogCallEnd_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24_0(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

void processGroupSymptoms_cold_1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCReporting_FlushReportingSession_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VRTraceSetErrorLogLevel_cold_1(unsigned int a1)
{
  v1 = VRTraceErrorLogLevelToCSTR(a1);
  v2 = VRTraceErrorLogLevelToCSTR(gVRTraceErrorLogLevel);
  v5 = strlen(v2);

  VRTraceVariable_(7, "ViceroyTrace", v3, v4, "gVRTraceErrorLogLevel", "cstr", v1, v5);
}

void VCAggregatorUtils_GetSizeForVideoResolution_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "VCAggregatorUtils_GetSizeForVideoResolution";
  v7 = 1024;
  v8 = 97;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_23D4DF000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid resolution: %d", &v3, 0x22u);
}

uint64_t VCPersistentDataStore_Finalize(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  v1 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __VCPersistentDataStore_Finalize_block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = a1;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t VCPersistentDataStore_DumpMessage(uint64_t a1, void *__src)
{
  if (!a1)
  {
    return 2;
  }

  if (!*(a1 + 8608))
  {
    return 50;
  }

  if (*__src == 5)
  {
    v4 = __src[1];
    if (v4)
    {
      CFRetain(v4);
    }

    v5 = __src[2];
    if (v5)
    {
      CFRetain(v5);
    }

    v6 = *(a1 + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __VCPersistentDataStore_DumpMessage_block_invoke;
    v11[3] = &unk_278BD5490;
    v11[4] = a1;
    memcpy(v12, __src, sizeof(v12));
    v7 = v11;
  }

  else
  {
    v6 = *(a1 + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __VCPersistentDataStore_DumpMessage_block_invoke_2;
    v9[3] = &unk_278BD5490;
    v9[4] = a1;
    memcpy(v10, __src, sizeof(v10));
    v7 = v9;
  }

  dispatch_async(v6, v7);
  return 0;
}

void _VCPersistentDataStore_BindAndExecute_cold_1()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_2()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_3()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_4()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_5()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_6()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_7()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_8()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_9()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_10()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_11()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_12()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_13()
{
  OUTLINED_FUNCTION_16_1();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18_2();
}

void _VCPersistentDataStore_BindAndExecute_cold_14()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_15()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_16()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_17()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_18()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_19()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_20()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_21()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_22()
{
  OUTLINED_FUNCTION_16_1();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18_2();
}

void _VCPersistentDataStore_BindAndExecute_cold_23()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_24()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_25()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_26()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_27()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_28()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_29(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      v7 = 387;
      v8 = 2048;
      v9 = a1;
      v10 = v5;
      v11 = a2;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SQLite Error: could not bind data=%llu with return code=%d", v6, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
}

void _VCPersistentDataStore_BindAndExecute_cold_30()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_31()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_32()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_33()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_34()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_35()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_36()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_37()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_38()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_39()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_40()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_41()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_42()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_43()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_44()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_45()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_46()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_47()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_48()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_49()
{
  OUTLINED_FUNCTION_16_1();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18_2();
}

void _VCPersistentDataStore_BindAndExecute_cold_50()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_51()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_52()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_8_4();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_28_0();
}

void _VCPersistentDataStore_BindAndExecute_cold_53()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_7();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_11_1(&dword_23D4DF000, v0, v1, " [%s] %s:%d SQLite Error: could not bind data=%d with return code=%d", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_26_0();
}