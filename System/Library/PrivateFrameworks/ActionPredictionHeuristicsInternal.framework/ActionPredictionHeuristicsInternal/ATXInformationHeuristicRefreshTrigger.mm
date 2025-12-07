@interface ATXInformationHeuristicRefreshTrigger
- (ATXInformationHeuristicRefreshTrigger)init;
- (ATXInformationHeuristicRefreshTrigger)initWithCoder:(id)coder;
- (ATXInformationHeuristicRefreshTriggerDelegate)delegate;
- (NSSet)registeredHeuristics;
- (id)_safeDecodeObjectOfClass:(Class)class forKey:(id)key withCoder:(id)coder nonNull:(BOOL)null;
- (id)_safeDecodeObjectOfClasses:(id)classes forKey:(id)key withCoder:(id)coder nonNull:(BOOL)null;
- (void)dealloc;
- (void)startTriggeringRefreshForHeuristicIfNotAlready:(id)already;
- (void)stopTriggeringRefreshForAllHeuristics;
- (void)stopTriggeringRefreshForHeuristicIfAlready:(id)already;
@end

@implementation ATXInformationHeuristicRefreshTrigger

- (NSSet)registeredHeuristics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_registeredHeuristics copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (ATXInformationHeuristicRefreshTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ATXInformationHeuristicRefreshTrigger)init
{
  v6.receiver = self;
  v6.super_class = ATXInformationHeuristicRefreshTrigger;
  v2 = [(ATXInformationHeuristicRefreshTrigger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registeredHeuristics = v2->_registeredHeuristics;
    v2->_registeredHeuristics = v3;
  }

  return v2;
}

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ATXInformationHeuristicRefreshTrigger *)selfCopy _stop];
  objc_sync_exit(selfCopy);

  v3.receiver = selfCopy;
  v3.super_class = ATXInformationHeuristicRefreshTrigger;
  [(ATXInformationHeuristicRefreshTrigger *)&v3 dealloc];
}

- (void)startTriggeringRefreshForHeuristicIfNotAlready:(id)already
{
  alreadyCopy = already;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_registeredHeuristics addObject:alreadyCopy];
  [(ATXInformationHeuristicRefreshTrigger *)selfCopy _start];
  objc_sync_exit(selfCopy);
}

- (void)stopTriggeringRefreshForHeuristicIfAlready:(id)already
{
  alreadyCopy = already;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_registeredHeuristics removeObject:alreadyCopy];
  if (![(NSMutableSet *)selfCopy->_registeredHeuristics count])
  {
    [(ATXInformationHeuristicRefreshTrigger *)selfCopy _stop];
  }

  objc_sync_exit(selfCopy);
}

- (void)stopTriggeringRefreshForAllHeuristics
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableSet *)obj->_registeredHeuristics removeAllObjects];
  [(ATXInformationHeuristicRefreshTrigger *)obj _stop];
  objc_sync_exit(obj);
}

- (ATXInformationHeuristicRefreshTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ATXInformationHeuristicRefreshTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v14 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClasses:v8 forKey:@"registeredHeuristics" withCoder:coderCopy nonNull:1];

  if (v9)
  {
    error = [coderCopy error];

    if (!error)
    {
      registeredHeuristics = v5->_registeredHeuristics;
      v5->_registeredHeuristics = v9;

LABEL_6:
      v11 = v5;
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_7:

  return v11;
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
    v19 = [v16 initWithDomain:@"ATXInformationHeuristicRefreshTrigger" code:-1 userInfo:v18];
    [coderCopy failWithError:v19];

    v15 = __atxlog_handle_gi(v20);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
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
        [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
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

      v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXInformationHeuristicRefreshTrigger" code:-1 userInfo:v26];
      v27 = __atxlog_handle_gi([coderCopy failWithError:v15]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
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
    v21 = [v18 initWithDomain:@"ATXInformationHeuristicRefreshTrigger" code:-1 userInfo:v20];
    [coderCopy failWithError:v21];

    v13 = __atxlog_handle_gi(v22);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
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
        [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
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

      v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXInformationHeuristicRefreshTrigger" code:-1 userInfo:v30];
      v31 = __atxlog_handle_gi([coderCopy failWithError:v13]);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
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
  OUTLINED_FUNCTION_1_2(&dword_23E3EA000, v3, v4, "ATXInformationHeuristicRefreshTrigger: error decoding %@ - %@", v5, v6, v7, v8);
}

@end