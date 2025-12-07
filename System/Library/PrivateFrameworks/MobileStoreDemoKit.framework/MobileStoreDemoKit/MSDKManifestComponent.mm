@interface MSDKManifestComponent
- (MSDKManifestComponent)initWithIdentifier:(id)identifier componentType:(int64_t)type andDictionary:(id)dictionary;
- (id)_parseDataItem:(id)item;
- (id)_parseDataItemsForAppComponent:(id)component;
- (id)_parseFileItems:(id)items;
- (void)addDependency:(id)dependency;
@end

@implementation MSDKManifestComponent

- (MSDKManifestComponent)initWithIdentifier:(id)identifier componentType:(int64_t)type andDictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = MSDKManifestComponent;
  v11 = [(MSDKManifestComponent *)&v39 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  [(MSDKManifestComponent *)v11 setType:type];
  objc_storeStrong(&v12->_identifier, identifier);
  v13 = objc_opt_new();
  [(MSDKManifestComponent *)v12 setMutableDependencies:v13];

  v14 = [dictionaryCopy objectForKey:@"Manifest" ofType:objc_opt_class()];
  v15 = v14;
  if (!v14)
  {
    v15 = [dictionaryCopy objectForKey:@"Settings" ofType:objc_opt_class()];
    if (!v15)
    {
      v38 = defaultLogHandle(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
      }

      v17 = 0;
      v15 = 0;
      goto LABEL_35;
    }
  }

  v16 = [v15 objectForKey:@"Info" ofType:objc_opt_class()];
  if (!v16)
  {
    v38 = defaultLogHandle(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
    }

    v17 = 0;
    goto LABEL_35;
  }

  v17 = v16;
  v18 = [(MSDKManifestComponent *)v12 isOfType:0];
  if ((v18 & 1) == 0)
  {
    v18 = [(MSDKManifestComponent *)v12 isOfType:1];
    if (!v18)
    {
      v24 = [(MSDKManifestComponent *)v12 isOfType:4];
      if (!v14 && (v24 & 1) == 0)
      {
        v38 = defaultLogHandle(v24);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
        }

        goto LABEL_35;
      }

      [(MSDKManifestComponent *)v12 setRawDependencyDict:0];
      v25 = [v15 objectForKey:@"Data" ofType:objc_opt_class()];
      if (!v25)
      {
        v38 = defaultLogHandle(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
        }

        goto LABEL_35;
      }

      v19 = v25;
      if (v14)
      {
        [(MSDKManifestComponent *)v12 _parseFileItems:v25];
      }

      else
      {
        [(MSDKManifestComponent *)v12 _parseDataItem:v25];
      }
      v26 = ;
      data = v12->_data;
      v12->_data = v26;

      if (v26)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  if (!v14)
  {
    v38 = defaultLogHandle(v18);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
    }

    goto LABEL_35;
  }

  v19 = [(MSDKManifestComponent *)v12 _parseDataItemsForAppComponent:v17];
  v20 = v12->_data;
  v12->_data = v19;

  if (!v19)
  {
LABEL_36:

    v36 = 0;
    goto LABEL_20;
  }

  v21 = [v15 objectForKey:@"Dependencies" ofType:objc_opt_class()];
  [(MSDKManifestComponent *)v12 setRawDependencyDict:v21];

  rawDependencyDict = [(MSDKManifestComponent *)v12 rawDependencyDict];

  if (!rawDependencyDict)
  {
    v38 = defaultLogHandle(v23);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
    }

LABEL_35:

    v19 = 0;
    goto LABEL_36;
  }

  v19 = 0;
LABEL_18:
  v28 = [v17 objectForKey:@"OSVersion" ofType:objc_opt_class()];
  osVersion = v12->_osVersion;
  v12->_osVersion = v28;

  v30 = [v17 objectForKey:@"PlatformType" ofType:objc_opt_class()];
  platformType = v12->_platformType;
  v12->_platformType = v30;

  v32 = [dictionaryCopy objectForKey:@"Certificate" ofType:objc_opt_class()];
  certificate = v12->_certificate;
  v12->_certificate = v32;

  v34 = [dictionaryCopy objectForKey:@"Signature" ofType:objc_opt_class()];
  signature = v12->_signature;
  v12->_signature = v34;

LABEL_19:
  v36 = v12;
LABEL_20:

  return v36;
}

- (void)addDependency:(id)dependency
{
  dependencyCopy = dependency;
  mutableDependencies = [(MSDKManifestComponent *)self mutableDependencies];
  [mutableDependencies addObject:dependencyCopy];
}

- (id)_parseDataItemsForAppComponent:(id)component
{
  componentCopy = component;
  v5 = objc_opt_new();
  v6 = [MSDKManifestInstallableItem alloc];
  identifier = [(MSDKManifestComponent *)self identifier];
  v8 = [(MSDKManifestInstallableItem *)v6 initWithIdentifier:identifier andDictionary:componentCopy forComponent:self];

  if (v8)
  {
    [v5 addObject:v8];
    v9 = v5;
  }

  else
  {
    [MSDKManifestComponent _parseDataItemsForAppComponent:?];
    v9 = 0;
  }

  return v9;
}

- (id)_parseDataItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_new();
  v6 = [MSDKManifestDataItem alloc];
  identifier = [(MSDKManifestComponent *)self identifier];
  v8 = [(MSDKManifestDataItem *)v6 initWithIdentifier:identifier andDictionary:itemCopy forComponent:self];

  if (v8)
  {
    [v5 addObject:v8];
    v9 = v5;
  }

  else
  {
    [MSDKManifestComponent _parseDataItemsForAppComponent:?];
    v9 = 0;
  }

  return v9;
}

- (id)_parseFileItems:(id)items
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      v12 = [v6 objectForKey:v11 ofType:{objc_opt_class(), v18}];
      if (!v12)
      {
        break;
      }

      v13 = [[MSDKManifestFileItem alloc] initWithIdentifier:v11 andDictionary:v12 forComponent:self];
      if (!v13)
      {
        v16 = defaultLogHandle(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(MSDKManifestComponent *)v11 _parseFileItems:?];
        }

LABEL_15:

        v15 = 0;
        goto LABEL_16;
      }

      v14 = v13;
      [v5 addObject:v13];

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v16 = defaultLogHandle(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MSDKManifestComponent _parseFileItems:?];
    }

    goto LABEL_15;
  }

LABEL_10:

  v15 = v5;
LABEL_16:

  return v15;
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v3[0] = 136315906;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  v5 = v1;
  v6 = @"Manifest";
  v7 = v1;
  v8 = @"Settings";
  _os_log_error_impl(&dword_259B7D000, v2, OS_LOG_TYPE_ERROR, "%s: Component %{public}@ does not have %{public}@ or %{public}@ key", v3, 0x2Au);
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.2()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Cannot parse %{public}@ dictionary for component %{public}@", v2, v3, v4, v5, v6);
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.3()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Failed to parse %{public}@ dict for component: %{public}@", v2, v3, v4, v5, v6);
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.4()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Cannot parse %{public}@ dictionary for component %{public}@ of Apps/SystemApps section", v2, v3, v4, v5, v6);
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.5()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Failed to parse %{public}@ dict for component: %{public}@", v2, v3, v4, v5, v6);
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.6()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Failed to parse %{public}@ dict for component: %{public}@", v2, v3, v4, v5, v6);
}

- (void)_parseDataItemsForAppComponent:(void *)a1 .cold.1(void *a1)
{
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = [a1 identifier];
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)_parseFileItems:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 identifier];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_parseFileItems:(void *)a1 .cold.2(void *a1)
{
  v6 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end