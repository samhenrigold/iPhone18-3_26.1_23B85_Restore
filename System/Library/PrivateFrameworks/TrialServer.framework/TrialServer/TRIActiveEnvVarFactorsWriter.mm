@interface TRIActiveEnvVarFactorsWriter
- (TRIActiveEnvVarFactorsWriter)initWithPaths:(id)paths;
- (id)_constructPlistForExperiments:(id)experiments;
- (void)writeExperiments:(id)experiments;
@end

@implementation TRIActiveEnvVarFactorsWriter

- (TRIActiveEnvVarFactorsWriter)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v9.receiver = self;
  v9.super_class = TRIActiveEnvVarFactorsWriter;
  v6 = [(TRIActiveEnvVarFactorsWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, paths);
  }

  return v7;
}

- (id)_constructPlistForExperiments:(id)experiments
{
  v39 = *MEMORY[0x277D85DE8];
  experimentsCopy = experiments;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = [TRIKnownEnvVarFactorsReader knownFactorsFromPaths:self->_paths];
  v24 = [v6 initWithArray:v7];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = experimentsCopy;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v23 = *v34;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        factorLevelStrings = [v9 factorLevelStrings];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __62__TRIActiveEnvVarFactorsWriter__constructPlistForExperiments___block_invoke;
        v31[3] = &unk_279DE2048;
        v32 = v24;
        v11 = [factorLevelStrings _pas_filteredArrayWithTest:v31];

        if ([v11 count])
        {
          v26 = i;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          targetedBundleIds = [v9 targetedBundleIds];
          v13 = [targetedBundleIds countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(targetedBundleIds);
                }

                v17 = *(*(&v27 + 1) + 8 * j);
                v18 = [v5 objectForKey:v17];
                if (!v18)
                {
                  v18 = objc_opt_new();
                }

                v19 = [v18 arrayByAddingObjectsFromArray:v11];
                [v5 setObject:v19 forKeyedSubscript:v17];
              }

              v14 = [targetedBundleIds countByEnumeratingWithState:&v27 objects:v37 count:16];
            }

            while (v14);
          }

          i = v26;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  v20 = [v5 copy];

  return v20;
}

uint64_t __62__TRIActiveEnvVarFactorsWriter__constructPlistForExperiments___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if ((v4 & 1) == 0)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Refusing to write an active factor %@ which doesn't match a pre-declared known factor.", &v9, 0xCu);
    }

    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Known factors: %@", &v9, 0xCu);
    }
  }

  return v4;
}

- (void)writeExperiments:(id)experiments
{
  v20 = *MEMORY[0x277D85DE8];
  experimentsCopy = experiments;
  v5 = objc_autoreleasePoolPush();
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(experimentsCopy, "count")}];
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Writing %@ low level experiments", buf, 0xCu);
  }

  v8 = [(TRIActiveEnvVarFactorsWriter *)self _constructPlistForExperiments:experimentsCopy];
  v16 = @"ActiveLowLevelFactors";
  v17 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v9 format:100 options:0 error:0];
  activeLowLevelFactorsFile = [(TRIPaths *)self->_paths activeLowLevelFactorsFile];
  v15 = 0;
  v12 = [v10 writeToFile:activeLowLevelFactorsFile options:1 error:&v15];
  v13 = v15;
  if ((v12 & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to write low level factors: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v5);
}

@end