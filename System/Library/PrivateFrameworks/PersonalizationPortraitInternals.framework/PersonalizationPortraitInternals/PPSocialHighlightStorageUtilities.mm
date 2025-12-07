@interface PPSocialHighlightStorageUtilities
+ (id)excludedChatBundleIds;
+ (id)filteredAllowedChatBundleIds:(id)ids;
- (PPSocialHighlightStorageUtilities)init;
- (id)resolveBundleIdToApplicationIdentifierIfInstalled:(id)installed;
@end

@implementation PPSocialHighlightStorageUtilities

+ (id)excludedChatBundleIds
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = CFPreferencesCopyAppValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v13 = objc_opt_class();
              *buf = 138543619;
              v21 = v13;
              v22 = 2113;
              v23 = v8;
              v14 = v13;
              _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "Item of unexpected type in SBSearchDisabledBundles array: %{public}@ (%{private}@)", buf, 0x16u);
            }

            goto LABEL_17;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v3 = v3;
    v9 = v3;
    goto LABEL_18;
  }

  if (v2)
  {
    v3 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543619;
      v21 = objc_opt_class();
      v22 = 2113;
      v23 = v2;
      v10 = v21;
      _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "Unexpected type for SBSearchDisabledBundles: %{public}@ (%{private}@)", buf, 0x16u);
    }

LABEL_17:
    v9 = MEMORY[0x277CBEBF8];
LABEL_18:

    goto LABEL_19;
  }

  v9 = MEMORY[0x277CBEBF8];
LABEL_19:

  return v9;
}

- (id)resolveBundleIdToApplicationIdentifierIfInstalled:(id)installed
{
  v54 = *MEMORY[0x277D85DE8];
  installedCopy = installed;
  if ([installedCopy count])
  {
    v29 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = installedCopy;
    obj = installedCopy;
    v5 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (!v5)
    {
      goto LABEL_26;
    }

    v31 = *v46;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v39 = 0;
        v40 = &v39;
        v41 = 0x3032000000;
        v42 = __Block_byref_object_copy__1068;
        v43 = __Block_byref_object_dispose__1069;
        v44 = 0;
        bundleIdToAppIdCacheLock = self->_bundleIdToAppIdCacheLock;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke;
        v38[3] = &unk_2789720D8;
        v38[4] = v7;
        v38[5] = &v39;
        [(_PASLock *)bundleIdToAppIdCacheLock runWithLockAcquired:v38];
        v10 = v40[5];
        if (!v10)
        {
          v14 = v7;
          v15 = objc_alloc(MEMORY[0x277CC1E70]);
          v37 = 0;
          v16 = [v15 initWithBundleIdentifier:v14 allowPlaceholder:0 error:&v37];
          v17 = v37;
          if (v16)
          {
            v18 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v50 = v14;
              v51 = 2112;
              v52 = v16;
              _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "Considering registered bundleID: %@, got record: %@", buf, 0x16u);
            }

            applicationState = [v16 applicationState];
            if ([applicationState isInstalled])
            {
              v20 = [v16 URL];
              v21 = v20 == 0;

              if (!v21)
              {
                applicationState = [v16 applicationIdentifier];
                if (applicationState)
                {
                  [v29 addObject:applicationState];
                  v22 = self->_bundleIdToAppIdCacheLock;
                  v32[0] = MEMORY[0x277D85DD0];
                  v32[1] = 3221225472;
                  v32[2] = __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke_19;
                  v32[3] = &unk_278971C38;
                  v33 = v14;
                  applicationState = applicationState;
                  v34 = applicationState;
                  [(_PASLock *)v22 runWithLockAcquired:v32];
                }

                goto LABEL_22;
              }

LABEL_23:

              goto LABEL_24;
            }
          }

          else
          {
            v23 = pp_social_highlights_log_handle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v50 = v14;
              v51 = 2112;
              v52 = v17;
              _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_INFO, "Failed to initialize LSApplicationRecord with bundle id %@: %@", buf, 0x16u);
            }

            v24 = self->_bundleIdToAppIdCacheLock;
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke_18;
            v35[3] = &unk_278971C10;
            v36 = v14;
            [(_PASLock *)v24 runWithLockAcquired:v35];
            applicationState = v36;
          }

LABEL_22:

          goto LABEL_23;
        }

        null = [MEMORY[0x277CBEB68] null];
        v12 = v10 == null;

        if (!v12)
        {
          v13 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v25 = v40[5];
            *buf = 138412546;
            v50 = v25;
            v51 = 2112;
            v52 = v7;
            _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "Fetching cached application identifier %@ for bundle ID: %@", buf, 0x16u);
          }

          [v29 addObject:v40[5]];
        }

LABEL_24:
        _Block_object_dispose(&v39, 8);

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (!v5)
      {
LABEL_26:

        v26 = [v29 copy];
        installedCopy = v28;
        goto LABEL_28;
      }
    }
  }

  v26 = 0;
LABEL_28:

  return v26;
}

uint64_t __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 objectForKeyedSubscript:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

void __87__PPSocialHighlightStorageUtilities_resolveBundleIdToApplicationIdentifierIfInstalled___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB68];
  v4 = a2;
  v5 = [v3 null];
  [v4 setObject:v5 forKeyedSubscript:*(a1 + 32)];
}

- (PPSocialHighlightStorageUtilities)init
{
  v8.receiver = self;
  v8.super_class = PPSocialHighlightStorageUtilities;
  v2 = [(PPSocialHighlightStorageUtilities *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    bundleIdToAppIdCacheLock = v2->_bundleIdToAppIdCacheLock;
    v2->_bundleIdToAppIdCacheLock = v5;
  }

  return v2;
}

+ (id)filteredAllowedChatBundleIds:(id)ids
{
  idsCopy = ids;
  excludedChatBundleIds = [self excludedChatBundleIds];
  if ([excludedChatBundleIds count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__PPSocialHighlightStorageUtilities_filteredAllowedChatBundleIds___block_invoke;
    v8[3] = &unk_2789793E0;
    v9 = excludedChatBundleIds;
    v6 = [idsCopy _pas_filteredArrayWithTest:v8];

    idsCopy = v9;
  }

  else
  {
    v6 = [idsCopy copy];
  }

  return v6;
}

@end