@interface NLModelImplN
- (NLModelImplN)initWithModelContainer:(void *)container configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)data trainingInfo:(id)info;
- (NLModelImplN)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0;
- (NLModelImplN)initWithModelTrainer:(id)trainer error:(id *)error;
- (id)modelData;
- (id)predictedLabelForString:(id)string;
- (id)predictedLabelHypothesesDictionaryForString:(id)string maximumCount:(unint64_t)count;
- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count;
- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count;
- (id)predictedLabelsDictionaryForString:(id)string;
- (id)predictedLabelsForTokens:(id)tokens;
- (void)dealloc;
@end

@implementation NLModelImplN

- (NLModelImplN)initWithModelContainer:(void *)container configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)data trainingInfo:(id)info
{
  configurationCopy = configuration;
  mapCopy = map;
  infoCopy = info;
  v15 = NLModelCreateWithContainer();
  v16 = unsignedIntegerForKey(infoCopy, 0x1F10C67C0, 0);

  if (v15)
  {
    v23.receiver = self;
    v23.super_class = NLModelImplN;
    v17 = [(NLModelImplN *)&v23 init];
    self = v17;
    if (v17)
    {
      v17->_nlModel = v15;
      v17->_modelContainer = CFRetain(container);
      v18 = [configurationCopy copy];
      configuration = self->_configuration;
      self->_configuration = v18;

      v20 = [mapCopy copy];
      labelMap = self->_labelMap;
      self->_labelMap = v20;

      self->_numberOfTrainingInstances = v16;
    }
  }

  return self;
}

- (NLModelImplN)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0
{
  v32[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  configurationCopy = configuration;
  mapCopy = map;
  vocabularyMapCopy = vocabularyMap;
  frequencyMapCopy = frequencyMap;
  embeddingDataCopy = embeddingData;
  infoCopy = info;
  v32[0] = dataCopy;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v23 = NLModelContainerCreate();
  if (v23)
  {
    v24 = v23;
    v25 = [(NLModelImplN *)self initWithModelContainer:v23 configuration:configurationCopy labelMap:mapCopy vocabularyMap:vocabularyMapCopy documentFrequencyMap:frequencyMapCopy customEmbeddingData:embeddingDataCopy trainingInfo:infoCopy];
    CFRelease(v24);
    self = v25;
    selfCopy = self;
  }

  else
  {
    if (error)
    {
      v29 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v31 = @"Failed to load model file, invalid CRF model data";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *error = [v29 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v27];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NLModelImplN)initWithModelTrainer:(id)trainer error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  trainerCopy = trainer;
  configuration = [trainerCopy configuration];
  dataSet = [trainerCopy dataSet];
  v54 = xmmword_19D4E9090;
  v55 = vdupq_n_s64(0x400uLL);
  v56 = xmmword_19D4E9510;
  v45 = [NLDataSet dataSetWithDataSet:dataSet constraintParameters:&v54 modelTrainer:trainerCopy];
  inverseLabelMap = [v45 inverseLabelMap];
  numberOfTrainingInstances = [dataSet numberOfTrainingInstances];
  options = [trainerCopy options];
  v5 = unsignedIntegerForKey(options, @"MaximumIterations", 25);

  if (initWithModelTrainer_error__onceToken != -1)
  {
    [NLModelImplN initWithModelTrainer:error:];
  }

  if ([v45 numberOfTrainingInstances])
  {
    v6 = MEMORY[0x1E695DF90];
    v7 = MEMORY[0x1E696AD98];
    v41 = trainerCopy;
    v8 = [v7 numberWithInteger:1];
    v43 = [v6 dictionaryWithObject:v8 forKey:*MEMORY[0x1E69981B8]];

    configuration2 = [v41 configuration];

    language = [configuration2 language];

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:20 * v5];
    [v43 setObject:v11 forKey:*MEMORY[0x1E69981B0]];

    if (language)
    {
      [v43 setObject:language forKey:*MEMORY[0x1E69981A8]];
    }

    cf = NLModelTrainerCreate();
    if (cf)
    {
      v12 = [NLDataEnumerator alloc];
      v13 = [v45 dataProviderOfType:0];
      v36 = [(NLDataEnumerator *)v12 initWithDataProvider:v13];

      *&v54 = 0;
      *(&v54 + 1) = &v54;
      v55.i64[0] = 0x2020000000;
      v55.i64[1] = CFAbsoluteTimeGetCurrent();
      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x2020000000;
      v53[3] = 0;
      v52[0] = 0;
      v52[1] = v52;
      v52[2] = 0x2020000000;
      v52[3] = 0;
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x2020000000;
      v51[3] = 0;
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x2020000000;
      v50[3] = 0;
      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x2020000000;
      v49[3] = 0;
      v47[0] = 0;
      v47[1] = v47;
      v47[2] = 0x2020000000;
      v48 = 0;
      [v45 numberOfTrainingInstances];
      if ([v45 numberOfValidationInstances])
      {
        v14 = [NLDataEnumerator alloc];
        v15 = [v45 dataProviderOfType:1];
        v35 = [(NLDataEnumerator *)v14 initWithDataProvider:v15];
      }

      else
      {
        v35 = 0;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = NLGetLogCategory(0);
      internal = [v17 internal];

      if (os_log_type_enabled(internal, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v60 = 0;
        _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      for (i = 0; i < [&unk_1F10D1430 count]; ++i)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = NLGetLogCategory(0);
        internal2 = [v21 internal];

        if (os_log_type_enabled(internal2, OS_LOG_TYPE_INFO))
        {
          v23 = [&unk_1F10D1430 objectAtIndexedSubscript:i];
          v24 = v23;
          uTF8String = [v23 UTF8String];
          *buf = 134218498;
          v60 = 1;
          v61 = 2048;
          v62 = i;
          v63 = 2082;
          v64 = uTF8String;
          _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %{public}s", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
      }

      v26 = v41;
      v27 = NLModelTrainerTrainAndCopyContainer();
      v28 = objc_autoreleasePoolPush();
      v29 = NLGetLogCategory(0);
      internal3 = [v29 internal];

      if (os_log_type_enabled(internal3, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v60 = 3;
        _os_log_impl(&dword_19D48F000, internal3, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished CRF training in %.2f seconds", CFAbsoluteTimeGetCurrent() - *(*(&v54 + 1) + 24)];
      [v26 logMessage:v31];

      CFRelease(cf);
      _Block_object_dispose(v47, 8);
      _Block_object_dispose(v49, 8);
      _Block_object_dispose(v50, 8);
      _Block_object_dispose(v51, 8);
      _Block_object_dispose(v52, 8);
      _Block_object_dispose(v53, 8);
      _Block_object_dispose(&v54, 8);

      if (v27)
      {
        v57 = 0x1F10C67C0;
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfTrainingInstances];
        v58 = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        self = [(NLModelImplN *)self initWithModelContainer:v27 configuration:configuration labelMap:inverseLabelMap vocabularyMap:0 documentFrequencyMap:0 customEmbeddingData:0 trainingInfo:v33];

        CFRelease(v27);
      }
    }

    else
    {
    }
  }

  return self;
}

uint64_t __43__NLModelImplN_initWithModelTrainer_error___block_invoke()
{
  initWithModelTrainer_error__whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

void __43__NLModelImplN_initWithModelTrainer_error___block_invoke_13(uint64_t a1, void *a2, _BYTE *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 hasPrefix:@"***** Iteration #"])
  {
    v8 = *(*(a1 + 40) + 8);
    i = *(v8 + 24) + 1;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * i, 2) <= 0xCCCCCCCCCCCCCCCuLL)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = NLGetLogCategory(0);
      v12 = [v11 internal];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 96) - *(*(*(a1 + 48) + 8) + 24);
        *buf = 134218496;
        v34 = 2;
        v35 = 2048;
        v36 = 0;
        v37 = 2048;
        v38 = v13;
        _os_log_impl(&dword_19D48F000, v12, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %ld", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = objc_autoreleasePoolPush();
      v15 = NLGetLogCategory(0);
      v16 = [v15 internal];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 134218496;
        v34 = 2;
        v35 = 2048;
        v36 = 1;
        v37 = 2048;
        v38 = v17;
        _os_log_impl(&dword_19D48F000, v16, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %f", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v18 = *(a1 + 32);
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Iteration %llu validation accuracy %.6f", *(*(*(a1 + 48) + 8) + 24) + 1, *(*(*(a1 + 56) + 8) + 24)];
      [v18 logMessage:v19];

      ++*(*(*(a1 + 48) + 8) + 24);
      v8 = *(*(a1 + 40) + 8);
      i = *(v8 + 24) + 1;
    }

LABEL_8:
    *(v8 + 24) = i;
    goto LABEL_22;
  }

  if ([v5 hasPrefix:@"Total seconds required for training:"])
  {
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(*(*(a1 + 40) + 8) + 24), 2) >= 0xCCCCCCCCCCCCCCDuLL)
    {
      v20 = *(a1 + 32);
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Iteration %llu validation accuracy %.6f", *(*(*(a1 + 48) + 8) + 24) + 1, *(*(*(a1 + 56) + 8) + 24)];
      [v20 logMessage:v21];
    }

    goto LABEL_22;
  }

  if ([v5 hasPrefix:@"Item accuracy: "])
  {
    v22 = objc_msgSend(v5, "rangeOfString:", @"(");
    v24 = v23;
    v25 = [v5 rangeOfString:@""]);
    if (!v24)
    {
      goto LABEL_22;
    }

    if (!v26)
    {
      goto LABEL_22;
    }

    v6 = v22 + v24;
    v7 = v25 - (v22 + v24);
    if (v25 <= v22 + v24)
    {
      goto LABEL_22;
    }

    v27 = [v5 substringWithRange:{v6, v7}];
    [v27 doubleValue];
    *(*(*(a1 + 56) + 8) + 24) = v28;
LABEL_17:

    goto LABEL_22;
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    goto LABEL_22;
  }

  if ([v5 hasPrefix:@"Number of features"])
  {
    v29 = *(a1 + 32);
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Starting CRF training with %llu samples", *(a1 + 104)];
    [v29 logMessage:v30];

    *(*(*(a1 + 72) + 8) + 24) = CFAbsoluteTimeGetCurrent();
    *(*(*(a1 + 64) + 8) + 24) = 1;
    goto LABEL_22;
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v27 = [v5 stringByTrimmingCharactersInSet:initWithModelTrainer_error__whitespaceAndNewlineCharacterSet];
    if ([v27 length] != 1)
    {
      goto LABEL_17;
    }

    v31 = *(*(*(a1 + 80) + 8) + 24);

    if (v31 <= 0x31)
    {
      v32 = *(*(*(a1 + 88) + 8) + 24);
      v6 = *(a1 + 104);
      v8 = *(*(a1 + 80) + 8);
      for (i = *(v8 + 24) + 1; 50 * v32 < (i * v6); i = *(v8 + 24) + 1)
      {
        reportInstanceCompletionToTrainer(*(a1 + 32), v32, v6, 2);
        v32 = ++*(*(*(a1 + 88) + 8) + 24);
        v6 = *(a1 + 104);
        v8 = *(*(a1 + 80) + 8);
      }

      goto LABEL_8;
    }
  }

LABEL_22:
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
  v5.super_class = NLModelImplN;
  [(NLModelImplN *)&v5 dealloc];
}

- (id)modelData
{
  if (self->_modelContainer && NLModelContainerGetModelDataCount() >= 1)
  {
    v2 = NLModelContainerCopyModelDataAtIndex();
    v3 = MEMORY[0x1E695DEF0];
    BytePtr = CFDataGetBytePtr(v2);
    v5 = [v3 dataWithBytes:BytePtr length:CFDataGetLength(v2)];
    CFRelease(v2);
  }

  else
  {
    v5 = 0;
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

  v12 = [(NLModelImplN *)self predictedLabelsDictionaryForString:v40];
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

  v13 = [(NLModelImplN *)self predictedLabelHypothesesDictionaryForString:string maximumCount:count];
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
  v19 = [(NLModelImplN *)self predictedLabelsDictionaryForString:?];
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
  v4 = [(NLModelImplN *)self predictedLabelHypothesesDictionaryForString:string maximumCount:?];
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
    v44[2] = __63__NLModelImplN_predictedLabelHypothesesForString_maximumCount___block_invoke;
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

uint64_t __63__NLModelImplN_predictedLabelHypothesesForString_maximumCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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