@interface SAIntentGroupGetIntentDefinitions(INSExtensionService)
- (uint64_t)_matchesIntentDefinition:()INSExtensionService;
- (void)ins_getIntentDefinitionsWithCompletionHandler:()INSExtensionService;
@end

@implementation SAIntentGroupGetIntentDefinitions(INSExtensionService)

- (uint64_t)_matchesIntentDefinition:()INSExtensionService
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CD38C8];
  v6 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v66 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
    v67 = 2112;
    v68 = v4;
    _os_log_debug_impl(&dword_25553C000, v6, OS_LOG_TYPE_DEBUG, "%s Checking if Intent Definition at %@ matches query", buf, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"INIntents"];
    v10 = v9;
    if (v9)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v11 = v9;
      v46 = [v11 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v46)
      {
        v47 = *v59;
        v43 = v11;
        v44 = v4;
        v41 = v10;
        v42 = v8;
        selfCopy = self;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v59 != v47)
            {
              objc_enumerationMutation(v11);
            }

            v13 = *(*(&v58 + 1) + 8 * i);
            v14 = [v13 objectForKeyedSubscript:@"INIntentEntity"];
            v15 = [v13 objectForKeyedSubscript:@"INIntentVerbAssociations"];
            v16 = v15;
            if (v14)
            {
              v17 = v15 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              v18 = *v5;
              if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v66 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
                v67 = 2112;
                v68 = v4;
                _os_log_debug_impl(&dword_25553C000, v18, OS_LOG_TYPE_DEBUG, "%s Intent Definition at %@ has no entity or verb section", buf, 0x16u);
              }
            }

            else
            {
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              obj = [self queries];
              v19 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
              v48 = v19;
              if (v19)
              {
                v45 = *v55;
                v40 = v16;
                do
                {
                  v20 = 0;
                  v21 = v45;
                  do
                  {
                    if (*v55 != v21)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v22 = *(*(&v54 + 1) + 8 * v20);
                    entity = [v22 entity];
                    v24 = [v14 caseInsensitiveCompare:entity];

                    if (!v24)
                    {
                      v52 = 0u;
                      v53 = 0u;
                      v50 = 0u;
                      v51 = 0u;
                      v25 = v16;
                      v26 = [v25 countByEnumeratingWithState:&v50 objects:v62 count:16];
                      if (v26)
                      {
                        v27 = v26;
                        v28 = *v51;
                        while (2)
                        {
                          for (j = 0; j != v27; ++j)
                          {
                            if (*v51 != v28)
                            {
                              objc_enumerationMutation(v25);
                            }

                            v30 = *(*(&v50 + 1) + 8 * j);
                            verb = [v22 verb];
                            v32 = [v30 caseInsensitiveCompare:verb];

                            if (!v32)
                            {
                              v36 = *MEMORY[0x277CD38C8];
                              v4 = v44;
                              if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 136315394;
                                v66 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
                                v67 = 2112;
                                v68 = v44;
                                _os_log_debug_impl(&dword_25553C000, v36, OS_LOG_TYPE_DEBUG, "%s Intent Definition at %@ matches current request", buf, 0x16u);
                              }

                              v35 = 1;
                              v10 = v41;
                              v8 = v42;
                              goto LABEL_47;
                            }
                          }

                          v27 = [v25 countByEnumeratingWithState:&v50 objects:v62 count:16];
                          if (v27)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v16 = v40;
                      v21 = v45;
                    }

                    ++v20;
                  }

                  while (v20 != v48);
                  v33 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
                  v11 = v43;
                  v4 = v44;
                  self = selfCopy;
                  v5 = MEMORY[0x277CD38C8];
                  v48 = v33;
                }

                while (v33);
              }
            }
          }

          v10 = v41;
          v8 = v42;
          v46 = [v11 countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v46);
      }

      v34 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v66 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
        v67 = 2112;
        v68 = v4;
        _os_log_debug_impl(&dword_25553C000, v34, OS_LOG_TYPE_DEBUG, "%s Intent Definition at %@ does not match", buf, 0x16u);
      }
    }

    else
    {
      v37 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v66 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) _matchesIntentDefinition:]";
        v67 = 2112;
        v68 = v4;
        _os_log_impl(&dword_25553C000, v37, OS_LOG_TYPE_INFO, "%s Intent Definition at %@ has no INIntents section", buf, 0x16u);
      }
    }

    v35 = 0;
LABEL_47:
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (void)ins_getIntentDefinitionsWithCompletionHandler:()INSExtensionService
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v4 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
  {
    v22 = v4;
    queries = [self queries];
    *buf = 136315394;
    v33 = "[SAIntentGroupGetIntentDefinitions(INSExtensionService) ins_getIntentDefinitionsWithCompletionHandler:]";
    v34 = 2112;
    v35 = queries;
    _os_log_debug_impl(&dword_25553C000, v22, OS_LOG_TYPE_DEBUG, "%s Finding intent definitions for GetIntentDefinition query: %@", buf, 0x16u);
  }

  v5 = INIntentDefinitionURLsForInstalledApps();
  v6 = objc_alloc_init(MEMORY[0x277D473C8]);
  aceId = [self aceId];
  v24 = v6;
  [v6 setRefId:aceId];

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if ([self _matchesIntentDefinition:v14])
        {
          v15 = objc_alloc(MEMORY[0x277CBEA90]);
          v26 = 0;
          v16 = [v15 initWithContentsOfURL:v14 options:1 error:&v26];
          v17 = v26;
          if (v17)
          {
            v21 = v17;
            v20 = v25;
            (*(v25 + 2))(v25, 0, v17);

            v19 = v24;
            goto LABEL_15;
          }

          v18 = objc_alloc_init(MEMORY[0x277D473E0]);
          [v18 setIntentDefinition:v16];
          [v8 addObject:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = v6;
  [v6 setIntentDefinitionInfos:v8];
  v20 = v25;
  (*(v25 + 2))(v25, v24, 0);
LABEL_15:
}

@end