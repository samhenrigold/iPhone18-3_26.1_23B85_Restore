uint64_t DDScannerCreate(uint64_t a1, unint64_t a2, CFErrorRef *a3)
{
  v4 = DDScannerCreateWithTypeAndLocale(a1, 0, a3);
  v5 = v4;
  if (v4)
  {
    DDScannerSetOptions(v4, a2);
  }

  return v5;
}

uint64_t DDScannerCreateWithTypeAndLocale(uint64_t a1, const __CFLocale *a2, CFErrorRef *a3)
{
  v5 = a1;
  v27 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  memset(&v23, 0, sizeof(v23));
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.datadetectorscore");
  if (!BundleWithIdentifier)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v8 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v9 = "Couldn't find bundle with identifier com.apple.datadetectorscore. It's either not here or you ran out of file descriptors.";
LABEL_33:
    v15 = v8;
    v16 = 2;
LABEL_34:
    _os_log_error_impl(&dword_1BCFDD000, v15, OS_LOG_TYPE_ERROR, v9, buf, v16);
    goto LABEL_40;
  }

  v7 = BundleWithIdentifier;
  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    if (v5 != 1)
    {
LABEL_29:
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v8 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 0;
      v9 = "Unknown cache type in _pathToSystemCacheFile";
      goto LABEL_33;
    }

    v10 = @"com.apple.datadetectorscore.cache.urlifier";
  }

  else
  {
    switch(v5)
    {
      case 4:
        v10 = @"com.apple.datadetectorscore.cache.replies";
        break;
      case 3:
        v10 = @"com.apple.datadetectorscore.cache.test";
        break;
      case 2:
LABEL_14:
        v11 = _copyCacheFileBaseName(v5, a2);
        if (!v11)
        {
          goto LABEL_16;
        }

        v12 = v11;
        v13 = CFBundleCopyResourceURLForLocalization(v7, v11, @"system", 0, 0);
        CFAutorelease(v12);
        if (!v13)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      default:
        goto LABEL_29;
    }
  }

  v13 = CFBundleCopyResourceURLForLocalization(BundleWithIdentifier, v10, @"system", 0, 0);
  v12 = 0;
  if (!v13)
  {
LABEL_16:
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v8 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v9 = "CFBundleCopyResourceURL failed";
    goto LABEL_33;
  }

LABEL_23:
  if (!CFURLGetFileSystemRepresentation(v13, 1u, buffer, 1025))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v17 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BCFDD000, v17, OS_LOG_TYPE_ERROR, "CFURLGetFileSystemRepresentation failed", buf, 2u);
    }

    CFRelease(v13);
    goto LABEL_40;
  }

  CFRelease(v13);
  if (stat(buffer, &v23) || (v20 = DDCacheCreateFromFileAtPathWithExtraChecks(buffer, v12, v23.st_size, 0)) == 0)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v14 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 136315138;
    v25 = buffer;
    v9 = "Could not load system cache %s";
    v15 = v14;
    v16 = 12;
    goto LABEL_34;
  }

  v21 = v20;
  if (v5)
  {
    v22 = 0;
  }

  else
  {
    v22 = CFStringCompare(v20[10], @"com.apple.datadetectorscore.cache.full.india", 0) == kCFCompareEqualTo;
  }

  v18 = DDScannerCreateFromCacheSupportingMLScan(v21, v22);
  CFRelease(v21);
  if (v18)
  {
    *(v18 + 224) = 0;
    goto LABEL_44;
  }

LABEL_40:
  if (a3 && !*a3)
  {
    v18 = 0;
    *a3 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E640], 22, 0);
  }

  else
  {
    v18 = 0;
  }

LABEL_44:
  kdebug_trace();
  return v18;
}

const void *_copyCacheFileBaseName(int a1, const __CFLocale *a2)
{
  v77[1] = *MEMORY[0x1E69E9840];
  v76 = 0;
  v77[0] = 0;
  v4 = CFLocaleCopyPreferredLanguages();
  v5 = v4;
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v8 = !_appendLocale(v77, &v76, ValueAtIndex);
      if (!a2)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  else
  {
    Count = 0;
  }

  v8 = 1;
  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v8)
  {
    Value = CFLocaleGetValue(a2, *MEMORY[0x1E695E6D0]);
    v10 = Value;
    if (Value)
    {
      LanguageCodeFromCountryCode = _createLanguageCodeFromCountryCode(Value);
      if (LanguageCodeFromCountryCode)
      {
        v12 = LanguageCodeFromCountryCode;
        appended = _appendLocale(v77, &v76, LanguageCodeFromCountryCode);
        CFRelease(v12);
        if (appended)
        {
          goto LABEL_38;
        }
      }
    }

    v14 = CFLocaleGetValue(a2, *MEMORY[0x1E695E6F0]);
    if (v10)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      _appendLocale(v77, &v76, v14);
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v8)
  {
    goto LABEL_38;
  }

LABEL_17:
  v16 = CPPhoneNumberCopyHomeCountryCode();
  if (!v16)
  {
LABEL_22:
    v21 = CFLocaleCopyCurrent();
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = v21;
    v23 = CFLocaleGetValue(v21, *MEMORY[0x1E695E6D0]);
    v24 = v23;
    if (v23 && (v25 = _createLanguageCodeFromCountryCode(v23)) != 0 && (v26 = v25, v27 = _appendLocale(v77, &v76, v25), CFRelease(v26), v27))
    {
      v28 = 0;
    }

    else
    {
      v29 = CFLocaleGetValue(v22, *MEMORY[0x1E695E6F0]);
      v28 = 1;
      if (v24 && v29)
      {
        _appendLocale(v77, &v76, v29);
      }
    }

    CFRelease(v22);
    if (v28)
    {
LABEL_31:
      if (Count >= 2)
      {
        v30 = 2;
        do
        {
          v31 = CFArrayGetValueAtIndex(v5, v30 - 1);
        }

        while (!_appendLocale(v77, &v76, v31) && Count > v30++);
      }
    }

    goto LABEL_38;
  }

  v17 = v16;
  v18 = _createLanguageCodeFromCountryCode(v16);
  if (!v18)
  {
    CFRelease(v17);
    goto LABEL_22;
  }

  v19 = v18;
  v20 = _appendLocale(v77, &v76, v18);
  CFRelease(v19);
  CFRelease(v17);
  if (!v20)
  {
    goto LABEL_22;
  }

LABEL_38:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v77[0] && CFStringGetLength(v77[0]) >= 3)
  {
    v33 = v77[0];
    v78.location = 0;
    v78.length = 2;
    v77[0] = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v77[0], v78);
    CFRelease(v33);
  }

  Length = v76;
  if (v76)
  {
    Length = CFStringGetLength(v76);
    if (Length >= 3)
    {
      v35 = v76;
      v79.location = 0;
      v79.length = 2;
      v76 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v76, v79);
      CFRelease(v35);
    }
  }

  if (a1 == 2)
  {
    v36 = 2;
  }

  else
  {
    v36 = 6;
  }

  if (a1 == 2)
  {
    v37 = calendarBasenames;
  }

  else
  {
    v37 = fullBasenames;
  }

  MEMORY[0x1EEE9AC00](Length);
  v39 = &v75[-v38];
  strcpy(&v75[4], "xx");
  strcpy(v75, "xx");
  if (v77[0] && CFStringGetLength(v77[0]) == 2)
  {
    CFStringGetCString(v77[0], &v75[4], 3, 0x8000100u);
  }

  v40 = v76;
  if (v76)
  {
    v41 = CFStringGetLength(v76);
    v40 = v76;
    if (v41 == 2)
    {
      CFStringGetCString(v76, v75, 3, 0x8000100u);
      v40 = v76;
    }
  }

  v42 = 0;
  v43 = v77[0];
  v44 = v75[4];
  v45 = v75[5];
  v46 = v75[0];
  v47 = v75[1];
  v48 = "esptenfrca                    svpldanlnonbnnfiesptitdeenfr  rupldeenukhuhrsrslroskcskkbgltenhi                          msthkojazhenidvihi            hetrarelitdeesenfr            ";
  v49 = "sptenfrca                    svpldanlnonbnnfiesptitdeenfr  rupldeenukhuhrsrslroskcskkbgltenhi                          msthkojazhenidvihi            hetrarelitdeesenfr            ";
  v50 = &byte_1BD018C59;
  do
  {
    if (a1 == 2)
    {
      if (!v43)
      {
        v54 = 0;
        if (!v40)
        {
          goto LABEL_99;
        }

LABEL_82:
        v59 = 0;
        v60 = 1;
        v61 = v50;
        do
        {
          if (*(v61 - 1) == v46 && *v61 == v47)
          {
            break;
          }

          v60 = v59 < 0x20;
          v61 += 2;
          ++v59;
        }

        while (v59 != 33);
        v54 |= v60;
        goto LABEL_99;
      }

      v51 = 0;
      v52 = 1;
      v53 = v50;
      do
      {
        if (*(v53 - 1) == v44 && *v53 == v45)
        {
          break;
        }

        v52 = v51 < 0x20;
        v53 += 2;
        ++v51;
      }

      while (v51 != 33);
      if (v52)
      {
        v54 = 2;
      }

      else
      {
        v54 = 0;
      }

      if (v40)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (!v43)
      {
LABEL_79:
        v54 = 0;
        if (!v40)
        {
          goto LABEL_99;
        }

LABEL_88:
        v62 = 0;
        while (1)
        {
          v63 = v48[v62];
          if (v63 == v46 && v49[v62] == v47)
          {
            break;
          }

          v64 = v63 == 32 || v62 == 28;
          v62 += 2;
          if (v64)
          {
            v65 = 0;
            goto LABEL_98;
          }
        }

        v65 = 1;
LABEL_98:
        v54 |= v65;
        goto LABEL_99;
      }

      v55 = v49;
      v56 = 14;
      while (1)
      {
        v57 = *(v55 - 1);
        if (v57 == v44 && *v55 == v45)
        {
          break;
        }

        v58 = v57 == 32 || v56-- == 0;
        v55 += 2;
        if (v58)
        {
          goto LABEL_79;
        }
      }

      v54 = 2;
      if (v40)
      {
        goto LABEL_88;
      }
    }

LABEL_99:
    *&v39[4 * v42++] = v54;
    v49 += 30;
    v48 += 30;
    v50 += 66;
  }

  while (v42 != v36);
  if (v43)
  {
    CFRelease(v43);
    v40 = v76;
  }

  if (v40)
  {
    CFRelease(v40);
  }

  v68 = *v37;
  v67 = (v37 + 1);
  v66 = v68;
  LODWORD(v68) = *v39;
  v70 = (v39 + 4);
  v69 = v68;
  v71 = v36 - 1;
  do
  {
    v73 = *v70++;
    v72 = v73;
    if (v73 > v69)
    {
      v66 = *v67;
      v69 = v72;
    }

    ++v67;
    --v71;
  }

  while (v71);
  if (v66)
  {
    CFRetain(v66);
  }

  return v66;
}

BOOL _appendLocale(CFStringRef *a1, CFTypeRef *a2, CFStringRef theString)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v6 = theString;
  if (!theString || CFStringHasPrefix(theString, @"en"))
  {
    return *a2 != 0;
  }

  if (CFStringHasPrefix(v6, @"yue"))
  {
    v6 = @"zh";
  }

  else
  {
    location = CFStringFind(v6, @"-", 0).location;
    if (location >= 2)
    {
      v13.length = location;
      v13.location = 0;
      v8 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v6, v13);
      v9 = v8 == 0;
      if (v8)
      {
        v6 = v8;
      }

      goto LABEL_14;
    }
  }

  v9 = 1;
LABEL_14:
  v10 = *a1;
  if (*a1)
  {
    if (CFStringGetLength(*a1) >= 2 && CFStringGetLength(v6) >= 2 && (CharacterAtIndex = CFStringGetCharacterAtIndex(v10, 0), CharacterAtIndex == CFStringGetCharacterAtIndex(v6, 0)) && (v12 = CFStringGetCharacterAtIndex(v10, 1), v12 == CFStringGetCharacterAtIndex(v6, 1)))
    {
      if (!v9)
      {
        CFRelease(v6);
      }

      return 0;
    }

    else
    {
      if (*a2)
      {
        CFRelease(*a2);
      }

      if (v9)
      {
        CFRetain(v6);
      }

      *a2 = v6;
      return 1;
    }
  }

  else
  {
    if (v9)
    {
      CFRetain(v6);
    }

    result = 0;
    *a1 = v6;
  }

  return result;
}

CFTypeRef _createLanguageCodeFromCountryCode(CFStringRef theString)
{
  v1 = *MEMORY[0x1E695E480];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 2, theString);
  CFStringUppercase(MutableCopy, 0);
  if (!MutableCopy)
  {
    return 0;
  }

  v3 = CFDictionaryCreate(v1, &_createLanguageCodeFromCountryCode_rawCC, &_createLanguageCodeFromCountryCode_rawLC, 223, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, MutableCopy);
    if (Value)
    {
      v6 = CFRetain(Value);
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(MutableCopy);
  return v6;
}

void *DDmmap(const char *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = open(a1, 0);
  if (v4 == -1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v6 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v8 = __error();
      v9 = strerror(*v8);
      v10 = 136315138;
      v11 = v9;
      _os_log_error_impl(&dword_1BCFDD000, v6, OS_LOG_TYPE_ERROR, "DDCache: could not open file descriptor to mmap cache file. Error %s", &v10, 0xCu);
    }

    return 0;
  }

  else
  {
    v5 = v4;
    if (a2)
    {
      a2 = _DDmmap(a1, v4, a2);
    }

    close(v5);
  }

  return a2;
}

void *_DDmmap(uint64_t a1, int a2, size_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(&v19, 0, 512);
  if (fstatfs(a2, &v19))
  {
    return 0;
  }

  if ((v19.f_flags & 0x1000) == 0)
  {
    v8 = getenv("CI_XCODE_CLOUD");
    if (!v8 || !strncmp(v8, "TRUE", 5uLL))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___DDmmap_block_invoke;
      block[3] = &__block_descriptor_tmp_2012;
      block[4] = a1;
      if (_DDmmap_sOnce == -1)
      {
        return 0;
      }

      dispatch_once(&_DDmmap_sOnce, block);
      return 0;
    }
  }

  v9 = mmap(0, a3, 1, 2, a2, 0);
  if (v9 == -1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v13 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 136315138;
      v18 = v15;
      _os_log_error_impl(&dword_1BCFDD000, v13, OS_LOG_TYPE_ERROR, "DDCache: mmap failed with error %s", buf, 0xCu);
    }

    return 0;
  }

  v6 = v9;
  if (madvise(v9, a3, 1))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v10 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 136315138;
      v18 = v12;
      _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, "DDCache: madvise failed with error %s", buf, 0xCu);
    }
  }

  return v6;
}

void *DDLookupTableCreateFromCacheData(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) != a2)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v12 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v31 = *(a1 + 1);
    v36 = 67109376;
    LODWORD(v37) = v31;
    WORD2(v37) = 2048;
    *(&v37 + 6) = a2;
    v9 = "length mismatch on LookupTable Cache (%d, %ld)";
    v10 = v12;
    v11 = 18;
    goto LABEL_43;
  }

  v6 = a1[1];
  if (v6 - 8 <= 0xFFFFFFFA)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v8 = a1[1];
    v36 = 67109632;
    LODWORD(v37) = v8;
    WORD2(v37) = 1024;
    *(&v37 + 6) = 3;
    WORD5(v37) = 1024;
    HIDWORD(v37) = 7;
    v9 = "version mismatch on LookupTable Cache (%d, min supported %d, max supported %d)";
    v10 = v7;
    v11 = 20;
LABEL_43:
    _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, v9, &v36, v11);
    return 0;
  }

  if (*a1 != 57054)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v20 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(v36) = 0;
    v9 = "magic mismatch on LookupTable Cache";
LABEL_24:
    v10 = v20;
    v11 = 2;
    goto LABEL_43;
  }

  v17 = *(a1 + 4);
  if (v17 >= 1)
  {
    v18 = *(a1 + 5);
    if (v18 < 0 || v17 + v18 + 24 > a2)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v19 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v36 = 136315138;
      *&v37 = "ContextStaticTrie";
      v9 = "corruption of %s";
      goto LABEL_37;
    }
  }

  if (v6 <= 5)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v21 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v35 = a1[1];
      v36 = 67109120;
      LODWORD(v37) = v35;
      _os_log_error_impl(&dword_1BCFDD000, v21, OS_LOG_TYPE_ERROR, "Lookup tables before version 6 (loading:%d) have issues. Might fail when loading context or threshold data. This support is only temporary, please update your files to v6 NOW (DDCore-492.0)", &v36, 8u);
    }
  }

  v22 = *(a1 + 2);
  v23 = *(a1 + 3);
  if (v22 >= 1 && ((v23 & 0x80000000) != 0 || v22 + v23 + 24 > a2))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v19 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v36 = 136315138;
    *&v37 = "StaticTrie";
    v9 = "corruption of %s";
LABEL_37:
    v10 = v19;
    v11 = 12;
    goto LABEL_43;
  }

  v24 = a1 + 12;
  v25 = DDStaticLookupCreateWithCache((a1 + v23 + 24), v22, a1[1]);
  if (!v25)
  {
    v32 = *(a1 + 2);
    if (v32 < 1 || v24 + v32 + *(a1 + 3) > a2)
    {
      return 0;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v20 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(v36) = 0;
    v9 = "Static lookup creation failed";
    goto LABEL_24;
  }

  v26 = v25;
  v27 = DDTypeRegister(&DDLookupTableGetTypeID_typeID, &kDDLookupTableContextClass);
  Instance = DDTypeCreateInstance_(0, v27, 0x88uLL);
  v13 = Instance;
  Instance[4] = a1;
  Instance[5] = a3;
  Instance[6] = a4;
  Instance[2] = v26;
  v29 = *(a1 + 4);
  if (v29 >= 1 && (v30 = *(a1 + 5), (v29 + v30 + 24) <= a2))
  {
    v33 = DDStaticLookupCreateWithCache((v24 + v30), v29, a1[1]);
    v13[3] = v33;
    if (!v33)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v34 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v36) = 0;
        _os_log_error_impl(&dword_1BCFDD000, v34, OS_LOG_TYPE_ERROR, "Failed to load context tables. Results will be less accurate (you'll miss some)", &v36, 2u);
      }
    }
  }

  else
  {
    Instance[3] = 0;
  }

  return v13;
}

uint64_t DDScannerCreateFromCacheSupportingMLScan(void *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a1[2])
  {
    operator new();
  }

  v3 = a1[4];
  if (!v3 || (v4 = a1[5], v4 != *v3) || (v5 = v3[2], v5 < 0) || (v6 = v4 - 52, v5 > v4 - 52))
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  v11 = v3[4];
  if ((v11 & 0x80000000) == 0 && v11 <= v6)
  {
    v7 = 0;
    v12 = v3[6];
    if ((v12 & 0x80000000) == 0 && v12 <= v6)
    {
      v7 = 0;
      if (*(a1[8] + 4) >= 56 && v3[3] + v5 == v11)
      {
        if (v11 + 12 * v3[5] == v12)
        {
          v13 = malloc_type_calloc(1uLL, 0x58uLL, 0x10F004081EB040EuLL);
          v7 = v13;
          if (v13)
          {
            *v13 = v3;
            v14 = v3 + 13;
            v15 = v3[3];
            v16 = (v3 + v3[2] + 52);
            v17 = malloc_type_malloc(0x60uLL, 0x1070040511C5677uLL);
            v18 = *v16;
            *v17 = v18;
            v19 = *(v16 + 2);
            v17[2] = v19;
            v20 = *(v16 + 3);
            v17[3] = v20;
            v21 = *(v16 + 2);
            *(v17 + 1) = *(v16 + 1);
            if (v19)
            {
              if (v19 == 2)
              {
                v22 = v21 / 5;
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = v21 >> 2;
            }

            *(v17 + 4) = v22;
            v23 = *(v16 + 3);
            v24 = *(v16 + 4);
            *(v17 + 6) = v23 >> 1;
            if (v20)
            {
              if (v20 == 2)
              {
                v25 = v24 / 5;
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = v24 >> 2;
            }

            v26 = v16 + 10;
            v27 = 4 * v18;
            v28 = v19 == 2;
            v29 = &v16[2 * v18 + 12];
            v30 = v29 + 4 * v22;
            if (v28)
            {
              v27 = 4 * v18 + 4;
            }

            else
            {
              v29 = &v16[2 * v18 + 10];
              v30 = 0;
            }

            *(v17 + 1) = v26;
            *(v17 + 2) = v29;
            *(v17 + 3) = v30;
            if (v21 <= 0)
            {
              v31 = -(-v21 & 3);
            }

            else
            {
              v31 = v21 & 3;
            }

            if (v31 > 0)
            {
              v21 += -v31 + 4;
            }

            v32 = v26 + v27 + v21;
            *(v17 + 5) = v32;
            if (v23 <= 0)
            {
              v33 = -(-v23 & 3);
            }

            else
            {
              v33 = v23 & 3;
            }

            if (v33 <= 0)
            {
              v34 = v23;
            }

            else
            {
              v34 = v23 + -v33 + 4;
            }

            v35 = &v32[v34];
            *(v17 + 7) = v35;
            *(v17 + 8) = &v35[4 * v18];
            *(v17 + 9) = v25;
            *(v17 + 10) = v16;
            *(v17 + 11) = v15;
            v36 = v3[5];
            v37 = v14 + v3[4];
            v7[1] = v17;
            v7[2] = v37;
            v7[3] = v3[1];
            v7[4] = v36;
            LODWORD(v36) = v3[7];
            v7[5] = v14 + v3[6];
            *(v7 + 12) = v36;
            v38 = v3[9];
            if (v38 < 1)
            {
              v39 = 0;
            }

            else
            {
              v39 = v14 + v3[8];
            }

            v7[7] = v39;
            *(v7 + 16) = v38;
            v7[9] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
          }

          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v8 = a1[6];
  if (v8)
  {
    v9 = DDLookupTableCreateFromCacheData(v8, a1[7], 0, 0);
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    DDLRTableDestroy(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

void *DDCacheCreateFromFileAtPathWithExtraChecks(const char *a1, const __CFString *a2, size_t a3, int a4)
{
  *&v34[7] = *MEMORY[0x1E69E9840];
  v7 = DDmmap(a1, a3);
  if (!v7)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v13 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v31) = 0;
      _os_log_error_impl(&dword_1BCFDD000, v13, OS_LOG_TYPE_ERROR, "DataDetectorsCore: mmapping the cache file failed", &v31, 2u);
    }

    return 0;
  }

  v8 = v7;
  if (a3 < 0x34)
  {
LABEL_47:
    munmap(v8, a3);
    return 0;
  }

  if (a4 && *v7 != 43962)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v9 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    LOWORD(v31) = 0;
    v10 = "DDCache creation: bad magic cookie";
    v11 = v9;
    v12 = 2;
    goto LABEL_46;
  }

  if (a4)
  {
    if (v7[1] == 56)
    {
      if (v7[2] == a3)
      {
        v14 = v7[11];
        if (v14 < 0)
        {
          goto LABEL_47;
        }

        v15 = v7[12];
        if (v15 < 0)
        {
          goto LABEL_47;
        }

        if ((v14 & 3) != 0)
        {
          goto LABEL_47;
        }

        if ((v14 + v15 + 52) > a3)
        {
          goto LABEL_47;
        }

        v16 = v7[3];
        if (v16 < 0)
        {
          goto LABEL_47;
        }

        v17 = v7[4];
        if (v17 < 0)
        {
          goto LABEL_47;
        }

        if ((v16 & 3) != 0)
        {
          goto LABEL_47;
        }

        if ((v16 + v17 + 52) > a3)
        {
          goto LABEL_47;
        }

        v18 = v7[5];
        if (v18 < 0)
        {
          goto LABEL_47;
        }

        v19 = v7[6];
        if (v19 < 0)
        {
          goto LABEL_47;
        }

        if ((v18 & 3) != 0)
        {
          goto LABEL_47;
        }

        if ((v18 + v19 + 52) > a3)
        {
          goto LABEL_47;
        }

        v20 = v7[7];
        if (v20 < 0)
        {
          goto LABEL_47;
        }

        v21 = v7[8];
        if (v21 < 0)
        {
          goto LABEL_47;
        }

        if ((v20 & 3) != 0)
        {
          goto LABEL_47;
        }

        if ((v20 + v21 + 52) > a3)
        {
          goto LABEL_47;
        }

        v22 = v7[9];
        if (v22 < 0)
        {
          goto LABEL_47;
        }

        v23 = v7[10];
        if (v23 < 0 || (v22 & 3) != 0 || (v22 + v23 + 52) > a3)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v28 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      v29 = v8[2];
      v31 = 67109376;
      v32 = v29;
      v33 = 2048;
      *v34 = a3;
      v10 = "DDCache creation: bad size : %d != %ld";
      v11 = v28;
      v12 = 18;
    }

    else
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v26 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      v27 = v8[1];
      v31 = 67109632;
      v32 = v27;
      v33 = 1024;
      *v34 = 56;
      v34[2] = 1024;
      *&v34[3] = 56;
      v10 = "DDCache creation: bad version (file: %d, min supported: %d, max supported: %d)";
      v11 = v26;
      v12 = 20;
    }

LABEL_46:
    _os_log_error_impl(&dword_1BCFDD000, v11, OS_LOG_TYPE_ERROR, v10, &v31, v12);
    goto LABEL_47;
  }

LABEL_36:
  v24 = DDTypeRegister(&DDCacheGetTypeID_typeID, &kDDCacheContextClass);
  Instance = DDTypeCreateInstance_(0, v24, 0x48uLL);
  Instance[2] = v8 + v8[3] + 52;
  Instance[3] = v8[4];
  Instance[4] = v8 + v8[5] + 52;
  Instance[5] = v8[6];
  Instance[6] = v8 + v8[7] + 52;
  Instance[7] = v8[8];
  Instance[8] = v8;
  if (a2)
  {
    Instance[10] = CFStringCreateCopy(0, a2);
  }

  return Instance;
}

int **DDStaticLookupCreateWithCache(_DWORD *a1, unint64_t a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2 < 60)
  {
    if (a2 < 1)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (*a1 != a2)
  {
LABEL_15:
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v9 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v8 = "Incorrect source file size";
    goto LABEL_35;
  }

  v3 = a1[1];
  if (v3 < 0 || ((v4 = a1[2], v5 = (v4 + v3), v4 >= 4) ? (v6 = v5 > a2) : (v6 = 1), v6))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    v30 = "Cells";
    v8 = "Inconsistency in source section %s";
    goto LABEL_33;
  }

  v11 = a1[3];
  if (v11 < 0 || (v12 = a1[4], v12 < 0) || (v12 + v11) > a2)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    v30 = "ExtraData";
    v8 = "Inconsistency in source section %s";
    goto LABEL_33;
  }

  if ((v12 & 1) != 0 || (v11 & 1) != 0 && v12)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    v30 = "ExtraData";
    v8 = "Inconsistency in source section array %s";
    goto LABEL_33;
  }

  v15 = a1[5];
  if (v15 < 0 || (v16 = a1[6], v16 < 0) || (v16 + v15) > a2)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    v30 = "MetaData";
    v8 = "Inconsistency in source section %s";
    goto LABEL_33;
  }

  if ((v16 & 3) != 0 || (v15 & 3) != 0 && v16)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    v30 = "MetaData";
    v8 = "Inconsistency in source section array %s";
    goto LABEL_33;
  }

  v17 = a1[7];
  if (v17 < 0 || (v18 = a1[8], v18 < 0) || (v18 + v17) > a2)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    v30 = "ThresholdData";
    v8 = "Inconsistency in source section %s";
    goto LABEL_33;
  }

  if ((v18 & 7) != 0 || (v17 & 3) != 0 && v18)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v7 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    v30 = "ThresholdData";
    v8 = "Inconsistency in source section array %s";
    goto LABEL_33;
  }

  if (a3 >= 5)
  {
    v19 = a1[11];
    if (v19 < 0 || (v20 = a1[12], v20 < 0) || (v20 + v19) > a2)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v7 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136315138;
      v30 = "StringIdxData";
      v8 = "Inconsistency in source section %s";
    }

    else
    {
      if ((v20 & 3) != 0 || (v19 & 3) != 0 && v20)
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v7 = DDLogHandle_error_log_handle;
        if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136315138;
        v30 = "StringIdxData";
        v8 = "Inconsistency in source section array %s";
        goto LABEL_33;
      }

      v23 = a1[9];
      if (v23 < 0 || (v24 = a1[10], v24 < 0) || (v24 + v23) > a2)
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v7 = DDLogHandle_error_log_handle;
        if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136315138;
        v30 = "ContextStringIdxData";
        v8 = "Inconsistency in source section %s";
      }

      else
      {
        if ((v24 & 7) != 0 || (v23 & 3) != 0 && v24)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v7 = DDLogHandle_error_log_handle;
          if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          *buf = 136315138;
          v30 = "ContextStringIdxData";
          v8 = "Inconsistency in source section array %s";
          goto LABEL_33;
        }

        v25 = a1[13];
        if ((v25 & 0x80000000) == 0)
        {
          v26 = a1[14];
          if ((v26 & 0x80000000) == 0 && (v26 + v25) <= a2)
          {
            if (v26 && *(a1 + v25 + v26 + 59))
            {
              if (DDLogHandle_onceToken != -1)
              {
                dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
              }

              v9 = DDLogHandle_error_log_handle;
              if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
              {
                return 0;
              }

              *buf = 0;
              v8 = "Invalid string section in source";
              goto LABEL_35;
            }

            v27 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10B004003C429ACuLL);
            if (v27)
            {
              v22 = v27;
              assignFromHeaderV5(v27, a1);
              return v22;
            }

LABEL_112:
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v9 = DDLogHandle_error_log_handle;
            if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
            {
              return 0;
            }

            *buf = 0;
            v8 = "Failed to allocate the static table";
LABEL_35:
            v13 = v9;
            v14 = 2;
            goto LABEL_36;
          }
        }

        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v7 = DDLogHandle_error_log_handle;
        if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136315138;
        v30 = "StringData";
        v8 = "Inconsistency in source section %s";
      }
    }

LABEL_33:
    v13 = v7;
    v14 = 12;
LABEL_36:
    _os_log_error_impl(&dword_1BCFDD000, v13, OS_LOG_TYPE_ERROR, v8, buf, v14);
    return 0;
  }

  v21 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10B004003C429ACuLL);
  if (!v21)
  {
    goto LABEL_112;
  }

  v22 = v21;
  assignFromHeaderV4(v21, a1);
  return v22;
}

int **assignFromHeaderV5(int **result, int *a2)
{
  v2 = a2 + 15;
  v3 = (a2 + a2[1] + 60);
  *result = a2;
  result[1] = v3;
  result[2] = v3;
  v4 = a2[4];
  result[9] = (v4 >> 1);
  if (v4 >= 2)
  {
    v5 = (v2 + a2[3]);
  }

  else
  {
    v5 = 0;
  }

  result[3] = v5;
  v6 = a2[6];
  result[10] = (v6 >> 2);
  if (v6 >= 4)
  {
    v7 = (v2 + a2[5]);
  }

  else
  {
    v7 = 0;
  }

  result[4] = v7;
  v8 = a2[8];
  result[12] = (v8 >> 3);
  if (v8 >= 8)
  {
    v9 = (v2 + a2[7]);
  }

  else
  {
    v9 = 0;
  }

  result[6] = v9;
  v10 = a2[12];
  result[11] = (v10 >> 2);
  if (v10 >= 4)
  {
    v11 = (v2 + a2[11]);
  }

  else
  {
    v11 = 0;
  }

  result[5] = v11;
  v12 = a2[10];
  result[13] = (v12 >> 3);
  if (v12 >= 8)
  {
    v13 = (v2 + a2[9]);
  }

  else
  {
    v13 = 0;
  }

  result[7] = v13;
  v14 = a2[14];
  result[14] = v14;
  if (v14 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v2 + a2[13]);
  }

  result[8] = v15;
  return result;
}

uint64_t DDTypeCreateInstance_(uint64_t a1, CFTypeID a2, size_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    bzero((Instance + 16), a3);
  }

  else
  {
    v7 = CFCopyTypeIDDescription(a2);
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v8 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_1BCFDD000, v8, OS_LOG_TYPE_ERROR, "Failed to create instance of type %@", &v10, 0xCu);
    }

    CFRelease(v7);
    return 0;
  }

  return v6;
}

uint64_t DDScanQueryCreateFromString(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v8 = DDTypeRegister(&DDScanQueryGetTypeID_typeID, &kDDScanQueryContextClass);
  Instance = DDTypeCreateInstance_(a1, v8, 0x28uLL);
  DDScanQueryAddTextFragment(Instance, a2, a3, a4, 0, 0, 0);
  return Instance;
}

uint64_t DDTypeRegister(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    pthread_mutex_lock(&DDTypeRegister_lock);
    if (!*a1)
    {
      *a1 = _CFRuntimeRegisterClass();
    }

    pthread_mutex_unlock(&DDTypeRegister_lock);
    return *a1;
  }

  return result;
}

uint64_t DDScanQueryAddTextFragment(uint64_t result, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (!theString)
  {
    return result;
  }

  v7 = a7;
  v13 = result;
  result = CFStringGetLength(theString);
  if (!result || *(v13 + 32) > 29999)
  {
    return result;
  }

  DDScanQueryAddSeparator(v13, v7);
  v14 = *(v13 + 16);
  if (!v14)
  {
    *(v13 + 24) = xmmword_1BD018B70;
    v14 = malloc_type_malloc(0xC0uLL, 0x10E004000188D12uLL);
LABEL_13:
    *(v13 + 16) = v14;
    v16 = *(v13 + 32);
    goto LABEL_14;
  }

  v15 = *(v13 + 24);
  v16 = *(v13 + 32);
  if (v15 == v16)
  {
    v17 = 2 * v15;
    if (v15 < 2)
    {
      v17 = 4;
    }

    if (v15 >= 1024)
    {
      v18 = v15 + 1024;
    }

    else
    {
      v18 = v17;
    }

    *(v13 + 24) = v18;
    v14 = malloc_type_realloc(v14, 48 * v18, 0x10E004000188D12uLL);
    goto LABEL_13;
  }

LABEL_14:
  v19 = &v14[48 * v16];
  result = CFRetain(theString);
  v20 = *(v19 + 10) & 0x3FFFFFF;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *v19 = result;
  *(v19 + 1) = a5;
  v21 = v20 & 0x83FFFFFF | ((a6 & 3) << 29) | ((v7 & 7) << 26);
  *(v19 + 10) = v21;
  if (v16 < 1)
  {
    *(v19 + 4) = 0;
  }

  else
  {
    v22 = *(v13 + 16) + 48 * v16;
    *(v19 + 4) = *(v22 - 16) + *(v22 - 24) + 1;
    v23 = *(v22 - 8);
    v24 = (v23 >> 26) & 7;
    if (v24 <= v7)
    {
      LOBYTE(v24) = v7;
    }

    *(v22 - 8) = v23 & 0xE3FFFFFF | ((v24 & 7) << 26);
    v21 = *(v19 + 10);
  }

  *(v19 + 10) = v21 & 0xFC000000;
  ++*(v13 + 32);
  return result;
}

uint64_t DDScanQueryAddSeparator(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(result + 16) + 48 * v2;
    v4 = *(v3 - 8);
    v5 = (v4 & 0x1C000000) == 0xC000000 && a2 >= 3;
    if (v5 && (v4 & 0x80000000) != 0)
    {
      v4 = v4 & 0xE3FFFFFF | 0x10000000;
      *(v3 - 8) = v4;
    }

    if (((v4 >> 26) & 7) < a2)
    {
      *(v3 - 8) = v4 & 0xE3FFFFFF | ((a2 & 7) << 26);
    }
  }

  return result;
}

uint64_t DDScannerCreateWithLocale(uint64_t a1, unint64_t a2, const __CFLocale *a3, CFErrorRef *a4)
{
  v6 = DDScannerCreateWithTypeAndLocale(a1, a3, a4);
  v7 = v6;
  if (v6)
  {
    DDScannerSetOptions(v6, a2);
    if (a3)
    {
      DDScannerSetLocale(v7, a3);
    }
  }

  return v7;
}

uint64_t DDTokenCacheGetTokenOrSubtokenAtPosition(void *a1, void *a2, uint64_t a3)
{
  v13 = 0;
  TokensAtPosition = DDTokenCacheGetTokensAtPosition(a1, a2, a3, &v13);
  if (!TokensAtPosition)
  {
    return 4294901760;
  }

  if (TokensAtPosition == 1)
  {
    return *v13;
  }

  if (TokensAtPosition < 1)
  {
    return 4294901760;
  }

  v6 = a3 >> 16;
  v7 = TokensAtPosition + 1;
  for (i = &v13[2 * TokensAtPosition - 1]; ; i -= 2)
  {
    result = *(i - 1);
    v9 = result >> 16;
    if (v9 < v6 || (v9 <= v6 ? (v10 = SHIDWORD(result) <= SHIDWORD(a3)) : (v10 = 0), v10))
    {
      v11 = *i << 32 >> 48;
      if (v11 >= v6 && (v11 > v6 || HIDWORD(*i) > SHIDWORD(a3)))
      {
        break;
      }
    }

    if (--v7 <= 1)
    {
      return 4294901760;
    }
  }

  return result;
}

void DDCachingStringTokenizerResetStringWithOptions(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 121))
  {
    *(a1 + 80) = -1;
    *(a1 + 112) = -1;
    v7 = *(a1 + 40);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 40) = 0;
    }
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(a1 + 72);
      if (v9 >= 1)
      {
        v10 = 16;
        v11 = *(a1 + 72);
        do
        {
          v12 = *(*(a1 + 48) + v10);
          if (v12)
          {
            free(v12);
          }

          v10 += 32;
          --v11;
        }

        while (v11);
        bzero(v8, 32 * v9);
      }
    }

    else
    {
      *(a1 + 64) = 64;
      *(a1 + 48) = malloc_type_calloc(0x40uLL, 0x20uLL, 0x10200406A33E52CuLL);
    }

    *(a1 + 104) = xmmword_1BD018B50;
    *(a1 + 72) = 0;
    *(a1 + 80) = -1;
    *(a1 + 88) = -1;
    *(a1 + 96) = -1;
    *(a1 + 120) = 0;
    *(a1 + 56) = a2;
    if (a3 && *(a1 + 40))
    {

      NLStringTokenizerSetStringWithOptions();
    }
  }
}

uint64_t *DDTokenCacheGetTokensAtPosition(void *a1, void *cf, uint64_t a3, uint64_t **a4)
{
  v4 = cf[2] + 48 * (a3 >> 16);
  v5 = *(v4 + 32) + (a3 >> 32) - *(v4 + 16);
  v6 = a1[2];
  v7 = v5 - v6;
  if (v5 - v6 > 199)
  {
    return 0;
  }

  v11 = a1[5];
  if (v11 <= v7)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = v5 - v6;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v12 + 1;
    v14 = v12 + a1[7];
    while (1)
    {
      v15 = v14 >= a1[6] ? a1[6] : 0;
      if ((*(*(a1[4] - 8 * v15 + 8 * v14) + 3) & 0x80) == 0)
      {
        break;
      }

      --v13;
      --v14;
      if (v13 <= 0)
      {
        v12 = -1;
        goto LABEL_14;
      }
    }

    v12 = v13 - 1;
  }

LABEL_14:
  if (v12 < v7)
  {
    v16 = v12 + 1;
    do
    {
      TokenInCache = _FillNextTokenInCache(a1, cf, v16);
      if (TokenInCache >= 0)
      {
        v16 = TokenInCache;
      }
    }

    while ((TokenInCache & 0x8000000000000000) == 0 && v16 <= v7);
  }

  result = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, v5 - v6);
  if (!result)
  {
    return result;
  }

  v19 = *result;
  if ((*result & 0x80000000) != 0)
  {
    return 0;
  }

  if (v19 != v5)
  {
    result = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, (v19 - v6) & ~((v19 - v6) >> 63));
    if (!result)
    {
      return result;
    }

    v19 = *result;
  }

  v20 = result + 1;
  if (v19 << 16 >= 0x2000000000000)
  {
    v20 = *v20;
  }

  *a4 = v20;
  return (*result << 16 >> 48);
}

uint64_t _FillNextTokenInCache(void *a1, CFTypeRef cf, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v7 = a1[48];
  if (v7 <= 0)
  {
    v8 = *a1;
    if (!*(*a1 + 32))
    {
      v8[4] = CFRetain(cf);
    }

    v9 = v8[10];
    if (v9 >= v8[9] - 1)
    {
      NextToken = _fetchNextToken(v8);
      if (NextToken < 0)
      {
        return -1;
      }
    }

    else
    {
      NextToken = v9 + 1;
      if (v9 + 1 < 0)
      {
        return -1;
      }
    }

    v11 = _tokenEntryAtRealIndex(v8, (v8[12] + NextToken) % v8[9]);
    v8[10] = NextToken;
    if (!v11)
    {
      return -1;
    }

    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = (*v11 << 32) >> 48;
    if (v14 == v13 >> 16)
    {
      v15 = (v13 - (v12 & 0xFFFFFFFF00000000)) >> 32;
LABEL_23:
      v23 = *(cf + 2);
      v24 = *(v23 + 48 * (*v11 >> 16) + 32) + (v12 >> 32) - *(v23 + 48 * (*v11 >> 16) + 16);
      if (v24 < a3)
      {
        if (_FillNextTokenInCache_sOnce != -1)
        {
          dispatch_once(&_FillNextTokenInCache_sOnce, &__block_literal_global_853);
        }

        return -1;
      }

      *&__src = *v11;
      *(&__src + 1) = v13;
      if (*(v11 + 24))
      {
        v25 = 0;
        if (*(v11 + 24) >= 0x13u)
        {
          v26 = 19;
        }

        else
        {
          v26 = *(v11 + 24);
        }

        v27 = &v57;
        do
        {
          *v27 = *(*(v11 + 16) + v25);
          v27 += 2;
          v25 += 32;
        }

        while (32 * v26 != v25);
        v7 = v26 + 1;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_34;
    }

    v16 = v13 >> 16;
    v17 = __OFSUB__(v14, v16);
    v18 = v14 - v16;
    if (!((v18 < 0) ^ v17 | (v18 == 0)))
    {
      v15 = 0;
      goto LABEL_23;
    }

    v19 = 0;
    v15 = 0;
    v20 = *(cf + 2) + 48 * (*v11 >> 16) + 24;
    while (v19)
    {
      if (v18 != v19)
      {
        v21 = *v20;
LABEL_19:
        v22 = v21 + v15;
        if (((*(v20 + 16) >> 26) & 7u) - 1 >= 4)
        {
          v15 = v22;
        }

        else
        {
          v15 = v22 + 1;
        }

        goto LABEL_22;
      }

      v15 = v15 + (v13 >> 32) - *(v20 - 8);
LABEL_22:
      --v19;
      v20 += 48;
      if (v18 - 1 == v19)
      {
        goto LABEL_23;
      }
    }

    v21 = *(v20 - 8) - (v12 >> 32) + *v20;
    goto LABEL_19;
  }

  v53 = a1[8];
  v13 = a1[9];
  v23 = *(cf + 2);
  v24 = *(v23 + 48 * (v53 >> 16) + 32) + (v53 >> 32) - *(v23 + 48 * (v53 >> 16) + 16);
  v15 = (v13 - (v53 & 0xFFFFFFFF00000000)) >> 32;
  __memcpy_chk();
  a1[48] = 0;
LABEL_34:
  if (v15 > 200)
  {
    return -1;
  }

  v28 = v24 - v6;
  if (v24 - v6 + v15 > 200)
  {
    a1[48] = v7;
    memcpy(a1 + 8, &__src, 16 * v7);
    return -1;
  }

  if (v28 > a3)
  {
    while (1)
    {
      IfNeeded = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, a3);
      if (!IfNeeded)
      {
        return -1;
      }

      *IfNeeded = v6 + a3++;
      if (a3 >= v28)
      {
        v23 = *(cf + 2);
        break;
      }
    }
  }

  v55 = v13 >> 16;
  v30 = v23 + 48 * v55;
  v31 = *(v30 + 32);
  v32 = *(v30 + 16);
  v33 = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, a3);
  if (!v33)
  {
    return -1;
  }

  v34 = v33;
  v35 = v13 >> 32;
  v36 = v31 + (v13 >> 32) - (v6 + v32);
  v37 = *v33;
  if (v7 <= 1)
  {
    if (v37 < 0x2000000000000)
    {
LABEL_45:
      v39 = v37 & 0xFFFFFFFFFFFFLL | 0x1000000000000;
      *v34 = v39;
LABEL_46:
      *(v34 + 8) = __src;
      v40 = 0x100000000;
LABEL_57:
      v45 = v39 & 0xFFFF000000000000 | v40;
LABEL_58:
      v46 = v24;
      goto LABEL_59;
    }

    v38 = v13 >> 32;
    free(*(v33 + 8));
LABEL_44:
    v37 = *v34;
    v35 = v38;
    goto LABEL_45;
  }

  v38 = v13 >> 32;
  if (v37 >> 48 >= v7)
  {
    goto LABEL_56;
  }

  if (v37 >> 48 <= 1)
  {
    v41 = 16 * v7;
    v42 = malloc_type_malloc(16 * v7, 0x1000040451B5BE8uLL);
    if (!v42)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v43 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v59 = v41;
        _os_log_error_impl(&dword_1BCFDD000, v43, OS_LOG_TYPE_ERROR, "TokenCache could not alloc space to cache %ld ranges", buf, 0xCu);
      }

      goto LABEL_44;
    }

    goto LABEL_55;
  }

  v44 = 16 * v7;
  v42 = malloc_type_realloc(*(v33 + 8), 16 * v7, 0x1000040451B5BE8uLL);
  if (v42)
  {
LABEL_55:
    *(v34 + 8) = v42;
    *(v34 + 6) = v7;
    goto LABEL_56;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v52 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v59 = v44;
    _os_log_error_impl(&dword_1BCFDD000, v52, OS_LOG_TYPE_ERROR, "TokenCache could not realloc space to cache %ld ranges", buf, 0xCu);
  }

  v39 = *v34;
  v7 = *v34 >> 48;
  v35 = v38;
  if (v7 == 1)
  {
    goto LABEL_46;
  }

  if (v7 >= 2)
  {
LABEL_56:
    memcpy(*(v34 + 8), &__src, 16 * v7);
    v39 = *v34;
    v40 = v7 << 32;
    v35 = v38;
    goto LABEL_57;
  }

  v45 = v39 & 0xFFFF000000000000 | (HIWORD(*v34) << 32);
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_58;
  }

  v46 = 0xFFFFFFFFLL;
LABEL_59:
  *v34 = v46 | v45;
  v47 = *(cf + 2) + 48 * v55;
  v48 = v35 + *(v47 + 32) - (v6 + *(v47 + 16));
  v49 = a3 + 1;
  if (a3 + 1 < v48)
  {
    v50 = a3 + v6;
    while (1)
    {
      v51 = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, v49);
      if (!v51)
      {
        break;
      }

      *v51 = v50;
      if (++v49 >= v48)
      {
        return v36;
      }
    }

    return -1;
  }

  return v36;
}

void DDTokenCacheClear(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1 >= 1)
    {
      for (i = 0; i < v1; ++i)
      {
        v4 = *(a1 + 48);
        v3 = *(a1 + 56);
        if (i + v3 < v4)
        {
          v4 = 0;
        }

        v5 = *(*(a1 + 32) + 8 * (i + v3 - v4));
        if (v5)
        {
          *v5 = (*(v5 + 6) << 48) | 0xFFFFFFFF;
          v1 = *(a1 + 40);
        }
      }
    }

    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 16) = xmmword_1BD018B50;
    *(a1 + 384) = 0;
    if (*a1)
    {
      DDCachingStringTokenizerResetStringWithOptions(*a1, *(a1 + 392), 1);
    }
  }
}

uint64_t computeLexemsAtPosition(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v292 = *MEMORY[0x1E69E9840];
  v283 = 0;
  if (DDLexemCacheGetLexems(*(v1 + 48), *(*(v1 + 56) + 16), v4, v2, &v283))
  {
    return v283;
  }

  v7 = *(v6 + 56);
  v282 = 0;
  TokensAtPosition = DDTokenCacheGetTokensAtPosition(*(v6 + 40), v7, v5, &v282);
  v9 = v5 >> 16;
  if (TokensAtPosition < 1)
  {
    v11 = 4294901760;
    v13 = 4294901760;
  }

  else
  {
    v10 = v282;
    v11 = *v282;
    v12 = *v282 ^ v5;
    if (v12 >> 16)
    {
      v13 = 4294901760;
      v11 = 4294901760;
    }

    else
    {
      v13 = v282[1];
      v14 = v283;
      if (v283 <= 46)
      {
        v15 = **(v6 + 16);
        v16 = &v291[2 * v283];
        *v16 = v13 & 0xFFFFFFFFFFFF0000 | v15[20];
        v16[1] = 0;
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = v11 & 0xFFFFFFFFFFFF0000 | v15[21];
        v16[5] = 0;
        v16[6] = 0;
        v16[7] = 0;
        v16[8] = v11 & 0xFFFFFFFFFFFF0000 | v15[23];
        v16[9] = 0;
        v16[10] = 0;
        v16[11] = 0;
        v283 = v14 + 3;
      }
    }

    v17 = TokensAtPosition - 1;
    if (TokensAtPosition != 1)
    {
      v18 = v283;
      v19 = v5 & 0xFFFFFFFFFFFF0000;
      v20 = v10 + 3;
      do
      {
        v22 = *(v20 - 1);
        v21 = *v20;
        if (!((v22 ^ v5) >> 16))
        {
          if ((v11 & 0xFFFF0000) == 0xFFFF0000)
          {
            v13 = *v20;
            v11 = *(v20 - 1);
          }

          if (v12 >= 0x10000 && v18 <= 46)
          {
            v23 = **(v6 + 16);
            v24 = &v291[2 * v18];
            *v24 = v21 & 0xFFFFFFFFFFFF0000 | v23[20];
            v24[1] = 0;
            v24[2] = 0;
            v24[3] = 0;
            v25 = v22 & 0xFFFFFFFFFFFF0000;
            v24[4] = v25 | v23[21];
            v24[5] = 0;
            v24[6] = 0;
            v24[7] = 0;
            v18 += 3;
            v24[8] = v25 | v23[23];
            v24[9] = 0;
            v24[10] = 0;
            v24[11] = 0;
          }
        }

        if (!((v21 ^ v5) >> 16) && v18 <= 47)
        {
          v26 = &v291[2 * v18];
          v27 = **(v6 + 16);
          *v26 = v19 | *(v27 + 44);
          v26[1] = 0;
          v26[2] = 0;
          v26[3] = 0;
          v18 += 2;
          v26[4] = v19 | *(v27 + 46);
          v26[5] = 0;
          v26[6] = 0;
          v26[7] = 0;
        }

        v20 += 2;
        --v17;
      }

      while (v17);
      v283 = v18;
    }

    if (v12 >= 0x10000)
    {
      v254 = v13;
      v28 = v5 >> 32;
      goto LABEL_28;
    }
  }

  v28 = v5 >> 32;
  v29 = *(v7[2] + 48 * v9 + 16);
  v254 = v13;
  if (v5 >> 32 > v29 && DDTokenCacheGetTokensAtPosition(*(v6 + 40), v7, (v5 & 0xFFFFFFFF00000000 | (WORD1(v5) << 16)) - 0x100000000, &v282) >= 1 && !((v282[1] ^ v5) >> 16))
  {
    v30 = v283;
    if (v283 <= 47)
    {
      v31 = &v291[2 * v283];
      v32 = **(v6 + 16);
      *v31 = v5 & 0xFFFFFFFFFFFF0000 | *(v32 + 44);
      v31[1] = 0;
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v5 & 0xFFFFFFFFFFFF0000 | *(v32 + 46);
      v31[5] = 0;
      v31[6] = 0;
      v31[7] = 0;
      v283 = v30 + 2;
    }
  }

LABEL_28:
  v33 = v7[2] + 48 * v9;
  if (v28 >= *(v33 + 24) + *(v33 + 16))
  {
    if (v9 != v7[4] - 1)
    {
      v37 = (*(v33 + 40) >> 26) & 7;
      if (v37 <= 2)
      {
        if (v37)
        {
          goto LABEL_50;
        }

        CharacterAtIndex = CFStringGetCharacterAtIndex(*(v33 + 48), *(v33 + 64));
        v39 = CharacterAtIndex == 10 || CharacterAtIndex == 8232;
        if (!v39 && CharacterAtIndex != 13)
        {
          goto LABEL_50;
        }
      }
    }
  }

  else
  {
    v34 = CFStringGetCharacterAtIndex(*v33, v28);
    v35 = v34 == 10 || v34 == 13;
    if (!v35 && v34 != 8232)
    {
      goto LABEL_50;
    }
  }

  v41 = v283;
  if (v283 <= 49)
  {
    v42 = &v291[2 * v283];
    *v42 = v5 & 0xFFFFFFFFFFFF0000 | *(**(v6 + 16) + 50);
    v42[1] = 0;
    v42[2] = 0;
    v42[3] = 0;
    v283 = v41 + 1;
  }

LABEL_50:
  if (v28 > *(v33 + 16))
  {
    v43 = CFStringGetCharacterAtIndex(*v33, (v5 - 0x100000000) >> 32);
    v44 = 0;
LABEL_56:
    v47 = v254;
    goto LABEL_57;
  }

  if (v9 < 1)
  {
    v43 = 0;
    v44 = 1;
    goto LABEL_56;
  }

  v45 = v7[2] + 48 * (v9 - 1);
  v46 = (*(v45 + 40) >> 26) & 7;
  v44 = v46 > 2;
  v47 = v254;
  if (v46)
  {
    v43 = 0;
  }

  else
  {
    v43 = CFStringGetCharacterAtIndex(*v45, *(v45 + 16) + *(v45 + 24) - 1);
    v44 = 0;
  }

LABEL_57:
  v50 = v43 == 10 || v43 == 13 || v43 == 8232;
  v51 = v283;
  if ((v44 || v50) && v283 <= 49)
  {
    v52 = &v291[2 * v283];
    v51 = v283 + 1;
    *v52 = v5 & 0xFFFFFFFFFFFF0000 | *(**(v6 + 16) + 48);
    v52[1] = 0;
    v52[2] = 0;
    v52[3] = 0;
    v283 = v51;
  }

  v256 = v7;
  if (v51 > 49)
  {
    goto LABEL_307;
  }

  v51 += DDLexerDeterministicScan(*(v6 + 24), v5, &v291[2 * v51], 50 - v51);
  v283 = v51;
  if ((~v11 & 0xFFFF0000) == 0 || v51 > 49)
  {
    goto LABEL_307;
  }

  v53 = 0;
  v259 = v6 + 72;
  v245 = v265;
  v246 = v5 >> 32;
  v243 = &v285;
  v262 = &v288;
  v263 = &v290;
  v251 = v11;
  v252 = v5 >> 16;
  v244 = v3;
  v253 = v5;
  v257 = v6;
  do
  {
    v54 = *(v259 + 8 * v53);
    if (!v54)
    {
      goto LABEL_305;
    }

    v260 = v53;
    v261 = v51;
    v55 = &v291[2 * v51];
    v258 = v54;
    v56 = DDLookupTableRefLookupCurrentWord(v6, v54, v11, v47, v5, v55, 50 - v51, 0);
    v57 = v56;
    if (v56 < 1)
    {
      v53 = v260;
      v58 = v261;
      goto LABEL_304;
    }

    v53 = v260;
    if ((v260 & 6) != 2 && (v260 - 5) > 1)
    {
      v58 = v261;
      goto LABEL_304;
    }

    v59 = MEMORY[0x1EEE9AC00](v56);
    v61 = &v243 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v59);
    v64 = &v243 - v63;
    v65 = 0;
    v66 = 0;
    v67 = (*(v6 + 192) >> 25) & 1;
    v68 = v57 != 1 || (*(v6 + 192) & 0x2000000) != 0;
    v70 = v55 + 3;
    v69 = *(v55 + 3);
    v71 = v55 + 2;
    v58 = v261;
    v72 = v258;
    do
    {
      if ((v69 & 0x10000) == 0)
      {
        v80 = 0;
        LODWORD(v9) = v252;
        v5 = v253;
        v7 = v256;
        v6 = v257;
        goto LABEL_303;
      }

      v73 = *v55;
      if (!v65 || (v74 = v66 >> 16, v74 >= v73 >> 16) && (v74 <= v73 >> 16 ? (v75 = SHIDWORD(v66) <= SHIDWORD(v73)) : (v75 = 0), !v75))
      {
        v66 = *v55;
      }

      v76 = *(v72 + 24);
      v77 = 0.0;
      if (!v76 || (v73 = v73, (v73 - 8) > 0x1F) || (v78 = v76[6]) == 0 || v76[12] < 1)
      {
LABEL_99:
        if (v68)
        {
          goto LABEL_101;
        }

LABEL_100:
        if (*v71 <= v77)
        {
          goto LABEL_101;
        }

        *v71 = *v71 - v77;
        v80 = 1;
        LODWORD(v9) = v252;
        v5 = v253;
        v7 = v256;
        v6 = v257;
LABEL_262:
        v210 = v80;
        do
        {
          v211 = v210 - 1;
          if (v76)
          {
            v212 = SLOWORD(v291[2 * v58 + 2 * v211]);
            if ((v212 - 8) <= 0x1F)
            {
              v213 = v76[7];
              if (v213)
              {
                if (v76[13] >= 1)
                {
                  v214 = v76[13] & 0x7FFFFFFFLL;
                  while (!*(v213 + 6) || v212 != *(v213 + 2))
                  {
                    v213 += 2;
                    if (!--v214)
                    {
                      goto LABEL_271;
                    }
                  }

                  v215 = *v213;
                  if (v215 && *(v213 + 7) && v76[14] > v215)
                  {
                    *&v291[2 * v58 + 1 + 2 * v211] = v76[8] + v215;
                  }
                }
              }
            }
          }

LABEL_271:
          v75 = v210-- > 1;
        }

        while (v75);
        v216 = *(v6 + 152);
        if (!v216)
        {
          v216 = malloc_type_calloc(1uLL, 0x3D0uLL, 0x10300403B58F53CuLL);
          if (v216)
          {
            *v216 = -1;
            v216[1] = -1;
          }

          *(v6 + 152) = v216;
          v53 = v260;
          v58 = v261;
        }

        v217 = v7[2] + 48 * v9;
        v218 = *(v217 + 32) + v246 - *(v217 + 16);
        if (v218 < 0)
        {
          goto LABEL_303;
        }

        v220 = *v216;
        v219 = v216[1];
        if (*v216 < 0)
        {
          if (v220 == -1)
          {
            v223 = (v216 + 2);
            *v216 = 0;
            v216[1] = 0;
LABEL_295:
            *v223 = v218;
            if (v80 == 1)
            {
              v224 = v55[1];
              *(v223 + 32) = *v55;
              *(v223 + 48) = v224;
            }

            else
            {
              v225 = *(v223 + 24);
              if (*(v223 + 16) < v80)
              {
                if (v225)
                {
                  free(v225);
                }

                v225 = malloc_type_malloc(32 * v80, 0x1010040F32E1FD2uLL);
                *(v223 + 16) = v80;
                *(v223 + 24) = v225;
              }

              memcpy(v225, v55, 32 * v80);
              v53 = v260;
              v58 = v261;
              v3 = v244;
            }

            *(v223 + 8) = v80;
            v47 = v254;
            goto LABEL_303;
          }
        }

        else if (v216[8 * v220 + 2] >= v218)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v221 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v284[0]) = 0;
            _os_log_error_impl(&dword_1BCFDD000, v221, OS_LOG_TYPE_ERROR, "DDSourceMatchCacheAddEntry location should be constant or monotonically increasing", v284, 2u);
          }

          v53 = v260;
          v58 = v261;
          goto LABEL_303;
        }

        v222 = (v220 + 1) % 15;
        if (v219 == v222)
        {
          v219 = (v219 + 1 - 15 * ((((137 * (v219 + 1)) >> 8) >> 3) + ((((137 * (v219 + 1)) >> 8) & 0x80) >> 7)));
        }

        *v216 = v222;
        v216[1] = v219;
        v223 = &v216[8 * v222 + 2];
        goto LABEL_295;
      }

      v79 = v76[12] & 0x7FFFFFFFLL;
      while (!*(v78 + 6) || v73 != *(v78 + 4))
      {
        v78 += 8;
        if (!--v79)
        {
          goto LABEL_99;
        }
      }

      v77 = *v78;
      if (!*(v78 + 7))
      {
        v77 = 0.0;
      }

      if (!v68)
      {
        goto LABEL_100;
      }

LABEL_101:
      *&v64[4 * v65] = v77;
      *&v61[4 * v65++] = 0;
    }

    while (v65 != v57);
    v247 = v67;
    v248 = v64;
    v249 = v57 - 1;
    v250 = v62;
    v278 = 0;
    v279 = &v278;
    v280 = 0x2000000000;
    v281 = 0;
    v274 = 0;
    v275 = &v274;
    v276 = 0x2000000000;
    v277 = 0;
    v273[0] = 0;
    v273[1] = v273;
    v273[2] = 0x2000000000;
    v273[3] = &v289;
    v272[0] = 0;
    v272[1] = v272;
    v272[2] = 0x2000000000;
    v272[3] = &v287;
    v271[0] = 0;
    v271[1] = v271;
    v271[2] = 0x2000000000;
    v271[3] = v286;
    v270[0] = 0;
    v270[1] = v270;
    v270[2] = 0x2000000000;
    v270[3] = v284;
    v266 = 0;
    v267 = &v266;
    v268 = 0x2000000000;
    v269 = 0;
    v81 = v256;
    v82 = *(v257 + 40);
    v264[0] = MEMORY[0x1E69E9820];
    v264[1] = 0x40000000;
    v265[0] = __computeLexemsAtPosition_block_invoke;
    v265[1] = &unk_1E8001E58;
    v265[2] = &v274;
    v265[3] = v273;
    v265[4] = v272;
    v265[5] = &v278;
    v265[10] = v256;
    v265[11] = v257;
    v265[12] = v72;
    v265[6] = &v266;
    v265[7] = v271;
    v83 = v253;
    v265[8] = v270;
    v265[9] = v253;
    DDCachingStringTokenizerEnumerateTokens(*v82, v256, 1, v253, v264);
    DDCachingStringTokenizerEnumerateTokens(*v82, v81, 0, v83, v264);
    v84 = v267;
    if (v267[3] < 1)
    {
      goto LABEL_226;
    }

    v85 = 0;
    v86 = 0;
    while (2)
    {
      v87 = &v284[5 * v85];
      if (BYTE14(v286[2 * v87[3]]))
      {
        v92 = v87[1];
        if (v92 >= 0x100000000)
        {
          v93 = **(v257 + 40);
          v255 = (v92 & 0x7FFFFFFF00000000) - 0x100000000;
          Offset = matchingTokenRealIndexForQueryOffset(v93, v255 & 0xFFFFFFFF00000000 | v92, 0);
          v95 = _tokenEntryAtRealIndex(v93, Offset);
          if (v95)
          {
            v96 = *v95;
            v97 = v92 >> 16;
            if (v97 >= (*v95 << 32) >> 48)
            {
              v35 = v97 == v96 >> 16;
              v98 = HIDWORD(v96);
              if (!v35 || SHIDWORD(v255) >= v98)
              {
                v100 = *(v95 + 8);
                if (v97 <= v100 >> 16)
                {
                  if (v97 != v100 >> 16 || (v101 = HIDWORD(v100), SHIDWORD(v255) < v101) && (v101 <= HIDWORD(v92) ? (v102 = v101 < SHIDWORD(v92)) : (v102 = 1), v102))
                  {
                    v103 = *(v95 + 24);
                    if (!*(v95 + 24))
                    {
LABEL_139:
                      v84 = v267;
                      goto LABEL_111;
                    }

                    v104 = (*(v95 + 16) + 8);
                    while (1)
                    {
                      v105 = *v104;
                      v104 += 4;
                      v106 = v105 >> 16;
                      if (!((v105 ^ v92) >> 32) && v106 == v97)
                      {
                        break;
                      }

                      if (!--v103)
                      {
                        goto LABEL_139;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v86;
        v84 = v267;
        v88 = v267[3];
      }

      else
      {
LABEL_111:
        v88 = v84[3] - 1;
        if (v88 > v85)
        {
          v89 = &v284[5 * v88];
          v90 = *v89;
          v91 = *(v89 + 1);
          v87[4] = v89[4];
          *v87 = v90;
          *(v87 + 1) = v91;
          v88 = v84[3] - 1;
        }

        v84[3] = v88;
      }

      v85 = v86;
      if (v88 > v86)
      {
        continue;
      }

      break;
    }

    if (v88 <= 1)
    {
      v3 = v244;
    }

    else
    {
      qsort(v284, v88, 0x28uLL, keywordSort);
      v108 = v267;
      v109 = v267[3];
      v3 = v244;
      if (v109 >= 2)
      {
        LODWORD(v110) = 0;
        v111 = v243;
        v112 = 1;
        while (1)
        {
          v113 = v110;
          v114 = &v284[5 * v110];
          if (v114[2] == v111[2])
          {
            break;
          }

          v110 = v110 + 1;
          if (v112 != v113 + 1)
          {
            v114 = &v284[5 * v110];
LABEL_163:
            v128 = *v111;
            v129 = *(v111 + 1);
            v114[4] = v111[4];
            *v114 = v128;
            *(v114 + 1) = v129;
            v109 = v108[3];
          }

LABEL_164:
          ++v112;
          v111 += 5;
          if (v109 <= v112)
          {
            v88 = v110 + 1;
            goto LABEL_169;
          }
        }

        v115 = v114[1];
        v116 = *v111;
        v117 = v115 >> 16;
        if (v117 < *v111 << 32 >> 48 || ((v118 = v116 >> 16, v119 = HIDWORD(v115), v120 = HIDWORD(v116), v117 <= v118) ? (v121 = v119 < v120) : (v121 = 0), v121))
        {
          v110 = v110 + 1;
          if (v112 == v113 + 1)
          {
            goto LABEL_164;
          }

          v114 = &v284[5 * v110];
        }

        else
        {
          v122 = v111[1];
          if (v117 >= v122 >> 16)
          {
            if (v117 > v122 >> 16)
            {
              goto LABEL_164;
            }

            v123 = HIDWORD(v122);
            if (v119 >= v123)
            {
              if (v119 > v123)
              {
                goto LABEL_164;
              }

              v124 = &v286[2 * v111[3]];
              v125 = v124[2];
              v126 = &v286[2 * v114[3]];
              v127 = v126[2];
              if (v125 > v127 || v125 >= v127 && ((*(v124 + 15) & 0x10) != 0 || (*(v126 + 15) & 0x10) == 0))
              {
                goto LABEL_164;
              }
            }
          }
        }

        goto LABEL_163;
      }

      v88 = 1;
LABEL_169:
      v108[3] = v88;
    }

    if (v88 >= 1)
    {
      v130 = 0;
      v131 = v275;
      v132 = v279;
      do
      {
        v133 = &v284[5 * v130];
        v134 = &v286[2 * v133[3]];
        v135 = *v134;
        v136 = v134[2];
        v137 = *(v134 + 3);
        v138 = v133[1];
        v139 = HIDWORD(v138);
        v140 = v138 >> 16;
        v141 = HIDWORD(*v133);
        v142 = (*v133 << 32) >> 48;
        v143 = v57;
        do
        {
          v144 = v143--;
          v145 = *&v55[2 * v143];
          if (v145 != v135)
          {
            continue;
          }

          if (*(v133 + 32))
          {
            v146 = 24;
          }

          else
          {
            v146 = 26;
          }

          v147 = v137 >> v146;
          v148 = 0.0;
          if ((v147 & 2) == 0)
          {
            goto LABEL_216;
          }

          if (*(v133 + 32))
          {
            v149 = *(v132 + 6);
            if (v149 < 1)
            {
              goto LABEL_210;
            }

            v150 = 15 - v149;
            v151 = v262;
            v152 = 15;
            do
            {
              v154 = *v151--;
              v153 = v154;
              if (v140 >= v154 >> 16)
              {
                v155 = v153 >> 16;
                v156 = HIDWORD(v153);
                if (v140 > v155 || v139 > v156)
                {
                  v174 = 15;
                  goto LABEL_211;
                }
              }

              --v152;
            }

            while (v152 > v150);
            v174 = 15;
            v152 = v150;
          }

          else
          {
            v158 = *(v131 + 6);
            if (v158 < 1)
            {
LABEL_210:
              v174 = 15;
              v152 = 15;
              goto LABEL_211;
            }

            v159 = HIDWORD(v145);
            LODWORD(v160) = v158 + 15;
            v161 = v145 >> 16;
            if (v160 <= 16)
            {
              v160 = 16;
            }

            else
            {
              v160 = v160;
            }

            v162 = v263;
            v174 = 15;
            while (1)
            {
              v164 = *v162++;
              v163 = v164;
              if (v161 < v164 >> 16)
              {
                break;
              }

              v165 = v163 >> 16;
              v166 = HIDWORD(v163);
              if (v161 <= v165 && v159 <= v166)
              {
                break;
              }

              if (v160 == ++v174)
              {
                v174 = v160;
                break;
              }
            }

            v168 = v263;
            v152 = 15;
            while (1)
            {
              v170 = *v168++;
              v169 = v170;
              if (v142 < v170 >> 16)
              {
                break;
              }

              v171 = v169 >> 16;
              v172 = HIDWORD(v169);
              if (v142 <= v171 && v141 < v172)
              {
                break;
              }

              if (v160 == ++v152)
              {
                v152 = v160;
                break;
              }
            }
          }

LABEL_211:
          v175 = v174 - v152;
          v176 = v152 - v174;
          if (*(v133 + 32))
          {
            v177 = v175;
          }

          else
          {
            v177 = v176;
          }

          if (v177 - 1 <= 9)
          {
            v148 = v177;
LABEL_216:
            v178 = v147 & 3;
            if (v178 > 1)
            {
              if (v178 == 2)
              {
                v179 = (11.0 - v148) * v136 / 10.0;
              }

              else
              {
                v179 = v136 / v148;
              }
            }

            else if (v178)
            {
              v179 = 0.0;
            }

            else
            {
              v179 = v136;
            }

            *&v61[4 * v143] = v179 + *&v61[4 * v143];
          }
        }

        while (v144 > 1);
        ++v130;
      }

      while (v130 != v88);
    }

LABEL_226:
    MEMORY[0x1EEE9AC00](&v243);
    v180 = &v243 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    v181 = 0;
    v182 = v261;
    v184 = v247;
    v183 = v248;
    do
    {
      v185 = *(v70 - 1);
      v186 = llroundf(v185 * 100.0);
      v187 = (*&v61[4 * v181] + v185) - *&v183[4 * v181];
      if (v186 <= 100)
      {
        v188 = (v186 & ~(v186 >> 63) & 0x7F) << 17;
      }

      else
      {
        v188 = 13107200;
      }

      *v70 = v188 | *v70 & 0xFF01FFFF;
      *(v70 - 1) = v187;
      if (v187 >= 0.0)
      {
        v189 = 1;
      }

      else
      {
        v189 = v184;
      }

      v180[v181++] = v189;
      v70 += 8;
    }

    while (v57 != v181);
    v80 = v57;
    LODWORD(v9) = v252;
    v5 = v253;
    v7 = v256;
    v6 = v257;
    v47 = v254;
    v190 = v249;
    while (2)
    {
      v191 = v80;
      v192 = v57--;
      if (v180[v57])
      {
        v193 = v192 < 2;
      }

      else
      {
        v193 = 1;
      }

      if (v193)
      {
LABEL_248:
        v80 = v191;
      }

      else
      {
        v194 = &v291[2 * v182 + 2 * v57];
        v195 = v180;
        v196 = v55;
        v197 = v182;
        v198 = v190;
        while (1)
        {
          if (*v195++)
          {
            if (!((*v194 ^ *v196) >> 16))
            {
              break;
            }
          }

          ++v197;
          v196 += 4;
          if (!--v198)
          {
            goto LABEL_248;
          }
        }

        v200 = &v291[2 * v197];
        if (v194[2] > v200[2])
        {
          v201 = *(v194 + 1);
          *v200 = *v194;
          *(v200 + 1) = v201;
        }

        v80 = v57;
        if (v192 != v191)
        {
          v180[v57] = 0;
          goto LABEL_248;
        }
      }

      --v190;
      if (v192 > 1)
      {
        continue;
      }

      break;
    }

    if (v80 >= 1)
    {
      v202 = 0;
      while (v180[v202])
      {
LABEL_257:
        if (++v202 >= v80)
        {
          goto LABEL_260;
        }
      }

      v203 = v80;
      while (1)
      {
        v204 = v203 - 1;
        if (v203 - 1 <= v202)
        {
          break;
        }

        if (v180[--v203])
        {
          v206 = &v291[2 * v182 + 2 * v204];
          v207 = *v206;
          v208 = v206[1];
          v209 = &v291[2 * v182 + 2 * v202];
          *v209 = v207;
          v209[1] = v208;
          --v80;
          goto LABEL_257;
        }
      }

      v80 = v202;
    }

LABEL_260:
    _Block_object_dispose(&v266, 8);
    _Block_object_dispose(v270, 8);
    _Block_object_dispose(v271, 8);
    _Block_object_dispose(v272, 8);
    _Block_object_dispose(v273, 8);
    _Block_object_dispose(&v274, 8);
    _Block_object_dispose(&v278, 8);
    if (v80 >= 1)
    {
      v76 = *(v258 + 24);
      v53 = v260;
      v58 = v261;
      goto LABEL_262;
    }

    v53 = v260;
    v58 = v261;
LABEL_303:
    v57 = v80;
    v11 = v251;
LABEL_304:
    v51 = v58 + v57;
    v283 = v51;
LABEL_305:
    if (v53 > 5)
    {
      break;
    }

    ++v53;
  }

  while (v51 < 50);
LABEL_307:
  v226 = *(v6 + 48);
  v227 = v7[2] + 48 * v9;
  v228 = *(v227 + 32) + (v5 >> 32) - (*(v227 + 16) + *v226);
  if (v228 >= 201)
  {
    v241 = *(v226 + 64);
    if (v241)
    {
      v242 = v51;
      DDLexemCacheItemResetForCapacity(v241, v51);
      DDLexemCacheItemSet(*(v226 + 64), v242, v291);
    }

    else
    {
      *(v226 + 64) = DDLexemCacheItemCreate(v51, v291);
    }

    *(v226 + 72) = v5;
  }

  else
  {
    v229 = *(v226 + 24);
    if (v229 <= v228)
    {
      v230 = v51;
      v229 = v228 + 8;
      if (*(v226 + 32))
      {
        v231 = malloc_type_malloc(8 * v229, 0x2004093837F09uLL);
        v232 = *(v226 + 32);
        v233 = *(v226 + 24) - v232;
        memcpy(v231, (*(v226 + 8) + 8 * v232), 8 * v233);
        memcpy(&v231[8 * v233], *(v226 + 8), 8 * *(v226 + 32));
        free(*(v226 + 8));
        *(v226 + 8) = v231;
        *(v226 + 32) = 0;
      }

      else
      {
        v231 = malloc_type_realloc(*(v226 + 8), 8 * v229, 0x2004093837F09uLL);
        *(v226 + 8) = v231;
      }

      bzero(&v231[8 * *(v226 + 24)], 8 * (v229 - *(v226 + 24)));
      *(v226 + 24) = v229;
      v51 = v230;
    }

    if (*(v226 + 16) <= v228)
    {
      *(v226 + 16) = v228 + 1;
    }

    v234 = *(v226 + 32);
    v235 = *(v226 + 48);
    if (v235 < 0)
    {
      v238 = v51;
      v237 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
      DDLexemCacheItemReset(v237);
      v51 = v238;
    }

    else
    {
      v236 = *(v226 + 40);
      v237 = *(v236 + 8 * v235);
      *(v236 + 8 * v235) = 0;
      *(v226 + 48) = v235 - 1;
    }

    if (v234 + v228 >= v229)
    {
      v239 = v229;
    }

    else
    {
      v239 = 0;
    }

    *(*(v226 + 8) + 8 * (v234 + v228 - v239)) = v237;
    DDLexemCacheItemSet(v237, v51, v291);
    v7 = v256;
  }

  DDLexemCacheGetLexems(*(v6 + 48), v7[2], v5, v3, &v283);
  return v283;
}

uint64_t DDTokenCacheGetTokenOrSubtokenAfterPosition(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a3 >> 16;
  v6 = a2[2] + 48 * v5;
  if (*(v6 + 32) + (a3 >> 32) - *(v6 + 16) < a1[2])
  {
    v7 = *a1;
    Offset = matchingTokenRealIndexForQueryOffset(*a1, a3, 1);
    v9 = _tokenEntryAtRealIndex(v7, Offset);
    if (v9)
    {
      return *v9;
    }

    return 4294901760;
  }

  v31 = 0;
  TokensAtPosition = DDTokenCacheGetTokensAtPosition(a1, a2, a3, &v31);
  if (TokensAtPosition < 1)
  {
    v20 = a3 >> 32;
  }

  else
  {
    v13 = v31;
    v10 = *v31;
    if ((*v31 ^ a3) < 0x10000)
    {
      if (TokensAtPosition != 1)
      {
        return v13[2];
      }

      return v10;
    }

    if (TokensAtPosition != 1)
    {
      v14 = v31 + 2;
      v15 = 1;
      do
      {
        v16 = *v14;
        v14 += 2;
        v10 = v16;
        v17 = v16 >> 16;
        if (v17 >= v5)
        {
          v18 = v17 <= v5 && SHIDWORD(v10) < SHIDWORD(a3);
          if (!v18)
          {
            return v10;
          }
        }
      }

      while (TokensAtPosition != ++v15);
    }

    v19 = v31[1];
    v5 = v19 >> 16;
    v20 = v19 >> 32;
  }

  v21 = a1[2];
  v22 = a2[2];
  v23 = v20 + *(v22 + 48 * v5 + 32) - (v21 + *(v22 + 48 * v5 + 16));
  if (v23 > 199)
  {
    return 4294901760;
  }

  v24 = *(v22 + 48 * a2[4] - 16) - v21 + *(v22 + 48 * a2[4] - 24);
  v25 = v24 >= 200 ? 200 : v24;
  if (v24 < v23)
  {
    return 4294901760;
  }

  v26 = 0;
  v10 = 4294901760;
  do
  {
    IfNeeded = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, v23);
    if (!IfNeeded)
    {
      break;
    }

    v28 = *IfNeeded;
    if ((*IfNeeded & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    if (v26)
    {
      return v10;
    }

    _FillNextTokenInCache(a1, a2, v23);
    IfNeeded = DDTokenCacheGetItemAtIndexCreateIfNeeded(a1, v23);
    if (!IfNeeded)
    {
      return v10;
    }

    v28 = *IfNeeded;
    v26 = 1;
    if ((*IfNeeded & 0x80000000) == 0)
    {
LABEL_42:
      v29 = v28 << 16 >> 48;
      if (v29 >= 1)
      {
        if (v29 != 1)
        {
          v13 = IfNeeded[1];
          return v13[2];
        }

        return IfNeeded[1];
      }
    }

    v18 = v23++ < v25;
  }

  while (v18);
  return v10;
}

BOOL DDScannerScanQuery(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v4 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1BCFDD000, v4, OS_LOG_TYPE_ERROR, "DDScannerScanQuery called with NULL scanner", &buf, 2u);
    }

    return 0;
  }

  v2 = a1;
  if (*(a1 + 233) != 1)
  {
    *(a1 + 233) = 1;
    DDScannerReset(a1);
    if (*(v2 + 40) || (v7 = DDTokenCacheCreate(0), *(v2 + 40) = v7, *(v2 + 236) = 0, v7))
    {
      if (a2 && a2[4])
      {
        kdebug_trace();
        v8 = CFRetain(a2);
        *(v2 + 56) = v8;
        v9 = *(v2 + 24);
        v10 = *(v9 + 24);
        if (v10 != v8)
        {
          if (v10)
          {
            CFRelease(v10);
          }

          *(v9 + 24) = v8;
          if (v8)
          {
            CFRetain(v8);
          }
        }

        *(v9 + 40) = -1;
        v11 = *(v2 + 56);
        v12 = v11[2];
        v13 = *(v12 + 40);
        v14 = v13 << 38 >> 38;
        if ((v13 << 6) >> 6 >= 1)
        {
          v15 = 0;
          while (1)
          {
            DDTokenCacheGetTokenOrSubtokenAtPosition(*(v2 + 40), v11, v15 << 32);
            if (v16 >> 32 <= v15)
            {
              ++v15;
            }

            else
            {
              v15 = v16 >> 32;
            }

            v17 = *(v2 + 40);
            v18 = *(*(v2 + 56) + 16);
            if (v15 >= v14)
            {
              break;
            }

            DDTokenCacheMoveStreamOffset(v17, v18, v15 << 32);
            v11 = *(v2 + 56);
          }

          DDTokenCacheMoveStreamOffset(v17, v18, v14 << 32);
        }

        v92 = a2;
        v19 = (*(v12 + 16) + v14);
        v20 = *(v2 + 200);
        if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 0 && !*(v2 + 128))
        {
          goto LABEL_38;
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (*(v2 + 136) >= Current + -9.0)
        {
          goto LABEL_38;
        }

        *(v2 + 136) = Current;
        if ((v20 & 4) != 0)
        {
          v22 = *(v2 + 128);
          if (v22)
          {
            DDLookupTableUpdateFromExternalFile(5, (v2 + 104), v22);
          }
        }

        if (v20)
        {
          DDLookupTableUpdateFromExternalFile(6, (v2 + 80), 0);
          if ((v20 & 2) == 0)
          {
LABEL_35:
            if ((v20 & 8) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_138;
          }
        }

        else if ((v20 & 2) == 0)
        {
          goto LABEL_35;
        }

        if (!altPath)
        {
          v88 = CFPreferencesCopyAppValue(@"LookupSuggestionsDisabled", @"com.apple.lookup.shared");
          if (v88)
          {
            v89 = v88;
            v90 = CFGetTypeID(v88);
            if (v90 == CFBooleanGetTypeID())
            {
              Value = CFBooleanGetValue(v89);
              CFRelease(v89);
              if (Value)
              {
                _DDScannerDestroyOptionalLookupTable(v2, 2);
                _DDScannerDestroyOptionalLookupTable(v2, 3);
                if ((v20 & 8) != 0)
                {
LABEL_138:
                  DDLookupTableUpdateFromExternalFile(4, (v2 + 112), 0);
                  if ((v20 & 0x80) != 0)
                  {
LABEL_37:
                    DDLookupTableUpdateFromExternalFile(1, (v2 + 120), 0);
                  }

LABEL_38:
                  *(v2 + 232) &= ~2u;
                  *(v2 + 232) &= ~1u;
                  *(v2 + 176) = -1;
                  v23 = *(v2 + 224);
                  v24 = 0.0;
                  if (v23 > 0.0)
                  {
                    v24 = v23 + CFAbsoluteTimeGetCurrent();
                  }

                  v93 = v14;
                  CFArrayRemoveAllValues(*(v2 + 168));
                  if (*(v2 + 192) >> 31)
                  {
                    CFArrayRemoveAllValues(*(v2 + 160));
                  }

                  malloc_make_nonpurgeable(*(v2 + 208));
                  TokenOrSubtokenAfterPosition = DDTokenCacheGetTokenOrSubtokenAfterPosition(*(v2 + 40), *(v2 + 56), v19 << 32);
                  v95 = *(*(v2 + 56) + 32);
                  v96 = v26;
                  if (v95 >= 1)
                  {
                    v27 = TokenOrSubtokenAfterPosition;
                    v28 = 0;
                    v94 = v19;
                    while (1)
                    {
                      if (*(v2 + 232))
                      {
                        goto LABEL_116;
                      }

                      v29 = *(*(v2 + 56) + 16) + 48 * v28;
                      v30 = *(v29 + 16);
                      v31 = *(v29 + 24);
                      if (v28)
                      {
                        v32 = v30;
                      }

                      else
                      {
                        v32 = v94;
                      }

                      v33 = v31 + v30;
                      if (v31 < 0 || v30 < 0 || v33 >= 2147483646)
                      {
                        if (DDLogHandle_onceToken != -1)
                        {
                          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                        }

                        v34 = DDLogHandle_error_log_handle;
                        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf) = 0;
                          _os_log_error_impl(&dword_1BCFDD000, v34, OS_LOG_TYPE_ERROR, "Fragment is too long for DD, ignoring. Do you really need to analyze something this long?", &buf, 2u);
                        }

                        *(v2 + 232) |= 1u;
                      }

                      if (v32 <= v33)
                      {
                        break;
                      }

LABEL_57:
                      if (++v28 == v95)
                      {
                        goto LABEL_116;
                      }
                    }

                    v98 = v33;
                    v99 = v28 << 16;
                    v102 = v28 << 16;
                    v35 = v28;
                    v97 = v28;
                    while (1)
                    {
                      if (*(v2 + 232))
                      {
                        goto LABEL_57;
                      }

                      v36 = v35;
                      v37 = v102 | (v32 << 32);
                      v38 = *(v2 + 216);
                      if (v38 && !(*(v38 + 16))(v38, v102 | (v32 << 32)))
                      {
                        goto LABEL_96;
                      }

                      if (*(v2 + 192))
                      {
                        v59 = *(v2 + 168);
                        Count = CFArrayGetCount(v59);
                        if (Count > 10)
                        {
                          goto LABEL_96;
                        }

                        v61 = Count;
                        if (Count >= 1)
                        {
                          v101 = v27;
                          v62 = 0;
                          v63 = 1;
                          do
                          {
                            ValueAtIndex = CFArrayGetValueAtIndex(v59, v62);
                            if (!ValueAtIndex)
                            {
                              break;
                            }

                            v65 = ValueAtIndex;
                            if (!_typesAreEqual(ValueAtIndex[8], @"Compatibility") && !_typesAreEqual(v65[8], @"Data") && !_typesAreEqual(v65[8], @"Tag") && !_typesAreEqual(v65[8], @"Generic"))
                            {
                              break;
                            }

                            v63 = ++v62 < v61;
                          }

                          while (v61 != v62);
                          v27 = v101;
                          v33 = v98;
                          if (v63)
                          {
LABEL_96:
                            *(v2 + 232) |= 1u;
                            v35 = v36;
                            goto LABEL_97;
                          }
                        }
                      }

                      *(v2 + 184) = 0;
                      DDTokenCacheMoveStreamOffset(*(v2 + 40), *(*(v2 + 56) + 16), v37);
                      v40 = *(*(v2 + 56) + 16);
                      v35 = v36;
                      v41 = *(v40 + 48 * v36 + 32) + v32 - *(v40 + 48 * v36 + 16);
                      if (v99 >= 0x10000 || v32 > *(v40 + 16))
                      {
                        --v41;
                      }

                      v42 = *(v2 + 48);
                      v43 = v41 - *v42;
                      if (v43 >= 1)
                      {
                        v100 = v27;
                        v44 = *(v42 + 16);
                        if (v43 >= v44)
                        {
                          v45 = *(v42 + 16);
                        }

                        else
                        {
                          v45 = v43;
                        }

                        if (v44 >= 1)
                        {
                          v46 = 0;
                          if (v45 <= 1)
                          {
                            v47 = 1;
                          }

                          else
                          {
                            v47 = v45;
                          }

                          do
                          {
                            v49 = *(v42 + 24);
                            v48 = *(v42 + 32);
                            if (v46 + v48 < v49)
                            {
                              v49 = 0;
                            }

                            v50 = v46 + v48 - v49;
                            v51 = *(v42 + 8);
                            v52 = *(v51 + 8 * v50);
                            if (v52)
                            {
                              DDLexemCacheItemReset(*(v51 + 8 * v50));
                              DDLexemCacheInsertItemInFreeArray(v42, v52);
                              *(*(v42 + 8) + 8 * v50) = 0;
                            }

                            ++v46;
                          }

                          while (v47 != v46);
                        }

                        v53 = *(v42 + 24);
                        v54 = *(v42 + 32) + v45;
                        *(v42 + 32) = v54;
                        v55 = v54 < v53;
                        v56 = v54 - v53;
                        if (!v55)
                        {
                          *(v42 + 32) = v56;
                        }

                        *(v42 + 16) -= v45;
                        *v42 += v45;
                        v28 = v97;
                        v33 = v98;
                        v27 = v100;
                        v35 = v36;
                      }

                      buf = 0uLL;
                      v104 = v102 | (v32 << 32);
                      v105 = 0;
                      _DDScannerHandleState(v2, &buf, 0, v39);
                      if ((~v27 & 0xFFFF0000) != 0)
                      {
                        if (v35 < v27 >> 16 || v35 <= v27 >> 16 && v32 < SHIDWORD(v27))
                        {
                          goto LABEL_109;
                        }

                        v32 = v96 >> 32;
                        v27 = DDTokenCacheGetTokenOrSubtokenAfterPosition(*(v2 + 40), *(v2 + 56), v96);
                      }

                      else
                      {
                        v57 = DDTokenCacheGetTokenOrSubtokenAfterPosition(*(v2 + 40), *(v2 + 56), v37);
                        v27 = v57;
                        if ((~v57 & 0xFFFF0000) == 0)
                        {
                          v96 = v58;
LABEL_109:
                          ++v32;
                          goto LABEL_97;
                        }

                        if (v35 >= v57 >> 16 && (v35 > v57 >> 16 || v32 > SHIDWORD(v57)))
                        {
                          v96 = v102 | (v32 << 32);
                          v27 = v96;
                          goto LABEL_97;
                        }
                      }

                      v96 = v58;
LABEL_97:
                      if (v23 > 0.0 && (v32 & 0x7FF) == 0 && v24 < CFAbsoluteTimeGetCurrent())
                      {
                        *(v2 + 232) |= 1u;
                        if (DDLogHandle_onceToken != -1)
                        {
                          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                        }

                        v66 = DDLogHandle_error_log_handle;
                        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(buf) = 134217984;
                          *(&buf + 4) = v2;
                          _os_log_impl(&dword_1BCFDD000, v66, OS_LOG_TYPE_DEFAULT, "DDScanner %p has timed out", &buf, 0xCu);
                        }
                      }

                      if (v32 > v33)
                      {
                        goto LABEL_57;
                      }
                    }
                  }

LABEL_116:
                  malloc_make_purgeable(*(v2 + 208));
                  v67 = CFArrayGetCount(*(v2 + 168));
                  v68 = v67;
                  v5 = v67 > 0;
                  if (v93 >= 1 && v67 > 0)
                  {
                    v69 = *(v2 + 168);
                    if (v69)
                    {
                      _offsetResultsInArray(v69, v93);
                    }
                  }

                  if (*(v2 + 236))
                  {
                    DDTokenCacheDestroy(*(v2 + 40));
                    *(v2 + 40) = 0;
                    *(v2 + 236) = 0;
                  }

                  kdebug_trace();
                  LOBYTE(buf) = 0;
                  if ((*(v2 + 232) & 1) == 0)
                  {
                    v71 = *(v2 + 248);
                    if (v71)
                    {
                      if (!*(v2 + 264))
                      {
                        if (!*(v2 + 256))
                        {
                          goto LABEL_151;
                        }

                        if (DDMLEnhancementEnabled_onceToken != -1)
                        {
                          dispatch_once(&DDMLEnhancementEnabled_onceToken, &__block_literal_global_55);
                        }

                        if (!DDMLEnhancementEnabled__isDDMLEnabled)
                        {
                          goto LABEL_151;
                        }

                        gotLoadHelper_x8__kMRLNeuralNetworkOptionModelURLKey(v70);
                        if (!**(v73 + 2080))
                        {
                          goto LABEL_151;
                        }

                        v71 = *(v2 + 248);
                      }

                      if (v71 == 2)
                      {
                        if (v68 < 1)
                        {
                          v5 = 0;
                          goto LABEL_151;
                        }
                      }

                      else if (v68 < 1 || v71 != 4)
                      {
                        goto LABEL_151;
                      }

                      CopyFullStringExcludingContext = DDScanQueryCopyFullStringExcludingContext(v92);
                      if (CopyFullStringExcludingContext)
                      {
                        v75 = CopyFullStringExcludingContext;
                        v76 = DDMLScannerScanStringAroundResults(v2, CopyFullStringExcludingContext, *(v2 + 168), &buf);
                        CFRelease(v75);
                        if (buf)
                        {
                          v5 = DDMLUpdateScannerResultsWithMLResults(v2, *(v2 + 56), v76, *(v2 + 272));
LABEL_165:
                          if (!v5)
                          {
                            DDScannerReset(v2);
                          }

                          if (!*(v2 + 233))
                          {
                            DDScannerThreadDebug(v2, 0);
                            return v5;
                          }

                          goto LABEL_168;
                        }
                      }
                    }
                  }

LABEL_151:
                  if (*(v2 + 248))
                  {
                    if ((*(v2 + 195) & 0x20) == 0)
                    {
                      v77 = *(v2 + 168);
                      if (v77)
                      {
                        v78 = CFArrayGetCount(v77);
                        if (v78 >= 1)
                        {
                          v79 = v78;
                          v80 = 0;
                          v81 = 0;
                          v82 = -1;
                          v83 = -1000000;
                          while (1)
                          {
                            v84 = CFArrayGetValueAtIndex(*(v2 + 168), v80);
                            v85 = v84;
                            v86 = v84[6];
                            if (v84[4] <= v82)
                            {
                              if (DDResultsCanShareRange(v81, v84))
                              {
                                goto LABEL_164;
                              }

                              if (v83 > v86)
                              {
                                CFArrayRemoveValueAtIndex(*(v2 + 168), v80);
                                --v79;
                                --v80;
                                goto LABEL_164;
                              }

                              if (v80 >= 1)
                              {
                                CFArrayRemoveValueAtIndex(*(v2 + 168), v80 - 1);
                                --v79;
                                v83 = v86;
                                v81 = v85;
                                --v80;
                                goto LABEL_164;
                              }
                            }

                            else
                            {
                              v82 = v84[4];
                            }

                            v83 = v86;
                            v81 = v85;
LABEL_164:
                            if (++v80 >= v79)
                            {
                              goto LABEL_165;
                            }
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_165;
                }

LABEL_36:
                if ((v20 & 0x80) == 0)
                {
                  goto LABEL_38;
                }

                goto LABEL_37;
              }
            }

            else
            {
              CFRelease(v89);
            }
          }
        }

        DDLookupTableUpdateFromExternalFile(2, (v2 + 88), 0);
        DDLookupTableUpdateFromExternalFile(3, (v2 + 96), 0);
        if ((v20 & 8) != 0)
        {
          goto LABEL_138;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v72 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_1BCFDD000, v72, OS_LOG_TYPE_ERROR, "DDScannerScanQuery called with NULL token cache", &buf, 2u);
      }
    }

    if (!*(v2 + 233))
    {
      a1 = v2;
      v3 = 0;
      goto LABEL_4;
    }

    v5 = 0;
LABEL_168:
    *(v2 + 233) = 0;
    return v5;
  }

  v3 = 1;
LABEL_4:
  DDScannerThreadDebug(a1, v3);
  return 0;
}

double _DDScannerHandleState(uint64_t a1, uint64_t *a2, int a3, double result)
{
  v106 = *MEMORY[0x1E69E9840];
  if (*(a1 + 184) > 30000)
  {
    return result;
  }

  while (2)
  {
    v6 = a2[2];
    v5 = a2[3];
    v98 = a2[1];
    v99 = *a2;
    v104 = 0;
    v7 = computeLexemsAtPosition(a1);
    if (v7 >= 50 && (*(a1 + 232) & 2) == 0)
    {
      CopySubStringFromPos = DDScanQueryCopySubStringFromPos(*(a1 + 56), v6);
      CFRelease(CopySubStringFromPos);
      *(a1 + 232) |= 2u;
    }

    v8 = v5 << 16 >> 48;
    v9 = v5;
    if ((v5 - 7901) < 0xFFFFFFFFFFFFE0BFLL)
    {
      v15 = 0;
      goto LABEL_118;
    }

    v10 = *(a1 + 208);
    if (!v10)
    {
      v15 = 0;
      goto LABEL_118;
    }

    v11 = v10 + v5;
    v12 = *(*(a1 + 16) + 8);
    v13 = (*(v12 + 8) + 4 * v8);
    if (v7 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = v104;
      while (1)
      {
        v19 = (v18 + 32 * (v7 - 1));
        v20 = *v19;
        LODWORD(result) = *(v19 + 2);
        v21 = *(v19 + 3);
        v22 = *(v19 + 1);
        v91 = v16 <= *v19;
        v16 = *v19;
        if (v91)
        {
          v17 = 0;
        }

        v23 = v13[1];
        if ((v16 - 1) > 6)
        {
          if (v20 << 48 == 0x28000000000000 && (v23 & 0x1000000) != 0)
          {
            goto LABEL_64;
          }
        }

        else if ((HIBYTE(v23) >> v16))
        {
          goto LABEL_64;
        }

        v25 = *v13;
        v26 = v25 << 40 >> 40;
        v27 = v25 << 40;
        v28 = ((v23 << 8) >> 8) - 1;
        if (v17 <= 0)
        {
          v29 = v28;
        }

        else
        {
          v29 = v17;
        }

        if (v29 == v27 >> 40)
        {
          v30 = (*(v12 + 16) + 4 * v26);
          v31 = *v30 >> 1;
          if (v31 != v16 && (v31 >= v16 || *(*(v12 + 24) + v26) + v31 < v16))
          {
            goto LABEL_64;
          }

          v32 = *v30;
          if (*v30)
          {
            goto LABEL_24;
          }

          goto LABEL_49;
        }

        if (v29 <= v26)
        {
          goto LABEL_64;
        }

        v34 = *(v12 + 16);
        v35 = (v34 + 4 * v26);
        v36 = *v35 >> 1;
        if (v36 > v16)
        {
          goto LABEL_64;
        }

        if (v36 == v16)
        {
          goto LABEL_48;
        }

        v37 = *(v12 + 24);
        if (*(v37 + v26) + v36 >= v16)
        {
          goto LABEL_48;
        }

        v35 = (v34 + 4 * v29);
        v38 = *v35 >> 1;
        if (v38 <= v16)
        {
          if (v38 != v16 && *(v37 + v29) + v38 < v16)
          {
            goto LABEL_64;
          }

          if (v16 > 0x28)
          {
            v17 = v29 - (v38 == v16);
          }

LABEL_48:
          v32 = *v35;
          if (*v35)
          {
            v33 = v35 + 1;
            goto LABEL_52;
          }

LABEL_49:
          v43 = (*(v12 + 40) + 2 * HIWORD(v32));
          v45 = *v43;
          v33 = v43 + 1;
          v44 = v45;
          if (v45)
          {
            goto LABEL_53;
          }

          goto LABEL_64;
        }

        v39 = v29 - 1;
        if (v39 <= v26)
        {
LABEL_38:
          if (v16 > 40)
          {
            v17 = v39;
          }

          goto LABEL_64;
        }

        v40 = v26 + 1;
        while (1)
        {
          v41 = (v39 + v40) / 2;
          v42 = *(v34 + 4 * v41) >> 1;
          if (v42 > v16)
          {
            v39 = v41 - 1;
            goto LABEL_37;
          }

          if (v42 == v16)
          {
            break;
          }

          if (*(v37 + v41) + v42 >= v16)
          {
            goto LABEL_68;
          }

          v40 = v41 + 1;
LABEL_37:
          if (v40 > v39)
          {
            goto LABEL_38;
          }
        }

        v42 = v16;
LABEL_68:
        if (v16 > 0x28)
        {
          v17 = v41 - (v42 == v16);
        }

        v32 = *(v34 + 4 * v41);
        if ((v32 & 1) == 0)
        {
          goto LABEL_49;
        }

        v30 = (v34 + 4 * v41);
LABEL_24:
        v33 = v30 + 1;
LABEL_52:
        v44 = 1;
LABEL_53:
        v46 = 0;
        v47 = v20 & 0xFFFFFFFFFFFF0000;
        v48 = (v16 << 17) | HIWORD(v21) & 1;
        do
        {
          v49 = v33[v46];
          if (v49)
          {
            if (v15 <= 99)
            {
              v53 = &v105[2 * v15];
              *v53 = v47;
              *(v53 + 2) = LODWORD(result);
              *(v53 + 3) = v48 | v49 & 0xFFFE | 0x10000;
              v53[1] = v22;
              ++v15;
            }
          }

          else if (v15 <= 99)
          {
            v50 = v49 >> 1;
            v51 = v14;
            while (v51 >= 1)
            {
              v52 = *(v10 + v5 - 2 + 2 * v51--);
              if (v50 == v52)
              {
                goto LABEL_63;
              }
            }

            HIDWORD(v105[2 * v15]) = HIDWORD(v105[2 * v15]) & 0xFFFE0001 | v49;
            ++v15;
            *(v11 + 2 * v14++) = v50;
          }

LABEL_63:
          ++v46;
        }

        while (v46 != v44);
LABEL_64:
        v91 = v7-- <= 1;
        if (v91)
        {
          goto LABEL_73;
        }
      }
    }

    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
LABEL_73:
    v54 = *(v12 + 4);
    if (v16 <= v54)
    {
      v17 = 0;
    }

    v55 = v13[1];
    if ((v54 - 1) >= 7)
    {
      if (v54 == 40 && (v55 & 0x1000000) != 0)
      {
        goto LABEL_118;
      }
    }

    else if ((HIBYTE(v55) >> v54))
    {
      goto LABEL_118;
    }

    v56 = *v13;
    v57 = v56 << 40 >> 40;
    v58 = v56 << 40;
    v59 = ((v55 << 8) >> 8) - 1;
    if (v17 > 0)
    {
      v59 = v17;
    }

    if (v59 == v58 >> 40)
    {
      v60 = (*(v12 + 16) + 4 * v57);
      v61 = *v60;
      if (v54 != v61 >> 1)
      {
        v74 = v61 >> 1;
        if (v54 <= v74 || *(*(v12 + 24) + v57) + v74 < v54)
        {
          goto LABEL_118;
        }
      }

      v62 = *v60;
      if (*v60)
      {
        v63 = (v60 + 1);
        goto LABEL_109;
      }

      goto LABEL_106;
    }

    if (v59 <= v57)
    {
      goto LABEL_118;
    }

    v64 = *(v12 + 16);
    v65 = (v64 + 4 * v57);
    v66 = *v65;
    if (v54 < (v66 >> 1))
    {
      goto LABEL_118;
    }

    v67 = v66 >> 1;
    if (v54 == v66 >> 1)
    {
      goto LABEL_105;
    }

    v68 = *(v12 + 24);
    if (*(v68 + v57) + v67 >= v54)
    {
      goto LABEL_105;
    }

    v65 = (v64 + 4 * v59);
    v69 = *v65;
    if (v54 >= v69 >> 1)
    {
      if (v54 != v69 >> 1 && *(v68 + v59) + (v69 >> 1) < v54)
      {
        goto LABEL_118;
      }

LABEL_105:
      v62 = *v65;
      if (*v65)
      {
        v63 = (v65 + 1);
        goto LABEL_109;
      }

LABEL_106:
      v75 = (*(v12 + 40) + 2 * HIWORD(v62));
      v77 = *v75;
      v63 = (v75 + 1);
      v76 = v77;
      if (v77)
      {
        goto LABEL_110;
      }

      goto LABEL_118;
    }

    v70 = v59 - 1;
    if (v70 <= v57)
    {
      goto LABEL_118;
    }

    v71 = v57 + 1;
    while (1)
    {
      v72 = (v70 + v71) / 2;
      v73 = *(v64 + 4 * v72);
      if (v54 >= (v73 >> 1))
      {
        break;
      }

      v70 = v72 - 1;
LABEL_98:
      if (v71 > v70)
      {
        goto LABEL_118;
      }
    }

    if (v54 != v73 >> 1 && *(v68 + v72) + (v73 >> 1) < v54)
    {
      v71 = v72 + 1;
      goto LABEL_98;
    }

    v62 = *(v64 + 4 * v72);
    if ((v62 & 1) == 0)
    {
      goto LABEL_106;
    }

    v63 = v64 + 4 * v72 + 2;
LABEL_109:
    v76 = 1;
LABEL_110:
    v78 = 0;
    v79 = v10 + v5 - 2;
    do
    {
      if (v15 <= 99)
      {
        v80 = *(v63 + 2 * v78);
        v81 = v80 >> 1;
        v82 = v14;
        while (v82 >= 1)
        {
          v83 = *(v79 + 2 * v82--);
          if (v81 == v83)
          {
            goto LABEL_117;
          }
        }

        HIDWORD(v105[2 * v15]) = HIDWORD(v105[2 * v15]) & 0xFFFE0001 | v80 & 0xFFFE;
        ++v15;
        *(v11 + 2 * v14++) = v81;
      }

LABEL_117:
      ++v78;
    }

    while (v78 != v76);
LABEL_118:
    v84 = v5 >> 48;
    if (a3 > 69)
    {
      goto LABEL_139;
    }

    v85 = *(a1 + 176);
    if (v85 < 0)
    {
      goto LABEL_120;
    }

    if (v85 < v5)
    {
LABEL_139:
      if (v15 >= 1)
      {
        v15 = 1;
      }

      if ((*(a1 + 232) & 2) == 0)
      {
        *(a1 + 232) |= 2u;
      }

      v86 = v15 - 1;
      goto LABEL_129;
    }

    *(a1 + 176) = -1;
LABEL_120:
    v86 = v15 - 1;
    if (v15 <= 1)
    {
LABEL_129:
      if (v15 < 1)
      {
        return result;
      }

      v102 = 0u;
      v103 = 0u;
      v92 = &v105[2 * v86];
      v93 = v92[1];
      v100 = *v92;
      v101 = v93;
      if (!processToken(a1, v8, v6, v84, v99, v98, v9, &v100, &v102))
      {
        return result;
      }

      result = *&v102;
      v94 = v103;
      *a2 = v102;
      *(a2 + 1) = v94;
      if (*(a1 + 184) >= 30001)
      {
        return result;
      }

      continue;
    }

    break;
  }

  v87 = v105;
  v88 = v15 - 1;
  while (1)
  {
    v89 = v87[1];
    v100 = *v87;
    v101 = v89;
    v102 = 0u;
    v103 = 0u;
    if (processToken(a1, v8, v6, v84, v99, v98, v9, &v100, &v102))
    {
      v100 = v102;
      v101 = v103;
      result = _DDScannerHandleState(a1, &v100, a3 + 1, *&v102);
    }

    v90 = *(a1 + 176);
    v91 = v90 >= 1 && v90 < v9;
    if (v91)
    {
      return result;
    }

    v87 += 2;
    if (!--v88)
    {
      goto LABEL_129;
    }
  }
}

BOOL DDScannerScanStringWithRangeAndContextOffset(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v10 = os_signpost_id_generate(DDLogHandle_error_log_handle);
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = DDLogHandle_error_log_handle;
    if (os_signpost_enabled(DDLogHandle_error_log_handle))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v10, "datadetectors.scanString", &unk_1BD01C96D, buf, 2u);
    }
  }

  if (!a1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v14 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_1BCFDD000, v14, OS_LOG_TYPE_ERROR, "DDScannerScanStringWithRange called with NULL scanner", v23, 2u);
    }

    return 0;
  }

  if (*(a1 + 233) == 1)
  {
    v12 = a1;
    v13 = 1;
LABEL_23:
    DDScannerThreadDebug(v12, v13);
    return 0;
  }

  *(a1 + 233) = 1;
  if (a2 && a4 != a5)
  {
    v16 = *(a1 + 64);
    if (v16)
    {
      DDScanQueryReset(v16);
      DDScanQueryAddTextFragment(*(a1 + 64), a2, a3, a4, 0, 0, 0);
      if (!a5)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *(a1 + 64) = DDScanQueryCreateFromString(0, a2, a3, a4);
      if (!a5)
      {
LABEL_30:
        v20 = *(a1 + 40);
        if (v20)
        {
          *(v20 + 392) = 0;
        }

        if (*(a1 + 233))
        {
          *(a1 + 233) = 0;
        }

        else
        {
          DDScannerThreadDebug(a1, 0);
        }

        v15 = DDScannerScanQuery(a1, *(a1 + 64));
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v21 = DDLogHandle_error_log_handle;
          if (os_signpost_enabled(DDLogHandle_error_log_handle))
          {
            *v22 = 0;
            _os_signpost_emit_with_name_impl(&dword_1BCFDD000, v21, OS_SIGNPOST_INTERVAL_END, v10, "datadetectors.scanString", &unk_1BD01C96D, v22, 2u);
          }
        }

        return v15;
      }
    }

    v18 = *(a1 + 64);
    if (*(v18 + 32) == 1)
    {
      v19 = *(v18 + 16);
      if (v19)
      {
        *(v19 + 40) = *(v19 + 40) & 0xFC000000 | a5 & 0x3FFFFFF;
      }
    }

    goto LABEL_30;
  }

  DDScannerReset(a1);
  if (!*(a1 + 233))
  {
    v12 = a1;
    v13 = 0;
    goto LABEL_23;
  }

  v15 = 0;
  *(a1 + 233) = 0;
  return v15;
}

uint64_t DDLexerDeterministicScan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v78 = *MEMORY[0x1E69E9840];
  v8 = 16 * a4;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v61 - 2 * v10;
  v13 = v12 >> 16;
  if (v13 == *(v9 + 40))
  {
    v14 = *(a1 + 32);
  }

  else
  {
    v15 = *(*(a1 + 24) + 16) + 48 * v13;
    *(a1 + 40) = v13;
    *(a1 + 48) = (*(v15 + 40) & 0x40000000) != 0;
    v14 = CFStringOpenUText();
    *(a1 + 32) = v14;
  }

  utext_setNativeIndex(v14, a2 >> 32);
  v16 = *(a1 + 56);
  v17 = *(v16 + 8);
  v67 = *(v16 + 16);
  v71 = *(v17 + 4);
  v75 = a1;
  v76 = a2;
  v77 = *(*(*(a1 + 24) + 16) + 48 * v13 + 16);
  v18 = *(a1 + 8);
  if (!v18)
  {
    return 0;
  }

  v19 = v18(*(a1 + 16), a2);
  v21 = v20;
  Next = getNext(&v75);
  if (!*(a1 + 56) || Next == -1)
  {
    return 0;
  }

  v73 = Next;
  v63 = a3;
  v70 = v17 + 16;
  bzero(v11, v8);
  v72 = 0;
  v23 = 0;
  v68 = 0;
  v24 = 0;
  v25 = 0;
  v69 = v17 + 22;
  v26 = v11;
  v27 = -1;
  v28 = 4294901760;
  v29 = v71;
  v62 = v26;
  v66 = v26;
  do
  {
    v30 = v73;
    if (v73 != -1)
    {
      if (v23)
      {
        v74 = 0x100000001;
        v31 = v72;
        goto LABEL_25;
      }

      if (!HIWORD(v73))
      {
        v32 = *(*(a1 + 56) + 72);
        if ((v73 & 0xFC00) == 0xD800)
        {
          v33 = 320;
        }

        else
        {
          v33 = 0;
        }

        v34 = v33 + (v73 >> 5);
        goto LABEL_21;
      }

      if (HIWORD(v73) > 0x10u)
      {
        v32 = *(a1 + 56);
      }

      else
      {
        v35 = (*(*(a1 + 56) + 88))(*(*(*(a1 + 56) + 72) + 2 * (((v73 >> 10) & 0x1F) + 4 * *(*(*(a1 + 56) + 72) + 2 * (((v73 >> 10) + 55232) >> 5)))));
        v32 = *(a1 + 56);
        if (v35 >= 1)
        {
          v32 = *(v32 + 72);
          v34 = v35 + ((v30 >> 5) & 0x1F);
LABEL_21:
          LOWORD(v32) = *(v32 + 2 * ((v30 & 0x1F) + 4 * *(v32 + 2 * v34)));
LABEL_24:
          v74 = 0;
          v31 = v32 & 0xBFFF;
          goto LABEL_25;
        }
      }

      LODWORD(v32) = *(v32 + 104);
      goto LABEL_24;
    }

    if (v23 == 1)
    {
      break;
    }

    v74 = 0x100000001;
    v31 = 1;
LABEL_25:
    v36 = *(v69 + v29 + 2 * (v31 >> 5));
    v37 = *(v69 + v29 + 2 * (v31 >> 5));
    v72 = v31;
    if (v36 < 0)
    {
      v38 = v37 & 0x7FFF;
    }

    else
    {
      v38 = *(v67 + 2 * (v31 & 0x1F | (32 * v37)));
    }

    v29 = (v38 * v71);
    v39 = (v70 + v29);
    if (v27 < 0)
    {
      v27 = -1;
    }

    else if (v38 != v27)
    {
      v40 = *v39 == -1 ? v39[2] : -1;
      v27 = -1;
      if ((~v28 & 0xFFFF0000) != 0)
      {
        v41 = v68;
        if (v68 != v40)
        {
          v42 = v66;
          *v66 = v28;
          *(v42 + 2) = v41;
          v66 = v42 + 2;
          --v4;
          v25 = (v25 + 1);
        }
      }
    }

    if (*v39 == -1)
    {
      v68 = v39[2];
      v28 = v76;
      if ((~v19 & 0xFFFF0000) != 0)
      {
        v64 = v25;
        v65 = v4;
        v43 = 0;
        v44 = v76 >> 16;
        v45 = HIDWORD(v76);
        while ((v28 ^ v19) >= 0x10000)
        {
          v46 = v19 >> 16;
          if ((v46 < v44 || v46 <= v44 && SHIDWORD(v19) < v45) && v44 >= v21 >> 16 && (v44 > v21 >> 16 || v45 >= SHIDWORD(v21)))
          {
            if (!((v28 ^ v21) >> 16))
            {
              v43 = 1;
            }

            v19 = (*(a1 + 8))(*(a1 + 16), v28);
            v21 = v47;
            if ((~v19 & 0xFFFF0000) != 0)
            {
              continue;
            }
          }

          if (!v43)
          {
            v27 = v38;
            v25 = v64;
            v4 = v65;
            goto LABEL_58;
          }

          break;
        }

        v27 = -1;
        v25 = v64;
        v4 = v65;
        if (v68 != -1 && v65 >= 1 && (v28 & 0xFFFF0000) != 0xFFFF0000)
        {
          v48 = v66;
          *v66 = v28;
          *(v48 + 2) = v68;
          v66 = v48 + 2;
          v25 = (v25 + 1);
          --v4;
        }

        v28 = 4294901760;
      }

      else
      {
        v27 = v38;
      }
    }

LABEL_58:
    v49 = v74;
    if (!v38)
    {
      v49 = 1;
    }

    if (v49)
    {
      v23 = HIDWORD(v74);
      if (!v38)
      {
        break;
      }
    }

    else
    {
      v73 = getNext(&v75);
      v23 = HIDWORD(v74);
    }

    if (v4 < 1)
    {
      break;
    }
  }

  while (v24++ < 0x12C);
  if (v27 < 0 || (v51 = v68, v68 == -1))
  {
    v53 = v62;
    v52 = v63;
  }

  else
  {
    v53 = v62;
    v52 = v63;
    if (v4 >= 1 && (v28 & 0xFFFF0000) != 0xFFFF0000)
    {
      v54 = v66;
      *v66 = v28;
      *(v54 + 2) = v51;
      LODWORD(v25) = v25 + 1;
    }
  }

  result = v25;
  if (v25 >= 1)
  {
    v56 = (v52 + 8);
    v57 = (v53 + 1);
    v58 = v25;
    do
    {
      v59 = *(v57 - 1);
      v60 = *v57;
      v57 += 8;
      *(v56 - 1) = v59 & 0xFFFFFFFFFFFF0000 | v60;
      *v56 = 0;
      v56[1] = 0;
      v56[2] = 0;
      v56 += 4;
      --v58;
    }

    while (v58);
  }

  return result;
}

uint64_t processToken(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v9 = a7;
  v13 = a2;
  v15 = a9;
  v16 = *(a8 + 12);
  if ((v16 & 0x10000) != 0)
  {
    v24 = *(a8 + 16);
    v23 = *(a8 + 24);
    v25 = v16 & 1 | (v24 != 0) | (v23 != 0);
    v26 = *a8 & 0xFFFFFFFF00000000;
    v27 = 24;
    if (v25)
    {
      v27 = 48;
    }

    v28 = v27 + a7;
    if ((v27 + a7) > 0x1F40)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(a1 + 208) + a7;
      v9 = v28;
    }

    v30 = *(v29 + 12) & 0xF0;
    *(v29 + 8) = (a3 >> 16) & 0xFFFFFF | ((WORD1(*a8) - BYTE2(a3)) << 24);
    *v29 = v26 | HIDWORD(a3);
    *(v29 + 14) = -(v16 >> 17);
    v31 = v30 | v25;
    *(v29 + 12) = v30 | v25;
    *(v29 + 13) = 0;
    *(v29 + 16) = a5;
    if (v16 & 1 | (v24 != 0) | (v23 != 0))
    {
      *(v29 + 24) = 0;
      *(v29 + 32) = 0;
      *(v29 + 40) = 0;
      if (v16)
      {
        v32 = *(a8 + 8);
        v31 |= 2u;
        *(v29 + 12) = v31;
        *(v29 + 24) = v32;
      }

      if (v24)
      {
        v31 |= 8u;
        *(v29 + 12) = v31;
        *(v29 + 32) = v24;
      }

      if (v23)
      {
        *(v29 + 12) = v31 | 4;
        *(v29 + 40) = v23;
      }
    }

    v33 = *(a1 + 184);
    if (v33 > 30000)
    {
      return 0;
    }

    v34 = *(a8 + 12);
    v35 = *a8;
    *(a1 + 184) = v33 + 1;
    if ((v9 + 16) > 0x1F40)
    {
      return 0;
    }

    v36 = *(a1 + 208);
    if (!v36)
    {
      return 0;
    }

    v37 = v34 >> 1;
    v38 = (v36 + v9);
    *v38 = a6;
    v38[1] = a2;
    v39 = *(a1 + 56);
    v40 = v35 >> 16;
    v41 = *(v39 + 16);
    v42 = v41 + 48 * v40;
    if (*(v42 + 24) + *(v42 + 16) == v35 >> 32 && (*(v42 + 43) & 0x1C) == 0 && v40 < *(v39 + 32) - 1)
    {
      v35 = ((v40 << 16) + 0x10000) & 0xFFFF0000 | v35 | (*(v41 + 48 * (((v40 << 16) + 0x10000) >> 16) + 16) << 32);
    }

    *a9 = v29;
    a9[1] = v38;
    v43 = (a4 << 48) | (v37 << 32) | (v9 + 16);
    a9[2] = v35;
    goto LABEL_75;
  }

  v17 = *(a1 + 16);
  v18 = (*(v17 + 16) + 12 * (v16 >> 1));
  v19 = *(v18 + 10);
  if (*(v18 + 10))
  {
    v20 = *(v18 + 10);
    do
    {
      v21 = a6;
      a6 = *a6;
      --v20;
    }

    while (v20);
    v13 = v21[1];
  }

  if ((*(v18 + 11) & 2) != 0)
  {
    v22 = -1;
  }

  else
  {
    v22 = *(*(*(v17 + 8) + 64) + 4 * *(*(*(v17 + 8) + 56) + 4 * v13) + 4 * v18[3]) >> 17;
  }

  v44 = *(a1 + 192);
  v45 = (v44 & 0x40000000) == 0;
  if (*(v18 + 10))
  {
    v46 = (*a5 << 32) | (*(a5 + 8) << 16);
    v47 = ((*(a5 + 8) + (*(a5 + 8) >> 24)) << 16) | *a5 & 0xFFFFFFFF00000000;
    v45 = (v44 & 0x40000000) == 0 && *(a5 + 14) < 0;
    v48 = *(a5 + 16);
    v49 = v19 - 1;
    if (v19 != 1)
    {
      do
      {
        v50 = *(v48 + 8);
        v51 = v50 + (v50 >> 24);
        v52 = (*v48 << 32) | (v50 << 16);
        v53 = *v48 & 0xFFFFFFFF00000000 | ((v50 + (v50 >> 24)) << 16);
        v54 = v46 >> 16;
        if (SHIDWORD(v46) >= *v48)
        {
          v55 = (*v48 << 32) | (*(v48 + 8) << 16);
        }

        else
        {
          v55 = v46;
        }

        if (v54 <= v50)
        {
          v52 = v55;
        }

        if (v54 >= v50)
        {
          v46 = v52;
        }

        v56 = v47 >> 16;
        if (SHIDWORD(v47) >= HIDWORD(*v48))
        {
          v57 = v47;
        }

        else
        {
          v57 = v53;
        }

        if (v56 > v51)
        {
          v57 = v47;
        }

        if (v56 >= v51)
        {
          v47 = v57;
        }

        else
        {
          v47 = v53;
        }

        v45 = v45 && *(v48 + 14) < 0;
        v48 = *(v48 + 16);
        --v49;
      }

      while (v49);
    }
  }

  else
  {
    v46 = a3 & 0xFFFFFFFFFFFF0000;
    v48 = a5;
    v47 = a3 & 0xFFFFFFFFFFFF0000;
  }

  if ((*(v18 + 11) & 1) == 0)
  {
    if (v45)
    {
      goto LABEL_52;
    }

LABEL_61:
    if (v9 + 8 * v19 + 24 > 0x1F40)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(a1 + 208) + v9;
      v9 += 8 * v19 + 24;
    }

    v60 = *(v58 + 12);
    *(v58 + 8) = (v46 >> 16) & 0xFFFFFF | ((BYTE2(v47) - BYTE2(v46)) << 24);
    *v58 = v47 & 0xFFFFFFFF00000000 | HIDWORD(v46);
    *(v58 + 14) = v16 >> 1;
    *(v58 + 12) = v60 & 0xF0;
    *(v58 + 16) = v48;
    if (a5 && v19)
    {
      v61 = 0;
      do
      {
        *(v58 + 8 * v61++ + 24) = a5;
        if (v19 < 2)
        {
          break;
        }

        a5 = *(a5 + 16);
        --v19;
      }

      while (a5);
      *(v58 + 13) = v61;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

LABEL_70:
    v62 = *(a1 + 184);
    if (v62 > 30000)
    {
      return 0;
    }

    v63 = v18[2];
    *(a1 + 184) = v62 + 1;
    if ((v9 + 16) > 0x1F40)
    {
      return 0;
    }

    v64 = *(a1 + 208);
    if (!v64)
    {
      return 0;
    }

    v65 = v63 + a4;
    v66 = (v64 + v9);
    *v66 = a6;
    v66[1] = v13;
    v67 = *(a1 + 56);
    v68 = a3 >> 16;
    v69 = *(v67 + 16);
    v70 = v69 + 48 * v68;
    if (*(v70 + 24) + *(v70 + 16) == a3 >> 32 && (*(v70 + 43) & 0x1C) == 0 && v68 < *(v67 + 32) - 1)
    {
      a3 = ((v68 << 16) + 0x10000) & 0xFFFF0000 | a3 | (*(v69 + 48 * (((v68 << 16) + 0x10000) >> 16) + 16) << 32);
    }

    *v15 = v58;
    v15[1] = v66;
    v43 = (v22 << 32) | (v65 << 48) | (v9 + 16);
    v15[2] = a3;
LABEL_75:
    v15[3] = v43;
    return 1;
  }

  v76 = v18;
  v77 = v22;
  v78 = v13;
  v79 = a3;
  v80 = a4;
  v81 = 0;
  if (!DDTokenCacheGetTokensAtPosition(*(a1 + 40), *(a1 + 56), v46, &v81) || (*v81 ^ v46) >> 16 || (v81[1] ^ v47) >> 16)
  {
    return 0;
  }

  a4 = v80;
  v15 = a9;
  v13 = v78;
  a3 = v79;
  v18 = v76;
  v22 = v77;
  if (!v45)
  {
    goto LABEL_61;
  }

LABEL_52:
  if (*v18 != -1 || v18[1] != -1)
  {
    goto LABEL_61;
  }

  if (v9 >= 6001 && v19)
  {
    v72 = v19 - 1;
    if (v19 != 1)
    {
      do
      {
        a5 = *(a5 + 16);
        --v72;
      }

      while (v72);
    }

    if (a5)
    {
      *(a5 + 8) = (v46 >> 16) & 0xFFFFFF | ((BYTE2(v47) - BYTE2(v46)) << 24);
      *a5 = v47 & 0xFFFFFFFF00000000 | HIDWORD(v46);
      *(a5 + 14) = -1;
      v73 = *(a5 + 12);
      *(a5 + 12) = v73 & 0xF1;
      *(a5 + 13) = 0;
      *(a5 + 16) = v48;
      if (v73)
      {
        *(a5 + 24) = 0;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
      }
    }

    v74 = a5 - *(a1 + 208);
    v75 = *(a1 + 176);
    if (v75 < 0 || v74 < v75)
    {
      *(a1 + 176) = v74;
    }

    if (!a5)
    {
      return 0;
    }

    v9 = v74 + 48;
    v58 = a5;
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_70;
  }

  v58 = *(a1 + 208) + v9;
  v59 = *(v58 + 12);
  *(v58 + 8) = (v46 >> 16) & 0xFFFFFF | ((BYTE2(v47) - BYTE2(v46)) << 24);
  *v58 = v47 & 0xFFFFFFFF00000000 | HIDWORD(v46);
  v9 += 24;
  *(v58 + 14) = -1;
  *(v58 + 12) = v59 & 0xF0;
  *(v58 + 16) = v48;
  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_70;
  }

LABEL_95:
  if ((a4 & 0x8000000000000000) == 0)
  {
    DDInsertResultRec(a1, v58, v58, a4, 0xFFFF0000uLL, 0xFFFF0000uLL);
  }

  return 0;
}

uint64_t _fetchNextToken(uint64_t a1)
{
  v46[31] = *MEMORY[0x1E69E9840];
  if (*(a1 + 120))
  {
    return -1;
  }

  do
  {
    Token = NLStringTokenizerAdvanceToNextToken();
    if (Token)
    {
      break;
    }

    v3 = *(a1 + 112) + 1;
    if (v3 >= *(*(a1 + 32) + 32))
    {
      *(a1 + 120) = 1;
      return -1;
    }

    *(a1 + 112) = v3;
    NLStringTokenizerSetStringWithOptions();
    Token = NLStringTokenizerAdvanceToNextToken();
  }

  while (!Token);
  v4 = Token;
  if (*(a1 + 120))
  {
    return -1;
  }

  v5 = *(a1 + 88);
  v6 = *(a1 + 64);
  if (v5 + 1 < v6)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48) + 32 * v7;
  v43 = v7;
  if (*(v8 + 25))
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      free(v9);
      v6 = *(a1 + 64);
    }

    *(v8 + 24) = 0;
    *(v8 + 16) = 0;
    *(a1 + 96) = (v7 + 1) % v6;
    v10 = *(a1 + 80);
    v11 = v10 == 1;
    v12 = v10 < 1;
    v13 = v10 - 1;
    if (!v12)
    {
      *(a1 + 80) = v13;
      if (v11)
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v14 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BCFDD000, v14, OS_LOG_TYPE_ERROR, "We missed a token, because the cache was over used...", buf, 2u);
        }
      }
    }
  }

  else
  {
    ++*(a1 + 72);
    *(a1 + 96) = 0;
    *(v8 + 25) = 1;
  }

  v16 = *(a1 + 112);
  ++*(a1 + 104);
  CurrentTokenRange = NLStringTokenizerGetCurrentTokenRange();
  v19 = v18;
  v20 = CurrentTokenRange + v18;
  v21 = v16 << 16;
  v22 = v21 | (CurrentTokenRange << 32);
  v23 = v21 | ((CurrentTokenRange + v18) << 32);
  *v8 = v22;
  *(v8 + 8) = v23;
  if ((v4 & 6) != 0 && (CurrentSubTokens = NLStringTokenizerGetCurrentSubTokens(), CurrentSubTokens >= 1))
  {
    v25 = CurrentSubTokens;
    if (CurrentSubTokens > 0xF)
    {
      v28 = v43;
    }

    else
    {
      v26 = &buf[16 * CurrentSubTokens];
      v27 = *(v26 - 2) + *(v26 - 1);
      v28 = v43;
      if (v20 > v27)
      {
        *v26 = v27;
        *(v26 + 1) = v20 - v27;
        v25 = CurrentSubTokens + 1;
      }
    }

    v35 = malloc_type_calloc(v25, 0x20uLL, 0x10200406A33E52CuLL);
    *(v8 + 16) = v35;
    if (v35)
    {
      v36 = 0;
      v37 = v46;
      v38 = v25;
      do
      {
        v39 = *(v37 - 1);
        v40 = *v37;
        v37 += 4;
        v41 = *(v8 + 16) + v36;
        *v41 = v21 | (v39 << 32);
        *(v41 + 8) = v21 | ((v40 + v39) << 32);
        *(v41 + 16) = 0;
        *(v41 + 24) = 256;
        *(v41 + 26) = 0;
        *(v41 + 30) = 0;
        v36 += 32;
        --v38;
      }

      while (v38);
      *(v8 + 24) = v25;
    }
  }

  else
  {
    v29 = (*(*(a1 + 32) + 16) + 48 * v16);
    result = xmmword_1BD018B60;
    v47.location = CurrentTokenRange;
    v47.length = v19;
    if (CFStringFindWithOptions(*v29, @"'", v47, 0, &result) || (v48.location = CurrentTokenRange, v48.length = v19, CFStringFindWithOptions(*v29, @"’", v48, 0, &result)))
    {
      location = result.location;
      v31 = result.length + result.location;
      v32 = result.location <= CurrentTokenRange ? v20 > result.length + result.location : (v20 > result.length + result.location) + 1;
      if (v32)
      {
        v33 = malloc_type_calloc(v32, 0x20uLL, 0x10200406A33E52CuLL);
        *(v8 + 16) = v33;
        if (v33)
        {
          if (location <= CurrentTokenRange)
          {
            v34 = 0;
          }

          else
          {
            *v33 = v22;
            *(v33 + 1) = v21 | (location << 32);
            *(v33 + 2) = 0;
            *(v33 + 12) = 256;
            *(v33 + 26) = 0;
            *(v33 + 15) = 0;
            v34 = 1;
          }

          if (v20 > v31)
          {
            v42 = *(v8 + 16) + 32 * v34;
            *v42 = v21 | (v31 << 32);
            *(v42 + 8) = v23;
            *(v42 + 16) = 0;
            *(v42 + 24) = 256;
            *(v42 + 26) = 0;
            *(v42 + 30) = 0;
          }

          *(v8 + 24) = v32;
        }
      }
    }

    v28 = v43;
  }

  *(a1 + 88) = v28;
  return (v28 - *(a1 + 96) + *(a1 + 72)) % *(a1 + 72);
}

void *DDTokenCacheCreate(const void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x80uLL, 0x1020040DB4D2780uLL);
  if (v2)
  {
    v3 = v2;
    DDCachingStringTokenizerResetStringWithOptions(v2, 64, 0);
    v4 = NLStringTokenizerCreate();
    v3[5] = v4;
    if (!a1 || v4)
    {
      v7 = malloc_type_calloc(1uLL, 0x190uLL, 0x10E00409D72FF36uLL);
      if (!a1)
      {
        v8 = 0;
        goto LABEL_13;
      }

LABEL_11:
      v8 = CFRetain(a1);
LABEL_13:
      *v7 = v3;
      v7[1] = v8;
      v7[4] = malloc_type_calloc(0x5AuLL, 8uLL, 0x2004093837F09uLL);
      v7[6] = 90;
      DDTokenCacheClear(v7);
      return v7;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v5 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = a1;
      _os_log_error_impl(&dword_1BCFDD000, v5, OS_LOG_TYPE_ERROR, "Tokenizer creation failed with locale %@, trying to fallback to default", &v12, 0xCu);
    }

    v6 = NLStringTokenizerCreate();
    v3[5] = v6;
    if (v6)
    {
      v7 = malloc_type_calloc(1uLL, 0x190uLL, 0x10E00409D72FF36uLL);
      goto LABEL_11;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v9 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_1BCFDD000, v9, OS_LOG_TYPE_ERROR, "Tokenizer creation failed again, giving up", &v12, 2u);
    }

    DDCachingStringTokenizerDestroy(v3);
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v10 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v12) = 0;
    _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, "DD tokenizer creation failed", &v12, 2u);
  }

  return 0;
}

void *DDLexemCacheCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040B8F6FDBAuLL);
  v0[1] = malloc_type_calloc(0x90uLL, 8uLL, 0x2004093837F09uLL);
  v0[3] = 144;
  v0[5] = malloc_type_calloc(0x60uLL, 8uLL, 0x2004093837F09uLL);
  *(v0 + 3) = xmmword_1BD018B80;
  DDLexemCacheClear(v0);
  return v0;
}

void DDLookupTablePrepareToScan(void *result)
{
  if (!result[2])
  {
    v2 = result[7];
    result[2] = DDStaticLookupCreateWithDynamicTrie(v2, 0, 0, 0);
    DDLookupTrieDestroy(v2);
    result[7] = 0;
    v3 = result[8];
    if (v3)
    {
      v5 = result[9];
      v4 = result[10];
      v6 = result[11];
      result[3] = DDStaticLookupCreateWithDynamicTrie(result[8], v5, v4, v6);
      if (v5)
      {
        CFRelease(v5);
        result[9] = 0;
      }

      if (v4)
      {
        CFRelease(v4);
        result[10] = 0;
      }

      if (v6)
      {
        CFRelease(v6);
        result[11] = 0;
      }

      DDLookupTrieDestroy(v3);
      result[8] = 0;
    }
  }
}

void DDScannerSetOptions(uint64_t a1, unint64_t a2)
{
  *(a1 + 192) = a2;
  v3 = *(a1 + 160);
  if (a2 >> 31)
  {
    if (v3)
    {

      CFArrayRemoveAllValues(v3);
    }

    else
    {
      *(a1 + 160) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  else if (v3)
  {
    CFRelease(v3);
    *(a1 + 160) = 0;
  }
}

void DDLexemCacheClear(char *a1)
{
  v2 = *(a1 + 2);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = *(a1 + 3);
      v4 = *(a1 + 4);
      if (i + v4 < v5)
      {
        v5 = 0;
      }

      v6 = i + v4 - v5;
      v7 = *(a1 + 1);
      v8 = *(v7 + 8 * v6);
      if (v8)
      {
        DDLexemCacheItemReset(*(v7 + 8 * v6));
        DDLexemCacheInsertItemInFreeArray(a1, v8);
        v2 = *(a1 + 2);
        *(*(a1 + 1) + 8 * v6) = 0;
      }
    }
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  v9 = *(a1 + 8);
  if (v9)
  {

    DDLexemCacheItemReset(v9);
  }
}

void DDScannerReset(uint64_t a1)
{
  if (a1)
  {
    DDTokenCacheClear(*(a1 + 40));
    DDLexemCacheClear(*(a1 + 48));
    DDSourceMatchCacheFree(*(a1 + 152));
    *(a1 + 152) = 0;
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 56) = 0;
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        CFRelease(v4);
        *(v3 + 24) = 0;
      }

      *(v3 + 40) = -1;
    }

    v5 = *(a1 + 168);
    if (v5)
    {

      CFArrayRemoveAllValues(v5);
    }
  }
}

id DDScannerServiceScanQuerySyncWithOptionsAndQOS(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int64_t *a6, uint64_t a7)
{
  v12 = [[DDScannerServiceConfiguration alloc] initWithScannerType:a2 passiveIntent:a3 == 1];
  v13 = v12;
  if (a4 == 1)
  {
    [(DDScannerServiceConfiguration *)v12 setSpotlightSuggestionsEnabled:1];
  }

  [(DDScannerServiceConfiguration *)v13 setNoObjC:1];
  [(DDScannerServiceConfiguration *)v13 setQos:a7];
  v13->_jobIdentifierPtr = a6;
  if (a5 == 1)
  {
    [(DDScannerServiceConfiguration *)v13 setResultsOptions:[(DDScannerServiceConfiguration *)v13 resultsOptions]| 2];
  }

  v14 = [DDScannerService scanQuery:a1 configuration:v13];

  return v14;
}

void DDLookupTableUpdateFromExternalFile(uint64_t a1, unsigned __int16 **a2, CFStringRef string)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if ((a1 & 0xFFFFFFFD) == 4)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __DDLookupTableUpdateFromExternalFile_block_invoke;
    v16[3] = &__block_descriptor_tmp_26_525;
    v16[4] = a2;
    v16[5] = v4;
    mmapSource(a1, 0, v16);
    return;
  }

  v14 = 0;
  v15 = 0;
  if (v4)
  {
    v6 = *(v4 + 20);
  }

  else
  {
    v6 = 0uLL;
  }

  v13 = v6;
  if (!string)
  {
    v10 = 1;
    if (_DDTriePathForSource(a1, v17, 0, 1, 0))
    {
      v10 = DDautommap(v17, &v14, &v15, &v13);
    }

LABEL_13:
    if (!v10)
    {
      return;
    }

    goto LABEL_14;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(string);
  if (MaximumSizeOfFileSystemRepresentation >= 1)
  {
    v8 = &v13.i8[-((MEMORY[0x1EEE9AC00](MaximumSizeOfFileSystemRepresentation) + 15) & 0xFFFFFFFFFFFFFFF0)];
    if (CFStringGetFileSystemRepresentation(string, v8, v9))
    {
      v10 = DDautommap(v8, &v14, &v15, &v13);
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_13;
  }

LABEL_14:
  if (v4)
  {
    v11 = *(v4 + 4);
    if (v11)
    {
      munmap(v11, v11[1]);
      *(v4 + 5) = 0;
      *(v4 + 6) = 0;
      *(v4 + 4) = 0;
    }

    CFRelease(v4);
  }

  v12 = v14;
  if (v14)
  {
    v12 = DDLookupTableCreateFromCacheData(v14, v15, v13.i64[0], v13.i64[1]);
  }

  *a2 = v12;
}

id _getSharedDispatcher()
{
  if (_getSharedDispatcher_once != -1)
  {
    dispatch_once(&_getSharedDispatcher_once, &__block_literal_global_679);
  }

  v1 = _getSharedDispatcher__scannerDispatcher;

  return v1;
}

uint64_t ___getSharedDispatcher_block_invoke()
{
  v0 = objc_alloc_init(DDScanServerDispatcher);
  v1 = _getSharedDispatcher__scannerDispatcher;
  _getSharedDispatcher__scannerDispatcher = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t DDDeletionFilterBlocks_block_invoke(int a1, const __CFString *a2, CFStringRef theString, uint64_t a4, const __CFString *a5)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = _typesAreEqual(theString, @"GenericURL");
  if (a2)
  {
    if (v8)
    {
      info = a2[2].info;
      if (info)
      {
        location = CFStringFind(a2[2].info, @":", 0).location;
        if (location >= 5)
        {
          v49.length = location;
          v11 = *MEMORY[0x1E695E480];
          v49.location = 0;
          v12 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], info, v49);
          if (v12)
          {
            v13 = v12;
            v14 = @"http";
            if (CFStringHasSuffix(v12, @"http") || (v14 = @"https", CFStringHasSuffix(v13, @"https")))
            {
              Length = CFStringGetLength(v13);
              v16 = Length - CFStringGetLength(v14);
              if (v16 >= 1 && CFStringGetCharacterAtIndex(v13, v16 - 1) - 45 <= 1)
              {
                v50.length = CFStringGetLength(info) - v16;
                v50.location = v16;
                v17 = CFStringCreateWithSubstring(v11, info, v50);
                if (v17)
                {
                  v18 = v17;
                  DDResultSetMatchedString(a2, v17);
                  v19 = a2[1].info - v16;
                  a2[1].isa = a2[1].isa + v16;
                  a2[1].info = v19;
                  DDResultSetType(a2, @"HttpURL");
                  CFRelease(v18);
                }
              }
            }

            CFRelease(v13);
          }
        }
      }
    }
  }

  if (CFStringCompare(theString, @"PhoneNumber", 0))
  {
    if (CFStringCompare(theString, @"FlightInformation", 0))
    {
      if (_typesAreEqual(theString, @"Email") || _typesAreEqual(theString, @"WebURL") || _typesAreEqual(theString, @"HttpURL") || _typesAreEqual(theString, @"FileURL") || _typesAreEqual(theString, @"WindowsRemoteFileURL") || _typesAreEqual(theString, @"MapsURL"))
      {
        result = DDResultCopyExtractedURLWithOptions(a2, 0);
        if (!result)
        {
          return result;
        }

        v21 = result;
        v22 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:result];
        if (!v22)
        {
          v29 = [v21 rangeOfString:@"://"];
          if (v29 == 0x7FFFFFFFFFFFFFFFLL || (v31 = v29 + v30, v29 + v30 >= [v21 length]) || (v32 = objc_msgSend(v21, "rangeOfString:options:range:", @"/", 0, v31, objc_msgSend(v21, "length") - v31), v34 = v32 + v33, v32 + v33 >= objc_msgSend(v21, "length")) || (v35 = objc_msgSend(v21, "substringToIndex:", v34), v36 = objc_msgSend(v21, "substringFromIndex:", v34), v37 = objc_msgSend(v36, "stringByAddingPercentEncodingWithAllowedCharacters:", objc_msgSend(MEMORY[0x1E696AB08], "URLFragmentAllowedCharacterSet")), v38 = objc_alloc(MEMORY[0x1E695DFF8]), (v22 = objc_msgSend(v38, "initWithString:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@", v35, v37))) == 0))
          {
            CFRelease(v21);
            return 0;
          }
        }

        v23 = v22;
        v24 = CFRetain(v22);

        CFRelease(v21);
        if (!v24)
        {
          return 0;
        }

        CFRelease(v24);
      }
    }

    else
    {
      SubresultWithType = DDResultGetSubresultWithType(a2, @"AirlineCode");
      if (SubresultWithType)
      {
        v28 = SubresultWithType[10];
        if (!v28)
        {
          v28 = SubresultWithType[9];
        }
      }

      else
      {
        v28 = 0;
      }

      v39 = DDResultGetSubresultWithType(a2, @"FlightNumber");
      if (!v39)
      {
        return 0;
      }

      v40 = v39[10];
      if (!v40)
      {
        v40 = v39[9];
      }

      if (!v28 || !v40 || CFStringCompare(v28, @"MH", 0) == kCFCompareEqualTo && (CFStringCompare(v40, @"17", 0) == kCFCompareEqualTo || CFStringCompare(v40, @"370", 0) == kCFCompareEqualTo || CFStringCompare(v40, @"371", 0) == kCFCompareEqualTo) || CFStringCompare(v28, @"BA", 0) == kCFCompareEqualTo && CFStringCompare(v40, @"1", 0) == kCFCompareEqualTo || CFStringCompare(v28, @"UA", 0) == kCFCompareEqualTo && CFStringCompare(v40, @"93", 0) == kCFCompareEqualTo || CFStringCompare(v28, @"AA", 0) == kCFCompareEqualTo && CFStringCompare(v40, @"77", 0) == kCFCompareEqualTo)
      {
        return 0;
      }

      if (a2)
      {
        a2 = a2[2].info;
      }

      if (CFStringCompare(a2, @"A300", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A318", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A319", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A320", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A321", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A330", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A340", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A350", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"A380", 0) == kCFCompareEqualTo)
      {
        return 0;
      }
    }

    return 1;
  }

  v25 = a2[1].length;
  if (!v25)
  {
    return 1;
  }

  if (CFArrayGetCount(v25) != 1)
  {
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v25, 0);
  if (CFStringCompare(ValueAtIndex[8], @"Value", 0))
  {
    return 1;
  }

  v41 = ValueAtIndex[9];
  v42 = CFStringGetLength(v41);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v42, 0x8000100u);
  MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
  v45 = v47 - v44;
  v48.location = 0;
  v48.length = v42;
  CFStringGetCharacters(v41, v48, (v47 - v44));
  if (a5)
  {
    v46 = CFStringHasSuffix(a5, @"BR") != 0;
  }

  else
  {
    v46 = 0;
  }

  return DDResultBufferIsValidForPhoneNumber(v45, 0, v42, 0, v46);
}

void **DDLexemCacheItemSet(void **result, uint64_t a2, void *__src)
{
  v4 = result;
  if (a2 >= 1)
  {
    v6 = *result;
    if (a2 > v4[1] >> 32)
    {
      v7 = 24;
      if (a2 > 0x18)
      {
        v7 = a2;
      }

      v4[1] = (v4[1] | (v7 << 32));
      v6 = malloc_type_realloc(v6, 32 * v7, 0x1010040F32E1FD2uLL);
      *v4 = v6;
    }

    result = memcpy(v6, __src, 32 * a2);
  }

  *(v4 + 2) = a2;
  return result;
}

void DDApplyOptions(const __CFArray *a1, void *a2, unsigned int a3)
{
  if (!a1)
  {
    return;
  }

  v3 = a2;
  v4 = a1;
  if (a2[24])
  {
    v5 = a3 & 0xFFFFFFFD;
  }

  else
  {
    v5 = a3;
  }

  v107 = v5;
  DDUnwrapCompatibility(a1, 0);
  v6 = v3[24];
  Count = CFArrayGetCount(v4);
  v124 = v3;
  if (Count < 1)
  {
    goto LABEL_122;
  }

  v8 = Count;
  v9 = 0;
  v109 = 0;
  v114 = 0;
  v10 = 0;
  v113 = v6 & 0x28000000;
  v11 = -1;
  v108 = -1;
  v120 = -1;
  v12 = -1;
  v122 = v4;
  do
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v10);
    v17 = ValueAtIndex;
    v123 = *(ValueAtIndex + 6);
    v115 = v15;
    v116 = v14;
    v117 = *(ValueAtIndex + 5);
    v118 = *(ValueAtIndex + 4);
    v19 = v15 != v118 || v14 != *(ValueAtIndex + 5) || v13 <= 0;
    v20 = !v19;
    v21 = CFStringCompare(*(ValueAtIndex + 8), @"Tag", 0);
    v121 = v21 != kCFCompareEqualTo;
    if (!_typesAreEqual(*(v17 + 64), @"Data"))
    {
      if (v113)
      {
        v53 = 0;
      }

      else
      {
        v53 = v20;
      }

      if (v53 != 1 || v9 || v21 != kCFCompareEqualTo)
      {
        v114 = 0;
        v109 = 0;
        v10 = v13 + 1;
        v108 = -1;
      }

      else
      {
        if (v114 || v120 >= v123)
        {
          CFArrayRemoveValueAtIndex(v4, v13);
          v60 = CFArrayGetCount(v4);
          v10 = v13;
          v8 = v60;
          v50 = v115;
          v51 = v116;
          v52 = v120;
          goto LABEL_107;
        }

        CFArrayRemoveValueAtIndex(v4, v13 - 1);
        v54 = CFArrayGetCount(v4);
        v10 = v13;
        v8 = v54;
        v114 = 0;
      }

      v52 = v123;
      v51 = v117;
      v50 = v118;
      goto LABEL_107;
    }

    UnwrappedResultOfType = DDResultGetUnwrappedResultOfType(v17, @"Data");
    TagTypeForDataType = DDResultGetTagTypeForDataType(UnwrappedResultOfType);
    SubresultWithType = DDResultGetSubresultWithType(UnwrappedResultOfType, TagTypeForDataType);
    v125 = SubresultWithType == 0;
    v131 = UnwrappedResultOfType;
    if (SubresultWithType)
    {
      v25 = SubresultWithType;
    }

    else
    {
      v25 = UnwrappedResultOfType;
    }

    v126 = v25;
    v26 = CFArrayGetCount(v4);
    v27 = v13 - 1;
    idx = v13;
    v28 = v13 + 1;
    v110 = v13 - 1;
    v111 = v13 + 1;
    v112 = v20;
    v127 = v26;
    v129 = v17;
    while (1)
    {
      if (v27 < 0)
      {
        v29 = 0;
      }

      else
      {
        v29 = CFArrayGetValueAtIndex(v4, v27);
      }

      if (v28 < v26)
      {
        v30 = CFArrayGetValueAtIndex(v4, v28);
      }

      else
      {
        v30 = 0;
      }

      VirtualDistance = DDResultGetVirtualDistance(v17, v29);
      v32 = DDResultGetVirtualDistance(v17, v30);
      v33 = v32;
      v133 = VirtualDistance;
      v35 = v27 < 0 || VirtualDistance > 1000;
      v37 = v28 >= v26 || v32 > 1000;
      if (v35)
      {
        v38 = 0;
      }

      else
      {
        v38 = v29;
      }

      if (v37)
      {
        v30 = 0;
      }

      v39 = DDShouldPauseSearchForTag(v35, v131, v38);
      v40 = DDShouldPauseSearchForTag(v37, v131, v30);
      if (!v39 || !v40)
      {
        v27 -= !v39;
        v28 += !v40;
        goto LABEL_72;
      }

      v135[0] = 0;
      v42 = DDGetDataValueForMatchingTagToData(v38, v126, v125, v135 + 1);
      v43 = DDGetDataValueForMatchingTagToData(v30, v126, v125, v135);
      if (v42 && v43)
      {
        break;
      }

      if (!(v42 | v43))
      {
        v27 -= !v35;
LABEL_71:
        v28 += !v37;
        goto LABEL_72;
      }

      if (v126)
      {
        v44 = v43;
        v45 = *(v126 + 80);
        if (!v45)
        {
          v45 = *(v126 + 72);
        }
      }

      else
      {
        v44 = v43;
        v45 = 0;
      }

      v46 = CFStringFind(v45, @"-", 0).location != -1 || CFStringFind(v45, @"Generic", 0).location != -1;
      v4 = v122;
      if (!v38 || !v46 || !v44 || v133 >= v33)
      {
        v47 = !v46;
        if (!v42)
        {
          v47 = 1;
        }

        if ((v47 & 1) != 0 || !v30 || v33 >= v133)
        {
          if (v42)
          {
            v55 = v42;
          }

          else
          {
            v55 = v44;
          }

          if (v42)
          {
            v56 = v135 + 1;
          }

          else
          {
            v56 = v135;
          }

          if (v42)
          {
            v57 = v133;
          }

          else
          {
            v57 = v33;
          }

          v58 = v122;
          goto LABEL_96;
        }

        goto LABEL_71;
      }

      v27 -= !v35;
LABEL_72:
      v48 = v35 && v37;
      v26 = v127;
      v17 = v129;
      if (v48)
      {
        goto LABEL_73;
      }
    }

    if (v133 <= v33)
    {
      v55 = v42;
    }

    else
    {
      v55 = v43;
    }

    if (v133 <= v33)
    {
      v56 = v135 + 1;
    }

    else
    {
      v56 = v135;
    }

    if (v133 >= v33)
    {
      v57 = v33;
    }

    else
    {
      v57 = v133;
    }

    v58 = v4;
LABEL_96:
    DDUpdateDataWithMatchedTag(v58, idx, v131, v126, v55);
    v59 = v112 ^ 1;
    if (v113)
    {
      v59 = 1;
    }

    v51 = v117;
    v50 = v118;
    if ((v59 & 1) == 0)
    {
      if (!*v56 && v109)
      {
        goto LABEL_73;
      }

      if (*v56 == v109)
      {
        if (v57 <= v108 && (v57 != v108 || v120 < v123))
        {
          v114 = 1;
          goto LABEL_121;
        }

LABEL_73:
        v49 = idx;
      }

      else
      {
        v114 = 1;
        v109 = *v56;
LABEL_121:
        v120 = v123;
        v108 = v57;
        v49 = v110;
      }

      CFArrayRemoveValueAtIndex(v4, v49);
      v123 = v120;
      v50 = v115;
      v51 = v116;
      goto LABEL_75;
    }

    v114 = 1;
    idx = v111;
    v109 = *v56;
    v108 = v57;
LABEL_75:
    v3 = v124;
    v8 = CFArrayGetCount(v4);
    v10 = idx;
    v52 = v123;
LABEL_107:
    v9 = v121;
    v120 = v52;
    v11 = v51;
    v12 = v50;
  }

  while (v10 < v8);
LABEL_122:
  DDUnwrapCompatibility(v4, 1);
  v61 = CFArrayGetCount(v4);
  if (v61 >= 1)
  {
    v62 = v61;
    v63 = 0;
    do
    {
      v64 = CFArrayGetValueAtIndex(v4, v63);
      if (v64 && _typesAreEqual(v64[8], @"Tag"))
      {
        CFArrayRemoveValueAtIndex(v4, v63);
        v62 = CFArrayGetCount(v4);
      }

      else
      {
        ++v63;
      }
    }

    while (v63 < v62);
  }

  v65 = CFArrayGetCount(v4);
  if (v65 >= 1)
  {
    v66 = v65;
    v67 = 0;
    do
    {
      v68 = CFArrayGetValueAtIndex(v4, v67);
      if (v68 && (v69 = v68, _typesAreEqual(v68[8], @"TrackingInformation")))
      {
        v70 = DDResultGetSubresultWithType(v69, @"Carrier");
        v71 = DDResultGetSubresultWithType(v69, @"TrackingNumber");
        if (v70 && v71)
        {
          v72 = v70[10];
          if (!v72)
          {
            v72 = v70[9];
          }

          DDResultSetType(v71, v72);
          DDResultRemoveSubresultWithType(v69, @"Carrier");
          DDResultSetType(v69, @"TrackingNumber");
        }
      }

      else
      {
        ++v67;
      }
    }

    while (v67 < v66);
  }

  v134 = CFArrayGetCount(v4);
  v73 = v107;
  if (v134 >= 1)
  {
    v74 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 7, 0);
    v76 = Mutable;
    if ((v107 & 0x20000) == 0)
    {
      CFArrayAppendValue(Mutable, &__block_literal_global_224);
    }

    if ((v107 & 0x10005) != 0)
    {
      CFArrayAppendValue(v76, &__block_literal_global_215);
    }

    if ((v107 & 0x10000) != 0)
    {
      CFArrayAppendValue(v76, &__block_literal_global_212);
    }

    v77 = (v107 >> 8) & 1;
    if (v107)
    {
      CFArrayAppendValue(v76, &__block_literal_global_206);
    }

    if (!v76)
    {
      goto LABEL_154;
    }

    v78 = CFArrayGetCount(v76);
    if (v78 >= 1)
    {
      v79 = v78;
      for (i = 0; i != v79; ++i)
      {
        v81 = CFArrayGetValueAtIndex(v76, i);
        v81[2](v81, v4, v3, v77);
      }
    }

    v82 = CFArrayGetCount(v4);
    CFRelease(v76);
    v134 = v82;
    v19 = v82 < 1;
    v73 = v107;
    if (!v19)
    {
LABEL_154:
      v83 = CFArrayCreateMutable(v74, 9, 0);
      v84 = v83;
      if ((v73 & 0x400) != 0)
      {
        CFArrayAppendValue(v83, &__block_literal_global_196);
        if ((v73 & 0x800) != 0)
        {
          goto LABEL_178;
        }

LABEL_156:
        if ((v73 & 0x40) == 0)
        {
          goto LABEL_157;
        }

LABEL_179:
        CFArrayAppendValue(v84, &__block_literal_global_76);
        if ((v73 & 0x1000) != 0)
        {
          goto LABEL_180;
        }

LABEL_158:
        if ((v73 & 0x10) == 0)
        {
          goto LABEL_159;
        }

LABEL_181:
        CFArrayAppendValue(v84, &__block_literal_global_82);
        if ((v73 & 8) != 0)
        {
          goto LABEL_182;
        }

LABEL_160:
        if ((v73 & 0x80) == 0)
        {
          goto LABEL_161;
        }

LABEL_183:
        CFArrayAppendValue(v84, &__block_literal_global_79);
        if ((v73 & 0x200) != 0)
        {
LABEL_162:
          CFArrayAppendValue(v84, &__block_literal_global_88);
        }
      }

      else
      {
        if ((v73 & 0x800) == 0)
        {
          goto LABEL_156;
        }

LABEL_178:
        CFArrayAppendValue(v84, &__block_literal_global_199);
        if ((v73 & 0x40) != 0)
        {
          goto LABEL_179;
        }

LABEL_157:
        if ((v73 & 0x1000) == 0)
        {
          goto LABEL_158;
        }

LABEL_180:
        CFArrayAppendValue(v84, &__block_literal_global_202);
        if ((v73 & 0x10) != 0)
        {
          goto LABEL_181;
        }

LABEL_159:
        if ((v73 & 8) == 0)
        {
          goto LABEL_160;
        }

LABEL_182:
        CFArrayAppendValue(v84, &__block_literal_global_85);
        if ((v73 & 0x80) != 0)
        {
          goto LABEL_183;
        }

LABEL_161:
        if ((v73 & 0x200) != 0)
        {
          goto LABEL_162;
        }
      }

      CFArrayAppendValue(v84, &__block_literal_global_2232);
      if (!v84)
      {
        goto LABEL_194;
      }

      v85 = CFArrayGetCount(v84);
      if (v85 < 1)
      {
        CFRelease(v84);
        goto LABEL_194;
      }

      v86 = v85;
      v87 = v3[30];
      if (v87)
      {
        goto LABEL_166;
      }

      v100 = v3[5];
      if (v100)
      {
        v87 = *(v100 + 8);
        if (v87)
        {
          goto LABEL_166;
        }
      }

      if ((v73 & 0x200) == 0)
      {
        v88 = v4;
        v87 = 0;
        goto LABEL_212;
      }

      if (getLocaleForExtraction_sOnce != -1)
      {
        dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
      }

      v87 = _sLocaleForExtraction;
      if (_sLocaleForExtraction)
      {
LABEL_166:
        v88 = v4;
        CFRetain(v87);
        v89 = MEMORY[0x1BFB34430](v87);
        v132 = 0;
      }

      else
      {
        v88 = v4;
LABEL_212:
        v89 = 0;
        v132 = 1;
      }

      v90 = CFArrayCreateMutable(v74, v134, MEMORY[0x1E695E9C0]);
      if (v90)
      {
        v91 = v90;
        v128 = v87;
        v130 = v74;
        v92 = 0;
        do
        {
          v93 = CFArrayGetValueAtIndex(v88, v92);
          v94 = 0;
          v95 = v93[8];
          while (1)
          {
            v96 = CFArrayGetValueAtIndex(v84, v94);
            if (((*(v96 + 2))(v96, v93, v95, v124, v89, v77) & 1) == 0)
            {
              break;
            }

            if (v86 == ++v94)
            {
              CFArrayAppendValue(v91, v93);
              break;
            }
          }

          ++v92;
        }

        while (v92 != v134);
        v97 = CFArrayGetCount(v91);
        v4 = v88;
        LOBYTE(v73) = v107;
        if (v97 != v134)
        {
          v98 = v97;
          CFArrayRemoveAllValues(v88);
          v137.location = 0;
          v137.length = v98;
          CFArrayAppendArray(v88, v91, v137);
        }

        CFRelease(v91);
        v99 = CFArrayGetCount(v88) > 0;
        v87 = v128;
        v74 = v130;
      }

      else
      {
        v99 = 1;
        v4 = v88;
        LOBYTE(v73) = v107;
      }

      v3 = v124;
      if ((v132 & 1) == 0)
      {
        CFRelease(v87);
      }

      CFRelease(v84);
      if (v99)
      {
LABEL_194:
        v101 = CFArrayCreateMutable(v74, 7, 0);
        v102 = v101;
        if ((v73 & 2) != 0)
        {
          CFArrayAppendValue(v101, &__block_literal_global_209);
          if ((v73 & 4) != 0)
          {
            goto LABEL_205;
          }

LABEL_196:
          if ((v73 & 0x20) == 0)
          {
            goto LABEL_197;
          }

LABEL_206:
          CFArrayAppendValue(v102, &__block_literal_global_221);
          if (v102)
          {
LABEL_198:
            v103 = CFArrayGetCount(v102);
            if (v103 >= 1)
            {
              v104 = v103;
              for (j = 0; j != v104; ++j)
              {
                v106 = CFArrayGetValueAtIndex(v102, j);
                v106[2](v106, v4, v3, v77);
              }
            }

            CFRelease(v102);
          }
        }

        else
        {
          if ((v73 & 4) == 0)
          {
            goto LABEL_196;
          }

LABEL_205:
          CFArrayAppendValue(v102, &__block_literal_global_218);
          if ((v73 & 0x20) != 0)
          {
            goto LABEL_206;
          }

LABEL_197:
          if (v102)
          {
            goto LABEL_198;
          }
        }
      }
    }
  }
}

BOOL DDInsertResultRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((*(a3 + 14) & 0x8000000000000000) != 0)
  {
    goto LABEL_84;
  }

  if ((*(*(*(a1 + 16) + 16) + 12 * *(a3 + 14) + 11) & 4) != 0)
  {
    a5 = (*a3 << 32) | (*(a3 + 8) << 16);
    a6 = ((*(a3 + 8) + (*(a3 + 8) >> 24)) << 16) | *a3 & 0xFFFFFFFF00000000;
  }

  if (*(*(*(a1 + 16) + 16) + 12 * *(a3 + 14)) == -1)
  {
LABEL_84:
    v36 = *(a3 + 13);
    if (*(a3 + 13))
    {
      v37 = 48;
      if ((*(a3 + 12) & 1) == 0)
      {
        v37 = 24;
      }

      v38 = (a3 + v37);
      v39 = 1;
      v40 = *(a3 + 13);
      v41 = 1;
      do
      {
        if (DDInsertResultRec(a1, a2, *v38, a4, a5, a6))
        {
          break;
        }

        v41 = v39 < v36;
        ++v38;
        ++v39;
        --v40;
      }

      while (v40);
    }

    else
    {
      return 0;
    }

    return v41;
  }

  if ((~a5 & 0xFFFF0000) == 0)
  {
    a5 = (*a2 << 32) | (*(a2 + 8) << 16);
    a6 = ((*(a2 + 8) + (*(a2 + 8) >> 24)) << 16) | *a2 & 0xFFFFFFFF00000000;
  }

  if ((*(a1 + 195) & 0x20) != 0 || (Count = CFArrayGetCount(*(a1 + 168)), Count < 1))
  {
    ScannerResult = 0;
    goto LABEL_98;
  }

  v43 = a3;
  ScannerResult = 0;
  v12 = a5 >> 16;
  v13 = Count + 1;
  v44 = 1;
  v45 = a6 >> 16;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 168), v13 - 2);
    v15 = ValueAtIndex;
    v16 = *(ValueAtIndex + 6);
    v17 = *(ValueAtIndex + 14);
    v18 = *(ValueAtIndex + 15);
    v19 = v18 >> 16;
    if (v12 >= v19 && (v12 > v19 || SHIDWORD(a5) >= SHIDWORD(v18)))
    {
      break;
    }

    if ((v17 ^ a5) >> 16)
    {
      v21 = 0;
    }

    else
    {
      v21 = (v18 ^ a6) >> 16 == 0;
    }

    if (!v21)
    {
      v22 = v17 >> 16;
      if (SHIDWORD(a5) >= SHIDWORD(v17))
      {
        v23 = *(ValueAtIndex + 14);
      }

      else
      {
        v23 = a5;
      }

      if (v12 > v22)
      {
        v23 = *(ValueAtIndex + 14);
      }

      if (v12 >= v17 >> 16)
      {
        v24 = v23;
      }

      else
      {
        v24 = a5;
      }

      if (SHIDWORD(a6) >= SHIDWORD(v18))
      {
        v25 = a6;
      }

      else
      {
        v25 = *(ValueAtIndex + 15);
      }

      if (v45 > v19)
      {
        v25 = a6;
      }

      if (v45 < v19)
      {
        v25 = *(ValueAtIndex + 15);
      }

      if (!((v24 ^ a5) >> 16) && (v25 ^ a6) < 0x10000)
      {
LABEL_37:
        if (*(a1 + 192) >> 31)
        {
          CFArrayRemoveValueAtIndex(*(a1 + 160), v13 - 2);
        }

        CFArrayRemoveValueAtIndex(*(a1 + 168), v13 - 2);
        goto LABEL_68;
      }

      if (SHIDWORD(a5) >= SHIDWORD(v17))
      {
        v27 = *(ValueAtIndex + 14);
      }

      else
      {
        v27 = a5;
      }

      v28 = v12 < v22;
      if (v12 <= v22)
      {
        v29 = v27;
      }

      else
      {
        v29 = *(ValueAtIndex + 14);
      }

      if (v28)
      {
        v29 = a5;
      }

      if (SHIDWORD(a6) >= SHIDWORD(v18))
      {
        v30 = a6;
      }

      else
      {
        v30 = *(ValueAtIndex + 15);
      }

      v31 = v45 < v19;
      if (v45 <= v19)
      {
        v32 = v30;
      }

      else
      {
        v32 = a6;
      }

      if (v31)
      {
        v32 = *(ValueAtIndex + 15);
      }

      v21 = (v29 ^ v17 | v32 ^ v18) >> 16 == 0;
      v33 = v44;
      if (v21)
      {
        v33 = 0;
      }

LABEL_64:
      v44 = v33;
      goto LABEL_68;
    }

    if (!ScannerResult)
    {
      if (_typesAreEqual(*(ValueAtIndex + 8), @"Compatibility") && (*(v43 + 14) & 0x8000000000000000) == 0 && (v26 = *(a1 + 16), *(*(v26 + 16) + 12 * *(v43 + 14)) == *(a1 + 234)))
      {
        ScannerResult = DDLRResultCreateScannerResult(v43, v26, 0);
      }

      else
      {
        ScannerResult = 0;
      }
    }

    if (DDResultsCanShareRange(ScannerResult, v15) || (*(a1 + 195) & 8) != 0)
    {
      goto LABEL_68;
    }

    if (v16 > a4 || v16 == a4 && !_typesAreEqual(v15[8], @"Location"))
    {
      if (!*(a1 + 248))
      {
        v44 = 0;
        goto LABEL_68;
      }

      v34 = DDTypeForLRResult(*(v43 + 14), *(a1 + 16));
      if (v15)
      {
        v44 = 1;
        if (!v34)
        {
          goto LABEL_68;
        }

        v33 = !_typesAreEqual(v15[8], v34);
      }

      else
      {
        v33 = 1;
      }

      goto LABEL_64;
    }

    if (!*(a1 + 248))
    {
      goto LABEL_37;
    }

    v35 = DDTypeForLRResult(*(v43 + 14), *(a1 + 16));
    if (v15)
    {
      if (v35 && _typesAreEqual(v15[8], v35))
      {
        goto LABEL_37;
      }
    }

LABEL_68:
    --v13;
  }

  while (v13 > 1);
  if (!v44)
  {
    if (ScannerResult)
    {
      goto LABEL_93;
    }

    return 1;
  }

LABEL_98:
  DDInsertResultsFromTopLevelRec(a1, a2, a4, a5, a6, ScannerResult);
  if (ScannerResult)
  {
LABEL_93:
    CFRelease(ScannerResult);
  }

  return 1;
}

const __CFString **DDResultGetSubresultWithType(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v7);
    if (_typesAreEqual(a2, ValueAtIndex[8]))
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

void DDUnwrapCompatibility(const __CFArray *a1, int a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      if (ValueAtIndex)
      {
        v8 = ValueAtIndex;
        if (_typesAreEqual(ValueAtIndex[8], @"Compatibility"))
        {
          v9 = v8[7];
          v10 = CFArrayGetCount(v9);
          v11 = v10;
          if (a2 || v10 != 1)
          {
            CFArrayRemoveValueAtIndex(a1, v6);
            if (v11 < 1)
            {
              --v5;
            }

            else
            {
              for (i = 0; i != v11; ++i)
              {
                v14 = CFArrayGetValueAtIndex(v9, i);
                CFArrayInsertValueAtIndex(a1, v6 + i, v14);
              }

              v6 += i;
              v5 = v11 + v5 - 1;
            }

            continue;
          }

          v12 = CFArrayGetValueAtIndex(v9, 0);
          CFArraySetValueAtIndex(a1, v6, v12);
        }
      }

      ++v6;
    }

    while (v6 < v5);
  }
}

CFArrayRef DDScannerCopyResultsWithOptions(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 233) == 1)
  {
    DDScannerThreadDebug(a1, 1);
    return 0;
  }

  *(a1 + 233) = 1;
  kdebug_trace();
  v5 = *(a1 + 168);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    v7 = *MEMORY[0x1E695E480];
    if (Count < 1 || (MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], Count, *(a1 + 168))) == 0 || (v9 = MutableCopy, DDApplyOptions(MutableCopy, a1, a2), Copy = CFArrayCreateCopy(0, v9), CFRelease(v9), !Copy))
    {
      Copy = CFArrayCreate(v7, 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  else
  {
    Copy = 0;
  }

  kdebug_trace();
  DDScannerReset(a1);
  if (*(a1 + 233))
  {
    *(a1 + 233) = 0;
  }

  else
  {
    DDScannerThreadDebug(a1, 0);
  }

  return Copy;
}

const __CFString *DDCreatePunycodedString(const __CFString *a1, int a2, int a3, int a4)
{
  v7 = a1;
  v39 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  if (a2)
  {
    result.length = 0;
    result.location = 0;
    v43.location = 0;
    v43.length = Length;
    if (CFStringFindWithOptions(v7, @"://", v43, 0, &result))
    {
      v9 = result.length + result.location;
    }

    else
    {
      v9 = 0;
    }

    Length -= v9;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (DDCreatePunycodedString_sOnce != -1)
  {
    dispatch_once(&DDCreatePunycodedString_sOnce, &__block_literal_global_279);
  }

  result.length = 0;
  result.location = 0;
  if (DDCreatePunycodedString_componentSeparatorSet)
  {
    v44.location = v9;
    v44.length = Length;
    if (CFStringFindCharacterFromSet(v7, DDCreatePunycodedString_componentSeparatorSet, v44, 0, &result))
    {
      Length = result.location - v9;
    }
  }

LABEL_13:
  v10 = CFStringGetLength(v7);
  if (v10)
  {
    v11 = v10;
    v10 = 0;
    if ((v9 & 0x8000000000000000) == 0 && Length + v9 <= v11 && Length <= 512)
    {
      v36.location = 0;
      v36.length = 0;
      v45.location = v9;
      v45.length = Length;
      v12 = CFStringFindWithOptions(v7, @"@", v45, 0, &v36);
      v13 = MEMORY[0x1E695E480];
      if (!v12)
      {
        goto LABEL_28;
      }

      v14 = v36.location - v9 + v36.length;
      if (a4 && v14 >= 2)
      {
        v15 = *MEMORY[0x1E695E480];
        v46.location = v9;
        v46.length = v14 - 1;
        v16 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v7, v46);
        if (_shouldPunyCodeHost(v16))
        {
          v17 = CFURLCreateStringByReplacingPercentEscapes(v15, v16, &stru_1F3B75AB8);
          v18 = CFStringGetLength(v16);
          CFRelease(v16);
          if (!v17)
          {
            return 0;
          }

          v19 = CFURLCreateStringByAddingPercentEscapes(v15, v17, &stru_1F3B75AB8, &stru_1F3B75AB8, 0x8000100u);
          CFRelease(v17);
          if (!v19)
          {
            return 0;
          }

          MutableCopy = CFStringCreateMutableCopy(v15, 0, v7);
          v7 = MutableCopy;
          if (!MutableCopy)
          {
            v32 = v19;
            goto LABEL_46;
          }

          v40.location = v9;
          v40.length = v14 - 1;
          CFStringReplace(MutableCopy, v40, v19);
          CFAutorelease(v7);
          v21 = v14 - v18 + CFStringGetLength(v19);
          CFRelease(v19);
          goto LABEL_27;
        }

        CFRelease(v16);
      }

      v21 = v14;
LABEL_27:
      Length -= v14;
      v9 += v21;
LABEL_28:
      v22 = *v13;
      v47.location = v9;
      v47.length = Length;
      v23 = CFStringCreateWithSubstring(*v13, v7, v47);
      if (v23)
      {
        v24 = v23;
        if (!_shouldPunyCodeHost(v23))
        {
          CFRetain(v7);
          goto LABEL_45;
        }

        v48.location = v9;
        v48.length = Length;
        if (!CFStringFindWithOptions(v7, @"%", v48, 0, 0) || (v25 = CFURLCreateStringByReplacingPercentEscapes(v22, v24, &stru_1F3B75AB8), CFRelease(v24), (v24 = v25) != 0))
        {
          usedBufLen = 0;
          v26 = CFStringGetLength(v24);
          v41.location = 0;
          v41.length = v26;
          if (CFStringGetBytes(v24, v41, 0x8000100u, 0, 0, &result, 512, &usedBufLen) == v26)
          {
            pErrorCode = U_ZERO_ERROR;
            v27 = MEMORY[0x1BFB35390](48, &pErrorCode);
            if (v27)
            {
              if (pErrorCode == U_ZERO_ERROR)
              {
                v28 = v27;
                pInfo = xmmword_1BD018BA0;
                v29 = uidna_nameToASCII_UTF8(v27, &result, usedBufLen, dest, 512, &pInfo, &pErrorCode);
                if (v29 < 1 || pErrorCode)
                {
                  uidna_close(v28);
                }

                else
                {
                  v30 = CFStringCreateWithBytes(v22, dest, v29, 0x8000100u, 0);
                  uidna_close(v28);
                  if (v30)
                  {
                    if (CFStringCompare(v24, v30, 0))
                    {
                      v31 = CFStringCreateMutableCopy(v22, 0, v7);
                      v7 = v31;
                      if (v31)
                      {
                        v42.location = v9;
                        v42.length = Length;
                        CFStringReplace(v31, v42, v30);
                      }
                    }

                    else
                    {
                      v7 = 0;
                    }

                    CFRelease(v30);
                    goto LABEL_45;
                  }
                }
              }
            }
          }

          v7 = 0;
LABEL_45:
          v32 = v24;
LABEL_46:
          CFRelease(v32);
          return v7;
        }
      }

      return 0;
    }
  }

  return v10;
}

CFStringRef DDResultCopyExtractedURLWithOptions(uint64_t a1, char a2)
{
  v4 = *(a1 + 64);
  if (_typesAreEqual(v4, @"Email"))
  {
    SubresultWithType = DDResultGetSubresultWithType(a1, @"Value");
    if (SubresultWithType)
    {
      MutableCopy = SubresultWithType[9];
      if (!MutableCopy)
      {
        return MutableCopy;
      }

      v7 = DDCreatePunycodedString(SubresultWithType[9], 0, 0, 1);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = MutableCopy;
      }

      v10 = @"mailto:";
LABEL_21:
      MutableCopy = CFStringCreateMutableCopy(0, 0, v10);
      CFStringAppend(MutableCopy, v9);
      if (v8)
      {
        v18 = v8;
LABEL_23:
        CFRelease(v18);
      }

      return MutableCopy;
    }

    return 0;
  }

  if (_typesAreEqual(v4, @"FullAddress"))
  {
    if ((a2 & 2) == 0)
    {
      return 0;
    }

    if (*(a1 + 72))
    {
      Helper_x8__OBJC_CLASS___GEOMapURLBuilder = gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v11);
      v14 = [*(v13 + 536) URLForAddress:Helper_x8__OBJC_CLASS___GEOMapURLBuilder];
      if (v14)
      {
        v14 = [objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")];
      }

      v15 = [v14 absoluteString];
      MutableCopy = v15;
      if (v15)
      {
        CFRetain(v15);
      }

      return MutableCopy;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v23 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v37 = 0;
    v24 = "can't have a result of type address without a string";
    v25 = &v37;
    goto LABEL_51;
  }

  if (_typesAreEqual(v4, @"WebURL"))
  {
    v16 = *(a1 + 72);
    if (v16)
    {
      v17 = DDCreatePunycodedString(v16, 0, 1, 0);
      v8 = v17;
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        v9 = v16;
      }

      v10 = @"http://";
      goto LABEL_21;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v23 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v36 = 0;
    v24 = "can't have a result of type web without a string";
    v25 = &v36;
LABEL_51:
    _os_log_error_impl(&dword_1BCFDD000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  if (_typesAreEqual(v4, @"HttpURL"))
  {
    v19 = *(a1 + 72);
    if (!v19)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v23 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v35 = 0;
      v24 = "can't have a result of type http without a string";
      v25 = &v35;
      goto LABEL_51;
    }

    MutableCopy = DDCreatePunycodedString(*(a1 + 72), 1, 1, 0);
    if (MutableCopy)
    {
      return MutableCopy;
    }

    v20 = *MEMORY[0x1E695E480];
    v21 = v19;
  }

  else if (_typesAreEqual(v4, @"MapsURL") || _typesAreEqual(v4, @"MailURL"))
  {
    v21 = *(a1 + 72);
    if (!v21)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v23 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 0;
      v24 = "can't have a result of type maps/mail without a string";
      v25 = buf;
      goto LABEL_51;
    }

    v20 = *MEMORY[0x1E695E480];
  }

  else
  {
    if (_typesAreEqual(v4, @"PhoneNumber") || _typesAreEqual(v4, @"QuotedShortPhoneNumber") || _typesAreEqual(v4, @"UnquotedShortPhoneNumber"))
    {
      v26 = DDResultCopyCleanPhoneNumber(a1);
      MutableCopy = v26;
      if (!v26)
      {
        return MutableCopy;
      }

      v27 = *MEMORY[0x1E695E480];
      Length = CFStringGetLength(v26);
      v29 = CFStringCreateMutableCopy(v27, Length, MutableCopy);
      v30 = DDResultCopyStrippedPhoneNumber(v29);
      if (v29)
      {
        CFRelease(v29);
      }

      if (v30)
      {
        CFRelease(MutableCopy);
      }

      else
      {
        v30 = MutableCopy;
      }

      v31 = CFURLCreateStringByAddingPercentEscapes(0, v30, 0, 0, 0x8000100u);
      CFRelease(v30);
      if (v31)
      {
        MutableCopy = CFStringCreateMutableCopy(0, 0, @"tel:");
        CFStringAppend(MutableCopy, v31);
        v18 = v31;
        goto LABEL_23;
      }

      return 0;
    }

    if (!_typesAreEqual(v4, @"GenericURL"))
    {
      return 0;
    }

    v32 = *(a1 + 72);
    if (!v32)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v23 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v33 = 0;
      v24 = "can't have a result of type generic without a string";
      v25 = &v33;
      goto LABEL_51;
    }

    if ((a2 & 1) != 0 && !DDURLSchemeIsKnown(v32))
    {
      return 0;
    }

    v20 = *MEMORY[0x1E695E480];
    v21 = v32;
  }

  return CFStringCreateCopy(v20, v21);
}

void DDGlobalFilterBlocks_block_invoke_16(int a1, CFArrayRef theArray)
{
  v15 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v4 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4 - 2);
      if (_typesAreEqual(@"BoxedResults", *(ValueAtIndex + 8)))
      {
        v6 = *(ValueAtIndex + 7);
        v7 = CFArrayGetCount(v6);
        if (v6)
        {
          v12 = v7 < 1;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          CFArrayRemoveValueAtIndex(theArray, v4 - 2);
        }

        else
        {
          v13 = v7;
          if (v7 >= 0xB)
          {
            DDLogErrD(v7, v8, v9, v10, v11, @"More than 10 boxed results. Ignoring aditional results...");
            v13 = 10;
          }

          memset(v14, 0, sizeof(v14));
          v16.location = 0;
          v16.length = v13;
          CFArrayGetValues(v6, v16, v14);
          CFRetain(ValueAtIndex);
          v17.location = v4 - 2;
          v17.length = 1;
          CFArrayReplaceValues(theArray, v17, v14, v13);
          CFRelease(ValueAtIndex);
        }
      }

      --v4;
    }

    while (v4 > 1);
  }
}

void DDLexemCacheItemReset(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 | 0xFFFFFFFFLL;
  if (SHIDWORD(v1) >= 25)
  {
    free(*a1);
    v3 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = v3;
  }
}

uint64_t DDTokenCacheGetItemAtIndexCreateIfNeeded(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v4 > a2)
  {
    goto LABEL_11;
  }

  v6 = a2 + 10;
  v7 = *(a1 + 56);
  if (v7)
  {
    if (v4 <= v7)
    {
      if (DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged_12)
      {
        return 0;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v20 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BCFDD000, v20, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", buf, 2u);
      }

      DDLogAssertionFailure("tokenCache->_tokenCacheTableSize > tokenCache->_tokenCacheTableStartOffset", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/PushDown/DDTokenCache.c", v21, 482, @"Start offset out of bounds");
      result = 0;
      DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged_12 = 1;
      return result;
    }

    v8 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
    v9 = *(a1 + 56);
    v10 = *(a1 + 48) - v9;
    memcpy(v8, (*(a1 + 32) + 8 * v9), 8 * v10);
    memcpy(&v8[8 * v10], *(a1 + 32), 8 * *(a1 + 56));
    free(*(a1 + 32));
    *(a1 + 32) = v8;
    *(a1 + 56) = 0;
  }

  else
  {
    v8 = malloc_type_realloc(*(a1 + 32), 8 * v6, 0x2004093837F09uLL);
    *(a1 + 32) = v8;
    if (!v8)
    {
      if (DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged)
      {
        return 0;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v22 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        _os_log_error_impl(&dword_1BCFDD000, v22, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", v26, 2u);
      }

      DDLogAssertionFailure("tokenCache->_tokenCacheTable != NULL", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/PushDown/DDTokenCache.c", v23, 480, @"Realloc failed");
      result = 0;
      DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged = 1;
      return result;
    }
  }

  bzero(&v8[8 * *(a1 + 48)], 8 * (v6 - *(a1 + 48)));
  v11 = *(a1 + 32);
  if (!*(v11 + 8 * a2 + 72) && !*(v11 + 8 * *(a1 + 48)))
  {
    *(a1 + 48) = v6;
    v4 = a2 + 10;
LABEL_11:
    if (v5 <= a2)
    {
      do
      {
        v14 = *(a1 + 48);
        v13 = *(a1 + 56);
        if (v5 + v13 < v14)
        {
          v14 = 0;
        }

        v15 = v5 + v13 - v14;
        if (!*(*(a1 + 32) + 8 * v15))
        {
          v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x10220403CBE8D38uLL);
          *v16 = 0x10000FFFFFFFFLL;
          *(*(a1 + 32) + 8 * v15) = v16;
        }

        ++*(a1 + 40);
        ++v5;
      }

      while (a2 + 1 != v5);
      v4 = *(a1 + 48);
    }

    v17 = *(a1 + 56) + a2;
    if (v17 < v4)
    {
      v4 = 0;
    }

    return *(*(a1 + 32) + 8 * (v17 - v4));
  }

  if (DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged_17)
  {
    return 0;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v18 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_error_impl(&dword_1BCFDD000, v18, OS_LOG_TYPE_ERROR, "DDRequire failed: the following assertion will only be logged once", v24, 2u);
  }

  DDLogAssertionFailure("tokenCache->_tokenCacheTable[newSize - 1] == NULL && tokenCache->_tokenCacheTable[tokenCache->_tokenCacheTableSize] == NULL", "/Library/Caches/com.apple.xbs/Sources/DataDetectorsCore/Sources/PushDown/DDTokenCache.c", v19, 496, @"Wrong initialization");
  result = 0;
  DDTokenCacheGetItemAtIndexCreateIfNeeded_alreadyLogged_17 = 1;
  return result;
}

uint64_t DDLexemCacheGetLexems(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v5 = *(a2 + 48 * (a3 >> 16) + 32) + (a3 >> 32) - (*(a2 + 48 * (a3 >> 16) + 16) + *a1);
  if (v5 < 201 || (v8 = a1[8]) == 0 || (a1[9] ^ a3) >= 0x10000)
  {
    if (v5 >= a1[2])
    {
      return 0;
    }

    v6 = a1[4] + v5;
    v7 = v6 >= a1[3] ? a1[3] : 0;
    v8 = *(a1[1] + 8 * (v6 - v7));
    if (!v8)
    {
      return 0;
    }
  }

  if ((v8[1] & 0x80000000) != 0)
  {
    return 0;
  }

  *a5 = v8[1] & 0x7FFFFFFFLL;
  *a4 = *v8;
  return 1;
}

BOOL _shouldPunyCodeHost(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  theString = a1;
  v24 = 0;
  v25 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v22 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v26 = 0;
  v27 = 0;
  v23 = CStringPtr;
  if (Length >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    v9 = 64;
    memset(v20, 0, sizeof(v20));
    while (1)
    {
      if (v7 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v7;
      }

      v11 = v25;
      if (v25 <= v7)
      {
        v13 = 0;
      }

      else
      {
        if (v22)
        {
          v12 = &v22[v24];
        }

        else
        {
          if (v23)
          {
            v13 = v23[v24 + v7];
            goto LABEL_13;
          }

          if (v27 <= v7 || v6 > v7)
          {
            v15 = v10 + v5;
            v16 = v9 - v10;
            v17 = v7 - v10;
            v18 = v17 + 64;
            if (v17 + 64 >= v25)
            {
              v18 = v25;
            }

            v26 = v17;
            v27 = v18;
            if (v25 >= v16)
            {
              v11 = v16;
            }

            v28.location = v17 + v24;
            v28.length = v11 + v15;
            CFStringGetCharacters(theString, v28, v20);
            v6 = v26;
          }

          v12 = v20 - v6;
        }

        v13 = v12[v7];
      }

LABEL_13:
      if ((v13 - 58) > 0xFFF5u || (v13 - 123) > 0xFFE5u || (v13 - 91) > 0xFFE5u || (v13 - 47) >= 0xFFFEu)
      {
        v8 = ++v7 < Length;
        --v5;
        ++v9;
        if (Length != v7)
        {
          continue;
        }
      }

      return v8;
    }
  }

  return 0;
}

uint64_t getNext(void *a1)
{
  do
  {
    v2 = a1[1];
    v3 = a1[3] + a1[2];
    if (v3 <= v2 >> 32)
    {
      goto LABEL_6;
    }

    v4 = *(*a1 + 32);
    chunkOffset = v4->chunkOffset;
    if (chunkOffset < v4->chunkLength)
    {
      v6 = v4->chunkContents[chunkOffset];
      if (v6 >> 11 <= 0x1A)
      {
        v4->chunkOffset = chunkOffset + 1;
LABEL_12:
        if (v6 >> 2 == 0x3FFF || (v6 != 10 ? (v17 = v6 == 8232) : (v17 = 1), !v17 ? (v18 = v6 == 13) : (v18 = 1), v18 && *(*a1 + 48) == 1))
        {
          v6 = 32;
        }

        v19 = v4->chunkOffset;
        if (v19 <= v4->nativeIndexingLimit)
        {
          v20 = v4->chunkNativeStart + v19;
        }

        else
        {
          v20 = (v4->pFuncs->mapOffsetToNative)(v4);
        }

        for (; v20 < v3; v20 = v23 <= v4->nativeIndexingLimit ? v4->chunkNativeStart + v23 : (v4->pFuncs->mapOffsetToNative)(v4))
        {
          v21 = v4->chunkOffset;
          if (v21 < v4->chunkLength)
          {
            v22 = v4->chunkContents[v21];
            if (v22 >> 11 <= 0x1A)
            {
              goto LABEL_47;
            }
          }

          v22 = utext_current32(v4);
LABEL_47:
          if (v22 >> 1 != 4103 || !utext_moveIndex32(v4, 1))
          {
            break;
          }

          v23 = v4->chunkOffset;
        }

        *(a1 + 3) = v20;
        return v6;
      }
    }

    v7 = utext_next32(*(*a1 + 32));
    if (v7 != -1)
    {
      v6 = v7;
      goto LABEL_12;
    }

    v2 = a1[1];
LABEL_6:
    v8 = *a1;
    v9 = *(*a1 + 24);
    v10 = v2 >> 16;
    if (v10 >= *(v9 + 32) - 1)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = *(v9 + 16);
    v12 = 48 * v10;
    v13 = (*(v11 + 48 * v10 + 40) >> 26) & 7;
    v14 = v10 + 1;
    v12 += 48;
    v15 = *(v11 + v12 + 16);
    *(a1 + 1) = v15;
    a1[1] = v2 | (v14 << 16) | (v15 << 32);
    v16 = *(*(v8 + 24) + 16) + v12;
    *(v8 + 40) = v14;
    *(v8 + 48) = (*(v16 + 40) & 0x40000000) != 0;
    *(v8 + 32) = CFStringOpenUText();
  }

  while (!v13);
  if (v13 > 2)
  {
    if (v13 != 4)
    {
      if (v13 == 3)
      {
        return 10;
      }

      return 0xFFFFFFFFLL;
    }

    return 31;
  }

  else if (v13 == 1)
  {
    return 32;
  }

  else
  {
    return 9;
  }
}

BOOL _typesAreEqual(CFStringRef theString, const __CFString *a2)
{
  result = 0;
  if (theString && a2)
  {
    if (theString == a2)
    {
      return 1;
    }

    else
    {
      Length = CFStringGetLength(theString);
      if (Length == CFStringGetLength(a2))
      {
        v6.location = 0;
        v6.length = Length;
        return CFStringCompareWithOptionsAndLocale(theString, a2, v6, 0, 0) == kCFCompareEqualTo;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL DDResultsCanShareRange(CFStringRef *a1, CFStringRef *a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (!_typesAreEqual(a1[8], @"Compatibility") || !_typesAreEqual(a2[8], @"Compatibility"))
  {
    return 0;
  }

  v5 = a1[10];
  if (!v5)
  {
    v5 = a1[9];
  }

  v6 = a2[10];
  if (!v6)
  {
    v6 = a2[9];
  }

  v2 = 0;
  if (v5 && v6)
  {
    if (CFStringFind(v5, @"-", 0).location != -1 && CFStringFind(v6, @"-", 0).location != -1)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v5, @"-");
      v8 = CFStringCreateArrayBySeparatingStrings(0, v6, @"-");
      v9 = v8;
      if (ArrayBySeparatingStrings && v8)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
        v11 = CFArrayGetValueAtIndex(v9, 0);
        if (CFStringCompare(ValueAtIndex, @"1", 0) && CFStringCompare(v11, @"1", 0))
        {
          v12 = 0;
        }

        else
        {
          v14 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
          v15 = CFArrayGetValueAtIndex(v9, 1);
          v12 = CFStringCompare(v14, v15, 0) == kCFCompareEqualTo;
        }
      }

      else
      {
        v12 = 0;
        v2 = 0;
        if (!ArrayBySeparatingStrings)
        {
LABEL_24:
          if (v9)
          {
            CFRelease(v9);
          }

          return v2;
        }
      }

      CFRelease(ArrayBySeparatingStrings);
      v2 = v12;
      goto LABEL_24;
    }

    return 0;
  }

  return v2;
}

void DDGlobalFilterBlocks_block_invoke_13(int a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 2)
  {
    v4 = Count;
    v5 = 1;
    v6 = 2;
    do
    {
      v7 = *(CFArrayGetValueAtIndex(theArray, v5) + 2);
      v8 = v7 >> 16;
      v9 = HIDWORD(v7);
      v10 = v6;
      do
      {
        v11 = v10 - 1;
        v12 = v10 - 2;
        v13 = *(CFArrayGetValueAtIndex(theArray, v10 - 2) + 2);
        v14 = v13 >> 16;
        if (v14 < v8)
        {
          break;
        }

        v15 = HIDWORD(v13);
        if (v14 <= v8 && v15 <= v9)
        {
          break;
        }

        CFArrayExchangeValuesAtIndices(theArray, v12, v11);
        v10 = v11;
      }

      while (v11 > 1);
      ++v5;
      ++v6;
    }

    while (v5 != v4);
  }
}

void DDGlobalFilterBlocks_block_invoke_10(int a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 2)
  {
    v4 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v6 = *(ValueAtIndex + 3);
    if (*(ValueAtIndex + 2) >> 16)
    {
      v7 = 0;
    }

    else
    {
      v7 = CFStringCompare(*(ValueAtIndex + 8), @"AuthCode", 0) == kCFCompareEqualTo;
    }

    v8 = CFArrayGetValueAtIndex(theArray, 0);
    v9 = 1;
    while (1)
    {
      v10 = CFArrayGetValueAtIndex(theArray, v9);
      v11 = v10;
      v12 = v10[2];
      v13 = v10[3];
      v14 = v6 >> 16;
      if (v14 >= v12 >> 16 && (v14 > v12 >> 16 || SHIDWORD(v6) > SHIDWORD(v12)))
      {
        break;
      }

      if (((v12 ^ v6) & 0xFFFF0000) == 0 && (HIDWORD(v12) - HIDWORD(v6) < 50 || v7))
      {
        v15 = v10[8];
        if (v15 == v8[8] && CFStringCompare(v15, @"AuthCode", 0) == kCFCompareEqualTo)
        {
          v28 = v8[9];
          Length = CFStringGetLength(v28);
          v27 = v11[9];
          v17 = CFStringGetLength(v27);
          v18 = Length;
          v19 = v17;
          v20 = Length == v17 && !v7;
          if (v20 != 1 || (v21 = v28, v29 = v19, v22 = CFStringCompare(v21, v27, 0), v19 = v29, v18 = Length, v22))
          {
            v23 = v8[6];
            v24 = v11[6];
            if (!v7)
            {
              v25 = v18 == v19;
              if (v23 <= v24)
              {
                v25 = 0;
              }

              if (v18 > v19 || v25)
              {
                break;
              }
            }

            v26 = v23 < v24 && v18 == v19;
            if (v18 < v19 || v26)
            {
              CFArrayRemoveValueAtIndex(theArray, v9 - 1);
              --v4;
              goto LABEL_17;
            }
          }
        }
      }

      ++v9;
LABEL_17:
      v6 = v13;
      v8 = v11;
      if (v9 >= v4)
      {
        return;
      }
    }

    CFArrayRemoveValueAtIndex(theArray, v9);
    --v4;
    v11 = v8;
    v13 = v6;
    goto LABEL_17;
  }
}

const __CFString **_DDGetRelevantResultsForUrlificationRange(uint64_t a1, const __CFString ***a2)
{
  v4 = *(a1 + 64);
  if (_DDResultTypeIsAnyPhoneKind(v4))
  {
    v5 = &DDBinderExtensionKey;
    v6 = @"Value";
LABEL_5:
    *a2 = DDResultGetSubresultWithType(a1, *v5);
    goto LABEL_6;
  }

  if (_typesAreEqual(v4, @"FlightInformation"))
  {
    v5 = DDBinderFlightNumberKey;
    v6 = @"AirlineCode";
    goto LABEL_5;
  }

  if (!_typesAreEqual(v4, @"Email"))
  {
    return a1;
  }

  v6 = @"Value";
LABEL_6:

  return DDResultGetSubresultWithType(a1, v6);
}

void DDStaticLookupDestroy(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[17];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[18];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    CFRelease(v6);
  }

  free(a1);
}

void _DDLookupTableCFFinalize(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    DDLookupTrieDestroy(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    DDLookupTrieDestroy(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[14];
  if (v8)
  {
    CFRelease(v8);
    a1[14] = 0;
  }

  v9 = a1[15];
  if (v9)
  {
    free(v9);
    a1[15] = 0;
  }

  v10 = a1[2];
  if (v10)
  {
    DDStaticLookupDestroy(v10);
  }

  v11 = a1[3];
  if (v11)
  {

    DDStaticLookupDestroy(v11);
  }
}

void _DDScannerCFFinalize(uint64_t a1)
{
  DDTokenCacheDestroy(*(a1 + 40));
  DDLexemCacheDestroy(*(a1 + 48));
  DDLRTableDestroy(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 208))
  {
    v3 = malloc_default_purgeable_zone();
    malloc_zone_free(v3, *(a1 + 208));
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  for (i = 0; i != 7; ++i)
  {
    _DDScannerDestroyOptionalLookupTable(a1, i);
  }

  DDSourceMatchCacheFree(*(a1 + 152));
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 160);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 216);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(a1 + 240);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 264);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 272);
  if (v13)
  {

    CFRelease(v13);
  }
}

void DDLexemCacheItemDestroy(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void dd_icu_3_6__5_0_2::RuleBasedClassifier::~RuleBasedClassifier(dd_icu_3_6__5_0_2::RuleBasedClassifier *this)
{
  dd_icu_3_6__5_0_2::RuleBasedClassifier::~RuleBasedClassifier(this);

  JUMPOUT(0x1BFB34A30);
}

{
  *this = &unk_1F3B73E48;
  v2 = *(this + 4);
  if (v2)
  {
    utext_close(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x1BFB34A30](v3, 0x10F0C40ABC2424ELL);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }
}

void _DDScannerDestroyOptionalLookupTable(uint64_t a1, int a2)
{
  v2 = a1 + 72;
  v3 = *(a1 + 72 + 8 * a2);
  if (v3)
  {
    if (a2 == 4)
    {
      if (!*(a1 + 128))
      {
        CFRelease(*(a1 + 104));
        v7 = *(a1 + 144);
        if (v7)
        {
          CFRelease(v7);
          *(a1 + 144) = 0;
        }

        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_8:
      CFRelease(v3);
LABEL_9:
      *(v2 + 8 * a2) = 0;
      return;
    }

    v6 = v3[4];
    if (v6)
    {
      munmap(v6, v6[1]);
      v3[5] = 0;
      v3[6] = 0;
      v3[4] = 0;
    }

    goto LABEL_8;
  }
}

void DDScanQueryReset(void *a1)
{
  if (a1[4] >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1[2] + v2);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = a1[5];
      if (v5)
      {
        v5(a1[6], *(a1[2] + v2 + 8));
      }

      ++v3;
      v2 += 48;
    }

    while (v3 < a1[4]);
  }

  a1[4] = 0;
}

void _DDCacheCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  else if (munmap(*(a1 + 64), *(*(a1 + 64) + 8)) < 0)
  {
    v3 = __error();
    v4 = strerror(*v3);
    DDLogErrD(v4, v5, v6, v7, v8, @"could not munmap file: %s", v4);
  }

  v9 = *(a1 + 80);
  if (v9)
  {

    CFRelease(v9);
  }
}

char *DDLexemCacheInsertItemInFreeArray(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 7);
  v5 = *(result + 6) + 1;
  if (v5 >= v4)
  {
    result = malloc_type_realloc(*(result + 5), 8 * v4 + 64, 0x2004093837F09uLL);
    *(v3 + 5) = result;
    v6 = &result[8 * *(v3 + 7)];
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    v7 = *(v3 + 6);
    *(v3 + 7) += 8;
    v5 = v7 + 1;
  }

  *(v3 + 6) = v5;
  *(*(v3 + 5) + 8 * v5) = a2;
  return result;
}

void DDLexemCacheDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(a1 + 8) + 8 * i);
        if (v4)
        {
          DDLexemCacheItemDestroy(v4);
          v2 = *(a1 + 24);
        }
      }
    }

    free(*(a1 + 8));
    *(a1 + 8) = 0;
    v5 = *(a1 + 56);
    if (v5 >= 1)
    {
      for (j = 0; j < v5; ++j)
      {
        v7 = *(*(a1 + 40) + 8 * j);
        if (v7)
        {
          DDLexemCacheItemDestroy(v7);
          v5 = *(a1 + 56);
        }
      }
    }

    free(*(a1 + 40));
    *(a1 + 40) = 0;
    v8 = *(a1 + 64);
    if (v8)
    {
      DDLexemCacheItemDestroy(v8);
    }

    free(a1);
  }
}

void _DDScanQueryCFFinalize(void *a1)
{
  DDScanQueryReset(a1);
  v2 = a1[2];
  if (v2)
  {
    free(v2);
    a1[2] = 0;
  }
}

void DDLRTableDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[10];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[9];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void DDSourceMatchCacheFree(uint64_t *a1)
{
  if (!a1)
  {
    return;
  }

  if (a1[1] > 0)
  {
    v2 = 14;
    goto LABEL_6;
  }

  v2 = *a1;
  if ((*a1 & 0x8000000000000000) == 0)
  {
LABEL_6:
    v3 = v2 + 1;
    v4 = (a1 + 5);
    do
    {
      if (*v4)
      {
        free(*v4);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

void DDCachingStringTokenizerDestroy(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (!*(a1 + 121))
  {
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = a1[9];
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 16;
      do
      {
        v7 = *(a1[6] + v6);
        if (v7)
        {
          free(v7);
          v4 = a1[9];
        }

        ++v5;
        v6 += 32;
      }

      while (v4 > v5);
      v3 = a1[6];
    }

    goto LABEL_13;
  }

  if (v3)
  {
LABEL_13:
    free(v3);
  }

LABEL_14:
  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a1);
}