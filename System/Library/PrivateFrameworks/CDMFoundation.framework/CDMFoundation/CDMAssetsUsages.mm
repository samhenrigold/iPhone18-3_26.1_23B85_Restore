@interface CDMAssetsUsages
+ (id)cdmAssetsUsageKeyToString:(int64_t)string;
- (BOOL)addUsageForKey:(int64_t)key withAssetUsageValue:(id)value;
- (CDMAssetsUsages)init;
- (id)getUsages;
@end

@implementation CDMAssetsUsages

- (CDMAssetsUsages)init
{
  v6.receiver = self;
  v6.super_class = CDMAssetsUsages;
  v2 = [(CDMAssetsUsages *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    usages = v2->_usages;
    v2->_usages = dictionary;
  }

  return v2;
}

- (id)getUsages
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_usages, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_usages;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = +[CDMAssetsUsages cdmAssetsUsageKeyToString:](CDMAssetsUsages, "cdmAssetsUsageKeyToString:", [v9 integerValue]);
        v11 = [(NSMutableDictionary *)self->_usages objectForKeyedSubscript:v9];
        [v3 setObject:v11 forKeyedSubscript:v10];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)addUsageForKey:(int64_t)key withAssetUsageValue:(id)value
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v7 = [CDMAssetsUsages cdmAssetsUsageKeyToString:key];

  if (v7)
  {
    usages = self->_usages;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:key];
    [(NSMutableDictionary *)usages setObject:valueCopy forKey:v9];
  }

  else
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:key];
      v13 = 136315394;
      v14 = "[CDMAssetsUsages addUsageForKey:withAssetUsageValue:]";
      v15 = 2112;
      v16 = v12;
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s No assets usage key string found for %@", &v13, 0x16u);
    }
  }

  return v7 != 0;
}

+ (id)cdmAssetsUsageKeyToString:(int64_t)string
{
  if (string > 4)
  {
    return 0;
  }

  else
  {
    return off_1E862F908[string];
  }
}

@end