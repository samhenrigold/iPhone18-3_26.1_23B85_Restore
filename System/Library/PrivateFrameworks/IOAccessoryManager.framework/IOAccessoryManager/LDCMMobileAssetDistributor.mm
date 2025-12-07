@interface LDCMMobileAssetDistributor
- (void)receiveBehaviorDictionary:(id)dictionary;
@end

@implementation LDCMMobileAssetDistributor

- (void)receiveBehaviorDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"LDCMBehaviorV4"];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 objectForKeyedSubscript:@"LDCMBehaviorV4"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = v4;
        v9 = [v4 objectForKeyedSubscript:@"LDCMBehaviorV4"];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = _MergedGlobals_0;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * i);
              v16 = [_MergedGlobals_0 objectForKeyedSubscript:v15];
              objc_opt_class();
              v17 = objc_opt_isKindOfClass();

              if (v17)
              {
                v18 = [_MergedGlobals_0 objectForKeyedSubscript:v15];
                [v18 processBehaviorDictionary:v9];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v12);
        }

        v4 = v19;
      }
    }
  }
}

@end