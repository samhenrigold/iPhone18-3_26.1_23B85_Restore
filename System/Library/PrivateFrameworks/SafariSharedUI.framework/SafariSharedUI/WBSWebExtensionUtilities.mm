@interface WBSWebExtensionUtilities
+ (BOOL)validateContentsOfDictionary:(id)dictionary requiredKeys:(id)keys optionalKeys:(id)optionalKeys keyToExpectedValueType:(id)type outExceptionString:(id *)string;
+ (double)nextTabID;
+ (double)nextWindowID;
+ (double)storageSizeForKeysAndValues:(id)values;
+ (id)serializeObjectToJSON:(id)n;
+ (id)tabIDToTabPositionDictionaryForTabs:(id)tabs;
@end

@implementation WBSWebExtensionUtilities

+ (double)nextWindowID
{
  result = *&+[WBSWebExtensionUtilities nextWindowID]::currentWindowIDForWebExtension;
  do
  {
    result = result + 1.0;
  }

  while (result == -1.0 || result == -2.0 || result == 0.0 || result == -100.0);
  +[WBSWebExtensionUtilities nextWindowID]::currentWindowIDForWebExtension = *&result;
  return result;
}

+ (double)nextTabID
{
  result = *&+[WBSWebExtensionUtilities nextTabID]::currentTabIDForWebExtension;
  do
  {
    result = result + 1.0;
  }

  while (result == -1.0 || result == 0.0 || result == -100.0);
  +[WBSWebExtensionUtilities nextTabID]::currentTabIDForWebExtension = *&result;
  return result;
}

+ (BOOL)validateContentsOfDictionary:(id)dictionary requiredKeys:(id)keys optionalKeys:(id)optionalKeys keyToExpectedValueType:(id)type outExceptionString:(id *)string
{
  dictionaryCopy = dictionary;
  keysCopy = keys;
  optionalKeysCopy = optionalKeys;
  typeCopy = type;
  v29 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:keysCopy];
  v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:keysCopy];
  v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:optionalKeysCopy];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__32;
  v41 = __Block_byref_object_dispose__32;
  v42 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __125__WBSWebExtensionUtilities_validateContentsOfDictionary_requiredKeys_optionalKeys_keyToExpectedValueType_outExceptionString___block_invoke;
  v31[3] = &unk_1E8289750;
  v15 = v13;
  v32 = v15;
  v16 = v14;
  v33 = v16;
  v17 = typeCopy;
  v34 = v17;
  v36 = &v37;
  v18 = v29;
  v35 = v18;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v31];
  v19 = [v18 count];
  v20 = v38;
  if (v19 && !v38[5])
  {
    allObjects = [v18 allObjects];
    v22 = [allObjects componentsJoinedByString:{@", "}];

    typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required keys: %@.", v22, typeCopy];
    v24 = v38[5];
    v38[5] = typeCopy;

    v20 = v38;
  }

  v25 = v20[5];
  if (v25)
  {
    *string = v25;
    v26 = v38[5] == 0;
  }

  else
  {
    v26 = 1;
  }

  _Block_object_dispose(&v37, 8);
  return v26;
}

void __125__WBSWebExtensionUtilities_validateContentsOfDictionary_requiredKeys_optionalKeys_keyToExpectedValueType_outExceptionString___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) containsObject:v7] & 1) != 0 || (v9 = objc_msgSend(*(a1 + 40), "containsObject:", v7), (v9))
  {
    v11 = [*(a1 + 48) objectForKeyedSubscript:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v41 = v13;
    if (v13)
    {
      v14 = [v13 firstObject];
      v15 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v19)
        {
          v20 = *v43;
          v40 = v8;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v43 != v20)
              {
                objc_enumerationMutation(v18);
              }

              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                *a4 = 1;
                v23 = MEMORY[0x1E696AEC0];
                v8 = v40;
                v24 = classToClassString(v14, 1);
                v25 = objc_opt_class();
                v26 = classToClassString(v25, 0);
                v27 = [v23 stringWithFormat:@"Expected %@ in the array for '%@', found %@ instead.", v24, v7, v26, v17];
                v28 = *(*(a1 + 64) + 8);
                v29 = *(v28 + 40);
                *(v28 + 40) = v27;

                goto LABEL_28;
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
            v8 = v40;
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_21;
      }

      *a4 = 1;
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected an array for '%@'.", v7];
      v31 = *(*(a1 + 64) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
LABEL_21:
        if ([*(a1 + 32) containsObject:v7])
        {
          [*(a1 + 56) removeObject:v7];
        }

        goto LABEL_28;
      }

      *a4 = 1;
      v33 = MEMORY[0x1E696AEC0];
      v34 = classToClassString(v11, 0);
      v35 = objc_opt_class();
      v36 = classToClassString(v35, 0);
      v37 = [v33 stringWithFormat:@"Expected %@ for '%@', found %@ instead.", v34, v7, v36];
      v38 = *(*(a1 + 64) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;
    }

LABEL_28:

    goto LABEL_29;
  }

  v22 = WBS_LOG_CHANNEL_PREFIXWebExtensions(v9, v10);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v48 = v7;
    _os_log_impl(&dword_1C6968000, v22, OS_LOG_TYPE_INFO, "Found unrecognized key (%{private}@), not specified in required or optional keys.", buf, 0xCu);
  }

LABEL_29:
}

+ (id)serializeObjectToJSON:(id)n
{
  v14 = *MEMORY[0x1E69E9840];
  nCopy = n;
  if (nCopy)
  {
    v12 = 0;
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:nCopy options:0 error:&v12];
    v5 = v12;
    v7 = v5;
    if (v5)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXWebExtensions(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        safari_privacyPreservingDescription = [v7 safari_privacyPreservingDescription];
        [(WBSWebExtensionUtilities *)nCopy serializeObjectToJSON:safari_privacyPreservingDescription, buf, v8];
      }

      v10 = 0;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (double)storageSizeForKeysAndValues:(id)values
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__WBSWebExtensionUtilities_storageSizeForKeysAndValues___block_invoke;
  v5[3] = &unk_1E8289778;
  v5[4] = &v6;
  v5[5] = self;
  [values enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __56__WBSWebExtensionUtilities_storageSizeForKeysAndValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  [objc_opt_class() storageSizeForKeyOrValue:v9];
  v7 = v6;
  [objc_opt_class() storageSizeForKeyOrValue:v5];
  *(*(*(a1 + 32) + 8) + 24) = v7 + v8 + *(*(*(a1 + 32) + 8) + 24);
}

+ (id)tabIDToTabPositionDictionaryForTabs:(id)tabs
{
  v20 = *MEMORY[0x1E69E9840];
  tabsCopy = tabs;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = tabsCopy;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [[WBSWebExtensionTabPosition alloc] initWithTab:v8];
        v10 = MEMORY[0x1E696AD98];
        [v8 idForWebExtensions];
        v11 = [v10 numberWithDouble:?];
        [dictionary setObject:v9 forKeyedSubscript:v11];
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [dictionary copy];

  return v12;
}

+ (void)serializeObjectToJSON:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Error serializing %{private}@: %{public}@", buf, 0x16u);
}

@end