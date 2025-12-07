@interface DEExtension
- (BOOL)checkAndTeardown;
- (BOOL)isLoggingEnabled;
- (BOOL)requiresDataClassBAccessToRun;
- (DEExtension)initWithNSExtension:(id)extension;
- (OS_dispatch_queue)serialQueue;
- (id)_fileContentsFromPlistWithKey:(id)key localization:(id)localization;
- (id)_localizedStringFromPlistWithKey:(id)key localization:(id)localization;
- (id)_localizedTextFromLocalizedStringKey:(id)key fallbackFileContentsKey:(id)contentsKey localization:(id)localization;
- (id)localizedCustomerConsentTextWithLocalization:(id)localization;
- (id)loggingProfileURLsFromExtension;
- (void)accessBundleWithSynchronousHandler:(id)handler;
- (void)annotatedAttachmentsForParameters:(id)parameters andHandler:(id)handler;
- (void)attachmentListWithHandler:(id)handler;
- (void)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler andHandler:(id)andHandler;
- (void)createExtensionHostContextCompletion:(id)completion;
- (void)dealloc;
- (void)endUsingExtension;
- (void)installLoggingProfileWithSessionID:(id)d;
- (void)loggingProfileURLsFromExtension;
- (void)performWithHostContext:(id)context;
- (void)removeLoggingProfileWithSessionID:(id)d;
- (void)setupWithParameters:(id)parameters session:(id)session;
- (void)setupWithParameters:(id)parameters session:(id)session expirationDate:(id)date;
- (void)teardownWithParameters:(id)parameters session:(id)session;
@end

@implementation DEExtension

- (DEExtension)initWithNSExtension:(id)extension
{
  extensionCopy = extension;
  v20.receiver = self;
  v20.super_class = DEExtension;
  v6 = [(DEExtension *)&v20 init];
  if (v6)
  {
    attributes = [extensionCopy attributes];
    v8 = [attributes objectForKeyedSubscript:@"DEAttachmentsName"];
    v9 = *(v6 + 3);
    *(v6 + 3) = v8;

    objc_storeStrong(v6 + 7, extension);
    identifier = [extensionCopy identifier];
    v11 = *(v6 + 4);
    *(v6 + 4) = identifier;

    attributes2 = [extensionCopy attributes];
    v13 = [attributes2 objectForKeyedSubscript:@"DEAttachmentsAllowUserSelection"];

    v6[8] = [v13 BOOLValue];
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    v15 = *(v6 + 8);
    *(v6 + 8) = v14;

    *(v6 + 9) = 0;
    *(v6 + 9) = 0;
    [*(v6 + 7) setRequestCompletionBlock:&__block_literal_global_1];
    v16 = Log_0([*(v6 + 7) setRequestCancellationBlock:&__block_literal_global_83]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [DEExtension initWithNSExtension:extensionCopy];
    }

    v18 = Log_0(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [DEExtension initWithNSExtension:extensionCopy];
    }
  }

  return v6;
}

void __35__DEExtension_initWithNSExtension___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = Log_0(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_248AB3000, v6, OS_LOG_TYPE_INFO, "%@ completed request - items: %@", &v7, 0x16u);
  }
}

void __35__DEExtension_initWithNSExtension___block_invoke_80(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = Log_0(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 localizedDescription];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_248AB3000, v6, OS_LOG_TYPE_INFO, "%@ cancelled request - error: %@", &v8, 0x16u);
  }
}

- (BOOL)isLoggingEnabled
{
  v56 = *MEMORY[0x277D85DE8];
  extension = [(DEExtension *)self extension];
  attributes = [extension attributes];
  v4 = [attributes objectForKeyedSubscript:@"DEAttachmentsLoggingEnabled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v4 BOOLValue];
    if (bOOLValue)
    {
      goto LABEL_3;
    }

    v14 = Log_0(bOOLValue);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Logging is disabled in plist";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 isEqualToString:@"DEAttachmentsLoggingInternal"];
    if (v7)
    {
      v8 = MGGetBoolAnswer();
      if (v8)
      {
        standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v10 = [standardUserDefaults valueForKey:@"RCInternalMode"];
        if (![v10 integerValue])
        {

          goto LABEL_3;
        }

        standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v12 = [standardUserDefaults2 valueForKey:@"RCInternalMode"];
        integerValue = [v12 integerValue];

        if (integerValue == 2)
        {
LABEL_3:
          v6 = 1;
          goto LABEL_38;
        }
      }

      v14 = Log_0(v8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "Logging disabled. Requires internal install";
LABEL_36:
        _os_log_impl(&dword_248AB3000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
      }
    }

    else
    {
      v14 = Log_0(v7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "Logging disabled. Misconfigured plist (1)";
        goto LABEL_36;
      }
    }

LABEL_37:

    v6 = 0;
    goto LABEL_38;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v14 = Log_0(isKindOfClass);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Logging disabled. Misconfigured plist (2)";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v17 = v4;
  allKeys = [v17 allKeys];
  firstObject = [allKeys firstObject];

  v20 = firstObject;
  CFPreferencesAppSynchronize(v20);
  v45 = v20;
  v21 = [v17 objectForKeyedSubscript:v20];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  allKeys2 = [v21 allKeys];
  v23 = [allKeys2 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v23)
  {
    v24 = v23;
    v42 = v17;
    v43 = v4;
    v25 = 0;
    v26 = *v48;
    v44 = v21;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v48 != v26)
        {
          objc_enumerationMutation(allKeys2);
        }

        v28 = *(*(&v47 + 1) + 8 * i);
        v29 = [v21 objectForKeyedSubscript:v28];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = allKeys2;
          keyExistsAndHasValidFormat = 0;
          v31 = v28;
          v32 = v45;
          AppBooleanValue = CFPreferencesGetAppBooleanValue(v31, v32, &keyExistsAndHasValidFormat);
          v34 = keyExistsAndHasValidFormat;
          bOOLValue2 = [v29 BOOLValue];
          if (v34)
          {
            v36 = AppBooleanValue == 0;
          }

          else
          {
            v36 = 1;
          }

          v37 = v36;
          if (bOOLValue2 == v37)
          {
            v40 = Log_0(bOOLValue2);
            v41 = v30;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v52 = v32;
              v53 = 2114;
              v54 = v31;
              _os_log_impl(&dword_248AB3000, v40, OS_LOG_TYPE_DEFAULT, "Logging is disabled per domain [%{public}@] key [%{public}@]", buf, 0x16u);
            }

            v17 = v42;
            v4 = v43;
            v21 = v44;
            goto LABEL_45;
          }

          v25 = 1;
          allKeys2 = v30;
          v21 = v44;
        }
      }

      v24 = [allKeys2 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }

    v17 = v42;
    v4 = v43;
    if (v25)
    {
      v6 = 1;
      goto LABEL_46;
    }
  }

  else
  {
  }

  v41 = Log_0(v38);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AB3000, v41, OS_LOG_TYPE_DEFAULT, "Logging is disabled per domain preference", buf, 2u);
  }

LABEL_45:

  v6 = 0;
LABEL_46:

LABEL_38:
  return v6;
}

- (void)endUsingExtension
{
  objc_initWeak(&location, self);
  serialQueue = [(DEExtension *)self serialQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__DEExtension_endUsingExtension__block_invoke;
  v4[3] = &unk_278F634E0;
  objc_copyWeak(&v5, &location);
  dispatch_sync(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__DEExtension_endUsingExtension__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained context];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    v6 = [v4 adoptsExtensionTrackerFlow];

    if ((v6 & 1) != 0 || (v8 = objc_loadWeakRetained((a1 + 32)), v9 = [v8 callCount] - 1, v10 = objc_loadWeakRetained((a1 + 32)), objc_msgSend(v10, "setCallCount:", v9), v10, v8, v11 = objc_loadWeakRetained((a1 + 32)), v12 = objc_msgSend(v11, "callCount"), v11, v12 < 1))
    {
      v18 = Log_0(v7);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_loadWeakRetained((a1 + 32));
        v20 = [v19 extension];
        v21 = [v20 identifier];
        v30 = 138543362;
        v31 = v21;
        _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_DEFAULT, "Ending using extension %{public}@", &v30, 0xCu);
      }

      v22 = objc_loadWeakRetained((a1 + 32));
      v23 = [v22 context];
      v13 = [v23 _UUID];

      if (v13)
      {
        v24 = objc_loadWeakRetained((a1 + 32));
        v25 = [v24 extension];
        [v25 cancelExtensionRequestWithIdentifier:v13];

        v26 = objc_loadWeakRetained((a1 + 32));
        [v26 setContext:0];
      }
    }

    else
    {
      v13 = Log_0(v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_loadWeakRetained((a1 + 32));
        v15 = [v14 extension];
        v16 = [v15 identifier];
        v17 = objc_loadWeakRetained((a1 + 32));
        v30 = 138543618;
        v31 = v16;
        v32 = 2048;
        v33 = [v17 callCount];
        _os_log_impl(&dword_248AB3000, v13, OS_LOG_TYPE_DEFAULT, "[Legacy] Extension %{public}@ is done, but there's [%ld] other executions in flight.", &v30, 0x16u);
      }
    }
  }

  else
  {
    v27 = [v4 isFetchingExtensionHostContext];

    if (v27)
    {
      v29 = Log_0(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __32__DEExtension_endUsingExtension__block_invoke_cold_1((a1 + 32), v29);
      }
    }

    v13 = Log_0(v28);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __32__DEExtension_endUsingExtension__block_invoke_cold_2((a1 + 32), v13);
    }
  }
}

- (void)createExtensionHostContextCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  extension = [(DEExtension *)self extension];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__DEExtension_createExtensionHostContextCompletion___block_invoke;
  v7[3] = &unk_278F63790;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [extension beginExtensionRequestWithInputItems:MEMORY[0x277CBEBF8] completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained extension];
    v10 = [v9 _extensionContextForUUID:v5];
    v11 = objc_loadWeakRetained((a1 + 40));
    [v11 setContext:v10];

    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 context];

    if (v13)
    {
      v14 = objc_loadWeakRetained((a1 + 40));
      v15 = [v14 context];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v18 = Log_0(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_1((a1 + 40), v18);
        }

        v19 = objc_loadWeakRetained((a1 + 40));
        [v19 setContext:0];
      }

      v20 = objc_loadWeakRetained((a1 + 40));
      v21 = [v20 context];
      v22 = [v21 _auxiliaryConnection];
      v23 = [v22 valueForEntitlement:@"com.apple.DiagnosticExtensions.extension"];

      if (!v23)
      {
        v25 = Log_0(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_2(v25);
        }

        v26 = objc_loadWeakRetained((a1 + 40));
        [v26 setContext:0];
      }
    }
  }

  if (v7)
  {
    v27 = Log_0(v6);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_3(v7, v27);
    }
  }

  v28 = objc_loadWeakRetained((a1 + 40));
  v29 = [v28 extension];
  v30 = [v29 identifier];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __52__DEExtension_createExtensionHostContextCompletion___block_invoke_96;
  v41[3] = &unk_278F63740;
  v31 = v30;
  v42 = v31;
  objc_copyWeak(&v43, (a1 + 40));
  v32 = objc_loadWeakRetained((a1 + 40));
  v33 = [v32 context];
  v34 = [v33 _auxiliaryConnection];
  [v34 setInvalidationHandler:v41];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __52__DEExtension_createExtensionHostContextCompletion___block_invoke_97;
  v39[3] = &unk_278F63768;
  v35 = v31;
  v40 = v35;
  v36 = objc_loadWeakRetained((a1 + 40));
  v37 = [v36 context];
  v38 = [v37 _auxiliaryConnection];
  [v38 setInterruptionHandler:v39];

  (*(*(a1 + 32) + 16))();
  objc_destroyWeak(&v43);
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke_96(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = Log_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "Connection was invalidated for extension [%{public}@]", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setContext:0];
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke_97(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = Log_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "Connection was interrupted for extension [%{public}@]", &v4, 0xCu);
  }
}

- (OS_dispatch_queue)serialQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_serialQueue)
  {
    identifier = [(DEExtension *)selfCopy identifier];
    v4 = [identifier stringByAppendingString:@".serialQueue"];
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    serialQueue = selfCopy->_serialQueue;
    selfCopy->_serialQueue = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_serialQueue;

  return v7;
}

- (void)performWithHostContext:(id)context
{
  contextCopy = context;
  v5 = dispatch_get_global_queue(25, 0);
  objc_initWeak(&location, self);
  serialQueue = [(DEExtension *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DEExtension_performWithHostContext___block_invoke;
  block[3] = &unk_278F63830;
  objc_copyWeak(&v12, &location);
  block[4] = self;
  v10 = v5;
  v11 = contextCopy;
  v7 = contextCopy;
  v8 = v5;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __38__DEExtension_performWithHostContext___block_invoke(id *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained context];

  if (v3)
  {
    v5 = Log_0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1[4] context];
      v7 = [a1[4] identifier];
      *buf = 138543618;
      v32 = v6;
      v33 = 2114;
      v34 = v7;
      _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Firing handler for existing context: [%{public}@], DE [%{public}@]", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__DEExtension_performWithHostContext___block_invoke_101;
    block[3] = &unk_278F637B8;
    v8 = a1[5];
    v29 = a1[6];
    objc_copyWeak(&v30, a1 + 7);
    dispatch_async(v8, block);
    objc_destroyWeak(&v30);
  }

  else
  {
    v9 = objc_loadWeakRetained(a1 + 7);
    v10 = [v9 isFetchingExtensionHostContext];

    v12 = Log_0(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_248AB3000, v12, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Is fetching context, will store handler.", buf, 2u);
      }

      v14 = objc_loadWeakRetained(a1 + 7);
      v15 = [v14 contextFetchHandlers];
      v16 = MEMORY[0x24C1E46F0](a1[6]);
      [v15 addObject:v16];

      v18 = Log_0(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = objc_loadWeakRetained(a1 + 7);
        v20 = [v19 contextFetchHandlers];
        v21 = [v20 count];
        *buf = 134217984;
        v32 = v21;
        _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_INFO, "performWithHostContext - Stored context fetch handlers [%lu]", buf, 0xCu);
      }
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_248AB3000, v12, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Will create extension host.", buf, 2u);
      }

      v22 = objc_loadWeakRetained(a1 + 7);
      [v22 setIsFetchingExtensionHostContext:1];

      v23 = objc_loadWeakRetained(a1 + 7);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __38__DEExtension_performWithHostContext___block_invoke_102;
      v24[3] = &unk_278F63808;
      v24[4] = a1[4];
      objc_copyWeak(&v27, a1 + 7);
      v25 = a1[5];
      v26 = a1[6];
      [v23 createExtensionHostContextCompletion:v24];

      objc_destroyWeak(&v27);
    }
  }
}

void __38__DEExtension_performWithHostContext___block_invoke_101(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained context];
  (*(v1 + 16))(v1, v2);
}

void __38__DEExtension_performWithHostContext___block_invoke_102(id *a1)
{
  v2 = [a1[4] serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DEExtension_performWithHostContext___block_invoke_2;
  block[3] = &unk_278F637E0;
  objc_copyWeak(&v6, a1 + 7);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __38__DEExtension_performWithHostContext___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setIsFetchingExtensionHostContext:0];

  v4 = Log_0(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v6 = [v5 context];
    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [v7 identifier];
    *buf = 138543618;
    v33 = v6;
    v34 = 2114;
    v35 = v8;
    _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Created extension host: [%{public}@] for [%{public}@]", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DEExtension_performWithHostContext___block_invoke_103;
  block[3] = &unk_278F637B8;
  v9 = *(a1 + 32);
  v29 = *(a1 + 40);
  objc_copyWeak(&v30, (a1 + 48));
  dispatch_async(v9, block);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = objc_loadWeakRetained((a1 + 48));
  v11 = [v10 contextFetchHandlers];

  v12 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
  v13 = v12;
  if (v12)
  {
    v14 = *v25;
    v15 = MEMORY[0x277D85DD0];
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        v18 = Log_0(v12);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Executing stored context fetch handler", buf, 2u);
        }

        v19 = *(a1 + 32);
        v22[0] = v15;
        v22[1] = 3221225472;
        v22[2] = __38__DEExtension_performWithHostContext___block_invoke_104;
        v22[3] = &unk_278F637B8;
        v22[4] = v17;
        objc_copyWeak(&v23, (a1 + 48));
        dispatch_async(v19, v22);
        objc_destroyWeak(&v23);
        ++v16;
      }

      while (v13 != v16);
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v31 count:16];
      v13 = v12;
    }

    while (v12);
  }

  v20 = objc_loadWeakRetained((a1 + 48));
  v21 = [v20 contextFetchHandlers];
  [v21 removeAllObjects];

  objc_destroyWeak(&v30);
}

void __38__DEExtension_performWithHostContext___block_invoke_103(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained context];
  (*(v1 + 16))(v1, v2);
}

void __38__DEExtension_performWithHostContext___block_invoke_104(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained context];
  (*(v1 + 16))(v1, v2);
}

- (void)attachmentListWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__DEExtension_attachmentListWithHandler___block_invoke;
  v6[3] = &unk_278F63880;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(DEExtension *)self performWithHostContext:v6];
}

void __41__DEExtension_attachmentListWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) isLoggingEnabled])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__DEExtension_attachmentListWithHandler___block_invoke_2;
    v5[3] = &unk_278F63858;
    v6 = *(a1 + 40);
    [v3 attachmentListWithHandler:v5];
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

uint64_t __41__DEExtension_attachmentListWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)annotatedAttachmentsForParameters:(id)parameters andHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__DEExtension_annotatedAttachmentsForParameters_andHandler___block_invoke;
  v10[3] = &unk_278F638A8;
  v10[4] = self;
  v11 = parametersCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = parametersCopy;
  [(DEExtension *)self performWithHostContext:v10];
}

void __60__DEExtension_annotatedAttachmentsForParameters_andHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) isLoggingEnabled])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__DEExtension_annotatedAttachmentsForParameters_andHandler___block_invoke_2;
    v6[3] = &unk_278F636B0;
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v3 annotatedAttachmentsForParameters:v4 withHandler:v6];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

uint64_t __60__DEExtension_annotatedAttachmentsForParameters_andHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler andHandler:(id)andHandler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  andHandlerCopy = andHandler;
  if (![(DEExtension *)self adoptsExtensionTrackerFlow])
  {
    serialQueue = [(DEExtension *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke;
    block[3] = &unk_278F63768;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke_108;
  v15[3] = &unk_278F638F8;
  v15[4] = self;
  v16 = parametersCopy;
  v17 = handlerCopy;
  v18 = andHandlerCopy;
  v12 = andHandlerCopy;
  v13 = handlerCopy;
  v14 = parametersCopy;
  [(DEExtension *)self performWithHostContext:v15];
}

void __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = Log_0([*(a1 + 32) setCallCount:{objc_msgSend(*(a1 + 32), "callCount") + 1}]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) callCount];
    v4 = [*(a1 + 32) identifier];
    v5 = 134218242;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "[Legacy] attachmentsForParameters:withProgressHandler was called [%ld] times for [%{public}@].", &v5, 0x16u);
  }
}

void __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) isLoggingEnabled])
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke_2;
    v8[3] = &unk_278F638D0;
    v6 = *(a1 + 56);
    v8[4] = *(a1 + 32);
    v9 = v6;
    [v3 attachmentsForParameters:v4 withProgressHandler:v5 withHandler:v8];
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) adoptsExtensionTrackerFlow];
  if ((v5 & 1) == 0)
  {
    v6 = Log_0(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_248AB3000, v6, OS_LOG_TYPE_INFO, "Host is using legacy DE flow without setup/teardown; ending extension.", v7, 2u);
    }

    [*(a1 + 32) endUsingExtension];
  }
}

- (void)setupWithParameters:(id)parameters session:(id)session
{
  v6 = MEMORY[0x277CBEAA8];
  sessionCopy = session;
  parametersCopy = parameters;
  date = [v6 date];
  v10 = [date dateByAddingTimeInterval:7200.0];

  [(DEExtension *)self setupWithParameters:parametersCopy session:sessionCopy expirationDate:v10];
}

- (void)setupWithParameters:(id)parameters session:(id)session expirationDate:(id)date
{
  v32 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  sessionCopy = session;
  dateCopy = date;
  v11 = Log_0(dateCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(DEExtension *)self identifier];
    *buf = 136316162;
    v23 = "[DEExtension setupWithParameters:session:expirationDate:]";
    v24 = 2112;
    v25 = parametersCopy;
    v26 = 2112;
    v27 = identifier;
    v28 = 2114;
    v29 = sessionCopy;
    v30 = 2112;
    v31 = dateCopy;
    _os_log_impl(&dword_248AB3000, v11, OS_LOG_TYPE_DEFAULT, "%s, parameters:%@, identifier:%@, sessionID:%{public}@, date:%@", buf, 0x34u);
  }

  [(DEExtension *)self setAdoptsExtensionTrackerFlow:1];
  extensionTrackerClass = [(DEExtension *)self extensionTrackerClass];
  identifier2 = [(DEExtension *)self identifier];
  v15 = [(objc_class *)extensionTrackerClass shouldSetupWithIdentifier:identifier2 session:sessionCopy expirationDate:dateCopy];

  v17 = Log_0(v16);
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_DEFAULT, "DEExtension: Start setupForParameters:", buf, 2u);
    }

    [(DEExtension *)self installLoggingProfileWithSessionID:sessionCopy];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__DEExtension_setupWithParameters_session_expirationDate___block_invoke;
    v20[3] = &unk_278F63920;
    v21 = parametersCopy;
    [(DEExtension *)self performWithHostContext:v20];
    v18 = v21;
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    identifier3 = [(DEExtension *)self identifier];
    *buf = 138412546;
    v23 = identifier3;
    v24 = 2112;
    v25 = sessionCopy;
    _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_INFO, "DEExtension: already called setup method for %@, %@", buf, 0x16u);
  }
}

void *__58__DEExtension_setupWithParameters_session_expirationDate___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    return [a2 setupForParameters:result[4] withHandler:&__block_literal_global_111];
  }

  return result;
}

void __58__DEExtension_setupWithParameters_session_expirationDate___block_invoke_2(uint64_t a1)
{
  v1 = Log_0(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_248AB3000, v1, OS_LOG_TYPE_DEFAULT, "DEExtension: Done setupForParameters:", v2, 2u);
  }
}

- (void)teardownWithParameters:(id)parameters session:(id)session
{
  v28 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  sessionCopy = session;
  v8 = Log_0(sessionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(DEExtension *)self identifier];
    *buf = 136315906;
    v21 = "[DEExtension teardownWithParameters:session:]";
    v22 = 2112;
    v23 = parametersCopy;
    v24 = 2112;
    v25 = identifier;
    v26 = 2114;
    v27 = sessionCopy;
    _os_log_impl(&dword_248AB3000, v8, OS_LOG_TYPE_DEFAULT, "%s parameters:%@, identifier:%@, sessionID:%{public}@", buf, 0x2Au);
  }

  extensionTrackerClass = [(DEExtension *)self extensionTrackerClass];
  identifier2 = [(DEExtension *)self identifier];
  v12 = [(objc_class *)extensionTrackerClass shouldTeardownWithIdentifier:identifier2 session:sessionCopy];

  v14 = Log_0(v13);
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v15, OS_LOG_TYPE_DEFAULT, "DEExtension: Start teardownWithParameters:", buf, 2u);
    }

    [(DEExtension *)self removeLoggingProfileWithSessionID:sessionCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__DEExtension_teardownWithParameters_session___block_invoke;
    v17[3] = &unk_278F63948;
    v18 = parametersCopy;
    selfCopy = self;
    [(DEExtension *)self performWithHostContext:v17];
    v15 = v18;
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    identifier3 = [(DEExtension *)self identifier];
    *buf = 138412546;
    v21 = identifier3;
    v22 = 2112;
    v23 = sessionCopy;
    _os_log_impl(&dword_248AB3000, v15, OS_LOG_TYPE_INFO, "DEExtension is still needed. Teardown method is not called for %@, %@", buf, 0x16u);
  }
}

void *__46__DEExtension_teardownWithParameters_session___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __46__DEExtension_teardownWithParameters_session___block_invoke_2;
    v3[3] = &unk_278F63768;
    v2 = result[4];
    v3[4] = result[5];
    return [a2 teardownForParameters:v2 withHandler:v3];
  }

  return result;
}

uint64_t __46__DEExtension_teardownWithParameters_session___block_invoke_2(uint64_t a1)
{
  v2 = Log_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_DEFAULT, "DEExtension: Done teardownWithParameters:", v4, 2u);
  }

  return [*(a1 + 32) endUsingExtension];
}

- (BOOL)checkAndTeardown
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = Log_0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[DEExtension checkAndTeardown]";
    _os_log_impl(&dword_248AB3000, v3, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__DEExtension_checkAndTeardown__block_invoke;
  v9[3] = &unk_278F639E8;
  v9[4] = self;
  p_buf = &buf;
  v5 = v4;
  v10 = v5;
  [(DEExtension *)self performWithHostContext:v9];
  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  return v7 & 1;
}

void __31__DEExtension_checkAndTeardown__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__DEExtension_checkAndTeardown__block_invoke_2;
    v6[3] = &unk_278F639C0;
    v5 = a1[5];
    v4 = a1[6];
    v6[4] = a1[4];
    v9 = v4;
    v7 = v5;
    v8 = v3;
    [v8 isExtensionEnhancedLoggingStateOnWithHandler:v6];
  }
}

void __31__DEExtension_checkAndTeardown__block_invoke_2(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = Log_0(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "DEExtension: %@ is NOT off. Will try to tear it down.", buf, 0xCu);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __31__DEExtension_checkAndTeardown__block_invoke_112;
    v15[3] = &unk_278F63998;
    v7 = *(a1 + 48);
    v14 = *(a1 + 32);
    v8.i64[0] = v7;
    v8.i64[1] = *(a1 + 56);
    v13 = v8;
    v9 = v14.i64[1];
    *&v10 = v13.i64[0];
    *(&v10 + 1) = v14.i64[0];
    v16 = v10;
    v17 = vzip2q_s64(v14, v13);
    [v7 teardownForParameters:MEMORY[0x277CBEC10] withHandler:v15];
  }

  else
  {
    v11 = a2 ^ 1;
    if (v5)
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "DEExtension: %@ is already off.", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = v11;
    dispatch_semaphore_signal(*(a1 + 40));
  }
}

void __31__DEExtension_checkAndTeardown__block_invoke_112(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__DEExtension_checkAndTeardown__block_invoke_2_113;
  v4[3] = &unk_278F63970;
  v1 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v3 = *(a1 + 48);
  v2 = v3;
  v5 = v3;
  [v1 isExtensionEnhancedLoggingStateOnWithHandler:v4];
}

intptr_t __31__DEExtension_checkAndTeardown__block_invoke_2_113(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = Log_0(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"OFF";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"ON";
    }

    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "DEExtension: Final %@ EnhancedLoggingState is %@.", &v8, 0x16u);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2 ^ 1;
  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)dealloc
{
  context = [(DEExtension *)self context];

  if (context)
  {
    [(DEExtension *)self setCallCount:1];
    [(DEExtension *)self endUsingExtension];
  }

  v4.receiver = self;
  v4.super_class = DEExtension;
  [(DEExtension *)&v4 dealloc];
}

- (BOOL)requiresDataClassBAccessToRun
{
  cachedRequiresDataClassBAccessToRun = [(DEExtension *)self cachedRequiresDataClassBAccessToRun];

  if (cachedRequiresDataClassBAccessToRun)
  {
    cachedRequiresDataClassBAccessToRun2 = [(DEExtension *)self cachedRequiresDataClassBAccessToRun];
    bOOLValue = [cachedRequiresDataClassBAccessToRun2 BOOLValue];

    return bOOLValue;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__DEExtension_requiresDataClassBAccessToRun__block_invoke;
    v9[3] = &unk_278F63A10;
    v9[4] = &v10;
    [(DEExtension *)self accessBundleWithSynchronousHandler:v9];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:*(v11 + 24)];
    [(DEExtension *)self setCachedRequiresDataClassBAccessToRun:v7];

    v8 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
    return v8;
  }
}

void __44__DEExtension_requiresDataClassBAccessToRun__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 infoDictionary];
  v4 = [v3 valueForKey:@"DERequiresClassBDataClass"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = [v4 BOOLValue];
  }
}

- (void)accessBundleWithSynchronousHandler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  extension = [(DEExtension *)self extension];
  _plugIn = [extension _plugIn];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  defaultHost = [MEMORY[0x277D3D348] defaultHost];
  v25[0] = _plugIn;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__DEExtension_accessBundleWithSynchronousHandler___block_invoke;
  v18[3] = &unk_278F63A38;
  v18[4] = self;
  v18[5] = &v19;
  [defaultHost accessPlugIns:v8 synchronously:1 flags:0 extensions:v18];

  if (v20[5])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v20[5] UTF8String];
      if (sandbox_extension_consume() == -1)
      {
        v11 = Log_0(-1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(DEExtension *)self identifier];
          objc_claimAutoreleasedReturnValue();
          [DEExtension accessBundleWithSynchronousHandler:];
        }
      }

      else
      {
        v11 = _plugIn;
        v12 = MEMORY[0x277CCA8D8];
        v13 = [v11 url];
        v14 = [v12 bundleWithURL:v13];

        if (v14)
        {
          handlerCopy[2](handlerCopy, v14);
        }

        else
        {
          v17 = Log_0(v15);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(DEExtension *)self identifier];
            objc_claimAutoreleasedReturnValue();
            [DEExtension accessBundleWithSynchronousHandler:];
          }
        }

        sandbox_extension_release();
      }
    }

    else
    {
      v11 = Log_0(isKindOfClass);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        NSStringFromClass(v16);
        objc_claimAutoreleasedReturnValue();
        [DEExtension accessBundleWithSynchronousHandler:];
      }
    }
  }

  else
  {
    v11 = Log_0(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(DEExtension *)self identifier];
      objc_claimAutoreleasedReturnValue();
      [DEExtension accessBundleWithSynchronousHandler:];
    }
  }

  _Block_object_dispose(&v19, 8);
}

void __50__DEExtension_accessBundleWithSynchronousHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];

  if (v4)
  {
    v6 = Log_0(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __50__DEExtension_accessBundleWithSynchronousHandler___block_invoke_cold_1(a1);
    }
  }

  v7 = [v3 firstObject];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)localizedCustomerConsentTextWithLocalization:(id)localization
{
  v13 = *MEMORY[0x277D85DE8];
  localizationCopy = localization;
  if (MGGetBoolAnswer() && ([(DEExtension *)self _localizedStringFromPlistWithKey:@"WLAN_DELocalizedCustomerConsentText" localization:localizationCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = Log_0(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_INFO, "WLAN required. Found matching customer consent text %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = [(DEExtension *)self _localizedStringFromPlistWithKey:@"DELocalizedCustomerConsentText" localization:localizationCopy];
    v6 = v8;
    if (!v8)
    {
      goto LABEL_9;
    }

    v7 = Log_0(v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DEExtension localizedCustomerConsentTextWithLocalization:];
    }
  }

LABEL_9:
  v9 = v6;

  return v9;
}

- (id)_localizedTextFromLocalizedStringKey:(id)key fallbackFileContentsKey:(id)contentsKey localization:(id)localization
{
  keyCopy = key;
  contentsKeyCopy = contentsKey;
  localizationCopy = localization;
  v11 = [(DEExtension *)self _localizedStringFromPlistWithKey:keyCopy localization:localizationCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
LABEL_7:
    v15 = v13;
    goto LABEL_8;
  }

  if (contentsKeyCopy)
  {
    v14 = Log_0(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DEExtension _localizedTextFromLocalizedStringKey:fallbackFileContentsKey:localization:];
    }

    v13 = [(DEExtension *)self _fileContentsFromPlistWithKey:contentsKeyCopy localization:localizationCopy];
    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (id)_fileContentsFromPlistWithKey:(id)key localization:(id)localization
{
  keyCopy = key;
  localizationCopy = localization;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__DEExtension__fileContentsFromPlistWithKey_localization___block_invoke;
  v12[3] = &unk_278F63A60;
  v8 = keyCopy;
  v13 = v8;
  v9 = localizationCopy;
  v14 = v9;
  v15 = &v16;
  [(DEExtension *)self accessBundleWithSynchronousHandler:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __58__DEExtension__fileContentsFromPlistWithKey_localization___block_invoke(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 infoDictionary];
  v5 = [v4 valueForKey:a1[4]];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v7 = [v6 URLByDeletingPathExtension];
    v8 = [v7 lastPathComponent];

    v9 = [v6 pathExtension];
    v10 = [v3 URLForResource:v8 withExtension:v9 subdirectory:0 localization:a1[5]];
    if (!v10)
    {
      v11 = Log_0(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[4];
        v13 = a1[5];
        *buf = 138544386;
        v24 = v12;
        v25 = 2114;
        v26 = v6;
        v27 = 2114;
        v28 = v8;
        v29 = 2114;
        v30 = v9;
        v31 = 2114;
        v32 = v13;
        _os_log_impl(&dword_248AB3000, v11, OS_LOG_TYPE_DEFAULT, "Cannot read file contents for key [%{public}@]: url [%{public}@] fileName [%{public}@] extension [%{public}@] localization [%{public}@]", buf, 0x34u);
      }

      v10 = [v3 URLForResource:v8 withExtension:v9 subdirectory:0];
    }

    v22 = 0;
    v14 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v10 encoding:4 error:&v22];
    v15 = v22;
    v16 = v15;
    if (v15)
    {
      v17 = Log_0(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = a1[4];
        v19 = a1[5];
        *buf = 138543874;
        v24 = v18;
        v25 = 2114;
        v26 = v19;
        v27 = 2114;
        v28 = v16;
        _os_log_error_impl(&dword_248AB3000, v17, OS_LOG_TYPE_ERROR, "Cannot read file contents for key [%{public}@]: localization [%{public}@] error [%{public}@]", buf, 0x20u);
      }
    }

    else
    {
      v20 = *(a1[6] + 8);
      v21 = v14;
      v17 = *(v20 + 40);
      *(v20 + 40) = v21;
    }
  }
}

- (id)_localizedStringFromPlistWithKey:(id)key localization:(id)localization
{
  keyCopy = key;
  localizationCopy = localization;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__DEExtension__localizedStringFromPlistWithKey_localization___block_invoke;
  v12[3] = &unk_278F63A60;
  v8 = localizationCopy;
  v13 = v8;
  v9 = keyCopy;
  v14 = v9;
  v15 = &v16;
  [(DEExtension *)self accessBundleWithSynchronousHandler:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __61__DEExtension__localizedStringFromPlistWithKey_localization___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = Log_0(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_INFO, "Ignoring given localization [%{public}@], user preferred languages instead.", &v13, 0xCu);
  }

  v6 = a1 + 5;
  v7 = [v3 localizedStringForKey:a1[5] value:&stru_285B6E130 table:@"InfoPlist"];
  v8 = [v7 length];
  if (!v8 || (v8 = [v7 isEqualToString:*v6], v8))
  {
    v9 = Log_0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __61__DEExtension__localizedStringFromPlistWithKey_localization___block_invoke_cold_1(a1 + 5, v9);
    }

    v10 = [v3 infoDictionary];
    v11 = [v10 valueForKey:*v6];

    v7 = v11;
  }

  if ([v7 length])
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v12);
}

- (void)installLoggingProfileWithSessionID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  loggingProfileURLsFromExtension = [(DEExtension *)self loggingProfileURLsFromExtension];
  if (loggingProfileURLsFromExtension)
  {
    v16 = 0;
    v6 = [DELoggingPreferences combinedLoggingPayloadForURLs:loggingProfileURLsFromExtension error:&v16];
    v7 = v16;
    if (v7)
    {
      v8 = v7;
      v9 = Log_0(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        identifier = [(DEExtension *)self identifier];
        *buf = 138543874;
        v18 = dCopy;
        v19 = 2114;
        v20 = identifier;
        v21 = 2114;
        v22 = v8;
        v11 = "Error loading logging preference for sessionID [%{public}@] extension [%{public}@] : [%{public}@]";
LABEL_8:
        _os_log_error_impl(&dword_248AB3000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0x20u);
      }
    }

    else
    {
      identifier2 = [(DEExtension *)self identifier];
      v15 = 0;
      [DELoggingPreferences installLoggingProfile:v6 sessionIdentifier:dCopy extensionIdentifier:identifier2 error:&v15];
      v8 = v15;

      v14 = Log_0(v13);
      v9 = v14;
      if (!v8)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v6;
          _os_log_impl(&dword_248AB3000, v9, OS_LOG_TYPE_DEFAULT, "Installed logging preference payload [%{public}@]", buf, 0xCu);
        }

        v8 = 0;
        goto LABEL_12;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        identifier = [(DEExtension *)self identifier];
        *buf = 138543874;
        v18 = dCopy;
        v19 = 2114;
        v20 = identifier;
        v21 = 2114;
        v22 = v8;
        v11 = "Error installing logging preference for sessionID [%{public}@] extension [%{public}@] : [%{public}@]";
        goto LABEL_8;
      }
    }

LABEL_12:
  }
}

- (void)removeLoggingProfileWithSessionID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifier = [(DEExtension *)self identifier];
  v11 = 0;
  v6 = [DELoggingPreferences removeLoggingProfileForSessionIdentifier:dCopy extensionIdentifier:identifier error:&v11];
  v7 = v11;

  if (v7)
  {
    v9 = Log_0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [(DEExtension *)self identifier];
      *buf = 138543874;
      v13 = dCopy;
      v14 = 2114;
      v15 = identifier2;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_248AB3000, v9, OS_LOG_TYPE_ERROR, "Error removing logging preference for sessionID [%{public}@] extension [%{public}@] : [%{public}@]", buf, 0x20u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    v9 = Log_0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_248AB3000, v9, OS_LOG_TYPE_DEFAULT, "Removed payload [%{public}@]", buf, 0xCu);
    }
  }

LABEL_5:
}

- (id)loggingProfileURLsFromExtension
{
  v35 = *MEMORY[0x277D85DE8];
  extension = [(DEExtension *)self extension];
  _plugIn = [extension _plugIn];

  v4 = MEMORY[0x277CCA8D8];
  v5 = [_plugIn url];
  v6 = [v4 bundleWithURL:v5];

  infoDictionary = [v6 infoDictionary];
  v8 = [infoDictionary valueForKey:@"DELoggingPreferenceSubsystems"];

  if (!v8)
  {
    v11 = Log_0(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(DEExtension *)v11 loggingProfileURLsFromExtension];
    }

    goto LABEL_24;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v11 = Log_0(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(DEExtension *)v11 loggingProfileURLsFromExtension];
    }

    goto LABEL_24;
  }

  if (![v8 count])
  {
    v11 = Log_0(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v34 = @"DELoggingPreferenceSubsystems";
      _os_log_impl(&dword_248AB3000, v11, OS_LOG_TYPE_INFO, "%{public}@ is empty.", buf, 0xCu);
    }

LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  v26 = _plugIn;
  v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();
        if (v18)
        {
          v19 = [v6 URLForResource:v17 withExtension:@"plist" subdirectory:0];
          v20 = Log_0(v19);
          v21 = v20;
          if (!v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [DEExtension loggingProfileURLsFromExtension];
            }

            goto LABEL_33;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [(DEExtension *)v31 loggingProfileURLsFromExtension];
          }

          [v11 addObject:v19];
        }

        else
        {
          v19 = Log_0(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(DEExtension *)buf loggingProfileURLsFromExtension];
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if ([v11 count])
  {
    v22 = [MEMORY[0x277CBEB98] setWithSet:v11];
  }

  else
  {
LABEL_33:
    v22 = 0;
  }

  _plugIn = v26;
LABEL_25:

  return v22;
}

- (void)initWithNSExtension:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 attributes];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "Extension attributes: %@", v4, v5, v6, v7);
}

- (void)initWithNSExtension:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "Extension identifier: %@", v4, v5, v6, v7);
}

void __32__DEExtension_endUsingExtension__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = [WeakRetained extension];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_248AB3000, a2, v6, "A context is being created, but the extension %{public}@ is being shut down. This is an error.", v7);
}

void __32__DEExtension_endUsingExtension__block_invoke_cold_2(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = [WeakRetained extension];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_248AB3000, a2, OS_LOG_TYPE_FAULT, "Tried to end using extension %{public}@, but there's no context.", v6, 0xCu);
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = [WeakRetained context];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_3(&dword_248AB3000, a2, v7, "Host Context is the wrong kind of class: %@", v8);
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_248AB3000, a2, v4, "DEExtension beginRequest error: %@", v5);
}

- (void)accessBundleWithSynchronousHandler:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_0(&dword_248AB3000, v3, v4, "Failed to get extension token for [%{public}@]: Unknown token kind", v5);
}

- (void)accessBundleWithSynchronousHandler:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_0(&dword_248AB3000, v3, v4, "Plugin url is nil for [%{public}@]", v5);
}

- (void)accessBundleWithSynchronousHandler:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_0(&dword_248AB3000, v3, v4, "Failed to consume extension token for [%{public}@]", v5);
}

- (void)accessBundleWithSynchronousHandler:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_0(&dword_248AB3000, v3, v4, "Failed to get extension token for [%{public}@]: Token is nil", v5);
}

void __50__DEExtension_accessBundleWithSynchronousHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "Got sandbox extension token for [%{public}@].", v4, v5, v6, v7);
}

- (void)localizedCustomerConsentTextWithLocalization:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_248AB3000, v0, OS_LOG_TYPE_DEBUG, "Found customer consent text %{public}@", v1, 0xCu);
}

- (void)_localizedTextFromLocalizedStringKey:fallbackFileContentsKey:localization:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_248AB3000, v1, OS_LOG_TYPE_DEBUG, "Could not find [%{public}@] for any localization. Falling back to value in file for [%{public}@] plist key", v2, 0x16u);
}

void __61__DEExtension__localizedStringFromPlistWithKey_localization___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_248AB3000, a2, OS_LOG_TYPE_DEBUG, "Could not find [%{public}@] for preferred localizations. Falling back to value in plist value", &v3, 0xCu);
}

- (void)loggingProfileURLsFromExtension
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_248AB3000, v0, v1, "Subsystem entry %{public}@ does not match a file in extension bundle", v2);
}

@end