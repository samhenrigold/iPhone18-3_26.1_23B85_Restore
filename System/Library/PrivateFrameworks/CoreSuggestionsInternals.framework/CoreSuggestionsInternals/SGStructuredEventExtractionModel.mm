@interface SGStructuredEventExtractionModel
+ (id)inputFromTaggedCharacterRanges:(id)ranges usingInputMapping:(id)mapping forModel:(id)model pflTraining:(BOOL)training hasEvent:(BOOL)event;
+ (id)sharedInstance;
- (BOOL)isSenderSupportedForExtraction:(id)extraction;
- (BOOL)isSenderSupportedForMLDefaultExtraction:(id)extraction;
- (BOOL)isSenderSupportedForMLHybridExtraction:(id)extraction;
- (BOOL)isSenderSupportedForPFLTraining:(id)training;
- (BOOL)isSenderSupportedForShadowExtraction:(id)extraction;
- (id)_init;
- (id)engineConfig;
- (id)gazetteer;
- (id)inputMapping;
- (id)loadModel;
- (id)modelInferences:(id)inferences pflTraining:(BOOL)training hasEvent:(BOOL)event;
- (id)outputMapping;
- (id)supportedProviders;
- (unint64_t)addressComponentThreshold;
- (unint64_t)maxMergeDistanceForSection:(id)section label:(id)label;
- (unint64_t)stripRepeatedContentForSectionLength:(id)length label:(id)label;
- (void)updateAll;
@end

@implementation SGStructuredEventExtractionModel

- (id)gazetteer
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [(SGExtractionModel *)self currentModelURLForModelName:@"structuredEventGazetteer"];
  if (v2)
  {
    v8 = 0;
    v3 = [objc_alloc(MEMORY[0x277CD89B8]) initWithContentsOfURL:v2 error:&v8];
    v4 = v8;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = sgEventsLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "SGPOSTagger: Unable to create gazetteer %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = sgEventsLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGStructuredEventExtractionModel: Unable to get URL for Gazetteer", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (unint64_t)addressComponentThreshold
{
  engineConfig = [(SGStructuredEventExtractionModel *)self engineConfig];
  v3 = engineConfig;
  if (engineConfig)
  {
    v4 = [engineConfig objectForKeyedSubscript:@"addressComponentThreshold"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v4 unsignedIntegerValue];

        goto LABEL_9;
      }
    }
  }

  v6 = sgEventsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "SGStructuredEventExtractionModel: No configuration loaded", v8, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_9:

  return unsignedIntegerValue;
}

- (unint64_t)stripRepeatedContentForSectionLength:(id)length label:(id)label
{
  lengthCopy = length;
  labelCopy = label;
  engineConfig = [(SGStructuredEventExtractionModel *)self engineConfig];
  if (engineConfig)
  {
    labelCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@.%@", @"stripRepeatedContentInSections", lengthCopy, labelCopy];
    v10 = [engineConfig valueForKeyPath:labelCopy];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v10 unsignedIntegerValue];

        goto LABEL_9;
      }
    }
  }

  v12 = sgEventsLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "SGStructuredEventExtractionModel: No configuration loaded", buf, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_9:

  return unsignedIntegerValue;
}

- (unint64_t)maxMergeDistanceForSection:(id)section label:(id)label
{
  sectionCopy = section;
  labelCopy = label;
  engineConfig = [(SGStructuredEventExtractionModel *)self engineConfig];
  if (engineConfig)
  {
    labelCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@.%@", @"sectionLabelTokenMergeDistance", sectionCopy, labelCopy];
    v10 = [engineConfig valueForKeyPath:labelCopy];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v10 unsignedIntegerValue];
LABEL_8:

        goto LABEL_13;
      }
    }

    v12 = [engineConfig objectForKeyedSubscript:@"defaultLabelTokenMergeDistance"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v12 unsignedIntegerValue];

        goto LABEL_8;
      }
    }
  }

  v13 = sgEventsLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_231E60000, v13, OS_LOG_TYPE_FAULT, "SGStructuredEventExtractionModel: No configuration loaded", buf, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_13:

  return unsignedIntegerValue;
}

- (id)outputMapping
{
  v3 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  structuredEventOutputMapping = [v3 structuredEventOutputMapping];

  outputMapping = structuredEventOutputMapping;
  if (!structuredEventOutputMapping)
  {
    outputMapping = self->_outputMapping;
  }

  v6 = outputMapping;

  return v6;
}

- (id)inputMapping
{
  v3 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  structuredEventInputMapping = [v3 structuredEventInputMapping];

  inputMapping = structuredEventInputMapping;
  if (!structuredEventInputMapping)
  {
    inputMapping = self->_inputMapping;
  }

  v6 = inputMapping;

  return v6;
}

- (id)engineConfig
{
  v3 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  engineConfig = [v3 engineConfig];

  engineConfig = engineConfig;
  if (!engineConfig)
  {
    engineConfig = self->_engineConfig;
  }

  v6 = engineConfig;

  return v6;
}

- (BOOL)isSenderSupportedForMLHybridExtraction:(id)extraction
{
  extractionCopy = extraction;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  v10 = 0;
  if (supportedProviders)
  {
    v7 = [supportedProviders objectForKeyedSubscript:@"mlHybridExtractionSenders"];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"mlHybridExtractionSenders"];
      v9 = [v8 objectForKeyedSubscript:extractionCopy];

      if (v9)
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

- (BOOL)isSenderSupportedForPFLTraining:(id)training
{
  trainingCopy = training;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  v10 = 0;
  if (supportedProviders)
  {
    v7 = [supportedProviders objectForKeyedSubscript:@"schemaOrgSenders"];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"schemaOrgSenders"];
      v9 = [v8 objectForKeyedSubscript:trainingCopy];

      if (v9)
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

- (BOOL)isSenderSupportedForMLDefaultExtraction:(id)extraction
{
  extractionCopy = extraction;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  v10 = 0;
  if (supportedProviders)
  {
    v7 = [supportedProviders objectForKeyedSubscript:@"mlDefaultExtractionSenders"];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"mlDefaultExtractionSenders"];
      v9 = [v8 objectForKeyedSubscript:extractionCopy];

      if (v9)
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

- (BOOL)isSenderSupportedForShadowExtraction:(id)extraction
{
  extractionCopy = extraction;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  v10 = 0;
  if (supportedProviders)
  {
    v7 = [supportedProviders objectForKeyedSubscript:@"shadowSenders"];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"shadowSenders"];
      v9 = [v8 objectForKeyedSubscript:extractionCopy];

      if (v9)
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

- (BOOL)isSenderSupportedForExtraction:(id)extraction
{
  extractionCopy = extraction;
  supportedProviders = [(SGStructuredEventExtractionModel *)self supportedProviders];
  v6 = supportedProviders;
  v10 = 0;
  if (supportedProviders)
  {
    v7 = [supportedProviders objectForKeyedSubscript:@"extractionSenders"];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"extractionSenders"];
      v9 = [v8 objectForKeyedSubscript:extractionCopy];

      if (v9)
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

- (id)supportedProviders
{
  v3 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  supportedProviders = [v3 supportedProviders];

  supportedProviders = supportedProviders;
  if (!supportedProviders)
  {
    supportedProviders = self->_supportedProviders;
  }

  v6 = supportedProviders;

  return v6;
}

- (id)loadModel
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setComputeUnits:0];
  v4 = +[SGStructuredEventTrialClientWrapper sharedInstance];
  modelPath = [v4 modelPath];
  v6 = modelPath;
  if (modelPath && [modelPath length])
  {
    v7 = sgEventsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "SGStructuredEventExtractionModel: Loading model from trial override at path: %@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v6];
  }

  else
  {
    v8 = [(SGExtractionModel *)self currentModelURLForModelName:@"StructuredEventModel"];
  }

  v9 = v8;
  if (v8)
  {
    v15 = 0;
    v10 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 configuration:v3 error:&v15];
    v11 = v15;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = sgEventsLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "Unable to load model from URL: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  return v10;
}

- (id)modelInferences:(id)inferences pflTraining:(BOOL)training hasEvent:(BOOL)event
{
  eventCopy = event;
  trainingCopy = training;
  v32 = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  if (self->_inputMapping && self->_outputMapping)
  {
    v29 = 0;
    *buf = @"Structured Event model inference";
    v9 = mach_absolute_time();
    v28 = v9;
    v10 = sgEventsLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v30 = 0;
      _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "Preparing Structured Event model inference", v30, 2u);
    }

    loadModel = [(SGStructuredEventExtractionModel *)self loadModel];
    if (loadModel)
    {
      v12 = [objc_opt_class() inputFromTaggedCharacterRanges:inferencesCopy usingInputMapping:self->_inputMapping forModel:loadModel pflTraining:trainingCopy hasEvent:eventCopy];
      if (v12)
      {
        v26 = 0;
        v13 = [loadModel predictionFromFeatures:v12 error:&v26];
        v14 = v26;
        if (v13)
        {
          v15 = [[SGExtractionModelCoreMLFeatureWrapper alloc] initWithFeatureProvider:v13];
        }

        else
        {
          v18 = sgEventsLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *v30 = 138412290;
            v31 = *&v14;
            _os_log_error_impl(&dword_231E60000, v18, OS_LOG_TYPE_ERROR, "Model inference failed: %@", v30, 0xCu);
          }

          v15 = 0;
        }

        v19 = sgEventsLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v24 = mach_absolute_time();
          v25 = SGMachTimeToNanoseconds(v24 - v9);
          *v30 = 134217984;
          v31 = v25 * 0.000000001;
          _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, "Model inference done in %f", v30, 0xCu);
        }

        if (v15)
        {
          v20 = [objc_opt_class() modelOutputFromOutputMapping:self->_outputMapping modelOutput:v15 modelInput:v12];
          v21 = v20;
          v22 = MEMORY[0x277CBEC10];
          if (v20)
          {
            v22 = v20;
          }

          v17 = v22;
        }

        else
        {
          v21 = sgEventsLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *v30 = 0;
            _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "Unable to convert to instantiate SGExtractionModelCoreMLFeatureWrapper", v30, 2u);
          }

          v17 = MEMORY[0x277CBEC10];
        }
      }

      else
      {
        v15 = sgEventsLogHandle();
        if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
        {
          *v30 = 0;
          _os_log_error_impl(&dword_231E60000, &v15->super, OS_LOG_TYPE_ERROR, "Model input feature construction failed.", v30, 2u);
        }

        v17 = MEMORY[0x277CBEC10];
      }
    }

    else
    {
      v12 = sgEventsLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "SGStructuredEventExtractionModel: Model initialization failed", v30, 2u);
      }

      v17 = MEMORY[0x277CBEC10];
    }

    SGRecordMeasurementState(buf);
  }

  else
  {
    v16 = sgEventsLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v16, OS_LOG_TYPE_ERROR, "SGStructuredEventExtractionModel: No input or output mapping", buf, 2u);
    }

    v17 = MEMORY[0x277CBEC10];
  }

  return v17;
}

- (void)updateAll
{
  v3 = [objc_opt_class() loadLazyPlistWithBasename:@"StructuredEventInputMapping"];
  inputMapping = self->_inputMapping;
  self->_inputMapping = v3;

  v5 = [objc_opt_class() loadLazyPlistWithBasename:@"StructuredEventOutputMapping"];
  outputMapping = self->_outputMapping;
  self->_outputMapping = v5;

  v7 = [objc_opt_class() loadLazyPlistWithBasename:@"SupportedProviders"];
  supportedProviders = self->_supportedProviders;
  self->_supportedProviders = v7;

  v9 = [objc_opt_class() loadLazyPlistWithBasename:@"StructuredEventEngineConfig"];
  engineConfig = self->_engineConfig;
  self->_engineConfig = v9;

  MEMORY[0x2821F96F8](v9, engineConfig);
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = SGStructuredEventExtractionModel;
  v2 = [(SGStructuredEventExtractionModel *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(SGStructuredEventExtractionModel *)v2 updateAll];
    v4 = +[SGAsset localeAsset];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__SGStructuredEventExtractionModel__init__block_invoke;
    v9[3] = &unk_27894D660;
    v5 = v3;
    v10 = v5;
    v6 = [v4 registerUpdateHandler:v9];
    assetUpdateToken = v5->_assetUpdateToken;
    v5->_assetUpdateToken = v6;
  }

  return v3;
}

+ (id)inputFromTaggedCharacterRanges:(id)ranges usingInputMapping:(id)mapping forModel:(id)model pflTraining:(BOOL)training hasEvent:(BOOL)event
{
  eventCopy = event;
  trainingCopy = training;
  modelCopy = model;
  mappingCopy = mapping;
  rangesCopy = ranges;
  v14 = [objc_opt_class() inputDictFromTaggedCharacterRanges:rangesCopy usingTokenMapping:mappingCopy forModel:modelCopy pflTraining:trainingCopy hasEvent:eventCopy];

  if (v14)
  {
    v15 = [[SGExtractionModelCoreMLFeatureWrapper alloc] initWithFeatureDict:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_4637 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_4637, &__block_literal_global_4638);
  }

  v3 = sharedInstance__pasExprOnceResult_4639;

  return v3;
}

void __50__SGStructuredEventExtractionModel_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[SGStructuredEventExtractionModel alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_4639;
  sharedInstance__pasExprOnceResult_4639 = v1;

  objc_autoreleasePoolPop(v0);
}

@end