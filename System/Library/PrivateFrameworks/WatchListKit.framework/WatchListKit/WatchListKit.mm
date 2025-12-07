id WLKStartupSignpostLogObject(uint64_t a1)
{
  if (WLKStartupSignpostLogObject_onceToken != -1)
  {
    WLKStartupSignpostLogObject_cold_1();
  }

  v2 = WLKStartupSignpostLogObject_logger;

  return v2;
}

uint64_t __WLKStartupSignpostLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.WatchListKit", "startup");
  v1 = WLKStartupSignpostLogObject_logger;
  WLKStartupSignpostLogObject_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id WLKDefaultSupportPath(uint64_t a1)
{
  if (WLKDefaultSupportPath_onceToken != -1)
  {
    WLKDefaultSupportPath_cold_1();
  }

  v2 = WLKDefaultSupportPath__path;

  return v2;
}

void __WLKDefaultSupportPath_block_invoke()
{
  v15[3] = *MEMORY[0x277D85DE8];
  v0 = CPSharedResourcesDirectory();
  v1 = v0;
  if (v0)
  {
    v15[0] = v0;
    v15[1] = @"Library";
    v15[2] = @"com.apple.WatchListKit";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v3 = [MEMORY[0x277CCACA8] pathWithComponents:v2];
    v4 = WLKDefaultSupportPath__path;
    WLKDefaultSupportPath__path = v3;

    v5 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v5 fileExistsAtPath:WLKDefaultSupportPath__path])
    {
      v14 = 0;
      v6 = [v5 removeItemAtPath:WLKDefaultSupportPath__path error:&v14];
      v7 = v14;
      v8 = v7;
      if ((v6 & 1) == 0 && v7)
      {
        v9 = WLKSystemLogObject(v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __WLKDefaultSupportPath_block_invoke_cold_1(v8, v9);
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.tv.sharedcontainer"];
  v12 = [v11 path];
  v13 = WLKDefaultSupportPath__path;
  WLKDefaultSupportPath__path = v12;
}

id WLKSystemLogObject(uint64_t a1)
{
  if (WLKSystemLogObject_onceToken != -1)
  {
    WLKSystemLogObject_cold_1();
  }

  v2 = WLKSystemLogObject_logger;

  return v2;
}

uint64_t __WLKSystemLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.WatchListKit", "System");
  v1 = WLKSystemLogObject_logger;
  WLKSystemLogObject_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_272A11260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WLKNetworkingLogObject()
{
  if (WLKNetworkingLogObject_onceToken != -1)
  {
    WLKNetworkingLogObject_cold_1();
  }

  v1 = WLKNetworkingLogObject_logger;

  return v1;
}

uint64_t __WLKNetworkingLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.WatchListKit", "Networking");
  v1 = WLKNetworkingLogObject_logger;
  WLKNetworkingLogObject_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __WLKIsTVApp_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  WLKIsTVApp_retVal = [v1 isEqualToString:@"com.apple.tv"];
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WLKIsTVApp(uint64_t a1, uint64_t a2)
{
  if (WLKIsTVApp_onceToken != -1)
  {
    WLKIsTVApp_cold_1();
  }

  return WLKIsTVApp_retVal;
}

void __WLKShouldRunInProcess_block_invoke()
{
  if (WLKIsDaemon_onceToken != -1)
  {
    WLKIsDaemon_cold_1();
  }

  WLKShouldRunInProcess_retVal = WLKIsDaemon_retVal;
}

void __WLKIsDaemon_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  WLKIsDaemon_retVal = [v1 isEqualToString:@"com.apple.watchlistd"];
}

void sub_272A12268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WLKConnectionServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288236058];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  v6 = [v0 setClasses:v5 forSelector:sel_fetchApplications_ argumentIndex:0 ofReply:1];
  v7 = MEMORY[0x277CBEB58];
  v8 = WLKPlistClasses(v6);
  v9 = [v7 setWithSet:v8];

  [v9 addObject:objc_opt_class()];
  [v0 setClasses:v9 forSelector:sel_readSettingsStore_ argumentIndex:0 ofReply:1];
  v10 = WLKPlistClasses([v0 setClasses:v9 forSelector:sel_writeSettingsStore_replyHandler_ argumentIndex:0 ofReply:0]);
  [v0 setClasses:v10 forSelector:sel_fetchSettings_ argumentIndex:0 ofReply:1];

  v12 = WLKPlistClasses(v11);
  [v0 setClasses:v12 forSelector:sel_postSettings_replyHandler_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB58];
  v15 = WLKPlistClasses(v14);
  v16 = [v13 setWithSet:v15];

  [v16 addObject:objc_opt_class()];
  v17 = [v0 setClasses:v16 forSelector:sel_requestDecoratedNowPlayingSummaries_ argumentIndex:0 ofReply:1];
  v18 = MEMORY[0x277CBEB58];
  v19 = WLKPlistClasses(v17);
  v20 = [v18 setWithSet:v19];

  [v20 addObject:objc_opt_class()];
  [v0 setClasses:v20 forSelector:sel_requestNowPlayingSummaries_ argumentIndex:0 ofReply:1];
  v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v22 = [v0 setClasses:v21 forSelector:sel_fetchSubscriptionData_callerProcessID_completion_ argumentIndex:0 ofReply:1];
  v23 = MEMORY[0x277CBEB98];
  v24 = WLKPlistClasses(v22);
  v25 = [v23 setWithSet:v24];

  [v0 setClasses:v25 forSelector:sel_performSportsFavoritesAction_ids_caller_completion_ argumentIndex:1 ofReply:0];
  [v0 setClasses:v25 forSelector:sel_performSportsFavoritesAction_ids_caller_completion_ argumentIndex:0 ofReply:1];
  v26 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
  [v0 setClasses:v29 forSelector:sel_vppaConsentedBundleIDsWithCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

id WLKPlistClasses(uint64_t a1)
{
  if (WLKPlistClasses_onceToken != -1)
  {
    WLKPlistClasses_cold_1();
  }

  v2 = WLKPlistClasses___plistClasses;

  return v2;
}

uint64_t __WLKPlistClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = WLKPlistClasses___plistClasses;
  WLKPlistClasses___plistClasses = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

uint64_t WLKShouldRunInProcess()
{
  if (WLKShouldRunInProcess_onceToken != -1)
  {
    WLKShouldRunInProcess_cold_1();
  }

  return WLKShouldRunInProcess_retVal;
}

void sub_272A12A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __WLKCurrentProtocolVersion_block_invoke()
{
  v0 = WLKProtocolVersionOverride();
  v1 = WLKCurrentProtocolVersion_overrideValue;
  WLKCurrentProtocolVersion_overrideValue = v0;

  if (WLKCurrentProtocolVersion_overrideValue)
  {
    NSLog(&cfstr_Wlknetworkrequ.isa, WLKCurrentProtocolVersion_overrideValue);
  }
}

id WLKProtocolVersionOverride()
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"WLKProtocolVersion", @"com.apple.WatchListKit", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = [MEMORY[0x277CCABB0] numberWithLong:AppIntegerValue];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t WLKIsDaemon()
{
  if (WLKIsDaemon_onceToken != -1)
  {
    WLKIsDaemon_cold_1();
  }

  return WLKIsDaemon_retVal;
}

void sub_272A133E8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void __WLKIsRunningTest_block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  WLKIsRunningTest_retVal = [v0 isEqualToString:@"WatchListKitUnitTestsRunner"];
}

uint64_t WLKIsRunningTest()
{
  if (WLKIsRunningTest_onceToken != -1)
  {
    WLKIsRunningTest_cold_1();
  }

  return WLKIsRunningTest_retVal;
}

void sub_272A1389C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WLKIsRegulatedSKU()
{
  v0 = MGGetBoolAnswer();
  v1 = MGCopyAnswer();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 caseInsensitiveCompare:@"CH"] == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v0 | v3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    WLKIsRegulatedSKU_cold_1(v4 & 1);
  }

  return v4 & 1;
}

void WLKIsRegulatedSKU_cold_1(char a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = @"NO";
  if (a1)
  {
    v1 = @"YES";
  }

  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_272A0F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[WLKRegionUtilities]: Is regulated SKU: %@", &v2, 0xCu);
}

void sub_272A14260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WLKCurrentProtocolVersion()
{
  if (WLKCurrentProtocolVersion_onceToken != -1)
  {
    WLKCurrentProtocolVersion_cold_1();
  }

  if (os_variant_has_internal_content())
  {
    v0 = WLKCurrentProtocolVersion_overrideValue == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || [WLKCurrentProtocolVersion_overrideValue unsignedIntegerValue] < 0x5C)
  {
    return 91;
  }

  v1 = WLKCurrentProtocolVersion_overrideValue;

  return [v1 unsignedIntegerValue];
}

uint64_t WLKCurrentAPIVersion()
{
  if (WLKCurrentAPIVersion_onceToken != -1)
  {
    WLKCurrentAPIVersion_cold_1();
  }

  if (os_variant_has_internal_content())
  {
    v0 = WLKCurrentAPIVersion_overrideValue == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || [WLKCurrentAPIVersion_overrideValue unsignedIntegerValue] < 4)
  {
    return 3;
  }

  v1 = WLKCurrentAPIVersion_overrideValue;

  return [v1 unsignedIntegerValue];
}

void __WLKCurrentAPIVersion_block_invoke()
{
  v0 = WLKAPIVersionOverride();
  v1 = WLKCurrentAPIVersion_overrideValue;
  WLKCurrentAPIVersion_overrideValue = v0;

  if (WLKCurrentAPIVersion_overrideValue)
  {
    NSLog(&cfstr_Wlknetworkrequ_0.isa, WLKCurrentAPIVersion_overrideValue);
  }
}

id WLKAPIVersionOverride()
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"APIVersionOverride", @"com.apple.WatchListKit", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = [MEMORY[0x277CCABB0] numberWithLong:AppIntegerValue];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id WLKNetworkSignpostLogObject(uint64_t a1)
{
  if (WLKNetworkSignpostLogObject_onceToken != -1)
  {
    WLKNetworkSignpostLogObject_cold_1();
  }

  v2 = WLKNetworkSignpostLogObject_logger;

  return v2;
}

uint64_t __WLKNetworkSignpostLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.WatchListKit", "network");
  v1 = WLKNetworkSignpostLogObject_logger;
  WLKNetworkSignpostLogObject_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_272A159C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id WLKRestrictionsMaximumEffectiveMovieRanking()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 effectiveValueForSetting:*MEMORY[0x277D25F80]];

  v2 = [v1 intValue];
  if (v2 == *MEMORY[0x277CEC570])
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

id WLKRestrictionsMaximumEffectiveTVShowRanking()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 effectiveValueForSetting:*MEMORY[0x277D25F90]];

  v2 = [v1 intValue];
  if (v2 == *MEMORY[0x277CEC570])
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

void sub_272A17234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WLKRestrictionsCountryCode()
{
  v0 = CRCopyRestrictionsDictionary();
  v1 = [v0 objectForKey:*MEMORY[0x277CEC560]];
  if ([v1 length])
  {
    v2 = v1;
  }

  else
  {
    v2 = *MEMORY[0x277CEC568];
  }

  v3 = [v2 uppercaseString];

  return v3;
}

void __WLKBaseURLOverride_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    NSLog(&cfstr_Wlkbaseurlover.isa, *(a1 + 32));
  }
}

void __WLKIgnoreHTTPCacheOverride_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v0 = [v2 objectForKey:@"IgnoreHTTPCache"];
  v1 = v0;
  if (v0)
  {
    NSLog(&cfstr_Wlkignorehttpc.isa, v0);
    objc_storeStrong(&WLKIgnoreHTTPCacheOverride_retVal, v1);
  }
}

void sub_272A18888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A1897C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272A18AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

WLKSortedKeyDictionary *WLKSortDictionaries(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[WLKSortedKeyDictionary count](v1, "count")}];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __WLKSortDictionaries_block_invoke;
    v16[3] = &unk_279E5F2F8;
    v17 = v2;
    v3 = v2;
    [(WLKSortedKeyDictionary *)v1 enumerateKeysAndObjectsUsingBlock:v16];
    v4 = [[WLKSortedKeyDictionary alloc] initWithDictionary:v3];

    v5 = v17;
    v1 = v4;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[WLKSortedKeyDictionary count](v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v1;
    v6 = [(WLKSortedKeyDictionary *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = WLKSortDictionaries(*(*(&v12 + 1) + 8 * i));
          [(WLKSortedKeyDictionary *)v3 addObject:v10, v12];
        }

        v7 = [(WLKSortedKeyDictionary *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v7);
    }

    v1 = [(WLKSortedKeyDictionary *)v3 copy];
  }

LABEL_13:

  return v1;
}

void __WLKSortDictionaries_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = WLKSortDictionaries(a3);
  [v4 setObject:v6 forKey:v5];
}

id WLKBaseURLReturningError()
{
  v0 = WLKBaseURLOverride();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v3 = [MEMORY[0x277D6C480] app];
    v4 = [v3 cachedURLForKey:kBagKeyUVSearchUtsApiBaseURL];

    v2 = [v4 absoluteString];
  }

  return v2;
}

id WLKPushNotificationsLogObject(uint64_t a1)
{
  if (WLKPushNotificationsLogObject_onceToken != -1)
  {
    WLKPushNotificationsLogObject_cold_1();
  }

  v2 = WLKPushNotificationsLogObject_logger;

  return v2;
}

id WLKBaseURLOverride()
{
  if (os_variant_has_internal_content())
  {
    v0 = CFPreferencesCopyAppValue(@"APIBaseURL", @"com.apple.WatchListKit");
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __WLKBaseURLOverride_block_invoke;
    block[3] = &unk_279E5EE08;
    v1 = v0;
    v4 = v1;
    if (WLKBaseURLOverride_onceToken != -1)
    {
      dispatch_once(&WLKBaseURLOverride_onceToken, block);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t __WLKPushNotificationsLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.WatchListKit", "PushNotifications");
  v1 = WLKPushNotificationsLogObject_logger;
  WLKPushNotificationsLogObject_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void WLKFetchNotificationCategories(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D6C480] app];
  v3 = [v2 arrayForKey:kBagKeyUVSearchEnabledNotificationTypes];

  if (!v3)
  {
    v7 = 0;
    if (!v1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v11 = v3;
  v4 = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEqual:@"Explicit"])
        {
          v7 |= 1uLL;
        }

        else if ([v10 isEqual:@"Implicit"])
        {
          v7 |= 2uLL;
        }

        else if ([v10 isEqual:@"Marketing"])
        {
          v7 |= 4uLL;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v3 = v11;
  if (v1)
  {
LABEL_20:
    v1[2](v1, v7, 0);
  }

LABEL_21:
}

id WLKIgnoreHTTPCacheOverride()
{
  if (WLKIgnoreHTTPCacheOverride_onceToken != -1)
  {
    WLKIgnoreHTTPCacheOverride_cold_1();
  }

  v1 = WLKIgnoreHTTPCacheOverride_retVal;

  return v1;
}

uint64_t WLKPostPlayAutoPlayCheckHasActiveAccount(void *a1)
{
  v2 = +[WLKAccountMonitor sharedInstance];
  v3 = [v2 activeAccount];

  v4 = [v3 isAuthenticated];
  v5 = v4;
  if (a1 && (v4 & 1) == 0)
  {
    *a1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKPostPlayAutoPlayErrorDomain" code:-2 userInfo:0];
  }

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = WLKIsRunningTest();
  }

  return v6;
}

id WLKTVAppEnabledOverride()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"TVAppEnabledOverride", @"com.apple.tv", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = [MEMORY[0x277CCABB0] numberWithBool:AppBooleanValue != 0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_272A1A6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WLKSubscriptionSyncLogObject(uint64_t a1)
{
  if (WLKSubscriptionSyncLogObject_onceToken != -1)
  {
    WLKSubscriptionSyncLogObject_cold_1();
  }

  v2 = WLKSubscriptionSyncLogObject_logger;

  return v2;
}

uint64_t __WLKSubscriptionSyncLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.WatchListKit", "SubscriptionSync");
  v1 = WLKSubscriptionSyncLogObject_logger;
  WLKSubscriptionSyncLogObject_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_272A1AA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_272A1C6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *WLKRequireNonNilParameter(void *result)
{
  if (!result)
  {
    return [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"The %@ parameter must not be nil.", 0}];
  }

  return result;
}

void WLKRequireParameterIsKindOfClass(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"The %@ parameter must be an instance of %@", v4, v3}];
  }
}

void sub_272A1D2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A1EE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A1F1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A1F564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void WLKFetchIsSportsEnabled(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = WLKSportsEnabledOverride();
  v3 = v2;
  if (v2)
  {
    v4 = WLKSystemLogObject(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = [v3 BOOLValue];
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKFeatureEnablerHelpers - Sports enabled *override*: %d", buf, 8u);
    }

    v1[2](v1, [v3 BOOLValue], 0);
  }

  else
  {
    v5 = +[WLKConfigurationManager sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __WLKFetchIsSportsEnabled_block_invoke;
    v6[3] = &unk_279E5E8A8;
    v7 = v1;
    [v5 fetchConfigurationWithCompletionHandler:v6];
  }
}

void __WLKFetchIsSportsEnabled_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && ([v5 features], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v6, objc_msgSend(v5, "features"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10))
  {
    v11 = [v5 features];
    v12 = [v11 wlk_BOOLForKey:@"sports" defaultValue:0];

    v14 = WLKSystemLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 67109120;
      v23[1] = v12;
      _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKFeatureEnablerHelpers - Sports enabled from config %d", v23, 8u);
    }

    v15 = *(*(a1 + 32) + 16);
  }

  else
  {
    v16 = WLKSystemLogObject(v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __WLKFetchIsSportsEnabled_block_invoke_cold_1(v7, v16, v17, v18, v19, v20, v21, v22);
    }

    v15 = *(*(a1 + 32) + 16);
  }

  v15();
}

uint64_t WLKIsSportsEnabled(void *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __WLKIsSportsEnabled_block_invoke;
  v6[3] = &unk_279E5E8D0;
  v8 = &v16;
  v9 = &v10;
  v3 = v2;
  v7 = v3;
  WLKFetchIsSportsEnabled(v6);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (a1)
  {
    *a1 = v11[5];
  }

  v4 = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v4;
}

void sub_272A2019C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void __WLKIsSportsEnabled_block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t WLKIsSportsFavoritesEnabled(void *a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v2 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __WLKIsSportsFavoritesEnabled_block_invoke;
  v12[3] = &unk_279E5E8D0;
  v14 = &v22;
  v15 = &v16;
  v3 = v2;
  v13 = v3;
  WLKFetchIsSportsFavoritesEnabled(v12);
  v4 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKFeatureEnablerHelperDomain" code:1 userInfo:0];
    v6 = v17[5];
    v17[5] = v5;

    v8 = WLKSystemLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKFeatureEnablerHelpers - Timed out getting the config.", v11, 2u);
    }
  }

  if (a1)
  {
    *a1 = v17[5];
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v9;
}

void sub_272A203F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void WLKFetchIsSportsFavoritesEnabled(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = WLKSportsFavoritesEnabledOverride();
  v3 = v2;
  if (v2)
  {
    v4 = WLKSystemLogObject(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = [v3 BOOLValue];
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKFeatureEnablerHelpers - Sports favorites enabled *override*: %d", buf, 8u);
    }

    v1[2](v1, [v3 BOOLValue], 0);
  }

  else
  {
    v5 = +[WLKConfigurationManager sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __WLKFetchIsSportsFavoritesEnabled_block_invoke;
    v6[3] = &unk_279E5E8A8;
    v7 = v1;
    [v5 fetchConfigurationWithCompletionHandler:v6];
  }
}

void __WLKIsSportsFavoritesEnabled_block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __WLKFetchIsSportsFavoritesEnabled_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && ([v5 features], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v6, objc_msgSend(v5, "features"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10))
  {
    v11 = [v5 features];
    v12 = [v11 wlk_BOOLForKey:@"sportsFavorites" defaultValue:0];

    v14 = WLKSystemLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 67109120;
      v23[1] = v12;
      _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "WLKFeatureEnablerHelpers - Sports enabled from config %d", v23, 8u);
    }

    v15 = *(*(a1 + 32) + 16);
  }

  else
  {
    v16 = WLKSystemLogObject(v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __WLKFetchIsSportsEnabled_block_invoke_cold_1(v7, v16, v17, v18, v19, v20, v21, v22);
    }

    v15 = *(*(a1 + 32) + 16);
  }

  v15();
}

uint64_t WLKIsNLSBubbleTipEnabled(void *a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v2 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __WLKIsNLSBubbleTipEnabled_block_invoke;
  v12[3] = &unk_279E5E8D0;
  v14 = &v22;
  v15 = &v16;
  v3 = v2;
  v13 = v3;
  WLKFetchIsBubbleTipEnabled(0, v12);
  v4 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKFeatureEnablerHelperDomain" code:1 userInfo:0];
    v6 = v17[5];
    v17[5] = v5;

    v8 = WLKSystemLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKFeatureEnablerHelpers - Timed out getting the config for feature enablement for bubble tip.", v11, 2u);
    }
  }

  if (a1)
  {
    *a1 = v17[5];
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v9;
}

void sub_272A20968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void WLKFetchIsBubbleTipEnabled(int a1, void *a2)
{
  v3 = a2;
  v4 = +[WLKConfigurationManager sharedInstance];
  if (a1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __WLKFetchIsBubbleTipEnabled_block_invoke;
  v7[3] = &unk_279E5E8A8;
  v8 = v3;
  v6 = v3;
  [v4 fetchConfigurationWithOptions:0 cachePolicy:v5 queryParameters:0 completion:v7];
}

void __WLKIsNLSBubbleTipEnabled_block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t WLKIsNLSBubbleTipEnabledInCache(void *a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v2 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __WLKIsNLSBubbleTipEnabledInCache_block_invoke;
  v12[3] = &unk_279E5E8D0;
  v14 = &v22;
  v15 = &v16;
  v3 = v2;
  v13 = v3;
  WLKFetchIsBubbleTipEnabled(1, v12);
  v4 = dispatch_time(0, 500000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKFeatureEnablerHelperDomain" code:1 userInfo:0];
    v6 = v17[5];
    v17[5] = v5;

    v8 = WLKSystemLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKFeatureEnablerHelpers - Timed out accessing cached config for feature enablement for bubble tip.", v11, 2u);
    }
  }

  if (a1)
  {
    *a1 = v17[5];
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v9;
}

void sub_272A20CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void __WLKIsNLSBubbleTipEnabledInCache_block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __WLKFetchIsBubbleTipEnabled_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v10 = WLKSystemLogObject(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __WLKFetchIsSportsEnabled_block_invoke_cold_1(v6, v10, v11, v12, v13, v14, v15, v16);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = [a2 naturalLanguageSearchProperty];
    v8 = WLKSystemLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 67109120;
      v17[1] = v7;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKFeatureEnablerHelpers - NLS Bubble Tip enabled from config %d", v17, 8u);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id WLKLaunchOptionsForPlayback(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0AC58]];
  if (a1)
  {
    [v2 addEntriesFromDictionary:&unk_288222D88];
    [v2 setObject:&unk_288222D88 forKey:*MEMORY[0x277D0AC30]];
  }

  return v2;
}

void sub_272A23D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A249D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272A25618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A25808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WLKIsTVAppEnabled()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v0 = dispatch_semaphore_create(0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __WLKIsTVAppEnabled_block_invoke;
  v4[3] = &unk_279E5EA40;
  v6 = &v7;
  v1 = v0;
  v5 = v1;
  WLKFetchNowPlayingEnabled(v4);
  dispatch_semaphore_wait(v1, 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v2;
}

void sub_272A25D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WLKFetchNowPlayingEnabled(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __WLKFetchNowPlayingEnabled_block_invoke;
  v3[3] = &unk_279E5EA68;
  v4 = v1;
  v2 = v1;
  WLKFetchNowPlayingEnabledReturningError(v3);
}

uint64_t WLKIsLocationEnabled()
{
  v0 = WLKLocationEnabledOverride();
  v1 = v0;
  if (v0)
  {
    NSLog(&cfstr_Wlkislocatione.isa, [v0 BOOLValue]);
    v2 = [v1 BOOLValue];
  }

  else
  {
    v3 = [MEMORY[0x277D6C480] app];
    v4 = [v3 BOOLeanForKey:kBagKeyUVSearchLocationEnabled];

    v2 = [v4 BOOLValue];
  }

  return v2;
}

void WLKFetchNowPlayingEnabledReturningError(void *a1)
{
  v1 = a1;
  v2 = WLKTVAppEnabledOverride();
  v3 = v2;
  if (v2)
  {
    NSLog(&cfstr_Wlkisnowplayin.isa, [v2 BOOLValue]);
    v4 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
    [v4 setBool:objc_msgSend(v3 forKey:{"BOOLValue"), @"lastKnownTVAppEnabledValue"}];

    if (v1)
    {
      v1[2](v1, [v3 BOOLValue], 0);
    }
  }

  else
  {
    v5 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __WLKFetchNowPlayingEnabledReturningError_block_invoke;
    block[3] = &unk_279E5EA90;
    v7 = v1;
    dispatch_async(v5, block);
  }
}

uint64_t __WLKFetchNowPlayingEnabled_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __WLKFetchNowPlayingEnabledReturningError_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6C480] app];
  v3 = [v2 cachedBooleanForKey:kBagKeyUVSearchNowPlayingEnabled];

  v5 = WLKSystemLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "Fetch now playing enabled: %@", &v9, 0xCu);
  }

  v6 = [v3 BOOLValue];
  if (!v3)
  {
    v7 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
    [v7 setBool:v6 forKey:@"lastKnownTVAppEnabledValue"];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, 0);
  }
}

void WLKFetchPrivacyAcknowledgementURLWithCompletionHandler(void *a1)
{
  v3 = a1;
  v1 = [MEMORY[0x277D6C480] app];
  v2 = [v1 urlForKey:kBagAcknowledgePrivacyLink];

  if (v3)
  {
    v3[2](v3, v2, 0);
  }
}

void WLKFetchBaseURLWithCompletion(void *a1)
{
  v1 = a1;
  v2 = WLKBaseURLOverride();
  if (v2)
  {
    if (v1)
    {
      v1[2](v1, v2, 0);
    }
  }

  else
  {
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __WLKFetchBaseURLWithCompletion_block_invoke;
    block[3] = &unk_279E5EA90;
    v5 = v1;
    dispatch_async(v3, block);
  }
}

void __WLKFetchBaseURLWithCompletion_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6C480] app];
  v5 = [v2 cachedURLForKey:kBagKeyUVSearchUtsApiBaseURL];

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v5 absoluteString];
    (*(v3 + 16))(v3, v4, 0);
  }
}

void sub_272A271A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A28070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A28B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A299A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WLKIsSandboxed(uint64_t a1, uint64_t a2)
{
  if (WLKIsSandboxed_onceToken != -1)
  {
    WLKIsSandboxed_cold_1();
  }

  return WLKIsSandboxed_retVal;
}

uint64_t __WLKIsSandboxed_block_invoke()
{
  getpid();
  result = sandbox_check();
  WLKIsSandboxed_retVal = result != 0;
  return result;
}

uint64_t WLKIsTool(uint64_t a1, uint64_t a2)
{
  if (WLKIsTool_onceToken != -1)
  {
    WLKIsTool_cold_1();
  }

  return WLKIsTool_retVal;
}

void __WLKIsTool_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  WLKIsTool_retVal = [v1 isEqualToString:@"com.apple.watchlisttool"];
}

uint64_t WLKIsWatchlisttool(uint64_t a1, uint64_t a2)
{
  if (WLKIsWatchlisttool_onceToken != -1)
  {
    WLKIsWatchlisttool_cold_1();
  }

  return WLKIsWatchlisttool_retVal;
}

void __WLKIsWatchlisttool_block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  WLKIsWatchlisttool_retVal = [v0 isEqualToString:@"watchlisttool"];
}

uint64_t WLKIsNewsApp(uint64_t a1, uint64_t a2)
{
  if (WLKIsNewsApp_onceToken != -1)
  {
    WLKIsNewsApp_cold_1();
  }

  return WLKIsNewsApp_retVal;
}

void __WLKIsNewsApp_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  WLKIsNewsApp_retVal = [v1 isEqualToString:@"com.apple.news"];
}

void sub_272A2FC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id fetchedApplicationsCompletion_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"Installed";
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a2 copy];
  v18[0] = v11;
  v17[1] = @"Subscribed";
  v12 = [v10 copy];

  v18[1] = v12;
  v17[2] = @"Test";
  v13 = [v9 copy];

  v18[2] = v13;
  v17[3] = @"NonConforming";
  v14 = [v8 copy];

  v18[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

void _configureDemoBundles(void *a1, void *a2, void *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = WLKStartupSignpostLogObject(v7);
  v9 = os_signpost_id_generate(v8);

  v11 = WLKStartupSignpostLogObject(v10);
  v12 = v11;
  v50 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LibraryCore.configureDemoBundles", &unk_272A8884E, buf, 2u);
  }

  spid = v9;

  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = CFPreferencesCopyAppValue(@"DemoInstalledBundleIdentifiers", @"com.apple.WatchListKit");
  v13 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v13)
  {
    v14 = v13;
    v54 = *v66;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v66 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v65 + 1) + 8 * i);
        if ([v5 count])
        {
          v17 = 0;
          while (1)
          {
            v18 = [v5 objectAtIndexedSubscript:v17];
            v19 = [v18 bundleIdentifier];
            v20 = [v19 isEqualToString:v16];

            if (v20)
            {
              break;
            }

            if (++v17 >= [v5 count])
            {
              goto LABEL_15;
            }
          }

          [v5 removeObjectAtIndex:v17];
        }

LABEL_15:
        v21 = [WLKAppProxy alloc];
        v22 = WLKAppProxyDictionaryForDemoBundleID(v16, 0);
        v23 = [(WLKAppProxy *)v21 initWithDictionary:v22];

        [v5 addObject:v23];
      }

      v14 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v14);
  }

  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v51 = CFPreferencesCopyAppValue(@"DemoSubscribedBundleIdentifiers", @"com.apple.WatchListKit");
  v24 = [v51 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v24)
  {
    v25 = v24;
    v55 = *v62;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v62 != v55)
        {
          objc_enumerationMutation(v51);
        }

        v27 = *(*(&v61 + 1) + 8 * j);
        if ([v6 count])
        {
          v28 = 0;
          while (1)
          {
            v29 = [v6 objectAtIndexedSubscript:v28];
            v30 = [v29 bundleIdentifier];
            v31 = [v30 isEqualToString:v27];

            if (v31)
            {
              break;
            }

            if (++v28 >= [v6 count])
            {
              goto LABEL_28;
            }
          }

          [v6 removeObjectAtIndex:v28];
        }

LABEL_28:
        v32 = WLKAppProxyDictionaryForDemoBundleID(v27, 0);
        v33 = [v32 mutableCopy];

        [v33 setObject:@"Demo" forKey:@"WLKAppProxy.subscriptionInfo"];
        v34 = [[WLKAppProxy alloc] initWithDictionary:v33];
        [v6 addObject:v34];
      }

      v25 = [v51 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v25);
  }

  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v53 = CFPreferencesCopyAppValue(@"DemoTestBundleIdentifiers", @"com.apple.WatchListKit");
  v35 = [v53 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v35)
  {
    v36 = v35;
    v56 = *v58;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v58 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v38 = *(*(&v57 + 1) + 8 * k);
        if ([v7 count])
        {
          v39 = 0;
          while (1)
          {
            v40 = [v7 objectAtIndexedSubscript:v39];
            v41 = [v40 bundleIdentifier];
            v42 = [v41 isEqualToString:v38];

            if (v42)
            {
              break;
            }

            if (++v39 >= [v7 count])
            {
              goto LABEL_41;
            }
          }

          [v7 removeObjectAtIndex:v39];
        }

LABEL_41:
        v43 = WLKAppProxyDictionaryForDemoBundleID(v38, 1);
        v44 = [v43 mutableCopy];

        v45 = [[WLKAppProxy alloc] initWithDictionary:v44];
        [v7 addObject:v45];
      }

      v36 = [v53 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v36);
  }

  v47 = WLKStartupSignpostLogObject(v46);
  v48 = v47;
  if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v48, OS_SIGNPOST_INTERVAL_END, spid, "LibraryCore.configureDemoBundles", &unk_272A8884E, buf, 2u);
  }
}

void sub_272A334F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A3381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A341BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_272A344E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WLKError(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v5)
  {
    v8 = [v5 copy];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (v6)
  {
    v9 = [v6 copy];
    [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKErrorDomain" code:a1 userInfo:v7];

  return v10;
}

uint64_t WLKHTTPStatusCodeForAMSError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x277CEE188];

  if (v2 == v3)
  {
    v5 = [v1 userInfo];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEE1A8]];
    v4 = [v6 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_272A37D90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272A380F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A3CCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WLKAppVisibilityLogObject(uint64_t a1)
{
  if (WLKAppVisibilityLogObject_onceToken != -1)
  {
    WLKAppVisibilityLogObject_cold_1();
  }

  v2 = WLKAppVisibilityLogObject_logger;

  return v2;
}

uint64_t __WLKAppVisibilityLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.WatchListKit", "Visibility");
  v1 = WLKAppVisibilityLogObject_logger;
  WLKAppVisibilityLogObject_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id WLKPlaybackTrackingLogObject(uint64_t a1)
{
  if (WLKPlaybackTrackingLogObject_onceToken != -1)
  {
    WLKPlaybackTrackingLogObject_cold_1();
  }

  v2 = WLKPlaybackTrackingLogObject_logger;

  return v2;
}

uint64_t __WLKPlaybackTrackingLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.WatchListKit", "PlaybackTracking");
  v1 = WLKPlaybackTrackingLogObject_logger;
  WLKPlaybackTrackingLogObject_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id WLKSiriActionsLogObject(uint64_t a1)
{
  if (WLKSiriActionsLogObject_onceToken != -1)
  {
    WLKSiriActionsLogObject_cold_1();
  }

  v2 = WLKSiriActionsLogObject_logger;

  return v2;
}

uint64_t __WLKSiriActionsLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.WatchListKit", "SiriActions");
  v1 = WLKSiriActionsLogObject_logger;
  WLKSiriActionsLogObject_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id WLKSubscriptionIdentifierForBundleID(void *a1)
{
  v1 = a1;
  v2 = +[WLKAppLibrary defaultAppLibrary];
  v3 = [v2 subscriptionInfoForBundle:v1];

  v4 = [v3 dataUsingEncoding:4];
  if (v4)
  {
    v9 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v9];
    v6 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 objectForKeyedSubscript:@"account"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7;
}

id WLKAppProxyDictionaryForLSApplicationRecord(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [v1 bundleIdentifier];
  [v2 wlk_setObjectUnlessNil:v3 forKey:@"WLKAppProxy.bundleIdentifier"];

  v4 = [v1 shortVersionString];
  [v2 wlk_setObjectUnlessNil:v4 forKey:@"WLKAppProxy.version"];

  v5 = [v1 entitlements];
  v6 = [v5 objectForKey:@"com.apple.smoot.subscriptionservice" ofClass:objc_opt_class()];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "BOOLValue")}];
  [v2 setObject:v7 forKey:@"WLKAppProxy.isEntitled"];

  if ([v1 isBeta])
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKey:@"WLKAppProxy.isBeta"];
  }

  if ([v1 isAppStoreVendable])
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKey:@"WLKAppProxy.isAppStoreVendable"];
  }

  if ([v1 developerType] == 1)
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKey:@"WLKAppProxy.isSystem"];
  }

  v8 = [v1 infoDictionary];
  v9 = [v8 objectForKey:@"UISupportsTVApp" ofClass:objc_opt_class()];

  [v2 wlk_setObjectUnlessNil:v9 forKey:@"WLKAppProxy.supportsTVApp"];
  v10 = [v1 iTunesMetadata];
  v11 = [v10 storeItemIdentifier];

  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    [v2 setObject:v12 forKeyedSubscript:@"WLKAppProxy.itemID"];
  }

  v13 = [v2 copy];

  return v13;
}

WLKAppProxy *WLKAppProxyForLSApplicationRecord(void *a1)
{
  v1 = a1;
  v2 = [WLKAppProxy alloc];
  v3 = WLKAppProxyDictionaryForLSApplicationRecord(v1);

  v4 = [(WLKAppProxy *)v2 initWithDictionary:v3];

  return v4;
}

id WLKAppProxyDictionaryForDemoBundleID(void *a1, int a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  [v5 setObject:v4 forKey:@"WLKAppProxy.bundleIdentifier"];

  [v5 setObject:MEMORY[0x277CBEC38] forKey:@"WLKAppProxy.isEntitled"];
  if (a2)
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKey:@"WLKAppProxy.isBeta"];
  }

  v6 = [v5 copy];

  return v6;
}

void sub_272A42B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A43F6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_272A44A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_272A45670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_272A460E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A46E44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_272A47908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_272A482CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A4A518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A4A76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WLKEqualObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  return v6;
}

void sub_272A4C058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A4C1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A4C4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A4C640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A4CE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A4DDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A50648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A514AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_272A51DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_272A53904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A54804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A5532C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272A56738(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_272A56CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A57640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A57E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_272A598B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_272A5A388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_272A5A524(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272A5A988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v23 + 96));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v22);
  _Unwind_Resume(a1);
}

void sub_272A5C6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_272A5D054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_272A5EDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A5FE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A60918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A60C90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272A61018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_272A61838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272A625EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A62714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_272A629FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A62E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WLKRestrictionsMaximumEffectiveAppRanking()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 effectiveValueForSetting:*MEMORY[0x277D25F70]];

  v2 = [v1 intValue];
  if (v2 == *MEMORY[0x277CEC570])
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

id WLKSystemSettingsDebugOverride()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SystemSettingsDebug", @"com.apple.WatchListKit", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = [MEMORY[0x277CCABB0] numberWithBool:AppBooleanValue != 0];
    NSLog(&cfstr_Wlksystemsetti.isa, v1);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id WLKSportsEnabledOverride()
{
  keyExistsAndHasValidFormat = 0;
  v0 = WLKTVAppBundleID();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"WLKSportsEnabledOverride", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithBool:AppBooleanValue != 0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WLKSportsFavoritesEnabledOverride()
{
  keyExistsAndHasValidFormat = 0;
  v0 = WLKTVAppBundleID();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"WLKSportsFavoritesEnabledOverride", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithBool:AppBooleanValue != 0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WLKLocationEnabledOverride()
{
  keyExistsAndHasValidFormat = 0;
  v0 = WLKTVAppBundleID();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"WLKLocationEnabledOverride", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithBool:AppBooleanValue != 0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WLKBulletinTimeoutOverride()
{
  keyExistsAndHasValidFormat = 0;
  v0 = WLKTVAppBundleID();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BulletinTimeout", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithLong:AppIntegerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t WLKRetryOnBackgroundTimeOutJSOverride(uint64_t a1)
{
  if (WLKRetryOnBackgroundTimeOutJSOverride_onceToken != -1)
  {
    WLKRetryOnBackgroundTimeOutJSOverride_cold_1();
  }

  v2 = WLKRetryOnBackgroundTimeOutJSOverride_retVal;

  return [v2 BOOLValue];
}

void __WLKRetryOnBackgroundTimeOutJSOverride_block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277CBEBD0]);
  v0 = [v2 objectForKey:@"RetryOnLongBackgroundedTimeOut"];
  v1 = v0;
  if (v0)
  {
    NSLog(&cfstr_Wlkretryonback.isa, v0);
    objc_storeStrong(&WLKRetryOnBackgroundTimeOutJSOverride_retVal, v1);
  }
}

uint64_t WLKCheckAuthentication(void *a1)
{
  v2 = +[WLKAccountMonitor sharedInstance];
  v3 = [v2 activeAccount];
  v4 = [v3 isAuthenticated];

  if (a1 && (v4 & 1) == 0)
  {
    *a1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKSportsFavoriteErrorDomain" code:-3 userInfo:0];
  }

  if (v4)
  {
    return 1;
  }

  return WLKIsRunningTest();
}

id WLKXPCSafeErrorFromError(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCA9B8];
    v2 = a1;
    v3 = [v2 domain];
    v4 = [v2 code];

    v5 = [v1 errorWithDomain:v3 code:v4 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_272A6ADAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A6B564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A6C6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A6CC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A6DCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A6E080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A6F610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272A711C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272A71EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _WLKDeepReplacement(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___WLKDeepReplacement_block_invoke;
    v25[3] = &unk_279E60C30;
    v9 = v8;
    v26 = v9;
    v10 = v6;
    v27 = v10;
    v11 = v7;
    v28 = v11;
    [v5 enumerateKeysAndObjectsUsingBlock:v25];
    v12 = [v9 objectForKey:v10];

    if (v12)
    {
      [v9 setObject:v11 forKey:v10];
    }

    v13 = [v9 copy];

    v14 = v26;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = _WLKDeepReplacement(*(*(&v21 + 1) + 8 * i), v6, v7);
          [v9 addObject:{v19, v21}];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    v13 = [v9 copy];
  }

  v5 = v13;
LABEL_15:

  return v5;
}

void sub_272A7286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id TVASDefaultSupportPath(uint64_t a1)
{
  if (TVASDefaultSupportPath_onceToken != -1)
  {
    TVASDefaultSupportPath_cold_1();
  }

  v2 = TVASDefaultSupportPath__path;

  return v2;
}

void __TVASDefaultSupportPath_block_invoke()
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v0 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.tvappservices.container"];
  v1 = [v0 path];
  v2 = TVASDefaultSupportPath__path;
  TVASDefaultSupportPath__path = v1;
}

void sub_272A74034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __WLKFetchIsSportsEnabled_block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_272A0F000, a2, a3, "WLKFeatureEnablerHelpers - An error occured getting the config %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __WLKDefaultSupportPath_block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 136315138;
  v5 = [v3 UTF8String];
  _os_log_error_impl(&dword_272A0F000, a2, OS_LOG_TYPE_ERROR, "WLKPathUtilities - Failed to remove previous DefaultSupportPath location file with error: %s", &v4, 0xCu);
}