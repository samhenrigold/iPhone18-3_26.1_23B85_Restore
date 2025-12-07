@interface APOdmlTrainingRowBiomeQuery
+ (void)combineRecords:(id)records andSaveTo:(id)to;
+ (void)trainingRowsFromBiomeEvent:(id)event recordID:(id)d requiredFeatures:(id)features andSaveTo:(id)to;
+ (void)validateRows:(id)rows recipe:(id)recipe;
- (APOdmlTrainingRowBiomeQuery)initWithRecipe:(id)recipe;
- (id)makeQuery;
@end

@implementation APOdmlTrainingRowBiomeQuery

- (APOdmlTrainingRowBiomeQuery)initWithRecipe:(id)recipe
{
  recipeCopy = recipe;
  v8.receiver = self;
  v8.super_class = APOdmlTrainingRowBiomeQuery;
  v5 = [(APOdmlTrainingRowBiomeQuery *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(APOdmlBiomeSQLQuery);
    [(APOdmlTrainingRowBiomeQuery *)v5 setRawQuery:v6];

    [(APOdmlTrainingRowBiomeQuery *)v5 setRecipe:recipeCopy];
  }

  return v5;
}

- (id)makeQuery
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_260EF0150;
  v35 = sub_260EF0160;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_260EF0150;
  v29 = sub_260EF0160;
  array = [MEMORY[0x277CBEB18] array];
  v3 = BiomeLibrary();
  adPlatforms = [v3 AdPlatforms];
  oDML = [adPlatforms ODML];
  trainingRows = [oDML TrainingRows];

  publisher = [trainingRows publisher];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_260EF0240;
  v24[3] = &unk_279AC68F8;
  v24[4] = self;
  v24[5] = &v31;
  v8 = [publisher sinkWithCompletion:&unk_287367720 receiveInput:v24];

  v9 = MEMORY[0x277CBEB98];
  recipe = [(APOdmlTrainingRowBiomeQuery *)self recipe];
  coreMLRecipe = [recipe coreMLRecipe];
  inputNames = [coreMLRecipe inputNames];
  v13 = [v9 setWithArray:inputNames];

  v14 = v32[5];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_260EF02C8;
  v21[3] = &unk_279AC6920;
  v21[4] = self;
  v15 = v13;
  v22 = v15;
  v23 = &v25;
  [v14 enumerateKeysAndObjectsUsingBlock:v21];
  v16 = objc_opt_class();
  v17 = v26[5];
  recipe2 = [(APOdmlTrainingRowBiomeQuery *)self recipe];
  [v16 validateRows:v17 recipe:recipe2];

  v19 = [v26[5] copy];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v19;
}

+ (void)combineRecords:(id)records andSaveTo:(id)to
{
  v35 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  toCopy = to;
  adamID = [recordsCopy adamID];

  if (!adamID)
  {
    dictionaryRepresentation = OdmlLogForCategory(0xCuLL);
    if (!os_log_type_enabled(dictionaryRepresentation, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v33 = 138412290;
    v34 = objc_opt_class();
    recordID2 = v34;
    _os_log_impl(&dword_260ECB000, dictionaryRepresentation, OS_LOG_TYPE_ERROR, "[%@] Invalid training row. No Adam ID provided.", &v33, 0xCu);
LABEL_20:

    goto LABEL_21;
  }

  allKeys = [toCopy allKeys];
  recordID = [recordsCopy recordID];
  v10 = [allKeys containsObject:recordID];

  if (!v10)
  {
    dictionaryRepresentation = [recordsCopy dictionaryRepresentation];
    recordID2 = [recordsCopy recordID];
    [toCopy setObject:dictionaryRepresentation forKeyedSubscript:recordID2];
    goto LABEL_20;
  }

  recordID3 = [recordsCopy recordID];
  v12 = [toCopy objectForKeyedSubscript:recordID3];
  dictionaryRepresentation = [v12 objectForKeyedSubscript:@"AdRecords"];

  allKeys2 = [dictionaryRepresentation allKeys];
  adamID2 = [recordsCopy adamID];
  v16 = [allKeys2 containsObject:adamID2];

  if (!v16)
  {
    recordID2 = [recordsCopy dictionaryRepresentation];
    adamID8 = [recordID2 objectForKeyedSubscript:@"AdRecords"];
    adamID3 = [recordsCopy adamID];
    v29 = dictionaryRepresentation;
    v32 = adamID8;
    v31 = adamID3;
    goto LABEL_19;
  }

  if ([recordsCopy impressed])
  {
    adamID4 = [recordsCopy adamID];
    v18 = [dictionaryRepresentation objectForKeyedSubscript:adamID4];
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Impressed"];
  }

  if ([recordsCopy tapped])
  {
    adamID5 = [recordsCopy adamID];
    v20 = [dictionaryRepresentation objectForKeyedSubscript:adamID5];
    [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Tapped"];
  }

  if ([recordsCopy dupe])
  {
    adamID6 = [recordsCopy adamID];
    v22 = [dictionaryRepresentation objectForKeyedSubscript:adamID6];
    [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Dupe"];
  }

  if ([recordsCopy installed])
  {
    adamID7 = [recordsCopy adamID];
    v24 = [dictionaryRepresentation objectForKeyedSubscript:adamID7];
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"AppInstalled"];
  }

  if ([recordsCopy hasErrorCode])
  {
    [recordsCopy errorCode];
    if (v25 != 0)
    {
      v26 = MEMORY[0x277CCABB0];
      [recordsCopy errorCode];
      recordID2 = [v26 numberWithDouble:?];
      adamID8 = [recordsCopy adamID];
      v29 = [dictionaryRepresentation objectForKeyedSubscript:adamID8];
      adamID3 = v29;
      v31 = @"rerankingErrorCode";
      v32 = recordID2;
LABEL_19:
      [(__CFString *)v29 setObject:v32 forKeyedSubscript:v31];

      goto LABEL_20;
    }
  }

LABEL_21:
}

+ (void)trainingRowsFromBiomeEvent:(id)event recordID:(id)d requiredFeatures:(id)features andSaveTo:(id)to
{
  dCopy = d;
  toCopy = to;
  v11 = [APOdmlTrainingSetBuilder trainingRowsFromDESRecord:event featuresRequired:features];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_260EF0830;
  v13[3] = &unk_279AC6948;
  v12 = dCopy;
  v14 = v12;
  [v11 enumerateObjectsUsingBlock:v13];
  if (v11)
  {
    [toCopy addObjectsFromArray:v11];
  }
}

+ (void)validateRows:(id)rows recipe:(id)recipe
{
  recipeCopy = recipe;
  v6 = MEMORY[0x277CCAB58];
  rowsCopy = rows;
  indexSet = [v6 indexSet];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_260EF09AC;
  v14 = &unk_279AC6970;
  v15 = recipeCopy;
  v16 = indexSet;
  v9 = indexSet;
  v10 = recipeCopy;
  [rowsCopy enumerateObjectsUsingBlock:&v11];
  [rowsCopy removeObjectsAtIndexes:{v9, v11, v12, v13, v14}];
}

@end