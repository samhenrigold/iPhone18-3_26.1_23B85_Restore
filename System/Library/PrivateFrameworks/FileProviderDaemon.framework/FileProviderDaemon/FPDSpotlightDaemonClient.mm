@interface FPDSpotlightDaemonClient
- (FPDSpotlightDaemonClient)initWithExtensionManager:(id)manager;
- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
@end

@implementation FPDSpotlightDaemonClient

- (FPDSpotlightDaemonClient)initWithExtensionManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = FPDSpotlightDaemonClient;
  v6 = [(FPDSpotlightDaemonClient *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionManager, manager);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("reindex-queue", v8);
    reindexQueue = v7->_reindexQueue;
    v7->_reindexQueue = v9;
  }

  return v7;
}

- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v10 = [class isEqualToString:*MEMORY[0x1E696A388]];
  v11 = fp_current_or_default_log();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = dCopy;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] Received call to reindex all items for bundle ID %@", buf, 0xCu);
    }

    reindexQueue = self->_reindexQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__FPDSpotlightDaemonClient_reindexAllItemsForBundleID_protectionClass_acknowledgementHandler___block_invoke;
    block[3] = &unk_1E83BE828;
    v15 = dCopy;
    selfCopy = self;
    v17 = handlerCopy;
    dispatch_async(reindexQueue, block);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPDSpotlightDaemonClient reindexAllItemsForBundleID:v12 protectionClass:? acknowledgementHandler:?];
    }

    handlerCopy[2](handlerCopy);
  }
}

void __94__FPDSpotlightDaemonClient_reindexAllItemsForBundleID_protectionClass_acknowledgementHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v38 = v4;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] reindexAllItemsForBundleID for bundle ID %@: On queue", buf, 0xCu);
  }

  v5 = dispatch_group_create();
  [*(*(a1 + 40) + 16) defaultProviderWithTopLevelBundleIdentifier:*(a1 + 32)];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = v36 = 0u;
  v6 = [v25 domainsByID];
  v7 = [v6 allValues];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v11 = v29;
    v26 = v5;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        dispatch_group_enter(v5);
        v14 = fp_current_or_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = v10;
          v16 = *(a1 + 32);
          [v13 identifier];
          v17 = v9;
          v19 = v18 = v11;
          v20 = [v19 fp_obfuscatedFilename];
          *buf = 138543618;
          v38 = v16;
          v10 = v15;
          v39 = 2114;
          v40 = v20;
          _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_INFO, "[INFO] Started running reindex-all for bundleID %{public}@ with domain %{public}@", buf, 0x16u);

          v11 = v18;
          v9 = v17;
          v5 = v26;
        }

        v21 = [v13 defaultBackend];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v29[0] = __94__FPDSpotlightDaemonClient_reindexAllItemsForBundleID_protectionClass_acknowledgementHandler___block_invoke_1;
        v29[1] = &unk_1E83BDF78;
        v30 = *(a1 + 32);
        v31 = v13;
        v32 = v5;
        [v21 reindexAllItemsWithDropReason:5 completionHandler:v28];
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v9);
  }

  v22 = fp_current_or_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = *(a1 + 32);
    *buf = 138412290;
    v38 = v23;
    _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, "[INFO] Completing call to reindex all items for bundle ID %@", buf, 0xCu);
  }

  v24 = dispatch_get_global_queue(0, 0);
  dispatch_group_notify(v5, v24, *(a1 + 48));
}

void __94__FPDSpotlightDaemonClient_reindexAllItemsForBundleID_protectionClass_acknowledgementHandler___block_invoke_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) identifier];
    v7 = [v6 fp_obfuscatedFilename];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_INFO, "[INFO] Finished running reindex-all for bundleID %{public}@ with domain %{public}@, error: %@", &v8, 0x20u);
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  handlerCopy = handler;
  v13 = [class isEqualToString:*MEMORY[0x1E696A388]];
  v14 = fp_current_or_default_log();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v23 = [identifiersCopy count];
      v24 = 2112;
      v25 = dCopy;
      _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_INFO, "[INFO] Received call to reindex %lu items for bundle ID %@", buf, 0x16u);
    }

    reindexQueue = self->_reindexQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke;
    v17[3] = &unk_1E83BE3B0;
    v18 = dCopy;
    v19 = identifiersCopy;
    selfCopy = self;
    v21 = handlerCopy;
    dispatch_async(reindexQueue, v17);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPDSpotlightDaemonClient reindexItemsWithIdentifiers:v15 bundleID:? protectionClass:? acknowledgementHandler:?];
    }

    handlerCopy[2](handlerCopy);
  }
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v58 = v4;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] reindexItemsWithIdentifiers for bundle ID %@: On queue", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v40 = a1;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v53 + 1) + 8 * i);
        v51 = 0;
        v52 = 0;
        [MEMORY[0x1E69673A0] getDomainIdentifier:&v52 andIdentifier:&v51 fromCoreSpotlightIdentifier:v11];
        v12 = v52;
        v13 = v51;
        v14 = v13;
        if (v12)
        {
          if (v13)
          {
            v15 = [v5 objectForKeyedSubscript:v12];
            if (!v15)
            {
              v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v15 addObject:v11];
            [v5 setObject:v15 forKeyedSubscript:v12];
          }

          else
          {
            v15 = fp_current_or_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_cold_1(v62, &v63, v15);
            }
          }
        }

        else
        {
          v15 = fp_current_or_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v58 = v11;
            _os_log_error_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_ERROR, "[ERROR] Error converting CS identifier %@ to FP domain during reindex", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v8);
  }

  group = dispatch_group_create();
  v16 = v40;
  v41 = [*(*(v40 + 48) + 16) defaultProviderWithTopLevelBundleIdentifier:*(v40 + 32)];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v48;
    *&v19 = 138412546;
    v39 = v19;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v47 + 1) + 8 * j);
        v24 = [v17 objectForKeyedSubscript:{v23, v39}];
        if ([v24 count])
        {
          v25 = [v41 domainsByID];
          v26 = [v25 objectForKeyedSubscript:v23];

          if (v26)
          {
            dispatch_group_enter(group);
            v27 = fp_current_or_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = *(v40 + 32);
              v29 = [v26 identifier];
              v30 = [v29 fp_obfuscatedFilename];
              *buf = 138543618;
              v58 = v28;
              v16 = v40;
              v59 = 2114;
              v60 = v30;
              _os_log_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_INFO, "[INFO] Started running reindex items for bundleID %{public}@ with domain %{public}@", buf, 0x16u);
            }

            v31 = [v26 defaultBackend];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_6;
            v43[3] = &unk_1E83BDF78;
            v44 = v26;
            v45 = v16[4];
            v46 = group;
            [v31 reindexItemsWithIndexReason:7 identifiers:v24 completionHandler:v43];

            v32 = v44;
          }

          else
          {
            v32 = fp_current_or_default_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v34 = v16[4];
              *buf = v39;
              v58 = v34;
              v59 = 2112;
              v60 = v23;
              _os_log_error_impl(&dword_1CEFC7000, v32, OS_LOG_TYPE_ERROR, "[ERROR] reindexItemsWithIdentifiers for bundle ID %@: domain == nil for domain %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v26 = fp_current_or_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v33 = v16[4];
            *buf = v39;
            v58 = v33;
            v59 = 2112;
            v60 = v23;
            _os_log_debug_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] reindexItemsWithIdentifiers for bundle ID %@: items.count == 0 for domain %@", buf, 0x16u);
          }
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v20);
  }

  v35 = fp_current_or_default_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = [v16[5] count];
    v37 = v16[4];
    *buf = 134218242;
    v58 = v36;
    v59 = 2112;
    v60 = v37;
    _os_log_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_INFO, "[INFO] Completing call to reindex %lu items for bundle ID %@", buf, 0x16u);
  }

  v38 = dispatch_get_global_queue(0, 0);
  dispatch_group_notify(group, v38, v16[7]);
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_6(id *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_6_cold_1(a1, v3, v5);
    }

    v6 = [a1[4] defaultBackend];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_7;
    v10[3] = &unk_1E83BDF78;
    v11 = a1[5];
    v12 = a1[4];
    v13 = a1[6];
    [v6 reindexAllItemsWithDropReason:4 completionHandler:v10];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = a1[5];
      v8 = [a1[4] identifier];
      v9 = [v8 fp_obfuscatedFilename];
      *buf = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] Finished running reindex items for bundleID %{public}@ with domain %{public}@", buf, 0x16u);
    }

    dispatch_group_leave(a1[6]);
  }
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) identifier];
    v6 = [v5 fp_obfuscatedFilename];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] Finished running fallback reindex-all for bundleID %{public}@ with domain %{public}@", &v7, 0x16u);
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v10);
}

- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  dCopy = d;
  identifierCopy = identifier;
  handlerCopy = handler;
  reindexQueue = self->_reindexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
  block[3] = &unk_1E83C1040;
  v23 = handlerCopy;
  optionsCopy = options;
  v20 = identifierCopy;
  v21 = dCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v17 = dCopy;
  v18 = identifierCopy;
  dispatch_async(reindexQueue, block);
}

void __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 64);
  if (*(a1 + 64))
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_1(v3, v4);
    }
  }

  v23 = 0;
  v24 = 0;
  [MEMORY[0x1E69673A0] getDomainIdentifier:&v24 andIdentifier:&v23 fromCoreSpotlightIdentifier:*(a1 + 32)];
  v5 = v24;
  v6 = v23;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || !*(a1 + 40))
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_3();
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = [*(*(a1 + 48) + 16) defaultProviderWithTopLevelBundleIdentifier:?];
    v22 = 0;
    v10 = [v9 domainForIdentifier:v5 reason:&v22];
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E69673A0]);
      v12 = [v9 identifier];
      v13 = [v11 initWithProviderID:v12 domainIdentifier:v5 itemIdentifier:v7];

      v14 = [v10 defaultBackend];
      v15 = [MEMORY[0x1E696B0B8] currentConnection];
      v16 = [FPDRequest requestForXPCConnection:v15];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_11;
      v20[3] = &unk_1E83C1018;
      v21 = *(a1 + 56);
      [v14 URLForItemID:v13 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:0 forBookmarkResolution:0 request:v16 completionHandler:v20];
    }

    else
    {
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_2();
      }

      v19 = *(a1 + 56);
      v13 = FPProviderNotFoundError();
      (*(v19 + 16))(v19, 0, v13);
    }
  }
}

void __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 url];
  (*(v3 + 16))(v3, v4, 0);
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = 0;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] Error converting CS identifier %@ to FP identifier during reindex", buf, 0xCu);
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_6_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) identifier];
  v6 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Error reindexing specific items for domain %@, falling back to reindex all %@", &v7, 0x16u);
}

void __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Options are not supported in FileProvider %ld", &v3, 0xCu);
}

@end