@interface EMFQueryResultOverrideListLoader
+ (id)overrideListForLocale:(id)locale;
@end

@implementation EMFQueryResultOverrideListLoader

+ (id)overrideListForLocale:(id)locale
{
  v21 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  if (localeCopy)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreEmoji"];
    if (v4)
    {
      v5 = _createStrippedLocaleIdentifierForLocale(localeCopy);
      v6 = _overridePlistForLocaleIdentifierCheckingBothLocations(v4, v5);
      v7 = _createStrippedFallbackLocaleIdentifierForLocale(localeCopy);
      if (!v6)
      {
        v8 = _overridePlistForLocaleIdentifierCheckingBothLocations(v4, v7);
        if (v8)
        {
          v6 = v8;
        }

        else
        {
          v10 = emf_logging_get_default_log(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v17 = 138412290;
            v18 = v5;
            _os_log_impl(&dword_1AF04E000, v10, OS_LOG_TYPE_INFO, "No search engine override list found for locale '%@'", &v17, 0xCu);
          }

          v6 = 0;
        }
      }
    }

    else
    {
      v5 = emf_logging_get_default_log(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [EMFQueryResultOverrideListLoader overrideListForLocale:v5];
      }

      v6 = 0;
    }

    if (v6)
    {
      v11 = [[EMFQueryResultOverrideList alloc] initWithOverrideListURL:v6];
      v9 = v11;
      if (v11)
      {
        v12 = emf_logging_get_default_log(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          localeIdentifier = [localeCopy localeIdentifier];
          absoluteString = [v6 absoluteString];
          v17 = 138412546;
          v18 = localeIdentifier;
          v19 = 2112;
          v20 = absoluteString;
          _os_log_impl(&dword_1AF04E000, v12, OS_LOG_TYPE_INFO, "Loaded override list for locale '%@' (%@)", &v17, 0x16u);
        }

        v15 = v9;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end