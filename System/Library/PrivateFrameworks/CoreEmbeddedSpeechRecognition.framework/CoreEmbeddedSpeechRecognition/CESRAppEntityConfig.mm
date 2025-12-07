@interface CESRAppEntityConfig
+ (id)_appEntityMappingFromSupportedFirstPartyEntities:(id)entities bundleIdToLimit:(id)limit supportedLmeTemplates:(id)templates;
+ (id)_assistantSchemaMappingFromSupportedAssistantSchemaTypes:(id)types supportedLmeTemplates:(id)templates;
+ (id)_parseExtractionVocabLabels:(id)labels;
+ (id)_parseThirdPartyBundleLimits:(id)limits;
- (BOOL)_parseJsonObject:(id)object;
- (BOOL)isAssistantSchemaTypeSupported:(id)supported;
- (BOOL)isBundleIdSupported:(id)supported;
- (CESRAppEntityConfig)initWithJsonObject:(id)object;
- (id)appEntityMappingForAssistantSchemaType:(id)type;
- (id)appEntityMappingForBundleId:(id)id appEntityName:(id)name;
- (id)limitForBundleId:(id)id;
@end

@implementation CESRAppEntityConfig

- (BOOL)isAssistantSchemaTypeSupported:(id)supported
{
  v3 = [(CESRAppEntityConfig *)self appEntityMappingForAssistantSchemaType:supported];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isBundleIdSupported:(id)supported
{
  supportedCopy = supported;
  if ([supportedCopy length] && (!+[CESRUtilities isFirstPartyBundleId:](CESRUtilities, "isFirstPartyBundleId:", supportedCopy) || (-[NSDictionary objectForKeyedSubscript:](self->_appEntityMapping, "objectForKeyedSubscript:", supportedCopy), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6)))
  {
    v7 = [(CESRAppEntityConfig *)self limitForBundleId:supportedCopy];
    v8 = v7;
    v9 = !v7 || [v7 intValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)limitForBundleId:(id)id
{
  idCopy = id;
  if ([idCopy length])
  {
    v5 = [(NSDictionary *)self->_bundleIdToLimit objectForKeyedSubscript:idCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)appEntityMappingForAssistantSchemaType:(id)type
{
  typeCopy = type;
  if ([typeCopy length])
  {
    v5 = [(NSDictionary *)self->_assistantSchemaMapping objectForKeyedSubscript:typeCopy];
    anyObject = [v5 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)appEntityMappingForBundleId:(id)id appEntityName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  if ([idCopy length] && objc_msgSend(nameCopy, "length"))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(NSDictionary *)self->_appEntityMapping objectForKeyedSubscript:idCopy, 0];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          appEntityName = [v12 appEntityName];
          v14 = [nameCopy isEqualToString:appEntityName];

          if (v14)
          {
            v9 = v12;
            goto LABEL_14;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_parseJsonObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objectCopy objectForKeyedSubscript:@"appEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 objectForKeyedSubscript:@"overallAppEntityLimit"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_overallAppEntityLimit = [v7 integerValue];
        v8 = [v6 objectForKeyedSubscript:@"overallEntityExtractionLimit"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_overallEntityExtractionLimit = [v8 integerValue];
          v9 = [v6 objectForKeyedSubscript:@"enableEntityExtraction"];
          objc_opt_class();
          v43 = v9;
          if (objc_opt_isKindOfClass())
          {
            bOOLValue = [v9 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          self->_enableEntityExtraction = bOOLValue;
          v12 = [v6 objectForKeyedSubscript:@"interactionStoreRankingEnabled"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            self->_interactionStoreRankingEnabled = [v12 BOOLValue];
          }

          v13 = [v6 objectForKeyedSubscript:@"limitAllocation"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v8;
            v41 = v13;
            v42 = v12;
            v14 = v13;
            v15 = [v14 objectForKeyedSubscript:@"allocationStrategy"];
            objc_opt_class();
            v40 = v14;
            if (objc_opt_isKindOfClass())
            {
              v38 = v15;
              self->_allocationStrategy = CESRAppEntityAllocationStrategyEnumFromString(v15);
              v16 = [v14 objectForKeyedSubscript:@"proportionTransformationFunction"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                self->_proportionTransformationFunction = CESRAppEntityProportionTransformationFunctionEnumFromString(v16);
              }

              v17 = [v14 objectForKeyedSubscript:@"proportionTransformationAlpha"];
              objc_opt_class();
              v12 = v42;
              if (objc_opt_isKindOfClass())
              {
                if (v17)
                {
                  [v17 floatValue];
                }

                else
                {
                  v18 = 1.0;
                }

                self->_proportionTransformationAlpha = v18;
              }

              v19 = [v6 objectForKeyedSubscript:@"firstPartyEntities"];
              objc_opt_class();
              v37 = v19;
              if (objc_opt_isKindOfClass())
              {
                v35 = v17;
                v20 = [v19 objectForKeyedSubscript:@"supportedFirstPartyEntities"];
                objc_opt_class();
                v36 = v20;
                if (objc_opt_isKindOfClass())
                {
                  v21 = [CESRAppEntityConfig _appEntityMappingFromSupportedFirstPartyEntities:v20 bundleIdToLimit:0 supportedLmeTemplates:self->_supportedLmeTemplates];
                  appEntityMapping = self->_appEntityMapping;
                  self->_appEntityMapping = v21;

                  v23 = [v6 objectForKeyedSubscript:@"thirdPartyEntities"];
                  objc_opt_class();
                  v34 = v23;
                  if (objc_opt_isKindOfClass())
                  {
                    v33 = v23;
                    v24 = [v33 objectForKeyedSubscript:@"supportedAssistantSchemaTypes"];
                    objc_opt_class();
                    v32 = v24;
                    if (objc_opt_isKindOfClass())
                    {
                      v25 = [CESRAppEntityConfig _assistantSchemaMappingFromSupportedAssistantSchemaTypes:v24 supportedLmeTemplates:self->_supportedLmeTemplates];
                      assistantSchemaMapping = self->_assistantSchemaMapping;
                      self->_assistantSchemaMapping = v25;

                      v27 = [v33 objectForKeyedSubscript:@"bundleLimits"];
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();
                      if (isKindOfClass)
                      {
                        v31 = [CESRAppEntityConfig _parseThirdPartyBundleLimits:v27];
                        [0 addEntriesFromDictionary:v31];

                        bundleIdToLimit = self->_bundleIdToLimit;
                        self->_bundleIdToLimit = 0;
                      }

                      v29 = v16;
                    }

                    else
                    {
                      v29 = v16;
                      isKindOfClass = 0;
                    }

                    v17 = v35;

                    v13 = v41;
                    v15 = v38;
                  }

                  else
                  {
                    v29 = v16;
                    isKindOfClass = 0;
                    v13 = v41;
                    v15 = v38;
                  }
                }

                else
                {
                  v29 = v16;
                  isKindOfClass = 0;
                  v13 = v41;
                  v15 = v38;
                }
              }

              else
              {
                v29 = v16;
                isKindOfClass = 0;
                v13 = v41;
                v15 = v38;
              }
            }

            else
            {
              isKindOfClass = 0;
              v12 = v42;
            }

            v8 = v39;
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CESRAppEntityConfig)initWithJsonObject:(id)object
{
  v21 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = CESRAppEntityConfig;
  v5 = [(CESRAppEntityConfig *)&v16 init];
  if (!v5)
  {
LABEL_9:
    v11 = v5;
    goto LABEL_13;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  supportedLmeTemplates = v5->_supportedLmeTemplates;
  v5->_supportedLmeTemplates = v6;

  v8 = [(CESRAppEntityConfig *)v5 _parseJsonObject:objectCopy];
  v9 = MEMORY[0x277CEF0E8];
  v10 = *MEMORY[0x277CEF0E8];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      overallAppEntityLimit = v5->_overallAppEntityLimit;
      *buf = 136315394;
      v18 = "[CESRAppEntityConfig initWithJsonObject:]";
      v19 = 2048;
      v20 = overallAppEntityLimit;
      _os_log_debug_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEBUG, "%s Overall app entity limit: %ld", buf, 0x16u);
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      overallEntityExtractionLimit = v5->_overallEntityExtractionLimit;
      *buf = 136315394;
      v18 = "[CESRAppEntityConfig initWithJsonObject:]";
      v19 = 2048;
      v20 = overallEntityExtractionLimit;
      _os_log_debug_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEBUG, "%s Overall entity extraction limit: %ld", buf, 0x16u);
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      appEntityMapping = v5->_appEntityMapping;
      *buf = 136315394;
      v18 = "[CESRAppEntityConfig initWithJsonObject:]";
      v19 = 2112;
      v20 = appEntityMapping;
      _os_log_debug_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEBUG, "%s App entity mapping: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v18 = "[CESRAppEntityConfig initWithJsonObject:]";
    _os_log_error_impl(&dword_225EEB000, v10, OS_LOG_TYPE_ERROR, "%s Failed to parse App Entity section of json.", buf, 0xCu);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

+ (id)_appEntityMappingFromSupportedFirstPartyEntities:(id)entities bundleIdToLimit:(id)limit supportedLmeTemplates:(id)templates
{
  v74 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  limitCopy = limit;
  templatesCopy = templates;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v8 = entitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v69;
    v41 = *v69;
    v42 = v8;
    do
    {
      v12 = 0;
      v43 = v10;
      do
      {
        if (*v69 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v56 = v12;
        v13 = *(*(&v68 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v14 objectForKeyedSubscript:@"sourceBundleId"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            v17 = [v14 objectForKeyedSubscript:@"bundleLimit"];
            v57 = v16;
            if (v17)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v15;
                v19 = v14;
                v20 = v17;
                if ([v16 length] && (objc_msgSend(v20, "intValue") & 0x80000000) == 0)
                {
                  [limitCopy setObject:v20 forKeyedSubscript:v16];
                }

                v14 = v19;
                v15 = v18;
              }
            }

            v21 = [v14 objectForKeyedSubscript:@"appEntityTypes"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = v17;
              v46 = v15;
              v47 = v14;
              v44 = v21;
              v22 = v21;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v23 = [v22 countByEnumeratingWithState:&v64 objects:v72 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v65;
                v63 = v22;
                do
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v65 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v64 + 1) + 8 * i);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v28 = v27;
                      v29 = [v28 objectForKeyedSubscript:@"entityName"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v30 = v29;
                        v31 = [v28 objectForKeyedSubscript:@"primaryLme"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v32 = v31;
                          v33 = [v32 objectForKeyedSubscript:@"templateName"];
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v62 = v33;
                            v34 = [v32 objectForKeyedSubscript:@"tagName"];
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v59 = v34;
                              v61 = v34;
                              v35 = [v28 objectForKeyedSubscript:@"extractedLme"];
                              objc_opt_class();
                              v58 = v35;
                              if (objc_opt_isKindOfClass())
                              {
                                v60 = [self _parseExtractionVocabLabels:v35];
                              }

                              else
                              {
                                v60 = 0;
                              }

                              v36 = v61;
                              if ([v57 length] && objc_msgSend(v30, "length") && objc_msgSend(v62, "length") && objc_msgSend(v61, "length"))
                              {
                                v54 = [[CESRVocabularyLabel alloc] initWithLmeTemplate:v62 lmeTag:v61];
                                v52 = [[CESRAppEntityMapping alloc] initWithSourceBundleId:v57 assistantSchemaType:0 appEntityName:v30 primaryVocabLabel:v54 extractionVocabLabels:v60];
                                [templatesCopy addObject:v62];
                                v37 = [dictionary objectForKeyedSubscript:v57];
                                v50 = v37;
                                if (v37)
                                {
                                  v38 = dictionary;
                                  [dictionary setObject:v37 forKeyedSubscript:v57];
                                }

                                else
                                {
                                  v48 = [MEMORY[0x277CBEB58] set];
                                  v38 = dictionary;
                                  [dictionary setObject:v48 forKeyedSubscript:v57];
                                }

                                v51 = [v38 objectForKeyedSubscript:v57];
                                [v51 addObject:v52];

                                v36 = v61;
                              }

                              v34 = v59;
                            }
                          }
                        }

                        v22 = v63;
                      }
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v64 objects:v72 count:16];
                }

                while (v24);
              }

              v11 = v41;
              v8 = v42;
              v10 = v43;
              v21 = v44;
              v15 = v46;
              v14 = v47;
              v16 = v57;
              v17 = v45;
            }
          }
        }

        v12 = v56 + 1;
      }

      while (v56 + 1 != v10);
      v10 = [v8 countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v10);
  }

  return dictionary;
}

+ (id)_parseExtractionVocabLabels:(id)labels
{
  v22 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [labelsCopy allKeys];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [labelsCopy objectForKeyedSubscript:v8];
        v10 = [v9 objectForKeyedSubscript:@"templateName"];

        v11 = [labelsCopy objectForKeyedSubscript:v8];
        v12 = [v11 objectForKeyedSubscript:@"tagName"];

        if ([v10 length] && objc_msgSend(v12, "length"))
        {
          v13 = [[CESRVocabularyLabel alloc] initWithLmeTemplate:v10 lmeTag:v12];
          [dictionary setObject:v13 forKey:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  return dictionary;
}

+ (id)_assistantSchemaMappingFromSupportedAssistantSchemaTypes:(id)types supportedLmeTemplates:(id)templates
{
  v44 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  templatesCopy = templates;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = typesCopy;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0x277CBE000uLL;
    v10 = *v40;
    v37 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 objectForKeyedSubscript:@"assistantSchemaType"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = [v13 objectForKeyedSubscript:@"primaryLme"];
            v17 = v9;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v16;
              v19 = [v18 objectForKeyedSubscript:@"templateName"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v38 = v19;
                v36 = v18;
                v20 = [v18 objectForKeyedSubscript:@"tagName"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v33 = v20;
                  v35 = v20;
                  v21 = [v13 objectForKeyedSubscript:@"extractedLme"];
                  objc_opt_class();
                  v32 = v21;
                  if (objc_opt_isKindOfClass())
                  {
                    v34 = [self _parseExtractionVocabLabels:v21];
                  }

                  else
                  {
                    v34 = 0;
                  }

                  v22 = v35;
                  if ([v15 length] && objc_msgSend(v38, "length") && objc_msgSend(v35, "length"))
                  {
                    v29 = [[CESRVocabularyLabel alloc] initWithLmeTemplate:v38 lmeTag:v35];
                    v28 = [[CESRAppEntityMapping alloc] initWithSourceBundleId:0 assistantSchemaType:v15 appEntityName:0 primaryVocabLabel:v29 extractionVocabLabels:v34];
                    [templatesCopy addObject:v38];
                    v23 = [dictionary objectForKeyedSubscript:v15];
                    if (v23)
                    {
                      [dictionary setObject:v23 forKeyedSubscript:v15];
                    }

                    else
                    {
                      v26 = [MEMORY[0x277CBEB58] set];
                      [dictionary setObject:v26 forKeyedSubscript:v15];
                    }

                    v27 = [dictionary objectForKeyedSubscript:v15];
                    [v27 addObject:v28];

                    v22 = v35;
                  }

                  v20 = v33;
                }

                v18 = v36;
              }

              v6 = v37;
            }

            v9 = v17;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v8);
  }

  return dictionary;
}

+ (id)_parseThirdPartyBundleLimits:(id)limits
{
  v29 = *MEMORY[0x277D85DE8];
  limitsCopy = limits;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = limitsCopy;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = @"bundleId";
    v9 = 0x277CCA000uLL;
    v22 = v4;
    v23 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 objectForKeyedSubscript:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v9;
            v15 = v13;
            v16 = [v12 objectForKeyedSubscript:@"limit"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v8;
              v18 = v16;
              if ([v15 length])
              {
                v19 = v18 == 0;
              }

              else
              {
                v19 = 1;
              }

              if (!v19 && ([v18 intValue] & 0x80000000) == 0)
              {
                [dictionary setObject:v18 forKeyedSubscript:v15];
              }

              v8 = v17;
              v4 = v22;
            }

            v9 = v14;
            v7 = v23;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  return dictionary;
}

@end