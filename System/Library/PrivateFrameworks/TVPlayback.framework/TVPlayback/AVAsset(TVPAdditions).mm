@interface AVAsset(TVPAdditions)
+ (uint64_t)tvp_shouldIgnoreLoadFailureForKey:()TVPAdditions error:logObject:;
- (int64_t)tvp_maximumVideoRange;
- (uint64_t)tvp_maximumVideoResolution;
@end

@implementation AVAsset(TVPAdditions)

+ (uint64_t)tvp_shouldIgnoreLoadFailureForKey:()TVPAdditions error:logObject:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v7 isEqualToString:@"availableVideoDynamicRanges"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"maximumVideoResolution") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"availableChapterLocales") & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v13 = [standardUserDefaults arrayForKey:@"AVAssetKeysForWhichToIgnoreFailures"];

    if (v7 && v13)
    {
      if ([v13 containsObject:v7])
      {
        if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v7;
          _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring failure of key %@ due to user defaults", &v18, 0xCu);
        }

LABEL_20:
        v10 = 1;
LABEL_23:

        goto LABEL_5;
      }
    }

    else if (!v7)
    {
      goto LABEL_22;
    }

    if ([v7 isEqualToString:@"availableMediaCharacteristicsWithMediaSelectionOptions"])
    {
      userInfo = [v8 userInfo];
      v15 = [userInfo objectForKey:*MEMORY[0x277CE5D38]];

      if (![v15 count] || objc_msgSend(v15, "count") == 1 && (objc_msgSend(v15, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CD6480]), v16, v17))
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring failure of key %@ due to non-fatal failure to load localized media selection names: %@", &v18, 0x16u);
        }

        goto LABEL_20;
      }
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v10 = 1;
LABEL_5:

  return v10;
}

- (uint64_t)tvp_maximumVideoResolution
{
  v2 = [self statusOfValueForKey:@"maximumVideoResolution" error:0];
  result = 0;
  if (v2 == 2)
  {
    [self maximumVideoResolution];
    v5 = 3;
    if (v4 < 3456.0)
    {
      v5 = 2;
    }

    if (v4 < 1280.0)
    {
      v5 = 1;
    }

    if (v4 > 0.0)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)tvp_maximumVideoRange
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 0;
  if ([self statusOfValueForKey:@"availableVideoDynamicRanges" error:0] == 2)
  {
    availableVideoDynamicRanges = [self availableVideoDynamicRanges];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [availableVideoDynamicRanges countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      LODWORD(v6) = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(availableVideoDynamicRanges);
          }

          intValue = [*(*(&v11 + 1) + 8 * i) intValue];
          if (intValue <= v6)
          {
            v6 = v6;
          }

          else
          {
            v6 = intValue;
          }
        }

        v5 = [availableVideoDynamicRanges countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v2 = [TVPPlayer tvpVideoRangeForVideoDynamicRange:v6];
  }

  return v2;
}

@end