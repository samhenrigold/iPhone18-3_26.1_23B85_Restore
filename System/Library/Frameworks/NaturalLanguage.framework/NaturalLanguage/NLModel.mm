@interface NLModel
+ (NLModel)modelWithContentsOfURL:(NSURL *)url error:(NSError *)error;
+ (NLModel)modelWithData:(id)data error:(id *)error;
+ (NLModel)modelWithMLModel:(MLModel *)mlModel error:(NSError *)error;
- (BOOL)writeMLModelToURL:(id)l atomically:(BOOL)atomically error:(id *)error;
- (BOOL)writeMLModelToURL:(id)l options:(id)options error:(id *)error;
- (BOOL)writeToURL:(id)l atomically:(BOOL)atomically error:(id *)error;
- (NLModel)initWithClassifierMLModel:(id)model;
- (NLModel)initWithConfiguration:(id)configuration modelImpl:(id)impl;
- (NLModel)initWithContentsOfURL:(id)l error:(id *)error;
- (NLModel)initWithData:(id)data mlModel:(id)model error:(id *)error;
- (NLModel)initWithMLModel:(id)model error:(id *)error;
- (NSArray)predictedLabelHypothesesForTokens:(NSArray *)tokens maximumCount:(NSUInteger)maximumCount;
- (NSArray)predictedLabelsForTokens:(NSArray *)tokens;
- (NSDictionary)predictedLabelHypothesesForString:(NSString *)string maximumCount:(NSUInteger)maximumCount;
- (NSString)predictedLabelForString:(NSString *)string;
- (id)classifierTestResultsWithDataProvider:(id)provider;
- (id)data;
- (id)labelArray;
- (id)predictedLabelArraysForTokenArrays:(id)arrays;
- (id)sequenceTestResultsWithDataProvider:(id)provider;
- (id)testResultsWithDataProvider:(id)provider;
- (id)testResultsWithDataSet:(id)set;
- (void)dealloc;
@end

@implementation NLModel

+ (NLModel)modelWithContentsOfURL:(NSURL *)url error:(NSError *)error
{
  v6 = url;
  v7 = [[self alloc] initWithContentsOfURL:v6 error:error];

  return v7;
}

+ (NLModel)modelWithMLModel:(MLModel *)mlModel error:(NSError *)error
{
  v6 = mlModel;
  v7 = [[self alloc] initWithMLModel:v6 error:error];

  return v7;
}

+ (NLModel)modelWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[self alloc] initWithData:dataCopy error:error];

  return v7;
}

- (NLModel)initWithConfiguration:(id)configuration modelImpl:(id)impl
{
  configurationCopy = configuration;
  implCopy = impl;
  v14.receiver = self;
  v14.super_class = NLModel;
  v8 = [(NLModel *)&v14 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_modelImpl, impl);
    v11 = dispatch_queue_create("com.apple.NaturalLanguage.NLModel", 0);
    clientQueue = v8->_clientQueue;
    v8->_clientQueue = v11;
  }

  return v8;
}

- (NLModel)initWithData:(id)data mlModel:(id)model error:(id *)error
{
  v81[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  modelCopy = model;
  if (!dataCopy)
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v76 = *MEMORY[0x1E696A578];
      v77 = @"Failed to load model file, data is nil";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      *error = [v12 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v13];
    }

    goto LABEL_90;
  }

  modelCopy2 = model;
  obj = data;
  v9 = NLModelContainerCreateWithContainerData();
  if (!v9)
  {
    if (error)
    {
      v31 = MEMORY[0x1E696ABC0];
      v74 = *MEMORY[0x1E696A578];
      v75 = @"Failed to load model file, cannot read container";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      *error = [v31 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v32];
    }

    goto LABEL_90;
  }

  if (NLModelContainerGetSubtype() != 7 && NLModelContainerGetSubtype() != 8)
  {
    if (!error)
    {
LABEL_89:
      CFRelease(v9);
LABEL_90:
      i = 0;
      goto LABEL_91;
    }

    v28 = MEMORY[0x1E696ABC0];
    v78 = *MEMORY[0x1E696A578];
    v79 = @"Failed to load model file, invalid container type";
    v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    *error = [v28 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v73];
LABEL_35:

    goto LABEL_89;
  }

  Type = NLModelContainerGetType();
  if (Type - 1) <= 8 && ((0x1EFu >> (Type - 1)))
  {
    v11 = objc_opt_class();
  }

  else
  {
    v11 = 0;
  }

  v69 = v11;
  Revision = NLModelContainerGetRevision();
  ModelDataCount = NLModelContainerGetModelDataCount();
  v73 = NLModelContainerCopyInfoDictionary();
  v16 = MEMORY[0x1E695DF90];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:Revision];
  v18 = [v16 dictionaryWithObject:v17 forKey:@"Revision"];

  v19 = unsignedIntegerForKey(v73, @"ModelType", Type == 1);
  v20 = stringForKey(v73, @"Language", 0);
  if (!v20)
  {
    v20 = stringForKey(v73, @"TrainingLanguage", 0);
  }

  i = stringForKeyWithDefault(v73, @"EmbeddingType", @"Static");
  v22 = BOOLForKeyWithDefault(v73, @"UseBidirectionalNeuralNetwork");
  if (v20)
  {
    [v18 setObject:v20 forKey:@"Language"];
  }

  if (i)
  {
    [v18 setObject:i forKey:@"EmbeddingType"];
  }

  if (v19)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  if (v23 == 1)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v18 setObject:v24 forKey:@"UseBidirectionalNeuralNetwork"];
  }

  v70 = [NLModelConfiguration defaultModelConfigurationForType:v19 options:v18 error:error];

  if (!v69 || !v70 || !ModelDataCount)
  {
    if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v80 = *MEMORY[0x1E696A578];
      v81[0] = @"Failed to load model file, invalid configuration or data";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
      *error = [v26 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v27];
    }

    goto LABEL_35;
  }

  v62 = NLModelContainerCopyModelDataAtIndex();
  if (ModelDataCount >= 2)
  {
    v25 = NLModelContainerCopyModelDataAtIndex();
    if (ModelDataCount == 2)
    {
      v58 = 0;
      v59 = 0;
    }

    else
    {
      v59 = NLModelContainerCopyModelDataAtIndex();
      if (ModelDataCount >= 4)
      {
        v29 = NLModelContainerCopyModelDataAtIndex();
        if (ModelDataCount == 4)
        {
          v58 = 0;
        }

        else
        {
          v58 = NLModelContainerCopyModelDataAtIndex();
        }

        goto LABEL_42;
      }

      v58 = 0;
    }

    v29 = 0;
LABEL_42:
    v30 = v25;
    goto LABEL_43;
  }

  v58 = 0;
  v59 = 0;
  v29 = 0;
  v30 = 0;
LABEL_43:
  v57 = v30;
  v61 = stringArrayRepresentationFromData(v30);
  v63 = stringArrayRepresentationFromData(v59);
  v68 = v29;
  v33 = v68;
  bytes = [v68 bytes];
  if ([v68 length] >= 9 && !strncmp(bytes, "bplist00", 8uLL))
  {
    v60 = [MEMORY[0x1E696AE40] propertyListWithData:v68 options:0 format:0 error:0];
  }

  else
  {
    v60 = 0;
  }

  if (v61 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v35 = v61;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v36 = [v35 count];
    if (v36)
    {
      for (i = 0; i != v36; i = (i + 1))
      {
        v37 = [v35 objectAtIndex:i];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v37 length])
        {
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
          [dictionary setObject:v37 forKey:v38];
        }
      }
    }
  }

  else
  {
    dictionary = 0;
  }

  if (v63 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v39 = v63;
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v40 = [v39 count];
    if (v40)
    {
      for (i = 0; i != v40; i = (i + 1))
      {
        v41 = [v39 objectAtIndex:i];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 length])
        {
          v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
          [dictionary2 setObject:v42 forKey:v41];
        }
      }
    }
  }

  else
  {
    dictionary2 = 0;
  }

  if (v60 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v43 = [v63 count];
    v44 = v60;
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v46 = [v44 count];
    if (v43)
    {
      v47 = v46;
      for (i = 0; v43 != i; i = (i + 1))
      {
        if (i >= v47)
        {
          v48 = 0;
        }

        else
        {
          v48 = [v44 objectAtIndex:i];
          if (v48)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_76;
            }
          }
        }

        v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];

        v48 = v49;
LABEL_76:
        v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [dictionary3 setObject:v48 forKey:v50];
      }
    }
  }

  else
  {
    dictionary3 = 0;
  }

  if ([(objc_class *)v69 isEqual:objc_opt_class()])
  {
    if ([v62 length] >= 4)
    {
      v51 = v62;
      if (*[v62 bytes] == 12648430)
      {
        v69 = objc_opt_class();
      }
    }
  }

  v52 = [[v69 alloc] initWithModelData:v62 configuration:v70 labelMap:dictionary vocabularyMap:dictionary2 documentFrequencyMap:dictionary3 customEmbeddingData:v58 trainingInfo:v73 error:error];
  if (v52)
  {
    v53 = [(NLModel *)self initWithConfiguration:v70 modelImpl:v52];
    v54 = v53;
    if (v53)
    {
      objc_storeStrong(&v53->_data, obj);
      objc_storeStrong(&v54->_mlModel, modelCopy2);
      v54->_container = v9;
      i = v54;
      v55 = 0;
      self = i;
      goto LABEL_88;
    }

    self = 0;
  }

  v55 = 1;
LABEL_88:

  if (v55)
  {
    goto LABEL_89;
  }

LABEL_91:

  return i;
}

- (NLModel)initWithClassifierMLModel:(id)model
{
  modelCopy = model;
  v6 = [NLModelConfiguration defaultModelConfigurationForType:0];
  v7 = [[NLModelImplML alloc] initWithMLModel:modelCopy configuration:v6];
  if (v7)
  {
    v8 = [(NLModel *)self initWithConfiguration:v6 modelImpl:v7];
    self = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_mlModel, model);
    }
  }

  return self;
}

- (NLModel)initWithMLModel:(id)model error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    parameters = [modelCopy parameters];
    modelParameterData = [parameters modelParameterData];

    if (modelParameterData)
    {
      v9 = [(NLModel *)self initWithData:modelParameterData mlModel:modelCopy error:error];
LABEL_7:
      self = v9;
      selfCopy = self;
LABEL_23:

      goto LABEL_24;
    }
  }

  if (modelCopy)
  {
    modelParameterData = [modelCopy modelDescription];
    inputDescriptionsByName = [modelParameterData inputDescriptionsByName];
    if ([inputDescriptionsByName count] == 1)
    {
      inputDescriptionsByName2 = [modelParameterData inputDescriptionsByName];
      allValues = [inputDescriptionsByName2 allValues];
      v14 = [allValues objectAtIndexedSubscript:0];
      if ([v14 type] == 3)
      {
        outputDescriptionsByName = [modelParameterData outputDescriptionsByName];
        if ([outputDescriptionsByName count] == 1)
        {
          outputDescriptionsByName2 = [modelParameterData outputDescriptionsByName];
          allValues2 = [outputDescriptionsByName2 allValues];
          v16 = [allValues2 objectAtIndexedSubscript:0];
          type = [v16 type];

          if (type == 3)
          {
            v9 = [(NLModel *)self initWithClassifierMLModel:modelCopy];
            goto LABEL_7;
          }

LABEL_20:
          if (error)
          {
            v18 = MEMORY[0x1E696ABC0];
            v26 = *MEMORY[0x1E696A578];
            v27[0] = @"MLModel does not have supported input and output descriptions for use with NLModel";
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
            *error = [v18 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:2 userInfo:v19];
          }

          selfCopy = 0;
          goto LABEL_23;
        }
      }
    }

    goto LABEL_20;
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"MLModel is nil, cannot create NLModel";
    modelParameterData = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v17 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:2 userInfo:modelParameterData];
    *error = selfCopy = 0;
    goto LABEL_23;
  }

  selfCopy = 0;
LABEL_24:

  return selfCopy;
}

- (NLModel)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  if ([lCopy isFileURL] && (objc_msgSend(lCopy, "path"), v7 = objc_claimAutoreleasedReturnValue(), v8 = open(objc_msgSend(v7, "fileSystemRepresentation"), 0), v7, (v8 & 0x80000000) == 0) && (v15 = 0, v9 = read(v8, &v15, 4uLL), v10 = v15, close(v8), v9 == 4) && v10 == 156685278)
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:1 error:error];
    v12 = v11;
    if (v11)
    {
      v11 = [(NLModel *)self initWithData:v11 error:error];
LABEL_9:
      self = v11;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:lCopy error:error];
    v12 = v11;
    if (v11)
    {
      v11 = [(NLModel *)self initWithMLModel:v11 error:error];
      goto LABEL_9;
    }
  }

  v13 = v11;

  return v13;
}

- (void)dealloc
{
  container = self->_container;
  if (container)
  {
    CFRelease(container);
  }

  v4.receiver = self;
  v4.super_class = NLModel;
  [(NLModel *)&v4 dealloc];
}

- (id)data
{
  v62[16] = *MEMORY[0x1E69E9840];
  labelMap = [(NLModel *)self labelMap];
  v55 = stringArrayRepresentationFromInverseMap(labelMap);

  selfCopy = self;
  vocabularyMap = [(NLModel *)self vocabularyMap];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v6 = vocabularyMap;
  v7 = [v6 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        [dictionary setObject:v11 forKey:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v8);
  }

  v56 = stringArrayRepresentationFromInverseMap(dictionary);

  documentFrequencyMap = [(NLModel *)selfCopy documentFrequencyMap];
  array = [MEMORY[0x1E695DF70] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  allKeys = [documentFrequencyMap allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v59;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v58 + 1) + 8 * j);
        v22 = [documentFrequencyMap objectForKey:v21];
        unsignedIntegerValue = [v22 unsignedIntegerValue];

        if (unsignedIntegerValue >= 2)
        {
          unsignedIntegerValue2 = [v21 unsignedIntegerValue];
          if (unsignedIntegerValue2 > v18)
          {
            v18 = unsignedIntegerValue2;
          }
        }
      }

      v17 = [allKeys countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v25 = 0;
  do
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
    v27 = [documentFrequencyMap objectForKey:v26];

    if (v27)
    {
      [array addObject:v27];
    }

    else
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      [array addObject:v28];
    }

    ++v25;
  }

  while (v25 <= v18);

  configuration = [(NLModel *)selfCopy configuration];
  [configuration revision];

  trainingInfo = [(NLModelImpl *)selfCopy->_modelImpl trainingInfo];
  configuration2 = [(NLModel *)selfCopy configuration];
  v32 = trainingInfo;
  v33 = MEMORY[0x1E695DF90];
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(configuration2, "type")}];
  v35 = [v33 dictionaryWithObject:v34 forKey:@"ModelType"];

  type = [configuration2 type];
  language = [configuration2 language];
  options = [configuration2 options];
  v39 = stringForKeyWithDefault(options, @"EmbeddingType", @"Static");
  v40 = BOOLForKeyWithDefault(options, @"UseBidirectionalNeuralNetwork");
  if (language)
  {
    [v35 setObject:language forKey:@"Language"];
  }

  if (v39)
  {
    [v35 setObject:v39 forKey:@"EmbeddingType"];
  }

  if (type)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  if (v41 == 1)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v35 setObject:v42 forKey:@"UseBidirectionalNeuralNetwork"];
  }

  [v35 addEntriesFromDictionary:v32];

  modelData = [(NLModelImpl *)selfCopy->_modelImpl modelData];
  v44 = v55;
  v45 = dataFromStringArrayRepresentation(v55);
  v46 = dataFromStringArrayRepresentation(v56);
  v47 = [MEMORY[0x1E696AE40] dataWithPropertyList:array format:200 options:0 error:0];
  customEmbeddingData = [(NLModelImpl *)selfCopy->_modelImpl customEmbeddingData];
  v49 = 0;
  if (v35 && modelData && v45)
  {
    v50 = objc_opt_class();
    v51 = modelMethodTypeForImplClass(v50);
    v62[0] = 0;
    if (v51 && ([MEMORY[0x1E695DEC8] arrayWithObjects:{modelData, v45, v46, v47, customEmbeddingData, 0}], (v52 = NLModelContainerCreate()) != 0))
    {
      v53 = v52;
      v49 = NLModelContainerCopyContainerData();
      CFRelease(v53);
    }

    else
    {
      v49 = 0;
    }

    v44 = v55;
  }

  return v49;
}

- (BOOL)writeToURL:(id)l atomically:(BOOL)atomically error:(id *)error
{
  atomicallyCopy = atomically;
  lCopy = l;
  data = [(NLModel *)self data];
  v10 = data;
  if (data)
  {
    v11 = [data writeToURL:lCopy options:atomicallyCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)writeMLModelToURL:(id)l options:(id)options error:(id *)error
{
  v67[5] = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  configuration = [(NLModel *)self configuration];
  type = [configuration type];

  v10 = objc_opt_class();
  v48 = modelMethodTypeForImplClass(v10);
  systemVersion = [(NLModel *)self systemVersion];
  configuration2 = [(NLModel *)self configuration];
  language = [configuration2 language];

  labelArray = [(NLModel *)self labelArray];
  v12 = optionsCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = *MEMORY[0x1E695FDD0];
  v67[0] = *MEMORY[0x1E695FDB8];
  v67[1] = v14;
  v15 = *MEMORY[0x1E695FDC8];
  v67[2] = *MEMORY[0x1E695FDA8];
  v67[3] = v15;
  v67[4] = *MEMORY[0x1E695FDB0];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:5];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v16 = v65 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v63;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v62 + 1) + 8 * i);
        v22 = [v12 objectForKey:v21];
        if (v22)
        {
          [dictionary setObject:v22 forKey:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v18);
  }

  if (type)
  {
    if (type != 1)
    {
      v30 = 0;
      v38 = 0;
      errorCopy5 = error;
      v31 = lCopy;
      if (!error)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v23 = stringForKey(v12, @"InputFeatureName", @"text");
    v24 = stringForKey(v12, @"OutputFeatureName", @"labels");
    v25 = objc_alloc(MEMORY[0x1E695FE20]);
    data = [(NLModel *)self data];
    v27 = [labelArray count];
    v28 = &unk_1F10D13A0;
    if (v27)
    {
      v28 = labelArray;
    }

    v61 = 0;
    v29 = [v25 initWithData:systemVersion language:language inputFeatureName:v23 tokensFeatureName:@"tokens" tokenTagsFeatureName:v24 tokenLocationsFeatureName:@"locations" tokenLengthsFeatureName:@"lengths" modelData:data tagNames:v28 metadata:dictionary error:&v61];
    v30 = v61;

    v31 = lCopy;
    if (v29)
    {
      v60 = v30;
      v32 = &v60;
      v33 = [MEMORY[0x1E695FE18] saveAppleWordTaggingModelToURL:lCopy wordTaggerParameters:v29 error:&v60];
LABEL_27:
      v38 = v33;
      errorCopy5 = error;
LABEL_35:
      v45 = *v32;

      v30 = v45;
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v23 = stringForKey(v12, @"InputFeatureName", @"text");
  if (v48 == 7)
  {
    v24 = stringForKey(v12, @"OutputFeatureName", @"label");
    v39 = objc_alloc(MEMORY[0x1E695FDE0]);
    data2 = [(NLModel *)self data];
    if ([labelArray count])
    {
      v41 = labelArray;
    }

    else
    {
      v41 = &unk_1F10D13B8;
    }

    v57 = 0;
    v29 = [v39 initWithData:systemVersion language:language inputFeatureName:v23 outputFeatureName:v24 modelData:data2 labelNames:v41 metadata:dictionary error:&v57];
    v30 = v57;

    v31 = lCopy;
    if (v29)
    {
      v56 = v30;
      v32 = &v56;
      v33 = [MEMORY[0x1E695FDD8] saveAppleGazetteerModelToURL:lCopy gazetteerParameters:v29 error:&v56];
      goto LABEL_27;
    }

LABEL_28:
    v38 = 0;
    errorCopy5 = error;
    goto LABEL_36;
  }

  v31 = lCopy;
  if (v48 == 8)
  {
    v24 = stringForKey(v12, @"OutputFeatureName", @"vector");
    v34 = objc_alloc(MEMORY[0x1E695FE10]);
    data3 = [(NLModel *)self data];
    v59 = 0;
    v29 = [v34 initWithData:systemVersion language:language inputFeatureName:v23 outputFeatureName:v24 modelData:data3 metadata:dictionary error:&v59];
    v30 = v59;

    errorCopy5 = error;
    if (v29)
    {
      v58 = v30;
      v32 = &v58;
      v37 = [MEMORY[0x1E695FE08] saveAppleWordEmbeddingModelToURL:lCopy wordEmbeddingParameters:v29 error:&v58];
LABEL_34:
      v38 = v37;
      goto LABEL_35;
    }
  }

  else
  {
    v24 = stringForKey(v12, @"OutputFeatureName", @"label");
    v42 = objc_alloc(MEMORY[0x1E695FE00]);
    data4 = [(NLModel *)self data];
    if ([labelArray count])
    {
      v44 = labelArray;
    }

    else
    {
      v44 = &unk_1F10D13D0;
    }

    v55 = 0;
    v29 = [v42 initWithData:systemVersion language:language inputFeatureName:v23 outputFeatureName:v24 modelData:data4 labelNames:v44 metadata:dictionary error:&v55];
    v30 = v55;

    errorCopy5 = error;
    if (v29)
    {
      v54 = v30;
      v32 = &v54;
      v37 = [MEMORY[0x1E695FDF8] saveAppleTextClassifierModelToURL:lCopy textClassifierParameters:v29 error:&v54];
      goto LABEL_34;
    }
  }

  v38 = 0;
LABEL_36:

  if (errorCopy5)
  {
LABEL_37:
    v46 = v30;
    *errorCopy5 = v30;
  }

LABEL_38:

  return v38;
}

- (BOOL)writeMLModelToURL:(id)l atomically:(BOOL)atomically error:(id *)error
{
  atomicallyCopy = atomically;
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"AtomicWrite";
  v8 = MEMORY[0x1E696AD98];
  lCopy = l;
  v10 = [v8 numberWithBool:atomicallyCopy];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  LOBYTE(error) = [(NLModel *)self writeMLModelToURL:lCopy options:v11 error:error];

  return error;
}

- (id)labelArray
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  labelMap = [(NLModel *)self labelMap];
  v5 = stringArrayRepresentationFromInverseMap(labelMap);

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 length] && (objc_msgSend(array, "containsObject:", v10) & 1) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (NSString)predictedLabelForString:(NSString *)string
{
  v4 = string;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      clientQueue = self->_clientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__NLModel_predictedLabelForString___block_invoke;
      block[3] = &unk_1E7628F30;
      v10 = &v11;
      block[4] = self;
      v9 = v4;
      dispatch_sync(clientQueue, block);
    }
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __35__NLModel_predictedLabelForString___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 24) predictedLabelForString:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)predictedLabelsForTokens:(NSArray *)tokens
{
  v4 = tokens;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = MEMORY[0x1E695E0F0];
  if (isAcceptableTokenArray(v4))
  {
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__NLModel_predictedLabelsForTokens___block_invoke;
    block[3] = &unk_1E7628F30;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(clientQueue, block);
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __36__NLModel_predictedLabelsForTokens___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 24) predictedLabelsForTokens:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (id)predictedLabelArraysForTokenArrays:(id)arrays
{
  v27 = *MEMORY[0x1E69E9840];
  arraysCopy = arrays;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = MEMORY[0x1E695E0F0];
  v5 = arraysCopy;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = *v23;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if (!isAcceptableTokenArray(*(*(&v22 + 1) + 8 * i)))
          {

            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__NLModel_predictedLabelArraysForTokenArrays___block_invoke;
    block[3] = &unk_1E7628F30;
    v15 = &v16;
    block[4] = self;
    v14 = v6;
    dispatch_sync(clientQueue, block);
  }

  else
  {
  }

LABEL_14:
  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __46__NLModel_predictedLabelArraysForTokenArrays___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 24) predictedLabelArraysForTokenArrays:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (NSDictionary)predictedLabelHypothesesForString:(NSString *)string maximumCount:(NSUInteger)maximumCount
{
  v6 = string;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    if (maximumCount)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        clientQueue = self->_clientQueue;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __58__NLModel_predictedLabelHypothesesForString_maximumCount___block_invoke;
        v10[3] = &unk_1E7628F58;
        v12 = &v14;
        v10[4] = self;
        v11 = v6;
        v13 = maximumCount;
        dispatch_sync(clientQueue, v10);
      }
    }
  }

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __58__NLModel_predictedLabelHypothesesForString_maximumCount___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 24) predictedLabelHypothesesForString:a1[5] maximumCount:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (![*(*(a1[6] + 8) + 40) count])
  {
    v5 = [*(a1[4] + 24) predictedLabelForString:a1[5]];
    v6 = v5;
    if (v5)
    {
      v11 = v5;
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
      v12[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

- (NSArray)predictedLabelHypothesesForTokens:(NSArray *)tokens maximumCount:(NSUInteger)maximumCount
{
  v6 = tokens;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = MEMORY[0x1E695E0F0];
  if (isAcceptableTokenArray(v6))
  {
    clientQueue = self->_clientQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__NLModel_predictedLabelHypothesesForTokens_maximumCount___block_invoke;
    v10[3] = &unk_1E7628F58;
    v12 = &v14;
    v10[4] = self;
    v11 = v6;
    v13 = maximumCount;
    dispatch_sync(clientQueue, v10);
  }

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __58__NLModel_predictedLabelHypothesesForTokens_maximumCount___block_invoke(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 24) predictedLabelHypothesesForTokens:a1[5] maximumCount:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (![*(*(a1[6] + 8) + 40) count])
  {
    v5 = [*(a1[4] + 24) predictedLabelsForTokens:a1[5]];
    v6 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (a1[7])
          {
            v20 = *(*(&v16 + 1) + 8 * v11);
            v12 = [MEMORY[0x1E696AD98] numberWithDouble:{1.0, v16}];
            v21 = v12;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
          }

          else
          {
            v13 = MEMORY[0x1E695E0F8];
          }

          [v6 addObject:{v13, v16}];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v6;
  }
}

- (id)classifierTestResultsWithDataProvider:(id)provider
{
  providerCopy = provider;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  numberOfInstances = [providerCopy numberOfInstances];
  Current = CFAbsoluteTimeGetCurrent();
  if (numberOfInstances)
  {
    v7 = 0;
    v8 = 0;
    for (i = 0; i != numberOfInstances; ++i)
    {
      v10 = [providerCopy instanceAtIndex:i];
      string = [v10 string];
      label = [v10 label];
      v13 = [(NLModel *)self predictedLabelForString:string];
      v14 = [label isEqualToString:v13];
      v8 += v14 ^ 1;
      v7 += v14;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v15 = CFAbsoluteTimeGetCurrent();
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfInstances];
  [dictionary setObject:v16 forKey:@"NumberOfInstances"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  [dictionary setObject:v17 forKey:@"NumberOfInstancesCorrect"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [dictionary setObject:v18 forKey:@"NumberOfInstancesIncorrect"];

  v19 = v15 - Current;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  [dictionary setObject:v20 forKey:@"OverallTestingTime"];

  if (numberOfInstances)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v7 / numberOfInstances];
    [dictionary setObject:v21 forKey:@"InstanceAccuracy"];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v19 / numberOfInstances];
    [dictionary setObject:v22 forKey:@"PerInstanceTestingTime"];
  }

  return dictionary;
}

- (id)sequenceTestResultsWithDataProvider:(id)provider
{
  providerCopy = provider;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37 = providerCopy;
  numberOfInstances = [providerCopy numberOfInstances];
  Current = CFAbsoluteTimeGetCurrent();
  if (numberOfInstances)
  {
    v6 = 0;
    v42 = 0;
    v43 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    for (i = numberOfInstances; i != v9; numberOfInstances = i)
    {
      v40 = v6;
      v41 = v7;
      v10 = [v37 instanceAtIndex:v9];
      tokens = [v10 tokens];
      v39 = v10;
      labels = [v10 labels];
      v13 = [(NLModel *)self predictedLabelsForTokens:tokens];
      v38 = tokens;
      v14 = [tokens count];
      if (v14)
      {
        v15 = 0;
        v16 = 1;
        do
        {
          if (v15 < [labels count] && v15 < objc_msgSend(v13, "count") && (objc_msgSend(labels, "objectAtIndex:", v15), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectAtIndex:", v15), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v17, v19))
          {
            ++v43;
          }

          else
          {
            v16 = 0;
            ++v8;
          }

          ++v15;
        }

        while (v14 != v15);
      }

      else
      {
        v16 = 1;
      }

      v42 += (v16 & 1) == 0;
      v6 = v40 + (v16 & 1);
      v7 = v14 + v41;

      ++v9;
    }
  }

  else
  {
    v8 = 0;
    v42 = 0;
    v43 = 0;
    v7 = 0;
    v6 = 0;
  }

  v20 = CFAbsoluteTimeGetCurrent();
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfInstances];
  [dictionary setObject:v21 forKey:@"NumberOfInstances"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  [dictionary setObject:v22 forKey:@"NumberOfInstancesCorrect"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
  [dictionary setObject:v23 forKey:@"NumberOfInstancesIncorrect"];

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  [dictionary setObject:v24 forKey:@"NumberOfTokens"];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
  [dictionary setObject:v25 forKey:@"NumberOfTokensCorrect"];

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [dictionary setObject:v26 forKey:@"NumberOfTokensIncorrect"];

  v27 = v20 - Current;
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
  [dictionary setObject:v28 forKey:@"OverallTestingTime"];

  if (numberOfInstances)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v6 / numberOfInstances];
    [dictionary setObject:v29 forKey:@"InstanceAccuracy"];

    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v27 / numberOfInstances];
    [dictionary setObject:v30 forKey:@"PerInstanceTestingTime"];
  }

  if (v7)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v43 / v7];
    [dictionary setObject:v31 forKey:@"TokenAccuracy"];

    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v27 / v7];
    [dictionary setObject:v32 forKey:@"PerTokenTestingTime"];
  }

  return dictionary;
}

- (id)testResultsWithDataProvider:(id)provider
{
  providerCopy = provider;
  configuration = [(NLModel *)self configuration];
  type = [configuration type];

  if (!type)
  {
    v7 = [(NLModel *)self classifierTestResultsWithDataProvider:providerCopy];
    goto LABEL_5;
  }

  if (type == 1)
  {
    v7 = [(NLModel *)self sequenceTestResultsWithDataProvider:providerCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)testResultsWithDataSet:(id)set
{
  v4 = [set dataProviderOfType:2];
  v5 = [(NLModel *)self testResultsWithDataProvider:v4];

  return v5;
}

@end