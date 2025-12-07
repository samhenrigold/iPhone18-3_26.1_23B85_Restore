void sub_2452B5228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

DIR *___ZN6CCFile13captureLogRunEv_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = opendir(*(*(a1[5] + 8) + 24));
  while (1)
  {
    v2 = *(*(a1[4] + 8) + 24);
    if (!v2)
    {
      break;
    }

    v3 = readdir(v2);
    *(*(a1[6] + 8) + 24) = v3;
    if (!v3)
    {
      break;
    }

    v4 = *(*(a1[6] + 8) + 24);
    if (v4[21] != 46 || v4[22] && (v4[22] != 46 || v4[23]))
    {
      *(*(a1[7] + 8) + 24) = v4 + 21;
      v5 = *(*(a1[7] + 8) + 24);
      if (v5)
      {
        if (compressFile(*(*(a1[5] + 8) + 24), v5))
        {
          cleanupLogFile(*(*(a1[5] + 8) + 24), *(*(a1[7] + 8) + 24));
        }
      }
    }
  }

  v6 = *(*(a1[5] + 8) + 24);
  if (v6)
  {
    free(v6);
    *(*(a1[5] + 8) + 24) = 0;
  }

  result = *(*(a1[4] + 8) + 24);
  if (result)
  {
    result = closedir(result);
    *(*(a1[4] + 8) + 24) = 0;
  }

  return result;
}

uint64_t sortByModificationTime(void *a1, void *a2, void *a3)
{
  v3 = a1[64];
  v4 = a2[64];
  v5 = v3 <= v4;
  v6 = v3 < v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

__CFString *CCFile::generateCaptureDirPath(CFStringRef *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (CFStringGetLength(a1[12]) && (v8 = CFStringGetLength(a1[12]), (v9 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL)) != 0))
  {
    v10 = v9;
    v11 = a1[12];
    Length = CFStringGetLength(v11);
    CFStringGetCString(v11, v10, Length + 1, 0);
    SaveLocation = getSaveLocation(v10);
    free(v10);
  }

  else
  {
    SaveLocation = getSaveLocation(0);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 512);
  CFStringAppendCString(Mutable, SaveLocation, 0);
  CFStringAppendCString(Mutable, "/", 0);
  if (CFStringGetLength(a1[12]))
  {
    CFStringAppend(Mutable, a1[12]);
    CFStringAppendCString(Mutable, "/", 0);
  }

  v15 = strlen(a2);
  v16 = malloc_type_malloc(v15 + 128, 0x100004077774924uLL);
  if (v16)
  {
    v17 = v16;
    memset(v24, 0, 56);
    *&v23.tm_sec = a3;
    localtime_r(&v23.tm_sec, v24);
    snprintf(v17, v15 + 128, "[%04d-%02d-%02d_%02d,%02d,%02d.%06llu]=%s", *&v24[20] + 1900, *&v24[16] + 1, *&v24[12], *&v24[8], *&v24[4], *v24, a4, a2);
    CFStringAppendCString(Mutable, v17, 0);
    CFStringAppendCString(Mutable, "/", 0);
    CFStringAppendCString(Mutable, "Data", 0);
    CFStringAppendCString(Mutable, "/", 0);
    CFStringAppend(Mutable, a1[9]);
    CFStringAppendCString(Mutable, "/", 0);
    CFStringAppend(Mutable, a1[10]);
    CFStringAppendCString(Mutable, "/", 0);
    free(v17);
    return Mutable;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v18 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      v19 = v18;
LABEL_20:
      _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "CCFile::generateCaptureDirPath failed malloc\n", v24, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    v19 = MEMORY[0x277D86220];
    goto LABEL_20;
  }

  if (glog_fd)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27 = v20;
    v28 = v20;
    v25 = v20;
    v26 = v20;
    *&v24[32] = v20;
    *&v24[48] = v20;
    *v24 = v20;
    *&v24[16] = v20;
    memset(&v23, 0, sizeof(v23));
    v22 = 0xAAAAAAAAAAAAAAAALL;
    time(&v22);
    localtime_r(&v22, &v23);
    strftime(v24, 0x80uLL, "%b %d %H:%M:%S", &v23);
    dprintf(glog_fd, "%s ", v24);
    dprintf(glog_fd, "CCFile::generateCaptureDirPath failed malloc\n");
  }

  return 0;
}

__CFString *CCFile::generateFileName(CFStringRef *this, const char *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  theString = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 512, this[6]);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59 = v4;
  v60 = v4;
  v57 = v4;
  v58 = v4;
  v55 = v4;
  v56 = v4;
  *__str = v4;
  v54 = v4;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v19, 0, sizeof(v19));
  time(&v20);
  localtime_r(&v20, &v19);
  *(this + 8) = (*(this + 8) + 1) % 0x3E8u;
  v18.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v18.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v18, 0);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v5;
  v52 = v5;
  v49 = v5;
  v50 = v5;
  v47 = v5;
  v48 = v5;
  v45 = v5;
  v46 = v5;
  v43 = v5;
  v44 = v5;
  v41 = v5;
  v42 = v5;
  v39 = v5;
  v40 = v5;
  v37 = v5;
  v38 = v5;
  v35 = v5;
  v36 = v5;
  v33 = v5;
  v34 = v5;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  v30 = v5;
  v27 = v5;
  v28 = v5;
  v25 = v5;
  v26 = v5;
  v23 = v5;
  v24 = v5;
  *buffer = v5;
  v22 = v5;
  CFStringGetCString(this[11], buffer, 512, 0);
  v6 = v19.tm_year + 1900;
  v7 = v19.tm_mon + 1;
  tm_hour = v19.tm_hour;
  tm_mday = v19.tm_mday;
  tm_sec = v19.tm_sec;
  tm_min = v19.tm_min;
  tv_usec = v18.tv_usec;
  v13 = *(this + 8);
  v14 = (*(this[2]->isa + 11))(this[2]);
  snprintf(__str, 0x80uLL, "[%04d-%02d-%02d_%02d,%02d,%02d.%06u]-%s-%03d.%s", v6, v7, tm_mday, tm_hour, tm_min, tm_sec, tv_usec, buffer, v13, v14);
  v15 = this[5];
  if (v15)
  {
    CFRelease(v15);
    this[5] = 0;
  }

  this[5] = CFStringCreateWithCString(v3, __str, 0);
  CFStringAppendCString(theString, __str, 0);
  return theString;
}

uint64_t CCFile::initWithRegistryEntry(CCFile *this, CCFormatter *object)
{
  v44 = *MEMORY[0x277D85DE8];
  *(this + 3) = 0;
  *(this + 8) = 0;
  IOObjectRetain(object);
  *(this + 16) = object;
  *(this + 9) = -1;
  v4 = *MEMORY[0x277CBECE8];
  *(this + 9) = IORegistryEntryCreateCFProperty(object, @"Owner", *MEMORY[0x277CBECE8], 0);
  *(this + 10) = IORegistryEntryCreateCFProperty(object, @"Name", v4, 0);
  *(this + 11) = IORegistryEntryCreateCFProperty(object, @"Filename", v4, 0);
  *(this + 12) = IORegistryEntryCreateCFProperty(object, @"DirectoryName", v4, 0);
  *(this + 13) = IORegistryEntryCreateCFProperty(object, @"LogDataType", v4, 0);
  *(this + 14) = IORegistryEntryCreateCFProperty(object, @"PipeType", v4, 0);
  valuePtr = -1431655766;
  CFNumberGetValue(*(this + 13), kCFNumberSInt32Type, &valuePtr);
  v5 = CCFormatter::withRegistryEntry(object);
  *(this + 2) = v5;
  if (!v5)
  {
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCFile::initWithTap Failed to create formatter\n", buf, 2u);
LABEL_17:
    if (glog_fd)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v19;
      v43 = v19;
      v40 = v19;
      v41 = v19;
      v38 = v19;
      v39 = v19;
      *buf = v19;
      v37 = v19;
      memset(&v34, 0, sizeof(v34));
      v33 = 0xAAAAAAAAAAAAAAAALL;
      time(&v33);
      localtime_r(&v33, &v34);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v34);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCFile::initWithTap Failed to create formatter\n");
    }

    return 0;
  }

  (*(*v5 + 96))(v5, this, CCFile::_doWrite);
  if (CCDaemon::fIsCCDaemon)
  {
    goto LABEL_5;
  }

  v6 = CFStringCreateWithCString(0, CCDaemon::fWorkingDir, 0);
  if (!v6)
  {
    v20 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v21 = v20;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v21 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v21, OS_LOG_TYPE_ERROR, "CCFile::initWithTap create with cstring failed\n", buf, 2u);
LABEL_33:
    if (glog_fd)
    {
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v28;
      v43 = v28;
      v40 = v28;
      v41 = v28;
      v38 = v28;
      v39 = v28;
      *buf = v28;
      v37 = v28;
      memset(&v34, 0, sizeof(v34));
      v33 = 0xAAAAAAAAAAAAAAAALL;
      time(&v33);
      localtime_r(&v33, &v34);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v34);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCFile::initWithTap create with cstring failed\n");
    }

    return 0;
  }

  if (CCDaemon::fIsCCDaemon)
  {
LABEL_5:
    MutableCopy = CFStringCreateMutableCopy(v4, 512, @"/var/log/CoreCapture");
    *(this + 6) = MutableCopy;
    if (MutableCopy)
    {
      goto LABEL_6;
    }

LABEL_23:
    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v24 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v24 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCFile::initWithTap fLogDirPath is invalid\n", buf, 2u);
LABEL_27:
    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v25;
      v43 = v25;
      v40 = v25;
      v41 = v25;
      v38 = v25;
      v39 = v25;
      *buf = v25;
      v37 = v25;
      memset(&v34, 0, sizeof(v34));
      v33 = 0xAAAAAAAAAAAAAAAALL;
      time(&v33);
      localtime_r(&v33, &v34);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v34);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCFile::initWithTap fLogDirPath is invalid\n");
    }

    return 0;
  }

  v22 = v6;
  *(this + 6) = CFStringCreateMutableCopy(v4, 512, v6);
  CFRelease(v22);
  MutableCopy = *(this + 6);
  if (!MutableCopy)
  {
    goto LABEL_23;
  }

LABEL_6:
  CFStringAppendCString(MutableCopy, "/", 0);
  CFStringAppend(*(this + 6), *(this + 9));
  CFStringAppendCString(*(this + 6), "/", 0);
  CFStringAppend(*(this + 6), *(this + 10));
  CFStringAppendCString(*(this + 6), "/", 0);
  if (mkdirRecursive(*(this + 6)))
  {
    *(this + 7) = 0;
    return 1;
  }

  Length = CFStringGetLength(*(this + 6));
  v12 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!v12)
  {
    v26 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v27 = v26;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v27 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v27, OS_LOG_TYPE_ERROR, "CCFile::initWithTap memory allocation failed\n", buf, 2u);
LABEL_42:
    if (glog_fd)
    {
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v31;
      v43 = v31;
      v40 = v31;
      v41 = v31;
      v38 = v31;
      v39 = v31;
      *buf = v31;
      v37 = v31;
      memset(&v34, 0, sizeof(v34));
      v33 = 0xAAAAAAAAAAAAAAAALL;
      time(&v33);
      localtime_r(&v33, &v34);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v34);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCFile::initWithTap memory allocation failed\n");
    }

    return 0;
  }

  v13 = v12;
  v14 = *(this + 6);
  v15 = CFStringGetLength(v14);
  CString = CFStringGetCString(v14, v13, v15 + 1, 0);
  v17 = coreCaptureOsLog;
  if (!CString)
  {
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v29 = v17;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v29 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "CCFile::initWithTap Failed to get log directory \n", buf, 2u);
LABEL_47:
    if (glog_fd)
    {
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v32;
      v43 = v32;
      v40 = v32;
      v41 = v32;
      v38 = v32;
      v39 = v32;
      *buf = v32;
      v37 = v32;
      memset(&v34, 0, sizeof(v34));
      v33 = 0xAAAAAAAAAAAAAAAALL;
      time(&v33);
      localtime_r(&v33, &v34);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v34);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCFile::initWithTap Failed to get log directory \n");
    }

    goto LABEL_49;
  }

  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    v18 = v17;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    v18 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v18, OS_LOG_TYPE_ERROR, "CCFile::initWithTap Failed to create log directory  %s\n", buf, 0xCu);
LABEL_39:
  if (glog_fd)
  {
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v30;
    v43 = v30;
    v40 = v30;
    v41 = v30;
    v38 = v30;
    v39 = v30;
    *buf = v30;
    v37 = v30;
    memset(&v34, 0, sizeof(v34));
    v33 = 0xAAAAAAAAAAAAAAAALL;
    time(&v33);
    localtime_r(&v33, &v34);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v34);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::initWithTap Failed to create log directory  %s\n");
  }

LABEL_49:
  free(v13);
  return 0;
}

uint64_t CCFile::isLogdirExists(CFStringRef *this)
{
  v22 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(this[6]);
  v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v4 = this[6];
  v5 = CFStringGetLength(v4);
  CFStringGetCString(v4, v3, v5 + 1, 0);
  memset(&v21, 0, sizeof(v21));
  if (stat(v3, &v21) && (mkdirRecursive(this[6]) & 1) == 0)
  {
    v8 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315138;
      *&buf[4] = v3;
      v9 = v8;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315138;
      *&buf[4] = v3;
      v9 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v9, OS_LOG_TYPE_ERROR, "CCFile::isLogdirExists Failed to create  %s\n", buf, 0xCu);
LABEL_10:
    if (glog_fd)
    {
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v19 = v10;
      v20 = v10;
      v17 = v10;
      v18 = v10;
      v15 = v10;
      v16 = v10;
      *buf = v10;
      v14 = v10;
      memset(&v12, 0, sizeof(v12));
      v11 = 0xAAAAAAAAAAAAAAAALL;
      time(&v11);
      localtime_r(&v11, &v12);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v12);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCFile::isLogdirExists Failed to create  %s\n", v3);
    }

    v6 = 0;
    if (v3)
    {
      goto LABEL_4;
    }

    return v6;
  }

  v6 = 1;
  if (v3)
  {
LABEL_4:
    free(v3);
  }

  return v6;
}

void CCFile::copyFile(CFStringRef *this, const char *a2, int a3)
{
  v156 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBECE8];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 512, this[6]);
  CFStringAppendCString(MutableCopy, "/", 0);
  CFStringAppendCString(MutableCopy, a2, 0);
  v8 = CFStringCreateMutableCopy(v6, 512, this[7]);
  CFStringAppendCString(v8, "/", 0);
  CFStringAppendCString(v8, a2, 0);
  memset(&v155, 0, sizeof(v155));
  if (a3)
  {
    CFStringAppendCString(v8, ".gz", 0);
  }

  errnum = 0;
  Length = CFStringGetLength(MutableCopy);
  v10 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v11 = 0x27EE11000uLL;
  v12 = 0x27EE11000uLL;
  if (!v10)
  {
    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v24 = v23;
LABEL_92:
        _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCFile::copyFile unable to allocate source buffer", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = MEMORY[0x277D86220];
      goto LABEL_92;
    }

    if (glog_fd)
    {
      *&v27 = 0xAAAAAAAAAAAAAAAALL;
      *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v153 = v27;
      v154 = v27;
      v151 = v27;
      v152 = v27;
      *&buf[32] = v27;
      v150 = v27;
      *buf = v27;
      *&buf[16] = v27;
      memset(&v147, 0, sizeof(v147));
      v146 = 0xAAAAAAAAAAAAAAAALL;
      time(&v146);
      localtime_r(&v146, &v147);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCFile::copyFile unable to allocate source buffer");
    }

    CFRelease(MutableCopy);
    goto LABEL_146;
  }

  v13 = v10;
  v14 = CFStringGetLength(MutableCopy);
  CFStringGetCString(MutableCopy, v13, v14 + 1, 0);
  v15 = CFStringGetLength(v8);
  v16 = malloc_type_malloc(v15 + 1, 0x100004077774924uLL);
  if (!v16)
  {
    v25 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v26 = v25;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v26 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v26, OS_LOG_TYPE_ERROR, "CCFile::copyFile unable to allocate destination buffer", buf, 2u);
LABEL_49:
    if (glog_fd)
    {
      *&v54 = 0xAAAAAAAAAAAAAAAALL;
      *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v153 = v54;
      v154 = v54;
      v151 = v54;
      v152 = v54;
      *&buf[32] = v54;
      v150 = v54;
      *buf = v54;
      *&buf[16] = v54;
      memset(&v147, 0, sizeof(v147));
      v146 = 0xAAAAAAAAAAAAAAAALL;
      time(&v146);
      localtime_r(&v146, &v147);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCFile::copyFile unable to allocate destination buffer", v135);
    }

    goto LABEL_144;
  }

  v144 = a2;
  v17 = CFStringGetLength(v8);
  CFStringGetCString(v8, v16, v17 + 1, 0);
  if (!stat(v13, &v155))
  {
    goto LABEL_24;
  }

  v18 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v19 = *__error();
    v20 = __error();
    v21 = strerror(*v20);
    *buf = 67109378;
    *&buf[4] = v19;
    *&buf[8] = 2080;
    *&buf[10] = v21;
    v22 = v18;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v28 = *__error();
    v29 = __error();
    v30 = strerror(*v29);
    *buf = 67109378;
    *&buf[4] = v28;
    *&buf[8] = 2080;
    *&buf[10] = v30;
    v22 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v22, OS_LOG_TYPE_DEFAULT, "CCFile::copyFile: Unable to stat source path errno %d, reason %s\n", buf, 0x12u);
LABEL_22:
  v11 = 0x27EE11000;
  if (glog_fd)
  {
    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v153 = v31;
    v154 = v31;
    v151 = v31;
    v152 = v31;
    *&buf[32] = v31;
    v150 = v31;
    *buf = v31;
    *&buf[16] = v31;
    memset(&v147, 0, sizeof(v147));
    v146 = 0xAAAAAAAAAAAAAAAALL;
    time(&v146);
    localtime_r(&v146, &v147);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
    dprintf(glog_fd, "%s ", buf);
    v32 = glog_fd;
    v33 = *__error();
    v34 = __error();
    v136 = strerror(*v34);
    v35 = v32;
    v11 = 0x27EE11000uLL;
    dprintf(v35, "CCFile::copyFile: Unable to stat source path errno %d, reason %s\n", v33, v136);
  }

LABEL_24:
  st_size = v155.st_size;
  v36 = *(v11 + 2848);
  if (v36)
  {
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 136315906;
    *&buf[4] = v144;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    *&buf[22] = 2080;
    *&buf[24] = v16;
    *&buf[32] = 2048;
    *&buf[34] = st_size;
    v37 = v36;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 136315906;
    *&buf[4] = v144;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    *&buf[22] = 2080;
    *&buf[24] = v16;
    *&buf[32] = 2048;
    *&buf[34] = st_size;
    v37 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v37, OS_LOG_TYPE_DEFAULT, "CCFile::copyFile Attempt to write fileName %s, source path:%s, dest path:%s, length: %lld\n", buf, 0x2Au);
LABEL_30:
  v38 = v144;
  if (glog_fd)
  {
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v153 = v39;
    v154 = v39;
    v151 = v39;
    v152 = v39;
    *&buf[32] = v39;
    v150 = v39;
    *buf = v39;
    *&buf[16] = v39;
    memset(&v147, 0, sizeof(v147));
    v146 = 0xAAAAAAAAAAAAAAAALL;
    time(&v146);
    localtime_r(&v146, &v147);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::copyFile Attempt to write fileName %s, source path:%s, dest path:%s, length: %lld\n", v144, v13, v16, st_size);
  }

  if (!ifSeedCreateClassCProtectedFile(v16))
  {
    goto LABEL_127;
  }

  v40 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  v41 = fopen(v13, "rb");
  if (!v41)
  {
    v55 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }

      v56 = *__error();
      v57 = __error();
      v58 = strerror(*v57);
      *buf = 136315650;
      *&buf[4] = v13;
      *&buf[12] = 1024;
      *&buf[14] = v56;
      *&buf[18] = 2080;
      *&buf[20] = v58;
      v59 = v55;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }

      v64 = *__error();
      v65 = __error();
      v66 = strerror(*v65);
      *buf = 136315650;
      *&buf[4] = v13;
      *&buf[12] = 1024;
      *&buf[14] = v64;
      *&buf[18] = 2080;
      *&buf[20] = v66;
      v59 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v59, OS_LOG_TYPE_DEFAULT, "CCFile::copyFile Failed to open source file:%s errno %d, reason %s\n", buf, 0x1Cu);
LABEL_66:
    if (glog_fd)
    {
      *&v67 = 0xAAAAAAAAAAAAAAAALL;
      *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v153 = v67;
      v154 = v67;
      v151 = v67;
      v152 = v67;
      *&buf[32] = v67;
      v150 = v67;
      *buf = v67;
      *&buf[16] = v67;
      memset(&v147, 0, sizeof(v147));
      v146 = 0xAAAAAAAAAAAAAAAALL;
      time(&v146);
      localtime_r(&v146, &v147);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
      dprintf(glog_fd, "%s ", buf);
      v68 = glog_fd;
      v69 = *__error();
      v70 = __error();
      v71 = strerror(*v70);
      dprintf(v68, "CCFile::copyFile Failed to open source file:%s errno %d, reason %s\n", v13, v69, v71);
    }

    goto LABEL_125;
  }

  v42 = v41;
  if (!a3)
  {
    v60 = fopen(v16, "wb");
    if (v60)
    {
      v61 = v60;
      while (1)
      {
        v62 = 1;
        v63 = fread(v40, 1uLL, 0x4000uLL, v42);
        if (!(v63 >> 14))
        {
          if (ferror(v42))
          {
            v84 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                *&buf[4] = v13;
                v85 = v84;
                goto LABEL_154;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = v13;
              v85 = MEMORY[0x277D86220];
LABEL_154:
              _os_log_error_impl(&dword_2452A3000, v85, OS_LOG_TYPE_ERROR, "CCFile::copyFile Error reading from source buffer %s\n", buf, 0xCu);
            }

            v12 = 0x27EE11000uLL;
            if (glog_fd)
            {
              *&v100 = 0xAAAAAAAAAAAAAAAALL;
              *(&v100 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v153 = v100;
              v154 = v100;
              v151 = v100;
              v152 = v100;
              *&buf[32] = v100;
              v150 = v100;
              *buf = v100;
              *&buf[16] = v100;
              memset(&v147, 0, sizeof(v147));
              v146 = 0xAAAAAAAAAAAAAAAALL;
              time(&v146);
              localtime_r(&v146, &v147);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "CCFile::copyFile Error reading from source buffer %s\n", v13);
            }

            goto LABEL_110;
          }

          v62 = feof(v42) == 0;
        }

        if (fwrite(v40, 1uLL, v63, v61) != v63 && ferror(v61))
        {
          v86 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = v16;
              v87 = v86;
              goto LABEL_106;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = v16;
            v87 = MEMORY[0x277D86220];
LABEL_106:
            _os_log_impl(&dword_2452A3000, v87, OS_LOG_TYPE_DEFAULT, "CCFile::copyFile Error writing to destination buffer: %s \n", buf, 0xCu);
          }

          if (glog_fd)
          {
            *&v101 = 0xAAAAAAAAAAAAAAAALL;
            *(&v101 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v153 = v101;
            v154 = v101;
            v151 = v101;
            v152 = v101;
            *&buf[32] = v101;
            v150 = v101;
            *buf = v101;
            *&buf[16] = v101;
            memset(&v147, 0, sizeof(v147));
            v146 = 0xAAAAAAAAAAAAAAAALL;
            time(&v146);
            localtime_r(&v146, &v147);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCFile::copyFile Error writing to destination buffer: %s \n", v16);
          }

LABEL_109:
          fflush(v61);
          v12 = 0x27EE11000;
LABEL_110:
          fclose(v42);
          v95 = v61;
LABEL_111:
          fclose(v95);
          goto LABEL_125;
        }

        if (!v62)
        {
          goto LABEL_109;
        }
      }
    }

    v77 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

      v78 = *__error();
      v79 = __error();
      v80 = strerror(*v79);
      *buf = 67109378;
      *&buf[4] = v78;
      *&buf[8] = 2080;
      *&buf[10] = v80;
      v81 = v77;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

      v128 = *__error();
      v129 = __error();
      v130 = strerror(*v129);
      *buf = 67109378;
      *&buf[4] = v128;
      *&buf[8] = 2080;
      *&buf[10] = v130;
      v81 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v81, OS_LOG_TYPE_ERROR, "fopen failed errno = %d, reason : %s\n", buf, 0x12u);
LABEL_87:
    if (glog_fd)
    {
      *&v90 = 0xAAAAAAAAAAAAAAAALL;
      *(&v90 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v153 = v90;
      v154 = v90;
      v151 = v90;
      v152 = v90;
      *&buf[32] = v90;
      v150 = v90;
      *buf = v90;
      *&buf[16] = v90;
      memset(&v147, 0, sizeof(v147));
      v146 = 0xAAAAAAAAAAAAAAAALL;
      time(&v146);
      localtime_r(&v146, &v147);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
      dprintf(glog_fd, "%s ", buf);
      v89 = "fopen failed errno = %d, reason : %s\n";
      goto LABEL_89;
    }

LABEL_90:
    v95 = v42;
    goto LABEL_111;
  }

  v43 = gzopen(v16, "wb");
  if (!v43)
  {
    v72 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      v73 = *__error();
      v74 = __error();
      v75 = strerror(*v74);
      *buf = 67109378;
      *&buf[4] = v73;
      *&buf[8] = 2080;
      *&buf[10] = v75;
      v76 = v72;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      v125 = *__error();
      v126 = __error();
      v127 = strerror(*v126);
      *buf = 67109378;
      *&buf[4] = v125;
      *&buf[8] = 2080;
      *&buf[10] = v127;
      v76 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v76, OS_LOG_TYPE_ERROR, "gzopen failed errno = %d, reason : %s\n", buf, 0x12u);
LABEL_84:
    if (glog_fd)
    {
      *&v88 = 0xAAAAAAAAAAAAAAAALL;
      *(&v88 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v153 = v88;
      v154 = v88;
      v151 = v88;
      v152 = v88;
      *&buf[32] = v88;
      v150 = v88;
      *buf = v88;
      *&buf[16] = v88;
      memset(&v147, 0, sizeof(v147));
      v146 = 0xAAAAAAAAAAAAAAAALL;
      time(&v146);
      localtime_r(&v146, &v147);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
      dprintf(glog_fd, "%s ", buf);
      v89 = "gzopen failed errno = %d, reason : %s\n";
LABEL_89:
      v91 = glog_fd;
      v92 = *__error();
      v93 = __error();
      v137 = strerror(*v93);
      v94 = v91;
      v12 = 0x27EE11000;
      dprintf(v94, v89, v92, v137);
      goto LABEL_90;
    }

    goto LABEL_90;
  }

  v44 = v43;
  while (1)
  {
    v45 = 1;
    v46 = fread(v40, 1uLL, 0x4000uLL, v42);
    v47 = v46;
    if (!(v46 >> 14))
    {
      if (!ferror(v42))
      {
        v45 = feof(v42) == 0;
        goto LABEL_40;
      }

      v82 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        v83 = v82;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        v83 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v83, OS_LOG_TYPE_ERROR, "CCFile::copyFile Error reading from source buffer %s\n", buf, 0xCu);
LABEL_99:
      if (glog_fd)
      {
        *&v99 = 0xAAAAAAAAAAAAAAAALL;
        *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v153 = v99;
        v154 = v99;
        v151 = v99;
        v152 = v99;
        *&buf[32] = v99;
        v150 = v99;
        *buf = v99;
        *&buf[16] = v99;
        memset(&v147, 0, sizeof(v147));
        v146 = 0xAAAAAAAAAAAAAAAALL;
        time(&v146);
        localtime_r(&v146, &v147);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCFile::copyFile Error reading from source buffer %s\n");
      }

      goto LABEL_124;
    }

LABEL_40:
    if (!gzwrite(v44, v40, v47))
    {
      v48 = gzerror(v44, &errnum);
      if (errnum)
      {
        break;
      }
    }

    if (!v45)
    {
      errnum = gzflush(v44, 4);
      if ((errnum & 0x80000000) == 0 || !*__error())
      {
        goto LABEL_124;
      }

      v145 = 0;
      v49 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_116;
        }

        v50 = *__error();
        v140 = errnum;
        v51 = __error();
        v138 = strerror(*v51);
        v52 = gzerror(v44, &v145);
        *buf = 67109890;
        *&buf[4] = v50;
        *&buf[8] = 1024;
        *&buf[10] = v140;
        *&buf[14] = 2080;
        *&buf[16] = v138;
        *&buf[24] = 2080;
        *&buf[26] = v52;
        v53 = v49;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_116;
        }

        v131 = *__error();
        v142 = errnum;
        v132 = __error();
        v133 = strerror(*v132);
        v134 = gzerror(v44, &v145);
        *buf = 67109890;
        *&buf[4] = v131;
        *&buf[8] = 1024;
        *&buf[10] = v142;
        *&buf[14] = 2080;
        *&buf[16] = v133;
        *&buf[24] = 2080;
        *&buf[26] = v134;
        v53 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v53, OS_LOG_TYPE_ERROR, "gzflush failed errno = %d, errnum = %d, reason : %s, %s\n", buf, 0x22u);
LABEL_116:
      if (glog_fd)
      {
        *&v103 = 0xAAAAAAAAAAAAAAAALL;
        *(&v103 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v153 = v103;
        v154 = v103;
        v151 = v103;
        v152 = v103;
        *&buf[32] = v103;
        v150 = v103;
        *buf = v103;
        *&buf[16] = v103;
        memset(&v147, 0, sizeof(v147));
        v146 = 0xAAAAAAAAAAAAAAAALL;
        time(&v146);
        localtime_r(&v146, &v147);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
        dprintf(glog_fd, "%s ", buf);
        v141 = glog_fd;
        v139 = *__error();
        v104 = errnum;
        v105 = __error();
        v106 = strerror(*v105);
        v107 = gzerror(v44, &v145);
        dprintf(v141, "gzflush failed errno = %d, errnum = %d, reason : %s, %s\n", v139, v104, v106, v107);
      }

      v108 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_122;
        }

        *buf = 67109120;
        *&buf[4] = v145;
        v109 = v108;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_122;
        }

        *buf = 67109120;
        *&buf[4] = v145;
        v109 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v109, OS_LOG_TYPE_ERROR, "gzflush error code = %d\n", buf, 8u);
LABEL_122:
      if (glog_fd)
      {
        *&v110 = 0xAAAAAAAAAAAAAAAALL;
        *(&v110 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v153 = v110;
        v154 = v110;
        v151 = v110;
        v152 = v110;
        *&buf[32] = v110;
        v150 = v110;
        *buf = v110;
        *&buf[16] = v110;
        memset(&v147, 0, sizeof(v147));
        v146 = 0xAAAAAAAAAAAAAAAALL;
        time(&v146);
        localtime_r(&v146, &v147);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "gzflush error code = %d\n");
      }

      goto LABEL_124;
    }
  }

  v96 = v48;
  v97 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = v96;
      v98 = v97;
      goto LABEL_156;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = v96;
    v98 = MEMORY[0x277D86220];
LABEL_156:
    _os_log_error_impl(&dword_2452A3000, v98, OS_LOG_TYPE_ERROR, "CCFile::copyFile  Error writing to destination buffer %s: %s\n", buf, 0x16u);
  }

  if (glog_fd)
  {
    *&v102 = 0xAAAAAAAAAAAAAAAALL;
    *(&v102 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v153 = v102;
    v154 = v102;
    v151 = v102;
    v152 = v102;
    *&buf[32] = v102;
    v150 = v102;
    *buf = v102;
    *&buf[16] = v102;
    memset(&v147, 0, sizeof(v147));
    v146 = 0xAAAAAAAAAAAAAAAALL;
    time(&v146);
    localtime_r(&v146, &v147);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::copyFile  Error writing to destination buffer %s: %s\n");
  }

LABEL_124:
  fclose(v42);
  gzclose(v44);
  v12 = 0x27EE11000uLL;
LABEL_125:
  v38 = v144;
  if (v40)
  {
    free(v40);
  }

LABEL_127:
  v111 = stat(v16, &v155);
  v112 = coreCaptureOsLog;
  if (!v111)
  {
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_142;
      }

      *buf = 136315650;
      *&buf[4] = v38;
      *&buf[12] = 2048;
      *&buf[14] = st_size;
      *&buf[22] = 2048;
      *&buf[24] = v155.st_size;
      v117 = v112;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_142;
      }

      *buf = 136315650;
      *&buf[4] = v38;
      *&buf[12] = 2048;
      *&buf[14] = st_size;
      *&buf[22] = 2048;
      *&buf[24] = v155.st_size;
      v117 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v117, OS_LOG_TYPE_DEFAULT, "CCFile::copyFile Wrote fileName %s with source length: %lld archive length: %lld\n", buf, 0x20u);
LABEL_142:
    if (*(v12 + 2856))
    {
      *&v124 = 0xAAAAAAAAAAAAAAAALL;
      *(&v124 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v153 = v124;
      v154 = v124;
      v151 = v124;
      v152 = v124;
      *&buf[32] = v124;
      v150 = v124;
      *buf = v124;
      *&buf[16] = v124;
      memset(&v147, 0, sizeof(v147));
      v146 = 0xAAAAAAAAAAAAAAAALL;
      time(&v146);
      localtime_r(&v146, &v147);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
      dprintf(*(v12 + 2856), "%s ", buf);
      dprintf(*(v12 + 2856), "CCFile::copyFile Wrote fileName %s with source length: %lld archive length: %lld\n");
    }

    goto LABEL_144;
  }

  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      v113 = *__error();
      v114 = __error();
      v115 = strerror(*v114);
      *buf = 67109378;
      *&buf[4] = v113;
      *&buf[8] = 2080;
      *&buf[10] = v115;
      v116 = v112;
      goto LABEL_136;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v118 = *__error();
    v119 = __error();
    v120 = strerror(*v119);
    *buf = 67109378;
    *&buf[4] = v118;
    *&buf[8] = 2080;
    *&buf[10] = v120;
    v116 = MEMORY[0x277D86220];
LABEL_136:
    _os_log_impl(&dword_2452A3000, v116, OS_LOG_TYPE_DEFAULT, "CCFile::copyFile Unable to stat dest path errno = %d, reason %s\n", buf, 0x12u);
  }

  if (*(v12 + 2856))
  {
    *&v121 = 0xAAAAAAAAAAAAAAAALL;
    *(&v121 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v153 = v121;
    v154 = v121;
    v151 = v121;
    v152 = v121;
    *&buf[32] = v121;
    v150 = v121;
    *buf = v121;
    *&buf[16] = v121;
    memset(&v147, 0, sizeof(v147));
    v146 = 0xAAAAAAAAAAAAAAAALL;
    time(&v146);
    localtime_r(&v146, &v147);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v147);
    dprintf(*(v12 + 2856), "%s ", buf);
    v122 = *(v12 + 2856);
    __error();
    v123 = __error();
    strerror(*v123);
    dprintf(v122, "CCFile::copyFile Unable to stat dest path errno = %d, reason %s\n");
  }

LABEL_144:
  free(v13);
  CFRelease(MutableCopy);
  if (v16)
  {
    free(v16);
  }

LABEL_146:
  CFRelease(v8);
}

uint64_t CCFile::captureLog(uint64_t a1, uint64_t a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v44 = *MEMORY[0x277D85DE8];
  v11 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = v11;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "CCFile::captureLog\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v13;
    v43 = v13;
    v40 = v13;
    v41 = v13;
    v39 = v13;
    v37 = v13;
    v38 = v13;
    *buf = v13;
    memset(&v35, 0, sizeof(v35));
    v34[0] = 0xAAAAAAAAAAAAAAAALL;
    time(v34);
    localtime_r(v34, &v35);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::captureLog\n");
  }

  v14 = *(a1 + 56);
  if (!v14)
  {
    v21 = malloc_type_malloc(a6 + a4, 0x100004077774924uLL);
    v22 = memcpy(v21, a3, a4);
    if (a5)
    {
      v22 = memcpy(&v21[a4], a5, a6);
    }

    *v34 = *v21;
    Instance = CCDaemon::getInstance(v22);
    if (atomic_load_explicit(CCDaemon::initialized, memory_order_acquire))
    {
      v24 = CCDaemon::getInstance(Instance);
      CCDaemon::setCaptureIdAndReason(v24, v34, v21 + 16);
    }

    v25 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = v34[0];
        *&buf[8] = 1024;
        *&buf[10] = v34[1];
        *&buf[14] = 2080;
        *&v37 = v21 + 16;
        v26 = v25;
LABEL_30:
        _os_log_impl(&dword_2452A3000, v26, OS_LOG_TYPE_DEFAULT, "CCFile::captureLog Received Capture notice id: %d.%06d, reason = %s\n", buf, 0x18u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *&buf[4] = v34[0];
      *&buf[8] = 1024;
      *&buf[10] = v34[1];
      *&buf[14] = 2080;
      *&v37 = v21 + 16;
      v26 = MEMORY[0x277D86220];
      goto LABEL_30;
    }

    if (glog_fd)
    {
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v29;
      v43 = v29;
      v40 = v29;
      v41 = v29;
      v39 = v29;
      v37 = v29;
      v38 = v29;
      *buf = v29;
      memset(&v35, 0, sizeof(v35));
      v33 = 0xAAAAAAAAAAAAAAAALL;
      time(&v33);
      localtime_r(&v33, &v35);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
      dprintf(glog_fd, "%s ", buf);
      v30 = v34[0];
      v31 = v34[1];
      dprintf(glog_fd, "CCFile::captureLog Received Capture notice id: %d.%06d, reason = %s\n", LODWORD(v34[0]), LODWORD(v34[1]), v21 + 16);
    }

    else
    {
      v30 = v34[0];
      v31 = v34[1];
    }

    writeMetadataFiles(*(a1 + 96), v21 + 16, v30, v31);
    v28 = CCFile::writeDataFiles(a1);
    free(v21);
    return v28;
  }

  Length = CFStringGetLength(v14);
  v16 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v17 = *(a1 + 56);
  v18 = CFStringGetLength(v17);
  CFStringGetCString(v17, v16, v18 + 1, 0);
  v19 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v16;
      v20 = v19;
LABEL_22:
      _os_log_impl(&dword_2452A3000, v20, OS_LOG_TYPE_DEFAULT, "CCFile::captureLog Capture(%s) is in progress. Ignoring new one.\n", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v16;
    v20 = MEMORY[0x277D86220];
    goto LABEL_22;
  }

  if (glog_fd)
  {
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v27;
    v43 = v27;
    v40 = v27;
    v41 = v27;
    v39 = v27;
    v37 = v27;
    v38 = v27;
    *buf = v27;
    memset(&v35, 0, sizeof(v35));
    v34[0] = 0xAAAAAAAAAAAAAAAALL;
    time(v34);
    localtime_r(v34, &v35);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::captureLog Capture(%s) is in progress. Ignoring new one.\n", v16);
  }

  if (v16)
  {
    free(v16);
  }

  return 0;
}

uint64_t CCFile::writeDataFiles(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 144))(a1);
  a1[7] = v2;
  v3 = mkdirRecursive(v2);
  if (v3)
  {
    if (*(a1 + 9) != -1)
    {
      (*(*a1 + 112))(a1);
    }

    (*(*a1 + 152))(a1);
LABEL_16:
    v14 = a1[7];
    if (v14)
    {
      CFRelease(v14);
      a1[7] = 0;
    }

    return v3;
  }

  Length = CFStringGetLength(a1[7]);
  v5 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v5)
  {
    v6 = v5;
    v7 = a1[7];
    v8 = CFStringGetLength(v7);
    CFStringGetCString(v7, v6, v8 + 1, 0);
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = v6;
        v10 = v9;
LABEL_23:
        _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCFile::captureLog Failed to create directory %s\n", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v6;
      v10 = MEMORY[0x277D86220];
      goto LABEL_23;
    }

    if (glog_fd)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v25 = v13;
      v26 = v13;
      v23 = v13;
      v24 = v13;
      v21 = v13;
      v22 = v13;
      *buf = v13;
      v20 = v13;
      memset(&v18, 0, sizeof(v18));
      v17 = 0xAAAAAAAAAAAAAAAALL;
      time(&v17);
      localtime_r(&v17, &v18);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCFile::captureLog Failed to create directory %s\n", v6);
    }

    free(v6);
    goto LABEL_16;
  }

  v11 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v12 = v11;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v12 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "CCFile::writeDataFiles memory allocation failed\n", buf, 2u);
LABEL_20:
  if (glog_fd)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = v16;
    v26 = v16;
    v23 = v16;
    v24 = v16;
    v21 = v16;
    v22 = v16;
    *buf = v16;
    v20 = v16;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::writeDataFiles memory allocation failed\n");
  }

  return v3;
}

uint64_t CCFile::ccfree(CCFile *this)
{
  result = CCFile::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

uint64_t CCFile::freeResources(CCFile *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    *(this + 2) = 0;
  }

  if (*(this + 9) != -1)
  {
    (*(*this + 176))(this);
    close(*(this + 9));
    *(this + 9) = -1;
  }

  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
    *(this + 6) = 0;
  }

  v4 = *(this + 7);
  if (v4)
  {
    CFRelease(v4);
    *(this + 7) = 0;
  }

  v5 = *(this + 9);
  if (v5)
  {
    CFRelease(v5);
    *(this + 9) = 0;
  }

  v6 = *(this + 10);
  if (v6)
  {
    CFRelease(v6);
    *(this + 10) = 0;
  }

  v7 = *(this + 11);
  if (v7)
  {
    CFRelease(v7);
    *(this + 11) = 0;
  }

  v8 = *(this + 12);
  if (v8)
  {
    CFRelease(v8);
    *(this + 12) = 0;
  }

  v9 = *(this + 13);
  if (v9)
  {
    CFRelease(v9);
    *(this + 13) = 0;
  }

  v10 = *(this + 5);
  if (v10)
  {
    CFRelease(v10);
    *(this + 5) = 0;
  }

  result = *(this + 16);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 16) = 0;
  }

  return result;
}

CCFile *CCFile::withRegistryEntry(CCFile *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    *&buf[4] = this;
    v3 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    *&buf[4] = this;
    v3 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "CCFile::withRegistryEntry() entered entry:%u\n", buf, 8u);
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
    dprintf(glog_fd, "CCFile::withRegistryEntry() entered entry:%u\n", this);
  }

  CFProperty = IORegistryEntryCreateCFProperty(this, @"LogType", *MEMORY[0x277CBECE8], 0);
  valuePtr = -1431655766;
  CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  v6 = valuePtr;
  if (valuePtr < 2)
  {
    return CCLogFile::withRegistryEntry(this);
  }

  if (valuePtr == 2)
  {
    CCDataFile::withRegistryEntry(this);
  }

  v8 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      v9 = v8;
LABEL_23:
      _os_log_error_impl(&dword_2452A3000, v9, OS_LOG_TYPE_ERROR, "CCFile::withTap Unsupported file type(%d) \n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    v9 = MEMORY[0x277D86220];
    goto LABEL_23;
  }

  if (glog_fd)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v10;
    v21 = v10;
    v18 = v10;
    v19 = v10;
    v16 = v10;
    v17 = v10;
    *buf = v10;
    v15 = v10;
    memset(&v13, 0, sizeof(v13));
    v12 = 0xAAAAAAAAAAAAAAAALL;
    time(&v12);
    localtime_r(&v12, &v13);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v13);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::withTap Unsupported file type(%d) \n", valuePtr);
  }

  return 0;
}

void CCFile::populateCommonTelemetryDictionary(CCFile *this, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(this + 9);
  if (v4)
  {
    copyCFStringRefToXPCDictionary(v4, a2, "Owner");
  }

  v5 = *(this + 10);
  if (v5)
  {
    copyCFStringRefToXPCDictionary(v5, a2, "Name");
  }

  v6 = *(this + 12);
  if (v6)
  {
    copyCFStringRefToXPCDictionary(v6, a2, "DirectoryName");
  }

  v7 = *(this + 11);
  if (v7)
  {
    copyCFStringRefToXPCDictionary(v7, a2, "Filename");
  }

  CFProperty = IORegistryEntryCreateCFProperty(*(this + 16), @"LogPolicy", *MEMORY[0x277CBECE8], 0);
  valuePtr = -1431655766;
  if (CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr))
  {
    v9 = "Continuous";
    if (valuePtr != 1)
    {
      v9 = "Unknown";
    }

    if (valuePtr)
    {
      v10 = v9;
    }

    else
    {
      v10 = "Capture";
    }

    xpc_dictionary_set_string(a2, "LogPolicy", v10);
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  v17 = -1431655766;
  if (CFNumberGetValue(*(this + 14), kCFNumberSInt32Type, &v17))
  {
    v11 = "Data";
    if (v17 != 1)
    {
      v11 = "Unknown";
    }

    if (v17)
    {
      v12 = v11;
    }

    else
    {
      v12 = "Log";
    }

    xpc_dictionary_set_string(a2, "PipeType", v12);
  }

  v16 = -1431655766;
  if (CFNumberGetValue(*(this + 13), kCFNumberSInt32Type, &v16))
  {
    if (v16 > 6)
    {
      v13 = "Unknown";
    }

    else
    {
      v13 = off_278E30718[v16];
    }

    xpc_dictionary_set_string(a2, "LogDataType", v13);
  }

  v14 = *(this + 30) - 1;
  if (v14 > 2)
  {
    v15 = "Unknown";
  }

  else
  {
    v15 = off_278E30750[v14];
  }

  xpc_dictionary_set_string(a2, "FileCloseReason", v15);
}

uint64_t CCFormatter::doWrite(CCFormatter *this, void *a2)
{
  if (*(this + 3) && (v2 = *(this + 2)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t CCFormatter::initWithRegistryEntry(CCFormatter *this, io_object_t object)
{
  IOObjectRetain(object);
  *(this + 3) = object;
  return 1;
}

uint64_t CCFormatter::ccfree(CCFormatter *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 3) = 0;
  }

  v3 = *(*this + 8);

  return v3(this);
}

uint64_t CCFormatter::withRegistryEntry(CCFormatter *this)
{
  v19 = *MEMORY[0x277D85DE8];
  CFProperty = IORegistryEntryCreateCFProperty(this, @"LogDataType", *MEMORY[0x277CBECE8], 0);
  valuePtr = -1431655766;
  CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
  v3 = valuePtr;
  if (valuePtr <= 2)
  {
    switch(valuePtr)
    {
      case 0:
        CCPcapngFormatter::withRegistryEntry(this);
      case 1:
        CCTextFormatter::withRegistryEntry(this);
      case 2:
        CCRawFormatter::withRegistryEntry(this);
    }
  }

  else
  {
    if (valuePtr <= 4)
    {
      if (valuePtr != 3)
      {
        CCOSSerializeFormatter::withRegistryEntry(this);
      }

      CCIOReporterFormatter::withRegistryEntry(this);
    }

    if (valuePtr == 5)
    {
      CCOSSerializeWithIOReporterFormatter::withRegistryEntry(this);
    }

    if (valuePtr == 6)
    {
      CCCrashTracerFormatter::withRegistryEntry(this);
    }
  }

  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 67109120;
    *&buf[4] = v3;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 67109120;
    *&buf[4] = v3;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "CCFormatter::withLogType Unsupported log data type(%d) \n", buf, 8u);
LABEL_22:
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
    memset(&v9, 0, sizeof(v9));
    v8 = 0xAAAAAAAAAAAAAAAALL;
    time(&v8);
    localtime_r(&v8, &v9);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v9);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFormatter::withLogType Unsupported log data type(%d) \n", valuePtr);
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return 0;
}

uint64_t CCFormatter::freeResources(CCFormatter *this)
{
  result = *(this + 3);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 3) = 0;
  }

  return result;
}

uint64_t CCLogPipeInterface::ccfree(CCLogPipeInterface *this)
{
  CCLogPipeInterface::freeResources(this);
  result = CCPipeInterface::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

uint64_t CCLogPipeInterface::freeResources(uint64_t this)
{
  if (*(this + 80) >= 3)
  {
    v1 = this;
    this = IOConnectCallScalarMethod(*(this + 88), 2u, 0, 0, 0, 0);
    *(v1 + 80) = 1;
  }

  return this;
}

uint64_t CCLogPipeInterface::mapPipe(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v4 = MEMORY[0x277D85F48];
  result = MEMORY[0x245D67790](*(a1 + 88), 0, *MEMORY[0x277D85F48], a2, a2 + 8, 1);
  if (!result)
  {
    return MEMORY[0x245D67790](*(a1 + 88), 1, *v4, a2 + 16, v6, 1);
  }

  return result;
}

uint64_t CCLogPipeInterface::unmapPipe(uint64_t a1, void *a2)
{
  result = MEMORY[0x245D677B0](*(a1 + 88), 0, *MEMORY[0x277D85F48], *a2);
  if (!result)
  {

    JUMPOUT(0x245D677B0);
  }

  return result;
}

void CCLogTap::tapLoopImpl(CCLogTap *this)
{
  block[6] = *MEMORY[0x277D85DE8];
  v2 = *(this + 8);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (CCTap::isDumpToDiskAllowed(v2))
  {
    pthread_mutex_lock((*(this + 8) + 16));
    v4 = *(this + 56);
    pthread_mutex_unlock((*(this + 8) + 16));
    if ((v4 & 1) == 0)
    {
      v5 = (*(**(this + 8) + 104))(*(this + 8));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN8CCLogTap11tapLoopImplEv_block_invoke;
      block[3] = &__block_descriptor_tmp_612;
      block[4] = this;
      block[5] = v3;
      dispatch_async(v5, block);
    }
  }

  else
  {
    v6 = *(*this + 128);

    v6(this);
  }
}

void ___ZN8CCLogTap11tapLoopImplEv_block_invoke(CCDaemon *a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4);
  if (atomic_load_explicit((CCDaemon::getInstance(a1) + 304), memory_order_acquire))
  {
    return;
  }

  v3 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v4 = *(v2 + 4);
    CStringPtr = CFStringGetCStringPtr(*(v2 + 5), 0);
    v6 = CFStringGetCStringPtr(*(v2 + 6), 0);
    *buf = 136316162;
    *&buf[4] = "tapLoopImpl_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 175;
    *&buf[18] = 1024;
    *&buf[20] = v4;
    *&buf[24] = 2080;
    *&buf[26] = CStringPtr;
    *&buf[34] = 2080;
    *&buf[36] = v6;
    v7 = v3;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v8 = *(v2 + 4);
    v9 = CFStringGetCStringPtr(*(v2 + 5), 0);
    v10 = CFStringGetCStringPtr(*(v2 + 6), 0);
    *buf = 136316162;
    *&buf[4] = "tapLoopImpl_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 175;
    *&buf[18] = 1024;
    *&buf[20] = v8;
    *&buf[24] = 2080;
    *&buf[26] = v9;
    *&buf[34] = 2080;
    *&buf[36] = v10;
    v7 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCLogTap::%s:%d tapLoopImpl entry:%u Owner:%s Name:%s\n", buf, 0x2Cu);
LABEL_8:
  if (glog_fd)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v78 = v11;
    v79 = v11;
    v76 = v11;
    v77 = v11;
    *&buf[32] = v11;
    v75 = v11;
    *buf = v11;
    *&buf[16] = v11;
    memset(&v73, 0, sizeof(v73));
    v72 = 0xAAAAAAAAAAAAAAAALL;
    time(&v72);
    localtime_r(&v72, &v73);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v73);
    dprintf(glog_fd, "%s ", buf);
    v12 = glog_fd;
    v13 = *(v2 + 4);
    v14 = CFStringGetCStringPtr(*(v2 + 5), 0);
    v15 = CFStringGetCStringPtr(*(v2 + 6), 0);
    dprintf(v12, "CCLogTap::%s:%d tapLoopImpl entry:%u Owner:%s Name:%s\n", "tapLoopImpl_block_invoke", 175, v13, v14, v15);
  }

  pthread_mutex_lock((*(v2 + 8) + 16));
  v16 = *(v2 + 56);
  pthread_mutex_unlock((*(v2 + 8) + 16));
  if ((v16 & 1) == 0)
  {
    if (*(v2 + 96) == 1)
    {
      *(v2 + 48) = 256;
      return;
    }

    __dmb(0xBu);
    *(v2 + 349) = 1;
    v17 = *(a1 + 5);
    if (!v17)
    {
      v23 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v24 = *(v2 + 4);
        *buf = 67109120;
        *&buf[4] = v24;
        goto LABEL_21;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      goto LABEL_37;
    }

    v18 = CCLogPipeInterface::mapPipe(v17, v2 + 184);
    if (v18)
    {
      v19 = v18;
      v20 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        v21 = *(v2 + 4);
        *buf = 67109376;
        *&buf[4] = v21;
        *&buf[8] = 1024;
        *&buf[10] = v19;
        v22 = v20;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        v70 = *(v2 + 4);
        *buf = 67109376;
        *&buf[4] = v70;
        *&buf[8] = 1024;
        *&buf[10] = v19;
        v22 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "CCLogTap::tapLoopImpl() entry:%u failed to map pipe with rc[0x%08x]\n", buf, 0xEu);
LABEL_34:
      if (glog_fd)
      {
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v78 = v32;
        v79 = v32;
        v76 = v32;
        v77 = v32;
        *&buf[32] = v32;
        v75 = v32;
        *buf = v32;
        *&buf[16] = v32;
        memset(&v73, 0, sizeof(v73));
        v72 = 0xAAAAAAAAAAAAAAAALL;
        time(&v72);
        localtime_r(&v72, &v73);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v73);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCLogTap::tapLoopImpl() entry:%u failed to map pipe with rc[0x%08x]\n");
      }

LABEL_71:
      *(v2 + 349) = 0;
      (*(*v2 + 128))(v2);
      return;
    }

    (*(*v2 + 128))(v2);
    if ((*(v2 + 97) & 1) == 0 && !*(v2 + 4))
    {
      v26 = isSeedAndiOS();
      if (!v26 || deviceUnlockedSinceBoot(v26, v27))
      {
        v28 = CCFile::withRegistryEntry(*(v2 + 4));
        *(v2 + 4) = v28;
        if (v28)
        {
          (*(*v28 + 56))(v28, 0);
        }
      }
    }

    v29 = *(v2 + 4);
    if (!v29 || ((*(*v29 + 120))(v29) & 1) != 0)
    {
LABEL_42:
      pthread_mutex_lock((*(v2 + 8) + 16));
      if (*(v2 + 56) & 1) != 0 || (*(v2 + 97))
      {
        pthread_mutex_unlock((*(v2 + 8) + 16));
LABEL_54:
        v48 = *(a1 + 5);
        if (v48)
        {
          v49 = CCLogPipeInterface::unmapPipe(v48, v2 + 23);
          if (v49)
          {
            v50 = v49;
            v51 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_66;
              }

              v52 = *(v2 + 4);
              *buf = 67109376;
              *&buf[4] = v52;
              *&buf[8] = 1024;
              *&buf[10] = v50;
              v53 = v51;
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_66;
              }

              v71 = *(v2 + 4);
              *buf = 67109376;
              *&buf[4] = v71;
              *&buf[8] = 1024;
              *&buf[10] = v50;
              v53 = MEMORY[0x277D86220];
            }

            _os_log_error_impl(&dword_2452A3000, v53, OS_LOG_TYPE_ERROR, "CCLogTap::tapLoopImpl() entry:%u failed to unmap pipe with rc[0x%08x]\n", buf, 0xEu);
LABEL_66:
            if (glog_fd)
            {
              *&v60 = 0xAAAAAAAAAAAAAAAALL;
              *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v78 = v60;
              v79 = v60;
              v76 = v60;
              v77 = v60;
              *&buf[32] = v60;
              v75 = v60;
              *buf = v60;
              *&buf[16] = v60;
              memset(&v73, 0, sizeof(v73));
              v72 = 0xAAAAAAAAAAAAAAAALL;
              time(&v72);
              localtime_r(&v72, &v73);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v73);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "CCLogTap::tapLoopImpl() entry:%u failed to unmap pipe with rc[0x%08x]\n");
            }

            goto LABEL_71;
          }

          *(v2 + 44) = CFAbsoluteTimeGetCurrent();
          *(v2 + 349) = 0;
          v55 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_76;
            }

            v56 = *(v2 + 4);
            v57 = CFStringGetCStringPtr(*(v2 + 5), 0);
            v58 = CFStringGetCStringPtr(*(v2 + 6), 0);
            *buf = 67109634;
            *&buf[4] = v56;
            *&buf[8] = 2080;
            *&buf[10] = v57;
            *&buf[18] = 2080;
            *&buf[20] = v58;
            v59 = v55;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_76;
            }

            v62 = *(v2 + 4);
            v63 = CFStringGetCStringPtr(*(v2 + 5), 0);
            v64 = CFStringGetCStringPtr(*(v2 + 6), 0);
            *buf = 67109634;
            *&buf[4] = v62;
            *&buf[8] = 2080;
            *&buf[10] = v63;
            *&buf[18] = 2080;
            *&buf[20] = v64;
            v59 = MEMORY[0x277D86220];
          }

          _os_log_impl(&dword_2452A3000, v59, OS_LOG_TYPE_DEFAULT, "CCLogTap::tapLoop entry:%u Owner:%s Name:%s Exiting taploop\n", buf, 0x1Cu);
LABEL_76:
          if (glog_fd)
          {
            *&v65 = 0xAAAAAAAAAAAAAAAALL;
            *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v78 = v65;
            v79 = v65;
            v76 = v65;
            v77 = v65;
            *&buf[32] = v65;
            v75 = v65;
            *buf = v65;
            *&buf[16] = v65;
            memset(&v73, 0, sizeof(v73));
            v72 = 0xAAAAAAAAAAAAAAAALL;
            time(&v72);
            localtime_r(&v72, &v73);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v73);
            dprintf(glog_fd, "%s ", buf);
            v66 = glog_fd;
            v67 = *(v2 + 4);
            v68 = CFStringGetCStringPtr(*(v2 + 5), 0);
            v69 = CFStringGetCStringPtr(*(v2 + 6), 0);
            dprintf(v66, "CCLogTap::tapLoop entry:%u Owner:%s Name:%s Exiting taploop\n", v67, v68, v69);
          }

          return;
        }

        v23 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            v54 = *(v2 + 4);
            *buf = 67109120;
            *&buf[4] = v54;
LABEL_21:
            v25 = v23;
LABEL_38:
            _os_log_error_impl(&dword_2452A3000, v25, OS_LOG_TYPE_ERROR, "CCLogTap::tapLoopImpl() entry:%u failed to get pipe interface \n", buf, 8u);
          }

LABEL_69:
          if (glog_fd)
          {
            *&v61 = 0xAAAAAAAAAAAAAAAALL;
            *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v78 = v61;
            v79 = v61;
            v76 = v61;
            v77 = v61;
            *&buf[32] = v61;
            v75 = v61;
            *buf = v61;
            *&buf[16] = v61;
            memset(&v73, 0, sizeof(v73));
            v72 = 0xAAAAAAAAAAAAAAAALL;
            time(&v72);
            localtime_r(&v72, &v73);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v73);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCLogTap::tapLoopImpl() entry:%u failed to get pipe interface \n");
          }

          goto LABEL_71;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

LABEL_37:
        v33 = *(v2 + 4);
        *buf = 67109120;
        *&buf[4] = v33;
        v25 = MEMORY[0x277D86220];
        goto LABEL_38;
      }

      pthread_mutex_unlock((*(v2 + 8) + 16));
      v35 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(v2 + 4);
          v37 = CFStringGetCStringPtr(*(v2 + 5), 0);
          v38 = CFStringGetCStringPtr(*(v2 + 6), 0);
          *buf = 136316162;
          *&buf[4] = "tapLoopImpl_block_invoke";
          *&buf[12] = 1024;
          *&buf[14] = 226;
          *&buf[18] = 1024;
          *&buf[20] = v36;
          *&buf[24] = 2080;
          *&buf[26] = v37;
          *&buf[34] = 2080;
          *&buf[36] = v38;
          v39 = v35;
LABEL_50:
          _os_log_impl(&dword_2452A3000, v39, OS_LOG_TYPE_DEFAULT, "%s:%d processEvent entry:%u Owner:%s Name:%s", buf, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(v2 + 4);
        v41 = CFStringGetCStringPtr(*(v2 + 5), 0);
        v42 = CFStringGetCStringPtr(*(v2 + 6), 0);
        *buf = 136316162;
        *&buf[4] = "tapLoopImpl_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 226;
        *&buf[18] = 1024;
        *&buf[20] = v40;
        *&buf[24] = 2080;
        *&buf[26] = v41;
        *&buf[34] = 2080;
        *&buf[36] = v42;
        v39 = MEMORY[0x277D86220];
        goto LABEL_50;
      }

      if (glog_fd)
      {
        *&v43 = 0xAAAAAAAAAAAAAAAALL;
        *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v78 = v43;
        v79 = v43;
        v76 = v43;
        v77 = v43;
        *&buf[32] = v43;
        v75 = v43;
        *buf = v43;
        *&buf[16] = v43;
        memset(&v73, 0, sizeof(v73));
        v72 = 0xAAAAAAAAAAAAAAAALL;
        time(&v72);
        localtime_r(&v72, &v73);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v73);
        dprintf(glog_fd, "%s ", buf);
        v44 = glog_fd;
        v45 = *(v2 + 4);
        v46 = CFStringGetCStringPtr(*(v2 + 5), 0);
        v47 = CFStringGetCStringPtr(*(v2 + 6), 0);
        dprintf(v44, "%s:%d processEvent entry:%u Owner:%s Name:%s", "tapLoopImpl_block_invoke", 226, v45, v46, v47);
      }

      CCLogTap::processEvent(v2);
      goto LABEL_54;
    }

    v30 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 0;
      v31 = v30;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 0;
      v31 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v31, OS_LOG_TYPE_ERROR, "CCLogTap::tapLoopImpl() isLogdirExists failed\n", buf, 2u);
LABEL_40:
    if (glog_fd)
    {
      *&v34 = 0xAAAAAAAAAAAAAAAALL;
      *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v78 = v34;
      v79 = v34;
      v76 = v34;
      v77 = v34;
      *&buf[32] = v34;
      v75 = v34;
      *buf = v34;
      *&buf[16] = v34;
      memset(&v73, 0, sizeof(v73));
      v72 = 0xAAAAAAAAAAAAAAAALL;
      time(&v72);
      localtime_r(&v72, &v73);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v73);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogTap::tapLoopImpl() isLogdirExists failed\n");
    }

    goto LABEL_42;
  }
}

uint64_t CCLogTap::processEvent(CCLogTap *this)
{
  v184 = *MEMORY[0x277D85DE8];
  v2 = *(this + 8);
  {
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315138;
      *&buf[4] = "processEvent";
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315138;
      *&buf[4] = "processEvent";
      v10 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "%s dynamic cast to CCLogPipeInterface failed\n", buf, 0xCu);
LABEL_10:
    v11 = 3758097090;
    if (glog_fd)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v174 = v12;
      v175 = v12;
      v172 = v12;
      v173 = v12;
      *&buf[32] = v12;
      *&buf[48] = v12;
      *buf = v12;
      *&buf[16] = v12;
      memset(v166, 0, 56);
      *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v161.tm_sec);
      localtime_r(&v161.tm_sec, v166);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s dynamic cast to CCLogPipeInterface failed\n", "processEvent");
    }

    return v11;
  }

  if (!*(this + 4))
  {
    v13 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_140;
      }

      v14 = *(this + 4);
      *buf = 136315394;
      *&buf[4] = "IOReturn CCLogTap::processEvent()";
      *&buf[12] = 1024;
      *&buf[14] = v14;
      v15 = v13;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_140;
      }

      v81 = *(this + 4);
      *buf = 136315394;
      *&buf[4] = "IOReturn CCLogTap::processEvent()";
      *&buf[12] = 1024;
      *&buf[14] = v81;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v15, OS_LOG_TYPE_DEFAULT, "%s - no fFile entry:%u", buf, 0x12u);
LABEL_140:
    if (glog_fd)
    {
      *&v82 = 0xAAAAAAAAAAAAAAAALL;
      *(&v82 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v174 = v82;
      v175 = v82;
      v172 = v82;
      v173 = v82;
      *&buf[32] = v82;
      *&buf[48] = v82;
      *buf = v82;
      *&buf[16] = v82;
      memset(v166, 0, 56);
      *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v161.tm_sec);
      localtime_r(&v161.tm_sec, v166);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s - no fFile entry:%u", "IOReturn CCLogTap::processEvent()", *(this + 4));
    }

    return 0;
  }

  v3[2] = 1;
  __dmb(0xBu);
  v5 = v3[1];
  if (v5 == *v3)
  {
    v6 = 0;
    v157 = 0;
    v158 = 0;
    v156 = 0;
    v7 = 0;
    v8 = 0;
LABEL_207:
    if (*(this + 96) == 1)
    {
      *(this + 48) = 256;
    }

    v3[2] = 0;
    v123 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_215;
      }

      v124 = *(this + 90);
      v125 = *(this + 91);
      v126 = *(this + 173);
      v127 = *(this + 172);
      v128 = *(this + 4);
      v129 = *v3;
      v130 = v3[1];
      *buf = 67112192;
      *&buf[4] = v158;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      *&buf[14] = 1024;
      *&buf[16] = v7;
      *&buf[20] = 1024;
      *&buf[22] = v6;
      *&buf[26] = 1024;
      *&buf[28] = v156;
      *&buf[32] = 1024;
      *&buf[34] = v157;
      *&buf[38] = 1024;
      *&buf[40] = v124;
      *&buf[44] = 1024;
      *&buf[46] = v125;
      *&buf[50] = 1024;
      *&buf[52] = v126;
      *&buf[56] = 1024;
      *&buf[58] = v127;
      *&buf[62] = 1024;
      LODWORD(v172) = v128;
      WORD2(v172) = 1024;
      *(&v172 + 6) = v129;
      WORD5(v172) = 1024;
      HIDWORD(v172) = v130;
      v131 = v123;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_215;
      }

      v132 = *(this + 90);
      v133 = *(this + 91);
      v134 = *(this + 173);
      v135 = *(this + 172);
      v136 = *(this + 4);
      v137 = *v3;
      v138 = v3[1];
      *buf = 67112192;
      *&buf[4] = v158;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      *&buf[14] = 1024;
      *&buf[16] = v7;
      *&buf[20] = 1024;
      *&buf[22] = v6;
      *&buf[26] = 1024;
      *&buf[28] = v156;
      *&buf[32] = 1024;
      *&buf[34] = v157;
      *&buf[38] = 1024;
      *&buf[40] = v132;
      *&buf[44] = 1024;
      *&buf[46] = v133;
      *&buf[50] = 1024;
      *&buf[52] = v134;
      *&buf[56] = 1024;
      *&buf[58] = v135;
      *&buf[62] = 1024;
      LODWORD(v172) = v136;
      WORD2(v172) = 1024;
      *(&v172 + 6) = v137;
      WORD5(v172) = 1024;
      HIDWORD(v172) = v138;
      v131 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v131, OS_LOG_TYPE_DEFAULT, "CCLogTap::pipeEvent EXIT Event Count - Empty (%d) Reserved (%d) Written (%d) Padding (%d) Capture (%d) Skip (%d),prevread offset %u, new read offset %u, prev seq %u, expected seq %u entry %u, ring state readoff %u, write offset %u\n", buf, 0x50u);
LABEL_215:
    if (glog_fd)
    {
      *&v139 = 0xAAAAAAAAAAAAAAAALL;
      *(&v139 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v174 = v139;
      v175 = v139;
      v172 = v139;
      v173 = v139;
      *&buf[32] = v139;
      *&buf[48] = v139;
      *buf = v139;
      *&buf[16] = v139;
      memset(v166, 0, 56);
      *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v161.tm_sec);
      localtime_r(&v161.tm_sec, v166);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogTap::pipeEvent EXIT Event Count - Empty (%d) Reserved (%d) Written (%d) Padding (%d) Capture (%d) Skip (%d),prevread offset %u, new read offset %u, prev seq %u, expected seq %u entry %u, ring state readoff %u, write offset %u\n", v158, v8, v7, v6, v156, v157, *(this + 90), *(this + 91), *(this + 173), *(this + 172), *(this + 4), *v3, v3[1]);
    }

    return 0;
  }

  v16 = v4;
  v157 = 0;
  v158 = 0;
  v155 = 0;
  v156 = 0;
  v6 = 0;
  while (1)
  {
    if (*(this + 56) & 1) != 0 || (*(this + 96))
    {
      goto LABEL_205;
    }

    v159 = *v3;
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    __dmb(0xBu);
    v17 = *(this + 24);
    if (v17 < v159)
    {
      break;
    }

    v18 = *(this + 23) + v159;
    if ((v18 & 3) != 0)
    {
      v86 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          v87 = *(this + 4);
          *buf = 136315906;
          *&buf[4] = "processEvent";
          *&buf[12] = 2048;
          *&buf[14] = 4;
          *&buf[22] = 1024;
          *&buf[24] = v159;
          *&buf[28] = 1024;
          *&buf[30] = v87;
          v88 = v86;
          goto LABEL_168;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v102 = *(this + 4);
        *buf = 136315906;
        *&buf[4] = "processEvent";
        *&buf[12] = 2048;
        *&buf[14] = 4;
        *&buf[22] = 1024;
        *&buf[24] = v159;
        *&buf[28] = 1024;
        *&buf[30] = v102;
        v88 = MEMORY[0x277D86220];
LABEL_168:
        _os_log_error_impl(&dword_2452A3000, v88, OS_LOG_TYPE_ERROR, "%s Read Ptr is not multiple of %lu (%d) entry:%u \n", buf, 0x22u);
      }

      v11 = 3758097086;
      if (glog_fd)
      {
        *&v90 = 0xAAAAAAAAAAAAAAAALL;
        *(&v90 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v90;
        v175 = v90;
        v172 = v90;
        v173 = v90;
        *&buf[32] = v90;
        *&buf[48] = v90;
        *buf = v90;
        *&buf[16] = v90;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s Read Ptr is not multiple of %lu (%d) entry:%u \n", "processEvent", 4, v159, *(this + 4));
      }

      return v11;
    }

    v19 = *v18;
    if (*v18 == 80 || v17 - v159 <= 0x23)
    {
      LODWORD(v17) = (v159 + 4) % v17;
      ++v6;
      goto LABEL_23;
    }

    v25 = *v18;
    v24 = *(v18 + 16);
    v165 = *(v18 + 32);
    v163 = v25;
    v164 = v24;
    if (v25 != 69 && v163 != 82 && v163 != 87 && v163 != 80 && v163 != 67 && v163 != 83)
    {
      v113 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          v114 = *(this + 4);
          *buf = 67109888;
          *&buf[4] = v159;
          *&buf[8] = 1024;
          *&buf[10] = v5;
          *&buf[14] = 1024;
          *&buf[16] = v163;
          *&buf[20] = 1024;
          *&buf[22] = v114;
          v115 = v113;
          goto LABEL_228;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v146 = *(this + 4);
        *buf = 67109888;
        *&buf[4] = v159;
        *&buf[8] = 1024;
        *&buf[10] = v5;
        *&buf[14] = 1024;
        *&buf[16] = v163;
        *&buf[20] = 1024;
        *&buf[22] = v146;
        v115 = MEMORY[0x277D86220];
LABEL_228:
        _os_log_error_impl(&dword_2452A3000, v115, OS_LOG_TYPE_ERROR, "Invalid State readOffset : %d, writeOffset : %d state %c, entry %u ", buf, 0x1Au);
      }

      if (glog_fd)
      {
        *&v121 = 0xAAAAAAAAAAAAAAAALL;
        *(&v121 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v121;
        v175 = v121;
        v172 = v121;
        v173 = v121;
        *&buf[32] = v121;
        *&buf[48] = v121;
        *buf = v121;
        *&buf[16] = v121;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "Invalid State readOffset : %d, writeOffset : %d state %c, entry %u ", v159, v5, v163, *(this + 4));
      }

      goto LABEL_205;
    }

    if (v159 != *v3 || v19 != v163)
    {
      v29 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          v30 = *(this + 4);
          *buf = 136315394;
          *&buf[4] = "processEvent";
          *&buf[12] = 1024;
          *&buf[14] = v30;
          v31 = v29;
          goto LABEL_82;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v53 = *(this + 4);
        *buf = 136315394;
        *&buf[4] = "processEvent";
        *&buf[12] = 1024;
        *&buf[14] = v53;
        v31 = MEMORY[0x277D86220];
LABEL_82:
        _os_log_error_impl(&dword_2452A3000, v31, OS_LOG_TYPE_ERROR, "%s Read pointer moved while copying metadata. Retrying entry:%u\n", buf, 0x12u);
      }

      if (glog_fd)
      {
        *&v34 = 0xAAAAAAAAAAAAAAAALL;
        *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v34;
        v175 = v34;
        v172 = v34;
        v173 = v34;
        *&buf[32] = v34;
        *&buf[48] = v34;
        *buf = v34;
        *&buf[16] = v34;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s Read pointer moved while copying metadata. Retrying entry:%u\n", "processEvent", *(this + 4));
      }

      goto LABEL_64;
    }

    if (v163 == 69)
    {
      v26 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(this + 4);
          *buf = 136315394;
          *&buf[4] = "IOReturn CCLogTap::processEvent()";
          *&buf[12] = 1024;
          *&buf[14] = v27;
          v28 = v26;
          goto LABEL_60;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(this + 4);
        *buf = 136315394;
        *&buf[4] = "IOReturn CCLogTap::processEvent()";
        *&buf[12] = 1024;
        *&buf[14] = v43;
        v28 = MEMORY[0x277D86220];
LABEL_60:
        _os_log_impl(&dword_2452A3000, v28, OS_LOG_TYPE_DEFAULT, "%s - STATE IS EMPTY. CONTINUE entry:%u", buf, 0x12u);
      }

      if (glog_fd)
      {
        *&v44 = 0xAAAAAAAAAAAAAAAALL;
        *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v44;
        v175 = v44;
        v172 = v44;
        v173 = v44;
        *&buf[32] = v44;
        *&buf[48] = v44;
        *buf = v44;
        *&buf[16] = v44;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s - STATE IS EMPTY. CONTINUE entry:%u", "IOReturn CCLogTap::processEvent()", *(this + 4));
      }

      ++v158;
      goto LABEL_64;
    }

    if (v163 == 82)
    {
      v95 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          v96 = *(this + 4);
          *buf = 136315394;
          *&buf[4] = "IOReturn CCLogTap::processEvent()";
          *&buf[12] = 1024;
          *&buf[14] = v96;
          v97 = v95;
          goto LABEL_180;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v110 = *(this + 4);
        *buf = 136315394;
        *&buf[4] = "IOReturn CCLogTap::processEvent()";
        *&buf[12] = 1024;
        *&buf[14] = v110;
        v97 = MEMORY[0x277D86220];
LABEL_180:
        _os_log_impl(&dword_2452A3000, v97, OS_LOG_TYPE_DEFAULT, "%s - STATE IS RESERVED. BREAK entry:%u", buf, 0x12u);
      }

      if (glog_fd)
      {
        *&v111 = 0xAAAAAAAAAAAAAAAALL;
        *(&v111 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v111;
        v175 = v111;
        v172 = v111;
        v173 = v111;
        *&buf[32] = v111;
        *&buf[48] = v111;
        *buf = v111;
        *&buf[16] = v111;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s - STATE IS RESERVED. BREAK entry:%u", "IOReturn CCLogTap::processEvent()", *(this + 4));
      }

      v8 = 1;
      goto LABEL_206;
    }

    v35 = isSeedAndiOS();
    if (v35 && (deviceUnlockedSinceBoot(v35, v36) & 1) == 0)
    {
      v104 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          v105 = *(this + 4);
          *buf = 67109120;
          *&buf[4] = v105;
          v106 = v104;
          goto LABEL_224;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v144 = *(this + 4);
        *buf = 67109120;
        *&buf[4] = v144;
        v106 = MEMORY[0x277D86220];
LABEL_224:
        _os_log_error_impl(&dword_2452A3000, v106, OS_LOG_TYPE_ERROR, "seed build (or boot-arg) and device hasn't been unlocked since boot. Won't process event and continue when next event is posted entry:%u\n", buf, 8u);
      }

      if (glog_fd)
      {
        *&v119 = 0xAAAAAAAAAAAAAAAALL;
        *(&v119 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v119;
        v175 = v119;
        v172 = v119;
        v173 = v119;
        *&buf[32] = v119;
        *&buf[48] = v119;
        *buf = v119;
        *&buf[16] = v119;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "seed build (or boot-arg) and device hasn't been unlocked since boot. Won't process event and continue when next event is posted entry:%u\n", *(this + 4));
      }

      goto LABEL_205;
    }

    v38 = *(this + 23);
    v37 = *(this + 24);
    v39 = (v159 + 36) % v37;
    v153 = WORD4(v164);
    if (v39 + WORD4(v164) <= v37)
    {
      v152 = 0;
      v154 = 0;
      goto LABEL_74;
    }

    v40 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(this + 4);
        *buf = 136315394;
        *&buf[4] = "IOReturn CCLogTap::processEvent()";
        *&buf[12] = 1024;
        *&buf[14] = v41;
        v42 = v40;
LABEL_70:
        _os_log_impl(&dword_2452A3000, v42, OS_LOG_TYPE_DEFAULT, "%s - localLogMetadata.payloadLength + logPayloadOffset IS BEYOND RINGSIZE. ADJUST entry:%u", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(this + 4);
      *buf = 136315394;
      *&buf[4] = "IOReturn CCLogTap::processEvent()";
      *&buf[12] = 1024;
      *&buf[14] = v45;
      v42 = MEMORY[0x277D86220];
      goto LABEL_70;
    }

    if (glog_fd)
    {
      *&v46 = 0xAAAAAAAAAAAAAAAALL;
      *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v174 = v46;
      v175 = v46;
      v172 = v46;
      v173 = v46;
      *&buf[32] = v46;
      *&buf[48] = v46;
      *buf = v46;
      *&buf[16] = v46;
      memset(v166, 0, 56);
      *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v161.tm_sec);
      localtime_r(&v161.tm_sec, v166);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s - localLogMetadata.payloadLength + logPayloadOffset IS BEYOND RINGSIZE. ADJUST entry:%u", "IOReturn CCLogTap::processEvent()", *(this + 4));
    }

    v152 = WORD4(v164) - (*(this + 48) - v39);
    v153 = (*(this + 48) - v39);
    v154 = *(this + 23);
LABEL_74:
    if (*(this + 348) != 1)
    {
      *(this + 348) = 1;
      goto LABEL_88;
    }

    v151 = v39;
    v47 = *(this + 173);
    if (v47 == WORD3(v163))
    {
      v150 = v38;
      v48 = *(this + 91);
      v49 = coreCaptureOsLog;
      v149 = *(this + 90);
      if (v149 == v48)
      {
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            v116 = *(this + 92);
            v117 = *(this + 4);
            *buf = 67110144;
            *&buf[4] = v47;
            *&buf[8] = 1024;
            *&buf[10] = v149;
            *&buf[14] = 1024;
            *&buf[16] = v116;
            *&buf[20] = 1024;
            *&buf[22] = v5;
            *&buf[26] = 1024;
            *&buf[28] = v117;
            v118 = v49;
            goto LABEL_230;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v147 = *(this + 92);
          v148 = *(this + 4);
          *buf = 67110144;
          *&buf[4] = v47;
          *&buf[8] = 1024;
          *&buf[10] = v149;
          *&buf[14] = 1024;
          *&buf[16] = v147;
          *&buf[20] = 1024;
          *&buf[22] = v5;
          *&buf[26] = 1024;
          *&buf[28] = v148;
          v118 = MEMORY[0x277D86220];
LABEL_230:
          _os_log_error_impl(&dword_2452A3000, v118, OS_LOG_TYPE_ERROR, "previous and current sequence numbers are same %u prev read offset %u,previous write offset %u, new write offset %u, entry %u\n", buf, 0x20u);
        }

        if (glog_fd)
        {
          *&v122 = 0xAAAAAAAAAAAAAAAALL;
          *(&v122 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v174 = v122;
          v175 = v122;
          v172 = v122;
          v173 = v122;
          *&buf[32] = v122;
          *&buf[48] = v122;
          *buf = v122;
          *&buf[16] = v122;
          memset(v166, 0, 56);
          *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&v161.tm_sec);
          localtime_r(&v161.tm_sec, v166);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "previous and current sequence numbers are same %u prev read offset %u,previous write offset %u, new write offset %u, entry %u\n", WORD3(v163), *(this + 90), *(this + 92), v5, *(this + 4));
        }

        goto LABEL_205;
      }

      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          v50 = *(this + 92);
          v51 = *(this + 4);
          *buf = 67110400;
          *&buf[4] = v47;
          *&buf[8] = 1024;
          *&buf[10] = v149;
          *&buf[14] = 1024;
          *&buf[16] = v48;
          *&buf[20] = 1024;
          *&buf[22] = v50;
          *&buf[26] = 1024;
          *&buf[28] = v5;
          *&buf[32] = 1024;
          *&buf[34] = v51;
          v52 = v49;
          goto LABEL_136;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v79 = *(this + 92);
        v80 = *(this + 4);
        *buf = 67110400;
        *&buf[4] = v47;
        *&buf[8] = 1024;
        *&buf[10] = v149;
        *&buf[14] = 1024;
        *&buf[16] = v48;
        *&buf[20] = 1024;
        *&buf[22] = v79;
        *&buf[26] = 1024;
        *&buf[28] = v5;
        *&buf[32] = 1024;
        *&buf[34] = v80;
        v52 = MEMORY[0x277D86220];
LABEL_136:
        _os_log_error_impl(&dword_2452A3000, v52, OS_LOG_TYPE_ERROR, "previous and current sequence numbers are same %u prev read offset %u,new read offset %u, previous write offset %u, new write offset %u, entry %u\n", buf, 0x26u);
      }

      v38 = v150;
      if (glog_fd)
      {
        *&v54 = 0xAAAAAAAAAAAAAAAALL;
        *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v54;
        v175 = v54;
        v172 = v54;
        v173 = v54;
        *&buf[32] = v54;
        *&buf[48] = v54;
        *buf = v54;
        *&buf[16] = v54;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "previous and current sequence numbers are same %u prev read offset %u,new read offset %u, previous write offset %u, new write offset %u, entry %u\n", WORD3(v163), *(this + 90), *(this + 91), *(this + 92), v5, *(this + 4));
        v38 = v150;
      }
    }

    v39 = v151;
    if (*(this + 172) != WORD3(v163))
    {
      v55 = snprintf(this + 216, 0x80uLL, "Dropped Log message expected sequence number = %u, Received %u\n", *(this + 172), WORD3(v163));
      (*(**(this + 4) + 72))(*(this + 4), &v163, this + 216, v55, 0);
      v39 = v151;
    }

LABEL_88:
    v56 = v38 + v39;
    v57 = WORD3(v163);
    *(this + 173) = WORD3(v163);
    *(this + 172) = v57 + 1;
    if (v163 == 87)
    {
      v59 = *(this + 23);
      v58 = *(this + 24);
      v60 = v56 < v58 + v59 && v56 >= v59;
      if (!v60 || v154 && (v154 < v59 || v154 >= v58 + v59) || v153 >= v58 || v152 >= v58)
      {
        v91 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            v92 = *(this + 25);
            v93 = *(this + 4);
            *buf = 134219264;
            *&buf[4] = v92;
            *&buf[12] = 2048;
            *&buf[14] = v59;
            *&buf[22] = 2048;
            *&buf[24] = v58;
            *&buf[32] = 2048;
            *&buf[34] = v153;
            *&buf[42] = 2048;
            *&buf[44] = v152;
            *&buf[52] = 1024;
            *&buf[54] = v93;
            v94 = v91;
            goto LABEL_220;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v141 = *(this + 25);
          v142 = *(this + 4);
          *buf = 134219264;
          *&buf[4] = v141;
          *&buf[12] = 2048;
          *&buf[14] = v59;
          *&buf[22] = 2048;
          *&buf[24] = v58;
          *&buf[32] = 2048;
          *&buf[34] = v153;
          *&buf[42] = 2048;
          *&buf[44] = v152;
          *&buf[52] = 1024;
          *&buf[54] = v142;
          v94 = MEMORY[0x277D86220];
LABEL_220:
          _os_log_error_impl(&dword_2452A3000, v94, OS_LOG_TYPE_ERROR, "Unexpected log parameters ring state3(0x%llx), ring buffer(0x%llx), ring size(%llu), logSize(%lu), logContinueSize(%lu) entry:%u\n", buf, 0x3Au);
        }

        if (glog_fd)
        {
          *&v103 = 0xAAAAAAAAAAAAAAAALL;
          *(&v103 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v174 = v103;
          v175 = v103;
          v172 = v103;
          v173 = v103;
          *&buf[32] = v103;
          *&buf[48] = v103;
          *buf = v103;
          *&buf[16] = v103;
          memset(v166, 0, 56);
          *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&v161.tm_sec);
          localtime_r(&v161.tm_sec, v166);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "Unexpected log parameters ring state3(0x%llx), ring buffer(0x%llx), ring size(%llu), logSize(%lu), logContinueSize(%lu) entry:%u\n", *(this + 25), *(this + 23), *(this + 24), v153, v152, *(this + 4));
        }

        goto LABEL_205;
      }

      (*(**(this + 4) + 64))(*(this + 4), &v163, v56, v153, v154, v152);
      ++v155;
    }

    if (v163 == 67)
    {
      v61 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(this + 4);
          *buf = 67109120;
          *&buf[4] = v62;
          v63 = v61;
          goto LABEL_106;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v64 = *(this + 4);
        *buf = 67109120;
        *&buf[4] = v64;
        v63 = MEMORY[0x277D86220];
LABEL_106:
        _os_log_impl(&dword_2452A3000, v63, OS_LOG_TYPE_DEFAULT, "Received Capture Event %u\n", buf, 8u);
      }

      if (glog_fd)
      {
        *&v65 = 0xAAAAAAAAAAAAAAAALL;
        *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v65;
        v175 = v65;
        v172 = v65;
        v173 = v65;
        *&buf[32] = v65;
        *&buf[48] = v65;
        *buf = v65;
        *&buf[16] = v65;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "Received Capture Event %u\n", *(this + 4));
      }

      *&inputStruct = 0xAAAAAAAAAAAAAAAALL;
      *(&inputStruct + 1) = 0xAAAAAAAAAAAAAAAALL;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      memset(buf, 0, sizeof(buf));
      if (getCCSessionid(v56, v153, v154, v152, &inputStruct, buf))
      {
        v107 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            v108 = *(this + 4);
            *v166 = 67109120;
            *&v166[4] = v108;
            v109 = v107;
            goto LABEL_226;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v145 = *(this + 4);
          *v166 = 67109120;
          *&v166[4] = v145;
          v109 = MEMORY[0x277D86220];
LABEL_226:
          _os_log_error_impl(&dword_2452A3000, v109, OS_LOG_TYPE_ERROR, "getting CC session id failed for entry:%u", v166, 8u);
        }

        if (glog_fd)
        {
          *&v120 = 0xAAAAAAAAAAAAAAAALL;
          *(&v120 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v169 = v120;
          v170 = v120;
          v167 = v120;
          v168 = v120;
          *&v166[32] = v120;
          *&v166[48] = v120;
          *v166 = v120;
          *&v166[16] = v120;
          memset(&v161, 0, sizeof(v161));
          v160 = 0xAAAAAAAAAAAAAAAALL;
          time(&v160);
          localtime_r(&v160, &v161);
          strftime(v166, 0x80uLL, "%b %d %H:%M:%S", &v161);
          dprintf(glog_fd, "%s ", v166);
          dprintf(glog_fd, "getting CC session id failed for entry:%u", *(this + 4));
        }

LABEL_205:
        v8 = 0;
LABEL_206:
        v7 = v155;
        goto LABEL_207;
      }

      if (*(this + 10))
      {
        *v166 = 0;
        if (!IORegistryEntryGetParentEntry(*(this + 4), "IOService", v166))
        {
          operator new();
        }
      }

      if (CCLogPipeInterface::dumpToDiskComplete(v16, &inputStruct))
      {
        v66 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            v67 = *(this + 4);
            *v166 = 67109120;
            *&v166[4] = v67;
            v68 = v66;
            goto LABEL_134;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v78 = *(this + 4);
          *v166 = 67109120;
          *&v166[4] = v78;
          v68 = MEMORY[0x277D86220];
LABEL_134:
          _os_log_error_impl(&dword_2452A3000, v68, OS_LOG_TYPE_ERROR, "Notification to dump to disk failed for entry:%u", v166, 8u);
        }

        if (glog_fd)
        {
          *&v69 = 0xAAAAAAAAAAAAAAAALL;
          *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v169 = v69;
          v170 = v69;
          v167 = v69;
          v168 = v69;
          *&v166[32] = v69;
          *&v166[48] = v69;
          *v166 = v69;
          *&v166[16] = v69;
          memset(&v161, 0, sizeof(v161));
          v160 = 0xAAAAAAAAAAAAAAAALL;
          time(&v160);
          localtime_r(&v160, &v161);
          strftime(v166, 0x80uLL, "%b %d %H:%M:%S", &v161);
          dprintf(glog_fd, "%s ", v166);
          dprintf(glog_fd, "Notification to dump to disk failed for entry:%u", *(this + 4));
        }
      }

      strcpy(v166, "CAPTURE");
      v70 = (this + 32);
      (*(**(this + 4) + 72))(*(this + 4), &v163, v166, 7, 1);
      (*(**v70 + 80))(*v70, &v163, v56, v153, v154, v152);
      (*(**v70 + 72))(*v70, &v163, v166, 7, 1);
      *(*v70 + 120) = 1;
      ++v156;
    }

    if (v163 != 83)
    {
      goto LABEL_131;
    }

    v71 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *(this + 4);
        *buf = 67109120;
        *&buf[4] = v72;
        v73 = v71;
LABEL_127:
        _os_log_impl(&dword_2452A3000, v73, OS_LOG_TYPE_DEFAULT, "Received Skip Event %u\n", buf, 8u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v74 = *(this + 4);
      *buf = 67109120;
      *&buf[4] = v74;
      v73 = MEMORY[0x277D86220];
      goto LABEL_127;
    }

    if (glog_fd)
    {
      *&v75 = 0xAAAAAAAAAAAAAAAALL;
      *(&v75 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v174 = v75;
      v175 = v75;
      v172 = v75;
      v173 = v75;
      *&buf[32] = v75;
      *&buf[48] = v75;
      *buf = v75;
      *&buf[16] = v75;
      memset(v166, 0, 56);
      *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v161.tm_sec);
      localtime_r(&v161.tm_sec, v166);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Received Skip Event %u\n", *(this + 4));
    }

    ++v157;
LABEL_131:
    v76 = WORD4(v164);
    v77 = BYTE10(v164);
    v17 = (v159 + WORD4(v164) + BYTE10(v164) + 36) % *(this + 24);
    if ((v17 & 3) != 0)
    {
      v98 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          v99 = *(this + 4);
          *buf = 67110400;
          *&buf[4] = v17;
          *&buf[8] = 1024;
          *&buf[10] = v76;
          *&buf[14] = 1024;
          *&buf[16] = v77;
          *&buf[20] = 2048;
          *&buf[22] = 36;
          *&buf[30] = 1024;
          *&buf[32] = v163;
          *&buf[36] = 1024;
          *&buf[38] = v99;
          v100 = v98;
          goto LABEL_222;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v143 = *(this + 4);
        *buf = 67110400;
        *&buf[4] = v17;
        *&buf[8] = 1024;
        *&buf[10] = v76;
        *&buf[14] = 1024;
        *&buf[16] = v77;
        *&buf[20] = 2048;
        *&buf[22] = 36;
        *&buf[30] = 1024;
        *&buf[32] = v163;
        *&buf[36] = 1024;
        *&buf[38] = v143;
        v100 = MEMORY[0x277D86220];
LABEL_222:
        _os_log_error_impl(&dword_2452A3000, v100, OS_LOG_TYPE_ERROR, "Created a bad offset, don't save it! newOffset %u, payload length %u, padding %u,sizeof metadata %lu, STATE %c, entry:%u", buf, 0x2Au);
      }

      if (glog_fd)
      {
        *&v112 = 0xAAAAAAAAAAAAAAAALL;
        *(&v112 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v112;
        v175 = v112;
        v172 = v112;
        v173 = v112;
        *&buf[32] = v112;
        *&buf[48] = v112;
        *buf = v112;
        *&buf[16] = v112;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "Created a bad offset, don't save it! newOffset %u, payload length %u, padding %u,sizeof metadata %lu, STATE %c, entry:%u", v17, WORD4(v164), BYTE10(v164), 36, v163, *(this + 4));
      }

      goto LABEL_205;
    }

LABEL_23:
    *(this + 90) = *v3;
    *(this + 91) = v17;
    *(this + 92) = v3[1];
    v20 = v159;
    v21 = v159;
    atomic_compare_exchange_strong_explicit(v3, &v21, v17, memory_order_relaxed, memory_order_relaxed);
    if (v21 != v20)
    {
      v22 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v23 = v22;
          goto LABEL_67;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v23 = MEMORY[0x277D86220];
LABEL_67:
        _os_log_error_impl(&dword_2452A3000, v23, OS_LOG_TYPE_ERROR, "Couldn't update read ptr.\n", buf, 2u);
      }

      if (glog_fd)
      {
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v174 = v32;
        v175 = v32;
        v172 = v32;
        v173 = v32;
        *&buf[32] = v32;
        *&buf[48] = v32;
        *buf = v32;
        *&buf[16] = v32;
        memset(v166, 0, 56);
        *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v161.tm_sec);
        localtime_r(&v161.tm_sec, v166);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "Couldn't update read ptr.\n");
      }

      v33 = snprintf(this + 216, 0x80uLL, "Couldn't update read ptr. Cannot guarantee integrity of message %d\n", WORD3(v163));
      (*(**(this + 4) + 72))(*(this + 4), &v163, this + 216, v33, 0);
      goto LABEL_64;
    }

    v5 = v3[1];
LABEL_64:
    if (v5 == *v3)
    {
      goto LABEL_205;
    }
  }

  v83 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      v84 = *(this + 4);
      *buf = 136315906;
      *&buf[4] = "processEvent";
      *&buf[12] = 1024;
      *&buf[14] = v159;
      *&buf[18] = 2048;
      *&buf[20] = v17;
      *&buf[28] = 1024;
      *&buf[30] = v84;
      v85 = v83;
      goto LABEL_166;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v101 = *(this + 4);
    *buf = 136315906;
    *&buf[4] = "processEvent";
    *&buf[12] = 1024;
    *&buf[14] = v159;
    *&buf[18] = 2048;
    *&buf[20] = v17;
    *&buf[28] = 1024;
    *&buf[30] = v101;
    v85 = MEMORY[0x277D86220];
LABEL_166:
    _os_log_error_impl(&dword_2452A3000, v85, OS_LOG_TYPE_ERROR, "%s Ring offset out of range: %u > %llu entry:%u\n", buf, 0x22u);
  }

  v11 = 3758097090;
  if (glog_fd)
  {
    *&v89 = 0xAAAAAAAAAAAAAAAALL;
    *(&v89 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v174 = v89;
    v175 = v89;
    v172 = v89;
    v173 = v89;
    *&buf[32] = v89;
    *&buf[48] = v89;
    *buf = v89;
    *&buf[16] = v89;
    memset(v166, 0, 56);
    *&v161.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v161.tm_sec);
    localtime_r(&v161.tm_sec, v166);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v166);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s Ring offset out of range: %u > %llu entry:%u\n", "processEvent", v159, *(this + 24), *(this + 4));
  }

  return v11;
}

uint64_t getCCSessionid(unint64_t a1, size_t a2, unint64_t a3, size_t a4, _OWORD *a5, void *a6)
{
  v6 = 3758097084;
  if (a1 | a3 && a5 && a6)
  {
    v12 = a1;
    v13 = a4 + a2;
    if (a3)
    {
      v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
      if (!v14)
      {
        return v6;
      }

      v15 = v14;
      if (v12 && a2)
      {
        memcpy(v14, v12, a2);
      }

      if (a4)
      {
        memcpy(v15 + a2, a3, a4);
      }

      v12 = v15;
    }

    else
    {
      v15 = 0;
    }

    *a5 = *v12;
    if (v13 - 16 >= 0x100)
    {
      v16 = 255;
    }

    else
    {
      v16 = v13 - 16;
    }

    memcpy(a6, v12 + 1, v16);
    if (v15)
    {
      free(v15);
    }

    return 0;
  }

  return v6;
}

uint64_t fillCaptureDescriptionStringFromMetaData(uint64_t a1, char *a2, time_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a3;
  memset(&v6, 0, sizeof(v6));
  localtime_r(&v7, &v6);
  if (a1)
  {
    return snprintf(a2, 0x200uLL, "%s/[%04d-%02d-%02d_%02d,%02d,%02d.%06llu]=%s", a1, (v6.tm_year + 1900), (v6.tm_mon + 1));
  }

  else
  {
    return snprintf(a2, 0x200uLL, "[%04d-%02d-%02d_%02d,%02d,%02d.%06llu]=%s", (v6.tm_year + 1900), (v6.tm_mon + 1), v6.tm_mday);
  }
}

void CCLogTap::tapLoop(CCLogTap *this)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 8) + 72))(*(this + 8));
  v3 = coreCaptureOsLog;
  if (!v2)
  {
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(this + 4);
        CStringPtr = CFStringGetCStringPtr(*(this + 5), 0);
        v6 = CFStringGetCStringPtr(*(this + 6), 0);
        *buf = 136316162;
        *&buf[4] = "tapLoop";
        *&buf[12] = 1024;
        *&buf[14] = 136;
        *&buf[18] = 1024;
        *&buf[20] = v4;
        *&buf[24] = 2080;
        *&buf[26] = CStringPtr;
        *&buf[34] = 2080;
        *&buf[36] = v6;
        v7 = v3;
LABEL_7:
        _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCLogTap::%s:%d tapLoop entry:%u Owner:%s Name:%s\n", buf, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 4);
      v9 = CFStringGetCStringPtr(*(this + 5), 0);
      v10 = CFStringGetCStringPtr(*(this + 6), 0);
      *buf = 136316162;
      *&buf[4] = "tapLoop";
      *&buf[12] = 1024;
      *&buf[14] = 136;
      *&buf[18] = 1024;
      *&buf[20] = v8;
      *&buf[24] = 2080;
      *&buf[26] = v9;
      *&buf[34] = 2080;
      *&buf[36] = v10;
      v7 = MEMORY[0x277D86220];
      goto LABEL_7;
    }

    if (glog_fd)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v26 = v11;
      v27 = v11;
      v24 = v11;
      v25 = v11;
      *&buf[32] = v11;
      v23 = v11;
      *buf = v11;
      *&buf[16] = v11;
      memset(&v21, 0, sizeof(v21));
      v20 = 0xAAAAAAAAAAAAAAAALL;
      time(&v20);
      localtime_r(&v20, &v21);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
      dprintf(glog_fd, "%s ", buf);
      v12 = glog_fd;
      v13 = *(this + 4);
      v14 = CFStringGetCStringPtr(*(this + 5), 0);
      v15 = CFStringGetCStringPtr(*(this + 6), 0);
      dprintf(v12, "CCLogTap::%s:%d tapLoop entry:%u Owner:%s Name:%s\n", "tapLoop", 136, v13, v14, v15);
    }

    if ((*(**(this + 8) + 88))(*(this + 8)))
    {
      v16 = _logTapInterestCallback_kext;
    }

    else
    {
      v16 = _logTapInterestCallback_dext;
    }

    (*(**(this + 8) + 56))(*(this + 8), v16, this);
    return;
  }

  v17 = v2;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 67109120;
    *&buf[4] = v17;
    v18 = v3;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 67109120;
    *&buf[4] = v17;
    v18 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v18, OS_LOG_TYPE_ERROR, "CCLogTap::tapLoop(), Error setting notification port rc[0x%08x]\n", buf, 8u);
LABEL_19:
  if (glog_fd)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v19;
    v27 = v19;
    v24 = v19;
    v25 = v19;
    *&buf[32] = v19;
    v23 = v19;
    *buf = v19;
    *&buf[16] = v19;
    memset(&v21, 0, sizeof(v21));
    v20 = 0xAAAAAAAAAAAAAAAALL;
    time(&v20);
    localtime_r(&v20, &v21);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogTap::tapLoop(), Error setting notification port rc[0x%08x]\n", v17);
  }
}

void _logTapInterestCallback_dext(CCDaemon *a1, int a2, void **a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit((CCDaemon::getInstance(a1) + 304), memory_order_acquire))
  {
    v4 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v5 = v4;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "_logTapInterestCallback_dext called when CCDaemon::getInstance().isShutdownPending() == true, ignoring\n", buf, 2u);
LABEL_9:
    if (glog_fd)
    {
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16 = v7;
      v17 = v7;
      v14 = v7;
      v15 = v7;
      v12 = v7;
      v13 = v7;
      *buf = v7;
      v11 = v7;
      memset(&v9, 0, sizeof(v9));
      v8 = 0xAAAAAAAAAAAAAAAALL;
      time(&v8);
      localtime_r(&v8, &v9);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v9);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "_logTapInterestCallback_dext called when CCDaemon::getInstance().isShutdownPending() == true, ignoring\n");
    }

    return;
  }

  v6 = *(*a1 + 152);

  v6(a1);
}

void _logTapInterestCallback_kext(CCDaemon *a1, int a2, void **a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit((CCDaemon::getInstance(a1) + 304), memory_order_acquire))
  {
    v4 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v5 = v4;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "_logTapInterestCallback_kext called when CCDaemon::getInstance().isShutdownPending() == true, ignoring\n", buf, 2u);
LABEL_9:
    if (glog_fd)
    {
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16 = v7;
      v17 = v7;
      v14 = v7;
      v15 = v7;
      v12 = v7;
      v13 = v7;
      *buf = v7;
      v11 = v7;
      memset(&v9, 0, sizeof(v9));
      v8 = 0xAAAAAAAAAAAAAAAALL;
      time(&v8);
      localtime_r(&v8, &v9);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v9);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "_logTapInterestCallback_kext called when CCDaemon::getInstance().isShutdownPending() == true, ignoring\n");
    }

    return;
  }

  v6 = *(*a1 + 152);

  v6(a1);
}

BOOL CCLogTap::initWithRegistryEntry(CFAbsoluteTime *this, CCPipeInterface *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  this[44] = CFAbsoluteTimeGetCurrent();
  *(this + 18) = 1;
  *(this + 348) = 0;
  v5 = CCPipeInterface::withRegistryEntry(a2, this, v4);
  if (!v5)
  {
    this[8] = 0.0;
LABEL_9:
    v13 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v14 = v13;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v14 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v14, OS_LOG_TYPE_ERROR, "(CCLogTap) CCPipeInterface::withRegistryEntry failed\n", buf, 2u);
LABEL_13:
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
      *buf = v15;
      v24 = v15;
      memset(&v22, 0, sizeof(v22));
      v21 = 0xAAAAAAAAAAAAAAAALL;
      time(&v21);
      localtime_r(&v21, &v22);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v22);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "(CCLogTap) CCPipeInterface::withRegistryEntry failed\n");
    }

    return 0;
  }

  *(this + 8) = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  CCTap::initWithRegistryEntry(this, a2);
  CFProperty = IORegistryEntryCreateCFProperty(a2, @"LogDataType", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v8 = CFProperty;
    Value = CFNumberGetValue(CFProperty, kCFNumberSInt32Type, this + 26);
    v10 = Value != 0;
    if (Value)
    {
LABEL_25:
      CFRelease(v8);
      return v10;
    }

    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v12 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v12 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "(CCLogTap) CFNumberGetValue failed\n", buf, 2u);
LABEL_23:
    if (glog_fd)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v19;
      v30 = v19;
      v27 = v19;
      v28 = v19;
      v25 = v19;
      v26 = v19;
      *buf = v19;
      v24 = v19;
      memset(&v22, 0, sizeof(v22));
      v21 = 0xAAAAAAAAAAAAAAAALL;
      time(&v21);
      localtime_r(&v21, &v22);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v22);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "(CCLogTap) CFNumberGetValue failed\n");
    }

    goto LABEL_25;
  }

  v16 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v17 = v16;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v17 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v17, OS_LOG_TYPE_ERROR, "(CCLogTap) IORegistryEntryCreateCFProperty failed\n", buf, 2u);
LABEL_20:
  if (glog_fd)
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v18;
    v30 = v18;
    v27 = v18;
    v28 = v18;
    v25 = v18;
    v26 = v18;
    *buf = v18;
    v24 = v18;
    memset(&v22, 0, sizeof(v22));
    v21 = 0xAAAAAAAAAAAAAAAALL;
    time(&v21);
    localtime_r(&v21, &v22);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v22);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "(CCLogTap) IORegistryEntryCreateCFProperty failed\n");
  }

  return 0;
}

uint64_t CCLogTap::capture(uint64_t a1, const void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(*(a1 + 40), 0);
    v6 = CFStringGetCStringPtr(*(a1 + 48), 0);
    *buf = 136315394;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    v7 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v9 = CFStringGetCStringPtr(*(a1 + 48), 0);
    *buf = 136315394;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    v7 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCLogTap::capture, Owner:%s Name:%s\n", buf, 0x16u);
LABEL_7:
  if (glog_fd)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = v10;
    v26 = v10;
    v23 = v10;
    v24 = v10;
    v21 = v10;
    v22 = v10;
    *buf = v10;
    *&buf[16] = v10;
    memset(&v19, 0, sizeof(v19));
    v18 = 0xAAAAAAAAAAAAAAAALL;
    time(&v18);
    localtime_r(&v18, &v19);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v19);
    dprintf(glog_fd, "%s ", buf);
    v11 = glog_fd;
    v12 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v13 = CFStringGetCStringPtr(*(a1 + 48), 0);
    dprintf(v11, "CCLogTap::capture, Owner:%s Name:%s\n", v12, v13);
  }

  v14 = *(a1 + 64);
  if (v14)
  {
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 352) = CFAbsoluteTimeGetCurrent();
  *(a1 + 349) = 1;
  if (v15)
  {
    v16 = IOConnectCallMethod(v15[22], 8u, 0, 0, a2, 0x90uLL, 0, 0, 0, 0);
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 352) = CFAbsoluteTimeGetCurrent();
  *(a1 + 349) = 0;
  return v16;
}

uint64_t CCLogTap::profileRemoved(CFStringRef *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(this[5], 0);
    v4 = CFStringGetCStringPtr(this[6], 0);
    v5 = *(this + 4);
    *buf = 136315650;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    *&buf[22] = 1024;
    *&buf[24] = v5;
    v6 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = CFStringGetCStringPtr(this[5], 0);
    v8 = CFStringGetCStringPtr(this[6], 0);
    v9 = *(this + 4);
    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 1024;
    *&buf[24] = v9;
    v6 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v6, OS_LOG_TYPE_DEFAULT, "CCLogTap::profileRemoved, Owner:%s Name:%s entry:%u\n", buf, 0x1Cu);
LABEL_7:
  if (glog_fd)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v10;
    v25 = v10;
    v22 = v10;
    v23 = v10;
    v20 = v10;
    v21 = v10;
    *buf = v10;
    *&buf[16] = v10;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    v11 = glog_fd;
    v12 = CFStringGetCStringPtr(this[5], 0);
    v13 = CFStringGetCStringPtr(this[6], 0);
    dprintf(v11, "CCLogTap::profileRemoved, Owner:%s Name:%s entry:%u\n", v12, v13, *(this + 4));
  }

  v14 = this[8];
  if (v14)
  {
    if (v15)
    {
      IOConnectCallMethod(v15[22], 0xFu, 0, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  return 0;
}

uint64_t CCLogTap::profileLoaded(CFStringRef *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(this[5], 0);
    v4 = CFStringGetCStringPtr(this[6], 0);
    *buf = 136315394;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    v5 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v6 = CFStringGetCStringPtr(this[5], 0);
    v7 = CFStringGetCStringPtr(this[6], 0);
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCLogTap::profileLoaded, Owner:%s Name:%s\n", buf, 0x16u);
LABEL_7:
  if (glog_fd)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v8;
    v23 = v8;
    v20 = v8;
    v21 = v8;
    v18 = v8;
    v19 = v8;
    *buf = v8;
    *&buf[16] = v8;
    memset(&v16, 0, sizeof(v16));
    v15 = 0xAAAAAAAAAAAAAAAALL;
    time(&v15);
    localtime_r(&v15, &v16);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v16);
    dprintf(glog_fd, "%s ", buf);
    v9 = glog_fd;
    v10 = CFStringGetCStringPtr(this[5], 0);
    v11 = CFStringGetCStringPtr(this[6], 0);
    dprintf(v9, "CCLogTap::profileLoaded, Owner:%s Name:%s\n", v10, v11);
  }

  v12 = this[8];
  if (v12)
  {
    if (v13)
    {
      IOConnectCallMethod(v13[22], 0xCu, 0, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  return 0;
}

uint64_t CCLogTap::ccfree(CCLogTap *this)
{
  CCLogTap::freeResources(this);
  result = CCTap::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

uint64_t CCLogTap::freeResources(uint64_t this)
{
  v1 = this;
  v2 = *(this + 64);
  if (v2)
  {
    this = pthread_mutex_lock((v2 + 16));
    v3 = *(v1 + 64);
    *(v1 + 56) = 1;
    if (v3)
    {

      return pthread_mutex_unlock((v3 + 16));
    }
  }

  else
  {
    *(this + 56) = 1;
  }

  return this;
}

mach_port_t *CCLogTap::updateLogFlags(uint64_t a1, const void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCLogTap::updateLogFlags\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    *buf = v6;
    v11 = v6;
    memset(&v9, 0, sizeof(v9));
    v8 = 0xAAAAAAAAAAAAAAAALL;
    time(&v8);
    localtime_r(&v8, &v9);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v9);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogTap::updateLogFlags\n");
  }

  result = *(a1 + 64);
  if (result)
  {
    if (result)
    {
      return IOConnectCallMethod(result[22], 0xDu, 0, 0, a2, 0x204uLL, 0, 0, 0, 0);
    }
  }

  return result;
}

mach_port_t *CCLogTap::updateConsoleLogFlags(uint64_t a1, const void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(*(a1 + 40), 0);
    v6 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v7 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    *&buf[22] = 1024;
    *&buf[24] = v7;
    v8 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v10 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v11 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    *&buf[24] = v11;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCLogTap::updateConsoleLogFlags Owner:%s Name:%s entry:%u\n", buf, 0x1Cu);
LABEL_7:
  if (glog_fd)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v12;
    v25 = v12;
    v22 = v12;
    v23 = v12;
    v20 = v12;
    v21 = v12;
    *buf = v12;
    *&buf[16] = v12;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    v13 = glog_fd;
    v14 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v15 = CFStringGetCStringPtr(*(a1 + 48), 0);
    dprintf(v13, "CCLogTap::updateConsoleLogFlags Owner:%s Name:%s entry:%u\n", v14, v15, *(a1 + 16));
  }

  result = *(a1 + 64);
  if (result)
  {
    if (result)
    {
      return IOConnectCallMethod(result[22], 0xEu, 0, 0, a2, 0x204uLL, 0, 0, 0, 0);
    }
  }

  return result;
}

mach_port_t *CCLogTap::setLogFlags(uint64_t a1, const void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(*(a1 + 40), 0);
    v6 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v7 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    *&buf[22] = 1024;
    *&buf[24] = v7;
    v8 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v10 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v11 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    *&buf[24] = v11;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCLogTap::setLogFlags Owner:%s Name:%s entry:%u\n", buf, 0x1Cu);
LABEL_7:
  if (glog_fd)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v12;
    v25 = v12;
    v22 = v12;
    v23 = v12;
    v20 = v12;
    v21 = v12;
    *buf = v12;
    *&buf[16] = v12;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    v13 = glog_fd;
    v14 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v15 = CFStringGetCStringPtr(*(a1 + 48), 0);
    dprintf(v13, "CCLogTap::setLogFlags Owner:%s Name:%s entry:%u\n", v14, v15, *(a1 + 16));
  }

  result = *(a1 + 64);
  if (result)
  {
    if (result)
    {
      return IOConnectCallMethod(result[22], 4u, 0, 0, a2, 0x108uLL, 0, 0, 0, 0);
    }
  }

  return result;
}

mach_port_t *CCLogTap::setLogLevel(uint64_t a1, const void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(*(a1 + 40), 0);
    v6 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v7 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    *&buf[22] = 1024;
    *&buf[24] = v7;
    v8 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v10 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v11 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    *&buf[24] = v11;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCLogTap::setLogLevel Owner:%s Name:%s entry:%u\n", buf, 0x1Cu);
LABEL_7:
  if (glog_fd)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v12;
    v25 = v12;
    v22 = v12;
    v23 = v12;
    v20 = v12;
    v21 = v12;
    *buf = v12;
    *&buf[16] = v12;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    v13 = glog_fd;
    v14 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v15 = CFStringGetCStringPtr(*(a1 + 48), 0);
    dprintf(v13, "CCLogTap::setLogLevel Owner:%s Name:%s entry:%u\n", v14, v15, *(a1 + 16));
  }

  result = *(a1 + 64);
  if (result)
  {
    if (result)
    {
      return IOConnectCallMethod(result[22], 5u, 0, 0, a2, 0x104uLL, 0, 0, 0, 0);
    }
  }

  return result;
}

mach_port_t *CCLogTap::setConsoleLogFlags(uint64_t a1, const void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(*(a1 + 40), 0);
    v6 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v7 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    *&buf[22] = 1024;
    *&buf[24] = v7;
    v8 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v10 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v11 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    *&buf[24] = v11;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCLogTap::setConsoleLogFlags Owner:%s Name:%s entry:%u\n", buf, 0x1Cu);
LABEL_7:
  if (glog_fd)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v12;
    v25 = v12;
    v22 = v12;
    v23 = v12;
    v20 = v12;
    v21 = v12;
    *buf = v12;
    *&buf[16] = v12;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    v13 = glog_fd;
    v14 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v15 = CFStringGetCStringPtr(*(a1 + 48), 0);
    dprintf(v13, "CCLogTap::setConsoleLogFlags Owner:%s Name:%s entry:%u\n", v14, v15, *(a1 + 16));
  }

  result = *(a1 + 64);
  if (result)
  {
    if (result)
    {
      return IOConnectCallMethod(result[22], 6u, 0, 0, a2, 0x108uLL, 0, 0, 0, 0);
    }
  }

  return result;
}

mach_port_t *CCLogTap::setConsoleLogLevel(uint64_t a1, const void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(*(a1 + 40), 0);
    v6 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v7 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    *&buf[22] = 1024;
    *&buf[24] = v7;
    v8 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v10 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v11 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    *&buf[24] = v11;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCLogTap::setConsoleLogLevel Owner:%s Name:%s entry:%u\n", buf, 0x1Cu);
LABEL_7:
  if (glog_fd)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v12;
    v25 = v12;
    v22 = v12;
    v23 = v12;
    v20 = v12;
    v21 = v12;
    *buf = v12;
    *&buf[16] = v12;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    v13 = glog_fd;
    v14 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v15 = CFStringGetCStringPtr(*(a1 + 48), 0);
    dprintf(v13, "CCLogTap::setConsoleLogLevel Owner:%s Name:%s entry:%u\n", v14, v15, *(a1 + 16));
  }

  result = *(a1 + 64);
  if (result)
  {
    if (result)
    {
      return IOConnectCallMethod(result[22], 7u, 0, 0, a2, 0x104uLL, 0, 0, 0, 0);
    }
  }

  return result;
}

mach_port_t *CCLogTap::setNotifyTimeout(uint64_t a1, const void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCLogTap::setNotifyTimeout\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    *buf = v6;
    v11 = v6;
    memset(&v9, 0, sizeof(v9));
    v8 = 0xAAAAAAAAAAAAAAAALL;
    time(&v8);
    localtime_r(&v8, &v9);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v9);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogTap::setNotifyTimeout\n");
  }

  result = *(a1 + 64);
  if (result)
  {
    if (result)
    {
      return IOConnectCallMethod(result[22], 9u, 0, 0, a2, 4uLL, 0, 0, 0, 0);
    }
  }

  return result;
}

mach_port_t *CCLogTap::setWatermarkLevel(uint64_t a1, const void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCLogTap::setWatermarkLevel\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    *buf = v6;
    v11 = v6;
    memset(&v9, 0, sizeof(v9));
    v8 = 0xAAAAAAAAAAAAAAAALL;
    time(&v8);
    localtime_r(&v8, &v9);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v9);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogTap::setWatermarkLevel\n");
  }

  result = *(a1 + 64);
  if (result)
  {
    if (result)
    {
      return IOConnectCallMethod(result[22], 0xAu, 0, 0, a2, 4uLL, 0, 0, 0, 0);
    }
  }

  return result;
}

uint64_t CCLogTap::setPolicy(uint64_t a1, int *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(*(a1 + 40), 0);
    v6 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v7 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    *&buf[22] = 1024;
    *&buf[24] = v7;
    v8 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v10 = CFStringGetCStringPtr(*(a1 + 48), 0);
    v11 = *(a1 + 16);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 1024;
    *&buf[24] = v11;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCLogTap::setPolicy, Owner:%s Name:%s entry:%u\n", buf, 0x1Cu);
LABEL_7:
  if (glog_fd)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v12;
    v27 = v12;
    v24 = v12;
    v25 = v12;
    v22 = v12;
    v23 = v12;
    *buf = v12;
    *&buf[16] = v12;
    memset(&v20, 0, sizeof(v20));
    v19 = 0xAAAAAAAAAAAAAAAALL;
    time(&v19);
    localtime_r(&v19, &v20);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v20);
    dprintf(glog_fd, "%s ", buf);
    v13 = glog_fd;
    v14 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v15 = CFStringGetCStringPtr(*(a1 + 48), 0);
    dprintf(v13, "CCLogTap::setPolicy, Owner:%s Name:%s entry:%u\n", v14, v15, *(a1 + 16));
  }

  v16 = *a2;
  if (*a2 == 1)
  {
    (*(**(a1 + 64) + 96))(*(a1 + 64));
    v16 = *a2;
  }

  *(a1 + 212) = v16;
  return IOConnectCallMethod(v17[22], 0xBu, 0, 0, a2, 4uLL, 0, 0, 0, 0);
}

uint64_t CCLogTap::configureLogOptions(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCLogTap::configureLogOptions\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    *buf = v6;
    v11 = v6;
    memset(&v9, 0, sizeof(v9));
    v8 = 0xAAAAAAAAAAAAAAAALL;
    time(&v8);
    localtime_r(&v8, &v9);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v9);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogTap::configureLogOptions\n");
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 104))(result, a2);
  }

  return result;
}

atomic_uint *CCObject::release(atomic_uint *this)
{
  do
  {
    v1 = this[2];
    v2 = v1;
    atomic_compare_exchange_strong_explicit(this + 2, &v2, v1 - 1, memory_order_relaxed, memory_order_relaxed);
  }

  while (v2 != v1);
  if (v1 == 1)
  {
    return (*(*this + 24))();
  }

  return this;
}

void CCObject::retain(CCObject *this)
{
  do
  {
    v1 = *(this + 2);
    v2 = v1;
    atomic_compare_exchange_strong_explicit(this + 2, &v2, v1 + 1, memory_order_relaxed, memory_order_relaxed);
  }

  while (v2 != v1);
}

uint64_t CCObject::ccfree(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void CCObject::CCObject(CCObject *this)
{
  *this = &unk_28583BC80;
  *(this + 2) = 1;
}

{
  *this = &unk_28583BC80;
  *(this + 2) = 1;
}

uint64_t CCPipeInterface::initWithRegistryEntry(CCPipeInterface *this, io_registry_entry_t a2, CCTap *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  *(this + 20) = 0;
  *(this + 21) = a2;
  v6 = pthread_mutex_init((this + 16), 0);
  if (v6)
  {
    v7 = v6;
    v8 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 67109120;
      *&buf[4] = v7;
      v9 = v8;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 67109120;
      *&buf[4] = v7;
      v9 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v9, OS_LOG_TYPE_ERROR, "ERROR INIT MUTEX: %d\n", buf, 8u);
LABEL_10:
    if (glog_fd)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v18;
      v45 = v18;
      v42 = v18;
      v43 = v18;
      v40 = v18;
      v41 = v18;
      *buf = v18;
      *&buf[16] = v18;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "ERROR INIT MUTEX: %d\n", v7);
    }

    return 0;
  }

  *(this + 22) = 0;
  *(this + 13) = a3;
  v10 = *(this + 21);
  v11 = *MEMORY[0x277D85F48];
  v12 = (*(*this + 136))(this);
  v13 = IOServiceOpen(v10, v11, v12, this + 22);
  if (v13)
  {
LABEL_23:
    v23 = v13;
    v24 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(a2, @"Owner", *MEMORY[0x277CBECE8], 0);
    v26 = IORegistryEntryCreateCFProperty(a2, @"Name", v24, 0);
    if (coreCaptureOsLog)
    {
      v36 = coreCaptureOsLog;
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        CStringPtr = CFStringGetCStringPtr(CFProperty, 0);
        v28 = CFStringGetCStringPtr(v26, 0);
        *buf = 136315650;
        *&buf[4] = CStringPtr;
        *&buf[12] = 2080;
        *&buf[14] = v28;
        *&buf[22] = 1024;
        *&buf[24] = v23;
        v29 = v36;
LABEL_35:
        _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "CCPipeInterface::initWithRegistryEntry [pipeOwner: %s, pipeName: %s] Failed to initialize returned %x\n", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v34 = CFStringGetCStringPtr(CFProperty, 0);
      v35 = CFStringGetCStringPtr(v26, 0);
      *buf = 136315650;
      *&buf[4] = v34;
      *&buf[12] = 2080;
      *&buf[14] = v35;
      *&buf[22] = 1024;
      *&buf[24] = v23;
      v29 = MEMORY[0x277D86220];
      goto LABEL_35;
    }

    if (glog_fd)
    {
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v30;
      v45 = v30;
      v42 = v30;
      v43 = v30;
      v40 = v30;
      v41 = v30;
      *buf = v30;
      *&buf[16] = v30;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      v31 = glog_fd;
      v32 = CFStringGetCStringPtr(CFProperty, 0);
      v33 = CFStringGetCStringPtr(v26, 0);
      dprintf(v31, "CCPipeInterface::initWithRegistryEntry [pipeOwner: %s, pipeName: %s] Failed to initialize returned %x\n", v32, v33, v23);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    CCPipeInterface::freeResources(this);
    return 0;
  }

  *(this + 20) = 1;
  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v15 = *(this + 21);
    v16 = *(this + 22);
    *buf = 67109376;
    *&buf[4] = v15;
    *&buf[8] = 1024;
    *&buf[10] = v16;
    v17 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v20 = *(this + 21);
    v21 = *(this + 22);
    *buf = 67109376;
    *&buf[4] = v20;
    *&buf[8] = 1024;
    *&buf[10] = v21;
    v17 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v17, OS_LOG_TYPE_DEFAULT, "CCPipeInterface::initWithRegistryEntry entry:%u fConnectRef(%u)\n", buf, 0xEu);
LABEL_16:
  if (glog_fd)
  {
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44 = v22;
    v45 = v22;
    v42 = v22;
    v43 = v22;
    v40 = v22;
    v41 = v22;
    *buf = v22;
    *&buf[16] = v22;
    memset(&v38, 0, sizeof(v38));
    v37 = 0xAAAAAAAAAAAAAAAALL;
    time(&v37);
    localtime_r(&v37, &v38);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeInterface::initWithRegistryEntry entry:%u fConnectRef(%u)\n", *(this + 21), *(this + 22));
  }

  v13 = (*(*this + 128))(this);
  if (v13)
  {
    goto LABEL_23;
  }

  *(this + 20) = 2;
  return 1;
}

uint64_t CCPipeInterface::freeResources(CCPipeInterface *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(this + 16);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    IONotificationPortSetDispatchQueue(v3, 0);
  }

  v4 = *(this + 17);
  if (v4)
  {
    v5 = &__block_literal_global_820;
  }

  else
  {
    v4 = *(CCDaemon::getInstance(0) + 312);
    v5 = &__block_literal_global_16;
  }

  dispatch_sync(v4, v5);
  if (*(this + 20) >= 1)
  {
    v6 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(this + 21);
        v8 = *(this + 22);
        *buf = 67109376;
        *&buf[4] = v7;
        *&buf[8] = 1024;
        *&buf[10] = v8;
        v9 = v6;
LABEL_14:
        _os_log_impl(&dword_2452A3000, v9, OS_LOG_TYPE_DEFAULT, "CCPipeInterface::IOServiceClose entry:%u fConnectRef(%d)\n", buf, 0xEu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(this + 21);
      v11 = *(this + 22);
      *buf = 67109376;
      *&buf[4] = v10;
      *&buf[8] = 1024;
      *&buf[10] = v11;
      v9 = MEMORY[0x277D86220];
      goto LABEL_14;
    }

    if (glog_fd)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24 = v12;
      v25 = v12;
      v22 = v12;
      v23 = v12;
      v20 = v12;
      v21 = v12;
      *buf = v12;
      v19 = v12;
      memset(&v17, 0, sizeof(v17));
      v16 = 0xAAAAAAAAAAAAAAAALL;
      time(&v16);
      localtime_r(&v16, &v17);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v17);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPipeInterface::IOServiceClose entry:%u fConnectRef(%d)\n", *(this + 21), *(this + 22));
    }

    IOServiceClose(*(this + 22));
    *(this + 20) = 0;
  }

  v13 = *(this + 15);
  if (v13)
  {
    IONotificationPortDestroy(v13);
  }

  v14 = *(this + 17);
  if (v14)
  {
    dispatch_release(v14);
    *(this + 17) = 0;
  }

  return pthread_mutex_destroy((this + 16));
}

uint64_t CCPipeInterface::getDispatchQueue(CCPipeInterface *this)
{
  result = *(this + 17);
  if (!result)
  {
    return *(CCDaemon::getInstance(result) + 312);
  }

  return result;
}

void CCPipeInterface::setDispatchQueue(CCPipeInterface *this)
{
  v44 = *MEMORY[0x277D85DE8];
  v40 = xmmword_2452E9BD6;
  v41 = unk_2452E9BE6;
  v42 = xmmword_2452E9BF6;
  v43 = unk_2452E9C06;
  v36 = xmmword_2452E9B96;
  v37 = unk_2452E9BA6;
  v38 = xmmword_2452E9BB6;
  v39 = unk_2452E9BC6;
  v32 = xmmword_2452E9B56;
  v33 = unk_2452E9B66;
  v34 = xmmword_2452E9B76;
  v35 = unk_2452E9B86;
  strcpy(__dst, "com.apple.corecaptured_");
  v29 = unk_2452E9B2E;
  v30 = xmmword_2452E9B36;
  v31 = unk_2452E9B46;
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v3 = *(this + 21);
    v4 = *(this + 22);
    *buf = 67109376;
    *&buf[4] = v3;
    *&buf[8] = 1024;
    *&buf[10] = v4;
    v5 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v6 = *(this + 21);
    v7 = *(this + 22);
    *buf = 67109376;
    *&buf[4] = v6;
    *&buf[8] = 1024;
    *&buf[10] = v7;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCPipeInterface::setDispatchQueue entry:%u fConnectRef(%d)\n", buf, 0xEu);
LABEL_7:
  if (glog_fd)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v8;
    v27 = v8;
    v24 = v8;
    v25 = v8;
    v22 = v8;
    v23 = v8;
    *buf = v8;
    v21 = v8;
    memset(&v19, 0, sizeof(v19));
    v18 = 0xAAAAAAAAAAAAAAAALL;
    time(&v18);
    localtime_r(&v18, &v19);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v19);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeInterface::setDispatchQueue entry:%u fConnectRef(%d)\n", *(this + 21), *(this + 22));
  }

  if (!*(this + 17))
  {
    CFProperty = IORegistryEntryCreateCFProperty(*(this + 21), @"Name", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v10 = CFProperty;
      Length = CFStringGetLength(CFProperty);
      v12 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
      if (v12)
      {
        v13 = CFStringGetLength(v10);
        if (CFStringGetCString(v10, v12, v13 + 1, 0))
        {
          strlcat(__dst, v12, 0x100uLL);
          v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
          *(this + 17) = dispatch_queue_create(__dst, v14);
        }
      }

      CFRelease(v10);
      free(v12);
      if (!*(this + 17))
      {
        v15 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 0;
          v16 = v15;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 0;
          v16 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "CCPipeInterface::setDispatchQueue failed to create a serial dispatch queue for continuous pipe\n", buf, 2u);
LABEL_20:
        if (glog_fd)
        {
          *&v17 = 0xAAAAAAAAAAAAAAAALL;
          *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v26 = v17;
          v27 = v17;
          v24 = v17;
          v25 = v17;
          v22 = v17;
          v23 = v17;
          *buf = v17;
          v21 = v17;
          memset(&v19, 0, sizeof(v19));
          v18 = 0xAAAAAAAAAAAAAAAALL;
          time(&v18);
          localtime_r(&v18, &v19);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v19);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCPipeInterface::setDispatchQueue failed to create a serial dispatch queue for continuous pipe\n");
        }
      }
    }
  }
}

uint64_t CCPipeInterface::setNotificationPort(CCPipeInterface *this)
{
  v39 = *MEMORY[0x277D85DE8];
  port_info_out = -1431655766;
  name = 0;
  port_info_outCnt = -1431655766;
  v2 = MEMORY[0x277D85F48];
  v3 = mach_port_allocate(*MEMORY[0x277D85F48], 1u, &name);
  if (!v3)
  {
    inserted = mach_port_insert_right(*v2, name, name, 0x14u);
    if (!inserted)
    {
      port_info_outCnt = 1;
      attributes = mach_port_get_attributes(*v2, name, 1, &port_info_out, &port_info_outCnt);
      if (!attributes)
      {
        port_info_out = 10;
        MEMORY[0x245D67EB0](*v2, name, 1, &port_info_out, 1);
        if (MEMORY[0x245D677A0](*(this + 22), 0, name, 0))
        {
          mach_port_deallocate(*v2, name);
          v6 = 0;
          *(this + 15) = IONotificationPortCreate(*MEMORY[0x277CD2898]);
        }

        else
        {
          v6 = 0;
          *(this + 96) = 1;
          *(this + 23) = name;
        }

        goto LABEL_7;
      }

      v21 = attributes;
      v22 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = 67109120;
        *&buf[4] = v21;
        v23 = v22;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = 67109120;
        *&buf[4] = v21;
        v23 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v23, OS_LOG_TYPE_ERROR, "CCPipeInterface::setNotificationPort(), mach_port_get_attributes failed kr[0x%08x]\n", buf, 8u);
LABEL_34:
      v6 = 3758097084;
      if (glog_fd)
      {
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v37 = v26;
        v38 = v26;
        v35 = v26;
        v36 = v26;
        v34 = v26;
        *&buf[16] = v26;
        v33 = v26;
        *buf = v26;
        memset(&v28, 0, sizeof(v28));
        v27 = 0xAAAAAAAAAAAAAAAALL;
        time(&v27);
        localtime_r(&v27, &v28);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCPipeInterface::setNotificationPort(), mach_port_get_attributes failed kr[0x%08x]\n");
      }

      goto LABEL_7;
    }

    v18 = inserted;
    v19 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 67109120;
      *&buf[4] = v18;
      v20 = v19;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 67109120;
      *&buf[4] = v18;
      v20 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "CCPipeInterface::setNotificationPort(), mach_port_insert_right failed kr[0x%08x]\n", buf, 8u);
LABEL_31:
    v6 = 3758097103;
    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v37 = v25;
      v38 = v25;
      v35 = v25;
      v36 = v25;
      v34 = v25;
      *&buf[16] = v25;
      v33 = v25;
      *buf = v25;
      memset(&v28, 0, sizeof(v28));
      v27 = 0xAAAAAAAAAAAAAAAALL;
      time(&v27);
      localtime_r(&v27, &v28);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPipeInterface::setNotificationPort(), mach_port_insert_right failed kr[0x%08x]\n");
    }

    goto LABEL_7;
  }

  v15 = v3;
  v16 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      v17 = v16;
LABEL_37:
      _os_log_error_impl(&dword_2452A3000, v17, OS_LOG_TYPE_ERROR, "CCPipeInterface::setNotificationPort(), mach_port_allocate failed kr[0x%08x]\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v15;
    v17 = MEMORY[0x277D86220];
    goto LABEL_37;
  }

  if (glog_fd)
  {
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v24;
    v38 = v24;
    v35 = v24;
    v36 = v24;
    v34 = v24;
    *&buf[16] = v24;
    v33 = v24;
    *buf = v24;
    memset(&v28, 0, sizeof(v28));
    v27 = 0xAAAAAAAAAAAAAAAALL;
    time(&v27);
    localtime_r(&v27, &v28);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeInterface::setNotificationPort(), mach_port_allocate failed kr[0x%08x]\n", v15);
  }

  v6 = 3758097085;
LABEL_7:
  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v8 = *(this + 96);
    v9 = *(this + 21);
    *buf = 136316162;
    *&buf[4] = "setNotificationPort";
    *&buf[12] = 1024;
    *&buf[14] = 359;
    *&buf[18] = 1024;
    *&buf[20] = v8;
    *&buf[24] = 1024;
    *&buf[26] = v6;
    *&buf[30] = 1024;
    LODWORD(v33) = v9;
    v10 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v11 = *(this + 96);
    v12 = *(this + 21);
    *buf = 136316162;
    *&buf[4] = "setNotificationPort";
    *&buf[12] = 1024;
    *&buf[14] = 359;
    *&buf[18] = 1024;
    *&buf[20] = v11;
    *&buf[24] = 1024;
    *&buf[26] = v6;
    *&buf[30] = 1024;
    LODWORD(v33) = v12;
    v10 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCPipeInterface::%s::%d fNotificationPortIsSet:%d rc:%d entry:%u", buf, 0x24u);
LABEL_13:
  if (glog_fd)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v13;
    v38 = v13;
    v35 = v13;
    v36 = v13;
    v34 = v13;
    *&buf[16] = v13;
    v33 = v13;
    *buf = v13;
    memset(&v28, 0, sizeof(v28));
    v27 = 0xAAAAAAAAAAAAAAAALL;
    time(&v27);
    localtime_r(&v27, &v28);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeInterface::%s::%d fNotificationPortIsSet:%d rc:%d entry:%u", "setNotificationPort", 359, *(this + 96), v6, *(this + 21));
  }

  return v6;
}

uint64_t CCPipeInterface::wakeupTapLoopInternal(CCPipeInterface *this)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(this + 96) != 1)
  {
    return 0;
  }

  v2 = *(this + 23);
  if (!v2)
  {
    return 0;
  }

  *&msg.msgh_voucher_port = 0;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&msg.msgh_bits = 0x2000000013;
  msg.msgh_remote_port = v2;
  msg.msgh_local_port = 0;
  v3 = mach_msg(&msg, 1, 0x20u, 0, 0, 0, 0);
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v5 = *(this + 21);
    *buf = 136315906;
    *&buf[4] = "wakeupTapLoopInternal";
    *&buf[12] = 1024;
    *&buf[14] = 314;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *&buf[24] = 1024;
    *&buf[26] = v5;
    v6 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v7 = *(this + 21);
    *buf = 136315906;
    *&buf[4] = "wakeupTapLoopInternal";
    *&buf[12] = 1024;
    *&buf[14] = 314;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    *&buf[24] = 1024;
    *&buf[26] = v7;
    v6 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v6, OS_LOG_TYPE_DEFAULT, "CCPipeInterface::%s:%d mach_msg SEND_MSG kr:%u entry:%u", buf, 0x1Eu);
LABEL_10:
  if (glog_fd)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v8;
    v20 = v8;
    v17 = v8;
    v18 = v8;
    v15 = v8;
    v16 = v8;
    *buf = v8;
    *&buf[16] = v8;
    memset(&v11, 0, sizeof(v11));
    v10 = 0xAAAAAAAAAAAAAAAALL;
    time(&v10);
    localtime_r(&v10, &v11);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v11);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeInterface::%s:%d mach_msg SEND_MSG kr:%u entry:%u", "wakeupTapLoopInternal", 314, v3, *(this + 21));
  }

  return v3;
}

uint64_t CCPipeInterface::waitForEvent(CCPipeInterface *this, void (*a2)(void *, int, void **, unsigned int), void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v6;
  v50 = v6;
  *reference = v6;
  v48 = v6;
  CFProperty = IORegistryEntryCreateCFProperty(*(this + 21), @"LogPolicy", *MEMORY[0x277CBECE8], 0);
  valuePtr = -1431655766;
  Value = CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  if (valuePtr == 1)
  {
    Value = (*(*this + 96))(this);
  }

  v9 = *(this + 17);
  if (!v9)
  {
    v9 = *(CCDaemon::getInstance(Value) + 312);
  }

  if ((*(this + 96) & 1) == 0)
  {
    v14 = *(this + 15);
    if (!v14)
    {
      return 3758097084;
    }

    IONotificationPortSetDispatchQueue(v14, v9);
    reference[1] = a2;
    *&v48 = a3;
    v15 = *(this + 22);
    MachPort = IONotificationPortGetMachPort(*(this + 15));
    v17 = IOConnectCallAsyncStructMethod(v15, 0, MachPort, reference, 3u, 0, 0, 0, 0);
    if (!v17)
    {
LABEL_27:
      pthread_mutex_lock((this + 16));
      if (*(*(this + 13) + 56) != 1)
      {
LABEL_47:
        pthread_mutex_unlock((this + 16));
        return v17;
      }

      v27 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        v28 = *(this + 21);
        *buf = 136315906;
        *&buf[4] = "waitForEvent";
        *&buf[12] = 1024;
        *&buf[14] = 257;
        *&buf[18] = 1024;
        *&buf[20] = v17;
        *&buf[24] = 1024;
        *&buf[26] = v28;
        v29 = v27;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        v33 = *(this + 21);
        *buf = 136315906;
        *&buf[4] = "waitForEvent";
        *&buf[12] = 1024;
        *&buf[14] = 257;
        *&buf[18] = 1024;
        *&buf[20] = v17;
        *&buf[24] = 1024;
        *&buf[26] = v33;
        v29 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v29, OS_LOG_TYPE_DEFAULT, "CCPipeInterface::%s:%d rcvd terminate msg:0x%x entry:%u", buf, 0x1Eu);
LABEL_45:
      if (glog_fd)
      {
        *&v34 = 0xAAAAAAAAAAAAAAAALL;
        *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v45 = v34;
        v46 = v34;
        v43 = v34;
        v44 = v34;
        v41 = v34;
        v42 = v34;
        *buf = v34;
        *&buf[16] = v34;
        memset(&v38, 0, sizeof(v38));
        v37 = 0xAAAAAAAAAAAAAAAALL;
        time(&v37);
        localtime_r(&v37, &v38);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCPipeInterface::%s:%d rcvd terminate msg:0x%x entry:%u", "waitForEvent", 257, v17, *(this + 21));
      }

      goto LABEL_47;
    }

    v18 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v19 = *(this + 96);
      v20 = *(this + 21);
      *buf = 136316162;
      *&buf[4] = "waitForEvent";
      *&buf[12] = 1024;
      *&buf[14] = 252;
      *&buf[18] = 1024;
      *&buf[20] = v19;
      *&buf[24] = 1024;
      *&buf[26] = v20;
      *&buf[30] = 1024;
      LODWORD(v41) = v17;
      v21 = v18;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v24 = *(this + 96);
      v25 = *(this + 21);
      *buf = 136316162;
      *&buf[4] = "waitForEvent";
      *&buf[12] = 1024;
      *&buf[14] = 252;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      *&buf[24] = 1024;
      *&buf[26] = v25;
      *&buf[30] = 1024;
      LODWORD(v41) = v17;
      v21 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v21, OS_LOG_TYPE_DEFAULT, "IOConnectCallAsyncStructMethod FAILED CCPipeInterface::%s::%d fNotificationPortIsSet:%d entry:%u kr[0x%08x]", buf, 0x24u);
LABEL_25:
    if (glog_fd)
    {
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v45 = v26;
      v46 = v26;
      v43 = v26;
      v44 = v26;
      v41 = v26;
      v42 = v26;
      *buf = v26;
      *&buf[16] = v26;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "IOConnectCallAsyncStructMethod FAILED CCPipeInterface::%s::%d fNotificationPortIsSet:%d entry:%u kr[0x%08x]", "waitForEvent", 252, *(this + 96), *(this + 21), v17);
    }

    goto LABEL_27;
  }

  v10 = dispatch_source_create(MEMORY[0x277D85D08], *(this + 23), 0, v9);
  *(this + 16) = v10;
  if (v10)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ___ZN15CCPipeInterface12waitForEventEPFvPviPS0_jES0__block_invoke;
    handler[3] = &__block_descriptor_tmp_26;
    handler[4] = this;
    handler[5] = a2;
    handler[6] = a3;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_activate(*(this + 16));
    if (*(*(this + 13) + 56) != 1)
    {
      return 0;
    }

    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v12 = *(this + 21);
      *buf = 136315650;
      *&buf[4] = "waitForEvent";
      *&buf[12] = 1024;
      *&buf[14] = 290;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      v13 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v31 = *(this + 21);
      *buf = 136315650;
      *&buf[4] = "waitForEvent";
      *&buf[12] = 1024;
      *&buf[14] = 290;
      *&buf[18] = 1024;
      *&buf[20] = v31;
      v13 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v13, OS_LOG_TYPE_DEFAULT, "CCPipeInterface::%s:%d rcvd terminate signal entry:%u", buf, 0x18u);
LABEL_39:
    if (glog_fd)
    {
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v45 = v32;
      v46 = v32;
      v43 = v32;
      v44 = v32;
      v41 = v32;
      v42 = v32;
      *buf = v32;
      *&buf[16] = v32;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPipeInterface::%s:%d rcvd terminate signal entry:%u", "waitForEvent", 290, *(this + 21));
    }

    return 0;
  }

  v22 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v23 = v22;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v23 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v23, OS_LOG_TYPE_DEFAULT, "CCPipeInterface::dispatch_source_create failed", buf, 2u);
LABEL_34:
  v17 = 3758097084;
  if (glog_fd)
  {
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v30;
    v46 = v30;
    v43 = v30;
    v44 = v30;
    v41 = v30;
    v42 = v30;
    *buf = v30;
    *&buf[16] = v30;
    memset(&v38, 0, sizeof(v38));
    v37 = 0xAAAAAAAAAAAAAAAALL;
    time(&v37);
    localtime_r(&v37, &v38);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeInterface::dispatch_source_create failed");
  }

  return v17;
}

uint64_t ___ZN15CCPipeInterface12waitForEventEPFvPviPS0_jES0__block_invoke(uint64_t result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v2;
  v6[1] = v2;
  v3 = *(v1 + 92);
  if (v3)
  {
    if ((*(*(v1 + 104) + 56) & 1) == 0)
    {
      v4 = result;
      v5 = mach_msg(v6, 2, 0, 0x20u, v3, 0, 0);
      return (*(v4 + 40))(*(v4 + 48), v5, 0, 0);
    }
  }

  return result;
}

uint64_t CCPipeInterface::ccfree(CCPipeInterface *this)
{
  result = CCPipeInterface::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

CCPipeInterface *CCPipeInterface::withRegistryEntry(CCPipeInterface *this, CCTap *a2, CCTap *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  CFProperty = IORegistryEntryCreateCFProperty(this, @"PipeType", *MEMORY[0x277CBECE8], 0);
  valuePtr = -86;
  CFNumberGetValue(CFProperty, kCFNumberSInt8Type, &valuePtr);
  if (!valuePtr)
  {
    CCLogPipeInterface::withRegistryEntry(this, a2, v6);
  }

  if (valuePtr == 1)
  {
    CCDataPipeInterface::withRegistryEntry(this, a2, v6);
  }

  v8 = valuePtr;
  v9 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 67109120;
    *&buf[4] = v8;
    v10 = v9;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 67109120;
    *&buf[4] = v8;
    v10 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCPipeInterface::withRegistryEntry Unsupported pipe type(%d) \n", buf, 8u);
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
    v16 = v11;
    memset(&v13, 0, sizeof(v13));
    v12 = 0xAAAAAAAAAAAAAAAALL;
    time(&v12);
    localtime_r(&v12, &v13);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v13);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeInterface::withRegistryEntry Unsupported pipe type(%d) \n", valuePtr);
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return 0;
}

uint64_t CCPipeMonitor::initWithDictionaryAndQueue(CCPipeMonitor *this, CFTypeRef cf, NSObject *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!coreCaptureOsLog)
  {
    coreCaptureOsLog = os_log_create("com.apple.corecaptured", "corecapture");
    if (!coreCaptureOsLog)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2452A3000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "CCPipeMonitor::CCPipeMonitor Failed to create OS LOG.\n", buf, 2u);
      }

      if (glog_fd)
      {
        *&v6 = 0xAAAAAAAAAAAAAAAALL;
        *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21 = v6;
        v22 = v6;
        v19 = v6;
        v20 = v6;
        v17 = v6;
        v18 = v6;
        *buf = v6;
        v16 = v6;
        memset(&v14, 0, sizeof(v14));
        v13 = 0xAAAAAAAAAAAAAAAALL;
        time(&v13);
        localtime_r(&v13, &v14);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v14);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCPipeMonitor::CCPipeMonitor Failed to create OS LOG.\n");
      }
    }
  }

  *(this + 17) = 0;
  CCServiceMonitor::initWithDictionaryAndQueue(this, cf, a3);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  *(this + 15) = Mutable;
  if (Mutable)
  {
    CCIOReportDumpQueue::createInstanceWithQueue(a3, v8);
  }

  v9 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = v9;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
  }

  _os_log_fault_impl(&dword_2452A3000, v10, OS_LOG_TYPE_FAULT, "CCPipeMonitor::CCPipeMonitor Failed to create pipe dictionary.\n", buf, 2u);
LABEL_13:
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
    v16 = v11;
    memset(&v14, 0, sizeof(v14));
    v13 = 0xAAAAAAAAAAAAAAAALL;
    time(&v13);
    localtime_r(&v13, &v14);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v14);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeMonitor::CCPipeMonitor Failed to create pipe dictionary.\n");
  }

  return 0;
}

void CCPipeMonitor::serviceTerminated(CCPipeMonitor *this, io_registry_entry_t entry)
{
  v47 = *MEMORY[0x277D85DE8];
  if (entry)
  {
    v4 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"Owner", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      v7 = IORegistryEntryCreateCFProperty(entry, @"Name", v4, 0);
      v8 = coreCaptureOsLog;
      if (v7)
      {
        v9 = v7;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_10;
          }

          *buf = 136316162;
          *&buf[4] = "serviceTerminated";
          *&buf[12] = 1024;
          *&buf[14] = 370;
          *&buf[18] = 2080;
          *&buf[20] = CFStringGetCStringPtr(v6, 0);
          *&buf[28] = 2080;
          *&buf[30] = CFStringGetCStringPtr(v9, 0);
          *&buf[38] = 1024;
          *&buf[40] = entry;
          v10 = v8;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_10;
          }

          *buf = 136316162;
          *&buf[4] = "serviceTerminated";
          *&buf[12] = 1024;
          *&buf[14] = 370;
          *&buf[18] = 2080;
          *&buf[20] = CFStringGetCStringPtr(v6, 0);
          *&buf[28] = 2080;
          *&buf[30] = CFStringGetCStringPtr(v9, 0);
          *&buf[38] = 1024;
          *&buf[40] = entry;
          v10 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d Owner:%s Name:%s entry:%u", buf, 0x2Cu);
LABEL_10:
        if (glog_fd)
        {
          *&v11 = 0xAAAAAAAAAAAAAAAALL;
          *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v45 = v11;
          v46 = v11;
          v43 = v11;
          v44 = v11;
          *&buf[32] = v11;
          v42 = v11;
          *buf = v11;
          *&buf[16] = v11;
          memset(&v40, 0, sizeof(v40));
          v39 = 0xAAAAAAAAAAAAAAAALL;
          time(&v39);
          localtime_r(&v39, &v40);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
          dprintf(glog_fd, "%s ", buf);
          v12 = glog_fd;
          CStringPtr = CFStringGetCStringPtr(v6, 0);
          v14 = CFStringGetCStringPtr(v9, 0);
          dprintf(v12, "%s:%d Owner:%s Name:%s entry:%u", "serviceTerminated", 370, CStringPtr, v14, entry);
        }

        pthread_mutex_lock((this + 208));
        Value = CFDictionaryGetValue(*(this + 15), entry);
        v16 = coreCaptureOsLog;
        if (Value)
        {
          v17 = Value;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "serviceTerminated";
              *&buf[12] = 1024;
              *&buf[14] = 380;
              *&buf[18] = 1024;
              *&buf[20] = entry;
              v18 = v16;
LABEL_21:
              _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::%s:%d Release Tap for entry:%u", buf, 0x18u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "serviceTerminated";
            *&buf[12] = 1024;
            *&buf[14] = 380;
            *&buf[18] = 1024;
            *&buf[20] = entry;
            v18 = MEMORY[0x277D86220];
            goto LABEL_21;
          }

          if (glog_fd)
          {
            *&v22 = 0xAAAAAAAAAAAAAAAALL;
            *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v45 = v22;
            v46 = v22;
            v43 = v22;
            v44 = v22;
            *&buf[32] = v22;
            v42 = v22;
            *buf = v22;
            *&buf[16] = v22;
            memset(&v40, 0, sizeof(v40));
            v39 = 0xAAAAAAAAAAAAAAAALL;
            time(&v39);
            localtime_r(&v39, &v40);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCPipeMonitor::%s:%d Release Tap for entry:%u", "serviceTerminated", 380, entry);
          }

          CFDictionaryRemoveValue(*(this + 15), entry);
          (*(*v17 + 48))(v17);
LABEL_30:
          pthread_mutex_unlock((this + 208));
          CFRelease(v9);
LABEL_31:
          CFRelease(v6);
          return;
        }

        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v19 = CFStringGetCStringPtr(v6, 0);
          v20 = CFStringGetCStringPtr(v9, 0);
          *buf = 136316162;
          *&buf[4] = "serviceTerminated";
          *&buf[12] = 1024;
          *&buf[14] = 385;
          *&buf[18] = 2080;
          *&buf[20] = v19;
          *&buf[28] = 2080;
          *&buf[30] = v20;
          *&buf[38] = 1024;
          *&buf[40] = entry;
          v21 = v16;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v23 = CFStringGetCStringPtr(v6, 0);
          v24 = CFStringGetCStringPtr(v9, 0);
          *buf = 136316162;
          *&buf[4] = "serviceTerminated";
          *&buf[12] = 1024;
          *&buf[14] = 385;
          *&buf[18] = 2080;
          *&buf[20] = v23;
          *&buf[28] = 2080;
          *&buf[30] = v24;
          *&buf[38] = 1024;
          *&buf[40] = entry;
          v21 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v21, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::%s:%d Tap corresponding to terminated Pipe not found Owner:%s Name:%s entry:%u", buf, 0x2Cu);
LABEL_28:
        if (glog_fd)
        {
          *&v25 = 0xAAAAAAAAAAAAAAAALL;
          *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v45 = v25;
          v46 = v25;
          v43 = v25;
          v44 = v25;
          *&buf[32] = v25;
          v42 = v25;
          *buf = v25;
          *&buf[16] = v25;
          memset(&v40, 0, sizeof(v40));
          v39 = 0xAAAAAAAAAAAAAAAALL;
          time(&v39);
          localtime_r(&v39, &v40);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
          dprintf(glog_fd, "%s ", buf);
          v26 = glog_fd;
          v27 = CFStringGetCStringPtr(v6, 0);
          v28 = CFStringGetCStringPtr(v9, 0);
          dprintf(v26, "CCPipeMonitor::%s:%d Tap corresponding to terminated Pipe not found Owner:%s Name:%s entry:%u", "serviceTerminated", 385, v27, v28, entry);
        }

        goto LABEL_30;
      }

      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *buf = 136315394;
        *&buf[4] = "serviceTerminated";
        *&buf[12] = 1024;
        *&buf[14] = 367;
        v33 = v8;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *buf = 136315394;
        *&buf[4] = "serviceTerminated";
        *&buf[12] = 1024;
        *&buf[14] = 367;
        v33 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v33, OS_LOG_TYPE_ERROR, "Invalid argument @'%s':%06u", buf, 0x12u);
LABEL_50:
      if (glog_fd)
      {
        *&v38 = 0xAAAAAAAAAAAAAAAALL;
        *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v45 = v38;
        v46 = v38;
        v43 = v38;
        v44 = v38;
        *&buf[32] = v38;
        v42 = v38;
        *buf = v38;
        *&buf[16] = v38;
        memset(&v40, 0, sizeof(v40));
        v39 = 0xAAAAAAAAAAAAAAAALL;
        time(&v39);
        localtime_r(&v39, &v40);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "Invalid argument @'%s':%06u", "serviceTerminated", 367);
      }

      goto LABEL_31;
    }

    v31 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      *buf = 136315394;
      *&buf[4] = "serviceTerminated";
      *&buf[12] = 1024;
      *&buf[14] = 364;
      v32 = v31;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      *buf = 136315394;
      *&buf[4] = "serviceTerminated";
      *&buf[12] = 1024;
      *&buf[14] = 364;
      v32 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "Invalid argument @'%s':%06u", buf, 0x12u);
LABEL_46:
    if (glog_fd)
    {
      *&v37 = 0xAAAAAAAAAAAAAAAALL;
      *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v45 = v37;
      v46 = v37;
      v43 = v37;
      v44 = v37;
      *&buf[32] = v37;
      v42 = v37;
      *buf = v37;
      *&buf[16] = v37;
      memset(&v40, 0, sizeof(v40));
      v39 = 0xAAAAAAAAAAAAAAAALL;
      time(&v39);
      localtime_r(&v39, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      v35 = glog_fd;
      v36 = 364;
      goto LABEL_48;
    }

    return;
  }

  v29 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136315394;
    *&buf[4] = "serviceTerminated";
    *&buf[12] = 1024;
    *&buf[14] = 361;
    v30 = v29;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136315394;
    *&buf[4] = "serviceTerminated";
    *&buf[12] = 1024;
    *&buf[14] = 361;
    v30 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v30, OS_LOG_TYPE_ERROR, "Invalid argument @'%s':%06u", buf, 0x12u);
LABEL_43:
  if (glog_fd)
  {
    *&v34 = 0xAAAAAAAAAAAAAAAALL;
    *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v34;
    v46 = v34;
    v43 = v34;
    v44 = v34;
    *&buf[32] = v34;
    v42 = v34;
    *buf = v34;
    *&buf[16] = v34;
    memset(&v40, 0, sizeof(v40));
    v39 = 0xAAAAAAAAAAAAAAAALL;
    time(&v39);
    localtime_r(&v39, &v40);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
    dprintf(glog_fd, "%s ", buf);
    v35 = glog_fd;
    v36 = 361;
LABEL_48:
    dprintf(v35, "Invalid argument @'%s':%06u", "serviceTerminated", v36);
  }
}

void CCPipeMonitor::servicePublished(CCPipeMonitor *this, CCTap *entry)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"Owner", *MEMORY[0x277CBECE8], 0);
  v6 = IORegistryEntryCreateCFProperty(entry, @"Name", v4, 0);
  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315906;
    *&buf[4] = "servicePublished";
    *&buf[12] = 2080;
    *&buf[14] = CFStringGetCStringPtr(CFProperty, 0);
    *&buf[22] = 2080;
    *&buf[24] = CFStringGetCStringPtr(v6, 0);
    LOWORD(v38) = 1024;
    *(&v38 + 2) = entry;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315906;
    *&buf[4] = "servicePublished";
    *&buf[12] = 2080;
    *&buf[14] = CFStringGetCStringPtr(CFProperty, 0);
    *&buf[22] = 2080;
    *&buf[24] = CFStringGetCStringPtr(v6, 0);
    LOWORD(v38) = 1024;
    *(&v38 + 2) = entry;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "%s Owner:%s Name:%s entry:%u\n", buf, 0x26u);
LABEL_7:
  if (glog_fd)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v9;
    v43 = v9;
    v40 = v9;
    v41 = v9;
    v38 = v9;
    v39 = v9;
    *buf = v9;
    *&buf[16] = v9;
    memset(&v36, 0, sizeof(v36));
    v35 = 0xAAAAAAAAAAAAAAAALL;
    time(&v35);
    localtime_r(&v35, &v36);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v36);
    dprintf(glog_fd, "%s ", buf);
    v10 = glog_fd;
    CStringPtr = CFStringGetCStringPtr(CFProperty, 0);
    v12 = CFStringGetCStringPtr(v6, 0);
    dprintf(v10, "%s Owner:%s Name:%s entry:%u\n", "servicePublished", CStringPtr, v12, entry);
  }

  pthread_mutex_lock((this + 208));
  v13 = entry;
  if (CFDictionaryGetValue(*(this + 15), entry))
  {
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = CFStringGetCStringPtr(CFProperty, 0);
        v16 = CFStringGetCStringPtr(v6, 0);
        *buf = 136315906;
        *&buf[4] = "servicePublished";
        *&buf[12] = 2080;
        *&buf[14] = v15;
        *&buf[22] = 2080;
        *&buf[24] = v16;
        LOWORD(v38) = 1024;
        *(&v38 + 2) = entry;
        v17 = v14;
LABEL_25:
        _os_log_impl(&dword_2452A3000, v17, OS_LOG_TYPE_DEFAULT, "%s Duplicate Owner:%s Name:%s entry:%u\n", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22 = CFStringGetCStringPtr(CFProperty, 0);
      v23 = CFStringGetCStringPtr(v6, 0);
      *buf = 136315906;
      *&buf[4] = "servicePublished";
      *&buf[12] = 2080;
      *&buf[14] = v22;
      *&buf[22] = 2080;
      *&buf[24] = v23;
      LOWORD(v38) = 1024;
      *(&v38 + 2) = entry;
      v17 = MEMORY[0x277D86220];
      goto LABEL_25;
    }

    if (glog_fd)
    {
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v24;
      v43 = v24;
      v40 = v24;
      v41 = v24;
      v38 = v24;
      v39 = v24;
      *buf = v24;
      *&buf[16] = v24;
      memset(&v36, 0, sizeof(v36));
      v35 = 0xAAAAAAAAAAAAAAAALL;
      time(&v35);
      localtime_r(&v35, &v36);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v36);
      dprintf(glog_fd, "%s ", buf);
      v25 = glog_fd;
      v26 = CFStringGetCStringPtr(CFProperty, 0);
      v27 = CFStringGetCStringPtr(v6, 0);
      dprintf(v25, "%s Duplicate Owner:%s Name:%s entry:%u\n", "servicePublished", v26, v27, entry);
    }

    pthread_mutex_unlock((this + 208));
    goto LABEL_29;
  }

  pthread_mutex_unlock((this + 208));
  v18 = CCTap::withRegistryEntry(entry);
  if (v18)
  {
    v19 = v18;
    v20 = *(this + 16);
    v19[10] = v20;
    if (v20)
    {
      (*(*v20 + 40))(v20);
    }

    pthread_mutex_lock((this + 208));
    CFDictionaryAddValue(*(this + 15), v13, v19);
    pthread_mutex_unlock((this + 208));
    if (*(this + 17))
    {
      if (CCProfileMonitor::fProfileLoaded)
      {
        if (!shouldReduceLogRetention() || CFProperty && (v21 = *(*(this + 17) + 120)) != 0 && CFSetContainsValue(v21, CFProperty))
        {
          (*(*v19 + 72))(v19);
          CCProfileMonitor::applyProfile(*(this + 17), CFProperty, v6);
          goto LABEL_29;
        }

        v28 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          v29 = CFStringGetCStringPtr(CFProperty, 0);
          *buf = 136315650;
          *&buf[4] = "servicePublished";
          *&buf[12] = 1024;
          *&buf[14] = 341;
          *&buf[18] = 2080;
          *&buf[20] = v29;
          v30 = v28;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          v31 = CFStringGetCStringPtr(CFProperty, 0);
          *buf = 136315650;
          *&buf[4] = "servicePublished";
          *&buf[12] = 1024;
          *&buf[14] = 341;
          *&buf[18] = 2080;
          *&buf[20] = v31;
          v30 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v30, OS_LOG_TYPE_DEFAULT, "%s:%d Owner:%s skipping profileLoaded", buf, 0x1Cu);
LABEL_40:
        if (glog_fd)
        {
          *&v32 = 0xAAAAAAAAAAAAAAAALL;
          *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v42 = v32;
          v43 = v32;
          v40 = v32;
          v41 = v32;
          v38 = v32;
          v39 = v32;
          *buf = v32;
          *&buf[16] = v32;
          memset(&v36, 0, sizeof(v36));
          v35 = 0xAAAAAAAAAAAAAAAALL;
          time(&v35);
          localtime_r(&v35, &v36);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v36);
          dprintf(glog_fd, "%s ", buf);
          v33 = glog_fd;
          v34 = CFStringGetCStringPtr(CFProperty, 0);
          dprintf(v33, "%s:%d Owner:%s skipping profileLoaded", "servicePublished", 341, v34);
        }
      }
    }
  }

LABEL_29:
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void CCPipeMonitor::ccfree(CCPipeMonitor *this)
{
  v44 = *MEMORY[0x277D85DE8];
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

  _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::ccfree Entered\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v4;
    v43 = v4;
    v40 = v4;
    v41 = v4;
    v38 = v4;
    v39 = v4;
    *buf = v4;
    v37 = v4;
    memset(&v35, 0, sizeof(v35));
    v34 = 0xAAAAAAAAAAAAAAAALL;
    time(&v34);
    localtime_r(&v34, &v35);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeMonitor::ccfree Entered\n");
  }

  if (pthread_mutex_lock((this + 144)))
  {
    v5 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v6 = v5;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v6 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v6, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::ccfree Failed to acquire lock\n", buf, 2u);
LABEL_24:
    if (glog_fd)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v13;
      v43 = v13;
      v40 = v13;
      v41 = v13;
      v38 = v13;
      v39 = v13;
      *buf = v13;
      v37 = v13;
      memset(&v35, 0, sizeof(v35));
      v34 = 0xAAAAAAAAAAAAAAAALL;
      time(&v34);
      localtime_r(&v34, &v35);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPipeMonitor::ccfree Failed to acquire lock\n");
    }

    return;
  }

  v7 = *(this + 17);
  if (v7)
  {
    (*(*v7 + 48))(v7);
    *(this + 17) = 0;
  }

  CCPipeMonitor::stopPipeMonitor(this);
  v8 = *(this + 16);
  if (v8)
  {
    (*(*v8 + 48))(v8);
    *(this + 16) = 0;
  }

  v9 = pthread_mutex_unlock((this + 144));
  if (v9)
  {
    v10 = v9;
    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 67109120;
      *&buf[4] = v10;
      v12 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 67109120;
      *&buf[4] = v10;
      v12 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::ccfree - fails to unlock. Error[%d]\n", buf, 8u);
LABEL_29:
    if (glog_fd)
    {
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v14;
      v43 = v14;
      v40 = v14;
      v41 = v14;
      v38 = v14;
      v39 = v14;
      *buf = v14;
      v37 = v14;
      memset(&v35, 0, sizeof(v35));
      v34 = 0xAAAAAAAAAAAAAAAALL;
      time(&v34);
      localtime_r(&v34, &v35);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPipeMonitor::ccfree - fails to unlock. Error[%d]\n", v10);
    }
  }

  v15 = pthread_mutex_destroy((this + 144));
  if (!v15)
  {
    goto LABEL_40;
  }

  v16 = v15;
  v17 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *buf = 67109120;
    *&buf[4] = v16;
    v18 = v17;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *buf = 67109120;
    *&buf[4] = v16;
    v18 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::ccfree - fails to destroy lock. Error[%d]\n", buf, 8u);
LABEL_38:
  if (glog_fd)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v19;
    v43 = v19;
    v40 = v19;
    v41 = v19;
    v38 = v19;
    v39 = v19;
    *buf = v19;
    v37 = v19;
    memset(&v35, 0, sizeof(v35));
    v34 = 0xAAAAAAAAAAAAAAAALL;
    time(&v34);
    localtime_r(&v34, &v35);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeMonitor::ccfree - fails to destroy lock. Error[%d]\n", v16);
  }

LABEL_40:
  v20 = pthread_mutex_destroy((this + 208));
  if (!v20)
  {
    goto LABEL_49;
  }

  v21 = v20;
  v22 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    *buf = 67109120;
    *&buf[4] = v21;
    v23 = v22;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    *buf = 67109120;
    *&buf[4] = v21;
    v23 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v23, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::ccfree - fails to destroy fMutex lock. Error[%d]\n", buf, 8u);
LABEL_47:
  if (glog_fd)
  {
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v24;
    v43 = v24;
    v40 = v24;
    v41 = v24;
    v38 = v24;
    v39 = v24;
    *buf = v24;
    v37 = v24;
    memset(&v35, 0, sizeof(v35));
    v34 = 0xAAAAAAAAAAAAAAAALL;
    time(&v34);
    localtime_r(&v34, &v35);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeMonitor::ccfree - fails to destroy fMutex lock. Error[%d]\n", v21);
  }

LABEL_49:
  v25 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v26 = v25;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v26 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v26, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::ccfree Exit - Destroyed lock\n", buf, 2u);
LABEL_55:
  if (glog_fd)
  {
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v27;
    v43 = v27;
    v40 = v27;
    v41 = v27;
    v38 = v27;
    v39 = v27;
    *buf = v27;
    v37 = v27;
    memset(&v35, 0, sizeof(v35));
    v34 = 0xAAAAAAAAAAAAAAAALL;
    time(&v34);
    localtime_r(&v34, &v35);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeMonitor::ccfree Exit - Destroyed lock\n");
  }

  v28 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v29 = v28;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v29 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v29, OS_LOG_TYPE_DEFAULT, "CCServiceMonitor::ccfree()\n", buf, 2u);
LABEL_63:
  if (glog_fd)
  {
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v30;
    v43 = v30;
    v40 = v30;
    v41 = v30;
    v38 = v30;
    v39 = v30;
    *buf = v30;
    v37 = v30;
    memset(&v35, 0, sizeof(v35));
    v34 = 0xAAAAAAAAAAAAAAAALL;
    time(&v34);
    localtime_r(&v34, &v35);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCServiceMonitor::ccfree()\n");
  }

  CCServiceMonitor::ccfree(this);
  if (glog_fd)
  {
    close(glog_fd);
    glog_fd = 0;
  }

  v31 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v32 = v31;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v32 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v32, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::ccfree Exit\n", buf, 2u);
LABEL_73:
  if (glog_fd)
  {
    *&v33 = 0xAAAAAAAAAAAAAAAALL;
    *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v33;
    v43 = v33;
    v40 = v33;
    v41 = v33;
    v38 = v33;
    v39 = v33;
    *buf = v33;
    v37 = v33;
    memset(&v35, 0, sizeof(v35));
    v34 = 0xAAAAAAAAAAAAAAAALL;
    time(&v34);
    localtime_r(&v34, &v35);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v35);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeMonitor::ccfree Exit\n");
  }
}

uint64_t CCPipeMonitor::stopPipeMonitor(CCPipeMonitor *this)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!*(this + 15))
  {
    return 1;
  }

  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (!Count)
  {
    pthread_mutex_unlock((this + 208));
    return 1;
  }

  v3 = Count;
  v4 = 8 * Count;
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_malloc(v4, 0x80040B8603338uLL);
    if (v7)
    {
      v8 = v7;
      CFDictionaryGetKeysAndValues(*(this + 15), v6, v7);
      v9 = 0;
      while (1)
      {
        v10 = v8[v9];
        v11 = coreCaptureOsLog;
        if (!v10)
        {
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "stopPipeMonitor";
              *&buf[12] = 1024;
              *&buf[14] = 188;
              v13 = v11;
              goto LABEL_25;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "stopPipeMonitor";
            *&buf[12] = 1024;
            *&buf[14] = 188;
            v13 = MEMORY[0x277D86220];
LABEL_25:
            _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCPipeMonitor::%s:%d Tap corresponding to Pipe not found", buf, 0x12u);
          }

          if (glog_fd)
          {
            *&v15 = 0xAAAAAAAAAAAAAAAALL;
            *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v24 = v15;
            v25 = v15;
            v22 = v15;
            v23 = v15;
            v20 = v15;
            v21 = v15;
            *buf = v15;
            *&buf[16] = v15;
            memset(&v18, 0, sizeof(v18));
            v17 = 0xAAAAAAAAAAAAAAAALL;
            time(&v17);
            localtime_r(&v17, &v18);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCPipeMonitor::%s:%d Tap corresponding to Pipe not found", "stopPipeMonitor", 188);
          }

          goto LABEL_22;
        }

        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "stopPipeMonitor";
            *&buf[12] = 1024;
            *&buf[14] = 184;
            *&buf[18] = 2048;
            *&buf[20] = v9;
            v12 = v11;
LABEL_15:
            _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::%s:%d Release Tap i %zu", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "stopPipeMonitor";
          *&buf[12] = 1024;
          *&buf[14] = 184;
          *&buf[18] = 2048;
          *&buf[20] = v9;
          v12 = MEMORY[0x277D86220];
          goto LABEL_15;
        }

        if (glog_fd)
        {
          *&v14 = 0xAAAAAAAAAAAAAAAALL;
          *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v24 = v14;
          v25 = v14;
          v22 = v14;
          v23 = v14;
          v20 = v14;
          v21 = v14;
          *buf = v14;
          *&buf[16] = v14;
          memset(&v18, 0, sizeof(v18));
          v17 = 0xAAAAAAAAAAAAAAAALL;
          time(&v17);
          localtime_r(&v17, &v18);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCPipeMonitor::%s:%d Release Tap i %zu", "stopPipeMonitor", 184, v9);
        }

        CFDictionaryRemoveValue(*(this + 15), v6[v9]);
        (*(*v10 + 48))(v10);
LABEL_22:
        if (v3 == ++v9)
        {
          pthread_mutex_unlock((this + 208));
          free(v6);
          free(v8);
          return 1;
        }
      }
    }

    free(v6);
  }

  pthread_mutex_unlock((this + 208));
  return 0;
}

void CCPipeMonitor::~CCPipeMonitor(CCPipeMonitor *this)
{
  *this = &unk_28583C048;
  std::recursive_mutex::~recursive_mutex((this + 16));

  JUMPOUT(0x245D67A60);
}

{
  *this = &unk_28583C048;
  std::recursive_mutex::~recursive_mutex((this + 16));
}

void CCPipeMonitor::forEachTapWithOwnerAndPipe(CCPipeMonitor *this, const __CFString *a2, const __CFString *a3, void (*a4)(CCTap *, void *), void *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (!Count)
  {
    v44 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v45 = v44;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v45 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v45, OS_LOG_TYPE_DEFAULT, "forEachTapWithOwnerAndPipe:no tap found", buf, 2u);
LABEL_48:
    if (glog_fd)
    {
      *&v50 = 0xAAAAAAAAAAAAAAAALL;
      *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v63 = v50;
      v64 = v50;
      v61 = v50;
      v62 = v50;
      v59 = v50;
      v60 = v50;
      *buf = v50;
      *&buf[16] = v50;
      memset(&v57, 0, sizeof(v57));
      v56 = 0xAAAAAAAAAAAAAAAALL;
      time(&v56);
      localtime_r(&v56, &v57);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v57);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "forEachTapWithOwnerAndPipe:no tap found");
    }

    goto LABEL_53;
  }

  v9 = Count;
  v10 = 8 * Count;
  v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v11)
  {
    v46 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v47 = v46;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v47 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v47, OS_LOG_TYPE_ERROR, "forEachTapWithOwnerAndPipe:Failed to malloc memory for keyArray", buf, 2u);
LABEL_51:
    if (glog_fd)
    {
      *&v51 = 0xAAAAAAAAAAAAAAAALL;
      *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v63 = v51;
      v64 = v51;
      v61 = v51;
      v62 = v51;
      v59 = v51;
      v60 = v51;
      *buf = v51;
      *&buf[16] = v51;
      memset(&v57, 0, sizeof(v57));
      v56 = 0xAAAAAAAAAAAAAAAALL;
      time(&v56);
      localtime_r(&v56, &v57);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v57);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "forEachTapWithOwnerAndPipe:Failed to malloc memory for keyArray");
    }

LABEL_53:
    pthread_mutex_unlock((this + 208));
    return;
  }

  v12 = v11;
  v13 = malloc_type_malloc(v10, 0x80040B8603338uLL);
  if (!v13)
  {
    v48 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v49 = v48;
LABEL_61:
        _os_log_error_impl(&dword_2452A3000, v49, OS_LOG_TYPE_ERROR, "forEachTapWithOwnerAndPipe:Failed to malloc memory for valueArray", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v49 = MEMORY[0x277D86220];
      goto LABEL_61;
    }

    if (glog_fd)
    {
      *&v52 = 0xAAAAAAAAAAAAAAAALL;
      *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v63 = v52;
      v64 = v52;
      v61 = v52;
      v62 = v52;
      v59 = v52;
      v60 = v52;
      *buf = v52;
      *&buf[16] = v52;
      memset(&v57, 0, sizeof(v57));
      v56 = 0xAAAAAAAAAAAAAAAALL;
      time(&v56);
      localtime_r(&v56, &v57);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v57);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "forEachTapWithOwnerAndPipe:Failed to malloc memory for valueArray");
    }

    pthread_mutex_unlock((this + 208));
    v41 = v12;
    goto LABEL_30;
  }

  v14 = v13;
  CFDictionaryGetKeysAndValues(*(this + 15), v12, v13);
  v15 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "forEachTapWithOwnerAndPipe";
      *&buf[12] = 2080;
      *&buf[14] = CFStringGetCStringPtr(a2, 0);
      *&buf[22] = 2080;
      *&buf[24] = CFStringGetCStringPtr(a3, 0);
      v16 = v15;
LABEL_33:
      _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "%s Tap Find Tap with Owner:%s Name:%s\n", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "forEachTapWithOwnerAndPipe";
    *&buf[12] = 2080;
    *&buf[14] = CFStringGetCStringPtr(a2, 0);
    *&buf[22] = 2080;
    *&buf[24] = CFStringGetCStringPtr(a3, 0);
    v16 = MEMORY[0x277D86220];
    goto LABEL_33;
  }

  v53 = this;
  if (glog_fd)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63 = v17;
    v64 = v17;
    v61 = v17;
    v62 = v17;
    v59 = v17;
    v60 = v17;
    *buf = v17;
    *&buf[16] = v17;
    memset(&v57, 0, sizeof(v57));
    v56 = 0xAAAAAAAAAAAAAAAALL;
    time(&v56);
    localtime_r(&v56, &v57);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v57);
    dprintf(glog_fd, "%s ", buf);
    v18 = glog_fd;
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    v20 = CFStringGetCStringPtr(a3, 0);
    dprintf(v18, "%s Tap Find Tap with Owner:%s Name:%s\n", "forEachTapWithOwnerAndPipe", CStringPtr, v20);
  }

  for (i = 0; i != v9; ++i)
  {
    v22 = v14[i];
    if (!v22 || !CCTap::findWithOwnerAndPipe(v14[i], a2, a3))
    {
      continue;
    }

    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        v24 = CFStringGetCStringPtr(a2, 0);
        v25 = CFStringGetCStringPtr(a3, 0);
        *buf = 136315650;
        *&buf[4] = "forEachTapWithOwnerAndPipe";
        *&buf[12] = 2080;
        *&buf[14] = v24;
        *&buf[22] = 2080;
        *&buf[24] = v25;
        v26 = v23;
LABEL_18:
        _os_log_impl(&dword_2452A3000, v26, OS_LOG_TYPE_DEFAULT, "%s Tap Found tap with Owner:%s Name:%s\n", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = CFStringGetCStringPtr(a2, 0);
      v28 = CFStringGetCStringPtr(a3, 0);
      *buf = 136315650;
      *&buf[4] = "forEachTapWithOwnerAndPipe";
      *&buf[12] = 2080;
      *&buf[14] = v27;
      *&buf[22] = 2080;
      *&buf[24] = v28;
      v26 = MEMORY[0x277D86220];
      goto LABEL_18;
    }

    if (glog_fd)
    {
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v63 = v29;
      v64 = v29;
      v61 = v29;
      v62 = v29;
      v59 = v29;
      v60 = v29;
      *buf = v29;
      *&buf[16] = v29;
      memset(&v57, 0, sizeof(v57));
      v56 = 0xAAAAAAAAAAAAAAAALL;
      time(&v56);
      localtime_r(&v56, &v57);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v57);
      dprintf(glog_fd, "%s ", buf);
      v30 = glog_fd;
      v31 = CFStringGetCStringPtr(a2, 0);
      v32 = CFStringGetCStringPtr(a3, 0);
      dprintf(v30, "%s Tap Found tap with Owner:%s Name:%s\n", "forEachTapWithOwnerAndPipe", v31, v32);
    }

    a4(v22, a5);
  }

  v33 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      v34 = CFStringGetCStringPtr(a2, 0);
      v35 = CFStringGetCStringPtr(a3, 0);
      *buf = 136315650;
      *&buf[4] = "forEachTapWithOwnerAndPipe";
      *&buf[12] = 2080;
      *&buf[14] = v34;
      *&buf[22] = 2080;
      *&buf[24] = v35;
      v36 = v33;
      goto LABEL_35;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v42 = CFStringGetCStringPtr(a2, 0);
    v43 = CFStringGetCStringPtr(a3, 0);
    *buf = 136315650;
    *&buf[4] = "forEachTapWithOwnerAndPipe";
    *&buf[12] = 2080;
    *&buf[14] = v42;
    *&buf[22] = 2080;
    *&buf[24] = v43;
    v36 = MEMORY[0x277D86220];
LABEL_35:
    _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "%s CANNOT FIND tap with Owner:%s Name:%s\n", buf, 0x20u);
  }

  if (glog_fd)
  {
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63 = v37;
    v64 = v37;
    v61 = v37;
    v62 = v37;
    v59 = v37;
    v60 = v37;
    *buf = v37;
    *&buf[16] = v37;
    memset(&v57, 0, sizeof(v57));
    v56 = 0xAAAAAAAAAAAAAAAALL;
    time(&v56);
    localtime_r(&v56, &v57);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v57);
    dprintf(glog_fd, "%s ", buf);
    v38 = glog_fd;
    v39 = CFStringGetCStringPtr(a2, 0);
    v40 = CFStringGetCStringPtr(a3, 0);
    dprintf(v38, "%s CANNOT FIND tap with Owner:%s Name:%s\n", "forEachTapWithOwnerAndPipe", v39, v40);
  }

  pthread_mutex_unlock((v53 + 208));
  free(v12);
  v41 = v14;
LABEL_30:
  free(v41);
}

void CCPipeMonitor::forEachTapWithDirectory(CCPipeMonitor *this, const __CFString *a2, void (*a3)(CCTap *, void *), void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (!Count)
  {
    v17 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v18 = v17;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v18 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "forEachTapWithDirectory:no tap found", buf, 2u);
LABEL_24:
    if (glog_fd)
    {
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v34 = v23;
      v35 = v23;
      v32 = v23;
      v33 = v23;
      v30 = v23;
      v31 = v23;
      *buf = v23;
      v29 = v23;
      memset(&v27, 0, sizeof(v27));
      v26 = 0xAAAAAAAAAAAAAAAALL;
      time(&v26);
      localtime_r(&v26, &v27);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "forEachTapWithDirectory:no tap found");
    }

    goto LABEL_29;
  }

  v9 = Count;
  v10 = 8 * Count;
  v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v11)
  {
    v19 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v20 = v19;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v20 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "forEachTapWithDirectory:Failed to malloc memory for keyArray", buf, 2u);
LABEL_27:
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
      dprintf(glog_fd, "forEachTapWithDirectory:Failed to malloc memory for keyArray");
    }

LABEL_29:
    pthread_mutex_unlock((this + 208));
    return;
  }

  v12 = v11;
  v13 = malloc_type_malloc(v10, 0x80040B8603338uLL);
  if (v13)
  {
    v14 = v13;
    CFDictionaryGetKeysAndValues(*(this + 15), v12, v13);
    for (i = 0; i != v9; ++i)
    {
      v16 = v14[i];
      if (v16 && CCTap::findWithDirectory(v14[i], a2))
      {
        a3(v16, a4);
      }
    }

    pthread_mutex_unlock((this + 208));
    free(v12);

    free(v14);
    return;
  }

  v21 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = v21;
LABEL_38:
      _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "forEachTapWithDirectory:Failed to malloc memory for valueArray", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v22 = MEMORY[0x277D86220];
    goto LABEL_38;
  }

  if (glog_fd)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v34 = v25;
    v35 = v25;
    v32 = v25;
    v33 = v25;
    v30 = v25;
    v31 = v25;
    *buf = v25;
    v29 = v25;
    memset(&v27, 0, sizeof(v27));
    v26 = 0xAAAAAAAAAAAAAAAALL;
    time(&v26);
    localtime_r(&v26, &v27);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "forEachTapWithDirectory:Failed to malloc memory for valueArray");
  }

  pthread_mutex_unlock((this + 208));
  free(v12);
}

const void *CCPipeMonitor::findTapWithOwnerAndPipe(CCPipeMonitor *this, const __CFString *a2, const __CFString *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (!Count)
  {
    v16 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v17 = v16;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v17 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v17, OS_LOG_TYPE_DEFAULT, "findTapWithOwnerAndPipe:no tap found", buf, 2u);
LABEL_24:
    if (glog_fd)
    {
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v22;
      v34 = v22;
      v31 = v22;
      v32 = v22;
      v29 = v22;
      v30 = v22;
      *buf = v22;
      v28 = v22;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "findTapWithOwnerAndPipe:no tap found");
    }

    goto LABEL_29;
  }

  v7 = Count;
  v8 = 8 * Count;
  v9 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v9)
  {
    v18 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v19 = v18;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v19 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "findTapWithOwnerAndPipe:Failed to malloc memory for keyArray", buf, 2u);
LABEL_27:
    if (glog_fd)
    {
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v23;
      v34 = v23;
      v31 = v23;
      v32 = v23;
      v29 = v23;
      v30 = v23;
      *buf = v23;
      v28 = v23;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "findTapWithOwnerAndPipe:Failed to malloc memory for keyArray");
    }

LABEL_29:
    pthread_mutex_unlock((this + 208));
    return 0;
  }

  v10 = v9;
  v11 = malloc_type_malloc(v8, 0x80040B8603338uLL);
  if (!v11)
  {
    v20 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v21 = v20;
LABEL_38:
        _os_log_error_impl(&dword_2452A3000, v21, OS_LOG_TYPE_ERROR, "findTapWithOwnerAndPipe:Failed to malloc memory for valueArray", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = MEMORY[0x277D86220];
      goto LABEL_38;
    }

    if (glog_fd)
    {
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v24;
      v34 = v24;
      v31 = v24;
      v32 = v24;
      v29 = v24;
      v30 = v24;
      *buf = v24;
      v28 = v24;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "findTapWithOwnerAndPipe:Failed to malloc memory for valueArray");
    }

    pthread_mutex_unlock((this + 208));
    free(v10);
    return 0;
  }

  v12 = v11;
  CFDictionaryGetKeysAndValues(*(this + 15), v10, v11);
  v13 = 0;
  while (1)
  {
    v14 = v12[v13];
    if (v14)
    {
      if (CCTap::findWithOwnerAndPipe(v12[v13], a2, a3))
      {
        break;
      }
    }

    if (v7 == ++v13)
    {
      v14 = 0;
      goto LABEL_10;
    }
  }

  (*(*v14 + 40))(v14);
LABEL_10:
  pthread_mutex_unlock((this + 208));
  free(v10);
  free(v12);
  return v14;
}

void CCPipeMonitor::profileLoaded(CCPipeMonitor *this)
{
  v41 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (!Count)
  {
    v21 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v22 = v21;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v22 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v22, OS_LOG_TYPE_DEFAULT, "profileLoaded:no tap found", buf, 2u);
LABEL_39:
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
      memset(&v33, 0, sizeof(v33));
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      localtime_r(&v32, &v33);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "profileLoaded:no tap found");
    }

    goto LABEL_44;
  }

  v3 = Count;
  v4 = 8 * Count;
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v5)
  {
    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v24 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v24 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "profileLoaded:Failed to malloc memory for keyArray", buf, 2u);
LABEL_42:
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
      memset(&v33, 0, sizeof(v33));
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      localtime_r(&v32, &v33);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "profileLoaded:Failed to malloc memory for keyArray");
    }

LABEL_44:
    pthread_mutex_unlock((this + 208));
    return;
  }

  v6 = v5;
  v7 = malloc_type_malloc(v4, 0x80040B8603338uLL);
  v30 = v7;
  v31 = v6;
  if (v7)
  {
    v8 = v7;
    CFDictionaryGetKeysAndValues(*(this + 15), v6, v7);
    v9 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v10 = *v8;
      CFProperty = IORegistryEntryCreateCFProperty(*v6, @"Owner", v9, 0);
      if (v10)
      {
        if (shouldReduceLogRetention())
        {
          v12 = *(*(this + 17) + 120);
          v13 = !CFProperty || v12 == 0;
          if (v13 || !CFSetContainsValue(v12, CFProperty))
          {
            v14 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
              {
                CStringPtr = CFStringGetCStringPtr(CFProperty, 0);
                *buf = 136315650;
                *&buf[4] = "profileLoaded";
                *&buf[12] = 1024;
                *&buf[14] = 542;
                *&buf[18] = 2080;
                *&buf[20] = CStringPtr;
                v16 = v14;
                goto LABEL_18;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v17 = CFStringGetCStringPtr(CFProperty, 0);
              *buf = 136315650;
              *&buf[4] = "profileLoaded";
              *&buf[12] = 1024;
              *&buf[14] = 542;
              *&buf[18] = 2080;
              *&buf[20] = v17;
              v16 = MEMORY[0x277D86220];
LABEL_18:
              _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "%s:%d Owner:%s skipping profileLoaded", buf, 0x1Cu);
            }

            if (glog_fd)
            {
              *&v18 = 0xAAAAAAAAAAAAAAAALL;
              *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v39 = v18;
              v40 = v18;
              v37 = v18;
              v38 = v18;
              v35 = v18;
              v36 = v18;
              *buf = v18;
              *&buf[16] = v18;
              memset(&v33, 0, sizeof(v33));
              v32 = 0xAAAAAAAAAAAAAAAALL;
              time(&v32);
              localtime_r(&v32, &v33);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
              dprintf(glog_fd, "%s ", buf);
              v19 = glog_fd;
              v20 = CFStringGetCStringPtr(CFProperty, 0);
              dprintf(v19, "%s:%d Owner:%s skipping profileLoaded", "profileLoaded", 542, v20);
            }

            goto LABEL_21;
          }
        }

        (*(*v10 + 72))(v10);
      }

LABEL_21:
      if (CFProperty)
      {
        CFRelease(CFProperty);
      }

      ++v6;
      ++v8;
      if (!--v3)
      {
        goto LABEL_24;
      }
    }
  }

  v25 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = v25;
LABEL_51:
      _os_log_error_impl(&dword_2452A3000, v26, OS_LOG_TYPE_ERROR, "profileLoaded:Failed to malloc memory for valueArray", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v26 = MEMORY[0x277D86220];
    goto LABEL_51;
  }

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
    memset(&v33, 0, sizeof(v33));
    v32 = 0xAAAAAAAAAAAAAAAALL;
    time(&v32);
    localtime_r(&v32, &v33);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "profileLoaded:Failed to malloc memory for valueArray");
  }

LABEL_24:
  pthread_mutex_unlock((this + 208));
  free(v31);
  if (v30)
  {
    free(v30);
  }
}

void CCPipeMonitor::profileRemoved(CCPipeMonitor *this)
{
  v30 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (!Count)
  {
    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v12 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v12 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "profileRemoved:no tap found", buf, 2u);
LABEL_23:
    if (glog_fd)
    {
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v28 = v17;
      v29 = v17;
      v26 = v17;
      v27 = v17;
      v24 = v17;
      v25 = v17;
      *buf = v17;
      v23 = v17;
      memset(&v21, 0, sizeof(v21));
      v20 = 0xAAAAAAAAAAAAAAAALL;
      time(&v20);
      localtime_r(&v20, &v21);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "profileRemoved:no tap found");
    }

    goto LABEL_28;
  }

  v3 = Count;
  v4 = 8 * Count;
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v5)
  {
    v13 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v14 = v13;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v14 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v14, OS_LOG_TYPE_ERROR, "profileRemoved:Failed to malloc memory for keyArray", buf, 2u);
LABEL_26:
    if (glog_fd)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v28 = v18;
      v29 = v18;
      v26 = v18;
      v27 = v18;
      v24 = v18;
      v25 = v18;
      *buf = v18;
      v23 = v18;
      memset(&v21, 0, sizeof(v21));
      v20 = 0xAAAAAAAAAAAAAAAALL;
      time(&v20);
      localtime_r(&v20, &v21);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "profileRemoved:Failed to malloc memory for keyArray");
    }

LABEL_28:
    pthread_mutex_unlock((this + 208));
    return;
  }

  v6 = v5;
  v7 = malloc_type_malloc(v4, 0x80040B8603338uLL);
  if (v7)
  {
    v8 = v7;
    CFDictionaryGetKeysAndValues(*(this + 15), v6, v7);
    for (i = 0; i != v3; ++i)
    {
      v10 = v8[i];
      if (v10)
      {
        (*(*v10 + 80))(v10);
      }
    }

    pthread_mutex_unlock((this + 208));
    free(v6);

    free(v8);
    return;
  }

  v15 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = v15;
LABEL_37:
      _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "profileRemoved:Failed to malloc memory for valueArray", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = MEMORY[0x277D86220];
    goto LABEL_37;
  }

  if (glog_fd)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28 = v19;
    v29 = v19;
    v26 = v19;
    v27 = v19;
    v24 = v19;
    v25 = v19;
    *buf = v19;
    v23 = v19;
    memset(&v21, 0, sizeof(v21));
    v20 = 0xAAAAAAAAAAAAAAAALL;
    time(&v20);
    localtime_r(&v20, &v21);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "profileRemoved:Failed to malloc memory for valueArray");
  }

  pthread_mutex_unlock((this + 208));
  free(v6);
}

uint64_t CCPipeMonitor::releaseProfileMonitor(CCPipeMonitor *this)
{
  result = *(this + 17);
  if (result)
  {
    result = (*(*result + 48))(result);
    *(this + 17) = 0;
  }

  return result;
}

void CCPipeMonitor::quiesceAllTaps(CCPipeMonitor *this)
{
  v37 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (!Count)
  {
    v18 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v19 = v18;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v19 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v19, OS_LOG_TYPE_DEFAULT, "quiesceAllTaps:no tap found", buf, 2u);
LABEL_39:
    if (glog_fd)
    {
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v24;
      v36 = v24;
      v33 = v24;
      v34 = v24;
      v31 = v24;
      v32 = v24;
      *buf = v24;
      v30 = v24;
      memset(&v28, 0, sizeof(v28));
      v27 = 0xAAAAAAAAAAAAAAAALL;
      time(&v27);
      localtime_r(&v27, &v28);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "quiesceAllTaps:no tap found");
    }

    goto LABEL_44;
  }

  v3 = Count;
  v4 = 8 * Count;
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v5)
  {
    v20 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v21 = v20;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v21 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v21, OS_LOG_TYPE_ERROR, "quiesceAllTaps:Failed to malloc memory for keyArray", buf, 2u);
LABEL_42:
    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v25;
      v36 = v25;
      v33 = v25;
      v34 = v25;
      v31 = v25;
      v32 = v25;
      *buf = v25;
      v30 = v25;
      memset(&v28, 0, sizeof(v28));
      v27 = 0xAAAAAAAAAAAAAAAALL;
      time(&v27);
      localtime_r(&v27, &v28);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "quiesceAllTaps:Failed to malloc memory for keyArray");
    }

LABEL_44:
    pthread_mutex_unlock((this + 208));
    return;
  }

  v6 = v5;
  v7 = malloc_type_malloc(v4, 0x80040B8603338uLL);
  if (!v7)
  {
    v22 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v23 = v22;
LABEL_52:
        _os_log_error_impl(&dword_2452A3000, v23, OS_LOG_TYPE_ERROR, "quiesceAllTaps:Failed to malloc memory for valueArray", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = MEMORY[0x277D86220];
      goto LABEL_52;
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
      v30 = v26;
      memset(&v28, 0, sizeof(v28));
      v27 = 0xAAAAAAAAAAAAAAAALL;
      time(&v27);
      localtime_r(&v27, &v28);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "quiesceAllTaps:Failed to malloc memory for valueArray");
    }

    pthread_mutex_unlock((this + 208));
    v17 = v6;
    goto LABEL_23;
  }

  v8 = v7;
  CFDictionaryGetKeysAndValues(*(this + 15), v6, v7);
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      v10 = v8[i];
      if (v10)
      {
        (*(*v10 + 104))(v10);
      }
    }

    v11 = 0;
    v12 = 100;
    while (1)
    {
      v13 = v8[v11];
      if (v13)
      {
        if (((*(*v13 + 112))(v8[v11]) & 1) == 0)
        {
          break;
        }
      }

LABEL_14:
      if (++v11 == v3)
      {
        goto LABEL_22;
      }
    }

    while (--v12)
    {
      usleep(0x186A0u);
      if ((*(*v13 + 112))(v13))
      {
        goto LABEL_14;
      }
    }

    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 134217984;
      *&buf[4] = v11 + 1;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 134217984;
      *&buf[4] = v11 + 1;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCDaemon::Not all taps got quiesced, tap %ld was not ready", buf, 0xCu);
LABEL_20:
    if (glog_fd)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v16;
      v36 = v16;
      v33 = v16;
      v34 = v16;
      v31 = v16;
      v32 = v16;
      *buf = v16;
      v30 = v16;
      memset(&v28, 0, sizeof(v28));
      v27 = 0xAAAAAAAAAAAAAAAALL;
      time(&v27);
      localtime_r(&v27, &v28);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCDaemon::Not all taps got quiesced, tap %ld was not ready", v11 + 1);
    }
  }

LABEL_22:
  pthread_mutex_unlock((this + 208));
  free(v6);
  v17 = v8;
LABEL_23:
  free(v17);
}