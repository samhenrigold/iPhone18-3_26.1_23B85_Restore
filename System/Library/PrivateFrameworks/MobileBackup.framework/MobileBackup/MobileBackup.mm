id MBGetDefaultLog(uint64_t a1)
{
  if (MBGetDefaultLog_onceToken != -1)
  {
    MBGetDefaultLog_cold_1();
  }

  v2 = MBGetDefaultLog_log;

  return v2;
}

void __MBCreateLogDirectory_block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (MBCreateLogDirectory_previousLogHook)
  {
    (*(MBCreateLogDirectory_previousLogHook + 16))();
  }

  v5 = *(a3 + 136);
  if (v5)
  {
    if (!strcmp(v5, "MBSwift"))
    {
      v6 = os_log_copy_message_string();
      if (v6)
      {
        v7 = v6;
        if (a2 <= 1)
        {
          if (!a2)
          {
            v8 = @"Df";
            goto LABEL_19;
          }

          if (a2 == 1)
          {
            v8 = @"I ";
            goto LABEL_19;
          }
        }

        else
        {
          switch(a2)
          {
            case 2:
              v8 = @"Db";
              goto LABEL_19;
            case 16:
              v8 = @"E ";
              goto LABEL_19;
            case 17:
              v8 = @"F ";
LABEL_19:
              v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
              _MBLogHelper(v8, v9);

              free(v7);
              return;
          }
        }

        v8 = @"???";
        goto LABEL_19;
      }
    }
  }
}

void _MBLog(void *a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = a1;
  if (sFileLoggingEnabled == 1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = MBStripLogFormatString(v5);
    v8 = [v6 initWithFormat:v7 arguments:va];

    _MBLogHelper(v3, v8);
    objc_autoreleasePoolPop(v4);
  }
}

id MBStripLogFormatString(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [v1 characterAtIndex:v5];
      if (v4 > 1)
      {
        break;
      }

      if (v4)
      {
        v9 = (v8 - 64);
        if (v9 <= 0x3B)
        {
          if (((1 << (v8 - 64)) & 0x129C2FA010000E3) == 0)
          {
            if (v9 != 16)
            {
              if (v9 == 59)
              {
                if (v7 < v5)
                {
                  v10 = v3;
                  v11 = [v1 substringWithRange:{v7, v5 - v7}];
                  [v10 appendString:v11];
                }

                v4 = 2;
                v7 = v5;
                goto LABEL_20;
              }

              goto LABEL_26;
            }

LABEL_23:
            if (v6 < v5)
            {
              v13 = v3;
              v14 = [v1 substringWithRange:{v6, v5 - v6}];
              [v13 appendString:v14];
            }

            [v3 appendString:@"p"];
            v6 = v5 + 1;
          }

LABEL_19:
          v4 = 0;
          v7 = v6;
          goto LABEL_20;
        }

LABEL_26:
        if (v8 != 37)
        {
          v4 = 3;
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v4 = v8 == 37;
LABEL_20:
      if (v2 == ++v5)
      {
        goto LABEL_29;
      }
    }

    if (v4 == 2)
    {
      if (v8 == 125)
      {
        v6 = v5 + 1;
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_20;
    }

    v12 = (v8 - 64);
    if (v12 > 0x38)
    {
      goto LABEL_26;
    }

    if (((1 << (v8 - 64)) & 0x129C2FA010000E3) != 0)
    {
      goto LABEL_19;
    }

    if (v12 == 16)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v7 = 0;
LABEL_29:
  v15 = v2 > v7;
  v16 = v2 - v7;
  if (v15)
  {
    v17 = v3;
    v18 = [v1 substringWithRange:{v7, v16}];
    [v17 appendString:v18];
  }

  return v3;
}

void _MBLogHelper(void *a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (_MBLogHelper_onceToken != -1)
  {
    _MBLogHelper_cold_1();
  }

  v6 = MBGetLogDateFormatter(v4);
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v6 stringFromDate:v7];

  v79 = 0;
  if (pthread_threadid_np(0, &v79))
  {
    v9 = 0;
    v79 = 0;
  }

  else
  {
    v9 = v79;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %d.%llx %@: %@\n", v8, _MBLogHelper_pid, v9, v3, v5];
  v11 = [v10 UTF8String];
  v12 = strlen(v11);
  v13 = pthread_mutex_lock(&sLogLock);
  if (sLog)
  {
    if (MBMaxLogSize_onceToken != -1)
    {
      _MBLogHelper_cold_2();
    }

    if (MBMaxLogSize_sMaxLogSize > sLoggedSize)
    {
      goto LABEL_79;
    }

    v13 = sLog;
    if (sLog)
    {
      v13 = fclose(sLog);
    }
  }

  if (MBCreateLogDirectory_onceToken != -1)
  {
    _MBLogHelper_cold_3();
  }

  if (MBCreateLogDirectory_sCanCreateLogDirectory == 1)
  {
    v15 = MBGetLogDir(v13, v14);
    v16 = [v15 fileSystemRepresentation];
    if (mkdir(v16, 0x1C0u) && *__error() != 17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _MBLogHelper_cold_4();
      }
    }

    else if (!geteuid())
    {
      memset(&v87, 0, sizeof(v87));
      if (lstat(v16, &v87))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          _MBLogHelper_cold_5();
        }
      }

      else
      {
        v59 = MBMobileUID();
        if (v87.st_uid == v59 && v87.st_gid == v59 || !lchown(v16, v59, v59))
        {
          if ((~v87.st_mode & 0x1C0) != 0 && lchmod(v16, 0x1C0u) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            _MBLogHelper_cold_7();
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          _MBLogHelper_cold_6();
        }
      }
    }
  }

  if (MBCanCreateLogs_onceToken != -1)
  {
    _MBLogHelper_cold_8();
  }

  if ((MBCanCreateLogs_sCanCreateLogs & 1) == 0)
  {
    sLog = 0;
    goto LABEL_81;
  }

  v17 = MBGetLogDir(v13, v14);
  v70 = MBLogBasename();
  v18 = [v17 stringByAppendingPathComponent:?];
  sLoggedSize = 0;
  memset(&v87, 0, sizeof(v87));
  v72 = v17;
  if (!lstat([v18 fileSystemRepresentation], &v87))
  {
    if (MBMaxLogSize_onceToken != -1)
    {
      _MBLogHelper_cold_2();
    }

    v73 = MBMaxLogSize_sMaxLogSize;
    if (MBMaxLogCount_onceToken != -1)
    {
      _MBLogHelper_cold_10();
    }

    v77 = MBMaxLogCount_sMaxLogCount;
    v74 = time(0);
    st_size = v87.st_size;
    if (v73 < v87.st_size || (sLoggedSize = v87.st_size, v74 > v87.st_birthtimespec.tv_sec) && v74 - v87.st_birthtimespec.tv_sec >= 86401)
    {
      v19 = [MEMORY[0x1E696AC08] defaultManager];
      if (MBCanRotateLogs_onceToken != -1)
      {
        _MBLogHelper_cold_11();
      }

      if (MBCanRotateLogs_sCanRotateLogs)
      {
        v63 = v18;
        v64 = v12;
        v65 = v11;
        v66 = v10;
        v67 = v8;
        v68 = v5;
        v69 = v3;
        v75 = v19;
        v20 = [v19 contentsOfDirectoryAtPath:v17 error:0];
        v21 = MEMORY[0x1E696AE18];
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __MBOpenLogFile_block_invoke;
        v85[3] = &unk_1E8684588;
        v22 = v70;
        v86 = v22;
        v61 = [v21 predicateWithBlock:v85];
        v62 = v20;
        v60 = [v20 filteredArrayUsingPredicate:?];
        v23 = [v60 sortedArrayUsingComparator:&__block_literal_global_21];
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v24 = v23;
        v25 = [v23 countByEnumeratingWithState:&v81 objects:v88 count:16];
        v26 = v73;
        if (!v25)
        {
          goto LABEL_65;
        }

        v27 = v25;
        v28 = *v82;
        v71 = *MEMORY[0x1E696A250];
        while (1)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v82 != v28)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v81 + 1) + 8 * i);
            v31 = [v30 stringByDeletingPathExtension];
            v32 = [v31 isEqualToString:v22];

            if ((v32 & 1) == 0)
            {
              if (([v30 isEqualToString:v22] & 1) == 0)
              {
                continue;
              }

              v34 = 0;
LABEL_48:
              v35 = [v17 stringByAppendingPathComponent:v30];
              v36 = v35;
              if (v77 <= v34)
              {
                if (!lstat([v35 fileSystemRepresentation], &v87) && v74 > v87.st_mtimespec.tv_sec && v74 - v87.st_mtimespec.tv_sec >= 864001)
                {
                  goto LABEL_59;
                }
              }

              else if (v26 < st_size)
              {
                if (v77 > (v34 + 1))
                {
                  v37 = [MEMORY[0x1E696AD98] numberWithInt:?];
                  [v37 description];
                  v39 = v38 = v17;
                  v40 = [v22 stringByAppendingPathExtension:v39];
                  v41 = [v38 stringByAppendingPathComponent:v40];

                  v26 = v73;
                  v80 = 0;
                  LOBYTE(v37) = [v75 moveItemAtPath:v36 toPath:v41 error:&v80];
                  v42 = v80;
                  v43 = v42;
                  if ((v37 & 1) == 0)
                  {
                    v44 = [v42 domain];
                    if ([v44 isEqualToString:v71])
                    {
                      v45 = [v43 code];

                      v46 = v45 == 513;
                      v26 = v73;
                      if (v46)
                      {
                        [v75 removeItemAtPath:v36 error:0];
                      }
                    }

                    else
                    {
                    }
                  }

                  v17 = v72;
                  goto LABEL_62;
                }

LABEL_59:
                [v75 removeItemAtPath:v36 error:0];
              }

LABEL_62:

              continue;
            }

            v33 = [v30 pathExtension];
            v34 = [v33 intValue];

            if ((v34 & 0x80000000) == 0)
            {
              goto LABEL_48;
            }
          }

          v27 = [v24 countByEnumeratingWithState:&v81 objects:v88 count:16];
          if (!v27)
          {
LABEL_65:

            v5 = v68;
            v3 = v69;
            v10 = v66;
            v8 = v67;
            v12 = v64;
            v11 = v65;
            v18 = v63;
            v19 = v75;
            goto LABEL_68;
          }
        }
      }

      [v19 removeItemAtPath:v18 error:0];
LABEL_68:
    }
  }

  v47 = v10;
  v48 = v8;
  v49 = v5;
  v50 = v3;
  v51 = v12;
  v52 = v11;
  v53 = v18;
  v54 = fopen([v18 fileSystemRepresentation], "a");
  if (v54)
  {
    v78 = MBMobileUID();
    v55 = fileno(v54);
    if (!fstat(v55, &v87))
    {
      st_uid = v87.st_uid;
      if (v87.st_uid != v78 && st_uid == geteuid())
      {
        fchown(v55, v78, 0xFFFFFFFF);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    _MBLogHelper_cold_12();
  }

  sLog = v54;
  v3 = v50;
  v5 = v49;
  v8 = v48;
  v10 = v47;
  if (v54)
  {
    v11 = v52;
    v12 = v51;
    if (ftello(v54))
    {
      fputs("\n", sLog);
      ++sLoggedSize;
    }

LABEL_79:
    if (sLog)
    {
      sLoggedSize += v12;
      fputs(v11, sLog);
      v57 = sFlushTimer;
      v58 = dispatch_time(0, 3000000000);
      dispatch_source_set_timer(v57, v58, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

LABEL_81:
  pthread_mutex_unlock(&sLogLock);
}

id MBGetLogDateFormatter(uint64_t a1)
{
  if (MBGetLogDateFormatter_onceToken != -1)
  {
    MBGetLogDateFormatter_cold_1();
  }

  v2 = MBGetLogDateFormatter_formatter;

  return v2;
}

void _MBLogFlushDeprecated()
{
  if (sFileLoggingEnabled == 1)
  {
    pthread_mutex_lock(&sLogLock);
    if (sLog)
    {
      fflush(sLog);
    }

    pthread_mutex_unlock(&sLogLock);
  }
}

void sub_1DEB60970(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DEB60F50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DEB612B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *CryptoBufferAllocate(size_t size)
{
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x10uLL, size, 0xF84A7741uLL))
  {
    bzero(memptr, size);
  }

  return memptr;
}

void *CryptoBufferDuplicate(const void *a1, size_t size)
{
  result = CryptoBufferAllocate(size);
  if (result)
  {

    return memcpy(result, a1, size);
  }

  return result;
}

uint64_t CryptoAcceleratorConnect()
{
  v13 = *MEMORY[0x1E69E9840];
  connect = 0;
  v0 = IOServiceMatching("IOAESAccelerator");
  if (!v0)
  {
    v4 = MBGetDefaultLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_ERROR, "IOServiceMatching failed", buf, 2u);
      _MBLog(@"E ", "IOServiceMatching failed");
    }

    return 0;
  }

  v1 = v0;
  CFRetain(v0);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v1);
  if (!MatchingService)
  {
    v3 = MBGetDefaultLog(MatchingService);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_ERROR, "IOServiceGetMatchingService failed", buf, 2u);
      _MBLog(@"E ", "IOServiceGetMatchingService failed");
    }

    CFRelease(v1);
    return 0;
  }

  v6 = MatchingService;
  v7 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
  if (v7)
  {
    v8 = v7;
    v9 = MBGetDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v8;
      _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_ERROR, "IOServiceOpen failed, status:0x%x", buf, 8u);
      _MBLog(@"E ", "IOServiceOpen failed, status:0x%x", v8);
    }
  }

  CFRelease(v1);
  IOObjectRelease(v6);
  return connect;
}

uint64_t CryptoAcceleratorEncrypt(mach_port_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v8 = 0u;
  v10 = 0u;
  v11 = 0u;
  outputStructCnt = 88;
  outputStruct[0] = a2;
  outputStruct[1] = a3;
  v7 = a4;
  v9 = 0x8000000000;
  v12 = 2107;
  return IOConnectCallStructMethod(a1, 1u, outputStruct, 0x58uLL, outputStruct, &outputStructCnt);
}

uint64_t MBPathHasVolumePrefix(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if ([v4 length] >= 2)
  {
    v5 = [v4 stringByAppendingString:@"/"];
  }

  if ([v3 hasPrefix:@"/var/"] && objc_msgSend(v4, "hasPrefix:", @"/private"))
  {
    v6 = [v4 substringFromIndex:8];

    v5 = v6;
  }

  v7 = [v3 hasPrefix:v5];

  return v7;
}

uint64_t MBVolumeTypeFromMountPoint(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"/private/var/mobile"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"/private/var"])
  {
    v2 = 1;
  }

  else if ([v1 hasPrefix:@"/private/var/PersonaVolumes"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t MBVolumeTypeFromPath(void *a1)
{
  v1 = a1;
  if (MBPathHasVolumePrefix(v1, @"/private/var/mobile"))
  {
    HasVolumePrefix = 2;
  }

  else if (MBPathHasVolumePrefix(v1, @"/private/var/PersonaVolumes"))
  {
    HasVolumePrefix = 3;
  }

  else
  {
    HasVolumePrefix = MBPathHasVolumePrefix(v1, @"/private/var");
  }

  return HasVolumePrefix;
}

void *MBStringWithArray(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([v2 length] != 1)
      {
        [v2 appendString:{@", "}];
      }

      [v2 appendString:{MBStringWithObject(v5, v6)}];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  [v2 appendString:@"]"];
  return v2;
}

id MBStringWithObject(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return MBStringWithArray(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [a1 bytes];
      v5 = 2 * [a1 length];

      return MBStringWithNibbles(v4, v5);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return MBStringWithDictionary(a1);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return MBStringWithSet(a1);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", a1];
          }

          else
          {

            return [a1 description];
          }
        }
      }
    }
  }
}

void *MBStringWithLimitedArray(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([a1 count] > a2)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [v4 addObjectsFromArray:{objc_msgSend(v3, "subarrayWithRange:", 0, a2)}];
    [v4 addObject:@"..."];
    v3 = v4;
  }

  return MBStringWithArray(v3);
}

uint64_t MBStringWithSizeInBytes(unint64_t a1)
{
  if (a1 <= 0x3FF)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld B", a1];
  }

  if (!(a1 >> 20))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1f KB", vcvtd_n_f64_u64(a1, 0xAuLL)];
  }

  v2 = a1;
  if (a1 >> 30)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1f GB", v2 * 9.31322575e-10];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1f MB", v2 * 0.000000953674316];
  }
}

id MBStringWithNibbles(unsigned __int8 *a1, unint64_t a2)
{
  v4 = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
  if (a2)
  {
    v5 = v4 + 2;
    v6 = 1;
    do
    {
      v8 = *a1++;
      v7 = v8;
      *(v5 - 1) = _MBNibbleToChar[v8 >> 4];
      if (v6 < a2)
      {
        *v5 = _MBNibbleToChar[v7 & 0xF];
      }

      v9 = v6 + 1;
      v6 += 2;
      v5 += 2;
    }

    while (v9 < a2);
  }

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:v4 length:a2 freeWhenDone:1];

  return v10;
}

uint64_t MBBytesWithString(void *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  if ([a1 length] == 2 * a3)
  {
    if (!v3)
    {
      return 1;
    }

    for (i = 1; ; i += 2)
    {
      v7 = [a1 characterAtIndex:i - 1];
      if ((v7 - 48) >= 0xA && (v7 - 97) > 5)
      {
        break;
      }

      v9 = v7;
      v10 = [a1 characterAtIndex:i];
      if ((v10 - 48) >= 0xA && (v10 - 97) > 5)
      {
        break;
      }

      *a2++ = _MBCharToNibble[v10] | (16 * LOBYTE(_MBCharToNibble[v9]));
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MBDataWithString(void *a1)
{
  if ([a1 length])
  {
    return 0;
  }

  v2 = [a1 length] >> 1;
  v3 = malloc_type_malloc(v2, 0x100004077774924uLL);
  if (!MBBytesWithString(a1, v3, v2))
  {
    if (v3)
    {
      free(v3);
    }

    return 0;
  }

  v4 = MEMORY[0x1E695DEF0];

  return [v4 dataWithBytesNoCopy:v3 length:v2 freeWhenDone:1];
}

id MBStringWithData(void *a1)
{
  v2 = [a1 bytes];
  v3 = 2 * [a1 length];

  return MBStringWithNibbles(v2, v3);
}

void *MBStringWithDate(void *result)
{
  if (result)
  {
    return [MEMORY[0x1E696AB78] localizedStringFromDate:result dateStyle:1 timeStyle:2];
  }

  return result;
}

void *MBStringWithDictionary(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if ([v2 length] != 1)
        {
          [v2 appendString:{@", "}];
        }

        v8 = [a1 objectForKeyedSubscript:v7];
        [v2 appendFormat:@"%@: %@", v7, MBStringWithObject(v8, v9)];
        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [v2 appendString:@"}"];
  return v2;
}

void *MBStringWithSet(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([v2 length] != 1)
      {
        [v2 appendString:{@", "}];
      }

      [v2 appendString:{MBStringWithObject(v5, v6)}];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  [v2 appendString:@"}"];
  return v2;
}

uint64_t MBHTTPDateFormatter(uint64_t a1, uint64_t a2)
{
  if (MBHTTPDateFormatter_pred != -1)
  {
    MBHTTPDateFormatter_cold_1();
  }

  return MBHTTPDateFormatter_formatter;
}

uint64_t __MBHTTPDateFormatter_block_invoke()
{
  MBHTTPDateFormatter_formatter = objc_alloc_init(MEMORY[0x1E696AB78]);
  v0 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
  [MBHTTPDateFormatter_formatter setLocale:v0];
  v1 = MBHTTPDateFormatter_formatter;

  return [v1 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss z"];
}

uint64_t MBIsTransientErrorCode(unint64_t a1)
{
  result = 1;
  if (a1 > 299)
  {
    if (a1 - 300 > 0xA || ((1 << (a1 - 44)) & 0x535) == 0)
    {
      v3 = a1 - 556;
LABEL_10:
      if (v3 >= 2)
      {
        return 0;
      }
    }
  }

  else if ((a1 - 202 > 0x12 || ((1 << (a1 + 54)) & 0x78041) == 0) && (a1 > 0x14 || ((1 << a1) & 0x1A0000) == 0))
  {
    v3 = a1 - 105;
    goto LABEL_10;
  }

  return result;
}

uint64_t __MBGetDefaultLog_block_invoke()
{
  MBGetDefaultLog_log = os_log_create("com.apple.mobilebackup", "Default");

  return MEMORY[0x1EEE66BB8]();
}

id MBGetMBSwiftLog(uint64_t a1)
{
  if (MBGetMBSwiftLog_onceToken != -1)
  {
    MBGetMBSwiftLog_cold_1();
  }

  v2 = MBGetMBSwiftLog_log;

  return v2;
}

uint64_t __MBGetMBSwiftLog_block_invoke()
{
  MBGetMBSwiftLog_log = os_log_create("com.apple.mobilebackup", "MBSwift");

  return MEMORY[0x1EEE66BB8]();
}

id MBGetSQLLog(uint64_t a1)
{
  if (MBGetSQLLog_onceToken != -1)
  {
    MBGetSQLLog_cold_1();
  }

  v2 = MBGetSQLLog_log;

  return v2;
}

uint64_t __MBGetSQLLog_block_invoke()
{
  MBGetSQLLog_log = os_log_create("com.apple.mobilebackup", "SQL");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __MBGetLogDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = MBGetLogDateFormatter_formatter;
  MBGetLogDateFormatter_formatter = v0;

  [MBGetLogDateFormatter_formatter setFormatterBehavior:1040];
  v2 = MBGetLogDateFormatter_formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

__CFString *MBLogStringForNSQualityOfService(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return @"default";
    }

    if (a1 == 9)
    {
      return @"bg";
    }

    return @"???";
  }

  result = @"ui";
  if (a1 != 33 && a1 != 25)
  {
    if (a1 == 17)
    {
      return @"utility";
    }

    return @"???";
  }

  return result;
}

__CFString *MBGetLogDir(uint64_t a1, uint64_t a2)
{
  if (MBIsInternalInstall(a1, a2))
  {
    return @"/var/mobile/Library/Logs/MobileBackup";
  }

  else
  {
    return @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/MobileBackup";
  }
}

id MBBackgroundRestoreSignpostHandle(uint64_t a1)
{
  if (MBBackgroundRestoreSignpostHandle_onceToken != -1)
  {
    MBBackgroundRestoreSignpostHandle_cold_1();
  }

  v2 = MBBackgroundRestoreSignpostHandle_log;

  return v2;
}

uint64_t __MBBackgroundRestoreSignpostHandle_block_invoke()
{
  MBBackgroundRestoreSignpostHandle_log = os_log_create("com.apple.ConditionInducer.HighSeverity", "BackgroundRestoreCondition");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t MBSupportedProtocolVersions()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = [MEMORY[0x1E696AD98] numberWithDouble:2.1];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:1];
}

id MBDefaultOptions()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"Options", @"com.apple.MobileBackup", @"mobile", *MEMORY[0x1E695E898]);
  if (!v0)
  {
    return MEMORY[0x1E695E0F8];
  }

  v1 = v0;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v4 = MBGetDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v6 = @"com.apple.MobileBackup";
      v7 = 2112;
      v8 = @"Options";
      _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_DEFAULT, "Preference %@ %@ not a dictionary", buf, 0x16u);
      _MBLog(@"Df", "Preference %@ %@ not a dictionary", @"com.apple.MobileBackup", @"Options");
    }

    CFRelease(v1);
    return MEMORY[0x1E695E0F8];
  }

  return v1;
}

uint64_t _MBGetCachedGestaltValue(uint64_t a1)
{
  if (_MBGetCachedGestaltValues_pred != -1)
  {
    _MBGetCachedGestaltValue_cold_1();
  }

  v2 = _MBCachedGestaltValues;

  return [v2 objectForKeyedSubscript:a1];
}

uint64_t MBDeviceUDID_Legacy_client(uint64_t a1, uint64_t a2)
{
  if (MBDeviceUDID_Legacy_client_onceToken != -1)
  {
    MBDeviceUDID_Legacy_client_cold_1();
  }

  return MBDeviceUDID_Legacy_client_sDeviceUDID;
}

uint64_t MBDeviceUUID(uint64_t a1, uint64_t a2)
{
  if (MBDeviceUUID_pred != -1)
  {
    MBDeviceUUID_cold_1();
  }

  return _MBCachedBackupDeviceID;
}

uint64_t __MBDeviceUUID_block_invoke()
{
  v0 = CryptoAcceleratorConnect();
  if (!v0)
  {
    v9 = [MBException alloc];
    v10 = @"Unable to connect to CryptoAcceleratorEncrypt";
    goto LABEL_13;
  }

  v1 = v0;
  v2 = CryptoBufferDuplicate("MobileBackup-ID!MobileBackup-ID!", 0x20uLL);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = CryptoBufferAllocate(0x20uLL);
  if (!v4)
  {
    v9 = [MBException alloc];
    v12 = 0;
LABEL_12:
    v10 = @"Unable to encrypt Backup device identifier: %u";
LABEL_13:
    objc_exception_throw([(MBException *)v9 initWithCode:1 format:v10, v12]);
  }

  v5 = v4;
  v6 = CryptoAcceleratorEncrypt(v1, v3, v4, 32);
  if (v6)
  {
    v11 = v6;
    v9 = [MBException alloc];
    v12 = v11;
    goto LABEL_12;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:v5 length:20];
  _MBCachedBackupDeviceID = MBStringWithData(v7);

  free(v5);
  free(v3);
LABEL_6:

  return CryptoAcceleratorDisconnect(v1);
}

unint64_t MBBuildIsSeed()
{
  v0 = CFPreferencesCopyValue(@"IsSeedBuild", @"com.apple.MobileBackup", @"mobile", *MEMORY[0x1E695E898]);
  if (v0)
  {

    return [v0 BOOLValue];
  }

  else
  {
    v2 = _MBGetCachedGestaltValue(@"ReleaseType");
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isEqualToString:@"Beta"];
      v5 = v4 | [v3 isEqualToString:@"Carrier"];
    }

    else
    {
      v5 = 0;
    }

    return v5 & 1;
  }
}

uint64_t MBHomeButtonType()
{
  v0 = MEMORY[0x1E696AD98];
  v1 = MGGetSInt32Answer();

  return [v0 numberWithInteger:v1];
}

uint64_t MBMobileUID()
{
  result = _MBMobileUID;
  if (_MBMobileUID < 0)
  {
    v1 = getpwnam([@"mobile" UTF8String]);
    if (!v1)
    {
      v2 = [MBException alloc];
      v3 = __error();
      v4 = strerror(*v3);
      v5 = [(MBException *)v2 initWithCode:1 format:@"getpwnam(%@) failed: %s (%d)", @"mobile", v4, *__error()];
      objc_exception_throw(v5);
    }

    result = v1->pw_uid;
    _MBMobileUID = result;
  }

  return result;
}

uint64_t MBMobileFileAttributes()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v1[0] = *MEMORY[0x1E696A358];
  v2[0] = [MEMORY[0x1E696AD98] numberWithInteger:MBMobileUID()];
  v1[1] = *MEMORY[0x1E696A320];
  v2[1] = [MEMORY[0x1E696AD98] numberWithInteger:MBMobileUID()];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:2];
}

id MBLocale()
{
  v0 = *MEMORY[0x1E695E890];
  v1 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(*MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  v2 = CFPreferencesCopyValue(@"AppleLocale", v0, @"mobile", v1);
  v3 = MEMORY[0x1E695DF58];
  if (v2)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v2];

    return v4;
  }

  else
  {

    return [v3 currentLocale];
  }
}

CFPropertyListRef MBLocalizations()
{
  v0 = *MEMORY[0x1E695E890];
  v1 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(*MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  result = CFPreferencesCopyValue(@"AppleLanguages", v0, @"mobile", v1);
  if (!result)
  {
    return &unk_1F59DC7C0;
  }

  return result;
}

void MBLogDeviceProperties(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (MBDeviceUUID_pred != -1)
  {
    MBDeviceUUID_cold_1();
  }

  v2 = _MBCachedBackupDeviceID;
  v3 = _MBGetCachedGestaltValue(@"UniqueDeviceID");
  v4 = MBGetGestaltValueForKey(@"UserAssignedDeviceName");
  v5 = _MBGetCachedGestaltValue(@"ProductType");
  v6 = _MBGetCachedGestaltValue(@"BuildVersion");
  v7 = _MBGetCachedGestaltValue(@"ProductVersion");
  v8 = MBGetDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544642;
    v10 = v3;
    v11 = 2112;
    v12 = v2;
    v13 = 2112;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "DeviceUDID=%{public}@, DeviceUUID=%@, DeviceName=%@, ProductType=%{public}@, ProductVersion=%{public}@, BuildVersion=%{public}@", buf, 0x3Eu);
    _MBLog(@"Df", "DeviceUDID=%{public}@, DeviceUUID=%@, DeviceName=%@, ProductType=%{public}@, ProductVersion=%{public}@, BuildVersion=%{public}@", v3, v2, v4, v5, v7, v6);
  }
}

void sub_1DEB6CF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MBCKStringForBackupState(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E86844F0[a1 - 1];
  }
}

__CFString *MBRandomUUID()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  CFRelease(v0);

  return v1;
}

uint64_t MBRandomDataWithLength(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0x100004077774924uLL);
  v3 = open("/dev/random", 0);
  if (v3 < 0)
  {
    v14 = [MBException alloc];
    v15 = __error();
    v16 = strerror(*v15);
    v13 = [(MBException *)v14 initWithCode:1 format:@"Error opening /dev/random: %s (%d)", v16, *__error()];
    goto LABEL_13;
  }

  v4 = v3;
  if (a1)
  {
    v5 = 0;
    while (1)
    {
      v6 = read(v4, &v2[v5], a1 - v5);
      if (v6 < 1)
      {
        break;
      }

      v5 += v6;
      if (v5 >= a1)
      {
        goto LABEL_6;
      }
    }

    v9 = v6;
    v10 = [MBException alloc];
    if (v9)
    {
      v12 = __error();
      v17 = strerror(*v12);
      v18 = *__error();
      v11 = @"Error reading /dev/random: %s (%d)";
    }

    else
    {
      v11 = @"EOF from /dev/random";
    }

    v13 = [(MBException *)v10 initWithCode:1 format:v11, v17, v18];
LABEL_13:
    objc_exception_throw(v13);
  }

LABEL_6:
  close(v4);
  v7 = MEMORY[0x1E695DEF0];

  return [v7 dataWithBytesNoCopy:v2 length:a1 freeWhenDone:1];
}

uint64_t MBUniqueIntegerFilenameWithDirectory(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v1 && (v2 = v1, v12 = 0u, v13 = 0u, v10 = 0u, v11 = 0u, (v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16]) != 0))
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 integerValue] >= v6)
        {
          v6 = [v8 integerValue] + 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{v6), "description"}];
}

uint64_t MBStandardizePath(void *a1)
{
  v1 = a1;
  if ([a1 hasPrefix:@"~/"])
  {
    v1 = [@"/var/mobile" stringByAppendingPathComponent:{objc_msgSend(v1, "substringFromIndex:", 2)}];
  }

  return [v1 stringByStandardizingPath];
}

BOOL MBIsRestoreCompatible(void *a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    MBIsRestoreCompatible_cold_3();
  }

  if (!a2)
  {
    MBIsRestoreCompatible_cold_2();
  }

  v8 = MBDeviceClass();
  if (([v8 isEqualToString:a4] & 1) == 0)
  {
    v14 = [v8 isEqualToString:@"RealityDevice"];
    if ((v14 & 1) != 0 || (v14 = [a4 isEqualToString:@"RealityDevice"], v14))
    {
      v15 = MBGetDefaultLog(v14);
      v13 = 0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = a4;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_1DEB5D000, v15, OS_LOG_TYPE_DEFAULT, "Incoming backup device class %@ is not compatible with current device class %@", buf, 0x16u);
        _MBLog(@"Df", "Incoming backup device class %@ is not compatible with current device class %@", a4, v8);
        return 0;
      }

      return v13;
    }
  }

  v9 = [a1 componentsSeparatedByString:@"."];
  v10 = [a2 componentsSeparatedByString:@"."];
  if (!a3)
  {
    goto LABEL_17;
  }

  v11 = v10;
  if ([a2 compare:a3 options:64] == -1)
  {
    v16 = MBGetDefaultLog(-1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = a3;
      _os_log_impl(&dword_1DEB5D000, v16, OS_LOG_TYPE_ERROR, "Invalid required product version: %{public}@", buf, 0xCu);
      _MBLog(@"E ", "Invalid required product version: %{public}@", a3);
    }

    goto LABEL_17;
  }

  if ([v9 count] < 2 || objc_msgSend(v11, "count") < 2)
  {
LABEL_17:
    v17 = a1;
    v18 = a2;
LABEL_18:
    v12 = [v17 compare:v18 options:64];
    v13 = v12 < 2;
    goto LABEL_19;
  }

  v12 = [objc_msgSend(objc_msgSend(v9 subarrayWithRange:{0, 2), "componentsJoinedByString:", @".", "compare:options:", objc_msgSend(objc_msgSend(v11, "subarrayWithRange:", 0, 2), "componentsJoinedByString:", @".", 64}];
  if (v12 != -1)
  {
    if (v12 == 1)
    {
      v13 = 1;
      goto LABEL_19;
    }

    if (v12)
    {
      MBIsRestoreCompatible_cold_1();
    }

    v17 = a1;
    v18 = a3;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_19:
  v19 = MBGetDefaultLog(v12);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = a1;
    if (v13)
    {
      v20 = "YES";
    }

    else
    {
      v20 = "NO";
    }

    *&buf[12] = 2114;
    *&buf[14] = a2;
    v23 = 2114;
    v24 = a3;
    v25 = 2082;
    v26 = v20;
    _os_log_impl(&dword_1DEB5D000, v19, OS_LOG_TYPE_DEFAULT, "Checked restore compatibility - productVersion:%{public}@, incomingProductVersion:%{public}@, incomingRequiredProductVersion:%{public}@, result:%{public}s", buf, 0x2Au);
    _MBLog(@"Df", "Checked restore compatibility - productVersion:%{public}@, incomingProductVersion:%{public}@, incomingRequiredProductVersion:%{public}@, result:%{public}s", a1, a2, a3, v20, *buf, *&buf[8]);
  }

  return v13;
}

void *MBGetGestaltValueForKey(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = MGCopyAnswerWithError();
  v2 = v1;
  return v1;
}

uint64_t MBSQLiteJournalSuffixes(uint64_t a1, uint64_t a2)
{
  if (MBSQLiteJournalSuffixes_pred != -1)
  {
    MBSQLiteJournalSuffixes_cold_1();
  }

  return MBSQLiteJournalSuffixes_set;
}

void *__MBSQLiteJournalSuffixes_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"-journal", @"-wal", @"-shm", 0}];
  MBSQLiteJournalSuffixes_set = result;
  return result;
}

uint64_t MBSQLitePathExtensions(uint64_t a1, uint64_t a2)
{
  if (MBSQLitePathExtensions_pred != -1)
  {
    MBSQLitePathExtensions_cold_1();
  }

  return MBSQLitePathExtensions_set;
}

void *__MBSQLitePathExtensions_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"db", @"sqlite", @"sqlite3", @"sqlitedb", 0}];
  MBSQLitePathExtensions_set = result;
  return result;
}

intptr_t MBSemaphoreWaitForever(NSObject *a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = *MEMORY[0x1E695D918];
    do
    {
      v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.01];
      [objc_msgSend(MEMORY[0x1E695DFD0] "currentRunLoop")];
      result = dispatch_semaphore_wait(a1, 0);
    }

    while (result);
  }

  else
  {

    return dispatch_semaphore_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

intptr_t MBGroupWaitForever(NSObject *a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = *MEMORY[0x1E695D918];
    do
    {
      v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.01];
      [objc_msgSend(MEMORY[0x1E695DFD0] "currentRunLoop")];
      result = dispatch_group_wait(a1, 0);
    }

    while (result);
  }

  else
  {

    return dispatch_group_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void MBRunLoopPerformBlockAndWait(void *a1, uint64_t a2)
{
  v4 = dispatch_semaphore_create(0);
  v5 = [a1 getCFRunLoop];
  v6 = *MEMORY[0x1E695D918];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MBRunLoopPerformBlockAndWait_block_invoke;
  v7[3] = &unk_1E8684560;
  v7[4] = v4;
  v7[5] = a2;
  CFRunLoopPerformBlock(v5, v6, v7);
  CFRunLoopWakeUp([a1 getCFRunLoop]);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v4);
}

intptr_t __MBRunLoopPerformBlockAndWait_block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t MBFreeDiskSpaceForVolume(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, 512);
  if (statfs([a1 fileSystemRepresentation], &v6))
  {
    v2 = [MBException alloc];
    v3 = __error();
    v4 = strerror(*v3);
    v5 = [(MBException *)v2 initWithCode:100 format:@"statfs error: %s (%d)", v4, *__error()];
    objc_exception_throw(v5);
  }

  return v6.f_bavail * v6.f_bsize;
}

uint64_t MBUsedDiskSpaceForVolume(void *a1)
{
  memset(v7, 0, 12);
  v6[2] = 0;
  v6[0] = 5;
  v6[1] = 2155872256;
  if (getattrlist([a1 fileSystemRepresentation], v6, v7, 0xCuLL, 0))
  {
    v2 = [MBException alloc];
    v3 = __error();
    v4 = strerror(*v3);
    v5 = [(MBException *)v2 initWithCode:100 format:@"getattrlist error: %s (%d)", v4, *__error()];
    objc_exception_throw(v5);
  }

  return *(v7 + 4);
}

uint64_t MBPeakProcessMemoryUsage()
{
  v29 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *buffer = 0u;
  v11 = 0u;
  v0 = getpid();
  v1 = proc_pid_rusage(v0, 4, buffer);
  if (v1)
  {
    v2 = MBGetDefaultLog(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      *buf = 67109120;
      LODWORD(v9) = v3;
      _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_ERROR, "Failed to fetch rusage info: %{errno}d", buf, 8u);
      v4 = __error();
      _MBLog(@"E ", "Failed to fetch rusage info: %{errno}d", *v4);
    }

    return 0;
  }

  else
  {
    v5 = *(&v27 + 1);
    v6 = MBGetDefaultLog(v1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v9 = v5;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_INFO, "=peak-memory= %llu bytes", buf, 0xCu);
      _MBLog(@"I ", "=peak-memory= %llu bytes", v5);
    }
  }

  return v5;
}

uint64_t MBLogEnableFileLogging(uint64_t a1, uint64_t a2)
{
  result = MBIsInternalInstall(a1, a2);
  sFileLoggingEnabled = result;
  return result;
}

uint64_t MBLogStashLogs(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  result = MBIsInternalInstall(a1, a2);
  if (result)
  {
    pthread_mutex_lock(&sLogLock);
    context = objc_autoreleasePoolPush();
    v4 = sLog;
    if (sLog)
    {
      v4 = fclose(sLog);
      sLog = 0;
    }

    v5 = MBGetLogDir(v4, v3);
    v6 = MBLogBasename();
    v31 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v31 contentsOfDirectoryAtPath:v5 error:0];
    v8 = MEMORY[0x1E696AE18];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __MBLogStashLogs_block_invoke;
    v36[3] = &unk_1E8684588;
    v9 = v6;
    v37 = v9;
    v26 = [v8 predicateWithBlock:v36];
    v27 = v7;
    v25 = [v7 filteredArrayUsingPredicate:?];
    v10 = [v25 sortedArrayUsingComparator:&__block_literal_global_3];
    if (MBMaxLogCount_onceToken != -1)
    {
      _MBLogHelper_cold_10();
    }

    v30 = MBMaxLogCount_sMaxLogCount;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = [v15 stringByDeletingPathExtension];
          v17 = [v16 isEqualToString:v9];

          if ((v17 & 1) == 0)
          {
            if (([v15 isEqualToString:v9] & 1) == 0)
            {
              continue;
            }

            v19 = 0;
LABEL_16:
            v20 = [v5 stringByAppendingPathComponent:v15];
            v21 = [MEMORY[0x1E696AD98] numberWithInt:(v19 + v30)];
            v22 = [v21 description];
            v23 = [v9 stringByAppendingPathExtension:v22];
            v24 = [v5 stringByAppendingPathComponent:v23];

            [v31 moveItemAtPath:v20 toPath:v24 error:0];
            continue;
          }

          v18 = [v15 pathExtension];
          v19 = [v18 intValue];

          if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v12);
    }

    objc_autoreleasePoolPop(context);
    return pthread_mutex_unlock(&sLogLock);
  }

  return result;
}

id MBLogBasename()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  if (!v1 || !strcmp([v1 UTF8String], "backupd"))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"MobileBackup", @"log", v4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@.%@", @"MobileBackup", v1, @"log"];
  }
  v2 = ;

  return v2;
}

uint64_t __MBLogStashLogs_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 stringByDeletingPathExtension];
  v7 = [v4 stringByDeletingPathExtension];
  v8 = [v6 compare:v7];

  if (v8)
  {
    v9 = [v5 compare:v4];
  }

  else
  {
    v10 = [v5 pathExtension];

    v11 = [v10 intValue];
    v12 = [v4 pathExtension];
    v13 = [v12 intValue];

    if (v11 >= v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    if (v13 < v11)
    {
      v9 = 1;
    }

    else
    {
      v9 = v14;
    }
  }

  return v9;
}

void __MBMaxLogSize_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = getenv("MBMaxLogSize");
  if (v0)
  {
    v1 = strtol(v0, 0, 10);
    if ((v1 - 1) >= 0x7FFFFFFFFFFFFFFELL)
    {
      v2 = 10485760;
    }

    else
    {
      v2 = v1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = v2;
      _os_log_impl(&dword_1DEB5D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MBMaxLogSize=%ld", &v3, 0xCu);
    }
  }

  else
  {
    v2 = 10485760;
  }

  MBMaxLogSize_sMaxLogSize = v2;
}

void __MBCreateLogDirectory_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MBGetLogDir(a1, a2);
  v6 = [v2 stringByDeletingLastPathComponent];

  getpid();
  v3 = v6;
  [v6 fileSystemRepresentation];
  MBCreateLogDirectory_sCanCreateLogDirectory = sandbox_check() == 0;
  v4 = os_log_set_hook();
  v5 = MBCreateLogDirectory_previousLogHook;
  MBCreateLogDirectory_previousLogHook = v4;
}

void __MBCanCreateLogs_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MBGetLogDir(a1, a2);
  getpid();
  v2 = v3;
  [v3 fileSystemRepresentation];
  MBCanCreateLogs_sCanCreateLogs = sandbox_check() == 0;
}

void __MBCanRotateLogs_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MBGetLogDir(a1, a2);
  if (v2)
  {
    v8 = v2;
    getpid();
    v3 = v8;
    v7 = [v8 fileSystemRepresentation];
    if (sandbox_check())
    {
      v4 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696AE30] processInfo];
      v6 = [v5 processName];

      v4 = ([v6 isEqualToString:@"healthd"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"imagent");
    }

    MBCanRotateLogs_sCanRotateLogs = v4;
    v2 = v8;
  }
}

void __MBMaxLogCount_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = getenv("MBMaxLogCount");
  v1 = 10;
  if (v0)
  {
    v2 = strtol(v0, 0, 10);
    if ((v2 - 1) < 0x7FFFFFFFFFFFFFFELL)
    {
      v1 = v2;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = v1;
      _os_log_impl(&dword_1DEB5D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MBMaxLogCount=%ld", &v3, 0xCu);
    }
  }

  MBMaxLogCount_sMaxLogCount = v1;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_1DEB7252C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  objc_sync_exit(v11);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1DEB73EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DEB74674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  os_activity_scope_leave(&a9);
  objc_begin_catch(a1);
  dispatch_semaphore_signal(*(v9 + 2928));
  objc_exception_rethrow();
}

void sub_1DEB74F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEB7797C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  if (a2)
  {
    os_activity_scope_leave(&a9);
    objc_begin_catch(exception_object);
    dispatch_semaphore_signal(*(v9 + 2960));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DEB796FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1DEB7D47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DEB7DB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEB7E0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEB7E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *MBStringForSnapshotType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unspecified";
  }

  else
  {
    return off_1E86847C8[a1];
  }
}

__CFString *MBStringForSnapshotFormat(uint64_t a1)
{
  if ((a1 + 1) < 5)
  {
    return off_1E86847F0[a1 + 1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  return [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *MBStringForSnapshotFormat(MBSnapshotFormat)") description:{@"MBCommon.m", 73, @"Unknown snapshot format reason %llu", a1}];
}

uint64_t MBSnapshotFormatForString(void *a1)
{
  if ([a1 isEqualToString:@"ManifestsFiles"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"ManifestsFilesAndDomains"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"ManifestsFilesAndDomainsAssets"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"DomainsAssets"])
  {
    return 3;
  }

  return -1;
}

uint64_t MBSnapshotFormatContainsManifests(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL MBSnapshotFormatContainsManifests(MBSnapshotFormat)") description:{@"MBCommon.m", 104, @"Unknown snapshot format %llu", a1}];
  }

  else
  {
    v1 = 0xFu >> (a1 + 1);
  }

  return v1 & 1;
}

uint64_t MBSnapshotFormatContainsFileLists(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL MBSnapshotFormatContainsFileLists(MBSnapshotFormat)") description:{@"MBCommon.m", 121, @"Unknown snapshot format %llu", a1}];
  }

  else
  {
    v1 = 0x1Cu >> (a1 + 1);
  }

  return v1 & 1;
}

uint64_t MBSnapshotFormatContainsAssets(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL MBSnapshotFormatContainsAssets(MBSnapshotFormat)") description:{@"MBCommon.m", 138, @"Unknown snapshot format %llu", a1}];
  }

  else
  {
    v1 = 0x18u >> (a1 + 1);
  }

  return v1 & 1;
}

uint64_t MBSnapshotFormatSupportedForBackup(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL MBSnapshotFormatSupportedForBackup(MBSnapshotFormat)") description:{@"MBCommon.m", 155, @"Unknown snapshot format %llu", a1}];
  }

  else
  {
    v1 = 0x12u >> (a1 + 1);
  }

  return v1 & 1;
}

__CFString *MBStringForBackupReason(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E8684818[a1];
  }
}

uint64_t MBGetBackupDir()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *MBGetBackupDir(void)") description:{@"MBCommon.m", 201, @"Backup directory not defined on the device"}];
  return 0;
}

id MBSetBackupDir(void *a1)
{
  result = a1;
  _MBBackupDir = result;
  return result;
}

uint64_t MBAcquireRestoreLock(int a1)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = [@"/var/mobile/Library/Caches/Backup/RestoreFromBackupLock" fileSystemRepresentation];
  v3 = MBGetDefaultLog(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_INFO, "Acquiring the MBS restore lock", buf, 2u);
    _MBLog(@"I ", "Acquiring the MBS restore lock");
  }

  if (_MBRestoreLockFD != -1)
  {
    v5 = MBGetDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v5, OS_LOG_TYPE_INFO, "The MBS restore lock is already held by this process", buf, 2u);
      _MBLog(@"I ", "The MBS restore lock is already held by this process");
    }

    return 0;
  }

  v6 = [@"/var/mobile/Library/Caches/Backup/RestoreFromBackupLock" stringByDeletingLastPathComponent];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = *MEMORY[0x1E696A328];
  v26[0] = *MEMORY[0x1E696A360];
  v26[1] = v8;
  v27[0] = @"mobile";
  v27[1] = @"mobile";
  [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v27, v26, 2), 0}];
  v9 = open(v2, 514, 420);
  _MBRestoreLockFD = v9;
  if (v9 < 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D920];
    v12 = __error();
    v13 = strerror(*v12);
    [v10 raise:v11 format:{@"Error opening incomplete MBS restore directory lock file: %s (%d)", v13, *__error()}];
    v9 = _MBRestoreLockFD;
  }

  if (a1)
  {
    v14 = 6;
  }

  else
  {
    v14 = 2;
  }

  v15 = flock(v9, v14);
  if (v15)
  {
    v16 = __error();
    if (*v16 != 35)
    {
      v20 = MEMORY[0x1E695DF30];
      v21 = *MEMORY[0x1E695D920];
      v22 = __error();
      v23 = strerror(*v22);
      [v20 raise:v21 format:{@"Error locking incomplete MBS restore directory lock file: %s (%d)", v23, *__error()}];
      return 0;
    }

    v17 = MBGetDefaultLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v17, OS_LOG_TYPE_INFO, "The MBS restore lock is already held by another process", buf, 2u);
      _MBLog(@"I ", "The MBS restore lock is already held by another process");
    }

    close(_MBRestoreLockFD);
    v18 = 0;
    _MBRestoreLockFD = -1;
  }

  else
  {
    v19 = MBGetDefaultLog(v15);
    v18 = 1;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v19, OS_LOG_TYPE_INFO, "Acquired the MBS restore lock", buf, 2u);
      _MBLog(@"I ", "Acquired the MBS restore lock");
    }
  }

  return v18;
}

void MBReleaseRestoreLock(uint64_t a1)
{
  v1 = _MBRestoreLockFD;
  v2 = MBGetDefaultLog(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v1 < 0)
  {
    if (v3)
    {
      *v4 = 0;
      _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_INFO, "The MBS restore lock is not held by this process", v4, 2u);
      _MBLog(@"I ", "The MBS restore lock is not held by this process");
    }
  }

  else
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_INFO, "Releasing the MBS restore lock", buf, 2u);
      _MBLog(@"I ", "Releasing the MBS restore lock");
    }

    close(_MBRestoreLockFD);
    _MBRestoreLockFD = -1;
  }
}

id MBBackupMetadataFilenames()
{
  result = _MBBackupMetadataFilenames;
  if (!_MBBackupMetadataFilenames)
  {
    result = [MEMORY[0x1E695DFD8] setWithObjects:{@"Status.plist", @"Manifest.plist", @"Manifest.mbdb", @"Manifest.mbdx", @"Info.plist", @"Snapshot", @"Manifest.db", 0}];
    _MBBackupMetadataFilenames = result;
  }

  return result;
}

void MBGetFileIDBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 20)
  {
    MBGetFileIDBytes_cold_1();
  }

  v8 = objc_alloc_init(MBDigestSHA1);
  [(MBDigest *)v8 updateWithString:a1];
  [(MBDigest *)v8 updateWithString:@"-"];
  [(MBDigest *)v8 updateWithString:a2];
  [(MBDigestSHA1 *)v8 finalWithBytes:a3 length:a4];
}

BOOL MBIsValidRelativePathIgnoreTilde(void *a1, int a2)
{
  if (!a1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Null path"];
  }

  v4 = [a1 length];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = [a1 characterAtIndex:0];
  result = 0;
  if (v6 == 126)
  {
    v8 = a2;
  }

  else
  {
    v8 = 1;
  }

  if (v6 != 47 && v8)
  {
    if (v5 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      do
      {
        if ([a1 characterAtIndex:v10] == 47)
        {
          result = _MBIsValidRelativePathComponent(a1, v9, v10);
          if (!result)
          {
            return result;
          }

          v9 = ++v10;
        }

        else
        {
          ++v10;
        }
      }

      while (v10 != v5);
    }

    return _MBIsValidRelativePathComponent(a1, v9, v5);
  }

  return result;
}

BOOL _MBIsValidRelativePathComponent(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 - a2;
  if (a3 == a2)
  {
    return 0;
  }

  v11 = v4;
  v12 = v3;
  if (v7 == 2)
  {
    if ([a1 characterAtIndex:a3 - 2] != 46)
    {
      return 1;
    }
  }

  else if (v7 != 1)
  {
    return 1;
  }

  return [a1 characterAtIndex:{a3 - 1, v11, v12, v5, v6}] != 46;
}

id MBLocalizedStringFromTable(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 mainBundle];
  if (MBIsInternalInstall(v6, v7))
  {
    v8 = [v6 bundlePath];
    if ([v8 isEqualToString:@"/usr/local/bin"])
    {
      v9 = [MEMORY[0x1E696AE30] processInfo];
      v10 = [v9 processName];
      v11 = [v10 isEqualToString:@"backupctl"];

      if (v11)
      {
LABEL_8:
        [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileBackup.framework"];
        v6 = v12 = v6;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v12 = [v6 bundlePath];
  if ([v12 isEqualToString:@"/usr/libexec"])
  {
    v13 = [MEMORY[0x1E696AE30] processInfo];
    v14 = [v13 processName];
    v15 = [v14 isEqualToString:@"BackupAgent2"];

    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:

LABEL_10:
  v16 = MBLocalizations();
  v17 = MEMORY[0x1E696AAE8];
  v18 = [v6 localizations];
  v19 = [v17 preferredLocalizationsFromArray:v18 forPreferences:v16];

  if ([v19 count])
  {
    v20 = [v19 firstObject];
  }

  else
  {
    v20 = @"en";
  }

  [v6 _cfBundle];
  v21 = CFBundleCopyLocalizedStringForLocalization();

  return v21;
}

id MBLocalizedStringWithSubstitutionsFromTable(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v20 = &a9;
  v12 = a3;
  v13 = MBLocalizedStringFromTable(v11, a2);
  if (!v13)
  {
    MBLocalizedStringWithSubstitutionsFromTable_cold_1();
  }

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [MEMORY[0x1E695DF58] currentLocale];
  v19 = 0;
  v16 = [v14 initWithValidatedFormat:v13 validFormatSpecifiers:v12 locale:v15 arguments:v20 error:&v19];

  v17 = v19;
  if (!v16)
  {
    MBLocalizedStringWithSubstitutionsFromTable_cold_2();
  }

  return v16;
}

id MBLocalizedStringWithFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v17 = &a9;
  v11 = a2;
  v12 = MBLocalizedStringFromTable(v10, @"MobileBackup");
  if (!v12)
  {
    MBLocalizedStringWithFormat_cold_1();
  }

  v16 = 0;
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithValidatedFormat:v12 validFormatSpecifiers:v11 locale:0 arguments:v17 error:&v16];

  v14 = v16;
  if (!v13)
  {
    MBLocalizedStringWithFormat_cold_2();
  }

  return v13;
}

id MBLocalizedStringWithSubstitutions(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v19 = &a9;
  v11 = a2;
  v12 = MBLocalizedStringFromTable(v10, @"MobileBackup");
  if (!v12)
  {
    MBLocalizedStringWithSubstitutions_cold_1();
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [MEMORY[0x1E695DF58] currentLocale];
  v18 = 0;
  v15 = [v13 initWithValidatedFormat:v12 validFormatSpecifiers:v11 locale:v14 arguments:v19 error:&v18];

  v16 = v18;
  if (!v15)
  {
    MBLocalizedStringWithSubstitutions_cold_2();
  }

  return v15;
}

id MBLocalizedStringWithGreenTeaSuffix(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = &a9;
  v10 = a2;
  v11 = [a1 mb_stringByAppendingGreenteaSuffix];
  v12 = MBLocalizedStringFromTable(v11, @"MobileBackup");
  if (!v12)
  {
    MBLocalizedStringWithGreenTeaSuffix_cold_1();
  }

  v16 = 0;
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithValidatedFormat:v12 validFormatSpecifiers:v10 locale:0 arguments:v17 error:&v16];

  v14 = v16;
  if (!v13)
  {
    MBLocalizedStringWithGreenTeaSuffix_cold_2();
  }

  return v13;
}

id MBLocalizedStringWithGreenTeaSuffixAndSubstitutions(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = &a9;
  v10 = a2;
  v11 = [a1 mb_stringByAppendingGreenteaSuffix];
  v12 = MBLocalizedStringFromTable(v11, @"MobileBackup");
  if (!v12)
  {
    MBLocalizedStringWithGreenTeaSuffixAndSubstitutions_cold_1();
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [MEMORY[0x1E695DF58] currentLocale];
  v18 = 0;
  v15 = [v13 initWithValidatedFormat:v12 validFormatSpecifiers:v10 locale:v14 arguments:v19 error:&v18];

  v16 = v18;
  if (!v15)
  {
    MBLocalizedStringWithGreenTeaSuffixAndSubstitutions_cold_2();
  }

  return v15;
}

uint64_t MBSimpleChecksumForString(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = &v1[v2];
  do
  {
    v5 = v4 - v1;
    if ((v4 - v1) < 4)
    {
      switch(v5)
      {
        case 1:
          v6 = *v1 << 24;
          v7 = 1;
          break;
        case 2:
          v6 = (v1[1] << 16) | (*v1 << 24);
          v7 = 2;
          break;
        case 3:
          v6 = (v1[1] << 16) | (*v1 << 24) | (v1[2] << 8);
          v7 = 3;
          break;
        default:
          MBSimpleChecksumForString_cold_1();
      }
    }

    else
    {
      v6 = (v1[1] << 16) | (*v1 << 24) | (v1[2] << 8) | v1[3];
      v7 = 4;
    }

    v1 += v7;
    v3 += v6;
  }

  while (v1 < v4);
  return v3;
}

id MBStringWithXPCObject()
{
  v0 = MEMORY[0x1E12C5C60]();
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
  free(v0);

  return v1;
}

void sub_1DEB89A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DEB8A090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DEB8A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEB8AC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MBIsInternalInstall(uint64_t a1, uint64_t a2)
{
  if (MBIsInternalInstall_onceToken != -1)
  {
    MBIsInternalInstall_cold_1();
  }

  return MBIsInternalInstall_sMBIsInternalInstall;
}

void __MBIsInternalInstall_block_invoke()
{
  v0 = MGCopyAnswer();
  MBIsInternalInstall_sMBIsInternalInstall = [v0 BOOLValue];
  if (v0)
  {

    CFRelease(v0);
  }
}

Class MBWeakLinkClass(void *a1, uint64_t a2)
{
  if (!_MBDLHandleForLibrary(a2))
  {
    MBWeakLinkClass_cold_1(a2, a1);
  }

  v4 = [a1 UTF8String];

  return objc_getClass(v4);
}

uint64_t _MBDLHandleForLibrary(uint64_t a1)
{
  if (_MBDLHandleForLibrary_onceToken != -1)
  {
    _MBDLHandleForLibrary_cold_1();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___MBDLHandleForLibrary_block_invoke_2;
  v4[3] = &unk_1E8684978;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(_MBDLHandleForLibrary_queue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *MBWeakLinkSymbol(void *a1, uint64_t a2)
{
  v3 = _MBDLHandleForLibrary(a2);
  v4 = [a1 UTF8String];

  return dlsym(v3, v4);
}

__CFString *MBStringForBackupPolicy(uint64_t a1)
{
  if (a1)
  {
    return @"mega";
  }

  else
  {
    return @"default";
  }
}

void _MBLogHelper_cold_4()
{
  __error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v0, "mkdir failed at %s: %{errno}d", v1, v2, v3, v4);
}

void _MBLogHelper_cold_5()
{
  __error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v0, "lstat failed at %s: %{errno}d", v1, v2, v3, v4);
}

void _MBLogHelper_cold_6()
{
  __error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v0, "lchown failed at %s: %{errno}d", v1, v2, v3, v4);
}

void _MBLogHelper_cold_7()
{
  __error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v0, "lchmod failed at %s: %{errno}d", v1, v2, v3, v4);
}

void _MBLogHelper_cold_12()
{
  __error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v0, "Failed to open MobileBackup log file at %@: %{errno}d", v1, v2, v3, v4);
}

uint64_t MBGetFileIDBytes_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MBGetFileIDBytes(NSString *, NSString *, void *, NSUInteger)"}];

  return [v0 handleFailureInFunction:v1 file:@"MBCommon.m" lineNumber:343 description:@"Invalid buffer size"];
}

void MBLocalizedStringWithSubstitutionsFromTable_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithSubstitutionsFromTable(NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithSubstitutionsFromTable_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithSubstitutionsFromTable(NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithFormat_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithFormat(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithFormat_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithFormat(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithSubstitutions_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithSubstitutions(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithSubstitutions_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithSubstitutions(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithGreenTeaSuffix_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithGreenTeaSuffix(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithGreenTeaSuffix_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithGreenTeaSuffix(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithGreenTeaSuffixAndSubstitutions_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithGreenTeaSuffixAndSubstitutions(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithGreenTeaSuffixAndSubstitutions_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithGreenTeaSuffixAndSubstitutions(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}