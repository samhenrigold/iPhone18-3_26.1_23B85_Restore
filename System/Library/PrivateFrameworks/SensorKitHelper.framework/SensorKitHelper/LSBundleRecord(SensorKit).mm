@interface LSBundleRecord(SensorKit)
+ (uint64_t)sr_bundleRecordWithIdentifier:()SensorKit error:;
- (uint64_t)sr_isSocialNetworking;
- (uint64_t)sr_supportsDataGeneration;
- (uint64_t)sr_supportsMessagingIntents;
- (uint64_t)sr_supportsVOIP;
@end

@implementation LSBundleRecord(SensorKit)

+ (uint64_t)sr_bundleRecordWithIdentifier:()SensorKit error:
{
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:a3 allowPlaceholder:0 error:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return v4;
}

- (uint64_t)sr_supportsVOIP
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([objc_msgSend(self "UIBackgroundModes")])
  {
    return 1;
  }

  appTags = [self appTags];

  return [appTags containsObject:@"any-telephony"];
}

- (uint64_t)sr_supportsMessagingIntents
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([objc_msgSend(self "supportedIntents")])
    {
      return 1;
    }

    applicationExtensionRecords = [self applicationExtensionRecords];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    result = [applicationExtensionRecords countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v10;
LABEL_10:
      v8 = 0;
      while (1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(applicationExtensionRecords);
        }

        if ([objc_msgSend(*(*(&v9 + 1) + 8 * v8) "supportedIntents")])
        {
          return 1;
        }

        if (v6 == ++v8)
        {
          v6 = [applicationExtensionRecords countByEnumeratingWithState:&v9 objects:v13 count:16];
          result = 0;
          if (v6)
          {
            goto LABEL_10;
          }

          return result;
        }
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      supportedIntents = [self supportedIntents];

      return [supportedIntents containsObject:@"INSendMessageIntent"];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)sr_supportsDataGeneration
{
  v1 = [objc_msgSend(self "infoDictionary")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  return [v1 BOOLValue];
}

- (uint64_t)sr_isSocialNetworking
{
  v20 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  selfCopy = self;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      containingBundleRecord = [self containingBundleRecord];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy = containingBundleRecord;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  v5 = [objc_msgSend(selfCopy "iTunesMetadata")];
  v6 = [objc_msgSend(selfCopy "iTunesMetadata")];
  infoDictionary = [selfCopy infoDictionary];
  v8 = objc_opt_class();
  v9 = [infoDictionary objectForKey:@"SBMatchingApplicationGenres" ofClass:v8 valuesOfClass:objc_opt_class()];
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global);
  }

  v10 = qword_280AC73D8;
  if (os_log_type_enabled(qword_280AC73D8, OS_LOG_TYPE_INFO))
  {
    v12 = 138478595;
    bundleIdentifier = [self bundleIdentifier];
    v14 = 2050;
    v15 = v5;
    v16 = 2113;
    v17 = v6;
    v18 = 2113;
    v19 = v9;
    _os_log_impl(&dword_2655E8000, v10, OS_LOG_TYPE_INFO, "bundle id: %{private}@, genre id: %{public}llu, genre: %{private}@, genres: %{private}@", &v12, 0x2Au);
  }

  if (v5 == 6005 || ([v6 isEqualToString:@"Social Networking"] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [v9 containsObject:@"Social Networking"];
  }
}

@end