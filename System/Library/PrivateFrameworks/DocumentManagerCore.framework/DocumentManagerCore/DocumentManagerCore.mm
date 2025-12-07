void StartFINode(uint64_t result, uint64_t a2)
{
  if (StartFINode_onceToken != -1)
  {
    StartFINode_cold_1();
  }
}

void sub_249341F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void DOCInitLogging()
{
  if (DOCInitLogging_once != -1)
  {
    DOCInitLogging_cold_1();
  }
}

uint64_t __DOCInitLogging_block_invoke()
{
  v0 = os_log_create("com.apple.DocumentManager", "DocumentManager");
  v1 = docLogHandle;
  docLogHandle = v0;

  v2 = os_log_create("com.apple.DocumentManager", "UI");
  v3 = docUILogHandle;
  docUILogHandle = v2;

  v4 = os_log_create("com.apple.DocumentManager", "DocumentCreation");
  v5 = docDocumentCreationLogHandle;
  docDocumentCreationLogHandle = v4;

  v6 = os_log_create("com.apple.DocumentManager", "ServicePresentation");
  v7 = docServicePresentationHandle;
  docServicePresentationHandle = v6;

  v8 = os_log_create("com.apple.DocumentManager", "Persona");
  v9 = docPersonaLogHandle;
  docPersonaLogHandle = v8;

  v10 = os_log_create("com.apple.DocumentManager", "SmartFolders");
  v11 = docSmartFolderLogHandle;
  docSmartFolderLogHandle = v10;

  v12 = os_log_create("com.apple.DocumentManager", "Source");
  v13 = docSourceLogHandle;
  docSourceLogHandle = v12;

  v14 = os_log_create("com.apple.DocumentManager", "Picker");
  v15 = docPickerLogHandle;
  docPickerLogHandle = v14;

  v16 = os_log_create("com.apple.DocumentManager", "Rename");
  v17 = docRenameLogHandle;
  docRenameLogHandle = v16;

  v18 = os_log_create("com.apple.DocumentManager", "History");
  v19 = docBrowserHistoryLogHandle;
  docBrowserHistoryLogHandle = v18;

  v20 = os_log_create("com.apple.DocumentManager", "Tests");
  v21 = docTestsLogHandle;
  docTestsLogHandle = v20;

  v22 = os_log_create("com.apple.DocumentManager", "DownloadService");
  v23 = docDownloadServiceLogHandle;
  docDownloadServiceLogHandle = v22;

  v24 = os_log_create("com.apple.DocumentManager", "StateStore");
  v25 = docStateStoreHandle;
  docStateStoreHandle = v24;

  v26 = os_log_create("com.apple.DocumentManager", "Analytics");
  v27 = docAnalyticsLogHandle;
  docAnalyticsLogHandle = v26;

  v28 = os_log_create("com.apple.DocumentManager", "Application");
  v29 = docApplicationLogHandle;
  docApplicationLogHandle = v28;

  v30 = os_log_create("com.apple.DocumentManager", "ProgressUI");
  v31 = docProgressUILogHandle;
  docProgressUILogHandle = v30;

  v32 = os_log_create("com.apple.DocumentManager", "Enumeration");
  v33 = docEnumerationLogHandle;
  docEnumerationLogHandle = v32;

  v34 = os_log_create("com.apple.DocumentManager", "AppIntents");
  v35 = docAppIntentsLogHandle;
  docAppIntentsLogHandle = v34;

  v36 = os_log_create("com.apple.DocumentManager", "FileProviderSyncState");
  v37 = docFileProviderSyncStateLogHandle;
  docFileProviderSyncStateLogHandle = v36;

  v38 = os_log_create("com.apple.DocumentManager", "Sidebar");
  v39 = docSidebarLogHandle;
  docSidebarLogHandle = v38;

  v40 = os_log_create("com.apple.DocumentManager", "Preview");
  v41 = docPreviewLogHandle;
  docPreviewLogHandle = v40;

  return MEMORY[0x2821F96F8](v40, v41);
}

id composedID(void *a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v8[0] = v3;
    v8[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    v6 = [v5 componentsJoinedByString:@"."];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

void _FFInitLog(void *a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = @"NO";
  if (a2)
  {
    v4 = @"YES";
  }

  v5 = v4;
  v6 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v6 = docLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_249340000, v6, OS_LOG_TYPE_DEFAULT, "[Feature Flag] Initializing %{public}@ to value = %{public}@", &v7, 0x16u);
  }
}

void __DOCSelfCanMapLSDatabase_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.coreservices.canmaplsdatabase", 0);
    if (v2)
    {
      v3 = v2;
      TypeID = CFBooleanGetTypeID();
      v5 = TypeID == CFGetTypeID(v3) && CFBooleanGetValue(v3) != 0;
      CFRelease(v1);
    }

    else
    {
      v5 = 0;
      v3 = v1;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  DOCSelfCanMapLSDatabase_canMapLSDatabase = v5;
}

id DOCContentTypesReadableByApplicationWithBundleIdentifier(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.DocumentsApp"])
  {
    v15[0] = *MEMORY[0x277CE1DB8];
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v3 = [v4 bundleIdentifier];
    }

    v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 claimRecords];
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __DOCContentTypesReadableByApplicationWithBundleIdentifier_block_invoke;
      v13[3] = &unk_278F9B928;
      v14 = v8;
      v9 = v8;
      [v7 enumerateObjectsUsingBlock:v13];
      v2 = [MEMORY[0x277CE1CB8] doc_contentTypesForIdentifiers:v9];

      if (![v2 count])
      {
        v10 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v10 = docLogHandle;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          DOCContentTypesReadableByApplicationWithBundleIdentifier_cold_1(v10);
        }
      }
    }

    else
    {
      v11 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v11 = docLogHandle;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        DOCContentTypesReadableByApplicationWithBundleIdentifier_cold_2(v1, v11);
      }

      v2 = MEMORY[0x277CBEBF8];
    }
  }

  return v2;
}

uint64_t DOCProviderDomainIDIsLegacyWebDAV(void *a1)
{
  v1 = a1;
  if (DOCProviderDomainIDIsWebDAV(v1))
  {
    v2 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
    v3 = [v2 bundleVersion];
    v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v5 = [v4 isVersion:v3 greaterThanOrEqualToVersion:@"5.2"];

    v6 = v5 ^ 1u;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t DOCProviderDomainIDIsWebDAV(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (DOCProviderDomainIDIsWebDAV_onceToken != -1)
  {
    DOCProviderDomainIDIsWebDAV_cold_1();
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = DOCProviderDomainIDIsWebDAV_webDAVProviderIdentifiers;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([v1 hasPrefix:{*(*(&v7 + 1) + 8 * i), v7}])
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

void __DOCProviderDomainIDIsWebDAV_block_invoke()
{
  v0 = DOCProviderDomainIDIsWebDAV_webDAVProviderIdentifiers;
  DOCProviderDomainIDIsWebDAV_webDAVProviderIdentifiers = &unk_285C77EF8;
}

id DOCLocalizedDisplayName(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v3)
  {
    v4 = DOCLocalProviderLocalizedDisplayName();
  }

  else
  {
    v5 = [v1 domainDisplayName];

    v4 = [v1 providerDisplayName];
    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [v1 domainDisplayName];
      v8 = [v6 stringWithFormat:@" — %@", v7];
      v9 = [v4 stringByAppendingString:v8];

      v4 = v9;
    }
  }

  return v4;
}

id DOCLocalProviderLocalizedDisplayName()
{
  v0 = MGCopyAnswer();
  if ([v0 isEqualToString:@"iPhone"])
  {
    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My iPhone";
  }

  else if ([v0 isEqualToString:@"iPad"])
  {
    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My iPad";
  }

  else if ([v0 isEqualToString:@"iPod touch"])
  {
    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My iPod";
  }

  else if ([v0 isEqualToString:@"Apple Vision"])
  {
    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My Apple Vision Pro";
  }

  else
  {
    if ([v0 length])
    {
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v2 = [v4 localizedStringForKey:@"On My %@" value:&stru_285C6EEF8 table:0];

      v5 = [MEMORY[0x277CCACA8] stringWithFormat:v2, v0];
      goto LABEL_13;
    }

    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My Device";
  }

  v5 = [v1 localizedStringForKey:v3 value:v3 table:@"Localizable"];
LABEL_13:
  v6 = v5;

  return v6;
}

void DOCRunInMainThread(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    DOCRunInMainThread_cold_1();
  }

  block = v1;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t DOCProviderDomainIDIsRemovable(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"com.apple.SMBClientProvider.FileProvider"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:@"com.apple.filesystems.UserFS.FileProvider"];
  }

  return v2;
}

id containingBundleForBundle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v3 error:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 containingBundleRecord];
      v6 = [v9 bundleIdentifier];

      if (v6)
      {
        [v4 setObject:v6 forKey:v3];
        v6 = v6;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_249346720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DOCTagsFromFPTags(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = DOCTagFromFPTag(*(*(&v10 + 1) + 8 * i));
        [v2 addObject:{v8, v10}];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

DOCTag *DOCTagFromFPTag(void *a1)
{
  v1 = a1;
  v2 = +[DOCTagRegistry sharedInstance];
  v3 = [v1 label];
  v4 = [v2 tagForName:v3];

  if (v4 && [v4 type] == 1 || (objc_msgSend(v1, "color") & 0x80000000) != 0 || objc_msgSend(v1, "color") >= 8)
  {
    v5 = v4;
  }

  else
  {
    v6 = [DOCTag alloc];
    v7 = [v1 label];
    v5 = -[DOCTag initWithDisplayName:labelIndex:type:](v6, "initWithDisplayName:labelIndex:type:", v7, [v1 color], 0);
  }

  return v5;
}

id DOCLocalizedProviderOnlyDisplayName(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v3)
  {
    DOCLocalProviderLocalizedDisplayName();
  }

  else
  {
    [v1 providerDisplayName];
  }
  v4 = ;

  return v4;
}

void *sub_24934775C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_249347780()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493477C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24934780C()
{
  MEMORY[0x24C1F6CE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249347844()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24934787C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493478B4()
{
  MEMORY[0x24C1F6CE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void DOCLogAssertionFailureMessage_Swift(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = [[v7 alloc] initWithFormat:@"DocumentManager assertion on %@:%d %@ failed: %@", v10, a2, v9, v8];

  if (LoadCrashSupportIfNecessary_once != -1)
  {
    DOCLogAssertionFailureMessage_Swift_cold_1();
  }

  v12 = DOCSimulateCrash;
  if (DOCSimulateCrash)
  {
    v13 = getpid();
    v12(v13, 5, v11);
  }

  v14 = docLogHandle;
  if (!docLogHandle)
  {
    DOCLogAssertionFailureMessage_Swift_cold_2(&v15);
    v14 = v15;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    DOCLogAssertionFailureMessage_Swift_cold_3(v11, v14);
  }
}

void DOCLogAssertionFailure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = MEMORY[0x277CCACA8];
  v13 = a5;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DocumentManager assertion on %s:%d %s failed: %@", a2, a4, a1, v14];
  if (LoadCrashSupportIfNecessary_once != -1)
  {
    DOCLogAssertionFailure_cold_1();
  }

  v16 = DOCSimulateCrash;
  if (DOCSimulateCrash)
  {
    v17 = getpid();
    v16(v17, 5, v15);
  }

  v18 = docLogHandle;
  if (!docLogHandle)
  {
    DOCLogAssertionFailureMessage_Swift_cold_2(&v19);
    v18 = v19;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    DOCLogAssertionFailureMessage_Swift_cold_3(v15, v18);
  }
}

void DOCLogBacktrace(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CCACC8] callStackSymbols];
  v9 = [MEMORY[0x277CCAB68] string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(__CFString *)v9 appendFormat:@"%@ %@\n", @"[DocMgrBT] ", *(*(&v15 + 1) + 8 * v14++), v15];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v12);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = @"[DocMgrBT] ";
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_249340000, v5, OS_LOG_TYPE_DEFAULT, "%@ %@: '%@'", buf, 0x20u);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&dword_249340000, v5, OS_LOG_TYPE_DEFAULT, "\n%@", buf, 0xCu);
  }
}

void __LoadCrashSupportIfNecessary_block_invoke()
{
  v0 = dlopen([@"/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport" fileSystemRepresentation], 1);
  LoadCrashSupportIfNecessary___CrashReportHandle = v0;
  if (v0)
  {
    DOCSimulateCrash = dlsym(v0, "SimulateCrash");
  }

  else
  {
    v1 = docLogHandle;
    if (!docLogHandle)
    {
      DOCLogAssertionFailureMessage_Swift_cold_2(&v2);
      v1 = v2;
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __LoadCrashSupportIfNecessary_block_invoke_cold_2(v1);
    }
  }
}

void sub_24934B8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24934BF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DOCRandomRankBetween(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 1;
  if (a1 + 1 >= a2)
  {
    v5 = 0;
  }

  else
  {
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2 + __buf % (~a1 + a2)];
  }

  return v5;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_24934EB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  objc_sync_exit(@"FIOperations");
  _Unwind_Resume(a1);
}

uint64_t FolderTagColorForTags(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__0;
    v9 = __Block_byref_object_dispose__0;
    v10 = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __FolderTagColorForTags_block_invoke;
    v4[3] = &unk_278F9B860;
    v4[4] = &v5;
    [v1 enumerateObjectsWithOptions:2 usingBlock:v4];
    v2 = [v6[5] labelIndex];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_24934F520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __FolderTagColorForTags_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  obj = DOCTagFromFPTag(a2);
  if ([obj labelIndex])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    *a4 = 1;
  }
}

id DOCEnumerationLogHandle()
{
  v0 = docEnumerationLogHandle;
  if (!docEnumerationLogHandle)
  {
    DOCInitLogging();
    v0 = docEnumerationLogHandle;
  }

  return v0;
}

uint64_t DOCNodeSupportsFolderCustomization(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (![v1 isFolder] || objc_msgSend(v1, "doc_folderIconType") > 1 || (objc_msgSend(v1, "isAppContainer") & 1) != 0 || (objc_msgSend(v1, "isTopLevelSharedItem") & 1) != 0 || (objc_msgSend(v1, "doc_isCollaborationInvitation") & 1) != 0)
  {
    goto LABEL_6;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v1 itemDecorations];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = *MEMORY[0x277CC62B0];
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v19 + 1) + 8 * v9) type];
        v11 = [v10 isEqual:v8];

        if (v11)
        {
          v2 = 0;
          goto LABEL_20;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = [v1 providerDomainID];
  v14 = DOCProviderDomainIDIsSharedServerDomainID(v12, v13);

  if (v14)
  {
LABEL_6:
    v2 = 0;
  }

  else
  {
    v15 = [v1 providerDomainID];
    v16 = [v15 isEqual:@"com.apple.FileProvider.LocalStorage"];

    if (v16)
    {
      v2 = 1;
    }

    else
    {
      v17 = MEMORY[0x277CC6420];
      v18 = [v1 providerDomainID];
      v4 = [v17 providerDomainWithID:v18 cachePolicy:1 error:0];

      v2 = [v4 isUsingFPFS];
LABEL_20:
    }
  }

  return v2;
}

id DOCNodeFromCoder(void *a1)
{
  v1 = a1;
  v2 = [v1 decodeIntForKey:@"DOCNodeEncodedTypeKey"];
  if (!v2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v3 = +[DOCNodeStartupManager shared];
    [v3 startIfNeeded];

LABEL_4:
    v4 = [v1 decodeObjectOfClass:objc_opt_class() forKey:@"DOCNodeEncodedObjectKey"];
    goto LABEL_6;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

void sub_24935458C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DOCContentTypesReadableByApplicationWithBundleIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 handlerRank];
  if (([v3 isEqualToString:*MEMORY[0x277CC1F20]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CC1F10]) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CC1F18]))
  {
    v4 = *(a1 + 32);
    v5 = [v6 typeIdentifiers];
    [v4 addObjectsFromArray:v5];
  }
}

BOOL DOCApplicationWithBundleIdentifierSupportsDocuments(void *a1)
{
  v1 = DOCContentTypesReadableByApplicationWithBundleIdentifier(a1);
  v2 = [v1 count] != 0;

  return v2;
}

uint64_t DOCProviderDomainIsSharedServerDomain(void *a1)
{
  v1 = [a1 identifier];
  v2 = [v1 hasPrefix:@"com.apple.SMBClientProvider.FileProvider"];

  return v2;
}

void sub_2493564E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249358FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249359EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24935A1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_24935C708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24935DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DOCShouldApplicationShowRecentsPopover(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v2 = docLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "BOOL DOCShouldApplicationShowRecentsPopover(NSString *__strong _Nonnull)";
    _os_log_impl(&dword_249340000, v2, OS_LOG_TYPE_DEFAULT, "%s was removed. Returning NO.", &v4, 0xCu);
  }

  return 0;
}

void sub_249362910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id documentmanager_perf_log(uint64_t a1)
{
  if (documentmanager_perf_log_once != -1)
  {
    documentmanager_perf_log_cold_1();
  }

  v2 = documentmanager_perf_log_logger;

  return v2;
}

uint64_t __documentmanager_perf_log_block_invoke()
{
  v0 = os_log_create("com.apple.DocumentManager", "performance");
  v1 = documentmanager_perf_log_logger;
  documentmanager_perf_log_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_249363C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id FPTagFromDOCTag(void *a1)
{
  v1 = a1;
  v2 = [v1 labelIndex];
  v3 = objc_alloc(MEMORY[0x277CC6468]);
  v4 = [v1 displayName];

  v5 = [v3 initWithLabel:v4 color:v2];

  return v5;
}

id FPTagsFromDOCTags(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [v1 arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __FPTagsFromDOCTags_block_invoke;
  v6[3] = &unk_278F9BF40;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __FPTagsFromDOCTags_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = FPTagFromDOCTag(a2);
  [v2 addObject:v3];
}

void DOCRunInMainThreadSync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    DOCRunInMainThreadSync_cold_1();
  }

  block = v1;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

void sub_249365C08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_249366350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t hasEqual_defaultEffectiveTabIdentifierForLocationRestore(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 defaultEffectiveTabIdentifierForLocationRestore];
  v6 = [v4 defaultEffectiveTabIdentifierForLocationRestore];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [v3 defaultEffectiveTabIdentifierForLocationRestore];
    v8 = [v4 defaultEffectiveTabIdentifierForLocationRestore];
    v9 = [v7 isEqualToString:v8];
  }

  return v9;
}

__CFString *NSStringFromContentMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"????";
  }

  else
  {
    return off_278F9C1F8[a1];
  }
}

__CFString *NSStringFromLandingMode(uint64_t a1)
{
  v1 = @"????";
  if (a1 == 1)
  {
    v1 = @"chin";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"fullscreen";
  }
}

void sub_24936A0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24936CF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_24936E0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t DOCUIPBrowserState.contentMode.getter()
{
  return *v0;
}

{
  return *(v0 + OBJC_IVAR___DOCUIPBrowserState__impl);
}

uint64_t DOCUIPBrowserState.contentMode.setter(uint64_t result)
{
  *v1 = result;
  return result;
}

{
  *(v1 + OBJC_IVAR___DOCUIPBrowserState__impl) = result;
  return result;
}

uint64_t DOCUIPBrowserState.documentLandingMode.getter()
{
  return *(v0 + 8);
}

{
  return *(v0 + OBJC_IVAR___DOCUIPBrowserState__impl + 8);
}

uint64_t DOCUIPBrowserState.documentLandingMode.setter(uint64_t result)
{
  *(v1 + 8) = result;
  return result;
}

{
  *(v1 + OBJC_IVAR___DOCUIPBrowserState__impl + 8) = result;
  return result;
}

uint64_t sub_24936EF58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x4D746E65746E6F63;
  }

  if (v2)
  {
    v4 = 0xEB0000000065646FLL;
  }

  else
  {
    v4 = 0x8000000249393B20;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x4D746E65746E6F63;
  }

  if (*a2)
  {
    v6 = 0x8000000249393B20;
  }

  else
  {
    v6 = 0xEB0000000065646FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24938A7BC();
  }

  return v8 & 1;
}

uint64_t sub_24936F00C()
{
  sub_24938A7FC();
  sub_24938A47C();

  return sub_24938A80C();
}

uint64_t sub_24936F09C(uint64_t a1)
{
  sub_24938A47C();
}

uint64_t sub_24936F118(uint64_t a1)
{
  sub_24938A7FC();
  sub_24938A47C();

  return sub_24938A80C();
}

uint64_t sub_24936F1A4@<X0>(char *a2@<X8>)
{
  v3 = sub_24938A77C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24936F204(unint64_t *a1@<X8>)
{
  v2 = 0x8000000249393B20;
  v3 = 0x4D746E65746E6F63;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEB0000000065646FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_24936F250()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x4D746E65746E6F63;
  }
}

uint64_t sub_24936F298@<X0>(char *a3@<X8>)
{
  v4 = sub_24938A77C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24936F314(uint64_t a1)
{
  v2 = sub_24936F624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24936F350(uint64_t a1)
{
  v2 = sub_24936F624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DOCUIPBrowserState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE28E0, &qword_24938EF50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24936F624();
  sub_24938A82C();
  v12 = v8;
  v11 = 0;
  type metadata accessor for DOCUIPBrowserContentMode(0);
  sub_24936F6A0(&qword_27EEE28F0, type metadata accessor for DOCUIPBrowserContentMode, &protocol conformance descriptor for DOCUIPBrowserContentMode);
  sub_24938A79C();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    type metadata accessor for DOCUIPDocumentLandingMode(0);
    sub_24936F6A0(&qword_27EEE28F8, type metadata accessor for DOCUIPDocumentLandingMode, &protocol conformance descriptor for DOCUIPDocumentLandingMode);
    sub_24938A79C();
  }

  return (*(v5 + 8))(v7, v4);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24936F624()
{
  result = qword_27EEE28E8;
  if (!qword_27EEE28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE28E8);
  }

  return result;
}

uint64_t sub_24936F6A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DOCUIPBrowserState.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2900, &qword_24938EF58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24936F624();
  sub_24938A81C();
  if (!v2)
  {
    type metadata accessor for DOCUIPBrowserContentMode(0);
    v13 = 0;
    sub_24936F6A0(&qword_27EEE2908, type metadata accessor for DOCUIPBrowserContentMode, &protocol conformance descriptor for DOCUIPBrowserContentMode);
    sub_24938A78C();
    v9 = v14;
    type metadata accessor for DOCUIPDocumentLandingMode(0);
    v13 = 1;
    sub_24936F6A0(&qword_27EEE2910, type metadata accessor for DOCUIPDocumentLandingMode, &protocol conformance descriptor for DOCUIPDocumentLandingMode);
    sub_24938A78C();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

void __swiftcall DOCUIPBrowserState.init()(DOCUIPBrowserState *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

id DOCUIPBrowserState.init()()
{
  v1 = (v0 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *v1 = -1;
  v1[1] = -1;
  v3.super_class = DOCUIPBrowserState;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_24936FAB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentMode];
  *a2 = result;
  return result;
}

id sub_24936FB50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 documentLandingMode];
  *a2 = result;
  return result;
}

id DOCUIPBrowserState.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DOCUIPBrowserState__impl];
  *v4 = -1;
  *(v4 + 1) = -1;
  sub_24936FCA4(1819307369, 0xE400000000000000, &v9);
  if (v10 == 1)
  {

    type metadata accessor for DOCUIPBrowserState(v5);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *v4 = v9;
    v8.receiver = v2;
    v8.super_class = DOCUIPBrowserState;
    v7 = objc_msgSendSuper2(&v8, sel_init);

    return v7;
  }
}

uint64_t sub_24936FCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_249370B4C(0, &qword_27EEE2A28, 0x277CBEA90);
  v13 = a1;
  v14 = a2;

  MEMORY[0x24C1F5EA0](0x617461642DLL, 0xE500000000000000);
  v6 = sub_24938A5CC();

  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = sub_24938A31C();
  v10 = v9;

  v11 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_249370E14(v8, v10);
  v12 = sub_249370D54();
  sub_249370E68(v8, v10);
  if (!v12)
  {
    result = sub_249370E68(v8, v10);
LABEL_4:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return result;
  }

  sub_249370EBC();
  sub_24938A56C();
  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = (v15 & 1) != 0;
  [v12 finishDecoding];

  return sub_249370E68(v8, v10);
}

void sub_24936FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_249370AF8();
  sub_24938A55C();
  [v5 finishEncoding];
  v6 = [v5 encodedData];
  if (v6)
  {
    v7 = v6;

    MEMORY[0x24C1F5EA0](0x617461642DLL, 0xE500000000000000);
    v8 = sub_24938A42C();

    [v4 encodeObject:v7 forKey:v8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCUIPBrowserState.debugDescription.getter()
{
  sub_24938A66C();
  MEMORY[0x24C1F5EA0](0xD000000000000023, 0x8000000249393B40);
  [v0 contentMode];
  type metadata accessor for DOCUIPBrowserContentMode(0);
  sub_24938A6FC();
  MEMORY[0x24C1F5EA0](0xD000000000000017, 0x8000000249393B70);
  [v0 documentLandingMode];
  type metadata accessor for DOCUIPDocumentLandingMode(0);
  sub_24938A6FC();
  MEMORY[0x24C1F5EA0](41, 0xE100000000000000);
  return 0;
}

void __swiftcall DOCUIPBrowserState._bridgeToObjectiveC()(DOCUIPBrowserState *__return_ptr retstr)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [objc_allocWithZone(DOCUIPBrowserState) init];
  v5 = &v4[OBJC_IVAR___DOCUIPBrowserState__impl];
  *v5 = v2;
  *(v5 + 1) = v3;
}

__n128 static DOCUIPBrowserState._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, __n128 *a2)
{
  result = *(a1 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *a2 = result;
  a2[1].n128_u8[0] = 0;
  return result;
}

uint64_t static DOCUIPBrowserState._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *(a2 + 16) = 0;
  return 1;
}

uint64_t static DOCUIPBrowserState._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *(result + OBJC_IVAR___DOCUIPBrowserState__impl);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_249370270()
{
  v1 = *v0;
  v2 = v0[1];
  result = [objc_allocWithZone(DOCUIPBrowserState) init];
  v4 = &result[OBJC_IVAR___DOCUIPBrowserState__impl];
  *v4 = v1;
  *(v4 + 1) = v2;
  return result;
}

__n128 sub_2493702B8(uint64_t a1, __n128 *a2)
{
  result = *(a1 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *a2 = result;
  a2[1].n128_u8[0] = 0;
  return result;
}

uint64_t sub_2493702D0(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *(a2 + 16) = 0;
  return 1;
}

uint64_t sub_2493702EC@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *(result + OBJC_IVAR___DOCUIPBrowserState__impl);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCUIPBrowserContentMode.debugDescription.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      return 0x646572616873;
    }

    if (a1 == 2)
    {
      return 0x726573776F7262;
    }
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6669636570736E75;
    }

    if (!a1)
    {
      return 0x73746E65636572;
    }
  }

  type metadata accessor for DOCUIPBrowserContentMode(0);
  result = sub_24938A7DC();
  __break(1u);
  return result;
}

uint64_t sub_2493703CC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 0)
  {
    if (v2 == -1)
    {
      return 0x6669636570736E75;
    }

    if (!v2)
    {
      return 0x73746E65636572;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    return 0x646572616873;
  }

  if (v2 != 2)
  {
LABEL_11:
    result = sub_24938A7DC();
    __break(1u);
    return result;
  }

  return 0x726573776F7262;
}

uint64_t DOCUIPDocumentLandingMode.debugDescription.getter(uint64_t a1)
{
  switch(a1)
  {
    case -1:
      return 0x6669636570736E75;
    case 1:
      v1 = 1852401763;
      return v1 | 0x6F72622D00000000;
    case 0:
      v1 = 1819047270;
      return v1 | 0x6F72622D00000000;
  }

  type metadata accessor for DOCUIPDocumentLandingMode(0);
  result = sub_24938A7DC();
  __break(1u);
  return result;
}

uint64_t sub_249370528(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == -1)
  {
    return 0x6669636570736E75;
  }

  if (v2 == 1)
  {
    v3 = 1852401763;
  }

  else
  {
    if (v2)
    {
      result = sub_24938A7DC();
      __break(1u);
      return result;
    }

    v3 = 1819047270;
  }

  return v3 | 0x6F72622D00000000;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCUIPBrowserState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DOCUIPBrowserState(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DOCUIPBrowserState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DOCUIPBrowserState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2493707B4()
{
  result = qword_27EEE2998;
  if (!qword_27EEE2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE2998);
  }

  return result;
}

unint64_t sub_24937080C()
{
  result = qword_27EEE29A0;
  if (!qword_27EEE29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE29A0);
  }

  return result;
}

unint64_t sub_249370864()
{
  result = qword_27EEE29A8;
  if (!qword_27EEE29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE29A8);
  }

  return result;
}

uint64_t sub_2493708C0(uint64_t a1, id *a2)
{
  result = sub_24938A43C();
  *a2 = 0;
  return result;
}

uint64_t sub_249370938(uint64_t a1, id *a2)
{
  v3 = sub_24938A44C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2493709B8@<X0>(uint64_t *a1@<X8>)
{
  sub_24938A45C();
  v2 = sub_24938A42C();

  *a1 = v2;
  return result;
}

uint64_t sub_2493709FC(void *a1, uint64_t *a2)
{
  v2 = sub_24938A45C();
  v4 = v3;
  if (v2 == sub_24938A45C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24938A7BC();
  }

  return v7 & 1;
}

uint64_t sub_249370A84@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24938A42C();

  *a2 = v3;
  return result;
}

uint64_t sub_249370ACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24938A45C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_249370AF8()
{
  result = qword_27EEE2A10;
  if (!qword_27EEE2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE2A10);
  }

  return result;
}

uint64_t sub_249370B4C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_249370B94(uint64_t a1)
{
  v2 = sub_24936F6A0(&qword_27EEE2A58, type metadata accessor for Name, &unk_24938F470);
  v3 = sub_24936F6A0(&unk_27EEE2A60, type metadata accessor for Name, &unk_24938F410);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_249370C50()
{
  v0 = sub_24938A45C();
  v1 = MEMORY[0x24C1F5ED0](v0);

  return v1;
}

uint64_t sub_249370C8C(uint64_t a1)
{
  sub_24938A45C();
  sub_24938A47C();
}

uint64_t sub_249370CE0(uint64_t a1)
{
  sub_24938A45C();
  sub_24938A7FC();
  sub_24938A47C();
  v1 = sub_24938A80C();

  return v1;
}

id sub_249370D54()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_24938A30C();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_24938A2AC();

    swift_willThrow();
  }

  return v2;
}

void sub_249370E14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_249370E68(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_249370EBC()
{
  result = qword_27EEE2A30;
  if (!qword_27EEE2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE2A30);
  }

  return result;
}

void sub_249370F24(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_249371068()
{
  v1 = [v0 identifier];
  v2 = sub_24938A45C();
  v4 = v3;

  v5 = v2 == 1702125924 && v4 == 0xE400000000000000;
  if (v5 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
LABEL_8:
      v8 = sub_24938A28C();
LABEL_9:
      v9 = v8;

      return v9;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = v2 == 0x69646F4D65746164 && v4 == 0xEC00000064656966;
  if (v10 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }

    goto LABEL_42;
  }

  v11 = v2 == 0x6165724365746164 && v4 == 0xEB00000000646574;
  if (v11 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }

    goto LABEL_43;
  }

  if (v2 == 0x6564644165746164 && v4 == 0xE900000000000064 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  if (v2 == 1701667182 && v4 == 0xE400000000000000 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  if (v2 == 1684957547 && v4 == 0xE400000000000000)
  {
  }

  else
  {
    v12 = sub_24938A7BC();

    if ((v12 & 1) == 0)
    {
      v7 = [v0 identifier];
      v8 = sub_24938A45C();
      goto LABEL_9;
    }
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    goto LABEL_8;
  }

LABEL_46:
  __break(1u);
  return result;
}

id DOCSBFolderSortOrder.init(sortOrderIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___DOCSBFolderSortOrder_symbolName);
  *v3 = 0x656C63726963;
  v3[1] = 0xE600000000000000;
  v4 = (v2 + OBJC_IVAR___DOCSBFolderSortOrder_identifier);
  *v4 = a1;
  v4[1] = a2;
  *v3 = 0x656C63726963;
  v3[1] = 0xE600000000000000;
  v6.super_class = DOCSBFolderSortOrder;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2493716D0()
{
  v1 = [v0 identifier];
  v2 = sub_24938A45C();
  v4 = v3;

  v5 = v2 == 1702125924 && v4 == 0xE400000000000000;
  if (v5 || (sub_24938A7BC() & 1) != 0 || (v2 == 0x69646F4D65746164 ? (v6 = v4 == 0xEC00000064656966) : (v6 = 0), v6 || (sub_24938A7BC() & 1) != 0 || (v2 == 0x6165724365746164 ? (v7 = v4 == 0xEB00000000646574) : (v7 = 0), v7 || (sub_24938A7BC() & 1) != 0 || v2 == 0x6564644165746164 && v4 == 0xE900000000000064 || (sub_24938A7BC() & 1) != 0)))
  {

    return 0;
  }

  else if (v2 == 1701667182 && v4 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v9 = sub_24938A7BC();

    return v9 & 1;
  }
}

id DOCSBFolderSortOrder.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DOCSBFolderSortOrder_symbolName];
  *v4 = 0x656C63726963;
  *(v4 + 1) = 0xE600000000000000;
  sub_249370B4C(0, &qword_27EEE2B10, 0x277CCACA8);
  v5 = sub_24938A5CC();
  if (v5)
  {
    v6 = v5;
    v7 = sub_24938A45C();
    v8 = &v2[OBJC_IVAR___DOCSBFolderSortOrder_identifier];
    *v8 = v7;
    v8[1] = v9;
    *v4 = 0x656C63726963;
    *(v4 + 1) = 0xE600000000000000;

    v13.receiver = v2;
    v13.super_class = DOCSBFolderSortOrder;
    v10 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {

    type metadata accessor for DOCSBFolderSortOrder(v11);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

uint64_t DOCSBFolderSortOrder.isEqual(_:)(uint64_t a1)
{
  v2 = sub_249378534(a1, v14, &qword_27EEE2B18, &qword_24938F530);
  if (!v15)
  {
    sub_249378744(v14, &qword_27EEE2B18, &qword_24938F530);
    goto LABEL_7;
  }

  type metadata accessor for DOCSBFolderSortOrder(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  v3 = [v1 identifier];
  v4 = sub_24938A45C();
  v6 = v5;

  v7 = [v13 identifier];
  v8 = sub_24938A45C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24938A7BC();
  }

  return v11 & 1;
}

id sub_249371C30(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_24938A42C();

  return v5;
}

id sub_249371CA0()
{
  v1 = [v0 identifier];
  v2 = sub_24938A45C();
  v4 = v3;

  v5 = v2 == 7233894 && v4 == 0xE300000000000000;
  if (v5 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
LABEL_8:
      v8 = sub_24938A28C();
LABEL_9:
      v9 = v8;

      return v9;
    }

    __break(1u);
  }

  else
  {
    if (v2 == 1684632167 && v4 == 0xE400000000000000)
    {
    }

    else
    {
      v11 = sub_24938A7BC();

      if ((v11 & 1) == 0)
      {
        v7 = [v0 identifier];
        v8 = sub_24938A45C();
        goto LABEL_9;
      }
    }

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

id sub_249371EC8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_24938A42C();

  return v3;
}

uint64_t sub_249371F30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24938A45C();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id sub_249371F8C@<X0>(SEL *a3@<X2>, void *a4@<X8>)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata(a4));
  v6 = sub_24938A42C();

  v7 = [v5 *a3];

  return v7;
}

id DOCSBFolderDisplayMode.init(displayModeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___DOCSBFolderDisplayMode_symbolName];
  v6 = 0x656C63726963;
  v7 = 0xE600000000000000;
  *v5 = 0x656C63726963;
  v5[1] = 0xE600000000000000;
  v8 = &v2[OBJC_IVAR___DOCSBFolderDisplayMode_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  if (a1 != 7233894 || a2 != 0xE300000000000000)
  {
    if (sub_24938A7BC() & 1) == 0 && (a1 == 1684632167 && a2 == 0xE400000000000000 || (sub_24938A7BC()))
    {
      v7 = 0x8000000249393C90;
      v6 = 0xD000000000000014;
    }

    else
    {
      v7 = 0xE600000000000000;
      v6 = 0x656C63726963;
    }
  }

  *v5 = v6;
  v5[1] = v7;
  v10.receiver = v2;
  v10.super_class = DOCSBFolderDisplayMode;
  return objc_msgSendSuper2(&v10, sel_init);
}

id _sSo20DOCSBFolderSortOrderC19DocumentManagerCoreE5coderABSgSo7NSCoderC_tcfC_0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata(a2)) initWithCoder_];

  return v3;
}

id DOCSBFolderDisplayMode.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DOCSBFolderDisplayMode_symbolName];
  *v4 = 0x656C63726963;
  v4[1] = 0xE600000000000000;
  sub_249370B4C(0, &qword_27EEE2B10, 0x277CCACA8);
  v5 = sub_24938A5CC();
  if (!v5)
  {

    type metadata accessor for DOCSBFolderDisplayMode(v16);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  v7 = sub_24938A45C();
  v8 = &v2[OBJC_IVAR___DOCSBFolderDisplayMode_identifier];
  *v8 = v7;
  v8[1] = v9;
  v11 = sub_24938A45C();
  v12 = v10;
  if ((v11 != 7233894 || v10 != 0xE300000000000000) && (sub_24938A7BC() & 1) == 0)
  {
    if (v11 == 1684632167 && v12 == 0xE400000000000000)
    {
    }

    else
    {
      v18 = sub_24938A7BC();

      if ((v18 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v13 = 0x8000000249393C90;
    v14 = 0xD000000000000014;
    goto LABEL_7;
  }

LABEL_6:
  v13 = 0xE600000000000000;
  v14 = 0x656C63726963;
LABEL_7:
  *v4 = v14;
  v4[1] = v13;

  v19.receiver = v2;
  v19.super_class = DOCSBFolderDisplayMode;
  v15 = objc_msgSendSuper2(&v19, sel_init);

  return v15;
}

void sub_2493723C8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = [v5 identifier];
  if (!v6)
  {
    sub_24938A45C();
    v6 = sub_24938A42C();
  }

  v7 = sub_24938A42C();
  [v4 encodeObject:v6 forKey:v7];
}

id _sSo20DOCSBFolderSortOrderC19DocumentManagerCoreEABycfC_0@<X0>(void *a1@<X8>)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(a1));

  return [v1 init];
}

uint64_t sub_249372548(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
}

uint64_t sub_249372598()
{
  v0 = sub_24938A3AC();
  __swift_allocate_value_buffer(v0, qword_27EEE2AE0);
  __swift_project_value_buffer(v0, qword_27EEE2AE0);

  return sub_24938A39C();
}

uint64_t static Logger.sbSupport.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v2 = sub_24938A3AC();
  v3 = __swift_project_value_buffer(v2, qword_27EEE2AE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_249372704()
{
  result = [objc_allocWithZone(DOCSBFolderManager) init];
  qword_27EEE2AF8 = result;
  return result;
}

id sub_2493727EC()
{
  v11 = sub_24938A58C();
  v0 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24938A57C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24938A3DC();
  MEMORY[0x28223BE20](v4 - 8);
  v10 = OBJC_IVAR___DOCSBFolderManager_queue;
  v9[1] = sub_249370B4C(0, &qword_27EEE2BC0, 0x277D85C78);
  sub_24938A3CC();
  v14 = MEMORY[0x277D84F90];
  sub_24937880C(&qword_27EEE2BE8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BF0, &qword_24938F580);
  sub_249378854(&qword_27EEE2BF8, &qword_27EEE2BF0, &qword_24938F580);
  sub_24938A60C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v11);
  v5 = sub_24938A5BC();
  v6 = v12;
  *&v12[v10] = v5;
  v7 = OBJC_IVAR___DOCSBFolderManager_observers;
  *&v6[v7] = sub_249384CA0(MEMORY[0x277D84F90]);
  v13.receiver = v6;
  v13.super_class = DOCSBFolderManager;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_249372B10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  a3(a1, a2);
  a4();
  v5 = sub_24938A4EC();

  return v5;
}

id sub_249372BBC(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v7 = objc_allocWithZone(*a3);
  v8 = sub_24938A42C();
  v9 = [v7 *a6];

  return v9;
}

uint64_t sub_249372D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v61 = a1;
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v49 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v56 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v62 = v5[2];
  v62(&v49 - v20, a3, v4);
  v59 = v5[7];
  v59(v21, 0, 1, v4);
  sub_249378534(v21, v19, &unk_27EEE2B80, &qword_24938F548);
  v22 = v5[6];
  if (v22(v19, 1, v4) == 1)
  {
    sub_249378744(v21, &unk_27EEE2B80, &qword_24938F548);
    v23 = v19;
  }

  else
  {
    v55 = v22;
    v52 = v5[4];
    v53 = v5 + 4;
    v52(v11, v19, v4);
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v24 = sub_24938A3AC();
    __swift_project_value_buffer(v24, qword_27EEE2AE0);
    v25 = v58;
    v62(v58, v11, v4);
    v26 = v63;

    v27 = sub_24938A38C();
    v28 = sub_24938A53C();
    v54 = v11;
    v29 = v28;

    v51 = v29;
    if (os_log_type_enabled(v27, v29))
    {
      v30 = v25;
      v31 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v66 = v50;
      *v31 = 136315650;
      *(v31 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394120, &v66);
      v49 = v27;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_249382D44(v61, v26, &v66);
      *(v31 + 22) = 2080;
      sub_24937880C(&qword_27EEE2DA0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v32 = sub_24938A7AC();
      v34 = v33;
      v58 = v5[1];
      (v58)(v30, v4);
      v35 = sub_249382D44(v32, v34, &v66);
      v36 = v54;

      *(v31 + 24) = v35;
      v37 = v49;
      _os_log_impl(&dword_249340000, v49, v51, "%s identifier: %s url: %s", v31, 0x20u);
      v38 = v50;
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v38, -1, -1);
      MEMORY[0x24C1F6C70](v31, -1, -1);

      v39 = v60;
    }

    else
    {

      v58 = v5[1];
      (v58)(v25, v4);
      v39 = v60;
      v36 = v54;
    }

    v40 = v64;
    [v64 _startObservingDistributedNotificationCenterIfNeeded];
    v62(v39, v36, v4);
    v59(v39, 0, 1, v4);
    v41 = [v40 observers];
    v42 = sub_24938A3FC();

    v66 = v42;
    if (v55(v39, 1, v4) == 1)
    {
      sub_249378744(v39, &unk_27EEE2B80, &qword_24938F548);
      v43 = v56;
      sub_2493777D4(v61, v63, v56);
      sub_249378744(v43, &unk_27EEE2B80, &qword_24938F548);
    }

    else
    {
      v44 = v57;
      v52(v57, v39, v4);
      v45 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v45;
      sub_2493841A0(v44, v61, v63, isUniquelyReferenced_nonNull_native);
      v66 = v65;
    }

    v47 = sub_24938A3EC();

    [v64 setObservers_];

    (v58)(v36, v4);
    v23 = v21;
  }

  return sub_249378744(v23, &unk_27EEE2B80, &qword_24938F548);
}

uint64_t sub_2493733F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v63 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v64 = &v53[-v9];
  MEMORY[0x28223BE20](v8);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v62 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v53[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v53[-v20];
  v22 = v5[2];
  v22(&v53[-v20], a3, v4);
  v65 = v5[7];
  v66 = v5 + 7;
  v65(v21, 0, 1, v4);
  sub_249378534(v21, v19, &unk_27EEE2B80, &qword_24938F548);
  v23 = v5[6];
  if (v23(v19, 1, v4) == 1)
  {
    sub_249378744(v21, &unk_27EEE2B80, &qword_24938F548);
    v24 = v19;
  }

  else
  {
    v60 = v23;
    v61 = v21;
    v57 = v5[4];
    v58 = v5 + 4;
    v57(v11, v19, v4);
    v25 = v11;
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v26 = sub_24938A3AC();
    __swift_project_value_buffer(v26, qword_27EEE2AE0);
    v27 = v64;
    v22(v64, v25, v4);
    v28 = v70;

    v29 = v68;
    v59 = v25;
    v30 = sub_24938A38C();
    v31 = sub_24938A53C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v72[0] = v55;
      *v32 = 136315906;
      *(v32 + 4) = sub_249382D44(0xD000000000000028, 0x80000002493940F0, v72);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_249382D44(v69, v28, v72);
      *(v32 + 22) = 2080;
      sub_24937880C(&qword_27EEE2DA0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v54 = v31;
      v33 = sub_24938A7AC();
      v56 = v5 + 6;
      v34 = v29;
      v36 = v35;
      v68 = v5[1];
      (v68)(v27, v4);
      v37 = sub_249382D44(v33, v36, v72);

      *(v32 + 24) = v37;
      *(v32 + 32) = 2080;
      v38 = [v34 observers];
      sub_24938A3FC();

      v29 = v34;
      v39 = sub_24938A40C();
      v41 = v40;

      v42 = sub_249382D44(v39, v41, v72);

      *(v32 + 34) = v42;
      _os_log_impl(&dword_249340000, v30, v54, "%s identifier: %s url: %s observers: %s", v32, 0x2Au);
      v43 = v55;
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v43, -1, -1);
      MEMORY[0x24C1F6C70](v32, -1, -1);
    }

    else
    {

      v68 = v5[1];
      (v68)(v27, v4);
    }

    v44 = v67;
    v65(v67, 1, 1, v4);
    v45 = [v29 observers];
    v46 = sub_24938A3FC();

    v72[0] = v46;
    if (v60(v44, 1, v4) == 1)
    {
      sub_249378744(v44, &unk_27EEE2B80, &qword_24938F548);
      v47 = v62;
      sub_2493777D4(v69, v70, v62);
      sub_249378744(v47, &unk_27EEE2B80, &qword_24938F548);
    }

    else
    {
      v48 = v63;
      v57(v63, v44, v4);
      v49 = v72[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v49;
      sub_2493841A0(v48, v69, v70, isUniquelyReferenced_nonNull_native);
      v72[0] = v71;
    }

    v51 = sub_24938A3EC();

    [v29 setObservers_];

    [v29 _stopObservingDistributedNotificationCenterIfNeeded];
    (v68)(v59, v4);
    v24 = v61;
  }

  return sub_249378744(v24, &unk_27EEE2B80, &qword_24938F548);
}

uint64_t sub_249373B30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_24938A2FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24938A45C();
  v13 = v12;
  sub_24938A2DC();
  v14 = a1;
  a5(v11, v13, v10);

  return (*(v8 + 8))(v10, v7);
}

id sub_249373C4C()
{
  v1 = v0;
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v2 = sub_24938A3AC();
  __swift_project_value_buffer(v2, qword_27EEE2AE0);
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_249382D44(0xD00000000000001FLL, 0x80000002493940D0, &v8);
    _os_log_impl(&dword_249340000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x24C1F6C70](v6, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  return [v1 _startObservingDistributedNotificationCenterIfNeeded];
}

id sub_249373DF4()
{
  v1 = v0;
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v2 = sub_24938A3AC();
  __swift_project_value_buffer(v2, qword_27EEE2AE0);
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_249382D44(0xD00000000000001ELL, 0x80000002493940B0, &v8);
    _os_log_impl(&dword_249340000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x24C1F6C70](v6, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  return [v1 _stopObservingDistributedNotificationCenterIfNeeded];
}

uint64_t sub_249373F9C(void (*a1)(void, void, void), uint64_t a2)
{
  v306 = sub_24938A2FC();
  v3 = *(v306 - 8);
  v4 = MEMORY[0x28223BE20](v306);
  v286 = v279 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v288 = v279 - v7;
  MEMORY[0x28223BE20](v6);
  v289 = v279 - v8;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2B70, &qword_24938F538);
  v9 = MEMORY[0x28223BE20](v299);
  v290 = (v279 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v298 = v279 - v12;
  MEMORY[0x28223BE20](v11);
  v301 = (v279 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2B78, &qword_24938F540);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v279 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v300 = v279 - v18;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v19 = MEMORY[0x28223BE20](v295);
  v296 = v279 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v279 - v22;
  MEMORY[0x28223BE20](v21);
  v307 = v279 - v24;
  v304 = sub_24938A27C();
  v302 = *(v304 - 8);
  v25 = MEMORY[0x28223BE20](v304);
  v305 = v279 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v279 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v287 = v279 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v279 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v294 = v279 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v291 = v279 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v292 = v279 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = v279 - v41;
  v303 = a1;
  v43 = sub_24938A25C();
  v44 = sub_24938A45C();
  v46 = v45;
  v47 = sub_24938A45C();
  v285 = v34;
  if (v44 == v47 && v46 == v48)
  {

LABEL_6:
    v50 = DOCSBFolderProgressCompletedNotification;
    goto LABEL_13;
  }

  v49 = sub_24938A7BC();

  if (v49)
  {

    goto LABEL_6;
  }

  v51 = sub_24938A45C();
  v53 = v52;
  if (v51 == sub_24938A45C() && v53 == v54)
  {

LABEL_12:
    v50 = DOCSBFolderDidChangeNotification;
LABEL_13:
    v56 = v306;
    v57 = *v50;
    v58 = *(v3 + 7);
    v58(v307, 1, 1, v56);
    v59 = v303;
    v60 = sub_24938A26C();
    if (v60)
    {
      v61 = v60;
      v308 = sub_24938A45C();
      v309 = v62;
      sub_24938A64C();
      if (*(v61 + 16))
      {
        v63 = sub_249383364(&v310);
        if (v64)
        {
          sub_24937860C(*(v61 + 56) + 32 * v63, &v316);
          sub_249377724(&v310);

          if (*(&v317 + 1))
          {
            if (swift_dynamicCast())
            {
LABEL_23:
              v65 = sub_24938A26C();
              if (v65)
              {
                v66 = v65;
                *&v316 = sub_24938A45C();
                *(&v316 + 1) = v67;
                sub_24938A64C();
                if (*(v66 + 16))
                {
                  v68 = sub_249383364(&v310);
                  if (v69)
                  {
                    sub_24937860C(*(v66 + 56) + 32 * v68, &v316);
                    sub_249377724(&v310);

                    if (*(&v317 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v70 = v310;
                      }

                      else
                      {
                        v70 = 2;
                      }

LABEL_33:
                      v71 = sub_24938A26C();
                      if (v71)
                      {
                        v72 = v71;
                        v308 = sub_24938A45C();
                        v309 = v73;
                        sub_24938A64C();
                        if (*(v72 + 16))
                        {
                          v74 = sub_249383364(&v310);
                          if (v75)
                          {
                            sub_24937860C(*(v72 + 56) + 32 * v74, &v316);
                            sub_249377724(&v310);

                            if (*(&v317 + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v283 = v70;
                                v281 = v58;
                                v297 = v57;
                                v76 = v319;
                                v305 = v3;
                                v279[1] = v3 + 56;
                                v282 = v311;
                                v280 = v310;
                                if (v319)
                                {
                                  v77 = v318;

                                  v78 = [v293 observers];
                                  v79 = sub_24938A3FC();

                                  v80 = *(v79 + 16);
                                  v81 = v304;
                                  v82 = v302;
                                  v299 = v77;
                                  if (v80)
                                  {
                                    v83 = sub_2493832EC(v77, v76);
                                    v84 = v23;
                                    if (v85)
                                    {
                                      (*(v3 + 2))(v23, *(v79 + 56) + *(v3 + 9) * v83, v306);
                                      v86 = 0;
                                    }

                                    else
                                    {
                                      v86 = 1;
                                    }
                                  }

                                  else
                                  {
                                    v86 = 1;
                                    v84 = v23;
                                  }

                                  v281(v84, v86, 1, v306);
                                  sub_24937859C(v84, v307);
                                  if (qword_27EEE28C0 != -1)
                                  {
                                    swift_once();
                                  }

                                  v143 = sub_24938A3AC();
                                  __swift_project_value_buffer(v143, qword_27EEE2AE0);
                                  v144 = v292;
                                  v300 = *(v82 + 16);
                                  (v300)(v292, v59, v81);

                                  v145 = sub_24938A38C();
                                  v146 = sub_24938A53C();

                                  if (os_log_type_enabled(v145, v146))
                                  {
                                    v147 = swift_slowAlloc();
                                    v148 = swift_slowAlloc();
                                    v310 = v148;
                                    *v147 = 136315906;
                                    *(v147 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v310);
                                    *(v147 + 12) = 2080;
                                    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
                                    v149 = sub_24938A7AC();
                                    v150 = v144;
                                    v152 = v151;
                                    v301 = *(v82 + 8);
                                    v301(v150, v304);
                                    v153 = sub_249382D44(v149, v152, &v310);

                                    *(v147 + 14) = v153;
                                    *(v147 + 22) = 2080;
                                    v154 = v307;
                                    swift_beginAccess();
                                    sub_249378534(v154, v296, &unk_27EEE2B80, &qword_24938F548);
                                    v155 = sub_24938A46C();
                                    v157 = sub_249382D44(v155, v156, &v310);

                                    *(v147 + 24) = v157;
                                    *(v147 + 32) = 2080;
                                    v59 = v303;
                                    v158 = sub_249382D44(v299, v76, &v310);

                                    *(v147 + 34) = v158;
                                    _os_log_impl(&dword_249340000, v145, v146, "%s notification: %s found existing observer for URL: %s for observerIdentifier: %s", v147, 0x2Au);
                                    swift_arrayDestroy();
                                    MEMORY[0x24C1F6C70](v148, -1, -1);
                                    MEMORY[0x24C1F6C70](v147, -1, -1);

LABEL_79:
                                    v188 = v294;
                                    if (qword_27EEE28C0 != -1)
                                    {
                                      swift_once();
                                    }

                                    v189 = sub_24938A3AC();
                                    v190 = __swift_project_value_buffer(v189, qword_27EEE2AE0);
                                    v191 = v304;
                                    (v300)(v188, v59, v304);
                                    v192 = sub_24938A38C();
                                    v193 = sub_24938A53C();
                                    if (os_log_type_enabled(v192, v193))
                                    {
                                      v194 = swift_slowAlloc();
                                      v195 = swift_slowAlloc();
                                      v299 = v190;
                                      v196 = v195;
                                      *&v316 = v195;
                                      *v194 = 136316162;
                                      *(v194 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v316);
                                      *(v194 + 12) = 2080;
                                      sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
                                      v197 = sub_24938A7AC();
                                      v198 = v188;
                                      v200 = v199;
                                      v301(v198, v191);
                                      v201 = sub_249382D44(v197, v200, &v316);

                                      *(v194 + 14) = v201;
                                      *(v194 + 22) = 2080;
                                      swift_beginAccess();
                                      v310 = v318;
                                      v311 = v319;

                                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BB0, &qword_24938F560);
                                      v202 = sub_24938A46C();
                                      v204 = sub_249382D44(v202, v203, &v316);

                                      *(v194 + 24) = v204;
                                      *(v194 + 32) = 2080;
                                      v205 = v307;
                                      swift_beginAccess();
                                      sub_249378534(v205, v296, &unk_27EEE2B80, &qword_24938F548);
                                      v206 = sub_24938A46C();
                                      v208 = sub_249382D44(v206, v207, &v316);

                                      *(v194 + 34) = v208;
                                      *(v194 + 42) = 2080;
                                      v59 = v303;
                                      LOBYTE(v310) = v283;
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BB8, &qword_24938F568);
                                      v209 = sub_24938A46C();
                                      v211 = sub_249382D44(v209, v210, &v316);

                                      *(v194 + 44) = v211;
                                      _os_log_impl(&dword_249340000, v192, v193, "%s notification: %s identifier: %s notificationURL: %s isDownloadsFolder: %s", v194, 0x34u);
                                      swift_arrayDestroy();
                                      MEMORY[0x24C1F6C70](v196, -1, -1);
                                      MEMORY[0x24C1F6C70](v194, -1, -1);
                                    }

                                    else
                                    {

                                      v301(v188, v191);
                                    }

                                    v212 = v297;
                                    swift_beginAccess();
                                    v213 = v319;
                                    if (v319)
                                    {
                                      v214 = v318;

                                      v215 = v307;
                                      swift_beginAccess();
                                      sub_249377BE4(v212, v214, v213, v215, v283);

                                      v111 = v215;
                                      return sub_249378744(v111, &unk_27EEE2B80, &qword_24938F548);
                                    }

                                    if (v283 == 2 || (v283 & 1) == 0)
                                    {

                                      goto LABEL_51;
                                    }

                                    v216 = v289;
                                    sub_24938A2BC();
                                    v217 = sub_24938A2CC();
                                    v218 = *(v305 + 1);
                                    v218(v216, v306);
                                    v219 = [v217 pathExtension];
                                    if (v219)
                                    {

                                      v220 = [v217 URLByDeletingLastPathComponent];
                                      if (v220)
                                      {
                                        v221 = v288;
                                        v222 = v220;
                                        sub_24938A2DC();

                                        v223 = v285;
                                        v224 = v59;
                                        v225 = v304;
                                        (v300)(v285, v224, v304);
                                        v226 = *(v305 + 2);
                                        v227 = v286;
                                        v228 = v306;
                                        v305 += 16;
                                        v303 = v226;
                                        v226(v286, v221, v306);
                                        v229 = v282;

                                        v230 = sub_24938A38C();
                                        v231 = sub_24938A53C();

                                        if (os_log_type_enabled(v230, v231))
                                        {
                                          v232 = swift_slowAlloc();
                                          v300 = swift_slowAlloc();
                                          *&v316 = v300;
                                          *v232 = 136315906;
                                          *(v232 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v316);
                                          *(v232 + 12) = 2080;
                                          sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
                                          v299 = v230;
                                          v233 = sub_24938A7AC();
                                          LODWORD(v298) = v231;
                                          v235 = v234;
                                          v301(v223, v225);
                                          v236 = sub_249382D44(v233, v235, &v316);

                                          *(v232 + 14) = v236;
                                          *(v232 + 22) = 2080;
                                          v237 = sub_249382D44(v280, v229, &v316);

                                          *(v232 + 24) = v237;
                                          *(v232 + 32) = 2080;
                                          sub_24937880C(&qword_27EEE2DA0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                                          v238 = v286;
                                          v239 = sub_24938A7AC();
                                          v241 = v240;
                                          v218(v238, v228);
                                          v242 = sub_249382D44(v239, v241, &v316);

                                          *(v232 + 34) = v242;
                                          v243 = v299;
                                          _os_log_impl(&dword_249340000, v299, v298, "%s notification: %s observer identifier is nil and notification path: %s is Downloads folder: %s. Posting notification with no identifier.", v232, 0x2Au);
                                          v244 = v300;
                                          swift_arrayDestroy();
                                          MEMORY[0x24C1F6C70](v244, -1, -1);
                                          MEMORY[0x24C1F6C70](v232, -1, -1);
                                        }

                                        else
                                        {

                                          v218(v227, v228);
                                          v301(v223, v225);
                                        }

                                        v265 = v296;
                                        v266 = v288;
                                        v303(v296, v288, v228);
                                        v281(v265, 0, 1, v228);
                                        v267 = v297;
                                        sub_249377BE4(v297, 0, 0, v265, 1);

                                        sub_249378744(v265, &unk_27EEE2B80, &qword_24938F548);
                                        v218(v266, v228);

                                        v111 = v307;
                                        return sub_249378744(v111, &unk_27EEE2B80, &qword_24938F548);
                                      }
                                    }

                                    v245 = v287;
                                    v246 = v59;
                                    v247 = v304;
                                    (v300)(v287, v246, v304);
                                    v248 = v282;

                                    v249 = v217;
                                    v250 = sub_24938A38C();
                                    v251 = sub_24938A53C();

                                    if (!os_log_type_enabled(v250, v251))
                                    {

                                      v301(v245, v247);
                                      goto LABEL_51;
                                    }

                                    v252 = swift_slowAlloc();
                                    v306 = swift_slowAlloc();
                                    *&v316 = v306;
                                    *v252 = 136315906;
                                    *(v252 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v316);
                                    *(v252 + 12) = 2080;
                                    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
                                    v253 = sub_24938A7AC();
                                    v255 = v254;
                                    v301(v245, v247);
                                    v256 = sub_249382D44(v253, v255, &v316);

                                    *(v252 + 14) = v256;
                                    *(v252 + 22) = 2080;
                                    v257 = sub_249382D44(v280, v248, &v316);

                                    *(v252 + 24) = v257;
                                    *(v252 + 32) = 2080;
                                    v258 = v249;
                                    v259 = [v258 description];
                                    v260 = sub_24938A45C();
                                    v262 = v261;

                                    v263 = sub_249382D44(v260, v262, &v316);

                                    *(v252 + 34) = v263;
                                    _os_log_impl(&dword_249340000, v250, v251, "%s notification: %s observer identifier is nil and notification path: %s is Downloads folder: Could not determine Downloads folder URL from %s.", v252, 0x2Au);
                                    v264 = v306;
                                    swift_arrayDestroy();
                                    MEMORY[0x24C1F6C70](v264, -1, -1);
                                    MEMORY[0x24C1F6C70](v252, -1, -1);

                                    goto LABEL_49;
                                  }

                                  v159 = *(v82 + 8);
                                  v160 = v144;
                                  v161 = v81;
                                }

                                else
                                {
                                  v292 = sub_249377778();
                                  v284 = sub_24938A5EC();
                                  v114 = v113;
                                  v115 = [v293 observers];
                                  v116 = sub_24938A3FC();

                                  v117 = -1 << *(v116 + 32);
                                  v118 = ~v117;
                                  v119 = *(v116 + 64);
                                  v120 = -v117;
                                  if (v120 < 64)
                                  {
                                    v121 = ~(-1 << v120);
                                  }

                                  else
                                  {
                                    v121 = -1;
                                  }

                                  v310 = v116;
                                  v311 = v116 + 64;
                                  v122 = (v3 + 32);
                                  v312 = v118;
                                  v313 = 0;
                                  v314 = v121 & v119;
                                  v315 = 0;
                                  v123 = v306;
                                  while (1)
                                  {
                                    while (1)
                                    {
                                      while (1)
                                      {
                                        sub_249376458(v17);
                                        v124 = v300;
                                        sub_2493787A4(v17, v300, &qword_27EEE2B78, &qword_24938F540);
                                        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2BA0, &qword_24938F558);
                                        if ((*(*(v125 - 8) + 48))(v124, 1, v125) == 1)
                                        {
                                          sub_2493777CC(v310);

                                          goto LABEL_73;
                                        }

                                        v126 = v17;
                                        v127 = &v124[*(v125 + 48)];
                                        v128 = *v127;
                                        v129 = *(v127 + 1);
                                        v130 = v299;
                                        isa_low = SLODWORD(v299[6].isa);
                                        v132 = *v122;
                                        v133 = v298;
                                        (*v122)(&v298[isa_low], &v127[isa_low], v123);
                                        v134 = SLODWORD(v130[6].isa);
                                        v135 = v301;
                                        *v301 = v128;
                                        *(v135 + 1) = v129;
                                        v136 = v135;
                                        v132(&v135[v134], &v133[isa_low], v123);
                                        if (v114)
                                        {
                                          break;
                                        }

                                        sub_249378744(v136, &qword_27EEE2B70, &qword_24938F538);
                                        v17 = v126;
                                      }

                                      *&v316 = sub_24938A2EC();
                                      *(&v316 + 1) = v137;
                                      v138 = sub_24938A5EC();
                                      v140 = v305;
                                      v17 = v126;
                                      if (v139)
                                      {
                                        break;
                                      }

                                      sub_249378744(v136, &qword_27EEE2B70, &qword_24938F538);
                                    }

                                    v141 = v138;
                                    v142 = v139;

                                    LOBYTE(v141) = sub_2493768C4(v141, v142, v284, v114);

                                    if (v141)
                                    {
                                      break;
                                    }

                                    sub_249378744(v301, &qword_27EEE2B70, &qword_24938F538);
                                  }

                                  sub_2493777CC(v310);

                                  v162 = v301;
                                  v163 = v290;
                                  sub_249378534(v301, v290, &qword_27EEE2B70, &qword_24938F538);
                                  v164 = v163[1];
                                  v165 = v299;
                                  v166 = SLODWORD(v299[6].isa);
                                  v318 = *v163;
                                  v319 = v164;

                                  v167 = v306;
                                  v140[1](v163 + v166, v306);
                                  v168 = v307;
                                  sub_249378744(v307, &unk_27EEE2B80, &qword_24938F548);
                                  sub_2493787A4(v162, v163, &qword_27EEE2B70, &qword_24938F538);

                                  v132(v168, v163 + SLODWORD(v165[6].isa), v167);
                                  v281(v168, 0, 1, v167);
LABEL_73:
                                  v169 = v304;
                                  v170 = v302;
                                  v59 = v303;
                                  v171 = v291;
                                  if (qword_27EEE28C0 != -1)
                                  {
                                    swift_once();
                                  }

                                  v172 = sub_24938A3AC();
                                  __swift_project_value_buffer(v172, qword_27EEE2AE0);
                                  v300 = *(v170 + 16);
                                  (v300)(v171, v59, v169);
                                  v173 = sub_24938A38C();
                                  v174 = sub_24938A53C();
                                  if (os_log_type_enabled(v173, v174))
                                  {
                                    v175 = swift_slowAlloc();
                                    v176 = swift_slowAlloc();
                                    *&v316 = v176;
                                    *v175 = 136315906;
                                    *(v175 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v316);
                                    *(v175 + 12) = 2080;
                                    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
                                    v177 = sub_24938A7AC();
                                    v179 = v178;
                                    v301 = *(v170 + 8);
                                    v301(v171, v169);
                                    v180 = sub_249382D44(v177, v179, &v316);

                                    *(v175 + 14) = v180;
                                    *(v175 + 22) = 2080;
                                    swift_beginAccess();
                                    v310 = v318;
                                    v311 = v319;

                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BB0, &qword_24938F560);
                                    v181 = sub_24938A46C();
                                    v183 = sub_249382D44(v181, v182, &v316);

                                    *(v175 + 24) = v183;
                                    *(v175 + 32) = 2080;
                                    v184 = v307;
                                    swift_beginAccess();
                                    sub_249378534(v184, v296, &unk_27EEE2B80, &qword_24938F548);
                                    v185 = sub_24938A46C();
                                    v187 = sub_249382D44(v185, v186, &v316);

                                    *(v175 + 34) = v187;
                                    _os_log_impl(&dword_249340000, v173, v174, "%s notification: %s tried finding observer identifier: %s and found URL: %s", v175, 0x2Au);
                                    swift_arrayDestroy();
                                    MEMORY[0x24C1F6C70](v176, -1, -1);
                                    MEMORY[0x24C1F6C70](v175, -1, -1);

                                    goto LABEL_79;
                                  }

                                  v159 = *(v170 + 8);
                                  v160 = v171;
                                  v161 = v169;
                                }

                                v301 = v159;
                                v159(v160, v161);
                                goto LABEL_79;
                              }

LABEL_45:
                              v87 = v304;
                              v88 = v302;
                              v89 = v305;
                              if (qword_27EEE28C0 != -1)
                              {
                                swift_once();
                              }

                              v90 = sub_24938A3AC();
                              __swift_project_value_buffer(v90, qword_27EEE2AE0);
                              v91 = *(v88 + 16);
                              v91(v29, v59, v87);
                              v91(v89, v59, v87);
                              v92 = sub_24938A38C();
                              v93 = sub_24938A54C();
                              if (!os_log_type_enabled(v92, v93))
                              {

                                v110 = *(v88 + 8);
                                v110(v89, v87);
                                v110(v29, v87);
                                goto LABEL_51;
                              }

                              v94 = swift_slowAlloc();
                              v95 = swift_slowAlloc();
                              v310 = v95;
                              *v94 = 136315906;
                              *(v94 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v310);
                              *(v94 + 12) = 2080;
                              sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
                              v96 = sub_24938A7AC();
                              v297 = v57;
                              v97 = v87;
                              v99 = v98;
                              v100 = *(v88 + 8);
                              v100(v29, v97);
                              v101 = sub_249382D44(v96, v99, &v310);

                              *(v94 + 14) = v101;
                              *(v94 + 22) = 2080;
                              v102 = sub_24938A45C();
                              v104 = sub_249382D44(v102, v103, &v310);

                              *(v94 + 24) = v104;
                              *(v94 + 32) = 2080;
                              v105 = v305;
                              *&v316 = sub_24938A26C();
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2B90, &qword_24938F550);
                              v106 = sub_24938A46C();
                              v108 = v107;
                              v100(v105, v97);
                              v109 = sub_249382D44(v106, v108, &v310);

                              *(v94 + 34) = v109;
                              _os_log_impl(&dword_249340000, v92, v93, "%s notification: %s did not contain expected value for key: %s userInfo: %s", v94, 0x2Au);
                              swift_arrayDestroy();
                              MEMORY[0x24C1F6C70](v95, -1, -1);
                              MEMORY[0x24C1F6C70](v94, -1, -1);

LABEL_49:
LABEL_51:

                              v111 = v307;
                              return sub_249378744(v111, &unk_27EEE2B80, &qword_24938F548);
                            }

LABEL_44:
                            sub_249378744(&v316, &qword_27EEE2B18, &qword_24938F530);
                            goto LABEL_45;
                          }
                        }

                        sub_249377724(&v310);
                      }

                      v316 = 0u;
                      v317 = 0u;
                      goto LABEL_44;
                    }

LABEL_32:
                    sub_249378744(&v316, &qword_27EEE2B18, &qword_24938F530);
                    v70 = 2;
                    goto LABEL_33;
                  }
                }

                sub_249377724(&v310);
              }

              v316 = 0u;
              v317 = 0u;
              goto LABEL_32;
            }

LABEL_22:
            v318 = 0;
            v319 = 0;
            goto LABEL_23;
          }

LABEL_21:
          sub_249378744(&v316, &qword_27EEE2B18, &qword_24938F530);
          goto LABEL_22;
        }
      }

      sub_249377724(&v310);
    }

    v316 = 0u;
    v317 = 0u;
    goto LABEL_21;
  }

  v55 = sub_24938A7BC();

  if (v55)
  {

    goto LABEL_12;
  }

  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v268 = sub_24938A3AC();
  __swift_project_value_buffer(v268, qword_27EEE2AE0);
  (*(v302 + 16))(v42, v303, v304);
  v269 = sub_24938A38C();
  v270 = sub_24938A54C();
  if (os_log_type_enabled(v269, v270))
  {
    v271 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    v310 = v272;
    *v271 = 136315394;
    *(v271 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v310);
    *(v271 + 12) = 2080;
    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v273 = v304;
    v274 = sub_24938A7AC();
    v276 = v275;
    (*(v302 + 8))(v42, v273);
    v277 = sub_249382D44(v274, v276, &v310);

    *(v271 + 14) = v277;
    _os_log_impl(&dword_249340000, v269, v270, "%s unexpected notification: %s", v271, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v272, -1, -1);
    MEMORY[0x24C1F6C70](v271, -1, -1);
  }

  else
  {

    (*(v302 + 8))(v42, v304);
  }

  v310 = 0;
  v311 = 0xE000000000000000;
  sub_24938A66C();

  v310 = 0xD00000000000001ELL;
  v311 = 0x8000000249394020;
  sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
  v278 = sub_24938A7AC();
  MEMORY[0x24C1F5EA0](v278);

  result = sub_24938A70C();
  __break(1u);
  return result;
}

uint64_t sub_249376458@<X0>(uint64_t a1@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2BA0, &qword_24938F558);
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v43 = (&v42 - v3);
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BE0, &qword_24938F578);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2B70, &qword_24938F538);
  v48 = *(v11 - 8);
  v49 = v11;
  result = MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v14;
  v51 = v18;
  if (!v19)
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v34 = v48;
        v29 = v49;
        v33 = v15;
        (*(v48 + 56))(v10, 1, 1, v49);
        v35 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = v10;
        v46 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v44 = v10;
  v46 = a1;
  v20 = v17;
LABEL_11:
  v45 = (v19 - 1) & v19;
  v24 = __clz(__rbit64(v19)) | (v20 << 6);
  v25 = (*(v15 + 48) + 16 * v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = v15;
  (*(v5 + 16))(v7, *(v15 + 56) + *(v5 + 72) * v24, v4);
  v29 = v49;
  v30 = *(v49 + 48);
  v31 = v44;
  *v44 = v26;
  *(v31 + 1) = v27;
  v32 = v4;
  v33 = v28;
  v10 = v31;
  (*(v5 + 32))(&v31[v30], v7, v32);
  v34 = v48;
  (*(v48 + 56))(v10, 0, 1, v29);

  v35 = v45;
  a1 = v46;
  v23 = v20;
LABEL_12:
  *v1 = v33;
  v1[1] = v16;
  v1[2] = v51;
  v1[3] = v23;
  v1[4] = v35;
  if ((*(v34 + 48))(v10, 1, v29) == 1)
  {
    sub_249378744(v10, &qword_27EEE2BE0, &qword_24938F578);
    return (*(v47 + 56))(a1, 1, 1, v50);
  }

  v36 = v10;
  v37 = v42;
  sub_2493787A4(v36, v42, &qword_27EEE2B70, &qword_24938F538);
  v38 = v50;
  v39 = *(v50 + 48);
  v40 = v1[5];
  v41 = v43;
  *v43 = v40;
  result = sub_2493787A4(v37, v41 + v39, &qword_27EEE2B70, &qword_24938F538);
  if (__OFADD__(v40, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v40 + 1;
  sub_2493787A4(v41, a1, &unk_27EEE2BA0, &qword_24938F558);
  return (*(v47 + 56))(a1, 0, 1, v38);
}

uint64_t sub_2493768C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_24938A49C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_24938A49C();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_24938A7BC();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_24938A49C();
      v7 = v9;
    }

    while (v9);
  }

  sub_24938A49C();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_249376B08(void *a1, uint64_t a2)
{
  v3 = sub_24938A27C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  memset(v28, 0, sizeof(v28));
  v10 = a1;

  sub_24938A24C();
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v11 = sub_24938A3AC();
  __swift_project_value_buffer(v11, qword_27EEE2AE0);
  (*(v4 + 16))(v7, v9, v3);
  v12 = sub_24938A38C();
  v13 = sub_24938A53C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v28[0] = v27;
    *v14 = 136315394;
    *(v14 + 4) = sub_249382D44(0xD00000000000003ELL, 0x8000000249394070, v28);
    *(v14 + 12) = 2080;
    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v15 = sub_24938A7AC();
    v16 = v3;
    v18 = v17;
    v26 = v13;
    v19 = *(v4 + 8);
    v19(v7, v16);
    v20 = sub_249382D44(v15, v18, v28);
    v3 = v16;

    *(v14 + 14) = v20;
    _os_log_impl(&dword_249340000, v12, v26, "%s posting notification for download completed: %s", v14, 0x16u);
    v21 = v27;
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v21, -1, -1);
    MEMORY[0x24C1F6C70](v14, -1, -1);
  }

  else
  {

    v19 = *(v4 + 8);
    v19(v7, v3);
  }

  v22 = [objc_opt_self() defaultCenter];
  v23 = sub_24938A22C();
  [v22 postNotification_];

  return (v19)(v9, v3);
}

void sub_249376E78()
{
  v1 = v0;
  v2 = [v0 observers];
  sub_24938A2FC();
  v3 = sub_24938A3FC();

  v4 = *(v3 + 16);

  if (!v4)
  {
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v5 = sub_24938A3AC();
    __swift_project_value_buffer(v5, qword_27EEE2AE0);
    v6 = sub_24938A38C();
    v7 = sub_24938A53C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_249382D44(0xD000000000000036, 0x8000000249393FB0, &v29);
      *(v8 + 12) = 2080;
      v28 = @"DOCSBFolderProgressCompletedDistributedNotification";
      type metadata accessor for Name(0);
      v10 = @"DOCSBFolderProgressCompletedDistributedNotification";
      v11 = sub_24938A46C();
      v13 = sub_249382D44(v11, v12, &v29);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_249340000, v6, v7, "%s starting observing for notification name: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v9, -1, -1);
      MEMORY[0x24C1F6C70](v8, -1, -1);
    }

    else
    {

      v10 = @"DOCSBFolderProgressCompletedDistributedNotification";
    }

    sub_249370B4C(0, &qword_27EEE2CD0, 0x277CCA9A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v14);
    v16 = &selRef_canDisconnect;
    v17 = [ObjCClassFromMetadata defaultCenter];
    v18 = &unk_278F9C000;
    [v17 addObserver:v1 selector:sel__handleDistributedNotification_ name:v10 object:0];

    v19 = sub_24938A38C();
    v20 = sub_24938A53C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_249382D44(0xD000000000000036, 0x8000000249393FB0, &v29);
      *(v21 + 12) = 2080;
      v28 = @"DOCSBFolderDidChangeDistributedNotification";
      type metadata accessor for Name(0);
      v23 = @"DOCSBFolderDidChangeDistributedNotification";
      v24 = sub_24938A46C();
      v26 = sub_249382D44(v24, v25, &v29);
      v16 = &selRef_canDisconnect;

      *(v21 + 14) = v26;
      v18 = &unk_278F9C000;
      _os_log_impl(&dword_249340000, v19, v20, "%s starting observing for notification name: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v22, -1, -1);
      MEMORY[0x24C1F6C70](v21, -1, -1);
    }

    else
    {

      v23 = @"DOCSBFolderDidChangeDistributedNotification";
    }

    v27 = [ObjCClassFromMetadata v16[76]];
    [v27 v18[441]];
  }
}

void sub_2493772BC()
{
  v1 = v0;
  v2 = [v0 observers];
  sub_24938A2FC();
  v3 = sub_24938A3FC();

  v4 = *(v3 + 16);

  if (!v4)
  {
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v5 = sub_24938A3AC();
    __swift_project_value_buffer(v5, qword_27EEE2AE0);
    v6 = sub_24938A38C();
    v7 = sub_24938A53C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_249382D44(0xD000000000000035, 0x8000000249393F70, &v26);
      *(v8 + 12) = 2080;
      type metadata accessor for Name(0);
      v10 = @"DOCSBFolderProgressCompletedDistributedNotification";
      v11 = sub_24938A46C();
      v13 = sub_249382D44(v11, v12, &v26);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_249340000, v6, v7, "%s stopping observing for notification name: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v9, -1, -1);
      MEMORY[0x24C1F6C70](v8, -1, -1);
    }

    sub_249370B4C(0, &qword_27EEE2CD0, 0x277CCA9A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v14);
    v16 = [ObjCClassFromMetadata defaultCenter];
    [v16 removeObserver:v1 name:@"DOCSBFolderDidChangeDistributedNotification" object:0];

    v17 = sub_24938A38C();
    v18 = sub_24938A53C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_249382D44(0xD000000000000035, 0x8000000249393F70, &v26);
      *(v19 + 12) = 2080;
      type metadata accessor for Name(0);
      v21 = @"DOCSBFolderDidChangeDistributedNotification";
      v22 = sub_24938A46C();
      v24 = sub_249382D44(v22, v23, &v26);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_249340000, v17, v18, "%s stopping observing for notification name: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v20, -1, -1);
      MEMORY[0x24C1F6C70](v19, -1, -1);
    }

    v25 = [ObjCClassFromMetadata defaultCenter];
    [v25 removeObserver:v1 name:@"DOCSBFolderDidChangeDistributedNotification" object:0];
  }
}

unint64_t sub_249377778()
{
  result = qword_27EEE2B98;
  if (!qword_27EEE2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE2B98);
  }

  return result;
}

uint64_t sub_2493777D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2493832EC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_249384710(isUniquelyReferenced_nonNull_native, v10);
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_24938A2FC();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a3, v12 + *(v20 + 72) * v8, v13);
    sub_249383E04(v8, v11);
    *v4 = v11;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_24938A2FC();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_249377944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2C00, &qword_24938F588);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24938F510;
  v1 = objc_allocWithZone(DOCSBFolderSortOrder);
  v2 = sub_24938A42C();
  v3 = [v1 initWithSortOrderIdentifier_];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(DOCSBFolderSortOrder);
  v5 = sub_24938A42C();
  v6 = [v4 initWithSortOrderIdentifier_];

  *(v0 + 40) = v6;
  v7 = objc_allocWithZone(DOCSBFolderSortOrder);
  v8 = sub_24938A42C();
  v9 = [v7 initWithSortOrderIdentifier_];

  *(v0 + 48) = v9;
  v10 = objc_allocWithZone(DOCSBFolderSortOrder);
  v11 = sub_24938A42C();
  v12 = [v10 initWithSortOrderIdentifier_];

  *(v0 + 56) = v12;
  v13 = objc_allocWithZone(DOCSBFolderSortOrder);
  v14 = sub_24938A42C();
  v15 = [v13 initWithSortOrderIdentifier_];

  *(v0 + 64) = v15;
  return v0;
}

uint64_t sub_249377B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2C00, &qword_24938F588);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24938F520;
  v1 = objc_allocWithZone(DOCSBFolderDisplayMode);
  v2 = sub_24938A42C();
  v3 = [v1 initWithDisplayModeIdentifier_];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(DOCSBFolderDisplayMode);
  v5 = sub_24938A42C();
  v6 = [v4 initWithDisplayModeIdentifier_];

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_249377BE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v74 = a5;
  v78 = a2;
  v8 = sub_24938A3BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24938A3DC();
  v76 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v75 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24938A2FC();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v14 = MEMORY[0x28223BE20](v68);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v22 = sub_24938A3AC();
  __swift_project_value_buffer(v22, qword_27EEE2AE0);
  v70 = a4;
  sub_249378534(a4, v21, &unk_27EEE2B80, &qword_24938F548);

  v23 = a1;
  v24 = sub_24938A38C();
  v25 = sub_24938A54C();

  v26 = os_log_type_enabled(v24, v25);
  v73 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v65 = v11;
    v28 = v27;
    v64 = swift_slowAlloc();
    *&v81 = v64;
    *v28 = 136315906;
    *(v28 + 4) = sub_249382D44(0xD00000000000003ELL, 0x8000000249394070, &v81);
    v67 = v8;
    *(v28 + 12) = 2080;
    aBlock = v23;
    type metadata accessor for Name(0);
    v66 = v9;
    v29 = v23;
    v30 = sub_24938A46C();
    v32 = sub_249382D44(v30, v31, &v81);

    *(v28 + 14) = v32;
    *(v28 + 22) = 2080;
    aBlock = v78;
    v84 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BB0, &qword_24938F560);
    v33 = sub_24938A46C();
    v35 = sub_249382D44(v33, v34, &v81);

    *(v28 + 24) = v35;
    *(v28 + 32) = 2080;
    sub_249378534(v21, v19, &unk_27EEE2B80, &qword_24938F548);
    v36 = sub_24938A46C();
    v38 = v37;
    v9 = v66;
    sub_249378744(v21, &unk_27EEE2B80, &qword_24938F548);
    v39 = sub_249382D44(v36, v38, &v81);
    v8 = v67;

    *(v28 + 34) = v39;
    _os_log_impl(&dword_249340000, v24, v25, "%s request to post notification: %s identifier: %s url: %s", v28, 0x2Au);
    v40 = v64;
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v40, -1, -1);
    v41 = v28;
    v11 = v65;
    MEMORY[0x24C1F6C70](v41, -1, -1);
  }

  else
  {

    sub_249378744(v21, &unk_27EEE2B80, &qword_24938F548);
  }

  v42 = MEMORY[0x277D84F90];
  v43 = sub_249384E8C(MEMORY[0x277D84F90]);
  if (a3)
  {
    *&v81 = sub_24938A45C();
    *(&v81 + 1) = v44;

    v45 = MEMORY[0x277D837D0];
    sub_24938A64C();
    v82 = v45;
    *&v81 = v78;
    *(&v81 + 1) = a3;
    sub_2493786D0(&v81, v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v43;
    sub_249384320(v80, &aBlock, isUniquelyReferenced_nonNull_native);
    sub_249377724(&aBlock);
    v43 = v79;
  }

  sub_249378534(v70, v16, &unk_27EEE2B80, &qword_24938F548);
  v47 = v71;
  v48 = v72;
  if ((*(v71 + 48))(v16, 1, v72) == 1)
  {
    sub_249378744(v16, &unk_27EEE2B80, &qword_24938F548);
  }

  else
  {
    v49 = v69;
    (*(v47 + 32))(v69, v16, v48);
    *&v81 = sub_24938A45C();
    *(&v81 + 1) = v50;
    sub_24938A64C();
    v82 = v48;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v81);
    (*(v47 + 16))(boxed_opaque_existential_0, v49, v48);
    sub_2493786D0(&v81, v80);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v43;
    sub_249384320(v80, &aBlock, v52);
    sub_249377724(&aBlock);
    (*(v47 + 8))(v49, v48);
    v43 = v79;
  }

  if (v74 != 2 && (v74 & 1) != 0)
  {
    *&v81 = sub_24938A45C();
    *(&v81 + 1) = v53;
    sub_24938A64C();
    v82 = MEMORY[0x277D839B0];
    LOBYTE(v81) = 1;
    sub_2493786D0(&v81, v80);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v43;
    sub_249384320(v80, &aBlock, v54);
    sub_249377724(&aBlock);
    v43 = v79;
  }

  sub_249370B4C(0, &qword_27EEE2BC0, 0x277D85C78);
  v55 = sub_24938A59C();
  v56 = swift_allocObject();
  v57 = v73;
  *(v56 + 16) = v73;
  *(v56 + 24) = v43;
  v87 = sub_249378668;
  v88 = v56;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_249378924;
  v86 = &block_descriptor;
  v58 = _Block_copy(&aBlock);
  v59 = v57;

  v60 = v75;
  sub_24938A3CC();
  aBlock = v42;
  sub_24937880C(&qword_27EEE2BC8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BD0, &qword_24938F570);
  sub_249378854(&qword_27EEE2BD8, &qword_27EEE2BD0, &qword_24938F570);
  v61 = v77;
  sub_24938A60C();
  MEMORY[0x24C1F5FC0](0, v60, v61, v58);
  _Block_release(v58);

  (*(v9 + 8))(v61, v8);
  return (*(v76 + 8))(v60, v11);
}

uint64_t sub_249378534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24937859C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24937860C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

_OWORD *sub_2493786D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_249378744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2493787A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24937880C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249378854(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_249378924(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2493789F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_24938A51C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_249378D2C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_24938A66C();
    MEMORY[0x24C1F5EA0](0xD00000000000003FLL, 0x80000002493944B0);
    v12 = sub_24938A85C();
    MEMORY[0x24C1F5EA0](v12);

    MEMORY[0x24C1F5EA0](46, 0xE100000000000000);
    result = sub_24938A70C();
    __break(1u);
  }

  return result;
}

void sub_249378BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v13[4] = a4;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_249378924;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  a6(v12);
  _Block_release(v12);
}

uint64_t sub_249378C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24938A52C();
  v9[2] = a1;
  v9[3] = a2;
  return sub_2493789F0(a3, v9, "DocumentManagerCore/DOCDocumentManagerCoreUtilities.swift", 57, 2u, a4);
}

uint64_t sub_249378F84@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24938A37C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CD8, &qword_24938F5A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = *(v2 + OBJC_IVAR___DOCSBRecentItem_backingNode);
  if (v11)
  {
    v12 = [v11 contentType];
    sub_24938A33C();

    v13 = *(v5 + 32);
    v13(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    return (v13)(a2, v10, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    sub_24938A34C();
    result = (*(v5 + 48))(v10, 1, v4);
    if (result != 1)
    {
      return sub_249378744(v10, &qword_27EEE2CD8, &qword_24938F5A8);
    }
  }

  return result;
}

uint64_t sub_24937917C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_24938A2DC();
    v10 = sub_24938A2FC();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_24938A2FC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_249378744(v8, &unk_27EEE2B80, &qword_24938F548);
}

void sub_24937933C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24937CE94(a1, &v10 - v5);
  v7 = sub_24938A2FC();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = sub_24938A2CC();
    (*(v8 + 8))(v6, v7);
  }

  (*(a2 + 16))(a2, v9);
}

id sub_2493794E0()
{
  result = [objc_allocWithZone(DOCSBRecentItemsList) init];
  qword_2810E1B40 = result;
  return result;
}

id sub_249379590()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136316162;
    *(v5 + 4) = sub_249382D44(0xD000000000000010, 0x8000000249394860, &v19);
    *(v5 + 12) = 2080;
    v7 = [v2 _recentsQueryCollection];
    v8 = [v7 description];
    v9 = sub_24938A45C();
    v11 = v10;

    v12 = sub_249382D44(v9, v11, &v19);

    *(v5 + 14) = v12;
    *(v5 + 22) = 1024;
    v13 = [v2 _recentsQueryCollection];
    LODWORD(v8) = [v13 isGathering];

    *(v5 + 24) = v8;
    *(v5 + 28) = 1024;
    LODWORD(v13) = [v2 _isObserving];

    *(v5 + 30) = v13;
    *(v5 + 34) = 2080;
    v18 = [v2 _recentsCollectionExpirationTimer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC8, &qword_24938F5A0);
    v14 = sub_24938A46C();
    v16 = sub_249382D44(v14, v15, &v19);

    *(v5 + 36) = v16;
    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %{BOOL}d isObserving: %{BOOL}d expirationTimer: %s", v5, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v6, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  else
  {
  }

  [v2 _startObservingRecentsCollection];
  return [v2 _registerForDistributedNotification];
}

id sub_2493798BC()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136316162;
    *(v5 + 4) = sub_249382D44(0x6573624F706F7473, 0xEF2928676E697672, &v19);
    *(v5 + 12) = 2080;
    v7 = [v2 _recentsQueryCollection];
    v8 = [v7 description];
    v9 = sub_24938A45C();
    v11 = v10;

    v12 = sub_249382D44(v9, v11, &v19);

    *(v5 + 14) = v12;
    *(v5 + 22) = 1024;
    v13 = [v2 _recentsQueryCollection];
    LODWORD(v8) = [v13 isGathering];

    *(v5 + 24) = v8;
    *(v5 + 28) = 1024;
    LODWORD(v13) = [v2 _isObserving];

    *(v5 + 30) = v13;
    *(v5 + 34) = 2080;
    v18 = [v2 _recentsCollectionExpirationTimer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC8, &qword_24938F5A0);
    v14 = sub_24938A46C();
    v16 = sub_249382D44(v14, v15, &v19);

    *(v5 + 36) = v16;
    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %{BOOL}d isObserving: %{BOOL}d expirationTimer: %s", v5, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v6, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  else
  {
  }

  return [v2 _stopObservingRecentsCollection];
}

id sub_249379D04()
{
  v1 = OBJC_IVAR___DOCSBRecentItemsList____lazy_storage____recentsQueryCollection;
  v2 = *(v0 + OBJC_IVAR___DOCSBRecentItemsList____lazy_storage____recentsQueryCollection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCSBRecentItemsList____lazy_storage____recentsQueryCollection);
  }

  else
  {
    v4 = [objc_opt_self() defaultManager];
    v5 = [v4 newRecentsCollection];

    [v5 setDelegate_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_249379DFC()
{
  v1 = v0;
  v2 = sub_24938A42C();
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v3 = sub_24938A3AC();
  __swift_project_value_buffer(v3, qword_27EEE2AE0);
  v4 = v2;
  v5 = sub_24938A38C();
  v6 = sub_24938A53C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_249382D44(0xD000000000000025, 0x8000000249394830, &v15);
    *(v7 + 12) = 2080;
    type metadata accessor for Name(0);
    v9 = v4;
    v10 = sub_24938A46C();
    v12 = sub_249382D44(v10, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_249340000, v5, v6, "%s starting observing for notification name: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v8, -1, -1);
    MEMORY[0x24C1F6C70](v7, -1, -1);
  }

  sub_249370B4C(0, &qword_27EEE2CD0, 0x277CCA9A0);
  v14 = [swift_getObjCClassFromMetadata(v13) defaultCenter];
  [v14 addObserver:v1 selector:sel__handleDistributedNotification_ name:v4 object:0];
}

void sub_24937A0DC()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v5 = 136316162;
    *(v5 + 4) = sub_249382D44(0xD000000000000022, 0x80000002493947D0, aBlock);
    *(v5 + 12) = 2080;
    v6 = [v2 _recentsQueryCollection];
    v7 = [v6 description];
    v8 = sub_24938A45C();
    v10 = v9;

    v11 = sub_249382D44(v8, v10, aBlock);

    *(v5 + 14) = v11;
    *(v5 + 22) = 1024;
    v12 = [v2 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    LODWORD(v7) = [v12 isGathering];

    *(v5 + 24) = v7;
    *(v5 + 28) = 1024;
    LODWORD(v12) = [v2 _isObserving];

    *(v5 + 30) = v12;
    *(v5 + 34) = 2080;
    v25 = [v2 _recentsCollectionExpirationTimer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC8, &qword_24938F5A0);
    v13 = sub_24938A46C();
    v15 = sub_249382D44(v13, v14, aBlock);

    *(v5 + 36) = v15;
    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %{BOOL}d isObserving: %{BOOL}d expirationTimer: %s", v5, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v24, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  else
  {
  }

  v16 = [v2 _recentsCollectionExpirationTimer];
  [v16 invalidate];

  v17 = objc_opt_self();
  [v2 _recentsCollectionExpirationInterval];
  v19 = v18;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24937CDC8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24937A824;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);

  v22 = [v17 scheduledTimerWithTimeInterval:0 repeats:v21 block:v19];
  _Block_release(v21);
  [v2 set:v22 recentsCollectionExpirationTimer:?];

  if (([v2 _isObserving] & 1) == 0)
  {
    [v2 set:1 isObserving:?];
    v23 = [v2 _recentsQueryCollection];
    [v23 startObserving];
  }
}

void sub_24937A528(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v4 = sub_24938A3AC();
    __swift_project_value_buffer(v4, qword_27EEE2AE0);
    v5 = v3;
    v6 = sub_24938A38C();
    v7 = sub_24938A53C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136316162;
      *(v8 + 4) = sub_249382D44(0xD000000000000022, 0x80000002493947D0, &v20);
      *(v8 + 12) = 2080;
      v10 = [v5 _recentsQueryCollection];
      v11 = [v10 description];
      v12 = sub_24938A45C();
      v14 = v13;

      v15 = sub_249382D44(v12, v14, &v20);

      *(v8 + 14) = v15;
      *(v8 + 22) = 1024;
      v16 = [v5 _recentsQueryCollection];
      LODWORD(v11) = [v16 isGathering];

      *(v8 + 24) = v11;
      *(v8 + 28) = 1024;
      LODWORD(v16) = [v5 _isObserving];

      *(v8 + 30) = v16;
      *(v8 + 34) = 2080;
      [v5 _recentsCollectionExpirationTimer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC8, &qword_24938F5A0);
      v17 = sub_24938A46C();
      v19 = sub_249382D44(v17, v18, &v20);

      *(v8 + 36) = v19;
      _os_log_impl(&dword_249340000, v6, v7, "%s Timer expired. recentsCollection: %s gathering: %{BOOL}d isObserving: %{BOOL}d expirationTimer: %s", v8, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v9, -1, -1);
      MEMORY[0x24C1F6C70](v8, -1, -1);
    }

    else
    {
    }

    [v5 _stopObservingRecentsCollection];
  }
}

void sub_24937A824(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_24937A8D4()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  v5 = &unk_24938F000;
  v6 = &selRef_canDisconnect;
  v7 = &unk_278F9C000;
  v8 = &unk_278F9C000;
  if (os_log_type_enabled(v3, v4))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v9 = 136316418;
    *(v9 + 4) = sub_249382D44(0xD000000000000021, 0x8000000249394780, &v46);
    *(v9 + 12) = 2080;
    v11 = [v2 _recentsQueryCollection];
    v12 = [v11 description];
    v13 = sub_24938A45C();
    v15 = v14;

    v16 = sub_249382D44(v13, v15, &v46);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    v17 = [v2 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    *(v9 + 24) = v17;
    *v10 = v17;
    *(v9 + 32) = 1024;
    LODWORD(v15) = [v2 _isObserving];

    *(v9 + 34) = v15;
    *(v9 + 38) = 2112;
    v18 = [v2 _recentsCollectionExpirationTimer];
    *(v9 + 40) = v18;
    v10[1] = v18;
    *(v9 + 48) = 2048;
    v19 = [v2 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    v20 = [v19 items];

    sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
    v21 = sub_24938A4FC();

    if (v21 >> 62)
    {
      v22 = sub_24938A71C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 50) = v22;

    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %@ isObserving: %{BOOL}d expirationTimer: %@ itemCount: %ld", v9, 0x3Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC0, &qword_24938F598);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v44, -1, -1);
    MEMORY[0x24C1F6C70](v9, -1, -1);

    v8 = &unk_278F9C000;
    v7 = &unk_278F9C000;
    v6 = &selRef_canDisconnect;
    v5 = &unk_24938F000;
  }

  else
  {
  }

  if ([v2 v7[361]])
  {
    [v2 set:0 isObserving:?];
    v23 = [v2 _recentsQueryCollection];
    [v23 stopObserving];

    v24 = [v2 v8[363]];
    [v24 invalidate];

    [v2 set:0 recentsCollectionExpirationTimer:?];
  }

  v45 = v2;
  oslog = sub_24938A38C();
  v25 = sub_24938A53C();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v26 = v5[178];
    *(v26 + 4) = sub_249382D44(0xD000000000000021, 0x8000000249394780, &v46);
    *(v26 + 12) = 2080;
    v29 = [v45 _recentsQueryCollection];
    v30 = [v29 v6[84]];
    v31 = v7;
    v32 = sub_24938A45C();
    v34 = v33;

    v35 = sub_249382D44(v32, v34, &v46);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2112;
    v36 = [v45 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    *(v26 + 24) = v36;
    *v27 = v36;
    *(v26 + 32) = 1024;
    LODWORD(v35) = [v45 v31 + 17];

    *(v26 + 34) = v35;
    *(v26 + 38) = 2112;
    v37 = [v45 _recentsCollectionExpirationTimer];
    *(v26 + 40) = v37;
    v27[1] = v37;
    *(v26 + 48) = 2048;
    v38 = [v45 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    v39 = [v38 items];

    sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
    v40 = sub_24938A4FC();

    if (v40 >> 62)
    {
      v41 = sub_24938A71C();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 50) = v41;

    _os_log_impl(&dword_249340000, oslog, v25, "%s recentsCollection: %s gathering: %@ isObserving: %{BOOL}d expirationTimer: %@ itemCount: %ld", v26, 0x3Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC0, &qword_24938F598);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v28, -1, -1);
    MEMORY[0x24C1F6C70](v26, -1, -1);
    v42 = oslog;
  }

  else
  {

    v42 = v45;
  }
}

id sub_24937B018(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24938A27C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v8 = sub_24938A3AC();
  __swift_project_value_buffer(v8, qword_27EEE2AE0);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_24938A38C();
  v10 = sub_24938A53C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v19);
    *(v11 + 12) = 2080;
    sub_24937CDE8(&qword_27EEE2CB0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v13 = sub_24938A7AC();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_249382D44(v13, v15, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_249340000, v9, v10, "%s received notification: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v12, -1, -1);
    MEMORY[0x24C1F6C70](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return [v2 _startObservingRecentsCollection];
}

id sub_24937B470(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_24938A42C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_24938A2AC();

    swift_willThrow();
  }

  return v6;
}

void sub_24937B54C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2C00, &qword_24938F588);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_24937B640(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24937B660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24937B660(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2CF0, &unk_24938F5B0);
  v10 = *(sub_24938A37C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24938A37C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24937B838(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24937B8E4(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = *(a1 + OBJC_IVAR___DOCSBRecentItem_backingNode);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_24937CE8C;
    *(v12 + 24) = v10;
    aBlock[4] = sub_24937CF04;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24937917C;
    aBlock[3] = &block_descriptor_13;
    v13 = _Block_copy(aBlock);
    _Block_copy(a2);
    swift_unknownObjectRetain();

    [v11 fetchURL_];
    _Block_release(v13);

    return swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_24938A2FC();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v9, 1, 1, v15);
    sub_24937CE94(v9, v7);
    v17 = (*(v16 + 48))(v7, 1, v15);
    _Block_copy(a2);
    v18 = 0;
    if (v17 != 1)
    {
      v18 = sub_24938A2CC();
      (*(v16 + 8))(v7, v15);
    }

    (a2)[2](a2, v18);

    sub_249378744(v9, &unk_27EEE2B80, &qword_24938F548);
  }
}

void sub_24937BBB0(uint64_t a1, uint64_t a2, int64_t a3, void (**a4)(char *, char *, uint64_t), uint64_t a5)
{
  v73 = a5;
  v74 = a3;
  v77 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CD8, &qword_24938F5A8);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = v72 - v6;
  v7 = sub_24938A37C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v75 = v72 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v86 = (v72 - v15);
  MEMORY[0x28223BE20](v14);
  v78 = (v72 - v16);
  v17 = sub_24938A42C();
  v18 = DOCContentTypesReadableByApplicationWithBundleIdentifier(v17);

  v19 = sub_24938A4FC();
  v20 = MEMORY[0x277D84F90];
  v85 = *(v19 + 16);
  if (v85)
  {
    v84 = v11;
    v21 = 0;
    v82 = v19;
    v83 = v8 + 16;
    v22 = v8 + 8;
    v81 = (v8 + 32);
    v23 = v78;
    do
    {
      if (v21 >= *(v19 + 16))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v87 = ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v24 = *(v8 + 72);
      (*(v8 + 16))(v23, &v87[v19 + v24 * v21], v7);
      v25 = v22;
      v26 = v86;
      sub_24938A35C();
      sub_24937CDE8(&unk_27EEE2CE0, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      v27 = v23;
      v28 = sub_24938A41C();
      v29 = *(v8 + 8);
      v30 = v26;
      v22 = v25;
      v29(v30, v7);
      if (v28)
      {
        v29(v27, v7);
        v23 = v27;
        v19 = v82;
      }

      else
      {
        v31 = *v81;
        (*v81)(v84, v27, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v20;
        v80 = v31;
        if (isUniquelyReferenced_nonNull_native)
        {
          v23 = v27;
        }

        else
        {
          sub_24937B640(0, *(v20 + 16) + 1, 1);
          v23 = v78;
          v20 = v88;
        }

        v19 = v82;
        v34 = *(v20 + 16);
        v33 = *(v20 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_24937B640((v33 > 1), v34 + 1, 1);
          v23 = v78;
          v20 = v88;
        }

        *(v20 + 16) = v34 + 1;
        (v80)(&v87[v20 + v34 * v24], v84, v7);
      }

      ++v21;
    }

    while (v85 != v21);
  }

  v35 = [v77 _recentsQueryCollection];
  v23 = [v35 items];

  v72[1] = sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
  v36 = sub_24938A4FC();

  v88 = MEMORY[0x277D84F90];
  v76 = v36;
  if (v36 >> 62)
  {
    goto LABEL_34;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v75; v37; i = v75)
  {
    v39 = 0;
    v82 = v76 & 0xFFFFFFFFFFFFFF8;
    v83 = v76 & 0xC000000000000001;
    v80 = v37;
    v81 = (v76 + 32);
    v85 = v8 + 16;
    v77 = (v8 + 32);
    v78 = (v8 + 56);
    while (1)
    {
      if (v83)
      {
        v41 = MEMORY[0x24C1F60A0](v39, v76);
      }

      else
      {
        if (v39 >= *(v82 + 16))
        {
          goto LABEL_33;
        }

        v41 = v81[v39];
      }

      v87 = v41;
      v42 = __OFADD__(v39, 1);
      v43 = (v39 + 1);
      if (v42)
      {
        break;
      }

      v84 = v43;
      v44 = *(v20 + 16);
      if (v44)
      {
        v45 = 0;
        while (v45 < *(v20 + 16))
        {
          v46 = v20;
          (*(v8 + 16))(i, v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v45, v7);
          v47 = [v87 contentType];
          v23 = v86;
          sub_24938A33C();

          v48 = sub_24938A36C();
          v49 = *(v8 + 8);
          v49(v23, v7);
          if (v48)
          {
            v50 = v79;
            (*v77)(v79, i, v7);
            (*v78)(v50, 0, 1, v7);
            sub_249378744(v50, &qword_27EEE2CD8, &qword_24938F5A8);
            v23 = &v88;
            sub_24938A6AC();
            sub_24938A6DC();
            sub_24938A6EC();
            sub_24938A6BC();
            v20 = v46;
            goto LABEL_17;
          }

          ++v45;
          v49(i, v7);
          v20 = v46;
          if (v44 == v45)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_16:

      v40 = v79;
      (*v78)(v79, 1, 1, v7);
      sub_249378744(v40, &qword_27EEE2CD8, &qword_24938F5A8);
LABEL_17:
      v39 = v84;
      if (v84 == v80)
      {
        goto LABEL_35;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v37 = sub_24938A71C();
  }

LABEL_35:

  v51 = v88;
  if (v88 < 0)
  {
    v52 = 1;
  }

  else
  {
    v52 = (v88 >> 62) & 1;
  }

  if (v52)
  {
    v53 = sub_24938A71C();
  }

  else
  {
    v53 = *(v88 + 16);
  }

  v54 = v74;
  if (v53 < v74)
  {
    goto LABEL_65;
  }

  if (v74 < 0)
  {
    goto LABEL_78;
  }

  if (v52)
  {
    if (sub_24938A71C() < 0)
    {
      goto LABEL_80;
    }

    v55 = sub_24938A71C();
  }

  else
  {
    v55 = *(v51 + 16);
  }

  if (v55 < v54)
  {
    goto LABEL_79;
  }

  if ((v51 & 0xC000000000000001) != 0)
  {

    if (v54)
    {
      v56 = 0;
      do
      {
        v57 = v56 + 1;
        sub_24938A67C();
        v56 = v57;
      }

      while (v54 != v57);
    }
  }

  else
  {
  }

  if (v52)
  {
    v58 = sub_24938A72C();
    v23 = v59;
    v52 = v60;
    v54 = v61;

    v51 = v58;
    if ((v54 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v52 = 0;
    v23 = (v51 + 32);
    v54 = (2 * v54) | 1;
    if ((v54 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  sub_24938A7CC();
  swift_unknownObjectRetain_n();
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
    v64 = MEMORY[0x277D84F90];
  }

  v65 = *(v64 + 16);

  if (__OFSUB__(v54 >> 1, v52))
  {
    goto LABEL_81;
  }

  if (v65 != (v54 >> 1) - v52)
  {
    goto LABEL_82;
  }

  v63 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v63)
  {
    swift_unknownObjectRelease();
    v63 = MEMORY[0x277D84F90];
  }

  while (1)
  {
    swift_unknownObjectRelease();
    v51 = v63;
LABEL_65:
    v52 = v51 >> 62 ? sub_24938A71C() : *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      break;
    }

    v88 = MEMORY[0x277D84F90];
    v23 = &v88;
    sub_24938A6CC();
    if ((v52 & 0x8000000000000000) == 0)
    {
      v66 = 0;
      do
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x24C1F60A0](v66, v51);
        }

        else
        {
          v67 = *(v51 + 8 * v66 + 32);
        }

        v68 = v67;
        ++v66;
        v69 = [objc_allocWithZone(DOCSBRecentItem) init];
        *&v69[OBJC_IVAR___DOCSBRecentItem_backingNode] = v68;
        swift_unknownObjectRelease();
        sub_24938A6AC();
        sub_24938A6DC();
        sub_24938A6EC();
        sub_24938A6BC();
      }

      while (v52 != v66);
      break;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    swift_unknownObjectRelease_n();
LABEL_57:
    sub_24937B54C(v51, v23, v52, v54);
    v63 = v62;
  }

  type metadata accessor for DOCSBRecentItem(v70);
  v71 = sub_24938A4EC();
  (*(v73 + 16))(v73, v71);
}

uint64_t sub_24937C540(uint64_t a1, uint64_t a2)
{
  v4 = sub_24938A37C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v14 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v15 = sub_24937B470(a1, a2, 0);
  if (!v15)
  {
    goto LABEL_24;
  }

  v49 = v15;
  if (([v15 supportsOpenInPlace] & 1) == 0)
  {
    goto LABEL_23;
  }

  v46 = 0;
  if (sub_24938A45C() == a1 && v16 == a2)
  {

LABEL_24:
    v37 = 0;
    return v37 & 1;
  }

  v18 = a1;
  v19 = sub_24938A7BC();

  if (v19)
  {
LABEL_23:

    goto LABEL_24;
  }

  v44 = v18;
  v45 = a2;
  v20 = sub_24938A42C();
  v21 = DOCContentTypesReadableByApplicationWithBundleIdentifier(v20);

  v22 = sub_24938A4FC();
  result = v22;
  v54 = *(v22 + 16);
  if (!v54)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_21:

    v33 = *(v25 + 16);

    if (v33)
    {
      v34 = objc_opt_self();
      v35 = [v34 sharedManager];
      v36 = [v35 isFilesAppLocked];

      if (!v36)
      {
        v38 = [v34 sharedManager];
        v39 = [v38 protectedApplicationBundleIDs];

        v40 = sub_24938A4FC();
        v56[0] = v44;
        v56[1] = v45;
        MEMORY[0x28223BE20](v41);
        *(&v43 - 2) = v56;
        v42 = sub_24937B838(sub_24937CE34, (&v43 - 4), v40);

        v37 = v42 ^ 1;
        return v37 & 1;
      }
    }

    goto LABEL_23;
  }

  v24 = 0;
  v50 = (v5 + 32);
  v51 = v5 + 16;
  v25 = MEMORY[0x277D84F90];
  v47 = v5 + 8;
  v48 = v5;
  v52 = result;
  v53 = v8;
  while (v24 < *(result + 16))
  {
    v55 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26 = *(v5 + 72);
    (*(v5 + 16))(v13, result + v55 + v26 * v24, v4);
    sub_24938A35C();
    sub_24937CDE8(&unk_27EEE2CE0, MEMORY[0x277D85578], MEMORY[0x277D85590]);
    v27 = sub_24938A41C();
    v28 = *(v5 + 8);
    v28(v11, v4);
    if (v27)
    {
      v28(v13, v4);
    }

    else
    {
      v29 = *v50;
      (*v50)(v53, v13, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56[0] = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24937B640(0, *(v25 + 16) + 1, 1);
        v25 = v56[0];
      }

      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_24937B640((v31 > 1), v32 + 1, 1);
        v25 = v56[0];
      }

      *(v25 + 16) = v32 + 1;
      v29((v25 + v55 + v32 * v26), v53, v4);
      v5 = v48;
    }

    ++v24;
    result = v52;
    if (v54 == v24)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

id _sSo20DOCSBRecentItemsListC19DocumentManagerCoreE4data29forCollectionShouldBeReloadedySo06FPItemI0C_tF_0()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v5 = 136316418;
    *(v5 + 4) = sub_249382D44(0xD000000000000024, 0x80000002493948A0, &v21);
    *(v5 + 12) = 2080;
    v7 = [v2 _recentsQueryCollection];
    v8 = [v7 description];
    v9 = sub_24938A45C();
    v11 = v10;

    v12 = sub_249382D44(v9, v11, &v21);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2112;
    v13 = [v2 _recentsQueryCollection];
    *(v5 + 24) = v13;
    *v6 = v13;
    *(v5 + 32) = 1024;
    LODWORD(v12) = [v2 _isObserving];

    *(v5 + 34) = v12;
    *(v5 + 38) = 2112;
    v14 = [v2 _recentsCollectionExpirationTimer];
    *(v5 + 40) = v14;
    v6[1] = v14;
    *(v5 + 48) = 2048;
    v15 = [v2 _recentsQueryCollection];
    v16 = [v15 items];

    sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
    v17 = sub_24938A4FC();

    if (v17 >> 62)
    {
      v18 = sub_24938A71C();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 50) = v18;

    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %@ isObserving: %{BOOL}d expirationTimer: %@ itemCount: %ld", v5, 0x3Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC0, &qword_24938F598);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v20, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  else
  {
  }

  return [v2 _startObservingRecentsCollection];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24937CDE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24937CE34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24938A7BC() & 1;
  }
}

uint64_t sub_24937CE94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24937CF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_24938446C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2493832EC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_249384B34();
        v14 = v16;
      }

      result = sub_249383FF0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_24937D1BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620);
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v54 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v48 - v5;
  v6 = sub_24938A2FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = OBJC_IVAR___DOCSBFolderState_orderedFiles;
  v10 = *&v1[OBJC_IVAR___DOCSBFolderState_orderedFiles];
  v11 = *(v10 + 16);
  if (v11)
  {
    v49 = v1;
    v12 = objc_opt_self();
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v13 = v15;
    v16 = v10 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v58 = *(v14 + 56);
    v59 = v12;
    v57 = (v14 - 8);
    v48 = v10;

    v17 = MEMORY[0x277D84F90];
    v52 = v15;
    v53 = v14;
    v51 = v9;
    do
    {
      v13(v9, v16, v6);
      v18 = sub_24938A2CC();
      v19 = [v59 fiNodeFromURL_];

      if (v19)
      {
        v20 = *(v56 + 48);
        v21 = v13;
        v22 = v54;
        v21(v54, v9, v6);
        v23 = [v19 thumbnailIdentifier];

        (*v57)(v9, v6);
        *(v22 + v20) = v23;
        sub_2493787A4(v22, v60, &qword_27EEE2DB0, &qword_24938F620);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_24938297C(0, v17[2] + 1, 1, v17);
        }

        v25 = v17[2];
        v24 = v17[3];
        v9 = v51;
        v13 = v52;
        if (v25 >= v24 >> 1)
        {
          v17 = sub_24938297C((v24 > 1), v25 + 1, 1, v17);
        }

        v17[2] = v25 + 1;
        sub_2493787A4(v60, v17 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v25, &qword_27EEE2DB0, &qword_24938F620);
      }

      else
      {
        (*v57)(v9, v6);
      }

      v16 += v58;
      --v11;
    }

    while (v11);

    v1 = v49;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs] = v17;

  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v26 = sub_24938A3AC();
  __swift_project_value_buffer(v26, qword_27EEE2AE0);
  v27 = v1;
  v28 = sub_24938A38C();
  v29 = sub_24938A53C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v6;
    v32 = swift_slowAlloc();
    v61 = v32;
    *v30 = 136315906;
    *(v30 + 4) = sub_249382D44(0x466465726564726FLL, 0xEC00000073656C69, &v61);
    *(v30 + 12) = 2080;
    v33 = [v27 folderIdentifier];
    v34 = sub_24938A45C();
    v36 = v35;

    v37 = sub_249382D44(v34, v36, &v61);

    *(v30 + 14) = v37;
    *(v30 + 22) = 2080;

    v39 = MEMORY[0x24C1F5F20](v38, v31);
    v41 = v40;

    v42 = sub_249382D44(v39, v41, &v61);

    *(v30 + 24) = v42;
    *(v30 + 32) = 2080;

    v44 = MEMORY[0x24C1F5F20](v43, v56);
    v46 = v45;

    v47 = sub_249382D44(v44, v46, &v61);

    *(v30 + 34) = v47;
    _os_log_impl(&dword_249340000, v28, v29, "%s %s SET orderedFiles: %s UPDATED orderedFileIdentifierPairs: %s", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v32, -1, -1);
    MEMORY[0x24C1F6C70](v30, -1, -1);
  }
}

uint64_t sub_24937DB50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620);
  v114 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v117 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB8, &qword_24938F628);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v106 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DC0, &qword_24938F630);
  MEMORY[0x28223BE20](v8 - 8);
  v118 = &v106 - v9;
  v121 = 0;
  v10 = sub_24938A2FC();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEE28C0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v14 = sub_24938A3AC();
  v15 = __swift_project_value_buffer(v14, qword_27EEE2AE0);
  v16 = v1;

  v110 = v15;
  v17 = sub_24938A38C();
  LODWORD(v15) = sub_24938A53C();

  LODWORD(v119) = v15;
  v120 = v17;
  v18 = os_log_type_enabled(v17, v15);
  v19 = &unk_278F9C000;
  v113 = v13;
  if (v18)
  {
    v13 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v122 = v116;
    *v13 = 136316162;
    *(v13 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394C00, &v122);
    *(v13 + 12) = 2080;
    v20 = [v16 folderIdentifier];
    v21 = sub_24938A45C();
    v115 = v7;
    v22 = v21;
    v24 = v23;

    v25 = sub_249382D44(v22, v24, &v122);

    *(v13 + 14) = v25;
    *(v13 + 22) = 2080;
    v26 = [v16 orderedFiles];
    v27 = sub_24938A4FC();

    v28 = MEMORY[0x24C1F5F20](v27, v10);
    v30 = v29;

    v31 = sub_249382D44(v28, v30, &v122);

    *(v13 + 24) = v31;
    *(v13 + 32) = 2080;
    v32 = MEMORY[0x24C1F5F20](a1, v10);
    v34 = sub_249382D44(v32, v33, &v122);

    *(v13 + 34) = v34;
    *(v13 + 42) = 2080;

    v36 = MEMORY[0x24C1F5F20](v35, v3);
    v38 = v37;

    v39 = v36;
    v19 = &unk_278F9C000;
    v40 = sub_249382D44(v39, v38, &v122);
    v7 = v115;

    *(v13 + 44) = v40;
    v41 = v120;
    _os_log_impl(&dword_249340000, v120, v119, "1. %s %s orderedFiles: %s otherOrderedFiles: %s orderedFileIdentifierPairs: %s", v13, 0x34u);
    v42 = v116;
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v42, -1, -1);
    MEMORY[0x24C1F6C70](v13, -1, -1);
  }

  else
  {
  }

  v43 = [v16 v19[379]];
  v44 = sub_24938A4FC();

  LOBYTE(v43) = sub_24937E77C(a1, v44);

  if (v43)
  {
    v107 = v10;
    v45 = *(a1 + 16);
    v46 = MEMORY[0x277D84F90];
    v116 = v3;
    v108 = v16;
    v109 = a1;
    if (v45)
    {
      v115 = v7;
      v122 = MEMORY[0x277D84F90];
      sub_24938A6CC();
      v47 = objc_opt_self();
      v49 = *(v11 + 16);
      v48 = (v11 + 16);
      v119 = v49;
      v120 = v47;
      v13 = a1 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
      v50 = v48[7];
      v51 = v107;
      v52 = v113;
      do
      {
        (v119)(v52, v13, v51);
        v53 = sub_24938A2CC();
        v54 = [v120 fiNodeFromURL:v53];

        (*(v48 - 1))(v52, v51);
        sub_24938A6AC();
        sub_24938A6DC();
        sub_24938A6EC();
        sub_24938A6BC();
        v13 += v50;
        --v45;
      }

      while (v45);
      v46 = v122;
      v7 = v115;
      v3 = v116;
      v16 = v108;
    }

    v106 = OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs;
    v1 = *(*&v16[OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs] + 16);
    a1 = v46[2];
    v112 = *&v16[OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs];
    v113 = v46;
    v111 = (v46 + 4);
    v119 = (v114 + 48);
    v120 = (v114 + 56);

    v55 = 0;
    v11 = 0;
    v10 = &qword_24938F620;
    v115 = v1;
    while (1)
    {
      v56 = v118;
      if (v11 == v1)
      {
        v57 = 1;
        v11 = v1;
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v11 >= *(v112 + 16))
        {
          goto LABEL_39;
        }

        sub_249378534(v112 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v11, v118, &qword_27EEE2DB0, &qword_24938F620);
        v57 = 0;
        ++v11;
      }

      (v120->isa)(v56, v57, 1, v3);
      if (v55 == a1)
      {
        v13 = 1;
        v55 = a1;
      }

      else
      {
        if (v55 >= v113[2])
        {
          goto LABEL_40;
        }

        v13 = *&v111[8 * v55];
        v58 = v13;
        ++v55;
      }

      sub_2493787A4(v56, v7, &qword_27EEE2DC0, &qword_24938F630);
      if ((*v119)(v7, 1, v3) == 1)
      {
        break;
      }

      if (v13 == 1)
      {

        sub_249378744(v7, &qword_27EEE2DB0, &qword_24938F620);
LABEL_32:
        v85 = 0;
        v86 = v108;
        goto LABEL_34;
      }

      v59 = v7;
      v60 = v7;
      v61 = v117;
      v10 = &qword_24938F620;
      sub_2493787A4(v60, v117, &qword_27EEE2DB0, &qword_24938F620);
      v122 = v13;
      v62 = v121;
      v63 = sub_24937EC08(v61, &v122);
      v121 = v62;
      if (v62)
      {

        sub_2493852B4(v13);
        result = sub_249378744(v61, &qword_27EEE2DB0, &qword_24938F620);
        __break(1u);
        return result;
      }

      v64 = v63;
      sub_2493852B4(v13);
      sub_249378744(v61, &qword_27EEE2DB0, &qword_24938F620);
      if ((v64 & 1) == 0)
      {

        goto LABEL_32;
      }

      v1 = v115;
      v3 = v116;
      v7 = v59;
    }

    v86 = v108;
    if (v13 == 1)
    {
      v85 = 1;
    }

    else
    {
      sub_2493852B4(v13);
      v85 = 0;
    }

LABEL_34:
    v87 = v86;

    v88 = sub_24938A38C();
    v89 = sub_24938A53C();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v122 = v91;
      *v90 = 136316162;
      *(v90 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394C00, &v122);
      *(v90 + 12) = 2080;
      v92 = [v87 folderIdentifier];
      v93 = sub_24938A45C();
      v95 = v94;

      v96 = sub_249382D44(v93, v95, &v122);

      *(v90 + 14) = v96;
      *(v90 + 22) = 2080;

      v98 = MEMORY[0x24C1F5F20](v97, v116);
      v100 = v99;

      v101 = sub_249382D44(v98, v100, &v122);

      *(v90 + 24) = v101;
      *(v90 + 32) = 1024;
      *(v90 + 34) = v85;
      *(v90 + 38) = 2080;
      v102 = MEMORY[0x24C1F5F20](v109, v107);
      v104 = sub_249382D44(v102, v103, &v122);

      *(v90 + 40) = v104;
      _os_log_impl(&dword_249340000, v88, v89, "4. %s %s orderedFiles: %s equal: %{BOOL}d to otherOrderedFiles: %s", v90, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v91, -1, -1);
      MEMORY[0x24C1F6C70](v90, -1, -1);
    }
  }

  else
  {
    v65 = v16;

    v66 = sub_24938A38C();
    v67 = sub_24938A53C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v122 = v69;
      *v68 = 136315906;
      *(v68 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394C00, &v122);
      v109 = a1;
      *(v68 + 12) = 2080;
      v70 = [v65 folderIdentifier];
      v71 = sub_24938A45C();
      v72 = v10;
      v74 = v73;

      v75 = sub_249382D44(v71, v74, &v122);

      *(v68 + 14) = v75;
      *(v68 + 22) = 2080;
      v76 = [v65 orderedFiles];
      v77 = sub_24938A4FC();

      v78 = MEMORY[0x24C1F5F20](v77, v72);
      v80 = v79;

      v81 = sub_249382D44(v78, v80, &v122);

      *(v68 + 24) = v81;
      *(v68 + 32) = 2080;
      v82 = MEMORY[0x24C1F5F20](v109, v72);
      v84 = sub_249382D44(v82, v83, &v122);

      *(v68 + 34) = v84;
      _os_log_impl(&dword_249340000, v66, v67, "2. %s %s orderedFiles: %s are NOT equal to: %s", v68, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v69, -1, -1);
      MEMORY[0x24C1F6C70](v68, -1, -1);
    }

    return 0;
  }

  return v85;
}

uint64_t sub_24937E77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DD0, &qword_24938F638);
  MEMORY[0x28223BE20](v45);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v49 = &v37 - v15;
  v16 = 0;
  v17 = 0;
  v37 = a1;
  v38 = a2;
  v18 = *(a2 + 16);
  v19 = *(a1 + 16);
  v47 = v5;
  v48 = v19;
  v46 = v5 + 16;
  v20 = (v5 + 56);
  v39 = (v5 + 32);
  v40 = v18;
  v43 = (v5 + 8);
  v44 = (v5 + 48);
  while (1)
  {
    if (v17 == v18)
    {
      v21 = 1;
      v17 = v18;
      v22 = v49;
      goto LABEL_7;
    }

    v22 = v49;
    if (v17 >= v18)
    {
      break;
    }

    result = (*(v47 + 16))(v49, v38 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v17, v4);
    if (__OFADD__(v17++, 1))
    {
      goto LABEL_22;
    }

    v21 = 0;
LABEL_7:
    v24 = *v20;
    v25 = 1;
    result = (*v20)(v22, v21, 1, v4);
    v26 = v48;
    if (v16 != v48)
    {
      if (v16 >= v48)
      {
        goto LABEL_21;
      }

      result = (*(v47 + 16))(v50, v37 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v16, v4);
      v26 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_23;
      }

      v25 = 0;
    }

    v27 = v50;
    v24(v50, v25, 1, v4);
    v28 = *(v45 + 48);
    sub_2493787A4(v22, v10, &unk_27EEE2B80, &qword_24938F548);
    sub_2493787A4(v27, &v10[v28], &unk_27EEE2B80, &qword_24938F548);
    v29 = *v44;
    v30 = (*v44)(v10, 1, v4);
    result = v29(&v10[v28], 1, v4);
    if (v30 == 1)
    {
      if (result == 1)
      {
        return result;
      }

      sub_249378744(&v10[v28], &unk_27EEE2B80, &qword_24938F548);
      return 0;
    }

    if (result == 1)
    {
      (*v43)(v10, v4);
      return 0;
    }

    v31 = *v39;
    v32 = v41;
    (*v39)(v41, v10, v4);
    v33 = &v10[v28];
    v34 = v42;
    v31(v42, v33, v4);
    sub_2493852C4(&qword_27EEE2DD8, MEMORY[0x277CC9278]);
    v35 = sub_24938A41C();
    v36 = *v43;
    (*v43)(v34, v4);
    result = (v36)(v32, v4);
    v16 = v26;
    v18 = v40;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24937EC08(uint64_t a1, void **a2)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v4 = MEMORY[0x28223BE20](v59);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620);
  v8 = MEMORY[0x28223BE20](v7);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = *a2;
  sub_249378534(a1, &v49 - v16, &qword_27EEE2DB0, &qword_24938F620);
  v19 = *&v17[*(v7 + 48)];
  if (v18 && (v20 = [v18 thumbnailIdentifier]) != 0)
  {
    v21 = v20;
    sub_249370B4C(0, &qword_27EEE2DC8, off_278F9AC80);
    v22 = sub_24938A5DC();
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_24938A2FC();
  v24 = *(v23 - 8);
  (*(v24 + 8))(v17, v23);
  if ((v22 & 1) == 0)
  {
    v54 = v24;
    v55 = v22;
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v25 = sub_24938A3AC();
    __swift_project_value_buffer(v25, qword_27EEE2AE0);
    sub_249378534(a1, v15, &qword_27EEE2DB0, &qword_24938F620);
    v26 = v18;
    v27 = sub_24938A38C();
    v28 = sub_24938A53C();

    if (os_log_type_enabled(v27, v28))
    {
      v50 = v26;
      v52 = v28;
      v53 = v27;
      v29 = v12;
      v30 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v60 = v51;
      *v30 = 136315650;
      *(v30 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394C00, &v60);
      *(v30 + 12) = 2080;
      sub_249378534(v15, v29, &qword_27EEE2DB0, &qword_24938F620);
      v31 = *(v7 + 48);
      v32 = *(v29 + v31);
      v33 = v57;
      (*(v54 + 32))(v57, v29, v23);
      *&v33[v31] = v32;
      v34 = v30;
      v35 = sub_24938A46C();
      v37 = v36;
      sub_249378744(v15, &qword_27EEE2DB0, &qword_24938F620);
      v38 = sub_249382D44(v35, v37, &v60);

      *(v34 + 14) = v38;
      *(v34 + 22) = 2080;
      if (v18)
      {
        v39 = [v50 nodeURL];
        if (v39)
        {
          v40 = v56;
          v41 = v39;
          sub_24938A2DC();

          v42 = 0;
        }

        else
        {
          v42 = 1;
          v40 = v56;
        }

        (*(v54 + 56))(v40, v42, 1, v23);
        sub_2493787A4(v40, v58, &unk_27EEE2B80, &qword_24938F548);
      }

      else
      {
        (*(v54 + 56))(v58, 1, 1, v23);
      }

      LOBYTE(v22) = v55;
      v43 = sub_24938A46C();
      v45 = sub_249382D44(v43, v44, &v60);

      *(v34 + 24) = v45;
      v46 = v53;
      _os_log_impl(&dword_249340000, v53, v52, "3.1. %s %s thumbnailIdentifier not equal to node: %s", v34, 0x20u);
      v47 = v51;
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v47, -1, -1);
      MEMORY[0x24C1F6C70](v34, -1, -1);
    }

    else
    {

      sub_249378744(v15, &qword_27EEE2DB0, &qword_24938F620);
      LOBYTE(v22) = v55;
    }
  }

  return v22 & 1;
}

id sub_24937F2E0()
{
  result = [objc_allocWithZone(DOCSBFolderStatesObservervationManager) init];
  qword_27EEE2D00 = result;
  return result;
}

void sub_24937F4C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_24938A2FC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v94[-v12];
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v14 = sub_24938A3AC();
  v15 = __swift_project_value_buffer(v14, qword_27EEE2AE0);
  v16 = *(v8 + 16);
  v102 = a3;
  v99 = v16;
  v100 = v8 + 16;
  v16(v13, a3, v7);
  v17 = v3;

  v101 = v15;
  v18 = sub_24938A38C();
  v19 = sub_24938A53C();

  v20 = os_log_type_enabled(v18, v19);
  v103 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v98 = v11;
    v22 = v21;
    v97 = swift_slowAlloc();
    aBlock[0] = v97;
    *v22 = 136315906;
    *(v22 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394BD0, aBlock);
    *(v22 + 12) = 2080;
    v23 = v17;
    v96 = v18;
    v24 = v23;
    v25 = [v23 description];
    v26 = sub_24938A45C();
    v95 = v19;
    v27 = v8;
    v28 = v7;
    v29 = a1;
    v30 = a2;
    v31 = v26;
    v33 = v32;

    v34 = v31;
    a2 = v30;
    a1 = v29;
    v7 = v28;
    v8 = v27;
    v35 = sub_249382D44(v34, v33, aBlock);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_249382D44(a1, a2, aBlock);
    *(v22 + 32) = 2080;
    sub_2493852C4(&qword_27EEE2DA0, MEMORY[0x277CC9290]);
    v36 = sub_24938A7AC();
    v38 = v37;
    v39 = *(v27 + 8);
    v39(v13, v7);
    v40 = sub_249382D44(v36, v38, aBlock);

    *(v22 + 34) = v40;
    v17 = v103;
    v41 = v96;
    _os_log_impl(&dword_249340000, v96, v95, "%s self: %s folderID: %s url: %s", v22, 0x2Au);
    v42 = v97;
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v42, -1, -1);
    v43 = v22;
    v11 = v98;
    MEMORY[0x24C1F6C70](v43, -1, -1);
  }

  else
  {

    v39 = *(v8 + 8);
    v39(v13, v7);
  }

  v44 = [v17 folderStates];
  type metadata accessor for DOCSBFolderState(v44);
  v45 = sub_24938A3FC();

  if (!*(v45 + 16))
  {

    goto LABEL_13;
  }

  sub_2493832EC(a1, a2);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
LABEL_13:
    v74 = objc_allocWithZone(DOCSBFolderState);
    v75 = sub_24938A42C();
    v76 = sub_24938A2CC();
    v77 = [v74 initWithIdentifier:v75 fileURL:v76];

    v78 = a2;
    v79 = v77;
    v80 = v103;
    v81 = [v103 folderStates];
    v82 = sub_24938A3FC();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v82;
    sub_24938446C(v79, a1, v78, isUniquelyReferenced_nonNull_native);

    v84 = sub_24938A3EC();

    [v80 setFolderStates:v84];

    v85 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = [v80 folderObservationProvider];
    if (!v86)
    {

      return;
    }

    v87 = v86;
    v88 = sub_24938A42C();
    aBlock[4] = sub_249385150;
    aBlock[5] = v85;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2493803F8;
    aBlock[3] = &block_descriptor_2;
    v89 = _Block_copy(aBlock);

    [v87 registerObserverForIdentifier:v88 updateHandler:v89];
    swift_unknownObjectRelease();

    _Block_release(v89);
    goto LABEL_19;
  }

  v98 = v8;
  v99(v11, v102, v7);
  v48 = v7;
  v49 = v103;

  v50 = sub_24938A38C();
  v51 = sub_24938A53C();

  if (!os_log_type_enabled(v50, v51))
  {

    v39(v11, v48);
    return;
  }

  LODWORD(v102) = v51;
  v103 = v50;
  v52 = swift_slowAlloc();
  v100 = a1;
  v53 = v52;
  v101 = swift_slowAlloc();
  aBlock[0] = v101;
  *v53 = 136316162;
  *(v53 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394BD0, aBlock);
  *(v53 + 12) = 2080;
  v54 = v49;
  v55 = [v54 description];
  v56 = sub_24938A45C();
  v57 = v11;
  v58 = a2;
  v60 = v59;

  v61 = sub_249382D44(v56, v60, aBlock);
  v62 = v58;
  v63 = v100;

  *(v53 + 14) = v61;
  *(v53 + 22) = 2080;
  *(v53 + 24) = sub_249382D44(v63, v62, aBlock);
  *(v53 + 32) = 2080;
  sub_2493852C4(&qword_27EEE2DA0, MEMORY[0x277CC9290]);
  v64 = sub_24938A7AC();
  v66 = v65;
  v39(v57, v48);
  v67 = sub_249382D44(v64, v66, aBlock);

  *(v53 + 34) = v67;
  *(v53 + 42) = 2080;
  v68 = [v54 folderStates];
  v69 = sub_24938A3FC();

  if (*(v69 + 16) && (v70 = sub_2493832EC(v63, v62), (v71 & 1) != 0))
  {
    v72 = *(*(v69 + 56) + 8 * v70);
    v73 = v72;
  }

  else
  {
    v72 = 0;
  }

  v104 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D90, &qword_24938F608);
  v90 = sub_24938A46C();
  v92 = sub_249382D44(v90, v91, aBlock);

  *(v53 + 44) = v92;
  v88 = v103;
  _os_log_impl(&dword_249340000, v103, v102, "%s self: %s already observing folderID: %s url: %s with: %s", v53, 0x34u);
  v93 = v101;
  swift_arrayDestroy();
  MEMORY[0x24C1F6C70](v93, -1, -1);
  MEMORY[0x24C1F6C70](v53, -1, -1);
LABEL_19:
}

void sub_24937FE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_2493802F0(a4))
  {
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v6 = sub_24938A3AC();
    __swift_project_value_buffer(v6, qword_27EEE2AE0);

    v7 = sub_24938A38C();
    v8 = sub_24938A53C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v34[0] = osloga;
      *v9 = 136315650;
      *(v9 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394BD0, v34);
      *(v9 + 12) = 2080;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DA8, &qword_24938F618);
      v10 = sub_24938A46C();
      v12 = sub_249382D44(v10, v11, v34);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      v13 = MEMORY[0x24C1F5F20](a4, MEMORY[0x277D84F70] + 8);
      v15 = sub_249382D44(v13, v14, v34);

      *(v9 + 24) = v15;
      _os_log_impl(&dword_249340000, v7, v8, "%s self: %s calling _handleFolderChanged with: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](osloga, -1, -1);
      MEMORY[0x24C1F6C70](v9, -1, -1);
    }

    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = sub_24938A42C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
      v19 = sub_24938A4EC();

      [v17 _handleFolderChangedWithFolderID_topItems_];
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v20 = sub_24938A3AC();
    __swift_project_value_buffer(v20, qword_27EEE2AE0);

    oslog = sub_24938A38C();
    v21 = sub_24938A53C();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394BD0, v32);
      *(v22 + 12) = 2080;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DA8, &qword_24938F618);
      v24 = sub_24938A46C();
      v26 = sub_249382D44(v24, v25, v32);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      v27 = MEMORY[0x24C1F5F20](a4, MEMORY[0x277D84F70] + 8);
      v29 = sub_249382D44(v27, v28, v32);

      *(v22 + 24) = v29;
      _os_log_impl(&dword_249340000, oslog, v21, "%s self: %s couldn't convert topItems: %s to [DOCNodes]", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v23, -1, -1);
      MEMORY[0x24C1F6C70](v22, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2493802F0(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_24938A6CC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_24937860C(i, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_24938A6AC();
    sub_24938A6DC();
    sub_24938A6EC();
    sub_24938A6BC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_2493803F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24938A2FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v10 = sub_24938A45C();
  v12 = v11;
  sub_24938A2DC();
  v13 = sub_24938A4FC();

  v9(v10, v12, v8, v13);

  return (*(v6 + 8))(v8, v5);
}

void sub_249380564(uint64_t a1, unint64_t a2)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24938A3AC();
  __swift_project_value_buffer(v5, qword_27EEE2AE0);
  v6 = v2;

  v7 = sub_24938A38C();
  v8 = sub_24938A53C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    osloga = swift_slowAlloc();
    v52 = osloga;
    *v9 = 136315650;
    *(v9 + 4) = sub_249382D44(0xD000000000000019, 0x8000000249394B80, &v52);
    *(v9 + 12) = 2080;
    v10 = a2;
    v11 = a1;
    v12 = v6;
    v13 = [v12 description];
    v48 = v8;
    v14 = sub_24938A45C();
    v16 = v15;

    a1 = v11;
    a2 = v10;

    v17 = sub_249382D44(v14, v16, &v52);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_249382D44(a1, v10, &v52);
    _os_log_impl(&dword_249340000, v7, v48, "%s self: %s folderID: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](osloga, -1, -1);
    MEMORY[0x24C1F6C70](v9, -1, -1);
  }

  v18 = [v6 folderStates];
  type metadata accessor for DOCSBFolderState(v18);
  v19 = sub_24938A3FC();

  if (*(v19 + 16))
  {
    sub_2493832EC(a1, a2);
    v21 = v20;

    if (v21)
    {
      v22 = v6;

      oslog = sub_24938A38C();
      v23 = sub_24938A53C();

      if (os_log_type_enabled(oslog, v23))
      {
        v49 = v23;
        v24 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v24 = 136315906;
        *(v24 + 4) = sub_249382D44(0xD000000000000019, 0x8000000249394B80, &v52);
        *(v24 + 12) = 2080;
        v25 = v22;
        v26 = [v25 description];
        v27 = sub_24938A45C();
        v28 = a2;
        v29 = a1;
        v31 = v30;

        v32 = sub_249382D44(v27, v31, &v52);

        *(v24 + 14) = v32;
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_249382D44(v29, v28, &v52);
        *(v24 + 32) = 2080;
        v33 = [v25 folderStates];
        v34 = sub_24938A3FC();

        if (*(v34 + 16))
        {
          v35 = sub_2493832EC(v29, v28);
          if (v36)
          {
            v37 = *(*(v34 + 56) + 8 * v35);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D90, &qword_24938F608);
        v44 = sub_24938A46C();
        v46 = sub_249382D44(v44, v45, &v52);

        *(v24 + 34) = v46;
        _os_log_impl(&dword_249340000, oslog, v49, "%s self: %s already observing folderID: %s with: %s", v24, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1F6C70](v47, -1, -1);
        MEMORY[0x24C1F6C70](v24, -1, -1);
      }

      else
      {
      }

      return;
    }
  }

  else
  {
  }

  v38 = [v6 folderStates];
  v39 = sub_24938A3FC();

  v52 = v39;
  sub_24937CF34(0, a1, a2);
  v40 = sub_24938A3EC();

  [v6 setFolderStates_];

  v41 = [v6 folderObservationProvider];
  if (v41)
  {
    v42 = v41;
    v43 = sub_24938A42C();
    [v42 unregisterObserverForIdentifier_];

    swift_unknownObjectRelease();
  }
}

void sub_249380BE4(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v142 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v134 = v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v130 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v130 - v13;
  v15 = sub_24938A2FC();
  isa = v15[-1].isa;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v140 = v130 - v19;
  if (qword_27EEE28C0 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v20 = sub_24938A3AC();
    v21 = __swift_project_value_buffer(v20, qword_27EEE2AE0);
    v22 = v4;

    v23 = sub_24938A38C();
    v24 = sub_24938A53C();

    LODWORD(v138) = v24;
    v25 = v24;
    v26 = v23;
    v27 = os_log_type_enabled(v23, v25);
    v143 = v15;
    v131 = v18;
    v139 = a2;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v137 = v12;
      v29 = v28;
      v30 = swift_slowAlloc();
      v132 = v22;
      v31 = v30;
      v144 = v30;
      *v29 = 136315906;
      *(v29 + 4) = sub_249382D44(0xD000000000000028, 0x8000000249394B50, &v144);
      v141 = a3;
      *(v29 + 12) = 2080;
      v32 = v132;
      v33 = [v32 description];
      v34 = sub_24938A45C();
      v36 = v35;

      v37 = v34;
      v15 = v143;
      v38 = sub_249382D44(v37, v36, &v144);

      *(v29 + 14) = v38;
      *(v29 + 22) = 2080;
      *(v29 + 24) = sub_249382D44(v142, a2, &v144);
      *(v29 + 32) = 2080;
      v39 = v141;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
      v41 = MEMORY[0x24C1F5F20](v39, v40);
      v43 = sub_249382D44(v41, v42, &v144);

      *(v29 + 34) = v43;
      v44 = v26;
      v45 = v21;
      _os_log_impl(&dword_249340000, v44, v138, "1. %s self: %s folderID: %s topItems: %s", v29, 0x2Au);
      swift_arrayDestroy();
      v46 = v31;
      v22 = v132;
      MEMORY[0x24C1F6C70](v46, -1, -1);
      v47 = v29;
      v12 = v137;
      MEMORY[0x24C1F6C70](v47, -1, -1);
    }

    else
    {

      v45 = v21;
      v39 = a3;
    }

    v48 = [v22 folderStates];
    type metadata accessor for DOCSBFolderState(v48);
    v49 = sub_24938A3FC();

    a2 = v139;
    if (!*(v49 + 16) || (v50 = sub_2493832EC(v142, v139), (v51 & 1) == 0))
    {

      v68 = v22;

      v143 = sub_24938A38C();
      v69 = sub_24938A53C();

      if (os_log_type_enabled(v143, v69))
      {
        v70 = swift_slowAlloc();
        v71 = a2;
        v72 = swift_slowAlloc();
        v144 = v72;
        *v70 = 136315650;
        *(v70 + 4) = sub_249382D44(0xD000000000000028, 0x8000000249394B50, &v144);
        *(v70 + 12) = 2080;
        v73 = v68;
        v74 = [v73 description];
        v75 = sub_24938A45C();
        v77 = v76;

        v78 = sub_249382D44(v75, v77, &v144);

        *(v70 + 14) = v78;
        *(v70 + 22) = 2080;
        *(v70 + 24) = sub_249382D44(v142, v71, &v144);
        _os_log_impl(&dword_249340000, v143, v69, "2. %s self: %s can not get state for: %s !!", v70, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1F6C70](v72, -1, -1);
        MEMORY[0x24C1F6C70](v70, -1, -1);
      }

      else
      {
        v79 = v143;
      }

      return;
    }

    v130[0] = *(*(v49 + 56) + 8 * v50);

    a3 = v39 >> 62 ? sub_24938A71C() : *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v132 = v22;
    v130[1] = v45;
    if (!a3)
    {
      break;
    }

    v52 = 0;
    v141 = v39;
    v138 = v39 & 0xFFFFFFFFFFFFFF8;
    v139 = v39 & 0xC000000000000001;
    v135 = (isa + 48);
    v136 = (isa + 32);
    v137 = (isa + 56);
    v142 = MEMORY[0x277D84F90];
    v18 = &unk_27EEE2B80;
    v4 = &qword_24938F548;
    while (v139)
    {
      v53 = MEMORY[0x24C1F60A0](v52, v141);
      a2 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_46;
      }

LABEL_16:
      v54 = [v53 fpfs_fpItem];
      if (v54)
      {
        v55 = v54;
        v56 = a3;
        v57 = v14;
        v58 = v12;
        v59 = [v54 fileURL];

        if (v59)
        {
          v60 = v134;
          sub_24938A2DC();

          v61 = 0;
          v15 = v143;
        }

        else
        {
          v61 = 1;
          v15 = v143;
          v60 = v134;
        }

        swift_unknownObjectRelease();
        (*v137)(v60, v61, 1, v15);
        v62 = v60;
        v12 = v58;
        v18 = &unk_27EEE2B80;
        sub_2493787A4(v62, v58, &unk_27EEE2B80, &qword_24938F548);
        v14 = v57;
        a3 = v56;
      }

      else
      {
        swift_unknownObjectRelease();
        v15 = v143;
        (*v137)(v12, 1, 1, v143);
      }

      sub_2493787A4(v12, v14, &unk_27EEE2B80, &qword_24938F548);
      if ((*v135)(v14, 1, v15) == 1)
      {
        sub_249378744(v14, &unk_27EEE2B80, &qword_24938F548);
      }

      else
      {
        v63 = *v136;
        (*v136)(v140, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v142 = sub_249382B6C(0, v142[2] + 1, 1, v142);
        }

        v65 = v142[2];
        v64 = v142[3];
        if (v65 >= v64 >> 1)
        {
          v142 = sub_249382B6C((v64 > 1), v65 + 1, 1, v142);
        }

        v66 = v142;
        v142[2] = v65 + 1;
        v67 = v66 + ((*(isa + 80) + 32) & ~*(isa + 80)) + *(isa + 9) * v65;
        v15 = v143;
        v63(v67, v140, v143);
        v18 = &unk_27EEE2B80;
      }

      ++v52;
      if (a2 == a3)
      {
        goto LABEL_37;
      }
    }

    if (v52 >= *(v138 + 16))
    {
      goto LABEL_47;
    }

    v53 = *(v141 + 8 * v52 + 32);
    swift_unknownObjectRetain();
    a2 = v52 + 1;
    if (!__OFADD__(v52, 1))
    {
      goto LABEL_16;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v142 = MEMORY[0x277D84F90];
LABEL_37:
  v80 = sub_24938A4EC();
  v81 = v130[0];
  v82 = [v130[0] compareOrderedFilesToOtherOrderedFiles_];

  v83 = v132;
  v84 = v81;

  v85 = sub_24938A38C();
  v86 = sub_24938A53C();

  v87 = os_log_type_enabled(v85, v86);
  if (v82)
  {
    if (v87)
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v144 = v89;
      *v88 = 136315906;
      *(v88 + 4) = sub_249382D44(0xD000000000000028, 0x8000000249394B50, &v144);
      *(v88 + 12) = 2080;
      v90 = v83;
      v91 = [v90 description];
      v92 = sub_24938A45C();
      v94 = v93;

      v95 = sub_249382D44(v92, v94, &v144);

      *(v88 + 14) = v95;
      *(v88 + 22) = 2080;
      v96 = v143;
      v97 = MEMORY[0x24C1F5F20](v142, v143);
      v99 = v98;

      v100 = sub_249382D44(v97, v99, &v144);

      *(v88 + 24) = v100;
      *(v88 + 32) = 2080;
      v101 = [v84 orderedFiles];
      v102 = sub_24938A4FC();

      v103 = MEMORY[0x24C1F5F20](v102, v96);
      v105 = v104;

      v106 = sub_249382D44(v103, v105, &v144);

      *(v88 + 34) = v106;
      _os_log_impl(&dword_249340000, v85, v86, "4. %s self: %s top items: %s are equal to stored top items: %s. No need to notify.", v88, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v89, -1, -1);
      MEMORY[0x24C1F6C70](v88, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (v87)
    {
      v107 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v144 = v141;
      *v107 = 136315906;
      *(v107 + 4) = sub_249382D44(0xD000000000000028, 0x8000000249394B50, &v144);
      *(v107 + 12) = 2080;
      v108 = v83;
      v109 = [v108 description];
      v110 = sub_24938A45C();
      v112 = v111;

      v113 = sub_249382D44(v110, v112, &v144);

      *(v107 + 14) = v113;
      *(v107 + 22) = 2080;
      v114 = v143;
      v115 = MEMORY[0x24C1F5F20](v142, v143);
      v117 = sub_249382D44(v115, v116, &v144);

      *(v107 + 24) = v117;
      *(v107 + 32) = 2080;
      v118 = [v84 orderedFiles];
      v119 = sub_24938A4FC();

      v120 = MEMORY[0x24C1F5F20](v119, v114);
      v122 = v121;

      v123 = sub_249382D44(v120, v122, &v144);

      *(v107 + 34) = v123;
      _os_log_impl(&dword_249340000, v85, v86, "3. %s self: %s top items: %s are NOT equal to stored top items: %s. Will notify listeners.", v107, 0x2Au);
      v124 = v141;
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v124, -1, -1);
      MEMORY[0x24C1F6C70](v107, -1, -1);
    }

    v125 = v131;
    v126 = [v84 folderIdentifier];
    if (!v126)
    {
      sub_24938A45C();
      v126 = sub_24938A42C();
    }

    v127 = [v84 folderURL];
    sub_24938A2DC();

    v128 = sub_24938A2CC();
    (*(isa + 1))(v125, v143);
    [v83 _notifyFolderChanged_url_];

    v129 = sub_24938A4EC();

    [v84 setOrderedFiles_];
  }
}

void sub_249381A78(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D68, &qword_24938F5E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24938F5C0;
  sub_24938A45C();
  v7 = MEMORY[0x277D837D0];
  sub_24938A64C();
  *(inited + 96) = v7;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  v31[0] = sub_24938A45C();
  v31[1] = v8;

  sub_24938A64C();
  v9 = sub_24938A2EC();
  *(inited + 168) = v7;
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  sub_249384E8C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D70, &qword_24938F5F0);
  swift_arrayDestroy();
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v11 = sub_24938A3AC();
  __swift_project_value_buffer(v11, qword_27EEE2AE0);
  v12 = v2;

  v13 = sub_24938A38C();
  v14 = sub_24938A53C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v15 = 136315906;
    *(v15 + 4) = sub_249382D44(0xD00000000000001CLL, 0x8000000249394B30, v31);
    *(v15 + 12) = 2080;
    v16 = v12;
    v17 = [v16 description];
    v18 = sub_24938A45C();
    v20 = v19;

    v21 = sub_249382D44(v18, v20, v31);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    type metadata accessor for Name(0);
    v22 = @"DOCSBFolderDidChangeDistributedNotification";
    v23 = sub_24938A46C();
    v25 = sub_249382D44(v23, v24, v31);

    *(v15 + 24) = v25;
    *(v15 + 32) = 2080;
    v26 = sub_24938A40C();
    v28 = sub_249382D44(v26, v27, v31);

    *(v15 + 34) = v28;
    _os_log_impl(&dword_249340000, v13, v14, "%s self: %s posting distributed notification: %s userInfo: %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v30, -1, -1);
    MEMORY[0x24C1F6C70](v15, -1, -1);
  }

  else
  {

    v22 = @"DOCSBFolderDidChangeDistributedNotification";
  }

  v29 = sub_24938A3EC();

  [v5 postNotificationName:v22 object:0 userInfo:v29];
}

uint64_t sub_249381E80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_24938A2FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24938A45C();
  v13 = v12;
  sub_24938A2DC();
  v14 = a1;
  a5(v11, v13, v10);

  return (*(v8 + 8))(v10, v7);
}

void sub_249381F9C(uint64_t a1, uint64_t a2)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24938A3AC();
  __swift_project_value_buffer(v5, qword_27EEE2AE0);
  v6 = v2;

  oslog = sub_24938A38C();
  v7 = sub_24938A53C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_249382D44(0xD00000000000001ALL, 0x8000000249394B10, &v24);
    *(v8 + 12) = 2080;
    v10 = v6;
    v11 = [v10 description];
    v12 = sub_24938A45C();
    v14 = v13;

    v15 = sub_249382D44(v12, v14, &v24);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2080;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
    v17 = MEMORY[0x24C1F5F20](a1, v16);
    v19 = sub_249382D44(v17, v18, &v24);

    *(v8 + 24) = v19;
    *(v8 + 32) = 2080;
    v20 = MEMORY[0x24C1F5F20](a2, v16);
    v22 = sub_249382D44(v20, v21, &v24);

    *(v8 + 34) = v22;
    _os_log_impl(&dword_249340000, oslog, v7, "%s self: %s left: %s right: %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v9, -1, -1);
    MEMORY[0x24C1F6C70](v8, -1, -1);
  }
}

uint64_t sub_2493822B4(uint64_t a1, unint64_t a2)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24938A3AC();
  __swift_project_value_buffer(v5, qword_27EEE2AE0);
  v6 = v2;

  v7 = sub_24938A38C();
  v8 = sub_24938A53C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_249382D44(0xD00000000000001CLL, 0x8000000249394AF0, &v18);
    *(v9 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_24938A45C();
    v15 = v14;

    v16 = sub_249382D44(v13, v15, &v18);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_249382D44(a1, a2, &v18);
    _os_log_impl(&dword_249340000, v7, v8, "%s self: %s folderID: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v10, -1, -1);
    MEMORY[0x24C1F6C70](v9, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void sub_24938255C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v7 = sub_24938A3AC();
  __swift_project_value_buffer(v7, qword_27EEE2AE0);
  v8 = v3;

  oslog = sub_24938A38C();
  v9 = sub_24938A53C();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_249382D44(0xD000000000000018, 0x8000000249394AD0, &v23);
    *(v10 + 12) = 2080;
    v12 = v8;
    v13 = [v12 description];
    v14 = sub_24938A45C();
    v16 = v15;

    v17 = sub_249382D44(v14, v16, &v23);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
    v19 = MEMORY[0x24C1F5F20](a1, v18);
    v21 = sub_249382D44(v19, v20, &v23);

    *(v10 + 24) = v21;
    *(v10 + 32) = 2080;
    *(v10 + 34) = sub_249382D44(a2, a3, &v23);
    _os_log_impl(&dword_249340000, oslog, v9, "%s self: %s items: %s folderID: %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v11, -1, -1);
    MEMORY[0x24C1F6C70](v10, -1, -1);
  }
}

id DOCSBFolderStatesObservervationManager.init()()
{
  *&v0[OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderObservationProvider] = 0;
  v1 = OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderStates;
  *&v0[v1] = sub_249384FC8(MEMORY[0x277D84F90]);
  v3.receiver = v0;
  v3.super_class = DOCSBFolderStatesObservervationManager;
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_24938297C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DE0, &qword_24938F640);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_249382B6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D88, &qword_24938F600);
  v10 = *(sub_24938A2FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24938A2FC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_249382D44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_249382E10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24937860C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_249382E10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_249382F1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24938A69C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_249382F1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_249382F68(a1, a2);
  sub_249383098(&unk_285C6E928);
  return v3;
}

void *sub_249382F68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_249383184(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24938A69C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24938A4AC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_249383184(v10, 0);
        result = sub_24938A65C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_249383098(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2493831F8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_249383184(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D60, &qword_24938F5E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2493831F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D60, &qword_24938F5E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2493832EC(uint64_t a1, uint64_t a2)
{
  sub_24938A7FC();
  sub_24938A47C();
  v4 = sub_24938A80C();

  return sub_2493833A8(a1, a2, v4);
}

unint64_t sub_249383364(uint64_t a1)
{
  v2 = sub_24938A62C();

  return sub_249383460(a1, v2);
}

unint64_t sub_2493833A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24938A7BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_249383460(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2493850F4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1F6050](v9, a1);
      sub_249377724(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_249383528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_24938A2FC();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DE8, &qword_24938F648);
  v42 = v4;
  result = sub_24938A74C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_24938A7FC();
      sub_24938A47C();
      result = sub_24938A80C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2493838A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2D78, &qword_24938F5F8);
  result = sub_24938A74C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_2493786D0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2493850F4(v23, &v36);
        sub_24937860C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_24938A62C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2493786D0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_249383B60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D98, &qword_24938F610);
  v35 = v4;
  result = sub_24938A74C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_24938A7FC();
      sub_24938A47C();
      result = sub_24938A80C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_249383E04(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24938A61C() + 1) & ~v5;
    while (1)
    {
      sub_24938A7FC();

      sub_24938A47C();
      v9 = sub_24938A80C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_24938A2FC() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_249383FF0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24938A61C() + 1) & ~v5;
    do
    {
      sub_24938A7FC();

      sub_24938A47C();
      v9 = sub_24938A80C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}