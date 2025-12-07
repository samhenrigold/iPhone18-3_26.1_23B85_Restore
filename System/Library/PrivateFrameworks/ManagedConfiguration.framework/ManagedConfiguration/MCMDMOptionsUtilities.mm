@interface MCMDMOptionsUtilities
+ (id)defaultMDMOptions;
+ (id)validatedMDMOptionsFromOptionsDictionary:(id)dictionary;
+ (void)setDefaultMDMOptions:(id)options;
@end

@implementation MCMDMOptionsUtilities

+ (id)validatedMDMOptionsFromOptionsDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  if (validatedMDMOptionsFromOptionsDictionary__onceToken != -1)
  {
    +[MCMDMOptionsUtilities validatedMDMOptionsFromOptionsDictionary:];
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

void __66__MCMDMOptionsUtilities_validatedMDMOptionsFromOptionsDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69AD4F8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses;
  validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses = v2;
}

+ (id)defaultMDMOptions
{
  v2 = CFPreferencesCopyAppValue(@"DefaultMDMOptions", @"com.apple.managedconfiguration.notbackedup");

  return v2;
}

+ (void)setDefaultMDMOptions:(id)options
{
  CFPreferencesSetAppValue(@"DefaultMDMOptions", options, @"com.apple.managedconfiguration.notbackedup");

  CFPreferencesAppSynchronize(@"com.apple.managedconfiguration.notbackedup");
}

@end