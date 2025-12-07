@interface SFRestrictionsController
+ (id)TCCServices;
+ (id)restrictionSpecifiers;
+ (void)resetRestrictions;
+ (void)resetRestrictionsPassword;
+ (void)setSpringBoardCapability:(id)capability enabled:(BOOL)enabled;
@end

@implementation SFRestrictionsController

+ (id)restrictionSpecifiers
{
  v2 = SFBundleForSettingsFoundationFramework(self);
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = MEMORY[0x277CBEAC0];
    v5 = [v2 pathForResource:@"Restrictions" ofType:@"plist"];
    v6 = [v4 dictionaryWithContentsOfFile:v5];

    v7 = [v6 objectForKey:@"items"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 addObjectsFromArray:v7];
      }
    }

    v8 = MEMORY[0x277CBEAC0];
    v9 = [v2 pathForResource:@"5.0~fmf" ofType:@"plist"];
    v10 = [v8 dictionaryWithContentsOfFile:v9];

    v11 = [v10 objectForKey:@"items"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 addObjectsFromArray:v11];
      }
    }

    v12 = MEMORY[0x277CBEAC0];
    v13 = [v2 pathForResource:@"5.0~Restrictions-Assistant" ofType:@"plist"];
    v14 = [v12 dictionaryWithContentsOfFile:v13];

    v15 = [v14 objectForKey:@"items"];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 addObjectsFromArray:v15];
      }
    }

    v16 = [v3 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)TCCServices
{
  v9[11] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D6C1E0];
  v9[0] = *MEMORY[0x277D6C100];
  v9[1] = v2;
  v3 = *MEMORY[0x277D6C1D0];
  v9[2] = *MEMORY[0x277D6C118];
  v9[3] = v3;
  v4 = *MEMORY[0x277D6C110];
  v9[4] = *MEMORY[0x277D6C1D8];
  v9[5] = v4;
  v5 = *MEMORY[0x277D6C258];
  v9[6] = *MEMORY[0x277D6C1A8];
  v9[7] = v5;
  v6 = *MEMORY[0x277D6C120];
  v9[8] = *MEMORY[0x277D6C1B0];
  v9[9] = v6;
  v9[10] = *MEMORY[0x277D6C1A0];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:11];

  return v7;
}

+ (void)setSpringBoardCapability:(id)capability enabled:(BOOL)enabled
{
  capabilityCopy = capability;
  v5 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
  v7 = [v6 containsObject:capabilityCopy];
  if (enabled)
  {
    if (v7)
    {
      [v6 removeObject:capabilityCopy];
    }
  }

  else if ((v7 & 1) == 0)
  {
    [v6 addObject:capabilityCopy];
  }

  v8 = [v6 count];
  if (v8 != [v5 count])
  {
    CFPreferencesSetAppValue(@"SBParentalControlsCapabilities", v6, @"com.apple.springboard");
    CFPreferencesAppSynchronize(@"com.apple.springboard");
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.locationd/Restrictions", 0, 0, 1u);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v10, SFPreferencesAppChangedRestrictionsEnabledStateNotification, 0, 0, 1u);
  }
}

+ (void)resetRestrictions
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = +[SFRestrictionsController restrictionSpecifiers];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v45 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count") + 1}];
  v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v54;
    v44 = *MEMORY[0x277D25D30];
    v43 = *MEMORY[0x277D25E60];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v54 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v53 + 1) + 8 * i);
        v8 = [v7 objectForKey:{@"MCFeature", v43}];
        v9 = [v7 objectForKey:@"capability"];
        v10 = v9;
        if (v8)
        {
          v11 = [v7 objectForKey:@"MCFeatureIsBool"];
          bOOLValue = [v11 BOOLValue];

          if (bOOLValue)
          {
            v13 = [mEMORY[0x277D262A0] defaultParametersForBoolSetting:v8];
            if (v13)
            {
              [v45 setObject:v13 forKey:v8];
              if ([v8 isEqualToString:v44])
              {
                v14 = v45;
                v15 = v13;
                v16 = v43;
                goto LABEL_14;
              }
            }

            else
            {
              [mEMORY[0x277D262A0] removeBoolSetting:v8];
            }
          }

          else
          {
            v13 = [mEMORY[0x277D262A0] defaultParametersForValueSetting:v8];
            v14 = v46;
            v15 = v13;
            v16 = v8;
LABEL_14:
            [v14 setObject:v15 forKey:v16];
          }

          v17 = [v7 objectForKey:@"PostNotification"];
          if (v17)
          {
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotification(DarwinNotifyCenter, v17, 0, 0, 1u);
          }

          goto LABEL_19;
        }

        if (v9)
        {
          [SFRestrictionsController setSpringBoardCapability:v9 enabled:1];
        }

LABEL_19:
      }

      v4 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v4);
  }

  v19 = +[SFRestrictionsController TCCServices];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v50;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v50 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [SFRestrictionsController setSpringBoardCapability:*(*(&v49 + 1) + 8 * j) enabled:1];
      }

      v21 = [v19 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D260E0];
  v25 = [mEMORY[0x277D262A0] defaultParametersForBoolSetting:*MEMORY[0x277D260E0]];
  [v45 setObject:v25 forKeyedSubscript:v24];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = *MEMORY[0x277D260E8];
  v28 = [mEMORY[0x277D262A0] defaultParametersForIntersectionSetting:*MEMORY[0x277D260E8]];
  [dictionary setObject:v28 forKeyedSubscript:v27];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v30 = *MEMORY[0x277D260F0];
  v31 = [mEMORY[0x277D262A0] defaultParametersForUnionSetting:*MEMORY[0x277D260F0]];
  [dictionary2 setObject:v31 forKeyedSubscript:v30];

  v32 = *MEMORY[0x277D25D40];
  v33 = [mEMORY[0x277D262A0] defaultParametersForBoolSetting:*MEMORY[0x277D25D40]];
  [v45 setObject:v33 forKeyedSubscript:v32];

  v34 = *MEMORY[0x277D25D38];
  v35 = [mEMORY[0x277D262A0] defaultParametersForBoolSetting:*MEMORY[0x277D25D38]];
  [v45 setObject:v35 forKeyedSubscript:v34];

  v36 = *MEMORY[0x277D25D10];
  v37 = [mEMORY[0x277D262A0] defaultParametersForBoolSetting:*MEMORY[0x277D25D10]];
  [v45 setObject:v37 forKeyedSubscript:v36];

  v38 = *MEMORY[0x277D25DC8];
  v39 = [mEMORY[0x277D262A0] defaultParametersForBoolSetting:*MEMORY[0x277D25DC8]];
  [v45 setObject:v39 forKeyedSubscript:v38];

  v40 = *MEMORY[0x277D26168];
  v57[0] = *MEMORY[0x277D26158];
  v57[1] = v40;
  v58[0] = v45;
  v58[1] = v46;
  v41 = *MEMORY[0x277D26198];
  v57[2] = *MEMORY[0x277D26110];
  v57[3] = v41;
  v58[2] = dictionary;
  v58[3] = dictionary2;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];
  [mEMORY[0x277D262A0] setParametersForSettingsByType:v42];
}

+ (void)resetRestrictionsPassword
{
  [SFRestrictionsPasscodeController setPIN:0];

  +[SFRestrictionsController resetRestrictions];
}

@end