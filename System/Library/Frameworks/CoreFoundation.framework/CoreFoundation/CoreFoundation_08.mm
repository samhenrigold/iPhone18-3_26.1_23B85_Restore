unint64_t _CFLogvEx3(void (*a1)(uint64_t, char *, size_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 *a7, uint64_t a8)
{
  if (os_log_shim_enabled())
  {
    result = _CFGetTSD(2);
    if (result <= 3)
    {
      v16 = result;
      _CFSetTSD(2, result + 1, 0);
      if (a5 <= 7)
      {
        os_log_shim_with_CFString_4NSLog();
      }

      _CFSetTSD(2, v16, 0);
      result = also_do_stderr(0);
      if (result)
      {
        return _CFLogvEx2Predicate(a1, a2, a3, a4, a5, a6, a7, 0);
      }
    }
  }

  else
  {

    return _CFLogvEx2Predicate(a1, a2, a3, a4, a5, a6, a7, 1);
  }

  return result;
}

BOOL also_do_stderr(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1 != 0;
  if (a1)
  {
    if (!issetugid() && getenv("CFLOG_FORCE_STDERR"))
    {
      return 1;
    }

    memset(&v6, 0, sizeof(v6));
    if ((fstat(2, &v6) & 0x80000000) == 0)
    {
      if ((v6.st_mode & 0xB000) == 0x8000)
      {
        return 1;
      }

      v2 = v6.st_mode & 0xF000;
      if (v2 == 4096 || v2 == 0x2000)
      {
        return v1;
      }
    }

    return 0;
  }

  memset(&v6, 0, 64);
  v4 = getpid();
  if (proc_pidinfo(v4, 13, 0, &v6, 64) == 64 && (v6.st_atimespec.tv_sec & 2) != 0 || getenv("OS_ACTIVITY_DT_MODE") || getenv("CFLOG_FORCE_DISABLE_STDERR"))
  {
    return 0;
  }

  if (!__CFProcessIsRestricted() && getenv("CFLOG_FORCE_STDERR"))
  {
    return 1;
  }

  memset(&v6, 0, sizeof(v6));
  if (fstat(2, &v6) < 0)
  {
    return 0;
  }

  v5 = v6.st_mode & 0xF000;
  result = 1;
  if (v5 >= 0x8000)
  {
    if (v5 != 0x8000 && v5 != 49152)
    {
      return v1;
    }
  }

  else if (v5 != 4096 && v5 != 0x2000)
  {
    return v1;
  }

  return result;
}

void __CFXNotificationPostToken(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v11[1] = 0;
  memset(v13, 0, sizeof(v13));
  v11[0] = 0x100000000;
  v12 = v13;
  if (CFXNotificationRegistrarFindToken(a1[2], a2, v11))
  {
    if (!a3)
    {
      a3 = *v12;
    }

    v9 = [[__CFNotification alloc] initWithName:a3 object:a4 userInfo:a5 foundation:1];
    v10 = _CFXRegistrationPost(a1, v12, 1, v9, v12[2]);
  }

  _CFXNotificationRegistrationBufferDestroy(v11);
}

uint64_t CFXNotificationRegistrarFindToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  v7 = (v6 >> 1) & 1;
  *(a3 + 8) = (v6 & 2) != 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 156) <= a2 || (v8 = a2, v9 = *(a1 + 144) + 56 * a2, *(v9 + 40) != HIDWORD(a2)) || (v10 = *(v9 + 44), (v10 & 0x8000) != 0))
  {
    v11 = 0;
LABEL_7:
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    goto LABEL_8;
  }

  if ((v10 & 0x400) == 0)
  {
    *&v24 = *(v9 + 8);
LABEL_14:
    v17 = *(v9 + 48);
    if ((v10 & 0x800) != 0)
    {
      v21 = @"kCFNotificationAnyObject";
      if (v7)
      {
        v21 = CFRetain(@"kCFNotificationAnyObject");
      }

      *(&v23 + 1) = v21;
      *&v23 = CFCachedStringCopyString((*(a1 + 96) + 40 * v17 + 8));
    }

    else
    {
      if (v17 == -1)
      {
        Copy = @"kCFNotificationAnyObject";
        if (v7)
        {
          Copy = CFRetain(@"kCFNotificationAnyObject");
        }
      }

      else
      {
        v18 = *(a1 + 120) + 32 * v17;
        v19 = *(v18 + 24);
        if (v19 == -1)
        {
          v20 = CFRetain(@"kCFNotificationAnyName");
        }

        else
        {
          v20 = CFCachedStringCopyString((*(a1 + 96) + 40 * v19 + 8));
        }

        *&v23 = v20;
        if (v7)
        {
          Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, *(v18 + 8));
        }

        else
        {
          Copy = *(v18 + 8);
        }
      }

      *(&v23 + 1) = Copy;
    }

    CFXNotificationHandlerCopy(&v25, *(v9 + 16), *(v9 + 24), *(v9 + 44));
    *(&v24 + 1) = *(v9 + 44);
    *&v26 = v8 | (*(v9 + 40) << 32);
    v11 = 1;
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained((v9 + 8));
  if (WeakRetained)
  {
    *&v24 = WeakRetained;
    v10 = *(v9 + 44);
    goto LABEL_14;
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  _CFXNotificationRegistrarInvalidateObserver(a1, a2, -1, -1, &v27);
  v11 = 0;
LABEL_8:
  os_unfair_lock_unlock((a1 + 16));
  _CFXNotificationDisposalListRelease(&v27);
  if (v11)
  {
    v12 = *(a3 + 16);
    *v12 = v23;
    v12[1] = v24;
    v13 = v26;
    v12[2] = v25;
    v12[3] = v13;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  *a3 = v14;
  return v11;
}

unint64_t _CFLogvEx2Predicate(void (*a1)(uint64_t, char *, size_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 *a7, int a8)
{
  result = _CFGetTSD(2);
  if (result <= 3)
  {
    v17 = result;
    _CFSetTSD(2, result + 1, 0);
    if (a6)
    {
      v18 = _CFStringCreateWithFormatAndArgumentsAux2(&__kCFAllocatorSystemDefault, a2, a3, a4, 0, a6, a7);
      if (v18)
      {
        v19 = v18;
        Length = CFStringGetLength(v18);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v22 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
        if (v22)
        {
          v23 = v22;
          CString = CFStringGetCString(v19, v22, MaximumSizeForEncoding + 1, 0x8000100u);
          v25 = strlen(v23);
          if (a5 <= 7 && CString && v25 - 16777217 >= 0xFFFFFFFFFF000000)
          {
            if (a1)
            {
              a1(a5, v23, v25, 1);
            }

            else if (a8)
            {
              __CFLogCStringLegacy(a5, v23, v25, 1);
            }

            else
            {
              __CFLogCString(v23, v25);
            }
          }

          free(v23);
        }

        CFRelease(v19);
      }
    }

    return _CFSetTSD(2, v17, 0);
  }

  return result;
}

void __CFLogCString(uint64_t a1, uint64_t a2)
{
  __s[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  __s[0] = 0;
  v4 = 0;
  _populateBanner(__s, &v5, &v4);
  _logToStderr(__s[0], a1, a2);
  if (v4)
  {
    free(v4);
  }

  if (v5)
  {
    free(v5);
  }

  if (__s[0])
  {
    free(__s[0]);
  }
}

uint64_t _populateBanner(char **a1, char **a2, char **a3)
{
  __y[1] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v25 = vcvtmd_s64_f64(Current + 978307200.0);
  memset(&v24, 0, sizeof(v24));
  localtime_r(&v25, &v24);
  tm_mon = v24.tm_mon;
  tm_year = v24.tm_year;
  tm_hour = v24.tm_hour;
  tm_mday = v24.tm_mday;
  tm_sec = v24.tm_sec;
  tm_min = v24.tm_min;
  v12 = modf(Current, __y);
  v23 = 0;
  if (pthread_threadid_np(0, &v23))
  {
    v13 = pthread_self();
    v23 = pthread_mach_thread_np(v13);
  }

  v14 = vcvtmd_s64_f64(v12 * 1000.0);
  v15 = tm_mon + 1;
  v16 = tm_year + 1900;
  v17 = *_CFGetProgname();
  v18 = getpid();
  asprintf(a1, "%04d-%02d-%02d %02d:%02d:%02d.%03d %s[%d:%llu] ", v16, v15, tm_mday, tm_hour, tm_min, tm_sec, v14, v17, v18, v23);
  v19 = pthread_self();
  v20 = pthread_mach_thread_np(v19);
  asprintf(a3, "%x", v20);
  return asprintf(a2, "%04d-%02d-%02d %02d:%02d:%02d.%03d", v16, v15, tm_mday, tm_hour, tm_min, tm_sec, v14);
}

uint64_t *_CFGetProgname()
{
  if (!__CFprogname)
  {
    _CFProcessPath();
  }

  return &__CFprogname;
}

ssize_t __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__()
{
  write(2, "The process has forked and you cannot use this CoreFoundation functionality safely. You MUST exec().\n", 0x65uLL);

  return write(2, "Break on __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__() to debug.\n", 0x75uLL);
}

CFURLRef *_CFBundleCreateWithExecutableURLIfLooksLikeBundle(const __CFAllocator *a1, const __CFURL *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = _CFBundleCopyBundleURLForExecutableURL(a2);
  v5 = _CFBundleCopyResolvedURLForExecutableURL(a2);
  v6 = v5;
  if (v4 && v5)
  {
    Unique = _CFBundleCreateUnique(a1, v4);
    if (!Unique)
    {
      v12 = 0;
      goto LABEL_19;
    }

    v8 = Unique;
    v9 = _CFBundleCopyExecutableURLInDirectory2(Unique, Unique[2], 0, 1);
    NormalizedURL = _CFBundleCreateNormalizedURL(a1, v6);
    v11 = NormalizedURL;
    if (v9 && NormalizedURL)
    {
      if (!CFURLGetFileSystemRepresentation(v9, 1u, buffer, 1026) || !CFURLGetFileSystemRepresentation(v11, 1u, v15, 1026) || strcmp(buffer, v15))
      {
        CFRelease(v8);
        v8 = 0;
      }
    }

    else
    {
      CFRelease(v8);
      v8 = 0;
      v12 = 0;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    CFRelease(v9);
    v12 = v8;
LABEL_17:
    if (v11)
    {
      CFRelease(v11);
    }

LABEL_19:
    CFRelease(v4);
    v13 = v12;
    if (!v6)
    {
      return v13;
    }

    goto LABEL_12;
  }

  v12 = 0;
  v13 = 0;
  if (v4)
  {
    goto LABEL_19;
  }

  if (v5)
  {
LABEL_12:
    CFRelease(v6);
  }

  return v13;
}

void _logToStderr(char *__s, uint64_t a2, uint64_t a3)
{
  v5 = __s;
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = __s;
  if (__s)
  {
    __s = strlen(__s);
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v10[1] = __s;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = "\n";
  v7 = *(a2 + a3 - 1);
  v11[3] = v7 != 10;
  if (v7 == 10)
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 + 1;
  }

  os_unfair_lock_lock(&_logToStderr_lock);
  if (v5)
  {
    v9 = v10;
  }

  else
  {
    v9 = v11;
  }

  writev(2, v9, v8);
  os_unfair_lock_unlock(&_logToStderr_lock);
}

void CFSetRemoveAllValues(CFMutableSetRef theSet)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    [(__CFSet *)theSet removeAllObjects];
  }

  else
  {
    v8 = atomic_load(theSet + 1);
    if ((v8 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFSetRemoveAllValues(CFMutableSetRef)");
    }

    CFBasicHashRemoveAllValues(theSet);
  }
}

const void *__CFPropertyListIsArrayPlistAux(const void *result, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (result)
    {
      result = __CFPropertyListIsValidAux(result, a2);
    }

    else
    {
      v3 = *(a2 + 24);
      if (v3 && !*v3)
      {
        v4 = CFRetain(@"property list arrays cannot contain NULL");
        result = 0;
        **(a2 + 24) = v4;
      }

      else
      {
        result = 0;
      }
    }

    *a2 = result;
  }

  return result;
}

void CFNotificationCenterPostNotificationWithOptions(CFNotificationCenterRef center, CFNotificationName name, const void *object, CFDictionaryRef userInfo, CFOptionFlags options)
{
  __CFCheckCFInfoPACSignature(center);
  v10 = _CFGetNonObjCTypeID(center);
  if (v10 != 52)
  {
    _CFAssertMismatchedTypeID(0x34uLL, v10);
  }

  v11 = [__CFNotification alloc];
  v12 = atomic_load(center + 1);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = object;
  }

  v14 = atomic_load(center + 1);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = userInfo;
  }

  v16 = [(__CFNotification *)v11 initWithName:name object:v13 userInfo:v15 foundation:0];
  _CFXNotificationPost(center, v16, options);
}

void CFNotificationCenterRemoveObserver(CFNotificationCenterRef center, const void *observer, CFNotificationName name, const void *object)
{
  __CFCheckCFInfoPACSignature(center);
  v8 = _CFGetNonObjCTypeID(center);
  if (v8 != 52)
  {
    _CFAssertMismatchedTypeID(0x34uLL, v8);
  }

  v9 = atomic_load(center + 1);
  if ((v9 & 2) == 0)
  {
LABEL_3:
    v10 = atomic_load(center + 1);
    if (observer || (v10 & 1) == 0)
    {
      if (name)
      {
        v11 = name;
      }

      else
      {
        v11 = @"kCFNotificationAnyName";
      }

      v12 = atomic_load(center + 1);
      if ((object == 0) | v12 & 1)
      {
        v13 = @"kCFNotificationAnyObject";
      }

      else
      {
        v13 = object;
      }

      if (observer)
      {
        v14 = observer;
      }

      else
      {
        v14 = kCFXNotificationPlaceholderObserver;
      }

      _CFXNotificationRemoveObservers(center, v11, v13, v14);
    }

    return;
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    if (name)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(name))
      {
        CFLog(4, @"*** Attempt to unregister for a distributed notification with a non-string name ignored.", v16, v17, v18, v19, v20, v21, v29);
        return;
      }
    }

    if (object)
    {
      v22 = CFStringGetTypeID();
      if (v22 != CFGetTypeID(object))
      {
        CFLog(4, @"*** Attempt to unregister for a distributed notification (%@) with a non-string object ignored.", v23, v24, v25, v26, v27, v28, name);
        return;
      }
    }

    goto LABEL_3;
  }
}

BOOL _CFXNotificationRegistrarRecycleObjectRegistration(uint64_t a1, uint64_t *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 120);
  v9 = a3;
  v10 = v8 + 32 * a3;
  v13 = *(v10 + 8);
  v12 = (v10 + 8);
  v11 = v13;
  if (a4)
  {
    v14 = CFHash(v11);
    v8 = *(a1 + 120);
  }

  else
  {
    v14 = (v11 >> 5) & 0x7F;
  }

  if (a3 != -1)
  {
    v15 = *a2;
    if (*a2)
    {
      v16 = v14 % *(a2 + 2);
      v17 = (v8 + 32 * v9);
      v18 = *v17;
      v19 = v17[1];
      if (*(v15 + 4 * v16) == a3)
      {
        *(v15 + 4 * v16) = v19;
      }

      if (v18 != -1)
      {
        *(v8 + 32 * v18 + 4) = v19;
      }

      if (v19 != -1)
      {
        *(v8 + 32 * v19) = v18;
      }
    }
  }

  if (a4)
  {
    _CFXNotificationRegistrarRemoveCachedName(v12);
  }

  *v12 = 0;
  v20 = *(a2 + 3);
  if (v20)
  {
    *(a2 + 3) = --v20;
  }

  if (a3 != -1)
  {
    v21 = *(a1 + 120);
    v22 = *(a1 + 136);
    if (v22 != -1)
    {
      *(v21 + 32 * v22) = a3;
    }

    v23 = (v21 + 32 * v9);
    *v23 = -1;
    v23[1] = v22;
    *(a1 + 136) = a3;
    v20 = *(a2 + 3);
  }

  --*(a1 + 128);
  return v20 == 0;
}

CFIndex CFStringFindAndReplace(CFMutableStringRef theString, CFStringRef stringToFind, CFStringRef replacementString, CFRange rangeToSearch, CFStringCompareFlags compareOptions)
{
  length = rangeToSearch.length;
  location = rangeToSearch.location;
  v66 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(7uLL, theString))
  {

    return [(__CFString *)theString replaceOccurrencesOfString:stringToFind withString:replacementString options:compareOptions range:location, length];
  }

  else
  {
    result.location = 0;
    result.length = 0;
    if (length < 1)
    {
      return 0;
    }

    theStringa = theString;
    v61 = replacementString;
    v12 = 0;
    v13 = 0;
    v14 = (location + length);
    v15 = 62;
    v16 = __src;
    while (1)
    {
      v70.location = location;
      v70.length = length;
      v17 = CFStringFindWithOptionsAndLocale(theString, stringToFind, v70, compareOptions, 0, &result);
      if (!v17)
      {
        break;
      }

      if ((compareOptions >> 2))
      {
        length = result.location - location;
      }

      else
      {
        location = result.length + result.location;
        length = v14 - (result.length + result.location);
      }

      if (v13 >= v15)
      {
        v15 = 2 * v15 + 8;
        v19 = v16 == __src ? 0 : v16;
        v17 = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, v19, 16 * v15, 1159420904, 0);
        v20 = v16 == __src;
        v16 = v17;
        if (v20)
        {
          v17 = memmove(v17, __src, 0x3E0uLL);
        }
      }

      *&v16[v12] = result;
      ++v13;
      v12 += 16;
      if (length <= 0)
      {
        goto LABEL_21;
      }
    }

    if (!v12)
    {
      return 0;
    }

LABEL_21:
    v21 = v61;
    if ((compareOptions & 4) != 0)
    {
      v22 = (v13 - 1);
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v22 - 1;
        v25 = v16;
        v26 = &v16[16 * v22];
        do
        {
          v63 = *v25;
          *v25++ = *v26;
          *v26-- = v63;
        }

        while (++v23 < v24--);
      }
    }

    v28 = atomic_load(&theString->info);
    if (v28)
    {
      if (v61 == theString)
      {
        Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, v61);
        v21 = Copy;
      }

      else
      {
        Copy = 0;
      }

      v38 = CFStringGetLength(v21);
      if (v38 < 1)
      {
        v40 = 0;
      }

      else
      {
        if (CF_IS_OBJC(7uLL, v21))
        {
          v39 = [(__CFString *)v21 _encodingCantBeStoredInEightBitCFString];
        }

        else
        {
          v41 = atomic_load(&v21->info);
          v39 = (v41 >> 4) & 1;
        }

        v40 = v39 != 0;
      }

      __CFStringChangeSizeMultiple(theString, v16, v13, v38, v40);
      v42 = atomic_load(&theString->info);
      v43 = atomic_load(&theString->info);
      v44 = v43 & 0x60;
      p_data = &theString->data;
      if ((v42 & 0x10) != 0)
      {
        if (v44)
        {
          v47 = *p_data;
        }

        else
        {
          v57 = atomic_load(&theString->info);
          v47 = &p_data[(v57 & 5) != 4];
        }

        v58 = &v47[2 * *v16];
        v69.location = 0;
        v69.length = v38;
        CFStringGetCharacters(v21, v69, v58);
        v59 = v13 - 1;
        if (v13 != 1)
        {
          v60 = v16 + 16;
          do
          {
            v47 += 2 * (v38 - *(v60 - 1));
            memmove(&v47[2 * *v60], v58, 2 * v38);
            v60 += 2;
            --v59;
          }

          while (v59);
        }
      }

      else
      {
        if (v44)
        {
          v46 = *p_data;
        }

        else
        {
          v48 = atomic_load(&theString->info);
          v46 = &p_data[(v48 & 5) != 4];
        }

        v49 = &v46[*v16];
        v50 = atomic_load(&theStringa->info);
        v51 = (v50 >> 2) & 1;
        v52 = __CFDefaultEightBitStringEncoding;
        if (__CFDefaultEightBitStringEncoding == -1)
        {
          v52 = __CFStringComputeEightBitStringEncoding();
        }

        v68.location = 0;
        v68.length = v38;
        CFStringGetBytes(v21, v68, v52, 0, 0, &v49[v51], v38, 0);
        v53 = atomic_load(&theStringa->info);
        v54 = v13 - 1;
        if (v13 != 1)
        {
          v55 = &v46[(v53 >> 2) & 1];
          v56 = v16 + 16;
          do
          {
            v55 += v38 - *(v56 - 1);
            memmove(&v55[*v56], &v49[v51], v38);
            v56 += 2;
            --v54;
          }

          while (v54);
        }
      }

      if (Copy)
      {
        CFRelease(Copy);
      }
    }

    else
    {
      v29 = _CFOSLog(v17, v18);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        CFStringFindAndReplace_cold_1(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    if (v16 != __src)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v16);
    }

    return v13;
  }
}

void client_context_finalizer(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 48));
  v1 = a1;
  if (*(a1 + 57) == 1)
  {
    client_context_finalizer_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    v1 = a1;
  }

  v3 = *(v1 + 32);
  if (v3)
  {
    xpc_release(v3);
    v1 = a1;
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    CFRelease(v4);
    v1 = a1;
  }

  os_unfair_lock_unlock((v1 + 48));
}

BOOL __CFDataEqual(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  v3 = atomic_load(a1 + 1);
  if ((v3 & 4) != 0)
  {
    v4 = ((a1 + 63) & 0xFFFFFFFFFFFFFFF0);
  }

  else
  {
    v4 = a1[5];
  }

  v6 = atomic_load(a2 + 1);
  if ((v6 & 4) != 0)
  {
    v7 = ((a2 + 63) & 0xFFFFFFFFFFFFFFF0);
  }

  else
  {
    v7 = a2[5];
  }

  return v4 == v7 || memcmp(v4, v7, v2) == 0;
}

CFTypeRef CFBundleGetValueForInfoDictionaryKey(CFBundleRef bundle, CFStringRef key)
{
  result = 0;
  if (bundle)
  {
    if (key)
    {
      LocalInfoDictionary = CFBundleGetLocalInfoDictionary(bundle);
      if (!LocalInfoDictionary || (result = CFDictionaryGetValue(LocalInfoDictionary, key)) == 0)
      {
        result = CFBundleGetInfoDictionary(bundle);
        if (result)
        {

          return CFDictionaryGetValue(result, key);
        }
      }
    }
  }

  return result;
}

CFDictionaryRef CFBundleGetLocalInfoDictionary(CFBundleRef bundle)
{
  v19 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  os_unfair_lock_lock_with_options();
  ValueWithKeyPath = *(bundle + 4);
  if (!ValueWithKeyPath)
  {
    os_unfair_lock_unlock(bundle + 28);
    v18 = 0;
    v16 = 0u;
    *theData = 0u;
    *v14 = 0u;
    *data = 0u;
    _CFBundleGetStringsSources(bundle, 1, @"InfoPlist", 0, v14);
    if (data[0])
    {
      ValueWithKeyPath = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, data[0], 1uLL, 0, 0);
      if (!ValueWithKeyPath)
      {
        goto LABEL_20;
      }

      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(ValueWithKeyPath))
      {
        v6 = 0;
LABEL_19:
        CFRelease(ValueWithKeyPath);
        ValueWithKeyPath = v6;
        goto LABEL_20;
      }

LABEL_18:
      _CFBundleInfoPlistProcessInfoDictionary(ValueWithKeyPath);
      v6 = _parseBundleStrings(bundle, ValueWithKeyPath);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    ValueWithKeyPath = 0;
    if (!theData[1] || !v14[1])
    {
LABEL_20:
      v11 = v16;
      v12 = *theData;
      v13 = v18;
      *cf = *v14;
      v10 = *data;
      _CFBundleReleaseStringsSources_0(cf);
      os_unfair_lock_lock_with_options();
      if (*(bundle + 4))
      {
        if (ValueWithKeyPath)
        {
          CFRelease(ValueWithKeyPath);
        }

        ValueWithKeyPath = *(bundle + 4);
      }

      else
      {
        *(bundle + 4) = ValueWithKeyPath;
      }

      goto LABEL_3;
    }

    v7 = CFSetCreate(&__kCFAllocatorSystemDefault, &v14[1], 1, &kCFTypeSetCallBacks);
    cf[0] = 0;
    if (!_CFPropertyListCreateFiltered(&__kCFAllocatorSystemDefault, theData[1], 1, v7, cf, 0))
    {
      goto LABEL_14;
    }

    ValueWithKeyPath = _CFPropertyListGetValueWithKeyPath(cf[0], v14[1]);
    if (!ValueWithKeyPath)
    {
      goto LABEL_15;
    }

    v8 = CFDictionaryGetTypeID();
    if (v8 == CFGetTypeID(ValueWithKeyPath))
    {
      CFRetain(ValueWithKeyPath);
    }

    else
    {
LABEL_14:
      ValueWithKeyPath = 0;
    }

LABEL_15:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    CFRelease(v7);
    if (!ValueWithKeyPath)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_3:
  os_unfair_lock_unlock(bundle + 28);
  return ValueWithKeyPath;
}

void _CFBundleGetStringsSources(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFString *a3@<X2>, const __CFArray *a4@<X3>, uint64_t a5@<X8>)
{
  v108 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v10 = 1;
  *(a5 + 67) = 1;
  v11 = *(a1 + 168);
  if (v11)
  {
    Value = CFDictionaryGetValue(v11, a3);
    if (Value)
    {
      *a5 = *Value;
      v13 = Value[1];
      v14 = Value[2];
      v15 = Value[3];
      *(a5 + 64) = *(Value + 8);
      *(a5 + 32) = v14;
      *(a5 + 48) = v15;
      *(a5 + 16) = v13;
      *&v104[16] = Value[1];
      v105 = Value[2];
      v106 = Value[3];
      v107 = *(Value + 8);
      *v104 = *Value;
      _CFBundleRetainStringsSources(v104);
      v10 = 0;
    }
  }

  os_unfair_lock_unlock((a1 + 112));
  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(a1 + 54) == 0;
  }

  v17 = v16;
  if (!*(a5 + 56))
  {
    if (v10)
    {
      v18 = CFBundleCopyResourceURL(a1, a3, @"loctable", 0);
    }

    else
    {
      v19 = *(a5 + 48);
      if (!v19)
      {
        goto LABEL_27;
      }

      v18 = CFRetain(v19);
    }

    v20 = v18;
    if (v18)
    {
      if (v17 | a2)
      {
        v21 = v10;
      }

      else
      {
        v21 = 0;
      }

      LOBYTE(v100) = 0;
      cf = 0;
      MappedOrLoadedPlistData = _CFBundleCreateMappedOrLoadedPlistData(v18, v21, v17, &v100, &cf);
      *(a5 + 56) = MappedOrLoadedPlistData;
      if (MappedOrLoadedPlistData)
      {
        *(a5 + 66) = v100;
      }

      else
      {
        UnlocalizedDebugDescription = _CFErrorCreateUnlocalizedDebugDescription(cf);
        v25 = _CFBundleLocalizedStringLogger(UnlocalizedDebugDescription, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v104 = 138412802;
          *&v104[4] = a1;
          *&v104[12] = 2112;
          *&v104[14] = a3;
          *&v104[22] = 2112;
          *&v104[24] = UnlocalizedDebugDescription;
          _os_log_error_impl(&dword_1830E6000, v25, OS_LOG_TYPE_ERROR, "loctable failed to load for bundle: %@, table: %@: %@", v104, 0x20u);
        }

        CFRelease(UnlocalizedDebugDescription);
        CFRelease(cf);
      }

      v26 = *(a5 + 48);
      if (v26)
      {
        CFRelease(v26);
      }

      *(a5 + 48) = v20;
    }
  }

LABEL_27:
  v28 = (a5 + 8);
  v27 = *(a5 + 8);
  if (a4)
  {
    if (v27)
    {
      CFRelease(v27);
      *v28 = 0;
    }

    if (*a5)
    {
      CFRelease(*a5);
      *a5 = 0;
    }

    v29 = *(a5 + 16);
    if (v29)
    {
      CFRelease(v29);
      *(a5 + 16) = 0;
    }

    v30 = *(a5 + 32);
    if (v30)
    {
      CFRelease(v30);
      *(a5 + 32) = 0;
    }

    v93 = (a5 + 8);
    v31 = *(a5 + 24);
    if (v31)
    {
      CFRelease(v31);
      *(a5 + 24) = 0;
    }

    v95 = (a5 + 24);
    theArray = (a5 + 32);
    v90 = a2;
    v32 = *(a5 + 40);
    if (v32)
    {
      CFRelease(v32);
      *(a5 + 40) = 0;
    }

    if (CFArrayGetCount(a4) >= 1)
    {
      v33 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v33);
        v35 = CFBundleCopyResourceURLForLocalization(a1, a3, @"strings", 0, ValueAtIndex);
        v36 = CFBundleCopyResourceURLForLocalization(a1, a3, @"stringsdict", 0, ValueAtIndex);
        if (v35 | v36)
        {
          break;
        }

        if (++v33 >= CFArrayGetCount(a4))
        {
          goto LABEL_51;
        }
      }

      v38 = v36;
      *a5 = v35;
      *(a5 + 8) = CFRetain(ValueAtIndex);
      *(a5 + 24) = v38;
      *(a5 + 32) = CFRetain(ValueAtIndex);
    }

LABEL_51:
    if (*v93)
    {
      goto LABEL_143;
    }

    if (*(a5 + 56))
    {
      if (CFArrayGetCount(a4) >= 1 && CFArrayGetCount(a4) >= 1)
      {
        v39 = 0;
        while (1)
        {
          *v104 = 0;
          cf = 0;
          v40 = *(a5 + 56);
          v41 = CFArrayGetValueAtIndex(a4, v39);
          _CFBundleGetMostAppropriateLocTableDeviceAndPlatformSpecificVariants(v40, v41, v104, &v100, &cf, &v101);
          v42 = cf;
          if (*v104 | cf)
          {
            break;
          }

          if (++v39 >= CFArrayGetCount(a4))
          {
            goto LABEL_141;
          }
        }

        *v93 = *v104;
        *theArray = v42;
      }

LABEL_141:
      if (*v93 | *theArray)
      {
        goto LABEL_143;
      }
    }

    else if (*theArray)
    {
LABEL_155:
      _CFBundleLoadNonLocTableData(a1, a3, a5, 0, v90);
      v80 = *(a5 + 48);
      v105 = *(a5 + 32);
      v106 = v80;
      v107 = *(a5 + 64);
      v81 = *(a5 + 16);
      *v104 = *a5;
      *&v104[16] = v81;
      _CFBundleIngestResultForBundleCache(a1, a3, 0, v104);
      return;
    }

    v71 = CFArrayGetValueAtIndex(a4, 0);
    *v93 = CFRetain(v71);
    v72 = CFArrayGetValueAtIndex(a4, 0);
    *theArray = CFRetain(v72);
LABEL_143:
    v73 = *(a5 + 56);
    if (v73)
    {
      cf = 0;
      v101 = 0;
      v100 = 0;
      v99 = 0;
      if (*(a5 + 8))
      {
        v74 = *(a5 + 8);
      }

      else
      {
        v74 = *(a5 + 32);
      }

      _CFBundleGetMostAppropriateLocTableDeviceAndPlatformSpecificVariants(v73, v74, &cf, &v101, &v100, &v99);
      v75 = _useLoctableInsteadOfFileBasedOnVersion(a5, v93, v101, cf);
      v76 = _useLoctableInsteadOfFileBasedOnVersion(v95, theArray, v99, v100);
      v78 = v76;
      if (!(v75 | v76))
      {
        CFRelease(*(a5 + 56));
        *(a5 + 56) = 0;
      }

      if (!v75 && *a5 || *v95 && !v78)
      {
        v79 = _CFBundleLocalizedStringLogger(v76, v77);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          v82 = *v93;
          *v104 = 138412802;
          *&v104[4] = a1;
          *&v104[12] = 2112;
          *&v104[14] = a3;
          *&v104[22] = 2112;
          *&v104[24] = v82;
          _os_log_debug_impl(&dword_1830E6000, v79, OS_LOG_TYPE_DEBUG, "loctable overridden by installed files. Bundle: %@, table: %@, language: %@", v104, 0x20u);
        }
      }
    }

    goto LABEL_155;
  }

  if (v27 | *(a5 + 32))
  {
    if (*(a5 + 68))
    {
      v37 = *(a5 + 56);
      if (v37)
      {
        CFRelease(v37);
        *(a5 + 56) = 0;
      }
    }

    _CFBundleLoadNonLocTableData(a1, a3, a5, 0, a2);
    return;
  }

  v43 = CFBundleCopyResourceURL(a1, a3, @"strings", 0);
  v44 = CFBundleCopyResourceURL(a1, a3, @"stringsdict", 0);
  theData = *(a5 + 56);
  if (theData)
  {
    theArraya = _CFBundleCopyLanguageSearchListInBundle(a1);
    Count = CFArrayGetCount(theArraya);
    if (v43)
    {
      v46 = _CFBundleCopyLanguageForStringsResourceURL(v43);
      if (v44)
      {
LABEL_62:
        cf2 = _CFBundleCopyLanguageForStringsResourceURL(v44);
LABEL_77:
        FileVersionForStringsResourceURL = _CFBundleGetFileVersionForStringsResourceURL(v43);
        v85 = _CFBundleGetFileVersionForStringsResourceURL(v44);
        LOBYTE(v99) = 0;
        v103 = 0;
        _CFBundleGetLocTableProvenanceForLanguage(theData, @"none", &v99, &v103);
        *v96 = Count - 1;
        if (Count < 1)
        {
          goto LABEL_124;
        }

        v83 = v44;
        v84 = v43;
        v91 = a2;
        v54 = v46;
        v55 = 0;
        v56 = 0;
        v87 = 0;
        v57 = 0;
        v88 = v54;
        if (v99)
        {
          v58 = v54 == 0;
        }

        else
        {
          v58 = 0;
        }

        v59 = v58;
        v94 = v59;
        v61 = v103 && cf2 == 0;
        v62 = v103;
        v63 = v99;
        while (1)
        {
          v64 = CFArrayGetValueAtIndex(theArraya, v57);
          *v104 = 0;
          LODWORD(v100) = 0;
          cf = 0;
          v101 = 0;
          if (v55 | v63 && v56 | v62)
          {
            if (v56)
            {
              goto LABEL_103;
            }
          }

          else
          {
            _CFBundleGetMostAppropriateLocTableDeviceAndPlatformSpecificVariants(theData, v64, v104, &v100, &cf, &v101);
            if (v56)
            {
              goto LABEL_103;
            }
          }

          v53 = cf2;
          if (cf2)
          {
            if (CFEqual(v64, cf2) && v85 >= v101)
            {
              break;
            }
          }

          if (cf)
          {
            v65 = CFRetain(cf);
            v87 = 1;
            goto LABEL_102;
          }

          v56 = 0;
          if (v55)
          {
            goto LABEL_104;
          }

LABEL_114:
          v53 = v88;
          if (v88 && CFEqual(v64, v88) && FileVersionForStringsResourceURL >= v100)
          {
            *a5 = CFRetain(v84);
            v66 = CFRetain(v64);
          }

          else
          {
            if (!*v104)
            {
              v55 = 0;
              goto LABEL_105;
            }

            v66 = CFRetain(*v104);
            v87 = 1;
          }

          *(a5 + 8) = v66;
          if ((v56 & 1) == 0)
          {
            *(a5 + 67) = 0;
          }

LABEL_104:
          v55 = 1;
LABEL_105:
          if (cf)
          {
            CFRelease(cf);
          }

          v52 = *v104;
          if (*v104)
          {
            CFRelease(*v104);
          }

          if (((v55 | v94) & (v56 | v61) & 1) == 0)
          {
            v16 = *v96 == v57++;
            if (!v16)
            {
              continue;
            }
          }

          a2 = v91;
          v44 = v83;
          v43 = v84;
          v46 = v88;
          if (!v87)
          {
LABEL_124:
            v67 = _CFBundleLocalizedStringLogger(v52, v53);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              _CFBundleGetStringsSources_cold_1();
            }

            *(a5 + 68) = 1;
          }

          if (v46)
          {
            CFRelease(v46);
          }

          if (cf2)
          {
            CFRelease(cf2);
          }

          v51 = theArraya;
LABEL_132:
          CFRelease(v51);
          goto LABEL_133;
        }

        *(a5 + 24) = CFRetain(v83);
        v65 = CFRetain(v64);
LABEL_102:
        *(a5 + 32) = v65;
LABEL_103:
        v56 = 1;
        if (v55)
        {
          goto LABEL_104;
        }

        goto LABEL_114;
      }
    }

    else
    {
      v46 = 0;
      if (v44)
      {
        goto LABEL_62;
      }
    }

    cf2 = 0;
    goto LABEL_77;
  }

  if (v43)
  {
    *a5 = CFRetain(v43);
    *(a5 + 8) = _CFBundleCopyLanguageForStringsResourceURL(v43);
  }

  if (v44)
  {
    *(a5 + 24) = CFRetain(v44);
    *(a5 + 32) = _CFBundleCopyLanguageForStringsResourceURL(v44);
  }

  if (*v28)
  {
    v47 = *(a5 + 32);
    if (v47)
    {
      if (!CFEqual(*v28, v47))
      {
        v48 = _CFBundleCopyLanguageSearchListInBundle(a1);
        v49 = CFArrayGetCount(v48);
        v109.location = 0;
        v109.length = v49;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v48, v109, *(a5 + 8));
        v110.location = 0;
        v110.length = v49;
        if (FirstIndexOfValue < CFArrayGetFirstIndexOfValue(v48, v110, *(a5 + 32)))
        {
          *(a5 + 67) = 0;
        }

        v51 = v48;
        goto LABEL_132;
      }
    }
  }

LABEL_133:
  if (v43)
  {
    CFRelease(v43);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  _CFBundleLoadNonLocTableData(a1, a3, a5, 1, a2);
  v68 = *(a5 + 48);
  v105 = *(a5 + 32);
  v106 = v68;
  v107 = *(a5 + 64);
  v69 = *(a5 + 16);
  *v104 = *a5;
  *&v104[16] = v69;
  _CFBundleIngestResultForBundleCache(a1, a3, 1, v104);
  if (*(a5 + 68))
  {
    v70 = *(a5 + 56);
    if (v70)
    {
      CFRelease(v70);
      *(a5 + 56) = 0;
    }
  }
}

CFTypeRef _CFBundleRetainStringsSources(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRetain(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRetain(v8);
  }

  result = *(a1 + 56);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void _CFBundleIngestResultForBundleCache(uint64_t a1, const void *a2, int a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v8 = *(a1 + 168);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, a2);
    v10 = Value;
    v11 = a3 != 0;
    if (a3 && Value)
    {
      v12 = *(a4 + 8);
      v14 = *(a4 + 24);
      v13 = *(a4 + 32);
      v15 = *(a4 + 40);
      v16 = *(a4 + 65);
      if (Value[1])
      {
        v17 = 1;
      }

      else
      {
        v17 = v12 == 0;
      }

      if (!v17)
      {
        if (*Value)
        {
          _CFBundleIngestResultForBundleCache_cold_1();
        }

        if (Value[2])
        {
          _CFBundleIngestResultForBundleCache_cold_2();
        }

        v18 = *a4;
        v19 = *(a4 + 16);
        if (v19 && *(a4 + 64))
        {
          v10[2] = CFRetain(v19);
          *(v10 + 64) = 1;
        }

        if (v18)
        {
          *v10 = CFRetain(v18);
        }

        v10[1] = CFRetain(v12);
      }

      if (v10[4])
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == 0;
      }

      if (!v20)
      {
        if (v10[3])
        {
          _CFBundleIngestResultForBundleCache_cold_3();
        }

        if (v10[5])
        {
          _CFBundleIngestResultForBundleCache_cold_4();
        }

        if (v15 && v16)
        {
          v10[5] = CFRetain(v15);
          *(v10 + 65) = 1;
        }

        if (v14)
        {
          v10[3] = CFRetain(v14);
        }

        v10[4] = CFRetain(v13);
      }

      goto LABEL_44;
    }

    if (Value)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v27 = xmmword_1EF067DA0;
    v28 = *&off_1EF067DB0;
    *&v29 = qword_1EF067DC0;
    *(a1 + 168) = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &v27);
    v11 = a3 != 0;
  }

  v21 = malloc_type_malloc(0x48uLL, 0x1060040C3D82AC4uLL);
  if (!v21)
  {
    goto LABEL_44;
  }

  v22 = v21;
  *v21 = *a4;
  v23 = *(a4 + 16);
  v24 = *(a4 + 32);
  v25 = *(a4 + 48);
  *(v21 + 8) = *(a4 + 64);
  v21[2] = v24;
  v21[3] = v25;
  v21[1] = v23;
  if (!v11)
  {
    *(v21 + 32) = 0;
    *v21 = 0;
    *(v21 + 1) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = 0;
LABEL_35:
    *(v21 + 2) = 0;
    goto LABEL_36;
  }

  if (!*(a4 + 64))
  {
    goto LABEL_35;
  }

LABEL_36:
  if (*(a4 + 65))
  {
    v26 = v11;
  }

  else
  {
    v26 = 0;
  }

  if (!v26)
  {
    *(v21 + 5) = 0;
  }

  if (!*(a4 + 66))
  {
    *(v21 + 7) = 0;
  }

  v28 = v21[1];
  v29 = v21[2];
  v30 = v21[3];
  v31 = *(v21 + 8);
  v27 = *v21;
  _CFBundleRetainStringsSources(&v27);
  CFDictionarySetValue(*(a1 + 168), a2, v22);
LABEL_44:
  os_unfair_lock_unlock((a1 + 112));
}

void _CFXNotificationRegistrarRecycleNameRegistration(uint64_t a1, uint64_t *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 96);
  v9 = (v8 + 40 * a3);
  if (a3 != -1)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = *(v9 + 2) % *(a2 + 2);
      v12 = *v9;
      v13 = v9[1];
      if (*(v10 + 4 * v11) == a3)
      {
        *(v10 + 4 * v11) = v13;
      }

      if (v12 != -1)
      {
        *(v8 + 40 * v12 + 4) = v13;
      }

      if (v13 != -1)
      {
        *(v8 + 40 * v13) = v12;
      }
    }
  }

  if (*(v9 + 1))
  {
    _CFXNotificationRegistrarRemoveCachedName(v9 + 1);
  }

  if (!a4)
  {
    v14 = *(v9 + 3);
    if (v14)
    {
      free(v14);
      *(v9 + 3) = 0;
    }
  }

  --*(a2 + 3);
  if (a3 != -1)
  {
    v15 = *(a1 + 96);
    v16 = *(a1 + 112);
    if (v16 != -1)
    {
      *(v15 + 40 * v16) = a3;
    }

    v17 = (v15 + 40 * a3);
    *v17 = -1;
    v17[1] = v16;
    *(a1 + 112) = a3;
  }

  --*(a1 + 104);
}

void _CFBundleLoadNonLocTableData(uint64_t a1, uint64_t a2, BOOL *a3, int a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 54))
  {
    a4 = 0;
  }

  cf = 0;
  if (!*(a3 + 2))
  {
    if (*a3)
    {
      MappedOrLoadedPlistData = _CFBundleCreateMappedOrLoadedPlistData(*a3, a4, a5, a3 + 64, &cf);
      *(a3 + 2) = MappedOrLoadedPlistData;
      if (!MappedOrLoadedPlistData)
      {
        v12 = _CFBundleLocalizedStringLogger(0, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v19 = a1;
          v20 = 2112;
          v21 = a2;
          v22 = 2112;
          v23 = cf;
          _os_log_error_impl(&dword_1830E6000, v12, OS_LOG_TYPE_ERROR, "Unable to load .strings file: %@ / %@: %@", buf, 0x20u);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
      }
    }
  }

  if (!*(a3 + 5))
  {
    v13 = *(a3 + 3);
    if (v13)
    {
      v14 = _CFBundleCreateMappedOrLoadedPlistData(v13, a4, a5, a3 + 65, &cf);
      *(a3 + 5) = v14;
      if (!v14)
      {
        v16 = _CFBundleLocalizedStringLogger(0, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v19 = a1;
          v20 = 2112;
          v21 = a2;
          v22 = 2112;
          v23 = cf;
          _os_log_error_impl(&dword_1830E6000, v16, OS_LOG_TYPE_ERROR, "Unable to load .stringsdict file: %@ / %@: %@", buf, 0x20u);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

void _CFXNotificationRegistrarRemoveCachedName(const void **a1)
{
  os_unfair_lock_lock(&__CFXNotificationRegistrarNamePoolLock);
  NamePool = _CFXNotificationRegistrarGetNamePool();
  if (CFDictionaryGetValue(NamePool, *a1) == 1)
  {
    CFDictionaryRemoveValue(NamePool, *a1);
  }

  *a1 = 0;

  os_unfair_lock_unlock(&__CFXNotificationRegistrarNamePoolLock);
}

void _CFBundleReleaseStringsSources(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {

    CFRelease(v9);
  }
}

void _CFBundleReleaseStringsSources_0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {

    CFRelease(v9);
  }
}

void CFXNotificationRegistrarRemoveToken(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 156) > a2 && *(*(a1 + 144) + 56 * a2 + 40) == HIDWORD(a2))
  {
    _CFXNotificationRegistrarInvalidateObserver(a1, a2, -1, -1, v4);
  }

  os_unfair_lock_unlock((a1 + 16));
  _CFXNotificationDisposalListRelease(v4);
}

void _CFXNotificationRegistrarInvalidateObserver(uint64_t a1, unsigned int a2, int a3, int a4, unsigned int *a5)
{
  if (*(a1 + 156) <= a2)
  {
    return;
  }

  v7 = *(a1 + 144) + 56 * a2;
  v8 = *(v7 + 44);
  if ((v8 & 0x800) != 0)
  {
    v23 = *(v7 + 48);
    v24 = _CFXNotificationRegistrarRecycleObserverRegistration(a1, (*(a1 + 96) + 40 * v23 + 24), a2, a5);
    if (v23 != a3 && v24)
    {
      v19 = (a1 + 64);
      v20 = a1;
      v21 = v23;
      v22 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    if ((v8 & 0x8000) != 0)
    {
      return;
    }

    v9 = *(v7 + 48);
    if (v9 == -1)
    {

      _CFXNotificationRegistrarRecycleObserverRegistration(a1, (a1 + 80), a2, a5);
    }

    else
    {
      if (v9 >= *(a1 + 132))
      {
        return;
      }

      v11 = (*(a1 + 24) >> 1) & 1;
      v12 = *(a1 + 120) + 32 * v9;
      v13 = *(v12 + 24);
      if (v13 == -1)
      {
        v26 = _CFXNotificationRegistrarRecycleObserverRegistration(a1, (v12 + 16), a2, a5);
        if (v9 != a4 && v26)
        {

          _CFXNotificationRegistrarRecycleObjectRegistration(a1, (a1 + 48), v9, v11);
        }
      }

      else
      {
        v14 = *(a1 + 96);
        v15 = _CFXNotificationRegistrarRecycleObserverRegistration(a1, (v12 + 16), a2, a5);
        if (v9 != a4 && v15)
        {
          v17 = _CFXNotificationRegistrarRecycleObjectRegistration(a1, (v14 + 40 * v13 + 24), v9, v11);
          if (v13 != a3 && v17)
          {
            v19 = (a1 + 32);
            v20 = a1;
            v21 = v13;
            v22 = 0;
LABEL_22:

            _CFXNotificationRegistrarRecycleNameRegistration(v20, v19, v21, v22);
          }
        }
      }
    }
  }
}

CFStringRef _CFURLCopyPath(void *a1, int a2)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCopyPath_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
    {
      a1 = [a1 _cfurl];
    }

    v4 = [a1 _relativePath:a2 == 0];

    return v4;
  }

  else
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
    {
      a1 = [a1 _cfurl];
    }

    return _retainedComponentString(a1, 32, 0, a2);
  }
}

uint64_t _CFErrorCreateDebugDescription(void *a1)
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[1] = 0;
  v3[0] = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v3[2] = 1;
  _CFErrorFormatDebugDescriptionAux(a1, v3);
  return v3[0];
}

void _CFErrorFormatDebugDescriptionAux(void *a1, uint64_t a2)
{
  v4 = _CFErrorCopyUserInfoKey(a1, @"NSDebugDescription");
  v5 = _CFErrorCopyUserInfoKey(a1, @"NSDescription");
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    else if (*(a2 + 16))
    {
      v7 = _CFErrorCopyUserInfoKey(a1, @"NSLocalizedDescription");
      if (!v7)
      {
        v7 = _CFErrorCopyUserInfoKey(a1, @"NSLocalizedFailureReason");
      }

      v6 = v7;
    }

    else
    {
      v6 = 0;
    }

    v4 = 0;
  }

  if (CF_IS_OBJC(0x1BuLL, a1))
  {
    v8 = [a1 userInfo];
  }

  else
  {
    v8 = a1[4];
  }

  v9 = *a2;
  if (CF_IS_OBJC(0x1BuLL, a1))
  {
    v10 = [a1 domain];
  }

  else
  {
    v10 = a1[3];
  }

  if (CF_IS_OBJC(0x1BuLL, a1))
  {
    v11 = [a1 code];
  }

  else
  {
    v11 = a1[2];
  }

  CFStringAppendFormat(v9, 0, @"Error Domain=%@ Code=%ld", v10, v11);
  if (*(a2 + 17))
  {
    if (objc_opt_respondsToSelector())
    {
      CFStringAppendFormat(*a2, 0, @" %@", [(__CFString *)v6 redactedDescription]);
    }
  }

  else
  {
    CFStringAppendFormat(*a2, 0, @" %@", v6);
  }

  if (v6 && v4 && CFStringGetLength(v4) >= 1 && !CFEqual(v6, v4))
  {
    if (*(a2 + 17))
    {
      if (objc_opt_respondsToSelector())
      {
        CFStringAppendFormat(*a2, 0, @" (%@)", [(__CFString *)v4 redactedDescription]);
      }
    }

    else
    {
      CFStringAppendFormat(*a2, 0, @" (%@)", v4);
    }
  }

  if (!v8 || !CFDictionaryGetCount(v8))
  {
LABEL_36:
    if (!v4)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v12 = *(a2 + 8);
  if (v12 <= 2)
  {
    *(a2 + 8) = v12 + 1;
    CFStringAppend(*a2, @" UserInfo={");
    CFDictionaryApplyFunction(v8, userInfoKeyValueShow, a2);
    v13 = CFStringHasSuffix(*a2, @", ") != 0;
    v14 = *a2;
    v16.location = CFStringGetLength(*a2) - 2 * v13;
    v16.length = 2 * v13;
    CFStringReplace(v14, v16, @"}");
    --*(a2 + 8);
    goto LABEL_36;
  }

  CFStringAppendFormat(*a2, 0, @" UserInfo=%p (not displayed)", v8);
  if (v4)
  {
LABEL_37:
    CFRelease(v4);
  }

LABEL_38:
  if (v6)
  {

    CFRelease(v6);
  }
}

const void *_CFErrorCopyUserInfoKey(void *a1, const void *a2)
{
  result = _CFErrorCopyUserInfoKeyFromUserInfo(a1, a2);
  if (!result)
  {

    return _CFErrorCopyUserInfoKeyFromCallBack(a1, a2);
  }

  return result;
}

const void *_CFRunLoopGet0(_opaque_pthread_t *a1)
{
  v1 = a1;
  if (pthread_equal(a1, 0))
  {
    v1 = pthread_main_thread_np();
  }

  os_unfair_lock_lock(&loopsLock);
  v2 = __CFRunLoops;
  if (!__CFRunLoops)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    v4 = pthread_main_thread_np();
    v12 = __CFRunLoopCreate(v4, v5, v6, v7, v8, v9, v10, v11);
    v13 = pthread_main_thread_np();
    CFDictionarySetValue(Mutable, v13, v12);
    v14 = 0;
    atomic_compare_exchange_strong(&__CFRunLoops, &v14, Mutable);
    if (v14)
    {
      CFRelease(Mutable);
    }

    CFRelease(v12);
    v2 = __CFRunLoops;
  }

  Value = CFDictionaryGetValue(v2, v1);
  if (Value)
  {
    v23 = Value;
    os_unfair_lock_unlock(&loopsLock);
  }

  else
  {
    v23 = __CFRunLoopCreate(v1, v16, v17, v18, v19, v20, v21, v22);
    kdebug_trace();
    CFDictionarySetValue(__CFRunLoops, v1, v23);
    os_unfair_lock_unlock(&loopsLock);
    if (v23)
    {
      CFRelease(v23);
    }
  }

  v24 = pthread_self();
  if (pthread_equal(v1, v24))
  {
    _CFSetTSD(10, v23, 0);
    if (!_CFGetTSD(11))
    {
      _CFSetTSD(11, 3, __CFFinalizeRunLoop);
    }
  }

  return v23;
}

const void *_CFErrorCopyUserInfoKeyFromUserInfo(void *a1, const void *a2)
{
  if (CF_IS_OBJC(0x1BuLL, a1))
  {
    v4 = [a1 userInfo];
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = a1[4];
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  Value = CFDictionaryGetValue(v4, a2);
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v6;
}

void CFRunLoopSourceSignal(CFRunLoopSourceRef source)
{
  __CFCheckCFInfoPACSignature(source);
  v2 = _CFGetNonObjCTypeID(source);
  if (v2 != 46)
  {
    _CFAssertMismatchedTypeID(0x2EuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((source + 16));
  v3 = atomic_load(source + 1);
  if ((v3 & 8) != 0)
  {
    kdebug_trace();
    v4 = mach_absolute_time();
    v5 = 0;
    atomic_compare_exchange_strong(source + 11, &v5, v4);
    kdebug_trace();
  }

  pthread_mutex_unlock((source + 16));
}

const void *_CFErrorCopyUserInfoKeyFromCallBack(void *a1, uint64_t a2)
{
  if (CF_IS_OBJC(0x1BuLL, a1))
  {
    v4 = [a1 domain];
  }

  else
  {
    v4 = a1[3];
  }

  v5 = CFErrorCopyCallBackBlockForDomain(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = (*(v5 + 2))(v5, a1, a2);
  v8 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  CFRelease(v6);
  return v8;
}

const void *CFErrorCopyCallBackBlockForDomain(const void *a1)
{
  if (!_CFErrorCallBackTable)
  {
    _CFErrorInitializeCallBackTable();
  }

  os_unfair_lock_lock_with_options();
  Value = CFDictionaryGetValue(_CFErrorCallBackTable, a1);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  os_unfair_lock_unlock(&_CFErrorLock);
  return v3;
}

CFLocaleRef CFLocaleCreate(CFAllocatorRef allocator, CFLocaleIdentifier localeIdentifier)
{
  if (localeIdentifier)
  {
    return [NSLocale _newLocaleWithIdentifier:localeIdentifier];
  }

  else
  {
    return 0;
  }
}

CFLocaleIdentifier CFLocaleCreateCanonicalLanguageIdentifierFromString(CFAllocatorRef allocator, CFStringRef localeIdentifier)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!localeIdentifier || !CFStringGetCString(localeIdentifier, &buffer, 257, 0x600u))
  {
    return 0;
  }

  __key = 0;
  v25 = 0;
  for (i = &buffer; ; i = (i + 1))
  {
    if (!*i)
    {
      v27[0] = 0;
      goto LABEL_13;
    }

    if (*i == 64)
    {
      break;
    }
  }

  v27[0] = 64;
  *i = 0;
  v5 = v27;
  do
  {
    do
    {
      v7 = *(i + 1);
      i = (i + 1);
      v6 = v7;
    }

    while (v7 == 32);
    *++v5 = v6;
  }

  while (*i);
LABEL_13:
  __key = &buffer;
  v25 = 0;
  if (buffer == 0x4F484141535F6161 || (buffer == 0x414D4B4F425F6F6ELL ? (v8 = v29 == 76) : (v8 = 0), v8 || (buffer == 0x524F4E594E5F6F6ELL ? (v9 = v29 == 19283) : (v9 = 0), v9 || bsearch(&__key, oldAppleLocaleToCanonical, 0xB8uLL, 0x10uLL, _CompareTestEntryToTableEntryKey))))
  {
    __strlcpy_chk();
    v26[0] = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    _UpdateFullLocaleString(&buffer, &v23, &v22, v26);
    if (v23 && v22)
    {
      *v22 = 0;
    }
  }

  __key = &buffer;
  v10 = bsearch(&__key, localeStringPrefixToDefaults, 0xB7uLL, 0x10uLL, _CompareTestEntryPrefixToTableEntryKey);
  if (v10)
  {
    _RemoveSubstringsIfPresent(&buffer, v10[1]);
  }

  __key = &buffer;
  if (bsearch(&__key, appleLocaleToLanguageString, 6uLL, 0x10uLL, _CompareTestEntryToTableEntryKey))
  {
    __strlcpy_chk();
  }

  else
  {
    p_buffer = &buffer;
    for (j = &buffer; *j; ++j)
    {
      if (*j == 95)
      {
        v14 = j + 1;
        v13 = j[1];
        v15 = MEMORY[0x1E69E9830];
        if ((v13 & 0x80000000) != 0)
        {
          if (__maskrune(j[1], 0x100uLL))
          {
            goto LABEL_34;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x100) != 0)
        {
LABEL_34:
          v16 = 3;
          do
          {
            v18 = *++v14;
            v17 = v18;
            if ((v18 & 0x80000000) != 0)
            {
              v19 = __maskrune(v17, 0x100uLL);
            }

            else
            {
              v19 = *(v15 + 4 * v17 + 60) & 0x100;
            }
          }

          while (v19);
          goto LABEL_49;
        }

        if (v13 - 48 > 9)
        {
          v16 = 0;
        }

        else
        {
          v16 = 4;
          do
          {
            v20 = *++v14;
          }

          while ((v20 - 48) < 0xA);
        }

LABEL_49:
        if (&v14[-v16] == p_buffer)
        {
          v21 = 45;
        }

        else
        {
          v21 = 0;
        }

        *j = v21;
        j = v14;
        break;
      }

      ++p_buffer;
    }

    *j = 0;
  }

  _AppendKeyValueString(&buffer, v26);
  _AppendKeyValueString(&buffer, v27);
  return CFStringCreateWithCString(allocator, &buffer, 0x600u);
}

unint64_t _UpdateFullLocaleString(char *a1, char **a2, char **a3, _BYTE *a4)
{
  __key[2] = *MEMORY[0x1E69E9840];
  __key[0] = a1;
  __key[1] = 0;
  v5 = bsearch(__key, localeStringPrefixToCanonical, 0x131uLL, 0x10uLL, _CompareLowerTestEntryPrefixToTableEntryKey);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = strlen(*v5);
  v8 = v6[1];
  v9 = strlen(v8);
  v10 = v9 - v7;
  if (v9 - v7 < 0)
  {
    v13 = &a1[v9];
    do
    {
      v14 = v13[v7 - v9];
      *v13++ = v14;
    }

    while (v14);
LABEL_11:
    if (v8)
    {
      v15 = *v8;
      if (*v8)
      {
        v16 = (v8 + 1);
        v17 = a1;
        do
        {
          *v17++ = v15;
          v18 = *v16++;
          v15 = v18;
        }

        while (v18);
      }
    }

    goto LABEL_15;
  }

  if (v9 == v7)
  {
    goto LABEL_11;
  }

  v11 = strlen(a1);
  if (v10 + v11 <= 256)
  {
    if (v11 >= v7)
    {
      v12 = &a1[v11];
      do
      {
        v12[v10] = *v12;
        --v12;
      }

      while (v12 >= &a1[v7]);
    }

    goto LABEL_11;
  }

LABEL_15:
  v19 = 0;
  v71 = 0;
  v72 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = MEMORY[0x1E69E9830];
  v25 = a1;
  while (1)
  {
    v26 = &a1[v19];
    v27 = a1[v19];
    if ((v27 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v24 + 4 * v27 + 60) & 0x100) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v23)
    {
      v28 = __toupper(v27);
    }

    else
    {
      v28 = __tolower(v27);
    }

    *v26 = v28;
LABEL_25:
    ++v19;
  }

  if (__maskrune(a1[v19], 0x100uLL))
  {
    goto LABEL_18;
  }

LABEL_21:
  if (v27 - 48 < 0xA)
  {
    v21 = 1;
    goto LABEL_25;
  }

  if (v22)
  {
    if (v23)
    {
      v23 = 1;
      v20 = v25;
      goto LABEL_51;
    }

    v29 = v25 - a1;
    if (v25 - a1 + 3 != v19 || v21)
    {
      if (v29 + 4 == v19 && v21)
      {
        if (*v25 == 95)
        {
          goto LABEL_38;
        }

        v30 = v72;
        if (!v72)
        {
          v30 = v25;
        }

        v72 = v30;
      }

      else if (v29 + 5 != v19 || v21)
      {
        if (v29 + 1 == v19 && *v25 == 95)
        {
          v23 = 1;
          goto LABEL_51;
        }
      }

      else
      {
        v25[1] = __toupper(v25[1]);
      }
    }

    else
    {
      if (*v25 == 95)
      {
        v25[1] = __toupper(v25[1]);
        v25[2] = __toupper(v25[2]);
LABEL_38:
        v23 = 1;
        v71 = v25;
        goto LABEL_51;
      }

      if (!v72)
      {
        v25[1] = __toupper(v25[1]);
        v25[2] = __toupper(v25[2]);
        v72 = v25;
      }
    }

    v23 = 0;
    *v25 = 45;
    goto LABEL_51;
  }

  if (v21)
  {
    goto LABEL_53;
  }

LABEL_51:
  v21 = 0;
  v31 = *v26;
  v22 = 1;
  v25 = &a1[v19];
  if (v31 == 95 || v31 == 45)
  {
    goto LABEL_25;
  }

LABEL_53:
  v32 = a4;
  *a4 = 0;
  if (v20)
  {
    v33 = uloc_canonicalize();
    if (v33 >= 256)
    {
      v34 = 256;
    }

    else
    {
      v34 = v33;
    }

    a4[v34] = 0;
    for (i = a4; *i; ++i)
    {
      if (*i == 64)
      {
        do
        {
          *v20 = 0;
          v36 = *--v20;
        }

        while (v36 == 95);
        LOBYTE(v37) = *i;
        if (*i)
        {
          v38 = 1;
          do
          {
            *v32++ = v37;
            v37 = i[v38++];
          }

          while (v37);
        }

        break;
      }
    }

    *v32 = 0;
  }

  v39 = (v71 + 1);
  v40 = &specialCases;
  v41 = "-UK";
  while (2)
  {
    if (*v40)
    {
      result = _CheckForTag(a1, *v40);
      if (!result)
      {
        goto LABEL_106;
      }
    }

    v43 = v40[2];
    v44 = *v43;
    if ((v44 & 0x80000000) != 0)
    {
      if (!__maskrune(v44, 0x8000uLL))
      {
        goto LABEL_76;
      }

LABEL_71:
      result = strstr(a1, v41);
      if (!result)
      {
        goto LABEL_91;
      }

      v45 = result;
      v46 = *(result + 3);
      if ((v46 & 0x80000000) != 0)
      {
        result = __maskrune(v46, 0x500uLL);
        if (!result)
        {
          goto LABEL_88;
        }
      }

      else
      {
        result = *(v24 + 4 * v46 + 60) & 0x500;
        if (!result)
        {
LABEL_88:
          v51 = *v43;
          if (*v43)
          {
            v52 = (v43 + 1);
            v53 = v45 + 1;
            do
            {
              *v53++ = v51;
              v54 = *v52++;
              v51 = v54;
            }

            while (v54);
          }
        }
      }

LABEL_91:
      if (v71)
      {
        result = _CheckForTag(v39, v41 + 1);
        if (result)
        {
          v55 = *v43;
          if (*v43)
          {
            v56 = (v43 + 1);
            v57 = v71 + 1;
            do
            {
              *v57++ = v55;
              v58 = *v56++;
              v55 = v58;
            }

            while (v58);
          }
        }
      }

      goto LABEL_106;
    }

    if ((*(v24 + 4 * v44 + 60) & 0x8000) != 0)
    {
      goto LABEL_71;
    }

LABEL_76:
    if (v71)
    {
      result = _CheckForTag(v39, v41 + 1);
      if (result)
      {
        goto LABEL_98;
      }
    }

    v47 = strstr(a1, v41);
    if (v47)
    {
      v48 = v47[3];
      if ((v48 & 0x80000000) != 0)
      {
        result = __maskrune(v48, 0x500uLL);
        if (result)
        {
          goto LABEL_81;
        }
      }

      else
      {
        result = *(v24 + 4 * v48 + 60) & 0x500;
        if (result)
        {
          goto LABEL_81;
        }
      }

LABEL_98:
      v59 = *v43;
      if (*v43)
      {
        v60 = (v43 + 1);
        v61 = a1;
        do
        {
          *v61++ = v59;
          v62 = *v60++;
          v59 = v62;
        }

        while (v62);
      }
    }

    else
    {
LABEL_81:
      v49 = v40[3];
      if (!v71 || (result = _CheckForTag(v39, v49 + 1), !result))
      {
        result = strstr(a1, v49);
        if (!result)
        {
          goto LABEL_106;
        }

        v50 = *(result + 3);
        if ((v50 & 0x80000000) != 0)
        {
          result = __maskrune(v50, 0x500uLL);
          if (result)
          {
            goto LABEL_106;
          }
        }

        else
        {
          result = *(v24 + 4 * v50 + 60) & 0x500;
          if (result)
          {
            goto LABEL_106;
          }
        }
      }

      v63 = v40[4];
      v64 = *v63;
      if (*v63)
      {
        v65 = v63 + 1;
        v66 = a1;
        do
        {
          *v66++ = v64;
          v67 = *v65++;
          v64 = v67;
        }

        while (v67);
      }
    }

LABEL_106:
    v41 = v40[6];
    v40 += 5;
    if (v41)
    {
      continue;
    }

    break;
  }

  if (a2)
  {
    *a2 = v72;
  }

  if (a3)
  {
    *a3 = v71;
  }

  return result;
}

uint64_t _CompareLowerTestEntryPrefixToTableEntryKey(char **a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __tolower(**a1);
  v4 = v5 << 24;
  v5 = v5;
  v6 = *v3;
  v7 = *v3;
  if (v5 == v6)
  {
    v8 = !*v3 || v4 == 1593835520;
    v6 = v5;
    if (!v8)
    {
      v9 = (v2 + 1);
      v10 = v3 + 1;
      do
      {
        v11 = *v9++;
        v5 = __tolower(v11);
        v4 = v5 << 24;
        v5 = v5;
        v12 = *v10++;
        v6 = v12;
        v7 = v12;
        if (v5 != v12)
        {
          break;
        }

        v13 = !v7 || v4 == 1593835520;
        v6 = v5;
      }

      while (!v13);
    }
  }

  if (v7)
  {
    v14 = 0xFFFFFFFFLL;
    if (v4 != 1593835520)
    {
      if (v5 < v6)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    if (v5 > 0x7F)
    {
      v15 = __maskrune(v5, 0x500uLL);
    }

    else
    {
      v15 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x500;
    }

    return v15 != 0;
  }

  return v14;
}

BOOL _CheckForTag(uint64_t a1, const char *a2)
{
  if (strncmp(a1, a2, 2uLL))
  {
    return 0;
  }

  v4 = *(a1 + 2);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = __maskrune(v4, 0x500uLL);
  }

  else
  {
    v5 = *(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x500;
  }

  return v5 == 0;
}

void userInfoKeyValueShow(const void *a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    userInfoKeyValueShow_cold_1();
  }

  v6 = CFEqual(a1, @"NSUnderlyingError");
  if (a2 && v6 && CFGetTypeID(a2) == 27)
  {
    CFStringAppendFormat(*a3, 0, @"%@=%p {", a1, a2);
    _CFErrorFormatDebugDescriptionAux(a2, a3);
    v7 = *a3;

    CFStringAppend(v7, @"}, ");
  }

  else if (*(a3 + 17))
  {
    v8 = objc_opt_respondsToSelector();
    v9 = *a3;
    if (v8)
    {
      v11 = a1;
      v12 = [a2 redactedDescription];
      v10 = @"%@=%@, ";
    }

    else
    {
      v11 = a1;
      v10 = @"%@=<private>, ";
    }

    CFStringAppendFormat(v9, 0, v10, v11, v12);
  }

  else
  {
    CFStringAppendFormat(*a3, 0, @"%@=%@, ", a1, a2);
  }
}

void CFStringReplace(CFMutableStringRef theString, CFRange range, CFStringRef replacement)
{
  length = range.length;
  location = range.location;
  v33[2] = *MEMORY[0x1E69E9840];
  v7 = CF_IS_OBJC(7uLL, theString);
  if (v7)
  {

    [(__CFString *)theString replaceCharactersInRange:location withString:length, replacement];
    return;
  }

  v9 = atomic_load(&theString->info);
  if ((v9 & 1) == 0)
  {
    v10 = _CFOSLog(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      CFStringReplace_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return;
  }

  if (replacement == theString)
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, replacement);
    replacement = Copy;
  }

  else
  {
    Copy = 0;
  }

  v19 = CFStringGetLength(replacement);
  if (v19 < 1)
  {
    v21 = 0;
  }

  else
  {
    if (CF_IS_OBJC(7uLL, replacement))
    {
      v20 = [(__CFString *)replacement _encodingCantBeStoredInEightBitCFString];
    }

    else
    {
      v22 = atomic_load(&replacement->info);
      v20 = (v22 >> 4) & 1;
    }

    v21 = v20 != 0;
  }

  v33[0] = location;
  v33[1] = length;
  __CFStringChangeSizeMultiple(theString, v33, 1, v19, v21);
  v23 = atomic_load(&theString->info);
  v24 = atomic_load(&theString->info);
  v25 = v24 & 0x60;
  p_data = &theString->data;
  if ((v23 & 0x10) == 0)
  {
    if (v25)
    {
      v27 = *p_data;
    }

    else
    {
      v29 = atomic_load(&theString->info);
      v27 = &p_data[(v29 & 5) != 4];
    }

    v30 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v30 = __CFStringComputeEightBitStringEncoding();
    }

    v31 = atomic_load(&theString->info);
    v35.location = 0;
    v35.length = v19;
    CFStringGetBytes(replacement, v35, v30, 0, 0, &v27[location + ((v31 >> 2) & 1)], v19, 0);
    goto LABEL_29;
  }

  if (!v25)
  {
    v32 = atomic_load(&theString->info);
    v28 = &p_data[(v32 & 5) != 4];
    if (!v28)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v28 = *p_data;
  if (v28)
  {
LABEL_28:
    v36.location = 0;
    v36.length = v19;
    CFStringGetCharacters(replacement, v36, &v28[2 * location]);
  }

LABEL_29:
  if (Copy)
  {

    CFRelease(Copy);
  }
}

uint64_t _CompareTestEntryPrefixToTableEntryKey(void *a1, _BYTE **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = **a2 == 0;
  if (v2 == v3 && v3 != 0)
  {
    v6 = *a2 + 1;
    v7 = (*a1 + 1);
    do
    {
      v8 = *v7++;
      v2 = v8;
      v9 = *v6++;
      v3 = v9;
      v4 = v9 == 0;
    }

    while (v2 == v9 && v3 != 0);
  }

  if (v2 < v3)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

void _AppendKeyValueString(uint64_t result, _BYTE *a2)
{
  if (*a2 && uloc_openKeywords())
  {
    while (uenum_next())
    {
      uloc_getKeywordValue();
      uloc_setKeywordValue();
    }

    uenum_close();
  }
}

void __CFBundleDeallocate(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  a1[2] = 0;
  if (v2)
  {
    CFDictionaryGetValue(v2, @"CFBundleIdentifier");
  }

  _CFBundleUnloadExecutable(a1, 0);
  _CFBundleDeallocatePlugIn(a1);
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
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[27];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[18];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[19];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[20];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[21];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[24];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[23];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[15];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[17];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[26];
  if (v17)
  {

    CFRelease(v17);
  }
}

void CFNotificationCenterAddObserver(CFNotificationCenterRef center, const void *observer, CFNotificationCallback callBack, CFStringRef name, const void *object, CFNotificationSuspensionBehavior suspensionBehavior)
{
  v6 = suspensionBehavior;
  __CFCheckCFInfoPACSignature(center);
  v11 = _CFGetNonObjCTypeID(center);
  if (v11 != 52)
  {
    _CFAssertMismatchedTypeID(0x34uLL, v11);
  }

  v12 = v6 & 0xF;
  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      v13 = 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  else
  {
    switch(v12)
    {
      case 3uLL:
        v13 = 8;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      case 4uLL:
        v13 = 1;
        if ((v6 & 0x400) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      case 0xEuLL:
        v13 = 65537;
        if ((v6 & 0x400) == 0)
        {
          goto LABEL_15;
        }

LABEL_14:
        v13 |= 0x400uLL;
        objc_opt_self();
        goto LABEL_15;
    }
  }

  v13 = 4;
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (name)
  {
    v14 = name;
  }

  else
  {
    v14 = @"kCFNotificationAnyName";
  }

  v15 = atomic_load(center + 1);
  if ((object == 0) | v15 & 1)
  {
    v16 = @"kCFNotificationAnyObject";
  }

  else
  {
    v16 = object;
  }

  if (observer)
  {
    v17 = observer;
  }

  else
  {
    v17 = kCFXNotificationPlaceholderObserver;
  }

  _CFXNotificationRegisterObserver(center, v14, v16, v13 | 0x80000, v17);
}

uint64_t __CFRunLoopDoSource0(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a2 + 16));
  if (!atomic_load_explicit((a2 + 88), memory_order_acquire))
  {
    pthread_mutex_unlock((a2 + 16));
    return 0;
  }

  atomic_store(0, (a2 + 88));
  v4 = atomic_load((a2 + 8));
  pthread_mutex_unlock((a2 + 16));
  if ((v4 & 8) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 176);
  v6 = *(a2 + 112);
  if (a1 && !*(a1 + 2713))
  {
    v7 = 0;
  }

  else
  {
    v7 = _CFAutoreleasePoolPush();
  }

  kdebug_trace();
  __CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE0_PERFORM_FUNCTION__(v5, v6);
  kdebug_trace();
  __CFRunLoopPerCalloutARPEnd(v7);
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  return 1;
}

uint64_t (*__CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE0_PERFORM_FUNCTION__(uint64_t (*result)(uint64_t), uint64_t a2))(uint64_t)
{
  if (result)
  {
    return result(a2);
  }

  return result;
}

uint64_t _CFRunLoop01(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = CFSetContainsValue(*(a1 + 2640), a2);
  pthread_mutex_unlock((a1 + 16));
  return v4;
}

CFURLRef _CFBundleCopyExecutableURLInDirectory2(char *bundle, CFURLRef url, const __CFString *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if (bundle)
  {
    InfoDictionary = CFBundleGetInfoDictionary(bundle);
    v10 = InfoDictionary;
    v24 = bundle[53];
    if (!a3 && !a4)
    {
      os_unfair_lock_lock_with_options();
      v11 = *(bundle + 13);
      if (v11)
      {
        CFRetain(*(bundle + 13));
        os_unfair_lock_unlock(bundle + 28);
        v12 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v11, kCFURLPOSIXPathStyle, 0);
        CFRelease(v11);
        if (v12)
        {
          return v12;
        }
      }

      else
      {
        os_unfair_lock_unlock(bundle + 28);
      }

      v13 = 1;
LABEL_13:
      InfoDictionary = _CFBundleCopyExecutableName(bundle, url, v10);
      if (!InfoDictionary)
      {
        v12 = 0;
        goto LABEL_36;
      }

      v14 = InfoDictionary;
      if (!url)
      {
        goto LABEL_31;
      }

      goto LABEL_15;
    }
  }

  else
  {
    InfoDictionary = _CFBundleCopyInfoDictionaryInDirectory(&__kCFAllocatorSystemDefault, url, &v24);
    v10 = InfoDictionary;
  }

  v13 = 0;
  v14 = a3;
  if (!a3)
  {
    goto LABEL_13;
  }

  if (!url)
  {
    goto LABEL_31;
  }

LABEL_15:
  v15 = __CFGetDYLDImageSuffix(InfoDictionary, v9);
  if (v15)
  {
    v16 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, v15, 0x8000100u);
    if (CFStringHasSuffix(v14, @".dylib"))
    {
      v26.length = CFStringGetLength(v14) - 6;
      v26.location = 0;
      v17 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v14, v26);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@%@.dylib", v14, v16);
      CFRelease(v17);
    }

    else
    {
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@%@", v14, v16);
    }

    v19 = CFURLCreateWithFileSystemPathRelativeToBase(&__kCFAllocatorSystemDefault, v18, kCFURLPOSIXPathStyle, 0, url);
    v12 = v19;
    if (v19 && !_binaryLoadable(v19))
    {
      CFRelease(v12);
      v12 = 0;
    }

    CFRelease(v18);
    CFRelease(v16);
    if (v12)
    {
      goto LABEL_26;
    }
  }

  v20 = CFURLCreateWithFileSystemPathRelativeToBase(&__kCFAllocatorSystemDefault, v14, kCFURLPOSIXPathStyle, 0, url);
  if (!v20)
  {
LABEL_31:
    v12 = 0;
    if (!a3 && bundle)
    {
      v12 = 0;
      *(bundle + 12) = 7;
LABEL_35:
      CFRelease(v14);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v12 = v20;
  if (!_binaryLoadable(v20))
  {
    CFRelease(v12);
    goto LABEL_31;
  }

LABEL_26:
  if (v13)
  {
    v21 = CFURLCopyAbsoluteURL(v12);
    v22 = CFURLCopyFileSystemPath(v21, kCFURLPOSIXPathStyle);
    CFRelease(v21);
    os_unfair_lock_lock_with_options();
    if (!*(bundle + 13))
    {
      *(bundle + 13) = CFRetain(v22);
    }

    os_unfair_lock_unlock(bundle + 28);
    CFRelease(v22);
  }

LABEL_34:
  if (!a3)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (!bundle && v10)
  {
    CFRelease(v10);
  }

  return v12;
}

CFStringRef _CFBundleCopyExecutableName(CFBundleRef bundle, CFURLRef relativeURL, CFDictionaryRef theDict)
{
  InfoDictionary = theDict;
  if (bundle && !theDict)
  {
    InfoDictionary = CFBundleGetInfoDictionary(bundle);
  }

  if (bundle && !relativeURL)
  {
    relativeURL = *(bundle + 2);
  }

  if (InfoDictionary && ((Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleExecutable")) != 0 || (Value = CFDictionaryGetValue(InfoDictionary, @"NSExecutable")) != 0) && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFStringGetTypeID()) && CFStringGetLength(v7) >= 1)
  {
    CFRetain(v7);
  }

  else if (relativeURL && (v9 = CFURLCopyAbsoluteURL(relativeURL), v10 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle), CFRelease(v9), v10))
  {
    Length = CFStringGetLength(v10);
    PathComponent2 = _CFStartOfLastPathComponent2(v10);
    v13 = _CFLengthAfterDeletingPathExtension2(v10);
    v7 = 0;
    if (PathComponent2 <= Length && v13 <= Length && v13 > PathComponent2)
    {
      v15.location = PathComponent2;
      v15.length = v13 - PathComponent2;
      v7 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v10, v15);
    }

    CFRelease(v10);
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t _CFStartOfLastPathComponent2(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (Length < 2)
  {
    return 0;
  }

  v3 = Length;
  v4 = Length;
  do
  {
    v5 = v4 - 1;
    if (v4 == 1)
    {
      break;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v4 - 2);
    v4 = v5;
  }

  while (CharacterAtIndex != 47);
  if (v3 == 2 || !_hasDrive(a1))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

CFIndex _CFLengthAfterDeletingPathExtension2(const __CFString *a1)
{
  result = _CFStartOfPathExtension2(a1);
  if (result <= 0)
  {

    return CFStringGetLength(a1);
  }

  return result;
}

CFIndex _CFStartOfPathExtension2(const __CFString *a1)
{
  if (CFStringGetLength(a1) >= 2)
  {
    hasDrive = _hasDrive(a1);
    v4 = CFStringGetLength(a1) - 1;
    while (v4)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v4);
      if (CharacterAtIndex == 47)
      {
        break;
      }

      --v4;
      if (CharacterAtIndex == 46)
      {
        if (hasDrive && v4 == 1)
        {
          return 0;
        }

        else
        {
          return v4 + 1;
        }
      }
    }
  }

  return 0;
}

uint64_t __CFGetDYLDImageSuffix(uint64_t a1, uint64_t a2)
{
  if (__CFGetDYLDImageSuffix_onceToken != -1)
  {
    __CFGetDYLDImageSuffix_cold_1();
  }

  return __CFGetDYLDImageSuffix_suffix;
}

uint64_t _binaryLoadable(const __CFURL *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (_CFURLExists(a1))
  {
    return 1;
  }

  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024);
  if (result)
  {
    return _dyld_shared_cache_contains_path(buffer);
  }

  return result;
}

const __CFURL *_CFURLExists(const __CFURL *url)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = 0;
  if (url)
  {
    if (_CFGetFileProperties(&__kCFAllocatorSystemDefault, url, &v1, 0, 0, 0, 0, 0))
    {
      return 0;
    }

    else
    {
      return (v1 != 0);
    }
  }

  return url;
}

_CFXPreferencesHandle *__sharedPreferencesHandle_block_invoke()
{
  result = objc_alloc_init(_CFXPreferencesHandle);
  qword_1ED40BE18 = result;
  return result;
}

CFStringRef CFURLCopyScheme(CFURLRef anURL)
{
  while (1)
  {
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      CFURLCopyScheme_cold_1();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {
      break;
    }

    if (CF_IS_OBJC(0x1DuLL, anURL))
    {
      v6 = [(__CFURL *)anURL scheme];
      v8 = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      return v8;
    }

    v2 = *(anURL + 4) >> 29;
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        v7 = @"http";
        goto LABEL_24;
      }

      if (v2 == 2)
      {
        v7 = @"https";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v2)
      {
        case 3u:
          v7 = @"file";
          goto LABEL_24;
        case 4u:
          v7 = @"data";
          goto LABEL_24;
        case 5u:
          v7 = @"ftp";
LABEL_24:

          return CFRetain(v7);
      }
    }

    v3 = _retainedComponentString(anURL, 1, 1, 0);
    if (v3)
    {
      return v3;
    }

    anURL = *(anURL + 4);
    if (!anURL)
    {
      return 0;
    }
  }

  v4 = [(__CFURL *)anURL scheme];

  return v4;
}

uint64_t __CFBooleanHash(__objc2_class **a1)
{
  if (&__kCFBooleanTrue == a1)
  {
    return 2654435761;
  }

  else
  {
    return 0;
  }
}

void _CFBundleUnloadExecutable(uint64_t a1, int a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v4);
  }

  if (!a2)
  {
    _CFPlugInUnloadScheduledPlugIns();
  }

  os_unfair_lock_lock_with_options();
  v5 = *(a1 + 52);
  os_unfair_lock_unlock((a1 + 96));
  if (v5)
  {
    _CFPlugInUnscheduleForUnloading(a1);
    _CFPlugInWillUnload(a1);
    os_unfair_lock_lock_with_options();
    if (*(a1 + 52) && (*(a1 + 48) != 4 || _CFExecutableLinkedOnOrAfter(5uLL)))
    {
      _CFBundleDlfcnUnload(a1);
    }

    os_unfair_lock_unlock((a1 + 96));
  }
}

uint64_t _CFPlugInUnloadScheduledPlugIns()
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (_plugInsToUnload)
  {
    Count = CFSetGetCount(_plugInsToUnload);
    if (Count >= 1)
    {
      v1 = Count;
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0x2004093837F09uLL);
      CFSetGetValues(_plugInsToUnload, Typed);
      for (i = 0; i != v1; ++i)
      {
        v4 = Typed[i];
        if (!*(__CFBundleGetPlugInData(v4) + 12))
        {
          if (_CFBundlePluginLogger_onceToken != -1)
          {
            _CFPlugInUnloadScheduledPlugIns_cold_1();
          }

          v5 = _CFBundlePluginLogger__log;
          if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v8 = v4;
            _os_log_debug_impl(&dword_1830E6000, v5, OS_LOG_TYPE_DEBUG, "PlugIn %{public}@ is about to be unloaded", buf, 0xCu);
          }

          _CFBundleUnloadExecutable(v4, 1);
        }
      }

      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t __CFDataHash(unint64_t *a1)
{
  v1 = atomic_load(a1 + 1);
  if ((v1 & 4) != 0)
  {
    v2 = (a1 + 63) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v2 = a1[5];
  }

  if (a1[2] >= 80)
  {
    v3 = 80;
  }

  else
  {
    v3 = a1[2];
  }

  return CFHashBytes(v2, v3);
}

uint64_t _CFBundleDeallocatePlugIn(uint64_t a1)
{
  PlugInData = __CFBundleGetPlugInData(a1);
  os_unfair_recursive_lock_lock_with_options();
  if (*PlugInData)
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      _CFBundleDeallocatePlugIn_cold_1();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
    {
      _CFBundleDeallocatePlugIn_cold_2(a1);
    }

    Count = CFArrayGetCount(*(PlugInData + 16));
    if (Count >= 1)
    {
      v4 = (Count & 0x7FFFFFFF) + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(PlugInData + 16), v4 - 2);
        _CFPFactoryDisableLocked(ValueAtIndex);
        --v4;
      }

      while (v4 > 1);
    }

    CFRelease(*(PlugInData + 16));
    *PlugInData = 0;
  }

  return os_unfair_recursive_lock_unlock();
}

NSSet *mdict_keysOfEntriesWithOptionsPassingTest(uint64_t *a1, char a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = a1[1];
  v7 = *(__NSDictionarySizes_0 + ((v5 >> 55) & 0x1F8));
  v8 = *a1 + 8 * v7;
  v9 = +[(NSSet *)NSMutableSet];
  v19 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __mdict_keysOfEntriesWithOptionsPassingTest_block_invoke;
  v18[3] = &unk_1E6DD2958;
  v18[6] = v6;
  v18[7] = v8;
  v18[8] = &v19;
  v18[4] = v9;
  v18[5] = a3;
  v16 = v9;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(a2, 0, v7, v18) & 1) == 0)
  {
    v17 = 0;
    if (v5 >> 58)
    {
      v10 = 0;
      do
      {
        v11 = *(v6 + 8 * v10);
        if (v11)
        {
          v12 = v11 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = *(v8 + 8 * v10);
          v14 = _CFAutoreleasePoolPush();
          if ((*(a3 + 16))(a3, v11, v13, &v17))
          {
            [(NSSet *)v16 addObject:v11];
          }

          _CFAutoreleasePoolPop(v14);
          if (v17)
          {
            break;
          }
        }

        ++v10;
      }

      while (v10 < v7);
    }

    return [(NSSet *)v16 copy];
  }

  return v16;
}

uint64_t __CFStringComputeEightBitStringEncoding()
{
  if (__CFStringComputeEightBitStringEncoding___CFStringIsBeingInitialized2)
  {
    return 1536;
  }

  __CFStringComputeEightBitStringEncoding___CFStringIsBeingInitialized2 = 1;
  result = _CFExecutableLinkedOnOrAfter(9uLL);
  __CFStringComputeEightBitStringEncoding___CFStringIsBeingInitialized2 = 0;
  if (result)
  {
    result = 1536;
LABEL_5:
    __CFDefaultEightBitStringEncoding = result;
    return result;
  }

  if ((__CFStringIsBeingInitialized & 1) == 0)
  {
    if (__CFIsReadyToInitializeSystemEncoding)
    {
      result = __CFDefaultEightBitStringEncoding;
      if (__CFDefaultEightBitStringEncoding == -1)
      {
        if (CFStringGetSystemEncoding() == -1)
        {
          return 1536;
        }

        result = 0;
        goto LABEL_5;
      }
    }
  }

  return result;
}

id __NSFrozenSetM_mutableCopy(uint64_t a1)
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(a1, v1, __CFTSANTagMutableSet);
  }

  if (!atomic_load((a1 + 24)))
  {
    v4 = _cow_create(a1, 0);
    v5 = 0;
    atomic_compare_exchange_strong((a1 + 24), &v5, v4);
    if (v5)
    {
      free(v4);
    }
  }

  v6 = objc_opt_self();
  v7 = __CFAllocateObject(v6, 0);
  v8 = atomic_load((a1 + 24));
  _cow_copy(a1, 0, v8, __NSSet_cowCallbacks, v7, 1);
  return v7;
}

const __CFString *_CFErrorPOSIXCallBack(void *a1, CFTypeRef cf1)
{
  if (!CFEqual(cf1, @"NSDescription") && !CFEqual(cf1, @"NSLocalizedFailureReason"))
  {
    return 0;
  }

  if (CF_IS_OBJC(0x1BuLL, a1))
  {
    LODWORD(v4) = [a1 code];
  }

  else
  {
    v4 = a1[2];
  }

  v5 = strerror(v4);
  if (!v5 || !*v5)
  {
    return 0;
  }

  v6 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, v5, 0x8000100u);
  if (v6)
  {
    if (!CFEqual(cf1, @"NSDescription"))
    {
      v7 = CFCopySearchPathForDirectoriesInDomains(5, 8, 0);
      if (v7)
      {
        v8 = v7;
        if (CFArrayGetCount(v7) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
          v10 = CFURLCopyFileSystemPath(ValueAtIndex, kCFURLPOSIXPathStyle);
          if (v10)
          {
            v11 = v10;
            v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@/CoreServices/CoreTypes.bundle", v10);
            v13 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v12, kCFURLPOSIXPathStyle, 0);
            CFRelease(v11);
            if (v13)
            {
              v14 = CFBundleCreate(&__kCFAllocatorSystemDefault, v13);
              if (v14)
              {
                v15 = v14;
                v16 = CFBundleCopyLocalizedString(v14, v6, @"%%NOTFOUND%%", @"ErrnoErrors");
                if (v16 == @"%%NOTFOUND%%")
                {
                  CFRelease(@"%%NOTFOUND%%");
                  v16 = 0;
                }

                CFRelease(v6);
                CFRelease(v15);
                v6 = v16;
              }

              CFRelease(v13);
            }

            CFRelease(v12);
          }
        }

        CFRelease(v8);
      }
    }
  }

  return v6;
}

CFURLRef CFURLCreateAbsoluteURLWithBytes(CFAllocatorRef alloc, const UInt8 *relativeURLBytes, CFIndex length, CFStringEncoding encoding, CFURLRef baseURL, Boolean useCompatibilityMode)
{
  v6 = useCompatibilityMode;
  v8 = *&encoding;
  v55[18] = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCreateAbsoluteURLWithBytes_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled != 1)
  {
    if (!v6)
    {
      v19 = CFURLCreateWithBytes(alloc, relativeURLBytes, length, v8, baseURL);
      v12 = v19;
      if (v19 && baseURL)
      {
        v20 = CFURLCopyAbsoluteURL(v19);
        CFRelease(v12);
        return v20;
      }

      return v12;
    }

    v53 = 0;
    v52 = 0;
    if (dyld_program_sdk_at_least())
    {
      v15 = _CFURLCreateURLStringWithBytes(alloc, relativeURLBytes, length, v8);
    }

    else
    {
      v15 = CFStringCreateWithBytes(alloc, relativeURLBytes, length, v8, 0);
    }

    v16 = v15;
    if (!v15)
    {
      return 0;
    }

    if (!baseURL)
    {
      v22 = 1;
LABEL_42:
      _parseComponents(v16, 0, &v53, v55, &v52);
      v38 = v53;
      if ((v53 & 0x20) != 0)
      {
        v39 = 0;
        v40 = 32;
        do
        {
          v41 = v40;
          v40 >>= 1;
          v39 += v38 & 1;
          v38 >>= 1;
        }

        while ((v41 & 2) == 0);
        v42 = &v55[2 * v39];
        v43 = *v42;
        v44 = v42[1];
        Typed = CFAllocatorAllocateTyped(alloc, 2 * v44 + 2, 0x1000040BDFB0063uLL);
        v56.location = v43;
        v56.length = v44;
        CFStringGetCharacters(v16, v56, Typed);
        v46 = &Typed[v44];
        *v46 = 0;
        v47 = _resolvedPath(Typed, v46, 47, 1, 0, alloc);
        if (CFStringGetLength(v47) != v44)
        {
          if (v22)
          {
            v48 = CFStringGetLength(v16);
            MutableCopy = CFStringCreateMutableCopy(alloc, v48, v16);
            CFRelease(v16);
            v16 = MutableCopy;
          }

          v57.location = v43;
          v57.length = v44;
          CFStringReplace(v16, v57, v47);
        }

        CFRelease(v47);
      }

      v12 = _CFURLCreateWithArbitraryString(alloc, v16, 0);
      CFRelease(v16);
      if (v12)
      {
        v12[5] = v8;
      }

      return v12;
    }

    if (CFStringGetLength(v15) >= 1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v16, 0);
      if (CharacterAtIndex == 63 || CharacterAtIndex == 35)
      {
        if (CF_IS_OBJC(0x1DuLL, baseURL))
        {
          v18 = CFURLGetString(baseURL);
        }

        else
        {
          v18 = atomic_load(baseURL + 3);
        }

        v35 = CFStringGetLength(v18);
        v36 = CFStringGetLength(v16);
        Mutable = CFStringCreateMutable(alloc, v36 + v35);
        CFStringAppend(Mutable, v18);
        CFStringAppend(Mutable, v16);
LABEL_37:
        v22 = 0;
        goto LABEL_41;
      }
    }

    v51 = 0;
    _parseComponents(v16, baseURL, &v51, v55, &v52);
    if ((v51 & 1) == 0)
    {
      CFRetain(v16);
      v23 = v16;
      goto LABEL_26;
    }

    v31 = CFURLCopyScheme(baseURL);
    if (v31)
    {
      v32 = v31;
      v33 = v55[1];
      if (CFStringGetLength(v31) == v33 && CFStringHasPrefix(v16, v32))
      {
        v34 = CFStringGetLength(v16);
        v58.location = v33 + 1;
        v58.length = v34 + ~v33;
        v23 = CFStringCreateWithSubstring(alloc, v16, v58);
        v51 = 0;
        _parseComponents(v23, baseURL, &v51, v55, &v52);
        CFRelease(v32);
LABEL_26:
        if (CF_IS_OBJC(0x1DuLL, baseURL))
        {
          v50 = 0;
          v24 = CFURLGetString(baseURL);
          _parseComponents(v24, 0, &v50, v54, &v52);
          v26 = v50;
          v25 = v51;
          v27 = v54;
          v28 = alloc;
          v29 = v23;
          v30 = v24;
        }

        else
        {
          v25 = v51;
          v30 = atomic_load(baseURL + 3);
          v26 = *(baseURL + 4);
          v27 = (baseURL + 56);
          v28 = alloc;
          v29 = v23;
        }

        Mutable = resolveAbsoluteURLString(v28, v29, v25, v55, v30, v26, v27);
        if (v23)
        {
          CFRelease(v23);
        }

        goto LABEL_37;
      }

      CFRetain(v16);
      CFRelease(v32);
    }

    else
    {
      CFRetain(v16);
    }

    v22 = 1;
    Mutable = v16;
LABEL_41:
    CFRelease(v16);
    v16 = Mutable;
    if (Mutable)
    {
      goto LABEL_42;
    }

    return 0;
  }

  v12 = _CFURLCreateURLStringWithBytes(alloc, relativeURLBytes, length, v8);
  if (v12)
  {
    v13 = [NSURL _cfurlWithString:v12 encoding:v8 relativeToURL:baseURL encodingInvalidCharacters:1 forceBaseURL:v6 != 0];
    CFRelease(v12);
    if (v13)
    {
      if (v6)
      {
        v14 = [v13 _compatibilityAbsoluteURL];
      }

      else
      {
        v14 = CFURLCopyAbsoluteURL(v13);
      }

      v12 = v14;
      CFRelease(v13);
      return v12;
    }

    return 0;
  }

  return v12;
}

const __CFString *_CFURLCreateURLStringWithBytes(const __CFAllocator *a1, UInt8 *bytes, size_t numBytes, CFStringEncoding encoding)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  if (BYTE1(encoding) > 7u)
  {
    v7 = 0;
    if (BYTE1(encoding) > 0xAu)
    {
      if (BYTE1(encoding) != 11)
      {
        if (BYTE1(encoding) == 12)
        {
          return v7;
        }

        goto LABEL_17;
      }

      if (encoding - 3059 > 0xC)
      {
        goto LABEL_28;
      }

      v8 = 1 << (encoding + 13);
      v9 = 4099;
    }

    else
    {
      if (BYTE1(encoding) == 8)
      {
        return v7;
      }

      if (BYTE1(encoding) != 10)
      {
        goto LABEL_17;
      }

      if (encoding - 2561 > 0xF)
      {
        goto LABEL_28;
      }

      v8 = 1 << (encoding - 1);
      v9 = 32785;
    }

    if ((v8 & v9) != 0)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (BYTE1(encoding) > 1u)
  {
    if (BYTE1(encoding) == 2)
    {
      if (encoding == 518)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (BYTE1(encoding) == 6)
    {
      if (encoding != 1536)
      {
        return 0;
      }

      goto LABEL_28;
    }

LABEL_17:
    if ((encoding & 0xFF00) > 0xC00)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (BYTE1(encoding))
  {
    if (encoding != 134217984)
    {
      return 0;
    }
  }

  else
  {
    v7 = 0;
    if (encoding <= 0x22 && ((1 << encoding) & 0x600000032) != 0 || encoding == 152)
    {
      return v7;
    }
  }

LABEL_28:
  v10 = CFStringCreateWithBytes(a1, bytes, numBytes, encoding, 0);
  v7 = v10;
  if (!v10)
  {
    return v7;
  }

  CStringPtr = CFStringGetCStringPtr(v10, encoding);
  if (CStringPtr)
  {
    v12 = CStringPtr;
    if (strlen(CStringPtr) == numBytes && !memcmp(bytes, v12, numBytes))
    {
      return v7;
    }

    goto LABEL_39;
  }

  Length = CFStringGetLength(v7);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, encoding);
  v15 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v15)
  {
LABEL_39:
    CFRelease(v7);
    return 0;
  }

  v16 = v15;
  usedBufLen[0] = 0;
  v19.location = 0;
  v19.length = Length;
  CFStringGetBytes(v7, v19, encoding, 0, 0, v15, MaximumSizeForEncoding + 1, usedBufLen);
  if (usedBufLen[0] != numBytes)
  {
    free(v16);
    goto LABEL_39;
  }

  if (memcmp(bytes, v16, numBytes))
  {
    CFRelease(v7);
    v7 = 0;
  }

  free(v16);
  return v7;
}

CFTypeRef CFAutorelease(CFTypeRef arg)
{
  if (!arg)
  {
    CFAutorelease_cold_1();
  }

  v2 = arg;
  return arg;
}

CFDateRef _CFXPCCreateCFObjectFromXPCMessage(void *a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  result = xpc_dictionary_get_data(a1, "ECF19A18-7AA6-4141-B4DC-A2E5123B2B5C", v2);
  if (result)
  {
    return __CFBinaryPlistCreate15(result, v2[0]);
  }

  return result;
}

CFDateRef __CFBinaryPlistCreate15(uint64_t a1, unint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a2 < 0x10)
  {
    return 0;
  }

  if (__CFADD__(a2, a1))
  {
    return 0;
  }

  if (*a1 != 0x35317473696C7062)
  {
    return 0;
  }

  if (a1 + a2 - 1 < a1 + 8)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if ((v2 & 0xF0) != 0x10)
  {
    return 0;
  }

  v3 = 0;
  v4 = (a1 + 9);
  v5 = 1 << (v2 & 0xF);
  if (!__CFADD__(v5, a1 + 9) && v4 + v5 <= a1 + a2)
  {
    v3 = 0;
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v10 = *v4 ^ 0xFFFFFFFF80000000;
      }

      else
      {
        if (v5 != 8)
        {
          return v3;
        }

        v10 = *(a1 + 9) ^ 0x8000000000000000;
      }
    }

    else if (v5 == 1)
    {
      v10 = *v4 & 0x7F;
      if (*v4 >= 0)
      {
        v10 = *v4 | 0xFFFFFFFFFFFFFF80;
      }
    }

    else
    {
      if (v5 != 2)
      {
        return v3;
      }

      v6 = *(a1 + 10) << 8;
      v7 = v6;
      v8 = v6 | *(a1 + 9);
      v9 = *&v8 | 0xFFFFFFFFFFFF8000;
      v10 = v8 & 0x7FFF;
      if (v7 >= 0)
      {
        v10 = v9;
      }
    }

    v3 = 0;
    if (v10 >= 16 && v10 <= a2)
    {
      v11 = v4 + v5;
      if (v11 < a1 + a2 && *v11 == 18)
      {
        v13[0] = v11 + 5;
        if ((v11 + 5) < a1 + a2)
        {
          return __readObject15(a1, v10, v13);
        }
      }

      return 0;
    }
  }

  return v3;
}

uint64_t _NSIsNSDate(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      LOBYTE(v3) = 0;
    }

    v4 = (v3 ^ a1) & 7;
    do
    {
      if (v4 == *(MEMORY[0x1E69E5900] + v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != 7);
    isKindOfClass = (v2 & 7) == 6;
    return isKindOfClass & 1;
  }

  if (!a1)
  {
    isKindOfClass = 0;
    return isKindOfClass & 1;
  }

  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    return isKindOfClass & 1;
  }

  return MethodImplementation(a1, sel_isNSDate__);
}

const char *_CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(const __CFLocale *a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!__CFLocaleGetDoesNotRequireSpecialCaseHandling(a1))
  {
    os_unfair_lock_lock_with_options();
    v6 = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale_lastLocale;
    os_unfair_lock_unlock(&_CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale_lock);
    if (v6)
    {
      v7 = v6 == a1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      return _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale_lastLangID;
    }

    v8 = a2 ? CFLocaleGetValue(a1, @"locale:collator id") : CFLocaleGetIdentifier(a1);
    v9 = v8;
    if (CFStringGetLength(v8) >= 2)
    {
      CStringPtrInternal = _CFStringGetCStringPtrInternal(v9, 0x8000100u, 1, 1);
      if (CStringPtrInternal || (CStringPtrInternal = buffer, v14.location = 0, v14.length = 2, CFStringGetBytes(v9, v14, 0x8000100u, 0, 0, buffer, 2, 0) == 2))
      {
        v11 = *CStringPtrInternal;
        if (v11 <= 0x6B)
        {
          if (v11 == 97)
          {
            if (CStringPtrInternal[1] == 122)
            {
              v4 = "az";
              goto LABEL_31;
            }
          }

          else if (v11 == 101 && CStringPtrInternal[1] == 108)
          {
            v4 = "el";
            goto LABEL_31;
          }
        }

        else if (v11 == 108)
        {
          if (CStringPtrInternal[1] == 116)
          {
            v4 = "lt";
            goto LABEL_31;
          }
        }

        else if (v11 == 110)
        {
          if (CStringPtrInternal[1] == 108)
          {
            v4 = "nl";
            goto LABEL_31;
          }
        }

        else if (v11 == 116 && CStringPtrInternal[1] == 114)
        {
          v4 = "tr";
LABEL_31:
          os_unfair_lock_lock_with_options();
          _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale_lastLocale = a1;
          _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale_lastLangID = v4;
          os_unfair_lock_unlock(&_CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale_lock);
          return v4;
        }
      }
    }
  }

  return 0;
}

CFIndex CFURLGetBytes(CFURLRef url, UInt8 *buffer, CFIndex bufferLength)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLGetBytes_cold_1();
  }

  usedBufLen[0] = 0;
  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
    {
      url = [(__CFURL *)url _cfurl];
    }

    v6 = [(__CFURL *)url _originalString];
    v7 = [(__CFURL *)url _encoding];
  }

  else if (CF_IS_OBJC(0x1DuLL, url))
  {
    v6 = CFURLGetString(url);
    v7 = 134217984;
  }

  else
  {
    v6 = atomic_load(url + 3);
    v7 = *(url + 5);
  }

  Length = CFStringGetLength(v6);
  v11.location = 0;
  v11.length = Length;
  if (CFStringGetBytes(v6, v11, v7, 0, 0, buffer, bufferLength, usedBufLen) == Length)
  {
    return usedBufLen[0];
  }

  else
  {
    return -1;
  }
}

CFAllocatorRef CFAllocatorCreate(CFAllocatorRef allocator, CFAllocatorContext *context)
{
  v3 = allocator;
  if (allocator && allocator != 939)
  {
    v4 = *allocator & ~MEMORY[0x1E69E58F0];
    if ((*allocator & MEMORY[0x1E69E58F0]) != 0)
    {
      v4 |= *allocator & MEMORY[0x1E69E58F0];
    }

    if (v4 != qword_1ED40C0D0)
    {
      return 0;
    }
  }

  allocate = context->allocate;
  info = context->info;
  retain = context->retain;
  if (retain)
  {
    info = (retain)(context->info);
  }

  if (!v3)
  {
    v9 = _CFGetTSD(1);
    if (v9)
    {
      v3 = v9;
    }

    else
    {
      v3 = &__kCFAllocatorSystemDefault;
    }

    goto LABEL_16;
  }

  if (v3 != 939)
  {
LABEL_16:
    Impl = _CFAllocatorAllocateImpl(v3, 0xE0uLL, 0x10F00406A531AB1uLL, 0);
    if (!Impl)
    {
      return Impl;
    }

    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }

    goto LABEL_19;
  }

  if (!allocate)
  {
    return 0;
  }

  Impl = (allocate)(224, 0, info);
  if (!Impl)
  {
    return Impl;
  }

  v3 = 939;
LABEL_19:
  *Impl = 0;
  *(Impl + 1) = 0;
  __CFRuntimeSetRC(Impl, 1u);
  _CFRuntimeSetInstanceTypeID(Impl, 2uLL, v10, v11, v12, v13, v14, v15);
  if (qword_1ED40C0D0)
  {
    v16 = qword_1ED40C0D0;
  }

  else
  {
    v16 = 0;
  }

  *Impl = v16;
  *(Impl + 2) = __CFAllocatorCustomSize;
  *(Impl + 3) = __CFAllocatorCustomMalloc;
  *(Impl + 4) = __CFAllocatorCustomCalloc;
  *(Impl + 5) = __CFAllocatorCustomValloc;
  *(Impl + 6) = __CFAllocatorCustomFree;
  *(Impl + 7) = __CFAllocatorCustomRealloc;
  *(Impl + 8) = __CFAllocatorCustomDestroy;
  *(Impl + 9) = "Custom CFAllocator";
  *(Impl + 10) = 0;
  *(Impl + 11) = 0;
  *(Impl + 12) = __CFAllocatorZoneIntrospect;
  *(Impl + 26) = 6;
  *(Impl + 14) = 0;
  *(Impl + 15) = 0;
  version = context->version;
  *(Impl + 16) = v3;
  *(Impl + 17) = version;
  *(Impl + 18) = info;
  *(Impl + 19) = retain;
  *(Impl + 10) = *&context->release;
  *(Impl + 22) = allocate;
  *(Impl + 184) = *&context->reallocate;
  *(Impl + 25) = context->preferredSize;
  *(Impl + 26) = 0;
  *(Impl + 27) = 0;
  return Impl;
}

uint64_t _CFIsDeallocating(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = atomic_load((a1 + 8));
  if ((*&v1 & 0x800000) != 0)
  {
    return 1;
  }

  else
  {
    return (v1 >> 22) & 1;
  }
}

void __NSCacheValueRelease(void *cf, uint64_t a2)
{
  if (*(a2 + 28) == 1)
  {
    if (dyld_program_sdk_at_least() && *(a2 + 27) == 1)
    {
      if (__NSCacheValueRelease_oGuard != -1)
      {
        __NSCacheValueRelease_cold_1();
      }

      v4 = *(a2 + 8);
      v5 = __NSCacheValueRelease_oMoribundCache;
    }

    else
    {
      v4 = *(a2 + 8);
      v5 = a2;
    }

    __NSCacheCallDelegateWillEvictObjectCallbackWithValue(v4, v5, cf);
  }

  if (*(a2 + 24) != 1 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [cf discardContentIfPossible];
  }

  CFRelease(cf);
}

char *___foundation_swift_nsurl_feature_enabled_block_invoke()
{
  if ((_os_feature_enabled_impl() & 1) != 0 || (result = getenv("NSSwiftURL")) != 0)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      v1 = 1;
    }

    else
    {
      result = getenv("NSURLUseSwift");
      v1 = result != 0;
    }
  }

  else
  {
    v1 = 0;
  }

  _foundation_swift_nsurl_feature_enabled_featureEnabled = v1;
  return result;
}

uint64_t _CFXNotificationGetTaskCenter()
{
  if (CFNotificationCenterGetLocalCenter_static_init != -1)
  {
    _CFXNotificationGetTaskCenter_cold_1();
  }

  return __taskCenter;
}

unint64_t *__CFNotificationCenterGetLocalCenter_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _CFXNotificationCenterCreate(&__kCFAllocatorSystemDefault, _kCFXNotificationConfigurationStandardLocalConfiguration, a3, a4, a5, a6, a7, a8);
  __taskCenter = result;
  return result;
}

unint64_t *_CFXNotificationCenterCreate(__objc2_class **a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38[5] = *MEMORY[0x1E69E9840];
  if (*a2 != 1)
  {
    goto LABEL_7;
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (__CF_FORK_STATE)
  {
    return 0;
  }

LABEL_7:
  Instance = _CFRuntimeCreateInstance(a1, 0x34uLL, 16, 0, a5, a6, a7, a8);
  v17 = Instance;
  if (Instance)
  {
    v18 = *a2;
    if (*a2 == 1)
    {
      v19 = atomic_load(Instance + 1);
      v20 = v19;
      do
      {
        atomic_compare_exchange_strong(Instance + 1, &v20, v19 | 2);
        v21 = v20 == v19;
        v19 = v20;
      }

      while (!v21);
      v18 = *a2;
    }

    if (v18 == 2)
    {
      v22 = atomic_load(Instance + 1);
      v23 = v22;
      do
      {
        atomic_compare_exchange_strong(Instance + 1, &v23, v22 | 1);
        v21 = v23 == v22;
        v22 = v23;
      }

      while (!v21);
    }

    v24 = atomic_load(Instance + 1);
    v25 = v24;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v25, v24 & 0xFFFFFFFFFFFFFFF7);
      v21 = v25 == v24;
      v24 = v25;
    }

    while (!v21);
    if ((*a2 - 1) >= 2)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    CFXNotificationRegistrarCreate(&__kCFAllocatorSystemDefault, v26, v11, v12, v13, v14, v15, v16);
    v17[2] = v27;
    if (*a2 == 1)
    {
      v28 = _CFProcessPath();
      if (v28)
      {
        if (!strcmp("/usr/sbin/distnoted", v28))
        {
          __CFIsDistNoteDaemon = 1;
        }
      }
    }

    v17[3] = 0;
    if (*a2 == 1 && (__CFIsDistNoteDaemon & 1) == 0)
    {
      v29 = *(a2 + 4);
      v30 = *(a2 + 2);
      v31 = *(a2 + 9);
      v32 = qos_class_main();
      v33 = dispatch_queue_attr_make_with_qos_class(0, v32, 0);
      v34 = dispatch_queue_create("com.apple.notification_center.server_conn", v33);
      if (v29)
      {
        v35 = xpc_connection_create_from_endpoint(v29);
        v17[3] = v35;
        xpc_connection_set_target_queue(v35, v34);
      }

      else
      {
        v17[3] = xpc_connection_create_mach_service(v30, v34, 2 * (v31 != 0));
      }

      dispatch_release(v34);
      v36 = v17[3];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = ____CFXNotificationCenterSetupConnection_block_invoke;
      v38[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
      v38[4] = v17;
      xpc_connection_set_event_handler(v36, v38);
      xpc_connection_activate(v17[3]);
    }
  }

  return v17;
}

void CFXNotificationRegistrarCreate(__objc2_class **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Instance = _CFRuntimeCreateInstance(a1, 0x46uLL, 160, 0, a5, a6, a7, a8);
  Instance[3] = a2;
  *(Instance + 4) = 0;
  *(Instance + 28) = -1;
  *(Instance + 34) = -1;
  *(Instance + 40) = -1;
  *(Instance + 20) = -1;
  atomic_store(1u, Instance + 42);
}

void *__CFBasicHashGetPtrIndex_block_invoke()
{
  CFBasicHashCallBackPtrsLock = 0;
  result = malloc_type_malloc(0x100uLL, 0x80040B8603338uLL);
  CFBasicHashCallBackPtrs[0] = result;
  if (result)
  {
    *result = 0;
    result[1] = CFCopyDescription;
    result[2] = __CFTypeCollectionRelease;
    result[3] = __CFTypeCollectionRetain;
    result[4] = CFEqual;
    result[5] = CFHash;
    result[6] = __CFStringCollectionCopy;
    result[7] = 0;
    atomic_store(8u, &CFBasicHashCallBackPtrsCount);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __CFExceptionProem(objc_class *a1, const char *a2)
{
  v4 = objc_opt_class();

  return __CFFullMethodName(v4, a1, a2);
}

void CFBagRemoveAllValues(CFMutableBagRef theBag)
{
  v8 = atomic_load(theBag + 1);
  if ((v8 & 0x40) != 0)
  {
    CFLog(3, @"%s(): immutable collection %p given to mutating function", v1, v2, v3, v4, v5, v6, "void CFBagRemoveAllValues(CFMutableBagRef)");
  }

  CFBasicHashRemoveAllValues(theBag);
}

CFArrayRef CFBundleCopyLocalizationsForPreferences(CFArrayRef locArray, CFArrayRef prefArray)
{
  if (prefArray)
  {

    return _CFBundleCopyLocalizationsForPreferences(locArray, prefArray, 0);
  }

  else
  {
    v4 = _CFBundleCopyUserLanguages();
    if (!v4)
    {
      v4 = CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
    }

    v5 = _CFBundleCopyLocalizationsForPreferences(locArray, v4, 0);
    CFRelease(v4);
    return v5;
  }
}

void *_CFBundleCopyFromTablesForURLLocked(void *key)
{
  if (!_bundlesByURL)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(_bundlesByURL, key);
  v3 = Value;
  if (Value)
  {
    if (Value[2])
    {
      CFRetain(Value);
      return v3;
    }

    CFDictionaryRemoveValue(_bundlesByURL, key);
    return 0;
  }

  return v3;
}

void _CFGetPathExtensionRangesFromPathComponent(const __CFString *a1, unint64_t a2, unint64_t a3)
{
  v105 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  theString = a1;
  v101 = 0;
  v102 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v99 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v103 = 0;
  v104 = 0;
  v100 = CStringPtr;
  if (!(a2 | a3))
  {
    return;
  }

  v89 = a3;
  if (Length < 2)
  {
    goto LABEL_60;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = Length - 1;
  v96 = 0u;
  v97 = 0u;
  v13 = 1 - Length;
  v14 = Length + 63;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v15 = &buffer[Length - 1];
  *buffer = 0u;
  v91 = 0u;
  v16 = 2 - 2 * Length;
  while (1)
  {
    if (v12 >= 0x3F)
    {
      v17 = 63;
    }

    else
    {
      v17 = v12;
    }

    if (v99)
    {
      v18 = &v99[v101 - 1 + Length];
LABEL_11:
      v19 = *(v18 + 2 * v10);
      goto LABEL_14;
    }

    if (!v100)
    {
      v28 = Length + v10 - 1;
      v29 = v104 > v28 && v11 <= v28;
      if (!v29)
      {
        v30 = ~v17;
        v31 = v17 ^ 0x3F;
        v32 = v14 - v17;
        v33 = v17 + v9;
        v34 = Length + v10 + v30;
        v35 = Length + v10 + v31;
        if (v35 >= v102)
        {
          v35 = v102;
        }

        v103 = v34;
        v104 = v35;
        if (v102 < v32)
        {
          v32 = v102;
        }

        v106.location = v34 + v101;
        v106.length = v13 + v33 + v32;
        v36 = v13;
        v37 = v15;
        CFStringGetCharacters(theString, v106, buffer);
        v15 = v37;
        v13 = v36;
        v11 = v103;
      }

      v18 = &v15[-v11];
      goto LABEL_11;
    }

    v19 = v100[v101 - 1 + Length + v10];
LABEL_14:
    v20 = 0;
    v21 = v19;
    v22 = -1;
    if (v21 > 8233)
    {
      v23 = v21 - 8234;
      v29 = v23 > 0x3F;
      v24 = (1 << v23) & 0xF00000000000001FLL;
      v25 = v29 || v24 == 0;
      v26 = 0;
      v27 = -1;
      if (!v25)
      {
        goto LABEL_63;
      }

      goto LABEL_27;
    }

    if (v21 > 1563)
    {
      if ((v21 - 8206) < 2)
      {
LABEL_39:
        v26 = 0;
        goto LABEL_62;
      }

      v26 = 0;
      v27 = -1;
      if (v21 == 1564)
      {
        goto LABEL_63;
      }

      goto LABEL_27;
    }

    if (v21 == 32)
    {
      goto LABEL_39;
    }

    if (v21 == 46)
    {
      break;
    }

    v26 = 0;
    v27 = -1;
    if (v21 == 47)
    {
      goto LABEL_63;
    }

LABEL_27:
    --v12;
    v16 += 2;
    --v14;
    --v10;
    ++v9;
    if (Length + v10 <= 1)
    {
      v20 = 0;
      v26 = 0;
LABEL_91:
      v22 = -1;
      goto LABEL_63;
    }
  }

  if (!v10)
  {
    v20 = 0;
    v26 = 0;
    goto LABEL_62;
  }

  v38 = Length + v10;
  v39 = Length + v10 - 1;
  if (v39 > 2)
  {
    goto LABEL_68;
  }

  if (v99)
  {
    v40 = &v99[v101];
  }

  else
  {
    if (v39 > v104 || v11 >= 1)
    {
      if (v102 >= 64)
      {
        v41.length = 64;
      }

      else
      {
        v41.length = v102;
      }

      v103 = 0;
      v104 = v41.length;
      v41.location = v101;
      if (v100)
      {
        if (v102)
        {
          v42 = &v100[v101];
          v43 = buffer;
          do
          {
            v44 = *v42++;
            *v43++ = v44;
            --v41.length;
          }

          while (v41.length);
        }

        v11 = 0;
      }

      else
      {
        v45 = v13;
        CFStringGetCharacters(theString, v41, buffer);
        v13 = v45;
        v11 = v103;
      }
    }

    v40 = &buffer[-v11];
  }

  if (*v40 != 46)
  {
    goto LABEL_68;
  }

  v20 = v38 - 2;
  if (v38 == 2)
  {
    goto LABEL_61;
  }

  if (v40[1] != 46)
  {
LABEL_68:
    v27 = Length + v10;
    v26 = -v10;
    if (!v89)
    {
LABEL_90:
      v20 = 0;
      goto LABEL_91;
    }

    v47 = v38 + 63;
    v48 = v13 - v10;
    while (1)
    {
      if (v39 >= 0x40)
      {
        v49 = 64;
      }

      else
      {
        v49 = v39;
      }

      v50 = v38 - 1;
      if (v38 - 1 < 2)
      {
        goto LABEL_90;
      }

      if (v99)
      {
        v51 = &v99[v101];
      }

      else
      {
        if (v100)
        {
          v52 = v100[v101 - 2 + v38];
          goto LABEL_79;
        }

        if (v104 < v50 || v11 >= v50)
        {
          v53 = -v49;
          v54 = v49 + v48;
          v55 = v47 - v49;
          v56 = v38 + v53;
          v57 = v56 + 63;
          if (v56 + 63 >= v102)
          {
            v57 = v102;
          }

          v103 = v56 - 1;
          v104 = v57;
          v58.location = v56 + v101 - 1;
          if (v102 >= v55)
          {
            v59 = v55;
          }

          else
          {
            v59 = v102;
          }

          v58.length = v59 + v54;
          CFStringGetCharacters(theString, v58, buffer);
          v11 = v103;
        }

        v51 = &buffer[-v11];
      }

      v52 = v51[v38 - 2];
LABEL_79:
      v16 += 2;
      ++v48;
      --v47;
      --v39;
      --v38;
      if (v52 != 32)
      {
        v60 = 0;
        v61 = 1 - v50;
        v62 = buffer - v16;
        v63 = v50 + 63;
        v64 = v50 - 1;
        while (1)
        {
          v65 = v64 >= 0x3F ? 63 : v64;
          if (v99)
          {
            v66 = v99[v101 + v64];
          }

          else if (v100)
          {
            v66 = v100[v101 + v64];
          }

          else
          {
            if (v104 <= v64 || v11 > v64)
            {
              v68 = -v65;
              v69 = v65 + v61;
              v70 = v63 - v65;
              v71 = v64 + v68;
              v72 = v71 + 64;
              if (v71 + 64 >= v102)
              {
                v72 = v102;
              }

              v103 = v71;
              v104 = v72;
              if (v102 < v70)
              {
                v70 = v102;
              }

              v107.location = v71 + v101;
              v107.length = v70 + v69;
              CFStringGetCharacters(theString, v107, buffer);
              v11 = v103;
            }

            v66 = *&v62[-2 * v11];
          }

          if (v66 == 32 || v66 == 46)
          {
            break;
          }

          ++v60;
          --v63;
          v62 -= 2;
          ++v61;
          v22 = -1;
          v29 = v64-- <= 1;
          if (v29)
          {
LABEL_135:
            v20 = 0;
            goto LABEL_63;
          }
        }

        v73 = v64 + 1;
        v74 = -v64;
        v75 = v64 + 64;
        while (1)
        {
          v76 = v64 >= 0x3F ? 63 : v64;
          if (v99)
          {
            v77 = v99[v101 + v64];
          }

          else if (v100)
          {
            v77 = v100[v101 + v64];
          }

          else
          {
            if (v104 <= v64 || v11 > v64)
            {
              v79 = -v76;
              v80 = v76 + v74;
              v81 = v75 - v76;
              v82 = v64 + v79;
              v83 = v82 + 64;
              if (v82 + 64 >= v102)
              {
                v83 = v102;
              }

              v103 = v82;
              v104 = v83;
              if (v102 < v81)
              {
                v81 = v102;
              }

              v108.location = v82 + v101;
              v108.length = v81 + v80;
              CFStringGetCharacters(theString, v108, buffer);
              v11 = v103;
            }

            v77 = *&v62[-2 * v11];
          }

          if (v77 != 32)
          {
            break;
          }

          --v75;
          v62 -= 2;
          ++v74;
          v22 = -1;
          v29 = v64-- <= 1;
          if (v29)
          {
            goto LABEL_135;
          }
        }

        if (v99)
        {
          v84 = v99[v101 + v64];
        }

        else if (v100)
        {
          v84 = v100[v101 + v64];
        }

        else
        {
          if (v104 <= v64 || v11 > v64)
          {
            v85 = 63;
            if (v64 < 0x3F)
            {
              v85 = v64;
            }

            v86 = v64 - v85 + 64;
            v87 = v102;
            if (v86 >= v102)
            {
              v86 = v102;
            }

            v103 = v64 - v85;
            v104 = v86;
            if (v102 >= v75 - v85)
            {
              v87 = v75 - v85;
            }

            v109.length = v85 + v87 - v64;
            v109.location = v64 - v85 + v101;
            CFStringGetCharacters(theString, v109, buffer);
            v11 = v103;
          }

          v84 = *&v62[-2 * v11];
        }

        if (v84 == 46)
        {
          v20 = v60;
        }

        else
        {
          v20 = 0;
        }

        if (v60)
        {
          v88 = v84 == 46;
        }

        else
        {
          v88 = 0;
        }

        if (v88)
        {
          v22 = v73;
        }

        else
        {
          v22 = -1;
        }

        goto LABEL_63;
      }
    }
  }

LABEL_60:
  v20 = 0;
LABEL_61:
  v26 = 0;
  v22 = -1;
LABEL_62:
  v27 = -1;
LABEL_63:
  if (a2)
  {
    *a2 = v27;
    *(a2 + 8) = v26;
  }

  v46 = v89;
  if (v89)
  {
    *v89 = v22;
    v46[1] = v20;
  }
}

uint64_t _CFBundleGrokBinaryType(const __CFURL *a1, double a2, int8x8_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = 6;
  }

  else
  {
    v3 = 7;
  }

  v9 = 0;
  if (_CFBundleGrokFileType(a1, 0, 0, &v9, 0, 0, 0, 0, a2, a3, 0))
  {
    if (v9 == 4096)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    if (v9 == 8)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }

    if (v9 == 6)
    {
      v6 = 4;
    }

    else
    {
      v6 = v3;
    }

    if (v9 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6;
    }

    if (v9 <= 7)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  return v3;
}

CFMutableDataRef CFDataCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (CF_IS_OBJC(0x14uLL, theData))
  {
    v7 = [(__CFData *)theData length];
  }

  else
  {
    v7 = *(theData + 2);
  }

  if (capacity)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  return __CFDataInit(allocator, v8, capacity, BytePtr, v7, 0);
}

uint64_t _CFStringCompareASCIICaseInsensitive(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v3 = __ASCII_LOWERCASE_TABLE[*a1] - __ASCII_LOWERCASE_TABLE[*a2];
    if (v3)
    {
      break;
    }

    ++a2;
    ++a1;
    if (!--a3)
    {
      return 0;
    }
  }

  return v3;
}

CFStringRef CFNumberFormatterCreateStringWithNumber(CFAllocatorRef allocator, CFNumberFormatterRef formatter, CFNumberRef number)
{
  v5 = allocator;
  v26 = *MEMORY[0x1E69E9840];
  if (!allocator)
  {
    v6 = _CFGetTSD(1);
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = &__kCFAllocatorSystemDefault;
    }
  }

  __CFCheckCFInfoPACSignature(formatter);
  v7 = _CFGetNonObjCTypeID(formatter);
  if (v7 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v7);
  }

  v8 = CFGetTypeID(number);
  if (!CF_IS_OBJC(v8, number))
  {
    Type2 = _CFNumberGetType2(number);
    CFNumberGetValue(number, Type2, v23);
    return CFNumberFormatterCreateStringWithValue(v5, formatter, Type2, v23);
  }

  [(__CFNumber *)number doubleValue];
  if (v9 != 0.0 || (v10 = *(formatter + 9)) == 0)
  {
    __y = 0.0;
    valuePtr = 1.0;
    v12 = *(formatter + 8);
    v13 = 1.0;
    if (v12)
    {
      if (CFNumberGetValue(v12, kCFNumberFloat64Type, &valuePtr))
      {
        v13 = valuePtr;
      }

      else
      {
        valuePtr = 1.0;
      }
    }

    if (modf(v13, &__y) < 0.00000011920929)
    {
      v13 = floor(v13);
      valuePtr = v13;
    }

    if (![(__CFNumber *)number _getCString:__s length:768 multiplier:v13])
    {
      return 0;
    }

    strlen(__s);
    v16 = __cficu_unum_formatDecimal();
    v17 = v16;
    if (v16 >= 769)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 2 * (v16 + 2), 0x1000040BDFB0063uLL);
      strlen(__s);
      v17 = __cficu_unum_formatDecimal();
    }

    else
    {
      Typed = 0;
    }

    if (Typed)
    {
      v19 = Typed;
    }

    else
    {
      v19 = v23;
    }

    if (*(formatter + 82) && (Identifier = CFLocaleGetIdentifier(*(formatter + 3)), CFLocaleGetLanguageCharacterDirection(Identifier) == kCFLocaleLanguageDirectionRightToLeft))
    {
      *v19 = 8207;
      ++v17;
    }

    else if (Typed)
    {
      v19 = Typed + 1;
    }

    else
    {
      v19 = &v24;
    }

    v15 = CFStringCreateWithCharacters(v5, v19, v17);
    if (Typed)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }

    return v15;
  }

  return CFRetain(v10);
}

void CFRunLoopTimerSetNextFireDate(CFRunLoopTimerRef timer, CFAbsoluteTime fireDate)
{
  v2 = (MEMORY[0x1EEE9AC00])(timer);
  v4 = v3;
  v5 = v2;
  v34[518] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(v2);
  v6 = _CFGetNonObjCTypeID(v5);
  if (v6 != 47)
  {
    _CFAssertMismatchedTypeID(0x2FuLL, v6);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v7 = atomic_load((v5 + 8));
  if ((v7 & 8) != 0)
  {
    if (v4 <= 4039289860.0)
    {
      v8 = v4;
    }

    else
    {
      v8 = 4039289860.0;
    }

    v9 = mach_absolute_time();
    Current = CFAbsoluteTimeGetCurrent();
    v11 = Current;
    if (v8 >= Current)
    {
      v12 = v8 - Current;
      if (v8 - v11 > 504911232.0)
      {
        v12 = 504911232.0;
      }

      v9 += __CFTimeIntervalToTSR(v12);
    }

    pthread_mutex_lock((v5 + 24));
    if (*(v5 + 88))
    {
      Count = CFSetGetCount(*(v5 + 96));
      MEMORY[0x1EEE9AC00](Count, v14, v15);
      v17 = (v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (v16 >= 0x200)
      {
        v18 = 512;
      }

      else
      {
        v18 = v16;
      }

      bzero(v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      CFSetGetValues(*(v5 + 96), v17);
      if (Count >= 1)
      {
        v19 = v17;
        v20 = Count;
        do
        {
          v21 = *v19++;
          CFRetain(v21);
          --v20;
        }

        while (v20);
      }

      v22 = CFRetain(*(v5 + 88));
      pthread_mutex_unlock((v5 + 24));
      pthread_mutex_lock((v22 + 16));
      if (Count < 1)
      {
        os_unfair_lock_lock(v22 + 679);
        *(v5 + 128) = v9;
        *(v5 + 104) = v8;
        os_unfair_lock_unlock(v22 + 679);
      }

      else
      {
        v28 = v17;
        v29 = Count;
        do
        {
          v30 = *v28;
          *v28 = __CFRunLoopCopyMode(v22, *v28, 0, v23, v24, v25, v26, v27);
          ++v28;
          CFRelease(v30);
          --v29;
        }

        while (v29);
        os_unfair_lock_lock(v22 + 679);
        *(v5 + 128) = v9;
        *(v5 + 104) = v8;
        v31 = v17;
        v32 = Count;
        do
        {
          if (*v31)
          {
            __CFRepositionTimerInMode(*v31, v5, 1);
          }

          ++v31;
          --v32;
        }

        while (v32);
        os_unfair_lock_unlock(v22 + 679);
        do
        {
          v33 = *v17;
          if (*v17)
          {
            pthread_mutex_unlock((v33 + 16));
            CFRelease(v33);
          }

          ++v17;
          --Count;
        }

        while (Count);
      }

      pthread_mutex_unlock((v22 + 16));
      if (!v22 || _CFRunLoopGetButDontCreateCurrent() != v22)
      {
        CFRunLoopWakeUp(v22);
      }

      CFRelease(v22);
    }

    else
    {
      *(v5 + 128) = v9;
      *(v5 + 104) = v8;
      pthread_mutex_unlock((v5 + 24));
    }

    kdebug_trace();
  }
}

uint64_t _CFBundleLoadingLogger(uint64_t a1, uint64_t a2)
{
  if (_CFBundleLoadingLogger_onceToken != -1)
  {
    _CFBundleLoadingLogger_cold_1();
  }

  return _CFBundleLoadingLogger__log;
}

__CFDictionary *_CFBundleCreateInfoDictFromMainExecutable()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  SectData = getsegbyname("__TEXT");
  if (SectData)
  {
    SectData = _CFBundleGetSectData("__TEXT", "__info_plist", v3);
    v1 = LODWORD(v3[0]);
  }

  else
  {
    v1 = 0;
  }

  return _CFBundleCreateInfoDictFromData(SectData, v1);
}

const section_64 *_CFBundleGetSectData(const char *a1, const char *a2, uint64_t *a3)
{
  v6 = _dyld_image_count();
  v7 = _NSGetMachExecuteHeader();
  if (v6)
  {
    v8 = v7;
    v9 = 0;
    while (v8 != _dyld_get_image_header(v9))
    {
      if (v6 == ++v9)
      {
        goto LABEL_5;
      }
    }

    result = getsectbynamefromheader_64(v8, a1, a2);
    if (result)
    {
      v12 = result;
      addr = result->addr;
      result = (_dyld_get_image_vmaddr_slide(v9) + addr);
      size = v12->size;
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      size = 0;
      if (!a3)
      {
        return result;
      }
    }
  }

  else
  {
LABEL_5:
    size = 0;
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  *a3 = size;
  return result;
}

__CFDictionary *_CFBundleCreateInfoDictFromData(UInt8 *bytes, CFIndex length)
{
  Mutable = 0;
  if (bytes && length)
  {
    v3 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, bytes, length, &__kCFAllocatorNull);
    if (v3)
    {
      v4 = v3;
      v5 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v3, 1uLL, 0, 0);
      if (v5)
      {
        Mutable = v5;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(Mutable))
        {
          CFRelease(v4);
LABEL_10:
          _CFBundleInfoPlistProcessInfoDictionary(Mutable);
          return Mutable;
        }

        CFRelease(Mutable);
      }

      CFRelease(v4);
    }

    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      goto LABEL_10;
    }
  }

  return Mutable;
}

uint64_t _CFBundleInitPlugIn(void *a1, CFDictionaryRef theDict, uint64_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(&v12, 0, sizeof(v12));
  if (!theDict)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"CFPlugInFactories");
  if (!Value)
  {
    return 1;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFDictionaryGetTypeID())
  {
    return 1;
  }

  context = 0;
  CFDictionaryApplyFunction(v7, _searchForDummyUUID, &context);
  if (context)
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      _CFBundleInitPlugIn_cold_1();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
    {
      _CFBundleInitPlugIn_cold_2();
    }

    return 1;
  }

  os_unfair_recursive_lock_lock_with_options();
  if (*(__CFBundleGetPlugInData(a1) + 4))
  {
    os_unfair_recursive_lock_unlock();
    return 1;
  }

  if (!dyld_program_sdk_at_least() || (v10 = 0, CFDictionaryApplyFunction(v7, _searchForExistingFactoryLocked, &v10), !v10))
  {
    _CFBundleInitPlugIn_cold_3(a1, &v12, v7, theDict);
    return 1;
  }

  if (a3)
  {
    *a3 = v10;
  }

  os_unfair_recursive_lock_unlock();
  return 0;
}

uint64_t _CFPlugInHandleDynamicRegistration(__CFBundle *a1)
{
  result = __CFBundleGetPlugInData(a1);
  if (*result)
  {
    v3 = result;
    result = CFBundleIsExecutableLoaded(a1);
    if (result)
    {
      if (*(v3 + 3))
      {
        os_unfair_recursive_lock_lock_with_options();
        if (!*(v3 + 2))
        {
          *(v3 + 3) = 0;
          InfoDictionary = CFBundleGetInfoDictionary(a1);
          Value = CFDictionaryGetValue(InfoDictionary, @"CFPlugInDynamicRegisterFunction");
          if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFStringGetTypeID()) || CFStringGetLength(v6) <= 0)
          {
            v6 = @"CFPlugInDynamicRegister";
          }

          *(v3 + 1) = 256;
          FunctionPointerForName = CFBundleGetFunctionPointerForName(a1, v6);
          if (FunctionPointerForName)
          {
            __CFPLUGIN_IS_CALLING_OUT_TO_A_DYNAMIC_REGISTRATION_FUNCTION__(FunctionPointerForName, a1);
          }

          *(v3 + 2) = 0;
          if (*(v3 + 1) && !*(v3 + 8))
          {
            CFBundleUnloadExecutable(a1);
          }
        }

        return os_unfair_recursive_lock_unlock();
      }
    }
  }

  return result;
}

uint64_t _CFProcessNameString()
{
  if (!_CFProcessNameString___CFProcessNameString)
  {
    v0 = __CFprogname;
    if (!__CFprogname)
    {
      _CFProcessPath();
      v0 = __CFprogname;
    }

    if (v0)
    {
      v1 = v0;
    }

    else
    {
      v1 = "";
    }

    v2 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, v1, 0x8000100u);
    v3 = 0;
    atomic_compare_exchange_strong(&_CFProcessNameString___CFProcessNameString, &v3, v2);
    if (v3)
    {
      CFRelease(v2);
    }
  }

  return _CFProcessNameString___CFProcessNameString;
}

__CFString *_CFStringCopyBundleUnloadingProtectedString(unint64_t *a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return a1;
  }

  CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
  Length = CFStringGetLength(a1);
  if (CStringPtrInternal && (v5 = Length, _dyld_is_memory_immutable()))
  {
    v6 = *a1 & ~MEMORY[0x1E69E58F0];
    if ((*a1 & MEMORY[0x1E69E58F0]) != 0)
    {
      v6 |= *a1 & MEMORY[0x1E69E58F0];
    }

    if (v6 == __CFConstantStringClassReferencePtr)
    {
      return a1;
    }

    return _CFStringCreateWithASCIIBytesNoCopyOrIndirectTagged(&__kCFAllocatorSystemDefault, CStringPtrInternal, v5);
  }

  else
  {

    return _CFStringSlowPathCopyBundleUnloadingProtectedString(a1);
  }
}

const UInt8 *CFCopyHomeDirectoryURLForUser(const __CFString *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    usedBufLen = 0;
    if (MaximumSizeForEncoding >= 127)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, (MaximumSizeForEncoding + 1), 0x493AA00DuLL);
    }

    else
    {
      Typed = buffer;
    }

    v13.location = 0;
    v13.length = Length;
    Bytes = CFStringGetBytes(a1, v13, 0x8000100u, 0, 1u, Typed, MaximumSizeForEncoding, &usedBufLen);
    v7 = 0;
    if (Bytes == Length)
    {
      Typed[usedBufLen] = 0;
      v7 = Typed;
    }

    v8 = _CFCopyHomeDirURLForUser(v7, 0);
    if (buffer != Typed)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }

    return v8;
  }

  else
  {

    return _CFCopyHomeDirURLForUser(0, 1);
  }
}

const UInt8 *_CFCopyHomeDirURLForUser(const char *a1, int a2)
{
  v31[3] = *MEMORY[0x1E69E9840];
  if (issetugid())
  {
    v4 = 0;
  }

  else
  {
    v4 = __CFgetenv("CFFIXED_USER_HOME");
  }

  v30 = 0;
  v31[0] = &v30;
  v31[1] = 0x2000000000;
  v31[2] = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v27 = ___CFCopyHomeDirURLForUser_block_invoke;
  v28 = &unk_1E6D81FC8;
  v29 = &v30;
  if (!issetugid() && v4)
  {
    v5 = strlen(v4);
    pw_dir = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, v4, v5, 1u);
    if (pw_dir)
    {
      goto LABEL_35;
    }

    v27(v26);
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v9 = *(v31[0] + 24);
    if (has_internal_diagnostics)
    {
      CFStringAppendFormat(v9, 0, @"CFURLCreateFromFileSystemRepresentation failed to create URL for CFFIXED_USER_HOME value: %s", v4);
    }

    else
    {
      CFStringAppend(v9, @"CFURLCreateFromFileSystemRepresentation failed to create URL for CFFIXED_USER_HOME value");
    }
  }

  if (a1)
  {
    *__error() = 0;
    v10 = getpwnam(a1);
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v25 = 0;
    __CFGetUGIDs(&v25, 0);
    *__error() = 0;
    v11 = v25;
    if (!v25)
    {
      v11 = getuid();
    }

    v10 = getpwuid(v11);
    if (!v10)
    {
      v15 = *__error();
      v27(v26);
      CFStringAppendFormat(*(v31[0] + 24), 0, @"getpwuid failed with code: %d", v15);
      goto LABEL_26;
    }
  }

  pw_dir = v10->pw_dir;
  if (pw_dir)
  {
    v12 = strlen(v10->pw_dir);
    pw_dir = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, pw_dir, v12, 1u);
  }

  if (!(a1 | pw_dir))
  {
    v27(v26);
    if (v10->pw_dir)
    {
      v13 = os_variant_has_internal_diagnostics();
      v14 = *(v31[0] + 24);
      if (v13)
      {
        CFStringAppendFormat(v14, 0, @"CFURLCreateFromFileSystemRepresentation failed to create URL for upwd->pw_dir value: %s", v10->pw_dir);
LABEL_26:
        pw_dir = 0;
        goto LABEL_27;
      }

      v16 = @"CFURLCreateFromFileSystemRepresentation failed to create URL for upwd->pw_dir value";
    }

    else
    {
      v14 = *(v31[0] + 24);
      v16 = @"upwd->pw_dir is NULL";
    }

    CFStringAppend(v14, v16);
    goto LABEL_26;
  }

LABEL_27:
  if (!pw_dir && a2)
  {
    v17 = __CFgetenv("HOME");
    v18 = v17;
    if (v17)
    {
      v19 = strlen(v17);
      pw_dir = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, v18, v19, 1u);
      if (pw_dir)
      {
        goto LABEL_35;
      }

      v27(v26);
      v20 = os_variant_has_internal_diagnostics();
      v21 = *(v31[0] + 24);
      if (v20)
      {
        CFStringAppendFormat(v21, 0, @"CFURLCreateFromFileSystemRepresentation failed to create URL for HOME value: %s", v18);
      }

      else
      {
        CFStringAppend(v21, @"CFURLCreateFromFileSystemRepresentation failed to create URL for HOME value");
      }
    }

    pw_dir = 0;
  }

LABEL_35:
  v22 = *(v31[0] + 24);
  if (v22)
  {
    if (!pw_dir)
    {
      v23 = _CFOSLog(v22, v6);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        _CFCopyHomeDirURLForUser_cold_1(v31, v23);
      }

      pw_dir = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, "/var/empty", 10, 1u);
      v22 = *(v31[0] + 24);
    }

    CFRelease(v22);
  }

  _Block_object_dispose(&v30, 8);
  return pw_dir;
}

void CFArraySortValues(CFMutableArrayRef theArray, CFRange range, CFComparatorFunction comparator, void *context)
{
  length = range.length;
  location = range.location;
  v58 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    v10 = atomic_load(theArray + 1);
    isKindOfClass = (v10 & 3) != 0;
  }

  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_5;
  }

  v18 = atomic_load(theArray + 1);
  v19 = (v18 >> 2) & 3;
  if (!v19)
  {
    v11 = &__kCFNullArrayCallBacks;
    goto LABEL_6;
  }

  if (v19 == 1)
  {
LABEL_5:
    v11 = &kCFTypeArrayCallBacks;
  }

  else
  {
    v20 = atomic_load(theArray + 1);
    v21 = v20 & 3;
    if (v21 != 2 && v21)
    {
      v11 = 0;
    }

    else
    {
      v11 = (theArray + 48);
    }
  }

LABEL_6:
  if ((isKindOfClass & 1) == 0 || (v11->retain == 0) == (v11->release == 0))
  {
    if (length >= 2)
    {
      v16 = location;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *values = 0u;
      v27 = 0u;
      if (length >= 0x101)
      {
        Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * length, 0x80040B8603338uLL);
      }

      else
      {
        Typed = values;
      }

      v59.location = v16;
      v59.length = length;
      CFArrayGetValues(theArray, v59, Typed);
      v25[0] = comparator;
      v25[1] = context;
      CFQSortArray(Typed, length, 8, __CFArrayCompareValues, v25, v22, v23, v24);
      if (isKindOfClass)
      {
        v60.location = v16;
        v60.length = length;
        CFArrayReplaceValues(theArray, v60, Typed, length);
      }

      if (Typed != values)
      {
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
      }
    }
  }

  else if (length >= 2)
  {
    v12 = length - 1;
    do
    {
      v13 = v12;
      v14 = location;
      if (location < location - 1 + length)
      {
        do
        {
          if ((comparator)([(__CFArray *)theArray objectAtIndex:v14 + 1], [(__CFArray *)theArray objectAtIndex:v14], context) < 0)
          {
            CFArrayExchangeValuesAtIndices(theArray, v14, v14 + 1);
          }

          ++v14;
          --v13;
        }

        while (v13);
      }

      --v12;
    }

    while (length-- > 2);
  }
}

void CFQSortArray(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43[8] = *MEMORY[0x1E69E9840];
  if (a2 < 2 || a3 < 1)
  {
    return;
  }

  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    v17 = CFLog(3, @"Unable to qsort array - count: %ld elementSize: %ld product overflows", a3, a4, a5, a6, a7, a8, a2);
    v40 = &unk_1EA849000;
    v41 = "qsort - count/elementSize overflow";
LABEL_23:
    v40[326] = v41;
    __break(1u);
    goto LABEL_24;
  }

  v11 = a3 * a2;
  if (__CFADD__(a1, a3 * a2))
  {
    v17 = CFLog(3, @"Unable to qsort array - list: %lu count: %ld elementSize: %ld - array access overflows", a3, a4, a5, a6, a7, a8, a1);
    v40 = &unk_1EA849000;
    v41 = "qsort - array access overflow";
    goto LABEL_23;
  }

  MEMORY[0x1EEE9AC00](a1, a2, a3);
  v15 = &v43[-1] - v14;
  v16 = &v43[-1] - v14;
  if (a2 > 0x1000)
  {
    v17 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
    v16 = v17;
    if (!v17)
    {
LABEL_24:
      CFQSortArray_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v42 = v15;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 0x40000000;
  v43[2] = __CFQSortArray_block_invoke;
  v43[3] = &__block_descriptor_tmp_14;
  v43[4] = a4;
  v43[5] = a1;
  v43[6] = a3;
  v43[7] = a5;
  CFSortIndexes(v16, a2, 0, v43);
  MEMORY[0x1EEE9AC00](v25, v26, v27);
  v35 = &v43[-1] - v34;
  v36 = &v43[-1] - v34;
  if (v37 < a2)
  {
    v36 = malloc_type_malloc(a3 * a2, 0x8B25C98DuLL);
  }

  if (__CFADD__(v36, v11))
  {
    v17 = CFLog(3, @"Unable to qsort array - list: %lu count: %ld elementSize: %ld array - store overflows", v28, v29, v30, v31, v32, v33, a1);
    v40 = &unk_1EA849000;
    v41 = "qsort - array storage overflow";
    goto LABEL_23;
  }

  v38 = 0;
  v39 = v36;
  do
  {
    if (a3 == 8)
    {
      *&v36[8 * v38] = a1[*&v16[8 * v38]];
    }

    else
    {
      memmove(v39, a1 + *&v16[8 * v38] * a3, a3);
    }

    ++v38;
    v39 += a3;
  }

  while (a2 != v38);
  memmove(a1, v36, a3 * a2);
  if (v35 != v36)
  {
    free(v36);
  }

  if (v42 != v16)
  {
    free(v16);
  }
}

uint64_t __CFRunLoopSourceComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  if (v2 < v3)
  {
    return -1;
  }

  if (v3 < v2)
  {
    return 1;
  }

  explicit = atomic_load_explicit((a1 + 88), memory_order_acquire);
  v6 = atomic_load_explicit((a2 + 88), memory_order_acquire);
  if (explicit < v6)
  {
    return -1;
  }

  else
  {
    return explicit > v6;
  }
}

CFDictionaryRef CFLocaleCreateComponentsFromLocaleIdentifier(CFAllocatorRef allocator, CFLocaleIdentifier localeID)
{
  v29 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(allocator, 10, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v25 = 0;
  if (localeID)
  {
    usedBufLen = 0;
    v30.length = CFStringGetLength(localeID);
    v30.location = 0;
    CFStringGetBytes(localeID, v30, 0x600u, 0x3Fu, 1u, buffer, 256, &usedBufLen);
    buffer[usedBufLen] = 0;
    Language = uloc_getLanguage();
    if (v25 <= 0 && Language >= 1)
    {
      v6 = CFStringCreateWithBytes(allocator, bytes, Language, 0x600u, 1u);
      CFDictionaryAddValue(Mutable, @"kCFLocaleLanguageCodeKey", v6);
      CFRelease(v6);
    }

    v25 = 0;
    Script = uloc_getScript();
    if (v25 <= 0 && Script >= 1)
    {
      v8 = CFStringCreateWithBytes(allocator, bytes, Script, 0x600u, 1u);
      CFDictionaryAddValue(Mutable, @"kCFLocaleScriptCodeKey", v8);
      CFRelease(v8);
    }

    v25 = 0;
    Country = uloc_getCountry();
    if (v25 <= 0 && Country >= 1)
    {
      v10 = CFStringCreateWithBytes(allocator, bytes, Country, 0x600u, 1u);
      CFDictionaryAddValue(Mutable, @"kCFLocaleCountryCodeKey", v10);
      CFRelease(v10);
    }

    v25 = 0;
    Variant = uloc_getVariant();
    if (v25 <= 0 && Variant >= 1)
    {
      v12 = CFStringCreateWithBytes(allocator, bytes, Variant, 0x600u, 1u);
      CFDictionaryAddValue(Mutable, @"kCFLocaleVariantCodeKey", v12);
      CFRelease(v12);
    }

    v25 = 0;
    uloc_openKeywords();
    v13 = uenum_next();
    if (v13 && v25 <= 0)
    {
      v14 = v13;
      while (1)
      {
        if (uloc_getKeywordValue() < 1 || v25 > 0)
        {
          goto LABEL_29;
        }

        v16 = strlen(v14);
        v17 = CFStringCreateWithBytes(allocator, v14, v16, 0x600u, 1u);
        v18 = strlen(__s);
        v19 = CFStringCreateWithBytes(allocator, __s, v18, 0x600u, 1u);
        v20 = v19;
        if (v17 && v19)
        {
          CFDictionaryAddValue(Mutable, v17, v19);
        }

        else if (!v17)
        {
          goto LABEL_27;
        }

        CFRelease(v17);
LABEL_27:
        if (v20)
        {
          CFRelease(v20);
        }

LABEL_29:
        v21 = uenum_next();
        if (v21)
        {
          v14 = v21;
          if (v25 < 1)
          {
            continue;
          }
        }

        break;
      }
    }

    uenum_close();
  }

  Copy = CFDictionaryCreateCopy(allocator, Mutable);
  CFRelease(Mutable);
  return Copy;
}

__CFData *_CFPropertyListCreateXMLData(CFAllocatorRef allocator, const __CFString *a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3 || (v7[0] = 1, v8 = 0u, v9 = 0, v7[1] = 100, Mutable = 0, __CFPropertyListIsValidAux(a2, v7)))
  {
    Mutable = CFDataCreateMutable(allocator, 0);
    CFDataAppendBytes(Mutable, "<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE ", 49);
    _plistAppendCharacters(Mutable, L"plist", 5);
    CFDataAppendBytes(Mutable, " PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<", 89);
    _plistAppendCharacters(Mutable, L"plist", 5);
    CFDataAppendBytes(Mutable, " version=1.0>\n", 16);
    _CFAppendXML0(a2, 0, Mutable);
    CFDataAppendBytes(Mutable, "</", 2);
    _plistAppendCharacters(Mutable, L"plist", 5);
    CFDataAppendBytes(Mutable, ">\n", 2);
  }

  return Mutable;
}

unint64_t *_CFMachPortCreateWithPort4(__objc2_class **a1, uint64_t name, unint64_t a3, __int128 *a4, _BYTE *a5, int a6)
{
  v10 = name;
  v55 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 1;
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (__CF_FORK_STATE)
  {
    return 0;
  }

  ptype = 0;
  v12 = mach_port_type(*MEMORY[0x1E69E9A60], v10, &ptype);
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = (ptype & 0x70000) == 0;
  }

  if (v14)
  {
    v15 = v12;
    v16 = ptype & 0xFFEFFFFF;
    v17 = _CFOSLog(v12, v13);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (v18)
      {
        *buf = 134218496;
        v50 = v10;
        v51 = 1024;
        v52 = v15;
        v53 = 2048;
        v54 = ptype;
        _os_log_error_impl(&dword_1830E6000, v17, OS_LOG_TYPE_ERROR, "*** CFMachPortCreateWithPort(): bad Mach port parameter (0x%lx) or unsupported mysterious kind of Mach port (%d, %ld)", buf, 0x1Cu);
      }
    }

    else if (v18)
    {
      _CFMachPortCreateWithPort4_cold_4();
    }

    return 0;
  }

  os_unfair_lock_lock(&__CFAllMachPortsLock);
  if (__CFAllMachPorts && (Count = CFArrayGetCount(__CFAllMachPorts), Count >= 1))
  {
    v24 = Count;
    v25 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(__CFAllMachPorts, v25);
      if (ValueAtIndex)
      {
        v27 = ValueAtIndex;
        if (*(ValueAtIndex + 5) == v10)
        {
          break;
        }
      }

      if (v24 == ++v25)
      {
        goto LABEL_22;
      }
    }

    CFRetain(ValueAtIndex);
    os_unfair_lock_unlock(&__CFAllMachPortsLock);
  }

  else
  {
LABEL_22:
    Instance = _CFRuntimeCreateInstance(a1, 0x24uLL, 104, 0, v19, v20, v21, v22);
    if (!Instance)
    {
      os_unfair_lock_unlock(&__CFAllMachPortsLock);
      v39 = _CFOSLog(v37, v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        _CFMachPortCreateWithPort4_cold_3(v39);
      }

      return 0;
    }

    v27 = Instance;
    *(Instance + 5) = v10;
    Instance[6] = a3;
    *(Instance + 24) = 0;
    if (a4)
    {
      v29 = *a4;
      v30 = a4[1];
      Instance[11] = *(a4 + 4);
      *(Instance + 9) = v30;
      *(Instance + 7) = v29;
      v31 = *(a4 + 1);
      v32 = *(a4 + 2);
      if (v32)
      {
        v31 = v32(v31);
        v32 = *(a4 + 2);
      }

      v33 = *(a4 + 3);
      v27[13] = v32;
      v27[14] = v33;
      v27[8] = v31;
      v27[9] = 0xAAAAAAAAAACCCAAALL;
      v27[10] = 0xAAAAAAAAAABBBAAALL;
    }

    *(v27 + 4) = 0;
    Mutable = __CFAllMachPorts;
    if (!__CFAllMachPorts)
    {
      Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      __CFAllMachPorts = Mutable;
    }

    CFArrayAppendValue(Mutable, v27);
    os_unfair_lock_unlock(&__CFAllMachPortsLock);
    if (a5)
    {
      *a5 = 0;
    }

    if (a6 && (ptype & 0x50000) != 0)
    {
      _cfmp_record_intent_to_invalidate(0, v10);
      if (_CFMachPortQueue_onceToken != -1)
      {
        _CFMachPortCreateWithPort4_cold_1();
      }

      v35 = dispatch_source_create(MEMORY[0x1E69E96E0], v10, 1uLL, _CFMachPortQueue___CFMachPortQueue);
      if (v35)
      {
        v36 = v35;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = ___CFMachPortCreateWithPort4_block_invoke;
        handler[3] = &unk_1E6D81B30;
        v47 = v10;
        handler[4] = v35;
        dispatch_source_set_cancel_handler(v35, handler);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = ___CFMachPortCreateWithPort4_block_invoke_2;
        v44[3] = &__block_descriptor_36_e5_v8__0l;
        v45 = v10;
        dispatch_source_set_event_handler(v36, v44);
        v27[3] = v36;
        dispatch_resume(v36);
      }
    }
  }

  IsValid = CFMachPortIsValid(v27);
  if (!IsValid)
  {
    v42 = _CFOSLog(IsValid, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      _CFMachPortCreateWithPort4_cold_2();
    }

    CFRelease(v27);
    return 0;
  }

  return v27;
}

void _plistAppendCharacters(CFMutableDataRef theData, _WORD *a2, uint64_t a3)
{
  v6 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3 - 1;
  v8 = a2 + 1;
  while (1)
  {
    v9 = 0;
    v10 = 0;
    if (a3 >= 1 && v6 >= -399)
    {
      v11 = v6 + 399;
      if (v7 < v6 + 399)
      {
        v11 = v7;
      }

      if (*a2 > 0x7Fu)
      {
        v9 = 0;
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v12 = *a2;
        while (1)
        {
          v13 = v9;
          bytes[v9] = v12;
          if (v11 == v9)
          {
            break;
          }

          v14 = v8[v9];
          v12 = v8[v9++];
          if (v14 > 0x7F)
          {
            goto LABEL_13;
          }
        }

        v9 = v11 + 1;
LABEL_13:
        v10 = v13 + 1;
      }
    }

    if (v9 > v6)
    {
      CFDataAppendBytes(theData, bytes, v10 - v6);
      v6 = v9;
    }

    if (a3 <= v6)
    {
      break;
    }

    if (a2[v6] >= 0x80u)
    {
      v15 = CFStringCreateWithCharactersNoCopy(&__kCFAllocatorSystemDefault, &a2[v6], a3 - v6, &__kCFAllocatorNull);
      if (v15)
      {
        v16 = v15;
        ExternalRepresentation = CFStringCreateExternalRepresentation(&__kCFAllocatorSystemDefault, v15, 0x8000100u, 0);
        if (ExternalRepresentation)
        {
          v18 = ExternalRepresentation;
          BytePtr = CFDataGetBytePtr(ExternalRepresentation);
          Length = CFDataGetLength(v18);
          CFDataAppendBytes(theData, BytePtr, Length);
          CFRelease(v18);
        }

        CFRelease(v16);
      }

      return;
    }
  }
}

void _CFAppendXML0(const __CFString *a1, unsigned int a2, __CFData *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a1);
  v7 = a2;
  if (a2)
  {
    v8 = a2;
    do
    {
      if (v8 >= 4)
      {
        v9 = 4;
      }

      else
      {
        v9 = v8;
      }

      _plistAppendCharacters(a3, _appendIndents_tabs, v9);
      v10 = v8 > 4;
      v8 -= 4;
    }

    while (v10);
  }

  if (v6 == 7)
  {
    CFDataAppendBytes(a3, "<", 1);
    _plistAppendCharacters(a3, L"string", 6);
    CFDataAppendBytes(a3, ">", 1);
    _appendEscapedString(a1, a3);
    CFDataAppendBytes(a3, "</", 2);
    v11 = a3;
    v12 = L"string";
    v13 = 6;
    goto LABEL_9;
  }

  if (_CFKeyedArchiverUIDGetTypeID() == v6)
  {
    CFDataAppendBytes(a3, "<", 1);
    _plistAppendCharacters(a3, L"dict", 4);
    CFDataAppendBytes(a3, ">\n", 2);
    v17 = a2 + 1;
    if (a2 == -1)
    {
      CFDataAppendBytes(a3, "<", 1);
      _plistAppendCharacters(a3, L"key", 3);
      CFDataAppendBytes(a3, ">", 1);
      _appendEscapedString(@"CF$UID", a3);
      CFDataAppendBytes(a3, "</", 2);
      _plistAppendCharacters(a3, L"key", 3);
      CFDataAppendBytes(a3, ">\n", 2);
    }

    else
    {
      v39 = a2 + 1;
      do
      {
        if (v39 >= 4)
        {
          v40 = 4;
        }

        else
        {
          v40 = v39;
        }

        _plistAppendCharacters(a3, _appendIndents_tabs, v40);
        v10 = v39 > 4;
        v39 -= 4;
      }

      while (v10);
      CFDataAppendBytes(a3, "<", 1);
      _plistAppendCharacters(a3, L"key", 3);
      CFDataAppendBytes(a3, ">", 1);
      _appendEscapedString(@"CF$UID", a3);
      CFDataAppendBytes(a3, "</", 2);
      _plistAppendCharacters(a3, L"key", 3);
      CFDataAppendBytes(a3, ">\n", 2);
      do
      {
        if (v17 >= 4)
        {
          v41 = 4;
        }

        else
        {
          v41 = v17;
        }

        _plistAppendCharacters(a3, _appendIndents_tabs, v41);
        v10 = v17 > 4;
        v17 -= 4;
      }

      while (v10);
    }

    CFDataAppendBytes(a3, "<", 1);
    _plistAppendCharacters(a3, L"integer", 7);
    CFDataAppendBytes(a3, ">", 1);
    *__s = _CFKeyedArchiverUIDGetValue(a1);
    v42 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt64Type, __s);
    _plistAppendFormat(a3, @"%@", v42);
    CFRelease(v42);
    CFDataAppendBytes(a3, "</", 2);
    _plistAppendCharacters(a3, L"integer", 7);
    CFDataAppendBytes(a3, ">\n", 2);
    if (a2)
    {
      do
      {
        if (v7 >= 4)
        {
          v43 = 4;
        }

        else
        {
          v43 = v7;
        }

        _plistAppendCharacters(a3, _appendIndents_tabs, v43);
        v10 = v7 > 4;
        v7 -= 4;
      }

      while (v10);
    }

    CFDataAppendBytes(a3, "</", 2);
    v44 = L"dict";
LABEL_59:
    _plistAppendCharacters(a3, v44, 4);
    CFDataAppendBytes(a3, ">\n", 2);
    return;
  }

  if (v6 > 20)
  {
    if (v6 != 21)
    {
      if (v6 == 22)
      {
        IsFloatType = CFNumberIsFloatType(a1);
        CFDataAppendBytes(a3, "<", 1);
        if (!IsFloatType)
        {
          _plistAppendCharacters(a3, L"integer", 7);
          CFDataAppendBytes(a3, ">", 1);
          _plistAppendFormat(a3, @"%@", a1);
          CFDataAppendBytes(a3, "</", 2);
          v11 = a3;
          v12 = L"integer";
          v13 = 7;
          goto LABEL_9;
        }

        _plistAppendCharacters(a3, L"real", 4);
        CFDataAppendBytes(a3, ">", 1);
        v64 = __CFNumberCopyFormattingDescriptionAsFloat64(a1);
        _plistAppendString(a3, v64);
        CFRelease(v64);
        CFDataAppendBytes(a3, "</", 2);
        v11 = a3;
        v12 = L"real";
      }

      else
      {
        if (v6 != 42)
        {
          return;
        }

        AbsoluteTime = CFDateGetAbsoluteTime(a1);
        GregorianDate = CFAbsoluteTimeGetGregorianDate(AbsoluteTime, 0);
        CFDataAppendBytes(a3, "<", 1);
        _plistAppendCharacters(a3, L"date", 4);
        CFDataAppendBytes(a3, ">", 1);
        _plistAppendFormat(a3, @"%04d-%02d-%02dT%02d:%02d:%02dZ", *&GregorianDate.year, ((*&GregorianDate.year >> 8) >> 24), ((*&GregorianDate.year >> 16) >> 24), ((*&GregorianDate.year >> 24) >> 24), (*&GregorianDate.month >> 24), GregorianDate.second);
        CFDataAppendBytes(a3, "</", 2);
        v11 = a3;
        v12 = L"date";
      }

      v13 = 4;
LABEL_9:
      _plistAppendCharacters(v11, v12, v13);
      v14 = ">\n";
      v15 = a3;
      v16 = 2;
LABEL_10:

      CFDataAppendBytes(v15, v14, v16);
      return;
    }

    Value = CFBooleanGetValue(a1);
    CFDataAppendBytes(a3, "<", 1);
    if (Value)
    {
      v56 = L"true";
      v57 = a3;
      v58 = 4;
    }

    else
    {
      v56 = L"false";
      v57 = a3;
      v58 = 5;
    }

    _plistAppendCharacters(v57, v56, v58);
    goto LABEL_87;
  }

  v80 = a2;
  if (v6 != 18)
  {
    if (v6 != 19)
    {
      if (v6 != 20)
      {
        return;
      }

      CFDataAppendBytes(a3, "<", 1);
      _plistAppendCharacters(a3, L"data", 4);
      CFDataAppendBytes(a3, ">\n", 2);
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      if (a2 >= 8uLL)
      {
        v20 = 8;
      }

      else
      {
        v20 = a2;
      }

      if (Length < 1)
      {
        goto LABEL_116;
      }

      v21 = Length;
      v22 = 0;
      v23 = 0;
      v81 = v20;
      v24 = 76 - 8 * v20;
      v25 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
      do
      {
        v26 = BytePtr;
        if (v23 % 3 == 2)
        {
          v28 = *BytePtr;
          v29 = v22 + 1;
          __s[v22] = v25[((v28 | (*(BytePtr - 1) << 8)) >> 6) & 0x3F];
          v27 = v28 & 0x3F;
          v30 = 2;
        }

        else
        {
          if (v23 % 3 == 1)
          {
            v27 = ((*BytePtr | (*(BytePtr - 1) << 8)) >> 4) & 0x3F;
          }

          else
          {
            v27 = *BytePtr >> 2;
          }

          v30 = 1;
          v29 = v22;
        }

        v22 += v30;
        __s[v29] = v25[v27];
        if (v22 >= v24)
        {
          v31 = v25;
          *&__s[v22] = 10;
          if (a2)
          {
            v32 = v81;
            do
            {
              if (v32 >= 4)
              {
                v33 = 4;
              }

              else
              {
                v33 = v32;
              }

              _plistAppendCharacters(a3, _appendIndents_tabs, v33);
              v10 = v32 > 4;
              v32 = (v32 - 4);
            }

            while (v10);
          }

          v34 = strlen(__s);
          CFDataAppendBytes(a3, __s, v34);
          v22 = 0;
          a2 = v80;
          v25 = v31;
        }

        ++v23;
        BytePtr = v26 + 1;
      }

      while (v23 != v21);
      if (v21 % 3 == 2)
      {
        v36 = v25[4 * (*v26 & 0xF)];
        v37 = 2;
        v38 = 1;
        v35 = v22;
      }

      else
      {
        if (v21 % 3 != 1)
        {
          goto LABEL_109;
        }

        v35 = v22 + 1;
        __s[v22] = v25[16 * (*v26 & 3)];
        v36 = 61;
        v37 = 3;
        v38 = 2;
      }

      v74 = v38 + v22;
      __s[v35] = v36;
      v22 += v37;
      __s[v74] = 61;
LABEL_109:
      v75 = v81;
      if (v22 >= 1)
      {
        *&__s[v22] = 10;
        if (a2)
        {
          do
          {
            if (v75 >= 4)
            {
              v76 = 4;
            }

            else
            {
              v76 = v75;
            }

            _plistAppendCharacters(a3, _appendIndents_tabs, v76);
            v10 = v75 > 4;
            v75 = (v75 - 4);
          }

          while (v10);
        }

        v77 = strlen(__s);
        CFDataAppendBytes(a3, __s, v77);
      }

LABEL_116:
      if (a2)
      {
        do
        {
          if (v7 >= 4)
          {
            v78 = 4;
          }

          else
          {
            v78 = v7;
          }

          _plistAppendCharacters(a3, _appendIndents_tabs, v78);
          v10 = v7 > 4;
          v7 -= 4;
        }

        while (v10);
      }

      CFDataAppendBytes(a3, "</", 2);
      v44 = L"data";
      goto LABEL_59;
    }

    Count = CFArrayGetCount(a1);
    CFDataAppendBytes(a3, "<", 1);
    _plistAppendCharacters(a3, L"array", 5);
    if (Count)
    {
      CFDataAppendBytes(a3, ">\n", 2);
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        _CFAppendXML0(ValueAtIndex, a2 + 1, a3);
      }

      if (a2)
      {
        do
        {
          if (v7 >= 4)
          {
            v62 = 4;
          }

          else
          {
            v62 = v7;
          }

          _plistAppendCharacters(a3, _appendIndents_tabs, v62);
          v10 = v7 > 4;
          v7 -= 4;
        }

        while (v10);
      }

      CFDataAppendBytes(a3, "</", 2);
      v12 = L"array";
      v11 = a3;
      v13 = 5;
      goto LABEL_9;
    }

LABEL_87:
    v14 = "/>\n";
    v15 = a3;
    v16 = 3;
    goto LABEL_10;
  }

  v47 = CFDictionaryGetCount(a1);
  CFDataAppendBytes(a3, "<", 1);
  _plistAppendCharacters(a3, L"dict", 4);
  if (!v47)
  {
    goto LABEL_87;
  }

  CFDataAppendBytes(a3, ">\n", 2);
  MEMORY[0x1EEE9AC00](v48, v49, v50);
  v53 = v79 - v52;
  if (v51 >= 0x200)
  {
    v54 = 512;
  }

  else
  {
    v54 = v51;
  }

  bzero(v79 - v52, v54);
  v79[1] = v79;
  if (v47 > 0x100)
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v47, 0xC0040B8AA526DuLL);
    if (!Typed)
    {
      _CFAppendXML0_cold_1();
    }

    v53 = Typed;
  }

  else
  {
    bzero(v53, 8 * v47);
  }

  CFDictionaryGetKeysAndValues(a1, v53, 0);
  v79[0] = &__kCFAllocatorSystemDefault;
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, v47, &kCFTypeArrayCallBacks);
  v85.location = 0;
  v85.length = 0;
  CFArrayReplaceValues(Mutable, v85, v53, v47);
  v86.location = 0;
  v86.length = v47;
  CFArraySortValues(Mutable, v86, CFStringCompare, 0);
  v87.location = 0;
  v87.length = v47;
  v81 = v53;
  CFArrayGetValues(Mutable, v87, v53);
  CFRelease(Mutable);
  v67 = 0;
  v68 = a2 + 1;
  do
  {
    v69 = v81[v67];
    if (v68)
    {
      v70 = v68;
      do
      {
        if (v70 >= 4)
        {
          v71 = 4;
        }

        else
        {
          v71 = v70;
        }

        _plistAppendCharacters(a3, _appendIndents_tabs, v71);
        v10 = v70 > 4;
        v70 -= 4;
      }

      while (v10);
    }

    CFDataAppendBytes(a3, "<", 1);
    _plistAppendCharacters(a3, L"key", 3);
    CFDataAppendBytes(a3, ">", 1);
    _appendEscapedString(v69, a3);
    CFDataAppendBytes(a3, "</", 2);
    _plistAppendCharacters(a3, L"key", 3);
    CFDataAppendBytes(a3, ">\n", 2);
    v72 = CFDictionaryGetValue(a1, v69);
    _CFAppendXML0(v72, v68, a3);
    ++v67;
  }

  while (v67 != v47);
  if (v47 >= 0x101)
  {
    CFAllocatorDeallocate(v79[0], v81);
  }

  if (v80)
  {
    do
    {
      if (v7 >= 4)
      {
        v73 = 4;
      }

      else
      {
        v73 = v7;
      }

      _plistAppendCharacters(a3, _appendIndents_tabs, v73);
      v10 = v7 > 4;
      v7 -= 4;
    }

    while (v10);
  }

  CFDataAppendBytes(a3, "</", 2);
  _plistAppendCharacters(a3, L"dict", 4);
  CFDataAppendBytes(a3, ">\n", 2);
}

void sub_18315630C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _appendEscapedString(const __CFString *a1, __CFData *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  theString = a1;
  v28 = 0;
  v29 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v26 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v30 = 0;
  v31 = 0;
  v27 = CStringPtr;
  if (Length >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 64;
    memset(v24, 0, sizeof(v24));
    while (1)
    {
      if (v8 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v8;
      }

      if (v26)
      {
        v12 = &v26[v28];
      }

      else
      {
        if (v27)
        {
          v13 = v27[v28 + v8];
          goto LABEL_13;
        }

        v17 = v30;
        if (v31 <= v8 || v30 > v8)
        {
          v19 = -v11;
          v20 = v11 + v7;
          v21 = v10 - v11;
          v22 = v8 + v19;
          v23 = v22 + 64;
          if (v22 + 64 >= v29)
          {
            v23 = v29;
          }

          v30 = v22;
          v31 = v23;
          if (v29 < v21)
          {
            v21 = v29;
          }

          v34.location = v22 + v28;
          v34.length = v21 + v20;
          CFStringGetCharacters(theString, v34, v24);
          v17 = v30;
        }

        v12 = v24 - v17;
      }

      v13 = v12[v8];
LABEL_13:
      if (v9 >= 62 && (v13 & 0xFC00) == 0xD800)
      {
        _plistAppendCharacters(a2, v32, v9);
        v9 = 0;
      }

      switch(v13)
      {
        case '&':
          if (v9)
          {
            _plistAppendCharacters(a2, v32, v9);
          }

          v14 = a2;
          v15 = "&amp;";
          v16 = 5;
          goto LABEL_29;
        case '>':
          if (v9)
          {
            _plistAppendCharacters(a2, v32, v9);
          }

          v14 = a2;
          v15 = "&gt;";
          goto LABEL_25;
        case '<':
          if (v9)
          {
            _plistAppendCharacters(a2, v32, v9);
          }

          v14 = a2;
          v15 = "&lt;";
LABEL_25:
          v16 = 4;
LABEL_29:
          CFDataAppendBytes(v14, v15, v16);
          goto LABEL_30;
      }

      v32[v9++] = v13;
      if (v9 != 64)
      {
        goto LABEL_31;
      }

      _plistAppendCharacters(a2, v32, 64);
LABEL_30:
      v9 = 0;
LABEL_31:
      ++v8;
      --v7;
      ++v10;
      if (Length == v8)
      {
        if (v9)
        {
          _plistAppendCharacters(a2, v32, v9);
        }

        return;
      }
    }
  }
}

CFDataRef _CFBundleCreateMappedOrLoadedPlistData(const __CFURL *a1, int a2, uint64_t a3, BOOL *a4, CFErrorRef *a5)
{
  v7 = a3;
  v10 = _CFBundleResourceURLIsSafeForMapping(a1);
  if (a2 && v10)
  {
    result = _CFBundleCreateMappedBPlistFile(a1, v7);
    *a4 = result != 0;
    if (result)
    {
      return result;
    }
  }

  else
  {
    *a4 = 0;
  }

  return _CFDataCreateFromURL(a1, a5);
}

void _plistAppendFormat(__CFData *a1, CFStringRef format, ...)
{
  va_start(va, format);
  v3 = CFStringCreateWithFormatAndArguments(&__kCFAllocatorSystemDefault, 0, format, va);
  _plistAppendString(a1, v3);
  CFRelease(v3);
}

void _cfmp_record_intent_to_invalidate(char a1, int a2)
{
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 8uLL, 0x1000040789AEA99uLL);
    if (!v4)
    {
      _cfmp_record_intent_to_invalidate_cold_2();
    }

    v5 = v4;
    *v4 = a2;
    *(v4 + 4) = a1;
    if (_cfmp_records_oGuard != -1)
    {
      _cfmp_record_intent_to_invalidate_cold_1();
    }

    v6 = _cfmp_records_oRecords;
    os_unfair_lock_lock(&_cfmp_records_lock);
    if (CFSetGetValue(v6, v5))
    {
      os_unfair_lock_unlock(&_cfmp_records_lock);

      free(v5);
    }

    else
    {
      CFSetAddValue(v6, v5);

      os_unfair_lock_unlock(&_cfmp_records_lock);
    }
  }
}

uint64_t _CFBundleResourceURLIsSafeForMapping(const __CFURL *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1026);
  if (result)
  {
    memset(&v3, 0, 512);
    return !statfs(buffer, &v3) && (v3.f_flags & 0x1200) == 4096;
  }

  return result;
}

CFMutableSetRef ___cfmp_records_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *byte_1EF0651D0;
  result = CFSetCreateMutable(0, 16, &v1);
  _cfmp_records_oRecords = result;
  return result;
}

CFStringRef __CFNumberCopyFormattingDescription(uint64_t number)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((number & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v1 = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~number & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ number;
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
    LOBYTE(v4) = atomic_load((number + 8));
  }

  if ((__CFNumberTypeTable[__CFNumberCanonicalTypes[v4 & 7]] & 0x20) != 0)
  {

    return __CFNumberCreateFormattingDescriptionAsFloat64(&__kCFAllocatorSystemDefault, number);
  }

  else
  {
    v6[0] = 0;
    v6[1] = 0;
    __CFNumberGetValue(number, 17, v6);
    emit128(v7, v6, 0);
    return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s", v7);
  }
}

uint64_t _cfmp_hash(uint64_t result)
{
  if (result)
  {
    return 2654435761 * (*(result + 4) | (*result << 8));
  }

  return result;
}

char *emit128(char *result, uint64_t *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 < 0)
  {
    v6 = v4 == 0;
    v4 = -v4;
    if (v6)
    {
      v3 = -v3;
    }

    else
    {
      v3 = ~v3;
    }

    v5 = 45;
    goto LABEL_8;
  }

  if (a3)
  {
    v5 = 43;
LABEL_8:
    *result++ = v5;
  }

  v7 = 0;
  v8 = 1;
  do
  {
    while (1)
    {
      v9 = 0;
      v10 = (&powersOf10 + 16 * v7);
      v11 = *v10;
      v12 = (&neg_powersOf10 + 16 * v7);
      while (v11 < v3 || v11 <= v3 && v10[1] <= v4)
      {
        v13 = v12[1];
        v3 += __CFADD__(v4, v13) + *v12;
        v4 += v13;
        ++v9;
      }

      if (v9 == 0 && (v8 & 1) != 0)
      {
        break;
      }

      v8 = 0;
      *result++ = v9 + 48;
      if (++v7 == 39)
      {
        goto LABEL_19;
      }
    }

    ++v7;
    v8 = 1;
  }

  while (v7 != 39);
  *result++ = 48;
LABEL_19:
  *result = 0;
  return result;
}

uint64_t _cfmp_deallocation_record_retain(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 5))
  {
    _cfmp_deallocation_record_retain_cold_1();
  }

  *(a2 + 5) |= 1u;
  return a2;
}

const __CFURL *_CFBundleGetFileVersionForStringsResourceURL(const __CFURL *result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = 0;
    result = CFURLCopyLastPathComponent(result);
    if (result)
    {
      v2 = result;
      cf = 0;
      ProductNameSuffix = _CFBundleGetProductNameSuffix(result, v1);
      PlatformNameSuffix = _CFBundleGetPlatformNameSuffix();
      _CFBundleSplitFileName(v2, &cf, 0, 0, ProductNameSuffix, PlatformNameSuffix, 2, &v6);
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v2);
      return v6;
    }
  }

  return result;
}

void _plistAppendString(__CFData *a1, CFStringRef theString)
{
  CharactersPtr = CFStringGetCharactersPtr(theString);
  if (CharactersPtr)
  {
    v5 = CharactersPtr;
    Length = CFStringGetLength(theString);

    _plistAppendCharacters(a1, v5, Length);
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    if (CStringPtr || (CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u)) != 0)
    {
      v8 = CStringPtr;
      v9 = strlen(CStringPtr);

      CFDataAppendBytes(a1, v8, v9);
    }

    else
    {
      ExternalRepresentation = CFStringCreateExternalRepresentation(&__kCFAllocatorSystemDefault, theString, 0x8000100u, 0);
      if (ExternalRepresentation)
      {
        v11 = ExternalRepresentation;
        BytePtr = CFDataGetBytePtr(ExternalRepresentation);
        v13 = CFDataGetLength(v11);
        CFDataAppendBytes(a1, BytePtr, v13);

        CFRelease(v11);
      }
    }
  }
}

void _CFBundleGetLocTableProvenanceForLanguage(const __CFData *a1, const __CFString *a2, _BYTE *a3, BOOL *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, @"LocProvenance");
  CFStringAppend(v17[0], @":");
  CFStringAppend(v17[0], a2);
  v8 = [[NSSet alloc] initWithObjects:v17 count:1];
  cf = 0;
  if (!_CFPropertyListCreateFiltered(0, a1, 0, v8, &cf, 0))
  {
    goto LABEL_10;
  }

  ValueWithKeyPath = _CFPropertyListGetValueWithKeyPath(cf, v17[0]);
  valuePtr = 0;
  if (ValueWithKeyPath && (v10 = ValueWithKeyPath, CFGetTypeID(ValueWithKeyPath) == 22) && CFNumberGetValue(v10, kCFNumberCharType, &valuePtr))
  {
    v11 = 0;
    v12 = valuePtr;
    *a3 = valuePtr & 1;
    *a4 = (v12 & 2) != 0;
  }

  else
  {
    v11 = CFEqual(a2, @"none") == 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
LABEL_10:
    v13 = _CFPropertyListCopyTopLevelKeys(&__kCFAllocatorSystemDefault, a1, 0, 0);
    if (v13)
    {
      v14 = v13;
      if (CFSetContainsValue(v13, a2))
      {
        *a3 = 1;
        *a4 = 1;
      }

      CFRelease(v14);
    }
  }

  CFRelease(v17[0]);
}

const void *_CFPropertyListGetValueWithKeyPath(const void *a1, const __CFString *cf)
{
  result = 0;
  if (a1 && cf)
  {
    if (CFGetTypeID(cf) == 19)
    {
      ArrayBySeparatingStrings = CFRetain(cf);
    }

    else
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(&__kCFAllocatorSystemDefault, cf, @":");
    }

    v6 = ArrayBySeparatingStrings;
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9 - 1);
        v11 = CFGetTypeID(a1);
        if (v11 == 19)
        {
          IntValue = CFStringGetIntValue(ValueAtIndex);
          Value = CFArrayGetValueAtIndex(a1, IntValue);
        }

        else
        {
          if (v11 != 18)
          {
            a1 = 0;
            break;
          }

          Value = CFDictionaryGetValue(a1, ValueAtIndex);
        }

        a1 = Value;
        if (v9 < v8)
        {
          ++v9;
          if (Value)
          {
            continue;
          }
        }

        break;
      }
    }

    CFRelease(v6);
    return a1;
  }

  return result;
}

void _CFBundleGetMostAppropriateLocTableDeviceAndPlatformSpecificVariants(CFDataRef theData, const __CFString *a2, void *a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = _CFPropertyListCopyTopLevelKeys(&__kCFAllocatorSystemDefault, theData, 0, 0);
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 5, &kCFTypeSetCallBacks);
  ProductNameSuffix = _CFBundleGetProductNameSuffix(Mutable, v12);
  PlatformNameSuffix = _CFBundleGetPlatformNameSuffix();
  Append3 = _CFStringCreateAppend3(a2, ProductNameSuffix, PlatformNameSuffix);
  v16 = _CFStringCreateAppend3(a2, PlatformNameSuffix, ProductNameSuffix);
  Append2 = _CFStringCreateAppend2(a2, PlatformNameSuffix);
  v18 = _CFStringCreateAppend2(a2, ProductNameSuffix);
  _CFBundleAddProvenanceKeyPathIfPresent(v10, Mutable, Append3);
  _CFBundleAddProvenanceKeyPathIfPresent(v10, Mutable, v16);
  _CFBundleAddProvenanceKeyPathIfPresent(v10, Mutable, Append2);
  _CFBundleAddProvenanceKeyPathIfPresent(v10, Mutable, v18);
  _CFBundleAddProvenanceKeyPathIfPresent(v10, Mutable, a2);
  if (CFSetGetCount(Mutable) < 1)
  {
    goto LABEL_9;
  }

  theDict = 0;
  Filtered = _CFPropertyListCreateFiltered(&__kCFAllocatorSystemDefault, theData, 0, Mutable, &theDict, 0);
  if (!theDict)
  {
    Filtered = 0;
  }

  if (Filtered == 1)
  {
    Value = CFDictionaryGetValue(theDict, @"LocProvenance");
    v21 = Value;
    if (Value && (v22 = CFDictionaryGetCount(Value), v22 == CFSetGetCount(Mutable)))
    {
      v23 = CFRetain(v21);
    }

    else
    {
      Count = CFSetGetCount(Mutable);
      v23 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      LOBYTE(valuePtr) = 3;
      v25 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt8Type, &valuePtr);
      Length = CFStringGetLength(@"LocProvenance");
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = ___CFBundleCopyLocTableProvenanceForDeviceAndPlatformVariants_block_invoke;
      v46 = &__block_descriptor_56_e13_v24__0r_v8_16l;
      v47 = Length + 1;
      v48 = v23;
      v49 = v25;
      CFSetApply(Mutable, &v43);
      CFRelease(v25);
    }

    CFRelease(theDict);
  }

  else
  {
LABEL_9:
    v23 = 0;
  }

  CFRelease(Append3);
  CFRelease(v16);
  CFRelease(Append2);
  CFRelease(v18);
  CFRelease(v10);
  CFRelease(Mutable);
  if (v23)
  {
    if (CFDictionaryGetCount(v23))
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      LODWORD(v46) = 0;
      theDict = 0;
      p_theDict = &theDict;
      v41 = 0x2020000000;
      v42 = 0;
      valuePtr = 0;
      p_valuePtr = &valuePtr;
      v37 = 0x2020000000;
      v38 = 0;
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 0;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = ___CFBundleGetMostAppropriateLocTableDeviceAndPlatformSpecificVariants_block_invoke;
      v30[3] = &unk_1E6DD15A0;
      v30[7] = &v31;
      v30[8] = v23;
      v30[4] = &v43;
      v30[5] = &theDict;
      v30[6] = &valuePtr;
      CFDictionaryApply(v23, v30);
      *a3 = p_theDict[3];
      *a4 = *(v44 + 24);
      *a5 = v32[3];
      *a6 = *(p_valuePtr + 6);
      CFRelease(v23);
      _Block_object_dispose(&v31, 8);
      _Block_object_dispose(&valuePtr, 8);
      _Block_object_dispose(&theDict, 8);
      _Block_object_dispose(&v43, 8);
    }

    else
    {
      *a3 = 0;
      *a5 = 0;
      *a4 = 0;
      *a6 = 0;
      CFRelease(v23);
    }
  }

  else
  {
LABEL_15:
    *a3 = 0;
    *a5 = 0;
    *a4 = 0;
    *a6 = 0;
  }
}

void sub_183157844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

Boolean CFMachPortIsValid(CFMachPortRef port)
{
  v6 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x24uLL, port))
  {
    return [(__CFMachPort *)port isValid];
  }

  if (*(port + 4))
  {
    return 0;
  }

  ptype = 0;
  v3 = mach_port_type(*MEMORY[0x1E69E9A60], *(port + 5), &ptype);
  return (ptype & 0x70000) != 0 && v3 == 0;
}

__CFString *_CFStringCreateAppend3(const __CFString *a1, const __CFString *a2, const __CFString *a3)
{
  Length = CFStringGetLength(a1);
  v7 = CFStringGetLength(a2) + Length;
  v8 = CFStringGetLength(a3);
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, v7 + v8, a1);
  CFStringAppend(MutableCopy, a2);
  CFStringAppend(MutableCopy, a3);
  return MutableCopy;
}

void CFMachPortSetInvalidationCallBack(CFMachPortRef port, CFMachPortInvalidationCallBack callout)
{
  v19 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(port);
  v4 = _CFGetNonObjCTypeID(port);
  if (v4 != 36)
  {
    _CFAssertMismatchedTypeID(0x24uLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    if (callout)
    {
      ptype = 0;
      if (mach_port_type(*MEMORY[0x1E69E9A60], *(port + 5), &ptype) || (ptype & 0x50000) == 0)
      {
        CFLog(3, @"*** WARNING: CFMachPortSetInvalidationCallBack() called on a CFMachPort with a Mach port (0x%x) which does not have any send rights.  This is not going to work.  Callback function: %p", v5, v6, v7, v8, v9, v10, *(port + 5));
      }
    }

    os_unfair_lock_lock(port + 24);
    if (callout && *(port + 4))
    {
      if (*(port + 4))
      {
        CFLog(4, @"CFMachPortSetInvalidationCallBack(): attempt to set invalidation callback (%p) on invalid CFMachPort (%p) thwarted", v11, v12, v13, v14, v15, v16, callout);
      }

      else
      {
        v17 = *(port + 8);
        os_unfair_lock_unlock(port + 24);
        (callout)(port, v17);
        os_unfair_lock_lock(port + 24);
      }
    }

    else
    {
      *(port + 4) = callout;
    }

    os_unfair_lock_unlock(port + 24);
  }
}

uint64_t _CFBundleGetProductNameSuffix(uint64_t a1, uint64_t a2)
{
  if (_CFBundleGetProductNameSuffix_onceToken != -1)
  {
    _CFBundleGetProductNameSuffix_cold_1();
  }

  return _CFBundleGetProductNameSuffix__cfBundlePlatformSuffix;
}

__CFString *_CFStringCreateAppend2(const __CFString *a1, const __CFString *a2)
{
  Length = CFStringGetLength(a1);
  v5 = CFStringGetLength(a2);
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, v5 + Length, a1);
  CFStringAppend(MutableCopy, a2);
  return MutableCopy;
}

void CFSetSetValue(CFMutableSetRef theSet, const void *value)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    [(__CFSet *)theSet setObject:value];
  }

  else
  {
    v10 = atomic_load(theSet + 1);
    if ((v10 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v4, v5, v6, v7, v8, v9, "void CFSetSetValue(CFMutableSetRef, const void *)");
    }

    CFBasicHashSetValue(theSet, value, value);
  }
}

void _CFBundleAddProvenanceKeyPathIfPresent(const __CFSet *a1, __CFSet *a2, const __CFString *value)
{
  if (CFSetContainsValue(a1, value))
  {
    Append3 = _CFStringCreateAppend3(@"LocProvenance", @":", value);
    CFSetAddValue(a2, Append3);

    CFRelease(Append3);
  }
}

uint64_t _CFCompareStringsWithLocale(UniChar *buffer, uint64_t a2, uint64_t a3, UniChar *a4, uint64_t a5, uint64_t a6, unint64_t a7, const __CFLocale *a8)
{
  v139 = *MEMORY[0x1E69E9840];
  v136 = 0;
  v135 = 0;
  if (!_CFCompareStringsWithLocale_alnumBMP)
  {
    _CFCompareStringsWithLocale_alnumBMP = CFUniCharGetBitmapPtrForPlane(0xAu, 0);
    _CFCompareStringsWithLocale_nonBaseBMP = CFUniCharGetBitmapPtrForPlane(8u, 0);
    _CFCompareStringsWithLocale_punctBMP = CFUniCharGetBitmapPtrForPlane(0xBu, 0);
    _CFCompareStringsWithLocale_controlBMP = CFUniCharGetBitmapPtrForPlane(0x6Cu, 0);
  }

  v15 = a2;
  if (a2 >= 1)
  {
    v15 = __extendLocationBackward(a2 - 1, buffer, _CFCompareStringsWithLocale_nonBaseBMP, _CFCompareStringsWithLocale_punctBMP);
  }

  v16 = a5;
  if (a5 >= 1)
  {
    v16 = __extendLocationBackward(a5 - 1, a4, _CFCompareStringsWithLocale_nonBaseBMP, _CFCompareStringsWithLocale_punctBMP);
  }

  v17 = _CFGetTSD(9);
  v119 = _CFGetTSD(8);
  v120 = v17;
  v121 = a8;
  v122 = buffer;
  __src = a4;
  if (v119 == a8)
  {
    v129 = 1;
    Collator = v17;
    if (v15 < 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  os_unfair_lock_lock_with_options();
  if (__CFDefaultCollatorLocale == a8)
  {
    v19 = 0;
    v133 = 1;
    goto LABEL_23;
  }

  v18 = CFLocaleCopyCurrent();
  v19 = v18;
  if (v18 == a8)
  {
    if (!a8 || (v20 = __CFDefaultCollatorLocale, __CFDefaultCollatorLocale == a8))
    {
      v133 = a8 == 0;
    }

    else
    {
      v21 = __CFDefaultCollatorsCount;
      if (__CFDefaultCollatorsCount >= 1)
      {
        do
        {
          __CFDefaultCollatorsCount = v21 - 1;
          ucol_close();
          v21 = __CFDefaultCollatorsCount;
        }

        while (__CFDefaultCollatorsCount > 0);
        v20 = __CFDefaultCollatorLocale;
      }

      if (v20)
      {
        CFRelease(v20);
      }

      v133 = 0;
      __CFDefaultCollatorLocale = CFRetain(v19);
    }

LABEL_23:
    if (__CFDefaultCollatorsCount <= 0)
    {
      os_unfair_lock_unlock(&__CFDefaultCollatorLock);
    }

    else
    {
      v22 = __CFDefaultCollators[--__CFDefaultCollatorsCount];
      os_unfair_lock_unlock(&__CFDefaultCollatorLock);
      Collator = v22;
      if (v22)
      {
        goto LABEL_28;
      }
    }

    Collator = __CFStringCreateCollator(v121);
LABEL_28:
    if (!v133)
    {
      CFRelease(v19);
    }

    a8 = v121;
    if (Collator)
    {
      v129 = 0;
      if (v15 < 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

  CFRelease(v18);
  os_unfair_lock_unlock(&__CFDefaultCollatorLock);
LABEL_33:
  Collator = __CFStringCreateCollator(a8);
  _CFSetTSD(17, 0, 0);
  v129 = 1;
  if (v15 < 0)
  {
    goto LABEL_35;
  }

LABEL_34:
  v23 = *(buffer + 20);
  if (v15 + a3 <= v23)
  {
    v25 = *(buffer + 17);
    if (v25)
    {
      p_dst = (v25 + 2 * *(buffer + 19) + 2 * v15);
      if (v16 < 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (a3 <= 64)
    {
      if (v15 + a3 > *(buffer + 22) || (v26 = *(buffer + 21), v15 < v26))
      {
        v27 = v15 + 64;
        if (v15 + 64 >= v23)
        {
          v27 = *(buffer + 20);
        }

        *(buffer + 21) = v15;
        *(buffer + 22) = v27;
        v28 = *(buffer + 18);
        v29.location = *(buffer + 19) + v15;
        v29.length = v27 - v15;
        if (v28)
        {
          v26 = v15;
          if (v29.length)
          {
            v30 = (v28 + v29.location);
            v31 = v15 - v27;
            v32 = buffer;
            do
            {
              v33 = *v30++;
              *v32++ = v33;
              v34 = __CFADD__(v31++, 1);
            }

            while (!v34);
            v26 = v15;
          }
        }

        else
        {
          CFStringGetCharacters(*(buffer + 16), v29, buffer);
          v26 = *(buffer + 21);
        }
      }

      p_dst = &buffer[v15 - v26];
      if (v16 < 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }
  }

LABEL_35:
  p_dst = 0;
  if (v16 < 0)
  {
    goto LABEL_54;
  }

LABEL_53:
  v35 = *(a4 + 20);
  if (v16 + a6 <= v35)
  {
    v105 = *(a4 + 17);
    if (v105)
    {
      Typed = (v105 + 2 * *(a4 + 19) + 2 * v16);
      if (!p_dst)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (a6 > 64)
      {
        goto LABEL_54;
      }

      if (v16 + a6 > *(a4 + 22) || (v106 = *(a4 + 21), v16 < v106))
      {
        v107 = v16 + 64;
        if (v16 + 64 >= v35)
        {
          v107 = *(a4 + 20);
        }

        *(a4 + 21) = v16;
        *(a4 + 22) = v107;
        v108 = *(a4 + 18);
        v109.location = *(a4 + 19) + v16;
        v109.length = v107 - v16;
        if (v108)
        {
          v106 = v16;
          if (v109.length)
          {
            v110 = (v108 + v109.location);
            v111 = v16 - v107;
            v112 = a4;
            do
            {
              v113 = *v110++;
              *v112++ = v113;
              v34 = __CFADD__(v111++, 1);
            }

            while (!v34);
            v106 = v16;
          }
        }

        else
        {
          CFStringGetCharacters(*(a4 + 16), v109, a4);
          v106 = *(a4 + 21);
        }
      }

      Typed = &a4[v16 - v106];
      if (!p_dst)
      {
        goto LABEL_55;
      }
    }

    if (Typed)
    {
      v114 = a2 + a3 - v15;
      v115 = a5 + a6 - v16;
      v101 = Collator;
      if (Collator && !__CompareTextDefault(Collator, v129, a7, p_dst, v114, Typed, v115, &v135, &v136))
      {
        v117 = (a7 >> 9) & 1;
        if (!v135)
        {
          LODWORD(v117) = 1;
        }

        v118 = 1;
        if (v136 < 0)
        {
          v118 = -1;
        }

        if (v117)
        {
          v98 = v118;
        }

        else
        {
          v98 = 0;
        }
      }

      else
      {
        if (v114 >= v115)
        {
          v116 = v115;
        }

        else
        {
          v116 = v114;
        }

        if (memcmp(p_dst, Typed, 2 * v116) >= 0)
        {
          v98 = 1;
        }

        else
        {
          v98 = -1;
        }
      }

      v100 = v120;
      v99 = v121;
      goto LABEL_184;
    }

    goto LABEL_55;
  }

LABEL_54:
  Typed = 0;
LABEL_55:
  v123 = 0;
  v124 = 0;
  ptr = 0;
  v127 = 0;
  v125 = 0;
  v37 = a2 + a3;
  v38 = a5 + a6;
  v131 = a2 + a3;
  v134 = a5 + a6;
  do
  {
    if (a2 >= v37)
    {
      goto LABEL_99;
    }

    v39 = __extendLocationForward(a2, buffer, _CFCompareStringsWithLocale_alnumBMP, _CFCompareStringsWithLocale_punctBMP, _CFCompareStringsWithLocale_controlBMP, v37);
    a2 = v39;
    a3 = v39 - v15;
    if (v15 < 0)
    {
      goto LABEL_59;
    }

    v40 = *(buffer + 20);
    if (v39 > v40)
    {
      goto LABEL_59;
    }

    v42 = *(buffer + 17);
    if (!v42)
    {
      if (a3 <= 64)
      {
        if (v39 > *(buffer + 22) || (v43 = *(buffer + 21), v15 < v43))
        {
          v44 = v15 + 64;
          if (v15 + 64 >= v40)
          {
            v44 = *(buffer + 20);
          }

          *(buffer + 21) = v15;
          *(buffer + 22) = v44;
          v45 = *(buffer + 18);
          v46.location = *(buffer + 19) + v15;
          v46.length = v44 - v15;
          if (v45)
          {
            v43 = v15;
            if (v46.length)
            {
              v47 = (v45 + v46.location);
              v48 = v15 - v44;
              v49 = buffer;
              do
              {
                v50 = *v47++;
                *v49++ = v50;
                v34 = __CFADD__(v48++, 1);
              }

              while (!v34);
              v43 = v15;
            }
          }

          else
          {
            CFStringGetCharacters(*(buffer + 16), v46, buffer);
            v43 = *(buffer + 21);
          }
        }

        p_dst = &buffer[v15 - v43];
        goto LABEL_98;
      }

LABEL_59:
      if (a3 < 129)
      {
        p_dst = &__dst;
      }

      else if (v124 >= a3)
      {
        p_dst = ptr;
      }

      else
      {
        v41 = (a3 & 0x7FFFFFFFFFFFFF80) + 128;
        if (v124)
        {
          p_dst = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, ptr, 2 * v41, -1107623837, 0);
        }

        else
        {
          p_dst = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 2 * v41, 0x1000040BDFB0063uLL);
          if (!p_dst)
          {
            __CFStringHandleOutOfMemory();
          }
        }

        v124 = (a3 & 0x7FFFFFFFFFFFFF80) + 128;
        a4 = __src;
      }

      v51 = *(buffer + 17);
      if (v51)
      {
        memmove(p_dst, (v51 + 2 * *(buffer + 19) + 2 * v15), 2 * a3);
        ptr = p_dst;
      }

      else
      {
        v52 = *(buffer + 21);
        if (v15 < v52 || (v53 = *(buffer + 22), v54 = v53 <= v15, v55 = v53 - v15, v54))
        {
          v57 = p_dst;
          v58 = v15;
          v59 = a3;
          if (a2 > v52)
          {
            v57 = p_dst;
            v58 = v15;
            v59 = a3;
            if (a2 < *(buffer + 22))
            {
              v59 = v52 - v15;
              memmove(&p_dst[v52 - v15], buffer, 2 * (a2 - v52));
              v57 = p_dst;
              v58 = v15;
            }
          }
        }

        else
        {
          if (a3 >= v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = a3;
          }

          memmove(p_dst, &buffer[v15 - v52], 2 * v56);
          v57 = &p_dst[v56];
          v58 = v56 + v15;
          v59 = a3 - v56;
        }

        if (v59 >= 1)
        {
          v60 = *(buffer + 18);
          v61.location = *(buffer + 19) + v58;
          if (v60)
          {
            v62 = (v60 + v61.location);
            do
            {
              v63 = *v62++;
              *v57++ = v63;
              --v59;
            }

            while (v59);
          }

          else
          {
            v61.length = v59;
            CFStringGetCharacters(*(buffer + 16), v61, v57);
          }
        }

        ptr = p_dst;
        a4 = __src;
      }

      goto LABEL_98;
    }

    p_dst = (v42 + 2 * *(buffer + 19) + 2 * v15);
LABEL_98:
    v38 = v134;
LABEL_99:
    if (a5 < v38)
    {
      v64 = __extendLocationForward(a5, a4, _CFCompareStringsWithLocale_alnumBMP, _CFCompareStringsWithLocale_punctBMP, _CFCompareStringsWithLocale_controlBMP, v38);
      a5 = v64;
      a6 = v64 - v16;
      if (v16 < 0 || (v65 = *(a4 + 20), v64 > v65))
      {
LABEL_102:
        if (a6 < 129)
        {
          Typed = &v137;
        }

        else if (v125 >= a6)
        {
          Typed = v127;
        }

        else
        {
          v66 = (a6 & 0x7FFFFFFFFFFFFF80) + 128;
          if (v125)
          {
            Typed = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, v127, 2 * v66, -1107623837, 0);
          }

          else
          {
            Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 2 * v66, 0x1000040BDFB0063uLL);
            if (!Typed)
            {
              __CFStringHandleOutOfMemory();
            }
          }

          v125 = (a6 & 0x7FFFFFFFFFFFFF80) + 128;
          a4 = __src;
        }

        v76 = *(a4 + 17);
        if (v76)
        {
          memmove(Typed, (v76 + 2 * *(a4 + 19) + 2 * v16), 2 * a6);
          v127 = Typed;
          goto LABEL_141;
        }

        v77 = *(a4 + 21);
        v78 = v16 - v77;
        if (v16 < v77 || (v79 = *(a4 + 22), v54 = v79 <= v16, v80 = v79 - v16, v54))
        {
          v83 = Typed;
          v84 = v16;
          v85 = a6;
          if (a5 > v77)
          {
            v83 = Typed;
            v84 = v16;
            v85 = a6;
            if (a5 < *(__src + 22))
            {
              v85 = v77 - v16;
              memmove(&Typed[v77 - v16], __src, 2 * (a5 - v77));
              v83 = Typed;
              v84 = v16;
            }
          }
        }

        else
        {
          v81 = a4;
          if (a6 >= v80)
          {
            v82 = v80;
          }

          else
          {
            v82 = a6;
          }

          memmove(Typed, &v81[v78], 2 * v82);
          v83 = &Typed[v82];
          v84 = v82 + v16;
          v85 = a6 - v82;
        }

        if (v85 >= 1)
        {
          v86 = *(__src + 18);
          v87.location = *(__src + 19) + v84;
          if (!v86)
          {
            v87.length = v85;
            CFStringGetCharacters(*(__src + 16), v87, v83);
            v127 = Typed;
            a4 = __src;
            goto LABEL_140;
          }

          v88 = (v86 + v87.location);
          do
          {
            v89 = *v88++;
            *v83++ = v89;
            --v85;
          }

          while (v85);
        }

        v127 = Typed;
        a4 = __src;
LABEL_140:
        buffer = v122;
        goto LABEL_141;
      }

      v67 = *(a4 + 17);
      if (v67)
      {
        Typed = (v67 + 2 * *(a4 + 19) + 2 * v16);
      }

      else
      {
        if (a6 > 64)
        {
          goto LABEL_102;
        }

        if (v64 > *(a4 + 22) || (v68 = *(a4 + 21), v16 < v68))
        {
          v69 = v16 + 64;
          if (v16 + 64 >= v65)
          {
            v69 = *(a4 + 20);
          }

          *(a4 + 21) = v16;
          *(a4 + 22) = v69;
          v70 = *(a4 + 18);
          v71.location = *(a4 + 19) + v16;
          v71.length = v69 - v16;
          if (v70)
          {
            v68 = v16;
            if (v71.length)
            {
              v72 = (v70 + v71.location);
              v73 = v16 - v69;
              v74 = a4;
              do
              {
                v75 = *v72++;
                *v74++ = v75;
                v34 = __CFADD__(v73++, 1);
              }

              while (!v34);
              v68 = v16;
            }
          }

          else
          {
            CFStringGetCharacters(*(a4 + 16), v71, a4);
            v68 = *(a4 + 21);
          }
        }

        Typed = &a4[v16 - v68];
      }
    }

LABEL_141:
    if (Collator && !__CompareTextDefault(Collator, v129, a7, p_dst, a3, Typed, a6, &v135, &v136))
    {
      v92 = v136;
      if (v135)
      {
        v93 = v123;
        v37 = v131;
        v94 = 1;
        if (v136 < 0)
        {
          v94 = -1;
        }

        if (((v136 != 0) & (a7 >> 9) & (v123 == 0)) != 0)
        {
          v93 = v94;
        }

        v123 = v93;
        v136 = 0;
        v92 = 0;
        v38 = v134;
        goto LABEL_164;
      }
    }

    else
    {
      if (!p_dst || !Typed)
      {
        _CFCompareStringsWithLocale_cold_1();
      }

      if (a3 >= a6)
      {
        v90 = a6;
      }

      else
      {
        v90 = a3;
      }

      v91 = memcmp(p_dst, Typed, 2 * v90);
      v136 = v91;
      if (!v91)
      {
        v37 = v131;
        v38 = v134;
        if (a3 < a6)
        {
          v136 = -2;
          v98 = -1;
          goto LABEL_180;
        }

        if (a6 < a3)
        {
          v136 = 2;
          v98 = 1;
          goto LABEL_180;
        }

        v92 = 0;
        goto LABEL_164;
      }

      if (v91 < 0)
      {
        v92 = v91 - 1;
      }

      else
      {
        v92 = v91 + 1;
      }

      v136 = v92;
    }

    v37 = v131;
    v38 = v134;
    if ((v92 - 2) < 0xFFFFFFFD)
    {
      break;
    }

LABEL_164:
    if (!v92)
    {
      v15 = a2;
      v16 = a5;
    }
  }

  while (a2 < v37 || a5 < v38);
  v95 = v92 == 0;
  v96 = v92 < 0;
  v97 = 1;
  if (v96)
  {
    v97 = -1;
  }

  if (v95)
  {
    v98 = v123;
  }

  else
  {
    v98 = v97;
  }

LABEL_180:
  v100 = v120;
  v99 = v121;
  v101 = Collator;
  if (v124 >= 1)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
  }

  if (v125 >= 1)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v127);
  }

LABEL_184:
  if (v101 != v100)
  {
    if (v119)
    {
      v102 = _CFGetTSD(9);
      __collatorFinalize(v102);
    }

    _CFSetTSD(9, v101, __collatorFinalize);
    v103 = CFRetain(v99);
    _CFSetTSD(8, v103, 0);
  }

  _CFSetTSD(17, a7, 0);
  return v98;
}