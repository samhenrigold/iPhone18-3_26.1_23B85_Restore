@interface SGWordBoundaryQuickTypeInference
+ (BOOL)_probablePriorPredictionInContext:(id)context predictedLabel:(int64_t)label;
+ (id)quickTypeTriggerForContext:(id)context localeIdentifier:(id)identifier modelConfigPath:(id)path espressoBinFilePath:(id)filePath useContactNames:(BOOL)names;
@end

@implementation SGWordBoundaryQuickTypeInference

+ (BOOL)_probablePriorPredictionInContext:(id)context predictedLabel:(int64_t)label
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__1496;
  v12[4] = __Block_byref_object_dispose__1497;
  v13 = [SGDataDetectorMatch detectionsInPlainText:contextCopy baseDate:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__SGWordBoundaryQuickTypeInference__probablePriorPredictionInContext_predictedLabel___block_invoke;
  v11[3] = &unk_27894B0F0;
  v11[4] = v12;
  v6 = MEMORY[0x2383809F0](v11);
  v7 = v6;
  if ((label - 1) >= 6)
  {
    v9 = sgQuicktypeLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      labelCopy = label;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "SGWordBoundaryQuickTypeInference - Unexpected label %ld", buf, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    v8 = (*(v6 + 16))(v6, dword_232106DB8[label - 1]);
  }

  _Block_object_dispose(v12, 8);
  return v8;
}

uint64_t __85__SGWordBoundaryQuickTypeInference__probablePriorPredictionInContext_predictedLabel___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * v7) matchType] == a2)
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (id)quickTypeTriggerForContext:(id)context localeIdentifier:(id)identifier modelConfigPath:(id)path espressoBinFilePath:(id)filePath useContactNames:(BOOL)names
{
  v81 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  pathCopy = path;
  filePathCopy = filePath;
  v15 = [MEMORY[0x277D02548] languageForLocaleIdentifier:identifierCopy];
  v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:pathCopy];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 objectForKeyedSubscript:@"PREDICTION_PARAMETERS"];

    if (v18)
    {
      v19 = [v17 objectForKeyedSubscript:@"PREDICTION_PARAMETERS"];
      v20 = [v19 objectForKeyedSubscript:@"TARGET_LANGUAGE"];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 isEqualToString:v15];

        if (v22)
        {
          v23 = [v17 objectForKeyedSubscript:@"PREDICTION_PARAMETERS"];
          v55 = [v23 objectForKeyedSubscript:@"CONFIDENCE_THRESHOLDS"];

          if (!v55 || objc_msgSend_count(v55) != 7)
          {
            v36 = sgQuicktypeLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v39 = v55;
              if (v55)
              {
                v39 = objc_msgSend_count(v55);
              }

              *v77 = 134218240;
              *&v77[4] = v39;
              *&v77[12] = 2048;
              *&v77[14] = 7;
              _os_log_error_impl(&dword_231E60000, v36, OS_LOG_TYPE_ERROR, "SGWordBoundaryQuickTypeInference - Unexpected number of confidence thresholds (%ld rather than %ld)", v77, 0x16u);
            }

            v34 = 0;
            goto LABEL_31;
          }

          if (quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__onceToken != -1)
          {
            dispatch_once(&quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__onceToken, &__block_literal_global_1505);
          }

          *v77 = 0;
          *&v77[8] = v77;
          *&v77[16] = 0x3032000000;
          v78 = __Block_byref_object_copy__1496;
          v79 = __Block_byref_object_dispose__1497;
          v80 = &stru_284703F00;
          v63 = 0;
          v64 = &v63;
          v65 = 0x3032000000;
          v66 = __Block_byref_object_copy__1496;
          v67 = __Block_byref_object_dispose__1497;
          v68 = 0;
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke_31;
          v57[3] = &unk_27894B0C8;
          v60 = &v63;
          v61 = v77;
          namesCopy = names;
          v58 = v15;
          v24 = contextCopy;
          v59 = v24;
          v51 = MEMORY[0x2383809F0](v57);
          v75[0] = @"INPUT_TEXT";
          v75[1] = @"NEGATIVE_SAMPLE_CHOPLESS";
          v76[0] = v24;
          v76[1] = MEMORY[0x277CBEC38];
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
          v25 = [(SGEspressoModel *)SGContactSharingModel modelWithConfigPath:pathCopy binPath:filePathCopy];
          v50 = v25;
          if (!v25)
          {
            log = sgQuicktypeLogHandle();
            if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v70 = pathCopy;
              v71 = 2112;
              v72 = filePathCopy;
              _os_log_fault_impl(&dword_231E60000, log, OS_LOG_TYPE_FAULT, "SGWordBoundaryQuickTypeInference - Could not initialize model with config path: %@, bin path: %@", buf, 0x16u);
            }

            v34 = 0;
            goto LABEL_30;
          }

          v48 = v24;
          log = [v25 predictForInput:v54];
          v52 = [SGContactSharingModel labelForProbabilities:?];
          if (!v52)
          {
            v32 = sgQuicktypeLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v46 = [log objectAtIndexedSubscript:0];
              *buf = 138412290;
              v70 = v46;
              _os_log_debug_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEBUG, "SGWordBoundaryQuickTypeInference - Irrelevant Label predicted with score: %@", buf, 0xCu);
            }

            goto LABEL_28;
          }

          v26 = [log objectAtIndexedSubscript:?];
          [v26 doubleValue];
          v28 = v27;
          v29 = [v55 objectAtIndexedSubscript:v52];
          [v29 doubleValue];
          v31 = v28 < v30;

          if (v31)
          {
            v32 = sgQuicktypeLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v49 = [log objectAtIndexedSubscript:v52];
              v33 = [v55 objectAtIndexedSubscript:v52];
              *buf = 134218498;
              v70 = v52;
              v71 = 2112;
              v72 = v49;
              v73 = 2112;
              v74 = v33;
              _os_log_debug_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEBUG, "SGWordBoundaryQuickTypeInference - Predicted label (%ld) confidence (%@), falls below confidence threshold (%@)!", buf, 0x20u);
            }
          }

          else
          {
            if (![self _probablePriorPredictionInContext:v48 predictedLabel:v52])
            {
              v40 = sgQuicktypeLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                v47 = [log objectAtIndexedSubscript:v52];
                *buf = 134218498;
                v70 = 4;
                v71 = 2048;
                v72 = v52;
                v73 = 2112;
                v74 = v47;
                _os_log_debug_impl(&dword_231E60000, v40, OS_LOG_TYPE_DEBUG, "SGWordBoundaryQuickTypeInference - objective: %lu, prediction: %ld, score: %@", buf, 0x20u);
              }

              v41 = quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__triggerForLabel;
              v42 = [MEMORY[0x277CCABB0] numberWithInteger:v52];
              v32 = [v41 objectForKeyedSubscript:v42];

              if ((v52 - 4) > 2)
              {
                v44 = v32;
                v32 = v44;
              }

              else
              {
                v51[2]();
                v43 = v64[5];
                if (v43 == *(*&v77[8] + 40))
                {
                  v45 = sgQuicktypeLogHandle();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134217984;
                    v70 = v52;
                    _os_log_debug_impl(&dword_231E60000, v45, OS_LOG_TYPE_DEBUG, "SGWordBoundaryQuickTypeInference - No name found for thirdparty objective: %ld", buf, 0xCu);
                  }

                  goto LABEL_28;
                }

                v44 = __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke_2(v32, v43);
              }

              v34 = v44;
              goto LABEL_29;
            }

            v32 = sgQuicktypeLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [log objectAtIndexedSubscript:v52];
              *buf = 134218242;
              v70 = v52;
              v71 = 2112;
              v72 = v38;
              _os_log_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEFAULT, "SGWordBoundaryQuickTypeInference - probable prior prediction of label %ld (score: %@) detected.", buf, 0x16u);
            }
          }

LABEL_28:
          v34 = 0;
LABEL_29:

LABEL_30:
          _Block_object_dispose(&v63, 8);

          _Block_object_dispose(v77, 8);
LABEL_31:
          v35 = v55;
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
      }

      v35 = sgQuicktypeLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *v77 = 138412802;
        *&v77[4] = identifierCopy;
        *&v77[12] = 2112;
        *&v77[14] = v15;
        *&v77[22] = 2112;
        v78 = v21;
        _os_log_error_impl(&dword_231E60000, v35, OS_LOG_TYPE_ERROR, "SGWordBoundaryQuickTypeInference - localeIdentifier/language (%@/%@) do not match configured target language (%@)", v77, 0x20u);
      }

      v34 = 0;
      goto LABEL_32;
    }
  }

  v21 = sgQuicktypeLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *v77 = 0;
    _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "SGWordBoundaryQuickTypeInference - Invalid model config!", v77, 2u);
  }

  v34 = 0;
LABEL_33:

  return v34;
}

void __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke_31(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (!v4)
  {
    objc_storeStrong(v3, *(*(*(a1 + 56) + 8) + 40));
    if (*(a1 + 64))
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    v6 = [[SGNameDetector alloc] initWithLanguage:*(a1 + 32)];
    v14 = [(SGNameDetector *)v6 detectNames:*(a1 + 40) algorithm:v5];

    if (objc_msgSend_count(v14) == 1)
    {
      v7 = [v14 firstObject];
      v8 = *(a1 + 40);
      v9 = [v7 range];
      v11 = [v8 substringWithRange:{v9, v10}];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }
}

id __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke_2(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 mutableCopy];
  v7 = quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__givenNameQualifier;
  v8[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 setObject:v5 forKey:quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__qualifiersKey];

  return v4;
}

void __132__SGWordBoundaryQuickTypeInference_quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames___block_invoke()
{
  v42[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D22F30];
  v1 = *MEMORY[0x277D22FE8];
  v2 = *MEMORY[0x277D22F40];
  v3 = *MEMORY[0x277D22F18];
  v4 = *MEMORY[0x277D23050];
  v5 = *MEMORY[0x277D22FE0];
  v6 = *MEMORY[0x277D23028];
  v7 = *MEMORY[0x277D22F68];
  v8 = *MEMORY[0x277D23040];
  v9 = *MEMORY[0x277D22FF8];
  v10 = quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__qualifiersKey;
  quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__qualifiersKey = v9;
  v26 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v14 = v4;
  v15 = v3;
  v16 = v2;
  v17 = v1;
  v18 = v0;

  objc_storeStrong(&quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__givenNameQualifier, *MEMORY[0x277D22F80]);
  v40[2] = v11;
  v41[0] = &unk_284749170;
  v39[0] = v18;
  v39[1] = v14;
  v40[0] = v17;
  v40[1] = v13;
  v39[2] = v12;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
  v42[0] = v28;
  v41[1] = &unk_284749188;
  v37[0] = v18;
  v37[1] = v14;
  v38[0] = v16;
  v38[1] = v13;
  v37[2] = v12;
  v38[2] = v11;
  v27 = v11;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v42[1] = v25;
  v41[2] = &unk_2847491A0;
  v35[0] = v18;
  v35[1] = v14;
  v36[0] = v15;
  v36[1] = v13;
  v35[2] = v12;
  v36[2] = v11;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v42[2] = v24;
  v41[3] = &unk_2847491B8;
  v33[0] = v18;
  v33[1] = v14;
  v34[0] = v17;
  v34[1] = v13;
  v33[2] = v12;
  v34[2] = v26;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v42[3] = v19;
  v41[4] = &unk_2847491D0;
  v31[0] = v18;
  v31[1] = v14;
  v32[0] = v16;
  v32[1] = v13;
  v31[2] = v12;
  v32[2] = v26;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v42[4] = v20;
  v41[5] = &unk_2847491E8;
  v29[0] = v18;
  v29[1] = v14;
  v30[0] = v15;
  v30[1] = v13;
  v29[2] = v12;
  v30[2] = v26;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v42[5] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:6];
  v23 = quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__triggerForLabel;
  quickTypeTriggerForContext_localeIdentifier_modelConfigPath_espressoBinFilePath_useContactNames__triggerForLabel = v22;
}

@end