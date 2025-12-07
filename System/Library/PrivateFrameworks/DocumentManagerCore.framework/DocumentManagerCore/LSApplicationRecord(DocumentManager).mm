@interface LSApplicationRecord(DocumentManager)
+ (BOOL)doc_isApplicationInstalledWithBundleIdentifier:()DocumentManager;
- (uint64_t)doc_canHaveAppContainer;
- (uint64_t)doc_hasFileProviderExtension;
@end

@implementation LSApplicationRecord(DocumentManager)

- (uint64_t)doc_canHaveAppContainer
{
  if ([self supportsOpenInPlace] && (objc_msgSend(self, "isFileSharingEnabled") & 1) != 0)
  {
    return 1;
  }

  infoDictionary = [self infoDictionary];
  v4 = [infoDictionary objectForKey:@"UISupportsDocumentBrowser" ofClass:objc_opt_class()];

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (uint64_t)doc_hasFileProviderExtension
{
  v17 = *MEMORY[0x277D85DE8];
  applicationExtensionRecords = [self applicationExtensionRecords];
  if ([applicationExtensionRecords count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = applicationExtensionRecords;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          extensionPointRecord = [*(*(&v12 + 1) + 8 * v6) extensionPointRecord];
          identifier = [extensionPointRecord identifier];
          v9 = [identifier isEqualToString:@"com.apple.fileprovider-nonui"];

          if (v9)
          {
            v10 = 1;
            goto LABEL_12;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)doc_isApplicationInstalledWithBundleIdentifier:()DocumentManager
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v9];

  v6 = v9;
  if (v6)
  {
    v7 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v7 = docLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "+[LSApplicationRecord(DocumentManager) doc_isApplicationInstalledWithBundleIdentifier:]";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_249340000, v7, OS_LOG_TYPE_DEFAULT, "%s returned error: %@", buf, 0x16u);
    }
  }

  return v5 != 0;
}

@end