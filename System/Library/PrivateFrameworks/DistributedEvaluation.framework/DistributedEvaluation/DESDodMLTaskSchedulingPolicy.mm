@interface DESDodMLTaskSchedulingPolicy
- (DESDodMLTaskSchedulingPolicy)initWithAssetURL:(id)l error:(id *)error;
- (DESDodMLTaskSchedulingPolicy)initWithPolicyDict:(id)dict;
- (id)_policyForRecipeID:(id)d error:(id *)error;
- (id)predicateForRecipeID:(id)d error:(id *)error;
- (id)samplingRateForRecipeID:(id)d error:(id *)error;
@end

@implementation DESDodMLTaskSchedulingPolicy

- (DESDodMLTaskSchedulingPolicy)initWithAssetURL:(id)l error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v20 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:8 error:&v20];
    v8 = v20;
    if (v7)
    {
      v19 = v8;
      lCopy2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v19];
      v10 = v19;

      if (lCopy2)
      {
        self = [(DESDodMLTaskSchedulingPolicy *)self initWithPolicyDict:lCopy2];
        v8 = v10;
        selfCopy = self;
      }

      else
      {
        if (error)
        {
          v15 = MEMORY[0x277CCA9B8];
          v21[0] = *MEMORY[0x277CCA450];
          lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to decode JSON object from URL = (%@)", lCopy];
          v21[1] = *MEMORY[0x277CCA7E8];
          v22[0] = lCopy;
          v22[1] = v10;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
          *error = [v15 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5005 userInfo:v17];
        }

        selfCopy = 0;
        v8 = v10;
      }
    }

    else
    {
      if (!error)
      {
        selfCopy = 0;
        goto LABEL_13;
      }

      v13 = MEMORY[0x277CCA9B8];
      v23[0] = *MEMORY[0x277CCA450];
      lCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to read URL = (%@)", lCopy];
      v23[1] = *MEMORY[0x277CCA7E8];
      v24[0] = lCopy2;
      v24[1] = v8;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      *error = [v13 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5005 userInfo:v14];

      selfCopy = 0;
    }

LABEL_13:
    goto LABEL_14;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_15;
  }

  v12 = MEMORY[0x277CCA9B8];
  v25 = *MEMORY[0x277CCA450];
  v26[0] = @"Nil policy URL";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [v12 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5002 userInfo:v8];
  *error = selfCopy = 0;
LABEL_14:

LABEL_15:
  return selfCopy;
}

- (DESDodMLTaskSchedulingPolicy)initWithPolicyDict:(id)dict
{
  v59 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v55.receiver = self;
  v55.super_class = DESDodMLTaskSchedulingPolicy;
  v5 = [(DESDodMLTaskSchedulingPolicy *)&v55 init];
  v6 = v5;
  if (v5)
  {
    v5->_recipeCountLimit = 1;
    *&v5->_timeLimit = xmmword_249019F10;
    if (dictCopy)
    {
      v7 = [dictCopy objectForKeyedSubscript:@"recipes"];
      recipes = v6->_recipes;
      v6->_recipes = v7;

      v9 = [dictCopy objectForKeyedSubscript:@"evaluation_limits"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 objectForKeyedSubscript:@"time_seconds"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 doubleValue];
          v12 = v11;
          v13 = 0x4072C00000000000;
          if (v12 < 300.0)
          {
            [v10 doubleValue];
          }

          *&v6->_timeLimit = v13;
        }

        v14 = [v9 objectForKeyedSubscript:@"recipe_count"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6->_recipeCountLimit = [v14 unsignedIntegerValue];
        }

        v15 = [v9 objectForKeyedSubscript:@"period_in_seconds"];
        if (allowCustomWakeUpPeriod())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [(DESDodMLTaskSchedulingPolicy *)v15 initWithPolicyDict:v16];
            }

            v6->_period = [v15 unsignedIntegerValue];
          }
        }
      }

      v17 = [dictCopy objectForKeyedSubscript:@"return_routes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v51 objects:v58 count:16];
        if (v19)
        {
          v20 = v19;
          v48 = v17;
          v49 = v9;
          v21 = v6;
          v50 = dictCopy;
          v22 = *v52;
          do
          {
            v23 = 0;
            do
            {
              if (*v52 != v22)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v51 + 1) + 8 * v23);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v24 isEqualToString:@"parsec"])
                {
                  v25 = +[DESLogging coreChannel];
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_248FF7000, v25, OS_LOG_TYPE_INFO, "Enabling Parsec return route", buf, 2u);
                  }

                  v21->_parsecReturnRouteEnabled = 1;
                }

                else if ([v24 isEqualToString:@"origin"])
                {
                  v27 = +[DESLogging coreChannel];
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_248FF7000, v27, OS_LOG_TYPE_INFO, "Enabling Origin return route", buf, 2u);
                  }

                  v21->_originReturnRouteEnabled = 1;
                }

                else if ([v24 isEqualToString:@"dedisco"])
                {
                  v28 = +[DESLogging coreChannel];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_248FF7000, v28, OS_LOG_TYPE_INFO, "Enabling Dedisco return route", buf, 2u);
                  }

                  v21->_dediscoReturnRouteEnabled = 1;
                }
              }

              else
              {
                v26 = +[DESLogging coreChannel];
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v57 = v24;
                  _os_log_impl(&dword_248FF7000, v26, OS_LOG_TYPE_INFO, "Ignoring invalid return route: %@", buf, 0xCu);
                }
              }

              ++v23;
            }

            while (v20 != v23);
            v29 = [v18 countByEnumeratingWithState:&v51 objects:v58 count:16];
            v20 = v29;
          }

          while (v29);
          v6 = v21;
          v9 = v49;
          dictCopy = v50;
          v17 = v48;
        }
      }

      else
      {
        v18 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v57 = v17;
          _os_log_impl(&dword_248FF7000, v18, OS_LOG_TYPE_INFO, "Ignoring invalid or blank return routes: %@", buf, 0xCu);
        }
      }

      if (!v6->_originReturnRouteEnabled && !v6->_parsecReturnRouteEnabled && !v6->_dediscoReturnRouteEnabled)
      {
        v6->_originReturnRouteEnabled = 1;
      }

      v31 = [dictCopy objectForKeyedSubscript:@"host"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = MEMORY[0x277CBEBC0];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@", v31];
        v34 = [v32 URLWithString:v33];

        if (v34)
        {
          v35 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v57 = v34;
            _os_log_impl(&dword_248FF7000, v35, OS_LOG_TYPE_INFO, "Setting _postback base URL to %@", buf, 0xCu);
          }

          objc_storeStrong(&v6->_postbackBaseURL, v34);
        }
      }

      else
      {
        v34 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v57 = v31;
          _os_log_impl(&dword_248FF7000, v34, OS_LOG_TYPE_INFO, "Ignoring invalid policy host: %@", buf, 0xCu);
        }
      }

      v36 = [dictCopy objectForKeyedSubscript:@"telemetry"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = [v36 objectForKeyedSubscript:@"href"];
        v38 = [v36 objectForKeyedSubscript:@"sampling_rate"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v39 = v17;
          v40 = v9;
          v41 = [MEMORY[0x277CBEBC0] URLWithString:v37];
          objc_storeStrong(&v6->_telemetryURL, v41);
          if (v38 && ([v38 doubleValue], v42 <= 1.0) && (objc_msgSend(v38, "doubleValue"), v43 > 0.0))
          {
            v44 = v38;
            p_super = &v6->_telemetrySamplingRate->super.super;
            v6->_telemetrySamplingRate = v44;
          }

          else
          {
            p_super = +[DESLogging coreChannel];
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              [(DESDodMLTaskSchedulingPolicy *)v36 initWithPolicyDict:?];
            }
          }

          v9 = v40;
          v17 = v39;
        }

        else
        {
          v41 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [(DESDodMLTaskSchedulingPolicy *)v36 initWithPolicyDict:v41];
          }
        }
      }

      else
      {
        v37 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_248FF7000, v37, OS_LOG_TYPE_INFO, "Skipping telemetry because none was specified in the policy", buf, 2u);
        }
      }

      v46 = v6;
    }

    else
    {
      v30 = v5;
    }
  }

  return v6;
}

- (id)_policyForRecipeID:(id)d error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(NSDictionary *)self->_recipes objectForKeyedSubscript:dCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = v7;
  }

  else if (error)
  {
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA470];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid policy for recipeID=%@, policy=%@", dCopy, v7];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *error = [v8 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1513 userInfo:v10];

    error = 0;
  }

  return error;
}

- (id)samplingRateForRecipeID:(id)d error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(DESDodMLTaskSchedulingPolicy *)self _policyForRecipeID:dCopy error:error];
  v8 = v7;
  if (!v7)
  {
    error = 0;
    goto LABEL_14;
  }

  v9 = [v7 objectForKeyedSubscript:@"sampling_rate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dCopy2 = v9;
    [dCopy2 doubleValue];
    if (v11 <= 1.0 && v11 > 0.0)
    {
      dCopy2 = dCopy2;
      error = dCopy2;
LABEL_12:

      goto LABEL_13;
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v14 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA470];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid sampling rate=%f, recipeID=%@", *&v11, dCopy];
    v18 = dCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *error = [v14 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1513 userInfo:v15];

LABEL_11:
    error = 0;
    goto LABEL_12;
  }

  if (error)
  {
    v12 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA470];
    dCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid sampling rate in policy for recipeID: %@", dCopy];
    v20[0] = dCopy2;
    dCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v12 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1513 userInfo:dCopy];
    goto LABEL_11;
  }

LABEL_13:

LABEL_14:

  return error;
}

- (id)predicateForRecipeID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(DESDodMLTaskSchedulingPolicy *)self _policyForRecipeID:dCopy error:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"predicate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      error = v9;
    }

    else if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid predicate in recipeID=%@", dCopy, *MEMORY[0x277CCA470]];
      v15[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *error = [v10 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1513 userInfo:v12];

      error = 0;
    }
  }

  else
  {
    error = 0;
  }

  return error;
}

- (void)initWithPolicyDict:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 unsignedIntegerValue];
  _os_log_debug_impl(&dword_248FF7000, a2, OS_LOG_TYPE_DEBUG, "Custom period = %lu in policy.", &v3, 0xCu);
}

- (void)initWithPolicyDict:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Ignoring malformed telemetry %@", &v2, 0xCu);
}

- (void)initWithPolicyDict:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Skipping never-valid telemetry %@", &v2, 0xCu);
}

@end