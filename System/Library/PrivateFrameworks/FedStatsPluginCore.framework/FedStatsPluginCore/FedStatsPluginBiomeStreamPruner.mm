@interface FedStatsPluginBiomeStreamPruner
+ (id)sharedInstance;
+ (void)pruneBiomeStream:(id)stream forNamespace:(id)namespace eventsPassingTest:(id)test;
- (FedStatsPluginBiomeStreamPruner)initWithBiomeStreamAssociation:(id)association;
@end

@implementation FedStatsPluginBiomeStreamPruner

- (FedStatsPluginBiomeStreamPruner)initWithBiomeStreamAssociation:(id)association
{
  associationCopy = association;
  v9.receiver = self;
  v9.super_class = FedStatsPluginBiomeStreamPruner;
  v6 = [(FedStatsPluginBiomeStreamPruner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biomeStreamAssociation, association);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FedStatsPluginBiomeStreamPruner sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke()
{
  v61 = *MEMORY[0x277D85DE8];
  v0 = SecTaskCreateFromSelf(0);
  error = 0;
  v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.biome.read-write", &error);
  if (!error)
  {
    CFRelease(v0);
    if (error)
    {
      CFRelease(error);
    }

    if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v4 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_2();
      }
    }

    else
    {
      v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 URLForResource:@"FedStatsPluginPrunableStreams" withExtension:@"plist"];
        if (v5)
        {
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5];
          v7 = v6;
          if (v6)
          {
            v30 = v5;
            v31 = v4;
            v39 = v1;
            v8 = [v6 mutableCopy];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v29 = v7;
            v9 = v7;
            v10 = [v9 countByEnumeratingWithState:&v44 objects:v60 count:16];
            if (!v10)
            {
              goto LABEL_46;
            }

            v11 = v10;
            v12 = *v45;
            v33 = v9;
            v34 = v8;
            v32 = *v45;
            while (1)
            {
              v13 = 0;
              v35 = v11;
              do
              {
                if (*v45 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v44 + 1) + 8 * v13);
                v15 = +[FedStatsPluginLog logger];
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v50 = v14;
                  _os_log_debug_impl(&dword_24AB24000, v15, OS_LOG_TYPE_DEBUG, "Processing Biome stream association for namespace %@", buf, 0xCu);
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = v14;
                  v38 = v13;
                  v16 = [v9 objectForKey:v14];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](v16, "count")}];
                    v40 = 0u;
                    v41 = 0u;
                    v42 = 0u;
                    v43 = 0u;
                    v36 = v16;
                    v18 = v16;
                    v19 = [v18 countByEnumeratingWithState:&v40 objects:v55 count:16];
                    if (!v19)
                    {
                      goto LABEL_38;
                    }

                    v20 = v19;
                    v21 = *v41;
                    while (1)
                    {
                      for (i = 0; i != v20; ++i)
                      {
                        if (*v41 != v21)
                        {
                          objc_enumerationMutation(v18);
                        }

                        v23 = *(*(&v40 + 1) + 8 * i);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v26 = +[FedStatsPluginLog logger];
                          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                          {
                            __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_3(v53, &v54, v26);
                          }

                          goto LABEL_35;
                        }

                        v24 = [v39 containsObject:v23];
                        v25 = +[FedStatsPluginLog logger];
                        v26 = v25;
                        if ((v24 & 1) == 0)
                        {
                          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v50 = v23;
                            _os_log_error_impl(&dword_24AB24000, v26, OS_LOG_TYPE_ERROR, "The stream %@ is not entitled to be written", buf, 0xCu);
                          }

LABEL_35:

                          continue;
                        }

                        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412546;
                          v50 = v23;
                          v51 = 2112;
                          v52 = @"com.apple.private.biome.read-write";
                          _os_log_debug_impl(&dword_24AB24000, v26, OS_LOG_TYPE_DEBUG, "Found the stream %@ in %@ entitlement", buf, 0x16u);
                        }

                        [v17 addObject:v23];
                      }

                      v20 = [v18 countByEnumeratingWithState:&v40 objects:v55 count:16];
                      if (!v20)
                      {
LABEL_38:

                        v8 = v34;
                        [v34 setObject:v17 forKey:v37];
                        v12 = v32;
                        v9 = v33;
                        v11 = v35;
                        v16 = v36;
                        goto LABEL_43;
                      }
                    }
                  }

                  v17 = +[FedStatsPluginLog logger];
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_3(v56, &v57, v17);
                  }

LABEL_43:

                  v13 = v38;
                }

                else
                {
                  v16 = +[FedStatsPluginLog logger];
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_3(v58, &v59, v16);
                  }
                }

                ++v13;
              }

              while (v13 != v11);
              v11 = [v9 countByEnumeratingWithState:&v44 objects:v60 count:16];
              if (!v11)
              {
LABEL_46:

                v27 = [[FedStatsPluginBiomeStreamPruner alloc] initWithBiomeStreamAssociation:v8];
                v28 = sharedInstance_sharedInstance;
                sharedInstance_sharedInstance = v27;

                v1 = v39;
                v5 = v30;
                v4 = v31;
                v7 = v29;
                goto LABEL_55;
              }
            }
          }

          v8 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_6();
          }

LABEL_55:
        }

        else
        {
          v7 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_7();
          }
        }
      }

      else
      {
        v5 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_8();
        }
      }
    }

    goto LABEL_59;
  }

  v2 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_1(&error, v2);
  }

  CFRelease(error);
  CFRelease(v0);
LABEL_59:
}

+ (void)pruneBiomeStream:(id)stream forNamespace:(id)namespace eventsPassingTest:(id)test
{
  streamCopy = stream;
  namespaceCopy = namespace;
  testCopy = test;
  v10 = +[FedStatsPluginBiomeStreamPruner sharedInstance];
  v11 = v10;
  if (v10)
  {
    biomeStreamAssociation = [v10 biomeStreamAssociation];
    v13 = [biomeStreamAssociation objectForKey:namespaceCopy];

    if (v13)
    {
      if (([v13 containsObject:streamCopy]& 1) != 0)
      {
        v14 = BiomeLibrary();
        v25 = 0;
        v15 = [v14 streamWithIdentifier:streamCopy error:&v25];
        v16 = v25;

        if (v15)
        {
          v23 = 0;
          v24[0] = &v23;
          v24[1] = 0x2020000000;
          v24[2] = 0;
          pruner = [v15 pruner];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __83__FedStatsPluginBiomeStreamPruner_pruneBiomeStream_forNamespace_eventsPassingTest___block_invoke;
          v20[3] = &unk_278FF7900;
          v21 = testCopy;
          v22 = &v23;
          [pruner deleteWithPolicy:@"fedstats-pruner" eventsPassingTest:v20];

          v18 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [FedStatsPluginBiomeStreamPruner pruneBiomeStream:v24 forNamespace:? eventsPassingTest:?];
          }

          _Block_object_dispose(&v23, 8);
        }

        else
        {
          v19 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [FedStatsPluginBiomeStreamPruner pruneBiomeStream:streamCopy forNamespace:? eventsPassingTest:?];
          }
        }
      }

      else
      {
        v16 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [FedStatsPluginBiomeStreamPruner pruneBiomeStream:streamCopy forNamespace:? eventsPassingTest:?];
        }
      }
    }

    else
    {
      v16 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [FedStatsPluginBiomeStreamPruner pruneBiomeStream:namespaceCopy forNamespace:v16 eventsPassingTest:?];
      }
    }
  }

  else
  {
    v13 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[FedStatsPluginBiomeStreamPruner pruneBiomeStream:forNamespace:eventsPassingTest:];
    }
  }
}

uint64_t __83__FedStatsPluginBiomeStreamPruner_pruneBiomeStream_forNamespace_eventsPassingTest___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_24AB24000, a2, OS_LOG_TYPE_ERROR, "Cannot read entitlement for the current process: %@", &v3, 0xCu);
}

void __49__FedStatsPluginBiomeStreamPruner_sharedInstance__block_invoke_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 138412290;
  *a2 = @"Prunable streams file must have strings as keys and array of strings as values";
  OUTLINED_FUNCTION_3(&dword_24AB24000, a2, a3, "%@", a1);
}

+ (void)pruneBiomeStream:(uint64_t)a1 forNamespace:eventsPassingTest:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_24AB24000, v1, v2, "The stream '%@' is not prunable for %@", v3, DWORD2(v3));
}

+ (void)pruneBiomeStream:(uint64_t)a1 forNamespace:eventsPassingTest:.cold.2(uint64_t a1)
{
  LODWORD(v3) = 134218242;
  *(&v3 + 4) = *(*a1 + 24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_24AB24000, v1, v2, "Pruned %lu events from %@", v3, DWORD2(v3));
}

+ (void)pruneBiomeStream:(uint64_t)a1 forNamespace:eventsPassingTest:.cold.3(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24AB24000, v1, OS_LOG_TYPE_ERROR, "Cannot find the stream %@. Error: %@", &v2, 0x16u);
}

+ (void)pruneBiomeStream:(uint64_t)a1 forNamespace:(NSObject *)a2 eventsPassingTest:.cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "No streams are available to prune for namespace %@", &v2, 0xCu);
}

@end