@interface NLModelImplX
- (NLModelImplX)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0;
- (NLModelImplX)initWithModelTrainer:(id)trainer error:(id *)error;
- (float)outputForString:(id)string;
- (id)predictedLabelForString:(id)string;
- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count;
- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count;
- (id)predictedLabelsForTokens:(id)tokens;
- (id)trainingInfo;
- (unint64_t)systemVersion;
- (void)dealloc;
@end

@implementation NLModelImplX

- (NLModelImplX)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0
{
  v103[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  configurationCopy = configuration;
  mapCopy = map;
  embeddingDataCopy = embeddingData;
  v87 = 0;
  v17 = dataCopy;
  infoCopy = info;
  revision = [configurationCopy revision];
  v102 = *MEMORY[0x1E69B2808];
  v103[0] = dataCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:&v102 count:1];
  cf = MRLNeuralNetworkCreate();
  v70 = stringForKey(infoCopy, 0x1F10C6780, 0);
  v20 = v70;
  v69 = stringForKeyWithDefault(infoCopy, @"TrainingEmbeddingType", 0);
  v21 = v69;
  v81 = stringForKeyWithDefault(infoCopy, @"EmbeddingModelIdentifier", 0);
  v68 = unsignedIntegerForKey(infoCopy, 0x1F10C67C0, 0);

  language = v20;
  if (!v20)
  {
    language = [configurationCopy language];
  }

  v23 = v21;
  if (!v21)
  {
    options = [configurationCopy options];
    v23 = stringForKeyWithDefault(options, @"EmbeddingType", 0);
  }

  v78 = embeddingDataCopy;
  v76 = v21;
  if ([v23 isEqualToString:@"Static"])
  {
    if (!language || ([NLEmbedding wordEmbeddingForLanguage:language revision:revision], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      NSLog(&cfstr_FailedToLoadSt.isa, language, revision);
LABEL_22:
      requestWordEmbeddingAssetsForLanguage(language);
LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (![v23 isEqualToString:@"Dynamic"])
  {
    if ([v23 isEqualToString:@"Transformer"])
    {
      if (!language || ([NLEmbedding transformerContextualTokenEmbeddingForLanguage:language], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        NSLog(&cfstr_FailedToLoadTr.isa, language);
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (![v23 isEqualToString:@"Contextual"])
    {
      if ([v23 isEqualToString:@"Custom"])
      {
        if (embeddingDataCopy)
        {
          v86 = 0;
          v26 = [NLEmbedding embeddingWithData:embeddingDataCopy error:&v86];
          v30 = v86;
          if (v26)
          {
            v29 = 0;
            goto LABEL_25;
          }

          v80 = v30;
        }

        else
        {
          v80 = 0;
        }

        NSLog(&cfstr_FailedToLoadEm_3.isa);
        v26 = 0;
        v29 = 0;
        v28 = cf;
        v30 = v80;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v81)
    {
      v27 = [NLContextualEmbedding contextualEmbeddingWithModelIdentifier:?];
      if (!v27)
      {
        NSLog(&cfstr_FailedToLoadCo_0.isa, v81);
        goto LABEL_23;
      }

      v28 = cf;
    }

    else
    {
      if (!language)
      {
        NSLog(&cfstr_FailedToLoadCo_2.isa);
        goto LABEL_23;
      }

      v27 = [NLContextualEmbedding contextualEmbeddingWithLanguage:language];
      v28 = cf;
      if (!v27)
      {
        NSLog(&cfstr_FailedToLoadCo_1.isa, language);
        v26 = 0;
        v29 = 0;
LABEL_54:
        v30 = 0;
        goto LABEL_26;
      }
    }

    v53 = v27;
    if (([v27 hasAvailableAssets] & 1) == 0)
    {
      NSLog(&cfstr_AssetsNotAvail.isa, v53);
      requestContextualEmbeddingAssetsForEmbedding_0(v53);
    }

    v29 = v53;
    v26 = 0;
    goto LABEL_54;
  }

  if (!language || ([NLEmbedding contextualWordEmbeddingForLanguage:language revision:revision], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    NSLog(&cfstr_FailedToLoadDy_0.isa, language, revision);
    goto LABEL_22;
  }

LABEL_16:
  v26 = v25;
LABEL_24:
  v29 = 0;
  v30 = 0;
LABEL_25:
  v28 = cf;
LABEL_26:
  v79 = v30;
  obj = v29;
  if (v28 && v26 | v29)
  {
    v31 = v19;
    v32 = v17;
    v85.receiver = self;
    v85.super_class = NLModelImplX;
    v33 = [(NLModelImplX *)&v85 init];
    if (v33)
    {
      v34 = v33;
      v33->_montrealModel = cf;
      v35 = [configurationCopy copy];
      configuration = v34->_configuration;
      v34->_configuration = v35;

      objc_storeStrong(&v34->_embedding, v26);
      objc_storeStrong(&v34->_contextualEmbedding, obj);
      v37 = [v78 copy];
      customEmbeddingData = v34->_customEmbeddingData;
      v34->_customEmbeddingData = v37;

      v39 = [mapCopy copy];
      labelMap = v34->_labelMap;
      v34->_labelMap = v39;

      v34->_numberOfTrainingInstances = v68;
      objc_storeStrong(&v34->_trainingLanguage, v70);
      objc_storeStrong(&v34->_trainingEmbeddingType, v69);
      objc_storeStrong(&v34->_embeddingModelIdentifier, v81);
      objc_storeStrong(&v34->_modelData, data);
      v41 = v34;
      self = v41;
      v17 = v32;
      v19 = v31;
      goto LABEL_40;
    }

    self = 0;
    v19 = v31;
    v28 = cf;
  }

  if (error)
  {
    if (v87)
    {
      v42 = v87;
LABEL_36:
      *error = v42;
      goto LABEL_37;
    }

    if (v79)
    {
      v42 = v79;
      goto LABEL_36;
    }

    if (v26)
    {
      v73 = MEMORY[0x1E696ABC0];
      v100 = *MEMORY[0x1E696A578];
      v101 = @"Failed to load model file, invalid Transfer model data";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      v44 = v19;
      v46 = v45 = v17;
      v28 = cf;
      *error = [v73 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v46];

      v17 = v45;
      v19 = v44;
    }

    else
    {
      v67 = mapCopy;
      if ([v23 isEqualToString:@"Static"])
      {
        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load model file, could not find static embedding for language %@ revision %llu", language, revision];
        v74 = MEMORY[0x1E696ABC0];
        v48 = configurationCopy;
        v49 = v17;
        v98 = *MEMORY[0x1E696A578];
        v99 = v47;
        v50 = MEMORY[0x1E695DF20];
        v51 = &v99;
        v52 = &v98;
      }

      else if ([v23 isEqualToString:@"Dynamic"])
      {
        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load model file, could not find dynamic embedding for language %@ revision %llu", language, revision];
        v74 = MEMORY[0x1E696ABC0];
        v48 = configurationCopy;
        v49 = v17;
        v96 = *MEMORY[0x1E696A578];
        v97 = v47;
        v50 = MEMORY[0x1E695DF20];
        v51 = &v97;
        v52 = &v96;
      }

      else
      {
        if (![v23 isEqualToString:@"Transformer"])
        {
          v75 = v20;
          cfa = v19;
          if ([v23 isEqualToString:@"Contextual"])
          {
            v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load model file, could not find contextual embedding for language %@", language];
            v58 = MEMORY[0x1E696ABC0];
            v92 = *MEMORY[0x1E696A578];
            v93 = v57;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
            *error = [v58 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v59];
          }

          else
          {
            v60 = v17;
            v61 = [v23 isEqualToString:@"Custom"];
            v62 = MEMORY[0x1E696ABC0];
            if (v61)
            {
              v90 = *MEMORY[0x1E696A578];
              v91 = @"Failed to load model file, invalid custom embedding";
              v63 = MEMORY[0x1E695DF20];
              v64 = &v91;
              v65 = &v90;
            }

            else
            {
              v88 = *MEMORY[0x1E696A578];
              v89 = @"Failed to load model file, invalid embedding type";
              v63 = MEMORY[0x1E695DF20];
              v64 = &v89;
              v65 = &v88;
            }

            v66 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:1];
            *error = [v62 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v66];

            v17 = v60;
          }

          v19 = cfa;
          v20 = v75;
          goto LABEL_37;
        }

        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load model file, could not find transformer embedding for language %@", language];
        v74 = MEMORY[0x1E696ABC0];
        v48 = configurationCopy;
        v49 = v17;
        v94 = *MEMORY[0x1E696A578];
        v95 = v47;
        v50 = MEMORY[0x1E695DF20];
        v51 = &v95;
        v52 = &v94;
      }

      [v50 dictionaryWithObjects:v51 forKeys:v52 count:1];
      v54 = v20;
      v56 = v55 = v19;
      v17 = v49;
      configurationCopy = v48;
      mapCopy = v67;
      *error = [v74 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v56];

      v19 = v55;
      v20 = v54;
      v28 = cf;
    }
  }

LABEL_37:
  if (v28)
  {
    CFRelease(v28);
  }

  v41 = 0;
LABEL_40:

  return v41;
}

- (NLModelImplX)initWithModelTrainer:(id)trainer error:(id *)error
{
  v162 = *MEMORY[0x1E69E9840];
  v141 = 0;
  trainerCopy = trainer;
  configuration = [trainerCopy configuration];
  language = [configuration language];
  embeddingURL = [configuration embeddingURL];
  embeddingModel = [configuration embeddingModel];
  embeddingData = [configuration embeddingData];
  dataSet = [trainerCopy dataSet];
  *buf = xmmword_19D4E9090;
  *&buf[16] = vdupq_n_s64(0x400uLL);
  v161 = xmmword_19D4E9510;
  v124 = [NLDataSet dataSetWithDataSet:dataSet constraintParameters:buf modelTrainer:trainerCopy];
  labelMap = [dataSet labelMap];
  inverseLabelMap = [dataSet inverseLabelMap];
  revision = [configuration revision];
  numberOfTrainingInstances = [dataSet numberOfTrainingInstances];
  numberOfLabels = [dataSet numberOfLabels];
  numberOfValidationInstances = [dataSet numberOfValidationInstances];
  options = [trainerCopy options];
  v111 = unsignedIntegerForKey(options, @"MaximumIterations", 75);

  options2 = [configuration options];
  v126 = stringForKeyWithDefault(options2, @"EmbeddingType", 0);

  v11 = language;
  if (!language)
  {
    v12 = [dataSet dataProviderOfType:?];
    recognizedLanguage = [v12 recognizedLanguage];

    v11 = recognizedLanguage;
  }

  v125 = v11;
  if (v126 || !v11)
  {
    if ([(__CFString *)v126 isEqualToString:@"Static"])
    {
      v16 = v125;
      if (v125)
      {
        v14 = [NLEmbedding wordEmbeddingForLanguage:v125 revision:revision];
        v16 = v125;
        if (v14)
        {
          goto LABEL_22;
        }
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load static embedding for language %@ revision %llu", v16, revision];
      v118 = v17;
      if (error)
      {
        v19 = MEMORY[0x1E696ABC0];
        v156 = *MEMORY[0x1E696A578];
        v157 = v17;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
        *error = [v19 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v20];
      }

      requestWordEmbeddingAssetsForLanguage(v125);
      goto LABEL_49;
    }

    if ([(__CFString *)v126 isEqualToString:@"Dynamic"])
    {
      v16 = v125;
      if (v125)
      {
        v14 = [NLEmbedding contextualWordEmbeddingForLanguage:v125 revision:revision];
        v16 = v125;
        if (v14)
        {
          goto LABEL_22;
        }
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load dynamic embedding for language %@ revision %llu", v16, revision];
      v118 = v21;
      if (error)
      {
        v22 = MEMORY[0x1E696ABC0];
        v154 = *MEMORY[0x1E696A578];
        v155 = v21;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
        *error = [v22 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v23];
      }

      requestWordEmbeddingAssetsForLanguage(v125);
      goto LABEL_49;
    }

    if ([(__CFString *)v126 isEqualToString:@"Transformer"])
    {
      v16 = v125;
      if (v125)
      {
        v14 = [NLEmbedding transformerContextualTokenEmbeddingForLanguage:?];
        v16 = v125;
        if (v14)
        {
          goto LABEL_22;
        }
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load transformer embedding for language %@", v16];
      v118 = v26;
      if (error)
      {
        v27 = MEMORY[0x1E696ABC0];
        v152 = *MEMORY[0x1E696A578];
        v153 = v26;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
        *error = [v27 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v28];
      }

      requestWordEmbeddingAssetsForLanguage(v125);
      goto LABEL_49;
    }

    if ([(__CFString *)v126 isEqualToString:@"Contextual"])
    {
      v34 = v125;
      if (v125)
      {
        v35 = [NLContextualEmbedding contextualEmbeddingWithLanguage:?];
        v14 = v35;
        v34 = v125;
        if (v35)
        {
          if ([v35 hasAvailableAssets])
          {
            v117 = 0;
            embeddingData2 = 0;
            v115 = 0;
            v118 = 0;
LABEL_55:
            v123 = 0;
            if (![v14 dimension] || numberOfTrainingInstances < 2 || (v123 = 0, numberOfLabels < 2) || (v108 = v14, numberOfValidationInstances <= 1))
            {
              v24 = v14;
              v25 = 0;
              goto LABEL_117;
            }

            goto LABEL_59;
          }

          v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Assets not available for contextual embedding %@", v14];
          v118 = v94;
          if (error)
          {
            v95 = MEMORY[0x1E696ABC0];
            v150 = *MEMORY[0x1E696A578];
            v151 = v94;
            v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
            *error = [v95 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v96];
          }

          requestContextualEmbeddingAssetsForEmbedding_0(v14);
          v32 = 0;
          embeddingData2 = 0;
          goto LABEL_50;
        }
      }

      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load contextual embedding for language %@", v34];
      v118 = v37;
      if (error)
      {
        v38 = MEMORY[0x1E696ABC0];
        v148 = *MEMORY[0x1E696A578];
        v149 = v37;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
        *error = [v38 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v39];
      }

LABEL_49:
      v32 = 0;
      embeddingData2 = 0;
      v14 = 0;
LABEL_50:
      v33 = 0;
LABEL_51:
      v117 = v33;
      v115 = v32;
      if (!v118)
      {
LABEL_54:
        if (v14)
        {
          goto LABEL_55;
        }

        v24 = 0;
        v123 = 0;
LABEL_73:
        v25 = 0;
        goto LABEL_117;
      }

      v40 = v118;
LABEL_53:
      v118 = v40;
      NSLog(&stru_1F10C8E20.isa, v40);
      [trainerCopy logMessage:v118];
      goto LABEL_54;
    }

    if (![(__CFString *)v126 isEqualToString:@"Custom"])
    {
      v24 = 0;
      v123 = 0;
      v117 = 0;
      embeddingData2 = 0;
      v115 = 0;
      v118 = 0;
      goto LABEL_73;
    }

    if (embeddingURL)
    {
      v117 = [NLEmbedding _embeddingWithContentsOfURL:embeddingURL error:0];
      if (v117)
      {
        embeddingData2 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:embeddingURL];
        v36 = 0;
      }

      else
      {
        v98 = [NLModel modelWithContentsOfURL:embeddingURL error:error];
        v36 = v98;
        if (!v98)
        {
          v115 = 0;
          goto LABEL_141;
        }

        embeddingData2 = [v98 embeddingData];
      }

      v115 = v36;
      if (embeddingData2)
      {
        v14 = [NLEmbedding _embeddingWithData:embeddingData2 error:error];
        if (v14)
        {
          goto LABEL_23;
        }

        goto LABEL_142;
      }

LABEL_141:
      embeddingData2 = 0;
LABEL_142:
      v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load custom embedding from %@", embeddingURL];
      v14 = 0;
      v33 = v117;
      v32 = v115;
      goto LABEL_51;
    }

    if (embeddingModel)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v97 = embeddingModel;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([NLModel modelWithMLModel:embeddingModel error:error], (v97 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v117 = 0;
          v14 = 0;
          embeddingData2 = 0;
          v115 = 0;
LABEL_145:
          v40 = @"Failed to load custom embedding from model";
          goto LABEL_53;
        }
      }

      v115 = v97;
      embeddingData2 = [v97 embeddingData];
      if (embeddingData2)
      {
        v14 = [NLEmbedding _embeddingWithData:embeddingData2 error:error];
        v117 = 0;
        if (v14)
        {
          goto LABEL_23;
        }

        v40 = @"Failed to load custom embedding from model";
        v14 = 0;
        goto LABEL_53;
      }

      v117 = 0;
      v14 = 0;
      embeddingData2 = 0;
      goto LABEL_145;
    }

    if (!embeddingData)
    {
      v40 = @"Failed to load custom embedding, no embedding specified";
      if (error)
      {
        v100 = MEMORY[0x1E696ABC0];
        v146 = *MEMORY[0x1E696A578];
        v147 = @"Failed to load custom embedding, no embedding specified";
        v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
        *error = [v100 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v101];

        v117 = 0;
        v14 = 0;
        embeddingData2 = 0;
        v115 = 0;
        v40 = @"Failed to load custom embedding, no embedding specified";
      }

      else
      {
        v117 = 0;
        v14 = 0;
        embeddingData2 = 0;
        v115 = 0;
      }

      goto LABEL_53;
    }

    v117 = [NLEmbedding _embeddingWithData:embeddingData error:0];
    if (v117)
    {
      v99 = embeddingData;
      v115 = 0;
      goto LABEL_133;
    }

    v102 = [NLModel modelWithData:embeddingData error:error];
    v115 = v102;
    if (v102)
    {
      embeddingData3 = [v102 embeddingData];
      if (embeddingData3)
      {
        v99 = embeddingData3;
LABEL_133:
        embeddingData2 = v99;
        v14 = [NLEmbedding _embeddingWithData:"_embeddingWithData:error:" error:?];
        if (v14)
        {
          goto LABEL_23;
        }

        goto LABEL_154;
      }

      v14 = 0;
      embeddingData2 = 0;
    }

    else
    {
      v14 = 0;
      embeddingData2 = 0;
      v115 = 0;
    }

LABEL_154:
    v40 = @"Failed to load custom embedding from data";
    goto LABEL_53;
  }

  v14 = [NLEmbedding contextualWordEmbeddingForLanguage:v11 revision:revision];
  if (!v14)
  {
    v14 = [NLEmbedding wordEmbeddingForLanguage:v125 revision:revision];
    if (v14)
    {
      v15 = NLModelEmbeddingTypeStatic;
      goto LABEL_21;
    }

    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load embedding for language %@ revision %llu", v125, revision];
    v118 = v29;
    if (error)
    {
      v30 = MEMORY[0x1E696ABC0];
      v158 = *MEMORY[0x1E696A578];
      v159 = v29;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
      *error = [v30 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v31];
    }

    requestWordEmbeddingAssetsForLanguage(v125);
    v32 = 0;
    embeddingData2 = 0;
    v14 = 0;
    v33 = 0;
    v126 = 0;
    goto LABEL_51;
  }

  v15 = NLModelEmbeddingTypeDynamic;
LABEL_21:
  v126 = *v15;
LABEL_22:
  v115 = 0;
  embeddingData2 = 0;
  v117 = 0;
LABEL_23:
  v24 = 0;
  if (![v14 dimension] || numberOfTrainingInstances <= 1)
  {
    v123 = v14;
    v118 = 0;
    v25 = 0;
    goto LABEL_117;
  }

  v118 = 0;
  if (numberOfLabels < 2 || (v108 = 0, v123 = v14, numberOfValidationInstances < 2))
  {
    v24 = 0;
    v123 = v14;
    v25 = 0;
    goto LABEL_117;
  }

LABEL_59:
  dimension = [v14 dimension];
  numberOfTrainingInstances2 = [v124 numberOfTrainingInstances];
  if (numberOfTrainingInstances2 < 0x21)
  {
    v46 = 1;
  }

  else
  {
    v43 = 16;
    if (numberOfTrainingInstances2 < 0x100)
    {
      v43 = numberOfTrainingInstances2 >> 4;
    }

    if (3 * v43 >= numberOfTrainingInstances2)
    {
      v44 = numberOfTrainingInstances2;
    }

    else
    {
      v44 = 3 * v43;
    }

    if (3 * v43 <= v43)
    {
      v46 = v43;
    }

    else
    {
      v45 = numberOfTrainingInstances2;
      v46 = v43;
      do
      {
        v47 = v43 + 1;
        if (numberOfTrainingInstances2 % (v43 + 1) < v45)
        {
          v46 = v43 + 1;
          v45 = numberOfTrainingInstances2 % (v43 + 1);
        }

        ++v43;
      }

      while (v47 < v44);
    }
  }

  numberOfValidationInstances2 = [v124 numberOfValidationInstances];
  if (numberOfValidationInstances2 < 0x21)
  {
    v52 = 1;
  }

  else
  {
    v49 = 16;
    if (numberOfValidationInstances2 < 0x100)
    {
      v49 = numberOfValidationInstances2 >> 4;
    }

    if (3 * v49 >= numberOfValidationInstances2)
    {
      v50 = numberOfValidationInstances2;
    }

    else
    {
      v50 = 3 * v49;
    }

    if (3 * v49 <= v49)
    {
      v52 = v49;
    }

    else
    {
      v51 = numberOfValidationInstances2;
      v52 = v49;
      do
      {
        v53 = v49 + 1;
        if (numberOfValidationInstances2 % (v49 + 1) < v51)
        {
          v52 = v49 + 1;
          v51 = numberOfValidationInstances2 % (v49 + 1);
        }

        ++v49;
      }

      while (v53 < v50);
    }
  }

  v54 = *MEMORY[0x1E69B2720];
  v144[0] = *MEMORY[0x1E69B2728];
  v144[1] = v54;
  v145[0] = &unk_1F10D1370;
  v145[1] = &unk_1F10D1388;
  v144[2] = *MEMORY[0x1E69B2718];
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dimension];
  v145[2] = v55;
  v144[3] = *MEMORY[0x1E69B2740];
  v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfLabels - 1];
  v145[3] = v56;
  v144[4] = *MEMORY[0x1E69B2708];
  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v46];
  v145[4] = v57;
  v144[5] = *MEMORY[0x1E69B2710];
  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v52];
  v145[5] = v58;
  v144[6] = *MEMORY[0x1E69B2738];
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v111];
  v145[6] = v59;
  v144[7] = *MEMORY[0x1E69B2730];
  LODWORD(v60) = 973279855;
  v61 = [MEMORY[0x1E696AD98] numberWithFloat:v60];
  v145[7] = v61;
  v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:8];

  cf = MLPModelTrainerCreate();
  if (cf)
  {
    v62 = [NLDataEnumerator alloc];
    v63 = [v124 dataProviderOfType:0];
    v106 = [(NLDataEnumerator *)v62 initWithDataProvider:v63];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    Current = CFAbsoluteTimeGetCurrent();
    if ([v124 numberOfValidationInstances])
    {
      v65 = [NLDataEnumerator alloc];
      v66 = [v124 dataProviderOfType:1];
      v107 = [(NLDataEnumerator *)v65 initWithDataProvider:v66];
    }

    else
    {
      v107 = 0;
    }

    reportInstanceCompletionToTrainer(trainerCopy, numberOfTrainingInstances - 1, numberOfTrainingInstances, 2);
    v67 = MEMORY[0x1E696AEC0];
    lowercaseString = [(__CFString *)v126 lowercaseString];
    v69 = [v67 stringWithFormat:@"Starting %@ transfer training with %llu training samples and %llu validation samples", lowercaseString, numberOfTrainingInstances, numberOfValidationInstances];
    [trainerCopy logMessage:v69];

    v70 = objc_autoreleasePoolPush();
    v71 = NLGetLogCategory(0);
    internal = [v71 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = 0;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v70);
    if ([&unk_1F10D1478 count])
    {
      v73 = 0;
      do
      {
        v74 = objc_autoreleasePoolPush();
        v75 = NLGetLogCategory(0);
        internal2 = [v75 internal];

        if (os_log_type_enabled(internal2, OS_LOG_TYPE_INFO))
        {
          v77 = [&unk_1F10D1478 objectAtIndexedSubscript:v73];
          v78 = v77;
          uTF8String = [v77 UTF8String];
          *buf = 134218498;
          *&buf[4] = 1;
          *&buf[12] = 2048;
          *&buf[14] = v73;
          *&buf[22] = 2082;
          *&buf[24] = uTF8String;
          _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %{public}s", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v74);
        ++v73;
      }

      while (v73 < [&unk_1F10D1478 count]);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    *&v161 = __Block_byref_object_dispose__4;
    *(&v161 + 1) = &unk_1F10D14A0;
    v139[0] = 0;
    v139[1] = v139;
    v139[2] = 0x3032000000;
    v139[3] = __Block_byref_object_copy__4;
    v139[4] = __Block_byref_object_dispose__4;
    v140 = 0;
    v134 = v123;
    v135 = v108;
    v136 = labelMap;
    v137 = v106;
    v138 = dictionary;
    v80 = dictionary2;
    v131 = trainerCopy;
    v132 = v137;
    v81 = v134;
    v24 = v135;
    v133 = v136;
    v112 = v138;
    v82 = v131;
    v130 = v82;
    v83 = MLPModelTrainerTrainModel();
    v84 = objc_autoreleasePoolPush();
    v85 = NLGetLogCategory(0);
    internal3 = [v85 internal];

    if (os_log_type_enabled(internal3, OS_LOG_TYPE_INFO))
    {
      *v142 = 134217984;
      v143 = 3;
      _os_log_impl(&dword_19D48F000, internal3, OS_LOG_TYPE_INFO, "event: %lu", v142, 0xCu);
    }

    objc_autoreleasePoolPop(v84);
    current = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished transfer training in %.2f seconds", CFAbsoluteTimeGetCurrent() - Current];
    [v82 logMessage:current];

    if (v83)
    {
      v88 = NLModelContainerCopyContainerData();
      CFRelease(v83);
    }

    else
    {
      v88 = 0;
    }

    CFRelease(cf);

    _Block_object_dispose(v139, 8);
    _Block_object_dispose(buf, 8);

    if (!v88)
    {
      v25 = 0;
      v123 = v81;
      goto LABEL_117;
    }

    v89 = MEMORY[0x1E695DF90];
    v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfTrainingInstances];
    v110 = [v89 dictionaryWithObjectsAndKeys:{v90, 0x1F10C67C0, v126, 0x1F10C6800, 0}];

    if (v125)
    {
      [v110 setObject:v125 forKey:0x1F10C6780];
    }

    if (v24)
    {
      identifier = [v24 identifier];
      [v110 setObject:identifier forKey:0x1F10C6820];
    }

    v92 = [(NLModelImplX *)self initWithModelData:v88 configuration:configuration labelMap:inverseLabelMap vocabularyMap:0 documentFrequencyMap:0 customEmbeddingData:embeddingData2 trainingInfo:v110 error:0];
    CFRelease(v88);
    v25 = v92;
    self = v25;
  }

  else
  {
    v25 = 0;
    if (error && v141)
    {
      v25 = 0;
      *error = v141;
    }
  }

  v24 = v108;
LABEL_117:

  return v25;
}

CFMutableDictionaryRef __43__NLModelImplX_initWithModelTrainer_error___block_invoke(void *a1, void *a2, unsigned int a3, uint64_t a4, _BYTE *a5)
{
  v5 = 9;
  if (a1[7] == a2)
  {
    v5 = 8;
  }

  return copySampleDataEnumerator_1(a2, a3, a4, a1[4], a1[5], a1[6], a1[v5], a1[7] == a2, a5);
}

void __43__NLModelImplX_initWithModelTrainer_error___block_invoke_2(uint64_t a1, unsigned int a2, void *a3, _BYTE *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69B2748];
  v8 = [a3 objectForKey:*MEMORY[0x1E69B2748]];
  v9 = *(*(*(a1 + 80) + 8) + 40);
  v10 = [*(a1 + 32) options];
  v11 = [v10 objectForKeyedSubscript:@"SkipTrainingAccuracyEvaluation"];
  if (v11)
  {

    goto LABEL_8;
  }

  if (!*(*(*(a1 + 88) + 8) + 40))
  {

    goto LABEL_7;
  }

  v12 = [v8 compare:?];

  if (v12 == 1)
  {
LABEL_7:
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v36 = v18;
    v37 = v17;
    v38 = *(a1 + 72);
    v19 = [MLPModelTrainerEvaluateModel() objectForKey:*v7];

    v9 = v19;
  }

LABEL_8:
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v9);
  objc_storeStrong((*(*(a1 + 88) + 8) + 40), v8);
  v20 = *(a1 + 32);
  v21 = MEMORY[0x1E696AEC0];
  [v8 floatValue];
  v23 = [v21 stringWithFormat:@"Iteration %llu validation accuracy %.6f", a2 + 1, v22 / 100.0];
  [v20 logMessage:v23];

  v24 = objc_autoreleasePoolPush();
  v25 = NLGetLogCategory(0);
  v26 = [v25 internal];

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *&v27 = *(a1 + 104) - a2;
    *buf = 134218496;
    v40 = 2;
    v41 = 2048;
    v42 = 0;
    v43 = 2048;
    v44 = v27;
    _os_log_impl(&dword_19D48F000, v26, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %llu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v24);
  v28 = objc_autoreleasePoolPush();
  v29 = NLGetLogCategory(0);
  v30 = [v29 internal];

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    [v9 floatValue];
    *buf = 134218496;
    v40 = 2;
    v41 = 2048;
    v42 = 1;
    v43 = 2048;
    v44 = v31 / 100.0;
    _os_log_impl(&dword_19D48F000, v30, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %f", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v28);
  v32 = objc_autoreleasePoolPush();
  v33 = NLGetLogCategory(0);
  v34 = [v33 internal];

  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    [v8 floatValue];
    *buf = 134218496;
    v40 = 2;
    v41 = 2048;
    v42 = 2;
    v43 = 2048;
    v44 = v35 / 100.0;
    _os_log_impl(&dword_19D48F000, v34, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %f", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v32);
  if ([*(a1 + 32) shouldStop])
  {
    *a4 = 1;
  }
}

void *__43__NLModelImplX_initWithModelTrainer_error___block_invoke_92(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) shouldStop];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

- (void)dealloc
{
  montrealModel = self->_montrealModel;
  if (montrealModel)
  {
    CFRelease(montrealModel);
  }

  v4.receiver = self;
  v4.super_class = NLModelImplX;
  [(NLModelImplX *)&v4 dealloc];
}

- (unint64_t)systemVersion
{
  configuration = [(NLModelImplX *)self configuration];
  options = [configuration options];

  v5 = stringForKeyWithDefault(options, @"EmbeddingType", 0);
  if ([v5 isEqualToString:@"Contextual"])
  {
    configuration2 = [(NLModelImplX *)self configuration];
    language = [configuration2 language];

    v8 = [NLContextualEmbedding systemVersionForLanguage:language];
  }

  else
  {
    v8 = 2;
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

- (float)outputForString:(id)string
{
  v20[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  contextualEmbedding = self->_contextualEmbedding;
  v6 = inputSequenceFromSentence(stringCopy, 0);
  v7 = v6;
  if (contextualEmbedding)
  {
    normalizedQuoteTokens(v6);
  }

  else
  {
    formattedTokens(v6);
  }
  v8 = ;

  embedding = self->_contextualEmbedding;
  if (embedding)
  {
    v20[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v19 = stringCopy;
    v11 = MEMORY[0x1E695DEC8];
    v12 = &v19;
  }

  else
  {
    embedding = self->_embedding;
    if (!embedding)
    {
LABEL_13:
      Output = 0;
      goto LABEL_14;
    }

    v18 = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v17 = stringCopy;
    v11 = MEMORY[0x1E695DEC8];
    v12 = &v17;
  }

  v13 = [v11 arrayWithObjects:v12 count:1];
  embedding = [embedding vectorsForTokenizedSentences:v10 untokenizedSentences:v13 maxTokens:50];

  if (self->_montrealModel)
  {
    v14 = embedding == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_13;
  }

  [embedding bytes];
  MRLNeuralNetworkSetInput();
  MRLNeuralNetworkPredict();
  Output = MRLNeuralNetworkGetOutput();
LABEL_14:

  return Output;
}

- (id)predictedLabelForString:(id)string
{
  stringCopy = string;
  v5 = [(NSDictionary *)self->_labelMap count];
  v6 = [(NLModelImplX *)self outputForString:stringCopy];
  if (v6)
  {
    if (v5)
    {
      v8 = 0;
      v9 = 0;
      v7 = 0.0;
      do
      {
        if (v6[v9] > *&v7)
        {
          v8 = v9;
          *&v7 = v6[v9];
        }

        ++v9;
      }

      while (v5 != v9);
      v10 = v8 + 1;
    }

    else
    {
      v10 = 1;
    }

    labelMap = self->_labelMap;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{v10, v7}];
    v11 = [(NSDictionary *)labelMap objectForKey:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)predictedLabelsForTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [tokensCopy componentsJoinedByString:@" "];
  v6 = [(NLModelImplX *)self predictedLabelForString:v5];

  array = [MEMORY[0x1E695DF70] array];
  if ([tokensCopy count])
  {
    v8 = 0;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &stru_1F10C6540;
    }

    do
    {
      [array addObject:v9];
      ++v8;
    }

    while (v8 < [tokensCopy count]);
  }

  return array;
}

- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count
{
  stringCopy = string;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(NSDictionary *)self->_labelMap count];
  v8 = [(NLModelImplX *)self outputForString:stringCopy];
  if (v8 && v7)
  {
    v9 = v8;
    v10 = 1;
    do
    {
      labelMap = self->_labelMap;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      v13 = [(NSDictionary *)labelMap objectForKey:v12];

      if (v13)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:*v9];
        [dictionary setObject:v14 forKey:v13];
      }

      ++v9;
      ++v10;
      --v7;
    }

    while (v7);
  }

  v15 = topHypotheses(dictionary, count);

  return v15;
}

- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count
{
  tokensCopy = tokens;
  v7 = [tokensCopy componentsJoinedByString:@" "];
  v8 = [(NLModelImplX *)self predictedLabelHypothesesForString:v7 maximumCount:count];

  array = [MEMORY[0x1E695DF70] array];
  if ([tokensCopy count])
  {
    v10 = 0;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F8];
    }

    do
    {
      [array addObject:v11];
      ++v10;
    }

    while (v10 < [tokensCopy count]);
  }

  return array;
}

@end