@interface CDMAssetsFactorConfig
- (BOOL)isFactorRequired:(id)required;
- (CDMAssetsFactorConfig)initWithFactorToFoldersMapping:(id)mapping;
- (void)addEntriesFromCDMAssetsFactorConfig:(id)config;
- (void)setFactorToIsRequiredMapping:(id)mapping;
- (void)setIsRequiredForFactor:(id)factor isRequired:(BOOL)required;
@end

@implementation CDMAssetsFactorConfig

- (void)setIsRequiredForFactor:(id)factor isRequired:(BOOL)required
{
  if (factor)
  {
    requiredCopy = required;
    factorToIsRequiredMapping = self->_factorToIsRequiredMapping;
    v6 = MEMORY[0x1E696AD98];
    factorCopy = factor;
    v8 = [v6 numberWithBool:requiredCopy];
    [(NSMutableDictionary *)factorToIsRequiredMapping setObject:v8 forKey:factorCopy];
  }
}

- (BOOL)isFactorRequired:(id)required
{
  requiredCopy = required;
  v5 = [(NSMutableDictionary *)self->_factorToIsRequiredMapping objectForKeyedSubscript:requiredCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_factorToIsRequiredMapping objectForKeyedSubscript:requiredCopy];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setFactorToIsRequiredMapping:(id)mapping
{
  if (mapping)
  {
    v4 = [mapping mutableCopy];
    v5 = 16;
  }

  else
  {
    v4 = 0;
    v5 = 8;
  }

  *(&self->super.isa + v5) = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addEntriesFromCDMAssetsFactorConfig:(id)config
{
  v24 = *MEMORY[0x1E69E9840];
  if (config)
  {
    getFactorToFoldersMapping = [config getFactorToFoldersMapping];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [getFactorToFoldersMapping countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v16;
      *&v6 = 136315394;
      v14 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(getFactorToFoldersMapping);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [getFactorToFoldersMapping objectForKeyedSubscript:{v10, v14}];
          v12 = [(NSMutableDictionary *)self->_factorToFoldersMapping objectForKeyedSubscript:v10];

          if (v12)
          {
            v13 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = v14;
              v20 = "[CDMAssetsFactorConfig addEntriesFromCDMAssetsFactorConfig:]";
              v21 = 2112;
              v22 = v10;
              _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Skipping folders for %@", buf, 0x16u);
            }
          }

          else
          {
            [(NSMutableDictionary *)self->_factorToFoldersMapping setObject:v11 forKeyedSubscript:v10];
          }
        }

        v7 = [getFactorToFoldersMapping countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v7);
    }
  }
}

- (CDMAssetsFactorConfig)initWithFactorToFoldersMapping:(id)mapping
{
  mappingCopy = mapping;
  v11.receiver = self;
  v11.super_class = CDMAssetsFactorConfig;
  v5 = [(CDMAssetsFactorConfig *)&v11 init];
  if (v5)
  {
    if (mappingCopy)
    {
      v6 = [mappingCopy mutableCopy];
      factorToFoldersMapping = v5->_factorToFoldersMapping;
      v5->_factorToFoldersMapping = v6;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    factorToIsRequiredMapping = v5->_factorToIsRequiredMapping;
    v5->_factorToIsRequiredMapping = dictionary;
  }

  return v5;
}

@end