@interface DNDSModeConfigurationsRecord
+ (id)backingStoreWithFileURL:(id)l secureFileURL:(id)rL;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
+ (id)newWithDictionaryRepresentation:(id)representation partitionedDictionaryRepresentation:(id)dictionaryRepresentation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (id)_initWithModeConfigurations:(id)configurations;
- (id)_initWithRecord:(id)record;
- (id)configurationForModeIdentifier:(id)identifier;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)modeForModeIdentifier:(id)identifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)triggersForModeIdentifier:(id)identifier;
- (void)log:(id)log withMessage:(id)message;
@end

@implementation DNDSModeConfigurationsRecord

+ (id)backingStoreWithFileURL:(id)l secureFileURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  v8 = [[DNDSJSONBackingStore alloc] initWithRecordClass:self fileURL:lCopy secureFileURL:rLCopy versionNumber:2 securityClass:2];

  return v8;
}

- (id)_initWithRecord:(id)record
{
  modeConfigurations = [record modeConfigurations];
  v5 = [(DNDSModeConfigurationsRecord *)self _initWithModeConfigurations:modeConfigurations];

  return v5;
}

- (id)_initWithModeConfigurations:(id)configurations
{
  v24 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v22.receiver = self;
  v22.super_class = DNDSModeConfigurationsRecord;
  v5 = [(DNDSModeConfigurationsRecord *)&v22 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    modeConfigurationsByModeIdentifier = v5->_modeConfigurationsByModeIdentifier;
    v5->_modeConfigurationsByModeIdentifier = dictionary;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = configurationsCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = v5->_modeConfigurationsByModeIdentifier;
          mode = [v13 mode];
          modeIdentifier = [mode modeIdentifier];
          [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:modeIdentifier];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (id)configurationForModeIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:identifier];
  configuration = [v3 configuration];

  return configuration;
}

- (id)triggersForModeIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:identifier];
  triggers = [v3 triggers];

  return triggers;
}

- (id)modeForModeIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:identifier];
  mode = [v3 mode];

  return mode;
}

- (void)log:(id)log withMessage:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  logCopy = log;
  messageCopy = message;
  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = messageCopy;
    _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_modeConfigurationsByModeIdentifier;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v12), v14];
        [v13 log:logCopy withMessage:@"Record"];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      modeConfigurations = [(DNDSModeConfigurationsRecord *)self modeConfigurations];
      modeConfigurations2 = [(DNDSModeConfigurationsRecord *)v5 modeConfigurations];
      if (modeConfigurations == modeConfigurations2)
      {
        v12 = 1;
      }

      else
      {
        modeConfigurations3 = [(DNDSModeConfigurationsRecord *)self modeConfigurations];
        if (modeConfigurations3)
        {
          modeConfigurations4 = [(DNDSModeConfigurationsRecord *)v5 modeConfigurations];
          if (modeConfigurations4)
          {
            modeConfigurations5 = [(DNDSModeConfigurationsRecord *)self modeConfigurations];
            modeConfigurations6 = [(DNDSModeConfigurationsRecord *)v5 modeConfigurations];
            v12 = [modeConfigurations5 isEqual:modeConfigurations6];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableModeConfigurationsRecord alloc];

  return [(DNDSModeConfigurationsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  contextCopy = context;
  v8 = [representationCopy bs_safeObjectForKey:@"modeConfigurations" ofType:objc_opt_class()];
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [DNDSModeConfigurationRecord newWithDictionaryRepresentation:*(*(&v18 + 1) + 8 * v14) context:contextCopy, v18];
        [array addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [[self alloc] _initWithModeConfigurations:array];
  return v16;
}

+ (id)newWithDictionaryRepresentation:(id)representation partitionedDictionaryRepresentation:(id)dictionaryRepresentation context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  dictionaryRepresentationCopy = dictionaryRepresentation;
  contextCopy = context;
  v26 = representationCopy;
  v10 = [representationCopy bs_safeObjectForKey:@"modeConfigurations" ofType:objc_opt_class()];
  v25 = dictionaryRepresentationCopy;
  v11 = [dictionaryRepresentationCopy bs_safeObjectForKey:@"secureModeConfigurations" ofType:objc_opt_class()];
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:v18];
        v20 = [v11 objectForKeyedSubscript:v18];
        v21 = [DNDSModeConfigurationRecord newWithDictionaryRepresentation:v19 partitionedDictionaryRepresentation:v20 context:contextCopy];
        [array addObject:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v22 = [[self alloc] _initWithModeConfigurations:array];
  return v22;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v30 = dictionary;
  if ([contextCopy partitionType])
  {
    v6 = [contextCopy mutableCopy];
    [v6 setPartitionType:1];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    selfCopy = self;
    allValues = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier allValues];
    v9 = [allValues countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = [v13 dictionaryRepresentationWithContext:v6];
          mode = [v13 mode];
          modeIdentifier = [mode modeIdentifier];
          [dictionary2 setObject:v14 forKeyedSubscript:modeIdentifier];
        }

        v10 = [allValues countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v10);
    }

    dictionary = v30;
    [v30 setObject:dictionary2 forKeyedSubscript:@"modeConfigurations"];

    self = selfCopy;
  }

  if (([contextCopy partitionType] & 2) != 0)
  {
    v17 = [contextCopy mutableCopy];
    [v17 setPartitionType:2];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier allValues];
    v20 = [allValues2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(allValues2);
          }

          v24 = *(*(&v31 + 1) + 8 * j);
          v25 = [v24 dictionaryRepresentationWithContext:contextCopy];
          mode2 = [v24 mode];
          modeIdentifier2 = [mode2 modeIdentifier];
          [dictionary3 setObject:v25 forKeyedSubscript:modeIdentifier2];
        }

        v21 = [allValues2 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v21);
    }

    dictionary = v30;
    [v30 setObject:dictionary3 forKeyedSubscript:@"secureModeConfigurations"];
  }

  return dictionary;
}

@end