@interface NLModelImplNX
- (NLModelImplNX)initWithModelContainer:(void *)container configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)data trainingInfo:(id)info;
- (NLModelImplNX)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0;
- (NLModelImplNX)initWithModelTrainer:(id)trainer error:(id *)error;
- (id)modelData;
- (id)predictedLabelForString:(id)string;
- (id)predictedLabelHypothesesDictionaryForString:(id)string maximumCount:(unint64_t)count;
- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count;
- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count;
- (id)predictedLabelsDictionaryForString:(id)string;
- (id)predictedLabelsForTokens:(id)tokens;
- (id)trainingInfo;
- (unint64_t)systemVersion;
- (void)dealloc;
@end

@implementation NLModelImplNX

- (NLModelImplNX)initWithModelContainer:(void *)container configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)data trainingInfo:(id)info
{
  configurationCopy = configuration;
  mapCopy = map;
  infoCopy = info;
  v15 = NLModelCreateWithContainer();
  v16 = stringForKey(infoCopy, 0x1F10C6780, 0);
  v17 = stringForKeyWithDefault(infoCopy, @"TrainingEmbeddingType", 0);
  v18 = stringForKeyWithDefault(infoCopy, @"EmbeddingModelIdentifier", 0);
  v19 = unsignedIntegerForKey(infoCopy, 0x1F10C67C0, 0);

  if (v15)
  {
    v26.receiver = self;
    v26.super_class = NLModelImplNX;
    v20 = [(NLModelImplNX *)&v26 init];
    self = v20;
    if (v20)
    {
      v20->_nlModel = v15;
      v20->_modelContainer = CFRetain(container);
      v21 = [configurationCopy copy];
      configuration = self->_configuration;
      self->_configuration = v21;

      v23 = [mapCopy copy];
      labelMap = self->_labelMap;
      self->_labelMap = v23;

      self->_numberOfTrainingInstances = v19;
      objc_storeStrong(&self->_trainingLanguage, v16);
      objc_storeStrong(&self->_trainingEmbeddingType, v17);
      objc_storeStrong(&self->_embeddingModelIdentifier, v18);
    }
  }

  return self;
}

- (NLModelImplNX)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0
{
  v46[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  configurationCopy = configuration;
  mapCopy = map;
  vocabularyMapCopy = vocabularyMap;
  frequencyMapCopy = frequencyMap;
  embeddingDataCopy = embeddingData;
  infoCopy = info;
  v20 = stringForKeyWithDefault(infoCopy, @"TrainingEmbeddingType", 0);
  v21 = stringForKeyWithDefault(infoCopy, @"EmbeddingModelIdentifier", 0);
  v22 = stringForKey(infoCopy, 0x1F10C6780, 0);
  if ([v20 isEqualToString:@"Contextual"])
  {
    if (v21)
    {
      v23 = [NLContextualEmbedding contextualEmbeddingWithIdentifier:v21];
      if (!v23)
      {
        NSLog(&cfstr_FailedToLoadCo_0.isa, v21);
LABEL_17:
        if (error)
        {
          v39 = MEMORY[0x1E696ABC0];
          v45 = *MEMORY[0x1E696A578];
          v46[0] = @"Failed to load model file, could not find contextual embedding";
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
          *error = [v39 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v36];
        }

        selfCopy = 0;
        v35 = dataCopy;
        v30 = vocabularyMapCopy;
        goto LABEL_20;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_17;
      }

      v23 = [NLContextualEmbedding contextualEmbeddingWithLanguage:v22];
      if (!v23)
      {
        NSLog(&cfstr_FailedToLoadCo_1.isa, v22);
        goto LABEL_17;
      }
    }

    v24 = v23;
    if (([v23 hasAvailableAssets] & 1) == 0)
    {
      NSLog(&cfstr_AssetsNotAvail.isa, v24);
      requestContextualEmbeddingAssetsForEmbedding(v24);
    }
  }

  v38 = v21;
  v25 = v20;
  v26 = v22;
  v27 = dataCopy;
  v28 = NLModelContainerCreateWithContainerData();
  if (v28)
  {
    v29 = v28;
    v30 = vocabularyMapCopy;
    v31 = [(NLModelImplNX *)self initWithModelContainer:v28 configuration:configurationCopy labelMap:mapCopy vocabularyMap:vocabularyMapCopy documentFrequencyMap:frequencyMapCopy customEmbeddingData:embeddingDataCopy trainingInfo:infoCopy];
    CFRelease(v29);
    self = v31;
    selfCopy = self;
  }

  else
  {
    v30 = vocabularyMapCopy;
    if (error)
    {
      v33 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44 = @"Failed to load model file, invalid Transfer model data";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *error = [v33 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v34];
    }

    selfCopy = 0;
  }

  v35 = v27;
  v22 = v26;
  v20 = v25;
  v21 = v38;
LABEL_20:

  return selfCopy;
}

- (NLModelImplNX)initWithModelTrainer:(id)trainer error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  trainerCopy = trainer;
  configuration = [trainerCopy configuration];
  language = [configuration language];
  options = [configuration options];
  v64 = stringForKeyWithDefault(options, @"EmbeddingType", @"Dynamic");

  dataSet = [trainerCopy dataSet];
  v90 = xmmword_19D4E9090;
  v91 = vdupq_n_s64(0x400uLL);
  v92 = xmmword_19D4E9510;
  v68 = [NLDataSet dataSetWithDataSet:dataSet constraintParameters:&v90 modelTrainer:trainerCopy];
  inverseLabelMap = [v68 inverseLabelMap];
  numberOfTrainingInstances = [dataSet numberOfTrainingInstances];
  options2 = [trainerCopy options];
  v59 = unsignedIntegerForKey(options2, @"MaximumIterations", 25);

  if (initWithModelTrainer_error__onceToken_0 != -1)
  {
    [NLModelImplNX initWithModelTrainer:error:];
  }

  if (!language)
  {
    v6 = [dataSet dataProviderOfType:0];
    language = [v6 recognizedLanguage];
  }

  if ([v68 numberOfTrainingInstances])
  {
    v58 = trainerCopy;
    v63 = language;
    v62 = v64;
    v7 = MEMORY[0x1E695DF90];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:9];
    v9 = [v7 dictionaryWithObject:v8 forKey:*MEMORY[0x1E69981B8]];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v59];
    [v9 setObject:v10 forKey:*MEMORY[0x1E69981B0]];

    if (v63)
    {
      [v9 setObject:v63 forKey:*MEMORY[0x1E69981A8]];
      if ([v62 isEqualToString:@"Contextual"])
      {
        v11 = [NLContextualEmbedding contextualEmbeddingWithLanguage:v63];
        if ([v11 hasAvailableAssets])
        {
          assetLocaleIdentifier = [v11 assetLocaleIdentifier];
        }

        else
        {
          assetLocaleIdentifier = 0;
        }

        identifier = [v11 identifier];
        if (v11 && ([v11 hasAvailableAssets] & 1) == 0)
        {
          requestContextualEmbeddingAssetsForEmbedding(v11);
        }

        if (assetLocaleIdentifier)
        {
          [v9 setObject:*MEMORY[0x1E69981A0] forKey:*MEMORY[0x1E6998198]];
          [v9 setObject:assetLocaleIdentifier forKey:*MEMORY[0x1E69981C0]];
          v18 = identifier;

          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    else if ([v62 isEqualToString:@"Contextual"])
    {
      identifier = 0;
LABEL_24:
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load contextual embedding for language %@", v63];
      NSLog(&stru_1F10C8E20.isa, v19);
      [v58 logMessage:v19];
      if (error)
      {
        v20 = MEMORY[0x1E696ABC0];
        v89[0] = *MEMORY[0x1E696A578];
        *&v90 = v19;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:v89 count:1];
        *error = [v20 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v21];
      }

      goto LABEL_27;
    }

    if ([v62 isEqualToString:@"Dynamic"])
    {
      [v9 setObject:*MEMORY[0x1E6998190] forKey:*MEMORY[0x1E6998198]];
      identifier = 0;
LABEL_23:
      v56 = v9;
      goto LABEL_28;
    }

    NSLog(&stru_1F10C8E20.isa, @"Unsupported embedding type");
    [v58 logMessage:@"Unsupported embedding type"];
    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v89[0] = *MEMORY[0x1E696A578];
      *&v90 = @"Unsupported embedding type";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:v89 count:1];
      *error = [v16 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v17];
    }

LABEL_27:
    identifier = 0;
    v56 = 0;
LABEL_28:

    v55 = identifier;
    v22 = v56;
    if (!v56)
    {
      v14 = 0;
      goto LABEL_53;
    }

    cf = NLModelTrainerCreate();
    if (!cf)
    {
      v14 = 0;
      v22 = v56;
      goto LABEL_53;
    }

    v23 = [NLDataEnumerator alloc];
    v24 = [v68 dataProviderOfType:0];
    v52 = [(NLDataEnumerator *)v23 initWithDataProvider:v24];

    *&v90 = 0;
    *(&v90 + 1) = &v90;
    v91.i64[0] = 0x2020000000;
    v91.i64[1] = CFAbsoluteTimeGetCurrent();
    v89[0] = 0;
    v89[1] = v89;
    v89[2] = 0x2020000000;
    v89[3] = 0;
    v78[0] = 0;
    v78[1] = v78;
    v78[2] = 0x2020000000;
    v78[3] = 0;
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x2020000000;
    v77[3] = 0;
    v76[0] = 0;
    v76[1] = v76;
    v76[2] = 0x2020000000;
    v76[3] = 0;
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x2020000000;
    v75 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    if ([v68 numberOfValidationInstances])
    {
      v25 = [NLDataEnumerator alloc];
      v26 = [v68 dataProviderOfType:1];
      v51 = [(NLDataEnumerator *)v25 initWithDataProvider:v26];
    }

    else
    {
      v51 = 0;
    }

    v27 = objc_autoreleasePoolPush();
    v28 = NLGetLogCategory(0);
    internal = [v28 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v84 = 0;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    for (i = 0; i < [&unk_1F10D1448 count]; ++i)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = NLGetLogCategory(0);
      internal2 = [v32 internal];

      if (os_log_type_enabled(internal2, OS_LOG_TYPE_INFO))
      {
        v34 = [&unk_1F10D1448 objectAtIndexedSubscript:i];
        v35 = v34;
        uTF8String = [v34 UTF8String];
        *buf = 134218498;
        v84 = 1;
        v85 = 2048;
        v86 = i;
        v87 = 2082;
        v88 = uTF8String;
        _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %{public}s", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
    }

    v37 = v58;
    v38 = NLModelTrainerTrainAndCopyContainer();
    v39 = objc_autoreleasePoolPush();
    v40 = NLGetLogCategory(0);
    internal3 = [v40 internal];

    if (os_log_type_enabled(internal3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v84 = 3;
      _os_log_impl(&dword_19D48F000, internal3, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v39);
    if (v38)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished transfer training in %.2f seconds", CFAbsoluteTimeGetCurrent() - *(*(&v90 + 1) + 24)];
      [v37 logMessage:v42];
    }

    else if (*(v71 + 24) == 1)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load dynamic embedding for language %@", v63];
      NSLog(&stru_1F10C8E20.isa, v42);
      [v37 logMessage:v42];
      if (error)
      {
        v48 = MEMORY[0x1E696ABC0];
        v81 = *MEMORY[0x1E696A578];
        v82 = v42;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        *error = [v48 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v49];
      }
    }

    else
    {
      NSLog(&stru_1F10C8E20.isa, @"Transfer training failed");
      [v37 logMessage:@"Transfer training failed"];
      if (!error)
      {
        goto LABEL_47;
      }

      v50 = MEMORY[0x1E696ABC0];
      v79 = *MEMORY[0x1E696A578];
      v80 = @"Transfer training failed";
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      *error = [v50 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:9 userInfo:v42];
    }

LABEL_47:
    CFRelease(cf);

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(v74, 8);
    _Block_object_dispose(v76, 8);
    _Block_object_dispose(v77, 8);
    _Block_object_dispose(v78, 8);
    _Block_object_dispose(v89, 8);
    _Block_object_dispose(&v90, 8);

    if (!v38)
    {
      v14 = 0;
      goto LABEL_54;
    }

    v43 = MEMORY[0x1E695DF90];
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfTrainingInstances];
    v45 = [v43 dictionaryWithObjectsAndKeys:{v44, 0x1F10C67C0, v62, 0x1F10C6800, 0}];

    if (v63)
    {
      [v45 setObject:v63 forKey:0x1F10C6780];
    }

    if (v55)
    {
      [v45 setObject:v55 forKey:0x1F10C6820];
    }

    v46 = [(NLModelImplNX *)self initWithModelContainer:v38 configuration:configuration labelMap:inverseLabelMap vocabularyMap:0 documentFrequencyMap:0 customEmbeddingData:0 trainingInfo:v45];
    CFRelease(v38);
    v14 = v46;
    self = v14;
    v22 = v45;
LABEL_53:

LABEL_54:
    v13 = v55;
    goto LABEL_55;
  }

  v13 = 0;
  v14 = 0;
LABEL_55:

  return v14;
}

uint64_t __44__NLModelImplNX_initWithModelTrainer_error___block_invoke()
{
  initWithModelTrainer_error__whitespaceAndNewlineCharacterSet_0 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

void __44__NLModelImplNX_initWithModelTrainer_error___block_invoke_25(uint64_t a1, void *a2, _BYTE *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 hasPrefix:@"Average Tag Accuracy"])
  {
    v6 = [v5 rangeOfString:@"="];
    v8 = v7;
    v9 = [v5 rangeOfString:{@", "}];
    if (v8 && v10 && v9 > v6 + v8)
    {
      v11 = [v5 substringWithRange:{v6 + v8, v9 - (v6 + v8)}];
      [v11 doubleValue];
      *(*(*(a1 + 40) + 8) + 24) = v12;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = NLGetLogCategory(0);
    v15 = [v14 internal];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 96) - *(*(*(a1 + 48) + 8) + 24);
      *buf = 134218496;
      v33 = 2;
      v34 = 2048;
      v35 = 0;
      v36 = 2048;
      v37 = v16;
      _os_log_impl(&dword_19D48F000, v15, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = objc_autoreleasePoolPush();
    v18 = NLGetLogCategory(0);
    v19 = [v18 internal];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 134218496;
      v33 = 2;
      v34 = 2048;
      v35 = 1;
      v36 = 2048;
      v37 = v20;
      _os_log_impl(&dword_19D48F000, v19, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %f", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    ++*(*(*(a1 + 48) + 8) + 24);
    v21 = *(a1 + 32);
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Iteration %llu validation accuracy %.6f", *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 40) + 8) + 24)];
    [v21 logMessage:v22];

    goto LABEL_23;
  }

  if ([v5 hasPrefix:@"Embedding Creation Failed"])
  {
    v23 = *(a1 + 56);
LABEL_13:
    *(*(v23 + 8) + 24) = 1;
    goto LABEL_23;
  }

  [v5 rangeOfString:@"failed" options:1];
  if (v24)
  {
    NSLog(&stru_1F10C8E20.isa, v5);
    goto LABEL_23;
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v25 = *(*(a1 + 72) + 8);
    v26 = *(v25 + 24);
    if (v26 <= 1)
    {
      v27 = *(*(*(a1 + 80) + 8) + 24);
      v28 = *(a1 + 104);
      while (1)
      {
        v29 = v26 + 1;
        if (v29 * v28 <= 2 * v27)
        {
          break;
        }

        reportInstanceCompletionToTrainer(*(a1 + 32), v27, v28, 2);
        v27 = ++*(*(*(a1 + 80) + 8) + 24);
        v28 = *(a1 + 104);
        v25 = *(*(a1 + 72) + 8);
        v26 = *(v25 + 24);
      }

      *(v25 + 24) = v29;
      if (*(*(*(a1 + 72) + 8) + 24) == 2)
      {
        v30 = *(a1 + 32);
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Starting transfer training with %llu samples", *(a1 + 104)];
        [v30 logMessage:v31];

        *(*(*(a1 + 88) + 8) + 24) = CFAbsoluteTimeGetCurrent();
        v23 = *(a1 + 64);
        goto LABEL_13;
      }
    }
  }

LABEL_23:
  if ([*(a1 + 32) shouldStop])
  {
    *a3 = 1;
  }
}

- (void)dealloc
{
  modelContainer = self->_modelContainer;
  if (modelContainer)
  {
    CFRelease(modelContainer);
  }

  nlModel = self->_nlModel;
  if (nlModel)
  {
    CFRelease(nlModel);
  }

  v5.receiver = self;
  v5.super_class = NLModelImplNX;
  [(NLModelImplNX *)&v5 dealloc];
}

- (id)modelData
{
  if (self->_nlModel && (v2 = NLModelCopyContainer()) != 0)
  {
    v3 = v2;
    v4 = NLModelContainerCopyContainerData();
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)systemVersion
{
  configuration = [(NLModelImplNX *)self configuration];
  options = [configuration options];

  v5 = stringForKeyWithDefault(options, @"EmbeddingType", 0);
  if ([v5 isEqualToString:@"Contextual"])
  {
    configuration2 = [(NLModelImplNX *)self configuration];
    language = [configuration2 language];

    v8 = [NLContextualEmbedding systemVersionForLanguage:language];
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

- (id)trainingInfo
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfTrainingInstances];
  v5 = [v3 dictionaryWithObjectsAndKeys:{v4, 0x1F10C67C0, self->_trainingEmbeddingType, 0x1F10C6800, 0}];

  trainingLanguage = self->_trainingLanguage;
  if (trainingLanguage)
  {
    [v5 setObject:trainingLanguage forKey:0x1F10C6780];
  }

  embeddingModelIdentifier = self->_embeddingModelIdentifier;
  if (embeddingModelIdentifier)
  {
    [v5 setObject:embeddingModelIdentifier forKey:0x1F10C6820];
  }

  return v5;
}

- (id)predictedLabelsDictionaryForString:(id)string
{
  v3 = NLModelCopyPredictedLabels();

  return v3;
}

- (id)predictedLabelHypothesesDictionaryForString:(id)string maximumCount:(unint64_t)count
{
  v4 = NLModelCopyPredictedLabelsAndProbabilities();

  return v4;
}

- (id)predictedLabelsForTokens:(id)tokens
{
  tokensCopy = tokens;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [tokensCopy count];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E696AD60] string];
  v40 = v39 = v5;
  if (v5)
  {
    v8 = 0;
    do
    {
      v9 = [tokensCopy objectAtIndex:v8];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v40, "length")}];
      [array2 addObject:v10];

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
      [array3 addObject:v11];

      v5 = v39;
      [v40 appendString:v9];
      if (++v8 < v39)
      {
        [v40 appendString:@" "];
      }
    }

    while (v39 != v8);
  }

  v12 = [(NLModelImplNX *)self predictedLabelsDictionaryForString:v40];
  v13 = v12;
  v34 = tokensCopy;
  v36 = array3;
  v37 = array2;
  if (v12)
  {
    v14 = [v12 objectForKey:*MEMORY[0x1E6998160]];
    v15 = [v13 objectForKey:*MEMORY[0x1E6998180]];
    v16 = [v13 objectForKey:*MEMORY[0x1E6998178]];
    v17 = [v14 count];
    if (v5)
    {
      v18 = v17;
      v42 = v14;
      v33 = v13;
      v19 = 0;
      v35 = array;
      do
      {
        v20 = [v37 objectAtIndex:v19];
        unsignedIntegerValue = [v20 unsignedIntegerValue];
        v22 = [v36 objectAtIndex:v19];
        unsignedIntegerValue2 = [v22 unsignedIntegerValue];

        if (v18)
        {
          v38 = v19;
          v24 = 0;
          v25 = unsignedIntegerValue2 + unsignedIntegerValue;
          do
          {
            v26 = [v15 objectAtIndex:v24];
            unsignedIntegerValue3 = [v26 unsignedIntegerValue];
            v28 = [v16 objectAtIndex:v24];
            unsignedIntegerValue4 = [v28 unsignedIntegerValue];

            v30 = 0;
            if (unsignedIntegerValue3 < v25 && unsignedIntegerValue < unsignedIntegerValue4 + unsignedIntegerValue3)
            {
              v30 = [v42 objectAtIndex:v24];
            }

            if (v30)
            {
              break;
            }

            ++v24;
          }

          while (v24 < v18);
          if (v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = &stru_1F10C6540;
          }

          array = v35;
          v19 = v38;
          v5 = v39;
        }

        else
        {
          v30 = 0;
          v31 = &stru_1F10C6540;
        }

        [array addObject:v31];

        ++v19;
      }

      while (v19 != v5);
      v13 = v33;
      v14 = v42;
    }
  }

  else
  {
    for (; v5; --v5)
    {
      [array addObject:&stru_1F10C6540];
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  return array;
}

- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count
{
  tokensCopy = tokens;
  array = [MEMORY[0x1E695DF70] array];
  v7 = [tokensCopy count];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  string = [MEMORY[0x1E696AD60] string];
  v49 = v7;
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = [tokensCopy objectAtIndex:v9];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(string, "length")}];
      [array2 addObject:v11];

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "length")}];
      [array3 addObject:v12];

      v7 = v49;
      [string appendString:v10];
      if (++v9 < v49)
      {
        [string appendString:@" "];
      }
    }

    while (v49 != v9);
  }

  v13 = [(NLModelImplNX *)self predictedLabelHypothesesDictionaryForString:string maximumCount:count];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKey:*MEMORY[0x1E6998168]];
    v16 = [v14 objectForKey:*MEMORY[0x1E6998170]];
    v17 = [v14 objectForKey:*MEMORY[0x1E6998180]];
    v18 = [v14 objectForKey:*MEMORY[0x1E6998178]];
    v19 = [v15 count];
    if (v7)
    {
      v20 = v19;
      v41 = v16;
      v42 = v15;
      v39 = v14;
      v40 = tokensCopy;
      v21 = 0;
      v43 = array2;
      v44 = array;
      do
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v22 = [array2 objectAtIndex:v21];
        unsignedIntegerValue = [v22 unsignedIntegerValue];
        v45 = v21;
        v24 = [array3 objectAtIndex:v21];
        unsignedIntegerValue2 = [v24 unsignedIntegerValue];

        if (v20)
        {
          v26 = 0;
          v27 = unsignedIntegerValue2 + unsignedIntegerValue;
          while (1)
          {
            v28 = [v17 objectAtIndex:v26];
            unsignedIntegerValue3 = [v28 unsignedIntegerValue];
            v30 = [v18 objectAtIndex:v26];
            unsignedIntegerValue4 = [v30 unsignedIntegerValue];

            if (unsignedIntegerValue3 < v27 && unsignedIntegerValue < unsignedIntegerValue4 + unsignedIntegerValue3)
            {
              break;
            }

            if (v20 == ++v26)
            {
              goto LABEL_20;
            }
          }

          v32 = [v42 objectAtIndex:v26];
          v33 = [v41 objectAtIndex:v26];
          if ([v32 count])
          {
            v34 = 0;
            do
            {
              if (v34 >= [v33 count])
              {
                break;
              }

              v35 = [v33 objectAtIndex:v34];
              v36 = [v32 objectAtIndex:v34];
              [dictionary setObject:v35 forKey:v36];

              ++v34;
            }

            while (v34 < [v32 count]);
          }
        }

LABEL_20:
        array = v44;
        [v44 addObject:dictionary];

        v21 = v45 + 1;
        array2 = v43;
      }

      while (v45 + 1 != v49);
      v14 = v39;
      tokensCopy = v40;
      v16 = v41;
      v15 = v42;
    }
  }

  else
  {
    if (v7)
    {
      v37 = MEMORY[0x1E695E0F8];
      do
      {
        [array addObject:v37];
        --v7;
      }

      while (v7);
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  return array;
}

- (id)predictedLabelForString:(id)string
{
  v27 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v19 = [(NLModelImplNX *)self predictedLabelsDictionaryForString:?];
  v4 = [v19 objectForKey:*MEMORY[0x1E6998160]];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [dictionary objectForKey:v12];
        unsignedIntegerValue = [v13 unsignedIntegerValue];

        v15 = unsignedIntegerValue + 1;
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
        [dictionary setObject:v16 forKey:v12];

        if (v15 > v8)
        {
          v17 = v12;

          v8 = v15;
          v9 = v17;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = [(NLModelImplNX *)self predictedLabelHypothesesDictionaryForString:string maximumCount:?];
  v5 = [v4 objectForKey:*MEMORY[0x1E6998168]];
  v40 = v4;
  v6 = [v4 objectForKey:*MEMORY[0x1E6998170]];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v43 = v6;
  if ([v5 count])
  {
    v8 = 0;
    v42 = v5;
    do
    {
      if (v8 >= [v6 count])
      {
        break;
      }

      v9 = [v5 objectAtIndex:v8];
      v10 = [v6 objectAtIndex:v8];
      if ([v9 count])
      {
        v11 = 0;
        do
        {
          if (v11 >= [v10 count])
          {
            break;
          }

          v12 = [v9 objectAtIndex:v11];
          v13 = [dictionary objectForKey:v12];
          v14 = [v10 objectAtIndex:v11];
          v15 = MEMORY[0x1E696AD98];
          [v13 doubleValue];
          v17 = v16;
          [v14 doubleValue];
          v19 = [v15 numberWithDouble:v17 + v18];
          [dictionary setObject:v19 forKey:v12];

          ++v11;
        }

        while (v11 < [v9 count]);
      }

      ++v8;
      v5 = v42;
      v6 = v43;
    }

    while (v8 < [v42 count]);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = dictionary;
  v21 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
  v22 = v20;
  if (!v21)
  {
    goto LABEL_22;
  }

  v23 = v21;
  v24 = *v47;
  v25 = 0.0;
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v47 != v24)
      {
        objc_enumerationMutation(v20);
      }

      v27 = [v20 objectForKey:*(*(&v46 + 1) + 8 * i)];
      [v27 doubleValue];
      v25 = v25 + v28;
    }

    v23 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v23);

  if (count && v25 > 0.0)
  {
    allKeys = [v20 allKeys];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __64__NLModelImplNX_predictedLabelHypothesesForString_maximumCount___block_invoke;
    v44[3] = &unk_1E7628EA8;
    v30 = v20;
    v45 = v30;
    v31 = [allKeys sortedArrayUsingComparator:v44];

    v32 = 0;
    do
    {
      if (v32 >= [v31 count])
      {
        break;
      }

      v33 = [v31 objectAtIndex:v32];
      v34 = [v30 objectForKey:v33];
      v35 = MEMORY[0x1E696AD98];
      [v34 doubleValue];
      v37 = [v35 numberWithDouble:v36 / v25];
      [dictionary2 setObject:v37 forKey:v33];

      ++v32;
    }

    while (count != v32);

    v22 = v45;
    v6 = v43;
LABEL_22:
  }

  return dictionary2;
}

uint64_t __64__NLModelImplNX_predictedLabelHypothesesForString_maximumCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  [v7 doubleValue];
  v9 = v8;

  v10 = [*(a1 + 32) objectForKey:v6];

  [v10 doubleValue];
  v12 = v11;

  if (v9 > v12)
  {
    return -1;
  }

  else
  {
    return v9 < v12;
  }
}

@end