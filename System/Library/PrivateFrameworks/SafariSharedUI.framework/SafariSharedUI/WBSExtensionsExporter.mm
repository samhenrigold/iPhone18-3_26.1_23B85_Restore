@interface WBSExtensionsExporter
+ (id)extensionDataWithDisplayName:(id)name developerName:(id)developerName composedIdentifier:(id)identifier adamIdentifier:(id)adamIdentifier alternatePlatformExtensionBundleIdentifier:(id)bundleIdentifier alternatePlatformAppBundleIdentifier:(id)appBundleIdentifier;
- (WBSExtensionsExporter)initWithURL:(id)l error:(id *)error;
- (void)exportExtensionDictionaries:(id)dictionaries completionHandler:(id)handler;
@end

@implementation WBSExtensionsExporter

+ (id)extensionDataWithDisplayName:(id)name developerName:(id)developerName composedIdentifier:(id)identifier adamIdentifier:(id)adamIdentifier alternatePlatformExtensionBundleIdentifier:(id)bundleIdentifier alternatePlatformAppBundleIdentifier:(id)appBundleIdentifier
{
  v33 = *MEMORY[0x1E69E9840];
  developerNameCopy = developerName;
  adamIdentifierCopy = adamIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  appBundleIdentifierCopy = appBundleIdentifier;
  v16 = MEMORY[0x1E695DF90];
  v17 = *MEMORY[0x1E69C8B88];
  v29 = *MEMORY[0x1E69C8BA0];
  v30 = v17;
  nameCopy = name;
  identifierCopy = identifier;
  v18 = MEMORY[0x1E695DF20];
  identifierCopy2 = identifier;
  nameCopy2 = name;
  v21 = [v18 dictionaryWithObjects:&nameCopy forKeys:&v29 count:2];
  v22 = [v16 dictionaryWithDictionary:v21];

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (developerNameCopy)
  {
    [v22 setObject:developerNameCopy forKeyedSubscript:*MEMORY[0x1E69C8B98]];
  }

  v24 = adamIdentifierCopy;
  if (adamIdentifierCopy)
  {
    [v23 setObject:adamIdentifierCopy forKeyedSubscript:*MEMORY[0x1E69C8BC8]];
  }

  if (bundleIdentifierCopy)
  {
    [v23 setObject:bundleIdentifierCopy forKeyedSubscript:*MEMORY[0x1E69C8BB0]];
  }

  if (appBundleIdentifierCopy)
  {
    [v23 setObject:appBundleIdentifierCopy forKeyedSubscript:*MEMORY[0x1E69C8BA8]];
  }

  if ([v23 count])
  {
    v25 = [v23 copy];
    [v22 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69C8BB8]];
  }

  v26 = [v22 copy];

  return v26;
}

- (WBSExtensionsExporter)initWithURL:(id)l error:(id *)error
{
  v10.receiver = self;
  v10.super_class = WBSExtensionsExporter;
  v4 = [(WBSJSONExporter *)&v10 initWithURL:l error:error];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.SafariShared.WBSExtensionsExporter", v5);
    extensionsDataExportQueue = v4->_extensionsDataExportQueue;
    v4->_extensionsDataExportQueue = v6;

    v8 = v4;
  }

  return v4;
}

- (void)exportExtensionDictionaries:(id)dictionaries completionHandler:(id)handler
{
  dictionariesCopy = dictionaries;
  handlerCopy = handler;
  extensionsDataExportQueue = self->_extensionsDataExportQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke;
  block[3] = &unk_1E8283058;
  block[4] = self;
  v12 = dictionariesCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dictionariesCopy;
  dispatch_async(extensionsDataExportQueue, block);
}

void __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke(id *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] jsonWriter];
  v3 = *MEMORY[0x1E69C8B78];
  v24 = 0;
  [v2 beginArrayForKey:v3 error:&v24];
  v4 = v24;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a1[5];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        v10 = v4;
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * v9);
        v12 = [a1[4] jsonWriter];
        v19 = v10;
        [v12 appendEntry:v11 error:&v19];
        v4 = v19;

        if (v4)
        {
          v15 = WBS_LOG_CHANNEL_PREFIXExport(v13, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_cold_1(v25, v15, v4, &v26);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = a1[4];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_2;
  v17[3] = &unk_1E8285E10;
  v18 = a1[6];
  [v16 finishWithCompletionHandler:v17];
}

void __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXExport(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_2_cold_1(v6, v5);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

void __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_1C6968000, v7, OS_LOG_TYPE_ERROR, "Failed to serialize extensions entry: %{public}@", a1, 0xCu);
}

void __71__WBSExtensionsExporter_exportExtensionDictionaries_completionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to finalize extensions export: %{public}@", &v5, 0xCu);
}

@end