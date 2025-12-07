@interface EDMigrateUserDefaultsUpgradeStep
+ (BOOL)run;
+ (id)propertiesToMigrate;
@end

@implementation EDMigrateUserDefaultsUpgradeStep

+ (BOOL)run
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  propertiesToMigrate = [self propertiesToMigrate];
  v3 = [propertiesToMigrate countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(propertiesToMigrate);
        }

        [MEMORY[0x1E695E000] em_migrateDefault:*(*(&v7 + 1) + 8 * v5++)];
      }

      while (v3 != v5);
      v3 = [propertiesToMigrate countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  return 1;
}

+ (id)propertiesToMigrate
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E699AB70];
  v5[0] = *MEMORY[0x1E699AB58];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

@end