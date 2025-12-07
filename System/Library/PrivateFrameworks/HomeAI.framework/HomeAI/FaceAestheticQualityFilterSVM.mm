@interface FaceAestheticQualityFilterSVM
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (FaceAestheticQualityFilterSVM)init;
- (FaceAestheticQualityFilterSVM)initWithConfiguration:(id)configuration error:(id *)error;
- (FaceAestheticQualityFilterSVM)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (FaceAestheticQualityFilterSVM)initWithContentsOfURL:(id)l error:(id *)error;
- (FaceAestheticQualityFilterSVM)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput:(id)input error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation FaceAestheticQualityFilterSVM

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
      +[FaceAestheticQualityFilterSVM URLOfModelInThisBundle];
    }

    v5 = 0;
  }

  return v5;
}

- (FaceAestheticQualityFilterSVM)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = FaceAestheticQualityFilterSVM;
    v6 = [(FaceAestheticQualityFilterSVM *)&v10 init];
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

- (FaceAestheticQualityFilterSVM)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [FaceAestheticQualityFilterSVM initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];

  return v4;
}

- (FaceAestheticQualityFilterSVM)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v7 = [FaceAestheticQualityFilterSVM initWithContentsOfURL:"initWithContentsOfURL:configuration:error:" configuration:? error:?];

  return v7;
}

- (FaceAestheticQualityFilterSVM)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? error:?];
  if (v5)
  {
    self = [(FaceAestheticQualityFilterSVM *)self initWithMLModel:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FaceAestheticQualityFilterSVM)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:? configuration:? error:?];
  if (v6)
  {
    self = [(FaceAestheticQualityFilterSVM *)self initWithMLModel:?];
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

void __83__FaceAestheticQualityFilterSVM_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[FaceAestheticQualityFilterSVM alloc] initWithMLModel:?];
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
  v8 = [FaceAestheticQualityFilterSVM predictionFromFeatures:"predictionFromFeatures:options:error:" options:? error:?];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(FaceAestheticQualityFilterSVM *)self model];
  v10 = [model predictionFromFeatures:? options:? error:?];

  if (v10)
  {
    v11 = [FaceAestheticQualityFilterSVMOutput alloc];
    v12 = [v10 featureValueForName:?];
    [v12 int64Value];
    v13 = [v10 featureValueForName:?];
    dictionaryValue = [v13 dictionaryValue];
    v15 = [FaceAestheticQualityFilterSVMOutput initWithClassLabel:v11 classProbability:"initWithClassLabel:classProbability:"];
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
  model = [(FaceAestheticQualityFilterSVM *)self model];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __74__FaceAestheticQualityFilterSVM_predictionFromFeatures_completionHandler___block_invoke;
  v13 = &unk_278755E98;
  v14 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:? completionHandler:?];
}

void __74__FaceAestheticQualityFilterSVM_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  if (v13)
  {
    v5 = a3;
    v6 = [FaceAestheticQualityFilterSVMOutput alloc];
    v7 = [v13 featureValueForName:?];
    [v7 int64Value];
    v8 = [v13 featureValueForName:?];
    v9 = [v8 dictionaryValue];
    v10 = [FaceAestheticQualityFilterSVMOutput initWithClassLabel:v6 classProbability:"initWithClassLabel:classProbability:"];

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
  model = [(FaceAestheticQualityFilterSVM *)self model];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __82__FaceAestheticQualityFilterSVM_predictionFromFeatures_options_completionHandler___block_invoke;
  v16 = &unk_278755E98;
  v17 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:? options:? completionHandler:?];
}

void __82__FaceAestheticQualityFilterSVM_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  if (v13)
  {
    v5 = a3;
    v6 = [FaceAestheticQualityFilterSVMOutput alloc];
    v7 = [v13 featureValueForName:?];
    [v7 int64Value];
    v8 = [v13 featureValueForName:?];
    v9 = [v8 dictionaryValue];
    v10 = [FaceAestheticQualityFilterSVMOutput initWithClassLabel:v6 classProbability:"initWithClassLabel:classProbability:"];

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
  v6 = [[FaceAestheticQualityFilterSVMInput alloc] initWithInput:?];

  v7 = [FaceAestheticQualityFilterSVM predictionFromFeatures:"predictionFromFeatures:error:" error:?];

  return v7;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v9 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:?];
  model = [(FaceAestheticQualityFilterSVM *)self model];
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
        v16 = [FaceAestheticQualityFilterSVMOutput alloc];
        v17 = [v15 featureValueForName:?];
        [v17 int64Value];
        v18 = [v15 featureValueForName:?];
        dictionaryValue = [v18 dictionaryValue];
        v20 = [FaceAestheticQualityFilterSVMOutput initWithClassLabel:v16 classProbability:"initWithClassLabel:classProbability:"];

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