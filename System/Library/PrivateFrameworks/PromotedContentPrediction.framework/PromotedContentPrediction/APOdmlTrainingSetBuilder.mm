@interface APOdmlTrainingSetBuilder
+ (BOOL)_extractFeaturesFromDataBlob:(id)blob featuresRequired:(id)required andSaveTo:(id)to;
+ (id)_gatherFeaturesFromAdRecord:(id)record requiredFeatures:(id)features;
+ (id)classesForDataDict;
+ (id)trainingRowsFromDESRecord:(id)record featuresRequired:(id)required;
+ (id)translateFeatureKeyToDESKey:(id)key;
- (APOdmlTrainingSetBuilder)initWithLocalRecords:(id)records recipe:(id)recipe;
- (BOOL)setError:(id *)error errorCode:(int64_t)code;
- (BOOL)setErrorPtr:(id *)ptr toError:(id)error;
- (id)_combineRows:(id)rows augmentedRows:(id)augmentedRows;
- (id)generateTrainingSet:(id *)set;
- (id)metricsForTrainingRow:(id)row withClientPttr:(id)pttr;
- (id)parseRowsFromRecords:(id)records recordIDs:(id)ds;
- (void)_preprocessAugmentedDESRecords:(id)records andAddMetadataTo:(id)to addRecordIDsTo:(id)dsTo;
- (void)addRequiredFeatures:(id)features;
@end

@implementation APOdmlTrainingSetBuilder

- (APOdmlTrainingSetBuilder)initWithLocalRecords:(id)records recipe:(id)recipe
{
  recordsCopy = records;
  recipeCopy = recipe;
  v15.receiver = self;
  v15.super_class = APOdmlTrainingSetBuilder;
  v9 = [(APOdmlTrainingSetBuilder *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB98] set];
    requiredFeatures = v9->_requiredFeatures;
    v9->_requiredFeatures = v10;

    objc_storeStrong(&v9->_recipe, recipe);
    objc_storeStrong(&v9->_localRecords, records);
    augmentedDESRecords = [recipeCopy augmentedDESRecords];
    augmentedRecords = v9->_augmentedRecords;
    v9->_augmentedRecords = augmentedDESRecords;
  }

  return v9;
}

+ (id)classesForDataDict
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

- (id)generateTrainingSet:(id *)set
{
  v31 = *MEMORY[0x277D85DE8];
  requiredFeatures = [(APOdmlTrainingSetBuilder *)self requiredFeatures];
  v6 = [requiredFeatures count];

  if (v6)
  {
    recipe = [(APOdmlTrainingSetBuilder *)self recipe];
    augmentedDESRecordsRatio = [recipe augmentedDESRecordsRatio];

    v9 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_DEFAULT, "Generating Training Set", &v29, 2u);
    }

    v10 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      localRecords = [(APOdmlTrainingSetBuilder *)self localRecords];
      v29 = 138412290;
      v30 = localRecords;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_DEFAULT, "Local records: %@", &v29, 0xCu);
    }

    v12 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      augmentedRecords = [(APOdmlTrainingSetBuilder *)self augmentedRecords];
      v29 = 138412290;
      v30 = augmentedRecords;
      _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_DEFAULT, "Augmented records: %@", &v29, 0xCu);
    }

    v14 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = augmentedDESRecordsRatio;
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_DEFAULT, "Sampling ratio: %@", &v29, 0xCu);
    }

    localRecords2 = [(APOdmlTrainingSetBuilder *)self localRecords];
    if (localRecords2 && (v16 = localRecords2, v17 = [augmentedDESRecordsRatio intValue], v16, v17 == 1))
    {
      localRecords3 = [(APOdmlTrainingSetBuilder *)self localRecords];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      augmentedRecords2 = [(APOdmlTrainingSetBuilder *)self augmentedRecords];
      array2 = [MEMORY[0x277CBEB18] array];
      [(APOdmlTrainingSetBuilder *)self _preprocessAugmentedDESRecords:augmentedRecords2 andAddMetadataTo:array addRecordIDsTo:array2];
      localRecords4 = [(APOdmlTrainingSetBuilder *)self localRecords];
      if (localRecords4 && (v23 = localRecords4, v24 = [augmentedDESRecordsRatio intValue], v23, v24))
      {
        v25 = [(APOdmlTrainingSetBuilder *)self parseRowsFromRecords:augmentedRecords2 recordIDs:array2];
        localRecords5 = [(APOdmlTrainingSetBuilder *)self localRecords];
        localRecords3 = [(APOdmlTrainingSetBuilder *)self _combineRows:localRecords5 augmentedRows:v25];
      }

      else
      {
        localRecords3 = [(APOdmlTrainingSetBuilder *)self parseRowsFromRecords:augmentedRecords2 recordIDs:array2];
      }
    }
  }

  else
  {
    v27 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_260ECB000, v27, OS_LOG_TYPE_DEFAULT, "No features are required by the model.", &v29, 2u);
    }

    [(APOdmlTrainingSetBuilder *)self setError:set errorCode:8000];
    localRecords3 = 0;
  }

  return localRecords3;
}

- (id)parseRowsFromRecords:(id)records recordIDs:(id)ds
{
  v29 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dsCopy = ds;
  array = [MEMORY[0x277CBEB18] array];
  if ([recordsCopy count])
  {
    v7 = 0;
    v23 = recordsCopy;
    do
    {
      v8 = [recordsCopy objectAtIndexedSubscript:v7];
      v9 = [dsCopy objectAtIndexedSubscript:v7];
      uUIDString = [v9 UUIDString];

      [APOdmlLogUtility printDESRecordInSegments:v8 isPlugin:1 rowID:uUIDString];
      v11 = objc_opt_class();
      requiredFeatures = [(APOdmlTrainingSetBuilder *)self requiredFeatures];
      v25 = v8;
      v13 = [v11 trainingRowsFromDESRecord:v8 featuresRequired:requiredFeatures];

      if ([v13 count] && objc_msgSend(v13, "count"))
      {
        v14 = 0;
        do
        {
          v15 = [v13 objectAtIndexedSubscript:v14];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%ld", v14];
          v17 = [uUIDString stringByAppendingString:v16];

          [v15 setRowID:v17];
          recipe = [(APOdmlTrainingSetBuilder *)self recipe];
          v19 = [v15 isValidRow:recipe];

          if (v19)
          {
            [array addObject:v15];
          }

          ++v14;
        }

        while (v14 < [v13 count]);
      }

      ++v7;
      recordsCopy = v23;
    }

    while (v7 < [v23 count]);
  }

  v20 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = [array count];
    _os_log_impl(&dword_260ECB000, v20, OS_LOG_TYPE_DEFAULT, "Extracted %lu valid training rows from DES record.", buf, 0xCu);
  }

  v21 = [array copy];

  return v21;
}

+ (id)trainingRowsFromDESRecord:(id)record featuresRequired:(id)required
{
  v30 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  requiredCopy = required;
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = objc_opt_class();
  v10 = [recordCopy objectForKey:@"OnDeviceFeatures"];
  v24 = dictionary;
  LODWORD(v9) = [v9 _extractFeaturesFromDataBlob:v10 featuresRequired:requiredCopy andSaveTo:dictionary];

  if (v9)
  {
    v23 = array;
    v22 = recordCopy;
    v11 = [recordCopy objectForKey:@"AdRecords"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v11 objectForKey:*(*(&v25 + 1) + 8 * i)];
          v17 = [objc_opt_class() _gatherFeaturesFromAdRecord:v16 requiredFeatures:requiredCopy];
          if (v17)
          {
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];
            [dictionary2 addEntriesFromDictionary:v17];
            [dictionary2 addEntriesFromDictionary:v24];
            v19 = [[APOdmlTrainingRow alloc] initWithFeatures:dictionary2];
            [v23 addObject:v19];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    array = v23;
    v20 = [v23 copy];

    recordCopy = v22;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_combineRows:(id)rows augmentedRows:(id)augmentedRows
{
  v70 = *MEMORY[0x277D85DE8];
  rowsCopy = rows;
  augmentedRowsCopy = augmentedRows;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v7 = [rowsCopy countByEnumeratingWithState:&v64 objects:v69 count:16];
  v8 = 0.0;
  v9 = 0.0;
  if (v7)
  {
    v10 = v7;
    v11 = *v65;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v65 != v11)
        {
          objc_enumerationMutation(rowsCopy);
        }

        features = [*(*(&v64 + 1) + 8 * i) features];
        recipe = [(APOdmlTrainingSetBuilder *)self recipe];
        augmentedDESRecordsTargetKey = [recipe augmentedDESRecordsTargetKey];
        v16 = [features objectForKey:augmentedDESRecordsTargetKey];
        firstObject = [v16 firstObject];

        if ([firstObject BOOLValue])
        {
          v9 = v9 + 1.0;
        }
      }

      v10 = [rowsCopy countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v10);
  }

  v56 = rowsCopy;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v18 = augmentedRowsCopy;
  v19 = [v18 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v61;
    v8 = 0.0;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v61 != v21)
        {
          objc_enumerationMutation(v18);
        }

        features2 = [*(*(&v60 + 1) + 8 * j) features];
        recipe2 = [(APOdmlTrainingSetBuilder *)self recipe];
        augmentedDESRecordsTargetKey2 = [recipe2 augmentedDESRecordsTargetKey];
        v26 = [features2 objectForKey:augmentedDESRecordsTargetKey2];
        firstObject2 = [v26 firstObject];

        if ([firstObject2 BOOLValue])
        {
          v8 = v8 + 1.0;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v20);
  }

  v28 = [v56 arrayByAddingObjectsFromArray:v18];
  recipe3 = [(APOdmlTrainingSetBuilder *)self recipe];
  augmentedDESRecordsTruePercentage = [recipe3 augmentedDESRecordsTruePercentage];
  [augmentedDESRecordsTruePercentage floatValue];
  v32 = v31;

  v33 = [v56 count];
  v34 = [v18 count];
  array = [MEMORY[0x277CBEB18] array];
  v59 = v28;
  v35 = [v28 count];
  recipe4 = [(APOdmlTrainingSetBuilder *)self recipe];
  augmentedDESRecordsLimit = [recipe4 augmentedDESRecordsLimit];
  unsignedLongValue = [augmentedDESRecordsLimit unsignedLongValue];

  if (v35 >= unsignedLongValue)
  {
    v39 = unsignedLongValue;
  }

  else
  {
    v39 = v35;
  }

  if (v39)
  {
    v40 = v39;
    v41 = 0;
    v42 = (v9 + v8) / v32;
    v43 = (v34 + v33) - (v9 + v8);
    if (v42 >= (v43 / (1.0 - v32)))
    {
      v42 = v43 / (1.0 - v32);
    }

    v44 = (v32 * v42) / (v9 + v8);
    v45 = (((1.0 - v32) * v42) / v43);
    v46 = v44;
    while (1)
    {
      v47 = [v59 objectAtIndexedSubscript:v41];
      v48 = drand48();
      features3 = [v47 features];
      recipe5 = [(APOdmlTrainingSetBuilder *)self recipe];
      augmentedDESRecordsTargetKey3 = [recipe5 augmentedDESRecordsTargetKey];
      v52 = [features3 objectForKey:augmentedDESRecordsTargetKey3];
      firstObject3 = [v52 firstObject];

      if (!firstObject3)
      {
        goto LABEL_31;
      }

      if ([firstObject3 BOOLValue])
      {
        break;
      }

      if (v48 <= v45)
      {
        goto LABEL_31;
      }

LABEL_32:

      if (v40 == ++v41)
      {
        goto LABEL_33;
      }
    }

    if (v48 > v46)
    {
      goto LABEL_32;
    }

LABEL_31:
    [array addObject:v47];
    goto LABEL_32;
  }

LABEL_33:
  v54 = [array copy];

  return v54;
}

- (void)_preprocessAugmentedDESRecords:(id)records andAddMetadataTo:(id)to addRecordIDsTo:(id)dsTo
{
  v20 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  toCopy = to;
  dsToCopy = dsTo;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [recordsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    while (1)
    {
      if (*v16 != v12)
      {
        objc_enumerationMutation(recordsCopy);
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      [dsToCopy addObject:uUID];
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
      [toCopy addObject:dictionary];

      if (!--v11)
      {
        v11 = [recordsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }
}

- (void)addRequiredFeatures:(id)features
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:features];
  [(APOdmlTrainingSetBuilder *)self setRequiredFeatures:v4];
}

+ (id)_gatherFeaturesFromAdRecord:(id)record requiredFeatures:(id)features
{
  recordCopy = record;
  featuresCopy = features;
  v7 = [recordCopy objectForKey:@"Tapped"];
  v8 = [recordCopy objectForKey:@"Impressed"];
  if (([v7 BOOLValue] & 1) != 0 || objc_msgSend(v8, "BOOLValue"))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if ([objc_opt_class() _extractFeaturesFromDataBlob:recordCopy featuresRequired:featuresCopy andSaveTo:dictionary] && (v10 = objc_opt_class(), objc_msgSend(recordCopy, "objectForKey:", @"ServerResponse"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = objc_msgSend(v10, "_extractFeaturesFromDataBlob:featuresRequired:andSaveTo:", v11, featuresCopy, dictionary), v11, v10))
    {
      v12 = [dictionary copy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_extractFeaturesFromDataBlob:(id)blob featuresRequired:(id)required andSaveTo:(id)to
{
  v56 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  requiredCopy = required;
  toCopy = to;
  allKeys = [blobCopy allKeys];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_260ED6BC4;
  v46[3] = &unk_279AC6278;
  selfCopy = self;
  v13 = allKeys;
  v47 = v13;
  v14 = dictionary;
  v48 = v14;
  [requiredCopy enumerateObjectsUsingBlock:v46];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  allKeys2 = [v14 allKeys];
  v41 = [allKeys2 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (!v41)
  {
    v29 = 1;
    goto LABEL_27;
  }

  selfCopy2 = self;
  v37 = v13;
  v38 = requiredCopy;
  v39 = v14;
  v16 = *v43;
  v40 = allKeys2;
LABEL_3:
  v17 = 0;
  while (1)
  {
    if (*v43 != v16)
    {
      objc_enumerationMutation(allKeys2);
    }

    v18 = *(*(&v42 + 1) + 8 * v17);
    v19 = [v14 objectForKeyedSubscript:{v18, selfCopy2}];
    v20 = [blobCopy objectForKeyedSubscript:v19];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    arrayOfNumbers = [v20 arrayOfNumbers];
LABEL_10:
    v22 = arrayOfNumbers;
    [toCopy setObject:arrayOfNumbers forKeyedSubscript:v18];
LABEL_11:

LABEL_12:
    if (v41 == ++v17)
    {
      v28 = [allKeys2 countByEnumeratingWithState:&v42 objects:v55 count:16];
      v41 = v28;
      if (!v28)
      {
        v29 = 1;
        goto LABEL_25;
      }

      goto LABEL_3;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = v20;
    arrayOfNumbers = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [toCopy setObject:v20 forKeyedSubscript:v18];
    }

    else
    {
      [toCopy setValue:0 forKey:v18];
    }

    goto LABEL_12;
  }

  v22 = v20;
  if ([v22 type] == 5)
  {
    [v22 multiArrayValue];
    v24 = v23 = blobCopy;
    [v24 arrayFromMultiarray];
    v25 = v16;
    v27 = v26 = toCopy;
    [v26 setObject:v27 forKeyedSubscript:v18];

    toCopy = v26;
    v16 = v25;

    blobCopy = v23;
    v14 = v39;
    allKeys2 = v40;
    goto LABEL_11;
  }

  v30 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = allKeys2;
    v32 = objc_opt_class();
    v33 = v32;
    type = [v22 type];
    *buf = 138412546;
    v51 = v32;
    allKeys2 = v31;
    v52 = 2048;
    v53 = type;
    _os_log_impl(&dword_260ECB000, v30, OS_LOG_TYPE_ERROR, "[%@]: MLFeatureValue type %ld is not supported.", buf, 0x16u);
  }

  v29 = 0;
LABEL_25:
  v13 = v37;
  requiredCopy = v38;
LABEL_27:

  return v29;
}

+ (id)translateFeatureKeyToDESKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"AppDownloadVector"])
  {
    v4 = kAPOdmlFeatureTypeAppDownloadVectorKey;
LABEL_8:
    v5 = [APOdmlPFLUtilities keyForTypes:*v4 placementType:0 assetManagerType:0];
    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:@"AppInstalledVector"])
  {
    v4 = kAPOdmlFeatureTypeInstalledAppVectorKey;
    goto LABEL_8;
  }

  if (([keyCopy isEqualToString:@"AppUsageVector"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"appUsageVector"))
  {
    v4 = kAPOdmlFeatureTypeAppUsageVectorKey;
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"DupeFirstOrganic"])
  {
    v8 = kAPOdmlIsDupeKey;
LABEL_22:
    v5 = *v8;
    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:@"Installed"])
  {
    v8 = kAPOdmlAppInstalledKey;
    goto LABEL_22;
  }

  if ([keyCopy isEqualToString:@"Impressed"])
  {
    v8 = kAPOdmlImpressedKey;
    goto LABEL_22;
  }

  if (([keyCopy isEqualToString:@"Tapped"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"Tap") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"label_input_0"))
  {
    v8 = kAPOdmlTappedKey;
    goto LABEL_22;
  }

  v5 = keyCopy;
LABEL_9:
  v6 = v5;

  return v6;
}

- (id)metricsForTrainingRow:(id)row withClientPttr:(id)pttr
{
  v5 = MEMORY[0x277CBEB38];
  pttrCopy = pttr;
  rowCopy = row;
  dictionary = [v5 dictionary];
  features = [rowCopy features];

  v10 = [features objectForKeyedSubscript:@"Tap"];
  v11 = [v10 objectAtIndexedSubscript:0];
  [dictionary setObject:v11 forKeyedSubscript:@"tap"];

  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"impression"];
  [dictionary setObject:pttrCopy forKeyedSubscript:@"on-device_pTTR"];

  v12 = [dictionary copy];

  return v12;
}

- (BOOL)setError:(id *)error errorCode:(int64_t)code
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:code userInfo:0];
  }

  return error != 0;
}

- (BOOL)setErrorPtr:(id *)ptr toError:(id)error
{
  if (ptr)
  {
    *ptr = error;
  }

  return ptr != 0;
}

@end