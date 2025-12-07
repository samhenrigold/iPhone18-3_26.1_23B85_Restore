@interface DESGaussianAlgorithmParameters
- (BOOL)calculateAndVerifyPerChunkClippingBoundsIn:(id)in withOverallClippingBound:(double)bound;
- (DESGaussianAlgorithmParameters)initWith:(id)with epsilon:(double)epsilon delta:(double)delta clippingBound:(double)bound momentsAccountantParameters:(id)parameters;
- (DESGaussianAlgorithmParameters)initWith:(id)with recipe:(id)recipe;
- (NSDictionary)parameters;
- (void)addPerChunkParametersWith:(double)with numChunks:(unint64_t)chunks;
@end

@implementation DESGaussianAlgorithmParameters

- (DESGaussianAlgorithmParameters)initWith:(id)with recipe:(id)recipe
{
  withCopy = with;
  recipeCopy = recipe;
  recipeUserInfo = [recipeCopy recipeUserInfo];
  v9 = [recipeUserInfo objectForKeyedSubscript:@"maxNorm"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v21 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
    }

    goto LABEL_22;
  }

  recipeUserInfo2 = [recipeCopy recipeUserInfo];
  v12 = [recipeUserInfo2 objectForKeyedSubscript:@"maxNorm"];
  [v12 doubleValue];
  v14 = v13;

  recipeUserInfo3 = [recipeCopy recipeUserInfo];
  v16 = [recipeUserInfo3 objectForKeyedSubscript:@"DifferentialPrivacyParameters"];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  recipeUserInfo4 = [recipeCopy recipeUserInfo];
  v19 = recipeUserInfo4;
  if (v17)
  {
    v20 = @"DifferentialPrivacyParameters";
  }

  else
  {
    v22 = [recipeUserInfo4 objectForKeyedSubscript:@"LocalDifferentialPrivacyParameters"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      v21 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
      }

      goto LABEL_22;
    }

    recipeUserInfo4 = [recipeCopy recipeUserInfo];
    v19 = recipeUserInfo4;
    v20 = @"LocalDifferentialPrivacyParameters";
  }

  v21 = [recipeUserInfo4 objectForKeyedSubscript:v20];

  v24 = [v21 objectForKeyedSubscript:@"mechanism"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v21 objectForKeyedSubscript:@"mechanism"];
    v26 = [v25 isEqualToString:@"gaussian"];

    if (v26)
    {
      v27 = [v21 objectForKeyedSubscript:@"epsilon"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [v21 objectForKeyedSubscript:@"delta"];
        objc_opt_class();
        v29 = objc_opt_isKindOfClass();

        if (v29)
        {
          v30 = [v21 objectForKeyedSubscript:@"MomentsAccountantParameters"];

          if (v30)
          {
            v31 = [v21 objectForKeyedSubscript:@"MomentsAccountantParameters"];
            objc_opt_class();
            v32 = objc_opt_isKindOfClass();

            if ((v32 & 1) == 0)
            {
              v30 = +[DESLogging coreChannel];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
              }

              selfCopy = 0;
              goto LABEL_30;
            }

            v30 = [v21 objectForKeyedSubscript:@"MomentsAccountantParameters"];
          }

          v33 = [v21 objectForKeyedSubscript:@"epsilon"];
          [v33 doubleValue];
          v35 = v34;

          v36 = [v21 objectForKeyedSubscript:@"delta"];
          [v36 doubleValue];
          v38 = v37;

          self = [(DESGaussianAlgorithmParameters *)self initWith:withCopy epsilon:v30 delta:v35 clippingBound:v38 momentsAccountantParameters:v14];
          selfCopy = self;
LABEL_30:

          goto LABEL_23;
        }
      }

      else
      {
      }

      v40 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  v40 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    [DESGaussianAlgorithmParameters initWith:recipeCopy recipe:?];
  }

LABEL_19:

LABEL_22:
  selfCopy = 0;
LABEL_23:

  return selfCopy;
}

- (DESGaussianAlgorithmParameters)initWith:(id)with epsilon:(double)epsilon delta:(double)delta clippingBound:(double)bound momentsAccountantParameters:(id)parameters
{
  withCopy = with;
  v65[6] = *MEMORY[0x277D85DE8];
  withCopy2 = with;
  parametersCopy = parameters;
  v61.receiver = self;
  v61.super_class = DESGaussianAlgorithmParameters;
  v15 = [(DESGaussianAlgorithmParameters *)&v61 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_25;
  }

  v15->_epsilon = epsilon;
  v15->_delta = delta;
  v15->_clippingBound = bound;
  momentsAccountantParameters = v15->_momentsAccountantParameters;
  v15->_momentsAccountantParameters = 0;

  if (!parametersCopy)
  {
    calculateSigmaFromEpsilonAndDeltaForUnitL2Norm(epsilon, delta);
    v16->_sigma = sigma;
LABEL_20:
    if ((*&sigma & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }

    objc_storeStrong(&v16->_key, withCopy);
    v63[0] = @"GaussianFromSigma";
    v62[0] = @"Mechanism";
    v62[1] = @"OverallEpsilon";
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:epsilon];
    v63[1] = v37;
    v62[2] = @"OverallDelta";
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:delta];
    v63[2] = v38;
    v62[3] = @"OverallClippingBound";
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:bound];
    v63[3] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:4];

    v41 = [v40 mutableCopy];
    parameters = v16->_parameters;
    v16->_parameters = v41;

    if (v16->_momentsAccountantParameters)
    {
      [(NSMutableDictionary *)v16->_parameters addEntriesFromDictionary:?];
    }

LABEL_25:
    v36 = v16;
    goto LABEL_26;
  }

  v54 = withCopy;
  v65[0] = @"RenyiOrder";
  v65[1] = @"CohortSigma";
  v65[2] = @"NumIterations";
  v65[3] = @"MaxCohortSize";
  v65[4] = @"CurrentCohortSize";
  v65[5] = @"PopulationSize";
  [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:6];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v18 = v60 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v58;
    v55 = v16;
    v56 = withCopy2;
    while (2)
    {
      v22 = v18;
      for (i = 0; i != v20; ++i)
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(v22);
        }

        v24 = *(*(&v57 + 1) + 8 * i);
        v25 = [parametersCopy objectForKeyedSubscript:v24];
        if (v25)
        {
          v26 = v25;
          v27 = [parametersCopy objectForKeyedSubscript:v24];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            continue;
          }
        }

        v34 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [DESGaussianAlgorithmParameters initWith:epsilon:delta:clippingBound:momentsAccountantParameters:];
        }

        v18 = v22;
        v33 = v22;
        v16 = v55;
        withCopy2 = v56;
        goto LABEL_18;
      }

      v18 = v22;
      v20 = [v22 countByEnumeratingWithState:&v57 objects:v64 count:16];
      v16 = v55;
      withCopy2 = v56;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v29 = [parametersCopy dictionaryWithValuesForKeys:v18];
  v30 = v16->_momentsAccountantParameters;
  v16->_momentsAccountantParameters = v29;

  v31 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"RenyiOrder"];
  intValue = [v31 intValue];

  if ((intValue - 33) > 0xFFFFFFE0)
  {
    v44 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"NumIterations"];
    longLongValue = [v44 longLongValue];

    if (longLongValue <= 0)
    {
      v33 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:epsilon:delta:clippingBound:momentsAccountantParameters:];
      }

      goto LABEL_18;
    }

    v46 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"MaxCohortSize"];
    longLongValue2 = [v46 longLongValue];

    v48 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"CurrentCohortSize"];
    longLongValue3 = [v48 longLongValue];

    v50 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"PopulationSize"];
    longLongValue4 = [v50 longLongValue];

    if (longLongValue2 < 1 || longLongValue3 < 1 || longLongValue4 < 1 || longLongValue3 > longLongValue2 || longLongValue2 > longLongValue4)
    {
      v33 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [DESGaussianAlgorithmParameters initWith:epsilon:delta:clippingBound:momentsAccountantParameters:];
      }

      goto LABEL_18;
    }

    v52 = [(NSDictionary *)v16->_momentsAccountantParameters objectForKeyedSubscript:@"CohortSigma"];
    [v52 doubleValue];
    v16->_sigma = v53;

    sigma = v16->_sigma;
    withCopy = v54;
    goto LABEL_20;
  }

  v33 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    [DESGaussianAlgorithmParameters initWith:epsilon:delta:clippingBound:momentsAccountantParameters:];
  }

LABEL_18:

LABEL_21:
  v36 = 0;
LABEL_26:

  return v36;
}

- (void)addPerChunkParametersWith:(double)with numChunks:(unint64_t)chunks
{
  [(DESGaussianAlgorithmParameters *)self sigma];
  if (chunks != 1)
  {
    v7 = v7 * self->_clippingBound / with;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [(NSMutableDictionary *)self->_parameters setObject:v8 forKeyedSubscript:@"SigmaAfterNormalizing"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:with];
  [(NSMutableDictionary *)self->_parameters setObject:v9 forKeyedSubscript:@"ClippingBound"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:chunks];
  [(NSMutableDictionary *)self->_parameters setObject:v10 forKeyedSubscript:@"NumChunks"];
}

- (BOOL)calculateAndVerifyPerChunkClippingBoundsIn:(id)in withOverallClippingBound:(double)bound
{
  v38 = *MEMORY[0x277D85DE8];
  inCopy = in;
  v7 = [inCopy count];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = inCopy;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    v12 = bound / sqrt(v7);
    v13 = 0.0;
    v14 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        clippingBound = [v16 clippingBound];
        v18 = clippingBound;
        if (clippingBound && ([clippingBound doubleValue], v19 != 0.0))
        {
          [v18 doubleValue];
          [v18 doubleValue];
        }

        else
        {
          v14 = 0;
          v20 = v12;
        }

        v13 = v13 + v20 * v20;
        v21 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v16 setClippingBound:v21];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v10);

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }

    v22 = sqrt(v13);
  }

  else
  {

    v22 = 0.0;
  }

  if (almostEqualDBLWithAccuracy(v22, bound, 0.0001))
  {
LABEL_16:
    v23 = 1;
    goto LABEL_20;
  }

  v24 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v26 = [(DESGaussianAlgorithmParameters *)self key];
    *buf = 134218498;
    v32 = v22;
    v33 = 2048;
    boundCopy = bound;
    v35 = 2112;
    v36 = v26;
    _os_log_error_impl(&dword_248FF7000, v24, OS_LOG_TYPE_ERROR, "Per chunk clipping bound root sum squared does not match overall clipping bound: %f vs. %f, for %@", buf, 0x20u);
  }

  v23 = 0;
LABEL_20:

  return v23;
}

- (NSDictionary)parameters
{
  v2 = [(NSMutableDictionary *)self->_parameters copy];

  return v2;
}

- (void)initWith:(void *)a1 recipe:.cold.1(void *a1)
{
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)initWith:(void *)a1 recipe:.cold.2(void *a1)
{
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)initWith:(void *)a1 recipe:.cold.3(void *a1)
{
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)initWith:(void *)a1 recipe:.cold.4(void *a1)
{
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)initWith:(void *)a1 recipe:.cold.5(void *a1)
{
  v1 = [a1 recipeID];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end