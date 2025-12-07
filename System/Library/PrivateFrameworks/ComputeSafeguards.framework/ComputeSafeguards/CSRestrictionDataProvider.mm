@interface CSRestrictionDataProvider
- (BOOL)_isAKnownScenario:(id)scenario;
- (CSRestrictionDataProvider)init;
- (id)_bandRestrictionsSetForThreshold:(int)threshold withErrors:(id)errors;
- (id)_buildScenariosMap;
- (id)_processesPoliciesDictWithErrors:(id)errors;
- (id)_processesSetWithErrors:(id)errors;
- (id)_scenariosDictWithErrors:(id)errors;
- (id)_templatesByScenarioForProcess:(id)process errors:(id)errors;
- (id)configureRestrictionsFromTemplateDictionary:(id)dictionary errors:(id)errors;
- (void)_templatesByProcessWithErrors:(id)errors;
- (void)loadAllRestrictionsData;
@end

@implementation CSRestrictionDataProvider

- (CSRestrictionDataProvider)init
{
  v6.receiver = self;
  v6.super_class = CSRestrictionDataProvider;
  v2 = [(CSRestrictionDataProvider *)&v6 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSRestrictionDataProvider"];
    logger = v2->_logger;
    v2->_logger = v3;

    [(CSRestrictionDataProvider *)v2 loadAllRestrictionsData];
  }

  return v2;
}

- (void)loadAllRestrictionsData
{
  array = [MEMORY[0x277CBEB18] array];
  [(CSRestrictionDataProvider *)self _templatesByProcessWithErrors:array];
}

- (id)_processesSetWithErrors:(id)errors
{
  v28[1] = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Loading processes.plist", &v22, 2u);
  }

  v6 = getCSProcesses();
  v7 = v6;
  if (v6)
  {
    v8 = CSArrayForKey(v6, @"processes");
    if (v8)
    {
      v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
      if (v9)
      {
        v10 = v9;
        goto LABEL_18;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
      {
        [CSRestrictionDataProvider _processesSetWithErrors:];
      }

      v14 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA470];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create processes set from plist"];
      v28[0] = v15;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v28;
      v18 = &v27;
    }

    else
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
      {
        [CSRestrictionDataProvider _processesSetWithErrors:];
      }

      v14 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA470];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Processes array missing"];
      v26 = v15;
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v26;
      v18 = &v25;
    }

    v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    v20 = [v14 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v19];

    [errorsCopy addObject:v20];
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _processesSetWithErrors:];
    }

    v11 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA470];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Processes plist failure"];
    v24 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v8 = [v11 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v13];

    [errorsCopy addObject:v8];
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (id)_processesPoliciesDictWithErrors:(id)errors
{
  v21[1] = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Loading process_policies.plist", &v17, 2u);
  }

  v6 = getCSProcessPolicies();
  v7 = v6;
  if (v6)
  {
    v8 = CSDictionaryForKey(v6, @"process_policies");
    if (v8)
    {
      goto LABEL_12;
    }

    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _processesPoliciesDictWithErrors:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA470];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process Policies dictionary missing"];
    v21[0] = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v21;
    v13 = &v20;
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _processesPoliciesDictWithErrors:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exempt Processes plist failure"];
    v19 = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v19;
    v13 = &v18;
  }

  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  v15 = [v9 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v14];

  [errorsCopy addObject:v15];
  v8 = 0;
LABEL_12:

  return v8;
}

- (id)_bandRestrictionsSetForThreshold:(int)threshold withErrors:(id)errors
{
  v4 = *&threshold;
  v53 = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v52 = v4;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Loading bands_restrictions.plist for Band%d", buf, 8u);
  }

  v8 = getCSBandsRestrictions();
  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _bandRestrictionsSetForThreshold:withErrors:];
    }

    v11 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA470];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find band_restrictions plist"];
    v46 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v14 = [v11 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v13];

    [errorsCopy addObject:v14];
    goto LABEL_23;
  }

  if (v4 == 95)
  {
    v10 = @"Band95";
  }

  else
  {
    if (v4 != 80)
    {
      v18 = self->_logger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(CSRestrictionDataProvider *)v4 _bandRestrictionsSetForThreshold:v18 withErrors:v19, v20, v21, v22, v23, v24];
      }

      goto LABEL_16;
    }

    v10 = @"Band80";
  }

  v15 = CSArrayForKey(v8, v10);
  if (v15)
  {
    v14 = v15;
    v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
    if (v16)
    {
      v17 = v16;
      goto LABEL_24;
    }

    v36 = self->_logger;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      [(CSRestrictionDataProvider *)v4 _bandRestrictionsSetForThreshold:v36 withErrors:v37, v38, v39, v40, v41, v42];
    }

    v43 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA470];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create band (%d) process set from plist", v4];
    v50 = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v35 = [v43 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v34];
    goto LABEL_22;
  }

LABEL_16:
  v25 = self->_logger;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    [(CSRestrictionDataProvider *)v4 _bandRestrictionsSetForThreshold:v25 withErrors:v26, v27, v28, v29, v30, v31];
  }

  v32 = MEMORY[0x277CCA9B8];
  v47 = *MEMORY[0x277CCA470];
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Band 9%d Processes array missing"], v4);
  v48 = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v35 = [v32 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v34];
  v14 = 0;
LABEL_22:

  [errorsCopy addObject:v35];
LABEL_23:
  v17 = 0;
LABEL_24:

  return v17;
}

- (BOOL)_isAKnownScenario:(id)scenario
{
  v3 = [(NSDictionary *)self->_scenarios objectForKey:scenario];
  v4 = v3 != 0;

  return v4;
}

- (id)_buildScenariosMap
{
  v15 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_scenarios;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [dictionary setObject:*(*(&v10 + 1) + 8 * i) forKeyedSubscript:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (id)_scenariosDictWithErrors:(id)errors
{
  v21[1] = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Loading scenarios.plist", &v17, 2u);
  }

  v6 = getCSScenarios();
  v7 = v6;
  if (v6)
  {
    v8 = CSDictionaryForKey(v6, @"scenarios");
    if (v8)
    {
      goto LABEL_12;
    }

    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _scenariosDictWithErrors:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA470];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Scenarios dictionary missing"];
    v21[0] = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v21;
    v13 = &v20;
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _scenariosDictWithErrors:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Scenarios plist failure"];
    v19 = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v19;
    v13 = &v18;
  }

  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  v15 = [v9 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v14];

  [errorsCopy addObject:v15];
  v8 = 0;
LABEL_12:

  return v8;
}

- (id)configureRestrictionsFromTemplateDictionary:(id)dictionary errors:(id)errors
{
  v58 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  errorsCopy = errors;
  v32 = objc_alloc_init(CSScenarioRestrictionsAttributesTemplate);
  array = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = dictionaryCopy;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    v36 = *MEMORY[0x277CCA470];
    selfCopy = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectForKey:@"RestrictionType"];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [CSRestrictionFactory restrictionForClass:v13 withProperties:v12 errors:errorsCopy];
              if (v14)
              {
                v15 = array;
                goto LABEL_21;
              }

              logger = self->_logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v50 = v12;
                _os_log_fault_impl(&dword_243DC3000, logger, OS_LOG_TYPE_FAULT, "Could not create restriction with properties: %@", buf, 0xCu);
              }

              v26 = MEMORY[0x277CCA9B8];
              v47 = v36;
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create restriction with properties: %@.", v12];
              v48 = v27;
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
              v29 = [v26 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:3 userInfo:v28];

              [errorsCopy addObject:v29];
              self = selfCopy;
LABEL_22:

              goto LABEL_23;
            }

            if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
            {
              [CSRestrictionDataProvider configureRestrictionsFromTemplateDictionary:v38 errors:?];
            }

            v24 = MEMORY[0x277CCA9B8];
            v51 = v36;
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected string value type for key RestrictionType."];
            v52 = v20;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
            v22 = v24;
            v23 = 2;
          }

          else
          {
            if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
            {
              [CSRestrictionDataProvider configureRestrictionsFromTemplateDictionary:v40 errors:?];
            }

            v19 = MEMORY[0x277CCA9B8];
            v53 = v36;
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"RestrictionType not found in ScenarioDescription dictionary."];
            v54 = v20;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
            v22 = v19;
            v23 = 1;
          }

          v14 = [v22 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:v23 userInfo:v21];

          v15 = errorsCopy;
LABEL_21:
          [v15 addObject:v14];
          goto LABEL_22;
        }

        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
        {
          [CSRestrictionDataProvider configureRestrictionsFromTemplateDictionary:v42 errors:?];
        }

        v16 = MEMORY[0x277CCA9B8];
        v55 = v36;
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ScenarioDescription is not a dictionary."];
        v56 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v13 = [v16 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:2 userInfo:v18];

        [errorsCopy addObject:v13];
LABEL_23:

        ++v11;
      }

      while (v9 != v11);
      v30 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
      v9 = v30;
    }

    while (v30);
  }

  [(CSScenarioRestrictionsAttributesTemplate *)v32 setRestrictions:array];

  return v32;
}

- (id)_templatesByScenarioForProcess:(id)process errors:(id)errors
{
  v78 = *MEMORY[0x277D85DE8];
  processCopy = process;
  errorsCopy = errors;
  [MEMORY[0x277CBEB38] dictionary];
  v54 = v53 = processCopy;
  v8 = getCSProcessRestrictions(processCopy);
  v9 = v8;
  if (v8)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v60 objects:v77 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0x277CCA000uLL;
      v13 = *v61;
      v55 = *MEMORY[0x277CCA470];
      v49 = *v61;
      v50 = v9;
      do
      {
        v14 = 0;
        v51 = v11;
        do
        {
          if (*v61 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v60 + 1) + 8 * v14);
          objc_opt_class();
          v52 = v14;
          if (objc_opt_isKindOfClass())
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v56 objects:v74 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v57;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v57 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v56 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v22 = [(NSDictionary *)self->_scenariosMap objectForKeyedSubscript:v21];
                    logger = self->_logger;
                    if (v22)
                    {
                      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v69 = v22;
                        v70 = 2112;
                        v71 = v53;
                        _os_log_debug_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEBUG, "Reading restrictions for scenario: %@ for process: %@", buf, 0x16u);
                      }

                      v24 = CSArrayForKeyWithErrors(v16, v22, errorsCopy);
                      if (v24)
                      {
                        v25 = [(CSRestrictionDataProvider *)self configureRestrictionsFromTemplateDictionary:v24 errors:errorsCopy];
                        [v54 setObject:v25 forKeyedSubscript:v22];
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543618;
                        v69 = 0;
                        v70 = 2114;
                        v71 = v53;
                        _os_log_error_impl(&dword_243DC3000, logger, OS_LOG_TYPE_ERROR, "Unknown scenario: %{public}@ found in: %{public}@", buf, 0x16u);
                      }

                      v30 = MEMORY[0x277CCA9B8];
                      v66 = v55;
                      v31 = [*(v12 + 3240) stringWithFormat:@"Scenario %@ not known", 0];
                      v67 = v31;
                      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
                      v24 = [v30 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:4 userInfo:v32];

                      v12 = 0x277CCA000;
                      [errorsCopy addObject:v24];
                    }
                  }

                  else
                  {
                    v26 = self->_logger;
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      v69 = v53;
                      _os_log_fault_impl(&dword_243DC3000, v26, OS_LOG_TYPE_FAULT, "Expected string value type for scenario name for process: %@", buf, 0xCu);
                    }

                    v27 = MEMORY[0x277CCA9B8];
                    v72 = v55;
                    v28 = [*(v12 + 3240) stringWithFormat:@"Expected string value type for scenario name"];
                    v73 = v28;
                    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
                    v22 = [v27 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:2 userInfo:v29];

                    v12 = 0x277CCA000;
                    [errorsCopy addObject:v22];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v56 objects:v74 count:16];
              }

              while (v18);
              v9 = v50;
              v11 = v51;
              v13 = v49;
            }
          }

          else
          {
            v33 = self->_logger;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v69 = v53;
              _os_log_fault_impl(&dword_243DC3000, v33, OS_LOG_TYPE_FAULT, "Expected dictionary value type for scenario items for process: %@", buf, 0xCu);
            }

            v34 = MEMORY[0x277CCA9B8];
            v75 = v55;
            v35 = [*(v12 + 3240) stringWithFormat:@"Expected dictionary value type for scenario items"];
            v76 = v35;
            v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
            v16 = [v34 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:2 userInfo:v36];

            [errorsCopy addObject:v16];
          }

          v14 = v52 + 1;
        }

        while (v52 + 1 != v11);
        v11 = [v9 countByEnumeratingWithState:&v60 objects:v77 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v37 = self->_logger;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [(CSRestrictionDataProvider *)processCopy _templatesByScenarioForProcess:v37 errors:v38, v39, v40, v41, v42, v43];
    }

    v44 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA470];
    processCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Restrictions plist failure for process: %@", processCopy];
    v65 = processCopy;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v47 = [v44 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v46];

    [errorsCopy addObject:v47];
  }

  return v54;
}

- (void)_templatesByProcessWithErrors:(id)errors
{
  v35 = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Loading Processes, ExemptProcesses, Scenarios and Restrictions", buf, 2u);
  }

  v7 = [(CSRestrictionDataProvider *)self _processesSetWithErrors:errorsCopy];
  processes = self->_processes;
  self->_processes = v7;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:];
  }

  v9 = [(CSRestrictionDataProvider *)self _processesPoliciesDictWithErrors:errorsCopy];
  processPolicies = self->_processPolicies;
  self->_processPolicies = v9;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:];
  }

  v11 = [(CSRestrictionDataProvider *)self _bandRestrictionsSetForThreshold:95 withErrors:errorsCopy];
  band95Processes = self->_band95Processes;
  self->_band95Processes = v11;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:];
  }

  v13 = [(CSRestrictionDataProvider *)self _bandRestrictionsSetForThreshold:80 withErrors:errorsCopy];
  band80Processes = self->_band80Processes;
  self->_band80Processes = v13;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:];
  }

  v15 = [(CSRestrictionDataProvider *)self _scenariosDictWithErrors:errorsCopy];
  scenarios = self->_scenarios;
  self->_scenarios = v15;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:];
  }

  _buildScenariosMap = [(CSRestrictionDataProvider *)self _buildScenariosMap];
  scenariosMap = self->_scenariosMap;
  self->_scenariosMap = _buildScenariosMap;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = self->_processes;
  v20 = [(NSSet *)v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        v25 = [(CSRestrictionDataProvider *)self _templatesByScenarioForProcess:v24 errors:errorsCopy, v29];
        [(NSMutableDictionary *)dictionary setObject:v25 forKeyedSubscript:v24];
      }

      v21 = [(NSSet *)v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v21);
  }

  restrictionsByProcessForScenario = self->_restrictionsByProcessForScenario;
  self->_restrictionsByProcessForScenario = dictionary;
  v27 = dictionary;

  v28 = self->_scenariosMap;
  self->_scenariosMap = 0;
}

- (void)_bandRestrictionsSetForThreshold:(uint64_t)a3 withErrors:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_7_0(&dword_243DC3000, a2, a3, "_bandRestrictionsSetForThreshold: Could not create band (%d) process set from plist", a5, a6, a7, a8, v8);
}

- (void)_bandRestrictionsSetForThreshold:(uint64_t)a3 withErrors:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_7_0(&dword_243DC3000, a2, a3, "_bandRestrictionsSetForThreshold: Unknown threshold of %d", a5, a6, a7, a8, v8);
}

- (void)_bandRestrictionsSetForThreshold:(uint64_t)a3 withErrors:(uint64_t)a4 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_7_0(&dword_243DC3000, a2, a3, "_bandRestrictionsSetForThreshold: Band (%d) Processes array missing", a5, a6, a7, a8, v8);
}

- (void)_templatesByScenarioForProcess:(uint64_t)a3 errors:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, a2, a3, "Restrictions plist failure for process: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_templatesByProcessWithErrors:.cold.1()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v0, v1, "processesSet: %@", v2, v3, v4, v5);
}

- (void)_templatesByProcessWithErrors:.cold.2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v0, v1, "processesPolicies: %@", v2, v3, v4, v5);
}

- (void)_templatesByProcessWithErrors:.cold.3()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v0, v1, "Band95Process: %@", v2, v3, v4, v5);
}

- (void)_templatesByProcessWithErrors:.cold.4()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v0, v1, "Band80Process: %@", v2, v3, v4, v5);
}

- (void)_templatesByProcessWithErrors:.cold.5()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v0, v1, "scenariosSet: %@", v2, v3, v4, v5);
}

@end