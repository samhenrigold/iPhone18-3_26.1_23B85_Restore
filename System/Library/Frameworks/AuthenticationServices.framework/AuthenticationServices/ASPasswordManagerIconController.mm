@interface ASPasswordManagerIconController
@end

@implementation ASPasswordManagerIconController

void __65___ASPasswordManagerIconController__privacyProxyStateInitialized__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = WeakRetained[15];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void __65___ASPasswordManagerIconController__privacyProxyStateInitialized__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (v4)
  {
    [v3 addObjectsFromArray:v2[7]];
  }

  else
  {
    objc_storeStrong(v2, v2[7]);
  }
}

void __49___ASPasswordManagerIconController__fetchHistory__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49___ASPasswordManagerIconController__fetchHistory__block_invoke_2;
  v2[3] = &unk_1E7AF7658;
  v1 = *(a1 + 32);
  v2[4] = *(a1 + 40);
  objc_copyWeak(&v3, (a1 + 48));
  [v1 getAllItemsWithCompletionHandler:v2];
  objc_destroyWeak(&v3);
}

void __49___ASPasswordManagerIconController__fetchHistory__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49___ASPasswordManagerIconController__fetchHistory__block_invoke_3;
  v6[3] = &unk_1E7AF7630;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __49___ASPasswordManagerIconController__fetchHistory__block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *(WeakRetained + 6);
    *(WeakRetained + 6) = v3;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 url];
          v12 = [v11 host];
          v13 = [v12 safari_highLevelDomainFromHost];

          if (![v13 length])
          {

            goto LABEL_21;
          }

          v14 = [*(WeakRetained + 6) objectForKeyedSubscript:v13];
          if (!v14)
          {
            v14 = [MEMORY[0x1E695DFA8] set];
            [*(WeakRetained + 6) setObject:v14 forKeyedSubscript:v13];
          }

          [v14 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = *(WeakRetained + 8);
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          (*(*(*(&v21 + 1) + 8 * j) + 16))(*(*(&v21 + 1) + 8 * j));
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    v20 = *(WeakRetained + 8);
    *(WeakRetained + 8) = 0;

    *(WeakRetained + 4) = 257;
  }

LABEL_21:
}

void __58___ASPasswordManagerIconController_clearIconFetchingState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4 = [*(v2 + 40) copy];
  [v3 cancelRequestsWithTokens:v4];

  if (*(*(a1 + 32) + 104) == 1)
  {
    WBSHistoryClass = getWBSHistoryClass();

    [WBSHistoryClass clearExistingSharedHistory];
  }
}

void __50___ASPasswordManagerIconController_cancelRequest___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    [*(*(a1 + 32) + 80) cancelRequestWithToken:v3];
    [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
    [*(*(a1 + 32) + 40) removeObject:v3];
  }

  else
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswordManager(0, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50___ASPasswordManagerIconController_cancelRequest___block_invoke_cold_1();
    }
  }
}

void __76___ASPasswordManagerIconController_iconForDomain_requestID_responseHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) containsObject:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 56) addObject:*(a1 + 40)];
  if (v2)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v9 = 141558275;
      v10 = 1752392040;
      v11 = 2117;
      v12 = v6;
      _os_log_impl(&dword_1B1C8D000, v5, OS_LOG_TYPE_DEFAULT, "Touch icon already requested; domain=%{sensitive, mask.hash}@", &v9, 0x16u);
    }
  }

  [*(a1 + 32) _fetchTouchIconForDomain:*(a1 + 40) requestID:*(a1 + 48) responseHandler:*(a1 + 56)];
  v7 = *(a1 + 56);
  v8 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  (*(v7 + 16))(v7, v8);
}

uint64_t __61___ASPasswordManagerIconController_backgroundColorForDomain___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

void __62___ASPasswordManagerIconController__mobileSafariContainerPath__block_invoke()
{
  container_query_create();
  container_query_set_class();
  objects = xpc_string_create("com.apple.mobilesafari");
  v0 = xpc_array_create(&objects, 1uLL);
  container_query_set_identifiers();
  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  if (container_query_get_single_result())
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:container_get_path()];
    v2 = _mobileSafariContainerPath_mobileSafariContainerPath;
    _mobileSafariContainerPath_mobileSafariContainerPath = v1;

    v3 = container_copy_sandbox_token();
    if ((sandbox_extension_consume() & 0x8000000000000000) == 0)
    {
      free(v3);
    }

    container_query_free();
  }

  else
  {
    container_query_get_last_error();
    v4 = container_error_copy_unlocalized_description();
    v6 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62___ASPasswordManagerIconController__mobileSafariContainerPath__block_invoke_cold_1();
    }

    free(v4);
    container_query_free();
    v7 = _mobileSafariContainerPath_mobileSafariContainerPath;
    _mobileSafariContainerPath_mobileSafariContainerPath = 0;
  }
}

void __43___ASPasswordManagerIconController_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 cancelRequestsWithTokens:v2];
}

void __58___ASPasswordManagerIconController_performMaintenanceWork__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(a1, a2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_DEFAULT, "Background activity for performMaintenanceWork expired", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_DEFAULT, "Starting maintenance work with background task assertion", v6, 2u);
    }

    [*(*(a1 + 32) + 80) performMaintenanceWork];
  }
}

void __68___ASPasswordManagerIconController_prepareForApplicationTermination__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v2, OS_LOG_TYPE_DEFAULT, "Background activity for savePendingProviderChangesBeforeTermination expired", buf, 2u);
    }
  }

  else
  {
    v4 = dispatch_group_create();
    v6 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v6, OS_LOG_TYPE_DEFAULT, "Starting to save pending changes with background task assertion", buf, 2u);
    }

    dispatch_group_enter(v4);
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68___ASPasswordManagerIconController_prepareForApplicationTermination__block_invoke_31;
    v12[3] = &unk_1E7AF7608;
    v8 = v4;
    v13 = v8;
    [v7 savePendingProviderChangesWithCompletion:v12];
    v9 = dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v11 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v11, OS_LOG_TYPE_DEFAULT, "Saved pending changes to database", buf, 2u);
    }
  }
}

void __72___ASPasswordManagerIconController_bundleIDForDomain_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72___ASPasswordManagerIconController_bundleIDForDomain_completionHandler___block_invoke_2;
  v3[3] = &unk_1E7AF7790;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _populateDomainToAppIDWithCompletion:v3];
}

void __72___ASPasswordManagerIconController_bundleIDForDomain_completionHandler___block_invoke_2(void *a1)
{
  v4 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v2 = a1[6];
  v3 = [v4 safari_bundleIdentifierFromApplicationIdentifier:0];
  (*(v2 + 16))(v2, v3);
}

void __79___ASPasswordManagerIconController__checkForLocalVisitToDomain_withCompletion___block_invoke(void *a1)
{
  v3 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  if ([v3 count])
  {
    v2 = [getWBSHistoryClass() existingSharedHistory];
    [v2 checkIfLocalVisitExistsInAnyOfItems:v3 withCompletion:a1[6]];
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

void __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke_2;
  v7[3] = &unk_1E7AF77B8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 _checkForLocalVisitToDomain:v2 withCompletion:v7];
}

uint64_t __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 6;
  }

  else
  {
    v2 = 4;
  }

  return [*(a1 + 32) _requestTouchIconForDomain:*(a1 + 40) options:v2 requestID:*(a1 + 48) responseHandler:*(a1 + 56)];
}

uint64_t __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 112) initialized] && objc_msgSend(*(*(a1 + 32) + 112), "shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy"))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v3 _requestTouchIconForDomain:v4 options:14 requestID:v5 responseHandler:v6];
  }

  else
  {
    v8 = *(a1 + 32);
    if ((v8[9] & 1) == 0)
    {
      v8 = [v8 _requestTouchIconForDomain:*(a1 + 40) options:0 requestID:*(a1 + 48) responseHandler:*(a1 + 56)];
    }

    v9 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v8, v2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = 141558275;
      v12 = 1752392040;
      v13 = 2117;
      v14 = v10;
      _os_log_impl(&dword_1B1C8D000, v9, OS_LOG_TYPE_DEFAULT, "Fetching touch icon in history; domain=%{sensitive, mask.hash}@", &v11, 0x16u);
    }

    return [*(a1 + 32) _fetchIconInHistoryWithBlock:*(a1 + 64)];
  }
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[16] objectForKeyedSubscript:*(a1 + 32)];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DF00] now];
      v6 = [v5 safari_isEarlierThanDate:v4];

      if (v6)
      {
        [v3 _handleIconFetchFailureWithDomain:*(a1 + 32) options:*(a1 + 64) requestID:*(a1 + 40) response:0 responseHandler:*(a1 + 48)];
LABEL_14:

        goto LABEL_15;
      }

      [v3[16] removeObjectForKey:*(a1 + 32)];
    }

    getSFScreenScale();
    v7 = +[_ASPasswordManagerIconController _preferredIconSize];
    v9 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = (*(a1 + 64) >> 3) & 1;
      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2117;
      *&buf[14] = v10;
      *&buf[22] = 1024;
      LODWORD(v34) = v11;
      _os_log_impl(&dword_1B1C8D000, v9, OS_LOG_TYPE_DEFAULT, "Fetching touch icon; domain=%{sensitive, mask.hash}@; enablePrivateRelay=%{BOOL}d", buf, 0x1Cu);
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v12 = get_SFSavedAccountTouchIconRequestClass_softClass;
    v32 = get_SFSavedAccountTouchIconRequestClass_softClass;
    if (!get_SFSavedAccountTouchIconRequestClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __get_SFSavedAccountTouchIconRequestClass_block_invoke;
      v34 = &unk_1E7AF7948;
      v35 = &v29;
      __get_SFSavedAccountTouchIconRequestClass_block_invoke(buf);
      v12 = v30[3];
    }

    v13 = v12;
    _Block_object_dispose(&v29, 8);
    v14 = [*(a1 + 32) safari_bestURLForUserTypedString];
    +[_ASPasswordManagerIconController _minimumIconSize];
    v15 = [v12 requestWithTitle:0 url:v14 minimumIconSize:*(a1 + 64) maximumIconSize:? options:?];

    v16 = v3[10];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_36;
    v23 = &unk_1E7AF7880;
    v24 = v3;
    objc_copyWeak(v28, (a1 + 56));
    v17 = *(a1 + 32);
    v18 = *(a1 + 64);
    v25 = v17;
    v28[1] = v18;
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v19 = [v16 registerRequest:v15 priority:2 responseHandler:&v20];
    if (v19)
    {
      [v3[5] addObject:{v19, v20, v21, v22, v23, v24, v25, v26}];
      if (*(a1 + 40))
      {
        [v3[4] setObject:v19 forKeyedSubscript:?];
      }
    }

    objc_destroyWeak(v28);
    goto LABEL_14;
  }

LABEL_15:
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2;
  v8[3] = &unk_1E7AF7858;
  v9 = v3;
  v5 = v3;
  objc_copyWeak(v13, (a1 + 64));
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v10 = v6;
  v13[1] = v7;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  dispatch_async(v4, v8);

  objc_destroyWeak(v13);
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2(uint64_t a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v2 = getWBSTouchIconResponseClass_softClass;
  v29 = getWBSTouchIconResponseClass_softClass;
  if (!getWBSTouchIconResponseClass_softClass)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __getWBSTouchIconResponseClass_block_invoke;
    v25[3] = &unk_1E7AF7948;
    v25[4] = &v26;
    __getWBSTouchIconResponseClass_block_invoke(v25);
    v2 = v27[3];
  }

  v3 = v2;
  _Block_object_dispose(&v26, 8);
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      v5 = *(a1 + 32);
      v6 = [v5 touchIcon];
      v8 = v6;
      if (!v6 || (v6 = [v6 size], v9 == 0.0) || (v6 = objc_msgSend(v8, "size"), v10 == 0.0))
      {
        v13 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v6, v7);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_cold_1();
        }

        v14 = WeakRetained[9];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_37;
        block[3] = &unk_1E7AF7808;
        objc_copyWeak(&v24, (a1 + 64));
        v15 = v5;
        v22 = v15;
        v23 = *(a1 + 40);
        dispatch_async(v14, block);
        [WeakRetained _handleIconFetchFailureWithDomain:*(a1 + 40) options:*(a1 + 72) requestID:*(a1 + 48) response:v15 responseHandler:*(a1 + 56)];

        objc_destroyWeak(&v24);
      }

      else
      {
        v11 = WeakRetained[9];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_38;
        v16[3] = &unk_1E7AF7830;
        v17 = v8;
        v18 = *(a1 + 40);
        v12 = *(a1 + 56);
        v19 = WeakRetained;
        v20 = v12;
        dispatch_async(v11, v16);
      }
    }
  }
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) nextIconDownloadRetryDate];

    if (v2)
    {
      v3 = [*(a1 + 32) nextIconDownloadRetryDate];
      [WeakRetained[16] setObject:v3 forKeyedSubscript:*(a1 + 40)];
    }
  }
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_38(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WBSImageUtilitiesClass = getWBSImageUtilitiesClass();
  v3 = *(a1 + 32);
  +[_ASPasswordManagerIconController _preferredIconSize];
  v4 = [WBSImageUtilitiesClass resizedImage:v3 withSize:?];
  v6 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v4, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 141558275;
      v10 = 1752392040;
      v11 = 2117;
      v12 = v8;
      _os_log_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_DEFAULT, "Finished fetching touch icon; domain=%{sensitive, mask.hash}@", &v9, 0x16u);
    }

    [*(*(a1 + 48) + 16) setObject:v4 forKey:*(a1 + 40)];
    (*(*(a1 + 56) + 16))();
    [*(a1 + 48) _iconDidUpdateForDomain:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __113___ASPasswordManagerIconController__handleIconFetchFailureWithDomain_options_requestID_response_responseHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) extractedBackgroundColor];
  [v2 setObject:v3 forKey:*(a1 + 48)];
}

void __73___ASPasswordManagerIconController__populateDomainToAppIDWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73___ASPasswordManagerIconController__populateDomainToAppIDWithCompletion___block_invoke_2;
    v7[3] = &unk_1E7AF76A8;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __73___ASPasswordManagerIconController__populateDomainToAppIDWithCompletion___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = MEMORY[0x1E69C8DE8];
        v12 = [v10 domain];
        v13 = [v11 domainByStrippingSubdomainWildcardPrefixIfNecessary:v12];

        if (([MEMORY[0x1E69C8DE8] domainIsProhibitedForSavingCredentials:v13] & 1) == 0)
        {
          v14 = [v13 safari_highLevelDomainFromHost];
          if (v14 && ([MEMORY[0x1E69C8DE8] highLevelDomainHasSuiteOfAssociatedApps:v14] & 1) == 0)
          {
            v15 = [v10 appID];
            [*(*(a1 + 32) + 88) setObject:v15 forKeyedSubscript:v14];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = *(*(a1 + 32) + 96);
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v23 + 1) + 8 * j) + 16))(*(*(&v23 + 1) + 8 * j));
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  v21 = *(a1 + 32);
  v22 = *(v21 + 96);
  *(v21 + 96) = 0;
}

void __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2;
  v3[3] = &unk_1E7AF78F8;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _populateDomainToAppIDWithCompletion:v3];

  objc_destroyWeak(&v6);
}

void __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[11] objectForKeyedSubscript:*(a1 + 32)];
    v5 = [v4 safari_bundleIdentifierFromApplicationIdentifier:0];
    if (v5)
    {
      v6 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v5];
      v7 = [v6 appState];
      v8 = [v7 isValid];

      if (v8)
      {
        WBSImageUtilitiesClass = getWBSImageUtilitiesClass();
        v12 = iconForApplicationProxy(v6);
        +[_ASPasswordManagerIconController _preferredIconSize];
        v13 = [WBSImageUtilitiesClass resizedImage:v12 withSize:?];

        if (v13)
        {
          [v3[2] setObject:v13 forKey:*(a1 + 32)];
          (*(*(a1 + 40) + 16))();
          [v3 _iconDidUpdateForDomain:*(a1 + 32)];
        }

        else
        {
          v17 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v14, v15);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2_cold_2();
          }

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v16 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons(v9, v10);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2_cold_1();
        }
      }
    }
  }
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end