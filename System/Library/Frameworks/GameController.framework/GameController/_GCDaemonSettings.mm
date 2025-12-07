@interface _GCDaemonSettings
+ (id)instance;
- (_GCDaemonSettings)init;
- (id)anonymizedIdentifierForControllerIdentifier:(id)identifier;
- (id)newAnonymizedIdentifiersDictionary:(id)dictionary;
@end

@implementation _GCDaemonSettings

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29___GCDaemonSettings_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (instance_dispatcher_0 != -1)
  {
    dispatch_once(&instance_dispatcher_0, block);
  }

  v2 = instance_sharedInstance_0;

  return v2;
}

- (_GCDaemonSettings)init
{
  v6.receiver = self;
  v6.super_class = _GCDaemonSettings;
  v2 = [(_GCDaemonSettings *)&v6 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    defaults = v2->_defaults;
    v2->_defaults = standardUserDefaults;
  }

  return v2;
}

- (id)newAnonymizedIdentifiersDictionary:(id)dictionary
{
  v3 = MEMORY[0x1E695DF90];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(v3);
  [v5 setObject:&unk_1F4E8F290 forKeyedSubscript:@"nextIdentifier"];
  [v5 setObject:dictionaryCopy forKeyedSubscript:@"currentCycle"];

  [v5 setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:@"identifiers"];
  return v5;
}

- (id)anonymizedIdentifierForControllerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  isInternalBuild = gc_isInternalBuild(v6, v7);
  if (isInternalBuild)
  {
    v32 = getGCDLogger(isInternalBuild);
    [(_GCDaemonSettings *)v32 anonymizedIdentifierForControllerIdentifier:identifierCopy];
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v11 = [MEMORY[0x1E696AD98] numberWithLong:vcvtmd_s64_f64(v10 / 86400.0 / 91.0)];
  v12 = [(NSUserDefaults *)selfCopy->_defaults objectForKey:@"anonymizedIdentifiers"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"currentCycle"];
    v15 = [v14 isEqualToNumber:v11];
    if (v15)
    {
      v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v13];
    }

    else
    {
      v16 = [(_GCDaemonSettings *)selfCopy newAnonymizedIdentifiersDictionary:v11];
    }

    v17 = v16;
    v18 = v15 ^ 1;
  }

  else
  {
    v17 = [(_GCDaemonSettings *)selfCopy newAnonymizedIdentifiersDictionary:v11];
    v18 = 1;
  }

  v19 = MEMORY[0x1E695DF90];
  v20 = [v17 objectForKeyedSubscript:@"identifiers"];
  v21 = [v19 dictionaryWithDictionary:v20];

  v22 = [v21 objectForKeyedSubscript:identifierCopy];

  if (!v22)
  {
    v23 = [v17 objectForKeyedSubscript:@"nextIdentifier"];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"controller-%@", v23];
    [v21 setObject:v24 forKeyedSubscript:identifierCopy];

    v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "intValue") + 1}];
    [v17 setObject:v25 forKeyedSubscript:@"nextIdentifier"];

    v18 = 1;
  }

  v26 = [v17 setObject:v21 forKeyedSubscript:@"identifiers"];
  if (v18)
  {
    v28 = gc_isInternalBuild(v26, v27);
    if (v28)
    {
      v33 = getGCDLogger(v28);
      [(_GCDaemonSettings *)v33 anonymizedIdentifierForControllerIdentifier:v17];
    }

    [(NSUserDefaults *)selfCopy->_defaults setObject:v17 forKey:@"anonymizedIdentifiers"];
  }

  else
  {
    v29 = gc_isInternalBuild(v26, v27);
    if (v29)
    {
      v34 = getGCDLogger(v29);
      [(_GCDaemonSettings *)v34 anonymizedIdentifierForControllerIdentifier:v13];
    }
  }

  v30 = [v21 objectForKeyedSubscript:identifierCopy];

  objc_sync_exit(selfCopy);

  return v30;
}

- (void)anonymizedIdentifierForControllerIdentifier:(NSObject *)a1 .cold.1(NSObject *a1, uint64_t a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    LODWORD(v10) = 138412290;
    *(&v10 + 4) = a2;
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v4, v5, "anonymizedIdentifierForControllerIdentifier: %@", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

- (void)anonymizedIdentifierForControllerIdentifier:(NSObject *)a1 .cold.2(NSObject *a1, uint64_t a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    LODWORD(v10) = 138412290;
    *(&v10 + 4) = a2;
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v4, v5, "Values didn't change. Stored anonymizedIdentifiers are: %@", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

- (void)anonymizedIdentifierForControllerIdentifier:(NSObject *)a1 .cold.3(NSObject *a1, uint64_t a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    LODWORD(v10) = 138412290;
    *(&v10 + 4) = a2;
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v4, v5, "Storing the following anonymizedIdentifiers: %@", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

@end