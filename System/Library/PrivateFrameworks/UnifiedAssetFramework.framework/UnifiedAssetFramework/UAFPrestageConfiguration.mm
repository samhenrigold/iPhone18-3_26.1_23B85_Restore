@interface UAFPrestageConfiguration
+ (BOOL)isValid:(id)valid error:(id *)error;
+ (BOOL)predicateMatch:(id)match;
+ (id)fromContentsOfURL:(id)l error:(id *)error;
+ (id)supportedFileVersions;
- (UAFPrestageConfiguration)initWithDictionary:(id)dictionary;
- (id)mergeAssetSetUsages:(id)usages;
- (id)usages:(id)usages;
@end

@implementation UAFPrestageConfiguration

+ (id)supportedFileVersions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (BOOL)isValid:(id)valid error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v6 = +[UAFPrestageConfiguration supportedFileVersions];
  v7 = [UAFConfiguration isValid:validCopy fileType:@"PrestageConfiguration" fileVersions:v6 error:error];

  if (!v7 || ![UAFConfiguration isValidValue:validCopy key:@"AssetSetName" kind:objc_opt_class() required:1 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"ValidConfigs" kind:objc_opt_class() required:1 error:error])
  {
    v21 = 0;
    goto LABEL_28;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [validCopy objectForKeyedSubscript:@"ValidConfigs"];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (!v9)
  {
    v21 = 1;
    goto LABEL_34;
  }

  v10 = v9;
  v11 = *v39;
  v32 = v8;
  v29 = *v39;
  while (2)
  {
    v12 = 0;
    v30 = v10;
    do
    {
      if (*v39 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v31 = v12;
      v13 = *(*(&v38 + 1) + 8 * v12);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          *buf = 136315394;
          v44 = "+[UAFPrestageConfiguration isValid:error:]";
          v45 = 2112;
          v46 = v26;
          v27 = v26;
          _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s ValidConfig is not expected kind %@", buf, 0x16u);
        }

        goto LABEL_32;
      }

      v14 = v13;
      if (![UAFConfiguration isValidValue:v14 key:@"TargetingType" kind:objc_opt_class() required:1 error:error])
      {
        goto LABEL_32;
      }

      v15 = [v14 objectForKeyedSubscript:@"TargetingType"];
      if (![v15 isEqualToString:@"PrestagePredicate"])
      {
        if ([v15 isEqualToString:@"AllDevices"])
        {
          goto LABEL_15;
        }

        v28 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v44 = "+[UAFPrestageConfiguration isValid:error:]";
          v45 = 2114;
          v46 = v15;
          _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s Unknown targeting type: %{public}@", buf, 0x16u);
        }

LABEL_40:
LABEL_32:

        v21 = 0;
        goto LABEL_34;
      }

      if (![UAFConfiguration isValidValue:v14 key:@"TargetingPredicate" kind:objc_opt_class() required:1 error:error])
      {
        goto LABEL_40;
      }

LABEL_15:
      if (![UAFConfiguration isValidValue:v14 key:@"Usages" kind:objc_opt_class() required:1 error:error])
      {
        goto LABEL_40;
      }

      v33 = v15;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v16 = [v14 objectForKeyedSubscript:@"Usages"];
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = UAFGetLogCategory(&UAFLogContextConfiguration);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = objc_opt_class();
                *buf = 136315394;
                v44 = "+[UAFPrestageConfiguration isValid:error:]";
                v45 = 2112;
                v46 = v24;
                v25 = v24;
                _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, "%s Usage is not expected kind %@", buf, 0x16u);
              }

              v8 = v32;
              goto LABEL_32;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v8 = v32;
      v12 = v31 + 1;
      v11 = v29;
    }

    while (v31 + 1 != v30);
    v10 = [v32 countByEnumeratingWithState:&v38 objects:v47 count:16];
    v21 = 1;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_34:

LABEL_28:
  return v21;
}

+ (id)fromContentsOfURL:(id)l error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (error)
  {
    *error = 0;
  }

  v17 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v17];
  v7 = v17;
  v8 = v7;
  if (error)
  {
    v9 = v7;
    *error = v8;
  }

  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if ([UAFPrestageConfiguration isValid:v6 error:error])
    {
      v15 = [[UAFPrestageConfiguration alloc] initWithDictionary:v6];
      goto LABEL_15;
    }

    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "+[UAFPrestageConfiguration fromContentsOfURL:error:]";
      v20 = 2112;
      v21 = lCopy;
      v12 = "%s Failed to validate UAFAssetSetConfiguration dictionary from %@";
      v13 = v11;
      v14 = 22;
      goto LABEL_19;
    }
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "+[UAFPrestageConfiguration fromContentsOfURL:error:]";
      v20 = 2112;
      v21 = lCopy;
      v22 = 2112;
      v23 = v8;
      v12 = "%s Failed to load UAFAssetSetConfiguration dictionary from %@: %@";
      v13 = v11;
      v14 = 32;
LABEL_19:
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

+ (BOOL)predicateMatch:(id)match
{
  v26 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [&unk_1F3B73260 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(&unk_1F3B73260);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [UAFCommonUtilities mobileGestaltQuery:v10];
        [dictionary2 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [&unk_1F3B73260 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  [dictionary addEntriesFromDictionary:dictionary2];
  v12 = +[UAFCommonUtilities systemLanguage];
  [dictionary setObject:v12 forKeyedSubscript:@"SystemLanguage"];

  v13 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "+[UAFPrestageConfiguration predicateMatch:]";
    v23 = 2114;
    v24 = matchCopy;
    _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Evaluating predicate string: '%{public}@'", buf, 0x16u);
  }

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:matchCopy];
  v15 = [v14 evaluateWithObject:dictionary];

  return v15;
}

- (UAFPrestageConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = UAFPrestageConfiguration;
  v5 = [(UAFPrestageConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AssetSetName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ValidConfigs"];
    v9 = [(UAFPrestageConfiguration *)v5 usages:v8];
    usages = v5->_usages;
    v5->_usages = v9;

    v11 = v5;
  }

  return v5;
}

- (id)usages:(id)usages
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = usages;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v3)
  {
    array = 0;
    goto LABEL_21;
  }

  v4 = v3;
  array = 0;
  v6 = *v19;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v18 + 1) + 8 * i);
      v9 = [v8 objectForKeyedSubscript:@"TargetingType"];
      v10 = [v9 isEqualToString:@"AllDevices"];

      if (v10)
      {
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v11 = [v8 objectForKeyedSubscript:@"Usages"];
        v12 = [array arrayByAddingObjectsFromArray:v11];
        goto LABEL_10;
      }

      v13 = [v8 objectForKeyedSubscript:@"TargetingType"];
      v14 = [v13 isEqualToString:@"PrestagePredicate"];

      if (v14)
      {
        v11 = [v8 objectForKeyedSubscript:@"TargetingPredicate"];
        if ([UAFPrestageConfiguration predicateMatch:v11])
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          v15 = [v8 objectForKeyedSubscript:@"Usages"];
          v12 = [array arrayByAddingObjectsFromArray:v15];

          array = v15;
LABEL_10:

          array = v12;
        }

        continue;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v4);
LABEL_21:

  return array;
}

- (id)mergeAssetSetUsages:(id)usages
{
  usagesCopy = usages;
  if ([(NSArray *)self->_usages count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:usagesCopy];
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = [v5 objectForKeyedSubscript:self->_name];
    [v6 addObjectsFromArray:v7];

    [v6 addObjectsFromArray:self->_usages];
    allObjects = [v6 allObjects];
    [v5 setObject:allObjects forKeyedSubscript:self->_name];
  }

  else
  {
    v5 = usagesCopy;
  }

  return v5;
}

@end