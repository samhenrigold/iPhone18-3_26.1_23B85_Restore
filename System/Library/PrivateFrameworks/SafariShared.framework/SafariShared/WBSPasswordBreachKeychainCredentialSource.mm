@interface WBSPasswordBreachKeychainCredentialSource
- (NSArray)credentials;
- (id)savedAccountsForPersistentIdentifiers:(id)identifiers;
- (void)credentials;
@end

@implementation WBSPasswordBreachKeychainCredentialSource

- (NSArray)credentials
{
  v37[8] = *MEMORY[0x1E69E9840];
  result = 0;
  v2 = *MEMORY[0x1E697B018];
  v3 = *MEMORY[0x1E697ABD0];
  v36[0] = *MEMORY[0x1E697AFF8];
  v36[1] = v3;
  v37[0] = v2;
  v37[1] = @"com.apple.cfnetwork";
  v4 = *MEMORY[0x1E697AEB8];
  v5 = *MEMORY[0x1E697AC50];
  v36[2] = *MEMORY[0x1E697AEB0];
  v36[3] = v5;
  v6 = *MEMORY[0x1E697AC60];
  v37[2] = v4;
  v37[3] = v6;
  v7 = *MEMORY[0x1E697B268];
  v8 = *MEMORY[0x1E697B310];
  v36[4] = *MEMORY[0x1E697B260];
  v36[5] = v8;
  v37[4] = v7;
  v37[5] = MEMORY[0x1E695E118];
  v9 = *MEMORY[0x1E697B320];
  v36[6] = *MEMORY[0x1E697B318];
  v36[7] = v9;
  v37[6] = MEMORY[0x1E695E118];
  v37[7] = MEMORY[0x1E695E118];
  v10 = SecItemCopyMatching([MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:8], &result);
  if (v10)
  {
    v12 = v10;
    if (v10 == -25300)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Keychain does not contain any saved passwords.", buf, 2u);
      }
    }

    else
    {
      v26 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v10, v11);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(WBSPasswordBreachKeychainCredentialSource *)v12 credentials];
      }
    }

    v28 = MEMORY[0x1E695E0F0];
  }

  else
  {
    dontSaveMarker = [MEMORY[0x1E69C8870] dontSaveMarker];
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = result;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      v19 = *MEMORY[0x1E697AC30];
      v20 = *MEMORY[0x1E697AE80];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          v23 = [v22 safari_stringForKey:v19];
          if (([v23 isEqualToString:dontSaveMarker] & 1) == 0)
          {
            v24 = [v22 objectForKeyedSubscript:v20];
            if ([v24 length])
            {
              v25 = [objc_alloc(MEMORY[0x1E69C8918]) initWithSecItemDictionary:v22];
              if (v25)
              {
                [v28 addObject:v25];
              }
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v17);
    }
  }

  return v28;
}

- (id)savedAccountsForPersistentIdentifiers:(id)identifiers
{
  v3 = MEMORY[0x1E69C8A38];
  identifiersCopy = identifiers;
  sharedStore = [v3 sharedStore];
  v6 = [sharedStore savedAccountsForPersistentIdentifiers:identifiersCopy];

  return v6;
}

- (void)credentials
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67240192;
  v2[1] = self;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch passwords. SecItemCopyMatching failed with error code %{public}d.", v2, 8u);
}

@end