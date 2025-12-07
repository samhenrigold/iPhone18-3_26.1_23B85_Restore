id SSRedactStringClient(void *a1, int a2, int a3)
{
  v5 = a1;
  if (SSRedactStringClient_onceToken == -1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    SSRedactStringClient_cold_1();
    if (a3)
    {
LABEL_3:
      if (SSRedactStringClient_isSearchToolDebugMode == 1)
      {
        goto LABEL_5;
      }
    }
  }

  v6 = [v5 length];
  if (v6 > 4)
  {
    v8 = v6;
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v5 substringToIndex:3];
    v11 = v10;
    if (a2)
    {
      v12 = [v5 substringFromIndex:v8 - 1];
      v7 = [v9 stringWithFormat:@"%@...%@<%lu chars>", v11, v12, v8];
    }

    else
    {
      v7 = [v9 stringWithFormat:@"%@...<%lu chars>", v10, v8];
    }

    goto LABEL_10;
  }

LABEL_5:
  v7 = v5;
LABEL_10:

  return v7;
}

id SSGeneralLog()
{
  v2 = SSLogHandles[0];
  if (SSLogHandles[0])
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SSGeneralLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

void SSGeneralLog_cold_1(void *a1)
{
  if (SSInitLogging_once != -1)
  {
    dispatch_once(&SSInitLogging_once, &__block_literal_global_39);
  }

  *a1 = SSLogHandles[0];
}

id SSNormalizedQueryString(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 stringByFoldingWithOptions:385 locale:0];
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 length])
        {
          [v2 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v2 componentsJoinedByString:@" "];

  return v12;
}

id PRSLogCategoryDefault()
{
  if (PRSLogCategoryDefault_onceToken != -1)
  {
    PRSLogCategoryDefault_cold_1();
  }

  v1 = PRSLogCategoryDefault_defaultLog;

  return v1;
}

uint64_t __PRSLogCategoryDefault_block_invoke()
{
  PRSLogCategoryDefault_defaultLog = os_log_create("com.apple.spotlight", "spotlight-services");

  return MEMORY[0x1EEE66BB8]();
}

id SSDefaultsGetResources(uint64_t a1)
{
  if (SSDefaultsGetResources_onceToken != -1)
  {
    SSDefaultsGetResources_cold_1();
  }

  v2 = SSDefaultsGetResources_sSRResources;

  return v2;
}

void __SSDefaultsGetResources_block_invoke()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  if (v1 && [v1 length])
  {
    v6 = @"SRResourcesOwner";
    v7[0] = v1;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
  v4 = [v3 resourcesForClient:@"Spotlight" options:v2];
  v5 = SSDefaultsGetResources_sSRResources;
  SSDefaultsGetResources_sSRResources = v4;
}

uint64_t SSExtraApplicationVersion()
{
  v1 = 0uLL;
  v2 = 0;
  if (_SSGetMDPlistObject("v", 1, &v1) && (_MDPlistGetPlistObjectType() == 226 || _MDPlistGetPlistObjectType() == 35 || _MDPlistGetPlistObjectType() == 227 || _MDPlistGetPlistObjectType() == 51))
  {
    return _MDPlistNumberGetIntValue();
  }

  else
  {
    return 0;
  }
}

BOOL _SSGetMDPlistObject(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (_SSGetMDPlistObject_oncePathCacheToken != -1)
  {
    _SSGetMDPlistObject_cold_1();
  }

  return _SSGetMDPlistObject_sAppExtrasContainer && _MDPlistDictionaryGetPlistObjectForKey() != 0;
}

id SSRecentResultsLog()
{
  v2 = qword_1EDBEED58;
  if (qword_1EDBEED58)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SSRecentResultsLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

void SSRecentResultsLog_cold_1(void *a1)
{
  if (SSInitLogging_once != -1)
  {
    dispatch_once(&SSInitLogging_once, &__block_literal_global_39);
  }

  *a1 = qword_1EDBEED58;
}

void __SSInitLogging_block_invoke()
{
  for (i = 0; i != 4; ++i)
  {
    v1 = os_log_create("com.apple.SpotlightServices", SSLogSubsystem_block_invoke_categories[i]);
    v2 = SSLogHandles[i];
    SSLogHandles[i] = v1;
  }
}

uint64_t sub_1D9F6DA20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9F6DA58()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9F6DA98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9F6DAD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9F6DB14()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9F6DB4C()
{
  MEMORY[0x1DA746150](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9F6DB84()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9F6DBBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

CFPropertyListRef _createDictionaryWithContentsOfURL(CFURLRef fileURL, int a2, __CFError **a3)
{
  v6 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], fileURL);
  if (!v6)
  {
    if (a3)
    {
      v11 = @"File at URL is not readable";
      goto LABEL_15;
    }

    return 0;
  }

  v7 = v6;
  if (!CFReadStreamOpen(v6))
  {
    CFRelease(v7);
    goto LABEL_13;
  }

  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = CFPropertyListCreateWithStream(0, v7, 0, v8, 0, 0);
  CFReadStreamClose(v7);
  CFRelease(v7);
  if (!v9)
  {
LABEL_13:
    if (a3)
    {
      v11 = @"File at URL is not a valid property list";
      goto LABEL_15;
    }

    return 0;
  }

  v10 = CFGetTypeID(v9);
  if (v10 != CFDictionaryGetTypeID())
  {
    if (a3)
    {
      v11 = @"Property list at URL is not a dictionary";
LABEL_15:
      v9 = 0;
      *a3 = _createErrorWithMessageAndURL(v11, fileURL);
      return v9;
    }

    return 0;
  }

  return v9;
}

CFErrorRef _createErrorWithMessageAndURL(const __CFString *a1, CFURLRef anURL)
{
  if (anURL)
  {
    v3 = CFURLCopyPath(anURL);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@: %@", a1, v3);
  if (!v5)
  {
    v8 = 0;
    if (!v3)
    {
      return v8;
    }

    goto LABEL_6;
  }

  v6 = v5;
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E650], v6);
  v8 = CFErrorCreate(v4, @"com.apple.SpotlightIndex.ErrorDomain", 0, Mutable);
  CFRelease(v6);
  if (v3)
  {
LABEL_6:
    CFRelease(v3);
  }

  return v8;
}

BOOL isFsType(int a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(&v5, 0x878uLL);
  return !fstatfs(a1, &v5) && !strcmp(v5.f_fstypename, a2);
}

id SSGetDisabledBundleSet()
{
  v0 = MEMORY[0x1E695DFA8];
  v1 = CFPreferencesCopyValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v1)
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithArray:v1];
    [v2 removeObject:@"com.apple.application"];
    [v2 removeObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
    [v2 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
    [v2 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
    [v2 removeObject:@"com.apple.FileProvider.LocalStorage"];
    if ([v1 containsObject:@"com.apple.DocumentsApp"])
    {
      [v2 addObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
      [v2 addObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
      [v2 addObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
      [v2 addObject:@"com.apple.FileProvider.LocalStorage"];
    }
  }

  else
  {
    v2 = [MEMORY[0x1E695DEC8] array];
  }

  v3 = [v0 setWithArray:v2];

  return v3;
}

id SSGetDisabledAppSet()
{
  v0 = MEMORY[0x1E695DFA8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = CFPreferencesCopyValue(@"SBSearchDisabledApps", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v1 = v9[5];
  if (!v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SPCopyPrefsDisabledApps_block_invoke;
    block[3] = &unk_1E8595470;
    block[4] = &v8;
    if (SPCopyPrefsDisabledApps_onceToken != -1)
    {
      dispatch_once(&SPCopyPrefsDisabledApps_onceToken, block);
    }

    v1 = v9[5];
    if (!v1)
    {
      v2 = [MEMORY[0x1E695DEC8] array];
      v3 = v9[5];
      v9[5] = v2;

      v1 = v9[5];
    }
  }

  v4 = v1;
  _Block_object_dispose(&v8, 8);

  v5 = [v0 setWithArray:v4];

  return v5;
}

void sub_1D9F6E1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void __SPCopyPrefsDisabledApps_block_invoke(uint64_t a1)
{
  if (!CFPreferencesGetAppBooleanValue(@"11.2.Migrated", @"com.apple.spotlightui", 0))
  {
    v6 = DMGetPreviousBuildVersion();
    if (([v6 hasPrefix:@"15A"] & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"15B"))
    {
      v2 = CFPreferencesCopyValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      v3 = *(*(a1 + 32) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;

      v5 = *(*(*(a1 + 32) + 8) + 40);
      if (v5)
      {
        CFPreferencesSetAppValue(@"SBSearchDisabledApps", v5, @"com.apple.spotlightui");
      }
    }

    CFPreferencesSetAppValue(@"11.2.Migrated", *MEMORY[0x1E695E4D0], @"com.apple.spotlightui");
  }
}

size_t doBlockCompression(const uint8_t *a1, size_t a2, uint8_t **a3, compression_algorithm a4)
{
  v8 = malloc_type_malloc(a2 + 4096, 0x1EF7A43DuLL);
  *a3 = v8;

  return compression_encode_buffer(v8, a2 + 4096, a1, a2, 0, a4);
}

size_t doBlockDecompression(const uint8_t *a1, size_t a2, size_t a3, uint8_t **a4, compression_algorithm a5, int *a6)
{
  *a6 = -1;
  TemporaryFileOfSize = allocateTemporaryFileOfSize(a3, 2);
  if ((TemporaryFileOfSize & 0x80000000) == 0)
  {
    v13 = TemporaryFileOfSize;
    v14 = mmap(0, a3, 3, 1, TemporaryFileOfSize, 0);
    *a4 = v14;
    if (v14 != -1)
    {
      result = compression_decode_buffer(v14, a3, a1, a2, 0, a5);
      if (result)
      {
        *a6 = v13;
        return result;
      }
    }

    close(v13);
  }

  return 0;
}

uint64_t allocateTemporaryFileOfSize(off_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v14[0] = 0x300000002;
  v14[1] = 0;
  v14[2] = a1;
  v14[3] = 0;
  v4 = NSHomeDirectory();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/Library/Spotlight/Backup/temp_%lu.dat", a2];
  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = open([v6 UTF8String], 514, 384);
  if ((v7 & 0x80000000) != 0)
  {
    v12 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      allocateTemporaryFileOfSize_cold_2();
    }

    goto LABEL_13;
  }

  v8 = v7;
  if (fcntl(v7, 42, v14) == -1)
  {
    v9 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *__error();
      *buf = 67109120;
      v16 = v10;
      _os_log_impl(&dword_1D9F69000, v9, OS_LOG_TYPE_INFO, "preallocated temporary file failed. %d\n", buf, 8u);
    }
  }

  if (ftruncate(v8, a1) == -1)
  {
    v11 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      allocateTemporaryFileOfSize_cold_1(v11);
    }

    close(v8);
LABEL_13:
    v8 = 0xFFFFFFFFLL;
  }

  return v8;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void *__Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *SPKStringFromResponseKind(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E8595610[a1];
  }
}

__CFString *SPKStringFromSourceKind(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8595648[a1 - 1];
  }
}

void sub_1D9F75870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Block_object_dispose((v17 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1D9F75C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v17 - 120), 8);
  _Unwind_Resume(a1);
}

id encodeString(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = [@"SpotlightRankingEncoding" dataUsingEncoding:4];
  v3 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v1, "length")}];
  v4 = [v1 bytes];
  v5 = [v2 bytes];
  v6 = [v2 length];
  if ([v1 length])
  {
    v7 = 0;
    do
    {
      v10 = *(v5 + v7 % v6) ^ *(v4 + v7);
      [v3 appendBytes:&v10 length:1];
      ++v7;
    }

    while (v7 < [v1 length]);
  }

  v8 = [v3 base64EncodedStringWithOptions:0];

  return v8;
}

id decodeString(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v1 options:0];
  v3 = [@"SpotlightRankingEncoding" dataUsingEncoding:4];
  v4 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v2, "length")}];
  v5 = [v2 bytes];
  v6 = [v3 bytes];
  v7 = [v3 length];
  if ([v2 length])
  {
    v8 = 0;
    do
    {
      v11 = *(v6 + v8 % v7) ^ *(v5 + v8);
      [v4 appendBytes:&v11 length:1];
      ++v8;
    }

    while (v8 < [v2 length]);
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];

  return v9;
}

uint64_t isEventSearchIntent()
{
  result = intentLabel();
  if (result)
  {
    v1 = result;
    return !strncmp(result, "INTENT_FLIGHT", 0xDuLL) || !strncmp(v1, "INTENT_HOTEL", 0xCuLL) || strncmp(v1, "INTENT_RESTAURANT", 0x11uLL) == 0;
  }

  return result;
}

uint64_t translateKey(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"default"])
  {
    v2 = 0x7FFFFFFFFFFFFFFELL;
  }

  else
  {
    v3 = [v1 integerValue];
    if ((v3 - 1) >= 0x3FF)
    {
      v2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v2 = v3;
    }
  }

  return v2;
}

uint64_t indexForItem(uint64_t a1, void *a2)
{
  if (a1 == 0x7FFFFFFFFFFFFFFELL)
  {
    v3 = a2;
    v4 = objc_msgSend_count(v3);
    v5 = [v3 lastIndex];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 + 1;
    }

    [v3 addIndex:v6];
  }

  else
  {
    v4 = [a2 countOfIndexesInRange:{0, a1}];
  }

  return v4;
}

uint64_t isQUIntentMatchBundle(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        goto LABEL_32;
      }

      if (a1 == 1 && (SSSectionIsSyndicatedPhotos(v3) & 1) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (a1 == 2)
    {
      v5 = PRSRankingMailBundleString;
    }

    else
    {
      v5 = PRSRankingMessagesBundleString;
    }

LABEL_24:
    if ([v4 isEqualToString:*v5])
    {
LABEL_25:
      a1 = 1;
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (a1 <= 21)
  {
    if (a1 == 4)
    {
      v5 = PRSRankingNotesBundleString;
    }

    else
    {
      if (a1 != 5)
      {
        goto LABEL_26;
      }

      if ([v3 isEqualToString:@"com.apple.DocumentsApp"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.CloudDocs.MobileDocumentsFileProvider") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProvider"))
      {
        goto LABEL_25;
      }

      v5 = SSResultBundleIdFileProviderManagedDocument;
    }

    goto LABEL_24;
  }

  switch(a1)
  {
    case 0x16:
      v5 = PRSRankingSafariBundleString;
      goto LABEL_24;
    case 0x17:
      v5 = PRSRankingCalendarBundleString;
      goto LABEL_24;
    case 0x18:
      v5 = PRSRankingRemindersBundleString;
      goto LABEL_24;
  }

LABEL_26:
  v6 = intentLabel();
  a1 = v6;
  if (v6)
  {
    if (!strncmp(v6, "INTENT_FLIGHT", 0xDuLL) || !strncmp(a1, "INTENT_HOTEL", 0xCuLL) || !strncmp(a1, "INTENT_RESTAURANT", 0x11uLL))
    {
      a1 = [v4 isEqualToString:@"com.apple.spotlight.events"];
    }

    else
    {
      a1 = 0;
    }
  }

LABEL_32:

  return a1;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9F85680(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x460], 8);
  _Unwind_Resume(a1);
}

uint64_t SPSpamDemotionDisabled(uint64_t a1, uint64_t a2)
{
  if (SPSpamDemotionDisabled_onceToken != -1)
  {
    SPSpamDemotionDisabled_cold_1();
  }

  return SPSpamDemotionDisabled__spamDemotionDisabled;
}

uint64_t __SPSpamDemotionDisabled_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPRankingSpamDemotionDisabled"];

  if (v3)
  {
    v1 = [v3 BOOLValue];
  }

  else
  {
    v1 = 0;
  }

  SPSpamDemotionDisabled__spamDemotionDisabled = v1;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t SPBlockGroupingEnabled(uint64_t a1, uint64_t a2)
{
  if (SPBlockGroupingEnabled_onceToken != -1)
  {
    SPBlockGroupingEnabled_cold_1();
  }

  return SPBlockGroupingEnabled__blockGroupingEnabled;
}

uint64_t __SPBlockGroupingEnabled_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPRankingBlockGroupingEnabled"];

  if (v3)
  {
    v1 = [v3 BOOLValue];
  }

  else
  {
    v1 = 0;
  }

  SPBlockGroupingEnabled__blockGroupingEnabled = v1;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t SPExperimentalScoringEnabled(uint64_t a1, uint64_t a2)
{
  if (SPExperimentalScoringEnabled_onceToken != -1)
  {
    SPExperimentalScoringEnabled_cold_1();
  }

  return SPExperimentalScoringEnabled__experimentalScoringEnabled;
}

uint64_t __SPExperimentalScoringEnabled_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPRankingExperimentalScoringEnabled"];

  if (v3)
  {
    v1 = [v3 BOOLValue];
  }

  else
  {
    v1 = 0;
  }

  SPExperimentalScoringEnabled__experimentalScoringEnabled = v1;

  return MEMORY[0x1EEE66BB8]();
}

float SPRankingTopHitMustBeOverrideMinScore(uint64_t a1, uint64_t a2)
{
  if (SPRankingTopHitMustBeOverrideMinScore_onceToken != -1)
  {
    SPRankingTopHitMustBeOverrideMinScore_cold_1();
  }

  return *&SPRankingTopHitMustBeOverrideMinScore__topHitMustBeOverrideMinScore;
}

void __SPRankingTopHitMustBeOverrideMinScore_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPRankingTopHitMustBeOverrideMinScore"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
    SPRankingTopHitMustBeOverrideMinScore__topHitMustBeOverrideMinScore = v2;
  }
}

float SPRankingTopHitMustBeOverrideMinFileScore(uint64_t a1, uint64_t a2)
{
  if (SPRankingTopHitMustBeOverrideMinFileScore_onceToken != -1)
  {
    SPRankingTopHitMustBeOverrideMinFileScore_cold_1();
  }

  return *&SPRankingTopHitMustBeOverrideMinFileScore__topHitMustBeOverrideMinFileScore;
}

void __SPRankingTopHitMustBeOverrideMinFileScore_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPRankingTopHitMustBeOverrideMinFileScore"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
    SPRankingTopHitMustBeOverrideMinFileScore__topHitMustBeOverrideMinFileScore = v2;
  }
}

float SPRankingTopHitMustBeOverrideMinSpellCorrectedAppScore(uint64_t a1, uint64_t a2)
{
  if (SPRankingTopHitMustBeOverrideMinSpellCorrectedAppScore_onceToken != -1)
  {
    SPRankingTopHitMustBeOverrideMinSpellCorrectedAppScore_cold_1();
  }

  return *&SPRankingTopHitMustBeOverrideMinSpellCorrectedAppScore__topHitMustBeOverrideMinSpellCorrectedAppScore;
}

void __SPRankingTopHitMustBeOverrideMinSpellCorrectedAppScore_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPRankingTopHitMustBeOverrideMinSpellCorrectedAppScore"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
    SPRankingTopHitMustBeOverrideMinSpellCorrectedAppScore__topHitMustBeOverrideMinSpellCorrectedAppScore = v2;
  }
}

BOOL preferShortCutOverFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = SSCompactRankingAttrsGetValue([v3 attributes], 7uLL);
  v6 = SSCompactRankingAttrsGetValue([v4 attributes], 7uLL);
  if ([v5 isEqualToString:v6])
  {
    v7 = [v3 L2FeatureVector];
    [v7 scoreForFeature:165];
    v9 = v8;

    v10 = [v4 L2FeatureVector];
    [v10 scoreForFeature:165];
    v12 = v11;

    v14 = v9 == v12 && v9 != 2147500000.0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t preferContactOverMusic(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 L2FeatureVector];
  [v5 scoreForFeature:165];
  v7 = v6;

  v8 = SSMinContactsTopHitScore();
  if (v7 == 2147500000.0 || ([v3 L2FeatureVector], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "originalL2Score"), v11 = v10, v9, v11 <= v8) || (objc_msgSend(v4, "L2FeatureVector"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "scoreForFeature:", 167), v14 = v13, v12, objc_msgSend(v4, "L2FeatureVector"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "scoreForFeature:", 185), v17 = v16, v15, objc_msgSend(v4, "L2FeatureVector"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "scoreForFeature:", 181), v20 = v19, v18, objc_msgSend(v4, "L2FeatureVector"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "scoreForFeature:", 876), v23 = v22, v21, v14 != 2147500000.0) || v17 != 2147500000.0 || (v24 = 1, v20 == 2147500000.0) && v23 == 2147500000.0)
  {
    v24 = 0;
  }

  return v24;
}

BOOL preferAppOverPhotosApp(void *a1)
{
  v1 = [a1 L2FeatureVector];
  [v1 scoreForFeature:165];
  v3 = v2;

  return v3 != 2147500000.0;
}

void logRule(void *a1, void *a2, void *a3, void *a4)
{
  v19 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 && isInternalDevice == 1)
  {
    if (v7 && v8)
    {
      v10 = MEMORY[0x1E696AD60];
      v11 = [v7 identifier];
      v12 = [v8 identifier];
      v13 = [v10 stringWithFormat:@"item1=%@ item2=%@", v11, v12];

LABEL_8:
      v15 = [(__CFString *)v9 objectForKey:v19];
      if (v15)
      {
        v16 = v15;
        v17 = @"1";
        v18 = v13;
      }

      else
      {
        v16 = objc_opt_new();
        [(__CFString *)v16 setObject:@"1" forKey:v13];
        v15 = v9;
        v17 = v16;
        v18 = v19;
      }

      [(__CFString *)v15 setObject:v17 forKey:v18];

      goto LABEL_12;
    }

    if (v7)
    {
      v14 = MEMORY[0x1E696AD60];
      v11 = [v7 identifier];
      v13 = [v14 stringWithFormat:@"item=%@", v11];
      goto LABEL_8;
    }
  }

LABEL_12:
}

uint64_t compareBestLocalResultsWithRules(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 rankingItem];
  v9 = [v6 rankingItem];
  v10 = [v5 rankingItem];
  v11 = [v10 shouldHideUnderShowMore];

  v12 = [v6 rankingItem];
  v13 = [v12 shouldHideUnderShowMore];

  if ((v11 & 1) != 0 || !v13)
  {
    if (!(v13 & 1 | ((v11 & 1) == 0)))
    {
      v22 = @"rule:l3_local:should_hide_under_show_more";
      v23 = v5;
      goto LABEL_10;
    }

    v18 = [v8 L2FeatureVector];
    if (v18)
    {
      v19 = [v8 L2FeatureVector];
      [v19 scoreForFeature:3234];
      v21 = v20 != 0.0;
    }

    else
    {
      v21 = 0;
    }

    v25 = [v8 L2FeatureVector];
    if (v25)
    {
      v26 = [v9 L2FeatureVector];
      [v26 scoreForFeature:3234];
      v28 = v27 != 0.0;
    }

    else
    {
      v28 = 0;
    }

    if (([v8 bundleIDType] & 0x200000) == 0 || (objc_msgSend(v9, "bundleIDType") & 0x800) == 0)
    {
      if (([v8 bundleIDType] & 0x800) != 0 && (objc_msgSend(v9, "bundleIDType") & 0x200000) != 0)
      {
        if (!preferShortCutOverFile(v9, v8))
        {
          goto LABEL_52;
        }

        v22 = @"rule:l3_local:prefer_shortcut_over_file";
      }

      else
      {
        if (([v8 bundleIDType] & 4) != 0 && (objc_msgSend(v9, "bundleIDType") & 0x200) != 0)
        {
          if (!preferContactOverMusic(v8, v9))
          {
            goto LABEL_52;
          }

          v14 = @"rule:l3_local:prefer_contact_over_music";
          goto LABEL_39;
        }

        if (([v8 bundleIDType] & 0x200) == 0 || (objc_msgSend(v9, "bundleIDType") & 4) == 0)
        {
          if (([v8 bundleIDType] & 0x100) == 0 && (objc_msgSend(v8, "bundleIDType") & 0x10000) == 0 || (objc_msgSend(v9, "bundleIDType") & 0x40000) == 0)
          {
            if (([v8 bundleIDType] & 0x40000) != 0 && ((objc_msgSend(v9, "bundleIDType") & 0x100) != 0 || (objc_msgSend(v9, "bundleIDType") & 0x10000) != 0))
            {
              if (preferAppOverPhotosApp(v9))
              {
                v22 = @"rule:l3_local:prefer_apps_over_photosapp";
                goto LABEL_46;
              }

LABEL_52:
              v17 = 0;
              goto LABEL_53;
            }

            if (([v8 bundleIDType] & 4) != 0 && objc_msgSend(v8, "isPerfectMatch"))
            {
              v14 = @"rule:l3_local:contact_is_perfect_match";
LABEL_55:
              v15 = v5;
              goto LABEL_4;
            }

            if (([v9 bundleIDType] & 4) != 0 && objc_msgSend(v9, "isPerfectMatch"))
            {
              v22 = @"rule:l3_local:contact_is_perfect_match";
            }

            else
            {
              if (!v28 && v21)
              {
                v14 = @"rule:l3_local:contact_is_associate_with_tophit_contact";
                goto LABEL_55;
              }

              if (v21 || !v28)
              {
                goto LABEL_52;
              }

              v22 = @"rule:l3_local:contact_is_associate_with_tophit_contact";
            }

            v23 = v6;
LABEL_10:
            v24 = 0;
LABEL_11:
            logRule(v22, v23, v24, v7);
            v17 = -1;
            goto LABEL_53;
          }

          v29 = [v8 L2FeatureVector];
          [v29 scoreForFeature:165];
          v31 = v30;

          if (v31 == 2147500000.0)
          {
            goto LABEL_52;
          }

          v14 = @"rule:l3_local:prefer_apps_over_photosapp";
LABEL_39:
          v15 = v5;
          v16 = v6;
          goto LABEL_5;
        }

        if (!preferContactOverMusic(v9, v8))
        {
          goto LABEL_52;
        }

        v22 = @"rule:l3_local:prefer_contact_over_music";
      }

LABEL_46:
      v23 = v6;
      v24 = v5;
      goto LABEL_11;
    }

    if (!preferShortCutOverFile(v8, v9))
    {
      goto LABEL_52;
    }

    v14 = @"rule:l3_local:prefer_shortcut_over_file";
    goto LABEL_39;
  }

  v14 = @"rule:l3_local:should_hide_under_show_more";
  v15 = v6;
LABEL_4:
  v16 = 0;
LABEL_5:
  logRule(v14, v15, v16, v7);
  v17 = 1;
LABEL_53:

  return v17;
}

void sub_1D9F8E6C0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x750], 8);
  _Block_object_dispose(&STACK[0x9C0], 8);
  _Block_object_dispose(&STACK[0x9E0], 8);
  _Block_object_dispose(&STACK[0xA00], 8);
  _Block_object_dispose(&STACK[0xA20], 8);
  _Block_object_dispose(&STACK[0xA40], 8);
  _Block_object_dispose(&STACK[0xA60], 8);
  _Block_object_dispose(&STACK[0xA80], 8);
  _Block_object_dispose(&STACK[0x1550], 8);
  _Block_object_dispose(&STACK[0xB10], 8);
  _Unwind_Resume(a1);
}

void sub_1D9F90F5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9F9133C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL hasTrailingAsterisk(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = v2 - 1;
    do
    {
      v6 = [v1 characterAtIndex:v4];
      if (v4 < v5 && v6 == 92)
      {
        v7 = 0;
        ++v4;
      }

      else
      {
        v7 = [v1 characterAtIndex:v4] == 42;
      }

      ++v4;
    }

    while (v4 < v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1D9FA9B54(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    v3 = SSGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(STACK[0xBC0]) = 138412290;
      STACK[0xBC4] = v2;
      _os_log_impl(&dword_1D9F69000, v3, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] L2 models prediction error: %@!", &STACK[0xBC0], 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1D9FA9B34);
  }

  _Unwind_Resume(a1);
}

double SSRankingManagerTopHitThreshold(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = [SSRankingManager getTopHitsThresholdsForBundleId:v5 queryLength:a2 queryTermCount:a3 getFallback:0];
  if (objc_msgSend_count(v6))
  {
    v7 = v6;
  }

  else
  {
    v7 = [SSRankingManager getTopHitsThresholdsForBundleId:v5 queryLength:a2 queryTermCount:a3 getFallback:1];

    if (!objc_msgSend_count(v7))
    {
      v10 = 2.0;
      goto LABEL_6;
    }

    v6 = v7;
  }

  v8 = [v6 objectAtIndexedSubscript:0];
  [v8 doubleValue];
  v10 = v9;

LABEL_6:
  return v10;
}

uint64_t __isOptionalSearchTermForPreExtractionFilter_block_invoke()
{
  isOptionalSearchTermForPreExtractionFilter_OptionalSearchTerms = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F55B7130];

  return MEMORY[0x1EEE66BB8]();
}

void __loadRankingThresholdingParameters_block_invoke()
{
  v0 = SSDefaultsGetAssetPath(@"rankingConfig.plist");
  if (v0)
  {
    v1 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v0];
    v2 = v1;
    v3 = &unk_1ECB9F000;
    if (v1)
    {
      v4 = [v1 objectForKey:@"DenseNormalizationMax"];
      v5 = [v2 objectForKey:@"SparseScoreCap"];
      v6 = [v2 objectForKey:@"DenseScoreCap"];
      v7 = [v2 objectForKey:@"SparseLikelihoodWeight"];
      v8 = [v2 objectForKey:@"DenseLikelihoodWeight"];
      if (v4)
      {
        [v4 floatValue];
        denseNormalizationMax = v9;
      }

      if (v5)
      {
        [v5 floatValue];
        sparseScoreCap = v10;
      }

      if (v6)
      {
        [v6 floatValue];
        denseScoreCap = v11;
      }

      if (v7)
      {
        [v7 floatValue];
        sparseLikelihoodWeight = v12;
      }

      v62 = v4;
      if (v8)
      {
        [v8 floatValue];
        *denseLikelihoodWeight = v13;
      }

      v58 = v8;
      v14 = [v2 objectForKey:@"AcrossBundleAbsoluteThreshold"];
      v15 = [v2 objectForKey:@"AcrossBundleRelativeThreshold"];
      v16 = [v2 objectForKey:@"InBundleRelativeThreshold"];
      v17 = [v2 objectForKey:@"InBundleAbsoluteThreshold"];
      v64 = [v2 objectForKey:@"InferredAppEntityMatchBoosting"];
      if (v14)
      {
        [v14 floatValue];
        acrossBundleAbsoluteThreshold = v18;
      }

      if (v15)
      {
        [v15 floatValue];
      }

      v59 = v7;
      v60 = v6;
      v61 = v5;
      if (v16)
      {
        [v16 floatValue];
      }

      if (v17)
      {
        v19 = [v17 objectForKey:@"com.apple.DocumentsApp"];
        v20 = [v17 objectForKey:@"com.apple.mobileslideshow"];
        v21 = [v17 objectForKey:@"shared_link"];
        if (v19)
        {
          [v19 floatValue];
          inBundleAbsoluteThresholdForFiles = v22;
        }

        if (v20)
        {
          [v20 floatValue];
          inBundleAbsoluteThresholdForPhotos = v23;
        }

        if (v64)
        {
          [v64 floatValue];
          inferredAppEntityMatchBoosting = v24;
        }

        if (v21)
        {
          [v21 floatValue];
        }

        else
        {
          v25 = 1050253722;
        }

        inBundleAbsoluteThresholdForSharedLinkMatches = v25;
      }

      v26 = [v2 objectForKey:@"FreshnessThresholdNumDays"];
      v27 = v26;
      v57 = v14;
      if (v26)
      {
        v28 = [v26 objectForKey:@"FutureEventMailOrMessages"];
        v29 = [v27 objectForKey:@"FutureMailOrMessages"];
        v30 = [v27 objectForKey:@"FutureEventGeneric"];
        v31 = [v27 objectForKey:@"FutureGeneric"];
        if (v28)
        {
          futureEventFromQUMailAndMessagesRecencyThreshold = [v28 intValue];
        }

        if (v29)
        {
          futureFromQUMailAndMessagesRecencyThreshold = [v29 intValue];
        }

        if (v30)
        {
          futureEventFromQUGenericRecencyThreshold = [v30 intValue];
        }

        if (v31)
        {
          futureFromQUGenericRecencyThreshold = [v31 intValue];
        }

        v3 = &unk_1ECB9F000;
      }

      v32 = [v2 objectForKey:@"EmailUpdatesDemotion"];
      v33 = v32;
      if (v32)
      {
        [v32 floatValue];
        emailUpdatesDemotion = v34;
      }

      v35 = [v2 objectForKey:@"EmailUpdatesSenderList"];
      if (objc_msgSend_count(v35))
      {
        v36 = [MEMORY[0x1E695DFA8] setWithArray:v35];
        v37 = v3[99];
        v3[99] = v36;
      }

      v38 = SSGeneralLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        __loadRankingThresholdingParameters_block_invoke_cold_1();
      }
    }

    if (!v3[99])
    {
      v63 = MEMORY[0x1E695DFD8];
      v65 = v0;
      v39 = decodeString(@"EwEaHRxEBhgEPgRACAYD");
      v40 = decodeString(@"IRELFR4pBhgEPgRACAYD");
      v41 = decodeString(@"EwMbFR8BSRsQfAAeGwULSSYBDg==");
      v42 = decodeString(@"MhQIKw4GEygVIhECDkcNCCg=");
      v43 = decodeString(@"NBkbHBkLJw8dJgkbCUceBjcdBgxKCB4XPxVBFwME");
      v44 = decodeString(@"IxkKWQsAEwABMEwABBsLFykXIw4UGQICfRMAGQ==");
      v45 = decodeString(@"PR8dERwFHigTOxUGHgtAFCwcCkEFGR4LNl4MGwE=");
      v46 = decodeString(@"NAUOBggABgZZIRUPHxwdJyIcDBoURw8XIxwKWg8GCg==");
      v47 = [v63 setWithObjects:{v39, v40, v41, v42, v43, v44, v45, v46, 0}];
      v48 = v3[99];
      v3[99] = v47;

      v49 = SSGeneralLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        __loadRankingThresholdingParameters_block_invoke_cold_2(v49, v50, v51, v52, v53, v54, v55, v56);
      }

      v0 = v65;
    }
  }

  else
  {
    v2 = SSGeneralLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __loadRankingThresholdingParameters_block_invoke_cold_3();
    }
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t json_writer_init_with_buffer(uint64_t result, unint64_t a2)
{
  if (a2 < 0x21)
  {
    return 0;
  }

  *result = 0u;
  *(result + 16) = 0u;
  *result = 0xFFFFFFFFLL;
  *(result + 16) = a2 - 32;
  *(result + 24) = result + 32;
  *(result + 8) = 1;
  *(result + 10) = 1;
  return result;
}

_BYTE *json_writer_create_with_path(const char *a1, uint64_t a2)
{
  v4 = a2 + 32;
  v5 = malloc_type_malloc(a2 + 32, 0x101004059E566D7uLL);
  v6 = v5;
  if (v4 <= 0x20 || (*v5 = 0u, *(v5 + 1) = 0u, *v5 = 0xFFFFFFFFLL, *(v5 + 2) = a2, *(v5 + 3) = v5 + 32, *(v5 + 4) = 1, v5[10] = 1, v7 = open(a1, 1537, 438), *v6 = v7, v7 == -1))
  {
    free(v6);
    return 0;
  }

  else
  {
    v6[10] = 0;
  }

  return v6;
}

void json_writer_dispose(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2 != -1)
    {
      if (!a1[1])
      {
        json_writer_flush(a1);
        v2 = *a1;
      }

      close(v2);
    }

    free(a1);
  }
}

ssize_t json_writer_flush(ssize_t result)
{
  if (!*(result + 4))
  {
    v1 = result;
    if ((*(result + 10) & 1) == 0)
    {
      result = write(*result, (result + 32), *(result + 24) - (result + 32));
      if (result == -1)
      {
        result = __error();
        v2 = *result;
        if (!*result)
        {
          v2 = -1;
        }

        *(v1 + 4) = v2;
      }

      *(v1 + 24) = v1 + 32;
    }
  }

  return result;
}

uint64_t json_writer_get_data(uint64_t result, void *a2)
{
  if (result)
  {
    if (*(result + 4))
    {
      return 0;
    }

    else
    {
      if (a2)
      {
        *a2 = result + 32;
      }

      return *(result + 24) - result - 32;
    }
  }

  return result;
}

uint64_t json_writer_get_err(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t json_writer_get_fd(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

_DWORD *json_writer_add_raw_value(uint64_t a1, char *__src, size_t __n)
{
  if ((*(a1 + 8) & 1) == 0 && (*(a1 + 9) & 1) == 0)
  {
    _json_writer_add(a1, ",", 1uLL);
  }

  if (__n == -1)
  {
    __n = strlen(__src);
  }

  result = _json_writer_add(a1, __src, __n);
  *(a1 + 8) = 0;
  return result;
}

_DWORD *_json_writer_add(_DWORD *result, char *__src, size_t __n)
{
  if (__n)
  {
    v3 = result;
    if (!result[1])
    {
      v4 = __n;
      v6 = (result + 8);
      result = *(result + 3);
      while (1)
      {
        v7 = v6 - result + *(v3 + 2);
        if (v4 <= v7)
        {
          result = memcpy(result, __src, v4);
          *(v3 + 3) += v4;
          return result;
        }

        if (*(v3 + 10) == 1)
        {
          v8 = 7;
          goto LABEL_13;
        }

        memcpy(result, __src, v7);
        if (write(*v3, v3 + 8, *(v3 + 2)) == -1)
        {
          break;
        }

        *(v3 + 3) = v6;
        __src += v7;
        result = v3 + 8;
        v4 -= v7;
        if (!v4)
        {
          return result;
        }
      }

      result = __error();
      v8 = *result;
      if (!*result)
      {
        v8 = -1;
      }

LABEL_13:
      v3[1] = v8;
    }
  }

  return result;
}

_DWORD *json_writer_add_uint64(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x80uLL, "%llu", a2);
  return json_writer_add_raw_value(a1, __str, 0xFFFFFFFFFFFFFFFFLL);
}

_DWORD *json_writer_add_int64(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x80uLL, "%lld", a2);
  return json_writer_add_raw_value(a1, __str, 0xFFFFFFFFFFFFFFFFLL);
}

_DWORD *json_writer_add_double(_DWORD *result, double a2)
{
  v2 = result;
  v11 = *MEMORY[0x1E69E9840];
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    *__str = 0u;
    v4 = 0u;
    snprintf(__str, 0x80uLL, "%.*g", 17, a2);
    return json_writer_add_raw_value(v2, __str, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    result[1] = 22;
  }

  return result;
}

_DWORD *json_writer_add_uint32(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x80uLL, "%u", a2);
  return json_writer_add_raw_value(a1, __str, 0xFFFFFFFFFFFFFFFFLL);
}

_DWORD *json_writer_begin_array(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0 && (*(a1 + 9) & 1) == 0)
  {
    _json_writer_add(a1, ",", 1uLL);
  }

  result = _json_writer_add(a1, "[", 1uLL);
  *(a1 + 8) = 1;
  return result;
}

_DWORD *json_writer_end_array(uint64_t a1)
{
  result = _json_writer_add(a1, "]", 1uLL);
  *(a1 + 8) = 0;
  return result;
}

_DWORD *json_writer_begin_dictionary(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0 && (*(a1 + 9) & 1) == 0)
  {
    _json_writer_add(a1, ",", 1uLL);
  }

  result = _json_writer_add(a1, "{", 1uLL);
  *(a1 + 8) = 1;
  return result;
}

_DWORD *json_writer_end_dictionary(uint64_t a1)
{
  result = _json_writer_add(a1, "}", 1uLL);
  *(a1 + 8) = 0;
  return result;
}

_DWORD *json_writer_add_key(uint64_t a1, char *a2, size_t a3, int a4)
{
  if (*(a1 + 9) == 1 && !*(a1 + 4))
  {
    *(a1 + 4) = -1;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    _json_writer_add(a1, ",", 1uLL);
  }

  _json_writer_add(a1, "", 1uLL);
  if (a4)
  {
    if (a3 == -1)
    {
      a3 = strlen(a2);
    }

    _json_writer_add(a1, a2, a3);
  }

  else
  {
    if (a3 == -1)
    {
      a3 = strlen(a2);
    }

    _json_writer_add_string_escaping(a1, a2, a3);
  }

  result = _json_writer_add(a1, ":", 2uLL);
  *(a1 + 9) = 1;
  return result;
}

_DWORD *_json_writer_add_string_escaping(_DWORD *result, char *a2, uint64_t a3)
{
  __src[0] = 92;
  if (!a3)
  {
    return result;
  }

  v3 = a3;
  v4 = result;
  v5 = a2;
  v6 = a2;
  do
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 < 0)
    {
      goto LABEL_20;
    }

    if (v7 <= 0xBu)
    {
      switch(v7)
      {
        case 8u:
          v7 = 98;
          break;
        case 9u:
          v7 = 116;
          break;
        case 0xAu:
          v7 = 110;
          break;
        default:
          goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v7 <= 0x21u)
    {
      if (v7 == 12)
      {
        v7 = 102;
      }

      else
      {
        if (v7 != 13)
        {
          goto LABEL_20;
        }

        v7 = 114;
      }

LABEL_19:
      __src[1] = v7;
      _json_writer_add(v4, a2, v5 - a2);
      result = _json_writer_add(v4, __src, 2uLL);
      a2 = v6;
      goto LABEL_20;
    }

    if (v7 == 34 || v7 == 92)
    {
      goto LABEL_19;
    }

LABEL_20:
    ++v5;
    --v3;
  }

  while (v3);
  if (v6 != a2)
  {

    return _json_writer_add(v4, a2, v5 - a2);
  }

  return result;
}

_DWORD *json_writer_add_string(_DWORD *result, char *a2, size_t a3, int a4)
{
  if (a2)
  {
    v7 = result;
    if ((result[2] & 1) == 0 && (*(result + 9) & 1) == 0)
    {
      _json_writer_add(result, ",", 1uLL);
    }

    _json_writer_add(v7, "", 1uLL);
    if (a4)
    {
      if (a3 == -1)
      {
        a3 = strlen(a2);
      }

      _json_writer_add(v7, a2, a3);
    }

    else
    {
      if (a3 == -1)
      {
        a3 = strlen(a2);
      }

      _json_writer_add_string_escaping(v7, a2, a3);
    }

    result = _json_writer_add(v7, "", 1uLL);
    *(v7 + 4) = 0;
  }

  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t openbyid(int a1)
{
  if (device_id_onceToken != -1)
  {
    openbyid_cold_1();
  }

  v1 = openbyid_np();
  if ((v1 & 0x80000000) != 0)
  {
    v2 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      openbyid_cold_2();
    }
  }

  return v1;
}

void __device_id_block_invoke()
{
  memset(&v3, 0, sizeof(v3));
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 URLsForDirectory:5 inDomains:1];
  v2 = [v1 objectAtIndexedSubscript:0];

  if (stat([v2 fileSystemRepresentation], &v3))
  {
    __device_id_block_invoke_cold_1();
  }

  device_id_deviceID = v3.st_dev;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void __68__spotlight_l3_1_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[spotlight_l3_1 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __59__spotlight_l3_1_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [spotlight_l3_1Output alloc];
    v7 = [v14 featureValueForName:@"y"];
    v8 = [v7 multiArrayValue];
    v9 = [v14 featureValueForName:@"id_features"];
    v10 = [v9 multiArrayValue];
    v11 = [(spotlight_l3_1Output *)v6 initWithY:v8 id_features:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __67__spotlight_l3_1_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [spotlight_l3_1Output alloc];
    v7 = [v14 featureValueForName:@"y"];
    v8 = [v7 multiArrayValue];
    v9 = [v14 featureValueForName:@"id_features"];
    v10 = [v9 multiArrayValue];
    v11 = [(spotlight_l3_1Output *)v6 initWithY:v8 id_features:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

id removeLeadingSpaces(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  if (v2)
  {
    v4 = 0;
    while ([v3 characterIsMember:{objc_msgSend(v1, "characterAtIndex:", v4)}])
    {
      if (v2 == ++v4)
      {
        v4 = v2;
        goto LABEL_7;
      }
    }

    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    v5 = [v1 substringFromIndex:v4];
  }

  else
  {
LABEL_8:
    v5 = v1;
  }

  v6 = v5;

  return v6;
}

void __65__calibration_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[calibration alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__calibration_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [calibrationOutput alloc];
    v7 = [v12 featureValueForName:@"output"];
    v8 = [v7 multiArrayValue];
    v9 = [(calibrationOutput *)v6 initWithOutput:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void __64__calibration_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [calibrationOutput alloc];
    v7 = [v12 featureValueForName:@"output"];
    v8 = [v7 multiArrayValue];
    v9 = [(calibrationOutput *)v6 initWithOutput:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1D9FC6AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1D9FCC41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D9FCCA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  objc_sync_exit(v18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __collectTokens_block_invoke()
{
  v0 = collectTokens_locationAnnotationsToCheck;
  collectTokens_locationAnnotationsToCheck = &unk_1F55B71A8;
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void __77__searchToolL2_mobilemail_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[searchToolL2_mobilemail alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __68__searchToolL2_mobilemail_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [searchToolL2_mobilemailOutput alloc];
    v7 = [v14 featureValueForName:@"label"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"prob"];
    v10 = [v9 dictionaryValue];
    v11 = [(searchToolL2_mobilemailOutput *)v6 initWithLabel:v8 prob:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __76__searchToolL2_mobilemail_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [searchToolL2_mobilemailOutput alloc];
    v7 = [v14 featureValueForName:@"label"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"prob"];
    v10 = [v9 dictionaryValue];
    v11 = [(searchToolL2_mobilemailOutput *)v6 initWithLabel:v8 prob:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1D9FDCE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9FDEDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSDefaultQueryParseResultsForQueryString(void *a1, uint64_t a2, char a3, int a4, int a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, char a11, char a12)
{
  v14 = a1;
  v15 = objc_opt_new();
  [v15 setObject:&stru_1F556FE60 forKey:@"completionString"];
  [v15 setObject:&stru_1F556FE60 forKey:@"query"];
  [v15 setObject:MEMORY[0x1E695E110] forKey:@"isMath"];
  v16 = v14;
  v17 = [v16 length];
  v18 = SSStringStartsWithDoubleQuote(v16);
  v19 = SSStringEndsWithDoubleQuote(v16);
  v68 = SSStringEndsWithSpace(v16);
  if (a11)
  {
    v66 = looksLikeMath(v16);
  }

  else
  {
    v66 = 0;
  }

  v20 = hasDigit(v16);
  v67 = v18;
  v21 = v19;
  if (a3)
  {
    v22 = 1;
  }

  else
  {
    v22 = v18 & (v19 | v68);
  }

  v69 = 0;
  v23 = SSPhraseQueryEscapeString(v16, &v69);
  v24 = v69;
  v25 = objc_opt_new();
  v65 = v24;
  if (!objc_msgSend_count(v24))
  {
    goto LABEL_64;
  }

  if (v22)
  {
    v26 = @"cwd";
    if (a4)
    {
      v26 = @"cwds";
    }

    v27 = v26;
    objc_msgSend(v25, "appendString:", @"(");
    appendMainQueryString(v25, v23, v27, 0, a9, 1, v17 > 3);

    [v25 appendFormat:@" || _kMDItemLaunchString=%@cwd", v23];
LABEL_17:
    [v25 appendString:@""]);
    goto LABEL_64;
  }

  v28 = v17;
  v29 = v21;
  if (v67 && (v21 & v68 & 1) == 0)
  {
    v30 = @"cwd";
    if (a4)
    {
      v30 = @"cwds";
    }

    v31 = v30;
    objc_msgSend(v25, "appendString:", @"(");
    appendMainQueryString(v25, v23, v31, 1, a9, 1, v17 > 3);

    goto LABEL_17;
  }

  if (a5)
  {
    v32 = (v17 > 3) & (v66 ^ 1);
  }

  else
  {
    v32 = 0;
  }

  if (v17 > 2)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  if (((v33 | v68 | a10) & 1) == 0 || (v66 & v20) != 0)
  {
    if (!v17)
    {
      goto LABEL_48;
    }

    v36 = [v16 UTF8String];
    if (!v36)
    {
      goto LABEL_48;
    }

    v37 = *v36;
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v38 = *v36 >> 4;
    v39 = utf8_byte_length_utf8_len_table[v38];
    v37 &= utf8_to_code_point_utf8_first_char_mask[v39];
    if ((~v38 & 0xC) != 0)
    {
      goto LABEL_46;
    }

    v40 = v39 <= 2 ? 2 : utf8_byte_length_utf8_len_table[v38];
    v41 = v40 - 1;
    v42 = (v36 + 1);
    do
    {
      v43 = v37;
      v44 = *v42++;
      v37 = v44 & 0x3F | (v37 << 6);
      --v41;
    }

    while (v41);
    if (v43 << 6 >> 8 < 0x11 || (v43 & 0x3FFFFFC) != 0x44 && ((v43 << 6) - 11904) >> 7 >= 0x197 && v37 - 65376 >= 0x50)
    {
LABEL_46:
      if ((vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v37), xmmword_1DA0D5590), xmmword_1DA0D55A0))) & 1) == 0 && v37 - 127744 >= 0x350 && v37 - 9984 >= 0xC0 && v37 - 127462 > 0x19)
      {
LABEL_48:
        v34 = a5;
        v59 = 0;
        v35 = 0;
        goto LABEL_49;
      }
    }

    v34 = a5;
    v59 = 1;
  }

  else
  {
    v59 = v17 > 3;
    v34 = a5;
  }

  v35 = 1;
LABEL_49:
  v46 = @"cwdt";
  if (a4)
  {
    v46 = @"cwdts";
  }

  v47 = v46;
  v48 = @"false";
  if (v34 && a8)
  {
    v48 = SSDisplayNameAdditionsQuery(v23, v47, v32);
  }

  v64 = v48;
  if ((v32 & a6) == 1)
  {
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"((kMDItemContentURL=%@*%@f070 || kMDItemTitle=%@*%@f070 || kMDItemContentURL=*%@*%@ || kMDItemTitle=*%@*%@) && _kMDItemBundleID=com.apple.mobilesafari", v23, v47, v23, v47, v23, v47, v23, v47];
  }

  else
  {
    v61 = @"false";
  }

  if ((v32 & a12) == 1)
  {
    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(**=%@*%@f070)", v23, v47];
  }

  else
  {
    v62 = @"false";
  }

  v21 = v29;
  v49 = 1;
  v50 = v47;
  if (objc_msgSend_count(v65) <= 1 && (v35 & v59 & 1) == 0)
  {
    v51 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v49 = [v51 characterIsMember:{objc_msgSend(v16, "characterAtIndex:", objc_msgSend(v16, "length") - 1)}];
  }

  objc_msgSend(v25, "appendString:", @"(");
  appendMainQueryString(v25, v23, v50, 1, a9, v35 | v49, v28 > 3);
  [v25 appendFormat:@" || %@ || %@ || %@"], v64, v61, v62);

LABEL_64:
  if ((v68 | (v67 && v21)))
  {
    v52 = v23;
  }

  else
  {
    v52 = [v23 stringByAppendingString:@"*"];
  }

  v53 = v52;
  v54 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v55 = [v53 stringByTrimmingCharactersInSet:v54];

  [v15 setObject:v55 forKey:@"completionString"];
  [v15 setObject:v25 forKey:@"query"];
  v56 = [MEMORY[0x1E696AD98] numberWithBool:v66];
  [v15 setObject:v56 forKey:@"isMath"];

  return v15;
}

void appendMainQueryString(void *a1, void *a2, void *a3, int a4, int a5, char a6, int a7)
{
  v28 = a1;
  v13 = a2;
  v14 = a3;
  v15 = [v14 stringByAppendingString:@"i"];
  v16 = v15;
  v17 = "";
  if (a4)
  {
    v17 = "*";
  }

  if (a6)
  {
    if (a5)
    {
      v25 = v15;
      v27 = @"com.apple.mobileslideshow";
      v21 = v13;
      v23 = v17;
      v19 = v14;
      v18 = @"(*=%@%s%@) || (kMDItemTextContent=%@%s%@ && _kMDItemBundleID!=%@i)";
LABEL_8:
      [v28 appendFormat:v18, v13, v17, v19, v21, v23, v25, v27];
      goto LABEL_11;
    }

    [v28 appendFormat:@"(**=%@%s%@)", v13, v17, v14, v20, v22, v24, v26];
  }

  else
  {
    if (a7)
    {
      v25 = v15;
      v27 = @"com.apple.MobileSMS";
      v21 = v13;
      v23 = v17;
      v19 = v14;
      v18 = @"(*=%@%s%@) || (kMDItemTextContent=%@%s%@ && _kMDItemBundleID=%@i)";
      goto LABEL_8;
    }

    [v28 appendFormat:@"(*=%@%s%@)", v13, v17, v14, v20, v22, v24, v26];
  }

LABEL_11:
}

id SSQueryParseResultsForQueryString(void *a1, void *a2, int a3, int a4, uint64_t a5)
{
  v181 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = SSGeneralLog();
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  v141 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9F69000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SSQueryParseResultsForQueryString", "", buf, 2u);
  }

  spid = v10;
  v140 = v12;

  v13 = [MEMORY[0x1E696AEC0] stringWithString:v7];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
  v15 = [v14 objectForKeyedSubscript:@"queryID"];

  if (!v15)
  {
    v151 = -1;
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_10:
    [0 length];
    v17 = 0;
    goto LABEL_11;
  }

  v16 = [v14 objectForKeyedSubscript:@"queryID"];
  v151 = [v16 longValue];

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_6:
  v17 = __MDQueryCopyTextTerms();
  if (![v17 length] && objc_msgSend(v13, "length"))
  {
    v18 = v13;

    v17 = v18;
  }

LABEL_11:
  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF matches %@", @"^([0-9]+(\\.[0-9]*)?)([\\+|-|\\*|/]([0-9]+(\\.[0-9]*)?))*[ ]*$"];
  v139 = v19;
  if (v13)
  {
    [v19 evaluateWithObject:v13];
  }

  v20 = [v14 objectForKeyedSubscript:@"isSearchToolClient"];
  v21 = [v20 BOOLValue];

  if (v21)
  {
    v22 = [v14 objectForKeyedSubscript:@"isAppEntitySearch"];
    v133 = [v22 BOOLValue];

    [v14 removeObjectsForKeys:&unk_1F55B73D0];
    [v14 setValue:&unk_1F55B3DB0 forKey:@"kMDQueryOptionEmbeddingGenerationTimeout"];
  }

  else
  {
    v133 = 0;
  }

  v146 = v21;
  v23 = embeddingsEnabledForDeviceStateAndQuery(a5, v151, [v13 composedLength]);
  v24 = [MEMORY[0x1E696AD98] numberWithBool:v23];
  [v14 setValue:v24 forKey:@"kMDQueryOptionEmbeddingEnabledKey"];

  v143 = v13;
  QueryDictionaryWithOptionsDict = __MDQueryCreateQueryDictionaryWithOptionsDict();
  v26 = QueryDictionaryWithOptionsDict;
  v27 = MEMORY[0x1E695E0F0];
  v28 = MEMORY[0x1E695E0F8];
  v142 = v14;
  v144 = v8;
  v147 = v17;
  if (!QueryDictionaryWithOptionsDict)
  {
    v149 = MEMORY[0x1E695E0F0];
    v152 = 0;
    v58 = 0;
    v59 = 0;
    v148 = 0;
    v156 = 0;
    v157 = MEMORY[0x1E695E0F0];
    v60 = @"kMDUserQueryDictionaryQueryConfidenceNoneValue";
    v158 = MEMORY[0x1E695E0F8];
    v160 = MEMORY[0x1E695E0F8];
    v154 = MEMORY[0x1E695E0F0];
    v155 = MEMORY[0x1E695E0F8];
    v153 = MEMORY[0x1E695E0F0];
    v145 = &unk_1F55B3DC8;
    v56 = v7;
    goto LABEL_87;
  }

  v29 = [QueryDictionaryWithOptionsDict objectForKey:@"kMDUserQueryDictionaryQueryInputAttributesKey"];
  v30 = v27;
  v31 = v29;
  if (v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = v28;
  }

  v137 = v32;

  v145 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryTokenCountKey"];
  v33 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryStringKey"];
  v161 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryDefaultStringKey"];
  v34 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryRankingTermsKey"];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v28;
  }

  v160 = v36;

  v37 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryRankingCategoriesKey"];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v28;
  }

  v155 = v39;

  v40 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryAttributedInputKey"];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v30;
  }

  v157 = v42;

  v43 = [v26 objectForKey:@"kMDUserQueryDictionaryQuerySuggestionsKey"];
  v44 = v43;
  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v30;
  }

  v154 = v45;

  v46 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryUniversalSuggestionsKey"];
  v47 = v46;
  if (v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = v30;
  }

  v153 = v48;

  v49 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryAdvancedComponentsKey"];
  v50 = v49;
  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = v30;
  }

  v134 = v51;

  v52 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryUnderstandingOutputKey"];
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = v28;
  }

  v55 = v54;

  if (objc_msgSend_count(v55))
  {
    v56 = v7;
    v57 = v137;
  }

  else
  {
    v61 = SSGeneralLog();
    v56 = v7;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v151;
      _os_log_impl(&dword_1D9F69000, v61, OS_LOG_TYPE_INFO, "[SSQueryParser][POMMES][qid=%ld] SSQueryParseResultsForQueryString: Got empty queryUnderstandingOutput from parse", buf, 0xCu);
    }

    v57 = v137;
    if (objc_msgSend_count(v157))
    {
      v170 = @"attributedParses";
      v171 = v157;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];

      v55 = v62;
    }
  }

  v27 = v134;
  if (v23)
  {
    v129 = v33;
    v63 = [v57 objectForKeyedSubscript:@"embeddingResultKey"];
    if (!v63)
    {
      goto LABEL_63;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_63;
    }

    v159 = v55;
    v64 = MEMORY[0x1E696ACD0];
    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = objc_opt_class();
    v68 = [v65 setWithObjects:{v66, v67, objc_opt_class(), 0}];
    v168 = 0;
    v69 = [v64 unarchivedObjectOfClasses:v68 fromData:v63 error:&v168];
    v70 = v168;

    if (v70)
    {
      v71 = SSGeneralLog();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        SSQueryParseResultsForQueryString_cold_1();
      }
    }

    v17 = v147;
    v27 = v134;
    v55 = v159;
    if (!v69)
    {
LABEL_63:
      v69 = SSGeneralLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        SSQueryParseResultsForQueryString_cold_8();
      }

      v148 = 0;
      v156 = 0;
      v82 = v55;
      v58 = v161;
      goto LABEL_66;
    }

    v150 = [v159 mutableCopy];
    v72 = [v69 objectForKeyedSubscript:*MEMORY[0x1E6964738]];
    if ([v72 length])
    {
      v73 = [objc_alloc(MEMORY[0x1E6964EE0]) initWithEncodedData:v72];
      v74 = v73;
      v135 = v72;
      if (v73)
      {
        v75 = v56;
        v76 = [v73 properties];
        v77 = [v76 objectForKey:@"vec_scale"];

        v78 = [v74 properties];
        v79 = [v78 objectForKey:@"vec_bias"];

        if (v77 && v79)
        {
          [v150 setObject:v77 forKeyedSubscript:@"embeddingScale"];
          [v150 setObject:v79 forKeyedSubscript:@"embeddingBias"];
        }

        v80 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[NSObject version](v74, "version")}];
        v81 = v150;
        [v150 setObject:v80 forKey:@"embeddingVersion"];

        v56 = v75;
        v17 = v147;
        v33 = v129;
      }

      else
      {
        v77 = SSGeneralLog();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          SSQueryParseResultsForQueryString_cold_2();
        }

        v81 = v150;
      }

      v119 = v81;
      v72 = v135;
      [v119 setObject:v135 forKeyedSubscript:@"kQPQueryPhotoEmbeddingEncodedData"];
      v118 = v146;
    }

    else
    {
      v74 = SSGeneralLog();
      v118 = v146;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        SSQueryParseResultsForQueryString_cold_3();
      }
    }

    if (textSemanticSearchEnabled_onceToken != -1)
    {
      SSQueryParseResultsForQueryString_cold_4();
    }

    if (textSemanticSearchEnabled_isTextSemanticSearchEnabled == 1)
    {
      v120 = [v56 composedLength];
      if ((v118 & 1) == 0)
      {
        v121 = v120;
        v122 = [v145 unsignedIntValue];
        if (v121 < 5 || v122 < 2)
        {
          v127 = SSGeneralLog();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            v128 = [v145 unsignedIntValue];
            *buf = 134219010;
            *&buf[4] = v151;
            *&buf[12] = 2112;
            *&buf[14] = @"YES";
            *&buf[22] = 2112;
            v175 = @"NO";
            LOWORD(v176) = 1024;
            *(&v176 + 2) = v128;
            HIWORD(v176) = 2048;
            v177 = v121;
            _os_log_error_impl(&dword_1D9F69000, v127, OS_LOG_TYPE_ERROR, "[SSQueryParser][POMMES][qid=%ld] disabling text semantic search, FeatureFlag: %@, isSearchTool: %@, tokenCount: %d, queryLength: %lu", buf, 0x30u);
          }

          goto LABEL_142;
        }
      }

      v148 = [v69 objectForKeyedSubscript:*MEMORY[0x1E6964908]];
      if (v148)
      {
        v123 = 100;
        if (v118)
        {
          v123 = 200;
        }

        v124 = 0.939999998;
        if (v118)
        {
          v124 = 1.79999995;
        }

        v156 = [MEMORY[0x1E696AEC0] stringWithFormat:@"aNN.data(%@, 0, %ld, %f, %u)", @"_kMDItemPrimaryTextEmbedding", v123, *&v124, 0];
        v125 = SSGeneralLog();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
        {
          SSQueryParseResultsForQueryString_cold_6();
        }

        if (v118)
        {
          [v150 setObject:v148 forKeyedSubscript:@"kQPQueryTextEmbeddingEncodedData"];
        }

        goto LABEL_143;
      }

      v126 = SSGeneralLog();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        SSQueryParseResultsForQueryString_cold_7();
      }
    }

    else
    {
      v126 = SSGeneralLog();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        SSQueryParseResultsForQueryString_cold_5();
      }
    }

LABEL_142:
    v148 = 0;
    v156 = 0;
LABEL_143:
    v27 = v134;
    v58 = v161;

    v82 = v150;
LABEL_66:

    v158 = v82;
    goto LABEL_67;
  }

  v158 = v55;
  v148 = 0;
  v156 = 0;
  v58 = v161;
LABEL_67:
  if (![v58 length])
  {
    v83 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryNLPStringKey"];

    v58 = v83;
  }

  v152 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryKindKey"];
  v60 = [v26 objectForKey:@"kMDUserQueryDictionaryQueryConfidenceKey"];
  if (-[__CFString isEqualToString:](v60, "isEqualToString:", @"kMDUserQueryDictionaryQueryConfidenceHighValue") && v33 && ![v33 isEqualToString:v58])
  {
    v162 = v58;
    v130 = v33;
    v86 = v56;
    v87 = [v160 mutableCopy];
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v88 = v160;
    v89 = [v88 countByEnumeratingWithState:&v164 objects:v169 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v165;
      do
      {
        for (i = 0; i != v90; ++i)
        {
          if (*v165 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = *(*(&v164 + 1) + 8 * i);
          v94 = [v88 objectForKey:v93];
          if ([v94 intValue] < 100 || objc_msgSend(v94, "intValue") >= 201)
          {
            [v87 removeObjectForKey:v93];
          }
        }

        v90 = [v88 countByEnumeratingWithState:&v164 objects:v169 count:16];
      }

      while (v90);
    }

    v59 = v130;
    if (!objc_msgSend_count(v87))
    {
      [v87 setValue:&unk_1F55B3DE0 forKey:v130];
    }

    v85 = v87;

    v149 = [v85 keysSortedByValueUsingComparator:&__block_literal_global_20];
    v160 = v85;
    v56 = v86;
    v17 = v147;
    v27 = v134;
    v58 = v162;
    v57 = v137;
  }

  else
  {
    v84 = v58;
    v85 = v33;
    v149 = MEMORY[0x1E695E0F0];
    v59 = v84;
  }

LABEL_87:
  if (![v58 length])
  {
    v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"**=%@*cwd", v17];

    v60 = @"kMDUserQueryDictionaryQueryConfidenceNoneValue";
    v58 = v95;
  }

  v136 = [(__CFString *)v60 isEqualToString:@"kMDUserQueryDictionaryQueryConfidenceHighValue"];
  if (v152)
  {
    v138 = [v152 isEqualToString:@"kMDQueryAdvancedSyntaxQuery"];
  }

  else
  {
    v138 = 0;
  }

  v96 = [MEMORY[0x1E695DF70] array];
  v163 = v58;
  if (!v146)
  {
    v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(_kMDItemBundleID!=%@ || kMDItemMailboxes!=mailbox.junk, @"com.apple.mobilemail""];
    [v96 addObject:v107];

    v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(kMDItemIsTrashed!=1)"];
    [v96 addObject:v108];

    goto LABEL_104;
  }

  if (v133)
  {
LABEL_104:
    v97 = 0;
    goto LABEL_105;
  }

  *buf = @"com.apple.application";
  *&buf[8] = @"com.apple.Preferences";
  *&buf[16] = @"com.apple.shortcuts";
  v175 = @"com.apple.tips";
  v176 = @"com.apple.AppStore";
  v177 = @"com.jamfsoftware.selfservice";
  v178 = @"com.apple.usernotificationsd";
  v179 = @"com.apple.photoanalysisd";
  v180 = @"com.apple.ist.customapp.radar";
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:9];
  v98 = v97;
  v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(_kMDItemBundleID!=%@ || (kMDItemStartDate=* && kMDItemCalendarHolidayIdentifier!=Y && kMDItemEventIsCancelled!=1 && com_apple_mobilecal_current_user_participation_status != 2))", @"com.apple.mobilecal"];
  [v96 addObject:v99];

  [v96 addObject:@"(_kMDItemAppEntityTypeIdentifier != ConversationEntity"];
  v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_kMDItemUserActivityType!=*"];
  [v96 addObject:v100];

  if (objc_msgSend_count(v96))
  {
    v131 = v59;
    v101 = SSGeneralLog();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      v102 = objc_msgSend_count(v96);
      *v172 = 134217984;
      *v173 = v102;
      _os_log_impl(&dword_1D9F69000, v101, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] filterQueries count=%lu", v172, 0xCu);
    }

    if (objc_msgSend_count(v96))
    {
      v103 = 0;
      v104 = 0;
      do
      {
        v105 = SSGeneralLog();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          v106 = [v96 objectAtIndexedSubscript:v103];
          *v172 = 67109378;
          *v173 = v104;
          *&v173[4] = 2112;
          *&v173[6] = v106;
          _os_log_impl(&dword_1D9F69000, v105, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] filterQueries[%d]=%@", v172, 0x12u);
        }

        v103 = ++v104;
      }

      while (objc_msgSend_count(v96) > v104);
    }

    v59 = v131;
  }

LABEL_105:
  v109 = [v96 copy];

  v110 = v97;
  v111 = objc_opt_new();
  [v111 setObject:v59 forKey:@"nlQuery"];
  [v111 setObject:v163 forKey:@"defaultQuery"];
  if ([v156 length])
  {
    [v111 setObject:v156 forKey:@"annQuery"];
    [v111 setObject:v148 forKey:@"textEmbeddingData"];
  }

  [v111 setObject:v154 forKey:@"suggestions"];
  [v111 setObject:v153 forKey:@"universalSuggestions"];
  [v111 setObject:v155 forKey:@"rankCategories"];
  [v111 setObject:v160 forKey:@"rankTerms"];
  [v111 setObject:v149 forKey:@"queryTerms"];
  [v111 setObject:v157 forKey:@"attributedParses"];
  [v111 setObject:v27 forKey:@"advancedComponents"];
  [v111 setObject:v60 forKey:@"confidence"];
  v112 = [MEMORY[0x1E696AD98] numberWithBool:v136];
  [v111 setObject:v112 forKey:@"isNLQuery"];

  v113 = [MEMORY[0x1E696AD98] numberWithBool:v138];
  [v111 setObject:v113 forKey:@"isAdvancedSyntax"];

  v114 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v111 setObject:v114 forKey:@"hasTargetApplicationURL"];

  [v111 setObject:v158 forKey:@"queryUnderstandingOutput"];
  [v111 setObject:v109 forKey:@"filterQueries"];
  if (objc_msgSend_count(v110))
  {
    [v111 setObject:v110 forKey:@"disabledBundles"];
  }

  v115 = v140;
  v116 = v115;
  if (v141 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v115))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9F69000, v116, OS_SIGNPOST_INTERVAL_END, spid, "SSQueryParseResultsForQueryString", "", buf, 2u);
  }

  return v111;
}

uint64_t embeddingsEnabledForDeviceStateAndQuery(uint64_t cold_1, uint64_t a2, unint64_t a3)
{
  v5 = cold_1;
  v33 = *MEMORY[0x1E69E9840];
  if (textSemanticSearchEnabled_onceToken != -1)
  {
    embeddingsEnabledForDeviceStateAndQuery_cold_1();
  }

  v6 = textSemanticSearchEnabled_isTextSemanticSearchEnabled;
  if (embeddingsEnabledForDeviceStateAndQuery_onceToken != -1)
  {
    embeddingsEnabledForDeviceStateAndQuery_cold_2();
  }

  if (((embeddingsEnabledForDeviceStateAndQuery_isVisualSemanticSearchEnabled | v6) & 1) == 0 || v5)
  {
    v10 = SSGeneralLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = @"YES";
      v19 = 134219010;
      if (v5)
      {
        v16 = @"NO";
      }

      else
      {
        v16 = @"YES";
      }

      v20 = a2;
      v21 = 2112;
      v22 = @"disabling";
      if (embeddingsEnabledForDeviceStateAndQuery_isVisualSemanticSearchEnabled)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v23 = 2112;
      if (!v6)
      {
        v15 = @"NO";
      }

      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_1D9F69000, v10, OS_LOG_TYPE_INFO, "[SSQueryParser][POMMES][qid=%ld] %@ semantic search, callerEnabled: %@, isVisualSemanticSearchEnabled: %@, isTextSemanticSearchEnabled: %@", &v19, 0x34u);
    }

    v9 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E6964E20] sharedInstance];
    v8 = [v7 isSemanticSearchAvailable];

    if (a3 > 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = SSGeneralLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"disabling";
      if (v9)
      {
        v11 = @"enabling";
      }

      v19 = 134219522;
      v20 = a2;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = @"YES";
      if (embeddingsEnabledForDeviceStateAndQuery_isVisualSemanticSearchEnabled)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v25 = 2112;
      if (v6)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v26 = v12;
      if (v8)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      v31 = 2048;
      v32 = a3;
      _os_log_impl(&dword_1D9F69000, v10, OS_LOG_TYPE_INFO, "[SSQueryParser][POMMES][qid=%ld] %@ semantic search, callerEnabled: %@, isVisualSemanticSearchEnabled: %@, isTextSemanticSearchEnabled: %@, isGMOptedIn: %@, queryLength: %lu", &v19, 0x48u);
    }
  }

  return v9;
}

uint64_t __SSQueryParseResultsForQueryString_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 intValue];
  if (v6 == [v5 intValue])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 intValue];
    if (v8 > [v5 intValue])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

id SSParseResultsForTopHitQueryWithString(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, char a6, int a7, int a8, unsigned __int8 a9, char a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, char a14)
{
  v17 = a2;
  v18 = a1;
  v19 = objc_opt_new();
  v20 = MEMORY[0x1E695E110];
  [v19 setObject:MEMORY[0x1E695E110] forKey:@"isNLQuery"];
  [v19 setObject:v20 forKey:@"isAdvancedSyntax"];
  [v19 setObject:v20 forKey:@"isMath"];
  v21 = MEMORY[0x1E695E0F0];
  [v19 setObject:MEMORY[0x1E695E0F0] forKey:@"suggestions"];
  [v19 setObject:v21 forKey:@"universalSuggestions"];
  v22 = MEMORY[0x1E695E0F8];
  [v19 setObject:MEMORY[0x1E695E0F8] forKey:@"rankCategories"];
  [v19 setObject:v22 forKey:@"rankTerms"];
  [v19 setObject:v21 forKey:@"queryTerms"];
  [v19 setObject:&stru_1F556FE60 forKey:@"query"];
  v23 = SSQueryParseResultsForQueryString(v18, v17, a7, a5, 0);

  v24 = SSDefaultQueryParseResultsForQueryString(v18, 0, a6, a7, a8, a9, 0, a11, a12, a13, 1, a14);

  v25 = [v23 objectForKeyedSubscript:@"nlQuery"];
  if (!v23)
  {
    v28 = 0;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_5:
    v29 = [v23 objectForKeyedSubscript:@"defaultQuery"];
    v30 = 0;
    if (!v25)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v26 = [v23 objectForKeyedSubscript:@"isNLQuery"];
  if (v26)
  {
    v27 = [v23 objectForKeyedSubscript:@"isNLQuery"];
    v28 = [v27 BOOLValue];
  }

  else
  {
    v28 = 0;
  }

  if (!v24)
  {
    goto LABEL_5;
  }

LABEL_9:
  v29 = [v24 objectForKeyedSubscript:@"query"];
  v31 = [v24 objectForKeyedSubscript:@"isMath"];
  if (v31)
  {
    v32 = [v24 objectForKeyedSubscript:@"isMath"];
    v30 = [v32 BOOLValue];
  }

  else
  {
    v30 = 0;
  }

  if (!v25)
  {
LABEL_15:
    v35 = v29;
    if (!v24)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (!v29)
  {
    goto LABEL_15;
  }

  v33 = [v23 objectForKeyedSubscript:@"defaultQuery"];
  v34 = [v25 isEqualToString:v33];

  if (v34)
  {
    goto LABEL_15;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ || %@)", v25, v29];
  v30 = (v28 ^ 1) & v30;
  if (v24)
  {
LABEL_16:
    [v19 setValuesForKeysWithDictionary:v24];
  }

LABEL_17:
  [v19 setValuesForKeysWithDictionary:v23];
  [v19 setObject:v35 forKey:@"query"];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:v28];
  [v19 setObject:v36 forKey:@"isNLQuery"];

  v37 = [MEMORY[0x1E696AD98] numberWithBool:v30];
  [v19 setObject:v37 forKey:@"isMath"];

  return v19;
}

id SSQueryParserStripKindFromString(void *a1, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v30 = a2;
  v31 = SSQueryParseResultsForQueryString(v29, v30, 0, 0, 1);
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__4;
  v61 = __Block_byref_object_dispose__4;
  v62 = objc_opt_new();
  v3 = [v31 objectForKeyedSubscript:@"attributedParses"];
  if (v3)
  {
    v4 = [v31 objectForKeyedSubscript:@"attributedParses"];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 length];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __SSQueryParserStripKindFromString_block_invoke;
  v54[3] = &unk_1E85960D0;
  v55 = v5;
  v56 = &v57;
  v28 = v55;
  [v55 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v54}];
  [v31 objectForKeyedSubscript:@"advancedComponents"];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v34 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v34)
  {
    v33 = *v51;
    v36 = *MEMORY[0x1E696A550];
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v50 + 1) + 8 * i);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v46 objects:v63 count:16];
        if (v9)
        {
          v10 = *v47;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v47 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v46 + 1) + 8 * j);
              v13 = [v8 objectForKeyedSubscript:v12];
              v14 = [v13 objectForKeyedSubscript:@"TYPE"];
              if (v14)
              {
                v15 = [v13 objectForKeyedSubscript:@"TYPE"];
                v16 = [v15 isEqualToString:@"KINDS:IMAGES"];

                if (v16)
                {
                  v40 = 0;
                  v41 = &v40;
                  v42 = 0x3032000000;
                  v43 = __Block_byref_object_copy__4;
                  v44 = __Block_byref_object_dispose__4;
                  v45 = [MEMORY[0x1E695DF70] array];
                  v17 = [v12 length];
                  v39[0] = MEMORY[0x1E69E9820];
                  v39[1] = 3221225472;
                  v39[2] = __SSQueryParserStripKindFromString_block_invoke_2;
                  v39[3] = &unk_1E85960F8;
                  v39[4] = v12;
                  v39[5] = &v40;
                  [v12 enumerateLinguisticTagsInRange:0 scheme:v17 options:v36 orthography:4 usingBlock:{0, v39}];
                  v18 = MEMORY[0x1E696AE70];
                  v19 = [v41[5] componentsJoinedByString:&stru_1F556FE60];
                  v38 = 0;
                  v20 = [v18 regularExpressionWithPattern:v19 options:1 error:&v38];
                  v21 = v38;

                  v22 = v58[5];
                  v23 = [v22 length];
                  v37[0] = MEMORY[0x1E69E9820];
                  v37[1] = 3221225472;
                  v37[2] = __SSQueryParserStripKindFromString_block_invoke_3;
                  v37[3] = &unk_1E8596120;
                  v37[4] = &v57;
                  [v20 enumerateMatchesInString:v22 options:0 range:0 usingBlock:{v23, v37}];

                  _Block_object_dispose(&v40, 8);
                }
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v46 objects:v63 count:16];
          }

          while (v9);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
    }

    while (v34);
  }

  v24 = v58[5];
  v25 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v26 = [v24 stringByTrimmingCharactersInSet:v25];

  _Block_object_dispose(&v57, 8);

  return v26;
}

void sub_1D9FE15D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SSQueryParserStripKindFromString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v7 = [*(a1 + 32) string];
  v8 = [v7 substringWithRange:{a3, a4}];

  if (([v8 isEqualToString:@"kind:"] & 1) == 0)
  {
    if (!objc_msgSend_count(v20))
    {
      goto LABEL_11;
    }

    v9 = [v20 objectForKeyedSubscript:@"kQPKeyword"];
    if (v9)
    {
      v10 = v9;
      v11 = [v20 objectForKeyedSubscript:@"kQPKeyword"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = @"kQPKeyword";
LABEL_9:
        v18 = [v20 objectForKeyedSubscript:v13];
        [*(*(*(a1 + 40) + 8) + 40) appendString:v18];

        goto LABEL_12;
      }
    }

    v14 = [v20 objectForKeyedSubscript:@"kQPTopic"];
    if (v14)
    {
      v15 = v14;
      v16 = [v20 objectForKeyedSubscript:@"kQPTopic"];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if (v17)
      {
        v13 = @"kQPTopic";
        goto LABEL_9;
      }
    }

    v19 = [v20 objectForKeyedSubscript:@"kQPKind"];

    if (!v19)
    {
LABEL_11:
      [*(*(*(a1 + 40) + 8) + 40) appendString:v8];
    }
  }

LABEL_12:
}

void __SSQueryParserStripKindFromString_block_invoke_2(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), a2))
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:@"\\s*?"];
  }

  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [v7 substringWithRange:{a3, a4}];
  [v8 addObject:v9];
}

void __SSQueryParserStripKindFromString_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 range];
  v6 = [v3 substringWithRange:{v4, v5}];
  [v3 replaceOccurrencesOfString:v6 withString:&stru_1F556FE60 options:0 range:{0, objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "length")}];
}

void SSQueryParserPreheat()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kMDQueryOptionEmbeddingEnabledKey";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:{embeddingsEnabledForDeviceStateAndQuery(0, -1, 0xFFFFFFFFFFFFFFFFLL)}];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  __MDQueryParserPreheatWithOptionsDict();
}

uint64_t __embeddingsEnabledForDeviceStateAndQuery_block_invoke()
{
  result = _os_feature_enabled_impl();
  embeddingsEnabledForDeviceStateAndQuery_isVisualSemanticSearchEnabled = result;
  return result;
}

uint64_t __textSemanticSearchEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      result = _os_feature_enabled_impl();
    }
  }

  textSemanticSearchEnabled_isTextSemanticSearchEnabled = result;
  return result;
}

uint64_t __SSRedactStringClient_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSRedactStringClient_isSearchToolDebugMode = result;
  return result;
}

id SSRedactSuggestionIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 length] && objc_msgSend(v3, "length") && ((objc_msgSend(v4, "isEqualToString:", @"com.apple.searchd.suggestions") & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"com.apple.parsec") & 1) != 0) && (v5 = objc_msgSend(v3, "rangeOfString:", @":"), v5 != 0x7FFFFFFFFFFFFFFFLL) && (v6 = v5, v5 < objc_msgSend(v3, "length") - 1))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v3 substringToIndex:v6];
    v9 = [v3 substringFromIndex:v6 + 1];
    v10 = SSRedactStringClient(v9, 1, 0);
    v11 = [v7 stringWithFormat:@"%@:%@", v8, v10];
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

id SSRedactUserTypedString(void *a1, int a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", @"com.apple.spotlight.websuggestionlist.usertypedstring"];
  v5 = [v4 length];
  if ([v3 hasPrefix:v4])
  {
    v6 = [v3 substringFromIndex:v5];
    v7 = v6;
    v8 = MEMORY[0x1E696AEC0];
    if (v6)
    {
      v9 = SSRedactStringClient(v6, 1, a2);
      v10 = [v8 stringWithFormat:@"%@%@", v4, v9];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, &stru_1F556FE60];
    }
  }

  else
  {
    v10 = v3;
  }

  return v10;
}

id SSRedactRelatedSearchString(void *a1, int a2)
{
  v3 = a1;
  v4 = [@"rs:" length];
  if ([v3 hasPrefix:@"rs:"])
  {
    v5 = [v3 substringFromIndex:v4];
    v6 = v5;
    v7 = MEMORY[0x1E696AEC0];
    if (v5)
    {
      v8 = SSRedactStringClient(v5, 1, a2);
      v9 = [v7 stringWithFormat:@"%@%@", @"rs:", v8];
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"rs:", &stru_1F556FE60];
    }
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

void SSInitLogging(uint64_t result, uint64_t a2)
{
  if (SSInitLogging_once != -1)
  {
    SSInitLogging_cold_1();
  }
}

id SSPommesRankerLog()
{
  v2 = qword_1EDBEED50;
  if (qword_1EDBEED50)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SSPommesRankerLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id SSSearchToolRankingLog()
{
  v2 = qword_1EDBEED60;
  if (qword_1EDBEED60)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SSSearchToolRankingLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

uint64_t SPQueryKindToSFSpotlightBrowsingSearchScope(uint64_t a1)
{
  if ((a1 - 12) > 5)
  {
    return 0;
  }

  else
  {
    return dword_1DA0D56C8[a1 - 12];
  }
}

void sub_1D9FEA498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t isIpad(uint64_t a1, uint64_t a2)
{
  if (isIpad_onceToken != -1)
  {
    isIpad_cold_1();
  }

  return isIpad_isIpad;
}

uint64_t __isIpad_block_invoke()
{
  result = MGGetSInt32Answer();
  isIpad_isIpad = result == 3;
  return result;
}

id SSBundleIdentifiersForSyndicatedPhotos()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.searchd.syndicatedPhotos";
  v2[1] = @"com.apple.searchd.syndicatedPhotos.MobileSMS";
  v2[2] = @"com.apple.searchd.syndicatedPhotos.mobilenotes";
  v2[3] = @"com.apple.searchd.syndicatedPhotos.mobileslideshow";
  v2[4] = @"com.apple.plphotosctl";
  v2[5] = @"com.apple.mobileslideshow";
  v2[6] = @"com.apple.spotlight.syndicatedPhotos.fileProvider";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];

  return v0;
}

uint64_t SSSectionIsSyndicatedPhotos(void *a1)
{
  v1 = SSSectionIsSyndicatedPhotos_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    SSSectionIsSyndicatedPhotos_cold_1();
  }

  v3 = [SSSectionIsSyndicatedPhotos_photosBundleIdentifiers containsObject:v2];

  return v3;
}

void __SSSectionIsSyndicatedPhotos_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v3 = SSBundleIdentifiersForSyndicatedPhotos();
  v1 = [v0 setWithArray:v3];
  v2 = SSSectionIsSyndicatedPhotos_photosBundleIdentifiers;
  SSSectionIsSyndicatedPhotos_photosBundleIdentifiers = v1;
}

uint64_t SSSectionIsMailOrPommesCTL(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobilemail"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.pommesctl"];
  }

  return v2;
}

BOOL SSSectionIsWalletBoardingPass(void *a1)
{
  v1 = a1;
  v2 = [v1 sectionBundleIdentifier];
  if ([v2 isEqualToString:@"com.apple.Passbook"])
  {
    v3 = [v1 walletBoardingPassArrivalAirportCode];
    if (v3)
    {
      v4 = [v1 walletBoardingPassDepartureAirportCode];
      v5 = v4 != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t SSPommesRankingIsEnabled(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 & 1) != 0 || (SSSectionIsMailOrPommesCTL(v3))
  {
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"com.apple.mobilesafari"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.argos.BlendABApp2"))
  {
LABEL_7:
    v5 = _os_feature_enabled_impl();
    goto LABEL_4;
  }

  if (([v4 isEqualToString:@"com.apple.mobilecal"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.MobileSMS") & 1) == 0 && (SSSectionIsSyndicatedPhotos(v4) & 1) == 0)
  {
    if (([v4 isEqualToString:@"com.apple.spotlight.events"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.reminders") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.mobilenotes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.Preferences") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.CloudDocs.MobileDocumentsFileProvider") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProvider") & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"com.apple.DocumentsApp"))
    {
      v5 = 0;
      goto LABEL_4;
    }

    goto LABEL_7;
  }

LABEL_3:
  v5 = 1;
LABEL_4:

  return v5;
}

id SSIndexedBundleIdentifierForResult(void *a1)
{
  v1 = a1;
  if (SSIndexedBundleIdentifierForResult_onceToken != -1)
  {
    SSIndexedBundleIdentifierForResult_cold_1();
  }

  v2 = [v1 resultBundleId];
  if (v2)
  {
    v3 = [SSIndexedBundleIdentifierForResult_indexedBundleIdentifierForResultBundleIds objectForKeyedSubscript:v2];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __SSIndexedBundleIdentifierForResult_block_invoke()
{
  v0 = SSIndexedBundleIdentifierForResult_indexedBundleIdentifierForResultBundleIds;
  SSIndexedBundleIdentifierForResult_indexedBundleIdentifierForResultBundleIds = MEMORY[0x1E695E0F8];
}

BOOL SSIsXcodeInternalAppPath(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"/Contents/Developer/Platforms"] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "rangeOfString:", @"/AppleInternal/Applications") != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

id SSStringFromTopHit(uint64_t a1)
{
  if (SSStringFromTopHit_onceToken != -1)
  {
    SSStringFromTopHit_cold_1();
  }

  v2 = SSStringFromTopHit__topHitValueStrings;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown SFTopHit Value: %d", a1];
  }

  v6 = v5;

  return v6;
}

void __SSStringFromTopHit_block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v5[0] = v0;
  v6[0] = @"SFTopHitNo";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v5[1] = v1;
  v6[1] = @"SFTopHitShouldBe";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:2];
  v5[2] = v2;
  v6[2] = @"SFTopHitMustBe";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = SSStringFromTopHit__topHitValueStrings;
  SSStringFromTopHit__topHitValueStrings = v3;
}

id SSStringFromTopHitReasonType(uint64_t a1)
{
  if (SSStringFromTopHitReasonType_onceToken != -1)
  {
    SSStringFromTopHitReasonType_cold_1();
  }

  v2 = SSStringFromTopHitReasonType__topHitReasonStrings;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown TopHitReason: %d", a1];
  }

  v6 = v5;

  return v6;
}

void __SSStringFromTopHitReasonType_block_invoke()
{
  v30[27] = *MEMORY[0x1E69E9840];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v29[0] = v28;
  v30[0] = @"TopHitReasonNone";
  v27 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v29[1] = v27;
  v30[1] = @"TopHitReasonSpellCorrectedApp";
  v26 = [MEMORY[0x1E696AD98] numberWithInt:2];
  v29[2] = v26;
  v30[2] = @"TopHitReasonFileAboveThreshold";
  v25 = [MEMORY[0x1E696AD98] numberWithInt:3];
  v29[3] = v25;
  v30[3] = @"TopHitReasonRemindersAboveThreshold";
  v24 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v29[4] = v24;
  v30[4] = @"TopHitReasonNotesAboveThreshold";
  v23 = [MEMORY[0x1E696AD98] numberWithInt:5];
  v29[5] = v23;
  v30[5] = @"TopHitReasonContactsAboveThreshold";
  v22 = [MEMORY[0x1E696AD98] numberWithInt:6];
  v29[6] = v22;
  v30[6] = @"TopHitReasonRecentForTophit";
  v21 = [MEMORY[0x1E696AD98] numberWithInt:7];
  v29[7] = v21;
  v30[7] = @"TopHitReasonCalculationConversion";
  v20 = [MEMORY[0x1E696AD98] numberWithInt:8];
  v29[8] = v20;
  v30[8] = @"TopHitReasonFuzzyResult";
  v19 = [MEMORY[0x1E696AD98] numberWithInt:9];
  v29[9] = v19;
  v30[9] = @"TopHitReasonVendorOnlyMatch";
  v18 = [MEMORY[0x1E696AD98] numberWithInt:10];
  v29[10] = v18;
  v30[10] = @"TopHitReasonMessagesAboveThreshold";
  v17 = [MEMORY[0x1E696AD98] numberWithInt:11];
  v29[11] = v17;
  v30[11] = @"TopHitReasonShortcutsAboveThreshold";
  v16 = [MEMORY[0x1E696AD98] numberWithInt:12];
  v29[12] = v16;
  v30[12] = @"TopHitReasonSafariTopHit";
  v15 = [MEMORY[0x1E696AD98] numberWithInt:13];
  v29[13] = v15;
  v30[13] = @"TopHitReasonAppInDock";
  v14 = [MEMORY[0x1E696AD98] numberWithInt:14];
  v29[14] = v14;
  v30[14] = @"TopHitReasonAppInitialsMatch";
  v13 = [MEMORY[0x1E696AD98] numberWithInt:15];
  v29[15] = v13;
  v30[15] = @"TopHitReasonSettingsMaxCep";
  v12 = [MEMORY[0x1E696AD98] numberWithInt:16];
  v29[16] = v12;
  v30[16] = @"TopHitReasonPhotosMediaType";
  v0 = [MEMORY[0x1E696AD98] numberWithInt:17];
  v29[17] = v0;
  v30[17] = @"TopHitReasonMostRecentShortcutResult";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:18];
  v29[18] = v1;
  v30[18] = @"TopHitReasonNLP";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:19];
  v29[19] = v2;
  v30[19] = @"TopHitReasonShortcutsBundle";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:20];
  v29[20] = v3;
  v30[20] = @"TopHitReasonWorldClock";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:21];
  v29[21] = v4;
  v30[21] = @"TopHitReasonDataDetectorQuickAction";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:24];
  v29[22] = v5;
  v30[22] = @"TopHitReasonPersonalizedRanking";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:25];
  v29[23] = v6;
  v30[23] = @"TopHitReasonRecentForAboveThresholdTopHit";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:26];
  v29[24] = v7;
  v30[24] = @"TopHitReasonPreferenceWithHasShortcut";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:27];
  v29[25] = v8;
  v30[25] = @"TopHitReasonNoPommesAndAboveThreshold";
  v9 = [MEMORY[0x1E696AD98] numberWithInt:28];
  v29[26] = v9;
  v30[26] = @"TopHitReasonNominateLocalTopHitsFromSections";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:27];
  v11 = SSStringFromTopHitReasonType__topHitReasonStrings;
  SSStringFromTopHitReasonType__topHitReasonStrings = v10;
}

void SSLogTopHitWithReasonType(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a2;
  v8 = SSStringFromTopHitReasonType(a3);
  SSLogTopHitWithReasonString(a1, v7, v8, v4);
}

void SSLogTopHitWithReasonString(uint64_t a1, void *a2, void *a3, int a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 rankingItem];
    v10 = [v9 displayName];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 sectionBundleIdentifier];
  if ([v11 isEqualToString:@"com.apple.mobilesafari"])
  {
    v12 = @"(private)";
  }

  else
  {
    v12 = SSRedactString(v10, 1);
  }

  v13 = SSStringFromTopHit(a1);
  v14 = SSGeneralLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v7 sectionBundleIdentifier];
    v16 = [v7 applicationBundleIdentifier];
    v17 = v16;
    v19 = 138413570;
    v18 = &stru_1F556FE60;
    v20 = v15;
    v21 = 2112;
    if (a4)
    {
      v18 = @"[Classic Spotlight] ";
    }

    v22 = v16;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_1D9F69000, v14, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][TopHit Rules] result.sectionBundleIdentifier: %@, result.applicationBundleIdentifier: %@, Title: %@, TopHit: %@, Reason: %@%@", &v19, 0x3Eu);
  }
}

uint64_t SSSetTopHitWithReasonString(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a3;
  v8 = a2;
  [v8 setTopHit:a1];
  SSLogTopHitWithReasonString(a1, v8, v7, a4);

  return a1;
}

uint64_t SSSetTopHitWithReasonType(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = a2;
  [v9 setTopHit:a1];
  if (a5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [v10 rankingItem];

      if (v11)
      {
        v12 = [v10 rankingItem];
        [v12 setTopHitReason:a3];
      }
    }
  }

  SSLogTopHitWithReasonType(a1, v9, a3, a4);

  return a1;
}

uint64_t SSSuggestionTypeForResultType(int a1)
{
  if (a1 > 29)
  {
    if (a1 > 33)
    {
      return 7;
    }

    switch(a1)
    {
      case 30:
        return 6;
      case 32:
        return 5;
      case 33:
        return 13;
      default:
        return 7;
    }
  }

  else
  {
    if (a1 <= 26)
    {
      if (a1 == 17)
      {
        return 1;
      }

      return 7;
    }

    if (a1 == 27)
    {
      return 11;
    }

    else if (a1 == 28)
    {
      return 12;
    }

    else
    {
      return 14;
    }
  }
}

id SSRoundDouble(int a1, double a2)
{
  v2 = a2 < 0.0;
  if (a2 == 0.0)
  {
    v3 = &unk_1F55B3DF8;
  }

  else
  {
    v6 = -a2;
    if (!v2)
    {
      v6 = a2;
    }

    v7 = log10(v6);
    v8 = __exp10((a1 - vcvtpd_s64_f64(v7)));
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:round(v8 * a2) / v8];
  }

  return v3;
}

uint64_t SSRoundUInt64(unint64_t a1)
{
  if (a1 >= 0x3E9)
  {
    v1 = 10000 * (a1 / 0x2710);
  }

  else
  {
    v1 = a1;
  }

  return [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v1];
}

id SSValuesFromPlistWithPath(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1 && ([MEMORY[0x1E696AC08] defaultManager], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "fileExistsAtPath:", v1), v2, v3))
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v1 options:8 error:0];
    if ([v4 length] && (v5 = v4, objc_msgSend(v5, "bytes"), objc_msgSend(v5, "length"), v22 = MEMORY[0x1E69E9820], v23 = 3221225472, v24 = __SSValuesFromPlistWithPath_block_invoke, v25 = &__block_descriptor_40_e5_v8__0l, v26 = v5, (v6 = _MDPlistContainerCreateWithBytesAndDeallocator()) != 0))
    {
      v7 = v6;
      v8 = _MDPlistContainerCopyRootObject();
      v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:objc_msgSend_count(v8)];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 addEntriesFromDictionary:{v15, v18}];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
        }

        while (v12);
      }

      if (objc_msgSend_count(v9))
      {
        v16 = v9;
      }

      else
      {
        v16 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t SSScreenTimeStatusForApplicationPathWithCompletionHandler(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(a2 + 16))(a2, 0);
  }

  return 0;
}

void SSScreenTimeStatusClearCache()
{
  if (onceCacheToken != -1)
  {
    SSScreenTimeStatusClearCache_cold_1();
  }

  os_unfair_lock_lock(&screenTimeCacheLock);
  [checkedScreenTimeStatusCache removeAllObjects];

  os_unfair_lock_unlock(&screenTimeCacheLock);
}

uint64_t SSScreenTimeStatusForBundleIDWithCompletionHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (onceCacheToken == -1)
  {
    if (v3)
    {
LABEL_3:
      os_unfair_lock_lock(&screenTimeCacheLock);
      v5 = [checkedScreenTimeStatusCache containsObject:v3];
      if (v4 || (v5 & 1) == 0)
      {
        [checkedScreenTimeStatusCache addObject:v3];
        v6 = [screenTimeStatusForBundleCache containsObject:v3];
        os_unfair_lock_unlock(&screenTimeCacheLock);
        v7 = v3;
        v8 = v4;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __updateScreenTimeStatusForBundleId_block_invoke;
        v10[3] = &unk_1E8596650;
        v11 = v7;
        v12 = v8;
        dispatch_async(screenTimeStatusFetchQueue, v10);
      }

      else
      {
        v6 = [screenTimeStatusForBundleCache containsObject:v3];
        os_unfair_lock_unlock(&screenTimeCacheLock);
      }

      goto LABEL_11;
    }
  }

  else
  {
    SSScreenTimeStatusClearCache_cold_1();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }

  v6 = 0;
LABEL_11:

  return v6;
}

uint64_t SSHiddenStatusForBundleIDWithCompletionHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = SSGetDisabledBundleSet();
  v6 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v7 = [v6 restrictedAppBundleIDs];

  if (v7)
  {
    v8 = [v7 allObjects];
    [v5 addObjectsFromArray:v8];
  }

  if (!v3)
  {
    v9 = 0;
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = [v5 containsObject:v3];
  if (v4)
  {
LABEL_5:
    v4[2](v4, v9);
  }

LABEL_6:

  return v9;
}

id strippedURL(void *a1)
{
  v1 = a1;
  if (strippedURL_onceToken != -1)
  {
    strippedURL_cold_1();
  }

  if ([v1 hasPrefix:@"http://www."])
  {
    v2 = [v1 substringFromIndex:11];

    v1 = v2;
  }

  if ([v1 hasPrefix:@"https://www."])
  {
    v3 = [v1 substringFromIndex:12];

    v1 = v3;
  }

  if ([v1 hasPrefix:@"https://"])
  {
    v4 = [v1 substringFromIndex:8];

    v1 = v4;
  }

  if ([v1 hasPrefix:@"http://"])
  {
    v5 = [v1 substringFromIndex:7];

    v1 = v5;
  }

  v6 = [v1 stringByTrimmingCharactersInSet:strippedURL_trimSet];

  return v6;
}

uint64_t __strippedURL_block_invoke()
{
  strippedURL_trimSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/"];

  return MEMORY[0x1EEE66BB8]();
}

__CFString *contentURLtoDisplayedURL(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"/"];
  v2 = [v1 firstObject];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F556FE60;
  }

  v5 = v4;

  return v4;
}

void handleHiddenResult(void *a1, void *a2, void *a3)
{
  v12 = a1;
  v5 = a2;
  if (v5 != v12)
  {
    v6 = a3;
    v7 = [v6 hiddenExtResults];
    v8 = [v7 arrayByAddingObject:v12];
    [v6 setHiddenExtResults:v8];

    [v5 setNoGoTakeover:{objc_msgSend(v12, "noGoTakeover") | objc_msgSend(v5, "noGoTakeover")}];
    v9 = [v5 duplicatedItems];

    if (!v9)
    {
      v10 = objc_opt_new();
      [v5 setDuplicatedItems:v10];
    }

    v11 = [v5 duplicatedItems];
    [v11 addObject:v12];
  }
}

id SSGetCurrentLocale(void *a1, uint64_t a2)
{
  v3 = a1;
  if (SSGetCurrentLocale_onceToken != -1)
  {
    SSGetCurrentLocale_cold_1();
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__5;
  v9[4] = __Block_byref_object_dispose__5;
  v4 = v3;
  v10 = v4;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SSGetCurrentLocale_block_invoke_2;
  v7[3] = &unk_1E85965B0;
  v7[4] = v9;
  v7[5] = v8;
  v7[6] = &v11;
  [SSGetCurrentLocale_localeObserver currentLocaleWithPreferredLanguagesBlock:v7];
  v5 = v12[5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);

  _Block_object_dispose(&v11, 8);

  return v5;
}

void sub_1D9FEC430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __SSGetCurrentLocale_block_invoke()
{
  SSGetCurrentLocale_localeObserver = objc_alloc_init(SSLocaleObserver);

  return MEMORY[0x1EEE66BB8]();
}

void __SSGetCurrentLocale_block_invoke_2(void *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v12 = a3;
  v8 = *(*(a1[4] + 8) + 40);
  if (v8)
  {
    [v8 addObjectsFromArray:v12];
  }

  v9 = *(*(a1[5] + 8) + 24);
  if (v9)
  {
    *v9 = a4;
  }

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

uint64_t SSSplitCounts(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, int64_t *a8, uint64_t *a9, void *a10)
{
  if (a2 == 0x7FFFFFFF || (v10 = result, result >= a2) && (v10 = result, a2 >= 1))
  {
    v10 = a2;
  }

  if (a5 == 0x7FFFFFFF || (v11 = a4, a4 >= a5) && (v11 = a4, a5 >= 1))
  {
    v11 = a5;
  }

  if (v10 && v11)
  {
    v12 = vcvtd_n_f64_s64(a7, 1uLL);
    if (a7 <= 2)
    {
      v12 = 1;
    }

    if (v12 < v10)
    {
      v10 = v12;
    }

    v13 = a7 - v11;
    v14 = a7 - v10 <= v11;
    if (a7 - v10 < v11)
    {
      v11 = a7 - v10;
    }

    if (v14)
    {
      v15 = v10;
    }

    else
    {
      v15 = v13;
    }
  }

  else
  {
    if (v11 >= a7)
    {
      v16 = a7;
    }

    else
    {
      v16 = v11;
    }

    if (v11)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    if (v10 >= a7)
    {
      v15 = a7;
    }

    else
    {
      v15 = v10;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v15 >= result)
  {
    v15 = result;
  }

  if (v15 >= a2)
  {
    v15 = a2;
  }

  if (v11 >= a4)
  {
    v11 = a4;
  }

  if (v11 >= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = v11;
  }

  v18 = a3 - 1;
  if (a3 - 1 >= (v15 - 1))
  {
    v18 = v15 - 1;
  }

  v19 = v15 - 1 - v18;
  v20 = ~v18 + a7;
  if (a3 < 1)
  {
    v20 = a7;
    v19 = v15;
  }

  if (!v15)
  {
    v20 = a7;
    v19 = 0;
  }

  v21 = a6 - 1;
  if (a6 - 1 >= (v17 - 1))
  {
    v21 = v17 - 1;
  }

  v22 = v17 - 1 - v21;
  v23 = v20 + ~v21;
  if (a6 < 1)
  {
    v22 = v17;
    v23 = v20;
  }

  if (v17)
  {
    v20 = v23;
  }

  else
  {
    v22 = 0;
  }

  if (a2 >= result)
  {
    v24 = result;
  }

  else
  {
    v24 = a2;
  }

  if (a5 >= a4)
  {
    v25 = a4;
  }

  else
  {
    v25 = a5;
  }

  while (v19 + v22 < v20)
  {
    if (a2 && v19 >= v24)
    {
      v26 = 1;
      if (a5 && v22 >= v25)
      {
        break;
      }
    }

    else
    {
      ++v19;
      if (a5)
      {
        v27 = v22 < v25;
      }

      else
      {
        v27 = 1;
      }

      v26 = v27;
    }

    v22 += v26;
  }

  if (a8)
  {
    *a8 = v19;
  }

  if (a9)
  {
    *a9 = v22;
  }

  if (a10)
  {
    *a10 = v19 + v22;
  }

  return result;
}

uint64_t SSApplicationHasExtraInformation(void *a1)
{
  v1 = a1;
  v9 = 0uLL;
  v10 = 0;
  if (_SSGetMDPlistObject("n", 1, &v9) && (v5 = v9, v7 = v10, _MDPlistGetPlistObjectType() == 241))
  {
    v2 = [v1 UTF8String];
    if (v2 && _MDPlistDictionaryGetPlistObjectForKey())
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
  }

  if (!_SSGetMDPlistObject("k", 1, &v9) || (v6 = v9, v8 = v10, _MDPlistGetPlistObjectType() != 241) || !v2 && ![v1 UTF8String] || !_MDPlistDictionaryGetPlistObjectForKey())
  {
    v3 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v3 = 1;
LABEL_14:

  return v3;
}

id SSBuildExtraApplicationAlternateNames(void *a1, void *a2, char a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (!v5 || (v62 = 0uLL, v63 = 0, !_SSGetMDPlistObject("n", 1, &v62)) || (v75 = v62, *&v76 = v63, _MDPlistGetPlistObjectType() != 241) || (v60 = 0uLL, v61 = 0, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v7 = v5, [v5 UTF8String], v75 = v62, *&v76 = v63, !_MDPlistDictionaryGetPlistObjectForKey()) || (v75 = v60, *&v76 = v61, _MDPlistGetPlistObjectType() != 241))
  {
    v13 = v6;
    goto LABEL_13;
  }

  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v49 = MEMORY[0x1E69E9820];
  v50 = 3221225472;
  v51 = __SSBuildExtraApplicationAlternateNames_block_invoke;
  v52 = &unk_1E85965D8;
  v53 = &v56;
  v54 = &v84;
  v55 = &v75;
  *buf = v60;
  *&buf[16] = v61;
  _MDPlistDictionaryIterate();
  v8 = *(v57 + 6);
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
      v71[0] = v9;
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v84 + 1)];
      v71[1] = v10;
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
      v71[2] = v11;
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v85 + 1)];
      v71[3] = v15;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:4];
    }

    else
    {
      if (v8 == 5)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
        v70[0] = v9;
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v84 + 1)];
        v70[1] = v10;
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
        v70[2] = v11;
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v85 + 1)];
        v70[3] = v15;
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v86];
        v70[4] = v16;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:5];
      }

      else
      {
        if (v8 != 6)
        {
          goto LABEL_22;
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
        v69[0] = v9;
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v84 + 1)];
        v69[1] = v10;
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
        v69[2] = v11;
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v85 + 1)];
        v69[3] = v15;
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v86];
        v69[4] = v16;
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v86 + 1)];
        v69[5] = v17;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:6];
      }
    }

    goto LABEL_27;
  }

  switch(v8)
  {
    case 1:
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
      v74 = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
      goto LABEL_29;
    case 2:
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
      v73[0] = v9;
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v84 + 1)];
      v73[1] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
LABEL_28:

LABEL_29:
      if (*(v57 + 6))
      {
        if ((a3 & 1) == 0)
        {
          [MEMORY[0x1E695DF58] preferredLanguages];
          v18 = MDRetrieveBestAvailableLanguage();
          v68 = v18;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];

          v12 = v19;
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = v12;
        v20 = [obj countByEnumeratingWithState:&v45 objects:v67 count:16];
        if (v20)
        {
          v37 = *v46;
          *&v21 = 138412802;
          v35 = v21;
          do
          {
            v38 = v20;
            for (i = 0; i != v38; ++i)
            {
              if (*v46 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v45 + 1) + 8 * i);
              v43 = 0uLL;
              v44 = 0;
              if (v23)
              {
                v24 = v23;
                [v23 UTF8String];
                *buf = v60;
                *&buf[16] = v61;
                if (_MDPlistDictionaryGetPlistObjectForKey())
                {
                  *buf = v43;
                  *&buf[16] = v44;
                  v25 = _MDPlistGetPlistObjectType() - 240;
                  if (v25 <= 5 && ((1 << v25) & 0x31) != 0)
                  {
                    *buf = v43;
                    *&buf[16] = v44;
                    v26 = _MDPlistContainerCopyObject();
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = v35;
                      *&buf[4] = v23;
                      *&buf[12] = 2112;
                      *&buf[14] = v5;
                      *&buf[22] = 2112;
                      v66 = v26;
                      _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "adding name %@ %@ %@", buf, 0x20u);
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v27 = v26;
                      if ([v27 length])
                      {
                        if (!v6)
                        {
                          v6 = [MEMORY[0x1E695DFA8] set];
                        }

                        [v6 addObject:{v27, v35}];
                      }

                      goto LABEL_63;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v28 = v26;
                      v39 = 0u;
                      v40 = 0u;
                      v41 = 0u;
                      v42 = 0u;
                      v29 = v28;
                      v30 = [v29 countByEnumeratingWithState:&v39 objects:v64 count:16];
                      if (v30)
                      {
                        v31 = *v40;
                        do
                        {
                          for (j = 0; j != v30; ++j)
                          {
                            if (*v40 != v31)
                            {
                              objc_enumerationMutation(v29);
                            }

                            v33 = *(*(&v39 + 1) + 8 * j);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v34 = v33;
                              if ([v34 length])
                              {
                                if (!v6)
                                {
                                  v6 = [MEMORY[0x1E695DFA8] set];
                                }

                                [v6 addObject:{v34, v35}];
                              }
                            }
                          }

                          v30 = [v29 countByEnumeratingWithState:&v39 objects:v64 count:16];
                        }

                        while (v30);
                      }

LABEL_63:
                    }

                    continue;
                  }
                }
              }
            }

            v20 = [obj countByEnumeratingWithState:&v45 objects:v67 count:16];
          }

          while (v20);
        }

        v13 = v6;
      }

      else
      {
        v13 = v6;
      }

      goto LABEL_69;
    case 3:
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
      v72[0] = v9;
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v84 + 1)];
      v72[1] = v10;
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
      v72[2] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
LABEL_27:

      goto LABEL_28;
  }

LABEL_22:
  v13 = v6;
LABEL_69:
  _Block_object_dispose(&v56, 8);
LABEL_13:

  return v13;
}

void sub_1D9FED21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSAllLocalizedExtraApplicationKeywords(void *a1)
{
  v1 = a1;
  if (v1 && (v4 = 0uLL, v5 = 0, _SSGetMDPlistObject("k", 1, &v4)) && _MDPlistGetPlistObjectType() == 241 && ([v1 UTF8String], _MDPlistDictionaryGetPlistObjectForKey()) && _MDPlistGetPlistObjectType() == 241)
  {
    v2 = _MDPlistContainerCopyObject();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SSExtraApplicationKeywords(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1 || (v22 = 0uLL, v23 = 0, !_SSGetMDPlistObject("k", 1, &v22)) || (v32 = v22, *&v33 = v23, _MDPlistGetPlistObjectType() != 241) || (v20 = 0uLL, v21 = 0, v2 = v1, [v1 UTF8String], v32 = v22, *&v33 = v23, !_MDPlistDictionaryGetPlistObjectForKey()) || (v32 = v20, *&v33 = v21, _MDPlistGetPlistObjectType() != 241))
  {
    v5 = 0;
    goto LABEL_12;
  }

  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  *buf = v20;
  *&buf[16] = v21;
  _MDPlistDictionaryIterate();
  v3 = 0;
  v4 = *(v17 + 6);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
      v28[0] = v6;
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v41 + 1)];
      v28[1] = v7;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v42];
      v28[2] = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v42 + 1)];
      v28[3] = v10;
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    }

    else
    {
      if (v4 == 5)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
        v27[0] = v6;
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v41 + 1)];
        v27[1] = v7;
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v42];
        v27[2] = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v42 + 1)];
        v27[3] = v10;
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v43];
        v27[4] = v11;
        v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
      }

      else
      {
        v5 = 0;
        if (v4 != 6)
        {
          goto LABEL_36;
        }

        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
        v26[0] = v6;
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v41 + 1)];
        v26[1] = v7;
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v42];
        v26[2] = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v42 + 1)];
        v26[3] = v10;
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v43];
        v26[4] = v11;
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v43 + 1)];
        v26[5] = v12;
        v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:6];
      }
    }

    goto LABEL_25;
  }

  if (v4 == 1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
    v31 = v6;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    goto LABEL_27;
  }

  if (v4 == 2)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
    v30[0] = v6;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v41 + 1)];
    v30[1] = v7;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
LABEL_26:

LABEL_27:
    if (*(v17 + 6))
    {
      [MEMORY[0x1E695DF58] preferredLanguages];
      v13 = MDRetrieveBestAvailableLanguage();
      v14 = v13;
      if (v13 && (v15 = v13, [v14 UTF8String], *buf = v20, *&buf[16] = v21, _MDPlistDictionaryGetPlistObjectForKey()) && (memset(buf, 0, sizeof(buf)), (_MDPlistGetPlistObjectType() & 0xFFFFFFFE) == 0xF4))
      {
        memset(buf, 0, sizeof(buf));
        v5 = _MDPlistContainerCopyObject();
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v1;
          *&buf[22] = 2112;
          v25 = v5;
          _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "adding keyword %@ %@ %@", buf, 0x20u);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_36;
  }

  v5 = 0;
  if (v4 == 3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
    v29[0] = v6;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&v41 + 1)];
    v29[1] = v7;
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v42];
    v29[2] = v8;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
LABEL_25:

    goto LABEL_26;
  }

LABEL_36:

  _Block_object_dispose(&v16, 8);
LABEL_12:

  return v5;
}

void sub_1D9FEDA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _SSGetAbbreviationsMDPlistObject(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (_SSGetAbbreviationsMDPlistObject_oncePathCacheToken != -1)
  {
    _SSGetAbbreviationsMDPlistObject_cold_1();
  }

  return _SSGetAbbreviationsMDPlistObject_sAbbreviationsContainer && _MDPlistDictionaryGetPlistObjectForKey() != 0;
}

uint64_t SSAbbreviationsVersion()
{
  v1 = 0uLL;
  v2 = 0;
  if (_SSGetAbbreviationsMDPlistObject("v", 1, &v1) && (_MDPlistGetPlistObjectType() == 226 || _MDPlistGetPlistObjectType() == 35 || _MDPlistGetPlistObjectType() == 227 || _MDPlistGetPlistObjectType() == 51))
  {
    return _MDPlistNumberGetIntValue();
  }

  else
  {
    return 0;
  }
}

id SSAllLengthyOriginals(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 lowercaseString];
    v5 = [v3 lowercaseString];

    if (!v5 || [(__CFString *)v5 hasPrefix:@"en"]&& [(__CFString *)v5 length]>= 3)
    {

      v5 = @"en";
    }

    v8 = 0uLL;
    v9 = 0;
    if (_SSGetAbbreviationsMDPlistObject(-[__CFString UTF8String](v5, "UTF8String"), -[__CFString length](v5, "length"), &v8) && _MDPlistGetPlistObjectType() == 241 && ([v4 UTF8String], _MDPlistDictionaryGetPlistObjectForKey()) && _MDPlistGetPlistObjectType() == 240)
    {
      v6 = _MDPlistContainerCopyObject();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id SSBuildTTRURL(void *a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Build>"];
  v9 = _CFCopySupplementalVersionDictionary();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
  v50 = v7;
  v46 = v10;
  v47 = v9;
  if (v10)
  {
    v11 = v10;

    v8 = v11;
  }

  v12 = [MEMORY[0x1E696AD60] string];
  v48 = v8;
  [v12 appendFormat:@"Build: %@\n\n", v8];
  v49 = v5;
  [v12 appendFormat:@"Query: %@\n\n", v5];
  [v12 appendString:@"Results:\n"];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v6;
  v13 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v13)
  {
    v14 = v13;
    v52 = *v59;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v59 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v58 + 1) + 8 * i);
        [v12 appendString:@"\n"];
        v17 = [v16 title];
        v18 = [v16 bundleIdentifier];
        [v12 appendFormat:@"%@ <%@> maxInitiallyVisibleResults: %lu, isInitiallyHidden; %d\n", v17, v18, objc_msgSend(v16, "maxInitiallyVisibleResults"), objc_msgSend(v16, "isInitiallyHidden")];

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v19 = [v16 results];
        v20 = [v19 countByEnumeratingWithState:&v54 objects:v63 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v55;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v55 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [*(*(&v54 + 1) + 8 * j) ttrDescription];
              [v12 appendFormat:@"\t%@", v24];

              [v12 appendString:@"\n"];
            }

            v21 = [v19 countByEnumeratingWithState:&v54 objects:v63 count:16];
          }

          while (v21);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v14);
  }

  v25 = [MEMORY[0x1E696AD60] stringWithString:@"Problem Summary: \n\nSteps to Reproduce: \n\nRegression Information: \n\n*** Note: Debug info contains the titles of items in the UI. Please review for confidential information. ***\n\n===  DEBUG INFO  ===\n\n"];
  [v25 appendFormat:@"%@\n\n", v12];
  v26 = &stru_1F556FE60;
  if (v50)
  {
    v26 = v50;
  }

  v27 = SSDefaultsGetResources([v25 appendFormat:@"%@\n\n", v26]);
  v28 = [v27 getTTRLogs];
  v41 = v25;
  [v25 appendString:v28];

  v45 = SSExtensionIdentifiersForSections(obj);
  v29 = objc_opt_new();
  [v29 setScheme:@"tap-to-radar"];
  [v29 setHost:@"new"];
  v53 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentName" value:@"Spotlight (New Bugs)"];
  v62[0] = v53;
  v44 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentVersion" value:@"iOS"];
  v62[1] = v44;
  v43 = [MEMORY[0x1E696AF60] queryItemWithName:@"ComponentID" value:@"312963"];
  v62[2] = v43;
  v30 = MEMORY[0x1E696AF60];
  v42 = [v45 componentsJoinedByString:{@", "}];
  v31 = [v30 queryItemWithName:@"ExtensionIdentifiers" value:v42];
  v62[3] = v31;
  v32 = [MEMORY[0x1E696AF60] queryItemWithName:@"Classification" value:@"Other Bug"];
  v62[4] = v32;
  v33 = [MEMORY[0x1E696AF60] queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
  v62[5] = v33;
  v34 = MEMORY[0x1E696AF60];
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", v48];
  v36 = [v34 queryItemWithName:@"Title" value:v35];
  v62[6] = v36;
  v37 = [MEMORY[0x1E696AF60] queryItemWithName:@"Description" value:v25];
  v62[7] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:8];
  [v29 setQueryItems:v38];

  v39 = [v29 URL];

  return v39;
}

id SSExtensionIdentifiersForSections(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    v5 = &unk_1F55B74D8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) bundleIdentifier];
        IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(v7);

        if (IsSyndicatedPhotos)
        {
          v5 = [&unk_1F55B74D8 arrayByAddingObject:@"com.apple.PhotoLibraryServices.PhotosDiagnostics"];
          goto LABEL_12;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = &unk_1F55B74D8;
  }

LABEL_12:

  return v5;
}

uint64_t isImageOrVideoContentType(uint64_t a1)
{
  v1 = [MEMORY[0x1E6982C40] typeWithIdentifier:a1];
  if ([v1 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 conformsToType:*MEMORY[0x1E6982E30]];
  }

  return v2;
}

uint64_t isSupportedMessageAttachmentFiles(void *a1)
{
  v1 = isSupportedMessageAttachmentFiles_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    isSupportedMessageAttachmentFiles_cold_1();
  }

  v3 = [isSupportedMessageAttachmentFiles_supportedMessageAttachmentFileTypes containsObject:v2];

  return v3;
}

uint64_t __isSupportedMessageAttachmentFiles_block_invoke()
{
  isSupportedMessageAttachmentFiles_supportedMessageAttachmentFileTypes = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F55B74F0];

  return MEMORY[0x1EEE66BB8]();
}

id SSAppNameForBundleId(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v1 allowPlaceholder:1 error:&v11];
  v3 = v11;
  v4 = [v2 localizedName];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    if ([v1 isEqualToString:@"com.apple.mobileslideshow"])
    {
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v4 = [v6 localizedStringForKey:@"PHOTOS_APP_NAME" value:&stru_1F556FE60 table:@"SpotlightServices"];
      v5 = 0;
    }

    else
    {
      v10 = 0;
      v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithRemotePlaceholderBundleIdentifier:v1 error:&v10];
      v5 = v10;
      v4 = [v6 localizedName];
    }

    if (!v4)
    {
      if (v3)
      {
        v7 = SSGeneralLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          SSAppNameForBundleId_cold_1();
        }
      }

      if (v5)
      {
        v8 = SSGeneralLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          SSAppNameForBundleId_cold_2();
        }
      }

      v4 = 0;
    }
  }

  return v4;
}

id SSAppNameForURL(void *a1)
{
  v1 = a1;
  v8 = 0;
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithURL:v1 allowPlaceholder:1 error:&v8];
  v3 = v8;
  v4 = [v2 localizedName];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = SSGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SSAppNameForURL_cold_1();
    }
  }

  return v4;
}

id SSBundlesDonatingPhotos(uint64_t a1)
{
  if (SSBundlesDonatingPhotos_onceToken != -1)
  {
    SSBundlesDonatingPhotos_cold_1();
  }

  v2 = SSBundlesDonatingPhotos_bundlesDonatingPhotos;

  return v2;
}

void __SSBundlesDonatingPhotos_block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.mobileslideshow";
  v2[1] = @"com.apple.mobilenotes";
  v2[2] = @"com.apple.MobileSMS";
  v2[3] = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
  v2[4] = @"com.apple.FileProvider.LocalStorage";
  v2[5] = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  v2[6] = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = SSBundlesDonatingPhotos_bundlesDonatingPhotos;
  SSBundlesDonatingPhotos_bundlesDonatingPhotos = v0;
}

uint64_t syllableToConsonant(uint64_t result)
{
  if ((result - 4352) >= 0x13)
  {
    if ((result - 44032) >> 2 > 0xAE8)
    {
      if ((result - 12593) > 0x1D)
      {
        return 0;
      }

      else
      {
        return dword_1DA0D5730[(result - 12593)];
      }
    }

    else
    {
      return ((28533 * (result + 21504)) >> 24) | 0x1100;
    }
  }

  return result;
}

uint64_t syllableToConsonantCompatibility(uint64_t a1)
{
  result = syllableToConsonant(a1);
  if (result)
  {
    return koreanConsonantTable[(result - 4352)];
  }

  return result;
}

uint64_t addUtf32BEToBufferAtIndexFromHex(uint64_t result, void *a2, int a3)
{
  v3 = (*a2)++;
  *(result + v3) = HIBYTE(a3);
  v4 = (*a2)++;
  *(result + v4) = BYTE2(a3);
  v5 = (*a2)++;
  *(result + v5) = BYTE1(a3);
  v6 = (*a2)++;
  *(result + v6) = a3;
  return result;
}

CFStringRef createConsonantsStringForKorean(const __CFString *a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0xC000100u);
  v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xDFEBAD8uLL);
  if (!v6)
  {
    v14 = SSGeneralLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v18 = 138412290;
    v19 = a1;
    v15 = "[consonantString] Failed malloc for bufferUtf32, string: %@";
LABEL_23:
    _os_log_impl(&dword_1D9F69000, v14, OS_LOG_TYPE_DEFAULT, v15, &v18, 0xCu);
    goto LABEL_24;
  }

  v7 = v6;
  if (!CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x18000100u))
  {
    free(v7);
    v14 = SSGeneralLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v18 = 138412290;
    v19 = a1;
    v15 = "[consonantString] Failed to get utf32be for string: %@";
    goto LABEL_23;
  }

  v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x8BB071A0uLL);
  if (!v8)
  {
    v14 = SSGeneralLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v18 = 138412290;
    v19 = a1;
    v15 = "[consonantString] Failed malloc for consonantsBuffer, string: %@";
    goto LABEL_23;
  }

  v9 = v8;
  if (MaximumSizeForEncoding >= 1)
  {
    v10 = 0;
    v11 = &v7[MaximumSizeForEncoding];
    v12 = v7;
    while (1)
    {
      v13 = syllableToConsonant(bswap32(*v12));
      if (!a2)
      {
        goto LABEL_9;
      }

      if (v13)
      {
        break;
      }

LABEL_11:
      if (++v12 >= v11)
      {
        goto LABEL_20;
      }
    }

    v13 = koreanConsonantTable[v13 - 4352];
LABEL_9:
    if (v13)
    {
      v9[v10] = HIBYTE(v13);
      v9[v10 + 1] = BYTE2(v13);
      v9[v10 + 2] = BYTE1(v13);
      v9[v10 + 3] = v13;
      v10 += 4;
    }

    goto LABEL_11;
  }

  v10 = 0;
  v12 = v7;
LABEL_20:
  *v12 = 0;
  free(v7);
  v16 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v9, v10, 0x18000100u, 0);
  free(v9);
  if (!v16)
  {
    v14 = SSGeneralLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = a1;
      v15 = "[consonantString] consonantsString is null for string: %@";
      goto LABEL_23;
    }

LABEL_24:

    return 0;
  }

  return v16;
}

uint64_t SSAppTopHitWithShortcutsEnabled(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v5 = 0;
  v2 = [v1 BOOLeanForKey:@"AppTopHitWithShortcuts" didFailWithError:&v5];
  v3 = v5;

  return _os_feature_enabled_impl() & ((v3 != 0) | v2);
}

uint64_t SSAppVendedTopHitViewsEnabled(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v5 = 0;
  v2 = [v1 BOOLeanForKey:@"AppVendedTopHits" didFailWithError:&v5];
  v3 = v5;

  return _os_feature_enabled_impl() & ((v3 != 0) | v2);
}

uint64_t SSPriorityIndexFastPathEnabled(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v6 = 0;
  v2 = [v1 BOOLeanForKey:@"EnablePriorityIndexFastPath" didFailWithError:&v6];
  v3 = v6;

  if (v3)
  {
    v4 = SSGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SSPriorityIndexFastPathEnabled_cold_1();
    }

    v2 = 1;
  }

  return v2;
}

uint64_t SSPriorityIndexLimitBundles(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v6 = 0;
  v2 = [v1 BOOLeanForKey:@"PriorityIndexLimitBundles" didFailWithError:&v6];
  v3 = v6;

  if (v3)
  {
    v4 = SSGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SSPriorityIndexLimitBundles_cold_1();
    }

    v2 = 1;
  }

  return v2;
}

uint64_t SSPriorityIndexDelayMilliseconds(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v6 = 0;
  v2 = [v1 longForKey:@"PriorityIndexDelayMilliseconds" didFailWithError:&v6];
  v3 = v6;

  if (v3)
  {
    v4 = SSGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SSPriorityIndexDelayMilliseconds_cold_1();
    }

    v2 = 0;
  }

  return v2;
}

uint64_t SSIsCounterFactual(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v6 = 0;
  v2 = [v1 BOOLeanForKey:@"IsCounterFactual" didFailWithError:&v6];
  v3 = v6;

  if (v3)
  {
    v4 = SSGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SSIsCounterFactual_cold_1();
    }

    v2 = 0;
  }

  return v2;
}

id SSFetchAttributeValueIsValid(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v7 = v2;
            goto LABEL_14;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t SSPrepareItemsLimit(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 isEqualToString:@"com.apple.mobilemail"])
  {
    v4 = [v3 length];
    if (v4 <= 6)
    {
      v5 = 25;
    }

    else
    {
      v5 = 40;
    }

    if (v4 == 8)
    {
      v6 = 50;
    }

    else
    {
      v6 = v5;
    }

    if (v4 <= 8)
    {
      v7 = v6;
    }

    else
    {
      v7 = 65;
    }

    if (v4 >= 5)
    {
      v8 = v7;
    }

    else
    {
      v8 = 20;
    }
  }

  else
  {
    v8 = 20;
  }

  return v8;
}

uint64_t SSSpotlightL1Compare(void *a1, void *a2, double *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v5;
  v8 = v6;
  v9 = [v7 test_indexScore];
  v11 = v10;
  v12 = [v8 test_indexScore];
  if (v9 | v11 && v12 | v13 && (v11 == v13 ? (v14 = v9 == v12) : (v14 = 0), !v14))
  {
    if (__PAIR128__(v13, v12) < __PAIR128__(v11, v9))
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }
  }

  else if (!(v9 | v11) || v12 | v13)
  {
    if (v9 | v11 || !(v12 | v13))
    {
      v16 = *a3;
      v17 = [v7 interestingDate];
      [v17 timeIntervalSinceReferenceDate];
      v19 = vabdd_f64(v16, v18);

      v20 = *a3;
      v21 = [v8 interestingDate];
      [v21 timeIntervalSinceReferenceDate];
      v23 = vabdd_f64(v20, v22);

      if (v19 < v23)
      {
        v15 = -1;
      }

      else
      {
        v15 = v19 > v23;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

void SSBinaryHeapApplierFunction(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = 0;
  v3[2](v3, a1, &v4);
}

void __initCacheOnce_block_invoke()
{
  v0 = objc_opt_new();
  v1 = checkedScreenTimeStatusCache;
  checkedScreenTimeStatusCache = v0;

  v2 = objc_opt_new();
  v3 = screenTimeStatusForBundleCache;
  screenTimeStatusForBundleCache = v2;

  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("screenTimeStatusBundleFetchQueue", v6);
  v5 = screenTimeStatusFetchQueue;
  screenTimeStatusFetchQueue = v4;
}

void __updateScreenTimeStatusForBundleId_block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v10];
  v5 = v10;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __updateScreenTimeStatusForBundleId_block_invoke_2;
    v7[3] = &unk_1E8596628;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 getDeviceManagementPolicyWithCompletionHandler:v7];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }
}

void __updateScreenTimeStatusForBundleId_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = a2 != 0;
  os_unfair_lock_lock(&screenTimeCacheLock);
  v5 = *(a1 + 32);
  if (a2)
  {
    [screenTimeStatusForBundleCache addObject:v5];
  }

  else
  {
    [screenTimeStatusForBundleCache removeObject:v5];
  }

  os_unfair_lock_unlock(&screenTimeCacheLock);
  if (*(a1 + 40))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __updateScreenTimeStatusForBundleId_block_invoke_3;
    v6[3] = &unk_1E8596600;
    v7 = *(a1 + 40);
    v8 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

uint64_t SSBinaryHeapCompareInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(*(a3 + 16) + 16))();
  v4 = 1;
  if (v3 != -1)
  {
    v4 = -1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

id comparatorWithBlock_block_invoke(int a1, void *aBlock)
{
  v2 = _Block_copy(aBlock);

  return v2;
}

id comparatorForDateAttribute_block_invoke_2(uint64_t a1, int a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = comparatorForDateAttribute_block_invoke_3;
  aBlock[3] = &__block_descriptor_36_e11_q24__0_8_16l;
  v5 = a2;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t comparatorForDateAttribute_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = SSCompactRankingAttrsGetValue([a2 attributes], *(a1 + 32));
  v7 = [v5 attributes];

  v8 = SSCompactRankingAttrsGetValue(v7, *(a1 + 32));
  v9 = v8;
  if (v6)
  {
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() ^ 1;
    if (v9)
    {
LABEL_3:
      objc_opt_class();
      v11 = objc_opt_isKindOfClass() ^ 1;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  if ((v10 | v11))
  {
    getpid();
    SimulateCrash();
    if ((v10 ^ 1 | v11))
    {
      v12 = v11 & (v10 ^ 1) & 1;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    [v6 timeIntervalSinceReferenceDate];
    v14 = v13;
    [v9 timeIntervalSinceReferenceDate];
    if (v14 < v15)
    {
      v12 = -1;
    }

    else
    {
      v12 = v14 > v15;
    }
  }

  return v12;
}

uint64_t comparatorForPastDateRecency_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 mostRecentUsedDate];
  v7 = v6;
  [v5 mostRecentUsedDate];
  if (v7 >= v8)
  {
    [v4 mostRecentUsedDate];
    v11 = v10;
    [v5 mostRecentUsedDate];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t comparatorForFutureDateRecency_block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 closestUpComingDate];
  v7 = v6;
  [v5 closestUpComingDate];
  if (v7 <= v8)
  {
    [v4 closestUpComingDate];
    v11 = v10;
    [v5 closestUpComingDate];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

id getFilteredSuggestionResults(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3 && objc_msgSend_count(v3))
  {
    v5 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v15;
LABEL_5:
      v11 = 0;
      v12 = v9;
      v9 += v8;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if ((a2 & 0x8000000000000000) == 0 && v12 >= a2)
        {
          break;
        }

        [v5 addObject:{*(*(&v14 + 1) + 8 * v11), v14}];
        ++v12;
        if (v8 == ++v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __getFeaturesForSuggestionResult_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];
  v5 = getFeaturesForSuggestionResult_sFeatureClasses;
  getFeaturesForSuggestionResult_sFeatureClasses = v4;
}

float sMaxPicker_block_invoke(float result, float a2)
{
  if (result < a2)
  {
    return a2;
  }

  return result;
}

float sMinPicker_block_invoke_2(float result, float a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

id lowercase_keys(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v3 objectForKey:{v8, v12}];
        v10 = [v8 lowercaseString];
        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

id PRSDirectivesManagerDescriptorsForModelInputScore()
{
  v2[47] = *MEMORY[0x1E69E9840];
  v2[0] = @"kMDItemUserIsSender";
  v2[1] = @"kMDItemContentCreationRecent";
  v2[2] = @"kMDItemEscapedWord";
  v2[3] = @"kMDItemCreationDateThisYear";
  v2[4] = @"kMDItemLastUsedDateThisYear";
  v2[5] = @"kMDItemContentCreationThisMonth";
  v2[6] = @"kMDItemLastUsedDateThisMonth";
  v2[7] = @"kMDItemContentCreationThisWeek";
  v2[8] = @"kMDItemLastUsedDateThisWeek";
  v2[9] = @"kMDItemEventTodayToNextYear";
  v2[10] = @"kMDItemEventLastMonthToToday";
  v2[11] = @"kMDItemEventTodayToNextMonth";
  v2[12] = @"kMDItemEventTodayToNextWeek";
  v2[13] = @"kMDItemEventTodayToLastWeek";
  v2[14] = @"kMDItemEventYesterdayToToday";
  v2[15] = @"kMDItemEventToday";
  v2[16] = @"kMDItemTextContentTokenizedMatch";
  v2[17] = @"kMDItemAuthorsOrRecipientsTokenizedPrefixMatch";
  v2[18] = @"kMDItemDescriptionTokenizedPrefixMatch";
  v2[19] = @"kMDItemAlbumTokenizedPrefixMatch";
  v2[20] = @"kMDItemAuthorsOrRecipientsNonTokenizedPrefixMatch";
  v2[21] = @"kMDItemDescriptionPrefixWordMatch";
  v2[22] = @"kMDItemAlbumPrefixWordMatch";
  v2[23] = @"kMDItemAuthorsOrRecipientsPrefixWordMatch";
  v2[24] = @"kMDItemDescriptionExactPrefixMatch";
  v2[25] = @"kMDItemAlbumNonTokenizedPrefixMatch";
  v2[26] = @"kMDItemAuthorsOrRecipientsExactMatch";
  v2[27] = @"kMDItemDescriptionNonTokenizedWordMatch";
  v2[28] = @"kMDItemAlbumNonTokenizedWordMatch";
  v2[29] = @"kMDItemUserActivity";
  v2[30] = @"kMDItemAlternateNameNonTokenizedWordMatch";
  v2[31] = @"kMDItemAlternateNamePrefixWordMatch";
  v2[32] = @"kMDItemAlternateNameExactMatch";
  v2[33] = @"kMDItemShortcutRecent";
  v2[34] = @"kMDItemDueDateInLastOneToNextTwentyFourHours";
  v2[35] = @"kMDItemDueDateInLastOneToNextOneHour";
  v2[36] = @"kMDItemDisplayNameOrSubjectOrTitleTokenizedPrefixMatch";
  v2[37] = @"kMDItemLastSpaceAndTotalMatchAndDisplayNameOrSubjectOrTitleWordMatch";
  v2[38] = @"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedWordMatch";
  v2[39] = @"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedPrefixMatch";
  v2[40] = @"kMDItemDisplayNameOrSubjectOrTitleExactMatch";
  v2[41] = @"kMDItemSpecialCondition1";
  v2[42] = @"kMDItemSpecialCondition2";
  v2[43] = @"kMDItemSpecialCondition3";
  v2[44] = @"kMDItemSpecialCondition4";
  v2[45] = @"kMDItemSpecialCondition5";
  v2[46] = @"kMDItemShortcutWithinBagParamValue";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:47];

  return v0;
}

uint64_t getBinForValue(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  if (*(a1 + 4 * a2) >= a4)
  {
    return a2;
  }

  while (a3 != 1)
  {
    v4 = a3;
    a3 >>= 1;
    v5 = a2 + (v4 >> 1);
    v6 = *(a1 + 4 * v5);
    if (v6 <= a4)
    {
      a3 = v4 - a3;
      a2 += v4 >> 1;
      if (v6 >= a4)
      {
        return v5;
      }
    }
  }

  return a2 + 1;
}

uint64_t assetIsValid(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Canned"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"Default"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"Experimental"];
  }

  return v2;
}

uint64_t getAssetTypeForName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Canned"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Default"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Experimental"])
  {
    v2 = 2;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

void SSDefaultsLogForTrigger(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = SSDefaultsGetResources(v3);
  [v4 logForTrigger:v3 queryID:a2];
}

id SSDefaultsGetAssetPath(void *a1)
{
  v1 = a1;
  v2 = SSDefaultsGetResources(v1);
  v3 = [v2 filePathArrayForKey:@"SpotlightServices"];

  v4 = SSDefaultsMatchFilenameAsSuffix(v3, v1);

  return v4;
}

id SSDefaultsMatchFilenameAsSuffix(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = 0;
  if ([v4 length])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __SSDefaultsMatchFilenameAsSuffix_block_invoke;
    v7[3] = &unk_1E8596880;
    v8 = v4;
    v9 = &v10;
    [v3 enumerateObjectsUsingBlock:v7];
  }

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_1D9FFF328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSDefaultsGetAssetPathForQueryParser(void *a1)
{
  v1 = a1;
  v2 = SSDefaultsGetResources(v1);
  v3 = [v2 filePathArrayForKey:@"QueryParser"];

  v4 = SSDefaultsMatchFilenameAsSuffix(v3, v1);

  return v4;
}

BOOL SSDefaultsGetState(unint64_t a1)
{
  if (state_enabled_bullseye_testing)
  {
    return 1;
  }

  if (a1 > 6)
  {
    return 0;
  }

  block[5] = v1;
  block[6] = v2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SSDefaultsGetState_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (state_once_tokens[a1] != -1)
  {
    v4 = a1;
    dispatch_once(&state_once_tokens[a1], block);
    a1 = v4;
  }

  return state_enabled_values[a1] != 0;
}

uint64_t __SSDefaultsGetState_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 1;
        v4 = @"SPBullseyeAllowDictionaryTopResult";
        break;
      case 4:
        v3 = 0;
        v4 = @"SPBullseyeFilterLocalSuggestions";
        break;
      case 6:
        v3 = 1;
        v4 = @"SPUIBullseyeShowDebugLocalSuggestions";
        break;
      default:
        return result;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0;
      v4 = @"SPUIBullseyeSuggestions";
    }

    else
    {
      if (v2 != 2)
      {
        return result;
      }

      v3 = 0;
      v4 = @"SPSearchEnableBullseyeRanking";
    }
  }

  else
  {
    v3 = 0;
    v4 = @"SPBullseyeResultNoiseReduction";
  }

  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v6 = [v5 objectForKey:v4];

  if (v3 & 1) == 0 && !v6 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v6 BOOLValue])
  {
    state_enabled_values[*(v1 + 32)] = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t SSEnableLocalDetailText(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 BOOLeanForKey:@"LocalDetailText"];

  return v2;
}

uint64_t SSEnableSpotlightKnowledge(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 BOOLeanForKey:@"EnableSpotlightKnowledge"];

  return v2;
}

uint64_t SSPreferLocalResultsOnLocalEngagment(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 BOOLeanForKey:@"PreferLocalResultsOnEngagment"];

  return v2;
}

uint64_t SSCreateAsTypedSuggestion(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 BOOLeanForKey:@"CreateAsTypedSuggestion"];

  return v2;
}

uint64_t SSShowSearchInApps(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 BOOLeanForKey:@"ShowSearchInApps"];

  return v2;
}

uint64_t SSShowMusicRec(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 BOOLeanForKey:@"MusicRecTest"];

  return v2;
}

uint64_t SSDisplayLateServerSuggestions(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 BOOLeanForKey:@"DisplayLateServerSuggestions"];

  return v2;
}

uint64_t SSIgnoreMaxCountForSingleSuggestionsType(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 BOOLeanForKey:@"IgnoreMaxCountForSingleSuggestionsType"];

  return v2;
}

uint64_t SSMaxLocalSuggestionCount(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 longForKey:@"MaxSuggestionCount"];

  return v2;
}

uint64_t SSMaxServerSuggestionCount(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 longForKey:@"MaxServerSuggestionCount"];

  return v2;
}

uint64_t SSMaxTotalSuggestions(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 longForKey:@"MaxTotalSuggestions"];

  return v2;
}

uint64_t SSMaxSectionsBelowSuggestions(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 longForKey:@"MaxSectionsBelowSuggestions"];

  return v2;
}

uint64_t SSLocalDisplayPosition(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  v2 = [v1 longForKey:@"LocalDisplayPosition"];

  return v2;
}

float SSMinTopHitScore(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  [v1 doubleForKey:@"MinTopHitScore"];
  v3 = v2;

  return v3;
}

float SSMinSpellCorrectedAppTopHitScore(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  [v1 doubleForKey:@"MinSpellCorrectedAppTopHitScore"];
  v3 = v2;

  return v3;
}

double SSLocalSuggestionThreshold(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  [v1 doubleForKey:@"LocalSuggestionThreshold"];
  v3 = v2;

  return v3;
}

double SSServerSuggestionThreshold(uint64_t a1)
{
  v1 = SSDefaultsGetResources(a1);
  [v1 doubleForKey:@"ServerSuggestionThreshold"];
  v3 = v2;

  return v3;
}

uint64_t SSEnablePriorityIndex(uint64_t a1, uint64_t a2)
{
  if (SSEnablePriorityIndex_onceToken != -1)
  {
    SSEnablePriorityIndex_cold_1();
  }

  return SSEnablePriorityIndex_enabled;
}

uint64_t __SSEnablePriorityIndex_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnablePriorityIndex_enabled = result;
  return result;
}

uint64_t SSEnableSpotlightTopHitPersonalizedRanking(uint64_t a1)
{
  if (SSEnableSpotlightTopHitPersonalizedRanking_onceToken[0] != -1)
  {
    SSEnableSpotlightTopHitPersonalizedRanking_cold_1();
  }

  if (!SSEnableSpotlightTopHitPersonalizedRanking_expirationDate || ([MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0], v1 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v1, "compare:", SSEnableSpotlightTopHitPersonalizedRanking_expirationDate), v1, v2 == 1))
  {
    v3 = SSDefaultsGetResources(a1);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 BOOLeanForKey:@"EnableSpotlightTopHitPersonalizedRanking"];
    }

    else
    {
      v5 = 1;
    }

    SSEnableSpotlightTopHitPersonalizedRanking_runtimeEnabled = v5;
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
    v7 = SSEnableSpotlightTopHitPersonalizedRanking_expirationDate;
    SSEnableSpotlightTopHitPersonalizedRanking_expirationDate = v6;
  }

  return SSEnableSpotlightTopHitPersonalizedRanking_featureEnabled & SSEnableSpotlightTopHitPersonalizedRanking_runtimeEnabled & 1;
}

uint64_t __SSEnableSpotlightTopHitPersonalizedRanking_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnableSpotlightTopHitPersonalizedRanking_featureEnabled = result;
  return result;
}

unint64_t SSEnableSpotlightPersonalizedRanking2024()
{
  if (testingDefaults && [testingDefaults BOOLForKey:@"PersonalizedRanking2024Override"])
  {
    v0 = testingDefaults;

    return [v0 BOOLForKey:@"PersonalizedRanking2024Enabled"];
  }

  else
  {
    if (SSEnableSpotlightPersonalizedRanking2024_onceToken != -1)
    {
      SSEnableSpotlightPersonalizedRanking2024_cold_1();
    }

    return SSEnableSpotlightPersonalizedRanking2024_enabled;
  }
}

uint64_t __SSEnableSpotlightPersonalizedRanking2024_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnableSpotlightPersonalizedRanking2024_enabled = result;
  return result;
}

unint64_t SSEnableSpotlightIntentModeling()
{
  if (testingDefaults && [testingDefaults BOOLForKey:@"SpotlightIntentModelingOverride"])
  {
    v0 = testingDefaults;

    return [v0 BOOLForKey:@"SpotlightIntentModelingEnabled"];
  }

  else
  {
    if (SSEnableSpotlightIntentModeling_onceToken != -1)
    {
      SSEnableSpotlightIntentModeling_cold_1();
    }

    return SSEnableSpotlightIntentModeling_enabled;
  }
}

uint64_t __SSEnableSpotlightIntentModeling_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnableSpotlightIntentModeling_enabled = result;
  return result;
}

uint64_t SSEnableSpotlightFullPageRanking(uint64_t a1)
{
  if (SSEnableSpotlightFullPageRanking_onceToken != -1)
  {
    SSEnableSpotlightFullPageRanking_cold_1();
  }

  if (!SSEnableSpotlightFullPageRanking_expirationDate || ([MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0], v1 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v1, "compare:", SSEnableSpotlightFullPageRanking_expirationDate), v1, v2 == 1))
  {
    v3 = SSDefaultsGetResources(a1);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 BOOLeanForKey:@"SpotlightFullPageRankingDisabled"] ^ 1;
    }

    else
    {
      v5 = 1;
    }

    SSEnableSpotlightFullPageRanking_runtimeEnabled = v5;
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
    v7 = SSEnableSpotlightFullPageRanking_expirationDate;
    SSEnableSpotlightFullPageRanking_expirationDate = v6;
  }

  return SSEnableSpotlightFullPageRanking_featureEnabled & SSEnableSpotlightFullPageRanking_runtimeEnabled & 1;
}

uint64_t __SSEnableSpotlightFullPageRanking_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnableSpotlightFullPageRanking_featureEnabled = result;
  return result;
}

uint64_t SSEnableSearchToolDebugMode(uint64_t a1, uint64_t a2)
{
  if (SSEnableSearchToolDebugMode_onceToken != -1)
  {
    SSEnableSearchToolDebugMode_cold_1();
  }

  return SSEnableSearchToolDebugMode_enabled;
}

uint64_t __SSEnableSearchToolDebugMode_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnableSearchToolDebugMode_enabled = result;
  return result;
}

uint64_t SSEnableTextSemanticSearchCalibration(uint64_t a1, uint64_t a2)
{
  if (SSEnableTextSemanticSearchCalibration_onceToken != -1)
  {
    SSEnableTextSemanticSearchCalibration_cold_1();
  }

  return SSEnableTextSemanticSearchCalibration_enabled;
}

uint64_t __SSEnableTextSemanticSearchCalibration_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnableTextSemanticSearchCalibration_enabled = result;
  return result;
}

uint64_t SSEnableSearchToolAbsoluteThresholding(uint64_t a1, uint64_t a2)
{
  if (SSEnableSearchToolAbsoluteThresholding_onceToken != -1)
  {
    SSEnableSearchToolAbsoluteThresholding_cold_1();
  }

  return SSEnableSearchToolAbsoluteThresholding_enabled;
}

uint64_t __SSEnableSearchToolAbsoluteThresholding_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnableSearchToolAbsoluteThresholding_enabled = result;
  return result;
}

uint64_t SSEnableSearchToolL2Ranking(uint64_t a1, uint64_t a2)
{
  if (SSEnableSearchToolL2Ranking_onceToken != -1)
  {
    SSEnableSearchToolL2Ranking_cold_1();
  }

  return SSEnableSearchToolL2Ranking_enabled;
}

uint64_t __SSEnableSearchToolL2Ranking_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnableSearchToolL2Ranking_enabled = result;
  return result;
}

uint64_t SSEnableAppSearchV2(uint64_t a1)
{
  if (SSEnableAppSearchV2_onceToken != -1)
  {
    SSEnableAppSearchV2_cold_1();
  }

  if (!SSEnableAppSearchV2_expirationDate || ([MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0], v1 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v1, "compare:", SSEnableAppSearchV2_expirationDate), v1, v2 == 1))
  {
    v3 = SSDefaultsGetResources(a1);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 BOOLeanForKey:@"AppSearchV2"];
    }

    else
    {
      v5 = 1;
    }

    SSEnableAppSearchV2_runtimeEnabled = v5;
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
    v7 = SSEnableAppSearchV2_expirationDate;
    SSEnableAppSearchV2_expirationDate = v6;
  }

  return SSEnableAppSearchV2_featureEnabled & SSEnableAppSearchV2_runtimeEnabled & 1;
}

uint64_t __SSEnableAppSearchV2_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSEnableAppSearchV2_featureEnabled = result;
  return result;
}

uint64_t SSEnableSpotlightPersonalizedRankingFeedbackLogging(uint64_t a1)
{
  if (!SSEnableSpotlightPersonalizedRankingFeedbackLogging_expirationDate || ([MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0], v1 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v1, "compare:", SSEnableSpotlightPersonalizedRankingFeedbackLogging_expirationDate), v1, v2 == 1))
  {
    v3 = SSDefaultsGetResources(a1);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 BOOLeanForKey:@"EnableSpotlightPersonalizedRankingFeedbackLogging"];
    }

    else
    {
      v5 = 1;
    }

    SSEnableSpotlightPersonalizedRankingFeedbackLogging_enabled = v5;
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
    v7 = SSEnableSpotlightPersonalizedRankingFeedbackLogging_expirationDate;
    SSEnableSpotlightPersonalizedRankingFeedbackLogging_expirationDate = v6;
  }

  return SSEnableSpotlightPersonalizedRankingFeedbackLogging_enabled;
}

uint64_t SSSpotlightUIPlusEnabled(uint64_t a1, uint64_t a2)
{
  if (SSSpotlightUIPlusEnabled_onceToken != -1)
  {
    SSSpotlightUIPlusEnabled_cold_1();
  }

  return SSSpotlightUIPlusEnabled_spotlightUIPlusFFEnabled;
}

uint64_t __SSSpotlightUIPlusEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSSpotlightUIPlusEnabled_spotlightUIPlusFFEnabled = result;
  return result;
}

uint64_t SSSemanticSearchMD7Enabled(uint64_t a1, uint64_t a2)
{
  if (SSSemanticSearchMD7Enabled_onceToken != -1)
  {
    SSSemanticSearchMD7Enabled_cold_1();
  }

  return SSSemanticSearchMD7Enabled_ffStatus;
}

uint64_t __SSSemanticSearchMD7Enabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  SSSemanticSearchMD7Enabled_ffStatus = result;
  return result;
}

float SSMinFileTopHitScore()
{
  v0 = [SSRankingManager getTopHitsThresholdsForBundleId:?];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 firstObject];
    [v2 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 2.22507386e-308;
  }

  if (SSMinFileTopHitScore_onceToken != -1)
  {
    SSMinFileTopHitScore_cold_1();
  }

  if (v4 == 2.22507386e-308)
  {
    v5 = SSMinFileTopHitScore_sMinFileTopHitScore;
  }

  else
  {
    *&v5 = v4;
    SSMinFileTopHitScore_sMinFileTopHitScore = v5;
  }

  return *&v5;
}

void __SSMinFileTopHitScore_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPBullseyeMinFileTopHitScore"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
  }

  else
  {
    v2 = -1.0;
  }

  SSMinFileTopHitScore_sMinFileTopHitScore = LODWORD(v2);
}

float SSMinRemindersTopHitScore()
{
  v0 = [SSRankingManager getTopHitsThresholdsForBundleId:?];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 firstObject];
    [v2 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = -1.79769313e308;
  }

  if (SSMinRemindersTopHitScore_onceToken != -1)
  {
    SSMinRemindersTopHitScore_cold_1();
  }

  if (v4 == -1.79769313e308)
  {
    v5 = SSMinRemindersTopHitScore_sMinRemindersTopHitScore;
  }

  else
  {
    *&v5 = v4;
    SSMinRemindersTopHitScore_sMinRemindersTopHitScore = v5;
  }

  return *&v5;
}

void __SSMinRemindersTopHitScore_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPBullseyeMinRemindersTopHitScore"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
  }

  else
  {
    v2 = -1085485875;
  }

  SSMinRemindersTopHitScore_sMinRemindersTopHitScore = v2;
}

float SSMinNotesTopHitScore()
{
  v0 = [SSRankingManager getTopHitsThresholdsForBundleId:?];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 firstObject];
    [v2 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = -1.79769313e308;
  }

  if (SSMinNotesTopHitScore_onceToken != -1)
  {
    SSMinNotesTopHitScore_cold_1();
  }

  if (v4 == -1.79769313e308)
  {
    v5 = SSMinNotesTopHitScore_sMinNotesTopHitScore;
  }

  else
  {
    *&v5 = v4;
    SSMinNotesTopHitScore_sMinNotesTopHitScore = v5;
  }

  return *&v5;
}

void __SSMinNotesTopHitScore_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPBullseyeMinNotesTopHitScore"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
  }

  else
  {
    v2 = -1.0;
  }

  SSMinNotesTopHitScore_sMinNotesTopHitScore = LODWORD(v2);
}

float SSMinContactsTopHitScore()
{
  v0 = [SSRankingManager getTopHitsThresholdsForBundleId:?];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 firstObject];
    [v2 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = -1.79769313e308;
  }

  if (SSMinContactsTopHitScore_onceToken != -1)
  {
    SSMinContactsTopHitScore_cold_1();
  }

  if (v4 == -1.79769313e308)
  {
    v5 = SSMinContactsTopHitScore_sMinContactsTopHitScore;
  }

  else
  {
    *&v5 = v4;
    SSMinContactsTopHitScore_sMinContactsTopHitScore = v5;
  }

  return *&v5;
}

void __SSMinContactsTopHitScore_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPBullseyeMinContactsTopHitScore"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
  }

  else
  {
    v2 = -1102263091;
  }

  SSMinContactsTopHitScore_sMinContactsTopHitScore = v2;
}

float SSMinSMSTopHitScore()
{
  v0 = [SSRankingManager getTopHitsThresholdsForBundleId:?];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 firstObject];
    [v2 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = -1.79769313e308;
  }

  if (SSMinSMSTopHitScore_onceToken != -1)
  {
    SSMinSMSTopHitScore_cold_1();
  }

  if (v4 == -1.79769313e308)
  {
    v5 = SSMinSMSTopHitScore_sMinSMSTopHitScore;
  }

  else
  {
    *&v5 = v4;
    SSMinSMSTopHitScore_sMinSMSTopHitScore = v5;
  }

  return *&v5;
}

void __SSMinSMSTopHitScore_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = [v0 objectForKey:@"SPBullseyeMinSMSTopHitScore"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
  }

  else
  {
    v2 = -1071225242;
  }

  SSMinSMSTopHitScore_sMinSMSTopHitScore = v2;
}

BOOL SSDemoteNonExactMatchBundle()
{
  v0 = +[SSRankingManager getDemoteNonExactMatchBundle];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 firstObject];
    [v2 floatValue];
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = *&SSDemoteNonExactMatchBundle_sDemoteNonExactMatchBundle;
  if (v4 != *&SSDemoteNonExactMatchBundle_sDemoteNonExactMatchBundle)
  {
    SSDemoteNonExactMatchBundle_sDemoteNonExactMatchBundle = LODWORD(v4);
    v5 = v4;
  }

  v6 = v5 == 1.0;

  return v6;
}

void SSInitNSUserDefaultsForTesting(uint64_t result, uint64_t a2)
{
  if (SSInitNSUserDefaultsForTesting_onceToken != -1)
  {
    SSInitNSUserDefaultsForTesting_cold_1();
  }
}

uint64_t __SSInitNSUserDefaultsForTesting_block_invoke()
{
  testingDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlight.defaults.testing"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SSDefaultsMatchFilenameAsSuffix_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 hasSuffix:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1DA004118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id whiteSpaceCharacterSet(uint64_t a1)
{
  if (whiteSpaceCharacterSet_onceToken != -1)
  {
    whiteSpaceCharacterSet_cold_1();
  }

  v2 = whiteSpaceCharacterSet_sTrimSet;

  return v2;
}

uint64_t __whiteSpaceCharacterSet_block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v1 = whiteSpaceCharacterSet_sTrimSet;
  whiteSpaceCharacterSet_sTrimSet = v0;

  v2 = whiteSpaceCharacterSet_sTrimSet;

  return [v2 addCharactersInRange:{65532, 0xFFFFLL}];
}

id reorderRanges(void *a1)
{
  v1 = MEMORY[0x1E695DF70];
  v2 = [a1 sortedArrayUsingComparator:&__block_literal_global_4];
  v3 = [v1 arrayWithArray:v2];

  return v3;
}

uint64_t __reorderRanges_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rangeValue];
  if (v6 > [v5 rangeValue])
  {
    goto LABEL_2;
  }

  v8 = [v4 rangeValue];
  if (v8 < [v5 rangeValue])
  {
    v7 = -1;
    goto LABEL_9;
  }

  [v4 rangeValue];
  v10 = v9;
  [v5 rangeValue];
  if (v10 < v11)
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    [v4 rangeValue];
    v13 = v12;
    [v5 rangeValue];
    if (v13 <= v14)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

LABEL_9:

  return v7;
}

void mergeRanges(void *a1)
{
  v7 = a1;
  v1 = [MEMORY[0x1E696AD50] indexSet];
  if (objc_msgSend_count(v7) >= 2)
  {
    v2 = 1;
    do
    {
      v3 = [v7 objectAtIndexedSubscript:v2 - 1];
      v4 = [v3 rangeValue];

      v5 = [v7 objectAtIndexedSubscript:v2];
      v6 = [v5 rangeValue];

      if (v4 == v6)
      {
        [v1 addIndex:v2];
      }

      ++v2;
    }

    while (v2 < objc_msgSend_count(v7));
  }

  if (objc_msgSend_count(v1))
  {
    [v7 removeObjectsAtIndexes:v1];
  }
}

id getMatchedRanges(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  if ([v3 length])
  {
    v5 = [v4 queryString];
    v6 = [v5 length] == 0;

    if (!v6)
    {
      v7 = SSGeneralLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 queryTerms];
        v9 = [v4 queryString];
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "queryID")}];
        *buf = 138478595;
        v29 = v3;
        v30 = 2113;
        v31 = v8;
        v32 = 2113;
        v33 = v9;
        v34 = 2113;
        v35 = v10;
        _os_log_impl(&dword_1D9F69000, v7, OS_LOG_TYPE_DEFAULT, "getting matched ranges for string: %{private}@ queryTerms: %{private}@ queryString: %{private}@ queryID: %{private}@", buf, 0x2Au);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __getMatchedRanges_block_invoke;
      v21[3] = &unk_1E8596960;
      v21[4] = &v22;
      [v4 evaluateAttribute:v3 ignoreSubtokens:1 skipTranscriptions:1 withHandler:v21];
      if (!objc_msgSend_count(v23[5]))
      {
        v11 = [v4 queryString];
        v12 = [v3 localizedStandardRangeOfString:v11];
        v14 = v13;

        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v23[5];
          v16 = [MEMORY[0x1E696B098] valueWithRange:{v12, v14}];
          [v15 addObject:v16];
        }
      }

      v17 = reorderRanges(v23[5]);
      v18 = v23[5];
      v23[5] = v17;

      mergeRanges(v23[5]);
    }
  }

  v19 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v19;
}

void sub_1DA006AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getMatchedRanges_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [MEMORY[0x1E696B098] valueWithRange:?];
  [v1 addObject:v2];
}

id getFormattedTextsWithHeadTruncation(void *a1, void *a2, int a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1;
  v42 = objc_opt_new();
  v7 = [v6 stringByReplacingOccurrencesOfString:@"[\t\n]" withString:@" " options:1024 range:{0, objc_msgSend(v6, "length")}];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v8)
  {
    v40 = 0;
    v9 = 0;
    v41 = *v51;
    v38 = a3 ^ 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v50 + 1) + 8 * i) rangeValue];
        v13 = v12;
        v14 = [v7 length];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v11 - v9;
          v16 = v11 == v9 || v11 > v14;
          if (!v16 && v15 <= v14)
          {
            if (((v38 | v40) & 1) == 0 && v15 >= 0xB)
            {
              if ([v7 length] < 0x15)
              {
                v40 = 0;
              }

              else
              {
                v44 = 0;
                v45 = &v44;
                v46 = 0x3010000000;
                v47 = "";
                v48 = 0;
                v49 = 0;
                v43[0] = MEMORY[0x1E69E9820];
                v43[1] = 3221225472;
                v43[2] = __getFormattedTextsWithHeadTruncation_block_invoke;
                v43[3] = &unk_1E8596088;
                v43[4] = &v44;
                [v7 enumerateSubstringsInRange:v9 options:v11 - v9 usingBlock:{1283, v43}];
                v9 = v45[4];
                v15 = v45[5];
                v18 = [MEMORY[0x1E69CA0F0] textWithString:@"…"];
                [v42 addObject:v18];

                _Block_object_dispose(&v44, 8);
                v40 = 1;
              }
            }

            v19 = MEMORY[0x1E69CA0F0];
            v20 = [v7 substringWithRange:{v9, v15}];
            v21 = [v19 textWithString:v20];

            [v42 addObject:v21];
          }
        }

        v22 = [v7 length];
        v9 = v11 + v13;
        if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0 && v13 <= v22 && v9 <= v22)
        {
          v26 = MEMORY[0x1E69CA0F0];
          v27 = [v7 substringWithRange:{v11, v13}];
          v28 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v29 = [v27 stringByTrimmingCharactersInSet:v28];
          v30 = [v26 textWithString:v29];

          [v30 setIsEmphasized:1];
          [v42 addObject:v30];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v31 = [v7 length];
  if (v9)
  {
    v32 = v31;
    v33 = [v7 length];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL && v32 != v9 && v32 - v9 <= v33 && v32 <= v33)
    {
      v34 = MEMORY[0x1E69CA0F0];
      v35 = [v7 substringWithRange:v9];
      v36 = [v34 textWithString:v35];

      [v42 addObject:v36];
    }
  }

  return v42;
}

void sub_1DA006FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void removeMatchedRangesFromStringInTitle(void *a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v30 = v10;
    if (removeMatchedRangesFromStringInTitle_onceToken != -1)
    {
      removeMatchedRangesFromStringInTitle_cold_1();
    }

    v31 = v7;
    v32 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = [v15 rangeValue];
          v18 = v17;
          v19 = [v8 length];
          if (v16 != 0x7FFFFFFFFFFFFFFFLL && v18 != 0 && v18 <= v19 && v16 + v18 <= v19)
          {
            v23 = [v15 rangeValue];
            v25 = [v8 substringWithRange:{v23, v24}];
            if ([v25 rangeOfCharacterFromSet:removeMatchedRangesFromStringInTitle_symbolsAndPunctuations] != 0x7FFFFFFFFFFFFFFFLL)
            {

              v29 = v32;
              goto LABEL_27;
            }

            v26 = whiteSpaceCharacterSet(0x7FFFFFFFFFFFFFFFLL);
            v27 = [v25 stringByTrimmingCharactersInSet:v26];
            v28 = [v9 localizedCaseInsensitiveContainsString:v27];

            if (v28)
            {
              [v32 addObject:v15];
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v29 = v32;
    [obj removeObjectsInArray:v32];
LABEL_27:

    v10 = v30;
    v7 = v31;
  }
}

void __removeMatchedRangesFromStringInTitle_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = removeMatchedRangesFromStringInTitle_symbolsAndPunctuations;
  removeMatchedRangesFromStringInTitle_symbolsAndPunctuations = v1;

  v3 = removeMatchedRangesFromStringInTitle_symbolsAndPunctuations;
  v4 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v3 formUnionWithCharacterSet:v4];
}

id formattedTextsForStringWithMatchesFromEvaluatorWithHeadTruncaction(void *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1;
  v10 = [v8 containsString:v9];
  v11 = [v9 precomposedStringWithCanonicalMapping];

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = getMatchedRanges(v11, v7);
  }

  removeMatchedRangesFromStringInTitle(v12, v11, v8, v7);
  v13 = getFormattedTextsWithHeadTruncation(v11, v12, a4);

  return v13;
}

id getHighlightedRichText(void *a1, void *a2, void *a3, int a4)
{
  v4 = formattedTextsForStringWithMatchesFromEvaluatorWithHeadTruncaction(a1, a2, a3, a4);
  if (objc_msgSend_count(v4))
  {
    v5 = objc_opt_new();
    [v5 setFormattedTextPieces:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __getFormattedTextsWithHeadTruncation_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *(*(*(result + 32) + 8) + 40) += a6;
  *(*(*(result + 32) + 8) + 32) = a5;
  if (*(*(*(result + 32) + 8) + 40) >= 0xAuLL)
  {
    *a7 = 1;
  }

  return result;
}

void sub_1DA0081D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA008340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BiomeLibraryInternalLibraryCore(uint64_t a1)
{
  if (!BiomeLibraryInternalLibraryCore_frameworkLibrary)
  {
    BiomeLibraryInternalLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return BiomeLibraryInternalLibraryCore_frameworkLibrary;
}

uint64_t __BiomeLibraryInternalLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeLibraryInternalLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBiomeLibraryInternalSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = BiomeLibraryInternalLibraryCore(&v5);
  if (!v2)
  {
    __getBiomeLibraryInternalSymbolLoc_block_invoke_cold_1(&v5);
  }

  v3 = v2;
  if (v5)
  {
    free(v5);
  }

  result = dlsym(v3, "BiomeLibraryInternal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibraryInternalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMISearchToolTranscriptClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __BiomeStreamsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8596998;
    v5 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    __getBMISearchToolTranscriptClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BMISearchToolTranscript");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMISearchToolTranscriptClass_block_invoke_cold_1();
  }

  getBMISearchToolTranscriptClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  return result;
}

double getSpecialThreshold(void *a1, unint64_t a2, unint64_t a3, int a4, double a5)
{
  v9 = a1;
  v10 = [SSRankingManager getTopHitsThresholdsForBundleId:v9 queryLength:a2 queryTermCount:a3 getFallback:0];
  if (objc_msgSend_count(v10) <= a4)
  {
    v11 = [SSRankingManager getTopHitsThresholdsForBundleId:v9 queryLength:a2 queryTermCount:a3 getFallback:1];
    if (objc_msgSend_count(v11) > a4)
    {
      v13 = [v11 objectAtIndexedSubscript:a4];
      [v13 doubleValue];
      a5 = v14;
    }
  }

  else
  {
    v11 = [v10 objectAtIndexedSubscript:a4];
    [v11 doubleValue];
    a5 = v12;
  }

  return a5;
}

void OUTLINED_FUNCTION_0_7(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  LODWORD(STACK[0x274]) = a1;
  LOWORD(STACK[0x278]) = 1024;
  LODWORD(STACK[0x27A]) = v62;
  LOWORD(STACK[0x27E]) = 1024;
  LODWORD(STACK[0x280]) = STACK[0x258];
  LOWORD(STACK[0x284]) = 1024;
  LODWORD(STACK[0x286]) = a62;
  LOWORD(STACK[0x28A]) = 1024;
  LODWORD(STACK[0x28C]) = a52;
  LOWORD(STACK[0x290]) = 1024;
  LODWORD(STACK[0x292]) = a57;
  LOWORD(STACK[0x296]) = 1024;
  LODWORD(STACK[0x298]) = STACK[0x204];
  LOWORD(STACK[0x29C]) = 2112;
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, void *a2, uint64_t a3)
{

  return SSSetTopHitWithReasonType(a1, a2, a3, 1, 1);
}

void OUTLINED_FUNCTION_3_2()
{
  LOWORD(STACK[0x2BA]) = 2048;
  STACK[0x2BC] = v0;
  LOWORD(STACK[0x2C4]) = 2048;
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  v2 = LODWORD(STACK[0x204]);

  return [v0 setPreferTopPlatter:v2];
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, void *a2, uint64_t a3)
{

  return SSSetTopHitWithReasonType(a1, a2, a3, 1, 0);
}

void __loadOptionalSearchTermsFromSRA_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] set];
  v1 = sSetOfOneOnOneMeetingKeywords;
  sSetOfOneOnOneMeetingKeywords = v0;

  v2 = [MEMORY[0x1E695DFD8] set];
  v3 = sSetOfOptionalCalendarKeywords;
  sSetOfOptionalCalendarKeywords = v2;

  v4 = SSDefaultsGetAssetPathForQueryParser(@"optional.mdplist");
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v4 options:8 error:0];
    v6 = v5;
    if (v5)
    {
      v6 = v5;
      [v6 bytes];
      [v6 length];
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __loadOptionalSearchTermsFromSRA_block_invoke_126;
      v37 = &__block_descriptor_40_e5_v8__0l;
      v38 = v6;
      v7 = _MDPlistContainerCreateWithBytesAndDeallocator();
      if (v7)
      {
        v8 = v7;
        v32 = 0uLL;
        v33 = 0;
        _MDPlistGetRootPlistObjectFromPlist();
        v24 = SSGeneralLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __loadOptionalSearchTermsFromSRA_block_invoke_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
        }

        CFRelease(v8);
      }
    }

    else
    {
      v16 = SSGeneralLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __loadOptionalSearchTermsFromSRA_block_invoke_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  else
  {
    v6 = SSGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __loadOptionalSearchTermsFromSRA_block_invoke_cold_3(v6, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

id createKeywordDictionaryFromMDPlistObject(__int128 *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DFA8] set];
  if ([v3 length] && *(a1 + 1))
  {
    [v3 UTF8String];
    _MDPlistDictionaryGetPlistObjectForKey();
  }

  v5 = [v4 copy];

  return v5;
}

void __createKeywordDictionaryFromMDPlistObject_block_invoke(uint64_t a1, __int128 *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{_MDPlistStringGetValue(), *a2, *(a2 + 1), *(a2 + 2), 0}];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t json_utf8_string(uint64_t result, _BYTE *a2, unint64_t a3)
{
  if (result)
  {
    v3 = *(result + 8);
    if (*result == 5)
    {
      v4 = *(result + 16);
      v5 = &a2[a3];
      v6 = a2;
      if (v4 >= 1)
      {
        v7 = &v3[v4];
        v8 = a2;
        do
        {
          v9 = *v3;
          if ((json_char_table[v9] & 0x40) != 0)
          {
            v14 = v3 + 2;
            v15 = v3[1];
            v16 = json_char_table[v15];
            if ((v16 & 0x10000) != 0)
            {
              if ((v16 & 0x40) != 0)
              {
                do
                {
                  if (v14 >= v7)
                  {
                    break;
                  }

                  v19 = *v14++;
                }

                while ((json_char_table[v19] & 0x40) != 0);
              }

              if (v14 > v7 - 4)
              {
                v11 = v14;
LABEL_70:
                v6 = v8;
                goto LABEL_75;
              }

              v20 = 0;
              v21 = 0;
              do
              {
                v22 = v14[v20];
                v23 = v22;
                v24 = json_char_table[v22];
                ++v20;
                v25 = (v23 - 87) | (16 * v21);
                if ((v24 & 0x10) == 0)
                {
                  v25 = v21;
                }

                if ((v24 & 8) != 0)
                {
                  v25 = (v23 - 55) | (16 * v21);
                }

                v21 = (v23 - 48) | (16 * v21);
                if ((v24 & 2) == 0)
                {
                  v21 = v25;
                }
              }

              while (v20 != 4);
              v26 = v21;
              if ((v7 - v14) < 5)
              {
                v11 = v14;
              }

              else
              {
                v11 = v14 + 4;
                if ((v14 + 5) < v7 && (v21 & 0xFC00) == 0xD800 && (json_char_table[*v11] & 0x40) != 0 && (v7 - v11) >= 3 && (json_char_table[v14[5]] & 0x10000) != 0)
                {
                  v27 = 0;
                  v28 = 0;
                  v11 = v14 + 6;
                  do
                  {
                    v29 = v11[v27];
                    v30 = v29;
                    v31 = json_char_table[v29];
                    ++v27;
                    v32 = (v30 - 87) | (16 * v28);
                    if ((v31 & 0x10) == 0)
                    {
                      v32 = v28;
                    }

                    if ((v31 & 8) != 0)
                    {
                      v32 = (v30 - 55) | (16 * v28);
                    }

                    v28 = (v30 - 48) | (16 * v28);
                    if ((v31 & 2) == 0)
                    {
                      v28 = v32;
                    }
                  }

                  while (v27 != 4);
                  v33 = v28 >> 10;
                  v34 = (v28 + 9216) | ((v26 << 10) - 56623104);
                  v35 = v14 + 12;
                  if ((v7 - v11) <= 6)
                  {
                    v35 = v11;
                  }

                  if (v33 == 55)
                  {
                    v11 = v35;
                    v26 = v34;
                  }
                }
              }

              if (v26 >= 128)
              {
                if (v26 >= 0x800)
                {
                  v37 = 4 * (v26 < 0x110000);
                  if (v26 < 0x10000)
                  {
                    v37 = 3;
                  }

                  v6 = &v8[v37];
                  if (&v8[v37] < v5)
                  {
                    if (!HIWORD(v26))
                    {
                      v8[2] = v26 & 0x3F | 0x80;
                      v8[1] = (v26 >> 6) & 0x3F | 0x80;
                      v26 = (v26 >> 12) | 0xFFFFFFE0;
                      v36 = 3;
                      goto LABEL_73;
                    }

                    if (HIWORD(v26) > 0x10u)
                    {
                      v36 = 0;
                    }

                    else
                    {
                      v8[3] = v26 & 0x3F | 0x80;
                      v8[2] = (v26 >> 6) & 0x3F | 0x80;
                      v8[1] = (v26 >> 12) & 0x3F | 0x80;
                      v26 = (v26 >> 18) | 0xFFFFFFF0;
                      v36 = 4;
LABEL_73:
                      *v8 = v26;
                    }

                    v6 = &v8[v36];
                    goto LABEL_75;
                  }
                }

                else
                {
                  v6 = v8 + 2;
                  if (v8 + 2 < v5)
                  {
                    v8[1] = v26 & 0x3F | 0x80;
                    v26 = (v26 >> 6) | 0xFFFFFFC0;
                    v36 = 2;
                    goto LABEL_73;
                  }
                }
              }

              else
              {
                v6 = v8 + 1;
                if (v8 + 1 < v5)
                {
                  v36 = 1;
                  goto LABEL_73;
                }
              }

              if (v8 + 1 != v5)
              {
                goto LABEL_70;
              }

LABEL_12:
              *v8 = 0;
              goto LABEL_75;
            }

            if ((v16 & 0x1E0) != 0)
            {
              HIDWORD(v18) = v15 - 98;
              LODWORD(v18) = v15 - 98;
              v17 = v18 >> 1;
              if (v17 <= 9 && ((0x345u >> v17) & 1) != 0)
              {
                LOBYTE(v15) = byte_1DA0D5880[v17];
              }
            }

            v6 = v8 + 1;
            if (v8 + 1 >= v5)
            {
              if (v8 + 1 == v5)
              {
                *v8 = 0;
                v11 = v14;
                v6 = v5;
                goto LABEL_75;
              }
            }

            else
            {
              *v8 = v15;
            }

            v11 = v14;
          }

          else
          {
            v10 = utf8_byte_length_noerror_utf8_len_table[v9 >> 4];
            v6 = &v8[v10];
            v11 = &v3[v10];
            if (&v8[v10] < v5 && v11 <= v7)
            {
              do
              {
                v13 = *v3++;
                *v8++ = v13;
                --v10;
              }

              while (v10);
              goto LABEL_75;
            }

            if (v8 + 1 == v5)
            {
              goto LABEL_12;
            }
          }

LABEL_75:
          v8 = v6;
          v3 = v11;
        }

        while (v11 < v7);
      }

      if (v6 < v5)
      {
        *v6 = 0;
      }

      v40 = v6 - a2;
      return v40 + 1;
    }

    if (v3)
    {
      v38 = *(result + 16);
      if (v38)
      {
        if (v38 >= a3)
        {
          if (!a3)
          {
LABEL_97:
            v40 = *(result + 16);
            return v40 + 1;
          }

          v38 = a3 - 1;
          if (a3 != 1)
          {
            v41 = a2;
            v42 = a3 - 1;
            do
            {
              v43 = *v3++;
              *v41++ = v43;
              --v42;
            }

            while (v42);
          }
        }

        else
        {
          for (i = 0; i != v38; ++i)
          {
            a2[i] = v3[i];
          }
        }

        a2[v38] = 0;
        goto LABEL_97;
      }
    }

    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else if (!a2)
  {
    return result;
  }

  if (a3)
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t json_parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v8;
  v67 = *MEMORY[0x1E69E9840];
  v62 = v8;
  v63 = 0;
  v64 = 0;
  v65 = v8;
  if ((v9 & 0x8000000000000000) != 0)
  {
    if (!v8)
    {
      v17 = 0;
      v64 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v58 = 0;
LABEL_236:
      v19 = v16;
LABEL_237:
      if (v17 == v19)
      {
        goto LABEL_250;
      }

      while (1)
      {
        v55 = v19 >= v17 ? 0 : *v19;
        if ((json_char_table[v55] & 1) == 0)
        {
          break;
        }

        if (v17 - v19 >= 1)
        {
          v62 = ++v19;
        }
      }

      if (v15)
      {
LABEL_250:
        v17 = v19;
      }

      else if (v17 != v19)
      {
        goto LABEL_246;
      }

      if (v13)
      {
        *v13 = v17 - v16;
      }

      return 1;
    }

    v9 = strlen(v8);
  }

  v17 = &v16[v9];
  v63 = v9;
  v64 = &v16[v9];
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  if (!v9)
  {
    goto LABEL_236;
  }

  v57 = v13;
  bzero(v66, 0x1000uLL);
  LODWORD(v18) = 0;
  while (1)
  {
    v19 = v62;
    v20 = v64;
    if (v62 >= v64)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v62;
    }

    v22 = json_char_table[v21];
    if ((v22 & 0x20) != 0)
    {
      if (!jscon_scan_string(&v62, &v59))
      {
        goto LABEL_248;
      }

      if (v18 >= 1023)
      {
        v19 = v62;
        goto LABEL_246;
      }

      goto LABEL_16;
    }

    if ((v22 & 0x202) != 0)
    {
      break;
    }

    if (v21 == 91)
    {
      if (v64 - v62 >= 1)
      {
        v19 = ++v62;
      }

      if (v18 >= 1023)
      {
        goto LABEL_246;
      }

      v18 = v18 + 1;
      v66[v18] = 2;
      (*(v11 + 16))(v11, 4, 0, &v58);
      if (v19 >= v20)
      {
        v49 = 0;
      }

      else
      {
        v49 = *v19;
      }

      if (json_char_table[v49])
      {
        v50 = v62;
        while (1)
        {
          if (v19 >= v20)
          {
            if ((json_char_table[0] & 1) == 0)
            {
              v62 = v50;
              goto LABEL_151;
            }
          }

          else
          {
            v49 = *v19;
            if ((json_char_table[v49] & 1) == 0)
            {
              v62 = v50;
              break;
            }
          }

          if (v20 - v19 >= 1)
          {
            v50 = ++v19;
          }
        }
      }

      if (v49 != 93)
      {
        goto LABEL_151;
      }

      if (v20 - v19 >= 1)
      {
        v62 = v19 + 1;
      }

      v66[v18] = 1;
      v25 = *(v11 + 16);
      v27 = v11;
      v28 = 5;
      goto LABEL_189;
    }

    if (v21 != 123)
    {
      if ((v22 & 0xE000) == 0)
      {
        if ((v22 & 1) == 0)
        {
          goto LABEL_246;
        }

        v52 = v62;
        while (1)
        {
          v53 = v19 >= v64 ? 0 : *v19;
          if ((json_char_table[v53] & 1) == 0)
          {
            break;
          }

          if (v64 - v19 >= 1)
          {
            v52 = ++v19;
          }
        }

        v62 = v52;
        goto LABEL_151;
      }

      v60 = v62;
      if (v64 - v62 < 5)
      {
        if (v64 - v62 != 4)
        {
          goto LABEL_246;
        }

LABEL_200:
        if (*v62 == 1702195828)
        {
          LODWORD(v59) = 2;
        }

        else
        {
          if (*v62 != 1819047278)
          {
            goto LABEL_246;
          }

          LODWORD(v59) = 1;
        }

        v61 = 4;
        v19 = v62 + 4;
      }

      else
      {
        if (*v62 != 1936482662 || v62[4] != 101)
        {
          goto LABEL_200;
        }

        LODWORD(v59) = 3;
        v61 = 5;
        v19 = v62 + 5;
      }

      v62 = v19;
      if (v18 >= 1023)
      {
        goto LABEL_246;
      }

LABEL_16:
      v18 = v18 + 1;
      v66[v18] = 1;
      v25 = *(v11 + 16);
      v26 = &v59;
      v27 = v11;
      v28 = 6;
LABEL_17:
      v25(v27, v28, v26, &v58);
      goto LABEL_78;
    }

    if (v64 - v62 >= 1)
    {
      v19 = ++v62;
    }

    if (v18 >= 1023)
    {
      goto LABEL_246;
    }

    v18 = v18 + 1;
    v66[v18] = 3;
    (*(v11 + 16))(v11, 1, 0, &v58);
    if (v19 >= v20)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v19;
    }

    v30 = json_char_table[v29];
    if ((v30 & 1) == 0)
    {
      goto LABEL_179;
    }

    v31 = v62;
    while (v19 < v20)
    {
      v29 = *v19;
      v30 = json_char_table[v29];
      if ((v30 & 1) == 0)
      {
        v62 = v31;
LABEL_179:
        if ((v30 & 0x20) != 0)
        {
          goto LABEL_218;
        }

        if (v29 != 125)
        {
          goto LABEL_246;
        }

        if (v20 - v19 >= 1)
        {
          v62 = v19 + 1;
        }

        v66[v18] = 1;
        v25 = *(v11 + 16);
        v27 = v11;
        v28 = 3;
LABEL_189:
        v26 = 0;
        goto LABEL_17;
      }

LABEL_29:
      if (v20 - v19 >= 1)
      {
        v31 = ++v19;
      }
    }

    if (json_char_table[0])
    {
      goto LABEL_29;
    }

    v62 = v31;
    if ((json_char_table[0] & 0x20) == 0)
    {
      goto LABEL_246;
    }

LABEL_218:
    if (!jscon_scan_string(&v62, &v59))
    {
      goto LABEL_248;
    }

    v19 = v62;
    if (v62 >= v64)
    {
      v54 = 0;
    }

    else
    {
      v54 = *v62;
    }

    if (json_char_table[v54])
    {
      v46 = v62;
      while (1)
      {
        if (v19 >= v64)
        {
          if ((json_char_table[0] & 1) == 0)
          {
LABEL_258:
            v62 = v46;
            goto LABEL_246;
          }
        }

        else
        {
          v54 = *v19;
          if ((json_char_table[v54] & 1) == 0)
          {
            v62 = v46;
            break;
          }
        }

        if (v64 - v19 >= 1)
        {
          v46 = ++v19;
        }
      }
    }

    if (v54 != 58)
    {
      goto LABEL_246;
    }

    if (v64 - v19 >= 1)
    {
      v62 = v19 + 1;
    }

LABEL_150:
    v66[v18] = 4;
    (*(v11 + 16))(v11, 2, &v59, &v58);
LABEL_151:
    if (v58)
    {
      return 0;
    }
  }

  v60 = v62;
  LODWORD(v59) = 6;
  if (v62 >= v64)
  {
    v23 = 0;
  }

  else
  {
    v23 = *v62;
  }

  if ((json_char_table[v23] & 0x200) != 0)
  {
    v24 = v62;
    if (v64 - v62 >= 1)
    {
      v24 = ++v62;
    }

    if (v24 >= v64)
    {
      v23 = 0;
    }

    else
    {
      v23 = *v24;
    }
  }

  else
  {
    v24 = v62;
  }

  if ((json_char_table[v23] & 4) != 0)
  {
    if (v64 - v24 >= 1)
    {
      v62 = ++v24;
    }

    if (v24 >= v64)
    {
      v34 = 0;
    }

    else
    {
      v34 = *v24;
    }

    v35 = json_char_table[v34];
    if ((v35 & 0x800) != 0)
    {
      if (v64 - v24 <= 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if ((v35 & 0x1000) == 0)
    {
      if ((v35 & 2) == 0)
      {
        goto LABEL_74;
      }

      if (v64 - v24 > 0)
      {
        ++v24;
      }

LABEL_256:
      LODWORD(v59) = 0;
      v19 = v24;
      goto LABEL_247;
    }

    if (v64 - v24 <= 0)
    {
      goto LABEL_129;
    }

LABEL_128:
    v62 = ++v24;
    goto LABEL_129;
  }

  LOWORD(v32) = json_char_table[0];
  while (2)
  {
    v33 = v64 - v24;
LABEL_40:
    if (v24 >= v64)
    {
      if ((json_char_table[0] & 2) == 0)
      {
        goto LABEL_55;
      }

LABEL_42:
      if (v33 >= 1)
      {
        v62 = ++v24;
        continue;
      }

      goto LABEL_40;
    }

    break;
  }

  if ((json_char_table[*v24] & 2) != 0)
  {
    goto LABEL_42;
  }

  v32 = json_char_table[*v24];
LABEL_55:
  if ((v32 & 0x1000) != 0)
  {
    if (v33 <= 0)
    {
LABEL_129:
      LODWORD(v59) = 7;
      if (v24 >= v64)
      {
        v47 = 0;
      }

      else
      {
        v47 = *v24;
      }

      if (v64 - v24 >= 1 && (json_char_table[v47] & 0x600) != 0)
      {
LABEL_133:
        v62 = ++v24;
      }

      while (1)
      {
        v48 = v24 >= v64 ? 0 : *v24;
        if ((json_char_table[v48] & 2) == 0)
        {
          goto LABEL_74;
        }

        if (v64 - v24 >= 1)
        {
          goto LABEL_133;
        }
      }
    }

    goto LABEL_128;
  }

  if ((v32 & 0x800) == 0)
  {
    goto LABEL_74;
  }

  if (v33 >= 1)
  {
LABEL_60:
    v62 = ++v24;
  }

LABEL_61:
  LODWORD(v59) = 7;
  if (v24 >= v64)
  {
    v36 = 0;
  }

  else
  {
    v62 = v24 + 1;
    v36 = *v24++;
  }

  if ((json_char_table[v36] & 2) == 0)
  {
    goto LABEL_256;
  }

  LOWORD(v37) = json_char_table[0];
  while (2)
  {
    v38 = v64 - v24;
LABEL_66:
    if (v24 >= v64)
    {
      if ((json_char_table[0] & 2) == 0)
      {
        goto LABEL_73;
      }

LABEL_68:
      if (v38 >= 1)
      {
        v62 = ++v24;
        continue;
      }

      goto LABEL_66;
    }

    break;
  }

  if ((json_char_table[*v24] & 2) != 0)
  {
    goto LABEL_68;
  }

  v37 = json_char_table[*v24];
LABEL_73:
  if ((v37 & 0x1000) != 0)
  {
    if (v38 < 1)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_74:
  if (v24 > v64)
  {
    v62 = v64;
    v24 = v64;
  }

  v61 = v24 - v19;
  (*(v11 + 16))(v11, 6, &v59, &v58);
  if (v18 >= 1023)
  {
    goto LABEL_256;
  }

  v18 = v18 + 1;
  v66[v18] = 1;
LABEL_78:
  v17 = v64;
  v19 = v62;
  while (2)
  {
    if (v19 >= v17)
    {
      v39 = 0;
    }

    else
    {
      v39 = *v19;
    }

    if (json_char_table[v39])
    {
      while (1)
      {
        v40 = v19 >= v17 ? 0 : *v19;
        if ((json_char_table[v40] & 1) == 0)
        {
          break;
        }

        if (v17 - v19 >= 1)
        {
          v62 = ++v19;
        }
      }

      if (v19 < v17)
      {
        v39 = *v19;
        break;
      }

      v39 = 0;
LABEL_91:
      v41 = v66[v18 - 1];
      if (v41 == 2)
      {
        if (v39 != 93)
        {
          goto LABEL_151;
        }

        if (v17 - v19 >= 1)
        {
          v62 = ++v19;
        }

        v42 = 5;
      }

      else
      {
        if (v41 != 4)
        {
          if (v41)
          {
            goto LABEL_151;
          }

          v13 = v57;
          goto LABEL_237;
        }

        if (v39 != 125)
        {
          goto LABEL_151;
        }

        if (v17 - v19 >= 1)
        {
          v62 = ++v19;
        }

        v42 = 3;
      }

      v66[v18 - 1] = 1;
      (*(v11 + 16))(v11, v42, 0, &v58);
      --v18;
      continue;
    }

    break;
  }

  if (v39 != 44)
  {
    goto LABEL_91;
  }

  v18 = v18 - 1;
  v43 = v66[v18];
  if (v43 == 2)
  {
    if (v17 - v19 >= 1)
    {
      v62 = v19 + 1;
    }

    goto LABEL_151;
  }

  if (v43 == 4)
  {
    if (v17 - v19 >= 1)
    {
      v62 = ++v19;
    }

    v66[v18] = 3;
    if (v19 >= v17)
    {
      v44 = 0;
    }

    else
    {
      v44 = *v19;
    }

    if (json_char_table[v44])
    {
      while (1)
      {
        if (v19 >= v17)
        {
          if ((json_char_table[0] & 1) == 0)
          {
            v44 = 0;
            break;
          }
        }

        else
        {
          v44 = *v19;
          if ((json_char_table[v44] & 1) == 0)
          {
            break;
          }
        }

        if (v17 - v19 >= 1)
        {
          v62 = ++v19;
        }
      }
    }

    if ((json_char_table[v44] & 0x20) != 0)
    {
      if (!jscon_scan_string(&v62, &v59))
      {
        goto LABEL_248;
      }

      v19 = v62;
      if (v62 >= v64)
      {
        v45 = 0;
      }

      else
      {
        v45 = *v62;
      }

      if (json_char_table[v45])
      {
        v46 = v62;
        while (1)
        {
          if (v19 >= v64)
          {
            if ((json_char_table[0] & 1) == 0)
            {
              goto LABEL_258;
            }
          }

          else
          {
            v45 = *v19;
            if ((json_char_table[v45] & 1) == 0)
            {
              v62 = v46;
              break;
            }
          }

          if (v64 - v19 >= 1)
          {
            v46 = ++v19;
          }
        }
      }

      if (v45 == 58)
      {
        if (v64 - v19 >= 1)
        {
          v62 = v19 + 1;
        }

        goto LABEL_150;
      }
    }
  }

LABEL_246:
  LODWORD(v59) = 0;
LABEL_247:
  v60 = v19;
  v61 = 0;
LABEL_248:
  (*(v11 + 16))(v11, 0, &v59, &v58);
  return 0;
}