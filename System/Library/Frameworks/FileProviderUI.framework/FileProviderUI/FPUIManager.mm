@interface FPUIManager
+ (BOOL)isAction:(id)action eligibleForItems:(id)items;
+ (id)actionsForProviderDomain:(id)domain;
+ (id)authenticationActionForProviderDomain:(id)domain;
+ (id)createFPUIActionWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline isNonUIAction:(BOOL)action fpProviderDomain:(id)self0;
+ (id)extensionMatchingDictionaryForItems:(id)items fpProviderDomain:(id)domain;
+ (id)valueForKey:(id)key inActionPlist:(id)plist;
+ (void)getExtensionRecordsForUseCase:(unint64_t)case uiExtensionRecord:(id *)record nonUIExtensionRecord:(id *)extensionRecord forProviderDomain:(id)domain;
@end

@implementation FPUIManager

+ (id)authenticationActionForProviderDomain:(id)domain
{
  domainCopy = domain;
  v14 = 0;
  [self getExtensionRecordsForUseCase:0 uiExtensionRecord:&v14 nonUIExtensionRecord:0 forProviderDomain:domainCopy];
  v5 = v14;
  if (v5)
  {
    v6 = [v5 fpui_entitlementValueForKey:@"com.apple.private.fileproviderui.display-inline" ofClass:objc_opt_class()];
    bOOLValue = [v6 BOOLValue];

    bundleIdentifier = [v5 bundleIdentifier];
    providerID = [domainCopy providerID];
    v10 = [MEMORY[0x277CCAC30] predicateWithValue:1];
    LOBYTE(v13) = 0;
    v11 = [FPUIManager createFPUIActionWithIdentifier:&stru_284B1A950 uiActionProviderIdentifier:bundleIdentifier fileProviderIdentifier:providerID displayName:&stru_284B1A950 predicate:v10 displayInline:bOOLValue isNonUIAction:v13 fpProviderDomain:domainCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)createFPUIActionWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline isNonUIAction:(BOOL)action fpProviderDomain:(id)self0
{
  inlineCopy = inline;
  domainCopy = domain;
  predicateCopy = predicate;
  nameCopy = name;
  fileProviderIdentifierCopy = fileProviderIdentifier;
  providerIdentifierCopy = providerIdentifier;
  identifierCopy = identifier;
  LOBYTE(v24) = action;
  v22 = [[FPUIAction alloc] initWithIdentifier:identifierCopy uiActionProviderIdentifier:providerIdentifierCopy fileProviderIdentifier:fileProviderIdentifierCopy displayName:nameCopy predicate:predicateCopy displayInline:inlineCopy isNonUIAction:v24 fpProviderDomain:domainCopy];

  return v22;
}

+ (id)valueForKey:(id)key inActionPlist:(id)plist
{
  keyCopy = key;
  v6 = [plist objectForKeyedSubscript:keyCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v6;
  }

  else
  {
    v10 = fpuiLogHandle;
    if (!fpuiLogHandle)
    {
      FPUIInitLogging(isKindOfClass, v8);
      v10 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(FPUIManager *)keyCopy valueForKey:v10 inActionPlist:v6];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)actionsForProviderDomain:(id)domain
{
  v76 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v55 = domainCopy;
  v5 = fpuiLogHandle;
  if (!fpuiLogHandle)
  {
    FPUIInitLogging(domainCopy, v4);
    v5 = fpuiLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPUIManager *)v55 actionsForProviderDomain:v5];
  }

  v68 = 0;
  v69 = 0;
  [self getExtensionRecordsForUseCase:1 uiExtensionRecord:&v69 nonUIExtensionRecord:&v68 forProviderDomain:v55];
  v45 = v69;
  v52 = v68;
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  array = [MEMORY[0x277CBEB18] array];
  v7 = array;
  if (v45)
  {
    [array addObject:v45];
  }

  if (v52)
  {
    [v7 addObject:v52];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v7;
  v48 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (v48)
  {
    v47 = *v65;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v65 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v64 + 1) + 8 * i);
        v50 = [v53 fpui_extensionInfoForKey:@"NSExtensionFileProviderActions" ofClass:objc_opt_class()];
        if (v50)
        {
          v9 = [v53 URL];
          bundle = _CFBundleCreateUnique();

          if (bundle)
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v54 = v50;
            v58 = [v54 countByEnumeratingWithState:&v60 objects:v70 count:16];
            if (!v58)
            {
              goto LABEL_55;
            }

            v56 = *v61;
            while (1)
            {
              v12 = 0;
              do
              {
                if (*v61 != v56)
                {
                  objc_enumerationMutation(v54);
                }

                v13 = *(*(&v60 + 1) + 8 * v12);
                v14 = [self valueForKey:@"NSExtensionFileProviderActionIdentifier" inActionPlist:v13];
                v15 = [self valueForKey:@"NSExtensionFileProviderActionName" inActionPlist:v13];
                v16 = [self valueForKey:@"NSExtensionFileProviderActionActivationRule" inActionPlist:v13];
                v17 = CFBundleCopyLocalizedString(bundle, v15, v15, @"Localizable");
                v18 = v17;
                if (v17)
                {
                  v19 = v17;
                }

                else
                {
                  v19 = v15;
                }

                v20 = v19;

                if (v14)
                {
                  v21 = v15 == 0;
                }

                else
                {
                  v21 = 1;
                }

                if (!v21 && v16 != 0)
                {
                  v23 = [MEMORY[0x277CCAC30] predicateWithValue:1];
                  v24 = [v16 length];
                  if (v24)
                  {
                    v26 = v16;
                    [v26 rangeOfString:@"%"];
                    if (v27)
                    {
                      goto LABEL_33;
                    }

                    v28 = [MEMORY[0x277CCAC30] predicateWithFormat:v26];
                    if (!v28)
                    {
                      v37 = fpuiLogHandle;
                      if (!fpuiLogHandle)
                      {
                        FPUIInitLogging(0, v29);
                        v37 = fpuiLogHandle;
                      }

                      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v72 = v26;
                        _os_log_error_impl(&dword_238356000, v37, OS_LOG_TYPE_ERROR, "couldn't get predicate from string: %@", buf, 0xCu);
                      }

LABEL_33:
                      v28 = 0;
                    }
                  }

                  else
                  {
                    v28 = v23;
                  }

                  if (v28)
                  {
                    bundleIdentifier = [v53 bundleIdentifier];
                    providerID = [v55 providerID];
                    LOBYTE(v44) = v53 == v52;
                    v32 = [FPUIManager createFPUIActionWithIdentifier:v14 uiActionProviderIdentifier:bundleIdentifier fileProviderIdentifier:providerID displayName:v20 predicate:v28 displayInline:0 isNonUIAction:v44 fpProviderDomain:v55];

                    v33 = [v51 addObject:v32];
                    v35 = fpuiLogHandle;
                    if (!fpuiLogHandle)
                    {
                      FPUIInitLogging(v33, v34);
                      v35 = fpuiLogHandle;
                    }

                    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v72 = v14;
                      _os_log_error_impl(&dword_238356000, v35, OS_LOG_TYPE_ERROR, "Found action for %{public}@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v36 = fpuiLogHandle;
                    if (!fpuiLogHandle)
                    {
                      FPUIInitLogging(v24, v25);
                      v36 = fpuiLogHandle;
                    }

                    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v72 = v14;
                      _os_log_error_impl(&dword_238356000, v36, OS_LOG_TYPE_ERROR, "Invalid activation rule for %{public}@", buf, 0xCu);
                    }
                  }
                }

                ++v12;
              }

              while (v58 != v12);
              v38 = [v54 countByEnumeratingWithState:&v60 objects:v70 count:16];
              v58 = v38;
              if (!v38)
              {
LABEL_55:

                CFRelease(bundle);
                goto LABEL_64;
              }
            }
          }

          v40 = fpuiLogHandle;
          if (!fpuiLogHandle)
          {
            FPUIInitLogging(v10, v11);
            v40 = fpuiLogHandle;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = v40;
            v42 = [v53 URL];
            *buf = 138543618;
            v72 = v55;
            v73 = 2112;
            v74 = v42;
            _os_log_error_impl(&dword_238356000, v41, OS_LOG_TYPE_ERROR, "No extension bundle found for domain: %{public}@ at url %@", buf, 0x16u);
          }
        }

        else
        {
          v39 = fpuiLogHandle;
          if (!fpuiLogHandle)
          {
            FPUIInitLogging(0, v8);
            v39 = fpuiLogHandle;
          }

          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v72 = v55;
            _os_log_error_impl(&dword_238356000, v39, OS_LOG_TYPE_ERROR, "No action plists found for domain: %{public}@", buf, 0xCu);
          }
        }

LABEL_64:
      }

      v48 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v48);
  }

  return v51;
}

+ (BOOL)isAction:(id)action eligibleForItems:(id)items
{
  selfCopy = self;
  v24 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  itemsCopy = items;
  predicate = [actionCopy predicate];
  if (predicate)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = itemsCopy;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) == 0 || [v11 isKnownByTheProvider])
          {
            fileProviderIdentifier = [actionCopy fileProviderIdentifier];
            providerID = [v11 providerID];
            v14 = [fileProviderIdentifier isEqualToString:providerID];

            if (v14)
            {
              continue;
            }
          }

          v15 = 0;
          goto LABEL_15;
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v7 = [selfCopy extensionMatchingDictionaryForItems:v7 fpProviderDomain:0];
    v15 = [predicate evaluateWithObject:v7];
LABEL_15:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (void)getExtensionRecordsForUseCase:(unint64_t)case uiExtensionRecord:(id *)record nonUIExtensionRecord:(id *)extensionRecord forProviderDomain:(id)domain
{
  v38 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  providerID = [domainCopy providerID];
  v11 = [providerID isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];

  if (v11 || ([domainCopy providerID], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProvider"), v12, v13))
  {
    if (record)
    {
      *record = [MEMORY[0x277CC1E50] fpui_extensionRecordForIdentifier:@"com.apple.CloudDocs.MobileDocumentsFileProviderUI" useCase:case isUIExtension:1];
    }
  }

  else
  {
    v14 = MEMORY[0x277CC1E50];
    extensionBundleURL = [domainCopy extensionBundleURL];
    v16 = [v14 fpui_extensionRecordForURL:extensionBundleURL useCase:case isUIExtension:0];

    if (v16)
    {
      if (extensionRecord)
      {
        v17 = v16;
        *extensionRecord = v16;
      }

      providerID2 = [domainCopy providerID];
      v19 = [providerID2 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"];

      if (v19)
      {
        if (record)
        {
          *record = [MEMORY[0x277CC1E50] fpui_extensionRecordForIdentifier:@"com.apple.FileProviderUI.ServerAuthUIExtension" useCase:case isUIExtension:1];
        }
      }

      else
      {
        fpui_containingApplicationRecord = [v16 fpui_containingApplicationRecord];
        if (fpui_containingApplicationRecord)
        {
          v31 = fpui_containingApplicationRecord;
          recordCopy = record;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          obj = [fpui_containingApplicationRecord applicationExtensionRecords];
          v21 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v34;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v34 != v23)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v33 + 1) + 8 * i);
                v26 = [v25 fpui_extensionInfoForKey:@"NSExtensionPointIdentifier" ofClass:objc_opt_class()];
                if ([v26 isEqualToString:@"com.apple.fileprovider-actionsui"])
                {
                  v27 = [MEMORY[0x277CC1E50] fpui_extensionRecordByFiltering:v25 useCase:case isUIExtension:1];
                  if (v27)
                  {
                    v28 = v27;
                    if (recordCopy)
                    {
                      v29 = v25;
                      *recordCopy = v25;
                    }

                    goto LABEL_25;
                  }
                }
              }

              v22 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:

          fpui_containingApplicationRecord = v31;
        }
      }
    }
  }
}

+ (id)extensionMatchingDictionaryForItems:(id)items fpProviderDomain:(id)domain
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  domainCopy = domain;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = objc_autoreleasePoolPush();
        v14 = FPExtensionMatchingDictionaryForItem();
        [v7 addObject:{v14, v17}];

        objc_autoreleasePoolPop(v13);
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = objc_opt_new();
  [v15 setObject:v7 forKey:@"fileproviderItems"];

  return v15;
}

+ (void)valueForKey:(uint64_t)a3 inActionPlist:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = objc_opt_class();
  _os_log_error_impl(&dword_238356000, v4, OS_LOG_TYPE_ERROR, "Invalid value for %{public}@ got %{public}@ expected string", &v5, 0x16u);
}

+ (void)actionsForProviderDomain:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_238356000, a2, OS_LOG_TYPE_DEBUG, "Getting actionsForProviderDomain: %{public}@", &v2, 0xCu);
}

+ (void)isAction:(os_log_t)log eligibleForItems:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_238356000, log, OS_LOG_TYPE_ERROR, "Predicate evaluation threw an exception. Predicate: %@, Exception: %@", &v3, 0x16u);
}

@end