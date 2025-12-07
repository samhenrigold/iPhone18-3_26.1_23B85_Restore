@interface PGGraphSynonymSupportHelper
+ (id)localizedSynonymsForLocalizationKey:(id)key;
+ (id)synonymsByIndexCategoryMaskForGraph:(id)graph;
@end

@implementation PGGraphSynonymSupportHelper

+ (id)synonymsByIndexCategoryMaskForGraph:(id)graph
{
  v63 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [PGGraphSynonymSupportHelper localizedSynonymsForLocalizationKey:@"PGHighlightTripSearchableText"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PGHighlightTripSearchableText" value:@"PGHighlightTripSearchableText" table:@"Localizable"];
  [v5 setObject:v6 forKeyedSubscript:v8];

  v42 = v5;
  [v4 setObject:v5 forKeyedSubscript:&unk_284484380];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke;
  v59[3] = &unk_2788877E0;
  v10 = v9;
  v60 = v10;
  [graphCopy enumerateNodesWithLabel:0 domain:700 usingBlock:v59];
  v41 = v10;
  [v4 setObject:v10 forKeyedSubscript:&unk_284484398];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_245;
  v57[3] = &unk_278888D30;
  v12 = v11;
  v58 = v12;
  [graphCopy enumerateNodesWithLabel:@"Season" domain:400 usingBlock:v57];
  v40 = v12;
  [v4 setObject:v12 forKeyedSubscript:&unk_2844843B0];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_249;
  v55[3] = &unk_278888D00;
  v14 = v13;
  v56 = v14;
  [graphCopy enumerateNodesWithLabel:@"Holiday" domain:401 usingBlock:v55];
  v39 = v14;
  [v4 setObject:v14 forKeyedSubscript:&unk_2844843C8];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_253;
  v53[3] = &unk_2788875F8;
  v16 = v15;
  v54 = v16;
  [graphCopy enumerateNodesWithLabel:0 domain:502 usingBlock:v53];
  v38 = v16;
  [v4 setObject:v16 forKeyedSubscript:&unk_2844843E0];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_257;
  v51[3] = &unk_2788875D0;
  v18 = v17;
  v52 = v18;
  [graphCopy enumerateNodesWithLabel:0 domain:501 usingBlock:v51];
  [v4 setObject:v18 forKeyedSubscript:&unk_2844843F8];
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_261;
  v49[3] = &unk_278887118;
  v20 = v19;
  v50 = v20;
  [graphCopy enumerateNodesWithLabel:0 domain:901 usingBlock:v49];
  [v4 setObject:v20 forKeyedSubscript:&unk_284484410];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  +[PGUserDefaults relationshipTagMinConfidenceThreshold];
  v23 = v22;
  v24 = +[PGLogging sharedLogging];
  loggingConnection = [v24 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v62 = v23;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Using PGUserDefaults.relationshipTagMinConfidenceThreshold value %f", buf, 0xCu);
  }

  v26 = [PGGraphPersonRelationshipTagNode personWithTagWithConfidence:v23];
  v27 = [(PGGraphNodeCollection *)PGGraphPersonRelationshipTagNodeCollection nodesInGraph:graphCopy];
  v28 = [MEMORY[0x277D22BF8] adjacencyWithSources:v27 relation:v26 targetsClass:objc_opt_class()];
  transposed = [v28 transposed];

  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  targets = [transposed targets];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_270;
  v47[3] = &unk_278887140;
  v32 = v30;
  v48 = v32;
  [targets enumerateNodesUsingBlock:v47];

  sources = [transposed sources];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_2;
  v43[3] = &unk_278887190;
  v44 = transposed;
  v45 = v32;
  v46 = v21;
  v34 = v21;
  v35 = v32;
  v36 = transposed;
  [sources enumerateUUIDsUsingBlock:v43];

  [v4 setObject:v34 forKeyedSubscript:&unk_284484428];

  return v4;
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_245(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_249(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  if ([v4 count])
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_253(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_257(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_261(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 localizedName];
  v4 = [v3 localizedSynonyms];

  if (v5 && v4)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_270(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [v3 localizedSynonyms];
  v4 = [v3 localizedName];
  v5 = [v10 arrayByAddingObject:v4];
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCABB0];
  v8 = [v3 identifier];

  v9 = [v7 numberWithUnsignedInteger:v8];
  [v6 setObject:v5 forKeyedSubscript:v9];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [a1[4] targetsForSourceIdentifier:a2];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_3;
  v13 = &unk_278887168;
  v14 = a1[5];
  v15 = v7;
  v9 = v7;
  [v8 enumerateIdentifiersAsCollectionsWithBlock:&v10];
  [a1[6] setObject:v9 forKeyedSubscript:{v6, v10, v11, v12, v13}];
}

void __67__PGGraphSynonymSupportHelper_synonymsByIndexCategoryMaskForGraph___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  [*(a1 + 40) addObjectsFromArray:v5];
}

+ (id)localizedSynonymsForLocalizationKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [key stringByAppendingString:@"Synonyms"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:v3 table:@"Localizable"];

  if ([v5 isEqualToString:v3])
  {
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Missing localization for synonyms key %@", &v10, 0xCu);
    }

    goto LABEL_7;
  }

  if (![v5 length] || (objc_msgSend(v5, "isEqualToString:", @"NULL") & 1) != 0)
  {
LABEL_7:
    v8 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  v8 = [v5 componentsSeparatedByString:@"|"];
LABEL_8:

  return v8;
}

@end