@interface FaceRecognizabilityFilterSVM
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (FaceRecognizabilityFilterSVM)init;
- (FaceRecognizabilityFilterSVM)initWithConfiguration:(id)configuration error:(id *)error;
- (FaceRecognizabilityFilterSVM)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (FaceRecognizabilityFilterSVM)initWithContentsOfURL:(id)l error:(id *)error;
- (FaceRecognizabilityFilterSVM)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput:(id)input error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation FaceRecognizabilityFilterSVM

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
      +[FaceRecognizabilityFilterSVM URLOfModelInThisBundle];
    }

    v5 = 0;
  }

  return v5;
}

- (FaceRecognizabilityFilterSVM)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = FaceRecognizabilityFilterSVM;
    v6 = [(FaceRecognizabilityFilterSVM *)&v10 init];
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

- (FaceRecognizabilityFilterSVM)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [FaceRecognizabilityFilterSVM initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];

  return v4;
}

- (FaceRecognizabilityFilterSVM)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v7 = [FaceRecognizabilityFilterSVM initWithContentsOfURL:"initWithContentsOfURL:configuration:error:" configuration:? error:?];

  return v7;
}

- (FaceRecognizabilityFilterSVM)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? error:?];
  if (v5)
  {
    self = [(FaceRecognizabilityFilterSVM *)self initWithMLModel:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FaceRecognizabilityFilterSVM)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? configuration:? error:?];
  if (v6)
  {
    self = [(FaceRecognizabilityFilterSVM *)self initWithMLModel:?];
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

void __82__FaceRecognizabilityFilterSVM_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[FaceRecognizabilityFilterSVM alloc] initWithMLModel:?];
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
  v8 = [FaceRecognizabilityFilterSVM predictionFromFeatures:"predictionFromFeatures:options:error:" options:? error:?];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(FaceRecognizabilityFilterSVM *)self model];
  v10 = [model predictionFromFeatures:? options:? error:?];

  if (v10)
  {
    v11 = [FaceRecognizabilityFilterSVMOutput alloc];
    v12 = [v10 featureValueForName:?];
    [v12 int64Value];
    v13 = [v10 featureValueForName:?];
    dictionaryValue = [v13 dictionaryValue];
    v15 = [FaceRecognizabilityFilterSVMOutput initWithClassLabel:v11 classProbability:"initWithClassLabel:classProbability:"];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(FaceRecognizabilityFilterSVM *)self model];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __73__FaceRecognizabilityFilterSVM_predictionFromFeatures_completionHandler___block_invoke;
  v13 = &unk_278755E98;
  v14 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:? completionHandler:?];
}

void __73__FaceRecognizabilityFilterSVM_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  if (v13)
  {
    v5 = a3;
    v6 = [FaceRecognizabilityFilterSVMOutput alloc];
    v7 = [v13 featureValueForName:?];
    [v7 int64Value];
    v8 = [v13 featureValueForName:?];
    v9 = [v8 dictionaryValue];
    v10 = [FaceRecognizabilityFilterSVMOutput initWithClassLabel:v6 classProbability:"initWithClassLabel:classProbability:"];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    v10 = a3;
    v12(v11, 0, v10);
  }
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(FaceRecognizabilityFilterSVM *)self model];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __81__FaceRecognizabilityFilterSVM_predictionFromFeatures_options_completionHandler___block_invoke;
  v16 = &unk_278755E98;
  v17 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:? options:? completionHandler:?];
}

void __81__FaceRecognizabilityFilterSVM_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  if (v13)
  {
    v5 = a3;
    v6 = [FaceRecognizabilityFilterSVMOutput alloc];
    v7 = [v13 featureValueForName:?];
    [v7 int64Value];
    v8 = [v13 featureValueForName:?];
    v9 = [v8 dictionaryValue];
    v10 = [FaceRecognizabilityFilterSVMOutput initWithClassLabel:v6 classProbability:"initWithClassLabel:classProbability:"];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    v10 = a3;
    v12(v11, 0, v10);
  }
}

- (id)predictionFromInput:(id)input error:(id *)error
{
  inputCopy = input;
  v6 = [[FaceRecognizabilityFilterSVMInput alloc] initWithInput:?];

  v7 = [FaceRecognizabilityFilterSVM predictionFromFeatures:"predictionFromFeatures:error:" error:?];

  return v7;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v9 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:?];
  model = [(FaceRecognizabilityFilterSVM *)self model];
  v11 = [model predictionsFromBatch:? options:? error:?];

  if (v11)
  {
    v12 = MEMORY[0x277CBEB18];
    [v11 count];
    v13 = [v12 arrayWithCapacity:?];
    if ([v11 count] >= 1)
    {
      v22 = v9;
      v23 = optionsCopy;
      v24 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v11 featuresAtIndex:?];
        v16 = [FaceRecognizabilityFilterSVMOutput alloc];
        v17 = [v15 featureValueForName:?];
        [v17 int64Value];
        v18 = [v15 featureValueForName:?];
        dictionaryValue = [v18 dictionaryValue];
        v20 = [FaceRecognizabilityFilterSVMOutput initWithClassLabel:v16 classProbability:"initWithClassLabel:classProbability:"];

        [v13 addObject:?];
        ++v14;
      }

      while (v14 < [v11 count]);
      optionsCopy = v23;
      inputsCopy = v24;
      v9 = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end