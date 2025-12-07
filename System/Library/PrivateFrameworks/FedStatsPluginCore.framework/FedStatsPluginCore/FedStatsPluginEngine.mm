@interface FedStatsPluginEngine
+ (BOOL)hasRecipeIdentifier:(id)identifier usedWithAssetProvider:(id)provider;
+ (id)runAllRecipesWithAssetProvider:(id)provider;
+ (void)removeOldRecordsFromUserDefaults;
+ (void)removeOldRecordsFromUserDefaultsBefore:(double)before;
@end

@implementation FedStatsPluginEngine

+ (BOOL)hasRecipeIdentifier:(id)identifier usedWithAssetProvider:(id)provider
{
  v33[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  providerCopy = provider;
  recipeIdentifiers = [providerCopy recipeIdentifiers];
  v8 = [recipeIdentifiers containsObject:identifierCopy];

  if (v8)
  {
    v9 = [providerCopy namespaceIdentifierForRecipe:identifierCopy];
    if ([&unk_285E17AA0 containsObject:v9])
    {
      v10 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginEngine hasRecipeIdentifier:usedWithAssetProvider:];
      }

      v11 = 0;
    }

    else
    {
      v12 = [providerCopy experimentIdentifierForRecipe:identifierCopy];
      v33[0] = v12;
      v13 = [providerCopy deploymentIdentifierForRecipe:identifierCopy];
      v33[1] = v13;
      v14 = [providerCopy treatmentIdentifierForRecipe:identifierCopy];
      v33[2] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
      v10 = [v15 componentsJoinedByString:@":"];

      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v17 = [standardUserDefaults persistentDomainForName:kFedStatsPluginUserDefaultsDomain];
      v18 = [v17 mutableCopy];

      v19 = [v18 objectForKey:kFedStatsPluginUserDefaultsKeyExperimentList];
      v20 = [v19 mutableCopy];

      v21 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsPluginEngine hasRecipeIdentifier:usedWithAssetProvider:];
      }

      v22 = [v20 objectForKey:v10];
      v11 = v22 != 0;

      if (!v22)
      {
        v23 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
        v24 = v23;
        if (v20)
        {
          [v20 setObject:v23 forKey:v10];
        }

        else
        {
          v31 = v10;
          v32 = v23;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          v20 = [v25 mutableCopy];
        }

        if (v18)
        {
          [v18 setObject:v20 forKey:kFedStatsPluginUserDefaultsKeyExperimentList];
        }

        else
        {
          v29 = kFedStatsPluginUserDefaultsKeyExperimentList;
          v30 = v20;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v18 = [v26 mutableCopy];
        }

        standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [standardUserDefaults2 setPersistentDomain:v18 forName:kFedStatsPluginUserDefaultsDomain];
      }
    }
  }

  else
  {
    v9 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsPluginEngine hasRecipeIdentifier:usedWithAssetProvider:];
    }

    v11 = 1;
  }

  return v11;
}

+ (void)removeOldRecordsFromUserDefaultsBefore:(double)before
{
  v25 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults persistentDomainForName:kFedStatsPluginUserDefaultsDomain];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKey:kFedStatsPluginUserDefaultsKeyExperimentList];
  v8 = [v7 mutableCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [v8 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v8 objectForKey:v14];
        [v15 doubleValue];
        v17 = v16;

        if (v17 < before)
        {
          [v8 removeObjectForKey:v14];
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [v6 setObject:v8 forKey:kFedStatsPluginUserDefaultsKeyExperimentList];
  v18 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    +[FedStatsPluginEngine hasRecipeIdentifier:usedWithAssetProvider:];
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 setPersistentDomain:v6 forName:kFedStatsPluginUserDefaultsDomain];
}

+ (void)removeOldRecordsFromUserDefaults
{
  v3 = CFAbsoluteTimeGetCurrent() - kFedStatsPluginExperimentRetentionPeriod;

  [self removeOldRecordsFromUserDefaultsBefore:v3];
}

+ (id)runAllRecipesWithAssetProvider:(id)provider
{
  v150 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  recipeIdentifiers = [providerCopy recipeIdentifiers];
  v100 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(recipeIdentifiers, "count")}];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v5 = recipeIdentifiers;
  v6 = [v5 countByEnumeratingWithState:&v134 objects:v149 count:16];
  v90 = v5;
  if (v6)
  {
    v7 = v6;
    v8 = *v135;
    v9 = 0x278FF7000uLL;
    v10 = 0x278FF7000uLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v135 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v134 + 1) + 8 * i);
        if ([*(v9 + 1744) hasRecipeIdentifier:v12 usedWithAssetProvider:providerCopy])
        {
          v13 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v146 = v12;
            _os_log_debug_impl(&dword_24AB24000, v13, OS_LOG_TYPE_DEBUG, "The recipe '%@' has already ran on this device", buf, 0xCu);
          }
        }

        else
        {
          v13 = [providerCopy namespaceIdentifierForRecipe:v12];
          if ([*(v10 + 1712) isConsentedForUseCase:v13])
          {
            v133 = 0;
            v14 = [FedStatsPluginRecipe recipeWithAssetProvider:providerCopy recipeIdentifier:v12 error:&v133];
            v15 = v133;
            v16 = v15;
            if (!v14)
            {
              v21 = +[FedStatsPluginLog logger];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v146 = v12;
                v147 = 2112;
                v148 = v16;
                _os_log_debug_impl(&dword_24AB24000, v21, OS_LOG_TYPE_DEBUG, "Cannot create recipe with identifier '%@'. Error: %@", buf, 0x16u);
              }

              goto LABEL_27;
            }

            v132 = v15;
            v17 = [v14 checkDeviceOSVersionFilterWithError:&v132];
            v18 = v132;

            if (v17)
            {
              v131 = v18;
              v19 = [v14 checkDeviceRegionCodeWithError:&v131];
              v16 = v131;

              if (v19)
              {
                [v100 setObject:v14 forKey:v12];
                v9 = 0x278FF7000;
                goto LABEL_28;
              }

              v23 = +[FedStatsPluginLog logger];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v146 = v12;
                v147 = 2112;
                v148 = v16;
                _os_log_debug_impl(&dword_24AB24000, v23, OS_LOG_TYPE_DEBUG, "Device region is not allowed for recipe with identifier '%@'. Error: %@", buf, 0x16u);
              }

              v9 = 0x278FF7000;
              if (v16)
              {
LABEL_27:
                [FedStatsPluginTelemetry reportPluginForAssetProvider:providerCopy recipeIdentifier:v12 withError:v16];
LABEL_28:
              }
            }

            else
            {
              v22 = +[FedStatsPluginLog logger];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v146 = v12;
                v147 = 2112;
                v148 = v18;
                _os_log_debug_impl(&dword_24AB24000, v22, OS_LOG_TYPE_DEBUG, "The plugin should not run for %@ as device filter: %@.", buf, 0x16u);
              }

              v9 = 0x278FF7000;
              if (v18)
              {
                [FedStatsPluginTelemetry reportPluginForAssetProvider:providerCopy recipeIdentifier:v12 withError:v18];
                v16 = v18;
                goto LABEL_28;
              }
            }

            v5 = v90;
            v10 = 0x278FF7000;
            goto LABEL_30;
          }

          v20 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v146 = v12;
            _os_log_debug_impl(&dword_24AB24000, v20, OS_LOG_TYPE_DEBUG, "Cannot get consent for recipe with identifier '%@'.", buf, 0xCu);
          }

          [FedStatsPluginTelemetry reportPluginForAssetProvider:providerCopy recipeIdentifier:v12 withError:0];
        }

LABEL_30:
      }

      v7 = [v5 countByEnumeratingWithState:&v134 objects:v149 count:16];
    }

    while (v7);
  }

  v92 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v100, "count")}];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  allKeys = [v100 allKeys];
  v25 = [allKeys countByEnumeratingWithState:&v127 objects:v144 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v128;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v128 != v27)
        {
          objc_enumerationMutation(allKeys);
        }

        v29 = *(*(&v127 + 1) + 8 * j);
        v30 = [v100 objectForKey:v29];
        v126 = 0;
        v31 = [v30 evaluateQueryWithError:&v126];
        v32 = v126;
        if (v31)
        {
          [v92 setObject:v31 forKey:v29];
        }

        else
        {
          v33 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v146 = v29;
            v147 = 2112;
            v148 = v32;
            _os_log_debug_impl(&dword_24AB24000, v33, OS_LOG_TYPE_DEBUG, "Cannot run query for recipe with identifier '%@'. Error: %@", buf, 0x16u);
          }

          [FedStatsPluginTelemetry reportPluginForAssetProvider:providerCopy recipeIdentifier:v29 withError:v32];
        }
      }

      v26 = [allKeys countByEnumeratingWithState:&v127 objects:v144 count:16];
    }

    while (v26);
  }

  v99 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v92, "count")}];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  allKeys2 = [v92 allKeys];
  v35 = [allKeys2 countByEnumeratingWithState:&v122 objects:v143 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v123;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v123 != v37)
        {
          objc_enumerationMutation(allKeys2);
        }

        v39 = *(*(&v122 + 1) + 8 * k);
        v40 = [v100 objectForKey:v39];
        v41 = [v92 objectForKey:v39];
        v42 = [v40 collateQueryResults:v41];
        [v99 setObject:v42 forKey:v39];
      }

      v36 = [allKeys2 countByEnumeratingWithState:&v122 objects:v143 count:16];
    }

    while (v36);
  }

  v43 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v99, "count")}];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  allKeys3 = [v99 allKeys];
  v45 = [allKeys3 countByEnumeratingWithState:&v118 objects:v142 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v119;
    do
    {
      for (m = 0; m != v46; ++m)
      {
        if (*v119 != v47)
        {
          objc_enumerationMutation(allKeys3);
        }

        v49 = *(*(&v118 + 1) + 8 * m);
        v50 = [v100 objectForKey:v49];
        v51 = [v99 objectForKey:v49];
        v52 = [v50 assetKeysFromCollatedData:v51];
        [v43 setObject:v52 forKey:v49];
      }

      v46 = [allKeys3 countByEnumeratingWithState:&v118 objects:v142 count:16];
    }

    while (v46);
  }

  v117 = 0;
  v53 = [providerCopy fetchAssets:v43 error:&v117];
  v54 = v117;
  if ((v53 & 1) == 0)
  {
    v55 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsPluginEngine runAllRecipesWithAssetProvider:];
    }
  }

  v87 = providerCopy;
  v88 = v54;
  v96 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v99, "count")}];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  allKeys4 = [v99 allKeys];
  v57 = [allKeys4 countByEnumeratingWithState:&v113 objects:v141 count:16];
  v94 = v43;
  if (v57)
  {
    v58 = v57;
    v59 = *v114;
    do
    {
      for (n = 0; n != v58; ++n)
      {
        if (*v114 != v59)
        {
          objc_enumerationMutation(allKeys4);
        }

        v61 = *(*(&v113 + 1) + 8 * n);
        v62 = [v100 objectForKey:v61];
        v63 = [v99 objectForKey:v61];
        v64 = [v43 objectForKey:v61];
        v65 = [v62 assetURLsForAssetKeys:v64];
        v66 = [v62 recordCollatedData:v63 assetURLs:v65];
        [v96 setObject:v66 forKey:v61];

        v43 = v94;
      }

      v58 = [allKeys4 countByEnumeratingWithState:&v113 objects:v141 count:16];
    }

    while (v58);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = [v96 allKeys];
  v95 = [obj countByEnumeratingWithState:&v109 objects:v140 count:16];
  if (v95)
  {
    v93 = *v110;
    do
    {
      v67 = 0;
      do
      {
        if (*v110 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v98 = v67;
        v68 = *(*(&v109 + 1) + 8 * v67);
        v69 = [v100 objectForKey:v68];
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v97 = v69;
        accessedStreams = [v69 accessedStreams];
        v71 = [accessedStreams countByEnumeratingWithState:&v105 objects:v139 count:16];
        if (v71)
        {
          v72 = v71;
          v73 = *v106;
          do
          {
            for (ii = 0; ii != v72; ++ii)
            {
              if (*v106 != v73)
              {
                objc_enumerationMutation(accessedStreams);
              }

              v75 = *(*(&v105 + 1) + 8 * ii);
              v76 = [v87 namespaceIdentifierForRecipe:v68];
              [FedStatsPluginBiomeStreamPruner pruneBiomeStream:v75 forNamespace:v76 eventsPassingTest:&__block_literal_global_3];
            }

            v72 = [accessedStreams countByEnumeratingWithState:&v105 objects:v139 count:16];
          }

          while (v72);
        }

        v67 = v98 + 1;
      }

      while (v98 + 1 != v95);
      v95 = [obj countByEnumeratingWithState:&v109 objects:v140 count:16];
    }

    while (v95);
  }

  [v87 removeAssets];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  allKeys5 = [v96 allKeys];
  v78 = [allKeys5 countByEnumeratingWithState:&v101 objects:v138 count:16];
  v79 = 0x278FF7000uLL;
  if (v78)
  {
    v80 = v78;
    v81 = *v102;
    do
    {
      for (jj = 0; jj != v80; ++jj)
      {
        if (*v102 != v81)
        {
          objc_enumerationMutation(allKeys5);
        }

        v83 = *(*(&v101 + 1) + 8 * jj);
        v84 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          v85 = [v96 objectForKey:v83];
          *buf = 138412546;
          v146 = v85;
          v147 = 2112;
          v148 = v83;
          _os_log_debug_impl(&dword_24AB24000, v84, OS_LOG_TYPE_DEBUG, "Recorded %@ payloads for recipe with identifier '%@'", buf, 0x16u);

          v79 = 0x278FF7000;
        }

        [*(v79 + 1816) reportPluginSucceedForAssetProvider:v87 recipeIdentifier:v83];
      }

      v80 = [allKeys5 countByEnumeratingWithState:&v101 objects:v138 count:16];
    }

    while (v80);
  }

  [self removeOldRecordsFromUserDefaults];

  return v96;
}

@end