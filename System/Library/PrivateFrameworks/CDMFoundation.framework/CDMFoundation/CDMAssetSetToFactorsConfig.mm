@interface CDMAssetSetToFactorsConfig
- (CDMAssetSetToFactorsConfig)init;
- (id)getAllFactors;
- (id)getCDMFactorConfigForAssetSet:(int64_t)set;
- (void)setCDMAssetsFactorConfig:(id)config forAssetSet:(int64_t)set;
@end

@implementation CDMAssetSetToFactorsConfig

- (CDMAssetSetToFactorsConfig)init
{
  v6.receiver = self;
  v6.super_class = CDMAssetSetToFactorsConfig;
  v2 = [(CDMAssetSetToFactorsConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetSetToFactorsMapping = v2->_assetSetToFactorsMapping;
    v2->_assetSetToFactorsMapping = v3;
  }

  return v2;
}

- (id)getAllFactors
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  allValues = [(NSMutableDictionary *)self->_assetSetToFactorsMapping allValues];
  v5 = [v3 initWithCapacity:{objc_msgSend(allValues, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_assetSetToFactorsMapping allValues];
  v7 = [allValues2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allValues2);
        }

        getFactorToFoldersMapping = [*(*(&v14 + 1) + 8 * i) getFactorToFoldersMapping];
        allKeys = [getFactorToFoldersMapping allKeys];
        [v5 addObjectsFromArray:allKeys];
      }

      v8 = [allValues2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)setCDMAssetsFactorConfig:(id)config forAssetSet:(int64_t)set
{
  assetSetToFactorsMapping = self->_assetSetToFactorsMapping;
  v6 = MEMORY[0x1E696AD98];
  configCopy = config;
  v8 = [v6 numberWithInteger:set];
  [(NSMutableDictionary *)assetSetToFactorsMapping setObject:configCopy forKey:v8];
}

- (id)getCDMFactorConfigForAssetSet:(int64_t)set
{
  assetSetToFactorsMapping = self->_assetSetToFactorsMapping;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)assetSetToFactorsMapping objectForKey:v6];

  if (v7)
  {
    v8 = self->_assetSetToFactorsMapping;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:set];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end