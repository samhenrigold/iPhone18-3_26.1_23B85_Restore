@interface DEDExtensionIdentifierManager
+ (id)archivedClasses;
+ (id)log;
- (BOOL)isKnownIdentifier:(id)identifier;
- (DEDExtensionIdentifierManager)init;
- (DEDExtensionIdentifierManager)initWithCoder:(id)coder;
- (DEDExtensionIdentifierManager)initWithExtensionIdentifiers:(id)identifiers;
- (DEDExtensionIdentifierManager)initWithJSONString:(id)string;
- (id)JSONRepresentation;
- (id)allIdentifiers;
- (id)identifierForExtensionIdentifier:(id)identifier;
- (id)knownIdentifiersForExtensionIdentifier:(id)identifier;
- (void)JSONRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
- (void)revokeIdentifier:(id)identifier;
@end

@implementation DEDExtensionIdentifierManager

- (id)JSONRepresentation
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  identifierTable = [(DEDExtensionIdentifierManager *)self identifierTable];
  v5 = [v3 initWithCapacity:{objc_msgSend(identifierTable, "count")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  identifierTable2 = [(DEDExtensionIdentifierManager *)self identifierTable];
  allKeys = [identifierTable2 allKeys];

  obj = allKeys;
  v29 = [allKeys countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v29)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        identifierTable3 = [(DEDExtensionIdentifierManager *)selfCopy identifierTable];
        v11 = [identifierTable3 objectForKeyedSubscript:v9];

        v12 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * j);
              v17 = [v5 objectForKeyedSubscript:v9];
              if (!v17)
              {
                v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
              }

              stringValue = [v16 stringValue];
              [v17 addObject:stringValue];

              [v5 setObject:v17 forKeyedSubscript:v9];
            }

            v13 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v13);
        }
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v29);
  }

  v39 = @"identifierTable";
  v40 = v5;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v30 = 0;
  v20 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v19 options:2 error:&v30];
  v21 = v30;
  v22 = v21;
  if (!v20 || v21)
  {
    v24 = +[DEDExtensionIdentifierManager log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(DEDExtensionIdentifierManager *)v22 JSONRepresentation];
    }

    v23 = &stru_285B72378;
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v20 encoding:4];
  }

  return v23;
}

- (DEDExtensionIdentifierManager)initWithJSONString:(id)string
{
  v54 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v46.receiver = self;
  v46.super_class = DEDExtensionIdentifierManager;
  v5 = [(DEDExtensionIdentifierManager *)&v46 init];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  [(DEDExtensionIdentifierManager *)v5 setIdentifierTable:v6];

  v7 = MEMORY[0x277CCAAA0];
  v29 = stringCopy;
  v8 = [stringCopy dataUsingEncoding:4];
  v45 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:&v45];
  v10 = v45;

  v30 = v9;
  if (!v9 || v10)
  {
    v11 = +[DEDExtensionIdentifierManager log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(DEDExtensionIdentifierManager *)v10 initWithJSONString:v29, v11];
    }
  }

  else
  {
    v11 = [v9 objectForKeyedSubscript:@"identifierTable"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = [v11 allKeys];
      v12 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v42;
        v32 = v11;
        v31 = *v42;
        do
        {
          v15 = 0;
          v33 = v13;
          do
          {
            if (*v42 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v41 + 1) + 8 * v15);
            v17 = [v11 objectForKeyedSubscript:v16];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v37 objects:v48 count:16];
              if (v19)
              {
                v20 = v19;
                v35 = v17;
                v36 = v15;
                v21 = *v38;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v38 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = [[DEDExtensionIdentifier alloc] initWithString:*(*(&v37 + 1) + 8 * i)];
                    identifierTable = [(DEDExtensionIdentifierManager *)v5 identifierTable];
                    v25 = [identifierTable objectForKeyedSubscript:v16];

                    if (v25)
                    {
                      [v25 arrayByAddingObject:v23];
                    }

                    else
                    {
                      v47 = v23;
                      [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
                    }
                    v26 = ;
                    identifierTable2 = [(DEDExtensionIdentifierManager *)v5 identifierTable];
                    [identifierTable2 setObject:v26 forKeyedSubscript:v16];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v37 objects:v48 count:16];
                }

                while (v20);
                v11 = v32;
                v10 = 0;
                v14 = v31;
                v13 = v33;
                v17 = v35;
                v15 = v36;
              }
            }

            else
            {
              v18 = +[DEDExtensionIdentifierManager log];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v50 = "[DEDExtensionIdentifierManager initWithJSONString:]";
                v51 = 2114;
                v52 = v16;
                _os_log_error_impl(&dword_248AD7000, v18, OS_LOG_TYPE_ERROR, "Error in [%{public}s]. could not find array for key [%{public}@]", buf, 0x16u);
              }
            }

            ++v15;
          }

          while (v15 != v13);
          v13 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
        }

        while (v13);
      }
    }

    else
    {
      obj = +[DEDExtensionIdentifierManager log];
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [DEDExtensionIdentifierManager initWithJSONString:];
      }
    }
  }

  return v5;
}

- (DEDExtensionIdentifierManager)init
{
  v6.receiver = self;
  v6.super_class = DEDExtensionIdentifierManager;
  v2 = [(DEDExtensionIdentifierManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    identifierTable = v2->_identifierTable;
    v2->_identifierTable = v3;
  }

  return v2;
}

- (void)reset
{
  v3 = +[DEDExtensionIdentifierManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "resetting", v5, 2u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  [(DEDExtensionIdentifierManager *)self setIdentifierTable:v4];
}

- (DEDExtensionIdentifierManager)initWithExtensionIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v26.receiver = self;
  v26.super_class = DEDExtensionIdentifierManager;
  v5 = [(DEDExtensionIdentifierManager *)&v26 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    identifierTable = v5->_identifierTable;
    v5->_identifierTable = v6;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = identifiersCopy;
    v8 = identifiersCopy;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          identifierTable = [(DEDExtensionIdentifierManager *)v5 identifierTable];
          extensionIdentifier = [v13 extensionIdentifier];
          v16 = [identifierTable objectForKey:extensionIdentifier];
          v17 = [v16 mutableCopy];

          if (!v17)
          {
            v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
          }

          [v17 addObject:v13];
          identifierTable2 = [(DEDExtensionIdentifierManager *)v5 identifierTable];
          extensionIdentifier2 = [v13 extensionIdentifier];
          [identifierTable2 setObject:v17 forKey:extensionIdentifier2];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    identifiersCopy = v21;
  }

  return v5;
}

- (id)identifierForExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierTable = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(identifierTable);
  identifierTable2 = [(DEDExtensionIdentifierManager *)self identifierTable];
  v7 = [identifierTable2 objectForKey:identifierCopy];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  }

  lastObject = [v8 lastObject];
  v10 = lastObject;
  if (lastObject)
  {
    v11 = [lastObject invocationNumber] + 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [[DEDExtensionIdentifier alloc] initWithExtensionIdentifier:identifierCopy invocationNumber:v11];
  [v8 addObject:v12];
  identifierTable3 = [(DEDExtensionIdentifierManager *)self identifierTable];
  [identifierTable3 setObject:v8 forKey:identifierCopy];

  objc_sync_exit(identifierTable);

  return v12;
}

- (id)knownIdentifiersForExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierTable = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(identifierTable);
  identifierTable2 = [(DEDExtensionIdentifierManager *)self identifierTable];
  v7 = [identifierTable2 objectForKey:identifierCopy];

  if (v7)
  {
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(identifierTable);

  return v8;
}

- (void)revokeIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  identifierTable = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(identifierTable);
  identifierTable2 = [(DEDExtensionIdentifierManager *)self identifierTable];
  extensionIdentifier = [identifierCopy extensionIdentifier];
  v8 = [identifierTable2 objectForKey:extensionIdentifier];
  v9 = [v8 mutableCopy];

  [v9 removeObject:identifierCopy];
  if (v9)
  {
    identifierTable3 = [(DEDExtensionIdentifierManager *)self identifierTable];
    extensionIdentifier2 = [identifierCopy extensionIdentifier];
    [identifierTable3 setObject:v9 forKey:extensionIdentifier2];
  }

  else
  {
    v12 = +[DEDExtensionIdentifierManager log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      extensionIdentifier3 = [identifierCopy extensionIdentifier];
      v14 = 138543362;
      v15 = extensionIdentifier3;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_INFO, "no identifier table found for DE identifier [%{public}@]", &v14, 0xCu);
    }
  }

  objc_sync_exit(identifierTable);
}

- (id)allIdentifiers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  identifierTable = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(identifierTable);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  identifierTable2 = [(DEDExtensionIdentifierManager *)self identifierTable];
  allValues = [identifierTable2 allValues];

  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [v3 addObjectsFromArray:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(identifierTable);

  return v3;
}

- (BOOL)isKnownIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierTable = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(identifierTable);
  identifierTable2 = [(DEDExtensionIdentifierManager *)self identifierTable];
  extensionIdentifier = [identifierCopy extensionIdentifier];
  v8 = [identifierTable2 objectForKey:extensionIdentifier];

  if (v8)
  {
    LOBYTE(identifierTable2) = [v8 containsObject:identifierCopy];
  }

  objc_sync_exit(identifierTable);
  return (v8 != 0) & identifierTable2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifierTable = [(DEDExtensionIdentifierManager *)self identifierTable];
  [coderCopy encodeObject:identifierTable forKey:@"identifierTable"];
}

- (DEDExtensionIdentifierManager)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DEDExtensionIdentifierManager;
  v5 = [(DEDExtensionIdentifierManager *)&v13 init];
  if (v5)
  {
    archivedClasses = [objc_opt_class() archivedClasses];
    v7 = [coderCopy decodeObjectOfClasses:archivedClasses forKey:@"identifierTable"];
    identifierTable = v5->_identifierTable;
    v5->_identifierTable = v7;

    v9 = v5->_identifierTable;
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    }

    v11 = v5->_identifierTable;
    v5->_identifierTable = v10;
  }

  return v5;
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
}

+ (id)log
{
  if (log_onceToken_1 != -1)
  {
    +[DEDExtensionIdentifierManager log];
  }

  v3 = log_log_1;

  return v3;
}

void __36__DEDExtensionIdentifierManager_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-identifier-manager");
  v1 = log_log_1;
  log_log_1 = v0;
}

- (void)JSONRepresentation
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [self debugDescription];
  v5[0] = 136446466;
  OUTLINED_FUNCTION_0_5();
  v6 = v4;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Error in [%{public}s] [%{public}@]", v5, 0x16u);
}

- (void)initWithJSONString:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_0_5();
  v2 = @"identifierTable";
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Error in [%{public}s]. did not find [%{public}@]", v1, 0x16u);
}

- (void)initWithJSONString:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 debugDescription];
  v8[0] = 136446722;
  OUTLINED_FUNCTION_0_5();
  v9 = v6;
  v10 = v7;
  v11 = a2;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "Error in [%{public}s] [%{public}@] from JSON [%{public}@]", v8, 0x20u);
}

@end