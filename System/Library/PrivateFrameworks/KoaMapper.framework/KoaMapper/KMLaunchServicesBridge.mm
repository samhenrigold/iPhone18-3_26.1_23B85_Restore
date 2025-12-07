@interface KMLaunchServicesBridge
+ (id)allInstalledAppBundleIdentifiers;
- (BOOL)_checkAppValidity:(id)validity;
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KMLaunchServicesBridge)init;
- (KMLaunchServicesBridge)initWithLanguageCode:(id)code;
- (id)_getOverrideByInfoPlist:(id)plist;
@end

@implementation KMLaunchServicesBridge

- (id)_getOverrideByInfoPlist:(id)plist
{
  infoDictionary = [plist infoDictionary];
  v4 = [infoDictionary objectForKey:@"SBIconVisibilitySetByAppPreference" ofClass:objc_opt_class()];
  if ([v4 BOOLValue])
  {
    v5 = [infoDictionary objectForKey:@"SBIconVisibilityDefaultVisible" ofClass:objc_opt_class()];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      v7 = MEMORY[0x277CBEC38];
    }

    else
    {
      v8 = [infoDictionary objectForKey:@"SBIconVisibilityDefaultVisibleInstallTypes" ofClass:objc_opt_class()];
      if ([v8 count] && AFIsInternalInstall() && (objc_msgSend(v8, "containsObject:", @"internal") & 1) != 0)
      {
        v7 = MEMORY[0x277CBEC38];
      }

      else
      {
        v9 = [infoDictionary objectForKey:@"SBIconVisibilityDefaultVisiblePlatforms" ofClass:objc_opt_class()];
        if ([v9 count] && (v10 = MGGetStringAnswer(), v11 = objc_msgSend(v9, "containsObject:", v10), v10, (v11 & 1) != 0))
        {
          v7 = MEMORY[0x277CBEC38];
        }

        else
        {
          v7 = MEMORY[0x277CBEC28];
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_checkAppValidity:(id)validity
{
  validityCopy = validity;
  bundleIdentifier = [validityCopy bundleIdentifier];
  v6 = [&unk_2867BE638 containsObject:bundleIdentifier];

  if (v6)
  {
    bOOLValue = 1;
  }

  else if ([validityCopy isLaunchProhibited])
  {
    bOOLValue = 0;
  }

  else
  {
    v8 = [(KMLaunchServicesBridge *)self _getOverrideByInfoPlist:validityCopy];
    v9 = v8;
    if (v8)
    {
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      typeForInstallMachinery = [validityCopy typeForInstallMachinery];
      lowercaseString = [typeForInstallMachinery lowercaseString];

      if ([lowercaseString isEqualToString:@"hidden"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"internal"))
      {
        bOOLValue = 0;
      }

      else if ([validityCopy developerType] == 1)
      {
        appTags = [validityCopy appTags];
        v14 = [appTags containsObject:@"hidden"];

        bOOLValue = v14 ^ 1;
      }

      else
      {
        bOOLValue = 1;
      }
    }
  }

  return bOOLValue & 1;
}

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  _appEnumerator = [(KMLaunchServicesBridge *)self _appEnumerator];
  v7 = [_appEnumerator countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (!v7)
  {
    v26 = 1;
    goto LABEL_26;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v33;
  v29 = blockCopy;
  v11 = _appEnumerator;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(v11);
      }

      v13 = *(*(&v32 + 1) + 8 * i);
      v14 = objc_autoreleasePoolPush();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bundleIdentifier = [v13 bundleIdentifier];
        v16 = [bundleIdentifier length];

        if (v16)
        {
          if (![(KMLaunchServicesBridge *)selfCopy _checkAppValidity:v13])
          {
            goto LABEL_16;
          }

          itemMapper = selfCopy->_itemMapper;
          additionalFields = selfCopy->_additionalFields;
          v31 = v9;
          v19 = [(KVItemMapper *)itemMapper mapObject:v13 additionalFields:additionalFields error:&v31];
          _appEnumerator = v31;

          if ([v19 count] != 1)
          {
            v27 = KMLogContextCore;
            if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v37 = "[KMLaunchServicesBridge enumerateItemsWithError:usingBlock:]";
              v38 = 2112;
              v39 = v19;
              v40 = 2112;
              v41 = _appEnumerator;
              _os_log_error_impl(&dword_2559DF000, v27, OS_LOG_TYPE_ERROR, "%s Unexepected items: %@ error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v14);
            KVSetError();
            goto LABEL_24;
          }

          firstObject = [v19 firstObject];
          v21 = v29[2](v29, firstObject);

          if ((v21 & 1) == 0)
          {
            objc_autoreleasePoolPop(v14);

LABEL_24:
            v26 = 0;
            goto LABEL_25;
          }

          v9 = _appEnumerator;
        }

        else
        {
          v23 = KMLogContextCore;
          if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
          {
            v24 = v23;
            bundleIdentifier2 = [v13 bundleIdentifier];
            *buf = 136315650;
            v37 = "[KMLaunchServicesBridge enumerateItemsWithError:usingBlock:]";
            v38 = 2112;
            v39 = v13;
            v40 = 2112;
            v41 = bundleIdentifier2;
            _os_log_error_impl(&dword_2559DF000, v24, OS_LOG_TYPE_ERROR, "%s bundle record: %@ has invalid bundle identifier (%@)", buf, 0x20u);
          }
        }
      }

      else
      {
        v22 = KMLogContextCore;
        if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v37 = "[KMLaunchServicesBridge enumerateItemsWithError:usingBlock:]";
          v38 = 2112;
          v39 = v13;
          _os_log_error_impl(&dword_2559DF000, v22, OS_LOG_TYPE_ERROR, "%s bundle record: %@ is not a LSApplicationRecord", buf, 0x16u);
        }
      }

LABEL_16:
      objc_autoreleasePoolPop(v14);
    }

    v8 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  v26 = 1;
  _appEnumerator = v9;
LABEL_25:
  blockCopy = v29;
LABEL_26:

  return v26;
}

- (KMLaunchServicesBridge)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

- (KMLaunchServicesBridge)initWithLanguageCode:(id)code
{
  v27 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v20.receiver = self;
  v20.super_class = KMLaunchServicesBridge;
  v5 = [(KMLaunchServicesBridge *)&v20 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v19 = 0;
  v6 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v19];
  v7 = v19;
  itemMapper = v5->_itemMapper;
  v5->_itemMapper = v6;

  if (!v5->_itemMapper)
  {
    v13 = KMLogContextCore;
    if (!os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    *buf = 136315394;
    v24 = "[KMLaunchServicesBridge initWithLanguageCode:]";
    v25 = 2112;
    v26 = v7;
    v14 = "%s %@";
    v15 = v13;
    v16 = 22;
LABEL_12:
    _os_log_error_impl(&dword_2559DF000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_9;
  }

  if (!codeCopy)
  {
    v17 = KMLogContextCore;
    if (!os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v24 = "[KMLaunchServicesBridge initWithLanguageCode:]";
    v14 = "%s Must pass a valid language code";
    v15 = v17;
    v16 = 12;
    goto LABEL_12;
  }

  v9 = KVAdditionalFieldTypeToNumber();
  v21 = v9;
  v22 = codeCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  additionalFields = v5->_additionalFields;
  v5->_additionalFields = v10;

LABEL_5:
  v12 = v5;
LABEL_10:

  return v12;
}

+ (id)allInstalledAppBundleIdentifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bundleIdentifier = [v7 bundleIdentifier];
          if (bundleIdentifier)
          {
            [v13 addObject:bundleIdentifier];
          }

          else
          {
            v11 = KMLogContextCore;
            if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v19 = "+[KMLaunchServicesBridge allInstalledAppBundleIdentifiers]";
              v20 = 2112;
              v21 = v7;
              _os_log_error_impl(&dword_2559DF000, v11, OS_LOG_TYPE_ERROR, "%s bundle record: %@ has nil bundle identifier", buf, 0x16u);
            }
          }
        }

        else
        {
          v10 = KMLogContextCore;
          if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v19 = "+[KMLaunchServicesBridge allInstalledAppBundleIdentifiers]";
            v20 = 2112;
            v21 = v7;
            _os_log_error_impl(&dword_2559DF000, v10, OS_LOG_TYPE_ERROR, "%s bundle record: %@ is not a LSApplicationRecord", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v4);
  }

  return v13;
}

@end