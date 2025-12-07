@interface WFBetaFilteringActionsMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFBetaFilteringActionsMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  versionCopy = version;
  v5 = WFCompareBundleVersions(versionCopy, @"121") - 1;
  v6 = WFCompareBundleVersions(versionCopy, @"123");

  return v5 < 2 && v6 == 3;
}

- (void)migrateWorkflow
{
  v31 = *MEMORY[0x1E69E9840];
  actionIdentifierMapping = [objc_opt_class() actionIdentifierMapping];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v18)
  {
    v17 = *v26;
    do
    {
      v3 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v3;
        v4 = *(*(&v25 + 1) + 8 * v3);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        allKeys = [actionIdentifierMapping allKeys];
        v6 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v22;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v22 != v8)
              {
                objc_enumerationMutation(allKeys);
              }

              v10 = *(*(&v21 + 1) + 8 * i);
              actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
              v12 = [v4 objectForKeyedSubscript:actionIdentifierKey];
              isEqualToString = objc_msgSend_isEqualToString_(v12);

              if (isEqualToString)
              {
                v14 = [actionIdentifierMapping objectForKeyedSubscript:v10];
                actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
                [v4 setObject:v14 forKeyedSubscript:actionIdentifierKey2];

                goto LABEL_16;
              }
            }

            v7 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v3 = v20 + 1;
      }

      while (v20 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }

  [(WFWorkflowMigration *)self finish];
}

@end