@interface NSBundle(SensorKitUI)
+ (uint64_t)skui_bundle;
+ (void)skui_bundleForAuthorizationService:()SensorKitUI;
- (uint64_t)srui_localizedAuthorizationConfirmationDetail;
- (uint64_t)srui_localizedPrivacyPolicyLinkTitle;
- (uint64_t)srui_localizedResearchPurpose;
- (uint64_t)srui_localizedStudyDataAlertTitleWithAuthGroupName:()SensorKitUI;
@end

@implementation NSBundle(SensorKitUI)

+ (uint64_t)skui_bundle
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/SensorKitUI.framework" isDirectory:1];

  return [v0 bundleWithURL:v1];
}

+ (void)skui_bundleForAuthorizationService:()SensorKitUI
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v25[0] = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/SensorKit/AuthGroups" isDirectory:1 relativeToURL:0];
  v25[1] = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/SensorKitUI.framework/AuthGroups" isDirectory:1 relativeToURL:0];
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v13 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (!v13)
  {
    return 0;
  }

  v15 = *v21;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v5 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
LABEL_8:
        v9 = 0;
        while (1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x277CCA8D8] bundleWithURL:*(*(&v16 + 1) + 8 * v9)];
          if (v10)
          {
            v11 = v10;
            if ([objc_msgSend(v10 objectForInfoDictionaryKey:{@"SRAuthService", "isEqualToString:", a3}] & 1) != 0 || (objc_msgSend(objc_msgSend(v11, "objectForInfoDictionaryKey:", @"SRWriterAuthService"), "isEqualToString:", a3))
            {
              return v11;
            }
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v7)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }
    }

    v11 = 0;
    v13 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v13)
    {
      continue;
    }

    return v11;
  }
}

- (uint64_t)srui_localizedPrivacyPolicyLinkTitle
{
  sr_bundleType = [self sr_bundleType];
  if (sr_bundleType == 1)
  {
    v2 = 35;
  }

  else
  {
    if (sr_bundleType != 2)
    {
      return 0;
    }

    v2 = 34;
  }

  v3 = MEMORY[0x277CCACA8];

  return [v3 srui_localizedStringForCode:v2];
}

- (uint64_t)srui_localizedResearchPurpose
{
  sr_bundleType = [self sr_bundleType];
  if (sr_bundleType == 1)
  {
    v2 = 76;
  }

  else
  {
    if (sr_bundleType != 2)
    {
      return 0;
    }

    v2 = 77;
  }

  v3 = MEMORY[0x277CCACA8];

  return [v3 srui_localizedStringForCode:v2];
}

- (uint64_t)srui_localizedStudyDataAlertTitleWithAuthGroupName:()SensorKitUI
{
  v14 = *MEMORY[0x277D85DE8];
  sr_bundleType = [self sr_bundleType];
  if (sr_bundleType == 2)
  {
    v11 = 0;
    v9 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:38];
    v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:&v11, objc_msgSend(self, "sk_appName"), a3];
    if (!v7)
    {
      if (_MergedGlobals_9 != -1)
      {
        dispatch_once(&_MergedGlobals_9, &__block_literal_global_4);
      }

      v8 = qword_28001A308;
      if (os_log_type_enabled(qword_28001A308, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v13 = v11;
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (sr_bundleType != 1)
    {
      return 0;
    }

    v11 = 0;
    v6 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:37];
    v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v11, a3];
    if (!v7)
    {
      if (_MergedGlobals_9 != -1)
      {
        dispatch_once(&_MergedGlobals_9, &__block_literal_global_4);
      }

      v8 = qword_28001A308;
      if (os_log_type_enabled(qword_28001A308, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v13 = v11;
LABEL_13:
        _os_log_fault_impl(&dword_265602000, v8, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
      }
    }
  }

  return v7;
}

- (uint64_t)srui_localizedAuthorizationConfirmationDetail
{
  sr_bundleType = [self sr_bundleType];
  if (sr_bundleType == 1)
  {
    v2 = 53;
  }

  else
  {
    if (sr_bundleType != 2)
    {
      return 0;
    }

    v2 = 52;
  }

  v3 = MEMORY[0x277CCACA8];

  return [v3 srui_localizedStringForCode:v2];
}

@end