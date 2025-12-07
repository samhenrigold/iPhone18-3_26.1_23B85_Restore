@interface UIActivity
@end

@implementation UIActivity

void __59__UIActivity_RPExtensions__streamActivitiesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v17 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 attributes];
        v9 = [v8 objectForKeyedSubscript:@"NSExtensionActivationRule"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v11 = [v7 attributes];
          v12 = [v11 objectForKeyedSubscript:@"NSExtensionActivationRule"];
          v13 = [v12 objectForKeyedSubscript:@"NSExtensionActivationSupportsReplayStreaming"];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            v15 = [objc_alloc(MEMORY[0x277D546E0]) initWithApplicationExtension:v7];
            [v17 addObject:v15];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 32) + 16))();
}

@end