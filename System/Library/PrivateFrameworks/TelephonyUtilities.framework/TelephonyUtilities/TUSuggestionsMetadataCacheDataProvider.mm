@interface TUSuggestionsMetadataCacheDataProvider
+ (BOOL)canUseSiriSuggestions;
+ (SGSuggestionsServiceContactsProtocol)sharedService;
+ (id)newestSuggestedContactForDestinationID:(id)d;
+ (id)suggestedNamesForDestinationID:(id)d onlySignificant:(BOOL)significant error:(id *)error;
+ (id)suggestedNamesForDestinationID:(id)d onlySignificant:(BOOL)significant supportsInfoLookup:(BOOL)lookup error:(id *)error;
+ (void)suggestedNamesForDestinationID:(id)d onlySignificant:(BOOL)significant withCompletion:(id)completion;
- (TUSuggestionsMetadataCacheDataProvider)init;
- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group;
@end

@implementation TUSuggestionsMetadataCacheDataProvider

- (TUSuggestionsMetadataCacheDataProvider)init
{
  v16.receiver = self;
  v16.super_class = TUSuggestionsMetadataCacheDataProvider;
  v2 = [(TUMetadataCacheDataProvider *)&v16 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(9);
    suggestionsServiceThrottleSemaphore = v2->_suggestionsServiceThrottleSemaphore;
    v2->_suggestionsServiceThrottleSemaphore = v3;

    v6 = TUDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Initializing new instance of TUSuggestionsMetadataCacheDataProvider", buf, 2u);
    }

    objc_initWeak(buf, v2);
    sharedService = [objc_opt_class() sharedService];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__TUSuggestionsMetadataCacheDataProvider_init__block_invoke;
    v12[3] = &unk_1E7424BA0;
    v8 = v2;
    v13 = v8;
    objc_copyWeak(&v14, buf);
    v9 = [sharedService registerContactsChangeObserver:v12];
    suggestionsContactsObserver = v8->_suggestionsContactsObserver;
    v8->_suggestionsContactsObserver = v9;

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __55__TUSuggestionsMetadataCacheDataProvider_sharedService__block_invoke()
{
  v0 = [CUTWeakLinkClass() serviceForContacts];
  v1 = sharedService_sharedService;
  sharedService_sharedService = v0;

  v2 = [sharedService_sharedService setSyncTimeout:5.0];
  if (!sharedService_sharedService)
  {
    v3 = TUDefaultLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__TUSuggestionsMetadataCacheDataProvider_sharedService__block_invoke_cold_1(v3);
    }
  }
}

+ (SGSuggestionsServiceContactsProtocol)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[TUSuggestionsMetadataCacheDataProvider sharedService];
  }

  v3 = sharedService_sharedService;

  return v3;
}

+ (BOOL)canUseSiriSuggestions
{
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:@"com.apple.mobilephone"];

  return v3 ^ 1;
}

+ (id)suggestedNamesForDestinationID:(id)d onlySignificant:(BOOL)significant error:(id *)error
{
  significantCopy = significant;
  dCopy = d;
  v8 = objc_opt_class();
  v9 = [v8 suggestedNamesForDestinationID:dCopy onlySignificant:significantCopy supportsInfoLookup:objc_msgSend(objc_opt_class() error:{"shouldQuerySupportsInfo"), error}];

  return v9;
}

+ (id)suggestedNamesForDestinationID:(id)d onlySignificant:(BOOL)significant supportsInfoLookup:(BOOL)lookup error:(id *)error
{
  lookupCopy = lookup;
  significantCopy = significant;
  dCopy = d;
  sharedService = [self sharedService];
  if (sharedService && [self canUseSiriSuggestions])
  {
    if ([objc_opt_class() shouldQuerySupportsInfo])
    {
      [sharedService namesForDetail:dCopy limitTo:1 prependMaybe:1 onlySignificant:significantCopy supportsInfoLookup:lookupCopy error:error];
    }

    else
    {
      [sharedService namesForDetail:dCopy limitTo:1 prependMaybe:1 onlySignificant:significantCopy error:error];
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = v13;

  return v13;
}

+ (void)suggestedNamesForDestinationID:(id)d onlySignificant:(BOOL)significant withCompletion:(id)completion
{
  significantCopy = significant;
  dCopy = d;
  completionCopy = completion;
  sharedService = [self sharedService];
  if (sharedService && [self canUseSiriSuggestions])
  {
    if ([objc_opt_class() shouldQuerySupportsInfo])
    {
      [sharedService namesForDetail:dCopy limitTo:1 prependMaybe:1 onlySignificant:significantCopy supportsInfoLookup:1 withCompletion:completionCopy];
    }

    else
    {
      [sharedService namesForDetail:dCopy limitTo:1 prependMaybe:1 onlySignificant:significantCopy withCompletion:completionCopy];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
  }
}

+ (id)newestSuggestedContactForDestinationID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![self canUseSiriSuggestions])
  {
    goto LABEL_14;
  }

  if (![dCopy destinationIdIsEmailAddress])
  {
    if ([dCopy destinationIdIsPhoneNumber])
    {
      sharedService = [self sharedService];
      v32 = 0;
      v6 = [sharedService contactMatchesByPhoneNumber:dCopy error:&v32];
      v7 = v32;

      if (!v6 && v7)
      {
        v9 = TUDefaultLog(v11);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          +[TUSuggestionsMetadataCacheDataProvider newestSuggestedContactForDestinationID:];
        }

        goto LABEL_12;
      }

      goto LABEL_17;
    }

LABEL_14:
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  sharedService2 = [self sharedService];
  v33 = 0;
  v6 = [sharedService2 contactMatchesByEmailAddress:dCopy error:&v33];
  v7 = v33;

  if (v6 || !v7)
  {
LABEL_17:
    if (v6)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = v6;
      cnContact = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (cnContact)
      {
        v26 = v7;
        v27 = dCopy;
        v9 = 0;
        v15 = *v29;
        numericValue2 = -1;
        do
        {
          for (i = 0; i != cnContact; i = i + 1)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v6);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            contact = [v18 contact];
            recordId = [contact recordId];
            numericValue = [recordId numericValue];

            if (numericValue > numericValue2)
            {
              contact2 = [v18 contact];
              recordId2 = [contact2 recordId];
              numericValue2 = [recordId2 numericValue];

              v24 = v18;
              v9 = v24;
            }
          }

          cnContact = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (cnContact);

        v7 = v26;
        if (!v9)
        {
          cnContact = 0;
          dCopy = v27;
          goto LABEL_16;
        }

        contact3 = [v9 contact];
        cnContact = [contact3 cnContact];

        dCopy = v27;
      }

      else
      {
        v9 = v6;
      }

      goto LABEL_13;
    }

LABEL_15:
    cnContact = 0;
    goto LABEL_16;
  }

  v9 = TUDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[TUSuggestionsMetadataCacheDataProvider newestSuggestedContactForDestinationID:];
  }

LABEL_12:
  v6 = 0;
  cnContact = 0;
LABEL_13:

LABEL_16:
  v13 = cnContact;

  return cnContact;
}

void __46__TUSuggestionsMetadataCacheDataProvider_init__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a1 + 32;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling Suggestions contacts change by refreshing %p", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained refresh];
}

- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  groupCopy = group;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [dsCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v29;
    *&v9 = 138412290;
    v24 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(dsCopy);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        handle = [v13 handle];
        normalizedValue = [handle normalizedValue];

        if ([normalizedValue length])
        {
          suggestionsServiceThrottleSemaphore = [(TUSuggestionsMetadataCacheDataProvider *)self suggestionsServiceThrottleSemaphore];
          v17 = dispatch_time(0, 1000000000);
          v18 = dispatch_semaphore_wait(suggestionsServiceThrottleSemaphore, v17);

          v20 = TUDefaultLog(v19);
          v21 = v20;
          if (v18)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v33 = v13;
              _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "[WARN] TUSuggestionsMetadataCacheDataProvider waited too long for other requests and will not look up '%@'", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = v24;
              v33 = normalizedValue;
              _os_log_debug_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEBUG, "dispatch_group_enter %@", buf, 0xCu);
            }

            dispatch_group_enter(groupCopy);
            v22 = objc_opt_class();
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __82__TUSuggestionsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke;
            v25[3] = &unk_1E7424BC8;
            v25[4] = self;
            v25[5] = v13;
            v23 = normalizedValue;
            v26 = v23;
            v27 = groupCopy;
            [v22 suggestedNamesForDestinationID:v23 onlySignificant:0 withCompletion:v25];
          }
        }
      }

      v10 = [dsCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }
}

void __82__TUSuggestionsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v6 = [v5 count];
    if (v6)
    {
      v8 = *(a1 + 32);
      v9 = [v5 firstObject];
      [v8 setObject:v9 forDestinationID:*(a1 + 40)];

      v10 = [TUMetadataDict alloc];
      v11 = [v5 firstObject];
      v12 = [(TUMetadataDict *)v10 initWithSource:@"Apple" identificationLabel:v11];

      [*(a1 + 32) setMetadataDict:v12 forDestinationID:*(a1 + 40)];
    }
  }

  if (v7)
  {
    v13 = TUDefaultLog(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Could not fetch suggested contact via [SGSuggestionsService namesForDetail:limitTo:prependMaybe:withCompletion:]: %@", &v16, 0xCu);
    }
  }

  v14 = TUDefaultLog(v6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __82__TUSuggestionsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke_cold_1(a1, v14);
  }

  v15 = [*(a1 + 32) suggestionsServiceThrottleSemaphore];
  dispatch_semaphore_signal(v15);

  dispatch_group_leave(*(a1 + 56));
}

void __82__TUSuggestionsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "dispatch_group_leave %@", &v3, 0xCu);
}

@end