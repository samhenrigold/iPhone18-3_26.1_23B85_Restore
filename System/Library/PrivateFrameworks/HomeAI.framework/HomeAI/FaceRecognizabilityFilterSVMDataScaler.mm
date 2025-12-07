@interface FaceRecognizabilityFilterSVMDataScaler
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (FaceRecognizabilityFilterSVMDataScaler)init;
- (FaceRecognizabilityFilterSVMDataScaler)initWithConfiguration:(id)configuration error:(id *)error;
- (FaceRecognizabilityFilterSVMDataScaler)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (FaceRecognizabilityFilterSVMDataScaler)initWithContentsOfURL:(id)l error:(id *)error;
- (FaceRecognizabilityFilterSVMDataScaler)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput:(id)input error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation FaceRecognizabilityFilterSVMDataScaler

+ (id)URLOfModelInThisBundle
{
  v2 = MEMORY[0x277CCA8D8];
  objc_opt_class();
  v3 = [v2 bundleForClass:?];
  v4 = [v3 pathForResource:? ofType:?];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[FaceRecognizabilityFilterSVMDataScaler URLOfModelInThisBundle];
    }

    v5 = 0;
  }

  return v5;
}

- (FaceRecognizabilityFilterSVMDataScaler)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = FaceRecognizabilityFilterSVMDataScaler;
    v6 = [(FaceRecognizabilityFilterSVMDataScaler *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FaceRecognizabilityFilterSVMDataScaler)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [FaceRecognizabilityFilterSVMDataScaler initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];

  return v4;
}

- (FaceRecognizabilityFilterSVMDataScaler)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v7 = [FaceRecognizabilityFilterSVMDataScaler initWithContentsOfURL:"initWithContentsOfURL:configuration:error:" configuration:? error:?];

  return v7;
}

- (FaceRecognizabilityFilterSVMDataScaler)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? error:?];
  if (v5)
  {
    self = [(FaceRecognizabilityFilterSVMDataScaler *)self initWithMLModel:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FaceRecognizabilityFilterSVMDataScaler)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? configuration:? error:?];
  if (v6)
  {
    self = [(FaceRecognizabilityFilterSVMDataScaler *)self initWithMLModel:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [self URLOfModelInThisBundle];
  [self loadContentsOfURL:? configuration:? completionHandler:?];
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x277CBFF20];
  v8 = handlerCopy;
  v7 = handlerCopy;
  [v6 loadContentsOfURL:? configuration:? completionHandler:?];
}

void __92__FaceRecognizabilityFilterSVMDataScaler_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[FaceRecognizabilityFilterSVMDataScaler alloc] initWithMLModel:?];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v5 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v7 = objc_alloc_init(v5);
  v8 = [FaceRecognizabilityFilterSVMDataScaler predictionFromFeatures:"predictionFromFeatures:options:error:" options:? error:?];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(FaceRecognizabilityFilterSVMDataScaler *)self model];
  v10 = [model predictionFromFeatures:? options:? error:?];

  if (v10)
  {
    v11 = [FaceRecognizabilityFilterSVMDataScalerOutput alloc];
    v12 = [v10 featureValueForName:?];
    multiArrayValue = [v12 multiArrayValue];
    v14 = [(FaceRecognizabilityFilterSVMDataScalerOutput *)v11 initWithTransformed_features:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(FaceRecognizabilityFilterSVMDataScaler *)self model];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __83__FaceRecognizabilityFilterSVMDataScaler_predictionFromFeatures_completionHandler___block_invoke;
  v13 = &unk_278755E98;
  v14 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:? completionHandler:?];
}

void __83__FaceRecognizabilityFilterSVMDataScaler_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [FaceRecognizabilityFilterSVMDataScalerOutput alloc];
    v7 = [v12 featureValueForName:?];
    v8 = [v7 multiArrayValue];
    v9 = [(FaceRecognizabilityFilterSVMDataScalerOutput *)v6 initWithTransformed_features:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(FaceRecognizabilityFilterSVMDataScaler *)self model];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __91__FaceRecognizabilityFilterSVMDataScaler_predictionFromFeatures_options_completionHandler___block_invoke;
  v16 = &unk_278755E98;
  v17 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:? options:? completionHandler:?];
}

void __91__FaceRecognizabilityFilterSVMDataScaler_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [FaceRecognizabilityFilterSVMDataScalerOutput alloc];
    v7 = [v12 featureValueForName:?];
    v8 = [v7 multiArrayValue];
    v9 = [(FaceRecognizabilityFilterSVMDataScalerOutput *)v6 initWithTransformed_features:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

- (id)predictionFromInput:(id)input error:(id *)error
{
  inputCopy = input;
  v6 = [[FaceRecognizabilityFilterSVMDataScalerInput alloc] initWithInput:?];

  v7 = [FaceRecognizabilityFilterSVMDataScaler predictionFromFeatures:"predictionFromFeatures:error:" error:?];

  return v7;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v9 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:?];
  model = [(FaceRecognizabilityFilterSVMDataScaler *)self model];
  v11 = [model predictionsFromBatch:? options:? error:?];

  if (v11)
  {
    v12 = MEMORY[0x277CBEB18];
    [v11 count];
    v13 = [v12 arrayWithCapacity:?];
    if ([v11 count] >= 1)
    {
      v21 = optionsCopy;
      v22 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v11 featuresAtIndex:{v21, v22}];
        v16 = [FaceRecognizabilityFilterSVMDataScalerOutput alloc];
        v17 = [v15 featureValueForName:?];
        multiArrayValue = [v17 multiArrayValue];
        v19 = [(FaceRecognizabilityFilterSVMDataScalerOutput *)v16 initWithTransformed_features:?];

        [v13 addObject:?];
        ++v14;
      }

      while (v14 < [v11 count]);
      optionsCopy = v21;
      inputsCopy = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end