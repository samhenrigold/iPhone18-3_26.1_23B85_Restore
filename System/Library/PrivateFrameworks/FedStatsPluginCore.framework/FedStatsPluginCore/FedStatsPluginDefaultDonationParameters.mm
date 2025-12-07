@interface FedStatsPluginDefaultDonationParameters
+ (id)defaultDonationParametersWithConfiguration:(id)configuration error:(id *)error;
- (FedStatsPluginDefaultDonationParameters)initWithEpsilon:(double)epsilon delta:(double)delta defaultExpectedCohortSize:(unint64_t)size expectedCohortSizes:(id)sizes;
- (id)distributionFor:(id)for;
- (unint64_t)determineDefaultRecordCountFor:(id)for;
- (unint64_t)expectedCohortSizeFor:(id)for;
@end

@implementation FedStatsPluginDefaultDonationParameters

- (FedStatsPluginDefaultDonationParameters)initWithEpsilon:(double)epsilon delta:(double)delta defaultExpectedCohortSize:(unint64_t)size expectedCohortSizes:(id)sizes
{
  sizesCopy = sizes;
  v14.receiver = self;
  v14.super_class = FedStatsPluginDefaultDonationParameters;
  v12 = [(FedStatsPluginDefaultDonationParameters *)&v14 init];
  if (v12)
  {
    v12->_successRateNaught = (log(1.0 / delta) + 1.0) * 3.0;
    v12->_successProbability = 1.0 - exp(epsilon * -0.2);
    v12->_defaultExpectedCohortSize = size;
    objc_storeStrong(&v12->_expectedCohortSizes, sizes);
  }

  return v12;
}

- (unint64_t)expectedCohortSizeFor:(id)for
{
  v28 = *MEMORY[0x277D85DE8];
  forCopy = for;
  allKeys = [forCopy allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

  selfCopy = self;
  expectedCohortSizes = [(FedStatsPluginDefaultDonationParameters *)self expectedCohortSizes];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      v12 = 0;
      v13 = expectedCohortSizes;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * v12);
        v15 = [forCopy objectForKey:v14];
        v16 = [FedStatsPluginDefaultDonationParameters expectedCohortSizesKeyForCohortVariable:v14 cohortValue:v15];

        expectedCohortSizes = [v13 objectForKey:v16];

        if (!expectedCohortSizes)
        {
          v18 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [(FedStatsPluginDefaultDonationParameters *)forCopy expectedCohortSizeFor:v18];
          }

          defaultExpectedCohortSize = [(FedStatsPluginDefaultDonationParameters *)selfCopy defaultExpectedCohortSize];
          expectedCohortSizes = v8;
          goto LABEL_19;
        }

        ++v12;
        v13 = expectedCohortSizes;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = [expectedCohortSizes objectForKey:@"expectedCohortSize"];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v16 unsignedIntegerValue];
  }

  else
  {
    v20 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(FedStatsPluginDefaultDonationParameters *)forCopy expectedCohortSizeFor:v20];
    }

    unsignedIntegerValue = [(FedStatsPluginDefaultDonationParameters *)selfCopy defaultExpectedCohortSize];
  }

  defaultExpectedCohortSize = unsignedIntegerValue;
LABEL_19:

  return defaultExpectedCohortSize;
}

- (id)distributionFor:(id)for
{
  v4 = [(FedStatsPluginDefaultDonationParameters *)self expectedCohortSizeFor:for];
  [(FedStatsPluginDefaultDonationParameters *)self successRateNaught];
  v6 = v5 / v4;
  v7 = MEMORY[0x277D08470];
  [(FedStatsPluginDefaultDonationParameters *)self successProbability];
  v9 = [v7 distributionWithSuccessCount:v6 successProbability:v8];
  if (!v9)
  {
    v10 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(FedStatsPluginDefaultDonationParameters *)self distributionFor:v10, v6];
    }
  }

  return v9;
}

- (unint64_t)determineDefaultRecordCountFor:(id)for
{
  v3 = [(FedStatsPluginDefaultDonationParameters *)self distributionFor:for];
  v4 = v3;
  if (v3)
  {
    sample = [v3 sample];
  }

  else
  {
    sample = -1;
  }

  return sample;
}

+ (id)defaultDonationParametersWithConfiguration:(id)configuration error:(id *)error
{
  v71 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [configurationCopy objectForKey:@"epsilon"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v6 doubleValue];
      if (v7 > 0.01)
      {
        [v6 doubleValue];
        if (v8 < 0.5)
        {
          v9 = [configurationCopy objectForKey:@"delta"];
          if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (error)
            {
              *error = v13 = 0;
LABEL_27:

              goto LABEL_20;
            }

LABEL_26:
            v13 = 0;
            goto LABEL_27;
          }

          [v9 doubleValue];
          if (v10 >= 0.0001 || ([v9 doubleValue], v11 < 0.0))
          {
            if (error)
              v12 = {;
              *error = [FedStatsPluginError errorWithCode:100 description:v12];
            }

            goto LABEL_26;
          }

          v16 = [configurationCopy objectForKey:@"defaultExpectedCohortSize"];
          if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v16 doubleValue];
            if (v17 > 0.0)
            {
              v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue")}];
              v19 = [v18 isEqualToNumber:v16];

              if (v19)
              {
                v20 = [configurationCopy objectForKey:@"expectedCohortSizes"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v48 = v16;
                  v49 = v9;
                  if (v20)
                  {
                    if ([v20 count])
                    {
                      firstObject = [v20 firstObject];
                      v54 = [firstObject count];
                    }

                    else
                    {
                      v54 = 0;
                    }
                  }

                  else
                  {
                    v54 = 0;
                    v20 = MEMORY[0x277CBEBF8];
                  }

                  v55 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
                  v65 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v20 = v20;
                  v51 = [v20 countByEnumeratingWithState:&v65 objects:v70 count:16];
                  if (v51)
                  {
                    v52 = *v66;
                    v53 = v20;
                    v23 = 0x278FF7000uLL;
LABEL_50:
                    v24 = 0;
                    v50 = *(v23 + 2904);
                    while (1)
                    {
                      if (*v66 != v52)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v25 = *(*(&v65 + 1) + 8 * v24);
                      if (v54 != [v25 count])
                      {
                        break;
                      }

                      v57 = [v25 objectForKey:@"expectedCohortSize"];
                      if (!v57 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        if (error)
                          v46 = {;
                          *error = [FedStatsPluginError errorWithCode:100 description:v46];
                          goto LABEL_76;
                        }

LABEL_77:

LABEL_78:
                        v20 = v53;

                        v13 = 0;
                        v16 = v48;
                        v9 = v49;
                        goto LABEL_79;
                      }

                      v56 = v24;
                      v60 = v25;
                      allKeys = [v25 allKeys];
                      v27 = [allKeys mutableCopy];

                      [v27 removeObject:@"expectedCohortSize"];
                      [v27 sortUsingSelector:v50];
                      v28 = v55;
                      v61 = 0u;
                      v62 = 0u;
                      v63 = 0u;
                      v64 = 0u;
                      v29 = v27;
                      v30 = [v29 countByEnumeratingWithState:&v61 objects:v69 count:16];
                      if (v30)
                      {
                        v31 = v30;
                        v32 = *v62;
                        obj = v29;
                        do
                        {
                          v33 = 0;
                          v34 = v28;
                          do
                          {
                            if (*v62 != v32)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v35 = *(*(&v61 + 1) + 8 * v33);
                            v36 = [v60 objectForKey:v35];
                            v37 = [FedStatsPluginDefaultDonationParameters expectedCohortSizesKeyForCohortVariable:v35 cohortValue:v36];

                            v38 = [v34 objectForKey:v37];

                            if (!v38)
                            {
                              v39 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
                              [v34 setObject:v39 forKey:v37];
                            }

                            v28 = [v34 objectForKey:v37];

                            ++v33;
                            v34 = v28;
                          }

                          while (v31 != v33);
                          v29 = obj;
                          v31 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
                        }

                        while (v31);
                      }

                      v40 = [v28 objectForKey:@"expectedCohortSize"];

                      if (v40)
                      {
                        v46 = v29;
                        if (error)
                          v47 = {;
                          *error = [FedStatsPluginError errorWithCode:100 description:v47];
                        }

LABEL_76:
                        goto LABEL_77;
                      }

                      [v28 setObject:v57 forKey:@"expectedCohortSize"];

                      v24 = v56 + 1;
                      v20 = v53;
                      if (v56 + 1 == v51)
                      {
                        v41 = [v53 countByEnumeratingWithState:&v65 objects:v70 count:16];
                        v23 = 0x278FF7000;
                        v51 = v41;
                        if (v41)
                        {
                          goto LABEL_50;
                        }

                        goto LABEL_68;
                      }
                    }

                    if (error)
                      v58 = {;
                      *error = [FedStatsPluginError errorWithCode:100 description:?];
                    }

                    goto LABEL_78;
                  }

LABEL_68:

                  v42 = [FedStatsPluginDefaultDonationParameters alloc];
                  [v6 doubleValue];
                  v44 = v43;
                  v9 = v49;
                  [v49 doubleValue];
                  v16 = v48;
                  v13 = -[FedStatsPluginDefaultDonationParameters initWithEpsilon:delta:defaultExpectedCohortSize:expectedCohortSizes:](v42, "initWithEpsilon:delta:defaultExpectedCohortSize:expectedCohortSizes:", [v48 unsignedIntegerValue], v55, v44, v45);
LABEL_79:
                }

                else if (error)
                {
                  *error = v13 = 0;
                }

                else
                {
                  v13 = 0;
                }

                goto LABEL_42;
              }
            }

            if (error)
            {
              goto LABEL_40;
            }
          }

          else if (error)
          {
LABEL_40:
            [FedStatsPluginError errorWithCode:100 description:v22];
            *error = v13 = 0;
LABEL_42:

            goto LABEL_27;
          }

          v13 = 0;
          goto LABEL_42;
        }
      }

      if (error)
        v14 = {;
        *error = [FedStatsPluginError errorWithCode:100 description:v14];
      }
    }

    else if (error)
    {
      *error = v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v13 = 0;
    goto LABEL_20;
  }

  if (error)
  {
    [FedStatsPluginError errorWithCode:100 description:@"Privacy parameters in recipe must be a dictionary"];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_21:

  return v13;
}

- (void)expectedCohortSizeFor:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "No expected cohort size for cohort values %@", &v2, 0xCu);
}

- (void)expectedCohortSizeFor:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "No expected cohort size value for cohort values %@", &v2, 0xCu);
}

- (void)distributionFor:(double)a3 .cold.1(void *a1, NSObject *a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 successProbability];
  v6 = 134218240;
  v7 = a3;
  v8 = 2048;
  v9 = v5;
  _os_log_error_impl(&dword_24AB24000, a2, OS_LOG_TYPE_ERROR, "NB(%e,%e) failed. Check the logs.", &v6, 0x16u);
}

@end