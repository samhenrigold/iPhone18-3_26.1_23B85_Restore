@interface IntentsUtilities
+ (BOOL)isIntentsEnabledForAppId:(id)id;
+ (id)_displayNameForApp:(id)app;
+ (id)fetchEnabledAppIds;
+ (void)intentsAppsWithCompletion:(id)completion;
+ (void)setAccess:(BOOL)access appID:(id)d;
@end

@implementation IntentsUtilities

+ (void)intentsAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = MEMORY[0x277CCA9C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__IntentsUtilities_intentsAppsWithCompletion___block_invoke;
  v9[3] = &unk_278CD1F08;
  v10 = v5;
  v11 = completionCopy;
  selfCopy = self;
  v7 = v5;
  v8 = completionCopy;
  [v6 _intents_findSiriEntitledAppsContainingAnIntentsExtensionWithCompletion:v9];
}

void __46__IntentsUtilities_intentsAppsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v6 = [a3 localizedDescription];
    NSLog(&cfstr_ErrorLoadingIn.isa, v6);

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_7];
    v8 = [v5 filteredArrayUsingPredicate:v7];

    if ([v8 count])
    {
      v22 = v5;
      v9 = [*(a1 + 48) fetchEnabledAppIds];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            v16 = [v15 applicationIdentifier];
            v17 = [IntentsApp alloc];
            v18 = [*(a1 + 48) _displayNameForApp:v15];
            v19 = -[IntentsApp initWithAppId:displayName:accessGranted:](v17, "initWithAppId:displayName:accessGranted:", v16, v18, [v9 containsObject:v16]);

            [*(a1 + 32) addObject:v19];
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      v20 = *(a1 + 40);
      if (v20)
      {
        v21 = [*(a1 + 32) sortedArrayUsingSelector:sel_compareWithIntentsApp_];
        (*(v20 + 16))(v20, v21);
      }

      v5 = v22;
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t __46__IntentsUtilities_intentsAppsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 applicationType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CC1E30]];

  return v3 ^ 1u;
}

+ (id)fetchEnabledAppIds
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "+[IntentsUtilities fetchEnabledAppIds]";
    _os_log_impl(&dword_2413B9000, v2, OS_LOG_TYPE_DEFAULT, "%s Fetching enabled app TCC ids", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = TCCAccessCopyInformation();
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = MEMORY[0x277D6C0C8];
    v9 = MEMORY[0x277D6C0D0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 objectForKey:{*v8, v16}];
        v13 = [v11 objectForKey:*v9];
        if ([v13 BOOLValue])
        {
          v14 = CFBundleGetIdentifier(v12);
          [array addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return array;
}

+ (BOOL)isIntentsEnabledForAppId:(id)id
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"com.apple.Home", @"com.apple.MobileSMS", 0}];
  v5 = +[IntentsUtilities fetchEnabledAppIds];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 containsObject:idCopy];
    v10 = @"disabled";
    v14 = "+[IntentsUtilities isIntentsEnabledForAppId:]";
    *buf = 136315650;
    v15 = 2112;
    if (v9)
    {
      v10 = @"enabled";
    }

    v16 = v10;
    v17 = 2112;
    v18 = idCopy;
    _os_log_impl(&dword_2413B9000, v8, OS_LOG_TYPE_DEFAULT, "%s Intent is %@ for app id: %@", buf, 0x20u);
  }

  v11 = [v6 containsObject:idCopy];

  return v11;
}

+ (void)setAccess:(BOOL)access appID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:dCopy];
  v6 = CFBundleCreate(0, [v5 bundleURL]);
  if (v6)
  {
    v7 = v6;
    if (TCCAccessSetForBundle())
    {
      notify_post("com.apple.assistant.siri_settings_did_change");
      v8 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "+[IntentsUtilities setAccess:appID:]";
        v11 = 2112;
        v12 = dCopy;
        _os_log_impl(&dword_2413B9000, v8, OS_LOG_TYPE_DEFAULT, "%s Successfully set TCC access for app %@", buf, 0x16u);
      }
    }

    else
    {
      NSLog(&cfstr_FailedToSetTcc.isa, dCopy);
    }

    CFRelease(v7);
  }
}

+ (id)_displayNameForApp:(id)app
{
  appCopy = app;
  v4 = [appCopy localizedNameForContext:0];
  bundleIdentifier = [appCopy bundleIdentifier];

  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(bundleIdentifier);
  if (![v4 length])
  {
    v7 = CFBundleGetInfoDictionary(BundleWithIdentifier);
    stringByDeletingPathExtension = [v7 objectForKeyedSubscript:*MEMORY[0x277CBEC40]];

    if (![stringByDeletingPathExtension length])
    {
      v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBED50]];

      if ([v9 length])
      {
        stringByDeletingPathExtension = v9;
      }

      else
      {
        v10 = CFBundleCopyBundleURL(BundleWithIdentifier);
        lastPathComponent = [(__CFURL *)v10 lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      }
    }

    v4 = stringByDeletingPathExtension;
  }

  return v4;
}

@end