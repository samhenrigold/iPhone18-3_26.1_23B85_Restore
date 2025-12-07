void CCPipeMonitor::resumeAllTapsFromQuiesced(CCPipeMonitor *this)
{
  v29 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (!Count)
  {
    v10 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v11 = v10;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v11 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v11, OS_LOG_TYPE_DEFAULT, "resumeAllTapsFromQuiesced:no tap found", buf, 2u);
LABEL_24:
    if (glog_fd)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v16;
      v28 = v16;
      v25 = v16;
      v26 = v16;
      v23 = v16;
      v24 = v16;
      *buf = v16;
      v22 = v16;
      memset(&v20, 0, sizeof(v20));
      v19 = 0xAAAAAAAAAAAAAAAALL;
      time(&v19);
      localtime_r(&v19, &v20);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v20);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "resumeAllTapsFromQuiesced:no tap found");
    }

    goto LABEL_29;
  }

  v3 = Count;
  v4 = 8 * Count;
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v5)
  {
    v12 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v13 = v12;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v13 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "resumeAllTapsFromQuiesced:Failed to malloc memory for keyArray", buf, 2u);
LABEL_27:
    if (glog_fd)
    {
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v17;
      v28 = v17;
      v25 = v17;
      v26 = v17;
      v23 = v17;
      v24 = v17;
      *buf = v17;
      v22 = v17;
      memset(&v20, 0, sizeof(v20));
      v19 = 0xAAAAAAAAAAAAAAAALL;
      time(&v19);
      localtime_r(&v19, &v20);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v20);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "resumeAllTapsFromQuiesced:Failed to malloc memory for keyArray");
    }

LABEL_29:
    pthread_mutex_unlock((this + 208));
    return;
  }

  v6 = v5;
  v7 = malloc_type_malloc(v4, 0x80040B8603338uLL);
  if (v7)
  {
    v8 = v7;
    CFDictionaryGetKeysAndValues(*(this + 15), v6, v7);
    if (v3 >= 1)
    {
      v9 = v8;
      do
      {
        if (*v9)
        {
          (*(**v9 + 120))(*v9);
        }

        ++v9;
        --v3;
      }

      while (v3);
    }

    pthread_mutex_unlock((this + 208));
    free(v6);

    free(v8);
    return;
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = v14;
LABEL_37:
      _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "resumeAllTapsFromQuiesced:Failed to malloc memory for valueArray", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v15 = MEMORY[0x277D86220];
    goto LABEL_37;
  }

  if (glog_fd)
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27 = v18;
    v28 = v18;
    v25 = v18;
    v26 = v18;
    v23 = v18;
    v24 = v18;
    *buf = v18;
    v22 = v18;
    memset(&v20, 0, sizeof(v20));
    v19 = 0xAAAAAAAAAAAAAAAALL;
    time(&v19);
    localtime_r(&v19, &v20);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v20);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "resumeAllTapsFromQuiesced:Failed to malloc memory for valueArray");
  }

  pthread_mutex_unlock((this + 208));
  free(v6);
}

uint64_t CCSubmitLogToCrashTracer(const char *a1, int a2)
{
  if (!a1 || !funcAddr(a1))
  {
    return 0;
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v5 = CFUUIDCreateString(v3, v4);
  v6 = v5;
  CFRelease(v4);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a1];
  v30 = v7;
  v8 = __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer;
  if (__MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer || (v9 = funcAddr(v7), v8 = v9, (__MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer = v9) != 0))
  {
    v9 = v8(@"InverseDeviceID", 0);
    v29 = v9;
    v10 = __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer;
    if (__MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v29 = 0;
  }

  v12 = funcAddr(v9);
  __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer = v12;
  if (v12)
  {
    v10 = v12;
LABEL_11:
    v12 = v10(@"ProductType", 0);
    v13 = v12;
    v14 = __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer;
    if (__MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v13 = 0;
LABEL_14:
  v15 = funcAddr(v12);
  __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer = v15;
  if (!v15)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v14 = v15;
LABEL_16:
  v16 = v14(@"UniqueDeviceID", 0);
LABEL_17:
  v17 = objc_opt_new();
  v18 = [v17 descriptionWithCalendarFormat:@"%Y-%m-%d %H:%M:%S.%F %z"];
  v19 = MEMORY[0x277CCACA8];
  v20 = _CFCopySystemVersionDictionary();
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CBEC88]];
  v22 = [v20 objectForKeyedSubscript:*MEMORY[0x277CBEC78]];
  v23 = [v20 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
  v24 = @"???";
  if (v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = @"???";
  }

  if (v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = @"???";
  }

  if (v23)
  {
    v24 = v23;
  }

  v27 = [v19 stringWithFormat:@"\nIncident Identifier:     %@\nCrashReporter Key:       %@\nHardware Model:          %@\nProcess:                 WiFi Firmware\nPath:                    NA\nIdentifier:              WiFi Firmware Trap\nVersion:                 NA\nCode Type:               ARM-32\nRole                     NA\nParent Process:          NA\nCoalition:               NA\n\n\nDate/Time:               %@\nLauch Time:              NA\nOS Version:              %@\nBaseband Version:        NA\nUDID:                    %@\nReport Version:          NA\n", v5, v29, v13, v18, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ %@ (%@)", v25, v26, v24), v16];
  [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@\n", v27, v30];
  v11 = OSAWriteLogForSubmission();

  return v11;
}

void *funcAddr(const char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = __loadMobileGestalt(void)::image;
  if (!__loadMobileGestalt(void)::image)
  {
    v2 = getenv("DYLD_IMAGE_SUFFIX");
    v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v6.st_blksize = v3;
    *v6.st_qspare = v3;
    v6.st_birthtimespec = v3;
    *&v6.st_size = v3;
    v6.st_mtimespec = v3;
    v6.st_ctimespec = v3;
    *&v6.st_uid = v3;
    v6.st_atimespec = v3;
    *&v6.st_dev = v3;
    memset(&v5[32], 170, 0x3E0uLL);
    if (!v2)
    {
      v4 = "/usr/lib/libMobileGestalt.dylib";
      goto LABEL_8;
    }

    strcpy(v5, "/usr/lib/libMobileGestalt.dylib");
    if (strlcat(v5, v2, 0x400uLL) >= 0x400)
    {
      return 0;
    }

    if ((stat(v5, &v6) & 0x80000000) == 0)
    {
      v4 = v5;
LABEL_8:
      result = dlopen(v4, 6);
      __loadMobileGestalt(void)::image = result;
      if (!result)
      {
        return result;
      }

      return dlsym(result, "MGCopyAnswer");
    }

    result = __loadMobileGestalt(void)::image;
    if (!__loadMobileGestalt(void)::image)
    {
      return result;
    }
  }

  return dlsym(result, "MGCopyAnswer");
}

uint64_t ___Z24CCSubmitLogToCrashTracerPKci_block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) UTF8String];
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:{objc_msgSend(*(a1 + 40), "length") + *(a1 + 48)}];

  return [a2 writeData:v5];
}

uint64_t CCSubmitBinaryToCrashTracer(uint64_t result, int a2)
{
  if (result)
  {
    return OSAWriteLogForSubmission();
  }

  return result;
}

uint64_t ___Z27CCSubmitBinaryToCrashTracerPKci_block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:*(a1 + 32) length:*(a1 + 40)];

  return [a2 writeData:v3];
}

uint64_t isSeedAndiOS()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v0 = atomic_load(gBootArgsParsed);
  if ((v0 & 1) == 0)
  {
    v2[0] = 256;
    if (!sysctlbyname("kern.bootargs", gBootArgs, v2, 0, 0))
    {
      byte_27EE11C50 = 0;
      atomic_store(1u, gBootArgsParsed);
      if (strnstr(gBootArgs, "cc.log.seed", 0x100uLL))
      {
        isSeedAndiOS::bootArgSet = 1;
      }
    }
  }

  return isSeedAndiOS::bootArgSet;
}

uint64_t mkdirRecursive(const __CFString *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFStringGetLength(a1);
  CFStringGetCString(a1, v4, v5 + 1, 0);
  v6 = strdup(v4);
  v7 = v6;
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v33.st_blksize = v8;
  *v33.st_qspare = v8;
  v33.st_birthtimespec = v8;
  *&v33.st_size = v8;
  v33.st_mtimespec = v8;
  v33.st_ctimespec = v8;
  *&v33.st_uid = v8;
  v33.st_atimespec = v8;
  *&v33.st_dev = v8;
  if (*v6 == 47)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v6;
  }

  while (*v9 != 47)
  {
    if (!*v9)
    {
      v10 = 1;
      goto LABEL_30;
    }

LABEL_15:
    ++v9;
  }

  *v9 = 0;
  if (stat(v7, &v33))
  {
    if (mkdir(v7, 0x1EDu) && (stat(v7, &v33) || (v33.st_mode & 0xF000) != 0x4000))
    {
      v11 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          v12 = *__error();
          *buf = 136315394;
          *&buf[4] = v7;
          *&buf[12] = 1024;
          *&buf[14] = v12;
          v13 = v11;
          goto LABEL_33;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v22 = *__error();
        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 1024;
        *&buf[14] = v22;
        v13 = MEMORY[0x277D86220];
LABEL_33:
        _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCFile::mkdirRecursive Unable to mkdir on '%s', errno %d\n", buf, 0x12u);
      }

      if (glog_fd)
      {
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v31 = v17;
        v32 = v17;
        v29 = v17;
        v30 = v17;
        v27 = v17;
        v28 = v17;
        *buf = v17;
        *&buf[16] = v17;
        memset(&v25, 0, sizeof(v25));
        v24 = 0xAAAAAAAAAAAAAAAALL;
        time(&v24);
        localtime_r(&v24, &v25);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v25);
        dprintf(glog_fd, "%s ", buf);
        v18 = glog_fd;
        __error();
        dprintf(v18, "CCFile::mkdirRecursive Unable to mkdir on '%s', errno %d\n");
      }

      goto LABEL_29;
    }

    goto LABEL_14;
  }

  if ((v33.st_mode & 0xF000) == 0x4000)
  {
LABEL_14:
    *v9 = 47;
    goto LABEL_15;
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      *buf = 136315650;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = v7;
      *&buf[22] = 1024;
      *&buf[24] = v15;
      v16 = v14;
      goto LABEL_35;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v23 = *__error();
    *buf = 136315650;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    *&buf[22] = 1024;
    *&buf[24] = v23;
    v16 = MEMORY[0x277D86220];
LABEL_35:
    _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "CCFile::mkdirRecursive Unable to create path '%s' as '%s' is not a directory errno %d\n", buf, 0x1Cu);
  }

  if (glog_fd)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v31 = v19;
    v32 = v19;
    v29 = v19;
    v30 = v19;
    v27 = v19;
    v28 = v19;
    *buf = v19;
    *&buf[16] = v19;
    memset(&v25, 0, sizeof(v25));
    v24 = 0xAAAAAAAAAAAAAAAALL;
    time(&v24);
    localtime_r(&v24, &v25);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v25);
    dprintf(glog_fd, "%s ", buf);
    v20 = glog_fd;
    __error();
    dprintf(v20, "CCFile::mkdirRecursive Unable to create path '%s' as '%s' is not a directory errno %d\n");
  }

LABEL_29:
  v10 = 0;
  *v9 = 47;
LABEL_30:
  free(v7);
  free(v4);
  return v10;
}

uint64_t shouldReduceLogRetention()
{
  v19 = *MEMORY[0x277D85DE8];
  if (shouldReduceLogRetention::parseChipsetInfo == 1)
  {
    LOBYTE(v0) = shouldReduceLogRetention::reduceRetention;
    return v0 & 1;
  }

  v1 = IOServiceNameMatching("wlan");
  v2 = MEMORY[0x277CD2898];
  if (v1 && (MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v1)) != 0 || (v4 = IOServiceNameMatching("marconi-wifi")) != 0 && (MatchingService = IOServiceGetMatchingService(*v2, v4)) != 0)
  {
    IOObjectRelease(MatchingService);
    v0 = 0;
  }

  else
  {
    v0 = 1;
  }

  v5 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v0;
      v6 = v5;
LABEL_14:
      _os_log_impl(&dword_2452A3000, v6, OS_LOG_TYPE_DEFAULT, "can reduce logging: %d\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v0;
    v6 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  if (glog_fd)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = v7;
    v18 = v7;
    v15 = v7;
    v16 = v7;
    v13 = v7;
    v14 = v7;
    *buf = v7;
    v12 = v7;
    memset(&v10, 0, sizeof(v10));
    v9 = 0xAAAAAAAAAAAAAAAALL;
    time(&v9);
    localtime_r(&v9, &v10);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v10);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "can reduce logging: %d\n", v0);
  }

  shouldReduceLogRetention::parseChipsetInfo = 1;
  shouldReduceLogRetention::reduceRetention = v0;
  return v0 & 1;
}

uint64_t getMaxPreservedCaptures()
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (shouldReduceLogRetention())
  {
    v0 = 15;
  }

  else
  {
    v0 = 50;
  }

  v12[0] = v0;
  v1 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v2 = CFStringCreateWithCString(0, "max_preserved_captures", 0);
  v3 = CFPreferencesCopyAppValue(v2, v1);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = CFGetTypeID(v3);
  if (v5 == CFStringGetTypeID())
  {
    Length = CFStringGetLength(v4);
    v7 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    v8 = CFStringGetLength(v4);
    CFStringGetCString(v4, v7, v8 + 1, 0);
    v9 = strtoll(v7, 0, 10);
    v12[0] = v9;
    if (v9)
    {
      goto LABEL_10;
    }

    if (*__error() == 22 || *__error() == 34)
    {
      v12[0] = v0;
      v9 = v0;
LABEL_10:
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v9 = 0;
    if (v7)
    {
LABEL_11:
      free(v7);
    }
  }

  else
  {
    v10 = CFGetTypeID(v4);
    if (v10 != CFNumberGetTypeID())
    {
      goto LABEL_19;
    }

    if (!CFNumberGetValue(v4, kCFNumberSInt64Type, v12))
    {
      goto LABEL_18;
    }

    v9 = v12[0];
  }

LABEL_15:
  if (v9 < 0)
  {
LABEL_18:
    v12[0] = v0;
    goto LABEL_19;
  }

  if (!v9)
  {
    v12[0] = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_19:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v12[0];
}

CFComparisonResult sortByDirectoryName(CFComparisonResult result, uint64_t a2)
{
  if (result >= 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = result - 1;
    do
    {
      while (1)
      {
        v7 = (v4 + 1);
        result = CFStringCompare(*(a2 + 8 * v3), *(a2 + 8 * v7), 0);
        if (result != kCFCompareGreaterThan)
        {
          break;
        }

        v8 = *(a2 + 8 * v3);
        *(a2 + 8 * v3) = *(a2 + 8 * v7);
        *(a2 + 8 * v7) = v8;
        if (v6 <= v7)
        {
          v3 = 0;
        }

        else
        {
          v3 = (v4 + 1);
        }

        if (v6 > v7)
        {
          ++v4;
        }

        else
        {
          v4 = 0;
        }

        v5 = v6 > v7;
      }

      v9 = (v6 > v7) | v5;
      if (v6 <= v7)
      {
        v3 = 0;
      }

      else
      {
        v3 = (v4 + 1);
      }

      if (v6 <= v7)
      {
        v4 = 0;
      }

      else
      {
        ++v4;
      }

      v5 &= v6 > v7;
    }

    while ((v9 & 1) != 0);
  }

  return result;
}

void deleteDirectory(const __CFString *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      Length = CFStringGetLength(a1);
      v4 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
      if (v4)
      {
        v5 = v4;
        v6 = CFStringGetLength(a1);
        if (CFStringGetCString(a1, v5, v6 + 1, 0))
        {
          v7 = opendir(v5);
          if (v7)
          {
            v8 = v7;
            v9 = *MEMORY[0x277CBECE8];
            while (1)
            {
              v10 = readdir(v8);
              if (!v10)
              {
                break;
              }

              v11 = v10;
              d_name = v10->d_name;
              if (v10->d_name[0] != 46 || v10->d_name[1] && (v10->d_name[1] != 46 || v10->d_name[2]))
              {
                MutableCopy = CFStringCreateMutableCopy(v9, 512, a1);
                CFStringAppendCString(MutableCopy, "/", 0);
                CFStringAppendCString(MutableCopy, d_name, 0);
                if (v11->d_type == 4)
                {
                  deleteDirectory(MutableCopy);
                }

                else
                {
                  v14 = CFStringGetLength(MutableCopy);
                  v15 = malloc_type_malloc(v14 + 1, 0x100004077774924uLL);
                  if (v15)
                  {
                    v16 = v15;
                    v17 = CFStringGetLength(MutableCopy);
                    if (CFStringGetCString(MutableCopy, v16, v17 + 1, 0) == 1)
                    {
                      unlink(v16);
                    }

                    free(v16);
                  }
                }

                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }
              }
            }

            closedir(v8);
            rmdir(v5);
LABEL_21:
            free(v5);
            return;
          }

          v26 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }

            v27 = __error();
            v28 = strerror(*v27);
            *buf = 136315650;
            *&buf[4] = "deleteDirectory";
            *&buf[12] = 1024;
            *&buf[14] = 265;
            *&buf[18] = 2080;
            *&buf[20] = v28;
            v29 = v26;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }

            v37 = __error();
            v38 = strerror(*v37);
            *buf = 136315650;
            *&buf[4] = "deleteDirectory";
            *&buf[12] = 1024;
            *&buf[14] = 265;
            *&buf[18] = 2080;
            *&buf[20] = v38;
            v29 = MEMORY[0x277D86220];
          }

          _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "%s:%06u: opendir failure - %s\n", buf, 0x1Cu);
LABEL_52:
          if (glog_fd)
          {
            *&v34 = 0xAAAAAAAAAAAAAAAALL;
            *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v46 = v34;
            v47 = v34;
            v44 = v34;
            v45 = v34;
            v42 = v34;
            v43 = v34;
            *buf = v34;
            *&buf[16] = v34;
            memset(&v40, 0, sizeof(v40));
            v39 = 0xAAAAAAAAAAAAAAAALL;
            time(&v39);
            localtime_r(&v39, &v40);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
            dprintf(glog_fd, "%s ", buf);
            v35 = glog_fd;
            v36 = __error();
            strerror(*v36);
            dprintf(v35, "%s:%06u: opendir failure - %s\n");
          }

          goto LABEL_21;
        }

        v24 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          *buf = 136315394;
          *&buf[4] = "deleteDirectory";
          *&buf[12] = 1024;
          *&buf[14] = 261;
          v25 = v24;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          *buf = 136315394;
          *&buf[4] = "deleteDirectory";
          *&buf[12] = 1024;
          *&buf[14] = 261;
          v25 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v25, OS_LOG_TYPE_ERROR, "%s:%06u: CFStringGetCString failure\n", buf, 0x12u);
LABEL_49:
        if (glog_fd)
        {
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v46 = v33;
          v47 = v33;
          v44 = v33;
          v45 = v33;
          v42 = v33;
          v43 = v33;
          *buf = v33;
          *&buf[16] = v33;
          memset(&v40, 0, sizeof(v40));
          v39 = 0xAAAAAAAAAAAAAAAALL;
          time(&v39);
          localtime_r(&v39, &v40);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s:%06u: CFStringGetCString failure\n");
        }

        goto LABEL_21;
      }

      v22 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        *buf = 136315394;
        *&buf[4] = "deleteDirectory";
        *&buf[12] = 1024;
        *&buf[14] = 258;
        v23 = v22;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        *buf = 136315394;
        *&buf[4] = "deleteDirectory";
        *&buf[12] = 1024;
        *&buf[14] = 258;
        v23 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v23, OS_LOG_TYPE_ERROR, "%s:%06u: Allocation failure\n", buf, 0x12u);
LABEL_45:
      if (glog_fd)
      {
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v46 = v32;
        v47 = v32;
        v44 = v32;
        v45 = v32;
        v42 = v32;
        v43 = v32;
        *buf = v32;
        *&buf[16] = v32;
        memset(&v40, 0, sizeof(v40));
        v39 = 0xAAAAAAAAAAAAAAAALL;
        time(&v39);
        localtime_r(&v39, &v40);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s:%06u: Allocation failure\n");
      }

      return;
    }

    v20 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "deleteDirectory";
      *&buf[12] = 1024;
      *&buf[14] = 255;
      v21 = v20;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "deleteDirectory";
      *&buf[12] = 1024;
      *&buf[14] = 255;
      v21 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v21, OS_LOG_TYPE_ERROR, "%s:%06u: Invalid type\n", buf, 0x12u);
LABEL_42:
    if (glog_fd)
    {
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v46 = v31;
      v47 = v31;
      v44 = v31;
      v45 = v31;
      v42 = v31;
      v43 = v31;
      *buf = v31;
      *&buf[16] = v31;
      memset(&v40, 0, sizeof(v40));
      v39 = 0xAAAAAAAAAAAAAAAALL;
      time(&v39);
      localtime_r(&v39, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u: Invalid type\n");
    }

    return;
  }

  v18 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136315394;
    *&buf[4] = "deleteDirectory";
    *&buf[12] = 1024;
    *&buf[14] = 254;
    v19 = v18;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136315394;
    *&buf[4] = "deleteDirectory";
    *&buf[12] = 1024;
    *&buf[14] = 254;
    v19 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "%s:%06u: Invalid argument\n", buf, 0x12u);
LABEL_39:
  if (glog_fd)
  {
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v46 = v30;
    v47 = v30;
    v44 = v30;
    v45 = v30;
    v42 = v30;
    v43 = v30;
    *buf = v30;
    *&buf[16] = v30;
    memset(&v40, 0, sizeof(v40));
    v39 = 0xAAAAAAAAAAAAAAAALL;
    time(&v39);
    localtime_r(&v39, &v40);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s:%06u: Invalid argument\n");
  }
}

uint64_t compressFile(const char *a1, const char *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 310;
      v7 = v6;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 310;
      v7 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v7, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d dirPath is invalid\n", &buf, 0x12u);
LABEL_37:
    if (glog_fd)
    {
      v33.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v33.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v33;
      *&buf.st_blksize = v33;
      buf.st_ctimespec = v33;
      buf.st_birthtimespec = v33;
      buf.st_atimespec = v33;
      buf.st_mtimespec = v33;
      *&buf.st_dev = v33;
      *&buf.st_uid = v33;
      memset(v72, 0, 56);
      *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v71.tm_sec);
      localtime_r(&v71.tm_sec, v72);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d dirPath is invalid\n");
    }

    return 0;
  }

  v3 = coreCaptureOsLog;
  if (!a2)
  {
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 315;
      v8 = v3;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 315;
      v8 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d fileName is invalid\n", &buf, 0x12u);
LABEL_43:
    if (glog_fd)
    {
      v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v36.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v36;
      *&buf.st_blksize = v36;
      buf.st_ctimespec = v36;
      buf.st_birthtimespec = v36;
      buf.st_atimespec = v36;
      buf.st_mtimespec = v36;
      *&buf.st_dev = v36;
      *&buf.st_uid = v36;
      memset(v72, 0, 56);
      *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v71.tm_sec);
      localtime_r(&v71.tm_sec, v72);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d fileName is invalid\n");
    }

    return 0;
  }

  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    buf.st_dev = 136315906;
    *&buf.st_mode = "compressFile";
    WORD2(buf.st_ino) = 1024;
    *(&buf.st_ino + 6) = 319;
    HIWORD(buf.st_uid) = 2080;
    *&buf.st_gid = a1;
    *(&buf.st_rdev + 2) = 2080;
    *(&buf.st_rdev + 6) = a2;
    v5 = v3;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    buf.st_dev = 136315906;
    *&buf.st_mode = "compressFile";
    WORD2(buf.st_ino) = 1024;
    *(&buf.st_ino + 6) = 319;
    HIWORD(buf.st_uid) = 2080;
    *&buf.st_gid = a1;
    *(&buf.st_rdev + 2) = 2080;
    *(&buf.st_rdev + 6) = a2;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCDaemon::%s:%d Trying to compress file %s%s\n", &buf, 0x26u);
LABEL_15:
  if (glog_fd)
  {
    v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&buf.st_size = v9;
    *&buf.st_blksize = v9;
    buf.st_ctimespec = v9;
    buf.st_birthtimespec = v9;
    buf.st_atimespec = v9;
    buf.st_mtimespec = v9;
    *&buf.st_dev = v9;
    *&buf.st_uid = v9;
    memset(v72, 0, 56);
    *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v71.tm_sec);
    localtime_r(&v71.tm_sec, v72);
    strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
    dprintf(glog_fd, "%s ", &buf);
    dprintf(glog_fd, "CCDaemon::%s:%d Trying to compress file %s%s\n", "compressFile", 319, a1, a2);
  }

  v10 = strlen(a2);
  if (v10 >= 4 && !strcmp(&a2[v10 - 3], ".gz"))
  {
    v39 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 325;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = a2;
      v40 = v39;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 325;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = a2;
      v40 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v40, OS_LOG_TYPE_DEFAULT, "CCDaemon::%s:%d fileName %s is already compressed...\n", &buf, 0x1Cu);
LABEL_66:
    if (glog_fd)
    {
      v47.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v47.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v47;
      *&buf.st_blksize = v47;
      buf.st_ctimespec = v47;
      buf.st_birthtimespec = v47;
      buf.st_atimespec = v47;
      buf.st_mtimespec = v47;
      *&buf.st_dev = v47;
      *&buf.st_uid = v47;
      memset(v72, 0, 56);
      *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v71.tm_sec);
      localtime_r(&v71.tm_sec, v72);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d fileName %s is already compressed...\n");
    }

    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 512);
  if (!Mutable)
  {
    v34 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 331;
      v35 = v34;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 331;
      v35 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v35, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to create filePathRef\n", &buf, 0x12u);
LABEL_55:
    if (glog_fd)
    {
      v43.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v43.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v43;
      *&buf.st_blksize = v43;
      buf.st_ctimespec = v43;
      buf.st_birthtimespec = v43;
      buf.st_atimespec = v43;
      buf.st_mtimespec = v43;
      *&buf.st_dev = v43;
      *&buf.st_uid = v43;
      memset(v72, 0, 56);
      *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v71.tm_sec);
      localtime_r(&v71.tm_sec, v72);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d unable to create filePathRef\n");
    }

    return 0;
  }

  v12 = Mutable;
  CFStringAppendCString(Mutable, a1, 0);
  CFStringAppendCString(v12, a2, 0);
  Length = CFStringGetLength(v12);
  v14 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!v14)
  {
    v37 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 340;
      v38 = v37;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 340;
      v38 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v38, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to allocate source buffer\n", &buf, 0x12u);
LABEL_61:
    if (glog_fd)
    {
      v46.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v46.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v46;
      *&buf.st_blksize = v46;
      buf.st_ctimespec = v46;
      buf.st_birthtimespec = v46;
      buf.st_atimespec = v46;
      buf.st_mtimespec = v46;
      *&buf.st_dev = v46;
      *&buf.st_uid = v46;
      memset(v72, 0, 56);
      *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v71.tm_sec);
      localtime_r(&v71.tm_sec, v72);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d unable to allocate source buffer\n", "compressFile", 340);
    }

    goto LABEL_74;
  }

  v15 = v14;
  v16 = CFStringGetLength(v12);
  CFStringGetCString(v12, v15, v16 + 1, 0);
  CFStringAppendCString(v12, ".gz", 0);
  v17 = CFStringGetLength(v12);
  v18 = malloc_type_malloc(v17 + 1, 0x100004077774924uLL);
  if (!v18)
  {
    v41 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 136315394;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 350;
        v42 = v41;
LABEL_132:
        _os_log_error_impl(&dword_2452A3000, v42, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to allocate destination buffer\n", &buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 350;
      v42 = MEMORY[0x277D86220];
      goto LABEL_132;
    }

    if (glog_fd)
    {
      v50.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v50.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v50;
      *&buf.st_blksize = v50;
      buf.st_ctimespec = v50;
      buf.st_birthtimespec = v50;
      buf.st_atimespec = v50;
      buf.st_mtimespec = v50;
      *&buf.st_dev = v50;
      *&buf.st_uid = v50;
      memset(v72, 0, 56);
      *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v71.tm_sec);
      localtime_r(&v71.tm_sec, v72);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d unable to allocate destination buffer\n", "compressFile", 350);
    }

    free(v15);
LABEL_74:
    v48 = 0;
    goto LABEL_130;
  }

  v19 = v18;
  v20 = CFStringGetLength(v12);
  CFStringGetCString(v12, v19, v20 + 1, 0);
  if ((ifSeedCreateClassCProtectedFile(v19) & 1) == 0)
  {
    v44 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 136315394;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 357;
        v45 = v44;
LABEL_134:
        _os_log_error_impl(&dword_2452A3000, v45, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to create class with protection flag\n", &buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 357;
      v45 = MEMORY[0x277D86220];
      goto LABEL_134;
    }

    if (glog_fd)
    {
      v53.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v53.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v53;
      *&buf.st_blksize = v53;
      buf.st_ctimespec = v53;
      buf.st_birthtimespec = v53;
      buf.st_atimespec = v53;
      buf.st_mtimespec = v53;
      *&buf.st_dev = v53;
      *&buf.st_uid = v53;
      memset(v72, 0, 56);
      *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v71.tm_sec);
      localtime_r(&v71.tm_sec, v72);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d unable to create class with protection flag\n", "compressFile", 357);
    }

    v48 = 0;
    goto LABEL_129;
  }

  v21 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  v22 = fopen(v15, "rb");
  if (!v22)
  {
    v51 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_88;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 364;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v15;
      v52 = v51;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_88;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 364;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v15;
      v52 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v52, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d failed to open source buffer %s\n", &buf, 0x1Cu);
LABEL_88:
    if (glog_fd)
    {
      v56.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v56.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v56;
      *&buf.st_blksize = v56;
      buf.st_ctimespec = v56;
      buf.st_birthtimespec = v56;
      buf.st_atimespec = v56;
      buf.st_mtimespec = v56;
      *&buf.st_dev = v56;
      *&buf.st_uid = v56;
      memset(v72, 0, 56);
      *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v71.tm_sec);
      localtime_r(&v71.tm_sec, v72);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d failed to open source buffer %s\n", "compressFile", 364, v15);
    }

    goto LABEL_99;
  }

  v23 = v22;
  v69 = v19;
  v24 = gzopen(v19, "wb");
  if (!v24)
  {
    v54 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 136315650;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 370;
        HIWORD(buf.st_uid) = 2080;
        *&buf.st_gid = v15;
        v55 = v54;
LABEL_138:
        _os_log_error_impl(&dword_2452A3000, v55, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d failed to open dest buffer %s\n", &buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 370;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v15;
      v55 = MEMORY[0x277D86220];
      goto LABEL_138;
    }

    if (glog_fd)
    {
      v59.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v59.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v59;
      *&buf.st_blksize = v59;
      buf.st_ctimespec = v59;
      buf.st_birthtimespec = v59;
      buf.st_atimespec = v59;
      buf.st_mtimespec = v59;
      *&buf.st_dev = v59;
      *&buf.st_uid = v59;
      memset(v72, 0, 56);
      *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v71.tm_sec);
      localtime_r(&v71.tm_sec, v72);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d failed to open dest buffer %s\n", "compressFile", 370, v15);
    }

    fclose(v23);
LABEL_99:
    v48 = 0;
    goto LABEL_127;
  }

  v25 = v24;
  v68 = v15;
  do
  {
    v26 = 1;
    v27 = fread(v21, 1uLL, 0x4000uLL, v23);
    v28 = v27;
    if (!(v27 >> 14))
    {
      if (!ferror(v23))
      {
        v26 = feof(v23) == 0;
        goto LABEL_29;
      }

      v57 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        v15 = v68;
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        buf.st_dev = 136315650;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 380;
        HIWORD(buf.st_uid) = 2080;
        *&buf.st_gid = v68;
        v58 = v57;
      }

      else
      {
        v15 = v68;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        buf.st_dev = 136315650;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 380;
        HIWORD(buf.st_uid) = 2080;
        *&buf.st_gid = v68;
        v58 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v58, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d Error reading from source buffer %s\n", &buf, 0x1Cu);
LABEL_114:
      if (glog_fd)
      {
        v65.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v65.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&buf.st_size = v65;
        *&buf.st_blksize = v65;
        buf.st_ctimespec = v65;
        buf.st_birthtimespec = v65;
        buf.st_atimespec = v65;
        buf.st_mtimespec = v65;
        *&buf.st_dev = v65;
        *&buf.st_uid = v65;
        memset(v72, 0, 56);
        *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v71.tm_sec);
        localtime_r(&v71.tm_sec, v72);
        strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
        dprintf(glog_fd, "%s ", &buf);
        dprintf(glog_fd, "CCDaemon::%s:%d Error reading from source buffer %s\n", "compressFile", 380, v15);
      }

      goto LABEL_120;
    }

LABEL_29:
    if (!gzwrite(v25, v21, v28))
    {
      errnum[0] = 0;
      v29 = gzerror(v25, errnum);
      if (errnum[0])
      {
        v60 = v29;
        v61 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            buf.st_dev = 136315906;
            *&buf.st_mode = "compressFile";
            WORD2(buf.st_ino) = 1024;
            *(&buf.st_ino + 6) = 392;
            HIWORD(buf.st_uid) = 2080;
            *&buf.st_gid = v69;
            *(&buf.st_rdev + 2) = 2080;
            *(&buf.st_rdev + 6) = v60;
            v62 = v61;
            goto LABEL_144;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          buf.st_dev = 136315906;
          *&buf.st_mode = "compressFile";
          WORD2(buf.st_ino) = 1024;
          *(&buf.st_ino + 6) = 392;
          HIWORD(buf.st_uid) = 2080;
          *&buf.st_gid = v69;
          *(&buf.st_rdev + 2) = 2080;
          *(&buf.st_rdev + 6) = v60;
          v62 = MEMORY[0x277D86220];
LABEL_144:
          _os_log_error_impl(&dword_2452A3000, v62, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d Error writing to destination buffer %s: %s\n", &buf, 0x26u);
        }

        if (glog_fd)
        {
          v66.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v66.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&buf.st_size = v66;
          *&buf.st_blksize = v66;
          buf.st_ctimespec = v66;
          buf.st_birthtimespec = v66;
          buf.st_atimespec = v66;
          buf.st_mtimespec = v66;
          *&buf.st_dev = v66;
          *&buf.st_uid = v66;
          memset(v72, 0, 56);
          *&v71.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&v71.tm_sec);
          localtime_r(&v71.tm_sec, v72);
          strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v72);
          dprintf(glog_fd, "%s ", &buf);
          dprintf(glog_fd, "CCDaemon::%s:%d Error writing to destination buffer %s: %s\n", "compressFile", 392, v69, v60);
        }

        v15 = v68;
LABEL_120:
        fclose(v23);
        gzclose(v25);
        v48 = 0;
        v19 = v69;
        goto LABEL_127;
      }
    }
  }

  while (v26);
  fclose(v23);
  gzclose(v25);
  memset(&buf, 0, sizeof(buf));
  v19 = v69;
  v30 = stat(v69, &buf);
  v31 = coreCaptureOsLog;
  if (!v30)
  {
    if (coreCaptureOsLog)
    {
      v15 = v68;
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *v72 = 136315906;
      *&v72[4] = "compressFile";
      *&v72[12] = 1024;
      *&v72[14] = 420;
      *&v72[18] = 2080;
      *&v72[20] = a2;
      *&v72[28] = 2048;
      *&v72[30] = buf.st_size;
      v63 = v31;
    }

    else
    {
      v15 = v68;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *v72 = 136315906;
      *&v72[4] = "compressFile";
      *&v72[12] = 1024;
      *&v72[14] = 420;
      *&v72[18] = 2080;
      *&v72[20] = a2;
      *&v72[28] = 2048;
      *&v72[30] = buf.st_size;
      v63 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v63, OS_LOG_TYPE_DEFAULT, "CCDaemon::%s:%d Compressed file with name %s and resulting length %lld bytes\n", v72, 0x26u);
LABEL_124:
    if (glog_fd)
    {
      *&v67 = 0xAAAAAAAAAAAAAAAALL;
      *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v75 = v67;
      v76 = v67;
      v73 = v67;
      v74 = v67;
      *&v72[32] = v67;
      *&v72[48] = v67;
      *v72 = v67;
      *&v72[16] = v67;
      memset(&v71, 0, sizeof(v71));
      *errnum = 0xAAAAAAAAAAAAAAAALL;
      time(errnum);
      localtime_r(errnum, &v71);
      strftime(v72, 0x80uLL, "%b %d %H:%M:%S", &v71);
      dprintf(glog_fd, "%s ", v72);
      dprintf(glog_fd, "CCDaemon::%s:%d Compressed file with name %s and resulting length %lld bytes\n");
    }

    goto LABEL_126;
  }

  if (coreCaptureOsLog)
  {
    v15 = v68;
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *v72 = 136315394;
      *&v72[4] = "compressFile";
      *&v72[12] = 1024;
      *&v72[14] = 422;
      v32 = v31;
      goto LABEL_140;
    }
  }

  else
  {
    v15 = v68;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v72 = 136315394;
      *&v72[4] = "compressFile";
      *&v72[12] = 1024;
      *&v72[14] = 422;
      v32 = MEMORY[0x277D86220];
LABEL_140:
      _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to stat dest path\n", v72, 0x12u);
    }
  }

  if (glog_fd)
  {
    *&v64 = 0xAAAAAAAAAAAAAAAALL;
    *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v75 = v64;
    v76 = v64;
    v73 = v64;
    v74 = v64;
    *&v72[32] = v64;
    *&v72[48] = v64;
    *v72 = v64;
    *&v72[16] = v64;
    memset(&v71, 0, sizeof(v71));
    *errnum = 0xAAAAAAAAAAAAAAAALL;
    time(errnum);
    localtime_r(errnum, &v71);
    strftime(v72, 0x80uLL, "%b %d %H:%M:%S", &v71);
    dprintf(glog_fd, "%s ", v72);
    dprintf(glog_fd, "CCDaemon::%s:%d unable to stat dest path\n");
  }

LABEL_126:
  v48 = 1;
LABEL_127:
  if (v21)
  {
    free(v21);
  }

LABEL_129:
  free(v15);
  free(v19);
LABEL_130:
  CFRelease(v12);
  return v48;
}

uint64_t ifSeedCreateClassCProtectedFile(const std::__fs::filesystem::path *a1)
{
  v2 = isSeedAndiOS();
  if (!v2)
  {
    return 1;
  }

  v5 = deviceUnlockedSinceBoot(v2, v3);
  result = 0;
  if (a1 && v5)
  {
    remove(a1, v4);
    v7 = open_dprotected_np(a1, 1538, 3, 0, 420);
    if (v7 < 1)
    {
      return 0;
    }

    close(v7);
    return 1;
  }

  return result;
}

uint64_t deviceUnlockedSinceBoot(uint64_t a1, std::error_code *a2)
{
  if (deviceUnlockedSinceBoot::deviceUnlockedOnce)
  {
    return 1;
  }

  remove("/tmp/cc.locktest", a2);
  v3 = open_dprotected_np("/tmp/cc.locktest", 1538, 3, 0, 420);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  if (write(v3, "/tmp/cc.locktest", 0x11uLL) == 17)
  {
    deviceUnlockedSinceBoot::deviceUnlockedOnce = 1;
  }

  close(v4);
  remove("/tmp/cc.locktest", v5);
  return deviceUnlockedSinceBoot::deviceUnlockedOnce;
}

void cleanupLogFile(const char *a1, const char *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v4 = strlen(a1);
      if (strlen(a2) + v4 >= 0x200)
      {
        v5 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *__str = 136315394;
          *&__str[4] = "cleanupLogFile";
          *&__str[12] = 1024;
          *&__str[14] = 447;
          v6 = v5;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *__str = 136315394;
          *&__str[4] = "cleanupLogFile";
          *&__str[12] = 1024;
          *&__str[14] = 447;
          v6 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v6, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d filePath may get truncated. Returning...", __str, 0x12u);
LABEL_23:
        if (glog_fd)
        {
          *&v15 = 0xAAAAAAAAAAAAAAAALL;
          *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v29 = v15;
          v30 = v15;
          v27 = v15;
          v28 = v15;
          v25 = v15;
          v26 = v15;
          *__str = v15;
          *&__str[16] = v15;
          memset(v19, 0, 56);
          *&v18.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&v18.tm_sec);
          localtime_r(&v18.tm_sec, v19);
          strftime(__str, 0x80uLL, "%b %d %H:%M:%S", v19);
          dprintf(glog_fd, "%s ", __str);
          dprintf(glog_fd, "CCDaemon::%s:%d filePath may get truncated. Returning...");
        }

        return;
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
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
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x200uLL, "%s%s", a1, a2);
      v11 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 136315650;
          *&v19[4] = "cleanupLogFile";
          *&v19[12] = 1024;
          *&v19[14] = 455;
          *&v19[18] = 2080;
          *&v19[20] = __str;
          v12 = v11;
LABEL_28:
          _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "CCDaemon::%s:%d Deleting compressed file %s", v19, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 136315650;
        *&v19[4] = "cleanupLogFile";
        *&v19[12] = 1024;
        *&v19[14] = 455;
        *&v19[18] = 2080;
        *&v19[20] = __str;
        v12 = MEMORY[0x277D86220];
        goto LABEL_28;
      }

      if (glog_fd)
      {
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v22 = v16;
        v23 = v16;
        v20 = v16;
        v21 = v16;
        *&v19[32] = v16;
        *&v19[48] = v16;
        *v19 = v16;
        *&v19[16] = v16;
        memset(&v18, 0, sizeof(v18));
        v17 = 0xAAAAAAAAAAAAAAAALL;
        time(&v17);
        localtime_r(&v17, &v18);
        strftime(v19, 0x80uLL, "%b %d %H:%M:%S", &v18);
        dprintf(glog_fd, "%s ", v19);
        dprintf(glog_fd, "CCDaemon::%s:%d Deleting compressed file %s", "cleanupLogFile", 455, __str);
      }

      unlink(__str);
      return;
    }

    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *__str = 136315394;
      *&__str[4] = "cleanupLogFile";
      *&__str[12] = 1024;
      *&__str[14] = 442;
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *__str = 136315394;
      *&__str[4] = "cleanupLogFile";
      *&__str[12] = 1024;
      *&__str[14] = 442;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d fileName is invalid", __str, 0x12u);
LABEL_20:
    if (glog_fd)
    {
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v14;
      v30 = v14;
      v27 = v14;
      v28 = v14;
      v25 = v14;
      v26 = v14;
      *__str = v14;
      *&__str[16] = v14;
      memset(v19, 0, 56);
      *&v18.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v18.tm_sec);
      localtime_r(&v18.tm_sec, v19);
      strftime(__str, 0x80uLL, "%b %d %H:%M:%S", v19);
      dprintf(glog_fd, "%s ", __str);
      dprintf(glog_fd, "CCDaemon::%s:%d fileName is invalid");
    }

    return;
  }

  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *__str = 136315394;
    *&__str[4] = "cleanupLogFile";
    *&__str[12] = 1024;
    *&__str[14] = 437;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *__str = 136315394;
    *&__str[4] = "cleanupLogFile";
    *&__str[12] = 1024;
    *&__str[14] = 437;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d dirPath is invalid", __str, 0x12u);
LABEL_17:
  if (glog_fd)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v13;
    v30 = v13;
    v27 = v13;
    v28 = v13;
    v25 = v13;
    v26 = v13;
    *__str = v13;
    *&__str[16] = v13;
    memset(v19, 0, 56);
    *&v18.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v18.tm_sec);
    localtime_r(&v18.tm_sec, v19);
    strftime(__str, 0x80uLL, "%b %d %H:%M:%S", v19);
    dprintf(glog_fd, "%s ", __str);
    dprintf(glog_fd, "CCDaemon::%s:%d dirPath is invalid");
  }
}

void freeCCCommonResources()
{
  if (gReleaseType)
  {
    CFRelease(gReleaseType);
    gReleaseType = 0;
  }
}

void cleanCaptureDirectory(const __CFString *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v4 = CFStringGetLength(a1);
  CFStringGetCString(a1, v3, v4 + 1, 0);
  v5 = opendir(v3);
  if (v3)
  {
    free(v3);
  }

  v6 = 0;
  if (v5)
  {
    while (1)
    {
      v7 = readdir(v5);
      if (!v7)
      {
        break;
      }

      if (v7->d_name[0] != 46)
      {
        ++v6;
      }
    }

    closedir(v5);
  }

  MaxPreservedCaptures = getMaxPreservedCaptures();
  if (!v6)
  {
    return;
  }

  v9 = v6 - MaxPreservedCaptures;
  if (v6 < MaxPreservedCaptures)
  {
    return;
  }

  v10 = malloc_type_calloc(v6, 8uLL, 0x2004093837F09uLL);
  v11 = CFStringGetLength(a1);
  v12 = malloc_type_malloc(v11 + 1, 0x100004077774924uLL);
  v13 = CFStringGetLength(a1);
  CFStringGetCString(a1, v12, v13 + 1, 0);
  v14 = opendir(v12);
  if (v12)
  {
    free(v12);
  }

  v15 = 0;
  if (v14)
  {
    v16 = v6 > 0;
    v17 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v18 = readdir(v14);
      if (v18 == 0 || !v16)
      {
        break;
      }

      v19 = v18;
      if (v18->d_name[0] != 46)
      {
        MutableCopy = CFStringCreateMutableCopy(v17, 512, a1);
        CFStringAppendCString(MutableCopy, "/", 0);
        CFStringAppendCString(MutableCopy, v19->d_name, 0);
        v10[v15++] = MutableCopy;
        v16 = v15 < v6;
      }
    }

    closedir(v14);
  }

  v21 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    v22 = v21;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    v22 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v22, OS_LOG_TYPE_DEFAULT, "numberOfDirArrayEntries: %lld, readIndex %lld\n", buf, 0x16u);
LABEL_25:
  if (glog_fd)
  {
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v23;
    v38 = v23;
    v35 = v23;
    v36 = v23;
    v33 = v23;
    v34 = v23;
    *buf = v23;
    *&buf[16] = v23;
    memset(&v31, 0, sizeof(v31));
    v30 = 0xAAAAAAAAAAAAAAAALL;
    time(&v30);
    localtime_r(&v30, &v31);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v31);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "numberOfDirArrayEntries: %lld, readIndex %lld\n", v6, v15);
  }

  if (v6 != v15)
  {
    v24 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      *buf = 134218240;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      v25 = v24;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      *buf = 134218240;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      v25 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v25, OS_LOG_TYPE_DEFAULT, "Incorrect number [numberOfDirArrayEntries: %lld, readIndex %lld] of directory entries. Skip sorting.\n", buf, 0x16u);
LABEL_35:
    if (glog_fd)
    {
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v37 = v26;
      v38 = v26;
      v35 = v26;
      v36 = v26;
      v33 = v26;
      v34 = v26;
      *buf = v26;
      *&buf[16] = v26;
      memset(&v31, 0, sizeof(v31));
      v30 = 0xAAAAAAAAAAAAAAAALL;
      time(&v30);
      localtime_r(&v30, &v31);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v31);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Incorrect number [numberOfDirArrayEntries: %lld, readIndex %lld] of directory entries. Skip sorting.\n", v6, v15);
    }

    goto LABEL_37;
  }

  sortByDirectoryName(v6, v10);
LABEL_37:
  if (v9 >= 1)
  {
    v27 = v10;
    do
    {
      v28 = *v27++;
      deleteDirectory(v28);
      --v9;
    }

    while (v9);
  }

  if (v15)
  {
    v29 = v10;
    do
    {
      if (*v29)
      {
        CFRelease(*v29);
      }

      *v29++ = 0;
      --v15;
    }

    while (v15);
  }

  else if (!v10)
  {
    return;
  }

  free(v10);
}

void pruneDirectoryOnOSUpgrade()
{
  v50 = *MEMORY[0x277D85DE8];
  memset(__s1, 0, sizeof(__s1));
  memset(buffer, 0, sizeof(buffer));
  v0 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v1 = CFStringCreateWithCString(0, "prune_dir_os_upgrade_ctl", 0);
  v2 = CFPreferencesCopyAppValue(v1, v0);
  v3 = v2;
  if (v2)
  {
    v4 = CFStringCompare(v2, @"disable", 0) != kCFCompareEqualTo;
    if (!v0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 1;
  if (v0)
  {
LABEL_3:
    CFRelease(v0);
  }

LABEL_4:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (!v4)
  {
    v12 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v13 = v12;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v13 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v13, OS_LOG_TYPE_DEFAULT, "pruneDirectoryOnOSUpgrade: activity disabled\n", buf, 2u);
LABEL_25:
    if (glog_fd)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v46 = v16;
      v47 = v16;
      v44 = v16;
      v45 = v16;
      v43 = v16;
      *&buf[16] = v16;
      v42 = v16;
      *buf = v16;
      memset(&v40, 0, sizeof(v40));
      SaveLocation = 0xAAAAAAAAAAAAAAAALL;
      time(&SaveLocation);
      localtime_r(&SaveLocation, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "pruneDirectoryOnOSUpgrade: activity disabled\n");
    }

    return;
  }

  if (!getOsVersion(__s1))
  {
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "pruneDirectoryOnOSUpgrade: activity enabled; failed to get osversion\n", buf, 2u);
LABEL_39:
    if (glog_fd)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v46 = v19;
      v47 = v19;
      v44 = v19;
      v45 = v19;
      v43 = v19;
      *&buf[16] = v19;
      v42 = v19;
      *buf = v19;
      memset(&v40, 0, sizeof(v40));
      SaveLocation = 0xAAAAAAAAAAAAAAAALL;
      time(&SaveLocation);
      localtime_r(&SaveLocation, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "pruneDirectoryOnOSUpgrade: activity enabled; failed to get osversion\n");
    }

    return;
  }

  v5 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v6 = CFStringCreateWithCString(0, "prune_dir_os_upgrade_snapshot", 0);
  v7 = CFPreferencesCopyAppValue(v6, v5);
  v8 = v7;
  if (!v7 || (v9 = CFGetTypeID(v7), v9 != CFStringGetTypeID()))
  {
    v11 = 0;
    if (!v5)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Length = CFStringGetLength(v8);
  v11 = CFStringGetCString(v8, buffer, Length + 1, 0) != 0;
  if (v5)
  {
LABEL_28:
    CFRelease(v5);
  }

LABEL_29:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (!v11 || strcmp(__s1, buffer) >= 1)
  {
    v17 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = buffer;
        *&buf[12] = 2080;
        *&buf[14] = __s1;
        v18 = v17;
LABEL_43:
        _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "pruneDirectoryOnOSUpgrade: activity enabled; upgraded from %s to %s\n", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = buffer;
      *&buf[12] = 2080;
      *&buf[14] = __s1;
      v18 = MEMORY[0x277D86220];
      goto LABEL_43;
    }

    if (glog_fd)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v46 = v20;
      v47 = v20;
      v44 = v20;
      v45 = v20;
      v43 = v20;
      *&buf[16] = v20;
      v42 = v20;
      *buf = v20;
      memset(&v40, 0, sizeof(v40));
      SaveLocation = 0xAAAAAAAAAAAAAAAALL;
      time(&SaveLocation);
      localtime_r(&SaveLocation, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "pruneDirectoryOnOSUpgrade: activity enabled; upgraded from %s to %s\n", buffer, __s1);
    }

    SaveLocation = getSaveLocation(0);
    if ((CCDaemon::fIsCCDaemon & 1) != 0 || (v21 = CCDaemon::fSaveDir) == 0)
    {
      if ((isSeedAndiOS() & (CCProfileMonitor::fProfileLoaded == 0)) != 0)
      {
        v21 = "/Library/Logs/CrashReporter/CoreCapture";
      }

      else
      {
        v21 = "/Library/Logs/CoreCapture";
      }
    }

    v37 = v21;
    v22 = *MEMORY[0x277CBECE8];
    p_SaveLocation = &SaveLocation;
    v24 = 1;
    while (1)
    {
      v25 = v24;
      Mutable = CFStringCreateMutable(v22, 512);
      v27 = *p_SaveLocation;
      CFStringAppendCString(Mutable, *p_SaveLocation, 0);
      v28 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = v27;
          v29 = v28;
LABEL_57:
          _os_log_impl(&dword_2452A3000, v29, OS_LOG_TYPE_DEFAULT, "pruneDirectoryOnOSUpgrade %s\n", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v27;
        v29 = MEMORY[0x277D86220];
        goto LABEL_57;
      }

      if (glog_fd)
      {
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v46 = v30;
        v47 = v30;
        v44 = v30;
        v45 = v30;
        v43 = v30;
        *&buf[16] = v30;
        v42 = v30;
        *buf = v30;
        memset(&v40, 0, sizeof(v40));
        v38 = 0xAAAAAAAAAAAAAAAALL;
        time(&v38);
        localtime_r(&v38, &v40);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "pruneDirectoryOnOSUpgrade %s\n", v27);
      }

      deleteDirectory(Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v24 = 0;
      p_SaveLocation = &v37;
      if ((v25 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  v34 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = buffer;
      *&buf[12] = 2080;
      *&buf[14] = __s1;
      v35 = v34;
LABEL_75:
      _os_log_impl(&dword_2452A3000, v35, OS_LOG_TYPE_DEFAULT, "pruneDirectoryOnOSUpgrade: activity enabled; snapshot %s, osversion %s\n", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = buffer;
    *&buf[12] = 2080;
    *&buf[14] = __s1;
    v35 = MEMORY[0x277D86220];
    goto LABEL_75;
  }

  if (glog_fd)
  {
    *&v36 = 0xAAAAAAAAAAAAAAAALL;
    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v46 = v36;
    v47 = v36;
    v44 = v36;
    v45 = v36;
    v43 = v36;
    *&buf[16] = v36;
    v42 = v36;
    *buf = v36;
    memset(&v40, 0, sizeof(v40));
    SaveLocation = 0xAAAAAAAAAAAAAAAALL;
    time(&SaveLocation);
    localtime_r(&SaveLocation, &v40);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "pruneDirectoryOnOSUpgrade: activity enabled; snapshot %s, osversion %s\n", buffer, __s1);
  }

LABEL_63:
  v31 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v32 = CFStringCreateWithCString(0, "prune_dir_os_upgrade_snapshot", 0);
  v33 = CFStringCreateWithCString(0, __s1, 0);
  CFPreferencesSetAppValue(v32, v33, v31);
  CFPreferencesAppSynchronize(v31);
  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }
}

BOOL getOsVersion(char *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  *v24 = 0x4100000001;
  v15 = 32;
  v1 = sysctl(v24, 2u, a1, &v15, 0, 0);
  if (!v1)
  {
    return v1 == 0;
  }

  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v3 = __error();
    v4 = strerror(*v3);
    *buf = 136315138;
    *&buf[4] = v4;
    v5 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v11 = __error();
    v12 = strerror(*v11);
    *buf = 136315138;
    *&buf[4] = v12;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "getOsVersion %s\n", buf, 0xCu);
LABEL_6:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v6;
    v23 = v6;
    v20 = v6;
    v21 = v6;
    v18 = v6;
    v19 = v6;
    *buf = v6;
    v17 = v6;
    memset(&v14, 0, sizeof(v14));
    v13 = 0xAAAAAAAAAAAAAAAALL;
    time(&v13);
    localtime_r(&v13, &v14);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v14);
    dprintf(glog_fd, "%s ", buf);
    v7 = glog_fd;
    v8 = __error();
    v9 = strerror(*v8);
    dprintf(v7, "getOsVersion %s\n", v9);
  }

  return v1 == 0;
}

const char *getSaveLocation(uint64_t a1)
{
  if ((CCDaemon::fIsCCDaemon & 1) != 0 || (result = CCDaemon::fSaveDir) == 0)
  {
    if (!isSeedAndiOS())
    {
      return "/Library/Logs/CrashReporter/CoreCapture";
    }

    if (isCarrierRelease::onceToken != -1)
    {
      dispatch_once(&isCarrierRelease::onceToken, &__block_literal_global_1265);
    }

    if (isCarrierRelease::gIsCarrierRelease == 1 && isClientValid(a1) && (v3 = isMegaWiFiProfileInstalled(), v4 = isBTLoggingProfileInstalled(), a1) && (((v5 = v4, !strncmp(a1, "WiFi", 4uLL)) ? (v6 = v3) : (v6 = 0), (v6 & 1) != 0 || *a1 == 66 && (*(a1 + 1) == 84 ? (v7 = v5) : (v7 = 0), (v7 & 1) != 0)) || (v8 = strncmp(a1, "MultiFunctionManager", 0x14uLL), (v3 | v5) == 1) && !v8))
    {
      return "/Library/Logs/CrashReporter/CoreCapture";
    }

    else
    {
      return "/Library/Logs/CoreCapture";
    }
  }

  return result;
}

const char *isClientValid(const char *result)
{
  if (result)
  {
    v1 = result;
    if (!strncmp(result, "WiFi", 4uLL) || *v1 == 66 && v1[1] == 84)
    {
      return 1;
    }

    else
    {
      return (strncmp(v1, "MultiFunctionManager", 0x14uLL) == 0);
    }
  }

  return result;
}

uint64_t isMegaWiFiProfileInstalled()
{
  v10 = *MEMORY[0x277D85DE8];
  result = objc_opt_class();
  if (result)
  {
    v1 = [objc_msgSend(MEMORY[0x277D26298] "sharedConnection")];
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    result = [v1 countByEnumeratingWithState:&v6 objects:v5 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v7;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v7 != v3)
          {
            objc_enumerationMutation(v1);
          }

          if ([*(*(&v6 + 1) + 8 * i) containsString:@"wifi.megawifi"])
          {
            return 1;
          }
        }

        v2 = [v1 countByEnumeratingWithState:&v6 objects:v5 count:16];
        result = 0;
        if (v2)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

uint64_t isBTLoggingProfileInstalled()
{
  v10 = *MEMORY[0x277D85DE8];
  result = objc_opt_class();
  if (result)
  {
    v1 = [objc_msgSend(MEMORY[0x277D26298] "sharedConnection")];
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    result = [v1 countByEnumeratingWithState:&v6 objects:v5 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v7;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v7 != v3)
          {
            objc_enumerationMutation(v1);
          }

          if ([*(*(&v6 + 1) + 8 * i) containsString:@"bluetooth.logging"])
          {
            return 1;
          }
        }

        v2 = [v1 countByEnumeratingWithState:&v6 objects:v5 count:16];
        result = 0;
        if (v2)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

void __isCarrierRelease_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID() && CFStringCompare(v1, @"Carrier", 0) == kCFCompareEqualTo)
    {
      isCarrierRelease::gIsCarrierRelease = 1;
    }

    CFRelease(v1);
  }
}

const char *getPossibleSaveLocation()
{
  if ((CCDaemon::fIsCCDaemon & 1) != 0 || (result = CCDaemon::fSaveDir) == 0)
  {
    if ((isSeedAndiOS() & (CCProfileMonitor::fProfileLoaded == 0)) != 0)
    {
      return "/Library/Logs/CrashReporter/CoreCapture";
    }

    else
    {
      return "/Library/Logs/CoreCapture";
    }
  }

  return result;
}

void lowPriorityActivities()
{
  v29 = *MEMORY[0x277D85DE8];
  v0 = time(0);
  if (isSeedAndiOS())
  {
    v1 = 1;
  }

  else
  {
    v1 = 7;
  }

  v2 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v3 = CFStringCreateWithCString(0, "prune_dir_days", 0);
  v4 = CFPreferencesCopyAppValue(v3, v2);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(v5);
      v8 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
      v9 = CFStringGetLength(v5);
      CFStringGetCString(v5, v8, v9 + 1, 0);
      v10 = strtol(v8, 0, 10);
      if (v8)
      {
        free(v8);
      }

      if (*__error() != 22)
      {
        goto LABEL_16;
      }

      v11 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v12 = v11;
LABEL_40:
          _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "pruneDirectoryNDaysRead strtol EINVAL\n", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v12 = MEMORY[0x277D86220];
        goto LABEL_40;
      }

      if (glog_fd)
      {
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v27 = v13;
        v28 = v13;
        v25 = v13;
        v26 = v13;
        v23 = v13;
        v24 = v13;
        *buf = v13;
        v22 = v13;
        memset(&v20, 0, sizeof(v20));
        v19 = 0xAAAAAAAAAAAAAAAALL;
        time(&v19);
        localtime_r(&v19, &v20);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v20);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "pruneDirectoryNDaysRead strtol EINVAL\n");
      }

      v10 = 7;
LABEL_16:
      v1 = v10 & ~(v10 >> 63);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 134217984;
    *&buf[4] = v1;
    v15 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 134217984;
    *&buf[4] = v1;
    v15 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v15, OS_LOG_TYPE_DEFAULT, "pruneDirectoryNDaysRead cap %ld\n", buf, 0xCu);
LABEL_29:
  if (glog_fd)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27 = v16;
    v28 = v16;
    v25 = v16;
    v26 = v16;
    v23 = v16;
    v24 = v16;
    *buf = v16;
    v22 = v16;
    memset(&v20, 0, sizeof(v20));
    v19 = 0xAAAAAAAAAAAAAAAALL;
    time(&v19);
    localtime_r(&v19, &v20);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v20);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "pruneDirectoryNDaysRead cap %ld\n", v1);
  }

  if (v1)
  {
    SaveLocation = getSaveLocation(0);
    pruneDirectoryNDaysDo(SaveLocation, 1, v0, v1);
    if ((CCDaemon::fIsCCDaemon & 1) != 0 || (v18 = CCDaemon::fSaveDir) == 0)
    {
      if ((isSeedAndiOS() & (CCProfileMonitor::fProfileLoaded == 0)) != 0)
      {
        v18 = "/Library/Logs/CrashReporter/CoreCapture";
      }

      else
      {
        v18 = "/Library/Logs/CoreCapture";
      }
    }

    pruneDirectoryNDaysDo(v18, 1, v0, v1);
  }
}

void writeMetadataFiles(const __CFString *a1, const char *a2, time_t a3, uint64_t a4)
{
  v116 = *MEMORY[0x277D85DE8];
  v8 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  if (!v8)
  {
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      LOWORD(v105.st_dev) = 0;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      LOWORD(v105.st_dev) = 0;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCFile::writeMetadataFiles failed malloc\n", &v105, 2u);
LABEL_60:
    if (glog_fd)
    {
      v47.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v47.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v105.st_size = v47;
      *&v105.st_blksize = v47;
      v105.st_ctimespec = v47;
      v105.st_birthtimespec = v47;
      v105.st_atimespec = v47;
      v105.st_mtimespec = v47;
      *&v105.st_dev = v47;
      *&v105.st_uid = v47;
      memset(v100, 0, 56);
      *&valuePtr.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&valuePtr.tm_sec);
      localtime_r(&valuePtr.tm_sec, v100);
      strftime(&v105, 0x80uLL, "%b %d %H:%M:%S", v100);
      dprintf(glog_fd, "%s ", &v105);
      dprintf(glog_fd, "CCFile::writeMetadataFiles failed malloc\n");
    }

    return;
  }

  v9 = v8;
  memset(&v97, 0, sizeof(v97));
  v96 = a3;
  localtime_r(&v96, &v97);
  if (!CFStringGetLength(a1))
  {
    SaveLocation = getSaveLocation(0);
    goto LABEL_9;
  }

  Length = CFStringGetLength(a1);
  v11 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v12 = CFStringGetLength(a1);
  CFStringGetCString(a1, v11, v12 + 1, 0);
  SaveLocation = getSaveLocation(v11);
  if (!v11)
  {
LABEL_9:
    snprintf(v9, 0x200uLL, "%s/[%04d-%02d-%02d_%02d,%02d,%02d.%06llu]=%s/%s", SaveLocation, v97.tm_year + 1900, v97.tm_mon + 1, v97.tm_mday, v97.tm_hour, v97.tm_min, v97.tm_sec, a4, a2, "Metadata");
    goto LABEL_10;
  }

  snprintf(v9, 0x200uLL, "%s/%s/[%04d-%02d-%02d_%02d,%02d,%02d.%06llu]=%s/%s", SaveLocation, v11, v97.tm_year + 1900, v97.tm_mon + 1, v97.tm_mday, v97.tm_hour, v97.tm_min, v97.tm_sec, a4, a2, "Metadata");
  free(v11);
LABEL_10:
  v16 = strdup(v9);
  v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v105.st_blksize = v17;
  *v105.st_qspare = v17;
  v105.st_birthtimespec = v17;
  *&v105.st_size = v17;
  v105.st_mtimespec = v17;
  v105.st_ctimespec = v17;
  *&v105.st_uid = v17;
  v105.st_atimespec = v17;
  *&v105.st_dev = v17;
  for (i = *v16 == 47; v16[i] != 47; ++i)
  {
    if (!v16[i])
    {
      free(v16);
      if (mkdir(v9, 0x1EDu))
      {
        goto LABEL_138;
      }

      *&valuePtr.tm_sec = a3;
      *&valuePtr.tm_hour = a4;
      v19 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v21 = CFNumberCreate(v19, kCFNumberSInt64Type, &valuePtr);
      CFDictionarySetValue(Mutable, @"Time secs", v21);
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = CFNumberCreate(v19, kCFNumberSInt64Type, &valuePtr.tm_hour);
      CFDictionarySetValue(Mutable, @"Time usecs", v22);
      if (v22)
      {
        CFRelease(v22);
      }

      memset(&v105, 0, 80);
      memset(v100, 0, 56);
      v23 = localtime_r(&valuePtr.tm_sec, v100);
      v24 = asctime(v23);
      if (v24)
      {
        v25 = v24;
        v26 = strchr(v24, 10);
        if (v26)
        {
          *v26 = 0;
        }

        strlcpy(&v105, v25, 0x50uLL);
      }

      v27 = CFStringCreateWithCString(0, &v105, 0);
      CFDictionarySetValue(Mutable, @"Time localtime", v27);
      if (v27)
      {
        CFRelease(v27);
      }

      v28 = CFStringCreateWithCString(0, "/System/Library/Extensions/corecapture.kext/Contents/version.plist", 0);
      v29 = CFURLCreateWithFileSystemPath(v19, v28, kCFURLPOSIXPathStyle, 0);
      v30 = CFReadStreamCreateWithFile(v19, v29);
      if (v30)
      {
        v31 = v30;
        v32 = CFReadStreamOpen(v30) ? CFPropertyListCreateWithStream(v19, v31, 0, 2uLL, 0, 0) : 0;
        CFReadStreamClose(v31);
        CFRelease(v31);
        if (v32)
        {
          Value = CFDictionaryGetValue(v32, @"SourceVersion");
          if (Value)
          {
            v34 = Value;
            v35 = CFGetTypeID(Value);
            if (v35 == CFStringGetTypeID())
            {
              CFDictionarySetValue(Mutable, @"SourceVersion", v34);
            }
          }

          CFRelease(v32);
        }
      }

      if (v29)
      {
        CFRelease(v29);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      v36 = CFUUIDCreate(0);
      v37 = CFUUIDCreateString(0, v36);
      CFDictionarySetValue(Mutable, @"UUID", v37);
      if (v37)
      {
        CFRelease(v37);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      v38 = CFStringCreateWithCString(0, v9, 0);
      MutableCopy = CFStringCreateMutableCopy(v19, 512, v38);
      CFStringAppendCString(MutableCopy, "/", 0);
      CFStringAppendCString(MutableCopy, "capture.plist", 0);
      writeMetadataFile(Mutable, MutableCopy);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v38)
      {
        CFRelease(v38);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      v115 = 0xAAAAAAAAAAAAAAAALL;
      *&v40 = 0xAAAAAAAAAAAAAAAALL;
      *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v114[0] = v40;
      v114[1] = v40;
      *&valuePtr.tm_sec = 0x200000006;
      *&v113[0] = 40;
      if (!sysctl(&valuePtr.tm_sec, 2u, v114, v113, 0, 0))
      {
LABEL_69:
        *&v53 = 0xAAAAAAAAAAAAAAAALL;
        *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v113[0] = v53;
        v113[1] = v53;
        getOsVersion(v113);
        v54 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v54)
        {
          v55 = v54;
          v56 = CFStringCreateWithCString(v19, v114, 0);
          if (v56)
          {
            v57 = v56;
            CFDictionarySetValue(v55, @"hw.model", v56);
            CFRelease(v57);
            v58 = CFStringCreateWithCString(v19, v113, 0);
            if (v58)
            {
              v59 = v58;
              CFDictionarySetValue(v55, @"osversion", v58);
              CFRelease(v59);
              v60 = CCProfileMonitor::fProfileLoaded;
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v106 = 0u;
              memset(&v105, 0, sizeof(v105));
              if (CCProfileMonitor::fProfileLoaded)
              {
                if (CCProfileMonitor::fProfileLoaded)
                {
                  v61 = strlen(&v105);
                  strncat(&v105, "BT ", 255 - v61);
                }

                if ((v60 & 2) != 0)
                {
                  v62 = strlen(&v105);
                  strncat(&v105, "WiFi ", 255 - v62);
                }

                v63 = strlen(&v105);
                if (v63)
                {
                  *(&v105 + v63 - 1) = 0;
                }
              }

              else
              {
                v71 = strlen(&v105);
                strncat(&v105, "None", 255 - v71);
              }

              v72 = CFStringCreateWithCString(v19, &v105, 0);
              if (v72)
              {
                v73 = v72;
                CFDictionarySetValue(v55, @"ProfileLoaded", v72);
                CFRelease(v73);
              }

              if (getReleaseType(void)::onceToken != -1)
              {
                dispatch_once(&getReleaseType(void)::onceToken, &__block_literal_global_133);
              }

              if (gReleaseType)
              {
                v74 = gReleaseType;
              }

              else
              {
                v74 = @"User";
              }

              CFDictionarySetValue(v55, @"BuildVariant", v74);
              v75 = atomic_load(gBootArgsParsed);
              if ((v75 & 1) == 0)
              {
                *v100 = 256;
                if (!sysctlbyname("kern.bootargs", gBootArgs, v100, 0, 0))
                {
                  byte_27EE11C50 = 0;
                }
              }

              v76 = CFStringCreateWithCString(v19, gBootArgs, 0);
              if (v76)
              {
                v77 = v76;
                CFDictionarySetValue(v55, @"BootArgs", v76);
                CFRelease(v77);
              }

              if (getDeviceFusing(void)::onceToken != -1)
              {
                dispatch_once(&getDeviceFusing(void)::onceToken, &__block_literal_global_138);
              }

              if (gDeviceFusing)
              {
                v78 = gDeviceFusing;
              }

              else
              {
                v78 = @"Unknown";
              }

              CFDictionarySetValue(v55, @"DeviceFusing", v78);
              v79 = CFStringCreateWithCString(v19, v9, 0);
              if (v79)
              {
                v80 = v79;
                v81 = CFStringCreateMutableCopy(v19, 512, v79);
                if (v81)
                {
                  v82 = v81;
                  CFStringAppendCString(v81, "/", 0);
                  CFStringAppendCString(v82, "system.plist", 0);
                  writeMetadataFile(v55, v82);
                  CFRelease(v55);
                  CFRelease(v80);
                  v80 = v82;
LABEL_136:
                  v91 = v80;
                  goto LABEL_137;
                }

                v88 = coreCaptureOsLog;
                if (coreCaptureOsLog)
                {
                  if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                  {
                    *v100 = 136315394;
                    *&v100[4] = "writeMetadataSystemPlist";
                    *&v100[12] = 1024;
                    *&v100[14] = 1043;
                    v89 = v88;
LABEL_153:
                    _os_log_error_impl(&dword_2452A3000, v89, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", v100, 0x12u);
                  }
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *v100 = 136315394;
                  *&v100[4] = "writeMetadataSystemPlist";
                  *&v100[12] = 1024;
                  *&v100[14] = 1043;
                  v89 = MEMORY[0x277D86220];
                  goto LABEL_153;
                }

                if (glog_fd)
                {
                  *&v93 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v103 = v93;
                  v104 = v93;
                  v101 = v93;
                  v102 = v93;
                  *&v100[32] = v93;
                  *&v100[48] = v93;
                  *v100 = v93;
                  *&v100[16] = v93;
                  memset(&valuePtr, 0, sizeof(valuePtr));
                  v98 = 0xAAAAAAAAAAAAAAAALL;
                  time(&v98);
                  localtime_r(&v98, &valuePtr);
                  strftime(v100, 0x80uLL, "%b %d %H:%M:%S", &valuePtr);
                  dprintf(glog_fd, "%s ", v100);
                  dprintf(glog_fd, "%s:%06u failed to allocate memory\n", "writeMetadataSystemPlist", 1043);
                }

                CFRelease(v55);
                goto LABEL_136;
              }

              v83 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *v100 = 136315394;
                  *&v100[4] = "writeMetadataSystemPlist";
                  *&v100[12] = 1024;
                  *&v100[14] = 1036;
                  v84 = v83;
LABEL_151:
                  _os_log_error_impl(&dword_2452A3000, v84, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", v100, 0x12u);
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *v100 = 136315394;
                *&v100[4] = "writeMetadataSystemPlist";
                *&v100[12] = 1024;
                *&v100[14] = 1036;
                v84 = MEMORY[0x277D86220];
                goto LABEL_151;
              }

              if (glog_fd)
              {
                *&v92 = 0xAAAAAAAAAAAAAAAALL;
                *(&v92 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v103 = v92;
                v104 = v92;
                v101 = v92;
                v102 = v92;
                *&v100[32] = v92;
                *&v100[48] = v92;
                *v100 = v92;
                *&v100[16] = v92;
                memset(&valuePtr, 0, sizeof(valuePtr));
                v98 = 0xAAAAAAAAAAAAAAAALL;
                time(&v98);
                localtime_r(&v98, &valuePtr);
                strftime(v100, 0x80uLL, "%b %d %H:%M:%S", &valuePtr);
                dprintf(glog_fd, "%s ", v100);
                dprintf(glog_fd, "%s:%06u failed to allocate memory\n", "writeMetadataSystemPlist", 1036);
              }

              v80 = v55;
              goto LABEL_136;
            }

            v68 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_122;
              }

              v105.st_dev = 136315394;
              *&v105.st_mode = "writeMetadataSystemPlist";
              WORD2(v105.st_ino) = 1024;
              *(&v105.st_ino + 6) = 979;
              v69 = v68;
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_122;
              }

              v105.st_dev = 136315394;
              *&v105.st_mode = "writeMetadataSystemPlist";
              WORD2(v105.st_ino) = 1024;
              *(&v105.st_ino + 6) = 979;
              v69 = MEMORY[0x277D86220];
            }

            _os_log_error_impl(&dword_2452A3000, v69, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", &v105, 0x12u);
LABEL_122:
            if (glog_fd)
            {
              v90.tv_sec = 0xAAAAAAAAAAAAAAAALL;
              v90.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
              *&v105.st_size = v90;
              *&v105.st_blksize = v90;
              v105.st_ctimespec = v90;
              v105.st_birthtimespec = v90;
              v105.st_atimespec = v90;
              v105.st_mtimespec = v90;
              *&v105.st_dev = v90;
              *&v105.st_uid = v90;
              memset(v100, 0, 56);
              *&valuePtr.tm_sec = 0xAAAAAAAAAAAAAAAALL;
              time(&valuePtr.tm_sec);
              localtime_r(&valuePtr.tm_sec, v100);
              strftime(&v105, 0x80uLL, "%b %d %H:%M:%S", v100);
              dprintf(glog_fd, "%s ", &v105);
              v86 = glog_fd;
              v87 = 979;
              goto LABEL_124;
            }

            goto LABEL_125;
          }

          v66 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_116;
            }

            v105.st_dev = 136315394;
            *&v105.st_mode = "writeMetadataSystemPlist";
            WORD2(v105.st_ino) = 1024;
            *(&v105.st_ino + 6) = 969;
            v67 = v66;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_116;
            }

            v105.st_dev = 136315394;
            *&v105.st_mode = "writeMetadataSystemPlist";
            WORD2(v105.st_ino) = 1024;
            *(&v105.st_ino + 6) = 969;
            v67 = MEMORY[0x277D86220];
          }

          _os_log_error_impl(&dword_2452A3000, v67, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", &v105, 0x12u);
LABEL_116:
          if (glog_fd)
          {
            v85.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            v85.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            *&v105.st_size = v85;
            *&v105.st_blksize = v85;
            v105.st_ctimespec = v85;
            v105.st_birthtimespec = v85;
            v105.st_atimespec = v85;
            v105.st_mtimespec = v85;
            *&v105.st_dev = v85;
            *&v105.st_uid = v85;
            memset(v100, 0, 56);
            *&valuePtr.tm_sec = 0xAAAAAAAAAAAAAAAALL;
            time(&valuePtr.tm_sec);
            localtime_r(&valuePtr.tm_sec, v100);
            strftime(&v105, 0x80uLL, "%b %d %H:%M:%S", v100);
            dprintf(glog_fd, "%s ", &v105);
            v86 = glog_fd;
            v87 = 969;
LABEL_124:
            dprintf(v86, "%s:%06u failed to allocate memory\n", "writeMetadataSystemPlist", v87);
          }

LABEL_125:
          v91 = v55;
LABEL_137:
          CFRelease(v91);
          goto LABEL_138;
        }

        v64 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_89;
          }

          v105.st_dev = 136315394;
          *&v105.st_mode = "writeMetadataSystemPlist";
          WORD2(v105.st_ino) = 1024;
          *(&v105.st_ino + 6) = 963;
          v65 = v64;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_89;
          }

          v105.st_dev = 136315394;
          *&v105.st_mode = "writeMetadataSystemPlist";
          WORD2(v105.st_ino) = 1024;
          *(&v105.st_ino + 6) = 963;
          v65 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v65, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", &v105, 0x12u);
LABEL_89:
        if (glog_fd)
        {
          v70.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v70.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&v105.st_size = v70;
          *&v105.st_blksize = v70;
          v105.st_ctimespec = v70;
          v105.st_birthtimespec = v70;
          v105.st_atimespec = v70;
          v105.st_mtimespec = v70;
          *&v105.st_dev = v70;
          *&v105.st_uid = v70;
          memset(v100, 0, 56);
          *&valuePtr.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&valuePtr.tm_sec);
          localtime_r(&valuePtr.tm_sec, v100);
          strftime(&v105, 0x80uLL, "%b %d %H:%M:%S", v100);
          dprintf(glog_fd, "%s ", &v105);
          dprintf(glog_fd, "%s:%06u failed to allocate memory\n", "writeMetadataSystemPlist", 963);
        }

        goto LABEL_138;
      }

      v41 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        v42 = __error();
        v43 = strerror(*v42);
        v105.st_dev = 136315138;
        *&v105.st_mode = v43;
        v44 = v41;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        v94 = __error();
        v95 = strerror(*v94);
        v105.st_dev = 136315138;
        *&v105.st_mode = v95;
        v44 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v44, OS_LOG_TYPE_ERROR, "getHwModel %s\n", &v105, 0xCu);
LABEL_67:
      if (glog_fd)
      {
        v49.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v49.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v105.st_size = v49;
        *&v105.st_blksize = v49;
        v105.st_ctimespec = v49;
        v105.st_birthtimespec = v49;
        v105.st_atimespec = v49;
        v105.st_mtimespec = v49;
        *&v105.st_dev = v49;
        *&v105.st_uid = v49;
        memset(v100, 0, 56);
        v98 = 0xAAAAAAAAAAAAAAAALL;
        time(&v98);
        localtime_r(&v98, v100);
        strftime(&v105, 0x80uLL, "%b %d %H:%M:%S", v100);
        dprintf(glog_fd, "%s ", &v105);
        v50 = glog_fd;
        v51 = __error();
        v52 = strerror(*v51);
        dprintf(v50, "getHwModel %s\n", v52);
      }

      goto LABEL_69;
    }

LABEL_18:
    ;
  }

  v16[i] = 0;
  if (stat(v16, &v105))
  {
    mkdir(v16, 0x1EDu);
LABEL_17:
    v16[i] = 47;
    goto LABEL_18;
  }

  if ((v105.st_mode & 0xF000) == 0x4000)
  {
    goto LABEL_17;
  }

  v45 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *v100 = 136315394;
      *&v100[4] = v9;
      *&v100[12] = 2080;
      *&v100[14] = v16;
      v46 = v45;
      goto LABEL_141;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v100 = 136315394;
    *&v100[4] = v9;
    *&v100[12] = 2080;
    *&v100[14] = v16;
    v46 = MEMORY[0x277D86220];
LABEL_141:
    _os_log_error_impl(&dword_2452A3000, v46, OS_LOG_TYPE_ERROR, "CCFile::mkpath fails to create path '%s' as '%s' is not a directory\n", v100, 0x16u);
  }

  if (glog_fd)
  {
    *&v48 = 0xAAAAAAAAAAAAAAAALL;
    *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v103 = v48;
    v104 = v48;
    v101 = v48;
    v102 = v48;
    *&v100[32] = v48;
    *&v100[48] = v48;
    *v100 = v48;
    *&v100[16] = v48;
    memset(&valuePtr, 0, sizeof(valuePtr));
    *&v114[0] = 0xAAAAAAAAAAAAAAAALL;
    time(v114);
    localtime_r(v114, &valuePtr);
    strftime(v100, 0x80uLL, "%b %d %H:%M:%S", &valuePtr);
    dprintf(glog_fd, "%s ", v100);
    dprintf(glog_fd, "CCFile::mkpath fails to create path '%s' as '%s' is not a directory\n", v9, v16);
  }

  free(v16);
LABEL_138:
  free(v9);
}

void writeMetadataFile(const __CFDictionary *a1, CFStringRef theString)
{
  if (ifSeedCreateClassCProtectedFileAtCFStringPath(theString))
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], theString, kCFURLPOSIXPathStyle, 0);
    v6 = CFWriteStreamCreateWithFile(v4, v5);
    v7 = v6;
    if (v6 && CFWriteStreamOpen(v6))
    {
      CFPropertyListWrite(a1, v7, kCFPropertyListXMLFormat_v1_0, 0, 0);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v7)
    {
      CFWriteStreamClose(v7);

      CFRelease(v7);
    }
  }
}

void ___ZL15getDeviceFusingv_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      v3 = CFEqual(v1, *MEMORY[0x277CBED28]);
      v4 = @"Prod";
      if (!v3)
      {
        v4 = @"Dev";
      }

      gDeviceFusing = v4;
    }

    CFRelease(v1);
  }
}

void ___ZL14getReleaseTypev_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      gReleaseType = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

const __CFString *ifSeedCreateClassCProtectedFileAtCFStringPath(CFStringRef theString)
{
  ClassCProtectedFile = theString;
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    v4 = CFStringGetLength(ClassCProtectedFile);
    if (!CFStringGetCString(ClassCProtectedFile, v3, v4 + 1, 0))
    {
      ClassCProtectedFile = 0;
      if (!v3)
      {
        return ClassCProtectedFile;
      }

      goto LABEL_4;
    }

    ClassCProtectedFile = ifSeedCreateClassCProtectedFile(v3);
    if (v3)
    {
LABEL_4:
      free(v3);
    }
  }

  return ClassCProtectedFile;
}

uint64_t validCFObjectReference(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    v7 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 136315138;
      *&buf[4] = a1;
      v8 = v7;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 136315138;
      *&buf[4] = a1;
      v8 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "%s NULL value.\n", buf, 0xCu);
LABEL_11:
    if (glog_fd)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21 = v11;
      v22 = v11;
      v19 = v11;
      v20 = v11;
      v17 = v11;
      v18 = v11;
      *buf = v11;
      *&buf[16] = v11;
      memset(&v15, 0, sizeof(v15));
      v14 = 0xAAAAAAAAAAAAAAAALL;
      time(&v14);
      localtime_r(&v14, &v15);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s NULL value.\n");
    }

    return 0;
  }

  if (CFGetTypeID(cf) == a3)
  {
    return 1;
  }

  v9 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *&buf[24] = CFGetTypeID(cf);
    v10 = v9;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *&buf[24] = CFGetTypeID(cf);
    v10 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "%s Unexpected CF object type ID. Expected (%lu), have (%lu) \n", buf, 0x20u);
LABEL_14:
  if (glog_fd)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v12;
    v22 = v12;
    v19 = v12;
    v20 = v12;
    v17 = v12;
    v18 = v12;
    *buf = v12;
    *&buf[16] = v12;
    memset(&v15, 0, sizeof(v15));
    v14 = 0xAAAAAAAAAAAAAAAALL;
    time(&v14);
    localtime_r(&v14, &v15);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
    dprintf(glog_fd, "%s ", buf);
    v13 = glog_fd;
    CFGetTypeID(cf);
    dprintf(v13, "%s Unexpected CF object type ID. Expected (%lu), have (%lu) \n");
  }

  return 0;
}

void addSystemInformationToDict(__CFDictionary *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    v9 = -1431655766;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v13 = v6;
    v14 = v6;
    *v11 = v6;
    v12 = v6;
    v10[1] = 0xAAAAAAAAAAAAAAAALL;
    add_ull_to_dict("mach-absolute-time", a2, Mutable);
    v10[0] = 0x1700000006;
    v8 = 4;
    if (!sysctl(v10, 2u, &v9, &v8, 0, 0))
    {
      add_ull_to_dict("tick-frequency", v9, v5);
    }

    v10[0] = 0x4100000001;
    v8 = 32;
    if (!sysctl(v10, 2u, v13, &v8, 0, 0))
    {
      HIBYTE(v14) = 0;
      add_cstr_to_dict("os-version", v13, v5);
    }

    v10[0] = 0x200000006;
    v8 = 32;
    if (!sysctl(v10, 2u, v11, &v8, 0, 0))
    {
      HIBYTE(v12) = 0;
      add_cstr_to_dict("hw-model", v11, v5);
    }

    v7 = atomic_load(gBootArgsParsed);
    if ((v7 & 1) == 0)
    {
      v8 = 256;
      if (!sysctlbyname("kern.bootargs", gBootArgs, &v8, 0, 0))
      {
        byte_27EE11C50 = 0;
      }
    }

    add_cstr_to_dict("boot-args", gBootArgs, v5);
    add_cftype_to_dict("DeviceInfo", v5, a1);
    CFRelease(v5);
  }
}

void add_ull_to_dict(const char *a1, uint64_t a2, __CFDictionary *a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, v7);
  if (v5)
  {
    v6 = v5;
    add_cftype_to_dict(a1, v5, a3);
    CFRelease(v6);
  }
}

void add_cstr_to_dict(const char *a1, char *a2, __CFDictionary *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0);
  if (v5)
  {
    v6 = v5;
    add_cftype_to_dict(a1, v5, a3);

    CFRelease(v6);
  }
}

void add_cftype_to_dict(const char *cStr, const void *a2, __CFDictionary *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a3, v5, a2);

    CFRelease(v6);
  }
}

uint64_t isCarrierRelease()
{
  if (isCarrierRelease::onceToken != -1)
  {
    dispatch_once(&isCarrierRelease::onceToken, &__block_literal_global_1265);
  }

  return isCarrierRelease::gIsCarrierRelease;
}

uint64_t copyCFStringRefToXPCDictionary(const __CFString *a1, void *a2, const char *a3)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if ((MaximumSizeForEncoding & 0x8000000000000000) == 0)
  {
    v8 = MaximumSizeForEncoding;
    v9 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      if (CFStringGetCString(a1, v9, v8 + 1, 0x8000100u))
      {
        xpc_dictionary_set_string(a2, a3, v10);
      }

      free(v10);
    }
  }

  return 0;
}

uint64_t CCIOReporterFormatter::initWithRegistryEntry(CCIOReporterFormatter *this, io_object_t object)
{
  *(this + 8) = object;
  IOObjectRetain(object);
  *(this + 3) = object;
  return 1;
}

CFIndex CCIOReporterFormatter::writeLog(CCIOReporterFormatter *a1, uint64_t a2, const UInt8 *a3, size_t a4, const void *a5, size_t a6)
{
  v95 = *MEMORY[0x277D85DE8];
  if (!a2 || (v6 = a3) == 0)
  {
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buffer = 0;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buffer = 0;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog Unexpected log data \n", buffer, 2u);
LABEL_11:
    if (glog_fd)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v85 = v16;
      v86 = v16;
      v83 = v16;
      v84 = v16;
      v81 = v16;
      v82 = v16;
      *buffer = v16;
      *&buffer[16] = v16;
      memset(v75, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v75);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CCIOReporterFormatter::writeLog Unexpected log data \n");
    }

    return 0;
  }

  v9 = a4;
  if (a4)
  {
    goto LABEL_16;
  }

  v12 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buffer = 134217984;
    *&buffer[4] = 0;
    v13 = v12;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buffer = 134217984;
    *&buffer[4] = 0;
    v13 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Inconsistent data (1) length=%lu\n", buffer, 0xCu);
LABEL_14:
  if (glog_fd)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v85 = v17;
    v86 = v17;
    v83 = v17;
    v84 = v17;
    v81 = v17;
    v82 = v17;
    *buffer = v17;
    *&buffer[16] = v17;
    memset(v75, 0, 56);
    *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v72.tm_sec);
    localtime_r(&v72.tm_sec, v75);
    strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
    dprintf(glog_fd, "%s ", buffer);
    dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Inconsistent data (1) length=%lu\n", 0);
  }

LABEL_16:
  if (!a5 || a6)
  {
    goto LABEL_24;
  }

  v18 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buffer = 134217984;
    *&buffer[4] = 0;
    v19 = v18;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buffer = 134217984;
    *&buffer[4] = 0;
    v19 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Inconsistent data (2) lengthContinue=%lu\n", buffer, 0xCu);
LABEL_22:
  if (glog_fd)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v85 = v20;
    v86 = v20;
    v83 = v20;
    v84 = v20;
    v81 = v20;
    v82 = v20;
    *buffer = v20;
    *&buffer[16] = v20;
    memset(v75, 0, 56);
    *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v72.tm_sec);
    localtime_r(&v72.tm_sec, v75);
    strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
    dprintf(glog_fd, "%s ", buffer);
    dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Inconsistent data (2) lengthContinue=%lu\n", 0);
  }

LABEL_24:
  v21 = *(a2 + 24);
  v22 = a6 + v9;
  if (a6 + v9 == v21)
  {
    goto LABEL_31;
  }

  v23 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buffer = 67109632;
    *&buffer[4] = v21;
    *&buffer[8] = 2048;
    *&buffer[10] = v9;
    *&buffer[18] = 2048;
    *&buffer[20] = a6;
    v24 = v23;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buffer = 67109632;
    *&buffer[4] = v21;
    *&buffer[8] = 2048;
    *&buffer[10] = v9;
    *&buffer[18] = 2048;
    *&buffer[20] = a6;
    v24 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Inconsistent data (3) payloadLength=%d, length=%lu, lengthContinue=%lu\n", buffer, 0x1Cu);
LABEL_29:
  if (glog_fd)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v85 = v25;
    v86 = v25;
    v83 = v25;
    v84 = v25;
    v81 = v25;
    v82 = v25;
    *buffer = v25;
    *&buffer[16] = v25;
    memset(v75, 0, 56);
    *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v72.tm_sec);
    localtime_r(&v72.tm_sec, v75);
    strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
    dprintf(glog_fd, "%s ", buffer);
    dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Inconsistent data (3) payloadLength=%d, length=%lu, lengthContinue=%lu\n", *(a2 + 24), v9, a6);
  }

LABEL_31:
  if (v22 <= 3)
  {
    v26 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      v27 = 0x27EE11000;
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *buffer = 134217984;
      *&buffer[4] = v22;
      v28 = v26;
    }

    else
    {
      v27 = 0x27EE11000uLL;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *buffer = 134217984;
      *&buffer[4] = v22;
      v28 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v28, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Insufficient length=%lu to hold IOReporterHeader_t\n", buffer, 0xCu);
LABEL_38:
    if (*(v27 + 2856))
    {
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v85 = v30;
      v86 = v30;
      v83 = v30;
      v84 = v30;
      v81 = v30;
      v82 = v30;
      *buffer = v30;
      *&buffer[16] = v30;
      memset(v75, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v75);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
      dprintf(*(v27 + 2856), "%s ", buffer);
      dprintf(*(v27 + 2856), "CCIOReporterFormatter::writeLog  Insufficient length=%lu to hold IOReporterHeader_t\n");
    }

    return 0;
  }

  if (a5)
  {
    v29 = malloc_type_malloc(a6 + v9, 0x100004077774924uLL);
    memcpy(v29, v6, v9);
    memcpy(&v29[v9], a5, a6);
    v9 += a6;
    v6 = v29;
  }

  else
  {
    v29 = 0;
  }

  v33 = *MEMORY[0x277CBECE8];
  v34 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, v6);
  valuePtr = *(a2 + 35);
  v35 = CFNumberCreate(v33, kCFNumberSInt32Type, &valuePtr);
  v36 = CFDataCreateWithBytesNoCopy(0, v6 + 4, v9 - 4, *MEMORY[0x277CBED00]);
  v37 = v36;
  err = 0;
  if (!v36 || !CFDataGetLength(v36))
  {
    v50 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *buffer = 0;
      v51 = v50;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *buffer = 0;
      v51 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v51, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Can't copy rawData\n", buffer, 2u);
LABEL_63:
    if (glog_fd)
    {
      *&v54 = 0xAAAAAAAAAAAAAAAALL;
      *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v85 = v54;
      v86 = v54;
      v83 = v54;
      v84 = v54;
      v81 = v54;
      v82 = v54;
      *buffer = v54;
      *&buffer[16] = v54;
      memset(v75, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v75);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Can't copy rawData\n");
    }

    goto LABEL_68;
  }

  ChannelsForStreamAndSubscription = CCIOReporterFormatter::getChannelsForStreamAndSubscription(a1, v35, v34);
  if (!ChannelsForStreamAndSubscription || !CFDictionaryGetCount(ChannelsForStreamAndSubscription))
  {
    v52 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buffer = 0;
      v53 = v52;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buffer = 0;
      v53 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v53, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Didn't find channels\n", buffer, 2u);
LABEL_66:
    if (glog_fd)
    {
      *&v55 = 0xAAAAAAAAAAAAAAAALL;
      *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v85 = v55;
      v86 = v55;
      v83 = v55;
      v84 = v55;
      v81 = v55;
      v82 = v55;
      *buffer = v55;
      *&buffer[16] = v55;
      memset(v75, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v75);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Didn't find channels\n");
    }

LABEL_68:
    v43 = 0;
    v49 = 0;
    v45 = 0;
    v40 = 0;
LABEL_69:
    v31 = 0;
    goto LABEL_70;
  }

  SamplesRaw = IOReportCreateSamplesRaw();
  v40 = SamplesRaw;
  if (!SamplesRaw)
  {
    v42 = err;
    goto LABEL_87;
  }

  Count = CFDictionaryGetCount(SamplesRaw);
  v42 = err;
  if (!Count || err)
  {
LABEL_87:
    v91 = xmmword_2452E9D60;
    v92 = unk_2452E9D70;
    v93 = xmmword_2452E9D80;
    v94 = unk_2452E9D90;
    v87 = xmmword_2452E9D20;
    v88 = unk_2452E9D30;
    v89 = xmmword_2452E9D40;
    v90 = unk_2452E9D50;
    v83 = xmmword_2452E9CE0;
    v84 = unk_2452E9CF0;
    v85 = xmmword_2452E9D00;
    v86 = unk_2452E9D10;
    *buffer = *"<unknown>";
    *&buffer[16] = *&algn_2452E9CAA[6];
    v81 = xmmword_2452E9CC0;
    v82 = unk_2452E9CD0;
    if (v42)
    {
      v56 = CFErrorCopyFailureReason(v42);
      if (v56)
      {
        v57 = v56;
        CFStringGetCString(v56, buffer, 256, 0x8000100u);
        CFRelease(v57);
      }

      CFRelease(err);
    }

    v58 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *v75 = 0;
        v59 = v58;
LABEL_134:
        _os_log_error_impl(&dword_2452A3000, v59, OS_LOG_TYPE_ERROR, "IOReportCreateSamplesRaw() returned 0 sized dictionary", v75, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v75 = 0;
      v59 = MEMORY[0x277D86220];
      goto LABEL_134;
    }

    if (glog_fd)
    {
      *&v60 = 0xAAAAAAAAAAAAAAAALL;
      *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v78 = v60;
      v79 = v60;
      v76 = v60;
      v77 = v60;
      *&v75[48] = v60;
      *&v75[16] = v60;
      *&v75[32] = v60;
      *v75 = v60;
      memset(&v72, 0, sizeof(v72));
      v71 = 0xAAAAAAAAAAAAAAAALL;
      time(&v71);
      localtime_r(&v71, &v72);
      strftime(v75, 0x80uLL, "%b %d %H:%M:%S", &v72);
      dprintf(glog_fd, "%s ", v75);
      dprintf(glog_fd, "IOReportCreateSamplesRaw() returned 0 sized dictionary");
    }

    v43 = 0;
    v45 = 0;
    v31 = 0;
    v49 = v40;
    v40 = 0;
    goto LABEL_70;
  }

  addSystemInformationToDict(v40, *(a2 + 28) & 0xFFFFFFFFFFFFFFLL);
  v43 = CCIOReporterFormatter::writeTimeString(a1, a2);
  if (v43)
  {
    CFDictionarySetValue(v40, @"Time", v43);
  }

  Data = CFPropertyListCreateData(0, v40, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v45 = Data;
  if (!Data)
  {
    v61 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buffer = 0;
      v62 = v61;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buffer = 0;
      v62 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v62, OS_LOG_TYPE_ERROR, "CFPropertyListCreateData() failed", buffer, 2u);
LABEL_117:
    if (glog_fd)
    {
      *&v65 = 0xAAAAAAAAAAAAAAAALL;
      *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v85 = v65;
      v86 = v65;
      v83 = v65;
      v84 = v65;
      v81 = v65;
      v82 = v65;
      *buffer = v65;
      *&buffer[16] = v65;
      memset(v75, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v75);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CFPropertyListCreateData() failed");
    }

LABEL_119:
    v66 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buffer = 0;
        v67 = v66;
LABEL_136:
        _os_log_error_impl(&dword_2452A3000, v67, OS_LOG_TYPE_ERROR, "CFDataGetBytePtr() failed", buffer, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buffer = 0;
      v67 = MEMORY[0x277D86220];
      goto LABEL_136;
    }

    if (glog_fd)
    {
      *&v68 = 0xAAAAAAAAAAAAAAAALL;
      *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v85 = v68;
      v86 = v68;
      v83 = v68;
      v84 = v68;
      v81 = v68;
      v82 = v68;
      *buffer = v68;
      *&buffer[16] = v68;
      memset(v75, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v75);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CFDataGetBytePtr() failed");
    }

    v49 = 0;
    goto LABEL_69;
  }

  if (!CFDataGetBytePtr(Data))
  {
    goto LABEL_119;
  }

  Length = CFDataGetLength(v45);
  BytePtr = CFDataGetBytePtr(v45);
  v31 = Length - 173;
  ++*(a1 + 46);
  v48 = (*(*a1 + 112))(a1, BytePtr + 164, v31);
  if (v48 != v31)
  {
    v70 = v48;
    v63 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buffer = 134218240;
        *&buffer[4] = v31;
        *&buffer[12] = 2048;
        *&buffer[14] = v70;
        v64 = v63;
LABEL_140:
        _os_log_error_impl(&dword_2452A3000, v64, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog Failed to write(1) dsize=%lu, tempLength=%lu\n", buffer, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buffer = 134218240;
      *&buffer[4] = v31;
      *&buffer[12] = 2048;
      *&buffer[14] = v70;
      v64 = MEMORY[0x277D86220];
      goto LABEL_140;
    }

    if (glog_fd)
    {
      *&v69 = 0xAAAAAAAAAAAAAAAALL;
      *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v85 = v69;
      v86 = v69;
      v83 = v69;
      v84 = v69;
      v81 = v69;
      v82 = v69;
      *buffer = v69;
      *&buffer[16] = v69;
      memset(v75, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v75);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v75);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CCIOReporterFormatter::writeLog Failed to write(1) dsize=%lu, tempLength=%lu\n", v31, v70);
    }

    v49 = 0;
    v31 = v70;
    goto LABEL_70;
  }

  v49 = 0;
LABEL_70:
  if (v29)
  {
    free(v29);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  return v31;
}

const __CFArray *CCIOReporterFormatter::getChannelsForStreamAndSubscription(CCIOReporterFormatter *this, const __CFNumber *a2, const __CFNumber *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  result = *(this + 6);
  if (result)
  {
    for (i = 0; ; ++i)
    {
      if (i >= CFArrayGetCount(result))
      {
        return 0;
      }

      result = CFArrayGetValueAtIndex(*(this + 6), i);
      if (!result)
      {
        return result;
      }

      v7 = result;
      v8 = CFGetTypeID(result);
      if (v8 != CFDictionaryGetTypeID())
      {
        return 0;
      }

      Value = CFDictionaryGetValue(v7, @"Id");
      if (!Value)
      {
        break;
      }

      v10 = Value;
      v11 = CFGetTypeID(Value);
      if (v11 != CFNumberGetTypeID())
      {
        v18 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "Id";
            v19 = v18;
            goto LABEL_26;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "Id";
          v19 = MEMORY[0x277D86220];
LABEL_26:
          _os_log_impl(&dword_2452A3000, v19, OS_LOG_TYPE_DEFAULT, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  key %s has wrong type in dictionary\n", buf, 0xCu);
        }

        if (glog_fd)
        {
          *&v21 = 0xAAAAAAAAAAAAAAAALL;
          *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v34 = v21;
          v35 = v21;
          v32 = v21;
          v33 = v21;
          v30 = v21;
          v31 = v21;
          *buf = v21;
          v29 = v21;
          memset(&v27, 0, sizeof(v27));
          v26 = 0xAAAAAAAAAAAAAAAALL;
          time(&v26);
          localtime_r(&v26, &v27);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  key %s has wrong type in dictionary\n");
        }

        goto LABEL_29;
      }

      if (CFNumberCompare(v10, a2, 0) == kCFCompareEqualTo)
      {
        v12 = CFDictionaryGetValue(v7, @"CCIOReportStream");
        if (!v12 || (v13 = v12, v14 = CFGetTypeID(v12), TypeID = CFArrayGetTypeID(), v14 != TypeID))
        {
          v22 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "CCIOReportStream";
              v23 = v22;
              goto LABEL_35;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "CCIOReportStream";
            v23 = MEMORY[0x277D86220];
LABEL_35:
            _os_log_impl(&dword_2452A3000, v23, OS_LOG_TYPE_DEFAULT, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  Couldnt find %s\n", buf, 0xCu);
          }

          if (glog_fd)
          {
            *&v24 = 0xAAAAAAAAAAAAAAAALL;
            *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v34 = v24;
            v35 = v24;
            v32 = v24;
            v33 = v24;
            v30 = v24;
            v31 = v24;
            *buf = v24;
            v29 = v24;
            memset(&v27, 0, sizeof(v27));
            v26 = 0xAAAAAAAAAAAAAAAALL;
            time(&v26);
            localtime_r(&v26, &v27);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  Couldnt find %s\n", "CCIOReportStream");
          }

          return 0;
        }

        result = CCIOReporterFormatter::getChannelsForSubscription(TypeID, v13, a3);
        if (result)
        {
          return result;
        }
      }

LABEL_29:
      result = *(this + 6);
    }

    v16 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      *&buf[4] = "Id";
      v17 = v16;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      *&buf[4] = "Id";
      v17 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v17, OS_LOG_TYPE_DEFAULT, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  no key %s in dictionary\n", buf, 0xCu);
LABEL_22:
    if (glog_fd)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v34 = v20;
      v35 = v20;
      v32 = v20;
      v33 = v20;
      v30 = v20;
      v31 = v20;
      *buf = v20;
      v29 = v20;
      memset(&v27, 0, sizeof(v27));
      v26 = 0xAAAAAAAAAAAAAAAALL;
      time(&v26);
      localtime_r(&v26, &v27);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  no key %s in dictionary\n");
    }

    goto LABEL_29;
  }

  return result;
}

CFStringRef CCIOReporterFormatter::writeTimeString(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 8);
  memset(v8, 170, 20);
  memset(&v5, 0, sizeof(v5));
  localtime_r(&v6, &v5);
  strftime(v8, 0x14uLL, "%b %d %H:%M:%S", &v5);
  memset(v7, 170, sizeof(v7));
  strftime(v7, 0x10uLL, "%z", &v5);
  if (snprintf((a1 + 56), 0x80uLL, "%s.%06llu %s", v8, *(a2 + 16), v7))
  {
    return CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 56), 0x8000100u);
  }

  else
  {
    return 0;
  }
}

const void *CCIOReporterFormatter::getChannelsForSubscription(CCIOReporterFormatter *this, CFArrayRef theArray, const __CFNumber *a3)
{
  v5 = 0;
  v37 = *MEMORY[0x277D85DE8];
  while (1)
  {
    if (v5 >= CFArrayGetCount(theArray))
    {
      goto LABEL_29;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    if (!ValueAtIndex || (v7 = ValueAtIndex, v8 = CFGetTypeID(ValueAtIndex), v8 != CFDictionaryGetTypeID()))
    {
      v12 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 134217984;
        *&buf[4] = v5;
        v13 = v12;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 134217984;
        *&buf[4] = v5;
        v13 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::getChannelsForSubscription  didnt find or wrong type in array at i %ld\n", buf, 0xCu);
LABEL_21:
      if (glog_fd)
      {
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v35 = v21;
        v36 = v21;
        v33 = v21;
        v34 = v21;
        v31 = v21;
        v32 = v21;
        *buf = v21;
        *&buf[16] = v21;
        memset(&v29, 0, sizeof(v29));
        v28 = 0xAAAAAAAAAAAAAAAALL;
        time(&v28);
        localtime_r(&v28, &v29);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForSubscription  didnt find or wrong type in array at i %ld\n");
      }

      goto LABEL_29;
    }

    Value = CFDictionaryGetValue(v7, @"CCIOReportInterestSubscriptionIDx");
    if (!Value)
    {
      break;
    }

    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 != CFNumberGetTypeID())
    {
      break;
    }

    if (CFNumberCompare(v10, a3, 0) == kCFCompareEqualTo)
    {
      v16 = CFDictionaryGetValue(v7, @"CCIOReportInterests");
      if (v16)
      {
        v17 = v16;
        v18 = CFGetTypeID(v16);
        if (v18 == CFDictionaryGetTypeID())
        {
          return v17;
        }
      }

      v19 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 134218242;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "CCIOReportInterests";
        v20 = v19;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 134218242;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "CCIOReportInterests";
        v20 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::getChannelsForSubscription  didnt find or wrong type in dict at i %ld for %s\n", buf, 0x16u);
LABEL_27:
      if (glog_fd)
      {
        *&v23 = 0xAAAAAAAAAAAAAAAALL;
        *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v35 = v23;
        v36 = v23;
        v33 = v23;
        v34 = v23;
        v31 = v23;
        v32 = v23;
        *buf = v23;
        *&buf[16] = v23;
        memset(&v29, 0, sizeof(v29));
        v28 = 0xAAAAAAAAAAAAAAAALL;
        time(&v28);
        localtime_r(&v28, &v29);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForSubscription  didnt find or wrong type in dict at i %ld for %s\n");
      }

      goto LABEL_29;
    }

    ++v5;
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "CCIOReportInterestSubscriptionIDx";
      v15 = v14;
      goto LABEL_42;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "CCIOReportInterestSubscriptionIDx";
    v15 = MEMORY[0x277D86220];
LABEL_42:
    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::getChannelsForSubscription  didnt find %s\n", buf, 0xCu);
  }

  if (glog_fd)
  {
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v22;
    v36 = v22;
    v33 = v22;
    v34 = v22;
    v31 = v22;
    v32 = v22;
    *buf = v22;
    *&buf[16] = v22;
    memset(&v29, 0, sizeof(v29));
    v28 = 0xAAAAAAAAAAAAAAAALL;
    time(&v28);
    localtime_r(&v28, &v29);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForSubscription  didnt find %s\n");
  }

LABEL_29:
  v24 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = v24;
      goto LABEL_38;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v25 = MEMORY[0x277D86220];
LABEL_38:
    _os_log_error_impl(&dword_2452A3000, v25, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::getChannelsForSubscription  didn't find matching subscription\n", buf, 2u);
  }

  if (glog_fd)
  {
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v26;
    v36 = v26;
    v33 = v26;
    v34 = v26;
    v31 = v26;
    v32 = v26;
    *buf = v26;
    *&buf[16] = v26;
    memset(&v29, 0, sizeof(v29));
    v28 = 0xAAAAAAAAAAAAAAAALL;
    time(&v28);
    localtime_r(&v28, &v29);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForSubscription  didn't find matching subscription\n");
  }

  return 0;
}

uint64_t CCIOReporterFormatter::writeFileHeader(CCIOReporterFormatter *this)
{
  CCIOReporterFormatter::refreshSubscriptionsFromStreamRegistry(this);
  *(this + 46) = 0;
  v2 = *(*this + 112);

  return v2(this, "<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<plist version=1.0>\n<array>\n", 172);
}

uint64_t CCIOReporterFormatter::refreshSubscriptionsFromStreamRegistry(CCIOReporterFormatter *this)
{
  v41 = *MEMORY[0x277D85DE8];
  iterator = 0;
  v2 = *(this + 8);
  v3 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
    v4 = v3;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
    v4 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v4, OS_LOG_TYPE_DEFAULT, "%s::%s clearing out any previous subscriptions\n", buf, 0x16u);
LABEL_7:
  if (glog_fd)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v5;
    v40 = v5;
    v37 = v5;
    v38 = v5;
    v35 = v5;
    v36 = v5;
    *buf = v5;
    *&buf[16] = v5;
    memset(&v32, 0, sizeof(v32));
    v31 = 0xAAAAAAAAAAAAAAAALL;
    time(&v31);
    localtime_r(&v31, &v32);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s::%s clearing out any previous subscriptions\n", "CCIOReporterFormatter", "refreshSubscriptionsFromStreamRegistry");
  }

  v6 = *(this + 6);
  if (v6)
  {
    CFRelease(v6);
    *(this + 6) = 0;
  }

  v7 = *(this + 5);
  if (v7)
  {
    CFRelease(v7);
    *(this + 5) = 0;
  }

  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  *(this + 5) = Mutable;
  if (!Mutable)
  {
    v13 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
      v14 = v13;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
      v14 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v14, OS_LOG_TYPE_ERROR, "%s::%s channelStreamArray not valid\n", buf, 0x16u);
LABEL_43:
    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v25;
      v40 = v25;
      v37 = v25;
      v38 = v25;
      v35 = v25;
      v36 = v25;
      *buf = v25;
      *&buf[16] = v25;
      memset(&v32, 0, sizeof(v32));
      v31 = 0xAAAAAAAAAAAAAAAALL;
      time(&v31);
      localtime_r(&v31, &v32);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
      dprintf(glog_fd, "%s ", buf);
      v26 = 3758097085;
      dprintf(glog_fd, "%s::%s channelStreamArray not valid\n");
      return v26;
    }

    return 3758097085;
  }

  if (!MEMORY[0x245D67870](v2, "IOService", &iterator))
  {
    v15 = IOIteratorNext(iterator);
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v16;
    v40 = v16;
    v37 = v16;
    v38 = v16;
    v35 = v16;
    v36 = v16;
    *buf = v16;
    *&buf[16] = v16;
    if (v15)
    {
      v17 = v15;
      do
      {
        v18 = IOIteratorNext(iterator);
        MEMORY[0x245D67880](v17, buf);
        if (*buf != 0x6F7065524F494343 || *&buf[8] != 0x53676F4C72657472 || *&buf[14] != 0x6D616572745367)
        {
          break;
        }

        CCIOReporterFormatter::addRegistryChildToChannelDictionary(this, v17);
        v17 = v18;
      }

      while (v18);
    }
  }

  if (CFArrayGetCount(*(this + 5)))
  {
    v10 = CFArrayCreateMutable(v8, 1, MEMORY[0x277CBF128]);
    *(this + 6) = v10;
    if (v10)
    {
      if (!CCIOReporterFormatter::shapeIOReportLibraryFriendlyDictionary(this))
      {
        return 0;
      }

      v11 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *buf = 136315394;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
        v12 = v11;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *buf = 136315394;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
        v12 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "%s::%s shapeIOReportLibraryFriendlyDictionary failed\n", buf, 0x16u);
LABEL_50:
      v26 = 3758097084;
      if (glog_fd)
      {
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v39 = v28;
        v40 = v28;
        v37 = v28;
        v38 = v28;
        v35 = v28;
        v36 = v28;
        *buf = v28;
        *&buf[16] = v28;
        memset(&v32, 0, sizeof(v32));
        v31 = 0xAAAAAAAAAAAAAAAALL;
        time(&v31);
        localtime_r(&v31, &v32);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s shapeIOReportLibraryFriendlyDictionary failed\n");
      }

      return v26;
    }

    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
      v24 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
      v24 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "%s::%s rawStreamAndSubscriptionArray not valid\n", buf, 0x16u);
LABEL_53:
    if (glog_fd)
    {
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v29;
      v40 = v29;
      v37 = v29;
      v38 = v29;
      v35 = v29;
      v36 = v29;
      *buf = v29;
      *&buf[16] = v29;
      memset(&v32, 0, sizeof(v32));
      v31 = 0xAAAAAAAAAAAAAAAALL;
      time(&v31);
      localtime_r(&v31, &v32);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
      dprintf(glog_fd, "%s ", buf);
      v26 = 3758097085;
      dprintf(glog_fd, "%s::%s rawStreamAndSubscriptionArray not valid\n");
      return v26;
    }

    return 3758097085;
  }

  v21 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
    v22 = v21;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
    v22 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "%s::%s channelStreamArray empty\n", buf, 0x16u);
LABEL_47:
  v26 = 3758097084;
  if (glog_fd)
  {
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v27;
    v40 = v27;
    v37 = v27;
    v38 = v27;
    v35 = v27;
    v36 = v27;
    *buf = v27;
    *&buf[16] = v27;
    memset(&v32, 0, sizeof(v32));
    v31 = 0xAAAAAAAAAAAAAAAALL;
    time(&v31);
    localtime_r(&v31, &v32);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s::%s channelStreamArray empty\n");
  }

  return v26;
}

uint64_t CCIOReporterFormatter::addRegistryChildToChannelDictionary(CFMutableArrayRef *this, uint64_t entry)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"CCIOReportRkey", *MEMORY[0x277CBECE8], 0);
  v6 = IORegistryEntryCreateCFProperty(entry, @"Id", v4, 0);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[6] = v7;
  v43[7] = v7;
  v43[4] = v7;
  v43[5] = v7;
  v43[2] = v7;
  v43[3] = v7;
  v43[0] = v7;
  v43[1] = v7;
  if (CFProperty)
  {
    Value = CFDictionaryGetValue(CFProperty, @"CCIOReportStream");
    if (Value)
    {
      v9 = Value;
      v10 = CFGetTypeID(Value);
      TypeID = CFArrayGetTypeID();
      v12 = coreCaptureOsLog;
      if (v10 == TypeID)
      {
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          *buf = 136315650;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "addRegistryChildToChannelDictionary";
          *&buf[22] = 2048;
          *&buf[24] = CFArrayGetCount(v9);
          v13 = v12;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          *buf = 136315650;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "addRegistryChildToChannelDictionary";
          *&buf[22] = 2048;
          *&buf[24] = CFArrayGetCount(v9);
          v13 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v13, OS_LOG_TYPE_DEFAULT, "%s::%s streams %ld\n", buf, 0x20u);
LABEL_29:
        if (glog_fd)
        {
          *&v22 = 0xAAAAAAAAAAAAAAAALL;
          *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v41 = v22;
          v42 = v22;
          v39 = v22;
          v40 = v22;
          v37 = v22;
          v38 = v22;
          *buf = v22;
          *&buf[16] = v22;
          memset(&v35, 0, sizeof(v35));
          v34 = 0xAAAAAAAAAAAAAAAALL;
          time(&v34);
          localtime_r(&v34, &v35);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
          dprintf(glog_fd, "%s ", buf);
          v23 = glog_fd;
          Count = CFArrayGetCount(v9);
          dprintf(v23, "%s::%s streams %ld\n", "CCIOReporterFormatter", "addRegistryChildToChannelDictionary", Count);
        }

        Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v26 = Mutable;
          CFDictionarySetValue(Mutable, @"Id", v6);
          CFDictionarySetValue(v26, @"CCIOReportStream", v9);
          CFArrayAppendValue(this[5], v26);
          if (v6)
          {
            CFRelease(v6);
          }

          v20 = 1;
          v6 = CFProperty;
          CFProperty = v26;
          goto LABEL_45;
        }

        v28 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_42;
          }

          *buf = 0;
          v29 = v28;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_42;
          }

          *buf = 0;
          v29 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  Cant create channelStreamDictionary\n", buf, 2u);
LABEL_42:
        if (glog_fd)
        {
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v41 = v30;
          v42 = v30;
          v39 = v30;
          v40 = v30;
          v37 = v30;
          v38 = v30;
          *buf = v30;
          *&buf[16] = v30;
          memset(&v35, 0, sizeof(v35));
          v34 = 0xAAAAAAAAAAAAAAAALL;
          time(&v34);
          localtime_r(&v34, &v35);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  Cant create channelStreamDictionary\n", v33);
        }

        goto LABEL_44;
      }

      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 0;
        v18 = v12;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 0;
        v18 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v18, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  not array\n", buf, 2u);
LABEL_36:
      if (glog_fd)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v41 = v27;
        v42 = v27;
        v39 = v27;
        v40 = v27;
        v37 = v27;
        v38 = v27;
        *buf = v27;
        *&buf[16] = v27;
        memset(&v35, 0, sizeof(v35));
        v34 = 0xAAAAAAAAAAAAAAAALL;
        time(&v34);
        localtime_r(&v34, &v35);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  not array\n", v32);
      }

      goto LABEL_44;
    }

    v16 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315138;
      *&buf[4] = "CCIOReportStream";
      v17 = v16;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315138;
      *&buf[4] = "CCIOReportStream";
      v17 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v17, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  dictionary doesn't contain %s\n", buf, 0xCu);
LABEL_24:
    if (glog_fd)
    {
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41 = v21;
      v42 = v21;
      v39 = v21;
      v40 = v21;
      v37 = v21;
      v38 = v21;
      *buf = v21;
      *&buf[16] = v21;
      memset(&v35, 0, sizeof(v35));
      v34 = 0xAAAAAAAAAAAAAAAALL;
      time(&v34);
      localtime_r(&v34, &v35);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  dictionary doesn't contain %s\n");
    }

LABEL_44:
    v20 = 0;
    if (!v6)
    {
LABEL_46:
      CFRelease(CFProperty);
      return v20;
    }

LABEL_45:
    CFRelease(v6);
    goto LABEL_46;
  }

  MEMORY[0x245D67880](entry, v43);
  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReportRkey";
    *&buf[12] = 2080;
    *&buf[14] = v43;
    v15 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReportRkey";
    *&buf[12] = 2080;
    *&buf[14] = v43;
    v15 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v15, OS_LOG_TYPE_DEFAULT, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  no %s found in %s\n", buf, 0x16u);
LABEL_19:
  if (glog_fd)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41 = v19;
    v42 = v19;
    v39 = v19;
    v40 = v19;
    v37 = v19;
    v38 = v19;
    *buf = v19;
    *&buf[16] = v19;
    memset(&v35, 0, sizeof(v35));
    v34 = 0xAAAAAAAAAAAAAAAALL;
    time(&v34);
    localtime_r(&v34, &v35);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  no %s found in %s\n", "CCIOReportRkey", v43);
  }

  v20 = 0;
  CFProperty = v6;
  if (v6)
  {
    goto LABEL_46;
  }

  return v20;
}

uint64_t CCIOReporterFormatter::shapeIOReportLibraryFriendlyDictionary(CFArrayRef *this)
{
  v2 = 0;
  v71 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  v4 = @"Id";
  while (2)
  {
    if (v2 >= CFArrayGetCount(this[5]))
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(this[5], v2);
    if (!ValueAtIndex || (v6 = ValueAtIndex, v7 = CFGetTypeID(ValueAtIndex), v7 != CFDictionaryGetTypeID()))
    {
      v42 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *buf = 136315650;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
        *&buf[22] = 2048;
        *&buf[24] = v2;
        v43 = v42;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *buf = 136315650;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
        *&buf[22] = 2048;
        *&buf[24] = v2;
        v43 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v43, OS_LOG_TYPE_ERROR, "%s::%s channelStreamArray at i %ld not valid\n", buf, 0x20u);
LABEL_72:
      if (glog_fd)
      {
        *&v54 = 0xAAAAAAAAAAAAAAAALL;
        *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v69 = v54;
        v70 = v54;
        v67 = v54;
        v68 = v54;
        v65 = v54;
        v66 = v54;
        *buf = v54;
        *&buf[16] = v54;
        memset(&v63, 0, sizeof(v63));
        v62 = 0xAAAAAAAAAAAAAAAALL;
        time(&v62);
        localtime_r(&v62, &v63);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s channelStreamArray at i %ld not valid\n", "CCIOReporterFormatter", "shapeIOReportLibraryFriendlyDictionary", v2);
      }

      return 0;
    }

    v8 = v4;
    Value = CFDictionaryGetValue(v6, v4);
    if (!Value)
    {
      return 0;
    }

    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 != CFNumberGetTypeID())
    {
      return 0;
    }

    v12 = CFDictionaryGetValue(v6, @"CCIOReportStream");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CFArrayGetTypeID())
      {
        theArray = CFArrayCreateMutable(v3, 1, MEMORY[0x277CBF128]);
        if (theArray)
        {
          for (i = 0; i < CFArrayGetCount(v13); ++i)
          {
            v16 = CFArrayGetValueAtIndex(v13, i);
            if (!v16 || (v17 = v16, v18 = CFGetTypeID(v16), v18 != CFDictionaryGetTypeID()))
            {
              v29 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  *&buf[22] = 2048;
                  *&buf[24] = i;
                  v30 = v29;
                  goto LABEL_85;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                *&buf[22] = 2048;
                *&buf[24] = i;
                v30 = MEMORY[0x277D86220];
LABEL_85:
                _os_log_error_impl(&dword_2452A3000, v30, OS_LOG_TYPE_ERROR, "%s::%s didn't find or wrong type in array at i %ld\n", buf, 0x20u);
              }

              v39 = 3758097136;
              if (glog_fd)
              {
                *&v40 = 0xAAAAAAAAAAAAAAAALL;
                *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v69 = v40;
                v70 = v40;
                v67 = v40;
                v68 = v40;
                v65 = v40;
                v66 = v40;
                *buf = v40;
                *&buf[16] = v40;
                memset(&v63, 0, sizeof(v63));
                v62 = 0xAAAAAAAAAAAAAAAALL;
                time(&v62);
                localtime_r(&v62, &v63);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s didn't find or wrong type in array at i %ld\n");
              }

LABEL_61:
              CFRelease(theArray);
              v49 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  v50 = v49;
                  goto LABEL_80;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                v50 = MEMORY[0x277D86220];
LABEL_80:
                _os_log_error_impl(&dword_2452A3000, v50, OS_LOG_TYPE_ERROR, "%s::%s failed to store description\n", buf, 0x16u);
              }

              if (glog_fd)
              {
                *&v51 = 0xAAAAAAAAAAAAAAAALL;
                *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v69 = v51;
                v70 = v51;
                v67 = v51;
                v68 = v51;
                v65 = v51;
                v66 = v51;
                *buf = v51;
                *&buf[16] = v51;
                memset(&v63, 0, sizeof(v63));
                v62 = 0xAAAAAAAAAAAAAAAALL;
                time(&v62);
                localtime_r(&v62, &v63);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s failed to store description\n");
              }

              return v39;
            }

            v19 = CFDictionaryGetValue(v17, @"CCIOReportInterestSubscriptionIDx");
            if (!v19 || (v20 = v19, v21 = CFGetTypeID(v19), v21 != CFNumberGetTypeID()))
            {
              v31 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  *&buf[22] = 2080;
                  *&buf[24] = "CCIOReportInterestSubscriptionIDx";
                  LOWORD(v65) = 2048;
                  *(&v65 + 2) = i;
                  v32 = v31;
                  goto LABEL_87;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                *&buf[22] = 2080;
                *&buf[24] = "CCIOReportInterestSubscriptionIDx";
                LOWORD(v65) = 2048;
                *(&v65 + 2) = i;
                v32 = MEMORY[0x277D86220];
LABEL_87:
                _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "%s::%s didn't find %s or wrong type in array at i %ld\n", buf, 0x2Au);
              }

              v39 = 3758097136;
              if (glog_fd)
              {
                *&v41 = 0xAAAAAAAAAAAAAAAALL;
                *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v69 = v41;
                v70 = v41;
                v67 = v41;
                v68 = v41;
                v65 = v41;
                v66 = v41;
                *buf = v41;
                *&buf[16] = v41;
                memset(&v63, 0, sizeof(v63));
                v62 = 0xAAAAAAAAAAAAAAAALL;
                time(&v62);
                localtime_r(&v62, &v63);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s didn't find %s or wrong type in array at i %ld\n");
              }

              goto LABEL_61;
            }

            Aggregate = IOReportCreateAggregate();
            if (!Aggregate)
            {
              v33 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "shapeIOReportLibraryFriendlyDictionary";
                  *&buf[12] = 1024;
                  *&buf[14] = 331;
                  v34 = v33;
                  goto LABEL_92;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "shapeIOReportLibraryFriendlyDictionary";
                *&buf[12] = 1024;
                *&buf[14] = 331;
                v34 = MEMORY[0x277D86220];
LABEL_92:
                _os_log_error_impl(&dword_2452A3000, v34, OS_LOG_TYPE_ERROR, "%s@%d: bail - !legend\n", buf, 0x12u);
              }

              v39 = 3758097086;
              if (glog_fd)
              {
                *&v46 = 0xAAAAAAAAAAAAAAAALL;
                *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v69 = v46;
                v70 = v46;
                v67 = v46;
                v68 = v46;
                v65 = v46;
                v66 = v46;
                *buf = v46;
                *&buf[16] = v46;
                memset(&v63, 0, sizeof(v63));
                v62 = 0xAAAAAAAAAAAAAAAALL;
                time(&v62);
                localtime_r(&v62, &v63);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s@%d: bail - !legend\n");
              }

              goto LABEL_61;
            }

            v23 = Aggregate;
            if (CCIOReporterFormatter::storeChannelDescriptionFromStreamAndSubscription(this, Aggregate, v10, v20))
            {
              v35 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  v36 = v35;
                  goto LABEL_94;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                v36 = MEMORY[0x277D86220];
LABEL_94:
                _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "%s::%s Failed to create IOReporter library friendly channel list\n", buf, 0x16u);
              }

              if (glog_fd)
              {
                *&v47 = 0xAAAAAAAAAAAAAAAALL;
                *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v69 = v47;
                v70 = v47;
                v67 = v47;
                v68 = v47;
                v65 = v47;
                v66 = v47;
                *buf = v47;
                *&buf[16] = v47;
                memset(&v63, 0, sizeof(v63));
                v62 = 0xAAAAAAAAAAAAAAAALL;
                time(&v62);
                localtime_r(&v62, &v63);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s Failed to create IOReporter library friendly channel list\n", "CCIOReporterFormatter", "shapeIOReportLibraryFriendlyDictionary");
              }

              CFRelease(v23);
              v39 = 3758097084;
              goto LABEL_61;
            }

            Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!Mutable)
            {
              v37 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  v38 = v37;
                  goto LABEL_96;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                v38 = MEMORY[0x277D86220];
LABEL_96:
                _os_log_error_impl(&dword_2452A3000, v38, OS_LOG_TYPE_ERROR, "%s::%s Can't create subscriptionLegendDictionary\n", buf, 0x16u);
              }

              if (glog_fd)
              {
                *&v48 = 0xAAAAAAAAAAAAAAAALL;
                *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v69 = v48;
                v70 = v48;
                v67 = v48;
                v68 = v48;
                v65 = v48;
                v66 = v48;
                *buf = v48;
                *&buf[16] = v48;
                memset(&v63, 0, sizeof(v63));
                v62 = 0xAAAAAAAAAAAAAAAALL;
                time(&v62);
                localtime_r(&v62, &v63);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s Can't create subscriptionLegendDictionary\n", "CCIOReporterFormatter", "shapeIOReportLibraryFriendlyDictionary");
              }

              CFRelease(v23);
              v39 = 3758097085;
              goto LABEL_61;
            }

            v25 = Mutable;
            CFDictionarySetValue(Mutable, @"CCIOReportInterestSubscriptionIDx", v20);
            CFDictionarySetValue(v25, @"CCIOReportInterests", v23);
            CFRelease(v23);
            CFArrayAppendValue(theArray, v25);
            CFRelease(v25);
          }

          v26 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v26)
          {
            v27 = v26;
            v28 = v10;
            v4 = v8;
            CFDictionarySetValue(v26, v8, v28);
            CFDictionarySetValue(v27, @"CCIOReportStream", theArray);
            CFRelease(theArray);
            CFArrayAppendValue(this[6], v27);
            CFRelease(v27);
            v2 = i + 1;
            continue;
          }

          v58 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "CCIOReporterFormatter";
              *&buf[12] = 2080;
              *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
              v59 = v58;
LABEL_108:
              _os_log_error_impl(&dword_2452A3000, v59, OS_LOG_TYPE_ERROR, "%s::%s Can't create channelStreamDictionary\n", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "CCIOReporterFormatter";
            *&buf[12] = 2080;
            *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
            v59 = MEMORY[0x277D86220];
            goto LABEL_108;
          }

          if (glog_fd)
          {
            *&v60 = 0xAAAAAAAAAAAAAAAALL;
            *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v69 = v60;
            v70 = v60;
            v67 = v60;
            v68 = v60;
            v65 = v60;
            v66 = v60;
            *buf = v60;
            *&buf[16] = v60;
            memset(&v63, 0, sizeof(v63));
            v62 = 0xAAAAAAAAAAAAAAAALL;
            time(&v62);
            localtime_r(&v62, &v63);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "%s::%s Can't create channelStreamDictionary\n", "CCIOReporterFormatter", "shapeIOReportLibraryFriendlyDictionary");
          }

          CFRelease(theArray);
          return 3758097085;
        }

        v52 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_82;
          }

          *buf = 136315394;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
          v53 = v52;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_82;
          }

          *buf = 136315394;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
          v53 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v53, OS_LOG_TYPE_ERROR, "%s::%s !subscriptionLegendDictionaryArray\n", buf, 0x16u);
LABEL_82:
        v39 = 3758097084;
        if (glog_fd)
        {
          *&v57 = 0xAAAAAAAAAAAAAAAALL;
          *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v69 = v57;
          v70 = v57;
          v67 = v57;
          v68 = v57;
          v65 = v57;
          v66 = v57;
          *buf = v57;
          *&buf[16] = v57;
          memset(&v63, 0, sizeof(v63));
          v62 = 0xAAAAAAAAAAAAAAAALL;
          time(&v62);
          localtime_r(&v62, &v63);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s::%s !subscriptionLegendDictionaryArray\n");
        }

        return v39;
      }
    }

    break;
  }

  v44 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    *buf = 136315650;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
    *&buf[22] = 2080;
    *&buf[24] = "CCIOReportStream";
    v45 = v44;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    *buf = 136315650;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
    *&buf[22] = 2080;
    *&buf[24] = "CCIOReportStream";
    v45 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v45, OS_LOG_TYPE_ERROR, "%s::%s didn't find %s\n", buf, 0x20u);
LABEL_77:
  v39 = 3758097136;
  if (glog_fd)
  {
    *&v56 = 0xAAAAAAAAAAAAAAAALL;
    *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v69 = v56;
    v70 = v56;
    v67 = v56;
    v68 = v56;
    v65 = v56;
    v66 = v56;
    *buf = v56;
    *&buf[16] = v56;
    memset(&v63, 0, sizeof(v63));
    v62 = 0xAAAAAAAAAAAAAAAALL;
    time(&v62);
    localtime_r(&v62, &v63);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v63);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s::%s didn't find %s\n");
  }

  return v39;
}

uint64_t CCIOReporterFormatter::storeChannelDescriptionFromStreamAndSubscription(CFArrayRef *this, __CFDictionary *a2, const __CFNumber *a3, const __CFNumber *a4)
{
  v5 = 0;
  v6 = 0;
  v35 = *MEMORY[0x277D85DE8];
  while (v5 < CFArrayGetCount(this[5]))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this[5], v5);
    if (!ValueAtIndex)
    {
      break;
    }

    v8 = ValueAtIndex;
    v9 = CFGetTypeID(ValueAtIndex);
    if (v9 != CFDictionaryGetTypeID())
    {
      break;
    }

    Value = CFDictionaryGetValue(v8, @"Id");
    if (!Value)
    {
      v15 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
          *&buf[22] = 2080;
          *&buf[24] = "Id";
          v16 = v15;
          goto LABEL_19;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
        *&buf[22] = 2080;
        *&buf[24] = "Id";
        v16 = MEMORY[0x277D86220];
LABEL_19:
        _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "%s::%s no key %s in dictionary\n", buf, 0x20u);
      }

      if (glog_fd)
      {
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v33 = v19;
        v34 = v19;
        v31 = v19;
        v32 = v19;
        v29 = v19;
        v30 = v19;
        *buf = v19;
        *&buf[16] = v19;
        memset(&v27, 0, sizeof(v27));
        v26 = 0xAAAAAAAAAAAAAAAALL;
        time(&v26);
        localtime_r(&v26, &v27);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s no key %s in dictionary\n");
      }

      goto LABEL_34;
    }

    v11 = Value;
    v12 = CFGetTypeID(Value);
    if (v12 != CFNumberGetTypeID())
    {
      v17 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
          *&buf[22] = 2080;
          *&buf[24] = "Id";
          v18 = v17;
          goto LABEL_26;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
        *&buf[22] = 2080;
        *&buf[24] = "Id";
        v18 = MEMORY[0x277D86220];
LABEL_26:
        _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "%s::%s key %s has wrong type in dictionary\n", buf, 0x20u);
      }

      if (glog_fd)
      {
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v33 = v20;
        v34 = v20;
        v31 = v20;
        v32 = v20;
        v29 = v20;
        v30 = v20;
        *buf = v20;
        *&buf[16] = v20;
        memset(&v27, 0, sizeof(v27));
        v26 = 0xAAAAAAAAAAAAAAAALL;
        time(&v26);
        localtime_r(&v26, &v27);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s key %s has wrong type in dictionary\n");
      }

      goto LABEL_34;
    }

    if (CFNumberCompare(v11, a3, 0))
    {
      v13 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
          v14 = v13;
          goto LABEL_31;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
        v14 = MEMORY[0x277D86220];
LABEL_31:
        _os_log_impl(&dword_2452A3000, v14, OS_LOG_TYPE_DEFAULT, "%s::%s not a matching Stream id\n", buf, 0x16u);
      }

      if (glog_fd)
      {
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v33 = v21;
        v34 = v21;
        v31 = v21;
        v32 = v21;
        v29 = v21;
        v30 = v21;
        *buf = v21;
        *&buf[16] = v21;
        memset(&v27, 0, sizeof(v27));
        v26 = 0xAAAAAAAAAAAAAAAALL;
        time(&v26);
        localtime_r(&v26, &v27);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s not a matching Stream id\n");
      }

      goto LABEL_34;
    }

    v6 = CCIOReporterFormatter::storeChannelDescriptionFromSubscription(0, a2, v8, a4);
    if (!v6)
    {
      return v6;
    }

LABEL_34:
    ++v5;
  }

  return v6;
}

uint64_t CCIOReporterFormatter::storeChannelDescriptionFromSubscription(CCIOReporterFormatter *this, __CFDictionary *a2, CFDictionaryRef theDict, const __CFNumber *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(theDict, @"CCIOReportStream");
  if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFArrayGetTypeID()))
  {
    v35 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 136315650;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "storeChannelDescriptionFromSubscription";
      *&buf[22] = 2080;
      *&buf[24] = "CCIOReportStream";
      v36 = v35;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 136315650;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "storeChannelDescriptionFromSubscription";
      *&buf[22] = 2080;
      *&buf[24] = "CCIOReportStream";
      v36 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "%s::%s didn't find %s\n", buf, 0x20u);
LABEL_40:
    if (glog_fd)
    {
      *&v37 = 0xAAAAAAAAAAAAAAAALL;
      *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v59 = v37;
      v60 = v37;
      v57 = v37;
      v58 = v37;
      v55 = v37;
      v56 = v37;
      *buf = v37;
      *&buf[16] = v37;
      memset(&v53, 0, sizeof(v53));
      v52 = 0xAAAAAAAAAAAAAAAALL;
      time(&v52);
      localtime_r(&v52, &v53);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s::%s didn't find %s\n");
    }

    return 3758097136;
  }

  v9 = 0;
  v10 = 3758097136;
  while (1)
  {
    if (v9 >= CFArrayGetCount(v7))
    {
      v39 = 0x27EE11000;
      if (v10 == -536870160)
      {
        goto LABEL_50;
      }

      return v10;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
    if (!ValueAtIndex)
    {
      break;
    }

    v12 = ValueAtIndex;
    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 != CFDictionaryGetTypeID())
    {
      break;
    }

    v14 = CFDictionaryGetValue(v12, @"CCIOReportInterestSubscriptionIDx");
    if (v14)
    {
      v15 = v14;
      v16 = CFGetTypeID(v14);
      if (v16 == CFNumberGetTypeID() && CFNumberCompare(v15, a4, 0) == kCFCompareEqualTo)
      {
        v17 = CFDictionaryGetValue(v12, @"CCIOReportInterests");
        if (v17)
        {
          v18 = v17;
          v19 = CFGetTypeID(v17);
          if (v19 == CFArrayGetTypeID())
          {
            if (CFArrayGetCount(v18))
            {
              v20 = 0;
              while (1)
              {
                if (CFArrayGetCount(v18) <= v20)
                {
                  goto LABEL_31;
                }

                v21 = CFArrayGetValueAtIndex(v18, v20);
                if (!v21)
                {
                  break;
                }

                v22 = v21;
                v23 = CFGetTypeID(v21);
                TypeID = CFDictionaryGetTypeID();
                if (v23 != TypeID)
                {
                  break;
                }

                v25 = CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup(TypeID, a2, v22);
                v10 = 0;
                ++v20;
                if (v25)
                {
                  v26 = v25;
                  v27 = coreCaptureOsLog;
                  if (coreCaptureOsLog)
                  {
                    v28 = 0x27EE11000;
                    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      *&buf[4] = "CCIOReporterFormatter";
                      *&buf[12] = 2080;
                      *&buf[14] = "storeChannelDescriptionFromSubscription";
                      v29 = v27;
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    v28 = 0x27EE11000uLL;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      *&buf[4] = "CCIOReporterFormatter";
                      *&buf[12] = 2080;
                      *&buf[14] = "storeChannelDescriptionFromSubscription";
                      v29 = MEMORY[0x277D86220];
LABEL_35:
                      _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "%s::%s failed to store Channel Description\n", buf, 0x16u);
                    }
                  }

                  if (*(v28 + 2856))
                  {
                    *&v34 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v59 = v34;
                    v60 = v34;
                    v57 = v34;
                    v58 = v34;
                    v55 = v34;
                    v56 = v34;
                    *buf = v34;
                    *&buf[16] = v34;
                    memset(&v53, 0, sizeof(v53));
                    v52 = 0xAAAAAAAAAAAAAAAALL;
                    time(&v52);
                    localtime_r(&v52, &v53);
                    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
                    dprintf(*(v28 + 2856), "%s ", buf);
                    dprintf(*(v28 + 2856), "%s::%s failed to store Channel Description\n");
                  }

LABEL_30:
                  v10 = v26;
                  goto LABEL_31;
                }
              }

              v30 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                v31 = 0x27EE11000;
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "storeChannelDescriptionFromSubscription";
                  v32 = v30;
                  goto LABEL_33;
                }
              }

              else
              {
                v31 = 0x27EE11000uLL;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "storeChannelDescriptionFromSubscription";
                  v32 = MEMORY[0x277D86220];
LABEL_33:
                  _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "%s::%s didn't find or not a dict in array\n", buf, 0x16u);
                }
              }

              v10 = 3758097136;
              if (!*(v31 + 2856))
              {
                goto LABEL_31;
              }

              *&v33 = 0xAAAAAAAAAAAAAAAALL;
              *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v59 = v33;
              v60 = v33;
              v57 = v33;
              v58 = v33;
              v55 = v33;
              v56 = v33;
              *buf = v33;
              *&buf[16] = v33;
              memset(&v53, 0, sizeof(v53));
              v52 = 0xAAAAAAAAAAAAAAAALL;
              time(&v52);
              localtime_r(&v52, &v53);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
              dprintf(glog_fd, "%s ", buf);
              v26 = 3758097136;
              dprintf(glog_fd, "%s::%s didn't find or not a dict in array\n");
              goto LABEL_30;
            }

            v48 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              v39 = 0x27EE11000;
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "storeChannelDescriptionFromSubscription";
                v49 = v48;
                goto LABEL_79;
              }
            }

            else
            {
              v39 = 0x27EE11000uLL;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "storeChannelDescriptionFromSubscription";
                v49 = MEMORY[0x277D86220];
LABEL_79:
                _os_log_error_impl(&dword_2452A3000, v49, OS_LOG_TYPE_ERROR, "%s::%s empty array\n", buf, 0x16u);
              }
            }

            if (*(v39 + 2856))
            {
              *&v51 = 0xAAAAAAAAAAAAAAAALL;
              *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v59 = v51;
              v60 = v51;
              v57 = v51;
              v58 = v51;
              v55 = v51;
              v56 = v51;
              *buf = v51;
              *&buf[16] = v51;
              memset(&v53, 0, sizeof(v53));
              v52 = 0xAAAAAAAAAAAAAAAALL;
              time(&v52);
              localtime_r(&v52, &v53);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
              dprintf(*(v39 + 2856), "%s ", buf);
              dprintf(*(v39 + 2856), "%s::%s empty array\n");
            }

            goto LABEL_50;
          }
        }

        v46 = coreCaptureOsLog;
        v39 = 0x27EE11000uLL;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "CCIOReporterFormatter";
            *&buf[12] = 2080;
            *&buf[14] = "storeChannelDescriptionFromSubscription";
            *&buf[22] = 2048;
            *&buf[24] = v9;
            LOWORD(v55) = 2080;
            *(&v55 + 2) = "CCIOReportInterests";
            v47 = v46;
            goto LABEL_77;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "storeChannelDescriptionFromSubscription";
          *&buf[22] = 2048;
          *&buf[24] = v9;
          LOWORD(v55) = 2080;
          *(&v55 + 2) = "CCIOReportInterests";
          v47 = MEMORY[0x277D86220];
LABEL_77:
          _os_log_error_impl(&dword_2452A3000, v47, OS_LOG_TYPE_ERROR, "%s::%s  didn't find or wrong type in dict at i %ld for %s\n", buf, 0x2Au);
        }

        if (glog_fd)
        {
          *&v50 = 0xAAAAAAAAAAAAAAAALL;
          *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v59 = v50;
          v60 = v50;
          v57 = v50;
          v58 = v50;
          v55 = v50;
          v56 = v50;
          *buf = v50;
          *&buf[16] = v50;
          memset(&v53, 0, sizeof(v53));
          v52 = 0xAAAAAAAAAAAAAAAALL;
          time(&v52);
          localtime_r(&v52, &v53);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s::%s  didn't find or wrong type in dict at i %ld for %s\n");
        }

        goto LABEL_50;
      }
    }

LABEL_31:
    ++v9;
  }

  v38 = coreCaptureOsLog;
  v39 = 0x27EE11000uLL;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "storeChannelDescriptionFromSubscription";
      *&buf[22] = 2048;
      *&buf[24] = v9;
      v40 = v38;
      goto LABEL_72;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "storeChannelDescriptionFromSubscription";
    *&buf[22] = 2048;
    *&buf[24] = v9;
    v40 = MEMORY[0x277D86220];
LABEL_72:
    _os_log_error_impl(&dword_2452A3000, v40, OS_LOG_TYPE_ERROR, "%s::%s didn't find or wrong type in array at i %ld\n", buf, 0x20u);
  }

  if (glog_fd)
  {
    *&v41 = 0xAAAAAAAAAAAAAAAALL;
    *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v59 = v41;
    v60 = v41;
    v57 = v41;
    v58 = v41;
    v55 = v41;
    v56 = v41;
    *buf = v41;
    *&buf[16] = v41;
    memset(&v53, 0, sizeof(v53));
    v52 = 0xAAAAAAAAAAAAAAAALL;
    time(&v52);
    localtime_r(&v52, &v53);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s::%s didn't find or wrong type in array at i %ld\n");
  }

LABEL_50:
  v42 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "storeChannelDescriptionFromSubscription";
      v43 = v42;
      goto LABEL_70;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "storeChannelDescriptionFromSubscription";
    v43 = MEMORY[0x277D86220];
LABEL_70:
    _os_log_error_impl(&dword_2452A3000, v43, OS_LOG_TYPE_ERROR, "%s::%s didn't find matching subscription\n", buf, 0x16u);
  }

  if (*(v39 + 2856))
  {
    *&v44 = 0xAAAAAAAAAAAAAAAALL;
    *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v59 = v44;
    v60 = v44;
    v57 = v44;
    v58 = v44;
    v55 = v44;
    v56 = v44;
    *buf = v44;
    *&buf[16] = v44;
    memset(&v53, 0, sizeof(v53));
    v52 = 0xAAAAAAAAAAAAAAAALL;
    time(&v52);
    localtime_r(&v52, &v53);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
    dprintf(*(v39 + 2856), "%s ", buf);
    dprintf(*(v39 + 2856), "%s::%s didn't find matching subscription\n");
  }

  return 3758097136;
}

uint64_t CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup(CCIOReporterFormatter *this, __CFDictionary *a2, CFDictionaryRef theDict)
{
  v129 = *MEMORY[0x277D85DE8];
  v120 = 0;
  valuePtr = 0;
  v4 = 3758097136;
  v119 = 0;
  Value = CFDictionaryGetValue(theDict, @"IOReportGroupName");
  if (!Value)
  {
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportGroupName";
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportGroupName";
      v10 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n", cStr, 0xCu);
LABEL_11:
    if (glog_fd)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v127 = v13;
      v128 = v13;
      v125 = v13;
      v126 = v13;
      v124 = v13;
      *&cStr[16] = v13;
      v123 = v13;
      *cStr = v13;
      memset(&v118, 0, sizeof(v118));
      v117 = 0xAAAAAAAAAAAAAAAALL;
      time(&v117);
      localtime_r(&v117, &v118);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n");
    }

    goto LABEL_16;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 == CFStringGetTypeID())
  {
    v8 = 0;
    goto LABEL_17;
  }

  v11 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *cStr = 136315906;
    *&cStr[4] = "IOReportGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = CFStringGetTypeID();
    LOWORD(v123) = 2048;
    *(&v123 + 2) = CFGetTypeID(v6);
    v12 = v11;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *cStr = 136315906;
    *&cStr[4] = "IOReportGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = CFStringGetTypeID();
    LOWORD(v123) = 2048;
    *(&v123 + 2) = CFGetTypeID(v6);
    v12 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_14:
  if (glog_fd)
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v127 = v14;
    v128 = v14;
    v125 = v14;
    v126 = v14;
    v124 = v14;
    *&cStr[16] = v14;
    v123 = v14;
    *cStr = v14;
    memset(&v118, 0, sizeof(v118));
    v117 = 0xAAAAAAAAAAAAAAAALL;
    time(&v117);
    localtime_r(&v117, &v118);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
    dprintf(glog_fd, "%s ", cStr);
    v15 = glog_fd;
    CFStringGetTypeID();
    CFGetTypeID(v6);
    dprintf(v15, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n");
  }

LABEL_16:
  v6 = 0;
  v8 = 3758097136;
LABEL_17:
  v16 = CFDictionaryGetValue(theDict, @"IOReportSubGroupName");
  if (!v16)
  {
    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportSubGroupName";
      v24 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportSubGroupName";
      v24 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n", cStr, 0xCu);
LABEL_26:
    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v127 = v25;
      v128 = v25;
      v125 = v25;
      v126 = v25;
      v124 = v25;
      *&cStr[16] = v25;
      v123 = v25;
      *cStr = v25;
      memset(&v118, 0, sizeof(v118));
      v117 = 0xAAAAAAAAAAAAAAAALL;
      time(&v117);
      localtime_r(&v117, &v118);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n");
    }

    goto LABEL_31;
  }

  v17 = v16;
  v18 = CFGetTypeID(v16);
  if (v18 == CFStringGetTypeID())
  {
    goto LABEL_32;
  }

  v19 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    TypeID = CFStringGetTypeID();
    v21 = CFGetTypeID(v17);
    *cStr = 136315906;
    *&cStr[4] = "IOReportSubGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = TypeID;
    LOWORD(v123) = 2048;
    *(&v123 + 2) = v21;
    v22 = v19;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v105 = CFStringGetTypeID();
    v106 = CFGetTypeID(v17);
    *cStr = 136315906;
    *&cStr[4] = "IOReportSubGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v105;
    LOWORD(v123) = 2048;
    *(&v123 + 2) = v106;
    v22 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_29:
  if (glog_fd)
  {
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v127 = v26;
    v128 = v26;
    v125 = v26;
    v126 = v26;
    v124 = v26;
    *&cStr[16] = v26;
    v123 = v26;
    *cStr = v26;
    memset(&v118, 0, sizeof(v118));
    v117 = 0xAAAAAAAAAAAAAAAALL;
    time(&v117);
    localtime_r(&v117, &v118);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
    dprintf(glog_fd, "%s ", cStr);
    v27 = glog_fd;
    CFStringGetTypeID();
    CFGetTypeID(v17);
    dprintf(v27, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n");
  }

LABEL_31:
  v17 = 0;
  v8 = 3758097136;
LABEL_32:
  v28 = CFDictionaryGetValue(theDict, @"DriverID");
  if (v28)
  {
    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v29, kCFNumberLongLongType, &valuePtr);
      if (valuePtr)
      {
        goto LABEL_54;
      }

      v31 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *cStr = 0;
          v32 = v31;
LABEL_156:
          _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey invalid value \n", cStr, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *cStr = 0;
        v32 = MEMORY[0x277D86220];
        goto LABEL_156;
      }

      if (glog_fd)
      {
        *&v42 = 0xAAAAAAAAAAAAAAAALL;
        *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v127 = v42;
        v128 = v42;
        v125 = v42;
        v126 = v42;
        v124 = v42;
        *&cStr[16] = v42;
        v123 = v42;
        *cStr = v42;
        memset(&v118, 0, sizeof(v118));
        v117 = 0xAAAAAAAAAAAAAAAALL;
        time(&v117);
        localtime_r(&v117, &v118);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
        dprintf(glog_fd, "%s ", cStr);
        dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey invalid value \n");
      }

      v8 = 3758096385;
      goto LABEL_54;
    }

    v35 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v36 = CFNumberGetTypeID();
      v37 = CFGetTypeID(v29);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v36;
      *&cStr[22] = 2048;
      *&cStr[24] = v37;
      v38 = v35;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v107 = CFNumberGetTypeID();
      v108 = CFGetTypeID(v29);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v107;
      *&cStr[22] = 2048;
      *&cStr[24] = v108;
      v38 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v38, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x20u);
LABEL_48:
    v8 = 3758097136;
    if (glog_fd)
    {
      *&v40 = 0xAAAAAAAAAAAAAAAALL;
      *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v127 = v40;
      v128 = v40;
      v125 = v40;
      v126 = v40;
      v124 = v40;
      *&cStr[16] = v40;
      v123 = v40;
      *cStr = v40;
      memset(&v118, 0, sizeof(v118));
      v117 = 0xAAAAAAAAAAAAAAAALL;
      time(&v117);
      localtime_r(&v117, &v118);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
      dprintf(glog_fd, "%s ", cStr);
      v41 = glog_fd;
      CFNumberGetTypeID();
      CFGetTypeID(v29);
      dprintf(v41, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected obj is%s NULL, with type %ld, but has type %ld\n");
    }

    goto LABEL_54;
  }

  v33 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *cStr = 0;
    v34 = v33;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *cStr = 0;
    v34 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v34, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected \n", cStr, 2u);
LABEL_45:
  v8 = 3758097136;
  if (glog_fd)
  {
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v127 = v39;
    v128 = v39;
    v125 = v39;
    v126 = v39;
    v124 = v39;
    *&cStr[16] = v39;
    v123 = v39;
    *cStr = v39;
    memset(&v118, 0, sizeof(v118));
    v117 = 0xAAAAAAAAAAAAAAAALL;
    time(&v117);
    localtime_r(&v117, &v118);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
    dprintf(glog_fd, "%s ", cStr);
    dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected \n");
  }

LABEL_54:
  v43 = CFDictionaryGetValue(theDict, @"DriverName");
  if (!v43)
  {
    v46 = IORegistryEntryIDMatching(valuePtr);
    if (v46)
    {
      MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v46);
      if (MatchingService)
      {
        *&v48 = 0xAAAAAAAAAAAAAAAALL;
        *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v127 = v48;
        v128 = v48;
        v125 = v48;
        v126 = v48;
        v124 = v48;
        *&cStr[16] = v48;
        v123 = v48;
        *cStr = v48;
        MEMORY[0x245D67880](MatchingService, cStr);
        v44 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0);
        goto LABEL_73;
      }
    }

    v53 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *cStr = 0;
      v54 = v53;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *cStr = 0;
      v54 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v54, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected, couldn't resolve device \n", cStr, 2u);
LABEL_70:
    if (glog_fd)
    {
      *&v57 = 0xAAAAAAAAAAAAAAAALL;
      *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v127 = v57;
      v128 = v57;
      v125 = v57;
      v126 = v57;
      v124 = v57;
      *&cStr[16] = v57;
      v123 = v57;
      *cStr = v57;
      memset(&v118, 0, sizeof(v118));
      v117 = 0xAAAAAAAAAAAAAAAALL;
      time(&v117);
      localtime_r(&v117, &v118);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected, couldn't resolve device \n");
    }

    goto LABEL_72;
  }

  v44 = v43;
  v45 = CFGetTypeID(v43);
  if (v45 != CFStringGetTypeID())
  {
    v49 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v50 = CFStringGetTypeID();
      v51 = CFGetTypeID(v44);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v50;
      *&cStr[22] = 2048;
      *&cStr[24] = v51;
      v52 = v49;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v109 = CFStringGetTypeID();
      v110 = CFGetTypeID(v44);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v109;
      *&cStr[22] = 2048;
      *&cStr[24] = v110;
      v52 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v52, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x20u);
LABEL_67:
    if (glog_fd)
    {
      *&v55 = 0xAAAAAAAAAAAAAAAALL;
      *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v127 = v55;
      v128 = v55;
      v125 = v55;
      v126 = v55;
      v124 = v55;
      *&cStr[16] = v55;
      v123 = v55;
      *cStr = v55;
      memset(&v118, 0, sizeof(v118));
      v117 = 0xAAAAAAAAAAAAAAAALL;
      time(&v117);
      localtime_r(&v117, &v118);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
      dprintf(glog_fd, "%s ", cStr);
      v56 = glog_fd;
      CFStringGetTypeID();
      CFGetTypeID(v44);
      dprintf(v56, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected obj is%s NULL, with type %ld, but has type %ld\n");
    }

LABEL_72:
    v44 = 0;
    v8 = 3758097136;
    goto LABEL_73;
  }

  CFRetain(v44);
LABEL_73:
  v58 = CFDictionaryGetValue(theDict, @"IOReportChannelInfo");
  v59 = v58;
  if (!v58)
  {
    goto LABEL_81;
  }

  v60 = CFGetTypeID(v58);
  if (v60 == CFDictionaryGetTypeID())
  {
    goto LABEL_81;
  }

  v61 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    v62 = CFDictionaryGetTypeID();
    v63 = CFGetTypeID(v59);
    *cStr = 136315906;
    *&cStr[4] = "IOReportChannelInfo";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v62;
    LOWORD(v123) = 2048;
    *(&v123 + 2) = v63;
    v64 = v61;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    v111 = CFDictionaryGetTypeID();
    v112 = CFGetTypeID(v59);
    *cStr = 136315906;
    *&cStr[4] = "IOReportChannelInfo";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v111;
    LOWORD(v123) = 2048;
    *(&v123 + 2) = v112;
    v64 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v64, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_79:
  if (glog_fd)
  {
    *&v65 = 0xAAAAAAAAAAAAAAAALL;
    *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v127 = v65;
    v128 = v65;
    v125 = v65;
    v126 = v65;
    v124 = v65;
    *&cStr[16] = v65;
    v123 = v65;
    *cStr = v65;
    memset(&v118, 0, sizeof(v118));
    v117 = 0xAAAAAAAAAAAAAAAALL;
    time(&v117);
    localtime_r(&v117, &v118);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
    dprintf(glog_fd, "%s ", cStr);
    v66 = glog_fd;
    v67 = CFDictionaryGetTypeID();
    v68 = CFGetTypeID(v59);
    dprintf(v66, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", "IOReportChannelInfo", " NOT", v67, v68);
  }

LABEL_81:
  v69 = CFDictionaryGetValue(theDict, @"IOReportChannels");
  if (v69)
  {
    v70 = v69;
    v71 = CFGetTypeID(v69);
    if (v71 == CFArrayGetTypeID())
    {
      v72 = 0;
      v115 = v44;
      while (1)
      {
        if (CFArrayGetCount(v70) <= v72)
        {
          v4 = v8;
          goto LABEL_121;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v70, v72);
        if (!ValueAtIndex || (v74 = ValueAtIndex, v75 = CFGetTypeID(ValueAtIndex), v75 != CFArrayGetTypeID()) || CFArrayGetCount(v74) < 2)
        {
          v4 = 3758097136;
          goto LABEL_121;
        }

        v76 = v17;
        v77 = v6;
        v78 = CFArrayGetValueAtIndex(v74, 0);
        if (v78)
        {
          v79 = v78;
          v80 = CFGetTypeID(v78);
          if (v80 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v79, kCFNumberSInt64Type, &v120);
          }
        }

        v81 = CFArrayGetValueAtIndex(v74, 1);
        if (v81)
        {
          v82 = v81;
          v83 = CFGetTypeID(v81);
          if (v83 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v82, kCFNumberSInt64Type, &v119);
          }
        }

        v84 = CFArrayGetValueAtIndex(v74, 2);
        if (v84)
        {
          v85 = v84;
          v86 = CFGetTypeID(v84);
          v87 = v86 == CFStringGetTypeID() ? v85 : 0;
        }

        else
        {
          v87 = 0;
        }

        v88 = v120;
        v89 = valuePtr;
        v90 = v119;
        if (!a2 || v8 || !valuePtr || !v115 || !v120 || !v119 || !v87)
        {
          break;
        }

        v44 = v115;
        v6 = v77;
        v17 = v76;
        v91 = IOReportAddChannelDescription();
        if (v91)
        {
          v4 = v91;
          goto LABEL_122;
        }

        v8 = 0;
        v119 = 0;
        v120 = 0;
        ++v72;
      }

      v102 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        v4 = 3758097136;
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *cStr = 67110400;
        *&cStr[4] = a2 != 0;
        *&cStr[8] = 1024;
        *&cStr[10] = v89 != 0;
        *&cStr[14] = 1024;
        *&cStr[16] = v115 != 0;
        *&cStr[20] = 1024;
        *&cStr[22] = v88 != 0;
        *&cStr[26] = 1024;
        *&cStr[28] = v90 != 0;
        LOWORD(v123) = 1024;
        *(&v123 + 2) = v87 != 0;
        v103 = v102;
      }

      else
      {
        v4 = 3758097136;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *cStr = 67110400;
        *&cStr[4] = a2 != 0;
        *&cStr[8] = 1024;
        *&cStr[10] = v89 != 0;
        *&cStr[14] = 1024;
        *&cStr[16] = v115 != 0;
        *&cStr[20] = 1024;
        *&cStr[22] = v88 != 0;
        *&cStr[26] = 1024;
        *&cStr[28] = v90 != 0;
        LOWORD(v123) = 1024;
        *(&v123 + 2) = v87 != 0;
        v103 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v103, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup failed to find required objects legend %d && providerID %d && providerName %d && channelID %d && channelType %d && channelName %d\n", cStr, 0x26u);
LABEL_130:
      if (glog_fd)
      {
        *&v104 = 0xAAAAAAAAAAAAAAAALL;
        *(&v104 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v127 = v104;
        v128 = v104;
        v44 = v115;
        v125 = v104;
        v126 = v104;
        v124 = v104;
        *&cStr[16] = v104;
        v123 = v104;
        *cStr = v104;
        memset(&v118, 0, sizeof(v118));
        v117 = 0xAAAAAAAAAAAAAAAALL;
        time(&v117);
        localtime_r(&v117, &v118);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
        dprintf(glog_fd, "%s ", cStr);
        dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup failed to find required objects legend %d && providerID %d && providerName %d && channelID %d && channelType %d && channelName %d\n");
      }

      else
      {
        v44 = v115;
      }

      goto LABEL_121;
    }

    v94 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      v95 = CFArrayGetTypeID();
      v96 = CFGetTypeID(v70);
      *cStr = 136315906;
      *&cStr[4] = "IOReportChannels";
      *&cStr[12] = 2080;
      *&cStr[14] = " NOT";
      *&cStr[22] = 2048;
      *&cStr[24] = v95;
      LOWORD(v123) = 2048;
      *(&v123 + 2) = v96;
      v97 = v94;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      v113 = CFArrayGetTypeID();
      v114 = CFGetTypeID(v70);
      *cStr = 136315906;
      *&cStr[4] = "IOReportChannels";
      *&cStr[12] = 2080;
      *&cStr[14] = " NOT";
      *&cStr[22] = 2048;
      *&cStr[24] = v113;
      LOWORD(v123) = 2048;
      *(&v123 + 2) = v114;
      v97 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v97, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_119:
    if (glog_fd)
    {
      *&v99 = 0xAAAAAAAAAAAAAAAALL;
      *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v127 = v99;
      v128 = v99;
      v125 = v99;
      v126 = v99;
      v124 = v99;
      *&cStr[16] = v99;
      v123 = v99;
      *cStr = v99;
      memset(&v118, 0, sizeof(v118));
      v117 = 0xAAAAAAAAAAAAAAAALL;
      time(&v117);
      localtime_r(&v117, &v118);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
      dprintf(glog_fd, "%s ", cStr);
      v100 = glog_fd;
      CFArrayGetTypeID();
      CFGetTypeID(v70);
      dprintf(v100, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n");
    }

    goto LABEL_121;
  }

  v92 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    *cStr = 136315138;
    *&cStr[4] = "IOReportChannels";
    v93 = v92;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    *cStr = 136315138;
    *&cStr[4] = "IOReportChannels";
    v93 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v93, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n", cStr, 0xCu);
LABEL_116:
  if (glog_fd)
  {
    *&v98 = 0xAAAAAAAAAAAAAAAALL;
    *(&v98 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v127 = v98;
    v128 = v98;
    v125 = v98;
    v126 = v98;
    v124 = v98;
    *&cStr[16] = v98;
    v123 = v98;
    *cStr = v98;
    memset(&v118, 0, sizeof(v118));
    v117 = 0xAAAAAAAAAAAAAAAALL;
    time(&v117);
    localtime_r(&v117, &v118);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v118);
    dprintf(glog_fd, "%s ", cStr);
    dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n");
  }

LABEL_121:
  if (v44)
  {
LABEL_122:
    CFRelease(v44);
  }

  return v4;
}

uint64_t CCIOReporterFormatter::ccfree(CCIOReporterFormatter *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
    *(this + 6) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
    *(this + 5) = 0;
  }

  return CCFormatter::ccfree(this);
}

BOOL CCProfileMonitor::initWithConfigure(CCProfileMonitor *this, CCConfigure *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = pthread_mutex_init((this + 16), 0);
  if (v4)
  {
    v5 = v4;
    v6 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v5;
        v7 = v6;
LABEL_14:
        _os_log_error_impl(&dword_2452A3000, v7, OS_LOG_TYPE_ERROR, "CCProfileMonitor::initWithConfigure ERROR INIT MUTEX: %d\n", buf, 8u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      v7 = MEMORY[0x277D86220];
      goto LABEL_14;
    }

    if (glog_fd)
    {
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21 = v10;
      v22 = v10;
      v19 = v10;
      v20 = v10;
      v17 = v10;
      v18 = v10;
      *buf = v10;
      v16 = v10;
      memset(&v14, 0, sizeof(v14));
      v13 = 0xAAAAAAAAAAAAAAAALL;
      time(&v13);
      localtime_r(&v13, &v14);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v14);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::initWithConfigure ERROR INIT MUTEX: %d\n", v5);
    }

    return 0;
  }

  *(this + 11) = a2;
  (*(*a2 + 40))(a2);
  CCProfileMonitor::setStreamEventHandler(this);
  v8 = CCProfileMonitor::initializeProfilePort(this);
  if (!v8)
  {
    CCProfileMonitor::freeResources(this);
  }

  v9 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN16CCProfileMonitor17initWithConfigureEP11CCConfigure_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
  return v8;
}

void CCProfileMonitor::setStreamEventHandler(CCProfileMonitor *this)
{
  v24 = *MEMORY[0x277D85DE8];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = coreCaptureOsLog;
  if (DarwinNotifyCenter)
  {
    v4 = DarwinNotifyCenter;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v5 = v3;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::setStreamEventHandler \n", buf, 2u);
LABEL_11:
    if (glog_fd)
    {
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22 = v7;
      v23 = v7;
      v20 = v7;
      v21 = v7;
      v18 = v7;
      v19 = v7;
      *buf = v7;
      v17 = v7;
      memset(&v15, 0, sizeof(v15));
      v14 = 0xAAAAAAAAAAAAAAAALL;
      time(&v14);
      localtime_r(&v14, &v15);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler \n");
    }

    CFNotificationCenterAddObserver(v4, this, 0, @"CCDaemonProfile Changed", @"CCDaemonProfile Changed", CFNotificationSuspensionBehaviorDeliverImmediately);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ___ZN16CCProfileMonitor21setStreamEventHandlerEv_block_invoke;
    handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
    handler[4] = this;
    global_queue = dispatch_get_global_queue(0, 0);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", global_queue, handler);
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::setStreamEventHandler Registered for notification callback.\n", buf, 2u);
LABEL_19:
    if (glog_fd)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22 = v11;
      v23 = v11;
      v20 = v11;
      v21 = v11;
      v18 = v11;
      v19 = v11;
      *buf = v11;
      v17 = v11;
      memset(&v15, 0, sizeof(v15));
      v14 = 0xAAAAAAAAAAAAAAAALL;
      time(&v14);
      localtime_r(&v14, &v15);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler Registered for notification callback.\n");
    }

    return;
  }

  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v6 = v3;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v6 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v6, OS_LOG_TYPE_ERROR, "CCProfileMonitor::setStreamEventHandler Unable to get notification center for configuration reader.", buf, 2u);
LABEL_22:
  if (glog_fd)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v12;
    v23 = v12;
    v20 = v12;
    v21 = v12;
    v18 = v12;
    v19 = v12;
    *buf = v12;
    v17 = v12;
    memset(&v15, 0, sizeof(v15));
    v14 = 0xAAAAAAAAAAAAAAAALL;
    time(&v14);
    localtime_r(&v14, &v15);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler Unable to get notification center for configuration reader.");
  }
}

BOOL CCProfileMonitor::initializeProfilePort(CCProfileMonitor *this)
{
  v4[5] = *MEMORY[0x277D85DE8];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZN16CCProfileMonitor21initializeProfilePortEv_block_invoke;
  v4[3] = &__block_descriptor_40_e8_v12__0i8l;
  v4[4] = this;
  return notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", this + 20, global_queue, v4) == 0;
}

void CCProfileMonitor::freeResources(CCProfileMonitor *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::freeResources Entered\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v4;
    v21 = v4;
    v18 = v4;
    v19 = v4;
    v16 = v4;
    v17 = v4;
    *buf = v4;
    v15 = v4;
    memset(&v13, 0, sizeof(v13));
    v12 = 0xAAAAAAAAAAAAAAAALL;
    time(&v12);
    localtime_r(&v12, &v13);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v13);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::freeResources Entered\n");
  }

  if (!pthread_mutex_lock((this + 16)))
  {
    CCProfileMonitor::fProfileLoaded = 0;
    v5 = *(this + 20);
    if (v5)
    {
      notify_cancel(v5);
      *(this + 20) = 0;
    }

    v6 = *(this + 11);
    if (v6)
    {
      (*(*v6 + 48))(v6);
      *(this + 11) = 0;
    }

    v7 = *(this + 14);
    if (v7)
    {
      CFRelease(v7);
      *(this + 14) = 0;
    }

    pthread_mutex_unlock((this + 16));
    pthread_mutex_destroy((this + 16));
    v8 = *(this + 15);
    if (v8)
    {
      CFRelease(v8);
      *(this + 15) = 0;
    }

    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::freeResources done\n", buf, 2u);
LABEL_24:
    if (glog_fd)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v20 = v11;
      v21 = v11;
      v18 = v11;
      v19 = v11;
      v16 = v11;
      v17 = v11;
      *buf = v11;
      v15 = v11;
      memset(&v13, 0, sizeof(v13));
      v12 = 0xAAAAAAAAAAAAAAAALL;
      time(&v12);
      localtime_r(&v12, &v13);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v13);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::freeResources done\n");
    }
  }
}

void ___ZN16CCProfileMonitor17initWithConfigureEP11CCConfigure_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor 10 seconds since CCProfileMonitor initted, calling profileCallback(1) to check for installed profiles\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v4;
    v14 = v4;
    v11 = v4;
    v12 = v4;
    v9 = v4;
    v10 = v4;
    *buf = v4;
    v8 = v4;
    memset(&v6, 0, sizeof(v6));
    v5 = 0xAAAAAAAAAAAAAAAALL;
    time(&v5);
    localtime_r(&v5, &v6);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v6);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor 10 seconds since CCProfileMonitor initted, calling profileCallback(1) to check for installed profiles\n");
  }

  CCProfileMonitor::profileCallback(v1, 2);
}

void CCProfileMonitor::profileCallback(CCProfileMonitor *this, int a2)
{
  v92 = *MEMORY[0x277D85DE8];
  cf = 0;
  resourceData = 0;
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    v5 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      goto LABEL_7;
    }

    explicit = atomic_load_explicit((CCDaemon::getInstance(v5) + 304), memory_order_acquire);
    v7 = *(this + 105);
    *buf = 67109632;
    *&buf[4] = explicit & 1;
    *&buf[8] = 1024;
    *&buf[10] = CCProfileMonitor::fProfileLoaded;
    *&buf[14] = 1024;
    LODWORD(v85) = v7;
    v8 = v4;
  }

  else
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      goto LABEL_7;
    }

    v9 = atomic_load_explicit((CCDaemon::getInstance(v5) + 304), memory_order_acquire);
    v10 = *(this + 105);
    *buf = 67109632;
    *&buf[4] = v9 & 1;
    *&buf[8] = 1024;
    *&buf[10] = CCProfileMonitor::fProfileLoaded;
    *&buf[14] = 1024;
    LODWORD(v85) = v10;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback starting states -> isShutdownPending %d fProfileLoaded %d fProfileRemoveApplied %d\n", buf, 0x14u);
LABEL_7:
  if (glog_fd)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v90 = v11;
    v91 = v11;
    v88 = v11;
    v89 = v11;
    v87 = v11;
    v85 = v11;
    v86 = v11;
    *buf = v11;
    memset(&v81, 0, sizeof(v81));
    v80 = 0xAAAAAAAAAAAAAAAALL;
    time(&v80);
    localtime_r(&v80, &v81);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
    v12 = dprintf(glog_fd, "%s ", buf);
    v13 = glog_fd;
    v14 = atomic_load_explicit((CCDaemon::getInstance(v12) + 304), memory_order_acquire) & 1;
    v5 = dprintf(v13, "CCProfileMonitor::profileCallback starting states -> isShutdownPending %d fProfileLoaded %d fProfileRemoveApplied %d\n", v14, CCProfileMonitor::fProfileLoaded, *(this + 105));
  }

  if (atomic_load_explicit((CCDaemon::getInstance(v5) + 304), memory_order_acquire))
  {
    v15 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v16 = v15;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v16 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "CCProfileMonitor::profileCallback during shutdown (1)\n", buf, 2u);
LABEL_18:
    if (glog_fd)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v90 = v20;
      v91 = v20;
      v88 = v20;
      v89 = v20;
      v87 = v20;
      v85 = v20;
      v86 = v20;
      *buf = v20;
      memset(&v81, 0, sizeof(v81));
      v80 = 0xAAAAAAAAAAAAAAAALL;
      time(&v80);
      localtime_r(&v80, &v81);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback during shutdown (1)\n");
    }

    return;
  }

  *(this + 104) = 1;
  v17 = pthread_mutex_lock((this + 16));
  if (v17)
  {
    v18 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v19 = v18;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v19 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "CCProfileMonitor::profileCallback failed to get fMutex, exiting\n", buf, 2u);
LABEL_25:
    if (glog_fd)
    {
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v90 = v23;
      v91 = v23;
      v88 = v23;
      v89 = v23;
      v87 = v23;
      v85 = v23;
      v86 = v23;
      *buf = v23;
      memset(&v81, 0, sizeof(v81));
      v80 = 0xAAAAAAAAAAAAAAAALL;
      time(&v80);
      localtime_r(&v80, &v81);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback failed to get fMutex, exiting\n");
    }

LABEL_36:
    v32 = 0;
    v33 = 0;
    v28 = 0;
    goto LABEL_37;
  }

  if (atomic_load_explicit((CCDaemon::getInstance(v17) + 304), memory_order_acquire))
  {
    v21 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v22 = v21;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v22 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "CCProfileMonitor::profileCallback during shutdown (2)\n", buf, 2u);
LABEL_34:
    if (glog_fd)
    {
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v90 = v31;
      v91 = v31;
      v88 = v31;
      v89 = v31;
      v87 = v31;
      v85 = v31;
      v86 = v31;
      *buf = v31;
      memset(&v81, 0, sizeof(v81));
      v80 = 0xAAAAAAAAAAAAAAAALL;
      time(&v80);
      localtime_r(&v80, &v81);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback during shutdown (2)\n");
    }

    goto LABEL_36;
  }

  v24 = *MEMORY[0x277CBECE8];
  v25 = CFURLCreateWithString(*MEMORY[0x277CBECE8], @"file:///private/var/Managed%20Preferences/mobile/com.apple.corecapture.configure.plist", 0);
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = 0;
    if (CFURLCreateDataAndPropertiesFromResource(v24, v25, &resourceData, 0, 0, 0) && resourceData)
    {
      v29 = CFPropertyListCreateWithData(v24, resourceData, 0, 0, 0);
      v28 = v29;
      if (v29 && CFPropertyListIsValid(v29, kCFPropertyListXMLFormat_v1_0))
      {
        v30 = CFGetTypeID(v28);
        v27 = 2 * (v30 == CFDictionaryGetTypeID());
      }

      else
      {
        v27 = 0;
      }
    }

    CFRelease(v26);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v45 = CFURLCreateWithString(v24, @"file:///private/var/Managed%20Preferences/mobile/com.apple.corecapture.configure.bt.plist", 0);
  if (v45)
  {
    v46 = v45;
    if (CFURLCreateDataAndPropertiesFromResource(v24, v45, &cf, 0, 0, 0))
    {
      v47 = cf == 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = !v47;
    CFRelease(v46);
  }

  else
  {
    v48 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v48 && (v49 = CFURLCreateWithFileSystemPath(v24, @"/private/var/tmp/com.apple.corecaptured/com.apple.bluetooth.logging.plist", kCFURLPOSIXPathStyle, 0)) != 0)
  {
    v79 = v49;
    v33 = 0;
    if (CFURLCreateDataAndPropertiesFromResource(v24, v49, &cf, 0, 0, 0))
    {
      if (cf)
      {
        v50 = CFPropertyListCreateWithData(v24, cf, 0, 0, 0);
        v33 = v50;
        if (v50)
        {
          if (CFPropertyListIsValid(v50, kCFPropertyListXMLFormat_v1_0))
          {
            v51 = CFGetTypeID(v33);
            if (v51 == CFDictionaryGetTypeID())
            {
              ++v27;
            }
          }
        }
      }
    }
  }

  else
  {
    v33 = 0;
    v79 = 0;
  }

  v52 = coreCaptureOsLog;
  if (CCProfileMonitor::fProfileLoaded != v27)
  {
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      *buf = 67109376;
      *&buf[4] = resourceData != 0;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v54 = v52;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      *buf = 67109376;
      *&buf[4] = resourceData != 0;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v54 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v54, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback read WiFi profile plist valid: %d mask: %d\n", buf, 0xEu);
LABEL_96:
    if (glog_fd)
    {
      *&v56 = 0xAAAAAAAAAAAAAAAALL;
      *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v90 = v56;
      v91 = v56;
      v88 = v56;
      v89 = v56;
      v87 = v56;
      v85 = v56;
      v86 = v56;
      *buf = v56;
      memset(&v81, 0, sizeof(v81));
      v80 = 0xAAAAAAAAAAAAAAAALL;
      time(&v80);
      localtime_r(&v80, &v81);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback read WiFi profile plist valid: %d mask: %d\n", resourceData != 0, v27);
    }

    v57 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_104;
      }

      *buf = 67109376;
      *&buf[4] = cf != 0;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v58 = v57;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_104;
      }

      *buf = 67109376;
      *&buf[4] = cf != 0;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v58 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v58, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback read BT profile plist valid: %d mask: %d\n", buf, 0xEu);
LABEL_104:
    if (glog_fd)
    {
      *&v59 = 0xAAAAAAAAAAAAAAAALL;
      *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v90 = v59;
      v91 = v59;
      v88 = v59;
      v89 = v59;
      v87 = v59;
      v85 = v59;
      v86 = v59;
      *buf = v59;
      memset(&v81, 0, sizeof(v81));
      v80 = 0xAAAAAAAAAAAAAAAALL;
      time(&v80);
      localtime_r(&v80, &v81);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback read BT profile plist valid: %d mask: %d\n", cf != 0, v27);
    }

    v60 = coreCaptureOsLog;
    if (v27)
    {
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v61 = v60;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v61 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v61, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback Entered token:%d\n", buf, 8u);
LABEL_118:
      if (glog_fd)
      {
        *&v63 = 0xAAAAAAAAAAAAAAAALL;
        *(&v63 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v90 = v63;
        v91 = v63;
        v88 = v63;
        v89 = v63;
        v87 = v63;
        v85 = v63;
        v86 = v63;
        *buf = v63;
        memset(&v81, 0, sizeof(v81));
        v80 = 0xAAAAAAAAAAAAAAAALL;
        time(&v80);
        localtime_r(&v80, &v81);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCProfileMonitor::profileCallback Entered token:%d\n", a2);
      }

      v32 = CCProfileMonitor::mergeProfilePlist(this, v28, v33);
      Count = CFDictionaryGetCount(v32);
      *(this + 12) = Count;
      v65 = coreCaptureOsLog;
      if (Count)
      {
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_132;
          }

          *buf = 67109376;
          *&buf[4] = CCProfileMonitor::fProfileLoaded;
          *&buf[8] = 1024;
          *&buf[10] = v27;
          v66 = v65;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_132;
          }

          *buf = 67109376;
          *&buf[4] = CCProfileMonitor::fProfileLoaded;
          *&buf[8] = 1024;
          *&buf[10] = v27;
          v66 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v66, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback changed. previous state: %d, current state: %d\n", buf, 0xEu);
LABEL_132:
        if (glog_fd)
        {
          *&v69 = 0xAAAAAAAAAAAAAAAALL;
          *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v90 = v69;
          v91 = v69;
          v88 = v69;
          v89 = v69;
          v87 = v69;
          v85 = v69;
          v86 = v69;
          *buf = v69;
          memset(&v81, 0, sizeof(v81));
          v80 = 0xAAAAAAAAAAAAAAAALL;
          time(&v80);
          localtime_r(&v80, &v81);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCProfileMonitor::profileCallback changed. previous state: %d, current state: %d\n", CCProfileMonitor::fProfileLoaded, v27);
        }

        CCProfileMonitor::profileRemoved(this);
        if (CCProfileMonitor::getOwnersFromProfile(this, v32))
        {
          *(this + 12) = CFDictionaryGetCount(v32);
          v70 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v71 = v70;
LABEL_149:
              _os_log_impl(&dword_2452A3000, v71, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback Loaded \n", buf, 2u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v71 = MEMORY[0x277D86220];
            goto LABEL_149;
          }

          if (glog_fd)
          {
            *&v75 = 0xAAAAAAAAAAAAAAAALL;
            *(&v75 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v90 = v75;
            v91 = v75;
            v88 = v75;
            v89 = v75;
            v87 = v75;
            v85 = v75;
            v86 = v75;
            *buf = v75;
            memset(&v81, 0, sizeof(v81));
            v80 = 0xAAAAAAAAAAAAAAAALL;
            time(&v80);
            localtime_r(&v80, &v81);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCProfileMonitor::profileCallback Loaded \n");
          }

          CCPipeMonitor::profileLoaded(*(*(this + 11) + 16));
          *(this + 14) = CFDictionaryCreateCopy(v24, v32);
          CCProfileMonitor::applyConfiguration(this, 0, 0);
          CCProfileMonitor::fProfileLoaded = v27;
          *(this + 105) = 0;
          CFPreferencesFlushCaches();
          goto LABEL_165;
        }

        v72 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_163;
          }

          *buf = 0;
          v73 = v72;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_163;
          }

          *buf = 0;
          v73 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v73, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback getting owners from profile failed", buf, 2u);
LABEL_163:
        if (glog_fd)
        {
          *&v78 = 0xAAAAAAAAAAAAAAAALL;
          *(&v78 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v90 = v78;
          v91 = v78;
          v88 = v78;
          v89 = v78;
          v87 = v78;
          v85 = v78;
          v86 = v78;
          *buf = v78;
          memset(&v81, 0, sizeof(v81));
          v80 = 0xAAAAAAAAAAAAAAAALL;
          time(&v80);
          localtime_r(&v80, &v81);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCProfileMonitor::profileCallback getting owners from profile failed");
        }

        goto LABEL_165;
      }

      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_156;
        }

        v67 = *(this + 105);
        *buf = 67109376;
        *&buf[4] = CCProfileMonitor::fProfileLoaded;
        *&buf[8] = 1024;
        *&buf[10] = v67;
        v68 = v65;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_156;
        }

        v76 = *(this + 105);
        *buf = 67109376;
        *&buf[4] = CCProfileMonitor::fProfileLoaded;
        *&buf[8] = 1024;
        *&buf[10] = v76;
        v68 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v68, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback empty dictionary. fProfileLoaded %d fProfileRemoveApplied %d\n", buf, 0xEu);
LABEL_156:
      if (glog_fd)
      {
        *&v77 = 0xAAAAAAAAAAAAAAAALL;
        *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v90 = v77;
        v91 = v77;
        v88 = v77;
        v89 = v77;
        v87 = v77;
        v85 = v77;
        v86 = v77;
        *buf = v77;
        memset(&v81, 0, sizeof(v81));
        v80 = 0xAAAAAAAAAAAAAAAALL;
        time(&v80);
        localtime_r(&v80, &v81);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCProfileMonitor::profileCallback empty dictionary. fProfileLoaded %d fProfileRemoveApplied %d\n", CCProfileMonitor::fProfileLoaded, *(this + 105));
      }

LABEL_158:
      if ((*(this + 105) & 1) == 0)
      {
        CCProfileMonitor::profileRemoved(this);
      }

      goto LABEL_165;
    }

    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = CCProfileMonitor::fProfileLoaded;
        *&buf[8] = 1024;
        *&buf[10] = 0;
        v62 = v60;
LABEL_143:
        _os_log_impl(&dword_2452A3000, v62, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback no profile installed. previous state: %d, current state: %d\n", buf, 0xEu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = CCProfileMonitor::fProfileLoaded;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      v62 = MEMORY[0x277D86220];
      goto LABEL_143;
    }

    if (glog_fd)
    {
      *&v74 = 0xAAAAAAAAAAAAAAAALL;
      *(&v74 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v90 = v74;
      v91 = v74;
      v88 = v74;
      v89 = v74;
      v87 = v74;
      v85 = v74;
      v86 = v74;
      *buf = v74;
      memset(&v81, 0, sizeof(v81));
      v80 = 0xAAAAAAAAAAAAAAAALL;
      time(&v80);
      localtime_r(&v80, &v81);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback no profile installed. previous state: %d, current state: %d\n", CCProfileMonitor::fProfileLoaded, 0);
    }

    v32 = 0;
    goto LABEL_158;
  }

  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v27;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v53 = v52;
LABEL_89:
      _os_log_impl(&dword_2452A3000, v53, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback unchanged mask. previous state: %d, current state: %d\n", buf, 0xEu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v27;
    *&buf[8] = 1024;
    *&buf[10] = v27;
    v53 = MEMORY[0x277D86220];
    goto LABEL_89;
  }

  if (glog_fd)
  {
    *&v55 = 0xAAAAAAAAAAAAAAAALL;
    *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v90 = v55;
    v91 = v55;
    v88 = v55;
    v89 = v55;
    v87 = v55;
    v85 = v55;
    v86 = v55;
    *buf = v55;
    memset(&v81, 0, sizeof(v81));
    v80 = 0xAAAAAAAAAAAAAAAALL;
    time(&v80);
    localtime_r(&v80, &v81);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::profileCallback unchanged mask. previous state: %d, current state: %d\n", CCProfileMonitor::fProfileLoaded, v27);
  }

  v32 = 0;
LABEL_165:
  if (v79)
  {
    CFRelease(v79);
  }

LABEL_37:
  if (resourceData)
  {
    CFRelease(resourceData);
    resourceData = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  pthread_mutex_unlock((this + 16));
  *(this + 104) = 0;
  v34 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    v35 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
    if (!v35)
    {
      goto LABEL_53;
    }

    v36 = atomic_load_explicit((CCDaemon::getInstance(v35) + 304), memory_order_acquire);
    v37 = *(this + 105);
    *buf = 67109632;
    *&buf[4] = v36 & 1;
    *&buf[8] = 1024;
    *&buf[10] = CCProfileMonitor::fProfileLoaded;
    *&buf[14] = 1024;
    LODWORD(v85) = v37;
    v38 = v34;
  }

  else
  {
    v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!v39)
    {
      goto LABEL_53;
    }

    v40 = atomic_load_explicit((CCDaemon::getInstance(v39) + 304), memory_order_acquire);
    v41 = *(this + 105);
    *buf = 67109632;
    *&buf[4] = v40 & 1;
    *&buf[8] = 1024;
    *&buf[10] = CCProfileMonitor::fProfileLoaded;
    *&buf[14] = 1024;
    LODWORD(v85) = v41;
    v38 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v38, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback exiting states CCDaemon::getInstance().isShutdownPending() %d fProfileLoaded %d fProfileRemoveApplied %d\n", buf, 0x14u);
LABEL_53:
  if (glog_fd)
  {
    *&v42 = 0xAAAAAAAAAAAAAAAALL;
    *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v90 = v42;
    v91 = v42;
    v88 = v42;
    v89 = v42;
    v87 = v42;
    v85 = v42;
    v86 = v42;
    *buf = v42;
    memset(&v81, 0, sizeof(v81));
    v80 = 0xAAAAAAAAAAAAAAAALL;
    time(&v80);
    localtime_r(&v80, &v81);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v81);
    v43 = dprintf(glog_fd, "%s ", buf);
    v44 = glog_fd;
    atomic_load_explicit((CCDaemon::getInstance(v43) + 304), memory_order_acquire);
    dprintf(v44, "CCProfileMonitor::profileCallback exiting states CCDaemon::getInstance().isShutdownPending() %d fProfileLoaded %d fProfileRemoveApplied %d\n");
  }
}