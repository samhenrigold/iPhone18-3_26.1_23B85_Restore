@interface SGExtractionModel
+ (id)argMaxForLastOutput:(id)output;
+ (id)argMaxForOutputIndex:(id)index index:(int)a4 shape:(id)shape;
+ (id)argMaxForSequence:(id)sequence;
+ (id)enrichTaggedCharacterRangesWithModelOutput:(id)output usingInputCharacterRanges:(id)ranges;
+ (id)inputDictFromTaggedCharacterRanges:(id)ranges usingTokenMapping:(id)mapping forModel:(id)model;
+ (id)inputDictFromTaggedCharacterRanges:(id)ranges usingTokenMapping:(id)mapping forModel:(id)model pflTraining:(BOOL)training hasEvent:(BOOL)event;
+ (id)loadLazyPlistWithBasename:(id)basename;
+ (id)modelOutputFromOutputMapping:(id)mapping modelOutput:(id)output modelInput:(id)input;
+ (unint64_t)featureDimensionForInputSection:(id)section forModel:(id)model;
+ (void)cleanLegacyModelsDirectoryOfModelsNamed:(id)named;
+ (void)cleanModelAssets;
+ (void)cleanModelsDirectoryOfModelsNamed:(id)named;
+ (void)writeDummyRecordInStore;
+ (void)writeToBiomeStreamWithInput:(id)input;
- (id)currentModelURLForModelName:(id)name;
@end

@implementation SGExtractionModel

+ (void)cleanLegacyModelsDirectoryOfModelsNamed:(id)named
{
  v19 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [SGPaths suggestionsDirectoryAfterCreatingIfNeeded:0];
  v6 = [defaultManager enumeratorAtPath:v5];
  nextObject = [v6 nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    *&v8 = 138412290;
    v15 = v8;
    do
    {
      if ([v9 containsString:{namedCopy, v15}] && ((objc_msgSend(v9, "containsString:", @"mlmodel") & 1) != 0 || objc_msgSend(v9, "containsString:", @"mlmodelc")))
      {
        v10 = [v5 stringByAppendingPathComponent:v9];
        v16 = 0;
        v11 = [defaultManager removeItemAtPath:v10 error:&v16];
        v12 = v16;

        if (!v11 || v12)
        {
          v13 = sgLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v18 = v9;
            _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "SGExtractionModel: Couldn't delete model file: %@", buf, 0xCu);
          }
        }
      }

      nextObject2 = [v6 nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }
}

+ (void)cleanModelsDirectoryOfModelsNamed:(id)named
{
  v21 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  modelsDirectoryName = [self modelsDirectoryName];
  v7 = [SGPaths suggestionsSubdirectory:modelsDirectoryName creatingDirectoriesIfNeeded:0];

  if ([defaultManager fileExistsAtPath:v7])
  {
    v8 = [defaultManager enumeratorAtPath:v7];
    nextObject = [v8 nextObject];
    if (nextObject)
    {
      v11 = nextObject;
      *&v10 = 138412290;
      v17 = v10;
      do
      {
        if ([v11 containsString:{namedCopy, v17}])
        {
          v12 = [v7 stringByAppendingPathComponent:v11];
          v18 = 0;
          v13 = [defaultManager removeItemAtPath:v12 error:&v18];
          v14 = v18;

          if (!v13 || v14)
          {
            v15 = sgLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v20 = v11;
              _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, "SGExtractionModel: Couldn't delete model file: %@", buf, 0xCu);
            }
          }
        }

        nextObject2 = [v8 nextObject];

        v11 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

+ (void)cleanModelAssets
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13[0] = @"ReminderModel";
  v13[1] = @"StructuredEventModel";
  v13[2] = @"structuredEventGazetteer";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:{3, 0}];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [self cleanLegacyModelsDirectoryOfModelsNamed:v8];
        [self cleanModelsDirectoryOfModelsNamed:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

+ (id)enrichTaggedCharacterRangesWithModelOutput:(id)output usingInputCharacterRanges:(id)ranges
{
  v44 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  rangesCopy = ranges;
  v31 = objc_opt_new();
  v7 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = outputCopy;
  v8 = off_278949000;
  v9 = rangesCopy;
  v36 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v36)
  {
    v34 = *v40;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [obj objectForKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
        if (objc_msgSend_count(v11))
        {
          v12 = 0;
          do
          {
            if (objc_msgSend_count(v7) <= v12)
            {
              v13 = objc_opt_new();
              [v7 addObject:v13];
            }

            v14 = [v11 objectAtIndexedSubscript:v12];
            v15 = [v14 isEqualToString:@"NONE"];

            if ((v15 & 1) == 0)
            {
              v16 = [v7 objectAtIndexedSubscript:v12];
              v17 = objc_alloc(MEMORY[0x277CCACA8]);
              v18 = [SGTaggedCharacterRange annotationTypeUniqueIdentifier:10];
              v19 = [v11 objectAtIndexedSubscript:v12];
              v20 = [v17 initWithFormat:@"%@_%@", v18, v19];
              [v16 addObject:v20];

              v8 = off_278949000;
              rangesCopy = v9;
            }

            ++v12;
          }

          while (objc_msgSend_count(v11) > v12);
        }
      }

      v36 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v36);
  }

  if (objc_msgSend_count(v7))
  {
    v21 = 0;
    do
    {
      v32 = objc_alloc(v8[59]);
      v37 = [rangesCopy objectAtIndexedSubscript:v21];
      tags = [v37 tags];
      v33 = [v7 objectAtIndexedSubscript:v21];
      v22 = [tags arrayByAddingObjectsFromArray:v33];
      v23 = [rangesCopy objectAtIndexedSubscript:v21];
      range = [v23 range];
      v26 = v25;
      v27 = [v9 objectAtIndexedSubscript:v21];
      text = [v27 text];
      v29 = [v32 initWithAnnotationType:4 tags:v22 range:range text:{v26, text}];
      [v31 addObject:v29];

      v8 = off_278949000;
      rangesCopy = v9;

      ++v21;
    }

    while (objc_msgSend_count(v7) > v21);
  }

  return v31;
}

+ (id)argMaxForOutputIndex:(id)index index:(int)a4 shape:(id)shape
{
  v22[2] = *MEMORY[0x277D85DE8];
  indexCopy = index;
  shapeCopy = shape;
  v8 = [shapeCopy objectAtIndexedSubscript:objc_msgSend_count(shapeCopy) > 1];
  if ([v8 integerValue] < 1)
  {
    v20 = -1;
  }

  else
  {
    v9 = 0;
    v10 = -1.0;
    v20 = -1;
    do
    {
      if (objc_msgSend_count(shapeCopy) < 2)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:v9];
        v21 = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
        v14 = [indexCopy objectForKeyedSubscript:v12];
      }

      else
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:a4];
        v22[0] = v11;
        v12 = [MEMORY[0x277CCABB0] numberWithInt:v9];
        v22[1] = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
        v14 = [indexCopy objectForKeyedSubscript:v13];
      }

      [v14 doubleValue];
      if (v15 > v10)
      {
        [v14 doubleValue];
        v10 = v16;
        v20 = v9;
      }

      ++v9;
    }

    while ([v8 integerValue] > v9);
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:v20];

  return v17;
}

+ (id)argMaxForLastOutput:(id)output
{
  outputCopy = output;
  shape = [outputCopy shape];
  v6 = [self argMaxForOutputIndex:outputCopy index:0xFFFFFFFFLL shape:shape];

  return v6;
}

+ (id)argMaxForSequence:(id)sequence
{
  sequenceCopy = sequence;
  shape = [sequenceCopy shape];
  v6 = objc_msgSend_count(shape);
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  if (v6 == 2)
  {
    v8 = [shape objectAtIndexedSubscript:0];
    v9 = [v7 initWithCapacity:{objc_msgSend(v8, "integerValue")}];

    v10 = [shape objectAtIndexedSubscript:0];
    integerValue = [v10 integerValue];

    if (integerValue >= 1)
    {
      v12 = 0;
      do
      {
        v13 = [self argMaxForOutputIndex:sequenceCopy index:v12 shape:shape];
        [v9 setObject:v13 atIndexedSubscript:v12];

        ++v12;
        v14 = [shape objectAtIndexedSubscript:0];
        integerValue2 = [v14 integerValue];
      }

      while (integerValue2 > v12);
    }
  }

  else
  {
    v16 = [self argMaxForOutputIndex:sequenceCopy index:0 shape:shape];
    v9 = [v7 initWithObjects:{v16, 0}];
  }

  return v9;
}

+ (id)modelOutputFromOutputMapping:(id)mapping modelOutput:(id)output modelInput:(id)input
{
  mappingCopy = mapping;
  outputCopy = output;
  inputCopy = input;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9697;
  v24 = __Block_byref_object_dispose__9698;
  v25 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__SGExtractionModel_modelOutputFromOutputMapping_modelOutput_modelInput___block_invoke;
  v15[3] = &unk_27894CDD8;
  v11 = outputCopy;
  v18 = &v20;
  selfCopy = self;
  v16 = v11;
  v12 = inputCopy;
  v17 = v12;
  [mappingCopy enumerateKeysAndObjectsUsingBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __73__SGExtractionModel_modelOutputFromOutputMapping_modelOutput_modelInput___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) valueForKey:v7];
  v10 = [v8 objectForKeyedSubscript:@"mapping"];
  v11 = [v8 objectForKeyedSubscript:@"IS_TIME_DISTRIBUTED"];
  v12 = [v11 BOOLValue];

  v13 = objc_opt_class();
  v34 = a1;
  v35 = v9;
  if (v12)
  {
    v32 = v8;
    v33 = v7;
    v14 = [v13 argMaxForSequence:v9];
    v15 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [v10 objectAtIndexedSubscript:{objc_msgSend(*(*(&v37 + 1) + 8 * i), "integerValue")}];
          if (v21)
          {
            [v15 addObject:v21];
          }

          else
          {
            v22 = sgRemindersLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "Unable to map output to label", buf, 2u);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v18);
    }

    v7 = v33;
    [*(*(*(v34 + 48) + 8) + 40) setObject:v15 forKeyedSubscript:v33];
    v8 = v32;
  }

  else
  {
    v16 = [v13 argMaxForLastOutput:v9];
    v15 = [v10 objectAtIndexedSubscript:{objc_msgSend(v16, "integerValue")}];
    v23 = objc_opt_new();
    v24 = [*(a1 + 40) valueForKey:@"L"];
    v25 = v24;
    if (v24)
    {
      v26 = [v24 shape];
      v27 = [v26 objectAtIndexedSubscript:0];
      v28 = [v27 unsignedIntegerValue];

      for (; v28; --v28)
      {
        [v23 addObject:v15];
      }

      [*(*(*(v34 + 48) + 8) + 40) setObject:v23 forKeyedSubscript:v7];
    }

    else
    {
      v29 = sgRemindersLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v29, OS_LOG_TYPE_ERROR, "Found no Lemma input when trying to extend output label to sequence length.", buf, 2u);
      }

      v30 = *(*(v34 + 48) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = 0;

      *a4 = 1;
    }
  }
}

+ (unint64_t)featureDimensionForInputSection:(id)section forModel:(id)model
{
  v17 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  modelDescription = [model modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  v8 = [inputDescriptionsByName objectForKeyedSubscript:sectionCopy];
  multiArrayConstraint = [v8 multiArrayConstraint];
  shape = [multiArrayConstraint shape];

  if (shape)
  {
    v11 = [shape objectAtIndexedSubscript:0];
    unsignedIntValue = [v11 unsignedIntValue];
  }

  else
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = sectionCopy;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "featureDimensionForInputSection: Model doesn't have description for inputSection: %@", &v15, 0xCu);
    }

    unsignedIntValue = 1;
  }

  return unsignedIntValue;
}

+ (void)writeDummyRecordInStore
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:@"com.apple.CoreSuggestions.SemlPlugin"];
  v3 = v2;
  if (v2)
  {
    [v2 deleteAllSavedRecordsWithCompletion:&__block_literal_global_150];
    v4 = objc_opt_new();
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __44__SGExtractionModel_writeDummyRecordInStore__block_invoke_159;
    v9 = &unk_27894CDB0;
    v10 = &unk_28474B3F0;
    [v3 saveRecordWithData:v4 recordInfo:? completion:?];

    v5 = v10;
  }

  else
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = @"com.apple.CoreSuggestions.SemlPlugin";
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "SemlTraining failed to get a DESRecordStore for %@", buf, 0xCu);
    }
  }
}

void __44__SGExtractionModel_writeDummyRecordInStore__block_invoke_159(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "Failed to send session stats %@ to Fides. Error: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "Successfully sent stats %@ to Fides.", &v9, 0xCu);
  }
}

void __44__SGExtractionModel_writeDummyRecordInStore__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "Failed to delete existing records in DESRecordStore. Error: %@", &v4, 0xCu);
    }
  }
}

+ (void)writeToBiomeStreamWithInput:(id)input
{
  v28 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v4 = MEMORY[0x277D42570];
  v24 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:inputCopy options:0 error:&v24];
  v6 = v24;
  v7 = [v5 copy];
  v8 = [v4 compress:v7 lowMemory:1];

  v9 = sgLogHandle();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 length];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "JsonData: %tu bytes", &buf, 0xCu);
    }

    v10 = [MEMORY[0x277CF17F8] newPrivateStreamDefaultConfigurationWithStoreBasePath:@"/private/var/mobile/Library/PrivateBiomeStream/SemlPlugin/"];
    v12 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"ExamplePrivateStream" storeConfig:v10];
    source = [v12 source];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2020000000;
    v27 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v14 = [v12 publisherWithStartTime:0 endTime:0 maxEvents:&unk_284749410 lastN:0 reversed:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__SGExtractionModel_writeToBiomeStreamWithInput___block_invoke_2;
    v19[3] = &unk_27894CD60;
    v19[4] = &buf;
    v19[5] = &v20;
    v15 = [v14 sinkWithCompletion:&__block_literal_global_9737 receiveInput:v19];
    v16 = v21[3];
    if (v16 == [&unk_284749410 unsignedIntValue])
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __49__SGExtractionModel_writeToBiomeStreamWithInput___block_invoke_3;
      v18[3] = &unk_27894CD88;
      v18[4] = &buf;
      [v12 pruneWithPredicateBlock:v18];
    }

    v17 = [ExampleEvent eventWithData:v8 dataVersion:1];
    [source sendEvent:v17];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&buf, 8);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "JSON data could not be generated: %@", &buf, 0xCu);
  }
}

void *__49__SGExtractionModel_writeToBiomeStreamWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 timestamp];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

+ (id)inputDictFromTaggedCharacterRanges:(id)ranges usingTokenMapping:(id)mapping forModel:(id)model pflTraining:(BOOL)training hasEvent:(BOOL)event
{
  eventCopy = event;
  trainingCopy = training;
  v80 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  mappingCopy = mapping;
  modelCopy = model;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3032000000;
  v75[3] = __Block_byref_object_copy__9697;
  v75[4] = __Block_byref_object_dispose__9698;
  v76 = 0;
  v46 = rangesCopy;
  v12 = objc_msgSend_count(rangesCopy);
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __104__SGExtractionModel_inputDictFromTaggedCharacterRanges_usingTokenMapping_forModel_pflTraining_hasEvent___block_invoke;
  v61[3] = &unk_27894CD38;
  selfCopy = self;
  v69 = v12;
  v52 = modelCopy;
  v62 = v52;
  v66 = v75;
  v63 = mappingCopy;
  v67 = &v71;
  v48 = v13;
  v64 = v48;
  v70 = trainingCopy;
  v47 = v14;
  v65 = v47;
  v54 = v63;
  [v63 enumerateKeysAndObjectsUsingBlock:v61];
  if (*(v72 + 24) != 1)
  {
    v37 = 0;
    goto LABEL_28;
  }

  v51 = 0;
LABEL_3:
  if (objc_msgSend_count(v46) > v51)
  {
    context = objc_autoreleasePoolPush();
    v15 = [v46 objectAtIndexedSubscript:v51];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v44 = v15;
    tags = [v15 tags];
    v17 = [tags countByEnumeratingWithState:&v57 objects:v79 count:16];
    if (!v17)
    {
      goto LABEL_20;
    }

    v55 = *v58;
    obj = tags;
    while (1)
    {
      v18 = 0;
      v56 = v17;
      do
      {
        if (*v58 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v57 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 substringWithRange:{0, 1}];
        v22 = [v54 objectForKeyedSubscript:v21];
        if (v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = [self featureDimensionForInputSection:v21 forModel:v52];
          v25 = [v19 substringFromIndex:2];
          v26 = [v22 objectForKeyedSubscript:v25];

          if (v26)
          {
            if (v24 < 2)
            {
              v34 = [v48 objectForKeyedSubscript:v21];
              v35 = [MEMORY[0x277CCABB0] numberWithInt:v51];
              v77[0] = v35;
              v77[1] = &unk_284749440;
              v77[2] = &unk_284749440;
              v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:3];
              [v34 setObject:v26 forKeyedSubscript:v36];

              if (trainingCopy)
              {
                v31 = [v47 objectForKeyedSubscript:v21];
                v32 = [v31 objectAtIndexedSubscript:v51];
                [v32 setObject:v26 atIndexedSubscript:0];
LABEL_16:
              }
            }

            else
            {
              v27 = [v48 objectForKeyedSubscript:v21];
              v28 = [MEMORY[0x277CCABB0] numberWithInt:v51];
              v78[0] = v28;
              v78[1] = &unk_284749440;
              v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v26, "unsignedIntValue")}];
              v78[2] = v29;
              v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
              [v27 setObject:&unk_284749428 forKeyedSubscript:v30];

              if (trainingCopy)
              {
                v31 = [v47 objectForKeyedSubscript:v21];
                v32 = [v31 objectAtIndexedSubscript:v51];
                firstObject = [v32 firstObject];
                [firstObject setObject:&unk_284749428 atIndexedSubscript:{objc_msgSend(v26, "unsignedIntValue")}];

                goto LABEL_16;
              }
            }
          }

          objc_autoreleasePoolPop(v23);
        }

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v56 != v18);
      tags = obj;
      v17 = [obj countByEnumeratingWithState:&v57 objects:v79 count:16];
      if (!v17)
      {
LABEL_20:

        objc_autoreleasePoolPop(context);
        ++v51;
        goto LABEL_3;
      }
    }
  }

  if (trainingCopy)
  {
    v38 = objc_opt_new();
    [v47 setObject:v38 forKeyedSubscript:@"polarity_true"];

    v39 = [v47 objectForKeyedSubscript:@"polarity_true"];
    v40 = v39;
    if (eventCopy)
    {
      v41 = &unk_284749428;
    }

    else
    {
      v41 = &unk_284749440;
    }

    [v39 addObject:v41];

    [self writeDummyRecordInStore];
    [self writeToBiomeStreamWithInput:v47];
  }

  v37 = v48;
LABEL_28:

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(v75, 8);

  return v37;
}

void __104__SGExtractionModel_inputDictFromTaggedCharacterRanges_usingTokenMapping_forModel_pflTraining_hasEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v48[3] = *MEMORY[0x277D85DE8];
  v41 = a2;
  v6 = [*(a1 + 80) featureDimensionForInputSection:? forModel:?];
  v7 = objc_alloc(MEMORY[0x277CBFF48]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 88)];
  v48[0] = v8;
  v48[1] = &unk_284749428;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v48[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
  v11 = *(*(a1 + 64) + 8);
  obj = *(v11 + 40);
  v12 = [v7 initWithShape:v10 dataType:131104 error:&obj];
  objc_storeStrong((v11 + 40), obj);

  v42 = v12;
  if (v12)
  {
    v14 = *(a1 + 88);
    v40 = a1;
    if (v14)
    {
      v15 = 0;
      *&v13 = 138412290;
      v38 = v13;
      do
      {
        if (v6)
        {
          for (i = 0; i != v6; ++i)
          {
            if (v6 < 2)
            {
              v17 = [MEMORY[0x277CCABB0] numberWithInt:0];
              v20 = [*(a1 + 40) objectForKeyedSubscript:v41];
              v18 = [v20 objectForKeyedSubscript:&stru_284703F00];

              if (!v18)
              {
                v21 = sgLogHandle();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = v38;
                  v46 = v41;
                  _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "inputDictFromTaggedCharacterRanges: '' not present for inputSection: %@", buf, 0xCu);
                }

                v18 = v17;
              }

              v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v15, v38}];
              v44[0] = v19;
              v44[1] = &unk_284749440;
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
              v44[2] = v22;
              v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
              [v42 setObject:v18 forKeyedSubscript:v23];

              a1 = v40;
            }

            else
            {
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
              v47[0] = v17;
              v47[1] = &unk_284749440;
              v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
              v47[2] = v18;
              v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
              [v42 setObject:&unk_284749440 forKeyedSubscript:v19];
            }
          }

          v14 = *(a1 + 88);
        }

        ++v15;
      }

      while (v15 < v14);
    }

    [*(a1 + 48) setObject:v42 forKeyedSubscript:{v41, v38}];
    if (*(a1 + 96))
    {
      v24 = objc_opt_new();
      [*(v40 + 56) setObject:v24 forKeyedSubscript:v41];

      if (*(v40 + 88))
      {
        v26 = 0;
        *&v25 = 138412290;
        v39 = v25;
        do
        {
          v27 = objc_opt_new();
          if (v6)
          {
            for (j = 0; j != v6; ++j)
            {
              if (v6 < 2)
              {
                v33 = [*(v40 + 40) objectForKeyedSubscript:v41];
                v31 = [v33 objectForKeyedSubscript:&stru_284703F00];

                if (!v31)
                {
                  v34 = sgLogHandle();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v39;
                    v46 = v41;
                    _os_log_error_impl(&dword_231E60000, v34, OS_LOG_TYPE_ERROR, "inputDictFromTaggedCharacterRanges: '' not present for inputSection: %@", buf, 0xCu);
                  }

                  v31 = &unk_284749440;
                }

                v30 = v27;
                v32 = v31;
              }

              else
              {
                if (!j)
                {
                  v29 = objc_opt_new();
                  [v27 addObject:v29];
                }

                v30 = [v27 objectAtIndex:{0, v39}];
                v31 = v30;
                v32 = &unk_284749440;
              }

              [v30 addObject:{v32, v39}];
            }
          }

          v35 = [*(v40 + 56) objectForKeyedSubscript:{v41, v39}];
          [v35 addObject:v27];

          ++v26;
        }

        while (v26 < *(v40 + 88));
      }
    }
  }

  else
  {
    v36 = sgLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v46 = v37;
      _os_log_error_impl(&dword_231E60000, v36, OS_LOG_TYPE_ERROR, "Unable to create input MLMultiArray: %@", buf, 0xCu);
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (id)inputDictFromTaggedCharacterRanges:(id)ranges usingTokenMapping:(id)mapping forModel:(id)model
{
  modelCopy = model;
  mappingCopy = mapping;
  rangesCopy = ranges;
  v10 = [objc_opt_class() inputDictFromTaggedCharacterRanges:rangesCopy usingTokenMapping:mappingCopy forModel:modelCopy pflTraining:0 hasEvent:0];

  return v10;
}

+ (id)loadLazyPlistWithBasename:(id)basename
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [basename stringByAppendingPathExtension:@"plplist"];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGExtractionModel.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"relPath"}];
  }

  v6 = +[SGAsset localeAsset];
  v7 = [v6 filesystemPathForAssetDataRelativePath:v5];

  if (v7)
  {
    v13 = 0;
    v8 = [MEMORY[0x277D425D8] dictionaryWithPath:v7 error:&v13];
    v9 = v13;
    if (v8)
    {
      goto LABEL_11;
    }

    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "Unable to load plplist content for %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "Unable to resolve path: %@", buf, 0xCu);
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)currentModelURLForModelName:(id)name
{
  nameCopy = name;
  v4 = +[SGAsset localeAsset];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", nameCopy, @"mlmodelc"];

  v6 = [v4 filesystemPathForAssetDataRelativePath:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v6];
  }

  else
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGExtractioNModel: Unable to find URL for model", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

@end