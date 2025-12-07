@interface PGMemoryConfiguration
+ (id)featuredTimePeriodMemoryConfigurationFromDictionary:(id)dictionary;
+ (id)memoryCategorySubcategoryByOverTimeTypeFromLabels:(id)labels;
+ (id)memoryConfigurationsWithGraph:(id)graph loggingConnection:(id)connection;
+ (id)memoryFeatureSpecificationsFromDictionaries:(id)dictionaries memoryConfigurationLabel:(id)label graph:(id)graph loggingConnection:(id)connection;
+ (id)memoryMomentRequirementsFromDictionary:(id)dictionary;
+ (id)overTheYearsMemoryConfigurationFromDictionary:(id)dictionary;
+ (id)resolveConfigurationDictionary:(id)dictionary configurationLabel:(id)label graph:(id)graph loggingConnection:(id)connection;
+ (unint64_t)memoryCategoryFromMemoryCategoryLabel:(id)label;
+ (unint64_t)minimumSceneAnalysisVersionForSignalModel:(int64_t)model;
@end

@implementation PGMemoryConfiguration

+ (unint64_t)minimumSceneAnalysisVersionForSignalModel:(int64_t)model
{
  if (model == 1)
  {
    v3 = 0x277D3CAD8;
    return [*v3 latestVersion];
  }

  if (model == 2)
  {
    v3 = 0x277D3CAB0;
    return [*v3 latestVersion];
  }

  return 0;
}

+ (id)featuredTimePeriodMemoryConfigurationFromDictionary:(id)dictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:dictionaryCopy];

  v5 = [PGFeaturedTimePeriodMemoryConfigurationBuilder alloc];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(PGConfiguration *)v5 initWithSources:v6 version:1.0];

  featuredTimePeriodMemoryConfiguration = [(PGFeaturedTimePeriodMemoryConfigurationBuilder *)v7 featuredTimePeriodMemoryConfiguration];

  return featuredTimePeriodMemoryConfiguration;
}

+ (id)overTheYearsMemoryConfigurationFromDictionary:(id)dictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:dictionaryCopy];

  v5 = [PGOverTheYearsMemoryConfigurationBuilder alloc];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(PGConfiguration *)v5 initWithSources:v6 version:1.0];

  overTheYearsMemoryConfiguration = [(PGOverTheYearsMemoryConfigurationBuilder *)v7 overTheYearsMemoryConfiguration];

  return overTheYearsMemoryConfiguration;
}

+ (id)memoryMomentRequirementsFromDictionary:(id)dictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:dictionaryCopy];

  v5 = [PGMemoryMomentRequirementsBuilder alloc];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(PGConfiguration *)v5 initWithSources:v6 version:1.0];

  memoryMomentRequirements = [(PGMemoryMomentRequirementsBuilder *)v7 memoryMomentRequirements];

  return memoryMomentRequirements;
}

+ (id)memoryFeatureSpecificationsFromDictionaries:(id)dictionaries memoryConfigurationLabel:(id)label graph:(id)graph loggingConnection:(id)connection
{
  v47 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  labelCopy = label;
  graphCopy = graph;
  connectionCopy = connection;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = dictionariesCopy;
  v14 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v14)
  {
    v16 = v14;
    v37 = *v41;
    v36 = *MEMORY[0x277D3C848];
    v17 = *MEMORY[0x277D3C838];
    v35 = *MEMORY[0x277D3C8A0];
    *&v15 = 138412290;
    v31 = v15;
    v32 = labelCopy;
    obj = v13;
    log = connectionCopy;
    v34 = v12;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v41 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v40 + 1) + 8 * v18);
      v20 = [v19 objectForKeyedSubscript:{v36, v31}];
      v21 = [v19 objectForKeyedSubscript:v17];
      v22 = v21;
      if (!v20)
      {
        break;
      }

      if (!v21)
      {
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = v31;
          v45 = v32;
          _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Missing required memoryFeature property combineFeatureNodes for memoryConfiguration %@", buf, 0xCu);
        }

LABEL_24:

LABEL_25:
        v13 = obj;

        v29 = 0;
        labelCopy = v32;
        connectionCopy = log;
        v12 = v34;
        goto LABEL_26;
      }

      integerValue = [v20 integerValue];
      bOOLValue = [v22 BOOLValue];
      v25 = [v19 objectForKeyedSubscript:v35];
      if (v25)
      {
        v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v25];
      }

      else
      {
        v26 = 0;
      }

      v27 = [[PGMemoryFeatureSpecification alloc] initWithFeatureType:integerValue typeSpecificIdentifiers:v26 combineFeatureNodes:bOOLValue graph:graphCopy loggingConnection:log];
      featureNodes = [(PGMemoryFeatureSpecification *)v27 featureNodes];

      if (featureNodes)
      {
        [v34 addObject:v27];
      }

      else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = v31;
        v45 = v32;
        _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] nil featureNodes for memoryConfiguration %@", buf, 0xCu);
      }

      if (!featureNodes)
      {
        goto LABEL_25;
      }

      if (v16 == ++v18)
      {
        v13 = obj;
        v16 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
        labelCopy = v32;
        connectionCopy = log;
        v12 = v34;
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = v31;
      v45 = v32;
      _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Missing required memoryFeature property featureType for memoryConfiguration %@", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_24;
  }

LABEL_18:

  v29 = v12;
LABEL_26:

  return v29;
}

+ (id)memoryCategorySubcategoryByOverTimeTypeFromLabels:(id)labels
{
  v3 = MEMORY[0x277CBEB38];
  labelsCopy = labels;
  v5 = objc_alloc_init(v3);
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__PGMemoryConfiguration_memoryCategorySubcategoryByOverTimeTypeFromLabels___block_invoke;
  v8[3] = &unk_2788802C8;
  v10 = PGIsAppleInternal_isAppleInternal;
  v6 = v5;
  v9 = v6;
  [labelsCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __75__PGMemoryConfiguration_memoryCategorySubcategoryByOverTimeTypeFromLabels___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = PGMemoryCategorySubcategoryForLabel(a3);
  if (!v6)
  {
    if (*(a1 + 40))
    {
      v6 = 17001;
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

+ (unint64_t)memoryCategoryFromMemoryCategoryLabel:(id)label
{
  labelCopy = label;
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  v4 = PGIsAppleInternal_isAppleInternal;
  v5 = [PGGraphBuilder memoryCategoryForLabel:labelCopy];

  if (((v5 == 0) & v4) != 0)
  {
    return 100;
  }

  else
  {
    return v5;
  }
}

+ (id)resolveConfigurationDictionary:(id)dictionary configurationLabel:(id)label graph:(id)graph loggingConnection:(id)connection
{
  v55 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  labelCopy = label;
  graphCopy = graph;
  connectionCopy = connection;
  v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:dictionaryCopy];
  v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3C868]];
  if (v15)
  {
    v16 = [self memoryCategoryFromMemoryCategoryLabel:v15];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
    [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3C860]];

    v18 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3C878]];
    if (v18)
    {
      v51 = [self memoryCategorySubcategoryByOverTimeTypeFromLabels:v18];
      [v14 setObject:? forKeyedSubscript:?];
      v19 = *MEMORY[0x277D3C880];
      v20 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3C880]];
      v52 = v20;
      if (v20)
      {
        v21 = [self memoryFeatureSpecificationsFromDictionaries:v20 memoryConfigurationLabel:labelCopy graph:graphCopy loggingConnection:connectionCopy];
        v50 = v21;
        if (v21)
        {
          [v14 setObject:v21 forKeyedSubscript:v19];
          v22 = *MEMORY[0x277D3C888];
          v23 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3C888]];
          v49 = v23;
          if (v23)
          {
            v24 = [self memoryMomentRequirementsFromDictionary:v23];
            v48 = v24;
            if (v24)
            {
              [v14 setObject:v24 forKeyedSubscript:v22];
              v25 = *MEMORY[0x277D3C898];
              v26 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3C898]];
              v47 = v26;
              if (v26)
              {
                v27 = [self overTheYearsMemoryConfigurationFromDictionary:v26];
                v46 = v27;
                if (v27)
                {
                  [v14 setObject:v27 forKeyedSubscript:v25];
                  v28 = *MEMORY[0x277D3C858];
                  v29 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3C858]];
                  v45 = v29;
                  if (v29)
                  {
                    v30 = [self featuredTimePeriodMemoryConfigurationFromDictionary:v29];
                    v44 = v30;
                    if (v30)
                    {
                      [v14 setObject:v30 forKeyedSubscript:v28];
                      v31 = *MEMORY[0x277D3C850];
                      v32 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3C850]];
                      v43 = v32;
                      if (v32)
                      {
                        v33 = [self featuredTimePeriodMemoryConfigurationFromDictionary:v32];
                        v42 = v33;
                        if (v33)
                        {
                          [v14 setObject:v33 forKeyedSubscript:v31];
                          v34 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3C840]];
                          if (v34)
                          {
                            v41 = v34;
                            v35 = [self minimumSceneAnalysisVersionForSignalModel:{objc_msgSend(v34, "integerValue")}];
                            v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
                            [v14 setObject:v36 forKeyedSubscript:*MEMORY[0x277D3C890]];

                            v37 = v14;
                            v38 = v41;
                          }

                          else
                          {
                            v38 = 0;
                            if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412290;
                              v54 = labelCopy;
                              _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil curationSignalModel for memoryConfiguration %@", buf, 0xCu);
                            }

                            v37 = 0;
                          }

                          v39 = v51;
                        }

                        else
                        {
                          if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v54 = labelCopy;
                            _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil seasonMemoryConfiguration for memoryConfiguration %@", buf, 0xCu);
                          }

                          v37 = 0;
                          v39 = v51;
                        }
                      }

                      else
                      {
                        v39 = v51;
                        if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v54 = labelCopy;
                          _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil seasonMemoryConfiguration dictionary for memoryConfiguration %@", buf, 0xCu);
                        }

                        v37 = 0;
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v54 = labelCopy;
                        _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil featuredYearMemoryConfiguration for memoryConfiguration %@", buf, 0xCu);
                      }

                      v37 = 0;
                      v39 = v51;
                    }
                  }

                  else
                  {
                    v39 = v51;
                    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v54 = labelCopy;
                      _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil featuredYearMemoryConfiguration dictionary for memoryConfiguration %@", buf, 0xCu);
                    }

                    v37 = 0;
                  }
                }

                else
                {
                  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v54 = labelCopy;
                    _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil overTheYearsConfiguration for memoryConfiguration %@", buf, 0xCu);
                  }

                  v37 = 0;
                  v39 = v51;
                }
              }

              else
              {
                v39 = v51;
                if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v54 = labelCopy;
                  _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil overTheYearsConfiguration dictionary for memoryConfiguration %@", buf, 0xCu);
                }

                v37 = 0;
              }
            }

            else
            {
              if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v54 = labelCopy;
                _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil memoryMomentRequirements for memoryConfiguration %@", buf, 0xCu);
              }

              v37 = 0;
              v39 = v51;
            }
          }

          else
          {
            v39 = v51;
            if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v54 = labelCopy;
              _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil memoryMomentRequirements dictionary for memoryConfiguration %@", buf, 0xCu);
            }

            v37 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v54 = labelCopy;
            _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil memoryFeatureSpecifications for memoryConfiguration %@", buf, 0xCu);
          }

          v37 = 0;
          v39 = v51;
        }
      }

      else
      {
        if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v54 = labelCopy;
          _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] No memoryFeatureSpecification dictionaries defined for memoryConfiguration %@", buf, 0xCu);
        }

        v37 = 0;
        v39 = v51;
      }
    }

    else
    {
      if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = labelCopy;
        _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] No memoryCategorySubcategoryLabelByOverTimeType defined for memoryConfiguration %@", buf, 0xCu);
      }

      v37 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = labelCopy;
      _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] No memoryCategoryLabel defined for memoryConfiguration %@", buf, 0xCu);
    }

    v37 = 0;
  }

  return v37;
}

+ (id)memoryConfigurationsWithGraph:(id)graph loggingConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  connectionCopy = connection;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 URLForResource:@"MemoryConfigurations" withExtension:@"plist"];

  v22 = 0;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9 error:&v22];
  v11 = v22;
  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__PGMemoryConfiguration_memoryConfigurationsWithGraph_loggingConnection___block_invoke;
    v17[3] = &unk_2788802A0;
    selfCopy = self;
    v18 = graphCopy;
    v19 = connectionCopy;
    v13 = v12;
    v20 = v13;
    [v10 enumerateKeysAndObjectsUsingBlock:v17];
    v14 = v20;
    v15 = v13;
  }

  else
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v11;
      _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] memoryConfigurations loaded from the plist is nil, failed with error %@", buf, 0xCu);
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

void __73__PGMemoryConfiguration_memoryConfigurationsWithGraph_loggingConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 56) resolveConfigurationDictionary:a3 configurationLabel:v7 graph:*(a1 + 32) loggingConnection:*(a1 + 40)];
  if (v8)
  {
    v9 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v8];
    v10 = [PGMemoryConfiguration alloc];
    v15 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v12 = [(PGConfiguration *)v10 initWithSources:v11 version:1.0];

    if (v12)
    {
      [*(a1 + 48) addObject:v12];
    }

    else
    {
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] memoryConfiguration is nil for memoryConfiguration: %@", buf, 0xCu);
      }

      *a4 = 1;
    }
  }

  else
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Resolved memoryConfiguration dictionary is nil for memoryConfiguration: %@", buf, 0xCu);
    }

    *a4 = 1;
  }
}

@end