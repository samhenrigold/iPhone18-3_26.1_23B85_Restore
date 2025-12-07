@interface WBSPasswordManagerWebsiteMetadataStore
- (WBSPasswordManagerWebsiteMetadataStore)initWithMetadataEntryClass:(Class)class isForTesting:(BOOL)testing;
- (id)_initWithMetadataEntryClass:(Class)class keychainAccessGroup:(id)group;
- (id)synchronousMetadataForDomain:(id)domain;
- (id)test_initWithMetadataEntryClass:(Class)class keychainAccessGroup:(id)group;
- (void)allMetadataWithCompletionHandler:(id)handler;
- (void)debug_deleteAllPersistedDataWithCompletionHandler:(id)handler;
- (void)metadataForDomain:(id)domain completionHandler:(id)handler;
- (void)saveMetadataEntry:(id)entry forDomain:(id)domain completionHandler:(id)handler;
@end

@implementation WBSPasswordManagerWebsiteMetadataStore

- (WBSPasswordManagerWebsiteMetadataStore)initWithMetadataEntryClass:(Class)class isForTesting:(BOOL)testing
{
  if (testing)
  {
    v4 = @"com.apple.password-manager.website-metadata.testing";
  }

  else
  {
    v4 = @"com.apple.password-manager.website-metadata";
  }

  return [(WBSPasswordManagerWebsiteMetadataStore *)self _initWithMetadataEntryClass:class keychainAccessGroup:v4];
}

- (id)test_initWithMetadataEntryClass:(Class)class keychainAccessGroup:(id)group
{
  v4 = [(WBSPasswordManagerWebsiteMetadataStore *)self _initWithMetadataEntryClass:class keychainAccessGroup:group];

  return v4;
}

- (id)_initWithMetadataEntryClass:(Class)class keychainAccessGroup:(id)group
{
  groupCopy = group;
  v19.receiver = self;
  v19.super_class = WBSPasswordManagerWebsiteMetadataStore;
  v7 = [(WBSPasswordManagerWebsiteMetadataStore *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->_metadataEntryClass = class;
    v9 = [groupCopy copy];
    accessGroup = v8->_accessGroup;
    v8->_accessGroup = v9;

    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"com.apple.SafariCore.%@.%p", v13, v8];
    v15 = dispatch_queue_create([v14 UTF8String], 0);
    queue = v8->_queue;
    v8->_queue = v15;

    v8->_metadataEntryLock._os_unfair_lock_opaque = 0;
    v17 = v8;
  }

  return v8;
}

- (void)allMetadataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v54[9] = *MEMORY[0x1E69E9840];
  v53[0] = *MEMORY[0x1E697AC30];
  v2 = [*(*(a1 + 32) + 8) keychainAccountName];
  v3 = *MEMORY[0x1E697ABD0];
  v43 = a1;
  v4 = *(*(a1 + 32) + 16);
  v54[0] = v2;
  v54[1] = v4;
  v5 = *MEMORY[0x1E697AFF8];
  v53[1] = v3;
  v53[2] = v5;
  v6 = *MEMORY[0x1E697AE00];
  v7 = *MEMORY[0x1E697AE30];
  v54[2] = *MEMORY[0x1E697B018];
  v54[3] = v7;
  v8 = *MEMORY[0x1E697AEB0];
  v53[3] = v6;
  v53[4] = v8;
  v9 = *MEMORY[0x1E697B390];
  v54[4] = MEMORY[0x1E695E118];
  v54[5] = MEMORY[0x1E695E118];
  v10 = *MEMORY[0x1E697B318];
  v53[5] = v9;
  v53[6] = v10;
  v11 = *MEMORY[0x1E697B310];
  v54[6] = MEMORY[0x1E695E118];
  v54[7] = MEMORY[0x1E695E118];
  v12 = *MEMORY[0x1E697B260];
  v53[7] = v11;
  v53[8] = v12;
  v54[8] = *MEMORY[0x1E697B268];
  v13 = 0x1E695D000uLL;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:9];

  result = 0;
  v15 = SecItemCopyMatching(v14, &result);
  if (!v15)
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v18 = result;
    v19 = [v18 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v40 = v14;
      v42 = 0;
      v45 = 0;
      v46 = 0;
      v21 = *v48;
      v22 = *MEMORY[0x1E697AE80];
      v23 = *MEMORY[0x1E697B3C0];
      do
      {
        v24 = 0;
        v44 = v20;
        do
        {
          if (*v48 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v47 + 1) + 8 * v24);
          v26 = [v25 objectForKeyedSubscript:v22];
          v27 = [v25 objectForKeyedSubscript:v23];
          if ([v26 length])
          {
            v28 = [*(v13 + 3872) safari_dictionaryWithPropertyListData:v27];
            if (v28)
            {
              v29 = v23;
              v30 = v22;
              v31 = v21;
              v32 = v13;
              v33 = v18;
              v34 = [objc_alloc(*(*(v43 + 32) + 8)) initWithKeychainDictionary:v28 forDomain:v26];
              if (v34)
              {
                [v41 setObject:v34 forKeyedSubscript:v26];
              }

              else
              {
                ++v42;
              }

              v18 = v33;
              v13 = v32;
              v21 = v31;
              v22 = v30;
              v23 = v29;
              v20 = v44;
            }

            else
            {
              ++v45;
            }
          }

          else
          {
            ++v46;
          }

          ++v24;
        }

        while (v20 != v24);
        v20 = [v18 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v20);

      if (v46)
      {
        v37 = WBS_LOG_CHANNEL_PREFIXKeychain(v35, v36);
        v35 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        if (v35)
        {
          __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_1();
        }
      }

      v14 = v40;
      if (v45 && (v38 = WBS_LOG_CHANNEL_PREFIXKeychain(v35, v36), v35 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR)))
      {
        __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_2();
        if (v42)
        {
LABEL_28:
          v39 = WBS_LOG_CHANNEL_PREFIXKeychain(v35, v36);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_3();
          }
        }
      }

      else if (v42)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    (*(*(v43 + 40) + 16))();

    goto LABEL_32;
  }

  if (v15 != -25300)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXKeychain(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_4();
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_32:
}

- (void)metadataForDomain:(id)domain completionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1908;
  block[4] = self;
  v12 = domainCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = domainCopy;
  dispatch_async(queue, block);
}

void __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke(void *a1)
{
  v24[8] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(*(a1[4] + 8));
  v23[0] = *MEMORY[0x1E697AC30];
  v3 = [*(a1[4] + 8) keychainAccountName];
  v4 = *MEMORY[0x1E697ABD0];
  v5 = *(a1[4] + 16);
  v24[0] = v3;
  v24[1] = v5;
  v6 = *MEMORY[0x1E697AFF8];
  v23[1] = v4;
  v23[2] = v6;
  v7 = *MEMORY[0x1E697AE00];
  v8 = *MEMORY[0x1E697AE30];
  v24[2] = *MEMORY[0x1E697B018];
  v24[3] = v8;
  v9 = *MEMORY[0x1E697AE80];
  v23[3] = v7;
  v23[4] = v9;
  v10 = *MEMORY[0x1E697AEB0];
  v24[4] = a1[5];
  v24[5] = MEMORY[0x1E695E118];
  v11 = *MEMORY[0x1E697B390];
  v23[5] = v10;
  v23[6] = v11;
  v23[7] = *MEMORY[0x1E697B318];
  v24[6] = MEMORY[0x1E695E118];
  v24[7] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:8];

  v22 = 0;
  v13 = SecItemCopyMatching(v12, &v22);
  if (v13)
  {
    if (v13 != -25300)
    {
      v15 = WBS_LOG_CHANNEL_PREFIXKeychain(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke_cold_2();
      }
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v16 = v22;
    v17 = [MEMORY[0x1E695DF20] safari_dictionaryWithPropertyListData:v22];

    if (v17)
    {
      v20 = [objc_alloc(*(a1[4] + 8)) initWithKeychainDictionary:v17 forDomain:a1[5]];

      v2 = v20;
    }

    else
    {
      v21 = WBS_LOG_CHANNEL_PREFIXKeychain(v18, v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke_cold_1(a1 + 5, v21);
      }
    }

    (*(a1[6] + 16))();
  }
}

- (id)synchronousMetadataForDomain:(id)domain
{
  domainCopy = domain;
  v5 = dispatch_group_create();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  dispatch_group_enter(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__WBSPasswordManagerWebsiteMetadataStore_synchronousMetadataForDomain___block_invoke;
  v10[3] = &unk_1E7CF1930;
  v10[4] = self;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  [(WBSPasswordManagerWebsiteMetadataStore *)self metadataForDomain:domainCopy completionHandler:v10];
  v7 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v6, v7);
  os_unfair_lock_lock(&self->_metadataEntryLock);
  v8 = v14[5];
  os_unfair_lock_unlock(&self->_metadataEntryLock);

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __71__WBSPasswordManagerWebsiteMetadataStore_synchronousMetadataForDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  dispatch_group_leave(*(a1 + 40));
}

- (void)saveMetadataEntry:(id)entry forDomain:(id)domain completionHandler:(id)handler
{
  entryCopy = entry;
  domainCopy = domain;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF1958;
  v16 = entryCopy;
  selfCopy = self;
  v18 = domainCopy;
  v19 = handlerCopy;
  v12 = domainCopy;
  v13 = handlerCopy;
  v14 = entryCopy;
  dispatch_async(queue, v15);
}

void __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke(uint64_t a1)
{
  v51[7] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) originalBackingDictionary];
  v3 = [*(a1 + 32) dictionaryRepresentation];
  if ([v3 isEqualToDictionary:v2])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v44 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:&v44];
    v5 = v44;
    v7 = v5;
    if (v4)
    {
      v42 = v5;
      v50[0] = *MEMORY[0x1E697AC30];
      v8 = [*(*(a1 + 40) + 8) keychainAccountName];
      v9 = *MEMORY[0x1E697ABD0];
      v10 = *(a1 + 48);
      v11 = *(*(a1 + 40) + 16);
      v51[0] = v8;
      v51[1] = v11;
      v12 = *MEMORY[0x1E697AFF8];
      v50[1] = v9;
      v50[2] = v12;
      v13 = *MEMORY[0x1E697AE00];
      v14 = *MEMORY[0x1E697AE30];
      v51[2] = *MEMORY[0x1E697B018];
      v51[3] = v14;
      v15 = *MEMORY[0x1E697AE80];
      v50[3] = v13;
      v50[4] = v15;
      v16 = *MEMORY[0x1E697AEB0];
      v17 = MEMORY[0x1E695E118];
      v51[4] = v10;
      v51[5] = MEMORY[0x1E695E118];
      v18 = *MEMORY[0x1E697B390];
      v50[5] = v16;
      v50[6] = v18;
      v51[6] = MEMORY[0x1E695E118];
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:7];

      v19 = *MEMORY[0x1E697B3C0];
      v43 = v4;
      v49[0] = v4;
      v20 = *MEMORY[0x1E697ADC8];
      v48[0] = v19;
      v48[1] = v20;
      v21 = [*(a1 + 32) keychainItemLabelForDomain:*(a1 + 48)];
      v49[1] = v21;
      v48[2] = *MEMORY[0x1E697ACE0];
      v22 = [*(a1 + 32) keychainItemDescription];
      v49[2] = v22;
      v48[3] = v9;
      v23 = *(*(a1 + 40) + 16);
      v48[4] = v16;
      v49[3] = v23;
      v49[4] = v17;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];

      v27 = WBS_LOG_CHANNEL_PREFIXKeychain(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v38 = v27;
        v39 = [v24 objectForKeyedSubscript:v9];
        v40 = [v24 objectForKeyedSubscript:v20];
        *buf = 138543619;
        *&buf[4] = v39;
        v46 = 2113;
        v47 = v40;
        _os_log_debug_impl(&dword_1B8447000, v38, OS_LOG_TYPE_DEBUG, "Within WebsiteMetadataStore, attributes for credential SecItemUpdate: { accessGroup: %{public}@, label: %{private}@ }", buf, 0x16u);
      }

      *buf = 0;
      SecItemUpdateWithError();
      v7 = *buf;

      v28 = [v7 code];
      if (v28 == -25300)
      {
        v31 = [v24 mutableCopy];
        [v31 addEntriesFromDictionary:v41];
        v32 = v31;

        v33 = SecItemAdd(v32, 0);
        if (v33)
        {
          v36 = WBS_LOG_CHANNEL_PREFIXKeychain(v34, v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_1();
          }
        }

        v24 = v32;
        v4 = v43;
      }

      else
      {
        v4 = v43;
        if (v28)
        {
          v37 = WBS_LOG_CHANNEL_PREFIXKeychain(v28, v29);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_2(v37, v7);
          }
        }
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v30 = WBS_LOG_CHANNEL_PREFIXKeychain(v5, v6);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_3(v30, v7);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)debug_deleteAllPersistedDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__WBSPasswordManagerWebsiteMetadataStore_debug_deleteAllPersistedDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __92__WBSPasswordManagerWebsiteMetadataStore_debug_deleteAllPersistedDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v22[6] = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 8) keychainAccountName];
  v4 = *MEMORY[0x1E697ABD0];
  v21[0] = *MEMORY[0x1E697AC30];
  v21[1] = v4;
  v5 = *(*v2 + 16);
  v22[0] = v3;
  v22[1] = v5;
  v6 = *MEMORY[0x1E697B018];
  v7 = *MEMORY[0x1E697AE00];
  v21[2] = *MEMORY[0x1E697AFF8];
  v21[3] = v7;
  v8 = *MEMORY[0x1E697AE30];
  v22[2] = v6;
  v22[3] = v8;
  v9 = *MEMORY[0x1E697B390];
  v21[4] = *MEMORY[0x1E697AEB0];
  v21[5] = v9;
  v22[4] = MEMORY[0x1E695E118];
  v22[5] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  v11 = SecItemDelete(v10);
  v12 = v11;
  v14 = WBS_LOG_CHANNEL_PREFIXKeychain(v11, v13);
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __92__WBSPasswordManagerWebsiteMetadataStore_debug_deleteAllPersistedDataWithCompletionHandler___block_invoke_cold_1(v2, v3, v15);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*v2 + 16);
    v17 = 138412546;
    v18 = v16;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_1B8447000, v15, OS_LOG_TYPE_DEFAULT, "Within WebsiteMetadataStore, deleted all items in %@ with kSecAttrAccount %@", &v17, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__WBSPasswordManagerWebsiteMetadataStore_allMetadataWithCompletionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__WBSPasswordManagerWebsiteMetadataStore_metadataForDomain_completionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1B8447000, a2, OS_LOG_TYPE_DEBUG, "Within WebsiteMetadataStore, fetched keychain entry for %@ wasn't a dictionary", &v3, 0xCu);
}

void __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Within WebsiteMetadataStore, SecItemUpdateWithError failed with error %@", v7, v8, v9, v10);
}

void __88__WBSPasswordManagerWebsiteMetadataStore_saveMetadataEntry_forDomain_completionHandler___block_invoke_cold_3(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Within WebsiteMetadataStore, could not create data from dictionary to persist; error: %@", v7, v8, v9, v10);
}

void __92__WBSPasswordManagerWebsiteMetadataStore_debug_deleteAllPersistedDataWithCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 16);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Within WebsiteMetadataStore, failed to delete all items in %@ with kSecAttrAccount %@", &v4, 0x16u);
}

@end