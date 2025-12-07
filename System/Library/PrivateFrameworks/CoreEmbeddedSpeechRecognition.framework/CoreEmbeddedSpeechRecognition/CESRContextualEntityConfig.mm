@interface CESRContextualEntityConfig
- (BOOL)_parseJsonObject:(id)object;
- (CESRContextualEntityConfig)initWithJsonObject:(id)object;
@end

@implementation CESRContextualEntityConfig

- (BOOL)_parseJsonObject:(id)object
{
  v96 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objectCopy objectForKeyedSubscript:@"contextualEntityRetrieval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 objectForKeyedSubscript:@"enablement"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v9 = [v8 objectForKeyedSubscript:@"shouldRetrieve"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [v9 BOOLValue];
          v11 = [v8 objectForKeyedSubscript:@"shouldEnroll"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v78 = v9;
            v74 = v11;
            v12 = -[CESRContextualEntityEnablementConfig initWithShouldRetrieve:shouldEnroll:]([CESRContextualEntityEnablementConfig alloc], "initWithShouldRetrieve:shouldEnroll:", bOOLValue, [v11 BOOLValue]);
            enablementConfig = self->_enablementConfig;
            self->_enablementConfig = v12;

            v14 = [v6 objectForKeyedSubscript:@"retrieval"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              v16 = [v15 objectForKeyedSubscript:@"maxNumEnrolled"];
              objc_opt_class();
              v72 = v16;
              v73 = v15;
              if (objc_opt_isKindOfClass())
              {
                v70 = v14;
                integerValue = [v16 integerValue];
                v17 = [v15 objectForKeyedSubscript:@"retrievalTimeout"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v63 = v17;
                  [v17 doubleValue];
                  v19 = v18;
                  v20 = [v15 objectForKeyedSubscript:@"maxEntityChars"];
                  objc_opt_class();
                  v62 = v20;
                  if (objc_opt_isKindOfClass())
                  {
                    integerValue2 = [v20 integerValue];
                    v61 = [v15 objectForKeyedSubscript:@"maxEntityWords"];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      integerValue3 = [v61 integerValue];
                      v22 = [v15 objectForKeyedSubscript:@"rejectedContextTypes"];
                      objc_opt_class();
                      v58 = v22;
                      if (objc_opt_isKindOfClass())
                      {
                        v55 = integerValue3;
                        v56 = v8;
                        v57 = v6;
                        v23 = v22;
                        array = [MEMORY[0x277CBEB18] array];
                        v89 = 0u;
                        v90 = 0u;
                        v91 = 0u;
                        v92 = 0u;
                        obj = v23;
                        v24 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
                        if (v24)
                        {
                          v25 = v24;
                          v26 = *v90;
                          do
                          {
                            for (i = 0; i != v25; ++i)
                            {
                              if (*v90 != v26)
                              {
                                objc_enumerationMutation(obj);
                              }

                              v28 = *(*(&v89 + 1) + 8 * i);
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 length])
                              {
                                [array addObject:v28];
                              }
                            }

                            v25 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
                          }

                          while (v25);
                        }

                        v29 = [v73 objectForKeyedSubscript:@"rejectedBundleTypes"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v53 = v7;
                          v54 = v29;
                          v30 = v29;
                          dictionary = [MEMORY[0x277CBEB38] dictionary];
                          v85 = 0u;
                          v86 = 0u;
                          v87 = 0u;
                          v88 = 0u;
                          v77 = v30;
                          v31 = [v77 countByEnumeratingWithState:&v85 objects:v94 count:16];
                          v9 = v78;
                          if (v31)
                          {
                            v32 = v31;
                            v33 = *v86;
                            do
                            {
                              v34 = 0;
                              v75 = v32;
                              do
                              {
                                if (*v86 != v33)
                                {
                                  objc_enumerationMutation(v77);
                                }

                                v35 = *(*(&v85 + 1) + 8 * v34);
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v36 = v35;
                                  v37 = [v36 objectForKeyedSubscript:@"sourceBundleId"];
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v37 length])
                                  {
                                    v38 = v37;
                                    v39 = [v36 objectForKeyedSubscript:@"entityName"];
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v39 length])
                                    {
                                      v68 = v39;
                                      v40 = [dictionary objectForKeyedSubscript:?];
                                      v66 = v40;
                                      if (v40)
                                      {
                                        [dictionary setObject:v40 forKeyedSubscript:v38];
                                      }

                                      else
                                      {
                                        v60 = [MEMORY[0x277CBEB58] set];
                                        [dictionary setObject:v60 forKeyedSubscript:v38];
                                      }

                                      v67 = [dictionary objectForKeyedSubscript:v38];
                                      [v67 addObject:v68];
                                    }

                                    v9 = v78;
                                  }

                                  v32 = v75;
                                }

                                ++v34;
                              }

                              while (v32 != v34);
                              v32 = [v77 countByEnumeratingWithState:&v85 objects:v94 count:16];
                            }

                            while (v32);
                          }

                          v41 = [v73 objectForKeyedSubscript:@"enabledTasks"];
                          objc_opt_class();
                          isKindOfClass = objc_opt_isKindOfClass();
                          v7 = v53;
                          if (isKindOfClass)
                          {
                            v69 = v41;
                            v43 = v41;
                            array2 = [MEMORY[0x277CBEB18] array];
                            v81 = 0u;
                            v82 = 0u;
                            v83 = 0u;
                            v84 = 0u;
                            v76 = v43;
                            v44 = [v76 countByEnumeratingWithState:&v81 objects:v93 count:16];
                            if (v44)
                            {
                              v45 = v44;
                              v46 = *v82;
                              do
                              {
                                for (j = 0; j != v45; ++j)
                                {
                                  if (*v82 != v46)
                                  {
                                    objc_enumerationMutation(v76);
                                  }

                                  v48 = *(*(&v81 + 1) + 8 * j);
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v48 length])
                                  {
                                    [array2 addObject:v48];
                                  }
                                }

                                v45 = [v76 countByEnumeratingWithState:&v81 objects:v93 count:16];
                              }

                              while (v45);
                            }

                            v49 = [[CESRContextualEntityRetrievalConfig alloc] initWithMaxNumEnrolled:integerValue retrievalTimeout:integerValue2 maxEntityChars:v55 maxEntityWords:obj rejectedContextTypes:dictionary rejectedBundleTypes:v76 enabledTasks:v19];
                            retrievalConfig = self->_retrievalConfig;
                            self->_retrievalConfig = v49;

                            v9 = v78;
                            v41 = v69;
                          }

                          v8 = v56;
                          v6 = v57;
                          v29 = v54;
                        }

                        else
                        {
                          isKindOfClass = 0;
                          v8 = v56;
                          v9 = v78;
                        }
                      }

                      else
                      {
                        isKindOfClass = 0;
                        v9 = v78;
                      }

                      v11 = v74;
                      v17 = v63;
                      v51 = v61;
                    }

                    else
                    {
                      isKindOfClass = 0;
                      v9 = v78;
                      v11 = v74;
                      v17 = v63;
                      v51 = v61;
                    }
                  }

                  else
                  {
                    isKindOfClass = 0;
                    v9 = v78;
                    v11 = v74;
                    v17 = v63;
                  }
                }

                else
                {
                  isKindOfClass = 0;
                  v9 = v78;
                  v11 = v74;
                }

                v14 = v70;
              }

              else
              {
                isKindOfClass = 0;
                v9 = v78;
                v11 = v74;
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

- (CESRContextualEntityConfig)initWithJsonObject:(id)object
{
  v19 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = CESRContextualEntityConfig;
  v5 = [(CESRContextualEntityConfig *)&v14 init];
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v10 = v6;
    goto LABEL_11;
  }

  v7 = [(CESRContextualEntityConfig *)v5 _parseJsonObject:objectCopy];
  v8 = MEMORY[0x277CEF0E8];
  v9 = *MEMORY[0x277CEF0E8];
  if (v7)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      enablementConfig = v6->_enablementConfig;
      *buf = 136315394;
      v16 = "[CESRContextualEntityConfig initWithJsonObject:]";
      v17 = 2112;
      v18 = enablementConfig;
      _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s Contextual entity enablement parameters: %@", buf, 0x16u);
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      retrievalConfig = v6->_retrievalConfig;
      *buf = 136315394;
      v16 = "[CESRContextualEntityConfig initWithJsonObject:]";
      v17 = 2112;
      v18 = retrievalConfig;
      _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s Contextual entity retrieval parameters: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v16 = "[CESRContextualEntityConfig initWithJsonObject:]";
    _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s Failed to parse Contextual Retrieval section of json.", buf, 0xCu);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

@end