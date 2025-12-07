@interface FedStatsPluginRecipe
+ (id)recipeWithAssetProvider:(id)provider error:(id *)error;
+ (id)recipeWithAssetProvider:(id)provider recipeIdentifier:(id)identifier error:(id *)error;
- (BOOL)checkConsentWithError:(id *)error;
- (BOOL)checkDeviceOSVersionFilterWithError:(id *)error;
- (BOOL)checkDeviceRegionCodeWithError:(id *)error;
- (FedStatsPluginRecipe)initWithAssetProvider:(id)provider recipeIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier recordMetadata:(id)metadata dataTypeContent:(id)content sqlQuery:(id)query cohortNameList:(id)list defaultDonationParameters:(id)self0 maskingDataParameters:(id)self1;
- (id)accessedStreams;
- (id)assetKeysFromCollatedData:(id)data;
- (id)assetURLsForAssetKeys:(id)keys;
- (id)collateQueryResults:(id)results;
- (id)evaluateQueryWithError:(id *)error;
- (id)recordCollatedData:(id)data assetURLs:(id)ls;
- (id)runRecipeWithError:(id *)error;
@end

@implementation FedStatsPluginRecipe

- (FedStatsPluginRecipe)initWithAssetProvider:(id)provider recipeIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier recordMetadata:(id)metadata dataTypeContent:(id)content sqlQuery:(id)query cohortNameList:(id)list defaultDonationParameters:(id)self0 maskingDataParameters:(id)self1
{
  providerCopy = provider;
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  metadataCopy = metadata;
  contentCopy = content;
  queryCopy = query;
  listCopy = list;
  parametersCopy = parameters;
  dataParametersCopy = dataParameters;
  v31.receiver = self;
  v31.super_class = FedStatsPluginRecipe;
  v19 = [(FedStatsPluginRecipe *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_assetProvider, provider);
    objc_storeStrong(&v20->_recipeIdentifier, identifier);
    objc_storeStrong(&v20->_clientIdentifier, clientIdentifier);
    objc_storeStrong(&v20->_recordMetadata, metadata);
    objc_storeStrong(&v20->_dataTypeContent, content);
    objc_storeStrong(&v20->_sqlQuery, query);
    objc_storeStrong(&v20->_cohortNameList, list);
    objc_storeStrong(&v20->_defaultDonationParameters, parameters);
    objc_storeStrong(&v20->_maskingDataParameters, dataParameters);
    biomeSQL = v20->_biomeSQL;
    v20->_biomeSQL = 0;
  }

  return v20;
}

+ (id)recipeWithAssetProvider:(id)provider recipeIdentifier:(id)identifier error:(id *)error
{
  v126 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  identifierCopy = identifier;
  v117 = 0;
  v9 = [providerCopy recipeDictionaryForRecipe:identifierCopy error:&v117];
  v10 = v117;
  if (error && !v9)
  {
    *error = [FedStatsPluginError errorWithCode:100 underlyingError:v10 description:@"Trial client cannot load the recipe"];
  }

  v11 = [v9 objectForKey:@"clientIdentifier"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [providerCopy namespaceIdentifierForRecipe:identifierCopy];
      v94 = v116 = 0;
      v12 = [FedStatsPluginClientValidator checkClientIdentifier:"checkClientIdentifier:againstNamespaceIdentifier:error:" againstNamespaceIdentifier:v11 error:?];
      v13 = 0;
      if (v12)
      {
        if ([v12 BOOLValue])
        {
          v14 = [v9 objectForKey:@"dataTypeContent"];
          v15 = v14;
          if (v14)
          {
            v91 = v12;
            v92 = v14;
            [MEMORY[0x277D08450] extractRequiredFieldsFrom:v14];
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            obj = v115 = 0u;
            v16 = [obj countByEnumeratingWithState:&v112 objects:v125 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v113;
              v89 = v13;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v113 != v18)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (![FedStatsDataCohort checkCohortField:*(*(&v112 + 1) + 8 * i) forNamespaceID:v94])
                  {
                    if (error)
                    {
                      [FedStatsPluginError errorWithCode:100 description:@"Data type content contains required field(s) that are not allowed"];
                      *error = v30 = 0;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    v20 = obj;
                    v13 = v89;
                    goto LABEL_139;
                  }
                }

                v17 = [obj countByEnumeratingWithState:&v112 objects:v125 count:16];
                v13 = v89;
              }

              while (v17);
            }

            v20 = [v9 objectForKey:@"cohorts"];
            if (!v20)
            {
              goto LABEL_29;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                [FedStatsPluginError errorWithCode:100 description:@"Cohorts must be a list of strings."];
                *error = v30 = 0;
              }

              else
              {
LABEL_76:
                v30 = 0;
              }

              v12 = v91;
              goto LABEL_139;
            }

            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v84 = v20;
            v21 = [v84 countByEnumeratingWithState:&v108 objects:v124 count:16];
            if (!v21)
            {
              goto LABEL_28;
            }

            v22 = v21;
            v86 = *v109;
            v82 = v20;
LABEL_21:
            v23 = 0;
            while (1)
            {
              if (*v109 != v86)
              {
                objc_enumerationMutation(v84);
              }

              v24 = *(*(&v108 + 1) + 8 * v23);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                break;
              }

              if (![FedStatsDataCohort checkCohortField:v24 forNamespaceID:v94])
              {
                if (error)
                {
                  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cohort field '%@' is not allowed for this namespace", v24];
                  *error = [FedStatsPluginError errorWithCode:100 description:v44];
                }

LABEL_75:
                v20 = v84;

                goto LABEL_76;
              }

              if (v22 == ++v23)
              {
                v22 = [v84 countByEnumeratingWithState:&v108 objects:v124 count:16];
                v20 = v82;
                if (v22)
                {
                  goto LABEL_21;
                }

LABEL_28:

LABEL_29:
                v83 = v20;
                v25 = *MEMORY[0x277D05410];
                v122 = *MEMORY[0x277D05410];
                v123 = &stru_285E133E0;
                v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
                v27 = *MEMORY[0x277D05390];
                v28 = [v9 objectForKey:*MEMORY[0x277D05390]];
                v85 = v28;
                if (v28)
                {
                  v120[0] = v25;
                  v120[1] = v27;
                  v121[0] = &stru_285E133E0;
                  v121[1] = v28;
                  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];

                  v81 = v29;
                }

                else
                {
                  v81 = v26;
                }

                v32 = [v9 objectForKey:@"sqlQuery"];
                v12 = v91;
                v20 = v83;
                v80 = v32;
                if (v32)
                {
                  v33 = v32;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v87 = v33;
                    goto LABEL_52;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v106 = 0u;
                    v107 = 0u;
                    v104 = 0u;
                    v105 = 0u;
                    v79 = v33;
                    v41 = [v79 countByEnumeratingWithState:&v104 objects:v119 count:16];
                    if (v41)
                    {
                      v42 = v41;
                      v88 = *v105;
                      while (2)
                      {
                        for (j = 0; j != v42; ++j)
                        {
                          if (*v105 != v88)
                          {
                            objc_enumerationMutation(v79);
                          }

                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            v20 = v83;
                            if (error)
                            {
                              *error = [FedStatsPluginError errorWithCode:100 description:@"If SQL query is an array, all entries must be strings"];
                            }

                            v30 = 0;
                            v12 = v91;
                            goto LABEL_92;
                          }
                        }

                        v42 = [v79 countByEnumeratingWithState:&v104 objects:v119 count:16];
                        if (v42)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v87 = [v79 componentsJoinedByString:@" "];
                    v12 = v91;
                    v20 = v83;
LABEL_52:
                    v34 = +[FedStatsPluginLog logger];
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                    {
                      +[FedStatsPluginRecipe recipeWithAssetProvider:recipeIdentifier:error:];
                    }

                    v103 = 0;
                    v35 = [FedStatsPluginSQLQueryValidator isValidSQLQuery:v87 forNamespaceID:v94 possibleError:&v103];
                    v36 = v103;
                    v77 = v36;
                    v78 = v35;
                    if (v35)
                    {
                      if ([v35 BOOLValue])
                      {
                        if ([&unk_285E17AB8 containsObject:v11])
                        {
                          v102 = 0;
                          v37 = checkDediscoV2Params(v85, &v102);
                          v38 = v102;
                          if (v37)
                          {
                            v39 = v13;
                            goto LABEL_94;
                          }

                          if (error)
                          {
                            v54 = v38;
                            v55 = [FedStatsPluginError errorWithCode:100 underlyingError:v38 description:@"Cannot validate Dedisco V2 config for this use-case."];
                            v38 = v54;
                            v30 = 0;
                            *error = v55;
                          }

                          else
                          {
                            v30 = 0;
                          }

                          v46 = v81;
LABEL_136:

LABEL_137:
LABEL_138:

LABEL_139:
LABEL_140:

                          v15 = v92;
                          goto LABEL_141;
                        }

                        v39 = v13;
                        v38 = 0;
LABEL_94:
                        v47 = v38;
                        v101 = v38;
                        v48 = checkPrivateRelay(v87, v11, v85, &v101);
                        v76 = v101;

                        if ((v48 & 1) == 0)
                        {
                          v13 = v39;
                          if (error)
                          {
                            v53 = [FedStatsPluginError errorWithCode:100 underlyingError:v76 description:@"Cannot validate recipe for Private Relay usage"];
                            v38 = v76;
                            v30 = 0;
                            *error = v53;
                            v46 = v81;
                            v20 = v83;
                            goto LABEL_136;
                          }

                          v30 = 0;
                          v46 = v81;
                          v20 = v83;
                          goto LABEL_135;
                        }

                        v49 = [v9 objectForKey:@"defaultDonationParameters"];
                        v100 = 0;
                        v50 = [FedStatsPluginDefaultDonationParameters defaultDonationParametersWithConfiguration:v49 error:&v100];
                        v51 = v100;
                        v52 = v50;
                        v13 = v39;
                        v73 = v51;
                        v74 = v49;
                        if (v49 && !v52)
                        {
                          v20 = v83;
                          if (error)
                          {
                            [FedStatsPluginError errorWithCode:100 underlyingError:v51 description:@"Cannot create privacy parameters from provided configuration"];
                            *error = v30 = 0;
                            v52 = 0;
                          }

                          else
                          {
                            v30 = 0;
                          }

                          v46 = v81;
LABEL_134:

LABEL_135:
                          v38 = v76;
                          goto LABEL_136;
                        }

                        v71 = v52;
                        [v9 objectForKey:@"maskingDataParameters"];
                        v69 = v99 = 0;
                        v56 = [FedStatsPluginMaskingDataParameters parametersWithConfiguration:"parametersWithConfiguration:error:" error:?];
                        v67 = 0;
                        v57 = checkMaskingDataRequirements(v87);
                        v58 = v56;
                        v20 = v83;
                        v70 = v58;
                        if (v57 && !v58)
                        {
                          if (error)
                          {
                            [FedStatsPluginError errorWithCode:100 underlyingError:v67 description:@"Masking data parameters required for this SQL query but not provided properly"];
                            *error = v30 = 0;
                          }

                          else
                          {
                            v30 = 0;
                          }

                          goto LABEL_132;
                        }

                        if (v69)
                        {
                          v90 = v13;
                          if (v58)
                          {
                            v59 = [MEMORY[0x277D08450] defaultDataPointForDataTypeContent:v92];
                            maskingData = [v70 maskingData];
                            v95 = 0u;
                            v96 = 0u;
                            v97 = 0u;
                            v98 = 0u;
                            v68 = v59;
                            v60 = [v68 countByEnumeratingWithState:&v95 objects:v118 count:16];
                            if (v60)
                            {
                              v61 = v60;
                              v72 = *v96;
                              while (2)
                              {
                                for (k = 0; k != v61; ++k)
                                {
                                  if (*v96 != v72)
                                  {
                                    objc_enumerationMutation(v68);
                                  }

                                  v63 = *(*(&v95 + 1) + 8 * k);
                                  v64 = [maskingData objectForKey:v63];

                                  if (!v64)
                                  {
                                    if (error)
                                    {
                                      v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"Masking data parameters field names does not contain the data type '%@'", v63];
                                      *error = [FedStatsPluginError errorWithCode:100 description:v65];
                                    }

                                    goto LABEL_130;
                                  }
                                }

                                v61 = [v68 countByEnumeratingWithState:&v95 objects:v118 count:16];
                                if (v61)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            v13 = v90;
                            v12 = v91;
                            v20 = v83;
                            goto LABEL_119;
                          }

                          if (error)
                          {
                            [FedStatsPluginError errorWithCode:100 underlyingError:v67 description:@"Cannot create masking data parameters from provided configuration"];
                            *error = v30 = 0;
                          }

                          else
                          {
LABEL_130:
                            v30 = 0;
                          }

                          v13 = v90;
                          v12 = v91;
                          v20 = v83;
LABEL_132:
                          v46 = v81;
                        }

                        else
                        {
LABEL_119:
                          v46 = v81;
                          v30 = [[FedStatsPluginRecipe alloc] initWithAssetProvider:providerCopy recipeIdentifier:identifierCopy clientIdentifier:v11 recordMetadata:v81 dataTypeContent:v92 sqlQuery:v87 cohortNameList:v20 defaultDonationParameters:v71 maskingDataParameters:v70];
                        }

                        v52 = v71;
                        goto LABEL_134;
                      }

                      if (error)
                      {
                        v45 = [FedStatsPluginError errorWithCode:100 description:@"SQL query not valid"];
LABEL_86:
                        v30 = 0;
                        *error = v45;
LABEL_88:
                        v46 = v81;
                        goto LABEL_137;
                      }
                    }

                    else if (error)
                    {
                      v45 = [FedStatsPluginError errorWithCode:100 underlyingError:v36 description:@"Cannot validate SQL query"];
                      goto LABEL_86;
                    }

                    v30 = 0;
                    goto LABEL_88;
                  }

                  if (error)
                  {
                    v40 = @"SQL query should either be an array of strings or a single string";
LABEL_80:
                    [FedStatsPluginError errorWithCode:100 description:v40];
                    *error = v30 = 0;
LABEL_92:
                    v46 = v81;
                    goto LABEL_138;
                  }
                }

                else if (error)
                {
                  v40 = @"Recipe is missing SQL query";
                  goto LABEL_80;
                }

                v30 = 0;
                goto LABEL_92;
              }
            }

            if (error)
            {
              *error = [FedStatsPluginError errorWithCode:100 description:@"Cohorts must be a list of strings."];
            }

            goto LABEL_75;
          }

          if (error)
          {
            v92 = 0;
            obj = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ missing from recipe", @"dataTypeContent"];
            [FedStatsPluginError errorWithCode:100 description:?];
            *error = v30 = 0;
            goto LABEL_140;
          }

          v30 = 0;
LABEL_141:

          goto LABEL_142;
        }

        if (error)
        {
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"The client identifier %@ is not allowed for the namespace %@", v11, v94];
          *error = [FedStatsPluginError errorWithCode:100 description:v31];
        }
      }

      else if (error)
      {
        [FedStatsPluginError errorWithCode:100 underlyingError:v13 description:@"Cannot perform recipe ID check"];
        *error = v30 = 0;
LABEL_142:

        goto LABEL_143;
      }

      v30 = 0;
      goto LABEL_142;
    }
  }

  if (error)
  {
    [FedStatsPluginError errorWithCode:100 description:@"Recipe is missing client identifier string"];
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_143:

  return v30;
}

+ (id)recipeWithAssetProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  recipeIdentifiers = [providerCopy recipeIdentifiers];
  if ([recipeIdentifiers count] == 1)
  {
    firstObject = [recipeIdentifiers firstObject];
    v9 = [self recipeWithAssetProvider:providerCopy recipeIdentifier:firstObject error:error];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    firstObject = [MEMORY[0x277CCACA8] stringWithFormat:@"Asset provider should have a single recipe for this call: %@", recipeIdentifiers];
    [FedStatsPluginError errorWithCode:100 description:firstObject];
    *error = v9 = 0;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (BOOL)checkConsentWithError:(id *)error
{
  v35[4] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(FedStatsPluginDnUConsentChecker);
  v35[0] = v5;
  v6 = objc_alloc_init(FedStatsPluginLocationServiceConsentChecker);
  v35[1] = v6;
  v7 = objc_alloc_init(FedStatsPluginUserProofingConsentChecker);
  v35[2] = v7;
  v8 = objc_alloc_init(FedStatsPluginIHAConsentChecker);
  v35[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (!v10)
  {
    v22 = 1;
    goto LABEL_22;
  }

  v11 = v10;
  errorCopy = error;
  v12 = *v29;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      v15 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [(FedStatsPluginRecipe *)v33 checkConsentWithError:v14];
      }

      clientIdentifier = [(FedStatsPluginRecipe *)self clientIdentifier];
      v27 = 0;
      v17 = [v14 checkConsentForClientIdentifier:clientIdentifier error:&v27];
      v18 = v27;

      if (!v17)
      {
        if (errorCopy)
        {
          *errorCopy = [FedStatsPluginError errorWithCode:400 underlyingError:v18 description:@"Cannot run consent check"];
        }

        goto LABEL_21;
      }

      bOOLValue = [v17 BOOLValue];
      v20 = +[FedStatsPluginLog logger];
      v21 = v20;
      if ((bOOLValue & 1) == 0)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_24AB24000, v21, OS_LOG_TYPE_INFO, "Plugin not consented to run for the use-case", buf, 2u);
        }

LABEL_21:
        v22 = 0;
        goto LABEL_22;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(FedStatsPluginRecipe *)v32 checkConsentWithError:v14];
      }
    }

    v11 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    v22 = 1;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_22:

  return v22;
}

- (BOOL)checkDeviceRegionCodeWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
  recipeIdentifier = [(FedStatsPluginRecipe *)self recipeIdentifier];
  v34 = 0;
  v7 = [assetProvider recipeDictionaryForRecipe:recipeIdentifier error:&v34];
  v8 = v34;

  if (v7)
  {
    v9 = [v7 objectForKey:@"allowedRegions"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v21 = 0;
          goto LABEL_39;
        }

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' key should have an array of strings as value", @"allowedRegions"];
        [FedStatsPluginError errorWithCode:100 description:v10];
        *error = v21 = 0;
        goto LABEL_38;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v31;
LABEL_6:
        v14 = 0;
        while (1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
            if (v12)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        if (!error)
        {
          goto LABEL_37;
        }

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' key should have an array of strings as value", @"allowedRegions"];
        goto LABEL_34;
      }

LABEL_12:
    }

    v10 = [v7 objectForKey:@"deniedRegions"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' key should have an array of strings as value", @"deniedRegions"];
          *error = [FedStatsPluginError errorWithCode:100 description:v22];
        }

        goto LABEL_37;
      }

      v25 = v8;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = v10;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' key should have an array of strings as value", @"deniedRegions"];
                *error = [FedStatsPluginError errorWithCode:100 description:v24];
              }

              v21 = 0;
              v8 = v25;
              goto LABEL_38;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v8 = v25;
      if (v9)
      {
        if (!error)
        {
LABEL_37:
          v21 = 0;
          goto LABEL_38;
        }

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"The recipe cannot have both '%@' and '%@' keys", @"allowedRegions", @"deniedRegions"];
LABEL_34:
        *error = [FedStatsPluginError errorWithCode:100 description:v20];

        goto LABEL_37;
      }
    }

    v21 = [MEMORY[0x277D08468] checkDeviceRegionCodeRestrictionForAllowedRegions:v9 deniedRegions:v10];
LABEL_38:

LABEL_39:
    goto LABEL_40;
  }

  if (error)
  {
    [FedStatsPluginError errorWithCode:100 underlyingError:v8 description:@"Cannot load the recipe dictionary from asset provider"];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_40:

  return v21;
}

- (BOOL)checkDeviceOSVersionFilterWithError:(id *)error
{
  assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
  recipeIdentifier = [(FedStatsPluginRecipe *)self recipeIdentifier];
  v13 = 0;
  v7 = [assetProvider recipeDictionaryForRecipe:recipeIdentifier error:&v13];
  v8 = v13;

  if (v8)
  {
    if (error)
    {
      [FedStatsPluginError errorWithCode:100 underlyingError:v8 description:@"Cannot load recipe."];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = [v7 objectForKey:@"deviceOSVersionFilter"];
    v11 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsPluginRecipe checkDeviceOSVersionFilterWithError:];
    }

    v9 = [MEMORY[0x277D08468] checkDeviceOSVersionFilter:v10];
  }

  return v9;
}

- (id)evaluateQueryWithError:(id *)error
{
  v19 = 0;
  v5 = [[FedStatsPluginSQL alloc] initWithError:&v19];
  v6 = v19;
  [(FedStatsPluginRecipe *)self setBiomeSQL:v5];

  biomeSQL = [(FedStatsPluginRecipe *)self biomeSQL];

  if (biomeSQL)
  {
    biomeSQL2 = [(FedStatsPluginRecipe *)self biomeSQL];
    sqlQuery = [(FedStatsPluginRecipe *)self sqlQuery];
    v18 = v6;
    v10 = [biomeSQL2 runQuery:sqlQuery withError:&v18];
    v11 = v18;

    if (v10)
    {
      maskingDataParameters = [(FedStatsPluginRecipe *)self maskingDataParameters];

      v13 = +[FedStatsPluginLog logger];
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      if (maskingDataParameters)
      {
        if (v14)
        {
          [FedStatsPluginRecipe evaluateQueryWithError:];
        }

        maskingDataParameters2 = [(FedStatsPluginRecipe *)self maskingDataParameters];
        v16 = [maskingDataParameters2 maskedResultsFrom:v10];
      }

      else
      {
        if (v14)
        {
          [FedStatsPluginRecipe evaluateQueryWithError:];
        }

        v16 = v10;
      }
    }

    else if (error)
    {
      [FedStatsPluginError errorWithCode:400 underlyingError:v11 description:@"SQL Query Running Error"];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (error)
    {
      [FedStatsPluginError errorWithCode:400 underlyingError:v6 description:@"SQL Constructor Error"];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }

    v11 = v6;
  }

  return v16;
}

- (id)accessedStreams
{
  biomeSQL = [(FedStatsPluginRecipe *)self biomeSQL];
  accessedStreams = [biomeSQL accessedStreams];

  return accessedStreams;
}

- (id)collateQueryResults:(id)results
{
  v91 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = MEMORY[0x277D08450];
  dataTypeContent = [(FedStatsPluginRecipe *)self dataTypeContent];
  v7 = [v5 extractRequiredFieldsFrom:dataTypeContent];

  v8 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FedStatsPluginRecipe collateQueryResults:v7];
  }

  v9 = [FedStatsCollectionKeyGenerator alloc];
  clientIdentifier = [(FedStatsPluginRecipe *)self clientIdentifier];
  cohortNameList = [(FedStatsPluginRecipe *)self cohortNameList];
  assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
  selfCopy = self;
  recipeIdentifier = [(FedStatsPluginRecipe *)self recipeIdentifier];
  v63 = v7;
  v14 = [(FedStatsCollectionKeyGenerator *)v9 initWithPrefix:clientIdentifier cohortKeys:cohortNameList requiredFields:v7 assetProvider:assetProvider recipeIdentifier:recipeIdentifier];

  v15 = resultsCopy;
  v67 = v14;
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v79;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v79 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v78 + 1) + 8 * i);
        v77 = 0;
        v22 = [(FedStatsCollectionKeyGenerator *)v67 generateCollectionKeyForDataPoint:v21 error:&v77];
        v23 = v77;
        if (v22)
        {
          v24 = [dictionary objectForKey:v22];
          v25 = v24;
          if (v24)
          {
            [v24 arrayByAddingObject:v21];
          }

          else
          {
            v84 = v21;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
          }
          v27 = ;
          [dictionary setObject:v27 forKey:v22];
        }

        else
        {
          if (array)
          {
            v26 = [FedStatsPluginError errorWithCode:300 underlyingError:v23 description:@"Cannot generate collection key"];
            [array addObject:v26];
          }

          v25 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v86 = v23;
            _os_log_error_impl(&dword_24AB24000, v25, OS_LOG_TYPE_ERROR, "Cannot generate collection key. Error: %@", buf, 0xCu);
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
    }

    while (v18);
  }

  if ([array count])
  {
    v28 = [FedStatsPluginError errorWithCode:300 underlyingErrors:array description:@"Some collection keys cannot be generated"];
    v29 = v28;
  }

  else
  {
    v28 = 0;
  }

  v30 = selfCopy;

  v31 = v28;
  v32 = v63;
  v61 = v31;
  if (v31)
  {
    v33 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsPluginRecipe collateQueryResults:];
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    describe = [v31 describe];
    v35 = [describe countByEnumeratingWithState:&v73 objects:v83 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v74;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v74 != v37)
          {
            objc_enumerationMutation(describe);
          }

          v39 = *(*(&v73 + 1) + 8 * j);
          v40 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v87 = 138412290;
            v88 = v39;
            _os_log_debug_impl(&dword_24AB24000, v40, OS_LOG_TYPE_DEBUG, "%@", v87, 0xCu);
          }
        }

        v36 = [describe countByEnumeratingWithState:&v73 objects:v83 count:16];
      }

      while (v36);
    }

    v31 = v61;
  }

  defaultDonationParameters = [(FedStatsPluginRecipe *)selfCopy defaultDonationParameters];

  if (defaultDonationParameters)
  {
    v64 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dictionary, "count")}];
    v42 = MEMORY[0x277D08450];
    dataTypeContent2 = [(FedStatsPluginRecipe *)selfCopy dataTypeContent];
    v44 = [v42 defaultDataPointForDataTypeContent:dataTypeContent2];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v45 = dictionary;
    v46 = [v45 countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v70;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v70 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v69 + 1) + 8 * k);
          v51 = [FedStatsCollectionKeyGenerator extractCohortKeyValuesFrom:v50];
          defaultDonationParameters2 = [(FedStatsPluginRecipe *)v30 defaultDonationParameters];
          v53 = [defaultDonationParameters2 determineDefaultRecordCountFor:v51];

          if (v53 == -1)
          {
            v54 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *v87 = 138412290;
              v88 = v51;
              _os_log_error_impl(&dword_24AB24000, v54, OS_LOG_TYPE_ERROR, "Cannot sample default count for cohort value set %@", v87, 0xCu);
            }
          }

          else
          {
            v54 = [MEMORY[0x277CBEB18] arrayWithCapacity:v53];
            v55 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *v87 = 134218242;
              v88 = v53;
              v89 = 2112;
              v90 = v44;
              _os_log_debug_impl(&dword_24AB24000, v55, OS_LOG_TYPE_DEBUG, "Adding %lu default values = %@", v87, 0x16u);
            }

            for (; v53; --v53)
            {
              [v54 addObject:v44];
            }

            v56 = [v45 objectForKey:v50];
            v57 = [v56 arrayByAddingObjectsFromArray:v54];
            [v64 setObject:v57 forKey:v50];
          }

          v30 = selfCopy;
        }

        v47 = [v45 countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (v47);
    }

    v31 = v62;
    v32 = v63;
    v58 = dictionary;
  }

  else
  {
    v59 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsPluginRecipe collateQueryResults:];
    }

    v58 = dictionary;
    v64 = dictionary;
  }

  return v64;
}

- (id)assetKeysFromCollatedData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = dataCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [FedStatsCollectionKeyGenerator extractCohortKeyValuesFrom:*(*(&v18 + 1) + 8 * i), v18];
        v12 = MEMORY[0x277D08450];
        dataTypeContent = [(FedStatsPluginRecipe *)self dataTypeContent];
        v14 = [v12 extractAssetNamesFrom:dataTypeContent usingFieldValues:v11];

        [v5 addObjectsFromArray:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FedStatsPluginRecipe assetKeysFromCollatedData:v5];
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)assetURLsForAssetKeys:(id)keys
{
  v42 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = keysCopy;
  v27 = [v5 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v27)
  {
    v6 = *v35;
    selfCopy = self;
    obj = v5;
    v23 = *v35;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
        recipeIdentifier = [(FedStatsPluginRecipe *)self recipeIdentifier];
        v33 = 0;
        v11 = [assetProvider assetURLForRecipe:recipeIdentifier forKey:v8 error:&v33];
        v28 = v33;

        if (v11)
        {
          [v26 setObject:v11 forKey:v8];
        }

        else
        {
          v12 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v8;
            _os_log_error_impl(&dword_24AB24000, v12, OS_LOG_TYPE_ERROR, "Cannot download asset %@.", buf, 0xCu);
          }

          v13 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v40 = v8;
            _os_log_debug_impl(&dword_24AB24000, v13, OS_LOG_TYPE_DEBUG, "Cannot download asset %@. Error:", buf, 0xCu);
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          describe = [v28 describe];
          v15 = [describe countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v30;
            do
            {
              v18 = 0;
              do
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(describe);
                }

                v19 = *(*(&v29 + 1) + 8 * v18);
                v20 = +[FedStatsPluginLog logger];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v40 = v19;
                  _os_log_debug_impl(&dword_24AB24000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [describe countByEnumeratingWithState:&v29 objects:v38 count:16];
            }

            while (v16);
          }

          v6 = v23;
          self = selfCopy;
          v11 = 0;
        }

        ++v7;
      }

      while (v7 != v27);
      v5 = obj;
      v27 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v27);
  }

  v21 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [FedStatsPluginRecipe assetURLsForAssetKeys:];
  }

  return v26;
}

- (id)recordCollatedData:(id)data assetURLs:(id)ls
{
  v87 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lsCopy = ls;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = dataCopy;
  v49 = [dataCopy countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v49)
  {
    v47 = 0;
    v48 = *v77;
    *&v7 = 134218242;
    v46 = v7;
    v52 = lsCopy;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v77 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v76 + 1) + 8 * i);
        v10 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v81 = v9;
          _os_log_debug_impl(&dword_24AB24000, v10, OS_LOG_TYPE_DEBUG, "collectionKey = %@", buf, 0xCu);
        }

        v11 = [FedStatsCollectionKeyGenerator extractCohortKeyValuesFrom:v9];
        v12 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v81 = v11;
          _os_log_debug_impl(&dword_24AB24000, v12, OS_LOG_TYPE_DEBUG, "fieldValues = %@", buf, 0xCu);
        }

        v13 = MEMORY[0x277D08450];
        dataTypeContent = [(FedStatsPluginRecipe *)self dataTypeContent];
        v75 = 0;
        v15 = [v13 mutateDataTypeContent:dataTypeContent usingFieldValues:v11 assetURLs:lsCopy error:&v75];
        v57 = v75;

        v16 = +[FedStatsPluginLog logger];
        v17 = v16;
        v56 = v15;
        if (v15)
        {
          v54 = v11;
          v51 = i;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v81 = v15;
            _os_log_debug_impl(&dword_24AB24000, v17, OS_LOG_TYPE_DEBUG, "dataTypeContent = %@", buf, 0xCu);
          }

          v18 = MEMORY[0x277D08450];
          v19 = [obj objectForKey:v9];
          recordMetadata = [(FedStatsPluginRecipe *)self recordMetadata];
          v66 = 0;
          v21 = v18;
          v22 = v15;
          v23 = [v21 encodeDataArrayAndRecord:v19 dataTypeContent:v15 metadata:recordMetadata baseKey:v9 errorOut:&v66];
          describe2 = v66;

          v25 = +[FedStatsPluginLog logger];
          v26 = v25;
          lsCopy = v52;
          if (v23)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              unsignedIntegerValue = [v23 unsignedIntegerValue];
              *buf = v46;
              v81 = unsignedIntegerValue;
              v82 = 2112;
              v83 = v9;
              _os_log_debug_impl(&dword_24AB24000, v26, OS_LOG_TYPE_DEBUG, "Recorded %lu data for collection key '%@'", buf, 0x16u);
            }

            v47 += [v23 unsignedIntegerValue];
            v11 = v54;
          }

          else
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [FedStatsPluginRecipe recordCollatedData:v65 assetURLs:?];
            }

            v34 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [FedStatsPluginRecipe recordCollatedData:v63 assetURLs:?];
            }

            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            describe = [describe2 describe];
            v36 = [describe countByEnumeratingWithState:&v58 objects:v84 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v59;
              do
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v59 != v38)
                  {
                    objc_enumerationMutation(describe);
                  }

                  v40 = *(*(&v58 + 1) + 8 * j);
                  v41 = +[FedStatsPluginLog logger];
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v81 = v40;
                    _os_log_debug_impl(&dword_24AB24000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }
                }

                v37 = [describe countByEnumeratingWithState:&v58 objects:v84 count:16];
              }

              while (v37);
            }

            lsCopy = v52;
            v11 = v54;
            v22 = v56;
            v23 = 0;
          }

          i = v51;
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [FedStatsPluginRecipe recordCollatedData:v74 assetURLs:?];
          }

          v27 = +[FedStatsPluginLog logger];
          lsCopy = v52;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [FedStatsPluginRecipe recordCollatedData:v72 assetURLs:?];
          }

          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          describe2 = [v57 describe];
          v28 = [describe2 countByEnumeratingWithState:&v67 objects:v85 count:16];
          if (v28)
          {
            v29 = v28;
            v55 = v11;
            v30 = *v68;
            do
            {
              for (k = 0; k != v29; ++k)
              {
                if (*v68 != v30)
                {
                  objc_enumerationMutation(describe2);
                }

                v32 = *(*(&v67 + 1) + 8 * k);
                v33 = +[FedStatsPluginLog logger];
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v81 = v32;
                  _os_log_debug_impl(&dword_24AB24000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }

              v29 = [describe2 countByEnumeratingWithState:&v67 objects:v85 count:16];
            }

            while (v29);
            lsCopy = v52;
            v11 = v55;
          }

          v22 = 0;
        }
      }

      v49 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v49);
  }

  else
  {
    v47 = 0;
  }

  v43 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [FedStatsPluginRecipe recordCollatedData:? assetURLs:?];
  }

  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v47];

  return v44;
}

- (id)runRecipeWithError:(id *)error
{
  if ([(FedStatsPluginRecipe *)self checkDeviceOSVersionFilterWithError:?]&& [(FedStatsPluginRecipe *)self checkConsentWithError:error]&& [(FedStatsPluginRecipe *)self checkDeviceRegionCodeWithError:error])
  {
    v5 = [(FedStatsPluginRecipe *)self evaluateQueryWithError:error];
    v6 = v5;
    if (v5)
    {
      if ([v5 count])
      {
        v7 = [(FedStatsPluginRecipe *)self collateQueryResults:v6];
        v8 = [(FedStatsPluginRecipe *)self assetKeysFromCollatedData:v7];
        v9 = [(FedStatsPluginRecipe *)self assetURLsForAssetKeys:v8];
        v10 = [(FedStatsPluginRecipe *)self recordCollatedData:v7 assetURLs:v9];
        assetProvider = [(FedStatsPluginRecipe *)self assetProvider];
        [assetProvider removeAssets];
      }

      else
      {
        v13 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [FedStatsPluginRecipe runRecipeWithError:];
        }

        v10 = &unk_285E17B10;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = &unk_285E17B10;
  }

  return v10;
}

+ (void)recipeWithAssetProvider:recipeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)checkConsentWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_6(a1, a2);
  v5 = NSStringFromClass(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_5(&dword_24AB24000, v6, v7, "Running consent check for class %@");
}

- (void)checkConsentWithError:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_6(a1, a2);
  v5 = NSStringFromClass(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_5(&dword_24AB24000, v6, v7, "Consent check passed for class %@");
}

- (void)checkDeviceOSVersionFilterWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)evaluateQueryWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)evaluateQueryWithError:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)collateQueryResults:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)collateQueryResults:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)collateQueryResults:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)assetKeysFromCollatedData:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 allObjects];
  v2 = [v1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)assetURLsForAssetKeys:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)recordCollatedData:(void *)a1 assetURLs:.cold.5(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)runRecipeWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end