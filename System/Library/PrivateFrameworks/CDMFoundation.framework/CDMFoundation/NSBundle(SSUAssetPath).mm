@interface NSBundle(SSUAssetPath)
- (NSObject)SSUAssetPathForLocale:()SSUAssetPath;
@end

@implementation NSBundle(SSUAssetPath)

- (NSObject)SSUAssetPathForLocale:()SSUAssetPath
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AAE8];
  localizations = [self localizations];
  v30[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v8 = [v5 preferredLocalizationsFromArray:localizations forPreferences:v7];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [self URLForResource:@"nlu.appintents" withExtension:0 subdirectory:0 localization:{v14, v21}];
        if (v15)
        {
          v18 = v15;
          v19 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v26 = "[NSBundle(SSUAssetPath) SSUAssetPathForLocale:]";
            v27 = 2112;
            v28 = v14;
            _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s [NSBundle] Found lproj SSU asset for localization=%@.", buf, 0x16u);
          }

          v17 = v18;
          v16 = v17;
          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = [self URLForResource:@"Metadata.appintents/nlu" withExtension:0];
  if (v16)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v26 = "[NSBundle(SSUAssetPath) SSUAssetPathForLocale:]";
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s [NSBundle] Found non-lproj SSU asset.", buf, 0xCu);
    }

LABEL_15:
  }

  return v16;
}

@end