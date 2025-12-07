@interface WBSCookieTransferController
+ (WBSCookieTransferController)sharedController;
- (BOOL)copyCookiesFromArray:(id)array matchingDomain:(id)domain intoFolderAtURL:(id)l;
- (WBSCookieTransferController)init;
- (void)_copyCookiesFromCookieStore:(id)store matchingDomain:(id)domain intoFolderAtURL:(id)l completionHandler:(id)handler;
- (void)copyCookiesFromFolderAtURL:(id)l intoDataStore:(id)store;
- (void)copyCookiesFromWebView:(id)view intoFolderAtURL:(id)l completionHandler:(id)handler;
@end

@implementation WBSCookieTransferController

+ (WBSCookieTransferController)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__WBSCookieTransferController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_controller;

  return v2;
}

void __47__WBSCookieTransferController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedController_controller;
  sharedController_controller = v1;
}

- (WBSCookieTransferController)init
{
  v9.receiver = self;
  v9.super_class = WBSCookieTransferController;
  v2 = [(WBSCookieTransferController *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.SafariShared.cookieTransferQueue", v4);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v5;

    v7 = v2;
  }

  return v2;
}

- (void)copyCookiesFromWebView:(id)view intoFolderAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  viewCopy = view;
  domainsToDisableCookieCopying = [objc_opt_class() domainsToDisableCookieCopying];
  configuration = [viewCopy configuration];
  websiteDataStore = [configuration websiteDataStore];
  httpCookieStore = [websiteDataStore httpCookieStore];

  v15 = [viewCopy URL];

  host = [v15 host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  if (httpCookieStore)
  {
    safari_stringByRemovingWwwDotPrefix = [safari_highLevelDomainFromHost safari_stringByRemovingWwwDotPrefix];
    v21 = [domainsToDisableCookieCopying containsObject:safari_stringByRemovingWwwDotPrefix];

    if (!v21)
    {
      [(WBSCookieTransferController *)self _copyCookiesFromCookieStore:httpCookieStore matchingDomain:safari_highLevelDomainFromHost intoFolderAtURL:lCopy completionHandler:handlerCopy];
      goto LABEL_9;
    }

    v24 = WBS_LOG_CHANNEL_PREFIXWebApps(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6968000, v24, OS_LOG_TYPE_INFO, "Skipping cookie copying due to quirks", buf, 2u);
    }
  }

  else
  {
    v25 = WBS_LOG_CHANNEL_PREFIXWebApps(v18, v19);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [WBSCookieTransferController copyCookiesFromWebView:v25 intoFolderAtURL:? completionHandler:?];
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__WBSCookieTransferController_copyCookiesFromWebView_intoFolderAtURL_completionHandler___block_invoke;
  block[3] = &unk_1E8283C40;
  v28 = handlerCopy;
  dispatch_async(internalQueue, block);

LABEL_9:
}

- (void)_copyCookiesFromCookieStore:(id)store matchingDomain:(id)domain intoFolderAtURL:(id)l completionHandler:(id)handler
{
  storeCopy = store;
  domainCopy = domain;
  lCopy = l;
  handlerCopy = handler;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [defaultManager safari_ensureDirectoryExists:lCopy];

  if (v15)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke;
    v16[3] = &unk_1E8283C68;
    v16[4] = self;
    v17 = domainCopy;
    v18 = lCopy;
    v19 = handlerCopy;
    [storeCopy getAllCookies:v16];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2;
  v6[3] = &unk_1E82830A8;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if ([v7 safari_belongsToDomain:*(a1 + 40)])
        {
          v8 = *(a1 + 48);
          v9 = MEMORY[0x1E696AEC0];
          v10 = [MEMORY[0x1E696AFB0] UUID];
          v11 = [v10 UUIDString];
          v12 = [v9 stringWithFormat:@"%@.plist", v11];
          v13 = [v8 URLByAppendingPathComponent:v12];

          v14 = [v7 properties];
          v20 = 0;
          LOBYTE(v10) = [v14 writeToURL:v13 error:&v20];
          v15 = v20;

          if ((v10 & 1) == 0)
          {
            v18 = WBS_LOG_CHANNEL_PREFIXWebApps(v16, v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2_cold_1(v25, v18);
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 56) + 16))();
}

- (BOOL)copyCookiesFromArray:(id)array matchingDomain:(id)domain intoFolderAtURL:(id)l
{
  v40 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  domainCopy = domain;
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v32 = lCopy;
  v11 = [defaultManager safari_ensureDirectoryExists:lCopy];

  if (v11)
  {
    v29 = v11;
    v30 = defaultManager;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = arrayCopy;
    v12 = arrayCopy;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          if ([v17 safari_belongsToDomain:domainCopy])
          {
            v18 = MEMORY[0x1E696AEC0];
            uUID = [MEMORY[0x1E696AFB0] UUID];
            uUIDString = [uUID UUIDString];
            v21 = [v18 stringWithFormat:@"%@.plist", uUIDString];
            v22 = [v32 URLByAppendingPathComponent:v21];

            properties = [v17 properties];
            v33 = 0;
            LOBYTE(uUID) = [properties writeToURL:v22 error:&v33];
            v24 = v33;

            if ((uUID & 1) == 0)
            {
              v27 = WBS_LOG_CHANNEL_PREFIXWebApps(v25, v26);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2_cold_1(v38, v27);
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

    defaultManager = v30;
    arrayCopy = v31;
    v11 = v29;
  }

  return v11 != 0;
}

- (void)copyCookiesFromFolderAtURL:(id)l intoDataStore:(id)store
{
  v61 = *MEMORY[0x1E69E9840];
  lCopy = l;
  storeCopy = store;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v57 = 0;
  path = [lCopy path];
  v46 = defaultManager;
  v9 = [defaultManager fileExistsAtPath:path isDirectory:&v57];
  v10 = v57;

  if (v9 && (v10 & 1) != 0)
  {
    v56 = 0;
    v11 = [v46 contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:0 options:0 error:&v56];
    v12 = v56;
    if (v12)
    {
      v14 = v12;
      v15 = WBS_LOG_CHANNEL_PREFIXWebApps(v12, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [WBSCookieTransferController copyCookiesFromFolderAtURL:v15 intoDataStore:v14];
      }
    }

    else
    {
      v43 = storeCopy;
      v44 = lCopy;
      httpCookieStore = [storeCopy httpCookieStore];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v11;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = *v53;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v53 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v52 + 1) + 8 * i);
            pathExtension = [v22 pathExtension];
            v24 = [pathExtension isEqualToString:@"plist"];

            if (v24)
            {
              v51 = v19;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v22 error:&v51];
              v26 = v51;

              if (v25)
              {
                v30 = [MEMORY[0x1E695ABF8] cookieWithProperties:v25];
                if (v30)
                {
                  [httpCookieStore setCookie:v30 completionHandler:0];
                  v48 = v26;
                  v31 = [v46 removeItemAtURL:v22 error:&v48];
                  v32 = v48;

                  if (v31)
                  {
                    v26 = v32;
                  }

                  else
                  {
                    v37 = WBS_LOG_CHANNEL_PREFIXWebApps(v33, v34);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      [WBSCookieTransferController copyCookiesFromFolderAtURL:v58 intoDataStore:v37];
                    }

                    v26 = 0;
                  }
                }

                else
                {
                  v36 = WBS_LOG_CHANNEL_PREFIXWebApps(0, v29);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    [(WBSCookieTransferController *)&buf copyCookiesFromFolderAtURL:v50 intoDataStore:v36];
                  }
                }
              }

              else
              {
                v35 = WBS_LOG_CHANNEL_PREFIXWebApps(v27, v28);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  [WBSCookieTransferController copyCookiesFromFolderAtURL:v59 intoDataStore:v35];
                }
              }

              v19 = v26;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      v47 = v19;
      lCopy = v44;
      v38 = [v46 removeItemAtURL:v44 error:&v47];
      v14 = v47;

      if ((v38 & 1) == 0)
      {
        v41 = WBS_LOG_CHANNEL_PREFIXWebApps(v39, v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [WBSCookieTransferController copyCookiesFromFolderAtURL:v41 intoDataStore:v14];
        }
      }

      v11 = v42;
      storeCopy = v43;
    }
  }
}

void __108__WBSCookieTransferController__copyCookiesFromCookieStore_matchingDomain_intoFolderAtURL_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_4(a1, a2);
  v3 = [OUTLINED_FUNCTION_3_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2_3(v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v4, v5, "Unable to write cookie to plist: %{public}@");
}

- (void)copyCookiesFromFolderAtURL:(void *)a1 intoDataStore:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Unable to enumerate staged cookies directory: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

- (void)copyCookiesFromFolderAtURL:(uint64_t)a1 intoDataStore:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_4(a1, a2);
  v3 = [OUTLINED_FUNCTION_3_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2_3(v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v4, v5, "Unable to remove cookie plist: %{public}@");
}

- (void)copyCookiesFromFolderAtURL:(os_log_t)log intoDataStore:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Unable to initialize cookie with plist", buf, 2u);
}

- (void)copyCookiesFromFolderAtURL:(uint64_t)a1 intoDataStore:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_4(a1, a2);
  v3 = [OUTLINED_FUNCTION_3_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2_3(v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v4, v5, "Unable to read cookie plist: %{public}@");
}

- (void)copyCookiesFromFolderAtURL:(void *)a1 intoDataStore:(void *)a2 .cold.5(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Unable to remove staged cookie directory: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end