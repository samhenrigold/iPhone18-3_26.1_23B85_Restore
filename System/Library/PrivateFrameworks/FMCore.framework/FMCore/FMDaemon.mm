@interface FMDaemon
- (id)verifyLaunchEventsConfiguration:(id)configuration withExclusions:(id)exclusions;
- (void)initialize;
- (void)registerXPCEventHandlers;
- (void)run;
- (void)startupWithCompletion:(id)completion;
@end

@implementation FMDaemon

- (void)run
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __15__FMDaemon_run__block_invoke;
  v3[3] = &unk_278FD9780;
  v3[4] = self;
  [(FMDaemon *)self startupWithCompletion:v3];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop run];
}

- (void)initialize
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __22__FMDaemon_initialize__block_invoke;
  v2[3] = &unk_278FD9780;
  v2[4] = self;
  [(FMDaemon *)self startupWithCompletion:v2];
}

- (void)startupWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FMDaemon *)self startup];
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v4 = completionCopy;
  }
}

- (void)registerXPCEventHandlers
{
  xpcDarwinEventHandlers = [(FMDaemon *)self xpcDarwinEventHandlers];
  if (xpcDarwinEventHandlers)
  {
    [FMXPCNotificationsUtil handleDarwinNotificationsWithHandlers:xpcDarwinEventHandlers];
  }

  xpcDistributedEventHandlers = [(FMDaemon *)self xpcDistributedEventHandlers];
  if (xpcDistributedEventHandlers)
  {
    [FMXPCNotificationsUtil handleDistributedNotificationsWithHandlers:xpcDistributedEventHandlers];
  }
}

- (id)verifyLaunchEventsConfiguration:(id)configuration withExclusions:(id)exclusions
{
  v69 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v7 = [MEMORY[0x277CBEB98] setWithArray:exclusions];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:configurationCopy];
  v9 = v8;
  if (v8)
  {
    selfCopy = self;
    v52 = v8;
    v53 = v7;
    v10 = [v8 objectForKeyedSubscript:@"LaunchEvents"];
    v11 = [v10 objectForKeyedSubscript:@"com.apple.notifyd.matching"];

    v12 = [MEMORY[0x277CBEB58] set];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v64;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v64 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v63 + 1) + 8 * i);
          [v12 addObject:v18];
          v19 = [v13 objectForKeyedSubscript:v18];
          v20 = [v19 objectForKeyedSubscript:@"Notification"];

          if (![v18 isEqualToString:v20])
          {
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Darwin event key %@ does not match with its notification name %@", v18, v20];
            xpcDarwinEventHandlers = v13;
            v9 = v52;
            v7 = v53;
            goto LABEL_37;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v63 objects:v68 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v7 = v53;
    [v12 minusSet:v53];
    xpcDarwinEventHandlers = [(FMDaemon *)selfCopy xpcDarwinEventHandlers];
    v22 = [MEMORY[0x277CBEB58] set];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __59__FMDaemon_verifyLaunchEventsConfiguration_withExclusions___block_invoke;
    v61[3] = &unk_278FD97A8;
    v20 = v22;
    v62 = v20;
    [xpcDarwinEventHandlers enumerateKeysAndObjectsUsingBlock:v61];
    [v20 minusSet:v53];
    string = [MEMORY[0x277CCAB68] string];
    v24 = [v12 mutableCopy];
    [v24 minusSet:v20];
    if ([v24 count])
    {
      [string appendFormat:@"launchd plist has these darwin notifications that don't have a handler defined in code: %@\n", v24];
    }

    v25 = [v20 mutableCopy];
    [v25 minusSet:v12];
    v9 = v52;
    if ([v25 count])
    {
      [string appendFormat:@"launchd plist does not have these darwin notifications but, they have a handler defined in code: %@\n", v25];
    }

    v49 = v25;
    if ([string length])
    {
      v26 = string;
    }

    else
    {
      v45 = v24;
      v46 = string;
      v47 = xpcDarwinEventHandlers;
      v48 = configurationCopy;
      v27 = [v52 objectForKeyedSubscript:@"LaunchEvents"];
      v28 = [v27 objectForKeyedSubscript:@"com.apple.distnoted.matching"];

      v54 = [MEMORY[0x277CBEB58] set];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v57 objects:v67 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v58;
        while (2)
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v58 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v57 + 1) + 8 * j);
            [v54 addObject:v34];
            v35 = [v29 objectForKeyedSubscript:v34];
            v36 = [v35 objectForKeyedSubscript:@"Name"];

            if (![v34 isEqualToString:v36])
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Distributed event key %@ does not match with its notification name %@", v34, v36];
              v42 = v29;
              v7 = v53;
              v24 = v45;
              goto LABEL_35;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v57 objects:v67 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      v7 = v53;
      [v54 minusSet:v53];
      xpcDistributedEventHandlers = [(FMDaemon *)selfCopy xpcDistributedEventHandlers];
      v38 = [MEMORY[0x277CBEB58] set];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __59__FMDaemon_verifyLaunchEventsConfiguration_withExclusions___block_invoke_2;
      v55[3] = &unk_278FD97A8;
      v36 = v38;
      v56 = v36;
      v51 = xpcDistributedEventHandlers;
      [xpcDistributedEventHandlers enumerateKeysAndObjectsUsingBlock:v55];
      [v36 minusSet:v53];
      string2 = [MEMORY[0x277CCAB68] string];
      v40 = [v54 mutableCopy];
      [v40 minusSet:v36];
      if ([v40 count])
      {
        [string2 appendFormat:@"launchd plist has these distributed notifications that don't have a handler defined in code: %@\n", v40];
      }

      v44 = v40;
      v41 = [v36 mutableCopy];
      [v41 minusSet:v54];
      if ([v41 count])
      {
        [string2 appendFormat:@"launchd plist does not have these distributed notifications but, they have a handler defined in code: %@\n", v41];
      }

      v24 = v45;
      if ([string2 length])
      {
        v26 = string2;
      }

      else
      {
        v26 = 0;
      }

      v42 = v51;
LABEL_35:

      xpcDarwinEventHandlers = v47;
      configurationCopy = v48;
      v9 = v52;
      string = v46;
    }

LABEL_37:
  }

  else
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not load %@", 0];
  }

  return v26;
}

void __59__FMDaemon_verifyLaunchEventsConfiguration_withExclusions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObjectsFromArray:v3];
    }
  }
}

void __59__FMDaemon_verifyLaunchEventsConfiguration_withExclusions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObjectsFromArray:v3];
    }
  }
}

@end