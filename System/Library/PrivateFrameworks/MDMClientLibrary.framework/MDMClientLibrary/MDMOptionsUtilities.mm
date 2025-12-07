@interface MDMOptionsUtilities
+ (id)defaultMDMOptions;
+ (id)validatedMDMOptionsFromOptionsDictionary:(id)dictionary;
+ (void)setDefaultMDMOptions:(id)options;
@end

@implementation MDMOptionsUtilities

+ (id)validatedMDMOptionsFromOptionsDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  if (validatedMDMOptionsFromOptionsDictionary__onceToken != -1)
  {
    +[MDMOptionsUtilities validatedMDMOptionsFromOptionsDictionary:];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [dictionaryCopy objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = [validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses objectForKeyedSubscript:v9];
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v14 setObject:v10 forKeyedSubscript:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v14;
}

void __64__MDMOptionsUtilities_validatedMDMOptionsFromOptionsDictionary___block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"ActivationLockAllowedWhileSupervised";
  v3[0] = objc_opt_class();
  v2[1] = @"IdleRebootAllowed";
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses;
  validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses = v0;
}

+ (id)defaultMDMOptions
{
  v2 = CFPreferencesCopyAppValue(@"DefaultMDMOptions", @"com.apple.devicemanagementclient.notbackedup");

  return v2;
}

+ (void)setDefaultMDMOptions:(id)options
{
  CFPreferencesSetAppValue(@"DefaultMDMOptions", options, @"com.apple.devicemanagementclient.notbackedup");

  CFPreferencesAppSynchronize(@"com.apple.devicemanagementclient.notbackedup");
}

@end