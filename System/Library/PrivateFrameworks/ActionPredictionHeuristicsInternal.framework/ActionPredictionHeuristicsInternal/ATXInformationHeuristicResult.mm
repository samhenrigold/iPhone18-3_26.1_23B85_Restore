@interface ATXInformationHeuristicResult
- (ATXInformationHeuristicResult)initWithCoder:(id)coder;
- (ATXInformationHeuristicResult)initWithHeuristicName:(id)name suggestions:(id)suggestions refreshTriggers:(id)triggers hasFailed:(BOOL)failed;
- (id)_safeDecodeObjectOfClass:(Class)class forKey:(id)key withCoder:(id)coder nonNull:(BOOL)null;
- (id)_safeDecodeObjectOfClasses:(id)classes forKey:(id)key withCoder:(id)coder nonNull:(BOOL)null;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInformationHeuristicResult

- (ATXInformationHeuristicResult)initWithHeuristicName:(id)name suggestions:(id)suggestions refreshTriggers:(id)triggers hasFailed:(BOOL)failed
{
  nameCopy = name;
  suggestionsCopy = suggestions;
  triggersCopy = triggers;
  v17.receiver = self;
  v17.super_class = ATXInformationHeuristicResult;
  v14 = [(ATXInformationHeuristicResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_heuristicName, name);
    objc_storeStrong(&v15->_suggestions, suggestions);
    objc_storeStrong(&v15->_refreshTriggers, triggers);
    v15->_hasFailed = failed;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  heuristicName = self->_heuristicName;
  coderCopy = coder;
  [coderCopy encodeObject:heuristicName forKey:@"heuristicName"];
  [coderCopy encodeObject:self->_suggestions forKey:@"suggestions"];
  [coderCopy encodeObject:self->_refreshTriggers forKey:@"refreshTriggers"];
  [coderCopy encodeBool:self->_hasFailed forKey:@"hasFailed"];
}

- (ATXInformationHeuristicResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = ATXInformationHeuristicResult;
  v5 = [(ATXInformationHeuristicResult *)&v23 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(ATXInformationHeuristicResult *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"heuristicName" withCoder:coderCopy nonNull:1];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [(ATXInformationHeuristicResult *)v5 _safeDecodeObjectOfClasses:v9 forKey:@"suggestions" withCoder:coderCopy nonNull:1];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [(ATXInformationHeuristicResult *)v5 _safeDecodeObjectOfClasses:v13 forKey:@"refreshTriggers" withCoder:coderCopy nonNull:1];

  if (v6)
  {
    if (v10)
    {
      if (v14)
      {
        error = [coderCopy error];

        if (!error)
        {
          heuristicName = v5->_heuristicName;
          v5->_heuristicName = v6;
          v18 = v6;

          suggestions = v5->_suggestions;
          v5->_suggestions = v10;
          v20 = v10;

          refreshTriggers = v5->_refreshTriggers;
          v5->_refreshTriggers = v14;

          v5->_hasFailed = [coderCopy decodeBoolForKey:@"hasFailed"];
LABEL_8:
          v16 = v5;
          goto LABEL_9;
        }
      }
    }
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (id)_safeDecodeObjectOfClass:(Class)class forKey:(id)key withCoder:(id)coder nonNull:(BOOL)null
{
  nullCopy = null;
  v33[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  v11 = [coderCopy decodeObjectOfClass:class forKey:keyCopy];
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
LABEL_3:
      v12 = v11;
      goto LABEL_10;
    }

    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ maps to unexpected class", keyCopy, *MEMORY[0x277CCA450]];
    v29 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v19 = [v16 initWithDomain:@"ATXInformationHeuristicResult" code:-1 userInfo:v18];
    [coderCopy failWithError:v19];

    v15 = __atxlog_handle_gi(v20);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristicResult _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
    }
  }

  else
  {
    error = [coderCopy error];

    if (error)
    {
      v15 = __atxlog_handle_gi(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicResult _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
      }
    }

    else
    {
      if (!nullCopy)
      {
        goto LABEL_3;
      }

      if ([coderCopy containsValueForKey:keyCopy])
      {
        v32 = *MEMORY[0x277CCA450];
        keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"archive contains illegal nil value for key %@", keyCopy];
        v33[0] = keyCopy;
        v23 = MEMORY[0x277CBEAC0];
        v24 = v33;
        v25 = &v32;
      }

      else
      {
        v30 = *MEMORY[0x277CCA450];
        keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ not present", keyCopy];
        v31 = keyCopy;
        v23 = MEMORY[0x277CBEAC0];
        v24 = &v31;
        v25 = &v30;
      }

      v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];

      v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXInformationHeuristicResult" code:-1 userInfo:v26];
      v27 = __atxlog_handle_gi([coderCopy failWithError:v15]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicResult _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
      }
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)_safeDecodeObjectOfClasses:(id)classes forKey:(id)key withCoder:(id)coder nonNull:(BOOL)null
{
  nullCopy = null;
  v43[1] = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  keyCopy = key;
  coderCopy = coder;
  v12 = [coderCopy decodeObjectOfClasses:classesCopy forKey:keyCopy];
  if (v12)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = classesCopy;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (objc_opt_isKindOfClass())
          {
            v23 = v12;
            goto LABEL_25;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v37 = *MEMORY[0x277CCA450];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ maps to unexpected class", keyCopy];
    v38 = keyCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v21 = [v18 initWithDomain:@"ATXInformationHeuristicResult" code:-1 userInfo:v20];
    [coderCopy failWithError:v21];

    v13 = __atxlog_handle_gi(v22);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristicResult _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
    }
  }

  else
  {
    error = [coderCopy error];

    if (error)
    {
      v13 = __atxlog_handle_gi(v25);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicResult _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
      }
    }

    else
    {
      if (!nullCopy)
      {
        v23 = 0;
        goto LABEL_26;
      }

      if ([coderCopy containsValueForKey:keyCopy])
      {
        v42 = *MEMORY[0x277CCA450];
        keyCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"archive contains illegal nil value for key %@", keyCopy];
        v43[0] = keyCopy2;
        v27 = MEMORY[0x277CBEAC0];
        v28 = v43;
        v29 = &v42;
      }

      else
      {
        v40 = *MEMORY[0x277CCA450];
        keyCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ not present", keyCopy];
        v41 = keyCopy2;
        v27 = MEMORY[0x277CBEAC0];
        v28 = &v41;
        v29 = &v40;
      }

      v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];

      v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXInformationHeuristicResult" code:-1 userInfo:v30];
      v31 = __atxlog_handle_gi([coderCopy failWithError:v13]);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicResult _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
      }
    }
  }

  v23 = 0;
LABEL_25:

LABEL_26:

  return v23;
}

- (void)_safeDecodeObjectOfClass:forKey:withCoder:nonNull:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = [OUTLINED_FUNCTION_2(v0 v1)];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_23E3EA000, v3, v4, "ATXInformationHeuristicResult: error decoding %@ - %@", v5, v6, v7, v8);
}

@end