@interface NSDictionary(GameControllerSettings)
+ (id)_gcs_jsonObjectForSerializableDictionary:()GameControllerSettings;
+ (id)_gcs_serializableDictionaryForDictionaryJsonObject:()GameControllerSettings;
+ (id)_gcs_serializableDictionaryForJsonObject:()GameControllerSettings withValuesOfClass:;
- (GCSElement)_gcs_gscElementForJSONKey:()GameControllerSettings;
- (GCSProfile)_gcs_gscProfileForJSONKey:()GameControllerSettings;
- (id)_gcs_arrayForJSONKey:()GameControllerSettings;
- (id)_gcs_dateForJSONKey:()GameControllerSettings;
- (id)_gcs_dictionaryForJSONKey:()GameControllerSettings;
- (id)_gcs_numberForJSONKey:()GameControllerSettings;
- (id)_gcs_stringForJSONKey:()GameControllerSettings;
- (id)_gcs_uuidForJSONKey:()GameControllerSettings;
- (id)jsonObject;
- (void)initWithJSONObject:()GameControllerSettings;
@end

@implementation NSDictionary(GameControllerSettings)

- (void)initWithJSONObject:()GameControllerSettings
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v4;
    v5 = v4;
    v6 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [v7 objectForKeyedSubscript:v13];
            if ([v14 conformsToProtocol:&unk_286195E48])
            {
              [v6 setObject:v14 forKeyedSubscript:v13];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v15 = [self initWithDictionary:v6];
    self = v15;
    if (v15)
    {
      v16 = v15;
    }

    selfCopy = self;
    v4 = v19;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)jsonObject
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [self allKeys];
  v3 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [self objectForKey:v7];
          if ([v8 conformsToProtocol:&unk_286195E48])
          {
            jsonObject = [v8 jsonObject];
            [v11 setObject:jsonObject forKeyedSubscript:v7];
          }

          else if ([v8 conformsToProtocol:&unk_286197818])
          {
            [v11 setObject:v8 forKeyedSubscript:v7];
          }
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return v11;
}

+ (id)_gcs_jsonObjectForSerializableDictionary:()GameControllerSettings
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v5 objectForKeyedSubscript:{v11, v15}];
          if ([v12 conformsToProtocol:&unk_286197818])
          {
            [v4 setObject:v12 forKeyedSubscript:v11];
          }

          else
          {
            jsonObject = [v12 jsonObject];
            if (jsonObject)
            {
              [v4 setObject:jsonObject forKeyedSubscript:v11];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)_gcs_serializableDictionaryForJsonObject:()GameControllerSettings withValuesOfClass:
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    v10 = 0x277CCA000uLL;
    v11 = &_OBJC_LABEL_PROTOCOL___NSObject;
    v12 = &_OBJC_LABEL_PROTOCOL___NSObject;
    do
    {
      v13 = 0;
      v26 = v8;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
          v16 = [v6 objectForKeyedSubscript:v15];
          if ([(objc_class *)a4 conformsToProtocol:v11[254]]&& (objc_opt_isKindOfClass() & 1) != 0)
          {
            [v27 setObject:v16 forKeyedSubscript:v15];
          }

          else if ([(objc_class *)a4 conformsToProtocol:v12[253], v26])
          {
            v17 = [[a4 alloc] initWithJSONObject:v16];
            v18 = a4;
            v19 = v9;
            v20 = v6;
            v21 = v10;
            v22 = v11;
            v23 = v12;
            v24 = v17;
            [v27 setObject:v17 forKeyedSubscript:v15];

            v12 = v23;
            v11 = v22;
            v10 = v21;
            v6 = v20;
            v9 = v19;
            a4 = v18;
            v8 = v26;
          }
        }

        ++v13;
      }

      while (v8 != v13);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  return v27;
}

+ (id)_gcs_serializableDictionaryForDictionaryJsonObject:()GameControllerSettings
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEAC0];
    v4 = a3;
    v5 = [[v3 alloc] initWithJSONObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_gcs_stringForJSONKey:()GameControllerSettings
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_gcs_numberForJSONKey:()GameControllerSettings
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_gcs_dictionaryForJSONKey:()GameControllerSettings
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_gcs_arrayForJSONKey:()GameControllerSettings
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_gcs_dateForJSONKey:()GameControllerSettings
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_gcs_uuidForJSONKey:()GameControllerSettings
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithJSONObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (GCSElement)_gcs_gscElementForJSONKey:()GameControllerSettings
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[GCSElement alloc] initWithJSONObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (GCSProfile)_gcs_gscProfileForJSONKey:()GameControllerSettings
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[GCSProfile alloc] initWithJSONObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end