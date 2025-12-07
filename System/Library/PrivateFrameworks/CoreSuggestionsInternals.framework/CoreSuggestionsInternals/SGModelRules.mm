@interface SGModelRules
+ (BOOL)shouldCollectTrainingDataForObjective:(unint64_t)objective language:(id)language;
+ (id)_modelsAvailabeForMode:(unint64_t)mode objective:(unint64_t)objective language:(id)language;
+ (void)loadBinaryClassificationModelFromMobileAssetForObjective:(unint64_t)objective language:(id)language withBlock:(id)block;
@end

@implementation SGModelRules

+ (BOOL)shouldCollectTrainingDataForObjective:(unint64_t)objective language:(id)language
{
  v17 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v7 = [self _modelsAvailabeForMode:0 objective:objective language:languageCopy];
  v8 = objc_msgSend_count(v7);
  if (v8 && objc_msgSend_count(v7) >= 2)
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = 134218498;
      objectiveCopy = objective;
      v13 = 2112;
      v14 = languageCopy;
      v15 = 2112;
      v16 = v7;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "Multiple model names specified to turn on data collection (objective: %lu, language: %@, models: %@.", &v11, 0x20u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  return v8 != 0;
}

+ (id)_modelsAvailabeForMode:(unint64_t)mode objective:(unint64_t)objective language:(id)language
{
  v7 = MEMORY[0x277D02558];
  languageCopy = language;
  rules = [v7 rules];
  v10 = [rules objectForKeyedSubscript:@"SGDetectedAttributeDissector"];
  v11 = [v10 objectForKeyedSubscript:languageCopy];

  if (objective >= 8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *rulesKeyForObjective(SGModelObjective)"];
    [currentHandler handleFailureInFunction:v13 file:@"SGModels.m" lineNumber:351 description:{@"Unknown SGModelObjective = %lu", objective}];
  }

  else
  {
    objective = off_27894AEB0[objective];
  }

  if (mode >= 3)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *rulesKeyForMode(SGModelMode)"];
    [currentHandler2 handleFailureInFunction:v18 file:@"SGModels.m" lineNumber:361 description:{@"Unknown SGModelMode = %lu", mode}];

    __break(1u);
  }

  else
  {
    v14 = [v11 objectForKeyedSubscript:off_27894AEF0[mode]];
    v15 = [v14 objectForKeyedSubscript:objective];

    return v15;
  }

  return result;
}

+ (void)loadBinaryClassificationModelFromMobileAssetForObjective:(unint64_t)objective language:(id)language withBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [self _modelsAvailabeForMode:1 objective:objective language:languageCopy];
  if (objc_msgSend_count(v11) < 2)
  {
    if (objc_msgSend_count(v11) == 1)
    {
      firstObject = [v11 firstObject];
      v14 = [SGBinaryClassificationModel modelFromMobileAssetForName:firstObject language:languageCopy];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        blockCopy[2](blockCopy, v14);
      }

      else
      {
        v15 = sgLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v16 = 134218498;
          objectiveCopy3 = objective;
          v18 = 2112;
          v19 = languageCopy;
          v20 = 2112;
          v21 = firstObject;
          _os_log_fault_impl(&dword_231E60000, v15, OS_LOG_TYPE_FAULT, "Failed to load model (objective: %lu, langauge: %@, name: %@)", &v16, 0x20u);
        }

        if (_PASEvaluateLogFaultAndProbCrashCriteria())
        {
LABEL_18:
          abort();
        }
      }
    }

    else
    {
      firstObject = sgLogHandle();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEBUG))
      {
        v16 = 134218242;
        objectiveCopy3 = objective;
        v18 = 2112;
        v19 = languageCopy;
        _os_log_debug_impl(&dword_231E60000, firstObject, OS_LOG_TYPE_DEBUG, "No prediction model specified for objective %lu, language: %@", &v16, 0x16u);
      }
    }
  }

  else
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v16 = 134218498;
      objectiveCopy3 = objective;
      v18 = 2112;
      v19 = languageCopy;
      v20 = 2112;
      v21 = v11;
      _os_log_fault_impl(&dword_231E60000, v12, OS_LOG_TYPE_FAULT, "More than one prediction model specified for objective %lu, language: %@, models: %@", &v16, 0x20u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v10);
}

@end