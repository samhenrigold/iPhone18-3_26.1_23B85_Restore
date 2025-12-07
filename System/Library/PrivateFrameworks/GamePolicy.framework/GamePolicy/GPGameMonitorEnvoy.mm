@interface GPGameMonitorEnvoy
+ (BOOL)applicationIsIdentifiedGame:(id)game info:(id)info entitlements:(id)entitlements;
+ (id)gameCategories;
+ (id)gameModeBundleIdentifierAllowList;
+ (id)sharedInstance;
- (GPGameMonitorEnvoy)init;
- (void)gameDidLaunch:(id)launch;
@end

@implementation GPGameMonitorEnvoy

+ (id)sharedInstance
{
  if (sharedInstance__onceToken != -1)
  {
    +[GPGameMonitorEnvoy sharedInstance];
  }

  v3 = sharedInstance__sharedMonitor;

  return v3;
}

uint64_t __36__GPGameMonitorEnvoy_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  sharedInstance__sharedMonitor = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)gameCategories
{
  if (gameCategories_onceToken != -1)
  {
    +[GPGameMonitorEnvoy gameCategories];
  }

  v3 = gameCategories__gameCategories;

  return v3;
}

void __36__GPGameMonitorEnvoy_gameCategories__block_invoke()
{
  v12[20] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC1F70];
  v12[0] = *MEMORY[0x277CC1FB8];
  v12[1] = v0;
  v1 = *MEMORY[0x277CC1F80];
  v12[2] = *MEMORY[0x277CC1F78];
  v12[3] = v1;
  v2 = *MEMORY[0x277CC1F90];
  v12[4] = *MEMORY[0x277CC1F88];
  v12[5] = v2;
  v3 = *MEMORY[0x277CC1FA0];
  v12[6] = *MEMORY[0x277CC1F98];
  v12[7] = v3;
  v4 = *MEMORY[0x277CC1FB0];
  v12[8] = *MEMORY[0x277CC1FA8];
  v12[9] = v4;
  v5 = *MEMORY[0x277CC1FC8];
  v12[10] = *MEMORY[0x277CC1FC0];
  v12[11] = v5;
  v6 = *MEMORY[0x277CC1FD8];
  v12[12] = *MEMORY[0x277CC1FD0];
  v12[13] = v6;
  v7 = *MEMORY[0x277CC1FE8];
  v12[14] = *MEMORY[0x277CC1FE0];
  v12[15] = v7;
  v8 = *MEMORY[0x277CC1FF8];
  v12[16] = *MEMORY[0x277CC1FF0];
  v12[17] = v8;
  v9 = *MEMORY[0x277CC2008];
  v12[18] = *MEMORY[0x277CC2000];
  v12[19] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:20];
  v11 = gameCategories__gameCategories;
  gameCategories__gameCategories = v10;
}

+ (id)gameModeBundleIdentifierAllowList
{
  if (gameModeBundleIdentifierAllowList_onceToken != -1)
  {
    +[GPGameMonitorEnvoy gameModeBundleIdentifierAllowList];
  }

  v3 = gameModeBundleIdentifierAllowList__gameModeBundleIdentifierAllowList;

  return v3;
}

void __55__GPGameMonitorEnvoy_gameModeBundleIdentifierAllowList__block_invoke()
{
  v0 = gameModeBundleIdentifierAllowList__gameModeBundleIdentifierAllowList;
  gameModeBundleIdentifierAllowList__gameModeBundleIdentifierAllowList = &unk_28619F188;
}

+ (BOOL)applicationIsIdentifiedGame:(id)game info:(id)info entitlements:(id)entitlements
{
  v60 = *MEMORY[0x277D85DE8];
  gameCopy = game;
  entitlementsCopy = entitlements;
  genreID = [gameCopy genreID];
  unsignedIntValue = [genreID unsignedIntValue];

  v11 = 1;
  if (unsignedIntValue != 6014 && (unsignedIntValue - 7001) >= 0x11)
  {
    correspondingApplicationRecord = [gameCopy correspondingApplicationRecord];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    gameModeBundleIdentifierAllowList = [self gameModeBundleIdentifierAllowList];
    v14 = [gameModeBundleIdentifierAllowList countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v54;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v54 != v16)
          {
            objc_enumerationMutation(gameModeBundleIdentifierAllowList);
          }

          v18 = *(*(&v53 + 1) + 8 * i);
          bundleIdentifier = [correspondingApplicationRecord bundleIdentifier];
          LOBYTE(v18) = [bundleIdentifier isEqual:v18];

          if (v18)
          {

            goto LABEL_19;
          }
        }

        v15 = [gameModeBundleIdentifierAllowList countByEnumeratingWithState:&v53 objects:v59 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (!unsignedIntValue)
    {
      v52 = 0;
      v26 = [correspondingApplicationRecord categoryTypesWithError:&v52];
      v43 = v52;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v27 = v26;
      v40 = [v27 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v40)
      {
        v28 = *v49;
        v29 = 0x279685000uLL;
        v42 = v27;
        v39 = *v49;
        do
        {
          v30 = 0;
          do
          {
            if (*v49 != v28)
            {
              objc_enumerationMutation(v27);
            }

            v41 = v30;
            v31 = *(*(&v48 + 1) + 8 * v30);
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            gameCategories = [*(v29 + 1400) gameCategories];
            v33 = [gameCategories countByEnumeratingWithState:&v44 objects:v57 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v45;
              while (2)
              {
                for (j = 0; j != v34; ++j)
                {
                  if (*v45 != v35)
                  {
                    objc_enumerationMutation(gameCategories);
                  }

                  v37 = *(*(&v44 + 1) + 8 * j);
                  identifier = [v31 identifier];
                  LOBYTE(v37) = [identifier isEqual:v37];

                  if (v37)
                  {

                    goto LABEL_19;
                  }
                }

                v34 = [gameCategories countByEnumeratingWithState:&v44 objects:v57 count:16];
                if (v34)
                {
                  continue;
                }

                break;
              }
            }

            v30 = v41 + 1;
            v27 = v42;
            v28 = v39;
            v29 = 0x279685000;
          }

          while (v41 + 1 != v40);
          v40 = [v42 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v40);
      }
    }

    if ([entitlementsCopy BOOLForKey:@"com.apple.developer.sustained-execution"] & 1) != 0 || (objc_msgSend(entitlementsCopy, "BOOLForKey:", @"com.apple.developer.kernel.increased-memory-limit") & 1) != 0 || (objc_msgSend(entitlementsCopy, "BOOLForKey:", @"com.apple.developer.kernel.increased-debugging-memory-limit") & 1) != 0 || (objc_msgSend(gameCopy, "requiredDeviceCapabilities"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "containsObject:", @"iphone-performance-gaming-tier"), v20, (v21) || (objc_msgSend(correspondingApplicationRecord, "supportsGameMode"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
LABEL_19:
      v11 = 1;
    }

    else
    {
      infoDictionary = [correspondingApplicationRecord infoDictionary];
      v24 = [infoDictionary objectForKey:@"GCSupportsControllerUserInteraction" ofClass:objc_opt_class()];

      v11 = v24 != 0;
    }
  }

  return v11;
}

- (GPGameMonitorEnvoy)init
{
  v3.receiver = self;
  v3.super_class = GPGameMonitorEnvoy;
  return [(GPGameMonitorEnvoy *)&v3 init];
}

- (void)gameDidLaunch:(id)launch
{
  launchCopy = launch;
  v4 = +[GPGameMonitorEnvoy deviceSupportsGamePolicy];
  if (v4)
  {
    if (gp_isInternalBuild(v4, v5))
    {
      [GPGameMonitorEnvoy gameDidLaunch:launchCopy];
    }

    notify_post([@"com.apple.gamepolicy.daemon.launch" UTF8String]);
  }
}

- (void)gameDidLaunch:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = getGPLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_24E5B8000, v2, OS_LOG_TYPE_INFO, "[GPGameMonitorEnvoy] gameDidLaunch: %@", &v3, 0xCu);
  }
}

@end