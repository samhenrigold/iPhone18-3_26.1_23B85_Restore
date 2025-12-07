@interface _LTDOfflineConfigurationModel
+ (BOOL)isPassthroughLocalePairIdentifier:(id)identifier;
+ (id)passthroughConfiguration;
- (NSArray)languageIdentifiers;
- (_LTDOfflineConfigurationModel)initWithDictionary:(id)dictionary;
- (id)_offlinePairConfigurationWithIdentifier:(id)identifier capability:(int64_t)capability;
- (id)offlinePairConfigurationWithIdentifier:(id)identifier;
@end

@implementation _LTDOfflineConfigurationModel

- (_LTDOfflineConfigurationModel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = _LTDOfflineConfigurationModel;
  v6 = [(_LTDOfflineConfigurationModel *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_root, dictionary);
    v8 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"LanguagePairs"];
    v9 = objc_opt_class();
    v10 = v8;
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v11 = [(NSDictionary *)v10 lt_ensureTypesForKeys:v9 values:0], v12 = v10, (v11 & 1) == 0))
    {

      v12 = 0;
    }

    languagePairConfigs = v7->_languagePairConfigs;
    v7->_languagePairConfigs = v12;

    allValues = [(NSDictionary *)v7->_languagePairConfigs allValues];
    firstObject = [allValues firstObject];
    objc_opt_class();
    v7->_hasCapabilityIdentifiers = objc_opt_isKindOfClass() & 1;

    if (!v7->_languagePairConfigs)
    {
      v16 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"config"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"config"];
      }

      else
      {
        v17 = 0;
      }

      pairAssetConfigFile = v7->_pairAssetConfigFile;
      v7->_pairAssetConfigFile = v17;

      v19 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"asset_list"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v19 lt_ensureElementType:objc_opt_class()])
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {

        v19 = 0;
        v20 = 0;
      }

      v21 = v20;

      pairAssetList = v7->_pairAssetList;
      v7->_pairAssetList = v21;

      v23 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"RequiredCapabilityIdentifier"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"RequiredCapabilityIdentifier"];
      }

      else
      {
        v24 = objc_opt_new();
      }

      v25 = v24;
      v7->_pairAssetRequiredANECapability = [v24 integerValue];
    }

    v26 = v7;
  }

  return v7;
}

+ (id)passthroughConfiguration
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = [_LTDOfflineConfigurationModel alloc];
  v6[0] = @"config";
  v6[1] = @"asset_list";
  v7[0] = &stru_284834138;
  v7[1] = MEMORY[0x277CBEBF8];
  v6[2] = @"RequiredCapabilityIdentifier";
  v7[2] = &unk_284868008;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = [(_LTDOfflineConfigurationModel *)v2 initWithDictionary:v3];

  return v4;
}

+ (BOOL)isPassthroughLocalePairIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy length];
  if (v4 >= 9)
  {
    v5 = v4 >> 1;
    if ([identifierCopy characterAtIndex:v4 >> 1] == 45)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = [identifierCopy characterAtIndex:v6];
        if (v8 != [identifierCopy characterAtIndex:v5 + v6 + 1])
        {
          break;
        }

        v7 |= v8 == 95;
        if (v5 == ++v6)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v7 = 0;
LABEL_8:

  return v7 & 1;
}

- (NSArray)languageIdentifiers
{
  v27 = *MEMORY[0x277D85DE8];
  languagePairs = [(_LTDOfflineConfigurationModel *)self languagePairs];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(languagePairs, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = languagePairs;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138543362;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 componentsSeparatedByString:{@"-", v19, v20}];
        v12 = [v11 count];
        if (v12 > 1)
        {
          v15 = [v11 objectAtIndexedSubscript:0];
          [v3 addObject:v15];
          v16 = [v11 objectAtIndexedSubscript:1];
          [v3 addObject:v16];
        }

        else
        {
          v14 = _LTOSLogAssets(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = v10;
            _os_log_error_impl(&dword_232E53000, v14, OS_LOG_TYPE_ERROR, "Offline configuration locale pair with nil source and/or target: %{public}@", buf, 0xCu);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)offlinePairConfigurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(_LTDOfflineConfigurationModel *)self _offlinePairConfigurationWithIdentifier:identifierCopy capability:+[_LTDANEService capability]];

  return v5;
}

- (id)_offlinePairConfigurationWithIdentifier:(id)identifier capability:(int64_t)capability
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([objc_opt_class() isPassthroughLocalePairIdentifier:identifierCopy])
  {
    passthroughConfiguration = [objc_opt_class() passthroughConfiguration];
  }

  else
  {
    hasCapabilityIdentifiers = self->_hasCapabilityIdentifiers;
    v9 = [(NSDictionary *)self->_languagePairConfigs objectForKeyedSubscript:identifierCopy];
    if (hasCapabilityIdentifiers)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(NSDictionary *)self->_languagePairConfigs objectForKeyedSubscript:identifierCopy];
      }

      else
      {
        v10 = objc_opt_new();
      }

      v12 = v10;

      firstObject = [v12 firstObject];
      v14 = 0x277CBE000uLL;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject2 = [v12 firstObject];
      }

      else
      {
        firstObject2 = objc_opt_new();
      }

      v16 = firstObject2;

      if ([v12 count])
      {
        v17 = 0;
        while (1)
        {
          v18 = [v12 objectAtIndexedSubscript:v17];
          v19 = [v18 objectForKeyedSubscript:@"RequiredCapabilityIdentifier"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 objectAtIndexedSubscript:v17];
            v21 = v20 = v14;
            v22 = [v21 objectForKeyedSubscript:@"RequiredCapabilityIdentifier"];

            v14 = v20;
          }

          else
          {
            v22 = objc_opt_new();
          }

          if ([v22 integerValue] > capability)
          {
            break;
          }

          v23 = [v12 objectAtIndexedSubscript:v17];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v12 objectAtIndexedSubscript:v17];
          }

          else
          {
            v24 = objc_opt_new();
          }

          v25 = v24;

          ++v17;
          v16 = v25;
          if (v17 >= [v12 count])
          {
            v16 = v25;
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [(NSDictionary *)self->_languagePairConfigs objectForKeyedSubscript:identifierCopy];
      }

      else
      {
        v11 = objc_opt_new();
      }

      v16 = v11;
      v12 = v9;
    }

LABEL_26:

    if ([v16 count])
    {
      passthroughConfiguration = [[_LTDOfflineConfigurationModel alloc] initWithDictionary:v16];
    }

    else
    {
      v27 = _LTOSLogAssets(0, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v30 = identifierCopy;
        _os_log_impl(&dword_232E53000, v27, OS_LOG_TYPE_INFO, "No offline configuration available for language identifier: %{public}@", buf, 0xCu);
      }

      passthroughConfiguration = 0;
    }
  }

  return passthroughConfiguration;
}

@end