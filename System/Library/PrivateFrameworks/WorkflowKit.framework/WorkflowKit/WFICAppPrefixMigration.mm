@interface WFICAppPrefixMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFICAppPrefixMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  v19 = *MEMORY[0x1E69E9840];
  migrationCopy = migration;
  if ((WFCompareBundleVersions(version, @"128") - 1) >= 2)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [migrationCopy objectForKey:{@"WFWorkflowActions", 0}];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) objectForKey:@"WFWorkflowActionIdentifier"];
          if ([v12 hasPrefix:@"com.tapbots.Tweetbot3"] & 1) != 0 || (objc_msgSend(v12, "hasPrefix:", @"com.tapbots.TweetbotPad") & 1) != 0 || (objc_msgSend(v12, "hasPrefix:", @"com.flexibits.fantastical2.ipad") & 1) != 0 || (objc_msgSend(v12, "hasPrefix:", @"com.flexibits.fantastical2.iphone"))
          {

            v6 = 1;
            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v6 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_17:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)migrateWorkflow
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v18 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v18)
  {
    v17 = *v26;
    do
    {
      v2 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v2;
        v3 = *(*(&v25 + 1) + 8 * v2);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v5 = [v3 objectForKey:actionIdentifierKey];

        v30[0] = @"com.tapbots.Tweetbot3";
        v30[1] = @"com.tapbots.TweetbotPad";
        v31[0] = @"com.tapbots.Tweetbot";
        v31[1] = @"com.tapbots.Tweetbot";
        v30[2] = @"com.flexibits.fantastical2.ipad";
        v30[3] = @"com.flexibits.fantastical2.iphone";
        v31[2] = @"com.flexibits.fantastical2";
        v31[3] = @"com.flexibits.fantastical2";
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        allKeys = [v6 allKeys];
        v8 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(allKeys);
              }

              v12 = *(*(&v21 + 1) + 8 * i);
              if ([v5 hasPrefix:v12])
              {
                v13 = [v6 objectForKey:v12];
                v14 = [v5 stringByReplacingOccurrencesOfString:v12 withString:v13];
                actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
                [v3 setObject:v14 forKeyedSubscript:actionIdentifierKey2];
              }
            }

            v9 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }

        v2 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v18);
  }

  [(WFWorkflowMigration *)self finish];
}

@end